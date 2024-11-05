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
    CellActorCollection *cellActorCollection;
    CellActorResourceDataList *cellActorDataList;
    SpriteResourceTable *spriteResourceTable;
    SpriteResourceCollection *spriteResourceCollectionList[SPRITE_RESOURCE_TYPE_MAX];
    SpriteResourceList *spriteResourceList[SPRITE_RESOURCE_TYPE_MAX];
    int numSpriteResources[SPRITE_RESOURCE_TYPE_MAX];
    int numSpriteResourceTypes;
} SpriteGfxHandler;

SpriteRenderer *SpriteRenderer_Create(int heapID);
SpriteGfxHandler *SpriteRenderer_CreateGfxHandler(SpriteRenderer *renderer);
GF_G2dRenderer *SpriteRenderer_GetG2dRenderer(SpriteRenderer *renderer);
BOOL SpriteRenderer_CreateOamCharPlttManagers(SpriteRenderer *renderer, const UnkStruct_ov104_0224133C *param1, const UnkStruct_ov104_022412F4 *param2, int param3);
BOOL SpriteRenderer_CreateCellActorList(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, int numCells);
void thunk_CellActor_Delete(CellActor *cellActor);
void SpriteGfxHandler_UpdateCellActorCollection(SpriteGfxHandler *gfxHandler);
void OAMManager_ApplyAndResetBuffers(void);
void sub_0200C808(void);
void SpriteGfxHandler_DeleteCellActorCollection(SpriteGfxHandler *gfxHandler);
void SpriteGfxHandler_DeleteCellActorData(SpriteGfxHandler *gfxHandler);
void SpriteGfxHandler_DeleteSpriteResources(SpriteGfxHandler *gfxHandler);
void SpriteRenderer_Deinit(SpriteRenderer *renderer);
void SpriteRenderer_RemoveGfxHandler(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler);
void SpriteRenderer_DeleteGfxHandler(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler);
void SpriteRenderer_Free(SpriteRenderer *renderer);
BOOL SpriteRenderer_LoadSpriteResourceData(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, const SpriteResourceDataPath *resourcePaths);
CellActor *SpriteRenderer_CreateCellActorFromTemplate(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, const UnkStruct_ov7_0224F358 *template);
CellActor *SpriteRenderer_CreateCellActor(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, int resourceIndex, s16 x, s16 y, s16 z, u16 anim, int priority, int palette, int vramType, int param10, int param11, int param12, int param13);
BOOL SpriteRenderer_InitGfxResourceList(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, const UnkStruct_ov104_02241308 *param2);
BOOL SpriteRenderer_LoadCharResObj(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, int narcIndex, int memberIndex, BOOL compressed, int vramType, int resourceID);
BOOL SpriteRenderer_LoadCharResObjFromOpenNarc(SpriteRenderer *renderer, SpriteGfxHandler *param1, NARC *narc, int memberIndex, BOOL compressed, int vramType, int resourceID);
s8 SpriteRenderer_LoadPaletteResObj(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, int narcIndex, int memberIndex, BOOL compressed, int paletteIndex, int vramType, int resourceID);
s8 SpriteRenderer_LoadPaletteResObjFromOpenNarc(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, NARC *narc, int memberIndex, BOOL compressed, int paletteIndex, int vramType, int resourceID);
u8 SpriteRenderer_LoadPalette(PaletteData *palette, enum PaletteBufferID bufferID, SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, int narcIndex, int memberIndex, int compressed, int paletteIndex, int vramType, int resourceID);
u8 SpriteRenderer_LoadPaletteFromOpenNarc(PaletteData *palette, enum PaletteBufferID bufferID, SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, NARC *narc, int memberIndex, int compressed, int paletteIndex, int vramType, int resourceID);
BOOL SpriteRenderer_LoadCellResObj(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, int narcIndex, int memberIndex, BOOL compressed, int resourceID);
BOOL SpriteRenderer_LoadCellResObjFromOpenNarc(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, NARC *narc, int memberIndex, BOOL compressed, int resourceID);
BOOL SpriteRenderer_LoadAnimResObj(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, int narcIndex, int memberIndex, BOOL compressed, int resourceID);
BOOL SpriteRenderer_LoadAnimResObjFromOpenNarc(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, NARC *narc, int memberIndex, BOOL compressed, int resourceID);
CellActorData *CellActor_LoadResources(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, const SpriteTemplate *template);
const NNSG2dImagePaletteProxy *SpriteGfxHandler_GetPaletteProxy(SpriteGfxHandler *gfxHandler, int resourceID);
u32 SpriteGfxHandler_GetPaletteNumberById(SpriteGfxHandler *gfxHandler, int resourceID, NNS_G2D_VRAM_TYPE vramType);
BOOL SpriteGfxHandler_UnloadCharObjById(SpriteGfxHandler *gfxHandler, int resourceID);
BOOL SpriteGfxHandler_UnloadPlttObjById(SpriteGfxHandler *gfxHandler, int resourceID);
BOOL SpriteGfxHandler_UnloadCellObjById(SpriteGfxHandler *gfxHandler, int resourceID);
BOOL SpriteGfxHandler_UnloadAnimObjById(SpriteGfxHandler *gfxHandler, int resourceID);
void SpriteRenderer_UnloadResourcesAndRemoveGfxHandler(SpriteRenderer *spriteRenderer, SpriteGfxHandler *gfxHandler);
void CellActorData_Delete(CellActorData *cellActorData);
void CellActor_UpdateObject(CellActor *cellActor);
void CellActorData_UpdateObject(CellActorData *cellActorData);
void CellActorData_Update2Frames(CellActorData *cellActorData);
void CellActorData_UpdateNFrames(CellActorData *cellActorData, fx32 frames);
u32 CellActorData_GetActorAnimCount(CellActorData *cellActorData);
void CellActorData_SetAnim(CellActorData *cellActorData, u32 animID);
void CellActorData_SetAnimNoRestart(CellActorData *cellActorData, u32 animID);
u32 CellActorData_GetActiveAnim(CellActorData *cellActorData);
void thunk_CellActor_SetAnimateFlag(CellActor *cellActor, BOOL animate);
void CellActorData_SetAnimateFlag(CellActorData *cellActorData, BOOL animate);
void thunk_CellActor_SetAnimSpeed(CellActor *cellActor, fx32 speed);
void CellActorData_SetAnimSpeed(CellActorData *cellActorData, fx32 speed);
BOOL thunk_CellActor_IsAnimated(CellActor *cellActor);
BOOL CellActorData_IsAnimated(CellActorData *cellActorData);
void thunk_CellActor_SetAnimFrame(CellActor *cellActor, u16 frame);
void CellActorData_SetAnimFrame(CellActorData *cellActorData, u16 frame);
u16 thunk_CellActor_GetAnimFrame(CellActor *cellActor);
u16 CellActorData_GetAnimFrame(CellActorData *cellActorData);
void CellActor_DrawSprite(CellActor *cellActor, BOOL drawFlag);
void CellActorData_DrawSprite(CellActorData *cellActorData, BOOL drawFlag);
int thunk_CellActor_GetDrawFlag(CellActor *cellActor);
int CellActorData_GetDrawFlag(CellActorData *cellActorData);
void thunk_CellActor_SetExplicitPalette(CellActor *cellActor, int palette);
void CellActorData_SetExplicitPalette(CellActorData *cellActorData, int palette);
void thunk_CellActor_SetExplicitPaletteOffset(CellActor *cellActor, int paletteOffset);
void CellActorData_SetExplicitPaletteOffset(CellActorData *cellActorData, int paletteOffset);
int CellActorData_GetExplicitPaletteOffset(CellActorData *cellActorData);
void thunk_CellActor_SetExplicitPriority(CellActor *cellActor, int priority);
int CellActorData_GetExplicitPriority(CellActorData *cellActorData);
void CellActorData_SetExplicitPriority(CellActorData *cellActorData, int priority);
void thunk_CellActor_SetPriority(CellActor *cellActor, int priority);
void CellActorData_SetPriority(CellActorData *cellActorData, int priority);
u32 thunk_CellActor_GetPriority(CellActor *cellActor);
u32 CellActorData_GetPriority(CellActorData *cellActorData);
void CellActor_SetPositionXY(CellActor *cellActor, s16 x, s16 y);
void CellActorData_SetPositionXY(CellActorData *cellActorData, s16 x, s16 y);
void CellActor_SetPositionWithOffsetXY(CellActor *cellActor, s16 x, s16 y, fx32 offset);
void CellActorData_SetPositionWithOffsetXY(CellActorData *cellActorData, s16 x, s16 y, fx32 offset);
void CellActor_GetPositionXY(CellActor *cellActor, s16 *x, s16 *y);
void CellActorData_GetPositionXY(CellActorData *cellActorData, s16 *x, s16 *y);
void CellActor_GetPositionWithOffsetXY(CellActor *cellActor, s16 *x, s16 *y, fx32 offset);
void CellActorData_GetPositionWithOffsetXY(CellActorData *cellActorData, s16 *x, s16 *y, fx32 offset);
void CellActor_AddPositionXY(CellActor *cellActor, s16 x, s16 y);
void CellActorData_AddPositionXY(CellActorData *cellActorData, s16 x, s16 y);
void CellActorData_AddPositionXYFx32(CellActorData *cellActorData, fx32 x, fx32 y);
void CellActorData_SetPositionFx32(CellActorData *cellActorData, fx32 x, fx32 y);
void CellActorData_GetPositionFx32(CellActorData *cellActorData, fx32 *x, fx32 *y);
void CellActorData_SetPositionWithOffsetFx32(CellActorData *cellActorData, fx32 x, fx32 y, fx32 offset);
void CellActorData_GetPositionFx32WithOffset(CellActorData *cellActorData, fx32 *x, fx32 *y, fx32 offset);
void thunk_CellActor_SetAffineOverwriteMode(CellActor *cellActor, enum AffineOverwriteMode mode);
void CellActorData_SetAffineOverwriteMode(CellActorData *cellActorData, enum AffineOverwriteMode mode);
void CellActor_SetAffineScaleXYFx32(CellActor *cellActor, f32 x, f32 y);
void CellActorData_SetAffineScaleXYFx32(CellActorData *cellActorData, f32 x, f32 y);
void CellActor_AddAffineScaleFx32(CellActor *cellActor, f32 x, f32 y);
void CellActorData_AddAffineScaleFx32(CellActorData *cellActorData, f32 x, f32 y);
void CellActor_GetAffineScaleF32(CellActor *cellActor, f32 *x, f32 *y);
void CellActorData_GetAffineScaleF32(CellActorData *cellActorData, f32 *x, f32 *y);
void thunk_CellActor_SetAffineZRotation(CellActor *cellActor, u16 angle);
void CellActorData_SetAffineZRotation(CellActorData *cellActorData, u16 angle);
void CellActor_AddAffineZRotation(CellActor *cellActor, s32 angle);
void CellActorData_AddAffineZRotation(CellActorData *cellActorData, s32 angle);
void thunk_CellActor_SetFlipMode(CellActor *cellActor, int mode);
void CellActorData_SetFlipMode(CellActorData *cellActorData, int mode);
void CellActorData_SetAffineTranslationXY(CellActorData *cellActorData, s16 x, s16 y);
void CellActorData_SetPixelated(CellActorData *cellActorData, BOOL pixelated);
void thunk_CellActor_SetExplicitOAMMode(CellActor *cellActor, GXOamMode mode);
void CellActorData_SetExplicitOAMMode(CellActorData *cellActorData, GXOamMode mode);
u32 CellActorData_GetUserAttrForCurrentAnimFrame(CellActorData *cellActorData);
BOOL sub_0200D828(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, int narcIndex, int memberIndex, BOOL compressed, int vramType, int resourceID);
BOOL sub_0200D888(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, int narcIndex, int memberIndex, BOOL compressed, int vramType, int resourceID);
BOOL sub_0200D8E8(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, NARC *narc, int memberIndex, BOOL compressed, int vramType, int resourceID);
void SpriteRenderer_ModifyTiles(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, int narcIndex, int memberIndex, BOOL compressed, int resourceID);
void SpriteRenderer_ModifyPalette(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, int narcIndex, int memberIndex, BOOL compressed, int resourceID);
CellActorCollection *SpriteGfxHandler_GetCellActorCollection(SpriteGfxHandler *gfxHandler);
void SpriteRenderer_ModifyTilesFromOpenNarc(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, NARC *narc, int memberIndex, BOOL compressed, int resourceID);

#endif // POKEPLATINUM_UNK_0200C6E4_H
