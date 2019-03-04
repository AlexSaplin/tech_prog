#include "main.h"

void health_check_a()
{
    puts("Ping A");
}

void health_check_c()
{
    puts("Ping C");
}

int main()
{
    health_check_a();
    health_check_b();
    health_check_c();
}
