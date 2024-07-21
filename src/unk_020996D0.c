#include "unk_020996D0.h"

#include <nitro.h>
#include <string.h>

static const u8 Unk_020F6EB8[] = {
    0x1,
    0x3,
    0x4,
    0x5,
    0x2,
    0x6,
    0x7,
    0x8,
    0x9,
    0xA,
    0xB,
    0xC,
    0xD,
    0xE,
    0xF,
    0x10,
    0x11,
    0x12,
    0x13,
    0x14,
    0x15,
    0x16,
    0x17,
    0x18
};

static const u8 Unk_020F6E18[] = {
    0x1,
    0x2,
    0x3,
    0x4,
    0x5,
    0x6,
    0x7
};

static const u8 Unk_020F6EE8[] = {
    0x1,
    0x3,
    0x4,
    0x5,
    0x6,
    0x7,
    0x8,
    0x9,
    0xA,
    0xB,
    0xC,
    0xD,
    0xE,
    0xF,
    0x10,
    0x11,
    0x12,
    0x13,
    0x16,
    0x15,
    0x14,
    0x2,
    0x17,
    0x18,
    0x19,
    0x1A,
    0x1B
};

static const u8 Unk_020F6E34[] = {
    0x1,
    0x2,
    0x3,
    0x4,
    0x5,
    0x6,
    0x7,
    0x8,
    0x9,
    0xA,
    0xB,
    0xC,
    0xD
};

static const u8 Unk_020F6F04[] = {
    0x1,
    0x2,
    0x3,
    0x4,
    0x5,
    0x6,
    0x7,
    0x8,
    0x9,
    0xA,
    0xB,
    0xC,
    0xD,
    0xE,
    0xF,
    0x10,
    0x11,
    0x12,
    0x13,
    0x14,
    0x15,
    0x16,
    0x17,
    0x18,
    0x19,
    0x1A,
    0x1B,
    0x1C,
    0x1D,
    0x1E,
    0x1F
};

static const u8 Unk_020F6E54[] = {
    0x1,
    0x2,
    0x3,
    0x4,
    0x5,
    0x10,
    0x6,
    0x7,
    0x8,
    0x9,
    0xA,
    0xB,
    0xC,
    0xD,
    0xE,
    0xF
};

static const u8 Unk_020F6E64[] = {
    0x1,
    0x2,
    0x3,
    0x7,
    0x9,
    0x8,
    0xA,
    0x11,
    0xB,
    0xC,
    0x4,
    0x6,
    0x10,
    0xD,
    0xE,
    0xF,
    0x5
};

static const u8 Unk_020F6E10[] = {
    0x1,
    0x3,
    0x2,
    0x5,
    0x4,
    0x6
};

static const u8 Unk_020F6EA0[] = {
    0x2,
    0x1,
    0x4,
    0xC,
    0xD,
    0x7,
    0x6,
    0x5,
    0xB,
    0x3,
    0x12,
    0x13,
    0x16,
    0x15,
    0x11,
    0x8,
    0x9,
    0xF,
    0xA,
    0x10,
    0xE,
    0x14
};

static const u8 Unk_020F6E28[] = {
    0x2,
    0x1,
    0x3,
    0x4,
    0x5,
    0x6,
    0x7,
    0x8,
    0x9,
    0xA,
    0xB,
    0xC
};

static const u8 Unk_020F6F24[] = {
    0x1,
    0x2,
    0x3,
    0x4,
    0x5,
    0x6,
    0x7,
    0x8,
    0x9,
    0xA,
    0xB,
    0xC,
    0xD,
    0xE,
    0xF,
    0x10,
    0x11,
    0x12,
    0x13,
    0x14,
    0x15,
    0x18,
    0x16,
    0x17,
    0x19,
    0x1A,
    0x1B,
    0x1C,
    0x1D,
    0x1E,
    0x1F,
    0x20,
    0x21,
    0x22,
    0x23
};

static const u8 Unk_020F6E8C[] = {
    0x1,
    0x2,
    0x3,
    0x4,
    0x5,
    0x6,
    0x7,
    0x8,
    0x9,
    0xA,
    0xB,
    0xC,
    0xD,
    0xE,
    0xF,
    0x10,
    0x11,
    0x12,
    0x13,
    0x14
};

static const u8 Unk_020F6F48[] = {
    0x1A,
    0x8,
    0x5,
    0xF,
    0x29,
    0x15,
    0x2B,
    0xA,
    0x18,
    0xD,
    0x25,
    0x2,
    0x4,
    0x1,
    0x3,
    0x1F,
    0xB,
    0x14,
    0x6,
    0x28,
    0x31,
    0x11,
    0x2A,
    0x2E,
    0x1D,
    0x1B,
    0x7,
    0x30,
    0x17,
    0x2D,
    0x20,
    0x12,
    0x2F,
    0x24,
    0x32,
    0x1E,
    0x2C,
    0xE,
    0x1C,
    0x23,
    0x19,
    0xC,
    0x27,
    0x10,
    0x22,
    0x13,
    0x21,
    0x9,
    0x26,
    0x16
};

static const u8 Unk_020F6E78[] = {
    0x1,
    0x2,
    0x3,
    0x4,
    0x5,
    0x6,
    0x7,
    0x8,
    0xA,
    0x9,
    0xB,
    0xC,
    0x14,
    0xD,
    0xE,
    0xF,
    0x10,
    0x11,
    0x12,
    0x13
};

static const u8 Unk_020F6E44[] = {
    0x1,
    0x2,
    0x5,
    0x3,
    0x4,
    0x6,
    0x7,
    0x8,
    0x9,
    0xA,
    0xB,
    0xC,
    0xD,
    0xE,
    0xF,
    0x10
};

static const u8 Unk_020F6E20[] = {
    0x1,
    0x2,
    0x3,
    0x5,
    0x6,
    0x7,
    0x4
};

static const u8 Unk_020F6ED0[] = {
    0x1,
    0x2,
    0x3,
    0x4,
    0x5,
    0x6,
    0x7,
    0x8,
    0x9,
    0xA,
    0xD,
    0xE,
    0xF,
    0xB,
    0x10,
    0x11,
    0x12,
    0x13,
    0x14,
    0xC,
    0x15,
    0x16,
    0x17,
    0x18
};

static const u8 Unk_020F6F7C[] = {
    0x1,
    0x2,
    0x3,
    0x4,
    0x5,
    0x6,
    0x7,
    0x8,
    0x9,
    0xA,
    0xB,
    0xC,
    0xD,
    0xE,
    0xF,
    0x10,
    0x11,
    0x12,
    0x13,
    0x14,
    0x15,
    0x16,
    0x17,
    0x18,
    0x19,
    0x1A,
    0x1B,
    0x1C,
    0x1D,
    0x1E,
    0x1F,
    0x20,
    0x21,
    0x22,
    0x23,
    0x24,
    0x25,
    0x26,
    0x27,
    0x28,
    0x29,
    0x2A,
    0x2B,
    0x2C,
    0x2D,
    0x2E,
    0x2F,
    0x30,
    0x31,
    0x32,
    0x33
};

static const u8 Unk_020F7094[] = {
    0x1,
    0x2,
    0x3,
    0x6,
    0x8,
    0x9,
    0xC,
    0xD,
    0xF,
    0x10,
    0x11,
    0x12,
    0x14,
    0x15,
    0x16,
    0x17,
    0x19,
    0x1B,
    0x1C,
    0x1D,
    0x1F,
    0x21,
    0x22,
    0x23,
    0x24,
    0x28,
    0x2A,
    0x2B,
    0x2D,
    0x30,
    0x31,
    0x32,
    0x34,
    0x36,
    0x37,
    0x38,
    0x3A,
    0x3B,
    0x3C,
    0x3D,
    0x3E,
    0x45,
    0x46,
    0x47,
    0x48,
    0x4A,
    0x4D,
    0x4E,
    0x4F,
    0x50,
    0x51,
    0x52,
    0x53,
    0x55,
    0x56,
    0x58,
    0x59,
    0x5A,
    0x5B,
    0x5C,
    0x5D,
    0x5E,
    0x5F,
    0x61,
    0x62,
    0x64,
    0x65,
    0x66,
    0x67,
    0x68,
    0x6B,
    0x6F,
    0x73,
    0x75,
    0x76,
    0x79,
    0x7A,
    0x7E,
    0x81,
    0x83,
    0x85,
    0x87,
    0x8C,
    0x8E,
    0x92,
    0x94,
    0x95,
    0x96,
    0x97,
    0x98,
    0x9C,
    0x9D,
    0x9E,
    0xA0,
    0xA1,
    0xA3,
    0xA4,
    0xA6,
    0xA7,
    0x6E,
    0xAB,
    0xAC,
    0xB3,
    0xB7,
    0xBA,
    0xBB,
    0xBC,
    0xBD,
    0xC0,
    0xC1,
    0xC2,
    0xC4,
    0xC6,
    0xC7,
    0xC8,
    0xCA,
    0xCD,
    0xCF,
    0xD3,
    0xD4,
    0xD8,
    0xDA,
    0xDB,
    0xCC,
    0xDD,
    0xDC,
    0xDE,
    0xE0,
    0xE2,
    0xE3,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0
};

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u16 unk_02;
    const u8 *unk_04;
    u32 unk_08;
} UnkStruct_020F6FB0;

static const UnkStruct_020F6FB0 Unk_020F6FB0[] = {
    { 0x0, 0x12, 0x2B6, Unk_020F7094, 0x82 },
    { 0x9, 0x0, 0x2A4, Unk_020F6EB8, 0x18 },
    { 0xC, 0x1, 0x2A5, Unk_020F6E18, 0x7 },
    { 0x1C, 0x2, 0x2A6, Unk_020F6EE8, 0x1B },
    { 0x24, 0x3, 0x2A7, Unk_020F6E34, 0xD },
    { 0x2B, 0x4, 0x2A8, Unk_020F6F04, 0x1F },
    { 0x4D, 0x5, 0x2A9, Unk_020F6E54, 0x10 },
    { 0xC1, 0x6, 0x2AA, Unk_020F6E64, 0x11 },
    { 0x46, 0x7, 0x2AB, Unk_020F6E10, 0x6 },
    { 0x47, 0x8, 0x2AC, Unk_020F6EA0, 0x16 },
    { 0xDB, 0x9, 0x2AD, Unk_020F6E28, 0xC },
    { 0x5E, 0xA, 0x2AE, Unk_020F6F24, 0x23 },
    { 0x65, 0xB, 0x2AF, Unk_020F6E8C, 0x14 },
    { 0x67, 0xC, 0x2B0, Unk_020F6F48, 0x32 },
    { 0x9C, 0xD, 0x2B1, Unk_020F6E78, 0x14 },
    { 0xA6, 0xE, 0x2B2, Unk_020F6E44, 0x10 },
    { 0xAC, 0xF, 0x2B3, Unk_020F6E20, 0x7 },
    { 0xC7, 0x10, 0x2B4, Unk_020F6ED0, 0x18 },
    { 0xDC, 0x11, 0x2B5, Unk_020F6F7C, 0x33 }
};

u32 sub_020996D0(void)
{
    return NELEMS(Unk_020F6FB0);
}

u32 sub_020996D4(u32 param0)
{
    u32 v0;

    for (v0 = 0; v0 < NELEMS(Unk_020F6FB0); v0++) {
        if (Unk_020F6FB0[v0].unk_00 == param0) {
            return v0;
        }
    }

    return 0;
}

u32 sub_020996F4(u32 param0)
{
    u32 v0;

    for (v0 = 0; v0 < NELEMS(Unk_020F6FB0); v0++) {
        if (Unk_020F6FB0[v0].unk_00 == param0) {
            return Unk_020F6FB0[v0].unk_08 + 1;
        }
    }

    return 0;
}

u32 sub_02099720(u32 param0)
{
    u32 v0 = sub_020996D4(param0);
    return sub_0209972C(v0);
}

u32 sub_0209972C(u32 param0)
{
    GF_ASSERT(param0 < NELEMS(Unk_020F6FB0));
    return Unk_020F6FB0[param0].unk_02;
}

u32 sub_02099748(u32 param0)
{
    GF_ASSERT(param0 < NELEMS(Unk_020F6FB0));
    return Unk_020F6FB0[param0].unk_00;
}

u32 sub_02099764(u32 param0)
{
    GF_ASSERT(param0 < NELEMS(Unk_020F6FB0));
    return Unk_020F6FB0[param0].unk_01;
}

const u8 *sub_02099780(u32 param0)
{
    GF_ASSERT(param0 < NELEMS(Unk_020F6FB0));
    return Unk_020F6FB0[param0].unk_04;
}

u32 sub_0209979C(u32 param0)
{
    GF_ASSERT(param0 < NELEMS(Unk_020F6FB0));
    return Unk_020F6FB0[param0].unk_08;
}