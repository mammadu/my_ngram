#include <stdio.h>
#include <string.h>

int main (int argc, char *argv[])
{
    int ngram_array_length = 128;
    int ngram[ngram_array_length];;

    memset(ngram, 0, sizeof(ngram)); // initialize ngram array to 0

    for (int i = 1; i < argc; i++) // start at 1 to skip program name
    {
        for (int j = 0; j < (int)strlen(argv[i]); j++) // loop through each character in each argument
        {
            ngram[(int)argv[i][j]]++; // increment the count of the character in the ngram array. The index is the key of the character
        }
    }

    for (int i = 0; i < ngram_array_length; i++) // loop through the ngram array
    {
        if (ngram[i] > 0) // if the count is greater than 0, print the character and the count
        {
            printf("%c:%d\n", i, ngram[i]); // print the character and the count. We convert the index to the character value
        }
    }
}