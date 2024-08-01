#ifndef SPL_PARTICLE_H
#define SPL_PARTICLE_H

#include <nitro/types.h>
#include <nitro/gx/gxcommon.h>


typedef struct SPLParticle {
    struct SPLParticle *next;
    struct SPLParticle *prev;
    VecFx32 position;
    VecFx32 velocity;
    u16 rotation;
    s16 angularVelocity;
    u16 lifeTime;
    u16 age;

    // These two values are essentially 1.0f / lifeTime (or 1.0f / loopTime), represented as an integer
    // They are used to map between age/lifeTime and a [0, 255] range
    // Mainly just to lower the amount of divisions needed in the update functions
    u16 loopTimeFactor;
    u16 lifeTimeFactor;

    struct {
        u16 unk_00 : 8;

        // A value between 0 and 255 that is added to the life rate of the particle.
        // This is used only for looping particles, so particles spawned at the same time
        // don't have aren't all in sync (animation-wise)
        u16 lifeRateOffset : 8;
    } misc;
    struct {
        u16 unk_00_0 : 5;
        u16 unk_00_5 : 5;
        u16 currentPolygonID : 6;
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