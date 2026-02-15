#include "overlay023/ov23_0223E140.h"

#include <nitro.h>
#include <string.h>

#include "generated/trainer_score_events.h"
#include "generated/traps.h"

#include "struct_defs/underground.h"
#include "struct_defs/underground_record.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/hblank_system.h"
#include "overlay023/secret_bases.h"
#include "overlay023/underground_manager.h"
#include "overlay023/underground_menu.h"
#include "overlay023/underground_player.h"
#include "overlay023/underground_spheres.h"
#include "overlay023/underground_text_printer.h"
#include "overlay023/underground_top_screen.h"
#include "overlay023/underground_traps.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "char_transfer.h"
#include "comm_player_manager.h"
#include "communication_information.h"
#include "communication_system.h"
#include "field_system.h"
#include "field_task.h"
#include "game_records.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "journal.h"
#include "map_matrix.h"
#include "math_util.h"
#include "menu.h"
#include "narc.h"
#include "pltt_transfer.h"
#include "pokedex.h"
#include "render_oam.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "string_gf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "system_flags.h"
#include "system_vars.h"
#include "terrain_collision_manager.h"
#include "text.h"
#include "trainer_info.h"
#include "tv_episode_segment.h"
#include "unk_0202854C.h"
#include "unk_020393C8.h"
#include "vars_flags.h"
#include "vram_transfer.h"

#include "res/graphics/mining/objects/objects.naix.h"
#include "res/graphics/trap_effects/trap_effects.naix.h"
#include "res/text/bank/underground_common.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_ov23_02256BF8;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04;
} UnkStruct_ov23_0224142C;

typedef struct {
    int state;
    int unk_04;
    int timer;
    int itemCount;
    FieldSystem *fieldSystem;
    int unk_14;
    void *unk_18[MINING_MAX_BURIED_ITEMS];
    NNSG2dPaletteData *buriedItemPalettes[MINING_MAX_BURIED_ITEMS];
    int unk_38[MINING_MAX_BURIED_ITEMS];
    int sizeOfCurrentSphere;
    int textTimer;
    u8 unk_50;
} UnkStruct_ov23_0223EE80;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04;
    u8 unk_05;
} UnkStruct_ov23_0223E6F8;

typedef struct MiningObject {
    void *shape;
    u16 oddTIDWeight;
    u16 evenTIDWeight;
    u16 oddTIDNatDexWeight;
    u16 evenTIDNatDexWeight;
    u8 width;
    u8 height;
    u8 itemID;
    u16 spriteNARCIndex;
    u16 paletteNARCIndex;
} MiningObject;

typedef struct BuriedObject {
    MiningObject *miningObject;
    u8 itemID;
    u8 x;
    u8 y;
    u8 unused;
    u8 isDugUp;
} BuriedObject;

typedef struct {
    UnkStruct_ov23_0224142C unk_00[250];
    u8 unk_4E2;
    u16 unk_4E4;
} UnkStruct_ov23_022412CC;

typedef struct {
    FieldSystem *fieldSystem;
    BgConfig *bgConfig;
    MATHRandContext32 rand;
    SpriteList *spriteList;
    G2dRenderer g2DRenderer;
    SpriteResourceCollection *unk_1B0[4];
    SpriteResource *unk_1C0[8];
    SpriteResourcesHeader unk_1E0;
    SpriteResourcesHeader unk_204[2];
    Sprite *sprites[8];
    UnkStruct_ov23_0223E6F8 unk_26C[250];
    Menu *unk_848;
    UnkStruct_ov23_0223E6F8 *unk_84C[8];
    u8 isPlayerMining[MAX_CONNECTED_PLAYERS];
    BuriedObject buriedObjects[MINING_MAX_BURIED_OBJECTS];
    u8 unk_8BC[8];
    SysTask *unk_8C4;
    SysTask *unk_8C8;
    SysTask *miningGameTask;
    UnkStruct_ov23_022412CC *unk_8D0;
    UnkStruct_ov23_0224142C unk_8D4[8];
    u8 unk_8FC[8];
    void *unk_904;
    u8 unk_908[8];
    u8 linkTouchX[MAX_CONNECTED_PLAYERS];
    u8 linkTouchY[MAX_CONNECTED_PLAYERS];
    u8 buriedObjectGrid[MINING_GAME_HEIGHT][MINING_GAME_WIDTH];
    u8 dirtCover[MINING_GAME_HEIGHT][MINING_GAME_WIDTH];
    int unk_A24;
    u8 pickaxeSelected;
    u8 unk_A29;
    u8 unk_A2A;
    u8 wallIntegrity;
    u8 unk_A2C;
    s8 unk_A2D;
    s8 unk_A2E;
    u8 unk_A2F;
    u8 spawnedTrapIndex;
} UnkStruct_ov23_02257740;

static void Mining_DrawWallCrack(BgConfig *bgConfig);
static void ov23_0223E434(MATHRandContext16 *param0, int param1);
static UnkStruct_ov23_0223E6F8 *ov23_0223E6F8(void);
static UnkStruct_ov23_0223E6F8 *ov23_0223E88C(u16 param0, u16 param1);
static void ov23_0223EA38(SysTask *param0, void *param1);
static void Mining_InitGame(UnkStruct_ov23_0223EE80 *param0);
static void ov23_0223EF98(void);
static void ov23_0223F70C(FieldSystem *fieldSystem);
static void Mining_GenerateGameLayout(BgConfig *bgConfig, int param1, UnkStruct_ov23_0223EE80 *param2);
static void ov23_0223FF60(int buriedObjectCount, BgConfig *bgConfig, int param2, UnkStruct_ov23_0223EE80 *param3);
static void Mining_RandomizeDirtCover(BgConfig *bgConfig);
static void Mining_DrawDirt(BgConfig *bgConfig);
static BOOL Mining_MainGameLoop(UnkStruct_ov23_0223EE80 *param0);
static void ov23_022404C8(BgConfig *bgConfig);
static void ov23_022404F8(BgConfig *bgConfig, int param1, int param2, int param3);
static BOOL Mining_AreAllItemsDugUp(UnkStruct_ov23_0223EE80 *param0);
static BOOL Mining_PrintNextDugUpItem(UnkStruct_ov23_0223EE80 *param0);
static BOOL Mining_ProcessNextDugUpItem(UnkStruct_ov23_0223EE80 *param0);
static void ov23_02240E88(void);
static void ov23_0224108C(void);
static void ov23_0224119C(void);
static void ov23_022411E8(void *param0);
static void ov23_022413B4(void);
static UnkStruct_ov23_0223E6F8 *ov23_0223E740(int param0, int param1);
static void ov23_0223FDE0(UnkStruct_ov23_0223EE80 *param0);
static void ov23_02240B84(BgConfig *bgConfig);
static void ov23_022414D4(void);
static void ov23_0223E834(void);

static UnkStruct_ov23_02257740 *Unk_ov23_02257740 = NULL;

static u8 sRareBoneShape[6][3] = {
    { 'x', 'x', 'x' },
    { 'o', 'x', 'o' },
    { 'o', 'x', 'o' },
    { 'o', 'x', 'o' },
    { 'o', 'x', 'o' },
    { 'x', 'x', 'x' },
};

static u8 sRareBoneShape90deg[3][6] = {
    { 'x', 'o', 'o', 'o', 'o', 'x' },
    { 'x', 'x', 'x', 'x', 'x', 'x' },
    { 'x', 'o', 'o', 'o', 'o', 'x' },
};

static u8 sRockTShape[2][3] = {
    { 'x', 'x', 'x' },
    { 'o', 'x', 'o' },
};

static u8 sRockTShape90deg[3][2] = {
    { 'o', 'x' },
    { 'x', 'x' },
    { 'o', 'x' },
};

static u8 sRockTShape180deg[2][3] = {
    { 'o', 'x', 'o' },
    { 'x', 'x', 'x' },
};

static u8 sRockTShape270deg[3][2] = {
    { 'x', 'o' },
    { 'x', 'x' },
    { 'x', 'o' },
};

static u8 sRockZShape[2][3] = {
    { 'x', 'x', 'o' },
    { 'o', 'x', 'x' },
};

static u8 sRockZShape90deg[3][2] = {
    { 'o', 'x' },
    { 'x', 'x' },
    { 'x', 'o' },
};

static u8 sRockSShape[2][3] = {
    { 'o', 'x', 'x' },
    { 'x', 'x', 'o' },
};

static u8 sRockSShape90deg[3][2] = {
    { 'x', 'o' },
    { 'x', 'x' },
    { 'o', 'x' },
};

static u8 sHelixFossilShape[4][4] = {
    { 'o', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'o' },
};

static u8 sHelixFossilShape90deg[4][4] = {
    { 'x', 'x', 'x', 'o' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'o', 'x', 'x', 'x' },
};

static u8 sThunderstoneShape[3][3] = {
    { 'o', 'x', 'x' },
    { 'x', 'x', 'x' },
    { 'x', 'x', 'o' },
};

static u8 sOldAmberShape[4][4] = {
    { 'o', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'o' },
};

static u8 sOldAmberShape90deg[4][4] = {
    { 'x', 'x', 'x', 'o' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'o', 'x', 'x', 'x' },
};

static u8 sDomeFossilShape[4][5] = {
    { 'x', 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x', 'x' },
    { 'o', 'x', 'x', 'x', 'o' },
};

static u8 sWaterStoneShape[3][3] = {
    { 'x', 'x', 'x' },
    { 'x', 'x', 'x' },
    { 'x', 'x', 'o' },
};

static u8 sMoonStoneShape[2][4] = {
    { 'o', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'o' },
};

static u8 sMoonStoneShape90deg[4][2] = {
    { 'x', 'o' },
    { 'x', 'x' },
    { 'x', 'x' },
    { 'o', 'x' },
};

static u8 sClawFossilShape[5][4] = {
    { 'o', 'o', 'x', 'x' },
    { 'o', 'x', 'x', 'x' },
    { 'o', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'o' },
    { 'x', 'x', 'o', 'o' },
};

static u8 sClawFossilShape90deg[4][5] = {
    { 'x', 'x', 'o', 'o', 'o' },
    { 'x', 'x', 'x', 'x', 'o' },
    { 'o', 'x', 'x', 'x', 'x' },
    { 'o', 'o', 'x', 'x', 'x' },
};

static u8 sClawFossilShape180deg[5][4] = {
    { 'o', 'o', 'x', 'x' },
    { 'o', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'o' },
    { 'x', 'x', 'x', 'o' },
    { 'x', 'x', 'o', 'o' },
};

static u8 sClawFossilShape270deg[4][5] = {
    { 'x', 'x', 'x', 'o', 'o' },
    { 'x', 'x', 'x', 'x', 'o' },
    { 'o', 'x', 'x', 'x', 'x' },
    { 'o', 'o', 'o', 'x', 'x' },
};

static u8 sSunStoneShape[3][3] = {
    { 'o', 'x', 'o' },
    { 'x', 'x', 'x' },
    { 'x', 'x', 'x' },
};

static u8 sStarPieceReviveShape[3][3] = {
    { 'o', 'x', 'o' },
    { 'x', 'x', 'x' },
    { 'o', 'x', 'o' },
};

static u8 sLeafStoneShape90deg[3][4] = {
    { 'o', 'x', 'x', 'o' },
    { 'x', 'x', 'x', 'x' },
    { 'o', 'x', 'x', 'o' },
};

static u8 sLeafStoneShape[4][3] = {
    { 'o', 'x', 'o' },
    { 'x', 'x', 'x' },
    { 'x', 'x', 'x' },
    { 'o', 'x', 'o' },
};

static u8 sRootFossilShape[5][5] = {
    { 'x', 'x', 'x', 'x', 'o' },
    { 'x', 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'o', 'x', 'x' },
    { 'o', 'o', 'o', 'x', 'x' },
    { 'o', 'o', 'x', 'x', 'o' },
};

static u8 sRootFossilShape90deg[5][5] = {
    { 'o', 'o', 'x', 'x', 'x' },
    { 'o', 'o', 'x', 'x', 'x' },
    { 'x', 'o', 'o', 'x', 'x' },
    { 'x', 'x', 'x', 'x', 'x' },
    { 'o', 'x', 'x', 'x', 'o' },
};

static u8 sRootFossilShape180deg[5][5] = {
    { 'o', 'x', 'x', 'o', 'o' },
    { 'x', 'x', 'o', 'o', 'o' },
    { 'x', 'x', 'o', 'x', 'x' },
    { 'x', 'x', 'x', 'x', 'x' },
    { 'o', 'x', 'x', 'x', 'x' },
};

static u8 sRootFossilShape270deg[5][5] = {
    { 'o', 'x', 'x', 'x', 'o' },
    { 'x', 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'o', 'o', 'x' },
    { 'x', 'x', 'x', 'o', 'o' },
    { 'x', 'x', 'x', 'o', 'o' },
};

static u8 sRedShardShape[3][3] = {
    { 'x', 'x', 'x' },
    { 'x', 'x', 'o' },
    { 'x', 'x', 'x' },
};
static u8 sBlueShardShape[3][3] = {
    { 'x', 'x', 'x' },
    { 'x', 'x', 'x' },
    { 'x', 'x', 'o' },
};
static u8 sYellowShardShape[3][4] = {
    { 'x', 'o', 'x', 'o' },
    { 'x', 'x', 'x', 'o' },
    { 'x', 'x', 'x', 'x' },
};
static u8 sGreenShardShape[3][4] = {
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'o', 'x' },
};

static u8 sHeartScaleShape[2][2] = {
    { 'x', 'o' },
    { 'x', 'x' },
};

static u8 sArmorFossilShape[4][5] = {
    { 'o', 'x', 'x', 'x', 'o' },
    { 'o', 'x', 'x', 'x', 'o' },
    { 'x', 'x', 'x', 'x', 'x' },
    { 'o', 'x', 'x', 'x', 'o' },
};

static u8 sSkullFossilShape[4][4] = {
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'o', 'x', 'x', 'o' },
};

static u8 sLightClayShape[4][4] = {
    { 'x', 'o', 'x', 'o' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'o', 'x', 'o', 'x' },
};

static u8 sIcyRockShape[4][4] = {
    { 'o', 'x', 'x', 'o' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'o', 'o', 'x' },
};

static u8 sHeatRockShape[3][4] = {
    { 'x', 'o', 'x', 'o' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
};

static u8 sSmoothRockShape[4][4] = {
    { 'o', 'o', 'x', 'o' },
    { 'x', 'x', 'x', 'o' },
    { 'o', 'x', 'x', 'x' },
    { 'o', 'x', 'o', 'o' },
};

static u8 sDampRockShape[3][4] = {
    { 'x', 'x', 'x' },
    { 'x', 'x', 'x' },
    { 'x', 'o', 'x' },
};

static MiningObject sMiningObjects[] = {
    { .itemID = MINING_SMALL_PRISM_SPHERE, .oddTIDWeight = 30, .evenTIDWeight = 22, .oddTIDNatDexWeight = 27, .evenTIDNatDexWeight = 20, .width = 2 * 2, .height = 2 * 2, .shape = NULL, .spriteNARCIndex = small_prism_sphere_NCGR, .paletteNARCIndex = prism_sphere_NCLR },
    { .itemID = MINING_SMALL_PALE_SPHERE, .oddTIDWeight = 22, .evenTIDWeight = 30, .oddTIDNatDexWeight = 20, .evenTIDNatDexWeight = 27, .width = 2 * 2, .height = 2 * 2, .shape = NULL, .spriteNARCIndex = small_pale_sphere_NCGR, .paletteNARCIndex = pale_sphere_NCLR },
    { .itemID = MINING_SMALL_RED_SPHERE, .oddTIDWeight = 167, .evenTIDWeight = 194, .oddTIDNatDexWeight = 110, .evenTIDNatDexWeight = 164, .width = 2 * 2, .height = 2 * 2, .shape = NULL, .spriteNARCIndex = small_red_sphere_NCGR, .paletteNARCIndex = red_sphere_NCLR },
    { .itemID = MINING_SMALL_BLUE_SPHERE, .oddTIDWeight = 194, .evenTIDWeight = 167, .oddTIDNatDexWeight = 150, .evenTIDNatDexWeight = 124, .width = 2 * 2, .height = 2 * 2, .shape = NULL, .spriteNARCIndex = small_blue_sphere_NCGR, .paletteNARCIndex = blue_sphere_NCLR },
    { .itemID = MINING_SMALL_GREEN_SPHERE, .oddTIDWeight = 150, .evenTIDWeight = 150, .oddTIDNatDexWeight = 107, .evenTIDNatDexWeight = 107, .width = 2 * 2, .height = 2 * 2, .shape = NULL, .spriteNARCIndex = small_green_sphere_NCGR, .paletteNARCIndex = green_sphere_NCLR },
    { .itemID = MINING_LARGE_PRISM_SPHERE, .oddTIDWeight = 15, .evenTIDWeight = 13, .oddTIDNatDexWeight = 13, .evenTIDNatDexWeight = 10, .width = 3 * 2, .height = 3 * 2, .shape = NULL, .spriteNARCIndex = large_prism_sphere_NCGR, .paletteNARCIndex = prism_sphere_NCLR },
    { .itemID = MINING_LARGE_PALE_SPHERE, .oddTIDWeight = 13, .evenTIDWeight = 15, .oddTIDNatDexWeight = 10, .evenTIDNatDexWeight = 13, .width = 3 * 2, .height = 3 * 2, .shape = NULL, .spriteNARCIndex = large_pale_sphere_NCGR, .paletteNARCIndex = pale_sphere_NCLR },
    { .itemID = MINING_LARGE_RED_SPHERE, .oddTIDWeight = 83, .evenTIDWeight = 96, .oddTIDNatDexWeight = 61, .evenTIDNatDexWeight = 75, .width = 3 * 2, .height = 3 * 2, .shape = NULL, .spriteNARCIndex = large_red_sphere_NCGR, .paletteNARCIndex = red_sphere_NCLR },
    { .itemID = MINING_LARGE_BLUE_SPHERE, .oddTIDWeight = 96, .evenTIDWeight = 83, .oddTIDNatDexWeight = 75, .evenTIDNatDexWeight = 61, .width = 3 * 2, .height = 3 * 2, .shape = NULL, .spriteNARCIndex = large_blue_sphere_NCGR, .paletteNARCIndex = blue_sphere_NCLR },
    { .itemID = MINING_LARGE_GREEN_SPHERE, .oddTIDWeight = 75, .evenTIDWeight = 75, .oddTIDNatDexWeight = 53, .evenTIDNatDexWeight = 53, .width = 3 * 2, .height = 3 * 2, .shape = NULL, .spriteNARCIndex = large_green_sphere_NCGR, .paletteNARCIndex = green_sphere_NCLR },
    { .itemID = MINING_TREASURE_OVAL_STONE, .oddTIDWeight = 0, .evenTIDWeight = 0, .oddTIDNatDexWeight = 0, .evenTIDNatDexWeight = 0, .width = 3 * 2, .height = 3 * 2, .shape = NULL, .spriteNARCIndex = oval_stone_NCGR, .paletteNARCIndex = oval_stone_NCLR },
    { .itemID = MINING_TREASURE_ODD_KEYSTONE, .oddTIDWeight = 0, .evenTIDWeight = 0, .oddTIDNatDexWeight = 2, .evenTIDNatDexWeight = 2, .width = 4 * 2, .height = 4 * 2, .shape = NULL, .spriteNARCIndex = odd_keystone_NCGR, .paletteNARCIndex = odd_keystone_NCLR },
    { .itemID = MINING_TREASURE_SUN_STONE, .oddTIDWeight = 4, .evenTIDWeight = 1, .oddTIDNatDexWeight = 15, .evenTIDNatDexWeight = 3, .width = 3 * 2, .height = 3 * 2, .shape = sSunStoneShape, .spriteNARCIndex = sun_stone_NCGR, .paletteNARCIndex = sun_stone_NCLR },
    { .itemID = MINING_TREASURE_STAR_PIECE, .oddTIDWeight = 2, .evenTIDWeight = 2, .oddTIDNatDexWeight = 10, .evenTIDNatDexWeight = 10, .width = 3 * 2, .height = 3 * 2, .shape = sStarPieceReviveShape, .spriteNARCIndex = star_piece_NCGR, .paletteNARCIndex = star_piece_NCLR },
    { .itemID = MINING_TREASURE_MOON_STONE, .oddTIDWeight = 1, .evenTIDWeight = 2, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 8, .width = 4 * 2, .height = 2 * 2, .shape = sMoonStoneShape, .spriteNARCIndex = moon_stone_NCGR, .paletteNARCIndex = moon_stone_NCLR },
    { .itemID = MINING_TREASURE_MOON_STONE, .oddTIDWeight = 1, .evenTIDWeight = 2, .oddTIDNatDexWeight = 2, .evenTIDNatDexWeight = 7, .width = 2 * 2, .height = 4 * 2, .shape = sMoonStoneShape90deg, .spriteNARCIndex = moon_stone_90deg_NCGR, .paletteNARCIndex = moon_stone_NCLR },
    { .itemID = MINING_TREASURE_HARD_STONE, .oddTIDWeight = 4, .evenTIDWeight = 4, .oddTIDNatDexWeight = 20, .evenTIDNatDexWeight = 20, .width = 2 * 2, .height = 2 * 2, .shape = NULL, .spriteNARCIndex = hard_stone_NCGR, .paletteNARCIndex = hard_stone_NCLR },
    { .itemID = MINING_TREASURE_THUNDERSTONE, .oddTIDWeight = 4, .evenTIDWeight = 1, .oddTIDNatDexWeight = 30, .evenTIDNatDexWeight = 5, .width = 3 * 2, .height = 3 * 2, .shape = sThunderstoneShape, .spriteNARCIndex = thunderstone_NCGR, .paletteNARCIndex = thunderstone_NCLR },
    { .itemID = MINING_TREASURE_EVERSTONE, .oddTIDWeight = 4, .evenTIDWeight = 4, .oddTIDNatDexWeight = 20, .evenTIDNatDexWeight = 20, .width = 4 * 2, .height = 2 * 2, .shape = NULL, .spriteNARCIndex = everstone_NCGR, .paletteNARCIndex = everstone_NCLR },
    { .itemID = MINING_TREASURE_FIRE_STONE, .oddTIDWeight = 4, .evenTIDWeight = 1, .oddTIDNatDexWeight = 30, .evenTIDNatDexWeight = 5, .width = 3 * 2, .height = 3 * 2, .shape = NULL, .spriteNARCIndex = fire_stone_NCGR, .paletteNARCIndex = fire_stone_NCLR },
    { .itemID = MINING_TREASURE_WATER_STONE, .oddTIDWeight = 1, .evenTIDWeight = 4, .oddTIDNatDexWeight = 5, .evenTIDNatDexWeight = 30, .width = 3 * 2, .height = 3 * 2, .shape = sWaterStoneShape, .spriteNARCIndex = water_stone_NCGR, .paletteNARCIndex = water_stone_NCLR },
    { .itemID = MINING_TREASURE_LEAF_STONE, .oddTIDWeight = 1, .evenTIDWeight = 2, .oddTIDNatDexWeight = 3, .evenTIDNatDexWeight = 15, .width = 3 * 2, .height = 4 * 2, .shape = sLeafStoneShape, .spriteNARCIndex = leaf_stone_NCGR, .paletteNARCIndex = leaf_stone_NCLR },
    { .itemID = MINING_TREASURE_LEAF_STONE, .oddTIDWeight = 1, .evenTIDWeight = 2, .oddTIDNatDexWeight = 2, .evenTIDNatDexWeight = 15, .width = 4 * 2, .height = 3 * 2, .shape = sLeafStoneShape90deg, .spriteNARCIndex = leaf_stone_90deg_NCGR, .paletteNARCIndex = leaf_stone_NCLR },
    { .itemID = MINING_TREASURE_HELIX_FOSSIL, .oddTIDWeight = 0, .evenTIDWeight = 0, .oddTIDNatDexWeight = 3, .evenTIDNatDexWeight = 1, .width = 4 * 2, .height = 4 * 2, .shape = sHelixFossilShape, .spriteNARCIndex = helix_fossil_NCGR, .paletteNARCIndex = fossil_NCLR },
    { .itemID = MINING_TREASURE_HELIX_FOSSIL, .oddTIDWeight = 0, .evenTIDWeight = 0, .oddTIDNatDexWeight = 3, .evenTIDNatDexWeight = 1, .width = 4 * 2, .height = 4 * 2, .shape = sHelixFossilShape90deg, .spriteNARCIndex = helix_fossil_90deg_NCGR, .paletteNARCIndex = fossil_NCLR },
    { .itemID = MINING_TREASURE_HELIX_FOSSIL, .oddTIDWeight = 0, .evenTIDWeight = 0, .oddTIDNatDexWeight = 3, .evenTIDNatDexWeight = 1, .width = 4 * 2, .height = 4 * 2, .shape = sHelixFossilShape, .spriteNARCIndex = helix_fossil_180deg_NCGR, .paletteNARCIndex = fossil_NCLR },
    { .itemID = MINING_TREASURE_HELIX_FOSSIL, .oddTIDWeight = 0, .evenTIDWeight = 0, .oddTIDNatDexWeight = 3, .evenTIDNatDexWeight = 1, .width = 4 * 2, .height = 4 * 2, .shape = sHelixFossilShape90deg, .spriteNARCIndex = helix_fossil_270deg_NCGR, .paletteNARCIndex = fossil_NCLR },
    { .itemID = MINING_TREASURE_DOME_FOSSIL, .oddTIDWeight = 0, .evenTIDWeight = 0, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 13, .width = 5 * 2, .height = 4 * 2, .shape = sDomeFossilShape, .spriteNARCIndex = dome_fossil_NCGR, .paletteNARCIndex = fossil_NCLR },
    { .itemID = MINING_TREASURE_CLAW_FOSSIL, .oddTIDWeight = 0, .evenTIDWeight = 0, .oddTIDNatDexWeight = 3, .evenTIDNatDexWeight = 1, .width = 4 * 2, .height = 5 * 2, .shape = sClawFossilShape, .spriteNARCIndex = claw_fossil_NCGR, .paletteNARCIndex = fossil_NCLR },
    { .itemID = MINING_TREASURE_CLAW_FOSSIL, .oddTIDWeight = 0, .evenTIDWeight = 0, .oddTIDNatDexWeight = 3, .evenTIDNatDexWeight = 1, .width = 5 * 2, .height = 4 * 2, .shape = sClawFossilShape90deg, .spriteNARCIndex = claw_fossil_90deg_NCGR, .paletteNARCIndex = fossil_NCLR },
    { .itemID = MINING_TREASURE_CLAW_FOSSIL, .oddTIDWeight = 0, .evenTIDWeight = 0, .oddTIDNatDexWeight = 3, .evenTIDNatDexWeight = 1, .width = 4 * 2, .height = 5 * 2, .shape = sClawFossilShape180deg, .spriteNARCIndex = claw_fossil_180deg_NCGR, .paletteNARCIndex = fossil_NCLR },
    { .itemID = MINING_TREASURE_CLAW_FOSSIL, .oddTIDWeight = 0, .evenTIDWeight = 0, .oddTIDNatDexWeight = 3, .evenTIDNatDexWeight = 1, .width = 5 * 2, .height = 4 * 2, .shape = sClawFossilShape270deg, .spriteNARCIndex = claw_fossil_270deg_NCGR, .paletteNARCIndex = fossil_NCLR },
    { .itemID = MINING_TREASURE_ROOT_FOSSIL, .oddTIDWeight = 0, .evenTIDWeight = 0, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 3, .width = 5 * 2, .height = 5 * 2, .shape = sRootFossilShape, .spriteNARCIndex = root_fossil_NCGR, .paletteNARCIndex = fossil_NCLR },
    { .itemID = MINING_TREASURE_ROOT_FOSSIL, .oddTIDWeight = 0, .evenTIDWeight = 0, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 3, .width = 5 * 2, .height = 5 * 2, .shape = sRootFossilShape90deg, .spriteNARCIndex = root_fossil_90deg_NCGR, .paletteNARCIndex = fossil_NCLR },
    { .itemID = MINING_TREASURE_ROOT_FOSSIL, .oddTIDWeight = 0, .evenTIDWeight = 0, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 3, .width = 5 * 2, .height = 5 * 2, .shape = sRootFossilShape180deg, .spriteNARCIndex = root_fossil_180deg_NCGR, .paletteNARCIndex = fossil_NCLR },
    { .itemID = MINING_TREASURE_ROOT_FOSSIL, .oddTIDWeight = 0, .evenTIDWeight = 0, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 3, .width = 5 * 2, .height = 5 * 2, .shape = sRootFossilShape270deg, .spriteNARCIndex = root_fossil_270deg_NCGR, .paletteNARCIndex = fossil_NCLR },
    { .itemID = MINING_TREASURE_OLD_AMBER, .oddTIDWeight = 0, .evenTIDWeight = 0, .oddTIDNatDexWeight = 2, .evenTIDNatDexWeight = 2, .width = 4 * 2, .height = 4 * 2, .shape = sOldAmberShape, .spriteNARCIndex = old_amber_NCGR, .paletteNARCIndex = old_amber_NCLR },
    { .itemID = MINING_TREASURE_OLD_AMBER, .oddTIDWeight = 0, .evenTIDWeight = 0, .oddTIDNatDexWeight = 3, .evenTIDNatDexWeight = 3, .width = 4 * 2, .height = 4 * 2, .shape = sOldAmberShape90deg, .spriteNARCIndex = old_amber_90deg_NCGR, .paletteNARCIndex = old_amber_NCLR },
    { .itemID = MINING_TREASURE_RARE_BONE, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 5, .evenTIDNatDexWeight = 5, .width = 3 * 2, .height = 6 * 2, .shape = sRareBoneShape, .spriteNARCIndex = rare_bone_NCGR, .paletteNARCIndex = rare_bone_NCLR },
    { .itemID = MINING_TREASURE_RARE_BONE, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 5, .evenTIDNatDexWeight = 5, .width = 6 * 2, .height = 3 * 2, .shape = sRareBoneShape90deg, .spriteNARCIndex = rare_bone_90deg_NCGR, .paletteNARCIndex = rare_bone_NCLR },
    { .itemID = MINING_TREASURE_REVIVE, .oddTIDWeight = 8, .evenTIDWeight = 8, .oddTIDNatDexWeight = 10, .evenTIDNatDexWeight = 10, .width = 3 * 2, .height = 3 * 2, .shape = sStarPieceReviveShape, .spriteNARCIndex = revive_NCGR, .paletteNARCIndex = revive_NCLR },
    { .itemID = MINING_TREASURE_MAX_REVIVE, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 2, .evenTIDNatDexWeight = 2, .width = 3 * 2, .height = 3 * 2, .shape = NULL, .spriteNARCIndex = max_revive_NCGR, .paletteNARCIndex = revive_NCLR },
    { .itemID = MINING_TREASURE_RED_SHARD, .oddTIDWeight = 13, .evenTIDWeight = 13, .oddTIDNatDexWeight = 17, .evenTIDNatDexWeight = 17, .width = 3 * 2, .height = 3 * 2, .shape = sRedShardShape, .spriteNARCIndex = red_shard_NCGR, .paletteNARCIndex = flame_plate_NCLR },
    { .itemID = MINING_TREASURE_BLUE_SHARD, .oddTIDWeight = 13, .evenTIDWeight = 13, .oddTIDNatDexWeight = 17, .evenTIDNatDexWeight = 17, .width = 3 * 2, .height = 3 * 2, .shape = sBlueShardShape, .spriteNARCIndex = blue_shard_NCGR, .paletteNARCIndex = splash_plate_NCLR },
    { .itemID = MINING_TREASURE_YELLOW_SHARD, .oddTIDWeight = 13, .evenTIDWeight = 13, .oddTIDNatDexWeight = 17, .evenTIDNatDexWeight = 17, .width = 4 * 2, .height = 3 * 2, .shape = sYellowShardShape, .spriteNARCIndex = yellow_shard_NCGR, .paletteNARCIndex = zap_plate_NCLR },
    { .itemID = MINING_TREASURE_GREEN_SHARD, .oddTIDWeight = 13, .evenTIDWeight = 13, .oddTIDNatDexWeight = 17, .evenTIDNatDexWeight = 17, .width = 4 * 2, .height = 3 * 2, .shape = sGreenShardShape, .spriteNARCIndex = green_shard_NCGR, .paletteNARCIndex = meadow_plate_NCLR },
    { .itemID = MINING_TREASURE_HEART_SCALE, .oddTIDWeight = 33, .evenTIDWeight = 33, .oddTIDNatDexWeight = 30, .evenTIDNatDexWeight = 30, .width = 2 * 2, .height = 2 * 2, .shape = sHeartScaleShape, .spriteNARCIndex = heart_scale_NCGR, .paletteNARCIndex = heart_scale_NCLR },
    { .itemID = MINING_TREASURE_ARMOR_FOSSIL, .oddTIDWeight = 0, .evenTIDWeight = 25, .oddTIDNatDexWeight = 0, .evenTIDNatDexWeight = 12, .width = 5 * 2, .height = 4 * 2, .shape = sArmorFossilShape, .spriteNARCIndex = armor_fossil_NCGR, .paletteNARCIndex = fossil_NCLR },
    { .itemID = MINING_TREASURE_SKULL_FOSSIL, .oddTIDWeight = 25, .evenTIDWeight = 0, .oddTIDNatDexWeight = 12, .evenTIDNatDexWeight = 0, .width = 4 * 2, .height = 4 * 2, .shape = sSkullFossilShape, .spriteNARCIndex = skull_fossil_NCGR, .paletteNARCIndex = fossil_NCLR },
    { .itemID = MINING_TREASURE_LIGHT_CLAY, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 5, .evenTIDNatDexWeight = 2, .width = 4 * 2, .height = 4 * 2, .shape = sLightClayShape, .spriteNARCIndex = light_clay_NCGR, .paletteNARCIndex = light_clay_NCLR },
    { .itemID = MINING_TREASURE_IRON_BALL, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 2, .evenTIDNatDexWeight = 5, .width = 3 * 2, .height = 3 * 2, .shape = NULL, .spriteNARCIndex = iron_ball_NCGR, .paletteNARCIndex = iron_ball_NCLR },
    { .itemID = MINING_TREASURE_ICY_ROCK, .oddTIDWeight = 2, .evenTIDWeight = 1, .oddTIDNatDexWeight = 11, .evenTIDNatDexWeight = 5, .width = 4 * 2, .height = 4 * 2, .shape = sIcyRockShape, .spriteNARCIndex = icy_rock_NCGR, .paletteNARCIndex = icy_rock_NCLR },
    { .itemID = MINING_TREASURE_SMOOTH_ROCK, .oddTIDWeight = 1, .evenTIDWeight = 2, .oddTIDNatDexWeight = 5, .evenTIDNatDexWeight = 11, .width = 4 * 2, .height = 4 * 2, .shape = sSmoothRockShape, .spriteNARCIndex = smooth_rock_NCGR, .paletteNARCIndex = smooth_rock_NCLR },
    { .itemID = MINING_TREASURE_HEAT_ROCK, .oddTIDWeight = 2, .evenTIDWeight = 1, .oddTIDNatDexWeight = 11, .evenTIDNatDexWeight = 5, .width = 4 * 2, .height = 3 * 2, .shape = sHeatRockShape, .spriteNARCIndex = heat_rock_NCGR, .paletteNARCIndex = heat_rock_NCLR },
    { .itemID = MINING_TREASURE_DAMP_ROCK, .oddTIDWeight = 1, .evenTIDWeight = 2, .oddTIDNatDexWeight = 5, .evenTIDNatDexWeight = 11, .width = 3 * 2, .height = 3 * 2, .shape = sDampRockShape, .spriteNARCIndex = damp_rock_NCGR, .paletteNARCIndex = damp_rock_NCLR },
    { .itemID = MINING_TREASURE_FLAME_PLATE, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 4 * 2, .height = 3 * 2, .shape = NULL, .spriteNARCIndex = plate_NCGR, .paletteNARCIndex = flame_plate_NCLR },
    { .itemID = MINING_TREASURE_SPLASH_PLATE, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 4 * 2, .height = 3 * 2, .shape = NULL, .spriteNARCIndex = plate_NCGR, .paletteNARCIndex = splash_plate_NCLR },
    { .itemID = MINING_TREASURE_ZAP_PLATE, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 4 * 2, .height = 3 * 2, .shape = NULL, .spriteNARCIndex = plate_NCGR, .paletteNARCIndex = zap_plate_NCLR },
    { .itemID = MINING_TREASURE_MEADOW_PLATE, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 4 * 2, .height = 3 * 2, .shape = NULL, .spriteNARCIndex = plate_NCGR, .paletteNARCIndex = meadow_plate_NCLR },
    { .itemID = MINING_TREASURE_ICICLE_PLATE, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 4 * 2, .height = 3 * 2, .shape = NULL, .spriteNARCIndex = plate_NCGR, .paletteNARCIndex = icicle_plate_NCLR },
    { .itemID = MINING_TREASURE_FIST_PLATE, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 4 * 2, .height = 3 * 2, .shape = NULL, .spriteNARCIndex = plate_NCGR, .paletteNARCIndex = fist_plate_NCLR },
    { .itemID = MINING_TREASURE_TOXIC_PLATE, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 4 * 2, .height = 3 * 2, .shape = NULL, .spriteNARCIndex = plate_NCGR, .paletteNARCIndex = toxic_plate_NCLR },
    { .itemID = MINING_TREASURE_EARTH_PLATE, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 4 * 2, .height = 3 * 2, .shape = NULL, .spriteNARCIndex = plate_NCGR, .paletteNARCIndex = earth_plate_NCLR },
    { .itemID = MINING_TREASURE_SKY_PLATE, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 4 * 2, .height = 3 * 2, .shape = NULL, .spriteNARCIndex = plate_NCGR, .paletteNARCIndex = sky_plate_NCLR },
    { .itemID = MINING_TREASURE_MIND_PLATE, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 4 * 2, .height = 3 * 2, .shape = NULL, .spriteNARCIndex = plate_NCGR, .paletteNARCIndex = mind_plate_NCLR },
    { .itemID = MINING_TREASURE_INSECT_PLATE, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 4 * 2, .height = 3 * 2, .shape = NULL, .spriteNARCIndex = plate_NCGR, .paletteNARCIndex = insect_plate_NCLR },
    { .itemID = MINING_TREASURE_STONE_PLATE, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 4 * 2, .height = 3 * 2, .shape = NULL, .spriteNARCIndex = plate_NCGR, .paletteNARCIndex = stone_plate_NCLR },
    { .itemID = MINING_TREASURE_SPOOKY_PLATE, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 4 * 2, .height = 3 * 2, .shape = NULL, .spriteNARCIndex = plate_NCGR, .paletteNARCIndex = spooky_plate_NCLR },
    { .itemID = MINING_TREASURE_DRACO_PLATE, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 4 * 2, .height = 3 * 2, .shape = NULL, .spriteNARCIndex = plate_NCGR, .paletteNARCIndex = draco_plate_NCLR },
    { .itemID = MINING_TREASURE_DREAD_PLATE, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 4 * 2, .height = 3 * 2, .shape = NULL, .spriteNARCIndex = plate_NCGR, .paletteNARCIndex = dread_plate_NCLR },
    { .itemID = MINING_TREASURE_IRON_PLATE, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 4 * 2, .height = 3 * 2, .shape = NULL, .spriteNARCIndex = plate_NCGR, .paletteNARCIndex = iron_plate_NCLR },
    { .itemID = MINING_ROCK_1, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 4 * 2, .height = 1 * 2, .shape = NULL, .spriteNARCIndex = rock_horizontal_line_NCGR, .paletteNARCIndex = rock_NCLR },
    { .itemID = MINING_ROCK_1, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 1 * 2, .height = 4 * 2, .shape = NULL, .spriteNARCIndex = rock_vertical_line_NCGR, .paletteNARCIndex = rock_NCLR },
    { .itemID = MINING_ROCK_2, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 2 * 2, .height = 2 * 2, .shape = NULL, .spriteNARCIndex = rock_square_NCGR, .paletteNARCIndex = rock_NCLR },
    { .itemID = MINING_ROCK_3, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 3 * 2, .height = 2 * 2, .shape = sRockTShape, .spriteNARCIndex = rock_T_shape_NCGR, .paletteNARCIndex = rock_NCLR },
    { .itemID = MINING_ROCK_3, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 2 * 2, .height = 3 * 2, .shape = sRockTShape90deg, .spriteNARCIndex = rock_T_shape_90deg_NCGR, .paletteNARCIndex = rock_NCLR },
    { .itemID = MINING_ROCK_3, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 3 * 2, .height = 2 * 2, .shape = sRockTShape180deg, .spriteNARCIndex = rock_T_shape_180deg_NCGR, .paletteNARCIndex = rock_NCLR },
    { .itemID = MINING_ROCK_3, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 2 * 2, .height = 3 * 2, .shape = sRockTShape270deg, .spriteNARCIndex = rock_T_shape_270deg_NCGR, .paletteNARCIndex = rock_NCLR },
    { .itemID = MINING_ROCK_4, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 3 * 2, .height = 2 * 2, .shape = sRockZShape, .spriteNARCIndex = rock_z_shape_NCGR, .paletteNARCIndex = rock_NCLR },
    { .itemID = MINING_ROCK_4, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 2 * 2, .height = 3 * 2, .shape = sRockZShape90deg, .spriteNARCIndex = rock_z_shape_90deg_NCGR, .paletteNARCIndex = rock_NCLR },
    { .itemID = MINING_ROCK_5, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 3 * 2, .height = 2 * 2, .shape = sRockSShape, .spriteNARCIndex = rock_s_shape_NCGR, .paletteNARCIndex = rock_NCLR },
    { .itemID = MINING_ROCK_5, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 2 * 2, .height = 3 * 2, .shape = sRockSShape90deg, .spriteNARCIndex = rock_s_shape_90deg_NCGR, .paletteNARCIndex = rock_NCLR },
    { .itemID = MINING_ROCK_6, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 3 * 2, .height = 3 * 2, .shape = NULL, .spriteNARCIndex = rock_large_square_NCGR, .paletteNARCIndex = rock_NCLR },
    { .itemID = MINING_ROCK_7, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 2 * 2, .height = 4 * 2, .shape = NULL, .spriteNARCIndex = rock_vertical_rectangle_NCGR, .paletteNARCIndex = rock_NCLR },
    { .itemID = MINING_ROCK_7, .oddTIDWeight = 1, .evenTIDWeight = 1, .oddTIDNatDexWeight = 1, .evenTIDNatDexWeight = 1, .width = 4 * 2, .height = 2 * 2, .shape = NULL, .spriteNARCIndex = rock_horizontal_rectangle_NCGR, .paletteNARCIndex = rock_NCLR }
};

static const WindowTemplate Unk_ov23_0225630E = {
    0x3,
    0x19,
    0xD,
    0x6,
    0x4,
    0xD,
    0x21F
};

static void Mining_InitGameState(void)
{
    int i;

    for (i = 0; i < MAX_CONNECTED_PLAYERS; i++) {
        Unk_ov23_02257740->linkTouchX[i] = TOUCHSCREEN_INPUT_NONE;
        Unk_ov23_02257740->linkTouchY[i] = TOUCHSCREEN_INPUT_NONE;
    }

    Unk_ov23_02257740->pickaxeSelected = TRUE;
    Unk_ov23_02257740->unk_A29 = 0;
    Unk_ov23_02257740->wallIntegrity = INITIAL_WALL_INTEGRITY;

    for (i = 0; i < MINING_MAX_BURIED_OBJECTS; i++) {
        Unk_ov23_02257740->buriedObjects[i].miningObject = NULL;
        Unk_ov23_02257740->buriedObjects[i].isDugUp = FALSE;
    }

    for (i = 0; i < MINING_GAME_WIDTH * MINING_GAME_HEIGHT; i++) {
        Unk_ov23_02257740->buriedObjectGrid[i / MINING_GAME_WIDTH][i % MINING_GAME_WIDTH] = 0;
        Unk_ov23_02257740->dirtCover[i / MINING_GAME_WIDTH][i % MINING_GAME_WIDTH] = 2;
    }
}

void ov23_0223E1E4(void *param0, FieldSystem *fieldSystem)
{
    int v0, v1;
    Underground *underground;

    if (Unk_ov23_02257740) {
        return;
    }

    Unk_ov23_02257740 = param0;

    MI_CpuFill8(Unk_ov23_02257740, 0, sizeof(UnkStruct_ov23_02257740));
    CommSys_Seed(&Unk_ov23_02257740->rand);

    Unk_ov23_02257740->fieldSystem = fieldSystem;

    for (v0 = 0; v0 < 250; v0++) {
        Unk_ov23_02257740->unk_26C[v0].unk_04 = 0xff;
        Unk_ov23_02257740->unk_26C[v0].unk_00 = 0xffff;
        Unk_ov23_02257740->unk_26C[v0].unk_02 = 0xffff;
    }

    Mining_InitGameState();

    Unk_ov23_02257740->unk_A24 = -1;
    underground = SaveData_GetUnderground(Unk_ov23_02257740->fieldSystem->saveData);

    if (sub_02029234(underground)) {
        MATHRandContext16 v3;

        MATH_InitRand16(&v3, Underground_GetRandomSeed(underground));

        for (v0 = 0; v0 < 255; v0++) {
            sub_020291A4(underground, v0);
        }

        for (v0 = 0; v0 < (16 * 4); v0++) {
            Underground_SaveSpawnedTrap(underground, 0, v0, 0, 0);
        }

        v1 = ov23_02241DF8(&v3);
        v1 = 25 - (v1 / 10) - 1;

        for (v0 = 0; v0 < v1; v0++) {
            ov23_0223E434(&v3, v0);
        }

        sub_02029240(underground);
    } else {
        ov23_0223E834();
        UndergroundTraps_LoadSpawnedTraps();
    }
}

int ov23_0223E2E8(void)
{
    return sizeof(UnkStruct_ov23_02257740);
}

void ov23_0223E2F0(void)
{
    return;
}

void ov23_0223E2F4(void)
{
    return;
}

void ov23_0223E2F8(void)
{
    if (Unk_ov23_02257740) {
        if (Unk_ov23_02257740->unk_8C8) {
            SysTask_Done(Unk_ov23_02257740->unk_8C8);
            Unk_ov23_02257740->unk_8C8 = NULL;
            UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetCommonTextPrinter());

            if (Unk_ov23_02257740->unk_848) {
                Menu_DestroyForExit(Unk_ov23_02257740->unk_848, 4);
            }

            CommPlayerMan_ResumeFieldSystem();
        }

        Heap_Free(Unk_ov23_02257740);
        Unk_ov23_02257740 = NULL;
    }
}

BOOL ov23_0223E354(int param0, Coordinates *param1)
{
    UnkStruct_ov23_0223E6F8 *v0 = ov23_0223E88C(param1->x, param1->z);
    u8 v1 = param0;

    if ((v0 != NULL) && (v0->unk_04 == 0xff)) {
        if (UndergroundPlayer_BuriedObjectHeldFlagCheck(param0)) {
            return 1;
        }

        CommSys_SendDataServer(64, &v1, 1);
        CommPlayerMan_SetMovementEnabled(param0, 0);

        Unk_ov23_02257740->unk_84C[param0] = v0;
        return 1;
    }

    return 0;
}

static BOOL ov23_0223E3AC(FieldSystem *fieldSystem, int param1, int param2)
{
    if (UndergroundMan_AreCoordinatesInSecretBase(param1, param2)) {
        return 0;
    }

    if (param2 > 478) {
        return 0;
    }

    if (param1 > 478) {
        return 0;
    }

    if (TerrainCollisionManager_CheckCollision(fieldSystem, param1, param2)) {
        if (!TerrainCollisionManager_CheckCollision(fieldSystem, param1, param2 + 1)) {
            return 1;
        }

        if (!TerrainCollisionManager_CheckCollision(fieldSystem, param1, param2 - 1)) {
            return 1;
        }

        if (!TerrainCollisionManager_CheckCollision(fieldSystem, param1 + 1, param2)) {
            return 1;
        }

        if (!TerrainCollisionManager_CheckCollision(fieldSystem, param1 - 1, param2)) {
            return 1;
        }
    }

    return 0;
}

static void ov23_0223E434(MATHRandContext16 *param0, int param1)
{
    int v0, v1, v2, v3;
    u16 v4, v5, v6;
    u16 v7, v8, v9;
    UnkStruct_ov23_0223E6F8 *v10;
    Underground *v11 = SaveData_GetUnderground(Unk_ov23_02257740->fieldSystem->saveData);

    v6 = (MapMatrix_GetWidth(Unk_ov23_02257740->fieldSystem->mapMatrix) - 2) * 32;
    v9 = (MapMatrix_GetHeight(Unk_ov23_02257740->fieldSystem->mapMatrix) - 2) * 32;

    do {
        v4 = MATH_Rand16(param0, v6) + 32;
        v7 = MATH_Rand16(param0, v9) + 32 * 2;
    } while (ov23_0223E3AC(Unk_ov23_02257740->fieldSystem, v4, v7) == 0);

    v0 = MATH_Rand16(param0, 6) + 6;

    for (v1 = 0; v1 < v0; v1++) {
        v3 = 0;

        for (v2 = 0; v2 < 100; v2++) {
            v5 = MATH_Rand16(param0, 20) + v4 - 10;
            v8 = MATH_Rand16(param0, 20) + v7 - 10;

            if (ov23_0223E3AC(Unk_ov23_02257740->fieldSystem, v5, v8)) {
                v3 = 1;
                break;
            }
        }

        if (v3) {
            v10 = ov23_0223E6F8();

            if (v10 == NULL) {
                break;
            }

            v10 = ov23_0223E740(v5, v8);
            v10->unk_05 = sub_02029140(v11, v5, v8);
        }
    }

    v0 = MATH_Rand16(param0, 6);

    for (v1 = 0; v1 < v0; v1++) {
        for (v2 = 0; v2 < 100; v2++) {
            v5 = MATH_Rand16(param0, 20) + v4 - 10;
            v8 = MATH_Rand16(param0, 20) + v7 - 10;

            if (!TerrainCollisionManager_CheckCollision(Unk_ov23_02257740->fieldSystem, v5, v8)) {
                int trapID = UndergroundTraps_SpawnRandomTrap(v5, v8, param0, Unk_ov23_02257740->spawnedTrapIndex);

                if (trapID != TRAP_NONE) {
                    Unk_ov23_02257740->spawnedTrapIndex++;
                    break;
                }
            }
        }
    }
}

void ov23_0223E650(int x, int z, MATHRandContext16 *rand)
{
    int v2, v3;
    u16 v4, v5;
    UnkStruct_ov23_0223E6F8 *v6;
    Underground *v7 = SaveData_GetUnderground(Unk_ov23_02257740->fieldSystem->saveData);

    v3 = 0;

    for (v2 = 0; v2 < 100; v2++) {
        v4 = MATH_Rand16(rand, 20) + x - 10;
        v5 = MATH_Rand16(rand, 20) + z - 10;

        if (ov23_0223E3AC(Unk_ov23_02257740->fieldSystem, v4, v5)) {
            v3 = 1;
            break;
        }
    }

    if (v3) {
        v6 = ov23_0223E6F8();

        if (v6) {
            v6 = ov23_0223E740(v4, v5);
            v6->unk_05 = sub_02029140(v7, v4, v5);
        }
    }
}

static UnkStruct_ov23_0223E6F8 *ov23_0223E6F8(void)
{
    int v0;

    for (v0 = 0; v0 < 250; v0++) {
        if ((Unk_ov23_02257740->unk_26C[v0].unk_00 == 0xffff) && (Unk_ov23_02257740->unk_26C[v0].unk_02 == 0xffff)) {
            return &Unk_ov23_02257740->unk_26C[v0];
        }
    }

    return NULL;
}

static UnkStruct_ov23_0223E6F8 *ov23_0223E740(int param0, int param1)
{
    int v0 = -1, v1, v2 = param1 * 30 * 32 + param0;
    int v3;

    for (v1 = 0; v1 < 250; v1++) {
        if ((Unk_ov23_02257740->unk_26C[v1].unk_00 != 0xffff) && (Unk_ov23_02257740->unk_26C[v1].unk_02 != 0xffff)) {
            v3 = Unk_ov23_02257740->unk_26C[v1].unk_02 * 30 * 32 + Unk_ov23_02257740->unk_26C[v1].unk_00;

            if (v2 < v3) {
                v0 = v1;
                break;
            }
        } else {
            Unk_ov23_02257740->unk_26C[v1].unk_00 = param0;
            Unk_ov23_02257740->unk_26C[v1].unk_02 = param1;
            return &Unk_ov23_02257740->unk_26C[v1];
        }
    }

    if (v0 != -1) {
        for (v1 = 250 - 2; v1 >= v0; v1--) {
            Unk_ov23_02257740->unk_26C[v1 + 1].unk_00 = Unk_ov23_02257740->unk_26C[v1].unk_00;
            Unk_ov23_02257740->unk_26C[v1 + 1].unk_02 = Unk_ov23_02257740->unk_26C[v1].unk_02;
            Unk_ov23_02257740->unk_26C[v1 + 1].unk_05 = Unk_ov23_02257740->unk_26C[v1].unk_05;
        }

        Unk_ov23_02257740->unk_26C[v0].unk_00 = param0;
        Unk_ov23_02257740->unk_26C[v0].unk_02 = param1;
    }

    return &Unk_ov23_02257740->unk_26C[v0];
}

static void ov23_0223E834(void)
{
    Underground *v0 = SaveData_GetUnderground(Unk_ov23_02257740->fieldSystem->saveData);
    int v1;
    int v2, v3;
    UnkStruct_ov23_0223E6F8 *v4;

    for (v1 = 0; v1 < 255; v1++) {
        v2 = sub_020291CC(v0, v1);
        v3 = sub_020291EC(v0, v1);

        if ((v2 != 0) && (v3 != 0)) {
            v4 = ov23_0223E740(v2, v3);
            v4->unk_05 = v1;
        }
    }
}

void ov23_0223E878(void)
{
    if (CommSys_CurNetId() == 0) {
        ov23_022414D4();
        ov23_022413B4();
    }
}

static UnkStruct_ov23_0223E6F8 *ov23_0223E88C(u16 param0, u16 param1)
{
    int v0;

    for (v0 = 0; v0 < 250; v0++) {
        if ((Unk_ov23_02257740->unk_26C[v0].unk_00 == param0) && (Unk_ov23_02257740->unk_26C[v0].unk_02 == param1)) {
            return &Unk_ov23_02257740->unk_26C[v0];
        }
    }

    return NULL;
}

static int ov23_0223E8CC(u16 param0, u16 param1)
{
    int v0, v1 = param1 - 80, v2 = param1 + 80, v3 = param0 - 80, v4 = param0 + 80;
    int v5 = 0, v6;

    if (UndergroundMan_AreCoordinatesInSecretBase(param0, param1)) {
        return -1;
    }

    if (v3 < 64) {
        v3 = 64;
    }

    if (v4 > 512) {
        v4 = 512;
    }

    if (v1 < 32) {
        v1 = 32;
    }

    if (v2 > 480) {
        v2 = 480;
    }

    for (v0 = 0; v0 < 250; v0++) {
        if ((Unk_ov23_02257740->unk_26C[v0].unk_02 < v1) || (Unk_ov23_02257740->unk_26C[v0].unk_02 > v2)) {
            continue;
        }

        if ((Unk_ov23_02257740->unk_26C[v0].unk_00 > v3) && (Unk_ov23_02257740->unk_26C[v0].unk_00 < v4)) {
            v5++;
        }
    }

    if (v5 == 0) {
        return -1;
    }

    v6 = LCRNG_Next() % v5;
    v5 = 0;

    for (v0 = 0; v0 < 250; v0++) {
        if ((Unk_ov23_02257740->unk_26C[v0].unk_02 < v1) || (Unk_ov23_02257740->unk_26C[v0].unk_02 > v2)) {
            continue;
        }

        if ((Unk_ov23_02257740->unk_26C[v0].unk_00 > v3) && (Unk_ov23_02257740->unk_26C[v0].unk_00 < v4)) {
            if (v5 == v6) {
                return v0;
            }

            v5++;
        }
    }

    return -1;
}

static void ov23_0223E99C(SysTask *param0, void *param1)
{
    if (Unk_ov23_02257740->unk_848) {
        Menu_DestroyForExit(Unk_ov23_02257740->unk_848, 4);
    }

    Unk_ov23_02257740->unk_848 = NULL;
    Unk_ov23_02257740->unk_8C8 = NULL;

    SysTask_Done(param0);
}

void ov23_0223E9D4(int param0, int param1, void *param2, void *param3)
{
    u8 *v0 = param2;

    if ((v0[0] == CommSys_CurNetId()) && CommSys_IsSendingMovementData()) {
        Unk_ov23_02257740->unk_A24 = UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_WallIsBulging, FALSE, NULL);
        Unk_ov23_02257740->unk_8C8 = SysTask_Start(ov23_0223EA38, Unk_ov23_02257740, 0);

        UndergroundMan_SetCurrentSysTask(NULL, Unk_ov23_02257740->unk_8C8, ov23_0223E99C);
        CommPlayerMan_PauseFieldSystem();
    }
}

static void ov23_0223EA38(SysTask *param0, void *param1)
{
    u8 v0;

    if (Unk_ov23_02257740->unk_A24 != -1) {
        if (Text_IsPrinterActive(Unk_ov23_02257740->unk_A24) == 0) {
            Unk_ov23_02257740->unk_848 = Menu_MakeYesNoChoice(Unk_ov23_02257740->fieldSystem->bgConfig, &Unk_ov23_0225630E, 1024 - (18 + 12) - 9, 11, 4);
            Unk_ov23_02257740->unk_A24 = -1;
        }
    } else {
        int v1 = Menu_ProcessInputAndHandleExit(Unk_ov23_02257740->unk_848, 4);

        if (v1 == 0xffffffff) {
            return;
        } else if (v1 == 0) {
            v0 = 1;
        } else {
            v0 = 0;
            CommPlayerMan_ResumeFieldSystem();
        }

        CommSys_SendDataFixedSize(65, &v0);
        Unk_ov23_02257740->unk_848 = NULL;

        UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetCommonTextPrinter());
        SysTask_Done(param0);
        UndergroundMan_ClearCurrentSysTaskInfo();

        Unk_ov23_02257740->unk_8C8 = NULL;
    }
}

void ov23_0223EAF8(int param0, int param1, void *param2, void *param3)
{
    Underground *v0 = SaveData_GetUnderground(Unk_ov23_02257740->fieldSystem->saveData);
    UnkStruct_ov23_0223E6F8 *v1 = Unk_ov23_02257740->unk_84C[param0];
    u8 v2 = param0;
    u8 *v3 = param2;

    if ((v3[0] != 0) && v1) {
        if (v1->unk_04 == 0xff) {
            CommSys_SendDataServer(66, &v2, 1);

            v1->unk_04 = 0xff;
            v1->unk_00 = 0xffff;
            v1->unk_02 = 0xffff;

            sub_020291A4(v0, v1->unk_05);

            Unk_ov23_02257740->isPlayerMining[param0] = TRUE;
            Unk_ov23_02257740->unk_84C[param0] = NULL;
        }
    } else {
        Unk_ov23_02257740->isPlayerMining[param0] = FALSE;
        Unk_ov23_02257740->unk_84C[param0] = NULL;
    }
}

void ov23_0223EB8C(int param0, int param1, void *param2, void *param3)
{
    u8 *v0 = param2;

    if (v0[0] == CommSys_CurNetId()) {
        CommPlayerMan_PauseFieldSystem();
        ov23_0223F70C(Unk_ov23_02257740->fieldSystem);
    }

    Unk_ov23_02257740->unk_908[v0[0]] = 1;
}

void ov23_0223EBC0(int param0, int param1, void *param2, void *param3)
{
    Unk_ov23_02257740->isPlayerMining[param0] = FALSE;
    Unk_ov23_02257740->unk_8FC[param0] = 0;
}

void ov23_0223EBE4(int param0, int param1, void *param2, void *param3)
{
    u8 *v0 = param2;
    u8 v1[3];

    v1[0] = param0;
    v1[1] = v0[0];
    v1[2] = v0[1];

    CommSys_SendDataFixedSizeServer(69, v1);
}

int ov23_0223EBFC(void)
{
    return 2;
}

void Mining_TakeLinkInput(int param0, int param1, void *src, void *param3)
{
    u8 *buffer = src;

    if (buffer[0] == CommSys_CurNetId()) {
        return;
    }

    Unk_ov23_02257740->linkTouchX[buffer[0]] = buffer[1];
    Unk_ov23_02257740->linkTouchY[buffer[0]] = buffer[2];
}

int ov23_0223EC30(void)
{
    return 3;
}

static void ov23_0223EC34(BgConfig *bgConfig)
{
    {
        GXBanks v0 = {
            GX_VRAM_BG_128_A,
            GX_VRAM_BGEXTPLTT_NONE,
            GX_VRAM_SUB_BG_32_H,
            GX_VRAM_SUB_BGEXTPLTT_NONE,
            GX_VRAM_OBJ_64_E,
            GX_VRAM_OBJEXTPLTT_NONE,
            GX_VRAM_SUB_OBJ_16_I,
            GX_VRAM_SUB_OBJEXTPLTT_NONE,
            GX_VRAM_TEX_01_BC,
            GX_VRAM_TEXPLTT_01_FG
        };

        GXLayers_SetBanks(&v0);
    }
    {
        GraphicsModes v1 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
        };

        SetAllGraphicsModes(&v1);
    }

    {
        BgTemplate v2 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x1000,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_512x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xc000,
            .charBase = GX_BG_CHARBASE_0x04000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_0, &v2, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_MINING);
        Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_0);
    }

    {
        BgTemplate v3 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x1000,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_512x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xd000,
            .charBase = GX_BG_CHARBASE_0x04000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 1,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &v3, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_MINING);
        Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);
    }
    {
        BgTemplate v4 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x1000,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_512x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xe000,
            .charBase = GX_BG_CHARBASE_0x08000,
            .bgExtPltt = GX_BG_EXTPLTT_23,
            .priority = 2,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &v4, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_2, 32, 0, HEAP_ID_MINING);
        Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);
    }
    {
        BgTemplate v5 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf800,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_23,
            .priority = 3,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_3, &v5, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_3, 32, 0, HEAP_ID_MINING);
        Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_3);
    }

    Bg_ClearTilesRange(BG_LAYER_SUB_0, 32, 0, HEAP_ID_MINING);
    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_MINING);
}

static void ov23_0223ED68(int x, int y, BOOL pickaxeSelected, BOOL hitRock, BOOL foundItem)
{
    VecFx32 v3;

    if (pickaxeSelected) {
        Sprite_SetAnim(Unk_ov23_02257740->sprites[0], 0);
    } else {
        Sprite_SetAnim(Unk_ov23_02257740->sprites[0], 1);
    }

    if (hitRock) {
        Sprite_SetAnim(Unk_ov23_02257740->sprites[3], 2);
        Sound_PlayEffect(SEQ_SE_DP_UG_004);
    } else if (pickaxeSelected) {
        Sprite_SetAnim(Unk_ov23_02257740->sprites[3], 3);
        Sound_PlayEffect(SEQ_SE_DP_UG_002);
    } else {
        Sprite_SetAnim(Unk_ov23_02257740->sprites[3], 4);
        Sound_PlayEffect(SEQ_SE_DP_UG_003);
    }

    Sprite_SetAnimateFlag(Unk_ov23_02257740->sprites[0], TRUE);
    Sprite_SetAnimateFlag(Unk_ov23_02257740->sprites[3], TRUE);

    v3.x = FX32_ONE * (x + 8);
    v3.y = FX32_ONE * (y + 8);

    Sprite_SetPosition(Unk_ov23_02257740->sprites[0], &v3);
    Sprite_SetPosition(Unk_ov23_02257740->sprites[3], &v3);

    if (foundItem) {
        Sprite_SetAnim(Unk_ov23_02257740->sprites[4], 5);
        Sprite_SetAnimateFlag(Unk_ov23_02257740->sprites[4], TRUE);
        Sprite_SetPosition(Unk_ov23_02257740->sprites[4], &v3);
    }
}

static void Mining_InitGame(UnkStruct_ov23_0223EE80 *param0)
{
    int v0;
    BgConfig *bgConfig;

    Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_58, SEQ_NONE, 0);
    Mining_InitGameState();

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_MINING, HEAP_SIZE_MINING);

    bgConfig = BgConfig_New(HEAP_ID_MINING);
    Unk_ov23_02257740->bgConfig = bgConfig;

    SetVBlankCallback(ov23_022411E8, bgConfig);

    UndergroundTextPrinter_SetBackground(UndergroundMan_GetCommonTextPrinter(), bgConfig, 512 - (18 + 12), ((512 - (18 + 12)) - 73) - (27 * 4));
    ov23_0223EC34(bgConfig);

    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);
    LoadMessageBoxGraphics(bgConfig, BG_LAYER_MAIN_3, 512 - (18 + 12), 10, 0, HEAP_ID_MINING);

    {
        NARC *narc;

        narc = NARC_ctor(NARC_INDEX_DATA__UG_FOSSIL, HEAP_ID_MINING);
        Graphics_LoadPaletteFromOpenNARC(narc, 1, PAL_LOAD_MAIN_BG, 0, 32 * 3, HEAP_ID_MINING);

        v0 = Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 0, bgConfig, BG_LAYER_MAIN_0, 0, 0, 0, HEAP_ID_MINING);
        Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 2, bgConfig, BG_LAYER_MAIN_0, 0, 0, 0, HEAP_ID_MINING);
        NARC_dtor(narc);
    }

    Graphics_LoadPalette(NARC_INDEX_DATA__UG_TRAP, text_window_NCLR, PAL_LOAD_MAIN_BG, 10 * 0x20, 4 * 0x20, HEAP_ID_MINING);
    Mining_GenerateGameLayout(bgConfig, v0, param0);
}

static void ov23_0223EF98(void)
{
    ov23_022404C8(Unk_ov23_02257740->bgConfig);
    Bg_CopyTilemapBufferToVRAM(Unk_ov23_02257740->bgConfig, BG_LAYER_MAIN_1);

    Mining_RandomizeDirtCover(Unk_ov23_02257740->bgConfig);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_DATA__UG_PARTS, dirt_tiles_NCGR, Unk_ov23_02257740->bgConfig, BG_LAYER_MAIN_2, 1, 0, FALSE, HEAP_ID_MINING);

    Mining_DrawDirt(Unk_ov23_02257740->bgConfig);

    Bg_SetPriority(BG_LAYER_MAIN_0, 3);
    Bg_SetPriority(BG_LAYER_MAIN_1, 2);
    Bg_SetPriority(BG_LAYER_MAIN_2, 1);
    Bg_SetPriority(BG_LAYER_MAIN_3, 0);

    ov23_02240E88();
    ov23_0224108C();
    Mining_DrawWallCrack(Unk_ov23_02257740->bgConfig);
}

static void ov23_0223F020(UnkStruct_ov23_0223EE80 *param0)
{
    void *v0;
    int v1;

    Bg_FreeTilemapBuffer(Unk_ov23_02257740->bgConfig, BG_LAYER_MAIN_0);
    Bg_FreeTilemapBuffer(Unk_ov23_02257740->bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(Unk_ov23_02257740->bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(Unk_ov23_02257740->bgConfig, BG_LAYER_MAIN_3);
    SpriteTransfer_ResetCharTransfer(Unk_ov23_02257740->unk_1C0[0]);
    SpriteTransfer_ResetCharTransfer(Unk_ov23_02257740->unk_1C0[4]);
    SpriteTransfer_ResetPlttTransfer(Unk_ov23_02257740->unk_1C0[1]);
    SpriteTransfer_ResetPlttTransfer(Unk_ov23_02257740->unk_1C0[5]);

    for (v1 = 0; v1 < 4; v1++) {
        SpriteResourceCollection_Delete(Unk_ov23_02257740->unk_1B0[v1]);
    }

    for (v1 = 0; v1 < 4; v1++) {
        if (param0->unk_18[v1] != NULL) {
            Heap_Free(param0->unk_18[v1]);
            param0->unk_18[v1] = NULL;
        }
    }

    SpriteList_Delete(Unk_ov23_02257740->spriteList);
    RenderOam_Free();

    CharTransfer_Free();
    PlttTransfer_Free();

    SetVBlankCallback(NULL, NULL);
    Heap_Free(Unk_ov23_02257740->bgConfig);

    Unk_ov23_02257740->bgConfig = NULL;

    Heap_Destroy(HEAP_ID_MINING);
    UndergroundTextPrinter_SetBackground(UndergroundMan_GetCommonTextPrinter(), Unk_ov23_02257740->fieldSystem->bgConfig, 1024 - (18 + 12), ((1024 - (18 + 12)) - 73) - (27 * 4));
}

static void ov23_0223F118(SysTask *param0, void *param1)
{
    UnkStruct_ov23_0223EE80 *v0 = param1;
    FieldSystem *fieldSystem = v0->fieldSystem;

    switch (v0->state) {
    case 0:
        SecretBases_SetEntranceGraphicsEnabled(0);
        UndergroundSpheres_DisableBuriedSphereSparkles();
        CommPlayerMan_Disable();
        SecretBases_DisableBaseEntranceGraphics();
        (v0->state)++;
        break;
    case 1:
        UndergroundTopScreen_EndTask(fieldSystem->ugTopScreenCtx);
        StartScreenFade(FADE_SUB_THEN_MAIN, FADE_TYPE_CIRCLE_OUT, FADE_TYPE_TOP_HALF_CIRCLE_OUT, COLOR_BLACK, 6, 1, HEAP_ID_FIELD1);
        (v0->state)++;
        break;
    case 2:
        if (IsScreenFadeDone()) {
            if (fieldSystem->ugTopScreenCtx == NULL) {
                FieldSystem_FlagNotRunningFieldMap(fieldSystem);
                (v0->state)++;
            }
        }
        break;
    case 3:
        if (!FieldSystem_HasParentProcess(fieldSystem)) {
            NetworkIcon_Destroy();
            (v0->state)++;
        }
        break;
    case 4:
        Mining_InitGame(v0);
        (v0->state)++;
        break;
    case 5:
        ov23_0223EF98();
        (v0->state)++;
        break;
    case 6:
        sub_02039734();
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_CIRCLE_IN, FADE_TYPE_CIRCLE_IN, COLOR_BLACK, 6, 1, HEAP_ID_MINING);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        (v0->state)++;
        break;
    case 7:
        if (IsScreenFadeDone()) {
            v0->timer = 0;
            Sound_PlayEffect(SEQ_SE_PL_UG_006);
            v0->state = 8;
        }
        break;
    case 8:
        v0->timer++;

        if (v0->timer > 20) {
            v0->state = 9;
        }
        break;
    case 9:
        UndergroundTextPrinter_SetSingleDigitNumber(UndergroundMan_GetCommonTextPrinter(), 0, v0->itemCount);
        Unk_ov23_02257740->unk_A24 = UndergroundTextPrinter_PrintTextInstant(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_SomethingPingedInWall, FALSE, NULL);
        v0->timer = 0;
        (v0->state)++;
        break;
    case 10:
        v0->timer++;

        if (v0->timer > 80) {
            Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(Unk_ov23_02257740->fieldSystem));

            UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetCommonTextPrinter());

            if (Underground_HasNeverMined(underground)) {
                v0->state++;
            } else {
                v0->state = 13;
            }
        }
        break;
    case 11:
        Unk_ov23_02257740->unk_A24 = UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_MiningTutorial, FALSE, NULL);
        v0->timer = 0;
        (v0->state)++;
        break;
    case 12:
        if (Text_IsPrinterActive(Unk_ov23_02257740->unk_A24) == 0) {
            if (gSystem.touchPressed || (gSystem.pressedKeys & PAD_BUTTON_A)) {
                UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetCommonTextPrinter());
                v0->state++;
            }
        }
        break;
    case 13:
        Mining_MainGameLoop(v0);
        ov23_02240B84(Unk_ov23_02257740->bgConfig);
        ov23_0223FDE0(v0);
        SpriteList_Update(Unk_ov23_02257740->spriteList);
        break;
    case 14:
        ov23_0223FDE0(v0);
        SpriteList_Update(Unk_ov23_02257740->spriteList);

        v0->timer--;

        if (v0->timer == 0) {
            Unk_ov23_02257740->unk_A24 = UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_EverythingDugUp, FALSE, NULL);
            Sound_PlayEffect(SEQ_SE_DP_PIRORIRO2);
            v0->textTimer = 60;
            v0->state = 15;
        }
        break;
    case 15:
        SpriteList_Update(Unk_ov23_02257740->spriteList);

        if (Text_IsPrinterActive(Unk_ov23_02257740->unk_A24) == 0) {
            v0->textTimer--;

            if (gSystem.touchPressed || (gSystem.pressedKeys & PAD_BUTTON_A) || (v0->textTimer == 0)) {
                UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetCommonTextPrinter());
                v0->state = 16;
            }
        }
        break;
    case 16:
        SpriteList_Update(Unk_ov23_02257740->spriteList);

        if (Mining_PrintNextDugUpItem(v0)) {
            v0->state = 17;
            v0->textTimer = 60;
        } else {
            v0->state = 18;
        }
        break;
    case 17:
        SpriteList_Update(Unk_ov23_02257740->spriteList);

        if (Text_IsPrinterActive(Unk_ov23_02257740->unk_A24) == 0) {
            v0->textTimer--;

            if (gSystem.touchPressed || (gSystem.pressedKeys & PAD_BUTTON_A) || (v0->textTimer == 0)) {
                if (Mining_ProcessNextDugUpItem(v0)) {
                    v0->textTimer = 60;
                    v0->state = 15;
                } else {
                    v0->state = 16;
                }
            }
        }
        break;
    case 18:
        SpriteList_Update(Unk_ov23_02257740->spriteList);
        UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetCommonTextPrinter());
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_CIRCLE_OUT, FADE_TYPE_CIRCLE_OUT, COLOR_BLACK, 6, 1, HEAP_ID_MINING);
        (v0->state)++;
        break;
    case 19:
        SpriteList_Update(Unk_ov23_02257740->spriteList);

        if (IsScreenFadeDone()) {
            NetworkIcon_Destroy();
            ov23_0223F020(v0);
            FieldSystem_StartFieldMap(fieldSystem);
            (v0->state)++;
        }
        break;
    case 20:
        if (FieldSystem_IsRunningFieldMap(fieldSystem)) {
            fieldSystem->ugTopScreenCtx = UndergroundTopScreen_StartTask(fieldSystem);
            sub_02039734();
            CommPlayerMan_PauseFieldSystem();
            HBlankSystem_Stop(v0->fieldSystem->unk_04->hBlankSystem);
            StartScreenFade(FADE_MAIN_THEN_SUB, FADE_TYPE_CIRCLE_IN, FADE_TYPE_TOP_HALF_CIRCLE_IN, COLOR_BLACK, 6, 1, HEAP_ID_FIELD1);
            (v0->state)++;
            break;
        }
        break;
    case 21:
        ResetScreenMasterBrightness(DS_SCREEN_MAIN);

        if (IsScreenFadeDone()) {
            HBlankSystem_Stop(v0->fieldSystem->unk_04->hBlankSystem);
            HBlankSystem_Start(v0->fieldSystem->unk_04->hBlankSystem);

            Graphics_LoadPalette(NARC_INDEX_DATA__UG_TRAP, text_window_NCLR, PAL_LOAD_MAIN_BG, 10 * 0x20, 4 * 0x20, HEAP_ID_FIELD1);
            LoadStandardWindowGraphics(v0->fieldSystem->bgConfig, 3, 1024 - (18 + 12) - 9, 11, 2, HEAP_ID_FIELD1);
            CommPlayerMan_Restart();

            SecretBases_EnableBaseEntranceGraphics();
            UndergroundSpheres_EnableBuriedSphereSparkles();

            CommSys_SendDataFixedSize(67, &v0->unk_50);
            CommPlayerMan_ResumeFieldSystem();

            Unk_ov23_02257740->miningGameTask = NULL;

            Heap_Free(v0);
            SysTask_Done(param0);

            SecretBases_SetEntranceGraphicsEnabled(1);
        }
        break;
    case 22:
        Unk_ov23_02257740->unk_A2C = 1;
        v0->timer--;

        if (v0->timer == 0) {
            Unk_ov23_02257740->unk_A2C = 100;
            v0->state = 23;
        }

        ov23_02240B84(Unk_ov23_02257740->bgConfig);
        SpriteList_Update(Unk_ov23_02257740->spriteList);
        break;
    case 23:
        SpriteList_Update(Unk_ov23_02257740->spriteList);
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_2, FADE_TYPE_UNK_2, COLOR_BLACK, 15, 1, HEAP_ID_MINING);
        Sound_PlayEffect(SEQ_SE_DP_UG_001);
        v0->state = 24;
        break;
    case 24:
        if (IsScreenFadeDone()) {
            int v3;

            for (v3 = 0; v3 < 8; v3++) {
                Sprite_SetDrawFlag(Unk_ov23_02257740->sprites[v3], FALSE);
            }

            v0->state = 25;
        } else {
            SpriteList_Update(Unk_ov23_02257740->spriteList);
        }

        break;
    case 25:
        BrightnessController_StartTransition(1, -16, -16, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2, BRIGHTNESS_MAIN_SCREEN);
        v0->state = 26;
        break;
    case 26:
        ResetVisibleHardwareWindows(DS_SCREEN_MAIN);
        ResetScreenMasterBrightness(DS_SCREEN_MAIN);
        Unk_ov23_02257740->unk_A24 = UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_WallCollapsed, FALSE, NULL);
        v0->textTimer = 60;
        v0->state = 15;
        break;
    case 27:
        if (Text_IsPrinterActive(Unk_ov23_02257740->unk_A24) == 0) {
            v0->textTimer--;

            if (gSystem.touchPressed || (gSystem.pressedKeys & PAD_BUTTON_A) || (v0->textTimer == 0)) {
                UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetCommonTextPrinter());
                v0->state = 19;
            }
        }
        break;
    }
}

static void ov23_0223F70C(FieldSystem *fieldSystem)
{
    UnkStruct_ov23_0223EE80 *v0;
    void *journalEntryLocationEvent = JournalEntry_CreateEventDugUnderground(HEAP_ID_FIELD2);

    JournalEntry_SaveData(fieldSystem->journalEntry, journalEntryLocationEvent, JOURNAL_LOCATION);
    v0 = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(UnkStruct_ov23_0223EE80));

    MI_CpuFill8(v0, 0, sizeof(UnkStruct_ov23_0223EE80));
    v0->fieldSystem = fieldSystem;

    HBlankSystem_Stop(fieldSystem->unk_04->hBlankSystem);
    SystemFlag_SetDiggingForFossils(SaveData_GetVarsFlags(fieldSystem->saveData));

    Unk_ov23_02257740->miningGameTask = SysTask_Start(ov23_0223F118, v0, 100);
}

static BOOL Mining_IsBuriedObjectSlotAvailable(void)
{
    int i;

    for (i = 0; i < MINING_MAX_BURIED_OBJECTS; i++) {
        if (Unk_ov23_02257740->buriedObjects[i].miningObject == NULL) {
            return TRUE;
        }
    }

    return FALSE;
}

static int Mining_AddBuriedObject(int index, int x, int y)
{
    int i;

    for (i = 0; i < MINING_MAX_BURIED_OBJECTS; i++) {
        if (Unk_ov23_02257740->buriedObjects[i].miningObject == NULL) {
            Unk_ov23_02257740->buriedObjects[i].miningObject = &sMiningObjects[index];
            Unk_ov23_02257740->buriedObjects[i].itemID = sMiningObjects[index].itemID;
            Unk_ov23_02257740->buriedObjects[i].x = x;
            Unk_ov23_02257740->buriedObjects[i].y = y;
            Unk_ov23_02257740->buriedObjects[i].isDugUp = FALSE;

            return i + 1;
        }
    }

    GF_ASSERT(FALSE);
    return 0;
}

static BOOL Mining_AreCoordinatesWithinObjectShape(MiningObject *param0, int x, int y)
{
    u8 *shape = param0->shape;
    int column, row, entriesPerRow;

    if (shape == NULL) {
        return TRUE;
    }

    row = y / 2;
    column = x / 2;
    entriesPerRow = param0->width / 2;

    if (shape[row * entriesPerRow + column] == 'o') {
        return FALSE;
    }

    return TRUE;
}

static BOOL Mining_TryPlaceObject(int index, int x, int y)
{
    int i, j, endX, endY, buriedIndex;

    if (!Mining_IsBuriedObjectSlotAvailable()) {
        return FALSE;
    }

    endX = sMiningObjects[index].width / 2 + x;
    endY = sMiningObjects[index].height / 2 + y;

    if (endX > MINING_GAME_WIDTH) {
        return FALSE;
    }

    if (endY > MINING_GAME_HEIGHT) {
        return FALSE;
    }

    for (i = x; i < endX; i++) {
        for (j = y; j < endY; j++) {
            if (Mining_AreCoordinatesWithinObjectShape(&sMiningObjects[index], (i - x) * 2, (j - y) * 2)) {
                if (Unk_ov23_02257740->buriedObjectGrid[j][i] != 0) {
                    return FALSE;
                }
            }
        }
    }

    buriedIndex = Mining_AddBuriedObject(index, x, y);

    for (i = x; i < endX; i++) {
        for (j = y; j < endY; j++) {
            if (Mining_AreCoordinatesWithinObjectShape(&sMiningObjects[index], (i - x) * 2, (j - y) * 2)) {
                Unk_ov23_02257740->buriedObjectGrid[j][i] = buriedIndex;
            }
        }
    }

    return TRUE;
}

static int Mining_GetWeightOfItem(MiningObject *item)
{
    SaveData *saveData = FieldSystem_GetSaveData(Unk_ov23_02257740->fieldSystem);
    Underground *underground = SaveData_GetUnderground(saveData);
    BOOL isTrainerIDOdd = TrainerInfo_ID(SaveData_GetTrainerInfo(saveData)) % 2;
    BOOL isNationalDexObtained = Pokedex_IsNationalDexObtained(SaveData_GetPokedex(saveData));
    int weight = 0;

    if (isNationalDexObtained) {
        if (isTrainerIDOdd) {
            weight += item->oddTIDNatDexWeight;
        } else {
            weight += item->evenTIDNatDexWeight;
        }
    } else {
        if (isTrainerIDOdd) {
            weight += item->oddTIDWeight;
        } else {
            weight += item->evenTIDWeight;
        }
    }

    return weight;
}

static int Mining_GetTotalItemWeight(void)
{
    int i, totalWeight = 0;

    for (i = 0; i < NELEMS(sMiningObjects); i++) {
        if (MINING_TREASURE_MAX == sMiningObjects[i].itemID) {
            break;
        }

        totalWeight += Mining_GetWeightOfItem(&sMiningObjects[i]);
    }

    return totalWeight;
}

static int Mining_PickItem(int randNum)
{
    int i, counter = randNum;

    for (i = 0; i < NELEMS(sMiningObjects); i++) {
        if (MINING_TREASURE_MAX == sMiningObjects[i].itemID) {
            break;
        }

        counter -= Mining_GetWeightOfItem(&sMiningObjects[i]);

        if (counter < 0) {
            return i;
        }
    }

    GF_ASSERT(FALSE);
    return 0;
}

static int Mining_GetTotalTypesOfRocks(void)
{
    int i, total = 0;

    for (i = 0; i < NELEMS(sMiningObjects); i++) {
        if (sMiningObjects[i].itemID >= MINING_ROCK_1) {
            total++;
        }
    }

    return total;
}

static void Mining_GenerateGameLayout(BgConfig *bgConfig, int param1, UnkStruct_ov23_0223EE80 *param2)
{
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(Unk_ov23_02257740->fieldSystem));
    int objectsPlaced, i, totalWeight = Mining_GetTotalItemWeight();
    int randNum, x, y, j = 0, index, itemID;
    int typesOfRocks = Mining_GetTotalTypesOfRocks();
    int selectedPlates[MINING_MAX_BURIED_ITEMS];

    param2->itemCount = MATH_Rand32(&Unk_ov23_02257740->rand, MINING_MAX_BURIED_ITEMS - 1) + 2;

    if (Underground_HasNeverMined(underground)) {
        param2->itemCount = 3;
    }

    for (objectsPlaced = 0; objectsPlaced < param2->itemCount;) {
        randNum = MATH_Rand32(&Unk_ov23_02257740->rand, totalWeight);
        index = Mining_PickItem(randNum);
        itemID = sMiningObjects[index].itemID;

        if (!Underground_HasPlateNeverBeenMined(underground, sMiningObjects[index].itemID)) {
            continue;
        }

        if ((MINING_TREASURE_FLAME_PLATE <= itemID) && (itemID <= MINING_TREASURE_IRON_PLATE)) {
            BOOL isPlateSelectedTwice = FALSE;

            selectedPlates[objectsPlaced] = itemID;

            for (i = 0; i < objectsPlaced; i++) {
                if (selectedPlates[i] == itemID) {
                    isPlateSelectedTwice = TRUE;
                }
            }

            if (isPlateSelectedTwice) {
                continue;
            }
        } else {
            selectedPlates[objectsPlaced] = 28;
        }

        x = MATH_Rand32(&Unk_ov23_02257740->rand, MINING_GAME_WIDTH);
        y = MATH_Rand32(&Unk_ov23_02257740->rand, MINING_GAME_HEIGHT);

        if (Mining_TryPlaceObject(index, x, y)) {
            objectsPlaced++;
        }
    }

    if (!Underground_HasNeverMined(underground)) {
        for (j = 0; j < 100; j++) {
            index = MATH_Rand32(&Unk_ov23_02257740->rand, typesOfRocks);
            index += NELEMS(sMiningObjects) - typesOfRocks;
            x = MATH_Rand32(&Unk_ov23_02257740->rand, MINING_GAME_WIDTH);
            y = MATH_Rand32(&Unk_ov23_02257740->rand, MINING_GAME_HEIGHT);

            if (Mining_TryPlaceObject(index, x, y)) {
                objectsPlaced++;
            }

            // unreachable, objectsPlaced can never exceed 8
            if (objectsPlaced > 12) {
                break;
            }
        }
    }

    ov23_0223FF60(objectsPlaced, bgConfig, param1, param2);
}

static int ov23_0223FC9C(int index, BgConfig *bgConfig, int param2, UnkStruct_ov23_0223EE80 *param3)
{
    BuriedObject *buriedObject = &Unk_ov23_02257740->buriedObjects[index];
    u16 *v1 = Bg_GetTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    int x = buriedObject->x * 2;
    int y = buriedObject->y * 2;
    int endX = x + buriedObject->miningObject->width;
    int endY = y + buriedObject->miningObject->height;
    int i, j, v8, v9 = param2;
    u32 v10;
    int v11 = index;
    NARC *v12 = NARC_ctor(NARC_INDEX_DATA__UG_PARTS, HEAP_ID_MINING);

    if (index >= param3->itemCount) {
        v11 = 4;
    }

    if (index >= param3->itemCount) {
        Graphics_LoadPaletteFromOpenNARC(v12, buriedObject->miningObject->paletteNARCIndex, PAL_LOAD_MAIN_BG, (v11 + 3) * 32, 32, HEAP_ID_MINING);
    } else {
        param3->unk_18[index] = Graphics_GetPlttDataFromOpenNARC(v12, buriedObject->miningObject->paletteNARCIndex, &param3->buriedItemPalettes[index], HEAP_ID_MINING);
        DC_FlushRange(param3->buriedItemPalettes[index]->pRawData, 32);
        GX_LoadBGPltt(param3->buriedItemPalettes[index]->pRawData, (v11 + 3) * 32, 32);
    }

    v10 = Graphics_LoadTilesToBgLayerFromOpenNARC(v12, buriedObject->miningObject->spriteNARCIndex, bgConfig, BG_LAYER_MAIN_1, param2, 0, 0, HEAP_ID_MINING);
    NARC_dtor(v12);

    for (i = y; i < endY; i++) {
        for (j = x; j < endX; j++) {
            v9++;

            if (!Mining_AreCoordinatesWithinObjectShape(buriedObject->miningObject, j - x, i - y)) {
                continue;
            }

            v8 = j + ((i + 4) * 32);
            v1[v8] = ((v11 + 3) * 0x1000) + v9 - 1;
        }
    }

    return v10;
}

static u8 Unk_ov23_02257570[] = {
    0x20,
    0xfe,
    0x40,
    0xfe,
    0x20,
    0xfe,
    0x0,
    0xfe,
    0x20,
    0xfe,
    0x40,
    0xfe,
    0x20,
    0xfe,
    0x0,
    0xff
};

static void ov23_0223FDE0(UnkStruct_ov23_0223EE80 *param0)
{
    int v0, v1, v2, v3;
    VecFx32 v4;

    for (v0 = 0; v0 < MINING_MAX_BURIED_ITEMS; v0++) {
        if (param0->unk_38[v0] == 1) {
            Sound_PlayEffect(SEQ_SE_DP_KIRAKIRA4);

            for (v3 = 0; v3 < 3; v3++) {
                v1 = MATH_Rand32(&Unk_ov23_02257740->rand, Unk_ov23_02257740->buriedObjects[v0].miningObject->width * 8);
                v2 = MATH_Rand32(&Unk_ov23_02257740->rand, Unk_ov23_02257740->buriedObjects[v0].miningObject->height * 8);
                v1 += Unk_ov23_02257740->buriedObjects[v0].x * 2 * 8;
                v2 += Unk_ov23_02257740->buriedObjects[v0].y * 2 * 8;
                v2 += 8 * 4;

                v4.x = FX32_ONE * v1;
                v4.y = FX32_ONE * v2;

                Sprite_SetAnim(Unk_ov23_02257740->sprites[5 + v3], 8 + v3);
                Sprite_SetPosition(Unk_ov23_02257740->sprites[5 + v3], &v4);
            }
        }
    }

    for (v0 = 0; v0 < MINING_MAX_BURIED_ITEMS; v0++) {
        if (param0->unk_38[v0]) {
            u16 *v5 = param0->buriedItemPalettes[v0]->pRawData;
            u8 v6 = Unk_ov23_02257570[param0->unk_38[v0] - 1];

            if (v6 == 0xff) {
                param0->unk_38[v0] = 0;
                continue;
            }

            param0->unk_38[v0]++;

            if (v6 == 0xfe) {
                continue;
            }

            GX_LoadBGPltt(&v5[v6], (v0 + 3) * 32, 32);
        }
    }
}

static void ov23_0223FF60(int buriedObjectCount, BgConfig *bgConfig, int param2, UnkStruct_ov23_0223EE80 *param3)
{
    int i, v1 = 512 + 24 * 3 + 32 + 1;
    u32 v2;

    for (i = 0; i < buriedObjectCount; i++) {
        v2 = ov23_0223FC9C(i, bgConfig, v1, param3);
        v1 += v2 / 32;
    }
}

static void Mining_RandomizeDirtCover(BgConfig *bgConfig)
{
    static const u8 v0 = 8;
    static const u8 v1 = 5;
    static u8 v2[v0][v0] = {
        { 0, 0, 4, 4, 4, 4, 0, 0 },
        { 0, 4, 4, 4, 4, 4, 4, 0 },
        { 4, 4, 4, 4, 4, 4 },
        { 4, 4, 4, 4, 4, 4 },
        { 4, 4, 4, 4, 4, 4 },
        { 4, 4, 4, 4, 4, 4 },
        { 0, 4, 4, 4, 4, 4, 4, 0 },
        { 0, 0, 4, 4, 4, 4, 0, 0 }
    };
    static u8 v3[v1][v1] = {
        { 0, 6, 6, 6, 0 },
        { 6, 6, 6, 6, 6 },
        { 6, 6, 6, 6, 6 },
        { 6, 6, 6, 6, 6 },
        { 0, 6, 6, 6, 0 }
    };
    int v4, v5, v6, v7, v8, v9, v10;
    BOOL v11 = 1;

    for (v10 = 0; v10 < 10; v10++) {
        v8 = MATH_Rand32(&Unk_ov23_02257740->rand, MINING_GAME_WIDTH + v0) - v0;
        v9 = MATH_Rand32(&Unk_ov23_02257740->rand, MINING_GAME_HEIGHT + v0) - v1;

        for (v7 = v9; v7 < v9 + v0; v7++) {
            if ((v7 >= MINING_GAME_HEIGHT) || (v7 < 0)) {
                continue;
            }

            for (v6 = v8; v6 < v8 + v0; v6++) {
                if ((v6 >= MINING_GAME_WIDTH) || (v6 < 0)) {
                    continue;
                }

                if (v2[v7 - v9][v6 - v8] == 0) {
                    continue;
                }

                Unk_ov23_02257740->dirtCover[v7][v6] = v2[v7 - v9][v6 - v8];
            }
        }
    }

    for (v10 = 0; v10 < 15; v10++) {
        v8 = MATH_Rand32(&Unk_ov23_02257740->rand, MINING_GAME_WIDTH + v1) - v1;
        v9 = MATH_Rand32(&Unk_ov23_02257740->rand, MINING_GAME_HEIGHT + v1) - v1;
        v11 = 1;

        for (v7 = v9; v7 < v9 + v1; v7++) {
            if ((v7 >= MINING_GAME_HEIGHT) || (v7 < 0)) {
                continue;
            }

            for (v6 = v8; v6 < v8 + v1; v6++) {
                if ((v6 >= MINING_GAME_WIDTH) || (v6 < 0)) {
                    continue;
                }

                if (v2[v7 - v9][v6 - v8] == 0) {
                    continue;
                }

                if (Unk_ov23_02257740->dirtCover[v7][v6] < 4) {
                    v11 = 0;
                    break;
                }
            }

            if (v11 == 0) {
                break;
            }
        }

        if (!v11) {
            continue;
        }

        for (v7 = v9; v7 < v9 + v1; v7++) {
            if ((v7 >= MINING_GAME_HEIGHT) || (v7 < 0)) {
                continue;
            }

            for (v6 = v8; v6 < v8 + v1; v6++) {
                if ((v6 >= MINING_GAME_WIDTH) || (v6 < 0)) {
                    continue;
                }

                if (v3[v7 - v9][v6 - v8] == 0) {
                    continue;
                }

                Unk_ov23_02257740->dirtCover[v7][v6] = v3[v7 - v9][v6 - v8];
            }
        }
    }

    for (v7 = 0; v7 < MINING_GAME_HEIGHT; v7++) {
        for (v6 = 0; v6 < MINING_GAME_WIDTH; v6++) {
            (void)0;
        }
    }
}

static void Mining_DrawDirt(BgConfig *bgConfig)
{
    static u8 v0[] = { 0xe, 0xf, 0x1e, 0x1f };
    static u8 v1[] = { 0xa, 0xb, 0x1a, 0x1b };
    static u8 v2[] = { 0x8, 0x9, 0x18, 0x19 };
    static u8 v3[] = { 0x6, 0x7, 0x16, 0x17 };
    static u8 v4[] = { 0x4, 0x5, 0x14, 0x15 };
    static u8 v5[] = { 0x2, 0x3, 0x12, 0x13 };
    static u8 v6[] = { 0x0, 0x1, 0x10, 0x11 };
    static u8 *v7[] = { v0, v1, v2, v3, v4, v5, v6 };
    u16 *tilemapBuffer = Bg_GetTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);
    int y, x, v11;

    for (y = 0; y < MINING_GAME_HEIGHT; y++) {
        for (x = 0; x < MINING_GAME_WIDTH; x++) {
            u8 *v12 = v7[Unk_ov23_02257740->dirtCover[y][x]];

            v11 = x * 2 + ((y * 2 + 4) * 32);
            tilemapBuffer[v11] = v12[0] + 0x2001;
            tilemapBuffer[v11 + 1] = v12[1] + 0x2001;
            tilemapBuffer[v11 + 32] = v12[2] + 0x2001;
            tilemapBuffer[v11 + 33] = v12[3] + 0x2001;
        }
    }

    Bg_CopyTilemapBufferToVRAM(bgConfig, BG_LAYER_MAIN_2);
}

static BOOL Mining_IsItemAtCoordinates(int x, int y)
{
    int itemID;
    int index = Unk_ov23_02257740->buriedObjectGrid[y][x];

    if (index == 0) {
        return FALSE;
    }

    itemID = Unk_ov23_02257740->buriedObjects[index - 1].itemID;

    if ((itemID != 0) && (itemID < MINING_TREASURE_MAX)) {
        return TRUE;
    }

    return FALSE;
}

static BOOL Mining_IsRockAtCoordinates(int x, int y)
{
    int index = Unk_ov23_02257740->buriedObjectGrid[y][x];

    if (index == 0) {
        return FALSE;
    }

    if (Unk_ov23_02257740->buriedObjects[index - 1].itemID >= MINING_ROCK_1) {
        return TRUE;
    }

    return FALSE;
}

static void Mining_RemoveDirt(int touchX, int touchY, BOOL pickaxeSelected, UnkStruct_ov23_0223EE80 *param3)
{
    static s8 diagonalXModifiers[] = { 1, -1, -1, 1 };
    static s8 diagonalYModifiers[] = { 1, -1, 1, -1 };
    static s8 adjacentXModifiers[] = { 0, 0, -1, 1 };
    static s8 adjacentYModifiers[] = { 1, -1, 0, 0 };
    int x, y, i;
    BOOL hitRock = FALSE, foundItem = FALSE;

    x = touchX / 16;
    y = touchY / 16 - 2;

    if ((x < 0) || (x >= MINING_GAME_WIDTH) || (y < 0) || (y >= MINING_GAME_HEIGHT)) {
        return;
    }

    if (Unk_ov23_02257740->dirtCover[y][x] != 0) {
        Unk_ov23_02257740->dirtCover[y][x] -= 1;
    }

    if (Unk_ov23_02257740->dirtCover[y][x] != 0) {
        Unk_ov23_02257740->dirtCover[y][x] -= 1;
    }

    if (Mining_IsRockAtCoordinates(x, y) && (Unk_ov23_02257740->dirtCover[y][x] == 0)) {
        hitRock = TRUE;
    }

    if (Mining_IsItemAtCoordinates(x, y) && (Unk_ov23_02257740->dirtCover[y][x] == 0)) {
        foundItem = TRUE;
        param3->unk_14 = 15;
    }

    ov23_0223ED68(x * 16, (y + 2) * 16, pickaxeSelected, hitRock, foundItem);

    if (hitRock) {
        return;
    }

    if (!pickaxeSelected) {
        for (i = 0; i < 4; i++) {
            int diagonalY = y + diagonalYModifiers[i];
            int diagonalX = x + diagonalXModifiers[i];

            if ((diagonalY >= 0) && (diagonalY < MINING_GAME_HEIGHT)) {
                if ((diagonalX >= 0) && (diagonalX < MINING_GAME_WIDTH)) {
                    if (Unk_ov23_02257740->dirtCover[diagonalY][diagonalX] != 0) {
                        Unk_ov23_02257740->dirtCover[diagonalY][diagonalX] -= 1;
                    }
                }
            }
        }
    }

    for (i = 0; i < 4; i++) {
        int adjacentY = y + adjacentYModifiers[i];
        int adjacentX = x + adjacentXModifiers[i];

        if ((adjacentY >= 0) && (adjacentY < MINING_GAME_HEIGHT)) {
            if ((adjacentX >= 0) && (adjacentX < MINING_GAME_WIDTH)) {
                if (Unk_ov23_02257740->dirtCover[adjacentY][adjacentX] != 0) {
                    Unk_ov23_02257740->dirtCover[adjacentY][adjacentX] -= 1;
                }

                if (!pickaxeSelected) {
                    if (Unk_ov23_02257740->dirtCover[adjacentY][adjacentX] != 0) {
                        Unk_ov23_02257740->dirtCover[adjacentY][adjacentX] -= 1;
                    }
                }
            }
        }
    }
}

static void ov23_02240454(u16 *param0, UnkStruct_ov23_02256BF8 *param1, int param2, int param3)
{
    int v0, v1, v2, v3, v4;

    for (v1 = param1->unk_01, v4 = 0; v1 < param1->unk_03; v1++, v4++) {
        v3 = param3 * v4 + param2;

        for (v2 = param1->unk_00; v2 < param1->unk_02; v2++) {
            v0 = v2 + (v1 * 32);
            param0[v0] = (param0[v0] & 0xfc00) + v3;
            v3++;
        }
    }
}

static UnkStruct_ov23_02256BF8 Unk_ov23_02256BF8[] = {
    0x1A,
    0x6,
    0x20,
    0xE
};

static UnkStruct_ov23_02256BF8 Unk_ov23_02256BF4[] = {
    0x1A,
    0xf,
    0x20,
    0x17
};

static UnkStruct_ov23_02256BF8 endPos[] = {
    0x1a,
    0x0,
    0x20,
    0x4
};

static void ov23_022404C8(BgConfig *bgConfig)
{
    u16 *v0;

    Unk_ov23_02257740->unk_A2A = 1;
    Unk_ov23_02257740->pickaxeSelected = TRUE;

    v0 = Bg_GetTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    ov23_02240454(v0, Unk_ov23_02256BF4, 0x30, 54);
}

static void ov23_022404F8(BgConfig *bgConfig, int touchX, int touchY, int param3)
{
    VecFx32 v0;
    u8 *v1;
    u16 *v2;

    if (param3 < 2) {
        return;
    }

    if (param3 == 2) {
        if ((touchX > (0x1a * 8 + 6)) && ((0x1f * 8 + 4) > touchX)) {
            if ((touchY > (5 * 8 + 3)) && ((0xd * 8 + 6) > touchY)) {
                Unk_ov23_02257740->unk_A2A = 0;
                Unk_ov23_02257740->pickaxeSelected = FALSE;
            } else if ((touchY > (0xe * 8 + 2)) && ((0x15 * 8 + 6) > touchY)) {
                Unk_ov23_02257740->unk_A2A = 1;
                Unk_ov23_02257740->pickaxeSelected = TRUE;
            } else {
                return;
            }
        } else {
            return;
        }
    }

    v2 = Bg_GetTilemapBuffer(bgConfig, 1);

    switch (Unk_ov23_02257740->unk_A2A) {
    case 0:
        if (2 == param3) {
            ov23_02240454(v2, Unk_ov23_02256BF8, 0x18, 54);
            ov23_02240454(v2, Unk_ov23_02256BF4, 0x24, 54);
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        } else if (2 + 1 == param3) {
            ov23_02240454(v2, Unk_ov23_02256BF8, 0x1e, 54);
        }

        if (2 == param3) {
            Sprite_SetAnim(Unk_ov23_02257740->sprites[2], 6);
            Sprite_SetAnimateFlag(Unk_ov23_02257740->sprites[2], TRUE);

            v0.x = FX32_ONE * 232;
            v0.y = FX32_ONE * 80;

            Sprite_SetPosition(Unk_ov23_02257740->sprites[2], &v0);
        }
        break;
    case 1:
        if (2 == param3) {
            ov23_02240454(v2, Unk_ov23_02256BF8, 0x12, 54);
            ov23_02240454(v2, Unk_ov23_02256BF4, 0x2a, 54);
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        } else if (2 + 1 == param3) {
            ov23_02240454(v2, Unk_ov23_02256BF4, 0x30, 54);
        }

        if (2 == param3) {
            Sprite_SetAnim(Unk_ov23_02257740->sprites[2], 7);
            Sprite_SetAnimateFlag(Unk_ov23_02257740->sprites[2], TRUE);

            v0.x = FX32_ONE * 232;
            v0.y = FX32_ONE * 152;

            Sprite_SetPosition(Unk_ov23_02257740->sprites[2], &v0);
        }
        break;
    }

    Bg_CopyTilemapBufferToVRAM(bgConfig, BG_LAYER_MAIN_1);
}

static void ov23_02240660(VecFx32 *param0)
{
    int v0;
    int v1 = Unk_ov23_02257740->wallIntegrity;

    v1 = (v1 / 4) * 4;
    v1 = v1 + 8;

    param0->x = FX32_ONE * (v1 + 8);
    param0->y = FX32_ONE * 16;
}

static void Mining_DrawWallCrack(BgConfig *bgConfig)
{
    VecFx32 v0;
    int wallIntegrity = Unk_ov23_02257740->wallIntegrity;
    int v2, v3, v4;
    u16 *tilemapBuffer = Bg_GetTilemapBuffer(bgConfig, BG_LAYER_MAIN_0);

    wallIntegrity = (wallIntegrity / 4) * 4;
    v4 = 6 - (wallIntegrity % 24) / 4;

    ov23_02240660(&v0);
    Sprite_SetAnim(Unk_ov23_02257740->sprites[1], v4);

    wallIntegrity = wallIntegrity + 8;
    v2 = ((26 * 8) - wallIntegrity) / 8;

    for (v3 = 0; v3 < v2; v3++) {
        tilemapBuffer[0x19 - v3] = (tilemapBuffer[0x19 - v3] & 0xfc00) + 0xb - (v3 % 3);
        tilemapBuffer[0x39 - v3] = (tilemapBuffer[0x39 - v3] & 0xfc00) + 0x41 - (v3 % 3);
        tilemapBuffer[0x59 - v3] = (tilemapBuffer[0x59 - v3] & 0xfc00) + 0x77 - (v3 % 3);
        tilemapBuffer[0x79 - v3] = (tilemapBuffer[0x79 - v3] & 0xfc00) + 0xad - (v3 % 3);
    }

    Bg_CopyTilemapBufferToVRAM(bgConfig, BG_LAYER_MAIN_0);
}

static void Mining_NearbyLinksRemoveDirt(UnkStruct_ov23_0223EE80 *param0)
{
    BOOL dirtRemoved = FALSE;
    int netID;

    for (netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        if ((Unk_ov23_02257740->linkTouchX[netID] != (u8)TOUCHSCREEN_INPUT_NONE) && (Unk_ov23_02257740->linkTouchY[netID] != (u8)TOUCHSCREEN_INPUT_NONE)) {
            int playerXPos = CommPlayer_GetXIfActive(CommSys_CurNetId());
            int playerZPos = CommPlayer_GetZIfActive(CommSys_CurNetId());
            int linkXPos = UndergroundPlayer_GetXPos(netID);
            int linkZPos = UndergroundPlayer_GetZPos(netID);

            if ((linkXPos > (playerXPos - 10)) && (linkXPos < (playerXPos + 10))) {
                if ((linkZPos > (playerZPos - 10)) && (linkZPos < (playerZPos + 10))) {
                    Mining_RemoveDirt(Unk_ov23_02257740->linkTouchX[netID], Unk_ov23_02257740->linkTouchY[netID], TRUE, param0);
                    dirtRemoved = TRUE;

                    Unk_ov23_02257740->linkTouchX[netID] = TOUCHSCREEN_INPUT_NONE;
                    Unk_ov23_02257740->linkTouchY[netID] = TOUCHSCREEN_INPUT_NONE;
                }
            }
        }
    }

    if (dirtRemoved) {
        Mining_DrawDirt(Unk_ov23_02257740->bgConfig);
    }
}

static int Mining_GenerateSizeOfMinedSphere(int itemID)
{
    int sphereSize = 0;
    int id = itemID;

    if (UndergroundSpheres_IsMiningItemSphere(id)) {
        if ((id == MINING_LARGE_PRISM_SPHERE) || (id == MINING_LARGE_PALE_SPHERE) || (id == MINING_SMALL_PRISM_SPHERE) || (id == MINING_SMALL_PALE_SPHERE)) {
            sphereSize = MATH_Rand32(&Unk_ov23_02257740->rand, 1) + 1;
        } else {
            sphereSize = MATH_Rand32(&Unk_ov23_02257740->rand, 4) + 1;
        }

        if ((id == MINING_LARGE_PRISM_SPHERE) || (id == MINING_LARGE_PALE_SPHERE) || (id == MINING_LARGE_RED_SPHERE) || (id == MINING_LARGE_BLUE_SPHERE) || (id == MINING_LARGE_GREEN_SPHERE)) {
            id = id - MINING_LARGE_PRISM_SPHERE + 1;
            sphereSize += 10;
        }

        sphereSize += Unk_ov23_02257740->wallIntegrity / (INITIAL_WALL_INTEGRITY / 5);

        if (Unk_ov23_02257740->wallIntegrity != 0) {
            sphereSize += 5;
        }
    }

    return sphereSize;
}

static void Mining_AddItem(int itemID, int sphereSize)
{
    int id = itemID;
    UndergroundRecord *unused = SaveData_GetUndergroundRecord(FieldSystem_GetSaveData(Unk_ov23_02257740->fieldSystem));
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(Unk_ov23_02257740->fieldSystem));

    if (UndergroundSpheres_IsMiningItemSphere(id)) {
        UndergroundInventory_TryAddSphere(id, sphereSize);
    } else {
        UndergroundInventory_TryAddTreasure(id);
        Underground_SetPlateMined(underground, id);
    }
}

static BOOL Mining_IsRoomInBag(int itemID)
{
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(Unk_ov23_02257740->fieldSystem));

    if (UndergroundSpheres_IsMiningItemSphere(itemID)) {
        if (Underground_GetSphereCount(underground) == MAX_SPHERE_SLOTS) {
            return FALSE;
        }

        return TRUE;
    } else {
        if (Underground_GetTreasureCount(underground) == MAX_TREASURE_SLOTS) {
            return FALSE;
        }

        return TRUE;
    }
}

static BOOL Mining_AreAllItemsDugUp(UnkStruct_ov23_0223EE80 *param0)
{
    int y, x, i;
    BOOL itemsDugUp[MINING_MAX_BURIED_ITEMS];
    BOOL everythingDugUp = TRUE;

    for (i = 0; i < param0->itemCount; i++) {
        itemsDugUp[i] = TRUE;
    }

    for (y = 0; y < MINING_GAME_HEIGHT; y++) {
        for (x = 0; x < MINING_GAME_WIDTH; x++) {
            i = Unk_ov23_02257740->buriedObjectGrid[y][x];

            if ((i <= param0->itemCount) && (i != 0)) {
                if (Unk_ov23_02257740->dirtCover[y][x] != 0) {
                    itemsDugUp[i - 1] = FALSE;
                }
            }
        }
    }

    for (i = 0; i < param0->itemCount; i++) {
        if (!itemsDugUp[i]) {
            everythingDugUp = FALSE;
        } else if (Unk_ov23_02257740->buriedObjects[i].isDugUp == FALSE) {
            param0->unk_38[i] = 1;
            Unk_ov23_02257740->buriedObjects[i].isDugUp = TRUE;
        }
    }

    return everythingDugUp;
}

static BOOL Mining_PrintNextDugUpItem(UnkStruct_ov23_0223EE80 *param0)
{
    int i, entryID;

    for (i = 0; i < param0->itemCount; i++) {
        if (Unk_ov23_02257740->buriedObjects[i].isDugUp == TRUE) {
            param0->sizeOfCurrentSphere = Mining_GenerateSizeOfMinedSphere(Unk_ov23_02257740->buriedObjects[i].itemID);

            UndergroundTextPrinter_SetUndergroundItemNameWithArticle(UndergroundMan_GetCommonTextPrinter(), Unk_ov23_02257740->buriedObjects[i].itemID);

            if (UndergroundSpheres_IsMiningItemSphere(Unk_ov23_02257740->buriedObjects[i].itemID)) {
                entryID = UndergroundCommon_Text_YouObtainedSphere;
                UndergroundTextPrinter_SetTwoDigitNumberWithIndex(UndergroundMan_GetCommonTextPrinter(), 1, param0->sizeOfCurrentSphere);
            } else {
                entryID = UndergroundCommon_Text_ItemWasObtained;
                UndergroundTextPrinter_CapitalizeArgAtIndex(UndergroundMan_GetCommonTextPrinter(), 2);
            }

            Unk_ov23_02257740->unk_A24 = UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), entryID, FALSE, NULL);
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL Mining_ProcessNextDugUpItem(UnkStruct_ov23_0223EE80 *param0)
{
    int i, itemID;
    UndergroundRecord *undergroundRecord = SaveData_GetUndergroundRecord(Unk_ov23_02257740->fieldSystem->saveData);
    Underground *unused = SaveData_GetUnderground(Unk_ov23_02257740->fieldSystem->saveData);

    for (i = 0; i < param0->itemCount; i++) {
        if (Unk_ov23_02257740->buriedObjects[i].isDugUp == TRUE) {
            Unk_ov23_02257740->buriedObjects[i].isDugUp = FALSE;

            itemID = Unk_ov23_02257740->buriedObjects[i].itemID;

            if (UndergroundSpheres_IsMiningItemSphere(itemID)) {
                UndergroundRecord_AddNumSpheresDug(undergroundRecord, 1);
            } else {
                FieldSystem_SaveTVEpisodeSegment_UndergroundTreasuresCorner(Unk_ov23_02257740->fieldSystem, itemID, 1);

                // bug: rare bones count toward the fossil total
                if ((itemID >= MINING_TREASURE_HELIX_FOSSIL) && ((MINING_TREASURE_RARE_BONE + 1) > itemID) || (itemID == MINING_TREASURE_ARMOR_FOSSIL) || (itemID == MINING_TREASURE_SKULL_FOSSIL)) {
                    UndergroundRecord_AddNumFossilsDug(undergroundRecord, 1);
                    {
                        VarsFlags *v5 = SaveData_GetVarsFlags(Unk_ov23_02257740->fieldSystem->saveData);

                        SystemVars_SetUndergroundFossilsUnearthed(v5, SystemVars_GetUndergroundFossilsUnearthed(v5) + 1);
                    }
                } else {
                    sub_02029688(undergroundRecord, 1);
                }
            }

            if (Mining_IsRoomInBag(itemID)) {
                Mining_AddItem(itemID, param0->sizeOfCurrentSphere);
                break;
            } else {
                Unk_ov23_02257740->unk_A24 = UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_TooBadBagIsFull3, FALSE, NULL);
                return TRUE;
            }
        }
    }

    return FALSE;
}

static void ov23_02240B84(BgConfig *bgConfig)
{
    int v0, v1, v2;
    VecFx32 v3;

    if (Unk_ov23_02257740->unk_A2C == 0) {
        return;
    }

    v1 = ((INITIAL_WALL_INTEGRITY - Unk_ov23_02257740->wallIntegrity) / 15);
    v2 = ((INITIAL_WALL_INTEGRITY - Unk_ov23_02257740->wallIntegrity) / 50);

    Unk_ov23_02257740->unk_A2C++;

    if (Unk_ov23_02257740->unk_A2C > v1) {
        Unk_ov23_02257740->unk_A2D = Unk_ov23_02257740->unk_A2E = 0;
    } else {
        Unk_ov23_02257740->unk_A2D = MATH_Rand32(&Unk_ov23_02257740->rand, 3 + v2) - (3 + v2) / 2;
        Unk_ov23_02257740->unk_A2E = MATH_Rand32(&Unk_ov23_02257740->rand, 3 + v2) - (3 + v2) / 2;
    }

    ov23_02240660(&v3);

    v3.x -= Unk_ov23_02257740->unk_A2D * FX32_ONE;
    v3.y -= Unk_ov23_02257740->unk_A2E * FX32_ONE;

    Sprite_SetPosition(Unk_ov23_02257740->sprites[1], &v3);
}

static void ov23_02240C94(BgConfig *bgConfig)
{
    int bgLayer, v1, v2;

    if (Unk_ov23_02257740->unk_A2C == 0) {
        return;
    }

    v1 = ((INITIAL_WALL_INTEGRITY - Unk_ov23_02257740->wallIntegrity) / 10);

    if (Unk_ov23_02257740->unk_A2C > v1) {
        Unk_ov23_02257740->unk_A2C = 0;
    }

    for (bgLayer = BG_LAYER_MAIN_0; bgLayer < BG_LAYER_MAIN_3; bgLayer++) {
        Bg_SetOffset(bgConfig, bgLayer, BG_OFFSET_UPDATE_SET_X, Unk_ov23_02257740->unk_A2D);
        Bg_SetOffset(bgConfig, bgLayer, BG_OFFSET_UPDATE_SET_Y, Unk_ov23_02257740->unk_A2E);
    }
}

static BOOL Mining_MainGameLoop(UnkStruct_ov23_0223EE80 *param0)
{
    u8 v0[2];
    int damageToWall;
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(Unk_ov23_02257740->fieldSystem));

    if (Unk_ov23_02257740->unk_A29 == 1) {
        Unk_ov23_02257740->unk_A29 = 0;
    }

    if (gSystem.touchPressed) {
        if ((gSystem.touchX < 2 * 8 * 13) && (gSystem.touchY >= 4 * 8)) {
            v0[0] = gSystem.touchX;
            v0[1] = gSystem.touchY;

            Mining_RemoveDirt(gSystem.touchX, gSystem.touchY, Unk_ov23_02257740->pickaxeSelected, param0);

            if (Unk_ov23_02257740->pickaxeSelected) {
                damageToWall = 4;
            } else {
                damageToWall = 8;
            }

            CommSys_SendDataFixedSize(68, v0);

            if (Unk_ov23_02257740->wallIntegrity > damageToWall) {
                Unk_ov23_02257740->wallIntegrity -= damageToWall;
            } else {
                Unk_ov23_02257740->wallIntegrity = 0;
            }

            Mining_DrawDirt(Unk_ov23_02257740->bgConfig);
            Mining_DrawWallCrack(Unk_ov23_02257740->bgConfig);

            Unk_ov23_02257740->unk_A2C = 1;
        } else if (gSystem.touchX >= (2 * 8 * 13)) {
            Unk_ov23_02257740->unk_A29 = 2;
        }
    }

    if (param0->unk_14) {
        param0->unk_14--;

        if (param0->unk_14 == 0) {
            Sound_PlayEffect(SEQ_SE_DP_KIRAKIRA3);
        }
    }

    ov23_022404F8(Unk_ov23_02257740->bgConfig, gSystem.touchX, gSystem.touchY, Unk_ov23_02257740->unk_A29);

    if (Unk_ov23_02257740->unk_A29 >= 2) {
        Unk_ov23_02257740->unk_A29++;
    }

    Mining_NearbyLinksRemoveDirt(param0);

    if (Mining_AreAllItemsDugUp(param0)) {
        Underground_SetHasMined(underground);
        GameRecords_IncrementTrainerScore(SaveData_GetGameRecords(Unk_ov23_02257740->fieldSystem->saveData), TRAINER_SCORE_EVENT_UNDERGROUND_UNCOVER_FOSSIL);
        param0->state = 14;
        param0->timer = 25;
        param0->unk_50 = 1;
        return TRUE;
    } else if (Unk_ov23_02257740->wallIntegrity == 0) {
        Underground_SetHasMined(underground);
        param0->unk_50 = 0;
        param0->timer = 45;
        param0->state = 22;

        return TRUE;
    }

    return FALSE;
}

static void ov23_02240E60(SpriteResource *param0)
{
    Unk_ov23_02257740->unk_1C0[Unk_ov23_02257740->unk_A2F] = param0;
    Unk_ov23_02257740->unk_A2F++;
}

static void ov23_02240E88(void)
{
    int v0;
    NARC *v1;

    Unk_ov23_02257740->unk_A2F = 0;

    NNS_G2dInitOamManagerModule();

    RenderOam_Init(0, 124, 0, 31, 0, 124, 0, 31, HEAP_ID_MINING);
    ov23_0224119C();

    Unk_ov23_02257740->spriteList = SpriteList_InitRendering(26, &Unk_ov23_02257740->g2DRenderer, HEAP_ID_MINING);

    SetSubScreenViewRect(&Unk_ov23_02257740->g2DRenderer, 0, (192 << FX32_SHIFT) * 2);

    for (v0 = 0; v0 < 4; v0++) {
        Unk_ov23_02257740->unk_1B0[v0] = SpriteResourceCollection_New(2, v0, HEAP_ID_MINING);
    }

    v1 = NARC_ctor(NARC_INDEX_DATA__UG_ANIM, HEAP_ID_MINING);

    ov23_02240E60(SpriteResourceCollection_AddTilesFrom(Unk_ov23_02257740->unk_1B0[0], v1, 6, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_MINING));
    SpriteTransfer_RequestChar(Unk_ov23_02257740->unk_1C0[Unk_ov23_02257740->unk_A2F - 1]);
    ov23_02240E60(SpriteResourceCollection_AddPaletteFrom(Unk_ov23_02257740->unk_1B0[1], v1, 7, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 1, HEAP_ID_MINING));

    SpriteTransfer_RequestPlttFreeSpace(Unk_ov23_02257740->unk_1C0[Unk_ov23_02257740->unk_A2F - 1]);

    ov23_02240E60(SpriteResourceCollection_AddFrom(Unk_ov23_02257740->unk_1B0[2], v1, 5, 0, 0, 2, HEAP_ID_MINING));
    ov23_02240E60(SpriteResourceCollection_AddFrom(Unk_ov23_02257740->unk_1B0[3], v1, 4, 0, 0, 3, HEAP_ID_MINING));
    ov23_02240E60(SpriteResourceCollection_AddTilesFrom(Unk_ov23_02257740->unk_1B0[0], v1, 3, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_MINING));

    SpriteTransfer_RequestChar(Unk_ov23_02257740->unk_1C0[Unk_ov23_02257740->unk_A2F - 1]);
    ov23_02240E60(SpriteResourceCollection_AddPalette(Unk_ov23_02257740->unk_1B0[1], 52, 1, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 3, HEAP_ID_MINING));
    SpriteTransfer_RequestPlttFreeSpace(Unk_ov23_02257740->unk_1C0[Unk_ov23_02257740->unk_A2F - 1]);

    ov23_02240E60(SpriteResourceCollection_AddFrom(Unk_ov23_02257740->unk_1B0[2], v1, 2, 0, 1, 2, HEAP_ID_MINING));
    ov23_02240E60(SpriteResourceCollection_AddFrom(Unk_ov23_02257740->unk_1B0[3], v1, 1, 0, 1, 3, HEAP_ID_MINING));
    NARC_dtor(v1);
}

static void ov23_0224108C(void)
{
    int v0, v1;
    AffineSpriteListTemplate v2;

    for (v0 = 0; v0 < 2; v0++) {
        SpriteResourcesHeader_Init(&Unk_ov23_02257740->unk_204[v0], v0, v0, v0, v0, 0xffffffff, 0xffffffff, 0, 0, Unk_ov23_02257740->unk_1B0[0], Unk_ov23_02257740->unk_1B0[1], Unk_ov23_02257740->unk_1B0[2], Unk_ov23_02257740->unk_1B0[3], NULL, NULL);

        v2.list = Unk_ov23_02257740->spriteList;
        v2.resourceData = &Unk_ov23_02257740->unk_204[v0];
        v2.position.x = FX32_CONST(32);
        v2.position.y = FX32_CONST(96);
        v2.position.z = 0;
        v2.affineScale.x = FX32_ONE;
        v2.affineScale.y = FX32_ONE;
        v2.affineScale.z = FX32_ONE;
        v2.affineZRotation = 0;
        v2.priority = 0;
        v2.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        v2.heapID = HEAP_ID_MINING;
        v2.position.x = FX32_ONE * 0;
        v2.position.y = FX32_ONE * 240;

        if (v0 == 0) {
            for (v1 = 2; v1 <= 7; v1++) {
                Unk_ov23_02257740->sprites[v1] = SpriteList_AddAffine(&v2);
                Sprite_SetAnimateFlag(Unk_ov23_02257740->sprites[v1], TRUE);
            }
        }

        Unk_ov23_02257740->sprites[v0] = SpriteList_AddAffine(&v2);
        Sprite_SetAnimateFlag(Unk_ov23_02257740->sprites[v0], TRUE);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov23_0224119C(void)
{
    {
        CharTransferTemplate v0 = {
            20, 2048 * 2, 2048 * 2, 29
        };

        CharTransfer_InitWithVramModes(&v0, GX_OBJVRAMMODE_CHAR_1D_128K, GX_OBJVRAMMODE_CHAR_1D_128K);
    }

    PlttTransfer_Init(20, HEAP_ID_MINING);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
    ReserveVramForWirelessIconChars(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_64K);
    ReserveSlotsForWirelessIconPalette(NNS_G2D_VRAM_TYPE_2DMAIN);
}

static void ov23_022411E8(void *param0)
{
    BgConfig *bgConfig = param0;

    ov23_02240C94(bgConfig);

    Bg_RunScheduledUpdates(bgConfig);
    VramTransfer_Process();
    RenderOam_Transfer();
}

BOOL ov23_02241200(int param0, int param1)
{
    if (ov23_0223E88C(param0, param1)) {
        return 1;
    }

    return 0;
}

int ov23_0224121C(int param0)
{
    if (Unk_ov23_02257740) {
        return Unk_ov23_02257740->unk_8D4[param0].unk_00;
    }

    return 0;
}

int ov23_0224123C(int param0)
{
    if (Unk_ov23_02257740) {
        return Unk_ov23_02257740->unk_8D4[param0].unk_02;
    }

    return 0;
}

int ov23_0224125C(int param0)
{
    if (Unk_ov23_02257740 && Unk_ov23_02257740->unk_8D0) {
        int v0 = Unk_ov23_02257740->unk_8D0->unk_4E4;

        v0 = (v0 + param0) % (250 / 3);
        return Unk_ov23_02257740->unk_8D0->unk_00[v0].unk_00;
    }

    return 0;
}

int ov23_02241294(int param0)
{
    if (Unk_ov23_02257740 && Unk_ov23_02257740->unk_8D0) {
        int v0 = Unk_ov23_02257740->unk_8D0->unk_4E4;

        v0 = (v0 + param0) % (250 / 3);
        return Unk_ov23_02257740->unk_8D0->unk_00[v0].unk_02;
    }

    return 0;
}

static void ov23_022412CC(SysTask *param0, void *param1)
{
    UnkStruct_ov23_022412CC *v0 = param1;

    v0->unk_4E4++;

    if ((250 / 3) < v0->unk_4E4) {
        Sound_PlayEffect(SEQ_SE_PL_UG_006);
        v0->unk_4E4 = 0;
    }
}

void ov23_022412F0(void)
{
    UnkStruct_ov23_022412CC *v0;

    GF_ASSERT(!Unk_ov23_02257740->unk_8D0);
    GF_ASSERT(!Unk_ov23_02257740->unk_8C4);

    v0 = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(UnkStruct_ov23_022412CC));

    MI_CpuFill8(v0, 0, sizeof(UnkStruct_ov23_022412CC));
    CommSys_SendMessage(71);

    v0->unk_4E4 = 250 / 3 - 10;

    Unk_ov23_02257740->unk_8D0 = v0;
    Unk_ov23_02257740->unk_8C4 = SysTask_Start(ov23_022412CC, v0, 100);
}

void ov23_02241364(void)
{
    if (Unk_ov23_02257740->unk_8C4) {
        SysTask_Done(Unk_ov23_02257740->unk_8C4);
        Heap_Free(Unk_ov23_02257740->unk_8D0);
        Unk_ov23_02257740->unk_8C4 = NULL;
        Unk_ov23_02257740->unk_8D0 = NULL;
    }
}

void ov23_022413A0(int param0, int param1, void *param2, void *param3)
{
    Unk_ov23_02257740->unk_8BC[param0] = 1;
}

static void ov23_022413B4(void)
{
    int v0, v1 = 0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        int v2 = Unk_ov23_02257740->unk_8BC[v0] - 1;

        if (Unk_ov23_02257740->unk_8BC[v0]) {
            while (TRUE) {
                UnkStruct_ov23_0223E6F8 *v3 = &Unk_ov23_02257740->unk_26C[v2];

                if ((v3->unk_00 != 0xffff) && (v3->unk_02 != 0xffff)) {
                    UnkStruct_ov23_0224142C v4;

                    v4.unk_00 = v3->unk_00;
                    v4.unk_02 = v3->unk_02;
                    v4.unk_04 = v0;
                    CommSys_SendDataFixedSizeServer(72, &v4);
                    Unk_ov23_02257740->unk_8BC[v0] = v2 + 3;
                    break;
                }

                v2++;
                v2++;
                v2++;

                if (v2 >= 250) {
                    Unk_ov23_02257740->unk_8BC[v0] = 0;
                    break;
                }
            }
        }
    }
}

void ov23_0224142C(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov23_0224142C *v0 = param2;
    int v1, v2;

    if (Unk_ov23_02257740 == NULL) {
        return;
    }

    v2 = v0->unk_04 & 0xf;

    if (Unk_ov23_02257740->unk_8D0 == NULL) {
        if (CommSys_CurNetId() == v2) {
            v1 = (v0->unk_04 >> 4) & 0xf;

            if ((v1 > 0) && (v1 <= 8)) {
                MI_CpuCopy8(param2, &Unk_ov23_02257740->unk_8D4[v1 - 1], sizeof(UnkStruct_ov23_0224142C));
            }
        }
    } else {
        if (v2 == CommSys_CurNetId()) {
            MI_CpuCopy8(param2, &Unk_ov23_02257740->unk_8D0->unk_00[Unk_ov23_02257740->unk_8D0->unk_4E2], sizeof(UnkStruct_ov23_0224142C));
            Unk_ov23_02257740->unk_8D0->unk_4E2++;

            if (Unk_ov23_02257740->unk_8D0->unk_4E2 >= 250) {
                Unk_ov23_02257740->unk_8D0->unk_4E2 = 0;
            }
        }
    }
}

int ov23_022414D0(void)
{
    return sizeof(UnkStruct_ov23_0224142C);
}

static void ov23_022414D4(void)
{
    UnkStruct_ov23_0223E6F8 *v0;
    int v1, v2;

    for (v1 = 0; v1 < (7 + 1); v1++) {
        if (!CommSys_IsPlayerConnected(v1)) {
            continue;
        }

        if (CommPlayer_GetMovementTimer(v1)) {
            Unk_ov23_02257740->unk_8FC[v1] = 0;
            continue;
        }

        if (Unk_ov23_02257740->unk_8FC[v1] >= 28) {
            continue;
        }

        Unk_ov23_02257740->unk_8FC[v1]++;

        if (Unk_ov23_02257740->unk_8FC[v1] < 20) {
            continue;
        }

        v2 = ov23_0223E8CC(CommPlayer_GetXServerIfActive(v1), CommPlayer_GetZServerIfActive(v1));

        if (v2 != -1) {
            v0 = &Unk_ov23_02257740->unk_26C[v2];

            if ((v0->unk_00 != 0xffff) && (v0->unk_02 != 0xffff)) {
                UnkStruct_ov23_0224142C v3;

                v3.unk_04 = v1 + ((Unk_ov23_02257740->unk_8FC[v1] - 20 + 1) << 4);
                v3.unk_00 = v0->unk_00;
                v3.unk_02 = v0->unk_02;

                CommSys_SendDataFixedSizeServer(72, &v3);
            }
        } else {
            UnkStruct_ov23_0224142C v4;

            v4.unk_04 = v1 + ((Unk_ov23_02257740->unk_8FC[v1] - 20 + 1) << 4);
            v4.unk_00 = 0;
            v4.unk_02 = 0;

            CommSys_SendDataFixedSizeServer(72, &v4);
        }
    }
}

BOOL ov23_022415B8(String *param0)
{
    int v0;
    TrainerInfo *v1;
    TrainerInfo *v2;

    if (!Unk_ov23_02257740) {
        return 0;
    }

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (Unk_ov23_02257740->unk_908[v0]) {
            v1 = CommInfo_TrainerInfo(v0);
            Unk_ov23_02257740->unk_908[v0] = 0;

            if (UndergroundMan_FormatCommonStringWithTrainerName(v1, 0, 105, param0)) {
                return 1;
            }
        }
    }

    return 0;
}

void ov23_0224160C(void)
{
    if (Unk_ov23_02257740) {
        MI_CpuClear8(Unk_ov23_02257740->unk_908, 7 + 1);
    }
}

BOOL Mining_IsPlayerMining(int netID)
{
    if (Unk_ov23_02257740) {
        return Unk_ov23_02257740->isPlayerMining[netID];
    }

    return FALSE;
}

void ov23_02241648(int param0)
{
    if (Unk_ov23_02257740) {
        Unk_ov23_02257740->isPlayerMining[param0] = FALSE;
        Unk_ov23_02257740->unk_8FC[param0] = 0;
    }
}

BOOL Mining_IsMiningGameTaskActive(void)
{
    if (Unk_ov23_02257740 && Unk_ov23_02257740->miningGameTask) {
        return TRUE;
    }

    return FALSE;
}

void Mining_SetPlayerMiningStatus(int netID, int isMining)
{
    if (Unk_ov23_02257740) {
        Unk_ov23_02257740->isPlayerMining[netID] = isMining;
    }
}
