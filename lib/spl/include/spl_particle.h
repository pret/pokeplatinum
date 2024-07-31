#ifndef SPL_PARTICLE_H
#define SPL_PARTICLE_H

#include <nitro/types.h>
#include <nitro/gx/gxcommon.h>


typedef struct SPLParticle {
    struct SPLParticle *next;
    struct SPLParticle *prev;
    VecFx32 position;
    VecFx32 velocity;
    u16 unk_20;
    s16 unk_22;
    u16 lifeTime;
    u16 age;
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
    VecFx32 emitterPos;
} SPLParticle; // size=0x44

typedef struct SPLParticleList {
    SPLParticle *first;
    int count;
    SPLParticle *last;
} SPLParticleList; // size=0xc

#endif // SPL_PARTICLE_H