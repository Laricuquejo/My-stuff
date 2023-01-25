#include <cs50.h>
#include <ctype.h>
#include <stdio.h>
#include <string.h>

int main(void)
{
    string s = get_string("Before: ");
    printf("After: %ld", strlen(s));
    for (int i = 0; i < strlen(s); i++) // strlen = solo 1 byte y el valor devuelto siempre sera igual al numero de bytes
    {
        printf("%c", toupper(s[i]));
    }
    printf("\n");
}