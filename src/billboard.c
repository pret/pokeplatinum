#include "billboard.h"

#include "billboard_vram_transfer.h"
#include "easy3d.h"
#include "heap.h"

enum BillboardAnimType {
    BILLBOARD_ANIM_TYPE_LOOP = 0,
    BILLBOARD_ANIM_TYPE_ONESHOT,
    BILLBOARD_ANIM_TYPE_TABLE_END, // used as the anim type for the dummy entry at the end of anim tables
};

enum BillboardAnimStatus {
    BILLBOARD_ANIM_STATUS_RUNNING = 0,
    BILLBOARD_ANIM_STATUS_FINISHED,
};

enum BillboardRedraw {
    BILLBOARD_REDRAW_NONE = 0,
    BILLBOARD_REDRAW_NEEDED,
    BILLBOARD_REDRAW_FINISHED,
};

enum BillboardResourceValue {
    BILLBOARD_RESOURCE_MODEL_RES = 0,
    BILLBOARD_RESOURCE_TEXTURE,
};

static BillboardList *FindFirstFreeBillboardList(void);
static void BillboardList_Reset(BillboardList *list);
static void BillboardList_Draw(BillboardList *list);
static void UpdateTexPlttAddressesForCurrentFrame(Billboard *billboard);
static void UpdateModelTextureAddresses(NNSG3dResMdl *model, const NNSG3dResTex *texture, u8 textureIdx);
static void UpdateMaterialTextureAddresses(NNSG3dResMat *material, const NNSG3dResDictTexToMatIdxData *texToMatDict, u32 textureAddress);
static void UpdateModelPlttAddresses(NNSG3dResMdl *model, const NNSG3dResTex *texture, u8 plttIdx);
static void UpdateMaterialPlttAddresses(NNSG3dResMat *material, const NNSG3dResDictPlttToMatIdxData *plttToMatDict, u32 plttAddress);
static void BillboardList_InitBillboards(BillboardList *list);
static Billboard *BillboardList_AllocBillboard(BillboardList *list);
static BOOL BillboardList_FreeBillboard(BillboardList *list, Billboard *billboard);
static void AppendBillboardToList(Billboard *sentinel, Billboard *newBillboard);
static void BillboardList_Remove(Billboard *billboard);
static void Billboard_SetKeysAndBindModelSet(Billboard *billboard);
static void ReleaseVRAMKeysAndModelSet(Billboard *billboard);
static void *BillboardResources_GetValue(const BillboardResources *resources, int value);
static const BillboardAnim *Billboard_GetAnimAt(const BillboardAnim *anims, int index);
static NNSG3dResMdlSet *RetrieveBillboardResources(const BillboardResources *resources, NNSG3dResMdl **outModel, NNSG3dResTex **outTexture);
static NNSG3dResTex *BillboardResources_GetTexture(const BillboardResources *resources);
static void SetAndAppendBillboard(Billboard *billboard, const BillboardResources *resources);
static void AllocResourcesAndAppendBillboard(Billboard *billboard, const BillboardResources *resources);
static void ResetResourcesAndAppendBillboard(Billboard *billboard, const BillboardResources *resources);
static fx32 GetAnimStartFrame(const Billboard *billboard, int animNum);
static int GetAndAdvanceAnim(Billboard *billboard, fx32 numFrames);
static int AdvanceAnim(const BillboardAnim *anim, fx32 *currFrame, fx32 numFrames);
static void AllocTextureVRAM(const NNSG3dResTex *texture, NNSG3dTexKey *texKey, NNSG3dTexKey *tex4x4Key, NNSG3dPlttKey *plttKey);
static void ReleaseVRAMKeys(NNSG3dResTex *texture, NNSG3dTexKey *texKey, NNSG3dTexKey *tex4x4Key, NNSG3dPlttKey *outPlttKey);
static void SetKeysAndBindModelSet(NNSG3dResTex *texture, NNSG3dResMdlSet *modelSet, NNSG3dTexKey *texKey, NNSG3dTexKey *tex4x4Key, NNSG3dPlttKey *plttKey);
static void FreeVRAMKeys(NNSG3dTexKey *texKey, NNSG3dTexKey *tex4x4Key, NNSG3dPlttKey *plttKey);
static BOOL AreTexturesSameSize(const NNSG3dResTex *texture1, const NNSG3dResTex *texture2);
static void Billboard_ResetVRAMTransfer(BillboardList *unused, Billboard *billboard);
static void Billboard_AllocTextureAndSetModel(Billboard *billboard, const BillboardResources *resources);
static void Billboard_InitAnimAndRequestTransfer(const BillboardList *list, Billboard *billboard, const BillboardResources *resources);
static void SetBillboardModelSetAndAnimTexture(Billboard *billboard, const BillboardResources *resources);
static void SetBillboardGfxSeqAndResetVRAMTransfer(Billboard *billboard, const BillboardResources *resources);

static BillboardList *sBillboardLists = NULL;
static int sBillboardListCount = 0;

static void BillboardList_Reset(BillboardList *list)
{
    list->active = FALSE;
    list->draw = FALSE;
    list->billboards = NULL;
    list->capacity = 0;
    list->freeBillboards = NULL;
    list->freeBillboardHead = 0;
    list->allocator = NULL;
    list->vramTransfer = NULL;
    list->redraw = BILLBOARD_REDRAW_NONE;
}

void Billboard_Reset(Billboard *billboard)
{
    billboard->list = NULL;
    billboard->anims = NULL;
    billboard->modelSet = NULL;
    billboard->model = NULL;
    billboard->texture = NULL;
    billboard->animTexture = NULL;

    memset(&billboard->gfxSequence, 0, sizeof(BillboardGfxSequence));

    billboard->texKey = NNS_GFD_ALLOC_ERROR_TEXKEY;
    billboard->tex4x4Key = NNS_GFD_ALLOC_ERROR_TEXKEY;
    billboard->plttKey = NNS_GFD_ALLOC_ERROR_PLTTKEY;
    billboard->vramTransfer = NULL;

    VEC_Set(&billboard->pos, 0, 0, 0);
    VEC_Set(&billboard->scale, FX32_ONE, FX32_ONE, FX32_ONE);

    billboard->rotMatrix = NULL;
    billboard->animNum = 0;
    billboard->state = BILLBOARD_STATE_INACTIVE;
    billboard->next = NULL;
    billboard->prev = NULL;
    billboard->draw = FALSE;
    billboard->callback = NULL;
}

void BillboardLists_Create(int count, enum HeapID heapID)
{
    GF_ASSERT(sBillboardLists == NULL);

    sBillboardLists = Heap_Alloc(heapID, sizeof(BillboardList) * count);
    sBillboardListCount = count;

    for (int i = 0; i < count; i++) {
        BillboardList_Reset(&sBillboardLists[i]);
    }
}

void BillboardLists_Delete(void)
{
    for (int i = 0; i < sBillboardListCount; i++) {
        BillboardList_Delete(sBillboardLists + i);
    }

    Heap_Free(sBillboardLists);

    sBillboardLists = NULL;
    sBillboardListCount = 0;
}

void BillboardLists_Draw(void)
{
    for (int i = 0; i < sBillboardListCount; i++) {
        if (sBillboardLists[i].draw == TRUE) {
            BillboardList_Draw(&sBillboardLists[i]);
        }

        if (sBillboardLists[i].redraw == BILLBOARD_REDRAW_NEEDED) {
            sBillboardLists[i].redraw = BILLBOARD_REDRAW_FINISHED;
        }
    }
}

BillboardList *BillboardList_New(const BillboardListParams *params)
{
    BillboardList *list = FindFirstFreeBillboardList();

    if (list == NULL) {
        GF_ASSERT(0);
        return NULL;
    }

    list->active = TRUE;
    list->draw = TRUE;
    list->billboards = Heap_Alloc(params->heapID, sizeof(Billboard) * params->maxElements);
    list->capacity = params->maxElements;

    Billboard_Reset(&list->sentinelData);

    list->sentinelData.next = &list->sentinelData;
    list->sentinelData.prev = &list->sentinelData;
    list->freeBillboards = Heap_Alloc(params->heapID, sizeof(Billboard *) * params->maxElements);

    BillboardList_InitBillboards(list);
    list->allocator = Heap_Alloc(params->heapID, sizeof(NNSFndAllocator));

    HeapExp_FndInitAllocator(list->allocator, params->heapID, 4);
    list->vramTransfer = BillboardListVRAMTransfer_New(params->maxElements, params->heapID);

    return list;
}

BOOL BillboardList_Delete(BillboardList *list)
{
    if (list == NULL) {
        GF_ASSERT(0);
        return FALSE;
    }

    if (list->active) {
        BillboardList_DeleteAll(list);
        Heap_Free(list->billboards);
        Heap_Free(list->freeBillboards);
        Heap_Free(list->allocator);
        BillboardListVRAMTransfer_Free(list->vramTransfer);
        BillboardList_Reset(list);
    }

    return TRUE;
}

BOOL BillboardList_DeleteAll(BillboardList *list)
{
    Billboard *billboard, *next;

    if (list == NULL) {
        GF_ASSERT(list);
        return FALSE;
    }

    if (list->active) {
        billboard = list->sentinelData.next;

        while (billboard != &list->sentinelData) {
            next = billboard->next;
            Billboard_Delete(billboard);
            billboard = next;
        }
    }

    return TRUE;
}

BOOL BillboardList_IsRedrawing(BillboardList *list)
{
    GF_ASSERT(list);

    if (list->redraw == BILLBOARD_REDRAW_NONE) {
        return FALSE;
    }

    return TRUE;
}

void BillboardList_ResetRedraw(BillboardList *list)
{
    if (list->redraw == BILLBOARD_REDRAW_FINISHED) {
        list->redraw = BILLBOARD_REDRAW_NONE;
    }
}

static BillboardList *FindFirstFreeBillboardList(void)
{
    for (int i = 0; i < sBillboardListCount; i++) {
        if (sBillboardLists[i].active == FALSE) {
            return &sBillboardLists[i];
        }
    }

    return NULL;
}

static void BillboardList_Draw(BillboardList *list)
{
    MtxFx33 identityMatrix;
    const MtxFx33 *rotMatrix;

    GF_ASSERT(list);
    MTX_Identity33(&identityMatrix);

    Billboard *billboard = list->sentinelData.next;

    while (billboard != &list->sentinelData) {
        if (billboard->draw == TRUE) {
            if (billboard->callback != NULL) {
                billboard->callback(billboard, billboard->callbackParam);
            }

            Billboard_SetKeysAndBindModelSet(billboard);

            if (billboard->state == BILLBOARD_STATE_ACTIVE) {
                UpdateTexPlttAddressesForCurrentFrame(billboard);
            } else if (billboard->state == BILLBOARD_STATE_VRAM_TRANSFER) {
                Billboard_TryRequestVRAMTransfer(billboard);
            }

            rotMatrix = billboard->rotMatrix;

            if (rotMatrix == NULL) {
                rotMatrix = &identityMatrix;
            }

            Easy3D_DrawRenderObj(&billboard->renderObj, &billboard->pos, rotMatrix, &billboard->scale);
            ReleaseVRAMKeysAndModelSet(billboard);
        }

        billboard = billboard->next;
    }
}

static void AllocResourcesAndAppendBillboard(Billboard *billboard, const BillboardResources *resources)
{
    BillboardList *list = billboard->list;

    Billboard_ResetVRAMTransfer(list, billboard);
    Billboard_AllocTextureAndSetModel(billboard, resources);
    Billboard_InitAnimAndRequestTransfer(list, billboard, resources);

    if (billboard->state == BILLBOARD_STATE_INITIALIZED) {
        AppendBillboardToList(&list->sentinelData, billboard);
    }

    billboard->state = BILLBOARD_STATE_VRAM_TRANSFER;
    billboard->anims = resources->anims;
    billboard->animNum = 0;
    billboard->frameNum = 0;
}

static void ResetResourcesAndAppendBillboard(Billboard *billboard, const BillboardResources *resources)
{
    BillboardList *list = billboard->list;

    Billboard_ResetVRAMTransfer(list, billboard);

    if (billboard->state == BILLBOARD_STATE_VRAM_TRANSFER) {
        FreeVRAMKeys(&billboard->texKey, &billboard->tex4x4Key, &billboard->plttKey);
    }

    billboard->texKey = resources->texKey;
    billboard->tex4x4Key = resources->tex4x4Key;
    billboard->plttKey = resources->plttKey;

    SetBillboardModelSetAndAnimTexture(billboard, resources);
    SetBillboardGfxSeqAndResetVRAMTransfer(billboard, resources);

    if (billboard->state == BILLBOARD_STATE_INITIALIZED) {
        AppendBillboardToList(&list->sentinelData, billboard);
    }

    billboard->state = BILLBOARD_STATE_ACTIVE;
    billboard->anims = resources->anims;
    billboard->animNum = 0;
    billboard->frameNum = 0;
}

static void AllocTextureVRAM(const NNSG3dResTex *texture, NNSG3dTexKey *texKey, NNSG3dTexKey *tex4x4Key, NNSG3dPlttKey *plttKey)
{
    u32 texSize = NNS_G3dTexGetRequiredSize(texture);
    u32 tex4x4Size = NNS_G3dTex4x4GetRequiredSize(texture);
    u32 plttSize = NNS_G3dPlttGetRequiredSize(texture);

    if (texSize > 0) {
        *texKey = NNS_GfdAllocTexVram(texSize, FALSE, 0);
        GF_ASSERT(*texKey != NNS_GFD_ALLOC_ERROR_TEXKEY);
    } else {
        *texKey = 0;
    }

    if (tex4x4Size > 0) {
        *tex4x4Key = NNS_GfdAllocTexVram(tex4x4Size, TRUE, 0);
        GF_ASSERT(*tex4x4Key != NNS_GFD_ALLOC_ERROR_TEXKEY);
    } else {
        *tex4x4Key = 0;
    }

    if (plttSize > 0) {
        *plttKey = NNS_GfdAllocPlttVram(plttSize, texture->tex4x4Info.flag & NNS_G3D_RESPLTT_USEPLTT4, 0);
        GF_ASSERT(*plttKey != NNS_GFD_ALLOC_ERROR_PLTTKEY);
    } else {
        *plttKey = 0;
    }
}

static void ReleaseVRAMKeys(NNSG3dResTex *texture, NNSG3dTexKey *texKey, NNSG3dTexKey *tex4x4Key, NNSG3dPlttKey *outPlttKey)
{
    NNS_G3dTexReleaseTexKey(texture, texKey, tex4x4Key);
    *outPlttKey = NNS_G3dPlttReleasePlttKey(texture);
}

static void SetKeysAndBindModelSet(NNSG3dResTex *texture, NNSG3dResMdlSet *modelSet, NNSG3dTexKey *texKey, NNSG3dTexKey *tex4x4Key, NNSG3dPlttKey *plttKey)
{
    NNS_G3dTexSetTexKey(texture, *texKey, *tex4x4Key);
    NNS_G3dPlttSetPlttKey(texture, *plttKey);
    NNS_G3dBindMdlSet(modelSet, texture);
}

static void FreeVRAMKeys(NNSG3dTexKey *texKey, NNSG3dTexKey *tex4x4Key, NNSG3dPlttKey *plttKey)
{
    if (*texKey != NNS_GFD_ALLOC_ERROR_TEXKEY) {
        NNS_GfdFreeTexVram(*texKey);
    }

    if (*tex4x4Key != NNS_GFD_ALLOC_ERROR_TEXKEY) {
        NNS_GfdFreeTexVram(*tex4x4Key);
    }

    if (*plttKey != NNS_GFD_ALLOC_ERROR_PLTTKEY) {
        NNS_GfdFreePlttVram(*plttKey);
    }
}

static BOOL AreTexturesSameSize(const NNSG3dResTex *texture1, const NNSG3dResTex *texture2)
{
    if (texture1 == NULL || texture2 == NULL) {
        return FALSE;
    }

    u32 texSize1 = NNS_G3dTexGetRequiredSize(texture1);
    u32 tex4x4Size1 = NNS_G3dTex4x4GetRequiredSize(texture1);
    u32 plttSize1 = NNS_G3dPlttGetRequiredSize(texture1);
    u32 texSize2 = NNS_G3dTexGetRequiredSize(texture2);
    u32 tex4x4Size2 = NNS_G3dTex4x4GetRequiredSize(texture2);
    u32 plttSize2 = NNS_G3dPlttGetRequiredSize(texture2);

    BOOL ret;
    if (texSize1 != texSize2 || tex4x4Size1 != tex4x4Size2 || plttSize1 != plttSize2) {
        ret = FALSE;
    } else {
        ret = TRUE;
    }

    return ret;
}

static void Billboard_ResetVRAMTransfer(BillboardList *unused, Billboard *billboard)
{
    if (billboard->vramTransfer) {
        BillboardVRAMTransfer_Reset(billboard->vramTransfer);
        billboard->vramTransfer = NULL;
    }
}

static void Billboard_AllocTextureAndSetModel(Billboard *billboard, const BillboardResources *resources)
{
    BOOL sameTexSize;
    NNSG3dResTex *originalTexture = billboard->texture;

    billboard->modelSet = RetrieveBillboardResources(resources, &billboard->model, &billboard->texture);

    NNS_G3dRenderObjInit(&billboard->renderObj, billboard->model);

    if (billboard->state != BILLBOARD_STATE_ACTIVE) {
        sameTexSize = AreTexturesSameSize(originalTexture, billboard->texture);
    } else {
        sameTexSize = FALSE;
    }

    if (sameTexSize == FALSE) {
        if (billboard->state == BILLBOARD_STATE_VRAM_TRANSFER) {
            FreeVRAMKeys(&billboard->texKey, &billboard->tex4x4Key, &billboard->plttKey);
        }

        AllocTextureVRAM(billboard->texture, &billboard->texKey, &billboard->tex4x4Key, &billboard->plttKey);
    }
}

static void Billboard_InitAnimAndRequestTransfer(const BillboardList *list, Billboard *billboard, const BillboardResources *resources)
{
    billboard->animTexture = BillboardResources_GetTexture(resources);
    billboard->gfxSequence = resources->gfxSequence;
    billboard->vramTransfer = BillboardListVRAMTransfer_NewBillboardTransfer(list->vramTransfer, &billboard->gfxSequence, billboard->animTexture, billboard->texKey, billboard->plttKey, billboard->frameNum);
}

static void SetBillboardModelSetAndAnimTexture(Billboard *billboard, const BillboardResources *resources)
{
    billboard->modelSet = RetrieveBillboardResources(resources, &billboard->model, &billboard->texture);
    NNS_G3dRenderObjInit(&billboard->renderObj, billboard->model);
    billboard->animTexture = BillboardResources_GetTexture(resources);
}

static void SetBillboardGfxSeqAndResetVRAMTransfer(Billboard *billboard, const BillboardResources *resources)
{
    billboard->gfxSequence = resources->gfxSequence;
    billboard->vramTransfer = NULL;
}

Billboard *BillboardList_Append(const BillboardTemplate *template)
{
    if (template->list == NULL) {
        return NULL;
    }

    BillboardList *list = template->list;
    Billboard *billboard = BillboardList_AllocBillboard(list);

    if (billboard == NULL) {
        return NULL;
    }

    billboard->list = list;
    billboard->pos = template->pos;
    billboard->scale = template->scale;
    billboard->animNum = 0;
    billboard->draw = TRUE;
    billboard->state = BILLBOARD_STATE_INITIALIZED;

    SetAndAppendBillboard(billboard, template->resources);

    return billboard;
}

BOOL Billboard_Delete(Billboard *billboard)
{
    GF_ASSERT(billboard);
    GF_ASSERT(billboard->state != BILLBOARD_STATE_INITIALIZED);

    BillboardList *list = billboard->list;

    if (billboard->state == BILLBOARD_STATE_INACTIVE) {
        return FALSE;
    }

    BillboardList_Remove(billboard);

    if (billboard->state == BILLBOARD_STATE_VRAM_TRANSFER) {
        FreeVRAMKeys(&billboard->texKey, &billboard->tex4x4Key, &billboard->plttKey);
    }

    Billboard_ResetVRAMTransfer(list, billboard);
    BillboardList_FreeBillboard(list, billboard);

    list->redraw = BILLBOARD_REDRAW_NEEDED;

    return TRUE;
}

void BillboardResources_Set(BillboardResources *resources, void *modelRes, const NNSG3dResTex *texture, const BillboardAnim *anims, const BillboardGfxSequence *gfxSequence, NNSGfdTexKey texKey, NNSGfdTexKey tex4x4Key, NNSGfdPlttKey plttKey)
{
    resources->modelRes = modelRes;
    resources->texture = texture;
    resources->anims = anims;
    resources->gfxSequence = *gfxSequence;
    resources->texKey = texKey;
    resources->tex4x4Key = tex4x4Key;
    resources->plttKey = plttKey;
}

void BillboardResources_SetWithoutKeys(BillboardResources *resources, void *modelRes, const NNSG3dResTex *texture, const BillboardAnim *anims, const BillboardGfxSequence *gfxSequence)
{
    resources->modelRes = modelRes;
    resources->texture = texture;
    resources->anims = anims;
    resources->gfxSequence = *gfxSequence;
    resources->texKey = NNS_GFD_ALLOC_ERROR_TEXKEY;
    resources->tex4x4Key = NNS_GFD_ALLOC_ERROR_TEXKEY;
    resources->plttKey = NNS_GFD_ALLOC_ERROR_PLTTKEY;
}

void Billboard_SetPos(Billboard *billboard, const VecFx32 *pos)
{
    GF_ASSERT(billboard);
    billboard->pos = *pos;
}

const VecFx32 *Billboard_GetPos(const Billboard *billboard)
{
    GF_ASSERT(billboard);
    return &billboard->pos;
}

void Billboard_SetScale(Billboard *billboard, const VecFx32 *scale)
{
    GF_ASSERT(billboard);
    billboard->scale = *scale;
}

const VecFx32 *Billboard_GetScale(const Billboard *billboard)
{
    GF_ASSERT(billboard);
    return &billboard->scale;
}

void Billboard_SetRotMatrix(Billboard *billboard, const MtxFx33 *rotMatrix)
{
    GF_ASSERT(billboard);
    billboard->rotMatrix = rotMatrix;
}

const MtxFx33 *Billboard_GetRotMatrix(const Billboard *billboard)
{
    GF_ASSERT(billboard);
    return billboard->rotMatrix;
}

void Billboard_SetDrawFlag(Billboard *billboard, u8 draw)
{
    GF_ASSERT(billboard);
    billboard->draw = draw;
}

u8 Billboard_GetDrawFlag(const Billboard *billboard)
{
    GF_ASSERT(billboard);
    return billboard->draw;
}

void Billboard_SetAnimNum(Billboard *billboard, int animNum)
{
    GF_ASSERT(billboard);
    billboard->animNum = animNum;
}

int Billboard_GetAnimNum(const Billboard *billboard)
{
    GF_ASSERT(billboard);
    return billboard->animNum;
}

int Billboard_AdvanceAnim(Billboard *billboard, fx32 numFrames)
{
    GF_ASSERT(billboard);

    return GetAndAdvanceAnim(billboard, numFrames);
}

void Billboard_SetFrameNum(Billboard *billboard, fx32 frameNum)
{
    GF_ASSERT(billboard);
    billboard->frameNum = frameNum;
}

fx32 Billboard_GetFrameNum(const Billboard *billboard)
{
    GF_ASSERT(billboard);
    return billboard->frameNum;
}

void Billboard_SetAnimFrameNum(Billboard *billboard, fx32 animFrameNum)
{
    GF_ASSERT(billboard);

    billboard->frameNum = GetAnimStartFrame(billboard, billboard->animNum);
    billboard->frameNum += animFrameNum;
}

fx32 Billboard_GetAnimFrameNum(const Billboard *billboard)
{
    GF_ASSERT(billboard);
    return billboard->frameNum - GetAnimStartFrame(billboard, billboard->animNum);
}

NNSG3dResMdl *Billboard_GetModel(const Billboard *billboard)
{
    GF_ASSERT(billboard);
    return billboard->model;
}

int Billboard_GetState(const Billboard *billboard)
{
    GF_ASSERT(billboard);
    return billboard->state;
}

void Billboard_TryRequestVRAMTransfer(Billboard *billboard)
{
    if (billboard->state == BILLBOARD_STATE_VRAM_TRANSFER) {
        BillboardVRAMTransfer_Request(billboard->vramTransfer, billboard->frameNum);
    }
}

NNSG3dResMdl *Billboard_GetModel2(Billboard *billboard)
{
    return billboard->model;
}

NNSG3dResTex *Billboard_GetTexture(Billboard *billboard)
{
    return billboard->texture;
}

NNSG3dRenderObj *Billboard_GetRenderObj(Billboard *billboard)
{
    return &billboard->renderObj;
}

void Billboard_SetCallback(Billboard *billboard, BillboardCallback callback, void *callbackParam)
{
    billboard->callbackParam = callbackParam;
    billboard->callback = callback;
}

static void UpdateTexPlttAddressesForCurrentFrame(Billboard *billboard)
{
    BillboardTexPlttIndex indexes = BillboardGfxSequence_GetTexPlttIndexAt(&billboard->gfxSequence, billboard->frameNum >> FX32_SHIFT);

    UpdateModelTextureAddresses(billboard->model, billboard->animTexture, indexes.textureIdx);
    UpdateModelPlttAddresses(billboard->model, billboard->animTexture, indexes.plttIdx);
}

static void UpdateModelTextureAddresses(NNSG3dResMdl *model, const NNSG3dResTex *texture, u8 textureIdx)
{
    NNSG3dResMat *material = NNS_G3dGetMat(model);
    const NNSG3dResDict *textureDict = (NNSG3dResDict *)((u8 *)material + material->ofsDictTexToMatList);
    const NNSG3dResDictTexData *textureData = NNS_G3dGetTexDataByIdx(texture, textureIdx);
    u32 textureAddress = textureData->texImageParam & NNS_G3D_TEXIMAGE_PARAM_TEX_ADDR_MASK;

    for (int i = 0; i < textureDict->numEntry; ++i) {
        const NNSG3dResDictTexToMatIdxData *texToMatDict = (NNSG3dResDictTexToMatIdxData *)NNS_G3dGetResDataByIdx(textureDict, i);

        if (texToMatDict->flag & 1) {
            UpdateMaterialTextureAddresses(material, texToMatDict, textureAddress);
        }
    }
}

static void UpdateMaterialTextureAddresses(NNSG3dResMat *material, const NNSG3dResDictTexToMatIdxData *texToMatDict, u32 textureAddress)
{
    u8 *texMaterials = (u8 *)material + texToMatDict->offset;

    for (int i = 0; i < texToMatDict->numIdx; i++) {
        NNSG3dResMatData *materialData = NNS_G3dGetMatDataByIdx(material, *(texMaterials + i));
        GF_ASSERT((materialData->texImageParam & NNS_G3D_TEXIMAGE_PARAM_TEX_ADDR_MASK) + textureAddress <= NNS_G3D_TEXIMAGE_PARAM_TEX_ADDR_MASK);
        materialData->texImageParam += textureAddress;
    }
}

static void UpdateModelPlttAddresses(NNSG3dResMdl *model, const NNSG3dResTex *texture, u8 plttIdx)
{
    NNSG3dResMat *material = NNS_G3dGetMat(model);
    const NNSG3dResDict *plttDict = (NNSG3dResDict *)((u8 *)material + material->ofsDictPlttToMatList);
    const NNSG3dResDictPlttData *plttData = NNS_G3dGetPlttDataByIdx(texture, plttIdx);
    u32 plttAddress = plttData->offset;

    if (!(plttData->flag & 1)) {
        plttAddress >>= 1;
    }

    for (u32 i = 0; i < plttDict->numEntry; ++i) {
        const NNSG3dResDictPlttToMatIdxData *plttToMatDict = (NNSG3dResDictPlttToMatIdxData *)NNS_G3dGetResDataByIdx(plttDict, i);

        if (plttToMatDict->flag & 1) {
            UpdateMaterialPlttAddresses(material, plttToMatDict, plttAddress);
        }
    }
}

static void UpdateMaterialPlttAddresses(NNSG3dResMat *material, const NNSG3dResDictPlttToMatIdxData *plttToMatDict, u32 plttAddress)
{
    u8 *plttMaterials = (u8 *)material + plttToMatDict->offset;

    for (u32 i = 0; i < plttToMatDict->numIdx; i++) {
        NNSG3dResMatData *materialData = NNS_G3dGetMatDataByIdx(material, *(plttMaterials + i));
        GF_ASSERT(((materialData->texPlttBase & REG_G3_TEXPLTT_BASE_PLTT_BASE_MASK) + plttAddress) <= REG_G3_TEXPLTT_BASE_PLTT_BASE_MASK);
        materialData->texPlttBase += plttAddress;
    }
}

static void BillboardList_InitBillboards(BillboardList *list)
{
    for (int i = 0; i < list->capacity; i++) {
        Billboard_Reset(&list->billboards[i]);
        list->freeBillboards[i] = list->billboards + i;
    }

    list->freeBillboardHead = 0;
}

static Billboard *BillboardList_AllocBillboard(BillboardList *list)
{
    if (list->freeBillboardHead >= list->capacity) {
        return NULL;
    }

    Billboard *billboard = list->freeBillboards[list->freeBillboardHead];
    list->freeBillboardHead++;

    return billboard;
}

static BOOL BillboardList_FreeBillboard(BillboardList *list, Billboard *billboard)
{
    if (list->freeBillboardHead <= 0) {
        return FALSE;
    }

    Billboard_Reset(billboard);

    list->freeBillboardHead--;
    list->freeBillboards[list->freeBillboardHead] = billboard;

    return TRUE;
}

static void AppendBillboardToList(Billboard *sentinel, Billboard *newBillboard)
{
    newBillboard->prev = sentinel->prev;
    sentinel->prev->next = newBillboard;
    newBillboard->next = sentinel;
    sentinel->prev = newBillboard;
}

static void BillboardList_Remove(Billboard *billboard)
{
    billboard->prev->next = billboard->next;
    billboard->next->prev = billboard->prev;
}

static NNSG3dResMdlSet *RetrieveBillboardResources(const BillboardResources *resources, NNSG3dResMdl **outModel, NNSG3dResTex **outTexture)
{
    void *modelRes = BillboardResources_GetValue(resources, BILLBOARD_RESOURCE_MODEL_RES);
    NNSG3dResMdlSet *outModelSet = NNS_G3dGetMdlSet(modelRes);

    *outModel = NNS_G3dGetMdlByIdx(outModelSet, 0);

    if (outTexture) {
        *outTexture = NNS_G3dGetTex(modelRes);
    }

    return outModelSet;
}

static NNSG3dResTex *BillboardResources_GetTexture(const BillboardResources *resources)
{
    NNSG3dResTex *texture = (NNSG3dResTex *)BillboardResources_GetValue(resources, BILLBOARD_RESOURCE_TEXTURE);
    return texture;
}

static void SetAndAppendBillboard(Billboard *billboard, const BillboardResources *resources)
{
    if (resources->texKey == NNS_GFD_ALLOC_ERROR_TEXKEY) {
        AllocResourcesAndAppendBillboard(billboard, resources);
    } else {
        ResetResourcesAndAppendBillboard(billboard, resources);
    }
}

static fx32 GetAnimStartFrame(const Billboard *billboard, int animNum)
{
    const BillboardAnim *anim = Billboard_GetAnimAt(billboard->anims, animNum);
    return anim->startFrame << FX32_SHIFT;
}

static int GetAndAdvanceAnim(Billboard *billboard, fx32 numFrames)
{
    const BillboardAnim *anim = Billboard_GetAnimAt(billboard->anims, billboard->animNum);
    return AdvanceAnim(anim, &billboard->frameNum, numFrames);
}

static int AdvanceAnim(const BillboardAnim *anim, fx32 *currentFrame, fx32 numFrames)
{
    int status = BILLBOARD_ANIM_STATUS_RUNNING;

    if (anim->startFrame * FX32_ONE > *currentFrame || anim->endFrame * FX32_ONE < *currentFrame) {
        *currentFrame = anim->startFrame * FX32_ONE;
    } else if (anim->endFrame * FX32_ONE < *currentFrame + numFrames) {
        if (anim->animType == BILLBOARD_ANIM_TYPE_LOOP) {
            *currentFrame = anim->startFrame * FX32_ONE;
        } else {
            status = BILLBOARD_ANIM_STATUS_FINISHED;
            *currentFrame = anim->endFrame * FX32_ONE;
        }
    } else {
        *currentFrame += numFrames;
    }

    return status;
}

static void Billboard_SetKeysAndBindModelSet(Billboard *billboard)
{
    SetKeysAndBindModelSet(billboard->texture, billboard->modelSet, &billboard->texKey, &billboard->tex4x4Key, &billboard->plttKey);
}

static void ReleaseVRAMKeysAndModelSet(Billboard *billboard)
{
    NNSG3dTexKey tex4x4Key, texKey;
    NNSG3dPlttKey dummyPlttKey;

    NNS_G3dReleaseMdlSet(billboard->modelSet);
    ReleaseVRAMKeys(billboard->texture, &texKey, &tex4x4Key, &dummyPlttKey);
}

static void *BillboardResources_GetValue(const BillboardResources *resources, int value)
{
    void *ret;

    switch (value) {
    case BILLBOARD_RESOURCE_MODEL_RES:
        ret = resources->modelRes;
        break;
    case BILLBOARD_RESOURCE_TEXTURE:
        ret = (void *)resources->texture;
        break;
    default:
        ret = NULL;
        break;
    }

    return ret;
}

static const BillboardAnim *Billboard_GetAnimAt(const BillboardAnim *anims, int index)
{
    return anims + index;
}
