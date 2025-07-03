#include "overlay023/ov23_0223E140.h"

#include <nitro.h>
#include <string.h>

#include "generated/trainer_score_events.h"

#include "struct_defs/struct_02099F80.h"
#include "struct_defs/underground_data.h"
#include "struct_defs/underground_record.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/hblank_system.h"
#include "overlay023/ov23_022416A8.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_0224340C.h"
#include "overlay023/ov23_02248F1C.h"
#include "overlay023/ov23_0224A1D0.h"
#include "overlay023/ov23_0224B05C.h"
#include "overlay023/ov23_0224F294.h"
#include "overlay023/ov23_02253D40.h"
#include "overlay023/struct_ov23_0224271C.h"

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
#include "strbuf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "system_flags.h"
#include "system_vars.h"
#include "terrain_collision_manager.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_0202854C.h"
#include "unk_020393C8.h"
#include "unk_0206CCB0.h"
#include "vars_flags.h"
#include "vram_transfer.h"

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
    void *unk_18[MAX_BURIED_ITEMS];
    NNSG2dPaletteData *buriedItemPalettes[MAX_BURIED_ITEMS];
    int unk_38[MAX_BURIED_ITEMS];
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

typedef struct {
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

typedef struct {
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
    u8 unk_86C[8];
    BuriedObject buriedObjects[MAX_BURIED_OBJECTS];
    u8 unk_8BC[8];
    SysTask *unk_8C4;
    SysTask *unk_8C8;
    SysTask *unk_8CC;
    UnkStruct_ov23_022412CC *unk_8D0;
    UnkStruct_ov23_0224142C unk_8D4[8];
    u8 unk_8FC[8];
    void *unk_904;
    u8 unk_908[8];
    u8 connectedPlayersTouchX[MAX_CONNECTED_PLAYERS];
    u8 connectedPlayersTouchY[MAX_CONNECTED_PLAYERS];
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
    u8 unk_A30;
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
    { NULL, 0x1E, 0x16, 0x1B, 0x14, 0x4, 0x4, MINING_SMALL_PRISM_SPHERE, UG_PARTS_SMALL_PRISM_SPHERE_SPRITE, UG_PARTS_PRISM_SPHERE_PALETTE },
    { NULL, 0x16, 0x1E, 0x14, 0x1B, 0x4, 0x4, MINING_SMALL_PALE_SPHERE, UG_PARTS_SMALL_PALE_SPHERE_SPRITE, UG_PARTS_PALE_SPHERE_PALETTE },
    { NULL, 0xA7, 0xC2, 0x6E, 0xA4, 0x4, 0x4, MINING_SMALL_RED_SPHERE, UG_PARTS_SMALL_RED_SPHERE_SPRITE, UG_PARTS_RED_SPHERE_PALETTE },
    { NULL, 0xC2, 0xA7, 0x96, 0x7C, 0x4, 0x4, MINING_SMALL_BLUE_SPHERE, UG_PARTS_SMALL_BLUE_SPHERE_SPRITE, UG_PARTS_BLUE_SPHERE_PALETTE },
    { NULL, 0x96, 0x96, 0x6B, 0x6B, 0x4, 0x4, MINING_SMALL_GREEN_SPHERE, UG_PARTS_SMALL_GREEN_SPHERE_SPRITE, UG_PARTS_GREEN_SPHERE_PALETTE },
    { NULL, 0xF, 0xD, 0xD, 0xA, 0x6, 0x6, MINING_LARGE_PRISM_SPHERE, UG_PARTS_LARGE_PRISM_SPHERE_SPRITE, UG_PARTS_PRISM_SPHERE_PALETTE },
    { NULL, 0xD, 0xF, 0xA, 0xD, 0x6, 0x6, MINING_LARGE_PALE_SPHERE, UG_PARTS_LARGE_PALE_SPHERE_SPRITE, UG_PARTS_PALE_SPHERE_PALETTE },
    { NULL, 0x53, 0x60, 0x3D, 0x4B, 0x6, 0x6, MINING_LARGE_RED_SPHERE, UG_PARTS_LARGE_RED_SPHERE_SPRITE, UG_PARTS_RED_SPHERE_PALETTE },
    { NULL, 0x60, 0x53, 0x4B, 0x3D, 0x6, 0x6, MINING_LARGE_BLUE_SPHERE, UG_PARTS_LARGE_BLUE_SPHERE_SPRITE, UG_PARTS_BLUE_SPHERE_PALETTE },
    { NULL, 0x4B, 0x4B, 0x35, 0x35, 0x6, 0x6, MINING_LARGE_GREEN_SPHERE, UG_PARTS_LARGE_GREEN_SPHERE_SPRITE, UG_PARTS_GREEN_SPHERE_PALETTE },
    { NULL, 0x0, 0x0, 0x0, 0x0, 0x6, 0x6, MINING_TREASURE_OVAL_STONE, UG_PARTS_OVAL_STONE_SPRITE, UG_PARTS_OVAL_STONE_PALETTE },
    { NULL, 0x0, 0x0, 0x2, 0x2, 0x8, 0x8, MINING_TREASURE_ODD_KEYSTONE, UG_PARTS_ODD_KEYSTONE_SPRITE, UG_PARTS_ODD_KEYSTONE_PALETTE },
    { sSunStoneShape, 0x4, 0x1, 0xF, 0x3, 0x6, 0x6, MINING_TREASURE_SUN_STONE, UG_PARTS_SUN_STONE_SPRITE, UG_PARTS_SUN_STONE_PALETTE },
    { sStarPieceReviveShape, 0x2, 0x2, 0xA, 0xA, 0x6, 0x6, MINING_TREASURE_STAR_PIECE, UG_PARTS_STAR_PIECE_SPRITE, UG_PARTS_STAR_PIECE_PALETTE },
    { sMoonStoneShape, 0x1, 0x2, 0x1, 0x8, 0x8, 0x4, MINING_TREASURE_MOON_STONE, UG_PARTS_MOON_STONE_SPRITE, UG_PARTS_MOON_STONE_PALETTE },
    { sMoonStoneShape90deg, 0x1, 0x2, 0x2, 0x7, 0x4, 0x8, MINING_TREASURE_MOON_STONE, UG_PARTS_MOON_STONE_90DEG_SPRITE, UG_PARTS_MOON_STONE_PALETTE },
    { NULL, 0x4, 0x4, 0x14, 0x14, 0x4, 0x4, MINING_TREASURE_HARD_STONE, UG_PARTS_HARD_STONE_SPRITE, UG_PARTS_HARD_STONE_PALETTE },
    { sThunderstoneShape, 0x4, 0x1, 0x1E, 0x5, 0x6, 0x6, MINING_TREASURE_THUNDERSTONE, UG_PARTS_THUNDERSTONE_SPRITE, UG_PARTS_THUNDERSTONE_PALETTE },
    { NULL, 0x4, 0x4, 0x14, 0x14, 0x8, 0x4, MINING_TREASURE_EVERSTONE, UG_PARTS_EVERSTONE_SPRITE, UG_PARTS_EVERSTONE_PALETTE },
    { NULL, 0x4, 0x1, 0x1E, 0x5, 0x6, 0x6, MINING_TREASURE_FIRE_STONE, UG_PARTS_FIRE_STONE_SPRITE, UG_PARTS_FIRE_STONE_PALETTE },
    { sWaterStoneShape, 0x1, 0x4, 0x5, 0x1E, 0x6, 0x6, MINING_TREASURE_WATER_STONE, UG_PARTS_WATER_STONE_SPRITE, UG_PARTS_WATER_STONE_PALETTE },
    { sLeafStoneShape, 0x1, 0x2, 0x3, 0xF, 0x6, 0x8, MINING_TREASURE_LEAF_STONE, UG_PARTS_LEAF_STONE_SPRITE, UG_PARTS_LEAF_STONE_PALETTE },
    { sLeafStoneShape90deg, 0x1, 0x2, 0x2, 0xF, 0x8, 0x6, MINING_TREASURE_LEAF_STONE, UG_PARTS_LEAF_STONE_90DEG_SPRITE, UG_PARTS_LEAF_STONE_PALETTE },
    { sHelixFossilShape, 0x0, 0x0, 0x3, 0x1, 0x8, 0x8, MINING_TREASURE_HELIX_FOSSIL, UG_PARTS_HELIX_FOSSIL_SPRITE, UG_PARTS_FOSSIL_PALETTE },
    { sHelixFossilShape90deg, 0x0, 0x0, 0x3, 0x1, 0x8, 0x8, MINING_TREASURE_HELIX_FOSSIL, UG_PARTS_HELIX_FOSSIL_90DEG_SPRITE, UG_PARTS_FOSSIL_PALETTE },
    { sHelixFossilShape, 0x0, 0x0, 0x3, 0x1, 0x8, 0x8, MINING_TREASURE_HELIX_FOSSIL, UG_PARTS_HELIX_FOSSIL_180DEG_SPRITE, UG_PARTS_FOSSIL_PALETTE },
    { sHelixFossilShape90deg, 0x0, 0x0, 0x3, 0x1, 0x8, 0x8, MINING_TREASURE_HELIX_FOSSIL, UG_PARTS_HELIX_FOSSIL_270DEG_SPRITE, UG_PARTS_FOSSIL_PALETTE },
    { sDomeFossilShape, 0x0, 0x0, 0x1, 0xD, 0xA, 0x8, MINING_TREASURE_DOME_FOSSIL, UG_PARTS_DOME_FOSSIL_SPRITE, UG_PARTS_FOSSIL_PALETTE },
    { sClawFossilShape, 0x0, 0x0, 0x3, 0x1, 0x8, 0xA, MINING_TREASURE_CLAW_FOSSIL, UG_PARTS_CLAW_FOSSIL_SPRITE, UG_PARTS_FOSSIL_PALETTE },
    { sClawFossilShape90deg, 0x0, 0x0, 0x3, 0x1, 0xA, 0x8, MINING_TREASURE_CLAW_FOSSIL, UG_PARTS_CLAW_FOSSIL_90DEG_SPRITE, UG_PARTS_FOSSIL_PALETTE },
    { sClawFossilShape180deg, 0x0, 0x0, 0x3, 0x1, 0x8, 0xA, MINING_TREASURE_CLAW_FOSSIL, UG_PARTS_CLAW_FOSSIL_180DEG_SPRITE, UG_PARTS_FOSSIL_PALETTE },
    { sClawFossilShape270deg, 0x0, 0x0, 0x3, 0x1, 0xA, 0x8, MINING_TREASURE_CLAW_FOSSIL, UG_PARTS_CLAW_FOSSIL_270DEG_SPRITE, UG_PARTS_FOSSIL_PALETTE },
    { sRootFossilShape, 0x0, 0x0, 0x1, 0x3, 0xA, 0xA, MINING_TREASURE_ROOT_FOSSIL, UG_PARTS_ROOT_FOSSIL_SPRITE, UG_PARTS_FOSSIL_PALETTE },
    { sRootFossilShape90deg, 0x0, 0x0, 0x1, 0x3, 0xA, 0xA, MINING_TREASURE_ROOT_FOSSIL, UG_PARTS_ROOT_FOSSIL_90DEG_SPRITE, UG_PARTS_FOSSIL_PALETTE },
    { sRootFossilShape180deg, 0x0, 0x0, 0x1, 0x3, 0xA, 0xA, MINING_TREASURE_ROOT_FOSSIL, UG_PARTS_ROOT_FOSSIL_180DEG_SPRITE, UG_PARTS_FOSSIL_PALETTE },
    { sRootFossilShape270deg, 0x0, 0x0, 0x1, 0x3, 0xA, 0xA, MINING_TREASURE_ROOT_FOSSIL, UG_PARTS_ROOT_FOSSIL_270DEG_SPRITE, UG_PARTS_FOSSIL_PALETTE },
    { sOldAmberShape, 0x0, 0x0, 0x2, 0x2, 0x8, 0x8, MINING_TREASURE_OLD_AMBER, UG_PARTS_OLD_AMBER_SPRITE, UG_PARTS_OLD_AMBER_PALETTE },
    { sOldAmberShape90deg, 0x0, 0x0, 0x3, 0x3, 0x8, 0x8, MINING_TREASURE_OLD_AMBER, UG_PARTS_OLD_AMBER_90DEG_SPRITE, UG_PARTS_OLD_AMBER_PALETTE },
    { sRareBoneShape, 0x1, 0x1, 0x5, 0x5, 0x6, 0xC, MINING_TREASURE_RARE_BONE, UG_PARTS_RARE_BONE_SPRITE, UG_PARTS_RARE_BONE_PALETTE },
    { sRareBoneShape90deg, 0x1, 0x1, 0x5, 0x5, 0xC, 0x6, MINING_TREASURE_RARE_BONE, UG_PARTS_RARE_BONE_90DEG_SPRITE, UG_PARTS_RARE_BONE_PALETTE },
    { sStarPieceReviveShape, 0x8, 0x8, 0xA, 0xA, 0x6, 0x6, MINING_TREASURE_REVIVE, UG_PARTS_REVIVE_SPRITE, UG_PARTS_REVIVE_PALETTE },
    { NULL, 0x1, 0x1, 0x2, 0x2, 0x6, 0x6, MINING_TREASURE_MAX_REVIVE, UG_PARTS_MAX_REVIVE_SPRITE, UG_PARTS_REVIVE_PALETTE },
    { sRedShardShape, 0xD, 0xD, 0x11, 0x11, 0x6, 0x6, MINING_TREASURE_RED_SHARD, UG_PARTS_RED_SHARD_SPRITE, UG_PARTS_FLAME_PLATE_PALETTE },
    { sBlueShardShape, 0xD, 0xD, 0x11, 0x11, 0x6, 0x6, MINING_TREASURE_BLUE_SHARD, UG_PARTS_BLUE_SHARD_SPRITE, UG_PARTS_SPLASH_PLATE_PALETTE },
    { sYellowShardShape, 0xD, 0xD, 0x11, 0x11, 0x8, 0x6, MINING_TREASURE_YELLOW_SHARD, UG_PARTS_YELLOW_SHARD_SPRITE, UG_PARTS_ZAP_PLATE_PALETTE },
    { sGreenShardShape, 0xD, 0xD, 0x11, 0x11, 0x8, 0x6, MINING_TREASURE_GREEN_SHARD, UG_PARTS_GREEN_SHARD_SPRITE, UG_PARTS_MEADOW_PLATE_PALETTE },
    { sHeartScaleShape, 0x21, 0x21, 0x1E, 0x1E, 0x4, 0x4, MINING_TREASURE_HEART_SCALE, UG_PARTS_HEART_SCALE_SPRITE, UG_PARTS_HEART_SCALE_PALETTE },
    { sArmorFossilShape, 0x0, 0x19, 0x0, 0xC, 0xA, 0x8, MINING_TREASURE_ARMOR_FOSSIL, UG_PARTS_ARMOR_FOSSIL_SPRITE, UG_PARTS_FOSSIL_PALETTE },
    { sSkullFossilShape, 0x19, 0x0, 0xC, 0x0, 0x8, 0x8, MINING_TREASURE_SKULL_FOSSIL, UG_PARTS_SKULL_FOSSIL_SPRITE, UG_PARTS_FOSSIL_PALETTE },
    { sLightClayShape, 0x1, 0x1, 0x5, 0x2, 0x8, 0x8, MINING_TREASURE_LIGHT_CLAY, UG_PARTS_LIGHT_CLAY_SPRITE, UG_PARTS_LIGHT_CLAY_PALETTE },
    { NULL, 0x1, 0x1, 0x2, 0x5, 0x6, 0x6, MINING_TREASURE_IRON_BALL, UG_PARTS_IRON_BALL_SPRITE, UG_PARTS_IRON_BALL_PALETTE },
    { sIcyRockShape, 0x2, 0x1, 0xB, 0x5, 0x8, 0x8, MINING_TREASURE_ICY_ROCK, UG_PARTS_ICY_ROCK_SPRITE, UG_PARTS_ICY_ROCK_PALETTE },
    { sSmoothRockShape, 0x1, 0x2, 0x5, 0xB, 0x8, 0x8, MINING_TREASURE_SMOOTH_ROCK, UG_PARTS_SMOOTH_ROCK_SPRITE, UG_PARTS_SMOOTH_ROCK_PALETTE },
    { sHeatRockShape, 0x2, 0x1, 0xB, 0x5, 0x8, 0x6, MINING_TREASURE_HEAT_ROCK, UG_PARTS_HEAT_ROCK_SPRITE, UG_PARTS_HEAT_ROCK_PALETTE },
    { sDampRockShape, 0x1, 0x2, 0x5, 0xB, 0x6, 0x6, MINING_TREASURE_DAMP_ROCK, UG_PARTS_DAMP_ROCK_SPRITE, UG_PARTS_DAMP_ROCK_PALETTE },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_FLAME_PLATE, UG_PARTS_PLATE_SPRITE, UG_PARTS_FLAME_PLATE_PALETTE },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_SPLASH_PLATE, UG_PARTS_PLATE_SPRITE, UG_PARTS_SPLASH_PLATE_PALETTE },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_ZAP_PLATE, UG_PARTS_PLATE_SPRITE, UG_PARTS_ZAP_PLATE_PALETTE },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_MEADOW_PLATE, UG_PARTS_PLATE_SPRITE, UG_PARTS_MEADOW_PLATE_PALETTE },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_ICICLE_PLATE, UG_PARTS_PLATE_SPRITE, UG_PARTS_ICICLE_PLATE_PALETTE },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_FIST_PLATE, UG_PARTS_PLATE_SPRITE, UG_PARTS_FIST_PLATE_PALETTE },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_TOXIC_PLATE, UG_PARTS_PLATE_SPRITE, UG_PARTS_TOXIC_PLATE_PALETTE },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_EARTH_PLATE, UG_PARTS_PLATE_SPRITE, UG_PARTS_EARTH_PLATE_PALETTE },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_SKY_PLATE, UG_PARTS_PLATE_SPRITE, UG_PARTS_SKY_PLATE_PALETTE },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_MIND_PLATE, UG_PARTS_PLATE_SPRITE, UG_PARTS_MIND_PLATE_PALETTE },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_INSECT_PLATE, UG_PARTS_PLATE_SPRITE, UG_PARTS_INSECT_PLATE_PALETTE },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_STONE_PLATE, UG_PARTS_PLATE_SPRITE, UG_PARTS_STONE_PLATE_PALETTE },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_SPOOKY_PLATE, UG_PARTS_PLATE_SPRITE, UG_PARTS_SPOOKY_PLATE_PALETTE },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_DRACO_PLATE, UG_PARTS_PLATE_SPRITE, UG_PARTS_DRACO_PLATE_PALETTE },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_DREAD_PLATE, UG_PARTS_PLATE_SPRITE, UG_PARTS_DREAD_PLATE_PALETTE },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, MINING_TREASURE_IRON_PLATE, UG_PARTS_PLATE_SPRITE, UG_PARTS_IRON_PLATE_PALETTE },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x2, MINING_ROCK_1, UG_PARTS_ROCK_HORIZONTAL_LINE_SPRITE, UG_PARTS_ROCK_PALETTE },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x2, 0x8, MINING_ROCK_1, UG_PARTS_ROCK_VERTICAL_LINE_SPRITE, UG_PARTS_ROCK_PALETTE },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x4, 0x4, MINING_ROCK_2, UG_PARTS_ROCK_SQUARE_SPRITE, UG_PARTS_ROCK_PALETTE },
    { sRockTShape, 0x1, 0x1, 0x1, 0x1, 0x6, 0x4, MINING_ROCK_3, UG_PARTS_ROCK_T_SPRITE, UG_PARTS_ROCK_PALETTE },
    { sRockTShape90deg, 0x1, 0x1, 0x1, 0x1, 0x4, 0x6, MINING_ROCK_3, UG_PARTS_ROCK_T_90DEG_SPRITE, UG_PARTS_ROCK_PALETTE },
    { sRockTShape180deg, 0x1, 0x1, 0x1, 0x1, 0x6, 0x4, MINING_ROCK_3, UG_PARTS_ROCK_T_180DEG_SPRITE, UG_PARTS_ROCK_PALETTE },
    { sRockTShape270deg, 0x1, 0x1, 0x1, 0x1, 0x4, 0x6, MINING_ROCK_3, UG_PARTS_ROCK_T_270DEG_SPRITE, UG_PARTS_ROCK_PALETTE },
    { sRockZShape, 0x1, 0x1, 0x1, 0x1, 0x6, 0x4, MINING_ROCK_4, UG_PARTS_ROCK_Z_SPRITE, UG_PARTS_ROCK_PALETTE },
    { sRockZShape90deg, 0x1, 0x1, 0x1, 0x1, 0x4, 0x6, MINING_ROCK_4, UG_PARTS_ROCK_Z_90DEG_SPRITE, UG_PARTS_ROCK_PALETTE },
    { sRockSShape, 0x1, 0x1, 0x1, 0x1, 0x6, 0x4, MINING_ROCK_5, UG_PARTS_ROCK_S_SPRITE, UG_PARTS_ROCK_PALETTE },
    { sRockSShape90deg, 0x1, 0x1, 0x1, 0x1, 0x4, 0x6, MINING_ROCK_5, UG_PARTS_ROCK_S_90DEG_SPRITE, UG_PARTS_ROCK_PALETTE },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x6, 0x6, MINING_ROCK_6, UG_PARTS_ROCK_BIG_SQUARE_SPRITE, UG_PARTS_ROCK_PALETTE },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x4, 0x8, MINING_ROCK_7, UG_PARTS_ROCK_VERTICAL_RECTANGLE_SPRITE, UG_PARTS_ROCK_PALETTE },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x4, MINING_ROCK_7, UG_PARTS_ROCK_HORIZONTAL_RECTANGLE_SPRITE, UG_PARTS_ROCK_PALETTE }
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
        Unk_ov23_02257740->connectedPlayersTouchX[i] = TOUCHSCREEN_INPUT_NONE;
        Unk_ov23_02257740->connectedPlayersTouchY[i] = TOUCHSCREEN_INPUT_NONE;
    }

    Unk_ov23_02257740->pickaxeSelected = TRUE;
    Unk_ov23_02257740->unk_A29 = 0;
    Unk_ov23_02257740->wallIntegrity = INITIAL_WALL_INTEGRITY;

    for (i = 0; i < MAX_BURIED_OBJECTS; i++) {
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
    UndergroundData *undergroundData;

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
    undergroundData = SaveData_GetUndergroundData(Unk_ov23_02257740->fieldSystem->saveData);

    if (sub_02029234(undergroundData)) {
        MATHRandContext16 v3;

        MATH_InitRand16(&v3, UndergroundData_GetRandomSeed(undergroundData));

        for (v0 = 0; v0 < 255; v0++) {
            sub_020291A4(undergroundData, v0);
        }

        for (v0 = 0; v0 < (16 * 4); v0++) {
            sub_02028EF8(undergroundData, 0, v0, 0, 0);
        }

        v1 = ov23_02241DF8(&v3);
        v1 = 25 - (v1 / 10) - 1;

        for (v0 = 0; v0 < v1; v0++) {
            ov23_0223E434(&v3, v0);
        }

        sub_02029240(undergroundData);
    } else {
        ov23_0223E834();
        ov23_02243CE8();
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
            ov23_02254044(ov23_0224219C());

            if (Unk_ov23_02257740->unk_848) {
                Menu_DestroyForExit(Unk_ov23_02257740->unk_848, 4);
            }

            sub_02059514();
        }

        Heap_FreeToHeap(Unk_ov23_02257740);
        Unk_ov23_02257740 = NULL;
    }
}

BOOL ov23_0223E354(int param0, UnkStruct_ov23_0224271C *param1)
{
    UnkStruct_ov23_0223E6F8 *v0 = ov23_0223E88C(param1->unk_00, param1->unk_02);
    u8 v1 = param0;

    if ((v0 != NULL) && (v0->unk_04 == 0xff)) {
        if (ov23_0224A6B8(param0)) {
            return 1;
        }

        CommSys_SendDataServer(64, &v1, 1);
        sub_02059058(param0, 0);

        Unk_ov23_02257740->unk_84C[param0] = v0;
        return 1;
    }

    return 0;
}

static BOOL ov23_0223E3AC(FieldSystem *fieldSystem, int param1, int param2)
{
    if (ov23_02242E58(param1, param2)) {
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
    UndergroundData *v11 = SaveData_GetUndergroundData(Unk_ov23_02257740->fieldSystem->saveData);

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
                int v12 = ov23_02243C3C(v5, v8, param0, Unk_ov23_02257740->unk_A30);

                if (0 != v12) {
                    Unk_ov23_02257740->unk_A30++;
                    break;
                }
            }
        }
    }
}

void ov23_0223E650(int param0, int param1, MATHRandContext16 *param2)
{
    int v2, v3;
    u16 v4, v5;
    UnkStruct_ov23_0223E6F8 *v6;
    UndergroundData *v7 = SaveData_GetUndergroundData(Unk_ov23_02257740->fieldSystem->saveData);

    v3 = 0;

    for (v2 = 0; v2 < 100; v2++) {
        v4 = MATH_Rand16(param2, 20) + param0 - 10;
        v5 = MATH_Rand16(param2, 20) + param1 - 10;

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
    UndergroundData *v0 = SaveData_GetUndergroundData(Unk_ov23_02257740->fieldSystem->saveData);
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

    if (ov23_02242E58(param0, param1)) {
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
        Unk_ov23_02257740->unk_A24 = ov23_02253F40(ov23_0224219C(), UndergroundCommon_Text_WallIsBulging, 0, NULL);
        Unk_ov23_02257740->unk_8C8 = SysTask_Start(ov23_0223EA38, Unk_ov23_02257740, 0);

        ov23_022431EC(NULL, Unk_ov23_02257740->unk_8C8, ov23_0223E99C);
        sub_020594FC();
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
            sub_02059514();
        }

        CommSys_SendDataFixedSize(65, &v0);
        Unk_ov23_02257740->unk_848 = NULL;

        ov23_02254044(ov23_0224219C());
        SysTask_Done(param0);
        ov23_02243204();

        Unk_ov23_02257740->unk_8C8 = NULL;
    }
}

void ov23_0223EAF8(int param0, int param1, void *param2, void *param3)
{
    UndergroundData *v0 = SaveData_GetUndergroundData(Unk_ov23_02257740->fieldSystem->saveData);
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

            Unk_ov23_02257740->unk_86C[param0] = 1;
            Unk_ov23_02257740->unk_84C[param0] = NULL;
        }
    } else {
        Unk_ov23_02257740->unk_86C[param0] = 0;
        Unk_ov23_02257740->unk_84C[param0] = NULL;
    }
}

void ov23_0223EB8C(int param0, int param1, void *param2, void *param3)
{
    u8 *v0 = param2;

    if (v0[0] == CommSys_CurNetId()) {
        sub_020594FC();
        ov23_0223F70C(Unk_ov23_02257740->fieldSystem);
    }

    Unk_ov23_02257740->unk_908[v0[0]] = 1;
}

void ov23_0223EBC0(int param0, int param1, void *param2, void *param3)
{
    Unk_ov23_02257740->unk_86C[param0] = 0;

    Unk_ov23_02257740->unk_8FC[param0] = 0;
}

void ov23_0223EBE4(int param0, int param1, void *param2, void *param3)
{
    u8 *v0 = param2;
    u8 v1[3];

    v1[0] = param0;
    v1[1] = v0[0];
    v1[2] = v0[1];

    sub_02035B48(69, v1);
}

int ov23_0223EBFC(void)
{
    return 2;
}

void Mining_ReceiveTouchScreenInputFromConnectedPlayer(int param0, int param1, void *src, void *param3)
{
    u8 *buffer = src;

    if (buffer[0] == CommSys_CurNetId()) {
        return;
    }

    Unk_ov23_02257740->connectedPlayersTouchX[buffer[0]] = buffer[1];
    Unk_ov23_02257740->connectedPlayersTouchY[buffer[0]] = buffer[2];
}

int ov23_0223EC30(void)
{
    return 3;
}

static void ov23_0223EC34(BgConfig *bgConfig)
{
    {
        UnkStruct_02099F80 v0 = {
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
            0,
            0,
            0x1000,
            0,
            3,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xc000,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_0, &v2, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_MINING);
        Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_0);
    }

    {
        BgTemplate v3 = {
            0,
            0,
            0x1000,
            0,
            3,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xd000,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &v3, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_MINING);
        Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);
    }
    {
        BgTemplate v4 = {
            0,
            0,
            0x1000,
            0,
            3,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe000,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_23,
            2,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &v4, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_2, 32, 0, HEAP_ID_MINING);
        Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);
    }
    {
        BgTemplate v5 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_23,
            3,
            0,
            0,
            0
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

    ov23_02253E2C(ov23_0224219C(), bgConfig, (512 - (18 + 12)), (((512 - (18 + 12)) - 73) - (27 * 4)));
    ov23_0223EC34(bgConfig);

    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);
    LoadMessageBoxGraphics(bgConfig, BG_LAYER_MAIN_3, (512 - (18 + 12)), 10, 0, HEAP_ID_MINING);

    {
        NARC *narc;

        narc = NARC_ctor(NARC_INDEX_DATA__UG_FOSSIL, HEAP_ID_MINING);
        Graphics_LoadPaletteFromOpenNARC(narc, 1, PAL_LOAD_MAIN_BG, 0, 32 * 3, HEAP_ID_MINING);

        v0 = Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 0, bgConfig, BG_LAYER_MAIN_0, 0, 0, 0, HEAP_ID_MINING);
        Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 2, bgConfig, BG_LAYER_MAIN_0, 0, 0, 0, HEAP_ID_MINING);
        NARC_dtor(narc);
    }

    Graphics_LoadPalette(NARC_INDEX_DATA__UG_TRAP, 52, PAL_LOAD_MAIN_BG, 10 * 0x20, 4 * 0x20, HEAP_ID_MINING);
    Mining_GenerateGameLayout(bgConfig, v0, param0);
}

static void ov23_0223EF98(void)
{
    ov23_022404C8(Unk_ov23_02257740->bgConfig);
    Bg_CopyTilemapBufferToVRAM(Unk_ov23_02257740->bgConfig, BG_LAYER_MAIN_1);

    Mining_RandomizeDirtCover(Unk_ov23_02257740->bgConfig);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_DATA__UG_PARTS, UG_PARTS_DIRT_TILES, Unk_ov23_02257740->bgConfig, BG_LAYER_MAIN_2, 1, 0, FALSE, HEAP_ID_MINING);

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
            Heap_FreeToHeap(param0->unk_18[v1]);
            param0->unk_18[v1] = NULL;
        }
    }

    SpriteList_Delete(Unk_ov23_02257740->spriteList);
    RenderOam_Free();

    CharTransfer_Free();
    PlttTransfer_Free();

    SetVBlankCallback(NULL, NULL);
    Heap_FreeToHeap(Unk_ov23_02257740->bgConfig);

    Unk_ov23_02257740->bgConfig = NULL;

    Heap_Destroy(HEAP_ID_MINING);
    ov23_02253E2C(ov23_0224219C(), Unk_ov23_02257740->fieldSystem->bgConfig, (1024 - (18 + 12)), (((1024 - (18 + 12)) - 73) - (27 * 4)));
}

static void ov23_0223F118(SysTask *param0, void *param1)
{
    UnkStruct_ov23_0223EE80 *v0 = param1;
    FieldSystem *fieldSystem = v0->fieldSystem;

    switch (v0->state) {
    case 0:
        ov23_0224DBF4(0);
        ov23_022417CC();
        CommPlayerMan_Reset();
        ov23_0224B430();
        (v0->state)++;
        break;
    case 1:
        ov23_0224942C(fieldSystem->unk_6C);
        StartScreenFade(FADE_SUB_THEN_MAIN, FADE_TYPE_UNK_16, FADE_TYPE_UNK_18, FADE_TO_BLACK, 6, 1, HEAP_ID_FIELD);
        (v0->state)++;
        break;
    case 2:
        if (IsScreenFadeDone()) {
            if (fieldSystem->unk_6C == NULL) {
                FieldSystem_FlagNotRunningFieldMap(fieldSystem);
                (v0->state)++;
            }
        }
        break;
    case 3:
        if (!FieldSystem_HasParentProcess(fieldSystem)) {
            sub_02039794();
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
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_17, FADE_TYPE_UNK_17, FADE_TO_BLACK, 6, 1, HEAP_ID_MINING);
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
        ov23_0225410C(ov23_0224219C(), 0, v0->itemCount);
        Unk_ov23_02257740->unk_A24 = ov23_02253F60(ov23_0224219C(), UndergroundCommon_Text_SomethingPingedInWall, 0, NULL);
        v0->timer = 0;
        (v0->state)++;
        break;
    case 10:
        v0->timer++;

        if (v0->timer > 80) {
            UndergroundData *undergroundData = SaveData_GetUndergroundData(FieldSystem_GetSaveData(Unk_ov23_02257740->fieldSystem));

            ov23_02254044(ov23_0224219C());

            if (UndergroundData_HasNeverMined(undergroundData)) {
                v0->state++;
            } else {
                v0->state = 13;
            }
        }
        break;
    case 11:
        Unk_ov23_02257740->unk_A24 = ov23_02253F40(ov23_0224219C(), UndergroundCommon_Text_MiningTutorial, 0, NULL);
        v0->timer = 0;
        (v0->state)++;
        break;
    case 12:
        if (Text_IsPrinterActive(Unk_ov23_02257740->unk_A24) == 0) {
            if (gSystem.touchPressed || (gSystem.pressedKeys & PAD_BUTTON_A)) {
                ov23_02254044(ov23_0224219C());
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
            Unk_ov23_02257740->unk_A24 = ov23_02253F40(ov23_0224219C(), UndergroundCommon_Text_EverythingDugUp, 0, NULL);
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
                ov23_02254044(ov23_0224219C());
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
        ov23_02254044(ov23_0224219C());
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_16, FADE_TYPE_UNK_16, FADE_TO_BLACK, 6, 1, HEAP_ID_MINING);
        (v0->state)++;
        break;
    case 19:
        SpriteList_Update(Unk_ov23_02257740->spriteList);

        if (IsScreenFadeDone()) {
            sub_02039794();
            ov23_0223F020(v0);
            FieldSystem_StartFieldMap(fieldSystem);
            (v0->state)++;
        }
        break;
    case 20:
        if (FieldSystem_IsRunningFieldMap(fieldSystem)) {
            fieldSystem->unk_6C = ov23_02249404(fieldSystem);
            sub_02039734();
            sub_020594FC();
            HBlankSystem_Stop(v0->fieldSystem->unk_04->hBlankSystem);
            StartScreenFade(FADE_MAIN_THEN_SUB, FADE_TYPE_UNK_17, FADE_TYPE_UNK_19, FADE_TO_BLACK, 6, 1, HEAP_ID_FIELD);
            (v0->state)++;
            break;
        }
        break;
    case 21:
        ResetScreenMasterBrightness(DS_SCREEN_MAIN);

        if (IsScreenFadeDone()) {
            HBlankSystem_Stop(v0->fieldSystem->unk_04->hBlankSystem);
            HBlankSystem_Start(v0->fieldSystem->unk_04->hBlankSystem);

            Graphics_LoadPalette(NARC_INDEX_DATA__UG_TRAP, 52, PAL_LOAD_MAIN_BG, 10 * 0x20, 4 * 0x20, HEAP_ID_FIELD);
            LoadStandardWindowGraphics(v0->fieldSystem->bgConfig, 3, 1024 - (18 + 12) - 9, 11, 2, HEAP_ID_FIELD);
            CommPlayerMan_Restart();

            ov23_0224B460();
            ov23_022417E0();

            CommSys_SendDataFixedSize(67, &v0->unk_50);
            sub_02059514();

            Unk_ov23_02257740->unk_8CC = NULL;

            Heap_FreeToHeap(v0);
            SysTask_Done(param0);

            ov23_0224DBF4(1);
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
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_2, FADE_TYPE_UNK_2, FADE_TO_BLACK, 15, 1, HEAP_ID_MINING);
        Sound_PlayEffect(SEQ_SE_DP_UG_001);
        v0->state = 24;
        break;
    case 24:
        if (IsScreenFadeDone()) {
            int v3;

            for (v3 = 0; v3 < 8; v3++) {
                Sprite_SetDrawFlag(Unk_ov23_02257740->sprites[v3], 0);
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
        Unk_ov23_02257740->unk_A24 = ov23_02253F40(ov23_0224219C(), UndergroundCommon_Text_WallCollapsed, 0, NULL);
        v0->textTimer = 60;
        v0->state = 15;
        break;
    case 27:
        if (Text_IsPrinterActive(Unk_ov23_02257740->unk_A24) == 0) {
            v0->textTimer--;

            if (gSystem.touchPressed || (gSystem.pressedKeys & PAD_BUTTON_A) || (v0->textTimer == 0)) {
                ov23_02254044(ov23_0224219C());
                v0->state = 19;
            }
        }
        break;
    }
}

static void ov23_0223F70C(FieldSystem *fieldSystem)
{
    UnkStruct_ov23_0223EE80 *v0;
    void *journalEntryLocationEvent = JournalEntry_CreateEventDugUnderground(HEAP_ID_FIELDMAP);

    JournalEntry_SaveData(fieldSystem->journalEntry, journalEntryLocationEvent, JOURNAL_LOCATION);
    v0 = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELDMAP, sizeof(UnkStruct_ov23_0223EE80));

    MI_CpuFill8(v0, 0, sizeof(UnkStruct_ov23_0223EE80));
    v0->fieldSystem = fieldSystem;

    HBlankSystem_Stop(fieldSystem->unk_04->hBlankSystem);
    SystemFlag_SetDiggingForFossils(SaveData_GetVarsFlags(fieldSystem->saveData));

    Unk_ov23_02257740->unk_8CC = SysTask_Start(ov23_0223F118, v0, 100);
}

static BOOL Mining_IsBuriedObjectSlotAvailable(void)
{
    int i;

    for (i = 0; i < MAX_BURIED_OBJECTS; i++) {
        if (Unk_ov23_02257740->buriedObjects[i].miningObject == NULL) {
            return TRUE;
        }
    }

    return FALSE;
}

static int Mining_AddBuriedObject(int index, int x, int y)
{
    int i;

    for (i = 0; i < MAX_BURIED_OBJECTS; i++) {
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
    UndergroundData *undergroundData = SaveData_GetUndergroundData(saveData);
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
        if (MINING_ROCK_1 == sMiningObjects[i].itemID) {
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
        if (MINING_ROCK_1 == sMiningObjects[i].itemID) {
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
    UndergroundData *undergroundData = SaveData_GetUndergroundData(FieldSystem_GetSaveData(Unk_ov23_02257740->fieldSystem));
    int objectsPlaced, i, totalWeight = Mining_GetTotalItemWeight();
    int randNum, x, y, j = 0, index, itemID;
    int typesOfRocks = Mining_GetTotalTypesOfRocks();
    int selectedPlates[MAX_BURIED_ITEMS];

    param2->itemCount = MATH_Rand32(&Unk_ov23_02257740->rand, (MAX_BURIED_ITEMS - 1)) + 2;

    if (UndergroundData_HasNeverMined(undergroundData)) {
        param2->itemCount = 3;
    }

    for (objectsPlaced = 0; objectsPlaced < param2->itemCount;) {
        randNum = MATH_Rand32(&Unk_ov23_02257740->rand, totalWeight);
        index = Mining_PickItem(randNum);
        itemID = sMiningObjects[index].itemID;

        if (!UndergroundData_HasPlateNeverBeenMined(undergroundData, sMiningObjects[index].itemID)) {
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

    if (!UndergroundData_HasNeverMined(undergroundData)) {
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

    for (v0 = 0; v0 < MAX_BURIED_ITEMS; v0++) {
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

    for (v0 = 0; v0 < MAX_BURIED_ITEMS; v0++) {
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

    if ((itemID != 0) && (itemID < MINING_ROCK_1)) {
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

static void Mining_NearbyConnectedPlayersRemoveDirt(UnkStruct_ov23_0223EE80 *param0)
{
    BOOL dirtRemoved = FALSE;
    int netID;

    for (netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        if ((Unk_ov23_02257740->connectedPlayersTouchX[netID] != (u8)TOUCHSCREEN_INPUT_NONE) && (Unk_ov23_02257740->connectedPlayersTouchY[netID] != (u8)TOUCHSCREEN_INPUT_NONE)) {
            int playerXPos = CommPlayer_XPos(CommSys_CurNetId());
            int playerZPos = CommPlayer_ZPos(CommSys_CurNetId());
            int connectedPlayerXPos = Underground_GetConnectedPlayerXPos(netID);
            int connectedPlayerZPos = Underground_GetConnectedPlayerZPos(netID);

            if ((connectedPlayerXPos > (playerXPos - 10)) && (connectedPlayerXPos < (playerXPos + 10))) {
                if ((connectedPlayerZPos > (playerZPos - 10)) && (connectedPlayerZPos < (playerZPos + 10))) {
                    Mining_RemoveDirt(Unk_ov23_02257740->connectedPlayersTouchX[netID], Unk_ov23_02257740->connectedPlayersTouchY[netID], TRUE, param0);
                    dirtRemoved = TRUE;

                    Unk_ov23_02257740->connectedPlayersTouchX[netID] = TOUCHSCREEN_INPUT_NONE;
                    Unk_ov23_02257740->connectedPlayersTouchY[netID] = TOUCHSCREEN_INPUT_NONE;
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

    if (IsMiningItemSphere(id)) {
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
    UndergroundRecord *unused = SaveData_UndergroundRecord(FieldSystem_GetSaveData(Unk_ov23_02257740->fieldSystem));
    UndergroundData *undergroundData = SaveData_GetUndergroundData(FieldSystem_GetSaveData(Unk_ov23_02257740->fieldSystem));

    if (IsMiningItemSphere(id)) {
        Underground_TryAddSphere(id, sphereSize);
    } else {
        Underground_TryAddTreasure(id);
        UndergroundData_SetPlateMined(undergroundData, id);
    }
}

static BOOL Mining_IsRoomInBag(int itemID)
{
    UndergroundData *undergroundData = SaveData_GetUndergroundData(FieldSystem_GetSaveData(Unk_ov23_02257740->fieldSystem));

    if (IsMiningItemSphere(itemID)) {
        if (40 == UndergroundData_GetSphereCount(undergroundData)) {
            return FALSE;
        }

        return TRUE;
    } else {
        if (40 == UndergroundData_GetTreasureCount(undergroundData)) {
            return FALSE;
        }

        return TRUE;
    }
}

static BOOL Mining_AreAllItemsDugUp(UnkStruct_ov23_0223EE80 *param0)
{
    int y, x, i;
    BOOL itemsDugUp[MAX_BURIED_ITEMS];
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

            ov23_02254080(ov23_0224219C(), Unk_ov23_02257740->buriedObjects[i].itemID);

            if (IsMiningItemSphere(Unk_ov23_02257740->buriedObjects[i].itemID)) {
                entryID = UndergroundCommon_Text_YouObtainedSphere;
                ov23_02254154(ov23_0224219C(), 1, param0->sizeOfCurrentSphere);
            } else {
                entryID = UndergroundCommon_Text_ItemWasObtained;
                ov23_02254204(ov23_0224219C(), 2);
            }

            Unk_ov23_02257740->unk_A24 = ov23_02253F40(ov23_0224219C(), entryID, 0, NULL);
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL Mining_ProcessNextDugUpItem(UnkStruct_ov23_0223EE80 *param0)
{
    int i, itemID;
    UndergroundRecord *undergroundRecord = SaveData_UndergroundRecord(Unk_ov23_02257740->fieldSystem->saveData);
    UndergroundData *unused = SaveData_GetUndergroundData(Unk_ov23_02257740->fieldSystem->saveData);

    for (i = 0; i < param0->itemCount; i++) {
        if (Unk_ov23_02257740->buriedObjects[i].isDugUp == TRUE) {
            Unk_ov23_02257740->buriedObjects[i].isDugUp = FALSE;

            itemID = Unk_ov23_02257740->buriedObjects[i].itemID;

            if (IsMiningItemSphere(itemID)) {
                UndergroundRecord_AddNumSpheresDug(undergroundRecord, 1);
            } else {
                sub_0206D6C8(Unk_ov23_02257740->fieldSystem, itemID, 1);

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
                Unk_ov23_02257740->unk_A24 = ov23_02253F40(ov23_0224219C(), UndergroundCommon_Text_TooBadBagIsFull3, 0, NULL);
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
    UndergroundData *undergroundData = SaveData_GetUndergroundData(FieldSystem_GetSaveData(Unk_ov23_02257740->fieldSystem));

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

    Mining_NearbyConnectedPlayersRemoveDirt(param0);

    if (Mining_AreAllItemsDugUp(param0)) {
        UndergroundData_SetHasMined(undergroundData);
        GameRecords_IncrementTrainerScore(SaveData_GetGameRecords(Unk_ov23_02257740->fieldSystem->saveData), TRAINER_SCORE_EVENT_UNDERGROUND_UNCOVER_FOSSIL);
        param0->state = 14;
        param0->timer = 25;
        param0->unk_50 = 1;
        return TRUE;
    } else if (Unk_ov23_02257740->wallIntegrity == 0) {
        UndergroundData_SetHasMined(undergroundData);
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
            20, (2048 * 2), (2048 * 2), 29
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

    v0 = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELDMAP, sizeof(UnkStruct_ov23_022412CC));

    MI_CpuFill8(v0, 0, sizeof(UnkStruct_ov23_022412CC));
    Link_Message(71);

    v0->unk_4E4 = 250 / 3 - 10;

    Unk_ov23_02257740->unk_8D0 = v0;
    Unk_ov23_02257740->unk_8C4 = SysTask_Start(ov23_022412CC, v0, 100);
}

void ov23_02241364(void)
{
    if (Unk_ov23_02257740->unk_8C4) {
        SysTask_Done(Unk_ov23_02257740->unk_8C4);
        Heap_FreeToHeap(Unk_ov23_02257740->unk_8D0);
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
                    sub_02035B48(72, &v4);
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

        v2 = ov23_0223E8CC(CommPlayer_GetXServer(v1), CommPlayer_GetZServer(v1));

        if (v2 != -1) {
            v0 = &Unk_ov23_02257740->unk_26C[v2];

            if ((v0->unk_00 != 0xffff) && (v0->unk_02 != 0xffff)) {
                UnkStruct_ov23_0224142C v3;

                v3.unk_04 = v1 + ((Unk_ov23_02257740->unk_8FC[v1] - 20 + 1) << 4);
                v3.unk_00 = v0->unk_00;
                v3.unk_02 = v0->unk_02;

                sub_02035B48(72, &v3);
            }
        } else {
            UnkStruct_ov23_0224142C v4;

            v4.unk_04 = v1 + ((Unk_ov23_02257740->unk_8FC[v1] - 20 + 1) << 4);
            v4.unk_00 = 0;
            v4.unk_02 = 0;

            sub_02035B48(72, &v4);
        }
    }
}

BOOL ov23_022415B8(Strbuf *param0)
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

            if (ov23_022422A8(v1, 0, 105, param0)) {
                return 1;
            }
        }
    }

    return 0;
}

void ov23_0224160C(void)
{
    if (Unk_ov23_02257740) {
        MI_CpuClear8(Unk_ov23_02257740->unk_908, (7 + 1));
    }
}

BOOL ov23_0224162C(int param0)
{
    if (Unk_ov23_02257740) {
        return Unk_ov23_02257740->unk_86C[param0];
    }

    return 0;
}

void ov23_02241648(int param0)
{
    if (Unk_ov23_02257740) {
        Unk_ov23_02257740->unk_86C[param0] = 0;
        Unk_ov23_02257740->unk_8FC[param0] = 0;
    }
}

BOOL ov23_02241670(void)
{
    if (Unk_ov23_02257740) {
        if (Unk_ov23_02257740->unk_8CC) {
            return 1;
        }
    }

    return 0;
}

void ov23_02241690(int param0, int param1)
{
    if (Unk_ov23_02257740) {
        Unk_ov23_02257740->unk_86C[param0] = param1;
    }
}
