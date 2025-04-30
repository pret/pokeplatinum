#ifndef POKEPLATINUM_OV25_02255540_H
#define POKEPLATINUM_OV25_02255540_H

#include <nnsys.h>

#include "constants/heap.h"
#include "constants/narc.h"

#include "overlay025/struct_ov25_022555E8_decl.h"
#include "overlay025/struct_ov25_02255810.h"
#include "overlay025/struct_ov25_022558C4_decl.h"
#include "overlay025/struct_ov25_02255958.h"

Ov25_540_GraphicManager *ov25_SetupDataStructure(NNSG2dOamManagerInstance *param0, u32 heapID);
void ov25_FreeOV25(Ov25_540_GraphicManager *param0);
void ov25_MainFunc(Ov25_540_GraphicManager *param0);
ov25_540_GraphicObject *ov25_SetupNewElem(Ov25_540_GraphicManager *param0, const UnkStruct_ov25_02255810 *param1, const UnkStruct_ov25_02255958 *param2);
void ov25_RemoveElem(Ov25_540_GraphicManager *param0, ov25_540_GraphicObject *param1);
void ov25_InitAnimation(ov25_540_GraphicObject *param0, u32 param1);
BOOL ov25_AnimNotPlaying(ov25_540_GraphicObject *param0);
void ov25_addTranslation(ov25_540_GraphicObject *param0, fx32 param1, fx32 param2);
void ov25_SetPosition(ov25_540_GraphicObject *param0, fx32 param1, fx32 param2);
void ov25_GetPosition(const ov25_540_GraphicObject *param0, fx32 *param1, fx32 *param2);
void ov25_540_Hide(ov25_540_GraphicObject *param0, BOOL param1);
void ov25_UpdateElem_unk_84_00(Ov25_540_GraphicManager *param0, ov25_540_GraphicObject *param1, u32 param2);
void ov25_Set_cParam(ov25_540_GraphicObject *param0, u32 param1);
void ov25_Set_charNo(ov25_540_GraphicObject *param0, u32 param1);
void ov25_Set_mosaic(ov25_540_GraphicObject *param0, BOOL param1);
void ov25_Set_ElemRotZ(ov25_540_GraphicObject *param0, u16 param1);
BOOL ov25_LoadNARCMembers(UnkStruct_ov25_02255958 *param0, enum NarcID narcID, u32 param2, u32 param3, enum HeapId param4);
void ov25_FreeNARCMembers(UnkStruct_ov25_02255958 *param0);

#endif // POKEPLATINUM_OV25_02255540_H
