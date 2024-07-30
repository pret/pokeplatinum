#ifndef SPL_PARTICLE_H
#define SPL_PARTICLE_H

#include <nitro/types.h>
#include <nitro/gx/gxcommon.h>


typedef struct SPLParticle_t {
    struct SPLParticle_t *unk_00;
    struct SPLParticle_t *unk_04;
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
} SPLParticle; // size=0x44

typedef struct UnkSPLStruct3_t {
    SPLParticle *unk_00;
    int unk_04;
    SPLParticle *unk_08;
} UnkSPLStruct3; // size=0xc

#endif // SPL_PARTICLE_H