#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_POKEBALL_SPRITE_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_POKEBALL_SPRITE_H

#include <nitro/fx/fx.h>

#include "applications/frontier/battle_factory/sprite_manager.h"

#define PALETTE_POKEBALL_SELECTED     0
#define PALETTE_POKEBALL_NOT_SELECTED 1

typedef struct BattleFactoryAppPokeballSprite {
    u16 isSelected;
    u16 unused;
    int restingX;
    int restingY;
    Sprite *sprite;
} BattleFactoryAppPokeballSprite;

BattleFactoryAppPokeballSprite *BattleFactoryAppPokeballSprite_New(BattleFactoryAppSpriteManager *spriteMan, int x, int y, u32 heapID);
void *BattleFactoryAppPokeballSprite_Free(BattleFactoryAppPokeballSprite *ballSprite);
void BattleFactoryAppPokeballSprite_SetDrawFlag(BattleFactoryAppPokeballSprite *ballSprite, BOOL draw);
VecFx32 BattleFactoryAppPokeballSprite_ShiftPosition(BattleFactoryAppPokeballSprite *ballSprite, int x, int y);
void BattleFactoryAppPokeballSprite_SetPosition(BattleFactoryAppPokeballSprite *ballSprite, int x, int y);
const VecFx32 *BattleFactoryAppPokeballSprite_GetPosition(BattleFactoryAppPokeballSprite *ballSprite);
u8 BattleFactoryAppPokeballSprite_IsSelected(BattleFactoryAppPokeballSprite *ballSprite);
void BattleFactoryAppPokeballSprite_SelectMon(BattleFactoryAppPokeballSprite *ballSprite);
void BattleFactoryAppPokeballSprite_UnselectMon(BattleFactoryAppPokeballSprite *ballSprite);
void BattleFactoryAppPokeballSprite_SetPositionForConveyorStart(BattleFactoryAppPokeballSprite *ballSprite);
int BattleFactoryAppPokeballSprite_GetRestingPointX(BattleFactoryAppPokeballSprite *ballSprite);
int BattleFactoryAppPokeballSprite_GetRestingPointY(BattleFactoryAppPokeballSprite *ballSprite);
void BattleFactoryAppPokeballSprite_SetAnim(BattleFactoryAppPokeballSprite *ballSprite, u32 animID);
void BattleFactoryAppPokeballSprite_UpdatePalette(BattleFactoryAppPokeballSprite *ballSprite, u32 palette);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_POKEBALL_SPRITE_H
