#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "message.h"
#include "struct_decls/struct_02018340_decl.h"

#include "struct_defs/union_02022594_020225E0.h"
#include "struct_defs/struct_02099F80.h"
#include "overlay071/struct_ov71_0223B620.h"
#include "overlay071/struct_ov71_0223C444.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_020067E8.h"
#include "narc.h"
#include "unk_02006E3C.h"
#include "unk_0200A784.h"
#include "message.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_0201E3D8.h"
#include "gx_layers.h"
#include "unk_020218BC.h"
#include "unk_02022594.h"
#include "strbuf.h"
#include "unk_020393C8.h"
#include "overlay071/ov71_0223B140.h"
#include "overlay071/ov71_0223C69C.h"
#include "overlay071/ov71_0223CF0C.h"
#include "overlay071/ov71_0223D324.h"

typedef struct {
    const UnkUnion_02022594 * unk_00[2];
} UnkStruct_ov71_0223D4D0;

static void ov71_0223B620(UnkStruct_ov71_0223B620 * param0);
static void ov71_0223B668(UnkStruct_ov71_0223B620 * param0);
static void ov71_0223B688(void);
static void ov71_0223B858(UnkStruct_02018340 * param0);
static void ov71_0223B968(UnkStruct_ov71_0223B620 * param0, NARC * param1);
static void ov71_0223BBDC(UnkStruct_02018340 * param0);
static BOOL ov71_0223BC20(UnkStruct_ov71_0223B620 * param0);
static BOOL ov71_0223BDF8(UnkStruct_ov71_0223B620 * param0);
static BOOL ov71_0223C334(UnkStruct_ov71_0223B620 * param0, const u8 * param1);
static int ov71_0223BEF8(UnkStruct_ov71_0223B620 * param0);
static void ov71_0223BFBC(UnkStruct_ov71_0223B620 * param0);
static void ov71_0223B6A8(const u8 param0, const u8 param1, NARC * param2);
static void ov71_0223B768(const u8 param0, NARC * param1);
static void ov71_0223B820(const u8 param0, NARC * param1);
static void ov71_0223C0D8(UnkStruct_ov71_0223B620 * param0, const u8 param1);
static void ov71_0223C128(UnkStruct_ov71_0223B620 * param0, const u8 param1);
static void ov71_0223C18C(void * param0);
static void ov71_0223C390(UnkStruct_ov71_0223B620 * param0);
static void ov71_0223C3E8(UnkStruct_ov71_0223B620 * param0);
static void ov71_0223C1AC(UnkStruct_ov71_0223B620 * param0, const u8 param1);
static void ov71_0223C288(void);
static void ov71_0223C2F4(UnkStruct_ov71_0223B620 * param0);
static const u8 ov71_0223C40C(const int param0);
static void ov71_0223C444(UnkStruct_ov71_0223C444 * param0);
static void ov71_0223C44C(UnkStruct_ov71_0223C444 * param0);
static void ov71_0223C45C(UnkStruct_ov71_0223C444 * param0);
static void ov71_0223C4DC(const u8 * param0, u8 * param1);
static void ov71_0223C530(UnkStruct_02018340 * param0, const int param1, const u8 * param2);
static void ov71_0223C594(const int param0);
static void ov71_0223C5A4(UnkStruct_ov71_0223B620 * param0, const u8 param1);
static int ov71_0223C60C(UnkStruct_02018340 * param0, const UnkUnion_02022594 * param1);
static int ov71_0223C654(UnkStruct_02018340 * param0, const UnkUnion_02022594 * param1);

static const u8 Unk_ov71_0223D4B0[5] = {
    0x1,
    0x3,
    0x4,
    0xF,
    0xF
};

static const UnkUnion_02022594 Unk_ov71_0223D5A4[] = {
    {0x98, 0xB7, 0x78, 0x97},
    {0x28, 0x4F, 0x18, 0x3F},
    {0x28, 0x4F, 0x50, 0x77},
    {0x28, 0x4F, 0x88, 0xA7},
    {0x28, 0x4F, 0xC0, 0xE7},
    {0x60, 0x87, 0x18, 0x3F},
    {0x60, 0x87, 0x50, 0x77},
    {0x60, 0x87, 0x88, 0xA7},
    {0x60, 0x87, 0xC0, 0xE7},
    {0xFF, 0x0, 0x0, 0x0}
};

static const UnkUnion_02022594 Unk_ov71_0223D4C0[] = {
    {0x98, 0xB7, 0x78, 0x97},
    {0xFF, 0x0, 0x0, 0x0}
};

static const UnkStruct_ov71_0223D4D0 Unk_ov71_0223D4D0[] = {
    {Unk_ov71_0223D4C0, Unk_ov71_0223D4C0},
    {Unk_ov71_0223D4C0, Unk_ov71_0223D5A4}
};

static const u8 Unk_ov71_0223D4A8[] = {
    0x1,
    0x1,
    0x0,
    0x2
};

static const u8 Unk_ov71_0223D4AC[] = {
    0x1,
    0x1,
    0x0,
    0x0
};

static const u8 * const Unk_ov71_0223D4C8[] = {
    Unk_ov71_0223D4A8,
    Unk_ov71_0223D4AC
};

static const int Unk_ov71_0223D604[16] = {
    0x40,
    0x3D,
    0x34,
    0x37,
    0x39,
    0x3A,
    0x3E,
    0x36,
    0x3C,
    0x32,
    0x41,
    0x35,
    0x38,
    0x3B,
    0x33,
    0x3F
};

int ov71_0223B140 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov71_0223B620 * v0;
    NARC * v1;

    sub_02017798(NULL, NULL);
    sub_020177BC(NULL, NULL);
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    sub_02017DD4(4, 8);
    Heap_Create(3, 25, 0x28000);

    v1 = NARC_ctor(NARC_INDEX_GRAPHIC__TRAINER_CASE, 25);
    v0 = sub_0200681C(param0, sizeof(UnkStruct_ov71_0223B620), 25);

    memset(v0, 0, sizeof(UnkStruct_ov71_0223B620));

    v0->unk_B4 = sub_02006840(param0);
    v0->unk_00 = sub_02018340(25);

    ov71_0223B620(v0);
    ov71_0223B688();
    ov71_0223B858(v0->unk_00);
    ov71_0223B968(v0, v1);

    sub_0201E3D8();
    sub_0201E450(4);
    sub_02004550(56, 0, 0);
    ov71_0223D324(&v0->unk_3354);
    sub_02005748(1685);
    ov71_0223CF0C(&v0->unk_30E4, v1);

    {
        int v2;
        u8 v3[8];

        for (v2 = 0; v2 < 8; v2++) {
            if (v0->unk_B4->unk_48[v2].unk_00_0) {
                v3[v2] = 1;
            } else {
                v3[v2] = 0;
            }
        }

        ov71_0223D070(&v0->unk_30E4, v3);
    }

    ov71_0223C69C(v0->unk_00, v0->unk_04);

    {
        u8 v4;

        for (v4 = 0; v4 < 8; v4++) {
            if ((v0->unk_B4->unk_02 >> v4) & 0x1) {
                ov71_0223C128(v0, v4);
            }
        }

        sub_02019448(v0->unk_00, 3);
    }

    ov71_0223C6F0(v0->unk_04, v0->unk_B4);

    if (v0->unk_B4->unk_04_1) {
        ov71_0223CECC(&(v0->unk_04[5]), 1, v0->unk_3370);
    }

    v0->unk_30C0 = 0;
    v0->unk_337C = 0;
    v0->unk_30D4 = 0xffffffff;
    v0->unk_3350 = 0;
    v0->unk_3381 = 0;

    {
        u8 v5;
        u8 v6;

        for (v6 = 0; v6 < 8; v6++) {
            v0->unk_3374[v6] = 0;

            if (v0->unk_B4->unk_48[v6].unk_00_0) {
                v5 = ov71_0223C40C(v0->unk_B4->unk_48[v6].unk_00_1);

                if (v5 <= 4) {
                    if (v5 == 4) {
                        ov71_0223D298(&v0->unk_30E4, v6, 0);
                    } else {
                        ov71_0223D298(&v0->unk_30E4, v6, 3 - v5);
                    }
                }

                if (v5 == 4 - 1) {
                    sub_02021CAC(v0->unk_30E4.unk_1C0[8 + v6], 1);
                } else if (v5 == 4) {
                    sub_02021CAC(v0->unk_30E4.unk_1C0[(8 + 8) + v6], 1);
                }
            }
        }
    }

    ov71_0223C288();

    sub_02017798(ov71_0223C18C, NULL);
    sub_020397E4();
    sub_0200544C(1, (127 / 3));
    sub_0200F174(2, 3, 3, 0x0, 6, 1, 25);
    NARC_dtor(v1);

    return 1;
}

int ov71_0223B388 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov71_0223B620 * v0 = sub_0200682C(param0);

    switch (*param1) {
    case 0:
        if (ScreenWipe_Done()) {
            *param1 = 1;
        }

        break;

    case 1:
    {
        int v1;

        v1 = ov71_0223BEF8(v0);

        if (v1 == 1) {
            if (v0->unk_30D4 == 0) {
                v0->unk_3350 = 1;
                v0->unk_3381 = 1;

                sub_02021CAC(v0->unk_30E4.unk_1C0[((8 + 8) + 8)], 1);
                sub_02021CC8(v0->unk_30E4.unk_1C0[((8 + 8) + 8)], 1);
                sub_02021D6C(v0->unk_30E4.unk_1C0[((8 + 8) + 8)], 10);

                v0->unk_337E = 0;
                v0->unk_3380 = 0;
                v0->unk_337F = 0;
                v0->unk_30D8 = 0;
                *param1 = 4;
            } else {
                u8 v2 = v0->unk_30D4 - 1;

                if (v0->unk_B4->unk_48[v2].unk_00_0) {
                    u8 v3;

                    v3 = ov71_0223C40C(v0->unk_B4->unk_48[v2].unk_00_1);
                    ov71_0223D338(&v0->unk_3354, v2, v3);
                }
            }
        } else if (v1 == 2) {
            if ((v0->unk_3350) && (v0->unk_30D4 != 0)) {
                v0->unk_3350 = 0;
                v0->unk_3381 = 2;
            }

            ov71_0223BFBC(v0);
        } else {
            if ((v0->unk_3350) && (v0->unk_3381 == 0)) {
                v0->unk_3350 = 0;
                v0->unk_3381 = 2;
            }

            if (v0->unk_B4->unk_04_0) {
                ov71_0223C44C(&v0->unk_3364);
            }

            if (v1 == 3) {
                v0->unk_337E = 0;
                *param1 = 3;
            } else if (v1 == 4) {
                sub_02005748(1500);

                sub_0200F174(1, 4, 4, 0x0, 6, 1, 25);
                *param1 = 2;
            }
        }

        ov71_0223C5A4(v0, v0->unk_B4->unk_04_1);
    }
    break;
    case 2:
        if (ScreenWipe_Done()) {
            return 1;
        }
        break;
    case 3:
        if (ov71_0223BC20(v0)) {
            *param1 = 1;
        }
        break;
    case 4:
        if (v0->unk_3381 == 0) {
            int v4;

            v4 = ov71_0223BEF8(v0);

            if (v4 == 1) {
                if (v0->unk_30D4 == 0) {
                    v0->unk_3350 = 1;
                    v0->unk_3381 = 1;
                    v0->unk_3380 = 0;
                    v0->unk_337F = 0;
                }
            } else if (v4 == 2) {
                if ((v0->unk_3350) && (v0->unk_30D4 != 0)) {
                    v0->unk_3350 = 0;
                    v0->unk_3381 = 2;
                }
            } else {
                if (v0->unk_3350) {
                    v0->unk_3350 = 0;
                    v0->unk_3381 = 2;
                }
            }
        }

        if (v0->unk_30D8 == 0) {
            v0->unk_30D8 = ov71_0223BDF8(v0);
        }

        if (v0->unk_30D8) {
            v0->unk_30D8 = 0;
            *param1 = 1;
        }
        break;
    }

    ov71_0223C2F4(v0);
    sub_020219F8(v0->unk_30E4.unk_00);

    return 0;
}

int ov71_0223B5B8 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov71_0223B620 * v0 = sub_0200682C(param0);

    ov71_0223C288();
    ov71_0223B668(v0);
    ov71_0223D238(&v0->unk_30E4);

    Heap_FreeToHeap(v0->unk_30B8);
    Heap_FreeToHeap(v0->unk_335C);

    ov71_0223C6D4(v0->unk_04);
    ov71_0223BBDC(v0->unk_00);

    sub_0201E530();
    sub_02006830(param0);
    sub_02017798(NULL, NULL);
    Heap_Destroy(25);
    sub_0200544C(1, 127);

    return 1;
}

static void ov71_0223B620 (UnkStruct_ov71_0223B620 * param0)
{
    param0->unk_336C = Strbuf_Init(3 + 1, 25);
    param0->unk_3370 = Strbuf_Init(5, 25);

    {
        MessageLoader * v0;

        v0 = MessageLoader_Init(0, 26, 616, 25);

        MessageLoader_GetStrbuf(v0, 11, param0->unk_3370);
        MessageLoader_Free(v0);
    }
}

static void ov71_0223B668 (UnkStruct_ov71_0223B620 * param0)
{
    Strbuf_Free(param0->unk_336C);
    Strbuf_Free(param0->unk_3370);
}

static void ov71_0223B688 (void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_64_E,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_128_B,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_NONE,
        GX_VRAM_TEXPLTT_NONE
    };

    GXLayers_SetBanks(&v0);
}

static void ov71_0223B6A8 (const u8 param0, const u8 param1, NARC * param2)
{
    {
        void * v0;
        NNSG2dPaletteData * v1;

        if (param1) {
            switch (param0) {
            case 0:
                v0 = sub_020071EC(param2, 0, &v1, 25);
                break;
            case 1:
                v0 = sub_020071EC(param2, 1, &v1, 25);
                break;
            case 2:
                v0 = sub_020071EC(param2, 2, &v1, 25);
                break;
            case 3:
                v0 = sub_020071EC(param2, 3, &v1, 25);
                break;
            case 4:
                v0 = sub_020071EC(param2, 4, &v1, 25);
                break;
            case 5:
                v0 = sub_020071EC(param2, 5, &v1, 25);
                break;
            }
        } else {
            v0 = sub_020071EC(param2, 6, &v1, 25);
        }

        {
            u16 * v2;

            DC_FlushRange(v1->pRawData, 2 * 16 * 16);
            v2 = v1->pRawData;

            GXS_LoadBGPltt(&v2[16], 2 * 16, 2 * 16 * 3);
            GXS_LoadBGPltt(&v2[16 * 15], 2 * 16 * 15, 2 * 16);

            Heap_FreeToHeap(v0);
        }
    }
}

static void ov71_0223B768 (const u8 param0, NARC * param1)
{
    void * v0;
    NNSG2dPaletteData * v1;

    switch (param0) {
    case 10:
        v0 = sub_020071EC(param1, 7, &v1, 25);
        break;
    case 11:
        v0 = sub_020071EC(param1, 8, &v1, 25);
        break;
    case 12:
        v0 = sub_020071EC(param1, 10, &v1, 25);
        break;
    case 7:
        v0 = sub_020071EC(param1, 11, &v1, 25);
        break;
    case 8:
        v0 = sub_020071EC(param1, 12, &v1, 25);
        break;
    default:
        v0 = sub_020071EC(param1, 9, &v1, 25);
        break;
    }

    DC_FlushRange(v1->pRawData, 2 * 16);

    GX_LoadBGPltt(v1->pRawData, 0, 2 * 16);
    GXS_LoadBGPltt(v1->pRawData, 0, 2 * 16);

    Heap_FreeToHeap(v0);
}

static void ov71_0223B820 (const u8 param0, NARC * param1)
{
    void * v0;
    u8 * v1;
    NNSG2dPaletteData * v2;

    v0 = sub_020071EC(param1, 48, &v2, 25);
    v1 = (u8 *)(v2->pRawData);

    DC_FlushRange(&v1[2 * 16 * param0], 2 * 16);
    GXS_LoadBGPltt(&v1[2 * 16 * param0], 2 * 16 * 4, 2 * 16);

    Heap_FreeToHeap(v0);
}

static void ov71_0223B858 (UnkStruct_02018340 * param0)
{
    GX_SetDispSelect(GX_DISP_SELECT_SUB_MAIN);

    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_1,
            GX_BGMODE_4,
            GX_BG0_AS_2D,
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
            GX_BG_COLORMODE_256,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 7, &v1, 2);
        sub_02019EBC(param0, 7);
    }

    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe000,
            GX_BG_CHARBASE_0x0c000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0, 5, &v2, 0);
        sub_02019EBC(param0, 5);
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_256,
            GX_BG_SCRBASE_0xe800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0, 6, &v3, 1);
        sub_02019EBC(param0, 6);
    }

    {
        UnkStruct_ov97_0222DB78 v4 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0, 2, &v4, 0);
        sub_02019EBC(param0, 2);
    }

    {
        UnkStruct_ov97_0222DB78 v5 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_256,
            GX_BG_SCRBASE_0xe800,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 3, &v5, 1);
        sub_02019EBC(param0, 3);
    }
}

static void ov71_0223B968 (UnkStruct_ov71_0223B620 * param0, NARC * param1)
{
    {
        void * v0;
        NNSG2dPaletteData * v1;

        v0 = sub_020071EC(param1, 0, &v1, 25);

        DC_FlushRange(v1->pRawData, 2 * 16 * 16);
        GXS_LoadBGPltt(v1->pRawData, 0, 2 * 16 * 16);
        Heap_FreeToHeap(v0);
    }

    ov71_0223B6A8(param0->unk_B4->unk_03, param0->unk_B4->unk_04_3, param1);

    {
        void * v2;
        NNSG2dPaletteData * v3;

        v2 = sub_020071EC(param1, 13, &v3, 25);

        DC_FlushRange(v3->pRawData, 16 * 2 * 16);
        GX_LoadBGPltt(v3->pRawData, 0, 16 * 2 * 16);
        Heap_FreeToHeap(v2);
    }

    ov71_0223B768(param0->unk_B4->unk_00, param1);

    if (param0->unk_B4->unk_05 == 0xff) {
        s32 v4, v5, v6;

        switch (param0->unk_B4->unk_00) {
        case 10:
        case 11:
            v4 = 32;
            v5 = 42;
            v6 = 26;
            break;
        default:
            v4 = 31;
            v5 = 40;
            v6 = -1;
            break;
        }

        {
            BOOL v7;

            param0->unk_30B8 = sub_0200723C(param1, v4, 0, 25, 0);
            GF_ASSERT(param0->unk_30B8 != NULL);

            v7 = NNS_G2dGetUnpackedBGCharacterData(param0->unk_30B8, &param0->unk_30BC);
            GF_ASSERT(v7);
        }

        if (v6 != -1) {
            sub_02007130(param1, v6, 4, (4 * 32), (2 * 32), 25);
        }

        if (param0->unk_B4->unk_04_2 == 0) {
            param0->unk_335C = sub_020071D0(param1, v5, 0, &param0->unk_3360, 25);
        } else {
            param0->unk_335C = sub_020071D0(param1, v5 + 1, 0, &param0->unk_3360, 25);
        }
    } else {
        {
            BOOL v8;

            param0->unk_30B8 = sub_0200723C(param1, Unk_ov71_0223D604[param0->unk_B4->unk_05], 0, 25, 0);
            GF_ASSERT(param0->unk_30B8 != NULL);

            v8 = NNS_G2dGetUnpackedBGCharacterData(param0->unk_30B8, &param0->unk_30BC);
            GF_ASSERT(v8);

            param0->unk_335C = sub_020071D0(param1, 49, 0, &param0->unk_3360, 25);

            ov71_0223B820(param0->unk_B4->unk_05, param1);
        }
    }

    ov71_0223C390(param0);

    sub_020070E8(param1, 27, param0->unk_00, 6, 0, 0, 0, 25);
    sub_0200710C(param1, 35, param0->unk_00, 6, 0, 0, 0, 25);

    sub_020070E8(param1, 28, param0->unk_00, 5, 0, 0, 0, 25);
    sub_0200710C(param1, 37, param0->unk_00, 5, 0, 0, 0, 25);

    sub_020070E8(param1, 29, param0->unk_00, 2, 0, 0, 0, 25);
    sub_0200710C(param1, 38, param0->unk_00, 2, 0, 0, 0, 25);

    sub_020070E8(param1, 30, param0->unk_00, 3, 0, 0, 0, 25);
    sub_0200710C(param1, 39, param0->unk_00, 3, 0, 0, 0, 25);

    ov71_0223C4DC(param0->unk_B4->unk_68, param0->unk_B8);
}

static void ov71_0223BBDC (UnkStruct_02018340 * param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_OBJ, 0);
    sub_02019044(param0, 7);
    sub_02019044(param0, 6);
    sub_02019044(param0, 5);
    sub_02019044(param0, 2);
    sub_02019044(param0, 3);
    Heap_FreeToHeap(param0);
}

static BOOL ov71_0223BC20 (UnkStruct_ov71_0223B620 * param0)
{
    BOOL v0;
    MtxFx22 v1;
    fx32 v2, v3;

    v0 = 0;

    switch (param0->unk_337E) {
    case 0:
        param0->unk_3348 = 8;
        param0->unk_30C8 = 1 << FX32_SHIFT;
        param0->unk_30CC = 1 << FX32_SHIFT;
        param0->unk_30C8 += 2 << (FX32_SHIFT - 6);
        param0->unk_30CC += 2 << (FX32_SHIFT - 6);

        sub_02005748(1686);

        param0->unk_337E++;
        break;
    case 1:
        param0->unk_30C8 -= 2 << ((FX32_SHIFT - param0->unk_3348));

        if (param0->unk_30C8 <= 0) {
            param0->unk_30C8 = 0x24;
            param0->unk_337E++;
        }

        param0->unk_3348--;

        if (param0->unk_3348 <= 1) {
            param0->unk_3348 = 1;
        }
        break;
    case 2:
        if (param0->unk_30C0 == 0) {
            param0->unk_30C0 = 1;
            sub_02006E60(51, 36, param0->unk_00, 6, 0, 0, 0, 25);
            ov71_0223CD44(param0->unk_04, 0, 6);
            ov71_0223C3E8(param0);
            sub_02019EBC(param0->unk_00, 7);
            ov71_0223CA28(param0->unk_04, param0->unk_B4);
            ov71_0223C530(param0->unk_00, 7, param0->unk_B8);
        } else {
            param0->unk_30C0 = 0;
            sub_02006E60(51, 35, param0->unk_00, 6, 0, 0, 0, 25);
            ov71_0223CD44(param0->unk_04, 7, 10);
            sub_02019EBC(param0->unk_00, 7);
            ov71_0223C390(param0);
            ov71_0223C6F0(param0->unk_04, param0->unk_B4);
        }

        param0->unk_337E++;
        break;
    case 3:
        param0->unk_3348++;

        if (param0->unk_3348 > 8) {
            param0->unk_3348 = 8;
        }

        param0->unk_30C8 += 2 << ((FX32_SHIFT - param0->unk_3348));

        if (param0->unk_30C8 >= (1 << FX32_SHIFT)) {
            param0->unk_30C8 = 1 << FX32_SHIFT;
            param0->unk_30C8 = 1 << FX32_SHIFT;
            param0->unk_30CC = 1 << FX32_SHIFT;
            v0 = 1;
        }
        break;
    }

    v2 = FX_Inv(param0->unk_30C8);
    v3 = FX_Inv(param0->unk_30CC);

    v1._00 = v2;
    v1._01 = 0;
    v1._10 = 0;
    v1._11 = v3;

    SVC_WaitVBlankIntr();

    G2S_SetBG2Affine(&v1, 128, 96, 0, 0);
    G2S_SetBG3Affine(&v1, 128, 96, 0, 0);

    return v0;
}

static const fx32 Unk_ov71_0223D5CC[] = {
    2 << (FX32_SHIFT - 6),
        2 << (FX32_SHIFT - 6),
        2 << (FX32_SHIFT - 6),
        2 << (FX32_SHIFT - 6),
        2 << (FX32_SHIFT - 6),
        2 << (FX32_SHIFT - 5),
        2 << (FX32_SHIFT - 5),
        2 << (FX32_SHIFT - 5),
        2 << (FX32_SHIFT - 5),
        2 << (FX32_SHIFT - 5),
        2 << (FX32_SHIFT - 4),
        2 << (FX32_SHIFT - 4),
        2 << (FX32_SHIFT - 4),
        2 << (FX32_SHIFT - 4)
};

static BOOL ov71_0223BDF8 (UnkStruct_ov71_0223B620 * param0)
{
    MtxFx22 v0;
    fx32 v1, v2;

    switch (param0->unk_337E) {
    case 0:
        param0->unk_337D = 0;

        if (param0->unk_337C == 0) {
            param0->unk_30D0 = 1 << FX32_SHIFT;
            param0->unk_337E = 1;
        } else {
            param0->unk_337E = 2;
        }

        ov71_0223C594(param0->unk_337C);
        break;
    case 1:
        param0->unk_30D0 -= Unk_ov71_0223D5CC[param0->unk_337D++];

        if (param0->unk_337D == 14) {
            param0->unk_337C = 1;
            param0->unk_337E = 3;
        }
        break;
    case 2:
        param0->unk_30D0 += Unk_ov71_0223D5CC[(14 - 1) - (param0->unk_337D++)];

        if (param0->unk_337D == 14) {
            param0->unk_337C = 0;
            param0->unk_30D0 = (1 << FX32_SHIFT);
            param0->unk_337E = 3;
        }
        break;
    case 3:
        return 1;
    }

    v1 = FX_Inv(1 << FX32_SHIFT);
    v2 = FX_Inv(param0->unk_30D0);

    v0._00 = v1;
    v0._01 = 0;
    v0._10 = 0;
    v0._11 = v2;

    SVC_WaitVBlankIntr();
    G2_SetBG3Affine(&v0, 128, 0, 0, 0);

    return 0;
}

static int ov71_0223BEF8 (UnkStruct_ov71_0223B620 * param0)
{
    int v0;
    BOOL v1;

    v1 = 0;
    v0 = 0;

    param0->unk_30D4 = 0xffffffff;

    if (Unk_021BF67C.unk_60) {
        param0->unk_30C4 = 1;
    }

    param0->unk_30D4 = ov71_0223C60C(param0->unk_00, Unk_ov71_0223D4D0[param0->unk_B4->unk_04_0].unk_00[param0->unk_337C]);

    if (param0->unk_30D4 != 0xffffffff) {
        v1 = 1;
        v0 = 1;
    } else if (Unk_021BF67C.unk_62) {
        param0->unk_30D4 = ov71_0223C654(param0->unk_00, Unk_ov71_0223D4D0[param0->unk_B4->unk_04_0].unk_00[param0->unk_337C]);

        if (param0->unk_30C4) {
            v1 = 1;
            v0 = 2;
        }
    } else {
        param0->unk_30C4 = 0;
    }

    if (v1 == 0) {
        if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
            v0 = 3;
        } else if (Unk_021BF67C.unk_48 & PAD_BUTTON_B) {
            v0 = 4;
        }
    }

    return v0;
}

static void ov71_0223BFBC (UnkStruct_ov71_0223B620 * param0)
{
    BOOL v0;
    int v1;

    v0 = 0;

    if ((Unk_021BF67C.unk_5C != 0xffff) && (Unk_021BF67C.unk_5E != 0xffff) && (param0->unk_30DC != 0xffff) && (param0->unk_30E0 != 0xffff)) {
        if ((param0->unk_30D4 != 0xffffffff) && (param0->unk_30D4 != 0)) {
            if (param0->unk_B4->unk_48[param0->unk_30D4 - 1].unk_00_0) {
                if (param0->unk_30DC > Unk_021BF67C.unk_5C) {
                    v1 = param0->unk_30DC - Unk_021BF67C.unk_5C;
                    param0->unk_3364.unk_02 = -1;
                } else {
                    v1 = Unk_021BF67C.unk_5C - param0->unk_30DC;
                    param0->unk_3364.unk_02 = 1;
                }

                if ((v1 >= 3) && (v1 <= 40)) {
                    if (param0->unk_30E0 > Unk_021BF67C.unk_5E) {
                        v1 = param0->unk_30E0 - Unk_021BF67C.unk_5E;
                        param0->unk_3364.unk_03 = -1;
                    } else {
                        v1 = Unk_021BF67C.unk_5E - param0->unk_30E0;
                        param0->unk_3364.unk_03 = 1;
                    }

                    if (v1 <= 40) {
                        v0 = 1;
                        ov71_0223C45C(&param0->unk_3364);
                    } else {
                        ov71_0223C444(&param0->unk_3364);
                    }
                } else if (v1 <= 40) {
                    if (param0->unk_30E0 > Unk_021BF67C.unk_5E) {
                        v1 = param0->unk_30E0 - Unk_021BF67C.unk_5E;
                        param0->unk_3364.unk_03 = -1;
                    } else {
                        v1 = Unk_021BF67C.unk_5E - param0->unk_30E0;
                        param0->unk_3364.unk_03 = 1;
                    }

                    if ((v1 >= 3) && (v1 <= 40)) {
                        v0 = 1;
                        ov71_0223C45C(&param0->unk_3364);
                    } else {
                        ov71_0223C444(&param0->unk_3364);
                    }
                }

                if (v0) {
                    ov71_0223C1AC(param0, param0->unk_30D4 - 1);
                }
            }
        }
    }

    param0->unk_30DC = Unk_021BF67C.unk_5C;
    param0->unk_30E0 = Unk_021BF67C.unk_5E;
}

static void ov71_0223C0D8 (UnkStruct_ov71_0223B620 * param0, const u8 param1)
{
    u16 * v0;
    u16 v1;
    u8 v2, v3;

    v0 = (u16 *)sub_02019FE4(param0->unk_00, 2);
    v1 = (4 * 32) + (4 * param1);

    for (v3 = 0; v3 < 4; v3++) {
        for (v2 = 0; v2 < 4; v2++) {
            v0[(v3 + 19) * 32 + v2 + 14] = v1 + v3 * 32 + v2 + (0 << 12);
        }
    }

    sub_02019448(param0->unk_00, 2);
}

static void ov71_0223C128 (UnkStruct_ov71_0223B620 * param0, const u8 param1)
{
    u8 * v0;
    u16 v1;
    u8 v2, v3;
    u8 v4, v5;
    u8 v6, v7;

    v4 = 3;
    v6 = 4;
    v5 = param1 % 4;
    v7 = param1 / 4;

    v4 += (v5 * 7);
    v6 += (v7 * 7);

    v0 = (u8 *)sub_02019FE4(param0->unk_00, 3);
    v1 = (5 * 32 + 26);

    for (v3 = 0; v3 < 5; v3++) {
        for (v2 = 0; v2 < 5; v2++) {
            v0[(v3 + v6) * 32 + v2 + v4] = v1 + v3 * 16 + v2;
        }
    }
}

static void ov71_0223C18C (void * param0)
{
    sub_0201DCAC();
    sub_0200A858();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov71_0223C1AC (UnkStruct_ov71_0223B620 * param0, const u8 param1)
{
    int v0;
    u8 v1, v2;

    v0 = (param0->unk_B4->unk_48[param1].unk_00_1) + 1;

    if (v0 < 200) {
        v2 = ov71_0223C40C(param0->unk_B4->unk_48[param1].unk_00_1);

        param0->unk_3374[param1]++;

        if (param0->unk_3374[param1] >= Unk_ov71_0223D4B0[v2]) {
            param0->unk_3374[param1] = 0;
            (param0->unk_B4->unk_48[param1].unk_00_1)++;

            v1 = ov71_0223C40C(v0);
            GF_ASSERT(v2 <= v1);

            if (v2 < v1) {
                if (v1 <= 4) {
                    if (v1 == 4) {
                        ov71_0223D298(&param0->unk_30E4, param1, 0);
                    } else {
                        ov71_0223D298(&param0->unk_30E4, param1, 3 - v1);
                    }
                }

                if (v1 == 4 - 1) {
                    sub_02021CAC(param0->unk_30E4.unk_1C0[8 + param1], 1);
                } else if (v1 == 4) {
                    sub_02021CAC(param0->unk_30E4.unk_1C0[8 + param1], 0);
                    sub_02021CAC(param0->unk_30E4.unk_1C0[(8 + 8) + param1], 1);
                }
            }
        }
    }
}

static void ov71_0223C288 (void)
{
    MtxFx22 v0;
    fx32 v1, v2;

    v1 = FX_Inv((1 << FX32_SHIFT));
    v2 = FX_Inv((1 << FX32_SHIFT));
    v0._00 = v1;
    v0._01 = 0;
    v0._10 = 0;
    v0._11 = v2;

    SVC_WaitVBlankIntr();

    G2S_SetBG2Affine(&v0, 128, 96, 0, 0);
    G2S_SetBG3Affine(&v0, 128, 96, 0, 0);

    SVC_WaitVBlankIntr();

    G2_SetBG3Affine(&v0, 128, 0, 0, 0);
}

static void ov71_0223C2F4 (UnkStruct_ov71_0223B620 * param0)
{
    if (param0->unk_3381 == 1) {
        if (ov71_0223C334(param0, Unk_ov71_0223D4C8[0])) {
            param0->unk_3381 = 0;
        }
    } else if (param0->unk_3381 == 2) {
        if (ov71_0223C334(param0, Unk_ov71_0223D4C8[1])) {
            param0->unk_3381 = 0;
        }
    }
}

static BOOL ov71_0223C334 (UnkStruct_ov71_0223B620 * param0, const u8 * param1)
{
    u8 v0, v1;

    v0 = param1[param0->unk_3380 * 2];

    if (v0 == 0) {
        param0->unk_337F = 0;
        param0->unk_3380 = 0;
        return 1;
    } else if (param0->unk_337F >= v0) {
        param0->unk_337F = 0;
        param0->unk_3380++;
    }

    v1 = param1[param0->unk_3380 * 2 + 1];

    if (param0->unk_337F == 0) {
        ov71_0223C0D8(param0, v1);
    }

    param0->unk_337F++;

    return 0;
}

static void ov71_0223C390 (UnkStruct_ov71_0223B620 * param0)
{
    u32 v0;

    v0 = param0->unk_3360->szByte;

    sub_0201958C(param0->unk_00, 7, param0->unk_30BC->pRawData, param0->unk_30BC->szByte, 0);

    if (sub_02019FE4(param0->unk_00, 7) != NULL) {
        sub_02019574(param0->unk_00, 7, param0->unk_3360->rawData, v0);
    }

    sub_02019460(param0->unk_00, 7, param0->unk_3360->rawData, v0, 0);
}

static void ov71_0223C3E8 (UnkStruct_ov71_0223B620 * param0)
{
    sub_02019CB8(param0->unk_00, 7, 0, 20, 6, 6, 9, 16);
}

static const u8 ov71_0223C40C (const int param0)
{
    u8 v0;

    if ((0 <= param0) && (param0 < 100)) {
        v0 = 0;
    } else if (param0 < 140) {
        v0 = 1;
    } else if (param0 < 170) {
        v0 = 2;
    } else if (param0 < 190) {
        v0 = 3;
    } else if (param0 < 200) {
        v0 = 4;
    } else {
        GF_ASSERT(FALSE);
        v0 = 0;
    }

    return v0;
}

static void ov71_0223C444 (UnkStruct_ov71_0223C444 * param0)
{
    param0->unk_02 = 0;
    param0->unk_03 = 0;
}

static void ov71_0223C44C (UnkStruct_ov71_0223C444 * param0)
{
    param0->unk_00 = 0;
    param0->unk_01 = 0;
    param0->unk_02 = 0;
    param0->unk_03 = 0;
    param0->unk_04 = 0;
}

static void ov71_0223C45C (UnkStruct_ov71_0223C444 * param0)
{
    int v0[2] = {
        1682, 1683
    };

    if ((param0->unk_00 == 0) && (param0->unk_01 == 0)) {
        sub_02005748(1682);
    }

    if ((param0->unk_00 * param0->unk_02 < 0) || (param0->unk_01 * param0->unk_03 < 0)) {
        param0->unk_04 = (param0->unk_04 + 1) % 2;
        sub_02005748(v0[param0->unk_04]);
    }

    param0->unk_00 = param0->unk_02;
    param0->unk_01 = param0->unk_03;
    param0->unk_02 = 0;
    param0->unk_03 = 0;
}

static void ov71_0223C4DC (const u8 * param0, u8 * param1)
{
    int v0, v1;
    u8 v2;
    u8 v3;

    for (v0 = 0; v0 < 24 * 8 * 64; v0++) {
        v1 = v0 / 64;
        v2 = (v0 / 8) % 8;
        v3 = (v0 % 8);

        param1[v0] = (0x1 & (param0[(v1 * 8) + v2] >> v3));
    }
}

static void ov71_0223C530 (UnkStruct_02018340 * param0, const int param1, const u8 * param2)
{
    u16 * v0;
    u8 v1, v2;
    u16 v3;

    sub_0201958C(param0, param1, param2, (24 * 8 * 64), 1);

    v0 = (u16 *)sub_02019FE4(param0, param1);
    v3 = 0;

    for (v2 = 0; v2 < 8; v2++) {
        for (v1 = 0; v1 < 24; v1++) {
            v0[(14 + v2) * 32 + v1 + 4] = (1 + v3);
            v3++;
        }
    }

    sub_02019448(param0, param1);
}

static void ov71_0223C594 (const int param0)
{
    if (param0 == 1) {
        sub_02005748(1689);
    } else {
        sub_02005748(1689);
    }
}

static void ov71_0223C5A4 (UnkStruct_ov71_0223B620 * param0, const u8 param1)
{
    if (!param1) {
        return;
    }

    if (!param0->unk_30C0) {
        if (param0->unk_3382 == 15) {
            ov71_0223CDE8(param0->unk_04, param0->unk_B4, param0->unk_336C);

            ov71_0223CECC(&(param0->unk_04[5]), 1, param0->unk_3370);
        } else if (param0->unk_3382 == 0) {
            ov71_0223CECC(&(param0->unk_04[5]), 0, param0->unk_3370);
        }
    }

    param0->unk_3382 = (param0->unk_3382 + 1) % 30;
}

static int ov71_0223C60C (UnkStruct_02018340 * param0, const UnkUnion_02022594 * param1)
{
    int v0 = sub_02022664(param1);

    if (v0 != 0xffffffff) {
        if (v0 != 0) {
            u16 v1 = 0x40;

            if (sub_0201C784(param0, 2, Unk_021BF67C.unk_5C, Unk_021BF67C.unk_5E, &v1) == 0) {
                return 0xffffffff;
            }
        } else {
            return v0;
        }
    }

    return v0;
}

static int ov71_0223C654 (UnkStruct_02018340 * param0, const UnkUnion_02022594 * param1)
{
    int v0 = sub_02022644(param1);

    if (v0 != 0xffffffff) {
        if (v0 != 0) {
            u16 v1 = 0x40;

            if (sub_0201C784(param0, 2, Unk_021BF67C.unk_5C, Unk_021BF67C.unk_5E, &v1) == 0) {
                return 0xffffffff;
            }
        } else {
            return v0;
        }
    }

    return v0;
}
