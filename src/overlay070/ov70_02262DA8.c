#include "overlay070/ov70_02262DA8.h"

#include <nitro.h>
#include <string.h>

#include "overlay070/funcptr_ov70_0226DA18.h"
#include "overlay070/struct_ov70_0225DEE8_decl.h"
#include "overlay070/struct_ov70_0226DA18.h"

#include "heap.h"

typedef struct {
    const UnkStruct_ov70_0226DA18 *unk_00;
    void *unk_04;
    void *unk_08;
    u32 unk_0C;
} UnkStruct_ov70_0226308C;

typedef struct UnkStruct_ov70_02263344_t {
    u16 heapID;
    u8 unk_02;
    u8 unk_03;
    UnkStruct_ov70_0226308C unk_04;
    UnkStruct_ov70_0226308C unk_14;
} UnkStruct_ov70_02263344;

typedef struct UnkStruct_ov70_022630A4_t {
    u32 unk_00;
    UnkStruct_ov70_0225DEE8 *unk_04;
    UnkStruct_ov70_02263344 unk_08[20];
    UnkStruct_ov70_02263344 unk_2D8;
} UnkStruct_ov70_022630A4;

static void ov70_02262F14(UnkStruct_ov70_022630A4 *param0, u32 param1);
static void ov70_02262F64(UnkStruct_ov70_02263344 *param0, u32 param1, u32 heapID);
static void ov70_02262F70(UnkStruct_ov70_02263344 *param0);
static void ov70_02262F94(UnkStruct_ov70_02263344 *param0, UnkStruct_ov70_022630A4 *param1, u32 param2, u32 param3);
static void ov70_02262FD4(UnkStruct_ov70_02263344 *param0, const UnkStruct_ov70_0226DA18 *param1, void *param2);
static void ov70_02263008(UnkStruct_ov70_02263344 *param0, BOOL param1);
static void ov70_0226300C(UnkStruct_ov70_02263344 *param0, const UnkStruct_ov70_0226DA18 *param1, void *param2);
static void ov70_02263044(UnkStruct_ov70_02263344 *param0);
static BOOL ov70_0226306C(const UnkStruct_ov70_02263344 *param0);
static BOOL ov70_0226307C(const UnkStruct_ov70_02263344 *param0);
static void ov70_0226308C(UnkStruct_ov70_0226308C *param0, const UnkStruct_ov70_0226DA18 *param1, void *param2, u32 param3, void *param4);
static void ov70_02263098(UnkStruct_ov70_0226308C *param0);

UnkStruct_ov70_022630A4 *ov70_02262DA8(UnkStruct_ov70_0225DEE8 *param0, u32 heapID)
{
    UnkStruct_ov70_022630A4 *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov70_022630A4));
    memset(v0, 0, sizeof(UnkStruct_ov70_022630A4));

    v0->unk_00 = heapID;
    v0->unk_04 = param0;

    {
        int v1;

        for (v1 = 0; v1 < 20; v1++) {
            ov70_02262F64(&v0->unk_08[v1], v1, heapID);
        }
    }

    ov70_02262F64(&v0->unk_2D8, 0, heapID);

    return v0;
}

void ov70_02262DF4(UnkStruct_ov70_022630A4 *param0)
{
    {
        int v0;

        for (v0 = 0; v0 < 20; v0++) {
            ov70_02262F70(&param0->unk_08[v0]);
        }
    }

    ov70_02262F70(&param0->unk_2D8);
    Heap_Free(param0);
}

void ov70_02262E20(UnkStruct_ov70_022630A4 *param0)
{
    ov70_02262F14(param0, 0);
}

void ov70_02262E2C(UnkStruct_ov70_022630A4 *param0)
{
    ov70_02262F14(param0, 1);
}

void *ov70_02262E38(UnkStruct_ov70_02263344 *param0)
{
    return param0->unk_04.unk_08;
}

void *ov70_02262E3C(UnkStruct_ov70_02263344 *param0, u32 param1)
{
    GF_ASSERT(param0->unk_04.unk_04 == NULL);

    param0->unk_04.unk_04 = Heap_AllocFromHeap(param0->heapID, param1);
    memset(param0->unk_04.unk_04, 0, param1);

    return param0->unk_04.unk_04;
}

void ov70_02262E64(UnkStruct_ov70_02263344 *param0)
{
    GF_ASSERT(param0->unk_04.unk_04 != NULL);
    Heap_Free(param0->unk_04.unk_04);
    param0->unk_04.unk_04 = NULL;
}

void *ov70_02262E80(UnkStruct_ov70_02263344 *param0)
{
    return param0->unk_04.unk_04;
}

u32 ov70_02262E84(const UnkStruct_ov70_02263344 *param0)
{
    return param0->unk_04.unk_0C;
}

void ov70_02262E88(UnkStruct_ov70_02263344 *param0, u32 param1)
{
    param0->unk_04.unk_0C = param1;
}

void ov70_02262E8C(UnkStruct_ov70_02263344 *param0)
{
    param0->unk_04.unk_0C++;
}

void ov70_02262E94(UnkStruct_ov70_022630A4 *param0, u32 param1, const UnkStruct_ov70_0226DA18 *param2, void *param3)
{
    GF_ASSERT(param0);
    GF_ASSERT(param1 < 20);

    ov70_02262FD4(&param0->unk_08[param1], param2, param3);
}

void ov70_02262EC0(UnkStruct_ov70_022630A4 *param0, u32 param1, const UnkStruct_ov70_0226DA18 *param2, void *param3)
{
    GF_ASSERT(param0);
    GF_ASSERT(param1 < 20);

    ov70_0226300C(&param0->unk_08[param1], param2, param3);
}

void ov70_02262EEC(UnkStruct_ov70_022630A4 *param0, u32 param1, BOOL param2)
{
    GF_ASSERT(param0);
    GF_ASSERT(param1 < 20);

    ov70_02263008(&param0->unk_08[param1], param2);
}

static void ov70_02262F14(UnkStruct_ov70_022630A4 *param0, u32 param1)
{
    if (ov70_0226307C(&param0->unk_2D8) == 1) {
        ov70_02262F94(&param0->unk_2D8, param0, param1, 0);
        return;
    }

    {
        int v0;

        for (v0 = 0; v0 < 20; v0++) {
            if (ov70_0226307C(&param0->unk_08[v0]) == 1) {
                ov70_02262F94(&param0->unk_08[v0], param0, param1, v0);
            }
        }
    }
}

static void ov70_02262F64(UnkStruct_ov70_02263344 *param0, u32 param1, u32 heapID)
{
    param0->heapID = heapID;
    param0->unk_02 = 1;
    param0->unk_03 = param1;
}

static void ov70_02262F70(UnkStruct_ov70_02263344 *param0)
{
    if (param0->unk_04.unk_04 != NULL) {
        Heap_Free(param0->unk_04.unk_04);
    }

    if (param0->unk_14.unk_04 != NULL) {
        Heap_Free(param0->unk_14.unk_04);
    }

    memset(param0, 0, sizeof(UnkStruct_ov70_02263344));
}

static void ov70_02262F94(UnkStruct_ov70_02263344 *param0, UnkStruct_ov70_022630A4 *param1, u32 param2, u32 param3)
{
    BOOL v0;
    UnkFuncPtr_ov70_0226DA18 v1;

    if (param0->unk_02 == 0) {
        return;
    }

    switch (param2) {
    case 0:
        v1 = param0->unk_04.unk_00->unk_00;
        break;
    case 1:
        v1 = param0->unk_04.unk_00->unk_04;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    if (v1 != NULL) {
        v0 = v1(param0, param1->unk_04, param3);

        if (v0 == 1) {
            ov70_02263044(param0);
        }
    }
}

static void ov70_02262FD4(UnkStruct_ov70_02263344 *param0, const UnkStruct_ov70_0226DA18 *param1, void *param2)
{
    GF_ASSERT(ov70_0226306C(param0) == 1);
    GF_ASSERT(param0->unk_04.unk_04 == NULL);

    ov70_0226308C(&param0->unk_04, param1, param2, 0, NULL);
}

static void ov70_02263008(UnkStruct_ov70_02263344 *param0, BOOL param1)
{
    param0->unk_02 = param1;
}

static void ov70_0226300C(UnkStruct_ov70_02263344 *param0, const UnkStruct_ov70_0226DA18 *param1, void *param2)
{
    GF_ASSERT(ov70_0226306C(param0) == 1);
    param0->unk_14 = param0->unk_04;

    ov70_0226308C(&param0->unk_04, param1, param2, 0, NULL);
}

static void ov70_02263044(UnkStruct_ov70_02263344 *param0)
{
    GF_ASSERT(param0->unk_04.unk_04 == NULL);
    param0->unk_04 = param0->unk_14;

    ov70_02263098(&param0->unk_14);
}

static BOOL ov70_0226306C(const UnkStruct_ov70_02263344 *param0)
{
    if (param0->unk_14.unk_00 == NULL) {
        return 1;
    }

    return 0;
}

static BOOL ov70_0226307C(const UnkStruct_ov70_02263344 *param0)
{
    if (param0->unk_04.unk_00 == NULL) {
        return 0;
    }

    return 1;
}

static void ov70_0226308C(UnkStruct_ov70_0226308C *param0, const UnkStruct_ov70_0226DA18 *param1, void *param2, u32 param3, void *param4)
{
    param0->unk_00 = param1;
    param0->unk_0C = param3;
    param0->unk_04 = param4;
    param0->unk_08 = param2;
}

static void ov70_02263098(UnkStruct_ov70_0226308C *param0)
{
    param0->unk_00 = NULL;
    param0->unk_0C = 0;
    param0->unk_04 = NULL;
    param0->unk_08 = NULL;
}
