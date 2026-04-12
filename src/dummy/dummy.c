#include <nitro/sinit.h>

// function gets optimized out but is necessary to match due to the variable inside it
void Dummy(void)
{
    static int dummy = 0;
}

static void NitroStaticInit(void)
{
    static int dummy = 0;
    dummy++;
}
