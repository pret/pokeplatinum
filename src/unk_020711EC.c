#include "unk_020711EC.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02071330.h"

#include "functypes/funcptr_02071330.h"
#include "functypes/funcptr_02071330_1.h"
#include "functypes/funcptr_02071330_2.h"
#include "functypes/funcptr_02071330_3.h"
#include "functypes/funcptr_02071330_4.h"
#include "functypes/funcptr_02071330_5.h"
#include "overlay101/struct_ov101_021D86B0.h"

#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"

typedef struct UnkStruct_ov101_021D5D90_t {
    u32 bitmask;
    int unk_04;
    int unk_08;
    const void *unk_0C;
    SysTask *unk_10;
    const UnkStruct_020711EC *unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    VecFx32 unk_24;
    u8 unk_30[160];
    UnkFuncPtr_02071330 unk_D0;
    UnkFuncPtr_02071330_2 unk_D4;
    UnkFuncPtr_02071330_3 unk_D8;
    UnkFuncPtr_02071330_1 unk_DC;
    UnkFuncPtr_02071330_4 unk_E0;
    UnkFuncPtr_02071330_5 unk_E4;
} UnkStruct_ov101_021D5D90;

typedef struct UnkStruct_020711EC_t {
    int numOfIterations;
    int dummy; // only incremented/decremented, never read
    int heapID;
    UnkStruct_ov101_021D5D90 *iterationData;
} UnkStruct_020711EC;

static SysTask *sub_02071400(UnkStruct_ov101_021D5D90 *param0, int param1);
static void sub_02071420(SysTask *param0, void *param1);
static UnkStruct_020711EC *sub_0207142C(int heapID);
static void sub_02071450(UnkStruct_020711EC *param0);
static UnkStruct_ov101_021D5D90 *sub_0207145C(int heapID, int param1);
static void sub_02071480(UnkStruct_020711EC *param0);
static void InitUnkStruct_ov101_021D5D90(UnkStruct_ov101_021D5D90 *param0);
static int UnkStruct_020711EC_GetNumOfIterations(const UnkStruct_020711EC *param0);
static UnkStruct_ov101_021D5D90 *UnkStruct_020711EC_GetIterationData(const UnkStruct_020711EC *param0);
static void UnkStruct_ov101_021D5D90_SetLsb(UnkStruct_ov101_021D5D90 *param0);
static void UnkStruct_ov101_021D5D90_SetBitmaskFlags(UnkStruct_ov101_021D5D90 *param0, u32 param1);
static u32 UnkStruct_ov101_021D5D90_GetSpecifiedBitsOfBitmask(UnkStruct_ov101_021D5D90 *param0, u32 param1);
static void sub_020715B0(UnkStruct_ov101_021D5D90 *param0, int param1);
static void sub_020715B8(UnkStruct_ov101_021D5D90 *param0, const void *param1);
static void sub_020715C8(UnkStruct_ov101_021D5D90 *param0, SysTask *param1);
static SysTask *sub_020715CC(UnkStruct_ov101_021D5D90 *param0);
static void sub_020715D0(UnkStruct_ov101_021D5D90 *param0, const UnkStruct_020711EC *param1);

UnkStruct_020711EC *sub_020711EC(int heapID, int param1)
{
    UnkStruct_020711EC *v0 = sub_0207142C(heapID);

    v0->iterationData = sub_0207145C(heapID, param1);
    v0->numOfIterations = param1;
    v0->heapID = heapID;

    return v0;
}

void sub_0207120C(UnkStruct_020711EC *param0)
{
    sub_02071480(param0);
    sub_02071450(param0);
}

void sub_0207121C(UnkStruct_020711EC *param0)
{
    sub_020713A4(param0);
    sub_0207120C(param0);
}

UnkStruct_ov101_021D5D90 *sub_0207122C(UnkStruct_020711EC *param0, const UnkStruct_02071330 *param1, const VecFx32 *param2, int param3, const void *param4, int param5)
{
    int count, numIterations;
    UnkStruct_ov101_021D5D90 *iterationData;
    SysTask *v3;

    count = 0;
    numIterations = UnkStruct_020711EC_GetNumOfIterations(param0);
    iterationData = UnkStruct_020711EC_GetIterationData(param0);

    do {
        if (UnkStruct_ov101_021D5D90_IsLsbSet(iterationData) == FALSE) {
            break;
        }

        count++;
        iterationData++;
    } while (count < numIterations);

    if (count >= numIterations) {
        return NULL;
    }

    UnkStruct_ov101_021D5D90_SetLsb(iterationData);
    sub_020715B0(iterationData, param3);
    sub_020715B8(iterationData, param4);
    sub_020715D0(iterationData, param0);

    if (param2 != NULL) {
        sub_020715D4(iterationData, param2);
    } else {
        VecFx32 v4 = { 0, 0, 0 };
        sub_020715D4(iterationData, &v4);
    }

    sub_0207159C(iterationData, param1->unk_00);
    sub_02071518(iterationData, param1->unk_04);
    sub_0207156C(iterationData, param1->unk_08);
    sub_02071534(iterationData, param1->unk_0C);
    sub_02071550(iterationData, param1->unk_10);
    sub_02071588(iterationData, param1->unk_14);
    sub_02071590(iterationData, param1->unk_18);

    v3 = sub_02071400(iterationData, param5);

    if (v3 == NULL) {
        InitUnkStruct_ov101_021D5D90(iterationData);
        return NULL;
    }

    sub_020715C8(iterationData, v3);

    if (sub_02071520(iterationData) == 0) {
        SysTask_Done(v3);
        InitUnkStruct_ov101_021D5D90(iterationData);
        return NULL;
    }

    UnkStruct_ov101_021D5D90_SetBitmaskFlags(iterationData, (1 << 1));
    param0->dummy++;

    return iterationData;
}

UnkStruct_ov101_021D5D90 *sub_02071330(UnkStruct_020711EC *param0, const UnkStruct_ov101_021D86B0 *param1, const VecFx32 *param2, int param3, const void *param4, int param5)
{
    UnkStruct_02071330 v0;

    *(UnkStruct_ov101_021D86B0 *)&v0 = *param1;
    v0.unk_14 = UnkStruct_ov101_021D5D90_DoNothing4;
    v0.unk_18 = UnkStruct_ov101_021D5D90_DoNothing5;

    return sub_0207122C(param0, &v0, param2, param3, param4, param5);
}

void sub_0207136C(UnkStruct_ov101_021D5D90 *param0)
{
    GF_ASSERT(param0 != NULL);

    if (UnkStruct_ov101_021D5D90_IsLsbSet(param0) == 0) {
        return;
    }

    sub_02071574(param0);

    {
        UnkStruct_020711EC *v0 = (UnkStruct_020711EC *)param0->unk_14;
        v0->dummy--;
    }

    {
        SysTask *v1 = sub_020715CC(param0);

        if (v1 != NULL) {
            SysTask_Done(v1);
        }
    }

    InitUnkStruct_ov101_021D5D90(param0);
}

void sub_020713A4(UnkStruct_020711EC *param0)
{
    int iterationsLeft;
    UnkStruct_ov101_021D5D90 *iterationData;

    iterationsLeft = UnkStruct_020711EC_GetNumOfIterations(param0);
    iterationData = UnkStruct_020711EC_GetIterationData(param0);

    do {
        if (UnkStruct_ov101_021D5D90_IsLsbSet(iterationData) == TRUE) {
            sub_0207136C(iterationData);
        }

        iterationData++;
        iterationsLeft--;
    } while (iterationsLeft);
}

void sub_020713D0(UnkStruct_020711EC *param0)
{
    int iterationsLeft;
    u32 activeBits;
    UnkStruct_ov101_021D5D90 *iterationData;

    iterationsLeft = UnkStruct_020711EC_GetNumOfIterations(param0);
    iterationData = UnkStruct_020711EC_GetIterationData(param0);

    do {
        activeBits = UnkStruct_ov101_021D5D90_GetSpecifiedBitsOfBitmask(iterationData, ((1 << 0) | (1 << 1)));

        if (activeBits == ((1 << 0) | (1 << 1))) {
            sub_02071558(iterationData);
        }

        iterationData++;
        iterationsLeft--;
    } while (iterationsLeft);
}

static SysTask *sub_02071400(UnkStruct_ov101_021D5D90 *param0, int param1)
{
    SysTask *v0 = SysTask_Start(sub_02071420, param0, param1);
    GF_ASSERT(v0 != NULL);

    return v0;
}

static void sub_02071420(SysTask *param0, void *param1)
{
    UnkStruct_ov101_021D5D90 *v0 = param1;
    sub_0207153C(v0);
}

static UnkStruct_020711EC *sub_0207142C(int heapID)
{
    UnkStruct_020711EC *v0 = Heap_AllocFromHeap(heapID, (sizeof(UnkStruct_020711EC)));
    GF_ASSERT(v0 != NULL);

    memset(v0, 0, (sizeof(UnkStruct_020711EC)));
    return v0;
}

static void sub_02071450(UnkStruct_020711EC *param0)
{
    Heap_FreeExplicit(param0->heapID, param0);
}

static UnkStruct_ov101_021D5D90 *sub_0207145C(int heapID, int param1)
{
    UnkStruct_ov101_021D5D90 *v0;

    param1 *= (sizeof(UnkStruct_ov101_021D5D90));
    v0 = Heap_AllocFromHeap(heapID, param1);

    GF_ASSERT(v0 != NULL);
    memset(v0, 0, param1);

    return v0;
}

static void sub_02071480(UnkStruct_020711EC *param0)
{
    Heap_FreeExplicit(param0->heapID, param0->iterationData);
}

static void InitUnkStruct_ov101_021D5D90(UnkStruct_ov101_021D5D90 *param0)
{
    memset(param0, 0, (sizeof(UnkStruct_ov101_021D5D90)));

    sub_02071518(param0, UnkStruct_ov101_021D5D90_Return1);
    sub_0207156C(param0, UnkStruct_ov101_021D5D90_DoNothing3);
    sub_02071534(param0, UnkStruct_ov101_021D5D90_DoNothing1);
    sub_02071550(param0, UnkStruct_ov101_021D5D90_DoNothing2);
    sub_02071588(param0, UnkStruct_ov101_021D5D90_DoNothing4);
    sub_02071590(param0, UnkStruct_ov101_021D5D90_DoNothing5);
}

static int UnkStruct_020711EC_GetNumOfIterations(const UnkStruct_020711EC *param0)
{
    return param0->numOfIterations;
}

static UnkStruct_ov101_021D5D90 *UnkStruct_020711EC_GetIterationData(const UnkStruct_020711EC *param0)
{
    return param0->iterationData;
}

BOOL UnkStruct_ov101_021D5D90_IsLsbSet(const UnkStruct_ov101_021D5D90 *param0)
{
    if (param0->bitmask & 1) {
        return TRUE;
    }

    return FALSE;
}

static void UnkStruct_ov101_021D5D90_SetLsb(UnkStruct_ov101_021D5D90 *param0)
{
    param0->bitmask |= 1;
}

static void UnkStruct_ov101_021D5D90_SetBitmaskFlags(UnkStruct_ov101_021D5D90 *param0, u32 bitsToSet)
{
    param0->bitmask |= bitsToSet;
}

static u32 UnkStruct_ov101_021D5D90_GetSpecifiedBitsOfBitmask(UnkStruct_ov101_021D5D90 *param0, u32 conjunctionMask)
{
    return param0->bitmask & conjunctionMask;
}

void sub_02071518(UnkStruct_ov101_021D5D90 *param0, UnkFuncPtr_02071330 param1)
{
    param0->unk_D0 = param1;
}

int sub_02071520(UnkStruct_ov101_021D5D90 *param0)
{
    void *v0 = sub_02071598(param0);
    return param0->unk_D0(param0, v0);
}

void sub_02071534(UnkStruct_ov101_021D5D90 *param0, UnkFuncPtr_02071330_2 param1)
{
    param0->unk_D4 = param1;
}

void sub_0207153C(UnkStruct_ov101_021D5D90 *param0)
{
    void *v0 = sub_02071598(param0);
    param0->unk_D4(param0, v0);
}

void sub_02071550(UnkStruct_ov101_021D5D90 *param0, UnkFuncPtr_02071330_3 param1)
{
    param0->unk_D8 = param1;
}

void sub_02071558(UnkStruct_ov101_021D5D90 *param0)
{
    void *v0 = sub_02071598(param0);
    param0->unk_D8(param0, v0);
}

void sub_0207156C(UnkStruct_ov101_021D5D90 *param0, UnkFuncPtr_02071330_1 param1)
{
    param0->unk_DC = param1;
}

void sub_02071574(UnkStruct_ov101_021D5D90 *param0)
{
    void *v0 = sub_02071598(param0);
    param0->unk_DC(param0, v0);
}

void sub_02071588(UnkStruct_ov101_021D5D90 *param0, UnkFuncPtr_02071330_4 param1)
{
    param0->unk_E0 = param1;
}

void sub_02071590(UnkStruct_ov101_021D5D90 *param0, UnkFuncPtr_02071330_5 param1)
{
    param0->unk_E4 = param1;
}

void *sub_02071598(UnkStruct_ov101_021D5D90 *param0)
{
    return param0->unk_30;
}

void sub_0207159C(UnkStruct_ov101_021D5D90 *param0, int param1)
{
    void *v0 = sub_02071598(param0);
    memset(v0, 0, param1);
}

static void sub_020715B0(UnkStruct_ov101_021D5D90 *param0, int param1)
{
    param0->unk_04 = param1;
}

int sub_020715B4(const UnkStruct_ov101_021D5D90 *param0)
{
    return param0->unk_04;
}

static void sub_020715B8(UnkStruct_ov101_021D5D90 *param0, const void *param1)
{
    param0->unk_0C = param1;
}

const void *sub_020715BC(const UnkStruct_ov101_021D5D90 *param0)
{
    return param0->unk_0C;
}

void sub_020715C0(UnkStruct_ov101_021D5D90 *param0, int param1)
{
    param0->unk_08 = param1;
}

int sub_020715C4(const UnkStruct_ov101_021D5D90 *param0)
{
    return param0->unk_08;
}

static void sub_020715C8(UnkStruct_ov101_021D5D90 *param0, SysTask *param1)
{
    param0->unk_10 = param1;
}

static SysTask *sub_020715CC(UnkStruct_ov101_021D5D90 *param0)
{
    return param0->unk_10;
}

static void sub_020715D0(UnkStruct_ov101_021D5D90 *param0, const UnkStruct_020711EC *param1)
{
    param0->unk_14 = param1;
}

void sub_020715D4(UnkStruct_ov101_021D5D90 *param0, const VecFx32 *param1)
{
    param0->unk_24 = *param1;
}

void sub_020715E4(UnkStruct_ov101_021D5D90 *param0, VecFx32 *param1)
{
    *param1 = param0->unk_24;
}

int UnkStruct_ov101_021D5D90_Return1(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    return 1;
}

void UnkStruct_ov101_021D5D90_DoNothing1(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    return;
}

void UnkStruct_ov101_021D5D90_DoNothing2(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    return;
}

void UnkStruct_ov101_021D5D90_DoNothing3(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    return;
}

void UnkStruct_ov101_021D5D90_DoNothing4(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    return;
}

void UnkStruct_ov101_021D5D90_DoNothing5(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    return;
}
