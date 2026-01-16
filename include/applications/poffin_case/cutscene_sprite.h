#ifndef POKEPLATINUM_APPLICATIONS_POFFIN_CASE_CUTSCENE_SPRITE_H
#define POKEPLATINUM_APPLICATIONS_POFFIN_CASE_CUTSCENE_SPRITE_H

#include "struct_defs/pokemon.h"

#include "camera.h"
#include "pokemon_sprite.h"
#include "string_gf.h"

typedef struct PoffinCutsceneMonSprite {
    Camera *camera;
    void *spriteMan;
    PokemonSpriteTemplate unused;
    PokemonSprite *sprite;
} PoffinCutsceneMonSprite;

typedef struct PoffinCutscenePokemon {
    Pokemon *baseMon;
    u16 species;
    u8 nature;
    u8 gender;
    u8 flipSprite;
    u8 poffinPreference;
    String *name;
} PoffinCutscenePokemon;

void PoffinCutsceneMonSprite_Init(PoffinCutsceneMonSprite *monSprite, PoffinCutscenePokemon *mon, enum HeapID heapID);
void PoffinCutsceneMonSprite_Update(PoffinCutsceneMonSprite *monSprite);
void PoffinCutsceneMonSprite_Free(PoffinCutsceneMonSprite *monSprite);

#endif // POKEPLATINUM_APPLICATIONS_POFFIN_CASE_CUTSCENE_SPRITE_H
