#ifndef POKEPLATINUM_FIELD_EFFECT_MANAGER_H
#define POKEPLATINUM_FIELD_EFFECT_MANAGER_H

#include <nitro/fx/fx.h>

#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_020217F4.h"

#include "field/field_system_decl.h"
#include "overlay005/struct_ov5_021DF84C.h"

#include "overworld_anim_manager.h"
#include "simple3d.h"

typedef struct UnkStruct_ov5_021DF8FC_t UnkStruct_ov5_021DF8FC;
typedef struct UnkStruct_ov5_021DF8C8_t UnkStruct_ov5_021DF8C8;

typedef struct FieldEffectRenderer {
    u32 id;
    void *context;
} FieldEffectRenderer;

typedef struct FieldEffectManager {
    enum HeapID heapID;
    u32 rendererCount;
    u32 animManCount;
    u32 dummy0C;
    FieldSystem *fieldSystem;
    FieldEffectRenderer *renderers;
    NARC *fldEffNARC;
    OverworldAnimManagerList *animManList;
    UnkStruct_ov5_021DF8FC *unk_20;
} FieldEffectManager;

FieldEffectManager *FieldEffectManager_New(FieldSystem *fieldSystem, u32 rendererCount, enum HeapID heapID);
void FieldEffectManager_InitAnimManagerList(FieldEffectManager *fieldEffMan, u32 animManCount);
void ov5_021DF488(FieldEffectManager *param0, enum HeapID heapID, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8);
void FieldEffectManager_InitRenderer(FieldEffectManager *fieldEffMan, u32 id);
void FieldEffectManager_InitRenderers(FieldEffectManager *fieldEffMan, const u32 *idIter);
int FieldEffectManager_HasRenderer(FieldEffectManager *fieldEffMan, u32 id);
void FieldEffectManager_Render(FieldEffectManager *fieldEffMan);
void FieldEffectManager_Free(FieldEffectManager *fieldEffMan);
void *FieldEffectManager_HeapAlloc(const FieldEffectManager *fieldEffMan, u32 size, BOOL allocAtEnd);
void *FieldEffectManager_HeapAllocInit(const FieldEffectManager *fieldEffMan, u32 size, BOOL allocAtEnd, u32 initValue);
void FieldEffectManager_HeapFree(void *data);
void *FieldEffectManager_GetRendererContext(FieldEffectManager *fieldEffMan, u32 id);
FieldSystem *FieldEffectManager_GetFieldSystem(const FieldEffectManager *fieldEffMan);
FieldEffectManager *MapObject_GetFieldEffectManager(const MapObject *mapObject);
u32 FieldEffectManager_GetNARCMemberSize(FieldEffectManager *fieldEffMan, u32 memberIndex);
void FieldEffectManager_ReadNARCWholeMember(FieldEffectManager *fieldEffMan, u32 memberIndex, void *dest);
void *FieldEffectManager_AllocAndReadNARCWholeMember(FieldEffectManager *fieldEffMan, u32 memberIndex, BOOL allocAtEnd);
OverworldAnimManager *FieldEffectManager_InitAnimManager(const FieldEffectManager *fieldEffMan, const OverworldAnimManagerFuncs *funcs, const VecFx32 *initialPos, int animId, const void *userData, int sysTaskPriority);
void FieldEffectManager_FinishAnimManager(OverworldAnimManager *animMan);
UnkStruct_020216E0 *ov5_021DF7F8(FieldEffectManager *param0, const UnkStruct_ov5_021DF84C *param1, const VecFx32 *param2);
UnkStruct_020216E0 *ov5_021DF84C(FieldEffectManager *param0, u32 param1, const VecFx32 *param2);
UnkStruct_ov5_021DF84C *ov5_021DF864(FieldEffectManager *param0, u32 param1, u32 param2, u32 param3, u32 param4, int param5, const UnkStruct_020217F4 *param6);
void ov5_021DF9D4(FieldEffectManager *param0, u32 param1);
void ov5_021DF9E0(FieldEffectManager *param0, u32 param1, u32 param2);
void *ov5_021DF9FC(FieldEffectManager *param0, u32 param1);
void ov5_021DFA08(FieldEffectManager *param0, u32 param1);
void ov5_021DFA14(FieldEffectManager *param0, u32 param1, u32 param2);
void ov5_021DFA30(FieldEffectManager *param0, u32 param1);
void ov5_021DFA3C(FieldEffectManager *param0, u32 param1, u32 param2, u32 param3);
void ov5_021DFA7C(FieldEffectManager *param0, u32 param1);
void FieldEffectManager_LoadModel(FieldEffectManager *fieldEffMan, Simple3DModel *model, u32 modelIndex, u32 memberIdx, BOOL allocAtEnd);
void FieldEffectManager_LoadAnimation(FieldEffectManager *fieldEffMan, Simple3DAnimation *anim, u32 unused, u32 memberIndex, BOOL allocAtEnd);
void FieldEffectManager_ApplyAnimCopyToModel(FieldEffectManager *fieldEffMan, Simple3DAnimation *destAnim, const Simple3DModel *model, Simple3DAnimation *srcAnim, u32 unused);

#endif // POKEPLATINUM_FIELD_EFFECT_MANAGER_H
