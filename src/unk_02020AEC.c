#include "unk_02020AEC.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0202144C.h"

#include "easy3d.h"
#include "heap.h"
#include "unk_0201DD00.h"
#include "unk_0202414C.h"

static BillboardList *FindFirstFreeBillboardList(void);
static void BillboardList_Reset(BillboardList *list);
static void BillboardList_Draw(BillboardList *param0);
static void sub_0202144C(Billboard *param0);
static void sub_0202149C(NNSG3dResMdl *param0, const NNSG3dResTex *param1, u8 param2);
static void sub_02021524(NNSG3dResMat *param0, const NNSG3dResDictTexToMatIdxData *param1, u32 param2);
static void sub_020215A0(NNSG3dResMdl *param0, const NNSG3dResTex *param1, u8 param2);
static void sub_0202162C(NNSG3dResMat *param0, const NNSG3dResDictPlttToMatIdxData *param1, u32 param2);
static void sub_020216A8(BillboardList *param0);
static Billboard *sub_020216E0(BillboardList *param0);
static BOOL sub_0202170C(BillboardList *param0, Billboard *param1);
static void sub_02021744(Billboard *param0, Billboard *param1);
static void sub_02021768(Billboard *param0);
static void sub_0202185C(Billboard *param0);
static void sub_0202187C(Billboard *param0);
static void *sub_0202189C(const BillboardResources *param0, int param1);
static const UnkStruct_020217F4 *sub_020218B4(const UnkStruct_020217F4 *param0, int param1);
static NNSG3dResMdlSet *sub_02021788(const BillboardResources *param0, NNSG3dResMdl **param1, NNSG3dResTex **param2);
static NNSG3dResTex *sub_020217D4(const BillboardResources *param0);
static void sub_020217E0(Billboard *param0, const BillboardResources *param1);
static void sub_02020E28(Billboard *param0, const BillboardResources *param1);
static void sub_02020E78(Billboard *param0, const BillboardResources *param1);
static fx32 sub_020217F4(const Billboard *param0, int param1);
static int sub_02021804(Billboard *param0, fx32 param1);
static int sub_02021824(const UnkStruct_020217F4 *param0, fx32 *param1, fx32 param2);
static void sub_02020EF8(const NNSG3dResTex *param0, NNSG3dTexKey *param1, NNSG3dTexKey *param2, NNSG3dPlttKey *param3);
static void sub_02020F90(NNSG3dResTex *param0, NNSG3dTexKey *param1, NNSG3dTexKey *param2, NNSG3dPlttKey *param3);
static void sub_02020FA4(NNSG3dResTex *param0, NNSG3dResMdlSet *param1, NNSG3dTexKey *param2, NNSG3dTexKey *param3, NNSG3dPlttKey *param4);
static void FreeVRAMKeys(NNSG3dTexKey *texKey, NNSG3dTexKey *tex4x4Key, NNSG3dPlttKey *plttKey);
static BOOL sub_02020FFC(const NNSG3dResTex *param0, const NNSG3dResTex *param1);
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
    list->unk_03 = 0;
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

        if (sBillboardLists[i].unk_03 == 1) {
            sBillboardLists[i].unk_03 = 2;
        }
    }
}

BillboardList *BillboardList_New(const BillboardListParams *param0)
{
    BillboardList *list = FindFirstFreeBillboardList();

    if (list == NULL) {
        GF_ASSERT(0);
        return NULL;
    }

    list->active = TRUE;
    list->draw = TRUE;
    list->billboards = Heap_Alloc(param0->heapID, sizeof(Billboard) * param0->maxElements);
    list->capacity = param0->maxElements;

    Billboard_Reset(&list->sentinelData);

    list->sentinelData.next = &list->sentinelData;
    list->sentinelData.prev = &list->sentinelData;
    list->freeBillboards = Heap_Alloc(param0->heapID, sizeof(Billboard *) * param0->maxElements);

    sub_020216A8(list);
    list->allocator = Heap_Alloc(param0->heapID, sizeof(NNSFndAllocator));

    HeapExp_FndInitAllocator(list->allocator, param0->heapID, 4);
    list->unk_D8 = sub_0201DD00(param0->maxElements, param0->heapID);

    return list;
}

BOOL BillboardList_Delete(BillboardList *list)
{
    if (list == NULL) {
        GF_ASSERT(0);
        return FALSE;
    }

    if (list->active != FALSE) {
        sub_02020D14(list);
        Heap_Free(list->billboards);
        Heap_Free(list->freeBillboards);
        Heap_Free(list->allocator);
        sub_0201DD3C(list->unk_D8);
        BillboardList_Reset(list);
    }

    return TRUE;
}

BOOL sub_02020D14(BillboardList *param0)
{
    Billboard *v0;
    Billboard *v1;

    if (param0 == NULL) {
        GF_ASSERT(param0);
        return FALSE;
    }

    if (param0->active != FALSE) {
        v0 = param0->sentinelData.next;

        while (v0 != &param0->sentinelData) {
            v1 = v0->next;
            sub_020211FC(v0);
            v0 = v1;
        }
    }

    return TRUE;
}

BOOL sub_02020D50(BillboardList *param0)
{
    GF_ASSERT(param0);

    if (param0->unk_03 == 0) {
        return FALSE;
    }

    return TRUE;
}

void sub_02020D68(BillboardList *param0)
{
    if (param0->unk_03 == 2) {
        param0->unk_03 = 0;
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
    VecFx32 v1;
    MtxFx33 v2;
    const MtxFx33 *v3;

    GF_ASSERT(list);
    MTX_Identity33(&v2);

    Billboard *billboard = list->sentinelData.next;

    while (billboard != &list->sentinelData) {
        if (billboard->draw == TRUE) {
            if (billboard->callback != NULL) {
                billboard->callback(billboard, billboard->callbackParam);
            }

            sub_0202185C(billboard);

            if (billboard->unk_B4 == 3) {
                sub_0202144C(billboard);
            } else {
                if (billboard->unk_B4 == 2) {
                    sub_02021414(billboard);
                }
            }

            v3 = billboard->rotMatrix;

            if (v3 == NULL) {
                v3 = &v2;
            }

            Easy3D_DrawRenderObj(&billboard->renderObj, &billboard->pos, v3, &billboard->scale);
            sub_0202187C(billboard);
        }

        billboard = billboard->next;
    }
}

static void sub_02020E28(Billboard *param0, const BillboardResources *param1)
{
    BillboardList *v0 = (BillboardList *)param0->list;

    sub_0202105C(v0, param0);
    sub_02021078(param0, param1);
    sub_020210F4(v0, param0, param1);

    if (param0->unk_B4 == 1) {
        sub_02021744(&v0->sentinelData, param0);
    }

    param0->unk_B4 = 2;
    param0->unk_2C = param1->unk_08;
    param0->unk_B6 = 0;
    param0->unk_B8 = 0;
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

static void sub_02020EF8(const NNSG3dResTex *param0, NNSG3dTexKey *param1, NNSG3dTexKey *param2, NNSG3dPlttKey *param3)
{
    u32 v0 = NNS_G3dTexGetRequiredSize(param0);
    u32 v1 = NNS_G3dTex4x4GetRequiredSize(param0);
    u32 v2 = NNS_G3dPlttGetRequiredSize(param0);

    if (v0 > 0) {
        *param1 = NNS_GfdAllocTexVram(v0, 0, 0);
        GF_ASSERT(*param1 != (NNS_GFD_ALLOC_ERROR_TEXKEY));
    } else {
        *param1 = 0;
    }

    if (v1 > 0) {
        *param2 = NNS_GfdAllocTexVram(v1, 1, 0);
        GF_ASSERT(*param2 != (NNS_GFD_ALLOC_ERROR_TEXKEY));
    } else {
        *param2 = 0;
    }

    if (v2 > 0) {
        *param3 = NNS_GfdAllocPlttVram(v2, param0->tex4x4Info.flag & NNS_G3D_RESPLTT_USEPLTT4, 0);
        GF_ASSERT(*param3 != (NNS_GFD_ALLOC_ERROR_PLTTKEY));
    } else {
        *param3 = 0;
    }
}

static void sub_02020F90(NNSG3dResTex *param0, NNSG3dTexKey *param1, NNSG3dTexKey *param2, NNSG3dPlttKey *param3)
{
    NNS_G3dTexReleaseTexKey(param0, param1, param2);
    *param3 = NNS_G3dPlttReleasePlttKey(param0);
}

static void sub_02020FA4(NNSG3dResTex *param0, NNSG3dResMdlSet *param1, NNSG3dTexKey *param2, NNSG3dTexKey *param3, NNSG3dPlttKey *param4)
{
    NNS_G3dTexSetTexKey(param0, *param2, *param3);
    NNS_G3dPlttSetPlttKey(param0, *param4);
    NNS_G3dBindMdlSet(param1, param0);
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

static BOOL sub_02020FFC(const NNSG3dResTex *param0, const NNSG3dResTex *param1)
{
    u32 v0, v1, v2;
    u32 v3, v4, v5;
    BOOL v6;

    if ((param0 == NULL) || (param1 == NULL)) {
        return 0;
    }

    v0 = NNS_G3dTexGetRequiredSize(param0);
    v1 = NNS_G3dTex4x4GetRequiredSize(param0);
    v2 = NNS_G3dPlttGetRequiredSize(param0);
    v3 = NNS_G3dTexGetRequiredSize(param1);
    v4 = NNS_G3dTex4x4GetRequiredSize(param1);
    v5 = NNS_G3dPlttGetRequiredSize(param1);

    if ((v0 != v3) || (v1 != v4) || (v2 != v5)) {
        v6 = 0;
    } else {
        v6 = 1;
    }

    return v6;
}

static void sub_0202105C(BillboardList *unused, Billboard *param1)
{
    if (param1->unk_B0) {
        sub_0201DDAC(param1->unk_B0);
        param1->unk_B0 = NULL;
    }
}

static void sub_02021078(Billboard *param0, const BillboardResources *param1)
{
    NNSG3dResTex *v0;
    int v1;

    v0 = param0->texture;
    param0->modelSet = sub_02021788(param1, &param0->model, &param0->texture);

    NNS_G3dRenderObjInit(&param0->renderObj, param0->model);

    if (param0->unk_B4 != 3) {
        v1 = sub_02020FFC(v0, param0->texture);
    } else {
        v1 = 0;
    }

    if (v1 == 0) {
        if (param0->unk_B4 == 2) {
            FreeVRAMKeys(&(param0->texKey), &(param0->tex4x4Key), &(param0->plttKey));
        }

        sub_02020EF8(param0->texture, &(param0->texKey), &(param0->tex4x4Key), &(param0->plttKey));
    }
}

static void sub_020210F4(const BillboardList *param0, Billboard *param1, const BillboardResources *param2)
{
    param1->unk_90 = sub_020217D4(param2);
    param1->unk_A0 = param2->unk_0C;
    param1->unk_B0 = sub_0201DD54(param0->unk_D8, &param1->unk_A0, param1->unk_90, param1->texKey, param1->plttKey, param1->unk_B8);
}

static void sub_02021148(Billboard *param0, const BillboardResources *param1)
{
    param0->modelSet = sub_02021788(param1, &param0->model, &param0->texture);
    NNS_G3dRenderObjInit(&param0->renderObj, param0->model);
    param0->unk_90 = sub_020217D4(param1);
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
    v0 = sub_020216E0(v1);

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

BOOL sub_020211FC(Billboard *param0)
{
    BillboardList *v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_B4 != 1);

    v0 = (BillboardList *)param0->list;

    if (param0->unk_B4 == 0) {
        return 0;
    }

    sub_02021768(param0);

    if (param0->unk_B4 == 2) {
        FreeVRAMKeys(&(param0->texKey), &(param0->tex4x4Key), &(param0->plttKey));
    }

    sub_0202105C(v0, param0);
    sub_0202170C(v0, param0);

    v0->unk_03 = 1;

    return 1;
}

void sub_0202125C(BillboardResources *param0, void *param1, const NNSG3dResTex *param2, const UnkStruct_020217F4 *param3, const UnkStruct_02024184 *param4, NNSGfdTexKey param5, NNSGfdTexKey param6, NNSGfdPlttKey param7)
{
    param0->model = param1;
    param0->texture = param2;
    param0->unk_08 = param3;
    param0->unk_0C = *param4;
    param0->texKey = param5;
    param0->tex4x4Key = param6;
    param0->plttKey = param7;
}

void sub_02021284(BillboardResources *param0, void *param1, const NNSG3dResTex *param2, const UnkStruct_020217F4 *param3, const UnkStruct_02024184 *param4)
{
    param0->model = param1;
    param0->texture = param2;
    param0->unk_08 = param3;
    param0->unk_0C = *param4;
    param0->texKey = (NNS_GFD_ALLOC_ERROR_TEXKEY);
    param0->tex4x4Key = (NNS_GFD_ALLOC_ERROR_TEXKEY);
    param0->plttKey = (NNS_GFD_ALLOC_ERROR_PLTTKEY);
}

void sub_020212A8(Billboard *param0, const VecFx32 *param1)
{
    GF_ASSERT(param0);
    param0->pos = *param1;
}

const VecFx32 *sub_020212C0(const Billboard *param0)
{
    GF_ASSERT(param0);
    return &param0->pos;
}

void sub_020212D0(Billboard *param0, const VecFx32 *param1)
{
    GF_ASSERT(param0);
    param0->scale = *param1;
}

const VecFx32 *sub_020212EC(const Billboard *param0)
{
    GF_ASSERT(param0);
    return &param0->scale;
}

void sub_020212FC(Billboard *param0, const MtxFx33 *param1)
{
    GF_ASSERT(param0);
    param0->rotMatrix = param1;
}

const MtxFx33 *sub_02021310(const Billboard *param0)
{
    GF_ASSERT(param0);
    return param0->rotMatrix;
}

void sub_02021320(Billboard *param0, u8 param1)
{
    GF_ASSERT(param0);
    param0->draw = param1;
}

u8 sub_02021334(const Billboard *param0)
{
    GF_ASSERT(param0);
    return param0->draw;
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

NNSG3dResMdl *sub_020213F4(const Billboard *param0)
{
    GF_ASSERT(param0);
    return param0->model;
}

int sub_02021404(const Billboard *param0)
{
    GF_ASSERT(param0);
    return param0->unk_B4;
}

void sub_02021414(Billboard *param0)
{
    if (param0->unk_B4 == 2) {
        sub_0201DDD8(param0->unk_B0, param0->unk_B8);
    }
}

NNSG3dResMdl *sub_02021430(Billboard *param0)
{
    return param0->model;
}

NNSG3dResTex *sub_02021438(Billboard *param0)
{
    return param0->texture;
}

NNSG3dRenderObj *sub_02021440(Billboard *param0)
{
    return &param0->renderObj;
}

void sub_02021444(Billboard *param0, BillboardCallback param1, void *param2)
{
    param0->callbackParam = param2;
    param0->callback = param1;
}

static void sub_0202144C(Billboard *param0)
{
    UnkStruct_0202144C v0;

    v0 = sub_0202414C(&param0->unk_A0, param0->unk_B8 >> FX32_SHIFT);

    sub_0202149C(param0->model, param0->unk_90, v0.unk_00);
    sub_020215A0(param0->model, param0->unk_90, v0.unk_01);
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

static void sub_020216A8(BillboardList *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->capacity; v0++) {
        Billboard_Reset(&param0->billboards[v0]);
        param0->freeBillboards[v0] = param0->billboards + v0;
    }

    param0->freeBillboardHead = 0;
}

static Billboard *sub_020216E0(BillboardList *param0)
{
    Billboard *v0;

    if (param0->freeBillboardHead >= param0->capacity) {
        return NULL;
    }

    v0 = param0->freeBillboards[param0->freeBillboardHead];
    param0->freeBillboardHead++;

    return v0;
}

static BOOL sub_0202170C(BillboardList *param0, Billboard *param1)
{
    if (param0->freeBillboardHead <= 0) {
        return 0;
    }

    Billboard_Reset(param1);

    param0->freeBillboardHead--;
    param0->freeBillboards[param0->freeBillboardHead] = param1;

    return 1;
}

static void sub_02021744(Billboard *param0, Billboard *param1)
{
    param1->prev = param0->prev;
    param0->prev->next = param1;
    param1->next = param0;
    param0->prev = param1;
}

static void sub_02021768(Billboard *param0)
{
    param0->prev->next = param0->next;
    param0->next->prev = param0->prev;
}

static NNSG3dResMdlSet *sub_02021788(const BillboardResources *param0, NNSG3dResMdl **param1, NNSG3dResTex **param2)
{
    void *v0 = sub_0202189C(param0, 0);
    NNSG3dResMdlSet *v1 = NNS_G3dGetMdlSet(v0);

    *param1 = NNS_G3dGetMdlByIdx(v1, 0);

    if (param2) {
        *param2 = NNS_G3dGetTex(v0);
    }

    return v1;
}

static NNSG3dResTex *sub_020217D4(const BillboardResources *param0)
{
    NNSG3dResTex *v0 = (NNSG3dResTex *)sub_0202189C(param0, 1);
    return v0;
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

static void sub_0202185C(Billboard *param0)
{
    sub_02020FA4(param0->texture, param0->modelSet, &param0->texKey, &param0->tex4x4Key, &param0->plttKey);
}

static void sub_0202187C(Billboard *param0)
{
    NNSG3dTexKey v0;
    NNSG3dTexKey v1;
    NNSG3dPlttKey v2;

    NNS_G3dReleaseMdlSet(param0->modelSet);
    sub_02020F90(param0->texture, &v1, &v0, &v2);
}

static void *sub_0202189C(const BillboardResources *param0, int param1)
{
    void *v0;

    switch (param1) {
    case 0:
        v0 = param0->model;
        break;
    case 1:
        v0 = (void *)param0->texture;
        break;
    default:
        v0 = NULL;
        break;
    }

    return v0;
}

static const UnkStruct_020217F4 *sub_020218B4(const UnkStruct_020217F4 *param0, int param1)
{
    return param0 + param1;
}
