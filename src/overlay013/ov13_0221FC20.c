#include "overlay013/ov13_0221FC20.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/battle_system.h"

#include "applications/pokemon_summary_screen/main.h"
#include "battle/ov16_0223DF00.h"
#include "overlay013/battle_sub_menu_cursor.h"
#include "overlay013/ov13_02221A88.h"
#include "overlay013/ov13_02224500.h"
#include "overlay013/ov13_02225710.h"
#include "overlay013/struct_ov13_0221FC20.h"
#include "overlay013/struct_ov13_022213F0.h"
#include "overlay013/struct_ov13_02221ED0.h"
#include "overlay013/struct_ov13_022236B8.h"

#include "bag.h"
#include "bg_window.h"
#include "font.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "item.h"
#include "message.h"
#include "move_table.h"
#include "narc.h"
#include "palette.h"
#include "party.h"
#include "pokemon.h"
#include "render_window.h"
#include "sound_playback.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "touch_screen.h"
#include "unk_0200679C.h"
#include "unk_0200C440.h"
#include "unk_0208C098.h"
#include "unk_02094EDC.h"

static void ov13_0221FCAC(SysTask *param0, void *param1);
static u8 ov13_0221FE5C(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_0221FF60(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_0222012C(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_022201DC(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_0222081C(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_02220834(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_02220848(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_02220864(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_022207DC(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_022203A0(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_02220418(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_0222050C(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_02220628(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_0222088C(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_0222072C(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_02220738(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_02220750(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_02220744(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_0222075C(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_02220768(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_0222078C(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_022207B8(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_022208A4(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_02220A4C(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_02220B78(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_02220BA4(SysTask *param0, UnkStruct_ov13_022213F0 *param1);
static u8 ov13_0222029C(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_0221FFDC(UnkStruct_ov13_022213F0 *param0);
static void ov13_02220C0C(UnkStruct_ov13_022213F0 *param0);
static void ov13_02220D1C(BgConfig *param0);
static void ov13_02220D4C(UnkStruct_ov13_022213F0 *param0);
static void ov13_02220F08(UnkStruct_ov13_022213F0 *param0);
static void ov13_02220F60(UnkStruct_ov13_022213F0 *param0);
static void ov13_02220F98(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_0222124C(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_022212C4(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_0222130C(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_0222139C(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_02221354(UnkStruct_ov13_022213F0 *param0);
static int ov13_022213E4(UnkStruct_ov13_022213F0 *param0, const TouchScreenRect *rect);
static void ov13_022216C0(UnkStruct_ov13_022213F0 *param0, u8 param1);
static void ov13_02221738(UnkStruct_ov13_022213F0 *param0, u8 param1);
static u8 ov13_022217A4(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_02221428(UnkStruct_ov13_022213F0 *param0, s32 param1, s32 param2);
static void ov13_022214E0(UnkStruct_ov13_022213F0 *param0, u8 param1);
static void ov13_02221560(UnkStruct_ov13_022213F0 *param0, u16 param1, u16 param2, u16 param3);
static void ov13_02221654(UnkStruct_ov13_022213F0 *param0, u8 param1);
static u8 ov13_022219DC(UnkStruct_ov13_022213F0 *param0);
static void ov13_02221A04(UnkStruct_ov13_022213F0 *param0);
static void ov13_02221A3C(UnkStruct_ov13_022213F0 *param0);
static u8 ov13_0222194C(UnkStruct_ov13_022213F0 *param0);
static void ov13_02221A54(BattleSystem *battleSys, u16 item, u16 category, u32 heapID);

static const TouchScreenRect Unk_ov13_02228DEC[] = {
    { 0x0, 0x2F, 0x0, 0x7F },
    { 0x8, 0x37, 0x80, 0xFF },
    { 0x30, 0x5F, 0x0, 0x7F },
    { 0x38, 0x67, 0x80, 0xFF },
    { 0x60, 0x8F, 0x0, 0x7F },
    { 0x68, 0x97, 0x80, 0xFF },
    { 0x98, 0xBF, 0xD8, 0xFF },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const TouchScreenRect Unk_ov13_02228D24[] = {
    { 0x8, 0x8F, 0x8, 0xF7 },
    { 0x98, 0xBF, 0x0, 0x67 },
    { 0x98, 0xBF, 0x68, 0xCF },
    { 0x98, 0xBF, 0xD8, 0xFF },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const TouchScreenRect Unk_ov13_02228D38[] = {
    { 0x98, 0xBF, 0x0, 0x27 },
    { 0x98, 0xBF, 0x28, 0x4F },
    { 0x98, 0xBF, 0x60, 0xC7 },
    { 0x98, 0xBF, 0xD8, 0xFF },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const TouchScreenRect Unk_ov13_02228E2C[] = {
    { 0x30, 0x5F, 0x0, 0x7F },
    { 0x30, 0x5F, 0x80, 0xFF },
    { 0x60, 0x8F, 0x0, 0x7F },
    { 0x60, 0x8F, 0x80, 0xFF },
    { 0x98, 0xBF, 0x0, 0x27 },
    { 0x98, 0xBF, 0x28, 0x4F },
    { 0x98, 0xBF, 0x60, 0xC7 },
    { 0x98, 0xBF, 0xD8, 0xFF },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const TouchScreenRect Unk_ov13_02228D4C[] = {
    { 0x98, 0xA7, 0x58, 0x7F },
    { 0x98, 0xA7, 0x80, 0xA7 },
    { 0xA8, 0xB7, 0x58, 0x7F },
    { 0xA8, 0xB7, 0x80, 0xA7 },
    { 0x98, 0xBF, 0xD8, 0xFF },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const TouchScreenRect Unk_ov13_02228E0C[] = {
    { 0x30, 0x5F, 0x0, 0x7F },
    { 0x30, 0x5F, 0x80, 0xFF },
    { 0x60, 0x8F, 0x0, 0x7F },
    { 0x60, 0x8F, 0x80, 0xFF },
    { 0x90, 0xBF, 0x40, 0xBF },
    { 0x0, 0x27, 0xB8, 0xFF },
    { 0x98, 0xBF, 0xD8, 0xFF },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const TouchScreenRect Unk_ov13_02228D14[] = {
    { 0x98, 0xBF, 0x0, 0xCF },
    { 0x0, 0x27, 0xB8, 0xFF },
    { 0x98, 0xBF, 0xD8, 0xFF },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const TouchScreenRect Unk_ov13_02228D64[] = {
    { 0x30, 0x5F, 0x0, 0x7F },
    { 0x30, 0x5F, 0x80, 0xFF },
    { 0x60, 0x8F, 0x0, 0x7F },
    { 0x60, 0x8F, 0x80, 0xFF },
    { 0x98, 0xBF, 0xD8, 0xFF },
    { 0xFF, 0x0, 0x0, 0x0 }
};

void ov13_0221FC20(UnkStruct_ov13_0221FC20 *param0)
{
    UnkStruct_ov13_022213F0 *v0;

    if (param0->unk_11 > 5) {
        param0->unk_11 = 0;
    }

    v0 = SysTask_GetParam(SysTask_StartAndAllocateParam(ov13_0221FCAC, sizeof(UnkStruct_ov13_022213F0), 0, param0->heapID));
    memset(v0, 0, sizeof(UnkStruct_ov13_022213F0));

    v0->unk_00 = param0;
    v0->unk_1E0 = BattleSystem_BGL(param0->unk_08);
    v0->unk_1E4 = BattleSystem_PaletteSys(param0->unk_08);
    v0->unk_2074 = 0;
    v0->unk_2072 = param0->unk_11;
    v0->unk_2073_4 = ov16_0223F1F8(param0->unk_08);
    v0->unk_208B = BattleSystem_BattlerSlot(param0->unk_08, param0->unk_28);
}

static void ov13_0221FCAC(SysTask *param0, void *param1)
{
    UnkStruct_ov13_022213F0 *v0 = (UnkStruct_ov13_022213F0 *)param1;

    switch (v0->unk_2074) {
    case 0:
        v0->unk_2074 = ov13_0221FE5C(v0);
        break;
    case 1:
        v0->unk_2074 = ov13_0221FF60(v0);
        break;
    case 2:
        v0->unk_2074 = ov13_0222012C(v0);
        break;
    case 3:
        v0->unk_2074 = ov13_022201DC(v0);
        break;
    case 4:
        v0->unk_2074 = ov13_0222029C(v0);
        break;
    case 5:
        v0->unk_2074 = ov13_022203A0(v0);
        break;
    case 6:
        v0->unk_2074 = ov13_0222072C(v0);
        break;
    case 7:
        v0->unk_2074 = ov13_02220738(v0);
        break;
    case 8:
        v0->unk_2074 = ov13_02220744(v0);
        break;
    case 9:
        v0->unk_2074 = ov13_02220750(v0);
        break;
    case 10:
        v0->unk_2074 = ov13_0222075C(v0);
        break;
    case 11:
        v0->unk_2074 = ov13_02220768(v0);
        break;
    case 12:
        v0->unk_2074 = ov13_0222078C(v0);
        break;
    case 13:
        v0->unk_2074 = ov13_022207B8(v0);
        break;
    case 14:
        v0->unk_2074 = ov13_022207DC(v0);
        break;
    case 15:
        v0->unk_2074 = ov13_0222081C(v0);
        break;
    case 16:
        v0->unk_2074 = ov13_02220834(v0);
        break;
    case 17:
        v0->unk_2074 = ov13_02220848(v0);
        break;
    case 18:
        v0->unk_2074 = ov13_02220864(v0);
        break;
    case 19:
        v0->unk_2074 = ov13_02220418(v0);
        break;
    case 20:
        v0->unk_2074 = ov13_0222050C(v0);
        break;
    case 21:
        v0->unk_2074 = ov13_02220628(v0);
        break;
    case 22:
        v0->unk_2074 = ov13_0222088C(v0);
        break;
    case 23:
        v0->unk_2074 = ov13_022208A4(v0);
        break;
    case 24:
        v0->unk_2074 = ov13_02220A4C(v0);
        break;
    case 25:
        v0->unk_2074 = ov13_02220B78(v0);
        break;

    case 26:
        if (ov13_02220BA4(param0, v0) == 1) {
            return;
        }
    }

    ov13_0222537C(v0);
    SpriteSystem_DrawSprites(v0->unk_1FB0);
    ov13_0222601C(v0);
}

static u8 ov13_0221FE5C(UnkStruct_ov13_022213F0 *param0)
{
    u8 v0;

    G2S_BlendNone();

    if (param0->unk_00->unk_35 == 3) {
        param0->unk_2076 = 6;
        v0 = 19;
    } else {
        param0->unk_2076 = 0;
        v0 = 1;
    }

    param0->unk_2084 = MakeBattleSubMenuCursor(param0->unk_00->heapID);

    ov13_02220F98(param0);
    ov13_02220C0C(param0);
    ov13_02220D4C(param0);
    ov13_02220F08(param0);

    Font_InitManager(FONT_SUBSCREEN, param0->unk_00->heapID);

    ov13_02221738(param0, param0->unk_2076);
    ov13_022260EC(param0, param0->unk_2076);
    ov13_02226444(param0, param0->unk_2076);
    ov13_02224500(param0);
    ov13_02224B7C(param0, param0->unk_2076);
    ov13_02221A88(param0);
    ov13_02221BF8(param0, param0->unk_2076);

    if (param0->unk_00->unk_32 != 0) {
        SetBattleSubMenuCursorVisibility(param0->unk_2084, 1);
    }

    if ((param0->unk_2076 == 0) && (ov13_022219AC(param0, 0) == 1)) {
        param0->unk_00->unk_11 = 1;
    }

    ov13_0222563C(param0, param0->unk_2076);
    ov13_022214E0(param0, param0->unk_2076);

    PaletteData_StartFade(param0->unk_1E4, (0x2 | 0x8), 0xffff, -8, 16, 0, 0);

    return v0;
}

static u8 ov13_0221FF60(UnkStruct_ov13_022213F0 *param0)
{
    if (PaletteData_GetSelectedBuffersMask(param0->unk_1E4) != 0) {
        return 1;
    }

    if (ov13_0222124C(param0) == 1) {
        if (param0->unk_00->unk_11 == 6) {
            if (param0->unk_00->unk_35 != 1) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                ov13_02225FCC(param0, 6);
                return 25;
            }
        } else {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov13_02225FCC(param0, 0 + param0->unk_00->unk_11);

            if (param0->unk_00->unk_35 == 2) {
                return ov13_0221FFDC(param0);
            } else {
                param0->unk_2075 = 7;
            }

            return 22;
        }
    }

    return 1;
}

static u8 ov13_0221FFDC(UnkStruct_ov13_022213F0 *param0)
{
    UnkStruct_ov13_0221FC20 *v0 = param0->unk_00;

    if (((v0->unk_11 == 0) && (v0->unk_18[0] != 0)) || ((v0->unk_11 == 1) && (v0->unk_18[1] != 0))) {
        ov13_0222449C(param0);
        ov13_022240E0(param0);
        param0->unk_00->unk_11 = 6;
        param0->unk_2075 = 25;
        return 17;
    }

    if ((Item_LoadParam(v0->unk_22, 36, v0->heapID) != 0) && (Item_LoadParam(v0->unk_22, 37, v0->heapID) == 0) && (param0->unk_04[v0->unk_11].unk_17_7 == 0)) {
        param0->unk_2075 = 13;
        return 22;
    }

    if (BattleSystem_UseBagItem(v0->unk_08, v0->unk_28, v0->unk_2C[v0->unk_11], 0, v0->unk_22) == 1) {
        if (Item_LoadParam(v0->unk_22, 37, v0->heapID) != 0) {
            param0->unk_2075 = 13;
        } else {
            if ((ov13_022213F0(param0, v0->unk_11) == 1) && (Item_LoadParam(v0->unk_22, 23, v0->heapID) == 0)) {
                ov13_02221A54(v0->unk_08, v0->unk_22, v0->unk_33, v0->heapID);
                param0->unk_04[v0->unk_11].unk_00 = BattleSystem_PartyPokemon(v0->unk_08, v0->unk_28, v0->unk_2C[v0->unk_11]);
                v0->unk_20 = Pokemon_GetValue(param0->unk_04[v0->unk_11].unk_00, MON_DATA_CURRENT_HP, NULL);
                v0->unk_20 -= param0->unk_04[v0->unk_11].unk_10;
                param0->unk_2075 = 25;
            } else {
                param0->unk_2075 = 23;
            }
        }

        param0->unk_2078 = 0;
        return 22;
    } else {
        MessageLoader_GetStrbuf(param0->unk_1FA4, 81, param0->unk_1FAC);
        ov13_022240E0(param0);
        param0->unk_00->unk_11 = 6;
        param0->unk_2075 = 25;
        return 17;
    }

    return 17;
}

static u8 ov13_0222012C(UnkStruct_ov13_022213F0 *param0)
{
    u8 v0 = ov13_022212C4(param0);

    switch (v0) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(param0, 7);

        if (ov13_022217A4(param0) == 1) {
            return 25;
        }

        param0->unk_2075 = 15;
        return 22;
    case 1:
        if (ov13_0222194C(param0) == 1) {
            break;
        }

        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(param0, 8);
        param0->unk_2075 = 8;
        return 22;
    case 2:
        if (ov13_0222194C(param0) == 1) {
            break;
        }

        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(param0, 10);
        param0->unk_2075 = 9;
        return 22;
    case 3:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(param0, 6);
        param0->unk_2075 = 6;
        return 22;
    }

    return 2;
}

static u8 ov13_022201DC(UnkStruct_ov13_022213F0 *param0)
{
    u8 v0 = ov13_0222130C(param0);

    switch (v0) {
    case 0: {
        u8 v1 = ov13_02221428(param0, param0->unk_00->unk_11, -1);

        if (v1 == 0xff) {
            break;
        }

        param0->unk_00->unk_11 = v1;
    }
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(param0, 12);
        param0->unk_2075 = 14;
        return 22;
    case 1: {
        u8 v2 = ov13_02221428(param0, param0->unk_00->unk_11, 1);

        if (v2 == 0xff) {
            break;
        }

        param0->unk_00->unk_11 = v2;
    }
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(param0, 13);
        param0->unk_2075 = 14;
        return 22;
    case 2:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(param0, 11);
        param0->unk_2075 = 9;
        return 22;
    case 3:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(param0, 6);
        param0->unk_2088 = 1;
        param0->unk_2075 = 7;
        return 22;
    }

    return 3;
}

static u8 ov13_0222029C(UnkStruct_ov13_022213F0 *param0)
{
    u8 v0 = ov13_02221354(param0);

    switch (v0) {
    case 0:
    case 1:
    case 2:
    case 3:
        if (param0->unk_04[param0->unk_00->unk_11].unk_30[v0].unk_00 == 0) {
            break;
        }

        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(param0, 14 + v0);
        param0->unk_00->unk_34 = v0;
        param0->unk_2075 = 10;
        return 22;
    case 4: {
        u8 v1 = ov13_02221428(param0, param0->unk_00->unk_11, -1);

        if (v1 == 0xff) {
            break;
        }

        param0->unk_00->unk_11 = v1;
    }
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(param0, 12);
        param0->unk_2075 = 14;
        return 22;

    case 5: {
        u8 v2 = ov13_02221428(param0, param0->unk_00->unk_11, 1);

        if (v2 == 0xff) {
            break;
        }

        param0->unk_00->unk_11 = v2;
    }
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(param0, 13);
        param0->unk_2075 = 14;
        return 22;
    case 6:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(param0, 9);
        param0->unk_2075 = 8;
        return 22;
    case 7:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(param0, 6);
        param0->unk_2088 = 2;
        param0->unk_2075 = 7;
        return 22;
    }

    return 4;
}

static u8 ov13_022203A0(UnkStruct_ov13_022213F0 *param0)
{
    u8 v0 = ov13_0222139C(param0);

    switch (v0) {
    case 0:
    case 1:
    case 2:
    case 3:
        if ((param0->unk_00->unk_34 != v0) && (param0->unk_04[param0->unk_00->unk_11].unk_30[v0].unk_00 == 0)) {
            break;
        }

        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        param0->unk_00->unk_34 = v0;
        return 10;
    case 4:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(param0, 6);
        param0->unk_2075 = 9;
        return 22;
    }

    return 5;
}

static u8 ov13_02220418(UnkStruct_ov13_022213F0 *param0)
{
    int v0 = ov13_022213E4(param0, Unk_ov13_02228E0C);

    if (v0 == 0xffffffff) {
        v0 = BattleSubMenuCursorTick(param0->unk_2084);

        if (v0 == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
            v0 = 6;
        }
    } else {
        ov13_022256E8(param0);
    }

    switch (v0) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
        param0->unk_00->unk_34 = (u8)v0;
        param0->unk_2089 = (u8)v0;
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(param0, 23 + v0);
        param0->unk_2075 = 12;
        return 22;
    case 5:
        if (param0->unk_2073_4 == 0) {
            break;
        }

        param0->unk_2073_0 ^= 1;
        param0->unk_2089 = (u8)v0;
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(param0, 18);
        param0->unk_2075 = 11;
        return 22;
    case 6:
        param0->unk_00->unk_34 = 4;
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(param0, 6);
        param0->unk_2075 = 25;
        return 22;
    }

    return 19;
}

static u8 ov13_0222050C(UnkStruct_ov13_022213F0 *param0)
{
    int v0 = ov13_022213E4(param0, Unk_ov13_02228D14);

    if (v0 == 0xffffffff) {
        v0 = BattleSubMenuCursorTick(param0->unk_2084);

        if (v0 == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
            v0 = 2;
        }
    } else {
        ov13_022256E8(param0);
    }

    switch (v0) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);

        if (param0->unk_2073_0 == 0) {
            ov13_02225FCC(param0, 28);
        } else {
            ov13_02225FCC(param0, 29);
        }

        if (ov13_022219DC(param0) == 1) {
            ov13_02223118(param0);

            if (param0->unk_2073_0 == 0) {
                ov13_02221A04(param0);
            } else {
                ov13_02221A3C(param0);
            }

            param0->unk_2075 = 20;
        } else {
            param0->unk_2075 = 25;
        }

        return 22;
    case 1:
        if (param0->unk_2073_4 == 0) {
            break;
        }

        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(param0, 18);
        param0->unk_2073_0 ^= 1;
        param0->unk_208A = (u8)v0;
        param0->unk_2075 = 12;
        return 22;
    case 2:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(param0, 6);
        param0->unk_208A = 0;
        param0->unk_2075 = 11;
        return 22;
    }

    return 20;
}

static u8 ov13_02220628(UnkStruct_ov13_022213F0 *param0)
{
    UnkStruct_ov13_0221FC20 *v0;
    int v1;

    v0 = param0->unk_00;
    v1 = ov13_022213E4(param0, Unk_ov13_02228D64);

    if (v1 == 0xffffffff) {
        v1 = BattleSubMenuCursorTick(param0->unk_2084);

        if (v1 == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
            v1 = 4;
        }
    } else {
        ov13_022256E8(param0);
    }

    switch (v1) {
    case 0:
    case 1:
    case 2:
    case 3:
        if (param0->unk_04[v0->unk_11].unk_30[v1].unk_00 == 0) {
            break;
        }

        param0->unk_00->unk_34 = (u8)v1;
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(param0, 19 + v1);

        if (BattleSystem_UseBagItem(v0->unk_08, v0->unk_28, v0->unk_2C[v0->unk_11], v1, v0->unk_22) == 1) {
            param0->unk_2078 = 0;
            param0->unk_2075 = 23;
            return 22;
        } else {
            MessageLoader_GetStrbuf(param0->unk_1FA4, 81, param0->unk_1FAC);
            ov13_022240E0(param0);
            param0->unk_00->unk_11 = 6;
            param0->unk_2075 = 25;
            return 17;
        }
        break;
    case 4:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(param0, 6);
        param0->unk_2075 = 6;
        return 22;
    }

    return 21;
}

static u8 ov13_0222072C(UnkStruct_ov13_022213F0 *param0)
{
    ov13_022216C0(param0, 0);
    return 1;
}

static u8 ov13_02220738(UnkStruct_ov13_022213F0 *param0)
{
    ov13_022216C0(param0, 1);
    return 2;
}

static u8 ov13_02220744(UnkStruct_ov13_022213F0 *param0)
{
    ov13_022216C0(param0, 2);
    return 3;
}

static u8 ov13_02220750(UnkStruct_ov13_022213F0 *param0)
{
    ov13_022216C0(param0, 3);
    return 4;
}

static u8 ov13_0222075C(UnkStruct_ov13_022213F0 *param0)
{
    ov13_022216C0(param0, 4);
    return 5;
}

static u8 ov13_02220768(UnkStruct_ov13_022213F0 *param0)
{
    if (param0->unk_2073_0 == 0) {
        ov13_022216C0(param0, 6);
    } else {
        ov13_022216C0(param0, 8);
    }

    return 19;
}

static u8 ov13_0222078C(UnkStruct_ov13_022213F0 *param0)
{
    ov13_022252E8(param0);

    if (param0->unk_2073_0 == 0) {
        ov13_022216C0(param0, 7);
    } else {
        ov13_022216C0(param0, 9);
    }

    return 20;
}

static u8 ov13_022207B8(UnkStruct_ov13_022213F0 *param0)
{
    ov13_022216C0(param0, 5);

    if (Item_LoadParam(param0->unk_00->unk_22, 37, param0->unk_00->heapID) != 0) {
        return 24;
    }

    return 21;
}

static u8 ov13_022207DC(UnkStruct_ov13_022213F0 *param0)
{
    ov13_02224B7C(param0, param0->unk_2076);
    ov13_02221BF8(param0, param0->unk_2076);
    ov13_022260EC(param0, param0->unk_2076);
    ov13_022214E0(param0, param0->unk_2076);

    if (param0->unk_2076 == 2) {
        return 3;
    }

    return 4;
}

static u8 ov13_0222081C(UnkStruct_ov13_022213F0 *param0)
{
    ov13_022240E0(param0);
    param0->unk_2075 = 16;
    return 17;
}

static u8 ov13_02220834(UnkStruct_ov13_022213F0 *param0)
{
    Window_EraseMessageBox(&param0->unk_204C[1], 0);
    return 2;
}

static u8 ov13_02220848(UnkStruct_ov13_022213F0 *param0)
{
    if (Text_IsPrinterActive(param0->unk_2077) == 0) {
        return 18;
    }

    return 17;
}

static u8 ov13_02220864(UnkStruct_ov13_022213F0 *param0)
{
    if ((gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) || (TouchScreen_Tapped() == 1)) {
        return param0->unk_2075;
    }

    return 18;
}

static u8 ov13_0222088C(UnkStruct_ov13_022213F0 *param0)
{
    if (param0->unk_1F9F_7 == 0) {
        return param0->unk_2075;
    }

    return 22;
}

static u8 ov13_022208A4(UnkStruct_ov13_022213F0 *param0)
{
    UnkStruct_ov13_0221FC20 *v0 = param0->unk_00;

    switch (param0->unk_2078) {
    case 0:
        param0->unk_04[v0->unk_11].unk_00 = BattleSystem_PartyPokemon(v0->unk_08, v0->unk_28, v0->unk_2C[v0->unk_11]);
        ov13_02224144(param0);

        if (param0->unk_2076 == 5) {
            param0->unk_207C[0] = (u16)Pokemon_GetValue(param0->unk_04[v0->unk_11].unk_00, MON_DATA_MOVE1_CUR_PP + v0->unk_34, NULL);
            param0->unk_2078 = 2;
        } else {
            param0->unk_04[v0->unk_11].unk_17_3 = PokemonSummaryScreen_StatusIconAnimIdx(param0->unk_04[v0->unk_11].unk_00);

            if (param0->unk_04[v0->unk_11].unk_17_3 == 7) {
                ManagedSprite_SetDrawFlag(param0->unk_1FB4[13 + v0->unk_11], 0);
                ov13_022234A8(param0, v0->unk_11);
            }

            param0->unk_207A = Pokemon_GetValue(param0->unk_04[v0->unk_11].unk_00, MON_DATA_CURRENT_HP, NULL);
            param0->unk_2078 = 4;
        }

        Sound_PlayEffect(SEQ_SE_DP_KAIFUKU);
        break;
    case 1:
        if (param0->unk_04[v0->unk_11].unk_10 != param0->unk_207A) {
            param0->unk_04[v0->unk_11].unk_10++;
            ov13_02223448(param0, v0->unk_11);
            break;
        }

        param0->unk_2078 = 3;
        break;
    case 2:
        if (param0->unk_04[v0->unk_11].unk_30[v0->unk_34].unk_02 != param0->unk_207C[0]) {
            param0->unk_04[v0->unk_11].unk_30[v0->unk_34].unk_02++;
            ov13_02223F5C(param0, 1 + v0->unk_34, v0->unk_34);
            break;
        }

        param0->unk_2078 = 3;
        break;
    case 3:
        ov13_02221A54(v0->unk_08, v0->unk_22, v0->unk_33, v0->heapID);
        ov13_022240E0(param0);
        param0->unk_2075 = 25;
        return 17;
    case 4:
        if (param0->unk_04[v0->unk_11].unk_10 != param0->unk_207A) {
            param0->unk_04[v0->unk_11].unk_10++;
            ov13_02223448(param0, v0->unk_11);
            ov13_022264C4(param0);
        }

        param0->unk_2078 = 1;
        break;
    }

    return 23;
}

static u8 ov13_02220A4C(UnkStruct_ov13_022213F0 *param0)
{
    UnkStruct_ov13_0221FC20 *v0 = param0->unk_00;
    u32 v1, v2;

    switch (param0->unk_2078) {
    case 0:
        param0->unk_04[v0->unk_11].unk_00 = BattleSystem_PartyPokemon(v0->unk_08, v0->unk_28, v0->unk_2C[v0->unk_11]);

        for (v1 = 0; v1 < 4; v1++) {
            if (param0->unk_04[v0->unk_11].unk_30[v1].unk_00 == 0) {
                continue;
            }

            param0->unk_207C[v1] = (u16)Pokemon_GetValue(param0->unk_04[v0->unk_11].unk_00, MON_DATA_MOVE1_CUR_PP + v1, NULL);
        }

        ov13_02224144(param0);
        Sound_PlayEffect(SEQ_SE_DP_KAIFUKU);
        param0->unk_2078 = 1;
        break;
    case 1:
        v2 = 0;

        for (v1 = 0; v1 < 4; v1++) {
            if (param0->unk_04[v0->unk_11].unk_30[v1].unk_00 == 0) {
                v2++;
                continue;
            }

            if (param0->unk_04[v0->unk_11].unk_30[v1].unk_02 != param0->unk_207C[v1]) {
                param0->unk_04[v0->unk_11].unk_30[v1].unk_02++;
                ov13_02223F5C(param0, 1 + v1, v1);
            } else {
                v2++;
            }
        }

        if (v2 == 4) {
            param0->unk_2078 = 2;
        }
        break;
    case 2:
        ov13_02221A54(v0->unk_08, v0->unk_22, v0->unk_33, v0->heapID);
        ov13_022240E0(param0);
        param0->unk_2075 = 25;
        return 17;
    }

    return 24;
}

static u8 ov13_02220B78(UnkStruct_ov13_022213F0 *param0)
{
    PaletteData_StartFade(param0->unk_1E4, (0x2 | 0x8), 0xffff, -8, 0, 16, 0);
    return 26;
}

static u8 ov13_02220BA4(SysTask *param0, UnkStruct_ov13_022213F0 *param1)
{
    if (PaletteData_GetSelectedBuffersMask(param1->unk_1E4) != 0) {
        return 0;
    }

    ov13_02220F60(param1);
    ov13_02224970(param1);
    ov13_02221BC8(param1);
    ov13_02220D1C(param1->unk_1E0);

    param1->unk_00->unk_32 = IsBattleSubMenuCursorVisible(param1->unk_2084);

    DeleteBattleSubMenuCursor(param1->unk_2084);
    Font_Free(FONT_SUBSCREEN);

    param1->unk_00->unk_36 = 1;
    SysTask_FinishAndFreeParam(param0);

    return 1;
}

static void ov13_02220C0C(UnkStruct_ov13_022213F0 *param0)
{
    {
        GraphicsModes v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D,
        };

        SetScreenGraphicsModes(&v0, DS_SCREEN_SUB);
    }

    {
        BgTemplate v1 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0000,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_23,
            3,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0->unk_1E0, 7, &v1, 0);
    }

    {
        BgTemplate v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0800,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_23,
            2,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0->unk_1E0, 6, &v2, 0);
    }

    {
        BgTemplate v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x1000,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0->unk_1E0, 5, &v3, 0);
        Bg_ClearTilemap(param0->unk_1E0, 5);
    }

    {
        BgTemplate v4 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x1800,
            GX_BG_CHARBASE_0x18000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0->unk_1E0, 4, &v4, 0);
        Bg_ClearTilemap(param0->unk_1E0, 4);
    }

    Bg_ClearTilesRange(5, 32, 0, param0->unk_00->heapID);
    Bg_ClearTilesRange(4, 32, 0, param0->unk_00->heapID);
    Bg_ScheduleTilemapTransfer(param0->unk_1E0, 5);
    Bg_ScheduleTilemapTransfer(param0->unk_1E0, 4);
}

static void ov13_02220D1C(BgConfig *param0)
{
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);
    Bg_FreeTilemapBuffer(param0, 4);
    Bg_FreeTilemapBuffer(param0, 5);
    Bg_FreeTilemapBuffer(param0, 6);
    Bg_FreeTilemapBuffer(param0, 7);
}

static void ov13_02220D4C(UnkStruct_ov13_022213F0 *param0)
{
    NARC *v0 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_B_PLIST_GRA, param0->unk_00->heapID);
    Graphics_LoadTilesToBgLayerFromOpenNARC(v0, 22, param0->unk_1E0, 7, 0, 0, 0, param0->unk_00->heapID);

    {
        NNSG2dScreenData *v1;
        void *v2;

        v2 = NARC_AllocAndReadWholeMember(v0, 20, param0->unk_00->heapID);
        NNS_G2dGetUnpackedScreenData(v2, &v1);
        ov13_02225710(param0, (u16 *)v1->rawData);
        Heap_FreeToHeap(v2);

        v2 = NARC_AllocAndReadWholeMember(v0, 21, param0->unk_00->heapID);
        NNS_G2dGetUnpackedScreenData(v2, &v1);

        ov13_02225A3C(param0, (u16 *)v1->rawData);
        Heap_FreeToHeap(v2);
    }

    PaletteData_LoadBufferFromFileStart(param0->unk_1E4, 72, 23, param0->unk_00->heapID, 1, 0x20 * 16, 0);
    NARC_dtor(v0);

    {
        u16 *v3 = PaletteData_GetUnfadedBuffer(param0->unk_1E4, 1);
        memcpy(param0->unk_1F5C, &v3[12 * 16], 0x20 * 2);
    }

    PaletteData_LoadBufferFromFileStart(param0->unk_1E4, 14, 6, param0->unk_00->heapID, 1, 0x20, 13 * 16);
    PaletteData_LoadBufferFromFileStart(param0->unk_1E4, 14, 7, param0->unk_00->heapID, 1, 0x20, 15 * 16);

    {
        int v4 = ov16_0223EDE0(param0->unk_00->unk_08);

        Graphics_LoadTilesToBgLayer(38, GetMessageBoxTilesNARCMember(v4), param0->unk_1E0, 4, 1, 0, 0, param0->unk_00->heapID);
        PaletteData_LoadBufferFromFileStart(param0->unk_1E4, 38, GetMessageBoxPaletteNARCMember(v4), param0->unk_00->heapID, 1, 0x20, 14 * 16);
    }

    {
        u16 *v5 = PaletteData_GetUnfadedBuffer(param0->unk_1E4, 1);
        u16 *v6 = Heap_AllocFromHeap(param0->unk_00->heapID, 0x20);

        memcpy(v6, &v5[13 * 16], 0x20);
        memcpy(&v6[7], &v5[9 * 16 + 10], 4);
        memcpy(&v6[3], &v5[9 * 16 + 12], 4);

        PaletteData_LoadBuffer(param0->unk_1E4, v6, 1, 13 * 16, 0x20);
        Heap_FreeToHeap(v6);
    }
}

static void ov13_02220F08(UnkStruct_ov13_022213F0 *param0)
{
    param0->unk_1FA4 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0003, param0->unk_00->heapID);
    param0->unk_1FA0 = sub_0200C440(15, 14, 0, param0->unk_00->heapID);
    param0->unk_1FA8 = StringTemplate_Default(param0->unk_00->heapID);
    param0->unk_1FAC = Strbuf_Init(512, param0->unk_00->heapID);
}

static void ov13_02220F60(UnkStruct_ov13_022213F0 *param0)
{
    MessageLoader_Free(param0->unk_1FA4);
    sub_0200C560(param0->unk_1FA0);
    StringTemplate_Free(param0->unk_1FA8);
    Strbuf_Free(param0->unk_1FAC);
}

static void ov13_02220F98(UnkStruct_ov13_022213F0 *param0)
{
    u16 v0, v1;

    for (v0 = 0; v0 < Party_GetCurrentCount(param0->unk_00->unk_00); v0++) {
        param0->unk_04[v0].unk_00 = Party_GetPokemonBySlotIndex(param0->unk_00->unk_00, v0);
        param0->unk_04[v0].unk_04 = Pokemon_GetValue(param0->unk_04[v0].unk_00, MON_DATA_SPECIES, NULL);

        if (param0->unk_04[v0].unk_04 == 0) {
            continue;
        }

        param0->unk_04[v0].unk_06 = Pokemon_GetValue(param0->unk_04[v0].unk_00, MON_DATA_ATK, NULL);
        param0->unk_04[v0].unk_08 = Pokemon_GetValue(param0->unk_04[v0].unk_00, MON_DATA_DEF, NULL);
        param0->unk_04[v0].unk_0A = Pokemon_GetValue(param0->unk_04[v0].unk_00, MON_DATA_SPEED, NULL);
        param0->unk_04[v0].unk_0C = Pokemon_GetValue(param0->unk_04[v0].unk_00, MON_DATA_SP_ATK, NULL);
        param0->unk_04[v0].unk_0E = Pokemon_GetValue(param0->unk_04[v0].unk_00, MON_DATA_SP_DEF, NULL);
        param0->unk_04[v0].unk_10 = Pokemon_GetValue(param0->unk_04[v0].unk_00, MON_DATA_CURRENT_HP, NULL);
        param0->unk_04[v0].unk_12 = Pokemon_GetValue(param0->unk_04[v0].unk_00, MON_DATA_MAX_HP, NULL);
        param0->unk_04[v0].unk_14 = (u8)Pokemon_GetValue(param0->unk_04[v0].unk_00, MON_DATA_TYPE_1, NULL);
        param0->unk_04[v0].unk_15 = (u8)Pokemon_GetValue(param0->unk_04[v0].unk_00, MON_DATA_TYPE_2, NULL);
        param0->unk_04[v0].unk_16_0 = (u8)Pokemon_GetValue(param0->unk_04[v0].unk_00, MON_DATA_LEVEL, NULL);

        if (Pokemon_GetValue(param0->unk_04[v0].unk_00, MON_DATA_NIDORAN_HAS_NICKNAME, NULL) == 1) {
            param0->unk_04[v0].unk_16_7 = 0;
        } else {
            param0->unk_04[v0].unk_16_7 = 1;
        }

        param0->unk_04[v0].unk_17_0 = Pokemon_GetGender(param0->unk_04[v0].unk_00);
        param0->unk_04[v0].unk_17_3 = PokemonSummaryScreen_StatusIconAnimIdx(param0->unk_04[v0].unk_00);
        param0->unk_04[v0].unk_17_7 = (u8)Pokemon_GetValue(param0->unk_04[v0].unk_00, MON_DATA_IS_EGG, NULL);
        param0->unk_04[v0].unk_18 = (u16)Pokemon_GetValue(param0->unk_04[v0].unk_00, MON_DATA_ABILITY, NULL);
        param0->unk_04[v0].unk_1A = (u16)Pokemon_GetValue(param0->unk_04[v0].unk_00, MON_DATA_HELD_ITEM, NULL);
        param0->unk_04[v0].unk_1C = Pokemon_GetValue(param0->unk_04[v0].unk_00, MON_DATA_EXP, NULL);
        param0->unk_04[v0].unk_20 = Pokemon_GetSpeciesBaseExpAt(param0->unk_04[v0].unk_04, param0->unk_04[v0].unk_16_0);

        if (param0->unk_04[v0].unk_16_0 == 100) {
            param0->unk_04[v0].unk_24 = param0->unk_04[v0].unk_20;
        } else {
            param0->unk_04[v0].unk_24 = Pokemon_GetSpeciesBaseExpAt(param0->unk_04[v0].unk_04, param0->unk_04[v0].unk_16_0 + 1);
        }

        param0->unk_04[v0].unk_28 = (u8)Pokemon_GetValue(param0->unk_04[v0].unk_00, MON_DATA_COOL, NULL);
        param0->unk_04[v0].unk_29 = (u8)Pokemon_GetValue(param0->unk_04[v0].unk_00, MON_DATA_BEAUTY, NULL);
        param0->unk_04[v0].unk_2A = (u8)Pokemon_GetValue(param0->unk_04[v0].unk_00, MON_DATA_CUTE, NULL);
        param0->unk_04[v0].unk_2B = (u8)Pokemon_GetValue(param0->unk_04[v0].unk_00, MON_DATA_SMART, NULL);
        param0->unk_04[v0].unk_2C = (u8)Pokemon_GetValue(param0->unk_04[v0].unk_00, MON_DATA_TOUGH, NULL);
        param0->unk_04[v0].unk_2D = (u16)Pokemon_GetValue(param0->unk_04[v0].unk_00, MON_DATA_BALL_CAPSULE_ID, NULL);
        param0->unk_04[v0].unk_2E = (u8)Pokemon_GetValue(param0->unk_04[v0].unk_00, MON_DATA_FORM, NULL);

        for (v1 = 0; v1 < LEARNED_MOVES_MAX; v1++) {
            UnkStruct_ov13_022236B8 *v2 = &param0->unk_04[v0].unk_30[v1];

            v2->unk_00 = Pokemon_GetValue(param0->unk_04[v0].unk_00, MON_DATA_MOVE1 + v1, NULL);

            if (v2->unk_00 == 0) {
                continue;
            }

            v2->unk_02 = Pokemon_GetValue(param0->unk_04[v0].unk_00, MON_DATA_MOVE1_CUR_PP + v1, NULL);
            v2->unk_03 = Pokemon_GetValue(param0->unk_04[v0].unk_00, MON_DATA_MOVE1_PP_UPS + v1, NULL);
            v2->unk_03 = MoveTable_CalcMaxPP(v2->unk_00, v2->unk_03);
            v2->unk_04 = MoveTable_LoadParam(v2->unk_00, MOVEATTRIBUTE_TYPE);
            v2->unk_05 = MoveTable_LoadParam(v2->unk_00, MOVEATTRIBUTE_CLASS);
            v2->unk_06 = MoveTable_LoadParam(v2->unk_00, MOVEATTRIBUTE_ACCURACY);
            v2->unk_07 = MoveTable_LoadParam(v2->unk_00, MOVEATTRIBUTE_POWER);
        }
    }
}

static u8 ov13_0222124C(UnkStruct_ov13_022213F0 *param0)
{
    int v0 = ov13_022213E4(param0, Unk_ov13_02228DEC);

    if (v0 == 0xffffffff) {
        v0 = BattleSubMenuCursorTick(param0->unk_2084);

        if (v0 == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
            v0 = 6;
        } else if (v0 == BATTLE_SUB_MENU_CURSOR_NO_MOVEMENT_INDEX) {
            return 0;
        }

        if ((v0 == 6) || (ov13_022213F0(param0, v0) != 0)) {
            param0->unk_00->unk_11 = (u8)v0;
            return 1;
        }
    } else {
        if ((v0 == 6) || (ov13_022213F0(param0, v0) != 0)) {
            param0->unk_00->unk_11 = (u8)v0;

            ov13_022256E8(param0);
            return 1;
        }
    }

    return 0;
}

static u8 ov13_022212C4(UnkStruct_ov13_022213F0 *param0)
{
    int v0 = ov13_022213E4(param0, Unk_ov13_02228D24);

    if (v0 == 0xffffffff) {
        v0 = BattleSubMenuCursorTick(param0->unk_2084);

        if (v0 == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
            v0 = 3;
        } else if (v0 == BATTLE_SUB_MENU_CURSOR_NO_MOVEMENT_INDEX) {
            return 0xff;
        }
    } else {
        ov13_022256E8(param0);
    }

    return (u8)v0;
}

static u8 ov13_0222130C(UnkStruct_ov13_022213F0 *param0)
{
    int v0 = ov13_022213E4(param0, Unk_ov13_02228D38);

    if (v0 == 0xffffffff) {
        v0 = BattleSubMenuCursorTick(param0->unk_2084);

        if (v0 == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
            v0 = 3;
        } else if (v0 == BATTLE_SUB_MENU_CURSOR_NO_MOVEMENT_INDEX) {
            return 0xff;
        }
    } else {
        ov13_022256E8(param0);
    }

    return (u8)v0;
}

static u8 ov13_02221354(UnkStruct_ov13_022213F0 *param0)
{
    int v0 = ov13_022213E4(param0, Unk_ov13_02228E2C);

    if (v0 == 0xffffffff) {
        v0 = BattleSubMenuCursorTick(param0->unk_2084);

        if (v0 == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
            v0 = 7;
        } else if (v0 == BATTLE_SUB_MENU_CURSOR_NO_MOVEMENT_INDEX) {
            return 0xff;
        }
    } else {
        ov13_022256E8(param0);
    }

    return (u8)v0;
}

static u8 ov13_0222139C(UnkStruct_ov13_022213F0 *param0)
{
    int v0 = ov13_022213E4(param0, Unk_ov13_02228D4C);

    if (v0 == 0xffffffff) {
        v0 = BattleSubMenuCursorTick(param0->unk_2084);

        if (v0 == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
            v0 = 4;
        } else if (v0 == BATTLE_SUB_MENU_CURSOR_NO_MOVEMENT_INDEX) {
            return 0xff;
        }
    } else {
        ov13_022256E8(param0);
    }

    return (u8)v0;
}

static int ov13_022213E4(UnkStruct_ov13_022213F0 *param0, const TouchScreenRect *rect)
{
    int v0 = TouchScreen_CheckRectanglePressed(rect);
    return v0;
}

u8 ov13_022213F0(UnkStruct_ov13_022213F0 *param0, s32 param1)
{
    if (param0->unk_04[param1].unk_04 == 0) {
        return 0;
    }

    if ((param1 == 0) || ((ov13_0222196C(param0) || ov13_0222198C(param0)) && (param1 == 1))) {
        return 1;
    }

    return 2;
}

static u8 ov13_02221428(UnkStruct_ov13_022213F0 *param0, s32 param1, s32 param2)
{
    s32 v0 = param1;

    if (ov13_0222198C(param0) == 1) {
        u8 v1[] = { 0, 2, 4, 1, 3, 5 };

        for (param1 = 0; param1 < 6; param1++) {
            if (v0 == v1[param1]) {
                break;
            }
        }

        while (TRUE) {
            param1 += param2;

            if (param1 < 0) {
                param1 = 5;
            } else if (param1 >= 6) {
                param1 = 0;
            }

            if (v0 == v1[param1]) {
                break;
            }

            if (ov13_022213F0(param0, v1[param1]) != 0) {
                if (param0->unk_04[v1[param1]].unk_17_7 == 0) {
                    return v1[param1];
                }
            }
        }
    } else {
        while (TRUE) {
            param1 += param2;

            if (param1 < 0) {
                param1 = 5;
            } else if (param1 >= 6) {
                param1 = 0;
            }

            if (v0 == param1) {
                break;
            }

            if (ov13_022213F0(param0, param1) != 0) {
                if (param0->unk_04[param1].unk_17_7 == 0) {
                    return (u8)param1;
                }
            }
        }
    }

    return 0xff;
}

static void ov13_022214E0(UnkStruct_ov13_022213F0 *param0, u8 param1)
{
    UnkStruct_ov13_02221ED0 *v0;
    u32 v1;
    u32 v2;
    u16 v3;
    u16 v4, v5;
    u8 v6;
    u8 v7;

    if (param1 != 2) {
        return;
    }

    v0 = &param0->unk_04[param0->unk_00->unk_11];

    if (v0->unk_16_0 < 100) {
        v1 = v0->unk_24 - v0->unk_20;
        v2 = v0->unk_1C - v0->unk_20;
    } else {
        v1 = 0;
        v2 = 0;
    }

    v6 = App_PixelCount(v2, v1, 64);

    for (v7 = 0; v7 < 8; v7++) {
        if (v6 >= 8) {
            v3 = 0x16 + 8;
        } else {
            v3 = 0x16 + v6;
        }

        ov13_02221560(param0, v3, 10 + v7, 8);

        if (v6 < 8) {
            v6 = 0;
        } else {
            v6 -= 8;
        }
    }

    Bg_ScheduleTilemapTransfer(param0->unk_1E0, 7);
}

static void ov13_02221560(UnkStruct_ov13_022213F0 *param0, u16 param1, u16 param2, u16 param3)
{
    Bg_FillTilemapRect(param0->unk_1E0, 7, param1, param2, param3, 1, 1, 16);
}

static void ov13_02221590(UnkStruct_ov13_022213F0 *param0, u16 param1, u8 param2)
{
    Bg_FillTilemapRect(param0->unk_1E0, 7, param1, 2 + param2 * 2, 14, 1, 1, 16);
    Bg_FillTilemapRect(param0->unk_1E0, 7, param1 + 1, 2 + param2 * 2 + 1, 14, 1, 1, 16);
    Bg_FillTilemapRect(param0->unk_1E0, 7, param1 + 32, 2 + param2 * 2, 14 + 1, 1, 1, 16);
    Bg_FillTilemapRect(param0->unk_1E0, 7, param1 + 33, 2 + param2 * 2 + 1, 14 + 1, 1, 1, 16);
}

static void ov13_02221630(UnkStruct_ov13_022213F0 *param0)
{
    u16 v0;

    for (v0 = 0; v0 < 6; v0++) {
        ov13_02221590(param0, 0x125, v0);
    }
}

static void ov13_02221654(UnkStruct_ov13_022213F0 *param0, u8 param1)
{
    u32 v0;
    u16 v1;
    u16 v2;
    s8 v3;

    if (param1 != 9) {
        return;
    }

    ov13_02221630(param0);

    if (param0->unk_00->unk_34 < 4) {
        UnkStruct_ov13_022236B8 *v4 = &param0->unk_04[param0->unk_00->unk_11].unk_30[param0->unk_00->unk_34];

        v2 = v4->unk_00;
    } else {
        v2 = param0->unk_00->unk_24;
    }

    v0 = MoveTable_LoadParam(v2, MOVEATTRIBUTE_CONTEST_EFFECT);
    v3 = sub_02095734(v0) / 10;

    for (v1 = 0; v1 < v3; v1++) {
        ov13_02221590(param0, 0x140, v1);
    }

    Bg_ScheduleTilemapTransfer(param0->unk_1E0, 7);
}

static void ov13_022216C0(UnkStruct_ov13_022213F0 *param0, u8 param1)
{
    ov13_02221738(param0, param1);

    Bg_ScheduleFillTilemap(param0->unk_1E0, 4, 0);
    Bg_ScheduleFillTilemap(param0->unk_1E0, 5, 0);

    ov13_02224B7C(param0, param1);
    ov13_02221BB0(param0);
    ov13_02221AC4(param0, param1);
    ov13_02221BF8(param0, param1);
    ov13_022214E0(param0, param1);
    ov13_02221654(param0, param1);
    ov13_0222563C(param0, param1);
    ov13_022260EC(param0, param1);
    ov13_02226444(param0, param1);

    param0->unk_2076 = param1;
}

static const u32 Unk_ov13_02228E50[][2] = {
    { 0x1, 0x0 },
    { 0x13, 0x12 },
    { 0x5, 0x4 },
    { 0x3, 0x2 },
    { 0x7, 0x6 },
    { 0x9, 0x8 },
    { 0xB, 0xA },
    { 0xF, 0xE },
    { 0xD, 0xC },
    { 0x11, 0x10 }
};

static void ov13_02221738(UnkStruct_ov13_022213F0 *param0, u8 param1)
{
    NNSG2dScreenData *v0;
    void *v1;
    u32 v2;

    for (v2 = 0; v2 < 2; v2++) {
        v1 = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_BATTLE__GRAPHIC__PL_B_PLIST_GRA, Unk_ov13_02228E50[param1][v2], param0->unk_00->heapID);
        NNS_G2dGetUnpackedScreenData(v1, &v0);
        Bg_LoadToTilemapRect(param0->unk_1E0, 6 + v2, (u16 *)v0->rawData, 0, 0, 32, 24);
        Bg_ScheduleTilemapTransfer(param0->unk_1E0, 6 + v2);
        Heap_FreeToHeap(v1);
    }
}

static u8 ov13_022217A4(UnkStruct_ov13_022213F0 *param0)
{
    UnkStruct_ov13_02221ED0 *v0;
    Strbuf *v1;

    v0 = &param0->unk_04[param0->unk_00->unk_11];

    if (ov13_022219AC(param0, param0->unk_00->unk_11) == 1) {
        v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 80);
        {
            int v2;

            v2 = BattleSystem_Partner(param0->unk_00->unk_08, param0->unk_00->unk_28);
            StringTemplate_SetTrainerNameBattle(param0->unk_1FA8, 0, BattleSystem_GetTrainer(param0->unk_00->unk_08, v2));
        }
        StringTemplate_Format(param0->unk_1FA8, param0->unk_1FAC, v1);
        Strbuf_Free(v1);
        return 0;
    }

    if (v0->unk_10 == 0) {
        v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 77);
        StringTemplate_SetNickname(param0->unk_1FA8, 0, Pokemon_GetBoxPokemon(v0->unk_00));
        StringTemplate_Format(param0->unk_1FA8, param0->unk_1FAC, v1);
        Strbuf_Free(v1);
        return 0;
    }

    if ((param0->unk_00->unk_2C[param0->unk_00->unk_11] == param0->unk_00->unk_14) || (param0->unk_00->unk_2C[param0->unk_00->unk_11] == param0->unk_00->unk_15)) {
        v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 76);
        StringTemplate_SetNickname(param0->unk_1FA8, 0, Pokemon_GetBoxPokemon(v0->unk_00));
        StringTemplate_Format(param0->unk_1FA8, param0->unk_1FAC, v1);
        Strbuf_Free(v1);
        return 0;
    }

    if (ov13_0222194C(param0) == 1) {
        MessageLoader_GetStrbuf(param0->unk_1FA4, 79, param0->unk_1FAC);
        return 0;
    }

    if ((param0->unk_00->unk_12 != 6) && (param0->unk_00->unk_2C[param0->unk_00->unk_11] == param0->unk_00->unk_12)) {
        v0 = &param0->unk_04[param0->unk_00->unk_11];
        v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 93);

        StringTemplate_SetNickname(param0->unk_1FA8, 0, Pokemon_GetBoxPokemon(v0->unk_00));
        StringTemplate_Format(param0->unk_1FA8, param0->unk_1FAC, v1);
        Strbuf_Free(v1);
        return 0;
    }

    if (param0->unk_00->unk_24 != 0) {
        v0 = &param0->unk_04[param0->unk_2072];
        v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 78);

        StringTemplate_SetNickname(param0->unk_1FA8, 0, Pokemon_GetBoxPokemon(v0->unk_00));
        StringTemplate_Format(param0->unk_1FA8, param0->unk_1FAC, v1);
        Strbuf_Free(v1);
        return 0;
    }

    return 1;
}

static u8 ov13_0222194C(UnkStruct_ov13_022213F0 *param0)
{
    if (param0->unk_04[param0->unk_00->unk_11].unk_17_7 != 0) {
        return 1;
    }

    return 0;
}

u8 ov13_0222196C(UnkStruct_ov13_022213F0 *param0)
{
    u32 battleType = BattleSystem_BattleType(param0->unk_00->unk_08);

    if ((battleType != BATTLE_TYPE_AI_PARTNER)
        && (battleType != (BATTLE_TYPE_TRAINER_DOUBLES | BATTLE_TYPE_2vs2 | BATTLE_TYPE_AI))
        && (battleType & (BATTLE_TYPE_DOUBLES | BATTLE_TYPE_TAG))) {
        return 1;
    }

    return 0;
}

u8 ov13_0222198C(UnkStruct_ov13_022213F0 *param0)
{
    u32 battleType = BattleSystem_BattleType(param0->unk_00->unk_08);

    if ((battleType != BATTLE_TYPE_AI_PARTNER)
        && (battleType != (BATTLE_TYPE_TRAINER_DOUBLES | BATTLE_TYPE_2vs2 | BATTLE_TYPE_AI))
        && (battleType & BATTLE_TYPE_2vs2)) {
        return 1;
    }

    return 0;
}

u8 ov13_022219AC(UnkStruct_ov13_022213F0 *param0, u8 param1)
{
    if (ov13_0222198C(param0) == 1) {
        if (param0->unk_208B == 2) {
            if ((param1 & 1) != 0) {
                return 1;
            }
        } else {
            if ((param1 & 1) == 0) {
                return 1;
            }
        }
    }

    return 0;
}

static u8 ov13_022219DC(UnkStruct_ov13_022213F0 *param0)
{
    u16 v0;

    if (param0->unk_00->unk_34 == 4) {
        v0 = param0->unk_00->unk_24;
    } else {
        v0 = param0->unk_04[param0->unk_00->unk_11].unk_30[param0->unk_00->unk_34].unk_00;
    }

    return Item_IsHMMove(v0);
}

static void ov13_02221A04(UnkStruct_ov13_022213F0 *param0)
{
    ManagedSprite_SetDrawFlag(param0->unk_1FB4[26], 0);
    Window_ClearAndScheduleCopyToVRAM(&param0->unk_206C[10]);
    Window_ClearAndScheduleCopyToVRAM(&param0->unk_206C[6]);
    Window_ClearAndScheduleCopyToVRAM(&param0->unk_206C[7]);
}

static void ov13_02221A3C(UnkStruct_ov13_022213F0 *param0)
{
    ov13_02221630(param0);
    Bg_ScheduleTilemapTransfer(param0->unk_1E0, 7);
}

static void ov13_02221A54(BattleSystem *battleSys, u16 item, u16 category, u32 heapID)
{
    if (item != ITEM_BLUE_FLUTE && item != ITEM_RED_FLUTE && item != ITEM_YELLOW_FLUTE) {
        Bag_TryRemoveItem(BattleSystem_Bag(battleSys), item, 1, heapID);
    }

    Bag_SetLastBattleItemUsed(BattleSystem_BagCursor(battleSys), item, category);
}
