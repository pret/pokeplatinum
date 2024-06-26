#ifndef POKEPLATINUM_UNK_020218BC_H
#define POKEPLATINUM_UNK_020218BC_H

#include "struct_defs/struct_020095C4.h"
#include "struct_decls/struct_020218BC_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "overlay083/struct_ov83_0223D9A8.h"
#include "overlay115/struct_ov115_02261520.h"

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

GraphicElementManager * GraphicElementManager_New(const GraphicElementManagerParams * param0);
BOOL GraphicElementManager_Delete(GraphicElementManager * param0);
BOOL GraphicElementManager_SetActive(GraphicElementManager * param0, u8 param1);
BOOL GraphicElementManager_DeleteAll(GraphicElementManager * param0);
void sub_020219F8(const GraphicElementManager * param0);
void GraphicElementData_Reset(GraphicElementData * param0);
GraphicElementData * GraphicElementManager_AddElementEx(const CellActorInitParamsEx * param0);
GraphicElementData * GraphicElementManager_AddElement(const CellActorInitParams * param0);
void GraphicElementData_Delete(GraphicElementData * param0);
void GraphicElementData_SetPosition(GraphicElementData * param0, const VecFx32 * param1);
void GraphicElementData_SetAffineTranslation(GraphicElementData * param0, const VecFx32 * param1);
void GraphicElementData_SetAffineScale(GraphicElementData * param0, const VecFx32 * param1);
void GraphicElementData_SetAffineScaleEx(GraphicElementData * param0, const VecFx32 * param1, enum AffineOverwriteMode param2);
void GraphicElementData_SetAffineZRotation(GraphicElementData * param0, u16 param1);
void GraphicElementData_SetAffineZRotationEx(GraphicElementData * param0, u16 param1, enum AffineOverwriteMode param2);
void GraphicElementData_SetDrawFlag(GraphicElementData * param0, BOOL param1);
void GraphicElementData_SetAnimateFlag(GraphicElementData * param0, BOOL param1);
void GraphicElementData_SetAnimSpeed(GraphicElementData * param0, fx32 param1);
void GraphicElementData_SetAffineOverwriteMode(GraphicElementData * param0, enum AffineOverwriteMode param1);
void GraphicElementData_SetFlipMode(GraphicElementData * param0, u32 param1);
const VecFx32 * GraphicElementData_GetPosition(const GraphicElementData * param0);
const VecFx32 * GraphicElementData_GetAffineScale(const GraphicElementData * param0);
u16 GraphicElementData_GetAffineZRotation(const GraphicElementData * param0);
BOOL GraphicElementData_GetDrawFlag(const GraphicElementData * param0);
BOOL GraphicElementData_GetAnimateFlag(const GraphicElementData * param0);
u32 GraphicElementData_GetAnimSequenceCount(const GraphicElementData * param0);
void SpriteActor_SetSpriteAnimActive(GraphicElementData * param0, u32 param1);
void sub_02021DCC(GraphicElementData * param0, u32 param1);
void sub_02021DE0(GraphicElementData * param0);
u32 sub_02021E24(const GraphicElementData * param0);
void GraphicElementData_UpdateAnim(GraphicElementData * param0, fx32 param1);
void SpriteActor_SetAnimFrame(GraphicElementData * param0, u16 param1);
u16 sub_02021E74(const GraphicElementData * param0);
void GraphicElementData_SetExplicitPriority(GraphicElementData * param0, u8 param1);
u8 GraphicElementData_GetExplicitPriority(const GraphicElementData * param0);
void GraphicElementData_SetExplicitPalette(GraphicElementData * param0, u32 param1);
void GraphicElementData_SetExplicitPaletteWithOffset(GraphicElementData * param0, u32 param1);
u32 GraphicElementData_GetExplicitPalette(const GraphicElementData * param0);
void GraphicElementData_SetExplicitPaletteOffset(GraphicElementData * param0, u32 param1);
void GraphicElementData_SetExplicitPaletteOffsetAutoAdjust(GraphicElementData * param0, u32 param1);
u32 GraphicElementData_GetExplicitPaletteOffset(const GraphicElementData * param0);
void GraphicElementData_SetPriority(GraphicElementData * param0, u32 param1);
u32 GraphicElementData_GetPriority(const GraphicElementData * param0);
void GraphicElementData_SetImageProxy(GraphicElementData * param0, const NNSG2dImageProxy * param1);
NNSG2dImageProxy * SpriteActor_ImageProxy(GraphicElementData * param0);
NNSG2dImagePaletteProxy * GraphicElementData_GetPaletteProxy(GraphicElementData * param0);
void GraphicElementData_SetPixelated(GraphicElementData * param0, BOOL param1);
NNS_G2D_VRAM_TYPE GraphicElementData_GetVRamType(const GraphicElementData * param0);
BOOL sub_02021FD0(GraphicElementData * param0);
void sub_02021FE0(GraphicElementData * param0, GXOamMode param1);
void sub_02022014(int param0);
void sub_0202204C(int param0);
u32 sub_0202207C(const GraphicElementData * param0, u32 param1, u32 param2);
u32 sub_020220F4(const GraphicElementData * param0);

#endif // POKEPLATINUM_UNK_020218BC_H
