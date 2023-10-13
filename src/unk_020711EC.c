#include <nitro.h>
#include <string.h>

#include "struct_decls/sys_task.h"

#include "struct_defs/struct_02071330.h"
#include "functypes/funcptr_02071330.h"
#include "functypes/funcptr_02071330_1.h"
#include "functypes/funcptr_02071330_2.h"
#include "functypes/funcptr_02071330_3.h"
#include "functypes/funcptr_02071330_4.h"
#include "functypes/funcptr_02071330_5.h"
#include "overlay101/struct_ov101_021D86B0.h"

#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_020711EC.h"

typedef struct UnkStruct_ov101_021D5D90_t {
    u32 unk_00;
    int unk_04;
    int unk_08;
    const void * unk_0C;
    SysTask * unk_10;
    const UnkStruct_020711EC * unk_14;
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
    int unk_00;
    int unk_04;
    int unk_08;
    UnkStruct_ov101_021D5D90 * unk_0C;
} UnkStruct_020711EC;

static SysTask * sub_02071400(UnkStruct_ov101_021D5D90 * param0, int param1);
static void sub_02071420(SysTask * param0, void * param1);
static UnkStruct_020711EC * sub_0207142C(int param0);
static void sub_02071450(UnkStruct_020711EC * param0);
static UnkStruct_ov101_021D5D90 * sub_0207145C(int param0, int param1);
static void sub_02071480(UnkStruct_020711EC * param0);
static void sub_02071490(UnkStruct_ov101_021D5D90 * param0);
static int sub_020714E8(const UnkStruct_020711EC * param0);
static UnkStruct_ov101_021D5D90 * sub_020714EC(const UnkStruct_020711EC * param0);
static void sub_020714FC(UnkStruct_ov101_021D5D90 * param0);
static void sub_02071508(UnkStruct_ov101_021D5D90 * param0, u32 param1);
static u32 sub_02071510(UnkStruct_ov101_021D5D90 * param0, u32 param1);
static void sub_020715B0(UnkStruct_ov101_021D5D90 * param0, int param1);
static void sub_020715B8(UnkStruct_ov101_021D5D90 * param0, const void * param1);
static void sub_020715C8(UnkStruct_ov101_021D5D90 * param0, SysTask * param1);
static SysTask * sub_020715CC(UnkStruct_ov101_021D5D90 * param0);
static void sub_020715D0(UnkStruct_ov101_021D5D90 * param0, const UnkStruct_020711EC * param1);

UnkStruct_020711EC * sub_020711EC (int param0, int param1)
{
    UnkStruct_020711EC * v0;

    v0 = sub_0207142C(param0);

    v0->unk_0C = sub_0207145C(param0, param1);
    v0->unk_00 = param1;
    v0->unk_08 = param0;

    return v0;
}

void sub_0207120C (UnkStruct_020711EC * param0)
{
    sub_02071480(param0);
    sub_02071450(param0);
}

void sub_0207121C (UnkStruct_020711EC * param0)
{
    sub_020713A4(param0);
    sub_0207120C(param0);
}

UnkStruct_ov101_021D5D90 * sub_0207122C (UnkStruct_020711EC * param0, const UnkStruct_02071330 * param1, const VecFx32 * param2, int param3, const void * param4, int param5)
{
    int v0, v1;
    UnkStruct_ov101_021D5D90 * v2;
    SysTask * v3;

    v0 = 0;
    v1 = sub_020714E8(param0);
    v2 = sub_020714EC(param0);

    do {
        if (sub_020714F0(v2) == 0) {
            break;
        }

        v0++;
        v2++;
    } while (v0 < v1);

    if (v0 >= v1) {
        return NULL;
    }

    sub_020714FC(v2);
    sub_020715B0(v2, param3);
    sub_020715B8(v2, param4);
    sub_020715D0(v2, param0);

    if (param2 != NULL) {
        sub_020715D4(v2, param2);
    } else {
        VecFx32 v4 = {0, 0, 0}; sub_020715D4(v2, &v4);
    }

    sub_0207159C(v2, param1->unk_00);
    sub_02071518(v2, param1->unk_04);
    sub_0207156C(v2, param1->unk_08);
    sub_02071534(v2, param1->unk_0C);
    sub_02071550(v2, param1->unk_10);
    sub_02071588(v2, param1->unk_14);
    sub_02071590(v2, param1->unk_18);

    v3 = sub_02071400(v2, param5);

    if (v3 == NULL) {
        sub_02071490(v2);
        return NULL;
    }

    sub_020715C8(v2, v3);

    if (sub_02071520(v2) == 0) {
        sub_0200DA58(v3);
        sub_02071490(v2);
        return NULL;
    }

    sub_02071508(v2, (1 << 1));
    param0->unk_04++;

    return v2;
}

UnkStruct_ov101_021D5D90 * sub_02071330 (UnkStruct_020711EC * param0, const UnkStruct_ov101_021D86B0 * param1, const VecFx32 * param2, int param3, const void * param4, int param5)
{
    UnkStruct_02071330 v0;

    *(UnkStruct_ov101_021D86B0 *)&v0 = *param1;
    v0.unk_14 = sub_02071604;
    v0.unk_18 = sub_02071608;

    return sub_0207122C(param0, &v0, param2, param3, param4, param5);
}

void sub_0207136C (UnkStruct_ov101_021D5D90 * param0)
{
    GF_ASSERT(param0 != NULL);

    if (sub_020714F0(param0) == 0) {
        return;
    }

    sub_02071574(param0);

    {
        UnkStruct_020711EC * v0 = (UnkStruct_020711EC *)param0->unk_14;
        v0->unk_04--;
    }

    {
        SysTask * v1 = sub_020715CC(param0);

        if (v1 != NULL) {
            sub_0200DA58(v1);
        }
    }

    sub_02071490(param0);
}

void sub_020713A4 (UnkStruct_020711EC * param0)
{
    int v0;
    UnkStruct_ov101_021D5D90 * v1;

    v0 = sub_020714E8(param0);
    v1 = sub_020714EC(param0);

    do {
        if (sub_020714F0(v1) == 1) {
            sub_0207136C(v1);
        }

        v1++; v0--;
    } while (v0);
}

void sub_020713D0 (UnkStruct_020711EC * param0)
{
    int v0;
    u32 v1;
    UnkStruct_ov101_021D5D90 * v2;

    v0 = sub_020714E8(param0);
    v2 = sub_020714EC(param0);

    do {
        v1 = sub_02071510(v2, ((1 << 0) | (1 << 1)));

        if (v1 == ((1 << 0) | (1 << 1))) {
            sub_02071558(v2);
        }

        v2++;
        v0--;
    } while (v0);
}

static SysTask * sub_02071400 (UnkStruct_ov101_021D5D90 * param0, int param1)
{
    SysTask * v0;

    v0 = SysTask_Start(sub_02071420, param0, param1);
    GF_ASSERT(v0 != NULL);

    return v0;
}

static void sub_02071420 (SysTask * param0, void * param1)
{
    UnkStruct_ov101_021D5D90 * v0;

    v0 = param1;
    sub_0207153C(v0);
}

static UnkStruct_020711EC * sub_0207142C (int param0)
{
    UnkStruct_020711EC * v0;

    v0 = Heap_AllocFromHeap(param0, (sizeof(UnkStruct_020711EC)));
    GF_ASSERT(v0 != NULL);

    memset(v0, 0, (sizeof(UnkStruct_020711EC)));
    return v0;
}

static void sub_02071450 (UnkStruct_020711EC * param0)
{
    Heap_FreeToHeapExplicit(param0->unk_08, param0);
}

static UnkStruct_ov101_021D5D90 * sub_0207145C (int param0, int param1)
{
    UnkStruct_ov101_021D5D90 * v0;

    param1 *= (sizeof(UnkStruct_ov101_021D5D90));
    v0 = Heap_AllocFromHeap(param0, param1);

    GF_ASSERT(v0 != NULL);
    memset(v0, 0, param1);

    return v0;
}

static void sub_02071480 (UnkStruct_020711EC * param0)
{
    Heap_FreeToHeapExplicit(param0->unk_08, param0->unk_0C);
}

static void sub_02071490 (UnkStruct_ov101_021D5D90 * param0)
{
    memset(param0, 0, (sizeof(UnkStruct_ov101_021D5D90)));

    sub_02071518(param0, sub_020715F4);
    sub_0207156C(param0, sub_02071600);
    sub_02071534(param0, sub_020715F8);
    sub_02071550(param0, sub_020715FC);
    sub_02071588(param0, sub_02071604);
    sub_02071590(param0, sub_02071608);
}

static int sub_020714E8 (const UnkStruct_020711EC * param0)
{
    return param0->unk_00;
}

static UnkStruct_ov101_021D5D90 * sub_020714EC (const UnkStruct_020711EC * param0)
{
    return param0->unk_0C;
}

int sub_020714F0 (const UnkStruct_ov101_021D5D90 * param0)
{
    if ((param0->unk_00 & (1 << 0))) {
        return 1;
    }

    return 0;
}

static void sub_020714FC (UnkStruct_ov101_021D5D90 * param0)
{
    param0->unk_00 |= (1 << 0);
}

static void sub_02071508 (UnkStruct_ov101_021D5D90 * param0, u32 param1)
{
    param0->unk_00 |= param1;
}

static u32 sub_02071510 (UnkStruct_ov101_021D5D90 * param0, u32 param1)
{
    return param0->unk_00 & param1;
}

void sub_02071518 (UnkStruct_ov101_021D5D90 * param0, UnkFuncPtr_02071330 param1)
{
    param0->unk_D0 = param1;
}

int sub_02071520 (UnkStruct_ov101_021D5D90 * param0)
{
    void * v0 = sub_02071598(param0);
    return param0->unk_D0(param0, v0);
}

void sub_02071534 (UnkStruct_ov101_021D5D90 * param0, UnkFuncPtr_02071330_2 param1)
{
    param0->unk_D4 = param1;
}

void sub_0207153C (UnkStruct_ov101_021D5D90 * param0)
{
    void * v0 = sub_02071598(param0);
    param0->unk_D4(param0, v0);
}

void sub_02071550 (UnkStruct_ov101_021D5D90 * param0, UnkFuncPtr_02071330_3 param1)
{
    param0->unk_D8 = param1;
}

void sub_02071558 (UnkStruct_ov101_021D5D90 * param0)
{
    void * v0 = sub_02071598(param0);
    param0->unk_D8(param0, v0);
}

void sub_0207156C (UnkStruct_ov101_021D5D90 * param0, UnkFuncPtr_02071330_1 param1)
{
    param0->unk_DC = param1;
}

void sub_02071574 (UnkStruct_ov101_021D5D90 * param0)
{
    void * v0 = sub_02071598(param0);
    param0->unk_DC(param0, v0);
}

void sub_02071588 (UnkStruct_ov101_021D5D90 * param0, UnkFuncPtr_02071330_4 param1)
{
    param0->unk_E0 = param1;
}

void sub_02071590 (UnkStruct_ov101_021D5D90 * param0, UnkFuncPtr_02071330_5 param1)
{
    param0->unk_E4 = param1;
}

void * sub_02071598 (UnkStruct_ov101_021D5D90 * param0)
{
    return param0->unk_30;
}

void sub_0207159C (UnkStruct_ov101_021D5D90 * param0, int param1)
{
    void * v0;

    v0 = sub_02071598(param0);
    memset(v0, 0, param1);
}

static void sub_020715B0 (UnkStruct_ov101_021D5D90 * param0, int param1)
{
    param0->unk_04 = param1;
}

int sub_020715B4 (const UnkStruct_ov101_021D5D90 * param0)
{
    return param0->unk_04;
}

static void sub_020715B8 (UnkStruct_ov101_021D5D90 * param0, const void * param1)
{
    param0->unk_0C = param1;
}

const void * sub_020715BC (const UnkStruct_ov101_021D5D90 * param0)
{
    return param0->unk_0C;
}

void sub_020715C0 (UnkStruct_ov101_021D5D90 * param0, int param1)
{
    param0->unk_08 = param1;
}

int sub_020715C4 (const UnkStruct_ov101_021D5D90 * param0)
{
    return param0->unk_08;
}

static void sub_020715C8 (UnkStruct_ov101_021D5D90 * param0, SysTask * param1)
{
    param0->unk_10 = param1;
}

static SysTask * sub_020715CC (UnkStruct_ov101_021D5D90 * param0)
{
    return param0->unk_10;
}

static void sub_020715D0 (UnkStruct_ov101_021D5D90 * param0, const UnkStruct_020711EC * param1)
{
    param0->unk_14 = param1;
}

void sub_020715D4 (UnkStruct_ov101_021D5D90 * param0, const VecFx32 * param1)
{
    param0->unk_24 = *param1;
}

void sub_020715E4 (UnkStruct_ov101_021D5D90 * param0, VecFx32 * param1)
{
    *param1 = param0->unk_24;
}

int sub_020715F4 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    return 1;
}

void sub_020715F8 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    return;
}

void sub_020715FC (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    return;
}

void sub_02071600 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    return;
}

void sub_02071604 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    return;
}

void sub_02071608 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    return;
}
