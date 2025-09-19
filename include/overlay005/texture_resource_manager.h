#ifndef POKEPLATINUM_TEXTURE_RESOURCE_MANAGER_H
#define POKEPLATINUM_TEXTURE_RESOURCE_MANAGER_H

#include <nnsys.h>

#include "overlay005/texture_resource_manager_decl.h"

FieldTextureManager *TextureResourceManager_Create(void);
int TextureResourceManager_LoadTexture(FieldTextureManager *textureManager, NNSG3dResTex *textureResource);
void TextureResourceManager_Free(FieldTextureManager *textureManager);
void TextureResourceManager_FreeSlot(FieldTextureManager *textureManager, int slotIndex);
void TextureResourceManager_FreeAllSlots(FieldTextureManager *textureManager);
void TextureResourceManager_Destroy(FieldTextureManager *textureManager);

#endif // POKEPLATINUM_TEXTURE_RESOURCE_MANAGER_H
