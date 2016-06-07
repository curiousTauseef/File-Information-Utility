/*
File Information Utility

Benjamin Brown
*/

#include <stdio.h>
#include "file-info.h"

double counted_realchars, counted_chars, counted_lines = 0;
int ndigit[10];

int main()
{
    printf("\n\tFile Information Utility\n");
    printf("\tBy Ben Brown\n\n");

    count_stats();




    printf("\tTotal Counted Characters:\t%.0f\n", counted_realchars);
    printf("\tTotal Visible Characters:\t%.0f\n", counted_chars);
    printf("\t       Hidden Characters:\t%.0f\n", (counted_realchars - counted_chars));
    printf("\t        Total Unix Lines:\t%.0f\n\n", counted_lines);

    return 0;
}

double count_stats()
{
    int c = 0;

    while ((c = getchar()) != EOF)
    {
        printf("%d", c);
        ++counted_realchars;
        if (c == '\n')
            ++counted_lines;
        else
            ++counted_chars;
    }
    printf("\n\n");
    return 0;
}





