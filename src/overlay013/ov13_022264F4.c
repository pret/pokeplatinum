#include "overlay013/ov13_022264F4.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/battle_system.h"
#include "struct_decls/pc_boxes_decl.h"

#include "battle/battle_lib.h"
#include "battle/ov16_0223DF00.h"
#include "battle/ov16_0226DE44.h"
#include "overlay013/ov13_02227288.h"
#include "overlay013/ov13_02227A4C.h"
#include "overlay013/ov13_02227BDC.h"
#include "overlay013/ov13_02228128.h"
#include "overlay013/ov13_02228A38.h"
#include "overlay013/struct_ov13_022264F4.h"
#include "overlay013/struct_ov13_02227244.h"

#include "bag.h"
#include "bg_window.h"
#include "font.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "item.h"
#include "message.h"
#include "narc.h"
#include "palette.h"
#include "party.h"
#include "pc_boxes.h"
#include "pokemon.h"
#include "render_window.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "touch_screen.h"
#include "unk_02005474.h"
#include "unk_0200679C.h"
#include "unk_0200C440.h"

static void ov13_02226590(SysTask *param0, void *param1);
static u8 ov13_0222668C(UnkStruct_ov13_02227244 *param0);
static u8 ov13_02226760(UnkStruct_ov13_02227244 *param0);
static u8 ov13_02226838(UnkStruct_ov13_02227244 *param0);
static u8 ov13_022269C0(UnkStruct_ov13_02227244 *param0);
static u8 ov13_02226C48(UnkStruct_ov13_02227244 *param0);
static u8 ov13_02226C54(UnkStruct_ov13_02227244 *param0);
static u8 ov13_02226C60(UnkStruct_ov13_02227244 *param0);
static u8 ov13_02226948(UnkStruct_ov13_02227244 *param0);
static u8 ov13_02226C6C(UnkStruct_ov13_02227244 *param0);
static u8 ov13_02226C7C(UnkStruct_ov13_02227244 *param0);
static u8 ov13_02226C94(UnkStruct_ov13_02227244 *param0);
static u8 ov13_02226CBC(UnkStruct_ov13_02227244 *param0);
static u8 ov13_02226D94(UnkStruct_ov13_02227244 *param0);
static u8 ov13_02226CD4(UnkStruct_ov13_02227244 *param0);
static u8 ov13_02226CFC(SysTask *param0, UnkStruct_ov13_02227244 *param1);
static void ov13_02226ED0(UnkStruct_ov13_02227244 *param0);
static void ov13_02226F9C(BgConfig *param0);
static void ov13_02226FC4(UnkStruct_ov13_02227244 *param0);
static void ov13_022270B8(UnkStruct_ov13_02227244 *param0);
static void ov13_022270F8(UnkStruct_ov13_02227244 *param0);
static u8 ov13_02226A5C(UnkStruct_ov13_02227244 *param0);
static void ov13_02227118(UnkStruct_ov13_02227244 *param0, u8 param1);
static void ov13_022271D0(UnkStruct_ov13_02227244 *param0, u8 param1);
static int ov13_02227238(UnkStruct_ov13_02227244 *param0, const TouchScreenRect *rect);
static void ov13_02227260(BattleSystem *battleSys, u16 item, u16 category, u32 heapID);

static const TouchScreenRect Unk_ov13_02229A1C[] = {
    { 0x8, 0x4F, 0x0, 0x7F },
    { 0x50, 0x97, 0x0, 0x7F },
    { 0x8, 0x4F, 0x80, 0xFF },
    { 0x50, 0x97, 0x80, 0xFF },
    { 0x98, 0xBF, 0x0, 0xCF },
    { 0x98, 0xBF, 0xD8, 0xFF },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const TouchScreenRect Unk_ov13_02229A38[] = {
    { 0x8, 0x37, 0x0, 0x7F },
    { 0x8, 0x37, 0x80, 0xFF },
    { 0x38, 0x67, 0x0, 0x7F },
    { 0x38, 0x67, 0x80, 0xFF },
    { 0x68, 0x97, 0x0, 0x7F },
    { 0x68, 0x97, 0x80, 0xFF },
    { 0x98, 0xBF, 0x0, 0x27 },
    { 0x98, 0xBF, 0x28, 0x4F },
    { 0x98, 0xBF, 0xD8, 0xFF },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const TouchScreenRect Unk_ov13_022299AC[] = {
    { 0x98, 0xBF, 0x0, 0xCF },
    { 0x98, 0xBF, 0xD8, 0xFF },
    { 0xFF, 0x0, 0x0, 0x0 }
};

void ov13_022264F4(UnkStruct_ov13_022264F4 *param0)
{
    UnkStruct_ov13_02227244 *v0 = SysTask_GetParam(SysTask_StartAndAllocateParam(ov13_02226590, sizeof(UnkStruct_ov13_02227244), 100, param0->heapID));
    memset(v0, 0, sizeof(UnkStruct_ov13_02227244));

    v0->unk_00 = param0;
    v0->unk_04 = BattleSystem_BGL(param0->unk_00);
    v0->unk_08 = BattleSystem_PaletteSys(param0->unk_00);
    v0->unk_114A = 0;

    {
        BagCursor *v1;
        u8 v2;

        v1 = BattleSystem_BagCursor(param0->unk_00);

        for (v2 = 0; v2 < 5; v2++) {
            BagCursor_GetBattleCategoryPosition(v1, v2, &v0->unk_00->unk_27[v2], &v0->unk_00->unk_2C[v2]);
        }

        v0->unk_00->unk_20 = BagCursor_GetLastUsedBattleItem(v1);
        v0->unk_00->unk_1F = BagCursor_GetLastUsedBattleItemCategory(v1);
    }

    ov13_02227A4C(v0);

    if (BattleSystem_BattleType(v0->unk_00->unk_00) & BATTLE_TYPE_CATCH_TUTORIAL) {
        v0->unk_00->unk_14 = 1;
    }
}

static void ov13_02226590(SysTask *param0, void *param1)
{
    UnkStruct_ov13_02227244 *v0 = (UnkStruct_ov13_02227244 *)param1;

    switch (v0->unk_114A) {
    case 0:
        v0->unk_114A = ov13_0222668C(v0);
        break;
    case 1:
        v0->unk_114A = ov13_02226760(v0);
        break;
    case 2:
        v0->unk_114A = ov13_02226838(v0);
        break;
    case 3:
        v0->unk_114A = ov13_022269C0(v0);
        break;
    case 4:
        v0->unk_114A = ov13_02226C48(v0);
        break;
    case 5:
        v0->unk_114A = ov13_02226C54(v0);
        break;
    case 6:
        v0->unk_114A = ov13_02226C60(v0);
        break;
    case 7:
        v0->unk_114A = ov13_02226948(v0);
        break;
    case 8:
        v0->unk_114A = ov13_02226C6C(v0);
        break;
    case 9:
        v0->unk_114A = ov13_02226C7C(v0);
        break;
    case 10:
        v0->unk_114A = ov13_02226C94(v0);
        break;
    case 11:
        v0->unk_114A = ov13_02226CBC(v0);
        break;
    case 12:
        v0->unk_114A = ov13_02226D94(v0);
        break;
    case 13:
        v0->unk_114A = ov13_02226CD4(v0);
        break;
    case 14:
        if (ov13_02226CFC(param0, v0) == 1) {
            return;
        }
    }

    ov13_02228848(v0);
    SpriteSystem_DrawSprites(v0->unk_30C);
}

static u8 ov13_0222668C(UnkStruct_ov13_02227244 *param0)
{
    G2S_BlendNone();

    param0->unk_34 = ov13_02228A38(param0->unk_00->heapID);

    ov13_02226ED0(param0);
    ov13_02226FC4(param0);
    ov13_022270B8(param0);
    Font_InitManager(FONT_SUBSCREEN, param0->unk_00->heapID);

    param0->unk_114D = (u8)BagCursor_GetBattleCurrentCategory(BattleSystem_BagCursor(param0->unk_00->unk_00));

    ov13_02227AC8(param0);
    ov13_02228924(param0, param0->unk_114C);
    ov13_02227288(param0);
    ov13_02227350(param0, param0->unk_114C);
    ov13_02227BDC(param0);
    ov13_02227E68(param0, param0->unk_114C);

    if (param0->unk_00->unk_25 != 0) {
        ov13_02228A60(param0->unk_34, 1);
    }

    ov13_02228008(param0, param0->unk_114C);
    ov13_022280F0(param0, param0->unk_114C);
    PaletteData_StartFade(param0->unk_08, (0x2 | 0x8), 0xffff, -8, 16, 0, 0);

    if (param0->unk_00->unk_14 == 1) {
        return 12;
    }

    return 1;
}

static u8 ov13_02226760(UnkStruct_ov13_02227244 *param0)
{
    if (PaletteData_GetSelectedBuffersMask(param0->unk_08) != 0) {
        return 1;
    }

    {
        int v0 = ov13_02227238(param0, Unk_ov13_02229A1C);

        if (v0 == 0xffffffff) {
            v0 = ov13_02228B64(param0->unk_34);

            if (v0 == 0xfffffffe) {
                v0 = 5;
            }
        } else {
            ov13_02228050(param0);
        }

        switch (v0) {
        case 0:
        case 1:
        case 2:
        case 3:
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            param0->unk_114D = (u8)v0;
            param0->unk_114B = 5;
            ov13_0222880C(param0, 0 + v0 - 0, 0);
            return 11;
        case 4:
            if (param0->unk_00->unk_20 != 0) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                param0->unk_114D = param0->unk_00->unk_1F;
                param0->unk_114B = 6;
                ov13_02227A7C(param0);
                ov13_0222880C(param0, 4, 0);
                return 11;
            }
            break;
        case 5:
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            param0->unk_00->unk_1C = 0;
            param0->unk_00->unk_1E = 4;
            ov13_0222880C(param0, 5, 0);
            return 13;
        }
    }

    return 1;
}

static u8 ov13_02226838(UnkStruct_ov13_02227244 *param0)
{
    {
        int v0 = ov13_02227238(param0, Unk_ov13_02229A38);

        if (v0 == 0xffffffff) {
            v0 = ov13_02228B64(param0->unk_34);

            if (v0 == 0xfffffffe) {
                v0 = 8;
            }
        } else {
            ov13_02228050(param0);
        }

        switch (v0) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
            if (ov13_02227BA8(param0, v0) != 0) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                param0->unk_00->unk_27[param0->unk_114D] = (u8)v0;
                param0->unk_114B = 6;
                ov13_0222880C(param0, 6 + v0, 0);
                return 11;
            }
            break;
        case 6:
            if (param0->unk_1154[param0->unk_114D] != 0) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                param0->unk_114B = 7;
                param0->unk_114E = -1;
                ov13_0222880C(param0, 12, 0);
                return 11;
            }
            break;
        case 7:
            if (param0->unk_1154[param0->unk_114D] != 0) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                param0->unk_114B = 7;
                param0->unk_114E = 1;
                ov13_0222880C(param0, 13, 0);
                return 11;
            }
            break;
        case 8:
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            param0->unk_114B = 4;
            ov13_0222880C(param0, 14, 0);
            return 11;
        }
    }

    return 2;
}

static u8 ov13_02226948(UnkStruct_ov13_02227244 *param0)
{
    s8 v0 = param0->unk_00->unk_2C[param0->unk_114D];

    param0->unk_00->unk_27[param0->unk_114D] = 0;
    v0 += param0->unk_114E;

    if (v0 > param0->unk_1154[param0->unk_114D]) {
        param0->unk_00->unk_2C[param0->unk_114D] = 0;
    } else if (v0 < 0) {
        param0->unk_00->unk_2C[param0->unk_114D] = param0->unk_1154[param0->unk_114D];
    } else {
        param0->unk_00->unk_2C[param0->unk_114D] = v0;
    }

    ov13_02227650(param0);
    ov13_02227698(param0);
    ov13_02227E68(param0, param0->unk_114C);
    ov13_02228924(param0, param0->unk_114C);

    return 2;
}

static u8 ov13_022269C0(UnkStruct_ov13_02227244 *param0)
{
    {
        int v0 = ov13_02227238(param0, Unk_ov13_022299AC);

        if (v0 == 0xffffffff) {
            v0 = ov13_02228B64(param0->unk_34);

            if (v0 == 0xfffffffe) {
                v0 = 1;
            }
        } else {
            ov13_02228050(param0);
        }

        switch (v0) {
        case 0:
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            param0->unk_00->unk_1C = ov13_02227BA8(param0, param0->unk_00->unk_27[param0->unk_114D]);
            param0->unk_00->unk_1E = param0->unk_114D;
            ov13_0222880C(param0, 15, 0);
            return ov13_02226A5C(param0);
        case 1:
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            param0->unk_114B = 5;
            ov13_0222880C(param0, 16, 0);
            return 11;
        }
    }

    return 3;
}

static u8 ov13_02226A5C(UnkStruct_ov13_02227244 *param0)
{
    UnkStruct_ov13_022264F4 *v0 = param0->unk_00;

    if (param0->unk_114D == 3) {
        int v1 = ov13_02227244(param0);
        u32 v2 = Item_LoadParam(v0->unk_1C, 7, v0->heapID);

        if ((v0->unk_18 != 0) && (v0->unk_1C != 55) && (v2 != 3)) {
            Pokemon *v3;
            Strbuf *v4;

            v3 = BattleSystem_PartyPokemon(v0->unk_00, v0->unk_10, v1);
            v4 = MessageLoader_GetNewStrbuf(param0->unk_10, 46);

            StringTemplate_SetNickname(param0->unk_14, 0, Pokemon_GetBoxPokemon(v3));
            StringTemplate_SetMoveName(param0->unk_14, 1, 373);
            StringTemplate_Format(param0->unk_14, param0->unk_18, v4);
            Strbuf_Free(v4);

            ov13_022279F4(param0);
            param0->unk_114B = 8;

            return 9;
        }

        if (BattleSystem_UseBagItem(v0->unk_00, v0->unk_10, v1, 0, v0->unk_1C) == 1) {
            ov13_02227260(v0->unk_00, v0->unk_1C, param0->unk_114D, v0->heapID);
            return 13;
        } else if (v2 == 3) {
            if (!(BattleSystem_BattleType(v0->unk_00) & BATTLE_TYPE_TRAINER)) {
                ov13_02227260(v0->unk_00, v0->unk_1C, param0->unk_114D, v0->heapID);
                return 13;
            } else {
                MessageLoader *v5;
                Strbuf *v6;

                v5 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_COMMON_STRINGS, v0->heapID);
                v6 = MessageLoader_GetNewStrbuf(v5, 36);
                StringTemplate_SetPlayerName(param0->unk_14, 0, v0->unk_04);
                StringTemplate_Format(param0->unk_14, param0->unk_18, v6);
                Strbuf_Free(v6);
                MessageLoader_Free(v5);
                ov13_022279F4(param0);
                param0->unk_114B = 8;
                return 9;
            }
        } else {
            MessageLoader_GetStrbuf(param0->unk_10, 34, param0->unk_18);
            ov13_022279F4(param0);
            param0->unk_114B = 8;
            return 9;
        }
    } else if (param0->unk_114D == 2) {
        if (v0->unk_22 == 1) {
            MessageLoader_GetStrbuf(param0->unk_10, 44, param0->unk_18);
            ov13_022279F4(param0);
            param0->unk_114B = 8;
            return 9;
        }

        if (v0->unk_23 == 1) {
            MessageLoader_GetStrbuf(param0->unk_10, 47, param0->unk_18);
            ov13_022279F4(param0);
            param0->unk_114B = 8;
            return 9;
        }

        if (v0->unk_24 == 1) {
            MessageLoader_GetStrbuf(param0->unk_10, 48, param0->unk_18);
            ov13_022279F4(param0);
            param0->unk_114B = 8;
            return 9;
        }

        {
            Party *v7 = BattleSystem_Party(v0->unk_00, v0->unk_10);
            PCBoxes *v8 = ov16_0223E228(v0->unk_00);

            if ((Party_GetCurrentCount(v7) == 6) && (PCBoxes_FirstEmptyBox(v8) == 18)) {
                MessageLoader_GetStrbuf(param0->unk_10, 45, param0->unk_18);
                ov13_022279F4(param0);
                param0->unk_114B = 8;
                return 9;
            }
        }
    }

    return 13;
}

static u8 ov13_02226C48(UnkStruct_ov13_02227244 *param0)
{
    ov13_022271D0(param0, 0);
    return 1;
}

static u8 ov13_02226C54(UnkStruct_ov13_02227244 *param0)
{
    ov13_022271D0(param0, 1);
    return 2;
}

static u8 ov13_02226C60(UnkStruct_ov13_02227244 *param0)
{
    ov13_022271D0(param0, 2);
    return 3;
}

static u8 ov13_02226C6C(UnkStruct_ov13_02227244 *param0)
{
    Window_EraseMessageBox(&param0->unk_1C, 0);
    return 3;
}

static u8 ov13_02226C7C(UnkStruct_ov13_02227244 *param0)
{
    if (Text_IsPrinterActive(param0->unk_32) == 0) {
        return 10;
    }

    return 9;
}

static u8 ov13_02226C94(UnkStruct_ov13_02227244 *param0)
{
    if ((gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) || (TouchScreen_Tapped() == 1)) {
        return param0->unk_114B;
    }

    return 10;
}

static u8 ov13_02226CBC(UnkStruct_ov13_02227244 *param0)
{
    if (param0->unk_113E == 2) {
        return param0->unk_114B;
    }

    return 11;
}

static u8 ov13_02226CD4(UnkStruct_ov13_02227244 *param0)
{
    PaletteData_StartFade(param0->unk_08, (0x2 | 0x8), 0xffff, -8, 0, 16, 0);
    return 14;
}

static u8 ov13_02226CFC(SysTask *param0, UnkStruct_ov13_02227244 *param1)
{
    if (PaletteData_GetSelectedBuffersMask(param1->unk_08) != 0) {
        return 0;
    }

    ov13_02227E08(param1);
    ov13_02227334(param1);
    ov13_022270F8(param1);
    ov13_02226F9C(param1->unk_04);

    param1->unk_00->unk_25 = ov13_02228A5C(param1->unk_34);

    ov13_02228A50(param1->unk_34);
    Font_Free(FONT_SUBSCREEN);

    if (param1->unk_00->unk_1C != 0) {
        BagCursor *v0;
        u8 v1;

        v0 = BattleSystem_BagCursor(param1->unk_00->unk_00);

        for (v1 = 0; v1 < 5; v1++) {
            BagCursor_SetBattleCategoryPosition(v0, v1, param1->unk_00->unk_27[v1], param1->unk_00->unk_2C[v1]);
        }

        BagCursor_SetBattleCurrentCategory(v0, param1->unk_114D);
    }

    param1->unk_00->unk_26 = 1;
    SysTask_FinishAndFreeParam(param0);

    return 1;
}

static u8 ov13_02226D94(UnkStruct_ov13_02227244 *param0)
{
    if (PaletteData_GetSelectedBuffersMask(param0->unk_08) != 0) {
        return 12;
    }

    switch (param0->unk_1159) {
    case 0:

        if (ov16_0226DFD4(param0->unk_38) == 1) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            param0->unk_114D = 2;
            param0->unk_114B = 12;
            ov13_0222880C(param0, 2, 0);
            param0->unk_115A = 0;
            param0->unk_1159++;
            return 11;
        } else {
            param0->unk_115A++;
        }
        break;
    case 1:
        ov13_02226C54(param0);
        param0->unk_1159++;
        break;
    case 2:
        if (ov16_0226DFD4(param0->unk_38) == 1) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            param0->unk_00->unk_27[param0->unk_114D] = 0;
            param0->unk_114B = 12;
            ov13_0222880C(param0, 6, 0);
            param0->unk_115A = 0;
            param0->unk_1159++;
            return 11;
        } else {
            param0->unk_115A++;
        }
        break;
    case 3:
        ov13_02226C60(param0);
        param0->unk_1159++;
        break;
    case 4:
        if (ov16_0226DFD4(param0->unk_38) == 1) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            param0->unk_00->unk_1C = ov13_02227BA8(param0, param0->unk_00->unk_27[param0->unk_114D]);
            param0->unk_00->unk_1E = param0->unk_114D;
            ov13_0222880C(param0, 15, 0);
            return ov13_02226A5C(param0);
        } else {
            param0->unk_115A++;
        }
        break;
    }

    return 12;
}

static void ov13_02226ED0(UnkStruct_ov13_02227244 *param0)
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
            0x2000,
            0,
            4,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xd000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_23,
            3,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0->unk_04, 6, &v1, 0);
    }

    {
        BgTemplate v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf800,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0->unk_04, 5, &v2, 0);
        Bg_ClearTilemap(param0->unk_04, 5);
    }

    {
        BgTemplate v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0->unk_04, 4, &v3, 0);
        Bg_ClearTilemap(param0->unk_04, 4);
    }

    Bg_ClearTilesRange(5, 32, 0, param0->unk_00->heapID);
    Bg_ClearTilesRange(4, 32, 0, param0->unk_00->heapID);
    Bg_ScheduleTilemapTransfer(param0->unk_04, 5);
    Bg_ScheduleTilemapTransfer(param0->unk_04, 4);
}

static void ov13_02226F9C(BgConfig *param0)
{
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_OBJ, 0);
    Bg_FreeTilemapBuffer(param0, 4);
    Bg_FreeTilemapBuffer(param0, 5);
    Bg_FreeTilemapBuffer(param0, 6);
}

static void ov13_02226FC4(UnkStruct_ov13_02227244 *param0)
{
    NARC *v0 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__B_BAG_GRA, param0->unk_00->heapID);

    Graphics_LoadTilesToBgLayerFromOpenNARC(v0, 2, param0->unk_04, 6, 0, 0, 0, param0->unk_00->heapID);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v0, 0, param0->unk_04, 6, 0, 0, 0, param0->unk_00->heapID);

    {
        NNSG2dScreenData *v1;
        void *v2;
        u16 *v3;

        v2 = NARC_AllocAndReadWholeMember(v0, 1, param0->unk_00->heapID);
        NNS_G2dGetUnpackedScreenData(v2, &v1);
        v3 = (u16 *)v1->rawData;
        ov13_02228128(param0, v3);
        Heap_FreeToHeap(v2);
    }

    NARC_dtor(v0);
    PaletteData_LoadBufferFromFileStart(param0->unk_08, 77, 3, param0->unk_00->heapID, 1, 0x20 * 12, 0);
    PaletteData_LoadBufferFromFileStart(param0->unk_08, 14, 7, param0->unk_00->heapID, 1, 0x20, 15 * 16);

    {
        int v4 = ov16_0223EDE0(param0->unk_00->unk_00);

        Graphics_LoadTilesToBgLayer(38, GetMessageBoxTilesNARCMember(v4), param0->unk_04, 4, 1024 - (18 + 12), 0, 0, param0->unk_00->heapID);
        PaletteData_LoadBufferFromFileStart(param0->unk_08, 38, GetMessageBoxPaletteNARCMember(v4), param0->unk_00->heapID, 1, 0x20, 14 * 16);
    }
}

static void ov13_022270B8(UnkStruct_ov13_02227244 *param0)
{
    param0->unk_10 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0002, param0->unk_00->heapID);
    param0->unk_0C = sub_0200C440(15, 14, 0, param0->unk_00->heapID);
    param0->unk_14 = StringTemplate_Default(param0->unk_00->heapID);
    param0->unk_18 = Strbuf_Init(512, param0->unk_00->heapID);
}

static void ov13_022270F8(UnkStruct_ov13_02227244 *param0)
{
    MessageLoader_Free(param0->unk_10);
    sub_0200C560(param0->unk_0C);
    StringTemplate_Free(param0->unk_14);
    Strbuf_Free(param0->unk_18);
}

static void ov13_02227118(UnkStruct_ov13_02227244 *param0, u8 param1)
{
    switch (param1) {
    case 0:
        Bg_ScheduleScroll(param0->unk_04, 6, 0, 0);
        Bg_ScheduleScroll(param0->unk_04, 6, 3, 0);
        break;
    case 1:
        Bg_ScheduleScroll(param0->unk_04, 6, 0, 256);
        Bg_ScheduleScroll(param0->unk_04, 6, 3, 0);
        break;
    case 2:
        Bg_ScheduleScroll(param0->unk_04, 6, 0, 0);
        Bg_ScheduleScroll(param0->unk_04, 6, 3, 256);
        break;
    }
}

static void ov13_0222717C(UnkStruct_ov13_02227244 *param0, u8 param1)
{
    if (param1 != 2) {
        return;
    }

    Bg_ChangeTilemapRectPalette(param0->unk_04, 6, 2, 35, 28, 4, 8 + param0->unk_114D);
    Bg_ChangeTilemapRectPalette(param0->unk_04, 6, 2, 40, 28, 8, 8 + param0->unk_114D);
}

static void ov13_022271D0(UnkStruct_ov13_02227244 *param0, u8 param1)
{
    ov13_0222717C(param0, param1);
    ov13_02227118(param0, param1);

    Bg_ScheduleFillTilemap(param0->unk_04, 4, 0);
    Bg_ScheduleFillTilemap(param0->unk_04, 5, 0);

    ov13_02227324(param0);
    ov13_022272AC(param0, param1);
    ov13_02227350(param0, param1);
    ov13_02228924(param0, param1);
    ov13_02228008(param0, param1);
    ov13_022280F0(param0, param1);

    param0->unk_114C = param1;

    ov13_02227E68(param0, param0->unk_114C);
}

static int ov13_02227238(UnkStruct_ov13_02227244 *param0, const TouchScreenRect *rect)
{
    int v0 = TouchScreen_CheckRectanglePressed(rect);
    return v0;
}

int ov13_02227244(UnkStruct_ov13_02227244 *param0)
{
    int v0 = BattleContext_Get(param0->unk_00->unk_00, BattleSystem_Context(param0->unk_00->unk_00), 2, param0->unk_00->unk_10);
    return v0;
}

static void ov13_02227260(BattleSystem *battleSys, u16 item, u16 category, u32 heapID)
{
    Bag_TryRemoveItem(BattleSystem_Bag(battleSys), item, 1, heapID);
    Bag_SetLastBattleItemUsed(BattleSystem_BagCursor(battleSys), item, category);
}
