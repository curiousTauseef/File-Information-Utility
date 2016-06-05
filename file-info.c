/*
File Information Utility

Benjamin Brown
*/

#include <stdio.h>
#include "file-info.h"

int error_code = 0;
double counted_chars = 0;

int main()
{
    printf("\n\tFile Information Utility\n");
    printf("\tBy Ben Brown\n\n");
    printf("\t%.0f\n\n", count_char());

    return error_code;
}

double count_char()
{
    for (;getchar() != EOF; ++counted_chars)
        ;
    return counted_chars;
}
