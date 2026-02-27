#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_POKEBALL_SPRITE_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_POKEBALL_SPRITE_H

#include <nitro/fx/fx.h>

#include "overlay105/ov105_02245AAC.h"

typedef struct BattleFactoryAppPokeballSprite {
    u16 isSelected;
    u16 unused;
    int x;
    int y;
    Sprite *sprite;
} BattleFactoryAppPokeballSprite;

BattleFactoryAppPokeballSprite *BattleFactoryAppPokeballSprite_New(BattleFactoryAppSpriteManager *spriteMan, int x, int y, u32 heapID);
void *BattleFactoryAppPokeballSprite_Free(BattleFactoryAppPokeballSprite *sprite);
void BattleFactoryAppPokeballSprite_SetDrawFlag(BattleFactoryAppPokeballSprite *sprite, int draw);
VecFx32 BattleFactoryAppPokeballSprite_SetAndGetPosition(BattleFactoryAppPokeballSprite *sprite, int x, int y);
void BattleFactoryAppPokeballSprite_SetPosition(BattleFactoryAppPokeballSprite *sprite, int x, int y);
const VecFx32 *BattleFactoryAppPokeballSprite_GetPosition(BattleFactoryAppPokeballSprite *sprite);
u8 BattleFactoryAppPokeballSprite_IsSelected(BattleFactoryAppPokeballSprite *sprite);
void BattleFactoryAppPokeballSprite_SelectMon(BattleFactoryAppPokeballSprite *sprite);
void BattleFactoryAppPokeballSprite_UnselectMon(BattleFactoryAppPokeballSprite *sprite);
void ov105_02245F5C(BattleFactoryAppPokeballSprite *sprite);
int BattleFactoryAppPokeballSprite_GetX(BattleFactoryAppPokeballSprite *sprite);
int BattleFactoryAppPokeballSprite_GetY(BattleFactoryAppPokeballSprite *sprite);
void BattleFactoryAppPokeballSprite_SetAnim(BattleFactoryAppPokeballSprite *sprite, u32 animID);
void BattleFactoryAppPokeballSprite_UpdatePalette(BattleFactoryAppPokeballSprite *sprite, u32 palette);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_POKEBALL_SPRITE_H
