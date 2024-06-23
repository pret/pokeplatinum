#include "unk_020986CC.h"

#include <nitro.h>
#include <string.h>

static const u8 Unk_020F681C[6] = {
    0x1,
    0x2,
    0x3,
    0x5,
    0x4,
    0x7
};

int sub_020986CC(int param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        if (param0 == Unk_020F681C[v0]) {
            break;
        }
    }

    return v0;
}

int sub_020986E8(int param0)
{
    GF_ASSERT(param0 < 6);
    return Unk_020F681C[param0];
}
