#include "unk_020819DC.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0207F248.h"

#include "bg_window.h"
#include "font.h"
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
#include "unk_0200C440.h"
#include "unk_0207E0B8.h"
#include "unk_02083370.h"
#include "unk_02084B70.h"
#include "unk_0208C098.h"

static void sub_02082810(GameWindowLayout *param0, u8 param1, u8 param2);
static void sub_02082880(GameWindowLayout *param0, u8 param1, u8 param2);
static void sub_02082900(GameWindowLayout *param0, u8 param1, u8 param2);
static void sub_02082964(GameWindowLayout *param0, u8 param1, u8 param2);
static BOOL sub_0208279C(TextPrinterTemplate *param0, u16 param1);

static const WindowTemplate Unk_020F1F08[] = {
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

static void sub_020819DC(BgConfig *param0, Window *param1, const WindowTemplate *param2)
{
    Window_AddFromTemplate(param0, &param1[0], &param2[0]);
    Window_AddFromTemplate(param0, &param1[1], &param2[1]);
    Window_AddFromTemplate(param0, &param1[2], &param2[2]);
    Window_AddFromTemplate(param0, &param1[3], &param2[3]);
    Window_AddFromTemplate(param0, &param1[4], &param2[4]);
}

void sub_02081A24(GameWindowLayout *param0)
{
    const WindowTemplate *v0 = Unk_020F1F08;
    u16 v1;

    sub_020819DC(param0->unk_00, &param0->unk_04[0], &v0[0]);
    sub_020819DC(param0->unk_00, &param0->unk_04[10], &v0[10]);
    sub_020819DC(param0->unk_00, &param0->unk_04[20], &v0[20]);

    if (param0->partyManagementData->unk_21 == 2) {
        sub_020819DC(param0->unk_00, &param0->unk_04[5], &v0[30]);
        sub_020819DC(param0->unk_00, &param0->unk_04[15], &v0[35]);
        sub_020819DC(param0->unk_00, &param0->unk_04[25], &v0[40]);
    } else {
        sub_020819DC(param0->unk_00, &param0->unk_04[5], &v0[5]);
        sub_020819DC(param0->unk_00, &param0->unk_04[15], &v0[15]);
        sub_020819DC(param0->unk_00, &param0->unk_04[25], &v0[25]);
    }

    if ((param0->partyManagementData->unk_20 == 2) || (param0->partyManagementData->unk_20 == 17) || (param0->partyManagementData->unk_20 == 23) || (param0->partyManagementData->unk_20 == 22)) {
        WindowTemplate v2;

        v2 = Unk_020F1ED0[0];
        v2.tilemapTop = 22;
        Window_AddFromTemplate(param0->unk_00, &param0->unk_04[31], &v2);
    } else {
        Window_AddFromTemplate(param0->unk_00, &param0->unk_04[31], &Unk_020F1ED0[0]);
    }

    Window_AddFromTemplate(param0->unk_00, &param0->unk_04[30], &Unk_020F1ED0[1]);
    Window_AddFromTemplate(param0->unk_00, &param0->unk_04[32], &Unk_020F1ED0[2]);
    Window_AddFromTemplate(param0->unk_00, &param0->unk_04[33], &Unk_020F1ED0[3]);
    Window_AddFromTemplate(param0->unk_00, &param0->unk_04[34], &Unk_020F1ED0[4]);
    Window_AddFromTemplate(param0->unk_00, &param0->unk_04[35], &Unk_020F1ED0[5]);
    Window_AddFromTemplate(param0->unk_00, &param0->unk_04[36], &Unk_020F1ED0[6]);
}

void sub_02081B90(GameWindowLayout *param0)
{
    u16 v0;

    for (v0 = 0; v0 < 37; v0++) {
        Window_Remove(&param0->unk_04[v0]);
    }

    for (v0 = 0; v0 < 1; v0++) {
        if (Window_IsInUse(&param0->unk_254[v0]) == 1) {
            Window_Remove(&param0->unk_254[v0]);
        }
    }
}

void sub_02081BC0(GameWindowLayout *param0)
{
    MessageLoader_GetStrbuf(param0->messageLoader, 145, param0->unk_6AC[0]);
    MessageLoader_GetStrbuf(param0->messageLoader, 146, param0->unk_6AC[1]);
    MessageLoader_GetStrbuf(param0->messageLoader, 147, param0->unk_6AC[2]);
    MessageLoader_GetStrbuf(param0->messageLoader, 160, param0->unk_6AC[3]);
    MessageLoader_GetStrbuf(param0->messageLoader, 161, param0->unk_6AC[4]);
    MessageLoader_GetStrbuf(param0->messageLoader, 148, param0->unk_6AC[5]);
    MessageLoader_GetStrbuf(param0->messageLoader, 149, param0->unk_6AC[6]);
    MessageLoader_GetStrbuf(param0->messageLoader, 150, param0->unk_6AC[7]);
    MessageLoader_GetStrbuf(param0->messageLoader, 151, param0->unk_6AC[8]);
    MessageLoader_GetStrbuf(param0->messageLoader, 152, param0->unk_6AC[9]);
    MessageLoader_GetStrbuf(param0->messageLoader, 153, param0->unk_6AC[10]);
    MessageLoader_GetStrbuf(param0->messageLoader, 154, param0->unk_6AC[11]);
    MessageLoader_GetStrbuf(param0->messageLoader, 155, param0->unk_6AC[12]);
    MessageLoader_GetStrbuf(param0->messageLoader, 154, param0->unk_6AC[13]);
    MessageLoader_GetStrbuf(param0->messageLoader, 166, param0->unk_6AC[14]);
    MessageLoader_GetStrbuf(param0->messageLoader, 200, param0->unk_6AC[15]);
}

void sub_02081CAC(GameWindowLayout *param0, u16 param1, u8 param2)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->messageLoader, 156 + param2);

    StringTemplate_SetMoveName(param0->template, 0, param1);
    StringTemplate_Format(param0->template, param0->unk_6AC[16 + param2], v0);

    Strbuf_Free(v0);
}

void sub_02081CF4(GameWindowLayout *param0, const u8 *param1, u8 param2)
{
    MenuTemplate v0;
    u16 v1, v2;

    Window_Add(param0->unk_00, &param0->unk_254[0], 0, 19, 23 - param2 * 2, 12, param2 * 2, 0, (((((((((((((((((((((((((((((((1 + 9) + (18 + 12)) + 9 * 2) + 6 * 2) + 8 * 2) + 6 * 1) + 9 * 2) + 6 * 2) + 8 * 2) + 6 * 1) + 9 * 2) + 6 * 2) + 8 * 2) + 6 * 1) + 9 * 2) + 6 * 2) + 8 * 2) + 6 * 1) + 9 * 2) + 6 * 2) + 8 * 2) + 6 * 1) + 9 * 2) + 6 * 2) + 8 * 2) + 6 * 1) + 5 * 2) + 7 * 2) + 20 * 2) + 13 * 4) + 27 * 4));

    param0->unk_6FC = StringList_New(param2, 12);
    v2 = 0;

    for (v1 = 0; v1 < param2; v1++) {
        if (param1[v1] >= 16) {
            StringList_AddFromStrbuf(param0->unk_6FC, param0->unk_6AC[16 + v2], sub_02083370((u8)param1[v1]));
            v2++;
        } else {
            StringList_AddFromStrbuf(param0->unk_6FC, param0->unk_6AC[param1[v1]], sub_02083370((u8)param1[v1]));
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

void sub_02081E08(GameWindowLayout *param0)
{
    Pokemon *v0;
    Strbuf *v1;

    if (param0->partyManagementData->unk_20 == 15) {
        MessageLoader_GetStrbuf(param0->messageLoader, 42, param0->unk_6A4);
    } else if ((param0->partyManagementData->unk_20 == 21) && (param0->unk_704[param0->partySlot].unk_10 == 1)) {
        MessageLoader_GetStrbuf(param0->messageLoader, 198, param0->unk_6A4);
    } else {
        v0 = Party_GetPokemonBySlotIndex(param0->partyManagementData->party, param0->partySlot);
        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 37);

        StringTemplate_SetNickname(param0->template, 0, Pokemon_GetBoxPokemon(v0));
        StringTemplate_Format(param0->template, param0->unk_6A4, v1);
        Strbuf_Free(v1);
    }
}

static const u16 Unk_020F1EA0[6][4] = {
    { 0x8, 0x2, 0x14, 0xE },
    { 0x9, 0x3, 0x15, 0xF },
    { 0xA, 0x4, 0x16, 0x10 },
    { 0xB, 0x5, 0x17, 0x11 },
    { 0xC, 0x6, 0x18, 0x12 },
    { 0xD, 0x7, 0x19, 0x13 }
};

static void sub_02081EAC(GameWindowLayout *param0, u8 param1)
{
    sub_0200C578(param0->unk_698, 0, &param0->unk_04[2 + param1 * 5], 28, 2);
}

void sub_02081ED8(GameWindowLayout *param0, Pokemon *param1, u32 param2)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->messageLoader, Unk_020F1EA0[param2][0]);

    StringTemplate_SetNickname(param0->template, 0, Pokemon_GetBoxPokemon(param1));
    StringTemplate_Format(param0->template, param0->unk_704[param2].unk_00, v0);
    Strbuf_Free(v0);
}

void sub_02081F2C(GameWindowLayout *param0, u8 param1)
{
    Window *v0;
    Pokemon *v1;

    v0 = &param0->unk_04[0 + param1 * 5];

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->unk_704[param1].unk_00, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);

    if (param0->unk_704[param1].unk_10 == 1) {
        Window_ScheduleCopyToVRAM(v0);
        return;
    }

    if (param0->unk_704[param1].unk_0E_12 == 0) {
        if (param0->unk_704[param1].unk_0E_13 == 0) {
            MessageLoader_GetStrbuf(param0->messageLoader, 27, param0->unk_6A8);
            Text_AddPrinterWithParamsAndColor(
                v0, FONT_SYSTEM, param0->unk_6A8, (9 * 8 - 8), 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 4, 0), NULL);
        } else if (param0->unk_704[param1].unk_0E_13 == 1) {
            MessageLoader_GetStrbuf(param0->messageLoader, 28, param0->unk_6A8);
            Text_AddPrinterWithParamsAndColor(
                v0, FONT_SYSTEM, param0->unk_6A8, (9 * 8 - 8), 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(5, 6, 0), NULL);
        }
    }

    Window_ScheduleCopyToVRAM(v0);
}

void sub_02081FFC(GameWindowLayout *param0, u8 param1)
{
    Window *v0;
    Strbuf *v1;

    v0 = &param0->unk_04[1 + param1 * 5];

    if (param0->unk_704[param1].unk_0E_0 != 7) {
        Window_ScheduleCopyToVRAM(v0);
        return;
    }

    sub_0200C648(param0->unk_698, 1, param0->unk_704[param1].level, 3, 0, v0, 5, 2);
    Window_ScheduleCopyToVRAM(v0);
}

void sub_02082058(GameWindowLayout *param0, u8 param1)
{
    Window *v0;
    Strbuf *v1;
    u32 v2;

    v0 = &param0->unk_04[2 + param1 * 5];

    sub_0200C5BC(param0->unk_698, param0->unk_704[param1].curHP, 3, 1, v0, (28 - 24), 2);
    Window_ScheduleCopyToVRAM(v0);
}

void sub_02082098(GameWindowLayout *param0, u8 param1)
{
    Window *v0;
    Strbuf *v1;
    u32 v2;

    v0 = &param0->unk_04[2 + param1 * 5];

    Window_FillRectWithColor(v0, 0, (28 - 24), 0, 24, 2 * 8);
    Window_ScheduleCopyToVRAM(v0);
}

static void sub_020820C4(GameWindowLayout *param0, u8 param1)
{
    Window *v0;
    Strbuf *v1;

    v0 = &param0->unk_04[2 + param1 * 5];

    sub_0200C5BC(param0->unk_698, param0->unk_704[param1].maxHP, 3, 0, v0, (28 + 8), 2);
    Window_ScheduleCopyToVRAM(v0);
}

void sub_02082104(GameWindowLayout *param0, u8 param1)
{
    Window *v0;
    u8 v1;

    v0 = &param0->unk_04[3 + param1 * 5];

    switch (HealthBar_Color(param0->unk_704[param1].curHP, param0->unk_704[param1].maxHP, 48)) {
    case 0:
        Window_ScheduleCopyToVRAM(v0);
        return;
    case 4:
    case 3:
        Bg_LoadPalette(1, &param0->unk_4A4[9], 2 * 2, (v0->palette * 16 + 9) * 2);
        break;
    case 2:
        Bg_LoadPalette(1, &param0->unk_4A4[(16 + 9)], 2 * 2, (v0->palette * 16 + 9) * 2);
        break;
    case 1:
        Bg_LoadPalette(1, &param0->unk_4A4[(32 + 9)], 2 * 2, (v0->palette * 16 + 9) * 2);
        break;
    }

    v1 = App_PixelCount(param0->unk_704[param1].curHP, param0->unk_704[param1].maxHP, 48);

    Window_FillRectWithColor(v0, 10, 0, 2, v1, 1);
    Window_FillRectWithColor(v0, 9, 0, 3, v1, 2);
    Window_FillRectWithColor(v0, 10, 0, 5, v1, 1);
    Window_ScheduleCopyToVRAM(v0);
}

void sub_020821F8(GameWindowLayout *param0, u8 param1)
{
    Window_FillTilemap(&param0->unk_04[0 + param1 * 5], 0);
    Window_FillTilemap(&param0->unk_04[1 + param1 * 5], 0);
    Window_FillTilemap(&param0->unk_04[2 + param1 * 5], 0);
    Window_FillTilemap(&param0->unk_04[3 + param1 * 5], 0);
    sub_02081F2C(param0, param1);

    if (param0->unk_704[param1].unk_10 == 1) {
        Window_ScheduleCopyToVRAM(&param0->unk_04[0 + param1 * 5]);
        Window_ScheduleCopyToVRAM(&param0->unk_04[1 + param1 * 5]);
        Window_ScheduleCopyToVRAM(&param0->unk_04[2 + param1 * 5]);
        Window_ScheduleCopyToVRAM(&param0->unk_04[3 + param1 * 5]);
        return;
    }

    sub_02081EAC(param0, param1);
    sub_02081FFC(param0, param1);
    sub_02082058(param0, param1);
    sub_020820C4(param0, param1);
    sub_02082104(param0, param1);
}

void sub_020822BC(GameWindowLayout *param0, u8 param1)
{
    Window_LoadTiles(&param0->unk_04[0 + param1 * 5]);
    Window_LoadTiles(&param0->unk_04[1 + param1 * 5]);
    Window_LoadTiles(&param0->unk_04[2 + param1 * 5]);
    Window_LoadTiles(&param0->unk_04[3 + param1 * 5]);
}

void sub_020822F4(GameWindowLayout *param0, u8 param1)
{
    Window_ClearAndScheduleCopyToVRAM(&param0->unk_04[0 + param1 * 5]);
    Window_ClearAndScheduleCopyToVRAM(&param0->unk_04[1 + param1 * 5]);
    Window_ClearAndScheduleCopyToVRAM(&param0->unk_04[2 + param1 * 5]);
    Window_ClearAndScheduleCopyToVRAM(&param0->unk_04[3 + param1 * 5]);
}

void sub_0208232C(GameWindowLayout *param0, u8 param1)
{
    Pokemon *v0;

    Window_FillTilemap(&param0->unk_04[0 + param1 * 5], 0);
    Window_FillTilemap(&param0->unk_04[1 + param1 * 5], 0);
    sub_02081F2C(param0, param1);

    if (param0->unk_704[param1].unk_10 == 1) {
        sub_02082810(param0, param1, 1);
        return;
    }

    sub_02081FFC(param0, param1);

    v0 = Party_GetPokemonBySlotIndex(param0->partyManagementData->party, param1);

    if (Pokemon_GetEvolutionTargetSpecies(NULL, v0, EVO_CLASS_BY_ITEM, param0->partyManagementData->usedItemID, NULL) == 0) {
        sub_02082810(param0, param1, 1);
    } else {
        sub_02082810(param0, param1, 0);
    }
}

void sub_020823C4(GameWindowLayout *param0, u8 param1)
{
    Pokemon *v0;
    u8 v1;

    Window_FillTilemap(&param0->unk_04[0 + param1 * 5], 0);
    Window_FillTilemap(&param0->unk_04[1 + param1 * 5], 0);
    sub_02081F2C(param0, param1);

    if (param0->unk_704[param1].unk_10 == 1) {
        sub_02082880(param0, param1, 1);
        return;
    }

    sub_02081FFC(param0, param1);

    v0 = Party_GetPokemonBySlotIndex(param0->partyManagementData->party, param1);
    v1 = sub_02086104(param0, v0);

    if (v1 == 0xff) {
        sub_02082880(param0, param1, 1);
    } else if (v1 == 0xfd) {
        sub_02082880(param0, param1, 2);
    } else {
        sub_02082880(param0, param1, 0);
    }
}

void sub_0208245C(GameWindowLayout *param0, u8 param1)
{
    Pokemon *v0;
    u8 v1;

    Window_FillTilemap(&param0->unk_04[0 + param1 * 5], 0);
    Window_FillTilemap(&param0->unk_04[1 + param1 * 5], 0);
    sub_02081F2C(param0, param1);

    if (param0->unk_704[param1].unk_10 != 1) {
        sub_02081FFC(param0, param1);
    }

    sub_02082900(param0, param1, (u8)param0->unk_704[param1].unk_0E_15);
}

void sub_020824C0(GameWindowLayout *param0, u8 param1)
{
    Pokemon *v0;
    u8 v1;

    Window_FillTilemap(&param0->unk_04[0 + param1 * 5], 0);
    Window_FillTilemap(&param0->unk_04[1 + param1 * 5], 0);
    sub_02081F2C(param0, param1);

    if (param0->unk_704[param1].unk_10 != 1) {
        sub_02081FFC(param0, param1);
    }
}

void sub_02082508(GameWindowLayout *param0, u8 param1)
{
    u8 v0;

    for (v0 = 0; v0 < param0->partyManagementData->unk_32_4; v0++) {
        if (param0->partyManagementData->unk_2C[v0] == param1 + 1) {
            sub_02082964(param0, param1, v0);
            return;
        }
    }

    if (param0->partyManagementData->unk_20 == 22) {
        if (sub_02080404(param0, param1) == 0) {
            sub_02082964(param0, param1, 8);
            return;
        }
    } else if (param0->partyManagementData->unk_20 == 23) {
        if (sub_02080488(param0, param1) == 0) {
            sub_02082964(param0, param1, 8);
            return;
        }
    } else {
        if (sub_02080354(param0, param1) == 0) {
            sub_02082964(param0, param1, 8);
            return;
        }
    }

    sub_02082964(param0, param1, 7);
}

static u32 sub_020825A4(int param0, const Strbuf *param1, u32 param2)
{
    u32 v0 = Font_CalcStrbufWidth(param0, param1, 0);

    return (param2 - v0) >> 1;
}

void sub_020825B4(GameWindowLayout *param0, u8 param1)
{
    u32 v0;

    Window_FillTilemap(&param0->unk_04[30], 0);
    Window_FillTilemap(&param0->unk_04[31], 0);

    if (param1 & 1) {
        MessageLoader_GetStrbuf(param0->messageLoader, 0, param0->unk_6A8);
        v0 = sub_020825A4(0, param0->unk_6A8, param0->unk_04[30].width * 8);
        Text_AddPrinterWithParamsAndColor(&param0->unk_04[30], FONT_SYSTEM, param0->unk_6A8, v0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
        Window_ScheduleCopyToVRAM(&param0->unk_04[30]);
    }

    if (param1 & 2) {
        MessageLoader_GetStrbuf(param0->messageLoader, 1, param0->unk_6A8);
        v0 = sub_020825A4(0, param0->unk_6A8, param0->unk_04[31].width * 8);
        Text_AddPrinterWithParamsAndColor(&param0->unk_04[31], FONT_SYSTEM, param0->unk_6A8, v0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
        Window_ScheduleCopyToVRAM(&param0->unk_04[31]);
    }
}

static void sub_02082680(GameWindowLayout *param0, Window *param1, u32 param2, u8 param3)
{
    if (param3 == 1) {
        Window_DrawMessageBoxWithScrollCursor(param1, 1, (1 + 9), 15);
    }

    Window_FillTilemap(param1, 15);

    if (param2 != 0xffffffff) {
        MessageLoader_GetStrbuf(param0->messageLoader, param2, param0->unk_6A4);
    }

    Text_AddPrinterWithParams(param1, FONT_MESSAGE, param0->unk_6A4, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(param1);
}

void sub_020826E0(GameWindowLayout *param0, u32 param1, u8 param2)
{
    sub_02082680(param0, &param0->unk_04[32], param1, param2);
}

void sub_020826F4(GameWindowLayout *param0, u32 param1, u8 param2)
{
    sub_02082680(param0, &param0->unk_04[33], param1, param2);
}

void sub_02082708(GameWindowLayout *param0, u32 param1, u8 param2)
{
    Window *v0 = &param0->unk_04[34];

    if (param2 == 1) {
        Window_DrawMessageBoxWithScrollCursor(v0, 1, (1 + 9), 15);
    }

    Window_FillTilemap(v0, 15);

    if (param1 != 0xffffffff) {
        MessageLoader_GetStrbuf(param0->messageLoader, param1, param0->unk_6A4);
    }

    sub_0208274C(param0);
}

void sub_0208274C(GameWindowLayout *param0)
{
    RenderControlFlags_SetCanABSpeedUpPrint(1);
    RenderControlFlags_SetAutoScrollFlags(0);
    param0->textPrinterID = Text_AddPrinterWithParams(
        &param0->unk_04[34], FONT_MESSAGE, param0->unk_6A4, 0, 0, Options_TextFrameDelay(param0->partyManagementData->options), sub_0208279C);
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

void sub_020827EC(GameWindowLayout *param0)
{
    param0->unk_700 = Menu_MakeYesNoChoice(
        param0->unk_00, &Unk_020F1E98, 1, 14, 12);
}

static void sub_02082810(GameWindowLayout *param0, u8 param1, u8 param2)
{
    Window *v0;
    Strbuf *v1;

    v0 = &param0->unk_04[4 + param1 * 5];

    Window_FillTilemap(v0, 0);

    switch (param2) {
    case 0:
        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 178);
        break;
    case 1:
        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 179);
        break;
    }

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);
    Window_ScheduleCopyToVRAM(v0);
}

static void sub_02082880(GameWindowLayout *param0, u8 param1, u8 param2)
{
    Window *v0;
    Strbuf *v1;

    v0 = &param0->unk_04[4 + param1 * 5];

    Window_FillTilemap(v0, 0);

    switch (param2) {
    case 0:
        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 175);
        break;
    case 1:
        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 176);
        break;
    case 2:
        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 177);
        break;
    }

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);
    Window_ScheduleCopyToVRAM(v0);
}

static void sub_02082900(GameWindowLayout *param0, u8 param1, u8 param2)
{
    Window *v0;
    Strbuf *v1;

    v0 = &param0->unk_04[4 + param1 * 5];

    Window_FillTilemap(v0, 0);

    if (param2 == 0) {
        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 181);
    } else {
        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 180);
    }

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);
    Window_ScheduleCopyToVRAM(v0);
}

static void sub_02082964(GameWindowLayout *param0, u8 param1, u8 param2)
{
    Window *v0;
    Strbuf *v1;

    v0 = &param0->unk_04[4 + param1 * 5];

    Window_FillTilemap(v0, 0);

    if (param2 < 6) {
        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 169 + param2);
    } else if (param2 == 7) {
        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 167);
    } else {
        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 168);
    }

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);
    Window_ScheduleCopyToVRAM(v0);
}

void sub_020829DC(GameWindowLayout *param0)
{
    Pokemon *v0;
    Strbuf *v1;
    u32 v2;
    u16 v3[6];

    v0 = Party_GetPokemonBySlotIndex(param0->partyManagementData->party, param0->partySlot);

    v3[0] = (u16)Pokemon_GetValue(v0, MON_DATA_MAX_HP, NULL);
    v3[1] = (u16)Pokemon_GetValue(v0, MON_DATA_ATK, NULL);
    v3[2] = (u16)Pokemon_GetValue(v0, MON_DATA_DEF, NULL);
    v3[3] = (u16)Pokemon_GetValue(v0, MON_DATA_SP_ATK, NULL);
    v3[4] = (u16)Pokemon_GetValue(v0, MON_DATA_SP_DEF, NULL);
    v3[5] = (u16)Pokemon_GetValue(v0, MON_DATA_SPEED, NULL);

    Window_Add(param0->unk_00, &param0->unk_254[0], 0, 1, 1, 14, 12, 0, 576);
    Window_DrawStandardFrame(&param0->unk_254[0], 1, 1, 14);
    Window_FillTilemap(&param0->unk_254[0], 15);

    for (v2 = 0; v2 < 6; v2++) {
        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 185 + v2);
        Text_AddPrinterWithParams(&param0->unk_254[0], FONT_SYSTEM, v1, 0, 16 * v2, TEXT_SPEED_NO_TRANSFER, NULL);
        Strbuf_Free(v1);

        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 191);

        StringTemplate_SetNumber(param0->template, 0, v3[v2] - param0->monStats[v2], 2, 0, 1);
        StringTemplate_Format(param0->template, param0->unk_6A4, v1);
        Strbuf_Free(v1);

        {
            u32 v4 = 14 * 8 - 8 - Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_6A4, 0);
            Text_AddPrinterWithParams(&param0->unk_254[0], FONT_SYSTEM, param0->unk_6A4, v4, 16 * v2, TEXT_SPEED_NO_TRANSFER, NULL);
        }

        param0->monStats[v2] = v3[v2];
    }

    Window_ScheduleCopyToVRAM(&param0->unk_254[0]);
}

void sub_02082B58(GameWindowLayout *param0)
{
    Strbuf *v0;
    u32 v1;
    u32 v2;

    Window_FillRectWithColor(&param0->unk_254[0], 15, 80, 0, 32, 14 * 8);
    v0 = MessageLoader_GetNewStrbuf(param0->messageLoader, 192);

    for (v2 = 0; v2 < 6; v2++) {
        StringTemplate_SetNumber(param0->template, 0, param0->monStats[v2], 3, 0, 1);
        StringTemplate_Format(param0->template, param0->unk_6A4, v0);

        v1 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_6A4, 0);

        Text_AddPrinterWithParams(&param0->unk_254[0], 0, param0->unk_6A4, 14 * 8 - v1 - 8, 16 * v2, 0xff, NULL);
    }

    Strbuf_Free(v0);
    Window_ScheduleCopyToVRAM(&param0->unk_254[0]);
}

void sub_02082C10(GameWindowLayout *param0)
{
    Window_EraseStandardFrame(&param0->unk_254[0], 0);
    Window_Remove(&param0->unk_254[0]);
}
