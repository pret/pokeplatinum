#ifndef POKEPLATINUM_UNK_0200C6E4_H
#define POKEPLATINUM_UNK_0200C6E4_H

#include <nitro/gx.h>
#include <nnsys.h>

#include "struct_decls/cell_actor_data.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_defs/sprite_template.h"

#include "overlay007/struct_ov7_0224F358.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_02241308.h"
#include "overlay104/struct_ov104_0224133C.h"

#include "cell_actor.h"
#include "narc.h"
#include "palette.h"
#include "sprite_resource.h"

typedef struct {
    NNSG2dRendererInstance rendererInstance;
    NNSG2dRenderSurface renderSurface[2];
} GF_G2dRenderer;

typedef struct {
    CellActorResourceData *resourceDataList;
    int numEntries;
} CellActorResourceDataList;

typedef struct CellTransferStateData_t {
    int heapID;
    int numGfxHandlers;
    BOOL hasOamManager;
    NNSG2dCellTransferState *cellTransferState;
    GF_G2dRenderer renderer;
} SpriteRenderer;

typedef struct AnimationResourceCollection_t {
    CellActorCollection *cellActorList;
    CellActorResourceDataList *cellActorDataList;
    SpriteResourceTable *spriteResourceTable;
    SpriteResourceCollection *spriteResourceCollectionList[SPRITE_RESOURCE_TYPE_MAX];
    SpriteResourceList *spriteResourceList[SPRITE_RESOURCE_TYPE_MAX];
    int numSpriteResources[SPRITE_RESOURCE_TYPE_MAX];
    int numSpriteResourceTypes;
} SpriteGfxHandler;

SpriteRenderer *SpriteRenderer_Create(int param0);
SpriteGfxHandler *SpriteRenderer_CreateGfxHandler(SpriteRenderer *param0);
GF_G2dRenderer *SpriteRenderer_GetG2dRenderer(SpriteRenderer *param0);
BOOL SpriteRenderer_CreateOamCharPlttManagers(SpriteRenderer *param0, const UnkStruct_ov104_0224133C *param1, const UnkStruct_ov104_022412F4 *param2, int param3);
BOOL SpriteRenderer_CreateCellActorList(SpriteRenderer *param0, SpriteGfxHandler *param1, int param2);
void thunk_CellActor_Delete(CellActor *param0);
void SpriteGfxHandler_UpdateCellActorCollection(SpriteGfxHandler *param0);
void OAMManager_ApplyAndResetBuffers(void);
void sub_0200C808(void);
void SpriteGfxHandler_DeleteCellActorCollection(SpriteGfxHandler *param0);
void SpriteGfxHandler_DeleteCellActorData(SpriteGfxHandler *param0);
void SpriteGfxHandler_DeleteSpriteResources(SpriteGfxHandler *param0);
void SpriteRenderer_Deinit(SpriteRenderer *param0);
void SpriteRenderer_RemoveGfxHandler(SpriteRenderer *param0, SpriteGfxHandler *param1);
void SpriteRenderer_DeleteGfxHandler(SpriteRenderer *param0, SpriteGfxHandler *param1);
void SpriteRenderer_Free(SpriteRenderer *param0);
BOOL SpriteRenderer_LoadSpriteResourceData(SpriteRenderer *param0, SpriteGfxHandler *param1, const SpriteResourceDataPath *param2);
CellActor *SpriteRenderer_CreateCellActorFromTemplate(SpriteRenderer *param0, SpriteGfxHandler *param1, const UnkStruct_ov7_0224F358 *param2);
CellActor *SpriteRenderer_CreateCellActor(SpriteRenderer *param0, SpriteGfxHandler *param1, int param2, s16 param3, s16 param4, s16 param5, u16 param6, int param7, int param8, int param9, int param10, int param11, int param12, int param13);
BOOL SpriteRenderer_InitGfxResourceList(SpriteRenderer *param0, SpriteGfxHandler *param1, const UnkStruct_ov104_02241308 *param2);
BOOL SpriteRenderer_LoadCharResObj(SpriteRenderer *param0, SpriteGfxHandler *param1, int param2, int param3, BOOL param4, int param5, int param6);
BOOL SpriteRenderer_LoadCharResObjFromOpenNarc(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, NARC *narc, int fileID, BOOL compressed, int vram, int resID);
s8 SpriteRenderer_LoadPaletteResObj(SpriteRenderer *param0, SpriteGfxHandler *param1, int param2, int param3, int param4, int param5, int param6, int param7);
s8 SpriteRenderer_LoadPaletteResObjFromOpenNarc(SpriteRenderer *param0, SpriteGfxHandler *param1, NARC *param2, int param3, int param4, int param5, int param6, int param7);
u8 SpriteRenderer_LoadPalette(PaletteData *palette, enum PaletteBufferID bufferID, SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, int narcIndex, int memberIndex, int compressed, int paletteIndex, int vramType, int resourceID);
u8 SpriteRenderer_LoadPaletteFromOpenNarc(PaletteData *palette, enum PaletteBufferID bufferID, SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, NARC *narc, int memberIndex, int compressed, int paletteIndex, int vramType, int resourceID);
BOOL SpriteRenderer_LoadCellResObj(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, int narcIndex, int memberIndex, BOOL compressed, int resourceID);
BOOL SpriteRenderer_LoadCellResObjFromOpenNarc(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, NARC *narc, int memberIndex, BOOL compressed, int resourceID);
BOOL SpriteRenderer_LoadAnimResObj(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, int narcIndex, int memberIndex, BOOL compressed, int resourceID);
BOOL SpriteRenderer_LoadAnimResObjFromOpenNarc(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, NARC *narc, int memberIndex, BOOL compressed, int resourceID);
CellActorData *CellActor_LoadResources(SpriteRenderer *param0, SpriteGfxHandler *param1, const SpriteTemplate *param2);
const NNSG2dImagePaletteProxy *SpriteGfxHandler_GetPaletteProxy(SpriteGfxHandler *param0, int param1);
u32 SpriteGfxHandler_GetPaletteNumberById(SpriteGfxHandler *param0, int param1, NNS_G2D_VRAM_TYPE param2);
BOOL SpriteGfxHandler_UnloadCharObjById(SpriteGfxHandler *param0, int param1);
BOOL SpriteGfxHandler_UnloadPlttObjById(SpriteGfxHandler *param0, int param1);
BOOL SpriteGfxHandler_UnloadCellObjById(SpriteGfxHandler *param0, int param1);
BOOL SpriteGfxHandler_UnloadAnimObjById(SpriteGfxHandler *param0, int param1);
void SpriteRenderer_UnloadResourcesAndRemoveGfxHandler(SpriteRenderer *param0, SpriteGfxHandler *param1);
void CellActorData_Delete(CellActorData *param0);
void CellActor_UpdateObject(CellActor *param0);
void CellActorData_UpdateObject(CellActorData *param0);
void CellActorData_Update2Frames(CellActorData *param0);
void CellActorData_UpdateNFrames(CellActorData *param0, fx32 param1);
u32 CellActorData_GetActorAnimCount(CellActorData *param0);
void CellActorData_SetAnim(CellActorData *param0, u32 param1);
void CellActorData_SetAnimNoRestart(CellActorData *param0, u32 param1);
u32 CellActorData_GetActiveAnim(CellActorData *param0);
void thunk_CellActor_SetAnimateFlag(CellActor *param0, int param1);
void CellActorData_SetAnimateFlag(CellActorData *param0, int param1);
void thunk_CellActor_SetAnimSpeed(CellActor *param0, fx32 param1);
void CellActorData_SetAnimSpeed(CellActorData *param0, fx32 param1);
BOOL thunk_CellActor_IsAnimated(CellActor *param0);
BOOL CellActorData_IsAnimated(CellActorData *param0);
void thunk_CellActor_SetAnimFrame(CellActor *param0, u16 param1);
void CellActorData_SetAnimFrame(CellActorData *param0, u16 param1);
u16 thunk_CellActor_GetAnimFrame(CellActor *param0);
u16 CellActorData_GetAnimFrame(CellActorData *param0);
void CellActor_DrawSprite(CellActor *param0, int param1);
void CellActorData_DrawSprite(CellActorData *param0, int param1);
int thunk_CellActor_GetDrawFlag(CellActor *param0);
int CellActorData_GetDrawFlag(CellActorData *param0);
void thunk_CellActor_SetExplicitPalette(CellActor *param0, int param1);
void CellActorData_SetExplicitPalette(CellActorData *param0, int param1);
void thunk_CellActor_SetExplicitPaletteOffset(CellActor *param0, int param1);
void CellActorData_SetExplicitPaletteOffset(CellActorData *param0, int param1);
int CellActorData_GetExplicitPaletteOffset(CellActorData *param0);
void thunk_CellActor_SetExplicitPriority(CellActor *param0, int param1);
int CellActorData_GetExplicitPriority(CellActorData *param0);
void CellActorData_SetExplicitPriority(CellActorData *param0, int param1);
void thunk_CellActor_SetPriority(CellActor *param0, int param1);
void CellActorData_SetPriority(CellActorData *param0, int param1);
u32 thunk_CellActor_GetPriority(CellActor *param0);
u32 CellActorData_GetPriority(CellActorData *param0);
void CellActor_SetPositionXY(CellActor *param0, s16 param1, s16 param2);
void CellActorData_SetPositionXY(CellActorData *param0, s16 param1, s16 param2);
void CellActor_SetPositionWithOffsetXY(CellActor *param0, s16 param1, s16 param2, fx32 param3);
void sub_0200D500(CellActorData *param0, s16 param1, s16 param2, fx32 param3);
void sub_0200D50C(CellActor *param0, s16 *param1, s16 *param2);
void SpriteActor_GetSpritePositionXY(CellActorData *param0, s16 *param1, s16 *param2);
void sub_0200D55C(CellActor *param0, s16 *param1, s16 *param2, fx32 param3);
void sub_0200D5A0(CellActorData *param0, s16 *param1, s16 *param2, fx32 param3);
void sub_0200D5AC(CellActor *param0, s16 param1, s16 param2);
void sub_0200D5DC(CellActorData *param0, s16 param1, s16 param2);
void sub_0200D5E8(CellActorData *param0, fx32 param1, fx32 param2);
void sub_0200D614(CellActorData *param0, fx32 param1, fx32 param2);
void sub_0200D638(CellActorData *param0, fx32 *param1, fx32 *param2);
void sub_0200D650(CellActorData *param0, fx32 param1, fx32 param2, fx32 param3);
void sub_0200D67C(CellActorData *param0, fx32 *param1, fx32 *param2, fx32 param3);
void sub_0200D69C(CellActor *param0, int param1);
void sub_0200D6A4(CellActorData *param0, int param1);
void sub_0200D6B0(CellActor *param0, f32 param1, f32 param2);
void sub_0200D6E8(CellActorData *param0, f32 param1, f32 param2);
void sub_0200D6F4(CellActor *param0, f32 param1, f32 param2);
void sub_0200D74C(CellActorData *param0, f32 param1, f32 param2);
void sub_0200D758(CellActor *param0, f32 *param1, f32 *param2);
void sub_0200D788(CellActorData *param0, f32 *param1, f32 *param2);
void sub_0200D794(CellActor *param0, u16 param1);
void sub_0200D79C(CellActorData *param0, u16 param1);
void sub_0200D7A8(CellActor *param0, s32 param1);
void sub_0200D7C0(CellActorData *param0, s32 param1);
void sub_0200D7CC(CellActor *param0, int param1);
void sub_0200D7D4(CellActorData *param0, int param1);
void sub_0200D7E0(CellActorData *param0, s16 param1, s16 param2);
void sub_0200D7FC(CellActorData *param0, BOOL param1);
void sub_0200D808(CellActor *param0, GXOamMode param1);
void SpriteActor_SetOAMMode(CellActorData *param0, GXOamMode param1);
u32 sub_0200D81C(CellActorData *param0);
BOOL sub_0200D828(SpriteRenderer *param0, SpriteGfxHandler *param1, int param2, int param3, BOOL param4, int param5, int param6);
BOOL sub_0200D888(SpriteRenderer *param0, SpriteGfxHandler *param1, int param2, int param3, BOOL param4, int param5, int param6);
BOOL sub_0200D8E8(SpriteRenderer *param0, SpriteGfxHandler *param1, NARC *param2, int param3, BOOL param4, int param5, int param6);
void sub_0200D948(SpriteRenderer *param0, SpriteGfxHandler *param1, int param2, int param3, BOOL param4, int param5);
void sub_0200D97C(SpriteRenderer *param0, SpriteGfxHandler *param1, int param2, int param3, BOOL param4, int param5);
CellActorCollection *sub_0200D9B0(SpriteGfxHandler *param0);
void sub_0200D9B4(SpriteRenderer *param0, SpriteGfxHandler *param1, NARC *param2, int param3, BOOL param4, int param5);

#endif // POKEPLATINUM_UNK_0200C6E4_H
