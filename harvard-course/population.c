#include <cs50.h>
#include <stdio.h>

int main(void)
{
    // TODO: Prompt for start size
    int llamas_at_start;
    do
    {
        llamas_at_start = get_int("Start size: ");
    }
    while (llamas_at_start < 9);
    // TODO: Prompt for end size
    int llamas_at_end;
    do
    {
        llamas_at_end = get_int("End size: ");
    }
    while (llamas_at_end < llamas_at_start);
    // Keep track of number of years
    int years = 0;
    // TODO: Calculate number of years until we reach threshold
    while (llamas_at_start < llamas_at_end)
    {
        llamas_at_start = llamas_at_start + (llamas_at_start / 3) - (llamas_at_start / 4);
        years++;
    }

    // Print number of years
    printf("Years: %i\n", years);
}


// Prompt for start population size
// ensure the user's input is at least 9
// Prompt for end population size
// Ensure the user's input is at least the start size
// Calculate how many years required
// Print the number of years required

