#include "overlay023/underground_traps.h"

#include <nitro.h>
#include <string.h>

#include "constants/map_object.h"
#include "constants/traps.h"
#include "generated/trainer_score_events.h"

#include "struct_defs/underground.h"
#include "struct_defs/underground_record.h"

#include "field/field_system.h"
#include "overlay005/ov5_021EAFA4.h"
#include "overlay005/ov5_021F4E08.h"
#include "overlay005/ov5_021F55CC.h"
#include "overlay023/ov23_0223E140.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_0224A1D0.h"
#include "overlay023/ov23_0224B05C.h"
#include "overlay023/underground_menu.h"
#include "overlay023/underground_text_printer.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "camera.h"
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
#include "map_object_move.h"
#include "math_util.h"
#include "narc.h"
#include "overworld_anim_manager.h"
#include "player_avatar.h"
#include "pltt_transfer.h"
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
#include "system_vars.h"
#include "terrain_collision_manager.h"
#include "trainer_info.h"
#include "tv_episode_segment.h"
#include "unk_0202854C.h"
#include "unk_020366A0.h"
#include "vars_flags.h"

#include "res/graphics/trap_effects/trap_effects.naix.h"
#include "res/text/bank/underground_common.h"

#define MAX_BUBBLES 20

#define BOULDER_STAGES 7
#define BOULDER_XPOS   128
#define BOULDER_RADIUS 48
#define MAX_DEBRIS     14

#define ROCK_TRAP_ANIM_BOULDER    0
#define ROCK_TRAP_ANIM_DUST_CLOUD 1
#define ROCK_TRAP_ANIM_DEBRIS     2
#define ROCK_TRAP_SPRITE_COUNT    15

#define MAX_TRAP_EFFECT_SPRITES 32

#define MAX_BURIED_TRAPS MAX_PLACED_TRAPS *MAX_CONNECTED_PLAYERS + MAX_SPAWNED_TRAPS

enum TrapSpriteResourceType {
    TRAP_RESOURCES = 0,
    RADAR_RESOURCES,
    RESOURCE_TYPE_COUNT,
};

typedef void (*UnusedFunc)(BgConfig *bgConfig);
typedef void (*EndTrapEffectClientFunc)(int netID, BOOL allowToolStepBack);
typedef void (*TrapEffectClientFunc)(int netID, BOOL isTool, int toolInitialDir);
typedef void (*TrapServerFunc)(int netID);

typedef struct BuriedTrap {
    u16 x;
    u16 z;
    u8 trapID;
    u8 spawnedTrapIndex;
} BuriedTrap;

typedef struct TriggeredTrap {
    BuriedTrap trap;
    u8 setterNetID;
    u8 victimNetID : 4;
    u8 toolInitialDir : 2;
    u8 hasMessageToDisplay : 1;
    u8 isTool : 1;
} TriggeredTrap;

typedef struct PlaceTrapResult {
    BuriedTrap trap;
    u8 netID;
    u8 result;
} PlaceTrapResult;

typedef struct TrapRadarResult {
    u16 x;
    u16 z;
    u8 netID;
} TrapRadarResult;

typedef struct fx32Coordinates {
    fx32 x;
    fx32 y;
} fx32Coordinates;

typedef struct TrapRadarContext {
    TrapRadarResult results[MAX_PLACED_TRAPS + MAX_SPAWNED_TRAPS];
    u8 index;
    u16 timer;
} TrapRadarContext;

typedef struct LinkSpinContext {
    BOOL doneSpinning;
    int timer;
    int netID;
    int trapID;
} LinkSpinContext;

typedef struct TrapsEnv {
    LinkSpinContext *spinCtx[MAX_CONNECTED_PLAYERS];
    SysTask *spinSysTasks[MAX_CONNECTED_PLAYERS];
    FieldSystem *fieldSystem;
    SpriteList *spriteList;
    G2dRenderer g2dRenderer;
    SpriteResourceCollection *spriteResourceCollection[RESOURCE_TYPE_COUNT][4];
    SpriteResource *spriteResources[RESOURCE_TYPE_COUNT][4];
    SpriteResourcesHeader unused;
    SpriteResourcesHeader resourceData;
    Sprite *sprites[MAX_TRAP_EFFECT_SPRITES];
    Sprite *unused2[4];
    FieldTask *unused3;
    SysTask *trapEffectTask;
    SysTask *touchRadarTask;
    SysTask *baseRadarTask;
    TrapRadarContext *trapRadarContext;
    void *currentTrapContext;
    UnusedFunc unused4; // never anything other than null
    BuriedTrap playerPlacedTraps[MAX_PLACED_TRAPS];
    OverworldAnimManager *trapTextureManager[MAX_PLACED_TRAPS];
    BuriedTrap buriedTraps[MAX_BURIED_TRAPS];
    BuriedTrap *buriedTrapsByCoordinates[MAX_BURIED_TRAPS];
    TriggeredTrap triggeredTraps[MAX_CONNECTED_PLAYERS];
    u8 helpedNetIDs[MAX_CONNECTED_PLAYERS];
    u16 trapRadarIndex[MAX_CONNECTED_PLAYERS];
    u8 queuedEscapeMessages[MAX_CONNECTED_PLAYERS];
    u8 queuedAlertMessages[MAX_CONNECTED_PLAYERS];
    u8 queuedDisengageMessages[MAX_CONNECTED_PLAYERS];
    u16 retrievedTrapCount;
    u8 retrievedTrapID;
    u16 unused5;
    s8 micSample;
    u8 triggeredTrapIDClient;
    u8 triggeredTrapIDs[MAX_CONNECTED_PLAYERS];
    u8 unused6;
    u8 linkReceivedPlacedTraps;
    u8 graphicsDisabled;
} TrapsEnv;

typedef struct LeafTrapContext {
    int state;
    int printerID;
    u16 leafAngleIdx[MAX_TRAP_EFFECT_SPRITES];
    Coordinates2D leafCoords[MAX_TRAP_EFFECT_SPRITES];
    u8 micBlowIntensities[40];
    u8 micBlowDelay[MAX_TRAP_EFFECT_SPRITES];
    u8 blowIntensityIndex;
    u8 timer;
    u8 toolInitialDir;
    u8 isTool;
    u8 leafCount;
    int messageTimer;
    FieldSystem *fieldSystem;
} LeafTrapContext;

typedef struct RockTrapContext {
    int state;
    int printerID;
    int debrisXPos[MAX_DEBRIS + 1];
    int debrisYPos[MAX_DEBRIS + 1];
    int debrisXSpeed[MAX_DEBRIS + 1];
    int debrisYSpeed[MAX_DEBRIS + 1];
    SpriteResource *boulderSpriteResources[BOULDER_STAGES];
    OverworldAnimManager *shadowManager;
    int boulderDamage;
    int boulderFallSpeed;
    int boulderYPos;
    u8 timer;
    u8 subState;
    u8 toolInitialDir;
    u8 isTool;
    int messageTimer;
    int boulderShakeDisplacement;
} RockTrapContext;

typedef struct AlertTrapContext {
    int state;
    int printerID;
    int unused;
    int timer;
    u8 toolInitialDir;
    u8 isTool;
} AlertTrapContext;

typedef struct FireTrapContext {
    int state;
    int printerID;
    u8 micSamples[10];
    int micSampleIndex;
    fx32Coordinates unused;
    int flameIntensity;
    int timer;
    u8 subState;
    u8 toolInitialDir;
    u8 isTool;
    int messageTimer;
} FireTrapContext;

typedef struct BubbleTrapContext {
    int state;
    int printerID;
    u8 bubbleSizes[MAX_BUBBLES];
    u16 bubbleAngleIdx[MAX_BUBBLES];
    fx32Coordinates bubbleCoords[MAX_BUBBLES];
    BOOL isBubblePopped[MAX_BUBBLES];
    u16 bubbleScaleTimer[MAX_BUBBLES];
    u8 timer;
    u8 toolInitialDir;
    u8 isTool;
    int messageTimer;
} BubbleTrapContext;

typedef struct TouchRadarContext {
    int state;
    int unused;
    u8 *unk_08[3];
    int unk_14[3];
    int unk_20;
    int unk_24;
    int unk_28;
    int unk_2C;
    int unk_30;
} TouchRadarContext;

typedef struct AlterMovementTrapContext {
    int state;
    int printerID;
    BOOL isReverseTrap;
    u8 unused;
    int timer;
} AlterMovementTrapContext;

typedef struct HoleTrapContext {
    int state;
    int printerID;
    BOOL isPitTrap;
    u8 toolInitialDir;
    u8 isTool;
    int jumpOutOfHoleProgress;
    OverworldAnimManager *holeTextureManager;
    int lastDir;
    int timer;
    int unused;
} HoleTrapContext;

typedef struct SmokeTrapContext {
    int state;
    int printerID;
    u16 prevTouchX;
    u16 prevTouchY;
    int timer;
    BgConfig *bgConfig;
    FieldSystem *fieldSystem;
    u8 toolInitialDir;
    u8 isTool;
    int messageTimer;
} SmokeTrapContext;

typedef struct MoveTrapContext {
    int state;
    int printerID;
    FieldSystem *fieldSystem;
    int netID;
    int dir;
    int timer;
    BOOL isHurlTrap;
} MoveTrapContext;

typedef struct EscapedTrap {
    u8 trapID;
    u8 netID;
    u8 showOKEmote;
    u8 allowToolStepBack;
} EscapedTrap;

typedef struct TrapHelpData {
    u8 helperNetID;
    u8 helpeeNetID;
    u8 trapID;
} TrapHelpData;

typedef struct LoadTrapsResult {
    u8 netID;
    u8 success;
} LoadTrapsResult;

enum MoveTrapTaskState {
    MOVE_TRAP_STATE_START = 0,
    MOVE_TRAP_STATE_BRIGHTEN_SCREEN,
    MOVE_TRAP_STATE_FRAME_DELAY,
    MOVE_TRAP_STATE_REVERT_BRIGHTNESS,
    MOVE_TRAP_STATE_START_SLIDE,
    MOVE_TRAP_STATE_FRAME_DELAY_2,
    MOVE_TRAP_STATE_WAIT_FOR_END,
    MOVE_TRAP_STATE_END,
};

enum AlterMovementTrapTaskState {
    ALTER_MOVEMENT_TRAP_STATE_START = 0,
    ALTER_MOVEMENT_TRAP_STATE_WAIT_FOR_END,
    ALTER_MOVEMENT_TRAP_STATE_END,
};

enum HoleTrapTaskState {
    HOLE_TRAP_STATE_START = 0,
    HOLE_TRAP_STATE_BRIGHTEN_SCREEN,
    HOLE_TRAP_STATE_FRAME_DELAY,
    HOLE_TRAP_STATE_REVERT_BRIGHTNESS,
    HOLE_TRAP_STATE_WAIT,
    HOLE_TRAP_STATE_DRAW_HOLE,
    HOLE_TRAP_STATE_UNUSED_6,
    HOLE_TRAP_STATE_MAIN,
    HOLE_TRAP_STATE_WAIT_FOR_FORCE_END,
    HOLE_TRAP_STATE_END,
    HOLE_TRAP_STATE_UNUSED_10,
    HOLE_TRAP_STATE_TOOL_STEP_BACK,
    HOLE_TRAP_STATE_TOOL_WAIT_THEN_END,
    HOLE_TRAP_STATE_ESCAPE_HOLE = 14,
};

enum BubbleSize {
    BUBBLE_SIZE_LARGE = 0,
    BUBBLE_SIZE_MEDIUM,
    BUBBLE_SIZE_SMALL,
};

enum BubbleTrapTaskState {
    BUBBLE_TRAP_STATE_START = 0,
    BUBBLE_TRAP_STATE_LOAD_CHAR,
    BUBBLE_TRAP_STATE_LOAD_PLTT,
    BUBBLE_TRAP_STATE_LOAD_CELL,
    BUBBLE_TRAP_STATE_LOAD_ANIM,
    BUBBLE_TRAP_STATE_INIT_BUBBLES,
    BUBBLE_TRAP_STATE_PRINT_TUTORIAL,
    BUBBLE_TRAP_STATE_MAIN,
    BUBBLE_TRAP_STATE_WAIT_FOR_END,
    BUBBLE_TRAP_STATE_END_UNUSED,
    BUBBLE_TRAP_STATE_END_UNUSED_2,
    BUBBLE_TRAP_STATE_TOOL_STEP_BACK,
    BUBBLE_TRAP_STATE_TOOL_WAIT_THEN_END,
};

enum SmokeTrapTaskState {
    SMOKE_TRAP_STATE_START = 0,
    SMOKE_TRAP_STATE_LOAD_TILES,
    SMOKE_TRAP_STATE_LOAD_PLTT,
    SMOKE_TRAP_STATE_LOAD_TILEMAP,
    SMOKE_TRAP_STATE_PRINT_TUTORIAL,
    SMOKE_TRAP_STATE_UNUSED_5,
    SMOKE_TRAP_STATE_UNUSED_6,
    SMOKE_TRAP_STATE_MAIN,
    SMOKE_TRAP_STATE_WAIT_FOR_END,
    SMOKE_TRAP_STATE_END_UNUSED,
    SMOKE_TRAP_STATE_TOOL_STEP_BACK = 11,
    SMOKE_TRAP_STATE_TOOL_WAIT_THEN_END,
};

enum RockTrapTaskState {
    ROCK_TRAP_STATE_START = 0,
    ROCK_TRAP_STATE_LOAD_CHAR,
    ROCK_TRAP_STATE_LOAD_PLTT,
    ROCK_TRAP_STATE_LOAD_CELL,
    ROCK_TRAP_STATE_LOAD_ANIM,
    ROCK_TRAP_STATE_INIT_SPRITES,
    ROCK_TRAP_STATE_PRINT_TUTORIAL,
    ROCK_TRAP_STATE_MAIN,
    ROCK_TRAP_STATE_WAIT_FOR_END,
    ROCK_TRAP_STATE_END_UNUSED,
    ROCK_TRAP_STATE_TOOL_STEP_BACK = 11,
    ROCK_TRAP_STATE_TOOL_WAIT_THEN_END,
};

enum RockTrapTaskSubstate {
    ROCK_TRAP_SUBSTATE_DRAW_SHADOW = 0,
    ROCK_TRAP_SUBSTATE_INIT_BOULDER_FALL,
    ROCK_TRAP_SUBSTATE_BOULDER_FALLING,
    ROCK_TRAP_SUBSTATE_MAIN,
    ROCK_TRAP_SUBSTATE_DAMAGE_BOULDER,
    ROCK_TRAP_SUBSTATE_BOULDER_COLLAPSE,
    ROCK_TRAP_SUBSTATE_END,
};

enum FireTrapTaskState {
    FIRE_TRAP_STATE_START = 0,
    FIRE_TRAP_STATE_LOAD_CHAR,
    FIRE_TRAP_STATE_LOAD_PLTT,
    FIRE_TRAP_STATE_LOAD_CELL,
    FIRE_TRAP_STATE_LOAD_ANIM,
    FIRE_TRAP_STATE_INIT_SPRITE,
    FIRE_TRAP_STATE_PRINT_TUTORIAL,
    FIRE_TRAP_STATE_MAIN,
    FIRE_TRAP_STATE_WAIT_FOR_END,
    FIRE_TRAP_STATE_END_UNUSED,
    FIRE_TRAP_STATE_TOOL_STEP_BACK = 11,
    FIRE_TRAP_STATE_TOOL_WAIT_THEN_END,
};

enum FireTrapTaskSubstate {
    FIRE_TRAP_SUBSTATE_INIT = 0,
    FIRE_TRAP_SUBSTATE_MAIN,
    FIRE_TRAP_SUBSTATE_END,
};

enum LeafTrapTaskState {
    LEAF_TRAP_STATE_START = 0,
    LEAF_TRAP_STATE_LOAD_CHAR,
    LEAF_TRAP_STATE_LOAD_PLTT,
    LEAF_TRAP_STATE_LOAD_CELL,
    LEAF_TRAP_STATE_LOAD_ANIM,
    LEAF_TRAP_STATE_INIT_LEAVES,
    LEAF_TRAP_STATE_PRINT_TUTORIAL,
    LEAF_TRAP_STATE_MAIN,
    LEAF_TRAP_STATE_WAIT_FOR_END,
    LEAF_TRAP_STATE_END_UNUSED,
    LEAF_TRAP_STATE_TOOL_STEP_BACK = 11,
    LEAF_TRAP_STATE_TOOL_WAIT_THEN_END,
};

enum AlertTrapTaskState {
    ALERT_TRAP_STATE_START = 0,
    ALERT_TRAP_STATE_BRIGHTEN_SCREEN,
    ALERT_TRAP_STATE_FRAME_DELAY,
    ALERT_TRAP_STATE_REVERT_BRIGHTNESS,
    ALERT_TRAP_STATE_FRAME_DELAY_2,
    ALERT_TRAP_STATE_FRAME_DELAY_3,
    ALERT_TRAP_STATE_CLEAR_MESSAGE,
    ALERT_TRAP_STATE_TRANSITION_TO_END,
    ALERT_TRAP_STATE_WAIT_FOR_END,
    ALERT_TRAP_STATE_END_UNUSED,
    ALERT_TRAP_STATE_UNUSED,
    ALERT_TRAP_STATE_TOOL_STEP_BACK,
    ALERT_TRAP_STATE_TOOL_WAIT_THEN_END,
};

enum TrapRelativePosition {
    PLAYER_TILE_BACK_FROM_TRAP = 0,
    PLAYER_ON_TRAP,
};

enum TrapPlaceResultCode {
    PLACE_TRAP_SUCCESS = 1,
    PLACE_TRAP_SOMETHING_ALREADY_BURIED = 3,
    PLACE_TRAP_NOT_IN_SECRET_BASE,
    PLACE_TRAP_PERSON_IN_WAY,
    PLACE_TRAP_WALL_IN_WAY,
    PLACE_TRAP_FAIL,
};

static void UndergroundTraps_AddPlacedTrapCurrentPlayer(BuriedTrap *trap);
static int UndergroundTraps_GetBuriedTrapSetterNetID(BuriedTrap *trap);
static BuriedTrap *UndergroundTraps_AddBuriedTrap(int x, int z, BuriedTrap *dest, int trapID);
static void UndergroundTraps_ResetPlayerTrapsCoordinateOrdering(int netID);
static BuriedTrap *UndergroundTraps_GetTrapAtCoordinates(int x, int z);
static OverworldAnimManager *UndergroundTraps_DrawPlacedTrap(int x, int z, int size, int trapID);
static void UndergroundTraps_InitRadarSpriteResources(void);
static void UndergroundTraps_DeleteRadarSpriteResources(void);
static void UndergroundTraps_RemovePlacedTrapCurrentPlayer(BuriedTrap *trap);
static void SendTrapRadarResults(void);
static void UndergroundTraps_StartTrapEffectServer(int netID, int trapID);
static void UndergroundTraps_EndTrapEffectServer(int netID, int trapID);
static void UndergroundTraps_ReverseTrapEffectServer(int netID);
static void UndergroundTraps_ConfuseTrapEffectServer(int netID);
static void UndergroundTraps_SmokeTrapEffectServer(int netID);
static void UndergroundTraps_LeafTrapEffectServer(int netID);
static void UndergroundTraps_HurlTrapRightEffectServer(int netID);
static void UndergroundTraps_HurlTrapLeftEffectServer(int netID);
static void UndergroundTraps_HurlTrapUpEffectServer(int netID);
static void UndergroundTraps_HurlTrapDownEffectServer(int netID);
static void UndergroundTraps_MoveTrapRightEffectServer(int netID);
static void UndergroundTraps_MoveTrapLeftEffectServer(int netID);
static void UndergroundTraps_MoveTrapUpEffectServer(int netID);
static void UndergroundTraps_MoveTrapDownEffectServer(int netID);
static void UndergroundTraps_MoveTrapEffectServer(int netID);
static void UndergroundTraps_DummyServer(int netID);
static void UndergroundTraps_EndMoveTrapEffectClient(int netID, BOOL unused);
static void UndergroundTraps_ForceEndMoveTrapEffectClient(int netID, BOOL unused);
static void UndergroundTraps_StartTrapEffectClient(int netID, int trapID, BOOL isTool, int toolInitialDir);
static void UndergroundTraps_ReverseTrapEffectClient(int netID, BOOL isTool, int toolInitialDir);
static void UndergroundTraps_ConfuseTrapEffectClient(int netID, BOOL isTool, int toolInitialDir);
static void UndergroundTraps_SmokeTrapEffectClient(int netID, BOOL isTool, int toolInitialDir);
static void UndergroundTraps_HurlTrapRightEffectClient(int netID, BOOL isTool, int toolInitialDir);
static void UndergroundTraps_HurlTrapLeftEffectClient(int netID, BOOL isTool, int toolInitialDir);
static void UndergroundTraps_HurlTrapUpEffectClient(int netID, BOOL isTool, int toolInitialDir);
static void UndergroundTraps_HurlTrapDownEffectClient(int netID, BOOL isTool, int toolInitialDir);
static void UndergroundTraps_MoveTrapRightEffectClient(int netID, BOOL isTool, int toolInitialDir);
static void UndergroundTraps_MoveTrapLeftEffectClient(int netID, BOOL isTool, int toolInitialDir);
static void UndergroundTraps_MoveTrapUpEffectClient(int netID, BOOL isTool, int toolInitialDir);
static void UndergroundTraps_MoveTrapDownEffectClient(int netID, BOOL isTool, int toolInitialDir);
static void UndergroundTraps_DummyClient(int netID, BOOL isTool, int toolInitialDir);
static void UndergroundTraps_LeafTrapEffectClient(int netID, BOOL isTool, int toolInitialDir);
static void UndergroundTraps_EndSmokeTrapEffectClient(int netID, BOOL allowToolStepBack);
static void UndergroundTraps_EndLeafTrapEffectClient(int netID, BOOL allowToolStepBack);
static void UndergroundTraps_EndAlterMovementTrapEffectClient(int netID, BOOL unused);
static void UndergroundTraps_ForceEndAlterMovementTrapEffectClient(int netID, BOOL unused);
static BuriedTrap *UndergroundTraps_Dummy(BuriedTrap *trap);
static void UndergroundTraps_StartMoveTrapClientTask(FieldSystem *fieldSystem, int netID, int dir, BOOL isHurlTrap);
static void UndergroundTraps_StartSmokeTrapClientTask(FieldSystem *fieldSystem, BOOL isTool, int toolInitialDir);
static BOOL UndergroundTraps_ProcessSmoke(Coordinates2D *touchCoordinates, BgConfig *bgConfig, SmokeTrapContext *ctx);
static BOOL UndergroundTraps_ClearSmoke(int x, int y, u8 *tilemap);
static void UndergroundTraps_SmokeTrapClientTask(SysTask *sysTask, void *data);
static void UndergroundTraps_ResetSmokeTrapTouchCoords(SmokeTrapContext *ctx);
static void UndergroundTraps_StartAlterMovementTrapClientTask(BOOL isReverseTrap);
static void UndergroundTraps_StartLeafTrapClientTask(FieldSystem *fieldSystem, BOOL isTool, int toolInitialDir);
static BOOL UndergroundTraps_ProcessLeaves(BgConfig *unused, LeafTrapContext *ctx);
static void UndergroundTraps_InitSpriteResources(void);
static void UndergroundTraps_DeleteSpritesAndResources(int spriteCount);
static void UndergroundTraps_InitLeafSprites(int leafCount);
static void UndergroundTraps_InitBubbles(BubbleTrapContext *ctx);
static void UndergroundTraps_BubbleTrapClientTask(SysTask *sysTask, void *data);
static void UndergroundTraps_StartBubbleTrapClientTask(BgConfig *unused, BOOL isTool, int toolInitialDir);
static void UndergroundTraps_InitBubbleSprites(BubbleTrapContext *ctx);
static void UndergroundTraps_UpdateBubbleSprite(int index, BubbleTrapContext *ctx);
static BOOL UndergroundTraps_ProcessBubbles(BgConfig *unused, BubbleTrapContext *ctx);
static void UndergroundTraps_BubbleTrapEffectClient(int netID, BOOL isTool, int toolInitialDir);
static void UndergroundTraps_BubbleTrapEffectServer(int netID);
static void UndergroundTraps_EndBubbleTrapEffectClient(int netID, BOOL allowToolStepBack);
static void UndergroundTraps_EndMoveTrapEffectServer(int netID);
static void UndergroundTraps_EndAlteredMovementTrapEffectServer(int netID);
static void UndergroundTraps_ForceEndHoleTrapEffectClient(int netID, BOOL isTool);
static void EscapeHole(int netID);
static void UndergroundTraps_EndHoleTrapEffectClient(int netID, BOOL unused);
static void UndergroundTraps_PitTrapEffectClient(int netID, BOOL isTool, int toolInitialDir);
static void UndergroundTraps_HoleTrapEffectClient(int netID, BOOL isTool, int toolInitialDir);
static void UndergroundTraps_EndHoleTrapEffectServer(int netID);
static void UndergroundTraps_PitTrapEffectServer(int netID);
static void UndergroundTraps_HoleTrapEffectServer(int netID);
static void UndergroundTraps_RockTrapEffectClient(int netID, BOOL isTool, int toolInitialDir);
static void UndergroundTraps_EndRockTrapEffectClient(int netID, BOOL allowToolStepBack);
static void UndergroundTraps_RockTrapEffectServer(int netID);
static void UndergroundTraps_FireTrapEffectClient(int netID, BOOL isTool, int toolInitialDir);
static void UndergroundTraps_EndFireTrapEffectClient(int netID, BOOL allowToolStepBack);
static void UndergroundTraps_FireTrapEffectServer(int netID);
static void UndergroundTraps_AlertTrapEffectClient(int netID, BOOL isTool, int toolInitialDir);
static void UndergroundTraps_EndAlertTrapEffectClient(int netID, BOOL allowToolStepBack);
static void UndergroundTraps_AlertTrapEffectServer(int netID);
static void UndergroundTraps_StartLinkSpinTask(int netID, int trapID);
static void UndergroundTraps_StopAllLinkSpin(void);

static TrapsEnv *trapsEnv = NULL;
static s8 sMicSample ATTRIBUTE_ALIGN(32);

static const EndTrapEffectClientFunc sEndTrapEffectClientFuncs[] = {
    [TRAP_NONE] = NULL,
    [TRAP_MOVE_UP] = UndergroundTraps_EndMoveTrapEffectClient,
    [TRAP_MOVE_RIGHT] = UndergroundTraps_EndMoveTrapEffectClient,
    [TRAP_MOVE_DOWN] = UndergroundTraps_EndMoveTrapEffectClient,
    [TRAP_MOVE_LEFT] = UndergroundTraps_EndMoveTrapEffectClient,
    [TRAP_HURL_UP] = UndergroundTraps_EndMoveTrapEffectClient,
    [TRAP_HURL_RIGHT] = UndergroundTraps_EndMoveTrapEffectClient,
    [TRAP_HURL_DOWN] = UndergroundTraps_EndMoveTrapEffectClient,
    [TRAP_HURL_LEFT] = UndergroundTraps_EndMoveTrapEffectClient,
    [TRAP_WARP_DUMMY] = NULL,
    [TRAP_HI_WARP_DUMMY] = NULL,
    [TRAP_HOLE] = UndergroundTraps_EndHoleTrapEffectClient,
    [TRAP_PIT] = UndergroundTraps_EndHoleTrapEffectClient,
    [TRAP_REVERSE] = UndergroundTraps_EndAlterMovementTrapEffectClient,
    [TRAP_CONFUSE] = UndergroundTraps_EndAlterMovementTrapEffectClient,
    [TRAP_RUN_DUMMY] = NULL,
    [TRAP_FADE_DUMMY] = NULL,
    [TRAP_SLOW_DUMMY] = NULL,
    [TRAP_SMOKE] = UndergroundTraps_EndSmokeTrapEffectClient,
    [TRAP_BIG_SMOKE] = UndergroundTraps_EndSmokeTrapEffectClient,
    [TRAP_ROCK] = UndergroundTraps_EndRockTrapEffectClient,
    [TRAP_ROCKFALL] = UndergroundTraps_EndRockTrapEffectClient,
    [TRAP_FOAM] = UndergroundTraps_EndBubbleTrapEffectClient,
    [TRAP_BUBBLE] = UndergroundTraps_EndBubbleTrapEffectClient,
    [TRAP_ALERT_1] = UndergroundTraps_EndAlertTrapEffectClient,
    [TRAP_ALERT_2] = UndergroundTraps_EndAlertTrapEffectClient,
    [TRAP_ALERT_3] = UndergroundTraps_EndAlertTrapEffectClient,
    [TRAP_ALERT_4] = UndergroundTraps_EndAlertTrapEffectClient,
    [TRAP_LEAF] = UndergroundTraps_EndLeafTrapEffectClient,
    [TRAP_FLOWER] = UndergroundTraps_EndLeafTrapEffectClient,
    [TRAP_EMBER] = UndergroundTraps_EndFireTrapEffectClient,
    [TRAP_FIRE] = UndergroundTraps_EndFireTrapEffectClient,
    [TRAP_RADAR_DUMMY] = NULL,
    [TRAP_DIGGER_DRILL] = NULL,
    NULL
};

static const EndTrapEffectClientFunc sForceEndTrapEffectClientFuncs[] = {
    [TRAP_NONE] = NULL,
    [TRAP_MOVE_UP] = UndergroundTraps_ForceEndMoveTrapEffectClient,
    [TRAP_MOVE_RIGHT] = UndergroundTraps_ForceEndMoveTrapEffectClient,
    [TRAP_MOVE_DOWN] = UndergroundTraps_ForceEndMoveTrapEffectClient,
    [TRAP_MOVE_LEFT] = UndergroundTraps_ForceEndMoveTrapEffectClient,
    [TRAP_HURL_UP] = UndergroundTraps_ForceEndMoveTrapEffectClient,
    [TRAP_HURL_RIGHT] = UndergroundTraps_ForceEndMoveTrapEffectClient,
    [TRAP_HURL_DOWN] = UndergroundTraps_ForceEndMoveTrapEffectClient,
    [TRAP_HURL_LEFT] = UndergroundTraps_ForceEndMoveTrapEffectClient,
    [TRAP_WARP_DUMMY] = NULL,
    [TRAP_HI_WARP_DUMMY] = NULL,
    [TRAP_HOLE] = UndergroundTraps_ForceEndHoleTrapEffectClient,
    [TRAP_PIT] = UndergroundTraps_ForceEndHoleTrapEffectClient,
    [TRAP_REVERSE] = UndergroundTraps_ForceEndAlterMovementTrapEffectClient,
    [TRAP_CONFUSE] = UndergroundTraps_ForceEndAlterMovementTrapEffectClient,
    [TRAP_RUN_DUMMY] = NULL,
    [TRAP_FADE_DUMMY] = NULL,
    [TRAP_SLOW_DUMMY] = NULL,
    [TRAP_SMOKE] = UndergroundTraps_EndSmokeTrapEffectClient,
    [TRAP_BIG_SMOKE] = UndergroundTraps_EndSmokeTrapEffectClient,
    [TRAP_ROCK] = UndergroundTraps_EndRockTrapEffectClient,
    [TRAP_ROCKFALL] = UndergroundTraps_EndRockTrapEffectClient,
    [TRAP_FOAM] = UndergroundTraps_EndBubbleTrapEffectClient,
    [TRAP_BUBBLE] = UndergroundTraps_EndBubbleTrapEffectClient,
    [TRAP_ALERT_1] = UndergroundTraps_EndAlertTrapEffectClient,
    [TRAP_ALERT_2] = UndergroundTraps_EndAlertTrapEffectClient,
    [TRAP_ALERT_3] = UndergroundTraps_EndAlertTrapEffectClient,
    [TRAP_ALERT_4] = UndergroundTraps_EndAlertTrapEffectClient,
    [TRAP_LEAF] = UndergroundTraps_EndLeafTrapEffectClient,
    [TRAP_FLOWER] = UndergroundTraps_EndLeafTrapEffectClient,
    [TRAP_EMBER] = UndergroundTraps_EndFireTrapEffectClient,
    [TRAP_FIRE] = UndergroundTraps_EndFireTrapEffectClient,
    [TRAP_RADAR_DUMMY] = NULL,
    [TRAP_DIGGER_DRILL] = NULL,
    NULL
};

static const TrapEffectClientFunc sTrapEffectClientFuncs[] = {
    [TRAP_NONE] = NULL,
    [TRAP_MOVE_UP] = UndergroundTraps_MoveTrapUpEffectClient,
    [TRAP_MOVE_RIGHT] = UndergroundTraps_MoveTrapRightEffectClient,
    [TRAP_MOVE_DOWN] = UndergroundTraps_MoveTrapDownEffectClient,
    [TRAP_MOVE_LEFT] = UndergroundTraps_MoveTrapLeftEffectClient,
    [TRAP_HURL_UP] = UndergroundTraps_HurlTrapUpEffectClient,
    [TRAP_HURL_RIGHT] = UndergroundTraps_HurlTrapRightEffectClient,
    [TRAP_HURL_DOWN] = UndergroundTraps_HurlTrapDownEffectClient,
    [TRAP_HURL_LEFT] = UndergroundTraps_HurlTrapLeftEffectClient,
    [TRAP_WARP_DUMMY] = NULL,
    [TRAP_HI_WARP_DUMMY] = NULL,
    [TRAP_HOLE] = UndergroundTraps_HoleTrapEffectClient,
    [TRAP_PIT] = UndergroundTraps_PitTrapEffectClient,
    [TRAP_REVERSE] = UndergroundTraps_ReverseTrapEffectClient,
    [TRAP_CONFUSE] = UndergroundTraps_ConfuseTrapEffectClient,
    [TRAP_RUN_DUMMY] = NULL,
    [TRAP_FADE_DUMMY] = NULL,
    [TRAP_SLOW_DUMMY] = NULL,
    [TRAP_SMOKE] = UndergroundTraps_SmokeTrapEffectClient,
    [TRAP_BIG_SMOKE] = UndergroundTraps_SmokeTrapEffectClient,
    [TRAP_ROCK] = UndergroundTraps_RockTrapEffectClient,
    [TRAP_ROCKFALL] = UndergroundTraps_RockTrapEffectClient,
    [TRAP_FOAM] = UndergroundTraps_BubbleTrapEffectClient,
    [TRAP_BUBBLE] = UndergroundTraps_BubbleTrapEffectClient,
    [TRAP_ALERT_1] = UndergroundTraps_AlertTrapEffectClient,
    [TRAP_ALERT_2] = UndergroundTraps_AlertTrapEffectClient,
    [TRAP_ALERT_3] = UndergroundTraps_AlertTrapEffectClient,
    [TRAP_ALERT_4] = UndergroundTraps_AlertTrapEffectClient,
    [TRAP_LEAF] = UndergroundTraps_LeafTrapEffectClient,
    [TRAP_FLOWER] = UndergroundTraps_LeafTrapEffectClient,
    [TRAP_EMBER] = UndergroundTraps_FireTrapEffectClient,
    [TRAP_FIRE] = UndergroundTraps_FireTrapEffectClient,
    [TRAP_RADAR_DUMMY] = NULL,
    [TRAP_DIGGER_DRILL] = UndergroundTraps_DummyClient,
    NULL
};

static const TrapServerFunc sTrapEffectServerFuncs[] = {
    [TRAP_NONE] = NULL,
    [TRAP_MOVE_UP] = UndergroundTraps_MoveTrapEffectServer,
    [TRAP_MOVE_RIGHT] = UndergroundTraps_MoveTrapEffectServer,
    [TRAP_MOVE_DOWN] = UndergroundTraps_MoveTrapEffectServer,
    [TRAP_MOVE_LEFT] = UndergroundTraps_MoveTrapEffectServer,
    [TRAP_HURL_UP] = UndergroundTraps_MoveTrapEffectServer,
    [TRAP_HURL_RIGHT] = UndergroundTraps_MoveTrapEffectServer,
    [TRAP_HURL_DOWN] = UndergroundTraps_MoveTrapEffectServer,
    [TRAP_HURL_LEFT] = UndergroundTraps_MoveTrapEffectServer,
    [TRAP_WARP_DUMMY] = NULL,
    [TRAP_HI_WARP_DUMMY] = NULL,
    [TRAP_HOLE] = UndergroundTraps_HoleTrapEffectServer,
    [TRAP_PIT] = UndergroundTraps_PitTrapEffectServer,
    [TRAP_REVERSE] = UndergroundTraps_ReverseTrapEffectServer,
    [TRAP_CONFUSE] = UndergroundTraps_ConfuseTrapEffectServer,
    [TRAP_RUN_DUMMY] = NULL,
    [TRAP_FADE_DUMMY] = NULL,
    [TRAP_SLOW_DUMMY] = NULL,
    [TRAP_SMOKE] = UndergroundTraps_SmokeTrapEffectServer,
    [TRAP_BIG_SMOKE] = UndergroundTraps_SmokeTrapEffectServer,
    [TRAP_ROCK] = UndergroundTraps_RockTrapEffectServer,
    [TRAP_ROCKFALL] = UndergroundTraps_RockTrapEffectServer,
    [TRAP_FOAM] = UndergroundTraps_BubbleTrapEffectServer,
    [TRAP_BUBBLE] = UndergroundTraps_BubbleTrapEffectServer,
    [TRAP_ALERT_1] = UndergroundTraps_AlertTrapEffectServer,
    [TRAP_ALERT_2] = UndergroundTraps_AlertTrapEffectServer,
    [TRAP_ALERT_3] = UndergroundTraps_AlertTrapEffectServer,
    [TRAP_ALERT_4] = UndergroundTraps_AlertTrapEffectServer,
    [TRAP_LEAF] = UndergroundTraps_LeafTrapEffectServer,
    [TRAP_FLOWER] = UndergroundTraps_LeafTrapEffectServer,
    [TRAP_EMBER] = UndergroundTraps_FireTrapEffectServer,
    [TRAP_FIRE] = UndergroundTraps_FireTrapEffectServer,
    [TRAP_RADAR_DUMMY] = NULL,
    [TRAP_DIGGER_DRILL] = UndergroundTraps_DummyServer,
    NULL
};

static const TrapServerFunc sTrapEffectServerSecondFuncs[] = {
    [TRAP_NONE] = NULL,
    [TRAP_MOVE_UP] = UndergroundTraps_MoveTrapUpEffectServer,
    [TRAP_MOVE_RIGHT] = UndergroundTraps_MoveTrapRightEffectServer,
    [TRAP_MOVE_DOWN] = UndergroundTraps_MoveTrapDownEffectServer,
    [TRAP_MOVE_LEFT] = UndergroundTraps_MoveTrapLeftEffectServer,
    [TRAP_HURL_UP] = UndergroundTraps_HurlTrapUpEffectServer,
    [TRAP_HURL_RIGHT] = UndergroundTraps_HurlTrapRightEffectServer,
    [TRAP_HURL_DOWN] = UndergroundTraps_HurlTrapDownEffectServer,
    [TRAP_HURL_LEFT] = UndergroundTraps_HurlTrapLeftEffectServer,
    [TRAP_WARP_DUMMY] = NULL,
    [TRAP_HI_WARP_DUMMY] = NULL,
    [TRAP_HOLE] = NULL,
    [TRAP_PIT] = NULL,
    [TRAP_REVERSE] = NULL,
    [TRAP_CONFUSE] = NULL,
    [TRAP_RUN_DUMMY] = NULL,
    [TRAP_FADE_DUMMY] = NULL,
    [TRAP_SLOW_DUMMY] = NULL,
    [TRAP_SMOKE] = NULL,
    [TRAP_BIG_SMOKE] = NULL,
    [TRAP_ROCK] = NULL,
    [TRAP_ROCKFALL] = NULL,
    [TRAP_FOAM] = NULL,
    [TRAP_BUBBLE] = NULL,
    [TRAP_ALERT_1] = NULL,
    [TRAP_ALERT_2] = NULL,
    [TRAP_ALERT_3] = NULL,
    [TRAP_ALERT_4] = NULL,
    [TRAP_LEAF] = NULL,
    [TRAP_FLOWER] = NULL,
    [TRAP_EMBER] = NULL,
    [TRAP_FIRE] = NULL,
    [TRAP_RADAR_DUMMY] = NULL,
    [TRAP_DIGGER_DRILL] = NULL,
    NULL
};

static const TrapServerFunc sEndTrapEffectServerFuncs[] = {
    [TRAP_NONE] = NULL,
    [TRAP_MOVE_UP] = UndergroundTraps_EndMoveTrapEffectServer,
    [TRAP_MOVE_RIGHT] = UndergroundTraps_EndMoveTrapEffectServer,
    [TRAP_MOVE_DOWN] = UndergroundTraps_EndMoveTrapEffectServer,
    [TRAP_MOVE_LEFT] = UndergroundTraps_EndMoveTrapEffectServer,
    [TRAP_HURL_UP] = UndergroundTraps_EndMoveTrapEffectServer,
    [TRAP_HURL_RIGHT] = UndergroundTraps_EndMoveTrapEffectServer,
    [TRAP_HURL_DOWN] = UndergroundTraps_EndMoveTrapEffectServer,
    [TRAP_HURL_LEFT] = UndergroundTraps_EndMoveTrapEffectServer,
    [TRAP_WARP_DUMMY] = NULL,
    [TRAP_HI_WARP_DUMMY] = NULL,
    [TRAP_HOLE] = UndergroundTraps_EndHoleTrapEffectServer,
    [TRAP_PIT] = UndergroundTraps_EndHoleTrapEffectServer,
    [TRAP_REVERSE] = UndergroundTraps_EndAlteredMovementTrapEffectServer,
    [TRAP_CONFUSE] = UndergroundTraps_EndAlteredMovementTrapEffectServer,
    [TRAP_RUN_DUMMY] = NULL,
    [TRAP_FADE_DUMMY] = NULL,
    [TRAP_SLOW_DUMMY] = NULL,
    [TRAP_SMOKE] = NULL,
    [TRAP_BIG_SMOKE] = NULL,
    [TRAP_ROCK] = NULL,
    [TRAP_ROCKFALL] = NULL,
    [TRAP_FOAM] = NULL,
    [TRAP_BUBBLE] = NULL,
    [TRAP_ALERT_1] = NULL,
    [TRAP_ALERT_2] = NULL,
    [TRAP_ALERT_3] = NULL,
    [TRAP_ALERT_4] = NULL,
    [TRAP_LEAF] = NULL,
    [TRAP_FLOWER] = NULL,
    [TRAP_EMBER] = NULL,
    [TRAP_FIRE] = NULL,
    [TRAP_RADAR_DUMMY] = NULL,
    [TRAP_DIGGER_DRILL] = NULL,
    NULL
};

static void UndergroundTraps_LoadCurrentPlayerPlacedTraps(void)
{
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(trapsEnv->fieldSystem));

    for (int i = 0; i < MAX_PLACED_TRAPS; i++) {
        trapsEnv->playerPlacedTraps[i].trapID = Underground_GetPlacedTrapIDAtIndex(underground, i);
        trapsEnv->playerPlacedTraps[i].x = Underground_GetPlacedTrapXCoordAtIndex(underground, i);
        trapsEnv->playerPlacedTraps[i].z = Underground_GetPlacedTrapZCoordAtIndex(underground, i);
        trapsEnv->playerPlacedTraps[i].spawnedTrapIndex = sub_0202907C(underground, i);

        if (!trapsEnv->graphicsDisabled) {
            if (trapsEnv->playerPlacedTraps[i].trapID != TRAP_NONE) {
                trapsEnv->trapTextureManager[i] = UndergroundTraps_DrawPlacedTrap(trapsEnv->playerPlacedTraps[i].x, trapsEnv->playerPlacedTraps[i].z, 1, trapsEnv->playerPlacedTraps[i].trapID);
            }
        }
    }
}

void TrapsEnv_Init(void *dest, FieldSystem *fieldSystem)
{
    if (trapsEnv) {
        return;
    }

    trapsEnv = (TrapsEnv *)dest;
    ;
    MI_CpuFill8(trapsEnv, 0, sizeof(TrapsEnv));
    trapsEnv->fieldSystem = fieldSystem;

    Underground *unused = SaveData_GetUnderground(FieldSystem_GetSaveData(fieldSystem));

    trapsEnv->trapEffectTask = NULL;

    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        trapsEnv->helpedNetIDs[netID] = 0xFF;
    }

    fieldSystem->unk_8C = ov5_021EB0C8(fieldSystem->camera);

    UndergroundTraps_InitRadarSpriteResources();
    UndergroundTraps_LoadCurrentPlayerPlacedTraps();
}

void UndergroundTraps_DisableTrapGraphics(void)
{
    ov5_021EB184(&trapsEnv->fieldSystem->unk_8C);
    UndergroundTraps_DeleteRadarSpriteResources();
    UndergroundTraps_StopAllLinkSpin();

    for (int i = 0; i < MAX_PLACED_TRAPS; i++) {
        if (trapsEnv->trapTextureManager[i]) {
            trapsEnv->trapTextureManager[i] = NULL;
        }
    }

    if (trapsEnv->trapEffectTask) {
        SysTask_Done(trapsEnv->trapEffectTask);
        trapsEnv->trapEffectTask = NULL;
    }

    if (trapsEnv->currentTrapContext) {
        Heap_Free(trapsEnv->currentTrapContext);
        trapsEnv->currentTrapContext = NULL;
    }

    trapsEnv->graphicsDisabled = TRUE;
}

void UndergroundTraps_EnableTrapGraphics(void)
{
    trapsEnv->fieldSystem->unk_8C = ov5_021EB0C8(trapsEnv->fieldSystem->camera);
    trapsEnv->graphicsDisabled = FALSE;

    UndergroundTraps_LoadCurrentPlayerPlacedTraps();
    UndergroundTraps_InitRadarSpriteResources();
}

void TrapsEnv_Free(void)
{
    for (int i = 0; i < MAX_PLACED_TRAPS; i++) {
        if (trapsEnv->trapTextureManager[i]) {
            OverworldAnimManager_Finish(trapsEnv->trapTextureManager[i]);
            trapsEnv->trapTextureManager[i] = NULL;
        }
    }

    UndergroundTraps_StopAllLinkSpin();
    UndergroundTraps_DeleteRadarSpriteResources();

    ov5_021EB184(&trapsEnv->fieldSystem->unk_8C);

    if (trapsEnv->retrievedTrapCount >= 10) {
        sub_0206DEEC(trapsEnv->fieldSystem, trapsEnv->retrievedTrapID, trapsEnv->retrievedTrapCount);
    }

    if (trapsEnv->trapEffectTask) {
        SysTask_Done(trapsEnv->trapEffectTask);
    }

    if (trapsEnv->currentTrapContext) {
        Heap_Free(trapsEnv->currentTrapContext);
    }

    Heap_Free(trapsEnv);
    trapsEnv = NULL;
}

void UndergroundTraps_Reinit(FieldSystem *fieldSystem)
{
    for (int i = 0; i < MAX_PLACED_TRAPS; i++) {
        if (trapsEnv->trapTextureManager[i]) {
            OverworldAnimManager_Finish(trapsEnv->trapTextureManager[i]);
            trapsEnv->trapTextureManager[i] = NULL;
        }
    }

    UndergroundTraps_StopAllLinkSpin();
    UndergroundTraps_LoadCurrentPlayerPlacedTraps();

    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        trapsEnv->triggeredTrapIDs[netID] = TRAP_NONE;
    }

    MI_CpuFill8(trapsEnv->buriedTraps, 0, sizeof(trapsEnv->buriedTraps));
    MI_CpuFill8(trapsEnv->buriedTrapsByCoordinates, 0, sizeof(trapsEnv->buriedTrapsByCoordinates));

    UndergroundTraps_LoadSpawnedTraps();
}

void UndergroundTraps_RemoveLinkData(int netID)
{
    BuriedTrap *trapPtr = &trapsEnv->buriedTraps[netID * MAX_PLACED_TRAPS];

    for (int i = 0; i < MAX_PLACED_TRAPS; i++) {
        trapPtr->trapID = TRAP_NONE;
        trapPtr++;
    }

    UndergroundTraps_ResetPlayerTrapsCoordinateOrdering(netID);

    if (trapsEnv->triggeredTrapIDs[netID] != TRAP_NONE) {
        ov23_RevertPlayerStatusToNormal(netID);
        UndergroundTraps_EndTrapEffectServer(netID, trapsEnv->triggeredTrapIDs[netID]);
        trapsEnv->triggeredTrapIDs[netID] = TRAP_NONE;
    }
}

static void UndergroundTraps_InitRadarSpriteResources(void)
{
    for (int resourceType = SPRITE_RESOURCE_CHAR; resourceType < SPRITE_RESOURCE_ANIM + 1; resourceType++) {
        trapsEnv->spriteResourceCollection[RADAR_RESOURCES][resourceType] = SpriteResourceCollection_New(1, resourceType, HEAP_ID_FIELD1);
    }

    NARC *narc = NARC_ctor(NARC_INDEX_DATA__UG_TRAP, HEAP_ID_FIELD1);

    trapsEnv->spriteResources[RADAR_RESOURCES][SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTilesFrom(trapsEnv->spriteResourceCollection[RADAR_RESOURCES][SPRITE_RESOURCE_CHAR], narc, radar_NCGR, FALSE, 0, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_FIELD1);
    trapsEnv->spriteResources[RADAR_RESOURCES][SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPaletteFrom(trapsEnv->spriteResourceCollection[RADAR_RESOURCES][SPRITE_RESOURCE_PLTT], narc, radar_NCLR, FALSE, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 7, HEAP_ID_FIELD1);
    trapsEnv->spriteResources[RADAR_RESOURCES][SPRITE_RESOURCE_CELL] = SpriteResourceCollection_AddFrom(trapsEnv->spriteResourceCollection[RADAR_RESOURCES][SPRITE_RESOURCE_CELL], narc, radar_cell_NCER, FALSE, 0, SPRITE_RESOURCE_CELL, HEAP_ID_FIELD1);
    trapsEnv->spriteResources[RADAR_RESOURCES][SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_AddFrom(trapsEnv->spriteResourceCollection[RADAR_RESOURCES][SPRITE_RESOURCE_ANIM], narc, radar_anim_NANR, FALSE, 0, SPRITE_RESOURCE_ANIM, HEAP_ID_FIELD1);

    NARC_dtor(narc);
}

static void UndergroundTraps_DeleteRadarSpriteResources()
{
    for (int resourceType = SPRITE_RESOURCE_CHAR; resourceType < SPRITE_RESOURCE_ANIM + 1; resourceType++) {
        SpriteResourceCollection_Delete(trapsEnv->spriteResourceCollection[RADAR_RESOURCES][resourceType]);
    }
}

static void UndergroundTraps_ResumeFieldSystem(int unused)
{
    CommPlayerMan_ResumeFieldSystem();
}

int TrapsEnv_Size(void)
{
    return sizeof(TrapsEnv);
}

int CommPacketSizeOf_AllTrapsPlacedPlayer(void)
{
    return sizeof(BuriedTrap) * MAX_PLACED_TRAPS;
}

static Coordinates *UndergroundTraps_GetCoordinatesOfBuriedTrapAtOrderedIndex(Coordinates *coordinates, int index)
{
    if (trapsEnv->buriedTrapsByCoordinates[index] == NULL) {
        return NULL;
    }

    coordinates->x = trapsEnv->buriedTrapsByCoordinates[index]->x;
    coordinates->z = trapsEnv->buriedTrapsByCoordinates[index]->z;

    return coordinates;
}

static void UndergroundTraps_AddBuriedTrapToCoordinatesOrdering(BuriedTrap *trap)
{
    Coordinates coordinates = {
        .x = trap->x,
        .z = trap->z
    };

    Underground_InitCoordinatesOrderingState(MAX_BURIED_TRAPS, UndergroundTraps_GetCoordinatesOfBuriedTrapAtOrderedIndex);

    int index = Underground_CalculateCoordinatesIndexInsert(&coordinates);

    if (index >= MAX_BURIED_TRAPS) {
        return;
    }

    for (int i = 0; i < MAX_BURIED_TRAPS; i++) {
        if (trapsEnv->buriedTrapsByCoordinates[i] == trap) {
            return;
        }
    }

    for (int i = MAX_BURIED_TRAPS - 2; i >= index; i--) {
        trapsEnv->buriedTrapsByCoordinates[i + 1] = trapsEnv->buriedTrapsByCoordinates[i];
    }

    trapsEnv->buriedTrapsByCoordinates[index] = trap;
    trapsEnv->buriedTrapsByCoordinates[index] = trap;
}

static void UndergroundTraps_RemoveBuriedTrapFromCoordinatesOrdering(BuriedTrap *trap)
{
    int index = -1, i;

    for (i = 0; i < MAX_BURIED_TRAPS; i++) {
        if (trapsEnv->buriedTrapsByCoordinates[i] == trap) {
            index = i;
            break;
        }
    }

    if (index == -1) {
        return;
    }

    for (i = index; i < MAX_BURIED_TRAPS - 1; i++) {
        trapsEnv->buriedTrapsByCoordinates[i] = trapsEnv->buriedTrapsByCoordinates[i + 1];
    }

    trapsEnv->buriedTrapsByCoordinates[MAX_BURIED_TRAPS - 1] = NULL;
}

static void UndergroundTraps_ResetPlayerTrapsCoordinateOrdering(int netID)
{
    int i;

    for (i = 0; i < MAX_PLACED_TRAPS; i++) {
        UndergroundTraps_RemoveBuriedTrapFromCoordinatesOrdering(&trapsEnv->buriedTraps[netID * MAX_PLACED_TRAPS + i]);
    }

    for (i = 0; i < MAX_PLACED_TRAPS; i++) {
        if (trapsEnv->buriedTraps[netID * MAX_PLACED_TRAPS + i].trapID != TRAP_NONE) {
            UndergroundTraps_AddBuriedTrapToCoordinatesOrdering(&trapsEnv->buriedTraps[netID * MAX_PLACED_TRAPS + i]);
        }
    }
}

static BuriedTrap *UndergroundTraps_FindEmptyBuriedTrapSlot(BuriedTrap *trapPtr)
{
    for (int i = 0; i < MAX_PLACED_TRAPS; i++) {
        if (trapPtr->trapID == TRAP_NONE) {
            return trapPtr;
        }

        trapPtr++;
    }

    return NULL;
}

static int UndergroundTraps_FindEmptyBuriedTrapIndex(BuriedTrap *trapPtr)
{
    for (int i = 0; i < MAX_PLACED_TRAPS; i++) {
        if (trapPtr->trapID == TRAP_NONE) {
            return i;
        }

        trapPtr++;
    }

    return -1;
}

static void UndergroundTraps_RemoveBuriedTrap(BuriedTrap *trap)
{
    u32 start = (u32)&trapsEnv->buriedTraps[0];
    u32 index = ((u32)trap - start) / sizeof(BuriedTrap);
    u32 netID = index / MAX_PLACED_TRAPS;
    u32 nextPlayerTrapsStart = (netID + 1) * MAX_PLACED_TRAPS;

    trapsEnv->buriedTraps[index].trapID = TRAP_NONE;

    for (int i = index; i < nextPlayerTrapsStart - 1; i++) {
        MI_CpuCopy8(&trapsEnv->buriedTraps[i + 1], &trapsEnv->buriedTraps[i], sizeof(BuriedTrap));
    }

    trapsEnv->buriedTraps[nextPlayerTrapsStart - 1].trapID = TRAP_NONE;

    UndergroundTraps_ResetPlayerTrapsCoordinateOrdering(netID);
}

static BuriedTrap *UndergroundTraps_AddBuriedTrap(int x, int z, BuriedTrap *dest, int trapID)
{
    if (TerrainCollisionManager_CheckCollision(trapsEnv->fieldSystem, x, z)) {
        return NULL;
    }

    BuriedTrap *trap = UndergroundTraps_FindEmptyBuriedTrapSlot(dest);

    if (trap == NULL) {
        dest = UndergroundTraps_Dummy(dest);
        UndergroundTraps_RemoveBuriedTrap(dest);
        trap = UndergroundTraps_FindEmptyBuriedTrapSlot(dest);
    }

    trap->x = x;
    trap->z = z;
    trap->trapID = trapID;

    UndergroundTraps_AddBuriedTrapToCoordinatesOrdering(trap);

    return trap;
}

void Underground_SendPlacedTrap(u8 trapID)
{
    CommSys_SendDataFixedSize(32, &trapID);
}

void UndergroundTraps_SendTrapRadarResults(void)
{
    SendTrapRadarResults();
}

void UndergroundTraps_SendPlacedTraps(void)
{
    CommSys_WriteToQueue(35, &trapsEnv->playerPlacedTraps[0], sizeof(BuriedTrap) * MAX_PLACED_TRAPS);
}

void UndergroundTraps_TryPlaceTrap(int netID, int unused1, void *data, void *unused3)
{
    u8 *trapID = (u8 *)data;

    if (trapsEnv == NULL) {
        return;
    }

    PlaceTrapResult placeResult;
    placeResult.netID = netID;
    placeResult.result = PLACE_TRAP_SOMETHING_ALREADY_BURIED;

    int x = CommPlayer_GetXInFrontOfPlayerServer(netID);
    int z = CommPlayer_GetZInFrontOfPlayerServer(netID);

    if (CommPlayer_GetXServer(netID) == 0xFFFF && CommPlayer_GetZServer(netID) == 0xFFFF) {
        placeResult.result = PLACE_TRAP_FAIL;
        CommSys_SendDataServer(34, &placeResult, sizeof(PlaceTrapResult));
        return;
    }

    if (CommPlayerMan_GetLinkNetIDAtLocation(x, z) != 0xFF) {
        placeResult.result = PLACE_TRAP_PERSON_IN_WAY;
        CommSys_SendDataServer(34, &placeResult, sizeof(PlaceTrapResult));
        return;
    }

    if (CommPlayer_CheckNPCCollision(x, z)) {
        placeResult.result = PLACE_TRAP_PERSON_IN_WAY;
        CommSys_SendDataServer(34, &placeResult, sizeof(PlaceTrapResult));
        return;
    }

    if (Underground_AreCoordinatesInSecretBase(x, z)) {
        placeResult.result = PLACE_TRAP_NOT_IN_SECRET_BASE;
        CommSys_SendDataServer(34, &placeResult, sizeof(PlaceTrapResult));
        return;
    }

    if (TerrainCollisionManager_CheckCollision(trapsEnv->fieldSystem, x, z)) {
        placeResult.result = PLACE_TRAP_WALL_IN_WAY;
        CommSys_SendDataServer(34, &placeResult, sizeof(PlaceTrapResult));
        return;
    }

    // effectively only checks for existing trap, other checks in this function are already covered above
    if (!ov23_0224240C(x, z)) {
        BuriedTrap *trap = UndergroundTraps_AddBuriedTrap(x, z, &trapsEnv->buriedTraps[netID * MAX_PLACED_TRAPS], *trapID);

        if (trap) {
            placeResult.result = PLACE_TRAP_SUCCESS;
            MI_CpuCopy8(trap, &placeResult.trap, sizeof(BuriedTrap));
        }
    }

    CommSys_SendDataServer(34, &placeResult, sizeof(PlaceTrapResult));
}

int CommPacketSizeOf_PlaceTrapResult(void)
{
    return sizeof(PlaceTrapResult);
}

int UndergroundTraps_SpawnRandomTrap(int x, int z, MATHRandContext16 *rand, int index)
{
    static const u8 traps[] = {
        TRAP_MOVE_UP,
        TRAP_MOVE_RIGHT,
        TRAP_MOVE_DOWN,
        TRAP_MOVE_LEFT,
        TRAP_HURL_UP,
        TRAP_HURL_RIGHT,
        TRAP_HURL_DOWN,
        TRAP_HURL_LEFT,
        TRAP_HOLE,
        TRAP_PIT,
        TRAP_REVERSE,
        TRAP_CONFUSE,
        TRAP_SMOKE,
        TRAP_BIG_SMOKE,
        TRAP_BUBBLE,
        TRAP_FLOWER,
        TRAP_ALERT_1,
        TRAP_ALERT_2,
        TRAP_ALERT_3,
        TRAP_ALERT_4,
        TRAP_EMBER,
        TRAP_FIRE,
        TRAP_ROCK,
        TRAP_ROCKFALL,
        TRAP_FOAM,
        TRAP_LEAF
    };

    Underground *underground = SaveData_GetUnderground(trapsEnv->fieldSystem->saveData);

    if (index >= MAX_SPAWNED_TRAPS) {
        return TRAP_NONE;
    }

    int destIndex = (MAX_CONNECTED_PLAYERS + index / MAX_PLACED_TRAPS) * MAX_PLACED_TRAPS;
    BuriedTrap *dest = &trapsEnv->buriedTraps[destIndex];
    u8 randomIndex = MATH_Rand16(rand, NELEMS(traps));
    u8 trapID = traps[randomIndex];

    if (!ov23_0224240C(x, z)) {
        BuriedTrap *emptySlot = UndergroundTraps_FindEmptyBuriedTrapSlot(dest);

        if (emptySlot != NULL) {
            BuriedTrap *trap = UndergroundTraps_AddBuriedTrap(x, z, dest, trapID);

            if (trap) {
                trap->spawnedTrapIndex = index;

                Underground_SaveSpawnedTrap(underground, trapID, index, x, z);
                return trapID;
            }
        }
    }

    return TRAP_NONE;
}

void UndergroundTraps_LoadSpawnedTraps(void)
{
    int i;
    Underground *underground = SaveData_GetUnderground(trapsEnv->fieldSystem->saveData);

    for (i = 0; i < MAX_SPAWNED_TRAPS; i++) {
        int trapID = Underground_GetSpawnedTrapIDAtIndex(underground, i);

        if (trapID != TRAP_NONE) {
            int x = Underground_GetSpawnedTrapXCoordAtIndex(underground, i);
            int z = Underground_GetSpawnedTrapZCoordAtIndex(underground, i);
            int index = (MAX_CONNECTED_PLAYERS + i / MAX_PLACED_TRAPS) * MAX_PLACED_TRAPS;
            BuriedTrap *dest = &trapsEnv->buriedTraps[index];
            BuriedTrap *trap = UndergroundTraps_AddBuriedTrap(x, z, dest, trapID);

            if (trap) {
                trap->spawnedTrapIndex = i;
            }
        }
    }
}

static void UndergroundTraps_SavePlacedTrapsCurrentPlayer(void)
{
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(trapsEnv->fieldSystem));

    for (int i = 0; i < MAX_PLACED_TRAPS; i++) {
        Underground_SavePlacedTrap(underground, trapsEnv->playerPlacedTraps[i].trapID, i, trapsEnv->playerPlacedTraps[i].x, trapsEnv->playerPlacedTraps[i].z, trapsEnv->playerPlacedTraps[i].spawnedTrapIndex);
    }
}

static void UndergroundTraps_AddPlacedTrapCurrentPlayer(BuriedTrap *trap)
{
    BuriedTrap *emptySlot = UndergroundTraps_FindEmptyBuriedTrapSlot(trapsEnv->playerPlacedTraps);

    if (emptySlot == NULL) {
        emptySlot = UndergroundTraps_Dummy(trapsEnv->playerPlacedTraps);
        UndergroundTraps_RemovePlacedTrapCurrentPlayer(emptySlot);
        emptySlot = UndergroundTraps_FindEmptyBuriedTrapSlot(trapsEnv->playerPlacedTraps);
    }

    int index = UndergroundTraps_FindEmptyBuriedTrapIndex(trapsEnv->playerPlacedTraps);
    MI_CpuCopy8(trap, emptySlot, sizeof(BuriedTrap));

    UndergroundTraps_SavePlacedTrapsCurrentPlayer();
    trapsEnv->trapTextureManager[index] = UndergroundTraps_DrawPlacedTrap(emptySlot->x, emptySlot->z, 1, emptySlot->trapID);
}

static void UndergroundTraps_RemovePlacedTrapCurrentPlayer(BuriedTrap *trap)
{
    int index = -1, i;

    for (i = 0; i < MAX_PLACED_TRAPS; i++) {
        BuriedTrap *slot = &trapsEnv->playerPlacedTraps[i];

        if (trap->x == slot->x && trap->z == slot->z) {
            index = i;
            break;
        }
    }

    if (index == -1) {
        return;
    }

    for (i = index; i < MAX_PLACED_TRAPS - 1; i++) {
        MI_CpuCopy8(&trapsEnv->playerPlacedTraps[i + 1], &trapsEnv->playerPlacedTraps[i], sizeof(BuriedTrap));
    }

    trapsEnv->playerPlacedTraps[MAX_PLACED_TRAPS - 1].trapID = TRAP_NONE;

    if (trapsEnv->trapTextureManager[index] != NULL) {
        OverworldAnimManager_Finish(trapsEnv->trapTextureManager[index]);
    }

    for (i = index; i < MAX_PLACED_TRAPS - 1; i++) {
        trapsEnv->trapTextureManager[i] = trapsEnv->trapTextureManager[i + 1];
    }

    trapsEnv->trapTextureManager[MAX_PLACED_TRAPS - 1] = NULL;
}

void UndergroundTraps_ProcessPlaceTrapResult(int unused0, int unused1, void *data, void *unused3)
{
    PlaceTrapResult *placeResult = (PlaceTrapResult *)data;

    if (CommSys_CurNetId() == placeResult->netID) {
        CommPlayerMan_PauseFieldSystem();

        if (placeResult->result == PLACE_TRAP_SUCCESS) {
            UndergroundTraps_AddPlacedTrapCurrentPlayer(&placeResult->trap);
            UndergroundMenu_RemoveSelectedTrap(placeResult->trap.trapID);
            UndergroundTextPrinter_SetUndergroundTrapName(CommManUnderground_GetCommonTextPrinter(), placeResult->trap.trapID);
            UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_TrapWasSetInGround, TRUE, UndergroundTraps_ResumeFieldSystem);
            Sound_PlayEffect(SEQ_SE_DP_UG_008);
        } else if (placeResult->result == PLACE_TRAP_NOT_IN_SECRET_BASE) {
            UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_CantPutTrapInSecretBase, TRUE, UndergroundTraps_ResumeFieldSystem);
        } else if (placeResult->result == PLACE_TRAP_PERSON_IN_WAY) {
            UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_CantBePlacedThere, TRUE, UndergroundTraps_ResumeFieldSystem);
        } else if (placeResult->result == PLACE_TRAP_WALL_IN_WAY) {
            UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_CantBuryInWall, TRUE, UndergroundTraps_ResumeFieldSystem);
        } else if (placeResult->result == PLACE_TRAP_FAIL) {
            UndergroundTraps_ResumeFieldSystem(0);
        } else {
            UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_SomethingAlreadyBuried, TRUE, UndergroundTraps_ResumeFieldSystem);
        }
    }
}

void UndergroundTraps_RemoveBuriedTrapAtIndex_Unused(int unused0, int unused1, void *data, void *unused3)
{
    u16 *buffer = data;
    int index = buffer[0];

    UndergroundTraps_RemoveBuriedTrap(&trapsEnv->buriedTraps[index]);
}

int CommPacketSizeOf_2Bytes_Unused(void)
{
    return 2;
}

void UndergroundTraps_LoadLinkPlacedTraps(int netID, int size, void *data, void *unused3)
{
    BuriedTrap *trapPtr = &trapsEnv->buriedTraps[netID * MAX_PLACED_TRAPS];

    if (CommSys_CurNetId() != 0) {
        return;
    }

    GF_ASSERT(size == sizeof(BuriedTrap) * MAX_PLACED_TRAPS);

    for (int i = 0; i < MAX_PLACED_TRAPS; i++) {
        trapPtr->trapID = TRAP_NONE;
        trapPtr++;
    }

    trapPtr = data;

    for (int i = 0; i < MAX_PLACED_TRAPS; i++) {
        if (trapPtr->trapID != TRAP_NONE) {
            UndergroundTraps_AddBuriedTrap(trapPtr->x, trapPtr->z, &trapsEnv->buriedTraps[netID * MAX_PLACED_TRAPS], trapPtr->trapID);
        }

        trapPtr++;
    }

    LoadTrapsResult result;
    result.netID = netID;
    result.success = TRUE;

    CommSys_SendDataServer(36, &result, 2);
    UndergroundTraps_SendTriggeredTrapBits();
}

void UndergroundTraps_ReceiveLoadTrapsResult(int unused0, int unused1, void *data, void *unused3)
{
    LoadTrapsResult *result = data;

    if (trapsEnv) {
        if (CommSys_CurNetId() == result->netID) {
            trapsEnv->linkReceivedPlacedTraps = result->success;
        }
    }
}

int CommPacketSizeOf_LoadTrapsResult(void)
{
    return sizeof(LoadTrapsResult);
}

BOOL UndergroundTraps_GetLinkReceivedPlacedTraps(void)
{
    return trapsEnv->linkReceivedPlacedTraps == TRUE;
}

void UndergroundTraps_SetLinkReceivedPlacedTrapsToFalse(void)
{
    trapsEnv->linkReceivedPlacedTraps = FALSE;
}

int CommPacketSizeOf_Coordinates(void)
{
    return sizeof(Coordinates);
}

BOOL UndergroundTraps_TryDisengageTrap(int netID, Coordinates *unused, u8 bits)
{
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(trapsEnv->fieldSystem));

    int x = CommPlayer_GetXInFrontOfPlayerServer(netID);
    int z = CommPlayer_GetZInFrontOfPlayerServer(netID);
    BuriedTrap *trap = UndergroundTraps_GetTrapAtCoordinates(x, z);

    if (trap) {
        if (ov23_0224A6B8(netID)) {
            return TRUE;
        }

        TriggeredTrap retrievedTrap;
        retrievedTrap.victimNetID = netID;
        retrievedTrap.setterNetID = UndergroundTraps_GetBuriedTrapSetterNetID(trap);

        MI_CpuCopy8(trap, &retrievedTrap.trap, sizeof(BuriedTrap));

        if (bits & BIT_TRAPS_FULL) {
            retrievedTrap.hasMessageToDisplay = TRUE;
        } else {
            retrievedTrap.hasMessageToDisplay = FALSE;
            UndergroundTraps_RemoveBuriedTrap(trap);
        }

        if (retrievedTrap.setterNetID >= MAX_CONNECTED_PLAYERS) {
            Underground_RemoveSpawnedTrapAtIndex(underground, retrievedTrap.trap.spawnedTrapIndex);
        }

        sub_02059058(netID, FALSE);
        CommSys_SendDataServer(51, &retrievedTrap, sizeof(TriggeredTrap));

        return TRUE;
    }

    return FALSE;
}

int CommPacketSizeOf_TriggeredTrap(void)
{
    return sizeof(TriggeredTrap);
}

void UndergroundTraps_ProcessDisengagedTrap(int unused0, int unused1, void *data, void *unused3)
{
    TriggeredTrap *retrievedTrap = (TriggeredTrap *)data;

    GF_ASSERT(retrievedTrap->victimNetID < MAX_CONNECTED_PLAYERS);

    if (retrievedTrap->hasMessageToDisplay == TRUE) {
        if (CommSys_CurNetId() == retrievedTrap->victimNetID) {
            UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_NoRoomForTrap, TRUE, UndergroundTraps_ResumeFieldSystem);
            CommPlayerMan_PauseFieldSystem();
        }

        return;
    }

    trapsEnv->queuedDisengageMessages[retrievedTrap->victimNetID] = TRUE;

    if (CommSys_CurNetId() == retrievedTrap->setterNetID) {
        UndergroundTraps_RemovePlacedTrapCurrentPlayer(&retrievedTrap->trap);
        UndergroundTraps_SavePlacedTrapsCurrentPlayer();
    }

    if (CommSys_CurNetId() == retrievedTrap->victimNetID) {
        if (UndergroundInventory_TryAddTrap(retrievedTrap->trap.trapID)) {
            if (CommSys_CurNetId() != retrievedTrap->setterNetID) {
                if (trapsEnv->retrievedTrapCount == 0) {
                    trapsEnv->retrievedTrapID = retrievedTrap->trap.trapID;
                }

                if (trapsEnv->retrievedTrapCount != 0xFFFF) {
                    trapsEnv->retrievedTrapCount++;
                }
            }

            Sound_PlayEffect(SEQ_SE_DP_PIRORIRO2);

            UndergroundTextPrinter_SetPlayerNameIndex1(CommManUnderground_GetCommonTextPrinter(), CommInfo_TrainerInfo(retrievedTrap->victimNetID));
            UndergroundTextPrinter_SetUndergroundTrapNameWithArticle(CommManUnderground_GetCommonTextPrinter(), 2, retrievedTrap->trap.trapID);
            UndergroundTextPrinter_CapitalizeArgAtIndex(CommManUnderground_GetCommonTextPrinter(), 2);
            UndergroundTextPrinter_SetUndergroundTrapName(CommManUnderground_GetCommonTextPrinter(), retrievedTrap->trap.trapID);
            UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_TrapFoundPlayerDisengaged, TRUE, UndergroundTraps_ResumeFieldSystem);
            UndergroundTextPrinter_SetDummyField(CommManUnderground_GetCommonTextPrinter());
        } else {
            // should be unreachable
            UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_NoRoomForTrap, TRUE, UndergroundTraps_ResumeFieldSystem);
        }

        CommPlayerMan_PauseFieldSystem();
    }
}

static int UndergroundTraps_GetBuriedTrapSetterNetID(BuriedTrap *trap)
{
    for (int i = 0; i < MAX_BURIED_TRAPS; i++) {
        if (trap == &trapsEnv->buriedTraps[i]) {
            return i / MAX_PLACED_TRAPS;
        }
    }

    GF_ASSERT(FALSE);
    return 0;
}

static BuriedTrap *UndergroundTraps_GetTrapAtCoordinates(int x, int z)
{
    Coordinates coordinates = {
        .x = x,
        .z = z
    };

    Underground_InitCoordinatesOrderingState(MAX_BURIED_TRAPS, UndergroundTraps_GetCoordinatesOfBuriedTrapAtOrderedIndex);
    int index = Underground_CalculateCoordinatesIndexGet(&coordinates);

    if (index == -1) {
        return NULL;
    }

    return trapsEnv->buriedTrapsByCoordinates[index];
}

BOOL UndergroundTraps_IsTrapAtCoordinates(int x, int z)
{
    if (UndergroundTraps_GetTrapAtCoordinates(x, z) == NULL) {
        return FALSE;
    }

    return TRUE;
}

int CommPacketSizeOf_TriggeredTrap2(void)
{
    return sizeof(TriggeredTrap);
}

static BOOL CheckPlayerSteppedOnTrap(int netID)
{
    Underground *underground = SaveData_GetUnderground(trapsEnv->fieldSystem->saveData);

    if (ov23_0224162C(netID)) {
        return FALSE;
    }

    BuriedTrap *trap = UndergroundTraps_GetTrapAtCoordinates(CommPlayer_GetXServer(netID), CommPlayer_GetZServer(netID));

    if (!trap) {
        return FALSE;
    }

    if (trapsEnv->triggeredTrapIDs[netID] != TRAP_NONE) {
        ov23_RevertPlayerStatusToNormal(netID);
        UndergroundTraps_EndTrapEffectServer(netID, trapsEnv->triggeredTrapIDs[netID]);
    }

    UndergroundTraps_StartTrapEffectServer(netID, trap->trapID);

    TriggeredTrap triggeredTrap;
    triggeredTrap.isTool = FALSE;
    triggeredTrap.victimNetID = netID;
    triggeredTrap.setterNetID = UndergroundTraps_GetBuriedTrapSetterNetID(trap);

    MI_CpuCopy8(trap, &triggeredTrap.trap, sizeof(BuriedTrap));

    if (triggeredTrap.setterNetID >= MAX_CONNECTED_PLAYERS) {
        Underground_RemoveSpawnedTrapAtIndex(underground, triggeredTrap.trap.spawnedTrapIndex);
    }

    CommSys_SendDataServer(37, &triggeredTrap, sizeof(TriggeredTrap));
    trapsEnv->triggeredTrapIDs[netID] = trap->trapID;
    UndergroundTraps_RemoveBuriedTrap(trap);

    return TRUE;
}

void UndergroundTraps_HandleTriggeredTool(int victimNetID, int setterNetID, int trapID, int x, int z, int victimDir)
{
    if (trapsEnv->triggeredTrapIDs[victimNetID] != TRAP_NONE) {
        UndergroundTraps_EndTrapEffectServer(victimNetID, trapsEnv->triggeredTrapIDs[victimNetID]);
    }

    UndergroundTraps_StartTrapEffectServer(victimNetID, trapID);

    TriggeredTrap trap;
    trap.victimNetID = victimNetID;
    trap.setterNetID = setterNetID;
    trap.isTool = TRUE;
    trap.trap.trapID = trapID;
    trap.trap.x = x;
    trap.trap.z = z;
    trap.toolInitialDir = victimDir;

    CommSys_SendDataServer(37, &trap, sizeof(TriggeredTrap));
    trapsEnv->triggeredTrapIDs[victimNetID] = trapID;
}

BOOL UndergroundTraps_CheckPlayerSteppedOnTrap(int netID)
{
    if (trapsEnv) {
        if (sub_02059094(netID)) {
            return CheckPlayerSteppedOnTrap(netID);
        }
    }

    return FALSE;
}

BOOL UndergroundTraps_HasPlayerTriggeredTool(int netID)
{
    return trapsEnv->triggeredTraps[netID].isTool;
}

void UndergroundTraps_HandleTriggeredTrap(int unused0, int unused1, void *data, void *unused3)
{
    TriggeredTrap *trap = (TriggeredTrap *)data;

    if (!trapsEnv) {
        return;
    }

    UndergroundRecord *undergroundRecord = SaveData_UndergroundRecord(FieldSystem_GetSaveData(trapsEnv->fieldSystem));

    Sound_PlayEffect(SEQ_SE_DP_UG_007);
    MI_CpuCopy8(trap, &trapsEnv->triggeredTraps[trap->victimNetID], sizeof(TriggeredTrap));

    switch (trap->trap.trapID) {
    case TRAP_ALERT_1:
        trapsEnv->queuedAlertMessages[trap->victimNetID] = UndergroundCommon_Text_AlertHello;
        break;
    case TRAP_ALERT_2:
        trapsEnv->queuedAlertMessages[trap->victimNetID] = UndergroundCommon_Text_AlertGoodbye;
        break;
    case TRAP_ALERT_3:
        trapsEnv->queuedAlertMessages[trap->victimNetID] = UndergroundCommon_Text_AlertLetsGoToUnionRoom;
        break;
    case TRAP_ALERT_4:
        trapsEnv->queuedAlertMessages[trap->victimNetID] = UndergroundCommon_Text_AlertComeHere;
        break;
    default:
        trapsEnv->triggeredTraps[trap->victimNetID].hasMessageToDisplay = TRUE;
        break;
    }

    if (CommSys_CurNetId() == trap->victimNetID) {
        UndergroundTraps_StartTrapEffectClient(trap->victimNetID, trap->trap.trapID, trap->isTool, trap->toolInitialDir);
    } else {
        UndergroundTraps_StartLinkSpinTask(trap->victimNetID, trap->trap.trapID);
    }

    ov23_ShowExclamationEmote(trap->victimNetID);

    if (CommSys_CurNetId() == trap->victimNetID) {
        UndergroundRecord_IncrementNumTrapsTriggered(undergroundRecord);
    }

    if (CommSys_CurNetId() == trap->setterNetID) {
        if (trap->setterNetID != trap->victimNetID) {
            UndergroundRecord_IncrementNumTrapHits(undergroundRecord);
        }

        VarsFlags *varsFlags = SaveData_GetVarsFlags(trapsEnv->fieldSystem->saveData);
        SystemVars_SetUndergroundTrapsSet(varsFlags, SystemVars_GetUndergroundTrapsSet(varsFlags) + 1);

        UndergroundTraps_RemovePlacedTrapCurrentPlayer(&trap->trap);
        UndergroundTraps_SavePlacedTrapsCurrentPlayer();
    }
}

void UndergroundTraps_CallSecondTrapEffectServerFunc(int netID, int unused1, void *data, void *unused3)
{
    u8 *trapID = data;
    TrapServerFunc trapEffectFunc = sTrapEffectServerSecondFuncs[*trapID];

    if (*trapID != trapsEnv->triggeredTrapIDs[netID]) {
        sub_020389C4(1);
        return;
    }

    if (trapEffectFunc) {
        trapEffectFunc(netID);
    }
}

void UndergroundTraps_StartLinkSlideAnimation_Unused(int unused0, int unused1, void *data, void *unused3)
{
    u8 *buffer = data;

    if (buffer[0] != CommSys_CurNetId()) {
        CommPlayer_StartSlideAnimation(buffer[0], buffer[1], buffer[2]);
    }
}

void UndergroundTraps_SendTriggeredTrapBits(void)
{
    u8 bits = 0;

    if (trapsEnv) {
        for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
            if (trapsEnv->triggeredTrapIDs[netID] != TRAP_NONE) {
                bits |= 1 << netID;
            }
        }

        sub_02035B48(45, &bits);
    }
}

void UndergroundTraps_ProcessTriggeredTrapBits(int unused0, int unused1, void *data, void *unused3)
{
    u8 bits = *(u8 *)data;

    if (trapsEnv->triggeredTrapIDClient != TRAP_NONE) {
        return;
    }

    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        if (bits & (1 << netID)) {
            ov23_ShowExclamationEmote(netID);
        }
    }
}

BOOL UndergroundTraps_GetQueuedMessage(Strbuf *dest)
{
    if (!trapsEnv) {
        return FALSE;
    }

    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        if (trapsEnv->triggeredTraps[netID].hasMessageToDisplay == TRUE) {
            trapsEnv->triggeredTraps[netID].hasMessageToDisplay = FALSE;

            if (trapsEnv->triggeredTraps[netID].setterNetID >= MAX_CONNECTED_PLAYERS) {
                TrainerInfo *trapVictimInfo = CommInfo_TrainerInfo(netID);

                if (CommManUnderground_FormatStrbufWithTrainerName(trapVictimInfo, 0, UndergroundCommon_Text_PlayerTriggeredTrap, dest)) {
                    return TRUE;
                }
            } else {
                TrainerInfo *trapSetterInfo = CommInfo_TrainerInfo(trapsEnv->triggeredTraps[netID].setterNetID);
                TrainerInfo *trapVictimInfo = CommInfo_TrainerInfo(netID);

                if (CommManUnderground_FormatStrbufWith2TrainerNames(trapVictimInfo, trapSetterInfo, UndergroundCommon_Text_PlayerTriggeredOtherPlayersTrap, dest)) {
                    return TRUE;
                }
            }
        }

        if (trapsEnv->helpedNetIDs[netID] != 0xFF) {
            TrainerInfo *helperInfo = CommInfo_TrainerInfo(netID);
            TrainerInfo *trapVictimInfo = CommInfo_TrainerInfo(trapsEnv->helpedNetIDs[netID]);

            trapsEnv->helpedNetIDs[netID] = 0xFF;

            if (CommManUnderground_FormatStrbufWith2TrainerNames(helperInfo, trapVictimInfo, UndergroundCommon_Text_PlayerHelpedOtherPlayer, dest)) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

BOOL UndergroundTraps_GetQueuedMessage2(Strbuf *dest)
{
    TrainerInfo *trainerInfo;

    if (!trapsEnv) {
        return FALSE;
    }

    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        if (trapsEnv->queuedAlertMessages[netID] != 0) {
            int bankEntry = trapsEnv->queuedAlertMessages[netID];
            trapsEnv->queuedAlertMessages[netID] = 0;
            trainerInfo = CommInfo_TrainerInfo(netID);

            if (CommManUnderground_FormatStrbufWithTrainerName(trainerInfo, 0, bankEntry, dest)) {
                return TRUE;
            }
        }

        if (trapsEnv->queuedDisengageMessages[netID] == TRUE) {
            trapsEnv->queuedDisengageMessages[netID] = FALSE;
            trainerInfo = CommInfo_TrainerInfo(netID);

            if (CommManUnderground_FormatStrbufWithTrainerName(trainerInfo, 0, UndergroundCommon_Text_PlayerDisengagedTrap, dest)) {
                return TRUE;
            }
        }

        if (trapsEnv->queuedEscapeMessages[netID] == TRUE) {
            trainerInfo = CommInfo_TrainerInfo(netID);
            trapsEnv->queuedEscapeMessages[netID] = FALSE;

            if (CommManUnderground_FormatStrbufWithTrainerName(trainerInfo, 0, UndergroundCommon_Text_PlayerEscapedFromTrap, dest)) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

static void UndergroundTraps_StartTrapEffectServer(int netID, int trapID)
{
    TrapServerFunc trapEffectFunc = sTrapEffectServerFuncs[trapID];

    if (trapEffectFunc) {
        trapEffectFunc(netID);
    }
}

static void UndergroundTraps_EndTrapEffectServer(int netID, int trapID)
{
    TrapServerFunc endTrapEffectFunc = sEndTrapEffectServerFuncs[trapID];

    if (endTrapEffectFunc) {
        endTrapEffectFunc(netID);
    }
}

void UndergroundTraps_ForceEndCurrentTrapEffectClient(int netID, BOOL allowToolStepBack)
{
    if (trapsEnv->triggeredTrapIDClient != TRAP_NONE) {
        EndTrapEffectClientFunc endTrapEffectFunc = sForceEndTrapEffectClientFuncs[trapsEnv->triggeredTrapIDClient];

        if (endTrapEffectFunc) {
            endTrapEffectFunc(netID, allowToolStepBack);
        }

        if (CommSys_CurNetId() != 0) {
            ov23_RevertPlayerStatusToNormal(netID);
        }

        CommPlayerMan_ResumeFieldSystemWithContextBit(PAUSE_BIT_TRAPS);
        Sound_PlayEffect(SEQ_SE_DP_WIN_OPEN2);

        trapsEnv->unused4 = NULL;

        ov23_ClearEmote(netID);
        UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetCommonTextPrinter());

        trapsEnv->triggeredTrapIDClient = TRAP_NONE;
    }
}

static void UndergroundTraps_StartTrapEffectClient(int netID, int trapID, BOOL isTool, int toolInitialDir)
{
    UndergroundTraps_ForceEndCurrentTrapEffectClient(netID, TRUE);

    trapsEnv->triggeredTrapIDClient = trapID;
    TrapEffectClientFunc trapEffectFunc = sTrapEffectClientFuncs[trapID];

    if (trapEffectFunc) {
        trapEffectFunc(netID, isTool, toolInitialDir);
    }
}

static void UndergroundTraps_StepBackFromTool(int dir)
{
    int oppositeDir = CommPlayer_GetOppositeDir(dir);

    Player_SetDir(trapsEnv->fieldSystem->playerAvatar, oppositeDir);

    int x = trapsEnv->triggeredTraps[CommSys_CurNetId()].trap.x;
    int z = trapsEnv->triggeredTraps[CommSys_CurNetId()].trap.z;
    x += MapObject_GetDxFromDir(oppositeDir);
    z += MapObject_GetDzFromDir(oppositeDir);

    CommPlayer_SendXZPos(FALSE, x, z);
}

static BOOL UndergroundTraps_CheckPlayerPosRelativeToTrap(int dir, enum TrapRelativePosition position)
{
    int playerX = Player_GetXPos(trapsEnv->fieldSystem->playerAvatar);
    int playerZ = Player_GetZPos(trapsEnv->fieldSystem->playerAvatar);
    int oppositeDir = CommPlayer_GetOppositeDir(dir);
    int trapX = trapsEnv->triggeredTraps[CommSys_CurNetId()].trap.x;
    int trapZ = trapsEnv->triggeredTraps[CommSys_CurNetId()].trap.z;

    if (position == PLAYER_TILE_BACK_FROM_TRAP) {
        trapX += MapObject_GetDxFromDir(oppositeDir);
        trapZ += MapObject_GetDzFromDir(oppositeDir);
    }

    if (playerX == trapX && playerZ == trapZ) {
        return TRUE;
    }

    return FALSE;
}

static void UndergroundTraps_ReverseTrapEffectServer(int netID)
{
    ov23_UpdatePlayerStatus(netID, PLAYER_STATUS_MOVEMENT_ALTERED);
    CommPlayerMan_SetPlayerAlteredMovement(netID, 30);
}

static void UndergroundTraps_ConfuseTrapEffectServer(int netID)
{
    ov23_UpdatePlayerStatus(netID, PLAYER_STATUS_MOVEMENT_ALTERED);
    CommPlayerMan_SetPlayerAlteredMovement(netID, 30);
}

static void UndergroundTraps_EndAlteredMovementTrapEffectServer(int netID)
{
    ov23_UpdatePlayerStatus(netID, PLAYER_STATUS_NORMAL);
    CommPlayerMan_EndPlayerAlteredMovement(netID);
}

static void UndergroundTraps_SmokeTrapEffectServer(int netID)
{
    ov23_UpdatePlayerStatus(netID, PLAYER_STATUS_IMMOBILIZED_BY_TRAP);
}

static void UndergroundTraps_LeafTrapEffectServer(int netID)
{
    ov23_UpdatePlayerStatus(netID, PLAYER_STATUS_IMMOBILIZED_BY_TRAP);
}

static void UndergroundTraps_MoveTrapEffectServer(int netID)
{
    ov23_UpdatePlayerStatus(netID, PLAYER_STATUS_SLIDING);
    CommPlayer_EndCurrentSlide(netID);
}

static void UndergroundTraps_MoveTrapUpEffectServer(int netID)
{
    CommPlayer_StartSlide(netID, DIR_NORTH, FALSE);
}

static void UndergroundTraps_MoveTrapDownEffectServer(int netID)
{
    CommPlayer_StartSlide(netID, DIR_SOUTH, FALSE);
}

static void UndergroundTraps_MoveTrapLeftEffectServer(int netID)
{
    CommPlayer_StartSlide(netID, DIR_WEST, FALSE);
}

static void UndergroundTraps_MoveTrapRightEffectServer(int netID)
{
    CommPlayer_StartSlide(netID, DIR_EAST, FALSE);
}

static void UndergroundTraps_HurlTrapUpEffectServer(int netID)
{
    CommPlayer_StartSlide(netID, DIR_NORTH, TRUE);
}

static void UndergroundTraps_HurlTrapDownEffectServer(int netID)
{
    CommPlayer_StartSlide(netID, DIR_SOUTH, TRUE);
}

static void UndergroundTraps_HurlTrapLeftEffectServer(int netID)
{
    CommPlayer_StartSlide(netID, DIR_WEST, TRUE);
}

static void UndergroundTraps_HurlTrapRightEffectServer(int netID)
{
    CommPlayer_StartSlide(netID, DIR_EAST, TRUE);
}

static void UndergroundTraps_EndMoveTrapEffectServer(int netID)
{
    ov23_UpdatePlayerStatus(netID, PLAYER_STATUS_NORMAL);
    CommPlayer_StopSlide(netID);
}

static void UndergroundTraps_DummyServer(int unused)
{
    return;
}

static void UndergroundTraps_ReverseTrapEffectClient(int netID, BOOL isTool, int toolInitialDir)
{
    ov23_UpdatePlayerStatus(netID, PLAYER_STATUS_MOVEMENT_ALTERED);

    if (CommSys_CurNetId() == netID) {
        UndergroundTraps_StartAlterMovementTrapClientTask(TRUE);
    }
}

static void UndergroundTraps_ConfuseTrapEffectClient(int netID, BOOL isTool, int toolInitialDir)
{
    ov23_UpdatePlayerStatus(netID, PLAYER_STATUS_MOVEMENT_ALTERED);

    if (CommSys_CurNetId() == netID) {
        UndergroundTraps_StartAlterMovementTrapClientTask(FALSE);
    }
}

static void UndergroundTraps_SmokeTrapEffectClient(int netID, BOOL isTool, int toolInitialDir)
{
    ov23_UpdatePlayerStatus(netID, PLAYER_STATUS_IMMOBILIZED_BY_TRAP);

    if (CommSys_CurNetId() == netID) {
        UndergroundTraps_StartSmokeTrapClientTask(trapsEnv->fieldSystem, isTool, toolInitialDir);
    }
}

static void UndergroundTraps_LeafTrapEffectClient(int netID, BOOL isTool, int toolInitialDir)
{
    ov23_UpdatePlayerStatus(netID, PLAYER_STATUS_IMMOBILIZED_BY_TRAP);

    if (CommSys_CurNetId() == netID) {
        UndergroundTraps_StartLeafTrapClientTask(trapsEnv->fieldSystem, isTool, toolInitialDir);
    }
}

static void UndergroundTraps_MoveTrapUpEffectClient(int netID, BOOL isTool, int toolInitialDir)
{
    UndergroundTraps_StartMoveTrapClientTask(trapsEnv->fieldSystem, netID, DIR_NORTH, FALSE);
}

static void UndergroundTraps_MoveTrapDownEffectClient(int netID, BOOL isTool, int toolInitialDir)
{
    UndergroundTraps_StartMoveTrapClientTask(trapsEnv->fieldSystem, netID, DIR_SOUTH, FALSE);
}

static void UndergroundTraps_MoveTrapLeftEffectClient(int netID, BOOL isTool, int toolInitialDir)
{
    UndergroundTraps_StartMoveTrapClientTask(trapsEnv->fieldSystem, netID, DIR_WEST, FALSE);
}

static void UndergroundTraps_MoveTrapRightEffectClient(int netID, BOOL isTool, int toolInitialDir)
{
    UndergroundTraps_StartMoveTrapClientTask(trapsEnv->fieldSystem, netID, DIR_EAST, FALSE);
}

static void UndergroundTraps_HurlTrapUpEffectClient(int netID, BOOL isTool, int toolInitialDir)
{
    UndergroundTraps_StartMoveTrapClientTask(trapsEnv->fieldSystem, netID, DIR_NORTH, TRUE);
}

static void UndergroundTraps_HurlTrapDownEffectClient(int netID, BOOL isTool, int toolInitialDir)
{
    UndergroundTraps_StartMoveTrapClientTask(trapsEnv->fieldSystem, netID, DIR_SOUTH, TRUE);
}

static void UndergroundTraps_HurlTrapLeftEffectClient(int netID, BOOL isTool, int toolInitialDir)
{
    UndergroundTraps_StartMoveTrapClientTask(trapsEnv->fieldSystem, netID, DIR_WEST, TRUE);
}

static void UndergroundTraps_HurlTrapRightEffectClient(int netID, BOOL isTool, int toolInitialDir)
{
    UndergroundTraps_StartMoveTrapClientTask(trapsEnv->fieldSystem, netID, DIR_EAST, TRUE);
}

static int UndergroundTraps_NotifyTrapTriggered(void)
{
    int x = Player_GetXPos(trapsEnv->fieldSystem->playerAvatar);
    int z = Player_GetZPos(trapsEnv->fieldSystem->playerAvatar);

    ov5_021F5634(trapsEnv->fieldSystem, x, 0, z);
    UndergroundTextPrinter_SetUndergroundTrapNameWithIndex(CommManUnderground_GetCommonTextPrinter(), 0, trapsEnv->triggeredTrapIDClient);

    int printerID = UndergroundTextPrinter_PrintTextInstant(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_TriggeredTrap, FALSE, NULL);
    CommPlayerMan_PauseFieldSystemWithContextBit(PAUSE_BIT_TRAPS);

    return printerID;
}

static void UndergroundTraps_MoveTrapClientTask(SysTask *sysTask, void *data)
{
    MoveTrapContext *ctx = data;

    switch (ctx->state) {
    case MOVE_TRAP_STATE_START:
        ctx->printerID = UndergroundTraps_NotifyTrapTriggered();
        ctx->state++;
        break;
    case MOVE_TRAP_STATE_BRIGHTEN_SCREEN:
        BrightnessController_StartTransition(1, 10, 0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
        ctx->state++;
        break;
    case MOVE_TRAP_STATE_FRAME_DELAY:
        ctx->state++;
        break;
    case MOVE_TRAP_STATE_REVERT_BRIGHTNESS:
        BrightnessController_StartTransition(1, 0, 10, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
        ctx->state++;
        break;
    case MOVE_TRAP_STATE_START_SLIDE:
        ctx->timer++;

        if (ctx->timer == 28) {
            u8 trapID = trapsEnv->triggeredTrapIDClient;

            CommSys_SendDataFixedSize(38, &trapID);
        }

        if (ctx->timer > 30) {
            CommPlayerMan_ResumeFieldSystemWithContextBit(PAUSE_BIT_TRAPS);
            BrightnessController_StartTransition(1, -4, 0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
            UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetCommonTextPrinter());
            CommPlayer_StartSlideAnimation(ctx->netID, ctx->dir, ctx->isHurlTrap);
            Sound_PlayEffect(SEQ_SE_DP_F007);
            ctx->state = MOVE_TRAP_STATE_FRAME_DELAY_2;
        }
        break;
    case MOVE_TRAP_STATE_FRAME_DELAY_2:
        ctx->state = MOVE_TRAP_STATE_WAIT_FOR_END;
        break;
    case MOVE_TRAP_STATE_WAIT_FOR_END:
        break;
    case MOVE_TRAP_STATE_END:
        BrightnessController_SetScreenBrightness(0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
        Heap_Free(ctx);
        SysTask_Done(sysTask);

        trapsEnv->trapEffectTask = NULL;
        trapsEnv->currentTrapContext = NULL;

        Sound_StopEffect(SEQ_SE_DP_F007, 0);
        break;
    }
}

static void UndergroundTraps_StartMoveTrapClientTask(FieldSystem *fieldSystem, int netID, int dir, BOOL isHurlTrap)
{
    MoveTrapContext *ctx = Heap_AllocAtEnd(HEAP_ID_FIELD1, sizeof(MoveTrapContext));
    MI_CpuFill8(ctx, 0, sizeof(MoveTrapContext));

    GF_ASSERT(trapsEnv->currentTrapContext == NULL);

    trapsEnv->currentTrapContext = ctx;

    ctx->fieldSystem = fieldSystem;
    ctx->netID = netID;
    ctx->dir = dir;
    ctx->isHurlTrap = isHurlTrap;

    trapsEnv->trapEffectTask = SysTask_Start(UndergroundTraps_MoveTrapClientTask, ctx, 100);
}

static void UndergroundTraps_EndMoveTrapEffectClient(int netID, BOOL unused)
{
    CommPlayer_StopSlideAnimation(netID);

    if (trapsEnv->currentTrapContext) {
        MoveTrapContext *ctx = trapsEnv->currentTrapContext;

        ctx->state = MOVE_TRAP_STATE_END;
        trapsEnv->currentTrapContext = NULL;

        Sound_StopEffect(SEQ_SE_DP_F007, 0);
    }
}

static void UndergroundTraps_ForceEndMoveTrapEffectClient(int netID, BOOL unused)
{
    CommPlayer_StopSlideAnimation(netID);

    if (trapsEnv->currentTrapContext) {
        MoveTrapContext *ctx = trapsEnv->currentTrapContext;

        BrightnessController_SetScreenBrightness(0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
        Heap_Free(ctx);
        SysTask_Done(trapsEnv->trapEffectTask);

        trapsEnv->trapEffectTask = NULL;
        trapsEnv->currentTrapContext = NULL;

        Sound_StopEffect(SEQ_SE_DP_F007, 0);
    }
}

static void UndergroundTraps_DummyClient(int netID, BOOL isTool, int toolInitialDir)
{
    return;
}

static OverworldAnimManager *UndergroundTraps_DrawPlacedTrap(int x, int z, int size, int trapID)
{
    if (!trapsEnv->graphicsDisabled) {
        OverworldAnimManager *trapTextureManager = ov5_DrawFloorTexture(trapsEnv->fieldSystem, x, z, size, trapID - 1);
        return trapTextureManager;
    }

    return NULL;
}

static BuriedTrap *UndergroundTraps_Dummy(BuriedTrap *trap)
{
    return trap;
}

static void UndergroundTraps_StartSmokeTrapClientTask(FieldSystem *fieldSystem, BOOL isTool, int toolInitialDir)
{
    SmokeTrapContext *ctx = Heap_AllocAtEnd(HEAP_ID_FIELD1, sizeof(SmokeTrapContext));
    MI_CpuFill8(ctx, 0, sizeof(SmokeTrapContext));

    trapsEnv->currentTrapContext = ctx;
    UndergroundTraps_ResetSmokeTrapTouchCoords(ctx);

    ctx->bgConfig = fieldSystem->bgConfig;
    ctx->fieldSystem = fieldSystem;
    ctx->isTool = isTool;
    ctx->toolInitialDir = toolInitialDir;

    trapsEnv->trapEffectTask = SysTask_Start(UndergroundTraps_SmokeTrapClientTask, ctx, 100);
}

static void UndergroundTraps_HandleSmokeTouch(int touchX, int touchY, int prevTouchX, int prevTouchY, u8 *tilemap)
{
    int distanceUntilOtherDimensionChange;
    int x = touchX, y = touchY;
    int xDistance = abs(touchX - prevTouchX), yDistance = abs(prevTouchY - touchY);
    BOOL smokeCleared = FALSE;

    int xDirection = touchX < prevTouchX ? 1 : -1;
    int yDirection = touchY < prevTouchY ? 1 : -1;

    if (xDistance >= yDistance) {
        distanceUntilOtherDimensionChange = -xDistance;

        while (x != prevTouchX) {
            smokeCleared += UndergroundTraps_ClearSmoke(x, y, tilemap);
            x += xDirection;
            distanceUntilOtherDimensionChange += 2 * yDistance;

            if (distanceUntilOtherDimensionChange >= 0) {
                distanceUntilOtherDimensionChange -= 2 * xDistance;
                y += yDirection;
            }
        }
    } else {
        distanceUntilOtherDimensionChange = -yDistance;

        while (y != prevTouchY) {
            smokeCleared += UndergroundTraps_ClearSmoke(x, y, tilemap);
            y += yDirection;
            distanceUntilOtherDimensionChange += 2 * xDistance;

            if (distanceUntilOtherDimensionChange >= 0) {
                distanceUntilOtherDimensionChange -= 2 * yDistance;
                x += xDirection;
            }
        }
    }

    if (smokeCleared) {
        if (!Sound_IsEffectPlaying(SEQ_SE_DP_UG_025)) {
            Sound_PlayEffect(SEQ_SE_DP_UG_025);
        }
    }
}

static void UndergroundTraps_EndSmokeTrapEffectClient(int netID, BOOL allowToolStepBack)
{
    if (trapsEnv->currentTrapContext) {
        SmokeTrapContext *ctx = trapsEnv->currentTrapContext;

        if (ctx->isTool && allowToolStepBack) {
            UndergroundTraps_StepBackFromTool(ctx->toolInitialDir);
        }

        G2_BlendNone();
        BrightnessController_SetScreenBrightness(0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);

        u8 *tilemap = Bg_GetTilemapBuffer(trapsEnv->fieldSystem->bgConfig, BG_LAYER_MAIN_2);

        for (int i = 0; i < 0x800; i += 2) {
            tilemap[i] = 0;
        }

        Bg_SetPriority(BG_LAYER_MAIN_2, 3);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);

        CommPlayerMan_ResumeFieldSystemWithContextBit(PAUSE_BIT_TRAPS);
        SysTask_Done(trapsEnv->trapEffectTask);
        Heap_Free(ctx);

        trapsEnv->trapEffectTask = NULL;
        trapsEnv->currentTrapContext = NULL;
    }
}

// returns true when less than 13 tiles of smoke remain
static BOOL UndergroundTraps_ProcessSmoke(Coordinates2D *touchCoordinates, BgConfig *bgConfig, SmokeTrapContext *ctx)
{
    int smokeTilesLeft = 0;
    u8 *tilemap = Bg_GetTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);

    if (tilemap == NULL) {
        return FALSE;
    }

    if (ctx->prevTouchX != (u16)TOUCHSCREEN_INPUT_NONE && ctx->prevTouchY != (u16)TOUCHSCREEN_INPUT_NONE) {
        UndergroundTraps_HandleSmokeTouch(touchCoordinates->x, touchCoordinates->y, ctx->prevTouchX, ctx->prevTouchY, tilemap);

        Bg_CopyTilemapBufferToVRAM(bgConfig, BG_LAYER_MAIN_2);
    }

    ctx->prevTouchX = touchCoordinates->x;
    ctx->prevTouchY = touchCoordinates->y;

    for (int i = 0; i < 0x800; i += 2) {
        if (tilemap[i] != 0) {
            smokeTilesLeft++;
        }
    }

    if (smokeTilesLeft < 13) {
        return TRUE;
    }

    return FALSE;
}

static BOOL UndergroundTraps_ClearSmoke(int x, int y, u8 *tilemap)
{
    u16 tileMapIndex = (x / TILE_WIDTH_PIXELS + y / TILE_HEIGHT_PIXELS * (HW_LCD_WIDTH / TILE_WIDTH_PIXELS)) * 2;
    s32 indexModifiers[] = { -66, -64, -62, -2, 0, 2, 62, 64, 66 };
    BOOL smokeCleared = FALSE;

    if (tileMapIndex > 0x800) {
        return smokeCleared;
    }

    for (int i = 0; i < NELEMS(indexModifiers); i++) {
        s32 index = tileMapIndex + indexModifiers[i];

        if (tileMapIndex % 64 == 62) {
            if (i % 3 == 2) {
                continue;
            }
        }

        if (tileMapIndex % 64 == 0) {
            if (i % 3 == 0) {
                continue;
            }
        }

        if (index < 0x800 && index >= 0 && tilemap[index] != 0) {
            smokeCleared = TRUE;

            switch (i) {
            case 4:
                tilemap[index] += 3;
                break;
            case 1:
            case 3:
            case 5:
            case 7:
                tilemap[index] += 2;
                break;
            default:
                tilemap[index] = tilemap[index] + 1;
                break;
            }

            if (tilemap[index] > 5) {
                tilemap[index] = 0;
            }
        }
    }

    return smokeCleared;
}

static void UndergroundTraps_ResetSmokeTrapTouchCoords(SmokeTrapContext *ctx)
{
    ctx->prevTouchX = TOUCHSCREEN_INPUT_NONE;
    ctx->prevTouchY = TOUCHSCREEN_INPUT_NONE;
}

static void UndergroundTraps_SmokeTrapClientTask(SysTask *sysTask, void *data)
{
    SmokeTrapContext *ctx = data;

    switch (ctx->state) {
    case SMOKE_TRAP_STATE_START:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);
        ctx->printerID = UndergroundTraps_NotifyTrapTriggered();
        ctx->state++;
        break;
    case SMOKE_TRAP_STATE_LOAD_TILES:
        BrightnessController_StartTransition(1, 10, 0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
        Graphics_LoadTilesToBgLayer(NARC_INDEX_DATA__UG_TRAP, smoke_tiles_NCGR, ctx->bgConfig, BG_LAYER_MAIN_2, 0, 8 * 6 * 6, FALSE, HEAP_ID_FIELD1);
        ctx->state++;
        break;
    case SMOKE_TRAP_STATE_LOAD_PLTT:
        Graphics_LoadPalette(NARC_INDEX_DATA__UG_TRAP, smoke_tiles_NCLR, PAL_LOAD_MAIN_BG, 0, PALETTE_SIZE_BYTES, HEAP_ID_FIELD1);
        ctx->state++;
        break;
    case SMOKE_TRAP_STATE_LOAD_TILEMAP:
        BrightnessController_StartTransition(1, 0, 10, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);

        if (trapsEnv->triggeredTrapIDClient == TRAP_BIG_SMOKE) {
            Graphics_LoadTilemapToBgLayer(NARC_INDEX_DATA__UG_TRAP, big_smoke_pattern_NSCR, ctx->bgConfig, BG_LAYER_MAIN_2, 0, 32 * 24 * 2, FALSE, HEAP_ID_FIELD1);
        } else {
            u16 smokePatterns[] = { smoke_pattern_1_NSCR, smoke_pattern_2_NSCR, smoke_pattern_3_NSCR, smoke_pattern_4_NSCR };
            u16 index = LCRNG_Next() % 4;

            Graphics_LoadTilemapToBgLayer(NARC_INDEX_DATA__UG_TRAP, smokePatterns[index], ctx->bgConfig, BG_LAYER_MAIN_2, 0, 32 * 24 * 2, FALSE, HEAP_ID_FIELD1);
        }

        Bg_SetPriority(BG_LAYER_MAIN_0, 3);
        Bg_SetPriority(BG_LAYER_MAIN_1, 2);
        Bg_SetPriority(BG_LAYER_MAIN_2, 1);
        Bg_SetPriority(BG_LAYER_MAIN_3, 0);
        ctx->state++;
        break;
    case SMOKE_TRAP_STATE_PRINT_TUTORIAL:
    case SMOKE_TRAP_STATE_UNUSED_5:
    case SMOKE_TRAP_STATE_UNUSED_6:
        ctx->timer++;

        if (ctx->timer > 30) {
            BrightnessController_StartTransition(1, -4, 0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, TRUE);
            ctx->state = SMOKE_TRAP_STATE_MAIN;
            UndergroundTextPrinter_PrintTextInstant(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_RemoveTrapByTouch, FALSE, NULL);
            ctx->messageTimer = 0;
            Sound_PlayEffect(SEQ_SE_DP_FPASA2);
        }
        break;
    case SMOKE_TRAP_STATE_MAIN:
        if (gSystem.touchHeld) {
            Coordinates2D touchCoordinates;

            touchCoordinates.x = gSystem.touchX;
            touchCoordinates.y = gSystem.touchY;

            if (UndergroundTraps_ProcessSmoke(&touchCoordinates, ctx->bgConfig, ctx)) {
                if (ctx->isTool) {
                    ctx->state = SMOKE_TRAP_STATE_TOOL_STEP_BACK;
                } else {
                    Link_Message(41);
                    ctx->state = SMOKE_TRAP_STATE_WAIT_FOR_END;
                }
            }
        } else {
            UndergroundTraps_ResetSmokeTrapTouchCoords(ctx);
        }

        if (ctx->messageTimer < 60) {
            ctx->messageTimer++;

            if (ctx->messageTimer == 60) {
                UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetCommonTextPrinter());
            }
        }
        break;
    case SMOKE_TRAP_STATE_WAIT_FOR_END:
        UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetCommonTextPrinter());
        break;
    case SMOKE_TRAP_STATE_END_UNUSED:
        UndergroundTraps_EndSmokeTrapEffectClient(CommSys_CurNetId(), ctx->isTool);
        break;
    case SMOKE_TRAP_STATE_TOOL_STEP_BACK:
        ctx->isTool = FALSE;
        CommPlayerMan_ResumeFieldSystemWithContextBit(PAUSE_BIT_TRAPS);
        UndergroundTraps_StepBackFromTool(ctx->toolInitialDir);
        ctx->timer = 0;
        ctx->state = SMOKE_TRAP_STATE_TOOL_WAIT_THEN_END;
        break;
    case SMOKE_TRAP_STATE_TOOL_WAIT_THEN_END:
        ctx->timer++;

        if (ctx->timer > 8) {
            Link_Message(41);
            ctx->state = SMOKE_TRAP_STATE_WAIT_FOR_END;
        }
        break;
    }
}

int CommPacketSizeOf_EscapedTrap(void)
{
    return sizeof(EscapedTrap);
}

void UndergroundTraps_EscapeTrapServer(int netID, int unused1, void *unused2, void *unused3)
{
    if (ov23_0224ACC0(netID)) {
        ov23_RevertPlayerStatusToNormal(netID);
        UndergroundTraps_EndTrapEffectServer(netID, trapsEnv->triggeredTrapIDs[netID]);

        EscapedTrap trap;
        trap.allowToolStepBack = ov23_0224D87C(netID);
        trap.trapID = trapsEnv->triggeredTrapIDs[netID];
        trap.netID = netID;
        trap.showOKEmote = TRUE;

        sub_02035B48(42, &trap);
    }

    trapsEnv->triggeredTrapIDs[netID] = TRAP_NONE;
}

void UndergroundTraps_EndCurrentTrapEffectServer(int netID, int unused1, void *unused2, void *unused3)
{
    ov23_RevertPlayerStatusToNormal(netID);

    if (trapsEnv->triggeredTrapIDs[netID] != TRAP_NONE) {
        UndergroundTraps_EndTrapEffectServer(netID, trapsEnv->triggeredTrapIDs[netID]);
    }

    trapsEnv->triggeredTrapIDs[netID] = TRAP_NONE;
    trapsEnv->triggeredTraps[netID].isTool = FALSE;

    ov23_0224D87C(netID);
}

void UndergroundTraps_ProcessEscapedTrap(int unused0, int unused1, void *data, void *unused3)
{
    EscapedTrap *escapedTrap = data;
    int trapID = escapedTrap->trapID;

    if (escapedTrap->showOKEmote) {
        ov23_ShowOKEmote(escapedTrap->netID);
    } else {
        // dead code, field being checked is always true
        ov23_ClearEmote(escapedTrap->netID);
    }

    UndergroundTraps_StopLinkSpin(escapedTrap->netID);

    if (escapedTrap->netID == CommSys_CurNetId()) {
        EndTrapEffectClientFunc endTrapEffectFunc = sEndTrapEffectClientFuncs[trapID];

        if (endTrapEffectFunc) {
            endTrapEffectFunc(escapedTrap->netID, escapedTrap->allowToolStepBack);
        }

        trapsEnv->triggeredTrapIDClient = TRAP_NONE;
    }

    switch (trapID) {
    case TRAP_ALERT_1:
    case TRAP_ALERT_2:
    case TRAP_ALERT_3:
    case TRAP_ALERT_4:
        break;
    default:
        trapsEnv->queuedEscapeMessages[escapedTrap->netID] = TRUE;
        break;
    }

    if (CommSys_CurNetId() != 0) {
        ov23_RevertPlayerStatusToNormal(escapedTrap->netID);
    }
}

void UndergroundTraps_EscapeHole(int unused0, int unused1, void *data, void *unused3)
{
    u8 *netID = data;
    int trapID = trapsEnv->triggeredTrapIDClient;

    if (trapID == TRAP_HOLE || trapID == TRAP_PIT) {
        EscapeHole(*netID);
    }
}

void UndergroundTraps_HelpLink(int netID, int linkNetID)
{
    ov23_RevertPlayerStatusToNormal(linkNetID);
    UndergroundTraps_EndTrapEffectServer(linkNetID, trapsEnv->triggeredTrapIDs[linkNetID]);

    TrapHelpData helpData;
    helpData.helpeeNetID = linkNetID;
    helpData.helperNetID = netID;
    helpData.trapID = trapsEnv->triggeredTrapIDs[linkNetID];

    sub_02035B48(44, &helpData);
    trapsEnv->triggeredTrapIDs[linkNetID] = TRAP_NONE;
    sub_02059058(netID, FALSE);
}

void UndergroundTraps_ProcessTrapHelp(int unused0, int unused1, void *data, void *unused3)
{
    TrapHelpData *helpdata = data;
    UndergroundRecord *undergroundRecord = SaveData_UndergroundRecord(FieldSystem_GetSaveData(trapsEnv->fieldSystem));

    ov23_ShowOKEmote(helpdata->helpeeNetID);

    if (helpdata->helperNetID == CommSys_CurNetId()) {
        UndergroundRecord_IncrementNumPlayersHelped(undergroundRecord);
        GameRecords_IncrementTrainerScore(SaveData_GetGameRecords(trapsEnv->fieldSystem->saveData), TRAINER_SCORE_EVENT_UNDERGROUND_HELP_TRAPPED_PLAYER);
        CommPlayerMan_PauseFieldSystem();

        UndergroundTextPrinter_SetPlayerNameIndex0(CommManUnderground_GetCommonTextPrinter(), CommInfo_TrainerInfo(helpdata->helpeeNetID));
        UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_HelpedOutPlayer, TRUE, UndergroundTraps_ResumeFieldSystem);
    }

    UndergroundTraps_StopLinkSpin(helpdata->helpeeNetID);

    if (helpdata->helpeeNetID == CommSys_CurNetId() && trapsEnv->triggeredTrapIDClient != TRAP_NONE) {
        int trapID = trapsEnv->triggeredTrapIDClient;
        EndTrapEffectClientFunc endTrapEffectFunc = sForceEndTrapEffectClientFuncs[trapID];

        if (endTrapEffectFunc) {
            endTrapEffectFunc(helpdata->helpeeNetID, FALSE);
        }

        trapsEnv->unused4 = NULL;
        trapsEnv->triggeredTrapIDClient = TRAP_NONE;

        CommPlayerMan_ResumeFieldSystemWithContextBit(PAUSE_BIT_TRAPS);
        UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetCommonTextPrinter());
    }

    if (CommSys_CurNetId() != 0) {
        ov23_RevertPlayerStatusToNormal(helpdata->helpeeNetID);
    }

    trapsEnv->helpedNetIDs[helpdata->helperNetID] = helpdata->helpeeNetID;
}

int CommPacketSizeOf_TrapHelpData(void)
{
    return sizeof(TrapHelpData);
}

int TrapRadar_GetXCoordOfBuriedTrap(int param0)
{
    if (trapsEnv && trapsEnv->trapRadarContext) {
        int index = trapsEnv->trapRadarContext->timer / 2;

        index = (index + param0) % (MAX_PLACED_TRAPS + MAX_SPAWNED_TRAPS);
        return trapsEnv->trapRadarContext->results[index].x;
    }

    return 0;
}

int TrapRadar_GetZCoordOfBuriedTrap(int param0)
{
    if (trapsEnv && trapsEnv->trapRadarContext) {
        int index = trapsEnv->trapRadarContext->timer / 2;

        index = (index + param0) % (MAX_PLACED_TRAPS + MAX_SPAWNED_TRAPS);
        return trapsEnv->trapRadarContext->results[index].z;
    }

    return 0;
}

static void TrapRadar_TimerTask(SysTask *sysTask, void *data)
{
    TrapRadarContext *ctx = data;

    ctx->timer++;

    if (ctx->timer > (MAX_PLACED_TRAPS + MAX_SPAWNED_TRAPS) * 2) {
        Sound_PlayEffect(SEQ_SE_PL_UG_006);
        ctx->timer = 0;
    }
}

void TrapRadar_Start(void)
{
    if (trapsEnv->trapRadarContext) {
        return;
    }

    if (trapsEnv->baseRadarTask) {
        return;
    }

    TrapRadarContext *ctx = Heap_AllocAtEnd(HEAP_ID_FIELD1, sizeof(TrapRadarContext));
    MI_CpuFill8(ctx, 0, sizeof(TrapRadarContext));
    Link_Message(46);

    trapsEnv->trapRadarContext = ctx;
    trapsEnv->baseRadarTask = SysTask_Start(TrapRadar_TimerTask, ctx, 100);
}

void TrapRadar_Exit(void)
{
    if (trapsEnv->baseRadarTask) {
        BrightnessController_SetScreenBrightness(0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
        G2_BlendNone();
        GX_SetMasterBrightness(0);
        SysTask_Done(trapsEnv->baseRadarTask);
        Heap_Free(trapsEnv->trapRadarContext);
        trapsEnv->baseRadarTask = NULL;
        trapsEnv->trapRadarContext = NULL;
    }
}

void UndergroundTraps_QueueSendTrapRadarResults(int netID, int unused1, void *unused2, void *unused3)
{
    trapsEnv->trapRadarIndex[netID] = 1;
}

static void SendTrapRadarResults(void)
{
    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        int index = trapsEnv->trapRadarIndex[netID] - 1;

        if (trapsEnv->trapRadarIndex[netID]) {
            while (TRUE) {
                BuriedTrap *trap = trapsEnv->buriedTrapsByCoordinates[index];

                if (trap && trap->trapID != TRAP_NONE) {
                    int setterNetID = UndergroundTraps_GetBuriedTrapSetterNetID(trap);

                    if (setterNetID == netID || setterNetID >= MAX_CONNECTED_PLAYERS) {
                        TrapRadarResult radarResult;

                        radarResult.x = trap->x;
                        radarResult.z = trap->z;
                        radarResult.netID = netID;
                        sub_02035B48(47, &radarResult);
                        trapsEnv->trapRadarIndex[netID] = index + 2;
                        break;
                    }
                }

                index++;

                if (index >= MAX_BURIED_TRAPS) {
                    trapsEnv->trapRadarIndex[netID] = 0;
                    break;
                }

                if (index == trapsEnv->trapRadarIndex[netID] - 1) {
                    break;
                }
            }
        }
    }
}

void UndergroundTraps_ReceiveTrapRadarResults(int unused0, int unused1, void *data, void *unused3)
{
    TrapRadarResult *radarResult = data;

    if (trapsEnv->trapRadarContext == NULL) {
        return;
    }

    if (radarResult->netID == CommSys_CurNetId()) {
        MI_CpuCopy8(radarResult, &trapsEnv->trapRadarContext->results[trapsEnv->trapRadarContext->index], sizeof(TrapRadarResult));
        trapsEnv->trapRadarContext->index++;

        if (trapsEnv->trapRadarContext->index >= MAX_PLACED_TRAPS + MAX_SPAWNED_TRAPS) {
            trapsEnv->trapRadarContext->index = 0;
        }
    }
}

int CommPacketSizeOf_TrapRadarResult(void)
{
    return sizeof(TrapRadarResult);
}

static void UndergroundTraps_EndAlterMovementTrapEffectClient(int netID, BOOL unused)
{
    if (CommSys_CurNetId() == netID) {
        if (trapsEnv->currentTrapContext) {
            AlterMovementTrapContext *ctx = trapsEnv->currentTrapContext;

            ctx->state = ALTER_MOVEMENT_TRAP_STATE_END;
            trapsEnv->currentTrapContext = NULL;
        }
    }
}

static void UndergroundTraps_ForceEndAlterMovementTrapEffectClient(int netID, BOOL unused)
{
    if (trapsEnv->currentTrapContext) {
        BrightnessController_SetScreenBrightness(0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);

        G2_BlendNone();
        GX_SetMasterBrightness(0);

        CommSys_RevertPlayerMovementToNormal();
        SysTask_Done(trapsEnv->trapEffectTask);
        Heap_Free(trapsEnv->currentTrapContext);

        trapsEnv->trapEffectTask = NULL;
        trapsEnv->currentTrapContext = NULL;
    }
}

static void UndergroundTraps_AlterMovementTrapClientTask(SysTask *sysTask, void *data)
{
    AlterMovementTrapContext *ctx = data;

    switch (ctx->state) {
    case ALTER_MOVEMENT_TRAP_STATE_START:
        ctx->timer++;

        if (ctx->timer == 1) {
            ctx->printerID = UndergroundTraps_NotifyTrapTriggered();
        } else if (ctx->timer == 2) {
            BrightnessController_StartTransition(1, 10, 0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
        } else if (ctx->timer == 4) {
            BrightnessController_StartTransition(1, 0, 10, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
        }

        if (ctx->timer > 30) {
            UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetCommonTextPrinter());
            ctx->state = ALTER_MOVEMENT_TRAP_STATE_WAIT_FOR_END;

            if (ctx->isReverseTrap) {
                CommSys_ReversePlayerMovement();
            } else {
                CommSys_RandomizePlayerMovement();
            }

            CommPlayerMan_ResumeFieldSystemWithContextBit(PAUSE_BIT_TRAPS);
        }
        break;
    case ALTER_MOVEMENT_TRAP_STATE_WAIT_FOR_END:
        break;
    case ALTER_MOVEMENT_TRAP_STATE_END:
        BrightnessController_SetScreenBrightness(0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);

        G2_BlendNone();
        GX_SetMasterBrightness(0);

        CommSys_RevertPlayerMovementToNormal();
        Heap_Free(data);
        SysTask_Done(sysTask);

        trapsEnv->trapEffectTask = NULL;
        trapsEnv->currentTrapContext = NULL;
        break;
    }
}

static void UndergroundTraps_StartAlterMovementTrapClientTask(BOOL isReverseTrap)
{
    AlterMovementTrapContext *ctx = Heap_AllocAtEnd(HEAP_ID_FIELD1, sizeof(AlterMovementTrapContext));
    MI_CpuClear8(ctx, sizeof(AlterMovementTrapContext));

    ctx->state = ALTER_MOVEMENT_TRAP_STATE_START;
    ctx->isReverseTrap = isReverseTrap;
    ctx->timer = 0;

    trapsEnv->currentTrapContext = ctx;
    trapsEnv->trapEffectTask = SysTask_Start(UndergroundTraps_AlterMovementTrapClientTask, ctx, 100);

    CommPlayerMan_PauseFieldSystemWithContextBit(PAUSE_BIT_TRAPS);
}

static void UndergroundTraps_EndHoleTrapEffectClient(int netID, BOOL unused)
{
    if (CommSys_CurNetId() == netID) {
        if (trapsEnv->currentTrapContext) {
            HoleTrapContext *ctx = trapsEnv->currentTrapContext;

            Player_SetYPos(trapsEnv->fieldSystem->playerAvatar, 0);
            SysTask_Done(trapsEnv->trapEffectTask);
            Heap_Free(ctx);

            trapsEnv->trapEffectTask = NULL;
            trapsEnv->currentTrapContext = NULL;
        }
    }
}

static void UndergroundTraps_ForceEndHoleTrapEffectClient(int netID, BOOL allowToolStepBack)
{
    if (trapsEnv->currentTrapContext) {
        HoleTrapContext *ctx = trapsEnv->currentTrapContext;

        if (ctx->holeTextureManager) {
            OverworldAnimManager_Finish(ctx->holeTextureManager);
            ctx->holeTextureManager = NULL;
        }

        if (ctx->isTool && allowToolStepBack) {
            UndergroundTraps_StepBackFromTool(ctx->toolInitialDir);
        }

        BrightnessController_SetScreenBrightness(0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);

        G2_BlendNone();
        GX_SetMasterBrightness(0);

        Player_SetYPos(trapsEnv->fieldSystem->playerAvatar, 0);
        SysTask_Done(trapsEnv->trapEffectTask);
        Heap_Free(ctx);

        trapsEnv->trapEffectTask = NULL;
        trapsEnv->currentTrapContext = NULL;
    }
}

static void EscapeHole(int netID)
{
    if (CommSys_CurNetId() == netID) {
        if (trapsEnv->currentTrapContext) {
            HoleTrapContext *ctx = trapsEnv->currentTrapContext;
            ctx->state = HOLE_TRAP_STATE_ESCAPE_HOLE;
            Sound_PlayEffect(SEQ_SE_DP_DANSA);
        }
    }
}

static void UndergroundTraps_HoleTrapClientTask(SysTask *sysTask, void *data)
{
    HoleTrapContext *ctx = data;
    const s8 jumpYCoords[] = {
        -1,
        3,
        7,
        11,
        15,
        // entries below this point are unused
        14,
        13,
        12,
        11,
        9,
        7,
        5,
        3,
        1,
        -10
    };

    switch (ctx->state) {
    case HOLE_TRAP_STATE_START:
        ctx->printerID = UndergroundTraps_NotifyTrapTriggered();
        ctx->timer = 0;
        ctx->state++;
        break;
    case HOLE_TRAP_STATE_BRIGHTEN_SCREEN:
        BrightnessController_StartTransition(1, 10, 0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
        ctx->state++;
        break;
    case HOLE_TRAP_STATE_FRAME_DELAY:
        ctx->state++;
        break;
    case HOLE_TRAP_STATE_REVERT_BRIGHTNESS:
        BrightnessController_StartTransition(1, 0, 10, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
        ctx->state++;
        break;
    case HOLE_TRAP_STATE_WAIT:
        ctx->timer++;

        if (ctx->timer > 60) {
            ctx->state++;
            ctx->timer = 0;
        } else if (UndergroundTraps_CheckPlayerPosRelativeToTrap(ctx->toolInitialDir, PLAYER_ON_TRAP)) {
            ctx->state++;
            ctx->timer = 0;
        }
        break;
    case HOLE_TRAP_STATE_DRAW_HOLE:
    case HOLE_TRAP_STATE_UNUSED_6:
        ctx->timer++;

        if (ctx->timer > 30) {
            CommPlayerMan_ResumeFieldSystemWithContextBit(PAUSE_BIT_TRAPS);
            UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetCommonTextPrinter());

            ctx->state = HOLE_TRAP_STATE_MAIN;
            int x = Player_GetXPos(trapsEnv->fieldSystem->playerAvatar);
            int z = Player_GetZPos(trapsEnv->fieldSystem->playerAvatar);

            if (!ctx->isPitTrap) {
                ctx->holeTextureManager = ov5_DrawFloorTexture(trapsEnv->fieldSystem, x, z, 2, FLOOR_TEXTURE_BLACK_CIRCLE);
                Player_SetYPos(trapsEnv->fieldSystem->playerAvatar, -2 * FX32_ONE);
            } else {
                ctx->holeTextureManager = ov5_DrawFloorTexture(trapsEnv->fieldSystem, x, z, 3, FLOOR_TEXTURE_BLACK_CIRCLE);
                Player_SetYPos(trapsEnv->fieldSystem->playerAvatar, -3 * FX32_ONE);
            }
        }
        break;
    case HOLE_TRAP_STATE_MAIN:
        int dir = PlayerAvatar_GetDir(trapsEnv->fieldSystem->playerAvatar);

        if (ctx->lastDir != dir) {
            Sound_PlayEffect(SEQ_SE_DP_BOX02);
        }

        ctx->lastDir = dir;

        ctx->jumpOutOfHoleProgress = 0;
        break;
    case HOLE_TRAP_STATE_WAIT_FOR_FORCE_END:
        break;
    case HOLE_TRAP_STATE_END:
        Player_SetYPos(trapsEnv->fieldSystem->playerAvatar, 0);
        Heap_Free(data);
        SysTask_Done(sysTask);
        trapsEnv->trapEffectTask = NULL;
        trapsEnv->currentTrapContext = NULL;
        break;
    case HOLE_TRAP_STATE_UNUSED_10:
        break;
    case HOLE_TRAP_STATE_TOOL_STEP_BACK:
        ctx->isTool = FALSE;
        CommPlayerMan_ResumeFieldSystemWithContextBit(PAUSE_BIT_TRAPS);
        UndergroundTraps_StepBackFromTool(ctx->toolInitialDir);
        ctx->timer = 0;
        ctx->state = HOLE_TRAP_STATE_TOOL_WAIT_THEN_END;
        break;
    case HOLE_TRAP_STATE_TOOL_WAIT_THEN_END:
        ctx->timer++;

        if (UndergroundTraps_CheckPlayerPosRelativeToTrap(ctx->toolInitialDir, PLAYER_TILE_BACK_FROM_TRAP) || ctx->timer > 60) {
            Link_Message(41);
            ctx->state = HOLE_TRAP_STATE_WAIT_FOR_FORCE_END;
        }
        break;
    case HOLE_TRAP_STATE_ESCAPE_HOLE:
        if (jumpYCoords[ctx->jumpOutOfHoleProgress] != -10) {
            Player_SetYPos(trapsEnv->fieldSystem->playerAvatar, jumpYCoords[ctx->jumpOutOfHoleProgress] * FX32_ONE);
            ctx->jumpOutOfHoleProgress++;

            if (ctx->jumpOutOfHoleProgress == 5) {
                if (ctx->holeTextureManager) {
                    OverworldAnimManager_Finish(ctx->holeTextureManager);
                    ctx->holeTextureManager = NULL;
                }

                if (ctx->isTool) {
                    ctx->state = HOLE_TRAP_STATE_TOOL_STEP_BACK;
                } else {
                    Link_Message(41);
                    ctx->state = HOLE_TRAP_STATE_END;
                }
            }
        }
        break;
    }
}

static void UndergroundTraps_StartHoleTrapClientTask(BOOL isPitTrap, BOOL isTool, int toolInitialDir)
{
    HoleTrapContext *ctx = Heap_Alloc(HEAP_ID_FIELD1, sizeof(HoleTrapContext));
    MI_CpuClear8(ctx, sizeof(HoleTrapContext));

    ctx->state = HOLE_TRAP_STATE_START;
    ctx->isPitTrap = isPitTrap;
    ctx->jumpOutOfHoleProgress = 0;
    ctx->isTool = isTool;
    ctx->lastDir = PlayerAvatar_GetDir(trapsEnv->fieldSystem->playerAvatar);
    ctx->toolInitialDir = toolInitialDir;

    trapsEnv->currentTrapContext = ctx;
    trapsEnv->trapEffectTask = SysTask_Start(UndergroundTraps_HoleTrapClientTask, ctx, 100);
}

static void UndergroundTraps_HoleTrapEffectClient(int netID, BOOL isTool, int toolInitialDir)
{
    ov23_UpdatePlayerStatus(netID, PLAYER_STATUS_IN_HOLE);

    if (CommSys_CurNetId() == netID) {
        UndergroundTraps_StartHoleTrapClientTask(FALSE, isTool, toolInitialDir);
    }
}

static void UndergroundTraps_PitTrapEffectClient(int netID, BOOL isTool, int toolInitialDir)
{
    ov23_UpdatePlayerStatus(netID, PLAYER_STATUS_IN_HOLE);

    if (CommSys_CurNetId() == netID) {
        UndergroundTraps_StartHoleTrapClientTask(TRUE, isTool, toolInitialDir);
    }
}

static void UndergroundTraps_EndHoleTrapEffectServer(int netID)
{
    ov23_RevertPlayerStatusToNormal(netID);
    CommPlayerMan_RemovePlayerFromHole(netID);
}

static void UndergroundTraps_HoleTrapEffectServer(int netID)
{
    ov23_UpdatePlayerStatus(netID, PLAYER_STATUS_IN_HOLE);
    CommPlayerMan_PutPlayerInHole(netID, 10);
}

static void UndergroundTraps_PitTrapEffectServer(int netID)
{
    ov23_UpdatePlayerStatus(netID, PLAYER_STATUS_IN_HOLE);
    CommPlayerMan_PutPlayerInHole(netID, 20);
}

static void UndergroundTraps_InitLeaves(LeafTrapContext *ctx)
{
    const int screenWidth = HW_LCD_WIDTH;
    const int screenHeight = HW_LCD_HEIGHT;

    MATHRandContext32 rand;
    CommSys_Seed(&rand);

    for (int i = 0; i < ctx->leafCount; i++) {
        ctx->leafCoords[i].x = MATH_Rand32(&rand, screenWidth);
        ctx->leafCoords[i].y = MATH_Rand32(&rand, screenHeight);
        ctx->leafAngleIdx[i] = MATH_Rand32(&rand, 0xFFFF);
    }
}

static void UndergroundTraps_LeafTrapClientTask(SysTask *sysTask, void *data)
{
    LeafTrapContext *ctx = data;
    int narcMemberIdx;

    switch (ctx->state) {
    case LEAF_TRAP_STATE_START:
        ctx->printerID = UndergroundTraps_NotifyTrapTriggered();
        ctx->timer = 0;
        UndergroundTraps_InitSpriteResources();
        ctx->state++;
        break;
    case LEAF_TRAP_STATE_LOAD_CHAR:
        BrightnessController_StartTransition(1, 10, 0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);

        if (trapsEnv->triggeredTrapIDClient == TRAP_FLOWER) {
            narcMemberIdx = petal_NCGR;
        } else {
            narcMemberIdx = leaf_NCGR;
        }

        trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTiles(trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_CHAR], NARC_INDEX_DATA__UG_TRAP, narcMemberIdx, FALSE, 0, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_FIELD1);
        ctx->state++;
        break;
    case LEAF_TRAP_STATE_LOAD_PLTT:
        if (trapsEnv->triggeredTrapIDClient == TRAP_FLOWER) {
            narcMemberIdx = petal_NCLR;
        } else {
            narcMemberIdx = leaf_NCLR;
        }

        trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPalette(trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_PLTT], NARC_INDEX_DATA__UG_TRAP, narcMemberIdx, FALSE, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 7, HEAP_ID_FIELD1);
        ctx->state++;
        break;
    case LEAF_TRAP_STATE_LOAD_CELL:
        BrightnessController_StartTransition(1, 0, 10, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);

        if (trapsEnv->triggeredTrapIDClient == TRAP_FLOWER) {
            narcMemberIdx = petal_cell_NCER;
        } else {
            narcMemberIdx = leaf_cell_NCER;
        }

        trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_CELL] = SpriteResourceCollection_Add(trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_CELL], NARC_INDEX_DATA__UG_TRAP, narcMemberIdx, FALSE, 0, SPRITE_RESOURCE_CELL, HEAP_ID_FIELD1);
        ctx->state++;
        break;
    case LEAF_TRAP_STATE_LOAD_ANIM:
        if (trapsEnv->triggeredTrapIDClient == TRAP_FLOWER) {
            narcMemberIdx = petal_anim_NANR;
        } else {
            narcMemberIdx = leaf_anim_NANR;
        }

        trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_Add(trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_ANIM], NARC_INDEX_DATA__UG_TRAP, narcMemberIdx, FALSE, 0, SPRITE_RESOURCE_ANIM, HEAP_ID_FIELD1);
        ctx->state++;
        break;
    case LEAF_TRAP_STATE_INIT_LEAVES:
        SpriteTransfer_RequestCharAtEndWithHardwareMappingType(trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_CHAR]);
        SpriteTransfer_RequestPlttFreeSpace(trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_PLTT]);

        UndergroundTraps_InitLeafSprites(ctx->leafCount);
        UndergroundTraps_InitLeaves(ctx);
        ctx->state++;
        break;
    case LEAF_TRAP_STATE_PRINT_TUTORIAL:
        ctx->timer++;

        if (ctx->timer > 30) {
            BrightnessController_StartTransition(1, -4, 0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
            UndergroundTextPrinter_PrintTextInstant(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_BlowTrapAway, FALSE, NULL);

            ctx->state = LEAF_TRAP_STATE_MAIN;
            ctx->messageTimer = 0;
        }
        break;
    case LEAF_TRAP_STATE_MAIN:
        if (UndergroundTraps_ProcessLeaves(trapsEnv->fieldSystem->bgConfig, ctx)) {
            if (ctx->isTool) {
                ctx->state = LEAF_TRAP_STATE_TOOL_STEP_BACK;
            } else {
                Link_Message(41);
                ctx->state = LEAF_TRAP_STATE_WAIT_FOR_END;
            }
        }

        if (ctx->messageTimer < 60) {
            ctx->messageTimer++;

            if (ctx->messageTimer == 60) {
                UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetCommonTextPrinter());
            }
        }

        break;
    case LEAF_TRAP_STATE_WAIT_FOR_END:
        UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetCommonTextPrinter());
        break;
    case LEAF_TRAP_STATE_END_UNUSED:
        UndergroundTraps_EndLeafTrapEffectClient(CommSys_CurNetId(), ctx->isTool);
        break;
    case LEAF_TRAP_STATE_TOOL_STEP_BACK:
        ctx->isTool = 0;
        CommPlayerMan_ResumeFieldSystemWithContextBit(PAUSE_BIT_TRAPS);
        UndergroundTraps_StepBackFromTool(ctx->toolInitialDir);
        ctx->timer = 0;
        ctx->state = LEAF_TRAP_STATE_TOOL_WAIT_THEN_END;
        break;
    case LEAF_TRAP_STATE_TOOL_WAIT_THEN_END:
        ctx->timer++;

        if (ctx->timer > 8) {
            Link_Message(41);
            ctx->state = LEAF_TRAP_STATE_WAIT_FOR_END;
        }
        break;
    }
}

static void UndergroundTraps_EndLeafTrapEffectClient(int netID, BOOL allowToolStepBack)
{
    if (trapsEnv->currentTrapContext) {
        LeafTrapContext *ctx = trapsEnv->currentTrapContext;

        if (ctx->isTool && allowToolStepBack) {
            UndergroundTraps_StepBackFromTool(ctx->toolInitialDir);
        }

        BrightnessController_SetScreenBrightness(0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
        BrightnessController_StartTransition(1, 0, -4, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);

        UndergroundTraps_DeleteSpritesAndResources(ctx->leafCount);

        CommPlayerMan_ResumeFieldSystemWithContextBit(PAUSE_BIT_TRAPS);
        SysTask_Done(trapsEnv->trapEffectTask);
        Heap_Free(trapsEnv->currentTrapContext);

        trapsEnv->trapEffectTask = NULL;
        trapsEnv->currentTrapContext = NULL;
    }
}

static void UndergroundTraps_StartLeafTrapClientTask(FieldSystem *fieldSystem, BOOL isTool, int toolInitialDir)
{
    LeafTrapContext *ctx = Heap_Alloc(HEAP_ID_FIELD1, sizeof(LeafTrapContext));
    MI_CpuFill8(ctx, 0, sizeof(LeafTrapContext));

    ctx->isTool = isTool;
    ctx->fieldSystem = fieldSystem;

    if (trapsEnv->triggeredTrapIDClient == TRAP_FLOWER) {
        ctx->leafCount = MAX_TRAP_EFFECT_SPRITES;
    } else {
        ctx->leafCount = 16;
    }

    ctx->toolInitialDir = toolInitialDir;

    trapsEnv->currentTrapContext = ctx;
    trapsEnv->trapEffectTask = SysTask_Start(UndergroundTraps_LeafTrapClientTask, ctx, 100);
}

static void UndergroundTraps_InitSpriteResources(void)
{
    trapsEnv->spriteList = SpriteList_InitRendering(32, &trapsEnv->g2dRenderer, HEAP_ID_FIELD1);
    SetSubScreenViewRect(&trapsEnv->g2dRenderer, 0, (192 << FX32_SHIFT) * 2);

    for (int resourceType = SPRITE_RESOURCE_CHAR; resourceType < SPRITE_RESOURCE_ANIM + 1; resourceType++) {
        trapsEnv->spriteResourceCollection[TRAP_RESOURCES][resourceType] = SpriteResourceCollection_New(2, resourceType, HEAP_ID_FIELD1);
    }
}

static void UndergroundTraps_DeleteSpritesAndResources(int spriteCount)
{
    int i;

    for (i = 0; i < spriteCount; i++) {
        if (trapsEnv->sprites[i] != NULL) {
            Sprite_Delete(trapsEnv->sprites[i]);
            trapsEnv->sprites[i] = NULL;
        }
    }

    if (trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_CHAR]) {
        if (CharTransfer_HasTask(SpriteResource_GetID(trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_CHAR]))) {
            SpriteTransfer_ResetCharTransfer(trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_CHAR]);
        }
    }

    trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_CHAR] = NULL;

    if (trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_PLTT]) {
        if (PlttTransfer_HasTask(SpriteResource_GetID(trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_PLTT]))) {
            SpriteTransfer_ResetPlttTransfer(trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_PLTT]);
        }
    }

    trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_PLTT] = NULL;

    for (i = SPRITE_RESOURCE_CHAR; i < SPRITE_RESOURCE_ANIM + 1; i++) {
        if (trapsEnv->spriteResourceCollection[TRAP_RESOURCES][i]) {
            SpriteResourceCollection_Delete(trapsEnv->spriteResourceCollection[TRAP_RESOURCES][i]);
        }

        trapsEnv->spriteResourceCollection[TRAP_RESOURCES][i] = NULL;
    }

    if (trapsEnv->spriteList) {
        SpriteList_Delete(trapsEnv->spriteList);
    }

    trapsEnv->spriteList = NULL;
}

static void UndergroundTraps_InitLeafSprites(int leafCount)
{
    SpriteResourcesHeader_Init(&trapsEnv->resourceData, 0, 0, 0, 0, 0xFFFFFFFF, 0xFFFFFFFF, FALSE, 0, trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_CHAR], trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_PLTT], trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_CELL], trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_ANIM], NULL, NULL);

    AffineSpriteListTemplate template;

    template.list = trapsEnv->spriteList;
    template.resourceData = &trapsEnv->resourceData;
    template.position.x = FX32_CONST(32);
    template.position.y = FX32_CONST(96);
    template.position.z = 0;
    template.affineScale.x = FX32_ONE;
    template.affineScale.y = FX32_ONE;
    template.affineScale.z = FX32_ONE;
    template.affineZRotation = 0;
    template.priority = 0;
    template.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.heapID = HEAP_ID_FIELD1;

    for (int i = 0; i < leafCount; i++) {
        template.position.x = FX32_ONE * 300;
        template.position.y = FX32_ONE * 300;

        trapsEnv->sprites[i] = SpriteList_AddAffine(&template);

        Sprite_SetAnim(trapsEnv->sprites[i], 0);
        Sprite_SetAnimateFlag(trapsEnv->sprites[i], FALSE);
        Sprite_SetAnimFrame(trapsEnv->sprites[i], 0);
        Sprite_SetExplicitPriority(trapsEnv->sprites[i], 1);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

static void UndergroundTraps_DeleteSprite(int index)
{
    if (trapsEnv->sprites[index]) {
        Sprite_Delete(trapsEnv->sprites[index]);
        trapsEnv->sprites[index] = NULL;
    }
}

static void UndergroundTraps_SwayLeaf(int index, LeafTrapContext *ctx, int micBlowIntensity)
{
    int x = ctx->leafCoords[index].x;
    int y = ctx->leafCoords[index].y;

    if (micBlowIntensity == 0) {
        ctx->leafAngleIdx[index] += 0x400;
    }

    fx32 xMovement = FX_Mul(FX_SinIdx(ctx->leafAngleIdx[index]), 4 * FX32_ONE + FX32_ONE / 2);
    fx32 yMovement = FX_Mul(FX_CosIdx(ctx->leafAngleIdx[index]), 2 * FX32_ONE + FX32_ONE / 2);
    yMovement = MATH_ABS(yMovement);

    if (trapsEnv->sprites[index]) {
        VecFx32 position;
        position.x = FX32_ONE * x + xMovement;
        position.y = FX32_ONE * y + yMovement;

        Sprite_SetPosition(trapsEnv->sprites[index], &position);
    }
}

static void UndergroundTraps_MicSampleCallback(MICResult result, void *unused)
{
    if (result == MIC_RESULT_SUCCESS) {
        trapsEnv->micSample = sMicSample;
    }
}

// returns true when all leaves/petals are blown away
static BOOL UndergroundTraps_ProcessLeaves(BgConfig *unused, LeafTrapContext *ctx)
{
    int i;
    int micBlowIntensity = 0;

    Sound_StartMicManualSampling(MIC_SAMPLING_TYPE_SIGNED_8BIT, &sMicSample, UndergroundTraps_MicSampleCallback, NULL);

    if (trapsEnv->triggeredTrapIDClient == TRAP_FLOWER) {
        micBlowIntensity = abs(trapsEnv->micSample) / 33;
        ctx->micBlowIntensities[ctx->blowIntensityIndex] = micBlowIntensity;
    } else {
        micBlowIntensity = abs(trapsEnv->micSample) / 25;
        ctx->micBlowIntensities[ctx->blowIntensityIndex] = micBlowIntensity;
    }

    for (i = 0; i < ctx->leafCount; i++) {
        if (trapsEnv->sprites[i]) {
            break;
        }
    }

    if (i == ctx->leafCount) {
        return TRUE;
    }

    for (i = 0; i < ctx->leafCount; i++) {
        if (ctx->leafCoords[i].x <= 0 || ctx->leafCoords[i].x >= HW_LCD_WIDTH || ctx->leafCoords[i].y <= 0 || ctx->leafCoords[i].y >= HW_LCD_HEIGHT) {
            UndergroundTraps_DeleteSprite(i);
            continue;
        }

        int adjustedBlowIntensityIndex = ctx->blowIntensityIndex - ctx->micBlowDelay[i];

        if (adjustedBlowIntensityIndex < 0) {
            adjustedBlowIntensityIndex += 40;
        }

        micBlowIntensity = ctx->micBlowIntensities[adjustedBlowIntensityIndex];
        fx32 fxXDistance = ctx->leafCoords[i].x - HW_LCD_WIDTH / 2;
        fx32 fxYDistance = ctx->leafCoords[i].y - HW_LCD_HEIGHT / 2;
        fxXDistance *= FX32_ONE;
        fxYDistance *= FX32_ONE;
        fx32 distance = FX_Mul(fxXDistance, fxXDistance) + FX_Mul(fxYDistance, fxYDistance);
        distance = FX_Sqrt(distance);

        if (micBlowIntensity == 0) {
            fx32 micBlowDelay = FX_Mul(FX_Div(distance, 160 * FX32_ONE), (40 - 2) * FX32_ONE);
            ctx->micBlowDelay[i] = FX_Whole(micBlowDelay);
        } else {
            int xDistance = ctx->leafCoords[i].x - HW_LCD_WIDTH / 2;
            int yDistance = ctx->leafCoords[i].y - HW_LCD_HEIGHT / 2;

            if (yDistance == 0) {
                if (xDistance < 0) {
                    ctx->leafCoords[i].x -= micBlowIntensity;
                } else {
                    ctx->leafCoords[i].x += micBlowIntensity;
                }
            } else if (xDistance == 0) {
                if (yDistance < 0) {
                    ctx->leafCoords[i].y -= micBlowIntensity;
                } else {
                    ctx->leafCoords[i].y += micBlowIntensity;
                }
            } else {
                u16 angleIdx = FX_Atan2Idx(yDistance, xDistance);

                distance += micBlowIntensity * FX32_ONE;
                int newDistance = FX_Whole(FX_Mul(FX_SinIdx(angleIdx), distance));
                ctx->leafCoords[i].y = HW_LCD_HEIGHT / 2 + newDistance;
                newDistance = FX_Whole(FX_Mul(FX_CosIdx(angleIdx), distance));
                ctx->leafCoords[i].x = HW_LCD_WIDTH / 2 + newDistance;
            }
        }

        UndergroundTraps_SwayLeaf(i, ctx, micBlowIntensity);
    }

    ctx->blowIntensityIndex++;

    if (ctx->blowIntensityIndex >= 40) {
        ctx->blowIntensityIndex = 0;
    }

    SpriteList_Update(trapsEnv->spriteList);
    return FALSE;
}

void UndergroundTraps_Dummy2(BgConfig *bgConfig)
{
    if (trapsEnv->unused4) {
        trapsEnv->unused4(bgConfig);
    }
}

static int UndergroundTraps_GetBubbleCount(void)
{
    if (trapsEnv->triggeredTrapIDClient == TRAP_BUBBLE) {
        return MAX_BUBBLES;
    } else {
        return 7;
    }
}

static const int sBubbleSizeRadii[] = {
    [BUBBLE_SIZE_LARGE] = 32,
    [BUBBLE_SIZE_MEDIUM] = 28,
    [BUBBLE_SIZE_SMALL] = 24,
};

static void UndergroundTraps_InitBubbles(BubbleTrapContext *ctx)
{
    int maxX, maxY, largeBubbleCount = 0, maxMediumIndex;
    const int screenWidth = HW_LCD_WIDTH;
    const int screenHeight = HW_LCD_HEIGHT;

    MATHRandContext32 rand;
    CommSys_Seed(&rand);

    int bubbleCount = UndergroundTraps_GetBubbleCount();

    if (trapsEnv->triggeredTrapIDClient == TRAP_BUBBLE) {
        largeBubbleCount = MATH_Rand32(&rand, 2) + 1;
    }

    maxMediumIndex = MATH_Rand32(&rand, 3) + largeBubbleCount + 5;

    for (int i = 0; i < bubbleCount; i++) {
        int index = bubbleCount - i - 1;

        if (i < largeBubbleCount) {
            ctx->bubbleSizes[index] = BUBBLE_SIZE_LARGE;
        } else if (i < maxMediumIndex) {
            ctx->bubbleSizes[index] = BUBBLE_SIZE_MEDIUM;
        } else {
            ctx->bubbleSizes[index] = BUBBLE_SIZE_SMALL;
        }

        int radius = sBubbleSizeRadii[ctx->bubbleSizes[index]];
        maxX = screenWidth - radius * 2;
        maxY = screenHeight - radius * 2;

        ctx->bubbleCoords[index].x = (MATH_Rand32(&rand, maxX) + radius) * FX32_ONE;
        ctx->bubbleCoords[index].y = (MATH_Rand32(&rand, maxY) + radius) * FX32_ONE;
        ctx->bubbleAngleIdx[index] = MATH_Rand32(&rand, 0xFFFF);
        ctx->bubbleScaleTimer[index] = MATH_Rand32(&rand, 0xFFFF);
    }
}

static void UndergroundTraps_BubbleTrapClientTask(SysTask *sysTask, void *data)
{
    BubbleTrapContext *ctx = data;

    switch (ctx->state) {
    case BUBBLE_TRAP_STATE_START:
        ctx->printerID = UndergroundTraps_NotifyTrapTriggered();
        ctx->timer = 0;
        UndergroundTraps_InitSpriteResources();
        ctx->state++;
        break;
    case BUBBLE_TRAP_STATE_LOAD_CHAR:
        trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTiles(trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_CHAR], NARC_INDEX_DATA__UG_TRAP, bubble_NCGR, FALSE, 0, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_FIELD1);
        BrightnessController_StartTransition(1, 10, 0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
        ctx->state++;
        break;
    case BUBBLE_TRAP_STATE_LOAD_PLTT:
        trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPalette(trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_PLTT], NARC_INDEX_DATA__UG_TRAP, bubble_NCLR, FALSE, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 7, HEAP_ID_FIELD1);
        ctx->state++;
        break;
    case BUBBLE_TRAP_STATE_LOAD_CELL:
        BrightnessController_StartTransition(1, 0, 10, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
        trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_CELL] = SpriteResourceCollection_Add(trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_CELL], NARC_INDEX_DATA__UG_TRAP, bubble_cell_NCER, FALSE, 0, SPRITE_RESOURCE_CELL, HEAP_ID_FIELD1);
        ctx->state++;
        break;
    case BUBBLE_TRAP_STATE_LOAD_ANIM:
        trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_Add(trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_ANIM], NARC_INDEX_DATA__UG_TRAP, bubble_anim_NANR, FALSE, 0, SPRITE_RESOURCE_ANIM, HEAP_ID_FIELD1);
        ctx->state++;
        break;
    case BUBBLE_TRAP_STATE_INIT_BUBBLES:
        UndergroundTraps_InitBubbles(ctx);
        UndergroundTraps_InitBubbleSprites(ctx);
        ctx->state++;
        break;
    case BUBBLE_TRAP_STATE_PRINT_TUTORIAL:
        ctx->timer++;

        if (ctx->timer > 30) {
            GX_SetMasterBrightness(-4);
            ctx->state = BUBBLE_TRAP_STATE_MAIN;
            UndergroundTextPrinter_PrintTextInstant(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_RemoveTrapByTouch, FALSE, NULL);
            ctx->messageTimer = 0;
            Sound_PlayEffect(SEQ_SE_DP_FAWA);
        }
        break;
    case BUBBLE_TRAP_STATE_MAIN:
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_OBJ, GX_BLEND_PLANEMASK_BG0, 14, 7);

        if (UndergroundTraps_ProcessBubbles(trapsEnv->fieldSystem->bgConfig, ctx)) {
            Sound_StopEffect(SEQ_SE_DP_FAWA, 0);

            if (ctx->isTool) {
                ctx->state = BUBBLE_TRAP_STATE_TOOL_STEP_BACK;
            } else {
                Link_Message(41);
                ctx->state = BUBBLE_TRAP_STATE_WAIT_FOR_END;
            }
        }

        if (ctx->messageTimer < 60) {
            ctx->messageTimer++;

            if (ctx->messageTimer == 60) {
                UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetCommonTextPrinter());
            }
        }
        break;
    case BUBBLE_TRAP_STATE_WAIT_FOR_END:
        Sound_StopEffect(SEQ_SE_DP_FAWA, 0);
        UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetCommonTextPrinter());
        break;
    case BUBBLE_TRAP_STATE_END_UNUSED:
        ctx->state = BUBBLE_TRAP_STATE_END_UNUSED_2;
        UndergroundTraps_EndBubbleTrapEffectClient(CommSys_CurNetId(), ctx->isTool);
        break;
    case BUBBLE_TRAP_STATE_END_UNUSED_2:
        break;
    case BUBBLE_TRAP_STATE_TOOL_STEP_BACK:
        ctx->isTool = 0;
        CommPlayerMan_ResumeFieldSystemWithContextBit(PAUSE_BIT_TRAPS);
        UndergroundTraps_StepBackFromTool(ctx->toolInitialDir);
        ctx->timer = 0;
        ctx->state = BUBBLE_TRAP_STATE_TOOL_WAIT_THEN_END;
        break;
    case BUBBLE_TRAP_STATE_TOOL_WAIT_THEN_END:
        ctx->timer++;

        if (ctx->timer > 8) {
            Link_Message(41);
            ctx->state = BUBBLE_TRAP_STATE_WAIT_FOR_END;
        }
        break;
    }
}

static void UndergroundTraps_StartBubbleTrapClientTask(BgConfig *unused, BOOL isTool, int toolInitialDir)
{
    BubbleTrapContext *ctx = Heap_AllocAtEnd(HEAP_ID_FIELD1, sizeof(BubbleTrapContext));
    MI_CpuFill8(ctx, 0, sizeof(BubbleTrapContext));
    ctx->isTool = isTool;

    trapsEnv->currentTrapContext = ctx;
    trapsEnv->trapEffectTask = SysTask_Start(UndergroundTraps_BubbleTrapClientTask, ctx, 100);

    ctx->toolInitialDir = toolInitialDir;
}

static void UndergroundTraps_InitBubbleSprites(BubbleTrapContext *ctx)
{
    SpriteTransfer_RequestCharAtEndWithHardwareMappingType(trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_RequestPlttFreeSpace(trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_PLTT]);
    SpriteResourcesHeader_Init(&trapsEnv->resourceData, 0, 0, 0, 0, 0xFFFFFFFF, 0xFFFFFFFF, FALSE, 0, trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_CHAR], trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_PLTT], trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_CELL], trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_ANIM], NULL, NULL);

    AffineSpriteListTemplate template;

    template.list = trapsEnv->spriteList;
    template.resourceData = &trapsEnv->resourceData;
    template.position.x = FX32_CONST(32);
    template.position.y = FX32_CONST(96);
    template.position.z = 0;
    template.affineScale.x = FX32_ONE;
    template.affineScale.y = FX32_ONE;
    template.affineScale.z = FX32_ONE;
    template.affineZRotation = 0;
    template.priority = 0;
    template.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.heapID = HEAP_ID_FIELD1;

    for (int i = 0; i < UndergroundTraps_GetBubbleCount(); i++) {
        template.position.x = FX32_ONE * 300;
        template.position.y = FX32_ONE * 300;

        trapsEnv->sprites[i] = SpriteList_AddAffine(&template);

        Sprite_SetAffineOverwriteMode(trapsEnv->sprites[i], AFFINE_OVERWRITE_MODE_NORMAL);
        Sprite_SetAnim(trapsEnv->sprites[i], ctx->bubbleSizes[i] * 2);
        Sprite_SetAnimateFlag(trapsEnv->sprites[i], TRUE);
        Sprite_SetAnimFrame(trapsEnv->sprites[i], i * 4);
        Sprite_SetExplicitOAMMode(trapsEnv->sprites[i], GX_OAM_MODE_XLU);
        Sprite_SetExplicitPriority(trapsEnv->sprites[i], 1);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

static void UndergroundTraps_UpdateBubbleSprite(int index, BubbleTrapContext *ctx)
{
    if (trapsEnv->sprites[index]) {
        VecFx32 vec;
        vec.x = ctx->bubbleCoords[index].x;
        vec.y = ctx->bubbleCoords[index].y;

        Sprite_SetPosition(trapsEnv->sprites[index], &vec);
        ctx->bubbleScaleTimer[index] += 0x250 + index * 100;

        fx16 scaleValue = FX_SinIdx(ctx->bubbleScaleTimer[index]) + FX32_ONE;
        fx32 adjustedScaleValue = FX_Div(scaleValue, 20 * FX32_ONE);
        vec.x = FX32_ONE - adjustedScaleValue;
        vec.y = FX32_ONE - adjustedScaleValue;
        vec.z = FX32_ONE - adjustedScaleValue;

        Sprite_SetAffineScale(trapsEnv->sprites[index], &vec);
    }
}

// returns true when all bubbles have been popped
static BOOL UndergroundTraps_ProcessBubbles(BgConfig *unused, BubbleTrapContext *ctx)
{
    int i;
    int poppedCount = 0;

    for (i = 0; i < UndergroundTraps_GetBubbleCount(); i++) {
        if (!ctx->isBubblePopped[i]) {
            UndergroundTraps_UpdateBubbleSprite(i, ctx);
        } else {
            poppedCount++;
        }
    }

    if (poppedCount == UndergroundTraps_GetBubbleCount()) {
        return TRUE;
    }

    fx32 distance;
    if (gSystem.touchPressed) {
        for (i = 0; i < UndergroundTraps_GetBubbleCount(); i++) {
            if (ctx->isBubblePopped[i]) {
                continue;
            }

            fx32 xDistance = gSystem.touchX * FX32_ONE - ctx->bubbleCoords[i].x;
            fx32 yDistance = gSystem.touchY * FX32_ONE - ctx->bubbleCoords[i].y;
            distance = FX_Sqrt(FX_Mul(xDistance, xDistance) + FX_Mul(yDistance, yDistance));

            if (sBubbleSizeRadii[ctx->bubbleSizes[i]] * FX32_ONE > distance) {
                Sound_PlayEffect(SEQ_SE_DP_UG_022);
                Sprite_SetAnim(trapsEnv->sprites[i], ctx->bubbleSizes[i] * 2 + 1);
                ctx->isBubblePopped[i] = TRUE;
                break;
            }
        }
    }

    for (i = 0; i < UndergroundTraps_GetBubbleCount(); i++) {
        if (ctx->isBubblePopped[i]) {
            continue;
        }

        distance = FX_SinIdx(ctx->bubbleAngleIdx[i]);
        ctx->bubbleCoords[i].y -= distance;

        distance = FX_CosIdx(ctx->bubbleAngleIdx[i]);
        ctx->bubbleCoords[i].x += distance;

        int radius = sBubbleSizeRadii[ctx->bubbleSizes[i]];

        if (ctx->bubbleCoords[i].y < radius * FX32_ONE) {
            ctx->bubbleAngleIdx[i] = 0xFFFF - ctx->bubbleAngleIdx[i];
        } else if (ctx->bubbleCoords[i].y >= (HW_LCD_HEIGHT - radius) * FX32_ONE) {
            ctx->bubbleAngleIdx[i] = 0xFFFF - ctx->bubbleAngleIdx[i];
        }

        if (ctx->bubbleCoords[i].x < radius * FX32_ONE) {
            ctx->bubbleAngleIdx[i] = 0xFFFF - (ctx->bubbleAngleIdx[i] - 0x8000);
        } else if (ctx->bubbleCoords[i].x >= (HW_LCD_WIDTH - radius) * FX32_ONE) {
            ctx->bubbleAngleIdx[i] = 0xFFFF - (ctx->bubbleAngleIdx[i] - 0x8000);
        }
    }

    SpriteList_Update(trapsEnv->spriteList);
    return FALSE;
}

static void UndergroundTraps_BubbleTrapEffectClient(int netID, BOOL isTool, int toolInitialDir)
{
    ov23_UpdatePlayerStatus(netID, PLAYER_STATUS_IMMOBILIZED_BY_TRAP);

    if (CommSys_CurNetId() == netID) {
        UndergroundTraps_StartBubbleTrapClientTask(trapsEnv->fieldSystem->bgConfig, isTool, toolInitialDir);
    }
}

static void UndergroundTraps_BubbleTrapEffectServer(int netID)
{
    ov23_UpdatePlayerStatus(netID, PLAYER_STATUS_IMMOBILIZED_BY_TRAP);
}

static void UndergroundTraps_EndBubbleTrapEffectClient(int netID, BOOL allowToolStepBack)
{
    if (trapsEnv->currentTrapContext) {
        BubbleTrapContext *ctx = trapsEnv->currentTrapContext;

        Sound_StopEffect(SEQ_SE_DP_FAWA, 0);

        if (ctx->isTool && allowToolStepBack) {
            UndergroundTraps_StepBackFromTool(ctx->toolInitialDir);
        }

        G2_BlendNone();
        BrightnessController_SetScreenBrightness(0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);

        GX_SetMasterBrightness(0);
        UndergroundTraps_DeleteSpritesAndResources(UndergroundTraps_GetBubbleCount());

        CommPlayerMan_ResumeFieldSystemWithContextBit(PAUSE_BIT_TRAPS);
        SysTask_Done(trapsEnv->trapEffectTask);
        Heap_Free(trapsEnv->currentTrapContext);

        trapsEnv->trapEffectTask = NULL;
        trapsEnv->currentTrapContext = NULL;
    }
}

static void UndergroundTraps_InitBoulderSprites(RockTrapContext *unused)
{
    SpriteTransfer_RequestCharAtEndWithHardwareMappingType(trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_RequestPlttFreeSpace(trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_PLTT]);
    SpriteResourcesHeader_Init(&trapsEnv->resourceData, 0, 0, 0, 0, 0xFFFFFFFF, 0xFFFFFFFF, FALSE, 0, trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_CHAR], trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_PLTT], trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_CELL], trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_ANIM], NULL, NULL);

    AffineSpriteListTemplate template;

    template.list = trapsEnv->spriteList;
    template.resourceData = &trapsEnv->resourceData;
    template.position.x = FX32_CONST(32);
    template.position.y = FX32_CONST(96);
    template.position.z = 0;
    template.affineScale.x = FX32_ONE;
    template.affineScale.y = FX32_ONE;
    template.affineScale.z = FX32_ONE;
    template.affineZRotation = 0;
    template.priority = 0;
    template.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.heapID = HEAP_ID_FIELD1;

    for (int i = 0; i < ROCK_TRAP_SPRITE_COUNT; i++) {
        template.position.x = FX32_ONE * 100;
        template.position.y = FX32_ONE * 100;

        trapsEnv->sprites[i] = SpriteList_AddAffine(&template);

        Sprite_SetAnim(trapsEnv->sprites[i], ROCK_TRAP_ANIM_DEBRIS);
        Sprite_SetAnimateFlag(trapsEnv->sprites[i], TRUE);
        Sprite_SetDrawFlag(trapsEnv->sprites[i], FALSE);
        Sprite_SetAnimFrame(trapsEnv->sprites[i], 0);
        Sprite_SetPriority(trapsEnv->sprites[i], ROCK_TRAP_SPRITE_COUNT - i);
        Sprite_SetExplicitPriority(trapsEnv->sprites[i], 1);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

static void UndergroundTraps_InitSingleBoulderDebris(RockTrapContext *ctx, int index, int x, int y, int xSpeed, int ySpeed)
{
    ctx->debrisXPos[index] = x;
    ctx->debrisXSpeed[index] = xSpeed;
    ctx->debrisYPos[index] = y;
    ctx->debrisYSpeed[index] = ySpeed;

    Sprite_SetDrawFlag(trapsEnv->sprites[index], TRUE);
}

static void UndergroundTraps_InitBoulderDebris(RockTrapContext *ctx, int boulderDamageStage)
{
    switch (boulderDamageStage) {
    default:
    case 4:
        UndergroundTraps_InitSingleBoulderDebris(ctx, 11, 105, ctx->boulderYPos - 5, 2, -4);
        UndergroundTraps_InitSingleBoulderDebris(ctx, 12, 140, ctx->boulderYPos - 15, -2, -4);
        UndergroundTraps_InitSingleBoulderDebris(ctx, 13, 135, ctx->boulderYPos - 20, -2, -2);
        UndergroundTraps_InitSingleBoulderDebris(ctx, 14, 120, ctx->boulderYPos - 11, 2, 0);
    case 3:
        UndergroundTraps_InitSingleBoulderDebris(ctx, 7, 128, ctx->boulderYPos - 5, 3, -4);
        UndergroundTraps_InitSingleBoulderDebris(ctx, 8, 132, ctx->boulderYPos - 15, -3, -4);
        UndergroundTraps_InitSingleBoulderDebris(ctx, 9, 112, ctx->boulderYPos, 1, -2);
        UndergroundTraps_InitSingleBoulderDebris(ctx, 10, 115, ctx->boulderYPos + 2, 1, -2);
    case 2:
        UndergroundTraps_InitSingleBoulderDebris(ctx, 4, 140, ctx->boulderYPos - 10, 2, -3);
        UndergroundTraps_InitSingleBoulderDebris(ctx, 5, 140, ctx->boulderYPos - 20, -2, -3);
        UndergroundTraps_InitSingleBoulderDebris(ctx, 6, 110, ctx->boulderYPos, -1, -2);
    case 1:
        UndergroundTraps_InitSingleBoulderDebris(ctx, 2, 120, ctx->boulderYPos - 30, -2, -3);
        UndergroundTraps_InitSingleBoulderDebris(ctx, 3, 100, ctx->boulderYPos - 10, -2, -3);
    case 0:
        UndergroundTraps_InitSingleBoulderDebris(ctx, 1, 128, ctx->boulderYPos - 30, 2, -3);
    }
}

static void UndergroundTraps_UpdateBoulderDebris(RockTrapContext *ctx)
{
    // minor bug: should start at 1
    for (int i = 0; i < MAX_DEBRIS + 1; i++) {
        if (ctx->debrisXSpeed[i] != 0) {
            ctx->debrisXPos[i] += ctx->debrisXSpeed[i];
            ctx->debrisYPos[i] += ctx->debrisYSpeed[i];
            ctx->debrisYSpeed[i] += ctx->timer;

            VecFx32 position;
            position.x = ctx->debrisXPos[i] * FX32_ONE;
            position.y = ctx->debrisYPos[i] * FX32_ONE;

            Sprite_SetPosition(trapsEnv->sprites[i], &position);

            if (ctx->debrisYPos[i] > ctx->boulderYPos + 35) {
                Sprite_SetDrawFlag(trapsEnv->sprites[i], FALSE);
                ctx->debrisXSpeed[i] = 0;
            }
        }
    }
}

// returns true when boulder is destroyed
static BOOL UndergroundTraps_ProcessBoulder(BgConfig *unused, RockTrapContext *ctx)
{
    VecFx32 position;

    switch (ctx->subState) {
    case ROCK_TRAP_SUBSTATE_DRAW_SHADOW:
        ctx->timer = 0;
        int x = Player_GetXPos(trapsEnv->fieldSystem->playerAvatar);
        int z = Player_GetZPos(trapsEnv->fieldSystem->playerAvatar);
        ctx->shadowManager = ov5_DrawGrowingFloorTexture(trapsEnv->fieldSystem, x, z, 5, FLOOR_TEXTURE_BLACK_CIRCLE);
        ctx->subState = ROCK_TRAP_SUBSTATE_INIT_BOULDER_FALL;
        Sound_PlayEffect(SEQ_SE_DP_FW466);
        break;
    case ROCK_TRAP_SUBSTATE_INIT_BOULDER_FALL:
        ctx->timer++;

        if (ctx->timer > 20) {
            ctx->subState = ROCK_TRAP_SUBSTATE_BOULDER_FALLING;
            ctx->boulderYPos = 0;
            ctx->boulderFallSpeed = 5;
            Sprite_SetAnim(trapsEnv->sprites[0], ROCK_TRAP_ANIM_BOULDER);
        }
        break;
    case ROCK_TRAP_SUBSTATE_BOULDER_FALLING:
        position.x = BOULDER_XPOS * FX32_ONE;
        position.y = ctx->boulderYPos * FX32_ONE;

        Sprite_SetPosition(trapsEnv->sprites[0], &position);
        Sprite_SetDrawFlag(trapsEnv->sprites[0], TRUE);

        if (ctx->boulderYPos > 65) {
            ctx->subState = ROCK_TRAP_SUBSTATE_MAIN;
            Sound_PlayEffect(SEQ_SE_DP_FW452);

            if (trapsEnv->triggeredTrapIDClient == TRAP_ROCKFALL) {
                ctx->boulderDamage = -1;
            } else {
                ctx->boulderDamage = 5;
            }

            if (ctx->shadowManager) {
                OverworldAnimManager_Finish(ctx->shadowManager);
                ctx->shadowManager = NULL;
            }
        } else {
            ctx->boulderYPos += ctx->boulderFallSpeed;
            ctx->boulderFallSpeed += 3;
        }
        break;
    case ROCK_TRAP_SUBSTATE_MAIN:
        if (gSystem.touchPressed) {
            fx32 xDistance = (gSystem.touchX - BOULDER_XPOS) * FX32_ONE;
            fx32 yDistance = (gSystem.touchY - ctx->boulderYPos) * FX32_ONE;
            fx32 distance = FX_Mul(xDistance, xDistance) + FX_Mul(yDistance, yDistance);
            distance = FX_Sqrt(distance);

            if (distance < BOULDER_RADIUS * FX32_ONE) {
                ctx->boulderShakeDisplacement = 3;
                Sound_PlayEffect(SEQ_SE_DP_UG_023);
                ctx->boulderDamage++;

                if (ctx->boulderDamage % 3 == 2) {
                    int boulderDamageStage = ctx->boulderDamage / 3;

                    SpriteTransfer_ReplaceCharData(ctx->boulderSpriteResources[0], ctx->boulderSpriteResources[boulderDamageStage + 1]);
                    ctx->timer = 0;
                    ctx->subState = ROCK_TRAP_SUBSTATE_DAMAGE_BOULDER;
                }
            }
        }

        if (ctx->boulderDamage > 15) {
            ctx->timer = 0;
            ctx->subState = ROCK_TRAP_SUBSTATE_BOULDER_COLLAPSE;
            ctx->boulderShakeDisplacement = 0;
        }

        if (ctx->boulderShakeDisplacement != 0) {
            if (ctx->boulderShakeDisplacement < 0) {
                ctx->boulderShakeDisplacement++;
            }

            ctx->boulderShakeDisplacement = 0 - ctx->boulderShakeDisplacement;
        }

        position.x = (BOULDER_XPOS + ctx->boulderShakeDisplacement) * FX32_ONE;
        position.y = ctx->boulderYPos * FX32_ONE;

        Sprite_SetPosition(trapsEnv->sprites[0], &position);
        break;
    case ROCK_TRAP_SUBSTATE_DAMAGE_BOULDER:
        if (ctx->timer == 0) {
            UndergroundTraps_InitBoulderDebris(ctx, ctx->boulderDamage / 3);
        }

        ctx->timer++;
        UndergroundTraps_UpdateBoulderDebris(ctx);

        if (ctx->timer == 20) {
            ctx->subState = ROCK_TRAP_SUBSTATE_MAIN;
        }

        if (ctx->boulderShakeDisplacement != 0) {
            if (ctx->boulderShakeDisplacement < 0) {
                ctx->boulderShakeDisplacement++;
            }

            ctx->boulderShakeDisplacement = 0 - ctx->boulderShakeDisplacement;
        }

        position.x = (BOULDER_XPOS + ctx->boulderShakeDisplacement) * FX32_ONE;
        position.y = ctx->boulderYPos * FX32_ONE;
        Sprite_SetPosition(trapsEnv->sprites[0], &position);
        break;
    case ROCK_TRAP_SUBSTATE_BOULDER_COLLAPSE:
        if (ctx->timer == 0) {
            Sound_PlayEffect(SEQ_SE_DP_UG_026);
            SpriteTransfer_ReplaceCharData(ctx->boulderSpriteResources[0], ctx->boulderSpriteResources[6]);

            for (int i = 1; i < 9; i++) {
                Sprite_SetAnim(trapsEnv->sprites[i], ROCK_TRAP_ANIM_DUST_CLOUD);

                position.x = (70 + 12 * i) * FX32_ONE;
                position.y = (ctx->boulderYPos + 39 + i % 2) * FX32_ONE;

                Sprite_SetPosition(trapsEnv->sprites[i], &position);
                Sprite_SetDrawFlag(trapsEnv->sprites[i], TRUE);
            }

            Sprite_SetAnim(trapsEnv->sprites[10], ROCK_TRAP_ANIM_DUST_CLOUD);

            position.x = 100 * FX32_ONE;
            position.y = (ctx->boulderYPos + 21) * FX32_ONE;

            Sprite_SetPosition(trapsEnv->sprites[10], &position);
            Sprite_SetDrawFlag(trapsEnv->sprites[10], TRUE);
            Sprite_SetAnim(trapsEnv->sprites[11], ROCK_TRAP_ANIM_DUST_CLOUD);

            position.x = 122 * FX32_ONE;
            position.y = ctx->boulderYPos * FX32_ONE;

            Sprite_SetPosition(trapsEnv->sprites[11], &position);
            Sprite_SetDrawFlag(trapsEnv->sprites[11], TRUE);
        }

        ctx->timer++;

        position.x = (BOULDER_XPOS - (10 / 2) + (LCRNG_Next() % 10)) * FX32_ONE;
        position.y = ctx->boulderYPos * FX32_ONE;

        Sprite_SetPosition(trapsEnv->sprites[0], &position);
        ctx->boulderYPos += 1;

        if (ctx->timer % 8) {
            Sprite_SetAnim(trapsEnv->sprites[0], 3 + ctx->timer / 8);
        }

        if (ctx->timer == 75) {
            ctx->subState = ROCK_TRAP_SUBSTATE_END;
        }
        break;
    case ROCK_TRAP_SUBSTATE_END:
        if (ctx->shadowManager) {
            OverworldAnimManager_Finish(ctx->shadowManager);
            ctx->shadowManager = NULL;
        }

        Sprite_SetDrawFlag(trapsEnv->sprites[0], FALSE);
        return TRUE;
    }

    SpriteList_Update(trapsEnv->spriteList);
    return FALSE;
}

static void UndergroundTraps_LoadDamagedBoulderTiles(RockTrapContext *ctx)
{
    int narcMemberIndices[] = {
        boulder_damaged_1_NCGR,
        boulder_damaged_2_NCGR,
        boulder_damaged_3_NCGR,
        boulder_damaged_4_NCGR,
        boulder_damaged_5_NCGR,
        boulder_damaged_6_NCGR,
    };
    int index = ctx->timer - 1;

    NARC *narc = NARC_ctor(NARC_INDEX_DATA__UG_TRAP, HEAP_ID_FIELD1);

    if (index < (int)NELEMS(narcMemberIndices)) {
        ctx->boulderSpriteResources[index + 1] = SpriteResourceCollection_AddTilesFrom(trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_CHAR], narc, narcMemberIndices[index], FALSE, index + 1, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_FIELD1);
    }

    NARC_dtor(narc);
}

static void UndergroundTraps_DeleteDamagedBoulderTiles(RockTrapContext *ctx)
{
    for (int i = 1; i < BOULDER_STAGES; i++) {
        if (ctx->boulderSpriteResources[i]) {
            SpriteResourceCollection_Remove(trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_CHAR], ctx->boulderSpriteResources[i]);
        }
    }
}

static void UndergroundTraps_RockTrapClientTask(SysTask *sysTask, void *data)
{
    RockTrapContext *ctx = data;

    switch (ctx->state) {
    case ROCK_TRAP_STATE_START:
        ctx->printerID = UndergroundTraps_NotifyTrapTriggered();
        ctx->timer = 0;

        trapsEnv->spriteList = SpriteList_InitRendering(32, &trapsEnv->g2dRenderer, HEAP_ID_FIELD1);
        SetSubScreenViewRect(&trapsEnv->g2dRenderer, 0, (192 << FX32_SHIFT) * 2);

        for (int i = SPRITE_RESOURCE_CHAR; i < SPRITE_RESOURCE_ANIM + 1; i++) {
            trapsEnv->spriteResourceCollection[TRAP_RESOURCES][i] = SpriteResourceCollection_New(BOULDER_STAGES + 1, i, HEAP_ID_FIELD1);
        }
        ctx->state++;
        break;
    case ROCK_TRAP_STATE_LOAD_CHAR:
        BrightnessController_StartTransition(1, 10, 0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
        trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTiles(trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_CHAR], NARC_INDEX_DATA__UG_TRAP, boulder_NCGR, FALSE, 0, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_FIELD1);
        ctx->boulderSpriteResources[0] = trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_CHAR];
        ctx->state++;
        break;
    case ROCK_TRAP_STATE_LOAD_PLTT:
        trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPalette(trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_PLTT], NARC_INDEX_DATA__UG_TRAP, boulder_NCLR, FALSE, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 7, HEAP_ID_FIELD1);
        ctx->state++;
        break;
    case ROCK_TRAP_STATE_LOAD_CELL:
        BrightnessController_StartTransition(1, 0, 10, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
        trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_CELL] = SpriteResourceCollection_Add(trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_CELL], NARC_INDEX_DATA__UG_TRAP, boulder_cell_NCER, FALSE, 0, SPRITE_RESOURCE_CELL, HEAP_ID_FIELD1);
        ctx->state++;
        break;
    case ROCK_TRAP_STATE_LOAD_ANIM:
        trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_Add(trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_ANIM], NARC_INDEX_DATA__UG_TRAP, boulder_anim_NANR, FALSE, 0, SPRITE_RESOURCE_ANIM, HEAP_ID_FIELD1);
        ctx->state++;
        break;
    case ROCK_TRAP_STATE_INIT_SPRITES:
        UndergroundTraps_InitBoulderSprites(ctx);
        ctx->state++;
        break;
    case ROCK_TRAP_STATE_PRINT_TUTORIAL:
        ctx->timer++;
        UndergroundTraps_LoadDamagedBoulderTiles(ctx);

        if (ctx->timer > 30) {
            if (trapsEnv->triggeredTrapIDClient == TRAP_ROCK) {
                SpriteTransfer_ReplaceCharData(ctx->boulderSpriteResources[0], ctx->boulderSpriteResources[2]);
            }

            UndergroundTextPrinter_PrintTextInstant(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_RemoveTrapByTouch, FALSE, NULL);

            ctx->messageTimer = 0;
            ctx->state = ROCK_TRAP_STATE_MAIN;
        }
        break;
    case ROCK_TRAP_STATE_MAIN:
        if (UndergroundTraps_ProcessBoulder(trapsEnv->fieldSystem->bgConfig, ctx)) {
            if (ctx->isTool) {
                ctx->state = ROCK_TRAP_STATE_TOOL_STEP_BACK;
            } else {
                Link_Message(41);
                ctx->state = ROCK_TRAP_STATE_WAIT_FOR_END;
            }
        }

        if (ctx->messageTimer < 60) {
            ctx->messageTimer++;

            if (ctx->messageTimer == 60) {
                UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetCommonTextPrinter());
            }
        }
        break;
    case ROCK_TRAP_STATE_WAIT_FOR_END:
        UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetCommonTextPrinter());
        break;
    case ROCK_TRAP_STATE_END_UNUSED:
        UndergroundTraps_EndRockTrapEffectClient(CommSys_CurNetId(), ctx->isTool);
        break;
    case ROCK_TRAP_STATE_TOOL_STEP_BACK:
        ctx->isTool = 0;
        CommPlayerMan_ResumeFieldSystemWithContextBit(PAUSE_BIT_TRAPS);
        UndergroundTraps_StepBackFromTool(ctx->toolInitialDir);
        ctx->timer = 0;
        ctx->state = ROCK_TRAP_STATE_TOOL_WAIT_THEN_END;
        break;
    case ROCK_TRAP_STATE_TOOL_WAIT_THEN_END:
        ctx->timer++;

        if (ctx->timer > 8) {
            Link_Message(41);
            ctx->state = ROCK_TRAP_STATE_WAIT_FOR_END;
        }
        break;
    }
}

static void UndergroundTraps_StartRockTrapClientTask(BgConfig *unused, BOOL isTool, int toolInitialDir)
{
    RockTrapContext *ctx = Heap_AllocAtEnd(HEAP_ID_FIELD1, sizeof(RockTrapContext));
    MI_CpuFill8(ctx, 0, sizeof(RockTrapContext));

    ctx->isTool = isTool;
    ctx->toolInitialDir = toolInitialDir;

    trapsEnv->currentTrapContext = ctx;
    trapsEnv->trapEffectTask = SysTask_Start(UndergroundTraps_RockTrapClientTask, ctx, 100);
}

static void UndergroundTraps_RockTrapEffectClient(int netID, BOOL isTool, int toolInitialDir)
{
    ov23_UpdatePlayerStatus(netID, PLAYER_STATUS_IMMOBILIZED_BY_TRAP);

    if (CommSys_CurNetId() == netID) {
        UndergroundTraps_StartRockTrapClientTask(trapsEnv->fieldSystem->bgConfig, isTool, toolInitialDir);
    }
}

static void UndergroundTraps_RockTrapEffectServer(int netID)
{
    ov23_UpdatePlayerStatus(netID, PLAYER_STATUS_IMMOBILIZED_BY_TRAP);
}

static void UndergroundTraps_EndRockTrapEffectClient(int netID, BOOL allowToolStepBack)
{
    if (trapsEnv->currentTrapContext) {
        RockTrapContext *ctx = trapsEnv->currentTrapContext;

        if (ctx->shadowManager) {
            OverworldAnimManager_Finish(ctx->shadowManager);
            ctx->shadowManager = NULL;
        }

        if (ctx->isTool && allowToolStepBack) {
            UndergroundTraps_StepBackFromTool(ctx->toolInitialDir);
        }

        UndergroundTraps_DeleteDamagedBoulderTiles(ctx);
        UndergroundTraps_DeleteSpritesAndResources(ROCK_TRAP_SPRITE_COUNT);

        BrightnessController_SetScreenBrightness(0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
        CommPlayerMan_ResumeFieldSystemWithContextBit(PAUSE_BIT_TRAPS);
        SysTask_Done(trapsEnv->trapEffectTask);
        Heap_Free(ctx);

        trapsEnv->trapEffectTask = NULL;
        trapsEnv->currentTrapContext = NULL;
    }
}

static void UndergroundTraps_InitFireSprite(FireTrapContext *unused)
{
    SpriteTransfer_RequestCharAtEndWithHardwareMappingType(trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_RequestPlttFreeSpace(trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_PLTT]);
    SpriteResourcesHeader_Init(&trapsEnv->resourceData, 0, 0, 0, 0, 0xFFFFFFFF, 0xFFFFFFFF, FALSE, 0, trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_CHAR], trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_PLTT], trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_CELL], trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_ANIM], NULL, NULL);

    AffineSpriteListTemplate template;

    template.list = trapsEnv->spriteList;
    template.resourceData = &trapsEnv->resourceData;
    template.position.x = FX32_CONST(32);
    template.position.y = FX32_CONST(96);
    template.position.z = 0;
    template.affineScale.x = FX32_ONE;
    template.affineScale.y = FX32_ONE;
    template.affineScale.z = FX32_ONE;
    template.affineZRotation = 0;
    template.priority = 0;
    template.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.heapID = HEAP_ID_FIELD1;

    template.position.x = FX32_ONE * 128;
    template.position.y = FX32_ONE * 84;

    trapsEnv->sprites[0] = SpriteList_AddAffine(&template);

    Sprite_SetAffineOverwriteMode(trapsEnv->sprites[0], AFFINE_OVERWRITE_MODE_DOUBLE);
    Sprite_SetAnim(trapsEnv->sprites[0], 0);
    Sprite_SetAnimateFlag(trapsEnv->sprites[0], TRUE);
    Sprite_SetAnimFrame(trapsEnv->sprites[0], 0);
    Sprite_SetExplicitPriority(trapsEnv->sprites[0], 1);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

// returns true when flame is extinguished
static BOOL UndergroundTraps_ProcessFlame(BgConfig *unused, FireTrapContext *ctx)
{
    int micBlowIntensity = 0;

    switch (ctx->subState) {
    case FIRE_TRAP_SUBSTATE_INIT:
        if (trapsEnv->triggeredTrapIDClient == TRAP_FIRE) {
            ctx->flameIntensity = 4;
        } else {
            ctx->flameIntensity = 2;
        }

        ctx->timer = 0;
        ctx->subState = FIRE_TRAP_SUBSTATE_MAIN;
    case FIRE_TRAP_SUBSTATE_MAIN:
        Sound_StartMicManualSampling(MIC_SAMPLING_TYPE_SIGNED_8BIT, &sMicSample, UndergroundTraps_MicSampleCallback, NULL);

        ctx->micSampleIndex++;
        ctx->micSamples[ctx->micSampleIndex % 10] = abs(trapsEnv->micSample);

        for (int i = 0; i < 10; i++) {
            micBlowIntensity += ctx->micSamples[i];
        }

        if (micBlowIntensity > 500) {
            ctx->timer++;
            Sound_PlayEffect(SEQ_SE_DP_UG_024);
        } else {
            ctx->subState = FIRE_TRAP_SUBSTATE_INIT;
        }

        if (ctx->timer % 10 == 9) {
            ctx->flameIntensity--;
        }

        if (ctx->flameIntensity == 0) {
            ctx->subState = FIRE_TRAP_SUBSTATE_END;
            return TRUE;
        }

        float flameSize;
        if (trapsEnv->triggeredTrapIDClient == TRAP_FIRE) {
            switch (ctx->flameIntensity) {
            case 4:
                flameSize = 2;
                break;
            case 3:
                flameSize = 1.5;
                break;
            case 2:
                flameSize = 1;
                break;
            default:
                flameSize = 0.5;
                break;
            }
        } else {
            switch (ctx->flameIntensity) {
            case 2:
                flameSize = 2;
                break;
            default:
                flameSize = 1.5;
                break;
            }
        }

        int animID = 0;

        if (ctx->timer) {
            animID += 1;
        }

        VecFx32 scale;
        scale.x = FX32_ONE * flameSize;
        scale.y = FX32_ONE * flameSize;
        scale.z = FX32_ONE * flameSize;

        Sprite_SetAffineScale(trapsEnv->sprites[0], &scale);
        Sprite_SetAnimNoRestart(trapsEnv->sprites[0], animID);
        break;
    case FIRE_TRAP_SUBSTATE_END:
        break;
    }

    SpriteList_Update(trapsEnv->spriteList);
    return FALSE;
}

static void UndergroundTraps_FireTrapClientTask(SysTask *sysTask, void *data)
{
    FireTrapContext *ctx = data;
    int narcMemberIdx;

    switch (ctx->state) {
    case FIRE_TRAP_STATE_START:
        ctx->printerID = UndergroundTraps_NotifyTrapTriggered();
        ctx->timer = 0;
        UndergroundTraps_InitSpriteResources();
        ctx->state++;
        break;
    case FIRE_TRAP_STATE_LOAD_CHAR:
        BrightnessController_StartTransition(1, 10, 0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);

        if (trapsEnv->triggeredTrapIDClient == TRAP_FIRE) {
            narcMemberIdx = fire_NCGR;
        } else {
            narcMemberIdx = ember_NCGR;
        }

        trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTiles(trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_CHAR], NARC_INDEX_DATA__UG_TRAP, narcMemberIdx, FALSE, 0, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_FIELD1);
        ctx->state++;
        break;
    case FIRE_TRAP_STATE_LOAD_PLTT:
        trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPalette(trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_PLTT], NARC_INDEX_DATA__UG_TRAP, ember_fire_NCLR, FALSE, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 7, HEAP_ID_FIELD1);
        ctx->state++;
        break;
    case FIRE_TRAP_STATE_LOAD_CELL:
        BrightnessController_StartTransition(1, 0, 10, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);

        if (trapsEnv->triggeredTrapIDClient == TRAP_FIRE) {
            narcMemberIdx = fire_cell_NCER;
        } else {
            narcMemberIdx = ember_cell_NCER;
        }

        trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_CELL] = SpriteResourceCollection_Add(trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_CELL], NARC_INDEX_DATA__UG_TRAP, narcMemberIdx, FALSE, 0, SPRITE_RESOURCE_CELL, HEAP_ID_FIELD1);
        ctx->state++;
        break;
    case FIRE_TRAP_STATE_LOAD_ANIM:
        if (trapsEnv->triggeredTrapIDClient == TRAP_FIRE) {
            narcMemberIdx = fire_anim_NANR;
        } else {
            narcMemberIdx = ember_anim_NANR;
        }

        trapsEnv->spriteResources[TRAP_RESOURCES][SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_Add(trapsEnv->spriteResourceCollection[TRAP_RESOURCES][SPRITE_RESOURCE_ANIM], NARC_INDEX_DATA__UG_TRAP, narcMemberIdx, FALSE, 0, SPRITE_RESOURCE_ANIM, HEAP_ID_FIELD1);
        ctx->state++;
        break;
    case FIRE_TRAP_STATE_INIT_SPRITE:
        UndergroundTraps_InitFireSprite(ctx);
        ctx->state++;
        break;
    case FIRE_TRAP_STATE_PRINT_TUTORIAL:
        ctx->timer++;

        if (ctx->timer > 30) {
            UndergroundTextPrinter_PrintTextInstant(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_BlowTrapAway, FALSE, NULL);
            GX_SetMasterBrightness(-4);

            ctx->state = FIRE_TRAP_STATE_MAIN;
            ctx->messageTimer = 0;
        }
        break;
    case FIRE_TRAP_STATE_MAIN:
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_OBJ, GX_BLEND_PLANEMASK_BG0, 14, 7);

        if (UndergroundTraps_ProcessFlame(trapsEnv->fieldSystem->bgConfig, ctx)) {
            if (ctx->isTool) {
                ctx->state = FIRE_TRAP_STATE_TOOL_STEP_BACK;
            } else {
                Link_Message(41);
                ctx->state = FIRE_TRAP_STATE_WAIT_FOR_END;
            }
        }

        if (ctx->messageTimer < 60) {
            ctx->messageTimer++;

            if (ctx->messageTimer == 60) {
                UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetCommonTextPrinter());
            }
        }
        break;
    case FIRE_TRAP_STATE_WAIT_FOR_END:
        UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetCommonTextPrinter());
        break;
    case FIRE_TRAP_STATE_END_UNUSED:
        UndergroundTraps_EndFireTrapEffectClient(CommSys_CurNetId(), ctx->isTool);
        break;
    case FIRE_TRAP_STATE_TOOL_STEP_BACK:
        CommPlayerMan_ResumeFieldSystemWithContextBit(PAUSE_BIT_TRAPS);
        ctx->isTool = 0;
        UndergroundTraps_StepBackFromTool(ctx->toolInitialDir);
        ctx->timer = 0;
        ctx->state = FIRE_TRAP_STATE_TOOL_WAIT_THEN_END;
        break;
    case FIRE_TRAP_STATE_TOOL_WAIT_THEN_END:
        ctx->timer++;

        if (ctx->timer > 8) {
            Link_Message(41);
            ctx->state = FIRE_TRAP_STATE_WAIT_FOR_END;
        }
        break;
    }
}

static void UndergroundTraps_StartFireTrapClientTask(BgConfig *unused, BOOL isTool, int toolInitialDir)
{
    FireTrapContext *ctx = Heap_AllocAtEnd(HEAP_ID_FIELD1, sizeof(FireTrapContext));
    MI_CpuFill8(ctx, 0, sizeof(FireTrapContext));

    ctx->isTool = isTool;
    ctx->toolInitialDir = toolInitialDir;

    trapsEnv->currentTrapContext = ctx;
    trapsEnv->trapEffectTask = SysTask_Start(UndergroundTraps_FireTrapClientTask, ctx, 100);
}

static void UndergroundTraps_FireTrapEffectClient(int netID, BOOL isTool, int toolInitialDir)
{
    ov23_UpdatePlayerStatus(netID, PLAYER_STATUS_IMMOBILIZED_BY_TRAP);

    if (CommSys_CurNetId() == netID) {
        UndergroundTraps_StartFireTrapClientTask(trapsEnv->fieldSystem->bgConfig, isTool, toolInitialDir);
    }
}

static void UndergroundTraps_FireTrapEffectServer(int netID)
{
    ov23_UpdatePlayerStatus(netID, PLAYER_STATUS_IMMOBILIZED_BY_TRAP);
}

static void UndergroundTraps_EndFireTrapEffectClient(int netID, BOOL allowToolStepBack)
{
    if (trapsEnv->currentTrapContext) {
        FireTrapContext *ctx = trapsEnv->currentTrapContext;

        if (ctx->isTool && allowToolStepBack) {
            UndergroundTraps_StepBackFromTool(ctx->toolInitialDir);
        }

        BrightnessController_SetScreenBrightness(0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
        G2_BlendNone();
        GX_SetMasterBrightness(0);
        UndergroundTraps_DeleteSpritesAndResources(1);

        CommPlayerMan_ResumeFieldSystemWithContextBit(PAUSE_BIT_TRAPS);
        SysTask_Done(trapsEnv->trapEffectTask);
        Heap_Free(ctx);

        trapsEnv->trapEffectTask = NULL;
        trapsEnv->currentTrapContext = NULL;
    }
}

static void UndergroundTraps_AlertTrapClientTask(SysTask *sysTask, void *data)
{
    AlertTrapContext *ctx = data;

    switch (ctx->state) {
    case ALERT_TRAP_STATE_START:
        ctx->printerID = UndergroundTraps_NotifyTrapTriggered();
        ctx->timer = 0;
        ctx->state++;
        break;
    case ALERT_TRAP_STATE_BRIGHTEN_SCREEN:
        BrightnessController_StartTransition(1, 10, 0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
        ctx->state++;
        break;
    case ALERT_TRAP_STATE_FRAME_DELAY:
        ctx->state++;
        break;
    case ALERT_TRAP_STATE_REVERT_BRIGHTNESS:
        BrightnessController_StartTransition(1, 0, 10, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
        ctx->state++;
        break;
    case ALERT_TRAP_STATE_FRAME_DELAY_2:
        ctx->state++;
        break;
    case ALERT_TRAP_STATE_FRAME_DELAY_3:
        ctx->state++;
        break;
    case ALERT_TRAP_STATE_CLEAR_MESSAGE:
        ctx->timer++;

        if (ctx->timer > 30) {
            UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetCommonTextPrinter());
            GX_SetMasterBrightness(-4);
            ctx->state = ALERT_TRAP_STATE_TRANSITION_TO_END;
        }
        break;
    case ALERT_TRAP_STATE_TRANSITION_TO_END:
        if (ctx->isTool) {
            ctx->state = ALERT_TRAP_STATE_TOOL_STEP_BACK;
        } else {
            Link_Message(41);
            ctx->state = ALERT_TRAP_STATE_WAIT_FOR_END;
        }
        break;
    case ALERT_TRAP_STATE_WAIT_FOR_END:
        break;
    case ALERT_TRAP_STATE_END_UNUSED:
        UndergroundTraps_EndAlertTrapEffectClient(CommSys_CurNetId(), ctx->isTool);
        break;
    case ALERT_TRAP_STATE_UNUSED:
        break;
    case ALERT_TRAP_STATE_TOOL_STEP_BACK:
        CommPlayerMan_ResumeFieldSystemWithContextBit(PAUSE_BIT_TRAPS);
        ctx->isTool = 0;
        UndergroundTraps_StepBackFromTool(ctx->toolInitialDir);
        ctx->timer = 0;
        ctx->state = ALERT_TRAP_STATE_TOOL_WAIT_THEN_END;
        break;
    case ALERT_TRAP_STATE_TOOL_WAIT_THEN_END:
        ctx->timer++;

        if (ctx->timer > 8) {
            Link_Message(41);
            ctx->state = ALERT_TRAP_STATE_WAIT_FOR_END;
        }
        break;
    }
}

static void UndergroundTraps_StartAlertTrapClientTask(BgConfig *unused, BOOL isTool, int toolInitialDir)
{
    AlertTrapContext *ctx = Heap_AllocAtEnd(HEAP_ID_FIELD1, sizeof(AlertTrapContext));
    MI_CpuFill8(ctx, 0, sizeof(AlertTrapContext));

    ctx->isTool = isTool;
    ctx->toolInitialDir = toolInitialDir;

    trapsEnv->currentTrapContext = ctx;
    trapsEnv->trapEffectTask = SysTask_Start(UndergroundTraps_AlertTrapClientTask, ctx, 100);
}

static void UndergroundTraps_AlertTrapEffectClient(int netID, BOOL isTool, int toolInitialDir)
{
    ov23_UpdatePlayerStatus(netID, PLAYER_STATUS_IMMOBILIZED_BY_TRAP);

    if (CommSys_CurNetId() == netID) {
        UndergroundTraps_StartAlertTrapClientTask(trapsEnv->fieldSystem->bgConfig, isTool, toolInitialDir);
    }
}

static void UndergroundTraps_AlertTrapEffectServer(int netID)
{
    ov23_UpdatePlayerStatus(netID, PLAYER_STATUS_IMMOBILIZED_BY_TRAP);
}

static void UndergroundTraps_EndAlertTrapEffectClient(int netID, BOOL allowToolStepBack)
{
    if (trapsEnv->currentTrapContext) {
        AlertTrapContext *ctx = trapsEnv->currentTrapContext;

        if (ctx->isTool && allowToolStepBack) {
            UndergroundTraps_StepBackFromTool(ctx->toolInitialDir);
        }

        BrightnessController_SetScreenBrightness(0, GX_BLEND_PLANEMASK_BG0, BRIGHTNESS_MAIN_SCREEN);
        G2_BlendNone();
        GX_SetMasterBrightness(0);

        CommPlayerMan_ResumeFieldSystemWithContextBit(PAUSE_BIT_TRAPS);
        SysTask_Done(trapsEnv->trapEffectTask);
        Heap_Free(ctx);

        trapsEnv->trapEffectTask = NULL;
        trapsEnv->currentTrapContext = NULL;
    }
}

static BOOL ov23_02248614(BgConfig *unused, TouchRadarContext *ctx)
{
    int v0, v1;
    VecFx32 v2;
    int v3, v4, v5, v6;

    v2.x = ctx->unk_28 * FX32_ONE;
    v2.y = ctx->unk_2C * FX32_ONE;

    Sprite_SetPosition(trapsEnv->sprites[0], &v2);

    v2.x = (ctx->unk_30 * FX32_ONE) / 10;
    v2.y = v2.z = v2.x;

    Sprite_SetAffineScale(trapsEnv->sprites[0], &v2);
    Sprite_SetExplicitOAMMode(trapsEnv->sprites[0], GX_OAM_MODE_XLU);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_OBJ, GX_BLEND_PLANEMASK_BG0, 16 - (ctx->unk_30 / 2), 16);

    for (v1 = 0; v1 < 3; v1++) {
        for (v0 = 0; v0 < ctx->unk_14[v1]; v0++) {
            v6 = ctx->unk_08[v1][v0] / 16;
            v5 = ctx->unk_08[v1][v0] % 16;

            v2.x = (ctx->unk_20 - 6 + v5) * FX32_ONE * 16 + (FX32_ONE * 16 / 2);
            v2.y = 0;
            v2.z = (ctx->unk_24 - 6 + v6) * FX32_ONE * 16 + (FX32_ONE * 16 / 2);

            NNS_G3dWorldPosToScrPos(&v2, &v3, &v4);

            v2.x = v3 * FX32_ONE;
            v2.y = v4 * FX32_ONE;

            Sprite_SetPosition(trapsEnv->sprites[v0 + 1 + v1 * 8], &v2);
        }
    }

    ctx->unk_30++;

    if (ctx->unk_30 > 20) {
        return 1;
    }

    SpriteList_Update(trapsEnv->spriteList);
    return 0;
}

static void UndergroundTraps_InitRadarSprites(TouchRadarContext *unused)
{
    SpriteTransfer_RequestCharAtEndWithHardwareMappingType(trapsEnv->spriteResources[RADAR_RESOURCES][SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_RequestPlttFreeSpace(trapsEnv->spriteResources[RADAR_RESOURCES][SPRITE_RESOURCE_PLTT]);
    SpriteResourcesHeader_Init(&trapsEnv->resourceData, 0, 0, 0, 0, 0xFFFFFFFF, 0xFFFFFFFF, 0, 0, trapsEnv->spriteResourceCollection[RADAR_RESOURCES][SPRITE_RESOURCE_CHAR], trapsEnv->spriteResourceCollection[RADAR_RESOURCES][SPRITE_RESOURCE_PLTT], trapsEnv->spriteResourceCollection[RADAR_RESOURCES][SPRITE_RESOURCE_CELL], trapsEnv->spriteResourceCollection[RADAR_RESOURCES][SPRITE_RESOURCE_ANIM], NULL, NULL);

    AffineSpriteListTemplate template;

    template.list = trapsEnv->spriteList;
    template.resourceData = &trapsEnv->resourceData;
    template.position.x = FX32_CONST(32);
    template.position.y = FX32_CONST(96);
    template.position.z = 0;
    template.affineScale.x = FX32_ONE;
    template.affineScale.y = FX32_ONE;
    template.affineScale.z = FX32_ONE;
    template.affineZRotation = 0;
    template.priority = 0;
    template.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.heapID = HEAP_ID_FIELD1;

    for (int i = 0; i < 25; i++) {
        template.position.x = FX32_ONE * 300;
        template.position.y = FX32_ONE * 300;

        trapsEnv->sprites[i] = SpriteList_AddAffine(&template);

        if (i == 0) {
            Sprite_SetAffineOverwriteMode(trapsEnv->sprites[i], AFFINE_OVERWRITE_MODE_DOUBLE);
            Sprite_SetAnim(trapsEnv->sprites[i], 0);
        } else if (i < 9) {
            Sprite_SetAnim(trapsEnv->sprites[i], 1);
        } else {
            Sprite_SetAnim(trapsEnv->sprites[i], 2);
        }

        Sprite_SetAnimateFlag(trapsEnv->sprites[i], TRUE);
        Sprite_SetAnimFrame(trapsEnv->sprites[i], 0);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

static void UndergroundTraps_TouchRadarTask(SysTask *sysTask, void *data)
{
    TouchRadarContext *ctx = data;

    switch (ctx->state) {
    case 0:
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_OBJ, GX_BLEND_PLANEMASK_BG0, 14, 7);
        G2_SetWnd0Position(255 - 16, 0, 256, 16);
        G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 0);
        G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
        GX_SetVisibleWnd(GX_WNDMASK_W0);

        CommPlayerMan_PauseFieldSystem();
        Sound_PlayEffect(SEQ_SE_PL_UG_006);

        trapsEnv->spriteList = SpriteList_InitRendering(32, &trapsEnv->g2dRenderer, HEAP_ID_FIELD1);
        SetSubScreenViewRect(&trapsEnv->g2dRenderer, 0, (192 << FX32_SHIFT) * 2);
        ctx->state = 5;
        break;
    case 5:
        UndergroundTraps_InitRadarSprites(ctx);
        ctx->state = 7;
        break;
    case 7:
        if (ov23_02248614(trapsEnv->fieldSystem->bgConfig, ctx)) {
            ctx->state = 9;
        }
        break;
    case 9:
        GX_SetVisibleWnd(GX_WNDMASK_NONE);
        G2_BlendNone();
        GX_SetMasterBrightness(0);

        SpriteTransfer_ResetCharTransfer(trapsEnv->spriteResources[RADAR_RESOURCES][SPRITE_RESOURCE_CHAR]);
        SpriteTransfer_ResetPlttTransfer(trapsEnv->spriteResources[RADAR_RESOURCES][SPRITE_RESOURCE_PLTT]);

        for (int i = 0; i < 25; i++) {
            if (trapsEnv->sprites[i] != NULL) {
                Sprite_Delete(trapsEnv->sprites[i]);
            }

            trapsEnv->sprites[i] = NULL;
        }

        SpriteList_Delete(trapsEnv->spriteList);
        SysTask_Done(sysTask);
        Heap_Free(ctx);

        trapsEnv->touchRadarTask = NULL;
        CommPlayerMan_ResumeFieldSystemWithContextBit(PAUSE_BIT_RADAR);
        break;
    default:
        break;
    }
}

void UndergroundTraps_StartTouchRadarTask(FieldSystem *fieldSystem, int param1, int param2, int param3, int param4, u8 *param5, int param6, u8 *param7, int param8, u8 *param9, int param10)
{
    if (trapsEnv->touchRadarTask) {
        return;
    }

    TouchRadarContext *ctx;
    ctx = Heap_AllocAtEnd(HEAP_ID_FIELD1, sizeof(TouchRadarContext));
    MI_CpuFill8(ctx, 0, sizeof(TouchRadarContext));

    ctx->state = 0;
    ctx->unk_30 = 0;
    ctx->unk_20 = param1;
    ctx->unk_24 = param2;
    ctx->unk_28 = param3;
    ctx->unk_2C = param4;
    ctx->unk_08[0] = param5;
    ctx->unk_08[1] = param7;
    ctx->unk_08[2] = param9;
    ctx->unk_14[0] = param6;
    ctx->unk_14[1] = param8;
    ctx->unk_14[2] = param10;

    trapsEnv->touchRadarTask = SysTask_Start(UndergroundTraps_TouchRadarTask, ctx, 100);
    CommPlayerMan_PauseFieldSystemWithContextBit(PAUSE_BIT_RADAR);
}

static void UndergroundTraps_LinkSpinTask(SysTask *sysTask, void *data)
{
    LinkSpinContext *ctx = data;

    if (!trapsEnv) {
        SysTask_Done(sysTask);
        Heap_Free(ctx);
        return;
    }

    int netID = ctx->netID;
    int dir = CommPlayer_DirClient(netID);

    if (ctx->doneSpinning == TRUE || dir == DIR_NONE) {
        trapsEnv->spinCtx[netID] = NULL;
        trapsEnv->spinSysTasks[netID] = NULL;

        SysTask_Done(sysTask);
        Heap_Free(ctx);
        CommPlayer_StopSlideAnimation(netID);

        return;
    }

    switch (ctx->trapID) {
    case TRAP_REVERSE:
    case TRAP_CONFUSE:
    case TRAP_MOVE_LEFT:
    case TRAP_MOVE_RIGHT:
    case TRAP_MOVE_UP:
    case TRAP_MOVE_DOWN:
    case TRAP_HURL_LEFT:
    case TRAP_HURL_RIGHT:
    case TRAP_HURL_UP:
    case TRAP_HURL_DOWN:
        return;
    }

    ctx->timer++;

    if (ctx->timer % 8 == 0) {
        switch (dir) {
        case DIR_NORTH:
            dir = DIR_EAST;
            break;
        case DIR_SOUTH:
            dir = DIR_WEST;
            break;
        case DIR_WEST:
            dir = DIR_NORTH;
            break;
        case DIR_EAST:
            dir = DIR_SOUTH;
            break;
        }

        CommPlayer_SetDirClient(netID, dir);
    }
}

static void UndergroundTraps_StartLinkSpinTask(int netID, int trapID)
{
    if (!trapsEnv) {
        return;
    } else if (trapsEnv->graphicsDisabled) {
        return;
    }

    LinkSpinContext *ctx;
    if (trapsEnv->spinCtx[netID] == NULL) {
        ctx = Heap_AllocAtEnd(HEAP_ID_FIELD1, sizeof(LinkSpinContext));
        MI_CpuFill8(ctx, 0, sizeof(LinkSpinContext));
        trapsEnv->spinCtx[netID] = ctx;
        trapsEnv->spinSysTasks[netID] = SysTask_Start(UndergroundTraps_LinkSpinTask, ctx, 100);
    } else {
        ctx = trapsEnv->spinCtx[netID];
    }

    ctx->netID = netID;
    ctx->trapID = trapID;
}

void UndergroundTraps_StopLinkSpin(int netID)
{
    if (!trapsEnv->spinCtx[netID]) {
        return;
    }

    ov23_ClearEmote(netID);

    trapsEnv->spinCtx[netID]->doneSpinning = TRUE;
    trapsEnv->spinCtx[netID] = NULL;
    trapsEnv->spinSysTasks[netID] = NULL;

    CommPlayer_StopSlideAnimation(netID);
}

static void UndergroundTraps_StopAllLinkSpin(void)
{
    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        if (trapsEnv->spinSysTasks[netID]) {
            SysTask_Done(trapsEnv->spinSysTasks[netID]);
            Heap_Free(trapsEnv->spinCtx[netID]);

            trapsEnv->spinSysTasks[netID] = NULL;
            trapsEnv->spinCtx[netID] = NULL;
        }
    }
}
