#ifndef POKEPLATINUM_POFFIN_SPRITE_H
#define POKEPLATINUM_POFFIN_SPRITE_H

#include "struct_defs/poffin_sprite.h"

#include "poffin_types.h"

PoffinSpriteManager *PoffinSpriteManager_New(enum HeapID heapID, u16 maxSprites, u16 numPalettes, u16 vramType, int transferType);
void PoffinSpriteManager_Free(PoffinSpriteManager *spriteMan);
void PoffinSpriteManager_DrawSprites(PoffinSpriteManager *spriteMan);
PoffinSprite *PoffinSprite_New(PoffinSpriteManager *spriteMan, enum PoffinType type, u16 x, u16 y, u16 z, u8 bgPriority, u8 priority, BOOL onSubScreen);
void PoffinSprite_UpdateType(PoffinSpriteManager *spriteMan, PoffinSprite *sprite, enum PoffinType poffinType);
void PoffinSprite_Free(PoffinSpriteManager *spriteMan, PoffinSprite *poffinSprite);

#endif // POKEPLATINUM_POFFIN_SPRITE_H
