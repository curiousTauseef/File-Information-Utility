/*
File Information Utility

Benjamin Brown
*/

#include <stdio.h>
#include "file-info.h"

double counted_chars = 0;
double counted_lines = 0;

int main()
{
    printf("\n\tFile Information Utility\n");
    printf("\tBy Ben Brown\n\n");

    count_stats();

    printf("\tTotal Counted Characters:\t%.0f\n\n", counted_chars);
    printf("\t     Total Counted Lines:\t%.0f\n\n", counted_lines);

    return 0;
}

double count_stats()
{
    int c =0;

    while ((c = getchar()) != EOF)
        if (c == '\n')
            ++counted_lines;
        else
            ++counted_chars;
    return 0;
}
