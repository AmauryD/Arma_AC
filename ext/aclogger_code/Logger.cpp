#include "Logger.h"
#include <stdio.h>
#include <io.h>
#include <fcntl.h>
#include <windows.h>

Logger::Logger(void)
{
	char buffer[20];
    sprintf(buffer,"aclogger%c",DIR_SEP);
	_dir = buffer;
}


Logger::~Logger(void)
{
}

bool Logger::setFile(std::string file)
{
	if(!isLogFile(file))
		return false;
	std::string s;
	s.append(_dir).append(file);
	std::replace( s.begin(), s.end(), '|', DIR_SEP);
	_fileName = s;
	return true;
}

bool Logger::isFileSet()
{
	return (_fileName.c_str() != "");
}

bool Logger::isLogFile(std::string fileName)
{
	return (fileName.substr(fileName.find_last_of(".") + 1).compare(std::string("log")) == 0);
}

bool Logger::log(std::string text)
{
	if(!isFileSet()) return false;
	char buffer[80];

	time_t t = time(0);
	struct tm * now = localtime(&t);
    strftime(buffer,80,"%d-%m-%Y %I:%M:%S",now);

	_file.open(_fileName.c_str(), std::ios_base::app);

	_file << buffer << " -> " << text.c_str() << std::endl;
    _file.close();
	return true;
}

bool Logger::clear()
{
	if(!isFileSet()) return false;
	_file.clear();
	return true;
}

bool Logger::write(std::string text)
{
	 if(!isFileSet()) return false;
	 _file.open(_fileName.c_str(), std::ios_base::out);
     _file << text.c_str() << std::endl;
     _file.close();
     return true;
}

bool Logger::append(std::string text)
{
     if(!isFileSet()) return false;
	 _file.open(_fileName.c_str(), std::ios_base::app);
     _file << text.c_str() << std::endl;
     _file.close();
     return true;
}