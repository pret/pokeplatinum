#include "overlay012/ov12_02234E44.h"

#include <nitro.h>
#include <string.h>

#include "overlay012/ov12_0221FC20.h"
#include "overlay012/ov12_02235254.h"
#include "overlay012/struct_ov12_0221FCDC_decl.h"
#include "overlay012/struct_ov12_0223595C.h"

#include "bg_window.h"
#include "graphics.h"
#include "palette.h"
#include "sprite_system.h"
#include "sys_task_manager.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    s16 unk_0C;
    s16 unk_0E;
    s16 unk_10;
    s16 unk_12;
    u16 unk_14;
    u16 unk_16;
} UnkStruct_ov12_02234E44;

typedef struct {
    UnkStruct_ov12_02234E44 unk_00;
    UnkStruct_ov12_0223595C unk_18;
    ManagedSprite *unk_34;
    ManagedSprite *unk_38;
    ManagedSprite *unk_3C;
    u8 unk_40;
} UnkStruct_ov12_02234E54;

static const int Unk_ov12_0223A1D8[][4] = {
    { 0x3C, 0x122, 0x3D, 0x3D },
    { 0x36, 0x11F, 0x37, 0x37 },
    { 0x38, 0x120, 0x39, 0x39 },
    { 0x3A, 0x121, 0x3B, 0x3B }
};

static void ov12_02234E44(UnkStruct_ov12_02234E44 *param0, s16 param1, s16 param2)
{
    param0->unk_0C = param1;
    param0->unk_0E = param2;
}

static void ov12_02234E4C(UnkStruct_ov12_02234E44 *param0, u16 param1, u16 param2)
{
    param0->unk_14 = param1;
    param0->unk_16 = param2;
}

static void ov12_02234E54(UnkStruct_ov12_02234E54 *param0, int param1)
{
    int v0;
    int v1;

    v0 = BattleAnimSystem_GetHeapID(param0->unk_18.unk_04);
    v1 = ov12_02223428(param0->unk_18.unk_04, 3);

    Bg_SetPriority(param1, v1);
    Graphics_LoadTilesToBgLayer(param0->unk_00.unk_00, Unk_ov12_0223A1D8[param0->unk_00.unk_04][0], param0->unk_18.unk_14, param1, 0, 0, 1, v0);
    PaletteData_LoadBufferFromFileStart(param0->unk_18.unk_18, param0->unk_00.unk_00, Unk_ov12_0223A1D8[param0->unk_00.unk_04][1], v0, 0, 0x20, (8 * 16));
    Bg_ClearTilemap(param0->unk_18.unk_14, param1);
    Graphics_LoadTilemapToBgLayer(param0->unk_00.unk_00, Unk_ov12_0223A1D8[param0->unk_00.unk_04][2], param0->unk_18.unk_14, param1, 0, 0, 1, v0);
}

static void ov12_02234EF0(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02234E54 *v0 = (UnkStruct_ov12_02234E54 *)param1;

    switch (v0->unk_18.unk_00) {
    case 0:
        ov12_02234E54(v0, 2);
        v0->unk_18.unk_00++;
        break;
    case 1:
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BD | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG3, v0->unk_00.unk_14, v0->unk_00.unk_16);
        v0->unk_18.unk_00++;
        break;
    case 2:
        if (v0->unk_40 > 20) {
            v0->unk_18.unk_00++;
        } else {
            v0->unk_40++;
        }
        break;
    case 3:
        if (v0->unk_00.unk_14 > 0) {
            v0->unk_00.unk_14--;
        }

        if (v0->unk_00.unk_16 < 16) {
            v0->unk_00.unk_16++;
        }

        if ((v0->unk_00.unk_14 == 0) && (v0->unk_00.unk_16 == 16)) {
            Bg_ClearTilemap(v0->unk_18.unk_14, 2);
            ManagedSprite_SetDrawFlag(v0->unk_34, 0);
            ManagedSprite_SetDrawFlag(v0->unk_38, 0);
            ManagedSprite_SetDrawFlag(v0->unk_3C, 0);
            v0->unk_18.unk_00++;
        }

        G2_ChangeBlendAlpha(v0->unk_00.unk_14, v0->unk_00.unk_16);
        break;
    default:
        G2_SetWndOutsidePlane((GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ), 0);
        G2_SetWndOBJInsidePlane((GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ), 0);
        Bg_SetOffset(v0->unk_18.unk_14, 2, 0, 0);
        Bg_SetOffset(v0->unk_18.unk_14, 2, 3, 0);
        GX_SetVisibleWnd(GX_WNDMASK_NONE);
        BattleAnimSystem_EndAnimTask(v0->unk_18.unk_04, param0);
        ov12_02235E80(v0);
        (v0) = NULL;
        return;
    }

    v0->unk_00.unk_10 += v0->unk_00.unk_0C;
    v0->unk_00.unk_12 += v0->unk_00.unk_0E;

    Bg_SetOffset(v0->unk_18.unk_14, 2, 0, v0->unk_00.unk_10);
    Bg_SetOffset(v0->unk_18.unk_14, 2, 3, v0->unk_00.unk_12);

    ManagedSprite_TickFrame(v0->unk_34);
    ManagedSprite_TickFrame(v0->unk_38);
    ManagedSprite_TickFrame(v0->unk_3C);
    SpriteSystem_DrawSprites(v0->unk_18.unk_0C);
}

static void ov12_0223505C(BattleAnimSystem *param0, UnkStruct_ov12_02234E44 *param1)
{
    (*param1).unk_00 = 7;
    (*param1).unk_04 = BattleAnimSystem_GetScriptVar(param0, 0);
    (*param1).unk_08 = BattleAnimSystem_GetScriptVar(param0, 1);
}

static void ov12_0223507C(BattleAnimSystem *param0, UnkStruct_ov12_02234E44 *param1)
{
    UnkStruct_ov12_02234E54 *v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02234E54));

    ov12_0223595C(param0, &v0->unk_18);

    v0->unk_00 = (*param1);
    v0->unk_34 = ov12_022202C0(v0->unk_18.unk_04, 0);
    v0->unk_38 = ov12_022202C0(v0->unk_18.unk_04, 1);
    v0->unk_3C = ov12_022202C0(v0->unk_18.unk_04, 2);

    {
        int v1;

        v1 = ov12_02223428(v0->unk_18.unk_04, 2);
        v1 = 2;

        ManagedSprite_SetExplicitPriority(v0->unk_34, v1);
        ManagedSprite_SetExplicitPriority(v0->unk_38, v1);

        {
            int v2;
            int v3;

            if (v0->unk_00.unk_08 == 0) {
                v3 = BattleAnimSystem_GetAttacker(param0);
            } else {
                v3 = BattleAnimSystem_GetDefender(param0);
            }

            v2 = ov12_02235254(param0, v3);

            if (BattleAnimSystem_IsContest(param0) == 1) {
                ManagedSprite_SetDrawFlag(v0->unk_3C, 0);
                v1 = ov12_02223428(v0->unk_18.unk_04, 2);
                ManagedSprite_SetExplicitPriority(v0->unk_34, v1);
                ManagedSprite_SetExplicitPriority(v0->unk_38, v1);
            } else {
                if ((v2 == 0) || (v2 == 1)) {
                    ManagedSprite_SetDrawFlag(v0->unk_3C, 0);
                } else if ((v2 == 4) || (v2 == 3)) {
                    if (v0->unk_00.unk_08 == 0) {
                        ManagedSprite_SetExplicitPriority(v0->unk_3C, v1 + 1);
                    } else {
                        ManagedSprite_SetExplicitPriority(v0->unk_3C, v1 + 1);
                    }
                } else {
                    if (v0->unk_00.unk_08 == 0) {
                        ManagedSprite_SetExplicitPriority(v0->unk_3C, v1 - 1);
                    } else {
                        ManagedSprite_SetExplicitPriority(v0->unk_3C, v1 - 1);
                    }
                }
            }
        }
    }

    {
        G2_SetWndOBJInsidePlane(GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_OBJ | GX_WND_PLANEMASK_BG2, 1);
        G2_SetWndOutsidePlane((GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ), 1);
        GX_SetVisibleWnd(GX_WNDMASK_OW);

        ManagedSprite_SetExplicitOamMode(v0->unk_38, GX_OAM_MODE_OBJWND);
    }

    v0->unk_00.unk_10 = 0;
    v0->unk_00.unk_12 = 0;

    BattleAnimSystem_StartAnimTask(v0->unk_18.unk_04, ov12_02234EF0, v0);
}

void ov12_022351A4(BattleAnimSystem *param0)
{
    UnkStruct_ov12_02234E44 v0;

    ov12_0223505C(param0, &v0);
    ov12_02234E44(&v0, 0, +3);
    ov12_02234E4C(&v0, 12, 4);
    ov12_0223507C(param0, &v0);
}

void ov12_022351D0(BattleAnimSystem *param0)
{
    UnkStruct_ov12_02234E44 v0;

    ov12_0223505C(param0, &v0);
    ov12_02234E44(&v0, 0, -3);
    ov12_02234E4C(&v0, 12, 4);
    ov12_0223507C(param0, &v0);
}

void ov12_022351FC(BattleAnimSystem *param0)
{
    UnkStruct_ov12_02234E44 v0;

    ov12_0223505C(param0, &v0);
    ov12_02234E44(&v0, 0, +3);
    ov12_02234E4C(&v0, 12, 4);
    ov12_0223507C(param0, &v0);
}

void ov12_02235228(BattleAnimSystem *param0)
{
    UnkStruct_ov12_02234E44 v0;
    s16 v1 = 3 + 3;

    ov12_0223505C(param0, &v0);
    ov12_02234E44(&v0, 0, -v1);
    ov12_02234E4C(&v0, 12, 4);
    ov12_0223507C(param0, &v0);
}
