#include "unk_02083370.h"

#include <nitro.h>
#include <string.h>

#include "generated/items.h"

#include "struct_defs/struct_0207F248.h"
#include "struct_defs/struct_020831B4.h"
#include "struct_defs/struct_02083D1C.h"

#include "field/field_system.h"
#include "overlay118/ov118_021D0D80.h"

#include "bag.h"
#include "bg_window.h"
#include "field_move_tasks.h"
#include "font.h"
#include "heap.h"
#include "menu.h"
#include "message.h"
#include "party.h"
#include "pokemon.h"
#include "render_window.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_system.h"
#include "string_list.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "unk_0207E0B8.h"
#include "unk_020819DC.h"
#include "unk_02082C2C.h"
#include "unk_02097624.h"

static void sub_02083AD0(GameWindowLayout *param0, int *param1);
static void sub_0208472C(GameWindowLayout *param0, int *param1);
static void sub_02084808(GameWindowLayout *param0, int *param1);
static void sub_02083E8C(GameWindowLayout *param0, u8 param1);
static void sub_02083FDC(GameWindowLayout *param0, u8 param1, u8 param2);
static void sub_02084134(GameWindowLayout *param0);
static void sub_02084420(GameWindowLayout *param0, u8 param1);
static void sub_020848A8(GameWindowLayout *param0, int *param1);
static void sub_020848C0(GameWindowLayout *param0, int *param1);
static void sub_020848D8(GameWindowLayout *param0, int *param1);
static void sub_020848F0(GameWindowLayout *param0, int *param1);
static void sub_02084908(GameWindowLayout *param0, int *param1);
static void sub_02084920(GameWindowLayout *param0, int *param1);
static void sub_02084938(GameWindowLayout *param0, int *param1);
static void sub_02084950(GameWindowLayout *param0, int *param1);
static void sub_02084968(GameWindowLayout *param0, int *param1);
static void sub_02084980(GameWindowLayout *param0, int *param1);
static void sub_02084998(GameWindowLayout *param0, int *param1);
static void sub_020849B0(GameWindowLayout *param0, int *param1);
static void sub_020849C8(GameWindowLayout *param0, int *param1);
static void sub_020849E0(GameWindowLayout *param0, int *param1);
static void sub_020849FC(GameWindowLayout *param0, int *param1);
static int sub_02084A18(GameWindowLayout *param0);
static void sub_02084760(GameWindowLayout *param0, int *param1);
static void sub_020833BC(GameWindowLayout *param0, int *param1);
static void sub_0208347C(GameWindowLayout *param0, int *param1);
static void sub_020834B0(GameWindowLayout *param0, int *param1);
static void sub_02083700(GameWindowLayout *param0, int *param1);
static void sub_020837C0(GameWindowLayout *param0, int *param1);
static void sub_020837F4(GameWindowLayout *param0, int *param1);
static int sub_0208384C(void *param0);
static int sub_020838C4(void *param0);
static int sub_020838F4(void *param0);
static int sub_02083990(void *param0);
static void sub_020846CC(GameWindowLayout *param0, int *param1);
static void sub_020844B0(GameWindowLayout *param0, int *param1);
static void sub_020845E8(GameWindowLayout *param0, int *param1);
static void sub_020846FC(GameWindowLayout *param0, int *param1);
static void sub_020839FC(GameWindowLayout *param0, int *param1);

static const u32 Unk_020F2458[] = {
    (const u32)sub_02083AD0,
    (const u32)sub_0208472C,
    (const u32)sub_020833BC,
    (const u32)sub_0208347C,
    (const u32)sub_020834B0,
    (const u32)sub_02083700,
    (const u32)sub_020837C0,
    (const u32)sub_020837F4,
    (const u32)sub_020839FC,
    0xFFFFFFFE,
    0xFFFFFFFE,
    (const u32)sub_020844B0,
    (const u32)sub_020845E8,
    (const u32)sub_020846CC,
    (const u32)sub_02084760,
    (const u32)sub_020846FC,
    (const u32)sub_020848A8,
    (const u32)sub_02084938,
    (const u32)sub_020848F0,
    (const u32)sub_020848D8,
    (const u32)sub_02084908,
    (const u32)sub_020848C0,
    (const u32)sub_02084950,
    (const u32)sub_02084920,
    (const u32)sub_02084968,
    (const u32)sub_02084980,
    (const u32)sub_02084998,
    (const u32)sub_020849B0,
    (const u32)sub_020849C8,
    (const u32)sub_020849E0,
    (const u32)sub_020849FC,
    0xFFFFFFFE
};

u32 sub_02083370(u8 param0)
{
    return Unk_020F2458[param0];
}

void sub_0208337C(GameWindowLayout *param0)
{
    Window_EraseStandardFrame(&param0->unk_254[0], 1);
    Window_ClearAndScheduleCopyToVRAM(&param0->unk_254[0]);
    Menu_Free(param0->unk_700, NULL);
    StringList_Free(param0->unk_6FC);
    Window_Remove(&param0->unk_254[0]);
}

static void sub_020833BC(GameWindowLayout *param0, int *param1)
{
    MenuTemplate v0;

    sub_0208337C(param0);
    sub_020826F4(param0, 38, 0);

    param0->unk_6FC = StringList_New(3, 12);

    StringList_AddFromStrbuf(param0->unk_6FC, param0->unk_6AC[3], sub_02083370(3));
    StringList_AddFromStrbuf(param0->unk_6FC, param0->unk_6AC[4], sub_02083370(4));
    StringList_AddFromStrbuf(param0->unk_6FC, param0->unk_6AC[9], sub_02083370(9));

    v0.choices = param0->unk_6FC;
    v0.window = &param0->unk_04[35];
    v0.fontID = FONT_SYSTEM;
    v0.xSize = 1;
    v0.ySize = 3;
    v0.lineSpacing = 0;
    v0.suppressCursor = FALSE;
    v0.loopAround = FALSE;

    Window_DrawStandardFrame(&param0->unk_04[35], 1, 1, 14);

    param0->unk_700 = Menu_NewAndCopyToVRAM(&v0, 8, 0, 0, 12, PAD_BUTTON_B);
    *param1 = 15;
}

static void sub_0208347C(GameWindowLayout *param0, int *param1)
{
    Menu_Free(param0->unk_700, NULL);
    StringList_Free(param0->unk_6FC);

    param0->partyManagementData->menuSelectionResult = 3;
    *param1 = 32;
}

static void sub_020834B0(GameWindowLayout *param0, int *param1)
{
    Pokemon *mon;
    int v1;
    int v2 = 17;
    FieldSystem *fieldSystem;

    Window_EraseStandardFrame(&param0->unk_04[35], 1);
    Menu_Free(param0->unk_700, NULL);
    StringList_Free(param0->unk_6FC);

    fieldSystem = param0->partyManagementData->fieldSystem;

    if (param0->unk_704[param0->partySlot].unk_0C == 0) {
        mon = Party_GetPokemonBySlotIndex(param0->partyManagementData->party, param0->partySlot);
        MessageLoader_GetStrbuf(param0->messageLoader, 81, param0->unk_6A8);
        StringTemplate_SetNickname(param0->template, 0, Pokemon_GetBoxPokemon(mon));
        StringTemplate_Format(param0->template, param0->unk_6A4, param0->unk_6A8);
    } else if (Bag_TryAddItem(param0->partyManagementData->bag, param0->unk_704[param0->partySlot].unk_0C, 1, HEAP_ID_12) == TRUE) {
        u32 v4;

        mon = Party_GetPokemonBySlotIndex(param0->partyManagementData->party, param0->partySlot);
        v4 = 0;

        Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &v4);
        Pokemon_SetArceusForm(mon);

        if ((fieldSystem == NULL) || (fieldSystem->location->mapId < 573) || (fieldSystem->location->mapId > 583)) {
            v1 = Pokemon_SetGiratinaFormByHeldItem(mon);

            if ((param0->unk_704[param0->partySlot].unk_0C == ITEM_GRISEOUS_ORB) && (v1 == 0)) {
                v2 = 18;
            }
        }

        MessageLoader_GetStrbuf(param0->messageLoader, 82, param0->unk_6A8);
        StringTemplate_SetNickname(param0->template, 0, Pokemon_GetBoxPokemon(mon));
        StringTemplate_SetItemName(param0->template, 1, param0->unk_704[param0->partySlot].unk_0C);
        StringTemplate_Format(param0->template, param0->unk_6A4, param0->unk_6A8);

        param0->unk_704[param0->partySlot].unk_0C = 0;

        sub_02083040(param0, param0->partySlot, param0->unk_704[param0->partySlot].unk_0C);
    } else {
        MessageLoader_GetStrbuf(param0->messageLoader, 83, param0->unk_6A4);
    }

    Window_DrawMessageBoxWithScrollCursor(&param0->unk_04[34], 1, (1 + 9), 15);
    Window_FillTilemap(&param0->unk_04[34], 15);
    sub_0208274C(param0);

    *param1 = v2;
}

int sub_02083658(GameWindowLayout *param0)
{
    if (Text_IsPrinterActive(param0->textPrinterID) == 0) {
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Window_EraseMessageBox(&param0->unk_04[34], 1);
            sub_020826E0(param0, 29, 1);
            Sprite_SetExplicitPalette2(param0->unk_5B0[6], 0);
            return 1;
        }
    }

    return 17;
}

int sub_020836A8(GameWindowLayout *param0)
{
    if (Text_IsPrinterActive(param0->textPrinterID) == 0) {
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Window_EraseMessageBox(&param0->unk_04[34], 1);
            LoadOverlay118(param0);
            return 19;
        }
    }

    return 18;
}

int sub_020836E4(GameWindowLayout *param0)
{
    if (ov118_021D0DBC(param0) == 1) {
        UnloadOverlay118(param0);
        return 17;
    }

    return 19;
}

static void sub_02083700(GameWindowLayout *param0, int *param1)
{
    MenuTemplate v0;

    sub_0208337C(param0);
    sub_020826F4(param0, 39, 0);

    param0->unk_6FC = StringList_New(3, 12);

    StringList_AddFromStrbuf(param0->unk_6FC, param0->unk_6AC[6], sub_02083370(6));
    StringList_AddFromStrbuf(param0->unk_6FC, param0->unk_6AC[7], sub_02083370(7));
    StringList_AddFromStrbuf(param0->unk_6FC, param0->unk_6AC[9], sub_02083370(9));

    v0.choices = param0->unk_6FC;
    v0.window = &param0->unk_04[35];
    v0.fontID = FONT_SYSTEM;
    v0.xSize = 1;
    v0.ySize = 3;
    v0.lineSpacing = 0;
    v0.suppressCursor = FALSE;
    v0.loopAround = FALSE;

    Window_DrawStandardFrame(&param0->unk_04[35], 1, 1, 14);

    param0->unk_700 = Menu_NewAndCopyToVRAM(&v0, 8, 0, 0, 12, PAD_BUTTON_B);
    *param1 = 15;
}

static void sub_020837C0(GameWindowLayout *param0, int *param1)
{
    Menu_Free(param0->unk_700, NULL);
    StringList_Free(param0->unk_6FC);

    param0->partyManagementData->menuSelectionResult = 7;
    *param1 = 32;
}

static void sub_020837F4(GameWindowLayout *param0, int *param1)
{
    Window_EraseStandardFrame(&param0->unk_04[35], 1);
    Menu_Free(param0->unk_700, NULL);
    StringList_Free(param0->unk_6FC);
    sub_02082708(param0, 43, 1);

    param0->unk_B04.unk_00 = sub_0208384C;
    param0->unk_B04.unk_04 = sub_020838C4;
    param0->unk_B0E = 26;
    *param1 = 24;
}

static int sub_0208384C(void *param0)
{
    GameWindowLayout *v0 = param0;
    Pokemon *v1;

    v0 = param0;
    v1 = Party_GetPokemonBySlotIndex(v0->partyManagementData->party, v0->partySlot);

    if (sub_02097788(v0->partyManagementData->mailbox, v1, HEAP_ID_12) != 0xFFFFFFFF) {
        v0->unk_704[v0->partySlot].unk_0C = 0;
        sub_02083040(v0, v0->partySlot, v0->unk_704[v0->partySlot].unk_0C);
        sub_02082708(v0, 46, 0);
    } else {
        sub_02082708(v0, 50, 0);
    }

    v0->unk_B0E = 20;

    return 24;
}

static int sub_020838C4(void *param0)
{
    GameWindowLayout *v0 = param0;

    sub_02082708(v0, 47, 0);

    v0->unk_B04.unk_00 = sub_020838F4;
    v0->unk_B04.unk_04 = sub_02083990;
    v0->unk_B0E = 26;

    return 24;
}

static int sub_020838F4(void *param0)
{
    GameWindowLayout *v0 = param0;

    if (Bag_TryAddItem(v0->partyManagementData->bag, v0->unk_704[v0->partySlot].unk_0C, 1, HEAP_ID_12) == TRUE) {
        Pokemon *mon;
        u32 item;

        mon = Party_GetPokemonBySlotIndex(v0->partyManagementData->party, v0->partySlot);
        item = 0;

        Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &item);
        Pokemon_SetArceusForm(mon);
        Pokemon_SetGiratinaFormByHeldItem(mon);

        v0->unk_704[v0->partySlot].unk_0C = 0;

        sub_02083040(v0, v0->partySlot, v0->unk_704[v0->partySlot].unk_0C);
        sub_02082708(v0, 51, 0);
    } else {
        sub_02082708(v0, 83, 0);
    }

    v0->unk_B0E = 20;

    return 24;
}

static int sub_02083990(void *param0)
{
    GameWindowLayout *v0 = param0;

    Window_EraseMessageBox(&v0->unk_04[34], 1);
    sub_020826E0(v0, 29, 1);
    Sprite_SetExplicitPalette2(v0->unk_5B0[6], 0);

    return 1;
}

int sub_020839BC(GameWindowLayout *param0)
{
    if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        Window_EraseMessageBox(&param0->unk_04[34], 1);
        sub_020826E0(param0, 29, 1);
        Sprite_SetExplicitPalette2(param0->unk_5B0[6], 0);
        return 1;
    }

    return 20;
}

static void sub_020839FC(GameWindowLayout *param0, int *param1)
{
    if (param0->unk_704[param0->partySlot].unk_12 == 0) {
        Menu_Free(param0->unk_700, NULL);
        StringList_Free(param0->unk_6FC);
        param0->partyManagementData->menuSelectionResult = 0;
        *param1 = 32;
        return;
    }

    sub_0208337C(param0);
    sub_02082708(param0, 195, 1);

    param0->unk_B04.unk_00 = sub_02083A78;
    param0->unk_B04.unk_04 = sub_02083AA4;
    param0->unk_B0E = 26;
    *param1 = 24;
}

int sub_02083A78(void *param0)
{
    GameWindowLayout *v0 = param0;
    Pokemon *v1 = Party_GetPokemonBySlotIndex(v0->partyManagementData->party, v0->partySlot);

    sub_0207893C(v1);

    v0->partyManagementData->menuSelectionResult = 0;
    return 32;
}

int sub_02083AA4(void *param0)
{
    GameWindowLayout *v0 = param0;

    Window_EraseMessageBox(&v0->unk_04[34], 1);
    sub_020826E0(v0, 29, 1);
    Sprite_SetExplicitPalette2(v0->unk_5B0[6], 0);

    return 1;
}

static void sub_02083AD0(GameWindowLayout *param0, int *param1)
{
    s16 v0, v1;

    param0->unk_B0F_6 = 1;
    param0->unk_B0F_0 = param0->partySlot;

    Sprite_SetExplicitPalette2(param0->unk_5B0[6], 0);
    Sprite_GetPositionXY(param0->unk_5B0[6], &v0, &v1);
    Sprite_SetPositionXY(param0->unk_5B0[7], v0, v1);
    Sprite_SetAnim(param0->unk_5B0[7], sub_020805D0(param0->partyManagementData->unk_21, param0->unk_B0F_0) + 2);
    Sprite_SetDrawFlag(param0->unk_5B0[7], 1);
    sub_0207F8F8(param0, param0->unk_B0F_0);
    Window_EraseMessageBox(&param0->unk_04[33], 1);
    sub_0208337C(param0);
    sub_020826E0(param0, 30, 1);

    *param1 = 28;
}

void sub_02083B88(GameWindowLayout *param0)
{
    param0->unk_B0F_6 = 0;
    Sprite_SetDrawFlag(param0->unk_5B0[7], 0);

    if (param0->partySlot < 6) {
        sub_0207F8F8(param0, param0->partySlot);
    }

    sub_0207F8F8(param0, param0->unk_B0F_0);
    sub_020826E0(param0, 29, 1);
}

void sub_02083BD4(GameWindowLayout *param0)
{
    u16 *v0;
    u16 *v1;
    s8 v2, v3, v4, v5;
    u16 v6;

    param0->unk_7F8.unk_300[0] = param0->partySlot;
    param0->unk_7F8.unk_300[1] = param0->unk_B0F_0;
    param0->unk_7F8.unk_304 = 1;
    param0->unk_7F8.unk_306 = 0;
    param0->unk_7F8.unk_305 = 0;

    if (param0->unk_7F8.unk_300[0] & 1) {
        param0->unk_7F8.unk_302[0] = 1;
    } else {
        param0->unk_7F8.unk_302[0] = 0;
    }

    if (param0->unk_7F8.unk_300[1] & 1) {
        param0->unk_7F8.unk_302[1] = 1;
    } else {
        param0->unk_7F8.unk_302[1] = 0;
    }

    v0 = (u16 *)Bg_GetTilemapBuffer(param0->unk_00, 2);
    v1 = (u16 *)Bg_GetTilemapBuffer(param0->unk_00, 1);

    v2 = param0->unk_704[param0->unk_7F8.unk_300[0]].unk_14;
    v3 = param0->unk_704[param0->unk_7F8.unk_300[0]].unk_15;
    v4 = param0->unk_704[param0->unk_7F8.unk_300[1]].unk_14;
    v5 = param0->unk_704[param0->unk_7F8.unk_300[1]].unk_15;

    for (v6 = 0; v6 < 6; v6++) {
        memcpy(&param0->unk_7F8.unk_00[0][v6 * 16], &v0[v2 + (v3 + v6) * 32], 16 * 2);
        memcpy(&param0->unk_7F8.unk_180[0][v6 * 16], &v1[v2 + (v3 + v6) * 32], 16 * 2);
        memcpy(&param0->unk_7F8.unk_00[1][v6 * 16], &v0[v4 + (v5 + v6) * 32], 16 * 2);
        memcpy(&param0->unk_7F8.unk_180[1][v6 * 16], &v1[v4 + (v5 + v6) * 32], 16 * 2);
    }

    Sprite_SetDrawFlag(param0->unk_5B0[6], 0);
    Sprite_SetDrawFlag(param0->unk_5B0[7], 0);
}

BOOL sub_02083D1C(GameWindowLayout *param0)
{
    DualArrayShortData *v0 = &param0->unk_7F8;

    switch (v0->unk_305) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_POKELIST_001);
        v0->unk_305 = 1;
        break;
    case 1:
        v0->unk_306 += 1;

        sub_02083E8C(param0, 0);
        sub_02083E8C(param0, 1);
        sub_02083FDC(param0, 0, v0->unk_302[0]);
        sub_02083FDC(param0, 1, v0->unk_302[1]);
        Bg_ScheduleTilemapTransfer(param0->unk_00, 2);
        Bg_ScheduleTilemapTransfer(param0->unk_00, 1);

        if (v0->unk_306 == 16) {
            v0->unk_305 = 2;
        }
        break;
    case 2:
        sub_02084134(param0);
        Sound_PlayEffect(SEQ_SE_DP_POKELIST_001);
        v0->unk_305 = 3;
        break;
    case 3:
        v0->unk_306 -= 1;

        sub_02083E8C(param0, 0);
        sub_02083E8C(param0, 1);
        sub_02083FDC(param0, 0, v0->unk_302[0] ^ 1);
        sub_02083FDC(param0, 1, v0->unk_302[1] ^ 1);
        Bg_ScheduleTilemapTransfer(param0->unk_00, 2);
        Bg_ScheduleTilemapTransfer(param0->unk_00, 1);

        if (v0->unk_306 == 0) {
            v0->unk_305 = 4;
        }

        break;

    case 4:
        Party_SwapSlots(param0->partyManagementData->party, v0->unk_300[0], v0->unk_300[1]);
        Sprite_SetDrawFlag(param0->unk_5B0[6], 1);

        v0->unk_304 = 0;
        param0->unk_B0F_6 = 0;

        sub_0207F8F8(param0, param0->partySlot);
        sub_0207F8F8(param0, param0->unk_B0F_0);
        sub_020826E0(param0, 29, 0);

        return 1;
    }

    return 0;
}

static void sub_02083E8C(GameWindowLayout *param0, u8 param1)
{
    DualArrayShortData *v0;
    s8 v1, v2;
    u8 v3;

    v0 = &param0->unk_7F8;
    v1 = param0->unk_704[v0->unk_300[param1]].unk_14;
    v2 = param0->unk_704[v0->unk_300[param1]].unk_15;

    Bg_FillTilemapRect(param0->unk_00, 2, 0, v1, v2, 16, 6, 16);
    Bg_FillTilemapRect(param0->unk_00, 1, 0, v1, v2, 16, 6, 16);

    if (v0->unk_302[param1] == 0) {
        Bg_CopyToTilemapRect(param0->unk_00, 2, v1, v2, 16 - v0->unk_306, 6, &v0->unk_00[param1], v0->unk_306, 0, 16, 6);
        Bg_CopyToTilemapRect(param0->unk_00, 1, v1, v2, 16 - v0->unk_306, 6, &v0->unk_180[param1], v0->unk_306, 0, 16, 6);
    } else {
        Bg_CopyToTilemapRect(param0->unk_00, 2, v1 + v0->unk_306, v2, 16 - v0->unk_306, 6, &v0->unk_00[param1], 0, 0, 16, 6);
        Bg_CopyToTilemapRect(param0->unk_00, 1, v1 + v0->unk_306, v2, 16 - v0->unk_306, 6, &v0->unk_180[param1], 0, 0, 16, 6);
    }
}

static void sub_02083FDC(GameWindowLayout *param0, u8 param1, u8 param2)
{
    DualArrayShortData *v0;
    s16 v1, v2;

    v0 = &param0->unk_7F8;

    Sprite_GetPositionXY(param0->unk_5B0[0 + v0->unk_300[param1]], &v1, &v2);

    if (param2 == 0) {
        param0->unk_704[v0->unk_300[param1]].unk_16 -= 8;
        param0->unk_704[v0->unk_300[param1]].unk_1A -= 8;
        param0->unk_704[v0->unk_300[param1]].unk_1E -= 8;
        v1 -= 8;
    } else {
        param0->unk_704[v0->unk_300[param1]].unk_16 += 8;
        param0->unk_704[v0->unk_300[param1]].unk_1A += 8;
        param0->unk_704[v0->unk_300[param1]].unk_1E += 8;
        v1 += 8;
    }

    Sprite_SetPositionXY(param0->unk_704[v0->unk_300[param1]].unk_24, param0->unk_704[v0->unk_300[param1]].unk_16, param0->unk_704[v0->unk_300[param1]].unk_18);
    Sprite_SetPositionXY(param0->unk_5B0[10 + v0->unk_300[param1]], param0->unk_704[v0->unk_300[param1]].unk_1A, param0->unk_704[v0->unk_300[param1]].unk_1C);
    Sprite_SetPositionXY(param0->unk_5B0[16 + v0->unk_300[param1]], param0->unk_704[v0->unk_300[param1]].unk_1E, param0->unk_704[v0->unk_300[param1]].unk_20);
    Sprite_SetPositionXY(param0->unk_5B0[22 + v0->unk_300[param1]], param0->unk_704[v0->unk_300[param1]].unk_1E + 8, param0->unk_704[v0->unk_300[param1]].unk_20);
    Sprite_SetPositionXY(param0->unk_5B0[0 + v0->unk_300[param1]], v1, v2);
}

static void sub_02084134(GameWindowLayout *param0)
{
    StrBufWrapper *v0;
    DualArrayShortData *v1;
    ManagedSprite *v2;
    s16 v3;

    v1 = &param0->unk_7F8;

    v0 = Heap_AllocFromHeap(HEAP_ID_12, sizeof(StrBufWrapper));
    *v0 = param0->unk_704[v1->unk_300[0]];

    param0->unk_704[v1->unk_300[0]] = param0->unk_704[v1->unk_300[1]];
    param0->unk_704[v1->unk_300[1]] = *v0;

    Heap_FreeToHeapExplicit(HEAP_ID_12, v0);

    v3 = param0->unk_704[v1->unk_300[0]].unk_16;
    param0->unk_704[v1->unk_300[0]].unk_16 = param0->unk_704[v1->unk_300[1]].unk_16;
    param0->unk_704[v1->unk_300[1]].unk_16 = v3;

    v3 = param0->unk_704[v1->unk_300[0]].unk_18;
    param0->unk_704[v1->unk_300[0]].unk_18 = param0->unk_704[v1->unk_300[1]].unk_18;
    param0->unk_704[v1->unk_300[1]].unk_18 = v3;

    v3 = param0->unk_704[v1->unk_300[0]].unk_1A;
    param0->unk_704[v1->unk_300[0]].unk_1A = param0->unk_704[v1->unk_300[1]].unk_1A;
    param0->unk_704[v1->unk_300[1]].unk_1A = v3;

    v3 = param0->unk_704[v1->unk_300[0]].unk_1C;
    param0->unk_704[v1->unk_300[0]].unk_1C = param0->unk_704[v1->unk_300[1]].unk_1C;
    param0->unk_704[v1->unk_300[1]].unk_1C = v3;

    v3 = param0->unk_704[v1->unk_300[0]].unk_1E;
    param0->unk_704[v1->unk_300[0]].unk_1E = param0->unk_704[v1->unk_300[1]].unk_1E;
    param0->unk_704[v1->unk_300[1]].unk_1E = v3;

    v3 = param0->unk_704[v1->unk_300[0]].unk_20;
    param0->unk_704[v1->unk_300[0]].unk_20 = param0->unk_704[v1->unk_300[1]].unk_20;
    param0->unk_704[v1->unk_300[1]].unk_20 = v3;

    v3 = param0->unk_704[v1->unk_300[0]].unk_14;
    param0->unk_704[v1->unk_300[0]].unk_14 = param0->unk_704[v1->unk_300[1]].unk_14;
    param0->unk_704[v1->unk_300[1]].unk_14 = v3;

    v3 = param0->unk_704[v1->unk_300[0]].unk_15;
    param0->unk_704[v1->unk_300[0]].unk_15 = param0->unk_704[v1->unk_300[1]].unk_15;
    param0->unk_704[v1->unk_300[1]].unk_15 = v3;

    sub_020821F8(param0, v1->unk_300[0]);
    sub_020821F8(param0, v1->unk_300[1]);
    sub_020822F4(param0, v1->unk_300[0]);
    sub_020822F4(param0, v1->unk_300[1]);

    sub_02084420(param0, 0);
    sub_02084420(param0, 1);

    sub_02083014(param0, v1->unk_300[0], param0->unk_704[v1->unk_300[0]].unk_0E_0);
    sub_02083014(param0, v1->unk_300[1], param0->unk_704[v1->unk_300[1]].unk_0E_0);

    sub_02083040(param0, v1->unk_300[0], param0->unk_704[v1->unk_300[0]].unk_0C);
    sub_02083040(param0, v1->unk_300[1], param0->unk_704[v1->unk_300[1]].unk_0C);

    sub_02083104(param0, v1->unk_300[0]);
    sub_02083104(param0, v1->unk_300[1]);
}

static void sub_02084420(GameWindowLayout *param0, u8 param1)
{
    DualArrayShortData *v0;
    const u16 *v1;
    u16 *v2;
    u16 v3;
    u16 v4;

    v0 = &param0->unk_7F8;
    v2 = v0->unk_00[param1];
    v1 = sub_0207F248(param0);

    if (param0->unk_704[v0->unk_300[param1]].unk_10 == 1) {
        for (v4 = 0; v4 < 9; v4++) {
            v3 = v2[3 * 16 + 6 + v4] & 0xf000;
            v2[3 * 16 + 6 + v4] = v3 | 0x17;
        }
    } else {
        for (v4 = 0; v4 < 9; v4++) {
            v3 = v2[3 * 16 + 6 + v4] & 0xf000;
            v2[3 * 16 + 6 + v4] = v3 | (v1[v4] & 0xfff);
        }
    }
}

static void sub_020844B0(GameWindowLayout *param0, int *param1)
{
    u8 v0;

    Window_EraseMessageBox(&param0->unk_04[33], 1);
    sub_0208337C(param0);

    for (v0 = 0; v0 < param0->partyManagementData->unk_32_4; v0++) {
        if (param0->partyManagementData->unk_2C[v0] != 0) {
            continue;
        }

        param0->partyManagementData->unk_2C[v0] = param0->partySlot + 1;

        sub_02082508(param0, param0->partySlot);
        sub_020826E0(param0, 34, 1);
        Sprite_SetExplicitPalette2(param0->unk_5B0[6], 0);

        if (v0 == param0->partyManagementData->unk_32_4 - 1) {
            sub_0207FD68(param0, 6);
        }

        *param1 = 1;
        return;
    }

    switch (param0->partyManagementData->unk_32_4) {
    case 1:
        sub_02082708(param0, 123, 1);
        break;
    case 2:
        sub_02082708(param0, 100, 1);
        break;
    case 3:
        sub_02082708(param0, 124, 1);
        break;
    case 4:
        sub_02082708(param0, 125, 1);
        break;
    case 5:
        sub_02082708(param0, 126, 1);
        break;
    }

    param0->unk_B0E = 23;
    *param1 = 24;
}

int sub_020845A8(GameWindowLayout *param0)
{
    if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        Window_EraseMessageBox(&param0->unk_04[34], 1);
        sub_020826E0(param0, 34, 1);
        Sprite_SetExplicitPalette2(param0->unk_5B0[6], 0);
        return 1;
    }

    return 23;
}

static void sub_020845E8(GameWindowLayout *param0, int *param1)
{
    u8 v0;

    for (v0 = 0; v0 < param0->partyManagementData->unk_32_4; v0++) {
        if (param0->partyManagementData->unk_2C[v0] == param0->partySlot + 1) {
            param0->partyManagementData->unk_2C[v0] = 0;

            for (v0 = v0; v0 < param0->partyManagementData->unk_32_4 - 1; v0++) {
                param0->partyManagementData->unk_2C[v0] = param0->partyManagementData->unk_2C[v0 + 1];
                param0->partyManagementData->unk_2C[v0 + 1] = 0;
            }
            break;
        }
    }

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->unk_704[v0].unk_29 == 0) {
            continue;
        }

        sub_02082508(param0, v0);
    }

    Window_EraseMessageBox(&param0->unk_04[33], 1);
    sub_0208337C(param0);
    sub_020826E0(param0, 29, 1);
    Sprite_SetExplicitPalette2(param0->unk_5B0[6], 0);

    *param1 = 1;
}

static void sub_020846CC(GameWindowLayout *param0, int *param1)
{
    param0->partyManagementData->menuSelectionResult = 0;

    Menu_Free(param0->unk_700, NULL);
    StringList_Free(param0->unk_6FC);

    *param1 = 32;
}

static void sub_020846FC(GameWindowLayout *param0, int *param1)
{
    param0->partyManagementData->menuSelectionResult = 0;

    Menu_Free(param0->unk_700, NULL);
    StringList_Free(param0->unk_6FC);

    *param1 = 32;
}

static void sub_0208472C(GameWindowLayout *param0, int *param1)
{
    param0->partyManagementData->menuSelectionResult = 1;

    Menu_Free(param0->unk_700, NULL);
    StringList_Free(param0->unk_6FC);

    *param1 = 32;
}

static void sub_02084760(GameWindowLayout *param0, int *param1)
{
    sub_0208337C(param0);
    Window_EraseMessageBox(&param0->unk_04[33], 1);

    *param1 = sub_02084780(param0);
}

int sub_02084780(GameWindowLayout *param0)
{
    Pokemon *v0 = Party_GetPokemonBySlotIndex(param0->partyManagementData->party, param0->partySlot);

    if (Pokemon_GetValue(v0, MON_DATA_BALL_CAPSULE_ID, NULL) == 0) {
        MessageLoader_GetStrbuf(param0->messageLoader, 129, param0->unk_6A4);
        Sprite_SetDrawFlag(param0->unk_5B0[22 + param0->partySlot], 1);
    } else {
        MessageLoader_GetStrbuf(param0->messageLoader, 130, param0->unk_6A4);
        param0->partySlot = 7;
    }

    sub_02082708(param0, 0xffffffff, 1);

    param0->partyManagementData->menuSelectionResult = 0;
    param0->unk_B0E = 25;

    return 24;
}

static void sub_02084808(GameWindowLayout *windowLayout, int *param1)
{
    FieldMoveErrContext fieldMoveErrorCtx;
    u32 v1;
    u32 v2;

    fieldMoveErrorCtx = (FieldMoveErrContext)FieldMove_GetTaskOrError(FIELD_MOVE_ERROR, windowLayout->partyManagementData->menuSelectionResult - 11);

    if (fieldMoveErrorCtx != NULL) {
        v1 = fieldMoveErrorCtx(windowLayout->partyManagementData->fieldMoveContext);
    } else {
        v1 = 1;
    }

    switch (v1) {
    case 0:
        Menu_Free(windowLayout->unk_700, NULL);
        StringList_Free(windowLayout->unk_6FC);
        *param1 = 32;
        return;
    case 1:
        v2 = 104;
        break;
    case 2:
        v2 = 76;
        break;
    case 3:
        v2 = 196;
        break;
    case 4:
        v2 = 102;
        break;
    }

    Window_EraseMessageBox(&windowLayout->unk_04[33], 1);
    sub_0208337C(windowLayout);
    sub_02082708(windowLayout, v2, 1);

    windowLayout->unk_B0E = 3;
    *param1 = 24;
}

static void sub_020848A8(GameWindowLayout *param0, int *param1)
{
    param0->partyManagementData->menuSelectionResult = 11;
    sub_02084808(param0, param1);
}

static void sub_020848C0(GameWindowLayout *param0, int *param1)
{
    param0->partyManagementData->menuSelectionResult = 16;
    sub_02084808(param0, param1);
}

static void sub_020848D8(GameWindowLayout *param0, int *param1)
{
    param0->partyManagementData->menuSelectionResult = 14;
    sub_02084808(param0, param1);
}

static void sub_020848F0(GameWindowLayout *param0, int *param1)
{
    param0->partyManagementData->menuSelectionResult = 13;
    sub_02084808(param0, param1);
}

static void sub_02084908(GameWindowLayout *param0, int *param1)
{
    param0->partyManagementData->menuSelectionResult = 15;
    sub_02084808(param0, param1);
}

static void sub_02084920(GameWindowLayout *param0, int *param1)
{
    param0->partyManagementData->menuSelectionResult = 18;
    sub_02084808(param0, param1);
}

static void sub_02084938(GameWindowLayout *param0, int *param1)
{
    param0->partyManagementData->menuSelectionResult = 12;
    sub_02084808(param0, param1);
}

static void sub_02084950(GameWindowLayout *param0, int *param1)
{
    param0->partyManagementData->menuSelectionResult = 17;
    sub_02084808(param0, param1);
}

static void sub_02084968(GameWindowLayout *param0, int *param1)
{
    param0->partyManagementData->menuSelectionResult = 19;
    sub_02084808(param0, param1);
}

static void sub_02084980(GameWindowLayout *param0, int *param1)
{
    param0->partyManagementData->menuSelectionResult = 20;
    sub_02084808(param0, param1);
}

static void sub_02084998(GameWindowLayout *param0, int *param1)
{
    param0->partyManagementData->menuSelectionResult = 21;
    sub_02084808(param0, param1);
}

static void sub_020849B0(GameWindowLayout *param0, int *param1)
{
    param0->partyManagementData->menuSelectionResult = 22;
    sub_02084808(param0, param1);
}

static void sub_020849C8(GameWindowLayout *param0, int *param1)
{
    param0->partyManagementData->menuSelectionResult = 23;
    sub_02084808(param0, param1);
}

static void sub_020849E0(GameWindowLayout *param0, int *param1)
{
    *param1 = sub_02084A18(param0);

    if (*param1 == 30) {
        param0->monStats[3] = 24 - 11;
    }
}

static void sub_020849FC(GameWindowLayout *param0, int *param1)
{
    *param1 = sub_02084A18(param0);

    if (*param1 == 30) {
        param0->monStats[3] = 25 - 11;
    }
}

static int sub_02084A18(GameWindowLayout *param0)
{
    Window_EraseMessageBox(&param0->unk_04[33], 1);
    sub_0208337C(param0);

    param0->monStats[0] = param0->unk_704[param0->partySlot].maxHP / 5;

    if (param0->unk_704[param0->partySlot].curHP <= param0->monStats[0]) {
        sub_02082708(param0, 138, 1);
        param0->unk_B0E = 3;
        return 24;
    } else {
        s16 v0, v1;

        param0->unk_B0F_6 = 1;
        param0->unk_B0F_0 = param0->partySlot;

        Sprite_SetExplicitPalette2(param0->unk_5B0[6], 0);
        Sprite_GetPositionXY(param0->unk_5B0[6], &v0, &v1);
        Sprite_SetPositionXY(param0->unk_5B0[7], v0, v1);
        Sprite_SetAnim(param0->unk_5B0[7], sub_020805D0(param0->partyManagementData->unk_21, param0->unk_B0F_0) + 2);
        Sprite_SetDrawFlag(param0->unk_5B0[7], 1);
        sub_0207F8F8(param0, param0->unk_B0F_0);
        sub_020826E0(param0, 36, 1);

        param0->monStats[1] = 0;
        return 30;
    }
}

int sub_02084B34(GameWindowLayout *param0)
{
    if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        Window_EraseMessageBox(&param0->unk_04[34], 1);
        sub_020826E0(param0, 29, 1);
        Sprite_SetExplicitPalette2(param0->unk_5B0[6], 0);
        return 1;
    }

    return 3;
}
