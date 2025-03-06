#include "unk_02095AF0.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02029C88_decl.h"
#include "struct_defs/struct_02039A58.h"
#include "struct_defs/struct_02095B28.h"
#include "struct_defs/struct_02095C48.h"
#include "struct_defs/struct_02095C60.h"

#include "overlay006/ov6_022489E4.h"
#include "overlay017/ov17_02252CEC.h"
#include "overlay017/struct_ov17_0224EDE0.h"

#include "communication_system.h"
#include "heap.h"
#include "unk_020298BC.h"
#include "unk_02032798.h"

static void sub_02095B2C(int param0, int param1, void *param2, void *param3);
static u8 *sub_02095B04(int param0, void *param1, int param2);
static void sub_02095B30(int param0, int param1, void *param2, void *param3);
static void sub_02095B9C(int param0, int param1, void *param2, void *param3);
static void sub_02095C48(int param0, int param1, void *param2, void *param3);
static void sub_02095C98(int param0, int param1, void *param2, void *param3);
static int sub_02095B24(void);
static int sub_02095B28(void);

static const CommCmdTable Unk_020F58FC[] = {
    { NULL, sub_0203294C, NULL },
    { sub_02095B2C, sub_0203294C, NULL },
    { ov17_02252CEC, sub_02032944, sub_02095B04 },
    { ov17_02252D7C, sub_02095B24, NULL },
    { ov6_022489E4, sub_02032944, NULL },
    { ov6_02248AC8, sub_02032944, NULL },
    { ov6_02248B30, sub_02032944, sub_02095B04 },
    { ov6_02248BC0, sub_02032944, NULL },
    { ov6_02248C28, sub_02032944, NULL },
    { ov6_02248CBC, sub_02032944, NULL },
    { sub_02095B30, sub_02032944, NULL },
    { sub_02095B9C, sub_02032944, sub_02095B04 },
    { sub_02095C48, sub_02095B28, NULL },
    { sub_02095C98, sub_02095B28, NULL },
    { ov6_02248D38, sub_02032944, sub_02095B04 },
    { ov6_02248DA0, sub_02032944, NULL }
};

void sub_02095AF0(void *param0)
{
    int v0 = sizeof(Unk_020F58FC) / sizeof(CommCmdTable);
    CommCmd_Init(Unk_020F58FC, v0, param0);
}

static u8 *sub_02095B04(int param0, void *param1, int param2)
{
    UnkStruct_02095C48 *v0 = param1;

    GF_ASSERT(param2 < 1024);
    return v0->unk_969[param0];
}

static int sub_02095B24(void)
{
    return sizeof(UnkStruct_ov17_0224EDE0);
}

static int sub_02095B28(void)
{
    return sizeof(UnkStruct_02095B28);
}

static void sub_02095B2C(int param0, int param1, void *param2, void *param3)
{
    return;
}

static void sub_02095B30(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_02095C48 *v0 = param3;
    int v1;
    int v2;
    u8 *v3;

    v1 = sub_02029C64();
    v3 = param2;
    v2 = v3[v1];

    MI_CpuCopy8(param2, v0->unk_00.unk_E8[v2], v1);

    v0->unk_568++;
}

BOOL sub_02095B5C(UnkStruct_02095C48 *param0, int param1, const UnkStruct_02029C88 *param2)
{
    u8 *v0;
    int v1;
    int v2;

    v1 = sub_02029C64();
    v0 = Heap_AllocFromHeap(HEAP_ID_20, v1 + 1);
    MI_CpuCopy8(param2, v0, v1);
    v0[v1] = param1;

    if (CommSys_SendData(32, v0, v1 + 1) == 1) {
        v2 = 1;
    } else {
        v2 = 0;
    }

    Heap_FreeToHeap(v0);
    return v2;
}

static void sub_02095B9C(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_02095C48 *v0 = param3;
    int v1, v2;
    u8 *v3;
    int v4;

    v1 = sub_02029C64();
    v2 = v1 * 4;
    v3 = param2;

    GF_ASSERT(v2 < 1024);

    for (v4 = 0; v4 < 4; v4++) {
        MI_CpuCopy8(&v3[v1 * v4], v0->unk_00.unk_E8[v4], v1);
    }

    v0->unk_568++;
}

BOOL sub_02095BEC(UnkStruct_02095C48 *param0, UnkStruct_02029C88 **param1)
{
    u8 *v0;
    int v1, v2;
    int v3;
    int v4;

    v1 = sub_02029C64();
    v2 = v1 * 4;

    GF_ASSERT(v2 < 1024);

    v0 = param0->unk_569;

    for (v4 = 0; v4 < 4; v4++) {
        MI_CpuCopy8(param1[v4], &v0[v1 * v4], v1);
    }

    if (CommSys_SendDataHuge(33, v0, v2) == 1) {
        v3 = 1;
    } else {
        v3 = 0;
    }

    return v3;
}

static void sub_02095C48(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_02095C48 *v0 = param3;
    MI_CpuCopy8(param2, &v0->unk_1984.unk_00, param1);
}

BOOL sub_02095C60(UnkStruct_02095C60 *param0, u32 param1)
{
    if (param0->unk_16 == 0) {
        param0->unk_00.unk_00 = param1;
        return 1;
    }

    if (param0->unk_14 != param0->unk_15) {
        return 0;
    }

    param0->unk_08.unk_00 = param1;

    if (CommSys_SendData(34, &param0->unk_08, sizeof(UnkStruct_02095B28)) == 1) {
        return 1;
    }

    return 0;
}

static void sub_02095C98(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_02095C48 *v0 = param3;
    UnkStruct_02095B28 *v1 = param2;
    v0->unk_1984.unk_10[param0] = v1->unk_04;
}

BOOL sub_02095CA8(UnkStruct_02095C60 *param0, int param1)
{
    if (param0->unk_16 == 0) {
        param0->unk_10[0] = param1;
        return 1;
    }

    param0->unk_08.unk_04 = param1;

    if (CommSys_SendData(35, &param0->unk_08, sizeof(UnkStruct_02095B28)) == 1) {
        return 1;
    }

    return 0;
}
