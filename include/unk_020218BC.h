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

#define CELL_ACTOR_FLIP_NONE  0
#define CELL_ACTOR_FLIP_H     1
#define CELL_ACTOR_FLIP_V     2

enum AffineOverwriteMode {
    AFFINE_OVERWRITE_MODE_NONE = 0,
    AFFINE_OVERWRITE_MODE_NORMAL,
    AFFINE_OVERWRITE_MODE_DOUBLE, // Extends the cell actor's drawable area by 2x, use when the cell actor is scaled up
};

CellActorCollection *CellActorCollection_New(const CellActorCollectionParams *params);
BOOL CellActorCollection_Delete(CellActorCollection *collection);
BOOL CellActorCollection_SetActive(CellActorCollection *collection, u8 active);
BOOL CellActorCollection_DeleteAll(CellActorCollection *collection);
void CellActorCollection_Update(const CellActorCollection *collection);
void CellActor_Reset(CellActor *actor);
CellActor *CellActorCollection_AddEx(const CellActorInitParamsEx *params);
CellActor *CellActorCollection_Add(const CellActorInitParams *params);
void CellActor_Delete(CellActor *gfxElem);
void CellActor_SetPosition(CellActor *actor, const VecFx32 *position);
void CellActor_SetAffineTranslation(CellActor *actor, const VecFx32 *translation);
void CellActor_SetAffineScale(CellActor *actor, const VecFx32 *scale);
void CellActor_SetAffineScaleEx(CellActor *actor, const VecFx32 *scale, enum AffineOverwriteMode mode);
void CellActor_SetAffineZRotation(CellActor *actor, u16 angle);
void CellActor_SetAffineZRotationEx(CellActor *actor, u16 angle, enum AffineOverwriteMode mode);
void CellActor_SetDrawFlag(CellActor *actor, BOOL draw);
void CellActor_SetAnimateFlag(CellActor *actor, BOOL animate);
void CellActor_SetAnimSpeed(CellActor *actor, fx32 speed);
void CellActor_SetAffineOverwriteMode(CellActor *actor, enum AffineOverwriteMode mode);
void CellActor_SetFlipMode(CellActor *actor, u32 mode);
const VecFx32 *CellActor_GetPosition(const CellActor *actor);
const VecFx32 *CellActor_GetAffineScale(const CellActor *actor);
u16 CellActor_GetAffineZRotation(const CellActor *actor);
BOOL CellActor_GetDrawFlag(const CellActor *actor);
BOOL CellActor_GetAnimateFlag(const CellActor *actor);
u32 CellActor_GetAnimCount(const CellActor *actor);
void CellActor_SetAnim(CellActor *actor, u32 animID);
void CellActor_SetAnimNoRestart(CellActor *actor, u32 animID);
void CellActor_RestartAnim(CellActor *actor);
u32 CellActor_GetActiveAnim(const CellActor *actor);
void CellActor_UpdateAnim(CellActor *actor, fx32 frames);
void SpriteActor_SetAnimFrame(CellActor *actor, u16 frame);
u16 CellActor_GetAnimFrame(const CellActor *actor);
void CellActor_SetExplicitPriority(CellActor *actor, u8 priority);
u8 CellActor_GetExplicitPriority(const CellActor *actor);
void CellActor_SetExplicitPalette(CellActor *actor, u32 palette);
void CellActor_SetExplicitPaletteWithOffset(CellActor *actor, u32 palette);
u32 CellActor_GetExplicitPalette(const CellActor *actor);
void CellActor_SetExplicitPaletteOffset(CellActor *actor, u32 paletteOffset);
void CellActor_SetExplicitPaletteOffsetAutoAdjust(CellActor *actor, u32 paletteOffset);
u32 CellActor_GetExplicitPaletteOffset(const CellActor *actor);
void CellActor_SetPriority(CellActor *actor, u32 priority);
u32 CellActor_GetPriority(const CellActor *actor);
void CellActor_SetImageProxy(CellActor *actor, const NNSG2dImageProxy *imageProxy);
NNSG2dImageProxy *SpriteActor_ImageProxy(CellActor *actor);
NNSG2dImagePaletteProxy *CellActor_GetPaletteProxy(CellActor *paletteProxy);
void CellActor_SetPixelated(CellActor *actor, BOOL pixelated);
NNS_G2D_VRAM_TYPE CellActor_GetVRamType(const CellActor *actor);
BOOL CellActor_IsAnimated(CellActor *actor);
void CellActor_SetExplicitOAMMode(CellActor *actor, GXOamMode mode);
void Utility_Clear2DMainOAM(enum HeapId heapID);
void Utility_Clear2DSubOAM(enum HeapId heapID);
u32 CellActor_GetUserAttrForAnimFrame(const CellActor *actor, u32 animID, u32 frame);
u32 CellActor_GetUserAttrForCurrentAnimFrame(const CellActor *actor);

#endif // POKEPLATINUM_UNK_020218BC_H
