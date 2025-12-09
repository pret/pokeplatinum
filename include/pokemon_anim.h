#ifndef POKEPLATINUM_POKEMON_ANIM_H
#define POKEPLATINUM_POKEMON_ANIM_H

#include "struct_decls/pokemon_anim_manager_decl.h"

#include "pokemon_sprite.h"

typedef struct PokemonAnimTemplate {
    u16 animation;
    u16 startDelay;
    u8 flipSprite;
} PokemonAnimTemplate;

PokemonAnimManager *PokemonAnimManager_New(enum HeapID heapID, const int animCount, const u8 flipSprite);
void PokemonAnimManager_Free(PokemonAnimManager *monAnimMan);
void PokemonAnimManager_InitAnim(PokemonAnimManager *monAnimMan, PokemonSprite *monSprite, const PokemonAnimTemplate *animTemplate, const u8 index);
BOOL PokemonAnimManager_HasAnimCompleted(PokemonAnimManager *monAnimMan, const u8 index);
void PokemonAnimManager_DeleteAnim(PokemonAnimManager *monAnimMan, const u8 index);

#endif // POKEPLATINUM_POKEMON_ANIM_H
