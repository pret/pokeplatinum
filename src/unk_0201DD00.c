#include "unk_0201DD00.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0202144C.h"
#include "struct_defs/struct_02024184.h"

#include "ascii_util.h"
#include "heap.h"
#include "unk_0202414C.h"
#include "vram_transfer.h"

typedef struct UnkStruct_0201DDF4_t {
    const UnkStruct_02024184 *unk_00;
    const NNSG3dResTex *unk_04;
    NNSGfdTexKey unk_08;
    NNSGfdPlttKey unk_0C;
    u8 unk_10;
    u8 unk_11;
} UnkStruct_0201DDF4;

typedef struct UnkStruct_0201DD00_t {
    UnkStruct_0201DDF4 *unk_00;
    int unk_04;
} UnkStruct_0201DD00;

static void sub_0201DDF4(UnkStruct_0201DDF4 *param0, const u16 param1);
static void *sub_0201DE94(UnkStruct_0201DDF4 *param0, const UnkStruct_0202144C *param1);
static void *sub_0201DEA0(UnkStruct_0201DDF4 *param0, const UnkStruct_0202144C *param1);
static void sub_0201DDE4(UnkStruct_0201DDF4 *param0);
static void sub_0201DE3C(UnkStruct_0201DDF4 *param0, const UnkStruct_0202144C *param1);
static void sub_0201DE68(UnkStruct_0201DDF4 *param0, const UnkStruct_0202144C *param1);

UnkStruct_0201DD00 *sub_0201DD00(int param0, int heapID)
{
    UnkStruct_0201DD00 *v0;
    int v1;

    v0 = Heap_Alloc(heapID, sizeof(UnkStruct_0201DD00));

    v0->unk_00 = Heap_Alloc(heapID, sizeof(UnkStruct_0201DDF4) * param0);
    v0->unk_04 = param0;

    for (v1 = 0; v1 < v0->unk_04; v1++) {
        sub_0201DDE4(&v0->unk_00[v1]);
    }

    return v0;
}

void sub_0201DD3C(UnkStruct_0201DD00 *param0)
{
    sub_0201DDB4(param0);
    Heap_Free(param0->unk_00);
    Heap_Free(param0);
}

UnkStruct_0201DDF4 *sub_0201DD54(UnkStruct_0201DD00 *param0, const UnkStruct_02024184 *param1, const NNSG3dResTex *param2, NNSGfdTexKey param3, NNSGfdPlttKey param4, const fx32 param5)
{
    UnkStruct_0201DDF4 *v0;
    u32 v1;
    int v2;

    v0 = NULL;

    for (v2 = 0; v2 < param0->unk_04; v2++) {
        if (param0->unk_00[v2].unk_00 == NULL) {
            v0 = &param0->unk_00[v2];
            break;
        }
    }

    if (v0 == NULL) {
        return NULL;
    }

    v0->unk_00 = param1;
    v0->unk_04 = param2;
    v0->unk_08 = param3;
    v0->unk_0C = param4;
    v0->unk_10 = -1;
    v0->unk_11 = -1;

    sub_0201DDF4(v0, param5 >> FX32_SHIFT);

    return v0;
}

void sub_0201DDAC(UnkStruct_0201DDF4 *param0)
{
    sub_0201DDE4(param0);
}

void sub_0201DDB4(UnkStruct_0201DD00 *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        sub_0201DDE4(param0->unk_00 + v0);
    }
}

void sub_0201DDD8(UnkStruct_0201DDF4 *param0, const fx32 param1)
{
    u16 v0 = param1 >> FX32_SHIFT;

    sub_0201DDF4(param0, v0);
}

static void sub_0201DDE4(UnkStruct_0201DDF4 *param0)
{
    param0->unk_00 = NULL;
    param0->unk_04 = NULL;
    param0->unk_08 = 0;
    param0->unk_0C = 0;
    param0->unk_10 = 0;
    param0->unk_11 = 0;
}

static void sub_0201DDF4(UnkStruct_0201DDF4 *param0, const u16 param1)
{
    UnkStruct_0202144C v0;

    v0 = sub_0202414C(param0->unk_00, param1);

    if (param0->unk_10 != v0.unk_00) {
        sub_0201DE3C(param0, &v0);
    }

    if (param0->unk_11 != v0.unk_01) {
        sub_0201DE68(param0, &v0);
    }
}

static void sub_0201DE3C(UnkStruct_0201DDF4 *param0, const UnkStruct_0202144C *param1)
{
    void *v0 = sub_0201DE94(param0, param1);

    VramTransfer_Request(NNS_GFD_DST_3D_TEX_VRAM, NNS_GfdGetTexKeyAddr(param0->unk_08), v0, NNS_GfdGetTexKeySize(param0->unk_08));
    param0->unk_10 = param1->unk_00;
}

static void sub_0201DE68(UnkStruct_0201DDF4 *param0, const UnkStruct_0202144C *param1)
{
    void *v0 = sub_0201DEA0(param0, param1);
    VramTransfer_Request(NNS_GFD_DST_3D_TEX_PLTT, NNS_GfdGetPlttKeyAddr(param0->unk_0C), v0, NNS_GfdGetPlttKeySize(param0->unk_0C));

    param0->unk_11 = param1->unk_01;
}

static void *sub_0201DE94(UnkStruct_0201DDF4 *param0, const UnkStruct_0202144C *param1)
{
    return sub_0201DEAC((NNSG3dResTex *)param0->unk_04, param1->unk_00);
}

static void *sub_0201DEA0(UnkStruct_0201DDF4 *param0, const UnkStruct_0202144C *param1)
{
    return sub_0201DEFC((NNSG3dResTex *)param0->unk_04, param1->unk_01);
}

void *sub_0201DEAC(NNSG3dResTex *param0, const u8 param1)
{
    u32 v0;
    const NNSG3dResDictTexData *v1 = NNS_G3dGetTexDataByIdx(param0, param1);

    if (v1 == NULL) {
        return NULL;
    }

    v0 = (v1->texImageParam & NNS_G3D_TEXIMAGE_PARAM_TEX_ADDR_MASK) + param0->texInfo.vramKey;
    return (void *)((u8 *)param0 + param0->texInfo.ofsTex + (v0 << 3));
}

void *sub_0201DEFC(NNSG3dResTex *param0, const u8 param1)
{
    const NNSG3dResDictPlttData *v0 = NNS_G3dGetPlttDataByIdx(param0, param1);

    if (v0 == NULL) {
        return NULL;
    }

    return (void *)((u8 *)param0 + param0->plttInfo.ofsPlttData + (v0->offset << 3));
}

static void *sub_0201DF40(NNSG3dResTex *param0, const NNSG3dResDictTexData *param1)
{
    u32 v0 = (param1->texImageParam & NNS_G3D_TEXIMAGE_PARAM_TEX_ADDR_MASK) << 3;

    v0 += NNS_GfdGetTexKeyAddr(param0->texInfo.vramKey);
    return (void *)(v0);
}

void *sub_0201DF50(NNSG3dResTex *param0, const char *param1)
{
    NNSG3dResName v0;
    const NNSG3dResDictTexData *v1;

    Ascii_SetResourceName(&v0, param1);
    v1 = NNS_G3dGetTexDataByName(param0, &v0);

    if (v1 == NULL) {
        return NULL;
    }

    return sub_0201DF40(param0, v1);
}

static int sub_0201DF84(NNSG3dResTex *param0, const NNSG3dResDictTexData *param1)
{
    u32 v0;
    u32 v1;
    u32 v2, v3;
    u32 v4;

    v1 = (param1->texImageParam & NNS_G3D_TEXIMAGE_PARAM_TEXFMT_MASK) >> NNS_G3D_TEXIMAGE_PARAM_TEXFMT_SHIFT;

    switch (v1) {
    case GX_TEXFMT_PLTT4:
        v4 = 4;
        break;
    case GX_TEXFMT_PLTT16:
        v4 = 2;
        break;
    case GX_TEXFMT_PLTT256:
        v4 = 1;
        break;
    case GX_TEXFMT_A3I5:
        v4 = 1;
        break;
    case GX_TEXFMT_A5I3:
        v4 = 1;
        break;
    default:
        return 0;
    }

    v3 = (param1->texImageParam & NNS_G3D_TEXIMAGE_PARAM_S_SIZE_MASK) >> NNS_G3D_TEXIMAGE_PARAM_S_SIZE_SHIFT;
    v3 <<= 4;

    v2 = (param1->texImageParam & NNS_G3D_TEXIMAGE_PARAM_T_SIZE_MASK) >> NNS_G3D_TEXIMAGE_PARAM_T_SIZE_SHIFT;
    v2 <<= 4;

    v0 = (v3 * v2) / v4;

    return v0;
}

int sub_0201DFE4(NNSG3dResTex *param0, const char *param1)
{
    const NNSG3dResDictTexData *v0;
    NNSG3dResName v1;

    Ascii_SetResourceName(&v1, param1);
    v0 = NNS_G3dGetTexDataByName(param0, &v1);

    return sub_0201DF84(param0, v0);
}
