#include "overlay062/ov62_02237D24.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_02023FCC_decl.h"
#include "struct_decls/struct_02029C68_decl.h"
#include "struct_defs/struct_02030A80.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0208C06C.h"

#include "overlay022/ov22_0225AF8C.h"
#include "overlay022/struct_ov22_0225AF8C.h"
#include "overlay022/struct_ov22_0225B1BC_decl.h"
#include "overlay061/ov61_0222AE60.h"
#include "overlay061/ov61_0222B008.h"
#include "overlay061/ov61_0222BC4C.h"
#include "overlay061/struct_ov61_0222BC90.h"
#include "overlay062/const_ov62_022491F0.h"
#include "overlay062/ov62_0222F2C0.h"
#include "overlay062/ov62_022300D8.h"
#include "overlay062/ov62_02231690.h"
#include "overlay062/ov62_0224112C.h"
#include "overlay062/ov62_const_funcptr_tables.h"
#include "overlay062/struct_ov62_022312B0.h"
#include "overlay062/struct_ov62_022323B8.h"
#include "overlay062/struct_ov62_0223CAA4.h"
#include "overlay062/struct_ov62_0223E01C_sub1.h"
#include "overlay062/struct_ov62_02248CDC.h"
#include "overlay062/struct_ov62_02249380.h"

#include "font.h"
#include "game_overlay.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "strbuf.h"
#include "string_template.h"
#include "touch_screen.h"
#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200C6E4.h"
#include "unk_02012744.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "unk_0201DBEC.h"
#include "unk_02023FCC.h"
#include "unk_0202419C.h"
#include "unk_0202631C.h"
#include "unk_020298BC.h"
#include "unk_02030A80.h"
#include "unk_0208B284.h"

FS_EXTERN_OVERLAY(overlay22);

typedef struct {
    int unk_00;
    int unk_04;
    UnkStruct_02029C68 * unk_08;
    UnkStruct_ov61_0222BC90 * unk_0C[5];
} UnkStruct_ov62_02237D24_sub1;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    Window unk_10[12];
    Window unk_D0[12];
    int unk_190;
    int unk_194;
    UnkStruct_ov62_022312B0 unk_198[2];
    UnkStruct_02023FCC * unk_1D0[1];
    UnkStruct_ov62_0223E01C_sub1 unk_1D4;
    UnkStruct_ov62_02249380 * unk_1E8;
    UnkStruct_ov62_02248CDC unk_1EC;
    UnkStruct_ov22_0225AF8C unk_218;
    UnkStruct_ov22_0225B1BC * unk_228;
    UnkStruct_02029C68 * unk_22C;
    UnkStruct_ov62_02237D24_sub1 unk_230;
    UnkStruct_ov62_022323B8 unk_250;
    UnkStruct_02030A80 * unk_2DC;
    int unk_2E0;
    int unk_2E4;
} UnkStruct_ov62_02237D24;

static BOOL ov62_02237D24(UnkStruct_0208C06C * param0);
static BOOL ov62_02237DB8(UnkStruct_0208C06C * param0);
static BOOL ov62_02237F08(UnkStruct_0208C06C * param0);
static BOOL ov62_02238048(UnkStruct_0208C06C * param0);
static BOOL ov62_022380B0(UnkStruct_0208C06C * param0);
static BOOL ov62_022383E4(UnkStruct_0208C06C * param0);
static BOOL ov62_022385EC(UnkStruct_0208C06C * param0);
static BOOL ov62_02238610(UnkStruct_0208C06C * param0);
static BOOL ov62_02238794(UnkStruct_0208C06C * param0);
static BOOL ov62_0223896C(UnkStruct_0208C06C * param0);
static BOOL ov62_02238B70(UnkStruct_0208C06C * param0);
static BOOL ov62_02238D04(UnkStruct_0208C06C * param0);
static BOOL ov62_02238E54(UnkStruct_0208C06C * param0);
static BOOL ov62_02238F24(UnkStruct_0208C06C * param0);
static BOOL ov62_0223900C(UnkStruct_0208C06C * param0);
static BOOL ov62_0223921C(UnkStruct_0208C06C * param0);
static void ov62_02239424(UnkStruct_0208C06C * param0);
static void ov62_02239440(UnkStruct_0208C06C * param0, int param1);
static void ov62_02239498(UnkStruct_0208C06C * param0);
static void ov62_022394D8(void * param0);
static void ov62_02239518(void);
static void ov62_0223956C(void);
static void ov62_0223958C(UnkStruct_0208C06C * param0, int param1);
static void ov62_02239608(UnkStruct_0208C06C * param0);
static void ov62_022396E8(UnkStruct_0208C06C * param0);
static void ov62_02239724(UnkStruct_0208C06C * param0);
static void ov62_02239854(UnkStruct_0208C06C * param0, int param1);
static BOOL ov62_02239984(UnkStruct_0208C06C * param0, int param1);
static void ov62_02239A0C(UnkStruct_0208C06C * param0, int param1);
static void ov62_02239B7C(UnkStruct_0208C06C * param0);
static void ov62_02239BAC(u32 param0, u32 param1, void * param2);
static void ov62_02239BD8(UnkStruct_0208C06C * param0);
static void ov62_02239CE8(UnkStruct_0208C06C * param0);
static void ov62_02239D0C(UnkStruct_0208C06C * param0);
void ov62_02239D34(void * param0, const UnkStruct_ov62_0223CAA4 * param1);
void ov62_02239D38(void * param0, const UnkStruct_ov62_0223CAA4 * param1);


static u16 Unk_ov62_022497D4[] = {
    0x0,
    0x57,
    0x88,
    0xBF,
    0xEB,
    0x12F,
    0x168,
    0x1C9,
    0x1E7,
    0x1ED
};

BOOL(*const Unk_ov62_02248D08[])(UnkStruct_0208C06C *) = {
    ov62_02237D24,
    ov62_02237DB8,
    ov62_02237F08,
    ov62_02238048,
    ov62_022380B0,
    ov62_022383E4,
};

BOOL(*const Unk_ov62_02248D20[])(UnkStruct_0208C06C *) = {
    ov62_02237D24,
    ov62_02237DB8,
    ov62_022385EC,
    ov62_02238610,
    ov62_02238794,
    ov62_0223896C,
    ov62_02238B70,
    ov62_02238D04,
    ov62_02238E54,
    ov62_02238F24,
    ov62_0223900C,
    ov62_0223921C,
};

static const TouchScreenRect Unk_ov62_02248CB0[] = {
    {0x98, 0xB8, 0x20, 0x80},
    {0x98, 0xB8, 0x80, 0xE0}
};

static const TouchScreenRect Unk_ov62_02248CAC[] = {
    {0x98, 0xB8, 0x50, 0xB0}
};

static const TouchScreenRect Unk_ov62_02248CC4[] = {
    {0x18, 0x28, 0x38, 0xC0},
    {0x28, 0x38, 0x38, 0xC0},
    {0x38, 0x48, 0x38, 0xC0},
    {0x48, 0x58, 0x38, 0xC0},
    {0x58, 0x68, 0x38, 0xC0},
    {0x68, 0x78, 0x38, 0xC0}
};

static const TouchScreenRect Unk_ov62_02248CB8[] = {
    {0x10, 0x30, 0x38, 0xC8},
    {0x48, 0x68, 0x18, 0x48},
    {0x48, 0x68, 0xB8, 0xE8}
};

static const UnkStruct_ov62_02248CDC Unk_ov62_02248CDC = {
    NULL,
    0x0,
    0x1,
    0x9,
    0x3,
    0xE,
    0xC,
    0x20,
    0x6,
    0x6,
    Unk_ov62_02248CC4
};

static BOOL ov62_02237D24 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02237D24 * v0 = Heap_AllocFromHeap(102, sizeof(UnkStruct_ov62_02237D24));

    memset(v0, 0, sizeof(UnkStruct_ov62_02237D24));
    param0->unk_860 = v0;
    Overlay_LoadByID(FS_OVERLAY_ID(overlay22), 2);

    {
        v0->unk_218.unk_00 = param0->unk_14.unk_10;
        v0->unk_218.unk_04 = (128 - 56);
        v0->unk_218.unk_08 = (96 - 64 - 16);
        v0->unk_218.unk_0C = 102;
    }

    {
        v0->unk_230.unk_08 = sub_02029C68(102);
        v0->unk_250.unk_00 = sub_02030A80(102);
    }

    sub_02019EBC(param0->unk_14.unk_10, 2);
    sub_02019EBC(param0->unk_14.unk_10, 3);
    sub_02019EBC(param0->unk_14.unk_10, 6);
    sub_02019EBC(param0->unk_14.unk_10, 7);

    ov62_022315C8(&v0->unk_00, &v0->unk_04, 0);
    ov62_0222FB60(param0, 1);

    return 0;
}

static BOOL ov62_02237DB8 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02237D24 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        if (ov62_02231664(&v0->unk_08, 1)) {
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, v0->unk_08, param0->unk_14.unk_44);
        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 1:
        BGL_SetPriority(0, 0);
        BGL_SetPriority(2, 0);
        BGL_SetPriority(1, 3);
        BGL_SetPriority(3, 2);
        BGL_SetPriority(4, 0);
        BGL_SetPriority(6, 1);
        BGL_SetPriority(5, 3);
        BGL_SetPriority(7, 2);
        sub_0208B9E0(param0->unk_6F0, 0);
        param0->unk_08++;
        break;
    case 2:
        ov62_0223376C(param0, 0);
        ov62_02234540(param0, 1);
        param0->unk_08++;
        break;
    default:
        if (ov62_02233790(param0) == 0) {
            break;
        }

        ov62_02234540(param0, 0);
        ov62_02234540(param0, 1);
        ov62_02231454(param0);
        ov62_02239608(param0);
        ov62_02234540(param0, 0);
        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 3, 0, 0, 0, 102);
        sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 7, 0, 0, 0, 102);
        ov62_0222FB60(param0, 2);
        break;
    }

    return 0;
}

static BOOL ov62_02237F08 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02237D24 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_02239518();
        ov62_022343B8(param0, 35, 3);
        ov62_022343B8(param0, 37, 7);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        ov62_02234540(param0, 1);

        v0->unk_22C = sub_02029CA8(sub_0202A750(param0->unk_830), 0);

        if (v0->unk_228 == NULL) {
            v0->unk_228 = ov22_0225AF8C(&v0->unk_218, v0->unk_22C);
            ov22_0225B074(v0->unk_228, 1);
        }

        ov62_02234540(param0, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
        SetMainCallback(ov62_022394D8, param0);
        param0->unk_08++;
        break;
    case 1:
        sub_02003070(param0->unk_14.unk_14, 0, 0 * 16, 16 * 0x20);
        param0->unk_08++;
        break;
    case 2:
        ov62_02231664(&v0->unk_08, 0);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 0)) {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
            ov62_02239724(param0);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, 3);
        break;
    }
    if (v0->unk_228) {
        sub_020241B4();
        ov22_0225AFF8(v0->unk_228);
        G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
    }

    return 0;
}

static BOOL ov62_02238048 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02237D24 * v0 = param0->unk_860;

    if (TouchScreen_LocationPressed(&Unk_ov62_02248CB0[0])) {
        ov62_02234520(param0);
        ov62_0222FB60(param0, 5);
    }

    if (TouchScreen_LocationPressed(&Unk_ov62_02248CB0[1])) {
        ov62_02234520(param0);
        ov62_0222FB60(param0, 4);
    }

    if (v0->unk_228) {
        sub_020241B4();
        ov22_0225AFF8(v0->unk_228);
        G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
    }

    return 0;
}

static BOOL ov62_022380B0 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02237D24 * v0 = param0->unk_860;
    UnkStruct_ov62_0223CAA4 * v1;

    if (ov62_022411B8(param0) == 0) {
        return 0;
    }

    switch (param0->unk_08) {
    case 0:
        BGL_SetPriority(0, 1);
        BGL_SetPriority(1, 3);
        BGL_SetPriority(2, 2);
        BGL_SetPriority(3, 1);
        BGL_SetPriority(4, 1);
        BGL_SetPriority(5, 3);
        BGL_SetPriority(6, 2);
        BGL_SetPriority(7, 1);

        {
            Heap_FreeToHeap(v0->unk_230.unk_08);
            sub_02030A98(v0->unk_250.unk_00);
        }

        sub_02019EBC(param0->unk_14.unk_10, 2);
        sub_02019EBC(param0->unk_14.unk_10, 6);
        ov62_02239D0C(param0);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 0)) {
            ov62_02234540(param0, 1);
            ov62_022396E8(param0);
            ov62_02234540(param0, 0);
            sub_02019EBC(param0->unk_14.unk_10, 3);
            sub_02019EBC(param0->unk_14.unk_10, 7);
            sub_02019184(param0->unk_14.unk_10, 2, 0, 0);
            BGL_SetPriority(2, 0);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 2:
        ov62_02234358(param0, param0->unk_6F0, 128, 96);
        sub_0208B9E0(param0->unk_6F0, 1);
        sub_0208BA08(param0->unk_6F0, 24, 24);
        ov62_02231AAC(param0, 286);
        v0->unk_2DC = sub_02030A80(102);
        sub_02030AA0(v0->unk_2DC, param0->unk_830);
        Sound_PlayEffect(1381);
        param0->unk_08++;
        break;
    case 3:
        if (ov61_0222B1B4(ov62_0224112C(param0), v0->unk_2DC, v0->unk_22C) == 1) {
            sub_02030A98(v0->unk_2DC);
            param0->unk_08++;
        }
        break;
    case 4:
        ov62_02231B8C(param0);

        if (ov61_0222BB48(ov62_0224112C(param0), &v1) == 1) {
            sub_020057A4(1381, 0);
            ov62_022348B8(param0, 0, v1->unk_0C, v1->unk_04);
            param0->unk_08++;
        } else {
            sub_020057A4(1381, 0);
            ov62_02233704(param0, 47);
            Sound_PlayEffect(1375);

            param0->unk_08++;
        }
        break;
    case 5:
        sub_0208B9E0(param0->unk_6F0, 0);
        sub_0208BA08(param0->unk_6F0, 0, 0);
        param0->unk_08++;
        break;
    case 6:
        ov62_02234540(param0, 1);
        ov62_02231688(&v0->unk_08);
        ov62_0223146C(param0);
        ov62_02234540(param0, 0);
        sub_02019EBC(param0->unk_14.unk_10, 2);
        sub_02019EBC(param0->unk_14.unk_10, 6);
        sub_02019EBC(param0->unk_14.unk_10, 3);
        sub_02019EBC(param0->unk_14.unk_10, 7);
        ov62_0223376C(param0, 1);
        param0->unk_08++;
        break;
    default:
        if (ov62_02233790(param0) == 0) {
            break;
        }

        if (ov62_02231664(&v0->unk_08, 0)) {
            if (v0->unk_228) {
                ov22_0225B020(v0->unk_228);
                ov62_0222F834(param0);
                BGL_SetPriority(2, 0);
                ov62_0223956C();
            }

            ov62_022318E8(param0);
            ov62_02231688(&v0->unk_08);

            sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, 16, param0->unk_14.unk_44);

            ov62_0222FB44(param0, 1, 1, param0->unk_10);
            ov62_0222FB60(param0, 5);

            Heap_FreeToHeap(v0);
            Overlay_UnloadByID(FS_OVERLAY_ID(overlay22));
            SetMainCallback(ov62_0222F8E4, param0);
        } else {
            sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, v0->unk_08, param0->unk_14.unk_44);
            sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        }

        break;
    }

    return 0;
}

static BOOL ov62_022383E4 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02237D24 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        BGL_SetPriority(0, 1);
        BGL_SetPriority(1, 3);
        BGL_SetPriority(2, 2);
        BGL_SetPriority(3, 1);
        BGL_SetPriority(4, 1);
        BGL_SetPriority(5, 3);
        BGL_SetPriority(6, 2);
        BGL_SetPriority(7, 1);

        {
            Heap_FreeToHeap(v0->unk_230.unk_08);
            sub_02030A98(v0->unk_250.unk_00);
        }

        sub_02019EBC(param0->unk_14.unk_10, 2);
        sub_02019EBC(param0->unk_14.unk_10, 6);
        ov62_02239D0C(param0);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 0)) {
            ov62_02234540(param0, 1);
            ov62_022396E8(param0);
            ov62_02234540(param0, 0);
            sub_02019EBC(param0->unk_14.unk_10, 3);
            sub_02019EBC(param0->unk_14.unk_10, 7);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 2:
        ov62_02231688(&v0->unk_08);
        ov62_02234540(param0, 1);
        ov62_0223146C(param0);
        ov62_02234540(param0, 0);
        sub_02019EBC(param0->unk_14.unk_10, 2);
        sub_02019EBC(param0->unk_14.unk_10, 6);
        sub_02019EBC(param0->unk_14.unk_10, 3);
        sub_02019EBC(param0->unk_14.unk_10, 7);
        ov62_0223376C(param0, 1);
        param0->unk_08++;
        break;
    default:
        if (ov62_02233790(param0) == 0) {
            break;
        }

        if (ov62_02231664(&v0->unk_08, 0)) {
            ov62_02234540(param0, 1);

            if (v0->unk_228) {
                ov22_0225B020(v0->unk_228);
                ov62_0222F834(param0);
                BGL_SetPriority(2, 0);
                ov62_0223956C();
            }

            ov62_02234540(param0, 0);
            ov62_022318E8(param0);
            ov62_02231688(&v0->unk_08);

            sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, 16, param0->unk_14.unk_44);

            ov62_0222FB44(param0, 1, 1, param0->unk_10);
            ov62_0222FB60(param0, 5);

            Heap_FreeToHeap(v0);
            Overlay_UnloadByID(FS_OVERLAY_ID(overlay22));
            SetMainCallback(ov62_0222F8E4, param0);
        } else {
            sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, v0->unk_08, param0->unk_14.unk_44);
            sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        }
        break;
    }

    return 0;
}

static BOOL ov62_022385EC (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02237D24 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_0223958C(param0, 1);
        param0->unk_08++;
        break;
    default:
        ov62_0222FB60(param0, 3);
        break;
    }

    return 0;
}

static BOOL ov62_02238610 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02237D24 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_022343B8(param0, 60, 7);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
        v0->unk_1D0[0] = sub_02023FCC(Unk_ov62_022491F0, NELEMS(Unk_ov62_022491F0), ov62_02239BAC, param0, 102);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 0);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 0)) {
            ov62_02231AAC(param0, 114);
            ov62_02239BD8(param0);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 2:
        sub_0202404C(v0->unk_1D0[0]);

        if (TouchScreen_LocationPressed(&Unk_ov62_02248CAC[0])
            || (v0->unk_1D4.unk_10 == 1)) {
            ov62_02234520(param0);
            param0->unk_08++;
        }
        break;
    case 3:
        ov62_02239CE8(param0);
        sub_02024034(v0->unk_1D0[0]);
        ov62_02231B8C(param0);
        param0->unk_08++;
    case 4:
        if (v0->unk_1D4.unk_10 == 1) {
            if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 2)) {
                param0->unk_08++;
            }
        } else {
            ov62_02231664(&v0->unk_08, 1);

            if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 2)) {
                param0->unk_08++;
            }

            sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        }
        break;
    default:
        if (v0->unk_1D4.unk_10 == 1) {
            ov62_0222FB60(param0, 4);
        } else {
            ov62_0222FB60(param0, 5);
        }

        break;
    }

    return 0;
}

static BOOL ov62_02238794 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02237D24 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        ov62_0223958C(param0, 1);
        ov62_022343B8(param0, 58, 7);
        param0->unk_08++;
        break;
    case 1:
        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 2)) {
            ov62_02231AAC(param0, 114);
            ov62_02234540(param0, 1);
            ov62_022335B0(&param0->unk_14.unk_46C, param0);

            v0->unk_1EC = Unk_ov62_02248CDC;
            v0->unk_1EC.unk_00 = v0->unk_1E8;
            v0->unk_1EC.unk_04 = v0->unk_1D4.unk_00;

            ov62_02233310(&param0->unk_14.unk_48C);
            ov62_02232594(&param0->unk_14.unk_48C, param0, v0->unk_1D4.unk_0C, &v0->unk_1EC);
            ov62_02233638(&param0->unk_14.unk_46C, &param0->unk_14.unk_48C);
            ov62_0223331C(&param0->unk_14.unk_48C, param0, 2);
            ov62_02234540(param0, 0);

            v0->unk_2E0 = 0;
            param0->unk_08++;
        }
        break;
    case 2:
        ov62_02233664(&param0->unk_14.unk_46C);
        ov62_022332AC(&param0->unk_14.unk_48C, param0->unk_14.unk_46C.unk_10);

        {
            int v1 = ov62_02232F68(&param0->unk_14.unk_48C, param0);

            if (v1) {
                v0->unk_2E0 = v1;
                ov62_02234520(param0);
                param0->unk_08++;
            }
        }

        if (TouchScreen_LocationPressed(&Unk_ov62_02248CAC[0])) {
            ov62_02234520(param0);
            param0->unk_08++;
        }
        break;
    case 3:
        ov62_02231B8C(param0);
        ov62_02234540(param0, 1);
        ov62_02233600(&param0->unk_14.unk_46C);
        ov62_022332FC(&param0->unk_14.unk_48C);
        ov62_022334FC(&param0->unk_14.unk_48C, param0);
        ov62_02234540(param0, 0);
        param0->unk_08++;
    case 4:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 0)) {
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_02239B7C(param0);
        if (v0->unk_2E0) {
            ov62_0222FB60(param0, 6);
        } else {
            ov62_0222FB60(param0, 3);
        }
        break;
    }

    return 0;
}

static BOOL ov62_0223896C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02237D24 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        BGL_SetPriority(0, 1);
        BGL_SetPriority(1, 3);
        BGL_SetPriority(2, 2);
        BGL_SetPriority(3, 1);
        BGL_SetPriority(4, 1);
        BGL_SetPriority(5, 3);
        BGL_SetPriority(6, 2);
        BGL_SetPriority(7, 1);

        {
            Heap_FreeToHeap(v0->unk_230.unk_08);
            sub_02030A98(v0->unk_250.unk_00);
        }

        sub_02019EBC(param0->unk_14.unk_10, 2);
        sub_02019EBC(param0->unk_14.unk_10, 6);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 0)) {
            ov62_02234540(param0, 1);
            ov62_022396E8(param0);
            ov62_02234540(param0, 0);
            sub_02019EBC(param0->unk_14.unk_10, 3);
            sub_02019EBC(param0->unk_14.unk_10, 7);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    case 2:
        ov62_02231688(&v0->unk_08);
        ov62_02234540(param0, 1);
        ov62_0223146C(param0);
        ov62_02234540(param0, 0);
        sub_02019EBC(param0->unk_14.unk_10, 2);
        sub_02019EBC(param0->unk_14.unk_10, 6);
        sub_02019EBC(param0->unk_14.unk_10, 3);
        sub_02019EBC(param0->unk_14.unk_10, 7);
        ov62_0223376C(param0, 1);
        param0->unk_08++;
        break;
    default:
        if (ov62_02233790(param0) == 0) {
            break;
        }

        if (ov62_02231664(&v0->unk_08, 0)) {
            ov62_02234540(param0, 1);

            if (v0->unk_228) {
                ov22_0225B020(v0->unk_228);
                ov62_0222F834(param0);
                BGL_SetPriority(2, 0);
                ov62_0223956C();
            }

            ov62_02234540(param0, 0);
            ov62_022318E8(param0);
            ov62_02231688(&v0->unk_08);

            sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, 16, param0->unk_14.unk_44);

            ov62_0222FB44(param0, 1, 1, param0->unk_10);
            ov62_0222FB60(param0, 5);

            Heap_FreeToHeap(v0);
            Overlay_UnloadByID(FS_OVERLAY_ID(overlay22));
            SetMainCallback(ov62_0222F8E4, param0);
        } else {
            sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, v0->unk_08, param0->unk_14.unk_44);
            sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        }

        break;
    }

    return 0;
}

static BOOL ov62_02238B70 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02237D24 * v0 = param0->unk_860;
    UnkStruct_ov62_0223CAA4 * v1;

    if (ov62_022411B8(param0) == 0) {
        return 0;
    }

    switch (param0->unk_08) {
    case 0:
        ov62_02234358(param0, param0->unk_6F0, 128, 96);
        sub_0208B9E0(param0->unk_6F0, 1);
        sub_0208BA08(param0->unk_6F0, 24, 24);
        ov62_02231AAC(param0, 287);
        Sound_PlayEffect(1381);
        param0->unk_08++;
        break;
    case 1:
        if (ov61_0222B1FC(ov62_0224112C(param0), v0->unk_2E0) == 1) {
            param0->unk_08++;
        }
        break;
    case 2:
        ov62_02231B8C(param0);

        if (ov61_0222BB48(ov62_0224112C(param0), &v1) == 1) {
            sub_020057A4(1381, 0);
            ov62_022348B8(param0, 1, v1->unk_0C, v1->unk_04);
            v0->unk_2E4 = 0;
            param0->unk_0C = 0;
            sub_0208B9E0(param0->unk_6F0, 0);
            ov62_0222FB60(param0, 3);
        } else {
            sub_020057A4(1381, 0);
            Sound_PlayEffect(1375);
            param0->unk_08++;
        }
        break;
    case 3:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        sub_0208B9E0(param0->unk_6F0, 0);
        sub_0208BA08(param0->unk_6F0, 0, 0);
        param0->unk_08++;
        break;
    case 4:
        if (v0->unk_2E4) {
            v0->unk_230.unk_04 = 0;
            v0->unk_230.unk_00 = 0;
            ov62_0222FB60(param0, 7);
        } else {
            ov62_02231AAC(param0, 293);
            param0->unk_08++;
            param0->unk_0C = 0;
        }
        break;
    default:
        if (((++param0->unk_0C) >= (30 * 2)) || (TouchScreen_Tapped() == 1)) {
            param0->unk_0C = 0;
            ov62_02231B8C(param0);
            ov62_0222FB60(param0, 3);
        }
        break;
    }

    return 0;
}

static BOOL ov62_02238D04 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02237D24 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:

        v0->unk_0C = 0;
        ov61_0222AE80(&v0->unk_230.unk_0C[v0->unk_230.unk_04]->unk_80, v0->unk_230.unk_08);
        v0->unk_228 = ov22_0225AF8C(&v0->unk_218, v0->unk_230.unk_08);

        ov22_0225B074(v0->unk_228, 0);
        ov62_02239518();
        ov62_022343B8(param0, 35, 3);
        ov62_022343B8(param0, 36, 7);

        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
        SetMainCallback(ov62_022394D8, param0);
        param0->unk_08++;
        break;
    case 1:
        sub_02003070(param0->unk_14.unk_14, 0, 0 * 16, 16 * 0x20);
        param0->unk_08++;
        break;
    case 2:
        ov62_02231664(&v0->unk_08, 0);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 0)) {
            ov22_0225B074(v0->unk_228, 1);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
            ov62_02239854(param0, v0->unk_230.unk_04);
            ov62_02239498(param0);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, 8);
        break;
    }

    if (v0->unk_228) {
        sub_020241B4();
        ov22_0225AFF8(v0->unk_228);
        G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
    }

    return 0;
}

static BOOL ov62_02238E54 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02237D24 * v0 = param0->unk_860;

    if (TouchScreen_LocationPressed(&Unk_ov62_02248CAC[0])) {
        ov62_02234520(param0);
        ov62_0222FB60(param0, 9);
    }

    if (TouchScreen_LocationPressed(&Unk_ov62_02248CB8[0])) {
        ov62_02234520(param0);
        ov62_0222FB60(param0, 10);
    }

    if (TouchScreen_LocationPressed(&Unk_ov62_02248CB8[1])) {
        if (v0->unk_230.unk_04 != 0) {
            v0->unk_230.unk_04--;
        } else {
            v0->unk_230.unk_04 = v0->unk_2E4 - 1;
        }

        ov62_02234520(param0);
        ov62_0222FB60(param0, 11);
    }

    if (TouchScreen_LocationPressed(&Unk_ov62_02248CB8[2])) {
        v0->unk_230.unk_04++;
        v0->unk_230.unk_04 %= v0->unk_2E4;
        ov62_02234520(param0);
        ov62_0222FB60(param0, 11);
    }

    if (v0->unk_228) {
        sub_020241B4();
        ov22_0225AFF8(v0->unk_228);
        G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
    }

    return 0;
}

static BOOL ov62_02238F24 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02237D24 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        if (v0->unk_0C == 0) {
            sub_02019EBC(param0->unk_14.unk_10, 2);
            sub_02019EBC(param0->unk_14.unk_10, 6);
            ov62_02239D0C(param0);
        } else {
            ov62_02234540(param0, 1);
            ov62_02232394(&v0->unk_250, param0);
            ov62_02234540(param0, 0);
        }

        ov62_02239424(param0);
        param0->unk_08++;
        break;
    case 1:
        ov62_02231664(&v0->unk_08, 1);

        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 0)) {
            if (v0->unk_228) {
                ov22_0225B020(v0->unk_228);
                ov62_0222F834(param0);
                BGL_SetPriority(2, 0);
                v0->unk_228 = NULL;
                ov62_0223956C();
            }

            sub_02019EBC(param0->unk_14.unk_10, 3);
            sub_02019EBC(param0->unk_14.unk_10, 7);
            sub_02019EBC(param0->unk_14.unk_10, 2);
            sub_02019EBC(param0->unk_14.unk_10, 6);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_08, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, 3);
        break;
    }

    return 0;
}

static BOOL ov62_0223900C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02237D24 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        if (v0->unk_0C == 0) {
            ov62_02239D0C(param0);
            sub_02019EBC(param0->unk_14.unk_10, 2);
        } else {
            ov62_02234540(param0, 1);
            ov62_02232394(&v0->unk_250, param0);
            ov62_02234540(param0, 0);
        }

        param0->unk_08++;
        break;
    case 1:
        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 1)) {
            if (v0->unk_0C == 0) {
                if (v0->unk_228) {
                    ov22_0225B020(v0->unk_228);
                    ov62_0222F834(param0);
                    BGL_SetPriority(2, 0);
                    v0->unk_228 = NULL;
                    ov62_0223956C();
                }

                sub_02019EBC(param0->unk_14.unk_10, 2);
                sub_02019EBC(param0->unk_14.unk_10, 3);
                GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
            }

            param0->unk_08++;
        }
        break;
    case 2:
        if (v0->unk_0C == 0) {
            ov62_02234540(param0, 1);
            ov61_0222AFC0(&v0->unk_230.unk_0C[v0->unk_230.unk_04]->unk_00, v0->unk_250.unk_00);
            ov62_02232378(&v0->unk_250, param0);
            ov62_022323B8(&v0->unk_250, 0);
            ov62_02234540(param0, 0);
            ov62_022343B8(param0, 80, 3);
        } else {
            ov61_0222AE80(&v0->unk_230.unk_0C[v0->unk_230.unk_04]->unk_80, v0->unk_230.unk_08);
            v0->unk_228 = ov22_0225AF8C(&v0->unk_218, v0->unk_230.unk_08);
            ov22_0225B074(v0->unk_228, 0);
            ov62_02239518();
            ov62_022343B8(param0, 35, 3);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
        }

        param0->unk_08++;
        break;
    case 3:
        if (v0->unk_0C == 0) {
            (void)0;
        } else {
            sub_02003070(param0->unk_14.unk_14, 0, 0 * 16, 16 * 0x20);
        }

        param0->unk_08++;
        break;
    case 4:
        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 1)) {
            if (v0->unk_0C == 0) {
                ov62_022323B8(&v0->unk_250, 1);
                GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            } else {
                ov62_02239854(param0, v0->unk_230.unk_04);
                ov22_0225B074(v0->unk_228, 1);
                GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
                GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
            }

            param0->unk_08++;
        }
        break;
    default:
        v0->unk_0C ^= 1;
        ov62_02239440(param0, 121 + v0->unk_0C);
        ov62_0222FB60(param0, 8);
        break;
    }

    return 0;
}

static BOOL ov62_0223921C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02237D24 * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        if (v0->unk_0C == 0) {
            ov62_02239D0C(param0);
            sub_02019EBC(param0->unk_14.unk_10, 2);
        } else {
            ov62_02234540(param0, 1);
            ov62_02232394(&v0->unk_250, param0);
            ov62_02234540(param0, 0);
        }

        param0->unk_08++;
        break;
    case 1:
        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 1, 1)) {
            if (v0->unk_0C == 0) {
                if (v0->unk_228) {
                    ov22_0225B020(v0->unk_228);
                    ov62_0222F834(param0);
                    BGL_SetPriority(2, 0);
                    v0->unk_228 = NULL;
                    ov62_0223956C();
                }

                sub_02019EBC(param0->unk_14.unk_10, 2);
                sub_02019EBC(param0->unk_14.unk_10, 3);
                GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
            }

            param0->unk_08++;
        }
        break;
    case 2:
        ov62_02234540(param0, 1);

        if (v0->unk_0C == 0) {
            ov61_0222AE80(&v0->unk_230.unk_0C[v0->unk_230.unk_04]->unk_80, v0->unk_230.unk_08);
            v0->unk_228 = ov22_0225AF8C(&v0->unk_218, v0->unk_230.unk_08);
            ov22_0225B074(v0->unk_228, 0);
            ov62_02239518();
            ov62_022343B8(param0, 35, 3);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
        } else {
            ov61_0222AFC0(&v0->unk_230.unk_0C[v0->unk_230.unk_04]->unk_00, v0->unk_250.unk_00);
            ov62_02232378(&v0->unk_250, param0);
            ov62_022323B8(&v0->unk_250, 0);
            ov62_022343B8(param0, 80, 3);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        }

        ov62_02234540(param0, 0);
        param0->unk_08++;
        break;
    case 3:
        if (v0->unk_0C == 0) {
            sub_02003070(param0->unk_14.unk_14, 0, 0 * 16, 16 * 0x20);
        } else {
            (void)0;
        }

        param0->unk_08++;
        break;
    case 4:
        if (ov62_022315E0(&v0->unk_00, &v0->unk_04, 0, 1)) {
            if (v0->unk_0C == 0) {
                ov62_02239854(param0, v0->unk_230.unk_04);
                ov22_0225B074(v0->unk_228, 1);
                GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
                GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
            } else {
                ov62_022323B8(&v0->unk_250, 1);
                GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            }

            param0->unk_08++;
        }
        break;
    default:
        ov62_0222FB60(param0, 8);
        break;
    }

    return 0;
}

static void ov62_02239424 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02237D24 * v0 = param0->unk_860;

    sub_0201ACF4(&v0->unk_D0[0]);
    BGL_DeleteWindow(&v0->unk_D0[0]);
}

static void ov62_02239440 (UnkStruct_0208C06C * param0, int param1)
{
    UnkStruct_ov62_02237D24 * v0 = param0->unk_860;
    Window * v1;
    Strbuf* v2;
    int v3;

    v1 = &v0->unk_D0[0];

    BGL_FillWindow(v1, 0x0);

    v2 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, param1);
    v3 = ov62_0223429C(v1, v2);

    sub_0201D78C(v1, 0, v2, v3, 0, 0xff, (((u32)(((15 & 0xff) << 16) | ((13 & 0xff) << 8) | ((0 & 0xff) << 0)))), NULL);
    Strbuf_Free(v2);
    sub_0201A9A4(v1);
}

static void ov62_02239498 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02237D24 * v0 = param0->unk_860;
    Window * v1;
    int v2 = 1;

    v1 = &v0->unk_D0[0];
    Window_Init(v1);
    BGL_AddWindow(param0->unk_14.unk_10, v1, 6, 8, 3, 16, 2, 14, v2);

    ov62_02239440(param0, 121);
}

static void ov62_022394D8 (void * param0)
{
    UnkStruct_0208C06C * v0 = param0;
    UnkStruct_ov62_02237D24 * v1 = v0->unk_860;

    if (v1->unk_228) {
        ov22_0225B06C(v1->unk_228);
    }

    sub_0201DCAC();
    sub_02003694(v0->unk_14.unk_14);
    sub_0201C2B8(v0->unk_14.unk_10);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov62_02239518 (void)
{
    GX_SetVisibleWnd(GX_WNDMASK_W0);
    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    G2_SetWnd0Position(9 * 8, 2 * 8, 9 * 8 + 14 * 8, 2 * 8 + 16 * 8);
}

static void ov62_0223956C (void)
{
    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);
}

static void ov62_0223958C (UnkStruct_0208C06C * param0, int param1)
{
    UnkStruct_ov62_02237D24 * v0 = param0->unk_860;

    if (param1 == 0) {
        SpriteActor_EnableObject(v0->unk_198[1].unk_08, 1);
        sub_020129D0(v0->unk_198[1].unk_0C, 1);
        SpriteActor_SetSpritePositionXY(v0->unk_198[0].unk_08, 32, 232);
    } else {
        SpriteActor_EnableObject(v0->unk_198[1].unk_08, 0);
        sub_020129D0(v0->unk_198[1].unk_0C, 0);
        SpriteActor_SetSpritePositionXY(v0->unk_198[0].unk_08, 80, 232);
    }

    sub_020128C4(v0->unk_198[0].unk_0C, 36, -8);
    sub_020128C4(v0->unk_198[1].unk_0C, 36, -8);
}

static void ov62_02239608 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02237D24 * v0 = param0->unk_860;

    ov62_022312CC(param0, NNS_G2D_VRAM_TYPE_2DSUB);

    v0->unk_198[0].unk_08 = ov62_022313E0(param0, NNS_G2D_VRAM_TYPE_2DSUB);
    v0->unk_198[1].unk_08 = ov62_022313E0(param0, NNS_G2D_VRAM_TYPE_2DSUB);

    ov62_0223118C(&v0->unk_198[0], &param0->unk_14, NNS_G2D_VRAM_TYPE_2DSUB);
    ov62_0223118C(&v0->unk_198[1], &param0->unk_14, NNS_G2D_VRAM_TYPE_2DSUB);
    ov62_0223124C(&v0->unk_198[0], &param0->unk_14, 3);
    ov62_0223124C(&v0->unk_198[1], &param0->unk_14, 53);

    sub_0200D364(v0->unk_198[0].unk_08, 0);
    sub_0200D364(v0->unk_198[1].unk_08, 4);
    SpriteActor_SetSpritePositionXY(v0->unk_198[0].unk_08, 32, 232);
    SpriteActor_SetSpritePositionXY(v0->unk_198[1].unk_08, 128, 232);
    sub_020128C4(v0->unk_198[0].unk_0C, 36, -8);
    sub_020128C4(v0->unk_198[1].unk_0C, 36, -8);
    sub_020129D0(v0->unk_198[0].unk_0C, 1);
    sub_020129D0(v0->unk_198[1].unk_0C, 1);

    ov62_0223958C(param0, 0);
}

static void ov62_022396E8 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02237D24 * v0 = param0->unk_860;

    ov62_022312B0(&v0->unk_198[0]);
    ov62_022312B0(&v0->unk_198[1]);

    sub_0200D0F4(v0->unk_198[0].unk_08);
    sub_0200D0F4(v0->unk_198[1].unk_08);

    ov62_022313BC(param0);
}

// clang-format off
asm static void ov62_02239724 (UnkStruct_0208C06C * param0)
{
    push {r4, r5, r6, r7, lr}
    sub sp, #0x24
    add r5, r0, #0
    mov r0, #0x86
    lsl r0, r0, #4
    ldr r6, [r5, r0]
    add r0, r6, #0
    add r0, #0x10
    bl BGL_WindowAdded
    cmp r0, #1
    bne _0223973E
    b _0223984A
 _0223973E:
    add r0, r6, #0
    str r0, [sp, #0x20]
    add r0, #0x10
    str r0, [sp, #0x20]
    bl Window_Init
    mov r0, #0x13
    str r0, [sp]
    mov r3, #0x10
    str r3, [sp, #4]
    mov r0, #4
    str r0, [sp, #8]
    mov r0, #0xe
    str r0, [sp, #0xc]
    mov r0, #0x4b
    lsl r0, r0, #2
    str r0, [sp, #0x10]
    ldr r0, [r5, #0x24]
    ldr r1, [sp, #0x20]
    mov r2, #2
    bl BGL_AddWindow
    ldr r0, [sp, #0x20]
    mov r1, #0
    bl BGL_FillWindow
    mov r0, #0x66
    bl ov62_02231690
    str r0, [sp, #0x18]
    mov r0, #0xff
    mov r1, #0x66
    bl Strbuf_Init
    add r7, r0, #0
    ldr r0, [r5, #0x48]
    mov r1, #0x38
    bl MessageLoader_GetNewStrbuf
    str r0, [sp, #0x1c]
    mov r0, #0xff
    mov r1, #0x66
    bl Strbuf_Init
    add r4, r0, #0
    mov r0, #0x8b
    lsl r0, r0, #2
    ldr r0, [r6, r0]
    add r1, r4, #0
    bl sub_0202A1A0
    add r0, r5, #0
    add r1, r4, #0
    bl ov62_022349A8
    mov r0, #0x8b
    lsl r0, r0, #2
    ldr r0, [r6, r0]
    bl sub_0202A1F4
    add r5, r0, #0
    mov r0, #1
    str r0, [sp]
    mov r0, #2
    str r0, [sp, #4]
    mov r1, #0
    ldr r0, [sp, #0x18]
    add r2, r4, #0
    add r3, r1, #0
    bl StringTemplate_SetStrbuf
    ldr r0, [sp, #0x18]
    mov r1, #1
    add r2, r5, #0
    bl StringTemplate_SetCustomMessageWord
    ldr r0, [sp, #0x18]
    ldr r2, [sp, #0x1c]
    add r1, r7, #0
    bl StringTemplate_Format
    add r0, r7, #0
    bl Strbuf_NumLines
    mov r5, #0
    str r0, [sp, #0x14]
    cmp r0, #0
    bls _0223982C
    add r6, r5, #0
 _022397F0:
    add r0, r4, #0
    add r1, r7, #0
    add r2, r5, #0
    bl Strbuf_CopyLineNum
    mov r0, #0
    add r1, r4, #0
    add r2, r0, #0
    bl Font_CalcStrbufWidth
    mov r1, #0x80
    sub r0, r1, r0
    lsr r3, r0, #1
    str r6, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    ldr r0, = 0xF0D00
    mov r1, #0
    str r0, [sp, #8]
    mov r0, #0
    str r0, [sp, #0xc]
    ldr r0, [sp, #0x20]
    add r2, r4, #0
    bl sub_0201D78C
    ldr r0, [sp, #0x14]
    add r5, r5, #1
    add r6, #0x10
    cmp r5, r0
    blo _022397F0
 _0223982C:
    ldr r0, [sp, #0x20]
    bl sub_0201A9A4
    add r0, r4, #0
    bl Strbuf_Free
    ldr r0, [sp, #0x1c]
    bl Strbuf_Free
    add r0, r7, #0
    bl Strbuf_Free
    ldr r0, [sp, #0x18]
    bl StringTemplate_Free
 _0223984A:
    add sp, #0x24
    pop {r4, r5, r6, r7, pc}
    nop
}
// clang-format on

// clang-format off
asm static void ov62_02239854 (UnkStruct_0208C06C * param0, int param1)
{
    push {r4, r5, r6, r7, lr}
    sub sp, #0x24
    add r5, r0, #0
    mov r0, #0x86
    lsl r0, r0, #4
    ldr r6, [r5, r0]
    add r0, r6, #0
    add r0, #0x10
    bl BGL_WindowAdded
    cmp r0, #1
    bne _0223986E
    b _0223997A
 _0223986E:
    add r0, r6, #0
    str r0, [sp, #0x20]
    add r0, #0x10
    str r0, [sp, #0x20]
    bl Window_Init
    mov r0, #0x13
    str r0, [sp]
    mov r3, #0x10
    str r3, [sp, #4]
    mov r0, #4
    str r0, [sp, #8]
    mov r0, #0xe
    str r0, [sp, #0xc]
    mov r0, #0x4b
    lsl r0, r0, #2
    str r0, [sp, #0x10]
    ldr r0, [r5, #0x24]
    ldr r1, [sp, #0x20]
    mov r2, #2
    bl BGL_AddWindow
    ldr r0, [sp, #0x20]
    mov r1, #0
    bl BGL_FillWindow
    mov r0, #0x66
    bl ov62_02231690
    str r0, [sp, #0x18]
    mov r0, #0xff
    mov r1, #0x66
    bl Strbuf_Init
    add r7, r0, #0
    ldr r0, [r5, #0x48]
    mov r1, #0x38
    bl MessageLoader_GetNewStrbuf
    str r0, [sp, #0x1c]
    mov r0, #0xff
    mov r1, #0x66
    bl Strbuf_Init
    add r4, r0, #0
    mov r0, #0x8e
    lsl r0, r0, #2
    ldr r0, [r6, r0]
    add r1, r4, #0
    bl sub_0202A1A0
    add r0, r5, #0
    add r1, r4, #0
    bl ov62_022349A8
    mov r0, #0x8e
    lsl r0, r0, #2
    ldr r0, [r6, r0]
    bl sub_0202A1F4
    add r5, r0, #0
    mov r0, #1
    str r0, [sp]
    mov r0, #2
    str r0, [sp, #4]
    mov r1, #0
    ldr r0, [sp, #0x18]
    add r2, r4, #0
    add r3, r1, #0
    bl StringTemplate_SetStrbuf
    ldr r0, [sp, #0x18]
    mov r1, #1
    add r2, r5, #0
    bl StringTemplate_SetCustomMessageWord
    ldr r0, [sp, #0x18]
    ldr r2, [sp, #0x1c]
    add r1, r7, #0
    bl StringTemplate_Format
    add r0, r7, #0
    bl Strbuf_NumLines
    mov r5, #0
    str r0, [sp, #0x14]
    cmp r0, #0
    bls _0223995C
    add r6, r5, #0
 _02239920:
    add r0, r4, #0
    add r1, r7, #0
    add r2, r5, #0
    bl Strbuf_CopyLineNum
    mov r0, #0
    add r1, r4, #0
    add r2, r0, #0
    bl Font_CalcStrbufWidth
    mov r1, #0x80
    sub r0, r1, r0
    lsr r3, r0, #1
    str r6, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    ldr r0, = 0xF0D00
    mov r1, #0
    str r0, [sp, #8]
    mov r0, #0
    str r0, [sp, #0xc]
    ldr r0, [sp, #0x20]
    add r2, r4, #0
    bl sub_0201D78C
    ldr r0, [sp, #0x14]
    add r5, r5, #1
    add r6, #0x10
    cmp r5, r0
    blo _02239920
 _0223995C:
    ldr r0, [sp, #0x20]
    bl sub_0201A9A4
    add r0, r4, #0
    bl Strbuf_Free
    ldr r0, [sp, #0x1c]
    bl Strbuf_Free
    add r0, r7, #0
    bl Strbuf_Free
    ldr r0, [sp, #0x18]
    bl StringTemplate_Free
 _0223997A:
    add sp, #0x24
    pop {r4, r5, r6, r7, pc}
    nop
}
// clang-format on

static BOOL ov62_02239984 (UnkStruct_0208C06C * param0, int param1)
{
    BOOL v0 = 0;
    u16 * v1;
    int v2;
    int v3;
    int v4;
    int pokedexLength;
    UnkStruct_ov62_02237D24 * v6 = param0->unk_860;

    v4 = Unk_ov62_022497D4[param1 + 1];
    v3 = Unk_ov62_022497D4[param1];
    v2 = v4 - v3;
    v1 = ov62_Pokedex_Alphabetical(102, 0, &pokedexLength);

    {
        int v7;
        int v8 = 0;
        BOOL v9;
        PokedexData * v10 = SaveData_Pokedex(param0->unk_830);

        for (v7 = v3; v7 < v4; v7++) {
            v9 = sub_02026FE8(v10, v1[v7]);

            if (v9 == 0) {
                v1[v7] = 0xFFFF;
            }
        }

        v8 = 0;

        for (v7 = v3; v7 < v4; v7++) {
            if (v1[v7] != 0xFFFF) {
                v0 = 1;
                break;
            }
        }

        Heap_FreeToHeap(v1);
    }

    return v0;
}

static void ov62_02239A0C (UnkStruct_0208C06C * param0, int param1)
{
    u16 * v0;
    int v1;
    int v2;
    int v3;
    UnkStruct_ov62_02237D24 * v4 = param0->unk_860;

    v3 = Unk_ov62_022497D4[param1 + 1];
    v2 = Unk_ov62_022497D4[param1];
    v1 = v3 - v2;

    v4->unk_1D4.unk_08 = ov62_Pokedex_Alphabetical(102, 0, &v4->unk_1D4.unk_04);
    v0 = ov62_Pokedex_Alphabetical(102, 0, &v4->unk_1D4.unk_04);

    {
        int v5;
        int v6 = 0;
        BOOL v7;
        PokedexData * v8 = SaveData_Pokedex(param0->unk_830);

        v4->unk_1D4.unk_00 = 0;

        for (v5 = v2; v5 < v3; v5++) {
            v7 = sub_02026FE8(v8, v0[v5]);

            if (v7 == 0) {
                v0[v5] = 0xFFFF;
            } else {
                v4->unk_1D4.unk_00++;
            }
        }

        v6 = 0;

        for (v5 = v2; v5 < v3; v5++) {
            if (v0[v5] == 0xFFFF) {
                continue;
            }

            v4->unk_1D4.unk_08[v6] = v0[v5];
            v6++;
        }

        for (v5 = v6; v5 < v4->unk_1D4.unk_04; v5++) {
            v4->unk_1D4.unk_08[v5] = v0[v5];
        }

        Heap_FreeToHeap(v0);

        v4->unk_1E8 = Heap_AllocFromHeap(102, sizeof(UnkStruct_ov62_02249380) * v4->unk_1D4.unk_00);
        MI_CpuFill8(v4->unk_1E8, 0, sizeof(UnkStruct_ov62_02249380) * v4->unk_1D4.unk_00);

        for (v5 = 0; v5 < v4->unk_1D4.unk_00; v5++) {
            v4->unk_1E8[v5].unk_00 = v4->unk_1D4.unk_08[v5];
            v4->unk_1E8[v5].unk_04 = v4->unk_1D4.unk_08[v5];
        }
    }
    v4->unk_1D4.unk_0C = MessageLoader_Init(0, 26, 412, 102);
    v4->unk_1D4.unk_10 = 1;
}

static void ov62_02239B7C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02237D24 * v0 = param0->unk_860;

    MessageLoader_Free(v0->unk_1D4.unk_0C);
    Heap_FreeToHeap(v0->unk_1E8);
    Heap_FreeToHeap(v0->unk_1D4.unk_08);

    v0->unk_1D4.unk_10 = 0;
}

static void ov62_02239BAC (u32 param0, u32 param1, void * param2)
{
    UnkStruct_0208C06C * v0 = param2;
    UnkStruct_ov62_02237D24 * v1 = v0->unk_860;

    if (param1 != 0) {
        return;
    }
    if (ov62_02239984(v0, param0) == 0) {
        Sound_PlayEffect(1380);
        return;
    }

    ov62_02239A0C(v0, param0);
}

asm static void ov62_02239BD8 (UnkStruct_0208C06C * param0)
{
    push {r4, r5, r6, r7, lr}
    sub sp, #0x34
    str r0, [sp, #0x14]
    mov r0, #1
    str r0, [sp, #0x28]
    mov r1, #0x86
    ldr r0, [sp, #0x14]
    lsl r1, r1, #4
    ldr r4, [r0, r1]
    ldr r5, = Unk_ov62_022491F0
    mov r7, #0
    add r4, #0xd0
 _02239BF0:
    ldrb r0, [r5, #2]
    lsl r0, r0, #0x15
    lsr r0, r0, #0x18
    str r0, [sp, #0x24]
    ldrb r0, [r5]
    lsl r0, r0, #0x15
    lsr r0, r0, #0x18
    str r0, [sp, #0x20]
    ldrb r0, [r5, #3]
    lsr r1, r0, #3
    ldr r0, [sp, #0x24]
    sub r0, r1, r0
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    str r0, [sp, #0x1c]
    ldrb r0, [r5, #1]
    lsr r1, r0, #3
    ldr r0, [sp, #0x20]
    sub r0, r1, r0
    lsl r0, r0, #0x18
    lsr r6, r0, #0x18
    add r0, r4, #0
    bl Window_Init
    ldr r0, [sp, #0x20]
    add r1, r4, #0
    str r0, [sp]
    ldr r0, [sp, #0x1c]
    mov r2, #6
    str r0, [sp, #4]
    str r6, [sp, #8]
    mov r0, #0xe
    str r0, [sp, #0xc]
    ldr r0, [sp, #0x28]
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    str r0, [sp, #0x10]
    ldr r0, [sp, #0x14]
    ldr r3, [sp, #0x24]
    ldr r0, [r0, #0x24]
    bl BGL_AddWindow
    add r0, r4, #0
    mov r1, #0
    bl BGL_FillWindow
    ldr r0, [sp, #0x14]
    add r1, r7, #0
    ldr r0, [r0, #0x48]
    add r1, #0x44
    bl MessageLoader_GetNewStrbuf
    str r0, [sp, #0x2c]
    ldr r1, [sp, #0x2c]
    add r0, r4, #0
    bl ov62_0223429C
    lsl r1, r6, #3
    sub r1, #0x10
    str r0, [sp, #0x30]
    lsr r0, r1, #0x1f
    add r0, r1, r0
    asr r0, r0, #1
    str r0, [sp, #0x18]
    ldr r0, [sp, #0x14]
    add r1, r7, #0
    bl ov62_02239984
    cmp r0, #1
    bne _02239C9A
    ldr r0, [sp, #0x18]
    ldr r2, [sp, #0x2c]
    str r0, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    ldr r0, = 0xF0D00
    ldr r3, [sp, #0x30]
    str r0, [sp, #8]
    mov r0, #0
    str r0, [sp, #0xc]
    add r0, r4, #0
    mov r1, #0
    bl sub_0201D78C
    b _02239CB6
 _02239C9A:
    ldr r0, [sp, #0x18]
    ldr r2, [sp, #0x2c]
    str r0, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    ldr r0, = 0xC0B00
    ldr r3, [sp, #0x30]
    str r0, [sp, #8]
    mov r0, #0
    str r0, [sp, #0xc]
    add r0, r4, #0
    mov r1, #0
    bl sub_0201D78C
 _02239CB6:
    add r0, r4, #0
    bl sub_0201A9A4
    ldr r0, [sp, #0x2c]
    bl Strbuf_Free
    ldr r0, [sp, #0x1c]
    add r7, r7, #1
    add r1, r0, #0
    ldr r0, [sp, #0x28]
    mul r1, r6
    add r0, r0, r1
    str r0, [sp, #0x28]
    add r4, #0x10
    add r5, r5, #4
    cmp r7, #9
    blo _02239BF0
    add sp, #0x34
    pop {r4, r5, r6, r7, pc}
}

static void ov62_02239CE8 (UnkStruct_0208C06C * param0)
{
    u32 v0;
    Window * v1;
    UnkStruct_ov62_02237D24 * v2 = param0->unk_860;

    for (v0 = 0; v0 < 9; v0++) {
        v1 = &v2->unk_D0[v0];
        sub_0201ACF4(v1);
        BGL_DeleteWindow(v1);
    }
}

static void ov62_02239D0C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02237D24 * v0 = param0->unk_860;

    if (BGL_WindowAdded(&v0->unk_10[0]) == 1) {
        sub_0201ACF4(&v0->unk_10[0]);
        BGL_DeleteWindow(&v0->unk_10[0]);
    }
}

void ov62_02239D34 (void * param0, const UnkStruct_ov62_0223CAA4 * param1)
{
    UnkStruct_0208C06C * v0 = param0;
    UnkStruct_ov62_02237D24 * v1 = v0->unk_860;

    if (param1->unk_00 == 1) {
        (void)0;
    } else {
        (void)0;
    }
}

void ov62_02239D38 (void * param0, const UnkStruct_ov62_0223CAA4 * param1)
{
    UnkStruct_0208C06C * v0 = param0;
    UnkStruct_ov62_02237D24 * v1 = v0->unk_860;

    if (param1->unk_00 == 1) {
        (void)0;
    } else {
        v1->unk_2E4 = ov61_0222BC90(ov62_0224112C(v0), v1->unk_230.unk_0C, 5);
    }
}
