/*
File:			"stringmanip.c"
Creation Date:	10/3/2000
Author:			Brian Pfeil
Description:	Utility program to perform string manipulation
*/

#include <stdio.h>

/* function prototypes */
char* extractDirectory(char* path, int level);
char* fileNameLessExtension(char* path);
char* substring(char* string, int start, int end);
int stringToInt(char* string);
int indexOf(char* string, char c);
int indexOfWithStart(char* string, char c, int start);
int lastIndexOf(char* string, char c);

int main(int args, char* argv[])
{
	/* parameter switches */
	const char * STRING_KEY = "-string";
	const char * OPERATION_KEY = "-operation";
	const char * DIRECTORY_LEVEL_KEY = "-directorylevel";
	
	/* argument variables */
	char *string, *operation, *directory_level; 
	int level = -2;
	
	string = argv[1];
	printf("%s", extractDirectory(string, level));
	
	/* iterator variable(s) */
	//int i;
	
	/* iterate through the arguments and assign parameter values */
	/*
	for (i=0; i<args; i++)
	{
		if (strcmp(STRING_KEY,argv[i]) == 0)
		{
			string = argv[++i];
		}
		
		else if (strcmp(OPERATION_KEY,argv[i]) == 0)
		{
			operation = argv[++i];
		}
		
		else if (strcmp(DIRECTORY_LEVEL_KEY,argv[i]) == 0)
		{
			directory_level = argv[++i];
		}
	}
	*/
	
	/* perform string manipulation based on argument values */
	
	/*if (strcmp(operation, "extract_directory_path") == 0)
	{
		printf("%s", extractDirectory(string, stringToInt(directory_level)));
	}
	*/
	
	/* debug */
	//printf("%d", stringToInt(directory_level));
}

/*
extract a specified directory path given the level
NOTE: the level can be positive or negative
*/
char* extractDirectory(char* path, int level)
{
	/* length of path string */
	int length = strlen(path);
	
	/* current directory level */
	int currentLevel = 0;
	
	/* used to store directory separator index */
	int targetDirectorySeparatorIndex = 0;
	
	/* iterator */
	int i;
	
	/* iterate through the directory levels */
	for (i=0; i<abs(level); i++)
	{
		/* negative level */
		if (level < 0)
		{
			targetDirectorySeparatorIndex = lastIndexOf(path,'\\');
			path = substring(path, 0, targetDirectorySeparatorIndex);
		}
		
		/* positive level */
		else
		{
			/* first iteration - special case */
			if (targetDirectorySeparatorIndex == 0)
			{
				targetDirectorySeparatorIndex = indexOfWithStart(path,'\\', targetDirectorySeparatorIndex);
			}
			
			/* all other iterations - must add 1*/
			else
			{
				targetDirectorySeparatorIndex = indexOfWithStart(path,'\\', targetDirectorySeparatorIndex + 1);
			}
		}
	}
	
	/* if a positive level, must extract the directory string now */
	if (level > 0)
	{
		path = substring(path, 0, targetDirectorySeparatorIndex);
	}
	
	return path;
}

/* extract the file name less the extension given a <path> */
char* fileNameLessExtension(char* path)
{
	int beginIndex = 0, endIndex = 0;
	
	beginIndex = lastIndexOf(path, '\\');
	
	if (beginIndex != 0)
	{
		beginIndex++;
	}
	
	endIndex = lastIndexOf(path, '.');
	
	return substring(path, beginIndex, endIndex);
}

/* extract a portion of a string from <string> */
char* substring(char* string, int start, int end)
{
	int i;
	int count = 0;
	char result[80];
	
	for (i=start; i<end; i++)
	{
		result[count]=string[i];
		count++;
	}
	
	result[count]='\0';
	
	return result;
}

int stringToInt(char* string)
{
	int length = strlen(string);
	int i;
	
	if (length>1)
	{
		if (string[0] == '-')
		{
			return -(((int) string[1]) - 48);
		}
		
		else
		{
			return (((int) string[1]) - 48);
		}
		
	}
	
	else
	{
		return ((int) string[0]) - 48;
	}
}

/* returns the first index where the char <c> occurs in <string> */
int indexOf(char* string, char c)
{
	int index = 0;
	int stringlength = strlen(string);
	
	int i;
	
	for (i=0; i<stringlength; i++)
	{
		if ((c == string[i]) && (index == 0))
		{
			index = i;
		}
	}
	
	return index;
}

/*
   returns the first index where the char <c> occurs in <string> starting at
   character position <start>
*/
int indexOfWithStart(char* string, char c, int start)
{
	int index = 0;
	int stringlength = strlen(string);
	
	int i;
	
	for (i=start; i<stringlength; i++)
	{
		if ((c == string[i]) && (index == 0))
		{
			index = i;
		}
	}
	
	return index;
}

/* returns the last index where the char <c> occurs in <string> */
int lastIndexOf(char* string, char c)
{
	int index = 0;
	int stringlength = strlen(string);
	
	int i;
	int count = 0;
	
	for (i=stringlength; i>0; i--)
	{
		if ((c == (char) string[i]) && (index == 0))
		{
			index = i;
		}
	}

	return index;
}

