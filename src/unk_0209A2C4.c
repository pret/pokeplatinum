#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_strbuf_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_0203CC84.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0208BE5C.h"
#include "struct_defs/struct_02099F80.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "unk_02000C88.h"
#include "unk_02002B7C.h"
#include "unk_020067E8.h"
#include "unk_0200AC5C.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "gx_layers.h"
#include "string/strbuf.h"
#include "unk_020244AC.h"

FS_EXTERN_OVERLAY(overlay97);

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    Strbuf * unk_14;
    UnkStruct_02018340 * unk_18;
    UnkStruct_0200B144 * unk_1C;
    UnkStruct_0205AA50 unk_20;
    UnkStruct_02001AF4 * unk_30;
    UnkStruct_021C0794 * unk_34;
    void * unk_38;
    u32 unk_3C;
} UnkStruct_0209A3D0;

void sub_02000EC4(FSOverlayID param0, const UnkStruct_0208BE5C * param1);
int sub_0209A2C4(UnkStruct_020067E8 * param0, int * param1);
int sub_0209A300(UnkStruct_020067E8 * param0, int * param1);
int sub_0209A3A4(UnkStruct_020067E8 * param0, int * param1);
static void sub_0209A3D0(UnkStruct_0209A3D0 * param0);
static void sub_0209A490(UnkStruct_0209A3D0 * param0);
static void sub_0209A4E4(UnkStruct_0209A3D0 * param0);
static void sub_0209A530(UnkStruct_0209A3D0 * param0);
static BOOL sub_0209A544(UnkStruct_0209A3D0 * param0);
static BOOL sub_0209A688(UnkStruct_0209A3D0 * param0, u32 param1, int param2, int param3);

extern const UnkStruct_0208BE5C Unk_ov97_0223D674;

static const UnkStruct_ov61_0222C884 Unk_020F8A58 = {
    0x0,
    0x2,
    0x13,
    0x1B,
    0x4,
    0x1,
    0x16D
};

const UnkStruct_0208BE5C Unk_020F8AB4 = {
    sub_0209A2C4,
    sub_0209A300,
    sub_0209A3A4,
    0xFFFFFFFF
};

int sub_0209A2C4 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_0209A3D0 * v0;
    int v1 = 88;

    Heap_Create(3, v1, 0x20000);

    v0 = sub_0200681C(param0, sizeof(UnkStruct_0209A3D0), v1);
    memset(v0, 0, sizeof(UnkStruct_0209A3D0));

    v0->unk_00 = v1;
    v0->unk_04 = 0;
    v0->unk_34 = ((UnkStruct_0203CC84 *)sub_02006840(param0))->unk_08;

    return 1;
}

int sub_0209A300 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_0209A3D0 * v0 = sub_0200682C(param0);
    int v1 = 0;

    switch (*param1) {
    case 0:
        sub_0200F344(0, 0);
        sub_0200F344(1, 0);
        sub_02017798(NULL, NULL);
        sub_020177BC(NULL, NULL);
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();
        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);
        sub_02017DD4(4, 8);
        sub_0209A3D0(v0);
        sub_0209A4E4(v0);
        GXLayers_TurnBothDispOn();
        *param1 = 1;
        break;
    case 1:
        if (sub_0209A544(v0) == TRUE) {
            *param1 = 2;
        }
        break;
    case 2:
        sub_0209A530(v0);
        sub_0209A490(v0);
        sub_02017798(NULL, NULL);
        v1 = 1;
        break;
    }

    return v1;
}

int sub_0209A3A4 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_0209A3D0 * v0 = sub_0200682C(param0);
    int v1 = v0->unk_00;

    sub_02006830(param0);
    Heap_Destroy(v1);
    sub_02000EC4(FS_OVERLAY_ID(overlay97), &Unk_ov97_0223D674);

    return 1;
}

static void sub_0209A3D0 (UnkStruct_0209A3D0 * param0)
{
    {
        UnkStruct_02099F80 v0 = {
            GX_VRAM_BG_256_AB,
            GX_VRAM_BGEXTPLTT_NONE,
            GX_VRAM_SUB_BG_NONE,
            GX_VRAM_SUB_BGEXTPLTT_NONE,
            GX_VRAM_OBJ_NONE,
            GX_VRAM_OBJEXTPLTT_NONE,
            GX_VRAM_SUB_OBJ_NONE,
            GX_VRAM_SUB_OBJEXTPLTT_NONE,
            GX_VRAM_TEX_NONE,
            GX_VRAM_TEXPLTT_NONE
        };
        GXLayers_SetBanks(&v0);
    }
    {
        param0->unk_18 = sub_02018340(param0->unk_00);
    }
    {
        UnkStruct_ov84_0223BA5C v1 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
        };
        sub_02018368(&v1);
    }
    {
        UnkStruct_ov97_0222DB78 v2 = {
            0x0,
            0x0,
            0x800,
            0x0,
            0x1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0000,
            GX_BG_CHARBASE_0x18000,
            GX_BG_EXTPLTT_01,
            0x1,
            0x0,
            0x0,
            0x0
        };
        sub_020183C4(param0->unk_18, 0, &v2, 0);
        sub_02019EBC(param0->unk_18, 0);
    }
    sub_0200DD0C(param0->unk_18, 0, 512 - (18 + 12), 2, 0, param0->unk_00);
    sub_0200DAA4(param0->unk_18, 0, (512 - (18 + 12)) - 9, 3, 0, param0->unk_00);
    sub_02002E7C(0, 1 * (2 * 16), param0->unk_00);
    sub_02019690(0, 32, 0, param0->unk_00);
    sub_0201975C(0, 0);
    sub_0201975C(4, 0);
}

static void sub_0209A490 (UnkStruct_0209A3D0 * param0)
{
    sub_02019120(0, 0);
    sub_02019120(1, 0);
    sub_02019120(2, 0);
    sub_02019120(3, 0);
    sub_02019120(4, 0);
    sub_02019120(5, 0);
    sub_02019120(6, 0);
    sub_02019120(7, 0);
    sub_02019044(param0->unk_18, 0);
    Heap_FreeToHeap(param0->unk_18);
}

static void sub_0209A4E4 (UnkStruct_0209A3D0 * param0)
{
    param0->unk_1C = sub_0200B144(1, 26, 406, param0->unk_00);
    sub_0201D710();
    param0->unk_0C = 0;

    sub_0201A8D4(param0->unk_18, &param0->unk_20, &Unk_020F8A58);
    sub_0201AE78(&param0->unk_20, 15, 0, 0, 27 * 8, 4 * 8);
}

static void sub_0209A530 (UnkStruct_0209A3D0 * param0)
{
    sub_0201A8FC(&param0->unk_20);
    sub_0200B190(param0->unk_1C);
}

static BOOL sub_0209A544 (UnkStruct_0209A3D0 * param0)
{
    BOOL v0 = 0;

    switch (param0->unk_04) {
    case 0:
    {
        param0->unk_3C = sub_020247BC(param0->unk_34);

        if (param0->unk_3C == 0) {
            param0->unk_04 = 6;
        } else {
            param0->unk_04 = 1;
        }
    }
    break;
    case 1:
        param0->unk_04 = 2;

        if (param0->unk_3C & (1 << 1)) {
            param0->unk_3C &= 0xffffffff ^ ((1 << 1) | (1 << 0));
            param0->unk_08 = 1;
        } else if (param0->unk_3C & (1 << 0)) {
            param0->unk_3C ^= (1 << 0);
            param0->unk_08 = 0;
        } else if (param0->unk_3C & (1 << 3)) {
            param0->unk_3C &= 0xffffffff ^ ((1 << 3) | (1 << 2));
            param0->unk_08 = 5;
        } else if (param0->unk_3C & (1 << 2)) {
            param0->unk_3C ^= (1 << 2);
            param0->unk_08 = 4;
        } else if (param0->unk_3C & (1 << 5)) {
            param0->unk_3C &= 0xffffffff ^ ((1 << 5) | (1 << 4));
            param0->unk_08 = 3;
        } else if (param0->unk_3C & (1 << 4)) {
            param0->unk_3C ^= (1 << 4);
            param0->unk_08 = 2;
        } else {
            param0->unk_04 = 6;
        }
        break;
    case 2:
        sub_0201975C(0, 0x6c21);
        sub_0201975C(4, 0x6c21);
        sub_0200F174(0, 1, 1, 0, 6, 1, param0->unk_00);
        param0->unk_04 = 3;
        break;
    case 3:
        if (sub_0200F2AC() == 1) {
            param0->unk_04 = 4;
        }
        break;
    case 4:
        if (sub_0209A688(param0, param0->unk_08, 0, 4) == 1) {
            sub_0200F174(0, 0, 0, 0, 6, 1, param0->unk_00);
            param0->unk_04 = 5;
        }
        break;
    case 5:
        if (sub_0200F2AC() == 1) {
            sub_0201975C(0, 0);
            sub_0201975C(4, 0);
            param0->unk_04 = 1;
        }
        break;
    case 6:
        v0 = 1;
        break;
    }

    return v0;
}

static BOOL sub_0209A688 (UnkStruct_0209A3D0 * param0, u32 param1, int param2, int param3)
{
    BOOL v0 = 0;

    switch (param0->unk_0C) {
    case 0:
        sub_0201AE78(&param0->unk_20, 15, 0, 0, 27 * 8, 4 * 8);
        sub_0200E060(&param0->unk_20, 0, 512 - (18 + 12), 2);

        param0->unk_14 = PLString_Init(0x400, param0->unk_00);
        sub_0200B1B8(param0->unk_1C, param1, param0->unk_14);
        param0->unk_10 = sub_0201D738(&param0->unk_20, 1, param0->unk_14, 0, 0, param3, NULL);

        if (param3 == 0) {
            PLString_Free(param0->unk_14);
            param0->unk_0C++;
        }

        param0->unk_0C++;
        break;
    case 1:
        if (!(sub_0201D724(param0->unk_10))) {
            PLString_Free(param0->unk_14);
            param0->unk_0C++;
        }
        break;
    case 2:
        if ((param2 != 0) || (Unk_021BF67C.unk_48 & PAD_BUTTON_A)) {
            param0->unk_0C = 0;
            v0 = 1;
        }
    }

    return v0;
}
