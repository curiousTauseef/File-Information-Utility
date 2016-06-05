/*
File Information Utility

Benjamin Brown
*/

#include <stdio.h>
#include "file-info.h"

int error_code = 0;

int main()
{
    double counted_chars = 0;


    printf("\n\tFile Information Utility\n");
    printf("\tBy Ben Brown\n\n");

    printf("\tTotal Counted Characters:\t%.0f\n\n", count_char());

    return error_code;
}

double count_char()
{
    for (;getchar() != EOF; ++counted_chars)
        ;
    return counted_chars;
}
