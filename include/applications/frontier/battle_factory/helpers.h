#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_HELPERS_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_HELPERS_H

#include "struct_defs/pokemon.h"

#include "pokemon_sprite.h"

void BattleFactoryApp_Setup3D(void);
void BattleFactoryApp_UpdateMonGraphics(PokemonSpriteManager *spriteMan);
PokemonSprite *BattleFactoryApp_CreateMonSprite(PokemonSpriteManager *spriteMan, int polygonID, Pokemon *mon, int x, int y, int z);
void BattleFactoryApp_FlipMonSprite(PokemonSprite *sprite, BOOL flipHorizontal);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_HELPERS_H
