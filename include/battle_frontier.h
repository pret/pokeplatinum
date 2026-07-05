#ifndef POKEPLATINUM_BATTLE_FRONTIER_H
#define POKEPLATINUM_BATTLE_FRONTIER_H

#include "struct_decls/battle_frontier_decl.h"

#include "functypes/funcptr_0209B988.h"
#include "overlay104/frontier_graphics.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_0223C634.h"
#include "overlay104/struct_ov104_0223C688.h"
#include "overlay104/struct_ov104_0223D3B0.h"

#include "overlay_manager.h"

extern const ApplicationManagerTemplate gBattleFrontierAppTemplate;

FieldFrontierDTO *BattleFrontier_GetFieldData(BattleFrontier *frontier);
FrontierGraphics *BattleFrontier_GetGraphics(BattleFrontier *frontier);
void *BattleFrontier_GetFacilityStruct(BattleFrontier *frontier);
void BattleFrontier_SetFacilityStruct(BattleFrontier *frontier, void *param1);
void sub_0209B988(BattleFrontier *frontier, const ApplicationManagerTemplate *param1, void *param2, int param3, UnkFuncPtr_0209B988 param4);
void sub_0209B9B4(BattleFrontier *frontier);
void sub_0209B9BC(BattleFrontier *frontier, u16 sceneID, u16 param2);
UnkStruct_ov104_0223C688 *sub_0209B9CC(BattleFrontier *frontier);
UnkStruct_ov104_0223C634 *sub_0209B9D0(BattleFrontier *frontier);
UnkStruct_ov104_0223C634 *sub_0209B9D4(BattleFrontier *frontier, int param1);
UnkStruct_ov104_0223D3B0 *sub_0209B9E0(BattleFrontier *frontier);
void sub_0209B9EC(BattleFrontier *frontier);
FieldFrontierDTO *sub_0209BA18(FieldSystem *fieldSystem, void *param1);

#endif // POKEPLATINUM_BATTLE_FRONTIER_H
