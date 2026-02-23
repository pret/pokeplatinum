#include <nitro.h>
#include <string.h>

#include "struct_decls/pokedexdata_decl.h"

#include "game_opening/const_ov77_021D742C.h"
#include "main_menu/main_menu_util.h"
#include "main_menu/ov97_02232DC8.h"
#include "main_menu/ov97_02233408.h"
#include "main_menu/struct_ov97_02232E38.h"
#include "main_menu/struct_ov97_022335A8.h"
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
#include "trainer_info.h"
#include "unk_02033200.h"
#include "unk_020393C8.h"

#include "res/graphics/main_menu/main_menu_graphics.naix"

FS_EXTERN_OVERLAY(game_opening);

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_ov97_0223E0B0;

UnkStruct_ov97_0223E0B0 Unk_ov97_0223E0B0[] = {
    { 0x0, 0xffff },
    { 0x21, 0xE1 },
    { 0x23, 0x1C0 },
    { 0x25, 0x1D2 },
    { 0x27, 0xEA },
    { 0x28, 0xEB },
    { 0x29, 0x1bf },
    { 0x2A, 0x1BD },
    { 0x2B, 0x1AD },
    { 0x2C, 0x1BE },
    { 0x2E, 0x1B1 },
    { 0x30, 0xA2 },
    { 0x31, 0xA3 },
    { 0x32, 0xA4 },
    { 0x33, 0xA5 },
    { 0x34, 0xA6 },
    { 0x35, 0xA7 },
    { 0x36, 0xA8 },
    { 0x37, 0xA9 },
    { 0x38, 0xAA },
    { 0x39, 0xAB },
    { 0x3A, 0x1C4 },
    { 0x3B, 0x1C5 },
    { 0x3C, 0xEC },
    { 0x3E, 0xED },
    { 0x3F, 0x1AC },
    { 0x41, 0xAC },
    { 0x42, 0xAD },
    { 0x43, 0xAE },
    { 0x44, 0xaf },
    { 0x45, 0xB0 },
    { 0x46, 0xB1 },
    { 0x47, 0xB2 },
    { 0x48, 0xB3 },
    { 0x49, 0xB4 },
    { 0x4A, 0xB5 },
    { 0x4B, 0xB6 },
    { 0x4C, 0xB7 },
    { 0x4D, 0xB8 },
    { 0x4E, 0xB9 },
    { 0x4F, 0xBA },
    { 0x50, 0xBB },
    { 0x51, 0xBC },
    { 0x52, 0xBD },
    { 0x53, 0xBE },
    { 0x54, 0xbf },
    { 0x55, 0xC0 },
    { 0x56, 0xC1 },
    { 0x57, 0xC2 },
    { 0x58, 0xC3 },
    { 0x59, 0xC4 },
    { 0x5A, 0xC5 },
    { 0x61, 0xC6 },
    { 0x62, 0xC7 },
    { 0x63, 0xC8 },
    { 0x64, 0xC9 },
    { 0x65, 0xCA },
    { 0x66, 0xCB },
    { 0x67, 0xCC },
    { 0x68, 0xCD },
    { 0x69, 0xCE },
    { 0x6A, 0xcf },
    { 0x6B, 0xD0 },
    { 0x6C, 0xD1 },
    { 0x6D, 0xD2 },
    { 0x6E, 0xD3 },
    { 0x6F, 0xD4 },
    { 0x70, 0xD5 },
    { 0x71, 0xD6 },
    { 0x72, 0xD7 },
    { 0x73, 0xD8 },
    { 0x74, 0xD9 },
    { 0x75, 0xDA },
    { 0x76, 0xDB },
    { 0x77, 0xDC },
    { 0x78, 0xDD },
    { 0x79, 0xDE },
    { 0x7A, 0xdf },
    { 0x81, 0x2 },
    { 0x82, 0x3 },
    { 0x83, 0x4 },
    { 0x84, 0x5 },
    { 0x85, 0x6 },
    { 0x86, 0x7 },
    { 0x87, 0x8 },
    { 0x88, 0x9 },
    { 0x89, 0xA },
    { 0x8A, 0xB },
    { 0x8B, 0xC },
    { 0x8C, 0xD },
    { 0x8D, 0xE },
    { 0x8E, 0x0f },
    { 0x8F, 0x10 },
    { 0x90, 0x11 },
    { 0x91, 0x12 },
    { 0x92, 0x13 },
    { 0x93, 0x14 },
    { 0x94, 0x15 },
    { 0x95, 0x16 },
    { 0x96, 0x17 },
    { 0x97, 0x18 },
    { 0x98, 0x19 },
    { 0x99, 0x1A },
    { 0x9A, 0x1B },
    { 0x9B, 0x1C },
    { 0x9C, 0x1D },
    { 0x9D, 0x1E },
    { 0x9E, 0x1f },
    { 0x9F, 0x20 },
    { 0xA0, 0x21 },
    { 0xA1, 0x22 },
    { 0xA2, 0x23 },
    { 0xA3, 0x24 },
    { 0xA4, 0x25 },
    { 0xA5, 0x26 },
    { 0xA6, 0x27 },
    { 0xA7, 0x28 },
    { 0xA8, 0x29 },
    { 0xA9, 0x2A },
    { 0xAA, 0x2B },
    { 0xAB, 0x2C },
    { 0xAC, 0x2D },
    { 0xAD, 0x2E },
    { 0xAE, 0x2f },
    { 0xAF, 0x30 },
    { 0xB0, 0x31 },
    { 0xB1, 0x32 },
    { 0xB2, 0x33 },
    { 0xB3, 0x34 },
    { 0xB4, 0x35 },
    { 0xB5, 0x36 },
    { 0xB6, 0x37 },
    { 0xB7, 0x38 },
    { 0xB8, 0x39 },
    { 0xB9, 0x3A },
    { 0xBA, 0x3B },
    { 0xBB, 0x3C },
    { 0xBC, 0x3D },
    { 0xBD, 0x3E },
    { 0xBE, 0x3f },
    { 0xBF, 0x40 },
    { 0xC0, 0x41 },
    { 0xC1, 0x42 },
    { 0xC2, 0x43 },
    { 0xC3, 0x44 },
    { 0xC4, 0x45 },
    { 0xC5, 0x46 },
    { 0xC6, 0x47 },
    { 0xC7, 0x48 },
    { 0xC8, 0x49 },
    { 0xC9, 0x4A },
    { 0xCA, 0x4B },
    { 0xCB, 0x4C },
    { 0xCC, 0x4D },
    { 0xCD, 0x4E },
    { 0xCF, 0x4f },
    { 0xD2, 0x50 },
    { 0xD3, 0x51 },
    { 0xE1, 0x52 },
    { 0xE2, 0x53 },
    { 0xE3, 0x54 },
    { 0xE4, 0x55 },
    { 0xE5, 0x56 },
    { 0xE6, 0x57 },
    { 0xE7, 0x58 },
    { 0xE8, 0x59 },
    { 0xE9, 0x5A },
    { 0xEA, 0x5B },
    { 0xEB, 0x5C },
    { 0xEC, 0x5D },
    { 0xED, 0x5E },
    { 0xEE, 0x5f },
    { 0xEF, 0x60 },
    { 0xF0, 0x61 },
    { 0xF1, 0x62 },
    { 0xF2, 0x63 },
    { 0xF3, 0x64 },
    { 0xF4, 0x65 },
    { 0xF5, 0x66 },
    { 0xF6, 0x67 },
    { 0xF7, 0x68 },
    { 0xF8, 0x69 },
    { 0xF9, 0x6A },
    { 0xFA, 0x6B },
    { 0xFB, 0x6C },
    { 0xFC, 0x6D },
    { 0xFD, 0x6E },
    { 0xFE, 0x6f },
    { 0xFF, 0x70 },
    { 0x100, 0x71 },
    { 0x101, 0x72 },
    { 0x102, 0x73 },
    { 0x103, 0x74 },
    { 0x104, 0x75 },
    { 0x105, 0x76 },
    { 0x106, 0x77 },
    { 0x107, 0x78 },
    { 0x108, 0x79 },
    { 0x109, 0x7A },
    { 0x10A, 0x7B },
    { 0x10B, 0x7C },
    { 0x10C, 0x7D },
    { 0x10D, 0x7E },
    { 0x10E, 0x7f },
    { 0x10F, 0x80 },
    { 0x110, 0x81 },
    { 0x111, 0x82 },
    { 0x112, 0x83 },
    { 0x113, 0x84 },
    { 0x114, 0x85 },
    { 0x115, 0x86 },
    { 0x116, 0x87 },
    { 0x117, 0x88 },
    { 0x118, 0x89 },
    { 0x119, 0x8A },
    { 0x11A, 0x8B },
    { 0x11B, 0x8C },
    { 0x11C, 0x8D },
    { 0x11D, 0x8E },
    { 0x11E, 0x8f },
    { 0x11F, 0x90 },
    { 0x120, 0x91 },
    { 0x121, 0x92 },
    { 0x122, 0x93 },
    { 0x123, 0x94 },
    { 0x124, 0x95 },
    { 0x125, 0x96 },
    { 0x126, 0x97 },
    { 0x127, 0x98 },
    { 0x128, 0x99 },
    { 0x129, 0x9A },
    { 0x12A, 0x9B },
    { 0x12B, 0x9C },
    { 0x12C, 0x9D },
    { 0x12D, 0x9E },
    { 0x12F, 0x9f },
    { 0x132, 0xA0 },
    { 0x133, 0xA1 },
    { 0x140, 0xEA },
    { 0x141, 0xEB },
    { 0x142, 0xE8 },
    { 0x143, 0xE9 },
    { 0x146, 0xE6 },
    { 0x147, 0xE5 },
    { 0x148, 0xEE },
    { 0x149, 0xef },
    { 0x14A, 0xE4 },
    { 0x14B, 0x112 },
    { 0x14D, 0x11C },
    { 0x14E, 0x11E },
    { 0x14F, 0x11D },
    { 0x150, 0x11B },
    { 0x17C, 0x19f },
    { 0x17D, 0x1A0 },
    { 0x180, 0x15f },
    { 0x181, 0x160 },
    { 0x182, 0x161 },
    { 0x184, 0x163 },
    { 0x187, 0x166 },
    { 0x189, 0x168 },
    { 0x18A, 0x169 },
    { 0x18B, 0x16A },
    { 0x18C, 0x16B },
    { 0x18D, 0x16C },
    { 0x18E, 0x16D },
    { 0x18F, 0x16E },
    { 0x193, 0x172 },
    { 0x194, 0x173 },
    { 0x196, 0x175 },
    { 0x19A, 0x179 },
    { 0x19B, 0x17A },
    { 0x19C, 0x17B },
    { 0x19F, 0x17E },
    { 0x1A0, 0x17f },
    { 0x1A1, 0x180 },
    { 0x1A2, 0x181 },
    { 0x1A4, 0x183 },
    { 0x1A7, 0x186 },
    { 0x1A9, 0x188 },
    { 0x1AA, 0x189 },
    { 0x1AB, 0x18A },
    { 0x1AC, 0x18B },
    { 0x1AD, 0x18C },
    { 0x1AE, 0x18D },
    { 0x1AF, 0x18E },
    { 0x1B3, 0x192 },
    { 0x1B4, 0x193 },
    { 0x1B6, 0x195 },
    { 0x1BA, 0x199 },
    { 0x1BB, 0x19A },
    { 0x1BC, 0x19B }
};

typedef struct {
    enum HeapID heapID;
    BgConfig *unk_04;
    SaveData *saveData;
    Pokedex *unk_0C;
    TrainerInfo *unk_10;
    Options *options;
    Window unk_18;
    Window unk_28;
    Window unk_38;
    MainMenuWindow unk_48;
    MainMenuWindow unk_9C;
    MainMenuWindow unk_F0;
    int unk_144;
    int unk_148;
    int unk_14C;
    int unk_150;
    int unk_154;
    int unk_158;
    int unk_15C;
    int unk_160;
    int unk_164;
    int unk_168;
    u8 unk_16C[12288];
    ApplicationManager *appMan;
    Sprite *unk_3170;
    MysteryGift *unk_3174;
    int unk_3178;
    int unk_317C;
    WonderCard unk_3180;
    void *unk_34D8;
} UnkStruct_ov97_0222C388;

enum {
    UnkEnum_ov97_0222C6F8_00,
    UnkEnum_ov97_0222C6F8_01,
    UnkEnum_ov97_0222C6F8_02,
    UnkEnum_ov97_0222C6F8_03,
    UnkEnum_ov97_0222C6F8_04,
    UnkEnum_ov97_0222C6F8_05,
    UnkEnum_ov97_0222C6F8_06,
    UnkEnum_ov97_0222C6F8_07,
    UnkEnum_ov97_0222C6F8_08,
    UnkEnum_ov97_0222C6F8_09,
    UnkEnum_ov97_0222C6F8_10,
    UnkEnum_ov97_0222C6F8_11,
    UnkEnum_ov97_0222C6F8_12,
    UnkEnum_ov97_0222C6F8_13,
    UnkEnum_ov97_0222C6F8_14,
    UnkEnum_ov97_0222C6F8_15,
    UnkEnum_ov97_0222C6F8_16,
    UnkEnum_ov97_0222C6F8_17,
    UnkEnum_ov97_0222C6F8_18,
    UnkEnum_ov97_0222C6F8_19,
    UnkEnum_ov97_0222C6F8_20,
    UnkEnum_ov97_0222C6F8_21,
    UnkEnum_ov97_0222C6F8_22,
    UnkEnum_ov97_0222C6F8_23,
    UnkEnum_ov97_0222C6F8_24,
    UnkEnum_ov97_0222C6F8_25,
    UnkEnum_ov97_0222C6F8_26,
    UnkEnum_ov97_0222C6F8_27,
    UnkEnum_ov97_0222C6F8_28,
    UnkEnum_ov97_0222C6F8_29,
    UnkEnum_ov97_0222C6F8_30,
    UnkEnum_ov97_0222C6F8_31
} UnkEnum_ov97_0222C6F8;

enum {
    UnkEnum_ov97_0222C78C_00,
    UnkEnum_ov97_0222C78C_01,
    UnkEnum_ov97_0222C78C_02,
    UnkEnum_ov97_0222C78C_03,
    UnkEnum_ov97_0222C78C_04,
    UnkEnum_ov97_0222C78C_05,
    UnkEnum_ov97_0222C78C_06,
    UnkEnum_ov97_0222C78C_07,
    UnkEnum_ov97_0222C78C_08,
    UnkEnum_ov97_0222C78C_09,
    UnkEnum_ov97_0222C78C_10,
    UnkEnum_ov97_0222C78C_11,
    UnkEnum_ov97_0222C78C_12,
    UnkEnum_ov97_0222C78C_13,
    UnkEnum_ov97_0222C78C_14
} UnkEnum_ov97_0222C78C;

static void ov97_0222C388(UnkStruct_ov97_0222C388 *param0);
int ov97_0222CB10(UnkStruct_ov97_0222C388 *param0);
MysteryGift *SaveData_GetMysteryGift(SaveData *saveData);
void WonderCardsApp_ShowWondercard(BgConfig *bgConfig, WonderCard *wonderCard, enum HeapID heapID);

static u16 ov97_0222C174(u16 param0)
{
    int v0;

    for (v0 = 0; v0 < sizeof(Unk_ov97_0223E0B0) / sizeof(UnkStruct_ov97_0223E0B0); v0++) {
        if (param0 == Unk_ov97_0223E0B0[v0].unk_02) {
            return Unk_ov97_0223E0B0[v0].unk_00;
        }
    }

    return 63;
}

static void ov97_0222C1A4(u16 *param0, int param1)
{
    param0[0] = param1 / 10000 + 48;
    param1 = param1 % 10000;
    param0[1] = param1 / 1000 + 48;
    param1 = param1 % 1000;
    param0[2] = param1 / 100 + 48;
    param1 = param1 % 100;
    param0[3] = param1 / 10 + 48;
    param1 = param1 % 10;
    param0[4] = param1 + 48;
}

static u16 Unk_ov97_0223F180[7 + 1] = {
    0x0
};

static u16 Unk_ov97_0223F190[10] = {
    0x0
};

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

static UnkStruct_ov97_02232E38 Unk_ov97_0223E0A4 = {
    0x16,
    0x1,
    OS_LANGUAGE_JAPANESE,
    0x15,
    Unk_ov97_0223F190,
    Unk_ov97_0223F180
};

static void ov97_0222C210(UnkStruct_ov97_0222C388 *param0)
{
    int v0;
    u32 v1;
    const u16 *v2 = TrainerInfo_Name(param0->unk_10);

    for (v0 = 0; v0 < 7 + 1; v0++) {
        Unk_ov97_0223F180[v0] = ov97_0222C174(v2[v0]);
    }

    v1 = TrainerInfo_ID_LowHalf(param0->unk_10);
    ov97_0222C1A4(&Unk_ov97_0223F190[0], v1);
    Unk_ov97_0223F190[5] = 0;
}

static void ov97_0222C254(UnkStruct_ov97_0222C388 *param0)
{
    int v0;
    GXBanks v1 = {
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
    GraphicsModes v2 = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_2D
    };

    GXLayers_SetBanks(&v1);

    SetAllGraphicsModes(&v2);
    MainMenuUtil_InitBGLayer(param0->unk_04, 0, 1, 0xF000, 0x0);
    MainMenuUtil_InitBGLayer(param0->unk_04, 1, 1, 0xF800, 0x4000);
    MainMenuUtil_InitBGLayer(param0->unk_04, 4, 1, 0x7800, 0x0);
    MainMenuUtil_InitBGLayer(param0->unk_04, 5, 1, 0x7000, 0x4000);

    Text_ResetAllPrinters();
    Font_LoadTextPalette(0, 0 * 32, param0->heapID);
    LoadStandardWindowGraphics(param0->unk_04, BG_LAYER_MAIN_0, 1, 1, 0, param0->heapID);

    v0 = Options_Frame(param0->options);

    LoadMessageBoxGraphics(param0->unk_04, BG_LAYER_MAIN_0, (1 + 9), 2, v0, param0->heapID);
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__MYSTERY, mystery_gift_bg_tiles_NCLR, 0, 16 * 2 * 8, 16 * 2, param0->heapID);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__MYSTERY, mystery_gift_bg_tiles_NCGR_lz, param0->unk_04, 1, 0, 10 * 16 * 0x20, 1, param0->heapID);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__MYSTERY, mystery_gift_bg_NSCR_lz, param0->unk_04, 1, 0, 32 * 24 * 2, 1, param0->heapID);
    Bg_ChangeTilemapRectPalette(param0->unk_04, 1, 0, 0, 32, 24, 8);
    Bg_CopyTilemapBufferToVRAM(param0->unk_04, 1);

    ov97_0222C388(param0);
}

static void ov97_0222C388(UnkStruct_ov97_0222C388 *param0)
{
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__MYSTERY, mystery_gift_bg_tiles_NCLR, 4, 16 * 2 * 8, 16 * 2, param0->heapID);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__MYSTERY, mystery_gift_bg_tiles_NCGR_lz, param0->unk_04, 4, 0, 10 * 16 * 0x20, 1, param0->heapID);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__MYSTERY, mystery_gift_bg_NSCR_lz, param0->unk_04, 4, 0, 32 * 24 * 2, 1, param0->heapID);
    Bg_ChangeTilemapRectPalette(param0->unk_04, 4, 0, 0, 32, 24, 8);
    Bg_CopyTilemapBufferToVRAM(param0->unk_04, 4);
}

static BOOL ov97_0222C404(UnkStruct_ov97_0222C388 *param0)
{
    MainMenuWindow v0;

    if (Window_IsInUse(&param0->unk_18) == 0) {
        MainMenuUtil_InitWindow(&v0, &param0->unk_18, 0, 14, 1, 1);
        MainMenuWindow_SetDimensionsAndBasetile(&v0, 22, 16, param0->unk_144);
        MainMenuUtil_ShowWindowAtPos(param0->unk_04, &v0, 5, 4, 2);
        return 1;
    } else {
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Window_EraseStandardFrame(&param0->unk_18, 0);
            Window_Remove(&param0->unk_18);
            return 0;
        }
    }

    return 1;
}

static void ov97_0222C578(UnkStruct_ov97_0222C388 *param0);

static void ov97_0222C47C(UnkStruct_ov97_0222C388 *param0)
{
    MainMenuUtil_InitWindow(&param0->unk_48, &param0->unk_28, 0, 421, (1 + 9), 2);
    MainMenuWindow_SetDimensionsAndBasetile(&param0->unk_48, 27, 4, param0->unk_144);
    MainMenuWindow_SetScrollableAndFont(&param0->unk_48, 1, 1);
    MainMenuUtil_ShowWindowAtPos(param0->unk_04, &param0->unk_48, 2, 19, 70);

    param0->unk_144 += MainMenuWindow_GetSize(&param0->unk_48);

    MainMenuUtil_InitWindow(&param0->unk_9C, &param0->unk_18, 0, 421, 1, 1);
    MainMenuWindow_SetDimensionsAndBasetile(&param0->unk_9C, 30, 4, param0->unk_144);
    MainMenuWindow_SetScrollableAndFont(&param0->unk_9C, 0, 1);
    MainMenuUtil_ShowWindowAtPos(param0->unk_04, &param0->unk_9C, 1, 1, 11);

    param0->unk_144 += MainMenuWindow_GetSize(&param0->unk_9C);

    MainMenuUtil_InitCharPlttTransferBuffers();
    MainMenuUtil_InitSpriteLoader();
    MainMenuUtil_LoadSprite(NARC_INDEX_GRAPHIC__MYSTERY, download_arrow_NCGR_lz, download_arrow_NCLR, download_arrow_cell_NCER_lz, download_arrow_anim_NANR_lz, DS_SCREEN_MAIN);

    param0->unk_3170 = MainMenuUtil_InitSprite(0, param0->unk_3170, HW_LCD_WIDTH / 2, 76, 1);

    ov97_0222C578(param0);
}

static void ov97_0222C578(UnkStruct_ov97_0222C388 *param0)
{
    u32 v0, v1, v2, v3;
    u8 v4[6];
    UnkStruct_ov97_022335A8 v5;
    StringTemplate *v6 = StringTemplate_Default(param0->heapID);

    MainMenuUtil_InitWindow(&param0->unk_F0, &param0->unk_38, 0, 421, 1, 1);
    MainMenuWindow_SetDimensionsAndBasetile(&param0->unk_F0, 26, 4, param0->unk_144);
    MainMenuWindow_SetScrollableAndFont(&param0->unk_F0, 0, 1);

    param0->unk_F0.strTemplate = v6;

    StringTemplate_SetPlayerName(v6, 0, param0->unk_10);
    StringTemplate_SetNumber(v6, 1, TrainerInfo_ID_LowHalf(param0->unk_10), 5, 2, 1);

    MainMenuUtil_ShowWindowAtPos(param0->unk_04, &param0->unk_F0, 3, 13, 66);
    param0->unk_F0.clearBeforePrinting = 0;
    MainMenuWindow_SetTextOffsets(&param0->unk_F0, 0, Font_GetAttribute(FONT_SYSTEM, FONTATTR_MAX_LETTER_HEIGHT));
    MainMenuUtil_ShowWindowAtPos(param0->unk_04, &param0->unk_F0, -1, -1, 68);

    OS_GetMacAddress(v4);

    v5 = ov97_022335A8(v4);
    ov97_022335EC(v5.unk_00.val2, &v0, &v1);

    StringTemplate_SetNumber(v6, 0, v0, 4, 2, 1);
    StringTemplate_SetNumber(v6, 1, v1, 4, 2, 1);

    param0->unk_F0.textRightAligned = 1;

    MainMenuUtil_ShowWindowAtPos(param0->unk_04, &param0->unk_F0, -1, -1, 69);
    StringTemplate_Free(v6);
}

static void ov97_0222C688(ApplicationManager *appMan)
{
    int v0;
    UnkStruct_ov97_0222C388 *v1 = ApplicationManager_Data(appMan);

    MainMenuUtil_FreeSprites();

    if (Window_IsInUse(&v1->unk_18) == 1) {
        Window_ClearAndCopyToVRAM(&v1->unk_18);
        Window_Remove(&v1->unk_18);
        Window_ClearAndCopyToVRAM(&v1->unk_28);
        Window_Remove(&v1->unk_28);
        Window_ClearAndCopyToVRAM(&v1->unk_38);
        Window_Remove(&v1->unk_38);
    }

    Bg_FreeTilemapBuffer(v1->unk_04, BG_LAYER_MAIN_0);
    Bg_FreeTilemapBuffer(v1->unk_04, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(v1->unk_04, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(v1->unk_04, BG_LAYER_SUB_1);
    Heap_Free(v1->unk_04);
}

static int ov97_0222C6F8(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov97_0222C388 *v0 = MainMenuUtil_InitAppAndFadeToBlack(appMan, HEAP_ID_85, sizeof(UnkStruct_ov97_0222C388), 0x20000);

    v0->heapID = HEAP_ID_85;
    v0->unk_04 = BgConfig_New(v0->heapID);
    v0->saveData = ((ApplicationArgs *)ApplicationManager_Args(appMan))->saveData;
    v0->unk_10 = SaveData_GetTrainerInfo(v0->saveData);
    v0->unk_0C = SaveData_GetPokedex(v0->saveData);
    v0->options = SaveData_GetOptions(v0->saveData);

    MainMenuUtil_Init(v0->heapID);

    v0->unk_3174 = SaveData_GetMysteryGift(v0->saveData);
    v0->unk_14C = UnkEnum_ov97_0222C78C_09;
    v0->unk_144 = ((1 + 9) + (18 + 12));
    v0->unk_154 = 0;
    v0->unk_15C = UnkEnum_ov97_0222C6F8_00;
    v0->unk_158 = 0;

    Heap_Create(HEAP_ID_SYSTEM, HEAP_ID_91, 0x300);
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_9, SEQ_PRESENT, 1);

    return 1;
}

static int ov97_0222C78C(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov97_0222C388 *v0 = ApplicationManager_Data(appMan);

    switch (*param1) {
    case UnkEnum_ov97_0222C78C_00:
        ov97_0222C254(v0);

        if (Pokedex_IsObtained(v0->unk_0C) == FALSE) {
            MainMenuUtil_StartScreenFadeToState(1, UnkEnum_ov97_0222C78C_01, param1, UnkEnum_ov97_0222C78C_13);
        } else {
            *param1 = UnkEnum_ov97_0222C78C_02;
        }
        break;
    case UnkEnum_ov97_0222C78C_01:
        if (ov97_0222C404(v0) == 0) {
            MainMenuUtil_SetFadeToWhite(1);
            MainMenuUtil_StartScreenFadeToState(0, UnkEnum_ov97_0222C78C_12, param1, UnkEnum_ov97_0222C78C_13);
        }
        break;
    case UnkEnum_ov97_0222C78C_02:
        ov97_0222C47C(v0);

        if (MysteryGift_CheckFreePgtSlotExists(v0->unk_3174) == 0) {
            v0->unk_48.renderDelay = 1;
            v0->unk_317C = MainMenuUtil_ShowWindowAtPos(v0->unk_04, &v0->unk_48, 2, 19, 21);
            MainMenuUtil_StartScreenFadeToState(1, UnkEnum_ov97_0222C78C_03, param1, UnkEnum_ov97_0222C78C_13);
        } else {
            v0->unk_14C = UnkEnum_ov97_0222C78C_07;
            MainMenuUtil_StartScreenFadeToState(1, UnkEnum_ov97_0222C78C_04, param1, UnkEnum_ov97_0222C78C_13);
        }
        break;
    case UnkEnum_ov97_0222C78C_03:
        if ((Text_IsPrinterActive(v0->unk_317C) == 0) && gSystem.pressedKeys & PAD_BUTTON_A) {
            MainMenuUtil_SetFadeToWhite(1);
            MainMenuUtil_StartScreenFadeToState(0, UnkEnum_ov97_0222C78C_12, param1, UnkEnum_ov97_0222C78C_13);
        }
        break;
    case UnkEnum_ov97_0222C78C_04:
        v0->unk_150 = ov97_0222CB10(v0);

        if (v0->unk_150 == 5) {
            MainMenuUtil_SetFadeToWhite(1);
            MainMenuUtil_StartScreenFadeToState(0, UnkEnum_ov97_0222C78C_12, param1, UnkEnum_ov97_0222C78C_13);
        } else if (v0->unk_150 == 4) {
            MainMenuUtil_SetFadeToWhite(1);
            MainMenuUtil_StartScreenFadeToState(0, UnkEnum_ov97_0222C78C_12, param1, UnkEnum_ov97_0222C78C_13);
        }
        break;
    case UnkEnum_ov97_0222C78C_05:
        ov97_0222C388(v0);

        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);

        WonderCardsApp_ShowWondercard(v0->unk_04, &v0->unk_3180, HEAP_ID_85);
        MainMenuUtil_StartScreenFadeToState(1, UnkEnum_ov97_0222C78C_06, param1, UnkEnum_ov97_0222C78C_13);
        v0->unk_3180.eventHeader.hasWonderCard = 0;
        break;
    case UnkEnum_ov97_0222C78C_06:
        if (gSystem.pressedKeys) {
            MainMenuUtil_StartScreenFadeToState(0, UnkEnum_ov97_0222C78C_11, param1, UnkEnum_ov97_0222C78C_13);
        }
        break;
    case UnkEnum_ov97_0222C78C_11:
        OS_ResetSystem(0);
        break;
    case UnkEnum_ov97_0222C78C_12:
        ov97_0222C688(appMan);
        return 1;
        break;
    case UnkEnum_ov97_0222C78C_13:
        MainMenuUtil_CheckScreenFadeDone(param1);
        break;
    }

    MainMenuUtil_UpdateSprites();

    return 0;
}

static int ov97_0222C948(ApplicationManager *appMan, int *param1)
{
    Heap_Destroy(HEAP_ID_91);
    EnqueueApplication(FS_OVERLAY_ID(game_opening), &gTitleScreenAppTemplate);
    ApplicationManager_FreeData(appMan);
    Heap_Destroy(HEAP_ID_85);

    return 1;
}

static void ov97_0222C974(UnkStruct_ov97_0222C388 *param0)
{
    RTCDate v0;
    String *v1;
    StringTemplate *v2;
    MessageLoader *v3;
    WonderCard *v4 = &param0->unk_3180;

    MI_CpuClear8(v4, sizeof(WonderCard));

    v3 = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MYSTERY_GIFT_MENU, param0->heapID);
    v2 = StringTemplate_Default(param0->heapID);

    v4->pgt.type = 7;
    v1 = MessageUtil_ExpandedString(v2, v3, 76, param0->heapID);

    String_ToChars((const String *)v1, v4->eventHeader.title, 36);
    String_Free(v1);

    v4->eventHeader.validGames = (MainMenuUtil_CalcMysteryGiftVersionBit(10) | MainMenuUtil_CalcMysteryGiftVersionBit(11) | MainMenuUtil_CalcMysteryGiftVersionBit(12));
    v4->eventHeader.id = 1;
    v4->eventHeader.unique = 0;
    v4->eventHeader.unk_4E_1 = 0;
    v4->eventHeader.hasWonderCard = 1;
    v4->eventHeader.savePgt = 1;
    v4->eventHeader.fromSharing = 0;

    v1 = MessageUtil_ExpandedString(v2, v3, 75, param0->heapID);

    String_ToChars((const String *)v1, v4->description, 250);
    String_Free(v1);

    v4->sharesLeft = 0;
    v4->spritesSpecies[0] = 490;
    v4->spritesSpecies[1] = 0;
    v4->spritesSpecies[2] = 0;
    v4->timesShared = 0;
    GetCurrentDate(&v0);
    v4->receivedDate = RTC_ConvertDateToDay(&v0);

    StringTemplate_Free(v2);
    MessageLoader_Free(v3);
    MysteryGift_TrySavePgt(param0->unk_3174, &v4->pgt, 3);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);

    MainMenuUtil_LoadGiftSprite(param0->unk_04, v4);
}

static void ov97_0222CAAC(UnkStruct_ov97_0222C388 *param0, int param1)
{
    param0->unk_160 = param1;
}

static int ov97_0222CAB4(UnkStruct_ov97_0222C388 *param0, int *param1, int param2, u32 param3)
{
    if (--param0->unk_160 == 0) {
        ov97_022333BC();
        *param1 = UnkEnum_ov97_0222C6F8_23;
        return 0;
    }

    if (param2) {
        if (!ov97_02233388()) {
            ov97_022333BC();
            *param1 = UnkEnum_ov97_0222C6F8_22;
            return 0;
        }
    }

    if (param3 && gSystem.pressedKeys & param3) {
        ov97_022333BC();
        *param1 = UnkEnum_ov97_0222C6F8_26;
        return 1;
    }

    return 0;
}

int ov97_0222CB10(UnkStruct_ov97_0222C388 *param0)
{
    int v0, v1;
    u16 *v2;
    int *v3 = &param0->unk_15C;

    if (param0->unk_158 == 1) {
        NetworkIcon_SetStrength(WM_LINK_LEVEL_3 - ov97_02233230());

        ov97_022330DC();
        ov97_0223346C(1);
    }

    switch (*v3) {
    case UnkEnum_ov97_0222C6F8_00:
        ov97_0222C210(param0);
        WirelessDriver_Init();
        param0->unk_148 = 1;
        *v3 = UnkEnum_ov97_0222C6F8_01;
        break;
    case UnkEnum_ov97_0222C6F8_01:
        if (WirelessDriver_IsReady()) {
            ov97_02232E38(&Unk_ov97_0223E0A4, param0->unk_16C);
            param0->unk_158 = 1;
            sub_02039734();
            *v3 = UnkEnum_ov97_0222C6F8_02;
        }
        break;
    case UnkEnum_ov97_0222C6F8_02:
        ov97_02233120();
        ov97_0222CAAC(param0, 1600);
        param0->unk_34D8 = Window_AddWaitDial(&param0->unk_28, (1 + 9));
        *v3 = UnkEnum_ov97_0222C6F8_03;
        break;
    case UnkEnum_ov97_0222C6F8_03:
        v0 = ov97_02233248();

        if (v0) {
            param0->unk_164 = v0 - 1;
            ov97_0222CAAC(param0, 1800);
            *v3 = UnkEnum_ov97_0222C6F8_04;
        }

        ov97_0222CAB4(param0, v3, 0, PAD_BUTTON_B);
        break;
    case UnkEnum_ov97_0222C6F8_04:
        if (ov97_0223316C(param0->unk_164)) {
            ov97_022331A8(param0->unk_164);
            *v3 = UnkEnum_ov97_0222C6F8_07;
            param0->unk_160 = 1800;
        }

        ov97_0222CAB4(param0, v3, 0, PAD_BUTTON_B);
        break;
    case UnkEnum_ov97_0222C6F8_07:
        ov97_0222CAB4(param0, v3, 0, PAD_BUTTON_B);

        if (ov97_02233388()) {
            *v3 = UnkEnum_ov97_0222C6F8_29;
        }
        break;
    case UnkEnum_ov97_0222C6F8_29:
        MainMenuUtil_ShowWindowAtPos(param0->unk_04, &param0->unk_48, 2, 19, 30);
        Sprite_SetDrawFlag(param0->unk_3170, FALSE);
        DestroyWaitDial(param0->unk_34D8);
        param0->unk_34D8 = NULL;
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        param0->unk_160 = 1800;
        *v3 = UnkEnum_ov97_0222C6F8_30;
        break;
    case UnkEnum_ov97_0222C6F8_30:
        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            *v3 = UnkEnum_ov97_0222C6F8_08;
        }

        ov97_0222CAB4(param0, v3, 1, PAD_BUTTON_B);
        break;
    case UnkEnum_ov97_0222C6F8_08:
        ov97_02233268();
        *v3 = UnkEnum_ov97_0222C6F8_09;
        param0->unk_160 = 1800;
        ov97_0222CAB4(param0, v3, 1, PAD_BUTTON_B);
        break;
    case UnkEnum_ov97_0222C6F8_09:
        if (ov97_022332F4()) {
            ov97_0223329C();
            *v3 = UnkEnum_ov97_0222C6F8_10;
            param0->unk_160 = 3200;
            MainMenuUtil_ShowWindowAtPos(param0->unk_04, &param0->unk_48, 2, 19, 34);
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            param0->unk_34D8 = NULL;

            return 1;
        }

        ov97_0222CAB4(param0, v3, 1, PAD_BUTTON_B);
        break;
    case UnkEnum_ov97_0222C6F8_10:
        if (ov97_022332F4()) {
            MainMenuUtil_ShowWindowAtPos(param0->unk_04, &param0->unk_48, 2, 19, 71);
            Sprite_SetDrawFlag(param0->unk_3170, TRUE);
            ov97_0222C578(param0);
            *v3 = UnkEnum_ov97_0222C6F8_11;
        }

        ov97_0222CAB4(param0, v3, 1, PAD_BUTTON_B);
        break;
    case UnkEnum_ov97_0222C6F8_11:
        ov97_022332C8(Unk_ov97_0223E53C, 42, 1);
        *v3 = UnkEnum_ov97_0222C6F8_12;
        param0->unk_160 = 3200;
        break;
    case UnkEnum_ov97_0222C6F8_12:
        if (ov97_02233320()) {
            *v3 = UnkEnum_ov97_0222C6F8_13;
            param0->unk_160 = 60;
            MainMenuUtil_ShowWindowAtPos(param0->unk_04, &param0->unk_48, 2, 19, 71);
        }

        ov97_0222CAB4(param0, v3, 1, PAD_BUTTON_B);
        break;
    case UnkEnum_ov97_0222C6F8_13:
        if (--param0->unk_160 == 0) {
            MainMenuUtil_ShowWindowAtPos(param0->unk_04, &param0->unk_48, 2, 19, 72);
            param0->unk_34D8 = Window_AddWaitDial(&param0->unk_28, (1 + 9));
            ov97_0222C974(param0);
            MainMenuUtil_InitSaving(param0->saveData);
            *v3 = UnkEnum_ov97_0222C6F8_14;
        }
        break;
    case UnkEnum_ov97_0222C6F8_14:
        if (MainMenuUtil_SaveState() == 1) {
            *v3 = UnkEnum_ov97_0222C6F8_15;
            param0->unk_160 = 6 + (OS_GetTickLo() % 54);
        }
        break;
    case UnkEnum_ov97_0222C6F8_15:
        if (--param0->unk_160 == 0) {
            *v3 = UnkEnum_ov97_0222C6F8_16;
        }
        break;
    case UnkEnum_ov97_0222C6F8_16:
        ov97_022332C8(Unk_ov97_0223E53C, 42, 2);
        *v3 = UnkEnum_ov97_0222C6F8_17;
        param0->unk_160 = 1200;
        break;
    case UnkEnum_ov97_0222C6F8_17:
        if (ov97_0223334C()) {
            MainMenuUtil_ContinueSaving();

            *v3 = UnkEnum_ov97_0222C6F8_18;
            param0->unk_160 = 800;
            break;
        }

        if (--param0->unk_160 == 0) {
            ov97_022333BC();
            *v3 = UnkEnum_ov97_0222C6F8_23;
            param0->unk_160 = 120;
        }

        if (!ov97_02233388()) {
            ov97_022333BC();
            *v3 = UnkEnum_ov97_0222C6F8_22;
            param0->unk_160 = 120;
        }
        break;
    case UnkEnum_ov97_0222C6F8_18:
        if (MainMenuUtil_GetSavingStatus() == 3) {
            ov97_022333BC();
            *v3 = UnkEnum_ov97_0222C6F8_22;
            param0->unk_160 = 120;
        } else if (MainMenuUtil_GetSavingStatus() != 2) {
            MainMenuUtil_SaveState();
        } else {
            if (ov97_02233320() || (!ov97_02233388())) {
                *v3 = UnkEnum_ov97_0222C6F8_19;
                param0->unk_160 = 1;
                ov97_022333BC();
                break;
            }
        }

        if (--param0->unk_160 == 0) {
            ov97_022333BC();
            *v3 = UnkEnum_ov97_0222C6F8_23;
            param0->unk_160 = 10;
        }
    case UnkEnum_ov97_0222C6F8_19:
        if (--param0->unk_160 == 0) {
            *v3 = UnkEnum_ov97_0222C6F8_20;

            MainMenuUtil_ShowWindowAtPos(param0->unk_04, &param0->unk_48, 2, 19, 73);

            Sprite_SetDrawFlag(param0->unk_3170, FALSE);
            DestroyWaitDial(param0->unk_34D8);
            Sound_PlayEffect(SEQ_SE_CONFIRM);

            param0->unk_34D8 = NULL;
        }
        break;
    case UnkEnum_ov97_0222C6F8_20:
        if (ov97_022333FC()) {
            if (param0->unk_148 == 1) {
                WirelessDriver_Shutdown();
                NetworkIcon_Destroy();
                param0->unk_148 = 0;
            }

            if (gSystem.pressedKeys & PAD_BUTTON_A) {
                *v3 = UnkEnum_ov97_0222C6F8_27;
                return 4;
            }
        }
        break;
    case UnkEnum_ov97_0222C6F8_22:
        *v3 = UnkEnum_ov97_0222C6F8_23;
    case UnkEnum_ov97_0222C6F8_23:
        MainMenuUtil_ShowWindowAtPos(param0->unk_04, &param0->unk_48, 2, 19, 74);
        Sprite_SetDrawFlag(param0->unk_3170, FALSE);

        if (param0->unk_34D8) {
            DestroyWaitDial(param0->unk_34D8);
        }

        param0->unk_34D8 = NULL;
        *v3 = UnkEnum_ov97_0222C6F8_28;
        break;
    case UnkEnum_ov97_0222C6F8_28:
        if (ov97_022333FC()) {
            if (param0->unk_148 == 1) {
                WirelessDriver_Shutdown();
                NetworkIcon_Destroy();
                param0->unk_148 = 0;
            }

            if (gSystem.pressedKeys & PAD_BUTTON_A) {
                OS_ResetSystem(0);
            }
        }
        break;
    case UnkEnum_ov97_0222C6F8_26:
        if (ov97_022333FC()) {
            if (param0->unk_148 == 1) {
                WirelessDriver_Shutdown();
                NetworkIcon_Destroy();
                param0->unk_148 = 0;

                if (param0->unk_34D8) {
                    DestroyWaitDial(param0->unk_34D8);
                }

                return 5;
            }
        }
        break;
    case UnkEnum_ov97_0222C6F8_27:
        break;
    }

    return 0;
}

const ApplicationManagerTemplate gRangerLinkAppTemplate = {
    ov97_0222C6F8,
    ov97_0222C78C,
    ov97_0222C948,
    0xffffffff
};
