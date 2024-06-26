#ifndef POKEPLATINUM_UNK_020218BC_H
#define POKEPLATINUM_UNK_020218BC_H

#include "struct_defs/struct_020095C4.h"
#include "struct_decls/struct_020218BC_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "overlay083/struct_ov83_0223D9A8.h"
#include "overlay115/struct_ov115_02261520.h"

#include "constants/heap.h"

#include <nitro/gx.h>
#include <nnsys.h>
#include <nitro/fx/fx.h>

#define GRAPHIC_ELEMENT_DATA_FLIP_NONE  0
#define GRAPHIC_ELEMENT_DATA_FLIP_H     1
#define GRAPHIC_ELEMENT_DATA_FLIP_V     2

enum AffineOverwriteMode {
    AFFINE_OVERWRITE_MODE_NONE = 0,
    AFFINE_OVERWRITE_MODE_NORMAL,
    AFFINE_OVERWRITE_MODE_DOUBLE, // Extends the cell actor's drawable area by 2x, use when the cell actor is scaled up
};

GraphicElementManager *GraphicElementManager_New(const GraphicElementManagerParams *params);
BOOL GraphicElementManager_Delete(GraphicElementManager *gfxElemMgr);
BOOL GraphicElementManager_SetActive(GraphicElementManager *gfxElemMgr, u8 active);
BOOL GraphicElementManager_DeleteAll(GraphicElementManager *gfxElemMgr);
void GraphicElementManager_Update(const GraphicElementManager *gfxElemMgr);
void GraphicElementData_Reset(GraphicElementData *elem);
GraphicElementData *GraphicElementManager_AddElementEx(const CellActorInitParamsEx *params);
GraphicElementData *GraphicElementManager_AddElement(const CellActorInitParams *params);
void GraphicElementData_Delete(GraphicElementData *gfxElem);
void GraphicElementData_SetPosition(GraphicElementData *elem, const VecFx32 *position);
void GraphicElementData_SetAffineTranslation(GraphicElementData *elem, const VecFx32 *translation);
void GraphicElementData_SetAffineScale(GraphicElementData *elem, const VecFx32 *scale);
void GraphicElementData_SetAffineScaleEx(GraphicElementData *elem, const VecFx32 *scale, enum AffineOverwriteMode mode);
void GraphicElementData_SetAffineZRotation(GraphicElementData *elem, u16 angle);
void GraphicElementData_SetAffineZRotationEx(GraphicElementData *elem, u16 angle, enum AffineOverwriteMode mode);
void GraphicElementData_SetDrawFlag(GraphicElementData *elem, BOOL draw);
void GraphicElementData_SetAnimateFlag(GraphicElementData *elem, BOOL animate);
void GraphicElementData_SetAnimSpeed(GraphicElementData *elem, fx32 speed);
void GraphicElementData_SetAffineOverwriteMode(GraphicElementData *elem, enum AffineOverwriteMode mode);
void GraphicElementData_SetFlipMode(GraphicElementData *elem, u32 mode);
const VecFx32 *GraphicElementData_GetPosition(const GraphicElementData *elem);
const VecFx32 *GraphicElementData_GetAffineScale(const GraphicElementData *elem);
u16 GraphicElementData_GetAffineZRotation(const GraphicElementData *elem);
BOOL GraphicElementData_GetDrawFlag(const GraphicElementData *elem);
BOOL GraphicElementData_GetAnimateFlag(const GraphicElementData *elem);
u32 GraphicElementData_GetAnimCount(const GraphicElementData *elem);
void GraphicElementData_SetAnim(GraphicElementData *elem, u32 animID);
void GraphicElementData_SetAnimNoRestart(GraphicElementData *elem, u32 animID);
void GraphicElementData_RestartAnim(GraphicElementData *elem);
u32 GraphicElementData_GetActiveAnim(const GraphicElementData *elem);
void GraphicElementData_UpdateAnim(GraphicElementData *elem, fx32 frames);
void SpriteActor_SetAnimFrame(GraphicElementData *elem, u16 frame);
u16 GraphicElementData_GetAnimFrame(const GraphicElementData *elem);
void GraphicElementData_SetExplicitPriority(GraphicElementData *elem, u8 priority);
u8 GraphicElementData_GetExplicitPriority(const GraphicElementData *elem);
void GraphicElementData_SetExplicitPalette(GraphicElementData *elem, u32 palette);
void GraphicElementData_SetExplicitPaletteWithOffset(GraphicElementData *elem, u32 palette);
u32 GraphicElementData_GetExplicitPalette(const GraphicElementData *elem);
void GraphicElementData_SetExplicitPaletteOffset(GraphicElementData *elem, u32 paletteOffset);
void GraphicElementData_SetExplicitPaletteOffsetAutoAdjust(GraphicElementData *elem, u32 paletteOffset);
u32 GraphicElementData_GetExplicitPaletteOffset(const GraphicElementData *elem);
void GraphicElementData_SetPriority(GraphicElementData *elem, u32 priority);
u32 GraphicElementData_GetPriority(const GraphicElementData *elem);
void GraphicElementData_SetImageProxy(GraphicElementData *elem, const NNSG2dImageProxy *imageProxy);
NNSG2dImageProxy *SpriteActor_ImageProxy(GraphicElementData *elem);
NNSG2dImagePaletteProxy *GraphicElementData_GetPaletteProxy(GraphicElementData *paletteProxy);
void GraphicElementData_SetPixelated(GraphicElementData *elem, BOOL pixelated);
NNS_G2D_VRAM_TYPE GraphicElementData_GetVRamType(const GraphicElementData *elem);
BOOL GraphicElementData_IsAnimated(GraphicElementData *elem);
void GraphicElementData_SetExplicitOAMMode(GraphicElementData *elem, GXOamMode mode);
void Utility_Clear2DMainOAM(enum HeapId heapID);
void Utility_Clear2DSubOAM(enum HeapId heapID);
u32 GraphicElementData_GetUserAttrForAnimFrame(const GraphicElementData *elem, u32 animID, u32 frame);
u32 GraphicElementData_GetUserAttrForCurrentAnimFrame(const GraphicElementData *elem);

#endif // POKEPLATINUM_UNK_020218BC_H
