#include "overlay013/ov13_02221A88.h"

#include <nitro.h>
#include <string.h>

#include "applications/pokemon_summary_screen/main.h"
#include "battle/ov16_0223DF00.h"
#include "overlay013/battle_party.h"

#include "bg_window.h"
#include "font.h"
#include "font_special_chars.h"
#include "heap.h"
#include "item.h"
#include "message.h"
#include "move_table.h"
#include "party.h"
#include "pokemon.h"
#include "render_text.h"
#include "render_window.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_0208C098.h"
#include "unk_02094EDC.h"

static void ov13_0222339C(BattleParty *param0);
static void ov13_022234C8(BattleParty *param0);
static void ov13_022237F8(BattleParty *param0);
static void ov13_022236B8(BattleParty *param0);
static void ov13_02223A10(BattleParty *param0);
static void ov13_02223E68(BattleParty *param0);
static void ov13_02223B74(BattleParty *param0);
static void ov13_02223C9C(BattleParty *param0);
static void ov13_02223F7C(BattleParty *param0);
static void ov13_02223550(BattleParty *param0, u32 param1);

static const WindowTemplate Unk_ov13_02228EA0[] = {
    { 0x4, 0x2, 0x15, 0x16, 0x2, 0xF, 0x1F },
    { 0x4, 0x2, 0x13, 0x1B, 0x4, 0xF, 0x1F }
};

static const WindowTemplate Unk_ov13_02228F54[] = {
    { 0x5, 0x0, 0x0, 0xF, 0x5, 0x9, 0x85 },
    { 0x5, 0x10, 0x1, 0xF, 0x5, 0x9, 0xD0 },
    { 0x5, 0x0, 0x6, 0xF, 0x5, 0x9, 0x11B },
    { 0x5, 0x10, 0x7, 0xF, 0x5, 0x9, 0x166 },
    { 0x5, 0x0, 0xC, 0xF, 0x5, 0x9, 0x1B1 },
    { 0x5, 0x10, 0xD, 0xF, 0x5, 0x9, 0x1FC }
};

static const WindowTemplate Unk_ov13_02228EDC[] = {
    { 0x5, 0xA, 0x4, 0xC, 0x3, 0x9, 0x1 },
    { 0x5, 0xB, 0xC, 0xA, 0x3, 0x9, 0x25 },
    { 0x5, 0x1, 0x14, 0xB, 0x3, 0x9, 0x43 },
    { 0x5, 0xE, 0x14, 0xB, 0x3, 0x9, 0x64 }
};

static const WindowTemplate Unk_ov13_02228FBC[] = {
    { 0x5, 0x5, 0x1, 0x9, 0x2, 0xD, 0x125 },
    { 0x5, 0x1, 0x6, 0xE, 0x5, 0x9, 0x149 },
    { 0x5, 0x11, 0x6, 0xE, 0x5, 0x9, 0x18F },
    { 0x5, 0x1, 0xC, 0xE, 0x5, 0x9, 0x1D5 },
    { 0x5, 0x11, 0xC, 0xE, 0x5, 0x9, 0x21B },
    { 0x5, 0xD, 0x14, 0xB, 0x3, 0x9, 0x104 },
    { 0x5, 0x5, 0x1, 0x9, 0x2, 0xD, 0x137 },
    { 0x5, 0x1, 0x6, 0xE, 0x5, 0x9, 0x261 },
    { 0x5, 0x11, 0x6, 0xE, 0x5, 0x9, 0x2A7 },
    { 0x5, 0x1, 0xC, 0xE, 0x5, 0x9, 0x2ED },
    { 0x5, 0x11, 0xC, 0xE, 0x5, 0x9, 0x333 }
};

static const WindowTemplate Unk_ov13_022290FC[] = {
    { 0x5, 0x5, 0x1, 0x9, 0x2, 0xD, 0x125 },
    { 0x5, 0x1, 0x9, 0xB, 0x2, 0xD, 0x149 },
    { 0x5, 0x1, 0xB, 0x12, 0x4, 0xD, 0x15F },
    { 0x5, 0x4, 0x10, 0xC, 0x2, 0xD, 0x1A7 },
    { 0x5, 0x18, 0x4, 0x7, 0x2, 0xD, 0x1BF },
    { 0x5, 0x1C, 0x7, 0x3, 0x2, 0xD, 0x1CD },
    { 0x5, 0x1C, 0x9, 0x3, 0x2, 0xD, 0x1D3 },
    { 0x5, 0x1C, 0xF, 0x3, 0x2, 0xD, 0x1D9 },
    { 0x5, 0x1C, 0xB, 0x3, 0x2, 0xD, 0x1DF },
    { 0x5, 0x1C, 0xD, 0x3, 0x2, 0xD, 0x1E5 },
    { 0x5, 0x19, 0x6, 0x6, 0x1, 0x9, 0x1EB },
    { 0x5, 0x5, 0x4, 0x3, 0x2, 0xD, 0x1F1 },
    { 0x5, 0xD, 0x6, 0x6, 0x2, 0xD, 0x1F7 },
    { 0x5, 0x15, 0x4, 0x2, 0x2, 0xD, 0x85 },
    { 0x5, 0x15, 0x7, 0x6, 0x2, 0xD, 0x89 },
    { 0x5, 0x15, 0x9, 0x6, 0x2, 0xD, 0x95 },
    { 0x5, 0x15, 0xF, 0x6, 0x2, 0xD, 0xA1 },
    { 0x5, 0x15, 0xB, 0x6, 0x2, 0xD, 0xAD },
    { 0x5, 0x15, 0xD, 0x6, 0x2, 0xD, 0xB9 },
    { 0x5, 0x1, 0x4, 0x4, 0x2, 0xD, 0xC5 },
    { 0x5, 0x1, 0x6, 0xB, 0x2, 0xD, 0xCD },
    { 0x5, 0xD, 0x14, 0xB, 0x3, 0x9, 0xE3 },
    { 0x5, 0x5, 0x1, 0x9, 0x2, 0xD, 0x137 },
    { 0x5, 0x1, 0x9, 0xB, 0x2, 0xD, 0x261 },
    { 0x5, 0x1, 0xB, 0x12, 0x4, 0xD, 0x277 },
    { 0x5, 0x4, 0x10, 0xC, 0x2, 0xD, 0x2BF },
    { 0x5, 0x18, 0x4, 0x7, 0x2, 0xD, 0x2D7 },
    { 0x5, 0x1C, 0x7, 0x3, 0x2, 0xD, 0x2E5 },
    { 0x5, 0x1C, 0x9, 0x3, 0x2, 0xD, 0x2EB },
    { 0x5, 0x1C, 0xF, 0x3, 0x2, 0xD, 0x2F1 },
    { 0x5, 0x1C, 0xB, 0x3, 0x2, 0xD, 0x2F7 },
    { 0x5, 0x1C, 0xD, 0x3, 0x2, 0xD, 0x2FD },
    { 0x5, 0x19, 0x6, 0x6, 0x1, 0x9, 0x303 },
    { 0x5, 0x5, 0x4, 0x3, 0x2, 0xD, 0x309 },
    { 0x5, 0xD, 0x6, 0x6, 0x2, 0xD, 0x30F }
};

static const WindowTemplate Unk_ov13_02229074[] = {
    { 0x4, 0x4, 0x5, 0xB, 0x2, 0xD, 0x9D },
    { 0x4, 0x17, 0x5, 0x5, 0x2, 0xD, 0xB7 },
    { 0x4, 0xA, 0x10, 0x3, 0x2, 0xD, 0xE1 },
    { 0x4, 0xA, 0xD, 0x3, 0x2, 0xD, 0xE7 },
    { 0x4, 0x10, 0x8, 0xF, 0xA, 0xD, 0xED },
    { 0x4, 0x6, 0xA, 0x8, 0x2, 0xD, 0x19B },
    { 0x4, 0x5, 0x1, 0x9, 0x2, 0xD, 0x8B },
    { 0x4, 0x14, 0x5, 0x2, 0x2, 0xD, 0xB3 },
    { 0x4, 0x1, 0x10, 0x8, 0x2, 0xD, 0xC1 },
    { 0x4, 0x1, 0xD, 0x8, 0x2, 0xD, 0xD1 },
    { 0x4, 0x1, 0x8, 0xC, 0x2, 0xD, 0x183 },
    { 0x4, 0x4, 0x5, 0xB, 0x2, 0xD, 0x1AB },
    { 0x4, 0x17, 0x5, 0x5, 0x2, 0xD, 0x1C1 },
    { 0x4, 0xA, 0x10, 0x3, 0x2, 0xD, 0x1CB },
    { 0x4, 0xA, 0xD, 0x3, 0x2, 0xD, 0x1D1 },
    { 0x4, 0x10, 0x8, 0xF, 0xA, 0xD, 0x1D7 },
    { 0x4, 0x6, 0xA, 0x8, 0x2, 0xD, 0x26D }
};

static const WindowTemplate Unk_ov13_02228F24[] = {
    { 0x4, 0x5, 0x1, 0x9, 0x2, 0xD, 0x85 },
    { 0x4, 0x1, 0x6, 0xE, 0x5, 0x9, 0x97 },
    { 0x4, 0x11, 0x6, 0xE, 0x5, 0x9, 0xDD },
    { 0x4, 0x1, 0xC, 0xE, 0x5, 0x9, 0x123 },
    { 0x4, 0x11, 0xC, 0xE, 0x5, 0x9, 0x169 },
    { 0x4, 0x9, 0x12, 0xE, 0x5, 0x9, 0x1AF }
};

static const WindowTemplate Unk_ov13_02229014[] = {
    { 0x5, 0x5, 0x1, 0x9, 0x2, 0xD, 0x1 },
    { 0x5, 0x4, 0x5, 0xB, 0x2, 0xD, 0x13 },
    { 0x5, 0x14, 0x5, 0x2, 0x2, 0xD, 0x29 },
    { 0x5, 0x17, 0x5, 0x5, 0x2, 0xD, 0x2D },
    { 0x5, 0x1, 0x10, 0x8, 0x2, 0xD, 0x5B },
    { 0x5, 0x1, 0xD, 0x8, 0x2, 0xD, 0x6B },
    { 0x5, 0xA, 0x10, 0x3, 0x2, 0xD, 0x7B },
    { 0x5, 0xA, 0xD, 0x3, 0x2, 0xD, 0x81 },
    { 0x5, 0x10, 0x8, 0xF, 0xA, 0xD, 0x87 },
    { 0x5, 0x1, 0x8, 0xC, 0x2, 0xD, 0x11D },
    { 0x5, 0x6, 0xA, 0x8, 0x2, 0xD, 0x135 },
    { 0x5, 0x7, 0x14, 0xC, 0x3, 0x9, 0x37 }
};

static const WindowTemplate Unk_ov13_02228EFC[] = {
    { 0x4, 0x5, 0x1, 0x9, 0x2, 0xD, 0x8B },
    { 0x4, 0x1, 0x6, 0xE, 0x5, 0x9, 0x9D },
    { 0x4, 0x11, 0x6, 0xE, 0x5, 0x9, 0xE3 },
    { 0x4, 0x1, 0xC, 0xE, 0x5, 0x9, 0x129 },
    { 0x4, 0x11, 0xC, 0xE, 0x5, 0x9, 0x16F }
};

static const WindowTemplate Unk_ov13_02228F84[] = {
    { 0x5, 0x5, 0x1, 0x9, 0x2, 0xD, 0x1 },
    { 0x5, 0x4, 0x8, 0xB, 0x2, 0xD, 0x13 },
    { 0x5, 0x14, 0x8, 0x2, 0x2, 0xD, 0x29 },
    { 0x5, 0x17, 0x8, 0x5, 0x2, 0xD, 0x2D },
    { 0x5, 0x2, 0xB, 0xC, 0x2, 0xD, 0x145 },
    { 0x5, 0x10, 0xB, 0xF, 0x6, 0xD, 0x15D },
    { 0x5, 0x7, 0x14, 0xC, 0x3, 0x9, 0x37 }
};

static const u32 Unk_ov13_02228EC4[] = {
    0x0,
    0x1,
    0x2,
    0x3,
    0x4,
    0x5
};

static const u32 Unk_ov13_02228EB0[] = {
    0x3D,
    0x40,
    0x43,
    0x46,
    0x49
};

void ov13_02221A88(BattleParty *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 2; v0++) {
        Window_AddFromTemplate(param0->background, &param0->messageBoxWindows[v0], &Unk_ov13_02228EA0[v0]);
    }

    ov13_02221AC4(param0, param0->currentScreen);
}

void ov13_02221AC4(BattleParty *param0, u32 param1)
{
    const WindowTemplate *v0;
    u8 v1;

    switch (param1) {
    case 0:
        v0 = Unk_ov13_02228F54;
        param0->unk_2070 = 6;
        break;
    case 1:
        v0 = Unk_ov13_02228EDC;
        param0->unk_2070 = 4;
        break;
    case 2:
        v0 = Unk_ov13_022290FC;
        param0->unk_2070 = 35;
        break;
    case 3:
        v0 = Unk_ov13_02228FBC;
        param0->unk_2070 = 11;
        break;
    case 4:
        v0 = Unk_ov13_02229074;
        param0->unk_2070 = 17;
        break;
    case 5:
        v0 = Unk_ov13_02228EFC;
        param0->unk_2070 = 5;
        break;
    case 6:
    case 8:
        v0 = Unk_ov13_02228F24;
        param0->unk_2070 = 6;
        break;
    case 7:
        v0 = Unk_ov13_02229014;
        param0->unk_2070 = 12;
        break;
    case 9:
        v0 = Unk_ov13_02228F84;
        param0->unk_2070 = 7;
        break;
    }

    param0->unk_206C = Window_New(param0->context->heapID, param0->unk_2070);

    for (v1 = 0; v1 < param0->unk_2070; v1++) {
        Window_AddFromTemplate(param0->background, &param0->unk_206C[v1], &v0[v1]);
    }
}

void ov13_02221BB0(BattleParty *param0)
{
    Windows_Delete(param0->unk_206C, param0->unk_2070);
}

void ov13_02221BC8(BattleParty *param0)
{
    u32 v0;

    Windows_Delete(param0->unk_206C, param0->unk_2070);

    for (v0 = 0; v0 < 2; v0++) {
        Window_Remove(&param0->messageBoxWindows[v0]);
    }
}

void ov13_02221BF8(BattleParty *param0, u32 param1)
{
    switch (param1) {
    case 0:
        ov13_0222339C(param0);
        break;
    case 1:
        ov13_022234C8(param0);
        break;
    case 2:
        ov13_022237F8(param0);
        break;
    case 3:
        ov13_022236B8(param0);
        break;
    case 4:
        ov13_02223A10(param0);
        break;
    case 5:
        ov13_02223E68(param0);
        break;
    case 6:
    case 8:
        ov13_02223B74(param0);
        break;
    case 7:
        ov13_02223C9C(param0);
        break;
    case 9:
        ov13_02223F7C(param0);
        break;
    }
}

static void ov13_02221C54(BattleParty *param0, u32 param1, u32 param2, u16 param3, u8 param4, u8 param5)
{
    Window *v0;
    BattlePartyPokemon *v1;
    Strbuf *v2;
    Strbuf *v3;
    u32 v4;

    v0 = &param0->unk_206C[param1];
    v1 = &param0->partyPokemon[param3];
    v2 = Strbuf_Init(12, param0->context->heapID);
    v3 = MessageLoader_GetNewStrbuf(param0->messageLoader, Unk_ov13_02228EC4[param3]);

    StringTemplate_SetNickname(param0->stringTemplate, 0, Pokemon_GetBoxPokemon(v1->pokemon));
    StringTemplate_Format(param0->stringTemplate, v2, v3);

    if (param2 == 0) {
        Text_AddPrinterWithParamsAndColor(v0, param2, v2, param4, param5, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    } else {
        Text_AddPrinterWithParamsAndColor(v0, param2, v2, param4, param5, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(7, 8, 9), NULL);
    }

    Strbuf_Free(v3);
    Strbuf_Free(v2);

    if ((v1->displayNidoranGender == 0) && (v1->isEgg == 0)) {
        if (v1->gender == 0) {
            v3 = MessageLoader_GetNewStrbuf(param0->messageLoader, 16);
            v4 = Window_GetWidth(v0) * 8 - Font_CalcStrbufWidth(FONT_SYSTEM, v3, 0);

            if (param2 == 0) {
                Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v3, v4, param5, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(7, 8, 0), NULL);
            } else {
                Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v3, v4, param5, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(10, 11, 0), NULL);
            }

            Strbuf_Free(v3);
        } else if (v1->gender == 1) {
            v3 = MessageLoader_GetNewStrbuf(param0->messageLoader, 17);
            v4 = Window_GetWidth(v0) * 8 - Font_CalcStrbufWidth(FONT_SYSTEM, v3, 0);

            if (param2 == 0) {
                Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v3, v4, param5, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 4, 0), NULL);
            } else {
                Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v3, v4, param5, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(12, 13, 0), NULL);
            }

            Strbuf_Free(v3);
        }
    }

    Window_ScheduleCopyToVRAM(v0);
}

static void ov13_02221E08(BattleParty *param0, u32 param1, u16 param2, u8 param3, u8 param4)
{
    BattlePartyPokemon *v0 = &param0->partyPokemon[param2];

    FontSpecialChars_DrawPartyScreenText(param0->unk_1FA0, 1, v0->level, 3, 0, &param0->unk_206C[param1], param3 + 8, param4);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[param1]);
}

static void ov13_02221E50(BattleParty *param0, u32 param1, u16 param2, u8 param3, u8 param4)
{
    BattlePartyPokemon *v0 = &param0->partyPokemon[param2];

    FontSpecialChars_DrawPartyScreenHPText(param0->unk_1FA0, v0->curHP, 3, 1, &param0->unk_206C[param1], param3, param4);
    FontSpecialChars_DrawPartyScreenLevelText(param0->unk_1FA0, 0, &param0->unk_206C[param1], param3 + 8 * 3, param4);
    FontSpecialChars_DrawPartyScreenHPText(param0->unk_1FA0, v0->maxHP, 3, 0, &param0->unk_206C[param1], param3 + 8 * 3 + 8, param4);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[param1]);
}

static void ov13_02221ED0(BattleParty *param0, u32 param1, u16 param2, u8 param3, u8 param4)
{
    BattlePartyPokemon *v0;
    u8 v1 = 1;
    u8 v2;

    v0 = &param0->partyPokemon[param2];
    v1 = 1;
    v2 = App_PixelCount(v0->curHP, v0->maxHP, 48);

    switch (HealthBar_Color(v0->curHP, v0->maxHP, 48)) {
    case 0:
        Window_ScheduleCopyToVRAM(&param0->unk_206C[param1]);
        return;
    case 4:
    case 3:
        v1 = 1;
        break;
    case 2:
        v1 = 3;
        break;
    case 1:
        v1 = 5;
        break;
    }

    Window_FillRectWithColor(&param0->unk_206C[param1], v1 + 1, param3, param4 + 1, v2, 1);
    Window_FillRectWithColor(&param0->unk_206C[param1], v1, param3, param4 + 2, v2, 2);
    Window_FillRectWithColor(&param0->unk_206C[param1], v1 + 1, param3, param4 + 4, v2, 1);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[param1]);
}

static void ov13_02221FA8(BattleParty *param0, u32 param1, u32 param2)
{
    BattlePartyPokemon *v0 = &param0->partyPokemon[param2];
    Strbuf *v1 = Strbuf_Init(16, param0->context->heapID);
    Strbuf *v2 = MessageLoader_GetNewStrbuf(param0->messageLoader, 8);

    StringTemplate_SetAbilityName(param0->stringTemplate, 0, v0->ability);
    StringTemplate_Format(param0->stringTemplate, v1, v2);
    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[param1], FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v2);
    Strbuf_Free(v1);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[param1]);
}

static void ov13_02222030(BattleParty *param0, u32 param1, u32 param2)
{
    BattlePartyPokemon *v0;
    Strbuf *v1;
    Strbuf *v2;

    v0 = &param0->partyPokemon[param2];

    if (v0->heldItem == 0) {
        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 20);
    } else {
        v1 = Strbuf_Init(18, param0->context->heapID);
        v2 = MessageLoader_GetNewStrbuf(param0->messageLoader, 9);

        StringTemplate_SetItemName(param0->stringTemplate, 0, v0->heldItem);
        StringTemplate_Format(param0->stringTemplate, v1, v2);
        Strbuf_Free(v2);
    }

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[param1], FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[param1]);
}

static void ov13_022220CC(BattleParty *param0, u32 param1, u32 param2, u32 param3, u16 param4, u16 param5, TextColor param6)
{
    Window *v0;
    Strbuf *v1;
    Strbuf *v2;
    u32 v3;

    v0 = &param0->unk_206C[param2];
    v1 = Strbuf_Init(16, param0->context->heapID);
    v2 = MessageLoader_GetNewStrbuf(param0->messageLoader, param3);

    StringTemplate_SetMoveName(param0->stringTemplate, 0, param1);
    StringTemplate_Format(param0->stringTemplate, v1, v2);

    if (param4 == 2) {
        v3 = (Window_GetWidth(v0) * 8 - Font_CalcStrbufWidth(param4, v1, 0)) / 2;
    } else {
        v3 = 0;
    }

    Text_AddPrinterWithParamsAndColor(v0, param4, v1, v3, param5, TEXT_SPEED_NO_TRANSFER, param6, NULL);
    Strbuf_Free(v2);
    Strbuf_Free(v1);
    Window_ScheduleCopyToVRAM(v0);
}

static void ov13_02222170(BattleParty *param0, u16 param1, u8 param2, u8 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->messageLoader, 14);

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[param1], FONT_SYSTEM, v0, param2, param3, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v0);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[param1]);
}

static void ov13_022221C8(BattleParty *param0, u32 param1)
{
    Strbuf *v0;

    Window_DrawMessageBoxWithScrollCursor(&param0->messageBoxWindows[0], 1, 1, 14);
    Window_FillTilemap(&param0->messageBoxWindows[0], 15);

    v0 = MessageLoader_GetNewStrbuf(param0->messageLoader, param1);

    Text_AddPrinterWithParamsAndColor(&param0->messageBoxWindows[0], FONT_MESSAGE, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
    Window_ScheduleCopyToVRAM(&param0->messageBoxWindows[0]);
}

static void ov13_0222222C(BattleParty *param0, u32 param1, u32 param2)
{
    Window *v0;
    Strbuf *v1;
    u32 v2;

    v0 = &param0->unk_206C[param1];
    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, param2);
    v2 = Font_CalcStrbufWidth(FONT_SUBSCREEN, v1, 0);

    Text_AddPrinterWithParamsAndColor(v0, FONT_SUBSCREEN, v1, (Window_GetWidth(v0) * 8 - v2) / 2, 6, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(7, 8, 9), NULL);
    Strbuf_Free(v1);
    Window_ScheduleCopyToVRAM(v0);
}

static void ov13_02222290(BattleParty *param0, u32 param1)
{
    BattlePartyPokemon *v0;
    Strbuf *v1;
    Strbuf *v2;
    u16 v3;
    u16 v4;

    v0 = &param0->partyPokemon[param1];
    v4 = 22 * param0->unk_2071;
    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 23);

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[19], FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 24);
    v2 = Strbuf_Init((3 + 1) * 2, param0->context->heapID);

    StringTemplate_SetNumber(param0->stringTemplate, 0, v0->level, 3, 0, 1);
    StringTemplate_Format(param0->stringTemplate, v2, v1);
    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[11 + v4], FONT_SYSTEM, v2, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v2);

    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 25);

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[20], FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 26);
    v2 = Strbuf_Init((6 + 1) * 2, param0->context->heapID);

    if (v0->level < 100) {
        StringTemplate_SetNumber(
            param0->stringTemplate, 0, v0->nextLevelExp - v0->exp, 6, 1, 1);
    } else {
        StringTemplate_SetNumber(
            param0->stringTemplate, 0, 0, 6, 1, 1);
    }

    StringTemplate_Format(param0->stringTemplate, v2, v1);

    v3 = Window_GetWidth(&param0->unk_206C[12 + v4]) * 8 - Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[12 + v4], FONT_SYSTEM, v2, v3, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v2);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[19]);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[11 + v4]);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[20]);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[12 + v4]);
}

static void ov13_02222464(BattleParty *param0, u32 param1)
{
    BattlePartyPokemon *v0;
    Strbuf *v1;
    Strbuf *v2;
    u16 v3;
    u8 v4;
    u8 v5;

    v0 = &param0->partyPokemon[param1];
    v3 = 22 * param0->unk_2071;
    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 32);

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[14], FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 33);
    v2 = Strbuf_Init((3 + 1) * 2, param0->context->heapID);

    StringTemplate_SetNumber(param0->stringTemplate, 0, v0->attack, 3, 0, 1);
    StringTemplate_Format(param0->stringTemplate, v2, v1);

    v4 = Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);
    v5 = Window_GetWidth(&param0->unk_206C[5 + v3]) * 8 - v4;

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[5 + v3], FONT_SYSTEM, v2, v5, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v2);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[14]);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[5 + v3]);
}

static void ov13_02222560(BattleParty *param0, u32 param1)
{
    BattlePartyPokemon *v0;
    Strbuf *v1;
    Strbuf *v2;
    u16 v3;
    u8 v4;
    u8 v5;

    v0 = &param0->partyPokemon[param1];
    v3 = 22 * param0->unk_2071;
    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 34);

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[15], FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 35);
    v2 = Strbuf_Init((3 + 1) * 2, param0->context->heapID);

    StringTemplate_SetNumber(param0->stringTemplate, 0, v0->defence, 3, 0, 1);
    StringTemplate_Format(param0->stringTemplate, v2, v1);

    v4 = Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);
    v5 = Window_GetWidth(&param0->unk_206C[6 + v3]) * 8 - v4;

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[6 + v3], FONT_SYSTEM, v2, v5, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v2);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[15]);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[6 + v3]);
}

static void ov13_0222265C(BattleParty *param0, u32 param1)
{
    BattlePartyPokemon *v0;
    Strbuf *v1;
    Strbuf *v2;
    u16 v3;
    u8 v4;
    u8 v5;

    v0 = &param0->partyPokemon[param1];
    v3 = 22 * param0->unk_2071;
    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 40);

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[16], FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 41);
    v2 = Strbuf_Init((3 + 1) * 2, param0->context->heapID);

    StringTemplate_SetNumber(param0->stringTemplate, 0, v0->speed, 3, 0, 1);
    StringTemplate_Format(param0->stringTemplate, v2, v1);

    v4 = Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);
    v5 = Window_GetWidth(&param0->unk_206C[7 + v3]) * 8 - v4;

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[7 + v3], FONT_SYSTEM, v2, v5, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v2);

    Window_ScheduleCopyToVRAM(&param0->unk_206C[16]);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[7 + v3]);
}

static void ov13_0222275C(BattleParty *param0, u32 param1)
{
    BattlePartyPokemon *v0;
    Strbuf *v1;
    Strbuf *v2;
    u16 v3;
    u8 v4;
    u8 v5;

    v0 = &param0->partyPokemon[param1];
    v3 = 22 * param0->unk_2071;
    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 36);

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[17], FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 37);
    v2 = Strbuf_Init((3 + 1) * 2, param0->context->heapID);

    StringTemplate_SetNumber(param0->stringTemplate, 0, v0->spAtk, 3, 0, 1);
    StringTemplate_Format(param0->stringTemplate, v2, v1);

    v4 = Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);
    v5 = Window_GetWidth(&param0->unk_206C[8 + v3]) * 8 - v4;

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[8 + v3], FONT_SYSTEM, v2, v5, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v2);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[17]);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[8 + v3]);
}

static void ov13_0222285C(BattleParty *param0, u32 param1)
{
    BattlePartyPokemon *v0;
    Strbuf *v1;
    Strbuf *v2;
    u16 v3;
    u8 v4;
    u8 v5;

    v0 = &param0->partyPokemon[param1];
    v3 = 22 * param0->unk_2071;
    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 38);

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[18], FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 39);
    v2 = Strbuf_Init((3 + 1) * 2, param0->context->heapID);

    StringTemplate_SetNumber(param0->stringTemplate, 0, v0->spDef, 3, 0, 1);
    StringTemplate_Format(param0->stringTemplate, v2, v1);

    v4 = Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);
    v5 = Window_GetWidth(&param0->unk_206C[9 + v3]) * 8 - v4;

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[9 + v3], FONT_SYSTEM, v2, v5, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v2);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[18]);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[9 + v3]);
}

static void ov13_0222295C(BattleParty *param0, u32 param1)
{
    BattlePartyPokemon *v0;
    Strbuf *v1;
    Strbuf *v2;
    u32 v3, v4;
    u16 v5;
    u16 v6;

    v0 = &param0->partyPokemon[param1];
    v6 = 22 * param0->unk_2071;
    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 28);

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[13], FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 31);
    v3 = Font_CalcStrbufWidth(FONT_SYSTEM, v1, 0);
    v5 = (Window_GetWidth(&param0->unk_206C[4]) * 8 - v3) / 2;

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[4 + v6], FONT_SYSTEM, v1, v5, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 29);
    v2 = Strbuf_Init((3 + 1) * 2, param0->context->heapID);

    StringTemplate_SetNumber(param0->stringTemplate, 0, v0->curHP, 3, 0, 1);
    StringTemplate_Format(param0->stringTemplate, v2, v1);

    v4 = Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[4 + v6], FONT_SYSTEM, v2, v5 - v4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v2);

    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 30);
    v2 = Strbuf_Init((3 + 1) * 2, param0->context->heapID);

    StringTemplate_SetNumber(param0->stringTemplate, 0, v0->maxHP, 3, 0, 1);
    StringTemplate_Format(param0->stringTemplate, v2, v1);
    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[4 + v6], FONT_SYSTEM, v2, v5 + v3, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v2);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[13]);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[4 + v6]);
}

static void ov13_02222AF4(BattleParty *param0, u32 param1)
{
    BattlePartyPokemon *v0;
    MessageLoader *v1;
    Strbuf *v2;
    u32 v3;

    v0 = &param0->partyPokemon[param1];
    v3 = 22 * param0->unk_2071;
    v1 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_ABILITY_DESCRIPTIONS, param0->context->heapID);
    v2 = MessageLoader_GetNewStrbuf(v1, v0->ability);

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[2 + v3], FONT_SYSTEM, v2, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v2);
    MessageLoader_Free(v1);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[2 + v3]);
}

static void ov13_02222B6C(BattleParty *param0, u32 param1)
{
    Window *v0 = &param0->unk_206C[param1];
    Strbuf *v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 51);

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);
    Window_ScheduleCopyToVRAM(v0);
}

static void ov13_02222BB4(BattleParty *param0, u32 param1, u32 param2)
{
    Window *v0;
    Strbuf *v1;
    Strbuf *v2;
    u16 v3;
    u16 v4;

    v0 = &param0->unk_206C[param1];

    if (param2 == 0) {
        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 50);
        v3 = Font_CalcStrbufWidth(FONT_SYSTEM, v1, 0);
        v4 = Window_GetWidth(v0) * 8 - v3;

        Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, v4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        Strbuf_Free(v1);
    } else {
        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 52);
        v2 = Strbuf_Init((3 + 1) * 2, param0->context->heapID);

        StringTemplate_SetNumber(param0->stringTemplate, 0, param2, 3, 0, 1);
        StringTemplate_Format(param0->stringTemplate, v2, v1);

        v3 = Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);
        v4 = Window_GetWidth(v0) * 8 - v3;

        Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v2, v4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        Strbuf_Free(v1);
        Strbuf_Free(v2);
    }

    Window_ScheduleCopyToVRAM(v0);
}

static void ov13_02222C9C(BattleParty *param0, u32 param1)
{
    Window *v0 = &param0->unk_206C[param1];
    Strbuf *v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 48);

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);
    Window_ScheduleCopyToVRAM(v0);
}

static void ov13_02222CE4(BattleParty *param0, u32 param1, u32 param2)
{
    Window *v0;
    Strbuf *v1;
    Strbuf *v2;
    u16 v3;
    u16 v4;

    v0 = &param0->unk_206C[param1];

    if (param2 <= 1) {
        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 50);
        v3 = Font_CalcStrbufWidth(FONT_SYSTEM, v1, 0);
        v4 = Window_GetWidth(v0) * 8 - v3;

        Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, v4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        Strbuf_Free(v1);
    } else {
        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 49);
        v2 = Strbuf_Init((3 + 1) * 2, param0->context->heapID);

        StringTemplate_SetNumber(param0->stringTemplate, 0, param2, 3, 0, 1);
        StringTemplate_Format(param0->stringTemplate, v2, v1);

        v3 = Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);
        v4 = Window_GetWidth(v0) * 8 - v3;

        Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v2, v4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        Strbuf_Free(v1);
        Strbuf_Free(v2);
    }

    Window_ScheduleCopyToVRAM(v0);
}

static void ov13_02222DCC(BattleParty *param0, u32 param1, u32 param2)
{
    MessageLoader *v0;
    Window *v1;
    Strbuf *v2;

    v1 = &param0->unk_206C[param1];
    v0 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MOVE_DESCRIPTIONS, param0->context->heapID);
    v2 = MessageLoader_GetNewStrbuf(v0, param2);

    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v2, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v2);
    MessageLoader_Free(v0);
    Window_ScheduleCopyToVRAM(v1);
}

static void ov13_02222E2C(BattleParty *param0, u32 param1, u32 param2)
{
    MessageLoader *v0;
    Window *v1;
    Strbuf *v2;
    u32 v3;
    u32 v4;

    v1 = &param0->unk_206C[param1];
    v3 = MoveTable_LoadParam(param2, MOVEATTRIBUTE_CONTEST_EFFECT);
    v4 = sub_0209577C(v3);
    v0 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_CONTEST_EFFECTS, param0->context->heapID);
    v2 = MessageLoader_GetNewStrbuf(v0, v4);

    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v2, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v2);

    MessageLoader_Free(v0);
    Window_ScheduleCopyToVRAM(v1);
}

static void ov13_02222E94(BattleParty *param0, u32 param1)
{
    Window *v0;
    Strbuf *v1;
    u16 v2;
    u16 v3;

    v0 = &param0->unk_206C[param1];
    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 53);
    v2 = Font_CalcStrbufWidth(FONT_SYSTEM, v1, 0);
    v3 = (Window_GetWidth(v0) * 8 - v2) / 2;

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, v3, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);
    Window_ScheduleCopyToVRAM(v0);
}

static void ov13_02222EF8(BattleParty *param0, u32 param1, u32 param2)
{
    Window *v0;
    Strbuf *v1;

    v0 = &param0->unk_206C[param1];

    switch (param2) {
    case 0:
        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 54);
        break;
    case 1:
        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 56);
        break;
    case 2:
        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 55);
    }

    {
        u32 v2 = Font_CalcCenterAlignment(FONT_SYSTEM, v1, 0, 7 * 8);
        Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, v2, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }

    Strbuf_Free(v1);
    Window_ScheduleCopyToVRAM(v0);
}

static void ov13_02222F74(BattleParty *param0, u32 param1, u32 param2, u32 param3)
{
    Window *v0;
    Strbuf *v1;
    Strbuf *v2;
    u32 v3, v4;
    u32 v5;

    v0 = &param0->unk_206C[param1];
    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 46);
    v3 = Font_CalcStrbufWidth(FONT_SYSTEM, v1, 0);
    v5 = (Window_GetWidth(v0) * 8 - v3) / 2;

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, v5, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 44);
    v2 = Strbuf_Init((2 + 1) * 2, param0->context->heapID);

    StringTemplate_SetNumber(param0->stringTemplate, 0, param2, 3, 0, 1);
    StringTemplate_Format(param0->stringTemplate, v2, v1);

    v4 = Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v2, v5 - v4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v2);

    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 45);
    v2 = Strbuf_Init((2 + 1) * 2, param0->context->heapID);

    StringTemplate_SetNumber(param0->stringTemplate, 0, param3, 3, 0, 1);
    StringTemplate_Format(param0->stringTemplate, v2, v1);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v2, v5 + v3, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v2);
    Window_ScheduleCopyToVRAM(v0);
}

static void ov13_022230A8(BattleParty *param0, u32 param1)
{
    Window *v0;
    Strbuf *v1;
    u32 v2;

    v0 = &param0->unk_206C[param1];

    if (param0->context->selectedMoveSlot == 4) {
        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 59);
    } else {
        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 58);
    }

    v2 = Font_CalcStrbufWidth(FONT_SUBSCREEN, v1, 0);

    Text_AddPrinterWithParamsAndColor(v0, FONT_SUBSCREEN, v1, (12 * 8 - v2) / 2, 6, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(7, 8, 9), NULL);
    Strbuf_Free(v1);
    Window_ScheduleCopyToVRAM(v0);
}

void ov13_02223118(BattleParty *param0)
{
    Window *v0;
    Strbuf *v1;

    if (param0->currentScreen == 7) {
        v0 = &param0->unk_206C[8];
    } else {
        v0 = &param0->unk_206C[5];
    }

    Window_FillTilemap(v0, 0);

    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 60);

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);
    Window_ScheduleCopyToVRAM(v0);
}

static void ov13_0222317C(BattleParty *param0, BattlePartyPokemonMove *param1, u32 param2)
{
    Window *v0;
    Strbuf *v1;
    Strbuf *v2;
    u32 v3;

    v0 = &param0->unk_206C[param2];
    v2 = Strbuf_Init((2 + 1) * 2, param0->context->heapID);
    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 43);

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 40, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 46);
    v3 = Font_CalcStrbufWidth(FONT_SYSTEM, v1, 0);

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 80, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 45);

    StringTemplate_SetNumber(param0->stringTemplate, 0, param1->maxPP, 2, 0, 1);
    StringTemplate_Format(param0->stringTemplate, v2, v1);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v2, 80 + v3, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 44);

    StringTemplate_SetNumber(param0->stringTemplate, 0, param1->currentPP, 2, 0, 1);
    StringTemplate_Format(param0->stringTemplate, v2, v1);

    v3 = Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v2, 80 - v3, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v2);
    Window_ScheduleCopyToVRAM(v0);
}

static void ov13_022232C8(BattleParty *param0, BattlePartyPokemonMove *param1, u32 param2)
{
    Window *v0;
    Strbuf *v1;
    Strbuf *v2;
    u32 v3;

    v0 = &param0->unk_206C[param2];
    v2 = Strbuf_Init((2 + 1) * 2, param0->context->heapID);
    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 43);
    v3 = Font_CalcStrbufWidth(FONT_SYSTEM, v1, 0);

    Strbuf_Free(v1);
    Window_FillRectWithColor(v0, 0, 40 + v3, 24, 80 - (40 + v3), 16);

    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 44);

    StringTemplate_SetNumber(param0->stringTemplate, 0, param1->currentPP, 2, 0, 1);
    StringTemplate_Format(param0->stringTemplate, v2, v1);

    v3 = Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v2, 80 - v3, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v2);
    Window_ScheduleCopyToVRAM(v0);
}

static void ov13_0222339C(BattleParty *param0)
{
    s32 v0;

    for (v0 = 0; v0 < Party_GetCurrentCount(param0->context->party); v0++) {
        Window_FillTilemap(&param0->unk_206C[0 + v0], 0);

        if (param0->partyPokemon[v0].species == 0) {
            continue;
        }

        ov13_02221C54(param0, 0 + v0, 2, v0, 32, 8);

        if (param0->partyPokemon[v0].isEgg == 0) {
            ov13_02223448(param0, v0);
        }

        if (PokemonSummaryScreen_StatusIconAnimIdx(param0->partyPokemon[v0].pokemon) != 7) {
            continue;
        }

        ov13_022234A8(param0, v0);
    }

    if (param0->context->battlePartyMode == BATTLE_PARTY_MODE_USE_ITEM) {
        ov13_022221C8(param0, 7);
    } else {
        ov13_022221C8(param0, 6);
    }
}

void ov13_02223448(BattleParty *param0, u8 param1)
{
    Window_FillRectWithColor(&param0->unk_206C[0 + param1], 0, 56, 32, 24, 8);
    Window_FillRectWithColor(&param0->unk_206C[0 + param1], 0, (48 + 16), 24, 64, 8);

    ov13_02221E50(param0, 0 + param1, param1, 56, 32);
    ov13_02221ED0(param0, 0 + param1, param1, (48 + 16), 24);
}

void ov13_022234A8(BattleParty *param0, u8 param1)
{
    if (param0->partyPokemon[param1].isEgg == 0) {
        ov13_02221E08(param0, 0 + param1, param1, 0, 32);
    }
}

static void ov13_022234C8(BattleParty *param0)
{
    Window_FillTilemap(&param0->unk_206C[0], 0);
    Window_FillTilemap(&param0->unk_206C[1], 0);
    Window_FillTilemap(&param0->unk_206C[2], 0);
    Window_FillTilemap(&param0->unk_206C[3], 0);

    ov13_02223550(param0, param0->context->selectedPartyIndex);

    ov13_0222222C(param0, 1, 15);

    if (param0->partyPokemon[param0->context->selectedPartyIndex].isEgg == 0) {
        ov13_0222222C(param0, 2, 18);
        ov13_0222222C(param0, 3, 19);
    } else {
        Window_ScheduleCopyToVRAM(&param0->unk_206C[2]);
        Window_ScheduleCopyToVRAM(&param0->unk_206C[3]);
    }
}

static void ov13_02223550(BattleParty *param0, u32 param1)
{
    Window *v0;
    BattlePartyPokemon *v1;
    Strbuf *v2;
    Strbuf *v3;
    u8 v4;
    u8 v5;
    u8 v6;
    u8 v7;

    v0 = &param0->unk_206C[0];
    v1 = &param0->partyPokemon[param1];
    v2 = Strbuf_Init(12, param0->context->heapID);
    v3 = MessageLoader_GetNewStrbuf(param0->messageLoader, Unk_ov13_02228EC4[param1]);

    StringTemplate_SetNickname(param0->stringTemplate, 0, Pokemon_GetBoxPokemon(v1->pokemon));
    StringTemplate_Format(param0->stringTemplate, v2, v3);
    Strbuf_Free(v3);

    v3 = NULL;

    if ((v1->displayNidoranGender == 0) && (v1->isEgg == 0)) {
        if (v1->gender == 0) {
            v3 = MessageLoader_GetNewStrbuf(param0->messageLoader, 16);
        } else if (v1->gender == 1) {
            v3 = MessageLoader_GetNewStrbuf(param0->messageLoader, 17);
        }
    }

    v4 = Font_CalcStrbufWidth(FONT_SUBSCREEN, v2, 0);

    if (v3 == NULL) {
        v5 = 0;
        v6 = 0;
    } else {
        v5 = Font_CalcStrbufWidth(FONT_SYSTEM, v3, 0);
        v6 = 8;
    }

    v7 = (Window_GetWidth(v0) * 8 - v4 - v5 - v6) / 2;

    Text_AddPrinterWithParamsAndColor(v0, FONT_SUBSCREEN, v2, v7, 8, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(7, 8, 9), NULL);
    Strbuf_Free(v2);

    if (v3 != NULL) {
        if (v1->gender == 0) {
            Text_AddPrinterWithParamsAndColor(
                v0, FONT_SYSTEM, v3, v7 + v4 + v6, 8, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(10, 11, 0), NULL);
        } else {
            Text_AddPrinterWithParamsAndColor(
                v0, FONT_SYSTEM, v3, v7 + v4 + v6, 8, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(12, 13, 0), NULL);
        }

        Strbuf_Free(v3);
    }

    Window_ScheduleCopyToVRAM(v0);
}

static void ov13_022236B8(BattleParty *param0)
{
    BattlePartyPokemonMove *v0;
    u16 v1, v2;

    v2 = 6 * param0->unk_2071;

    Window_FillTilemap(&param0->unk_206C[0 + v2], 0);
    Window_FillTilemap(&param0->unk_206C[1 + v2], 0);
    Window_FillTilemap(&param0->unk_206C[2 + v2], 0);
    Window_FillTilemap(&param0->unk_206C[3 + v2], 0);
    Window_FillTilemap(&param0->unk_206C[4 + v2], 0);
    Window_FillTilemap(&param0->unk_206C[5], 0);

    ov13_02221C54(param0, 0 + v2, 0, param0->context->selectedPartyIndex, 0, 0);

    for (v1 = 0; v1 < 4; v1++) {
        v0 = &param0->partyPokemon[param0->context->selectedPartyIndex].moves[v1];

        if (v0->move == 0) {
            continue;
        }

        ov13_022220CC(param0, v0->move, 1 + v2 + v1, Unk_ov13_02228EB0[v1], FONT_SUBSCREEN, 8, TEXT_COLOR(7, 8, 9));
        ov13_0222317C(param0, v0, 1 + v2 + v1);
    }

    ov13_0222222C(param0, 5, 18);

    Window_ScheduleCopyToVRAM(&param0->unk_206C[1 + v2]);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[2 + v2]);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[3 + v2]);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[4 + v2]);

    param0->unk_2071 ^= 1;
}

static void ov13_022237F8(BattleParty *param0)
{
    u32 v0 = 22 * param0->unk_2071;

    Window_FillTilemap(&param0->unk_206C[19], 0);
    Window_FillTilemap(&param0->unk_206C[20], 0);
    Window_FillTilemap(&param0->unk_206C[14], 0);
    Window_FillTilemap(&param0->unk_206C[15], 0);
    Window_FillTilemap(&param0->unk_206C[16], 0);
    Window_FillTilemap(&param0->unk_206C[17], 0);
    Window_FillTilemap(&param0->unk_206C[18], 0);
    Window_FillTilemap(&param0->unk_206C[13], 0);
    Window_FillTilemap(&param0->unk_206C[21], 0);

    Window_FillTilemap(&param0->unk_206C[0 + v0], 0);
    Window_FillTilemap(&param0->unk_206C[10 + v0], 0);
    Window_FillTilemap(&param0->unk_206C[11 + v0], 0);
    Window_FillTilemap(&param0->unk_206C[12 + v0], 0);
    Window_FillTilemap(&param0->unk_206C[5 + v0], 0);
    Window_FillTilemap(&param0->unk_206C[6 + v0], 0);
    Window_FillTilemap(&param0->unk_206C[7 + v0], 0);
    Window_FillTilemap(&param0->unk_206C[8 + v0], 0);
    Window_FillTilemap(&param0->unk_206C[9 + v0], 0);
    Window_FillTilemap(&param0->unk_206C[4 + v0], 0);
    Window_FillTilemap(&param0->unk_206C[1 + v0], 0);
    Window_FillTilemap(&param0->unk_206C[2 + v0], 0);
    Window_FillTilemap(&param0->unk_206C[3 + v0], 0);

    ov13_02221C54(param0, 0 + v0, 0, param0->context->selectedPartyIndex, 0, 0);
    ov13_0222295C(param0, param0->context->selectedPartyIndex);
    ov13_02221ED0(param0, 10 + v0, param0->context->selectedPartyIndex, 0, 0);
    ov13_02222290(param0, param0->context->selectedPartyIndex);
    ov13_02222464(param0, param0->context->selectedPartyIndex);
    ov13_02222560(param0, param0->context->selectedPartyIndex);
    ov13_0222265C(param0, param0->context->selectedPartyIndex);
    ov13_0222275C(param0, param0->context->selectedPartyIndex);
    ov13_0222285C(param0, param0->context->selectedPartyIndex);
    ov13_02221FA8(param0, 1 + v0, param0->context->selectedPartyIndex);
    ov13_02222030(param0, 3 + v0, param0->context->selectedPartyIndex);
    ov13_02222AF4(param0, param0->context->selectedPartyIndex);
    ov13_0222222C(param0, 21, 19);

    param0->unk_2071 ^= 1;
}

static void ov13_02223A10(BattleParty *param0)
{
    BattlePartyPokemonMove *v0;
    u32 v1 = 11 * param0->unk_2071;

    Window_FillTilemap(&param0->unk_206C[6], 0);
    Window_FillTilemap(&param0->unk_206C[7], 0);
    Window_FillTilemap(&param0->unk_206C[8], 0);
    Window_FillTilemap(&param0->unk_206C[9], 0);
    Window_FillTilemap(&param0->unk_206C[10], 0);
    Window_FillTilemap(&param0->unk_206C[1 + v1], 0);
    Window_FillTilemap(&param0->unk_206C[0 + v1], 0);
    Window_FillTilemap(&param0->unk_206C[2 + v1], 0);
    Window_FillTilemap(&param0->unk_206C[3 + v1], 0);
    Window_FillTilemap(&param0->unk_206C[5 + v1], 0);
    Window_FillTilemap(&param0->unk_206C[4 + v1], 0);

    v0 = &param0->partyPokemon[param0->context->selectedPartyIndex].moves[param0->context->selectedMoveSlot];

    ov13_02221C54(param0, 6, 0, param0->context->selectedPartyIndex, 0, 0);
    ov13_02222170(param0, 7, 0, 0);
    ov13_022220CC(param0, v0->move, 0 + v1, Unk_ov13_02228EB0[param0->context->selectedMoveSlot], FONT_SYSTEM, 0, TEXT_COLOR(15, 14, 0));
    ov13_02222B6C(param0, 8);
    ov13_02222BB4(param0, 2 + v1, v0->accuracy);
    ov13_02222C9C(param0, 9);
    ov13_02222CE4(param0, 3 + v1, v0->power);
    ov13_02222DCC(param0, 4 + v1, v0->move);
    ov13_02222E94(param0, 10);
    ov13_02222EF8(param0, 5 + v1, v0->class);
    ov13_02222F74(param0, 1 + v1, v0->currentPP, v0->maxPP);

    param0->unk_2071 ^= 1;
}

static void ov13_02223B74(BattleParty *param0)
{
    BattlePartyPokemonMove *v0;
    u32 v1;

    Window_FillTilemap(&param0->unk_206C[0], 0);
    Window_FillTilemap(&param0->unk_206C[1], 0);
    Window_FillTilemap(&param0->unk_206C[2], 0);
    Window_FillTilemap(&param0->unk_206C[3], 0);
    Window_FillTilemap(&param0->unk_206C[4], 0);
    Window_FillTilemap(&param0->unk_206C[5], 0);

    ov13_02221C54(param0, 0, 0, param0->context->selectedPartyIndex, 0, 0);

    for (v1 = 0; v1 < 4; v1++) {
        v0 = &param0->partyPokemon[param0->context->selectedPartyIndex].moves[v1];

        if (v0->move == 0) {
            continue;
        }

        ov13_022220CC(param0, v0->move, 1 + v1, Unk_ov13_02228EB0[v1], FONT_SUBSCREEN, 8, TEXT_COLOR(7, 8, 9));
        ov13_0222317C(param0, v0, 1 + v1);
    }

    ov13_022220CC(param0, param0->context->moveToLearn, 5, Unk_ov13_02228EB0[4], FONT_SUBSCREEN, 8, TEXT_COLOR(7, 8, 9));
    {
        BattlePartyPokemonMove v2;

        v2.currentPP = MoveTable_LoadParam(param0->context->moveToLearn, MOVEATTRIBUTE_PP);
        v2.maxPP = v2.currentPP;

        ov13_0222317C(param0, &v2, 5);
    }

    Window_ScheduleCopyToVRAM(&param0->unk_206C[1]);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[2]);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[3]);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[4]);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[5]);
}

static void ov13_02223C9C(BattleParty *param0)
{
    Window_FillTilemap(&param0->unk_206C[0], 0);
    Window_FillTilemap(&param0->unk_206C[2], 0);
    Window_FillTilemap(&param0->unk_206C[3], 0);
    Window_FillTilemap(&param0->unk_206C[1], 0);
    Window_FillTilemap(&param0->unk_206C[4], 0);
    Window_FillTilemap(&param0->unk_206C[6], 0);
    Window_FillTilemap(&param0->unk_206C[5], 0);
    Window_FillTilemap(&param0->unk_206C[7], 0);
    Window_FillTilemap(&param0->unk_206C[9], 0);
    Window_FillTilemap(&param0->unk_206C[10], 0);
    Window_FillTilemap(&param0->unk_206C[8], 0);
    Window_FillTilemap(&param0->unk_206C[11], 0);

    ov13_02221C54(param0, 0, 0, param0->context->selectedPartyIndex, 0, 0);
    ov13_02222170(param0, 2, 0, 0);
    ov13_02222B6C(param0, 4);
    ov13_02222C9C(param0, 5);
    ov13_02222E94(param0, 9);

    if (param0->context->selectedMoveSlot < 4) {
        BattlePartyPokemonMove *v0 = &param0->partyPokemon[param0->context->selectedPartyIndex].moves[param0->context->selectedMoveSlot];

        ov13_022220CC(param0, v0->move, 1, Unk_ov13_02228EB0[param0->context->selectedMoveSlot], FONT_SYSTEM, 0, TEXT_COLOR(15, 14, 0));
        ov13_02222BB4(param0, 6, v0->accuracy);
        ov13_02222CE4(param0, 7, v0->power);
        ov13_02222DCC(param0, 8, v0->move);
        ov13_02222EF8(param0, 10, v0->class);
        ov13_02222F74(param0, 3, v0->currentPP, v0->maxPP);
    } else {
        u32 v1 = MoveTable_LoadParam(param0->context->moveToLearn, MOVEATTRIBUTE_PP);

        ov13_022220CC(param0, param0->context->moveToLearn, 1, Unk_ov13_02228EB0[4], FONT_SYSTEM, 0, TEXT_COLOR(15, 14, 0));
        ov13_02222DCC(param0, 8, param0->context->moveToLearn);
        ov13_02222BB4(param0, 6, MoveTable_LoadParam(param0->context->moveToLearn, MOVEATTRIBUTE_ACCURACY));
        ov13_02222CE4(param0, 7, MoveTable_LoadParam(param0->context->moveToLearn, MOVEATTRIBUTE_POWER));
        ov13_02222EF8(param0, 10, MoveTable_LoadParam(param0->context->moveToLearn, MOVEATTRIBUTE_CLASS));
        ov13_02222F74(param0, 3, v1, v1);
    }

    ov13_022230A8(param0, 11);
}

static void ov13_02223E68(BattleParty *param0)
{
    BattlePartyPokemonMove *v0;
    u32 v1;

    Window_FillTilemap(&param0->unk_206C[0], 0);
    Window_FillTilemap(&param0->unk_206C[1], 0);
    Window_FillTilemap(&param0->unk_206C[2], 0);
    Window_FillTilemap(&param0->unk_206C[3], 0);
    Window_FillTilemap(&param0->unk_206C[4], 0);

    ov13_02221C54(param0, 0, 0, param0->context->selectedPartyIndex, 0, 0);

    for (v1 = 0; v1 < 4; v1++) {
        v0 = &param0->partyPokemon[param0->context->selectedPartyIndex].moves[v1];

        if (v0->move == 0) {
            continue;
        }

        ov13_022220CC(param0, v0->move, 1 + v1, Unk_ov13_02228EB0[v1], FONT_SUBSCREEN, 8, TEXT_COLOR(7, 8, 9));
        ov13_0222317C(param0, v0, 1 + v1);
    }

    if (Item_LoadParam(param0->context->selectedBattleBagItem, ITEM_PARAM_PP_RESTORE_ALL, param0->context->heapID) == 0) {
        ov13_022221C8(param0, 94);
    }

    Window_ScheduleCopyToVRAM(&param0->unk_206C[1]);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[2]);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[3]);
    Window_ScheduleCopyToVRAM(&param0->unk_206C[4]);
}

void ov13_02223F5C(BattleParty *param0, u16 param1, u16 param2)
{
    BattlePartyPokemonMove *v0 = &param0->partyPokemon[param0->context->selectedPartyIndex].moves[param2];
    ov13_022232C8(param0, v0, param1);
}

static void ov13_02223F7C(BattleParty *param0)
{
    Window_FillTilemap(&param0->unk_206C[0], 0);
    Window_FillTilemap(&param0->unk_206C[2], 0);
    Window_FillTilemap(&param0->unk_206C[3], 0);
    Window_FillTilemap(&param0->unk_206C[1], 0);
    Window_FillTilemap(&param0->unk_206C[4], 0);
    Window_FillTilemap(&param0->unk_206C[5], 0);
    Window_FillTilemap(&param0->unk_206C[6], 0);

    ov13_02221C54(param0, 0, 0, param0->context->selectedPartyIndex, 0, 0);
    ov13_02222170(param0, 2, 0, 0);

    {
        Strbuf *v0;

        v0 = MessageLoader_GetNewStrbuf(param0->messageLoader, 57);

        {
            u32 v1 = Font_CalcCenterAlignment(FONT_SYSTEM, v0, 0, 12 * 8);
            Text_AddPrinterWithParamsAndColor(&param0->unk_206C[4], FONT_SYSTEM, v0, v1, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
        }

        Strbuf_Free(v0);
        Window_ScheduleCopyToVRAM(&param0->unk_206C[4]);
    }

    if (param0->context->selectedMoveSlot < 4) {
        BattlePartyPokemonMove *v2 = &param0->partyPokemon[param0->context->selectedPartyIndex].moves[param0->context->selectedMoveSlot];

        ov13_022220CC(param0, v2->move, 1, Unk_ov13_02228EB0[param0->context->selectedMoveSlot], FONT_SYSTEM, 0, TEXT_COLOR(15, 14, 0));
        ov13_02222E2C(param0, 5, v2->move);
        ov13_02222F74(param0, 3, v2->currentPP, v2->maxPP);
    } else {
        u32 v3 = MoveTable_LoadParam(param0->context->moveToLearn, MOVEATTRIBUTE_PP);

        ov13_022220CC(param0, param0->context->moveToLearn, 1, Unk_ov13_02228EB0[4], FONT_SYSTEM, 0, TEXT_COLOR(15, 14, 0));
        ov13_02222E2C(param0, 5, param0->context->moveToLearn);
        ov13_02222F74(param0, 3, v3, v3);
    }

    ov13_022230A8(param0, 6);
}

void BattlePartyText_DisplayMessage(BattleParty *battleParty)
{
    Window_DrawMessageBoxWithScrollCursor(&battleParty->messageBoxWindows[1], TRUE, 1, 14);
    Window_FillTilemap(&battleParty->messageBoxWindows[1], 15);
    ov13_02224108(battleParty);
}

void ov13_02224108(BattleParty *param0)
{
    RenderControlFlags_SetCanABSpeedUpPrint(TRUE);
    param0->textPrinterID = Text_AddPrinterWithParams(&param0->messageBoxWindows[1], FONT_MESSAGE, param0->strbuf, 0, 0, BattleSystem_TextSpeed(param0->context->battleSystem), NULL);
}

void ov13_02224144(BattleParty *param0)
{
    Pokemon *v0;
    BattlePartyContext *v1;
    void *v2;
    Strbuf *v3;
    u16 v4;
    u8 v5;
    u8 v6;

    v1 = param0->context;
    v2 = Item_Load(v1->selectedBattleBagItem, 0, v1->heapID);
    v0 = BattleSystem_PartyPokemon(v1->battleSystem, v1->battler, v1->pokemonPartySlots[v1->selectedPartyIndex]);
    v4 = Pokemon_GetValue(v0, MON_DATA_HP, NULL);
    v5 = 0;

    if (Item_Get(v2, 15) != 0) {
        v5 |= 0x1;
    }

    if (Item_Get(v2, 16) != 0) {
        v5 |= 0x2;
    }

    if (Item_Get(v2, 17) != 0) {
        v5 |= 0x4;
    }

    if (Item_Get(v2, 18) != 0) {
        v5 |= 0x8;
    }

    if (Item_Get(v2, 19) != 0) {
        v5 |= 0x10;
    }

    if (Item_Get(v2, 20) != 0) {
        v5 |= 0x20;
    }

    if (Item_Get(v2, 21) != 0) {
        v5 |= 0x40;
    }

    if ((param0->partyPokemon[v1->selectedPartyIndex].curHP == 0) && (v4 != 0)) {
        v3 = MessageLoader_GetNewStrbuf(param0->messageLoader, 88);
        StringTemplate_SetNickname(param0->stringTemplate, 0, Pokemon_GetBoxPokemon(v0));
        StringTemplate_Format(param0->stringTemplate, param0->strbuf, v3);
        Strbuf_Free(v3);
    } else if (param0->partyPokemon[v1->selectedPartyIndex].curHP != v4) {
        v3 = MessageLoader_GetNewStrbuf(param0->messageLoader, 82);
        StringTemplate_SetNickname(param0->stringTemplate, 0, Pokemon_GetBoxPokemon(v0));
        StringTemplate_SetNumber(param0->stringTemplate, 1, v4 - param0->partyPokemon[v1->selectedPartyIndex].curHP, 3, 0, 1);
        StringTemplate_Format(param0->stringTemplate, param0->strbuf, v3);
        Strbuf_Free(v3);
    } else if ((Item_Get(v2, 36) != 0) || (Item_Get(v2, 37) != 0)) {
        MessageLoader_GetStrbuf(param0->messageLoader, 87, param0->strbuf);
    } else if (v5 == 0x1) {
        v3 = MessageLoader_GetNewStrbuf(param0->messageLoader, 92);
        StringTemplate_SetNickname(param0->stringTemplate, 0, Pokemon_GetBoxPokemon(v0));
        StringTemplate_Format(param0->stringTemplate, param0->strbuf, v3);
        Strbuf_Free(v3);
    } else if (v5 == 0x2) {
        v3 = MessageLoader_GetNewStrbuf(param0->messageLoader, 83);
        StringTemplate_SetNickname(param0->stringTemplate, 0, Pokemon_GetBoxPokemon(v0));
        StringTemplate_Format(param0->stringTemplate, param0->strbuf, v3);
        Strbuf_Free(v3);
    } else if (v5 == 0x4) {
        v3 = MessageLoader_GetNewStrbuf(param0->messageLoader, 85);
        StringTemplate_SetNickname(param0->stringTemplate, 0, Pokemon_GetBoxPokemon(v0));
        StringTemplate_Format(param0->stringTemplate, param0->strbuf, v3);
        Strbuf_Free(v3);
    } else if (v5 == 0x8) {
        v3 = MessageLoader_GetNewStrbuf(param0->messageLoader, 86);
        StringTemplate_SetNickname(param0->stringTemplate, 0, Pokemon_GetBoxPokemon(v0));
        StringTemplate_Format(param0->stringTemplate, param0->strbuf, v3);
        Strbuf_Free(v3);
    } else if (v5 == 0x10) {
        v3 = MessageLoader_GetNewStrbuf(param0->messageLoader, 84);
        StringTemplate_SetNickname(param0->stringTemplate, 0, Pokemon_GetBoxPokemon(v0));
        StringTemplate_Format(param0->stringTemplate, param0->strbuf, v3);
        Strbuf_Free(v3);
    } else if (v5 == 0x20) {
        v3 = MessageLoader_GetNewStrbuf(param0->messageLoader, 90);
        StringTemplate_SetNickname(param0->stringTemplate, 0, Pokemon_GetBoxPokemon(v0));
        StringTemplate_Format(param0->stringTemplate, param0->strbuf, v3);
        Strbuf_Free(v3);
    } else if (v5 == 0x40) {
        v3 = MessageLoader_GetNewStrbuf(param0->messageLoader, 91);
        StringTemplate_SetNickname(param0->stringTemplate, 0, Pokemon_GetBoxPokemon(v0));
        StringTemplate_Format(param0->stringTemplate, param0->strbuf, v3);
        Strbuf_Free(v3);
    } else {
        v3 = MessageLoader_GetNewStrbuf(param0->messageLoader, 89);
        StringTemplate_SetNickname(param0->stringTemplate, 0, Pokemon_GetBoxPokemon(v0));
        StringTemplate_Format(param0->stringTemplate, param0->strbuf, v3);
        Strbuf_Free(v3);
    }

    Heap_Free(v2);
}

void ov13_0222449C(BattleParty *param0)
{
    Pokemon *v0;
    BattlePartyContext *v1;
    Strbuf *v2;

    v1 = param0->context;
    v0 = BattleSystem_PartyPokemon(v1->battleSystem, v1->battler, v1->pokemonPartySlots[v1->selectedPartyIndex]);
    v2 = MessageLoader_GetNewStrbuf(param0->messageLoader, 95);

    StringTemplate_SetNickname(param0->stringTemplate, 0, Pokemon_GetBoxPokemon(v0));
    StringTemplate_SetMoveName(param0->stringTemplate, 1, 373);
    StringTemplate_Format(param0->stringTemplate, param0->strbuf, v2);
    Strbuf_Free(v2);
}
