#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "overlay097/ov97_02237520.h"

#include "library/crypto.h"

void * ov97_0223752C(u32 param0);

static u32 Unk_ov97_0223EF9C[] = {
    'B5BE',
    'B5CE',
    'B5DE',
    'B5EE',
    'B5FE',
    'B5GE',
    'B5HE',
    'B5IE',
    'B5JE',
    'B5KE',
    'B5LE',
    'B5ME',
    'B5PE',
    'B5QE',
    'B5RE',
    'B5SE',
    'B5TE',
    'B5UE',
    'B5VE',
    'B5WE',
    0x0
};

static const u8 Unk_ov97_0223DA1C[] = {
    0xC8,
    0x7E,
    0x66,
    0x71,
    0x46,
    0xB,
    0xE6,
    0x6f,
    0x17,
    0x8A,
    0x5C,
    0x7D,
    0xEA,
    0xE1,
    0x93,
    0xfd,
    0xEE,
    0xfa,
    0x99,
    0x84,
    0xfe,
    0x35,
    0x2,
    0xB9,
    0x7f,
    0x4f,
    0xf1,
    0x19,
    0x74,
    0xA2,
    0xf,
    0x65,
    0x8A,
    0x9C,
    0x44,
    0x81,
    0xC,
    0x1f,
    0x94,
    0xE4,
    0xC0,
    0xB6,
    0xD7,
    0x20,
    0xEE,
    0x11,
    0x9A,
    0x8D,
    0x27,
    0x33,
    0x9B,
    0x7B,
    0x2,
    0xE9,
    0x33,
    0x11,
    0xDC,
    0xcf,
    0x72,
    0xD9,
    0xA8,
    0x78,
    0x12,
    0x8C,
    0x3B,
    0x60,
    0xD5,
    0x24,
    0xB8,
    0xD9,
    0xfc,
    0x8D,
    0x15,
    0xBA,
    0xB,
    0x90,
    0xA3,
    0xBD,
    0x3A,
    0xE4,
    0x1,
    0x18,
    0xBA,
    0xf9,
    0x65,
    0xA5,
    0x15,
    0x37,
    0xDC,
    0x7A,
    0x48,
    0x5C,
    0x3A,
    0x55,
    0x35,
    0x43,
    0xE2,
    0xC6,
    0x66,
    0xBA,
    0x21,
    0xEA,
    0x67,
    0x2E,
    0xA8,
    0x29,
    0x3,
    0xD7,
    0x1f,
    0xf,
    0xC6,
    0xDE,
    0x1B,
    0xE2,
    0xA1,
    0xCA,
    0x21,
    0x51,
    0xfe,
    0xB9,
    0x68,
    0x17,
    0x3C,
    0xEB,
    0x4,
    0x54,
    0xE0,
    0xBD
};

static u32 Unk_ov97_0223F54C;

void ov97_02237520 (u32 param0)
{
    Unk_ov97_0223F54C = param0;
}

void * ov97_0223752C (u32 param0)
{
    return Heap_AllocFromHeap(Unk_ov97_0223F54C, param0);
}

static BOOL ov97_02237540 (void)
{
    int v0;
    u32 v1 = CTRDG_GetAgbGameCode();

    v1 = (((v1 >> 0) & 255) << 24 | ((v1 >> 8) & 255) << 16 | ((v1 >> 16) & 255) << 8 | ((v1 >> 24) & 255) << 0);

    for (v0 = 0; v0 < Unk_ov97_0223EF9C[v0]; v0++) {
        if (Unk_ov97_0223EF9C[v0] == v1) {
            u8 v2[0x4A8];
            u8 v3[128];

            CTRDG_Enable(1);
            CTRDG_CpuCopy8(((void *)0x8100000), v2, 0x4A8);
            CTRDG_CpuCopy8(((void *)0x8020000), v3, 128);
            CTRDG_Enable(0);

            CRYPTO_SetAllocator(ov97_0223752C, Heap_FreeToHeap);

            if (CRYPTO_VerifySignature(v2, 0x4A8, v3, Unk_ov97_0223DA1C)) {
                return 1;
            } else {
                (void)0;
            }
        }
    }

    return 0;
}

static BOOL ov97_022375F0 (void)
{
    CTRDG_Init();

    if (CTRDG_IsAgbCartridge() == 0) {
        return 0;
    }

    if (CTRDG_GetAgbMakerCode() != 0x3130) {
        return 0;
    }

    if (ov97_02237540() == 0) {
        return 0;
    }

    return 1;
}

int ov97_02237624 (void)
{
    u32 v0;

    if (ov97_022375F0() == 0) {
        return 0;
    }

    CTRDG_Enable(1);
    CTRDG_Read32((const u32 *)0x8100000, &v0);
    CTRDG_Enable(0);

    return v0;
}

BOOL ov97_0223764C (void * param0, int param1)
{
    BOOL v0;

    if (ov97_022375F0() == 0) {
        return 0;
    }

    if (param1 == 0) {
        param1 = ov97_02237624();
    }

    CTRDG_Enable(1);
    v0 = (BOOL)CTRDG_CpuCopy16((const void *)0x8100100, param0, param1);
    CTRDG_Enable(0);

    if (CTRDG_IsExisting() == 0) {
        return 0;
    }

    return v0;
}
