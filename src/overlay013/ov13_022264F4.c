#include "overlay013/ov13_022264F4.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/battle_system.h"
#include "struct_decls/pc_boxes_decl.h"

#include "battle/battle_lib.h"
#include "battle/ov16_0223DF00.h"
#include "battle/ov16_0226DE44.h"
#include "overlay013/battle_bag_battle_info.h"
#include "overlay013/battle_bag_utils.h"
#include "overlay013/battle_sub_menu_cursor.h"
#include "overlay013/ov13_022264F4.h"
#include "overlay013/ov13_02227288.h"
#include "overlay013/ov13_02227BDC.h"
#include "overlay013/ov13_02228128.h"

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

static void ov13_02226590(SysTask *param0, void *param1);
static u8 ov13_0222668C(BattleBagTask *param0);
static u8 ov13_02226760(BattleBagTask *param0);
static u8 ov13_02226838(BattleBagTask *param0);
static u8 ov13_022269C0(BattleBagTask *param0);
static u8 ov13_02226C48(BattleBagTask *param0);
static u8 ov13_02226C54(BattleBagTask *param0);
static u8 ov13_02226C60(BattleBagTask *param0);
static u8 ov13_02226948(BattleBagTask *param0);
static u8 ov13_02226C6C(BattleBagTask *param0);
static u8 ov13_02226C7C(BattleBagTask *param0);
static u8 ov13_02226C94(BattleBagTask *param0);
static u8 ov13_02226CBC(BattleBagTask *param0);
static u8 ov13_02226D94(BattleBagTask *param0);
static u8 ov13_02226CD4(BattleBagTask *param0);
static u8 ov13_02226CFC(SysTask *param0, BattleBagTask *param1);
static void ov13_02226ED0(BattleBagTask *param0);
static void ov13_02226F9C(BgConfig *param0);
static void ov13_02226FC4(BattleBagTask *param0);
static void ov13_022270B8(BattleBagTask *param0);
static void ov13_022270F8(BattleBagTask *param0);
static u8 ov13_02226A5C(BattleBagTask *param0);
static void ov13_02227118(BattleBagTask *param0, u8 param1);
static void ov13_022271D0(BattleBagTask *param0, u8 param1);
static int ov13_02227238(BattleBagTask *param0, const TouchScreenRect *rect);
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

void BattleBagTask_Start(BattleBagBattleInfo *param0)
{
    BattleBagTask *v0 = SysTask_GetParam(SysTask_StartAndAllocateParam(ov13_02226590, sizeof(BattleBagTask), 100, param0->heapID));
    memset(v0, 0, sizeof(BattleBagTask));

    v0->battleInfo = param0;
    v0->background = BattleSystem_BGL(param0->battleSystem);
    v0->palette = BattleSystem_PaletteSys(param0->battleSystem);
    v0->currentState = 0;

    {
        BagCursor *v1;
        u8 v2;

        v1 = BattleSystem_BagCursor(param0->battleSystem);

        for (v2 = 0; v2 < 5; v2++) {
            BagCursor_GetBattleCategoryPosition(v1, v2, &v0->battleInfo->pocketCurrentPagePositions[v2], &v0->battleInfo->pocketCurrentPages[v2]);
        }

        v0->battleInfo->lastUsedItem = BagCursor_GetLastUsedBattleItem(v1);
        v0->battleInfo->lastUsedItemPocket = BagCursor_GetLastUsedBattleItemCategory(v1);
    }

    IsLastUsedBattleBagItemUsable(v0);

    if (BattleSystem_BattleType(v0->battleInfo->battleSystem) & BATTLE_TYPE_CATCH_TUTORIAL) {
        v0->battleInfo->isInCatchTutorial = 1;
    }
}

static void ov13_02226590(SysTask *param0, void *param1)
{
    BattleBagTask *v0 = (BattleBagTask *)param1;

    switch (v0->currentState) {
    case 0:
        v0->currentState = ov13_0222668C(v0);
        break;
    case 1:
        v0->currentState = ov13_02226760(v0);
        break;
    case 2:
        v0->currentState = ov13_02226838(v0);
        break;
    case 3:
        v0->currentState = ov13_022269C0(v0);
        break;
    case 4:
        v0->currentState = ov13_02226C48(v0);
        break;
    case 5:
        v0->currentState = ov13_02226C54(v0);
        break;
    case 6:
        v0->currentState = ov13_02226C60(v0);
        break;
    case 7:
        v0->currentState = ov13_02226948(v0);
        break;
    case 8:
        v0->currentState = ov13_02226C6C(v0);
        break;
    case 9:
        v0->currentState = ov13_02226C7C(v0);
        break;
    case 10:
        v0->currentState = ov13_02226C94(v0);
        break;
    case 11:
        v0->currentState = ov13_02226CBC(v0);
        break;
    case 12:
        v0->currentState = ov13_02226D94(v0);
        break;
    case 13:
        v0->currentState = ov13_02226CD4(v0);
        break;
    case 14:
        if (ov13_02226CFC(param0, v0) == 1) {
            return;
        }
    }

    ov13_02228848(v0);
    SpriteSystem_DrawSprites(v0->spriteManager);
}

static u8 ov13_0222668C(BattleBagTask *param0)
{
    G2S_BlendNone();

    param0->cursor = MakeBattleSubMenuCursor(param0->battleInfo->heapID);

    ov13_02226ED0(param0);
    ov13_02226FC4(param0);
    ov13_022270B8(param0);
    Font_InitManager(FONT_SUBSCREEN, param0->battleInfo->heapID);

    param0->currentBattlePocket = (u8)BagCursor_GetBattleCurrentCategory(BattleSystem_BagCursor(param0->battleInfo->battleSystem));

    InitializeBattleBag(param0);
    ov13_02228924(param0, param0->currentScreen);
    ov13_02227288(param0);
    ov13_02227350(param0, param0->currentScreen);
    ov13_02227BDC(param0);
    ov13_02227E68(param0, param0->currentScreen);

    if (param0->battleInfo->isCursorEnabled != 0) {
        SetBattleSubMenuCursorVisibility(param0->cursor, 1);
    }

    ov13_02228008(param0, param0->currentScreen);
    ov13_022280F0(param0, param0->currentScreen);
    PaletteData_StartFade(param0->palette, (0x2 | 0x8), 0xffff, -8, 16, 0, 0);

    if (param0->battleInfo->isInCatchTutorial == 1) {
        return 12;
    }

    return 1;
}

static u8 ov13_02226760(BattleBagTask *param0)
{
    if (PaletteData_GetSelectedBuffersMask(param0->palette) != 0) {
        return 1;
    }

    {
        int v0 = ov13_02227238(param0, Unk_ov13_02229A1C);

        if (v0 == 0xffffffff) {
            v0 = BattleSubMenuCursorTick(param0->cursor);

            if (v0 == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
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
            param0->currentBattlePocket = (u8)v0;
            param0->queuedState = 5;
            ov13_0222880C(param0, 0 + v0 - 0, 0);
            return 11;
        case 4:
            if (param0->battleInfo->lastUsedItem != ITEM_NONE) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                param0->currentBattlePocket = param0->battleInfo->lastUsedItemPocket;
                param0->queuedState = 6;
                SetBattlePocketPositionToLastUsedItem(param0);
                ov13_0222880C(param0, 4, 0);
                return 11;
            }
            break;
        case 5:
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            param0->battleInfo->selectedBattleBagItem = ITEM_NONE;
            param0->battleInfo->selectedBattleBagPocket = 4;
            ov13_0222880C(param0, 5, 0);
            return 13;
        }
    }

    return 1;
}

static u8 ov13_02226838(BattleBagTask *param0)
{
    {
        int v0 = ov13_02227238(param0, Unk_ov13_02229A38);

        if (v0 == 0xffffffff) {
            v0 = BattleSubMenuCursorTick(param0->cursor);

            if (v0 == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
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
            if (GetBattleBagItem(param0, v0) != ITEM_NONE) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                param0->battleInfo->pocketCurrentPagePositions[param0->currentBattlePocket] = (u8)v0;
                param0->queuedState = 6;
                ov13_0222880C(param0, 6 + v0, 0);
                return 11;
            }
            break;
        case 6:
            if (param0->numBattlePocketPages[param0->currentBattlePocket] != 0) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                param0->queuedState = 7;
                param0->queuedBattlePocketPageChange = -1;
                ov13_0222880C(param0, 12, 0);
                return 11;
            }
            break;
        case 7:
            if (param0->numBattlePocketPages[param0->currentBattlePocket] != 0) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                param0->queuedState = 7;
                param0->queuedBattlePocketPageChange = 1;
                ov13_0222880C(param0, 13, 0);
                return 11;
            }
            break;
        case 8:
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            param0->queuedState = 4;
            ov13_0222880C(param0, 14, 0);
            return 11;
        }
    }

    return 2;
}

static u8 ov13_02226948(BattleBagTask *param0)
{
    s8 v0 = param0->battleInfo->pocketCurrentPages[param0->currentBattlePocket];

    param0->battleInfo->pocketCurrentPagePositions[param0->currentBattlePocket] = 0;
    v0 += param0->queuedBattlePocketPageChange;

    if (v0 > param0->numBattlePocketPages[param0->currentBattlePocket]) {
        param0->battleInfo->pocketCurrentPages[param0->currentBattlePocket] = 0;
    } else if (v0 < 0) {
        param0->battleInfo->pocketCurrentPages[param0->currentBattlePocket] = param0->numBattlePocketPages[param0->currentBattlePocket];
    } else {
        param0->battleInfo->pocketCurrentPages[param0->currentBattlePocket] = v0;
    }

    ov13_02227650(param0);
    ov13_02227698(param0);
    ov13_02227E68(param0, param0->currentScreen);
    ov13_02228924(param0, param0->currentScreen);

    return 2;
}

static u8 ov13_022269C0(BattleBagTask *param0)
{
    {
        int v0 = ov13_02227238(param0, Unk_ov13_022299AC);

        if (v0 == 0xffffffff) {
            v0 = BattleSubMenuCursorTick(param0->cursor);

            if (v0 == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
                v0 = 1;
            }
        } else {
            ov13_02228050(param0);
        }

        switch (v0) {
        case 0:
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            param0->battleInfo->selectedBattleBagItem = GetBattleBagItem(param0, param0->battleInfo->pocketCurrentPagePositions[param0->currentBattlePocket]);
            param0->battleInfo->selectedBattleBagPocket = param0->currentBattlePocket;
            ov13_0222880C(param0, 15, 0);
            return ov13_02226A5C(param0);
        case 1:
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            param0->queuedState = 5;
            ov13_0222880C(param0, 16, 0);
            return 11;
        }
    }

    return 3;
}

static u8 ov13_02226A5C(BattleBagTask *param0)
{
    BattleBagBattleInfo *v0 = param0->battleInfo;

    if (param0->currentBattlePocket == ITEM_BATTLE_CATEGORY_BATTLE_ITEMS) {
        int v1 = GetSelectedPartySlot(param0);
        u32 v2 = Item_LoadParam(v0->selectedBattleBagItem, 7, v0->heapID);

        if ((v0->embargoRemainingTurns != 0) && (v0->selectedBattleBagItem != 55) && (v2 != 3)) {
            Pokemon *v3;
            Strbuf *v4;

            v3 = BattleSystem_PartyPokemon(v0->battleSystem, v0->battler, v1);
            v4 = MessageLoader_GetNewStrbuf(param0->messageLoader, 46);

            StringTemplate_SetNickname(param0->stringTemplate, 0, Pokemon_GetBoxPokemon(v3));
            StringTemplate_SetMoveName(param0->stringTemplate, 1, 373);
            StringTemplate_Format(param0->stringTemplate, param0->strbuf, v4);
            Strbuf_Free(v4);

            ov13_022279F4(param0);
            param0->queuedState = 8;

            return 9;
        }

        if (BattleSystem_UseBagItem(v0->battleSystem, v0->battler, v1, 0, v0->selectedBattleBagItem) == 1) {
            ov13_02227260(v0->battleSystem, v0->selectedBattleBagItem, param0->currentBattlePocket, v0->heapID);
            return 13;
        } else if (v2 == 3) {
            if (!(BattleSystem_BattleType(v0->battleSystem) & BATTLE_TYPE_TRAINER)) {
                ov13_02227260(v0->battleSystem, v0->selectedBattleBagItem, param0->currentBattlePocket, v0->heapID);
                return 13;
            } else {
                MessageLoader *v5;
                Strbuf *v6;

                v5 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_COMMON_STRINGS, v0->heapID);
                v6 = MessageLoader_GetNewStrbuf(v5, 36);
                StringTemplate_SetPlayerName(param0->stringTemplate, 0, v0->trainerInfo);
                StringTemplate_Format(param0->stringTemplate, param0->strbuf, v6);
                Strbuf_Free(v6);
                MessageLoader_Free(v5);
                ov13_022279F4(param0);
                param0->queuedState = 8;
                return 9;
            }
        } else {
            MessageLoader_GetStrbuf(param0->messageLoader, 34, param0->strbuf);
            ov13_022279F4(param0);
            param0->queuedState = 8;
            return 9;
        }
    } else if (param0->currentBattlePocket == ITEM_BATTLE_CATEGORY_POKE_BALLS) {
        if (v0->hasTwoOpponents == 1) {
            MessageLoader_GetStrbuf(param0->messageLoader, 44, param0->strbuf);
            ov13_022279F4(param0);
            param0->queuedState = 8;
            return 9;
        }

        if (v0->opponentHidden == 1) {
            MessageLoader_GetStrbuf(param0->messageLoader, 47, param0->strbuf);
            ov13_022279F4(param0);
            param0->queuedState = 8;
            return 9;
        }

        if (v0->opponentSubstituted == 1) {
            MessageLoader_GetStrbuf(param0->messageLoader, 48, param0->strbuf);
            ov13_022279F4(param0);
            param0->queuedState = 8;
            return 9;
        }

        {
            Party *v7 = BattleSystem_Party(v0->battleSystem, v0->battler);
            PCBoxes *v8 = ov16_0223E228(v0->battleSystem);

            if ((Party_GetCurrentCount(v7) == 6) && (PCBoxes_FirstEmptyBox(v8) == 18)) {
                MessageLoader_GetStrbuf(param0->messageLoader, 45, param0->strbuf);
                ov13_022279F4(param0);
                param0->queuedState = 8;
                return 9;
            }
        }
    }

    return 13;
}

static u8 ov13_02226C48(BattleBagTask *param0)
{
    ov13_022271D0(param0, 0);
    return 1;
}

static u8 ov13_02226C54(BattleBagTask *param0)
{
    ov13_022271D0(param0, 1);
    return 2;
}

static u8 ov13_02226C60(BattleBagTask *param0)
{
    ov13_022271D0(param0, 2);
    return 3;
}

static u8 ov13_02226C6C(BattleBagTask *param0)
{
    Window_EraseMessageBox(&param0->messageBoxWindow, 0);
    return 3;
}

static u8 ov13_02226C7C(BattleBagTask *param0)
{
    if (Text_IsPrinterActive(param0->textPrinterID) == 0) {
        return 10;
    }

    return 9;
}

static u8 ov13_02226C94(BattleBagTask *param0)
{
    if ((gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) || (TouchScreen_Tapped() == 1)) {
        return param0->queuedState;
    }

    return 10;
}

static u8 ov13_02226CBC(BattleBagTask *param0)
{
    if (param0->unk_113E == 2) {
        return param0->queuedState;
    }

    return 11;
}

static u8 ov13_02226CD4(BattleBagTask *param0)
{
    PaletteData_StartFade(param0->palette, (0x2 | 0x8), 0xffff, -8, 0, 16, 0);
    return 14;
}

static u8 ov13_02226CFC(SysTask *param0, BattleBagTask *param1)
{
    if (PaletteData_GetSelectedBuffersMask(param1->palette) != 0) {
        return 0;
    }

    ov13_02227E08(param1);
    ov13_02227334(param1);
    ov13_022270F8(param1);
    ov13_02226F9C(param1->background);

    param1->battleInfo->isCursorEnabled = IsBattleSubMenuCursorVisible(param1->cursor);

    DeleteBattleSubMenuCursor(param1->cursor);
    Font_Free(FONT_SUBSCREEN);

    if (param1->battleInfo->selectedBattleBagItem != 0) {
        BagCursor *v0;
        u8 v1;

        v0 = BattleSystem_BagCursor(param1->battleInfo->battleSystem);

        for (v1 = 0; v1 < 5; v1++) {
            BagCursor_SetBattleCategoryPosition(v0, v1, param1->battleInfo->pocketCurrentPagePositions[v1], param1->battleInfo->pocketCurrentPages[v1]);
        }

        BagCursor_SetBattleCurrentCategory(v0, param1->currentBattlePocket);
    }

    param1->battleInfo->battleBagExited = 1;
    SysTask_FinishAndFreeParam(param0);

    return 1;
}

static u8 ov13_02226D94(BattleBagTask *param0)
{
    if (PaletteData_GetSelectedBuffersMask(param0->palette) != 0) {
        return 12;
    }

    switch (param0->catchTutorialState) {
    case 0:

        if (ov16_0226DFD4(param0->unk_38) == 1) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            param0->currentBattlePocket = ITEM_BATTLE_CATEGORY_POKE_BALLS;
            param0->queuedState = 12;
            ov13_0222880C(param0, 2, 0);
            param0->catchTutorialTickCount = 0;
            param0->catchTutorialState++;
            return 11;
        } else {
            param0->catchTutorialTickCount++;
        }
        break;
    case 1:
        ov13_02226C54(param0);
        param0->catchTutorialState++;
        break;
    case 2:
        if (ov16_0226DFD4(param0->unk_38) == 1) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            param0->battleInfo->pocketCurrentPagePositions[param0->currentBattlePocket] = 0;
            param0->queuedState = 12;
            ov13_0222880C(param0, 6, 0);
            param0->catchTutorialTickCount = 0;
            param0->catchTutorialState++;
            return 11;
        } else {
            param0->catchTutorialTickCount++;
        }
        break;
    case 3:
        ov13_02226C60(param0);
        param0->catchTutorialState++;
        break;
    case 4:
        if (ov16_0226DFD4(param0->unk_38) == 1) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            param0->battleInfo->selectedBattleBagItem = GetBattleBagItem(param0, param0->battleInfo->pocketCurrentPagePositions[param0->currentBattlePocket]);
            param0->battleInfo->selectedBattleBagPocket = param0->currentBattlePocket;
            ov13_0222880C(param0, 15, 0);
            return ov13_02226A5C(param0);
        } else {
            param0->catchTutorialTickCount++;
        }
        break;
    }

    return 12;
}

static void ov13_02226ED0(BattleBagTask *param0)
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

        Bg_InitFromTemplate(param0->background, 6, &v1, 0);
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

        Bg_InitFromTemplate(param0->background, 5, &v2, 0);
        Bg_ClearTilemap(param0->background, 5);
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

        Bg_InitFromTemplate(param0->background, 4, &v3, 0);
        Bg_ClearTilemap(param0->background, 4);
    }

    Bg_ClearTilesRange(5, 32, 0, param0->battleInfo->heapID);
    Bg_ClearTilesRange(4, 32, 0, param0->battleInfo->heapID);
    Bg_ScheduleTilemapTransfer(param0->background, 5);
    Bg_ScheduleTilemapTransfer(param0->background, 4);
}

static void ov13_02226F9C(BgConfig *param0)
{
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_OBJ, 0);
    Bg_FreeTilemapBuffer(param0, 4);
    Bg_FreeTilemapBuffer(param0, 5);
    Bg_FreeTilemapBuffer(param0, 6);
}

static void ov13_02226FC4(BattleBagTask *param0)
{
    NARC *v0 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__B_BAG_GRA, param0->battleInfo->heapID);

    Graphics_LoadTilesToBgLayerFromOpenNARC(v0, 2, param0->background, 6, 0, 0, 0, param0->battleInfo->heapID);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v0, 0, param0->background, 6, 0, 0, 0, param0->battleInfo->heapID);

    {
        NNSG2dScreenData *v1;
        void *v2;
        u16 *v3;

        v2 = NARC_AllocAndReadWholeMember(v0, 1, param0->battleInfo->heapID);
        NNS_G2dGetUnpackedScreenData(v2, &v1);
        v3 = (u16 *)v1->rawData;
        ov13_02228128(param0, v3);
        Heap_FreeToHeap(v2);
    }

    NARC_dtor(v0);
    PaletteData_LoadBufferFromFileStart(param0->palette, 77, 3, param0->battleInfo->heapID, 1, 0x20 * 12, 0);
    PaletteData_LoadBufferFromFileStart(param0->palette, 14, 7, param0->battleInfo->heapID, 1, 0x20, 15 * 16);

    {
        int v4 = ov16_0223EDE0(param0->battleInfo->battleSystem);

        Graphics_LoadTilesToBgLayer(38, GetMessageBoxTilesNARCMember(v4), param0->background, 4, 1024 - (18 + 12), 0, 0, param0->battleInfo->heapID);
        PaletteData_LoadBufferFromFileStart(param0->palette, 38, GetMessageBoxPaletteNARCMember(v4), param0->battleInfo->heapID, 1, 0x20, 14 * 16);
    }
}

static void ov13_022270B8(BattleBagTask *param0)
{
    param0->messageLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0002, param0->battleInfo->heapID);
    param0->unk_0C = sub_0200C440(15, 14, 0, param0->battleInfo->heapID);
    param0->stringTemplate = StringTemplate_Default(param0->battleInfo->heapID);
    param0->strbuf = Strbuf_Init(512, param0->battleInfo->heapID);
}

static void ov13_022270F8(BattleBagTask *param0)
{
    MessageLoader_Free(param0->messageLoader);
    sub_0200C560(param0->unk_0C);
    StringTemplate_Free(param0->stringTemplate);
    Strbuf_Free(param0->strbuf);
}

static void ov13_02227118(BattleBagTask *param0, u8 param1)
{
    switch (param1) {
    case 0:
        Bg_ScheduleScroll(param0->background, 6, 0, 0);
        Bg_ScheduleScroll(param0->background, 6, 3, 0);
        break;
    case 1:
        Bg_ScheduleScroll(param0->background, 6, 0, 256);
        Bg_ScheduleScroll(param0->background, 6, 3, 0);
        break;
    case 2:
        Bg_ScheduleScroll(param0->background, 6, 0, 0);
        Bg_ScheduleScroll(param0->background, 6, 3, 256);
        break;
    }
}

static void ov13_0222717C(BattleBagTask *param0, u8 param1)
{
    if (param1 != 2) {
        return;
    }

    Bg_ChangeTilemapRectPalette(param0->background, 6, 2, 35, 28, 4, 8 + param0->currentBattlePocket);
    Bg_ChangeTilemapRectPalette(param0->background, 6, 2, 40, 28, 8, 8 + param0->currentBattlePocket);
}

static void ov13_022271D0(BattleBagTask *param0, u8 param1)
{
    ov13_0222717C(param0, param1);
    ov13_02227118(param0, param1);

    Bg_ScheduleFillTilemap(param0->background, 4, 0);
    Bg_ScheduleFillTilemap(param0->background, 5, 0);

    ov13_02227324(param0);
    ov13_022272AC(param0, param1);
    ov13_02227350(param0, param1);
    ov13_02228924(param0, param1);
    ov13_02228008(param0, param1);
    ov13_022280F0(param0, param1);

    param0->currentScreen = param1;

    ov13_02227E68(param0, param0->currentScreen);
}

static int ov13_02227238(BattleBagTask *param0, const TouchScreenRect *rect)
{
    int v0 = TouchScreen_CheckRectanglePressed(rect);
    return v0;
}

int GetSelectedPartySlot(BattleBagTask *param0)
{
    int v0 = BattleContext_Get(param0->battleInfo->battleSystem, BattleSystem_Context(param0->battleInfo->battleSystem), 2, param0->battleInfo->battler);
    return v0;
}

static void ov13_02227260(BattleSystem *battleSys, u16 item, u16 category, u32 heapID)
{
    Bag_TryRemoveItem(BattleSystem_Bag(battleSys), item, 1, heapID);
    Bag_SetLastBattleItemUsed(BattleSystem_BagCursor(battleSys), item, category);
}
