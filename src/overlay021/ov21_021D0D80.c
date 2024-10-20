#include "overlay021/ov21_021D0D80.h"

#include <nitro.h>
#include <nnsys.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0209ACBC_decl.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay021/funcptr_ov21_021E9B74.h"
#include "overlay021/funcptr_ov21_021E9B9C.h"
#include "overlay021/ov21_021D1FA4.h"
#include "overlay021/ov21_021D3208.h"
#include "overlay021/ov21_021D3FE0.h"
#include "overlay021/ov21_021D423C.h"
#include "overlay021/ov21_021D4340.h"
#include "overlay021/ov21_021D4C0C.h"
#include "overlay021/ov21_021D5600.h"
#include "overlay021/ov21_021D5AEC.h"
#include "overlay021/ov21_021D76B0.h"
#include "overlay021/ov21_021D85B0.h"
#include "overlay021/ov21_021D94BC.h"
#include "overlay021/ov21_021DC9BC.h"
#include "overlay021/ov21_021DDD2C.h"
#include "overlay021/ov21_021DE668.h"
#include "overlay021/ov21_021DF734.h"
#include "overlay021/ov21_021E0C68.h"
#include "overlay021/ov21_021E1924.h"
#include "overlay021/ov21_021E29DC.h"
#include "overlay021/ov21_021E3FFC.h"
#include "overlay021/ov21_021E4CA4.h"
#include "overlay021/ov21_021E6014.h"
#include "overlay021/ov21_021E68F4.h"
#include "overlay021/ov21_021E737C.h"
#include "overlay021/ov21_021E8484.h"
#include "overlay021/struct_ov21_021D0D80.h"
#include "overlay021/struct_ov21_021D0D80_1.h"
#include "overlay021/struct_ov21_021D13FC.h"
#include "overlay021/struct_ov21_021D157C.h"
#include "overlay021/struct_ov21_021D22F8.h"
#include "overlay021/struct_ov21_021D3208.h"
#include "overlay021/struct_ov21_021D3320.h"
#include "overlay021/struct_ov21_021D37DC.h"
#include "overlay021/struct_ov21_021D3FE0_decl.h"
#include "overlay021/struct_ov21_021D423C_decl.h"
#include "overlay021/struct_ov21_021D4660.h"
#include "overlay021/struct_ov21_021D4C0C_decl.h"
#include "overlay021/struct_ov21_021D4CA0.h"
#include "overlay021/struct_ov21_021D4CB8.h"
#include "overlay021/struct_ov21_021E68F4.h"
#include "overlay022/struct_ov22_022559F8.h"

#include "cell_actor.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "overlay_manager.h"
#include "pokedex_data_index.h"
#include "pokemon.h"
#include "sprite_resource.h"
#include "strbuf.h"
#include "text.h"
#include "touch_screen.h"
#include "unk_020041CC.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "unk_0200A9DC.h"
#include "unk_0200F174.h"
#include "unk_02012744.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_0201E3D8.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "unk_0202419C.h"
#include "unk_0202631C.h"
#include "unk_0209ACBC.h"

typedef struct UnkStruct_ov21_021D0F60_t {
    BOOL unk_00;
    int unk_04;
    UnkStruct_0209ACBC *unk_08;
    UnkStruct_ov21_021D3320 unk_0C;
    UnkStruct_ov21_021D13FC unk_177C;
    int unk_1A60;
    int unk_1A64;
    int unk_1A68;
    int unk_1A6C;
    UnkStruct_ov21_021D423C *unk_1A70;
    UnkStruct_ov21_021D423C *unk_1A74;
    UnkStruct_ov21_021D423C *unk_1A78;
    UnkStruct_ov21_021D423C *unk_1A7C;
    UnkStruct_ov21_021D4660 unk_1A80;
    UnkStruct_ov21_021E68F4 unk_1A94[10];
    UnkStruct_ov21_021E68F4 unk_1C24[8];
    UnkStruct_ov21_021D3FE0 *unk_1D64;
    UnkStruct_ov21_021D3FE0 *unk_1D68;
    UnkStruct_ov21_021D3FE0 *unk_1D6C;
    UnkStruct_ov21_021D3FE0 *unk_1D70;
} UnkStruct_ov21_021D0F60;

typedef struct {
    UnkStruct_ov21_021D0F60 *unk_00;
} UnkStruct_ov21_021D0F18;

static void ov21_021D0F04(void *param0);
static void ov21_021D0F18(UnkStruct_ov21_021D0F18 *param0);
static void ov21_021D0F38(UnkStruct_ov21_021D0F18 *param0);
static BOOL ov21_021D0F58(UnkStruct_ov21_021D0F18 *param0);
static void ov21_021D1D08(UnkStruct_ov21_021D0F60 *param0);
static void ov21_021D1E74(void);
static void ov21_021D1E94(int param0);
static void ov21_021D1F10(void);
static void ov21_021D1F84(void);
static void ov21_021D1EEC(UnkStruct_ov21_021D0F60 *param0);

int ov21_021D0D80(OverlayManager *param0, int *param1)
{
    UnkStruct_ov21_021D0F18 *v0;
    UnkStruct_ov21_021D0D80 *v1;
    UnkStruct_ov21_021D0D80_1 v2;
    BOOL v3;

    sub_02004550(54, 0, 0);
    Heap_Create(3, 37, 0x40000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov21_021D0F18), 37);

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D0F18));

    sub_0201DBEC(8, 37);

    v1 = OverlayManager_Args(param0);

    {
        u32 v4;

        v4 = sub_0202756C(v1->unk_00, 487, 0);
        Pokedex_SetupGiratina(v4);
    }

    SetMainCallback(ov21_021D0F04, v0);
    DisableHBlank();
    sub_0201E3D8();

    v3 = sub_0201E450(4);
    GF_ASSERT(v3 == 1);

    ov21_021D12B0(37);

    v2.unk_00 = v1->unk_00;
    v2.unk_04 = v1->unk_04;
    v2.unk_08 = v1->unk_08;
    v2.unk_0C = v1->unk_0C;
    v2.unk_18 = v1->unk_18;
    v2.unk_10 = v1->unk_10;
    v2.unk_14 = v1->unk_14;
    v2.unk_1C = v1->unk_1C;

    v0->unk_00 = ov21_021D0F60(37, &v2);

    sub_0200544C(1, (127 / 3));

    return 1;
}

int ov21_021D0E3C(OverlayManager *param0, int *param1)
{
    UnkStruct_ov21_021D0F18 *v0 = OverlayManager_Data(param0);
    BOOL v1;

    switch (*param1) {
    case 0:
        ov21_021D0F18(v0);
        sub_0200AB4C(-16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 3);
        (*param1)++;
        break;
    case 1:
        v1 = ov21_021D10B8(v0->unk_00);

        if (v1 == 1) {
            v0->unk_00 = NULL;
            (*param1)++;
        }
        break;
    case 2:
        ov21_021D0F38(v0);
        (*param1)++;
        break;
    case 3:
        if (ov21_021D0F58(v0)) {
            sub_0200F32C(0);
            sub_0200F32C(1);
            G2_BlendNone();
            G2S_BlendNone();
            return 1;
        }
        break;
    }

    return 0;
}

int ov21_021D0EC8(OverlayManager *param0, int *param1)
{
    UnkStruct_ov21_021D0F18 *v0 = OverlayManager_Data(param0);
    BOOL v1;

    SetMainCallback(NULL, NULL);

    v1 = sub_0201E530();
    GF_ASSERT(v1 == 1);

    ov21_021D12C4();
    sub_0201DC3C();
    OverlayManager_FreeData(param0);
    Heap_Destroy(37);
    sub_0200544C(1, 127);

    return 1;
}

static void ov21_021D0F04(void *param0)
{
    UnkStruct_ov21_021D0F18 *v0 = param0;

    if (v0->unk_00) {
        ov21_021D12D8(v0->unk_00);
    }

    sub_0201DCAC();
}

static void ov21_021D0F18(UnkStruct_ov21_021D0F18 *param0)
{
    sub_0200F174(0, 1, 1, 0x0, 6, 1, 37);
}

static void ov21_021D0F38(UnkStruct_ov21_021D0F18 *param0)
{
    sub_0200F174(0, 0, 0, 0x0, 6, 1, 37);
}

static BOOL ov21_021D0F58(UnkStruct_ov21_021D0F18 *param0)
{
    return ScreenWipe_Done();
}

const static UnkFuncPtr_ov21_021E9B74 Unk_ov21_021E9B74[10] = {
    ov21_021D5AEC,
    ov21_021D85B0,
    ov21_021DE668,
    ov21_021DF734,
    ov21_021E0C68,
    ov21_021E29DC,
    ov21_021DC9BC,
    ov21_021E3FFC,
    ov21_021E6014,
    ov21_021E737C
};

const static UnkFuncPtr_ov21_021E9B74 Unk_ov21_021E9B34[8] = {
    ov21_021D76B0,
    ov21_021D94BC,
    ov21_021E1924,
    ov21_021E332C,
    ov21_021DDD2C,
    ov21_021E4CA4,
    ov21_021E68F4,
    ov21_021E8484
};

const static UnkFuncPtr_ov21_021E9B9C Unk_ov21_021E9B9C[10] = {
    ov21_021D5B50,
    ov21_021D8610,
    ov21_021DE6C0,
    ov21_021DF78C,
    ov21_021E0CC0,
    ov21_021E2A3C,
    ov21_021DCA14,
    ov21_021E4054,
    ov21_021E6074,
    ov21_021E73D4
};

const static UnkFuncPtr_ov21_021E9B9C Unk_ov21_021E9B54[8] = {
    ov21_021D7710,
    ov21_021D951C,
    ov21_021E1984,
    ov21_021E338C,
    ov21_021DDD8C,
    ov21_021E4D04,
    ov21_021E6954,
    ov21_021E84E4
};

UnkStruct_ov21_021D0F60 *ov21_021D0F60(int param0, const UnkStruct_ov21_021D0D80_1 *param1)
{
    UnkStruct_ov21_021D0F60 *v0;
    int v1;
    UnkStruct_ov21_021D3208 v2;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021D0F60));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D0F60));

    v0->unk_04 = param0;
    v0->unk_08 = param1->unk_1C;
    v0->unk_1A70 = ov21_021D423C(param0);
    v0->unk_1A74 = ov21_021D423C(param0);
    v0->unk_1A78 = ov21_021D423C(param0);
    v0->unk_1A7C = ov21_021D423C(param0);
    v0->unk_1D64 = ov21_021D3FE0(param0);
    v0->unk_1D68 = ov21_021D3FE0(param0);
    v0->unk_1D6C = ov21_021D3FE0(param0);
    v0->unk_1D70 = ov21_021D3FE0(param0);

    v2.unk_00 = param1->unk_00;
    v2.unk_04 = param1->unk_04;
    v2.unk_08 = param1->unk_08;
    v2.unk_0C = param1->unk_0C;
    v2.unk_10 = param1->unk_10;
    v2.unk_14 = param1->unk_14;
    v2.unk_18 = param1->unk_18;
    v2.unk_1C = sub_0209ACE4(param1->unk_1C);
    v2.unk_20 = sub_0209ACEC(param1->unk_1C);

    ov21_021D3208(&v0->unk_0C, &v2, param0);
    ov21_021D1FA4(&v0->unk_177C, param0);

    for (v1 = 0; v1 < 10; v1++) {
        if (Unk_ov21_021E9B74[v1]) {
            Unk_ov21_021E9B74[v1](&v0->unk_1A94[v1], v0, param0);
        }
    }

    for (v1 = 0; v1 < 8; v1++) {
        if (Unk_ov21_021E9B34[v1]) {
            Unk_ov21_021E9B34[v1](&v0->unk_1C24[v1], v0, param0);
        }
    }

    ov21_021D47F0(param0, &v0->unk_1A80, v0, 1);
    ov21_021D1EEC(v0);

    return v0;
}

BOOL ov21_021D10B8(UnkStruct_ov21_021D0F60 *param0)
{
    GF_ASSERT(param0);

    ov21_021D3960(&param0->unk_0C);

    if ((ov21_021D42D4(param0->unk_1A78) == 0) && (ov21_021D42D4(param0->unk_1A70) == 0) && (ov21_021D42D4(param0->unk_1A7C) == 0) && (ov21_021D42D4(param0->unk_1A74) == 0)) {
        ov21_021D4194(param0->unk_1D6C, 0);
        ov21_021D4194(param0->unk_1D70, 0);
        ov21_021D4194(param0->unk_1D64, 0);
        ov21_021D4194(param0->unk_1D68, 0);
    } else {
        ov21_021D4194(param0->unk_1D6C, 1);
        ov21_021D4194(param0->unk_1D70, 1);
        ov21_021D4194(param0->unk_1D64, 1);
        ov21_021D4194(param0->unk_1D68, 1);
    }

    ov21_021D4078(param0->unk_1D6C);
    ov21_021D4078(param0->unk_1D70);
    ov21_021D4078(param0->unk_1D64);
    ov21_021D4078(param0->unk_1D68);

    ov21_021D4100(param0->unk_1D6C);
    ov21_021D4100(param0->unk_1D70);
    ov21_021D4100(param0->unk_1D64);
    ov21_021D4100(param0->unk_1D68);

    if ((ov21_021D42D4(param0->unk_1A70) == 0) && (ov21_021D42D4(param0->unk_1A7C) == 0) && (ov21_021D42D4(param0->unk_1A74) == 0)) {
        ov21_021D4284(param0->unk_1A78, param0->unk_1A68);
    }

    if ((ov21_021D42D4(param0->unk_1A78) == 0) && (ov21_021D42D4(param0->unk_1A7C) == 0) && (ov21_021D42D4(param0->unk_1A74) == 0)) {
        ov21_021D4284(param0->unk_1A70, param0->unk_1A60);
    }

    if ((ov21_021D42D4(param0->unk_1A78) == 0) && (ov21_021D42D4(param0->unk_1A70) == 0) && (ov21_021D42D4(param0->unk_1A74) == 0)) {
        ov21_021D4284(param0->unk_1A7C, param0->unk_1A6C);
    }

    if ((ov21_021D42D4(param0->unk_1A78) == 0) && (ov21_021D42D4(param0->unk_1A70) == 0) && (ov21_021D42D4(param0->unk_1A7C) == 0)) {
        ov21_021D4284(param0->unk_1A74, param0->unk_1A64);
    }

    sub_020241B4();
    ov21_021D2124(&param0->unk_177C);
    G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);

    param0->unk_1A68 = 0;
    param0->unk_1A6C = 0;
    param0->unk_1A60 = 0;
    param0->unk_1A64 = 0;

    if (param0->unk_00 == 1) {
        ov21_021D1D08(param0);
        param0 = NULL;
        return 1;
    }

    return 0;
}

void ov21_021D12B0(int param0)
{
    ov21_021D1E74();

    ov21_021D1E94(param0);

    ov21_021D1F10();
}

void ov21_021D12C4(void)
{
    sub_0200A878();
    sub_0201E958();
    sub_0201F8B4();
    ov21_021D1F84();
}

void ov21_021D12D8(UnkStruct_ov21_021D0F60 *param0)
{
    ov21_021D214C(&param0->unk_177C);
    sub_0200A858();
}

UnkStruct_ov21_021D3FE0 *ov21_021D12EC(UnkStruct_ov21_021D0F60 *param0)
{
    GF_ASSERT(param0);
    return param0->unk_1D64;
}

UnkStruct_ov21_021D3FE0 *ov21_021D1300(UnkStruct_ov21_021D0F60 *param0)
{
    GF_ASSERT(param0);
    return param0->unk_1D68;
}

UnkStruct_ov21_021D3FE0 *ov21_021D1314(UnkStruct_ov21_021D0F60 *param0)
{
    GF_ASSERT(param0);
    return param0->unk_1D6C;
}

UnkStruct_ov21_021D3FE0 *ov21_021D1328(UnkStruct_ov21_021D0F60 *param0)
{
    GF_ASSERT(param0);
    return param0->unk_1D70;
}

UnkStruct_ov21_021D423C *ov21_021D133C(UnkStruct_ov21_021D0F60 *param0)
{
    GF_ASSERT(param0);
    return param0->unk_1A70;
}

UnkStruct_ov21_021D423C *ov21_021D1350(UnkStruct_ov21_021D0F60 *param0)
{
    GF_ASSERT(param0);
    return param0->unk_1A74;
}

UnkStruct_ov21_021D423C *ov21_021D1364(UnkStruct_ov21_021D0F60 *param0)
{
    GF_ASSERT(param0);
    return param0->unk_1A78;
}

UnkStruct_ov21_021D423C *ov21_021D1378(UnkStruct_ov21_021D0F60 *param0)
{
    GF_ASSERT(param0);
    return param0->unk_1A7C;
}

int *ov21_021D138C(UnkStruct_ov21_021D0F60 *param0)
{
    GF_ASSERT(param0);
    return &param0->unk_1A60;
}

int *ov21_021D13A0(UnkStruct_ov21_021D0F60 *param0)
{
    GF_ASSERT(param0);
    return &param0->unk_1A64;
}

int *ov21_021D13B4(UnkStruct_ov21_021D0F60 *param0)
{
    GF_ASSERT(param0);
    return &param0->unk_1A68;
}

int *ov21_021D13C8(UnkStruct_ov21_021D0F60 *param0)
{
    GF_ASSERT(param0);
    return &param0->unk_1A6C;
}

BOOL *ov21_021D13DC(UnkStruct_ov21_021D0F60 *param0)
{
    GF_ASSERT(param0);
    return &param0->unk_00;
}

UnkStruct_ov21_021D3320 *ov21_021D13EC(UnkStruct_ov21_021D0F60 *param0)
{
    GF_ASSERT(param0);
    return &param0->unk_0C;
}

UnkStruct_ov21_021D13FC *ov21_021D13FC(UnkStruct_ov21_021D0F60 *param0)
{
    GF_ASSERT(param0);
    return &param0->unk_177C;
}

UnkStruct_ov21_021E68F4 *ov21_021D1410(UnkStruct_ov21_021D0F60 *param0, int param1)
{
    GF_ASSERT(param1 < 10);
    return &param0->unk_1A94[param1];
}

UnkStruct_ov21_021E68F4 *ov21_021D1430(UnkStruct_ov21_021D0F60 *param0, int param1)
{
    GF_ASSERT(param1 < 8);
    return &param0->unk_1C24[param1];
}

void ov21_021D144C(CellActor *param0, int param1)
{
    switch (param1) {
    case 0:
        SpriteActor_SetAnimFrame(param0, 1);
        break;
    case 2:
        SpriteActor_SetAnimFrame(param0, 2);
        break;
    case 1:
        SpriteActor_SetAnimFrame(param0, 3);
        break;
    case 3:
    case (3 + 1):
        if (CellActor_GetAnimFrame(param0) > 0) {
            CellActor_UpdateAnim(param0, -(FX32_ONE * 2));
        }
        break;
    default:
        break;
    }
}

void ov21_021D1498(CellActor *param0, UnkStruct_ov21_021D4CA0 *param1, int param2)
{
    int v0 = CellActor_GetAnimFrame(param0);
    int v1, v2;

    switch (v0) {
    case 0:
        sub_020129A4(param1->unk_00, &v1, &v2);
        v2 = param2;
        sub_020128C4(param1->unk_00, v1, v2);
        break;
    case 1:
        sub_020129A4(param1->unk_00, &v1, &v2);
        v2 = param2 + -2;
        sub_020128C4(param1->unk_00, v1, v2);
        break;
    case 2:
        sub_020129A4(param1->unk_00, &v1, &v2);
        v2 = param2 + -4;
        sub_020128C4(param1->unk_00, v1, v2);
        break;
    case 3:
        sub_020129A4(param1->unk_00, &v1, &v2);
        v2 = param2 + -2;
        sub_020128C4(param1->unk_00, v1, v2);
        break;
    }
}

void ov21_021D1524(CellActor *param0, UnkStruct_ov21_021D4CA0 *param1, int param2, int param3, int param4)
{
    int v0;

    ov21_021D1498(param0, param1, param2);
    v0 = CellActor_GetAnimFrame(param0);

    if (v0 < 2) {
        sub_02012AC0(param1->unk_00, param3);
    } else {
        sub_02012AC0(param1->unk_00, param4);
    }
}

void ov21_021D154C(TouchScreenHitTable *hitTable, int param1, int param2, int param3, int param4)
{
    hitTable->rect.top = param1;
    hitTable->rect.bottom = param2;
    hitTable->rect.left = param3;
    hitTable->rect.right = param4;
}

void ov21_021D1558(UnkStruct_ov21_021D157C *param0, BGL *param1, int param2, NNSG2dScreenData *param3, int param4, int param5, int param6, int param7, int param8)
{
    param0->unk_00 = param1;
    param0->unk_08 = param2;
    param0->unk_04 = param3;
    param0->unk_0C = param4;
    param0->unk_14 = param5 - param4;
    param0->unk_10 = param6;
    param0->unk_18 = param7 - param6;
    param0->unk_20 = param8;
    param0->unk_1C = 0;
}

BOOL ov21_021D157C(UnkStruct_ov21_021D157C *param0)
{
    int v0;
    int v1;

    if (param0->unk_1C <= param0->unk_20) {
        sub_02019CB8(param0->unk_00, param0->unk_08, 0, 0, 0, 32, 24, 16);

        v0 = (param0->unk_14 * param0->unk_1C) / param0->unk_20;
        v1 = (param0->unk_18 * param0->unk_1C) / param0->unk_20;
        v0 += param0->unk_0C;
        v1 += param0->unk_10;

        if (v0 > 0) {
            sub_020198E8(param0->unk_00, param0->unk_08, 0, 0, 32, v0, param0->unk_04->rawData, 0, 32 - v0, 32, 32);
        }

        if ((32 - v1) > 0) {
            sub_020198E8(param0->unk_00, param0->unk_08, 0, 32 - v1, 32, v1, param0->unk_04->rawData, 0, 0, 32, 32);
        }

        sub_0201C3C0(param0->unk_00, param0->unk_08);
        param0->unk_1C++;

        return 0;
    }

    return 1;
}

void ov21_021D1650(Window *param0, int param1, int param2, int param3)
{
    Strbuf *v0;
    Strbuf *v1;

    if (param1 > 0) {
        v0 = Strbuf_Init(4, param3);
        Strbuf_FormatInt(v0, param1, 3, 2, 1);
    } else {
        v0 = ov21_021D1CE0(100, param3);
    }

    v1 = ov21_021D561C(param2, GAME_LANGUAGE, param3);

    Text_AddPrinterWithParamsAndColor(param0, FONT_SUBSCREEN, v0, 22, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 2, 1), NULL);
    Text_AddPrinterWithParamsAndColor(param0, FONT_SUBSCREEN, v1, 49, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 2, 1), NULL);
    Strbuf_Free(v0);

    ov21_021D5600(v1);
}

Window *ov21_021D16D8(UnkStruct_ov21_021D13FC *param0, const UnkStruct_ov21_021D3320 *param1, int param2, int param3)
{
    Window *v0;

    if (ov21_021D36D8(param1) == 0) {
        v0 = ov21_021D172C(param0->unk_14C, param2, param3);
    } else {
        v0 = ov21_021D170C(param0->unk_14C, param2, param3);
    }

    return v0;
}

Window *ov21_021D170C(UnkStruct_ov21_021D4C0C *param0, int param1, int param2)
{
    Window *v0;

    v0 = ov21_021D4D6C(param0, 15, 2);
    ov21_021D1650(v0, param2, param2, param1);

    return v0;
}

Window *ov21_021D172C(UnkStruct_ov21_021D4C0C *param0, int param1, int param2)
{
    Window *v0;
    int v1;

    v1 = Pokemon_SinnohDexNumber(param2);

    if ((param2 != 377) && (param2 != 378) && (param2 != 379)) {
        GF_ASSERT(v1 > 0);
    }

    v0 = ov21_021D4D6C(param0, 15, 2);
    ov21_021D1650(v0, v1, param2, param1);

    return v0;
}

void ov21_021D1778(UnkStruct_ov21_021D13FC *param0, const UnkStruct_ov21_021D3320 *param1, int param2, int param3, fx32 param4, fx32 param5)
{
    CellActor *v0;
    CellActor *v1;
    UnkStruct_ov21_021D4CB8 v2;
    Window *v3;
    SpriteResource *v4;
    VecFx32 v5;
    const UnkStruct_ov21_021D37DC *v6;
    u32 v7 = ov21_021D36D8(param1);

    v6 = ov21_021D37DC(param1, param3);
    v0 = ov21_021D22A8(param0);
    v1 = ov21_021D22C4(param0);

    v5.x = param4;
    v5.y = param5;

    CellActor_SetPosition(v0, &v5);
    CellActor_SetDrawFlag(v0, 1);

    if (v6->unk_04 == 2) {
        v5.x = param4 + (-54 * FX32_ONE);
        v5.y = param5;

        CellActor_SetPosition(v1, &v5);
        CellActor_SetDrawFlag(v1, 1);
    } else {
        CellActor_SetDrawFlag(v1, 0);
    }

    v4 = ov21_021D2344(param0, 1);

    v2.unk_00 = param0->unk_14C;
    v2.unk_08 = sub_0200A72C(v4, NULL);
    v2.unk_0C = v0;
    v2.unk_10 = -(128 / 2);
    v2.unk_14 = -(16 / 2);
    v2.unk_18 = 0;
    v2.unk_1C = 0;
    v2.unk_20 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v2.unk_24 = param2;

    v3 = ov21_021D16D8(param0, param1, param2, v6->unk_00);
    v2.unk_04 = v3;

    ov21_021D22E0(param0, &v2, 0, v6->unk_00, v7);
    ov21_021D4DA0(v3);
}

void ov21_021D1848(UnkStruct_ov21_021D13FC *param0, int param1, int param2)
{
    ov21_021D1858(&param0->unk_1B0, param1, param2);
}

void ov21_021D1858(UnkStruct_ov21_021D22F8 *param0, int param1, int param2)
{
    VecFx32 v0;

    v0.x = param1 << FX32_SHIFT;
    v0.y = param2 << FX32_SHIFT;

    CellActor_SetPosition(param0->unk_00, &v0);
    v0.x += (-54 * FX32_ONE);
    CellActor_SetPosition(param0->unk_04, &v0);

    if (param0->unk_08->unk_00) {
        sub_02012938(param0->unk_08->unk_00);
    }
}

void ov21_021D1890(UnkStruct_ov21_021D13FC *param0, UnkStruct_ov21_021D3320 *param1, int param2, int param3, int param4, int param5)
{
    switch (param2) {
    case 201:
        ov21_021D1A34(param0, param1, param3, param4, param5, 0, 0);
        break;
    case 412:
        ov21_021D1B08(param0, param1, param3, param4, param5, 0, 0);
        break;
    case 413:
        ov21_021D1B4C(param0, param1, param3, param4, param5, 0, 0);
        break;
    case 422:
        ov21_021D1A78(param0, param1, param3, param4, param5, 0, 0);
        break;
    case 423:
        ov21_021D1AC0(param0, param1, param3, param4, param5, 0, 0);
        break;
    case 386:
        ov21_021D1B94(param0, param1, param3, param4, param5, 0, 0);
        break;
    case 492:
        ov21_021D1BD8(param0, param1, param3, param4, param5, 0, 0);
        break;
    case 487:
        ov21_021D1C30(param0, param1, param3, param4, param5, 0, 0);
        break;
    case 479:
        ov21_021D1C88(param0, param1, param3, param4, param5, 0, 0);
        break;
    default:
        ov21_021D19D8(param0, param1, param2, param3, param4, param5, 0, 0);
        break;
    }
}

u32 ov21_021D19D8(UnkStruct_ov21_021D13FC *param0, const UnkStruct_ov21_021D3320 *param1, int param2, int param3, int param4, int param5, int param6, int param7)
{
    int v0;
    u32 v1 = 0;

    if (param2 == 327) {
        v1 = ov21_021D33F8(param1);
    }

    v0 = ov21_021D334C(param1, param2, param6);

    if (v0 != -1) {
        ov21_021D2188(param0, param2, v0, param3, 0, 0, v1, param4, param5, param7);
    }

    return v0;
}

u32 ov21_021D1A34(UnkStruct_ov21_021D13FC *param0, const UnkStruct_ov21_021D3320 *param1, int param2, int param3, int param4, int param5, int param6)
{
    int v0;

    v0 = ov21_021D335C(param1, param5);

    if (v0 != -1) {
        ov21_021D2188(param0, 201, 2, param2, 0, v0, 0, param3, param4, param6);
    }

    return v0;
}

u32 ov21_021D1A78(UnkStruct_ov21_021D13FC *param0, const UnkStruct_ov21_021D3320 *param1, int param2, int param3, int param4, int param5, int param6)
{
    int v0;

    v0 = ov21_021D3374(param1, param5);

    if (v0 != -1) {
        ov21_021D2188(param0, 422, 0, param2, 0, v0, 0, param3, param4, param6);
    }

    return v0;
}

u32 ov21_021D1AC0(UnkStruct_ov21_021D13FC *param0, const UnkStruct_ov21_021D3320 *param1, int param2, int param3, int param4, int param5, int param6)
{
    int v0;

    v0 = ov21_021D338C(param1, param5);

    if (v0 != -1) {
        ov21_021D2188(param0, 423, 0, param2, 0, v0, 0, param3, param4, param6);
    }

    return v0;
}

u32 ov21_021D1B08(UnkStruct_ov21_021D13FC *param0, const UnkStruct_ov21_021D3320 *param1, int param2, int param3, int param4, int param5, int param6)
{
    int v0;

    v0 = ov21_021D33A4(param1, param5);

    if (v0 != -1) {
        ov21_021D2188(param0, 412, 0, param2, 0, v0, 0, param3, param4, param6);
    }

    return v0;
}

u32 ov21_021D1B4C(UnkStruct_ov21_021D13FC *param0, const UnkStruct_ov21_021D3320 *param1, int param2, int param3, int param4, int param5, int param6)
{
    int v0;

    v0 = ov21_021D33BC(param1, param5);

    if (v0 != -1) {
        ov21_021D2188(param0, 413, 1, param2, 0, v0, 0, param3, param4, param6);
    }

    return v0;
}

u32 ov21_021D1B94(UnkStruct_ov21_021D13FC *param0, const UnkStruct_ov21_021D3320 *param1, int param2, int param3, int param4, int param5, int param6)
{
    int v0;

    v0 = ov21_021D3404(param1, param5);

    if (v0 != 15) {
        ov21_021D2188(param0, 386, 1, param2, 0, v0, 0, param3, param4, param6);
    }

    return v0;
}

u32 ov21_021D1BD8(UnkStruct_ov21_021D13FC *param0, const UnkStruct_ov21_021D3320 *param1, int param2, int param3, int param4, int param5, int param6)
{
    int v0;
    int v1;

    v1 = ov21_021D341C(param1, 492);

    if (v1 > param5) {
        v0 = ov21_021D3410(param1, 492, param5);
        ov21_021D2188(param0, 492, 1, param2, 0, v0, 0, param3, param4, param6);
    } else {
        v0 = -1;
    }

    return v0;
}

u32 ov21_021D1C30(UnkStruct_ov21_021D13FC *param0, const UnkStruct_ov21_021D3320 *param1, int param2, int param3, int param4, int param5, int param6)
{
    int v0;
    int v1;

    v1 = ov21_021D341C(param1, 487);

    if (v1 > param5) {
        v0 = ov21_021D3410(param1, 487, param5);
        ov21_021D2188(param0, 487, 1, param2, 0, v0, 0, param3, param4, param6);
    } else {
        v0 = -1;
    }

    return v0;
}

u32 ov21_021D1C88(UnkStruct_ov21_021D13FC *param0, const UnkStruct_ov21_021D3320 *param1, int param2, int param3, int param4, int param5, int param6)
{
    int v0;
    int v1;

    v1 = ov21_021D341C(param1, 479);

    if (v1 > param5) {
        v0 = ov21_021D3410(param1, 479, param5);

        ov21_021D2188(param0, 479, 1, param2, 0, v0, 0, param3, param4, param6);
    } else {
        v0 = -1;
    }

    return v0;
}

Strbuf *ov21_021D1CE0(int param0, int param1)
{
    Strbuf *v0;
    MessageLoader *v1 = MessageLoader_Init(0, 26, 697, param1);

    v0 = MessageLoader_GetNewStrbuf(v1, param0);
    MessageLoader_Free(v1);

    return v0;
}

static void ov21_021D1D08(UnkStruct_ov21_021D0F60 *param0)
{
    int v0;

    ov21_021D4660(&param0->unk_1A80);

    GF_ASSERT(param0->unk_1A70);
    Heap_FreeToHeap(param0->unk_1A70);

    GF_ASSERT(param0->unk_1A74);
    Heap_FreeToHeap(param0->unk_1A74);

    GF_ASSERT(param0->unk_1A78);
    Heap_FreeToHeap(param0->unk_1A78);

    GF_ASSERT(param0->unk_1A7C);
    Heap_FreeToHeap(param0->unk_1A7C);

    GF_ASSERT(param0->unk_1D64);
    Heap_FreeToHeap(param0->unk_1D64);

    GF_ASSERT(param0->unk_1D68);
    Heap_FreeToHeap(param0->unk_1D68);

    GF_ASSERT(param0->unk_1D6C);
    Heap_FreeToHeap(param0->unk_1D6C);

    GF_ASSERT(param0->unk_1D70);
    Heap_FreeToHeap(param0->unk_1D70);

    for (v0 = 0; v0 < 10; v0++) {
        if (Unk_ov21_021E9B9C[v0]) {
            Unk_ov21_021E9B9C[v0](&param0->unk_1A94[v0]);
        }
    }

    for (v0 = 0; v0 < 8; v0++) {
        if (Unk_ov21_021E9B54[v0]) {
            Unk_ov21_021E9B54[v0](&param0->unk_1C24[v0]);
        }
    }

    sub_0209ACE8(param0->unk_08, ov21_021D3440(&param0->unk_0C));

    if (ov21_021D36A4(&param0->unk_0C, 1) == 1) {
        sub_0209ACF0(param0->unk_08, ov21_021D3458(&param0->unk_0C));
    } else {
        sub_0209ACF0(param0->unk_08, 2);
    }

    ov21_021D3320(&param0->unk_0C);
    ov21_021D2098(&param0->unk_177C);
    Heap_FreeToHeap(param0);
}

static void ov21_021D1E74(void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_B,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_80_EF,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_A,
        GX_VRAM_TEXPLTT_0_G
    };

    GXLayers_SetBanks(&v0);
}

static void ov21_021D1E94(int param0)
{
    NNS_G2dInitOamManagerModule();
    sub_0200A784(0, 128, 0, 32, 0, 128, 0, 32, param0);

    {
        UnkStruct_ov22_022559F8 v0 = {
            32,
            0x14000,
            0x4000,
        };

        v0.unk_0C = param0;
        sub_0201E88C(&v0, GX_OBJVRAMMODE_CHAR_1D_128K, GX_OBJVRAMMODE_CHAR_1D_32K);
    }

    sub_0201F834(32, param0);
    sub_0201E994();
    sub_0201F8E4();
}

static void ov21_021D1EEC(UnkStruct_ov21_021D0F60 *param0)
{
    ov21_021D426C(param0->unk_1A70, &param0->unk_1A80, 1);
    param0->unk_1A60 = 1;
}

static void ov21_021D1F10(void)
{
    NNS_G3dInit();

    G3X_InitMtxStack();
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7fff, 63, 0);
    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
    G3_ViewPort(0, 0, 255, 191);

    NNS_GfdInitFrmTexVramManager(1, 1);
    NNS_GfdInitFrmPlttVramManager(0x4000, 1);
}

static void ov21_021D1F84(void)
{
    NNS_GfdResetFrmTexVramState();
    NNS_GfdResetFrmPlttVramState();
}
