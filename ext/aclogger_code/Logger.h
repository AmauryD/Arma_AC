#pragma once
#include <iostream>
#include <fstream>
#include <ctime>
#include <stdio.h>
#include <algorithm>
#include <cstring>
#include "stdafx.h"

#ifdef WIN32 
#define DIR_SEP '\\'
#else
#define DIR_SEP '/'
#endif

class Logger
{
public:
	Logger(void);
	virtual ~Logger(void);

	bool append(std::string text);
	bool write(std::string text);
	bool log(std::string text);
	bool setFile(std::string file);
	bool clear();
private:
	bool isLogFile(std::string fileName);
	bool isFileSet();
    
	std::string _dir;
	std::ofstream _file;
	std::string _fileName;
};

