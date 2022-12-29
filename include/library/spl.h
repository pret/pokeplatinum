#ifndef POKEPLATINUM_SPL_H
#define POKEPLATINUM_SPL_H

#ifdef __cplusplus
extern "C" {
#endif

#include "struct_defs/struct_020147B8.h"

typedef void * (* UnkFuncPtr_0209CD00)(u32);

typedef union {
    u32 unk_00;
    struct {
        u32 unk_04_0 : 4;
        u32 unk_04_4 : 2;
        u32 unk_04_6 : 2;
        u32 unk_05_0 : 1;
        u32 unk_05_1 : 1;
        u32 unk_05_2 : 1;
        u32 unk_05_3 : 1;
        u32 unk_05_4 : 1;
        u32 unk_05_5 : 1;
        u32 unk_05_6 : 1;
        u32 unk_05_7 : 1;
        u32 unk_06_0 : 1;
        u32 unk_06_1 : 2;
        u32 unk_06_3 : 1;
        u32 unk_06_4 : 1;
        u32 unk_06_5 : 1;
        u32 unk_06_6 : 1;
        u32 unk_06_7 : 1;
        u32 unk_07_0 : 1;
        u32 unk_07_1 : 1;
        u32 unk_07_2 : 1;
        u32 unk_07_3 : 1;
        u32 unk_07_4 : 1;
        u32 unk_07_5 : 1;
        u32 unk_07_6 : 1;
        u32 unk_07_7 : 1;
    };
} UnkSPLUnion1; // size=0x4

typedef union {
    u16 unk_00;
    struct {
        u16 unk_02_0 : 1;
        u16 unk_02_1 : 1;
        u16 unk_02_2 : 1;
        u16 unk_02_3 : 2;
        u16 unk_02_5 : 1;
        u16 unk_02_6 : 1;
        u16 unk_02_7 : 2;
        u16 unk_03_1 : 2;
        u16 unk_03_3 : 1;
        u16 reserved_03_4 : 4;
    };
} UnkSPLUnion2; // size=0x2

typedef union {
    u16 val1;
    struct {
        u16 val2_00 : 8;
        u16 val2_01 : 8;
    };
} UnkSPLUnion3; // size=0x2

typedef union {
    u32 unk_00;
    struct {
        u32 unk_04_0 : 8;
        u32 unk_05_0 : 8;
        u32 unk_06_0 : 8;
        u32 unk_07_0 : 8;
    };
} UnkSPLUnion4; // size=0x4

typedef union {
    u32 val1;
    struct {
        u32 val2_00_0 : 4;
        u32 val2_00_4 : 4;
        u32 val2_01_0 : 4;
        u32 val2_01_4 : 2;
        u32 val2_01_6 : 2;
        u32 val2_02_0 : 1;
        u32 val2_02_1 : 1;
        u32 val2_02_2 : 8;
        u32 val2_03_2 : 6;
    };
} UnkSPLUnion5;

typedef struct UnkSPLStruct8_t {
    struct UnkSPLStruct8_t * unk_00;
    struct UnkSPLStruct8_t * unk_04;
    VecFx32 unk_08;
    VecFx32 unk_14;
    u16 unk_20;
    s16 unk_22;
    u16 unk_24;
    u16 unk_26;
    u16 unk_28;
    u16 unk_2A;
    struct {
        u16 unk_00 : 8;
        u16 unk_01 : 8;
    } unk_2C;
    struct {
        u16 unk_00_0 : 5;
        u16 unk_00_5 : 5;
        u16 unk_01_2 : 6;
    } unk_2E;
    fx32 unk_30;
    fx16 unk_34;
    GXRgb unk_36;
    VecFx32 unk_38;
} UnkSPLStruct8; // size=0x44

typedef struct UnkSPLStruct3_t {
    UnkSPLStruct8 * unk_00;
    u8 padding_04[8];
} UnkSPLStruct3; // size=0xc

typedef struct {
    u8 padding_00[4];
} UnkSPLStruct7;

typedef struct UnkSPLStruct9_t {
    UnkSPLUnion1 unk_00;
    VecFx32 unk_04;
    fx32 unk_10;
    fx32 unk_14;
    fx32 unk_18;
    VecFx16 unk_1C;
    GXRgb unk_22;
    fx32 unk_24;
    fx32 unk_28;
    fx32 unk_2C;
    fx16 unk_30;
    u16 unk_32;
    s16 unk_34;
    s16 unk_36;
    u16 unk_38;
    u16 reserved_3A;
    u16 unk_3C;
    u16 unk_40;
    struct {
        u32 unk_00_0 : 8;
        u32 unk_01_0 : 8;
        u32 unk_02_0 : 8;
        u32 reserved_03_0 : 8;
    } unk_44;

    struct {
        u32 unk_00_0 : 8;
        u32 unk_01_0 : 8;
        u32 unk_02_0 : 8;
        u32 unk_03_0 : 8;
        u32 unk_04_0 : 8;
        u32 unk_05_0 : 16;
        u32 unk_07_0 : 2;
        u32 unk_07_2 : 2;
        u32 unk_07_4 : 3;
        u32 unk_07_7 : 1;
        u32 unk_08_0 : 1;
        u32 unk_08_1 : 1;
        u32 unk_08_2 : 3;
        u32 unk_08_5 : 27;
    } unk_48;
    fx16 unk_54;
    fx16 unk_56;
    struct {
        u32 unk_00_0 : 8;
        u32 reserved_01_0 : 24;
    } unk_58;
} UnkSPLStruct9; // size=0x5C

typedef struct UnkSPLStruct10_t {
    fx16 unk_00;
    fx16 unk_02;
    fx16 unk_04;
    UnkSPLUnion3 unk_06;
    struct {
        u16 unk_00_0 : 1;
        u16 reserved_00_1 : 15;
    } unk_08;
    u16 reserved_0A;
} UnkSPLStruct10; // size=0xc

typedef struct UnkSPLStruct11_t {
    GXRgb unk_00;
    GXRgb unk_02;
    UnkSPLUnion4 unk_04;
    struct {
        u16 unk_00_0 : 1;
        u16 unk_00_1 : 1;
        u16 unk_00_2 : 1;
        u16 unk_00_3 : 13;
    } unk_08;
    u16 reserved_0A;
} UnkSPLStruct11;

typedef struct UnkSPLStruct12_t {
    union {
        u16 val1;
        struct {
            u16 val2_00_0 : 5;
            u16 val2_00_5 : 5;
            u16 val2_01_2 : 5;
            u16 val2_reserved_01_7 : 1;
        };
    } unk_00;
    struct {
        u16 unk_00_0 : 8;
        u16 unk_01_0 : 1;
        u16 unk_01_1 : 7;
    } unk_02;
    UnkSPLUnion3 unk_04;
    u16 reserved_06;
} UnkSPLStruct12; // size=0x8

typedef struct UnkSPLStruct13_t {
    u8 unk_00[8];
    struct {
        u32 unk_00_0 : 8;
        u32 unk_01_0 : 8;
        u32 unk_02_0 : 1;
        u32 unk_02_1 : 1;
        u32 reserved_02_2 : 14;
    } unk_08;
} UnkSPLStruct13;

typedef struct UnkSPLStruct14_t {
    UnkSPLUnion2 unk_00;
    fx16 unk_02;
    fx16 unk_04;
    u16 unk_06;
    struct {
        u16 unk_00_0 : 8;
        u16 unk_01_0 : 8;
    } unk_08;
    GXRgb unk_0A;
    struct {
        u32 unk_00_0 : 8;
        u32 unk_01_0 : 8;
        u32 unk_02_0 : 8;
        u32 unk_03_0 : 8;
        u32 unk_04_0 : 2;
        u32 unk_04_2 : 2;
        u32 unk_04_4 : 1;
        u32 unk_04_5 : 1;
        u32 unk_04_6 : 1;
        u32 reserved_04_7 : 25;
    } unk_0C;
} UnkSPLStruct14;

typedef struct UnkSPLStruct15_t {
    u32 unk_00;
    UnkSPLUnion5 unk_04;
    u32 unk_08;
    u32 unk_0C;
    u32 unk_10;
    u32 unk_14;
    u32 unk_18;
    u32 unk_1C;
} UnkSPLStruct15;

typedef struct UnkSPLStruct4_t {
    UnkSPLStruct9 * unk_00;
    UnkSPLStruct10 * unk_04;
    UnkSPLStruct11 * unk_08;
    UnkSPLStruct12 * unk_0C;
    UnkSPLStruct13 * unk_10;
    UnkSPLStruct14 * unk_14;
    UnkStruct_020147B8 * unk_18;
    u16 unk_1C;
    u16 reserved_1E;
} UnkSPLStruct4;

typedef struct UnkSPLStruct5_t {
    const void * unk_00;
    u32 unk_04;
    u32 unk_08;
    UnkSPLUnion5 unk_0C;
    u16 unk_10;
    u16 unk_12;
} UnkSPLStruct5;

typedef struct UnkSPLStruct6_t {
    struct UnkSPLStruct6_t * unk_00;
    struct UnkSPLStruct6_t * unk_04;
    UnkSPLStruct3 unk_08;
    UnkSPLStruct3 unk_4C;
    UnkSPLStruct4 * unk_90;
    UnkSPLStruct7 unk_94;
    VecFx32 unk_98;
    VecFx32 unk_A4;
    VecFx32 unk_B0;
    u16 unk_BC;
    fx16 unk_BE;
    VecFx16 unk_C0;
    u16 unk_C6;
    fx32 unk_C8;
    fx32 unk_CC;
    fx32 unk_D0;
    fx32 unk_D4;
    fx32 unk_D8;
    fx32 unk_DC;
    u16 unk_E0;
    GXRgb unk_E2;
    fx32 unk_E4;
    fx16 unk_E8;
    fx16 unk_EA;
    fx16 unk_EC;
    fx16 unk_EE;
    struct {
        u32 unk_00_0 : 8;
        u32 unk_01_0 : 8;
        u32 unk_02_0 : 3;
        u32 unk_02_3 : 13;
    } unk_F0;
    VecFx16 unk_F4;
    VecFx16 unk_FA;
    void (* unk_100)(struct UnkSPLStruct6_t *, unsigned int);
    void * unk_104;
    union {
        u32 unk_108_val1;
        u16 unk_108_val2[2];
        u8 unk_108_val3[4];
    } unk_108;
} UnkSPLStruct6;

typedef struct UnkSPLStruct2_t {
    UnkSPLStruct6 * unk_00;
    int unk_04;
    UnkSPLStruct6 * unk_08;
} UnkSPLStruct2; // size=0xc

typedef struct UnkSPLStruct1_t {
    UnkFuncPtr_0209CD00 unk_00;
    UnkSPLStruct2 unk_04;
    UnkSPLStruct2 unk_10;
    UnkSPLStruct3 unk_1C;
    UnkSPLStruct4 * unk_28;
    UnkSPLStruct5 * unk_2C;
    u16 unk_30;
    u16 unk_32;
    u16 unk_34;
    u16 unk_36;
    struct {
        u32 unk_00_0 : 6;
        u32 unk_00_6 : 6;
        u32 unk_01_4 : 6;
        u32 unk_02_2 : 6;
        u32 unk_03_0 : 1;
        u32 unk_03_7 : 7;
    } unk_38;
    s32 unk_3C;
    struct {
        UnkSPLStruct6 * unk_00;
        const MtxFx43 * unk_04;
    } unk_40;
    u16 unk_48;
    u16 unk_4A;
} UnkSPLStruct1; // size=0x4c

void SPL_0209C400(UnkSPLStruct1 * param0);
void SPL_0209C444(UnkSPLStruct1 * param0, UnkSPLStruct6 * param1);
UnkSPLStruct6 * SPL_0209C4D8(UnkSPLStruct1 * param0, int param1, void (* param2)(struct UnkSPLStruct6_t *));
void SPL_0209C5E0(UnkSPLStruct1 * param0, const MtxFx43 * param1);
UnkSPLStruct6 * SPL_0209C56C(UnkSPLStruct1 * param0, int param1, const VecFx32 * param2);
void SPL_0209C6A8(UnkSPLStruct1 * param0);
BOOL SPL_0209C7E0(UnkSPLStruct1 * param0);
BOOL SPL_0209C7F4(UnkSPLStruct1 * param0);
BOOL SPL_0209C808(UnkSPLStruct1 * param0, u32 (* param1)(u32, BOOL));
BOOL SPL_0209C8BC(UnkSPLStruct1 * param0, u32 (* param1)(u32, BOOL));
void SPL_0209C988(UnkSPLStruct1 * param0, const void * param1);
UnkSPLStruct1 * SPL_0209CD00(UnkFuncPtr_0209CD00 param0, u16 param1, u16 param2, u16 param3, u16 param4, u16 param5);

void SPL_020A1E30(const void * param0, UnkSPLStruct8 * param1, VecFx32 * param2, struct UnkSPLStruct6_t * param3);
void SPL_020A1EC4(const void * param0, UnkSPLStruct8 * param1, VecFx32 * param2, struct UnkSPLStruct6_t * param3);
void SPL_020A1FE0(const void * param0, UnkSPLStruct8 * param1, VecFx32 * param2, struct UnkSPLStruct6_t * param3);
void SPL_020A20B8(const void * param0, UnkSPLStruct8 * param1, VecFx32 * param2, struct UnkSPLStruct6_t * param3);
void SPL_020A213C(const void * param0, UnkSPLStruct8 * param1, VecFx32 * param2, struct UnkSPLStruct6_t * param3);
void SPL_020A2204(const void * param0, UnkSPLStruct8 * param1, VecFx32 * param2, struct UnkSPLStruct6_t * param3);

static inline void SPL_UnkInline1 (UnkSPLStruct6 * param0, const VecFx32 * param1)
{
    param0->unk_98.x = param1->x + param0->unk_90->unk_00->unk_04.x;
    param0->unk_98.y = param1->y + param0->unk_90->unk_00->unk_04.y;
    param0->unk_98.z = param1->z + param0->unk_90->unk_00->unk_04.z;
}

static inline void SPL_UnkInline2 (UnkSPLStruct6 * param0, fx32 param1)
{
    param0->unk_98.x = param1 + param0->unk_90->unk_00->unk_04.x;
}

static inline void SPL_UnkInline3 (UnkSPLStruct6 * param0, fx32 param1)
{
    param0->unk_98.y = param1 + param0->unk_90->unk_00->unk_04.y;
}

static inline void SPL_UnkInline4 (UnkSPLStruct6 * param0, fx32 param1)
{
    param0->unk_98.z = param1 + param0->unk_90->unk_00->unk_04.z;
}

static inline void SPL_UnkInline5 (UnkSPLStruct6 * param0, const VecFx16 * param1)
{
    param0->unk_C0 = *param1;
}


#ifdef __cplusplus
}
#endif

#endif // POKEPLATINUM_SPL_H
