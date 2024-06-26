#ifndef POKEPLATINUM_CELL_ACTOR_H
#define POKEPLATINUM_CELL_ACTOR_H

#include <nitro/gx.h>
#include <nnsys.h>
#include <nitro/fx/fx.h>

#include "constants/heap.h"

#define CELL_ACTOR_FLIP_NONE        0
#define CELL_ACTOR_FLIP_H           1
#define CELL_ACTOR_FLIP_V           2

#define CELL_ACTOR_ANIM_DATA_SIZE   29
#define MAX_SIMULTANEOUS_SPRITES    128

enum CellAnimType {
    CELL_ANIM_TYPE_NONE = 0,
    CELL_ANIM_TYPE_CELL,
    CELL_ANIM_TYPE_MULTI_CELL,
    CELL_ANIM_TYPE_VRAM_CELL,
};

enum AffineOverwriteMode {
    AFFINE_OVERWRITE_MODE_NONE = 0,
    AFFINE_OVERWRITE_MODE_NORMAL,
    AFFINE_OVERWRITE_MODE_DOUBLE, // Extends the cell actor's drawable area by 2x, use when the cell actor is scaled up
};

typedef struct CellActorCollection CellActorCollection;

typedef struct CellAnimationData {
    const NNSG2dCellDataBank *cellBank;
    const NNSG2dCellAnimBankData *animBank;
    NNSG2dCellAnimation anim;
} CellAnimationData;

typedef struct VRamCellAnimationData {
    NNSG2dCellDataBank *cellBank;
    const NNSG2dCellAnimBankData *animBank;
    NNSG2dCellAnimation anim;
    u32 transferHandle;
} VRamCellAnimationData;

typedef struct MultiCellAnimationData {
    const NNSG2dCellDataBank *individualCellBank;
    const NNSG2dCellAnimBankData *individualAnimBank;
    NNSG2dMultiCellAnimation anim;
    const NNSG2dMultiCellDataBank *cellBank;
    const NNSG2dMultiCellAnimBankData *animBank;
    NNSG2dNode *nodes;
    NNSG2dCellAnimation *cellAnims;
} MultiCellAnimationData;

typedef struct CellActor {
    VecFx32 position;
    VecFx32 affineTranslation;
    VecFx32 affineScale;
    u16 affineZRotation;
    u8 affineOverwriteMode;
    u8 flip;
    u8 overwriteFlags; // Specifies which of the 'explicit' fields are used. Overwrites data provided by the OAM.
    u8 explicitPalette; // An explicit palette index.
    u8 explicitPaletteOffset; // An explicit palette index offset added onto the index specified by the OAM.
    BOOL explicitMosaic;
    GXOamMode explicitOamMode;
    u8 draw;
    u8 animate;
    fx32 animSpeed;
    CellActorCollection *collection; // The collection this actor belongs to

    // This field is supposed to be a union between CellAnimationData, VRamCellAnimationData, and MultiCellAnimationData
    // but it's actually too small to hold the largest of these types. This should really be u32 animData[31].
    u32 animData[CELL_ACTOR_ANIM_DATA_SIZE];
    NNSG2dImageProxy imageProxy;
    NNSG2dImagePaletteProxy paletteProxy;
    u32 type;
    u16 activeAnimID;
    u8 explicitPriority;
    u16 priority;
    NNS_G2D_VRAM_TYPE vramType;
    struct CellActor *prev;
    struct CellActor *next;
} CellActor;

struct CellActorCollection {
    CellActor *actors;
    int maxActors;
    CellActor **actorStack; // Stack of currently unused actors
    int stackPointer;
    CellActor sentinelData;
    NNSG2dRendererInstance *renderer;
    void *rawAnimData;
    NNSG2dCellAnimBankData *defaultAnimBank;
    BOOL active;
};

typedef struct CellActorCollectionParams {
    int maxElements;
    NNSG2dRendererInstance *renderer;
    int heapID;
} CellActorCollectionParams;

typedef struct CellActorResourceData {
    const NNSG2dImageProxy *imageProxy;
    const NNSG2dCharacterData *charData;
    const NNSG2dImagePaletteProxy *paletteProxy;
    NNSG2dCellDataBank *cellBank;
    const NNSG2dCellAnimBankData *cellAnimBank;
    const NNSG2dMultiCellDataBank *multiCellBank;
    const NNSG2dMultiCellAnimBankData *multiCellAnimBank;
    BOOL isVRamTransfer;
    u8 priority;
    u8 padding_21[3];
} CellActorResourceData;

typedef struct CellActorInitParams {
    CellActorCollection * collection;
    const CellActorResourceData * resourceData;
    VecFx32 position;
    u32 priority;
    int vramType;
    int heapID;
} CellActorInitParams;

typedef struct CellActorInitParamsEx {
    CellActorCollection *collection;
    const CellActorResourceData *resourceData;
    VecFx32 position;
    VecFx32 affineScale;
    u16 affineZRotation;
    u32 priority;
    int vramType;
    int heapID;
} CellActorInitParamsEx;


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

#endif // POKEPLATINUM_CELL_ACTOR_H
