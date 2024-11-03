#include "unk_020920C0.h"

#include <nitro.h>
#include <string.h>

#include "consts/sdat.h"

#include "applications/pokemon_summary_screen.h"

#include "bg_window.h"
#include "core_sys.h"
#include "touch_screen.h"
#include "unk_02005474.h"
#include "unk_0208EA44.h"

typedef struct PSSSubscreenButton {
    u8 page;
    u8 paletteNum;
    u8 xPos;
    u8 yPos;
} PSSSubscreenButton;

static void sub_0223D0BC(PokemonSummaryScreen *summaryScreen);
static int sub_020921FC(PokemonSummaryScreen *summaryScreen);

static const PSSSubscreenButton Unk_020F5164[] = {
    { PSS_PAGE_INFO, 0x1, 0x1, 0x4 },
    { PSS_PAGE_MEMO, 0x1, 0x2, 0xA },
    { PSS_PAGE_SKILLS, 0x2, 0x5, 0xF },
    { PSS_PAGE_BATTLE_MOVES, 0x3, 0xA, 0x12 },
    { PSS_PAGE_CONDITION, 0x2, 0x11, 0x12 },
    { PSS_PAGE_CONTEST_MOVES, 0x3, 0x16, 0xF },
    { PSS_PAGE_RIBBONS, 0x4, 0x19, 0xA },
    { PSS_PAGE_EXIT, 0x4, 0x1A, 0x4 },
    { 0xFF, 0xFF, 0xFF, 0xFF }
};

static const PSSSubscreenButton Unk_020F514C[] = {
    { PSS_PAGE_INFO, 0x1, 0x2, 0x9 },
    { PSS_PAGE_MEMO, 0x1, 0x6, 0xF },
    { PSS_PAGE_SKILLS, 0x2, 0xE, 0x12 },
    { PSS_PAGE_BATTLE_MOVES, 0x3, 0x16, 0xF },
    { PSS_PAGE_EXIT, 0x4, 0x1A, 0x9 },
    { 0xFF, 0xFF, 0xFF, 0xFF }
};

static const PSSSubscreenButton Unk_020F5128[] = {
    { PSS_PAGE_BATTLE_MOVES, 0x3, 0xA, 0x12 },
    { PSS_PAGE_CONTEST_MOVES, 0x3, 0x11, 0x12 },
    { 0xFF, 0xFF, 0xFF, 0xFF }
};

static const PSSSubscreenButton *sSubscreenButtonTypes[] = {
    [PSS_SUBSCREEN_TYPE_NORMAL] = Unk_020F5164,
    [PSS_SUBSCREEN_TYPE_HIDE_CONTEST] = Unk_020F514C,
    [PSS_SUBSCREEN_TYPE_2] = Unk_020F5128
};

static const TouchScreenRect Unk_020F5188[] = {
    { 0x20, 0x47, 0x8, 0x2F },
    { 0x50, 0x77, 0x10, 0x37 },
    { 0x78, 0x9F, 0x28, 0x4F },
    { 0x90, 0xB7, 0x50, 0x77 },
    { 0x90, 0xB7, 0x88, 0xAF },
    { 0x78, 0x9F, 0xB0, 0xD7 },
    { 0x50, 0x77, 0xC8, 0xEF },
    { 0x20, 0x47, 0xD0, 0xF7 },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const TouchScreenRect Unk_020F5134[] = {
    { 0x48, 0x6F, 0xC, 0x33 },
    { 0x78, 0x9F, 0x2C, 0x53 },
    { 0x90, 0xB7, 0x6C, 0x93 },
    { 0x78, 0x9F, 0xAC, 0xD3 },
    { 0x48, 0x6F, 0xCC, 0xF3 },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const TouchScreenRect Unk_020F511C[] = {
    { 0x90, 0xB7, 0x50, 0x77 },
    { 0x90, 0xB7, 0x88, 0xAF },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const TouchScreenRect *Unk_02100D78[] = {
    Unk_020F5188,
    Unk_020F5134,
    Unk_020F511C
};

void PokemonSummaryScreen_SetSubscreenType(PokemonSummaryScreen *summaryScreen)
{
    switch (summaryScreen->data->mode) {
    case PSS_MODE_NORMAL:
    case PSS_MODE_LOCK_MOVES:
        if (summaryScreen->data->showContest != FALSE) {
            summaryScreen->subscreenType = PSS_SUBSCREEN_TYPE_NORMAL;
        } else {
            summaryScreen->subscreenType = PSS_SUBSCREEN_TYPE_HIDE_CONTEST;
            Bg_ScheduleScroll(summaryScreen->bgConfig, BG_LAYER_SUB_0, BG_OFFSET_UPDATE_SET_X, 4);
        }
        break;
    case PSS_MODE_SELECT_MOVE:
    case PSS_MODE_POFFIN:
    default:
        summaryScreen->subscreenType = PSS_SUBSCREEN_TYPE_NONE;
    }

    PokemonSummaryScreen_UpdateSubscreenButtonGfx(summaryScreen);
}

static void UpdateSubscreenButtonTilemap(PokemonSummaryScreen *summaryScreen, const PSSSubscreenButton *button, u8 animID)
{
    u16 *bgSub0Tilemap = (u16 *)Bg_GetTilemapBuffer(summaryScreen->bgConfig, BG_LAYER_SUB_0);
    u16 v1 = (button->page & 1) * 15 + (button->page / 2) * (30 * 5) + animID * 5 + 30;
    u8 v2;
    u8 v3, v4;

    for (v3 = 0; v3 < 5; v3++) {
        for (v4 = 0; v4 < 5; v4++) {
            bgSub0Tilemap[(v3 + button->yPos) * 32 + v4 + button->xPos] = v1 + v3 * 30 + v4 + (button->paletteNum << 12);
        }
    }
}

void PokemonSummaryScreen_UpdateSubscreenButtonGfx(PokemonSummaryScreen *summaryScreen)
{
    if (summaryScreen->subscreenType == PSS_SUBSCREEN_TYPE_NONE) {
        return;
    }

    const PSSSubscreenButton *buttonList = sSubscreenButtonTypes[summaryScreen->subscreenType];
    u8 button = 0;

    while (TRUE) {
        if (buttonList[button].page == 0xff) {
            break;
        }

        UpdateSubscreenButtonTilemap(summaryScreen, &buttonList[button], 0);
        button++;
    }

    Bg_ScheduleTilemapTransfer(summaryScreen->bgConfig, BG_LAYER_SUB_0);
}

u8 sub_020921E4(PokemonSummaryScreen *summaryScreen)
{
    int v0;

    v0 = sub_020921FC(summaryScreen);

    if (v0 != 0xffffffff) {
        return v0;
    }

    return 0xff;
}

static int sub_020921FC(PokemonSummaryScreen *summaryScreen)
{
    int v0;

    if (summaryScreen->subscreenType == PSS_SUBSCREEN_TYPE_NONE) {
        return 0xffffffff;
    }

    v0 = sub_02022664(Unk_02100D78[summaryScreen->subscreenType]);

    return v0;
}

static int sub_02092224(PokemonSummaryScreen *summaryScreen)
{
    int v0;

    if (summaryScreen->subscreenType == PSS_SUBSCREEN_TYPE_NONE) {
        return 0xffffffff;
    }

    v0 = sub_02022644(Unk_02100D78[summaryScreen->subscreenType]);

    if (v0 != 0xffffffff) {
        u16 v1 = 0xfffe;

        if (Bg_DoesPixelAtXYMatchVal(summaryScreen->bgConfig, 4, gCoreSys.touchX, gCoreSys.touchY, &v1) == 0) {
            return 0xffffffff;
        }
    }

    return v0;
}

u8 PokemonSummaryScreen_DrawSubscreenButtonAnim(PokemonSummaryScreen *summaryScreen)
{
    const PSSSubscreenButton *buttonList = sSubscreenButtonTypes[summaryScreen->subscreenType];

    switch (summaryScreen->buttonState) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
        PokemonSummaryScreen_UpdateSubscreenButtonGfx(summaryScreen);
        UpdateSubscreenButtonTilemap(summaryScreen, &buttonList[summaryScreen->buttonPos], 2);
        Bg_ScheduleTilemapTransfer(summaryScreen->bgConfig, 4);
        sub_0208F600(summaryScreen);
        summaryScreen->buttonCount = 0;
        summaryScreen->buttonState = 1;
        break;

    case 1:
        summaryScreen->buttonState = 2;
        break;

    case 2:
        if (summaryScreen->buttonCount != 3) {
            summaryScreen->buttonCount++;
            break;
        }

        sub_0208F684(summaryScreen);

        if (sub_02092224(summaryScreen) != summaryScreen->buttonPos) {
            if (summaryScreen->monData.isEgg != FALSE
                && buttonList[summaryScreen->buttonPos].page != PSS_PAGE_MEMO
                && buttonList[summaryScreen->buttonPos].page != PSS_PAGE_EXIT) {
                UpdateSubscreenButtonTilemap(summaryScreen, &buttonList[summaryScreen->buttonPos], 0);
            } else {
                UpdateSubscreenButtonTilemap(summaryScreen, &buttonList[summaryScreen->buttonPos], 1);
            }

            Bg_ScheduleTilemapTransfer(summaryScreen->bgConfig, 4);
            return TRUE;
        }
    }

    return FALSE;
}
// ravetodo PokemonSummaryScreen_GetSubscreenButtonPos?
void sub_02092368(PokemonSummaryScreen *summaryScreen, s16 *param1, s16 *param2)
{
    const PSSSubscreenButton *buttonList = sSubscreenButtonTypes[summaryScreen->subscreenType];

    *param1 = buttonList[summaryScreen->buttonPos].xPos * 8 + (5 * 8) / 2;
    *param2 = buttonList[summaryScreen->buttonPos].yPos * 8 + (5 * 8) / 2;
}

u8 PokemonSummaryScreen_GetSubscreenButtonPage(PokemonSummaryScreen *summaryScreen, u8 button)
{
    const PSSSubscreenButton *buttonList = sSubscreenButtonTypes[summaryScreen->subscreenType];
    return buttonList[button].page;
}
