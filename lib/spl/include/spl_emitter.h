#ifndef SPL_EMITTER_H
#define SPL_EMITTER_H

#include <nitro/types.h>

#include "spl_particle.h"
#include "spl_resource.h"

enum SPLUpdateCallbackType {
    SPL_CALLBACK_PRE_UPDATE = 0,
    SPL_CALLBACK_POST_UPDATE = 1,
};

typedef void(* SPLEmitterUpdateCallback)(struct SPLEmitter *emitter, enum SPLUpdateCallbackType type);

typedef struct UnkSPLStruct7 {
    union
    {
        u32 all;
        u8 padding_00[4];
        struct
        {
            u32 terminate : 1;
            u32 emissionPaused : 1;
            u32 paused : 1;
            u32 renderingDisabled : 1;
            u32 started: 1 ;
            u32 : 27;
        };
    };
} UnkSPLStruct7;

typedef struct SPLEmitter {
    struct SPLEmitter *next;
    struct SPLEmitter *prev;
    SPLParticleList particles;
    SPLParticleList childParticles;
    SPLResource *resource;
    UnkSPLStruct7 state;
    VecFx32 position;
    VecFx32 velocity;
    VecFx32 particleInitVelocity;
    u16 age;
    fx16 emissionCountFractional; // fractional part of the number of particles to emit (doesn't seem to be used)
    VecFx16 axis;
    u16 unk_C6;
    fx32 emissionCount;
    fx32 radius;
    fx32 length;
    fx32 initVelPositionAmplifier; // amplifies the initial velocity of the particles based on their position
    fx32 initVelAxisAmplifier; // amplifies the initial velocity of the particles based on the emitter's axis
    fx32 baseScale; // base scale of the particles
    u16 particleLifeTime;
    GXRgb color;
    fx32 collisionPlaneHeight;
    fx16 unk_E8;
    fx16 unk_EA;
    fx16 unk_EC;
    fx16 unk_EE;
    struct {
        u32 emissionInterval : 8; // number of frames between particle emissions
        u32 baseAlpha : 8;
        u32 updateCycle : 3; // 0 = every frame, 1 = cycle A, 2 = cycle B, cycles A and B alternate
        u32 unk_02_3 : 13;
    } misc;
    VecFx16 crossAxis1;
    VecFx16 crossAxis2;
    SPLEmitterUpdateCallback updateCallback;
    void * unk_104;
    union {
        u32 unk_108_val1;
        u16 unk_108_val2[2];
        u8 unk_108_val3[4];
    } unk_108;
} SPLEmitter;

typedef struct SPLEmitterList {
    SPLEmitter *first;
    int count;
    SPLEmitter *last;
} SPLEmitterList; // size=0xc

#endif // SPL_EMITTER_H
