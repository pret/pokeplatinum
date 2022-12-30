#include <nitro.h>
#include <string.h>

#include "overlay012/ov12_022384F0.h"

BOOL ov12_022384F0 (u32 param0, u32 param1)
{
    switch (param0) {
    case 120:
    case 125:
    case 159:
    case 201:
    case 215:
    case 315:
    case 335:
    case 359:
    case 406:
    case 407:
    case 467:
    case 389:
    case 468:
    case 99:
        return 0;
    case 492:
        if (param1 == 1) {
            return 0;
        }

        break;
    }

    return 1;
}
