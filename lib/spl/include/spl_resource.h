#ifndef SPL_RESOURCE_H
#define SPL_RESOURCE_H

#include <nitro/types.h>

#include "struct_defs/struct_020147B8.h"


typedef struct SPLArcHdr {
    u32 magic;
    u32 version;
    u16 resCount;
    u16 texCount;
    u32 reserved0;
    u32 resSize;
    u32 texSize;
    u32 texOffset;
    u32 reserved1;
} SPLFileHeader;

typedef union {
    u32 all;
    struct {
        u32 unk_04_0 : 4;
        u32 unk_04_4 : 2;
        u32 unk_04_6 : 2;
        u32 hasScaleAnim : 1;
        u32 hasColorAnim : 1;
        u32 hasAlphaAnim : 1;
        u32 hasTexAnim : 1;
        u32 unk_05_4 : 1;
        u32 unk_05_5 : 1;
        // If set, the emitter will terminate when it reaches the end of its life and all of its particles have died
        u32 selfTerminate : 1;
        u32 unk_05_7 : 1;
        u32 hasChildResource : 1;
        u32 unk_06_1 : 2;
        u32 unk_06_3 : 1;
        u32 unk_06_4 : 1;
        u32 unk_06_5 : 1;
        u32 unk_06_6 : 1;
        u32 unk_06_7 : 1;
        u32 hasGravityBehavior : 1;
        u32 hasRandomBehavior : 1;
        u32 hasMagnetBehavior : 1;
        u32 hasSpinBehavior : 1;
        u32 hasCollisionPlaneBehavior : 1;
        u32 hasConvergenceBehavior : 1;
        u32 unk_07_6 : 1;
        u32 unk_07_7 : 1;
    };
} SPLResourceFlags; // size=0x4

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

typedef struct UnkSPLStruct9_t {
    SPLResourceFlags flags;
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
    u16 startDelay; // Delay, in frames, before the emitter starts emitting particles
    s16 unk_34;
    s16 unk_36;
    u16 unk_38;
    u16 reserved_3A;
    u16 emitterLifeTime;
    u16 particleLifeTime;
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
} SPLResourceHeader; // size=0x5C

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
} SPLScaleAnim; // size=0xc

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
} SPLColorAnim;

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
} SPLAlphaAnim; // size=0x8

typedef struct UnkSPLStruct13_t {
    u8 unk_00[8];
    struct {
        u32 unk_00_0 : 8;
        u32 unk_01_0 : 8;
        u32 unk_02_0 : 1;
        u32 unk_02_1 : 1;
        u32 reserved_02_2 : 14;
    } unk_08;
} SPLTexAnim;

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
} SPLChildResource;

typedef struct SPLResource {
    SPLResourceHeader *header;
    SPLScaleAnim *scaleAnim;
    SPLColorAnim *colorAnim;
    SPLAlphaAnim *alphaAnim;
    SPLTexAnim *texAnim;
    SPLChildResource *childResource;
    SPLBehavior *behaviors;
    u16 behaviorCount;
    u16 reserved_1E;
} SPLResource;

#endif // SPL_RESOURCE_H
