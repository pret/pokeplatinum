#ifndef POKEPLATINUM_GX_LAYERS_H
#define POKEPLATINUM_GX_LAYERS_H

#include "struct_defs/struct_02099F80.h"

void GX_SetBanks(const UnkStruct_02099F80 * banks);
void GX_DisableEngineALayers(void);
void GX_EngineAToggleLayers(u8 layerMask, u8 enable);
void GX_EngineASetLayers(int layers);
void GX_DisableEngineBLayers(void);
void GX_EngineBToggleLayers(u8 layerMask, u8 enable);
void GX_EngineBSetLayers(int layers);
void GX_BothDispOn(void);
void GX_SwapDisplay(void);
int  GX_EngineAGetLayers(void);

#endif // POKEPLATINUM_GX_LAYERS_H
