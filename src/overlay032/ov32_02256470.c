#include "overlay032/ov32_02256470.h"

#include <nitro.h>
#include <string.h>

#include "overlay025/ov25_02254560.h"
#include "overlay025/ov25_02255090.h"
#include "overlay025/ov25_02255540.h"
#include "overlay025/poketch_system.h"
#include "overlay025/struct_ov25_0225517C.h"
#include "overlay025/struct_ov25_02255224_decl.h"
#include "overlay025/struct_ov25_022555E8_decl.h"
#include "overlay025/struct_ov25_02255810.h"
#include "overlay025/struct_ov25_022558C4_decl.h"
#include "overlay025/struct_ov25_02255958.h"
#include "overlay032/struct_ov32_02256470_1.h"
#include "overlay032/struct_ov32_02256470_decl.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "item.h"
#include "narc.h"
#include "pokemon_icon.h"
#include "sys_task.h"
#include "sys_task_manager.h"

typedef struct {
    UnkStruct_ov32_02256470 *unk_00;
    const UnkStruct_ov32_02256470_1 *unk_04;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
    u8 unk_0C;
    u8 unk_0D;
    int unk_10;
} UnkStruct_ov32_02256A78;

struct UnkStruct_ov32_02256470_t {
    const UnkStruct_ov32_02256470_1 *unk_00;
    BgConfig *unk_04;
    UnkStruct_ov25_022555E8 *unk_08;
    u32 unk_0C[10];
    u32 unk_34;
    u32 unk_38;
    Window unk_3C[6];
    UnkStruct_ov25_022558C4 *unk_9C[6];
    UnkStruct_ov25_022558C4 *unk_B4[6];
    UnkStruct_ov25_02255958 unk_CC;
    UnkStruct_ov25_02255958 unk_E0;
    SysTask *unk_F4;
    UnkStruct_ov32_02256A78 unk_F8;
    u8 unk_10A[640];
};

static void ov32_02256574(UnkStruct_ov25_02255224 *param0);
static void ov32_02256588(SysTask *param0, void *param1);
static void ov32_02256648(UnkStruct_ov32_02256470 *param0, const UnkStruct_ov32_02256470_1 *param1, u32 param2);
static void ov32_022566E0(Window *param0, UnkStruct_ov32_02256470 *param1);
static void ov32_0225682C(Window *param0, u32 param1);
static u32 ov32_0225686C(u32 param0, u32 param1);
static void ov32_02256898(UnkStruct_ov32_02256470 *param0, const UnkStruct_ov32_02256470_1 *param1);
static void ov32_0225692C(UnkStruct_ov32_02256470 *param0, const UnkStruct_ov32_02256470_1 *param1);
static void ov32_02256A48(UnkStruct_ov32_02256470 *param0);
static void ov32_02256A78(SysTask *param0, void *param1);
static void ov32_02256BD4(UnkStruct_ov32_02256470 *param0);
static void ov32_02256C38(SysTask *param0, void *param1);
static void ov32_02256C54(SysTask *param0, void *param1);

static const struct {
    u16 unk_00;
    u16 unk_02;
} Unk_ov32_02256CCC[] = {
    { 0x40, 0x24 },
    { 0xA0, 0x24 },
    { 0x40, 0x54 },
    { 0xA0, 0x54 },
    { 0x40, 0x84 },
    { 0xA0, 0x84 }
};

BOOL ov32_02256470(UnkStruct_ov32_02256470 **param0, const UnkStruct_ov32_02256470_1 *param1, BgConfig *param2)
{
    UnkStruct_ov32_02256470 *v0 = (UnkStruct_ov32_02256470 *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov32_02256470));

    if (v0 != NULL) {
        int v1;

        ov25_02255090(v0->unk_0C, 8);

        v0->unk_00 = param1;
        v0->unk_04 = Poketch_GetBgConfig();
        v0->unk_08 = ov25_02254664();
        v0->unk_38 = 0;
        v0->unk_F4 = NULL;

        for (v1 = 0; v1 < 6; v1++) {
            Window_Init(&(v0->unk_3C[v1]));
            v0->unk_9C[v1] = NULL;
            v0->unk_B4[v1] = NULL;
        }

        ov25_02255958(&v0->unk_CC, 12, 5, 6, 8);
        ov25_02255958(&v0->unk_E0, 12, 107, 108, 8);
        *param0 = v0;
        return 1;
    }

    return 0;
}

void ov32_02256508(UnkStruct_ov32_02256470 *param0)
{
    if (param0 != NULL) {
        ov32_02256BD4(param0);
        ov25_022559B0(&param0->unk_CC);
        ov25_022559B0(&param0->unk_E0);

        if (param0->unk_F4) {
            SysTask_Done(param0->unk_F4);
        }

        Heap_FreeToHeap(param0);
    }
}

static const UnkStruct_ov25_0225517C Unk_ov32_02256D18[] = {
    { 0x0, ov32_02256588, 0x0 },
    { 0x1, ov32_02256C38, 0x0 },
    { 0x2, ov32_02256C54, 0x0 },
    { 0x0, NULL, 0x0 }
};

void ov32_02256538(UnkStruct_ov32_02256470 *param0, u32 param1)
{
    ov25_0225517C(Unk_ov32_02256D18, param1, param0, param0->unk_00, param0->unk_0C, 2, 8);
}

BOOL ov32_0225655C(UnkStruct_ov32_02256470 *param0, u32 param1)
{
    return ov25_02255130(param0->unk_0C, param1);
}

BOOL ov32_02256568(UnkStruct_ov32_02256470 *param0)
{
    return ov25_02255154(param0->unk_0C);
}

static void ov32_02256574(UnkStruct_ov25_02255224 *param0)
{
    UnkStruct_ov32_02256470 *v0 = ov25_0225523C(param0);
    ov25_02255224(v0->unk_0C, param0);
}

static void ov32_02256588(SysTask *param0, void *param1)
{
    static const BgTemplate v0 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0x7000,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        2,
        0,
        0,
        0
    };
    GXSDispCnt v1;
    UnkStruct_ov32_02256470 *v2;
    u32 v3;

    v2 = ov25_0225523C(param1);
    Bg_InitFromTemplate(v2->unk_04, 6, &v0, 0);

    v3 = Graphics_LoadTilesToBgLayer(12, 106, v2->unk_04, 6, 0, 0, 1, 8);
    v3 /= 0x20;

    Bg_FillTilemapRect(v2->unk_04, 6, 0x5, 0, 0, 32, 24, 0);
    Poketch_LoadActivePalette(0, 0);

    v2->unk_34 = v3;
    ov32_02256648(v2, v2->unk_00, v3);
    Bg_CopyTilemapBufferToVRAM(v2->unk_04, 6);

    ov25_02255308(15, 1);
    ov25_02255360(2);
    ov32_02256898(v2, v2->unk_00);
    ov32_0225692C(v2, v2->unk_00);
    ov32_02256A48(v2);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2 | GX_PLANEMASK_OBJ);
    ov32_02256574(param1);
}

static void ov32_02256648(UnkStruct_ov32_02256470 *param0, const UnkStruct_ov32_02256470_1 *param1, u32 param2)
{
    static const struct {
        u16 unk_00;
        u16 unk_02;
    } v0[] = {
        { 4, 8 },
        { 16, 8 },
        { 4, 14 },
        { 16, 14 },
        { 4, 20 },
        { 16, 20 }
    };
    int v1;

    for (v1 = 0; v1 < param1->unk_00; v1++) {
        Window_Init(&(param0->unk_3C[v1]));
        Window_Add(param0->unk_04, &(param0->unk_3C[v1]), 6, v0[v1].unk_00, v0[v1].unk_02, 8, 1, 0, param2 + v1 * 8);
        Window_PutToTilemap(&(param0->unk_3C[v1]));

        ov32_022566E0(&(param0->unk_3C[v1]), param0);
        ov32_0225682C(&(param0->unk_3C[v1]), ov32_0225686C(param1->unk_04[v1].unk_06, param1->unk_04[v1].unk_08));
    }

    param0->unk_38 = param1->unk_00;
}

static void ov32_022566E0(Window *param0, UnkStruct_ov32_02256470 *param1)
{
    Bg_FillTilemapRect(param1->unk_04, 6, 1, param0->tilemapLeft - 1, param0->tilemapTop - 1, 1, 1, 0);
    Bg_FillTilemapRect(param1->unk_04, 6, 2, param0->tilemapLeft, param0->tilemapTop - 1, param0->width, 1, 0);
    Bg_FillTilemapRect(param1->unk_04, 6, 1025, param0->tilemapLeft + param0->width, param0->tilemapTop - 1, 1, 1, 0);

    Bg_FillTilemapRect(param1->unk_04, 6, 6, param0->tilemapLeft - 1, param0->tilemapTop, 1, param0->height, 0);
    Bg_FillTilemapRect(param1->unk_04, 6, 1030, param0->tilemapLeft + param0->width, param0->tilemapTop, 1, param0->height, 0);

    Bg_FillTilemapRect(param1->unk_04, 6, 2049, param0->tilemapLeft - 1, param0->tilemapTop + param0->height, 1, 1, 0);
    Bg_FillTilemapRect(param1->unk_04, 6, 2050, param0->tilemapLeft, param0->tilemapTop + param0->height, param0->width, 1, 0);
    Bg_FillTilemapRect(param1->unk_04, 6, 3073, param0->tilemapLeft + param0->width, param0->tilemapTop + param0->height, 1, 1, 0);
}

static void ov32_0225682C(Window *param0, u32 param1)
{
    Window_FillRectWithColor(param0, 4, 0, 0, 64, 8);

    if (param1) {
        Window_FillRectWithColor(param0, 15, 0, 0, param1, 8);
    }

    Window_LoadTiles(param0);
}

static u32 ov32_0225686C(u32 param0, u32 param1)
{
    u32 v0;

    if (param0 == 0) {
        return 0;
    }

    if (param0 == param1) {
        return 64;
    }

    v0 = (((param0 << FX32_SHIFT) / param1) * 32) >> FX32_SHIFT;

    if (v0 == 0) {
        v0 = 1;
    } else if (v0 == 32) {
        v0 = 32 - 1;
    }

    return v0 * 2;
}

static void ov32_02256898(UnkStruct_ov32_02256470 *param0, const UnkStruct_ov32_02256470_1 *param1)
{
    int v0;
    UnkStruct_ov25_02255810 v1;

    Graphics_LoadObjectTiles(12, 109, 1, 0 * 0x20, 0, 1, 8);

    v1.unk_0A = 0;
    v1.unk_0B = 2;
    v1.unk_0C = 0;
    v1.unk_0D = 0;

    for (v0 = 0; v0 < param1->unk_00; v0++) {
        if (param1->unk_04[v0].unk_0A != 0) {
            v1.unk_08 = Item_IsMail(param1->unk_04[v0].unk_0A) ? 1 : 0;
            v1.unk_00.x = ((Unk_ov32_02256CCC[v0].unk_00 + 28) << FX32_SHIFT);
            v1.unk_00.y = ((Unk_ov32_02256CCC[v0].unk_02 + 21) << FX32_SHIFT);

            param0->unk_B4[v0] = ov25_02255810(param0->unk_08, &v1, &param0->unk_E0);
        }
    }
}

static void ov32_0225692C(UnkStruct_ov32_02256470 *param0, const UnkStruct_ov32_02256470_1 *param1)
{
    NARC *v0;

    v0 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, 8);

    if (v0) {
        UnkStruct_ov25_02255810 v1;
        NNSG2dCharacterData *v2;
        int v3;

        v1.unk_08 = 0;
        v1.unk_0A = 0;
        v1.unk_0B = 2;
        v1.unk_0C = 1;
        v1.unk_0D = 1;

        for (v3 = 0; v3 < param1->unk_00; v3++) {
            NARC_ReadFromMember(v0, param1->unk_04[v3].unk_00, 0, ((16 * 0x20) + 0x80), param0->unk_10A);

            NNS_G2dGetUnpackedCharacterData(param0->unk_10A, &v2);
            DC_FlushRange(v2->pRawData, (16 * 0x20));
            GXS_LoadOBJ(v2->pRawData, (0 + 8) * 0x20 + (16 * 0x20) * v3, (16 * 0x20));

            v1.unk_00.x = ((Unk_ov32_02256CCC[v3].unk_00) << FX32_SHIFT);
            v1.unk_00.y = ((Unk_ov32_02256CCC[v3].unk_02) << FX32_SHIFT);

            param0->unk_9C[v3] = ov25_02255810(param0->unk_08, &v1, &param0->unk_CC);

            ov25_02255940(param0->unk_9C[v3], (0 + 8) + 16 * v3);
            ov25_022558C4(param0->unk_9C[v3], 4);

            if ((param1->unk_04[v3].unk_06 == 0) || param1->unk_04[v3].unk_0C) {
                ov25_02255938(param0->unk_9C[v3], 1);
            } else {
                u16 v4 = PokeIconPaletteIndex(param1->unk_04[v3].unk_04, param1->unk_04[v3].unk_0F, param1->unk_04[v3].unk_0E);
                ov25_02255938(param0->unk_9C[v3], 2 + v4);
            }
        }

        NARC_dtor(v0);
    }
}

static void ov32_02256A48(UnkStruct_ov32_02256470 *param0)
{
    param0->unk_F8.unk_08 = 0;
    param0->unk_F8.unk_00 = param0;
    param0->unk_F8.unk_04 = param0->unk_00;
    param0->unk_F4 = SysTask_Start(ov32_02256A78, &(param0->unk_F8), 1);
}

static void ov32_02256A78(SysTask *param0, void *param1)
{
    UnkStruct_ov32_02256A78 *v0 = param1;
    const UnkStruct_ov32_02256470_1 *v1 = v0->unk_04;
    UnkStruct_ov32_02256470 *v2 = v0->unk_00;

    switch (v0->unk_08) {
    case 0:
        if (v1->unk_66) {
            u32 v3 = ov32_02256B78(v1->unk_68, v1->unk_6C, v1->unk_00);

            if (v3 < v1->unk_00) {
                if (v1->unk_04[v3].unk_06 && (v1->unk_04[v3].unk_0E == 0)) {
                    v0->unk_09 = 0;
                    v0->unk_0B = 0;
                    v0->unk_0A = v3;
                    v0->unk_10 = 2;

                    if (v1->unk_04[v3].unk_0C == 0) {
                        v0->unk_0C = 1;
                        v0->unk_0D = 8;
                    } else {
                        v0->unk_0C = 2;
                        v0->unk_0D = 4;
                    }

                    v0->unk_08 = 1;
                    ov25_02254444(v1->unk_04[v3].unk_04, v1->unk_04[v3].unk_0F);
                }
            }
        }
        break;
    case 1:
        if (v0->unk_0B == v0->unk_0D) {
            if (!(v1->unk_64 && (v0->unk_0A == ov32_02256B78(v1->unk_68, v1->unk_6C, v1->unk_00)))) {
                ov25_02255900(v2->unk_9C[v0->unk_0A], (Unk_ov32_02256CCC[v0->unk_0A].unk_00 << FX32_SHIFT), (Unk_ov32_02256CCC[v0->unk_0A].unk_02 << FX32_SHIFT));
                v0->unk_08 = 0;
                break;
            }
        }

        if (v0->unk_09 == 0) {
            fx32 v4, v5;

            v4 = Unk_ov32_02256CCC[v0->unk_0A].unk_00 << FX32_SHIFT;
            v5 = (Unk_ov32_02256CCC[v0->unk_0A].unk_02 + v0->unk_10) << FX32_SHIFT;

            ov25_02255900(v2->unk_9C[v0->unk_0A], v4, v5);

            if (v0->unk_0B < v0->unk_0D) {
                v0->unk_0B++;
            }

            v0->unk_10 *= -1;
            v0->unk_09 = v0->unk_0C;
        } else {
            v0->unk_09--;
        }
        break;
    }
}

u32 ov32_02256B78(u32 param0, u32 param1, u32 param2)
{
    u32 v0, v1, v2, v3, v4;

    for (v0 = 0; v0 < param2; v0++) {
        v1 = 8 + Unk_ov32_02256CCC[v0].unk_02 - 16;
        v2 = 8 + Unk_ov32_02256CCC[v0].unk_02 + 16;
        v3 = Unk_ov32_02256CCC[v0].unk_00 - 16;
        v4 = Unk_ov32_02256CCC[v0].unk_00 + 16;

        if (((u32)(param0 - v3) < (u32)(v4 - v3)) & ((u32)(param1 - v1) < (u32)(v2 - v1))) {
            return v0;
        }
    }

    return param2;
}

static void ov32_02256BD4(UnkStruct_ov32_02256470 *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->unk_9C[v0] != NULL) {
            ov25_022558B0(param0->unk_08, param0->unk_9C[v0]);
            param0->unk_9C[v0] = NULL;
        }

        if (param0->unk_B4[v0] != NULL) {
            ov25_022558B0(param0->unk_08, param0->unk_B4[v0]);
            param0->unk_B4[v0] = NULL;
        }
    }

    for (v0 = 0; v0 < param0->unk_38; v0++) {
        Window_Remove(&(param0->unk_3C[v0]));
    }

    param0->unk_38 = 0;
}

static void ov32_02256C38(SysTask *param0, void *param1)
{
    UnkStruct_ov32_02256470 *v0 = ov25_0225523C(param1);

    Bg_FreeTilemapBuffer(v0->unk_04, 6);
    ov32_02256574(param1);
}

static void ov32_02256C54(SysTask *param0, void *param1)
{
    UnkStruct_ov32_02256470 *v0 = ov25_0225523C(param1);
    const UnkStruct_ov32_02256470_1 *v1 = ov25_02255240(param1);

    ov32_02256BD4(v0);

    Bg_FillTilemapRect(v0->unk_04, 6, 0x5, 0, 0, 32, 24, 0);

    ov32_02256898(v0, v1);
    ov32_0225692C(v0, v1);
    ov32_02256648(v0, v1, v0->unk_34);

    Bg_CopyTilemapBufferToVRAM(v0->unk_04, 6);

    PoketchSystem_PlaySoundEffect(1641);
    ov32_02256574(param1);
}
