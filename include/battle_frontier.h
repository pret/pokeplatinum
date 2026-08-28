#ifndef POKEPLATINUM_BATTLE_FRONTIER_H
#define POKEPLATINUM_BATTLE_FRONTIER_H

#include "struct_decls/battle_frontier_decl.h"

#include "overlay104/frontier_graphics.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_0223C634.h"
#include "overlay104/struct_ov104_0223C688.h"
#include "overlay104/struct_ov104_0223D3B0.h"

#include "overlay_manager.h"

#define NO_NEW_ENTRY_POINT 0xffff

typedef void (*BattleFrontierSubAppCallback)(void *);

extern const ApplicationManagerTemplate gBattleFrontierAppTemplate;

FieldFrontierDTO *BattleFrontier_GetFieldData(BattleFrontier *frontier);
FrontierGraphics *BattleFrontier_GetGraphics(BattleFrontier *frontier);
void *BattleFrontier_GetFacilityStruct(BattleFrontier *frontier);
void BattleFrontier_SetFacilityStruct(BattleFrontier *frontier, void *facilityData);
void BattleFrontier_RunSubApp(BattleFrontier *frontier, const ApplicationManagerTemplate *appTemplate, void *appArgs, BOOL freeArgsAfter, BattleFrontierSubAppCallback finishCallback);
void BattleFrontier_ExitFrontier(BattleFrontier *frontier);
void BattleFrontier_ChangeScene(BattleFrontier *frontier, u16 sceneID, u16 entryPointOffset);
UnkStruct_ov104_0223C688 *sub_0209B9CC(BattleFrontier *frontier);
UnkStruct_ov104_0223C634 *sub_0209B9D0(BattleFrontier *frontier);
UnkStruct_ov104_0223C634 *sub_0209B9D4(BattleFrontier *frontier, int param1);
UnkStruct_ov104_0223D3B0 *sub_0209B9E0(BattleFrontier *frontier);
void sub_0209B9EC(BattleFrontier *frontier);
FieldFrontierDTO *BattleFrontier_LaunchWFCFacilitySelector(FieldSystem *fieldSystem, void *data);

#endif // POKEPLATINUM_BATTLE_FRONTIER_H
