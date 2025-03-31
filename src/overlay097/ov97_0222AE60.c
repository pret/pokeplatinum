#include <nitro.h>
#include <string.h>

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_0202442C_decl.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay077/const_ov77_021D742C.h"
#include "overlay097/const_ov97_0223D674.h"
#include "overlay097/ov97_02235D18.h"
#include "overlay097/ov97_02237520.h"
#include "overlay097/ov97_02237694.h"
#include "overlay097/struct_ov97_02237808.h"
#include "savedata/save_table.h"

#include "bg_window.h"
#include "boot.h"
#include "font.h"
#include "game_start.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "main.h"
#include "message.h"
#include "message_util.h"
#include "overlay_manager.h"
#include "play_time.h"
#include "pokedex.h"
#include "render_oam.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata.h"
#include "sprite.h"
#include "strbuf.h"
#include "string_template.h"
#include "system.h"
#include "system_data.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_0200F174.h"
#include "unk_0202DAB4.h"
#include "unk_020366A0.h"
#include "unk_0209A74C.h"
#include "vram_transfer.h"

#include "res/text/bank/main_menu.h"

FS_EXTERN_OVERLAY(game_start);
FS_EXTERN_OVERLAY(overlay77);
FS_EXTERN_OVERLAY(overlay97);
FS_EXTERN_OVERLAY(overlay98);

enum MainMenuOptions {
    MAIN_MENU_OPTION_RETURN_TO_TITLE = 0,
    MAIN_MENU_OPTION_CONTINUE,
    MAIN_MENU_OPTION_NEW_GAME,
    MAIN_MENU_OPTION_MYSTERY_GIFT,
    MAIN_MENU_OPTION_LINK_WITH_POKEMON_RANGER,
    MAIN_MENU_OPTION_GBA_MIGRATOR,
    MAIN_MENU_OPTION_CONNECT_TO_WII,
    MAIN_MENU_OPTION_NINTENDO_WFC_SETTINGS,
    MAIN_MENU_OPTION_WII_MESSAGE_SETTINGS,
    MAIN_MENU_OPTION_MAX
};

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    u32 unk_10;
    u32 unk_14;
    void (*unk_18)(void *param0);
} UnkStruct_ov97_0223DF54;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
} UnkStruct_ov97_0223DFB0;

typedef struct {
    BgConfig *bgConfig;
    SaveData *saveData;
    Pokedex *pokedex;
    TrainerInfo *trainerInfo;
    PlayTime *playTime;
    MysteryGift *mysteryGift;
    int unk_18;
    int unk_1C;
    int unk_20;
    int agbGameType; // Adds + 1, to track unset value
    int unk_28;
    int unk_2C;
    int unk_30;
    int unk_34;
    int unk_38;
    int unk_3C;
    int unk_40;
    int unk_44;
    int unk_48;
    BOOL hasPokedex;
    int badgeCount;
    int unk_54;
    int selectedOption;
    Window loadedOptionWindows[MAIN_MENU_OPTION_MAX - 1];
    int loadedOptionIDs[MAIN_MENU_OPTION_MAX - 1];
    int unk_FC[MAIN_MENU_OPTION_MAX - 1];
    fx32 unk_11C;
    fx32 unk_120;
    int unk_124;
    int unk_128;
    int unk_12C;
    int unk_130;
    int unk_134;
    int unk_138;
    Window unk_13C;
    BOOL noSaveData;
    int unk_150;
    BOOL unk_154[1];
    Window unk_158;
    Sprite *unk_168[2];
    int unk_170;
} MainMenu;

typedef struct {
    int optionID;
    int height;
    int messageEntry;

    // clang-format off
    BOOL (* displayFunc)(MainMenu *, int, UnkStruct_ov97_02237808 *, int); // Function to determine if the option will be displayed
    // clang-format on
} MainMenuOptionsData;

static BOOL MainMenu_IsGBAGameConnected(MainMenu *menu, int option, UnkStruct_ov97_02237808 *param2, int yPos);
static BOOL ov97_0222B7DC(MainMenu *menu, int option, UnkStruct_ov97_02237808 *param2, int yPos);
static BOOL ov97_0222B888(MainMenu *menu, int option, UnkStruct_ov97_02237808 *param2, int yPos);
static BOOL ov97_0222B8E4(MainMenu *menu, int option, UnkStruct_ov97_02237808 *param2, int yPos);
static BOOL MainMenu_LoadText_WFCSettings(MainMenu *menu, int option, UnkStruct_ov97_02237808 *param2, int yPos);
static BOOL MainMenu_LoadText_WiiMessageSettings(MainMenu *menu, int option, UnkStruct_ov97_02237808 *param2, int yPos);
static BOOL MainMenu_LoadText_Continue(MainMenu *menu, int option, UnkStruct_ov97_02237808 *param2, int yPos);
MysteryGift *SaveData_MysteryGift(SaveData *saveData);
int ov23_0224AC0C(void);
int TrainerInfo_Size(void);

static UnkStruct_ov97_0223DF54 Unk_ov97_0223DF54[] = {
    { 0x5, 0x5, 0x16, 0xE, 0x2B7, 0x10, NULL }
};

MainMenuOptionsData sMainMenuOptionsData[] = {
    { MAIN_MENU_OPTION_CONTINUE, 10, main_menu_continue, MainMenu_LoadText_Continue },
    { MAIN_MENU_OPTION_NEW_GAME, 2, main_menu_new_game, NULL },
    { MAIN_MENU_OPTION_MYSTERY_GIFT, 2, main_menu_mystery_gift, ov97_0222B7DC },
    { MAIN_MENU_OPTION_LINK_WITH_POKEMON_RANGER, 2, main_menu_link_with_pokemon_ranger, ov97_0222B888 },
    { MAIN_MENU_OPTION_GBA_MIGRATOR, 2, NULL, MainMenu_IsGBAGameConnected },
    { MAIN_MENU_OPTION_CONNECT_TO_WII, 2, main_menu_connect_to_wii, ov97_0222B8E4 },
    { MAIN_MENU_OPTION_NINTENDO_WFC_SETTINGS, 2, main_menu_nintendo_wfc_settings, MainMenu_LoadText_WFCSettings },
    { MAIN_MENU_OPTION_WII_MESSAGE_SETTINGS, 2, main_menu_wii_message_settings, MainMenu_LoadText_WiiMessageSettings }
};

static u32 sContinueOptionTextEntries[] = {
    NULL,
    main_menu_player,
    main_menu_time,
    main_menu_badges,
    main_menu_pokedex,
};

UnkStruct_ov97_0223DFB0 Unk_ov97_0223DFB0[] = {
    { 0x4, 0x2, 0x18, 0x14, 0x1 },
    { 0x4, 0x4, 0x18, 0x10, 0x3 },
    { 0x4, 0x1, 0x18, 0x16, 0x0 },
    { 0x4, 0x3, 0x18, 0x12, 0x2 },
    { 0x2, 0x1, 0x1C, 0x16, 0x5 }
};

static int ov97_0222AE60(MainMenu *menu)
{
    int v0 = 0, v1;
    return v0;
}

static BOOL ov97_0222AE64(MainMenu *menu)
{
    UnkStruct_ov97_0223DF54 *v1;
    UnkStruct_ov97_02237808 v2;

    if (Window_IsInUse(&menu->unk_158) == FALSE) {
        for (int i = 0; i < 1; i++) {
            if (menu->unk_154[i] == 1) {
                menu->unk_154[i] = 0;
                v1 = &Unk_ov97_0223DF54[i];

                ov97_02237808(&v2, &menu->unk_158, 0, v1->unk_10, 1, 2);
                ov97_02237858(&v2, v1->unk_08, v1->unk_0C, ((1 + 9) + 9));
                ov97_0223795C(menu->bgConfig, &v2, v1->unk_00, v1->unk_04, v1->unk_14);
                return TRUE;
            }
        }
    } else {
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            Window_EraseStandardFrame(&menu->unk_158, 0);
            Window_Remove(&menu->unk_158);
        }

        return TRUE;
    }

    return FALSE;
}

static void ov97_0222AF1C(MainMenu *menu)
{
    int gbaVersion;
    int v1 = ov97_02235D2C(NULL);

    menu->agbGameType = 0;

    if (v1 != 0) {
        return;
    }

    gbaVersion = VERSION_NONE;

    switch (GBACart_GetAGBGameType()) {
    case AGB_TYPE_RUBY:
        gbaVersion = VERSION_RUBY;
        break;
    case AGB_TYPE_SAPPHIRE:
        gbaVersion = VERSION_SAPPHIRE;
        break;
    case AGB_TYPE_LEAFGREEN:
        gbaVersion = VERSION_LEAFGREEN;
        break;
    case AGB_TYPE_FIRERED:
        gbaVersion = VERSION_FIRERED;
        break;
    case AGB_TYPE_EMERALD:
        gbaVersion = VERSION_EMERALD;
        break;
    }

    SetGBACartridgeVersion(gbaVersion);

    if (Pokedex_IsNationalDexObtained(menu->pokedex) == FALSE) {
        return;
    }

    if (GBACart_GetLanguage() != gGameLanguage) {
        return;
    }

    menu->agbGameType = GBACart_GetAGBGameType() + 1;

    ov97_02238440();
}

static void ov97_0222AF8C(MainMenu *menu)
{
    int v0;

    switch (menu->unk_124) {
    case 12:
        break;
    case 10:
        menu->unk_124 = 11;
        break;
    case 11:
        sub_02037D48(menu->saveData);

        menu->unk_128 = (2 * 60);
        menu->unk_124 = 13;
        menu->unk_40 = 0;

        if (sub_0202DEC4(menu->mysteryGift) == TRUE) {
            menu->unk_40 |= 0x1;
            menu->unk_44 |= 0x1;
        }
        break;
    case 13:
        if (menu->unk_130) {
            break;
        }

        v0 = sub_02037DA0();
        v0 = ~menu->unk_40 & v0;

        if (v0 && (menu->unk_12C == 15) && (menu->unk_130 == 0) && (menu->unk_40 != v0)) {
            menu->unk_48 = 1;

            if (v0 & 0x1) {
                menu->unk_34 = 1, v0 = 0x1;
            }

            if (v0 & 0x2) {
                menu->unk_2C = 1, v0 = 0x2;
            }

            if (v0 & 0x4) {
                menu->unk_30 = 1, v0 = 0x4;
            }

            if (v0 & (0x1 | 0x2)) {
                menu->unk_150 = 1;
            }

            menu->unk_40 |= v0;
        }

        if (--menu->unk_128 == 0) {
            sub_02037D84();
            menu->unk_124 = 12;
        }
        break;
    case 14:
        sub_02037D84();
        menu->unk_124 = 12;
        break;
    }
}

static BOOL ov97_0222B07C(MainMenu *menu)
{
    UnkStruct_ov97_02237808 v0;
    UnkStruct_ov97_0223DFB0 *v1;
    int v2, v3;

    switch (menu->unk_12C) {
    case 15:
        if (menu->unk_130 == 0) {
            return 0;
        }

        if (--menu->unk_130 == 0) {
            menu->unk_12C = 16;
        }

        return 1;
    case 16:
        LoadStandardWindowGraphics(menu->bgConfig, 1, 1, 2, 0, HEAP_ID_MAIN_MENU);
        Bg_ClearTilemap(menu->bgConfig, 1);
        *((u16 *)HW_BG_PLTT + 33) = ((26 & 31) << 10 | (26 & 31) << 5 | (26 & 31));
        menu->unk_12C = 17;
        break;
    case 17:
        ov97_02237808(&v0, &menu->unk_13C, 0, 14, 1, 2);

        v3 = menu->unk_40 & ~menu->unk_44;

        if (v3 & 0x1) {
            if (menu->unk_38 & 0x1) {
                v1 = &Unk_ov97_0223DFB0[0];
            } else {
                v1 = &Unk_ov97_0223DFB0[1];
            }
        } else if (v3 & 0x2) {
            if (menu->unk_38 & 0x2) {
                v1 = &Unk_ov97_0223DFB0[2];
            } else {
                v1 = &Unk_ov97_0223DFB0[3];
            }
        } else if (v3 & 0x80) {
            v1 = &Unk_ov97_0223DFB0[4];
            v3 = 0;
        }

        menu->unk_44 |= v3;
        ov97_02237858(&v0, v1->unk_08, v1->unk_0C, ((1 + 9) + 9));

        v0.unk_2C = 1;
        ov97_0223795C(menu->bgConfig, &v0, v1->unk_00, v1->unk_04, v1->unk_10);

        Bg_ChangeTilemapRectPalette(menu->bgConfig, 1, Window_GetXPos(v0.window), Window_GetYPos(v0.window), Window_GetWidth(v0.window), Window_GetHeight(v0.window), 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);

        menu->unk_134 = 30;
        menu->unk_12C = 18;
        break;
    case 18:
        if (menu->unk_134) {
            menu->unk_134--;
        } else {
            if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
                Window_Remove(&menu->unk_13C);
                menu->unk_12C = 19;
                menu->unk_138 = gSystem.pressedKeys;
                Sound_PlayEffect(SEQ_SE_CONFIRM);
            }
        }
        break;
    case 19:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
        menu->unk_12C = 15;
        break;
    }

    return 1;
}

#define ABS(x) (((x) ^ ((x) >> 31)) - ((x) >> 31))
static void ov97_0222B25C(MainMenu *menu)
{
    fx32 v0;

    if (menu->unk_11C != menu->unk_120) {
        v0 = (menu->unk_120 - menu->unk_11C) / 4;

        if ((((v0) ^ ((v0) >> 31)) - ((v0) >> 31)) > (12 * FX32_ONE)) {
            if (v0 > 0) {
                v0 = (12 * FX32_ONE);
            } else {
                v0 = -(12 * FX32_ONE);
            }
        }

        menu->unk_11C += v0;

        if ((((menu->unk_120 - menu->unk_11C) ^ ((menu->unk_120 - menu->unk_11C) >> 31)) - ((menu->unk_120 - menu->unk_11C) >> 31)) < FX32_ONE / 8) {
            menu->unk_11C = menu->unk_120;
        }

        Bg_ScheduleScroll(menu->bgConfig, 0, 3, menu->unk_11C / FX32_ONE);
        Bg_ScheduleScroll(menu->bgConfig, 2, 3, menu->unk_11C / FX32_ONE);
    }
}

static void ov97_0222B2EC(MainMenu *menu)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_A,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_B,
        GX_VRAM_TEXPLTT_01_FG
    };
    GraphicsModes v1 = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_2D
    };

    GXLayers_SetBanks(&v0);
    SetAllGraphicsModes(&v1);

    ov97_022376FC(menu->bgConfig, 0, 2, 0xF000, 0x0);
    G2_SetBG0Priority(2);
    Bg_ClearTilesRange(0, 32, 0, HEAP_ID_MAIN_MENU);

    ov97_022376FC(menu->bgConfig, 1, 1, 0xD800, 0x8000);
    G2_SetBG1Priority(1);
    Bg_ClearTilesRange(1, 32, 0, HEAP_ID_MAIN_MENU);

    ov97_022376FC(menu->bgConfig, 2, 2, 0xE000, 0x0);
    G2_SetBG2Priority(0);
    Bg_ClearTilesRange(2, 32, 0, HEAP_ID_MAIN_MENU);

    Text_ResetAllPrinters();
    Font_LoadTextPalette(0, 1 * 32, HEAP_ID_MAIN_MENU);
    Font_LoadTextPalette(0, 0 * 32, HEAP_ID_MAIN_MENU);

    *((u16 *)HW_BG_PLTT + 0) = ((0 & 31) << 10 | (0 & 31) << 5 | (0 & 31));
    *((u16 *)HW_BG_PLTT + 31) = ((26 & 31) << 10 | (26 & 31) << 5 | (26 & 31));

    LoadStandardWindowGraphics(menu->bgConfig, 0, 1, 2, 0, HEAP_ID_MAIN_MENU);
    LoadStandardWindowGraphics(menu->bgConfig, 0, (1 + 9), 3, 1, HEAP_ID_MAIN_MENU);

    *((u16 *)HW_BG_PLTT + 33) = ((26 & 31) << 10 | (26 & 31) << 5 | (26 & 31));
}

static void ov97_0222B404(MainMenu *menu)
{
    ov97_02237A20();
    ov97_02237A74();
    ov97_02237B0C(116, 43, 40, 42, 41, 0);

    menu->unk_168[0] = ov97_02237D14(0, menu->unk_168[0], HW_LCD_WIDTH / 2, 8, 0);
    Sprite_SetDrawFlag(menu->unk_168[0], 0);

    menu->unk_168[1] = ov97_02237D14(0, menu->unk_168[1], HW_LCD_WIDTH / 2, HW_LCD_HEIGHT - 8, 1);
    Sprite_SetDrawFlag(menu->unk_168[1], 0);
}

static void ov97_0222B46C(MainMenu *menu)
{
    Graphics_LoadPalette(116, 45, 0, 4 * 32, 32 * 1, HEAP_ID_MAIN_MENU);
    Graphics_LoadTilesToBgLayer(116, 44, menu->bgConfig, 2, 0x380, 2 * 32 * 0x20, 0, HEAP_ID_MAIN_MENU);
}

static void ov97_0222B4AC(MainMenu *menu, int param1, int param2, int param3)
{
    u16 *v0 = (u16 *)Bg_GetTilemapBuffer(menu->bgConfig, 2);
    int v1 = ((4 << 12) + 0x380 + 0);

    if (param3 == 2) {
        v1 = ((4 << 12) + 0x380 + 0) + 2;
    }

    v0[param2 * 32 + param1 + 0] = v1 + 0;
    v0[param2 * 32 + param1 + 1] = v1 + 1;

    param2++;

    v0[param2 * 32 + param1 + 0] = v1 + 8;
    v0[param2 * 32 + param1 + 1] = v1 + 9;

    Bg_CopyTilemapBufferToVRAM(menu->bgConfig, 2);
}

static void ov97_0222B4FC(MainMenu *menu, int param1, int param2)
{
    u16 *v0 = (u16 *)Bg_GetTilemapBuffer(menu->bgConfig, 2);

    v0[param2 * 32 + param1 + 0] = ((4 << 12) + 0x380 + 0) + 4;
    v0[param2 * 32 + param1 + 1] = ((4 << 12) + 0x380 + 0) + 4;

    param2++;

    v0[param2 * 32 + param1 + 0] = ((4 << 12) + 0x380 + 0) + 4;
    v0[param2 * 32 + param1 + 1] = ((4 << 12) + 0x380 + 0) + 4;

    Bg_CopyTilemapBufferToVRAM(menu->bgConfig, 2);
}

static void MainMenu_PrintContinueRightSideInfo(Window *window, MessageLoader *msgLoader, StringTemplate *template, TextColor color, u32 entryID, int yOffset)
{
    int textWidth, xOffset;
    Strbuf *strBuf = MessageUtil_ExpandedStrbuf(template, msgLoader, entryID, HEAP_ID_MAIN_MENU);
    textWidth = Font_CalcStrbufWidth(FONT_SYSTEM, strBuf, Font_GetAttribute(FONT_SYSTEM, FONTATTR_LETTER_SPACING));
    xOffset = Window_GetWidth(window) * 8 - (textWidth + 32);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strBuf, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, color, NULL);
    Strbuf_Free(strBuf);
}

static void MainMenu_SetNumberPadding(StringTemplate *template, int value)
{
    int maxDigits, paddingMode;

    if (value >= 100) {
        maxDigits = 3;
        paddingMode = PADDING_MODE_NONE;
    } else if (value >= 10) {
        maxDigits = 3;
        paddingMode = PADDING_MODE_SPACES;
    } else {
        maxDigits = 3 - 1;
        paddingMode = PADDING_MODE_SPACES;
    }

    StringTemplate_SetNumber(template, 0, value, maxDigits, paddingMode, CHARSET_MODE_EN);
}

static BOOL MainMenu_LoadText_Continue(MainMenu *menu, int option, UnkStruct_ov97_02237808 *param2, int yPos)
{
    Strbuf *strBuf;
    StringTemplate *template;
    MessageLoader *msgLoader;
    TextColor color;

    msgLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MAIN_MENU, HEAP_ID_MAIN_MENU);
    template = StringTemplate_Default(HEAP_ID_MAIN_MENU);

    if (TrainerInfo_Gender(menu->trainerInfo) == GENDER_FEMALE) {
        color = TEXT_COLOR(3, 4, 15);
    } else {
        color = TEXT_COLOR(7, 8, 15);
    }

    ov97_0223795C(menu->bgConfig, param2, 3, yPos, sMainMenuOptionsData[option].messageEntry);

    for (int i = 1; i < sizeof(sContinueOptionTextEntries) / sizeof(u32); i++) {
        if ((i == 4) && menu->hasPokedex == FALSE) {
            continue;
        }

        strBuf = MessageUtil_ExpandedStrbuf(template, msgLoader, sContinueOptionTextEntries[i], HEAP_ID_MAIN_MENU);
        Text_AddPrinterWithParamsAndColor(param2->window, FONT_SYSTEM, strBuf, 32, i * 16, TEXT_SPEED_NO_TRANSFER, color, NULL);
        Strbuf_Free(strBuf);
    }

    StringTemplate_SetPlayerName(template, 0, menu->trainerInfo);
    MainMenu_PrintContinueRightSideInfo(param2->window, msgLoader, template, color, main_menu_player_name, 16 * 1);

    MainMenu_SetNumberPadding(template, PlayTime_GetHours(menu->playTime));
    StringTemplate_SetNumber(template, 1, PlayTime_GetMinutes(menu->playTime), 2, 2, 1);
    MainMenu_PrintContinueRightSideInfo(param2->window, msgLoader, template, color, main_menu_playtime_hours_minutes, 16 * 2);

    StringTemplate_SetNumber(template, 0, menu->badgeCount, 1, 0, 1);
    MainMenu_PrintContinueRightSideInfo(param2->window, msgLoader, template, color, main_menu_badge_count, 16 * 3);

    if (menu->hasPokedex) {
        MainMenu_SetNumberPadding(template, Pokedex_CountSeen(menu->pokedex));
        MainMenu_PrintContinueRightSideInfo(param2->window, msgLoader, template, color, main_menu_pokedex_seen_count, 16 * 4);
    }

    Window_DrawStandardFrame(param2->window, 0, param2->unk_38, param2->unk_3C);

    menu->loadedOptionIDs[option] = sMainMenuOptionsData[option].optionID;

    StringTemplate_Free(template);
    MessageLoader_Free(msgLoader);

    return TRUE;
}

static BOOL MainMenu_IsGBAGameConnected(MainMenu *menu, int option, UnkStruct_ov97_02237808 *param2, int param3)
{
    int msgEntry;

    if (menu->agbGameType == 0) {
        return FALSE;
    }

    switch (menu->agbGameType - 1) {
    case AGB_TYPE_RUBY:
        msgEntry = main_menu_migrate_from_ruby;
        break;
    case AGB_TYPE_SAPPHIRE:
        msgEntry = main_menu_migrate_from_sapphire;
        break;
    case AGB_TYPE_LEAFGREEN:
        msgEntry = main_menu_migrate_from_leafgreen;
        break;
    case AGB_TYPE_FIRERED:
        msgEntry = main_menu_migrate_from_firered;
        break;
    case AGB_TYPE_EMERALD:
        msgEntry = main_menu_migrate_from_emerald;
        break;
    }

    ov97_0223795C(menu->bgConfig, param2, 3, param3, msgEntry);
    ov97_0222B4FC(menu, 26, param3);

    menu->loadedOptionIDs[option] = sMainMenuOptionsData[option].optionID;

    return TRUE;
}

static BOOL ov97_0222B7DC(MainMenu *menu, int option, UnkStruct_ov97_02237808 *param2, int param3)
{
    if (menu->unk_34 == 0) {
        if (sub_0202DEC4(menu->mysteryGift) == TRUE) {
            menu->unk_34 = 1;
        }

        if (SystemData_GetMysteryGiftState(SaveData_GetSystemData(menu->saveData)) == TRUE) {
            menu->unk_34 = 1;
        }

        ov97_02237520(81);

        if (ov97_02237624()) {
            menu->unk_34 = 1;
            ov97_02238400(1);
        }
    }

    if (menu->unk_34 == 1) {
        if (menu->hasPokedex == FALSE) {
            menu->unk_34 = 0;
        }
    }

    if (menu->unk_34 == 1) {
        ov97_0223795C(menu->bgConfig, param2, 3, param3, sMainMenuOptionsData[option].messageEntry);
        ov97_0222B4FC(menu, 26, param3);

        menu->loadedOptionIDs[option] = sMainMenuOptionsData[option].optionID;
        menu->unk_38 |= 0x1;

        sub_0202DED4(menu->mysteryGift);
        return TRUE;
    }

    return FALSE;
}

static BOOL ov97_0222B888(MainMenu *menu, int option, UnkStruct_ov97_02237808 *param2, int yPos)
{
    if ((menu->unk_2C == 1) && menu->hasPokedex == TRUE) {
        ov97_0223795C(menu->bgConfig, param2, 3, yPos, sMainMenuOptionsData[option].messageEntry);
        ov97_0222B4AC(menu, 26, yPos, 1);

        menu->unk_FC[option] = 1;
        menu->loadedOptionIDs[option] = sMainMenuOptionsData[option].optionID;
        menu->unk_38 |= 0x2;

        return 1;
    }

    return 0;
}

static BOOL ov97_0222B8E4(MainMenu *menu, int option, UnkStruct_ov97_02237808 *param2, int yPos)
{
    if (menu->unk_30 == 1) {
        ov97_0223795C(menu->bgConfig, param2, 3, yPos, sMainMenuOptionsData[option].messageEntry);
        menu->unk_FC[option] = 1;

        ov97_0222B4AC(menu, 26, yPos, 1);
        menu->loadedOptionIDs[option] = sMainMenuOptionsData[option].optionID;
        return TRUE;
    }

    return FALSE;
}

static BOOL MainMenu_LoadText_WFCSettings(MainMenu *menu, int option, UnkStruct_ov97_02237808 *param2, int yPos)
{
    ov97_0223795C(menu->bgConfig, param2, 3, yPos, sMainMenuOptionsData[option].messageEntry);
    menu->unk_FC[option] = 2;

    ov97_0222B4AC(menu, 26, yPos, 2);
    menu->loadedOptionIDs[option] = sMainMenuOptionsData[option].optionID;

    return 1;
}

static BOOL MainMenu_LoadText_WiiMessageSettings(MainMenu *menu, int option, UnkStruct_ov97_02237808 *param2, int yPos)
{
    ov97_0223795C(menu->bgConfig, param2, 3, yPos, sMainMenuOptionsData[option].messageEntry);
    menu->unk_FC[option] = 0;

    ov97_0222B4FC(menu, 26, yPos);
    menu->loadedOptionIDs[option] = sMainMenuOptionsData[option].optionID;

    return TRUE;
}

static BOOL ov97_0222B9BC(MainMenu *menu)
{
    MainMenuOptionsData *optionsData;
    UnkStruct_ov97_02237808 v1;
    int i, v3, v4;

    v4 = 0;
    v3 = 1;

    menu->unk_20 = ((1 + 9) + 9);

    for (i = 0; i < (sizeof(sMainMenuOptionsData) / sizeof(MainMenuOptionsData)); i++) {
        optionsData = &sMainMenuOptionsData[i];

        ov97_02237808(&v1, &menu->loadedOptionWindows[i], 1, 550, 1, 2);
        ov97_02237858(&v1, 26, optionsData->height, menu->unk_20);

        if (optionsData->displayFunc != NULL) {
            if (menu->loadedOptionIDs[i]) {
                Window_SetXPos(v1.window, 3);
                Window_SetYPos(v1.window, v3);
                Window_DrawStandardFrame(v1.window, 0, v1.unk_38, v1.unk_3C);

                if (menu->unk_FC[i]) {
                    ov97_0222B4AC(menu, 26, v3, menu->unk_FC[i]);
                } else {
                    ov97_0222B4FC(menu, 26, v3);
                }

                v3 += optionsData->height + 2;
                v4 = 1;
            } else if (optionsData->displayFunc(menu, i, &v1, v3) == TRUE) {
                v3 += optionsData->height + 2;
                v4 = 1;
            }
        } else {
            ov97_0223795C(menu->bgConfig, &v1, 3, v3, optionsData->messageEntry);
            menu->loadedOptionIDs[i] = optionsData->optionID;
            v3 += optionsData->height + 2;
        }

        menu->unk_20 += 26 * optionsData->height;
    }

    return v4;
}

static void ov97_0222BAD8(MainMenu *menu, int param1)
{
    for (int i = 0; i < sizeof(sMainMenuOptionsData) / sizeof(MainMenuOptionsData); i++) {
        if (Window_IsInUse(&menu->loadedOptionWindows[i]) == FALSE) {
            continue;
        }

        if (i == param1) {
            Window_DrawStandardFrame(&menu->loadedOptionWindows[i], 1, (1 + 9), 3);
            Bg_ChangeTilemapRectPalette(menu->bgConfig, 0, Window_GetXPos(&menu->loadedOptionWindows[i]), Window_GetYPos(&menu->loadedOptionWindows[i]), Window_GetWidth(&menu->loadedOptionWindows[i]), Window_GetHeight(&menu->loadedOptionWindows[i]), 0);
        } else {
            Window_DrawStandardFrame(&menu->loadedOptionWindows[i], 1, 1, 2);
            Bg_ChangeTilemapRectPalette(menu->bgConfig, 0, Window_GetXPos(&menu->loadedOptionWindows[i]), Window_GetYPos(&menu->loadedOptionWindows[i]), Window_GetWidth(&menu->loadedOptionWindows[i]), Window_GetHeight(&menu->loadedOptionWindows[i]), 1);
        }
    }

    Bg_CopyTilemapBufferToVRAM(menu->bgConfig, 0);
}

static void ov97_0222BB88(MainMenu *menu, int param1)
{
    int v0 = menu->unk_54;

    while (TRUE) {
        v0 += param1;

        if (v0 == -1) {
            v0 = 0;
        }

        if (v0 == (sizeof(sMainMenuOptionsData) / sizeof(MainMenuOptionsData))) {
            v0 = (sizeof(sMainMenuOptionsData) / sizeof(MainMenuOptionsData)) - 1;
        }

        if (v0 == menu->unk_54) {
            break;
        }

        if (menu->loadedOptionIDs[v0]) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            break;
        }
    }

    menu->unk_54 = v0;
}

static void ov97_0222BBC8(MainMenu *menu)
{
    int v0 = (Window_GetYPos(&menu->loadedOptionWindows[menu->unk_54]) - 1) * 8;
    int v1 = (Window_GetHeight(&menu->loadedOptionWindows[menu->unk_54]) + 2) * 8;
    int v2 = menu->unk_120 / FX32_ONE;

    if (v2 > v0) {
        menu->unk_120 = v0 * FX32_ONE;
    }

    if (v2 + HW_LCD_HEIGHT <= v0) {
        menu->unk_120 = ((v0 + v1) - HW_LCD_HEIGHT) * FX32_ONE;
    }
}

static void ov97_0222BC1C(MainMenu *menu)
{
    int v1, v2;
    int v3, v4, v5;

    v1 = v2 = 0;
    v5 = menu->unk_120 / FX32_ONE;

    for (int i = 0; i < (sizeof(sMainMenuOptionsData) / sizeof(MainMenuOptionsData)); i++) {
        if (Window_IsInUse(&menu->loadedOptionWindows[i]) == FALSE) {
            continue;
        }

        v3 = (Window_GetYPos(&menu->loadedOptionWindows[i]) - 1) * 8;
        v4 = (Window_GetHeight(&menu->loadedOptionWindows[i]) + 2) * 8;

        if (v5 > v3) {
            v1 = 1;
        }

        if (v5 + HW_LCD_HEIGHT <= v3) {
            v2 = 1;
        }
    }

    Sprite_SetDrawFlag(menu->unk_168[0], v1);
    Sprite_SetDrawFlag(menu->unk_168[1], v2);
}

static void ov97_0222BC9C(OverlayManager *overlayMan)
{
    MainMenu *menu = OverlayManager_Data(overlayMan);

    if (menu->unk_168[0] || menu->unk_168[1]) {
        Sprite_Delete(menu->unk_168[0]);
        Sprite_Delete(menu->unk_168[1]);
        ov97_02237DA0();
    }

    for (int i = 0; i < (sizeof(sMainMenuOptionsData) / sizeof(MainMenuOptionsData)); i++) {
        if (menu->loadedOptionWindows[i].bgConfig) {
            Window_ClearAndCopyToVRAM(&menu->loadedOptionWindows[i]);
            Window_Remove(&menu->loadedOptionWindows[i]);
        }
    }

    Bg_FreeTilemapBuffer(menu->bgConfig, 0);
    Bg_FreeTilemapBuffer(menu->bgConfig, 1);
    Bg_FreeTilemapBuffer(menu->bgConfig, 2);
    Heap_FreeToHeap(menu->bgConfig);
    SetVBlankCallback(NULL, NULL);
}

u16 Unk_ov97_0223DF70[] = {
    0x5381,
    0x5383,
    0x5385,
    0x5387,
    0x5389,
    0x538B,
    0x538D,
    0x538F,
    0x5391,
    0x5393,
    0x5395,
    0x5397,
    0x5399,
    0x539B,
    0x539D,
    0x539F,
    0x539D,
    0x539B,
    0x5399,
    0x5397,
    0x5395,
    0x5393,
    0x5391,
    0x538F,
    0x538D,
    0x538B,
    0x5389,
    0x5387,
    0x5385,
    0x5383,
    0x0
};

static void ov97_0222BD14(MainMenu *menu)
{
    u16 *v0 = (u16 *)0x500006C;

    if (Unk_ov97_0223DF70[menu->unk_170] == 0) {
        menu->unk_170 = 0;
    }

    *v0 = Unk_ov97_0223DF70[menu->unk_170++];
}

static void ov97_0222BD48(void *param0)
{
    VramTransfer_Process();
    RenderOam_Transfer();
    Bg_RunScheduledUpdates((BgConfig *)param0);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static int MainMenu_Init(OverlayManager *overlayMan, int *param1)
{
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_MAIN_MENU, 0x40000);

    MainMenu *menu = OverlayManager_NewData(overlayMan, sizeof(MainMenu), HEAP_ID_MAIN_MENU);
    memset(menu, 0, sizeof(MainMenu));
    menu->bgConfig = BgConfig_New(HEAP_ID_MAIN_MENU);

    sub_0200F344(0, 0x0);
    sub_0200F344(1, 0x0);

    menu->saveData = ((ApplicationArgs *)OverlayManager_Args(overlayMan))->saveData;
    menu->mysteryGift = SaveData_MysteryGift(menu->saveData);
    menu->unk_11C = FX32_ONE * 0;
    menu->unk_120 = FX32_ONE * 0;
    menu->trainerInfo = SaveData_GetTrainerInfo(menu->saveData);
    menu->pokedex = SaveData_GetPokedex(menu->saveData);
    menu->playTime = SaveData_GetPlayTime(menu->saveData);
    menu->hasPokedex = Pokedex_IsObtained(menu->pokedex);
    menu->badgeCount = TrainerInfo_BadgeCount(menu->trainerInfo);
    menu->unk_12C = 15;

    ov97_02237694(HEAP_ID_MAIN_MENU);

    if (!SaveData_DataExists(menu->saveData)) {
        menu->noSaveData = TRUE;
    }

    sub_020053CC(0);
    sub_02004234(0);

    return 1;
}

static int MainMenu_Main(OverlayManager *overlayMan, int *param1)
{
    int v0;
    MainMenu *menu = OverlayManager_Data(overlayMan);

    menu->unk_18++;
    CTRDG_IsExisting();

    if (ov97_0222B07C(menu) == 1) {
        ov97_0222AF8C(menu);
        ov97_0222B25C(menu);
        return 0;
    }

    ov97_0222BD14(menu);

    switch (*param1) {
    case 0:
        ov97_0222B2EC(menu);
        *param1 = 1;
        break;
    case 1:
        if (ov97_0222AE60(menu) == 0) {
            *param1 = 3;
        } else {
            ov97_02237790(1, 2, param1, 8);
            *((u16 *)HW_BG_PLTT + 0) = ((31 & 31) << 10 | (12 & 31) << 5 | (12 & 31));
        }
        break;
    case 2:
        if (ov97_0222AE64(menu) == 0) {
            ov97_02237790(0, 3, param1, 8);
        }
        break;
    case 3:
        menu->unk_124 = 12;

        if (menu->noSaveData == TRUE) {
            menu->selectedOption = MAIN_MENU_OPTION_NEW_GAME;
            ov97_02237790(0, 7, param1, 8);
        } else {
            ov97_0222AF1C(menu);
            *param1 = 4;
        }
        break;
    case 4:
        ov97_0222B404(menu);
        ov97_0222B46C(menu);

        SetVBlankCallback(ov97_0222BD48, menu->bgConfig);

        ov97_0222B9BC(menu);
        ov97_0222BAD8(menu, menu->unk_54);
        ov97_02237790(1, 5, param1, 8);

        *((u16 *)HW_BG_PLTT + 0) = ((31 & 31) << 10 | (12 & 31) << 5 | (12 & 31));
        menu->unk_124 = 10;
        break;
    case 5:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            if (JOY_NEW(PAD_BUTTON_A)) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                menu->selectedOption = menu->loadedOptionIDs[menu->unk_54];

                if (menu->selectedOption == MAIN_MENU_OPTION_GBA_MIGRATOR) {
                    if (CTRDG_IsPulledOut() == TRUE) {
                        if (menu->unk_124 != 12) {
                            sub_02037D84();
                        }

                        sub_0209A8E0(81);
                    }
                }
            } else {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                menu->selectedOption = MAIN_MENU_OPTION_RETURN_TO_TITLE;
                ov97_02237784(1);
            }

            if (menu->selectedOption == MAIN_MENU_OPTION_NEW_GAME) {
                menu->unk_40 |= 0x80;
                menu->unk_130 = 1;
                *param1 = 6;
            } else {
                if (menu->selectedOption == MAIN_MENU_OPTION_CONNECT_TO_WII || menu->selectedOption == MAIN_MENU_OPTION_NINTENDO_WFC_SETTINGS) {
                    ov97_02237784(1);
                }

                ov97_02237790(0, 7, param1, 8);
            }

            if (menu->unk_124 == 13) {
                menu->unk_124 = 14;
            }
            break;
        }

        if (menu->unk_48 == 1) {
            ov97_0222B9BC(menu);
            menu->unk_48 = 0;
            break;
        }

        if (JOY_NEW(PAD_KEY_UP)) {
            ov97_0222BB88(menu, -1);
        }

        if (JOY_NEW(PAD_KEY_DOWN)) {
            ov97_0222BB88(menu, 1);
        }

        ov97_0222BAD8(menu, menu->unk_54);
        ov97_0222BBC8(menu);
        ov97_0222BC1C(menu);

        if ((*param1 == 5) && (menu->unk_150 == 1)) {
            menu->unk_150 = 0;
            menu->unk_130 = 1;
        }
        break;
    case 6:
        if (menu->unk_12C == 15) {
            if (menu->unk_138 & PAD_BUTTON_B) {
                *param1 = 5;
            } else {
                ov97_02237790(0, 7, param1, 8);
            }
        }
        break;
    case 7:
        ov97_0222BC9C(overlayMan);
        return 1;
        break;
    case 8:
        ov97_022377F0(param1);
        break;
    case 9:
        return 1;
        break;
    }

    ov97_0222AF8C(menu);
    ov97_0222B25C(menu);
    ov97_02237CA0();

    return 0;
}

extern const OverlayManagerTemplate Unk_ov97_0223D71C;
extern const OverlayManagerTemplate gGBAMigratorOverlayTemplate;
extern const OverlayManagerTemplate Unk_ov97_0223D6BC;
extern const OverlayManagerTemplate Unk_020F6DF0;
extern const OverlayManagerTemplate Unk_ov98_02249BAC;

static void MainMenu_LoadSelectedOption(MainMenu *menu)
{
    switch (menu->selectedOption) {
    case MAIN_MENU_OPTION_CONTINUE:
        EnqueueApplication(FS_OVERLAY_ID(game_start), &gGameStartLoadSaveOverlayTemplate);
        break;
    case MAIN_MENU_OPTION_NEW_GAME:
        EnqueueApplication(FS_OVERLAY_ID(game_start), &gGameStartRowanIntroOverlayTemplate);
        break;
    case MAIN_MENU_OPTION_MYSTERY_GIFT:
        EnqueueApplication(FS_OVERLAY_ID(overlay97), &Unk_ov97_0223D71C);
        break;
    case MAIN_MENU_OPTION_GBA_MIGRATOR:
        EnqueueApplication(FS_OVERLAY_ID(overlay97), &gGBAMigratorOverlayTemplate);
        break;
    case MAIN_MENU_OPTION_LINK_WITH_POKEMON_RANGER:
        EnqueueApplication(FS_OVERLAY_ID(overlay97), &Unk_ov97_0223D6BC);
        break;
    case MAIN_MENU_OPTION_CONNECT_TO_WII:
        RebootAndLoadROM("data/eoo.dat");
        break;
    case MAIN_MENU_OPTION_NINTENDO_WFC_SETTINGS:
        sub_0200569C();
        EnqueueApplication(FS_OVERLAY_ID_NONE, &Unk_020F6DF0);
        break;
    case MAIN_MENU_OPTION_WII_MESSAGE_SETTINGS:
        sub_0200569C();
        EnqueueApplication(FS_OVERLAY_ID(overlay98), &Unk_ov98_02249BAC);
        break;
    case MAIN_MENU_OPTION_RETURN_TO_TITLE:
        EnqueueApplication(FS_OVERLAY_ID(overlay77), &gTitleScreenOverlayTemplate);
        break;
    }
}

static int MainMenu_Exit(OverlayManager *overlayMan, int *unused)
{
    MainMenu *menu = OverlayManager_Data(overlayMan);

    MainMenu_LoadSelectedOption(menu);

    OverlayManager_FreeData(overlayMan);
    Heap_Destroy(HEAP_ID_MAIN_MENU);

    ov97_02238400(0);

    return 1;
}

const OverlayManagerTemplate gMainMenuOverlayTemplate = {
    .init = MainMenu_Init,
    .main = MainMenu_Main,
    .exit = MainMenu_Exit,
    .overlayID = FS_OVERLAY_ID_NONE
};
