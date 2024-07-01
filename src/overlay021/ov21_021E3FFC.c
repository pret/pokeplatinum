#include "overlay021/ov21_021E3FFC.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02009DC8_decl.h"
#include "struct_defs/struct_0205AA50.h"

#include "overlay021/ov21_021D0D80.h"
#include "overlay021/ov21_021D1FA4.h"
#include "overlay021/ov21_021D3208.h"
#include "overlay021/ov21_021E29DC.h"
#include "overlay021/ov21_021E4CA4.h"
#include "overlay021/struct_ov21_021D0F60_decl.h"
#include "overlay021/struct_ov21_021D13FC.h"
#include "overlay021/struct_ov21_021D2648.h"
#include "overlay021/struct_ov21_021D3320.h"
#include "overlay021/struct_ov21_021E68F4.h"
#include "overlay021/struct_ov21_021E6A68.h"
#include "overlay021/struct_ov21_021E6B20.h"

#include "cell_actor.h"
#include "heap.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_0200762C.h"
#include "unk_020093B4.h"
#include "sprite_util.h"
#include "unk_0200A328.h"
#include "unk_02018340.h"

typedef struct {
    int *unk_00;
    UnkStruct_ov21_021D3320 *unk_04;
    UnkStruct_ov21_021E68F4 *unk_08;
    UnkStruct_ov21_021E68F4 *unk_0C;
} UnkStruct_ov21_021E40F4;

typedef struct {
    UnkStruct_ov21_021D13FC *unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
} UnkStruct_ov21_021E4108;

typedef struct {
    const SNDWaveData *unk_00;
    int unk_04;
    int unk_08;
    u8 unk_0C[9];
} UnkStruct_ov21_021E4898;

typedef struct {
    CellActor *unk_00;
    int unk_04;
} UnkStruct_ov21_021E4B30_sub1;

typedef struct {
    CellActor *unk_00;
    int unk_04;
    int unk_08;
} UnkStruct_ov21_021E4B30_sub2;

typedef struct {
    UnkStruct_ov21_021E4B30_sub1 unk_00[9];
    UnkStruct_ov21_021E4B30_sub2 unk_48;
} UnkStruct_ov21_021E4B30;

typedef struct {
    UnkStruct_ov21_021D2648 unk_00;
    UnkStruct_ov21_021E4B30 unk_20[9];
    SpriteResource *unk_314[4];
    int unk_324;
    int unk_328;
    int unk_32C;
} UnkStruct_ov21_021E4360;

static UnkStruct_ov21_021E40F4 *ov21_021E4080(int param0, UnkStruct_ov21_021D0F60 *param1);
static UnkStruct_ov21_021E4108 *ov21_021E40C8(int param0, UnkStruct_ov21_021D0F60 *param1);
static void ov21_021E40F4(UnkStruct_ov21_021E40F4 *param0);
static void ov21_021E4108(UnkStruct_ov21_021E4108 *param0);
static int ov21_021E411C(void);
static int ov21_021E4120(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021E4168(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021E4194(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021E41A8(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int ov21_021E4268(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int ov21_021E4288(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static void ov21_021E4328(UnkStruct_ov21_021E4108 *param0, const UnkStruct_ov21_021E40F4 *param1);
static void ov21_021E4360(UnkStruct_ov21_021E4360 *param0);
static void ov21_021E4394(UnkStruct_ov21_021E4360 *param0);
static void ov21_021E43C8(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const UnkStruct_ov21_021E40F4 *param2, BOOL param3);
static BOOL ov21_021E4440(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const UnkStruct_ov21_021E40F4 *param2, BOOL param3);
static void ov21_021E448C(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const UnkStruct_ov21_021E40F4 *param2, BOOL param3);
static BOOL ov21_021E4518(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const UnkStruct_ov21_021E40F4 *param2, BOOL param3);
static void ov21_021E4590(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const UnkStruct_ov21_021E40F4 *param2, const UnkStruct_ov21_021E4898 *param3, int param4);
static void ov21_021E45DC(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1);
static void ov21_021E45FC(UnkStruct_ov21_021E4108 *param0, const UnkStruct_ov21_021E40F4 *param1, int param2);
static void ov21_021E4664(UnkStruct_ov21_021E4108 *param0);
static void ov21_021E46A8(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, int param2);
static void ov21_021E4770(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1);
static void ov21_021E47CC(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, int param2);
static void ov21_021E4868(UnkStruct_ov21_021E4360 *param0);
static void ov21_021E4890(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const UnkStruct_ov21_021E40F4 *param2, int param3);
static void ov21_021E4894(UnkStruct_ov21_021E4360 *param0);
static void ov21_021E4898(UnkStruct_ov21_021E4898 *param0, UnkStruct_ov21_021E40F4 *param1);
static void ov21_021E4ABC(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1);
static void ov21_021E4A28(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const UnkStruct_ov21_021E4898 *param2);
static void ov21_021E48B0(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const SNDWaveData *param2, int param3, int param4, int param5, int param6, int param7, int *param8);
static void ov21_021E49D0(UnkStruct_ov21_021E4108 *param0, int param1, int param2, int param3, int param4, int *param5);
static void ov21_021E495C(Window *param0, u8 param1, int param2, int param3, int *param4);
static void ov21_021E4C68(UnkStruct_ov21_021E4898 *param0, UnkStruct_ov21_021E40F4 *param1);
static void ov21_021E4AF4(UnkStruct_ov21_021E4360 *param0);
static void ov21_021E4B10(UnkStruct_ov21_021E4360 *param0, const UnkStruct_ov21_021E4898 *param1);
static void ov21_021E4B30(UnkStruct_ov21_021E4B30 *param0, int param1);
static void ov21_021E4B94(UnkStruct_ov21_021E4B30 *param0, int param1);
static void ov21_021E4C38(CellActor *param0, int param1);

void ov21_021E3FFC(UnkStruct_ov21_021E68F4 *param0, UnkStruct_ov21_021D0F60 *param1, int param2)
{
    UnkStruct_ov21_021E40F4 *v0;
    UnkStruct_ov21_021E4108 *v1;

    v0 = ov21_021E4080(param2, param1);
    v1 = ov21_021E40C8(param2, param1);

    param0->unk_00 = v0;
    param0->unk_04 = v1;
    param0->unk_20 = NULL;
    param0->unk_24 = ov21_021E411C();
    param0->unk_08[0] = ov21_021E4120;
    param0->unk_08[1] = ov21_021E4168;
    param0->unk_08[2] = ov21_021E4194;
    param0->unk_14[0] = ov21_021E41A8;
    param0->unk_14[1] = ov21_021E4268;
    param0->unk_14[2] = ov21_021E4288;
}

void ov21_021E4054(UnkStruct_ov21_021E68F4 *param0)
{
    ov21_021E40F4(param0->unk_00);
    ov21_021E4108(param0->unk_04);
}

void ov21_021E4068(UnkStruct_ov21_021E68F4 *param0, int param1, int param2)
{
    UnkStruct_ov21_021E4108 *v0 = param0->unk_04;

    v0->unk_04 = param1;
    v0->unk_08 = param2;
}

void ov21_021E4070(UnkStruct_ov21_021E68F4 *param0, int param1)
{
    UnkStruct_ov21_021E4108 *v0 = param0->unk_04;
    v0->unk_0C = param1;
}

void ov21_021E4078(UnkStruct_ov21_021E68F4 *param0, int param1)
{
    UnkStruct_ov21_021E4108 *v0 = param0->unk_04;
    v0->unk_10 = param1;
}

static UnkStruct_ov21_021E40F4 *ov21_021E4080(int param0, UnkStruct_ov21_021D0F60 *param1)
{
    UnkStruct_ov21_021E40F4 *v0;
    UnkStruct_ov21_021E68F4 *v1;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021E40F4));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E40F4));

    v0->unk_00 = ov21_021D138C(param1);
    v0->unk_04 = ov21_021D13EC(param1);
    v0->unk_08 = ov21_021D1410(param1, 5);
    v0->unk_0C = ov21_021D1430(param1, 5);

    return v0;
}

static UnkStruct_ov21_021E4108 *ov21_021E40C8(int param0, UnkStruct_ov21_021D0F60 *param1)
{
    UnkStruct_ov21_021E4108 *v0;
    UnkStruct_ov21_021E68F4 *v1;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021E4108));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E4108));

    v0->unk_00 = ov21_021D13FC(param1);

    return v0;
}

static void ov21_021E40F4(UnkStruct_ov21_021E40F4 *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021E4108(UnkStruct_ov21_021E4108 *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static int ov21_021E411C(void)
{
    return 0;
}

static int ov21_021E4120(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021E40F4 *v0 = param1;
    UnkStruct_ov21_021E4898 *v1;
    int v2 = ov21_021D37BC(v0->unk_04);

    v1 = Heap_AllocFromHeap(param0->unk_04, sizeof(UnkStruct_ov21_021E4898));

    GF_ASSERT(v1);
    memset(v1, 0, sizeof(UnkStruct_ov21_021E4898));

    param0->unk_08 = v1;

    v1->unk_00 = sub_020050F8(v2);
    v1->unk_08 = sub_020050EC(v1->unk_00);

    ov21_021E4898(v1, v0);

    return 1;
}

static int ov21_021E4168(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021E40F4 *v0 = param1;
    UnkStruct_ov21_021E4898 *v1 = param0->unk_08;

    if (param0->unk_0C == 1) {
        return 1;
    }

    if (param0->unk_10 == 1) {
        return 0;
    }

    ov21_021E4898(v1, v0);
    ov21_021E4C68(v1, v0);

    return 0;
}

static int ov21_021E4194(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021E4898 *v0 = param0->unk_08;

    Heap_FreeToHeap(v0);
    param0->unk_08 = NULL;

    return 1;
}

static int ov21_021E41A8(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021E40F4 *v0 = param2;
    const UnkStruct_ov21_021E4898 *v1 = param3->unk_08;
    UnkStruct_ov21_021E4108 *v2 = param0;
    UnkStruct_ov21_021E4360 *v3 = param1->unk_08;
    BOOL v4;

    switch (param1->unk_00) {
    case 0:
        param1->unk_08 = Heap_AllocFromHeap(param1->unk_04, sizeof(UnkStruct_ov21_021E4360));
        memset(param1->unk_08, 0, sizeof(UnkStruct_ov21_021E4360));
        param1->unk_00++;
        break;
    case 1:
        ov21_021E4590(v3, v2, v0, v1, param1->unk_04);

        if (v2->unk_0C == 0) {
            ov21_021E43C8(v3, v2, v0, 1);
        } else {
            ov21_021E448C(v3, v2, v0, 1);
        }

        sub_0200564C(0, 3);

        param1->unk_00++;
        break;
    case 2:
        if (v2->unk_0C == 0) {
            v4 = ov21_021E4440(v3, v2, v0, 1);
        } else {
            v4 = ov21_021E4518(v3, v2, v0, 1);
        }

        if ((v4 == 1) && (Sound_CheckFade() == 0)) {
            sub_020049F4(1, 1);
            param1->unk_00++;
        }
        break;
    case 3:
        return 1;
    }

    return 0;
}

static int ov21_021E4268(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021E40F4 *v0 = param2;
    const UnkStruct_ov21_021E4898 *v1 = param3->unk_08;
    UnkStruct_ov21_021E4108 *v2 = param0;
    UnkStruct_ov21_021E4360 *v3 = param1->unk_08;

    ov21_021E4A28(v3, v2, v1);
    ov21_021E4B10(v3, v1);

    return 0;
}

static int ov21_021E4288(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021E40F4 *v0 = param2;
    const UnkStruct_ov21_021E4898 *v1 = param3->unk_08;
    UnkStruct_ov21_021E4108 *v2 = param0;
    UnkStruct_ov21_021E4360 *v3 = param1->unk_08;
    BOOL v4;

    switch (param1->unk_00) {
    case 0:
        if (v2->unk_0C == 0) {
            ov21_021E43C8(v3, v2, v0, 0);
        } else {
            ov21_021E448C(v3, v2, v0, 0);
        }

        sub_020049F4(1, 0);
        sub_0200560C(127, 3, 0);
        param1->unk_00++;
        break;
    case 1:
        if (v2->unk_0C == 0) {
            v4 = ov21_021E4440(v3, v2, v0, 0);
        } else {
            v4 = ov21_021E4518(v3, v2, v0, 0);
        }

        if (v4) {
            param1->unk_00++;
        }
        break;
    case 2:
        ov21_021E45DC(v3, v2);
        param1->unk_00++;
        break;
    case 3:
        Heap_FreeToHeap(param1->unk_08);
        param1->unk_08 = NULL;
        param1->unk_00++;
        break;
    case 4:
        return 1;
    }

    return 0;
}

static void ov21_021E4328(UnkStruct_ov21_021E4108 *param0, const UnkStruct_ov21_021E40F4 *param1)
{
    Sprite *v0 = ov21_021D2170(param0->unk_00);
    int v1 = ov21_021D37BC(param1->unk_04);

    ov21_021D1890(param0->unk_00, param1->unk_04, v1, 2, 48, 64);
    sub_02007DEC(v0, 6, 0);
}

static void ov21_021E4360(UnkStruct_ov21_021E4360 *param0)
{
    int v0, v1;

    for (v0 = 0; v0 < 9; v0++) {
        for (v1 = 0; v1 < 9; v1++) {
            CellActor_SetExplicitOAMMode(param0->unk_20[v0].unk_00[v1].unk_00, GX_OAM_MODE_XLU);
        }

        CellActor_SetExplicitOAMMode(param0->unk_20[v0].unk_48.unk_00, GX_OAM_MODE_XLU);
    }
}

static void ov21_021E4394(UnkStruct_ov21_021E4360 *param0)
{
    int v0, v1;

    for (v0 = 0; v0 < 9; v0++) {
        for (v1 = 0; v1 < 9; v1++) {
            CellActor_SetExplicitOAMMode(param0->unk_20[v0].unk_00[v1].unk_00, GX_OAM_MODE_NORMAL);
        }

        CellActor_SetExplicitOAMMode(param0->unk_20[v0].unk_48.unk_00, GX_OAM_MODE_NORMAL);
    }
}

static void ov21_021E43C8(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const UnkStruct_ov21_021E40F4 *param2, BOOL param3)
{
    ov21_021E4360(param0);

    if (ov21_021E2A54(param2->unk_08)) {
        if (param3) {
            ov21_021D23F8(&param1->unk_00->unk_168, 3, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            ov21_021D23F8(&param1->unk_00->unk_168, 3, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        }
    }

    ov21_021D24FC(param1->unk_00, &param1->unk_00->unk_168);
}

static BOOL ov21_021E4440(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const UnkStruct_ov21_021E40F4 *param2, BOOL param3)
{
    BOOL v0;

    if (ov21_021E2A54(param2->unk_08)) {
        v0 = ov21_021D2424(&param1->unk_00->unk_168);
    } else {
        v0 = ov21_021D24EC(&param1->unk_00->unk_168);
    }

    if (v0) {
        if (param3) {
            ov21_021E4394(param0);
        }

        return 1;
    } else {
        ov21_021D24FC(param1->unk_00, &param1->unk_00->unk_168);
    }

    return 0;
}

static void ov21_021E448C(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const UnkStruct_ov21_021E40F4 *param2, BOOL param3)
{
    ov21_021E4360(param0);

    if (param3 == 0) {
        ov21_021D2648(&param0->unk_00, 48, param1->unk_04, 64, param1->unk_08, param1->unk_10);
    }

    if (ov21_021E2A54(param2->unk_08)) {
        if (param3) {
            ov21_021D23F8(&param1->unk_00->unk_168, param1->unk_10, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            ov21_021D23F8(&param1->unk_00->unk_168, param1->unk_10, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        }
    }
}

static BOOL ov21_021E4518(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const UnkStruct_ov21_021E40F4 *param2, BOOL param3)
{
    BOOL v0[2];
    int v1;

    if (param3 == 0) {
        v0[0] = ov21_021D2664(&param0->unk_00);
        ov21_021D2164(param1->unk_00, param0->unk_00.unk_00, param0->unk_00.unk_04);
    } else {
        v0[0] = 1;
    }

    if (ov21_021E2A54(param2->unk_08)) {
        v0[1] = ov21_021D2424(&param1->unk_00->unk_168);
    } else {
        v0[1] = ov21_021D24EC(&param1->unk_00->unk_168);
    }

    for (v1 = 0; v1 < 2; v1++) {
        if (v0[v1] == 0) {
            break;
        }
    }

    if (v1 == 2) {
        if (param3 == 1) {
            ov21_021E4394(param0);
        }

        return 1;
    }

    return 0;
}

static void ov21_021E4590(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const UnkStruct_ov21_021E40F4 *param2, const UnkStruct_ov21_021E4898 *param3, int param4)
{
    ov21_021E45FC(param1, param2, param4);
    ov21_021E46A8(param0, param1, param4);
    ov21_021E47CC(param0, param1, param4);
    ov21_021E4890(param0, param1, param2, param4);
    ov21_021E4328(param1, param2);
    ov21_021E4ABC(param0, param1);
    ov21_021E4AF4(param0);
}

static void ov21_021E45DC(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1)
{
    ov21_021E4894(param0);
    ov21_021E4868(param0);
    ov21_021E4770(param0, param1);
    ov21_021E4664(param1);
}

static void ov21_021E45FC(UnkStruct_ov21_021E4108 *param0, const UnkStruct_ov21_021E40F4 *param1, int param2)
{
    void *v0;
    NNSG2dScreenData *v1;

    ov21_021D2724(param0->unk_00, 33, param0->unk_00->unk_00, 3, 0, 0, 1, param2);
    v0 = ov21_021D27B8(param0->unk_00, 70, 1, &v1, param2);

    sub_020198C0(param0->unk_00->unk_00, 3, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);
    sub_0201C3C0(param0->unk_00->unk_00, 3);
}

static void ov21_021E4664(UnkStruct_ov21_021E4108 *param0)
{
    sub_0201C63C(param0->unk_00->unk_00, 1, 0, 0);
    BGL_WindowColor(&param0->unk_00->unk_04, 0, 0, 0, 256, 192);
    sub_02019EBC(param0->unk_00->unk_00, 1);
    sub_0201C2B4(&param0->unk_00->unk_04, 0);
}

static void ov21_021E46A8(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, int param2)
{
    UnkStruct_ov21_021D13FC *v0 = param1->unk_00;
    NARC *v1 = ov21_021D26E0(param1->unk_00);

    param0->unk_314[0] = sub_02009A4C(v0->unk_13C[0], v1, 116, 1, 116 + 11000, NNS_G2D_VRAM_TYPE_2DMAIN, param2);

    sub_0200A3DC(param0->unk_314[0]);
    sub_02009D4C(param0->unk_314[0]);

    param0->unk_314[1] = sub_02009B04(v0->unk_13C[1], v1, 19, 0, 19 + 11000, NNS_G2D_VRAM_TYPE_2DMAIN, 1, param2);

    sub_0200A640(param0->unk_314[1]);
    sub_02009D4C(param0->unk_314[1]);

    param0->unk_314[2] = sub_02009BC4(v0->unk_13C[2], v1, 117, 1, 117 + 11000, 2, param2);
    param0->unk_314[3] = sub_02009BC4(v0->unk_13C[3], v1, 115, 1, 115 + 11000, 3, param2);
}

static void ov21_021E4770(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1)
{
    UnkStruct_ov21_021D13FC *v0 = param1->unk_00;

    sub_0200A4E4(param0->unk_314[0]);
    sub_0200A6DC(param0->unk_314[1]);

    SpriteResourceCollection_Remove(v0->unk_13C[0], param0->unk_314[0]);
    SpriteResourceCollection_Remove(v0->unk_13C[1], param0->unk_314[1]);
    SpriteResourceCollection_Remove(v0->unk_13C[2], param0->unk_314[2]);
    SpriteResourceCollection_Remove(v0->unk_13C[3], param0->unk_314[3]);
}

static void ov21_021E47CC(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, int param2)
{
    CellActorResourceData v0;
    CellActorInitParams v1;
    UnkStruct_ov21_021D13FC *v2 = param1->unk_00;
    int v3, v4;

    sub_020093B4(&v0, 116 + 11000, 19 + 11000, 117 + 11000, 115 + 11000, 0xffffffff, 0xffffffff, 0, 0, v2->unk_13C[0], v2->unk_13C[1], v2->unk_13C[2], v2->unk_13C[3], NULL, NULL);

    v1.collection = v2->unk_138;
    v1.resourceData = &v0;
    v1.priority = 17;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = param2;
    v1.position.x = 0;
    v1.position.y = 0;

    for (v3 = 0; v3 < 9; v3++) {
        for (v4 = 0; v4 < 9; v4++) {
            param0->unk_20[v3].unk_00[v4].unk_00 = CellActorCollection_Add(&v1);
        }

        param0->unk_20[v3].unk_48.unk_00 = CellActorCollection_Add(&v1);
    }
}

static void ov21_021E4868(UnkStruct_ov21_021E4360 *param0)
{
    int v0, v1;

    for (v0 = 0; v0 < 9; v0++) {
        for (v1 = 0; v1 < 9; v1++) {
            CellActor_Delete(param0->unk_20[v0].unk_00[v1].unk_00);
        }

        CellActor_Delete(param0->unk_20[v0].unk_48.unk_00);
    }
}

static void ov21_021E4890(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const UnkStruct_ov21_021E40F4 *param2, int param3)
{
    return;
}

static void ov21_021E4894(UnkStruct_ov21_021E4360 *param0)
{
    return;
}

static void ov21_021E4898(UnkStruct_ov21_021E4898 *param0, UnkStruct_ov21_021E40F4 *param1)
{
    int v0 = ov21_021E4D1C(param1->unk_0C);
    param0->unk_04 = sub_02005188(1, param0->unk_00, v0);
}

static void ov21_021E48B0(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const SNDWaveData *param2, int param3, int param4, int param5, int param6, int param7, int *param8)
{
    const u8 *v0 = sub_020050E0(param2);
    int v1;
    int v2;
    int v3;

    BGL_WindowColor(&param1->unk_00->unk_04, 0, param6, param7 - 32, 1 * (param5), 32 * 2);

    v3 = param4 - param3;

    for (v1 = 0; v1 < param5; v1++) {
        v2 = FX_Mul(v3 << FX32_SHIFT, v1 << FX32_SHIFT);
        v2 = FX_Div(v2, param5 << FX32_SHIFT) >> FX32_SHIFT;
        v2 += param3;

        ov21_021E495C(&param1->unk_00->unk_04, v0[v2], param6, param7, param8);

        param6 += 1;
    }
}

static void ov21_021E495C(Window *param0, u8 param1, int param2, int param3, int *param4)
{
    int v0;
    int v1;
    int v2, v3;

    if (param1 > 127) {
        v0 = param1 - 255;
    } else {
        v0 = param1;
    }

    if (v0 != 0) {
        v0 = FX_Mul(32 << FX32_SHIFT, v0 << FX32_SHIFT);
        v0 = FX_Div(v0, 127 << FX32_SHIFT) >> FX32_SHIFT;
    }

    v2 = (param3 + v0);
    v3 = (param3 + (*param4));

    if (v2 > v3) {
        v1 = v3;
        v2 = v2 - v3;
    } else {
        v1 = v2;
        v2 = v3 - v2;
    }

    v2++;
    v2 *= 1;

    BGL_WindowColor(param0, 6, param2, v1, 1, v2);

    *param4 = v0;
}

static void ov21_021E49D0(UnkStruct_ov21_021E4108 *param0, int param1, int param2, int param3, int param4, int *param5)
{
    int v0;

    BGL_WindowColor(&param0->unk_00->unk_04, 0, param3, param4 - 32, 1 * (param2 - param1), 32 * 2);

    for (v0 = param1; v0 < param2; v0++) {
        ov21_021E495C(&param0->unk_00->unk_04, 0, param3, param4, param5);
        param3 += 1;
    }
}

static void ov21_021E4A28(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const UnkStruct_ov21_021E4898 *param2)
{
    int v0;

    param0->unk_324 += 4;
    param0->unk_324 %= 256;

    v0 = param0->unk_324 - (4 * 2);

    if (v0 < 0) {
        v0 += 256;
    }

    if (param0->unk_32C != param2->unk_04) {
        ov21_021E48B0(param0, param1, param2->unk_00, param0->unk_32C, param2->unk_04, 4, v0, 151, &param0->unk_328);
    } else {
        ov21_021E49D0(param1, 0, 4, v0, 151, &param0->unk_328);
    }

    sub_0201C63C(param1->unk_00->unk_00, 1, 0, param0->unk_324);
    sub_0201A9A4(&param1->unk_00->unk_04);

    param0->unk_32C = param2->unk_04;
}

static void ov21_021E4ABC(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1)
{
    sub_0201C2B4(&param1->unk_00->unk_04, 9);
    ov21_021E49D0(param1, 0, 256, 0, 151, &param0->unk_328);
    sub_0201A954(&param1->unk_00->unk_04);
}

static void ov21_021E4AF4(UnkStruct_ov21_021E4360 *param0)
{
    int v0;

    for (v0 = 0; v0 < 9; v0++) {
        ov21_021E4B30(&param0->unk_20[v0], v0);
    }
}

static void ov21_021E4B10(UnkStruct_ov21_021E4360 *param0, const UnkStruct_ov21_021E4898 *param1)
{
    int v0;

    for (v0 = 0; v0 < 9; v0++) {
        ov21_021E4B94(&param0->unk_20[v0], param1->unk_0C[v0]);
    }
}

static void ov21_021E4B30(UnkStruct_ov21_021E4B30 *param0, int param1)
{
    int v0;
    VecFx32 v1;

    v1.x = (112 + (16 * param1)) << FX32_SHIFT;
    v1.y = 96 << FX32_SHIFT;

    for (v0 = 0; v0 < 9; v0++) {
        CellActor_SetPosition(param0->unk_00[v0].unk_00, &v1);
        CellActor_SetDrawFlag(param0->unk_00[v0].unk_00, 0);

        v1.y += -8 << FX32_SHIFT;

        CellActor_SetAnim(param0->unk_00[v0].unk_00, 1);
    }

    v1.y = 96 << FX32_SHIFT;

    CellActor_SetPosition(param0->unk_48.unk_00, &v1);
    CellActor_SetDrawFlag(param0->unk_48.unk_00, 0);
}

static void ov21_021E4B94(UnkStruct_ov21_021E4B30 *param0, int param1)
{
    int v0;
    int v1 = 0;

    for (v0 = 0; v0 < param1; v0++) {
        CellActor_SetDrawFlag(param0->unk_00[v0].unk_00, 1);
        param0->unk_00[v0].unk_04 = 2 * (v0 + 1);
    }

    for (v0 = 0; v0 < 9; v0++) {
        if (CellActor_GetDrawFlag(param0->unk_00[v0].unk_00)) {
            if ((param0->unk_00[v0].unk_04 - 1) > 0) {
                param0->unk_00[v0].unk_04--;
                v1 = v0 + 1;
            } else {
                CellActor_SetDrawFlag(param0->unk_00[v0].unk_00, 0);
            }
        }
    }

    if (param0->unk_48.unk_04 <= v1) {
        ov21_021E4C38(param0->unk_48.unk_00, v1);
        param0->unk_48.unk_08 = 16;

        if (param0->unk_48.unk_04 < v1) {
            CellActor_SetDrawFlag(param0->unk_48.unk_00, 1);
        }

        param0->unk_48.unk_04 = v1;
    }

    if (param0->unk_48.unk_04 > 0) {
        if (param0->unk_48.unk_08 < 0) {
            param0->unk_48.unk_04--;
            ov21_021E4C38(param0->unk_48.unk_00, param0->unk_48.unk_04);
        } else {
            param0->unk_48.unk_08--;
        }
    } else {
        CellActor_SetDrawFlag(param0->unk_48.unk_00, 0);
    }
}

static void ov21_021E4C38(CellActor *param0, int param1)
{
    VecFx32 v0;
    const VecFx32 *v1;

    v1 = CellActor_GetPosition(param0);
    v0 = *v1;
    v0.y = (96 + (-8 * param1)) << FX32_SHIFT;

    CellActor_SetPosition(param0, &v0);
}

static void ov21_021E4C68(UnkStruct_ov21_021E4898 *param0, UnkStruct_ov21_021E40F4 *param1)
{
    int v0 = ov21_021E4D1C(param1->unk_0C);

    memset(param0->unk_0C, 0, sizeof(u8) * 9);

    if (sub_0200598C() != 0) {
        sub_020051D0(param0->unk_00, param0->unk_0C, 9, v0);
    }
}
