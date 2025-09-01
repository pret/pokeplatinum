#include "applications/party_menu/windows.h"

#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"
#include "constants/pokemon.h"
#include "generated/genders.h"
#include "generated/species.h"
#include "generated/string_padding_mode.h"

#include "applications/party_menu/defs.h"
#include "applications/party_menu/main.h"
#include "applications/party_menu/unk_02083370.h"
#include "applications/party_menu/unk_02084B70.h"
#include "applications/pokemon_summary_screen/main.h"

#include "bg_window.h"
#include "font.h"
#include "font_special_chars.h"
#include "game_options.h"
#include "menu.h"
#include "message.h"
#include "party.h"
#include "pokemon.h"
#include "render_text.h"
#include "render_window.h"
#include "sound_playback.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "text.h"
#include "unk_0208C098.h"

#include "res/text/bank/party_menu.h"

#define EVO_COMMENT_ABLE   0
#define EVO_COMMENT_UNABLE 1

#define MOVE_COMMENT_ABLE    0
#define MOVE_COMMENT_UNABLE  1
#define MOVE_COMMENT_LEARNED 2

#define SELECTION_COMMENT_NOT_ENTERED 7
#define SELECTION_COMMENT_BANNED      8

static void AddPartyMemberWindows(BgConfig *bgConfig, Window *target, const WindowTemplate *source);
static void PrintMemberEvoComment(PartyMenuApplication *application, u8 slot, u8 which);
static void PrintMemberMoveComment(PartyMenuApplication *application, u8 slot, u8 which);
static void PrintMemberContestComment(PartyMenuApplication *application, u8 slot, u8 isEligible);
static void PrintMemberSelectionComment(PartyMenuApplication *application, u8 slot, u8 comment);
static BOOL sub_0208279C(TextPrinterTemplate *param0, u16 param1);

static const WindowTemplate sWindowTemplates[] = {
    { 0x1, 0x6, 0x1, 0x9, 0x2, 0x0, 0x28 },
    { 0x1, 0x0, 0x4, 0x6, 0x2, 0x0, 0x3A },
    { 0x1, 0x7, 0x4, 0x8, 0x2, 0x0, 0x46 },
    { 0x1, 0x8, 0x3, 0x6, 0x1, 0x3, 0x56 },
    { 0x1, 0x6, 0x4, 0xA, 0x2, 0x0, 0x46 },
    { 0x1, 0x16, 0x2, 0x9, 0x2, 0x0, 0x5C },
    { 0x1, 0x10, 0x5, 0x6, 0x2, 0x0, 0x6E },
    { 0x1, 0x17, 0x5, 0x8, 0x2, 0x0, 0x7A },
    { 0x1, 0x18, 0x4, 0x6, 0x1, 0x4, 0x8A },
    { 0x1, 0x16, 0x5, 0xA, 0x2, 0x0, 0x7A },
    { 0x1, 0x6, 0x7, 0x9, 0x2, 0x0, 0x90 },
    { 0x1, 0x0, 0xA, 0x6, 0x2, 0x0, 0xA2 },
    { 0x1, 0x7, 0xA, 0x8, 0x2, 0x0, 0xAE },
    { 0x1, 0x8, 0x9, 0x6, 0x1, 0x5, 0xBE },
    { 0x1, 0x6, 0xA, 0xA, 0x2, 0x0, 0xAE },
    { 0x1, 0x16, 0x8, 0x9, 0x2, 0x0, 0xC4 },
    { 0x1, 0x10, 0xB, 0x6, 0x2, 0x0, 0xD6 },
    { 0x1, 0x17, 0xB, 0x8, 0x2, 0x0, 0xE2 },
    { 0x1, 0x18, 0xA, 0x6, 0x1, 0x6, 0xF2 },
    { 0x1, 0x16, 0xB, 0xA, 0x2, 0x0, 0xE2 },
    { 0x1, 0x6, 0xD, 0x9, 0x2, 0x0, 0xF8 },
    { 0x1, 0x0, 0x10, 0x6, 0x2, 0x0, 0x10A },
    { 0x1, 0x7, 0x10, 0x8, 0x2, 0x0, 0x116 },
    { 0x1, 0x8, 0xF, 0x6, 0x1, 0x7, 0x126 },
    { 0x1, 0x6, 0x10, 0xA, 0x2, 0x0, 0x116 },
    { 0x1, 0x16, 0xE, 0x9, 0x2, 0x0, 0x12C },
    { 0x1, 0x10, 0x11, 0x6, 0x2, 0x0, 0x13E },
    { 0x1, 0x17, 0x11, 0x8, 0x2, 0x0, 0x14A },
    { 0x1, 0x18, 0x10, 0x6, 0x1, 0x8, 0x15A },
    { 0x1, 0x16, 0x11, 0xA, 0x2, 0x0, 0x14A },
    { 0x1, 0x16, 0x1, 0x9, 0x2, 0x0, 0x5C },
    { 0x1, 0x11, 0x5, 0x5, 0x2, 0x0, 0x6E },
    { 0x1, 0x17, 0x5, 0x8, 0x2, 0x0, 0x7A },
    { 0x1, 0x18, 0x4, 0x6, 0x1, 0x4, 0x8A },
    { 0x1, 0x18, 0x4, 0x6, 0x1, 0x4, 0x8A },
    { 0x1, 0x16, 0x8, 0x9, 0x2, 0x0, 0xC4 },
    { 0x1, 0x11, 0xB, 0x5, 0x2, 0x0, 0xD6 },
    { 0x1, 0x17, 0xB, 0x8, 0x2, 0x0, 0xE2 },
    { 0x1, 0x18, 0xA, 0x6, 0x1, 0x6, 0xF2 },
    { 0x1, 0x18, 0x4, 0x6, 0x1, 0x4, 0x8A },
    { 0x1, 0x16, 0xE, 0x9, 0x2, 0x0, 0x12C },
    { 0x1, 0x11, 0x11, 0x5, 0x2, 0x0, 0x13E },
    { 0x1, 0x17, 0x11, 0x8, 0x2, 0x0, 0x14A },
    { 0x1, 0x18, 0x10, 0x6, 0x1, 0x8, 0x15A },
    { 0x1, 0x18, 0x4, 0x6, 0x1, 0x4, 0x8A }
};

static const WindowTemplate Unk_020F1ED0[] = {
    { 0x1, 0x1A, 0x15, 0x5, 0x2, 0x0, 0x160 },
    { 0x1, 0x19, 0x14, 0x7, 0x2, 0x0, 0x16A },
    { 0x0, 0x2, 0x15, 0x14, 0x2, 0xD, 0x178 },
    { 0x0, 0x2, 0x13, 0xD, 0x4, 0xD, 0x1A0 },
    { 0x0, 0x2, 0x13, 0x1B, 0x4, 0xD, 0x1D4 },
    { 0x0, 0x13, 0x11, 0xC, 0x6, 0x0, 0x240 },
    { 0x0, 0x13, 0xF, 0xC, 0x8, 0x0, 0x240 }
};

static const WindowTemplate Unk_020F1E98 = {
    0x0,
    0x17,
    0xD,
    0x7,
    0x4,
    0x0,
    0x240
};

static void AddPartyMemberWindows(BgConfig *bgConfig, Window *target, const WindowTemplate *source)
{
    Window_AddFromTemplate(bgConfig, &target[0], &source[0]);
    Window_AddFromTemplate(bgConfig, &target[1], &source[1]);
    Window_AddFromTemplate(bgConfig, &target[2], &source[2]);
    Window_AddFromTemplate(bgConfig, &target[3], &source[3]);
    Window_AddFromTemplate(bgConfig, &target[4], &source[4]);
}

void PartyMenu_AddWindows(PartyMenuApplication *application)
{
    const WindowTemplate *templates = sWindowTemplates;

    AddPartyMemberWindows(application->bgConfig, &application->windows[PARTY_MENU_WIN_NAME_MEMB0], &templates[0]);
    AddPartyMemberWindows(application->bgConfig, &application->windows[PARTY_MENU_WIN_NAME_MEMB2], &templates[10]);
    AddPartyMemberWindows(application->bgConfig, &application->windows[PARTY_MENU_WIN_NAME_MEMB4], &templates[20]);

    if (application->partyMenu->type == PARTY_MENU_TYPE_MULTI_BATTLE) {
        AddPartyMemberWindows(application->bgConfig, &application->windows[PARTY_MENU_WIN_NAME_MEMB1], &templates[30]);
        AddPartyMemberWindows(application->bgConfig, &application->windows[PARTY_MENU_WIN_NAME_MEMB3], &templates[35]);
        AddPartyMemberWindows(application->bgConfig, &application->windows[PARTY_MENU_WIN_NAME_MEMB5], &templates[40]);
    } else {
        AddPartyMemberWindows(application->bgConfig, &application->windows[PARTY_MENU_WIN_NAME_MEMB1], &templates[5]);
        AddPartyMemberWindows(application->bgConfig, &application->windows[PARTY_MENU_WIN_NAME_MEMB3], &templates[15]);
        AddPartyMemberWindows(application->bgConfig, &application->windows[PARTY_MENU_WIN_NAME_MEMB5], &templates[25]);
    }

    if (application->partyMenu->mode == PARTY_MENU_MODE_SELECT_CONFIRM
        || application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_TOWER
        || application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_CASTLE
        || application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_HALL) {
        WindowTemplate template = Unk_020F1ED0[0];
        template.tilemapTop = 22;
        Window_AddFromTemplate(application->bgConfig, &application->windows[PARTY_MENU_WIN_UNK_31], &template);
    } else {
        Window_AddFromTemplate(application->bgConfig, &application->windows[PARTY_MENU_WIN_UNK_31], &Unk_020F1ED0[0]);
    }

    Window_AddFromTemplate(application->bgConfig, &application->windows[PARTY_MENU_WIN_UNK_30], &Unk_020F1ED0[1]);
    Window_AddFromTemplate(application->bgConfig, &application->windows[PARTY_MENU_WIN_UNK_32], &Unk_020F1ED0[2]);
    Window_AddFromTemplate(application->bgConfig, &application->windows[PARTY_MENU_WIN_UNK_33], &Unk_020F1ED0[3]);
    Window_AddFromTemplate(application->bgConfig, &application->windows[PARTY_MENU_WIN_UNK_34], &Unk_020F1ED0[4]);
    Window_AddFromTemplate(application->bgConfig, &application->windows[PARTY_MENU_WIN_UNK_35], &Unk_020F1ED0[5]);
    Window_AddFromTemplate(application->bgConfig, &application->windows[PARTY_MENU_WIN_UNK_36], &Unk_020F1ED0[6]);
}

void sub_02081B90(PartyMenuApplication *param0)
{
    u16 v0;

    for (v0 = 0; v0 < 37; v0++) {
        Window_Remove(&param0->windows[v0]);
    }

    for (v0 = 0; v0 < 1; v0++) {
        if (Window_IsInUse(&param0->unk_254[v0]) == 1) {
            Window_Remove(&param0->unk_254[v0]);
        }
    }
}

void PartyMenu_LoadContextMenuStrings(PartyMenuApplication *application)
{
    MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00145, application->menuStrings[0]);
    MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00146, application->menuStrings[1]);
    MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00147, application->menuStrings[2]);
    MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00160, application->menuStrings[3]);
    MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00161, application->menuStrings[4]);
    MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00148, application->menuStrings[5]);
    MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00149, application->menuStrings[6]);
    MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00150, application->menuStrings[7]);
    MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00151, application->menuStrings[8]);
    MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00152, application->menuStrings[9]);
    MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00153, application->menuStrings[10]);
    MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00154, application->menuStrings[11]);
    MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00155, application->menuStrings[12]);
    MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00154, application->menuStrings[13]);
    MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00166, application->menuStrings[14]);
    MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00200, application->menuStrings[15]);
}

void sub_02081CAC(PartyMenuApplication *param0, u16 param1, u8 param2)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->messageLoader, 156 + param2);

    StringTemplate_SetMoveName(param0->template, 0, param1);
    StringTemplate_Format(param0->template, param0->menuStrings[16 + param2], v0);

    Strbuf_Free(v0);
}

void sub_02081CF4(PartyMenuApplication *param0, const u8 *param1, u8 param2)
{
    MenuTemplate v0;
    u16 v1, v2;

    Window_Add(param0->bgConfig, &param0->unk_254[0], 0, 19, 23 - param2 * 2, 12, param2 * 2, 0, (((((((((((((((((((((((((((((((1 + 9) + (18 + 12)) + 9 * 2) + 6 * 2) + 8 * 2) + 6 * 1) + 9 * 2) + 6 * 2) + 8 * 2) + 6 * 1) + 9 * 2) + 6 * 2) + 8 * 2) + 6 * 1) + 9 * 2) + 6 * 2) + 8 * 2) + 6 * 1) + 9 * 2) + 6 * 2) + 8 * 2) + 6 * 1) + 9 * 2) + 6 * 2) + 8 * 2) + 6 * 1) + 5 * 2) + 7 * 2) + 20 * 2) + 13 * 4) + 27 * 4));

    param0->unk_6FC = StringList_New(param2, HEAP_ID_PARTY_MENU);
    v2 = 0;

    for (v1 = 0; v1 < param2; v1++) {
        if (param1[v1] >= 16) {
            StringList_AddFromStrbuf(param0->unk_6FC, param0->menuStrings[16 + v2], sub_02083370((u8)param1[v1]));
            v2++;
        } else {
            StringList_AddFromStrbuf(param0->unk_6FC, param0->menuStrings[param1[v1]], sub_02083370((u8)param1[v1]));
        }
    }

    v0.choices = param0->unk_6FC;
    v0.window = &param0->unk_254[0];
    v0.fontID = FONT_SYSTEM;
    v0.xSize = 1;
    v0.ySize = param2;
    v0.lineSpacing = 0;
    v0.suppressCursor = FALSE;

    if (param2 >= 4) {
        v0.loopAround = TRUE;
    } else {
        v0.loopAround = FALSE;
    }

    Window_DrawStandardFrame(&param0->unk_254[0], 1, 1, 14);
    param0->unk_700 = Menu_NewAndCopyToVRAM(&v0, 8, 0, 0, 12, PAD_BUTTON_B);
}

void sub_02081E08(PartyMenuApplication *param0)
{
    Pokemon *v0;
    Strbuf *v1;

    if (param0->partyMenu->mode == PARTY_MENU_MODE_BALL_SEAL) {
        MessageLoader_GetStrbuf(param0->messageLoader, pl_msg_00000453_00042, param0->tmpString);
    } else if ((param0->partyMenu->mode == PARTY_MENU_MODE_SELECT_EGG) && (param0->partyMembers[param0->currPartySlot].isEgg == TRUE)) {
        MessageLoader_GetStrbuf(param0->messageLoader, pl_msg_00000453_00198, param0->tmpString);
    } else {
        v0 = Party_GetPokemonBySlotIndex(param0->partyMenu->party, param0->currPartySlot);
        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 37);

        StringTemplate_SetNickname(param0->template, 0, Pokemon_GetBoxPokemon(v0));
        StringTemplate_Format(param0->template, param0->tmpString, v1);
        Strbuf_Free(v1);
    }
}

static const struct {
    u16 bankEntry;
    u16 unused1;
    u16 unused2;
    u16 unused3;
} sPartySlotNicknameTemplates[MAX_PARTY_SIZE] = {
    { 8, 2, 20, 14 },
    { 9, 3, 21, 15 },
    { 10, 4, 22, 16 },
    { 11, 5, 23, 17 },
    { 12, 6, 24, 18 },
    { 13, 7, 25, 19 }
};

static void PartyMenu_PrintMemberHPSlash(PartyMenuApplication *application, u8 slot)
{
    FontSpecialChars_DrawPartyScreenLevelText(
        application->specialChars,
        SPECIAL_CHAR_SLASH,
        &application->windows[PARTY_MENU_WIN_HP_MEMB0 + slot * 5],
        28,
        2);
}

void PartyMenu_SetMemberName(PartyMenuApplication *application, Pokemon *mon, u32 partySlot)
{
    Strbuf *fmt = MessageLoader_GetNewStrbuf(application->messageLoader, sPartySlotNicknameTemplates[partySlot].bankEntry);
    StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(mon));
    StringTemplate_Format(application->template, application->partyMembers[partySlot].name, fmt);
    Strbuf_Free(fmt);
}

void PartyMenu_PrintMemberName(PartyMenuApplication *application, u8 slot)
{
    Window *window = &application->windows[PARTY_MENU_WIN_NAME_MEMB0 + slot * 5];
    Text_AddPrinterWithParamsAndColor(
        window,
        FONT_SYSTEM,
        application->partyMembers[slot].name,
        0,
        0,
        TEXT_SPEED_NO_TRANSFER,
        TEXT_COLOR(15, 14, 0),
        NULL);

    if (application->partyMembers[slot].isEgg == TRUE) {
        Window_ScheduleCopyToVRAM(window);
        return;
    }

    if (application->partyMembers[slot].hideGenderMarker == FALSE) {
        if (application->partyMembers[slot].gender == GENDER_MALE) {
            MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00027, application->tmpFormat);
            Text_AddPrinterWithParamsAndColor(
                window,
                FONT_SYSTEM,
                application->tmpFormat,
                (9 * 8 - 8),
                0,
                TEXT_SPEED_NO_TRANSFER,
                TEXT_COLOR(3, 4, 0),
                NULL);
        } else if (application->partyMembers[slot].gender == GENDER_FEMALE) {
            MessageLoader_GetStrbuf(application->messageLoader, pl_msg_00000453_00028, application->tmpFormat);
            Text_AddPrinterWithParamsAndColor(
                window,
                FONT_SYSTEM,
                application->tmpFormat,
                (9 * 8 - 8),
                0,
                TEXT_SPEED_NO_TRANSFER,
                TEXT_COLOR(5, 6, 0),
                NULL);
        }
    }

    Window_ScheduleCopyToVRAM(window);
}

void PartyMenu_PrintMemberLevel(PartyMenuApplication *application, u8 slot)
{
    Window *window = &application->windows[PARTY_MENU_WIN_LEVEL_MEMB0 + slot * 5];
    if (application->partyMembers[slot].statusIcon != SUMMARY_CONDITION_NONE) {
        Window_ScheduleCopyToVRAM(window);
        return;
    }

    FontSpecialChars_DrawPartyScreenText(
        application->specialChars,
        SPECIAL_CHAR_LEVEL,
        application->partyMembers[slot].level,
        3,
        PADDING_MODE_NONE,
        window,
        5,
        2);
    Window_ScheduleCopyToVRAM(window);
}

void PartyMenu_PrintMemberCurrentHP(PartyMenuApplication *application, u8 slot)
{
    Window *window = &application->windows[PARTY_MENU_WIN_HP_MEMB0 + slot * 5];
    FontSpecialChars_DrawPartyScreenHPText(
        application->specialChars,
        application->partyMembers[slot].curHP,
        3,
        PADDING_MODE_SPACES,
        window,
        (28 - 24),
        2);
    Window_ScheduleCopyToVRAM(window);
}

void sub_02082098(PartyMenuApplication *param0, u8 param1)
{
    Window *v0;
    Strbuf *v1;
    u32 v2;

    v0 = &param0->windows[2 + param1 * 5];

    Window_FillRectWithColor(v0, 0, (28 - 24), 0, 24, 2 * 8);
    Window_ScheduleCopyToVRAM(v0);
}

static void PartyMenu_PrintMemberMaxHP(PartyMenuApplication *application, u8 slot)
{
    Window *window = &application->windows[PARTY_MENU_WIN_HP_MEMB0 + slot * 5];
    FontSpecialChars_DrawPartyScreenHPText(
        application->specialChars,
        application->partyMembers[slot].maxHP,
        3,
        PADDING_MODE_NONE,
        window,
        (28 + 8),
        2);
    Window_ScheduleCopyToVRAM(window);
}

void PartyMenu_DrawMemberHealthbar(PartyMenuApplication *application, u8 slot)
{
    Window *window = &application->windows[PARTY_MENU_WIN_HEALTHBAR_MEMB0 + slot * 5];
    switch (HealthBar_Color(application->partyMembers[slot].curHP, application->partyMembers[slot].maxHP, 48)) {
    case BARCOLOR_EMPTY:
        Window_ScheduleCopyToVRAM(window);
        return;

    case BARCOLOR_MAX:
    case BARCOLOR_GREEN:
        Bg_LoadPalette(BG_LAYER_MAIN_1, &application->colors[PLTT_DEST(0) + 9], 2 * sizeof(u16), (PLTT_DEST(window->palette) + 9) * sizeof(u16));
        break;

    case BARCOLOR_YELLOW:
        Bg_LoadPalette(BG_LAYER_MAIN_1, &application->colors[PLTT_DEST(1) + 9], 2 * sizeof(u16), (PLTT_DEST(window->palette) + 9) * sizeof(u16));
        break;

    case BARCOLOR_RED:
        Bg_LoadPalette(BG_LAYER_MAIN_1, &application->colors[PLTT_DEST(2) + 9], 2 * sizeof(u16), (PLTT_DEST(window->palette) + 9) * sizeof(u16));
        break;
    }

    u8 fillCount = App_PixelCount(application->partyMembers[slot].curHP, application->partyMembers[slot].maxHP, 48);
    Window_FillRectWithColor(window, 10, 0, 2, fillCount, 1);
    Window_FillRectWithColor(window, 9, 0, 3, fillCount, 2);
    Window_FillRectWithColor(window, 10, 0, 5, fillCount, 1);
    Window_ScheduleCopyToVRAM(window);
}

void PartyMenu_DrawMemberPanelData(PartyMenuApplication *application, u8 slot)
{
    Window_FillTilemap(&application->windows[PARTY_MENU_WIN_NAME_MEMB0 + slot * 5], 0);
    Window_FillTilemap(&application->windows[PARTY_MENU_WIN_LEVEL_MEMB0 + slot * 5], 0);
    Window_FillTilemap(&application->windows[PARTY_MENU_WIN_HP_MEMB0 + slot * 5], 0);
    Window_FillTilemap(&application->windows[PARTY_MENU_WIN_HEALTHBAR_MEMB0 + slot * 5], 0);
    PartyMenu_PrintMemberName(application, slot);

    if (application->partyMembers[slot].isEgg == TRUE) {
        Window_ScheduleCopyToVRAM(&application->windows[PARTY_MENU_WIN_NAME_MEMB0 + slot * 5]);
        Window_ScheduleCopyToVRAM(&application->windows[PARTY_MENU_WIN_LEVEL_MEMB0 + slot * 5]);
        Window_ScheduleCopyToVRAM(&application->windows[PARTY_MENU_WIN_HP_MEMB0 + slot * 5]);
        Window_ScheduleCopyToVRAM(&application->windows[PARTY_MENU_WIN_HEALTHBAR_MEMB0 + slot * 5]);
        return;
    }

    PartyMenu_PrintMemberHPSlash(application, slot);
    PartyMenu_PrintMemberLevel(application, slot);
    PartyMenu_PrintMemberCurrentHP(application, slot);
    PartyMenu_PrintMemberMaxHP(application, slot);
    PartyMenu_DrawMemberHealthbar(application, slot);
}

void sub_020822BC(PartyMenuApplication *param0, u8 param1)
{
    Window_LoadTiles(&param0->windows[0 + param1 * 5]);
    Window_LoadTiles(&param0->windows[1 + param1 * 5]);
    Window_LoadTiles(&param0->windows[2 + param1 * 5]);
    Window_LoadTiles(&param0->windows[3 + param1 * 5]);
}

void sub_020822F4(PartyMenuApplication *param0, u8 param1)
{
    Window_ClearAndScheduleCopyToVRAM(&param0->windows[0 + param1 * 5]);
    Window_ClearAndScheduleCopyToVRAM(&param0->windows[1 + param1 * 5]);
    Window_ClearAndScheduleCopyToVRAM(&param0->windows[2 + param1 * 5]);
    Window_ClearAndScheduleCopyToVRAM(&param0->windows[3 + param1 * 5]);
}

void PartyMenu_PrintMemberComment_CanUseEvoItem(PartyMenuApplication *application, u8 slot)
{
    Window_FillTilemap(&application->windows[PARTY_MENU_WIN_NAME_MEMB0 + slot * 5], 0);
    Window_FillTilemap(&application->windows[PARTY_MENU_WIN_LEVEL_MEMB0 + slot * 5], 0);
    PartyMenu_PrintMemberName(application, slot);

    if (application->partyMembers[slot].isEgg == TRUE) {
        PrintMemberEvoComment(application, slot, EVO_COMMENT_UNABLE);
        return;
    }

    PartyMenu_PrintMemberLevel(application, slot);

    Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, slot);
    if (Pokemon_GetEvolutionTargetSpecies(NULL, mon, EVO_CLASS_BY_ITEM, application->partyMenu->usedItemID, NULL) == SPECIES_NONE) {
        PrintMemberEvoComment(application, slot, EVO_COMMENT_UNABLE);
    } else {
        PrintMemberEvoComment(application, slot, EVO_COMMENT_ABLE);
    }
}

void PartyMenu_PrintMemberComment_CanLearnMove(PartyMenuApplication *application, u8 slot)
{
    Window_FillTilemap(&application->windows[PARTY_MENU_WIN_NAME_MEMB0 + slot * 5], 0);
    Window_FillTilemap(&application->windows[PARTY_MENU_WIN_LEVEL_MEMB0 + slot * 5], 0);
    PartyMenu_PrintMemberName(application, slot);

    if (application->partyMembers[slot].isEgg == TRUE) {
        PrintMemberMoveComment(application, slot, MOVE_COMMENT_UNABLE);
        return;
    }

    PartyMenu_PrintMemberLevel(application, slot);

    Pokemon *v0 = Party_GetPokemonBySlotIndex(application->partyMenu->party, slot);
    u8 result = PartyMenu_CanMonLearnMove(application, v0);
    if (result == MON_MOVE_RESULT_CANNOT_LEARN) {
        PrintMemberMoveComment(application, slot, MOVE_COMMENT_UNABLE);
    } else if (result == MON_MOVE_RESULT_ALREADY_LEARNED) {
        PrintMemberMoveComment(application, slot, MOVE_COMMENT_LEARNED);
    } else {
        PrintMemberMoveComment(application, slot, MOVE_COMMENT_ABLE);
    }
}

void PartyMenu_PrintMemberComment_IsContestEligible(PartyMenuApplication *application, u8 slot)
{
    Window_FillTilemap(&application->windows[PARTY_MENU_WIN_NAME_MEMB0 + slot * 5], 0);
    Window_FillTilemap(&application->windows[PARTY_MENU_WIN_LEVEL_MEMB0 + slot * 5], 0);
    PartyMenu_PrintMemberName(application, slot);

    if (application->partyMembers[slot].isEgg != TRUE) {
        PartyMenu_PrintMemberLevel(application, slot);
    }

    PrintMemberContestComment(application, slot, application->partyMembers[slot].isContestEligible);
}

void PartyMenu_PrintMemberNameAndLevel(PartyMenuApplication *application, u8 slot)
{
    Window_FillTilemap(&application->windows[PARTY_MENU_WIN_NAME_MEMB0 + slot * 5], 0);
    Window_FillTilemap(&application->windows[PARTY_MENU_WIN_LEVEL_MEMB0 + slot * 5], 0);
    PartyMenu_PrintMemberName(application, slot);

    if (application->partyMembers[slot].isEgg != TRUE) {
        PartyMenu_PrintMemberLevel(application, slot);
    }
}

void PartyMenu_PrintSelectionEligibility(PartyMenuApplication *application, u8 slot)
{
    for (u8 selectionSlot = 0; selectionSlot < application->partyMenu->maxSelectionSlots; selectionSlot++) {
        if (application->partyMenu->selectionOrder[selectionSlot] == slot + 1) {
            PrintMemberSelectionComment(application, slot, selectionSlot);
            return;
        }
    }

    if (application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_HALL) {
        if (PartyMenu_CheckBattleHallEligibility(application, slot) == PARTY_MENU_SELECTION_INELIGIBLE) {
            PrintMemberSelectionComment(application, slot, SELECTION_COMMENT_BANNED);
            return;
        }
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_CASTLE) {
        if (PartyMenu_CheckBattleCastleEligibility(application, slot) == PARTY_MENU_SELECTION_INELIGIBLE) {
            PrintMemberSelectionComment(application, slot, SELECTION_COMMENT_BANNED);
            return;
        }
    } else {
        if (PartyMenu_CheckEligibility(application, slot) == PARTY_MENU_SELECTION_INELIGIBLE) {
            PrintMemberSelectionComment(application, slot, SELECTION_COMMENT_BANNED);
            return;
        }
    }

    PrintMemberSelectionComment(application, slot, SELECTION_COMMENT_NOT_ENTERED);
}

static u32 CalcCenterXPos(enum Font font, const Strbuf *string, u32 winWidth)
{
    u32 width = Font_CalcStrbufWidth(font, string, 0);
    return (winWidth - width) >> 1;
}

void PartyMenu_PrintButtonText(PartyMenuApplication *application, u8 flags)
{
    u32 x;

    Window_FillTilemap(&application->windows[30], 0);
    Window_FillTilemap(&application->windows[31], 0);

    if (flags & PARTY_MENU_SHOW_CONFIRM) {
        MessageLoader_GetStrbuf(application->messageLoader, 0, application->tmpFormat);
        x = CalcCenterXPos(FONT_SYSTEM, application->tmpFormat, application->windows[30].width * 8);
        Text_AddPrinterWithParamsAndColor(&application->windows[30], FONT_SYSTEM, application->tmpFormat, x, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
        Window_ScheduleCopyToVRAM(&application->windows[30]);
    }

    if (flags & PARTY_MENU_SHOW_CANCEL) {
        MessageLoader_GetStrbuf(application->messageLoader, 1, application->tmpFormat);
        x = CalcCenterXPos(FONT_SYSTEM, application->tmpFormat, application->windows[31].width * 8);
        Text_AddPrinterWithParamsAndColor(&application->windows[31], FONT_SYSTEM, application->tmpFormat, x, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
        Window_ScheduleCopyToVRAM(&application->windows[31]);
    }
}

static void PrintPartyMenuMessage(PartyMenuApplication *application, Window *window, u32 bankEntry, u8 draw)
{
    if (draw == TRUE) {
        Window_DrawMessageBoxWithScrollCursor(window, 1, (1 + 9), 15);
    }

    Window_FillTilemap(window, 15);

    if (bankEntry != -1) {
        MessageLoader_GetStrbuf(application->messageLoader, bankEntry, application->tmpString);
    }

    Text_AddPrinterWithParams(window, FONT_MESSAGE, application->tmpString, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(window);
}

void PartyMenu_PrintShortMessage(PartyMenuApplication *application, u32 bankEntry, u8 draw)
{
    PrintPartyMenuMessage(application, &application->windows[32], bankEntry, draw);
}

void sub_020826F4(PartyMenuApplication *application, u32 bankEntry, u8 draw)
{
    PrintPartyMenuMessage(application, &application->windows[33], bankEntry, draw);
}

void sub_02082708(PartyMenuApplication *param0, u32 param1, u8 param2)
{
    Window *v0 = &param0->windows[34];

    if (param2 == 1) {
        Window_DrawMessageBoxWithScrollCursor(v0, 1, (1 + 9), 15);
    }

    Window_FillTilemap(v0, 15);

    if (param1 != 0xffffffff) {
        MessageLoader_GetStrbuf(param0->messageLoader, param1, param0->tmpString);
    }

    sub_0208274C(param0);
}

void sub_0208274C(PartyMenuApplication *param0)
{
    RenderControlFlags_SetCanABSpeedUpPrint(1);
    RenderControlFlags_SetAutoScrollFlags(0);
    param0->textPrinterID = Text_AddPrinterWithParams(
        &param0->windows[34], FONT_MESSAGE, param0->tmpString, 0, 0, Options_TextFrameDelay(param0->partyMenu->options), sub_0208279C);
}

static BOOL sub_0208279C(TextPrinterTemplate *param0, u16 param1)
{
    switch (param1) {
    case 1:
        return Sound_IsAnyEffectPlaying();
    case 2:
        return Sound_IsBGMPausedByFanfare();
    case 3:
        Sound_PlayEffect(SEQ_SE_DP_KON);
        break;
    case 4:
        Sound_PlayFanfare(SEQ_FANFA1);
        break;
    case 5:
        return Sound_IsEffectPlaying(1510);
    }

    return 0;
}

void sub_020827EC(PartyMenuApplication *param0)
{
    param0->unk_700 = Menu_MakeYesNoChoice(
        param0->bgConfig, &Unk_020F1E98, 1, 14, 12);
}

static void PrintMemberEvoComment(PartyMenuApplication *application, u8 slot, u8 which)
{

    Window *window = &application->windows[PARTY_MENU_WIN_COMMENT_MEMB0 + slot * 5];
    Window_FillTilemap(window, 0);

    Strbuf *string;
    switch (which) {
    case EVO_COMMENT_ABLE:
        string = MessageLoader_GetNewStrbuf(application->messageLoader, 178);
        break;
    case EVO_COMMENT_UNABLE:
        string = MessageLoader_GetNewStrbuf(application->messageLoader, 179);
        break;
    }

    Text_AddPrinterWithParamsAndColor(
        window,
        FONT_SYSTEM,
        string,
        0,
        0,
        TEXT_SPEED_NO_TRANSFER,
        TEXT_COLOR(15, 14, 0),
        NULL);
    Strbuf_Free(string);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintMemberMoveComment(PartyMenuApplication *application, u8 slot, u8 which)
{
    Window *window = &application->windows[4 + slot * 5];
    Window_FillTilemap(window, 0);

    Strbuf *string;
    switch (which) {
    case MOVE_COMMENT_ABLE:
        string = MessageLoader_GetNewStrbuf(application->messageLoader, 175);
        break;
    case MOVE_COMMENT_UNABLE:
        string = MessageLoader_GetNewStrbuf(application->messageLoader, 176);
        break;
    case MOVE_COMMENT_LEARNED:
        string = MessageLoader_GetNewStrbuf(application->messageLoader, 177);
        break;
    }

    Text_AddPrinterWithParamsAndColor(
        window,
        FONT_SYSTEM,
        string,
        0,
        0,
        TEXT_SPEED_NO_TRANSFER,
        TEXT_COLOR(15, 14, 0),
        NULL);
    Strbuf_Free(string);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintMemberContestComment(PartyMenuApplication *application, u8 slot, u8 isEligible)
{
    Window *window = &application->windows[4 + slot * 5];
    Window_FillTilemap(window, 0);

    Strbuf *string;
    if (isEligible == FALSE) {
        string = MessageLoader_GetNewStrbuf(application->messageLoader, 181);
    } else {
        string = MessageLoader_GetNewStrbuf(application->messageLoader, 180);
    }

    Text_AddPrinterWithParamsAndColor(
        window,
        FONT_SYSTEM,
        string,
        0,
        0,
        TEXT_SPEED_NO_TRANSFER,
        TEXT_COLOR(15, 14, 0),
        NULL);
    Strbuf_Free(string);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintMemberSelectionComment(PartyMenuApplication *application, u8 slot, u8 comment)
{
    Window *window = &application->windows[PARTY_MENU_WIN_COMMENT_MEMB0 + slot * 5];
    Window_FillTilemap(window, 0);

    Strbuf *string;
    if (comment < MAX_PARTY_SIZE) {
        string = MessageLoader_GetNewStrbuf(application->messageLoader, 169 + comment);
    } else if (comment == SELECTION_COMMENT_NOT_ENTERED) {
        string = MessageLoader_GetNewStrbuf(application->messageLoader, 167);
    } else {
        string = MessageLoader_GetNewStrbuf(application->messageLoader, 168);
    }

    Text_AddPrinterWithParamsAndColor(
        window,
        FONT_SYSTEM,
        string,
        0,
        0,
        TEXT_SPEED_NO_TRANSFER,
        TEXT_COLOR(15, 14, 0),
        NULL);
    Strbuf_Free(string);
    Window_ScheduleCopyToVRAM(window);
}

void sub_020829DC(PartyMenuApplication *param0)
{
    Pokemon *v0;
    Strbuf *v1;
    u32 v2;
    u16 v3[6];

    v0 = Party_GetPokemonBySlotIndex(param0->partyMenu->party, param0->currPartySlot);

    v3[0] = (u16)Pokemon_GetValue(v0, MON_DATA_MAX_HP, NULL);
    v3[1] = (u16)Pokemon_GetValue(v0, MON_DATA_ATK, NULL);
    v3[2] = (u16)Pokemon_GetValue(v0, MON_DATA_DEF, NULL);
    v3[3] = (u16)Pokemon_GetValue(v0, MON_DATA_SP_ATK, NULL);
    v3[4] = (u16)Pokemon_GetValue(v0, MON_DATA_SP_DEF, NULL);
    v3[5] = (u16)Pokemon_GetValue(v0, MON_DATA_SPEED, NULL);

    Window_Add(param0->bgConfig, &param0->unk_254[0], 0, 1, 1, 14, 12, 0, 576);
    Window_DrawStandardFrame(&param0->unk_254[0], 1, 1, 14);
    Window_FillTilemap(&param0->unk_254[0], 15);

    for (v2 = 0; v2 < 6; v2++) {
        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 185 + v2);
        Text_AddPrinterWithParams(&param0->unk_254[0], FONT_SYSTEM, v1, 0, 16 * v2, TEXT_SPEED_NO_TRANSFER, NULL);
        Strbuf_Free(v1);

        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 191);

        StringTemplate_SetNumber(param0->template, 0, v3[v2] - param0->monStats[v2], 2, 0, 1);
        StringTemplate_Format(param0->template, param0->tmpString, v1);
        Strbuf_Free(v1);

        {
            u32 v4 = 14 * 8 - 8 - Font_CalcStrbufWidth(FONT_SYSTEM, param0->tmpString, 0);
            Text_AddPrinterWithParams(&param0->unk_254[0], FONT_SYSTEM, param0->tmpString, v4, 16 * v2, TEXT_SPEED_NO_TRANSFER, NULL);
        }

        param0->monStats[v2] = v3[v2];
    }

    Window_ScheduleCopyToVRAM(&param0->unk_254[0]);
}

void sub_02082B58(PartyMenuApplication *param0)
{
    Strbuf *v0;
    u32 v1;
    u32 v2;

    Window_FillRectWithColor(&param0->unk_254[0], 15, 80, 0, 32, 14 * 8);
    v0 = MessageLoader_GetNewStrbuf(param0->messageLoader, 192);

    for (v2 = 0; v2 < 6; v2++) {
        StringTemplate_SetNumber(param0->template, 0, param0->monStats[v2], 3, 0, 1);
        StringTemplate_Format(param0->template, param0->tmpString, v0);

        v1 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->tmpString, 0);

        Text_AddPrinterWithParams(&param0->unk_254[0], 0, param0->tmpString, 14 * 8 - v1 - 8, 16 * v2, 0xff, NULL);
    }

    Strbuf_Free(v0);
    Window_ScheduleCopyToVRAM(&param0->unk_254[0]);
}

void sub_02082C10(PartyMenuApplication *param0)
{
    Window_EraseStandardFrame(&param0->unk_254[0], 0);
    Window_Remove(&param0->unk_254[0]);
}
