#include "overlay025/ov25_02255DBC.h"

#include <nitro.h>
#include <string.h>

static const u16 Unk_ov25_022560B0[] = {
    0x1A,
    0x20,
    0x26,
    0x2C,
    0x32,
    0x38,
    0x3E,
    0x44,
    0x4A,
    0x50,
    0x56,
    0x5C,
    0x62,
    0x68,
    0x6E,
    0x74,
    0x7A,
    0x80,
    0x86,
    0x8C,
    0x92,
    0x98,
    0x9E,
    0xA4,
    0xAA,
    0xB0,
    0xB6,
    0xBC,
    0xC2,
    0xC8
};

static const u16 Unk_ov25_022560EC[] = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x18,
    0x1E,
    0x24,
    0x2A,
    0x30,
    0x36,
    0x3C,
    0x42,
    0x48,
    0x4E,
    0x54,
    0x5A,
    0x60,
    0x66,
    0x6C,
    0x72,
    0x78,
    0x7E,
    0x84,
    0x8A,
    0x90,
    0x96,
    0x9C,
    0xA2,
    0xA8,
    0xAE,
    0xB4,
    0xBA
};

// Get array values from two idxs
void ov25_02255DBC(u32 param0, u32 param1, u32 *param2, u32 *param3)
{
    GF_ASSERT(param0 < NELEMS(Unk_ov25_022560B0));
    GF_ASSERT(param1 < NELEMS(Unk_ov25_022560EC));

    if (param0 >= NELEMS(Unk_ov25_022560B0)) {
        param0 = 0;
    }

    if (param1 >= NELEMS(Unk_ov25_022560EC)) {
        param1 = 0;
    }

    *param2 = Unk_ov25_022560B0[param0];
    *param3 = Unk_ov25_022560EC[param1];
}

// get touple values from idx
void ov25_02255DFC(int param0, u32 *param1, u32 *param2)
{
    static const struct {
        u32 unk_00;
        u32 unk_04;
    } v0[] = {
        { 32, 42 },
        { 50, 42 },
        { 168, 122 },
        { 194, 58 },
    };

    GF_ASSERT(param0 < NELEMS(v0));

    *param1 = v0[param0].unk_00;
    *param2 = v0[param0].unk_04;
}

// get two values where first param matches
BOOL ov25_02255E24(int param0, u32 *param1, u32 *param2)
{
    static const struct {
        u16 unk_00;
        u8 unk_02;
        u8 unk_03;
    } v0[] = {
        { 342, 47, 150 },
        { 343, 56, 144 },
        { 344, 65, 132 },
        { 345, 50, 126 },
        { 346, 50, 120 },
        { 347, 62, 108 },
        { 349, 74, 90 },
        { 350, 80, 111 },
        { 353, 83, 126 },
        { 354, 101, 126 },
        { 356, 125, 126 },
        { 362, 128, 102 },
        { 363, 122, 90 },
        { 365, 92, 90 },
        { 366, 104, 90 },
        { 367, 110, 138 },
        { 371, 119, 150 },
        { 373, 152, 147 },
        { 380, 152, 120 },
        { 382, 140, 102 },
        { 383, 86, 66 },
        { 385, 80, 51 },
        { 388, 41, 132 },
        { 391, 56, 156 },
        { 467, 59, 162 },
        { 392, 74, 162 },
        { 395, 170, 138 },
        { 200, 68, 114 },
        { 204, 56, 102 }
    };
    int v1;

    for (v1 = 0; v1 < NELEMS(v0); v1++) {
        if (v0[v1].unk_00 == param0) {
            *param1 = v0[v1].unk_02;
            *param2 = v0[v1].unk_03;
            return 1;
        }
    }

    return 0;
}
