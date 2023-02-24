#include <cs50.h>
#include <stdio.h>
#include <string.h>

int main(void)
{
    string items[] = {"bread", "milk", "butter", "iron", "apple", "cookies", "water"};
    string s = get_string("Item: ");
    for (int i = 0; i < 7; i++)
    {
        if (strcmp(items[i], s) == 0)
        {
            printf("Found\n");
            return 0;
        }
    }
    printf("Not found\n");
    return 1;
}