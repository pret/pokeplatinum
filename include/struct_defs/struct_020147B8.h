#ifndef POKEPLATINUM_STRUCT_020147B8_H
#define POKEPLATINUM_STRUCT_020147B8_H

#include <nitro/fx/fx.h>

struct SPLParticle;
struct SPLEmitter;

typedef struct SPLBehavior {
    void (*apply)(const void *, struct SPLParticle *, VecFx32 *, struct SPLEmitter *);
    const void *object;
} SPLBehavior;

#endif // POKEPLATINUM_STRUCT_020147B8_H
