#include <stdio.h>
#include <version.h>

int main()
{
    printf("hello world!\n");

    printf("Version: v%d.%d.%d\n",VERSION_MAJOR,VERSION_MINOR,VERSION_PATCH);
    printf("Variant: %s\n",BUILD_VARIANT);
    return 0;
}