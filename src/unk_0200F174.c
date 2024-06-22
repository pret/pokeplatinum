#include <nitro.h>
#include <string.h>

#include "enums.h"

#include "sys_task_manager.h"

#include "struct_defs/struct_0200F600.h"
#include "functypes/funcptr_0200F634.h"
#include "functypes/funcptr_0200F6D8.h"
#include "struct_defs/struct_0200F7A0.h"
#include "struct_defs/struct_02010658.h"

#include "sys_task.h"
#include "unk_0200F174.h"
#include "unk_0200F85C.h"
#include "unk_02012480.h"
#include "unk_02017728.h"
#include "heap.h"

typedef struct {
    UnkStruct_0200F600 * unk_00;
    void * unk_04;
    UnkFuncPtr_0200F634 unk_08;
    int unk_0C;
} UnkStruct_0200F6D8;

typedef struct {
    UnkStruct_0200F600 * unk_00;
    int unk_04;
} UnkStruct_0200F704;

typedef struct {
    int unk_00;
    BOOL unk_04;
    BOOL unk_08;
    BOOL unk_0C;
    BOOL unk_10;
} UnkStruct_0200F4C4;

typedef struct {
    UnkStruct_0200F4C4 unk_00;
    UnkStruct_0200F7A0 unk_14;
    UnkStruct_0200F7A0 unk_44;
    UnkStruct_0200F600 unk_74;
    UnkStruct_02010658 unk_8C;
    u16 unk_14C;
    u8 unk_14E;
    u8 unk_14F;
    u16 unk_150;
} UnkStruct_0200F46C;

static void sub_0200F46C(UnkStruct_0200F46C * param0);
static void sub_0200F814(UnkStruct_0200F46C * param0);
static void sub_0200F600(UnkStruct_0200F600 * param0);
static void sub_0200F61C(void * param0);
static void sub_0200F728(SysTask * param0, void * param1);
static void sub_0200F748(SysTask * param0, void * param1);
static BOOL sub_0200F4C4(UnkStruct_0200F4C4 * param0, UnkStruct_0200F7A0 * param1, UnkStruct_0200F7A0 * param2);
static void sub_0200F534(BOOL * param0, UnkStruct_0200F7A0 * param1);
static BOOL sub_0200F550(UnkStruct_0200F7A0 * param0);
static void sub_0200F564(int param0, UnkStruct_0200F4C4 * param1);
static void sub_0200F5D4(UnkStruct_0200F7A0 * param0, int param1, int param2, int param3, int param4, void * param5, int param6, UnkStruct_02010658 * param7, UnkStruct_0200F600 * param8, int param9, u16 param10);
static void sub_0200F5C8(UnkStruct_0200F4C4 * param0, int param1, BOOL param2, BOOL param3);
static u16 sub_0200F768(UnkStruct_0200F46C * param0, u16 param1);
static u16 sub_0200F77C(const UnkStruct_0200F46C * param0);
static void sub_0200F7E4(UnkStruct_0200F7A0 * param0);
static void sub_0200F7B4(UnkStruct_0200F7A0 * param0);
static void sub_0200F7A0(SysTask * param0, void * param1);

const static UnkFuncPtr_0200F6D8 Unk_020E5074[] = {
    sub_0200F85C,
    sub_0200F878,
    sub_0200F898,
    sub_0200F8D4,
    sub_0200F90C,
    sub_0200F948,
    sub_0200F980,
    sub_0200F9AC,
    sub_0200F9D8,
    sub_0200FA14,
    sub_0200FA4C,
    sub_0200FA88,
    sub_0200FAC0,
    sub_0200FAEC,
    sub_0200FB18,
    sub_0200FB4C,
    sub_0200FB7C,
    sub_0200FBA8,
    sub_0200FBD4,
    sub_0200FC00,
    sub_0200FC2C,
    sub_0200FC58,
    sub_0200FC84,
    sub_0200FCB0,
    sub_0200FCDC,
    sub_0200FD08,
    sub_0200FD34,
    sub_0200FD60,
    sub_0200FD8C,
    sub_0200FDE0,
    sub_0200FE30,
    sub_0200FE6C,
    sub_0200FEA4,
    sub_0200FEEC,
    sub_0200FF30,
    sub_0200FF78,
    sub_0200FFBC,
    sub_0200FFE8,
    sub_02010014,
    sub_02010040,
    sub_0201006C,
    sub_020100A8
};

static UnkStruct_0200F46C Unk_021BF474;

void sub_0200F174 (int param0, int param1, int param2, u16 param3, int param4, int param5, int param6)
{
    UnkStruct_0200F46C * v0;
    u16 v1;

    GF_ASSERT(param4);
    GF_ASSERT(param5);
    GF_ASSERT(Unk_021BF474.unk_14C == 0);

    v0 = &Unk_021BF474;

    sub_0200F814(v0);
    sub_0200F564(param0, &v0->unk_00);
    sub_0200F600(&v0->unk_74);

    v1 = sub_0200F768(v0, param3);

    sub_0200F5D4(&v0->unk_14, param1, param4, param5, 0, NULL, 0, &v0->unk_8C, &v0->unk_74, param6, v1);
    sub_0200F5D4(&v0->unk_44, param2, param4, param5, 0, NULL, 1, &v0->unk_8C, &v0->unk_74, param6, v1);

    v0->unk_14C = 1;

    sub_0200F534(&v0->unk_00.unk_04, &v0->unk_14);
    sub_0200F534(&v0->unk_00.unk_08, &v0->unk_44);

    if (v0->unk_00.unk_0C) {
        sub_0200F7B4(&v0->unk_14);
        v0->unk_14E = 1;
    }

    if (v0->unk_00.unk_10) {
        sub_0200F7B4(&v0->unk_44);
        v0->unk_14F = 1;
    }
}

void sub_0200F27C (void)
{
    UnkStruct_0200F46C * v0 = &Unk_021BF474;
    BOOL v1;

    if (v0->unk_14C) {
        v1 = sub_0200F4C4(&v0->unk_00, &v0->unk_14, &v0->unk_44);

        if (v1 == 1) {
            sub_0200F46C(v0);
        }
    }
}

BOOL ScreenWipe_Done (void)
{
    if (Unk_021BF474.unk_14C) {
        return 0;
    }

    return 1;
}

void sub_0200F2C0 (void)
{
    sub_0200F6AC(&Unk_021BF474.unk_74, 0);
    sub_0200F6AC(&Unk_021BF474.unk_74, 1);

    if (Unk_021BF474.unk_00.unk_04) {
        Unk_021BF474.unk_14.unk_0C = 2;
    }

    if (Unk_021BF474.unk_00.unk_08) {
        Unk_021BF474.unk_44.unk_0C = 2;
    }

    sub_0200F534(&Unk_021BF474.unk_00.unk_04, &Unk_021BF474.unk_14);
    sub_0200F534(&Unk_021BF474.unk_00.unk_08, &Unk_021BF474.unk_44);

    Unk_021BF474.unk_14C = 0;
    Unk_021BF474.unk_14E = 0;
    Unk_021BF474.unk_14F = 0;

    sub_0200F814(&Unk_021BF474);
}

void sub_0200F32C (int param0)
{
    sub_02012480(GX_WNDMASK_NONE, param0);
}

void sub_0200F338 (int param0)
{
    sub_0200F44C(param0, 0);
}

void sub_0200F344 (int param0, u16 param1)
{
    int v0;

    if (param1 == 0xffff) {
        param1 = Unk_021BF474.unk_150;
    }

    if (param1 == 0x7fff) {
        v0 = 16;
    } else {
        v0 = -16;
    }

    sub_0200F44C(param0, v0);
}

void sub_0200F370 (u16 param0)
{
    int v0;

    if (param0 == 0xffff) {
        param0 = Unk_021BF474.unk_150;
    }

    if (param0 == 0x7fff) {
        v0 = 16;
    } else {
        v0 = -16;
    }

    sub_0200F44C(0, v0);
    sub_0200F44C(1, v0);

    Unk_021BF474.unk_150 = param0;
}

void sub_0200F3B0 (int param0, u16 param1)
{
    if (param1 == 0xffff) {
        param1 = Unk_021BF474.unk_150;
    }

    if (param0 == 0) {
        GX_LoadBGPltt((void *)&param1, 0, sizeof(short));
    } else {
        GXS_LoadBGPltt((void *)&param1, 0, sizeof(short));
    }

    sub_02012634(&Unk_021BF474.unk_8C, GX_WNDMASK_W0, param0);
    sub_02012650(&Unk_021BF474.unk_8C, GX_BLEND_ALL, 0, 0, param0);
    sub_02012698(&Unk_021BF474.unk_8C, 0, 0, 0, 0, 0, param0);
    sub_02012678(&Unk_021BF474.unk_8C, GX_BLEND_PLANEMASK_BD, 0, param0);
}

void sub_0200F42C (u16 param0)
{
    GX_LoadBGPltt((void *)&param0, 0, sizeof(short));
    GXS_LoadBGPltt((void *)&param0, 0, sizeof(short));
}

void sub_0200F44C (int param0, int param1)
{
    if (param0 == 0) {
        GX_SetMasterBrightness(param1);
    } else {
        GXS_SetMasterBrightness(param1);
    }
}

static void sub_0200F46C (UnkStruct_0200F46C * param0)
{
    param0->unk_14C = 0;
    param0->unk_150 = sub_0200F77C(param0);

    if (param0->unk_00.unk_0C) {
        sub_0200F7E4(&param0->unk_14);

        if (param0->unk_14.unk_28 == 0) {
            Unk_021BF474.unk_14E = 0;
        }
    }

    if (param0->unk_00.unk_10) {
        sub_0200F7E4(&param0->unk_44);

        if (param0->unk_14.unk_28 == 0) {
            Unk_021BF474.unk_14F = 0;
        }
    }

    sub_0200F814(param0);
}

static BOOL sub_0200F4C4 (UnkStruct_0200F4C4 * param0, UnkStruct_0200F7A0 * param1, UnkStruct_0200F7A0 * param2)
{
    switch (param0->unk_00) {
    case 0:
        sub_0200F534(&param0->unk_04, param1);
        sub_0200F534(&param0->unk_08, param2);
        break;
    case 1:
        if (param0->unk_04) {
            sub_0200F534(&param0->unk_04, param1);
        } else {
            sub_0200F534(&param0->unk_08, param2);
        }
        break;
    case 2:
        if (param0->unk_08) {
            sub_0200F534(&param0->unk_08, param2);
        } else {
            sub_0200F534(&param0->unk_04, param1);
        }
        break;
    }

    if ((param0->unk_04 == 0) && (param0->unk_08 == 0)) {
        return 1;
    }

    return 0;
}

static void sub_0200F534 (BOOL * param0, UnkStruct_0200F7A0 * param1)
{
    int v0;

    if (*param0) {
        v0 = sub_0200F550(param1);

        if (v0 == 1) {
            *param0 = 0;
        }
    }
}

static BOOL sub_0200F550 (UnkStruct_0200F7A0 * param0)
{
    return Unk_020E5074[param0->unk_00](param0);
}

static void sub_0200F564 (int param0, UnkStruct_0200F4C4 * param1)
{
    switch (param0) {
    case 0:
        sub_0200F5C8(param1, 0, 1, 1);
        break;
    case 1:
        sub_0200F5C8(param1, 1, 1, 1);
        break;
    case 2:
        sub_0200F5C8(param1, 2, 1, 1);
        break;
    case 3:
        sub_0200F5C8(param1, 1, 1, 0);
        break;
    case 4:
        sub_0200F5C8(param1, 2, 0, 1);
        break;
    }
}

static void sub_0200F5C8 (UnkStruct_0200F4C4 * param0, int param1, BOOL param2, BOOL param3)
{
    param0->unk_00 = param1;
    param0->unk_04 = param2;
    param0->unk_08 = param3;
    param0->unk_0C = param2;
    param0->unk_10 = param3;
}

static void sub_0200F5D4 (UnkStruct_0200F7A0 * param0, int param1, int param2, int param3, int param4, void * param5, int param6, UnkStruct_02010658 * param7, UnkStruct_0200F600 * param8, int param9, u16 param10)
{
    param0->unk_00 = param1;
    param0->unk_04 = param2;
    param0->unk_08 = param3;
    param0->unk_0C = param4;
    param0->unk_14 = param5;
    param0->unk_10 = param6;
    param0->unk_18 = param7;
    param0->unk_1C = param8;
    param0->unk_20 = param9;
    param0->unk_24 = param10;
}

static void sub_0200F600 (UnkStruct_0200F600 * param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        param0->unk_00[v0] = NULL;
        param0->unk_08[v0] = sub_0200F764;
        param0->unk_10[v0] = 0;
    }
}

static void sub_0200F61C (void * param0)
{
    int v0;
    UnkStruct_0200F600 * v1 = param0;

    for (v0 = 0; v0 < 2; v0++) {
        v1->unk_08[v0](v1->unk_00[v0]);
    }
}

void sub_0200F634 (UnkStruct_0200F600 * param0, void * param1, UnkFuncPtr_0200F634 param2, int param3)
{
    u8 v0 = 1;

    GF_ASSERT((param0->unk_10[param3] == 0));
    GF_ASSERT(param0->unk_08[param3] != NULL);

    if ((param0->unk_10[0] == 0) && (param0->unk_10[1] == 0)) {
        v0 = SetHBlankCallback(sub_0200F61C, param0);
    }

    GF_ASSERT(v0 == 1);

    param0->unk_00[param3] = param1;

    if (param2) {
        param0->unk_08[param3] = param2;
    } else {
        param0->unk_08[param3] = sub_0200F764;
    }

    param0->unk_10[param3] = 1;
}

void sub_0200F6AC (UnkStruct_0200F600 * param0, int param1)
{
    param0->unk_10[param1] = 0;

    if ((param0->unk_10[0] == 0) && (param0->unk_10[1] == 0)) {
        DisableHBlank();
    }

    param0->unk_08[param1] = sub_0200F764;
    param0->unk_00[param1] = NULL;
}

void sub_0200F6D8 (UnkStruct_0200F600 * param0, void * param1, UnkFuncPtr_0200F634 param2, int param3, int param4)
{
    UnkStruct_0200F6D8 * v0 = Heap_AllocFromHeapAtEnd(param4, sizeof(UnkStruct_0200F6D8));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_0C = param3;

    SysTask_ExecuteAfterVBlank(sub_0200F728, v0, 1024);
}

void sub_0200F704 (UnkStruct_0200F600 * param0, int param1, int param2)
{
    UnkStruct_0200F704 * v0 = Heap_AllocFromHeapAtEnd(param2, sizeof(UnkStruct_0200F704));

    v0->unk_00 = param0;
    v0->unk_04 = param1;

    SysTask_ExecuteAfterVBlank(sub_0200F748, v0, 1024);
}

static void sub_0200F728 (SysTask * param0, void * param1)
{
    UnkStruct_0200F6D8 * v0 = (UnkStruct_0200F6D8 *)param1;

    sub_0200F634(v0->unk_00, v0->unk_04, v0->unk_08, v0->unk_0C);
    SysTask_Done(param0);
    Heap_FreeToHeap(param1);
}

static void sub_0200F748 (SysTask * param0, void * param1)
{
    UnkStruct_0200F704 * v0 = (UnkStruct_0200F704 *)param1;

    sub_0200F6AC(v0->unk_00, v0->unk_04);
    SysTask_Done(param0);
    Heap_FreeToHeap(param1);
}

static void sub_0200F764 (void * param0)
{
    return;
}

static u16 sub_0200F768 (UnkStruct_0200F46C * param0, u16 param1)
{
    if (param1 == 0xffff) {
        return param0->unk_150;
    }

    return param1;
}

static u16 sub_0200F77C (const UnkStruct_0200F46C * param0)
{
    const UnkStruct_0200F7A0 * v0;

    if (param0->unk_00.unk_0C == 1) {
        v0 = &param0->unk_14;
    } else {
        v0 = &param0->unk_44;
    }

    if (v0->unk_28 == 1) {
        return v0->unk_24;
    }

    return param0->unk_150;
}

static void sub_0200F7A0 (SysTask * param0, void * param1)
{
    UnkStruct_0200F7A0 * v0 = param1;

    sub_0200F44C(v0->unk_10, 0);
    SysTask_Done(param0);
}

static void sub_0200F7B4 (UnkStruct_0200F7A0 * param0)
{
    if ((param0->unk_28 == 0) && ((param0->unk_24 == 0x7fff) || (param0->unk_24 == 0x0)) && (param0->unk_2C == 0)) {
        SysTask_ExecuteAfterVBlank(sub_0200F7A0, param0, 1024);
    }
}

static void sub_0200F7E4 (UnkStruct_0200F7A0 * param0)
{
    if ((param0->unk_28 == 1) && ((param0->unk_24 == 0x7fff) || (param0->unk_24 == 0x0)) && (param0->unk_2C == 0)) {
        sub_0200F344(param0->unk_10, param0->unk_24);
        sub_0200F32C(param0->unk_10);
    }
}

static void sub_0200F814 (UnkStruct_0200F46C * param0)
{
    memset(&param0->unk_00, 0, sizeof(UnkStruct_0200F4C4));
    memset(&param0->unk_14, 0, sizeof(UnkStruct_0200F7A0));
    memset(&param0->unk_44, 0, sizeof(UnkStruct_0200F7A0));
    memset(&param0->unk_74, 0, sizeof(UnkStruct_0200F600));
    memset(&param0->unk_8C, 0, sizeof(UnkStruct_02010658));
}
