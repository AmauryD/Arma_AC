#include "stdafx.h"

//please install : https://www.microsoft.com/fr-be/download/details.aspx?id=14632

#ifdef WIN32 
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
#define RVEXTENSION void RVExtension(char *output, int outputSize, const char *function)
#endif

#include <iostream>
#include <fstream>
#include <stdio.h>
#include <algorithm>
#include <cstring>
#include <ctime>
#include <stdlib.h>
#include "Logger.h"

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
        A3return = "1.1";
    }
    else
    {
        char* func = strtok((char*)function, "$");
		Logger logger;

        if(func)
        {
            if(!strcmp(func, "append"))
            {
				string file = strtok(NULL, "$");
                char* content = strtok(NULL, "$");

				logger.setFile(file);
				if(logger.append(content))
                   A3return = "true";
				else
				   A3return = "false";
            }
            if(!strcmp(func, "clear"))
            {
                string file = strtok(NULL, "$");
                logger.setFile(file);
				if(logger.clear())
                   A3return = "true";
				else
				   A3return = "false";
            }
            if(!strcmp(func, "write"))
            {
                string file = strtok(NULL, "$");
                char* content = strtok(NULL, "$");
				logger.setFile(file);

                if(logger.write(content))
                   A3return = "true";
				else
				   A3return = "false";
            }
			if(!strcmp(func, "log"))
			{
				string file = strtok(NULL, "$");
                char* content = strtok(NULL, "$");
				logger.setFile(file);
				
                if(logger.log(content))
                   A3return = "true";
				else
				   A3return = "false";
			}
       }
    }
    strncpy(output,A3return.c_str(),outputSize);
    return;
}