#ifndef POKEPLATINUM_OV5_021D5CB0_H
#define POKEPLATINUM_OV5_021D5CB0_H

#include <nnsys.h>

#include "overlay005/struct_ov5_021D5CB0_decl.h"

FieldTextureManager *TextureResourceManager_Create(void);
int TextureResourceManager_LoadTexture(FieldTextureManager *textureManager, NNSG3dResTex *textureResource);
void TextureResourceManager_Free(FieldTextureManager *textureManager);
void TextureResourceManager_FreeSlot(FieldTextureManager *textureManager, int slotIndex);
void TextureResourceManager_FreeAllSlots(FieldTextureManager *textureManager);
void TextureResourceManager_Destroy(FieldTextureManager *textureManager);

#endif // POKEPLATINUM_OV5_021D5CB0_H
