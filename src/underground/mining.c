#include "underground/mining.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/map.h"
#include "constants/field/map_matrix.h"
#include "constants/field_base_tiles.h"
#include "generated/trainer_score_events.h"
#include "generated/traps.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/hblank_system.h"
#include "underground/manager.h"
#include "underground/menus.h"
#include "underground/player.h"
#include "underground/secret_bases.h"
#include "underground/spheres.h"
#include "underground/text_printer.h"
#include "underground/top_screen.h"
#include "underground/traps.h"

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
#include "underground.h"
#include "unk_020393C8.h"
#include "vars_flags.h"
#include "vram_transfer.h"

#include "res/graphics/mining/animations/animations.naix"
#include "res/graphics/mining/interface/interface.naix"
#include "res/graphics/mining/objects/objects.naix"
#include "res/graphics/trap_effects/trap_effects.naix"
#include "res/text/bank/underground_common.h"

#define MAX_BURIED_OBJECTS 8
#define MAX_BURIED_ITEMS   4

#define INITIAL_WALL_INTEGRITY 196

#define MINING_GAME_WIDTH  13
#define MINING_GAME_HEIGHT 10

#define MINING_BASE_TILE_SCROLLING_MESSAGE_BOX (512 - SCROLLING_MESSAGE_BOX_TILE_COUNT)
#define MINING_BASE_TILE_MESSAGE_WINDOW        (MINING_BASE_TILE_SCROLLING_MESSAGE_BOX - 73 - MESSAGE_WINDOW_TILE_COUNT)

#define MINING_BASE_TILE_HAMMER_BUTTON_UNPRESSED  18
#define MINING_BASE_TILE_HAMMER_BUTTON_TRANSITION 24
#define MINING_BASE_TILE_HAMMER_BUTTON_PRESSED    30

#define MINING_BASE_TILE_PICKAXE_BUTTON_UNPRESSED  36
#define MINING_BASE_TILE_PICKAXE_BUTTON_TRANSITION 42
#define MINING_BASE_TILE_PICKAXE_BUTTON_PRESSED    48

#define MINING_BASE_TILE_CRACK_ROW_1 11
#define MINING_BASE_TILE_CRACK_ROW_2 65
#define MINING_BASE_TILE_CRACK_ROW_3 119
#define MINING_BASE_TILE_CRACK_ROW_4 173

#define CRACK_START_TILEMAP_INDEX_ROW_1 25
#define CRACK_START_TILEMAP_INDEX_ROW_2 57
#define CRACK_START_TILEMAP_INDEX_ROW_3 89
#define CRACK_START_TILEMAP_INDEX_ROW_4 121

#define ITEM_SHINE_ANIM_FRAME_DELAY 0xFE
#define ITEM_SHINE_ANIM_END         0xFF

#define BUTTON_ROW_GAP_LENGTH 54

#define SIDEBAR_TOUCH_START 2

#define DIRT_TILES_OFFSET 1
#define DIRT_TILES_W      16
#define DIRT_TILES_H      2
#define DIRT_TILES_COUNT  (DIRT_TILES_W * DIRT_TILES_H)

enum MiningButton {
    MINING_BUTTON_HAMMER = 0,
    MINING_BUTTON_PICKAXE,
};

enum MiningAnimation {
    MINING_ANIM_PICKAXE_SWING = 0,
    MINING_ANIM_HAMMER_SWING,
    MINING_ANIM_HIT_ROCK_IMPACT,
    MINING_ANIM_PICKAXE_IMPACT,
    MINING_ANIM_HAMMER_IMPACT,
    MINING_ANIM_ITEM_HIT_SPARKLE,
    MINING_ANIM_HAMMER_BUTTON_PRESSED,
    MINING_ANIM_PICKAXE_BUTTON_PRESSED,
    MINING_ANIM_ITEM_DUG_UP_SPARKLES_1,
    MINING_ANIM_ITEM_DUG_UP_SPARKLES_2,
    MINING_ANIM_ITEM_DUG_UP_SPARKLES_3,
};

enum MiningSprite {
    MINING_SPRITE_TOOL = 0,
    MINING_SPRITE_CRACK_END,
    MINING_SPRITE_BUTTON_PRESS_EFFECT,
    MINING_SPRITE_IMPACT,
    MINING_SPRITE_ITEM_HIT_SPARKLE,
    MINING_SPRITE_ITEM_DUG_UP_SPARKLES_1,
    MINING_SPRITE_ITEM_DUG_UP_SPARKLES_2,
    MINING_SPRITE_ITEM_DUG_UP_SPARKLES_3,
    MINING_SPRITE_COUNT,
};

enum MiningGameState {
    MINING_STATE_INIT = 0,
    MINING_STATE_FADE_OUT_START,
    MINING_STATE_WAIT_FOR_FADE_OUT_START,
    MINING_STATE_DESTROY_NETWORK_ICON,
    MINING_STATE_INIT_GAME,
    MINING_STATE_INIT_GRAPHICS,
    MINING_STATE_FADE_IN_START,
    MINING_STATE_WAIT_FOR_FADE_IN_START,
    MINING_STATE_WAIT,
    MINING_STATE_PRINT_MESSAGE,
    MINING_STATE_WAIT_2,
    MINING_STATE_PRINT_TUTORIAL,
    MINING_STATE_WAIT_FOR_TUTORIAL,
    MINING_STATE_MAIN,
    MINING_STATE_EVERYTHING_DUG,
    MINING_STATE_WAIT_FOR_TEXT,
    MINING_STATE_PRINT_DUG_UP_ITEM,
    MINING_STATE_PROCESS_DUG_UP_ITEM,
    MINING_STATE_FADE_OUT_END,
    MINING_STATE_FREE,
    MINING_STATE_FADE_IN_END,
    MINING_STATE_END,
    MINING_STATE_COLLAPSE_SHAKE,
    MINING_STATE_COLLAPSE_FADE_OUT,
    MINING_STATE_COLLAPSE_WAIT_FOR_FADE,
    MINING_STATE_CHANGE_BRIGHTNESS,
    MINING_STATE_PRINT_COLLAPSE_MESSAGE,
    MINING_STATE_UNUSED_27,
};

typedef struct MiningButtonRectangle {
    u8 startX;
    u8 startY;
    u8 endX;
    u8 endY;
} MiningButtonRectangle;

typedef struct MiningSpotRadarResult {
    u16 x;
    u16 z;
    u8 netID; // also stores normal radar index in high bits
} MiningSpotRadarResult;

typedef struct MiningGameContext {
    int state;
    u8 padding[4];
    int timer;
    int itemCount;
    FieldSystem *fieldSystem;
    int soundEffectTimer;
    void *nclrBuffers[MAX_BURIED_ITEMS];
    NNSG2dPaletteData *buriedItemPalettes[MAX_BURIED_ITEMS];
    int itemShineAnimIndices[MAX_BURIED_ITEMS];
    int sizeOfCurrentSphere;
    int textTimer;
    u8 dugUpAllItems;
} MiningGameContext;

typedef struct MiningSpot {
    u16 x;
    u16 z;
    u8 alwaysFF;
    u8 saveDataIndex;
} MiningSpot;

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

typedef struct TreasureRadarContext {
    MiningSpotRadarResult results[MAX_MINING_SPOTS];
    u8 index;
    u16 timer;
} TreasureRadarContext;

typedef struct MiningEnv {
    FieldSystem *fieldSystem;
    BgConfig *bgConfig;
    MATHRandContext32 rand;
    SpriteList *spriteList;
    G2dRenderer g2DRenderer;
    SpriteResourceCollection *spriteResourceCollection[MAX_SPRITE_RESOURCE_GEN4];
    SpriteResource *spriteResources[MAX_SPRITE_RESOURCE_GEN4 * 2];
    u8 padding[36];
    SpriteResourcesHeader resourceData[2];
    Sprite *sprites[MINING_SPRITE_COUNT];
    MiningSpot miningSpots[MAX_MINING_SPOTS];
    Menu *confirmStartMiningMenu;
    MiningSpot *currentUsedMiningSpots[MAX_CONNECTED_PLAYERS];
    u8 isPlayerMining[MAX_CONNECTED_PLAYERS];
    BuriedObject buriedObjects[MAX_BURIED_OBJECTS];
    u8 treasureRadarIndex[MAX_CONNECTED_PLAYERS];
    SysTask *treasureRadarTask;
    SysTask *confirmStartMiningTask;
    SysTask *miningGameTask;
    TreasureRadarContext *treasureRadarContext;
    MiningSpotRadarResult normalRadarResults[MAX_NORMAL_RADAR_BLIPS];
    u8 normalRadarTimer[MAX_CONNECTED_PLAYERS];
    u8 padding2[4];
    u8 miningMessagesQueued[MAX_CONNECTED_PLAYERS];
    u8 linkTouchX[MAX_CONNECTED_PLAYERS];
    u8 linkTouchY[MAX_CONNECTED_PLAYERS];
    u8 buriedObjectGrid[MINING_GAME_HEIGHT][MINING_GAME_WIDTH];
    u8 dirtLayers[MINING_GAME_HEIGHT][MINING_GAME_WIDTH];
    int printerID;
    u8 pickaxeSelected;
    u8 sidebarTouchState;
    u8 buttonSelected;
    u8 wallIntegrity;
    u8 shakeTimer;
    s8 screenShakeX;
    s8 screenShakeY;
    u8 spriteResourceIndex;
    u8 spawnedTrapIndex;
} MiningEnv;

typedef struct MiningLinkInput {
    u8 touchX;
    u8 touchY;
} MiningLinkInput;

typedef struct MiningLinkInputWithNetID {
    u8 netID;
    u8 touchX;
    u8 touchY;
} MiningLinkInputWithNetID;

static void Mining_DrawWallCrack(BgConfig *bgConfig);
static void Mining_SpawnMiningSpotsAndTraps(MATHRandContext16 *rand, int unused);
static MiningSpot *Mining_FindEmptyMiningSpotSlot(void);
static MiningSpot *Mining_GetMiningSpotAtCoordinates(u16 x, u16 z);
static void Mining_ConfirmStartMiningTask(SysTask *sysTask, void *unused);
static void Mining_StartGameTask(FieldSystem *fieldSystem);
static void Mining_GenerateGameLayout(BgConfig *bgConfig, int unused, MiningGameContext *ctx);
static void Mining_DrawBuriedObjects(int buriedObjectCount, BgConfig *bgConfig, int unused, MiningGameContext *ctx);
static void Mining_RandomizeDirtLayers(BgConfig *bgConfig);
static void Mining_DrawDirt(BgConfig *bgConfig);
static BOOL Mining_MainGameLoop(MiningGameContext *ctx);
static void Mining_InitButtons(BgConfig *bgConfig);
static BOOL Mining_PrintNextDugUpItem(MiningGameContext *ctx);
static BOOL Mining_ProcessNextDugUpItem(MiningGameContext *ctx);
static void Mining_InitSpriteResources(void);
static void Mining_InitSprites(void);
static void Mining_InitCharPlttTransferBuffers(void);
static void Mining_VBlankCallback(void *data);
static void Mining_SendTreasureRadarResults(void);
static MiningSpot *Mining_AddNewMiningSpot(int x, int z);
static void Mining_DrawUncoveredItemShines(MiningGameContext *ctx);
static void Mining_QueueScreenShake(BgConfig *bgConfig);
static void Mining_SendNormalRadarResults(void);
static void Mining_LoadSavedMiningSpots(void);

static MiningEnv *sMiningEnv = NULL;

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

static const WindowTemplate sYesNoWindowTemplate = {
    .bgLayer = BG_LAYER_MAIN_3,
    .tilemapLeft = 25,
    .tilemapTop = 13,
    .width = YES_NO_MENU_TILE_W,
    .height = YES_NO_MENU_TILE_H,
    .palette = 13,
    .baseTile = BASE_TILE_YES_NO_MENU
};

static void Mining_InitGameState(void)
{
    int i;

    for (i = 0; i < MAX_CONNECTED_PLAYERS; i++) {
        sMiningEnv->linkTouchX[i] = TOUCHSCREEN_INPUT_NONE;
        sMiningEnv->linkTouchY[i] = TOUCHSCREEN_INPUT_NONE;
    }

    sMiningEnv->pickaxeSelected = TRUE;
    sMiningEnv->sidebarTouchState = 0;
    sMiningEnv->wallIntegrity = INITIAL_WALL_INTEGRITY;

    for (i = 0; i < MAX_BURIED_OBJECTS; i++) {
        sMiningEnv->buriedObjects[i].miningObject = NULL;
        sMiningEnv->buriedObjects[i].isDugUp = FALSE;
    }

    for (i = 0; i < MINING_GAME_WIDTH * MINING_GAME_HEIGHT; i++) {
        sMiningEnv->buriedObjectGrid[i / MINING_GAME_WIDTH][i % MINING_GAME_WIDTH] = 0;
        sMiningEnv->dirtLayers[i / MINING_GAME_WIDTH][i % MINING_GAME_WIDTH] = 2;
    }
}

void MiningEnv_Init(void *dest, FieldSystem *fieldSystem)
{
    if (sMiningEnv) {
        return;
    }

    sMiningEnv = dest;

    MI_CpuFill8(sMiningEnv, 0, sizeof(MiningEnv));
    CommSys_Seed(&sMiningEnv->rand);

    sMiningEnv->fieldSystem = fieldSystem;

    for (int i = 0; i < MAX_MINING_SPOTS; i++) {
        sMiningEnv->miningSpots[i].alwaysFF = 0xFF;
        sMiningEnv->miningSpots[i].x = 0xffff;
        sMiningEnv->miningSpots[i].z = 0xffff;
    }

    Mining_InitGameState();

    sMiningEnv->printerID = -1;
    Underground *underground = SaveData_GetUnderground(sMiningEnv->fieldSystem->saveData);

    if (Underground_ShouldSpawnNewBuriedObjects(underground)) {
        MATHRandContext16 rand;
        MATH_InitRand16(&rand, Underground_GetRandomSeed(underground));

        for (int i = 0; i < 255; i++) {
            Underground_RemoveMiningSpotAtIndex(underground, i);
        }

        for (int i = 0; i < MAX_SPAWNED_TRAPS; i++) {
            Underground_SaveSpawnedTrap(underground, TRAP_NONE, i, 0, 0);
        }

        // this may have been intended to return the actual amount of buried spheres instead of the maximum possible amount
        int maxBuriedSpheres = Spheres_SpawnMiningSpotsNearBuriedSpheres(&rand);
        int spawnIterations = 25 - (maxBuriedSpheres / 10) - 1;

        for (int i = 0; i < spawnIterations; i++) {
            Mining_SpawnMiningSpotsAndTraps(&rand, i);
        }

        Underground_FlagSpawnedNewBuriedObjects(underground);
    } else {
        Mining_LoadSavedMiningSpots();
        Traps_LoadSpawnedTraps();
    }
}

int MiningEnv_Size(void)
{
    return sizeof(MiningEnv);
}

void Mining_Dummy(void)
{
    return;
}

void Mining_Dummy2(void)
{
    return;
}

void MiningEnv_Free(void)
{
    if (sMiningEnv) {
        if (sMiningEnv->confirmStartMiningTask) {
            SysTask_Done(sMiningEnv->confirmStartMiningTask);
            sMiningEnv->confirmStartMiningTask = NULL;
            UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetCommonTextPrinter());

            if (sMiningEnv->confirmStartMiningMenu) {
                Menu_DestroyForExit(sMiningEnv->confirmStartMiningMenu, HEAP_ID_FIELD1);
            }

            CommPlayerMan_ResumeFieldSystem();
        }

        Heap_Free(sMiningEnv);
        sMiningEnv = NULL;
    }
}

BOOL Mining_CheckForMiningSpotInteract(int netID, Coordinates *coordinates)
{
    MiningSpot *miningSpot = Mining_GetMiningSpotAtCoordinates(coordinates->x, coordinates->z);
    u8 buffer = netID;

    if (miningSpot != NULL && miningSpot->alwaysFF == 0xFF) {
        if (UndergroundPlayer_BuriedObjectHeldFlagCheck(netID)) {
            return TRUE;
        }

        CommSys_SendDataServer(64, &buffer, 1);
        CommPlayerMan_SetMovementEnabled(netID, 0);

        sMiningEnv->currentUsedMiningSpots[netID] = miningSpot;
        return TRUE;
    }

    return FALSE;
}

static BOOL Mining_CanSpawnMiningSpotOnCoordinates(FieldSystem *fieldSystem, int x, int z)
{
    if (UndergroundMan_AreCoordinatesInSecretBase(x, z)) {
        return FALSE;
    }

    if (z > UNDERGROUND_MAX_Z - 1) {
        return FALSE;
    }

    if (x > UNDERGROUND_MAX_X - 1) {
        return FALSE;
    }

    if (TerrainCollisionManager_CheckCollision(fieldSystem, x, z)) {
        if (!TerrainCollisionManager_CheckCollision(fieldSystem, x, z + 1)) {
            return TRUE;
        }

        if (!TerrainCollisionManager_CheckCollision(fieldSystem, x, z - 1)) {
            return TRUE;
        }

        if (!TerrainCollisionManager_CheckCollision(fieldSystem, x + 1, z)) {
            return TRUE;
        }

        if (!TerrainCollisionManager_CheckCollision(fieldSystem, x - 1, z)) {
            return TRUE;
        }
    }

    return FALSE;
}

static void Mining_SpawnMiningSpotsAndTraps(MATHRandContext16 *rand, int unused)
{
    int spawnCount;
    int i, j;
    BOOL canSpawn;
    u16 centerX, x;
    u16 centerZ, z;
    Underground *underground = SaveData_GetUnderground(sMiningEnv->fieldSystem->saveData);

    u16 xRange = (MapMatrix_GetWidth(sMiningEnv->fieldSystem->mapMatrix) - 2) * MAP_TILES_COUNT_X;
    u16 zRange = (MapMatrix_GetHeight(sMiningEnv->fieldSystem->mapMatrix) - 2) * MAP_TILES_COUNT_Z;

    do {
        centerX = MATH_Rand16(rand, xRange) + UNDERGROUND_MAIN_AREA_START_X;
        centerZ = MATH_Rand16(rand, zRange) + UNDERGROUND_MAIN_AREA_START_Z;
    } while (!Mining_CanSpawnMiningSpotOnCoordinates(sMiningEnv->fieldSystem, centerX, centerZ));

    spawnCount = MATH_Rand16(rand, 6) + 6;

    for (i = 0; i < spawnCount; i++) {
        canSpawn = FALSE;

        for (j = 0; j < 100; j++) {
            x = MATH_Rand16(rand, 20) + centerX - 10;
            z = MATH_Rand16(rand, 20) + centerZ - 10;

            if (Mining_CanSpawnMiningSpotOnCoordinates(sMiningEnv->fieldSystem, x, z)) {
                canSpawn = TRUE;
                break;
            }
        }

        if (canSpawn) {
            MiningSpot *miningSpot = Mining_FindEmptyMiningSpotSlot();

            if (miningSpot == NULL) {
                break;
            }

            miningSpot = Mining_AddNewMiningSpot(x, z);
            miningSpot->saveDataIndex = Underground_TryAddMiningSpot(underground, x, z);
        }
    }

    spawnCount = MATH_Rand16(rand, 6);

    for (i = 0; i < spawnCount; i++) {
        for (j = 0; j < 100; j++) {
            x = MATH_Rand16(rand, 20) + centerX - 10;
            z = MATH_Rand16(rand, 20) + centerZ - 10;

            if (!TerrainCollisionManager_CheckCollision(sMiningEnv->fieldSystem, x, z)) {
                enum Trap trapID = Traps_SpawnRandomTrap(x, z, rand, sMiningEnv->spawnedTrapIndex);

                if (trapID != TRAP_NONE) {
                    sMiningEnv->spawnedTrapIndex++;
                    break;
                }
            }
        }
    }
}

void Mining_SpawnMiningSpotNearBuriedSphere(int buriedSphereX, int buriedSphereZ, MATHRandContext16 *rand)
{
    BOOL canSpawn;
    u16 x, z;
    Underground *underground = SaveData_GetUnderground(sMiningEnv->fieldSystem->saveData);

    canSpawn = FALSE;

    for (int i = 0; i < 100; i++) {
        x = MATH_Rand16(rand, 20) + buriedSphereX - 10;
        z = MATH_Rand16(rand, 20) + buriedSphereZ - 10;

        if (Mining_CanSpawnMiningSpotOnCoordinates(sMiningEnv->fieldSystem, x, z)) {
            canSpawn = TRUE;
            break;
        }
    }

    if (canSpawn) {
        MiningSpot *miningSpot = Mining_FindEmptyMiningSpotSlot();

        if (miningSpot) {
            miningSpot = Mining_AddNewMiningSpot(x, z);
            miningSpot->saveDataIndex = Underground_TryAddMiningSpot(underground, x, z);
        }
    }
}

static MiningSpot *Mining_FindEmptyMiningSpotSlot(void)
{
    for (int i = 0; i < MAX_MINING_SPOTS; i++) {
        if (sMiningEnv->miningSpots[i].x == 0xffff && sMiningEnv->miningSpots[i].z == 0xffff) {
            return &sMiningEnv->miningSpots[i];
        }
    }

    return NULL;
}

static MiningSpot *Mining_AddNewMiningSpot(int x, int z)
{
    int index = -1;
    int i;
    int newOrderedValue = z * MAP_MATRIX_MAX_WIDTH * MAP_TILES_COUNT_X + x;

    for (i = 0; i < MAX_MINING_SPOTS; i++) {
        if (sMiningEnv->miningSpots[i].x != 0xffff && sMiningEnv->miningSpots[i].z != 0xffff) {
            int orderedValue = sMiningEnv->miningSpots[i].z * MAP_MATRIX_MAX_WIDTH * MAP_TILES_COUNT_X + sMiningEnv->miningSpots[i].x;

            if (newOrderedValue < orderedValue) {
                index = i;
                break;
            }
        } else {
            sMiningEnv->miningSpots[i].x = x;
            sMiningEnv->miningSpots[i].z = z;
            return &sMiningEnv->miningSpots[i];
        }
    }

    if (index != -1) {
        for (i = MAX_MINING_SPOTS - 2; i >= index; i--) {
            sMiningEnv->miningSpots[i + 1].x = sMiningEnv->miningSpots[i].x;
            sMiningEnv->miningSpots[i + 1].z = sMiningEnv->miningSpots[i].z;
            sMiningEnv->miningSpots[i + 1].saveDataIndex = sMiningEnv->miningSpots[i].saveDataIndex;
        }

        sMiningEnv->miningSpots[index].x = x;
        sMiningEnv->miningSpots[index].z = z;
    }

    return &sMiningEnv->miningSpots[index];
}

static void Mining_LoadSavedMiningSpots(void)
{
    Underground *underground = SaveData_GetUnderground(sMiningEnv->fieldSystem->saveData);

    for (int i = 0; i < 255; i++) {
        int x = Underground_GetMiningSpotXCoordAtIndex(underground, i);
        int z = Underground_GetMiningSpotZCoordAtIndex(underground, i);

        if (x != 0 && z != 0) {
            MiningSpot *miningSpot = Mining_AddNewMiningSpot(x, z);
            miningSpot->saveDataIndex = i;
        }
    }
}

void Mining_SendRadarResults(void)
{
    if (CommSys_CurNetId() == 0) {
        Mining_SendNormalRadarResults();
        Mining_SendTreasureRadarResults();
    }
}

static MiningSpot *Mining_GetMiningSpotAtCoordinates(u16 x, u16 z)
{
    for (int i = 0; i < MAX_MINING_SPOTS; i++) {
        if (sMiningEnv->miningSpots[i].x == x && sMiningEnv->miningSpots[i].z == z) {
            return &sMiningEnv->miningSpots[i];
        }
    }

    return NULL;
}

static int Mining_GetRandomNearbyMiningSpotIndex(u16 x, u16 z)
{
    int i;
    int minZ = z - 80, maxZ = z + 80, minX = x - 80, maxX = x + 80;
    int spotsInRange = 0;

    if (UndergroundMan_AreCoordinatesInSecretBase(x, z)) {
        return -1;
    }

    // bug: won't count spots along the west edge of the map
    if (minX < UNDERGROUND_MAIN_AREA_START_Z) {
        minX = UNDERGROUND_MAIN_AREA_START_Z;
    }

    if (maxX > UNDERGROUND_MAX_X + 33) { // ?
        maxX = UNDERGROUND_MAX_X + 33;
    }

    // also wrong but has no impact on gameplay
    if (minZ < UNDERGROUND_MAIN_AREA_START_X) {
        minZ = UNDERGROUND_MAIN_AREA_START_X;
    }

    if (maxZ > UNDERGROUND_MAX_Z + 1) {
        maxZ = UNDERGROUND_MAX_Z + 1;
    }

    for (i = 0; i < MAX_MINING_SPOTS; i++) {
        if (sMiningEnv->miningSpots[i].z < minZ || sMiningEnv->miningSpots[i].z > maxZ) {
            continue;
        }

        if (sMiningEnv->miningSpots[i].x > minX && sMiningEnv->miningSpots[i].x < maxX) {
            spotsInRange++;
        }
    }

    if (spotsInRange == 0) {
        return -1;
    }

    int randNum = LCRNG_Next() % spotsInRange;
    spotsInRange = 0;

    for (i = 0; i < MAX_MINING_SPOTS; i++) {
        if (sMiningEnv->miningSpots[i].z < minZ || sMiningEnv->miningSpots[i].z > maxZ) {
            continue;
        }

        if (sMiningEnv->miningSpots[i].x > minX && sMiningEnv->miningSpots[i].x < maxX) {
            if (spotsInRange == randNum) {
                return i;
            }

            spotsInRange++;
        }
    }

    return -1;
}

static void Mining_ForceEndConfirmStartMiningTask(SysTask *sysTask, void *data)
{
    if (sMiningEnv->confirmStartMiningMenu) {
        Menu_DestroyForExit(sMiningEnv->confirmStartMiningMenu, HEAP_ID_FIELD1);
    }

    sMiningEnv->confirmStartMiningMenu = NULL;
    sMiningEnv->confirmStartMiningTask = NULL;

    SysTask_Done(sysTask);
}

void Mining_ProcessMiningSpotInteract(int unused0, int unused1, void *data, void *unused3)
{
    u8 *netID = data;

    if (*netID == CommSys_CurNetId() && CommSys_IsSendingMovementData()) {
        sMiningEnv->printerID = UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_WallIsBulging, FALSE, NULL);
        sMiningEnv->confirmStartMiningTask = SysTask_Start(Mining_ConfirmStartMiningTask, sMiningEnv, 0);

        UndergroundMan_SetCurrentSysTask(NULL, sMiningEnv->confirmStartMiningTask, Mining_ForceEndConfirmStartMiningTask);
        CommPlayerMan_PauseFieldSystem();
    }
}

static void Mining_ConfirmStartMiningTask(SysTask *sysTask, void *unused)
{
    if (sMiningEnv->printerID != -1) {
        if (!Text_IsPrinterActive(sMiningEnv->printerID)) {
            sMiningEnv->confirmStartMiningMenu = Menu_MakeYesNoChoice(sMiningEnv->fieldSystem->bgConfig, &sYesNoWindowTemplate, BASE_TILE_STANDARD_WINDOW_FRAME, 11, HEAP_ID_FIELD1);
            sMiningEnv->printerID = -1;
        }
    } else {
        int input = Menu_ProcessInputAndHandleExit(sMiningEnv->confirmStartMiningMenu, HEAP_ID_FIELD1);

        u8 confirmResult;
        if (input == MENU_NOTHING_CHOSEN) {
            return;
        } else if (input == 0) {
            confirmResult = TRUE;
        } else {
            confirmResult = FALSE;
            CommPlayerMan_ResumeFieldSystem();
        }

        CommSys_SendDataFixedSize(65, &confirmResult);
        sMiningEnv->confirmStartMiningMenu = NULL;

        UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetCommonTextPrinter());
        SysTask_Done(sysTask);
        UndergroundMan_ClearCurrentSysTaskInfo();

        sMiningEnv->confirmStartMiningTask = NULL;
    }
}

void Mining_ProcessConfirmStartMiningResult(int netID, int unused1, void *data, void *unused3)
{
    Underground *underground = SaveData_GetUnderground(sMiningEnv->fieldSystem->saveData);
    MiningSpot *miningSpot = sMiningEnv->currentUsedMiningSpots[netID];
    u8 buffer = netID;
    u8 *confirmResult = data;

    if (*confirmResult && miningSpot) {
        if (miningSpot->alwaysFF == 0xFF) {
            CommSys_SendDataServer(66, &buffer, 1);

            miningSpot->alwaysFF = 0xFF;
            miningSpot->x = 0xffff;
            miningSpot->z = 0xffff;

            Underground_RemoveMiningSpotAtIndex(underground, miningSpot->saveDataIndex);

            sMiningEnv->isPlayerMining[netID] = TRUE;
            sMiningEnv->currentUsedMiningSpots[netID] = NULL;
        }
    } else {
        sMiningEnv->isPlayerMining[netID] = FALSE;
        sMiningEnv->currentUsedMiningSpots[netID] = NULL;
    }
}

void Mining_ProcessStartMiningConfirm(int unused0, int unused1, void *data, void *unused3)
{
    u8 *netID = data;

    if (*netID == CommSys_CurNetId()) {
        CommPlayerMan_PauseFieldSystem();
        Mining_StartGameTask(sMiningEnv->fieldSystem);
    }

    sMiningEnv->miningMessagesQueued[*netID] = TRUE;
}

void Mining_ProcessMiningGameEnd(int netID, int unused1, void *unused2, void *unused3)
{
    sMiningEnv->isPlayerMining[netID] = FALSE;
    sMiningEnv->normalRadarTimer[netID] = 0;
}

void Mining_ProcessLinkInput(int netID, int unused1, void *data, void *unused3)
{
    MiningLinkInput *linkInput = data;
    MiningLinkInputWithNetID linkInputWithNetID;

    linkInputWithNetID.netID = netID;
    linkInputWithNetID.touchX = linkInput->touchX;
    linkInputWithNetID.touchY = linkInput->touchY;

    CommSys_SendDataFixedSizeServer(69, &linkInputWithNetID);
}

int CommPacketSizeOf_MiningLinkInput(void)
{
    return sizeof(MiningLinkInput);
}

void Mining_ProcessLinkInputServer(int unused0, int unused1, void *data, void *unused3)
{
    MiningLinkInputWithNetID *linkInput = data;

    if (linkInput->netID == CommSys_CurNetId()) {
        return;
    }

    sMiningEnv->linkTouchX[linkInput->netID] = linkInput->touchX;
    sMiningEnv->linkTouchY[linkInput->netID] = linkInput->touchY;
}

int CommPacketSizeOf_MiningLinkInputWithNetID(void)
{
    return sizeof(MiningLinkInputWithNetID);
}

static void Mining_InitBackgrounds(BgConfig *bgConfig)
{
    GXBanks banks = {
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

    GXLayers_SetBanks(&banks);

    GraphicsModes graphicsModes = {
        .displayMode = GX_DISPMODE_GRAPHICS,
        .mainBgMode = GX_BGMODE_0,
        .subBgMode = GX_BGMODE_0,
        .bg0As2DOr3D = GX_BG0_AS_2D
    };

    SetAllGraphicsModes(&graphicsModes);

    BgTemplate main0Template = {
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_0, &main0Template, BG_TYPE_STATIC);
    Bg_ClearTilesRange(BG_LAYER_MAIN_0, TILE_SIZE_4BPP, 0, HEAP_ID_MINING);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_0);

    BgTemplate main1Template = {
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &main1Template, BG_TYPE_STATIC);
    Bg_ClearTilesRange(BG_LAYER_MAIN_1, TILE_SIZE_4BPP, 0, HEAP_ID_MINING);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);

    BgTemplate main2Template = {
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &main2Template, BG_TYPE_STATIC);
    Bg_ClearTilesRange(BG_LAYER_MAIN_2, TILE_SIZE_4BPP, 0, HEAP_ID_MINING);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);

    BgTemplate main3Template = {
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_3, &main3Template, BG_TYPE_STATIC);
    Bg_ClearTilesRange(BG_LAYER_MAIN_3, TILE_SIZE_4BPP, 0, HEAP_ID_MINING);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_3);

    Bg_ClearTilesRange(BG_LAYER_SUB_0, TILE_SIZE_4BPP, 0, HEAP_ID_MINING);
    Bg_ClearTilesRange(BG_LAYER_MAIN_0, TILE_SIZE_4BPP, 0, HEAP_ID_MINING);
}

static void Mining_PlayHitAnimationsAndSoundEffects(int x, int y, BOOL pickaxeSelected, BOOL hitRock, BOOL foundItem)
{
    VecFx32 position;

    if (pickaxeSelected) {
        Sprite_SetAnim(sMiningEnv->sprites[MINING_SPRITE_TOOL], MINING_ANIM_PICKAXE_SWING);
    } else {
        Sprite_SetAnim(sMiningEnv->sprites[MINING_SPRITE_TOOL], MINING_ANIM_HAMMER_SWING);
    }

    if (hitRock) {
        Sprite_SetAnim(sMiningEnv->sprites[MINING_SPRITE_IMPACT], MINING_ANIM_HIT_ROCK_IMPACT);
        Sound_PlayEffect(SEQ_SE_DP_UG_004);
    } else if (pickaxeSelected) {
        Sprite_SetAnim(sMiningEnv->sprites[MINING_SPRITE_IMPACT], MINING_ANIM_PICKAXE_IMPACT);
        Sound_PlayEffect(SEQ_SE_DP_UG_002);
    } else {
        Sprite_SetAnim(sMiningEnv->sprites[MINING_SPRITE_IMPACT], MINING_ANIM_HAMMER_IMPACT);
        Sound_PlayEffect(SEQ_SE_DP_UG_003);
    }

    Sprite_SetAnimateFlag(sMiningEnv->sprites[MINING_SPRITE_TOOL], TRUE);
    Sprite_SetAnimateFlag(sMiningEnv->sprites[MINING_SPRITE_IMPACT], TRUE);

    position.x = FX32_ONE * (x + 8);
    position.y = FX32_ONE * (y + 8);

    Sprite_SetPosition(sMiningEnv->sprites[MINING_SPRITE_TOOL], &position);
    Sprite_SetPosition(sMiningEnv->sprites[MINING_SPRITE_IMPACT], &position);

    if (foundItem) {
        Sprite_SetAnim(sMiningEnv->sprites[MINING_SPRITE_ITEM_HIT_SPARKLE], MINING_ANIM_ITEM_HIT_SPARKLE);
        Sprite_SetAnimateFlag(sMiningEnv->sprites[MINING_SPRITE_ITEM_HIT_SPARKLE], TRUE);
        Sprite_SetPosition(sMiningEnv->sprites[MINING_SPRITE_ITEM_HIT_SPARKLE], &position);
    }
}

static void Mining_InitGame(MiningGameContext *ctx)
{
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_58, SEQ_NONE, 0);
    Mining_InitGameState();

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, FALSE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, FALSE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, FALSE);
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_MINING, HEAP_SIZE_MINING);

    BgConfig *bgConfig = BgConfig_New(HEAP_ID_MINING);
    sMiningEnv->bgConfig = bgConfig;

    SetVBlankCallback(Mining_VBlankCallback, bgConfig);

    UndergroundTextPrinter_SetBackground(UndergroundMan_GetCommonTextPrinter(), bgConfig, MINING_BASE_TILE_SCROLLING_MESSAGE_BOX, MINING_BASE_TILE_MESSAGE_WINDOW);
    Mining_InitBackgrounds(bgConfig);

    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);
    LoadMessageBoxGraphics(bgConfig, BG_LAYER_MAIN_3, MINING_BASE_TILE_SCROLLING_MESSAGE_BOX, 10, 0, HEAP_ID_MINING);

    NARC *narc = NARC_ctor(NARC_INDEX_DATA__UG_FOSSIL, HEAP_ID_MINING);
    Graphics_LoadPaletteFromOpenNARC(narc, interface_tiles_NCLR, PAL_LOAD_MAIN_BG, 0, PALETTE_SIZE_BYTES * 3, HEAP_ID_MINING);

    int size = Graphics_LoadTilesToBgLayerFromOpenNARC(narc, interface_tiles_NCGR, bgConfig, BG_LAYER_MAIN_0, 0, 0, FALSE, HEAP_ID_MINING);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, interface_NSCR, bgConfig, BG_LAYER_MAIN_0, 0, 0, FALSE, HEAP_ID_MINING);
    NARC_dtor(narc);

    Graphics_LoadPalette(NARC_INDEX_DATA__UG_TRAP, text_window_NCLR, PAL_LOAD_MAIN_BG, PLTT_OFFSET(10), PALETTE_SIZE_BYTES * 4, HEAP_ID_MINING);
    Mining_GenerateGameLayout(bgConfig, size, ctx);
}

static void Mining_InitGraphics(void)
{
    Mining_InitButtons(sMiningEnv->bgConfig);
    Bg_CopyTilemapBufferToVRAM(sMiningEnv->bgConfig, BG_LAYER_MAIN_1);

    Mining_RandomizeDirtLayers(sMiningEnv->bgConfig);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_DATA__UG_PARTS, dirt_tiles_NCGR, sMiningEnv->bgConfig, BG_LAYER_MAIN_2, DIRT_TILES_OFFSET, 0, FALSE, HEAP_ID_MINING);

    Mining_DrawDirt(sMiningEnv->bgConfig);

    Bg_SetPriority(BG_LAYER_MAIN_0, 3);
    Bg_SetPriority(BG_LAYER_MAIN_1, 2);
    Bg_SetPriority(BG_LAYER_MAIN_2, 1);
    Bg_SetPriority(BG_LAYER_MAIN_3, 0);

    Mining_InitSpriteResources();
    Mining_InitSprites();
    Mining_DrawWallCrack(sMiningEnv->bgConfig);
}

static void Mining_FreeGameResources(MiningGameContext *ctx)
{
    Bg_FreeTilemapBuffer(sMiningEnv->bgConfig, BG_LAYER_MAIN_0);
    Bg_FreeTilemapBuffer(sMiningEnv->bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(sMiningEnv->bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(sMiningEnv->bgConfig, BG_LAYER_MAIN_3);
    SpriteTransfer_ResetCharTransfer(sMiningEnv->spriteResources[SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_ResetCharTransfer(sMiningEnv->spriteResources[SPRITE_RESOURCE_CHAR + MAX_SPRITE_RESOURCE_GEN4]);
    SpriteTransfer_ResetPlttTransfer(sMiningEnv->spriteResources[SPRITE_RESOURCE_PLTT]);
    SpriteTransfer_ResetPlttTransfer(sMiningEnv->spriteResources[SPRITE_RESOURCE_PLTT + MAX_SPRITE_RESOURCE_GEN4]);

    for (int resourceType = SPRITE_RESOURCE_CHAR; resourceType < MAX_SPRITE_RESOURCE_GEN4; resourceType++) {
        SpriteResourceCollection_Delete(sMiningEnv->spriteResourceCollection[resourceType]);
    }

    for (int i = 0; i < MAX_BURIED_ITEMS; i++) {
        if (ctx->nclrBuffers[i] != NULL) {
            Heap_Free(ctx->nclrBuffers[i]);
            ctx->nclrBuffers[i] = NULL;
        }
    }

    SpriteList_Delete(sMiningEnv->spriteList);
    RenderOam_Free();

    CharTransfer_Free();
    PlttTransfer_Free();

    SetVBlankCallback(NULL, NULL);
    Heap_Free(sMiningEnv->bgConfig);

    sMiningEnv->bgConfig = NULL;

    Heap_Destroy(HEAP_ID_MINING);
    UndergroundTextPrinter_SetBackground(UndergroundMan_GetCommonTextPrinter(), sMiningEnv->fieldSystem->bgConfig, BASE_TILE_SCROLLING_MESSAGE_BOX, UG_TEXT_BASE_TILE_MESSAGE_WINDOW);
}

static void Mining_GameTask(SysTask *sysTask, void *data)
{
    MiningGameContext *ctx = data;
    FieldSystem *fieldSystem = ctx->fieldSystem;

    switch (ctx->state) {
    case MINING_STATE_INIT:
        SecretBases_SetEntranceGraphicsEnabled(FALSE);
        Spheres_DisableBuriedSphereSparkles();
        CommPlayerMan_Disable();
        SecretBases_DisableBaseEntranceGraphics();
        ctx->state++;
        break;
    case MINING_STATE_FADE_OUT_START:
        UndergroundTopScreen_EndTask(fieldSystem->ugTopScreenCtx);
        StartScreenFade(FADE_SUB_THEN_MAIN, FADE_TYPE_CIRCLE_OUT, FADE_TYPE_TOP_HALF_CIRCLE_OUT, COLOR_BLACK, 6, 1, HEAP_ID_FIELD1);
        ctx->state++;
        break;
    case MINING_STATE_WAIT_FOR_FADE_OUT_START:
        if (IsScreenFadeDone()) {
            if (fieldSystem->ugTopScreenCtx == NULL) {
                FieldSystem_FlagNotRunningFieldMap(fieldSystem);
                ctx->state++;
            }
        }
        break;
    case MINING_STATE_DESTROY_NETWORK_ICON:
        if (!FieldSystem_HasParentProcess(fieldSystem)) {
            NetworkIcon_Destroy();
            ctx->state++;
        }
        break;
    case MINING_STATE_INIT_GAME:
        Mining_InitGame(ctx);
        ctx->state++;
        break;
    case MINING_STATE_INIT_GRAPHICS:
        Mining_InitGraphics();
        ctx->state++;
        break;
    case MINING_STATE_FADE_IN_START:
        sub_02039734();
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_CIRCLE_IN, FADE_TYPE_CIRCLE_IN, COLOR_BLACK, 6, 1, HEAP_ID_MINING);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, TRUE);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, TRUE);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, TRUE);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, TRUE);
        ctx->state++;
        break;
    case MINING_STATE_WAIT_FOR_FADE_IN_START:
        if (IsScreenFadeDone()) {
            ctx->timer = 0;
            Sound_PlayEffect(SEQ_SE_PL_UG_006);
            ctx->state = MINING_STATE_WAIT;
        }
        break;
    case MINING_STATE_WAIT:
        ctx->timer++;

        if (ctx->timer > 20) {
            ctx->state = MINING_STATE_PRINT_MESSAGE;
        }
        break;
    case MINING_STATE_PRINT_MESSAGE:
        UndergroundTextPrinter_SetSingleDigitNumber(UndergroundMan_GetCommonTextPrinter(), 0, ctx->itemCount);
        sMiningEnv->printerID = UndergroundTextPrinter_PrintTextInstant(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_SomethingPingedInWall, FALSE, NULL);
        ctx->timer = 0;
        ctx->state++;
        break;
    case MINING_STATE_WAIT_2:
        ctx->timer++;

        if (ctx->timer > 80) {
            Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(sMiningEnv->fieldSystem));

            UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetCommonTextPrinter());

            if (Underground_HasPlayerNeverMined(underground)) {
                ctx->state++;
            } else {
                ctx->state = MINING_STATE_MAIN;
            }
        }
        break;
    case MINING_STATE_PRINT_TUTORIAL:
        sMiningEnv->printerID = UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_MiningTutorial, FALSE, NULL);
        ctx->timer = 0;
        ctx->state++;
        break;
    case MINING_STATE_WAIT_FOR_TUTORIAL:
        if (!Text_IsPrinterActive(sMiningEnv->printerID)) {
            if (gSystem.touchPressed || JOY_NEW(PAD_BUTTON_A)) {
                UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetCommonTextPrinter());
                ctx->state++;
            }
        }
        break;
    case MINING_STATE_MAIN:
        Mining_MainGameLoop(ctx);
        Mining_QueueScreenShake(sMiningEnv->bgConfig);
        Mining_DrawUncoveredItemShines(ctx);
        SpriteList_Update(sMiningEnv->spriteList);
        break;
    case MINING_STATE_EVERYTHING_DUG:
        Mining_DrawUncoveredItemShines(ctx);
        SpriteList_Update(sMiningEnv->spriteList);

        ctx->timer--;

        if (ctx->timer == 0) {
            sMiningEnv->printerID = UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_EverythingDugUp, FALSE, NULL);
            Sound_PlayEffect(SEQ_SE_DP_PIRORIRO2);
            ctx->textTimer = 60;
            ctx->state = MINING_STATE_WAIT_FOR_TEXT;
        }
        break;
    case MINING_STATE_WAIT_FOR_TEXT:
        SpriteList_Update(sMiningEnv->spriteList);

        if (!Text_IsPrinterActive(sMiningEnv->printerID)) {
            ctx->textTimer--;

            if (gSystem.touchPressed || JOY_NEW(PAD_BUTTON_A) || ctx->textTimer == 0) {
                UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetCommonTextPrinter());
                ctx->state = MINING_STATE_PRINT_DUG_UP_ITEM;
            }
        }
        break;
    case MINING_STATE_PRINT_DUG_UP_ITEM:
        SpriteList_Update(sMiningEnv->spriteList);

        if (Mining_PrintNextDugUpItem(ctx)) {
            ctx->state = MINING_STATE_PROCESS_DUG_UP_ITEM;
            ctx->textTimer = 60;
        } else {
            ctx->state = MINING_STATE_FADE_OUT_END;
        }
        break;
    case MINING_STATE_PROCESS_DUG_UP_ITEM:
        SpriteList_Update(sMiningEnv->spriteList);

        if (!Text_IsPrinterActive(sMiningEnv->printerID)) {
            ctx->textTimer--;

            if (gSystem.touchPressed || JOY_NEW(PAD_BUTTON_A) || ctx->textTimer == 0) {
                if (Mining_ProcessNextDugUpItem(ctx)) {
                    ctx->textTimer = 60;
                    ctx->state = MINING_STATE_WAIT_FOR_TEXT;
                } else {
                    ctx->state = MINING_STATE_PRINT_DUG_UP_ITEM;
                }
            }
        }
        break;
    case MINING_STATE_FADE_OUT_END:
        SpriteList_Update(sMiningEnv->spriteList);
        UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetCommonTextPrinter());
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_CIRCLE_OUT, FADE_TYPE_CIRCLE_OUT, COLOR_BLACK, 6, 1, HEAP_ID_MINING);
        ctx->state++;
        break;
    case MINING_STATE_FREE:
        SpriteList_Update(sMiningEnv->spriteList);

        if (IsScreenFadeDone()) {
            NetworkIcon_Destroy();
            Mining_FreeGameResources(ctx);
            FieldSystem_StartFieldMap(fieldSystem);
            ctx->state++;
        }
        break;
    case MINING_STATE_FADE_IN_END:
        if (FieldSystem_IsRunningFieldMap(fieldSystem)) {
            fieldSystem->ugTopScreenCtx = UndergroundTopScreen_StartTask(fieldSystem);
            sub_02039734();
            CommPlayerMan_PauseFieldSystem();
            HBlankSystem_Stop(ctx->fieldSystem->unk_04->hBlankSystem);
            StartScreenFade(FADE_MAIN_THEN_SUB, FADE_TYPE_CIRCLE_IN, FADE_TYPE_TOP_HALF_CIRCLE_IN, COLOR_BLACK, 6, 1, HEAP_ID_FIELD1);
            ctx->state++;
            break;
        }
        break;
    case MINING_STATE_END:
        ResetScreenMasterBrightness(DS_SCREEN_MAIN);

        if (IsScreenFadeDone()) {
            HBlankSystem_Stop(ctx->fieldSystem->unk_04->hBlankSystem);
            HBlankSystem_Start(ctx->fieldSystem->unk_04->hBlankSystem);

            Graphics_LoadPalette(NARC_INDEX_DATA__UG_TRAP, text_window_NCLR, PAL_LOAD_MAIN_BG, PLTT_OFFSET(10), PALETTE_SIZE_BYTES * 4, HEAP_ID_FIELD1);
            LoadStandardWindowGraphics(ctx->fieldSystem->bgConfig, BG_LAYER_MAIN_3, BASE_TILE_STANDARD_WINDOW_FRAME, 11, STANDARD_WINDOW_UNDERGROUND, HEAP_ID_FIELD1);
            CommPlayerMan_Restart();

            SecretBases_EnableBaseEntranceGraphics();
            Spheres_EnableBuriedSphereSparkles();

            CommSys_SendDataFixedSize(67, &ctx->dugUpAllItems);
            CommPlayerMan_ResumeFieldSystem();

            sMiningEnv->miningGameTask = NULL;

            Heap_Free(ctx);
            SysTask_Done(sysTask);

            SecretBases_SetEntranceGraphicsEnabled(TRUE);
        }
        break;
    case MINING_STATE_COLLAPSE_SHAKE:
        sMiningEnv->shakeTimer = 1;
        ctx->timer--;

        if (ctx->timer == 0) {
            sMiningEnv->shakeTimer = 100;
            ctx->state = MINING_STATE_COLLAPSE_FADE_OUT;
        }

        Mining_QueueScreenShake(sMiningEnv->bgConfig);
        SpriteList_Update(sMiningEnv->spriteList);
        break;
    case MINING_STATE_COLLAPSE_FADE_OUT:
        SpriteList_Update(sMiningEnv->spriteList);
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_DOWNWARD_OUT, FADE_TYPE_DOWNWARD_OUT, COLOR_BLACK, 15, 1, HEAP_ID_MINING);
        Sound_PlayEffect(SEQ_SE_DP_UG_001);
        ctx->state = MINING_STATE_COLLAPSE_WAIT_FOR_FADE;
        break;
    case MINING_STATE_COLLAPSE_WAIT_FOR_FADE:
        if (IsScreenFadeDone()) {
            for (int i = 0; i < MINING_SPRITE_COUNT; i++) {
                Sprite_SetDrawFlag(sMiningEnv->sprites[i], FALSE);
            }

            ctx->state = MINING_STATE_CHANGE_BRIGHTNESS;
        } else {
            SpriteList_Update(sMiningEnv->spriteList);
        }

        break;
    case MINING_STATE_CHANGE_BRIGHTNESS:
        BrightnessController_StartTransition(1, -16, -16, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2, BRIGHTNESS_MAIN_SCREEN);
        ctx->state = MINING_STATE_PRINT_COLLAPSE_MESSAGE;
        break;
    case MINING_STATE_PRINT_COLLAPSE_MESSAGE:
        ResetVisibleHardwareWindows(DS_SCREEN_MAIN);
        ResetScreenMasterBrightness(DS_SCREEN_MAIN);
        sMiningEnv->printerID = UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_WallCollapsed, FALSE, NULL);
        ctx->textTimer = 60;
        ctx->state = MINING_STATE_WAIT_FOR_TEXT;
        break;
    case MINING_STATE_UNUSED_27:
        if (!Text_IsPrinterActive(sMiningEnv->printerID)) {
            ctx->textTimer--;

            if (gSystem.touchPressed || JOY_NEW(PAD_BUTTON_A) || ctx->textTimer == 0) {
                UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetCommonTextPrinter());
                ctx->state = MINING_STATE_FREE;
            }
        }
        break;
    }
}

static void Mining_StartGameTask(FieldSystem *fieldSystem)
{
    void *journalEntryLocationEvent = JournalEntry_CreateEventDugUnderground(HEAP_ID_FIELD2);

    JournalEntry_SaveData(fieldSystem->journalEntry, journalEntryLocationEvent, JOURNAL_LOCATION);
    MiningGameContext *ctx = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(MiningGameContext));

    MI_CpuFill8(ctx, 0, sizeof(MiningGameContext));
    ctx->fieldSystem = fieldSystem;

    HBlankSystem_Stop(fieldSystem->unk_04->hBlankSystem);
    SystemFlag_SetDiggingForFossils(SaveData_GetVarsFlags(fieldSystem->saveData));

    sMiningEnv->miningGameTask = SysTask_Start(Mining_GameTask, ctx, 100);
}

static BOOL Mining_IsBuriedObjectSlotAvailable(void)
{
    for (int i = 0; i < MAX_BURIED_OBJECTS; i++) {
        if (sMiningEnv->buriedObjects[i].miningObject == NULL) {
            return TRUE;
        }
    }

    return FALSE;
}

static int Mining_AddBuriedObject(int index, int x, int y)
{
    for (int i = 0; i < MAX_BURIED_OBJECTS; i++) {
        if (sMiningEnv->buriedObjects[i].miningObject == NULL) {
            sMiningEnv->buriedObjects[i].miningObject = &sMiningObjects[index];
            sMiningEnv->buriedObjects[i].itemID = sMiningObjects[index].itemID;
            sMiningEnv->buriedObjects[i].x = x;
            sMiningEnv->buriedObjects[i].y = y;
            sMiningEnv->buriedObjects[i].isDugUp = FALSE;

            return i + 1;
        }
    }

    GF_ASSERT(FALSE);
    return 0;
}

static BOOL Mining_AreCoordinatesWithinObjectShape(MiningObject *object, int x, int y)
{
    u8 *shape = object->shape;
    int column, row, entriesPerRow;

    if (shape == NULL) {
        return TRUE;
    }

    row = y / 2;
    column = x / 2;
    entriesPerRow = object->width / 2;

    if (shape[row * entriesPerRow + column] == 'o') {
        return FALSE;
    }

    return TRUE;
}

static BOOL Mining_TryPlaceObject(int index, int x, int y)
{
    int i, j;

    if (!Mining_IsBuriedObjectSlotAvailable()) {
        return FALSE;
    }

    int endX = sMiningObjects[index].width / 2 + x;
    int endY = sMiningObjects[index].height / 2 + y;

    if (endX > MINING_GAME_WIDTH) {
        return FALSE;
    }

    if (endY > MINING_GAME_HEIGHT) {
        return FALSE;
    }

    for (i = x; i < endX; i++) {
        for (j = y; j < endY; j++) {
            if (Mining_AreCoordinatesWithinObjectShape(&sMiningObjects[index], (i - x) * 2, (j - y) * 2)) {
                if (sMiningEnv->buriedObjectGrid[j][i] != 0) {
                    return FALSE;
                }
            }
        }
    }

    int buriedIndex = Mining_AddBuriedObject(index, x, y);

    for (i = x; i < endX; i++) {
        for (j = y; j < endY; j++) {
            if (Mining_AreCoordinatesWithinObjectShape(&sMiningObjects[index], (i - x) * 2, (j - y) * 2)) {
                sMiningEnv->buriedObjectGrid[j][i] = buriedIndex;
            }
        }
    }

    return TRUE;
}

static int Mining_GetWeightOfItem(MiningObject *item)
{
    SaveData *saveData = FieldSystem_GetSaveData(sMiningEnv->fieldSystem);
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
    int totalWeight = 0;

    for (int i = 0; i < NELEMS(sMiningObjects); i++) {
        if (sMiningObjects[i].itemID == MINING_TREASURE_MAX) {
            break;
        }

        totalWeight += Mining_GetWeightOfItem(&sMiningObjects[i]);
    }

    return totalWeight;
}

static int Mining_PickItem(int randNum)
{
    int counter = randNum;

    for (int i = 0; i < NELEMS(sMiningObjects); i++) {
        if (sMiningObjects[i].itemID == MINING_TREASURE_MAX) {
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
    int total = 0;

    for (int i = 0; i < NELEMS(sMiningObjects); i++) {
        if (sMiningObjects[i].itemID >= MINING_ROCK_1) {
            total++;
        }
    }

    return total;
}

static void Mining_GenerateGameLayout(BgConfig *bgConfig, int unused, MiningGameContext *ctx)
{
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(sMiningEnv->fieldSystem));
    int objectsPlaced;
    int totalWeight = Mining_GetTotalItemWeight();
    int i;
    int j = 0;
    int typesOfRocks = Mining_GetTotalTypesOfRocks();
    int selectedPlates[MAX_BURIED_ITEMS];

    ctx->itemCount = MATH_Rand32(&sMiningEnv->rand, MAX_BURIED_ITEMS - 1) + 2;

    if (Underground_HasPlayerNeverMined(underground)) {
        ctx->itemCount = 3;
    }

    for (objectsPlaced = 0; objectsPlaced < ctx->itemCount;) {
        int randNum = MATH_Rand32(&sMiningEnv->rand, totalWeight);
        int index = Mining_PickItem(randNum);
        int itemID = sMiningObjects[index].itemID;

        if (!Underground_HasPlateNeverBeenMined(underground, sMiningObjects[index].itemID)) {
            continue;
        }

        if (MINING_TREASURE_FLAME_PLATE <= itemID && itemID <= MINING_TREASURE_IRON_PLATE) {
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
            selectedPlates[objectsPlaced] = MINING_TREASURE_RARE_BONE; // ?
        }

        int x = MATH_Rand32(&sMiningEnv->rand, MINING_GAME_WIDTH);
        int y = MATH_Rand32(&sMiningEnv->rand, MINING_GAME_HEIGHT);

        if (Mining_TryPlaceObject(index, x, y)) {
            objectsPlaced++;
        }
    }

    if (!Underground_HasPlayerNeverMined(underground)) {
        for (j = 0; j < 100; j++) {
            int index = MATH_Rand32(&sMiningEnv->rand, typesOfRocks);
            index += NELEMS(sMiningObjects) - typesOfRocks;
            int x = MATH_Rand32(&sMiningEnv->rand, MINING_GAME_WIDTH);
            int y = MATH_Rand32(&sMiningEnv->rand, MINING_GAME_HEIGHT);

            if (Mining_TryPlaceObject(index, x, y)) {
                objectsPlaced++;
            }

            // unreachable, objectsPlaced can never exceed 8
            if (objectsPlaced > 12) {
                break;
            }
        }
    }

    Mining_DrawBuriedObjects(objectsPlaced, bgConfig, unused, ctx);
}

static int Mining_DrawBuriedObject(int index, BgConfig *bgConfig, int baseTile, MiningGameContext *ctx)
{
    BuriedObject *buriedObject = &sMiningEnv->buriedObjects[index];
    u16 *tilemapBuffer = Bg_GetTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    int startX = buriedObject->x * 2;
    int startY = buriedObject->y * 2;
    int endX = startX + buriedObject->miningObject->width;
    int endY = startY + buriedObject->miningObject->height;
    int y, x;
    int tileOffset = baseTile;
    u32 size;
    int palIndex = index;

    NARC *narc = NARC_ctor(NARC_INDEX_DATA__UG_PARTS, HEAP_ID_MINING);

    if (index >= ctx->itemCount) {
        palIndex = MAX_BURIED_ITEMS;
    }

    if (index >= ctx->itemCount) {
        Graphics_LoadPaletteFromOpenNARC(narc, buriedObject->miningObject->paletteNARCIndex, PAL_LOAD_MAIN_BG, PLTT_OFFSET(palIndex + 3), PALETTE_SIZE_BYTES, HEAP_ID_MINING);
    } else {
        ctx->nclrBuffers[index] = Graphics_GetPlttDataFromOpenNARC(narc, buriedObject->miningObject->paletteNARCIndex, &ctx->buriedItemPalettes[index], HEAP_ID_MINING);
        DC_FlushRange(ctx->buriedItemPalettes[index]->pRawData, PALETTE_SIZE_BYTES);
        GX_LoadBGPltt(ctx->buriedItemPalettes[index]->pRawData, PLTT_OFFSET(palIndex + 3), PALETTE_SIZE_BYTES);
    }

    size = Graphics_LoadTilesToBgLayerFromOpenNARC(narc, buriedObject->miningObject->spriteNARCIndex, bgConfig, BG_LAYER_MAIN_1, tileOffset, 0, FALSE, HEAP_ID_MINING);
    NARC_dtor(narc);

    for (y = startY; y < endY; y++) {
        for (x = startX; x < endX; x++) {
            tileOffset++;

            if (!Mining_AreCoordinatesWithinObjectShape(buriedObject->miningObject, x - startX, y - startY)) {
                continue;
            }

            int tilemapIndex = (y + 4) * SCREEN_WIDTH_TILES + x;
            tilemapBuffer[tilemapIndex] = (palIndex + 3) * TILEMAP_PALETTE_SHIFT(1) + tileOffset - 1;
        }
    }

    return size;
}

static u8 sItemShineAnimSequence[] = {
    PLTT_OFFSET(1),
    ITEM_SHINE_ANIM_FRAME_DELAY,
    PLTT_OFFSET(2),
    ITEM_SHINE_ANIM_FRAME_DELAY,
    PLTT_OFFSET(1),
    ITEM_SHINE_ANIM_FRAME_DELAY,
    PLTT_OFFSET(0),
    ITEM_SHINE_ANIM_FRAME_DELAY,
    PLTT_OFFSET(1),
    ITEM_SHINE_ANIM_FRAME_DELAY,
    PLTT_OFFSET(2),
    ITEM_SHINE_ANIM_FRAME_DELAY,
    PLTT_OFFSET(1),
    ITEM_SHINE_ANIM_FRAME_DELAY,
    PLTT_OFFSET(0),
    ITEM_SHINE_ANIM_END
};

static void Mining_DrawUncoveredItemShines(MiningGameContext *ctx)
{
    for (int i = 0; i < MAX_BURIED_ITEMS; i++) {
        if (ctx->itemShineAnimIndices[i] == 1) {
            Sound_PlayEffect(SEQ_SE_DP_KIRAKIRA4);

            for (int j = 0; j < 3; j++) {
                int x = MATH_Rand32(&sMiningEnv->rand, sMiningEnv->buriedObjects[i].miningObject->width * 8);
                int y = MATH_Rand32(&sMiningEnv->rand, sMiningEnv->buriedObjects[i].miningObject->height * 8);
                x += sMiningEnv->buriedObjects[i].x * 2 * TILE_WIDTH_PIXELS;
                y += sMiningEnv->buriedObjects[i].y * 2 * TILE_WIDTH_PIXELS;
                y += 4 * TILE_HEIGHT_PIXELS;

                VecFx32 position;
                position.x = FX32_ONE * x;
                position.y = FX32_ONE * y;

                Sprite_SetAnim(sMiningEnv->sprites[MINING_SPRITE_ITEM_DUG_UP_SPARKLES_1 + j], MINING_ANIM_ITEM_DUG_UP_SPARKLES_1 + j);
                Sprite_SetPosition(sMiningEnv->sprites[MINING_SPRITE_ITEM_DUG_UP_SPARKLES_1 + j], &position);
            }
        }
    }

    for (int i = 0; i < MAX_BURIED_ITEMS; i++) {
        if (ctx->itemShineAnimIndices[i]) {
            u16 *rawPlttData = ctx->buriedItemPalettes[i]->pRawData;
            u8 palIndex = sItemShineAnimSequence[ctx->itemShineAnimIndices[i] - 1];

            if (palIndex == ITEM_SHINE_ANIM_END) {
                ctx->itemShineAnimIndices[i] = 0;
                continue;
            }

            ctx->itemShineAnimIndices[i]++;

            if (palIndex == ITEM_SHINE_ANIM_FRAME_DELAY) {
                continue;
            }

            GX_LoadBGPltt(&rawPlttData[palIndex], PLTT_OFFSET(i + 3), PALETTE_SIZE_BYTES);
        }
    }
}

static void Mining_DrawBuriedObjects(int buriedObjectCount, BgConfig *bgConfig, int unused, MiningGameContext *ctx)
{
    int i;
    int baseTile = 512 + 72 + DIRT_TILES_COUNT + DIRT_TILES_OFFSET;

    for (i = 0; i < buriedObjectCount; i++) {
        u32 size = Mining_DrawBuriedObject(i, bgConfig, baseTile, ctx);
        baseTile += size / TILE_SIZE_4BPP;
    }
}

static void Mining_RandomizeDirtLayers(BgConfig *bgConfig)
{
    static const u8 dirtLayer4MapLength = 8;
    static const u8 dirtLayer6MapLength = 5;
    static u8 dirtLayer4Map[dirtLayer4MapLength][dirtLayer4MapLength] = {
        { 0, 0, 4, 4, 4, 4, 0, 0 },
        { 0, 4, 4, 4, 4, 4, 4, 0 },
        { 4, 4, 4, 4, 4, 4, 0, 0 },
        { 4, 4, 4, 4, 4, 4, 0, 0 },
        { 4, 4, 4, 4, 4, 4, 0, 0 },
        { 4, 4, 4, 4, 4, 4, 0, 0 },
        { 0, 4, 4, 4, 4, 4, 4, 0 },
        { 0, 0, 4, 4, 4, 4, 0, 0 }
    };
    static u8 dirtLayer6Map[dirtLayer6MapLength][dirtLayer6MapLength] = {
        { 0, 6, 6, 6, 0 },
        { 6, 6, 6, 6, 6 },
        { 6, 6, 6, 6, 6 },
        { 6, 6, 6, 6, 6 },
        { 0, 6, 6, 6, 0 }
    };
    int x, y, startX, startY, i;
    BOOL canAddLayers = TRUE;

    for (i = 0; i < 10; i++) {
        startX = MATH_Rand32(&sMiningEnv->rand, MINING_GAME_WIDTH + dirtLayer4MapLength) - dirtLayer4MapLength;
        startY = MATH_Rand32(&sMiningEnv->rand, MINING_GAME_HEIGHT + dirtLayer4MapLength) - dirtLayer6MapLength; // ?

        for (y = startY; y < startY + dirtLayer4MapLength; y++) {
            if (y >= MINING_GAME_HEIGHT || y < 0) {
                continue;
            }

            for (x = startX; x < startX + dirtLayer4MapLength; x++) {
                if (x >= MINING_GAME_WIDTH || x < 0) {
                    continue;
                }

                if (dirtLayer4Map[y - startY][x - startX] == 0) {
                    continue;
                }

                sMiningEnv->dirtLayers[y][x] = dirtLayer4Map[y - startY][x - startX];
            }
        }
    }

    for (i = 0; i < 15; i++) {
        startX = MATH_Rand32(&sMiningEnv->rand, MINING_GAME_WIDTH + dirtLayer6MapLength) - dirtLayer6MapLength;
        startY = MATH_Rand32(&sMiningEnv->rand, MINING_GAME_HEIGHT + dirtLayer6MapLength) - dirtLayer6MapLength;
        canAddLayers = TRUE;

        for (y = startY; y < startY + dirtLayer6MapLength; y++) {
            if (y >= MINING_GAME_HEIGHT || y < 0) {
                continue;
            }

            for (x = startX; x < startX + dirtLayer6MapLength; x++) {
                if (x >= MINING_GAME_WIDTH || x < 0) {
                    continue;
                }

                if (dirtLayer4Map[y - startY][x - startX] == 0) {
                    continue;
                }

                if (sMiningEnv->dirtLayers[y][x] < 4) {
                    canAddLayers = FALSE;
                    break;
                }
            }

            if (!canAddLayers) {
                break;
            }
        }

        if (!canAddLayers) {
            continue;
        }

        for (y = startY; y < startY + dirtLayer6MapLength; y++) {
            if (y >= MINING_GAME_HEIGHT || y < 0) {
                continue;
            }

            for (x = startX; x < startX + dirtLayer6MapLength; x++) {
                if (x >= MINING_GAME_WIDTH || x < 0) {
                    continue;
                }

                if (dirtLayer6Map[y - startY][x - startX] == 0) {
                    continue;
                }

                sMiningEnv->dirtLayers[y][x] = dirtLayer6Map[y - startY][x - startX];
            }
        }
    }
}

static void Mining_DrawDirt(BgConfig *bgConfig)
{
    static u8 dirtLayer0Tiles[] = { 14, 15, 30, 31 };
    static u8 dirtLayer1Tiles[] = { 10, 11, 26, 27 };
    static u8 dirtLayer2Tiles[] = { 8, 9, 24, 25 };
    static u8 dirtLayer3Tiles[] = { 6, 7, 22, 23 };
    static u8 dirtLayer4Tiles[] = { 4, 5, 20, 21 };
    static u8 dirtLayer5Tiles[] = { 2, 3, 18, 19 };
    static u8 dirtLayer6Tiles[] = { 0, 1, 16, 17 };
    static u8 *dirtTiles[] = { dirtLayer0Tiles, dirtLayer1Tiles, dirtLayer2Tiles, dirtLayer3Tiles, dirtLayer4Tiles, dirtLayer5Tiles, dirtLayer6Tiles };
    u16 *tilemapBuffer = Bg_GetTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);
    int y, x;

    for (y = 0; y < MINING_GAME_HEIGHT; y++) {
        for (x = 0; x < MINING_GAME_WIDTH; x++) {
            u8 *tiles = dirtTiles[sMiningEnv->dirtLayers[y][x]];

            int tileMapIndex = x * 2 + (y * 2 + 4) * SCREEN_WIDTH_TILES;
            tilemapBuffer[tileMapIndex] = tiles[0] + TILEMAP_PALETTE_SHIFT(2) + 1;
            tilemapBuffer[tileMapIndex + 1] = tiles[1] + TILEMAP_PALETTE_SHIFT(2) + 1;
            tilemapBuffer[tileMapIndex + SCREEN_WIDTH_TILES] = tiles[2] + TILEMAP_PALETTE_SHIFT(2) + 1;
            tilemapBuffer[tileMapIndex + SCREEN_WIDTH_TILES + 1] = tiles[3] + TILEMAP_PALETTE_SHIFT(2) + 1;
        }
    }

    Bg_CopyTilemapBufferToVRAM(bgConfig, BG_LAYER_MAIN_2);
}

static BOOL Mining_IsItemAtCoordinates(int x, int y)
{
    int index = sMiningEnv->buriedObjectGrid[y][x];

    if (index == 0) {
        return FALSE;
    }

    int itemID = sMiningEnv->buriedObjects[index - 1].itemID;

    if (itemID != MINING_TREASURE_NONE && itemID < MINING_TREASURE_MAX) {
        return TRUE;
    }

    return FALSE;
}

static BOOL Mining_IsRockAtCoordinates(int x, int y)
{
    int index = sMiningEnv->buriedObjectGrid[y][x];

    if (index == 0) {
        return FALSE;
    }

    if (sMiningEnv->buriedObjects[index - 1].itemID >= MINING_ROCK_1) {
        return TRUE;
    }

    return FALSE;
}

static void Mining_RemoveDirt(int touchX, int touchY, BOOL pickaxeSelected, MiningGameContext *ctx)
{
    static s8 diagonalXModifiers[] = { 1, -1, -1, 1 };
    static s8 diagonalYModifiers[] = { 1, -1, 1, -1 };
    static s8 adjacentXModifiers[] = { 0, 0, -1, 1 };
    static s8 adjacentYModifiers[] = { 1, -1, 0, 0 };
    int i;
    BOOL hitRock = FALSE, foundItem = FALSE;

    int x = touchX / (TILE_WIDTH_PIXELS * 2);
    int y = touchY / (TILE_HEIGHT_PIXELS * 2) - 2;

    if (x < 0 || x >= MINING_GAME_WIDTH || y < 0 || y >= MINING_GAME_HEIGHT) {
        return;
    }

    if (sMiningEnv->dirtLayers[y][x] != 0) {
        sMiningEnv->dirtLayers[y][x] -= 1;
    }

    if (sMiningEnv->dirtLayers[y][x] != 0) {
        sMiningEnv->dirtLayers[y][x] -= 1;
    }

    if (Mining_IsRockAtCoordinates(x, y) && (sMiningEnv->dirtLayers[y][x] == 0)) {
        hitRock = TRUE;
    }

    if (Mining_IsItemAtCoordinates(x, y) && (sMiningEnv->dirtLayers[y][x] == 0)) {
        foundItem = TRUE;
        ctx->soundEffectTimer = 15;
    }

    Mining_PlayHitAnimationsAndSoundEffects(x * TILE_WIDTH_PIXELS * 2, (y + 2) * TILE_HEIGHT_PIXELS * 2, pickaxeSelected, hitRock, foundItem);

    if (hitRock) {
        return;
    }

    if (!pickaxeSelected) {
        for (i = 0; i < 4; i++) {
            int diagonalY = y + diagonalYModifiers[i];
            int diagonalX = x + diagonalXModifiers[i];

            if (0 <= diagonalY && diagonalY < MINING_GAME_HEIGHT) {
                if (0 <= diagonalX && diagonalX < MINING_GAME_WIDTH) {
                    if (sMiningEnv->dirtLayers[diagonalY][diagonalX] != 0) {
                        sMiningEnv->dirtLayers[diagonalY][diagonalX] -= 1;
                    }
                }
            }
        }
    }

    for (i = 0; i < 4; i++) {
        int adjacentY = y + adjacentYModifiers[i];
        int adjacentX = x + adjacentXModifiers[i];

        if (0 <= adjacentY && adjacentY < MINING_GAME_HEIGHT) {
            if (0 <= adjacentX && adjacentX < MINING_GAME_WIDTH) {
                if (sMiningEnv->dirtLayers[adjacentY][adjacentX] != 0) {
                    sMiningEnv->dirtLayers[adjacentY][adjacentX] -= 1;
                }

                if (!pickaxeSelected) {
                    if (sMiningEnv->dirtLayers[adjacentY][adjacentX] != 0) {
                        sMiningEnv->dirtLayers[adjacentY][adjacentX] -= 1;
                    }
                }
            }
        }
    }
}

static void Mining_DrawButton(u16 *tilemapBuffer, MiningButtonRectangle *rect, int baseTile, int rowGapLength)
{
    int y, x;
    int tileRow;

    for (y = rect->startY, tileRow = 0; y < rect->endY; y++, tileRow++) {
        int tile = rowGapLength * tileRow + baseTile;

        for (x = rect->startX; x < rect->endX; x++) {
            int tilemapIndex = y * SCREEN_WIDTH_TILES + x;
            tilemapBuffer[tilemapIndex] = (tilemapBuffer[tilemapIndex] & 0xFC00) + tile;
            tile++;
        }
    }
}

static MiningButtonRectangle sHammerButtonRectangle = {
    .startX = 26,
    .startY = 6,
    .endX = 32,
    .endY = 14
};

static MiningButtonRectangle sPickaxeButtonRectangle = {
    .startX = 26,
    .startY = 15,
    .endX = 32,
    .endY = 23
};

static MiningButtonRectangle unused = {
    .startX = 26,
    .startY = 0,
    .endX = 32,
    .endY = 4
};

static void Mining_InitButtons(BgConfig *bgConfig)
{
    sMiningEnv->buttonSelected = MINING_BUTTON_PICKAXE;
    sMiningEnv->pickaxeSelected = TRUE;

    u16 *tilemapBuffer = Bg_GetTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Mining_DrawButton(tilemapBuffer, &sPickaxeButtonRectangle, MINING_BASE_TILE_PICKAXE_BUTTON_PRESSED, BUTTON_ROW_GAP_LENGTH);
}

static void Mining_ButtonTouchCheck(BgConfig *bgConfig, int touchX, int touchY, int sidebarTouchState)
{
    if (sidebarTouchState < SIDEBAR_TOUCH_START) {
        return;
    }

    if (sidebarTouchState == SIDEBAR_TOUCH_START) {
        if (26 * TILE_WIDTH_PIXELS + 6 < touchX && touchX < 31 * TILE_WIDTH_PIXELS + 4) {
            if (5 * TILE_HEIGHT_PIXELS + 3 < touchY && touchY < 13 * TILE_HEIGHT_PIXELS + 6) {
                sMiningEnv->buttonSelected = MINING_BUTTON_HAMMER;
                sMiningEnv->pickaxeSelected = FALSE;
            } else if (14 * TILE_HEIGHT_PIXELS + 2 < touchY && touchY < 21 * TILE_HEIGHT_PIXELS + 6) {
                sMiningEnv->buttonSelected = MINING_BUTTON_PICKAXE;
                sMiningEnv->pickaxeSelected = TRUE;
            } else {
                return;
            }
        } else {
            return;
        }
    }

    u16 *tileMapBuffer = Bg_GetTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);

    VecFx32 position;

    switch (sMiningEnv->buttonSelected) {
    case MINING_BUTTON_HAMMER:
        if (sidebarTouchState == SIDEBAR_TOUCH_START) {
            Mining_DrawButton(tileMapBuffer, &sHammerButtonRectangle, MINING_BASE_TILE_HAMMER_BUTTON_TRANSITION, BUTTON_ROW_GAP_LENGTH);
            Mining_DrawButton(tileMapBuffer, &sPickaxeButtonRectangle, MINING_BASE_TILE_PICKAXE_BUTTON_UNPRESSED, BUTTON_ROW_GAP_LENGTH);
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        } else if (sidebarTouchState == SIDEBAR_TOUCH_START + 1) {
            Mining_DrawButton(tileMapBuffer, &sHammerButtonRectangle, MINING_BASE_TILE_HAMMER_BUTTON_PRESSED, BUTTON_ROW_GAP_LENGTH);
        }

        if (sidebarTouchState == SIDEBAR_TOUCH_START) {
            Sprite_SetAnim(sMiningEnv->sprites[MINING_SPRITE_BUTTON_PRESS_EFFECT], MINING_ANIM_HAMMER_BUTTON_PRESSED);
            Sprite_SetAnimateFlag(sMiningEnv->sprites[MINING_SPRITE_BUTTON_PRESS_EFFECT], TRUE);

            position.x = FX32_ONE * 232;
            position.y = FX32_ONE * 80;

            Sprite_SetPosition(sMiningEnv->sprites[MINING_SPRITE_BUTTON_PRESS_EFFECT], &position);
        }

        break;
    case MINING_BUTTON_PICKAXE:
        if (sidebarTouchState == SIDEBAR_TOUCH_START) {
            Mining_DrawButton(tileMapBuffer, &sHammerButtonRectangle, MINING_BASE_TILE_HAMMER_BUTTON_UNPRESSED, BUTTON_ROW_GAP_LENGTH);
            Mining_DrawButton(tileMapBuffer, &sPickaxeButtonRectangle, MINING_BASE_TILE_PICKAXE_BUTTON_TRANSITION, BUTTON_ROW_GAP_LENGTH);
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        } else if (sidebarTouchState == SIDEBAR_TOUCH_START + 1) {
            Mining_DrawButton(tileMapBuffer, &sPickaxeButtonRectangle, MINING_BASE_TILE_PICKAXE_BUTTON_PRESSED, BUTTON_ROW_GAP_LENGTH);
        }

        if (sidebarTouchState == SIDEBAR_TOUCH_START) {
            Sprite_SetAnim(sMiningEnv->sprites[MINING_SPRITE_BUTTON_PRESS_EFFECT], MINING_ANIM_PICKAXE_BUTTON_PRESSED);
            Sprite_SetAnimateFlag(sMiningEnv->sprites[MINING_SPRITE_BUTTON_PRESS_EFFECT], TRUE);

            position.x = FX32_ONE * 232;
            position.y = FX32_ONE * 152;

            Sprite_SetPosition(sMiningEnv->sprites[MINING_SPRITE_BUTTON_PRESS_EFFECT], &position);
        }

        break;
    }

    Bg_CopyTilemapBufferToVRAM(bgConfig, BG_LAYER_MAIN_1);
}

static void Mining_CalcWallCrackEndPos(VecFx32 *out)
{
    int wallIntegrity = sMiningEnv->wallIntegrity;

    wallIntegrity = (wallIntegrity / 4) * 4;
    wallIntegrity = wallIntegrity + 8;

    out->x = FX32_ONE * (wallIntegrity + 8);
    out->y = FX32_ONE * 16;
}

static void Mining_DrawWallCrack(BgConfig *bgConfig)
{
    int wallIntegrity = sMiningEnv->wallIntegrity;
    int i;
    u16 *tilemapBuffer = Bg_GetTilemapBuffer(bgConfig, BG_LAYER_MAIN_0);

    wallIntegrity = (wallIntegrity / 4) * 4;
    int animID = 6 - (wallIntegrity % 24) / 4;

    VecFx32 dummy;
    Mining_CalcWallCrackEndPos(&dummy);

    Sprite_SetAnim(sMiningEnv->sprites[MINING_SPRITE_CRACK_END], animID);

    wallIntegrity = wallIntegrity + 8;
    int crackLength = (MINING_GAME_WIDTH * 2 * TILE_WIDTH_PIXELS - wallIntegrity) / TILE_WIDTH_PIXELS;

    for (i = 0; i < crackLength; i++) {
        tilemapBuffer[CRACK_START_TILEMAP_INDEX_ROW_1 - i] = (tilemapBuffer[CRACK_START_TILEMAP_INDEX_ROW_1 - i] & 0xFC00) + MINING_BASE_TILE_CRACK_ROW_1 - (i % 3);
        tilemapBuffer[CRACK_START_TILEMAP_INDEX_ROW_2 - i] = (tilemapBuffer[CRACK_START_TILEMAP_INDEX_ROW_2 - i] & 0xFC00) + MINING_BASE_TILE_CRACK_ROW_2 - (i % 3);
        tilemapBuffer[CRACK_START_TILEMAP_INDEX_ROW_3 - i] = (tilemapBuffer[CRACK_START_TILEMAP_INDEX_ROW_3 - i] & 0xFC00) + MINING_BASE_TILE_CRACK_ROW_3 - (i % 3);
        tilemapBuffer[CRACK_START_TILEMAP_INDEX_ROW_4 - i] = (tilemapBuffer[CRACK_START_TILEMAP_INDEX_ROW_4 - i] & 0xFC00) + MINING_BASE_TILE_CRACK_ROW_4 - (i % 3);
    }

    Bg_CopyTilemapBufferToVRAM(bgConfig, BG_LAYER_MAIN_0);
}

static void Mining_NearbyLinksRemoveDirt(MiningGameContext *ctx)
{
    BOOL dirtRemoved = FALSE;

    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        if (sMiningEnv->linkTouchX[netID] != (u8)TOUCHSCREEN_INPUT_NONE && sMiningEnv->linkTouchY[netID] != (u8)TOUCHSCREEN_INPUT_NONE) {
            int playerXPos = CommPlayer_GetXIfActive(CommSys_CurNetId());
            int playerZPos = CommPlayer_GetZIfActive(CommSys_CurNetId());
            int linkXPos = UndergroundPlayer_GetXPos(netID);
            int linkZPos = UndergroundPlayer_GetZPos(netID);

            if (linkXPos > playerXPos - 10 && linkXPos < playerXPos + 10) {
                if (linkZPos > playerZPos - 10 && linkZPos < playerZPos + 10) {
                    Mining_RemoveDirt(sMiningEnv->linkTouchX[netID], sMiningEnv->linkTouchY[netID], TRUE, ctx);
                    dirtRemoved = TRUE;

                    sMiningEnv->linkTouchX[netID] = TOUCHSCREEN_INPUT_NONE;
                    sMiningEnv->linkTouchY[netID] = TOUCHSCREEN_INPUT_NONE;
                }
            }
        }
    }

    if (dirtRemoved) {
        Mining_DrawDirt(sMiningEnv->bgConfig);
    }
}

static int Mining_GenerateSizeOfMinedSphere(int itemID)
{
    int sphereSize = 0;
    int id = itemID;

    if (Spheres_IsMiningItemSphere(id)) {
        if (id == MINING_LARGE_PRISM_SPHERE || id == MINING_LARGE_PALE_SPHERE || id == MINING_SMALL_PRISM_SPHERE || id == MINING_SMALL_PALE_SPHERE) {
            sphereSize = MATH_Rand32(&sMiningEnv->rand, 1) + 1;
        } else {
            sphereSize = MATH_Rand32(&sMiningEnv->rand, 4) + 1;
        }

        if (id == MINING_LARGE_PRISM_SPHERE || id == MINING_LARGE_PALE_SPHERE || id == MINING_LARGE_RED_SPHERE || id == MINING_LARGE_BLUE_SPHERE || id == MINING_LARGE_GREEN_SPHERE) {
            id = id - MINING_LARGE_PRISM_SPHERE + 1;
            sphereSize += 10;
        }

        sphereSize += sMiningEnv->wallIntegrity / (INITIAL_WALL_INTEGRITY / 5);

        if (sMiningEnv->wallIntegrity != 0) {
            sphereSize += 5;
        }
    }

    return sphereSize;
}

static void Mining_AddItem(int itemID, int sphereSize)
{
    int id = itemID;
    UndergroundRecord *unused = SaveData_GetUndergroundRecord(FieldSystem_GetSaveData(sMiningEnv->fieldSystem));
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(sMiningEnv->fieldSystem));

    if (Spheres_IsMiningItemSphere(id)) {
        UndergroundInventory_TryAddSphere(id, sphereSize);
    } else {
        UndergroundInventory_TryAddTreasure(id);
        Underground_SetPlateMined(underground, id);
    }
}

static BOOL Mining_IsRoomInBag(int itemID)
{
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(sMiningEnv->fieldSystem));

    if (Spheres_IsMiningItemSphere(itemID)) {
        return Underground_GetSphereCount(underground) != MAX_SPHERE_SLOTS;
    } else {
        return Underground_GetTreasureCount(underground) != MAX_TREASURE_SLOTS;
    }
}

static BOOL Mining_AreAllItemsDugUp(MiningGameContext *ctx)
{
    int y, x, i;
    BOOL itemsDugUp[MAX_BURIED_ITEMS];
    BOOL everythingDugUp = TRUE;

    for (i = 0; i < ctx->itemCount; i++) {
        itemsDugUp[i] = TRUE;
    }

    for (y = 0; y < MINING_GAME_HEIGHT; y++) {
        for (x = 0; x < MINING_GAME_WIDTH; x++) {
            i = sMiningEnv->buriedObjectGrid[y][x];

            if (i <= ctx->itemCount && i != 0) {
                if (sMiningEnv->dirtLayers[y][x] != 0) {
                    itemsDugUp[i - 1] = FALSE;
                }
            }
        }
    }

    for (i = 0; i < ctx->itemCount; i++) {
        if (!itemsDugUp[i]) {
            everythingDugUp = FALSE;
        } else if (!sMiningEnv->buriedObjects[i].isDugUp) {
            ctx->itemShineAnimIndices[i] = 1;
            sMiningEnv->buriedObjects[i].isDugUp = TRUE;
        }
    }

    return everythingDugUp;
}

static BOOL Mining_PrintNextDugUpItem(MiningGameContext *ctx)
{
    for (int i = 0; i < ctx->itemCount; i++) {
        if (sMiningEnv->buriedObjects[i].isDugUp == TRUE) {
            ctx->sizeOfCurrentSphere = Mining_GenerateSizeOfMinedSphere(sMiningEnv->buriedObjects[i].itemID);

            UndergroundTextPrinter_SetUndergroundItemNameWithArticle(UndergroundMan_GetCommonTextPrinter(), sMiningEnv->buriedObjects[i].itemID);

            int bankEntry;
            if (Spheres_IsMiningItemSphere(sMiningEnv->buriedObjects[i].itemID)) {
                bankEntry = UndergroundCommon_Text_YouObtainedSphere;
                UndergroundTextPrinter_SetTwoDigitNumberWithIndex(UndergroundMan_GetCommonTextPrinter(), 1, ctx->sizeOfCurrentSphere);
            } else {
                bankEntry = UndergroundCommon_Text_ItemWasObtained;
                UndergroundTextPrinter_CapitalizeArgAtIndex(UndergroundMan_GetCommonTextPrinter(), 2);
            }

            sMiningEnv->printerID = UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), bankEntry, FALSE, NULL);
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL Mining_ProcessNextDugUpItem(MiningGameContext *ctx)
{
    UndergroundRecord *undergroundRecord = SaveData_GetUndergroundRecord(sMiningEnv->fieldSystem->saveData);
    Underground *unused = SaveData_GetUnderground(sMiningEnv->fieldSystem->saveData);

    for (int i = 0; i < ctx->itemCount; i++) {
        if (sMiningEnv->buriedObjects[i].isDugUp == TRUE) {
            sMiningEnv->buriedObjects[i].isDugUp = FALSE;

            int itemID = sMiningEnv->buriedObjects[i].itemID;

            if (Spheres_IsMiningItemSphere(itemID)) {
                UndergroundRecord_AddNumSpheresDug(undergroundRecord, 1);
            } else {
                FieldSystem_SaveTVEpisodeSegment_UndergroundTreasuresCorner(sMiningEnv->fieldSystem, itemID, 1);

                // possible bug: rare bones count toward the fossil total
                if ((itemID >= MINING_TREASURE_HELIX_FOSSIL) && ((MINING_TREASURE_RARE_BONE + 1) > itemID) || (itemID == MINING_TREASURE_ARMOR_FOSSIL) || (itemID == MINING_TREASURE_SKULL_FOSSIL)) {
                    UndergroundRecord_AddNumFossilsDug(undergroundRecord, 1);

                    VarsFlags *varsFlags = SaveData_GetVarsFlags(sMiningEnv->fieldSystem->saveData);
                    SystemVars_SetUndergroundFossilsUnearthed(varsFlags, SystemVars_GetUndergroundFossilsUnearthed(varsFlags) + 1);
                } else {
                    Underground_AddNumNonFossilsDug(undergroundRecord, 1);
                }
            }

            if (Mining_IsRoomInBag(itemID)) {
                Mining_AddItem(itemID, ctx->sizeOfCurrentSphere);
                break;
            } else {
                sMiningEnv->printerID = UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_TooBadBagIsFull3, FALSE, NULL);
                return TRUE;
            }
        }
    }

    return FALSE;
}

static void Mining_QueueScreenShake(BgConfig *bgConfig)
{
    if (sMiningEnv->shakeTimer == 0) {
        return;
    }

    int shakeDuration = (INITIAL_WALL_INTEGRITY - sMiningEnv->wallIntegrity) / 15;
    int shakeMagnitude = (INITIAL_WALL_INTEGRITY - sMiningEnv->wallIntegrity) / 50;

    sMiningEnv->shakeTimer++;

    if (sMiningEnv->shakeTimer > shakeDuration) {
        sMiningEnv->screenShakeX = sMiningEnv->screenShakeY = 0;
    } else {
        sMiningEnv->screenShakeX = MATH_Rand32(&sMiningEnv->rand, 3 + shakeMagnitude) - (3 + shakeMagnitude) / 2;
        sMiningEnv->screenShakeY = MATH_Rand32(&sMiningEnv->rand, 3 + shakeMagnitude) - (3 + shakeMagnitude) / 2;
    }

    VecFx32 position;
    Mining_CalcWallCrackEndPos(&position);

    position.x -= sMiningEnv->screenShakeX * FX32_ONE;
    position.y -= sMiningEnv->screenShakeY * FX32_ONE;

    Sprite_SetPosition(sMiningEnv->sprites[MINING_SPRITE_CRACK_END], &position);
}

static void Mining_ShakeScreen(BgConfig *bgConfig)
{
    if (sMiningEnv->shakeTimer == 0) {
        return;
    }

    int duration = (INITIAL_WALL_INTEGRITY - sMiningEnv->wallIntegrity) / 10;

    if (sMiningEnv->shakeTimer > duration) {
        sMiningEnv->shakeTimer = 0;
    }

    for (int bgLayer = BG_LAYER_MAIN_0; bgLayer < BG_LAYER_MAIN_3; bgLayer++) {
        Bg_SetOffset(bgConfig, bgLayer, BG_OFFSET_UPDATE_SET_X, sMiningEnv->screenShakeX);
        Bg_SetOffset(bgConfig, bgLayer, BG_OFFSET_UPDATE_SET_Y, sMiningEnv->screenShakeY);
    }
}

static BOOL Mining_MainGameLoop(MiningGameContext *ctx)
{
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(sMiningEnv->fieldSystem));

    if (sMiningEnv->sidebarTouchState == 1) {
        sMiningEnv->sidebarTouchState = 0;
    }

    if (gSystem.touchPressed) {
        if (gSystem.touchX < MINING_GAME_WIDTH * 2 * TILE_WIDTH_PIXELS && gSystem.touchY >= 4 * TILE_HEIGHT_PIXELS) {
            MiningLinkInput input;
            input.touchX = gSystem.touchX;
            input.touchY = gSystem.touchY;

            Mining_RemoveDirt(gSystem.touchX, gSystem.touchY, sMiningEnv->pickaxeSelected, ctx);

            int damageToWall;
            if (sMiningEnv->pickaxeSelected) {
                damageToWall = 4;
            } else {
                damageToWall = 8;
            }

            CommSys_SendDataFixedSize(68, &input);

            if (sMiningEnv->wallIntegrity > damageToWall) {
                sMiningEnv->wallIntegrity -= damageToWall;
            } else {
                sMiningEnv->wallIntegrity = 0;
            }

            Mining_DrawDirt(sMiningEnv->bgConfig);
            Mining_DrawWallCrack(sMiningEnv->bgConfig);

            sMiningEnv->shakeTimer = 1;
        } else if (gSystem.touchX >= MINING_GAME_WIDTH * 2 * TILE_WIDTH_PIXELS) {
            sMiningEnv->sidebarTouchState = SIDEBAR_TOUCH_START;
        }
    }

    if (ctx->soundEffectTimer) {
        ctx->soundEffectTimer--;

        if (ctx->soundEffectTimer == 0) {
            Sound_PlayEffect(SEQ_SE_DP_KIRAKIRA3);
        }
    }

    Mining_ButtonTouchCheck(sMiningEnv->bgConfig, gSystem.touchX, gSystem.touchY, sMiningEnv->sidebarTouchState);

    if (sMiningEnv->sidebarTouchState >= SIDEBAR_TOUCH_START) {
        sMiningEnv->sidebarTouchState++;
    }

    Mining_NearbyLinksRemoveDirt(ctx);

    if (Mining_AreAllItemsDugUp(ctx)) {
        Underground_SetHasMined(underground);
        GameRecords_IncrementTrainerScore(SaveData_GetGameRecords(sMiningEnv->fieldSystem->saveData), TRAINER_SCORE_EVENT_UNDERGROUND_UNCOVER_FOSSIL);
        ctx->state = MINING_STATE_EVERYTHING_DUG;
        ctx->timer = 25;
        ctx->dugUpAllItems = TRUE;

        return TRUE;
    } else if (sMiningEnv->wallIntegrity == 0) {
        Underground_SetHasMined(underground);
        ctx->dugUpAllItems = FALSE;
        ctx->timer = 45;
        ctx->state = MINING_STATE_COLLAPSE_SHAKE;

        return TRUE;
    }

    return FALSE;
}

static void Mining_AddSpriteResource(SpriteResource *resource)
{
    sMiningEnv->spriteResources[sMiningEnv->spriteResourceIndex] = resource;
    sMiningEnv->spriteResourceIndex++;
}

static void Mining_InitSpriteResources(void)
{
    sMiningEnv->spriteResourceIndex = 0;

    NNS_G2dInitOamManagerModule();

    RenderOam_Init(0, 124, 0, 31, 0, 124, 0, 31, HEAP_ID_MINING);
    Mining_InitCharPlttTransferBuffers();

    sMiningEnv->spriteList = SpriteList_InitRendering(26, &sMiningEnv->g2DRenderer, HEAP_ID_MINING);

    SetSubScreenViewRect(&sMiningEnv->g2DRenderer, 0, (HW_LCD_HEIGHT << FX32_SHIFT) * 2);

    for (int resourceType = SPRITE_RESOURCE_CHAR; resourceType < MAX_SPRITE_RESOURCE_GEN4; resourceType++) {
        sMiningEnv->spriteResourceCollection[resourceType] = SpriteResourceCollection_New(2, resourceType, HEAP_ID_MINING);
    }

    NARC *narc = NARC_ctor(NARC_INDEX_DATA__UG_ANIM, HEAP_ID_MINING);

    Mining_AddSpriteResource(SpriteResourceCollection_AddTilesFrom(sMiningEnv->spriteResourceCollection[SPRITE_RESOURCE_CHAR], narc, animations_NCGR, FALSE, 0, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_MINING));
    SpriteTransfer_RequestChar(sMiningEnv->spriteResources[sMiningEnv->spriteResourceIndex - 1]);

    Mining_AddSpriteResource(SpriteResourceCollection_AddPaletteFrom(sMiningEnv->spriteResourceCollection[SPRITE_RESOURCE_PLTT], narc, animations_NCLR, FALSE, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 1, HEAP_ID_MINING));
    SpriteTransfer_RequestPlttFreeSpace(sMiningEnv->spriteResources[sMiningEnv->spriteResourceIndex - 1]);

    Mining_AddSpriteResource(SpriteResourceCollection_AddFrom(sMiningEnv->spriteResourceCollection[SPRITE_RESOURCE_CELL], narc, animations_cell_NCER, FALSE, 0, SPRITE_RESOURCE_CELL, HEAP_ID_MINING));
    Mining_AddSpriteResource(SpriteResourceCollection_AddFrom(sMiningEnv->spriteResourceCollection[SPRITE_RESOURCE_ANIM], narc, animations_anim_NANR, FALSE, 0, SPRITE_RESOURCE_ANIM, HEAP_ID_MINING));

    Mining_AddSpriteResource(SpriteResourceCollection_AddTilesFrom(sMiningEnv->spriteResourceCollection[SPRITE_RESOURCE_CHAR], narc, crack_end_NCGR, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_MINING));
    SpriteTransfer_RequestChar(sMiningEnv->spriteResources[sMiningEnv->spriteResourceIndex - 1]);

    Mining_AddSpriteResource(SpriteResourceCollection_AddPalette(sMiningEnv->spriteResourceCollection[SPRITE_RESOURCE_PLTT], NARC_INDEX_DATA__UG_FOSSIL, interface_tiles_NCLR, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 3, HEAP_ID_MINING));
    SpriteTransfer_RequestPlttFreeSpace(sMiningEnv->spriteResources[sMiningEnv->spriteResourceIndex - 1]);

    Mining_AddSpriteResource(SpriteResourceCollection_AddFrom(sMiningEnv->spriteResourceCollection[SPRITE_RESOURCE_CELL], narc, crack_end_cell_NCER, FALSE, 1, SPRITE_RESOURCE_CELL, HEAP_ID_MINING));
    Mining_AddSpriteResource(SpriteResourceCollection_AddFrom(sMiningEnv->spriteResourceCollection[SPRITE_RESOURCE_ANIM], narc, crack_end_anim_NANR, FALSE, 1, SPRITE_RESOURCE_ANIM, HEAP_ID_MINING));
    NARC_dtor(narc);
}

static void Mining_InitSprites(void)
{
    for (int i = 0; i < 2; i++) {
        SpriteResourcesHeader_Init(
            &sMiningEnv->resourceData[i],
            i,
            i,
            i,
            i,
            -1,
            -1,
            0,
            0,
            sMiningEnv->spriteResourceCollection[SPRITE_RESOURCE_CHAR],
            sMiningEnv->spriteResourceCollection[SPRITE_RESOURCE_PLTT],
            sMiningEnv->spriteResourceCollection[SPRITE_RESOURCE_CELL],
            sMiningEnv->spriteResourceCollection[SPRITE_RESOURCE_ANIM],
            NULL,
            NULL);

        AffineSpriteListTemplate template;
        template.list = sMiningEnv->spriteList;
        template.resourceData = &sMiningEnv->resourceData[i];
        template.position.x = FX32_CONST(32);
        template.position.y = FX32_CONST(96);
        template.position.z = 0;
        template.affineScale.x = FX32_ONE;
        template.affineScale.y = FX32_ONE;
        template.affineScale.z = FX32_ONE;
        template.affineZRotation = 0;
        template.priority = 0;
        template.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        template.heapID = HEAP_ID_MINING;
        template.position.x = FX32_ONE * 0;
        template.position.y = FX32_ONE * 240;

        if (i == 0) {
            for (int j = 2; j <= MINING_SPRITE_COUNT - 1; j++) {
                sMiningEnv->sprites[j] = SpriteList_AddAffine(&template);
                Sprite_SetAnimateFlag(sMiningEnv->sprites[j], TRUE);
            }
        }

        sMiningEnv->sprites[i] = SpriteList_AddAffine(&template);
        Sprite_SetAnimateFlag(sMiningEnv->sprites[i], TRUE);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

static void Mining_InitCharPlttTransferBuffers(void)
{
    CharTransferTemplate template = {
        .maxTasks = 20,
        .sizeMain = 2048 * 2,
        .sizeSub = 2048 * 2,
        .heapID = HEAP_ID_MINING
    };

    CharTransfer_InitWithVramModes(&template, GX_OBJVRAMMODE_CHAR_1D_128K, GX_OBJVRAMMODE_CHAR_1D_128K);

    PlttTransfer_Init(20, HEAP_ID_MINING);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
    ReserveVramForWirelessIconChars(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_64K);
    ReserveSlotsForWirelessIconPalette(NNS_G2D_VRAM_TYPE_2DMAIN);
}

static void Mining_VBlankCallback(void *data)
{
    BgConfig *bgConfig = data;

    Mining_ShakeScreen(bgConfig);

    Bg_RunScheduledUpdates(bgConfig);
    VramTransfer_Process();
    RenderOam_Transfer();
}

BOOL Mining_IsMiningSpotAtCoordinates(int x, int z)
{
    if (Mining_GetMiningSpotAtCoordinates(x, z)) {
        return TRUE;
    }

    return FALSE;
}

int NormalRadar_GetXCoordOfMiningSpot(int radarIndex)
{
    if (sMiningEnv) {
        return sMiningEnv->normalRadarResults[radarIndex].x;
    }

    return 0;
}

int NormalRadar_GetZCoordOfMiningSpot(int radarIndex)
{
    if (sMiningEnv) {
        return sMiningEnv->normalRadarResults[radarIndex].z;
    }

    return 0;
}

int TreasureRadar_GetXCoordOfMiningSpot(int radarIndex)
{
    if (sMiningEnv && sMiningEnv->treasureRadarContext) {
        int index = sMiningEnv->treasureRadarContext->timer;

        index = (index + radarIndex) % (MAX_MINING_SPOTS / 3);
        return sMiningEnv->treasureRadarContext->results[index].x;
    }

    return 0;
}

int TreasureRadar_GetZCoordOfMiningSpot(int radarIndex)
{
    if (sMiningEnv && sMiningEnv->treasureRadarContext) {
        int index = sMiningEnv->treasureRadarContext->timer;

        index = (index + radarIndex) % (MAX_MINING_SPOTS / 3);
        return sMiningEnv->treasureRadarContext->results[index].z;
    }

    return 0;
}

static void TreasureRadar_TimerTask(SysTask *unused, void *data)
{
    TreasureRadarContext *ctx = data;

    ctx->timer++;

    if (ctx->timer > MAX_MINING_SPOTS / 3) {
        Sound_PlayEffect(SEQ_SE_PL_UG_006);
        ctx->timer = 0;
    }
}

void TreasureRadar_Start(void)
{
    GF_ASSERT(!sMiningEnv->treasureRadarContext);
    GF_ASSERT(!sMiningEnv->treasureRadarTask);

    TreasureRadarContext *ctx = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(TreasureRadarContext));

    MI_CpuFill8(ctx, 0, sizeof(TreasureRadarContext));
    CommSys_SendMessage(71);

    ctx->timer = MAX_MINING_SPOTS / 3 - 10;

    sMiningEnv->treasureRadarContext = ctx;
    sMiningEnv->treasureRadarTask = SysTask_Start(TreasureRadar_TimerTask, ctx, 100);
}

void TreasureRadar_Exit(void)
{
    if (sMiningEnv->treasureRadarTask) {
        SysTask_Done(sMiningEnv->treasureRadarTask);
        Heap_Free(sMiningEnv->treasureRadarContext);
        sMiningEnv->treasureRadarTask = NULL;
        sMiningEnv->treasureRadarContext = NULL;
    }
}

void Mining_ProcessTreasureRadarStart(int netID, int unused1, void *unused2, void *unused3)
{
    sMiningEnv->treasureRadarIndex[netID] = 1;
}

static void Mining_SendTreasureRadarResults(void)
{
    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        int index = sMiningEnv->treasureRadarIndex[netID] - 1;

        if (sMiningEnv->treasureRadarIndex[netID]) {
            while (TRUE) {
                MiningSpot *miningSpot = &sMiningEnv->miningSpots[index];

                if (miningSpot->x != 0xffff && miningSpot->z != 0xffff) {
                    MiningSpotRadarResult result;

                    result.x = miningSpot->x;
                    result.z = miningSpot->z;
                    result.netID = netID;
                    CommSys_SendDataFixedSizeServer(72, &result);
                    // bug: can potentially lead to out of bounds array access
                    sMiningEnv->treasureRadarIndex[netID] = index + 3;
                    break;
                }

                index += 3;

                if (index >= MAX_MINING_SPOTS) {
                    sMiningEnv->treasureRadarIndex[netID] = 0;
                    break;
                }
            }
        }
    }
}

void Mining_ProcessMiningSpotRadarResult(int unused0, int unused1, void *data, void *unused3)
{
    MiningSpotRadarResult *radarResult = data;

    if (sMiningEnv == NULL) {
        return;
    }

    int netID = radarResult->netID & 0xF;

    if (sMiningEnv->treasureRadarContext == NULL) {
        if (netID == CommSys_CurNetId()) {
            int normalRadarIndex = (radarResult->netID >> 4) & 0xF;

            if (0 < normalRadarIndex && normalRadarIndex <= MAX_NORMAL_RADAR_BLIPS) {
                MI_CpuCopy8(radarResult, &sMiningEnv->normalRadarResults[normalRadarIndex - 1], sizeof(MiningSpotRadarResult));
            }
        }
    } else {
        if (netID == CommSys_CurNetId()) {
            MI_CpuCopy8(radarResult, &sMiningEnv->treasureRadarContext->results[sMiningEnv->treasureRadarContext->index], sizeof(MiningSpotRadarResult));
            sMiningEnv->treasureRadarContext->index++;

            if (sMiningEnv->treasureRadarContext->index >= MAX_MINING_SPOTS) {
                sMiningEnv->treasureRadarContext->index = 0;
            }
        }
    }
}

int CommPacketSizeOf_MiningSpotRadarResult(void)
{
    return sizeof(MiningSpotRadarResult);
}

static void Mining_SendNormalRadarResults(void)
{
    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        if (!CommSys_IsPlayerConnected(netID)) {
            continue;
        }

        if (CommPlayer_GetMovementTimer(netID)) {
            sMiningEnv->normalRadarTimer[netID] = 0;
            continue;
        }

        if (sMiningEnv->normalRadarTimer[netID] >= 28) {
            continue;
        }

        sMiningEnv->normalRadarTimer[netID]++;

        if (sMiningEnv->normalRadarTimer[netID] < 20) {
            continue;
        }

        int index = Mining_GetRandomNearbyMiningSpotIndex(CommPlayer_GetXServerIfActive(netID), CommPlayer_GetZServerIfActive(netID));

        if (index != -1) {
            MiningSpot *miningSpot = &sMiningEnv->miningSpots[index];

            if (miningSpot->x != 0xffff && miningSpot->z != 0xffff) {
                MiningSpotRadarResult result;

                result.netID = netID + ((sMiningEnv->normalRadarTimer[netID] - 20 + 1) << 4);
                result.x = miningSpot->x;
                result.z = miningSpot->z;

                CommSys_SendDataFixedSizeServer(72, &result);
            }
        } else {
            MiningSpotRadarResult result;

            result.netID = netID + ((sMiningEnv->normalRadarTimer[netID] - 20 + 1) << 4);
            result.x = 0;
            result.z = 0;

            CommSys_SendDataFixedSizeServer(72, &result);
        }
    }
}

BOOL Mining_GetQueuedMessage(String *dest)
{
    if (!sMiningEnv) {
        return FALSE;
    }

    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        if (sMiningEnv->miningMessagesQueued[netID]) {
            TrainerInfo *trainerInfo = CommInfo_TrainerInfo(netID);
            sMiningEnv->miningMessagesQueued[netID] = FALSE;

            if (UndergroundMan_FormatCommonStringWithTrainerName(trainerInfo, 0, UndergroundCommon_Text_PlayerIsDiggingForTreasure, dest)) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

void Mining_ClearMessageQueue(void)
{
    if (sMiningEnv) {
        MI_CpuClear8(sMiningEnv->miningMessagesQueued, MAX_CONNECTED_PLAYERS);
    }
}

BOOL Mining_IsPlayerMining(int netID)
{
    if (sMiningEnv) {
        return sMiningEnv->isPlayerMining[netID];
    }

    return FALSE;
}

void Mining_ResetPlayerData(int netID)
{
    if (sMiningEnv) {
        sMiningEnv->isPlayerMining[netID] = FALSE;
        sMiningEnv->normalRadarTimer[netID] = 0;
    }
}

BOOL Mining_IsMiningGameTaskActive(void)
{
    if (sMiningEnv && sMiningEnv->miningGameTask) {
        return TRUE;
    }

    return FALSE;
}

void Mining_SetPlayerMiningStatus(int netID, int isMining)
{
    if (sMiningEnv) {
        sMiningEnv->isPlayerMining[netID] = isMining;
    }
}
