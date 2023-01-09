#include <nitro/math.h>

#if defined(SDK_ARM9) && (defined(SDK_CW) || defined(__MWERKS__))

#pragma thumb off
u32 MATH_CountLeadingZerosFunc (u32 x) {
    asm
    {
        clz x, x
    }
    return x;
}
#pragma thumb reset

#else

u32 MATH_CountLeadingZerosFunc (u32 x) {
    u32 y;
    u32 n = 32;

    y = x >> 16;
    if (y != 0) {
        n -= 16;
        x = y;
    }
    y = x >> 8;
    if (y != 0) {
        n -= 8;
        x = y;
    }
    y = x >> 4;
    if (y != 0) {
        n -= 4;
        x = y;
    }
    y = x >> 2;
    if (y != 0) {
        n -= 2;
        x = y;
    }
    y = x >> 1;
    if (y != 0) {
        n -= 2;
    } else {
        n -= x;
    }

    return n;
}

#endif

u8 MATH_CountPopulation (u32 x) {
    x -= ((x >> 1) & 0x55555555);

    x = (x & 0x33333333) + ((x >> 2) & 0x33333333);

    x += (x >> 4);

    x &= 0x0f0f0f0f;

    x += (x >> 8);

    x += (x >> 16);

    return (u8)x;
}
