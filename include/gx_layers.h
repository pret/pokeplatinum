#ifndef POKEPLATINUM_GX_LAYERS_H
#define POKEPLATINUM_GX_LAYERS_H

#include "struct_defs/struct_02099F80.h"

void GXLayers_SetBanks(const UnkStruct_02099F80 *banks);
void GXLayers_DisableEngineALayers(void);
void GXLayers_EngineAToggleLayers(u8 layerMask, u8 enable);
void GXLayers_EngineASetLayers(int layers);
void GXLayers_DisableEngineBLayers(void);
void GXLayers_EngineBToggleLayers(u8 layerMask, u8 enable);
void GXLayers_EngineBSetLayers(int layers);
void GXLayers_TurnBothDispOn(void);
void GXLayers_SwapDisplay(void);
int GXLayers_EngineAGetLayers(void);

#endif // POKEPLATINUM_GX_LAYERS_H
