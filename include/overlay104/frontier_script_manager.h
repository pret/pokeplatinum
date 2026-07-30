#ifndef POKEPLATINUM_FRONTIER_SCRIPT_MANAGER_H
#define POKEPLATINUM_FRONTIER_SCRIPT_MANAGER_H

#include "constants/heap.h"

#include "struct_decls/battle_frontier_decl.h"

#include "overlay104/defs.h"
#include "overlay104/frontier_graphics.h"
#include "overlay104/struct_ov104_0222E8C8.h"

FrontierScriptManager *FrontierScriptManager_New(BattleFrontier *frontier, enum HeapID heapID, int scene);
BOOL FrontierScriptManager_RunScript(FrontierScriptManager *scriptMan);
void FrontierScriptManager_Free(FrontierScriptManager *scriptMan);
void FrontierScriptManager_Load(FrontierScriptManager *scriptMan, int scene, int offsetID);
void FrontierScriptManager_UpdateMessageLoader(FrontierScriptManager *scriptMan, int scene, enum HeapID heapID);
UnkStruct_ov104_0222E8C8 *ov104_0222E8C8(FrontierScriptManager *param0, enum HeapID heapID);
void ov104_0222E8E8(FrontierScriptManager *param0, UnkStruct_ov104_0222E8C8 *param1);
u16 *ov104_0222E91C(FrontierScriptManager *param0, int param1);
FrontierGraphics *FrontierScriptManager_GetGraphics(FrontierScriptManager *scriptMan);

#endif // POKEPLATINUM_FRONTIER_SCRIPT_MANAGER_H
