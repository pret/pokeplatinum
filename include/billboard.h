#ifndef POKEPLATINUM_BILLBOARD_H
#define POKEPLATINUM_BILLBOARD_H

#include <nitro/fx/fx.h>
#include <nnsys.h>

#include "constants/heap.h"

#include "billboard_gfx_sequence.h"
#include "billboard_vram_transfer.h"

typedef struct Billboard Billboard;
typedef struct BillboardList BillboardList;
typedef void (*BillboardCallback)(Billboard *, void *);

typedef struct BillboardAnim {
    int startFrame;
    int endFrame;
    int animType;
} BillboardAnim;

typedef struct Billboard {
    VecFx32 pos;
    VecFx32 scale;
    const MtxFx33 *rotMatrix;
    void *callbackParam;
    BillboardCallback callback;
    u8 draw;
    BillboardList *list;
    const BillboardAnim *anims;
    NNSG3dRenderObj renderObj;
    NNSG3dResMdlSet *modelSet;
    NNSG3dResMdl *model;
    NNSG3dResTex *texture;
    const NNSG3dResTex *animTexture;
    NNSGfdTexKey texKey;
    NNSGfdTexKey tex4x4Key;
    NNSGfdPlttKey plttKey;
    BillboardGfxSequence gfxSequence;
    BillboardVRAMTransfer *vramTransfer;
    u8 state;
    u16 animNum;
    fx32 frameNum;
    Billboard *next;
    Billboard *prev;
} Billboard;

typedef struct BillboardList {
    u8 active;
    u8 draw;
    u8 unused;
    u8 redraw;
    Billboard *billboards;
    int capacity;
    Billboard sentinelData;
    Billboard **freeBillboards;
    int freeBillboardHead;
    NNSFndAllocator *allocator;
    BillboardListVRAMTransfer *vramTransfer;
} BillboardList;

typedef struct BillboardResources {
    void *modelRes;
    const NNSG3dResTex *texture;
    const BillboardAnim *anims;
    BillboardGfxSequence gfxSequence;
    NNSGfdTexKey texKey;
    NNSGfdTexKey tex4x4Key;
    NNSGfdPlttKey plttKey;
} BillboardResources;

typedef struct BillboardTemplate {
    BillboardList *list;
    const BillboardResources *resources;
    VecFx32 pos;
    VecFx32 scale;
} BillboardTemplate;

typedef struct BillboardListParams {
    int maxElements;
    enum HeapID heapID;
} BillboardListParams;

typedef struct UnkStruct_ov5_021ED110 {
    u32 unk_00;
    BillboardResources *unk_04;
} UnkStruct_ov5_021ED110;

enum BillboardState {
    BILLBOARD_STATE_INACTIVE = 0,
    BILLBOARD_STATE_INITIALIZED,
    BILLBOARD_STATE_VRAM_TRANSFER,
    BILLBOARD_STATE_ACTIVE,
};

void Billboard_Reset(Billboard *billboard);
void BillboardLists_Create(int count, enum HeapID heapID);
void BillboardLists_Delete(void);
void BillboardLists_Draw(void);
BillboardList *BillboardList_New(const BillboardListParams *params);
BOOL BillboardList_Delete(BillboardList *list);
BOOL BillboardList_DeleteAll(BillboardList *list);
BOOL BillboardList_IsRedrawing(BillboardList *list);
void BillboardList_ResetRedraw(BillboardList *list);
Billboard *BillboardList_Append(const BillboardTemplate *template);
BOOL Billboard_Delete(Billboard *billboard);
void BillboardResources_Set(BillboardResources *resources, void *modelRes, const NNSG3dResTex *texture, const BillboardAnim *param3, const BillboardGfxSequence *gfxSequence, NNSGfdTexKey texKey, NNSGfdTexKey tex4x4Key, NNSGfdPlttKey plttKey);
void BillboardResources_SetWithoutKeys(BillboardResources *resources, void *modelRes, const NNSG3dResTex *texture, const BillboardAnim *param3, const BillboardGfxSequence *gfxSequence);
void Billboard_SetPos(Billboard *billboard, const VecFx32 *pos);
const VecFx32 *Billboard_GetPos(const Billboard *billboard);
void Billboard_SetScale(Billboard *billboard, const VecFx32 *scale);
const VecFx32 *Billboard_GetScale(const Billboard *billboard);
void Billboard_SetRotMatrix(Billboard *billboard, const MtxFx33 *rotMatrix);
const MtxFx33 *Billboard_GetRotMatrix(const Billboard *billboard);
void Billboard_SetDrawFlag(Billboard *billboard, u8 draw);
u8 Billboard_GetDrawFlag(const Billboard *billboard);
void Billboard_SetAnimNum(Billboard *billboard, int animNum);
int Billboard_GetAnimNum(const Billboard *billboard);
int Billboard_AdvanceAnim(Billboard *billboard, fx32 numFrames);
void Billboard_SetFrameNum(Billboard *billboard, fx32 frameNum);
fx32 Billboard_GetFrameNum(const Billboard *billboard);
void Billboard_SetAnimFrameNum(Billboard *billboard, fx32 animFrameNum);
fx32 Billboard_GetAnimFrameNum(const Billboard *billboard);
NNSG3dResMdl *Billboard_GetModel(const Billboard *billboard);
int Billboard_GetState(const Billboard *billboard);
void Billboard_TryRequestVRAMTransfer(Billboard *billboard);
NNSG3dResMdl *Billboard_GetModel2(Billboard *billboard);
NNSG3dResTex *Billboard_GetTexture(Billboard *billboard);
NNSG3dRenderObj *Billboard_GetRenderObj(Billboard *billboard);
void Billboard_SetCallback(Billboard *billboard, BillboardCallback callback, void *callbackParam);

#endif // POKEPLATINUM_BILLBOARD_H
