// dllmain.cpp : Defines the entry point for the DLL application.
#define WIN32_LEAN_AND_MEAN             // Exclude rarely-used stuff from Windows headers
// Windows Header Files:

#include <iostream>
#include <fstream>
#include <stdio.h>
#include <algorithm>
#include <cstring>
#include <ctime>
#include <stdlib.h>

#ifdef WIN32
#include <windows.h>
#define DIR_SEP '\\'
BOOL APIENTRY DllMain( HMODULE hModule, DWORD  ul_reason_for_call, LPVOID lpReserved)
{
	switch (ul_reason_for_call)
	{
	case DLL_PROCESS_ATTACH:
	case DLL_THREAD_ATTACH:
	case DLL_THREAD_DETACH:
	case DLL_PROCESS_DETACH:
		break;
	}
	return TRUE;
}
#define RVEXTENSION __declspec(dllexport) void __stdcall RVExtension(char *output, int outputSize, const char *function)
#else
#define DIR_SEP '/'
#define RVEXTENSION void RVExtension(char *output, int outputSize, const char *function)
#endif
 
extern "C"
{
   RVEXTENSION;
};
 
using namespace std;

RVEXTENSION
{
    string A3return("");

    outputSize -= 1;

    if (!strcmp(function, "version"))
    {
        A3return = "1.0";
    }
    else
    {
        char* func = strtok((char*)function, ";");
        if(func)
        {
            if(!strcmp(func, "append"))
            {
				string file = strtok(NULL, ";");
                replace( file.begin(), file.end(), '|', DIR_SEP);
				 
                char* content = strtok(NULL, ";");
                ofstream outfile;

                outfile.open(file.c_str(), ios_base::app);
                outfile << content << endl;
                outfile.close();
                A3return = "true";
            }
            if(!strcmp(func, "clear"))
            {
                string file = strtok(NULL, ";");
                replace( file.begin(), file.end(), '|', DIR_SEP);
                ofstream outfile(file.c_str());
                outfile.clear();
                outfile.close();
                A3return = "true";
            }
            if(!strcmp(func, "write"))
            {
                string file = strtok(NULL, ";");
                replace( file.begin(), file.end(), '|', DIR_SEP);
                char* content = strtok(NULL, ";");
                ofstream outfile;

                outfile.open(file.c_str(), ios_base::out);
                outfile << content << endl;
                outfile.close();
                A3return = "true";
            }
			if(!strcmp(func, "log"))
			{
				string file = strtok(NULL, ";");
                replace( file.begin(), file.end(), '|', DIR_SEP);
                char* content = strtok(NULL, ";");
				char buffer[80];

				time_t t = time(0);
				struct tm * now = localtime(&t);
				strftime(buffer,80,"%d-%m-%Y %I:%M:%S",now);

                ofstream outfile;
				outfile.open(file.c_str(), ios_base::app);
				outfile << buffer << " -> " << content << endl;
                outfile.close();
                A3return = "true";
			}
       }
    }
    strncpy(output,A3return.c_str(),outputSize);
    return;
}