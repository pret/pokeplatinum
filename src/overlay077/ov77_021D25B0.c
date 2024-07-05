#include <nitro.h>
#include <string.h>

#include "core_sys.h"

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "sys_task_manager.h"
#include "overlay077/struct_ov77_021D5564_decl.h"
#include "overlay077/struct_ov77_021D670C_decl.h"
#include "overlay077/struct_ov77_021D6734_decl.h"
#include "overlay077/struct_ov77_021D6CFC_decl.h"

#include "struct_defs/struct_0207C690.h"
#include "struct_defs/struct_02099F80.h"
#include "overlay009/struct_ov9_02249FF4.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay115/camera_angle.h"

#include "unk_02000C88.h"
#include "unk_020041CC.h"
#include "overlay_manager.h"
#include "narc.h"
#include "unk_02006E3C.h"
#include "unk_0200A784.h"
#include "unk_0200A9DC.h"
#include "sys_task.h"
#include "unk_0200F174.h"
#include "unk_02014000.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_02018340.h"
#include "easy3d.h"
#include "unk_0201D15C.h"
#include "unk_0201DBEC.h"
#include "gx_layers.h"
#include "camera.h"
#include "unk_0202419C.h"
#include "unk_02024220.h"
#include "overlay077/ov77_021D54B0.h"
#include "overlay077/ov77_021D6670.h"
#include "overlay077/ov77_021D6C70.h"

FS_EXTERN_OVERLAY(overlay77);

typedef struct {
    NNSG3dRenderObj unk_00;
    NNSG3dResFileHeader * unk_54;
} UnkStruct_ov77_021D37C0_sub1_sub1;

typedef struct {
    void * unk_00;
    NNSG3dResTex * unk_04;
    Camera * camera;
    UnkStruct_ov77_021D37C0_sub1_sub1 unk_0C[6];
    int unk_21C;
} UnkStruct_ov77_021D37C0_sub1;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_ov77_021D5308_sub1;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u16 unk_04;
    u8 unk_06;
    u8 unk_07;
    u8 unk_08;
    BGL * unk_0C;
    SysTask * unk_10;
    UnkStruct_ov77_021D670C * unk_14;
    u8 * unk_18;
} UnkStruct_ov77_021D2F38;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u8 unk_08;
    u8 unk_09;
    int unk_0C;
    BGL * unk_10;
    UnkStruct_ov77_021D5564 * unk_14;
    UnkStruct_ov77_021D6734 * unk_18;
    UnkStruct_ov77_021D6CFC * unk_1C;
    UnkStruct_ov77_021D37C0_sub1 unk_20;
    u16 * unk_240;
    u8 unk_244;
    u8 unk_245;
    u8 unk_246;
    u8 unk_247;
    u8 unk_248;
    s16 unk_24A;
    s16 unk_24C;
    s16 unk_24E;
    s16 unk_250;
    s16 unk_252;
    s16 unk_254;
    s16 unk_256;
    s16 unk_258;
    u8 unk_25A;
    u8 unk_25B;
    u8 unk_25C;
    u8 unk_25D;
    fx32 unk_260;
    fx32 unk_264;
} UnkStruct_ov77_021D37C0;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    fx32 unk_04;
    BGL * unk_08;
    UnkStruct_ov77_021D5308_sub1 unk_0C;
} UnkStruct_ov77_021D5308;

typedef struct {
    int unk_00;
    int unk_04;
    BOOL unk_08;
    BGL * unk_0C;
    GenericPointerData * unk_10;
    u32 unk_14;
    UnkStruct_ov77_021D2F38 unk_18;
    UnkStruct_ov77_021D37C0 unk_34;
    UnkStruct_ov77_021D5308 unk_298;
    u8 unk_2A8;
} UnkStruct_ov77_021D2E9C;


void sub_02000EC4(FSOverlayID param0, const OverlayManagerTemplate * param1);
static int ov77_021D2D08(OverlayManager * param0, int * param1);
static int ov77_021D2D94(OverlayManager * param0, int * param1);
static int ov77_021D2E60(OverlayManager * param0, int * param1);
static BOOL ov77_021D2E9C(UnkStruct_ov77_021D2E9C * param0);
static BOOL ov77_021D33F0(UnkStruct_ov77_021D2E9C * param0);
static BOOL ov77_021D5254(UnkStruct_ov77_021D2E9C * param0);
static void ov77_021D2AA0(void);
static void ov77_021D2C80(void);
static void ov77_021D2CE8(void);
static void ov77_021D35B8(UnkStruct_ov77_021D2E9C * param0);
static void ov77_021D361C(UnkStruct_ov77_021D2E9C * param0, BOOL param1);
static void ov77_021D2F0C(UnkStruct_ov77_021D2E9C * param0);
static void ov77_021D2F38(UnkStruct_ov77_021D2F38 * param0);
static BOOL ov77_021D30D0(UnkStruct_ov77_021D2F38 * param0, const int param1);
static void ov77_021D3234(UnkStruct_ov77_021D2E9C * param0);
static void ov77_021D32A4(SysTask * param0, void * param1);
static void ov77_021D3300(SysTask * param0, void * param1);
static void ov77_021D3360(SysTask * param0, void * param1);
static void ov77_021D33A8(SysTask * param0, void * param1);
static void ov77_021D34A8(UnkStruct_ov77_021D2E9C * param0);
static void ov77_021D37C0(UnkStruct_ov77_021D37C0 * param0);
static void ov77_021D3A10(UnkStruct_ov77_021D2E9C * param0, UnkStruct_ov77_021D37C0 * param1);
static void ov77_021D3DC4(UnkStruct_ov77_021D37C0 * param0);
static void ov77_021D3B5C(UnkStruct_ov77_021D2E9C * param0, UnkStruct_ov77_021D37C0 * param1);
static void ov77_021D40B8(UnkStruct_ov77_021D37C0 * param0, int param1);
static BOOL ov77_021D40DC(UnkStruct_ov77_021D37C0 * param0, int param1);
static void ov77_021D4188(UnkStruct_ov77_021D37C0 * param0);
static BOOL ov77_021D4230(UnkStruct_ov77_021D2E9C * param0, UnkStruct_ov77_021D37C0 * param1, const int param2);
static void ov77_021D4B70(UnkStruct_ov77_021D37C0 * param0);
static void ov77_021D4BE4(UnkStruct_ov77_021D37C0 * param0);
static void ov77_021D4C04(UnkStruct_ov77_021D37C0 * param0, int param1);
static void ov77_021D4DC8(UnkStruct_ov77_021D37C0 * param0, int param1);
static void ov77_021D4E90(UnkStruct_ov77_021D37C0 * param0);
static void ov77_021D4F38(UnkStruct_ov77_021D37C0 * param0, const int param1);
static void ov77_021D513C(UnkStruct_ov77_021D2E9C * param0, UnkStruct_ov77_021D37C0 * param1, int param2);
static void ov77_021D36F8(UnkStruct_ov77_021D2E9C * param0);
static void ov77_021D52C8(UnkStruct_ov77_021D2E9C * param0);
static void ov77_021D5308(UnkStruct_ov77_021D5308 * param0);
static BOOL ov77_021D5390(UnkStruct_ov77_021D5308 * param0, const int param1);
static void ov77_021D5478(UnkStruct_ov77_021D2E9C * param0);

extern const OverlayManagerTemplate Unk_ov77_021D742C;

const OverlayManagerTemplate Unk_ov77_021D788C = {
    ov77_021D2D08,
    ov77_021D2D94,
    ov77_021D2E60,
    0xffffffff
};

static const int Unk_ov77_021D7458[] = {
    0x66,
    0x6D,
    0x70
};

const int Unk_ov77_021D779C[][6] = {
    {0x64, 0x65, 0x0, 0x0, 0x0, 0x0},
    {0x67, 0x68, 0x69, 0x6A, 0x6B, 0x6C},
    {0x6E, 0x6F, 0x0, 0x0, 0x0, 0x0}
};

static const UnkStruct_ov9_02249FF4 Unk_ov77_021D74FC = {
    0x29AEC1,
    {-0x29fe, 0x0, 0x0},
    0x0,
    0x5C1,
    0x0
};

static const GXRgb Unk_ov77_021D74EC[8] = {
    GX_RGB(0, 0, 0),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4)
};

const VecFx32 Unk_ov77_021D776C[4] = {
    {-2043, -3548, 0x6E},
    {0x0, 0x0, 0x0},
    {0x0, 0x0, 0x1000},
    {0x0, 0x0, 0x1000}
};

const GXRgb Unk_ov77_021D7444[4] = {
    GX_RGB(24, 24, 18),
    GX_RGB(0, 0, 0),
    GX_RGB(2, 2, 12),
    GX_RGB(31, 31, 31),
};

static void ov77_021D25B0 (void)
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

static void ov77_021D25D0 (void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_B,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_32_FG,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_A,
        GX_VRAM_TEXPLTT_0123_E
    };

    GXLayers_SetBanks(&v0);
}

static void ov77_021D25F0 (void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_256_AB,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
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

static void ov77_021D2610 (UnkStruct_ov77_021D2E9C * param0)
{
    param0->unk_0C = sub_02018340(param0->unk_00);

    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
        };

        sub_02018368(&v0);
    }

    {
        UnkStruct_ov97_0222DB78 v1 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0000,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_0C, 1, &v1, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0800,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_0C, 2, &v2, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x1000,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_0C, 3, &v3, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v4 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x1000,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_0C, 5, &v4, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v5 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0000,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_0C, 6, &v5, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v6 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0800,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_0C, 7, &v6, 0);
    }

    sub_0201975C(0, 0x0);
    sub_0201975C(4, 0x0);
}

static void ov77_021D2724 (UnkStruct_ov77_021D2E9C * param0)
{
    param0->unk_0C = sub_02018340(param0->unk_00);

    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D
        };

        sub_02018368(&v0);
    }

    {
        UnkStruct_ov97_0222DB78 v1 = {
            0,
            0,
            0,
            0,
            4,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x2000,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_0C, 1, &v1, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0,
            0,
            2,
            GX_BG_COLORMODE_256,
            GX_BG_SCRBASE_0x4000,
            GX_BG_CHARBASE_0x18000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_0C, 2, &v2, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0,
            0,
            2,
            GX_BG_COLORMODE_256,
            GX_BG_SCRBASE_0x0000,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_0C, 3, &v3, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v4 = {
            0,
            0,
            0x1000,
            0,
            1,
            GX_BG_COLORMODE_256,
            GX_BG_SCRBASE_0x6000,
            GX_BG_CHARBASE_0x14000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_0C, 4, &v4, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v5[] = {
            {
                0,
                0,
                0,
                0,
                4,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x0000,
                GX_BG_CHARBASE_0x08000,
                GX_BG_EXTPLTT_01,
                3,
                0,
                0,
                0,
            },
            {
                0,
                0,
                0,
                0,
                2,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x2000,
                GX_BG_CHARBASE_0x0c000,
                GX_BG_EXTPLTT_01,
                3,
                0,
                0,
                0,
            },
            {
                0,
                0,
                0,
                0,
                2,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x4000,
                GX_BG_CHARBASE_0x10000,
                GX_BG_EXTPLTT_01,
                3,
                0,
                0,
                0,
            },
        };

        sub_020183C4(param0->unk_0C, 5, &v5[0], 0);
        sub_020183C4(param0->unk_0C, 6, &v5[1], 0);
        sub_020183C4(param0->unk_0C, 7, &v5[2], 0);
    }

    sub_0201975C(1, 0x0);
    sub_0201975C(4, 0x0);
}

static void ov77_021D2828 (UnkStruct_ov77_021D2E9C * param0)
{
    ov77_021D361C(param0, 0);

    {
        UnkStruct_ov97_0222DB78 v0 = {
            0,
            0,
            0,
            0,
            4,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0000,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_0C, 3, &v0, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v1 = {
            0,
            0,
            0,
            0,
            4,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x2000,
            GX_BG_CHARBASE_0x0c000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_0C, 1, &v1, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0,
            0,
            4,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x4000,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_0C, 2, &v2, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v3[] = {
            {
                0,
                0,
                0,
                0,
                4,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x0000,
                GX_BG_CHARBASE_0x08000,
                GX_BG_EXTPLTT_01,
                3,
                0,
                0,
                0,
            },
            {
                0,
                0,
                0,
                0,
                4,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x2000,
                GX_BG_CHARBASE_0x0c000,
                GX_BG_EXTPLTT_01,
                3,
                0,
                0,
                0,
            },
            {
                0,
                0,
                0,
                0,
                4,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x4000,
                GX_BG_CHARBASE_0x10000,
                GX_BG_EXTPLTT_01,
                3,
                0,
                0,
                0,
            },
        };

        sub_020183C4(param0->unk_0C, 5, &v3[0], 0);
        sub_020183C4(param0->unk_0C, 6, &v3[1], 0);
        sub_020183C4(param0->unk_0C, 7, &v3[2], 0);
    }

    sub_0201975C(1, 0x0);
    sub_0201975C(4, 0x0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);

    param0->unk_34.unk_25A = 1;
}

static void ov77_021D2900 (UnkStruct_ov77_021D2E9C * param0)
{
    ov77_021D35B8(param0);
    ov77_021D2828(param0);

    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
        };

        sub_02018368(&v0);
    }

    {
        UnkStruct_ov97_0222DB78 v1 = {
            0,
            0,
            0,
            0,
            2,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x6000,
            GX_BG_CHARBASE_0x14000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_0C, 0, &v1, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0,
            0,
            2,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x6000,
            GX_BG_CHARBASE_0x14000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_0C, 4, &v2, 0);
    }

    sub_02019184(param0->unk_0C, 0, 0, 0);
    sub_02019184(param0->unk_0C, 0, 3, 0);
    sub_02019184(param0->unk_0C, 4, 0, 0);
    sub_02019184(param0->unk_0C, 4, 3, 0);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);

    param0->unk_34.unk_25A = 2;
}

static void ov77_021D2A00 (UnkStruct_ov77_021D2E9C * param0)
{
    param0->unk_0C = sub_02018340(param0->unk_00);

    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
        };

        sub_02018368(&v0);
    }

    {
        UnkStruct_ov97_0222DB78 v1 = {
            0,
            0,
            0x1000,
            0,
            2,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0000,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_0C, 2, &v1, 0);
    }

    sub_0201975C(2, 0x0);
}

static void ov77_021D2A58 (UnkStruct_ov77_021D2E9C * param0)
{
    NNSGfdTexKey v0;
    NNSGfdPlttKey v1;
    u32 v2, v3;

    param0->unk_10 = sub_02024220(param0->unk_00, 0, 1, 0, 4, ov77_021D2AA0);

    v0 = NNS_GfdAllocTexVram(0x2000 * 4, 0, 0);
    v1 = NNS_GfdAllocPlttVram(0x20 * 4, 0, NNS_GFD_ALLOC_FROM_LOW);
    v2 = NNS_GfdGetTexKeyAddr(v0);
    v3 = NNS_GfdGetPlttKeyAddr(v1);
}

static void ov77_021D2AA0 (void)
{
    NNS_G3dGeFlushBuffer();

    G2_SetBG0Priority(1);
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_EdgeMarking(1);
    G3X_SetEdgeColorTable(Unk_ov77_021D74EC);
    G3X_SetFog(0, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7fff, 63, 0);
    G3_ViewPort(0, 0, 255, 191);
}

static void ov77_021D2B30 (void * param0)
{
    UnkStruct_ov77_021D2E9C * v0 = param0;
    sub_0200A858();
}

static void ov77_021D2B38 (void * param0)
{
    int v0;
    UnkStruct_ov77_021D2E9C * v1 = param0;
    UnkStruct_ov77_021D37C0 * v2 = &v1->unk_34;

    if (v2->unk_25B == 1) {
        gCoreSys.unk_65 = 1;

        GXLayers_SwapDisplay();
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);

        v2->unk_25B = 0;

        Camera_ComputeProjectionMatrix(0, v2->unk_20.camera);
        Camera_SetAsActive(v2->unk_20.camera);
    }

    if (v1->unk_0C != NULL) {
        sub_0201C2B8(v1->unk_0C);
    }

    for (v0 = 0; v0 < 7 + 1; v0++) {
        if (v2->unk_247 & 1) {
            sub_02019120(v0, 1);
        }

        if (v2->unk_248 & 1) {
            sub_02019120(v0, 0);
        }

        v2->unk_247 >>= 1;
        v2->unk_248 >>= 1;
    }

    G2_SetWnd0Position(v2->unk_24A, v2->unk_24E, v2->unk_24C, v2->unk_250);
    G2S_SetWnd0Position(v2->unk_252, v2->unk_256, v2->unk_254, v2->unk_258);

    if (v2->unk_245 == 1) {
        ov77_021D2C80();
        v2->unk_245 = 0;
    }

    if (v2->unk_246 == 1) {
        ov77_021D2CE8();
        v2->unk_246 = 0;
    }

    sub_0201DCAC();
    sub_0200A858();
    ov77_021D6E40(v1->unk_34.unk_1C);
}

static void ov77_021D2C80 (void)
{
    GX_SetVisibleWnd(GX_WNDMASK_W0);
    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_OBJ, 1);
    GXS_SetVisibleWnd(GX_WNDMASK_W0);
    G2S_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    G2S_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_OBJ, 1);
}

static void ov77_021D2CE8 (void)
{
    GX_SetVisibleWnd(0);
    GXS_SetVisibleWnd(0);
}

static int ov77_021D2D08 (OverlayManager * param0, int * param1)
{
    UnkStruct_ov77_021D2E9C * v0;
    int v1;

    v1 = 76;

    sub_0200AB84();
    sub_0200F344(0, 0x7fff);
    sub_0200F344(1, 0x7fff);
    SetMainCallback(NULL, NULL);
    SetHBlankCallback(NULL, NULL);
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();
    SetAutorepeat(4, 8);
    Heap_Create(3, v1, 0xa0000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov77_021D2E9C), v1);
    memset(v0, 0, sizeof(UnkStruct_ov77_021D2E9C));

    v0->unk_00 = v1;
    v0->unk_08 = 0;
    v0->unk_2A8 = 0;

    gCoreSys.unk_65 = 0;
    GXLayers_SwapDisplay();
    v0->unk_14 = LCRNG_GetSeed();

    LCRNG_SetSeed(0);

    return 1;
}

static int ov77_021D2D94 (OverlayManager * param0, int * param1)
{
    UnkStruct_ov77_021D2E9C * v0 = OverlayManager_Data(param0);

    if ((v0->unk_2A8) && ((gCoreSys.pressedKeys & PAD_BUTTON_A) || (gCoreSys.pressedKeys & PAD_BUTTON_START))) {
        v0->unk_08 = 1;
        gCoreSys.unk_6C = 0;
        sub_0200F344(0, 0x0);
        sub_0200F344(1, 0x0);
    }

    switch (*param1) {
    case 0:
        v0->unk_18.unk_18 = &v0->unk_2A8;
        (*param1)++;
        break;
    case 1:
        if (ov77_021D2E9C(v0)) {
            (*param1)++;
        }
        break;
    case 2:
        if (ov77_021D33F0(v0)) {
            (*param1)++;
        }
        break;
    case 3:
        if (ov77_021D5254(v0)) {
            (*param1)++;
        }
        break;
    case 4:
        if (v0->unk_04 >= 2430) {
            return 1;
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    if (v0->unk_08) {
        return 1;
    }

    v0->unk_04++;
    return 0;
}

static int ov77_021D2E60 (OverlayManager * param0, int * param1)
{
    UnkStruct_ov77_021D2E9C * v0 = OverlayManager_Data(param0);

    if (ScreenWipe_Done() == 0) {
        sub_0200F2C0();
    }

    LCRNG_SetSeed(v0->unk_14);
    OverlayManager_FreeData(param0);
    Heap_Destroy(76);
    sub_02000EC4(FS_OVERLAY_ID(overlay77), &Unk_ov77_021D742C);

    return 1;
}

static BOOL ov77_021D2E9C (UnkStruct_ov77_021D2E9C * param0)
{
    u8 * v0 = &(param0->unk_18.unk_00);

    if (param0->unk_08) {
        (*v0) = 3;
    }

    switch (*v0) {
    case 0:
        ov77_021D2F0C(param0);
        (*v0)++;
        break;
    case 1:
        ov77_021D2F38(&param0->unk_18);
        (*v0)++;
        break;
    case 2:
        if (ov77_021D30D0(&param0->unk_18, param0->unk_04)) {
            (*v0)++;
        }
        break;
    case 3:
        ov77_021D3234(param0);
        return 1;
    }

    return 0;
}

static void ov77_021D2F0C (UnkStruct_ov77_021D2E9C * param0)
{
    ov77_021D25B0();
    ov77_021D2610(param0);

    param0->unk_18.unk_0C = param0->unk_0C;
    param0->unk_18.unk_14 = ov77_021D670C();

    SetMainCallback(ov77_021D2B30, (void *)param0);

    param0->unk_18.unk_02 = 1;
}

static void ov77_021D2F38 (UnkStruct_ov77_021D2F38 * param0)
{
    sub_02006E3C(128, 16, param0->unk_0C, 2, 0, 0, 0, 76);
    sub_02006E3C(128, 16, param0->unk_0C, 6, 0, 0, 0, 76);
    sub_02006E60(128, 17, param0->unk_0C, 2, 0, 0, 0, 76);
    sub_02006E60(128, 18, param0->unk_0C, 6, 0, 0, 0, 76);

    sub_02006E84(128, 15, 0, 0, 0, 76);
    sub_02006E84(128, 15, 4, 0, 0, 76);

    sub_02006E3C(48, 15, param0->unk_0C, 1, 0, 0, 0, 76);
    sub_02006E60(48, 13, param0->unk_0C, 1, 0, 0, 0, 76);

    sub_02006E84(48, 14, 0, 0, 2 * 16 * 1, 76);

    sub_02006E60(128, 19, param0->unk_0C, 3, 0, 0, 0, 76);
    sub_02006E60(128, 19, param0->unk_0C, 7, 0, 0, 0, 76);
    sub_02006E3C(128, 114, param0->unk_0C, 5, 0, 0, 0, 76);
    sub_02006E60(128, 113, param0->unk_0C, 5, 0, 0, 0, 76);

    sub_02006E84(128, 115, 4, 0, 2 * 16 * 1, 76);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);

    G2_SetBlendAlpha((GX_BLEND_PLANEMASK_BG1), (GX_BLEND_PLANEMASK_BG3), 0, 16);
    G2S_SetBlendAlpha((GX_BLEND_PLANEMASK_BG1), (GX_BLEND_PLANEMASK_BG3), 0, 16);

    OS_WaitIrq(1, OS_IE_V_BLANK);

    sub_0200F338(0);
    sub_0200F338(1);
    GXLayers_TurnBothDispOn();
}

static BOOL ov77_021D30D0 (UnkStruct_ov77_021D2F38 * param0, const int param1)
{
    u8 * v0 = &(param0->unk_01);

    ov77_021D69C0(param0->unk_14, param1);

    switch (*v0) {
    case 0:
        param0->unk_07 = 0;
        param0->unk_06 = 0;
        param0->unk_08 = 0;
        param0->unk_10 = SysTask_Start(ov77_021D32A4, param0, 0);
        sub_02004550(1, 1172, 1);
        (*v0)++;
        break;
    case 1:
        if ((param0->unk_08) && (param1 >= 115)) {
            param0->unk_07 = 0;
            param0->unk_06 = 16;
            param0->unk_08 = 0;
            param0->unk_10 = SysTask_Start(ov77_021D3300, param0, 0);
            (*v0)++;
        }
        break;
    case 2:
        if ((param0->unk_08) && (param1 >= 265)) {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);

            G2_SetBlendAlpha((GX_BLEND_PLANEMASK_BG2), (GX_BLEND_PLANEMASK_BG3), 0, 16);
            G2S_SetBlendAlpha((GX_BLEND_PLANEMASK_BG2), (GX_BLEND_PLANEMASK_BG3), 0, 16);

            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);

            param0->unk_07 = 0;
            param0->unk_06 = 0;
            param0->unk_08 = 0;
            param0->unk_10 = SysTask_Start(ov77_021D3360, param0, 0);
            (*v0)++;
        }
        break;
    case 3:
        if ((param0->unk_08)) {
            param0->unk_07 = 0;
            param0->unk_06 = 0;
            param0->unk_08 = 0;
            param0->unk_10 = SysTask_Start(ov77_021D33A8, param0, 0);
            (*v0)++;
        }
        break;
    case 4:
        if ((param0->unk_08) && (param1 >= 490)) {
            sub_0200F174(2, 0, 0, 0x0, 18, 1, 76);
            (*v0)++;
        }
        break;
    case 5:
        if (ScreenWipe_Done()) {
            return 1;
        }
    }

    return 0;
}

static void ov77_021D3234 (UnkStruct_ov77_021D2E9C * param0)
{
    SetMainCallback(NULL, NULL);

    if (param0->unk_18.unk_02) {
        ov77_021D67B0(param0->unk_18.unk_14);

        sub_02019044(param0->unk_0C, 1);
        sub_02019044(param0->unk_0C, 2);
        sub_02019044(param0->unk_0C, 6);
        sub_02019044(param0->unk_0C, 3);
        sub_02019044(param0->unk_0C, 7);
        sub_02019044(param0->unk_0C, 5);
        Heap_FreeToHeap(param0->unk_0C);

        param0->unk_18.unk_02 = 0;
    }

    if (param0->unk_18.unk_10 != NULL) {
        GF_ASSERT(param0->unk_08);
        SysTask_Done(param0->unk_18.unk_10);
        param0->unk_18.unk_10 = NULL;
    }
}

static void ov77_021D32A4 (SysTask * param0, void * param1)
{
    UnkStruct_ov77_021D2F38 * v0 = param1;

    v0->unk_07++;

    if (v0->unk_07 >= 6) {
        v0->unk_07 = 0;
        v0->unk_06++;
    }

    if (v0->unk_06 >= 16) {
        SysTask_Done(param0);
        v0->unk_10 = NULL;
        v0->unk_08 = 1;
    }

    G2_SetBlendAlpha((GX_BLEND_PLANEMASK_BG1), (GX_BLEND_PLANEMASK_BG3), v0->unk_06, 16);
    G2S_SetBlendAlpha((GX_BLEND_PLANEMASK_BG1), (GX_BLEND_PLANEMASK_BG3), v0->unk_06, 16);
}

static void ov77_021D3300 (SysTask * param0, void * param1)
{
    UnkStruct_ov77_021D2F38 * v0 = param1;

    v0->unk_07++;

    if (v0->unk_07 >= 4) {
        v0->unk_07 = 0;
        v0->unk_06--;
    }

    if (v0->unk_06 == 0) {
        SysTask_Done(param0);
        v0->unk_10 = NULL;
        v0->unk_08 = 1;
        *(v0->unk_18) = 1;
    }

    G2_SetBlendAlpha((GX_BLEND_PLANEMASK_BG1), (GX_BLEND_PLANEMASK_BG3), v0->unk_06, 16);
    G2S_SetBlendAlpha((GX_BLEND_PLANEMASK_BG1), (GX_BLEND_PLANEMASK_BG3), v0->unk_06, 16);
}

static void ov77_021D3360 (SysTask * param0, void * param1)
{
    UnkStruct_ov77_021D2F38 * v0 = param1;

    v0->unk_07++;

    if (v0->unk_07 >= 4) {
        v0->unk_07 = 0;
        v0->unk_06++;
    }

    if (v0->unk_06 >= 16) {
        SysTask_Done(param0);
        v0->unk_10 = NULL;
        v0->unk_08 = 1;
    }

    G2_SetBlendAlpha((GX_BLEND_PLANEMASK_BG2), (GX_BLEND_PLANEMASK_BG3), v0->unk_06, 16);
}

static void ov77_021D33A8 (SysTask * param0, void * param1)
{
    UnkStruct_ov77_021D2F38 * v0 = param1;

    v0->unk_07++;

    if (v0->unk_07 >= 4) {
        v0->unk_07 = 0;
        v0->unk_06++;
    }

    if (v0->unk_06 >= 16) {
        SysTask_Done(param0);
        v0->unk_10 = NULL;
        v0->unk_08 = 1;
    }

    G2S_SetBlendAlpha((GX_BLEND_PLANEMASK_BG2), (GX_BLEND_PLANEMASK_BG3), v0->unk_06, 16);
}

static BOOL ov77_021D33F0 (UnkStruct_ov77_021D2E9C * param0)
{
    u8 * v0 = &(param0->unk_34.unk_00);

    if (param0->unk_08) {
        (*v0) = 4;
    }

    switch (*v0) {
    case 0:
        ov77_021D34A8(param0);
        (*v0)++;
        break;
    case 1:
        ov77_021D37C0(&param0->unk_34);
        (*v0)++;
        break;
    case 2:
        if (ov77_021D40DC(&param0->unk_34, 0) == 1) {
            param0->unk_34.unk_06 = 1;
            (*v0)++;
        }
        break;
    case 3:
        if (ov77_021D4230(param0, &param0->unk_34, param0->unk_04)) {
            (*v0)++;
        }

        ov77_021D6020(param0->unk_34.unk_14);

        if (param0->unk_34.unk_06) {
            if (param0->unk_34.unk_05 == 0) {
                ov77_021D4188(&param0->unk_34);
            }
        } else {
            ov77_021D6E50(param0->unk_34.unk_1C);
        }
        break;
    case 4:
        ov77_021D36F8(param0);
        return 1;
    }

    return 0;
}

static void ov77_021D34A8 (UnkStruct_ov77_021D2E9C * param0)
{
    u8 v0;
    int v1;
    int v2;

    ov77_021D25D0();
    ov77_021D2724(param0);
    ov77_021D2A58(param0);

    v1 = ov77_021D555C();
    v2 = ov77_021D6CB8();

    param0->unk_34.unk_14 = Heap_AllocFromHeap(76, v1);
    param0->unk_34.unk_18 = ov77_021D6734(16);
    param0->unk_34.unk_1C = Heap_AllocFromHeap(76, v2);

    memset(param0->unk_34.unk_14, 0, v1);
    memset(param0->unk_34.unk_1C, 0, v2);

    param0->unk_34.unk_08 = 4;
    ov77_021D6CFC(param0->unk_34.unk_1C);
    param0->unk_34.unk_10 = param0->unk_0C;

    gCoreSys.unk_65 = 0;
    GXLayers_SwapDisplay();

    for (v0 = 0; v0 < 4; v0++) {
        NNS_G3dGlbLightVector(v0, Unk_ov77_021D776C[v0].x, Unk_ov77_021D776C[v0].y, Unk_ov77_021D776C[v0].z);
        NNS_G3dGlbLightColor(v0, Unk_ov77_021D7444[v0]);
    }

    NNS_G3dGlbMaterialColorDiffAmb(GX_RGB(16, 16, 16), GX_RGB(10, 12, 12), 0);
    NNS_G3dGlbMaterialColorSpecEmi(GX_RGB(18, 18, 18), GX_RGB(14, 14, 14), 0);
    NNS_G3dGlbPolygonAttr(13, GX_POLYGONMODE_MODULATE, GX_CULL_BACK, 0, 31, GX_POLYGON_ATTR_MISC_FOG);

    SetMainCallback(ov77_021D2B38, (void *)param0);
    sub_0200AB4C(-16, GX_BLEND_PLANEMASK_BG3, 1);

    param0->unk_34.unk_02 = 1;
}

static void ov77_021D35B8 (UnkStruct_ov77_021D2E9C * param0)
{
    int v0;

    if (param0->unk_34.unk_04 || param0->unk_34.unk_05) {
        Camera_ClearActive();
        Camera_Delete(param0->unk_34.unk_20.camera);

        for (v0 = 0; v0 < param0->unk_34.unk_20.unk_21C; v0++) {
            Heap_FreeToHeap(param0->unk_34.unk_20.unk_0C[v0].unk_54);
        }

        param0->unk_34.unk_20.unk_21C = 0;

        Heap_FreeToHeap(param0->unk_34.unk_20.unk_00);

        param0->unk_34.unk_04 = 0;
        param0->unk_34.unk_05 = 0;
    }
}

static void ov77_021D361C (UnkStruct_ov77_021D2E9C * param0, BOOL param1)
{
    if (param0->unk_34.unk_02 && (param0->unk_0C != NULL)) {
        if (param0->unk_34.unk_25A == 0) {
            sub_02019044(param0->unk_0C, 3);
            sub_02019044(param0->unk_0C, 1);
            sub_02019044(param0->unk_0C, 2);
            sub_02019044(param0->unk_0C, 4);
            sub_02019044(param0->unk_0C, 5);
            sub_02019044(param0->unk_0C, 6);
            sub_02019044(param0->unk_0C, 7);
        } else if (param0->unk_34.unk_25A == 1) {
            sub_02019044(param0->unk_0C, 3);
            sub_02019044(param0->unk_0C, 1);
            sub_02019044(param0->unk_0C, 2);

            sub_02019044(param0->unk_0C, 5);
            sub_02019044(param0->unk_0C, 6);
            sub_02019044(param0->unk_0C, 7);
        } else {
            sub_02019044(param0->unk_0C, 0);
            sub_02019044(param0->unk_0C, 3);
            sub_02019044(param0->unk_0C, 1);
            sub_02019044(param0->unk_0C, 2);
            sub_02019044(param0->unk_0C, 4);
            sub_02019044(param0->unk_0C, 5);
            sub_02019044(param0->unk_0C, 6);
            sub_02019044(param0->unk_0C, 7);
        }

        if (param1 == 1) {
            Heap_FreeToHeap(param0->unk_0C);
            param0->unk_0C = NULL;
        }
    }
}

static void ov77_021D36F8 (UnkStruct_ov77_021D2E9C * param0)
{
    u8 v0;

    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    ov77_021D35B8(param0);

    if (param0->unk_34.unk_03) {
        ov77_021D5BAC(param0->unk_34.unk_14);
        param0->unk_34.unk_03 = 0;
    }

    if (param0->unk_34.unk_02) {
        if (param0->unk_34.unk_18 != NULL) {
            ov77_021D6760(param0->unk_34.unk_18);
            param0->unk_34.unk_18 = NULL;
        }

        if (param0->unk_34.unk_14 != NULL) {
            Heap_FreeToHeap(param0->unk_34.unk_14);
            param0->unk_34.unk_14 = NULL;
        }

        if (param0->unk_34.unk_1C != NULL) {
            ov77_021D6E28(param0->unk_34.unk_1C);
            Heap_FreeToHeap(param0->unk_34.unk_1C);
            param0->unk_34.unk_1C = NULL;
        }

        ov77_021D361C(param0, 1);

        if (param0->unk_34.unk_240 != NULL) {
            Heap_FreeToHeap(param0->unk_34.unk_240);
            param0->unk_34.unk_240 = NULL;
        }

        sub_020242C4(param0->unk_10);
        param0->unk_34.unk_02 = 0;
    }

    NNS_G3dGeFlushBuffer();

    G3X_SetFog(0, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    GX_SetVisibleWnd(0);
    GXS_SetVisibleWnd(0);

    SetMainCallback(NULL, NULL);
}

static void ov77_021D37C0 (UnkStruct_ov77_021D37C0 * param0)
{
    u8 v0;
    NARC * v1;

    v1 = NARC_ctor(NARC_INDEX_DEMO__TITLE__OP_DEMO, 76);

    {
        sub_02007148(v1, 96, 0, 0x20 * 0xc, 0x20 * 0xc, 0x20 * 2, 76);
        sub_020070E8(v1, 95, param0->unk_10, 3, 0, 0, 0, 76);
        sub_0200710C(v1, 12, param0->unk_10, 3, 0, 0, 0, 76);

        sub_02007148(v1, 13, 0, 0x20 * 0xe, 0x20 * 0xe, 0x20 * 2, 76);
        sub_020070E8(v1, 14, param0->unk_10, 2, 0, 0, 0, 76);
        sub_0200710C(v1, 12, param0->unk_10, 2, 0, 0, 0, 76);

        {
            NARC * v2;

            v2 = NARC_ctor(NARC_INDEX_DATA__WEATHER_SYS, 76);

            sub_020070E8(v2, 56, param0->unk_10, 1, 0, 0, 0, 76);
            sub_0200710C(v2, 57, param0->unk_10, 1, 0, 0, 0, 76);
            sub_0200710C(v2, 57, param0->unk_10, 1, 32 * 32, 0, 0, 76);
            sub_02007130(v2, 55, 0, 0x20 * 0, 0x20, 76);
            NARC_dtor(v2);
        }
    }

    {
        sub_02007130(v1, 61, 4, 0, 0, 76);
        sub_020070E8(v1, 59, param0->unk_10, 5, 0, 0, 0, 76);
        sub_0200710C(v1, 63, param0->unk_10, 5, 0, 0, 0, 76);
        sub_020070E8(v1, 58, param0->unk_10, 6, 0, 0, 0, 76);
        sub_0200710C(v1, 62, param0->unk_10, 6, 0, 0, 0, 76);
        sub_020070E8(v1, 60, param0->unk_10, 7, 0, 0, 0, 76);
        sub_0200710C(v1, 64, param0->unk_10, 7, 0, 0, 0, 76);
    }

    {
        sub_020070E8(v1, 14, param0->unk_10, 4, 0, 0, 0, 76);
        sub_0200710C(v1, 12, param0->unk_10, 4, 0, 0, 0, 76);
        sub_02007148(v1, 13, 4, 0x20 * 0xe, 0x20 * 0xe, 0x20 * 2, 76);
    }

    ov77_021D5564(param0->unk_14);
    ov77_021D5C3C(param0->unk_14);
    ov77_021D5FB4(param0->unk_14, param0->unk_18);

    MI_CpuClear16((void *)HW_BG_PLTT, 2);
    MI_CpuClear16((void *)HW_DB_BG_PLTT, 2);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3, 0);

    sub_0200F338(0);
    sub_0200F338(1);
    NARC_dtor(v1);

    param0->unk_03 = 1;
}

static void ov77_021D3A10 (UnkStruct_ov77_021D2E9C * param0, UnkStruct_ov77_021D37C0 * param1)
{
    u8 v0;
    NARC * v1;

    sub_02018898(param1->unk_10, 2, 0, GX_BG_COLORMODE_16);
    sub_02018898(param1->unk_10, 3, 0, GX_BG_COLORMODE_16);

    G2_SetBG0Priority(0);
    BGL_SetPriority(1, 3);

    v1 = NARC_ctor(NARC_INDEX_DEMO__TITLE__OP_DEMO, 76);

    sub_02007130(v1, 68, 0, 0, 0, 76);

    sub_020070E8(v1, 66, param1->unk_10, 1, 0, 0, 0, 76);
    sub_0200710C(v1, 70, param1->unk_10, 1, 0, 0, 0, 76);
    sub_020070E8(v1, 65, param1->unk_10, 2, 0, 0, 0, 76);
    sub_0200710C(v1, 69, param1->unk_10, 2, 0, 0, 0, 76);
    sub_020070E8(v1, 67, param1->unk_10, 3, 0, 0, 0, 76);
    sub_0200710C(v1, 71, param1->unk_10, 3, 0, 0, 0, 76);

    MI_CpuClear16((void *)HW_BG_PLTT, 2);
    MI_CpuClear16((void *)HW_DB_BG_PLTT, 2);

    sub_02019184(param1->unk_10, 1, 0, 0);
    sub_02019184(param1->unk_10, 2, 0, 0);
    sub_02019184(param1->unk_10, 3, 0, 0);
    sub_02019184(param1->unk_10, 5, 0, 0);
    sub_02019184(param1->unk_10, 6, 0, 0);
    sub_02019184(param1->unk_10, 7, 0, 0);

    NARC_dtor(v1);
}

static void ov77_021D3B5C (UnkStruct_ov77_021D2E9C * param0, UnkStruct_ov77_021D37C0 * param1)
{
    u8 v0;
    NARC * v1;

    ov77_021D2828(param0);

    v1 = NARC_ctor(NARC_INDEX_DEMO__TITLE__OP_DEMO, 76);

    sub_02007130(v1, 72, 0, 0, 0, 76);
    sub_02007130(v1, 72, 4, 0, 0, 76);

    param1->unk_240 = Heap_AllocFromHeap(76, 0x200);

    MI_CpuCopy16((void *)HW_BG_PLTT, param1->unk_240, 0x200);
    MI_CpuClear16(param1->unk_240, 2);

    sub_020070E8(v1, 73, param1->unk_10, 1, 0, 0, 0, 76);
    sub_0200710C(v1, 76, param1->unk_10, 1, 0, 0, 0, 76);
    sub_020070E8(v1, 73, param1->unk_10, 5, 0, 0, 0, 76);
    sub_0200710C(v1, 76, param1->unk_10, 5, 0, 0, 0, 76);

    sub_020070E8(v1, 74, param1->unk_10, 2, 0, 0, 0, 76);
    sub_0200710C(v1, 77, param1->unk_10, 2, 0, 0, 0, 76);
    sub_020070E8(v1, 74, param1->unk_10, 6, 0, 0, 0, 76);
    sub_0200710C(v1, 77, param1->unk_10, 6, 0, 0, 0, 76);

    sub_020070E8(v1, 75, param1->unk_10, 3, 0, 0, 0, 76);
    sub_0200710C(v1, 78, param1->unk_10, 3, 0, 0, 0, 76);
    sub_020070E8(v1, 75, param1->unk_10, 7, 0, 0, 0, 76);
    sub_0200710C(v1, 78, param1->unk_10, 7, 0, 0, 0, 76);

    MI_CpuClear16((void *)HW_BG_PLTT, 2);
    MI_CpuClear16((void *)HW_DB_BG_PLTT, 2);

    sub_02019184(param1->unk_10, 1, 0, -128);
    sub_02019184(param1->unk_10, 2, 0, -200);
    sub_02019184(param1->unk_10, 3, 0, -152);
    sub_02019184(param1->unk_10, 5, 0, 128);
    sub_02019184(param1->unk_10, 6, 0, 0x18 * 8);
    sub_02019184(param1->unk_10, 7, 0, 0x16 * 8);

    NARC_dtor(v1);
}

static void ov77_021D3D4C (UnkStruct_ov77_021D2E9C * param0, UnkStruct_ov77_021D37C0 * param1)
{
    u8 v0;
    NARC * v1;

    ov77_021D2900(param0);

    v1 = NARC_ctor(NARC_INDEX_DEMO__TITLE__OP_DEMO, 76);

    sub_020070E8(v1, 79, param1->unk_10, 0, 0, 0, 0, 76);
    sub_0200710C(v1, 80, param1->unk_10, 0, 0, 0, 0, 76);
    sub_020070E8(v1, 81, param1->unk_10, 4, 0, 0, 0, 76);
    sub_0200710C(v1, 82, param1->unk_10, 4, 0, 0, 0, 76);

    NARC_dtor(v1);
}

static void ov77_021D3DC4 (UnkStruct_ov77_021D37C0 * param0)
{
    if (gCoreSys.unk_65 == 0) {
        sub_02019184(param0->unk_10, 1, 3, 0);
        sub_02019184(param0->unk_10, 2, 3, 0);
        sub_02019184(param0->unk_10, 3, 3, 0);
        sub_02019184(param0->unk_10, 5, 3, 256);
        sub_02019184(param0->unk_10, 6, 3, 256);
        sub_02019184(param0->unk_10, 7, 3, 256);

        BGL_SetPriority(1, 1);
        BGL_SetPriority(2, 2);
        BGL_SetPriority(3, 0);
        BGL_SetPriority(5, 1);
        BGL_SetPriority(6, 2);
        BGL_SetPriority(7, 0);
    } else {
        sub_02019184(param0->unk_10, 1, 3, 256);
        sub_02019184(param0->unk_10, 2, 3, 256);
        sub_02019184(param0->unk_10, 3, 3, 256);
        sub_02019184(param0->unk_10, 5, 3, 0);
        sub_02019184(param0->unk_10, 6, 3, 0);
        sub_02019184(param0->unk_10, 7, 3, 0);

        BGL_SetPriority(1, 1);
        BGL_SetPriority(2, 2);
        BGL_SetPriority(3, 0);
        BGL_SetPriority(5, 1);
        BGL_SetPriority(6, 2);
        BGL_SetPriority(7, 0);
    }

    ov77_021D636C(param0->unk_14, 0);
}

static void ov77_021D3EDC (UnkStruct_ov77_021D37C0 * param0, int param1)
{
    param0->unk_20.unk_00 = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_DEMO__TITLE__OP_DEMO, Unk_ov77_021D7458[param1], 76);
    param0->unk_20.unk_04 = NNS_G3dGetTex((NNSG3dResFileHeader *)param0->unk_20.unk_00);

    {
        BOOL v0;

        v0 = Easy3D_UploadTextureToVRAM(param0->unk_20.unk_04);
        GF_ASSERT(v0);
    }

    {
        u8 * v1;
        u32 v2;

        GF_ASSERT(param0->unk_20.unk_04->texInfo.ofsTex != 0);

        v1 = (u8 *)param0->unk_20.unk_04 + param0->unk_20.unk_04->texInfo.ofsTex;
        v2 = (u32)(v1 - (u8 *)param0->unk_20.unk_00);

        Heap_ReallocFromHeap(param0->unk_20.unk_00, v2);
    }
}

static void ov77_021D3F24 (UnkStruct_ov77_021D37C0 * param0, int param1, int param2, int param3)
{
    u8 v0;
    NARC * v1;
    BOOL v2;
    NNSG3dResMdlSet * v3;
    NNSG3dResMdl * v4;

    if (param3 > 6) {
        param3 = 6;
    }

    v1 = NARC_ctor(NARC_INDEX_DEMO__TITLE__OP_DEMO, 76);

    for (v0 = param2; v0 < param3; v0++) {
        if (Unk_ov77_021D779C[param1][v0] == 0) {
            break;
        }

        param0->unk_20.unk_0C[v0].unk_54 = NARC_AllocAndReadWholeMember(v1, Unk_ov77_021D779C[param1][v0], 76);

        v2 = Easy3D_BindTextureToResource(param0->unk_20.unk_0C[v0].unk_54, param0->unk_20.unk_04);
        GF_ASSERT(v2);

        v3 = NNS_G3dGetMdlSet(param0->unk_20.unk_0C[v0].unk_54);
        GF_ASSERT(v3->dict.numEntry == 1);

        v4 = NNS_G3dGetMdlByIdx(NNS_G3dGetMdlSet(param0->unk_20.unk_0C[v0].unk_54), 0);
        GF_ASSERT(v4);

        NNS_G3dRenderObjInit(&param0->unk_20.unk_0C[v0].unk_00, v4);
        NNS_G3dMdlUseGlbDiff(v4);
        NNS_G3dMdlUseGlbAmb(v4);
        NNS_G3dMdlUseGlbSpec(v4);
        NNS_G3dMdlUseGlbEmi(v4);
        NNS_G3dMdlUseGlbLightEnableFlag(v4);

        param0->unk_20.unk_21C++;
    }

    NARC_dtor(v1);
}

static void ov77_021D4044 (UnkStruct_ov77_021D37C0 * param0, int param1)
{
    param0->unk_20.camera = Camera_Alloc(76);

    {
        VecFx32 v0 = {0, 0, FX32_ONE * 16 * 6};

        Camera_InitWithTarget(&v0, Unk_ov77_021D74FC.unk_00, &Unk_ov77_021D74FC.cameraAngle, Unk_ov77_021D74FC.unk_0E, Unk_ov77_021D74FC.unk_0C, 0, param0->unk_20.camera);
        Camera_SetFOV(0x981, param0->unk_20.camera);

        {
            VecFx32 v1 = {0, (FX32_ONE * 16 * 5), 0};
            Camera_Move(&v1, param0->unk_20.camera);
        }

        Camera_SetAsActive(param0->unk_20.camera);
    }
}

static void ov77_021D40B8 (UnkStruct_ov77_021D37C0 * param0, int param1)
{
    ov77_021D3EDC(param0, param1);
    ov77_021D3F24(param0, param1, 0, 6);
    ov77_021D4044(param0, param1);

    param0->unk_04 = 1;
}

static BOOL ov77_021D40DC (UnkStruct_ov77_021D37C0 * param0, int param1)
{
    if (param1 == 0) {
        switch (param0->unk_09) {
        case 0:
            param0->unk_05 = 1;
            ov77_021D3EDC(param0, param1);
            ov77_021D4044(param0, param1);
            break;
        case 1:
            ov77_021D3F24(param0, param1, 0, 1);
            break;
        case 2:
        default:
            ov77_021D3F24(param0, param1, 1, 6);
            param0->unk_09 = 0;
            param0->unk_05 = 0;
            param0->unk_04 = 1;
            return 1;
        }
    } else {
        switch (param0->unk_09) {
        case 0:
            param0->unk_05 = 1;
            ov77_021D3EDC(param0, param1);
            ov77_021D4044(param0, param1);
            break;
        case 1:
            ov77_021D3F24(param0, param1, 0, 2);
            break;
        case 2:
            ov77_021D3F24(param0, param1, 2, 4);
            break;
        case 3:
        default:
            ov77_021D3F24(param0, param1, 4, 6);
            param0->unk_09 = 0;
            param0->unk_05 = 0;
            param0->unk_04 = 1;
            return 1;
        }
    }

    param0->unk_09++;
    return 0;
}

static void ov77_021D4188 (UnkStruct_ov77_021D37C0 * param0)
{
    u8 v0;
    MtxFx33 v1 = {FX32_ONE, 0, 0, 0, FX32_ONE, 0, 0, 0, FX32_ONE};
    VecFx32 v2 = {FX32_ONE, FX32_ONE, FX32_ONE};
    VecFx32 v3 = {0, 0, 0};

    NNS_G3dGeFlushBuffer();

    sub_020241B4();
    Camera_ComputeViewMatrix();

    if (param0->unk_25C == 1) {
        for (v0 = 0; v0 < param0->unk_20.unk_21C; v0++) {
            DC_FlushAll();
            Easy3D_DrawRenderObj(&param0->unk_20.unk_0C[v0].unk_00, &v3, &v1, &v2);
        }
    }

    if (param0->unk_25D == 1) {
        NNS_G3dGeFlushBuffer();
        sub_020241B4();
        sub_0201469C();
        sub_020146C0();
    }

    G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
}

static BOOL ov77_021D4230 (UnkStruct_ov77_021D2E9C * param0, UnkStruct_ov77_021D37C0 * param1, const int param2)
{
    u8 * v0 = &(param1->unk_01);

    if (!param1->unk_07) {
        ov77_021D6BA0(param1->unk_18, param1->unk_244);
    }

    param1->unk_07 = (param1->unk_07 + 1) % param1->unk_08;

    switch (*v0) {
    case 0:
        if (param2 == 640 - 1) {
            (void)0;
        }

        if (param2 >= 640) {
            sub_02019120(3, 1);
            sub_0200AAE0(8, 0, -16, GX_BLEND_PLANEMASK_BG3, 1);
            (*v0)++;
        }
        break;
    case 1:
        if ((sub_0200AC1C(1) == 1) && (param2 == 700)) {
            sub_02019120(0, 1);
            ov77_021D6CD0(param1->unk_1C, 9);
            ov77_021D6CD0(param1->unk_1C, 10);
            ov77_021D6CD0(param1->unk_1C, 11);
            G2_SetBlendAlpha(0, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, 0, 0);
            param1->unk_25D = 1;
            ov77_021D6050(param1->unk_14, 1);
            (*v0)++;
        }
        break;
    case 2:
        if (param2 == 785) {
            sub_0200F174(3, 0, 0, 0x7fff, 4, 1, 76);
        }

        if (param2 == (785 + 5)) {
            GF_ASSERT(ScreenWipe_Done() == 1);
            param1->unk_247 = (1 << 2);
            param1->unk_248 = (1 << 3);
            sub_0200F174(3, 1, 1, 0x7fff, 4, 1, 76);
        }

        if (param2 == 945 - 1) {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
            param1->unk_25B = 1;
            param1->unk_25D = 0;
            param1->unk_25C = 1;
            GF_ASSERT(sub_02014710(ov77_021D6CBC(param1->unk_1C)) == 0);
        }

        if (param2 == 945) {
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
        }

        if ((param2 >= 975)) {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
            sub_0200F174(3, 1, 1, 0x7fff, 18, 1, 76);
            param1->unk_08 = 16;
            (*v0)++;
        }
        break;
    case 3:
        if (1) {
            ov77_021D513C(param0, param1, param2);
            ov77_021D4F38(param1, param2);
            ov77_021D6530(param1->unk_14, param2);

            if (param2 == (((40 * 30 - 15) + 6))) {
                (void)0;
            }

            if (param2 == (47 * 30 - 15)) {
                (void)0;
            }

            ov77_021D60E0(param1->unk_14, param2);
            ov77_021D61B8(param1->unk_14, param2);

            if (param2 >= 1576) {
                sub_0200F174(0, 0, 0, 0x7fff, 18, 1, 76);
                (*v0)++;
            }
        }

        break;
    case 4:
        ov77_021D4F38(param1, param2);
        ov77_021D6530(param1->unk_14, param2);
        ov77_021D60E0(param1->unk_14, param2);
        ov77_021D61B8(param1->unk_14, param2);

        if (ScreenWipe_Done() && (param2 >= 1600)) {
            sub_02019120(4, 0);
            ov77_021D6000(param1->unk_14, param1->unk_18);
            param1->unk_244 = 1;
            ov77_021D3A10(param0, param1);
            ov77_021D603C(param1->unk_14, 1, 1);
            ov77_021D603C(param1->unk_14, 2, 1);

            sub_02019120(1, 1);
            sub_02019120(2, 1);
            sub_02019120(3, 1);
            sub_02019120(5, 1);
            sub_02019120(6, 1);
            sub_02019120(7, 1);
            sub_02019184(param1->unk_10, 1, 0, 256);
            sub_02019184(param1->unk_10, 1, 3, 0);
            sub_02019184(param1->unk_10, 2, 0, 0);
            sub_02019184(param1->unk_10, 2, 3, 256);
            sub_02019184(param1->unk_10, 3, 0, 0);
            sub_02019184(param1->unk_10, 3, 3, 0);
            sub_02019184(param1->unk_10, 5, 0, 256);
            sub_02019184(param1->unk_10, 5, 3, 0);
            sub_02019184(param1->unk_10, 6, 0, 0);
            sub_02019184(param1->unk_10, 6, 3, 256);
            sub_02019184(param1->unk_10, 7, 0, 0);
            sub_02019184(param1->unk_10, 7, 3, 0);

            param1->unk_264 += 0;
            param1->unk_260 = 256 << FX32_SHIFT;
            param1->unk_24A = 0;
            param1->unk_24C = 255;
            param1->unk_24E = 32;
            param1->unk_250 = 159;
            param1->unk_252 = 0;
            param1->unk_254 = 255;
            param1->unk_256 = 32;
            param1->unk_258 = 159;
            param1->unk_245 = 1;
            param1->unk_06 = 0;

            G2_BlendNone();
            G2S_BlendNone();
            sub_0200F174(0, 1, 1, 0x7fff, 18, 1, 76);
            (*v0)++;
        }
        break;
    case 5:
        ov77_021D4B70(param1);
        ov77_021D607C(param1->unk_14);

        if (ScreenWipe_Done()) {
            if (param2 >= (62 * 30 - 15 - 15)) {
                sub_0201C63C(param1->unk_10, 3, 0, 0);
                sub_0201C63C(param1->unk_10, 3, 3, 256);
                sub_0201C63C(param1->unk_10, 7, 0, 0);
                sub_0201C63C(param1->unk_10, 7, 3, 256);
                sub_0201C63C(param1->unk_10, 2, 0, 0);
                sub_0201C63C(param1->unk_10, 2, 3, 0);
                sub_0201C63C(param1->unk_10, 6, 0, 0);
                sub_0201C63C(param1->unk_10, 6, 3, 0);

                param1->unk_248 = (1 << 1) | (1 << 5);
                param1->unk_246 = 1;

                ov77_021D603C(param1->unk_14, 1, 0);
                ov77_021D603C(param1->unk_14, 2, 0);
                (*v0)++;
            }
        }
        break;
    case 6:
        ov77_021D4BE4(param1);
        ov77_021D4C04(param1, param2);

        if (param2 == (64 * 30 - 15 - 15 - 45)) {
            sub_0200F174(0, 0, 0, 0x0, 4, 1, 76);
            (*v0)++;
        }
        break;
    case 7:
        ov77_021D4BE4(param1);
        ov77_021D4C04(param1, param2);

        if (ScreenWipe_Done()) {
            param1->unk_247 = (1 << 1) | (1 << 5);
            param1->unk_248 = (1 << 2) | (1 << 6);
            sub_0201C63C(param1->unk_10, 1, 0, 0);
            sub_0201C63C(param1->unk_10, 1, 3, 0);
            sub_0201C63C(param1->unk_10, 5, 0, 0);
            sub_0201C63C(param1->unk_10, 5, 3, 0);
            sub_0200F174(0, 1, 1, 0x0, 4, 1, 76);
            (*v0)++;
        }
        break;
    case 8:
        ov77_021D4BE4(param1);
        ov77_021D4C04(param1, param2);
        ov77_021D6470(param1->unk_14, param2);

        if (ScreenWipe_Done()) {
            if (param2 == (65 * 30 - 15 - 15 - 45 - 15)) {
                sub_0201C63C(param1->unk_10, 1, 0, 0);
                sub_0201C63C(param1->unk_10, 1, 3, 256);
                sub_0201C63C(param1->unk_10, 5, 0, 0);
                sub_0201C63C(param1->unk_10, 5, 3, 256);
                ov77_021D603C(param1->unk_14, 11, 1);
                ov77_021D603C(param1->unk_14, 12, 1);
            } else if (param2 >= (1935 - 15)) {
                sub_0200F174(0, 0, 0, 0x7fff, 4, 1, 76);
                (*v0)++;
            }
        }
        break;
    case 9:
        ov77_021D6470(param1->unk_14, param2);

        if (ScreenWipe_Done()) {
            sub_0200F174(0, 1, 1, 0x7fff, 64, 1, 76);
            ov77_021D603C(param1->unk_14, 11, 0);
            ov77_021D603C(param1->unk_14, 12, 0);
            ov77_021D603C(param1->unk_14, 13, 1);
            ov77_021D603C(param1->unk_14, 14, 1);
            ov77_021D603C(param1->unk_14, 15, 1);
            ov77_021D603C(param1->unk_14, 16, 1);
            ov77_021D636C(param1->unk_14, 0);
            ov77_021D3B5C(param0, param1);
            gCoreSys.unk_65 = 0;
            GXLayers_SwapDisplay();
            ov77_021D3DC4(param1);
            param1->unk_246 = 1;
            (*v0)++;
        } else {
            ov77_021D4BE4(param1);
            ov77_021D4C04(param1, param2);
        }
        break;
    case 10:
        ov77_021D6290(param1->unk_14, (16 << FX32_SHIFT));
        ov77_021D4DC8(param1, param2);

        if (ScreenWipe_Done()) {
            if (param2 >= (1995 + 15)) {
                sub_0200F174(3, 0, 0, 0x0, 4, 1, 76);
                (*v0)++;
            }
        }
        break;
    case 11:
        ov77_021D6290(param1->unk_14, (16 << FX32_SHIFT));

        if (ScreenWipe_Done()) {
            G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, 0, 0);
            MI_CpuClear16((void *)HW_BG_PLTT, 0x200);
            sub_0200F174(3, 1, 1, 0x0, 4, 1, 76);
            (*v0)++;
        }
        break;
    case 12:
        ov77_021D6290(param1->unk_14, (16 << FX32_SHIFT));

        if (ScreenWipe_Done()) {
            if (ov77_021D6E78(param1->unk_1C, 0, param2)) {
                sub_0200F174(0, 0, 0, 0x0, 4, 1, 76);
                (*v0)++;
            }
        }
        break;
    case 13:
        ov77_021D6290(param1->unk_14, (16 << FX32_SHIFT));

        if (ScreenWipe_Done()) {
            if (1) {
                gCoreSys.unk_65 = 1;
                GXLayers_SwapDisplay();
                ov77_021D3DC4(param1);

                sub_0200F174(0, 1, 1, 0x0, 4, 1, 76);
                (*v0)++;
            }
        }
        break;
    case 14:
        ov77_021D6290(param1->unk_14, (16 << FX32_SHIFT));

        if (ScreenWipe_Done()) {
            if (param2 >= (2085 + 15 + 30)) {
                if (ov77_021D6E78(param1->unk_1C, 1, param2)) {
                    sub_0200F174(0, 0, 0, 0x0, 4, 1, 76);
                    param1->unk_0C = 0;
                    (*v0)++;
                }
            }
        }
        break;
    case 15:
        ov77_021D6290(param1->unk_14, (16 << FX32_SHIFT));

        if (ScreenWipe_Done()) {
            MI_CpuCopy16(param1->unk_240, (void *)HW_BG_PLTT, 0x200);

            gCoreSys.unk_65 = 0;
            GXLayers_SwapDisplay();

            ov77_021D3D4C(param0, param1);
            ov77_021D3DC4(param1);
            ov77_021D636C(param1->unk_14, 1);

            sub_0201C63C(param1->unk_10, 1, 0, -60);
            sub_0201C63C(param1->unk_10, 2, 0, -60);
            sub_0201C63C(param1->unk_10, 3, 0, -60);
            sub_0201C63C(param1->unk_10, 5, 0, 60);
            sub_0201C63C(param1->unk_10, 6, 0, 60);
            sub_0201C63C(param1->unk_10, 7, 0, 60);
            sub_0200F174(3, 1, 1, 0x0, 16, 1, 76);
            (*v0)++;
        }
        break;
    case 16:
        ov77_021D6290(param1->unk_14, (16 << FX32_SHIFT));

        if (ScreenWipe_Done()) {
            sub_0200F174(4, 1, 1, 0x0, 16, 1, 76);
            (*v0)++;
        }
        break;
    case 17:
        ov77_021D6290(param1->unk_14, (16 << FX32_SHIFT));

        if (ScreenWipe_Done()) {
            if (param2 >= (2200 + 15)) {
                ov77_021D4E90(param1);
            }

            if (param2 >= ((2200 + 15) + 1)) {
                param1->unk_247 |= (1 << 0) | (1 << 4);

                sub_0200F174(0, 0, 0, 0x7fff, 6, 1, 76);
                (*v0)++;
            }
        }
        break;
    case 18:
        ov77_021D4E90(param1);
        ov77_021D6290(param1->unk_14, (16 << FX32_SHIFT));

        if (ScreenWipe_Done()) {
            gCoreSys.unk_65 = 1;
            GXLayers_SwapDisplay();
            (*v0)++;
        }
        break;
    case 19:
        return 1;
        break;
    }

    return 0;
}

static void ov77_021D4B70 (UnkStruct_ov77_021D37C0 * param0)
{
    param0->unk_260 += 0x280;
    param0->unk_264 += 0x110;

    sub_02019184(param0->unk_10, 1, 3, -(param0->unk_264 >> FX32_SHIFT));
    sub_02019184(param0->unk_10, 2, 3, -(param0->unk_260 >> FX32_SHIFT));

    sub_02019184(param0->unk_10, 5, 3, -(param0->unk_264 >> FX32_SHIFT));
    sub_02019184(param0->unk_10, 6, 3, -(param0->unk_260 >> FX32_SHIFT));

    param0->unk_0C = 0;
}

static void ov77_021D4BE4 (UnkStruct_ov77_021D37C0 * param0)
{
    sub_0201C63C(param0->unk_10, 3, 1, 16);
    sub_0201C63C(param0->unk_10, 7, 1, -16);
}

static void ov77_021D4C04 (UnkStruct_ov77_021D37C0 * param0, int param1)
{
    if (param1 == (65 * 30 - 15 - 15 - 45 - 15)) {
        G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
        G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);

        param0->unk_24A = 0;
        param0->unk_24C = 255;
        param0->unk_24E = 0;
        param0->unk_250 = 8 * 0x11;

        G2_SetWnd0Position(param0->unk_24A, param0->unk_24E, param0->unk_24C, param0->unk_250);
        GX_SetVisibleWnd(GX_WNDMASK_W0);
        G2S_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
        G2S_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
        G2S_SetWnd1InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);

        param0->unk_252 = 0;
        param0->unk_254 = 255;
        param0->unk_256 = 0;
        param0->unk_258 = 8 * 0x11;

        G2S_SetWnd0Position(param0->unk_252, param0->unk_256, param0->unk_254, param0->unk_258);
        G2S_SetWnd1Position(1, param0->unk_256, 0, param0->unk_258);
        GXS_SetVisibleWnd(GX_WNDMASK_W0 | GX_WNDMASK_W1);
    } else if (param1 > (65 * 30 - 15 - 15 - 45 - 15)) {
        if (sub_02019FF0(param0->unk_10, 1) >= 256) {
            param0->unk_248 |= (1 << 1);
        }

        if (sub_02019FF0(param0->unk_10, 5) <= -256) {
            param0->unk_248 |= (1 << 5);
        }

        sub_0201C63C(param0->unk_10, 1, 1, 12);
        sub_0201C63C(param0->unk_10, 1, 4, -1);
        sub_0201C63C(param0->unk_10, 5, 1, -12);
        sub_0201C63C(param0->unk_10, 5, 4, -1);
    }
}

static void ov77_021D4DC8 (UnkStruct_ov77_021D37C0 * param0, int param1)
{
    int v0, v1;

    if (param1 > ((1935 - 15) + 8)) {
        v0 = sub_020192EC(param0->unk_10, 1) + 20;

        if (v0 > 0) {
            v0 = 0;
        }

        sub_0201C63C(param0->unk_10, 1, 0, v0);
        v0 = sub_020192EC(param0->unk_10, 5) - 20;

        if (v0 < 0) {
            v0 = 0;
        }

        sub_0201C63C(param0->unk_10, 5, 0, v0);
    }

    if (param1 >= ((1935 - 15) + 14)) {
        v0 = sub_020192EC(param0->unk_10, 2) + 20;

        if (v0 > 0) {
            v0 = 0;
        }

        sub_0201C63C(param0->unk_10, 2, 0, v0);
        v0 = sub_020192EC(param0->unk_10, 6) - 20;

        if (v0 < 0) {
            v0 = 0;
        }

        sub_0201C63C(param0->unk_10, 6, 0, v0);
    }

    if (param1 >= ((1935 - 15) + 20)) {
        v0 = sub_020192EC(param0->unk_10, 3) + 20;

        if (v0 > 0) {
            v0 = 0;
        }

        sub_0201C63C(param0->unk_10, 3, 0, v0);
        v0 = sub_020192EC(param0->unk_10, 7) - 20;

        if (v0 < 0) {
            v0 = 0;
        }

        sub_0201C63C(param0->unk_10, 7, 0, v0);
    }
}

static void ov77_021D4E90 (UnkStruct_ov77_021D37C0 * param0)
{
    int v0, v1;

    v0 = sub_020192EC(param0->unk_10, 1) + 12;

    if (v0 > 0) {
        v0 = 0;
    }

    sub_0201C63C(param0->unk_10, 1, 0, v0);
    v0 = sub_020192EC(param0->unk_10, 5) - 12;

    if (v0 < 0) {
        v0 = 0;
    }

    sub_0201C63C(param0->unk_10, 5, 0, v0);
    v0 = sub_020192EC(param0->unk_10, 2) + 12;

    if (v0 > 0) {
        v0 = 0;
    }

    sub_0201C63C(param0->unk_10, 2, 0, v0);
    v0 = sub_020192EC(param0->unk_10, 6) - 12;

    if (v0 < 0) {
        v0 = 0;
    }

    sub_0201C63C(param0->unk_10, 6, 0, v0);
    v0 = sub_020192EC(param0->unk_10, 3) + 12;

    if (v0 > 0) {
        v0 = 0;
    }

    sub_0201C63C(param0->unk_10, 3, 0, v0);
    v0 = sub_020192EC(param0->unk_10, 7) - 12;

    if (v0 < 0) {
        v0 = 0;
    }

    sub_0201C63C(param0->unk_10, 7, 0, v0);
}

static void ov77_021D4F38 (UnkStruct_ov77_021D37C0 * param0, const int param1)
{
    VecFx32 v0 = {0, 0, 0};

    if (param1 < ((40 * 30 - 15) + 6)) {
        {
            u16 v1;
            v1 = Camera_GetFOV(param0->unk_20.camera);

            if (v1 - 32 > 0x5c1) {
                Camera_AdjustFOV(-32, param0->unk_20.camera);
            } else {
                Camera_SetFOV(0x5c1, param0->unk_20.camera);
            }
        }

        v0.z -= FX32_ONE * 2;
        Camera_Move(&v0, param0->unk_20.camera);
    } else if (param1 == ((40 * 30 - 15) + 6)) {
        VecFx32 v2 = {-(FX32_ONE * 16 * 4), 0, -FX32_ONE * 16 * 3};
        Camera_InitWithTarget(&v2, Unk_ov77_021D74FC.unk_00, &Unk_ov77_021D74FC.cameraAngle, Unk_ov77_021D74FC.unk_0E, Unk_ov77_021D74FC.unk_0C, 0, param0->unk_20.camera);

        {
            VecFx32 v3 = {0, (FX32_ONE * 16 * 5), 0};
            Camera_Move(&v3, param0->unk_20.camera);
        }

        {
            NNS_G3dGeFlushBuffer();

            G3X_SetFog(1, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x1000, 4500);
            G3X_SetFogColor(GX_RGB(31, 31, 31), 31);

            {
                int v4;
                u32 v5[8];

                for (v4 = 0; v4 < 8; v4++) {
                    v5[v4] = (u32)(((v4 * 16) << 0) | ((v4 * 16 + 4) << 8) | ((v4 * 16 + 8) << 16) | ((v4 * 16 + 12) << 24));
                }

                G3X_SetFogTable(v5);
            }
        }

        {
            G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BD, 7, 16 - 7);
            BGL_SetPriority(1, 0);
            sub_02019120(1, 1);
        }
    } else if (param1 < ((47 * 30 - 15) + 6)) {
        v0.x += FX32_ONE * 4;
        Camera_Move(&v0, param0->unk_20.camera);
        sub_0201C63C(param0->unk_10, 1, 1, 4);
    } else if (param1 == ((47 * 30 - 15) + 6)) {
        VecFx32 v6 = {FX32_ONE * 16 * 30, 0, FX32_ONE * 0 - 0x70000};
        Camera_InitWithTarget(&v6, Unk_ov77_021D74FC.unk_00, &Unk_ov77_021D74FC.cameraAngle, Unk_ov77_021D74FC.unk_0E, Unk_ov77_021D74FC.unk_0C, 0, param0->unk_20.camera);
        {
            VecFx32 v7 = {0, (FX32_ONE * 16 * 5), 0};
            Camera_Move(&v7, param0->unk_20.camera);
        }

        {
            CameraAngle v8 = {0, 0x680, 0, 0};
            Camera_AdjustAngleAroundSelf(&v8, param0->unk_20.camera);
        }

        {
            NNS_G3dGeFlushBuffer();
            G3X_SetFog(0, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
        }

        {
            G2_BlendNone();
            sub_02019120(1, 0);
        }
    } else {
        if (param1 >= 1560) {
            u16 v9;

            v9 = Camera_GetFOV(param0->unk_20.camera);

            if (v9 + 24 < 0x4000) {
                Camera_AdjustFOV(24, param0->unk_20.camera);
            }
        }

        v0.x += -0x2000;
        Camera_Move(&v0, param0->unk_20.camera);
    }
}

static void ov77_021D513C (UnkStruct_ov77_021D2E9C * param0, UnkStruct_ov77_021D37C0 * param1, int param2)
{
    BOOL v0;

    switch (param2) {
    case (40 * 30 - 15):
        sub_0200F174(3, 0, 0, 0x0, 4, 1, 76);
        break;
    case ((40 * 30 - 15) + 6):
        GF_ASSERT(ScreenWipe_Done() == 1);
        ov77_021D35B8(param0);
        ov77_021D40DC(param1, 1);
        break;
    case (((40 * 30 - 15) + 6) + 1):
        ov77_021D40DC(param1, 1);
        break;
    case (((40 * 30 - 15) + 6) + 2):
        ov77_021D40DC(param1, 1);
        break;
    case (((40 * 30 - 15) + 6) + 3):
        v0 = ov77_021D40DC(param1, 1);
        GF_ASSERT(v0 == 1);
        sub_0200F174(3, 1, 1, 0x0, 4, 1, 76);
        break;
    case (47 * 30 - 15):
        sub_0200F174(3, 0, 0, 0x0, 4, 1, 76);
        break;
    case ((47 * 30 - 15) + 6):
        GF_ASSERT(ScreenWipe_Done() == 1);
        ov77_021D35B8(param0);
        ov77_021D40B8(param1, 2);
        sub_0200F174(3, 1, 1, 0x0, 4, 1, 76);
        break;
    }
}

static BOOL ov77_021D5254 (UnkStruct_ov77_021D2E9C * param0)
{
    u8 * v0 = &(param0->unk_298.unk_00);

    if (param0->unk_08) {
        (*v0) = 3;
    }

    switch (*v0) {
    case 0:
        ov77_021D52C8(param0);
        (*v0)++;
        break;
    case 1:
        ov77_021D5308(&param0->unk_298);
        (*v0)++;
        break;
    case 2:
        if (ov77_021D5390(&param0->unk_298, param0->unk_04)) {
            (*v0)++;
        }
        break;
    case 3:
        ov77_021D5478(param0);
        return 1;
    }

    return 0;
}

static void ov77_021D52C8 (UnkStruct_ov77_021D2E9C * param0)
{
    int v0;
    int v1;

    ov77_021D25F0();
    ov77_021D2A00(param0);

    param0->unk_298.unk_08 = param0->unk_0C;

    sub_0200F344(0, 0x7fff);
    sub_0200F344(1, 0x7fff);

    G2_BlendNone();

    param0->unk_298.unk_02 = 1;
}

static void ov77_021D5308 (UnkStruct_ov77_021D5308 * param0)
{
    sub_02006E84(128, 99, 0, 0, 0, 76);
    sub_02006E3C(128, 98, param0->unk_08, 2, 0, 0, 0, 76);
    sub_02006E60(128, 97, param0->unk_08, 2, 0, 0, 0, 76);

    GXLayers_DisableEngineALayers();
    GXLayers_EngineASetLayers(0);
    GXLayers_EngineBSetLayers(0);

    param0->unk_04 = -24 * FX32_ONE;

    sub_02019184(param0->unk_08, 2, 0, 0);
    sub_02019184(param0->unk_08, 2, 3, param0->unk_04 / FX32_ONE);

    param0->unk_03 = 1;
}

static BOOL ov77_021D5390 (UnkStruct_ov77_021D5308 * param0, const int param1)
{
    u8 * v0 = &(param0->unk_01);

    switch (*v0) {
    case 0:
        if (param1 >= (2285 - 15 - 65)) {
            sub_0200F174(0, 1, 1, 0x7fff, 30, 1, 76);
            (*v0)++;
        }
        break;
    case 1:
        if (ScreenWipe_Done()) {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            sub_0200F174(0, 1, 1, 0x0, 90, 1, 76);
            (*v0)++;
        }
        break;
    case 2:
        if (ScreenWipe_Done()) {
            (*v0)++;
        }
        break;
    case 3:
        if (param1 >= ((2500 - 15 - 65))) {
            sub_0200F174(0, 0, 0, 0x0, 8, 1, 76);

            (*v0)++;
        }
        break;
    case 4:
        if (ScreenWipe_Done()) {
            return 1;
        }
    }

    param0->unk_04 += 0x400;
    sub_02019184(param0->unk_08, 2, 3, param0->unk_04 / FX32_ONE);

    return 0;
}

static void ov77_021D5478 (UnkStruct_ov77_021D2E9C * param0)
{
    if (param0->unk_298.unk_02) {
        sub_02019044(param0->unk_0C, 2);
        Heap_FreeToHeap(param0->unk_0C);
        param0->unk_298.unk_02 = 0;
    }

    if (param0->unk_298.unk_03) {
        param0->unk_298.unk_03 = 0;
    }
}
