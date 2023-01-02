#include <nitro.h>
#include <string.h>
#include <dwc.h>
#include <gs/nonport.h>

#include "overlay060/ov60_0221F800.h"

static int Unk_ov60_02229E20;

static void ov60_0221F800 (unsigned long param0)
{
    Unk_ov60_02229E20 = (int)(param0 | (param0 << 16));
}

static unsigned char ov60_0221F810 (void)
{
    Unk_ov60_02229E20 = (int)((69 * Unk_ov60_02229E20 + 4369) % 0x80000000);
    return (unsigned char)((Unk_ov60_02229E20 >> 16) & 0xff);
}

int ov60_0221F838 (u32 param0, const u8 * param1, int param2, u8 * param3, int param4)
{
    unsigned char * v0;
    u32 v1 = 0;
    int v2;

    if (param4 < (int)ov60_0221F944((u32)(param2 + 4 + 4)) + 1) {
        return 2;
    }

    v0 = (unsigned char *)DWC_Alloc((DWCAllocType)10, (unsigned long)(param2 + 4 + 4));

    if (v0 == NULL) {
        return 1;
    }

    v1 += (u8)((param0 >> 24) & 0xff);
    v1 += (u8)((param0 >> 16) & 0xff);
    v1 += (u8)((param0 >> 8) & 0xff);
    v1 += (u8)((param0) & 0xff);

    for (v2 = 0; v2 < param2; v2++) {
        v1 += param1[v2];
    }

    ov60_0221F800(v1);

    v0[4] = (u8)(((param0) & 0xff) ^ ov60_0221F810());
    v0[5] = (u8)(((param0 >> 8) & 0xff) ^ ov60_0221F810());
    v0[6] = (u8)(((param0 >> 16) & 0xff) ^ ov60_0221F810());
    v0[7] = (u8)(((param0 >> 24) & 0xff) ^ ov60_0221F810());

    for (v2 = 0; v2 < param2; v2++) {
        v0[4 + 4 + v2] = (u8)(param1[v2] ^ ov60_0221F810());
    }

    v1 ^= 0x4a3b2c1d;

    v0[0] = (u8)((v1 >> 24) & 0xff);
    v0[1] = (u8)((v1 >> 16) & 0xff);
    v0[2] = (u8)((v1 >> 8) & 0xff);
    v0[3] = (u8)((v1) & 0xff);

    B64Encode((const char *)v0, (char *)param3, (int)(param2 + 4 + 4), 2);

    ((char *)param3)[ov60_0221F944((u32)(param2 + 4 + 4))] = '\0';

    DWC_Free((DWCAllocType)10, v0, (u32)0);

    return 0;
}

u32 ov60_0221F944 (u32 param0)
{
    u32 v0;

    v0 = ((param0) % 3 != 0) ? (u32)1 : (u32)0;
    return (((u32)(param0 / 3)) + v0) * 4;
}
