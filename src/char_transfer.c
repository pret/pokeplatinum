#include "char_transfer.h"

#include <nitro/gx.h>
#include <nnsys.h>

#include "heap.h"
#include "unk_0201DBEC.h"

typedef struct CharTransferTask {
    NNSG2dCharacterData *data;
    NNS_G2D_VRAM_TYPE vramType;
    u8 transfer;
    u32 resourceID;
    NNSG2dImageProxy imageProxy;
    u32 baseAddrMain;
    u32 baseAddrSub;
    u8 state;
    BOOL updateMappingType;
    BOOL atEnd;
    BOOL haveRegion;
    u32 regionSizeMain;
    u32 regionSizeSub;
} CharTransferTask;

typedef struct CharTransferTaskManager {
    CharTransferTask *tasks;
    int capacity;
    int length;
    u32 offsetMain;
    u32 offsetSub;
    s32 vramSizeMain;
    s32 vramSizeSub;
    s32 freeSizeMain;
    s32 freeSizeSub;
    u32 numBlocksMain;
    u32 numBlocksSub;
    u32 blockSizeMain;
    u32 blockSizeSub;
    u8 *bufMain;
    u8 *bufSub;
} CharTransferTaskManager;

static void sub_0201EED4(CharTransferTask *param0);
static BOOL sub_0201EEF8(const CharTransferTaskTemplate *param0, CharTransferTask *param1);
static CharTransferTask *sub_0201EF1C(const NNSG2dImageProxy *param0);
static BOOL sub_0201EF68(CharTransferTask *param0);
static BOOL sub_0201EF98(CharTransferTask *param0);
static BOOL sub_0201EFCC(CharTransferTask *param0);
static void sub_0201F09C(CharTransferTask *param0, u32 param1, u32 param2);
static BOOL sub_0201F0B0(int param0, u32 *param1, u32 *param2, u32 param3, u32 *param4, u32 *param5);
static void sub_0201F15C(CharTransferTask *param0, u32 param1, u32 param2);
static void sub_0201F18C(int param0, u32 param1, u32 param2, u32 param3, u32 param4);
static void sub_0201F1F4(void *param0);
static void sub_0201F220(CharTransferTask *param0, int param1);
static void sub_0201F26C(void *param0);
static void sub_0201F298(CharTransferTask *param0, int param1);
static u32 sub_0201F50C(u8 *param0);
static CharTransferTask *sub_0201F2D0(void);
static void sub_0201F30C(void);
static void sub_0201F024(CharTransferTask *param0);
static void sub_0201F670(CharTransferTask *param0);
static CharTransferTask *sub_0201F03C(int param0);
static void sub_0201F47C(u32 param0, u32 param1, int param2);
static void sub_0201F4E4(u8 *param0);
static void sub_0201F524(u8 *param0);
static void sub_0201F53C(u32 param0, u32 param1, u8 *param2);
static u32 sub_0201F598(u32 param0, u8 *param1);
static void sub_0201F620(u32 param0, u32 param1, u8 *param2);
static int sub_0201F074(CharTransferTask *param0, int param1);
static BOOL sub_0201F76C(u32 param0, int param1, u32 *param2, u32 *param3);
static void sub_0201F7BC(u32 param0, int param1);
static void sub_0201F80C(int param0, u32 *param1, u8 *param2);
static int sub_0201F734(int param0, int param1, int param2);
static int sub_0201F754(int param0, int param1);
static int sub_0201F764(int param0, int param1);
static void sub_0201F818(u32 param0, u32 param1, u32 param2, int *param3, int *param4);

static CharTransferTaskManager *sTaskManager = NULL;

void sub_0201E86C(const CharTransferTemplate *param0)
{
    sub_0201E88C(param0, GX_GetOBJVRamModeChar(), GXS_GetOBJVRamModeChar());
}

void sub_0201E88C(const CharTransferTemplate *param0, GXOBJVRamModeChar param1, GXOBJVRamModeChar param2)
{
    int v0;
    int v1;
    int v2;

    if (sTaskManager == NULL) {
        sTaskManager = Heap_AllocFromHeap(param0->heapID, sizeof(CharTransferTaskManager));
        MI_CpuClear32(sTaskManager, sizeof(CharTransferTaskManager));

        sTaskManager->capacity = param0->maxTasks;
        sTaskManager->tasks = Heap_AllocFromHeap(param0->heapID, sizeof(CharTransferTask) * sTaskManager->capacity);

        for (v0 = 0; v0 < param0->maxTasks; v0++) {
            sub_0201EED4(sTaskManager->tasks + v0);
        }

        sTaskManager->blockSizeMain = sub_0201F6F4(param1);
        sTaskManager->blockSizeSub = sub_0201F6F4(param2);

        GX_SetOBJVRamModeChar(param1);
        GXS_SetOBJVRamModeChar(param2);

        v1 = sub_0201F754(param0->sizeMain, sTaskManager->blockSizeMain);
        v2 = sub_0201F754(param0->sizeSub, sTaskManager->blockSizeSub);

        sub_0201F47C(v1, v2, param0->heapID);
    }
}

void sub_0201E958(void)
{
    if (sTaskManager != NULL) {
        sub_0201F4E4(sTaskManager->bufMain);
        sub_0201F4E4(sTaskManager->bufSub);

        sub_0201EBA0();

        Heap_FreeToHeap(sTaskManager->tasks);
        Heap_FreeToHeap(sTaskManager);

        sTaskManager = NULL;
    }
}

void sub_0201E994(void)
{
    sTaskManager->offsetMain = 0;
    sTaskManager->offsetSub = 0;

    sub_0201F524(sTaskManager->bufMain);
    sub_0201F524(sTaskManager->bufSub);

    sub_0201F30C();
}

void sub_0201E9C0(u32 param0, u32 param1, u32 param2)
{
    int v0;
    int v1;

    if (param2 == NNS_G2D_VRAM_TYPE_2DMAIN) {
        sub_0201F818(sTaskManager->freeSizeMain, param0, param1, &v0, &v1);

        if (v1 > 0) {
            sub_0201F18C(NNS_G2D_VRAM_TYPE_2DMAIN, v0, 0, v1, 0);
        }
    } else {
        sub_0201F818(sTaskManager->freeSizeSub, param0, param1, &v0, &v1);

        if (v1 > 0) {
            sub_0201F18C(NNS_G2D_VRAM_TYPE_2DSUB, 0, v0, 0, v1);
        }
    }
}

BOOL sub_0201EA24(const CharTransferTaskTemplate *param0)
{
    CharTransferTask *v0;
    u32 *v1;
    u8 v2 = 0;
    u32 v3;

    if (sub_0201EAD8(param0->resourceID) == 1) {
        GF_ASSERT(FALSE);
    }

    v0 = sub_0201F2D0();

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
        return 0;
    }

    if (sub_0201EEF8(param0, v0) == 0) {
        return 0;
    }

    if (sub_0201EF68(v0) == 0) {
        sub_0201EB50(v0->resourceID);
        return 0;
    }

    sTaskManager->length++;

    return 1;
}

BOOL sub_0201EA7C(const CharTransferTaskTemplate *param0)
{
    CharTransferTask *v0;
    u32 *v1;
    u8 v2 = 0;
    u32 v3;

    if (sub_0201EAD8(param0->resourceID) == 1) {
        GF_ASSERT(FALSE);
    }

    v0 = sub_0201F2D0();

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
        return 0;
    }

    if (sub_0201EEF8(param0, v0) == 0) {
        return 0;
    }

    v0->updateMappingType = 1;

    if (sub_0201EF68(v0) == 0) {
        sub_0201EB50(v0->resourceID);
        return 0;
    }

    sTaskManager->length++;

    return 1;
}

BOOL sub_0201EAD8(int param0)
{
    int v0;

    for (v0 = 0; v0 < sTaskManager->capacity; v0++) {
        if (sTaskManager->tasks[v0].resourceID == param0) {
            return 1;
        }
    }

    return 0;
}

void sub_0201EB08(int param0, NNSG2dCharacterData *param1)
{
    CharTransferTask *v0;

    GF_ASSERT(param1);

    v0 = sub_0201F03C(param0);
    GF_ASSERT(v0);
    v0->data = param1;

    if (v0->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        sub_0201DC68(NNS_GFD_DST_2D_OBJ_CHAR_MAIN, v0->baseAddrMain, param1->pRawData, param1->szByte);
    }

    if (v0->vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        sub_0201DC68(NNS_GFD_DST_2D_OBJ_CHAR_SUB, v0->baseAddrSub, param1->pRawData, param1->szByte);
    }
}

void sub_0201EB50(int param0)
{
    CharTransferTask *v0;
    int v1 = 1;

    do {
        v0 = sub_0201F03C(param0);
        GF_ASSERT(v0);

        if (v0->state == 4) {
            sub_0201ED1C(&v0->imageProxy);
        } else {
            v1 = 0;
        }
    } while (v1);

    if (v0->state != 0) {
        sub_0201F024(v0);
        sTaskManager->length--;
    }
}

void sub_0201EBA0(void)
{
    int v0;

    for (v0 = 0; v0 < sTaskManager->capacity; v0++) {
        if (sTaskManager->tasks[v0].state != 0) {
            sub_0201F024(&sTaskManager->tasks[v0]);
            sTaskManager->length--;
        }
    }
}

NNSG2dImageProxy *sub_0201EBDC(int param0)
{
    CharTransferTask *v0;

    v0 = sub_0201F03C(param0);
    GF_ASSERT(v0);

    if (v0->state == 0) {
        return NULL;
    }

    return &v0->imageProxy;
}

NNSG2dImageProxy *sub_0201EC00(int param0, u32 param1)
{
    u32 v0, v1;
    CharTransferTask *v2;
    CharTransferTask *v3;
    u32 v4, v5;

    v2 = sub_0201F03C(param0);
    GF_ASSERT(v2);

    if (v2->state == 0) {
        return NULL;
    }

    sub_0201F0B0(v2->vramType, &v0, &v1, param1, &v4, &v5);

    if (v2->state == 3) {
        return NULL;
    } else {
        v2->state = 3;
        v3 = v2;
    }

    sub_0201F15C(v3, v0, v1);

    v3->haveRegion = 1;
    v3->regionSizeMain = v4;
    v3->regionSizeSub = v5;

    sub_0201F26C(v3);
    sub_0201F18C(v3->vramType, v0, v1, v4, v5);

    return &v3->imageProxy;
}

NNSG2dImageProxy *sub_0201EC84(const NNSG2dImageProxy *param0)
{
    CharTransferTask *v0;
    CharTransferTask *v1;
    u32 v2, v3;
    u32 v4, v5;
    u32 v6;

    v0 = sub_0201EF1C(param0);
    GF_ASSERT(v0);

    v1 = sub_0201F2D0();
    GF_ASSERT(v1);

    if (v0->state != 3) {
        return NULL;
    }

    *v1 = *v0;
    v1->state = 4;

    if (v1->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        v6 = v1->regionSizeMain;
    } else {
        v6 = v1->regionSizeSub;
    }

    sub_0201F0B0(v1->vramType, &v2, &v3, v6, &v4, &v5);
    sub_0201F15C(v1, v2, v3);

    v1->haveRegion = 1;
    v1->regionSizeMain = v4;
    v1->regionSizeSub = v5;

    sub_0201F26C((void *)v1);
    sub_0201F18C(v1->vramType, v2, v3, v4, v5);

    return &v1->imageProxy;
}

void sub_0201ED1C(const NNSG2dImageProxy *param0)
{
    int v0;

    for (v0 = 0; v0 < sTaskManager->capacity; v0++) {
        if ((sTaskManager->tasks[v0].state == 3) || (sTaskManager->tasks[v0].state == 4)) {
            if (&sTaskManager->tasks[v0].imageProxy == param0) {
                break;
            }
        }
    }

    if (v0 >= sTaskManager->capacity) {
        return;
    }

    sub_0201F670(sTaskManager->tasks + v0);

    if (sTaskManager->tasks[v0].state == 3) {
        sTaskManager->tasks[v0].state = 2;
    } else {
        sTaskManager->tasks[v0].state = 0;
        sub_0201EED4(&sTaskManager->tasks[v0]);
    }
}

BOOL sub_0201ED94(int param0, int param1, int param2, CharTransferAllocation *param3)
{
    u32 v0, v1;
    u32 v2, v3;
    BOOL v4;

    if (param1 == 0) {
        v4 = sub_0201F76C(param0, param2, &v0, &v1);

        if (v4) {
            sub_0201F7BC(param0, param2);

            param3->vramType = param2;
            param3->size = param0;

            if (param2 == NNS_G2D_VRAM_TYPE_2DMAIN) {
                param3->offset = v0;
            } else {
                param3->offset = v1;
            }

            param3->atEnd = 0;
        }
    } else {
        v4 = sub_0201F0B0(param2, &v0, &v1, param0, &v2, &v3);

        if (v4) {
            sub_0201F18C(param2, v0, v1, v2, v3);

            param3->vramType = param2;

            if (param2 == NNS_G2D_VRAM_TYPE_2DMAIN) {
                param3->size = v2;
                param3->offset = v0 + sTaskManager->freeSizeMain;
            } else {
                param3->size = v3;
                param3->offset = v1 + sTaskManager->freeSizeSub;
            }

            param3->atEnd = 1;
        }
    }

    return v4;
}

void sub_0201EE28(CharTransferAllocation *param0)
{
    int v0;
    int v1;

    if (param0->atEnd == 0) {
        return;
    }

    if (param0->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        v0 = sub_0201F754(param0->size, sTaskManager->blockSizeMain);
        v1 = sub_0201F754(param0->offset - sTaskManager->freeSizeMain, sTaskManager->blockSizeMain);

        sub_0201F620(v1, v0, sTaskManager->bufMain);
    }

    if (param0->vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        v0 = sub_0201F754(param0->size, sTaskManager->blockSizeSub);
        v1 = sub_0201F754(param0->offset - sTaskManager->freeSizeSub, sTaskManager->blockSizeSub);

        sub_0201F620(v1, v0, sTaskManager->bufSub);
    }
}

void *sub_0201EE9C(void)
{
    void *v0;

    GF_ASSERT(sTaskManager);

    v0 = sTaskManager;
    sTaskManager = NULL;

    return v0;
}

void sub_0201EEB8(void *param0)
{
    GF_ASSERT(sTaskManager == NULL);
    sTaskManager = param0;
}

static void sub_0201EED4(CharTransferTask *param0)
{
    param0->data = NULL;
    param0->vramType = 0;
    param0->transfer = 0;
    param0->resourceID = 0xffffffff;
    param0->baseAddrMain = 0;
    param0->baseAddrSub = 0;
    param0->state = 0;
    param0->updateMappingType = 0;

    NNS_G2dInitImageProxy(&param0->imageProxy);
}

static BOOL sub_0201EEF8(const CharTransferTaskTemplate *param0, CharTransferTask *param1)
{
    param1->data = param0->data;
    param1->resourceID = param0->resourceID;
    param1->vramType = param0->vramType;
    param1->transfer = param1->data->characterFmt >> 8;
    param1->atEnd = param0->atEnd;

    param1->haveRegion = 0;
    param1->regionSizeMain = 0;
    param1->regionSizeSub = 0;

    return 1;
}

static CharTransferTask *sub_0201EF1C(const NNSG2dImageProxy *param0)
{
    int v0;

    for (v0 = 0; v0 < sTaskManager->capacity; v0++) {
        if (sTaskManager->tasks[v0].state != 0) {
            if (&sTaskManager->tasks[v0].imageProxy == param0) {
                break;
            }
        }
    }

    if (v0 >= sTaskManager->capacity) {
        return NULL;
    }

    return sTaskManager->tasks + v0;
}

static BOOL sub_0201EF68(CharTransferTask *param0)
{
    BOOL v0 = 1;

    if (param0->transfer) {
        param0->state = 2;
    } else {
        param0->state = 1;

        if (param0->atEnd == 0) {
            v0 = sub_0201EF98(param0);
        } else {
            v0 = sub_0201EFCC(param0);
        }
    }

    return v0;
}

static BOOL sub_0201EF98(CharTransferTask *param0)
{
    BOOL v0 = 1;
    u32 v1, v2;

    v0 = sub_0201F76C(param0->data->szByte, param0->vramType, &v1, &v2);

    if (v0) {
        sub_0201F09C(param0, v1, v2);
        sub_0201F7BC(param0->data->szByte, param0->vramType);
    }

    return v0;
}

static BOOL sub_0201EFCC(CharTransferTask *param0)
{
    u32 v0, v1;
    u32 v2, v3;
    BOOL v4;

    v4 = sub_0201F0B0(param0->vramType, &v0, &v1, param0->data->szByte, &v2, &v3);

    if (v4 == 0) {
        return 0;
    }

    sub_0201F15C(param0, v0, v1);

    param0->haveRegion = 1;
    param0->regionSizeMain = v2;
    param0->regionSizeSub = v3;

    sub_0201F1F4(param0);
    sub_0201F18C(param0->vramType, v0, v1, v2, v3);

    return 1;
}

static void sub_0201F024(CharTransferTask *param0)
{
    if (param0->haveRegion) {
        sub_0201F670(param0);
    }

    sub_0201EED4(param0);
}

static CharTransferTask *sub_0201F03C(int param0)
{
    int v0;

    for (v0 = 0; v0 < sTaskManager->capacity; v0++) {
        if (sTaskManager->tasks[v0].resourceID == param0) {
            return &sTaskManager->tasks[v0];
        }
    }

    return NULL;
}

static int sub_0201F074(CharTransferTask *param0, int param1)
{
    if (param1 == NNS_G2D_VRAM_TYPE_2DMAIN) {
        param0->data->mapingType = GX_GetOBJVRamModeChar();
    } else {
        param0->data->mapingType = GXS_GetOBJVRamModeChar();
    }

    return param0->data->mapingType;
}

static void sub_0201F09C(CharTransferTask *param0, u32 param1, u32 param2)
{
    param0->baseAddrMain = param1;
    param0->baseAddrSub = param2;

    if (!param0->transfer) {
        sub_0201F1F4((void *)param0);
    }
}

static BOOL sub_0201F0B0(int param0, u32 *param1, u32 *param2, u32 param3, u32 *param4, u32 *param5)
{
    u32 v0;

    if (param0 & NNS_G2D_VRAM_TYPE_2DMAIN) {
        *param4 = sub_0201F734(param3, sTaskManager->blockSizeMain, 1);
        v0 = sub_0201F754(*param4, sTaskManager->blockSizeMain);
        *param1 = sub_0201F598(v0, sTaskManager->bufMain);

        if (*param1 == 0xffffffff) {
            GF_ASSERT(FALSE);
            return 0;
        }

        *param1 = sub_0201F764(*param1, sTaskManager->blockSizeMain);
    }

    if (param0 & NNS_G2D_VRAM_TYPE_2DSUB) {
        *param5 = sub_0201F734(param3, sTaskManager->blockSizeSub, 1);
        v0 = sub_0201F754(*param5, sTaskManager->blockSizeSub);
        *param2 = sub_0201F598(v0, sTaskManager->bufSub);

        if (*param2 == 0xffffffff) {
            GF_ASSERT(FALSE);
            return 0;
        }

        *param2 = sub_0201F764(*param2, sTaskManager->blockSizeSub);
    }

    return 1;
}

static void sub_0201F15C(CharTransferTask *param0, u32 param1, u32 param2)
{
    if (param0->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        param0->baseAddrMain = param1 + sTaskManager->freeSizeMain;
    }

    if (param0->vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        param0->baseAddrSub = param2 + sTaskManager->freeSizeSub;
    }
}

static void sub_0201F18C(int param0, u32 param1, u32 param2, u32 param3, u32 param4)
{
    int v0;
    int v1;

    if (param0 & NNS_G2D_VRAM_TYPE_2DMAIN) {
        v0 = sub_0201F754(param3, sTaskManager->blockSizeMain);
        v1 = sub_0201F754(param1, sTaskManager->blockSizeMain);

        sub_0201F53C(v1, v0, sTaskManager->bufMain);
    }

    if (param0 & NNS_G2D_VRAM_TYPE_2DSUB) {
        v0 = sub_0201F754(param4, sTaskManager->blockSizeSub);
        v1 = sub_0201F754(param2, sTaskManager->blockSizeSub);

        sub_0201F53C(v1, v0, sTaskManager->bufSub);
    }
}

static void sub_0201F1F4(void *param0)
{
    CharTransferTask *v0 = (CharTransferTask *)param0;
    int v1;

    NNS_G2dInitImageProxy(&v0->imageProxy);

    if (v0->vramType != NNS_G2D_VRAM_TYPE_MAX) {
        sub_0201F220(v0, v0->vramType);
    } else {
        sub_0201F220(v0, NNS_G2D_VRAM_TYPE_2DMAIN);
        sub_0201F220(v0, NNS_G2D_VRAM_TYPE_2DSUB);
    }
}

static void sub_0201F220(CharTransferTask *param0, int param1)
{
    int v0;
    int v1;
    u32 v2;

    if (param0->updateMappingType) {
        v0 = sub_0201F074(param0, param1);
    } else {
        v0 = param1;
    }

    if (param1 == NNS_G2D_VRAM_TYPE_2DMAIN) {
        v1 = param0->baseAddrMain;
        v2 = GX_GetOBJVRamModeChar();
    } else {
        v1 = param0->baseAddrSub;
        v2 = GXS_GetOBJVRamModeChar();
    }

    if (v0 == GX_OBJVRAMMODE_CHAR_2D) {
        NNS_G2dLoadImage2DMapping(param0->data, v1, param1, &param0->imageProxy);
    } else {
        NNS_G2dLoadImage1DMapping(param0->data, v1, param1, &param0->imageProxy);
    }
}

static void sub_0201F26C(void *param0)
{
    CharTransferTask *v0 = (CharTransferTask *)param0;

    NNS_G2dInitImageProxy(&v0->imageProxy);

    if (v0->vramType != NNS_G2D_VRAM_TYPE_MAX) {
        sub_0201F298(v0, v0->vramType);
    } else {
        sub_0201F298(v0, NNS_G2D_VRAM_TYPE_2DMAIN);
        sub_0201F298(v0, NNS_G2D_VRAM_TYPE_2DSUB);
    }
}

static void sub_0201F298(CharTransferTask *param0, int param1)
{
    int v0;
    int v1;
    u32 v2;

    if (param0->updateMappingType) {
        v0 = sub_0201F074(param0, param1);
    } else {
        v0 = param1;
    }

    if (param1 == NNS_G2D_VRAM_TYPE_2DMAIN) {
        v1 = param0->baseAddrMain;
        v2 = GX_GetOBJVRamModeChar();
    } else {
        v1 = param0->baseAddrSub;
        v2 = GXS_GetOBJVRamModeChar();
    }

    NNS_G2dLoadImageVramTransfer(param0->data, v1, param1, &param0->imageProxy);
}

static CharTransferTask *sub_0201F2D0(void)
{
    int v0;

    for (v0 = 0; v0 < sTaskManager->capacity; v0++) {
        if (sTaskManager->tasks[v0].state == 0) {
            return &sTaskManager->tasks[v0];
        }
    }

    return NULL;
}

static void sub_0201F30C(void)
{
    GXVRamOBJ v0;
    GXVRamSubOBJ v1;
    int v2;

    v0 = GX_GetBankForOBJ();

    switch (v0) {
    case GX_VRAM_OBJ_NONE:
        sTaskManager->vramSizeMain = 0;
        break;
    case GX_VRAM_OBJ_16_F:
    case GX_VRAM_OBJ_16_G:
        sTaskManager->vramSizeMain = 16 * 1024;
        break;
    case GX_VRAM_OBJ_32_FG:
        sTaskManager->vramSizeMain = 32 * 1024;
        break;
    case GX_VRAM_OBJ_64_E:
        sTaskManager->vramSizeMain = 64 * 1024;
        break;
    case GX_VRAM_OBJ_80_EF:
    case GX_VRAM_OBJ_80_EG:
        sTaskManager->vramSizeMain = 80 * 1024;
        break;
    case GX_VRAM_OBJ_96_EFG:
        sTaskManager->vramSizeMain = 96 * 1024;
        break;
    case GX_VRAM_OBJ_128_A:
    case GX_VRAM_OBJ_128_B:
        sTaskManager->vramSizeMain = 128 * 1024;
        break;
    case GX_VRAM_OBJ_256_AB:
        sTaskManager->vramSizeMain = 256 * 1024;
        break;
    default:
        sTaskManager->vramSizeMain = 0;
        break;
    }

    v1 = GX_GetBankForSubOBJ();

    switch (v1) {
    case GX_VRAM_SUB_OBJ_NONE:
        sTaskManager->vramSizeSub = 0;
        break;
    case GX_VRAM_SUB_OBJ_16_I:
        sTaskManager->vramSizeSub = 16 * 1024;
        break;
    case GX_VRAM_SUB_OBJ_128_D:
        sTaskManager->vramSizeSub = 128 * 1024;
        break;
    default:
        sTaskManager->vramSizeSub = 0;
        break;
    }

    v2 = sub_0201F764(sTaskManager->numBlocksMain, sTaskManager->blockSizeMain);
    sTaskManager->freeSizeMain = sTaskManager->vramSizeMain - v2;

    v2 = sub_0201F764(sTaskManager->numBlocksSub, sTaskManager->blockSizeSub);
    sTaskManager->freeSizeSub = sTaskManager->vramSizeSub - v2;

    GF_ASSERT((sTaskManager->freeSizeMain >= 0) && (sTaskManager->freeSizeSub >= 0));
    GF_ASSERT((sTaskManager->freeSizeMain >= 0) && (sTaskManager->freeSizeSub >= 0));
}

void sub_0201F460(void)
{
    sub_0201F524(sTaskManager->bufMain);
    sub_0201F524(sTaskManager->bufSub);
}

static void sub_0201F47C(u32 param0, u32 param1, int param2)
{
    sTaskManager->numBlocksMain = param0;
    sTaskManager->numBlocksSub = param1;

    if (sTaskManager->bufMain != NULL) {
        Heap_FreeToHeap(sTaskManager->bufMain);
    }

    if (sTaskManager->bufSub != NULL) {
        Heap_FreeToHeap(sTaskManager->bufSub);
    }

    if (sTaskManager->numBlocksMain != 0) {
        sTaskManager->bufMain = Heap_AllocFromHeap(param2, sizeof(u8) * (param0 / 8));
    }

    if (sTaskManager->numBlocksSub != 0) {
        sTaskManager->bufSub = Heap_AllocFromHeap(param2, sizeof(u8) * (param1 / 8));
    }

    sub_0201F460();
}

static void sub_0201F4E4(u8 *param0)
{
    if (param0 != NULL) {
        if (param0 == sTaskManager->bufMain) {
            sTaskManager->numBlocksMain = 0;

            Heap_FreeToHeap(param0);
        } else {
            sTaskManager->numBlocksSub = 0;
            Heap_FreeToHeap(param0);
        }

        param0 = NULL;
    }
}

static u32 sub_0201F50C(u8 *param0)
{
    if (param0 == sTaskManager->bufMain) {
        return sTaskManager->numBlocksMain;
    }

    return sTaskManager->numBlocksSub;
}

static void sub_0201F524(u8 *param0)
{
    int v0;
    u32 v1;

    if (param0 != NULL) {
        v1 = sub_0201F50C(param0);
        memset(param0, 0, sizeof(u8) * (v1 / 8));
    }
}

static void sub_0201F53C(u32 param0, u32 param1, u8 *param2)
{
    int v0;
    u32 v1;

    if (param2 != NULL) {
        v1 = sub_0201F50C(param2);

        for (v0 = param0; v0 < param0 + param1; v0++) {
            u32 v2;
            u8 v3, v4;

            if (v0 >= v1) {
                break;
            }

            sub_0201F80C(v0, &v2, &v3);

            GF_ASSERT((param2[v2] & (1 << v3)) == 0);

            v4 = (1 << v3);
            param2[v2] |= v4;
        }
    }
}

static u32 sub_0201F598(u32 param0, u8 *param1)
{
    int v0, v1;
    u32 v2;

    if (param1 != NULL) {
        v2 = sub_0201F50C(param1);

        for (v0 = 0; v0 < v2; v0++) {
            u32 v3;
            u8 v4, v5;

            sub_0201F80C(v0, &v3, &v4);

            v5 = (1 << v4);
            v1 = 0;

            while (((param1[v3] & v5) == 0) && (v1 <= param0)) {
                int v6 = v0 + v1;

                sub_0201F80C(v6, &v3, &v4);
                v5 = (1 << v4);

                if (v6 >= v2) {
                    return 0xffffffff;
                }

                v1++;
            }

            if (v1 > param0) {
                return v0;
            }

            v0 += v1;
        }
    }

    return 0xffffffff;
}

static void sub_0201F620(u32 param0, u32 param1, u8 *param2)
{
    int v0;

    if (param2 != NULL) {
        for (v0 = param0; v0 < param0 + param1; v0++) {
            u32 v1;
            u8 v2, v3;

            sub_0201F80C(v0, &v1, &v2);

            GF_ASSERT(param2[v1] & (1 << v2));

            v3 = (1 << v2) ^ 0xff;
            param2[v1] &= v3;
        }
    }
}

static void sub_0201F670(CharTransferTask *param0)
{
    u32 v0;
    u32 v1;

    if (param0->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        v0 = sub_0201F754(NNS_G2dGetImageLocation(&param0->imageProxy, NNS_G2D_VRAM_TYPE_2DMAIN) - sTaskManager->freeSizeMain, sTaskManager->blockSizeMain);
        v1 = sub_0201F754(param0->regionSizeMain, sTaskManager->blockSizeMain);

        sub_0201F620(v0, v1, sTaskManager->bufMain);
    }

    if (param0->vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        v0 = sub_0201F754(NNS_G2dGetImageLocation(&param0->imageProxy, NNS_G2D_VRAM_TYPE_2DSUB) - sTaskManager->freeSizeSub, sTaskManager->blockSizeSub);
        v1 = sub_0201F754(param0->regionSizeSub, sTaskManager->blockSizeSub);

        sub_0201F620(v0, v1, sTaskManager->bufSub);
    }

    param0->haveRegion = 0;
}

int sub_0201F6F4(int param0)
{
    int v0;

    switch (param0) {
    case GX_OBJVRAMMODE_CHAR_1D_32K:
        v0 = 1;
        break;
    case GX_OBJVRAMMODE_CHAR_1D_64K:
        v0 = 2;
        break;
    case GX_OBJVRAMMODE_CHAR_1D_128K:
        v0 = 4;
        break;
    case GX_OBJVRAMMODE_CHAR_1D_256K:
        v0 = 8;
        break;
    default:
        v0 = 1;
        break;
    }

    return v0;
}

static int sub_0201F734(int param0, int param1, int param2)
{
    param1 *= 32;

    if (param0 % param1) {
        param0 -= (param0 % param1);

        if (param2 == 1) {
            param0 += param1;
        }
    }

    return param0;
}

static int sub_0201F754(int param0, int param1)
{
    param0 /= 32;
    param0 /= param1;

    return param0;
}

static int sub_0201F764(int param0, int param1)
{
    param0 *= param1;
    param0 *= 32;

    return param0;
}

static BOOL sub_0201F76C(u32 param0, int param1, u32 *param2, u32 *param3)
{
    BOOL v0 = 1;

    if (param1 & NNS_G2D_VRAM_TYPE_2DMAIN) {
        if ((sTaskManager->offsetMain + param0) > sTaskManager->freeSizeMain) {
            GF_ASSERT(0);
            v0 = 0;
        } else {
            *param2 = sTaskManager->offsetMain;
        }
    }

    if (param1 & NNS_G2D_VRAM_TYPE_2DSUB) {
        if ((sTaskManager->offsetSub + param0) > sTaskManager->freeSizeSub) {
            GF_ASSERT(0);
            v0 = 0;
        } else {
            *param3 = sTaskManager->offsetSub;
        }
    }

    return v0;
}

static void sub_0201F7BC(u32 param0, int param1)
{
    if (param1 & NNS_G2D_VRAM_TYPE_2DMAIN) {
        sTaskManager->offsetMain += param0;
        sTaskManager->offsetMain = sub_0201F734(sTaskManager->offsetMain, sTaskManager->blockSizeMain, 1);
    }

    if (param1 & NNS_G2D_VRAM_TYPE_2DSUB) {
        sTaskManager->offsetSub += param0;
        sTaskManager->offsetSub = sub_0201F734(sTaskManager->offsetSub, sTaskManager->blockSizeSub, 1);
    }
}

static void sub_0201F80C(int param0, u32 *param1, u8 *param2)
{
    *param1 = param0 >> 3;
    *param2 = param0 & 7;
}

static void sub_0201F818(u32 param0, u32 param1, u32 param2, int *param3, int *param4)
{
    *param3 = param1 - param0;

    if (*param3 < 0) {
        *param4 = param2 + *param3;
        *param3 = 0;
    } else {
        *param4 = param2;
    }
}
