#include "main_menu/ranger_link.h"

#include <nitro.h>
#include <string.h>

#include "constants/charcode.h"
#include "constants/graphics.h"

#include "game_opening/const_ov77_021D742C.h"
#include "main_menu/main_menu_util.h"
#include "main_menu/ov97_02232DC8.h"
#include "main_menu/ov97_02233408.h"
#include "main_menu/struct_ov97_02232E38.h"
#include "main_menu/struct_ov97_022335A8.h"
#include "main_menu/wonder_cards_app.h"
#include "pch/global_pch.h"
#include "savedata/save_table.h"

#include "bg_window.h"
#include "enums.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "main.h"
#include "message.h"
#include "message_util.h"
#include "mystery_gift.h"
#include "network_icon.h"
#include "overlay_manager.h"
#include "pokedex.h"
#include "render_window.h"
#include "rtc.h"
#include "save_player.h"
#include "savedata.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite.h"
#include "string_gf.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "text_banks.h"
#include "trainer_info.h"
#include "unk_02033200.h"
#include "versions.h"

#include "res/graphics/main_menu/main_menu_graphics.naix"
#include "res/text/bank/main_menu_alerts.h"
#include "res/text/bank/mystery_gift_menu.h"

FS_EXTERN_OVERLAY(game_opening);

#define BASE_TILE_STANDARD_WINDOW_FRAME 1
#define BASE_TILE_MESSAGE_BOX_FRAME     (BASE_TILE_STANDARD_WINDOW_FRAME + STANDARD_WINDOW_TILE_COUNT)
#define WINDOW_CONTENT_TILES_START      (BASE_TILE_MESSAGE_BOX_FRAME + SCROLLING_MESSAGE_BOX_TILE_COUNT)

typedef struct RangerPlatinumCharcodePair {
    u16 rangerCharcode;
    charcode_t platinumCharcode;
} RangerPlatinumCharcodePair;

enum RangerLinkMainState {
    RANGER_LINK_STATE_INIT = 0,
    RANGER_LINK_STATE_DEX_REQUIRED_ALERT,
    RANGER_LINK_STATE_CHECK_PGT_SPACE,
    RANGER_LINK_STATE_WAIT_EXIT_DELIVERY_MAN_ALERT,
    RANGER_LINK_STATE_HANDLE_WIRELESS,
    RANGER_LINK_STATE_SHOW_WONDERCARD,
    RANGER_LINK_STATE_WAIT_PLAYER_EXIT_WONDERCARD,
    RANGER_LINK_STATE_UNUSED_7,
    RANGER_LINK_STATE_UNUSED_8,
    RANGER_LINK_STATE_UNUSED_9,
    RANGER_LINK_STATE_UNUSED_10,
    RANGER_LINK_STATE_RESET_SYSTEM,
    RANGER_LINK_STATE_EXIT,
    RANGER_LINK_STATE_WAIT_SCREEN_TRANSITION,
    RANGER_LINK_STATE_UNUSED_14
};

enum RangerLinkRangerCommState {
    RANGER_COMM_STATE_INIT = 0,
    RANGER_COMM_STATE_WAIT_READY,
    RANGER_COMM_STATE_2,
    RANGER_COMM_STATE_3,
    RANGER_COMM_STATE_4,
    RANGER_COMM_STATE_UNUSED_5,
    RANGER_COMM_STATE_UNUSED_6,
    RANGER_COMM_STATE_7,
    RANGER_COMM_STATE_8,
    RANGER_COMM_STATE_9,
    RANGER_COMM_STATE_WAIT_RANGER_RESPONSE,
    RANGER_COMM_STATE_11,
    RANGER_COMM_STATE_12,
    RANGER_COMM_STATE_13,
    RANGER_COMM_STATE_14,
    RANGER_COMM_STATE_15,
    RANGER_COMM_STATE_16,
    RANGER_COMM_STATE_17,
    RANGER_COMM_STATE_18,
    RANGER_COMM_STATE_TRANSFER_COMPLETED,
    RANGER_COMM_STATE_WAIT_TRANSFER_COMPLETED,
    RANGER_COMM_STATE_UNUSED_21,
    RANGER_COMM_STATE_GOTO_CONNECTION_LOST,
    RANGER_COMM_STATE_CONNECTION_LOST,
    RANGER_COMM_STATE_UNUSED_24,
    RANGER_COMM_STATE_UNUSED_25,
    RANGER_COMM_STATE_CONNECTION_CANCELED,
    RANGER_COMM_STATE_DONE,
    RANGER_COMM_STATE_SHUTDOWN_WIRELESS_AND_REBOOT,
    RANGER_COMM_STATE_29,
    RANGER_COMM_STATE_30
};

enum RangerLinkRangerCommStatus {
    RANGER_COMM_STATUS_CONTINUE = 0,
    RANGER_COMM_STATUS_AWAITING_RANGER,
    RANGER_COMM_STATUS_UNUSED_2,
    RANGER_COMM_STATUS_UNUSED_3,
    RANGER_COMM_STATUS_TRANSFER_COMPLETED,
    RANGER_COMM_STATUS_CONNECTION_CANCELED,
};

typedef struct RangerLinkManager {
    enum HeapID heapID;
    BgConfig *bgConfig;
    SaveData *saveData;
    Pokedex *pokedex;
    TrainerInfo *trainerInfo;
    Options *options;
    Window stdWindow;
    Window messageBoxWindow;
    Window appNumberStdWindow;
    MainMenuWindow messageBox;
    MainMenuWindow manaphyEggTransferWindow;
    MainMenuWindow playerCommsDetails;
    int nextWindowBasetile;
    BOOL wirelessStarted;
    int unused_14C;
    int wirelessStatus;
    int unused_154;
    int wirelessActive;
    enum RangerLinkRangerCommState wirelessState;
    int timeout;
    int unk_164;
    int unk_168;
    u8 wirelessCommBuffer[12288];
    ApplicationManager *appMan;
    Sprite *downloadArrow;
    MysteryGift *mysteryGift;
    int unused_3178;
    int deliveryManOverloadedPrinterID;
    WonderCard manaphyEggWonderCard;
    WaitDial *waitDial;
} RangerLinkManager;

// never modified but can't be made const
static RangerPlatinumCharcodePair sRangerPlatinumCharcodesMapping[] = {
    { 0, CHAR_EOS },
    { 33, CHAR_WIDE_EXCLAMATION },
    { 35, CHAR_HASH },
    { 37, CHAR_PERCENT },
    { 39, CHAR_JP_DOUBLE_QUOTE_OPEN },
    { 40, CHAR_JP_DOUBLE_QUOTE_CLOSE },
    { 41, CHAR_ASTERISK },
    { 42, CHAR_PLUS },
    { 43, CHAR_COMMA },
    { 44, CHAR_MINUS },
    { 46, CHAR_SLASH },
    { 48, CHAR_WIDE_0 },
    { 49, CHAR_WIDE_1 },
    { 50, CHAR_WIDE_2 },
    { 51, CHAR_WIDE_3 },
    { 52, CHAR_WIDE_4 },
    { 53, CHAR_WIDE_5 },
    { 54, CHAR_WIDE_6 },
    { 55, CHAR_WIDE_7 },
    { 56, CHAR_WIDE_8 },
    { 57, CHAR_WIDE_9 },
    { 58, CHAR_COLON },
    { 59, CHAR_SEMICOLON },
    { 60, CHAR_JP_PAREN_OPEN },
    { 62, CHAR_JP_PAREN_CLOSE },
    { 63, CHAR_QUESTION },
    { 65, CHAR_WIDE_A },
    { 66, CHAR_WIDE_B },
    { 67, CHAR_WIDE_C },
    { 68, CHAR_WIDE_D },
    { 69, CHAR_WIDE_E },
    { 70, CHAR_WIDE_F },
    { 71, CHAR_WIDE_G },
    { 72, CHAR_WIDE_H },
    { 73, CHAR_WIDE_I },
    { 74, CHAR_WIDE_J },
    { 75, CHAR_WIDE_K },
    { 76, CHAR_WIDE_L },
    { 77, CHAR_WIDE_M },
    { 78, CHAR_WIDE_N },
    { 79, CHAR_WIDE_O },
    { 80, CHAR_WIDE_P },
    { 81, CHAR_WIDE_Q },
    { 82, CHAR_WIDE_R },
    { 83, CHAR_WIDE_S },
    { 84, CHAR_WIDE_T },
    { 85, CHAR_WIDE_U },
    { 86, CHAR_WIDE_V },
    { 87, CHAR_WIDE_W },
    { 88, CHAR_WIDE_X },
    { 89, CHAR_WIDE_Y },
    { 90, CHAR_WIDE_Z },
    { 97, CHAR_WIDE_a },
    { 98, CHAR_WIDE_b },
    { 99, CHAR_WIDE_c },
    { 100, CHAR_WIDE_d },
    { 101, CHAR_WIDE_e },
    { 102, CHAR_WIDE_f },
    { 103, CHAR_WIDE_g },
    { 104, CHAR_WIDE_h },
    { 105, CHAR_WIDE_i },
    { 106, CHAR_WIDE_j },
    { 107, CHAR_WIDE_k },
    { 108, CHAR_WIDE_l },
    { 109, CHAR_WIDE_m },
    { 110, CHAR_WIDE_n },
    { 111, CHAR_WIDE_o },
    { 112, CHAR_WIDE_p },
    { 113, CHAR_WIDE_q },
    { 114, CHAR_WIDE_r },
    { 115, CHAR_WIDE_s },
    { 116, CHAR_WIDE_t },
    { 117, CHAR_WIDE_u },
    { 118, CHAR_WIDE_v },
    { 119, CHAR_WIDE_w },
    { 120, CHAR_WIDE_x },
    { 121, CHAR_WIDE_y },
    { 122, CHAR_WIDE_z },
    { 129, CHAR_HIRAGANA_SMALL_A },
    { 130, CHAR_HIRAGANA_A },
    { 131, CHAR_HIRAGANA_SMALL_I },
    { 132, CHAR_HIRAGANA_I },
    { 133, CHAR_HIRAGANA_SMALL_U },
    { 134, CHAR_HIRAGANA_U },
    { 135, CHAR_HIRAGANA_SMALL_E },
    { 136, CHAR_HIRAGANA_E },
    { 137, CHAR_HIRAGANA_SMALL_O },
    { 138, CHAR_HIRAGANA_O },
    { 139, CHAR_HIRAGANA_KA },
    { 140, CHAR_HIRAGANA_GA },
    { 141, CHAR_HIRAGANA_KI },
    { 142, CHAR_HIRAGANA_GI },
    { 143, CHAR_HIRAGANA_KU },
    { 144, CHAR_HIRAGANA_GU },
    { 145, CHAR_HIRAGANA_KE },
    { 146, CHAR_HIRAGANA_GE },
    { 147, CHAR_HIRAGANA_KO },
    { 148, CHAR_HIRAGANA_GO },
    { 149, CHAR_HIRAGANA_SA },
    { 150, CHAR_HIRAGANA_ZA },
    { 151, CHAR_HIRAGANA_SHI },
    { 152, CHAR_HIRAGANA_JI },
    { 153, CHAR_HIRAGANA_SU },
    { 154, CHAR_HIRAGANA_ZU },
    { 155, CHAR_HIRAGANA_SE },
    { 156, CHAR_HIRAGANA_ZE },
    { 157, CHAR_HIRAGANA_SO },
    { 158, CHAR_HIRAGANA_ZO },
    { 159, CHAR_HIRAGANA_TA },
    { 160, CHAR_HIRAGANA_DA },
    { 161, CHAR_HIRAGANA_CHI },
    { 162, CHAR_HIRAGANA_DJI },
    { 163, CHAR_HIRAGANA_SOKUON },
    { 164, CHAR_HIRAGANA_TSU },
    { 165, CHAR_HIRAGANA_DZU },
    { 166, CHAR_HIRAGANA_TE },
    { 167, CHAR_HIRAGANA_DE },
    { 168, CHAR_HIRAGANA_TO },
    { 169, CHAR_HIRAGANA_DO },
    { 170, CHAR_HIRAGANA_NA },
    { 171, CHAR_HIRAGANA_NI },
    { 172, CHAR_HIRAGANA_NU },
    { 173, CHAR_HIRAGANA_NE },
    { 174, CHAR_HIRAGANA_NO },
    { 175, CHAR_HIRAGANA_HA },
    { 176, CHAR_HIRAGANA_BA },
    { 177, CHAR_HIRAGANA_PA },
    { 178, CHAR_HIRAGANA_HI },
    { 179, CHAR_HIRAGANA_BI },
    { 180, CHAR_HIRAGANA_PI },
    { 181, CHAR_HIRAGANA_FU },
    { 182, CHAR_HIRAGANA_BU },
    { 183, CHAR_HIRAGANA_PU },
    { 184, CHAR_HIRAGANA_HE },
    { 185, CHAR_HIRAGANA_BE },
    { 186, CHAR_HIRAGANA_PE },
    { 187, CHAR_HIRAGANA_HO },
    { 188, CHAR_HIRAGANA_BO },
    { 189, CHAR_HIRAGANA_PO },
    { 190, CHAR_HIRAGANA_MA },
    { 191, CHAR_HIRAGANA_MI },
    { 192, CHAR_HIRAGANA_MU },
    { 193, CHAR_HIRAGANA_ME },
    { 194, CHAR_HIRAGANA_MO },
    { 195, CHAR_HIRAGANA_SMALL_YA },
    { 196, CHAR_HIRAGANA_YA },
    { 197, CHAR_HIRAGANA_SMALL_YU },
    { 198, CHAR_HIRAGANA_YU },
    { 199, CHAR_HIRAGANA_SMALL_YO },
    { 200, CHAR_HIRAGANA_YO },
    { 201, CHAR_HIRAGANA_RA },
    { 202, CHAR_HIRAGANA_RI },
    { 203, CHAR_HIRAGANA_RU },
    { 204, CHAR_HIRAGANA_RE },
    { 205, CHAR_HIRAGANA_RO },
    { 207, CHAR_HIRAGANA_WA },
    { 210, CHAR_HIRAGANA_WO },
    { 211, CHAR_HIRAGANA_N },
    { 225, CHAR_KATAKANA_SMALL_A },
    { 226, CHAR_KATAKANA_A },
    { 227, CHAR_KATAKANA_SMALL_I },
    { 228, CHAR_KATAKANA_I },
    { 229, CHAR_KATAKANA_SMALL_U },
    { 230, CHAR_KATAKANA_U },
    { 231, CHAR_KATAKANA_SMALL_E },
    { 232, CHAR_KATAKANA_E },
    { 233, CHAR_KATAKANA_SMALL_O },
    { 234, CHAR_KATAKANA_O },
    { 235, CHAR_KATAKANA_KA },
    { 236, CHAR_KATAKANA_GA },
    { 237, CHAR_KATAKANA_KI },
    { 238, CHAR_KATAKANA_GI },
    { 239, CHAR_KATAKANA_KU },
    { 240, CHAR_KATAKANA_GU },
    { 241, CHAR_KATAKANA_KE },
    { 242, CHAR_KATAKANA_GE },
    { 243, CHAR_KATAKANA_KO },
    { 244, CHAR_KATAKANA_GO },
    { 245, CHAR_KATAKANA_SA },
    { 246, CHAR_KATAKANA_ZA },
    { 247, CHAR_KATAKANA_SHI },
    { 248, CHAR_KATAKANA_JI },
    { 249, CHAR_KATAKANA_SU },
    { 250, CHAR_KATAKANA_ZU },
    { 251, CHAR_KATAKANA_SE },
    { 252, CHAR_KATAKANA_ZE },
    { 253, CHAR_KATAKANA_SO },
    { 254, CHAR_KATAKANA_ZO },
    { 255, CHAR_KATAKANA_TA },
    { 256, CHAR_KATAKANA_DA },
    { 257, CHAR_KATAKANA_CHI },
    { 258, CHAR_KATAKANA_DJI },
    { 259, CHAR_KATAKANA_SOKUON },
    { 260, CHAR_KATAKANA_TSU },
    { 261, CHAR_KATAKANA_DZU },
    { 262, CHAR_KATAKANA_TE },
    { 263, CHAR_KATAKANA_DE },
    { 264, CHAR_KATAKANA_TO },
    { 265, CHAR_KATAKANA_DO },
    { 266, CHAR_KATAKANA_NA },
    { 267, CHAR_KATAKANA_NI },
    { 268, CHAR_KATAKANA_NU },
    { 269, CHAR_KATAKANA_NE },
    { 270, CHAR_KATAKANA_NO },
    { 271, CHAR_KATAKANA_HA },
    { 272, CHAR_KATAKANA_BA },
    { 273, CHAR_KATAKANA_PA },
    { 274, CHAR_KATAKANA_HI },
    { 275, CHAR_KATAKANA_BI },
    { 276, CHAR_KATAKANA_PI },
    { 277, CHAR_KATAKANA_FU },
    { 278, CHAR_KATAKANA_BU },
    { 279, CHAR_KATAKANA_PU },
    { 280, CHAR_KATAKANA_HE },
    { 281, CHAR_KATAKANA_BE },
    { 282, CHAR_KATAKANA_PE },
    { 283, CHAR_KATAKANA_HO },
    { 284, CHAR_KATAKANA_BO },
    { 285, CHAR_KATAKANA_PO },
    { 286, CHAR_KATAKANA_MA },
    { 287, CHAR_KATAKANA_MI },
    { 288, CHAR_KATAKANA_MU },
    { 289, CHAR_KATAKANA_ME },
    { 290, CHAR_KATAKANA_MO },
    { 291, CHAR_KATAKANA_SMALL_YA },
    { 292, CHAR_KATAKANA_YA },
    { 293, CHAR_KATAKANA_SMALL_YU },
    { 294, CHAR_KATAKANA_YU },
    { 295, CHAR_KATAKANA_SMALL_YO },
    { 296, CHAR_KATAKANA_YO },
    { 297, CHAR_KATAKANA_RA },
    { 298, CHAR_KATAKANA_RI },
    { 299, CHAR_KATAKANA_RU },
    { 300, CHAR_KATAKANA_RE },
    { 301, CHAR_KATAKANA_RO },
    { 303, CHAR_KATAKANA_WA },
    { 306, CHAR_KATAKANA_WO },
    { 307, CHAR_KATAKANA_N },
    { 320, CHAR_JP_DOUBLE_QUOTE_OPEN },
    { 321, CHAR_JP_DOUBLE_QUOTE_CLOSE },
    { 322, CHAR_JP_SINGLE_QUOTE_OPEN },
    { 323, CHAR_JP_SINGLE_QUOTE_CLOSE },
    { 326, CHAR_JP_DOT },
    { 327, CHAR_JP_ELLIPSIS },
    { 328, CHAR_WIDE_MALE },
    { 329, CHAR_WIDE_FEMALE },
    { 330, CHAR_JP_PERIOD },
    { 331, CHAR_YEN },
    { 333, CHAR_ARROW_UP },
    { 334, CHAR_ARROW_RIGHT },
    { 335, CHAR_ARROW_DOWN },
    { 336, CHAR_ARROW_LEFT },
    { 380, CHAR_OE },
    { 381, CHAR_oe },
    { 384, CHAR_A_GRAVE },
    { 385, CHAR_A_ACUTE },
    { 386, CHAR_A_CIRCUMFLEX },
    { 388, CHAR_A_DIERESIS },
    { 391, CHAR_C_OGONEK },
    { 393, CHAR_E_ACUTE },
    { 394, CHAR_E_CIRCUMFLEX },
    { 395, CHAR_E_DIERESIS },
    { 396, CHAR_I_GRAVE },
    { 397, CHAR_I_ACUTE },
    { 398, CHAR_I_CIRCUMFLEX },
    { 399, CHAR_I_DIERESIS },
    { 403, CHAR_O_ACUTE },
    { 404, CHAR_O_CIRCUMFLEX },
    { 406, CHAR_O_DIERSIS },
    { 410, CHAR_U_ACUTE },
    { 411, CHAR_U_CIRCUMFLEX },
    { 412, CHAR_U_DIERESIS },
    { 415, CHAR_ESZETT },
    { 416, CHAR_a_GRAVE },
    { 417, CHAR_a_ACUTE },
    { 418, CHAR_a_CIRCUMFLEX },
    { 420, CHAR_a_DIERESIS },
    { 423, CHAR_c_OGONEK },
    { 425, CHAR_e_ACUTE },
    { 426, CHAR_e_CIRCUMFLEX },
    { 427, CHAR_e_DIERESIS },
    { 428, CHAR_i_GRAVE },
    { 429, CHAR_i_ACUTE },
    { 430, CHAR_i_CIRCUMFLEX },
    { 431, CHAR_i_DIERESIS },
    { 435, CHAR_o_ACUTE },
    { 436, CHAR_o_CIRCUMFLEX },
    { 438, CHAR_o_DIERSIS },
    { 442, CHAR_u_ACUTE },
    { 443, CHAR_u_CIRCUMFLEX },
    { 444, CHAR_u_DIERESIS }
};

enum RangerLinkRangerCommState gDummyRangerLinkWirelessState; // required for matching (???), can't be made static

static void ShowPlayerCommsDetails(RangerLinkManager *param0);
static void LoadBottomScreenBGGraphics(RangerLinkManager *param0);
enum RangerLinkRangerCommStatus DoRangerComm(RangerLinkManager *param0);
MysteryGift *SaveData_GetMysteryGift(SaveData *saveData);

static u16 ConvertPlatinumCharcodeToRanger(charcode_t platinumCharcode)
{
    for (int i = 0; i < sizeof(sRangerPlatinumCharcodesMapping) / sizeof(RangerPlatinumCharcodePair); i++) {
        if (platinumCharcode == sRangerPlatinumCharcodesMapping[i].platinumCharcode) {
            return sRangerPlatinumCharcodesMapping[i].rangerCharcode;
        }
    }

    return 63; // Ranger question mark
}

static void TrainerIDToRangerString(u16 *dest, int id)
{
    // 48 is Ranger '0'
    dest[0] = id / 10000 + 48;
    id = id % 10000;
    dest[1] = id / 1000 + 48;
    id = id % 1000;
    dest[2] = id / 100 + 48;
    id = id % 100;
    dest[3] = id / 10 + 48;
    id = id % 10;
    dest[4] = id + 48;
}

static u16 sRangerCharsTrainerName[TRAINER_NAME_LEN + 1] = { 0 };

static u16 sRangerCharsTrainerID[10] = { 0 };

static u8 Unk_ov97_0223E53C[42] = {
    0x0,
    0x1,
    0x2,
    0x3,
    0x4,
    0x5,
    0x6,
    0x7,
    0x8,
    0x9
};

static UnkStruct_ov97_02232E38 WirelessCommInfo = {
    0x16,
    0x1,
    OS_LANGUAGE_JAPANESE,
    0x15,
    sRangerCharsTrainerID,
    sRangerCharsTrainerName
};

static void TrainerInfoToRangerStrings(RangerLinkManager *param0)
{
    const u16 *trainerName = TrainerInfo_Name(param0->trainerInfo);

    for (int i = 0; i < TRAINER_NAME_LEN + 1; i++) {
        sRangerCharsTrainerName[i] = ConvertPlatinumCharcodeToRanger(trainerName[i]);
    }

    u32 trainerID = TrainerInfo_ID_LowHalf(param0->trainerInfo);
    TrainerIDToRangerString(sRangerCharsTrainerID, trainerID);
    sRangerCharsTrainerID[5] = 0;
}

static void InitAndLoadGraphics(RangerLinkManager *param0)
{
    GXBanks banks = {
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
    GraphicsModes graphicsModes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_2D
    };

    GXLayers_SetBanks(&banks);

    SetAllGraphicsModes(&graphicsModes);
    MainMenuUtil_InitBGLayer(param0->bgConfig, BG_LAYER_MAIN_0, BG_SCREEN_SIZE_256x256, GX_BG_SCRBASE_0xf000 * 0x800, GX_BG_CHARBASE_0x00000 * 0x4000);
    MainMenuUtil_InitBGLayer(param0->bgConfig, BG_LAYER_MAIN_1, BG_SCREEN_SIZE_256x256, GX_BG_SCRBASE_0xf800 * 0x800, GX_BG_CHARBASE_0x04000 * 0x4000);
    MainMenuUtil_InitBGLayer(param0->bgConfig, BG_LAYER_SUB_0, BG_SCREEN_SIZE_256x256, GX_BG_SCRBASE_0x7800 * 0x800, GX_BG_CHARBASE_0x00000 * 0x4000);
    MainMenuUtil_InitBGLayer(param0->bgConfig, BG_LAYER_SUB_1, BG_SCREEN_SIZE_256x256, GX_BG_SCRBASE_0x7000 * 0x800, GX_BG_CHARBASE_0x04000 * 0x4000);

    Text_ResetAllPrinters();
    Font_LoadTextPalette(PAL_LOAD_MAIN_BG, PLTT_0, param0->heapID);
    LoadStandardWindowGraphics(param0->bgConfig, BG_LAYER_MAIN_0, BASE_TILE_STANDARD_WINDOW_FRAME, PLTT_1, STANDARD_WINDOW_SYSTEM, param0->heapID);

    int frameType = Options_Frame(param0->options);

    LoadMessageBoxGraphics(param0->bgConfig, BG_LAYER_MAIN_0, BASE_TILE_MESSAGE_BOX_FRAME, PLTT_2, frameType, param0->heapID);
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__MYSTERY, mystery_gift_bg_tiles_NCLR, PAL_LOAD_MAIN_BG, PLTT_OFFSET(8), PALETTE_SIZE_BYTES, param0->heapID);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__MYSTERY, mystery_gift_bg_tiles_NCGR_lz, param0->bgConfig, BG_LAYER_MAIN_1, 0, 160 * TILE_SIZE_4BPP, TRUE, param0->heapID);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__MYSTERY, mystery_gift_bg_NSCR_lz, param0->bgConfig, BG_LAYER_MAIN_1, 0, SCREEN_WIDTH_TILES * SCREEN_HEIGHT_TILES * sizeof(u16), TRUE, param0->heapID);
    Bg_ChangeTilemapRectPalette(param0->bgConfig, BG_LAYER_MAIN_1, 0, 0, SCREEN_WIDTH_TILES, SCREEN_HEIGHT_TILES, PLTT_8);
    Bg_CopyTilemapBufferToVRAM(param0->bgConfig, BG_LAYER_MAIN_1);

    LoadBottomScreenBGGraphics(param0);
}

static void LoadBottomScreenBGGraphics(RangerLinkManager *param0)
{
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__MYSTERY, mystery_gift_bg_tiles_NCLR, PAL_LOAD_SUB_BG, PLTT_OFFSET(8), PALETTE_SIZE_BYTES, param0->heapID);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__MYSTERY, mystery_gift_bg_tiles_NCGR_lz, param0->bgConfig, BG_LAYER_SUB_0, 0, 160 * TILE_SIZE_4BPP, TRUE, param0->heapID);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__MYSTERY, mystery_gift_bg_NSCR_lz, param0->bgConfig, BG_LAYER_SUB_0, 0, SCREEN_WIDTH_TILES * SCREEN_HEIGHT_TILES * sizeof(u16), TRUE, param0->heapID);
    Bg_ChangeTilemapRectPalette(param0->bgConfig, BG_LAYER_SUB_0, 0, 0, SCREEN_WIDTH_TILES, SCREEN_HEIGHT_TILES, PLTT_8);
    Bg_CopyTilemapBufferToVRAM(param0->bgConfig, BG_LAYER_SUB_0);
}

static BOOL ShowDexRequiredAlert(RangerLinkManager *param0)
{

    if (Window_IsInUse(&param0->stdWindow) == FALSE) {
        MainMenuWindow tmpWindow;
        MainMenuUtil_InitWindow(&tmpWindow, &param0->stdWindow, PLTT_0, TEXT_BANK_MAIN_MENU_ALERTS, BASE_TILE_STANDARD_WINDOW_FRAME, PLTT_1);
        MainMenuWindow_SetDimensionsAndBasetile(&tmpWindow, 22, TEXT_LINES_TILES(8), param0->nextWindowBasetile);
        MainMenuUtil_ShowWindowAtPos(param0->bgConfig, &tmpWindow, 5, 4, MainMenuAlerts_Text_RangerLinkNoDex);
        return TRUE;
    } else {
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Window_EraseStandardFrame(&param0->stdWindow, FALSE);
            Window_Remove(&param0->stdWindow);
            return FALSE;
        }
    }

    return TRUE;
}

static void ShowWindowsAndDownloadArrow(RangerLinkManager *param0)
{
    MainMenuUtil_InitWindow(&param0->messageBox, &param0->messageBoxWindow, PLTT_0, TEXT_BANK_MYSTERY_GIFT_MENU, BASE_TILE_MESSAGE_BOX_FRAME, PLTT_2);
    MainMenuWindow_SetDimensionsAndBasetile(&param0->messageBox, 27, TEXT_LINES_TILES(2), param0->nextWindowBasetile);
    MainMenuWindow_SetScrollableAndFont(&param0->messageBox, TRUE, FONT_MESSAGE);
    MainMenuUtil_ShowWindowAtPos(param0->bgConfig, &param0->messageBox, 2, 19, MysteryGiftMenu_Text_ReceivingRecruitmentMsgFromRanger);

    param0->nextWindowBasetile += MainMenuWindow_GetSize(&param0->messageBox);

    MainMenuUtil_InitWindow(&param0->manaphyEggTransferWindow, &param0->stdWindow, PLTT_0, TEXT_BANK_MYSTERY_GIFT_MENU, BASE_TILE_STANDARD_WINDOW_FRAME, PLTT_1);
    MainMenuWindow_SetDimensionsAndBasetile(&param0->manaphyEggTransferWindow, 30, TEXT_LINES_TILES(2), param0->nextWindowBasetile);
    MainMenuWindow_SetScrollableAndFont(&param0->manaphyEggTransferWindow, FALSE, FONT_MESSAGE);
    MainMenuUtil_ShowWindowAtPos(param0->bgConfig, &param0->manaphyEggTransferWindow, 1, 1, MysteryGiftMenu_Text_PokemonRangerManaphyEggTransfer);

    param0->nextWindowBasetile += MainMenuWindow_GetSize(&param0->manaphyEggTransferWindow);

    MainMenuUtil_InitCharPlttTransferBuffers();
    MainMenuUtil_InitSpriteLoader();
    MainMenuUtil_LoadSprite(NARC_INDEX_GRAPHIC__MYSTERY, download_arrow_NCGR_lz, download_arrow_NCLR, download_arrow_cell_NCER_lz, download_arrow_anim_NANR_lz, DS_SCREEN_MAIN);

    param0->downloadArrow = MainMenuUtil_InitSprite(DS_SCREEN_MAIN, param0->downloadArrow, HW_LCD_WIDTH / 2, 76, 1);

    ShowPlayerCommsDetails(param0);
}

static void ShowPlayerCommsDetails(RangerLinkManager *param0)
{
    StringTemplate *strTemplate = StringTemplate_Default(param0->heapID);

    MainMenuUtil_InitWindow(&param0->playerCommsDetails, &param0->appNumberStdWindow, PLTT_0, TEXT_BANK_MYSTERY_GIFT_MENU, BASE_TILE_STANDARD_WINDOW_FRAME, PLTT_1);
    MainMenuWindow_SetDimensionsAndBasetile(&param0->playerCommsDetails, 26, TEXT_LINES_TILES(2), param0->nextWindowBasetile);
    MainMenuWindow_SetScrollableAndFont(&param0->playerCommsDetails, FALSE, FONT_MESSAGE);

    param0->playerCommsDetails.strTemplate = strTemplate;

    StringTemplate_SetPlayerName(strTemplate, 0, param0->trainerInfo);
    StringTemplate_SetNumber(strTemplate, 1, TrainerInfo_ID_LowHalf(param0->trainerInfo), 5, PADDING_MODE_ZEROES, CHARSET_MODE_EN);

    MainMenuUtil_ShowWindowAtPos(param0->bgConfig, &param0->playerCommsDetails, 3, 13, MysteryGiftMenu_Text_TrainerNameAndIdTemplate);
    param0->playerCommsDetails.clearBeforePrinting = FALSE;
    MainMenuWindow_SetTextOffsets(&param0->playerCommsDetails, 0, Font_GetAttribute(FONT_SYSTEM, FONTATTR_MAX_LETTER_HEIGHT));
    MainMenuUtil_ShowWindowAtPos(param0->bgConfig, &param0->playerCommsDetails, -1, -1, MysteryGiftMenu_Text_ApplicationNumber);

    u32 appNumHigh, appNumLow;
    u8 macAddr[6];
    OS_GetMacAddress(macAddr);
    UnkStruct_ov97_022335A8 appNumber = ov97_022335A8(macAddr);
    ov97_022335EC(appNumber.unk_00.val2, &appNumHigh, &appNumLow);

    StringTemplate_SetNumber(strTemplate, 0, appNumHigh, 4, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
    StringTemplate_SetNumber(strTemplate, 1, appNumLow, 4, PADDING_MODE_ZEROES, CHARSET_MODE_EN);

    param0->playerCommsDetails.textRightAligned = TRUE;

    MainMenuUtil_ShowWindowAtPos(param0->bgConfig, &param0->playerCommsDetails, -1, -1, MysteryGiftMenu_Text_ApplicationNumberTemplate);
    StringTemplate_Free(strTemplate);
}

static void FreeApplicationResources(ApplicationManager *appMan)
{
    RangerLinkManager *rangerLinkMan = ApplicationManager_Data(appMan);

    MainMenuUtil_FreeSprites();

    if (Window_IsInUse(&rangerLinkMan->stdWindow) == TRUE) {
        Window_ClearAndCopyToVRAM(&rangerLinkMan->stdWindow);
        Window_Remove(&rangerLinkMan->stdWindow);
        Window_ClearAndCopyToVRAM(&rangerLinkMan->messageBoxWindow);
        Window_Remove(&rangerLinkMan->messageBoxWindow);
        Window_ClearAndCopyToVRAM(&rangerLinkMan->appNumberStdWindow);
        Window_Remove(&rangerLinkMan->appNumberStdWindow);
    }

    Bg_FreeTilemapBuffer(rangerLinkMan->bgConfig, BG_LAYER_MAIN_0);
    Bg_FreeTilemapBuffer(rangerLinkMan->bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(rangerLinkMan->bgConfig, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(rangerLinkMan->bgConfig, BG_LAYER_SUB_1);
    Heap_Free(rangerLinkMan->bgConfig);
}

static BOOL RangerLink_Init(ApplicationManager *appMan, int *unused)
{
    RangerLinkManager *rangerLinkMan = MainMenuUtil_InitAppAndFadeToBlack(appMan, HEAP_ID_RANGER_LINK, sizeof(RangerLinkManager), HEAP_SIZE_RANGER_LINK);

    rangerLinkMan->heapID = HEAP_ID_RANGER_LINK;
    rangerLinkMan->bgConfig = BgConfig_New(rangerLinkMan->heapID);
    rangerLinkMan->saveData = ((ApplicationArgs *)ApplicationManager_Args(appMan))->saveData;
    rangerLinkMan->trainerInfo = SaveData_GetTrainerInfo(rangerLinkMan->saveData);
    rangerLinkMan->pokedex = SaveData_GetPokedex(rangerLinkMan->saveData);
    rangerLinkMan->options = SaveData_GetOptions(rangerLinkMan->saveData);

    MainMenuUtil_Init(rangerLinkMan->heapID);

    rangerLinkMan->mysteryGift = SaveData_GetMysteryGift(rangerLinkMan->saveData);
    rangerLinkMan->unused_14C = 9;
    rangerLinkMan->nextWindowBasetile = WINDOW_CONTENT_TILES_START;
    rangerLinkMan->unused_154 = 0;
    rangerLinkMan->wirelessState = RANGER_COMM_STATE_INIT;
    rangerLinkMan->wirelessActive = FALSE;

    Heap_Create(HEAP_ID_SYSTEM, HEAP_ID_NETWORK_ICON, HEAP_SIZE_NETWORK_ICON);
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_9, SEQ_PRESENT, 1);

    return TRUE;
}

static BOOL RangerLink_Main(ApplicationManager *appMan, int *state)
{
    RangerLinkManager *rangerLinkMan = ApplicationManager_Data(appMan);

    switch (*state) {
    case RANGER_LINK_STATE_INIT:
        InitAndLoadGraphics(rangerLinkMan);

        if (Pokedex_IsObtained(rangerLinkMan->pokedex) == FALSE) {
            MainMenuUtil_StartScreenFadeToState(FADE_TYPE_BRIGHTNESS_IN, RANGER_LINK_STATE_DEX_REQUIRED_ALERT, state, RANGER_LINK_STATE_WAIT_SCREEN_TRANSITION);
        } else {
            *state = RANGER_LINK_STATE_CHECK_PGT_SPACE;
        }
        break;
    case RANGER_LINK_STATE_DEX_REQUIRED_ALERT:
        if (ShowDexRequiredAlert(rangerLinkMan) == FALSE) {
            MainMenuUtil_SetFadeToWhite(TRUE);
            MainMenuUtil_StartScreenFadeToState(FADE_TYPE_BRIGHTNESS_OUT, RANGER_LINK_STATE_EXIT, state, RANGER_LINK_STATE_WAIT_SCREEN_TRANSITION);
        }
        break;
    case RANGER_LINK_STATE_CHECK_PGT_SPACE:
        ShowWindowsAndDownloadArrow(rangerLinkMan);

        if (MysteryGift_CheckFreePgtSlotExists(rangerLinkMan->mysteryGift) == FALSE) {
            rangerLinkMan->messageBox.renderDelay = 1;
            rangerLinkMan->deliveryManOverloadedPrinterID = MainMenuUtil_ShowWindowAtPos(rangerLinkMan->bgConfig, &rangerLinkMan->messageBox, 2, 19, MysteryGiftMenu_Text_DeliveryManOverloaded);
            MainMenuUtil_StartScreenFadeToState(FADE_TYPE_BRIGHTNESS_IN, RANGER_LINK_STATE_WAIT_EXIT_DELIVERY_MAN_ALERT, state, RANGER_LINK_STATE_WAIT_SCREEN_TRANSITION);
        } else {
            rangerLinkMan->unused_14C = 7;
            MainMenuUtil_StartScreenFadeToState(FADE_TYPE_BRIGHTNESS_IN, RANGER_LINK_STATE_HANDLE_WIRELESS, state, RANGER_LINK_STATE_WAIT_SCREEN_TRANSITION);
        }
        break;
    case RANGER_LINK_STATE_WAIT_EXIT_DELIVERY_MAN_ALERT:
        if ((Text_IsPrinterActive(rangerLinkMan->deliveryManOverloadedPrinterID) == FALSE) && JOY_NEW(PAD_BUTTON_A)) {
            MainMenuUtil_SetFadeToWhite(TRUE);
            MainMenuUtil_StartScreenFadeToState(FADE_TYPE_BRIGHTNESS_OUT, RANGER_LINK_STATE_EXIT, state, RANGER_LINK_STATE_WAIT_SCREEN_TRANSITION);
        }
        break;
    case RANGER_LINK_STATE_HANDLE_WIRELESS:
        rangerLinkMan->wirelessStatus = DoRangerComm(rangerLinkMan);

        if (rangerLinkMan->wirelessStatus == RANGER_COMM_STATUS_CONNECTION_CANCELED) {
            MainMenuUtil_SetFadeToWhite(TRUE);
            MainMenuUtil_StartScreenFadeToState(FADE_TYPE_BRIGHTNESS_OUT, RANGER_LINK_STATE_EXIT, state, RANGER_LINK_STATE_WAIT_SCREEN_TRANSITION);
        } else if (rangerLinkMan->wirelessStatus == RANGER_COMM_STATUS_TRANSFER_COMPLETED) {
            MainMenuUtil_SetFadeToWhite(TRUE);
            MainMenuUtil_StartScreenFadeToState(FADE_TYPE_BRIGHTNESS_OUT, RANGER_LINK_STATE_EXIT, state, RANGER_LINK_STATE_WAIT_SCREEN_TRANSITION);
        }
        break;
    case RANGER_LINK_STATE_SHOW_WONDERCARD:
        LoadBottomScreenBGGraphics(rangerLinkMan);

        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, TRUE);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, FALSE);

        WonderCardsApp_ShowWondercard(rangerLinkMan->bgConfig, &rangerLinkMan->manaphyEggWonderCard, HEAP_ID_RANGER_LINK);
        MainMenuUtil_StartScreenFadeToState(FADE_TYPE_BRIGHTNESS_IN, RANGER_LINK_STATE_WAIT_PLAYER_EXIT_WONDERCARD, state, RANGER_LINK_STATE_WAIT_SCREEN_TRANSITION);
        rangerLinkMan->manaphyEggWonderCard.eventHeader.hasWonderCard = FALSE;
        break;
    case RANGER_LINK_STATE_WAIT_PLAYER_EXIT_WONDERCARD:
        if (gSystem.pressedKeys) {
            MainMenuUtil_StartScreenFadeToState(FADE_TYPE_BRIGHTNESS_OUT, RANGER_LINK_STATE_RESET_SYSTEM, state, RANGER_LINK_STATE_WAIT_SCREEN_TRANSITION);
        }
        break;
    case RANGER_LINK_STATE_RESET_SYSTEM:
        OS_ResetSystem(0);
        break;
    case RANGER_LINK_STATE_EXIT:
        FreeApplicationResources(appMan);
        return TRUE;
        break;
    case RANGER_LINK_STATE_WAIT_SCREEN_TRANSITION:
        MainMenuUtil_CheckScreenFadeDone(state);
        break;
    }

    MainMenuUtil_UpdateSprites();

    return FALSE;
}

static BOOL RangerLink_Exit(ApplicationManager *appMan, int *unused)
{
    Heap_Destroy(HEAP_ID_NETWORK_ICON);
    EnqueueApplication(FS_OVERLAY_ID(game_opening), &gTitleScreenAppTemplate);
    ApplicationManager_FreeData(appMan);
    Heap_Destroy(HEAP_ID_RANGER_LINK);

    return TRUE;
}

static void CreateManaphyEggMysteryGift(RangerLinkManager *param0)
{
    WonderCard *wonderCard = &param0->manaphyEggWonderCard;

    MI_CpuClear8(wonderCard, sizeof(WonderCard));

    MessageLoader *msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MYSTERY_GIFT_MENU, param0->heapID);
    StringTemplate *strTemplate = StringTemplate_Default(param0->heapID);

    wonderCard->pgt.type = MYST_GIFT_MANAPHY_EGG;
    String *tmp = MessageUtil_ExpandedString(strTemplate, msgLoader, MysteryGiftMenu_Text_ManaphyEggWonderCardTitle, param0->heapID);

    String_ToChars((const String *)tmp, wonderCard->eventHeader.title, WONDERCARD_TITLE_LENGTH);
    String_Free(tmp);

    wonderCard->eventHeader.validGames = (MainMenuUtil_CalcMysteryGiftVersionBit(VERSION_DIAMOND) | MainMenuUtil_CalcMysteryGiftVersionBit(VERSION_PEARL) | MainMenuUtil_CalcMysteryGiftVersionBit(VERSION_PLATINUM));
    wonderCard->eventHeader.id = 1;
    wonderCard->eventHeader.unique = FALSE;
    wonderCard->eventHeader.unk_4E_1 = 0;
    wonderCard->eventHeader.hasWonderCard = TRUE;
    wonderCard->eventHeader.savePgt = TRUE;
    wonderCard->eventHeader.fromSharing = FALSE;

    tmp = MessageUtil_ExpandedString(strTemplate, msgLoader, MysteryGiftMenu_Text_ManaphyEggWonderCardDescription, param0->heapID);

    String_ToChars((const String *)tmp, wonderCard->description, WONDERCARD_DESCRIPTION_LENGTH);
    String_Free(tmp);

    wonderCard->sharesLeft = 0;
    wonderCard->spritesSpecies[0] = SPECIES_MANAPHY;
    wonderCard->spritesSpecies[1] = SPECIES_NONE;
    wonderCard->spritesSpecies[2] = SPECIES_NONE;
    wonderCard->timesShared = 0;

    RTCDate now;
    GetCurrentDate(&now);
    wonderCard->receivedDate = RTC_ConvertDateToDay(&now);

    StringTemplate_Free(strTemplate);
    MessageLoader_Free(msgLoader);
    MysteryGift_TrySavePgt(param0->mysteryGift, &wonderCard->pgt, 3);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, FALSE);

    MainMenuUtil_LoadGiftSprite(param0->bgConfig, wonderCard);
}

static void SetTimeout(RangerLinkManager *param0, int param1)
{
    param0->timeout = param1;
}

static BOOL CheckCommunicationInterrupted(RangerLinkManager *rangerLinkMan, enum RangerLinkRangerCommState *state, BOOL param2, u32 cancelKey)
{
    if (--rangerLinkMan->timeout == 0) {
        ov97_022333BC();
        *state = RANGER_COMM_STATE_CONNECTION_LOST;
        return FALSE;
    }

    if (param2) {
        if (!ov97_02233388()) {
            ov97_022333BC();
            *state = RANGER_COMM_STATE_GOTO_CONNECTION_LOST;
            return FALSE;
        }
    }

    if (cancelKey && JOY_NEW(cancelKey)) {
        ov97_022333BC();
        *state = RANGER_COMM_STATE_CONNECTION_CANCELED;
        return TRUE;
    }

    return FALSE;
}

enum RangerLinkRangerCommStatus DoRangerComm(RangerLinkManager *rangerLinkMan)
{
    enum RangerLinkRangerCommState *state = &rangerLinkMan->wirelessState;

    if (rangerLinkMan->wirelessActive == TRUE) {
        NetworkIcon_SetStrength(WM_LINK_LEVEL_3 - ov97_02233230());

        ov97_022330DC();
        ov97_0223346C(1);
    }

    switch (*state) {
    case RANGER_COMM_STATE_INIT:
        TrainerInfoToRangerStrings(rangerLinkMan);
        WirelessDriver_Init();
        rangerLinkMan->wirelessStarted = TRUE;
        *state = RANGER_COMM_STATE_WAIT_READY;
        break;
    case RANGER_COMM_STATE_WAIT_READY:
        if (WirelessDriver_IsReady()) {
            ov97_02232E38(&WirelessCommInfo, rangerLinkMan->wirelessCommBuffer);
            rangerLinkMan->wirelessActive = TRUE;
            NetworkIcon_Init();
            *state = RANGER_COMM_STATE_2;
        }
        break;
    case RANGER_COMM_STATE_2:
        ov97_02233120();
        SetTimeout(rangerLinkMan, 1600);
        rangerLinkMan->waitDial = Window_AddWaitDial(&rangerLinkMan->messageBoxWindow, BASE_TILE_MESSAGE_BOX_FRAME);
        *state = RANGER_COMM_STATE_3;
        break;
    case RANGER_COMM_STATE_3: {
        int v0 = ov97_02233248();

        if (v0) {
            rangerLinkMan->unk_164 = v0 - 1;
            SetTimeout(rangerLinkMan, 1800);
            *state = RANGER_COMM_STATE_4;
        }

        CheckCommunicationInterrupted(rangerLinkMan, state, FALSE, PAD_BUTTON_B);
    } break;
    case RANGER_COMM_STATE_4:
        if (ov97_0223316C(rangerLinkMan->unk_164)) {
            ov97_022331A8(rangerLinkMan->unk_164);
            *state = RANGER_COMM_STATE_7;
            rangerLinkMan->timeout = 1800;
        }

        CheckCommunicationInterrupted(rangerLinkMan, state, FALSE, PAD_BUTTON_B);
        break;
    case RANGER_COMM_STATE_7:
        CheckCommunicationInterrupted(rangerLinkMan, state, FALSE, PAD_BUTTON_B);

        if (ov97_02233388()) {
            *state = RANGER_COMM_STATE_29;
        }
        break;
    case RANGER_COMM_STATE_29:
        MainMenuUtil_ShowWindowAtPos(rangerLinkMan->bgConfig, &rangerLinkMan->messageBox, 2, 19, MysteryGiftMenu_Text_PressAButton);
        Sprite_SetDrawFlag(rangerLinkMan->downloadArrow, FALSE);
        DestroyWaitDial(rangerLinkMan->waitDial);
        rangerLinkMan->waitDial = NULL;
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        rangerLinkMan->timeout = 1800;
        *state = RANGER_COMM_STATE_30;
        break;
    case RANGER_COMM_STATE_30:
        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            *state = RANGER_COMM_STATE_8;
        }

        CheckCommunicationInterrupted(rangerLinkMan, state, TRUE, PAD_BUTTON_B);
        break;
    case RANGER_COMM_STATE_8:
        ov97_02233268();
        *state = RANGER_COMM_STATE_9;
        rangerLinkMan->timeout = 1800;
        CheckCommunicationInterrupted(rangerLinkMan, state, TRUE, PAD_BUTTON_B);
        break;
    case RANGER_COMM_STATE_9:
        if (ov97_022332F4()) {
            ov97_0223329C();
            *state = RANGER_COMM_STATE_WAIT_RANGER_RESPONSE;
            rangerLinkMan->timeout = 3200;
            MainMenuUtil_ShowWindowAtPos(rangerLinkMan->bgConfig, &rangerLinkMan->messageBox, 2, 19, MysteryGiftMenu_Text_PleaseTouchRangerGameScreen);
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            rangerLinkMan->waitDial = NULL;

            return RANGER_COMM_STATUS_AWAITING_RANGER;
        }

        CheckCommunicationInterrupted(rangerLinkMan, state, TRUE, PAD_BUTTON_B);
        break;
    case RANGER_COMM_STATE_WAIT_RANGER_RESPONSE:
        if (ov97_022332F4()) {
            MainMenuUtil_ShowWindowAtPos(rangerLinkMan->bgConfig, &rangerLinkMan->messageBox, 2, 19, MysteryGiftMenu_Text_AwaitingTransferFromRanger);
            Sprite_SetDrawFlag(rangerLinkMan->downloadArrow, TRUE);
            ShowPlayerCommsDetails(rangerLinkMan);
            *state = RANGER_COMM_STATE_11;
        }

        CheckCommunicationInterrupted(rangerLinkMan, state, TRUE, PAD_BUTTON_B);
        break;
    case RANGER_COMM_STATE_11:
        ov97_022332C8(Unk_ov97_0223E53C, NELEMS(Unk_ov97_0223E53C), 1);
        *state = RANGER_COMM_STATE_12;
        rangerLinkMan->timeout = 3200;
        break;
    case RANGER_COMM_STATE_12:
        if (ov97_02233320()) {
            *state = RANGER_COMM_STATE_13;
            rangerLinkMan->timeout = 60;
            MainMenuUtil_ShowWindowAtPos(rangerLinkMan->bgConfig, &rangerLinkMan->messageBox, 2, 19, MysteryGiftMenu_Text_AwaitingTransferFromRanger);
        }

        CheckCommunicationInterrupted(rangerLinkMan, state, TRUE, PAD_BUTTON_B);
        break;
    case RANGER_COMM_STATE_13:
        if (--rangerLinkMan->timeout == 0) {
            MainMenuUtil_ShowWindowAtPos(rangerLinkMan->bgConfig, &rangerLinkMan->messageBox, 2, 19, MysteryGiftMenu_Text_ReceivingManaphyEgg);
            rangerLinkMan->waitDial = Window_AddWaitDial(&rangerLinkMan->messageBoxWindow, BASE_TILE_MESSAGE_BOX_FRAME);
            CreateManaphyEggMysteryGift(rangerLinkMan);
            MainMenuUtil_InitSaving(rangerLinkMan->saveData);
            *state = RANGER_COMM_STATE_14;
        }
        break;
    case RANGER_COMM_STATE_14:
        if (MainMenuUtil_SaveState() == SAVE_RESULT_PROCEED_FINAL) {
            *state = RANGER_COMM_STATE_15;
            rangerLinkMan->timeout = 6 + (OS_GetTickLo() % 54);
        }
        break;
    case RANGER_COMM_STATE_15:
        if (--rangerLinkMan->timeout == 0) {
            *state = RANGER_COMM_STATE_16;
        }
        break;
    case RANGER_COMM_STATE_16:
        ov97_022332C8(Unk_ov97_0223E53C, 42, 2);
        *state = RANGER_COMM_STATE_17;
        rangerLinkMan->timeout = 1200;
        break;
    case RANGER_COMM_STATE_17:
        if (ov97_0223334C()) {
            MainMenuUtil_ContinueSaving();

            *state = RANGER_COMM_STATE_18;
            rangerLinkMan->timeout = 800;
            break;
        }

        if (--rangerLinkMan->timeout == 0) {
            ov97_022333BC();
            *state = RANGER_COMM_STATE_CONNECTION_LOST;
            rangerLinkMan->timeout = 120;
        }

        if (!ov97_02233388()) {
            ov97_022333BC();
            *state = RANGER_COMM_STATE_GOTO_CONNECTION_LOST;
            rangerLinkMan->timeout = 120;
        }
        break;
    case RANGER_COMM_STATE_18:
        if (MainMenuUtil_GetSavingStatus() == MAIN_MENU_UTIL_SAVE_FAILURE) {
            ov97_022333BC();
            *state = RANGER_COMM_STATE_GOTO_CONNECTION_LOST;
            rangerLinkMan->timeout = 120;
        } else if (MainMenuUtil_GetSavingStatus() != MAIN_MENU_UTIL_SAVE_SUCCESS) {
            MainMenuUtil_SaveState();
        } else {
            if (ov97_02233320() || (!ov97_02233388())) {
                *state = RANGER_COMM_STATE_TRANSFER_COMPLETED;
                rangerLinkMan->timeout = 1;
                ov97_022333BC();
                break;
            }
        }

        if (--rangerLinkMan->timeout == 0) {
            ov97_022333BC();
            *state = RANGER_COMM_STATE_CONNECTION_LOST;
            rangerLinkMan->timeout = 10;
        }
        // Fallthrough
    case RANGER_COMM_STATE_TRANSFER_COMPLETED:
        if (--rangerLinkMan->timeout == 0) {
            *state = RANGER_COMM_STATE_WAIT_TRANSFER_COMPLETED;

            MainMenuUtil_ShowWindowAtPos(rangerLinkMan->bgConfig, &rangerLinkMan->messageBox, 2, 19, MysteryGiftMenu_Text_TransferCompleted);

            Sprite_SetDrawFlag(rangerLinkMan->downloadArrow, FALSE);
            DestroyWaitDial(rangerLinkMan->waitDial);
            Sound_PlayEffect(SEQ_SE_CONFIRM);

            rangerLinkMan->waitDial = NULL;
        }
        break;
    case RANGER_COMM_STATE_WAIT_TRANSFER_COMPLETED:
        if (ov97_022333FC()) {
            if (rangerLinkMan->wirelessStarted == TRUE) {
                WirelessDriver_Shutdown();
                NetworkIcon_Destroy();
                rangerLinkMan->wirelessStarted = FALSE;
            }

            if (gSystem.pressedKeys & PAD_BUTTON_A) {
                *state = RANGER_COMM_STATE_DONE;
                return RANGER_COMM_STATUS_TRANSFER_COMPLETED;
            }
        }
        break;
    case RANGER_COMM_STATE_GOTO_CONNECTION_LOST:
        *state = RANGER_COMM_STATE_CONNECTION_LOST;
    case RANGER_COMM_STATE_CONNECTION_LOST:
        MainMenuUtil_ShowWindowAtPos(rangerLinkMan->bgConfig, &rangerLinkMan->messageBox, 2, 19, MysteryGiftMenu_Text_ConnectionWithRangerLost);
        Sprite_SetDrawFlag(rangerLinkMan->downloadArrow, FALSE);

        if (rangerLinkMan->waitDial) {
            DestroyWaitDial(rangerLinkMan->waitDial);
        }

        rangerLinkMan->waitDial = NULL;
        *state = RANGER_COMM_STATE_SHUTDOWN_WIRELESS_AND_REBOOT;
        break;
    case RANGER_COMM_STATE_SHUTDOWN_WIRELESS_AND_REBOOT:
        if (ov97_022333FC()) {
            if (rangerLinkMan->wirelessStarted == TRUE) {
                WirelessDriver_Shutdown();
                NetworkIcon_Destroy();
                rangerLinkMan->wirelessStarted = FALSE;
            }

            if (gSystem.pressedKeys & PAD_BUTTON_A) {
                OS_ResetSystem(0);
            }
        }
        break;
    case RANGER_COMM_STATE_CONNECTION_CANCELED:
        if (ov97_022333FC()) {
            if (rangerLinkMan->wirelessStarted == TRUE) {
                WirelessDriver_Shutdown();
                NetworkIcon_Destroy();
                rangerLinkMan->wirelessStarted = FALSE;

                if (rangerLinkMan->waitDial) {
                    DestroyWaitDial(rangerLinkMan->waitDial);
                }

                return RANGER_COMM_STATUS_CONNECTION_CANCELED;
            }
        }
        break;
    case RANGER_COMM_STATE_DONE:
        break;
    default:
        break;
    }

    return RANGER_COMM_STATUS_CONTINUE;
}

const ApplicationManagerTemplate gRangerLinkAppTemplate = {
    RangerLink_Init,
    RangerLink_Main,
    RangerLink_Exit,
    FS_OVERLAY_ID_NONE
};
