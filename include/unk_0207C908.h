#ifndef POKEPLATINUM_UNK_0207C908_H
#define POKEPLATINUM_UNK_0207C908_H

#include <nnsys.h>

#include "generated/move_classes.h"
#include "generated/pokemon_types.h"

#include "palette.h"
#include "sprite_system.h"

u32 TypeIcon_GetChar(enum PokemonType moveType);
u32 TypeIcon_GetPlttSrc(void);
u32 TypeIcon_GetCell(void);
u32 TypeIcon_GetAnim(void);
u8 TypeIcon_GetPltt(enum PokemonType moveType);
enum NarcID TypeIcon_GetNARC(void);
void TypeIcon_LoadChar(SpriteSystem *spriteSys, SpriteManager *spriteMan, NNS_G2D_VRAM_TYPE vramType, enum PokemonType moveType, u32 resourceID);
void TypeIcon_LoadPlttSrc(SpriteSystem *spriteSys, SpriteManager *spriteMan, NNS_G2D_VRAM_TYPE vramType, u32 resourceID);
void TypeIcon_LoadPltt(PaletteData *paletteData, enum PaletteBufferID bufferID, SpriteSystem *spriteSys, SpriteManager *spriteMan, NNS_G2D_VRAM_TYPE vramType, u32 resourceID);
void TypeIcon_LoadAnim(SpriteSystem *spriteSys, SpriteManager *spriteMan, u32 cellResourceID, u32 animResourceID);
void TypeIcon_UnloadChar(SpriteManager *spriteMan, u32 resourceID);
void TypeIcon_UnloadPlttSrc(SpriteManager *spriteMan, u32 resourceID);
void TypeIcon_UnloadAnim(SpriteManager *spriteMan, u32 cellResourceID, u32 animResourceID);
ManagedSprite *TypeIcon_NewTypeIconSprite(SpriteSystem *spriteSys, SpriteManager *spriteMan, enum PokemonType moveType, const SpriteTemplate *spriteTemplate);
void TypeIcon_DeleteSprite(ManagedSprite *managedSprite);
u32 CategoryIcon_GetChar(enum MoveClass moveCat);
u8 CategoryIcon_GetPltt(enum MoveClass moveCat);
enum NarcID CategoryIcon_GetNARC(void);
void CategoryIcon_LoadChar(SpriteSystem *spriteSys, SpriteManager *spriteMan, NNS_G2D_VRAM_TYPE vramType, enum MoveClass moveCat, u32 resourceID);
void CategoryIcon_UnloadChar(SpriteManager *spriteMan, u32 resourceID);
void CategoryIcon_DeleteSprite(ManagedSprite *managedSprite);

#endif // POKEPLATINUM_UNK_0207C908_H
