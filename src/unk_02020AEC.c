#include "unk_02020AEC.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0202144C.h"

#include "easy3d.h"
#include "heap.h"
#include "unk_0201DD00.h"
#include "unk_0202414C.h"

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
static void sub_0202144C(Billboard *param0);
static void sub_0202149C(NNSG3dResMdl *param0, const NNSG3dResTex *param1, u8 param2);
static void sub_02021524(NNSG3dResMat *param0, const NNSG3dResDictTexToMatIdxData *param1, u32 param2);
static void sub_020215A0(NNSG3dResMdl *param0, const NNSG3dResTex *param1, u8 param2);
static void sub_0202162C(NNSG3dResMat *param0, const NNSG3dResDictPlttToMatIdxData *param1, u32 param2);
static void BillboardList_InitBillboards(BillboardList *list);
static Billboard *BillboardList_AllocBillboard(BillboardList *list);
static BOOL BillboardList_FreeBillboard(BillboardList *list, Billboard *billboard);
static void sub_02021744(Billboard *param0, Billboard *param1);
static void BillboardList_Remove(Billboard *billboard);
static void Billboard_SetKeysAndBindModelSet(Billboard *billboard);
static void ReleaseVRAMKeysAndModelSet(Billboard *billboard);
static void *BillboardResources_GetValue(const BillboardResources *resources, int value);
static const UnkStruct_020217F4 *sub_020218B4(const UnkStruct_020217F4 *param0, int param1);
static NNSG3dResMdlSet *RetrieveBillboardResources(const BillboardResources *resources, NNSG3dResMdl **outModel, NNSG3dResTex **outTexture);
static NNSG3dResTex *BillboardResources_GetTexture(const BillboardResources *resources);
static void sub_020217E0(Billboard *param0, const BillboardResources *param1);
static void sub_02020E28(Billboard *param0, const BillboardResources *param1);
static void sub_02020E78(Billboard *param0, const BillboardResources *param1);
static fx32 sub_020217F4(const Billboard *param0, int param1);
static int sub_02021804(Billboard *param0, fx32 param1);
static int sub_02021824(const UnkStruct_020217F4 *param0, fx32 *param1, fx32 param2);
static void AllocTextureVRAM(const NNSG3dResTex *texture, NNSG3dTexKey *texKey, NNSG3dTexKey *tex4x4Key, NNSG3dPlttKey *plttKey);
static void ReleaseVRAMKeys(NNSG3dResTex *texture, NNSG3dTexKey *texKey, NNSG3dTexKey *tex4x4Key, NNSG3dPlttKey *outPlttKey);
static void SetKeysAndBindModelSet(NNSG3dResTex *texture, NNSG3dResMdlSet *modelSet, NNSG3dTexKey *texKey, NNSG3dTexKey *tex4x4Key, NNSG3dPlttKey *plttKey);
static void FreeVRAMKeys(NNSG3dTexKey *texKey, NNSG3dTexKey *tex4x4Key, NNSG3dPlttKey *plttKey);
static BOOL AreTexturesSameSize(const NNSG3dResTex *texture1, const NNSG3dResTex *texture2);
static void sub_0202105C(BillboardList *param0, Billboard *param1);
static void sub_02021078(Billboard *param0, const BillboardResources *param1);
static void sub_020210F4(const BillboardList *param0, Billboard *param1, const BillboardResources *param2);
static void sub_02021148(Billboard *param0, const BillboardResources *param1);
static void sub_0202117C(Billboard *param0, const BillboardResources *param1);

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
    list->unk_D8 = NULL;
    list->redraw = BILLBOARD_REDRAW_NONE;
}

void Billboard_Reset(Billboard *billboard)
{
    billboard->list = NULL;
    billboard->unk_2C = NULL;
    billboard->modelSet = NULL;
    billboard->model = NULL;
    billboard->texture = NULL;
    billboard->unk_90 = NULL;

    memset(&billboard->unk_A0, 0, sizeof(UnkStruct_02024184));

    billboard->texKey = NNS_GFD_ALLOC_ERROR_TEXKEY;
    billboard->tex4x4Key = NNS_GFD_ALLOC_ERROR_TEXKEY;
    billboard->plttKey = NNS_GFD_ALLOC_ERROR_PLTTKEY;
    billboard->unk_B0 = NULL;

    VEC_Set(&billboard->pos, 0, 0, 0);
    VEC_Set(&billboard->scale, FX32_ONE, FX32_ONE, FX32_ONE);

    billboard->rotMatrix = NULL;
    billboard->unk_B6 = 0;
    billboard->unk_B4 = 0;
    billboard->next = NULL;
    billboard->prev = NULL;
    billboard->draw = FALSE;
    billboard->callback = NULL;
}

void BillboardLists_New(int count, enum HeapID heapID)
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
    list->unk_D8 = sub_0201DD00(params->maxElements, params->heapID);

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
        sub_0201DD3C(list->unk_D8);
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
            sub_020211FC(billboard);
            billboard = next;
        }
    }

    return TRUE;
}

// BillboardList_IsRedrawing
BOOL sub_02020D50(BillboardList *list)
{
    GF_ASSERT(list);

    if (list->redraw == BILLBOARD_REDRAW_NONE) {
        return FALSE;
    }

    return TRUE;
}

// BillboardList_ResetRedraw
void sub_02020D68(BillboardList *list)
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

            if (billboard->unk_B4 == 3) {
                sub_0202144C(billboard);
            } else {
                if (billboard->unk_B4 == 2) {
                    sub_02021414(billboard);
                }
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

static void sub_02020E28(Billboard *billboard, const BillboardResources *resources)
{
    BillboardList *list = (BillboardList *)billboard->list;

    sub_0202105C(list, billboard);
    sub_02021078(billboard, resources);
    sub_020210F4(list, billboard, resources);

    if (billboard->unk_B4 == 1) {
        sub_02021744(&list->sentinelData, billboard);
    }

    billboard->unk_B4 = 2;
    billboard->unk_2C = resources->unk_08;
    billboard->unk_B6 = 0;
    billboard->unk_B8 = 0;
}

static void sub_02020E78(Billboard *param0, const BillboardResources *param1)
{
    BillboardList *v0 = param0->list;

    sub_0202105C(v0, param0);

    if (param0->unk_B4 == 2) {
        FreeVRAMKeys(&param0->texKey, &param0->tex4x4Key, &param0->plttKey);
    }

    param0->texKey = param1->texKey;
    param0->tex4x4Key = param1->tex4x4Key;
    param0->plttKey = param1->plttKey;

    sub_02021148(param0, param1);
    sub_0202117C(param0, param1);

    if (param0->unk_B4 == 1) {
        sub_02021744(&v0->sentinelData, param0);
    }

    param0->unk_B4 = 3;
    param0->unk_2C = param1->unk_08;
    param0->unk_B6 = 0;
    param0->unk_B8 = 0;
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

static void sub_0202105C(BillboardList *unused, Billboard *billboard)
{
    if (billboard->unk_B0) {
        sub_0201DDAC(billboard->unk_B0);
        billboard->unk_B0 = NULL;
    }
}

// AllocBillboardResources
static void sub_02021078(Billboard *billboard, const BillboardResources *resources)
{
    BOOL sameTexSize;
    NNSG3dResTex *originalTexture = billboard->texture;

    billboard->modelSet = RetrieveBillboardResources(resources, &billboard->model, &billboard->texture);

    NNS_G3dRenderObjInit(&billboard->renderObj, billboard->model);

    if (billboard->unk_B4 != 3) {
        sameTexSize = AreTexturesSameSize(originalTexture, billboard->texture);
    } else {
        sameTexSize = FALSE;
    }

    if (sameTexSize == FALSE) {
        if (billboard->unk_B4 == 2) {
            FreeVRAMKeys(&billboard->texKey, &billboard->tex4x4Key, &billboard->plttKey);
        }

        AllocTextureVRAM(billboard->texture, &billboard->texKey, &billboard->tex4x4Key, &billboard->plttKey);
    }
}

static void sub_020210F4(const BillboardList *list, Billboard *billboard, const BillboardResources *resources)
{
    billboard->unk_90 = BillboardResources_GetTexture(resources);
    billboard->unk_A0 = resources->unk_0C;
    billboard->unk_B0 = sub_0201DD54(list->unk_D8, &billboard->unk_A0, billboard->unk_90, billboard->texKey, billboard->plttKey, billboard->unk_B8);
}

static void sub_02021148(Billboard *billboard, const BillboardResources *resources)
{
    billboard->modelSet = RetrieveBillboardResources(resources, &billboard->model, &billboard->texture);
    NNS_G3dRenderObjInit(&billboard->renderObj, billboard->model);
    billboard->unk_90 = BillboardResources_GetTexture(resources);
}

static void sub_0202117C(Billboard *param0, const BillboardResources *param1)
{
    param0->unk_A0 = param1->unk_0C;
    param0->unk_B0 = NULL;
}

Billboard *sub_0202119C(const BillboardListTemplate *param0)
{
    Billboard *v0;
    BillboardList *v1;

    if (param0->list == NULL) {
        return NULL;
    }

    v1 = param0->list;
    v0 = BillboardList_AllocBillboard(v1);

    if (v0 == NULL) {
        return NULL;
    }

    v0->list = v1;
    v0->pos = param0->pos;
    v0->scale = param0->scale;
    v0->unk_B6 = 0;
    v0->draw = TRUE;
    v0->unk_B4 = 1;

    sub_020217E0(v0, param0->resources);

    return v0;
}

// Billboard_Delete
BOOL sub_020211FC(Billboard *billboard)
{
    GF_ASSERT(billboard);
    GF_ASSERT(billboard->unk_B4 != 1);

    BillboardList *list = (BillboardList *)billboard->list;

    if (billboard->unk_B4 == 0) {
        return FALSE;
    }

    BillboardList_Remove(billboard);

    if (billboard->unk_B4 == 2) {
        FreeVRAMKeys(&billboard->texKey, &billboard->tex4x4Key, &billboard->plttKey);
    }

    sub_0202105C(list, billboard);
    BillboardList_FreeBillboard(list, billboard);

    list->redraw = BILLBOARD_REDRAW_NEEDED;

    return TRUE;
}

// BillboardResources_Set
void sub_0202125C(BillboardResources *resources, void *modelRes, const NNSG3dResTex *texture, const UnkStruct_020217F4 *param3, const UnkStruct_02024184 *param4, NNSGfdTexKey texKey, NNSGfdTexKey tex4x4Key, NNSGfdPlttKey plttKey)
{
    resources->modelRes = modelRes;
    resources->texture = texture;
    resources->unk_08 = param3;
    resources->unk_0C = *param4;
    resources->texKey = texKey;
    resources->tex4x4Key = tex4x4Key;
    resources->plttKey = plttKey;
}

// BillboardResources_SetWithoutKeys
void sub_02021284(BillboardResources *resources, void *modelRes, const NNSG3dResTex *texture, const UnkStruct_020217F4 *param3, const UnkStruct_02024184 *param4)
{
    resources->modelRes = modelRes;
    resources->texture = texture;
    resources->unk_08 = param3;
    resources->unk_0C = *param4;
    resources->texKey = NNS_GFD_ALLOC_ERROR_TEXKEY;
    resources->tex4x4Key = NNS_GFD_ALLOC_ERROR_TEXKEY;
    resources->plttKey = NNS_GFD_ALLOC_ERROR_PLTTKEY;
}

// Billboard_SetPos
void sub_020212A8(Billboard *billboard, const VecFx32 *pos)
{
    GF_ASSERT(billboard);
    billboard->pos = *pos;
}

// Billboard_GetPos
const VecFx32 *sub_020212C0(const Billboard *billboard)
{
    GF_ASSERT(billboard);
    return &billboard->pos;
}

// BIllboard_SetScale
void sub_020212D0(Billboard *billboard, const VecFx32 *scale)
{
    GF_ASSERT(billboard);
    billboard->scale = *scale;
}

// BIllboard_GetScale
const VecFx32 *sub_020212EC(const Billboard *billboard)
{
    GF_ASSERT(billboard);
    return &billboard->scale;
}

// Billboard_SetRotMatrix
void sub_020212FC(Billboard *billboard, const MtxFx33 *rotMatrix)
{
    GF_ASSERT(billboard);
    billboard->rotMatrix = rotMatrix;
}

// Billboard_GetRotMatrix
const MtxFx33 *sub_02021310(const Billboard *billboard)
{
    GF_ASSERT(billboard);
    return billboard->rotMatrix;
}

// Billboard_SetDrawFlag
void sub_02021320(Billboard *billboard, u8 draw)
{
    GF_ASSERT(billboard);
    billboard->draw = draw;
}

// Billboard_GetDrawFlag
u8 sub_02021334(const Billboard *billboard)
{
    GF_ASSERT(billboard);
    return billboard->draw;
}

void sub_02021344(Billboard *param0, int param1)
{
    GF_ASSERT(param0);
    param0->unk_B6 = param1;
}

int sub_02021358(const Billboard *param0)
{
    GF_ASSERT(param0);
    return param0->unk_B6;
}

int sub_02021368(Billboard *param0, fx32 param1)
{
    GF_ASSERT(param0);

    return sub_02021804(param0, param1);
}

void sub_02021380(Billboard *param0, fx32 param1)
{
    GF_ASSERT(param0);
    param0->unk_B8 = param1;
}

fx32 sub_02021394(const Billboard *param0)
{
    GF_ASSERT(param0);
    return param0->unk_B8;
}

void sub_020213A4(Billboard *param0, fx32 param1)
{
    GF_ASSERT(param0);

    param0->unk_B8 = sub_020217F4(param0, param0->unk_B6);
    param0->unk_B8 += param1;
}

fx32 sub_020213D4(const Billboard *param0)
{
    GF_ASSERT(param0);
    return param0->unk_B8 - sub_020217F4(param0, param0->unk_B6);
}

// Billboard_GetModel
NNSG3dResMdl *sub_020213F4(const Billboard *billboard)
{
    GF_ASSERT(billboard);
    return billboard->model;
}

int sub_02021404(const Billboard *param0)
{
    GF_ASSERT(param0);
    return param0->unk_B4;
}

void sub_02021414(Billboard *billboard)
{
    if (billboard->unk_B4 == 2) {
        sub_0201DDD8(billboard->unk_B0, billboard->unk_B8);
    }
}

// Billboard_GetModel2
NNSG3dResMdl *sub_02021430(Billboard *billboard)
{
    return billboard->model;
}

// Billboard_GetTexture
NNSG3dResTex *sub_02021438(Billboard *billboard)
{
    return billboard->texture;
}

// Billboard_GetRenderObj
NNSG3dRenderObj *sub_02021440(Billboard *billboard)
{
    return &billboard->renderObj;
}

// Billboard_SetCallback
void sub_02021444(Billboard *billboard, BillboardCallback callback, void *callbackParam)
{
    billboard->callbackParam = callbackParam;
    billboard->callback = callback;
}

static void sub_0202144C(Billboard *billboard)
{
    UnkStruct_0202144C v0 = sub_0202414C(&billboard->unk_A0, billboard->unk_B8 >> FX32_SHIFT);

    sub_0202149C(billboard->model, billboard->unk_90, v0.unk_00);
    sub_020215A0(billboard->model, billboard->unk_90, v0.unk_01);
}

static void sub_0202149C(NNSG3dResMdl *param0, const NNSG3dResTex *param1, u8 param2)
{
    NNSG3dResMat *v0;
    const NNSG3dResDict *v1;
    const NNSG3dResDictTexToMatIdxData *v2;
    const NNSG3dResDictTexData *v3;
    u32 v4;
    int v5;

    v0 = NNS_G3dGetMat(param0);
    v1 = (NNSG3dResDict *)((u8 *)v0 + v0->ofsDictTexToMatList);
    v3 = NNS_G3dGetTexDataByIdx(param1, param2);
    v4 = (v3->texImageParam & NNS_G3D_TEXIMAGE_PARAM_TEX_ADDR_MASK);

    for (v5 = 0; v5 < v1->numEntry; ++v5) {
        v2 = (NNSG3dResDictTexToMatIdxData *)NNS_G3dGetResDataByIdx(v1, v5);

        if (v2->flag & 1) {
            sub_02021524(v0, v2, v4);
        }
    }
}

static void sub_02021524(NNSG3dResMat *param0, const NNSG3dResDictTexToMatIdxData *param1, u32 param2)
{
    u8 *v0;
    int v1;
    NNSG3dResMatData *v2;

    v0 = (u8 *)param0 + param1->offset;

    for (v1 = 0; v1 < param1->numIdx; v1++) {
        v2 = NNS_G3dGetMatDataByIdx(param0, *(v0 + v1));
        GF_ASSERT(((v2->texImageParam & NNS_G3D_TEXIMAGE_PARAM_TEX_ADDR_MASK) + param2) <= NNS_G3D_TEXIMAGE_PARAM_TEX_ADDR_MASK);
        v2->texImageParam += param2;
    }
}

static void sub_020215A0(NNSG3dResMdl *param0, const NNSG3dResTex *param1, u8 param2)
{
    NNSG3dResMat *v0;
    const NNSG3dResDict *v1;
    const NNSG3dResDictPlttToMatIdxData *v2;
    const NNSG3dResDictPlttData *v3;
    u32 v4;
    u32 v5;

    v0 = NNS_G3dGetMat(param0);
    v1 = (NNSG3dResDict *)((u8 *)v0 + v0->ofsDictPlttToMatList);
    v3 = NNS_G3dGetPlttDataByIdx(param1, param2);
    v4 = v3->offset;

    if (!(v3->flag & 1)) {
        v4 >>= 1;
    }

    for (v5 = 0; v5 < v1->numEntry; ++v5) {
        v2 = (NNSG3dResDictPlttToMatIdxData *)NNS_G3dGetResDataByIdx(v1, v5);

        if (v2->flag & 1) {
            sub_0202162C(v0, v2, v4);
        }
    }
}

static void sub_0202162C(NNSG3dResMat *param0, const NNSG3dResDictPlttToMatIdxData *param1, u32 param2)
{
    u8 *v0;
    u32 v1;

    v0 = (u8 *)param0 + param1->offset;

    for (v1 = 0; v1 < param1->numIdx; v1++) {
        NNSG3dResMatData *v2 = NNS_G3dGetMatDataByIdx(param0, *(v0 + v1));

        GF_ASSERT(((v2->texPlttBase & 0x1fff) + param2) <= 0x1fff);
        v2->texPlttBase += param2;
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

static void sub_02021744(Billboard *param0, Billboard *param1)
{
    param1->prev = param0->prev;
    param0->prev->next = param1;
    param1->next = param0;
    param0->prev = param1;
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

static void sub_020217E0(Billboard *param0, const BillboardResources *param1)
{
    if (param1->texKey == (NNS_GFD_ALLOC_ERROR_TEXKEY)) {
        sub_02020E28(param0, param1);
    } else {
        sub_02020E78(param0, param1);
    }
}

static fx32 sub_020217F4(const Billboard *param0, int param1)
{
    const UnkStruct_020217F4 *v0 = sub_020218B4(param0->unk_2C, param1);
    return v0->unk_00 << FX32_SHIFT;
}

static int sub_02021804(Billboard *param0, fx32 param1)
{
    const UnkStruct_020217F4 *v0 = sub_020218B4(param0->unk_2C, param0->unk_B6);
    return sub_02021824(v0, &param0->unk_B8, param1);
}

static int sub_02021824(const UnkStruct_020217F4 *param0, fx32 *param1, fx32 param2)
{
    int v0 = 0;

    if (((param0->unk_00 * FX32_ONE) > *param1) || ((param0->unk_04 * FX32_ONE) < *param1)) {
        *param1 = (param0->unk_00 * FX32_ONE);
    } else {
        if ((param0->unk_04 * FX32_ONE) < *param1 + param2) {
            if (param0->unk_08 == 0) {
                *param1 = (param0->unk_00 * FX32_ONE);
            } else {
                v0 = 1;
                *param1 = (param0->unk_04 * FX32_ONE);
            }
        } else {
            *param1 += param2;
        }
    }

    return v0;
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

static const UnkStruct_020217F4 *sub_020218B4(const UnkStruct_020217F4 *param0, int param1)
{
    return param0 + param1;
}
