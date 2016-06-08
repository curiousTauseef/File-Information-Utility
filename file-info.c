/*
File Information Utility

Benjamin Brown
*/

#include <stdio.h>
#include "file-info.h"

int counted_realchars, counted_chars, counted_lines = 0;
int *np;

int main()
{
    printf("\n\tFile Information Utility\n");
    printf("\tBy Ben Brown\n\n");

    count_stats();

    printf("\tTotal Counted Characters:\t%d\n", counted_realchars);
    printf("\tTotal Visible Characters:\t%d\n", counted_chars);
    printf("\t       Hidden Characters:\t%d\n", (counted_realchars - counted_chars));
    printf("\t        Total Unix Lines:\t%d\n\n", counted_lines);

    return 0;
}

double count_stats()
{
    int c = 0;
    np = &counted_realchars;
    *np = 0;

    while ((c = getchar()) != EOF)
    {
        printf("%d", c);
        ++*np;
        if (c == '\n')
            ++counted_lines;
        else
            ++counted_chars;
    }
    printf("\n\n");
    return 0;
}
