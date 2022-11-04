#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <copyright.h>

int main()
{
    printf("hello world!\n");


    char *pstr = (char*)malloc(copyright_str_length+1);
    if(pstr)
    {

        memcpy(pstr, copyright_str,copyright_str_length);
        pstr[copyright_str_length] = 0;
        printf("copyright: \n %s\n",pstr);


        free(pstr);
    }


    
    return 0;
}