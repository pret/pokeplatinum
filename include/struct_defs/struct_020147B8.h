#ifndef POKEPLATINUM_STRUCT_020147B8_H
#define POKEPLATINUM_STRUCT_020147B8_H

#include <nitro/fx/fx.h>

typedef struct SPLParticle SPLParticle;
struct SPLEmitter;

typedef struct {
    void (*unk_00)(const void *, SPLParticle *, VecFx32 *, struct SPLEmitter *);
    const void *unk_04;
} UnkStruct_020147B8;

#endif // POKEPLATINUM_STRUCT_020147B8_H
