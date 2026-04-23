#include "overlay009/ov9_02249960.h"

#include <nitro.h>
#include <string.h>

#include "constants/colors.h"
#include "constants/field/dynamic_map_features.h"
#include "constants/field/map.h"
#include "constants/graphics.h"
#include "constants/map_object.h"
#include "constants/scrcmd.h"
#include "constants/species.h"
#include "constants/types.h"
#include "generated/map_headers.h"
#include "generated/movement_actions.h"
#include "generated/movement_types.h"
#include "generated/sdat.h"

#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/area_data.h"
#include "overlay005/dist_world_surf_mount_renderer.h"
#include "overlay005/field_effect_manager.h"
#include "overlay005/fieldmap.h"
#include "overlay005/land_data.h"
#include "overlay005/land_data_manager_decl.h"
#include "overlay005/map_object_anim_cmd.h"
#include "overlay005/ov5_021D57BC.h"
#include "overlay005/ov5_021EB1A0.h"
#include "overlay005/ov5_021ECE40.h"
#include "overlay005/ov5_021F348C.h"
#include "overlay005/struct_ov5_021D57D8_decl.h"
#include "overlay005/struct_ov5_021ED0A4.h"
#include "overlay009/camera_configuration.h"
#include "overlay009/struct_ov9_0224F6EC_decl.h"

#include "bg_window.h"
#include "billboard.h"
#include "camera.h"
#include "field_system.h"
#include "field_task.h"
#include "gfx_box_test.h"
#include "gx_layers.h"
#include "heap.h"
#include "location.h"
#include "map_header_data.h"
#include "map_matrix.h"
#include "map_object.h"
#include "map_object_move.h"
#include "map_tile_behavior.h"
#include "math_util.h"
#include "narc.h"
#include "overworld_anim_manager.h"
#include "persisted_map_features.h"
#include "player_avatar.h"
#include "resource_collection.h"
#include "savedata_misc.h"
#include "script_manager.h"
#include "simple3d.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system_flags.h"
#include "system_vars.h"
#include "unk_0205F180.h"
#include "unk_020655F4.h"
#include "vars_flags.h"
#include "vram_transfer.h"

#define DISTORTION_WORLD_CAMERA_BASE_ANGLE_X            -10750
#define DISTORTION_WORLD_CAMERA_BASE_ANGLE_Y            0
#define DISTORTION_WORLD_CAMERA_BASE_ANGLE_Z            0
#define DISTORTION_WORLD_CAMERA_BASE_DISTANCE           0x29AEC1
#define DISTORTION_WORLD_CAMERA_BASE_PROJECTION_MTX     0
#define DISTORTION_WORLD_CAMERA_BASE_FOVY               1473
#define DISTORTION_WORLD_NON_GIRATINA_ROOM_FOV_ADJUST   (0x681 - 0x5c1)
#define DISTORTION_WORLD_CAMERA_BASE_NEAR_CLIP          (FX32_ONE * 150)
#define DISTORTION_WORLD_CAMERA_BASE_FAR_CLIP           (FX32_ONE * 1700)
#define DISTORTION_WORLD_CAMERA_PERSISTED_ANGLES_FACTOR 0x100

#define DISTORTION_WORLD_MAP_COUNT 10

#define GIRATINA_ROOM_TELEPORT_TILE_X 15
#define GIRATINA_ROOM_TELEPORT_TILE_Z 25
#define B7F_TELEPORT_TILE_X           89
#define B7F_TELEPORT_TILE_Z           57

#define FIELD_TASK_CONTEXT_MAX_SIZE 128

#define GHOST_PROP_RENDERER_COUNT 34
#define GHOST_PROP_OPACITY_MIN    0
#define GHOST_PROP_OPACITY_MAX    31

#define PLATFORM_PROP_ANIM_TIMING_COUNT 8
#define PLATFORM_PROP_ANIM_DELTA        0x800

#define GIRATINA_SHADOW_EXTERNAL_COUNT 1

#define OBSTACLE_PROP_ANIM_DELTA 2

#define SIMPLE_PROP_MANAGER_ANIMATOR_COUNT 8

#define MOVING_PLATFORM_MAP_COUNT              8
#define MOVING_PLATFORM_MANAGER_ANIMATOR_COUNT 32
#define MOVING_PLATFORM_VIBRATION_Y_DELTA      (FX32_ONE * 3)

#define ELEVATOR_PLATFORM_PATH_COUNT        22
#define ELEVATOR_PLATFORM_PATH_INVALID      ELEVATOR_PLATFORM_PATH_COUNT
#define ELEVATOR_PLATFORM_VIBRATION_Y_DELTA (FX32_ONE * 6)

#define RUNNING_EVENT_DATA_BUFFER_SIZE 160

#define MAP_OBJECT_MANAGER_OBJECT_COUNT 19
#define MAP_OBJECT_BASE_LOCAL_ID        128

#define UXIE_BOULDER_TUTO_ASCEND_Y_DELTA            (FX32_ONE * 2)
#define UXIE_BOULDER_TUTO_ASCEND_Y_TARGET           17
#define UXIE_BOULDER_TUTO_MOVE_TO_BOULDER_Z_DELTA   (FX32_ONE * 1)
#define UXIE_BOULDER_TUTO_MOVE_TO_BOULDER_Z_TARGET  -2
#define UXIE_BOULDER_TUTO_HOVER_STEP_COUNT          8
#define UXIE_BOULDER_TUTO_HOVER_REPEAT_COUNT        3
#define UXIE_BOULDER_TUTO_MOVE_AWAY_Z_DELTA         (FX32_ONE * 1)
#define UXIE_BOULDER_TUTO_MOVE_AWAY_Z_TARGET        1
#define UXIE_BOULDER_TUTO_DESCEND_Y_DELTA_INCREMENT 0x200
#define UXIE_BOULDER_TUTO_DESCEND_Y_DELTA_TARGET    (FX32_ONE * 2)

#define AZELF_BOULDER_TUTO_ASCEND_Y_DELTA            (FX32_ONE * 2)
#define AZELF_BOULDER_TUTO_ASCEND_Y_TARGET           13
#define AZELF_BOULDER_TUTO_DESCEND_Y_DELTA_INCREMENT 0x200
#define AZELF_BOULDER_TUTO_DESCEND_Y_DELTA_TARGET    (FX32_ONE * 2)

#define MESPRIT_BOULDER_TUTO_ASCEND_Y_DELTA            (FX32_ONE * 2)
#define MESPRIT_BOULDER_TUTO_ASCEND_Y_TARGET           9
#define MESPRIT_BOULDER_TUTO_DESCEND_Y_DELTA_INCREMENT 0x200
#define MESPRIT_BOULDER_TUTO_DESCEND_Y_DELTA_TARGET    (FX32_ONE * 2)

#define GIRATINA_ROOM_PLATFORMS_FIRST_GHOST_PROP_GROUP 1
#define GIRATINA_ROOM_PLATFORMS_LAST_GHOST_PROP_GROUP  3

#define GIRATINA_ROOM_SHOW_PLATFORMS_INITIAL_DELAY 36
#define GIRATINA_ROOM_SHOW_PLATFORMS_DELAY         48

#define GIRATINA_ROOM_HIDE_PLATFORMS_INITIAL_DELAY 16
#define GIRATINA_ROOM_HIDE_PLATFORMS_DELAY         48
#define GIRATINA_ROOM_HIDE_PLATFORMS_WAIT_DELAY    8

#define SKY_MIN_DARKNESS 0
#define SKY_MAX_DARKNESS 12

#define SPRITE_PALETTE_MAX_TINT_LEVEL 16

#define GIRATINA_ROOM_PLAY_ARRIVAL_INITIAL_Y_OFFSET          ((10 << 4) * FX32_ONE)
#define GIRATINA_ROOM_PLAY_ARRIVAL_INITIAL_SPRITE_DARKNESS   (FX32_ONE * SPRITE_PALETTE_MAX_TINT_LEVEL)
#define GIRATINA_ROOM_PLAY_ARRIVAL_SKY_DARKNESS_DELTA        ((FX32_ONE * 8) / (3 * 30))
#define GIRATINA_ROOM_PLAY_ARRIVAL_SKY_DARKNESS_TARGET       (FX32_ONE * SKY_MAX_DARKNESS)
#define GIRATINA_ROOM_PLAY_ARRIVAL_DESCEND_Y_SLOW_THRESHOLD  ((1 << 4) * FX32_ONE)
#define GIRATINA_ROOM_PLAY_ARRIVAL_DESCEND_Y_SLOW_DECREMENT  0x800
#define GIRATINA_ROOM_PLAY_ARRIVAL_DESCEND_Y_FAST_DECREMENT  0x1000
#define GIRATINA_ROOM_PLAY_ARRIVAL_SPRITE_DARKNESS_DECREMENT ((FX32_ONE * 16) / (3 * 30))
#define GIRATINA_ROOM_PLAY_ARRIVAL_WAIT_DELAY                30

#define WATERFALL_B4F_X       104
#define WATERFALL_B4F_Y       170
#define WATERFALL_B4F_START_Z 76
#define WATERFALL_B4F_END_Z   79
#define WATERFALL_B5F_X       104
#define WATERFALL_B5F_Y       128
#define WATERFALL_B5F_START_Z 76
#define WATERFALL_B5F_END_Z   79

#define CASCADE_FINISHING_THRESHOLD (16 * FX32_ONE)

#define CASCADE_DOWN_FIRST_CAMERA_ANGLE_Y_OFFSET         -20
#define CASCADE_DOWN_SECOND_CAMERA_ANGLE_Y_OFFSET        -36
#define CASCADE_DOWN_FIRST_CAMERA_ANGLE_DELAY            32
#define CASCADE_DOWN_INITIAL_SPRITE_ROTATION_STEPS       32
#define CASCADE_DOWN_FIRST_CAMERA_TRANSITION_STEPS       72
#define CASCADE_DOWN_SECOND_CAMERA_TRANSITION_STEPS      32
#define CASCADE_DOWN_FINAL_SPRITE_ROTATION_STEPS         16
#define CASCADE_DOWN_MOUNT_ROTATION_ANGLE_X              (FX32_ONE * -90)
#define CASCADE_DOWN_MOUNT_ROTATION_ANGLE_Y              (FX32_ONE * 180)
#define CASCADE_DOWN_MOUNT_ROTATION_ANGLE_Z              (FX32_ONE * 0)
#define CASCADE_DOWN_FINAL_MOUNT_ROTATION_ANGLE_X        (FX32_ONE * -90)
#define CASCADE_DOWN_FINAL_MOUNT_ROTATION_ANGLE_Y        (FX32_ONE * 0)
#define CASCADE_DOWN_FINAL_MOUNT_ROTATION_ANGLE_Z        (FX32_ONE * 0)
#define CASCADE_DOWN_ORBIT_ANGLE_START                   (FX32_ONE * 90)
#define CASCADE_DOWN_ORBIT_ANGLE                         (FX32_ONE * -70)
#define CASCADE_DOWN_FINAL_ORBIT_ANGLE                   (FX32_ONE * -110)
#define CASCADE_DOWN_ORBIT_ANGLE_END                     270
#define CASCADE_DOWN_ROTATE_MOUNT_POSITION_FIX_X_START   (FX32_ONE * 0)
#define CASCADE_DOWN_ROTATE_MOUNT_POSITION_FIX_Y_START   (FX32_ONE * 0)
#define CASCADE_DOWN_ROTATE_MOUNT_POSITION_FIX_Z_START   (FX32_ONE * 6)
#define CASCADE_DOWN_ROTATE_MOUNT_POSITION_FIX_X         (FX32_ONE * 0)
#define CASCADE_DOWN_ROTATE_MOUNT_POSITION_FIX_Y         (FX32_ONE * 0)
#define CASCADE_DOWN_ROTATE_MOUNT_POSITION_FIX_Z         (FX32_ONE * 4)
#define CASCADE_DOWN_CASCADE_MOUNT_POSITION_FIX_X_START  (FX32_ONE * 0)
#define CASCADE_DOWN_CASCADE_MOUNT_POSITION_FIX_Y_START  (FX32_ONE * 0)
#define CASCADE_DOWN_CASCADE_MOUNT_POSITION_FIX_Z_START  (FX32_ONE * 10)
#define CASCADE_DOWN_FIRST_CASCADE_MOUNT_POSITION_FIX_X  (FX32_ONE * 0)
#define CASCADE_DOWN_FIRST_CASCADE_MOUNT_POSITION_FIX_Y  (FX32_ONE * 0)
#define CASCADE_DOWN_FIRST_CASCADE_MOUNT_POSITION_FIX_Z  (FX32_ONE * -16)
#define CASCADE_DOWN_SECOND_CASCADE_MOUNT_POSITION_FIX_X (FX32_ONE * 0)
#define CASCADE_DOWN_SECOND_CASCADE_MOUNT_POSITION_FIX_Y (FX32_ONE * 0)
#define CASCADE_DOWN_SECOND_CASCADE_MOUNT_POSITION_FIX_Z (FX32_ONE * 6)
#define CASCADE_DOWN_FINAL_MOUNT_POSITION_FIX_X          (FX32_ONE * 0)
#define CASCADE_DOWN_FINAL_MOUNT_POSITION_FIX_Y          (FX32_ONE * 0)
#define CASCADE_DOWN_FINAL_MOUNT_POSITION_FIX_Z          (FX32_ONE * -7)
#define CASCADE_DOWN_FIRST_CASCADE_BOBBING_FIX           (FX32_ONE * -4)
#define CASCADE_DOWN_SECOND_CASCADE_BOBBING_FIX          (FX32_ONE * 4)
#define CASCADE_DOWN_BOBBING_DELTA                       1024
#define CASCADE_DOWN_BOBBING_MAX                         (FX32_ONE * 4)

#define CASCADE_UP_CAMERA_ANGLE_Y_OFFSET                  20
#define CASCADE_UP_INITIAL_SPRITE_ROTATION_STEPS          4
#define CASCADE_UP_CASCADE_STEPS                          16
#define CASCADE_UP_FINAL_SPRITE_ROTATION_STEPS            2
#define CASCADE_UP_MOUNT_ROTATION_ANGLE_X                 (FX32_ONE * -90)
#define CASCADE_UP_MOUNT_ROTATION_ANGLE_Y                 (FX32_ONE * 180)
#define CASCADE_UP_MOUNT_ROTATION_ANGLE_Z                 (FX32_ONE * 0)
#define CASCADE_UP_FINAL_MOUNT_ROTATION_ANGLE_X           (FX32_ONE * 90)
#define CASCADE_UP_FINAL_MOUNT_ROTATION_ANGLE_Y           (FX32_ONE * 0)
#define CASCADE_UP_FINAL_MOUNT_ROTATION_ANGLE_Z           (FX32_ONE * 0)
#define CASCADE_UP_ORBIT_ANGLE_START                      (FX32_ONE * 270)
#define CASCADE_UP_ORBIT_ANGLE                            (FX32_ONE * 110)
#define CASCADE_UP_FINAL_ORBIT_ANGLE                      (FX32_ONE * 70)
#define CASCADE_UP_ORBIT_ANGLE_END                        90
#define CASCADE_UP_ROTATE_MOUNT_POSITION_FIX_X_START      (FX32_ONE * 0)
#define CASCADE_UP_ROTATE_MOUNT_POSITION_FIX_Y_START      (FX32_ONE * 0)
#define CASCADE_UP_ROTATE_MOUNT_POSITION_FIX_Z_START      (FX32_ONE * -7)
#define CASCADE_UP_ROTATE_MOUNT_POSITION_FIX_X            (FX32_ONE * 0)
#define CASCADE_UP_ROTATE_MOUNT_POSITION_FIX_Y            (FX32_ONE * 0)
#define CASCADE_UP_ROTATE_MOUNT_POSITION_FIX_Z            (FX32_ONE * 0)
#define CASCADE_UP_CASCADE_MOUNT_POSITION_FIX_X_START     (FX32_ONE * 0)
#define CASCADE_UP_CASCADE_MOUNT_POSITION_FIX_Y_START     (FX32_ONE * 0)
#define CASCADE_UP_CASCADE_MOUNT_POSITION_FIX_Z_START     (FX32_ONE * -7)
#define CASCADE_UP_CASCADE_MOUNT_POSITION_FIX_X           (FX32_ONE * 0)
#define CASCADE_UP_CASCADE_MOUNT_POSITION_FIX_Y           (FX32_ONE * 0)
#define CASCADE_UP_CASCADE_MOUNT_POSITION_FIX_Z           (FX32_ONE * 17)
#define CASCADE_UP_FINAL_MOUNT_POSITION_FIX_X             (FX32_ONE * 0)
#define CASCADE_UP_FINAL_MOUNT_POSITION_FIX_Y             (FX32_ONE * 0)
#define CASCADE_UP_FINAL_MOUNT_POSITION_FIX_Z             (FX32_ONE * -4)
#define CASCADE_UP_CASCADE_MOUNT_POSITION_FIX_Z_THRESHOLD (FX32_ONE * 10)
#define CASCADE_UP_BOBBING_DELTA                          512
#define CASCADE_UP_BOBBING_MAX                            (FX32_ONE * 4)

enum FloatingPlatformKind {
    FLOATING_PLATFORM_KIND_FLOOR = 0,
    FLOATING_PLATFORM_KIND_WEST_WALL,
    FLOATING_PLATFORM_KIND_EAST_WALL,
    FLOATING_PLATFORM_KIND_CEILING,
    FLOATING_PLATFORM_KIND_INVALID
};

enum FloatingPlatformJumpTaskState {
    FLOATING_PLATFORM_JUMP_TASK_STATE_INIT = 0,
    FLOATING_PLATFORM_JUMP_TASK_STATE_UPDATE_PLAYER_DIR,
    FLOATING_PLATFORM_JUMP_TASK_STATE_MOVE_PLAYER,
    FLOATING_PLATFORM_JUMP_TASK_STATE_FINISH
};

enum PropKind {
    PROP_KIND_SMALL_PLATFORM = 0,
    PROP_KIND_FLOATING_BLUE_ROCK,
    PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_1,
    PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_2,
    PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_SW,
    PROP_KIND_MEDIUM_MOVING_PLATFORM_1,
    PROP_KIND_MEDIUM_MOVING_PLATFORM_2,
    PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_3,
    PROP_KIND_LARGE_ELEVATOR_PLATFORM_1,
    PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_4,
    PROP_KIND_HORIZONTAL_PLATFORM_1,
    PROP_KIND_VERTICAL_PLATFORM_1,
    PROP_KIND_VERTICAL_PLATFORM_2,
    PROP_KIND_HORIZONTAL_PLATFORM_2,
    PROP_KIND_ROTATED_PLATFORM_EAST,
    PROP_KIND_ROTATED_PLATFORM_WEST,
    PROP_KIND_LARGE_ELEVATOR_PLATFORM_2,
    PROP_KIND_LARGE_ELEVATOR_PLATFORM_3,
    PROP_KIND_LARGE_ELEVATOR_PLATFORM_4,
    PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_5,
    PROP_KIND_GIRATINA_SHADOW,
    PROP_KIND_WATERFALL,
    PROP_KIND_LAND_VINE_FLOWER,
    PROP_KIND_LAND_ROCK,
    PROP_KIND_PORTAL,
    PROP_KIND_COUNT,
    PROP_KIND_INVALID = PROP_KIND_COUNT,
};

enum PropAnimKind {
    PROP_ANIM_KIND_GIRATINA_SHADOW = 0,
    PROP_ANIM_KIND_LAND_VINE_FLOWER,
    PROP_ANIM_KIND_LAND_ROCK,
    PROP_ANIM_KIND_WATERFALL,
    PROP_ANIM_KIND_PORTAL,
    PROP_ANIM_KIND_COUNT,
    PROP_ANIM_KIND_INVALID = PROP_ANIM_KIND_COUNT,
};

enum PlatformPropSoundEffectState {
    PLATFORM_PROP_SFX_STATE_DISAPPEAR = -1,
    PLATFORM_PROP_SFX_STATE_APPEAR = 1,
};

enum ObstaclePropSoundEffectState {
    OBSTACLE_PROP_SFX_STATE_DISAPPEAR = -2,
    OBSTACLE_PROP_SFX_STATE_APPEAR = 2,
};

enum GiratinaShadowPropState {
    GIRATINA_SHADOW_PROP_STATE_SFX = 0,
    GIRATINA_SHADOW_PROP_STATE_MOVE,
    GIRATINA_SHADOW_PROP_STATE_END,
};

enum GiratinaShadowPropSoundEffectKind {
    GIRATINA_SHADOW_PROP_SFX_KIND_NONE = 0,
    GIRATINA_SHADOW_PROP_SFX_KIND_CRY,
    GIRATINA_SHADOW_PROP_SFX_KIND_FLEE,
};

enum FlagCondition {
    FLAG_COND_NONE = 0,
    FLAG_COND_BOULDER_PUZZLE_FALSE,
    FLAG_COND_BOULDER_PUZZLE_TRUE,
    FLAG_COND_WORLD_PROGRESS_EQ,
    FLAG_COND_WORLD_PROGRESS_LEQ,
    FLAG_COND_WORLD_PROGRESS_GEQ,
    FLAG_COND_MANUAL_ADD_ONLY,
    FLAG_COND_GIRATINA_SHADOW,
    FLAG_COND_CYRUS_APPEARANCE,
};

enum MovingPlatformElevatorDirection {
    MOVING_PLATFORM_ELEVATOR_DIR_UP = 0,
    MOVING_PLATFORM_ELEVATOR_DIR_DOWN,
    MOVING_PLATFORM_ELEVATOR_DIR_NONE,
};

enum MovingPlatformMapObjectData {
    MOVING_PLATFORM_MAP_OBJ_DATA_INDEX = 0,
    MOVING_PLATFORM_MAP_OBJ_DATA_MAP_HEADER_ID,
    MOVING_PLATFORM_MAP_OBJ_DATA_EVELATOR_PATH_INDEX,
};

enum ElevatorPlatformState {
    ELEVATOR_PLATFORM_STATE_INIT = 0,
    ELEVATOR_PLATFORM_STATE_VIBRATE,
    ELEVATOR_PLATFORM_STATE_MOVE_FIRST_HALF,
    ELEVATOR_PLATFORM_STATE_CHANGE_MAPS,
    ELEVATOR_PLATFORM_STATE_MOVE_SECOND_HALF,
    ELEVATOR_PLATFORM_STATE_END,
    ELEVATOR_PLATFORM_STATE_CYRUS_B4F_START_ANIMATION,
    ELEVATOR_PLATFORM_STATE_CYRUS_B4F_END_ANIMATION,
    ELEVATOR_PLATFORM_STATE_COUNT,
};

enum ElevatorPlatformHandlerResult {
    ELEVATOR_PLATFORM_HANDLER_RES_CONTINUE = 0,
    ELEVATOR_PLATFORM_HANDLER_RES_LOOP,
    ELEVATOR_PLATFORM_HANDLER_RES_FINISH,
};

enum EventCmdKind {
    EVENT_CMD_SET_MAP_OBJECT_ANIMATION = 0,
    EVENT_CMD_MOVE_PLATFORM,
    EVENT_CMD_ADD_MAP_OBJECT_WITH_LOCAL_ID,
    EVENT_CMD_DELETE_MAP_OBJECT_WITH_LOCAL_ID,
    EVENT_CMD_CASCADE_UP,
    EVENT_CMD_START_SCRIPT,
    EVENT_CMD_SET_DISTORTION_WORLD_PROGRESS,
    EVENT_CMD_SHOW_GIRATINA_SHADOW,
    EVENT_CMD_SET_GIRATINA_ANIMATION_FLAG,
    EVENT_CMD_SET_PUZZLE_FLAG,
    EVENT_CMD_CASCADE_DOWN,
    EVENT_CMD_PLAY_GIRATINA_ARRIVAL,
    EVENT_CMD_SHOW_UXIE_BOULDER_TUTO,
    EVENT_CMD_SHOW_AZELF_BOULDER_TUTO,
    EVENT_CMD_SHOW_MESPRIT_BOULDER_TUTO,
    EVENT_CMD_SHOW_GIRATINA_ROOM_PLATFORMS,
    EVENT_CMD_HIDE_GIRATINA_ROOM_PLATFORMS,
    EVENT_CMD_CLEAR_PUZZLE_FLAG,
    EVENT_CMD_KIND_COUNT,
    EVENT_CMD_END = EVENT_CMD_KIND_COUNT,
};

enum EventCmdHandlerResult {
    EVENT_CMD_HANDLER_RES_CONTINUE = 0,
    EVENT_CMD_HANDLER_RES_LOOP,
    EVENT_CMD_HANDLER_RES_FINISH,
};

// NOTE: These constants must mirror those in res/field/scripts/scripts_distortion_world_1f.s
enum MapObjectEvent1FLocalID {
    MAP_OBJECT_1F_CYNTHIA_PORTAL = MAP_OBJECT_BASE_LOCAL_ID,
    MAP_OBJECT_1F_CYNTHIA_ELEVATOR,
};

// NOTE: These constants must mirror those in res/field/scripts/scripts_distortion_world_b1f.s
enum MapObjectEventB1FLocalID {
    MAP_OBJECT_B1F_CYNTHIA_ELEVATOR = MAP_OBJECT_BASE_LOCAL_ID,
    MAP_OBJECT_B1F_MESPRIT,
};

// NOTE: These constants must mirror those in res/field/scripts/scripts_distortion_world_b2f.s
enum MapObjectEventB2FLocalID {
    MAP_OBJECT_B2F_CYNTHIA_1 = MAP_OBJECT_BASE_LOCAL_ID,
    MAP_OBJECT_B2F_CYNTHIA_2 = MAP_OBJECT_B2F_CYNTHIA_1,
};

// NOTE: These constants must mirror those in res/field/scripts/scripts_distortion_world_b3f.s
enum MapObjectEventB3FLocalID {
    MAP_OBJECT_B3F_CYRUS = MAP_OBJECT_BASE_LOCAL_ID,
};

enum MapObjectEventB4FLocalID {
    MAP_OBJECT_B4F_CYRUS = MAP_OBJECT_BASE_LOCAL_ID + 6,
};

enum MapObjectEventB5FLocalID {
    MAP_OBJECT_B5F_MESPRIT_BOULDER = MAP_OBJECT_BASE_LOCAL_ID,
    MAP_OBJECT_B5F_AZELF_BOULDER,
    MAP_OBJECT_B5F_UXIE_BOULDER,
    MAP_OBJECT_B5F_UXIE,
    MAP_OBJECT_B5F_AZELF,
    MAP_OBJECT_B5F_MESPRIT,
};

// NOTE: These constants must mirror those in res/field/scripts/scripts_distortion_world_b6f.s
enum MapObjectEventB6FLocalID {
    MAP_OBJECT_B6F_MESPRIT_BOULDER_OUTSIDE = MAP_OBJECT_BASE_LOCAL_ID,
    MAP_OBJECT_B6F_AZELF_BOULDER_OUTSIDE,
    MAP_OBJECT_B6F_UXIE_BOULDER_OUTSIDE,
    MAP_OBJECT_B6F_MESPRIT,
    MAP_OBJECT_B6F_UXIE,
    MAP_OBJECT_B6F_AZELF,
    MAP_OBJECT_B6F_CYNTHIA,
    MAP_OBJECT_B6F_CYNTHIA_ELEVATOR = MAP_OBJECT_B6F_CYNTHIA,
    MAP_OBJECT_B6F_MESPRIT_BOULDER_PIT_TEXT_1,
    MAP_OBJECT_B6F_MESPRIT_BOULDER_PIT_TEXT_2,
    MAP_OBJECT_B6F_MESPRIT_BOULDER_PIT_TEXT_3,
    MAP_OBJECT_B6F_UXIE_BOULDER_PIT_TEXT_1,
    MAP_OBJECT_B6F_UXIE_BOULDER_PIT_TEXT_2,
    MAP_OBJECT_B6F_UXIE_BOULDER_PIT_TEXT_3,
    MAP_OBJECT_B6F_AZELF_BOULDER_PIT_TEXT_1,
    MAP_OBJECT_B6F_AZELF_BOULDER_PIT_TEXT_2,
    MAP_OBJECT_B6F_AZELF_BOULDER_PIT_TEXT_3,
    MAP_OBJECT_B6F_MESPRIT_BOULDER_IN_PIT,
    MAP_OBJECT_B6F_AZELF_BOULDER_IN_PIT,
    MAP_OBJECT_B6F_UXIE_BOULDER_IN_PIT,
};

// NOTE: These constants must mirror those in res/field/scripts/scripts_distortion_world_b7f.s
enum MapObjectEventB7FLocalID {
    MAP_OBJECT_B7F_CYNTHIA_INITIAL = MAP_OBJECT_BASE_LOCAL_ID,
    MAP_OBJECT_B7F_CYNTHIA_TALKING = MAP_OBJECT_B7F_CYNTHIA_INITIAL,
    MAP_OBJECT_B7F_CYNTHIA_POST_BATTLE = MAP_OBJECT_B7F_CYNTHIA_INITIAL,
    MAP_OBJECT_B7F_CYRUS_INITIAL,
    MAP_OBJECT_B7F_CYRUS_TALKING = MAP_OBJECT_B7F_CYRUS_INITIAL,
};

// NOTE: These constants must mirror those in res/field/scripts/scripts_distortion_world_giratina_room.s
enum MapObjectEventGiratinaRoomLocalID {
    MAP_OBJECT_GIRATINA_ROOM_GIRATINA = MAP_OBJECT_BASE_LOCAL_ID,
    MAP_OBJECT_GIRATINA_ROOM_CYNTHIA,
    MAP_OBJECT_GIRATINA_ROOM_CYRUS,
    MAP_OBJECT_GIRATINA_ROOM_PORTAL,
    MAP_OBJECT_GIRATINA_ROOM_CYNTHIA_TEXT,
};

enum MapObjectEventTurnbackCaveLocalID {
    MAP_OBJECT_TURNBACK_CAVE_PORTAL = MAP_OBJECT_BASE_LOCAL_ID,
    MAP_OBJECT_TURNBACK_CAVE_GRISEOUS_ORB_ITEM,
};

enum EventCmdSetMapObjectAnimationState {
    EVENT_CMD_SET_MAP_OBJECT_ANIMATION_STATE_INIT = 0,
    EVENT_CMD_SET_MAP_OBJECT_ANIMATION_STATE_START,
    EVENT_CMD_SET_MAP_OBJECT_ANIMATION_STATE_FINISH,
};

enum EventCmdMovePlatformState {
    EVENT_CMD_MOVE_PLATFORM_STATE_INIT = 0,
    EVENT_CMD_MOVE_PLATFORM_STATE_VIBRATE,
    EVENT_CMD_MOVE_PLATFORM_STATE_MOVE,
    EVENT_CMD_MOVE_PLATFORM_STATE_END,
};

enum EventCmdShowGiratinaShadowState {
    EVENT_CMD_SHOW_GIRATINA_SHADOW_STATE_LOAD = 0,
    EVENT_CMD_SHOW_GIRATINA_SHADOW_STATE_FINISH,
};

enum EventCmdShowUxieBoulderTutoState {
    EVENT_CMD_SHOW_UXIE_BOULDER_TUTO_STATE_INIT = 0,
    EVENT_CMD_SHOW_UXIE_BOULDER_TUTO_STATE_ASCEND,
    EVENT_CMD_SHOW_UXIE_BOULDER_TUTO_STATE_MOVE_TO_BOULDER,
    EVENT_CMD_SHOW_UXIE_BOULDER_TUTO_STATE_HOVER,
    EVENT_CMD_SHOW_UXIE_BOULDER_TUTO_STATE_MOVE_AWAY,
    EVENT_CMD_SHOW_UXIE_BOULDER_TUTO_STATE_DESCEND,
};

enum EventCmdShowAzelfBoulderTutoState {
    EVENT_CMD_SHOW_AZELF_BOULDER_TUTO_STATE_INIT = 0,
    EVENT_CMD_SHOW_AZELF_BOULDER_TUTO_STATE_ASCEND,
    EVENT_CMD_SHOW_AZELF_BOULDER_TUTO_STATE_WAIT_FOR_ANIMATION,
    EVENT_CMD_SHOW_AZELF_BOULDER_TUTO_STATE_DESCEND,
};

enum EventCmdShowMespritBoulderTutoState {
    EVENT_CMD_SHOW_MESPRIT_BOULDER_TUTO_STATE_INIT = 0,
    EVENT_CMD_SHOW_MESPRIT_BOULDER_TUTO_STATE_ASCEND,
    EVENT_CMD_SHOW_MESPRIT_BOULDER_TUTO_STATE_WAIT_FOR_ANIMATION,
    EVENT_CMD_SHOW_MESPRIT_BOULDER_TUTO_STATE_DESCEND,
};

enum EventCmdShowGiratinaRoomPlatformsState {
    EVENT_CMD_SHOW_GIRATINA_ROOM_PLATFORMS_STATE_DO_CAMERA_TRANSITION = 0,
    EVENT_CMD_SHOW_GIRATINA_ROOM_PLATFORMS_STATE_SHOW_PLATFORMS,
};

enum EventCmdHideGiratinaRoomPlatformsState {
    EVENT_CMD_HIDE_GIRATINA_ROOM_PLATFORMS_STATE_INIT = 0,
    EVENT_CMD_HIDE_GIRATINA_ROOM_PLATFORMS_STATE_HIDE_PLATFORMS,
    EVENT_CMD_HIDE_GIRATINA_ROOM_PLATFORMS_STATE_WAIT,
};

enum EventCmdPlayGiratinaArrivalState {
    EVENT_CMD_PLAY_GIRATINA_ARRIVAL_STATE_INIT_MAP_OBJECT = 0,
    EVENT_CMD_PLAY_GIRATINA_ARRIVAL_STATE_INIT_SPRITE_AND_SKY,
    EVENT_CMD_PLAY_GIRATINA_ARRIVAL_STATE_DESCEND,
    EVENT_CMD_PLAY_GIRATINA_ARRIVAL_STATE_BRIGHTEN_SPRITE,
    EVENT_CMD_PLAY_GIRATINA_ARRIVAL_STATE_WAIT,
};

enum EventCmdCascadeDownState {
    EVENT_CMD_CASCADE_DOWN_STATE_INIT = 0,
    EVENT_CMD_CASCADE_DOWN_STATE_ROTATE_PLAYER,
    EVENT_CMD_CASCADE_DOWN_STATE_CASCADE_DOWN,
    EVENT_CMD_CASCADE_DOWN_STATE_FINISH_CASCADING,
    EVENT_CMD_CASCADE_DOWN_STATE_MOVE_AWAY,
};

enum EventCmdCascadeUpState {
    EVENT_CMD_CASCADE_UP_STATE_INIT = 0,
    EVENT_CMD_CASCADE_UP_STATE_ROTATE_PLAYER,
    EVENT_CMD_CASCADE_UP_STATE_CASCADE_DOWN,
    EVENT_CMD_CASCADE_UP_STATE_FINISH_CASCADING,
    EVENT_CMD_CASCADE_UP_STATE_MOVE_AWAY,
};

enum Axis {
    AXIS_X = 0,
    AXIS_Y,
    AXIS_Z,
};

enum CascadeMovementDirection {
    CASCADE_MOVEMENT_DIR_UP = 0,
    CASCADE_MOVEMENT_DIR_DOWN,
};

enum CascadeUpdateResult {
    CASCADE_UPDATE_RES_NOTHING = 0,
    CASCADE_UPDATE_RES_MAP_LOAD_REACHED,
    CASCADE_UPDATE_RES_FINISHING_POS_REACHED,
    CASCADE_UPDATE_RES_FINAL_POS_REACHED,
};

typedef struct DistWorldSystem DistWorldSystem;

typedef struct DistWorldBounds {
    s16 startTileX;
    s16 startTileY;
    s16 startTileZ;
    s16 sizeX;
    s16 sizeY;
    s16 sizeZ;
} DistWorldBounds;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_ov9_02251EC8;

typedef struct {
    SpriteList *unk_00;
    G2dRenderer unk_04;
    SpriteResourceCollection *unk_190;
    SpriteResourceCollection *unk_194;
    SpriteResourceCollection *unk_198;
    SpriteResourceCollection *unk_19C;
    SpriteResource *unk_1A0[7];
    SpriteResource *unk_1BC[1];
    SpriteResource *unk_1C0[7];
    SpriteResource *unk_1DC[7];
    SysTask *unk_1F8;
} UnkStruct_ov9_0224B064;

typedef struct {
    s16 darknessLevel;
    s16 unk_02;
    u16 unk_04;
    u16 darknessCalculationDisabled;
    u16 unk_08[16];
    u16 unk_28[16];
    u16 unk_48[80];
    u16 unk_E8[80];
} UnkStruct_ov9_0224ADC0;

typedef struct {
    int unk_00;
    int unk_04;
    fx32 unk_08;
    fx32 unk_0C;
    int unk_10;
    fx32 unk_14;
    VecFx32 unk_18;
    VecFx32 unk_24;
} UnkStruct_ov9_02253680;

typedef struct {
    DistWorldSystem *unk_00;
    UnkStruct_ov9_02253680 unk_04;
    UnkStruct_ov9_0224B064 *unk_34;
} UnkStruct_ov9_0224B1B4;

typedef struct {
    fx32 unk_00;
    fx32 unk_04;
    UnkStruct_ov9_0224B1B4 unk_08;
    Sprite *unk_40;
} UnkStruct_ov9_0224B2C0;

typedef struct {
    u32 mapHeaderID;
    u16 unk_04;
    s16 unk_06;
    s16 unk_08;
    s16 unk_0A;
} UnkStruct_ov9_0224C034;

typedef struct {
    int unk_00;
    UnkStruct_ov9_0224C034 *unk_04;
    void *unk_08;
} UnkStruct_ov9_0224BFE0;

typedef struct DistWorldFloatingPlatformTemplate {
    s16 kind;
    u16 distortionWorldAttrID;
    DistWorldBounds bounds;
    u16 tileCountVertical;
    u16 tileCountHorizontal;
} DistWorldFloatingPlatformTemplate;

typedef struct DistWorldFloatingPlatformJumpPointTemplate {
    u16 handlerIndex;
    s16 playerDir;
    int dummy04;
    DistWorldBounds bounds;
    s16 xDisplacement;
    s16 yDisplacement;
    s16 zDisplacement;
    s16 unk_1A;
    s16 movementAnimSteps;
    u16 unk_1E;
    u16 unk_20;
    s16 finalFacingDir;
    s16 floatingPlatformKind;
    u16 floatingPlatformIndex;
} DistWorldFloatingPlatformJumpPointTemplate;

typedef struct DistWorldCameraAngleTemplate {
    DistWorldBounds bounds;
    u16 angleX;
    u16 angleY;
    u16 angleZ;
    s16 playerDir;
    s32 transitionSteps;
} DistWorldCameraAngleTemplate;

typedef struct DistWorldGhostPropHeader {
    int templateCount;
    int triggerCount;
    u32 defaultVisiblePropGroups;
} DistWorldGhostPropHeader;

typedef struct DistWorldGhostPropTemplate {
    u32 groupID;
    u16 propKind;
    s16 tileX;
    s16 tileY;
    s16 tileZ;
} DistWorldGhostPropTemplate;

typedef struct DistWorldGhostPropTrigger {
    u32 groupID;
    s16 playerDir;
    s16 showProp;
    DistWorldBounds bounds;
} DistWorldGhostPropTrigger;

typedef struct DistWorldFloatingPlatformManager {
    int currentPlatformIndex;
    int platformCount;
    DistWorldFloatingPlatformTemplate *templates;
    u32 terrainAttributesSize;
    u16 *terrainAttributes;
} DistWorldFloatingPlatformManager;

typedef struct DistWorldFileFloatingPlatformJumpPointSection {
    int count;
    DistWorldFloatingPlatformJumpPointTemplate *templates;
} DistWorldFileFloatingPlatformJumpPointSection;

typedef struct DistWorldCameraAngleTemplates {
    int count;
    DistWorldCameraAngleTemplate *templates;
} DistWorldCameraAngleTemplates;

typedef struct DistWorldGhostPropData {
    const DistWorldGhostPropHeader *header;
    const DistWorldGhostPropTemplate *templates;
    const DistWorldGhostPropTrigger *triggers;
} DistWorldGhostPropData;

typedef struct DistWorldFileHeader {
    int dummy00;
    int floatingPlatformSectionSize;
    int floatingPlatformJumpPointSectionSize;
    int cameraAngleSectionSize;
    int ghostPropSectionSize;
} DistWorldFileHeader;

typedef struct DistWorldFileFloatingPlatformSection {
    int count;
    DistWorldFloatingPlatformTemplate *templates;
} DistWorldFileFloatingPlatformSection;

typedef struct DistWorldFileCameraAngleSection {
    int count;
    DistWorldCameraAngleTemplate *templates;
} DistWorldFileCameraAngleSection;

typedef struct DistWorldFile {
    u32 mapHeaderID;
    DistWorldFileFloatingPlatformSection *floatingPlatformSection;
    DistWorldFileFloatingPlatformJumpPointSection *floatingPlatformJumpPointSection;
    DistWorldFileCameraAngleSection *cameraAngleSection;
    void *ghostPropSection;
    DistWorldFileHeader *header;
    void *buffer;
} DistWorldFile;

typedef struct {
    UnkStruct_ov9_0224BFE0 unk_00;
    DistWorldFile distortionWorldFile;
    DistWorldFloatingPlatformManager floatingPlatformMan;
    DistWorldFileFloatingPlatformJumpPointSection floatingPlatformJumpPoints;
    DistWorldCameraAngleTemplates cameraAngleTemplates;
    DistWorldGhostPropData ghostPropData;
    DistWorldFile inactiveDistortionWorldFile;
    DistWorldGhostPropData inactiveGhostPropData;
} UnkStruct_ov9_02249B04_sub1;

typedef struct DistWorldCameraTransition {
    BOOL isActive;
    int stepsRemaining;
    VecFx32 currentAngle;
    VecFx32 angleStep;
} DistWorldCameraTransition;

typedef struct DistWorldCameraManager {
    Camera *camera;
    CameraAngle baseAngle;
    CameraAngle currentAngle;
    CameraAngle targetAngle;
    DistWorldCameraTransition transition;
    SysTask *transitionTask;
} DistWorldCameraManager;

typedef struct DistWorldFloatingPlatformJumpTaskContext {
    int state;
    int stepsRemaining;
    VecFx32 positionIncrementVec;
    fx32 unk_14;
    fx32 positionIncrement;
    VecFx32 accumulatedMovement;
    VecFx32 positionIncrementVecAbs;
    DistWorldFloatingPlatformJumpPointTemplate template;
} DistWorldFloatingPlatformJumpTaskContext;

typedef struct DistWorldFieldTaskContext {
    int dummy00;
    u8 data[FIELD_TASK_CONTEXT_MAX_SIZE];
} DistWorldFieldTaskContext;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    fx32 unk_04;
    fx32 unk_08;
    fx32 unk_0C;
    NNSG3dAnmObj *unk_10;
    u16 unk_14;
    u16 unk_16;
    MapObject *unk_18;
    Billboard *unk_1C;
} UnkStruct_ov9_0224A294;

typedef struct {
    int unk_00;
    UnkStruct_ov9_0224A294 *unk_04;
    void *unk_08;
    void *unk_0C;
    NNSFndAllocator unk_10;
} UnkStruct_ov9_0224A228;

typedef struct DistWorldPropAnimInfo {
    u16 propKind;
    u16 animKind;
    BOOL isStatic;
} DistWorldPropAnimInfo;

typedef struct DistWorldProp3DModel {
    u32 propKind;
    Simple3DModel model;
} DistWorldProp3DModel;

typedef struct DistWorldPropAnimSet {
    u32 animKind;
    void *animSet;
} DistWorldPropAnimSet;

typedef struct DistWorldPropRenderer {
    u16 valid;
    u16 propKind;
    Simple3DRenderObj renderObj;
    Simple3DAnimation animation;
} DistWorldPropRenderer;

typedef struct DistWorldPropRenderBuffers {
    DistWorldProp3DModel models[PROP_KIND_COUNT];
    DistWorldPropAnimSet animSets[PROP_ANIM_KIND_COUNT];
    DistWorldPropRenderer renderers[GHOST_PROP_RENDERER_COUNT];
} DistWorldPropRenderBuffers;

typedef struct DistWorldGhostProp {
    s16 animManIndex;
    s16 mapHeaderID;
    u16 dummy04;
    u16 dummy06;
    DistWorldGhostPropTemplate template;
    DistWorldSystem *system;
} DistWorldGhostProp;

typedef struct DistWorldGhostPropManager {
    u32 hiddenGhostPropGroups;
    s32 templateCount;
    OverworldAnimManager **animMans;
} DistWorldGhostPropManager;

typedef struct {
    int unk_00;
    int unk_04;
    u32 unk_08;
    NARC *unk_0C;
    MapMatrix *unk_10;
    AreaDataManager *unk_14;
    LandDataManager *unk_18;
} UnkStruct_ov9_0224C8E8;

typedef struct DistWorldMovingPlatformPropUserData {
    s16 tileX;
    s16 tileY;
    s16 tileZ;
    u16 propKind;
    BOOL isGiratinaRoomElevator;
    DistWorldSystem *system;
} DistWorldMovingPlatformPropUserData;

typedef struct DistWorldMovingPlatformProp {
    u8 animated;
    u8 hidden;
    u8 opacity;
    u8 animStep;
    VecFx32 pos;
    DistWorldMovingPlatformPropUserData userData;
    DistWorldPropRenderer *renderer;
} DistWorldMovingPlatformProp;

typedef struct DistWorldElevatorPlatformPath {
    u16 index;
    u16 nextIndex;
    s16 finalTileXOffset;
    s16 finalTileYOffset;
    s16 finalTileZOffset;
    s16 changeMapsTileXOffset;
    s16 changeMapsTileYOffset;
    s16 changeMapsTileZOffset;
    VecFx32 posDelta;
    u16 persistedFlagToSet;
    u16 persistedFlagToClear;
} DistWorldElevatorPlatformPath;

typedef struct DistWorldMovingPlatformTemplate {
    u16 index;
    s16 tileX;
    s16 tileY;
    s16 tileZ;
    u16 elevatorPathIndex;
    u16 elevatorDir;
    u32 destIndex;
    u32 propKind;
    u32 persistedFlag;
} DistWorldMovingPlatformTemplate;

typedef struct DistWorldMovingPlatformMapTemplates {
    u32 mapHeaderID;
    const DistWorldMovingPlatformTemplate **templates;
} DistWorldMovingPlatformMapTemplates;

typedef struct DistWorldMovingPlatformPropAnimator {
    u8 valid;
    u8 unk_01;
    u16 mapHeaderID;
    DistWorldMovingPlatformTemplate template;
    MapObject *mapObj;
    OverworldAnimManager *animMan;
} DistWorldMovingPlatformPropAnimator;

typedef struct DistWorldMovingPlatformPropManager {
    DistWorldMovingPlatformPropAnimator animators[MOVING_PLATFORM_MANAGER_ANIMATOR_COUNT];
} DistWorldMovingPlatformPropManager;

typedef struct {
    SysTask *unk_00;
} UnkStruct_ov9_02249E94;

typedef struct DistWorldMapConnections {
    u32 currID;
    u32 prevID;
    u32 nextID;
} DistWorldMapConnections;

typedef struct DistWorldSimplePropTemplate {
    u32 dummy00;
    u16 propKind;
    s16 tileX;
    s16 tileY;
    s16 tileZ;
    u16 flagCond;
    u16 flagCondVal;
} DistWorldSimplePropTemplate;

typedef struct DistWorldSimplePropMapTemplates {
    u32 mapHeaderID;
    const DistWorldSimplePropTemplate *templates;
} DistWorldSimplePropMapTemplates;

typedef struct DistWorldSimplePropAnimator {
    u16 mapHeaderID;
    OverworldAnimManager *animMan;
    DistWorldSimplePropTemplate template;
} DistWorldSimplePropAnimator;

typedef struct DistWorldSimplePropManager {
    DistWorldSimplePropAnimator animators[SIMPLE_PROP_MANAGER_ANIMATOR_COUNT];
} DistWorldSimplePropManager;

typedef struct DistWorldSimplePropUserData {
    DistWorldSystem *system;
    const DistWorldSimplePropAnimator *animator;
} DistWorldSimplePropUserData;

typedef struct DistWorldObjectEvent {
    u16 flagCond;
    u16 flagCondVal;
    u16 rotated;
    u16 rotationAngle;
    ObjectEvent objEvent;
} DistWorldObjectEvent;

typedef struct DistWorldMapObjectEvents {
    u32 mapHeaderID;
    const DistWorldObjectEvent **objEvents;
} DistWorldMapObjectEvents;

typedef struct DistWorldMapObjectManager {
    MapObject *mapObjs[MAP_OBJECT_MANAGER_OBJECT_COUNT];
} DistWorldMapObjectManager;

typedef struct CmdParamsMovePlatform {
    u16 platformIndex;
    u16 movePlayer;
    u16 dummy04;
    s16 finalTileXOffset;
    s16 finalTileYOffset;
    s16 finalTileZOffset;
    VecFx32 posDelta;
} CmdParamsMovePlatform;

typedef struct CmdParamsSetMapObjectAnimation {
    u32 mapObjLocalID;
    enum MovementAction movementAction;
} CmdParamsSetMapObjectAnimation;

typedef struct DistWorldEventCmd {
    enum EventCmdKind kind;
    const void *params;
} DistWorldEventCmd;

typedef struct DistWorldLoadedEvent {
    BOOL running;
    u16 cmdIndex;
    u16 cmdState;
    const DistWorldEventCmd *cmds;
    u8 dataBuf[RUNNING_EVENT_DATA_BUFFER_SIZE];
} DistWorldLoadedEvent;

typedef int (*DistWorldEventCmdHandler)(DistWorldSystem *, FieldTask *, u16 *, const void *);

typedef struct DistWorldEvent {
    s16 tileX;
    s16 tileY;
    s32 tileZ;
    u16 flagCond;
    u16 flagCondVal;
    const DistWorldEventCmd *cmds;
} DistWorldEvent;

typedef struct DistWorldMapEvents {
    u32 mapHeaderID;
    const DistWorldEvent *events;
} DistWorldMapEvents;

typedef struct DistWorldGiratinaShadowTemplate {
    s16 initialTileX;
    s16 initialTileY;
    s16 initialTileZ;
    s8 rotAnglesIndex;
    u8 soundKind;
    VecFx32 scale;
    VecFx32 posDelta;
    int movementAnimSteps;
} DistWorldGiratinaShadowTemplate;

typedef struct DistWorldGiratinaShadowPropRenderer {
    BOOL valid;
    DistWorldPropRenderer *renderer;
    OverworldAnimManager *animMan;
} DistWorldGiratinaShadowPropRenderer;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    int unk_04;
    int unk_08;
    int unk_0C[4];
    DistWorldMovingPlatformPropAnimator *unk_1C;
} UnkStruct_ov9_0224CA5C;

typedef struct {
    u32 unk_00;
    u16 unk_04;
    u16 unk_06;
    s16 unk_08;
    s16 unk_0A;
    int unk_0C;
    int unk_10[4];
    int unk_20;
    AreaDataManager *unk_24;
    DistWorldMovingPlatformPropAnimator *unk_28;
    SysTask *unk_2C;
} UnkStruct_ov9_0224CBD8;

struct DistWorldSystem {
    FieldSystem *fieldSystem;
    DistWorldPersistedData *persistedData;
    NARC *distortionWorldNARC;
    NARC *distortionWorldAttrNARC;
    NARC *unk_10;
    DistWorldCameraManager cameraMan;
    DistWorldFieldTaskContext fieldTaskCtx;
    DistWorldLoadedEvent loadedEvent;
    UnkStruct_ov9_02249E94 unk_184;
    UnkStruct_ov9_0224A228 unk_188;
    UnkStruct_ov9_0224B064 unk_1A8;
    DistWorldPropRenderBuffers propRenderBuffs;
    UnkStruct_ov9_02249B04_sub1 unk_169C;
    DistWorldGhostPropManager ghostPropMan;
    DistWorldGhostPropManager inactiveGhostPropMan;
    DistWorldMovingPlatformPropManager movingPlatformPropMan;
    DistWorldSimplePropManager simplePropMan;
    DistWorldMapObjectManager mapObjMan;
    UnkStruct_ov9_0224CA5C unk_1CB0;
    UnkStruct_ov9_0224CBD8 unk_1CD0;
    UnkStruct_ov9_0224ADC0 unk_1D00;
    UnkStruct_ov9_0224C8E8 unk_1E88;
    DistWorldGiratinaShadowPropRenderer giratinaShadowPropRenderer;
    GXRgb unk_1EB0[8];
    u16 playingGiratinaArrival;
    u16 unk_1EC2;
    SysTask *unk_1EC4;
};

typedef struct DistWorldPlatformProp {
    s8 opacity;
    s8 soundEffectState;
    u16 inView;
    fx32 animProgress;
    fx32 animDelta;
    fx32 yOffset;
    VecFx32 initialPos;
    VecFx32 currentPos;
    DistWorldGhostProp ghostProp;
    DistWorldPropRenderer *renderer;
} DistWorldPlatformProp;

typedef struct DistWorldObstacleProp {
    s8 opacity;
    s8 soundEffectState;
    u16 inView;
    u16 seqIDAppear;
    u16 seqIDDisappear;
    VecFx32 pos;
    VecFx32 dummy14;
    DistWorldGhostProp ghostProp;
    DistWorldPropRenderer *renderer;
} DistWorldObstacleProp;

typedef struct DistWorldElevatorPlatform {
    u8 dir;
    u8 vibrationAnimDone;
    u16 pathIndex;
    u16 state;
    u16 destMapHeaderID;
    u16 nextPathIndex;
    s16 finalPlayerTileX;
    s16 finalPlayerTileY;
    s16 finalPlayerTileZ;
    u16 persistedFlagToSet;
    u16 persistedFlagToClear;
    VecFx32 playerPos;
    VecFx32 posDelta;
    VecFx32 finalPosOffset;
    VecFx32 changeMapsPosOffset;
    VecFx32 currPosOffset;
    fx32 initialPlayerY;
    fx32 initialPassengerY;
    fx32 initialPlatformY;
    fx32 vibrationYDelta;
    u32 vibrationAnimStep;
    DistWorldMovingPlatformPropAnimator *animator;
    MapObject *passengerMapObj;
    SysTask *passengerAnimTask;
} DistWorldElevatorPlatform;

typedef struct CmdRunDataSetMapObjectAnimation {
    int dummy00;
} CmdRunDataSetMapObjectAnimation;

typedef struct CmdRunDataMovePlatform {
    VecFx32 currPosOffset;
    VecFx32 finalPosOffset;
    VecFx32 posDelta;
    DistWorldMovingPlatformPropAnimator *animator;
    fx32 initialPlayerY;
    fx32 initialPlatformY;
    fx32 vibrationYDelta;
    u32 vibrationAnimStep;
} CmdRunDataMovePlatform;

typedef struct CmdParamsAddMapObjWithLocalID {
    u16 mapHeaderID;
    u16 mapObjLocalID;
} CmdParamsAddMapObjWithLocalID;

typedef struct CmdParamsDeleteMapObjWithLocalID {
    u32 mapObjLocalID;
} CmdParamsDeleteMapObjWithLocalID;

typedef struct DistWorldGiratinaShadowPropUserData {
    DistWorldSystem *system;
    DistWorldPropRenderer *renderer;
    DistWorldGiratinaShadowTemplate template;
} DistWorldGiratinaShadowPropUserData;

typedef struct DistWorldGiratinaShadowProp {
    DistWorldGiratinaShadowPropUserData userData;
    u16 state;
    u16 animStopped;
    int movementAnimStep;
    BOOL animFinished;
    Simple3DRotationAngles rotAngles;
} DistWorldGiratinaShadowProp;

typedef struct DistWorldSimpleProp {
    s16 dummy00;
    u16 inView;
    VecFx32 pos;
    VecFx32 dummy10;
    DistWorldSimplePropUserData userData;
    DistWorldPropRenderer *renderer;
} DistWorldSimpleProp;

typedef struct {
    u32 unk_00;
    s16 unk_04;
    s16 unk_06;
    u32 unk_08;
} UnkStruct_ov9_0225311C;

struct UnkStruct_ov9_0224F6EC_t {
    DistWorldSystem *unk_00;
    FieldSystem *fieldSystem;
    FieldTask *unk_08;
    MapObject *unk_0C;
    u16 unk_10;
    u16 unk_12;
    u32 unk_14;
    int unk_18;
    fx32 unk_1C;
    fx32 unk_20;
};

typedef struct CmdParamsCascadeBase {
    u32 movementAxis;
    u16 movementDir;
    s16 finishingPosFixTileX;
    s16 finishingPosFixTileY;
    s16 finishingPosFixTileZ;
    s16 finalPosOffsetTileX;
    s16 finalPosOffsetTileY;
    s16 finalPosOffsetTileZ;
    s16 mapLoadPosOffsetTileX;
    s16 mapLoadPosOffsetTileY;
    s16 mapLoadPosOffsetTileZ;
    VecFx32 posDelta;
} CmdParamsCascadeBase;

typedef struct CmdRunDataCascadeBase {
    u32 targetMapLoaded : 1;
    u32 movementDir : 1;
    u32 spriteBobbing : 1;
    u32 movementAxis : 2;
    VecFx32 posDelta;
    VecFx32 currPosOffset;
    VecFx32 finalPosOffset;
    VecFx32 mapLoadPosOffset;
    VecFx32 playerPos;
    VecFx32 jumpOffset;
    fx32 *bobbingOffset;
    fx32 bobbingOffsetDelta;
    fx32 bobbingOffsetMax;
} CmdRunDataCascadeBase;

typedef struct CmdParamsCascadeDown {
    CmdParamsCascadeBase base;
} CmdParamsCascadeDown;

typedef struct CmdRunDataCascadeDown {
    s16 spriteRotationAnimStepsLeft;
    u16 moveAwayAnimStep;
    u16 cameraAngleState;
    s16 cameraAngleDelay;
    s16 firstCameraAnimStepsLeft;
    s16 secondCameraAnimStepsLeft;
    VecFx32 mountRotAngles;
    VecFx32 mountRotAnglesDelta;
    VecFx32 mountPosFixDelta;
    fx32 orbitAngle;
    fx32 orbitAngleDelta;
    fx32 bobbingFix;
    fx32 bobbingFixDelta;
    CmdRunDataCascadeBase base;
} CmdRunDataCascadeDown;

typedef struct CmdParamsCascadeUp {
    CmdParamsCascadeBase base;
} CmdParamsCascadeUp;

typedef struct CmdRunDataCascadeUp {
    s16 spriteRotationAnimStepsLeft;
    u16 moveAwayAnimStep;
    u16 cameraAngleState;
    s16 dummy06;
    VecFx32 mountRotAngles;
    VecFx32 mountRotAnglesDelta;
    VecFx32 mountPosFixDelta;
    fx32 orbitAngle;
    fx32 orbitAngleDelta;
    CmdRunDataCascadeBase base;
} CmdRunDataCascadeUp;

typedef struct CmdParamsStartScript {
    u32 scriptID;
} CmdParamsStartScript;

typedef struct CmdParamsSetDistortionWorldProgress {
    u32 progress;
} CmdParamsSetDistortionWorldProgress;

typedef struct CmdParamsSetGiratinaAnimationFlag {
    enum GiratinaShadowAnimation anim;
} CmdParamsSetGiratinaAnimationFlag;

typedef struct CmdParamsPuzzleFlag {
    u32 flagIndex;
} CmdParamsPuzzleFlag;

typedef struct CmdRunDataPlayGiratinaArrival {
    fx32 spriteDarkness;
    fx32 skyDarkness;
    VecFx32 giratinaSpritePosOffset;
    int delay;
    MapObject *giratinaMapObj;
    GXRgb giratinaSpritePalette[PALETTE_SIZE];
} CmdRunDataPlayGiratinaArrival;

typedef struct CmdRunDataShowUxieBoulderTuto {
    int hoverStep;
    int hoverStepDelta;
    int hoverRepeat;
    fx32 finalUxieY;
    fx32 descendYDelta;
    VecFx32 uxieSpritePosOffset;
    MapObject *uxieMapObj;
} CmdRunDataShowUxieBoulderTuto;

typedef struct CmdRunDataShowAzelfBoulderTuto {
    fx32 descendYDelta;
    VecFx32 azelfSpritePosOffset;
    SysTask *azelfAnimTask;
    MapObject *azelfMapObj;
} CmdRunDataShowAzelfBoulderTuto;

typedef struct CmdRunDataShowMespritBoulderTuto {
    fx32 descendYDelta;
    VecFx32 mespritSpritePosOffset;
    SysTask *mespritAnimTask;
    SysTask *playerAnimTask;
    MapObject *mespritMapObj;
} CmdRunDataShowMespritBoulderTuto;

typedef struct CmdRunDataGiratinaRoomPlatforms {
    s16 ghostPropGroup;
    s16 delay;
} CmdRunDataGiratinaRoomPlatforms;

typedef void (*FloatingPlatformJumpPointHandler)(DistWorldSystem *, const DistWorldFloatingPlatformJumpPointTemplate *);
typedef int (*ElevatorPlatformHandler)(DistWorldSystem *, DistWorldElevatorPlatform *);

static void ov9_02249B04(DistWorldSystem *param0);
static void ov9_02249B68(DistWorldSystem *param0);
static void OpenArchives(DistWorldSystem *system);
static void CloseArchives(DistWorldSystem *system);
static void ov9_02249CC4(DistWorldSystem *param0);
static void SetPersistedCameraAngles(DistWorldSystem *system, u16 angleX, u16 angleY, u16 angleZ);
static void GetPersistedCameraAngles(DistWorldSystem *system, u16 *angleX, u16 *angleY, u16 *angleZ);
static BOOL IsPersistedDataValid(DistWorldSystem *system);
static void SetPersistedHiddenGhostPropGroups(DistWorldSystem *system, u32 hiddenGhostPropGroups);
static u32 GetPersistedHiddenGhostPropGroups(DistWorldSystem *system);
static void SetPersistedMovingPlatformFlags(DistWorldSystem *system, u32 movingPlatformFlags);
static void SetPersistedMovingPlatformFlag(DistWorldSystem *system, u32 index);
static void ClearPersistedMovingPlatformFlag(DistWorldSystem *system, u32 index);
static BOOL CheckPersistedMovingPlatformFlag(DistWorldSystem *system, u32 index);
static void SetPersistedBoulderPuzzleFlag(DistWorldSystem *system, u32 index);
static void ClearPersistedBoulderPuzzleFlag(DistWorldSystem *system, u32 index);
static BOOL CheckPersistedBoulderPuzzleFlag(DistWorldSystem *system, u32 index);
static void SetPersistedCurrentFloatingPlatformIndex(DistWorldSystem *system, u32 floatingPlatformIndex);
static u32 GetPersistedCurrentFloatingPlatformIndex(DistWorldSystem *system);
static void ov9_02249E94(DistWorldSystem *param0);
static void ov9_02249EC8(DistWorldSystem *param0);
static void ov9_02249EDC(SysTask *param0, void *param1);
static void ov9_02249EF0(DistWorldSystem *param0);
static void ov9_02249F18(DistWorldSystem *param0);
static void ov9_02249F3C(SysTask *param0, void *param1);
static void ov9_02249F50(DistWorldSystem *param0);
static void ov9_02249F84(DistWorldSystem *param0);
static void ov9_02249F88(DistWorldSystem *param0);
static void ov9_02249F98(DistWorldSystem *param0);
static void CameraInit(DistWorldSystem *system);
static void CameraFree(DistWorldSystem *system);
static void CameraTransitionTask(SysTask *sysTask, void *sysTaskParam);
static BOOL DoCameraTransition(DistWorldSystem *system, const DistWorldCameraAngleTemplate *cameraAngleTemplate);
static void ov9_0224A1E4(DistWorldSystem *param0, int param1);
static void ov9_0224A228(UnkStruct_ov9_0224A228 *param0, UnkStruct_ov9_0224A294 *param1, Billboard *param2);
static void ov9_0224A294(UnkStruct_ov9_0224A228 *param0, UnkStruct_ov9_0224A294 *param1);
static void ov9_0224A2AC(UnkStruct_ov9_0224A228 *param0, UnkStruct_ov9_0224A294 *param1);
static void ov9_0224A334(DistWorldSystem *param0);
static void ov9_0224A390(DistWorldSystem *param0, MapObject *param1, int param2);
static void ov9_0224A3C4(DistWorldSystem *param0, Billboard *param1, int param2);
static void ov9_0224A408(DistWorldSystem *param0, const Billboard *param1);
static void ov9_0224A49C(DistWorldSystem *param0);
static void ov9_0224A4C8(Billboard *param0, void *param1);
static void ov9_0224A4D0(DistWorldSystem *param0, MapObject *param1, int param2, int param3);
static void FieldTaskContextNoOp1(DistWorldSystem *system);
static void FieldTaskContextNoOp2(DistWorldSystem *system);
static void *InitFieldTaskContext(DistWorldSystem *system, int ctxSize);
static void *GetFieldTaskContext(DistWorldSystem *system);
static BOOL ApplyCameraAngleForPlayerPosition(DistWorldSystem *system, int playerX, int playerY, int playerZ, enum FaceDirection playerDir);
static void ov9_0224A8C0(DistWorldSystem *param0);
static void ov9_0224A9E8(DistWorldSystem *param0);
static BOOL HandleFloatingPlatformJumpPointAt(DistWorldSystem *system, int playerX, int playerY, int playerZ, enum FaceDirection playerDir);
static void CreateJumpOnFloatingPlatformTask(DistWorldSystem *system, const DistWorldFloatingPlatformJumpPointTemplate *template);
static BOOL JumpOnFloatingPlatform(FieldTask *task);
static BOOL TickJumpOnFloatingPlatformMovementAnimation(DistWorldFloatingPlatformJumpTaskContext *ctx, MapObject *playerMapObj);
static void ov9_0224ADC0(DistWorldSystem *param0);
static void ov9_0224AED8(DistWorldSystem *param0);
static void ov9_0224AEE4(DistWorldSystem *param0, UnkStruct_ov9_0224B064 *param1, NARC *param2);
static void ov9_0224B064(UnkStruct_ov9_0224B064 *param0);
static void ov9_0224B124(SysTask *param0, void *param1);
static Sprite *ov9_0224B130(UnkStruct_ov9_0224B064 *param0, const VecFx32 *param1, u32 param2, u32 param3, u32 param4, u32 param5, int param6, int param7);
static void ov9_0224B1B4(DistWorldSystem *param0, FieldEffectManager *param1, UnkStruct_ov9_0224B064 *param2);
static void ov9_0224B3A8(DistWorldSystem *param0);
static void ov9_0224B3F4(DistWorldSystem *param0);
static void InitGhostPropManager(DistWorldSystem *system, DistWorldGhostPropManager *ghostPropMan, const DistWorldGhostPropHeader *header, const DistWorldGhostPropTemplate *ghostPropTemplateList, int mapHeaderID, u32 hiddenGhostPropGroups);
static void InitActiveGhostPropManager(DistWorldSystem *system, BOOL useDefaultVisibility);
static void InitInactiveGhostPropManager(DistWorldSystem *system);
static void InitAllGhostPropManagers(DistWorldSystem *system);
static void FinishGhostPropManager(DistWorldGhostPropManager *system);
static void FinishAllGhostPropManagers(DistWorldSystem *system);
static void HideGhostPropGroup(DistWorldSystem *system, u32 groupID);
static void ShowGhostPropGroup(DistWorldSystem *system, u32 groupID);
static BOOL IsActiveGhostPropGroupHidden(DistWorldSystem *system, u32 groupID);
static BOOL IsInactiveGhostPropGroupHidden(DistWorldSystem *system, u32 groupID);
static void PersistActiveHiddenGhostPropGroups(DistWorldSystem *system);
static void InitAllGhostPropAnimManagers(DistWorldSystem *system, DistWorldGhostPropManager *ghostPropMan, const DistWorldGhostPropTemplate *iter, int mapHeaderID);
static OverworldAnimManager *InitGhostPropAnimManager(DistWorldSystem *system, int animManIndex, int mapHeaderID, const DistWorldGhostPropTemplate *ghostPropTemplate);
static void HandleGhostPropTriggerAt(DistWorldSystem *system, int tileX, int tileY, int tileZ, enum FaceDirection direction);
static BOOL HasActiveGhostProp2(DistWorldSystem *system, u32 propKind);
static BOOL HasActiveGhostPropAnim(DistWorldSystem *system, u32 animKind);
static BOOL HasActiveGhostProp(DistWorldSystem *system, int propKind);
static void FinishActiveGhostPropManager(DistWorldSystem *system);
static void FinishInactiveGhostPropManager(DistWorldSystem *system);
static void ResetActiveGhostPropManager(DistWorldSystem *system);
static void ResetInactiveGhostPropManager(DistWorldSystem *system);
static void MoveActiveGhostPropManagerToInactive(DistWorldSystem *system);
static void MoveInactiveGhostPropManagerToActive(DistWorldSystem *system);
static u16 GetAnimManagerGhostPropKind(OverworldAnimManager *system);
static void ov9_0224BE14(DistWorldSystem *param0);
static void ov9_0224BE8C(DistWorldSystem *param0);
static void ov9_0224BEB4(DistWorldSystem *param0, u32 param1);
static void ov9_0224BF18(DistWorldSystem *param0, u32 param1);
static void ov9_0224BF8C(NARC *param0, UnkStruct_ov9_0224BFE0 *param1);
static void ov9_0224BFBC(DistWorldSystem *param0);
static void ov9_0224BFE0(UnkStruct_ov9_0224BFE0 *param0);
static void ov9_0224BFFC(DistWorldSystem *param0);
static const UnkStruct_ov9_0224C034 *ov9_0224C00C(const UnkStruct_ov9_0224BFE0 *param0, enum MapHeader mapHeaderID);
static const UnkStruct_ov9_0224C034 *ov9_0224C034(DistWorldSystem *system, enum MapHeader mapHeaderID);
static u32 FindNARCIndex(DistWorldSystem *system, enum MapHeader mapHeaderID);
static void ov9_0224C050(const UnkStruct_ov9_0224BFE0 *param0, int param1, int *param2, int *param3, int *param4);
static void ov9_0224C070(DistWorldSystem *param0, int param1, int *param2, int *param3, int *param4);
static void DistWorldFile_Load(DistWorldSystem *system, DistWorldFile *file, enum MapHeader mapHeaderID);
static void ov9_0224C0F8(DistWorldSystem *param0, enum MapHeader mapHeaderID, int param2);
static void ov9_0224C10C(DistWorldSystem *param0, enum MapHeader mapHeaderID);
static void ov9_0224C120(DistWorldSystem *param0, enum MapHeader mapHeaderID);
static void DistWorldFile_Free(DistWorldFile *file);
static void ov9_0224C164(DistWorldSystem *param0);
static void ov9_0224C174(DistWorldSystem *param0);
static void ov9_0224C184(DistWorldSystem *param0);
static void ov9_0224C194(DistWorldSystem *param0);
static void ov9_0224C1E4(DistWorldSystem *param0);
static int DistWorldFile_GetFloatingPlatformSectionSize(DistWorldFile *file);
static int DistWorldFile_GetFloatingPlatformCount(DistWorldFile *file);
static DistWorldFloatingPlatformTemplate *DistWorldFile_GetFloatingPlatformSectionTemplates(DistWorldFile *file);
static int DistWorldFile_GetFloatingPlatformJumpPointSectionSize(DistWorldFile *file);
static int DistWorldFile_GetFloatingPlatformJumpPointCount(DistWorldFile *file);
static DistWorldFloatingPlatformJumpPointTemplate *DistWorldFile_GetFloatingPlatformJumpPointTemplates(DistWorldFile *file);
static int DistWorldFile_GetCameraAngleSectionSize(DistWorldFile *file);
static int DistWorldFile_GetCameraAngleCount(DistWorldFile *file);
static DistWorldCameraAngleTemplate *DistWorldFile_GetCameraAngleTemplates(DistWorldFile *file);
static int GetActiveGhostPropFileSectionSize(DistWorldSystem *system);
static int GetInactiveGhostPropFileSectionSize(DistWorldSystem *system);
static const DistWorldGhostPropHeader *DistWorldFile_GetGhostPropHeader(DistWorldFile *system);
static const DistWorldGhostPropTemplate *DistWorldFile_GetGhostPropTemplates(DistWorldFile *system);
static const DistWorldGhostPropTrigger *DistWorldFile_GetGhostPropTriggers(DistWorldFile *system);
static void InitFloatingPlatformManager(DistWorldSystem *system);
static void ResetFloatingPlatformManager(DistWorldSystem *system);
static void FindAndPrepareNewCurrentFloatingPlatform(DistWorldSystem *system, int tileX, int tileY, int tileZ, s16 floatingPlatformKind);
static void PrepareNewCurrentFloatingPlatform(DistWorldSystem *system, u32 floatingPlatformIndex);
static void FreeFloatingPlatformManagerTerrainAttrs(DistWorldSystem *system);
static u32 GetCurrentFloatingPlatformKind2(DistWorldSystem *system);
static u32 GetCurrentFloatingPlatformKind(DistWorldSystem *system);
static u32 GetCurrentFloatingPlatformKindSafely(DistWorldSystem *system, int tileX, int tileY, int tileZ);
static void LoadFloatingPlatformTerrainAttributes(DistWorldSystem *system, u32 distortionWorldAttrID);
static u16 GetCurrentFloatingPlatformTileAttributesRelative(DistWorldSystem *system, int tileRelativeVerticalPos, int tileRelativeHorizontalPos);
static u16 GetCurrentFloatingPlatformTileAttributes(DistWorldSystem *system, int tileX, int tileY, int tileZ);
static void InitFloatingPlatformJumpPoint(DistWorldSystem *system);
static void ResetFloatingPlatformJumpPoint(DistWorldSystem *system);
static const DistWorldFloatingPlatformJumpPointTemplate *FindFloatingPlatformJumpPointAt(DistWorldSystem *system, int playerX, int playerY, int playerZ, enum FaceDirection playerDir);
static void InitCameraAngleTemplates(DistWorldSystem *system);
static void ResetCameraAngleTemplates(DistWorldSystem *system);
static const DistWorldCameraAngleTemplate *FindCameraAngleForPlayerPosition(DistWorldSystem *system, int playerX, int playerY, int playerZ, enum FaceDirection playerDir);
static void DistWorldGhostPropData_InitFromFile(DistWorldFile *file, DistWorldGhostPropData *data);
static void InitActiveGhostPropData(DistWorldSystem *system);
static void InitInactiveGhostPropData(DistWorldSystem *system);
static void InitAllGhostPropData(DistWorldSystem *system);
static void ResetActiveGhostPropData(DistWorldSystem *system);
static void ResetAllGhostPropData(DistWorldSystem *system);
static void ResetInactiveGhostPropData(DistWorldSystem *system);
static void MoveActiveGhostPropDataToInactive(DistWorldSystem *system);
static void MoveInactiveGhostPropDataToActive(DistWorldSystem *system);
static const DistWorldGhostPropHeader *GetActiveGhostPropHeader(DistWorldSystem *system);
static const DistWorldGhostPropHeader *GetInactiveGhostPropHeader(DistWorldSystem *system);
static const DistWorldGhostPropTemplate *GetActiveGhostPropTemplates(DistWorldSystem *system);
static const DistWorldGhostPropTemplate *GetInactiveGhostPropTemplates(DistWorldSystem *system);
static const DistWorldGhostPropTrigger *GetActiveGhostPropTriggers(DistWorldSystem *system);
static void ov9_0224C8E8(DistWorldSystem *param0);
static void ov9_0224C9E8(DistWorldSystem *param0);
static void ov9_0224CA98(DistWorldSystem *param0);
static void ov9_0224CB30(DistWorldSystem *param0);
static void ov9_0224CBD8(DistWorldSystem *param0);
static void ov9_0224CBF8(DistWorldSystem *param0);
static void ov9_0224CC08(SysTask *param0, void *param1);
static void ov9_0224CC4C(DistWorldSystem *param0);
static void ov9_0224CC50(DistWorldSystem *param0, DistWorldMovingPlatformPropAnimator *param1, u32 param2);
static BOOL ov9_0224CC7C(DistWorldSystem *param0);
static BOOL HandleElevatorPlatformPropAnimatorAt(DistWorldSystem *system, int playerX, int playerY, int playerZ);
static void CreateElevatorPlatformHandlerTask(DistWorldSystem *system, DistWorldMovingPlatformPropAnimator *animator);
static BOOL CallElevatorPlatformHandler(FieldTask *task);
static const DistWorldMapConnections *GetConnectionsForMap(int mapHeaderID);
static void InitPropRenderBuffers(DistWorldSystem *system);
static void LoadProp3DModel(DistWorldSystem *system, u32 propKind);
static void FreeProp3DModel(DistWorldSystem *system, u32 propKind);
static Simple3DModel *GetProp3DModel(DistWorldSystem *system, u32 propKind);
static void LoadPropAnimSet(DistWorldSystem *system, u32 animKind);
static void FreePropAnimSet(DistWorldSystem *system, u32 animKind);
static void FreePropRenderBuffers(DistWorldSystem *system);
static void LoadRenderBuffersForPropEx(DistWorldSystem *system, u32 propKind, u32 animKind, Simple3DRenderObj *renderObj, Simple3DAnimation *animation);
static void LoadRenderBuffersForProp(DistWorldSystem *system, int propKind, Simple3DRenderObj *renderObj, Simple3DAnimation *animation);
static void SetPropOpacityAndPolygonID(DistWorldSystem *system, int propKind, int opacity, int polygonID);
static void SetPropOpacity(DistWorldSystem *system, int propKind, int opacity);
static void SetPropPolygonID(DistWorldSystem *system, int propKind, int polygonID);
static BOOL DistWorldPropAnimInfo_IsAnimKindValid(int propKind);
static BOOL DistWorldPropAnimInfo_IsStatic(int propKind);
static void FreeUnusedPropRenderers(DistWorldSystem *system);
static DistWorldPropRenderer *DistWorldPropRenderer_Init(DistWorldSystem *system, u32 propKind, BOOL *alreadyInit);
static void DistWorldPropRenderer_Invalidate(DistWorldSystem *system, DistWorldPropRenderer *propRenderer);
static void DistWorldPropRenderer_InvalidateAnimated(DistWorldSystem *system, DistWorldPropRenderer *propRenderer);
static void InvalidateAllPropRenderersOfKind(DistWorldSystem *system, int propKind);
static BOOL IsPropInView(DistWorldSystem *system, int propKind, VecFx32 *pos);
static void ResetMovingPlatformManager(DistWorldSystem *system);
static void FinishAllMovingPlatformPropAnimators(DistWorldSystem *system);
static void FinishMovingPlatformPropAnimatorForMap(DistWorldSystem *system, u32 mapHeaderID);
static void InitMovingPlatformPropsForCurrentAndNextMaps(DistWorldSystem *system);
static void InitMovingPlatformPropsForMap(DistWorldSystem *system, u32 mapHeaderID);
static void InitMovingPlatformPropsForMapEx(DistWorldSystem *system, const DistWorldMovingPlatformMapTemplates *mapTemplates, u32 mapHeaderID);
static void InitSpecificMovingPlatformPropForMap(DistWorldSystem *system, u32 mapHeaderID, int index);
static DistWorldMovingPlatformPropAnimator *FindUnusedMovingPlatformPropAnimator(DistWorldSystem *system);
static DistWorldMovingPlatformPropAnimator *GetAnimatorForMovingPlatform(DistWorldSystem *system, u32 index, u32 mapHeaderID);
static const DistWorldMovingPlatformMapTemplates *GetMovingPlatformsTemplatesForMap(u32 mapHeaderID);
static const DistWorldMovingPlatformTemplate *GetMovingPlatformTemplateForMap(u32 mapHeaderID, u32 index);
static const DistWorldElevatorPlatformPath *GetMovingPlatformElevatorPath(u32 index);
static MapObject *AddMovingPlatformMapObject(DistWorldSystem *system, int tileX, int tileY, int tileZ, int index, int elevatorPathIndex, u32 mapHeaderID);
static void DistWorldMovingPlatformPropAnimator_InitFromMapObject(DistWorldSystem *system, DistWorldMovingPlatformPropAnimator *animator, MapObject *mapObj);
static OverworldAnimManager *InitAnimManagerForMovingPlatform(DistWorldSystem *system, DistWorldMovingPlatformPropAnimator *animator);
static void DistWorldMovingPlatformPropAnimator_InitFromTemplate(DistWorldSystem *system, DistWorldMovingPlatformPropAnimator *animator, const DistWorldMovingPlatformTemplate *movingPlatformTemplate, u32 mapHeaderID);
static void DistWorldMovingPlatformPropAnimator_Finish(DistWorldSystem *system, DistWorldMovingPlatformPropAnimator *animator);
static void DistWorldMovingPlatformPropAnimator_FinishAndDeleteMapObject(DistWorldSystem *system, DistWorldMovingPlatformPropAnimator *animator);
static void DistWorldMovingPlatformPropAnimator_ChangeMaps(DistWorldSystem *system, DistWorldMovingPlatformPropAnimator *animator, u32 mapHeaderID);
static void ov9_0224E0DC(DistWorldMovingPlatformPropAnimator *param0, BOOL param1);
static BOOL HasActiveMovingPlatformProp2(DistWorldSystem *system, u32 propKind);
static BOOL HasActiveMovingPlatformPropAnim(DistWorldSystem *system, u32 animKind);
static BOOL HasActiveMovingPlatformProp(DistWorldSystem *system, int propKind);
static DistWorldMovingPlatformPropAnimator *FindMovingPlatformPropAnimatorAt(DistWorldSystem *system, int tileX, int tileY, int tileZ, u32 mapHeaderID);
static VecFx32 *GetMovingPlatformPropPos(OverworldAnimManager *animMan);
static void UnloadEvent(DistWorldSystem *system);
static void Dummy0224E34C(DistWorldSystem *system);
static void LoadEvent(DistWorldSystem *system, const DistWorldEventCmd *cmds);
static void *ResetLoadedEventDataBuffer(DistWorldSystem *system, u32 size);
static void *GetLoadedEventDataBuffer(DistWorldSystem *system);
static BOOL CallLoadedEventHandler(DistWorldSystem *system, FieldTask *task);
static BOOL HandleEventAt(DistWorldSystem *system, int playerX, int playerY, int playerZ);
static void RunEventCommands(DistWorldSystem *system, const DistWorldEventCmd *cmds);
static void RunEvent(DistWorldSystem *system, const DistWorldEvent *event);
static BOOL FieldTask_CallLoadedEventHandler(FieldTask *task);
static void LoadGiratinaShadowPropRenderer(DistWorldSystem *system);
static void FreeGiratinaShadowPropRenderer(DistWorldSystem *system);
static void LoadGiratinaShadowPropAnimation(DistWorldSystem *system, const DistWorldGiratinaShadowTemplate *giratinaTemplate);
static BOOL IsGiratinaShadowAnimationFinished(DistWorldSystem *system);
static void Dummy0224E984(DistWorldSystem *system);
static void FinishGiratinaShadowPropRenderer(DistWorldSystem *system);
static BOOL IsGiratinaShadowPropRendererValid2(DistWorldSystem *system, u32 propKind);
static BOOL IsGiratinaShadowPropRendererAnimValid(DistWorldSystem *system, u32 animKind);
static BOOL IsGiratinaShadowPropRendererValid(DistWorldSystem *system, int propKind);
static void InitSimplePropsForCurrentAndNextMaps(DistWorldSystem *system);
static void FinishAllSimplePropAnimators(DistWorldSystem *system);
static void DistWorldMapSimplePropAnimator_Finish(DistWorldSimplePropAnimator *animator);
static void InitSimplePropsFromTemplates(DistWorldSystem *system, const DistWorldSimplePropMapTemplates *mapTemplates);
static void InitSimplePropsForMap(DistWorldSystem *system, u32 mapHeaderID);
static DistWorldSimplePropAnimator *FindUnusedSimplePropAnimator(DistWorldSystem *system);
static void FinishSimplePropAnimatorForMap(DistWorldSystem *system, u32 mapHeaderID);
static BOOL HasActiveSimpleProp(DistWorldSystem *system, int propKind);
static BOOL HasActiveSimpleProp2(DistWorldSystem *system, u32 propKind);
static BOOL HasActiveSimplePropAnim(DistWorldSystem *system, u32 animKind);
static void AddMapObjectsForCurrentAndNextMap(DistWorldSystem *system);
static void Dummy0224EE6C(DistWorldSystem *system);
static void DeleteMapObject(DistWorldSystem *system, MapObject *mapObj);
static MapObject **FindFreeMapObjectSlot(DistWorldSystem *system);
static BOOL CheckFlagConditionForObjectEvent(DistWorldSystem *system, const DistWorldObjectEvent *objEvent, BOOL isManual);
static BOOL AddMapObjectFromEvent(DistWorldSystem *system, MapObject **mapObj, const DistWorldObjectEvent *objEvent, u32 mapHeaderID, u16 isManual);
static BOOL AddMapObjectsFromIter(DistWorldSystem *system, const DistWorldObjectEvent **objEventsIter, u32 mapHeaderID);
static void AddMapObjectsForMap(DistWorldSystem *system, u32 mapHeaderID);
static void DeleteMapObjectsForMap(DistWorldSystem *system, u32 mapHeaderID);
static MapObject *AddMapObjectWithLocalID(DistWorldSystem *system, u32 mapHeaderID, u16 mapObjLocalID);
static BOOL IsMapObjectManaged(DistWorldSystem *system, MapObject *mapObj);
static void ov9_0224F724(DistWorldSystem *param0);
static void ov9_0224F760(DistWorldSystem *param0);
static void ov9_0224F764(DistWorldSystem *param0);
static void ov9_0224F804(DistWorldSystem *param0);
static void SetSkyDarknessCalculationDisabled(DistWorldSystem *system, BOOL disabled);
static void SetSkyDarknessLevel(DistWorldSystem *system, s16 level);
static void CalculateTintedColor(GXRgb baseRawColor, GXRgb tintRawColor, u16 tintLevel, GXRgb *outColor);
static BOOL DistWorldBounds_AreCoordinatesInBounds(int tileX, int tileY, int tileZ, const DistWorldBounds *bounds);
static int CalculateCameraAngleDelta(u16 currentAngleComponent, u16 targetAngleComponent);
static void ApplyRotationToTarget(s16 *target, s16 angle);
static void ApplyRotationToTargetFx32(fx32 *target, fx32 angle);
static void GetPlayerPos(DistWorldSystem *system, int *playerX, int *playerY, int *playerZ);
static u32 DistWorldSystem_GetMapHeaderID(DistWorldSystem *system);
static enum AvatarDistortionState GetAvatarDistortionStateForFloatingPlatformKind(u32 platformKind);
static BOOL CheckFlagCondition(DistWorldSystem *system, enum FlagCondition flagCond, u32 val);
static void PlaySoundIfNotActive(u16 seqID);
static void ov9_022511F4(MapObject *param0, const VecFx32 *param1);

static const OverworldAnimManagerFuncs Unk_ov9_02251508;
static const OverworldAnimManagerFuncs sMovingPlatformPropAnimFuncs;
static const OverworldAnimManagerFuncs sGiratinaShadowPropAnimFuncs;
static const OverworldAnimManagerFuncs sSimplePropAnimFuncs;
static const fx32 Unk_ov9_02252CF8[16];
static const FloatingPlatformJumpPointHandler sFloatingPlatformJumpPointHandlers[1];
static const int Unk_ov9_02251E58[7];
static const int Unk_ov9_02251E90[7];
static const int Unk_ov9_02251EAC[7];
static const int Unk_ov9_02251210[1];
static const UnkStruct_ov9_02251EC8 Unk_ov9_02251EC8[7];
static const UnkStruct_ov9_02253680 Unk_ov9_02253680[9];
static const fx32 Unk_ov9_02252C08[3][4];
static const u32 sProp3DModelNARCIndexByKind[PROP_KIND_COUNT];
static const u32 sPropAnimSetNARCIndexByKind[PROP_ANIM_KIND_COUNT];
static const DistWorldPropAnimInfo sPropAnimInfoByKind[PROP_KIND_COUNT];
static const VecFx32 sPropInitialPosOffsetByKind[PROP_KIND_COUNT];
static const VecFx32 sPropScaleByKind[PROP_KIND_COUNT];
static const OverworldAnimManagerFuncs *const sPropAnimFuncsByKind[PROP_KIND_COUNT];
static const DistWorldMapConnections sDistWorldMapConnectionList[DISTORTION_WORLD_MAP_COUNT];
static const DistWorldMovingPlatformMapTemplates sMovingPlatformsMapTemplates[MOVING_PLATFORM_MAP_COUNT];
static const DistWorldElevatorPlatformPath sElevatorPlatformPaths[ELEVATOR_PLATFORM_PATH_COUNT];
static const DistWorldEventCmdHandler *sEventCmdHandlers[EVENT_CMD_KIND_COUNT];
static const DistWorldMapEvents sMapEvents[];
static const DistWorldEventCmd sMapEventB4F_Waterfall[];
static const DistWorldEventCmd sMapEventB5F_Waterfall[];
static const DistWorldSimplePropMapTemplates sSimplePropsMapTemplates[];
static const DistWorldMapObjectEvents sMapObjectEvents[];

void DistWorld_DynamicMapFeaturesInit(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    DistWorldPersistedData *data = PersistedMapFeatures_GetBuffer(persistedMapFeatures, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD);
    DistWorldSystem *dwSystem = Heap_Alloc(HEAP_ID_FIELD1, sizeof(DistWorldSystem));

    memset(dwSystem, 0, sizeof(DistWorldSystem));

    dwSystem->fieldSystem = fieldSystem;
    dwSystem->persistedData = data;

    fieldSystem->unk_04->dynamicMapFeaturesData = dwSystem;

    OpenArchives(dwSystem);

    if (!data->valid) {
        ov9_02249CC4(dwSystem);
    }

    ov9_0224BE14(dwSystem);
    ov9_02249F50(dwSystem);
    ov9_02249F88(dwSystem);
    ov9_0224A1E4(dwSystem, (4 + 2));
    InitPropRenderBuffers(dwSystem);
    ov9_0224ADC0(dwSystem);
    ov9_0224B3A8(dwSystem);
    ov9_0224AEE4(dwSystem, &dwSystem->unk_1A8, dwSystem->unk_10);
    ov9_0224F724(dwSystem);
    CameraInit(dwSystem);
    FieldTaskContextNoOp1(dwSystem);
    ov9_0224A8C0(dwSystem);
    AddMapObjectsForCurrentAndNextMap(dwSystem);
    InitSimplePropsForCurrentAndNextMaps(dwSystem);
    InitAllGhostPropManagers(dwSystem);
    ResetMovingPlatformManager(dwSystem);
    UnloadEvent(dwSystem);
    ov9_02249E94(dwSystem);
    ov9_0224C8E8(dwSystem);
    ov9_0224CBD8(dwSystem);
    InitMovingPlatformPropsForCurrentAndNextMaps(dwSystem);
    ov9_0224B1B4(dwSystem, dwSystem->fieldSystem->fieldEffMan, &dwSystem->unk_1A8);
    Dummy0224E984(dwSystem);
    ov5_021F34B8(dwSystem->fieldSystem->fieldEffMan);
    ov9_02249EF0(dwSystem);

    data->valid = TRUE;
}

void DistWorld_DynamicMapFeaturesFree(FieldSystem *fieldSystem)
{
    DistWorldSystem *v0 = fieldSystem->unk_04->dynamicMapFeaturesData;

    ov9_02249F18(v0);
    FinishGiratinaShadowPropRenderer(v0);
    ov9_0224CBF8(v0);
    ov9_0224C9E8(v0);
    ov9_02249EC8(v0);
    Dummy0224E34C(v0);
    FinishAllMovingPlatformPropAnimators(v0);
    FinishAllGhostPropManagers(v0);
    FinishAllSimplePropAnimators(v0);
    Dummy0224EE6C(v0);
    ov9_0224A9E8(v0);
    FieldTaskContextNoOp2(v0);
    CameraFree(v0);
    ov9_0224F760(v0);
    ov9_0224B064(&v0->unk_1A8);
    ov9_0224B3F4(v0);
    ov9_0224AED8(v0);
    FreePropRenderBuffers(v0);
    ov9_0224A334(v0);
    ov9_02249F98(v0);
    ov9_02249F84(v0);
    ov9_0224BE8C(v0);
    CloseArchives(v0);

    Heap_Free(v0);

    fieldSystem->unk_04->dynamicMapFeaturesData = NULL;
}

static void ov9_02249B04(DistWorldSystem *param0)
{
    u32 v0 = DistWorldSystem_GetMapHeaderID(param0);
    const DistWorldMapConnections *v1 = GetConnectionsForMap(v0);

    FinishActiveGhostPropManager(param0);
    SetPersistedHiddenGhostPropGroups(param0, 0);
    FinishSimplePropAnimatorForMap(param0, v1->prevID);
    FinishMovingPlatformPropAnimatorForMap(param0, v1->prevID);
    DeleteMapObjectsForMap(param0, v1->prevID);
    ov9_0224BF18(param0, v1->nextID);
    FreeUnusedPropRenderers(param0);
    InitInactiveGhostPropManager(param0);
    InitSimplePropsForMap(param0, v1->nextID);
    InitMovingPlatformPropsForMap(param0, v1->nextID);
    AddMapObjectsForMap(param0, v1->nextID);
}

static void ov9_02249B68(DistWorldSystem *param0)
{
    u32 v0 = DistWorldSystem_GetMapHeaderID(param0);
    const DistWorldMapConnections *v1 = GetConnectionsForMap(v0);

    v1 = GetConnectionsForMap(v1->nextID);

    FinishInactiveGhostPropManager(param0);
    SetPersistedHiddenGhostPropGroups(param0, 0);
    FinishSimplePropAnimatorForMap(param0, v1->nextID);
    FinishMovingPlatformPropAnimatorForMap(param0, v1->nextID);
    DeleteMapObjectsForMap(param0, v1->nextID);
    ov9_0224BEB4(param0, v0);
    FreeUnusedPropRenderers(param0);
    InitActiveGhostPropManager(param0, TRUE);
    InitSimplePropsForMap(param0, v0);
    InitMovingPlatformPropsForMap(param0, v0);
    AddMapObjectsForMap(param0, v0);
}

static void ov9_02249BD4(DistWorldSystem *param0, u32 param1)
{
    FinishActiveGhostPropManager(param0);
    SetPersistedHiddenGhostPropGroups(param0, 0);
    FinishSimplePropAnimatorForMap(param0, param1);
    FinishMovingPlatformPropAnimatorForMap(param0, param1);
    DeleteMapObjectsForMap(param0, param1);
    FreeUnusedPropRenderers(param0);
}

static void ov9_02249C08(DistWorldSystem *param0, u32 param1)
{
    InitInactiveGhostPropManager(param0);
    InitSimplePropsForMap(param0, param1);
    InitMovingPlatformPropsForMap(param0, param1);
    AddMapObjectsForMap(param0, param1);
}

static void ov9_02249C2C(DistWorldSystem *param0, u32 param1)
{
    FinishInactiveGhostPropManager(param0);
    SetPersistedHiddenGhostPropGroups(param0, 0);
    FinishSimplePropAnimatorForMap(param0, param1);
    FinishMovingPlatformPropAnimatorForMap(param0, param1);
    DeleteMapObjectsForMap(param0, param1);
    FreeUnusedPropRenderers(param0);
}

static void ov9_02249C60(DistWorldSystem *param0, u32 param1)
{
    InitActiveGhostPropManager(param0, TRUE);
    InitSimplePropsForMap(param0, param1);
    InitMovingPlatformPropsForMap(param0, param1);
    AddMapObjectsForMap(param0, param1);
}

static void OpenArchives(DistWorldSystem *system)
{
    system->distortionWorldNARC = NARC_ctor(NARC_INDEX_FIELDDATA__TORNWORLD__TW_ARC, HEAP_ID_FIELD1);
    system->distortionWorldAttrNARC = NARC_ctor(NARC_INDEX_FIELDDATA__TORNWORLD__TW_ARC_ATTR, HEAP_ID_FIELD1);
    system->unk_10 = NARC_ctor(NARC_INDEX_DATA__TW_ARC_ETC, HEAP_ID_FIELD1);
}

static void CloseArchives(DistWorldSystem *system)
{
    NARC_dtor(system->distortionWorldNARC);
    NARC_dtor(system->distortionWorldAttrNARC);
    NARC_dtor(system->unk_10);
}

static void ov9_02249CC4(DistWorldSystem *param0)
{
    DistWorldPersistedData *v0 = param0->persistedData;
    VarsFlags *v1 = SaveData_GetVarsFlags(param0->fieldSystem->saveData);

    v0->boulderPuzzleFlags = 0;

    {
        u32 v2 = 1 << DIST_WORLD_PLATFORM_FLAG_B4F_1
            | 1 << DIST_WORLD_PLATFORM_FLAG_B5F_1;

        if (DistWorldSystem_GetMapHeaderID(param0) == 581) {
            v2 = 1 << DIST_WORLD_PLATFORM_FLAG_B1F_1
                | 1 << DIST_WORLD_PLATFORM_FLAG_B2F_1
                | 1 << DIST_WORLD_PLATFORM_FLAG_B3F_1
                | 1 << DIST_WORLD_PLATFORM_FLAG_B4F_1
                | 1 << DIST_WORLD_PLATFORM_FLAG_B4F_2
                | 1 << DIST_WORLD_PLATFORM_FLAG_B5F_1
                | 1 << DIST_WORLD_PLATFORM_FLAG_B6F_1
                | 1 << DIST_WORLD_PLATFORM_FLAG_B7F_1;
        }

        SetPersistedMovingPlatformFlags(param0, v2);
    }

    if (!SystemFlag_HandleDistortionWorldPuzzleFinished(v1, HANDLE_FLAG_CHECK)) {
        v0->boulderPuzzleFlags |= 1 << DIST_WORLD_PUZZLE_FLAG_MESPRIT_BOULDER_IN_B5F
            | 1 << DIST_WORLD_PUZZLE_FLAG_AZELF_BOULDER_IN_B5F
            | 1 << DIST_WORLD_PUZZLE_FLAG_UXIE_BOULDER_IN_B5F;
    } else {
        v0->boulderPuzzleFlags |= 1 << DIST_WORLD_PUZZLE_FLAG_UXIE_TUTO_SEEN
            | 1 << DIST_WORLD_PUZZLE_FLAG_AZELF_TUTO_SEEN
            | 1 << DIST_WORLD_PUZZLE_FLAG_MESPRIT_TUTO_SEEN
            | 1 << DIST_WORLD_PUZZLE_FLAG_MESPRIT_BOULDER_IN_B6F_PIT
            | 1 << DIST_WORLD_PUZZLE_FLAG_AZELF_BOULDER_IN_B6F_PIT
            | 1 << DIST_WORLD_PUZZLE_FLAG_UXIE_BOULDER_IN_B6F_PIT;
    }
}

static void SetPersistedCameraAngles(DistWorldSystem *system, u16 angleX, u16 angleY, u16 angleZ)
{
    DistWorldPersistedData *persistedData = system->persistedData;

    persistedData->cameraAngleX = angleX;
    persistedData->cameraAngleY = angleY;
    persistedData->cameraAngleZ = angleZ;
}

static void GetPersistedCameraAngles(DistWorldSystem *system, u16 *angleX, u16 *angleY, u16 *angleZ)
{
    DistWorldPersistedData *persistedData = system->persistedData;

    *angleX = persistedData->cameraAngleX;
    *angleY = persistedData->cameraAngleY;
    *angleZ = persistedData->cameraAngleZ;
}

static BOOL IsPersistedDataValid(DistWorldSystem *system)
{
    DistWorldPersistedData *persistedData = system->persistedData;
    return persistedData->valid;
}

static void SetPersistedHiddenGhostPropGroups(DistWorldSystem *system, u32 hiddenGhostPropGroups)
{
    system->persistedData->hiddenGhostPropGroups = hiddenGhostPropGroups;
}

static u32 GetPersistedHiddenGhostPropGroups(DistWorldSystem *system)
{
    return system->persistedData->hiddenGhostPropGroups;
}

static void SetPersistedMovingPlatformFlags(DistWorldSystem *system, u32 movingPlatformFlags)
{
    system->persistedData->movingPlatformFlags = movingPlatformFlags;
}

static void SetPersistedMovingPlatformFlag(DistWorldSystem *system, u32 index)
{
    DistWorldPersistedData *persistedData = system->persistedData;

    GF_ASSERT(index < DIST_WORLD_PLATFORM_FLAG_COUNT);
    persistedData->movingPlatformFlags |= (1 << index);
}

static void ClearPersistedMovingPlatformFlag(DistWorldSystem *system, u32 index)
{
    DistWorldPersistedData *persistedData = system->persistedData;

    GF_ASSERT(index < DIST_WORLD_PLATFORM_FLAG_COUNT);
    persistedData->movingPlatformFlags &= ~(1 << index);
}

static BOOL CheckPersistedMovingPlatformFlag(DistWorldSystem *system, u32 index)
{
    DistWorldPersistedData *persistedData = system->persistedData;

    GF_ASSERT(index < DIST_WORLD_PLATFORM_FLAG_COUNT);
    return persistedData->movingPlatformFlags & (1 << index) ? TRUE : FALSE;
}

static void SetPersistedBoulderPuzzleFlag(DistWorldSystem *system, u32 index)
{
    DistWorldPersistedData *persistedData = system->persistedData;

    GF_ASSERT(index < DIST_WORLD_PUZZLE_FLAG_COUNT);
    persistedData->boulderPuzzleFlags |= (1 << index);
}

static void ClearPersistedBoulderPuzzleFlag(DistWorldSystem *system, u32 index)
{
    DistWorldPersistedData *persistedData = system->persistedData;

    GF_ASSERT(index < DIST_WORLD_PUZZLE_FLAG_COUNT);
    persistedData->boulderPuzzleFlags &= ~(1 << index);
}

static BOOL CheckPersistedBoulderPuzzleFlag(DistWorldSystem *system, u32 index)
{
    DistWorldPersistedData *persistedData = system->persistedData;

    GF_ASSERT(index < DIST_WORLD_PUZZLE_FLAG_COUNT);
    return persistedData->boulderPuzzleFlags & (1 << index) ? TRUE : FALSE;
}

static void SetPersistedCurrentFloatingPlatformIndex(DistWorldSystem *system, u32 floatingPlatformIndex)
{
    DistWorldPersistedData *persistedData = system->persistedData;

    GF_ASSERT(floatingPlatformIndex < DIST_WORLD_PERSISTED_DATA_CURRENT_FLOATING_PLATFORM_MAX);
    persistedData->currentFloatingPlatformIndex = floatingPlatformIndex;
}

static u32 GetPersistedCurrentFloatingPlatformIndex(DistWorldSystem *system)
{
    return system->persistedData->currentFloatingPlatformIndex;
}

BOOL DistWorld_DynamicMapFeaturesCheckCollision(FieldSystem *fieldSystem, const int tileX, const int tileZ, const fx32 height, BOOL *isColliding)
{
    DistWorldSystem *dwSystem = fieldSystem->unk_04->dynamicMapFeaturesData;
    enum MapHeader mapHeaderID = DistWorldSystem_GetMapHeaderID(dwSystem);

    if (mapHeaderID == MAP_HEADER_DISTORTION_WORLD_GIRATINA_ROOM) {
        if (tileX == GIRATINA_ROOM_TELEPORT_TILE_X && tileZ == GIRATINA_ROOM_TELEPORT_TILE_Z + 1) {
            *isColliding = TRUE;
            return TRUE;
        }
    } else if (mapHeaderID == MAP_HEADER_DISTORTION_WORLD_B7F) {
        if (tileX == B7F_TELEPORT_TILE_X && tileZ == B7F_TELEPORT_TILE_Z - 1) {
            *isColliding = TRUE;
            return TRUE;
        }
    }

    *isColliding = FALSE;
    return FALSE;
}

static void ov9_02249E94(DistWorldSystem *param0)
{
    int v0;
    UnkStruct_ov9_02249E94 *v1 = &param0->unk_184;

    memset(v1, 0, sizeof(UnkStruct_ov9_02249E94));

    v0 = MapObjectMan_GetTaskBasePriority(param0->fieldSystem->mapObjMan);
    v0 += 2;

    v1->unk_00 = SysTask_Start(ov9_02249EDC, param0, v0);
}

static void ov9_02249EC8(DistWorldSystem *param0)
{
    UnkStruct_ov9_02249E94 *v0 = &param0->unk_184;

    if (v0->unk_00 != NULL) {
        SysTask_Done(v0->unk_00);
    }
}

static void ov9_02249EDC(SysTask *param0, void *param1)
{
    DistWorldSystem *v0 = param1;
    UnkStruct_ov9_02249E94 *v1 = &v0->unk_184;

    {
        ov9_0224A49C(v0);
    }

    {
        ov9_0224F764(v0);
    }
}

static void ov9_02249EF0(DistWorldSystem *param0)
{
    GF_ASSERT(param0->unk_1EC4 == NULL);
    param0->unk_1EC4 = SysTask_ExecuteOnVBlank(ov9_02249F3C, param0, 0x80);
}

static void ov9_02249F18(DistWorldSystem *param0)
{
    GF_ASSERT(param0->unk_1EC4 != NULL);
    SysTask_Done(param0->unk_1EC4);
    param0->unk_1EC4 = NULL;
}

static void ov9_02249F3C(SysTask *param0, void *param1)
{
    DistWorldSystem *v0 = param1;

    ov9_0224CC4C(v0);
    ov9_0224F804(v0);
}

static void ov9_02249F50(DistWorldSystem *param0)
{
    {
        int v0;

        for (v0 = 0; v0 < 8; v0++) {
            param0->unk_1EB0[v0] = GX_RGB(4, 4, 4);
        }

        param0->unk_1EB0[1] = GX_RGB(4, 3, 7);
        G3X_SetEdgeColorTable(param0->unk_1EB0);
    }
}

static void ov9_02249F84(DistWorldSystem *param0)
{
    return;
}

static void ov9_02249F88(DistWorldSystem *param0)
{
    MapObjectMan_SetEndMovement(param0->fieldSystem->mapObjMan, 0);
}

static void ov9_02249F98(DistWorldSystem *param0)
{
    return;
}

void DistWorld_UpdateCameraAngle(FieldSystem *fieldSystem)
{
    CameraAngle cameraAngle;
    DistWorldSystem *dwSystem = fieldSystem->unk_04->dynamicMapFeaturesData;
    DistWorldCameraManager *cameraMan = &dwSystem->cameraMan;

    cameraAngle.x = cameraMan->baseAngle.x + cameraMan->currentAngle.x;
    cameraAngle.y = cameraMan->baseAngle.y + cameraMan->currentAngle.y;
    cameraAngle.z = cameraMan->baseAngle.z + cameraMan->currentAngle.z;

    Camera_SetAngleAroundTarget(&cameraAngle, cameraMan->camera);
}

void DistWorld_ResetPersistedCameraAngles(FieldSystem *fieldSystem)
{
    GF_ASSERT(fieldSystem != NULL);

    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    DistWorldPersistedData *data = PersistedMapFeatures_GetBuffer(persistedMapFeatures, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD);

    data->cameraAngleX = 0;
    data->cameraAngleY = 0;
    data->cameraAngleZ = 0;
}

static void CameraInit(DistWorldSystem *system)
{
    DistWorldCameraManager *cameraMan = &system->cameraMan;

    system->fieldSystem->unk_20 = 1;
    cameraMan->camera = system->fieldSystem->camera;

    CameraConfiguration cameraConfig = {
        .distance = DISTORTION_WORLD_CAMERA_BASE_DISTANCE,
        .cameraAngle = {
            DISTORTION_WORLD_CAMERA_BASE_ANGLE_X,
            DISTORTION_WORLD_CAMERA_BASE_ANGLE_Y,
            DISTORTION_WORLD_CAMERA_BASE_ANGLE_Z },
        .projectionMtx = DISTORTION_WORLD_CAMERA_BASE_PROJECTION_MTX,
        .fovY = DISTORTION_WORLD_CAMERA_BASE_FOVY,
    };

    Camera_SetDistance(cameraConfig.distance, cameraMan->camera);
    Camera_SetAngleAroundTarget(&cameraConfig.cameraAngle, cameraMan->camera);
    Camera_SetFOV(cameraConfig.fovY, cameraMan->camera);
    Camera_ComputeProjectionMatrix(cameraConfig.projectionMtx, cameraMan->camera);
    Camera_SetClipping(DISTORTION_WORLD_CAMERA_BASE_NEAR_CLIP, DISTORTION_WORLD_CAMERA_BASE_FAR_CLIP, cameraMan->camera);

    cameraMan->baseAngle.x = DISTORTION_WORLD_CAMERA_BASE_ANGLE_X;
    cameraMan->baseAngle.y = DISTORTION_WORLD_CAMERA_BASE_ANGLE_Y;
    cameraMan->baseAngle.z = DISTORTION_WORLD_CAMERA_BASE_ANGLE_Z;

    if (IsPersistedDataValid(system) == TRUE) {
        u16 angleX, angleY, angleZ;
        GetPersistedCameraAngles(system, &angleX, &angleY, &angleZ);

        cameraMan->targetAngle.x = angleX * DISTORTION_WORLD_CAMERA_PERSISTED_ANGLES_FACTOR;
        cameraMan->targetAngle.y = angleY * DISTORTION_WORLD_CAMERA_PERSISTED_ANGLES_FACTOR;
        cameraMan->targetAngle.z = angleZ * DISTORTION_WORLD_CAMERA_PERSISTED_ANGLES_FACTOR;

        cameraMan->currentAngle = cameraMan->targetAngle;
    }

    if (DistWorldSystem_GetMapHeaderID(system) != MAP_HEADER_DISTORTION_WORLD_GIRATINA_ROOM) {
        Camera_AdjustFOV(DISTORTION_WORLD_NON_GIRATINA_ROOM_FOV_ADJUST, cameraMan->camera);
    }

    cameraMan->transitionTask = SysTask_Start(CameraTransitionTask, system, 0);
}

static void CameraFree(DistWorldSystem *system)
{
    DistWorldCameraManager *cameraMan = &system->cameraMan;

    system->fieldSystem->unk_20 = 0;

    if (cameraMan->transitionTask != NULL) {
        SysTask_Done(cameraMan->transitionTask);
    }
}

static void CameraTransitionTask(SysTask *sysTask, void *sysTaskParam)
{
    DistWorldSystem *system = sysTaskParam;
    DistWorldCameraManager *cameraMan = &system->cameraMan;
    DistWorldCameraTransition *transition = &cameraMan->transition;

    if (!transition->isActive) {
        return;
    }

    transition->stepsRemaining--;

    if (transition->stepsRemaining <= 0) {
        transition->isActive = FALSE;
        cameraMan->currentAngle = cameraMan->targetAngle;
        return;
    }

    transition->currentAngle.x += transition->angleStep.x;
    transition->currentAngle.y += transition->angleStep.y;
    transition->currentAngle.z += transition->angleStep.z;

    cameraMan->currentAngle.x = transition->currentAngle.x / FX32_ONE;
    cameraMan->currentAngle.y = transition->currentAngle.y / FX32_ONE;
    cameraMan->currentAngle.z = transition->currentAngle.z / FX32_ONE;
}

static BOOL DoCameraTransition(DistWorldSystem *system, const DistWorldCameraAngleTemplate *cameraAngleTemplate)
{
    DistWorldCameraManager *cameraMan = &system->cameraMan;
    DistWorldCameraTransition *transition = &cameraMan->transition;

    SetPersistedCameraAngles(system, cameraAngleTemplate->angleX, cameraAngleTemplate->angleY, cameraAngleTemplate->angleZ);

    cameraMan->targetAngle.x = cameraAngleTemplate->angleX * DISTORTION_WORLD_CAMERA_PERSISTED_ANGLES_FACTOR;
    cameraMan->targetAngle.y = cameraAngleTemplate->angleY * DISTORTION_WORLD_CAMERA_PERSISTED_ANGLES_FACTOR;
    cameraMan->targetAngle.z = cameraAngleTemplate->angleZ * DISTORTION_WORLD_CAMERA_PERSISTED_ANGLES_FACTOR;

    if (cameraMan->currentAngle.x == cameraMan->targetAngle.x && cameraMan->currentAngle.y == cameraMan->targetAngle.y && cameraMan->currentAngle.z == cameraMan->targetAngle.z) {
        transition->isActive = FALSE;
        return FALSE;
    }

    transition->isActive = TRUE;
    transition->stepsRemaining = cameraAngleTemplate->transitionSteps;

    transition->currentAngle.x = FX32_ONE * cameraMan->currentAngle.x;
    transition->currentAngle.y = FX32_ONE * cameraMan->currentAngle.y;
    transition->currentAngle.z = FX32_ONE * cameraMan->currentAngle.z;

    int angleDelta = CalculateCameraAngleDelta(cameraMan->currentAngle.x, cameraMan->targetAngle.x);
    transition->angleStep.x = (FX32_ONE * angleDelta) / cameraAngleTemplate->transitionSteps;

    angleDelta = CalculateCameraAngleDelta(cameraMan->currentAngle.y, cameraMan->targetAngle.y);
    transition->angleStep.y = (FX32_ONE * angleDelta) / cameraAngleTemplate->transitionSteps;

    angleDelta = CalculateCameraAngleDelta(cameraMan->currentAngle.z, cameraMan->targetAngle.z);
    transition->angleStep.z = (FX32_ONE * angleDelta) / cameraAngleTemplate->transitionSteps;

    return TRUE;
}

static void ov9_0224A1E4(DistWorldSystem *param0, int param1)
{
    UnkStruct_ov9_0224A228 *v0 = &param0->unk_188;

    v0->unk_00 = param1;
    param1 *= sizeof(UnkStruct_ov9_0224A294);
    v0->unk_04 = Heap_Alloc(HEAP_ID_FIELD1, param1);

    memset(v0->unk_04, 0, param1);
    HeapExp_FndInitAllocator(&v0->unk_10, HEAP_ID_FIELD1, 4);

    v0->unk_08 = FieldEffectManager_AllocAndReadNARCWholeMember(param0->fieldSystem->fieldEffMan, 197, 1);
    v0->unk_0C = NNS_G3dGetAnmByIdx(v0->unk_08, 0);
}

static void ov9_0224A228(UnkStruct_ov9_0224A228 *param0, UnkStruct_ov9_0224A294 *param1, Billboard *param2)
{
    NNSG3dResMdl *v0 = Billboard_GetModel2(param2);
    NNSG3dResTex *v1 = Billboard_GetTexture(param2);
    NNSG3dRenderObj *v2 = Billboard_GetRenderObj(param2);

    GF_ASSERT(param1->unk_10 == NULL);

    param1->unk_1C = param2;
    param1->unk_10 = NNS_G3dAllocAnmObj(&param0->unk_10, param0->unk_0C, v0);

    NNS_G3dAnmObjInit(param1->unk_10, param0->unk_0C, v0, v1);
    NNS_G3dRenderObjAddAnmObj(v2, param1->unk_10);

    Billboard_SetCallback(param2, ov9_0224A4C8, param1);

    if (param1->unk_18 != NULL) {
        param1->unk_14 = MapObject_GetGraphicsID(param1->unk_18);
    }
}

static void ov9_0224A294(UnkStruct_ov9_0224A228 *param0, UnkStruct_ov9_0224A294 *param1)
{
    if (param1->unk_10 != NULL) {
        NNS_G3dFreeAnmObj(&param0->unk_10, param1->unk_10);
        param1->unk_10 = NULL;
    }
}

static void ov9_0224A2AC(UnkStruct_ov9_0224A228 *param0, UnkStruct_ov9_0224A294 *param1)
{
    ov9_0224A294(param0, param1);
    memset(param1, 0, sizeof(UnkStruct_ov9_0224A294));
}

static void ov9_0224A2C0(UnkStruct_ov9_0224A228 *param0, UnkStruct_ov9_0224A294 *param1)
{
    if (param1->unk_18 != NULL) {
        if (param1->unk_10 == NULL) {
            Billboard *v0 = ov5_021EB1A0(param1->unk_18);

            if (v0 == NULL) {
                return;
            }

            ov9_0224A228(param0, param1, v0);
        }
    }
}

static int ov9_0224A2E4(UnkStruct_ov9_0224A294 *param0)
{
    if (param0->unk_18 != NULL) {
        if (sub_02062CF8(param0->unk_18) == 0) {
            return 1;
        }

        if (MapObject_GetLocalID(param0->unk_18) != param0->unk_16) {
            return 1;
        }

        if (param0->unk_10 != NULL) {
            if (param0->unk_14 != MapObject_GetGraphicsID(param0->unk_18)) {
                return 2;
            }
        }
    } else if (Billboard_GetState(param0->unk_1C) == 0) {
        return 1;
    }

    return 0;
}

static void ov9_0224A334(DistWorldSystem *param0)
{
    int v0;
    UnkStruct_ov9_0224A228 *v1 = &param0->unk_188;
    UnkStruct_ov9_0224A294 *v2 = v1->unk_04;

    for (v0 = 0; v0 < v1->unk_00; v0++, v2++) {
        ov9_0224A2AC(v1, v2);
    }

    if (v1->unk_08 != NULL) {
        Heap_Free(v1->unk_08);
        v1->unk_08 = NULL;
    }

    Heap_Free(v1->unk_04);
    v1->unk_04 = NULL;
}

static void ov9_0224A374(UnkStruct_ov9_0224A294 *param0, MapObject *param1, int param2)
{
    param0->unk_00 = param2;
    param0->unk_04 = (FX32_ONE * (param2));
    param0->unk_0C = param0->unk_04;

    if (param1 != NULL) {
        param0->unk_18 = param1;
        param0->unk_16 = MapObject_GetLocalID(param1);
    }
}

static void ov9_0224A390(DistWorldSystem *system, MapObject *mapObj, int param2)
{
    int v0 = 0;
    UnkStruct_ov9_0224A228 *v1 = &system->unk_188;
    UnkStruct_ov9_0224A294 *v2 = v1->unk_04;

    while (v0 < v1->unk_00) {
        if (v2->unk_18 == NULL && v2->unk_1C == NULL) {
            ov9_0224A374(v2, mapObj, param2);
            return;
        }

        v0++;
        v2++;
    }

    GF_ASSERT(0);
}

static void ov9_0224A3C4(DistWorldSystem *param0, Billboard *param1, int param2)
{
    int v0 = 0;
    UnkStruct_ov9_0224A228 *v1 = &param0->unk_188;
    UnkStruct_ov9_0224A294 *v2 = v1->unk_04;

    while (v0 < v1->unk_00) {
        if ((v2->unk_18 == NULL) && (v2->unk_1C == NULL)) {
            ov9_0224A374(v2, NULL, param2);
            ov9_0224A228(v1, v2, param1);
            return;
        }

        v0++;
        v2++;
    }

    GF_ASSERT(0);
}

static void ov9_0224A408(DistWorldSystem *param0, const Billboard *param1)
{
    int v0 = 0;
    UnkStruct_ov9_0224A228 *v1 = &param0->unk_188;
    UnkStruct_ov9_0224A294 *v2 = v1->unk_04;

    while (v0 < v1->unk_00) {
        if (v2->unk_1C == param1) {
            ov9_0224A2AC(v1, v2);
            return;
        }

        v0++;
        v2++;
    }

    GF_ASSERT(0);
}

static void ov9_0224A438(DistWorldSystem *param0, UnkStruct_ov9_0224A228 *param1, UnkStruct_ov9_0224A294 *param2)
{
    int v0;

    if ((param2->unk_18 == NULL) && (param2->unk_1C == NULL)) {
        return;
    }

    v0 = ov9_0224A2E4(param2);

    if (v0 == 1) {
        ov9_0224A2AC(param1, param2);
        return;
    }

    if (v0 == 2) {
        ov9_0224A294(param1, param2);
    }

    ov9_0224A2C0(param1, param2);

    if (param2->unk_02) {
        param2->unk_02--;
        ApplyRotationToTargetFx32(&param2->unk_04, param2->unk_08);

        if (param2->unk_02 == 0) {
            param2->unk_04 = (FX32_ONE * (param2->unk_00));
        }

        param2->unk_0C = param2->unk_04;
    }
}

static void ov9_0224A49C(DistWorldSystem *param0)
{
    int v0;
    UnkStruct_ov9_0224A228 *v1 = &param0->unk_188;
    UnkStruct_ov9_0224A294 *v2 = v1->unk_04;

    for (v0 = 0; v0 < v1->unk_00; v0++, v2++) {
        ov9_0224A438(param0, v1, v2);
    }
}

static void ov9_0224A4C8(Billboard *param0, void *param1)
{
    UnkStruct_ov9_0224A294 *v0 = param1;
    NNS_G3dAnmObjSetFrame(v0->unk_10, v0->unk_0C);
}

static void ov9_0224A4D0(DistWorldSystem *param0, MapObject *param1, int param2, int param3)
{
    int v0 = 0;
    UnkStruct_ov9_0224A228 *v1 = &param0->unk_188;
    UnkStruct_ov9_0224A294 *v2 = v1->unk_04;

    while (v0 < v1->unk_00) {
        if (v2->unk_18 == param1) {
            v2->unk_04 = (FX32_ONE * (v2->unk_00));
            v2->unk_08 = (FX32_ONE * (param2)) / param3;
            v2->unk_02 = param3;
            ApplyRotationToTarget(&v2->unk_00, param2);
            return;
        }

        v2++;
        v0++;
    }

    GF_ASSERT(0);
}

int ov9_0224A520(FieldSystem *fieldSystem, MapObject *param1)
{
    int v0 = 0;
    DistWorldSystem *v1 = fieldSystem->unk_04->dynamicMapFeaturesData;
    UnkStruct_ov9_0224A228 *v2 = &v1->unk_188;
    UnkStruct_ov9_0224A294 *v3 = v2->unk_04;

    while (v0 < v2->unk_00) {
        if (v3->unk_18 == param1) {
            int v4 = ((v3->unk_0C) / FX32_ONE);

            return v4;
        }

        v3++;
        v0++;
    }

    return 0;
}

void ov9_0224A558(FieldSystem *fieldSystem, Billboard *param1, int param2)
{
    DistWorldSystem *v0 = fieldSystem->unk_04->dynamicMapFeaturesData;
    ov9_0224A3C4(v0, param1, param2);
}

void ov9_0224A564(FieldSystem *fieldSystem, const Billboard *param1)
{
    DistWorldSystem *v0 = fieldSystem->unk_04->dynamicMapFeaturesData;
    ov9_0224A408(v0, param1);
}

static void FieldTaskContextNoOp1(DistWorldSystem *system)
{
    DistWorldFieldTaskContext *ctx = &system->fieldTaskCtx;
}

static void FieldTaskContextNoOp2(DistWorldSystem *system)
{
    DistWorldFieldTaskContext *ctx = &system->fieldTaskCtx;
}

static void *InitFieldTaskContext(DistWorldSystem *system, int ctxSize)
{
    GF_ASSERT(ctxSize <= FIELD_TASK_CONTEXT_MAX_SIZE);

    void *ctx = system->fieldTaskCtx.data;
    memset(ctx, 0, ctxSize);

    return ctx;
}

static void *GetFieldTaskContext(DistWorldSystem *system)
{
    return system->fieldTaskCtx.data;
}

BOOL DistWorld_HandlePlayerMoved(FieldSystem *fieldSystem, enum FaceDirection playerDir)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));

    if (PersistedMapFeatures_GetID(persistedMapFeatures) == DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) {
        DistWorldSystem *dwSystem = fieldSystem->unk_04->dynamicMapFeaturesData;
        int v4 = sub_02061434(fieldSystem->playerAvatar, playerDir);

        int playerX, playerY, playerZ;
        GetPlayerPos(dwSystem, &playerX, &playerY, &playerZ);

        if (v4 == 1) {
            HandleGhostPropTriggerAt(dwSystem, playerX, playerY, playerZ, playerDir);
        }

        ApplyCameraAngleForPlayerPosition(dwSystem, playerX, playerY, playerZ, playerDir);

        if (HandleFloatingPlatformJumpPointAt(dwSystem, playerX, playerY, playerZ, playerDir) == TRUE) {
            return TRUE;
        }

        u32 mapHeaderID = DistWorldSystem_GetMapHeaderID(dwSystem);

        if (mapHeaderID == MAP_HEADER_DISTORTION_WORLD_B4F) {
            if (playerDir == FACE_RIGHT && playerX == WATERFALL_B4F_X && playerY == WATERFALL_B4F_Y && playerZ >= WATERFALL_B4F_START_Z && playerZ <= WATERFALL_B4F_END_Z) {
                RunEventCommands(dwSystem, sMapEventB4F_Waterfall);
                return TRUE;
            }
        } else if (mapHeaderID == MAP_HEADER_DISTORTION_WORLD_B5F) {
            if (playerDir == FACE_RIGHT && playerX == WATERFALL_B5F_X && playerY == WATERFALL_B5F_Y && playerZ >= WATERFALL_B5F_START_Z && playerZ <= WATERFALL_B5F_END_Z) {
                RunEventCommands(dwSystem, sMapEventB5F_Waterfall);
                return TRUE;
            }
        }
    }

    return FALSE;
}

BOOL ov9_0224A67C(FieldSystem *fieldSystem, int param1)
{
    DistWorldSystem *v0 = fieldSystem->unk_04->dynamicMapFeaturesData;
    u32 v1 = DistWorldSystem_GetMapHeaderID(v0);

    switch (v1) {
    case 581:
        if (param1 == 0) {
            VarsFlags *v2 = SaveData_GetVarsFlags(v0->fieldSystem->saveData);

            if (SystemVars_GetDistortionWorldProgress(v2) >= 10) {
                int v3, v4, v5;

                GetPlayerPos(v0, &v3, &v4, &v5);

                if ((v3 == 89) && (v4 == 65) && (v5 == 57)) {
                    ScriptManager_Set(fieldSystem, 2, NULL);
                    return 1;
                }
            }
        }
        break;
    case 582:
        if (param1 == 1) {
            int v6, v7, v8;

            GetPlayerPos(v0, &v6, &v7, &v8);

            if ((v6 == 15) && (v7 == 1) && (v8 == 25)) {
                ScriptManager_Set(fieldSystem, 4, NULL);
                return 1;
            }
        }
        break;
    }

    return 0;
}

BOOL ov9_0224A71C(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *v0 = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));

    if (PersistedMapFeatures_GetID(v0) != DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) {
        return 0;
    }

    {
        int v1, v2, v3;
        int v4 = PlayerAvatar_GetDir(fieldSystem->playerAvatar);
        DistWorldSystem *v5 = fieldSystem->unk_04->dynamicMapFeaturesData;

        GetPlayerPos(v5, &v1, &v2, &v3);

        if (HandleElevatorPlatformPropAnimatorAt(v5, v1, v2, v3) == 1) {
            return 1;
        }

        if (HandleEventAt(v5, v1, v2, v3) == 1) {
            return 1;
        }

        {
            u32 v6 = DistWorldSystem_GetMapHeaderID(v5);
            VarsFlags *v7 = SaveData_GetVarsFlags(v5->fieldSystem->saveData);

            if ((v6 == 581) && (v4 == 0)) {
                if (SystemVars_GetDistortionWorldProgress(v7) >= 10) {
                    if ((v1 == 89) && (v2 == 65) && ((v3 == 56) || (v3 == 57))) {
                        ScriptManager_Set(fieldSystem, 2, NULL);
                        return 1;
                    }
                }
            } else if ((v6 == 582) && (v4 == 1)) {
                if ((v1 == 15) && (v2 == 1) && ((v3 == 25) || (v3 == 26))) {
                    ScriptManager_Set(fieldSystem, 4, NULL);
                    return 1;
                }
            }
        }
    }

    return 0;
}

BOOL ov9_0224A800(FieldSystem *fieldSystem, int param1)
{
    DistWorldSystem *v0 = fieldSystem->unk_04->dynamicMapFeaturesData;
    u32 v1 = DistWorldSystem_GetMapHeaderID(v0);

    switch (v1) {
    case 581:
        if (param1 == 0) {
            VarsFlags *v2 = SaveData_GetVarsFlags(v0->fieldSystem->saveData);

            if (SystemVars_GetDistortionWorldProgress(v2) >= 10) {
                int v3, v4, v5;

                GetPlayerPos(v0, &v3, &v4, &v5);

                if ((v3 == 89) && (v4 == 65) && (v5 == 57)) {
                    ScriptManager_Set(fieldSystem, 2, NULL);
                    return 1;
                }
            }
        }
        break;
    case 582:
        if (param1 == 1) {
            int v6, v7, v8;

            GetPlayerPos(v0, &v6, &v7, &v8);

            if ((v6 == 15) && (v7 == 1) && (v8 == 25)) {
                ScriptManager_Set(fieldSystem, 4, NULL);
                return 1;
            }
        }
        break;
    }

    return 0;
}

static BOOL ApplyCameraAngleForPlayerPosition(DistWorldSystem *system, int playerX, int playerY, int playerZ, enum FaceDirection playerDir)
{
    const DistWorldCameraAngleTemplate *cameraAngleTemplate = FindCameraAngleForPlayerPosition(system, playerX, playerY, playerZ, playerDir);

    if (cameraAngleTemplate == NULL) {
        return FALSE;
    }

    DoCameraTransition(system, cameraAngleTemplate);
    return TRUE;
}

static void ov9_0224A8C0(DistWorldSystem *param0)
{
    u32 v0, v1;
    int v2, v3, v4, v5;
    int v6[6] = { 0, 0, 0, 90, 270, 180 };
    PlayerAvatar *playerAvatar = param0->fieldSystem->playerAvatar;
    MapObject *v8 = Player_MapObject(playerAvatar);

    GetPlayerPos(param0, &v2, &v3, &v4);

    v0 = GetCurrentFloatingPlatformKind(param0);
    v0 = GetAvatarDistortionStateForFloatingPlatformKind(v0);

    if (v0 == 1) {
        MapObject_SetHeightCalculationDisabled(v8, FALSE);
    } else {
        MapObject_SetHeightCalculationDisabled(v8, TRUE);
    }

    PlayerAvatar_SetDistortionState(playerAvatar, v0);

    v5 = 0x0;
    v1 = MapObject_GetGraphicsID(v8);

    switch (v1) {
    case 0x0:
    case 0xd4:
        v1 = 0xd4;
        break;
    case 0x61:
    case 0x107:
        v1 = 0x107;
        break;
    case 0xb2:
    case 0x102:
        v1 = 0x102;
        v5 = 0x2;
        break;
    case 0xb3:
    case 0x103:
        v1 = 0x103;
        v5 = 0x2;
        break;
    default:
        GF_ASSERT(0);
    }

    PlayerAvatar_SetPlayerState(playerAvatar, v5);
    sub_02061AD4(v8, v1);

    if (v0 != 1) {
        GF_ASSERT(MapObject_IsHeightCalculationDisabled(v8) == TRUE);
    }

    if (v5 == 0x2) {
        OverworldAnimManager *v9;
        int v10 = PlayerAvatar_GetDir(playerAvatar);

        v9 = DistWorldSurfMountRenderer_HandleSurfBegin(playerAvatar, v2, v3, v4, v10, 1, v0);
        PlayerAvatar_SetSurfMountAnimManager(playerAvatar, v9);
    }

    ov9_0224A390(param0, v8, v6[v0]);
}

static void ov9_0224A9E8(DistWorldSystem *param0)
{
    PlayerAvatar *v0 = param0->fieldSystem->playerAvatar;

    PlayerAvatar_SetDistortionState(v0, AVATAR_DISTORTION_STATE_NONE);
    PlayerAvatar_ClearSpeed(v0);
}

static BOOL HandleFloatingPlatformJumpPointAt(DistWorldSystem *system, int playerX, int playerY, int playerZ, enum FaceDirection playerDir)
{
    const DistWorldFloatingPlatformJumpPointTemplate *template = FindFloatingPlatformJumpPointAt(system, playerX, playerY, playerZ, playerDir);

    if (template) {
        MapObject *playerMapObj = Player_MapObject(system->fieldSystem->playerAvatar);
        sFloatingPlatformJumpPointHandlers[template->handlerIndex](system, template);

        return TRUE;
    }

    return FALSE;
}

static void CreateJumpOnFloatingPlatformTask(DistWorldSystem *system, const DistWorldFloatingPlatformJumpPointTemplate *template)
{
    DistWorldFloatingPlatformJumpTaskContext *ctx = InitFieldTaskContext(system, sizeof(DistWorldFloatingPlatformJumpTaskContext));

    ctx->template = *template;
    ctx->stepsRemaining = template->movementAnimSteps;
    ctx->positionIncrementVec.x = template->xDisplacement * MAP_OBJECT_TILE_SIZE / template->movementAnimSteps;
    ctx->positionIncrementVec.y = template->yDisplacement * MAP_OBJECT_TILE_SIZE / template->movementAnimSteps;
    ctx->positionIncrementVec.z = template->zDisplacement * MAP_OBJECT_TILE_SIZE / template->movementAnimSteps;
    ctx->positionIncrement = MAP_OBJECT_TILE_SIZE / template->movementAnimSteps;
    ctx->positionIncrementVecAbs = ctx->positionIncrementVec;

    if (ctx->positionIncrementVecAbs.x < 0) {
        ctx->positionIncrementVecAbs.x = -ctx->positionIncrementVecAbs.x;
    }

    if (ctx->positionIncrementVecAbs.y < 0) {
        ctx->positionIncrementVecAbs.y = -ctx->positionIncrementVecAbs.y;
    }

    if (ctx->positionIncrementVecAbs.z < 0) {
        ctx->positionIncrementVecAbs.z = -ctx->positionIncrementVecAbs.z;
    }

    FieldSystem_CreateTask(system->fieldSystem, JumpOnFloatingPlatform, system);
}

static BOOL JumpOnFloatingPlatform(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    DistWorldSystem *system = FieldTask_GetEnv(task);
    DistWorldFloatingPlatformJumpTaskContext *ctx = GetFieldTaskContext(system);
    PlayerAvatar *playerAvatar = fieldSystem->playerAvatar;
    MapObject *playerMapObj = Player_MapObject(playerAvatar);

    switch (ctx->state) {
    case FLOATING_PLATFORM_JUMP_TASK_STATE_INIT: {
        ctx->state++;
        break;
    }

    case FLOATING_PLATFORM_JUMP_TASK_STATE_UPDATE_PLAYER_DIR: {
        if (!LocalMapObj_IsAnimationSet(playerMapObj)) {
            break;
        }

        enum FaceDirection playerDir = ctx->template.playerDir;
        int platformKind = GetCurrentFloatingPlatformKind2(system);

        switch (platformKind) {
        case FLOATING_PLATFORM_KIND_INVALID:
        case FLOATING_PLATFORM_KIND_FLOOR:
            break;

        case FLOATING_PLATFORM_KIND_WEST_WALL: {
            int newPlayerDirs[] = {
                [FACE_UP] = FACE_LEFT,
                [FACE_DOWN] = FACE_RIGHT,
                [FACE_LEFT] = FACE_UP,
                [FACE_RIGHT] = FACE_DOWN
            };

            playerDir = newPlayerDirs[playerDir];
            break;
        }

        case FLOATING_PLATFORM_KIND_EAST_WALL: {
            int newPlayerDirs[] = {
                [FACE_UP] = FACE_RIGHT,
                [FACE_DOWN] = FACE_LEFT,
                [FACE_LEFT] = FACE_UP,
                [FACE_RIGHT] = FACE_DOWN
            };

            playerDir = newPlayerDirs[playerDir];
            break;
        }

        case FLOATING_PLATFORM_KIND_CEILING: {
            int newPlayerDirs[] = {
                [FACE_UP] = FACE_DOWN,
                [FACE_DOWN] = FACE_UP,
                [FACE_LEFT] = FACE_RIGHT,
                [FACE_RIGHT] = FACE_LEFT
            };

            playerDir = newPlayerDirs[playerDir];
            break;
        }
        }

        int animCode = MovementAction_TurnActionTowardsDir(playerDir, MOVEMENT_ACTION_FACE_NORTH);

        LocalMapObj_SetAnimationCode(playerMapObj, animCode);
        MapObject_TryFace(playerMapObj, playerDir);
        ov9_0224A4D0(system, playerMapObj, ctx->template.unk_1A, ctx->template.movementAnimSteps);

        ctx->state++;
    }

    case FLOATING_PLATFORM_JUMP_TASK_STATE_MOVE_PLAYER: {
        if (TickJumpOnFloatingPlatformMovementAnimation(ctx, playerMapObj) != TRUE) {
            break;
        }

        enum AvatarDistortionState playerAvatarDistortionState = AVATAR_DISTORTION_STATE_ACTIVE;
        int particlesDir = 0;
        MapObject *playerMapObj = Player_MapObject(playerAvatar);

        PrepareNewCurrentFloatingPlatform(system, ctx->template.floatingPlatformIndex);
        playerAvatarDistortionState = GetAvatarDistortionStateForFloatingPlatformKind(ctx->template.floatingPlatformKind);

        PlayerAvatar_SetDistortionState(playerAvatar, playerAvatarDistortionState);
        PlayerAvatar_ClearSpeed(playerAvatar);

        if (ctx->template.floatingPlatformIndex < 0) {
            MapObject_SetHeightCalculationDisabled(playerMapObj, FALSE);
        } else {
            MapObject_SetHeightCalculationDisabled(playerMapObj, TRUE);
        }

        switch (ctx->template.floatingPlatformKind) {
        case FLOATING_PLATFORM_KIND_WEST_WALL:
            particlesDir = 2;
            break;

        case FLOATING_PLATFORM_KIND_EAST_WALL:
            particlesDir = 1;
            break;

        case FLOATING_PLATFORM_KIND_CEILING:
            particlesDir = 3;
            break;
        }

        // TODO: The following function plays the dust particle effects when
        // the player lands on the ground.
        ov5_021F3678(playerMapObj, particlesDir);
        Sound_PlayEffect(SEQ_SE_DP_SUTYA2);

        ctx->state++;
        break;
    }

    case FLOATING_PLATFORM_JUMP_TASK_STATE_FINISH: {
        if (!LocalMapObj_IsAnimationSet(playerMapObj)) {
            break;
        }

        int animCode = MovementAction_TurnActionTowardsDir(ctx->template.finalFacingDir, MOVEMENT_ACTION_FACE_NORTH);
        LocalMapObj_SetAnimationCode(playerMapObj, animCode);

        return TRUE;
    }
    }

    return FALSE;
}

static BOOL TickJumpOnFloatingPlatformMovementAnimation(DistWorldFloatingPlatformJumpTaskContext *ctx, MapObject *playerMapObj)
{
    const DistWorldFloatingPlatformJumpPointTemplate *template = &ctx->template;

    VecFx32 playerPos;
    MapObject_GetPosPtr(playerMapObj, &playerPos);

    playerPos.x += ctx->positionIncrementVec.x;
    playerPos.y += ctx->positionIncrementVec.y;
    playerPos.z += ctx->positionIncrementVec.z;

    MapObject_SetPos(playerMapObj, &playerPos);

    ctx->accumulatedMovement.x += ctx->positionIncrementVecAbs.x;

    if (ctx->accumulatedMovement.x >= MAP_OBJECT_TILE_SIZE) {
        ctx->accumulatedMovement.x -= MAP_OBJECT_TILE_SIZE;

        int playerX = MapObject_GetX(playerMapObj);

        if (template->xDisplacement > 0) {
            playerX++;
        } else if (template->xDisplacement < 0) {
            playerX--;
        }

        MapObject_SetX(playerMapObj, playerX);
    }

    ctx->accumulatedMovement.y += ctx->positionIncrementVecAbs.y;

    if (ctx->accumulatedMovement.y >= MAP_OBJECT_TILE_SIZE / 2) {
        ctx->accumulatedMovement.y -= MAP_OBJECT_TILE_SIZE / 2;

        int playerY = MapObject_GetY(playerMapObj);

        if (template->yDisplacement > 0) {
            playerY++;
        } else if (template->yDisplacement < 0) {
            playerY--;
        }

        MapObject_SetY(playerMapObj, playerY);
    }

    ctx->accumulatedMovement.z += ctx->positionIncrementVecAbs.z;

    if (ctx->accumulatedMovement.z >= MAP_OBJECT_TILE_SIZE) {
        ctx->accumulatedMovement.z -= MAP_OBJECT_TILE_SIZE;

        int playerZ = MapObject_GetZ(playerMapObj);

        if (template->zDisplacement > 0) {
            playerZ++;
        } else if (template->zDisplacement < 0) {
            playerZ--;
        }

        MapObject_SetZ(playerMapObj, playerZ);
    }

    int v3;
    fx32 *v4;
    VecFx32 *v5 = MapObject_GetSpriteJumpOffset1(playerMapObj);
    const fx32 *v6 = Unk_ov9_02252CF8;

    ctx->unk_14 += ctx->positionIncrement;
    v3 = ((ctx->unk_14) / FX32_ONE);

    switch (template->unk_1E) {
    case 0:
        v4 = &v5->x;
        break;
    case 1:
        v4 = &v5->y;
        break;
    case 2:
        v4 = &v5->z;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    *v4 = v6[v3];

    if (template->unk_20 == 1) {
        *v4 = -(*v4);
    }

    ctx->stepsRemaining--;

    if (ctx->stepsRemaining <= 0) {
        *v4 = 0;

        MapObject_UpdateCoords(playerMapObj);
        sub_02062B68(playerMapObj);
        MapObject_TryFace(playerMapObj, template->finalFacingDir);
        sub_02062A0C(playerMapObj, MAP_OBJ_UNK_A0_00);

        return TRUE;
    }

    return FALSE;
}

static void ov9_0224ADC0(DistWorldSystem *param0)
{
    char *v0;

    GXLayers_EngineAToggleLayers(2, 0);

    {
        char *v1;
        NNSG2dPaletteData *v2;

        v1 = NARC_AllocAndReadWholeMember(param0->unk_10, 1, 4);
        NNS_G2dGetUnpackedPaletteData(v1, &v2);
        Bg_LoadPalette(2, v2->pRawData, 32, 32 * 0);

        {
            int v3;
            UnkStruct_ov9_0224ADC0 *v4 = &param0->unk_1D00;
            u16 *v5 = v2->pRawData;

            v5 = &v5[0 * 16];

            for (v3 = 0; v3 < 16; v3++) {
                v4->unk_08[v3] = v5[v3];
                v4->unk_28[v3] = v5[v3];
            }
        }

        Heap_Free(v1);
    }

    {
        char *v6;
        NNSG2dCharacterData *v7;

        v6 = NARC_AllocAndReadWholeMember(param0->unk_10, 0, 4);
        NNS_G2dGetUnpackedCharacterData(v6, &v7);

        Bg_LoadTiles(param0->fieldSystem->bgConfig, 2, v7->pRawData, v7->szByte, 0);
        Heap_Free(v6);
    }

    {
        char *v8;
        NNSG2dScreenData *v9;

        v8 = NARC_AllocAndReadWholeMember(param0->unk_10, 2, 4);
        NNS_G2dGetUnpackedScreenData(v8, &v9);

        Bg_CopyTilemapBufferRangeToVRAM(param0->fieldSystem->bgConfig, 2, (void *)v9->rawData, v9->szByte, 0);
        Bg_LoadTilemapBuffer(param0->fieldSystem->bgConfig, 2, (void *)v9->rawData, v9->szByte);
        Bg_CopyTilemapBufferToVRAM(param0->fieldSystem->bgConfig, 2);
        Heap_Free(v8);
    }

    {
        G2_SetBG0Priority(2);
        G2_SetBG1Priority(1);
        G2_SetBG2Priority(3);
        G2_SetBG3Priority(0);
    }

    {
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, 0, 16);
    }

    GXLayers_EngineAToggleLayers(2, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov9_0224AED8(DistWorldSystem *param0)
{
    G2_BlendNone();
}

static void ov9_0224AEE4(DistWorldSystem *param0, UnkStruct_ov9_0224B064 *param1, NARC *param2)
{
    param1->unk_00 = SpriteList_InitRendering(16, &param1->unk_04, HEAP_ID_FIELD1);
    SetMainScreenViewRect(&param1->unk_04, (FX32_ONE * 0), (FX32_ONE * -512));
    param1->unk_190 = SpriteResourceCollection_New(7, 0, HEAP_ID_FIELD1);
    param1->unk_194 = SpriteResourceCollection_New(1, 1, HEAP_ID_FIELD1);
    param1->unk_198 = SpriteResourceCollection_New(7, 2, HEAP_ID_FIELD1);
    param1->unk_19C = SpriteResourceCollection_New(7, 3, HEAP_ID_FIELD1);

    {
        int v0;

        for (v0 = 0; v0 < 7; v0++) {
            param1->unk_1A0[v0] = SpriteResourceCollection_AddTilesFrom(param1->unk_190, param2, Unk_ov9_02251E58[v0], 0, ((v0) + 0xff), NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_FIELD1);
            SpriteTransfer_RequestCharAtEnd(param1->unk_1A0[v0]);
        }

        param1->unk_1BC[0] = SpriteResourceCollection_AddPaletteFrom(param1->unk_194, param2, Unk_ov9_02251210[0], 0, (0 + 0xff), NNS_G2D_VRAM_TYPE_2DMAIN, 5, HEAP_ID_FIELD1);

        {
            NNSG2dPaletteData *v1;

            v1 = SpriteResource_GetPaletteFade(param1->unk_1BC[0]);
            {
                int v2 = 0;
                UnkStruct_ov9_0224ADC0 *v3 = &param0->unk_1D00;
                u16 *v4 = v3->unk_48;
                u16 *v5 = v1->pRawData;

                do {
                    *v4 = *v5;
                    v4++;
                    v5++;
                } while (++v2 < (16 * 5));
            }
        }

        SpriteTransfer_RequestPlttFreeSpace(param1->unk_1BC[0]);

        for (v0 = 0; v0 < 7; v0++) {
            param1->unk_1C0[v0] = SpriteResourceCollection_AddFrom(param1->unk_198, param2, Unk_ov9_02251E90[v0], 0, ((v0) + 0xff), 2, HEAP_ID_FIELD1);
        }

        for (v0 = 0; v0 < 7; v0++) {
            param1->unk_1DC[v0] = SpriteResourceCollection_AddFrom(param1->unk_19C, param2, Unk_ov9_02251EAC[v0], 0, ((v0) + 0xff), 3, HEAP_ID_FIELD1);
        }
    }

    {
        param1->unk_1F8 = SysTask_Start(ov9_0224B124, param1, 65535);
    }
}

static void ov9_0224B064(UnkStruct_ov9_0224B064 *param0)
{
    int v0;

    SysTask_Done(param0->unk_1F8);

    for (v0 = 0; v0 < 7; v0++) {
        if (param0->unk_1A0[v0] != NULL) {
            SpriteTransfer_ResetCharTransfer(param0->unk_1A0[v0]);
        }
    }

    for (v0 = 0; v0 < 1; v0++) {
        if (param0->unk_1BC[v0] != NULL) {
            SpriteTransfer_ResetPlttTransfer(param0->unk_1BC[v0]);
        }
    }

    for (v0 = 0; v0 < 7; v0++) {
        if (param0->unk_1C0[v0] != NULL) {
            SpriteResource_ReleaseData(param0->unk_1C0[v0]);
            SpriteResourceCollection_Remove(
                param0->unk_198, param0->unk_1C0[v0]);
        }
    }

    for (v0 = 0; v0 < 7; v0++) {
        if (param0->unk_1DC[v0] != NULL) {
            SpriteResource_ReleaseData(param0->unk_1DC[v0]);
            SpriteResourceCollection_Remove(
                param0->unk_19C, param0->unk_1DC[v0]);
        }
    }

    SpriteResourceCollection_Delete(param0->unk_190);
    SpriteResourceCollection_Delete(param0->unk_194);
    SpriteResourceCollection_Delete(param0->unk_198);
    SpriteResourceCollection_Delete(param0->unk_19C);

    SpriteList_DeleteAll(param0->unk_00);
    SpriteList_Delete(param0->unk_00);
}

static void ov9_0224B124(SysTask *param0, void *param1)
{
    UnkStruct_ov9_0224B064 *v0 = param1;
    SpriteList_Update(v0->unk_00);
}

static Sprite *ov9_0224B130(UnkStruct_ov9_0224B064 *param0, const VecFx32 *param1, u32 param2, u32 param3, u32 param4, u32 param5, int param6, int param7)
{
    SpriteResourcesHeader v0;
    SpriteListTemplate v1;
    Sprite *v2;

    SpriteResourcesHeader_Init(&v0, ((param2) + 0xff), ((param3) + 0xff), ((param4) + 0xff), ((param5) + 0xff), 0xffffffff, 0xffffffff, 0, param6, param0->unk_190, param0->unk_194, param0->unk_198, param0->unk_19C, NULL, NULL);

    v1.list = param0->unk_00;
    v1.resourceData = &v0;
    v1.position = *param1;
    v1.priority = param7;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = HEAP_ID_FIELD1;

    v2 = SpriteList_Add(&v1);
    GF_ASSERT(v2 != NULL);

    return v2;
}

static void ov9_0224B1B4(DistWorldSystem *param0, FieldEffectManager *param1, UnkStruct_ov9_0224B064 *param2)
{
    int v0;
    UnkStruct_ov9_0224B1B4 v1;
    OverworldAnimManager *v2;

    param0->unk_1EC2 = 0;

    if (DistWorldSystem_GetMapHeaderID(param0) == 582) {
        VarsFlags *v3 = SaveData_GetVarsFlags(param0->fieldSystem->saveData);
        u32 v4 = SystemVars_GetDistortionWorldProgress(v3);

        if (v4 >= 10) {
            if (v4 <= 12) {
                param0->unk_1EC2 = 1;
            } else if (v4 <= 13) {
                param0->unk_1EC2 = 2;
            }
        }
    }

    v1.unk_00 = param0;
    v1.unk_34 = param2;

    for (v0 = 0; v0 < 9; v0++) {
        v1.unk_04 = Unk_ov9_02253680[v0];
        v2 = FieldEffectManager_InitAnimManager(param1, &Unk_ov9_02251508, NULL, 0, &v1, 0);
    }
}

static int ov9_0224B23C(OverworldAnimManager *param0, void *param1)
{
    VecFx32 v0 = { 0, 0, 0 };
    const UnkStruct_ov9_02251EC8 *v1;
    const UnkStruct_ov9_0224B1B4 *v2 = OverworldAnimManager_GetUserData(param0);
    UnkStruct_ov9_0224B2C0 *v3 = param1;

    v3->unk_08 = *v2;
    v3->unk_00 = v3->unk_08.unk_04.unk_08;
    v3->unk_04 = Unk_ov9_02252C08[v2->unk_00->unk_1EC2][v2->unk_04.unk_04];

    v1 = &Unk_ov9_02251EC8[v3->unk_08.unk_04.unk_00];
    v3->unk_40 = ov9_0224B130(v3->unk_08.unk_34, &v0, v1->unk_00, v1->unk_01, v1->unk_02, v1->unk_03, 3, 0xffff);

    Sprite_SetAffineScaleEx(v3->unk_40, &v3->unk_08.unk_04.unk_24, 2);
    return 1;
}

static void ov9_0224B2C0(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov9_0224B2C0 *v0 = param1;
    Sprite_Delete(v0->unk_40);
}

static void ov9_0224B2CC(OverworldAnimManager *param0, void *param1)
{
    fx32 v0, v1, v2;
    VecFx32 v3;
    UnkStruct_ov9_0224B2C0 *v4 = param1;

    v2 = Unk_ov9_02252C08[v4->unk_08.unk_00->unk_1EC2][v4->unk_08.unk_04.unk_04];

    if (v2 < v4->unk_04) {
        v4->unk_04 -= 0x200;

        if (v2 > v4->unk_04) {
            v4->unk_04 = v2;
        }
    } else if (v2 > v4->unk_04) {
        v4->unk_04 += 0x200;

        if (v2 < v4->unk_04) {
            v4->unk_04 = v2;
        }
    }

    v1 = v4->unk_08.unk_04.unk_14 + v4->unk_04;
    ApplyRotationToTargetFx32(&v4->unk_00, v1);

    v0 = v4->unk_00;
    ApplyRotationToTargetFx32(&v0, v4->unk_08.unk_04.unk_0C);

    v3 = v4->unk_08.unk_04.unk_18;

    v3.x += (FX32_ONE * 0) + (CalcCosineDegrees((v4->unk_00) / FX32_ONE) * v4->unk_08.unk_04.unk_10);
    v3.y += (FX32_ONE * -512) + (CalcSineDegrees((v4->unk_00) / FX32_ONE) * v4->unk_08.unk_04.unk_10);

    OverworldAnimManager_SetPosition(param0, &v3);
    Sprite_SetPosition(v4->unk_40, &v3);
    Sprite_SetAffineZRotation(v4->unk_40, CalcAngleRotationIdx_Wraparound((v0) / FX32_ONE));
}

static void ov9_0224B3A4(OverworldAnimManager *param0, void *param1)
{
    return;
}

static const OverworldAnimManagerFuncs Unk_ov9_02251508 = {
    sizeof(UnkStruct_ov9_0224B2C0),
    ov9_0224B23C,
    ov9_0224B2C0,
    ov9_0224B2CC,
    ov9_0224B3A4
};

static void ov9_0224B3A8(DistWorldSystem *param0)
{
    UnkStruct_ov5_021D57D8 *v0 = param0->fieldSystem->unk_48;

    ov5_021D57FC(v0, 0xffffffff, 1, GX_FOGBLEND_COLOR_ALPHA, 6, 0x7600);
    ov5_021D5834(v0, 0xffffffff, (GX_RGB(0, 0, 0)), 16);

    {
        int v1 = 0;
        char v2[32];

        do {
            v2[v1] = (88 / 32) * v1;
            v1++;
        } while (v1 < 32);

        ov5_021D585C(v0, v2);
    }
}

static void ov9_0224B3F4(DistWorldSystem *param0)
{
    return;
}

static void InitGhostPropManager(DistWorldSystem *system, DistWorldGhostPropManager *ghostPropMan, const DistWorldGhostPropHeader *header, const DistWorldGhostPropTemplate *ghostPropTemplateList, int mapHeaderID, u32 hiddenGhostPropGroups)
{
    GF_ASSERT(ghostPropMan->animMans == NULL);

    memset(ghostPropMan, 0, sizeof(DistWorldGhostPropManager));

    ghostPropMan->hiddenGhostPropGroups = hiddenGhostPropGroups;
    ghostPropMan->templateCount = header->templateCount;

    GF_ASSERT(ghostPropMan->templateCount);

    int animMansSize = ghostPropMan->templateCount * sizeof(OverworldAnimManager *);
    ghostPropMan->animMans = Heap_AllocAtEnd(HEAP_ID_FIELD1, animMansSize);

    memset((u8 *)ghostPropMan->animMans, 0, animMansSize);
    InitAllGhostPropAnimManagers(system, ghostPropMan, ghostPropTemplateList, mapHeaderID);
}

static void InitActiveGhostPropManager(DistWorldSystem *system, BOOL useDefaultVisibility)
{
    int mapHeaderID = DistWorldSystem_GetMapHeaderID(system);
    const DistWorldMapConnections *mapConnections = GetConnectionsForMap(mapHeaderID);

    if (GetActiveGhostPropFileSectionSize(system)) {
        DistWorldGhostPropManager *ghostPropMan = &system->ghostPropMan;
        const DistWorldGhostPropHeader *header = GetActiveGhostPropHeader(system);
        const DistWorldGhostPropTemplate *ghostPropTemplateList = GetActiveGhostPropTemplates(system);

        if (useDefaultVisibility == TRUE || !IsPersistedDataValid(system)) {
            ghostPropMan->hiddenGhostPropGroups = ~header->defaultVisiblePropGroups;
            SetPersistedHiddenGhostPropGroups(system, ghostPropMan->hiddenGhostPropGroups);
        } else {
            ghostPropMan->hiddenGhostPropGroups = GetPersistedHiddenGhostPropGroups(system);
        }

        InitGhostPropManager(system, ghostPropMan, header, ghostPropTemplateList, mapHeaderID, ghostPropMan->hiddenGhostPropGroups);
    }
}

static void InitInactiveGhostPropManager(DistWorldSystem *system)
{
    enum MapHeader mapHeaderID = DistWorldSystem_GetMapHeaderID(system);
    const DistWorldMapConnections *mapConnections = GetConnectionsForMap(mapHeaderID);
    mapHeaderID = mapConnections->nextID;

    if (GetInactiveGhostPropFileSectionSize(system)) {
        DistWorldGhostPropManager *ghostPropMan = &system->inactiveGhostPropMan;
        const DistWorldGhostPropHeader *header = GetInactiveGhostPropHeader(system);
        const DistWorldGhostPropTemplate *ghostPropTemplateList = GetInactiveGhostPropTemplates(system);

        InitGhostPropManager(system, ghostPropMan, header, ghostPropTemplateList, mapHeaderID, ~header->defaultVisiblePropGroups);
    }
}

static void InitAllGhostPropManagers(DistWorldSystem *system)
{
    InitActiveGhostPropManager(system, FALSE);
    InitInactiveGhostPropManager(system);
}

static void FinishGhostPropManager(DistWorldGhostPropManager *ghostPropMan)
{
    if (ghostPropMan->templateCount) {
        for (int i = 0; i < ghostPropMan->templateCount; i++) {
            if (ghostPropMan->animMans[i] != NULL) {
                OverworldAnimManager_Finish(ghostPropMan->animMans[i]);
            }
        }

        Heap_Free(ghostPropMan->animMans);

        ghostPropMan->animMans = NULL;
        ghostPropMan->templateCount = 0;
    }
}

static void FinishAllGhostPropManagers(DistWorldSystem *system)
{
    FinishActiveGhostPropManager(system);
    FinishInactiveGhostPropManager(system);
}

static void FinishActiveGhostPropManager(DistWorldSystem *system)
{
    FinishGhostPropManager(&system->ghostPropMan);
}

static void FinishInactiveGhostPropManager(DistWorldSystem *system)
{
    FinishGhostPropManager(&system->inactiveGhostPropMan);
}

static void ResetActiveGhostPropManager(DistWorldSystem *system)
{
    system->ghostPropMan.animMans = NULL;
    system->ghostPropMan.templateCount = 0;
}

static void ResetInactiveGhostPropManager(DistWorldSystem *system)
{
    system->inactiveGhostPropMan.animMans = NULL;
    system->inactiveGhostPropMan.templateCount = 0;
}

static void MoveActiveGhostPropManagerToInactive(DistWorldSystem *system)
{
    GF_ASSERT(system->inactiveGhostPropMan.animMans == NULL);
    GF_ASSERT(system->inactiveGhostPropMan.templateCount == 0);

    system->inactiveGhostPropMan = system->ghostPropMan;
}

static void MoveInactiveGhostPropManagerToActive(DistWorldSystem *system)
{
    GF_ASSERT(system->ghostPropMan.animMans == NULL);
    GF_ASSERT(system->ghostPropMan.templateCount == 0);

    system->ghostPropMan = system->inactiveGhostPropMan;
}

static void HideGhostPropGroup(DistWorldSystem *system, u32 groupID)
{
    DistWorldGhostPropManager *ghostPropMan = &system->ghostPropMan;

    GF_ASSERT(groupID < GHOST_PROP_GROUP_MAX_COUNT);

    ghostPropMan->hiddenGhostPropGroups |= 1 << groupID;
    SetPersistedHiddenGhostPropGroups(system, ghostPropMan->hiddenGhostPropGroups);
}

static void ShowGhostPropGroup(DistWorldSystem *system, u32 groupID)
{
    u32 mask = ~(1 << groupID);
    DistWorldGhostPropManager *ghostPropMan = &system->ghostPropMan;

    GF_ASSERT(groupID < GHOST_PROP_GROUP_MAX_COUNT);

    ghostPropMan->hiddenGhostPropGroups &= mask;
    SetPersistedHiddenGhostPropGroups(system, ghostPropMan->hiddenGhostPropGroups);
}

static BOOL IsActiveGhostPropGroupHidden(DistWorldSystem *system, u32 groupID)
{
    DistWorldGhostPropManager *ghostPropMan = &system->ghostPropMan;

    GF_ASSERT(groupID < GHOST_PROP_GROUP_MAX_COUNT);

    return ghostPropMan->hiddenGhostPropGroups & (1 << groupID) ? TRUE : FALSE;
}

static BOOL IsInactiveGhostPropGroupHidden(DistWorldSystem *system, u32 groupID)
{
    DistWorldGhostPropManager *ghostPropMan = &system->inactiveGhostPropMan;

    GF_ASSERT(groupID < GHOST_PROP_GROUP_MAX_COUNT);

    return ghostPropMan->hiddenGhostPropGroups & (1 << groupID) ? TRUE : FALSE;
}

static void PersistActiveHiddenGhostPropGroups(DistWorldSystem *system)
{
    SetPersistedHiddenGhostPropGroups(system, system->ghostPropMan.hiddenGhostPropGroups);
}

static void InitAllGhostPropAnimManagers(DistWorldSystem *system, DistWorldGhostPropManager *ghostPropMan, const DistWorldGhostPropTemplate *iter, int mapHeaderID)
{
    if (ghostPropMan->templateCount) {
        for (int i = 0; i < ghostPropMan->templateCount; i++, iter++) {
            ghostPropMan->animMans[i] = InitGhostPropAnimManager(system, i, mapHeaderID, iter);
        }
    }
}

static OverworldAnimManager *InitGhostPropAnimManager(DistWorldSystem *system, int animManIndex, int mapHeaderID, const DistWorldGhostPropTemplate *ghostPropTemplate)
{
    DistWorldGhostProp ghostProp;
    const OverworldAnimManagerFuncs *animFuncs = sPropAnimFuncsByKind[ghostPropTemplate->propKind];

    ghostProp.animManIndex = animManIndex;
    ghostProp.mapHeaderID = mapHeaderID;
    ghostProp.template = *ghostPropTemplate;
    ghostProp.system = system;

    return FieldEffectManager_InitAnimManager(system->fieldSystem->fieldEffMan, animFuncs, NULL, 0, &ghostProp, 2);
}

static void HandleGhostPropTriggerAt(DistWorldSystem *system, int tileX, int tileY, int tileZ, enum FaceDirection direction)
{
    if (GetActiveGhostPropFileSectionSize(system)) {
        const DistWorldGhostPropHeader *header = GetActiveGhostPropHeader(system);

        if (header->triggerCount) {
            int i = header->triggerCount;
            const DistWorldGhostPropTrigger *iter = GetActiveGhostPropTriggers(system);

            do {
                if (direction == iter->playerDir && DistWorldBounds_AreCoordinatesInBounds(tileX, tileY, tileZ, &iter->bounds)) {
                    if (!iter->showProp) {
                        HideGhostPropGroup(system, iter->groupID);
                    } else {
                        ShowGhostPropGroup(system, iter->groupID);
                    }
                }

                iter++;
            } while (--i);
        }
    }
}

static BOOL HasActiveGhostProp2(DistWorldSystem *system, u32 propKind)
{
    DistWorldGhostPropManager *ghostPropMan = &system->ghostPropMan;
    GF_ASSERT(propKind != PROP_KIND_COUNT);

    for (int i = 0; i < ghostPropMan->templateCount; i++) {
        if (OverworldAnimManager_IsActive(ghostPropMan->animMans[i]) == TRUE) {
            u16 currPropKind = GetAnimManagerGhostPropKind(ghostPropMan->animMans[i]);
            const DistWorldPropAnimInfo *animInfo = &sPropAnimInfoByKind[currPropKind];

            if (propKind == animInfo->propKind) {
                return TRUE;
            }
        }
    }

    ghostPropMan = &system->inactiveGhostPropMan;

    for (int i = 0; i < ghostPropMan->templateCount; i++) {
        if (OverworldAnimManager_IsActive(ghostPropMan->animMans[i]) == TRUE) {
            u16 currPropKind = GetAnimManagerGhostPropKind(ghostPropMan->animMans[i]);
            const DistWorldPropAnimInfo *animInfo = &sPropAnimInfoByKind[currPropKind];

            if (propKind == animInfo->propKind) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

static BOOL HasActiveGhostPropAnim(DistWorldSystem *system, u32 animKind)
{
    DistWorldGhostPropManager *ghostPropMan = &system->ghostPropMan;
    GF_ASSERT(animKind != PROP_ANIM_KIND_COUNT);

    for (int i = 0; i < ghostPropMan->templateCount; i++) {
        if (OverworldAnimManager_IsActive(ghostPropMan->animMans[i]) == 1) {
            u16 currPropKind = GetAnimManagerGhostPropKind(ghostPropMan->animMans[i]);
            const DistWorldPropAnimInfo *animInfo = &sPropAnimInfoByKind[currPropKind];

            if (animKind == animInfo->animKind) {
                return TRUE;
            }
        }
    }

    ghostPropMan = &system->inactiveGhostPropMan;

    for (int i = 0; i < ghostPropMan->templateCount; i++) {
        if (OverworldAnimManager_IsActive(ghostPropMan->animMans[i]) == 1) {
            u16 currPropKind = GetAnimManagerGhostPropKind(ghostPropMan->animMans[i]);
            const DistWorldPropAnimInfo *animInfo = &sPropAnimInfoByKind[currPropKind];

            if (animKind == animInfo->animKind) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

static BOOL HasActiveGhostProp(DistWorldSystem *system, int propKind)
{
    DistWorldGhostPropManager *ghostPropMan = &system->ghostPropMan;

    for (int i = 0; i < ghostPropMan->templateCount; i++) {
        if (OverworldAnimManager_IsActive(ghostPropMan->animMans[i]) == TRUE) {
            u16 currPropKind = GetAnimManagerGhostPropKind(ghostPropMan->animMans[i]);

            if (currPropKind == propKind) {
                return TRUE;
            }
        }
    }

    ghostPropMan = &system->inactiveGhostPropMan;

    for (int i = 0; i < ghostPropMan->templateCount; i++) {
        if (OverworldAnimManager_IsActive(ghostPropMan->animMans[i]) == TRUE) {
            u16 currPropKind = GetAnimManagerGhostPropKind(ghostPropMan->animMans[i]);

            if (currPropKind == propKind) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

static u16 GetAnimManagerGhostPropKind(OverworldAnimManager *animMan)
{
    return (u16)OverworldAnimManager_GetDistWorldGhostPropKind(animMan);
}

static BOOL DistWorldPlatformProp_AnimInit(OverworldAnimManager *animMan, void *context)
{
    DistWorldPlatformProp *platformProp = context;
    const DistWorldGhostProp *ghostProp = OverworldAnimManager_GetUserData(animMan);
    platformProp->ghostProp = *ghostProp;

    DistWorldGhostPropTemplate *ghostPropTemplate = &platformProp->ghostProp.template;
    OverworldAnimManager_SetDistWorldGhostPropKind(animMan, ghostPropTemplate->propKind);

    BOOL rendererAlreadyInit;
    platformProp->renderer = DistWorldPropRenderer_Init(ghostProp->system, ghostPropTemplate->propKind, &rendererAlreadyInit);

    if (!rendererAlreadyInit) {
        LoadRenderBuffersForProp(platformProp->ghostProp.system, ghostPropTemplate->propKind, &platformProp->renderer->renderObj, &platformProp->renderer->animation);
    }

    BOOL ghostPropGroupHidden;

    if (DistWorldSystem_GetMapHeaderID(ghostProp->system) == ghostProp->mapHeaderID) {
        ghostPropGroupHidden = IsActiveGhostPropGroupHidden(ghostProp->system, ghostPropTemplate->groupID);
    } else {
        ghostPropGroupHidden = IsInactiveGhostPropGroupHidden(ghostProp->system, ghostPropTemplate->groupID);
    }

    if (ghostPropGroupHidden == TRUE) {
        platformProp->opacity = GHOST_PROP_OPACITY_MIN;
    } else {
        platformProp->opacity = GHOST_PROP_OPACITY_MAX;
    }

    VecFx32_SetPosFromMapCoords(ghostPropTemplate->tileX, ghostPropTemplate->tileZ, &platformProp->initialPos);
    platformProp->initialPos.y = MAP_OBJECT_COORD_CENTER_TO_FX32(ghostPropTemplate->tileY);

    const VecFx32 *initialPosOffset = &sPropInitialPosOffsetByKind[ghostPropTemplate->propKind];
    platformProp->initialPos.x += initialPosOffset->x;
    platformProp->initialPos.y += initialPosOffset->y;
    platformProp->initialPos.z += initialPosOffset->z;

    platformProp->animProgress = LCRNG_Next() % (FX32_ONE * 8);
    platformProp->animDelta = PLATFORM_PROP_ANIM_DELTA;

    if (platformProp->animProgress & 0x1) {
        platformProp->animDelta = -platformProp->animDelta;
    }

    return TRUE;
}

static void DistWorldPlatformProp_AnimExit(OverworldAnimManager *animMan, void *context)
{
    DistWorldPlatformProp *platformProp = context;
    DistWorldGhostProp *ghostProp = &platformProp->ghostProp;

    if (DistWorldPropAnimInfo_IsAnimKindValid(ghostProp->template.propKind) == TRUE) {
        Simple3D_FreeAnimation(&platformProp->renderer->animation);
    }

    DistWorldPropRenderer_InvalidateAnimated(ghostProp->system, platformProp->renderer);
}

static const fx32 sPlatformPropAnimOffsets[PLATFORM_PROP_ANIM_TIMING_COUNT] = {
    0x0,
    -0x1000,
    -0x2000,
    -0x4000,
    -0x5000,
    -0x5800,
    -0x5c00,
    -0x6000
};

static void DistWorldPlatformProp_AnimTick(OverworldAnimManager *animMan, void *context)
{
    DistWorldPlatformProp *platformProp = context;
    DistWorldGhostProp *ghostProp = &platformProp->ghostProp;
    DistWorldGhostPropTemplate *ghostPropTemplate = &ghostProp->template;
    BOOL slowDownAnimation = FALSE;
    u32 mapHeaderID = DistWorldSystem_GetMapHeaderID(ghostProp->system);

    if (ghostProp->template.propKind == PROP_KIND_SMALL_PLATFORM && mapHeaderID == ghostProp->mapHeaderID) {
        int startIdx = 0;
        int ghostPropTileY = ghostProp->template.tileY * 2;
        const MapObjectManager *mapObjMan = ghostProp->system->fieldSystem->mapObjMan;
        MapObject *mapObj;

        while (MapObjectMan_FindObjectWithStatus(mapObjMan, &mapObj, &startIdx, MAP_OBJ_STATUS_0) == TRUE) {
            if (MapObject_GetY(mapObj) == ghostPropTileY && MapObject_GetZ(mapObj) == ghostProp->template.tileZ && MapObject_GetX(mapObj) == ghostProp->template.tileX) {
                slowDownAnimation = TRUE;
                break;
            }
        }
    }

    platformProp->yOffset = sPlatformPropAnimOffsets[platformProp->animProgress / FX32_ONE % 8];

    if (slowDownAnimation == TRUE) {
        platformProp->yOffset >>= 1;
    }

    platformProp->animProgress += platformProp->animDelta;

    if (platformProp->animProgress < 0) {
        platformProp->animProgress = 0;
        platformProp->animDelta = PLATFORM_PROP_ANIM_DELTA;
    } else if (platformProp->animProgress >= FX32_ONE * 8) {
        platformProp->animProgress = FX32_ONE * 8 - PLATFORM_PROP_ANIM_DELTA;
        platformProp->animDelta = -PLATFORM_PROP_ANIM_DELTA;
    }

    BOOL ghostPropHidden;

    if (DistWorldSystem_GetMapHeaderID(ghostProp->system) == ghostProp->mapHeaderID) {
        ghostPropHidden = IsActiveGhostPropGroupHidden(ghostProp->system, ghostPropTemplate->groupID);
    } else {
        ghostPropHidden = IsInactiveGhostPropGroupHidden(ghostProp->system, ghostPropTemplate->groupID);
    }

    if (ghostPropHidden == TRUE) {
        if (platformProp->opacity > GHOST_PROP_OPACITY_MIN) {
            platformProp->opacity--;

            if (platformProp->soundEffectState != PLATFORM_PROP_SFX_STATE_DISAPPEAR) {
                platformProp->soundEffectState = PLATFORM_PROP_SFX_STATE_DISAPPEAR;
                PlaySoundIfNotActive(SEQ_SE_PL_SYUWA3);
            }
        }
    } else if (platformProp->opacity < GHOST_PROP_OPACITY_MAX) {
        platformProp->opacity++;

        if (platformProp->soundEffectState != PLATFORM_PROP_SFX_STATE_APPEAR) {
            platformProp->soundEffectState = PLATFORM_PROP_SFX_STATE_APPEAR;
            PlaySoundIfNotActive(SEQ_SE_PL_SYUWA3);
        }
    }

    platformProp->currentPos = platformProp->initialPos;
    platformProp->currentPos.y += platformProp->yOffset;
    platformProp->inView = IsPropInView(ghostProp->system, ghostProp->template.propKind, &platformProp->currentPos);
}

static void DistWorldPlatformProp_AnimRender(OverworldAnimManager *animMan, void *context)
{
    DistWorldPlatformProp *platformProp = context;

    if (!platformProp->inView) {
        return;
    }

    if (platformProp->opacity > GHOST_PROP_OPACITY_MIN) {
        DistWorldGhostProp *ghostProp = &platformProp->ghostProp;

        SetPropOpacity(ghostProp->system, ghostProp->template.propKind, platformProp->opacity);
        Simple3D_DrawRenderObjWithPos(&platformProp->renderer->renderObj, &platformProp->currentPos);
    }
}

static BOOL DistWorldObstacleProp_AnimInit(OverworldAnimManager *animMan, void *context)
{
    DistWorldGhostPropTemplate *ghostPropTemplate;
    DistWorldObstacleProp *obstacleProp = context;
    const DistWorldGhostProp *ghostProp = OverworldAnimManager_GetUserData(animMan);

    obstacleProp->ghostProp = *ghostProp;
    ghostPropTemplate = &obstacleProp->ghostProp.template;

    OverworldAnimManager_SetDistWorldGhostPropKind(animMan, ghostPropTemplate->propKind);

    BOOL rendererAlreadyInit;
    obstacleProp->renderer = DistWorldPropRenderer_Init(ghostProp->system, ghostPropTemplate->propKind, &rendererAlreadyInit);

    if (!rendererAlreadyInit) {
        LoadRenderBuffersForProp(obstacleProp->ghostProp.system, ghostPropTemplate->propKind, &obstacleProp->renderer->renderObj, &obstacleProp->renderer->animation);
    }

    if (ghostPropTemplate->propKind == PROP_KIND_LAND_ROCK) {
        obstacleProp->seqIDAppear = SEQ_SE_PL_FW089_2;
        obstacleProp->seqIDDisappear = SEQ_SE_PL_FW089_2;
    } else {
        obstacleProp->seqIDAppear = SEQ_SE_PL_MEKI;
        obstacleProp->seqIDDisappear = SEQ_SE_PL_MEKI2;
    }

    BOOL ghostPropGroupHidden;

    if (DistWorldSystem_GetMapHeaderID(ghostProp->system) == ghostProp->mapHeaderID) {
        ghostPropGroupHidden = IsActiveGhostPropGroupHidden(ghostProp->system, ghostPropTemplate->groupID);
    } else {
        ghostPropGroupHidden = IsInactiveGhostPropGroupHidden(ghostProp->system, ghostPropTemplate->groupID);
    }

    if (ghostPropGroupHidden == TRUE) {
        obstacleProp->opacity = GHOST_PROP_OPACITY_MIN;
    } else {
        obstacleProp->opacity = GHOST_PROP_OPACITY_MAX;
        Simple3D_SetAnimFrame(&obstacleProp->renderer->animation, Simple3D_GetAnimFrameCount(&obstacleProp->renderer->animation));
    }

    VecFx32_SetPosFromMapCoords(ghostPropTemplate->tileX, ghostPropTemplate->tileZ, &obstacleProp->pos);
    obstacleProp->pos.y = MAP_OBJECT_COORD_CENTER_TO_FX32(ghostPropTemplate->tileY);

    const VecFx32 *initialPosOffset = &sPropInitialPosOffsetByKind[ghostPropTemplate->propKind];
    obstacleProp->pos.x += initialPosOffset->x;
    obstacleProp->pos.y += initialPosOffset->y;
    obstacleProp->pos.z += initialPosOffset->z;

    return TRUE;
}

static void DistWorldObstacleProp_AnimExit(OverworldAnimManager *animMan, void *context)
{
    DistWorldObstacleProp *obstacleProp = context;
    DistWorldGhostProp *ghostProp = &obstacleProp->ghostProp;

    if (DistWorldPropAnimInfo_IsAnimKindValid(ghostProp->template.propKind) == TRUE) {
        Simple3D_FreeAnimation(&obstacleProp->renderer->animation);
    }

    DistWorldPropRenderer_InvalidateAnimated(ghostProp->system, obstacleProp->renderer);
}

static void DistWorldObstacleProp_AnimTick(OverworldAnimManager *animMan, void *context)
{
    DistWorldObstacleProp *obstacleProp = context;
    DistWorldGhostProp *ghostProp = &obstacleProp->ghostProp;
    DistWorldGhostPropTemplate *ghostPropTemplate = &ghostProp->template;

    BOOL ghostPropGroupHidden;

    if (DistWorldSystem_GetMapHeaderID(ghostProp->system) == ghostProp->mapHeaderID) {
        ghostPropGroupHidden = IsActiveGhostPropGroupHidden(ghostProp->system, ghostPropTemplate->groupID);
    } else {
        ghostPropGroupHidden = IsInactiveGhostPropGroupHidden(ghostProp->system, ghostPropTemplate->groupID);
    }

    if (ghostPropGroupHidden == TRUE) {
        Simple3D_UpdateAnim(&obstacleProp->renderer->animation, -FX32_ONE * 2, FALSE);
        fx32 animFrame = Simple3D_GetAnimFrame(&obstacleProp->renderer->animation);

        if (obstacleProp->opacity >= animFrame / FX32_ONE) {
            if (obstacleProp->opacity > GHOST_PROP_OPACITY_MIN) {
                obstacleProp->opacity -= OBSTACLE_PROP_ANIM_DELTA;

                if (obstacleProp->soundEffectState != OBSTACLE_PROP_SFX_STATE_DISAPPEAR) {
                    obstacleProp->soundEffectState = OBSTACLE_PROP_SFX_STATE_DISAPPEAR;
                    PlaySoundIfNotActive(obstacleProp->seqIDDisappear);
                }

                if (obstacleProp->opacity < GHOST_PROP_OPACITY_MIN) {
                    obstacleProp->opacity = GHOST_PROP_OPACITY_MIN;
                }
            } else {
                obstacleProp->opacity = GHOST_PROP_OPACITY_MIN;
            }
        }
    } else {
        if (obstacleProp->opacity < GHOST_PROP_OPACITY_MAX) {
            obstacleProp->opacity += OBSTACLE_PROP_ANIM_DELTA;

            if (obstacleProp->soundEffectState != OBSTACLE_PROP_SFX_STATE_APPEAR) {
                obstacleProp->soundEffectState = OBSTACLE_PROP_SFX_STATE_APPEAR;
                PlaySoundIfNotActive(obstacleProp->seqIDAppear);
            }

            if (obstacleProp->opacity > GHOST_PROP_OPACITY_MAX) {
                obstacleProp->opacity = GHOST_PROP_OPACITY_MAX;
            }
        } else {
            obstacleProp->opacity = GHOST_PROP_OPACITY_MAX;
        }

        Simple3D_UpdateAnim(&obstacleProp->renderer->animation, FX32_ONE * 2, FALSE);
    }

    obstacleProp->inView = IsPropInView(ghostProp->system, ghostProp->template.propKind, &obstacleProp->pos);
}

static void DistWorldObstacleProp_AnimRender(OverworldAnimManager *animMan, void *context)
{
    DistWorldObstacleProp *obstacleProp = context;

    if (!obstacleProp->inView) {
        return;
    }

    if (obstacleProp->opacity > GHOST_PROP_OPACITY_MIN) {
        DistWorldGhostProp *ghostProp = &obstacleProp->ghostProp;

        SetPropOpacity(ghostProp->system, ghostProp->template.propKind, obstacleProp->opacity);
        Simple3D_DrawRenderObjWithPos(&obstacleProp->renderer->renderObj, &obstacleProp->pos);
    }
}

static void ov9_0224BE14(DistWorldSystem *param0)
{
    enum MapHeader mapHeaderID;
    const DistWorldMapConnections *v1;

    mapHeaderID = DistWorldSystem_GetMapHeaderID(param0);
    v1 = GetConnectionsForMap(mapHeaderID);

    ov9_0224BFBC(param0);
    ov9_0224C0F8(param0, mapHeaderID, v1->nextID);

    InitFloatingPlatformManager(param0);
    InitFloatingPlatformJumpPoint(param0);
    InitCameraAngleTemplates(param0);
    InitAllGhostPropData(param0);

    if (IsPersistedDataValid(param0) == 0) {
        int v2, v3, v4;

        GetPlayerPos(param0, &v2, &v3, &v4);
        FindAndPrepareNewCurrentFloatingPlatform(param0, v2, v3, v4, 4);
    } else {
        u32 v5 = GetPersistedCurrentFloatingPlatformIndex(param0);
        PrepareNewCurrentFloatingPlatform(param0, v5);
    }
}

static void ov9_0224BE8C(DistWorldSystem *param0)
{
    ResetCameraAngleTemplates(param0);
    ResetFloatingPlatformJumpPoint(param0);
    ResetFloatingPlatformManager(param0);
    ResetAllGhostPropData(param0);
    ov9_0224C164(param0);
    ov9_0224BFFC(param0);
}

static void ov9_0224BEB4(DistWorldSystem *param0, u32 param1)
{
    ResetInactiveGhostPropData(param0);
    ov9_0224C184(param0);
    ResetCameraAngleTemplates(param0);
    ResetFloatingPlatformJumpPoint(param0);
    ResetFloatingPlatformManager(param0);
    ov9_0224C194(param0);
    MoveActiveGhostPropDataToInactive(param0);
    MoveActiveGhostPropManagerToInactive(param0);
    ResetActiveGhostPropManager(param0);
    ov9_0224C10C(param0, param1);
    InitFloatingPlatformManager(param0);
    FreeFloatingPlatformManagerTerrainAttrs(param0);
    InitFloatingPlatformJumpPoint(param0);
    InitCameraAngleTemplates(param0);
    InitActiveGhostPropData(param0);
}

static void ov9_0224BF18(DistWorldSystem *param0, u32 param1)
{
    ResetCameraAngleTemplates(param0);
    ResetFloatingPlatformJumpPoint(param0);
    ResetFloatingPlatformManager(param0);
    ResetActiveGhostPropData(param0);
    ov9_0224C174(param0);
    ov9_0224C1E4(param0);
    MoveInactiveGhostPropDataToActive(param0);
    MoveInactiveGhostPropManagerToActive(param0);
    PersistActiveHiddenGhostPropGroups(param0);
    ResetInactiveGhostPropManager(param0);
    InitFloatingPlatformManager(param0);
    FreeFloatingPlatformManagerTerrainAttrs(param0);
    InitFloatingPlatformJumpPoint(param0);
    InitCameraAngleTemplates(param0);

    if (param1 != 593) {
        ov9_0224C120(param0, param1);
        InitInactiveGhostPropData(param0);
    }
}

static void ov9_0224BF8C(NARC *distortionWorldNARC, UnkStruct_ov9_0224BFE0 *param1)
{
    u32 v0 = NARC_GetMemberSize(distortionWorldNARC, 0);

    param1->unk_08 = Heap_Alloc(HEAP_ID_FIELD1, v0);
    NARC_ReadWholeMember(distortionWorldNARC, 0, param1->unk_08);

    param1->unk_00 = *(int *)param1->unk_08;
    param1->unk_04 = param1->unk_08;

    (u8 *)param1->unk_04 += 4;
}

static void ov9_0224BFBC(DistWorldSystem *param0)
{
    GF_ASSERT(param0->unk_169C.unk_00.unk_08 == NULL);
    ov9_0224BF8C(param0->distortionWorldNARC, &param0->unk_169C.unk_00);
}

static void ov9_0224BFE0(UnkStruct_ov9_0224BFE0 *param0)
{
    GF_ASSERT(param0->unk_08 != NULL);

    Heap_Free(param0->unk_08);
    param0->unk_08 = NULL;
}

static void ov9_0224BFFC(DistWorldSystem *param0)
{
    ov9_0224BFE0(&param0->unk_169C.unk_00);
}

static const UnkStruct_ov9_0224C034 *ov9_0224C00C(const UnkStruct_ov9_0224BFE0 *param0, enum MapHeader mapHeaderID)
{
    int v0 = 0;
    const UnkStruct_ov9_0224C034 *v1 = param0->unk_04;

    while (v0 < param0->unk_00) {
        if (mapHeaderID == v1->mapHeaderID) {
            return v1;
        }

        v1++;
        v0++;
    }

    GF_ASSERT(0);

    return NULL;
}

static const UnkStruct_ov9_0224C034 *ov9_0224C034(DistWorldSystem *system, enum MapHeader mapHeaderID)
{
    return ov9_0224C00C(&system->unk_169C.unk_00, mapHeaderID);
}

static u32 FindNARCIndex(DistWorldSystem *system, enum MapHeader mapHeaderID)
{
    const UnkStruct_ov9_0224C034 *v0 = ov9_0224C034(system, mapHeaderID);
    return v0->unk_04 + 1;
}

static void ov9_0224C050(const UnkStruct_ov9_0224BFE0 *param0, int param1, int *param2, int *param3, int *param4)
{
    const UnkStruct_ov9_0224C034 *v0 = ov9_0224C00C(param0, param1);

    *param2 = v0->unk_06;
    *param3 = v0->unk_08;
    *param4 = v0->unk_0A;
}

static void ov9_0224C070(DistWorldSystem *param0, int param1, int *param2, int *param3, int *param4)
{
    ov9_0224C050(&param0->unk_169C.unk_00, param1, param2, param3, param4);
}

static void DistWorldFile_Load(DistWorldSystem *system, DistWorldFile *file, enum MapHeader mapHeaderID)
{
    GF_ASSERT(file->buffer == NULL);

    memset(file, 0, sizeof(DistWorldFile));
    file->mapHeaderID = mapHeaderID;

    if (mapHeaderID != MAP_HEADER_COUNT) {
        u8 *data;
        u32 narcMemberSize, narcIndex;
        DistWorldFileHeader *header;

        narcIndex = FindNARCIndex(system, mapHeaderID);
        narcMemberSize = NARC_GetMemberSize(system->distortionWorldNARC, narcIndex);

        file->buffer = Heap_AllocAtEnd(HEAP_ID_FIELD1, narcMemberSize);
        NARC_ReadWholeMember(system->distortionWorldNARC, narcIndex, file->buffer);

        header = file->buffer;
        file->header = header;

        data = file->buffer;
        data += sizeof(DistWorldFileHeader);

        file->floatingPlatformSection = (DistWorldFileFloatingPlatformSection *)data;
        file->floatingPlatformJumpPointSection = (DistWorldFileFloatingPlatformJumpPointSection *)((u8 *)file->floatingPlatformSection + header->floatingPlatformSectionSize);
        file->cameraAngleSection = (DistWorldFileCameraAngleSection *)((u8 *)file->floatingPlatformJumpPointSection + header->floatingPlatformJumpPointSectionSize);
        file->ghostPropSection = (u8 *)file->cameraAngleSection + header->cameraAngleSectionSize;
    }
}

static void ov9_0224C0F8(DistWorldSystem *param0, enum MapHeader mapHeaderID, int param2)
{
    ov9_0224C10C(param0, mapHeaderID);
    ov9_0224C120(param0, param2);
}

static void ov9_0224C10C(DistWorldSystem *param0, enum MapHeader mapHeaderID)
{
    DistWorldFile_Load(param0, &param0->unk_169C.distortionWorldFile, mapHeaderID);
}

static void ov9_0224C120(DistWorldSystem *param0, enum MapHeader mapHeaderID)
{
    DistWorldFile_Load(param0, &param0->unk_169C.inactiveDistortionWorldFile, mapHeaderID);
}

static void DistWorldFile_Invalidate(DistWorldFile *file)
{
    memset(file, 0, sizeof(DistWorldFile));
    file->mapHeaderID = MAP_HEADER_COUNT;
}

static void DistWorldFile_Free(DistWorldFile *file)
{
    if (file->buffer != NULL) {
        Heap_Free(file->buffer);
    }

    DistWorldFile_Invalidate(file);
}

static void ov9_0224C164(DistWorldSystem *param0)
{
    ov9_0224C174(param0);
    ov9_0224C184(param0);
}

static void ov9_0224C174(DistWorldSystem *param0)
{
    DistWorldFile_Free(&param0->unk_169C.distortionWorldFile);
}

static void ov9_0224C184(DistWorldSystem *param0)
{
    DistWorldFile_Free(&param0->unk_169C.inactiveDistortionWorldFile);
}

static void ov9_0224C194(DistWorldSystem *param0)
{
    GF_ASSERT(param0->unk_169C.inactiveDistortionWorldFile.mapHeaderID == MAP_HEADER_COUNT);
    GF_ASSERT(param0->unk_169C.inactiveDistortionWorldFile.buffer == NULL);

    param0->unk_169C.inactiveDistortionWorldFile = param0->unk_169C.distortionWorldFile;

    DistWorldFile_Invalidate(&param0->unk_169C.distortionWorldFile);
}

static void ov9_0224C1E4(DistWorldSystem *param0)
{
    GF_ASSERT(param0->unk_169C.distortionWorldFile.mapHeaderID == MAP_HEADER_COUNT);
    GF_ASSERT(param0->unk_169C.distortionWorldFile.buffer == NULL);

    param0->unk_169C.distortionWorldFile = param0->unk_169C.inactiveDistortionWorldFile;
    DistWorldFile_Invalidate(&param0->unk_169C.inactiveDistortionWorldFile);
}

static int DistWorldFile_GetFloatingPlatformSectionSize(DistWorldFile *file)
{
    return file->header->floatingPlatformSectionSize;
}

static int DistWorldFile_GetFloatingPlatformCount(DistWorldFile *file)
{
    return file->floatingPlatformSection->count;
}

static DistWorldFloatingPlatformTemplate *DistWorldFile_GetFloatingPlatformSectionTemplates(DistWorldFile *file)
{
    u8 *templates = (u8 *)file->floatingPlatformSection;
    templates += sizeof(file->floatingPlatformSection->count);

    return (DistWorldFloatingPlatformTemplate *)templates;
}

static int DistWorldFile_GetFloatingPlatformJumpPointSectionSize(DistWorldFile *file)
{
    return file->header->floatingPlatformJumpPointSectionSize;
}

static int DistWorldFile_GetFloatingPlatformJumpPointCount(DistWorldFile *file)
{
    return file->floatingPlatformJumpPointSection->count;
}

static DistWorldFloatingPlatformJumpPointTemplate *DistWorldFile_GetFloatingPlatformJumpPointTemplates(DistWorldFile *file)
{
    u8 *templates = (u8 *)file->floatingPlatformJumpPointSection;
    templates += sizeof(file->floatingPlatformJumpPointSection->count);

    return (DistWorldFloatingPlatformJumpPointTemplate *)templates;
}

static int DistWorldFile_GetCameraAngleSectionSize(DistWorldFile *file)
{
    return file->header->cameraAngleSectionSize;
}

static int DistWorldFile_GetCameraAngleCount(DistWorldFile *file)
{
    return file->cameraAngleSection->count;
}

static DistWorldCameraAngleTemplate *DistWorldFile_GetCameraAngleTemplates(DistWorldFile *file)
{
    u8 *templates = (u8 *)file->cameraAngleSection;
    templates += sizeof(int);

    return (DistWorldCameraAngleTemplate *)templates;
}

static int GetActiveGhostPropFileSectionSize(DistWorldSystem *system)
{
    return system->unk_169C.distortionWorldFile.header->ghostPropSectionSize;
}

static int GetInactiveGhostPropFileSectionSize(DistWorldSystem *system)
{
    int ghostPropSectionSize = 0;
    DistWorldFile *inactiveFile = &system->unk_169C.inactiveDistortionWorldFile;

    if (inactiveFile->mapHeaderID != MAP_HEADER_INVALID) {
        ghostPropSectionSize = inactiveFile->header->ghostPropSectionSize;
    }

    return ghostPropSectionSize;
}

static const DistWorldGhostPropHeader *DistWorldFile_GetGhostPropHeader(DistWorldFile *file)
{
    return file->ghostPropSection;
}

static const DistWorldGhostPropTemplate *DistWorldFile_GetGhostPropTemplates(DistWorldFile *file)
{
    const u8 *templates = file->ghostPropSection;
    templates += sizeof(DistWorldGhostPropHeader);

    return (DistWorldGhostPropTemplate *)templates;
}

static const DistWorldGhostPropTrigger *DistWorldFile_GetGhostPropTriggers(DistWorldFile *file)
{
    const DistWorldGhostPropHeader *header = file->ghostPropSection;
    const u8 *triggers = file->ghostPropSection;

    triggers += sizeof(DistWorldGhostPropHeader) + (sizeof(DistWorldGhostPropTemplate) * header->templateCount);
    return (DistWorldGhostPropTrigger *)triggers;
}

static void InitFloatingPlatformManager(DistWorldSystem *system)
{
    DistWorldFile *file = &system->unk_169C.distortionWorldFile;

    GF_ASSERT(system->unk_169C.floatingPlatformMan.templates == NULL);

    if (DistWorldFile_GetFloatingPlatformSectionSize(file)) {
        DistWorldFloatingPlatformManager *floatingPlatformMan = &system->unk_169C.floatingPlatformMan;

        floatingPlatformMan->platformCount = DistWorldFile_GetFloatingPlatformCount(file);
        floatingPlatformMan->templates = DistWorldFile_GetFloatingPlatformSectionTemplates(file);
    }
}

static void ResetFloatingPlatformManager(DistWorldSystem *system)
{
    DistWorldFloatingPlatformManager *floatingPlatformMan = &system->unk_169C.floatingPlatformMan;

    if (floatingPlatformMan->terrainAttributes != NULL) {
        Heap_Free(floatingPlatformMan->terrainAttributes);
    }

    memset(floatingPlatformMan, 0, sizeof(DistWorldFloatingPlatformManager));
}

static BOOL HasFloatingPlatformAtCoords(DistWorldSystem *system, int tileX, int tileY, int tileZ, s16 floatingPlatformKind)
{
    DistWorldFloatingPlatformManager *floatingPlatformMan = &system->unk_169C.floatingPlatformMan;
    const DistWorldFloatingPlatformTemplate *floatingPlatformTemplateIter = floatingPlatformMan->templates;
    int i = 0;
    int floatingPlatformCount = floatingPlatformMan->platformCount;

    if (floatingPlatformCount == 0) {
        return FALSE;
    }

    do {
        if (DistWorldBounds_AreCoordinatesInBounds(tileX, tileY, tileZ, &floatingPlatformTemplateIter->bounds) == TRUE) {
            if (floatingPlatformKind != FLOATING_PLATFORM_KIND_INVALID || floatingPlatformKind == floatingPlatformTemplateIter->kind) {
                return TRUE;
            }
        }

        floatingPlatformTemplateIter++;
        i++;
    } while (i < floatingPlatformCount);

    return FALSE;
}

static void FindAndPrepareNewCurrentFloatingPlatform(DistWorldSystem *system, int tileX, int tileY, int tileZ, s16 floatingPlatformKind)
{
    DistWorldFloatingPlatformManager *floatingPlatformMan = &system->unk_169C.floatingPlatformMan;
    const DistWorldFloatingPlatformTemplate *floatingPlatformTemplateIter = floatingPlatformMan->templates;
    int i = 0;
    int floatingPlatformCount = floatingPlatformMan->platformCount;

    floatingPlatformMan->currentPlatformIndex = floatingPlatformCount;
    SetPersistedCurrentFloatingPlatformIndex(system, floatingPlatformCount);

    if (floatingPlatformMan->terrainAttributes != NULL) {
        Heap_Free(floatingPlatformMan->terrainAttributes);
        floatingPlatformMan->terrainAttributes = NULL;
    }

    if (floatingPlatformCount == 0) {
        return;
    }

    do {
        if (DistWorldBounds_AreCoordinatesInBounds(tileX, tileY, tileZ, &floatingPlatformTemplateIter->bounds) == TRUE) {
            if (floatingPlatformKind == FLOATING_PLATFORM_KIND_INVALID || floatingPlatformKind == floatingPlatformTemplateIter->kind) {
                floatingPlatformMan->currentPlatformIndex = i;
                SetPersistedCurrentFloatingPlatformIndex(system, i);
                LoadFloatingPlatformTerrainAttributes(system, floatingPlatformTemplateIter->distortionWorldAttrID);

                return;
            }
        }

        floatingPlatformTemplateIter++;
        i++;
    } while (i < floatingPlatformCount);
}

static void PrepareNewCurrentFloatingPlatform(DistWorldSystem *system, u32 floatingPlatformIndex)
{
    DistWorldFloatingPlatformManager *floatingPlatformMan = &system->unk_169C.floatingPlatformMan;
    const DistWorldFloatingPlatformTemplate *floatingPlatformTemplates = floatingPlatformMan->templates;
    int floatingPlatformCount = floatingPlatformMan->platformCount;

    floatingPlatformMan->currentPlatformIndex = floatingPlatformCount;

    if (floatingPlatformMan->terrainAttributes != NULL) {
        Heap_Free(floatingPlatformMan->terrainAttributes);
        floatingPlatformMan->terrainAttributes = NULL;
    }

    if (floatingPlatformCount == 0 || floatingPlatformIndex < 0 || floatingPlatformIndex >= floatingPlatformCount) {
        SetPersistedCurrentFloatingPlatformIndex(system, floatingPlatformCount);
        return;
    }

    floatingPlatformMan->currentPlatformIndex = floatingPlatformIndex;

    SetPersistedCurrentFloatingPlatformIndex(system, floatingPlatformIndex);
    LoadFloatingPlatformTerrainAttributes(system, floatingPlatformTemplates[floatingPlatformIndex].distortionWorldAttrID);
}

static void FreeFloatingPlatformManagerTerrainAttrs(DistWorldSystem *system)
{
    DistWorldFloatingPlatformManager *floatingPlatformMan = &system->unk_169C.floatingPlatformMan;

    floatingPlatformMan->currentPlatformIndex = floatingPlatformMan->platformCount;
    SetPersistedCurrentFloatingPlatformIndex(system, floatingPlatformMan->platformCount);

    if (floatingPlatformMan->terrainAttributes != NULL) {
        Heap_Free(floatingPlatformMan->terrainAttributes);
        floatingPlatformMan->terrainAttributes = NULL;
    }
}

static u32 GetCurrentFloatingPlatformKind2(DistWorldSystem *system)
{
    DistWorldFloatingPlatformManager *floatingPlatformMan = &system->unk_169C.floatingPlatformMan;
    int floatingPlatformCount = floatingPlatformMan->platformCount;

    if (floatingPlatformMan->platformCount == 0 || floatingPlatformMan->currentPlatformIndex >= floatingPlatformMan->platformCount) {
        return FLOATING_PLATFORM_KIND_INVALID;
    }

    const DistWorldFloatingPlatformTemplate *currentFloatingPlatform = &floatingPlatformMan->templates[floatingPlatformMan->currentPlatformIndex];
    return currentFloatingPlatform->kind;
}

static u32 GetCurrentFloatingPlatformKind(DistWorldSystem *system)
{
    DistWorldFloatingPlatformManager *floatingPlatformMan = &system->unk_169C.floatingPlatformMan;
    int floatingPlatformCount = floatingPlatformMan->platformCount;

    if (floatingPlatformMan->platformCount == 0 || floatingPlatformMan->currentPlatformIndex >= floatingPlatformMan->platformCount) {
        return FLOATING_PLATFORM_KIND_INVALID;
    }

    const DistWorldFloatingPlatformTemplate *currentFloatingPlatform = &floatingPlatformMan->templates[floatingPlatformMan->currentPlatformIndex];
    return currentFloatingPlatform->kind;
}

static u32 GetCurrentFloatingPlatformKindSafely(DistWorldSystem *system, int tileX, int tileY, int tileZ)
{
    DistWorldFloatingPlatformManager *floatingPlatformMan = &system->unk_169C.floatingPlatformMan;
    int floatingPlatformCount = floatingPlatformMan->platformCount;

    if (floatingPlatformMan->platformCount == 0 || floatingPlatformMan->currentPlatformIndex >= floatingPlatformMan->platformCount) {
        return FLOATING_PLATFORM_KIND_INVALID;
    }

    const DistWorldFloatingPlatformTemplate *currentFloatingPlatform = &floatingPlatformMan->templates[floatingPlatformMan->currentPlatformIndex];

    if (DistWorldBounds_AreCoordinatesInBounds(tileX, tileY, tileZ, &currentFloatingPlatform->bounds) == FALSE) {
        return FLOATING_PLATFORM_KIND_FLOOR;
    }

    return currentFloatingPlatform->kind;
}

static void LoadFloatingPlatformTerrainAttributes(DistWorldSystem *system, u32 distortionWorldAttrID)
{
    DistWorldFloatingPlatformManager *floatingPlatformMan = &system->unk_169C.floatingPlatformMan;

    if (floatingPlatformMan->terrainAttributes != NULL) {
        Heap_Free(floatingPlatformMan->terrainAttributes);
    }

    floatingPlatformMan->terrainAttributesSize = NARC_GetMemberSize(system->distortionWorldAttrNARC, distortionWorldAttrID);
    floatingPlatformMan->terrainAttributes = Heap_AllocAtEnd(HEAP_ID_FIELD1, floatingPlatformMan->terrainAttributesSize);

    NARC_ReadWholeMember(system->distortionWorldAttrNARC, distortionWorldAttrID, floatingPlatformMan->terrainAttributes);
}

static u16 GetCurrentFloatingPlatformTileAttributesRelative(DistWorldSystem *system, int tileRelativeVerticalPos, int tileRelativeHorizontalPos)
{
    DistWorldFloatingPlatformManager *floatingPlatformMan = &system->unk_169C.floatingPlatformMan;
    const DistWorldFloatingPlatformTemplate *currentFloatingPlatform = &floatingPlatformMan->templates[floatingPlatformMan->currentPlatformIndex];

    GF_ASSERT(floatingPlatformMan->terrainAttributes != NULL);
    return floatingPlatformMan->terrainAttributes[tileRelativeVerticalPos + (tileRelativeHorizontalPos * currentFloatingPlatform->tileCountVertical)];
}

static u16 GetCurrentFloatingPlatformTileAttributes(DistWorldSystem *system, int tileX, int tileY, int tileZ)
{
    int tileRelativeVerticalPos = 0;
    int tileRelativeHorizontalPos = 0;
    DistWorldFloatingPlatformManager *floatingPlatformMan = &system->unk_169C.floatingPlatformMan;

    if (floatingPlatformMan->platformCount == 0 || floatingPlatformMan->currentPlatformIndex >= floatingPlatformMan->platformCount) {
        return INVALID_TERRAIN_ATTRIBUTES;
    }

    DistWorldFloatingPlatformTemplate *currentFloatingPlatform = &floatingPlatformMan->templates[floatingPlatformMan->currentPlatformIndex];

    if (DistWorldBounds_AreCoordinatesInBounds(tileX, tileY, tileZ, &currentFloatingPlatform->bounds) == 0) {
        return OUT_OF_BOUNDS_TERRAIN_ATTRIBUTES;
    }

    GF_ASSERT(floatingPlatformMan->terrainAttributes != NULL);

    switch (currentFloatingPlatform->kind) {
    case FLOATING_PLATFORM_KIND_FLOOR:
        tileRelativeVerticalPos = tileX - currentFloatingPlatform->bounds.startTileX;
        tileRelativeHorizontalPos = tileZ - currentFloatingPlatform->bounds.startTileZ;
        break;
    case FLOATING_PLATFORM_KIND_WEST_WALL:
        tileRelativeVerticalPos = currentFloatingPlatform->bounds.sizeY - (tileY - currentFloatingPlatform->bounds.startTileY);
        tileRelativeHorizontalPos = tileZ - currentFloatingPlatform->bounds.startTileZ;
        break;
    case FLOATING_PLATFORM_KIND_EAST_WALL:
        tileRelativeVerticalPos = tileY - currentFloatingPlatform->bounds.startTileY;
        tileRelativeHorizontalPos = tileZ - currentFloatingPlatform->bounds.startTileZ;
        break;
    case FLOATING_PLATFORM_KIND_CEILING:
        tileRelativeVerticalPos = currentFloatingPlatform->bounds.sizeX - (tileX - currentFloatingPlatform->bounds.startTileX);
        tileRelativeHorizontalPos = tileZ - currentFloatingPlatform->bounds.startTileZ;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return GetCurrentFloatingPlatformTileAttributesRelative(system, tileRelativeVerticalPos, tileRelativeHorizontalPos);
}

static void InitFloatingPlatformJumpPoint(DistWorldSystem *system)
{
    DistWorldFile *file = &system->unk_169C.distortionWorldFile;

    GF_ASSERT(system->unk_169C.floatingPlatformJumpPoints.templates == NULL);

    if (DistWorldFile_GetFloatingPlatformJumpPointSectionSize(file)) {
        DistWorldFileFloatingPlatformJumpPointSection *floatingPlatformJumpPoints = &system->unk_169C.floatingPlatformJumpPoints;

        floatingPlatformJumpPoints->count = DistWorldFile_GetFloatingPlatformJumpPointCount(file);
        floatingPlatformJumpPoints->templates = DistWorldFile_GetFloatingPlatformJumpPointTemplates(file);
    }
}

static void ResetFloatingPlatformJumpPoint(DistWorldSystem *system)
{
    DistWorldFileFloatingPlatformJumpPointSection *floatingPlatformJumpPoints = &system->unk_169C.floatingPlatformJumpPoints;
    memset(floatingPlatformJumpPoints, 0, sizeof(DistWorldFileFloatingPlatformJumpPointSection));
}

static const DistWorldFloatingPlatformJumpPointTemplate *FindFloatingPlatformJumpPointAt(DistWorldSystem *system, int playerX, int playerY, int playerZ, enum FaceDirection playerDir)
{
    DistWorldFileFloatingPlatformJumpPointSection *floatingPlatformJumpPoints = &system->unk_169C.floatingPlatformJumpPoints;
    DistWorldFloatingPlatformJumpPointTemplate *iter = floatingPlatformJumpPoints->templates;
    int i = floatingPlatformJumpPoints->count;

    while (i) {
        if (playerDir == iter->playerDir) {
            if (DistWorldBounds_AreCoordinatesInBounds(playerX, playerY, playerZ, &iter->bounds)) {
                return iter;
            }
        }

        iter++;
        i--;
    }

    return NULL;
}

static void InitCameraAngleTemplates(DistWorldSystem *system)
{
    DistWorldFile *file = &system->unk_169C.distortionWorldFile;

    GF_ASSERT(system->unk_169C.cameraAngleTemplates.templates == NULL);

    if (DistWorldFile_GetCameraAngleSectionSize(file)) {
        DistWorldCameraAngleTemplates *cameraAngleTemplates = &system->unk_169C.cameraAngleTemplates;

        cameraAngleTemplates->count = DistWorldFile_GetCameraAngleCount(file);
        cameraAngleTemplates->templates = DistWorldFile_GetCameraAngleTemplates(file);
    }
}

static void ResetCameraAngleTemplates(DistWorldSystem *system)
{
    DistWorldCameraAngleTemplates *cameraAngleTemplates = &system->unk_169C.cameraAngleTemplates;
    memset(cameraAngleTemplates, 0, sizeof(DistWorldCameraAngleTemplates));
}

static const DistWorldCameraAngleTemplate *FindCameraAngleForPlayerPosition(DistWorldSystem *system, int playerX, int playerY, int playerZ, enum FaceDirection playerDir)
{
    DistWorldCameraAngleTemplates *cameraAngleTemplates = &system->unk_169C.cameraAngleTemplates;
    DistWorldCameraAngleTemplate *cameraAngleTemplateIter = cameraAngleTemplates->templates;
    int i = cameraAngleTemplates->count;

    while (i) {
        if (playerDir == cameraAngleTemplateIter->playerDir) {
            if (DistWorldBounds_AreCoordinatesInBounds(playerX, playerY, playerZ, &cameraAngleTemplateIter->bounds)) {
                return cameraAngleTemplateIter;
            }
        }

        cameraAngleTemplateIter++;
        i--;
    }

    return NULL;
}

static void DistWorldGhostPropData_InitFromFile(DistWorldFile *file, DistWorldGhostPropData *data)
{
    GF_ASSERT(data->header == NULL);
    GF_ASSERT(data->templates == NULL);
    GF_ASSERT(data->triggers == NULL);

    data->header = DistWorldFile_GetGhostPropHeader(file);
    data->templates = DistWorldFile_GetGhostPropTemplates(file);
    data->triggers = DistWorldFile_GetGhostPropTriggers(file);
}

static void InitActiveGhostPropData(DistWorldSystem *system)
{
    if (GetActiveGhostPropFileSectionSize(system)) {
        DistWorldFile *file = &system->unk_169C.distortionWorldFile;
        DistWorldGhostPropData *ghostPropData = &system->unk_169C.ghostPropData;

        DistWorldGhostPropData_InitFromFile(file, ghostPropData);
    }
}

static void InitInactiveGhostPropData(DistWorldSystem *system)
{
    if (GetInactiveGhostPropFileSectionSize(system)) {
        DistWorldFile *file = &system->unk_169C.inactiveDistortionWorldFile;
        DistWorldGhostPropData *ghostPropData = &system->unk_169C.inactiveGhostPropData;

        DistWorldGhostPropData_InitFromFile(file, ghostPropData);
    }
}

static void InitAllGhostPropData(DistWorldSystem *system)
{
    InitActiveGhostPropData(system);
    InitInactiveGhostPropData(system);
}

static void DistWorldGhostPropData_Reset(DistWorldGhostPropData *data)
{
    memset(data, 0, sizeof(DistWorldGhostPropData));
}

static void ResetActiveGhostPropData(DistWorldSystem *system)
{
    DistWorldGhostPropData_Reset(&system->unk_169C.ghostPropData);
}

static void ResetInactiveGhostPropData(DistWorldSystem *system)
{
    DistWorldGhostPropData_Reset(&system->unk_169C.inactiveGhostPropData);
}

static void ResetAllGhostPropData(DistWorldSystem *system)
{
    ResetActiveGhostPropData(system);
    ResetInactiveGhostPropData(system);
}

static void MoveActiveGhostPropDataToInactive(DistWorldSystem *system)
{
    system->unk_169C.inactiveGhostPropData = system->unk_169C.ghostPropData;
    DistWorldGhostPropData_Reset(&system->unk_169C.ghostPropData);
}

static void MoveInactiveGhostPropDataToActive(DistWorldSystem *system)
{
    system->unk_169C.ghostPropData = system->unk_169C.inactiveGhostPropData;
    DistWorldGhostPropData_Reset(&system->unk_169C.inactiveGhostPropData);
}

static const DistWorldGhostPropHeader *GetActiveGhostPropHeader(DistWorldSystem *system)
{
    return system->unk_169C.ghostPropData.header;
}

static const DistWorldGhostPropHeader *GetInactiveGhostPropHeader(DistWorldSystem *system)
{
    return system->unk_169C.inactiveGhostPropData.header;
}

static const DistWorldGhostPropTemplate *GetActiveGhostPropTemplates(DistWorldSystem *system)
{
    return system->unk_169C.ghostPropData.templates;
}

static const DistWorldGhostPropTemplate *GetInactiveGhostPropTemplates(DistWorldSystem *system)
{
    return system->unk_169C.inactiveGhostPropData.templates;
}

static const DistWorldGhostPropTrigger *GetActiveGhostPropTriggers(DistWorldSystem *system)
{
    return system->unk_169C.ghostPropData.triggers;
}

static void ov9_0224C8E8(DistWorldSystem *param0)
{
    enum MapHeader mapHeaderID, v1;
    UnkStruct_ov9_0224C8E8 *v2 = &param0->unk_1E88;
    FieldSystem *fieldSystem = param0->fieldSystem;
    const DistWorldMapConnections *v4, *v5;

    mapHeaderID = DistWorldSystem_GetMapHeaderID(param0);
    v4 = GetConnectionsForMap(mapHeaderID);
    v1 = v4->nextID;

    if (v1 == MAP_HEADER_INVALID) {
        return;
    }

    v5 = GetConnectionsForMap(v1);
    v2->unk_00 = v1;

    {
        v2->unk_10 = MapMatrix_NewWithHeapID(4);
        MapMatrix_Load(v1, v2->unk_10);
    }

    {
        v2->unk_14 = fieldSystem->areaDataManager;
    }

    {
        NARC *v6 = LandDataManager_GetLandDataNARC(fieldSystem->landDataMan);

        v2->unk_18 = LandDataManager_DistortionWorldNew(v2->unk_10, v2->unk_14, v6);
        LandDataManager_TrackTarget(PlayerAvatar_PosVector(fieldSystem->playerAvatar), v2->unk_18);
    }

    {
        LandDataManager_SetInDistortionWorld(v2->unk_18, 1);
        LandDataManager_SetSkipMapProps(v2->unk_18, 1);
    }

    {
        int v7, v8, v9;

        ov9_0224C070(param0, v1, &v7, &v8, &v9);
        LandDataManager_DistortionWorldSetOffsets(v2->unk_18, v7, v8, v9);
    }

    {
        int v10 = Player_GetXPos(fieldSystem->playerAvatar);
        int v11 = Player_GetZPos(fieldSystem->playerAvatar);

        LandDataManager_DistortionWorldInitialLoad(v2->unk_18, v10, v11);
        v2->unk_08 = 1;
    }

    v2->unk_04 = 1;

    if (IsPersistedDataValid(param0) == 0) {
        VecFx32 v12, v13;
        MapObject *v14 = Player_MapObject(fieldSystem->playerAvatar);

        MapObject_GetPosPtr(v14, &v13);
        LandDataManager_GetOffset(fieldSystem->landDataMan, &v12);

        v13.y = v12.y + ((1 << 4) * FX32_ONE);

        MapObject_SetPos(v14, &v13);
        MapObject_SetYPrev(v14, MapObject_GetY(v14));
        MapObject_SetY(v14, (((v13.y) >> 3) / FX32_ONE));
    }
}

static void ov9_0224C9E8(DistWorldSystem *param0)
{
    UnkStruct_ov9_0224C8E8 *v0 = &param0->unk_1E88;

    if (v0->unk_04) {
        LandDataManager_ForgetTrackedTarget(v0->unk_18);
        LandDataManager_DistortionWorldEnd(v0->unk_18);

        if (v0->unk_14 != NULL) {
            v0->unk_14 = NULL;
        }

        if (v0->unk_18 != NULL) {
            LandDataManager_DistortionWorldFreeLoadedMapBuffers(v0->unk_18);
            v0->unk_18 = NULL;
        }

        if (v0->unk_10 != NULL) {
            MapMatrix_Free(v0->unk_10);
            v0->unk_10 = NULL;
        }

        v0->unk_04 = 0;
    }
}

static void ov9_0224CA30(DistWorldSystem *param0)
{
    UnkStruct_ov9_0224C8E8 *v0 = &param0->unk_1E88;

    if (v0->unk_08) {
        LandDataManager_DistortionWorldRenderNextFloorMaps(v0->unk_18, param0->fieldSystem->areaModelAttrs);
    }
}

void ov9_0224CA50(FieldSystem *fieldSystem)
{
    DistWorldSystem *v0 = fieldSystem->unk_04->dynamicMapFeaturesData;
    ov9_0224CA30(v0);
}

void ov9_0224CA5C(FieldSystem *fieldSystem)
{
    DistWorldSystem *v0 = fieldSystem->unk_04->dynamicMapFeaturesData;
    UnkStruct_ov9_0224C8E8 *v1 = &v0->unk_1E88;

    {
        UnkStruct_ov9_0224CA5C *v2 = &v0->unk_1CB0;

        if (v2->unk_00 == 1) {
            ov9_0224CB30(v0);
        } else if (v2->unk_00 == 2) {
            ov9_0224CA98(v0);
        }
    }

    if (v1->unk_08 == 1) {
        LandDataManager_DistortionWorldTick(fieldSystem, v1->unk_18);
    }
}

static void ov9_0224CA98(DistWorldSystem *param0)
{
    UnkStruct_ov9_0224CA5C *v0 = &param0->unk_1CB0;
    UnkStruct_ov9_0224C8E8 *v1 = &param0->unk_1E88;

    switch (v0->unk_01) {
    case 0:
        LandDataManager_DistortionWorldInitLoadedMaps(v1->unk_18, v0->unk_04, v0->unk_08, v0->unk_0C);
        v0->unk_01++;
        break;
    case 1:
        LandDataManager_DistortionWorldLoadAndInvalidate(v1->unk_18, v0->unk_02, v0->unk_0C[v0->unk_02]);
        v0->unk_02++;

        if (v0->unk_02 >= 4) {
            v0->unk_01++;
        }
        break;
    case 2:
        LandDataManager_DistortionWorldUpdateTrackedTargetValues(v1->unk_18, v0->unk_04, v0->unk_08);

        {
            int v2 = 0;

            do {
                LandDataManager_SetLoadedMapValid(v1->unk_18, v2, 1);
                v2++;
            } while (v2 < 4);
        }

        ov9_02249B04(param0);

        if (v0->unk_1C != NULL) {
            ov9_0224E0DC(v0->unk_1C, 0);
        }

        v1->unk_08 = 1;
        v0->unk_00 = 0;
    }
}

static void ov9_0224CB30(DistWorldSystem *param0)
{
    UnkStruct_ov9_0224CA5C *v0 = &param0->unk_1CB0;
    UnkStruct_ov9_0224C8E8 *v1 = &param0->unk_1E88;
    FieldSystem *fieldSystem = param0->fieldSystem;

    switch (v0->unk_01) {
    case 0:
        LandDataManager_DistortionWorldInvalidateLoadedMaps(fieldSystem->landDataMan, v0->unk_04, v0->unk_08, v0->unk_0C);
        v0->unk_01++;
        break;
    case 1:
        LandDataManager_DistortionWorldLoadEntire(fieldSystem->landDataMan, v0->unk_02, v0->unk_0C[v0->unk_02]);
        v0->unk_02++;

        if (v0->unk_02 >= 4) {
            v0->unk_01++;
        }
        break;
    case 2:
        LandDataManager_DistortionWorldUpdateTrackedTargetValues(fieldSystem->landDataMan, v0->unk_04, v0->unk_08);

        {
            int v3 = 0;

            do {
                LandDataManager_SetLoadedMapValid(fieldSystem->landDataMan, v3, 1);
                v3++;
            } while (v3 < 4);
        }

        ov9_02249B68(param0);

        if (v0->unk_1C != NULL) {
            ov9_0224E0DC(v0->unk_1C, 0);
        }

        v0->unk_00 = 0;
    }
}

static int (*const Unk_ov9_022514E0[5])(DistWorldSystem *, UnkStruct_ov9_0224CBD8 *);
static int (*const Unk_ov9_02251428[4])(DistWorldSystem *, UnkStruct_ov9_0224CBD8 *);

static void ov9_0224CBBC(LandDataManager *param0, BOOL param1)
{
    int v0 = 0;

    do {
        LandDataManager_SetLoadedMapValid(param0, v0++, param1);
    } while (v0 < 4);
}

static void ov9_0224CBD8(DistWorldSystem *param0)
{
    UnkStruct_ov9_0224CBD8 *v0 = &param0->unk_1CD0;

    v0->unk_00 = 0;
    v0->unk_2C = SysTask_Start(ov9_0224CC08, param0, 1);
}

static void ov9_0224CBF8(DistWorldSystem *param0)
{
    UnkStruct_ov9_0224CBD8 *v0 = &param0->unk_1CD0;

    SysTask_Done(v0->unk_2C);
}

static void ov9_0224CC08(SysTask *param0, void *param1)
{
    DistWorldSystem *v0 = param1;
    UnkStruct_ov9_0224CBD8 *v1 = &v0->unk_1CD0;

    int (*const *v2)(DistWorldSystem *, UnkStruct_ov9_0224CBD8 *) = NULL;

    if (v1->unk_00 == 2) {
        v2 = Unk_ov9_022514E0;
    } else if (v1->unk_00 == 1) {
        v2 = Unk_ov9_02251428;
    }

    if (v2 != NULL) {
        int v3;

        do {
            v3 = v2[v1->unk_04](v0, v1);
        } while (v3 == 1);

        if (v3 == 2) {
            v1->unk_00 = 0;
        }
    }
}

static void ov9_0224CC4C(DistWorldSystem *param0)
{
    UnkStruct_ov9_0224CBD8 *v0 = &param0->unk_1CD0;
}

static void ov9_0224CC50(DistWorldSystem *param0, DistWorldMovingPlatformPropAnimator *param1, u32 param2)
{
    UnkStruct_ov9_0224CBD8 *v0 = &param0->unk_1CD0;

    GF_ASSERT(v0->unk_00 == 0);
    GF_ASSERT(param2 != 0);

    v0->unk_00 = param2;
    v0->unk_04 = 0;
    v0->unk_06 = 0;
    v0->unk_28 = param1;
}

static BOOL ov9_0224CC7C(DistWorldSystem *param0)
{
    UnkStruct_ov9_0224CBD8 *v0 = &param0->unk_1CD0;

    if (v0->unk_00 != 0) {
        return 1;
    }

    return 0;
}

static int ov9_0224CC90(DistWorldSystem *param0, UnkStruct_ov9_0224CBD8 *param1)
{
    ov9_0224CBBC(param0->fieldSystem->landDataMan, 0);
    ov9_02249BD4(param0, DistWorldSystem_GetMapHeaderID(param0));

    param1->unk_04 = 1;
    return 0;
}

static int ov9_0224CCB8(DistWorldSystem *param0, UnkStruct_ov9_0224CBD8 *param1)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    UnkStruct_ov9_0224C8E8 *v1 = &param0->unk_1E88;
    const DistWorldMapConnections *v2 = GetConnectionsForMap(DistWorldSystem_GetMapHeaderID(param0));
    GF_ASSERT(v2->nextID != MAP_HEADER_INVALID);

    v2 = GetConnectionsForMap(v2->nextID);
    param1->unk_0C = v2->currID;

    FieldMap_ChangeZoneDistortionWorld(param0->fieldSystem, param1->unk_0C);
    ov9_0224BF18(param0, v2->nextID);
    LandDataManager_DistortionWorldEndWithoutFreeing(fieldSystem->landDataMan);

    param1->unk_08 = Player_GetXPos(fieldSystem->playerAvatar);
    param1->unk_0A = Player_GetZPos(fieldSystem->playerAvatar);

    LandDataManager_DistortionWorldPrepareNextFloor(v1->unk_10, v1->unk_14, v1->unk_18, fieldSystem->landDataMan, param1->unk_08, param1->unk_0A);
    v1->unk_08 = 0;
    ov9_0224CBBC(v1->unk_18, 0);

    MapMatrix_Free(v1->unk_10);
    v1->unk_10 = NULL;

    ov9_0224CBBC(param0->fieldSystem->landDataMan, 1);
    v1->unk_00 = v2->nextID;

    if (v1->unk_00 != 593) {
        v2 = GetConnectionsForMap(v2->nextID);
        v1->unk_10 = MapMatrix_NewWithHeapID(4);
        MapMatrix_Load(v2->currID, v1->unk_10);
        param1->unk_04 = 2;
    } else {
        param1->unk_04 = 4;
    }

    return 0;
}

static int ov9_0224CD84(DistWorldSystem *param0, UnkStruct_ov9_0224CBD8 *param1)
{
    if (param1->unk_20 == 0) {
        int v0, v1, v2;
        NARC *v3;
        UnkStruct_ov9_0224C8E8 *v4 = &param0->unk_1E88;

        v3 = LandDataManager_GetLandDataNARC(param0->fieldSystem->landDataMan);
        LandDataManager_DistortionWorldInit(v4->unk_18, v4->unk_10, v4->unk_14, v3);

        ov9_0224C070(param0, v4->unk_00, &v0, &v1, &v2);
        LandDataManager_DistortionWorldSetOffsets(v4->unk_18, v0, v1, v2);
        LandDataManager_SetInDistortionWorld(v4->unk_18, 1);
        LandDataManager_SetSkipMapProps(v4->unk_18, 1);
        LandDataManager_DistortionWorldInitLoadedMaps(v4->unk_18, param1->unk_08, param1->unk_0A, param1->unk_10);

        param1->unk_04 = 3;
        return 1;
    }

    return 0;
}

static int ov9_0224CE00(DistWorldSystem *param0, UnkStruct_ov9_0224CBD8 *param1)
{
    UnkStruct_ov9_0224C8E8 *v0 = &param0->unk_1E88;

    LandDataManager_DistortionWorldLoadAndInvalidate(v0->unk_18, param1->unk_06, param1->unk_10[param1->unk_06]);

    param1->unk_06++;

    if (param1->unk_06 >= 4) {
        param1->unk_04 = 4;
    }

    return 0;
}

static int ov9_0224CE2C(DistWorldSystem *param0, UnkStruct_ov9_0224CBD8 *param1)
{
    const DistWorldMapConnections *v0;
    UnkStruct_ov9_0224C8E8 *v1 = &param0->unk_1E88;

    if (v1->unk_00 != 593) {
        v1->unk_08 = 1;
        ov9_0224CBBC(v1->unk_18, 1);
        LandDataManager_DistortionWorldUpdateTrackedTargetValues(v1->unk_18, param1->unk_08, param1->unk_0A);
    }

    v0 = GetConnectionsForMap(param1->unk_0C);
    ov9_02249C08(param0, v0->nextID);

    if (param1->unk_28 != NULL) {
        ov9_0224E0DC(param1->unk_28, 0);
    }

    return 2;
}

static int (*const Unk_ov9_022514E0[5])(DistWorldSystem *, UnkStruct_ov9_0224CBD8 *) = {
    ov9_0224CC90,
    ov9_0224CCB8,
    ov9_0224CD84,
    ov9_0224CE00,
    ov9_0224CE2C
};

static int ov9_0224CE80(DistWorldSystem *param0, UnkStruct_ov9_0224CBD8 *param1)
{
    const DistWorldMapConnections *v0;
    UnkStruct_ov9_0224C8E8 *v1 = &param0->unk_1E88;

    v1->unk_08 = 0;

    if (v1->unk_04 == 1) {
        ov9_0224CBBC(v1->unk_18, 0);
    }

    v0 = GetConnectionsForMap(DistWorldSystem_GetMapHeaderID(param0));
    ov9_02249C2C(param0, v0->nextID);

    param1->unk_04 = 1;
    return 0;
}

static int ov9_0224CEBC(DistWorldSystem *param0, UnkStruct_ov9_0224CBD8 *param1)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    UnkStruct_ov9_0224C8E8 *v1 = &param0->unk_1E88;
    const DistWorldMapConnections *v2 = GetConnectionsForMap(DistWorldSystem_GetMapHeaderID(param0));
    GF_ASSERT(v2->prevID != MAP_HEADER_INVALID);
    v2 = GetConnectionsForMap(v2->prevID);

    param1->unk_0C = v2->currID;

    FieldMap_ChangeZoneDistortionWorld(param0->fieldSystem, param1->unk_0C);
    ov9_0224BEB4(param0, param1->unk_0C);

    if (v1->unk_10 == NULL) {
        v1->unk_10 = MapMatrix_NewWithHeapID(4);
    }

    if (v1->unk_14 == NULL) {
        v1->unk_14 = fieldSystem->areaDataManager;
    }

    if (v1->unk_04 == 0) {
        NARC *v3 = LandDataManager_GetLandDataNARC(fieldSystem->landDataMan);

        v1->unk_18 = LandDataManager_DistortionWorldNew(NULL, v1->unk_14, v3);
        LandDataManager_DistortionWorldNewLoadedMapsWithoutAttributesAndModel(v1->unk_18);
    }

    if (v1->unk_04 == 1) {
        LandDataManager_DistortionWorldInitLoadedMapPropManagers(v1->unk_18);
    }

    LandDataManager_DistortionWorldInitLoadedMapPropManagers(fieldSystem->landDataMan);
    LandDataManager_SetMapMatrix(v1->unk_18, v1->unk_10);
    LandDataManager_DistortionWorldPreparePreviousFloor(v1->unk_18, fieldSystem->landDataMan);

    v1->unk_04 = 1;
    v1->unk_08 = 1;

    ov9_0224CBBC(v1->unk_18, 1);
    ov9_0224CBBC(param0->fieldSystem->landDataMan, 0);
    MapMatrix_Load(v2->currID, fieldSystem->mapMatrix);

    {
        int v4 = 0, v5 = 0, v6 = 0;

        LandDataManager_DistortionWorldInitWithoutNARC(fieldSystem->landDataMan, fieldSystem->mapMatrix, fieldSystem->areaDataManager);
        ov9_02251094(v2->currID, &v4, &v5, &v6);
        LandDataManager_DistortionWorldSetOffsets(fieldSystem->landDataMan, v4, v5, v6);
        LandDataManager_SetInDistortionWorld(fieldSystem->landDataMan, 1);
        LandDataManager_SetSkipMapProps(fieldSystem->landDataMan, 1);

        param1->unk_08 = fieldSystem->location->x;
        param1->unk_0A = fieldSystem->location->z;

        LandDataManager_DistortionWorldInvalidateLoadedMaps(fieldSystem->landDataMan, param1->unk_08, param1->unk_0A, param1->unk_10);
    }

    param1->unk_04 = 2;
    return 0;
}

static int ov9_0224CFE0(DistWorldSystem *param0, UnkStruct_ov9_0224CBD8 *param1)
{
    FieldSystem *fieldSystem = param0->fieldSystem;

    LandDataManager_DistortionWorldLoadEntire(fieldSystem->landDataMan, param1->unk_06, param1->unk_10[param1->unk_06]);

    param1->unk_06++;

    if (param1->unk_06 >= 4) {
        param1->unk_04 = 3;
    }

    return 0;
}

static int ov9_0224D008(DistWorldSystem *param0, UnkStruct_ov9_0224CBD8 *param1)
{
    FieldSystem *fieldSystem = param0->fieldSystem;

    LandDataManager_DistortionWorldUpdateTrackedTargetValues(fieldSystem->landDataMan, param1->unk_08, param1->unk_0A);
    ov9_02249C60(param0, param1->unk_0C);

    if (param1->unk_28 != NULL) {
        ov9_0224E0DC(param1->unk_28, 0);
    }

    ov9_0224CBBC(param0->fieldSystem->landDataMan, 1);

    return 2;
}

static int (*const Unk_ov9_02251428[4])(DistWorldSystem *, UnkStruct_ov9_0224CBD8 *) = {
    ov9_0224CE80,
    ov9_0224CEBC,
    ov9_0224CFE0,
    ov9_0224D008
};

static BOOL HandleElevatorPlatformPropAnimatorAt(DistWorldSystem *system, int playerX, int playerY, int playerZ)
{
    DistWorldMovingPlatformPropAnimator *animator = FindMovingPlatformPropAnimatorAt(system, playerX, playerY, playerZ, DistWorldSystem_GetMapHeaderID(system));

    if (animator == NULL) {
        return FALSE;
    }

    if (animator->template.elevatorDir == MOVING_PLATFORM_ELEVATOR_DIR_DOWN || animator->template.elevatorDir == MOVING_PLATFORM_ELEVATOR_DIR_UP) {
        CreateElevatorPlatformHandlerTask(system, animator);
        return TRUE;
    }

    return FALSE;
}

static const ElevatorPlatformHandler sElevatorPlatformHandlers[ELEVATOR_PLATFORM_STATE_COUNT];

static void CreateElevatorPlatformHandlerTask(DistWorldSystem *system, DistWorldMovingPlatformPropAnimator *animator)
{
    DistWorldElevatorPlatform *elevatorPlatform = InitFieldTaskContext(system, sizeof(DistWorldElevatorPlatform));
    elevatorPlatform->animator = animator;

    FieldSystem_CreateTask(system->fieldSystem, CallElevatorPlatformHandler, system);
}

static BOOL CallElevatorPlatformHandler(FieldTask *task)
{
    int handlerRes;
    DistWorldSystem *system = FieldTask_GetEnv(task);
    DistWorldElevatorPlatform *elevatorPlatform = GetFieldTaskContext(system);

    do {
        handlerRes = sElevatorPlatformHandlers[elevatorPlatform->state](system, elevatorPlatform);
    } while (handlerRes == ELEVATOR_PLATFORM_HANDLER_RES_LOOP);

    return handlerRes == ELEVATOR_PLATFORM_HANDLER_RES_FINISH;
}

static int DistWorldElevatorPlatform_BeginMovement(DistWorldSystem *system, DistWorldElevatorPlatform *elevatorPlatform)
{
    elevatorPlatform->dir = elevatorPlatform->animator->template.elevatorDir;
    elevatorPlatform->pathIndex = elevatorPlatform->animator->template.elevatorPathIndex;

    u32 mapHeaderID = DistWorldSystem_GetMapHeaderID(system);
    const DistWorldMapConnections *mapConnections = GetConnectionsForMap(mapHeaderID);

    if (elevatorPlatform->dir == MOVING_PLATFORM_ELEVATOR_DIR_DOWN) {
        elevatorPlatform->destMapHeaderID = mapConnections->nextID;

        VarsFlags *varsFlags = SaveData_GetVarsFlags(system->fieldSystem->saveData);
        u16 distWorldProgress = SystemVars_GetDistortionWorldProgress(varsFlags);

        if (mapHeaderID == MAP_HEADER_DISTORTION_WORLD_1F && distWorldProgress == 2) {
            elevatorPlatform->passengerMapObj = MapObjMan_LocalMapObjByIndex(system->fieldSystem->mapObjMan, MAP_OBJECT_1F_CYNTHIA_ELEVATOR);
            GF_ASSERT(elevatorPlatform->passengerMapObj != NULL);
        } else if (mapHeaderID == MAP_HEADER_DISTORTION_WORLD_B6F && distWorldProgress == 7) {
            elevatorPlatform->passengerMapObj = MapObjMan_LocalMapObjByIndex(system->fieldSystem->mapObjMan, MAP_OBJECT_B6F_CYNTHIA_ELEVATOR);
            GF_ASSERT(elevatorPlatform->passengerMapObj != NULL);
        }
    } else {
        elevatorPlatform->destMapHeaderID = mapConnections->prevID;

        switch (elevatorPlatform->pathIndex) {
        case 13:
            SetPersistedMovingPlatformFlag(system, DIST_WORLD_PLATFORM_FLAG_B4F_1);
            ClearPersistedMovingPlatformFlag(system, DIST_WORLD_PLATFORM_FLAG_B4F_2);
            break;

        case 10:
            ClearPersistedMovingPlatformFlag(system, DIST_WORLD_PLATFORM_FLAG_B5F_3);
            break;

        case 11:
            SetPersistedMovingPlatformFlag(system, DIST_WORLD_PLATFORM_FLAG_B3F_2);
            ClearPersistedMovingPlatformFlag(system, DIST_WORLD_PLATFORM_FLAG_B4F_1);
            ClearPersistedMovingPlatformFlag(system, DIST_WORLD_PLATFORM_FLAG_B5F_3);
            break;
        }
    }

    const DistWorldElevatorPlatformPath *elevatorPath = GetMovingPlatformElevatorPath(elevatorPlatform->pathIndex);
    MapObject *playerMapObj = Player_MapObject(system->fieldSystem->playerAvatar);

    MapObject_GetPosPtr(playerMapObj, &elevatorPlatform->playerPos);
    MapObject_SetHeightCalculationDisabled(playerMapObj, TRUE);

    elevatorPlatform->currPosOffset.x = 0;
    elevatorPlatform->currPosOffset.y = 0;
    elevatorPlatform->currPosOffset.z = 0;
    elevatorPlatform->finalPlayerTileX = MapObject_GetX(playerMapObj);
    elevatorPlatform->finalPlayerTileX += elevatorPath->finalTileXOffset;
    elevatorPlatform->finalPlayerTileY = MapObject_GetY(playerMapObj);
    elevatorPlatform->finalPlayerTileY += elevatorPath->finalTileYOffset * 2;
    elevatorPlatform->finalPlayerTileZ = MapObject_GetZ(playerMapObj);
    elevatorPlatform->finalPlayerTileZ += elevatorPath->finalTileZOffset;
    elevatorPlatform->finalPosOffset.x = (elevatorPath->finalTileXOffset << 4) * FX32_ONE;
    elevatorPlatform->finalPosOffset.y = (elevatorPath->finalTileYOffset << 4) * FX32_ONE;
    elevatorPlatform->finalPosOffset.z = (elevatorPath->finalTileZOffset << 4) * FX32_ONE;
    elevatorPlatform->changeMapsPosOffset.x = (elevatorPath->changeMapsTileXOffset << 4) * FX32_ONE;
    elevatorPlatform->changeMapsPosOffset.y = (elevatorPath->changeMapsTileYOffset << 4) * FX32_ONE;
    elevatorPlatform->changeMapsPosOffset.z = (elevatorPath->changeMapsTileZOffset << 4) * FX32_ONE;
    elevatorPlatform->posDelta = elevatorPath->posDelta;
    elevatorPlatform->nextPathIndex = elevatorPath->nextIndex;

    if (!elevatorPlatform->vibrationAnimDone) {
        VecFx32 spritePosOffset;

        elevatorPlatform->vibrationYDelta = ELEVATOR_PLATFORM_VIBRATION_Y_DELTA;
        MapObject_GetSpritePosOffset(playerMapObj, &spritePosOffset);
        elevatorPlatform->initialPlayerY = spritePosOffset.y;

        if (elevatorPlatform->passengerMapObj != NULL) {
            MapObject_GetSpritePosOffset(elevatorPlatform->passengerMapObj, &spritePosOffset);
            elevatorPlatform->initialPassengerY = spritePosOffset.y;
        }

        VecFx32 *elevatorPlatformPos = GetMovingPlatformPropPos(elevatorPlatform->animator->animMan);
        elevatorPlatform->initialPlatformY = elevatorPlatformPos->y;

        elevatorPlatform->vibrationAnimDone = TRUE;
        elevatorPlatform->state = ELEVATOR_PLATFORM_STATE_VIBRATE;

        Sound_PlayEffect(SEQ_SE_PL_FW089);
    } else {
        elevatorPlatform->state = ELEVATOR_PLATFORM_STATE_MOVE_FIRST_HALF;
    }

    elevatorPlatform->persistedFlagToSet = elevatorPath->persistedFlagToSet;
    elevatorPlatform->persistedFlagToClear = elevatorPath->persistedFlagToClear;

    return ELEVATOR_PLATFORM_HANDLER_RES_CONTINUE;
}

static int DistWorldElevatorPlatform_Vibrate(DistWorldSystem *system, DistWorldElevatorPlatform *elevatorPlatform)
{
    PlayerAvatar *playerAvatar = system->fieldSystem->playerAvatar;
    MapObject *playerMapObj = Player_MapObject(playerAvatar);
    VecFx32 *elevatorPlatformPos = GetMovingPlatformPropPos(elevatorPlatform->animator->animMan);

    VecFx32 spritePosOffset;
    MapObject_GetSpritePosOffset(playerMapObj, &spritePosOffset);

    spritePosOffset.y = elevatorPlatform->initialPlayerY + elevatorPlatform->vibrationYDelta;

    MapObject_SetSpritePosOffset(playerMapObj, &spritePosOffset);
    ov9_022511F4(playerMapObj, &elevatorPlatform->playerPos);

    if (elevatorPlatform->passengerMapObj != NULL) {
        MapObject_GetSpritePosOffset(elevatorPlatform->passengerMapObj, &spritePosOffset);
        spritePosOffset.y = elevatorPlatform->initialPassengerY + elevatorPlatform->vibrationYDelta;
        MapObject_SetSpritePosOffset(elevatorPlatform->passengerMapObj, &spritePosOffset);

        VecFx32 passengerPos;

        MapObject_GetPosPtr(elevatorPlatform->passengerMapObj, &passengerPos);
        passengerPos.y = elevatorPlatform->playerPos.y;
        ov9_022511F4(elevatorPlatform->passengerMapObj, &passengerPos);
    }

    elevatorPlatformPos->y = elevatorPlatform->initialPlatformY + elevatorPlatform->vibrationYDelta;
    elevatorPlatform->vibrationYDelta = -elevatorPlatform->vibrationYDelta;

    if (elevatorPlatform->vibrationYDelta >= 0) {
        if (elevatorPlatform->vibrationYDelta >= FX32_ONE * 4) {
            elevatorPlatform->vibrationYDelta -= FX32_ONE * 2;
        } else if (elevatorPlatform->vibrationYDelta > FX32_ONE * 1) {
            elevatorPlatform->vibrationYDelta -= FX32_ONE * 1;
        } else {
            elevatorPlatform->vibrationAnimStep++;

            if (elevatorPlatform->vibrationAnimStep >= 8) {
                elevatorPlatform->vibrationYDelta -= FX32_ONE * 1;
            }
        }

        if (elevatorPlatform->vibrationYDelta <= 0) {
            MapObject_GetSpritePosOffset(playerMapObj, &spritePosOffset);
            spritePosOffset.y = elevatorPlatform->initialPlayerY;
            MapObject_SetSpritePosOffset(playerMapObj, &spritePosOffset);

            if (elevatorPlatform->passengerMapObj != NULL) {
                MapObject_GetSpritePosOffset(elevatorPlatform->passengerMapObj, &spritePosOffset);
                spritePosOffset.y = elevatorPlatform->initialPassengerY;
                MapObject_SetSpritePosOffset(elevatorPlatform->passengerMapObj, &spritePosOffset);
            }

            elevatorPlatformPos->y = elevatorPlatform->initialPlatformY;
            elevatorPlatform->state = ELEVATOR_PLATFORM_STATE_MOVE_FIRST_HALF;
        }
    }

    return ELEVATOR_PLATFORM_HANDLER_RES_CONTINUE;
}

static int DistWorldElevatorPlatform_MoveFirstHalf(DistWorldSystem *system, DistWorldElevatorPlatform *elevatorPlatform)
{
    PlayerAvatar *playerAvatar = system->fieldSystem->playerAvatar;
    MapObject *playerMapObj = Player_MapObject(playerAvatar);
    VecFx32 *elevatorPlatformPos = GetMovingPlatformPropPos(elevatorPlatform->animator->animMan);

    if (elevatorPlatform->currPosOffset.x != elevatorPlatform->finalPosOffset.x) {
        elevatorPlatform->currPosOffset.x += elevatorPlatform->posDelta.x;
        elevatorPlatform->playerPos.x += elevatorPlatform->posDelta.x;
        elevatorPlatformPos->x += elevatorPlatform->posDelta.x;
    }

    if (elevatorPlatform->currPosOffset.y != elevatorPlatform->finalPosOffset.y) {
        elevatorPlatform->currPosOffset.y += elevatorPlatform->posDelta.y;
        elevatorPlatform->playerPos.y += elevatorPlatform->posDelta.y;
        elevatorPlatformPos->y += elevatorPlatform->posDelta.y;
    }

    if (elevatorPlatform->currPosOffset.z != elevatorPlatform->finalPosOffset.z) {
        elevatorPlatform->currPosOffset.z += elevatorPlatform->posDelta.z;
        elevatorPlatform->playerPos.z += elevatorPlatform->posDelta.z;
        elevatorPlatformPos->z += elevatorPlatform->posDelta.z;
    }

    ov9_022511F4(playerMapObj, &elevatorPlatform->playerPos);

    if (elevatorPlatform->passengerMapObj != NULL) {
        VecFx32 passengerPos;

        MapObject_GetPosPtr(elevatorPlatform->passengerMapObj, &passengerPos);
        passengerPos.y = elevatorPlatform->playerPos.y;
        ov9_022511F4(elevatorPlatform->passengerMapObj, &passengerPos);
    }

    if (elevatorPlatform->currPosOffset.x == elevatorPlatform->changeMapsPosOffset.x && elevatorPlatform->currPosOffset.y == elevatorPlatform->changeMapsPosOffset.y && elevatorPlatform->currPosOffset.z == elevatorPlatform->changeMapsPosOffset.z) {
        elevatorPlatform->state = ELEVATOR_PLATFORM_STATE_CHANGE_MAPS;
        return ELEVATOR_PLATFORM_HANDLER_RES_LOOP;
    }

    return ELEVATOR_PLATFORM_HANDLER_RES_CONTINUE;
}

static int DistWorldElevatorPlatform_ChangeMaps(DistWorldSystem *system, DistWorldElevatorPlatform *elevatorPlatform)
{
    ov9_0224E0DC(elevatorPlatform->animator, TRUE);

    if (elevatorPlatform->nextPathIndex == ELEVATOR_PLATFORM_PATH_INVALID) {
        if (elevatorPlatform->persistedFlagToSet != DIST_WORLD_PLATFORM_FLAG_INVALID) {
            SetPersistedMovingPlatformFlag(system, elevatorPlatform->persistedFlagToSet);
        }

        if (elevatorPlatform->persistedFlagToClear != DIST_WORLD_PLATFORM_FLAG_INVALID) {
            ClearPersistedMovingPlatformFlag(system, elevatorPlatform->persistedFlagToClear);
        }

        DistWorldMovingPlatformPropAnimator_ChangeMaps(system, elevatorPlatform->animator, elevatorPlatform->destMapHeaderID);
    }

    if (elevatorPlatform->passengerMapObj != NULL) {
        if (elevatorPlatform->destMapHeaderID == MAP_HEADER_DISTORTION_WORLD_B1F) {
            MapObject_SetLocalID(elevatorPlatform->passengerMapObj, MAP_OBJECT_B1F_CYNTHIA_ELEVATOR);
        } else {
            MapObject_SetLocalID(elevatorPlatform->passengerMapObj, MAP_OBJECT_B7F_CYNTHIA_INITIAL);
            MapObject_SetScript(elevatorPlatform->passengerMapObj, 6);
        }

        MapObject_SetMapID(elevatorPlatform->passengerMapObj, elevatorPlatform->destMapHeaderID);
    }

    if (elevatorPlatform->dir == MOVING_PLATFORM_ELEVATOR_DIR_DOWN) {
        ov9_0224CC50(system, elevatorPlatform->animator, 2);
    } else if (elevatorPlatform->dir == MOVING_PLATFORM_ELEVATOR_DIR_UP) {
        ov9_0224CC50(system, elevatorPlatform->animator, 1);
    } else {
        GF_ASSERT(FALSE);
    }

    elevatorPlatform->state = ELEVATOR_PLATFORM_STATE_MOVE_SECOND_HALF;
    return ELEVATOR_PLATFORM_HANDLER_RES_CONTINUE;
}

static int DistWorldElevatorPlatform_MoveSecondHalf(DistWorldSystem *system, DistWorldElevatorPlatform *elevatorPlatform)
{
    PlayerAvatar *playerAvatar = system->fieldSystem->playerAvatar;
    MapObject *playerMapObj = Player_MapObject(playerAvatar);
    VecFx32 *elevatorPlatformPos = GetMovingPlatformPropPos(elevatorPlatform->animator->animMan);

    if (elevatorPlatform->currPosOffset.x != elevatorPlatform->finalPosOffset.x) {
        elevatorPlatform->currPosOffset.x += elevatorPlatform->posDelta.x;
        elevatorPlatform->playerPos.x += elevatorPlatform->posDelta.x;
        elevatorPlatformPos->x += elevatorPlatform->posDelta.x;
    }

    if (elevatorPlatform->currPosOffset.y != elevatorPlatform->finalPosOffset.y) {
        elevatorPlatform->currPosOffset.y += elevatorPlatform->posDelta.y;
        elevatorPlatform->playerPos.y += elevatorPlatform->posDelta.y;
        elevatorPlatformPos->y += elevatorPlatform->posDelta.y;
    }

    if (elevatorPlatform->currPosOffset.z != elevatorPlatform->finalPosOffset.z) {
        elevatorPlatform->currPosOffset.z += elevatorPlatform->posDelta.z;
        elevatorPlatform->playerPos.z += elevatorPlatform->posDelta.z;
        elevatorPlatformPos->z += elevatorPlatform->posDelta.z;
    }

    ov9_022511F4(playerMapObj, &elevatorPlatform->playerPos);

    if (elevatorPlatform->passengerMapObj != NULL) {
        VecFx32 passengerPos;

        MapObject_GetPosPtr(elevatorPlatform->passengerMapObj, &passengerPos);
        passengerPos.y = elevatorPlatform->playerPos.y;
        ov9_022511F4(elevatorPlatform->passengerMapObj, &passengerPos);
    }

    if (elevatorPlatform->currPosOffset.x == elevatorPlatform->finalPosOffset.x && elevatorPlatform->currPosOffset.y == elevatorPlatform->finalPosOffset.y && elevatorPlatform->currPosOffset.z == elevatorPlatform->finalPosOffset.z) {
        if (elevatorPlatform->nextPathIndex == ELEVATOR_PLATFORM_PATH_INVALID) {
            Sound_StopEffect(SEQ_SE_PL_FW089, 0);
            elevatorPlatform->state = ELEVATOR_PLATFORM_STATE_END;
        } else {
            MapObject *playerMapObj2 = Player_MapObject(system->fieldSystem->playerAvatar);

            MapObject_SetX(playerMapObj2, elevatorPlatform->finalPlayerTileX);
            MapObject_SetY(playerMapObj2, elevatorPlatform->finalPlayerTileY);
            MapObject_SetZ(playerMapObj2, elevatorPlatform->finalPlayerTileZ);
            MapObject_UpdateCoords(playerMapObj2);

            if (elevatorPlatform->passengerMapObj != NULL) {
                MapObject_SetY(elevatorPlatform->passengerMapObj, elevatorPlatform->finalPlayerTileY);
                MapObject_UpdateCoords(elevatorPlatform->passengerMapObj);
            }

            DistWorldMovingPlatformPropAnimator *animator = elevatorPlatform->animator;
            animator->template.elevatorPathIndex = elevatorPlatform->nextPathIndex;
            MapObject_SetDataAt(animator->mapObj, animator->template.elevatorPathIndex, MOVING_PLATFORM_MAP_OBJ_DATA_EVELATOR_PATH_INDEX);

            elevatorPlatform->state = ELEVATOR_PLATFORM_STATE_INIT;
        }

        return ELEVATOR_PLATFORM_HANDLER_RES_LOOP;
    }

    return ELEVATOR_PLATFORM_HANDLER_RES_CONTINUE;
}

static int DistWorldElevatorPlatform_EndMovement(DistWorldSystem *system, DistWorldElevatorPlatform *elevatorPlatform)
{
    if (ov9_0224CC7C(system) == FALSE) {
        MapObject *playerMapObj = Player_MapObject(system->fieldSystem->playerAvatar);

        MapObject_SetX(playerMapObj, elevatorPlatform->finalPlayerTileX);
        MapObject_SetY(playerMapObj, elevatorPlatform->finalPlayerTileY);
        MapObject_SetZ(playerMapObj, elevatorPlatform->finalPlayerTileZ);
        MapObject_UpdateCoords(playerMapObj);
        PlayerAvatar_SetHeightCalculationEnabledAndUpdate(system->fieldSystem->playerAvatar, TRUE);

        if (elevatorPlatform->passengerMapObj != NULL) {
            MapObject_SetY(elevatorPlatform->passengerMapObj, elevatorPlatform->finalPlayerTileY);
            MapObject_UpdateCoords(elevatorPlatform->passengerMapObj);
        }

        if (elevatorPlatform->dir == MOVING_PLATFORM_ELEVATOR_DIR_DOWN) {
            switch (elevatorPlatform->pathIndex) {
            case 9:
                SetPersistedMovingPlatformFlag(system, DIST_WORLD_PLATFORM_FLAG_B5F_1);
                InitSpecificMovingPlatformPropForMap(system, MAP_HEADER_DISTORTION_WORLD_B5F, 0);
                break;
            }
        }

        if (elevatorPlatform->destMapHeaderID == MAP_HEADER_DISTORTION_WORLD_B4F && elevatorPlatform->dir == MOVING_PLATFORM_ELEVATOR_DIR_DOWN && elevatorPlatform->animator->template.index == 1) {
            VarsFlags *varsFlags = SaveData_GetVarsFlags(system->fieldSystem->saveData);

            if (SystemVars_GetDistortionWorldCyrusApperanceState(varsFlags) == 0) {
                elevatorPlatform->state = ELEVATOR_PLATFORM_STATE_CYRUS_B4F_START_ANIMATION;
                return ELEVATOR_PLATFORM_HANDLER_RES_LOOP;
            }
        }

        return ELEVATOR_PLATFORM_HANDLER_RES_FINISH;
    }

    return ELEVATOR_PLATFORM_HANDLER_RES_CONTINUE;
}

static const MapObjectAnimCmd sCyrusB4FLeftmostAnimCmds[] = {
    { .movementAction = MOVEMENT_ACTION_WALK_NORMAL_EAST, .count = 2 },
    { .movementAction = MOVEMENT_ACTION_WALK_NORMAL_NORTH, .count = 4 },
    { .movementAction = MOVEMENT_ACTION_END, .count = 0 }
};

static const MapObjectAnimCmd sCyrusB4FMiddleAnimCmds[] = {
    { .movementAction = MOVEMENT_ACTION_WALK_NORMAL_EAST, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_WALK_NORMAL_NORTH, .count = 4 },
    { .movementAction = MOVEMENT_ACTION_END, .count = 0 }
};

static const MapObjectAnimCmd sCyrusB4FRightmostAnimCmds[] = {
    { .movementAction = MOVEMENT_ACTION_WALK_NORMAL_NORTH, .count = 4 },
    { .movementAction = MOVEMENT_ACTION_END, .count = 0 }
};

static const MapObjectAnimCmd *const sCyrusB4FAnimCmds[3] = {
    sCyrusB4FLeftmostAnimCmds,
    sCyrusB4FMiddleAnimCmds,
    sCyrusB4FRightmostAnimCmds
};

static int DistWorldElevatorPlatform_CyrusB4FStartAnimation(DistWorldSystem *system, DistWorldElevatorPlatform *elevatorPlatform)
{
    int cyrusTileX;

    MapObject *cyrusMapObj = MapObjMan_LocalMapObjByIndex(system->fieldSystem->mapObjMan, MAP_OBJECT_B4F_CYRUS);
    GF_ASSERT(cyrusMapObj != NULL);

    cyrusTileX = MapObject_GetX(cyrusMapObj);
    GF_ASSERT((u32)(cyrusTileX - 88) < 3);

    const MapObjectAnimCmd *animCmds = sCyrusB4FAnimCmds[cyrusTileX - 88];
    elevatorPlatform->passengerAnimTask = MapObject_StartAnimation(cyrusMapObj, animCmds);
    elevatorPlatform->state = ELEVATOR_PLATFORM_STATE_CYRUS_B4F_END_ANIMATION;

    return ELEVATOR_PLATFORM_HANDLER_RES_CONTINUE;
}

static int DistWorldElevatorPlatform_CyrusB4FEndAnimation(DistWorldSystem *system, DistWorldElevatorPlatform *elevatorPlatform)
{
    if (MapObject_HasAnimationEnded(elevatorPlatform->passengerAnimTask) == TRUE) {
        MapObject_FinishAnimation(elevatorPlatform->passengerAnimTask);
        MapObject *cyrusMapObj = MapObjMan_LocalMapObjByIndex(system->fieldSystem->mapObjMan, MAP_OBJECT_B4F_CYRUS);

        DeleteMapObject(system, cyrusMapObj);
        VarsFlags *varsFlags = SaveData_GetVarsFlags(system->fieldSystem->saveData);

        SystemVars_SetDistortionWorldCyrusApperanceState(varsFlags, 1);
        return ELEVATOR_PLATFORM_HANDLER_RES_FINISH;
    }

    return ELEVATOR_PLATFORM_HANDLER_RES_CONTINUE;
}

static const ElevatorPlatformHandler sElevatorPlatformHandlers[ELEVATOR_PLATFORM_STATE_COUNT] = {
    [ELEVATOR_PLATFORM_STATE_INIT] = DistWorldElevatorPlatform_BeginMovement,
    [ELEVATOR_PLATFORM_STATE_VIBRATE] = DistWorldElevatorPlatform_Vibrate,
    [ELEVATOR_PLATFORM_STATE_MOVE_FIRST_HALF] = DistWorldElevatorPlatform_MoveFirstHalf,
    [ELEVATOR_PLATFORM_STATE_CHANGE_MAPS] = DistWorldElevatorPlatform_ChangeMaps,
    [ELEVATOR_PLATFORM_STATE_MOVE_SECOND_HALF] = DistWorldElevatorPlatform_MoveSecondHalf,
    [ELEVATOR_PLATFORM_STATE_END] = DistWorldElevatorPlatform_EndMovement,
    [ELEVATOR_PLATFORM_STATE_CYRUS_B4F_START_ANIMATION] = DistWorldElevatorPlatform_CyrusB4FStartAnimation,
    [ELEVATOR_PLATFORM_STATE_CYRUS_B4F_END_ANIMATION] = DistWorldElevatorPlatform_CyrusB4FEndAnimation
};

static const DistWorldMapConnections *GetConnectionsForMap(int mapHeaderID)
{
    int i = 0;
    const DistWorldMapConnections *iter = sDistWorldMapConnectionList;

    while (i < DISTORTION_WORLD_MAP_COUNT) {
        if (iter->currID == mapHeaderID) {
            return iter;
        }

        i++;
        iter++;
    }

    GF_ASSERT(0);
    return NULL;
}

static void InitPropRenderBuffers(DistWorldSystem *system)
{
    DistWorldPropRenderBuffers *renderBuffs = &system->propRenderBuffs;
    memset((u8 *)renderBuffs, 0, sizeof(DistWorldPropRenderBuffers));

    for (int i = 0; i < PROP_KIND_COUNT; i++) {
        renderBuffs->models[i].propKind = PROP_KIND_INVALID;
    }

    for (int i = 0; i < PROP_ANIM_KIND_COUNT; i++) {
        renderBuffs->animSets[i].animKind = PROP_ANIM_KIND_INVALID;
    }
}

static void LoadProp3DModel(DistWorldSystem *system, u32 propKind)
{
    DistWorldPropRenderBuffers *renderBuffs = &system->propRenderBuffs;
    GF_ASSERT(propKind < PROP_KIND_COUNT);

    if (renderBuffs->models[propKind].propKind == PROP_KIND_INVALID) {
        renderBuffs->models[propKind].propKind = propKind;
        FieldEffectManager_LoadModel(system->fieldSystem->fieldEffMan, &renderBuffs->models[propKind].model, 0, sProp3DModelNARCIndexByKind[propKind], TRUE);
    }
}

static void FreeProp3DModel(DistWorldSystem *system, u32 propKind)
{
    DistWorldPropRenderBuffers *renderBuffs = &system->propRenderBuffs;
    GF_ASSERT(propKind < PROP_KIND_COUNT);

    if (renderBuffs->models[propKind].propKind != PROP_KIND_INVALID) {
        renderBuffs->models[propKind].propKind = PROP_KIND_INVALID;
        Simple3D_FreeModel(&renderBuffs->models[propKind].model);
    }
}

static Simple3DModel *GetProp3DModel(DistWorldSystem *system, u32 propKind)
{
    DistWorldPropRenderBuffers *renderBuffs = &system->propRenderBuffs;

    GF_ASSERT(propKind < PROP_KIND_COUNT);
    GF_ASSERT(renderBuffs->models[propKind].propKind != PROP_KIND_INVALID);

    return &renderBuffs->models[propKind].model;
}

static void LoadPropAnimSet(DistWorldSystem *system, u32 animKind)
{
    DistWorldPropRenderBuffers *renderBuffs = &system->propRenderBuffs;
    GF_ASSERT(animKind < PROP_ANIM_KIND_COUNT);

    if (renderBuffs->animSets[animKind].animKind == PROP_ANIM_KIND_INVALID) {
        u32 narcIndex = sPropAnimSetNARCIndexByKind[animKind];
        u32 animSetSize = FieldEffectManager_GetNARCMemberSize(system->fieldSystem->fieldEffMan, narcIndex);

        renderBuffs->animSets[animKind].animSet = Heap_AllocAtEnd(HEAP_ID_FIELD1, animSetSize);
        FieldEffectManager_ReadNARCWholeMember(system->fieldSystem->fieldEffMan, narcIndex, renderBuffs->animSets[animKind].animSet);
        renderBuffs->animSets[animKind].animKind = animKind;
    }
}

static void FreePropAnimSet(DistWorldSystem *system, u32 animKind)
{
    DistWorldPropRenderBuffers *renderBuffs = &system->propRenderBuffs;
    GF_ASSERT(animKind < PROP_ANIM_KIND_COUNT);

    if (renderBuffs->animSets[animKind].animKind != PROP_ANIM_KIND_INVALID) {
        renderBuffs->animSets[animKind].animKind = PROP_ANIM_KIND_INVALID;
        Heap_Free(renderBuffs->animSets[animKind].animSet);
    }
}

static DistWorldPropRenderer *DistWorldPropRenderer_Init(DistWorldSystem *system, u32 propKind, BOOL *alreadyInit)
{
    int i;
    DistWorldPropRenderBuffers *renderBuffs = &system->propRenderBuffs;

    if (DistWorldPropAnimInfo_IsStatic(propKind) == TRUE) {
        for (i = 0; i < GHOST_PROP_RENDERER_COUNT; i++) {
            if (renderBuffs->renderers[i].valid == TRUE && renderBuffs->renderers[i].propKind == propKind) {
                *alreadyInit = TRUE;
                return &renderBuffs->renderers[i];
            }
        }
    }

    for (i = 0; i < GHOST_PROP_RENDERER_COUNT; i++) {
        if (!renderBuffs->renderers[i].valid) {
            *alreadyInit = FALSE;
            renderBuffs->renderers[i].valid = TRUE;
            renderBuffs->renderers[i].propKind = propKind;
            return &renderBuffs->renderers[i];
        }
    }

    GF_ASSERT(0);
    return NULL;
}

static void DistWorldPropRenderer_Invalidate(DistWorldSystem *system, DistWorldPropRenderer *propRenderer)
{
    GF_ASSERT(propRenderer != NULL);
    propRenderer->valid = FALSE;
}

static void DistWorldPropRenderer_InvalidateAnimated(DistWorldSystem *system, DistWorldPropRenderer *propRenderer)
{
    if (!DistWorldPropAnimInfo_IsStatic(propRenderer->propKind)) {
        DistWorldPropRenderer_Invalidate(system, propRenderer);
    }
}

static void InvalidateAllPropRenderersOfKind(DistWorldSystem *system, int propKind)
{
    DistWorldPropRenderBuffers *renderBuffs = &system->propRenderBuffs;

    for (int i = 0; i < GHOST_PROP_RENDERER_COUNT; i++) {
        if (renderBuffs->renderers[i].valid && renderBuffs->renderers[i].propKind == propKind) {
            DistWorldPropRenderer_Invalidate(system, &renderBuffs->renderers[i]);
        }
    }
}

static void FreePropRenderBuffers(DistWorldSystem *system)
{
    for (int i = 0; i < PROP_KIND_COUNT; i++) {
        FreeProp3DModel(system, i);
    }

    for (int i = 0; i < PROP_ANIM_KIND_COUNT; i++) {
        FreePropAnimSet(system, i);
    }
}

static void LoadRenderBuffersForPropEx(DistWorldSystem *system, u32 propKind, u32 animKind, Simple3DRenderObj *renderObj, Simple3DAnimation *animation)
{
    DistWorldPropRenderBuffers *renderBuffs = &system->propRenderBuffs;

    if (propKind != PROP_KIND_INVALID) {
        if (renderBuffs->models[propKind].propKind == PROP_KIND_INVALID) {
            LoadProp3DModel(system, propKind);
        }

        Simple3D_CreateRenderObject(renderObj, &renderBuffs->models[propKind].model);
    }

    if (animKind != PROP_ANIM_KIND_INVALID) {
        if (renderBuffs->animSets[animKind].animKind == PROP_ANIM_KIND_INVALID) {
            LoadPropAnimSet(system, animKind);
        }

        Simple3D_LoadFromAllocatedSet(animation, renderBuffs->animSets[animKind].animSet, 0);
        Simple3D_BindModelToAnim(animation, &renderBuffs->models[propKind].model, HEAP_ID_FIELD1);
        Simple3D_InitG3DAnimObject(animation, &renderBuffs->models[propKind].model);
        Simple3D_BindAnimToRenderObj(renderObj, animation);
    }
}

static void LoadRenderBuffersForProp(DistWorldSystem *system, int propKind, Simple3DRenderObj *renderObj, Simple3DAnimation *animation)
{
    const DistWorldPropAnimInfo *animInfo = &sPropAnimInfoByKind[propKind];
    LoadRenderBuffersForPropEx(system, animInfo->propKind, animInfo->animKind, renderObj, animation);
}

static void SetPropOpacityAndPolygonID(DistWorldSystem *system, int propKind, int opacity, int polygonID)
{
    const DistWorldPropAnimInfo *animInfo = &sPropAnimInfoByKind[propKind];
    int propKind2 = animInfo->propKind;
    DistWorldPropRenderBuffers *renderBuffs = &system->propRenderBuffs;

    NNS_G3dMdlUseMdlAlpha(renderBuffs->models[propKind2].model.g3DModel);
    NNS_G3dMdlSetMdlAlphaAll(renderBuffs->models[propKind2].model.g3DModel, opacity);

    if (polygonID != -1) {
        polygonID &= NNS_G3D_POLYGON_ID_MASK;
        NNS_G3dMdlSetMdlPolygonIDAll(renderBuffs->models[propKind2].model.g3DModel, polygonID);
    }
}

static void SetPropOpacity(DistWorldSystem *system, int propKind, int opacity)
{
    SetPropOpacityAndPolygonID(system, propKind, opacity, -1);
}

static void SetPropPolygonID(DistWorldSystem *system, int propKind, int polygonID)
{
    const DistWorldPropAnimInfo *animInfo = &sPropAnimInfoByKind[propKind];
    int propKind2 = animInfo->propKind;
    DistWorldPropRenderBuffers *renderBuffs = &system->propRenderBuffs;

    GF_ASSERT(renderBuffs->models[propKind2].propKind < PROP_KIND_COUNT);
    polygonID &= NNS_G3D_POLYGON_ID_MASK;

    NNS_G3dMdlSetMdlPolygonIDAll(renderBuffs->models[propKind2].model.g3DModel, polygonID);
}

static BOOL DistWorldPropAnimInfo_IsAnimKindValid(int propKind)
{
    const DistWorldPropAnimInfo *animInfo = &sPropAnimInfoByKind[propKind];
    return animInfo->animKind != PROP_ANIM_KIND_INVALID;
}

static BOOL DistWorldPropAnimInfo_IsStatic(int propKind)
{
    const DistWorldPropAnimInfo *animInfo = &sPropAnimInfoByKind[propKind];
    return animInfo->isStatic == TRUE;
}

static void FreeUnusedPropRenderers(DistWorldSystem *system)
{
    for (int i = 0; i < PROP_KIND_COUNT; i++) {
        if (!HasActiveGhostProp(system, i) && !HasActiveMovingPlatformProp(system, i) && !IsGiratinaShadowPropRendererValid(system, i) && !HasActiveSimpleProp(system, i)) {
            InvalidateAllPropRenderersOfKind(system, i);
        }
    }

    for (int i = 0; i < PROP_KIND_COUNT; i++) {
        if (!HasActiveGhostProp2(system, i) && !HasActiveMovingPlatformProp2(system, i) && !IsGiratinaShadowPropRendererValid2(system, i) && !HasActiveSimpleProp2(system, i)) {
            FreeProp3DModel(system, i);
        }
    }

    for (int i = 0; i < PROP_ANIM_KIND_COUNT; i++) {
        if (!HasActiveGhostPropAnim(system, i) && !HasActiveMovingPlatformPropAnim(system, i) && !IsGiratinaShadowPropRendererAnimValid(system, i) && !HasActiveSimplePropAnim(system, i)) {
            FreePropAnimSet(system, i);
        }
    }
}

static BOOL IsPropInView(DistWorldSystem *system, int propKind, VecFx32 *pos)
{
    const VecFx32 *scale = &sPropScaleByKind[propKind];

    if (scale->x == 0) {
        return TRUE;
    }

    const DistWorldPropAnimInfo *animInfo = &sPropAnimInfoByKind[propKind];
    Simple3DModel *propModel = GetProp3DModel(system, animInfo->propKind);

    MtxFx33 identityMtx;
    MTX_Identity33(&identityMtx);

    return GFXBoxTest_IsModelInView(propModel->g3DModel, pos, &identityMtx, scale) ? TRUE : FALSE;
}

static void ResetMovingPlatformManager(DistWorldSystem *system)
{
    DistWorldMovingPlatformPropManager *movingPlatformPropMan = &system->movingPlatformPropMan;
    memset(movingPlatformPropMan, 0, sizeof(DistWorldMovingPlatformPropManager));
}

static void FinishAllMovingPlatformPropAnimators(DistWorldSystem *system)
{
    DistWorldMovingPlatformPropManager *movingPlatformPropMan = &system->movingPlatformPropMan;

    for (int i = 0; i < MOVING_PLATFORM_MANAGER_ANIMATOR_COUNT; i++) {
        if (movingPlatformPropMan->animators[i].valid) {
            DistWorldMovingPlatformPropAnimator_Finish(system, &movingPlatformPropMan->animators[i]);
        }
    }
}

static void FinishMovingPlatformPropAnimatorForMap(DistWorldSystem *system, u32 mapHeaderID)
{
    DistWorldMovingPlatformPropManager *movingPlatformPropMan = &system->movingPlatformPropMan;

    for (int i = 0; i < MOVING_PLATFORM_MANAGER_ANIMATOR_COUNT; i++) {
        if (movingPlatformPropMan->animators[i].valid && movingPlatformPropMan->animators[i].mapHeaderID == mapHeaderID && !movingPlatformPropMan->animators[i].unk_01) {
            DistWorldMovingPlatformPropAnimator_FinishAndDeleteMapObject(system, &movingPlatformPropMan->animators[i]);
        }
    }
}

static void InitMovingPlatformPropsForCurrentAndNextMaps(DistWorldSystem *system)
{
    if (IsPersistedDataValid(system) == TRUE) {
        int startIdx = 0;
        DistWorldMovingPlatformPropAnimator *animator;
        MapObject *mapObj;
        MapObjectManager *mapObjMan = system->fieldSystem->mapObjMan;

        while (MapObjectMan_FindObjectWithStatus(mapObjMan, &mapObj, &startIdx, MAP_OBJ_STATUS_0) == TRUE) {
            if (MapObject_GetLocalID(mapObj) == 0xFD) {
                animator = FindUnusedMovingPlatformPropAnimator(system);
                DistWorldMovingPlatformPropAnimator_InitFromMapObject(system, animator, mapObj);
            }
        }
    } else {
        u32 mapHeaderID = DistWorldSystem_GetMapHeaderID(system);
        const DistWorldMapConnections *mapConnections = GetConnectionsForMap(mapHeaderID);

        InitMovingPlatformPropsForMap(system, mapHeaderID);
        InitMovingPlatformPropsForMap(system, mapConnections->nextID);
    }
}

static void InitMovingPlatformPropsForMap(DistWorldSystem *system, u32 mapHeaderID)
{
    const DistWorldMovingPlatformMapTemplates *mapTemplates = GetMovingPlatformsTemplatesForMap(mapHeaderID);

    if (mapTemplates != NULL) {
        InitMovingPlatformPropsForMapEx(system, mapTemplates, mapHeaderID);
    }
}

static void InitMovingPlatformPropsForMapEx(DistWorldSystem *system, const DistWorldMovingPlatformMapTemplates *mapTemplates, u32 mapHeaderID)
{
    int i = 0;
    GF_ASSERT(mapTemplates != NULL);

    while (mapTemplates->templates[i] != NULL) {
        u32 persistedFlag = mapTemplates->templates[i]->persistedFlag;

        if ((persistedFlag == DIST_WORLD_PLATFORM_FLAG_INVALID || CheckPersistedMovingPlatformFlag(system, persistedFlag) == TRUE) && GetAnimatorForMovingPlatform(system, mapTemplates->templates[i]->index, mapHeaderID) == NULL) {
            DistWorldMovingPlatformPropAnimator *animator = FindUnusedMovingPlatformPropAnimator(system);
            DistWorldMovingPlatformPropAnimator_InitFromTemplate(system, animator, mapTemplates->templates[i], mapHeaderID);
        }

        i++;
    }
}

static void InitSpecificMovingPlatformPropForMap(DistWorldSystem *system, u32 mapHeaderID, int index)
{
    const DistWorldMovingPlatformMapTemplates *mapTemplates = GetMovingPlatformsTemplatesForMap(mapHeaderID);

    if (GetAnimatorForMovingPlatform(system, mapTemplates->templates[index]->index, mapHeaderID) == NULL) {
        DistWorldMovingPlatformPropAnimator *animator = FindUnusedMovingPlatformPropAnimator(system);
        DistWorldMovingPlatformPropAnimator_InitFromTemplate(system, animator, mapTemplates->templates[index], mapHeaderID);
    }
}

static DistWorldMovingPlatformPropAnimator *FindUnusedMovingPlatformPropAnimator(DistWorldSystem *system)
{
    int i = 0;
    DistWorldMovingPlatformPropManager *movingPlatformPropMan = &system->movingPlatformPropMan;

    while (i < MOVING_PLATFORM_MANAGER_ANIMATOR_COUNT) {
        if (movingPlatformPropMan->animators[i].valid == FALSE) {
            return &movingPlatformPropMan->animators[i];
        }

        i++;
    }

    GF_ASSERT(FALSE);
    return NULL;
}

static DistWorldMovingPlatformPropAnimator *GetAnimatorForMovingPlatform(DistWorldSystem *system, u32 index, u32 mapHeaderID)
{
    int i = 0;
    DistWorldMovingPlatformPropManager *movingPlatformPropMan = &system->movingPlatformPropMan;

    while (i < MOVING_PLATFORM_MANAGER_ANIMATOR_COUNT) {
        if (movingPlatformPropMan->animators[i].valid == TRUE && movingPlatformPropMan->animators[i].template.index == index && movingPlatformPropMan->animators[i].mapHeaderID == mapHeaderID) {
            return &movingPlatformPropMan->animators[i];
        }

        i++;
    }

    return NULL;
}

static const DistWorldMovingPlatformMapTemplates *GetMovingPlatformsTemplatesForMap(u32 mapHeaderID)
{
    int i = 0;
    const DistWorldMovingPlatformMapTemplates *iter = sMovingPlatformsMapTemplates;

    while (i < MOVING_PLATFORM_MAP_COUNT) {
        if (iter->mapHeaderID == mapHeaderID) {
            return iter;
        }

        i++;
        iter++;
    }

    return NULL;
}

static const DistWorldMovingPlatformTemplate *GetMovingPlatformTemplateForMap(u32 mapHeaderID, u32 index)
{
    const DistWorldMovingPlatformMapTemplates *mapTemplates = GetMovingPlatformsTemplatesForMap(mapHeaderID);
    return mapTemplates->templates[index];
}

static const DistWorldElevatorPlatformPath *GetMovingPlatformElevatorPath(u32 index)
{
    u32 i = 0;
    const DistWorldElevatorPlatformPath *iter = sElevatorPlatformPaths;

    while (i < ELEVATOR_PLATFORM_PATH_COUNT) {
        if (iter->index == index) {
            return iter;
        }

        iter++;
        i++;
    }

    GF_ASSERT(FALSE);
    return NULL;
}

static MapObject *AddMovingPlatformMapObject(DistWorldSystem *system, int tileX, int tileY, int tileZ, int index, int elevatorPathIndex, u32 mapHeaderID)
{
    MapObject *mapObj = MapObjectMan_AddMapObject(system->fieldSystem->mapObjMan, tileX, tileZ, 0, 0x2000, 0x0, DistWorldSystem_GetMapHeaderID(system));

    MapObject_SetY(mapObj, tileY);
    MapObject_SetLocalID(mapObj, 0xFD);
    MapObject_SetDataAt(mapObj, index, MOVING_PLATFORM_MAP_OBJ_DATA_INDEX);
    MapObject_SetDataAt(mapObj, mapHeaderID, MOVING_PLATFORM_MAP_OBJ_DATA_MAP_HEADER_ID);
    MapObject_SetDataAt(mapObj, elevatorPathIndex, MOVING_PLATFORM_MAP_OBJ_DATA_EVELATOR_PATH_INDEX);
    MapObject_SetFlagIsPersistent(mapObj, TRUE);
    sub_02062D80(mapObj, 0);
    MapObject_SetHeightCalculationDisabled(mapObj, TRUE);
    sub_02062FC4(mapObj, 1);

    return mapObj;
}

static void DistWorldMovingPlatformPropAnimator_InitFromMapObject(DistWorldSystem *system, DistWorldMovingPlatformPropAnimator *animator, MapObject *mapObj)
{
    u32 index = MapObject_GetDataAt(mapObj, MOVING_PLATFORM_MAP_OBJ_DATA_INDEX);
    u32 mapHeaderID = MapObject_GetDataAt(mapObj, MOVING_PLATFORM_MAP_OBJ_DATA_MAP_HEADER_ID);
    u32 elevatorPathIndex = MapObject_GetDataAt(mapObj, MOVING_PLATFORM_MAP_OBJ_DATA_EVELATOR_PATH_INDEX);
    const DistWorldMovingPlatformTemplate *movingPlatformTemplate = GetMovingPlatformTemplateForMap(mapHeaderID, index);

    animator->valid = TRUE;
    animator->mapHeaderID = mapHeaderID;
    animator->template = *movingPlatformTemplate;
    animator->template.tileX = MapObject_GetX(mapObj);
    animator->template.tileY = MapObject_GetY(mapObj);
    animator->template.tileZ = MapObject_GetZ(mapObj);
    animator->template.elevatorPathIndex = elevatorPathIndex;
    animator->mapObj = mapObj;
    animator->animMan = InitAnimManagerForMovingPlatform(system, animator);

    MapObject_SetFlagIsPersistent(mapObj, TRUE);
    sub_02062D80(mapObj, 0);
    MapObject_SetHeightCalculationDisabled(mapObj, TRUE);
    sub_02062FC4(mapObj, 1);
}

static OverworldAnimManager *InitAnimManagerForMovingPlatform(DistWorldSystem *system, DistWorldMovingPlatformPropAnimator *animator)
{
    DistWorldMovingPlatformPropUserData userData;

    userData.tileX = animator->template.tileX;
    userData.tileY = animator->template.tileY;
    userData.tileZ = animator->template.tileZ;
    userData.propKind = animator->template.propKind;
    userData.system = system;
    userData.isGiratinaRoomElevator = FALSE;

    if (animator->mapHeaderID == MAP_HEADER_DISTORTION_WORLD_B6F && animator->template.index == 1) {
        userData.isGiratinaRoomElevator = TRUE;
    }

    return FieldEffectManager_InitAnimManager(system->fieldSystem->fieldEffMan, &sMovingPlatformPropAnimFuncs, NULL, 0, &userData, 0);
}

static void DistWorldMovingPlatformPropAnimator_InitFromTemplate(DistWorldSystem *system, DistWorldMovingPlatformPropAnimator *animator, const DistWorldMovingPlatformTemplate *movingPlatformTemplate, u32 mapHeaderID)
{
    animator->valid = TRUE;
    animator->mapHeaderID = mapHeaderID;
    animator->template = *movingPlatformTemplate;
    animator->mapObj = AddMovingPlatformMapObject(system, movingPlatformTemplate->tileX, movingPlatformTemplate->tileY, movingPlatformTemplate->tileZ, movingPlatformTemplate->index, movingPlatformTemplate->elevatorPathIndex, mapHeaderID);
    animator->animMan = InitAnimManagerForMovingPlatform(system, animator);
}

static void DistWorldMovingPlatformPropAnimator_Finish(DistWorldSystem *system, DistWorldMovingPlatformPropAnimator *animator)
{
    if (animator->animMan != NULL) {
        OverworldAnimManager_Finish(animator->animMan);
    }

    memset(animator, 0, sizeof(DistWorldMovingPlatformPropAnimator));
}

static void DistWorldMovingPlatformPropAnimator_FinishAndDeleteMapObject(DistWorldSystem *system, DistWorldMovingPlatformPropAnimator *animator)
{
    if (animator->mapObj != NULL) {
        MapObject_Delete(animator->mapObj);
    }

    DistWorldMovingPlatformPropAnimator_Finish(system, animator);
}

static void DistWorldMovingPlatformPropAnimator_ChangeMaps(DistWorldSystem *system, DistWorldMovingPlatformPropAnimator *animator, u32 mapHeaderID)
{
    animator->mapHeaderID = mapHeaderID;

    const DistWorldMovingPlatformTemplate *movingPlatformTemplate = GetMovingPlatformTemplateForMap(mapHeaderID, animator->template.destIndex);
    animator->template = *movingPlatformTemplate;

    MapObject *mapObj = animator->mapObj;
    MapObject_SetX(mapObj, animator->template.tileX);
    MapObject_SetY(mapObj, animator->template.tileY);
    MapObject_SetZ(mapObj, animator->template.tileZ);
    MapObject_SetDataAt(mapObj, animator->template.index, MOVING_PLATFORM_MAP_OBJ_DATA_INDEX);
    MapObject_SetDataAt(mapObj, mapHeaderID, MOVING_PLATFORM_MAP_OBJ_DATA_MAP_HEADER_ID);
    MapObject_SetDataAt(mapObj, animator->template.elevatorPathIndex, MOVING_PLATFORM_MAP_OBJ_DATA_EVELATOR_PATH_INDEX);
}

static void ov9_0224E0DC(DistWorldMovingPlatformPropAnimator *param0, BOOL param1)
{
    param0->unk_01 = param1;
}

static BOOL HasActiveMovingPlatformProp2(DistWorldSystem *system, u32 propKind)
{
    DistWorldMovingPlatformPropManager *movingPlatformPropMan = &system->movingPlatformPropMan;
    GF_ASSERT(propKind != PROP_KIND_INVALID);

    for (int i = 0; i < MOVING_PLATFORM_MANAGER_ANIMATOR_COUNT; i++) {
        if (movingPlatformPropMan->animators[i].valid) {
            u16 currPropKind = movingPlatformPropMan->animators[i].template.propKind;
            const DistWorldPropAnimInfo *animInfo = &sPropAnimInfoByKind[currPropKind];

            if (propKind == animInfo->propKind) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

static BOOL HasActiveMovingPlatformPropAnim(DistWorldSystem *system, u32 animKind)
{
    DistWorldMovingPlatformPropManager *movingPlatformPropMan = &system->movingPlatformPropMan;
    GF_ASSERT(animKind != PROP_ANIM_KIND_INVALID);

    for (int i = 0; i < MOVING_PLATFORM_MANAGER_ANIMATOR_COUNT; i++) {
        if (movingPlatformPropMan->animators[i].valid) {
            u16 currPropKind = movingPlatformPropMan->animators[i].template.propKind;
            const DistWorldPropAnimInfo *animInfo = &sPropAnimInfoByKind[currPropKind];

            if (animKind == animInfo->animKind) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

static BOOL HasActiveMovingPlatformProp(DistWorldSystem *system, int propKind)
{
    DistWorldMovingPlatformPropManager *movingPlatformPropMan = &system->movingPlatformPropMan;

    for (int i = 0; i < MOVING_PLATFORM_MANAGER_ANIMATOR_COUNT; i++) {
        if (movingPlatformPropMan->animators[i].valid && movingPlatformPropMan->animators[i].template.propKind == propKind) {
            return TRUE;
        }
    }

    return FALSE;
}

static DistWorldMovingPlatformPropAnimator *FindMovingPlatformPropAnimatorAt(DistWorldSystem *system, int tileX, int tileY, int tileZ, u32 mapHeaderID)
{
    int i = MOVING_PLATFORM_MANAGER_ANIMATOR_COUNT;
    DistWorldMovingPlatformPropAnimator *iter = system->movingPlatformPropMan.animators;

    do {
        if (iter->valid && iter->mapHeaderID == mapHeaderID) {
            const DistWorldMovingPlatformTemplate *movingPlatformTemplate = &iter->template;

            if (movingPlatformTemplate->tileY == tileY && movingPlatformTemplate->tileZ == tileZ && movingPlatformTemplate->tileX == tileX) {
                return iter;
            }
        }

        iter++;
    } while (--i);

    return NULL;
}

static int DistWorldMovingPlatformProp_AnimInit(OverworldAnimManager *animMan, void *context)
{
    DistWorldMovingPlatformProp *movingPlatformProp = context;
    const DistWorldMovingPlatformPropUserData *userData = OverworldAnimManager_GetUserData(animMan);

    movingPlatformProp->userData = *userData;

    BOOL rendererAlreadyInit;
    movingPlatformProp->renderer = DistWorldPropRenderer_Init(userData->system, userData->propKind, &rendererAlreadyInit);

    if (!rendererAlreadyInit) {
        LoadRenderBuffersForProp(userData->system, userData->propKind, &movingPlatformProp->renderer->renderObj, &movingPlatformProp->renderer->animation);
    }

    VecFx32_SetPosFromMapCoords(userData->tileX, userData->tileZ, &movingPlatformProp->pos);
    movingPlatformProp->pos.y = MAP_OBJECT_COORD_CENTER_TO_FX32(userData->tileY);

    const VecFx32 *initialPosOffset = &sPropInitialPosOffsetByKind[userData->propKind];
    movingPlatformProp->pos.x += initialPosOffset->x;
    movingPlatformProp->pos.y += initialPosOffset->y;
    movingPlatformProp->pos.z += initialPosOffset->z;

    movingPlatformProp->opacity = GHOST_PROP_OPACITY_MAX;
    movingPlatformProp->animated = FALSE;

    if (userData->isGiratinaRoomElevator == TRUE) {
        VarsFlags *varsFlags = SaveData_GetVarsFlags(userData->system->fieldSystem->saveData);

        if (SystemFlag_CheckDistortionWorldSteppingStones(varsFlags) == FALSE) {
            movingPlatformProp->opacity = GHOST_PROP_OPACITY_MIN;
            movingPlatformProp->animated = TRUE;
            movingPlatformProp->hidden = TRUE;
        }
    }

    return TRUE;
}

static void DistWorldMovingPlatformProp_AnimExit(OverworldAnimManager *animMan, void *context)
{
    DistWorldMovingPlatformProp *movingPlatformProp = context;

    if (DistWorldPropAnimInfo_IsAnimKindValid(movingPlatformProp->userData.propKind) == TRUE) {
        Simple3D_FreeAnimation(&movingPlatformProp->renderer->animation);
    }

    DistWorldPropRenderer_InvalidateAnimated(movingPlatformProp->userData.system, movingPlatformProp->renderer);
}

static void DistWorldMovingPlatformProp_AnimTick(OverworldAnimManager *animMan, void *context)
{
    DistWorldMovingPlatformProp *movingPlatformProp = context;

    if (movingPlatformProp->animated == TRUE) {
        VarsFlags *varsFlags = SaveData_GetVarsFlags(movingPlatformProp->userData.system->fieldSystem->saveData);

        if (SystemFlag_CheckDistortionWorldSteppingStones(varsFlags) == TRUE) {
            movingPlatformProp->hidden = FALSE;

            if (movingPlatformProp->opacity < GHOST_PROP_OPACITY_MAX) {
                if (movingPlatformProp->opacity == GHOST_PROP_OPACITY_MIN) {
                    PlaySoundIfNotActive(SEQ_SE_PL_SYUWA3);
                }

                movingPlatformProp->animStep++;
                movingPlatformProp->opacity = movingPlatformProp->animStep >> 1;
            }

            if (movingPlatformProp->opacity >= GHOST_PROP_OPACITY_MAX) {
                movingPlatformProp->opacity = GHOST_PROP_OPACITY_MAX;
                movingPlatformProp->animated = FALSE;
            }
        }
    }
}

static void DistWorldMovingPlatformProp_AnimRender(OverworldAnimManager *animMan, void *context)
{
    DistWorldMovingPlatformProp *movingPlatformProp = context;

    if (movingPlatformProp->hidden == FALSE) {
        if (movingPlatformProp->animated == TRUE) {
            const DistWorldMovingPlatformPropUserData *userData = &movingPlatformProp->userData;

            SetPropOpacityAndPolygonID(userData->system, userData->propKind, movingPlatformProp->opacity, 1 << 0);
            Simple3D_DrawRenderObjWithPos(&movingPlatformProp->renderer->renderObj, &movingPlatformProp->pos);

            SetPropPolygonID(userData->system, userData->propKind, 0);
            SetPropOpacity(userData->system, userData->propKind, GHOST_PROP_OPACITY_MAX);
        } else {
            Simple3D_DrawRenderObjWithPos(&movingPlatformProp->renderer->renderObj, &movingPlatformProp->pos);
        }
    }
}

static const OverworldAnimManagerFuncs sMovingPlatformPropAnimFuncs = {
    sizeof(DistWorldMovingPlatformProp),
    DistWorldMovingPlatformProp_AnimInit,
    DistWorldMovingPlatformProp_AnimExit,
    DistWorldMovingPlatformProp_AnimTick,
    DistWorldMovingPlatformProp_AnimRender
};

static VecFx32 *GetMovingPlatformPropPos(OverworldAnimManager *animMan)
{
    DistWorldMovingPlatformProp *movingPlatformProp = OverworldAnimManager_GetFuncsContext(animMan);
    return &movingPlatformProp->pos;
}

static void UnloadEvent(DistWorldSystem *system)
{
    DistWorldLoadedEvent *loadedEvent = &system->loadedEvent;
    memset(loadedEvent, 0, sizeof(DistWorldLoadedEvent));
}

static void Dummy0224E34C(DistWorldSystem *system)
{
    return;
}

static void LoadEvent(DistWorldSystem *system, const DistWorldEventCmd *cmds)
{
    DistWorldLoadedEvent *loadedEvent = &system->loadedEvent;

    GF_ASSERT(!loadedEvent->running);
    GF_ASSERT(cmds != NULL);

    loadedEvent->running = TRUE;
    loadedEvent->cmdIndex = 0;
    loadedEvent->cmdState = 0;
    loadedEvent->cmds = cmds;
}

static void *ResetLoadedEventDataBuffer(DistWorldSystem *system, u32 size)
{
    GF_ASSERT(size < RUNNING_EVENT_DATA_BUFFER_SIZE);

    u8 *dataBuf = system->loadedEvent.dataBuf;
    memset(dataBuf, 0, size);

    return dataBuf;
}

static void *GetLoadedEventDataBuffer(DistWorldSystem *system)
{
    return system->loadedEvent.dataBuf;
}

static BOOL CallLoadedEventHandler(DistWorldSystem *system, FieldTask *task)
{
    DistWorldLoadedEvent *loadedEvent = &system->loadedEvent;
    const DistWorldEventCmd *cmds = loadedEvent->cmds;

    GF_ASSERT(cmds != NULL);

    while (cmds[loadedEvent->cmdIndex].kind != EVENT_CMD_END) {
        int handlerRes;
        int cmdKind = cmds[loadedEvent->cmdIndex].kind;
        const DistWorldEventCmdHandler *cmdHandler = sEventCmdHandlers[cmdKind];

        do {
            handlerRes = cmdHandler[loadedEvent->cmdState](system, task, &loadedEvent->cmdState, cmds[loadedEvent->cmdIndex].params);
        } while (handlerRes == EVENT_CMD_HANDLER_RES_LOOP);

        if (handlerRes == EVENT_CMD_HANDLER_RES_CONTINUE) {
            return FALSE;
        }

        loadedEvent->cmdState = 0;
        loadedEvent->cmdIndex++;
    }

    loadedEvent->running = FALSE;
    loadedEvent->cmdIndex = 0;

    return TRUE;
}

static const DistWorldEvent *GetEventsForMap(u32 mapHeaderID)
{
    const DistWorldMapEvents *iter = sMapEvents;

    while (iter->mapHeaderID != MAP_HEADER_INVALID) {
        if (iter->mapHeaderID == mapHeaderID) {
            return iter->events;
        }

        iter++;
    }

    return NULL;
}

static BOOL HandleEventAt(DistWorldSystem *system, int playerX, int playerY, int playerZ)
{
    VarsFlags *varsFlags = SaveData_GetVarsFlags(system->fieldSystem->saveData);
    const DistWorldEvent *iter = GetEventsForMap(DistWorldSystem_GetMapHeaderID(system));

    if (iter != NULL) {
        while (iter->cmds != NULL) {
            if (playerY == iter->tileY && playerZ == iter->tileZ && playerX == iter->tileX && CheckFlagCondition(system, iter->flagCond, iter->flagCondVal) == TRUE) {
                RunEvent(system, iter);
                return TRUE;
            }

            iter++;
        }
    }

    return FALSE;
}

static void RunEventCommands(DistWorldSystem *system, const DistWorldEventCmd *cmds)
{
    LoadEvent(system, cmds);
    FieldSystem_CreateTask(system->fieldSystem, FieldTask_CallLoadedEventHandler, system);
}

static void RunEvent(DistWorldSystem *system, const DistWorldEvent *event)
{
    RunEventCommands(system, event->cmds);
}

static BOOL FieldTask_CallLoadedEventHandler(FieldTask *task)
{
    DistWorldSystem *system = FieldTask_GetEnv(task);
    return CallLoadedEventHandler(system, task) == TRUE;
}

static int EventCmdSetMapObjectAnimation_Init(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    CmdRunDataSetMapObjectAnimation *runData = ResetLoadedEventDataBuffer(system, sizeof(CmdRunDataSetMapObjectAnimation));

    *cmdState = EVENT_CMD_SET_MAP_OBJECT_ANIMATION_STATE_START;
    return EVENT_CMD_HANDLER_RES_LOOP;
}

static int EventCmdSetMapObjectAnimation_Start(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    const CmdParamsSetMapObjectAnimation *cmdParams = params;
    CmdRunDataSetMapObjectAnimation *runData = GetLoadedEventDataBuffer(system);

    MapObject *mapObj = MapObjMan_LocalMapObjByIndex(system->fieldSystem->mapObjMan, cmdParams->mapObjLocalID);
    GF_ASSERT(mapObj != NULL);

    if (LocalMapObj_IsAnimationSet(mapObj) == TRUE) {
        LocalMapObj_SetAnimationCode(mapObj, cmdParams->movementAction);
        *cmdState = EVENT_CMD_SET_MAP_OBJECT_ANIMATION_STATE_FINISH;
    }

    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdSetMapObjectAnimation_Finish(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    const CmdParamsSetMapObjectAnimation *cmdParams = params;
    CmdRunDataSetMapObjectAnimation *runData = GetLoadedEventDataBuffer(system);

    MapObject *mapObj = MapObjMan_LocalMapObjByIndex(system->fieldSystem->mapObjMan, cmdParams->mapObjLocalID);
    GF_ASSERT(mapObj != NULL);

    if (sub_020656AC(mapObj) == TRUE) {
        return EVENT_CMD_HANDLER_RES_FINISH;
    }

    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static const DistWorldEventCmdHandler sSetMapObjectAnimationHandlers[] = {
    [EVENT_CMD_SET_MAP_OBJECT_ANIMATION_STATE_INIT] = EventCmdSetMapObjectAnimation_Init,
    [EVENT_CMD_SET_MAP_OBJECT_ANIMATION_STATE_START] = EventCmdSetMapObjectAnimation_Start,
    [EVENT_CMD_SET_MAP_OBJECT_ANIMATION_STATE_FINISH] = EventCmdSetMapObjectAnimation_Finish
};

static int EventCmdMovePlatform_BeginMovement(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    const CmdParamsMovePlatform *cmdParams = params;
    CmdRunDataMovePlatform *runData = ResetLoadedEventDataBuffer(system, sizeof(CmdRunDataMovePlatform));

    runData->animator = GetAnimatorForMovingPlatform(system, cmdParams->platformIndex, DistWorldSystem_GetMapHeaderID(system));
    GF_ASSERT(runData->animator != NULL);

    runData->finalPosOffset.x = (cmdParams->finalTileXOffset << 4) * FX32_ONE;
    runData->finalPosOffset.y = (cmdParams->finalTileYOffset << 4) * FX32_ONE;
    runData->finalPosOffset.z = (cmdParams->finalTileZOffset << 4) * FX32_ONE;
    runData->posDelta = cmdParams->posDelta;
    runData->vibrationYDelta = MOVING_PLATFORM_VIBRATION_Y_DELTA;

    VecFx32 *movingPlatformPos = GetMovingPlatformPropPos(runData->animator->animMan);
    runData->initialPlatformY = movingPlatformPos->y;

    if (cmdParams->movePlayer == TRUE) {
        VecFx32 spritePosOffset;
        MapObject *playerMapObj = Player_MapObject(system->fieldSystem->playerAvatar);

        MapObject_SetHeightCalculationDisabled(playerMapObj, TRUE);
        MapObject_GetSpritePosOffset(playerMapObj, &spritePosOffset);

        runData->initialPlayerY = spritePosOffset.y;
    }

    Sound_PlayEffect(SEQ_SE_PL_FW089B);

    *cmdState = EVENT_CMD_MOVE_PLATFORM_STATE_VIBRATE;
    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdMovePlatform_Vibrate(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    MapObject *playerMapObj = NULL;
    const CmdParamsMovePlatform *cmdParams = params;
    CmdRunDataMovePlatform *runData = GetLoadedEventDataBuffer(system);
    VecFx32 *movingPlatformPos = GetMovingPlatformPropPos(runData->animator->animMan);

    if (cmdParams->movePlayer == TRUE) {
        playerMapObj = Player_MapObject(system->fieldSystem->playerAvatar);
    }

    movingPlatformPos->y = runData->initialPlatformY + runData->vibrationYDelta;

    if (playerMapObj != NULL) {
        VecFx32 spritePosOffset;

        MapObject_GetSpritePosOffset(playerMapObj, &spritePosOffset);
        spritePosOffset.y = runData->initialPlayerY + runData->vibrationYDelta;

        MapObject_SetSpritePosOffset(playerMapObj, &spritePosOffset);
        MapObject_GetPosPtr(playerMapObj, &spritePosOffset);
        ov9_022511F4(playerMapObj, &spritePosOffset);
    }

    runData->vibrationYDelta = -runData->vibrationYDelta;

    if (runData->vibrationYDelta >= 0) {
        if (runData->vibrationYDelta > FX32_ONE) {
            runData->vibrationYDelta -= FX32_ONE;
        } else {
            runData->vibrationAnimStep++;

            if (runData->vibrationAnimStep >= 4) {
                runData->vibrationYDelta = 0;
            }
        }

        if (runData->vibrationYDelta == 0) {
            movingPlatformPos->y = runData->initialPlatformY;

            if (playerMapObj != NULL) {
                VecFx32 spritePosOffset;

                MapObject_GetSpritePosOffset(playerMapObj, &spritePosOffset);
                spritePosOffset.y = runData->initialPlayerY;
                MapObject_SetSpritePosOffset(playerMapObj, &spritePosOffset);

                MapObject_GetPosPtr(playerMapObj, &spritePosOffset);
                ov9_022511F4(playerMapObj, &spritePosOffset);
            }

            *cmdState = EVENT_CMD_MOVE_PLATFORM_STATE_MOVE;
        }
    }

    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdMovePlatform_Move(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    VecFx32 posDelta = { 0, 0, 0 };
    const CmdParamsMovePlatform *cmdParams = params;
    CmdRunDataMovePlatform *runData = GetLoadedEventDataBuffer(system);
    VecFx32 *movingPlatformPos = GetMovingPlatformPropPos(runData->animator->animMan);

    if (runData->currPosOffset.x != runData->finalPosOffset.x) {
        runData->currPosOffset.x += runData->posDelta.x;
        movingPlatformPos->x += runData->posDelta.x;

        if (cmdParams->movePlayer == TRUE) {
            posDelta.x += runData->posDelta.x;
        }
    }

    if (runData->currPosOffset.y != runData->finalPosOffset.y) {
        runData->currPosOffset.y += runData->posDelta.y;
        movingPlatformPos->y += runData->posDelta.y;

        if (cmdParams->movePlayer == TRUE) {
            posDelta.y += runData->posDelta.y;
        }
    }

    if (runData->currPosOffset.z != runData->finalPosOffset.z) {
        runData->currPosOffset.z += runData->posDelta.z;
        movingPlatformPos->z += runData->posDelta.z;

        if (cmdParams->movePlayer == TRUE) {
            posDelta.z += runData->posDelta.z;
        }
    }

    if (cmdParams->movePlayer == TRUE) {
        VecFx32 playerPos;
        MapObject *playerMapObj = Player_MapObject(system->fieldSystem->playerAvatar);

        MapObject_GetPosPtr(playerMapObj, &playerPos);

        playerPos.x += posDelta.x;
        playerPos.y += posDelta.y;
        playerPos.z += posDelta.z;

        ov9_022511F4(playerMapObj, &playerPos);
    }

    if (runData->currPosOffset.x == runData->finalPosOffset.x && runData->currPosOffset.y == runData->finalPosOffset.y && runData->currPosOffset.z == runData->finalPosOffset.z) {
        *cmdState = EVENT_CMD_MOVE_PLATFORM_STATE_END;
    }

    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdMovePlatform_EndMovement(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    const CmdParamsMovePlatform *cmdParams = params;

    if (cmdParams->movePlayer == TRUE) {
        MapObject *playerMapObj = Player_MapObject(system->fieldSystem->playerAvatar);
        int finalPlayerTileX = MapObject_GetX(playerMapObj) + cmdParams->finalTileXOffset;
        int finalPlayerTileY = MapObject_GetY(playerMapObj) + cmdParams->finalTileYOffset * 2;
        int finalPlayerTileZ = MapObject_GetZ(playerMapObj) + cmdParams->finalTileZOffset;

        MapObject_SetX(playerMapObj, finalPlayerTileX);
        MapObject_SetY(playerMapObj, finalPlayerTileY);
        MapObject_SetZ(playerMapObj, finalPlayerTileZ);
        MapObject_UpdateCoords(playerMapObj);

        PlayerAvatar *playerAvatar = system->fieldSystem->playerAvatar;
        finalPlayerTileY = finalPlayerTileY / 2;

        FindAndPrepareNewCurrentFloatingPlatform(system, finalPlayerTileX, finalPlayerTileY, finalPlayerTileZ, FLOATING_PLATFORM_KIND_INVALID);
        u32 currentFloatingPlatformKind = GetCurrentFloatingPlatformKindSafely(system, finalPlayerTileX, finalPlayerTileY, finalPlayerTileZ);
        enum AvatarDistortionState avatarDistortionState = GetAvatarDistortionStateForFloatingPlatformKind(currentFloatingPlatformKind);
        PlayerAvatar_SetDistortionState(playerAvatar, avatarDistortionState);

        if (avatarDistortionState == AVATAR_DISTORTION_STATE_ACTIVE) {
            MapObject_SetHeightCalculationDisabled(playerMapObj, FALSE);
        } else {
            MapObject_SetHeightCalculationDisabled(playerMapObj, TRUE);
        }
    }

    Sound_StopEffect(SEQ_SE_PL_FW089B, 0);
    return EVENT_CMD_HANDLER_RES_FINISH;
}

static const DistWorldEventCmdHandler sMovePlatformHandlers[] = {
    [EVENT_CMD_MOVE_PLATFORM_STATE_INIT] = EventCmdMovePlatform_BeginMovement,
    [EVENT_CMD_MOVE_PLATFORM_STATE_VIBRATE] = EventCmdMovePlatform_Vibrate,
    [EVENT_CMD_MOVE_PLATFORM_STATE_MOVE] = EventCmdMovePlatform_Move,
    [EVENT_CMD_MOVE_PLATFORM_STATE_END] = EventCmdMovePlatform_EndMovement
};

static int EventCmdAddMapObjWithLocalID_Handle(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    const CmdParamsAddMapObjWithLocalID *cmdParams = params;
    AddMapObjectWithLocalID(system, cmdParams->mapHeaderID, cmdParams->mapObjLocalID);

    return EVENT_CMD_HANDLER_RES_FINISH;
}

static const DistWorldEventCmdHandler sAddMapObjWithLocalIDHandlers[] = {
    EventCmdAddMapObjWithLocalID_Handle
};

static int EventCmdDeleteMapObjWithLocalID_Handle(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    const CmdParamsDeleteMapObjWithLocalID *cmdParams = params;
    DistWorld_DeleteMapObjectWithLocalID(system->fieldSystem, cmdParams->mapObjLocalID);

    return EVENT_CMD_HANDLER_RES_FINISH;
}

static const DistWorldEventCmdHandler sDeleteMapObjWithLocalIDHandlers[] = {
    EventCmdDeleteMapObjWithLocalID_Handle
};

static const DistWorldGiratinaShadowTemplate sGiratinaShadowExternal[GIRATINA_SHADOW_EXTERNAL_COUNT] = {
    {
        .initialTileX = 6,
        .initialTileY = 297,
        .initialTileZ = 42,
        .rotAnglesIndex = 3,
        .soundKind = GIRATINA_SHADOW_PROP_SFX_KIND_CRY,
        .scale = { FX32_ONE, FX32_ONE, FX32_ONE },
        .posDelta = { FX32_ONE * 48, 0, 0 },
        .movementAnimSteps = 64,
    },
};

void DistWorld_StartGiratinaShadowEvent(FieldSystem *fieldSystem, u16 eventIndex)
{
    GF_ASSERT(eventIndex < GIRATINA_SHADOW_EXTERNAL_COUNT);

    DistWorldSystem *dwSystem = fieldSystem->unk_04->dynamicMapFeaturesData;
    LoadGiratinaShadowPropAnimation(dwSystem, &sGiratinaShadowExternal[eventIndex]);
}

void DistWorld_FinishGiratinaShadowEvent(FieldSystem *fieldSystem)
{
    DistWorldSystem *dwSystem = fieldSystem->unk_04->dynamicMapFeaturesData;
    FinishGiratinaShadowPropRenderer(dwSystem);
}

static void LoadGiratinaShadowPropRenderer(DistWorldSystem *system)
{
    int rendererAlreadyInit;
    DistWorldGiratinaShadowPropRenderer *giratinaRenderer = &system->giratinaShadowPropRenderer;

    if (giratinaRenderer->valid == FALSE) {
        giratinaRenderer->renderer = DistWorldPropRenderer_Init(system, PROP_KIND_GIRATINA_SHADOW, &rendererAlreadyInit);

        if (!rendererAlreadyInit) {
            LoadRenderBuffersForProp(system, PROP_KIND_GIRATINA_SHADOW, &giratinaRenderer->renderer->renderObj, &giratinaRenderer->renderer->animation);
        }

        giratinaRenderer->valid = TRUE;
    }
}

static void FreeGiratinaShadowPropRenderer(DistWorldSystem *system)
{
    DistWorldGiratinaShadowPropRenderer *giratinaRenderer = &system->giratinaShadowPropRenderer;

    if (giratinaRenderer->valid == TRUE) {
        DistWorldPropRenderer_InvalidateAnimated(system, giratinaRenderer->renderer);
        FreePropAnimSet(system, PROP_ANIM_KIND_GIRATINA_SHADOW);
        FreeProp3DModel(system, PROP_KIND_GIRATINA_SHADOW);
        giratinaRenderer->valid = FALSE;
    }
}

static void LoadGiratinaShadowPropAnimation(DistWorldSystem *system, const DistWorldGiratinaShadowTemplate *giratinaTemplate)
{
    DistWorldGiratinaShadowPropUserData userData;
    DistWorldGiratinaShadowPropRenderer *giratinaRenderer = &system->giratinaShadowPropRenderer;

    LoadGiratinaShadowPropRenderer(system);

    userData.system = system;
    userData.template = *giratinaTemplate;
    userData.renderer = giratinaRenderer->renderer;

    giratinaRenderer->animMan = FieldEffectManager_InitAnimManager(system->fieldSystem->fieldEffMan, &sGiratinaShadowPropAnimFuncs, NULL, 0, &userData, 0);
}

static BOOL IsGiratinaShadowAnimationFinished(DistWorldSystem *system)
{
    DistWorldGiratinaShadowPropRenderer *giratinaRenderer = &system->giratinaShadowPropRenderer;

    GF_ASSERT(giratinaRenderer->animMan != NULL);

    DistWorldGiratinaShadowProp *giratinaProp = OverworldAnimManager_GetFuncsContext(giratinaRenderer->animMan);
    return giratinaProp->animFinished;
}

static void Dummy0224E984(DistWorldSystem *system)
{
}

static void FinishGiratinaShadowPropRenderer(DistWorldSystem *system)
{
    DistWorldGiratinaShadowPropRenderer *giratinaRenderer = &system->giratinaShadowPropRenderer;

    if (giratinaRenderer->animMan != NULL) {
        OverworldAnimManager_Finish(giratinaRenderer->animMan);
    }

    FreeGiratinaShadowPropRenderer(system);
}

static BOOL IsGiratinaShadowPropRendererValid2(DistWorldSystem *system, u32 propKind)
{
    DistWorldGiratinaShadowPropRenderer *giratinaRenderer = &system->giratinaShadowPropRenderer;
    GF_ASSERT(propKind != PROP_KIND_INVALID);

    return giratinaRenderer->valid == TRUE && propKind == PROP_KIND_GIRATINA_SHADOW;
}

static BOOL IsGiratinaShadowPropRendererAnimValid(DistWorldSystem *system, u32 animKind)
{
    DistWorldGiratinaShadowPropRenderer *giratinaRenderer = &system->giratinaShadowPropRenderer;
    GF_ASSERT(animKind != PROP_ANIM_KIND_INVALID);

    return giratinaRenderer->valid == TRUE && animKind == PROP_ANIM_KIND_GIRATINA_SHADOW;
}

static BOOL IsGiratinaShadowPropRendererValid(DistWorldSystem *system, int propKind)
{
    DistWorldGiratinaShadowPropRenderer *giratinaRenderer = &system->giratinaShadowPropRenderer;
    return giratinaRenderer->valid == TRUE && propKind == PROP_KIND_GIRATINA_SHADOW;
}

static const Simple3DRotationAngles sGiratinaShadowPropRotAngles[5] = {
    { 0, 0, 0 },
    { 0, 180, 0 },
    { 0, 90, 0 },
    { 0, 270, 0 },
    { 90, 0, 0 }
};

static BOOL DistWorldGiratinaShadowProp_AnimInit(OverworldAnimManager *animMan, void *context)
{
    DistWorldGiratinaShadowProp *giratinaProp = context;
    const DistWorldGiratinaShadowPropUserData *userData = OverworldAnimManager_GetUserData(animMan);

    giratinaProp->userData = *userData;
    const DistWorldGiratinaShadowTemplate *template = &giratinaProp->userData.template;

    giratinaProp->animStopped = TRUE;
    giratinaProp->rotAngles = sGiratinaShadowPropRotAngles[template->rotAnglesIndex];

    VecFx32 pos;
    pos.x = (template->initialTileX << 4) * FX32_ONE;
    pos.y = (template->initialTileY << 4) * FX32_ONE;
    pos.z = (template->initialTileZ << 4) * FX32_ONE;

    if (template->rotAnglesIndex == 4) {
        pos.x += FX32_ONE * 8;
    }

    OverworldAnimManager_SetPosition(animMan, &pos);

    giratinaProp->animStopped = FALSE;
    return TRUE;
}

static void DistWorldGiratinaShadowProp_AnimExit(OverworldAnimManager *animMan, void *context)
{
    DistWorldGiratinaShadowProp *giratinaProp = context;
    Simple3D_FreeAnimObject(&giratinaProp->userData.renderer->animation);
}

static void DistWorldGiratinaShadowProp_AnimTick(OverworldAnimManager *animMan, void *context)
{
    DistWorldGiratinaShadowProp *giratinaProp = context;
    const DistWorldGiratinaShadowTemplate *template = &giratinaProp->userData.template;

    switch (giratinaProp->state) {
    case GIRATINA_SHADOW_PROP_STATE_SFX:
        if (template->soundKind == GIRATINA_SHADOW_PROP_SFX_KIND_CRY) {
            Sound_PlayPokemonCry(SPECIES_GIRATINA, 0);
        } else if (template->soundKind == GIRATINA_SHADOW_PROP_SFX_KIND_FLEE) {
            Sound_PlayEffect(SEQ_SE_DP_FW019);
        }

        giratinaProp->state++;
        // fallthrough

    case GIRATINA_SHADOW_PROP_STATE_MOVE: {
        VecFx32 pos;
        const VecFx32 *posDelta = &template->posDelta;

        OverworldAnimManager_GetPosition(animMan, &pos);

        pos.x += posDelta->x;
        pos.y += posDelta->y;
        pos.z += posDelta->z;

        giratinaProp->movementAnimStep++;

        if (giratinaProp->movementAnimStep >= template->movementAnimSteps) {
            giratinaProp->state++;
            giratinaProp->animFinished = TRUE;
            giratinaProp->animStopped = TRUE;
        }

        OverworldAnimManager_SetPosition(animMan, &pos);
        break;
    }

    case GIRATINA_SHADOW_PROP_STATE_END:
        break;
    }

    if (!giratinaProp->animStopped) {
        Simple3D_UpdateAnim(&giratinaProp->userData.renderer->animation, FX32_ONE, TRUE);
    }
}

static void DistWorldGiratinaShadowProp_AnimRender(OverworldAnimManager *animMan, void *context)
{
    DistWorldGiratinaShadowProp *giratinaProp = context;

    if (!giratinaProp->animStopped) {
        VecFx32 pos;
        OverworldAnimManager_GetPosition(animMan, &pos);

        const VecFx32 *scale = &giratinaProp->userData.template.scale;

        SetPropPolygonID(giratinaProp->userData.system, PROP_KIND_GIRATINA_SHADOW, 1 << 3);
        Simple3D_DrawRenderObjRotationAngles(&giratinaProp->userData.renderer->renderObj, &pos, scale, &giratinaProp->rotAngles);
    }
}

static const OverworldAnimManagerFuncs sGiratinaShadowPropAnimFuncs = {
    sizeof(DistWorldGiratinaShadowProp),
    DistWorldGiratinaShadowProp_AnimInit,
    DistWorldGiratinaShadowProp_AnimExit,
    DistWorldGiratinaShadowProp_AnimTick,
    DistWorldGiratinaShadowProp_AnimRender
};

static void InitSimplePropsForCurrentAndNextMaps(DistWorldSystem *system)
{
    u32 mapHeaderID = DistWorldSystem_GetMapHeaderID(system);
    const DistWorldMapConnections *mapConnections = GetConnectionsForMap(mapHeaderID);

    InitSimplePropsForMap(system, mapHeaderID);

    if (mapConnections->nextID != MAP_HEADER_INVALID) {
        InitSimplePropsForMap(system, mapConnections->nextID);
    }
}

static void FinishAllSimplePropAnimators(DistWorldSystem *system)
{
    int i = 0;
    DistWorldSimplePropManager *simplePropMan = &system->simplePropMan;
    DistWorldSimplePropAnimator *iter = simplePropMan->animators;

    while (i < SIMPLE_PROP_MANAGER_ANIMATOR_COUNT) {
        if (iter->animMan != NULL) {
            DistWorldMapSimplePropAnimator_Finish(iter);
        }

        iter++;
        i++;
    }
}

static void DistWorldMapSimplePropAnimator_Finish(DistWorldSimplePropAnimator *animator)
{
    if (animator->animMan != NULL) {
        OverworldAnimManager_Finish(animator->animMan);
    }

    animator->animMan = NULL;
}

static void InitSimplePropAnimation(DistWorldSystem *system, DistWorldSimplePropAnimator *animator, const DistWorldSimplePropTemplate *simplePropTemplate, u32 mapHeaderID)
{
    animator->mapHeaderID = mapHeaderID;
    animator->template = *simplePropTemplate;

    DistWorldSimplePropUserData userData;
    userData.system = system;
    userData.animator = animator;

    const OverworldAnimManagerFuncs *animFuncs = sPropAnimFuncsByKind[simplePropTemplate->propKind];
    animator->animMan = FieldEffectManager_InitAnimManager(system->fieldSystem->fieldEffMan, animFuncs, NULL, 0, &userData, 2);
}

static void InitSimplePropsFromTemplates(DistWorldSystem *system, const DistWorldSimplePropMapTemplates *mapTemplates)
{
    const DistWorldSimplePropTemplate *iter = mapTemplates->templates;

    while (iter->propKind != PROP_KIND_INVALID) {
        if (CheckFlagCondition(system, iter->flagCond, iter->flagCondVal) == TRUE) {
            DistWorldSimplePropAnimator *animator = FindUnusedSimplePropAnimator(system);
            InitSimplePropAnimation(system, animator, iter, mapTemplates->mapHeaderID);
        }

        iter++;
    }
}

static void InitSimplePropsForMap(DistWorldSystem *system, u32 mapHeaderID)
{
    const DistWorldSimplePropMapTemplates *iter = sSimplePropsMapTemplates;

    while (iter->mapHeaderID != MAP_HEADER_INVALID) {
        if (iter->mapHeaderID == mapHeaderID) {
            InitSimplePropsFromTemplates(system, iter);
            return;
        }

        iter++;
    }
}

static DistWorldSimplePropAnimator *FindUnusedSimplePropAnimator(DistWorldSystem *system)
{
    int i = 0;
    DistWorldSimplePropManager *simplePropMan = &system->simplePropMan;
    DistWorldSimplePropAnimator *iter = simplePropMan->animators;

    do {
        if (iter->animMan == NULL) {
            return iter;
        }

        iter++;
        i++;
    } while (i < SIMPLE_PROP_MANAGER_ANIMATOR_COUNT);

    GF_ASSERT(FALSE);
    return NULL;
}

static void FinishSimplePropAnimatorForMap(DistWorldSystem *system, u32 mapHeaderID)
{
    int i = 0;
    DistWorldSimplePropManager *simplePropMan = &system->simplePropMan;
    DistWorldSimplePropAnimator *iter = simplePropMan->animators;

    while (i < SIMPLE_PROP_MANAGER_ANIMATOR_COUNT) {
        if (iter->mapHeaderID == mapHeaderID && iter->animMan != NULL) {
            DistWorldMapSimplePropAnimator_Finish(iter);
        }

        iter++;
        i++;
    }
}

static BOOL HasActiveSimpleProp(DistWorldSystem *system, int propKind)
{
    int i = 0;
    DistWorldSimplePropManager *simplePropMan = &system->simplePropMan;
    DistWorldSimplePropAnimator *iter = simplePropMan->animators;

    while (i < SIMPLE_PROP_MANAGER_ANIMATOR_COUNT) {
        if (iter->animMan != NULL && iter->template.propKind == propKind) {
            return TRUE;
        }

        iter++;
        i++;
    }

    return FALSE;
}

static BOOL HasActiveSimpleProp2(DistWorldSystem *system, u32 propKind)
{
    int i = 0;
    DistWorldSimplePropManager *simplePropMan = &system->simplePropMan;
    DistWorldSimplePropAnimator *iter = simplePropMan->animators;

    while (i < SIMPLE_PROP_MANAGER_ANIMATOR_COUNT) {
        if (iter->animMan != NULL) {
            const DistWorldPropAnimInfo *animInfo = &sPropAnimInfoByKind[iter->template.propKind];

            if (animInfo->propKind == propKind) {
                return TRUE;
            }
        }

        iter++;
        i++;
    }

    return FALSE;
}

static BOOL HasActiveSimplePropAnim(DistWorldSystem *system, u32 animKind)
{
    int i = 0;
    DistWorldSimplePropManager *simplePropMan = &system->simplePropMan;
    DistWorldSimplePropAnimator *iter = simplePropMan->animators;

    while (i < SIMPLE_PROP_MANAGER_ANIMATOR_COUNT) {
        if (iter->animMan != NULL) {
            const DistWorldPropAnimInfo *animInfo = &sPropAnimInfoByKind[iter->template.propKind];

            if (animInfo->animKind == animKind) {
                return TRUE;
            }
        }

        iter++;
        i++;
    }

    return FALSE;
}

static BOOL DistWorldSimpleProp_AnimInit(OverworldAnimManager *animMan, void *context)
{
    DistWorldSimpleProp *simpleProp = context;
    const DistWorldSimplePropUserData *userData = OverworldAnimManager_GetUserData(animMan);
    const DistWorldSimplePropTemplate *simplePropTemplate = &userData->animator->template;

    simpleProp->userData = *userData;

    BOOL rendererAlreadyInit;
    simpleProp->renderer = DistWorldPropRenderer_Init(userData->system, simplePropTemplate->propKind, &rendererAlreadyInit);

    if (!rendererAlreadyInit) {
        LoadRenderBuffersForProp(simpleProp->userData.system, simplePropTemplate->propKind, &simpleProp->renderer->renderObj, &simpleProp->renderer->animation);
    }

    VecFx32_SetPosFromMapCoords(simplePropTemplate->tileX, simplePropTemplate->tileZ, &simpleProp->pos);
    simpleProp->pos.y = MAP_OBJECT_COORD_CENTER_TO_FX32(simplePropTemplate->tileY);

    const VecFx32 *initialPosOffset = &sPropInitialPosOffsetByKind[simplePropTemplate->propKind];
    simpleProp->pos.x += initialPosOffset->x;
    simpleProp->pos.y += initialPosOffset->y;
    simpleProp->pos.z += initialPosOffset->z;

    return TRUE;
}

static void DistWorldSimpleProp_AnimExit(OverworldAnimManager *animMan, void *context)
{
    DistWorldSimpleProp *simpleProp = context;
    const DistWorldSimplePropTemplate *template = &simpleProp->userData.animator->template;

    if (DistWorldPropAnimInfo_IsAnimKindValid(template->propKind) == TRUE) {
        Simple3D_FreeAnimation(&simpleProp->renderer->animation);
    }

    DistWorldPropRenderer_InvalidateAnimated(simpleProp->userData.system, simpleProp->renderer);
}

static void DistWorldSimpleProp_AnimTick(OverworldAnimManager *animMan, void *context)
{
    DistWorldSimpleProp *simpleProp = context;
    int propKind = simpleProp->userData.animator->template.propKind;

    if (DistWorldPropAnimInfo_IsAnimKindValid(propKind) == TRUE) {
        Simple3D_UpdateAnim(&simpleProp->renderer->animation, FX32_ONE, TRUE);
    }

    simpleProp->inView = IsPropInView(simpleProp->userData.system, propKind, &simpleProp->pos);
}

static void DistWorldSimpleProp_AnimRender(OverworldAnimManager *animMan, void *context)
{
    DistWorldSimpleProp *simpleProp = context;

    if (simpleProp->inView == TRUE) {
        Simple3D_DrawRenderObjWithPos(&simpleProp->renderer->renderObj, &simpleProp->pos);
    }
}

static const OverworldAnimManagerFuncs sSimplePropAnimFuncs = {
    sizeof(DistWorldSimpleProp),
    DistWorldSimpleProp_AnimInit,
    DistWorldSimpleProp_AnimExit,
    DistWorldSimpleProp_AnimTick,
    DistWorldSimpleProp_AnimRender
};

static void AddMapObjectsForCurrentAndNextMap(DistWorldSystem *system)
{
    DistWorldMapObjectManager *dwMapObjMan = &system->mapObjMan;
    u32 mapHeaderID = DistWorldSystem_GetMapHeaderID(system);
    const DistWorldMapConnections *mapConnections = GetConnectionsForMap(mapHeaderID);

    AddMapObjectsForMap(system, mapHeaderID);

    if (mapConnections->nextID != MAP_HEADER_INVALID) {
        AddMapObjectsForMap(system, mapConnections->nextID);
    }
}

static void Dummy0224EE6C(DistWorldSystem *system)
{
    return;
}

static void DeleteMapObject(DistWorldSystem *system, MapObject *mapObj)
{
    DistWorldMapObjectManager *dwMapObjMan = &system->mapObjMan;
    MapObject **iter = dwMapObjMan->mapObjs;

    for (int i = 0; i < MAP_OBJECT_MANAGER_OBJECT_COUNT; i++, iter++) {
        if (*iter != NULL && *iter == mapObj) {
            MapObject_Delete(*iter);
            *iter = NULL;
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static MapObject **FindFreeMapObjectSlot(DistWorldSystem *system)
{
    int i;
    DistWorldMapObjectManager *dwMapObjMan = &system->mapObjMan;

    for (i = 0; i < MAP_OBJECT_MANAGER_OBJECT_COUNT; i++) {
        if (dwMapObjMan->mapObjs[i] == NULL) {
            return &dwMapObjMan->mapObjs[i];
        }
    }

    GF_ASSERT(FALSE);
    return NULL;
}

static MapObject *FindExistingMapObjectByEvent(DistWorldSystem *system, const ObjectEvent *objEvent, u32 mapHeaderID)
{
    int startIdx = 0;
    MapObject *mapObj;
    const MapObjectManager *mapObjMan = system->fieldSystem->mapObjMan;

    while (MapObjectMan_FindObjectWithStatus(mapObjMan, &mapObj, &startIdx, MAP_OBJ_STATUS_0)) {
        if (MapObject_GetMapID(mapObj) == mapHeaderID && MapObject_GetLocalID(mapObj) == objEvent->localID) {
            GF_ASSERT(objEvent->graphicsID == MapObject_GetGraphicsID(mapObj));
            return mapObj;
        }
    }

    return NULL;
}

static BOOL CheckFlagConditionForObjectEvent(DistWorldSystem *system, const DistWorldObjectEvent *objEvent, BOOL isManual)
{
    u16 flagCond = objEvent->flagCond;
    u16 flagCondVal = objEvent->flagCondVal;
    VarsFlags *varsFlags = SaveData_GetVarsFlags(system->fieldSystem->saveData);

    if (flagCond == FLAG_COND_MANUAL_ADD_ONLY) {
        if (!isManual) {
            return FALSE;
        }
    } else if (!CheckFlagCondition(system, flagCond, flagCondVal)) {
        return FALSE;
    }

    return TRUE;
}

static BOOL AddMapObjectFromEvent(DistWorldSystem *system, MapObject **mapObj, const DistWorldObjectEvent *objEvent, u32 mapHeaderID, u16 isManual)
{
    MapObject *existingMapObj = FindExistingMapObjectByEvent(system, &objEvent->objEvent, mapHeaderID);

    if (existingMapObj != NULL) {
        if (IsMapObjectManaged(system, existingMapObj) == TRUE) {
            return FALSE;
        }

        *mapObj = existingMapObj;
    } else {
        if (!CheckFlagConditionForObjectEvent(system, objEvent, isManual) || FieldSystem_CheckFlag(system->fieldSystem, objEvent->objEvent.hiddenFlag)) {
            return FALSE;
        }

        *mapObj = MapObjectMan_AddMapObjectFromHeader(system->fieldSystem->mapObjMan, &objEvent->objEvent, mapHeaderID);
        GF_ASSERT(*mapObj != NULL);
    }

    MapObject_SetHidden(*mapObj, TRUE);

    if (objEvent->rotated == TRUE) {
        ov9_0224A390(system, *mapObj, objEvent->rotationAngle);
    }

    sub_02062FC4(*mapObj, TRUE);
    MapObject_SetFlagIsPersistent(*mapObj, TRUE);
    MapObject_SetHeightCalculationDisabled(*mapObj, TRUE);
    MapObject_SetStatusFlagOn(*mapObj, MAP_OBJ_STATUS_13);

    if (existingMapObj == NULL) {
        MapObject_SetPosDirFromCoords(*mapObj, objEvent->objEvent.x, (objEvent->objEvent.y >> 3) / FX32_ONE, objEvent->objEvent.z, objEvent->objEvent.dir);
        Billboard *billboard = ov5_021EB1A0(*mapObj);

        if (billboard != NULL) {
            ov5_021EDEB4(*mapObj, billboard);
        }
    }

    MapObject_SetHidden(*mapObj, FALSE);
    return TRUE;
}

static BOOL AddMapObjectsFromIter(DistWorldSystem *system, const DistWorldObjectEvent **objEventsIter, u32 mapHeaderID)
{
    while (*objEventsIter != NULL) {
        MapObject **mapObj = FindFreeMapObjectSlot(system);
        AddMapObjectFromEvent(system, mapObj, *objEventsIter, mapHeaderID, FALSE);
        objEventsIter++;
    }

    return FALSE;
}

static void AddMapObjectsForMap(DistWorldSystem *system, u32 mapHeaderID)
{
    const DistWorldMapObjectEvents *iter = sMapObjectEvents;

    while (iter->mapHeaderID != MAP_HEADER_INVALID) {
        if (iter->mapHeaderID == mapHeaderID) {
            AddMapObjectsFromIter(system, iter->objEvents, mapHeaderID);
            return;
        }

        iter++;
    }
}

static void DeleteMapObjectsForMap(DistWorldSystem *system, u32 mapHeaderID)
{
    int i;
    DistWorldMapObjectManager *dwMapObjMan = &system->mapObjMan;
    MapObject **iter = dwMapObjMan->mapObjs;

    for (i = 0; i < MAP_OBJECT_MANAGER_OBJECT_COUNT; i++, iter++) {
        if (*iter != NULL) {
            if (MapObject_GetMapID(*iter) == mapHeaderID) {
                MapObject_Delete(*iter);
                *iter = NULL;
            }
        }
    }
}

static MapObject *AddMapObjectWithLocalID(DistWorldSystem *system, u32 mapHeaderID, u16 mapObjLocalID)
{
    MapObject **mapObj = NULL;
    const DistWorldMapObjectEvents *mapObjEventsIter = sMapObjectEvents;

    while (mapObjEventsIter->mapHeaderID != MAP_HEADER_INVALID) {
        if (mapObjEventsIter->mapHeaderID == mapHeaderID) {
            const DistWorldObjectEvent **objEventIter = mapObjEventsIter->objEvents;

            while (*objEventIter != NULL) {
                if ((*objEventIter)->objEvent.localID == mapObjLocalID) {
                    mapObj = FindFreeMapObjectSlot(system);
                    AddMapObjectFromEvent(system, mapObj, *objEventIter, mapHeaderID, TRUE);

                    if (mapHeaderID == MAP_HEADER_DISTORTION_WORLD_B6F && mapObjLocalID >= MAP_OBJECT_B6F_MESPRIT_BOULDER_PIT_TEXT_1 && mapObjLocalID <= MAP_OBJECT_B6F_AZELF_BOULDER_PIT_TEXT_3) {
                        sub_02062D80(*mapObj, FALSE);
                    }

                    return *mapObj;
                }

                objEventIter++;
            }

            GF_ASSERT(FALSE);
        }

        mapObjEventsIter++;
    }

    GF_ASSERT(FALSE);
    return NULL;
}

void DistWorld_AddMapObjectWithLocalID(FieldSystem *fieldSystem, u16 mapObjLocalID)
{
    u32 mapHeaderID = fieldSystem->location->mapId;
    DistWorldSystem *dwSystem = fieldSystem->unk_04->dynamicMapFeaturesData;

    AddMapObjectWithLocalID(dwSystem, mapHeaderID, mapObjLocalID);
}

void DistWorld_DeleteMapObjectWithLocalID(FieldSystem *fieldSystem, u16 mapObjLocalID)
{
    int startIdx = 0;
    MapObject *mapObj;
    u32 mapHeaderID = fieldSystem->location->mapId;
    MapObjectManager *mapObjMan = fieldSystem->mapObjMan;
    DistWorldSystem *dwSystem = fieldSystem->unk_04->dynamicMapFeaturesData;

    while (MapObjectMan_FindObjectWithStatus(mapObjMan, &mapObj, &startIdx, MAP_OBJ_STATUS_0) == TRUE) {
        if (MapObject_GetLocalID(mapObj) == mapObjLocalID && MapObject_GetMapID(mapObj) == mapHeaderID) {
            DeleteMapObject(dwSystem, mapObj);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static BOOL IsMapObjectManaged(DistWorldSystem *system, MapObject *mapObj)
{
    int i = 0;
    DistWorldMapObjectManager *dwMapObjMan = &system->mapObjMan;
    MapObject **iter = dwMapObjMan->mapObjs;

    GF_ASSERT(mapObj != NULL);

    do {
        if (*iter == mapObj) {
            return TRUE;
        }

        iter++;
        i++;
    } while (i < MAP_OBJECT_MANAGER_OBJECT_COUNT);

    return FALSE;
}

static const UnkStruct_ov9_0225311C Unk_ov9_0225311C[] = {
    { 0x243, 0x4C, 0x44, 0x11 },
    { 0x243, 0x61, 0x43, 0x11 },
    { 0x243, 0x56, 0x39, 0x11 },
    { 0x244, 0x44, 0x43, 0x6 },
    { 0x244, 0x4B, 0x43, -1 },
    { 0x244, 0x4F, 0x43, -1 },
    { 0x244, 0x60, 0x44, 0x7 },
    { 0x244, 0x64, 0x44, -1 },
    { 0x244, 0x69, 0x44, -1 },
    { 0x244, 0x55, 0x3C, 0x8 },
    { 0x244, 0x55, 0x38, -1 },
    { 0x244, 0x55, 0x39, -1 },
    { 0x244, 0x55, 0x34, -1 },
    { 0x244, 0x55, 0x35, -1 },
    { 0x251, 0x0, 0x0, 0x0 }
};

static BOOL ov9_0224F1F8(u32 param0, int param1, int param2, u32 *param3)
{
    const UnkStruct_ov9_0225311C *v0 = Unk_ov9_0225311C;

    while (v0->unk_00 != 593) {
        if ((v0->unk_00 == param0) && (v0->unk_04 == param1) && (v0->unk_06 == param2)) {
            *param3 = v0->unk_08;
            return 1;
        }

        v0++;
    }

    return 0;
}

BOOL ov9_0224F240(const MapObject *param0, int param1)
{
    int v0, v1;
    u32 v2, v3;
    FieldSystem *fieldSystem = MapObject_FieldSystem(param0);
    v3 = fieldSystem->location->mapId;
    v0 = MapObject_GetX(param0);
    v1 = MapObject_GetZ(param0);
    v0 += MapObject_GetDxFromDir(param1);
    v1 += MapObject_GetDzFromDir(param1);

    return ov9_0224F1F8(v3, v0, v1, &v2);
}

static BOOL ov9_0224F284(const MapObject *param0, u32 *param1)
{
    int v0, v1;
    u32 v2;
    FieldSystem *fieldSystem = MapObject_FieldSystem(param0);
    v2 = fieldSystem->location->mapId;
    v0 = MapObject_GetX(param0);
    v1 = MapObject_GetZ(param0);

    return ov9_0224F1F8(v2, v0, v1, param1);
}

BOOL ov9_0224F2B0(const MapObject *param0)
{
    u32 v0;
    return ov9_0224F284(param0, &v0);
}

UnkStruct_ov9_0224F6EC *ov9_0224F2BC(FieldSystem *fieldSystem, FieldTask *param1, MapObject *param2)
{
    UnkStruct_ov9_0224F6EC *v0 = Heap_AllocAtEnd(HEAP_ID_FIELD1, sizeof(UnkStruct_ov9_0224F6EC));
    memset(v0, 0, sizeof(UnkStruct_ov9_0224F6EC));

    v0->unk_00 = fieldSystem->unk_04->dynamicMapFeaturesData;
    v0->fieldSystem = fieldSystem;
    v0->unk_08 = param1;
    v0->unk_0C = param2;

    ov9_0224F284(param2, &v0->unk_14);

    switch (v0->unk_14) {
    case 17:
        v0->unk_12 = 0;
        break;
    case 6:
    case 7:
    case 8:
        if (CheckPersistedBoulderPuzzleFlag(v0->unk_00, v0->unk_14) == 0) {
            v0->unk_12 = 1;
            break;
        }

    default:
        v0->unk_12 = 2;
        break;
    }

    return v0;
}

static BOOL ov9_0224F324(UnkStruct_ov9_0224F6EC *param0)
{
    int v0;
    VecFx32 v1;
    MapObject *v2 = param0->unk_0C;

    MapObject_GetPosPtr(v2, &v1);
    v1.y -= FX32_ONE * 8;
    MapObject_SetPos(v2, &v1);

    if (v1.y > ((115 << 4) * FX32_ONE)) {
        return 0;
    }

    Sound_PlayEffect(SEQ_SE_DP_UG_008);
    v1.y = ((115 << 4) * FX32_ONE);
    MapObject_SetPosDirFromVec(v2, &v1, MapObject_GetFacingDir(v2));
    MapObject_SetMapID(v2, 580);

    {
        u32 v3, v4;

        switch (MapObject_GetLocalID(v2)) {
        case MAP_OBJECT_B6F_MESPRIT_BOULDER_OUTSIDE:
            v3 = 3;
            v4 = 0;
            break;
        case MAP_OBJECT_B6F_AZELF_BOULDER_OUTSIDE:
            v3 = 4;
            v4 = 1;
            break;
        case MAP_OBJECT_B6F_UXIE_BOULDER_OUTSIDE:
            v3 = 5;
            v4 = 2;
            break;
        }

        SetPersistedBoulderPuzzleFlag(param0->unk_00, v3);
        ClearPersistedBoulderPuzzleFlag(param0->unk_00, v4);
    }

    return 1;
}

static BOOL ov9_0224F3BC(UnkStruct_ov9_0224F6EC *param0)
{
    switch (param0->unk_10) {
    case 0: {
        VecFx32 v0;
        MapObject *v1 = param0->unk_0C;

        MapObject_GetPosPtr(v1, &v0);
        v0.y -= FX32_ONE * 2;
        MapObject_SetPos(v1, &v0);
        MapObject_MovePosInDir(v1, MapObject_GetMovingDir(v1), (FX32_ONE * 2));
    }

        param0->unk_18++;

        if (param0->unk_18 < 8) {
            return 0;
        }

        param0->unk_18 = 0;
        param0->unk_10++;
        break;
    case 1: {
        VecFx32 v2;
        MapObject *v3 = param0->unk_0C;

        MapObject_GetPosPtr(v3, &v2);
        v2.y -= FX32_ONE * 4;
        MapObject_SetPos(v3, &v2);
    }

        param0->unk_18++;

        if (param0->unk_18 < 4) {
            return 0;
        }

        param0->unk_18 = 0;

        {
            u32 v4 = 0, v5 = 0;
            MapObject *v6 = param0->unk_0C;

            SetPersistedBoulderPuzzleFlag(param0->unk_00, param0->unk_14);

            switch (MapObject_GetLocalID(v6)) {
            case MAP_OBJECT_B6F_MESPRIT_BOULDER_OUTSIDE:
                v4 = MAP_OBJECT_B6F_MESPRIT_BOULDER_IN_PIT;
                v5 = 3;
                break;
            case MAP_OBJECT_B6F_AZELF_BOULDER_OUTSIDE:
                v4 = MAP_OBJECT_B6F_AZELF_BOULDER_IN_PIT;
                v5 = 4;
                break;
            case MAP_OBJECT_B6F_UXIE_BOULDER_OUTSIDE:
                v4 = MAP_OBJECT_B6F_UXIE_BOULDER_IN_PIT;
                v5 = 5;
                break;
            default:
                GF_ASSERT(0);
            }

            ClearPersistedBoulderPuzzleFlag(param0->unk_00, v5);
            MapObject_SetLocalID(v6, v4);

            {
                int v7 = MapObject_GetMovingDir(v6);
                int v8 = MapObject_GetX(v6);
                int v9 = MapObject_GetY(v6);
                int v10 = MapObject_GetZ(v6);

                v8 += MapObject_GetDxFromDir(v7);
                v9 -= (2 * 2);
                v10 += MapObject_GetDzFromDir(v7);

                MapObject_SetX(v6, v8);
                MapObject_SetY(v6, v9);
                MapObject_SetZ(v6, v10);
                MapObject_UpdateCoords(v6);
            }
        }

        {
            VecFx32 v11;

            MapObject_GetSpritePosOffset(param0->unk_0C, &v11);

            param0->unk_1C = v11.y;
            param0->unk_20 = (FX32_ONE * 1);

            Sound_PlayEffect(SEQ_SE_DP_UG_008);
        }

        param0->unk_10++;
        break;
    case 2: {
        VecFx32 v12;
        MapObject *v13 = param0->unk_0C;

        MapObject_GetSpritePosOffset(v13, &v12);
        v12.y = param0->unk_1C + param0->unk_20;

        MapObject_SetSpritePosOffset(v13, &v12);
        param0->unk_20 = -param0->unk_20;
    }

        param0->unk_18++;

        if (param0->unk_18 == 7) {
            param0->unk_20 = 0;
        }

        if (param0->unk_18 < 32) {
            return 0;
        }

        {
            u32 v14 = 0, v15 = 0;
            MapObject *v16 = param0->unk_0C;

            switch (param0->unk_14) {
            case 6:
                v15 = 15;
                v14 = 5;
                break;
            case 7:
                v15 = 14;
                v14 = 7;
                break;
            case 8:
                v15 = 13;
                v14 = 6;
                break;
            default:
                GF_ASSERT(0);
            }

            ClearPersistedBoulderPuzzleFlag(param0->unk_00, v15);
            ScriptManager_Start(param0->unk_08, v14, NULL, NULL);
            param0->unk_10++;
            break;
        }
    case 3: {
        int v17 = 0;

        v17 += CheckPersistedBoulderPuzzleFlag(
            param0->unk_00, DIST_WORLD_PUZZLE_FLAG_MESPRIT_BOULDER_IN_B6F_PIT);
        v17 += CheckPersistedBoulderPuzzleFlag(
            param0->unk_00, DIST_WORLD_PUZZLE_FLAG_AZELF_BOULDER_IN_B6F_PIT);
        v17 += CheckPersistedBoulderPuzzleFlag(
            param0->unk_00, DIST_WORLD_PUZZLE_FLAG_UXIE_BOULDER_IN_B6F_PIT);

        if (v17 >= 3) {
            VarsFlags *v18 = SaveData_GetVarsFlags(param0->fieldSystem->saveData);

            SystemFlag_HandleDistortionWorldPuzzleFinished(v18, HANDLE_FLAG_SET);
        }
    }

        return 1;
    }

    return 0;
}

static BOOL ov9_0224F5D8(UnkStruct_ov9_0224F6EC *param0)
{
    switch (param0->unk_10) {
    case 0: {
        VecFx32 v0;
        MapObject *v1 = param0->unk_0C;

        MapObject_GetPosPtr(v1, &v0);
        v0.y -= FX32_ONE * 2;
        MapObject_SetPos(v1, &v0);
        MapObject_MovePosInDir(v1, MapObject_GetMovingDir(v1), (FX32_ONE * 2));
    }

        param0->unk_18++;

        if (param0->unk_18 < 8) {
            return 0;
        }

        param0->unk_18 = 0;
        param0->unk_10++;
        break;
    case 1: {
        VecFx32 v2;
        MapObject *v3 = param0->unk_0C;

        MapObject_GetPosPtr(v3, &v2);
        v2.y -= FX32_ONE * 4;
        MapObject_SetPos(v3, &v2);
    }

        param0->unk_18++;

        if (param0->unk_18 < 4) {
            return 0;
        }

        param0->unk_18 = 0;
        param0->unk_10++;
        break;
    case 2: {
        VecFx32 v4;
        MapObject *v5 = param0->unk_0C;

        MapObject_GetPosPtr(v5, &v4);
        v4.y -= FX32_ONE * 8;
        MapObject_SetPos(v5, &v4);
    }

        param0->unk_18++;

        if (param0->unk_18 < 40) {
            return 0;
        }

        {
            u32 v6 = 0, v7 = 0, v8 = 0, v9 = 0;
            MapObject *v10 = param0->unk_0C;

            switch (MapObject_GetLocalID(v10)) {
            case MAP_OBJECT_B6F_MESPRIT_BOULDER_OUTSIDE:
                v6 = 0;
                v7 = 3;
                break;
            case MAP_OBJECT_B6F_AZELF_BOULDER_OUTSIDE:
                v6 = 1;
                v7 = 4;
                break;
            case MAP_OBJECT_B6F_UXIE_BOULDER_OUTSIDE:
                v6 = 2;
                v7 = 5;
                break;
            default:
                GF_ASSERT(0);
            }

            SetPersistedBoulderPuzzleFlag(param0->unk_00, v6);
            ClearPersistedBoulderPuzzleFlag(param0->unk_00, v7);
            DeleteMapObject(param0->unk_00, param0->unk_0C);

            return 1;
        }
    }

    return 0;
}

BOOL ov9_0224F6EC(UnkStruct_ov9_0224F6EC *param0)
{
    BOOL v0;

    switch (param0->unk_12) {
    case 0:
        v0 = ov9_0224F324(param0);
        break;
    case 1:
        v0 = ov9_0224F3BC(param0);
        break;
    case 2:
        v0 = ov9_0224F5D8(param0);
        break;
    }

    if (v0 == 1) {
        Heap_Free(param0);
    }

    return v0;
}

static void ov9_0224F724(DistWorldSystem *param0)
{
    UnkStruct_ov9_0224ADC0 *v0 = &param0->unk_1D00;
    u32 v1 = DistWorldSystem_GetMapHeaderID(param0);

    if (v1 == 582) {
        VarsFlags *v2 = SaveData_GetVarsFlags(param0->fieldSystem->saveData);

        if (SystemVars_GetDistortionWorldProgress(v2) == 13) {
            v0->darknessCalculationDisabled = TRUE;
            v0->darknessLevel = 12;
        }
    }

    v0->unk_02 = -1;
}

static void ov9_0224F760(DistWorldSystem *param0)
{
    return;
}

static void ov9_0224F764(DistWorldSystem *param0)
{
    UnkStruct_ov9_0224ADC0 *v0 = &param0->unk_1D00;
    PlayerAvatar *playerAvatar = param0->fieldSystem->playerAvatar;
    const VecFx32 *v2 = PlayerAvatar_PosVector(playerAvatar);

    if (v0->darknessCalculationDisabled == FALSE) {
        v0->darknessLevel = (v2->y - ((65 << 4) * FX32_ONE)) / ((((289 - 65) << 4) * FX32_ONE) / 12);
    }

    if (v0->darknessLevel < 0) {
        v0->darknessLevel = 0;
    } else if (v0->darknessLevel > 12) {
        v0->darknessLevel = 12;
    }

    if (v0->darknessLevel != v0->unk_02) {
        int v3 = 0;

        do {
            CalculateTintedColor(
                v0->unk_08[v3], (4 | (4 << 5) | (8 << 10)), v0->darknessLevel, &v0->unk_28[v3]);
            v3++;
        } while (v3 < 16);

        v3 = 0;

        do {
            CalculateTintedColor(
                v0->unk_48[v3], (6 | (6 << 5) | (8 << 10)), v0->darknessLevel, &v0->unk_E8[v3]);
            v3++;
        } while (v3 < (16 * 5));

        v0->unk_04 = 1;
        v0->unk_02 = v0->darknessLevel;
    }
}

static void ov9_0224F804(DistWorldSystem *param0)
{
    UnkStruct_ov9_0224ADC0 *v0 = &param0->unk_1D00;

    if (v0->unk_04 == 1) {
        {
            Bg_LoadPalette(
                2, v0->unk_28, 32, 32 * 0);
        }

        {
            u32 v1;
            UnkStruct_ov9_0224B064 *v2;
            SpriteResource *v3;
            const NNSG2dImagePaletteProxy *v4;

            v2 = &param0->unk_1A8;
            v3 = v2->unk_1BC[0];
            v4 = SpriteTransfer_GetPaletteProxy(v3, NULL);
            v1 = NNS_G2dGetImagePaletteLocation(v4, NNS_G2D_VRAM_TYPE_2DMAIN);

            DC_FlushRange((void *)v0->unk_E8, 32 * 5);
            GX_LoadOBJPltt(v0->unk_E8, v1, 32 * 5);
        }

        v0->unk_04 = 0;
    }
}

static void SetSkyDarknessCalculationDisabled(DistWorldSystem *system, BOOL disabled)
{
    UnkStruct_ov9_0224ADC0 *v0 = &system->unk_1D00;
    v0->darknessCalculationDisabled = disabled;
}

static void SetSkyDarknessLevel(DistWorldSystem *system, s16 level)
{
    UnkStruct_ov9_0224ADC0 *v0 = &system->unk_1D00;
    v0->darknessLevel = level;
}

static void CalculateTintedColor(GXRgb baseRawColor, GXRgb tintRawColor, u16 tintLevel, GXRgb *outColor)
{
    typedef struct RGB555 {
        u16 r : 5;
        u16 g : 5;
        u16 b : 5;
    } RGB555;

    const RGB555 *base = (RGB555 *)&baseRawColor;
    const RGB555 *tint = (RGB555 *)&tintRawColor;

    if (tintLevel > SPRITE_PALETTE_MAX_TINT_LEVEL) {
        tintLevel = SPRITE_PALETTE_MAX_TINT_LEVEL;
    }

    *outColor = GX_RGB(
        base->r + ((tint->r - base->r) * tintLevel >> 4),
        base->g + ((tint->g - base->g) * tintLevel >> 4),
        base->b + ((tint->b - base->b) * tintLevel >> 4));
}

static void CmdRunDataCascadeBase_InitFromParams(DistWorldSystem *system, CmdRunDataCascadeBase *runData, const CmdParamsCascadeBase *params, const VecFx32 *playerPos)
{
    runData->movementAxis = params->movementAxis;
    runData->movementDir = params->movementDir;
    runData->finalPosOffset.x = FX32_ONE * params->finalPosOffsetTileX;
    runData->finalPosOffset.y = FX32_ONE * params->finalPosOffsetTileY;
    runData->finalPosOffset.z = FX32_ONE * params->finalPosOffsetTileZ;
    runData->mapLoadPosOffset.x = (params->mapLoadPosOffsetTileX << 4) * FX32_ONE;
    runData->mapLoadPosOffset.y = (params->mapLoadPosOffsetTileY << 4) * FX32_ONE;
    runData->mapLoadPosOffset.z = (params->mapLoadPosOffsetTileZ << 4) * FX32_ONE;
    runData->posDelta = params->posDelta;
    runData->playerPos = *playerPos;
}

static void CmdRunDataCascadeBase_InitBobbing(CmdRunDataCascadeBase *runData, enum Axis axis, fx32 delta, fx32 max)
{
    switch (axis) {
    case AXIS_X:
        runData->bobbingOffset = &runData->jumpOffset.x;
        break;

    case AXIS_Y:
        runData->bobbingOffset = &runData->jumpOffset.y;
        break;

    case AXIS_Z:
        runData->bobbingOffset = &runData->jumpOffset.z;
        break;
    }

    *runData->bobbingOffset = FX32_ONE;

    runData->bobbingOffsetDelta = delta;
    runData->bobbingOffsetMax = max;
    runData->spriteBobbing = TRUE;
}

static BOOL CmdRunDataCascadeBase_Update(DistWorldSystem *system, CmdRunDataCascadeBase *runData)
{
    if (runData->currPosOffset.x != runData->finalPosOffset.x) {
        runData->currPosOffset.x += runData->posDelta.x;
        runData->playerPos.x += runData->posDelta.x;
    }

    if (runData->currPosOffset.y != runData->finalPosOffset.y) {
        runData->currPosOffset.y += runData->posDelta.y;
        runData->playerPos.y += runData->posDelta.y;
    }

    if (runData->currPosOffset.z != runData->finalPosOffset.z) {
        runData->currPosOffset.z += runData->posDelta.z;
        runData->playerPos.z += runData->posDelta.z;
    }

    if (runData->spriteBobbing) {
        *runData->bobbingOffset += runData->bobbingOffsetDelta;

        if (*runData->bobbingOffset >= runData->bobbingOffsetMax) {
            *runData->bobbingOffset = runData->bobbingOffsetMax;
            runData->bobbingOffsetDelta = -runData->bobbingOffsetDelta;
        } else if (*runData->bobbingOffset <= FX32_ONE) {
            *runData->bobbingOffset = FX32_ONE;
            runData->bobbingOffsetDelta = -runData->bobbingOffsetDelta;
        }
    }

    if (!runData->targetMapLoaded) {
        if (runData->currPosOffset.x == runData->mapLoadPosOffset.x && runData->currPosOffset.y == runData->mapLoadPosOffset.y && runData->currPosOffset.z == runData->mapLoadPosOffset.z) {
            if (runData->movementDir == CASCADE_MOVEMENT_DIR_UP) {
                ov9_0224CC50(system, NULL, 1);
            } else {
                ov9_0224CC50(system, NULL, 2);
            }

            runData->targetMapLoaded++;
        }

        return CASCADE_UPDATE_RES_MAP_LOAD_REACHED;
    }

    if (runData->currPosOffset.x == runData->finalPosOffset.x && runData->currPosOffset.y == runData->finalPosOffset.y && runData->currPosOffset.z == runData->finalPosOffset.z) {
        return CASCADE_UPDATE_RES_FINAL_POS_REACHED;
    }

    fx32 distToFinal;

    switch (runData->movementAxis) {
    case AXIS_X:
        distToFinal = runData->finalPosOffset.x - runData->currPosOffset.x;
        break;

    case AXIS_Y:
        distToFinal = runData->finalPosOffset.y - runData->currPosOffset.y;
        break;

    case AXIS_Z:
        distToFinal = runData->finalPosOffset.z - runData->currPosOffset.z;
        break;
    }

    if (distToFinal < 0) {
        distToFinal = -distToFinal;
    }

    return distToFinal - CASCADE_FINISHING_THRESHOLD == 0 ? CASCADE_UPDATE_RES_FINISHING_POS_REACHED : CASCADE_UPDATE_RES_NOTHING;
}

static const DistWorldCameraAngleTemplate sCascadeDownFirstCameraAngle = {
    .bounds = {
        .startTileX = 0,
        .startTileY = 0,
        .startTileZ = 0,
        .sizeX = 0,
        .sizeY = 0,
        .sizeZ = 0,
    },
    .angleX = 245,
    .angleY = 239,
    .angleZ = 0,
    .playerDir = FACE_UP,
    .transitionSteps = CASCADE_DOWN_FIRST_CAMERA_TRANSITION_STEPS
};

static const DistWorldCameraAngleTemplate sCascadeDownSecondCameraAngle = {
    .bounds = {
        .startTileX = 0,
        .startTileY = 0,
        .startTileZ = 0,
        .sizeX = 0,
        .sizeY = 0,
        .sizeZ = 0,
    },
    .angleX = 0,
    .angleY = 0,
    .angleZ = 0,
    .playerDir = FACE_UP,
    .transitionSteps = CASCADE_DOWN_SECOND_CAMERA_TRANSITION_STEPS
};

static void UpdateCascadeDownCamera(DistWorldSystem *system, CmdRunDataCascadeDown *runData)
{
    MapObject *playerMapObj = Player_MapObject(system->fieldSystem->playerAvatar);
    int yOffset = (runData->base.currPosOffset.y >> 4) / FX32_ONE;

    if (runData->cameraAngleState == 0 && yOffset == CASCADE_DOWN_FIRST_CAMERA_ANGLE_Y_OFFSET) {
        DoCameraTransition(system, &sCascadeDownFirstCameraAngle);
        ov9_0224A4D0(system, playerMapObj, -32, 72);
        runData->cameraAngleState++;
    } else if (runData->cameraAngleState == 1 && yOffset == CASCADE_DOWN_SECOND_CAMERA_ANGLE_Y_OFFSET) {
        MapObject_TryFace(playerMapObj, FACE_LEFT);
        DoCameraTransition(system, &sCascadeDownSecondCameraAngle);
        ov9_0224A4D0(system, playerMapObj, 32, 31);
        runData->cameraAngleState++;
    }

    if (runData->cameraAngleState == 1 && runData->cameraAngleDelay >= 0) {
        runData->cameraAngleDelay++;

        if (runData->cameraAngleDelay >= CASCADE_DOWN_FIRST_CAMERA_ANGLE_DELAY) {
            MapObject_TryFace(playerMapObj, FACE_UP);
            runData->cameraAngleDelay = -1;
        }
    }
}

static int EventCmdCascadeDown_Init(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    CmdRunDataCascadeDown *runData = ResetLoadedEventDataBuffer(system, sizeof(CmdRunDataCascadeDown));
    const CmdParamsCascadeDown *cmdParams = params;
    CmdRunDataCascadeBase *baseRunData = &runData->base;
    PlayerAvatar *playerAvatar = system->fieldSystem->playerAvatar;
    MapObject *playerMapObj = Player_MapObject(playerAvatar);

    VecFx32 playerPos;
    MapObject_GetPosPtr(playerMapObj, &playerPos);
    MapObject_TryFace(playerMapObj, FACE_LEFT);
    CmdRunDataCascadeBase_InitFromParams(system, baseRunData, &cmdParams->base, &playerPos);

    baseRunData->posDelta.x >>= 1;
    baseRunData->posDelta.y >>= 1;
    baseRunData->posDelta.z >>= 1;
    runData->spriteRotationAnimStepsLeft = CASCADE_DOWN_INITIAL_SPRITE_ROTATION_STEPS;

    ov9_0224A4D0(system, playerMapObj, 90, runData->spriteRotationAnimStepsLeft);

    VecFx32 spritePosOffset = { 0, 0, 0 };
    MapObject_SetSpritePosOffset(playerMapObj, &spritePosOffset);

    OverworldAnimManager *mountAnimMan = PlayerAvatar_GetSurfMountAnimManager(playerAvatar);
    Simple3DRotationAngles *mountRotAngles = DistWorldSurfMountRenderer_GetSurfMountRotationAngles(mountAnimMan);

    DistWorldSurfMountRenderer_SetFixedRotationAngles(mountAnimMan, FACE_LEFT, AVATAR_DISTORTION_STATE_CEILING);

    DistWorldSurfMountRenderer_SetFlags(
        mountAnimMan,
        DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_NO_ROTATION_RECALCULATION
            | DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_NO_ORBIT_RECALCULATION
            | DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_USE_EXTERNAL_POS_FIX
            | DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_USE_EXTERNAL_SPRITE_POS_OFFSET);

    runData->mountRotAngles.x = FX32_ONE * mountRotAngles->alpha;
    runData->mountRotAngles.y = FX32_ONE * mountRotAngles->beta;
    runData->mountRotAngles.z = FX32_ONE * mountRotAngles->gamma;
    runData->mountRotAnglesDelta.x = CASCADE_DOWN_MOUNT_ROTATION_ANGLE_X / CASCADE_DOWN_INITIAL_SPRITE_ROTATION_STEPS;
    runData->mountRotAnglesDelta.y = CASCADE_DOWN_MOUNT_ROTATION_ANGLE_Y / CASCADE_DOWN_INITIAL_SPRITE_ROTATION_STEPS;
    runData->mountRotAnglesDelta.z = CASCADE_DOWN_MOUNT_ROTATION_ANGLE_Z / CASCADE_DOWN_INITIAL_SPRITE_ROTATION_STEPS;
    runData->orbitAngle = CASCADE_DOWN_ORBIT_ANGLE_START;
    runData->orbitAngleDelta = CASCADE_DOWN_ORBIT_ANGLE / CASCADE_DOWN_INITIAL_SPRITE_ROTATION_STEPS;

    VecFx32 *mountPosFix = DistWorldSurfMountRenderer_GetExternalPosFixPtr(mountAnimMan);
    mountPosFix->x = CASCADE_DOWN_ROTATE_MOUNT_POSITION_FIX_X_START;
    mountPosFix->y = CASCADE_DOWN_ROTATE_MOUNT_POSITION_FIX_Y_START;
    mountPosFix->z = CASCADE_DOWN_ROTATE_MOUNT_POSITION_FIX_Z_START;
    runData->mountPosFixDelta.x = CASCADE_DOWN_ROTATE_MOUNT_POSITION_FIX_X / CASCADE_DOWN_INITIAL_SPRITE_ROTATION_STEPS;
    runData->mountPosFixDelta.y = CASCADE_DOWN_ROTATE_MOUNT_POSITION_FIX_Y / CASCADE_DOWN_INITIAL_SPRITE_ROTATION_STEPS;
    runData->mountPosFixDelta.z = CASCADE_DOWN_ROTATE_MOUNT_POSITION_FIX_Z / CASCADE_DOWN_INITIAL_SPRITE_ROTATION_STEPS;

    Sound_PlayEffect(SEQ_SE_PL_FW463);

    *cmdState = EVENT_CMD_CASCADE_DOWN_STATE_ROTATE_PLAYER;
    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdCascadeDown_RotatePlayer(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    MapObject *playerMapObj = Player_MapObject(system->fieldSystem->playerAvatar);
    CmdRunDataCascadeDown *runData = GetLoadedEventDataBuffer(system);
    CmdRunDataCascadeBase *baseRunData = &runData->base;

    CmdRunDataCascadeBase_Update(system, baseRunData);
    MapObject_SetPos(playerMapObj, &baseRunData->playerPos);
    UpdateCascadeDownCamera(system, runData);

    OverworldAnimManager *mountAnimMan = PlayerAvatar_GetSurfMountAnimManager(system->fieldSystem->playerAvatar);
    Simple3DRotationAngles *mountRotAngles = DistWorldSurfMountRenderer_GetSurfMountRotationAngles(mountAnimMan);

    ApplyRotationToTargetFx32(&runData->mountRotAngles.x, runData->mountRotAnglesDelta.x);
    ApplyRotationToTargetFx32(&runData->mountRotAngles.y, runData->mountRotAnglesDelta.y);
    ApplyRotationToTargetFx32(&runData->mountRotAngles.z, runData->mountRotAnglesDelta.z);

    mountRotAngles->alpha = runData->mountRotAngles.x / FX32_ONE;
    mountRotAngles->beta = runData->mountRotAngles.y / FX32_ONE;
    mountRotAngles->gamma = runData->mountRotAngles.z / FX32_ONE;

    ApplyRotationToTargetFx32(&runData->orbitAngle, runData->orbitAngleDelta);
    DistWorldSurfMountRenderer_SetOrbitAngle(mountAnimMan, runData->orbitAngle / FX32_ONE);

    VecFx32 *mountPosFix = DistWorldSurfMountRenderer_GetExternalPosFixPtr(mountAnimMan);
    mountPosFix->x += runData->mountPosFixDelta.x;
    mountPosFix->y += runData->mountPosFixDelta.y;
    mountPosFix->z += runData->mountPosFixDelta.z;

    runData->spriteRotationAnimStepsLeft--;

    if (runData->spriteRotationAnimStepsLeft == 0) {
        baseRunData->posDelta.x <<= 1;
        baseRunData->posDelta.y <<= 1;
        baseRunData->posDelta.z <<= 1;

        CmdRunDataCascadeBase_InitBobbing(baseRunData, AXIS_X, CASCADE_DOWN_BOBBING_DELTA, CASCADE_DOWN_BOBBING_MAX);

        OverworldAnimManager *mountAnimMan2 = PlayerAvatar_GetSurfMountAnimManager(system->fieldSystem->playerAvatar);
        VecFx32 *mountPosFix2;

        mountPosFix2 = DistWorldSurfMountRenderer_GetExternalPosFixPtr(mountAnimMan2);
        mountPosFix2->x = CASCADE_DOWN_CASCADE_MOUNT_POSITION_FIX_X_START;
        mountPosFix2->y = CASCADE_DOWN_CASCADE_MOUNT_POSITION_FIX_Y_START;
        mountPosFix2->z = CASCADE_DOWN_CASCADE_MOUNT_POSITION_FIX_Z_START;

        runData->firstCameraAnimStepsLeft = CASCADE_DOWN_FIRST_CAMERA_TRANSITION_STEPS - 2;
        runData->secondCameraAnimStepsLeft = -1;
        runData->mountPosFixDelta.x = CASCADE_DOWN_FIRST_CASCADE_MOUNT_POSITION_FIX_X / runData->firstCameraAnimStepsLeft;
        runData->mountPosFixDelta.y = CASCADE_DOWN_FIRST_CASCADE_MOUNT_POSITION_FIX_Y / runData->firstCameraAnimStepsLeft;
        runData->mountPosFixDelta.z = CASCADE_DOWN_FIRST_CASCADE_MOUNT_POSITION_FIX_Z / runData->firstCameraAnimStepsLeft;
        runData->bobbingFixDelta = CASCADE_DOWN_FIRST_CASCADE_BOBBING_FIX / runData->firstCameraAnimStepsLeft;

        *cmdState = EVENT_CMD_CASCADE_DOWN_STATE_CASCADE_DOWN;
        return EVENT_CMD_HANDLER_RES_CONTINUE;
    }

    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdCascadeDown_CascadeDown(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    enum CascadeUpdateResult updateRes;
    OverworldAnimManager *mountAnimMan = PlayerAvatar_GetSurfMountAnimManager(system->fieldSystem->playerAvatar);
    MapObject *playerMapObj = Player_MapObject(system->fieldSystem->playerAvatar);
    CmdRunDataCascadeDown *runData = GetLoadedEventDataBuffer(system);
    CmdRunDataCascadeBase *baseRunData = &runData->base;

    updateRes = CmdRunDataCascadeBase_Update(system, baseRunData);
    MapObject_SetPos(playerMapObj, &baseRunData->playerPos);

    VecFx32 jumpOffset = baseRunData->jumpOffset;

    jumpOffset.x += runData->bobbingFix;
    MapObject_SetSpriteJumpOffset(playerMapObj, &jumpOffset);

    UpdateCascadeDownCamera(system, runData);

    VecFx32 *mountPosFix = DistWorldSurfMountRenderer_GetExternalPosFixPtr(mountAnimMan);
    VecFx32 *mountSpritePosOffset = DistWorldSurfMountRenderer_GetExternalSpritePosOffsetPtr(mountAnimMan);

    *mountSpritePosOffset = baseRunData->jumpOffset;

    if (runData->cameraAngleState == 1) {
        if (runData->firstCameraAnimStepsLeft > 0) {
            runData->firstCameraAnimStepsLeft--;
            mountPosFix->x += runData->mountPosFixDelta.x;
            mountPosFix->y += runData->mountPosFixDelta.y;
            mountPosFix->z += runData->mountPosFixDelta.z;
            runData->bobbingFix += runData->bobbingFixDelta;
        }
    } else if (runData->cameraAngleState == 2) {
        if (runData->secondCameraAnimStepsLeft < 0) {
            runData->secondCameraAnimStepsLeft = CASCADE_DOWN_SECOND_CAMERA_TRANSITION_STEPS - 2;
            runData->mountPosFixDelta.x = CASCADE_DOWN_SECOND_CASCADE_MOUNT_POSITION_FIX_X / runData->secondCameraAnimStepsLeft;
            runData->mountPosFixDelta.y = CASCADE_DOWN_SECOND_CASCADE_MOUNT_POSITION_FIX_Y / runData->secondCameraAnimStepsLeft;
            runData->mountPosFixDelta.z = CASCADE_DOWN_SECOND_CASCADE_MOUNT_POSITION_FIX_Z / runData->secondCameraAnimStepsLeft;
            runData->bobbingFixDelta = CASCADE_DOWN_SECOND_CASCADE_BOBBING_FIX / runData->secondCameraAnimStepsLeft;
        }

        if (runData->secondCameraAnimStepsLeft > 0) {
            runData->secondCameraAnimStepsLeft--;
            mountPosFix->x += runData->mountPosFixDelta.x;
            mountPosFix->y += runData->mountPosFixDelta.y;
            mountPosFix->z += runData->mountPosFixDelta.z;
            runData->bobbingFix += runData->bobbingFixDelta;
        }
    }

    if (updateRes == CASCADE_UPDATE_RES_FINISHING_POS_REACHED) {
        runData->spriteRotationAnimStepsLeft = CASCADE_DOWN_FINAL_SPRITE_ROTATION_STEPS;
        ov9_0224A4D0(system, playerMapObj, 90, runData->spriteRotationAnimStepsLeft);

        runData->mountRotAnglesDelta.x = CASCADE_DOWN_FINAL_MOUNT_ROTATION_ANGLE_X / CASCADE_DOWN_FINAL_SPRITE_ROTATION_STEPS;
        runData->mountRotAnglesDelta.y = CASCADE_DOWN_FINAL_MOUNT_ROTATION_ANGLE_Y / CASCADE_DOWN_FINAL_SPRITE_ROTATION_STEPS;
        runData->mountRotAnglesDelta.z = CASCADE_DOWN_FINAL_MOUNT_ROTATION_ANGLE_Z / CASCADE_DOWN_FINAL_SPRITE_ROTATION_STEPS;
        runData->mountPosFixDelta.x = CASCADE_DOWN_FINAL_MOUNT_POSITION_FIX_X / CASCADE_DOWN_FINAL_SPRITE_ROTATION_STEPS;
        runData->mountPosFixDelta.y = CASCADE_DOWN_FINAL_MOUNT_POSITION_FIX_Y / CASCADE_DOWN_FINAL_SPRITE_ROTATION_STEPS;
        runData->mountPosFixDelta.z = CASCADE_DOWN_FINAL_MOUNT_POSITION_FIX_Z / CASCADE_DOWN_FINAL_SPRITE_ROTATION_STEPS;
        runData->orbitAngleDelta = CASCADE_DOWN_FINAL_ORBIT_ANGLE / CASCADE_DOWN_FINAL_SPRITE_ROTATION_STEPS;

        DistWorldSurfMountRenderer_ClearFlags(mountAnimMan, DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_USE_EXTERNAL_SPRITE_POS_OFFSET);

        *cmdState = EVENT_CMD_CASCADE_DOWN_STATE_FINISH_CASCADING;
    }

    GF_ASSERT(updateRes != CASCADE_UPDATE_RES_FINAL_POS_REACHED);
    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdCascadeDown_FinishCascading(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    enum CascadeUpdateResult updateRes;
    OverworldAnimManager *mountAnimMan = PlayerAvatar_GetSurfMountAnimManager(system->fieldSystem->playerAvatar);
    MapObject *playerMapObj = Player_MapObject(system->fieldSystem->playerAvatar);
    CmdRunDataCascadeDown *runData = GetLoadedEventDataBuffer(system);
    CmdRunDataCascadeBase *baseRunData = &runData->base;

    updateRes = CmdRunDataCascadeBase_Update(system, baseRunData);

    MapObject_SetPos(playerMapObj, &baseRunData->playerPos);
    MapObject_SetSpriteJumpOffset(playerMapObj, &baseRunData->jumpOffset);

    UpdateCascadeDownCamera(system, runData);

    Simple3DRotationAngles *mountRotAngles = DistWorldSurfMountRenderer_GetSurfMountRotationAngles(mountAnimMan);

    ApplyRotationToTargetFx32(&runData->mountRotAngles.x, runData->mountRotAnglesDelta.x);
    ApplyRotationToTargetFx32(&runData->mountRotAngles.y, runData->mountRotAnglesDelta.y);
    ApplyRotationToTargetFx32(&runData->mountRotAngles.z, runData->mountRotAnglesDelta.z);

    mountRotAngles->alpha = runData->mountRotAngles.x / FX32_ONE;
    mountRotAngles->beta = runData->mountRotAngles.y / FX32_ONE;
    mountRotAngles->gamma = runData->mountRotAngles.z / FX32_ONE;

    ApplyRotationToTargetFx32(&runData->orbitAngle, runData->orbitAngleDelta);
    DistWorldSurfMountRenderer_SetOrbitAngle(mountAnimMan, runData->orbitAngle / FX32_ONE);

    VecFx32 *mountPosFix = DistWorldSurfMountRenderer_GetExternalPosFixPtr(mountAnimMan);
    mountPosFix->x += runData->mountPosFixDelta.x;
    mountPosFix->y += runData->mountPosFixDelta.y;
    mountPosFix->z += runData->mountPosFixDelta.z;

    if (updateRes == CASCADE_UPDATE_RES_FINAL_POS_REACHED) {
        const CmdParamsCascadeDown *cmdParams = params;
        const CmdParamsCascadeBase *baseCmdParams = &cmdParams->base;
        VecFx32 zeroVec = { 0, 0, 0 };

        int playerTileX = MapObject_GetX(playerMapObj) + baseCmdParams->finishingPosFixTileX;
        int playerTileY = MapObject_GetY(playerMapObj) + baseCmdParams->finishingPosFixTileY * 2;
        int playerTileZ = MapObject_GetZ(playerMapObj) + baseCmdParams->finishingPosFixTileZ;

        MapObject_SetX(playerMapObj, playerTileX);
        MapObject_SetY(playerMapObj, playerTileY);
        MapObject_SetZ(playerMapObj, playerTileZ);
        MapObject_UpdateCoords(playerMapObj);
        MapObject_TryFace(playerMapObj, FACE_LEFT);
        MapObject_Turn(playerMapObj, FACE_LEFT);
        MapObject_SetSpriteJumpOffset(playerMapObj, &zeroVec);
        MapObject_SetSpritePosOffset(playerMapObj, &zeroVec);
        FindAndPrepareNewCurrentFloatingPlatform(system, playerTileX, playerTileY / 2, playerTileZ, FLOATING_PLATFORM_KIND_INVALID);
        PlayerAvatar_SetDistortionState(system->fieldSystem->playerAvatar, AVATAR_DISTORTION_STATE_ACTIVE);
        MapObject_SetHeightCalculationDisabled(playerMapObj, FALSE);

        VecFx32 *mountPosFix2 = DistWorldSurfMountRenderer_GetExternalPosFixPtr(mountAnimMan);
        *mountPosFix2 = zeroVec;

        mountPosFix2 = DistWorldSurfMountRenderer_GetExternalSpritePosOffsetPtr(mountAnimMan);
        *mountPosFix2 = zeroVec;

        DistWorldSurfMountRenderer_SetOrbitAngle(mountAnimMan, CASCADE_DOWN_ORBIT_ANGLE_END);
        DistWorldSurfMountRenderer_SetFixedRotationAngles(mountAnimMan, FACE_LEFT, AVATAR_DISTORTION_STATE_ACTIVE);

        DistWorldSurfMountRenderer_ClearFlags(
            mountAnimMan,
            DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_NO_ROTATION_RECALCULATION
                | DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_NO_ORBIT_RECALCULATION
                | DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_USE_EXTERNAL_POS_FIX
                | DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_USE_EXTERNAL_SPRITE_POS_OFFSET);

        Sound_StopEffect(SEQ_SE_PL_FW463, 0);
        *cmdState = EVENT_CMD_CASCADE_DOWN_STATE_MOVE_AWAY;

        SetPersistedMovingPlatformFlag(system, DIST_WORLD_PLATFORM_FLAG_B5F_1);
        InitSpecificMovingPlatformPropForMap(system, MAP_HEADER_DISTORTION_WORLD_B5F, 0);
    }

    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdCascadeDown_MoveAway(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    u32 movements[2] = { MOVEMENT_ACTION_WALK_SLOW_WEST, MOVEMENT_ACTION_WALK_SLOWER_WEST };
    CmdRunDataCascadeDown *runData = GetLoadedEventDataBuffer(system);
    MapObject *playerMapObj = Player_MapObject(system->fieldSystem->playerAvatar);

    if (!LocalMapObj_IsAnimationSet(playerMapObj)) {
        return EVENT_CMD_HANDLER_RES_CONTINUE;
    }

    if (runData->moveAwayAnimStep >= NELEMS(movements)) {
        return EVENT_CMD_HANDLER_RES_FINISH;
    }

    LocalMapObj_SetAnimationCode(playerMapObj, movements[runData->moveAwayAnimStep]);
    runData->moveAwayAnimStep++;
    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static const DistWorldEventCmdHandler sCascadeDownHandlers[] = {
    [EVENT_CMD_CASCADE_DOWN_STATE_INIT] = EventCmdCascadeDown_Init,
    [EVENT_CMD_CASCADE_DOWN_STATE_ROTATE_PLAYER] = EventCmdCascadeDown_RotatePlayer,
    [EVENT_CMD_CASCADE_DOWN_STATE_CASCADE_DOWN] = EventCmdCascadeDown_CascadeDown,
    [EVENT_CMD_CASCADE_DOWN_STATE_FINISH_CASCADING] = EventCmdCascadeDown_FinishCascading,
    [EVENT_CMD_CASCADE_DOWN_STATE_MOVE_AWAY] = EventCmdCascadeDown_MoveAway
};

static const DistWorldCameraAngleTemplate sCascadeUpCameraAngle = {
    .bounds = {
        .startTileX = 0,
        .startTileY = 0,
        .startTileZ = 0,
        .sizeX = 0,
        .sizeY = 0,
        .sizeZ = 0,
    },
    .angleX = 55,
    .angleY = 240,
    .angleZ = 0,
    .playerDir = FACE_UP,
    .transitionSteps = 16
};

static void UpdateCascadeUpCamera(DistWorldSystem *system, CmdRunDataCascadeUp *runData)
{
    MapObject *playerMapObj = Player_MapObject(system->fieldSystem->playerAvatar);
    int yOffset = (runData->base.currPosOffset.y >> 4) / FX32_ONE;

    if (runData->cameraAngleState == 0 && yOffset == CASCADE_UP_CAMERA_ANGLE_Y_OFFSET) {
        DoCameraTransition(system, &sCascadeUpCameraAngle);
        runData->cameraAngleState++;
    }
}

static int EventCmdCascadeUp_Init(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    const CmdParamsCascadeUp *cmdParams = params;
    CmdRunDataCascadeUp *runData = ResetLoadedEventDataBuffer(system, sizeof(CmdRunDataCascadeUp));
    CmdRunDataCascadeBase *baseRunData = &runData->base;
    PlayerAvatar *playerAvatar = system->fieldSystem->playerAvatar;
    MapObject *playerMapObj = Player_MapObject(playerAvatar);

    VecFx32 playerPos;
    MapObject_GetPosPtr(playerMapObj, &playerPos);
    MapObject_TryFace(playerMapObj, FACE_RIGHT);
    CmdRunDataCascadeBase_InitFromParams(system, baseRunData, &cmdParams->base, &playerPos);

    baseRunData->posDelta.x >>= 1;
    baseRunData->posDelta.y >>= 1;
    baseRunData->posDelta.z >>= 1;
    runData->spriteRotationAnimStepsLeft = CASCADE_UP_INITIAL_SPRITE_ROTATION_STEPS;

    ov9_0224A4D0(system, playerMapObj, -90, runData->spriteRotationAnimStepsLeft);

    VecFx32 spritePosOffset = { 0, 0, 0 };
    MapObject_SetSpritePosOffset(playerMapObj, &spritePosOffset);

    OverworldAnimManager *mountAnimMan = PlayerAvatar_GetSurfMountAnimManager(playerAvatar);
    Simple3DRotationAngles *mountRotAngles = DistWorldSurfMountRenderer_GetSurfMountRotationAngles(mountAnimMan);

    DistWorldSurfMountRenderer_SetFixedRotationAngles(mountAnimMan, FACE_RIGHT, AVATAR_DISTORTION_STATE_ACTIVE);

    DistWorldSurfMountRenderer_SetFlags(
        mountAnimMan,
        DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_NO_ROTATION_RECALCULATION
            | DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_NO_ORBIT_RECALCULATION
            | DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_USE_EXTERNAL_POS_FIX
            | DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_USE_EXTERNAL_SPRITE_POS_OFFSET);

    runData->mountRotAngles.x = FX32_ONE * mountRotAngles->alpha;
    runData->mountRotAngles.y = FX32_ONE * mountRotAngles->beta;
    runData->mountRotAngles.z = FX32_ONE * mountRotAngles->gamma;
    runData->mountRotAnglesDelta.x = CASCADE_UP_MOUNT_ROTATION_ANGLE_X / CASCADE_UP_INITIAL_SPRITE_ROTATION_STEPS;
    runData->mountRotAnglesDelta.y = CASCADE_UP_MOUNT_ROTATION_ANGLE_Y / CASCADE_UP_INITIAL_SPRITE_ROTATION_STEPS;
    runData->mountRotAnglesDelta.z = CASCADE_UP_MOUNT_ROTATION_ANGLE_Z / CASCADE_UP_INITIAL_SPRITE_ROTATION_STEPS;
    runData->orbitAngle = CASCADE_UP_ORBIT_ANGLE_START;
    runData->orbitAngleDelta = CASCADE_UP_ORBIT_ANGLE / CASCADE_UP_INITIAL_SPRITE_ROTATION_STEPS;

    VecFx32 *mountPosFix = DistWorldSurfMountRenderer_GetExternalPosFixPtr(mountAnimMan);
    mountPosFix->x = CASCADE_UP_ROTATE_MOUNT_POSITION_FIX_X_START;
    mountPosFix->y = CASCADE_UP_ROTATE_MOUNT_POSITION_FIX_Y_START;
    mountPosFix->z = CASCADE_UP_ROTATE_MOUNT_POSITION_FIX_Z_START;
    runData->mountPosFixDelta.x = CASCADE_UP_ROTATE_MOUNT_POSITION_FIX_X / CASCADE_UP_INITIAL_SPRITE_ROTATION_STEPS;
    runData->mountPosFixDelta.y = CASCADE_UP_ROTATE_MOUNT_POSITION_FIX_Y / CASCADE_UP_INITIAL_SPRITE_ROTATION_STEPS;
    runData->mountPosFixDelta.z = CASCADE_UP_ROTATE_MOUNT_POSITION_FIX_Z / CASCADE_UP_INITIAL_SPRITE_ROTATION_STEPS;

    Sound_PlayEffect(SEQ_SE_PL_FW463);

    *cmdState = EVENT_CMD_CASCADE_UP_STATE_ROTATE_PLAYER;
    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdCascadeUp_RotatePlayer(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    MapObject *playerMapObj = Player_MapObject(system->fieldSystem->playerAvatar);
    CmdRunDataCascadeUp *runData = GetLoadedEventDataBuffer(system);
    CmdRunDataCascadeBase *baseRunData = &runData->base;

    CmdRunDataCascadeBase_Update(system, baseRunData);
    MapObject_SetPos(playerMapObj, &baseRunData->playerPos);
    UpdateCascadeUpCamera(system, runData);

    OverworldAnimManager *mountAnimMan = PlayerAvatar_GetSurfMountAnimManager(system->fieldSystem->playerAvatar);
    Simple3DRotationAngles *mountRotAngles = DistWorldSurfMountRenderer_GetSurfMountRotationAngles(mountAnimMan);

    ApplyRotationToTargetFx32(&runData->mountRotAngles.x, runData->mountRotAnglesDelta.x);
    ApplyRotationToTargetFx32(&runData->mountRotAngles.y, runData->mountRotAnglesDelta.y);
    ApplyRotationToTargetFx32(&runData->mountRotAngles.z, runData->mountRotAnglesDelta.z);

    mountRotAngles->alpha = runData->mountRotAngles.x / FX32_ONE;
    mountRotAngles->beta = runData->mountRotAngles.y / FX32_ONE;
    mountRotAngles->gamma = runData->mountRotAngles.z / FX32_ONE;

    ApplyRotationToTargetFx32(&runData->orbitAngle, runData->orbitAngleDelta);
    DistWorldSurfMountRenderer_SetOrbitAngle(mountAnimMan, runData->orbitAngle / FX32_ONE);

    VecFx32 *mountPosFix = DistWorldSurfMountRenderer_GetExternalPosFixPtr(mountAnimMan);
    mountPosFix->x += runData->mountPosFixDelta.x;
    mountPosFix->y += runData->mountPosFixDelta.y;
    mountPosFix->z += runData->mountPosFixDelta.z;

    runData->spriteRotationAnimStepsLeft--;

    if (runData->spriteRotationAnimStepsLeft == 0) {
        baseRunData->posDelta.x <<= 1;
        baseRunData->posDelta.y <<= 1;
        baseRunData->posDelta.z <<= 1;

        CmdRunDataCascadeBase_InitBobbing(baseRunData, AXIS_X, CASCADE_UP_BOBBING_DELTA, CASCADE_UP_BOBBING_MAX);

        OverworldAnimManager *mountAnimMan2 = PlayerAvatar_GetSurfMountAnimManager(system->fieldSystem->playerAvatar);
        VecFx32 *mountPosFix2;

        mountPosFix2 = DistWorldSurfMountRenderer_GetExternalPosFixPtr(mountAnimMan2);
        mountPosFix2->x = CASCADE_UP_CASCADE_MOUNT_POSITION_FIX_X_START;
        mountPosFix2->y = CASCADE_UP_CASCADE_MOUNT_POSITION_FIX_Y_START;
        mountPosFix2->z = CASCADE_UP_CASCADE_MOUNT_POSITION_FIX_Z_START;

        runData->mountPosFixDelta.x = CASCADE_UP_CASCADE_MOUNT_POSITION_FIX_X / CASCADE_UP_CASCADE_STEPS;
        runData->mountPosFixDelta.y = CASCADE_UP_CASCADE_MOUNT_POSITION_FIX_Y / CASCADE_UP_CASCADE_STEPS;
        runData->mountPosFixDelta.z = CASCADE_UP_CASCADE_MOUNT_POSITION_FIX_Z / CASCADE_UP_CASCADE_STEPS;

        *cmdState = EVENT_CMD_CASCADE_UP_STATE_CASCADE_DOWN;
        return EVENT_CMD_HANDLER_RES_CONTINUE;
    }

    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdCascadeUp_CascadeUp(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    enum CascadeUpdateResult updateRes;
    OverworldAnimManager *mountAnimMan = PlayerAvatar_GetSurfMountAnimManager(system->fieldSystem->playerAvatar);
    MapObject *playerMapObj = Player_MapObject(system->fieldSystem->playerAvatar);
    CmdRunDataCascadeUp *runData = GetLoadedEventDataBuffer(system);
    CmdRunDataCascadeBase *baseRunData = &runData->base;

    updateRes = CmdRunDataCascadeBase_Update(system, baseRunData);

    MapObject_SetPos(playerMapObj, &baseRunData->playerPos);
    MapObject_SetSpriteJumpOffset(playerMapObj, &baseRunData->jumpOffset);
    UpdateCascadeUpCamera(system, runData);

    VecFx32 *mountSpritePosOffset = DistWorldSurfMountRenderer_GetExternalSpritePosOffsetPtr(mountAnimMan);
    *mountSpritePosOffset = baseRunData->jumpOffset;

    if (runData->cameraAngleState == 1) {
        VecFx32 *mountPosFix = DistWorldSurfMountRenderer_GetExternalPosFixPtr(mountAnimMan);

        if (mountPosFix->z < CASCADE_UP_CASCADE_MOUNT_POSITION_FIX_Z_THRESHOLD) {
            mountPosFix->x += runData->mountPosFixDelta.x;
            mountPosFix->y += runData->mountPosFixDelta.y;
            mountPosFix->z += runData->mountPosFixDelta.z;
        }
    }

    if (updateRes == CASCADE_UPDATE_RES_FINISHING_POS_REACHED) {
        runData->spriteRotationAnimStepsLeft = CASCADE_UP_FINAL_SPRITE_ROTATION_STEPS;
        ov9_0224A4D0(system, playerMapObj, -90, runData->spriteRotationAnimStepsLeft);

        runData->mountRotAnglesDelta.x = CASCADE_UP_FINAL_MOUNT_ROTATION_ANGLE_X / CASCADE_UP_FINAL_SPRITE_ROTATION_STEPS;
        runData->mountRotAnglesDelta.y = CASCADE_UP_FINAL_MOUNT_ROTATION_ANGLE_Y / CASCADE_UP_FINAL_SPRITE_ROTATION_STEPS;
        runData->mountRotAnglesDelta.z = CASCADE_UP_FINAL_MOUNT_ROTATION_ANGLE_Z / CASCADE_UP_FINAL_SPRITE_ROTATION_STEPS;
        runData->mountPosFixDelta.x = CASCADE_UP_FINAL_MOUNT_POSITION_FIX_X / CASCADE_UP_FINAL_SPRITE_ROTATION_STEPS;
        runData->mountPosFixDelta.y = CASCADE_UP_FINAL_MOUNT_POSITION_FIX_Y / CASCADE_UP_FINAL_SPRITE_ROTATION_STEPS;
        runData->mountPosFixDelta.z = CASCADE_UP_FINAL_MOUNT_POSITION_FIX_Z / CASCADE_UP_FINAL_SPRITE_ROTATION_STEPS;
        runData->orbitAngleDelta = CASCADE_UP_FINAL_ORBIT_ANGLE / CASCADE_UP_FINAL_SPRITE_ROTATION_STEPS;

        DistWorldSurfMountRenderer_ClearFlags(mountAnimMan, DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_USE_EXTERNAL_SPRITE_POS_OFFSET);

        *cmdState = EVENT_CMD_CASCADE_UP_STATE_FINISH_CASCADING;
    }

    GF_ASSERT(updateRes != CASCADE_UPDATE_RES_FINAL_POS_REACHED);
    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdCascadeUp_FinishCascading(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    enum CascadeUpdateResult updateRes;
    OverworldAnimManager *mountAnimMan = PlayerAvatar_GetSurfMountAnimManager(system->fieldSystem->playerAvatar);
    MapObject *playerMapObj = Player_MapObject(system->fieldSystem->playerAvatar);
    CmdRunDataCascadeUp *runData = GetLoadedEventDataBuffer(system);
    CmdRunDataCascadeBase *baseRunData = &runData->base;

    updateRes = CmdRunDataCascadeBase_Update(system, baseRunData);

    MapObject_SetPos(playerMapObj, &baseRunData->playerPos);
    MapObject_SetSpriteJumpOffset(playerMapObj, &baseRunData->jumpOffset);

    UpdateCascadeUpCamera(system, runData);

    Simple3DRotationAngles *mountRotAngles = DistWorldSurfMountRenderer_GetSurfMountRotationAngles(mountAnimMan);

    ApplyRotationToTargetFx32(&runData->mountRotAngles.x, runData->mountRotAnglesDelta.x);
    ApplyRotationToTargetFx32(&runData->mountRotAngles.y, runData->mountRotAnglesDelta.y);
    ApplyRotationToTargetFx32(&runData->mountRotAngles.z, runData->mountRotAnglesDelta.z);

    mountRotAngles->alpha = runData->mountRotAngles.x / FX32_ONE;
    mountRotAngles->beta = runData->mountRotAngles.y / FX32_ONE;
    mountRotAngles->gamma = runData->mountRotAngles.z / FX32_ONE;

    ApplyRotationToTargetFx32(&runData->orbitAngle, runData->orbitAngleDelta);
    DistWorldSurfMountRenderer_SetOrbitAngle(mountAnimMan, runData->orbitAngle / FX32_ONE);

    VecFx32 *mountPosFix = DistWorldSurfMountRenderer_GetExternalPosFixPtr(mountAnimMan);
    mountPosFix->x += runData->mountPosFixDelta.x;
    mountPosFix->y += runData->mountPosFixDelta.y;
    mountPosFix->z += runData->mountPosFixDelta.z;

    if (updateRes == CASCADE_UPDATE_RES_FINAL_POS_REACHED) {
        const CmdParamsCascadeUp *cmdParams = params;
        const CmdParamsCascadeBase *baseCmdParams = &cmdParams->base;
        VecFx32 zeroVec = { 0, 0, 0 };

        int playerTileX = MapObject_GetX(playerMapObj) + baseCmdParams->finishingPosFixTileX;
        int playerTileY = MapObject_GetY(playerMapObj) + baseCmdParams->finishingPosFixTileY * 2;
        int playerTileZ = MapObject_GetZ(playerMapObj) + baseCmdParams->finishingPosFixTileZ;

        MapObject_SetX(playerMapObj, playerTileX);
        MapObject_SetY(playerMapObj, playerTileY);
        MapObject_SetZ(playerMapObj, playerTileZ);
        MapObject_UpdateCoords(playerMapObj);
        MapObject_TryFace(playerMapObj, FACE_RIGHT);
        MapObject_Turn(playerMapObj, FACE_RIGHT);
        MapObject_SetSpriteJumpOffset(playerMapObj, &zeroVec);
        MapObject_SetSpritePosOffset(playerMapObj, &zeroVec);
        FindAndPrepareNewCurrentFloatingPlatform(system, playerTileX, playerTileY / 2, playerTileZ, FLOATING_PLATFORM_KIND_INVALID);
        PlayerAvatar_SetDistortionState(system->fieldSystem->playerAvatar, AVATAR_DISTORTION_STATE_CEILING);
        MapObject_SetHeightCalculationDisabled(playerMapObj, TRUE);

        VecFx32 *mountPosFix2 = DistWorldSurfMountRenderer_GetExternalPosFixPtr(mountAnimMan);
        *mountPosFix2 = zeroVec;

        mountPosFix2 = DistWorldSurfMountRenderer_GetExternalSpritePosOffsetPtr(mountAnimMan);
        *mountPosFix2 = zeroVec;

        DistWorldSurfMountRenderer_SetOrbitAngle(mountAnimMan, CASCADE_UP_ORBIT_ANGLE_END);
        DistWorldSurfMountRenderer_SetFixedRotationAngles(mountAnimMan, FACE_RIGHT, AVATAR_DISTORTION_STATE_CEILING);

        DistWorldSurfMountRenderer_ClearFlags(
            mountAnimMan,
            DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_NO_ROTATION_RECALCULATION
                | DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_NO_ORBIT_RECALCULATION
                | DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_USE_EXTERNAL_POS_FIX
                | DIST_WORLD_SURF_MOUNT_RENDERER_FLAG_MASK_USE_EXTERNAL_SPRITE_POS_OFFSET);

        Sound_StopEffect(SEQ_SE_PL_FW463, 0);
        *cmdState = EVENT_CMD_CASCADE_UP_STATE_MOVE_AWAY;
    }

    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdCascadeUp_MoveAway(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    u32 movements[3] = { MOVEMENT_ACTION_151, MOVEMENT_ACTION_147, MOVEMENT_ACTION_115 };
    CmdRunDataCascadeUp *runData = GetLoadedEventDataBuffer(system);
    MapObject *playerMapObj = Player_MapObject(system->fieldSystem->playerAvatar);

    if (!LocalMapObj_IsAnimationSet(playerMapObj)) {
        return EVENT_CMD_HANDLER_RES_CONTINUE;
    }

    if (runData->moveAwayAnimStep >= NELEMS(movements)) {
        return EVENT_CMD_HANDLER_RES_FINISH;
    }

    LocalMapObj_SetAnimationCode(playerMapObj, movements[runData->moveAwayAnimStep]);
    runData->moveAwayAnimStep++;
    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static const DistWorldEventCmdHandler sCascadeUpHandlers[] = {
    [EVENT_CMD_CASCADE_UP_STATE_INIT] = EventCmdCascadeUp_Init,
    [EVENT_CMD_CASCADE_UP_STATE_ROTATE_PLAYER] = EventCmdCascadeUp_RotatePlayer,
    [EVENT_CMD_CASCADE_UP_STATE_CASCADE_DOWN] = EventCmdCascadeUp_CascadeUp,
    [EVENT_CMD_CASCADE_UP_STATE_FINISH_CASCADING] = EventCmdCascadeUp_FinishCascading,
    [EVENT_CMD_CASCADE_UP_STATE_MOVE_AWAY] = EventCmdCascadeUp_MoveAway
};

static int EventCmdStartScript_Handle(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    const CmdParamsStartScript *cmdParams = params;
    ScriptManager_Start(task, cmdParams->scriptID, NULL, NULL);

    (*cmdState)++;
    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdStartScript_Finish(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    return EVENT_CMD_HANDLER_RES_FINISH;
}

static const DistWorldEventCmdHandler sStartScriptHandlers[] = {
    EventCmdStartScript_Handle,
    EventCmdStartScript_Finish
};

static int EventCmdSetDistortionWorldProgress_Handle(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    const CmdParamsSetDistortionWorldProgress *cmdParams = params;
    VarsFlags *varsFlags = SaveData_GetVarsFlags(system->fieldSystem->saveData);
    SystemVars_SetDistortionWorldProgress(varsFlags, cmdParams->progress);

    return EVENT_CMD_HANDLER_RES_FINISH;
}

static const DistWorldEventCmdHandler sSetDistortionWorldProgressHandlers[] = {
    EventCmdSetDistortionWorldProgress_Handle
};

static int EventCmdSetGiratinaAnimationFlag_Handle(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    const CmdParamsSetGiratinaAnimationFlag *cmdParams = params;
    VarsFlags *varsFlags = SaveData_GetVarsFlags(system->fieldSystem->saveData);
    SystemFlag_HandleGiratinaAnimation(varsFlags, HANDLE_FLAG_SET, cmdParams->anim);

    return EVENT_CMD_HANDLER_RES_FINISH;
}

static const DistWorldEventCmdHandler sSetGiratinaAnimationFlagHandlers[] = {
    EventCmdSetGiratinaAnimationFlag_Handle
};

static int EventCmdSetPuzzleFlag_Handle(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    const CmdParamsPuzzleFlag *cmdParams = params;
    SetPersistedBoulderPuzzleFlag(system, cmdParams->flagIndex);

    return EVENT_CMD_HANDLER_RES_FINISH;
}

static const DistWorldEventCmdHandler sSetPuzzleFlagHandlers[] = {
    EventCmdSetPuzzleFlag_Handle
};

static int EventCmdClearPuzzleFlag_Handle(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    const CmdParamsPuzzleFlag *cmdParams = params;
    ClearPersistedBoulderPuzzleFlag(system, cmdParams->flagIndex);

    return EVENT_CMD_HANDLER_RES_FINISH;
}

static const DistWorldEventCmdHandler sClearPuzzleFlagHandlers[] = {
    EventCmdClearPuzzleFlag_Handle
};

static int EventCmdShowGiratinaShadow_Load(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    const DistWorldGiratinaShadowTemplate *giratinaTemplate = params;
    LoadGiratinaShadowPropAnimation(system, giratinaTemplate);

    *cmdState = EVENT_CMD_SHOW_GIRATINA_SHADOW_STATE_FINISH;
    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdShowGiratinaShadow_Finish(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    if (IsGiratinaShadowAnimationFinished(system) == TRUE) {
        FinishGiratinaShadowPropRenderer(system);
        return EVENT_CMD_HANDLER_RES_FINISH;
    }

    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static const DistWorldEventCmdHandler sEventCmdShowGiratinaShadow[] = {
    [EVENT_CMD_SHOW_GIRATINA_SHADOW_STATE_LOAD] = EventCmdShowGiratinaShadow_Load,
    [EVENT_CMD_SHOW_GIRATINA_SHADOW_STATE_FINISH] = EventCmdShowGiratinaShadow_Finish
};

static const GXRgb sGiratinaSpriteBasePalette[PALETTE_SIZE] = {
    GX_RGB(9, 22, 12),
    GX_RGB(21, 6, 8),
    GX_RGB(15, 2, 4),
    GX_RGB(13, 13, 15),
    GX_RGB(16, 16, 18),
    GX_RGB(9, 9, 10),
    GX_RGB(18, 19, 21),
    GX_RGB(21, 22, 24),
    GX_RGB(31, 31, 26),
    GX_RGB(29, 26, 3),
    GX_RGB(10, 9, 2),
    GX_RGB(21, 18, 2),
    GX_RGB(30, 10, 8),
    GX_RGB(6, 6, 6),
    GX_RGB(0, 0, 0),
    GX_RGB(31, 31, 31)
};

static void CmdRunDataPlayGiratinaArrival_UpdateSpritePalette(CmdRunDataPlayGiratinaArrival *runData)
{
    u32 spriteDarkness = runData->spriteDarkness / FX32_ONE;

    for (u32 i = 0; i < PALETTE_SIZE; i++) {
        CalculateTintedColor(sGiratinaSpriteBasePalette[i], COLOR_BLACK, spriteDarkness, &runData->giratinaSpritePalette[i]);
    }
}

void DistWorld_ApplyGiratinaSpritePalette(FieldSystem *fieldSystem)
{
    DistWorldSystem *dwSystem = fieldSystem->unk_04->dynamicMapFeaturesData;

    if (dwSystem->playingGiratinaArrival == TRUE) {
        CmdRunDataPlayGiratinaArrival *runData = GetLoadedEventDataBuffer(dwSystem);
        UnkStruct_ov5_021ED0A4 *v2 = sub_0206285C(dwSystem->fieldSystem->mapObjMan);
        TextureResourceManager *texMgr = ov5_021EDCB0(v2);
        TextureResource *texResource = TextureResourceManager_FindTextureResource(texMgr, 0xe6);
        NNSGfdPlttKey paletteKey = TextureResource_GetPaletteKey(texResource);
        u32 paletteKeyAddr = NNS_GfdGetPlttKeyAddr(paletteKey);

        VramTransfer_Request(NNS_GFD_DST_3D_TEX_PLTT, paletteKeyAddr, runData->giratinaSpritePalette, PALETTE_SIZE_BYTES);
    }
}

static int EventCmdPlayGiratinaArrival_InitMapObject(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    CmdRunDataPlayGiratinaArrival *runData = ResetLoadedEventDataBuffer(system, sizeof(CmdRunDataPlayGiratinaArrival));
    runData->giratinaMapObj = AddMapObjectWithLocalID(system, MAP_HEADER_DISTORTION_WORLD_GIRATINA_ROOM, MAP_OBJECT_GIRATINA_ROOM_GIRATINA);
    runData->giratinaSpritePosOffset.y = GIRATINA_ROOM_PLAY_ARRIVAL_INITIAL_Y_OFFSET;

    MapObject_SetSpritePosOffset(runData->giratinaMapObj, &runData->giratinaSpritePosOffset);

    *cmdState = EVENT_CMD_PLAY_GIRATINA_ARRIVAL_STATE_INIT_SPRITE_AND_SKY;
    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdPlayGiratinaArrival_InitSpriteAndSky(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    CmdRunDataPlayGiratinaArrival *runData = GetLoadedEventDataBuffer(system);
    Billboard *billboard = ov5_021EB1A0(runData->giratinaMapObj);

    if (billboard != NULL) {
        runData->spriteDarkness = GIRATINA_ROOM_PLAY_ARRIVAL_INITIAL_SPRITE_DARKNESS;
        CmdRunDataPlayGiratinaArrival_UpdateSpritePalette(runData);
        system->playingGiratinaArrival = TRUE;

        runData->skyDarkness = SKY_MIN_DARKNESS;
        SetSkyDarknessCalculationDisabled(system, TRUE);

        system->unk_1EC2 = 2;
        Sound_PlayEffect(SEQ_SE_PL_GIRA);

        *cmdState = EVENT_CMD_PLAY_GIRATINA_ARRIVAL_STATE_DESCEND;
        return EVENT_CMD_HANDLER_RES_LOOP;
    }

    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdPlayGiratinaArrival_Descend(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    CmdRunDataPlayGiratinaArrival *runData = GetLoadedEventDataBuffer(system);
    runData->skyDarkness += GIRATINA_ROOM_PLAY_ARRIVAL_SKY_DARKNESS_DELTA;

    if (runData->skyDarkness >= GIRATINA_ROOM_PLAY_ARRIVAL_SKY_DARKNESS_TARGET) {
        runData->skyDarkness = GIRATINA_ROOM_PLAY_ARRIVAL_SKY_DARKNESS_TARGET;
    }

    SetSkyDarknessLevel(system, runData->skyDarkness / FX32_ONE);

    if (runData->giratinaSpritePosOffset.y >= GIRATINA_ROOM_PLAY_ARRIVAL_DESCEND_Y_SLOW_THRESHOLD) {
        runData->giratinaSpritePosOffset.y -= GIRATINA_ROOM_PLAY_ARRIVAL_DESCEND_Y_FAST_DECREMENT;
    } else {
        runData->giratinaSpritePosOffset.y -= GIRATINA_ROOM_PLAY_ARRIVAL_DESCEND_Y_SLOW_DECREMENT;
    }

    if (runData->giratinaSpritePosOffset.y < 0 && runData->skyDarkness >= GIRATINA_ROOM_PLAY_ARRIVAL_SKY_DARKNESS_TARGET) {
        runData->giratinaSpritePosOffset.y = 0;
        *cmdState = EVENT_CMD_PLAY_GIRATINA_ARRIVAL_STATE_BRIGHTEN_SPRITE;
    }

    MapObject_SetSpritePosOffset(runData->giratinaMapObj, &runData->giratinaSpritePosOffset);
    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdPlayGiratinaArrival_BrightenSprite(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    CmdRunDataPlayGiratinaArrival *runData = GetLoadedEventDataBuffer(system);
    Billboard *billboard = ov5_021EB1A0(runData->giratinaMapObj);
    NNSG3dResMdl *model = Billboard_GetModel2(billboard);

    runData->spriteDarkness -= GIRATINA_ROOM_PLAY_ARRIVAL_SPRITE_DARKNESS_DECREMENT;

    if (runData->spriteDarkness < 0) {
        runData->spriteDarkness = 0;
        *cmdState = EVENT_CMD_PLAY_GIRATINA_ARRIVAL_STATE_WAIT;
    }

    CmdRunDataPlayGiratinaArrival_UpdateSpritePalette(runData);
    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdPlayGiratinaArrival_Wait(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    CmdRunDataPlayGiratinaArrival *runData = GetLoadedEventDataBuffer(system);
    runData->delay++;

    if (runData->delay >= GIRATINA_ROOM_PLAY_ARRIVAL_WAIT_DELAY) {
        system->playingGiratinaArrival = FALSE;
        return EVENT_CMD_HANDLER_RES_FINISH;
    }

    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static const DistWorldEventCmdHandler sPlayGiratinaArrivalHandlers[] = {
    [EVENT_CMD_PLAY_GIRATINA_ARRIVAL_STATE_INIT_MAP_OBJECT] = EventCmdPlayGiratinaArrival_InitMapObject,
    [EVENT_CMD_PLAY_GIRATINA_ARRIVAL_STATE_INIT_SPRITE_AND_SKY] = EventCmdPlayGiratinaArrival_InitSpriteAndSky,
    [EVENT_CMD_PLAY_GIRATINA_ARRIVAL_STATE_DESCEND] = EventCmdPlayGiratinaArrival_Descend,
    [EVENT_CMD_PLAY_GIRATINA_ARRIVAL_STATE_BRIGHTEN_SPRITE] = EventCmdPlayGiratinaArrival_BrightenSprite,
    [EVENT_CMD_PLAY_GIRATINA_ARRIVAL_STATE_WAIT] = EventCmdPlayGiratinaArrival_Wait
};

static int EventCmdShowUxieBoulderTuto_Init(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    CmdRunDataShowUxieBoulderTuto *runData = ResetLoadedEventDataBuffer(system, sizeof(CmdRunDataShowUxieBoulderTuto));
    runData->uxieMapObj = AddMapObjectWithLocalID(system, MAP_HEADER_DISTORTION_WORLD_B5F, MAP_OBJECT_B5F_UXIE);

    Sound_PlayPokemonCry(SPECIES_UXIE, 0);

    runData->hoverStepDelta = 1;
    *cmdState = EVENT_CMD_SHOW_UXIE_BOULDER_TUTO_STATE_ASCEND;
    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdShowUxieBoulderTuto_Ascend(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    CmdRunDataShowUxieBoulderTuto *runData;
    fx32 ascendYDelta = UXIE_BOULDER_TUTO_ASCEND_Y_DELTA;

    runData = GetLoadedEventDataBuffer(system);

    if ((runData->uxieSpritePosOffset.y >> 4) / FX32_ONE < UXIE_BOULDER_TUTO_ASCEND_Y_TARGET - 1) {
        ascendYDelta <<= 1;
    }

    runData->uxieSpritePosOffset.y += ascendYDelta;
    MapObject_SetSpritePosOffset(runData->uxieMapObj, &runData->uxieSpritePosOffset);

    if ((runData->uxieSpritePosOffset.y >> 4) / FX32_ONE >= UXIE_BOULDER_TUTO_ASCEND_Y_TARGET) {
        *cmdState = EVENT_CMD_SHOW_UXIE_BOULDER_TUTO_STATE_MOVE_TO_BOULDER;
    }

    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdShowUxieBoulderTuto_MoveToBoulder(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    CmdRunDataShowUxieBoulderTuto *runData = GetLoadedEventDataBuffer(system);
    runData->uxieSpritePosOffset.z -= UXIE_BOULDER_TUTO_MOVE_TO_BOULDER_Z_DELTA;
    MapObject_SetSpritePosOffset(runData->uxieMapObj, &runData->uxieSpritePosOffset);

    if ((runData->uxieSpritePosOffset.z >> 4) / FX32_ONE <= UXIE_BOULDER_TUTO_MOVE_TO_BOULDER_Z_TARGET) {
        runData->finalUxieY = runData->uxieSpritePosOffset.y;
        *cmdState = EVENT_CMD_SHOW_UXIE_BOULDER_TUTO_STATE_HOVER;
    }

    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdShowUxieBoulderTuto_Hover(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    CmdRunDataShowUxieBoulderTuto *runData;
    fx32 yOffsets[UXIE_BOULDER_TUTO_HOVER_STEP_COUNT] = { 0, 2048, 4096, 8192, 16384, 24576, 28672, 32768 };

    runData = GetLoadedEventDataBuffer(system);
    runData->uxieSpritePosOffset.y = runData->finalUxieY + yOffsets[runData->hoverStep >> 1];
    MapObject_SetSpritePosOffset(runData->uxieMapObj, &runData->uxieSpritePosOffset);

    runData->hoverStep += runData->hoverStepDelta;

    if (runData->hoverStep >= UXIE_BOULDER_TUTO_HOVER_STEP_COUNT * 2 - 1 || runData->hoverStep <= 0) {
        runData->hoverStepDelta = -runData->hoverStepDelta;

        if (runData->hoverStep == 0) {
            runData->hoverRepeat++;

            if (runData->hoverRepeat >= UXIE_BOULDER_TUTO_HOVER_REPEAT_COUNT) {
                runData->uxieSpritePosOffset.y = runData->finalUxieY + yOffsets[runData->hoverStep >> 1];
                *cmdState = EVENT_CMD_SHOW_UXIE_BOULDER_TUTO_STATE_MOVE_AWAY;
            }
        }
    }

    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdShowUxieBoulderTuto_MoveAway(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    CmdRunDataShowUxieBoulderTuto *runData = GetLoadedEventDataBuffer(system);
    runData->uxieSpritePosOffset.z += UXIE_BOULDER_TUTO_MOVE_AWAY_Z_DELTA;

    MapObject_SetSpritePosOffset(runData->uxieMapObj, &runData->uxieSpritePosOffset);

    if ((runData->uxieSpritePosOffset.z >> 4) / FX32_ONE == UXIE_BOULDER_TUTO_MOVE_AWAY_Z_TARGET) {
        *cmdState = EVENT_CMD_SHOW_UXIE_BOULDER_TUTO_STATE_DESCEND;
    }

    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdShowUxieBoulderTuto_Descend(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    CmdRunDataShowUxieBoulderTuto *runData = GetLoadedEventDataBuffer(system);

    if (runData->descendYDelta < UXIE_BOULDER_TUTO_DESCEND_Y_DELTA_TARGET) {
        runData->descendYDelta += UXIE_BOULDER_TUTO_DESCEND_Y_DELTA_INCREMENT;
    }

    runData->uxieSpritePosOffset.y -= runData->descendYDelta;
    MapObject_SetSpritePosOffset(runData->uxieMapObj, &runData->uxieSpritePosOffset);

    if ((runData->uxieSpritePosOffset.y >> 4) / FX32_ONE <= 0) {
        DeleteMapObject(system, runData->uxieMapObj);
        SetPersistedBoulderPuzzleFlag(system, DIST_WORLD_PUZZLE_FLAG_UXIE_TUTO_SEEN);
        SetPersistedBoulderPuzzleFlag(system, DIST_WORLD_PUZZLE_FLAG_UXIE_IN_B6F);
        runData->uxieMapObj = AddMapObjectWithLocalID(system, MAP_HEADER_DISTORTION_WORLD_B6F, MAP_OBJECT_B6F_UXIE);

        return EVENT_CMD_HANDLER_RES_FINISH;
    }

    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static const DistWorldEventCmdHandler sShowUxieBoulderTutoHandlers[] = {
    [EVENT_CMD_SHOW_UXIE_BOULDER_TUTO_STATE_INIT] = EventCmdShowUxieBoulderTuto_Init,
    [EVENT_CMD_SHOW_UXIE_BOULDER_TUTO_STATE_ASCEND] = EventCmdShowUxieBoulderTuto_Ascend,
    [EVENT_CMD_SHOW_UXIE_BOULDER_TUTO_STATE_MOVE_TO_BOULDER] = EventCmdShowUxieBoulderTuto_MoveToBoulder,
    [EVENT_CMD_SHOW_UXIE_BOULDER_TUTO_STATE_HOVER] = EventCmdShowUxieBoulderTuto_Hover,
    [EVENT_CMD_SHOW_UXIE_BOULDER_TUTO_STATE_MOVE_AWAY] = EventCmdShowUxieBoulderTuto_MoveAway,
    [EVENT_CMD_SHOW_UXIE_BOULDER_TUTO_STATE_DESCEND] = EventCmdShowUxieBoulderTuto_Descend
};

static const MapObjectAnimCmd sAzelfBoulderTutoAnimation[] = {
    { .movementAction = MOVEMENT_ACTION_DELAY_32, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_WALK_SLOWER_EAST, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_WALK_SLOWER_EAST, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_WALK_SLOW_WEST, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_WALK_SLOWER_WEST, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_DELAY_16, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_END, .count = 0 }
};

static int EventCmdShowAzelfBoulderTuto_Init(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    CmdRunDataShowAzelfBoulderTuto *runData = ResetLoadedEventDataBuffer(system, sizeof(CmdRunDataShowAzelfBoulderTuto));
    runData->azelfMapObj = AddMapObjectWithLocalID(system, MAP_HEADER_DISTORTION_WORLD_B5F, MAP_OBJECT_B5F_AZELF);

    Sound_PlayPokemonCry(SPECIES_AZELF, 0);

    *cmdState = EVENT_CMD_SHOW_AZELF_BOULDER_TUTO_STATE_ASCEND;
    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdShowAzelfBoulderTuto_Ascend(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    CmdRunDataShowAzelfBoulderTuto *runData;
    fx32 ascendYDelta = AZELF_BOULDER_TUTO_ASCEND_Y_DELTA;

    runData = GetLoadedEventDataBuffer(system);

    if ((runData->azelfSpritePosOffset.y >> 4) / FX32_ONE < AZELF_BOULDER_TUTO_ASCEND_Y_TARGET - 1) {
        ascendYDelta <<= 1;
    }

    runData->azelfSpritePosOffset.y += ascendYDelta;
    MapObject_SetSpritePosOffset(runData->azelfMapObj, &runData->azelfSpritePosOffset);

    if ((runData->azelfSpritePosOffset.y >> 4) / FX32_ONE >= AZELF_BOULDER_TUTO_ASCEND_Y_TARGET) {
        runData->azelfAnimTask = MapObject_StartAnimation(runData->azelfMapObj, sAzelfBoulderTutoAnimation);
        *cmdState = EVENT_CMD_SHOW_AZELF_BOULDER_TUTO_STATE_WAIT_FOR_ANIMATION;
    }

    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdShowAzelfBoulderTuto_WaitForAnimation(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    CmdRunDataShowAzelfBoulderTuto *runData = GetLoadedEventDataBuffer(system);

    if (MapObject_HasAnimationEnded(runData->azelfAnimTask) == TRUE) {
        MapObject_FinishAnimation(runData->azelfAnimTask);

        *cmdState = EVENT_CMD_SHOW_AZELF_BOULDER_TUTO_STATE_DESCEND;
        return EVENT_CMD_HANDLER_RES_LOOP;
    }

    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdShowAzelfBoulderTuto_Descend(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    CmdRunDataShowAzelfBoulderTuto *runData = GetLoadedEventDataBuffer(system);

    if (runData->descendYDelta < AZELF_BOULDER_TUTO_DESCEND_Y_DELTA_TARGET) {
        runData->descendYDelta += AZELF_BOULDER_TUTO_DESCEND_Y_DELTA_INCREMENT;
    }

    runData->azelfSpritePosOffset.y -= runData->descendYDelta;
    MapObject_SetSpritePosOffset(runData->azelfMapObj, &runData->azelfSpritePosOffset);

    if ((runData->azelfSpritePosOffset.y >> 4) / FX32_ONE <= 0) {
        DeleteMapObject(system, runData->azelfMapObj);
        SetPersistedBoulderPuzzleFlag(system, DIST_WORLD_PUZZLE_FLAG_AZELF_TUTO_SEEN);
        SetPersistedBoulderPuzzleFlag(system, DIST_WORLD_PUZZLE_FLAG_AZELF_IN_B6F);
        runData->azelfMapObj = AddMapObjectWithLocalID(system, MAP_HEADER_DISTORTION_WORLD_B6F, MAP_OBJECT_B6F_AZELF);

        return EVENT_CMD_HANDLER_RES_FINISH;
    }

    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static const DistWorldEventCmdHandler sShowAzelfBoulderTutoHandlers[] = {
    [EVENT_CMD_SHOW_AZELF_BOULDER_TUTO_STATE_INIT] = EventCmdShowAzelfBoulderTuto_Init,
    [EVENT_CMD_SHOW_AZELF_BOULDER_TUTO_STATE_ASCEND] = EventCmdShowAzelfBoulderTuto_Ascend,
    [EVENT_CMD_SHOW_AZELF_BOULDER_TUTO_STATE_WAIT_FOR_ANIMATION] = EventCmdShowAzelfBoulderTuto_WaitForAnimation,
    [EVENT_CMD_SHOW_AZELF_BOULDER_TUTO_STATE_DESCEND] = EventCmdShowAzelfBoulderTuto_Descend
};

static const MapObjectAnimCmd sMespritBoulderTutoAnimationPokemonTop[] = {
    { .movementAction = MOVEMENT_ACTION_DELAY_32, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_WALK_NORMAL_EAST, .count = 2 },
    { .movementAction = MOVEMENT_ACTION_WALK_FAST_NORTH, .count = 2 },
    { .movementAction = MOVEMENT_ACTION_WALK_FAST_EAST, .count = 2 },
    { .movementAction = MOVEMENT_ACTION_WALK_FAST_SOUTH, .count = 2 },
    { .movementAction = MOVEMENT_ACTION_WALK_FAST_WEST, .count = 2 },
    { .movementAction = MOVEMENT_ACTION_WALK_FAST_NORTH, .count = 2 },
    { .movementAction = MOVEMENT_ACTION_WALK_FAST_EAST, .count = 2 },
    { .movementAction = MOVEMENT_ACTION_WALK_FAST_SOUTH, .count = 2 },
    { .movementAction = MOVEMENT_ACTION_WALK_FAST_WEST, .count = 2 },
    { .movementAction = MOVEMENT_ACTION_WALK_FAST_WEST, .count = 2 },
    { .movementAction = MOVEMENT_ACTION_WALK_NORMAL_WEST, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_WALK_SLOW_WEST, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_DELAY_32, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_WALK_SLOW_EAST, .count = 2 },
    { .movementAction = MOVEMENT_ACTION_WALK_SLOWER_EAST, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_DELAY_16, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_END, .count = 0 }
};

static const MapObjectAnimCmd sMespritBoulderTutoAnimationPokemonBottom[] = {
    { .movementAction = MOVEMENT_ACTION_DELAY_32, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_WALK_NORMAL_EAST, .count = 2 },
    { .movementAction = MOVEMENT_ACTION_WALK_FAST_NORTH, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_WALK_FAST_EAST, .count = 2 },
    { .movementAction = MOVEMENT_ACTION_WALK_FAST_SOUTH, .count = 2 },
    { .movementAction = MOVEMENT_ACTION_WALK_FAST_WEST, .count = 2 },
    { .movementAction = MOVEMENT_ACTION_WALK_FAST_NORTH, .count = 2 },
    { .movementAction = MOVEMENT_ACTION_WALK_FAST_EAST, .count = 2 },
    { .movementAction = MOVEMENT_ACTION_WALK_FAST_SOUTH, .count = 2 },
    { .movementAction = MOVEMENT_ACTION_WALK_FAST_WEST, .count = 2 },
    { .movementAction = MOVEMENT_ACTION_WALK_FAST_NORTH, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_WALK_FAST_WEST, .count = 2 },
    { .movementAction = MOVEMENT_ACTION_WALK_NORMAL_WEST, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_WALK_SLOW_WEST, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_DELAY_32, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_WALK_SLOW_EAST, .count = 2 },
    { .movementAction = MOVEMENT_ACTION_WALK_SLOWER_EAST, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_DELAY_16, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_END, .count = 0 }
};

static const MapObjectAnimCmd sMespritBoulderTutoAnimationPlayerTop[] = {
    { .movementAction = MOVEMENT_ACTION_DELAY_32, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_DELAY_8, .count = 2 },
    { .movementAction = MOVEMENT_ACTION_FACE_WEST, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_DELAY_1, .count = 3 },
    { .movementAction = MOVEMENT_ACTION_FACE_NORTH, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_DELAY_1, .count = 3 },
    { .movementAction = MOVEMENT_ACTION_FACE_EAST, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_DELAY_1, .count = 3 },
    { .movementAction = MOVEMENT_ACTION_FACE_SOUTH, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_DELAY_1, .count = 3 },
    { .movementAction = MOVEMENT_ACTION_FACE_WEST, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_DELAY_1, .count = 3 },
    { .movementAction = MOVEMENT_ACTION_FACE_NORTH, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_DELAY_1, .count = 3 },
    { .movementAction = MOVEMENT_ACTION_FACE_EAST, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_DELAY_1, .count = 3 },
    { .movementAction = MOVEMENT_ACTION_FACE_SOUTH, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_DELAY_1, .count = 3 },
    { .movementAction = MOVEMENT_ACTION_FACE_WEST, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_END, .count = 0 }
};

static const MapObjectAnimCmd sMespritBoulderTutoAnimationPlayerBottom[] = {
    { .movementAction = MOVEMENT_ACTION_DELAY_32, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_DELAY_8, .count = 2 },
    { .movementAction = MOVEMENT_ACTION_FACE_WEST, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_DELAY_1, .count = 3 },
    { .movementAction = MOVEMENT_ACTION_FACE_NORTH, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_DELAY_1, .count = 3 },
    { .movementAction = MOVEMENT_ACTION_FACE_EAST, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_DELAY_1, .count = 3 },
    { .movementAction = MOVEMENT_ACTION_FACE_SOUTH, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_DELAY_1, .count = 3 },
    { .movementAction = MOVEMENT_ACTION_FACE_WEST, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_DELAY_1, .count = 3 },
    { .movementAction = MOVEMENT_ACTION_FACE_NORTH, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_DELAY_1, .count = 3 },
    { .movementAction = MOVEMENT_ACTION_FACE_EAST, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_DELAY_1, .count = 3 },
    { .movementAction = MOVEMENT_ACTION_FACE_SOUTH, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_DELAY_1, .count = 3 },
    { .movementAction = MOVEMENT_ACTION_FACE_WEST, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_END, .count = 0 }
};

static int EventCmdShowMespritBoulderTuto_Init(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    CmdRunDataShowMespritBoulderTuto *runData = ResetLoadedEventDataBuffer(system, sizeof(CmdRunDataShowAzelfBoulderTuto));
    runData->mespritMapObj = AddMapObjectWithLocalID(system, MAP_HEADER_DISTORTION_WORLD_B5F, MAP_OBJECT_B5F_MESPRIT);

    Sound_PlayPokemonCry(SPECIES_MESPRIT, 0);

    *cmdState = EVENT_CMD_SHOW_MESPRIT_BOULDER_TUTO_STATE_ASCEND;
    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdShowMespritBoulderTuto_Ascend(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    CmdRunDataShowMespritBoulderTuto *runData;
    fx32 ascendYDelta = MESPRIT_BOULDER_TUTO_ASCEND_Y_DELTA;

    runData = GetLoadedEventDataBuffer(system);

    if ((runData->mespritSpritePosOffset.y >> 4) / FX32_ONE < MESPRIT_BOULDER_TUTO_ASCEND_Y_TARGET - 1) {
        ascendYDelta <<= 1;
    }

    runData->mespritSpritePosOffset.y += ascendYDelta;
    MapObject_SetSpritePosOffset(runData->mespritMapObj, &runData->mespritSpritePosOffset);

    if ((runData->mespritSpritePosOffset.y >> 4) / FX32_ONE >= MESPRIT_BOULDER_TUTO_ASCEND_Y_TARGET) {
        int playerX, playerY, playerZ;
        const MapObjectAnimCmd *playerAnimCmds, *mespritAnimCmds;

        GetPlayerPos(system, &playerX, &playerY, &playerZ);

        if (playerZ == 67) {
            playerAnimCmds = sMespritBoulderTutoAnimationPlayerTop;
            mespritAnimCmds = sMespritBoulderTutoAnimationPokemonTop;
        } else {
            playerAnimCmds = sMespritBoulderTutoAnimationPlayerBottom;
            mespritAnimCmds = sMespritBoulderTutoAnimationPokemonBottom;
        }

        runData->mespritAnimTask = MapObject_StartAnimation(runData->mespritMapObj, mespritAnimCmds);
        runData->playerAnimTask = MapObject_StartAnimation(Player_MapObject(system->fieldSystem->playerAvatar), playerAnimCmds);

        *cmdState = EVENT_CMD_SHOW_MESPRIT_BOULDER_TUTO_STATE_WAIT_FOR_ANIMATION;
    }

    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdShowMespritBoulderTuto_WaitForAnimation(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    CmdRunDataShowMespritBoulderTuto *runData = GetLoadedEventDataBuffer(system);

    if (MapObject_HasAnimationEnded(runData->mespritAnimTask) == TRUE && MapObject_HasAnimationEnded(runData->playerAnimTask) == TRUE) {
        MapObject_FinishAnimation(runData->mespritAnimTask);
        MapObject_FinishAnimation(runData->playerAnimTask);

        *cmdState = EVENT_CMD_SHOW_MESPRIT_BOULDER_TUTO_STATE_DESCEND;
        return EVENT_CMD_HANDLER_RES_LOOP;
    }

    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdShowMespritBoulderTuto_Descend(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    CmdRunDataShowMespritBoulderTuto *runData = GetLoadedEventDataBuffer(system);

    if (runData->descendYDelta < MESPRIT_BOULDER_TUTO_DESCEND_Y_DELTA_TARGET) {
        runData->descendYDelta += MESPRIT_BOULDER_TUTO_DESCEND_Y_DELTA_INCREMENT;
    }

    runData->mespritSpritePosOffset.y -= runData->descendYDelta;
    MapObject_SetSpritePosOffset(runData->mespritMapObj, &runData->mespritSpritePosOffset);

    if ((runData->mespritSpritePosOffset.y >> 4) / FX32_ONE <= 0) {
        DeleteMapObject(system, runData->mespritMapObj);
        SetPersistedBoulderPuzzleFlag(system, DIST_WORLD_PUZZLE_FLAG_MESPRIT_TUTO_SEEN);
        SetPersistedBoulderPuzzleFlag(system, DIST_WORLD_PUZZLE_FLAG_MESPRIT_IN_B6F);
        runData->mespritMapObj = AddMapObjectWithLocalID(system, MAP_HEADER_DISTORTION_WORLD_B6F, MAP_OBJECT_B6F_MESPRIT);

        return EVENT_CMD_HANDLER_RES_FINISH;
    }

    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static const DistWorldEventCmdHandler sShowMespritBoulderTutoHandlers[] = {
    [EVENT_CMD_SHOW_MESPRIT_BOULDER_TUTO_STATE_INIT] = EventCmdShowMespritBoulderTuto_Init,
    [EVENT_CMD_SHOW_MESPRIT_BOULDER_TUTO_STATE_ASCEND] = EventCmdShowMespritBoulderTuto_Ascend,
    [EVENT_CMD_SHOW_MESPRIT_BOULDER_TUTO_STATE_WAIT_FOR_ANIMATION] = EventCmdShowMespritBoulderTuto_WaitForAnimation,
    [EVENT_CMD_SHOW_MESPRIT_BOULDER_TUTO_STATE_DESCEND] = EventCmdShowMespritBoulderTuto_Descend
};

const DistWorldCameraAngleTemplate sGiratinaRoomPlatformsShownCameraAngle = {
    .bounds = {
        .startTileX = 0x0,
        .startTileY = 0x0,
        .startTileZ = 0x0,
        .sizeX = 0x0,
        .sizeY = 0x0,
        .sizeZ = 0x0,
    },
    .angleX = 0x10,
    .angleY = 0x0,
    .angleZ = 0x0,
    .playerDir = FACE_UP,
    .transitionSteps = 0x14
};

static int EventCmdShowGiratinaRoomPlatforms_DoCameraTransition(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    CmdRunDataGiratinaRoomPlatforms *runData = ResetLoadedEventDataBuffer(system, sizeof(CmdRunDataGiratinaRoomPlatforms));

    DoCameraTransition(system, &sGiratinaRoomPlatformsShownCameraAngle);

    runData->delay = GIRATINA_ROOM_SHOW_PLATFORMS_INITIAL_DELAY;
    runData->ghostPropGroup = GIRATINA_ROOM_PLATFORMS_FIRST_GHOST_PROP_GROUP;
    *cmdState = EVENT_CMD_SHOW_GIRATINA_ROOM_PLATFORMS_STATE_SHOW_PLATFORMS;

    return EVENT_CMD_HANDLER_RES_LOOP;
}

static int EventCmdShowGiratinaRoomPlatforms_ShowPlatforms(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    CmdRunDataGiratinaRoomPlatforms *runData = GetLoadedEventDataBuffer(system);

    runData->delay--;

    if (runData->delay <= 0) {
        runData->delay = GIRATINA_ROOM_SHOW_PLATFORMS_DELAY;
        Sound_StopEffect(SEQ_SE_PL_SYUWA3, 0);
        ShowGhostPropGroup(system, runData->ghostPropGroup);
        runData->ghostPropGroup++;

        if (runData->ghostPropGroup >= GIRATINA_ROOM_PLATFORMS_LAST_GHOST_PROP_GROUP + 1) {
            return EVENT_CMD_HANDLER_RES_FINISH;
        }
    }

    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static const DistWorldEventCmdHandler sShowGiratinaRoomPlatformsHandlers[] = {
    [EVENT_CMD_SHOW_GIRATINA_ROOM_PLATFORMS_STATE_DO_CAMERA_TRANSITION] = EventCmdShowGiratinaRoomPlatforms_DoCameraTransition,
    [EVENT_CMD_SHOW_GIRATINA_ROOM_PLATFORMS_STATE_SHOW_PLATFORMS] = EventCmdShowGiratinaRoomPlatforms_ShowPlatforms
};

static int EventCmdHideGiratinaRoomPlatforms_Init(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    CmdRunDataGiratinaRoomPlatforms *runData = ResetLoadedEventDataBuffer(system, sizeof(CmdRunDataGiratinaRoomPlatforms));
    runData->delay = GIRATINA_ROOM_HIDE_PLATFORMS_INITIAL_DELAY;
    runData->ghostPropGroup = GIRATINA_ROOM_PLATFORMS_LAST_GHOST_PROP_GROUP;

    *cmdState = EVENT_CMD_HIDE_GIRATINA_ROOM_PLATFORMS_STATE_HIDE_PLATFORMS;
    return EVENT_CMD_HANDLER_RES_LOOP;
}

static int EventCmdHideGiratinaRoomPlatforms_HidePlatforms(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    CmdRunDataGiratinaRoomPlatforms *runData = GetLoadedEventDataBuffer(system);

    runData->delay--;

    if (runData->delay <= 0) {
        if (runData->ghostPropGroup >= GIRATINA_ROOM_PLATFORMS_FIRST_GHOST_PROP_GROUP) {
            runData->delay = GIRATINA_ROOM_HIDE_PLATFORMS_DELAY;
            Sound_StopEffect(SEQ_SE_PL_SYUWA3, 0);
            HideGhostPropGroup(system, runData->ghostPropGroup);
            runData->ghostPropGroup--;
        } else {
            runData->delay = GIRATINA_ROOM_HIDE_PLATFORMS_WAIT_DELAY;
            *cmdState = EVENT_CMD_HIDE_GIRATINA_ROOM_PLATFORMS_STATE_WAIT;
        }
    }

    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static int EventCmdHideGiratinaRoomPlatforms_Wait(DistWorldSystem *system, FieldTask *task, u16 *cmdState, const void *params)
{
    CmdRunDataGiratinaRoomPlatforms *runData = GetLoadedEventDataBuffer(system);

    runData->delay--;

    if (runData->delay <= 0) {
        return EVENT_CMD_HANDLER_RES_FINISH;
    }

    return EVENT_CMD_HANDLER_RES_CONTINUE;
}

static const DistWorldEventCmdHandler sHideGiratinaRoomPlatformsHandlers[] = {
    [EVENT_CMD_HIDE_GIRATINA_ROOM_PLATFORMS_STATE_INIT] = EventCmdHideGiratinaRoomPlatforms_Init,
    [EVENT_CMD_HIDE_GIRATINA_ROOM_PLATFORMS_STATE_HIDE_PLATFORMS] = EventCmdHideGiratinaRoomPlatforms_HidePlatforms,
    [EVENT_CMD_HIDE_GIRATINA_ROOM_PLATFORMS_STATE_WAIT] = EventCmdHideGiratinaRoomPlatforms_Wait
};

static BOOL DistWorldBounds_AreCoordinatesInBounds(int tileX, int tileY, int tileZ, const DistWorldBounds *bounds)
{
    if (
        tileY >= bounds->startTileY
        && tileY <= bounds->startTileY + bounds->sizeY
        && tileZ >= bounds->startTileZ
        && tileZ <= bounds->startTileZ + bounds->sizeZ
        && tileX >= bounds->startTileX
        && tileX <= bounds->startTileX + bounds->sizeX) {
        return TRUE;
    }

    return FALSE;
}

static int CalculateCameraAngleDelta(u16 currentAngleComponent, u16 targetAngleComponent)
{
    int angleComponentDelta = (s16)targetAngleComponent - (s16)currentAngleComponent;
    int fixedAngleComponentDelta = angleComponentDelta;

    if (fixedAngleComponentDelta < 0) {
        fixedAngleComponentDelta = -fixedAngleComponentDelta;
    }

    if (fixedAngleComponentDelta > S16_SIGN_MASK) {
        fixedAngleComponentDelta = (fixedAngleComponentDelta + S16_SIGN_MASK) % S16_SIGN_MASK;

        if (currentAngleComponent < targetAngleComponent) {
            fixedAngleComponentDelta = -fixedAngleComponentDelta;
        }

        angleComponentDelta = fixedAngleComponentDelta;
    }

    return angleComponentDelta;
}

static void ApplyRotationToTarget(s16 *target, s16 angle)
{
    *target += angle;

    if (*target < 0) {
        do {
            *target += 360;
        } while (*target < 0);
    } else {
        *target %= 360;
    }
}

static void ApplyRotationToTargetFx32(fx32 *target, fx32 angle)
{
    *target += angle;

    if (*target < 0) {
        do {
            *target += FX32_ONE * 360;
        } while (*target < 0);
    } else {
        *target %= FX32_ONE * 360;
    }
}

static void GetPlayerPos(DistWorldSystem *system, int *playerX, int *playerY, int *playerZ)
{
    MapObject *playerMapObj = Player_MapObject(system->fieldSystem->playerAvatar);

    *playerX = MapObject_GetX(playerMapObj);
    *playerY = MapObject_GetY(playerMapObj) / 2;
    *playerZ = MapObject_GetZ(playerMapObj);
}

BOOL ov9_02250F74(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *v0 = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));

    if (PersistedMapFeatures_GetID(v0) != DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) {
        return 0;
    }

    return 1;
}

BOOL DistWorld_CheckCollisionOnCurrentFloatingPlatform(FieldSystem *fieldSystem, int tileX, int tileY, int tileZ)
{
    DistWorldSystem *distWorldSystem = fieldSystem->unk_04->dynamicMapFeaturesData;
    u16 tileAttributes = GetCurrentFloatingPlatformTileAttributes(distWorldSystem, tileX, tileY, tileZ);

    if (tileAttributes == (u16)INVALID_TERRAIN_ATTRIBUTES || tileAttributes == (u16)OUT_OF_BOUNDS_TERRAIN_ATTRIBUTES) {
        return TRUE;
    }

    u16 hasCollision = (tileAttributes & TERRAIN_ATTRIBUTES_COLLISION_MASK) >> TERRAIN_ATTRIBUTES_COLLISION_SHIFT;
    return hasCollision ? TRUE : FALSE;
}

BOOL DistWorld_IsValidTileOnCurrentFloatingPlatform(FieldSystem *fieldSystem, int tileX, int tileY, int tileZ)
{
    DistWorldSystem *distWorldSystem = fieldSystem->unk_04->dynamicMapFeaturesData;
    u16 tileAttributes = GetCurrentFloatingPlatformTileAttributes(distWorldSystem, tileX, tileY, tileZ);

    if (tileAttributes == (u16)INVALID_TERRAIN_ATTRIBUTES || tileAttributes == (u16)OUT_OF_BOUNDS_TERRAIN_ATTRIBUTES) {
        return FALSE;
    }

    return TRUE;
}

BOOL ov9_02250FD8(FieldSystem *fieldSystem, int param1, int param2, int param3)
{
    DistWorldSystem *v0 = fieldSystem->unk_04->dynamicMapFeaturesData;
    s16 v1 = GetCurrentFloatingPlatformKind(v0);

    return HasFloatingPlatformAtCoords(v0, param1, param2, param3, v1);
}

void ov9_02251000(FieldSystem *fieldSystem, int param1, int param2, int param3)
{
    DistWorldSystem *v0 = fieldSystem->unk_04->dynamicMapFeaturesData;
    s16 v1 = GetCurrentFloatingPlatformKind(v0);

    if (HasFloatingPlatformAtCoords(v0, param1, param2, param3, v1) == TRUE) {
        FindAndPrepareNewCurrentFloatingPlatform(v0, param1, param2, param3, v1);
        return;
    }

    GF_ASSERT(0);
}

BOOL DistWorld_GetTileBehaviorOnCurrentFloatingPlatform(FieldSystem *fieldSystem, int tileX, int tileY, int tileZ, u32 *tileBehavior)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));

    if (PersistedMapFeatures_GetID(persistedMapFeatures) != DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) {
        GF_ASSERT(0);
        return FALSE;
    }

    DistWorldSystem *distWorldSystem = fieldSystem->unk_04->dynamicMapFeaturesData;
    u16 tileAttributes = GetCurrentFloatingPlatformTileAttributes(distWorldSystem, tileX, tileY, tileZ);

    if (tileAttributes == (u16)INVALID_TERRAIN_ATTRIBUTES || tileAttributes == (u16)OUT_OF_BOUNDS_TERRAIN_ATTRIBUTES) {
        *tileBehavior = GetNullTileBehaviorID();
        return FALSE;
    }

    *tileBehavior = tileAttributes & TERRAIN_ATTRIBUTES_TILE_BEHAVIOR_MASK;
    return TRUE;
}

void ov9_02251094(int param0, int *param1, int *param2, int *param3)
{
    UnkStruct_ov9_0224BFE0 v0;
    NARC *v1 = NARC_ctor(NARC_INDEX_FIELDDATA__TORNWORLD__TW_ARC, HEAP_ID_FIELD1);

    ov9_0224BF8C(v1, &v0);
    ov9_0224C050(&v0, param0, param1, param2, param3);
    ov9_0224BFE0(&v0);
    NARC_dtor(v1);
}

static u32 DistWorldSystem_GetMapHeaderID(DistWorldSystem *system)
{
    return system->fieldSystem->location->mapId;
}

static enum AvatarDistortionState GetAvatarDistortionStateForFloatingPlatformKind(u32 platformKind)
{
    switch (platformKind) {
    case FLOATING_PLATFORM_KIND_FLOOR:
        return AVATAR_DISTORTION_STATE_FLOOR;

    case FLOATING_PLATFORM_KIND_WEST_WALL:
        return AVATAR_DISTORTION_STATE_WEST_WALL;

    case FLOATING_PLATFORM_KIND_EAST_WALL:
        return AVATAR_DISTORTION_STATE_EAST_WALL;

    case FLOATING_PLATFORM_KIND_CEILING:
        return AVATAR_DISTORTION_STATE_CEILING;
    }

    return AVATAR_DISTORTION_STATE_ACTIVE;
}

static BOOL CheckFlagCondition(DistWorldSystem *system, enum FlagCondition flagCond, u32 val)
{
    VarsFlags *varsFlags = SaveData_GetVarsFlags(system->fieldSystem->saveData);

    switch (flagCond) {
    case FLAG_COND_NONE:
        return TRUE;

    case FLAG_COND_BOULDER_PUZZLE_FALSE:
        if (CheckPersistedBoulderPuzzleFlag(system, val) != TRUE) {
            return TRUE;
        }

        break;

    case FLAG_COND_BOULDER_PUZZLE_TRUE:
        if (CheckPersistedBoulderPuzzleFlag(system, val) == TRUE) {
            return TRUE;
        }

        break;

    case FLAG_COND_WORLD_PROGRESS_EQ:
        if (SystemVars_GetDistortionWorldProgress(varsFlags) == val) {
            return TRUE;
        }

        break;

    case FLAG_COND_WORLD_PROGRESS_LEQ:
        if (SystemVars_GetDistortionWorldProgress(varsFlags) <= val) {
            return TRUE;
        }

        break;

    case FLAG_COND_WORLD_PROGRESS_GEQ:
        if (SystemVars_GetDistortionWorldProgress(varsFlags) >= val) {
            return TRUE;
        }

        break;

    case FLAG_COND_GIRATINA_SHADOW:
        if (!SystemFlag_HandleGiratinaAnimation(varsFlags, HANDLE_FLAG_CHECK, val)) {
            return TRUE;
        }

        break;

    case FLAG_COND_CYRUS_APPEARANCE:
        if (SystemVars_GetDistortionWorldCyrusApperanceState(varsFlags) == val) {
            return TRUE;
        }

        break;
    }

    return FALSE;
}

BOOL ov9_022511A0(FieldSystem *fieldSystem, int param1, int param2, int param3)
{
    DistWorldSystem *v0 = fieldSystem->unk_04->dynamicMapFeaturesData;

    if (DistWorldSystem_GetMapHeaderID(v0) == 582) {
        if ((param2 == 15) && (param1 == 15) && (param3 == 1)) {
            VarsFlags *v1 = SaveData_GetVarsFlags(v0->fieldSystem->saveData);
            u32 v2 = SystemVars_GetDistortionWorldProgress(v1);

            if (v2 == 14) {
                return 1;
            }
        }
    }

    return 0;
}

static void PlaySoundIfNotActive(u16 seqID)
{
    if (!Sound_IsEffectPlaying(seqID)) {
        Sound_PlayEffect(seqID);
    }
}

static void ov9_022511F4(MapObject *mapObj, const VecFx32 *pos)
{
    MapObject_SetPos(mapObj, pos);
    Billboard *v0 = ov5_021EB1A0(mapObj);

    if (v0 != NULL) {
        ov5_021EDEB4(mapObj, v0);
    }
}

static const fx32 Unk_ov9_02252CF8[16] = {
    4 * FX32_ONE,
    6 * FX32_ONE,
    8 * FX32_ONE,
    10 * FX32_ONE,
    11 * FX32_ONE,
    12 * FX32_ONE,
    12 * FX32_ONE,
    12 * FX32_ONE,
    11 * FX32_ONE,
    10 * FX32_ONE,
    9 * FX32_ONE,
    8 * FX32_ONE,
    6 * FX32_ONE,
    4 * FX32_ONE,
    0 * FX32_ONE,
    0 * FX32_ONE
};

static const FloatingPlatformJumpPointHandler sFloatingPlatformJumpPointHandlers[1] = {
    CreateJumpOnFloatingPlatformTask
};

static const int Unk_ov9_02251E58[7] = {
    0x4,
    0x7,
    0xA,
    0xD,
    0x10,
    0x13,
    0x16
};

static const int Unk_ov9_02251E90[7] = {
    0x3,
    0x6,
    0x9,
    0xC,
    0xF,
    0x12,
    0x15
};

static const int Unk_ov9_02251EAC[7] = {
    0x5,
    0x8,
    0xB,
    0xE,
    0x11,
    0x14,
    0x17
};

static const int Unk_ov9_02251210[1] = {
    0x18
};

static const UnkStruct_ov9_02251EC8 Unk_ov9_02251EC8[7] = {
    { 0x0, 0x0, 0x0, 0x0 },
    { 0x1, 0x0, 0x1, 0x1 },
    { 0x2, 0x0, 0x2, 0x2 },
    { 0x3, 0x0, 0x3, 0x3 },
    { 0x4, 0x0, 0x4, 0x4 },
    { 0x5, 0x0, 0x5, 0x5 },
    { 0x6, 0x0, 0x6, 0x6 }
};

static const UnkStruct_ov9_02253680 Unk_ov9_02253680[9] = {
    {
        0x6,
        0x3,
        (FX32_ONE * 0),
        (FX32_ONE * 135),
        0x68,
        0x1400,
        { (FX32_ONE * 128), (FX32_ONE * (96 + 12)), 0x0 },
        { FX32_ONE * 2, FX32_ONE * 2, FX32_ONE * 2 },
    },
    {
        0x6,
        0x3,
        (FX32_ONE * 180),
        (FX32_ONE * 135),
        0x68,
        0x1400,
        { (FX32_ONE * 128), (FX32_ONE * (96 + 12)), 0x0 },
        { FX32_ONE * 2, FX32_ONE * 2, FX32_ONE * 2 },
    },
    {
        0x6,
        0x3,
        (FX32_ONE * 90),
        (FX32_ONE * 135),
        0x68,
        0x1400,
        { (FX32_ONE * 128), (FX32_ONE * (96 + 12)), 0x0 },
        { FX32_ONE * 2, FX32_ONE * 2, FX32_ONE * 2 },
    },
    {
        0x6,
        0x3,
        (FX32_ONE * 270),
        (FX32_ONE * 135),
        0x68,
        0x1400,
        { (FX32_ONE * 128), (FX32_ONE * (96 + 12)), 0x0 },
        { FX32_ONE * 2, FX32_ONE * 2, FX32_ONE * 2 },
    },
    {
        0x1,
        0x2,
        (FX32_ONE * 0),
        (FX32_ONE * 90),
        0x3C,
        0x1000,
        { (FX32_ONE * 128), (FX32_ONE * (96 + 32)), 0x0 },
        { FX32_ONE, FX32_ONE, FX32_ONE },
    },
    {
        0x2,
        0x2,
        (FX32_ONE * 180),
        (FX32_ONE * 90),
        0x3C,
        0x1000,
        { (FX32_ONE * 128), (FX32_ONE * (96 + 32)), 0x0 },
        { FX32_ONE, FX32_ONE, FX32_ONE },
    },
    {
        0x3,
        0x1,
        (FX32_ONE * 315),
        (FX32_ONE * 90),
        0x2A,
        0xC00,
        { (FX32_ONE * 128), (FX32_ONE * (96 + 32)), 0x0 },
        { FX32_ONE, FX32_ONE, FX32_ONE },
    },
    {
        0x4,
        0x1,
        (FX32_ONE * 135),
        (FX32_ONE * 90),
        0x2A,
        0xC00,
        { (FX32_ONE * 128), (FX32_ONE * (96 + 32)), 0x0 },
        { FX32_ONE, FX32_ONE, FX32_ONE },
    },
    {
        0x5,
        0x0,
        (FX32_ONE * 0),
        (FX32_ONE * 90),
        0x0,
        0x800,
        { (FX32_ONE * 128), (FX32_ONE * (96 + 32)), 0x0 },
        { FX32_ONE, FX32_ONE, FX32_ONE },
    }
};

static const fx32 Unk_ov9_02252C08[3][4] = {
    { 0x0, 0x0, 0x0, 0x0 },
    { 0x800, 0x1800, 0x3000, 0x5000 },
    { -0x800 * 4, -0xc00 * 6, -0x1000 * 7, -0x1400 * 10 },
};

static const u32 sProp3DModelNARCIndexByKind[PROP_KIND_COUNT] = {
    [PROP_KIND_SMALL_PLATFORM] = 0x7C,
    [PROP_KIND_FLOATING_BLUE_ROCK] = 0x7D,
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_1] = 0x7E,
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_2] = 0x7F,
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_SW] = 0x80,
    [PROP_KIND_MEDIUM_MOVING_PLATFORM_1] = 0x81,
    [PROP_KIND_MEDIUM_MOVING_PLATFORM_2] = 0x82,
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_3] = 0x83,
    [PROP_KIND_LARGE_ELEVATOR_PLATFORM_1] = 0x84,
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_4] = 0x85,
    [PROP_KIND_HORIZONTAL_PLATFORM_1] = 0x86,
    [PROP_KIND_VERTICAL_PLATFORM_1] = 0x87,
    [PROP_KIND_VERTICAL_PLATFORM_2] = 0x88,
    [PROP_KIND_HORIZONTAL_PLATFORM_2] = 0x89,
    [PROP_KIND_ROTATED_PLATFORM_EAST] = 0x8A,
    [PROP_KIND_ROTATED_PLATFORM_WEST] = 0x8B,
    [PROP_KIND_LARGE_ELEVATOR_PLATFORM_2] = 0x8C,
    [PROP_KIND_LARGE_ELEVATOR_PLATFORM_3] = 0x8D,
    [PROP_KIND_LARGE_ELEVATOR_PLATFORM_4] = 0x8E,
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_5] = 0x8F,
    [PROP_KIND_GIRATINA_SHADOW] = 0x90,
    [PROP_KIND_WATERFALL] = 0x91,
    [PROP_KIND_LAND_VINE_FLOWER] = 0x92,
    [PROP_KIND_LAND_ROCK] = 0x93,
    [PROP_KIND_PORTAL] = 0x94
};

static const u32 sPropAnimSetNARCIndexByKind[PROP_ANIM_KIND_COUNT] = {
    [PROP_ANIM_KIND_GIRATINA_SHADOW] = 0xC6,
    [PROP_ANIM_KIND_LAND_VINE_FLOWER] = 0xBF,
    [PROP_ANIM_KIND_LAND_ROCK] = 0xC0,
    [PROP_ANIM_KIND_WATERFALL] = 0xC8,
    [PROP_ANIM_KIND_PORTAL] = 0xC1
};

// clang-format off
static const DistWorldPropAnimInfo sPropAnimInfoByKind[PROP_KIND_COUNT] = {
    [PROP_KIND_SMALL_PLATFORM] = {
        .propKind = PROP_KIND_SMALL_PLATFORM,
        .animKind = PROP_ANIM_KIND_INVALID,
        .isStatic = TRUE
    },
    [PROP_KIND_FLOATING_BLUE_ROCK] = {
        .propKind = PROP_KIND_FLOATING_BLUE_ROCK,
        .animKind = PROP_ANIM_KIND_INVALID,
        .isStatic = TRUE
    },
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_1] = {
        .propKind = PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_1,
        .animKind = PROP_ANIM_KIND_INVALID,
        .isStatic = TRUE
    },
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_2] = {
        .propKind = PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_2,
        .animKind = PROP_ANIM_KIND_INVALID,
        .isStatic = TRUE
    },
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_SW] = {
        .propKind = PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_SW,
        .animKind = PROP_ANIM_KIND_INVALID,
        .isStatic = TRUE
    },
    [PROP_KIND_MEDIUM_MOVING_PLATFORM_1] = {
        .propKind = PROP_KIND_MEDIUM_MOVING_PLATFORM_1,
        .animKind = PROP_ANIM_KIND_INVALID,
        .isStatic = TRUE
    },
    [PROP_KIND_MEDIUM_MOVING_PLATFORM_2] = {
        .propKind = PROP_KIND_MEDIUM_MOVING_PLATFORM_2,
        .animKind = PROP_ANIM_KIND_INVALID,
        .isStatic = TRUE
    },
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_3] = {
        .propKind = PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_3,
        .animKind = PROP_ANIM_KIND_INVALID,
        .isStatic = TRUE
    },
    [PROP_KIND_LARGE_ELEVATOR_PLATFORM_1] = {
        .propKind = PROP_KIND_LARGE_ELEVATOR_PLATFORM_1,
        .animKind = PROP_ANIM_KIND_INVALID,
        .isStatic = TRUE
    },
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_4] = {
        .propKind = PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_4,
        .animKind = PROP_ANIM_KIND_INVALID,
        .isStatic = TRUE
    },
    [PROP_KIND_HORIZONTAL_PLATFORM_1] = {
        .propKind = PROP_KIND_HORIZONTAL_PLATFORM_1,
        .animKind = PROP_ANIM_KIND_INVALID,
        .isStatic = TRUE
    },
    [PROP_KIND_VERTICAL_PLATFORM_1] = {
        .propKind = PROP_KIND_VERTICAL_PLATFORM_1,
        .animKind = PROP_ANIM_KIND_INVALID,
        .isStatic = TRUE
    },
    [PROP_KIND_VERTICAL_PLATFORM_2] = {
        .propKind = PROP_KIND_VERTICAL_PLATFORM_2,
        .animKind = PROP_ANIM_KIND_INVALID,
        .isStatic = TRUE
    },
    [PROP_KIND_HORIZONTAL_PLATFORM_2] = {
        .propKind = PROP_KIND_HORIZONTAL_PLATFORM_2,
        .animKind = PROP_ANIM_KIND_INVALID,
        .isStatic = TRUE
    },
    [PROP_KIND_ROTATED_PLATFORM_EAST] = {
        .propKind = PROP_KIND_ROTATED_PLATFORM_EAST,
        .animKind = PROP_ANIM_KIND_INVALID,
        .isStatic = TRUE
    },
    [PROP_KIND_ROTATED_PLATFORM_WEST] = {
        .propKind = PROP_KIND_ROTATED_PLATFORM_WEST,
        .animKind = PROP_ANIM_KIND_INVALID,
        .isStatic = TRUE
    },
    [PROP_KIND_LARGE_ELEVATOR_PLATFORM_2] = {
        .propKind = PROP_KIND_LARGE_ELEVATOR_PLATFORM_2,
        .animKind = PROP_ANIM_KIND_INVALID,
        .isStatic = TRUE
    },
    [PROP_KIND_LARGE_ELEVATOR_PLATFORM_3] = {
        .propKind = PROP_KIND_LARGE_ELEVATOR_PLATFORM_3,
        .animKind = PROP_ANIM_KIND_INVALID,
        .isStatic = TRUE
    },
    [PROP_KIND_LARGE_ELEVATOR_PLATFORM_4] = {
        .propKind = PROP_KIND_LARGE_ELEVATOR_PLATFORM_4,
        .animKind = PROP_ANIM_KIND_INVALID,
        .isStatic = TRUE
    },
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_5] = {
        .propKind = PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_5,
        .animKind = PROP_ANIM_KIND_INVALID,
        .isStatic = TRUE
    },
    [PROP_KIND_GIRATINA_SHADOW] = {
        .propKind = PROP_KIND_GIRATINA_SHADOW,
        .animKind = PROP_ANIM_KIND_GIRATINA_SHADOW,
        .isStatic = FALSE
    },
    [PROP_KIND_WATERFALL] = {
        .propKind = PROP_KIND_WATERFALL,
        .animKind = PROP_ANIM_KIND_WATERFALL,
        .isStatic = FALSE
    },
    [PROP_KIND_LAND_VINE_FLOWER] = {
        .propKind = PROP_KIND_LAND_VINE_FLOWER,
        .animKind = PROP_ANIM_KIND_LAND_VINE_FLOWER,
        .isStatic = FALSE
    },
    [PROP_KIND_LAND_ROCK] = {
        .propKind = PROP_KIND_LAND_ROCK,
        .animKind = PROP_ANIM_KIND_LAND_ROCK,
        .isStatic = FALSE
    },
    [PROP_KIND_PORTAL] = {
        .propKind = PROP_KIND_PORTAL,
        .animKind = PROP_ANIM_KIND_PORTAL,
        .isStatic = FALSE
    }
};
// clang-format on

static const VecFx32 sPropInitialPosOffsetByKind[PROP_KIND_COUNT] = {
    [PROP_KIND_SMALL_PLATFORM] = { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    [PROP_KIND_FLOATING_BLUE_ROCK] = { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_1] = { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_2] = { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_SW] = { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    [PROP_KIND_MEDIUM_MOVING_PLATFORM_1] = { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    [PROP_KIND_MEDIUM_MOVING_PLATFORM_2] = { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_3] = { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    [PROP_KIND_LARGE_ELEVATOR_PLATFORM_1] = { 0 + -FX32_ONE * 8, -FX32_ONE * 25, -FX32_ONE * 6 + FX32_ONE * 8 },
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_4] = { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    [PROP_KIND_HORIZONTAL_PLATFORM_1] = { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    [PROP_KIND_VERTICAL_PLATFORM_1] = { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    [PROP_KIND_VERTICAL_PLATFORM_2] = { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    [PROP_KIND_HORIZONTAL_PLATFORM_2] = { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    [PROP_KIND_ROTATED_PLATFORM_EAST] = { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    [PROP_KIND_ROTATED_PLATFORM_WEST] = { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    [PROP_KIND_LARGE_ELEVATOR_PLATFORM_2] = { 0 + -FX32_ONE * 8, -FX32_ONE * 25, -FX32_ONE * 6 + FX32_ONE * 8 },
    [PROP_KIND_LARGE_ELEVATOR_PLATFORM_3] = { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    [PROP_KIND_LARGE_ELEVATOR_PLATFORM_4] = { 0 + -FX32_ONE * 8, -FX32_ONE * 25, -FX32_ONE * 6 + FX32_ONE * 16 },
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_5] = { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    [PROP_KIND_GIRATINA_SHADOW] = { 0x0, -FX32_ONE * 32, -FX32_ONE * 6 },
    [PROP_KIND_WATERFALL] = { 0x0, -FX32_ONE * 32, -FX32_ONE * 6 },
    [PROP_KIND_LAND_VINE_FLOWER] = { 0x0, -FX32_ONE * 32, -FX32_ONE * 6 },
    [PROP_KIND_LAND_ROCK] = { 0x0, -FX32_ONE * 32, -FX32_ONE * 6 },
    [PROP_KIND_PORTAL] = { 0x0, -FX32_ONE * 14, FX32_ONE * 8 }
};

static const VecFx32 sPropScaleByKind[PROP_KIND_COUNT] = {
    [PROP_KIND_SMALL_PLATFORM] = { FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4 },
    [PROP_KIND_FLOATING_BLUE_ROCK] = { FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4 },
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_1] = { FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4 },
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_2] = { FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4 },
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_SW] = { FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4 },
    [PROP_KIND_MEDIUM_MOVING_PLATFORM_1] = { FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4 },
    [PROP_KIND_MEDIUM_MOVING_PLATFORM_2] = { FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4 },
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_3] = { FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4 },
    [PROP_KIND_LARGE_ELEVATOR_PLATFORM_1] = { FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4 },
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_4] = { FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4 },
    [PROP_KIND_HORIZONTAL_PLATFORM_1] = { FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4 },
    [PROP_KIND_VERTICAL_PLATFORM_1] = { FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4 },
    [PROP_KIND_VERTICAL_PLATFORM_2] = { FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4 },
    [PROP_KIND_HORIZONTAL_PLATFORM_2] = { FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4 },
    [PROP_KIND_ROTATED_PLATFORM_EAST] = { FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4 },
    [PROP_KIND_ROTATED_PLATFORM_WEST] = { FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4 },
    [PROP_KIND_LARGE_ELEVATOR_PLATFORM_2] = { FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4 },
    [PROP_KIND_LARGE_ELEVATOR_PLATFORM_3] = { FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4 },
    [PROP_KIND_LARGE_ELEVATOR_PLATFORM_4] = { FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4 },
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_5] = { FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4 },
    [PROP_KIND_GIRATINA_SHADOW] = { FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4 },
    [PROP_KIND_WATERFALL] = { FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4 },
    [PROP_KIND_LAND_VINE_FLOWER] = { FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 4, FX32_ONE + 0x100 * 8 },
    [PROP_KIND_LAND_ROCK] = { 0x0, 0x0, 0x0 },
    [PROP_KIND_PORTAL] = { 0x0, 0x0, 0x0 }
};

static const OverworldAnimManagerFuncs sPlatformPropAnimFuncs = {
    sizeof(DistWorldPlatformProp),
    DistWorldPlatformProp_AnimInit,
    DistWorldPlatformProp_AnimExit,
    DistWorldPlatformProp_AnimTick,
    DistWorldPlatformProp_AnimRender
};

static const OverworldAnimManagerFuncs sObstaclePropAnimFuncs = {
    sizeof(DistWorldObstacleProp),
    DistWorldObstacleProp_AnimInit,
    DistWorldObstacleProp_AnimExit,
    DistWorldObstacleProp_AnimTick,
    DistWorldObstacleProp_AnimRender
};

static const OverworldAnimManagerFuncs *const sPropAnimFuncsByKind[PROP_KIND_COUNT] = {
    [PROP_KIND_SMALL_PLATFORM] = &sPlatformPropAnimFuncs,
    [PROP_KIND_FLOATING_BLUE_ROCK] = &sPlatformPropAnimFuncs,
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_1] = &sPlatformPropAnimFuncs,
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_2] = &sPlatformPropAnimFuncs,
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_SW] = &sPlatformPropAnimFuncs,
    [PROP_KIND_MEDIUM_MOVING_PLATFORM_1] = &sPlatformPropAnimFuncs,
    [PROP_KIND_MEDIUM_MOVING_PLATFORM_2] = &sPlatformPropAnimFuncs,
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_3] = &sPlatformPropAnimFuncs,
    [PROP_KIND_LARGE_ELEVATOR_PLATFORM_1] = &sPlatformPropAnimFuncs,
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_4] = &sPlatformPropAnimFuncs,
    [PROP_KIND_HORIZONTAL_PLATFORM_1] = &sPlatformPropAnimFuncs,
    [PROP_KIND_VERTICAL_PLATFORM_1] = &sPlatformPropAnimFuncs,
    [PROP_KIND_VERTICAL_PLATFORM_2] = &sPlatformPropAnimFuncs,
    [PROP_KIND_HORIZONTAL_PLATFORM_2] = &sPlatformPropAnimFuncs,
    [PROP_KIND_ROTATED_PLATFORM_EAST] = &sPlatformPropAnimFuncs,
    [PROP_KIND_ROTATED_PLATFORM_WEST] = &sPlatformPropAnimFuncs,
    [PROP_KIND_LARGE_ELEVATOR_PLATFORM_2] = &sPlatformPropAnimFuncs,
    [PROP_KIND_LARGE_ELEVATOR_PLATFORM_3] = &sPlatformPropAnimFuncs,
    [PROP_KIND_LARGE_ELEVATOR_PLATFORM_4] = &sPlatformPropAnimFuncs,
    [PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_5] = &sPlatformPropAnimFuncs,
    [PROP_KIND_GIRATINA_SHADOW] = &sGiratinaShadowPropAnimFuncs,
    [PROP_KIND_WATERFALL] = &sSimplePropAnimFuncs,
    [PROP_KIND_LAND_VINE_FLOWER] = &sObstaclePropAnimFuncs,
    [PROP_KIND_LAND_ROCK] = &sObstaclePropAnimFuncs,
    [PROP_KIND_PORTAL] = &sSimplePropAnimFuncs
};

// clang-format off
static const DistWorldMapConnections sDistWorldMapConnectionList[DISTORTION_WORLD_MAP_COUNT] = {
    {
        .prevID = MAP_HEADER_INVALID,
        .currID = MAP_HEADER_DISTORTION_WORLD_1F,
        .nextID = MAP_HEADER_DISTORTION_WORLD_B1F
    },
    {
        .prevID = MAP_HEADER_DISTORTION_WORLD_1F,
        .currID = MAP_HEADER_DISTORTION_WORLD_B1F,
        .nextID = MAP_HEADER_DISTORTION_WORLD_B2F
    },
    {
        .prevID = MAP_HEADER_DISTORTION_WORLD_B1F,
        .currID = MAP_HEADER_DISTORTION_WORLD_B2F,
        .nextID = MAP_HEADER_DISTORTION_WORLD_B3F
    },
    {
        .prevID = MAP_HEADER_DISTORTION_WORLD_B2F,
        .currID = MAP_HEADER_DISTORTION_WORLD_B3F,
        .nextID = MAP_HEADER_DISTORTION_WORLD_B4F
    },
    {
        .prevID = MAP_HEADER_DISTORTION_WORLD_B3F,
        .currID = MAP_HEADER_DISTORTION_WORLD_B4F,
        .nextID = MAP_HEADER_DISTORTION_WORLD_B5F
    },
    {
        .prevID = MAP_HEADER_DISTORTION_WORLD_B4F,
        .currID = MAP_HEADER_DISTORTION_WORLD_B5F,
        .nextID = MAP_HEADER_DISTORTION_WORLD_B6F
    },
    {
        .prevID = MAP_HEADER_DISTORTION_WORLD_B5F,
        .currID = MAP_HEADER_DISTORTION_WORLD_B6F,
        .nextID = MAP_HEADER_DISTORTION_WORLD_B7F
    },
    {
        .prevID = MAP_HEADER_DISTORTION_WORLD_B6F,
        .currID = MAP_HEADER_DISTORTION_WORLD_B7F,
        .nextID = MAP_HEADER_INVALID
    },
    {
        .prevID = MAP_HEADER_INVALID,
        .currID = MAP_HEADER_DISTORTION_WORLD_TURNBACK_CAVE_ROOM,
        .nextID = MAP_HEADER_INVALID
    },
    {
        .prevID = MAP_HEADER_INVALID,
        .currID = MAP_HEADER_DISTORTION_WORLD_GIRATINA_ROOM,
        .nextID = MAP_HEADER_INVALID
     }
};
// clang-format on

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplate1F_1 = {
    .index = 0x0,
    .tileX = 0x28,
    .tileY = 0x121,
    .tileZ = 0x36,
    .elevatorPathIndex = 0x0,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_DOWN,
    .destIndex = 0x0,
    .propKind = PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_1,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_INVALID
};

static const DistWorldMovingPlatformTemplate *sMovingPlatformsMapTemplates1F[] = {
    &sMovingPlatformMapTemplate1F_1,
    NULL
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB1F_1 = {
    .index = 0x0,
    .tileX = 0x28,
    .tileY = 0x101,
    .tileZ = 0x36,
    .elevatorPathIndex = 0x1,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_UP,
    .destIndex = 0x0,
    .propKind = PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_1,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_B1F_1
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB1F_2 = {
    .index = 0x1,
    .tileX = 0x21,
    .tileY = 0x101,
    .tileZ = 0x2D,
    .elevatorPathIndex = 0x2,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_DOWN,
    .destIndex = 0x0,
    .propKind = PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_2,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_INVALID
};

static const DistWorldMovingPlatformTemplate *sMovingPlatformsMapTemplatesB1F[] = {
    &sMovingPlatformMapTemplateB1F_1,
    &sMovingPlatformMapTemplateB1F_2,
    NULL
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB2F_1 = {
    .index = 0x0,
    .tileX = 0x21,
    .tileY = 0xE1,
    .tileZ = 0x2D,
    .elevatorPathIndex = 0x3,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_UP,
    .destIndex = 0x1,
    .propKind = PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_2,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_B2F_1
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB2F_2 = {
    .index = 0x1,
    .tileX = 0x21,
    .tileY = 0xE1,
    .tileZ = 0x26,
    .elevatorPathIndex = 0x0,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_NONE,
    .destIndex = 0x0,
    .propKind = PROP_KIND_MEDIUM_MOVING_PLATFORM_1,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_INVALID
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB2F_3 = {
    .index = 0x2,
    .tileX = 0x21,
    .tileY = 0xE1,
    .tileZ = 0x17,
    .elevatorPathIndex = 0x0,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_NONE,
    .destIndex = 0x0,
    .propKind = PROP_KIND_MEDIUM_MOVING_PLATFORM_1,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_INVALID
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB2F_4 = {
    .index = 0x3,
    .tileX = 0x21,
    .tileY = 0xE1,
    .tileZ = 0x8,
    .elevatorPathIndex = 0x0,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_NONE,
    .destIndex = 0x0,
    .propKind = PROP_KIND_MEDIUM_MOVING_PLATFORM_1,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_INVALID
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB2F_5 = {
    .index = 0x4,
    .tileX = 0x31,
    .tileY = 0xE1,
    .tileZ = 0x8,
    .elevatorPathIndex = 0x0,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_NONE,
    .destIndex = 0x0,
    .propKind = PROP_KIND_MEDIUM_MOVING_PLATFORM_1,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_INVALID
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB2F_6 = {
    .index = 0x5,
    .tileX = 0x38,
    .tileY = 0xE1,
    .tileZ = 0x8,
    .elevatorPathIndex = 0x0,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_NONE,
    .destIndex = 0x0,
    .propKind = PROP_KIND_MEDIUM_MOVING_PLATFORM_1,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_INVALID
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB2F_7 = {
    .index = 0x6,
    .tileX = 0x31,
    .tileY = 0xE1,
    .tileZ = 0x1F,
    .elevatorPathIndex = 0x0,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_NONE,
    .destIndex = 0x0,
    .propKind = PROP_KIND_MEDIUM_MOVING_PLATFORM_1,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_INVALID
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB2F_8 = {
    .index = 0x7,
    .tileX = 0x41,
    .tileY = 0xE1,
    .tileZ = 0x1F,
    .elevatorPathIndex = 0x4,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_DOWN,
    .destIndex = 0x0,
    .propKind = PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_SW,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_INVALID
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB2F_9 = {
    .index = 0x8,
    .tileX = 0x38,
    .tileY = 0xE1,
    .tileZ = 0x34,
    .elevatorPathIndex = 0x0,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_NONE,
    .destIndex = 0x0,
    .propKind = PROP_KIND_MEDIUM_MOVING_PLATFORM_1,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_INVALID
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB2F_10 = {
    .index = 0x9,
    .tileX = 0x21,
    .tileY = 0xE9,
    .tileZ = 0xF,
    .elevatorPathIndex = 0x0,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_NONE,
    .destIndex = 0x1,
    .propKind = PROP_KIND_MEDIUM_MOVING_PLATFORM_2,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_INVALID
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB2F_11 = {
    .index = 0xA,
    .tileX = 0x31,
    .tileY = 0xE9,
    .tileZ = 0xF,
    .elevatorPathIndex = 0x0,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_NONE,
    .destIndex = 0x1,
    .propKind = PROP_KIND_MEDIUM_MOVING_PLATFORM_2,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_INVALID
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB2F_12 = {
    .index = 0xB,
    .tileX = 0x41,
    .tileY = 0xE9,
    .tileZ = 0xF,
    .elevatorPathIndex = 0x0,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_NONE,
    .destIndex = 0x1,
    .propKind = PROP_KIND_MEDIUM_MOVING_PLATFORM_2,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_INVALID
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB2F_13 = {
    .index = 0xC,
    .tileX = 0x41,
    .tileY = 0xE9,
    .tileZ = 0x2D,
    .elevatorPathIndex = 0x0,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_NONE,
    .destIndex = 0x1,
    .propKind = PROP_KIND_MEDIUM_MOVING_PLATFORM_2,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_INVALID
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB2F_14 = {
    .index = 0xD,
    .tileX = 0x41,
    .tileY = 0xE9,
    .tileZ = 0x34,
    .elevatorPathIndex = 0x0,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_NONE,
    .destIndex = 0x1,
    .propKind = PROP_KIND_MEDIUM_MOVING_PLATFORM_2,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_INVALID
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB2F_15 = {
    .index = 0xE,
    .tileX = 0x29,
    .tileY = 0xE9,
    .tileZ = 0x34,
    .elevatorPathIndex = 0x0,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_NONE,
    .destIndex = 0x1,
    .propKind = PROP_KIND_MEDIUM_MOVING_PLATFORM_2,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_INVALID
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB2F_16 = {
    .index = 0xF,
    .tileX = 0x31,
    .tileY = 0xE9,
    .tileZ = 0x2D,
    .elevatorPathIndex = 0x0,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_NONE,
    .destIndex = 0x1,
    .propKind = PROP_KIND_MEDIUM_MOVING_PLATFORM_2,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_INVALID
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB2F_17 = {
    .index = 0x10,
    .tileX = 0x1A,
    .tileY = 0xE9,
    .tileZ = 0x26,
    .elevatorPathIndex = 0x0,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_NONE,
    .destIndex = 0x1,
    .propKind = PROP_KIND_MEDIUM_MOVING_PLATFORM_2,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_INVALID
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB2F_18 = {
    .index = 0x11,
    .tileX = 0x31,
    .tileY = 0xE9,
    .tileZ = 0x26,
    .elevatorPathIndex = 0x0,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_NONE,
    .destIndex = 0x1,
    .propKind = PROP_KIND_MEDIUM_MOVING_PLATFORM_2,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_INVALID
};

static const DistWorldMovingPlatformTemplate *sMovingPlatformsMapTemplatesB2F[] = {
    &sMovingPlatformMapTemplateB2F_1,
    &sMovingPlatformMapTemplateB2F_2,
    &sMovingPlatformMapTemplateB2F_3,
    &sMovingPlatformMapTemplateB2F_4,
    &sMovingPlatformMapTemplateB2F_5,
    &sMovingPlatformMapTemplateB2F_6,
    &sMovingPlatformMapTemplateB2F_7,
    &sMovingPlatformMapTemplateB2F_8,
    &sMovingPlatformMapTemplateB2F_9,
    &sMovingPlatformMapTemplateB2F_10,
    &sMovingPlatformMapTemplateB2F_11,
    &sMovingPlatformMapTemplateB2F_12,
    &sMovingPlatformMapTemplateB2F_13,
    &sMovingPlatformMapTemplateB2F_14,
    &sMovingPlatformMapTemplateB2F_15,
    &sMovingPlatformMapTemplateB2F_16,
    &sMovingPlatformMapTemplateB2F_17,
    &sMovingPlatformMapTemplateB2F_18,
    NULL
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB3F_1 = {
    .index = 0x0,
    .tileX = 0x41,
    .tileY = 0xC1,
    .tileZ = 0x1F,
    .elevatorPathIndex = 0x5,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_UP,
    .destIndex = 0x7,
    .propKind = PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_SW,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_B3F_1
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB3F_2 = {
    .index = 0x1,
    .tileX = 0x4F,
    .tileY = 0xC1,
    .tileZ = 0x3E,
    .elevatorPathIndex = 0x6,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_DOWN,
    .destIndex = 0x0,
    .propKind = PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_4,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_B3F_2
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB3F_3 = {
    .index = 0x2,
    .tileX = 0x5F,
    .tileY = 0xC1,
    .tileZ = 0x46,
    .elevatorPathIndex = 0x7,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_DOWN,
    .destIndex = 0x1,
    .propKind = PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_4,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_INVALID
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB3F_4 = {
    .index = 0x3,
    .tileX = 0x60,
    .tileY = 0xC1,
    .tileZ = 0x2B,
    .elevatorPathIndex = 0x8,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_DOWN,
    .destIndex = 0x2,
    .propKind = PROP_KIND_LARGE_ELEVATOR_PLATFORM_1,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_INVALID
};

static const DistWorldMovingPlatformTemplate *sMovingPlatformsMapTemplatesB3F[] = {
    &sMovingPlatformMapTemplateB3F_1,
    &sMovingPlatformMapTemplateB3F_2,
    &sMovingPlatformMapTemplateB3F_3,
    &sMovingPlatformMapTemplateB3F_4,
    NULL
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB4F_1 = {
    .index = 0x0,
    .tileX = 0x4F,
    .tileY = 0xA1,
    .tileZ = 0x3E,
    .elevatorPathIndex = 0xA,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_UP,
    .destIndex = 0x1,
    .propKind = PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_4,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_B4F_1
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB4F_2 = {
    .index = 0x1,
    .tileX = 0x5F,
    .tileY = 0xA1,
    .tileZ = 0x46,
    .elevatorPathIndex = 0xB,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_UP,
    .destIndex = 0x2,
    .propKind = PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_4,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_B4F_2
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB4F_3 = {
    .index = 0x2,
    .tileX = 0x4E,
    .tileY = 0xA1,
    .tileZ = 0x4D,
    .elevatorPathIndex = 0xC,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_DOWN,
    .destIndex = 0x0,
    .propKind = PROP_KIND_LARGE_ELEVATOR_PLATFORM_2,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_B4F_3
};

static const DistWorldMovingPlatformTemplate *sMovingPlatformsMapTemplatesB4F[] = {
    &sMovingPlatformMapTemplateB4F_1,
    &sMovingPlatformMapTemplateB4F_2,
    &sMovingPlatformMapTemplateB4F_3,
    NULL
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB5F_1 = {
    .index = 0x0,
    .tileX = 0x4E,
    .tileY = 0x81,
    .tileZ = 0x4D,
    .elevatorPathIndex = 0xD,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_UP,
    .destIndex = 0x2,
    .propKind = PROP_KIND_LARGE_ELEVATOR_PLATFORM_2,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_B5F_1
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB5F_2 = {
    .index = 0x1,
    .tileX = 0x57,
    .tileY = 0x81,
    .tileZ = 0x43,
    .elevatorPathIndex = 0xE,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_DOWN,
    .destIndex = 0x0,
    .propKind = PROP_KIND_LARGE_ELEVATOR_PLATFORM_4,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_INVALID
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB5F_3 = {
    .index = 0x2,
    .tileX = 0x60,
    .tileY = 0x81,
    .tileZ = 0x2B,
    .elevatorPathIndex = 0xF,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_UP,
    .destIndex = 0x3,
    .propKind = PROP_KIND_LARGE_ELEVATOR_PLATFORM_1,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_B5F_3
};

static const DistWorldMovingPlatformTemplate *sMovingPlatformsMapTemplatesB5F[] = {
    &sMovingPlatformMapTemplateB5F_1,
    &sMovingPlatformMapTemplateB5F_2,
    &sMovingPlatformMapTemplateB5F_3,
    NULL
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB6F_1 = {
    .index = 0x0,
    .tileX = 0x57,
    .tileY = 0x73,
    .tileZ = 0x43,
    .elevatorPathIndex = 0x11,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_UP,
    .destIndex = 0x1,
    .propKind = PROP_KIND_LARGE_ELEVATOR_PLATFORM_4,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_B6F_1
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB6F_2 = {
    .index = 0x1,
    .tileX = 0x55,
    .tileY = 0x73,
    .tileZ = 0x56,
    .elevatorPathIndex = 0x12,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_DOWN,
    .destIndex = 0x0,
    .propKind = PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_5,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_INVALID
};

static const DistWorldMovingPlatformTemplate *sMovingPlatformsMapTemplatesB6F[] = {
    &sMovingPlatformMapTemplateB6F_1,
    &sMovingPlatformMapTemplateB6F_2,
    NULL
};

static const DistWorldMovingPlatformTemplate sMovingPlatformMapTemplateB7F_1 = {
    .index = 0x0,
    .tileX = 0x55,
    .tileY = 0x41,
    .tileZ = 0x56,
    .elevatorPathIndex = 0x13,
    .elevatorDir = MOVING_PLATFORM_ELEVATOR_DIR_UP,
    .destIndex = 0x1,
    .propKind = PROP_KIND_MEDIUM_ELEVATOR_PLATFORM_5,
    .persistedFlag = DIST_WORLD_PLATFORM_FLAG_B7F_1
};

static const DistWorldMovingPlatformTemplate *sMovingPlatformsMapTemplatesB7F[] = {
    &sMovingPlatformMapTemplateB7F_1,
    NULL
};

static const DistWorldMovingPlatformMapTemplates sMovingPlatformsMapTemplates[MOVING_PLATFORM_MAP_COUNT] = {
    { MAP_HEADER_DISTORTION_WORLD_1F, sMovingPlatformsMapTemplates1F },
    { MAP_HEADER_DISTORTION_WORLD_B1F, sMovingPlatformsMapTemplatesB1F },
    { MAP_HEADER_DISTORTION_WORLD_B2F, sMovingPlatformsMapTemplatesB2F },
    { MAP_HEADER_DISTORTION_WORLD_B3F, sMovingPlatformsMapTemplatesB3F },
    { MAP_HEADER_DISTORTION_WORLD_B4F, sMovingPlatformsMapTemplatesB4F },
    { MAP_HEADER_DISTORTION_WORLD_B5F, sMovingPlatformsMapTemplatesB5F },
    { MAP_HEADER_DISTORTION_WORLD_B6F, sMovingPlatformsMapTemplatesB6F },
    { MAP_HEADER_DISTORTION_WORLD_B7F, sMovingPlatformsMapTemplatesB7F }
};

static const DistWorldElevatorPlatformPath sElevatorPlatformPaths[ELEVATOR_PLATFORM_PATH_COUNT] = {
    {
        .index = 0x0,
        .nextIndex = ELEVATOR_PLATFORM_PATH_INVALID,
        .finalTileXOffset = 0x0,
        .finalTileYOffset = -0x20,
        .finalTileZOffset = 0x0,
        .changeMapsTileXOffset = 0x0,
        .changeMapsTileYOffset = -0x10,
        .changeMapsTileZOffset = 0x0,
        .posDelta = { 0x0, FX32_ONE * -4, 0x0 },
        .persistedFlagToSet = DIST_WORLD_PLATFORM_FLAG_B1F_1,
        .persistedFlagToClear = DIST_WORLD_PLATFORM_FLAG_INVALID,
    },
    {
        .index = 0x1,
        .nextIndex = ELEVATOR_PLATFORM_PATH_INVALID,
        .finalTileXOffset = 0x0,
        .finalTileYOffset = 0x20,
        .finalTileZOffset = 0x0,
        .changeMapsTileXOffset = 0x0,
        .changeMapsTileYOffset = 0x12,
        .changeMapsTileZOffset = 0x0,
        .posDelta = { 0x0, FX32_ONE * 4, 0x0 },
        .persistedFlagToSet = DIST_WORLD_PLATFORM_FLAG_INVALID,
        .persistedFlagToClear = DIST_WORLD_PLATFORM_FLAG_B1F_1,
    },
    {
        .index = 0x2,
        .nextIndex = ELEVATOR_PLATFORM_PATH_INVALID,
        .finalTileXOffset = 0x0,
        .finalTileYOffset = -0x20,
        .finalTileZOffset = 0x0,
        .changeMapsTileXOffset = 0x0,
        .changeMapsTileYOffset = -0x1C,
        .changeMapsTileZOffset = 0x0,
        .posDelta = { 0x0, FX32_ONE * -4, 0x0 },
        .persistedFlagToSet = DIST_WORLD_PLATFORM_FLAG_B2F_1,
        .persistedFlagToClear = DIST_WORLD_PLATFORM_FLAG_INVALID,
    },
    {
        .index = 0x3,
        .nextIndex = ELEVATOR_PLATFORM_PATH_INVALID,
        .finalTileXOffset = 0x0,
        .finalTileYOffset = 0x20,
        .finalTileZOffset = 0x0,
        .changeMapsTileXOffset = 0x0,
        .changeMapsTileYOffset = 0x12,
        .changeMapsTileZOffset = 0x0,
        .posDelta = { 0x0, FX32_ONE * 4, 0x0 },
        .persistedFlagToSet = DIST_WORLD_PLATFORM_FLAG_INVALID,
        .persistedFlagToClear = DIST_WORLD_PLATFORM_FLAG_B2F_1,
    },
    {
        .index = 0x4,
        .nextIndex = ELEVATOR_PLATFORM_PATH_INVALID,
        .finalTileXOffset = 0x0,
        .finalTileYOffset = -0x20,
        .finalTileZOffset = 0x0,
        .changeMapsTileXOffset = 0x0,
        .changeMapsTileYOffset = -0xE,
        .changeMapsTileZOffset = 0x0,
        .posDelta = { 0x0, FX32_ONE * -4, 0x0 },
        .persistedFlagToSet = DIST_WORLD_PLATFORM_FLAG_B3F_1,
        .persistedFlagToClear = DIST_WORLD_PLATFORM_FLAG_INVALID,
    },
    {
        .index = 0x5,
        .nextIndex = ELEVATOR_PLATFORM_PATH_INVALID,
        .finalTileXOffset = 0x0,
        .finalTileYOffset = 0x20,
        .finalTileZOffset = 0x0,
        .changeMapsTileXOffset = 0x0,
        .changeMapsTileYOffset = 0x12,
        .changeMapsTileZOffset = 0x0,
        .posDelta = { 0x0, FX32_ONE * 4, 0x0 },
        .persistedFlagToSet = DIST_WORLD_PLATFORM_FLAG_INVALID,
        .persistedFlagToClear = DIST_WORLD_PLATFORM_FLAG_B3F_1,
    },
    {
        .index = 0x6,
        .nextIndex = ELEVATOR_PLATFORM_PATH_INVALID,
        .finalTileXOffset = 0x0,
        .finalTileYOffset = -0x20,
        .finalTileZOffset = 0x0,
        .changeMapsTileXOffset = 0x0,
        .changeMapsTileYOffset = -0x12,
        .changeMapsTileZOffset = 0x0,
        .posDelta = { 0x0, FX32_ONE * -4, 0x0 },
        .persistedFlagToSet = DIST_WORLD_PLATFORM_FLAG_B4F_1,
        .persistedFlagToClear = DIST_WORLD_PLATFORM_FLAG_B3F_2,
    },
    {
        .index = 0x7,
        .nextIndex = ELEVATOR_PLATFORM_PATH_INVALID,
        .finalTileXOffset = 0x0,
        .finalTileYOffset = -0x20,
        .finalTileZOffset = 0x0,
        .changeMapsTileXOffset = 0x0,
        .changeMapsTileYOffset = -0xE,
        .changeMapsTileZOffset = 0x0,
        .posDelta = { 0x0, FX32_ONE * -4, 0x0 },
        .persistedFlagToSet = DIST_WORLD_PLATFORM_FLAG_B4F_2,
        .persistedFlagToClear = DIST_WORLD_PLATFORM_FLAG_INVALID,
    },
    {
        .index = 0x8,
        .nextIndex = 0x9,
        .finalTileXOffset = 0x0,
        .finalTileYOffset = -0x20,
        .finalTileZOffset = 0x0,
        .changeMapsTileXOffset = 0x0,
        .changeMapsTileYOffset = -0x12,
        .changeMapsTileZOffset = 0x0,
        .posDelta = { 0x0, FX32_ONE * -4, 0x0 },
        .persistedFlagToSet = DIST_WORLD_PLATFORM_FLAG_B5F_3,
        .persistedFlagToClear = DIST_WORLD_PLATFORM_FLAG_INVALID,
    },
    {
        .index = 0x9,
        .nextIndex = ELEVATOR_PLATFORM_PATH_INVALID,
        .finalTileXOffset = 0x0,
        .finalTileYOffset = -0x20,
        .finalTileZOffset = 0x0,
        .changeMapsTileXOffset = 0x0,
        .changeMapsTileYOffset = -0xE,
        .changeMapsTileZOffset = 0x0,
        .posDelta = { 0x0, FX32_ONE * -4, 0x0 },
        .persistedFlagToSet = DIST_WORLD_PLATFORM_FLAG_INVALID,
        .persistedFlagToClear = DIST_WORLD_PLATFORM_FLAG_INVALID,
    },
    {
        .index = 0xA,
        .nextIndex = ELEVATOR_PLATFORM_PATH_INVALID,
        .finalTileXOffset = 0x0,
        .finalTileYOffset = 0x20,
        .finalTileZOffset = 0x0,
        .changeMapsTileXOffset = 0x0,
        .changeMapsTileYOffset = 0x12,
        .changeMapsTileZOffset = 0x0,
        .posDelta = { 0x0, FX32_ONE * 4, 0x0 },
        .persistedFlagToSet = DIST_WORLD_PLATFORM_FLAG_B3F_2,
        .persistedFlagToClear = DIST_WORLD_PLATFORM_FLAG_B4F_1,
    },
    {
        .index = 0xB,
        .nextIndex = ELEVATOR_PLATFORM_PATH_INVALID,
        .finalTileXOffset = 0x0,
        .finalTileYOffset = 0x20,
        .finalTileZOffset = 0x0,
        .changeMapsTileXOffset = 0x0,
        .changeMapsTileYOffset = 0x12,
        .changeMapsTileZOffset = 0x0,
        .posDelta = { 0x0, FX32_ONE * 4, 0x0 },
        .persistedFlagToSet = DIST_WORLD_PLATFORM_FLAG_INVALID,
        .persistedFlagToClear = DIST_WORLD_PLATFORM_FLAG_B4F_2,
    },
    {
        .index = 0xC,
        .nextIndex = ELEVATOR_PLATFORM_PATH_INVALID,
        .finalTileXOffset = 0x0,
        .finalTileYOffset = -0x20,
        .finalTileZOffset = 0x0,
        .changeMapsTileXOffset = 0x0,
        .changeMapsTileYOffset = -0xE,
        .changeMapsTileZOffset = 0x0,
        .posDelta = { 0x0, FX32_ONE * -4, 0x0 },
        .persistedFlagToSet = DIST_WORLD_PLATFORM_FLAG_B5F_1,
        .persistedFlagToClear = DIST_WORLD_PLATFORM_FLAG_B4F_3,
    },
    {
        .index = 0xD,
        .nextIndex = ELEVATOR_PLATFORM_PATH_INVALID,
        .finalTileXOffset = 0x0,
        .finalTileYOffset = 0x20,
        .finalTileZOffset = 0x0,
        .changeMapsTileXOffset = 0x0,
        .changeMapsTileYOffset = 0x12,
        .changeMapsTileZOffset = 0x0,
        .posDelta = { 0x0, FX32_ONE * 4, 0x0 },
        .persistedFlagToSet = DIST_WORLD_PLATFORM_FLAG_B4F_3,
        .persistedFlagToClear = DIST_WORLD_PLATFORM_FLAG_B5F_1,
    },
    {
        .index = 0xE,
        .nextIndex = ELEVATOR_PLATFORM_PATH_INVALID,
        .finalTileXOffset = 0x0,
        .finalTileYOffset = -0xE,
        .finalTileZOffset = 0x0,
        .changeMapsTileXOffset = 0x0,
        .changeMapsTileYOffset = -0xC,
        .changeMapsTileZOffset = 0x0,
        .posDelta = { 0x0, FX32_ONE * -4, 0x0 },
        .persistedFlagToSet = DIST_WORLD_PLATFORM_FLAG_B6F_1,
        .persistedFlagToClear = DIST_WORLD_PLATFORM_FLAG_INVALID,
    },
    {
        .index = 0xF,
        .nextIndex = 0x10,
        .finalTileXOffset = 0x0,
        .finalTileYOffset = 0x20,
        .finalTileZOffset = 0x0,
        .changeMapsTileXOffset = 0x0,
        .changeMapsTileYOffset = 0x12,
        .changeMapsTileZOffset = 0x0,
        .posDelta = { 0x0, FX32_ONE * 4, 0x0 },
        .persistedFlagToSet = DIST_WORLD_PLATFORM_FLAG_INVALID,
        .persistedFlagToClear = DIST_WORLD_PLATFORM_FLAG_B5F_3,
    },
    {
        .index = 0x10,
        .nextIndex = ELEVATOR_PLATFORM_PATH_INVALID,
        .finalTileXOffset = 0x0,
        .finalTileYOffset = 0x20,
        .finalTileZOffset = 0x0,
        .changeMapsTileXOffset = 0x0,
        .changeMapsTileYOffset = 0xA,
        .changeMapsTileZOffset = 0x0,
        .posDelta = { 0x0, FX32_ONE * 4, 0x0 },
        .persistedFlagToSet = DIST_WORLD_PLATFORM_FLAG_INVALID,
        .persistedFlagToClear = DIST_WORLD_PLATFORM_FLAG_INVALID,
    },
    {
        .index = 0x11,
        .nextIndex = ELEVATOR_PLATFORM_PATH_INVALID,
        .finalTileXOffset = 0x0,
        .finalTileYOffset = 0xE,
        .finalTileZOffset = 0x0,
        .changeMapsTileXOffset = 0x0,
        .changeMapsTileYOffset = 0x1,
        .changeMapsTileZOffset = 0x0,
        .posDelta = { 0x0, FX32_ONE * 4, 0x0 },
        .persistedFlagToSet = DIST_WORLD_PLATFORM_FLAG_INVALID,
        .persistedFlagToClear = DIST_WORLD_PLATFORM_FLAG_B6F_1,
    },
    {
        .index = 0x12,
        .nextIndex = ELEVATOR_PLATFORM_PATH_INVALID,
        .finalTileXOffset = 0x0,
        .finalTileYOffset = -0x32,
        .finalTileZOffset = 0x0,
        .changeMapsTileXOffset = 0x0,
        .changeMapsTileYOffset = -0x11,
        .changeMapsTileZOffset = 0x0,
        .posDelta = { 0x0, FX32_ONE * -4, 0x0 },
        .persistedFlagToSet = DIST_WORLD_PLATFORM_FLAG_B7F_1,
        .persistedFlagToClear = DIST_WORLD_PLATFORM_FLAG_INVALID,
    },
    {
        .index = 0x13,
        .nextIndex = ELEVATOR_PLATFORM_PATH_INVALID,
        .finalTileXOffset = 0x0,
        .finalTileYOffset = 0x32,
        .finalTileZOffset = 0x0,
        .changeMapsTileXOffset = 0x0,
        .changeMapsTileYOffset = 0x12,
        .changeMapsTileZOffset = 0x0,
        .posDelta = { 0x0, FX32_ONE * 4, 0x0 },
        .persistedFlagToSet = DIST_WORLD_PLATFORM_FLAG_INVALID,
        .persistedFlagToClear = DIST_WORLD_PLATFORM_FLAG_B7F_1,
    },
    {
        .index = 0x14,
        .nextIndex = ELEVATOR_PLATFORM_PATH_INVALID,
        .finalTileXOffset = 0x0,
        .finalTileYOffset = 0x20,
        .finalTileZOffset = 0x0,
        .changeMapsTileXOffset = 0x0,
        .changeMapsTileYOffset = 0x12,
        .changeMapsTileZOffset = 0x0,
        .posDelta = { 0x0, FX32_ONE * 4, 0x0 },
        .persistedFlagToSet = DIST_WORLD_PLATFORM_FLAG_INVALID,
        .persistedFlagToClear = DIST_WORLD_PLATFORM_FLAG_INVALID,
    },
    {
        .index = 0x15,
        .nextIndex = ELEVATOR_PLATFORM_PATH_INVALID,
        .finalTileXOffset = 0x0,
        .finalTileYOffset = -0x20,
        .finalTileZOffset = 0x0,
        .changeMapsTileXOffset = 0x0,
        .changeMapsTileYOffset = -0xE,
        .changeMapsTileZOffset = 0x0,
        .posDelta = { 0x0, FX32_ONE * 4, 0x0 },
        .persistedFlagToSet = DIST_WORLD_PLATFORM_FLAG_INVALID,
        .persistedFlagToClear = DIST_WORLD_PLATFORM_FLAG_INVALID,
    },
};

static const DistWorldEventCmdHandler *sEventCmdHandlers[EVENT_CMD_KIND_COUNT] = {
    [EVENT_CMD_SET_MAP_OBJECT_ANIMATION] = sSetMapObjectAnimationHandlers,
    [EVENT_CMD_MOVE_PLATFORM] = sMovePlatformHandlers,
    [EVENT_CMD_ADD_MAP_OBJECT_WITH_LOCAL_ID] = sAddMapObjWithLocalIDHandlers,
    [EVENT_CMD_DELETE_MAP_OBJECT_WITH_LOCAL_ID] = sDeleteMapObjWithLocalIDHandlers,
    [EVENT_CMD_CASCADE_UP] = sCascadeUpHandlers,
    [EVENT_CMD_START_SCRIPT] = sStartScriptHandlers,
    [EVENT_CMD_SET_DISTORTION_WORLD_PROGRESS] = sSetDistortionWorldProgressHandlers,
    [EVENT_CMD_SHOW_GIRATINA_SHADOW] = sEventCmdShowGiratinaShadow,
    [EVENT_CMD_SET_GIRATINA_ANIMATION_FLAG] = sSetGiratinaAnimationFlagHandlers,
    [EVENT_CMD_SET_PUZZLE_FLAG] = sSetPuzzleFlagHandlers,
    [EVENT_CMD_CASCADE_DOWN] = sCascadeDownHandlers,
    [EVENT_CMD_PLAY_GIRATINA_ARRIVAL] = sPlayGiratinaArrivalHandlers,
    [EVENT_CMD_SHOW_UXIE_BOULDER_TUTO] = sShowUxieBoulderTutoHandlers,
    [EVENT_CMD_SHOW_AZELF_BOULDER_TUTO] = sShowAzelfBoulderTutoHandlers,
    [EVENT_CMD_SHOW_MESPRIT_BOULDER_TUTO] = sShowMespritBoulderTutoHandlers,
    [EVENT_CMD_SHOW_GIRATINA_ROOM_PLATFORMS] = sShowGiratinaRoomPlatformsHandlers,
    [EVENT_CMD_HIDE_GIRATINA_ROOM_PLATFORMS] = sHideGiratinaRoomPlatformsHandlers,
    [EVENT_CMD_CLEAR_PUZZLE_FLAG] = sClearPuzzleFlagHandlers
};

static const CmdParamsStartScript sMapEventCmdParams1F_CynthiaElevatorText_1 = {
    .scriptID = 0x4
};

static const CmdParamsSetDistortionWorldProgress sMapEventCmdParams1F_CynthiaElevatorText_2 = {
    .progress = 0x2
};

static const DistWorldEventCmd sMapEvent1F_CynthiaElevatorText[] = {
    {
        .kind = EVENT_CMD_START_SCRIPT,
        .params = &sMapEventCmdParams1F_CynthiaElevatorText_1,
    },
    {
        .kind = EVENT_CMD_SET_DISTORTION_WORLD_PROGRESS,
        .params = &sMapEventCmdParams1F_CynthiaElevatorText_2,
    },
    { EVENT_CMD_END, NULL }
};

static const DistWorldEvent sMapEvents1F[] = {
    {
        .tileX = 0x28,
        .tileY = 0x121,
        .tileZ = 0x34,
        .flagCond = FLAG_COND_WORLD_PROGRESS_EQ,
        .flagCondVal = 0x1,
        .cmds = sMapEvent1F_CynthiaElevatorText,
    },
    { 0x0, 0x0, 0x0, FLAG_COND_NONE, 0x0, NULL }
};

static const CmdParamsStartScript sMapEventCmdParamsB1F_Mesprit_1 = {
    .scriptID = 0x3
};

static const CmdParamsSetDistortionWorldProgress sMapEventCmdParamsB1F_Mesprit_2 = {
    .progress = 0x4
};

static const CmdParamsAddMapObjWithLocalID sMapEventCmdParamsB1F_Mesprit_3 = {
    .mapHeaderID = MAP_HEADER_DISTORTION_WORLD_B2F,
    .mapObjLocalID = MAP_OBJECT_B2F_CYNTHIA_1
};

static const DistWorldEventCmd sMapEventB1F_Mesprit[] = {
    {
        .kind = EVENT_CMD_START_SCRIPT,
        .params = &sMapEventCmdParamsB1F_Mesprit_1,
    },
    {
        .kind = EVENT_CMD_SET_DISTORTION_WORLD_PROGRESS,
        .params = &sMapEventCmdParamsB1F_Mesprit_2,
    },
    {
        .kind = EVENT_CMD_ADD_MAP_OBJECT_WITH_LOCAL_ID,
        .params = &sMapEventCmdParamsB1F_Mesprit_3,
    },
    { EVENT_CMD_END, NULL }
};

static const DistWorldEvent sMapEventsB1F[] = {
    {
        .tileX = 0xF,
        .tileY = 0x101,
        .tileZ = 0x3A,
        .flagCond = FLAG_COND_WORLD_PROGRESS_EQ,
        .flagCondVal = 0x3,
        .cmds = sMapEventB1F_Mesprit,
    },
    { 0x0, 0x0, 0x0, FLAG_COND_NONE, 0x0, NULL }
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P2N_1 = {
    .platformIndex = 0x1,
    .movePlayer = TRUE,
    .finalTileXOffset = 0x0,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = -0x8,
    .posDelta = { 0x0, 0x0, FX32_ONE * -4 },
    .dummy04 = 0x1,
};

static const CmdParamsSetMapObjectAnimation sMapEventCmdParamsB2F_P2N_2 = {
    .mapObjLocalID = LOCALID_PLAYER,
    .movementAction = MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_NORTH
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P2N_3 = {
    .platformIndex = 0x1,
    .movePlayer = FALSE,
    .finalTileXOffset = 0x0,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x8,
    .posDelta = { 0x0, 0x0, FX32_ONE * 4 },
    .dummy04 = 0x0,
};

static const DistWorldEventCmd sMapEventB2F_P2N[] = {
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P2N_1,
    },
    {
        .kind = EVENT_CMD_SET_MAP_OBJECT_ANIMATION,
        .params = &sMapEventCmdParamsB2F_P2N_2,
    },
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P2N_3,
    },
    { EVENT_CMD_END, NULL }
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P3S_1 = {
    .platformIndex = 0x1,
    .movePlayer = FALSE,
    .finalTileXOffset = 0x0,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = -0x8,
    .posDelta = { 0x0, 0x0, FX32_ONE * -4 },
    .dummy04 = 0x0,
};

static const CmdParamsSetMapObjectAnimation sMapEventCmdParamsB2F_P3S_2 = {
    .mapObjLocalID = LOCALID_PLAYER,
    .movementAction = MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_SOUTH
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P3S_3 = {
    .platformIndex = 0x1,
    .movePlayer = TRUE,
    .finalTileXOffset = 0x0,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x8,
    .posDelta = { 0x0, 0x0, FX32_ONE * 4 },
    .dummy04 = 0x1,
};

static const DistWorldEventCmd sMapEventB2F_P3S[] = {
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P3S_1,
    },
    {
        .kind = EVENT_CMD_SET_MAP_OBJECT_ANIMATION,
        .params = &sMapEventCmdParamsB2F_P3S_2,
    },
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P3S_3,
    },
    { EVENT_CMD_END, NULL }
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P3N_1 = {
    .platformIndex = 0x2,
    .movePlayer = TRUE,
    .finalTileXOffset = 0x0,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = -0x8,
    .posDelta = { 0x0, 0x0, FX32_ONE * -4 },
    .dummy04 = 0x1,
};

static const CmdParamsSetMapObjectAnimation sMapEventCmdParamsB2F_P3N_2 = {
    .mapObjLocalID = LOCALID_PLAYER,
    .movementAction = MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_NORTH
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P3N_3 = {
    .platformIndex = 0x2,
    .movePlayer = FALSE,
    .finalTileXOffset = 0x0,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x8,
    .posDelta = { 0x0, 0x0, FX32_ONE * 4 },
    .dummy04 = 0x0,
};

static const DistWorldEventCmd sMapEventB2F_P3N[] = {
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P3N_1,
    },
    {
        .kind = EVENT_CMD_SET_MAP_OBJECT_ANIMATION,
        .params = &sMapEventCmdParamsB2F_P3N_2,
    },
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P3N_3,
    },
    { EVENT_CMD_END, NULL }
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P4S_1 = {
    .platformIndex = 0x2,
    .movePlayer = FALSE,
    .finalTileXOffset = 0x0,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = -0x8,
    .posDelta = { 0x0, 0x0, FX32_ONE * -4 },
    .dummy04 = 0x0,
};

static const CmdParamsSetMapObjectAnimation sMapEventCmdParamsB2F_P4S_2 = {
    .mapObjLocalID = LOCALID_PLAYER,
    .movementAction = MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_SOUTH
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P4S_3 = {
    .platformIndex = 0x2,
    .movePlayer = TRUE,
    .finalTileXOffset = 0x0,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x8,
    .posDelta = { 0x0, 0x0, FX32_ONE * 4 },
    .dummy04 = 0x1,
};

static const DistWorldEventCmd sMapEventB2F_P4S[] = {
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P4S_1,
    },
    {
        .kind = EVENT_CMD_SET_MAP_OBJECT_ANIMATION,
        .params = &sMapEventCmdParamsB2F_P4S_2,
    },
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P4S_3,
    },
    { EVENT_CMD_END, NULL }
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P4E_1 = {
    .platformIndex = 0x3,
    .movePlayer = TRUE,
    .finalTileXOffset = 0x9,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x0,
    .posDelta = { FX32_ONE * 4, 0x0, 0x0 },
    .dummy04 = 0x1,
};

static const CmdParamsSetMapObjectAnimation sMapEventCmdParamsB2F_P4E_2 = {
    .mapObjLocalID = LOCALID_PLAYER,
    .movementAction = MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_EAST
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P4E_3 = {
    .platformIndex = 0x3,
    .movePlayer = FALSE,
    .finalTileXOffset = -0x9,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x0,
    .posDelta = { FX32_ONE * -4, 0x0, 0x0 },
    .dummy04 = 0x0,
};

static const DistWorldEventCmd sMapEventB2F_P4E[] = {
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P4E_1,
    },
    {
        .kind = EVENT_CMD_SET_MAP_OBJECT_ANIMATION,
        .params = &sMapEventCmdParamsB2F_P4E_2,
    },
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P4E_3,
    },
    { EVENT_CMD_END, NULL }
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P5W_1 = {
    .platformIndex = 0x3,
    .movePlayer = FALSE,
    .finalTileXOffset = 0x9,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x0,
    .posDelta = { FX32_ONE * 4, 0x0, 0x0 },
    .dummy04 = 0x0,
};

static const CmdParamsSetMapObjectAnimation sMapEventCmdParamsB2F_P5W_2 = {
    .mapObjLocalID = LOCALID_PLAYER,
    .movementAction = MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_WEST
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P5W_3 = {
    .platformIndex = 0x3,
    .movePlayer = TRUE,
    .finalTileXOffset = -0x9,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x0,
    .posDelta = { FX32_ONE * -4, 0x0, 0x0 },
    .dummy04 = 0x1,
};

static const DistWorldEventCmd sMapEventB2F_P5W[] = {
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P5W_1,
    },
    {
        .kind = EVENT_CMD_SET_MAP_OBJECT_ANIMATION,
        .params = &sMapEventCmdParamsB2F_P5W_2,
    },
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P5W_3,
    },
    { EVENT_CMD_END, NULL }
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P6S_1 = {
    .platformIndex = 0x5,
    .movePlayer = TRUE,
    .finalTileXOffset = 0x0,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x25,
    .posDelta = { 0x0, 0x0, FX32_ONE * 4 },
    .dummy04 = 0x1,
};

static const CmdParamsSetMapObjectAnimation sMapEventCmdParamsB2F_P6S_2 = {
    .mapObjLocalID = LOCALID_PLAYER,
    .movementAction = MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_SOUTH
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P6S_3 = {
    .platformIndex = 0x5,
    .movePlayer = FALSE,
    .finalTileXOffset = 0x0,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = -0x25,
    .posDelta = { 0x0, 0x0, FX32_ONE * -4 },
    .dummy04 = 0x0,
};

static const DistWorldEventCmd sMapEventB2F_P6S[] = {
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P6S_1,
    },
    {
        .kind = EVENT_CMD_SET_MAP_OBJECT_ANIMATION,
        .params = &sMapEventCmdParamsB2F_P6S_2,
    },
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P6S_3,
    },
    { EVENT_CMD_END, NULL }
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P9N_1 = {
    .platformIndex = 0x5,
    .movePlayer = FALSE,
    .finalTileXOffset = 0x0,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x25,
    .posDelta = { 0x0, 0x0, FX32_ONE * 4 },
    .dummy04 = 0x0,
};

static const CmdParamsSetMapObjectAnimation sMapEventCmdParamsB2F_P9N_2 = {
    .mapObjLocalID = LOCALID_PLAYER,
    .movementAction = MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_NORTH
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P9N_3 = {
    .platformIndex = 0x5,
    .movePlayer = TRUE,
    .finalTileXOffset = 0x0,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = -0x25,
    .posDelta = { 0x0, 0x0, FX32_ONE * -4 },
    .dummy04 = 0x1,
};

static const DistWorldEventCmd sMapEventB2F_P9N[] = {
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P9N_1,
    },
    {
        .kind = EVENT_CMD_SET_MAP_OBJECT_ANIMATION,
        .params = &sMapEventCmdParamsB2F_P9N_2,
    },
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P9N_3,
    },
    { EVENT_CMD_END, NULL }
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P7E_1 = {
    .platformIndex = 0x6,
    .movePlayer = TRUE,
    .finalTileXOffset = 0x9,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x0,
    .posDelta = { FX32_ONE * 4, 0x0, 0x0 },
    .dummy04 = 0x1,
};

static const CmdParamsSetMapObjectAnimation sMapEventCmdParamsB2F_P7E_2 = {
    .mapObjLocalID = LOCALID_PLAYER,
    .movementAction = MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_EAST
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P7E_3 = {
    .platformIndex = 0x6,
    .movePlayer = FALSE,
    .finalTileXOffset = -0x9,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x0,
    .posDelta = { FX32_ONE * -4, 0x0, 0x0 },
    .dummy04 = 0x0,
};

static const DistWorldEventCmd sMapEventB2F_P7E[] = {
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P7E_1,
    },
    {
        .kind = EVENT_CMD_SET_MAP_OBJECT_ANIMATION,
        .params = &sMapEventCmdParamsB2F_P7E_2,
    },
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P7E_3,
    },
    { EVENT_CMD_END, NULL }
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P8W_1 = {
    .platformIndex = 0x6,
    .movePlayer = FALSE,
    .finalTileXOffset = 0x9,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x0,
    .posDelta = { FX32_ONE * 4, 0x0, 0x0 },
    .dummy04 = 0x0,
};

static const CmdParamsSetMapObjectAnimation sMapEventCmdParamsB2F_P8W_2 = {
    .mapObjLocalID = LOCALID_PLAYER,
    .movementAction = MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_WEST
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P8W_3 = {
    .platformIndex = 0x6,
    .movePlayer = TRUE,
    .finalTileXOffset = -0x9,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x0,
    .posDelta = { FX32_ONE * -4, 0x0, 0x0 },
    .dummy04 = 0x1,
};

static const DistWorldEventCmd sMapEventB2F_P8W[] = {
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P8W_1,
    },
    {
        .kind = EVENT_CMD_SET_MAP_OBJECT_ANIMATION,
        .params = &sMapEventCmdParamsB2F_P8W_2,
    },
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P8W_3,
    },
    { EVENT_CMD_END, NULL }
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P10E_1 = {
    .platformIndex = 0x9,
    .movePlayer = TRUE,
    .finalTileXOffset = 0x9,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x0,
    .posDelta = { FX32_ONE * 4, 0x0, 0x0 },
    .dummy04 = 0x2,
};

static const CmdParamsSetMapObjectAnimation sMapEventCmdParamsB2F_P10E_2 = {
    .mapObjLocalID = LOCALID_PLAYER,
    .movementAction = MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_EAST
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P10E_3 = {
    .platformIndex = 0x9,
    .movePlayer = FALSE,
    .finalTileXOffset = -0x9,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x0,
    .posDelta = { FX32_ONE * -4, 0x0, 0x0 },
    .dummy04 = 0x2,
};

static const DistWorldEventCmd sMapEventB2F_P10E[] = {
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P10E_1,
    },
    {
        .kind = EVENT_CMD_SET_MAP_OBJECT_ANIMATION,
        .params = &sMapEventCmdParamsB2F_P10E_2,
    },
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P10E_3,
    },
    { EVENT_CMD_END, NULL }
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P11W_1 = {
    .platformIndex = 0x9,
    .movePlayer = FALSE,
    .finalTileXOffset = 0x9,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x0,
    .posDelta = { FX32_ONE * 4, 0x0, 0x0 },
    .dummy04 = 0x2,
};

static const CmdParamsSetMapObjectAnimation sMapEventCmdParamsB2F_P11W_2 = {
    .mapObjLocalID = LOCALID_PLAYER,
    .movementAction = MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_WEST
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P11W_3 = {
    .platformIndex = 0x9,
    .movePlayer = TRUE,
    .finalTileXOffset = -0x9,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x0,
    .posDelta = { FX32_ONE * -4, 0x0, 0x0 },
    .dummy04 = 0x2,
};

static const DistWorldEventCmd sMapEventB2F_P11W[] = {
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P11W_1,
    },
    {
        .kind = EVENT_CMD_SET_MAP_OBJECT_ANIMATION,
        .params = &sMapEventCmdParamsB2F_P11W_2,
    },
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P11W_3,
    },
    { EVENT_CMD_END, NULL }
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P11E_1 = {
    .platformIndex = 0xA,
    .movePlayer = TRUE,
    .finalTileXOffset = 0x9,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x0,
    .posDelta = { FX32_ONE * 4, 0x0, 0x0 },
    .dummy04 = 0x2,
};

static const CmdParamsSetMapObjectAnimation sMapEventCmdParamsB2F_P11E_2 = {
    .mapObjLocalID = LOCALID_PLAYER,
    .movementAction = MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_EAST
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P11E_3 = {
    .platformIndex = 0xA,
    .movePlayer = FALSE,
    .finalTileXOffset = -0x9,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x0,
    .posDelta = { FX32_ONE * -4, 0x0, 0x0 },
    .dummy04 = 0x2,
};

static const DistWorldEventCmd sMapEventB2F_P11E[] = {
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P11E_1,
    },
    {
        .kind = EVENT_CMD_SET_MAP_OBJECT_ANIMATION,
        .params = &sMapEventCmdParamsB2F_P11E_2,
    },
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P11E_3,
    },
    { EVENT_CMD_END, NULL }
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P12W_1 = {
    .platformIndex = 0xA,
    .movePlayer = FALSE,
    .finalTileXOffset = 0x9,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x0,
    .posDelta = { FX32_ONE * 4, 0x0, 0x0 },
    .dummy04 = 0x2,
};

static const CmdParamsSetMapObjectAnimation sMapEventCmdParamsB2F_P12W_2 = {
    .mapObjLocalID = LOCALID_PLAYER,
    .movementAction = MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_WEST
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P12W_3 = {
    .platformIndex = 0xA,
    .movePlayer = TRUE,
    .finalTileXOffset = -0x9,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x0,
    .posDelta = { FX32_ONE * -4, 0x0, 0x0 },
    .dummy04 = 0x2,
};

static const DistWorldEventCmd sMapEventB2F_P12W[] = {
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P12W_1,
    },
    {
        .kind = EVENT_CMD_SET_MAP_OBJECT_ANIMATION,
        .params = &sMapEventCmdParamsB2F_P12W_2,
    },
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P12W_3,
    },
    { EVENT_CMD_END, NULL }
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P12S_1 = {
    .platformIndex = 0xB,
    .movePlayer = TRUE,
    .finalTileXOffset = 0x0,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x17,
    .posDelta = { 0x0, 0x0, FX32_ONE * 4 },
    .dummy04 = 0x2,
};

static const CmdParamsSetMapObjectAnimation sMapEventCmdParamsB2F_P12S_2 = {
    .mapObjLocalID = LOCALID_PLAYER,
    .movementAction = MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_SOUTH
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P12S_3 = {
    .platformIndex = 0xB,
    .movePlayer = FALSE,
    .finalTileXOffset = 0x0,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = -0x17,
    .posDelta = { 0x0, 0x0, FX32_ONE * -4 },
    .dummy04 = 0x2,
};

static const DistWorldEventCmd sMapEventB2F_P12S[] = {
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P12S_1,
    },
    {
        .kind = EVENT_CMD_SET_MAP_OBJECT_ANIMATION,
        .params = &sMapEventCmdParamsB2F_P12S_2,
    },
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P12S_3,
    },
    { EVENT_CMD_END, NULL }
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P13N_1 = {
    .platformIndex = 0xB,
    .movePlayer = FALSE,
    .finalTileXOffset = 0x0,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x17,
    .posDelta = { 0x0, 0x0, FX32_ONE * 4 },
    .dummy04 = 0x2,
};

static const CmdParamsSetMapObjectAnimation sMapEventCmdParamsB2F_P13N_2 = {
    .mapObjLocalID = LOCALID_PLAYER,
    .movementAction = MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_NORTH
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P13N_3 = {
    .platformIndex = 0xB,
    .movePlayer = TRUE,
    .finalTileXOffset = 0x0,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = -0x17,
    .posDelta = { 0x0, 0x0, FX32_ONE * -4 },
    .dummy04 = 0x2,
};

static const DistWorldEventCmd sMapEventB2F_P13N[] = {
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P13N_1,
    },
    {
        .kind = EVENT_CMD_SET_MAP_OBJECT_ANIMATION,
        .params = &sMapEventCmdParamsB2F_P13N_2,
    },
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P13N_3,
    },
    { EVENT_CMD_END, NULL }
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P13W_1 = {
    .platformIndex = 0xC,
    .movePlayer = TRUE,
    .finalTileXOffset = -0x9,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x0,
    .posDelta = { FX32_ONE * -4, 0x0, 0x0 },
    .dummy04 = 0x2,
};

static const CmdParamsSetMapObjectAnimation sMapEventCmdParamsB2F_P13W_2 = {
    .mapObjLocalID = LOCALID_PLAYER,
    .movementAction = MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_WEST
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P13W_3 = {
    .platformIndex = 0xC,
    .movePlayer = FALSE,
    .finalTileXOffset = 0x9,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x0,
    .posDelta = { FX32_ONE * 4, 0x0, 0x0 },
    .dummy04 = 0x2,
};

static const DistWorldEventCmd sMapEventB2F_P13W[] = {
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P13W_1,
    },
    {
        .kind = EVENT_CMD_SET_MAP_OBJECT_ANIMATION,
        .params = &sMapEventCmdParamsB2F_P13W_2,
    },
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P13W_3,
    },
    { EVENT_CMD_END, NULL }
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P16E_1 = {
    .platformIndex = 0xC,
    .movePlayer = FALSE,
    .finalTileXOffset = -0x9,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x0,
    .posDelta = { FX32_ONE * -4, 0x0, 0x0 },
    .dummy04 = 0x2,
};

static const CmdParamsSetMapObjectAnimation sMapEventCmdParamsB2F_P16E_2 = {
    .mapObjLocalID = LOCALID_PLAYER,
    .movementAction = MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_EAST
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P16E_3 = {
    .platformIndex = 0xC,
    .movePlayer = TRUE,
    .finalTileXOffset = 0x9,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x0,
    .posDelta = { FX32_ONE * 4, 0x0, 0x0 },
    .dummy04 = 0x2,
};

static const DistWorldEventCmd sMapEventB2F_P16E[] = {
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P16E_1,
    },
    {
        .kind = EVENT_CMD_SET_MAP_OBJECT_ANIMATION,
        .params = &sMapEventCmdParamsB2F_P16E_2,
    },
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P16E_3,
    },
    { EVENT_CMD_END, NULL }
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P14W_1 = {
    .platformIndex = 0xD,
    .movePlayer = TRUE,
    .finalTileXOffset = -0x11,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x0,
    .posDelta = { FX32_ONE * -4, 0x0, 0x0 },
    .dummy04 = 0x2,
};

static const CmdParamsSetMapObjectAnimation sMapEventCmdParamsB2F_P14W_2 = {
    .mapObjLocalID = LOCALID_PLAYER,
    .movementAction = MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_WEST
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P14W_3 = {
    .platformIndex = 0xD,
    .movePlayer = FALSE,
    .finalTileXOffset = 0x11,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x0,
    .posDelta = { FX32_ONE * 4, 0x0, 0x0 },
    .dummy04 = 0x2,
};

static const DistWorldEventCmd sMapEventB2F_P14W[] = {
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P14W_1,
    },
    {
        .kind = EVENT_CMD_SET_MAP_OBJECT_ANIMATION,
        .params = &sMapEventCmdParamsB2F_P14W_2,
    },
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P14W_3,
    },
    { EVENT_CMD_END, NULL }
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P15E_1 = {
    .platformIndex = 0xD,
    .movePlayer = FALSE,
    .finalTileXOffset = -0x11,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x0,
    .posDelta = { FX32_ONE * -4, 0x0, 0x0 },
    .dummy04 = 0x2,
};

static const CmdParamsSetMapObjectAnimation sMapEventCmdParamsB2F_P15E_2 = {
    .mapObjLocalID = LOCALID_PLAYER,
    .movementAction = MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_EAST
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P15E_3 = {
    .platformIndex = 0xD,
    .movePlayer = TRUE,
    .finalTileXOffset = 0x11,
    .finalTileYOffset = 0x0,
    .finalTileZOffset = 0x0,
    .posDelta = { FX32_ONE * 4, 0x0, 0x0 },
    .dummy04 = 0x2,
};

static const DistWorldEventCmd sMapEventB2F_P15E[] = {
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P15E_1,
    },
    {
        .kind = EVENT_CMD_SET_MAP_OBJECT_ANIMATION,
        .params = &sMapEventCmdParamsB2F_P15E_2,
    },
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P15E_3,
    },
    { EVENT_CMD_END, NULL }
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P18N_1 = {
    .platformIndex = 0x11,
    .movePlayer = TRUE,
    .finalTileXOffset = 0x0,
    .finalTileYOffset = -0x8,
    .finalTileZOffset = 0x0,
    .posDelta = { 0x0, FX32_ONE * -2, 0x0 },
    .dummy04 = 0x1,
};

static const CmdParamsSetMapObjectAnimation sMapEventCmdParamsB2F_P18N_2 = {
    .mapObjLocalID = LOCALID_PLAYER,
    .movementAction = MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_NORTH
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P18N_3 = {
    .platformIndex = 0x11,
    .movePlayer = FALSE,
    .finalTileXOffset = 0x0,
    .finalTileYOffset = 0x8,
    .finalTileZOffset = 0x0,
    .posDelta = { 0x0, FX32_ONE * 2, 0x0 },
    .dummy04 = 0x1,
};

static const DistWorldEventCmd sMapEventB2F_P18N[] = {
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P18N_1,
    },
    {
        .kind = EVENT_CMD_SET_MAP_OBJECT_ANIMATION,
        .params = &sMapEventCmdParamsB2F_P18N_2,
    },
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P18N_3,
    },
    { EVENT_CMD_END, NULL }
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P7S_1 = {
    .platformIndex = 0x11,
    .movePlayer = FALSE,
    .finalTileXOffset = 0x0,
    .finalTileYOffset = -0x8,
    .finalTileZOffset = 0x0,
    .posDelta = { 0x0, FX32_ONE * -2, 0x0 },
    .dummy04 = 0x1,
};

static const CmdParamsSetMapObjectAnimation sMapEventCmdParamsB2F_P7S_2 = {
    .mapObjLocalID = LOCALID_PLAYER,
    .movementAction = MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_SOUTH
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P7S_3 = {
    .platformIndex = 0x11,
    .movePlayer = TRUE,
    .finalTileXOffset = 0x0,
    .finalTileYOffset = 0x8,
    .finalTileZOffset = 0x0,
    .posDelta = { 0x0, FX32_ONE * 2, 0x0 },
    .dummy04 = 0x1,
};

static const DistWorldEventCmd sMapEventB2F_P7S[] = {
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P7S_1,
    },
    {
        .kind = EVENT_CMD_SET_MAP_OBJECT_ANIMATION,
        .params = &sMapEventCmdParamsB2F_P7S_2,
    },
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P7S_3,
    },
    { EVENT_CMD_END, NULL }
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P17E_1 = {
    .platformIndex = 0x10,
    .movePlayer = TRUE,
    .finalTileXOffset = 0x0,
    .finalTileYOffset = -0x8,
    .finalTileZOffset = 0x0,
    .posDelta = { 0x0, FX32_ONE * -2, 0x0 },
    .dummy04 = 0x1,
};

static const CmdParamsSetMapObjectAnimation sMapEventCmdParamsB2F_P17E_2 = {
    .mapObjLocalID = LOCALID_PLAYER,
    .movementAction = MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_EAST
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P17E_3 = {
    .platformIndex = 0x10,
    .movePlayer = FALSE,
    .finalTileXOffset = 0x0,
    .finalTileYOffset = 0x8,
    .finalTileZOffset = 0x0,
    .posDelta = { 0x0, FX32_ONE * 2, 0x0 },
    .dummy04 = 0x1,
};

static const DistWorldEventCmd sMapEventB2F_P17E[] = {
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P17E_1,
    },
    {
        .kind = EVENT_CMD_SET_MAP_OBJECT_ANIMATION,
        .params = &sMapEventCmdParamsB2F_P17E_2,
    },
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P17E_3,
    },
    { EVENT_CMD_END, NULL }
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P2W_1 = {
    .platformIndex = 0x10,
    .movePlayer = FALSE,
    .finalTileXOffset = 0x0,
    .finalTileYOffset = -0x8,
    .finalTileZOffset = 0x0,
    .posDelta = { 0x0, FX32_ONE * -2, 0x0 },
    .dummy04 = 0x1,
};

static const CmdParamsSetMapObjectAnimation sMapEventCmdParamsB2F_P2W_2 = {
    .mapObjLocalID = LOCALID_PLAYER,
    .movementAction = MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_WEST
};

static const CmdParamsMovePlatform sMapEventCmdParamsB2F_P2W_3 = {
    .platformIndex = 0x10,
    .movePlayer = TRUE,
    .finalTileXOffset = 0x0,
    .finalTileYOffset = 0x8,
    .finalTileZOffset = 0x0,
    .posDelta = { 0x0, FX32_ONE * 2, 0x0 },
    .dummy04 = 0x1,
};

static const DistWorldEventCmd sMapEventB2F_P2W[] = {
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P2W_1,
    },
    {
        .kind = EVENT_CMD_SET_MAP_OBJECT_ANIMATION,
        .params = &sMapEventCmdParamsB2F_P2W_2,
    },
    {
        .kind = EVENT_CMD_MOVE_PLATFORM,
        .params = &sMapEventCmdParamsB2F_P2W_3,
    },
    { EVENT_CMD_END, NULL }
};

// All the events in B2F are triggers for the moving platforms.
// As such, the following naming scheme has been adopted to name the event
// structs and related command parameter structs:
//
// - Event structs: `sMapEventB2F_P<Platform><Cardinal>`
// - Command parameter structs: `sMapEventCmdParamsB2F_P<Platform><Cardinal>_<Event command #>`
//
// Using the following variables:
//
// - `<Platform>`: the platform number on which the event trigger is located
// - `<Cardinal>`: the first letter of the cardinal direction where the event
//                 trigger is located on the platform
static const DistWorldEvent sMapEventsB2F[] = {
    {
        .tileX = 0x21,
        .tileY = 0xE1,
        .tileZ = 0x24,
        .flagCond = FLAG_COND_NONE,
        .flagCondVal = 0x0,
        .cmds = sMapEventB2F_P2N,
    },
    {
        .tileX = 0x21,
        .tileY = 0xE1,
        .tileZ = 0x19,
        .flagCond = FLAG_COND_NONE,
        .flagCondVal = 0x0,
        .cmds = sMapEventB2F_P3S,
    },
    {
        .tileX = 0x21,
        .tileY = 0xE1,
        .tileZ = 0x15,
        .flagCond = FLAG_COND_NONE,
        .flagCondVal = 0x0,
        .cmds = sMapEventB2F_P3N,
    },
    {
        .tileX = 0x21,
        .tileY = 0xE1,
        .tileZ = 0xA,
        .flagCond = FLAG_COND_NONE,
        .flagCondVal = 0x0,
        .cmds = sMapEventB2F_P4S,
    },
    {
        .tileX = 0x23,
        .tileY = 0xE1,
        .tileZ = 0x8,
        .flagCond = FLAG_COND_NONE,
        .flagCondVal = 0x0,
        .cmds = sMapEventB2F_P4E,
    },
    {
        .tileX = 0x2F,
        .tileY = 0xE1,
        .tileZ = 0x8,
        .flagCond = FLAG_COND_NONE,
        .flagCondVal = 0x0,
        .cmds = sMapEventB2F_P5W,
    },
    {
        .tileX = 0x38,
        .tileY = 0xE1,
        .tileZ = 0xA,
        .flagCond = FLAG_COND_NONE,
        .flagCondVal = 0x0,
        .cmds = sMapEventB2F_P6S,
    },
    {
        .tileX = 0x38,
        .tileY = 0xE1,
        .tileZ = 0x32,
        .flagCond = FLAG_COND_NONE,
        .flagCondVal = 0x0,
        .cmds = sMapEventB2F_P9N,
    },
    {
        .tileX = 0x33,
        .tileY = 0xE1,
        .tileZ = 0x1F,
        .flagCond = FLAG_COND_NONE,
        .flagCondVal = 0x0,
        .cmds = sMapEventB2F_P7E,
    },
    {
        .tileX = 0x3F,
        .tileY = 0xE1,
        .tileZ = 0x1F,
        .flagCond = FLAG_COND_NONE,
        .flagCondVal = 0x0,
        .cmds = sMapEventB2F_P8W,
    },
    {
        .tileX = 0x23,
        .tileY = 0xE9,
        .tileZ = 0xF,
        .flagCond = FLAG_COND_NONE,
        .flagCondVal = 0x0,
        .cmds = sMapEventB2F_P10E,
    },
    {
        .tileX = 0x2F,
        .tileY = 0xE9,
        .tileZ = 0xF,
        .flagCond = FLAG_COND_NONE,
        .flagCondVal = 0x0,
        .cmds = sMapEventB2F_P11W,
    },
    {
        .tileX = 0x33,
        .tileY = 0xE9,
        .tileZ = 0xF,
        .flagCond = FLAG_COND_NONE,
        .flagCondVal = 0x0,
        .cmds = sMapEventB2F_P11E,
    },
    {
        .tileX = 0x3F,
        .tileY = 0xE9,
        .tileZ = 0xF,
        .flagCond = FLAG_COND_NONE,
        .flagCondVal = 0x0,
        .cmds = sMapEventB2F_P12W,
    },
    {
        .tileX = 0x41,
        .tileY = 0xE9,
        .tileZ = 0x11,
        .flagCond = FLAG_COND_NONE,
        .flagCondVal = 0x0,
        .cmds = sMapEventB2F_P12S,
    },
    {
        .tileX = 0x41,
        .tileY = 0xE9,
        .tileZ = 0x2B,
        .flagCond = FLAG_COND_NONE,
        .flagCondVal = 0x0,
        .cmds = sMapEventB2F_P13N,
    },
    {
        .tileX = 0x3F,
        .tileY = 0xE9,
        .tileZ = 0x2D,
        .flagCond = FLAG_COND_NONE,
        .flagCondVal = 0x0,
        .cmds = sMapEventB2F_P13W,
    },
    {
        .tileX = 0x33,
        .tileY = 0xE9,
        .tileZ = 0x2D,
        .flagCond = FLAG_COND_NONE,
        .flagCondVal = 0x0,
        .cmds = sMapEventB2F_P16E,
    },
    {
        .tileX = 0x3F,
        .tileY = 0xE9,
        .tileZ = 0x34,
        .flagCond = FLAG_COND_NONE,
        .flagCondVal = 0x0,
        .cmds = sMapEventB2F_P14W,
    },
    {
        .tileX = 0x2B,
        .tileY = 0xE9,
        .tileZ = 0x34,
        .flagCond = FLAG_COND_NONE,
        .flagCondVal = 0x0,
        .cmds = sMapEventB2F_P15E,
    },
    {
        .tileX = 0x31,
        .tileY = 0xE9,
        .tileZ = 0x24,
        .flagCond = FLAG_COND_NONE,
        .flagCondVal = 0x0,
        .cmds = sMapEventB2F_P18N,
    },
    {
        .tileX = 0x31,
        .tileY = 0xE1,
        .tileZ = 0x21,
        .flagCond = FLAG_COND_NONE,
        .flagCondVal = 0x0,
        .cmds = sMapEventB2F_P7S,
    },
    {
        .tileX = 0x1C,
        .tileY = 0xE9,
        .tileZ = 0x26,
        .flagCond = FLAG_COND_NONE,
        .flagCondVal = 0x0,
        .cmds = sMapEventB2F_P17E,
    },
    {
        .tileX = 0x1F,
        .tileY = 0xE1,
        .tileZ = 0x26,
        .flagCond = FLAG_COND_NONE,
        .flagCondVal = 0x0,
        .cmds = sMapEventB2F_P2W,
    },
    { 0x0, 0x0, 0x0, FLAG_COND_NONE, 0x0, NULL }
};

static const CmdParamsStartScript sMapEventCmdParamsB3F_Cyrus_1 = {
    .scriptID = 0x2
};

static const CmdParamsSetDistortionWorldProgress sMapEventCmdParamsB3F_Cyrus_2 = {
    .progress = 0x6
};

static const DistWorldEventCmd sMapEventB3F_Cyrus[] = {
    {
        .kind = EVENT_CMD_START_SCRIPT,
        .params = &sMapEventCmdParamsB3F_Cyrus_1,
    },
    {
        .kind = EVENT_CMD_SET_DISTORTION_WORLD_PROGRESS,
        .params = &sMapEventCmdParamsB3F_Cyrus_2,
    },
    { EVENT_CMD_END, NULL }
};

static const DistWorldEvent sMapEventsB3F[] = {
    {
        .tileX = 0x41,
        .tileY = 0xC1,
        .tileZ = 0x29,
        .flagCond = FLAG_COND_WORLD_PROGRESS_EQ,
        .flagCondVal = 0x4,
        .cmds = sMapEventB3F_Cyrus,
    },
    {
        .tileX = 0x41,
        .tileY = 0xC1,
        .tileZ = 0x29,
        .flagCond = FLAG_COND_WORLD_PROGRESS_EQ,
        .flagCondVal = 0x5,
        .cmds = sMapEventB3F_Cyrus,
    },
    { 0x0, 0x0, 0x0, FLAG_COND_NONE, 0x0, NULL }
};

static const CmdParamsCascadeDown sMapEventCmdParamsB4F_Waterfall = {
    {
        .movementAxis = AXIS_Y,
        .movementDir = CASCADE_MOVEMENT_DIR_DOWN,
        .finishingPosFixTileX = 0x0,
        .finishingPosFixTileY = -0x2A,
        .finishingPosFixTileZ = 0x0,
        .finalPosOffsetTileX = 0x0,
        .finalPosOffsetTileY = -0x298,
        .finalPosOffsetTileZ = 0x0,
        .mapLoadPosOffsetTileX = 0x0,
        .mapLoadPosOffsetTileY = -0x15,
        .mapLoadPosOffsetTileZ = 0x0,
        .posDelta = { 0x0, FX32_ONE * -1, 0x0 },
    },
};

static const DistWorldEventCmd sMapEventB4F_Waterfall[] = {
    {
        .kind = EVENT_CMD_CASCADE_DOWN,
        .params = &sMapEventCmdParamsB4F_Waterfall,
    },
    { EVENT_CMD_END, NULL }
};

static const DistWorldGiratinaShadowTemplate sMapEventCmdParamsB4F_Giratina1_1 = {
    .initialTileX = 63,
    .initialTileY = 169,
    .initialTileZ = 9,
    .rotAnglesIndex = 1,
    .soundKind = GIRATINA_SHADOW_PROP_SFX_KIND_CRY,
    .scale = { FX32_ONE, FX32_ONE, FX32_ONE },
    .posDelta = { 0, 0, FX32_ONE * 48 },
    .movementAnimSteps = 64,
};

static const CmdParamsSetGiratinaAnimationFlag sMapEventCmdParamsB4F_Giratina1_2 = {
    .anim = GIRATINA_SHADOW_ANIM_B4F_1
};

static const DistWorldEventCmd sMapEventB4F_Giratina1[] = {
    {
        .kind = EVENT_CMD_SHOW_GIRATINA_SHADOW,
        .params = &sMapEventCmdParamsB4F_Giratina1_1,
    },
    {
        .kind = EVENT_CMD_SET_GIRATINA_ANIMATION_FLAG,
        .params = &sMapEventCmdParamsB4F_Giratina1_2,
    },
    { EVENT_CMD_END, NULL }
};

static const DistWorldGiratinaShadowTemplate sMapEventCmdParamsB4F_Giratina2_1 = {
    .initialTileX = 42,
    .initialTileY = 137,
    .initialTileZ = 32,
    .rotAnglesIndex = 3,
    .soundKind = GIRATINA_SHADOW_PROP_SFX_KIND_CRY,
    .scale = { FX32_ONE, FX32_ONE, FX32_ONE },
    .posDelta = { FX32_ONE * 48, 0, 0 },
    .movementAnimSteps = 72
};

static const CmdParamsSetGiratinaAnimationFlag sMapEventCmdParamsB4F_Giratina2_2 = {
    .anim = GIRATINA_SHADOW_ANIM_B4F_2
};

static const DistWorldEventCmd sMapEventB4F_Giratina2[] = {
    {
        .kind = EVENT_CMD_SHOW_GIRATINA_SHADOW,
        .params = &sMapEventCmdParamsB4F_Giratina2_1,
    },
    {
        .kind = EVENT_CMD_SET_GIRATINA_ANIMATION_FLAG,
        .params = &sMapEventCmdParamsB4F_Giratina2_2,
    },
    { EVENT_CMD_END, NULL }
};

static const DistWorldEvent sMapEventsB4F[] = {
    {
        .tileX = 0x41,
        .tileY = 0xA1,
        .tileZ = 0x39,
        .flagCond = FLAG_COND_GIRATINA_SHADOW,
        .flagCondVal = GIRATINA_SHADOW_ANIM_B4F_1,
        .cmds = sMapEventB4F_Giratina1,
    },
    {
        .tileX = 0x62,
        .tileY = 0xA1,
        .tileZ = 0x38,
        .flagCond = FLAG_COND_GIRATINA_SHADOW,
        .flagCondVal = GIRATINA_SHADOW_ANIM_B4F_2,
        .cmds = sMapEventB4F_Giratina2,
    },
    {
        .tileX = 0x62,
        .tileY = 0xA1,
        .tileZ = 0x39,
        .flagCond = FLAG_COND_GIRATINA_SHADOW,
        .flagCondVal = GIRATINA_SHADOW_ANIM_B4F_2,
        .cmds = sMapEventB4F_Giratina2,
    },
    { 0x0, 0x0, 0x0, FLAG_COND_NONE, 0x0, NULL }
};

static const CmdParamsCascadeUp sMapEventCmdParamsB5F_Waterfall = {
    {
        .movementAxis = AXIS_Y,
        .movementDir = CASCADE_MOVEMENT_DIR_UP,
        .finishingPosFixTileX = 0x0,
        .finishingPosFixTileY = 0x2A,
        .finishingPosFixTileZ = 0x0,
        .finalPosOffsetTileX = 0x0,
        .finalPosOffsetTileY = 0x298,
        .finalPosOffsetTileZ = 0x0,
        .mapLoadPosOffsetTileX = 0x0,
        .mapLoadPosOffsetTileY = 0x14,
        .mapLoadPosOffsetTileZ = 0x0,
        .posDelta = { 0x0, FX32_ONE * 8, 0x0 },
    },
};

static const DistWorldEventCmd sMapEventB5F_Waterfall[] = {
    {
        .kind = EVENT_CMD_CASCADE_UP,
        .params = &sMapEventCmdParamsB5F_Waterfall,
    },
    { EVENT_CMD_END, NULL }
};

static const DistWorldEventCmd sMapEventB5F_UxieTuto[] = {
    {
        .kind = EVENT_CMD_SHOW_UXIE_BOULDER_TUTO,
        .params = NULL,
    },
    { EVENT_CMD_END, NULL }
};

static const DistWorldEventCmd sMapEventB5F_AzelfTuto[] = {
    {
        .kind = EVENT_CMD_SHOW_AZELF_BOULDER_TUTO,
        .params = NULL,
    },
    { EVENT_CMD_END, NULL }
};

static const DistWorldEventCmd sMapEventB5F_MespritTuto[] = {
    {
        .kind = EVENT_CMD_SHOW_MESPRIT_BOULDER_TUTO,
        .params = NULL,
    },
    { EVENT_CMD_END, NULL }
};

static const DistWorldEvent sMapEventsB5F[] = {
    {
        .tileX = 0x56,
        .tileY = 0x81,
        .tileZ = 0x35,
        .flagCond = FLAG_COND_BOULDER_PUZZLE_FALSE,
        .flagCondVal = DIST_WORLD_PUZZLE_FLAG_UXIE_TUTO_SEEN,
        .cmds = sMapEventB5F_UxieTuto,
    },
    {
        .tileX = 0x57,
        .tileY = 0x81,
        .tileZ = 0x35,
        .flagCond = FLAG_COND_BOULDER_PUZZLE_FALSE,
        .flagCondVal = DIST_WORLD_PUZZLE_FLAG_UXIE_TUTO_SEEN,
        .cmds = sMapEventB5F_UxieTuto,
    },
    {
        .tileX = 0x64,
        .tileY = 0x81,
        .tileZ = 0x43,
        .flagCond = FLAG_COND_BOULDER_PUZZLE_FALSE,
        .flagCondVal = DIST_WORLD_PUZZLE_FLAG_AZELF_TUTO_SEEN,
        .cmds = sMapEventB5F_AzelfTuto,
    },
    {
        .tileX = 0x64,
        .tileY = 0x81,
        .tileZ = 0x44,
        .flagCond = FLAG_COND_BOULDER_PUZZLE_FALSE,
        .flagCondVal = DIST_WORLD_PUZZLE_FLAG_AZELF_TUTO_SEEN,
        .cmds = sMapEventB5F_AzelfTuto,
    },
    {
        .tileX = 0x50,
        .tileY = 0x81,
        .tileZ = 0x43,
        .flagCond = FLAG_COND_BOULDER_PUZZLE_FALSE,
        .flagCondVal = DIST_WORLD_PUZZLE_FLAG_MESPRIT_TUTO_SEEN,
        .cmds = sMapEventB5F_MespritTuto,
    },
    {
        .tileX = 0x50,
        .tileY = 0x81,
        .tileZ = 0x44,
        .flagCond = FLAG_COND_BOULDER_PUZZLE_FALSE,
        .flagCondVal = DIST_WORLD_PUZZLE_FLAG_MESPRIT_TUTO_SEEN,
        .cmds = sMapEventB5F_MespritTuto,
    },
    { 0x0, 0x0, 0x0, FLAG_COND_NONE, 0x0, NULL }
};

static const CmdParamsStartScript sMapEventCmdParamsB7F_CynthiaCyrus_1 = {
    .scriptID = 0x4
};

static const CmdParamsSetDistortionWorldProgress sMapEventCmdParamsB7F_CynthiaCyrus_2 = {
    .progress = 0x9
};

static const DistWorldEventCmd sMapEventB7F_CynthiaCyrus[] = {
    {
        .kind = EVENT_CMD_START_SCRIPT,
        .params = &sMapEventCmdParamsB7F_CynthiaCyrus_1,
    },
    {
        .kind = EVENT_CMD_SET_DISTORTION_WORLD_PROGRESS,
        .params = &sMapEventCmdParamsB7F_CynthiaCyrus_2,
    },
    { EVENT_CMD_END, NULL }
};

static const DistWorldEvent sMapEventsB7F[] = {
    {
        .tileX = 0x54,
        .tileY = 0x41,
        .tileZ = 0x4C,
        .flagCond = FLAG_COND_WORLD_PROGRESS_EQ,
        .flagCondVal = 0x8,
        .cmds = sMapEventB7F_CynthiaCyrus,
    },
    {
        .tileX = 0x55,
        .tileY = 0x41,
        .tileZ = 0x4C,
        .flagCond = FLAG_COND_WORLD_PROGRESS_EQ,
        .flagCondVal = 0x8,
        .cmds = sMapEventB7F_CynthiaCyrus,
    },
    {
        .tileX = 0x56,
        .tileY = 0x41,
        .tileZ = 0x4C,
        .flagCond = FLAG_COND_WORLD_PROGRESS_EQ,
        .flagCondVal = 0x8,
        .cmds = sMapEventB7F_CynthiaCyrus,
    },
    { 0x0, 0x0, 0x0, FLAG_COND_NONE, 0x0, NULL }
};

static const CmdParamsPuzzleFlag sMapEventCmdParamsGiratinaRoom_ShowPlatforms_2 = {
    .flagIndex = DIST_WORLD_PUZZLE_FLAG_GIRATINA_ROOM_PLATFORMS_VISIBLE
};

static const DistWorldEventCmd sMapEventGiratinaRoom_ShowPlatforms[] = {
    {
        .kind = EVENT_CMD_SHOW_GIRATINA_ROOM_PLATFORMS,
        .params = NULL,
    },
    {
        .kind = EVENT_CMD_SET_PUZZLE_FLAG,
        .params = &sMapEventCmdParamsGiratinaRoom_ShowPlatforms_2,
    },
    { EVENT_CMD_END, NULL }
};

static const CmdParamsPuzzleFlag sMapEventCmdParamsGiratinaRoom_HidePlatforms_2 = {
    .flagIndex = DIST_WORLD_PUZZLE_FLAG_GIRATINA_ROOM_PLATFORMS_VISIBLE
};

static const DistWorldEventCmd sMapEventGiratinaRoom_HidePlatforms[] = {
    {
        .kind = EVENT_CMD_HIDE_GIRATINA_ROOM_PLATFORMS,
        .params = NULL,
    },
    {
        .kind = EVENT_CMD_CLEAR_PUZZLE_FLAG,
        .params = &sMapEventCmdParamsGiratinaRoom_HidePlatforms_2,
    },
    { EVENT_CMD_END, NULL }
};

static const CmdParamsStartScript sMapEventCmdParamsGiratinaRoom_FirstShadow_1 = {
    .scriptID = 0x7
};

static const DistWorldGiratinaShadowTemplate sMapEventCmdParamsGiratinaRoom_FirstShadow_2 = {
    .initialTileX = -9,
    .initialTileY = -4,
    .initialTileZ = 22,
    .rotAnglesIndex = 3,
    .soundKind = GIRATINA_SHADOW_PROP_SFX_KIND_NONE,
    .scale = { FX32_ONE / 4, FX32_ONE / 4, FX32_ONE / 4 },
    .posDelta = { FX32_ONE * 16, 0, 0 },
    .movementAnimSteps = 48
};

static const CmdParamsSetDistortionWorldProgress sMapEventCmdParamsGiratinaRoom_FirstShadow_3 = {
    .progress = 0xB
};

static const DistWorldEventCmd sMapEventGiratinaRoom_FirstShadow[] = {
    {
        .kind = EVENT_CMD_START_SCRIPT,
        .params = &sMapEventCmdParamsGiratinaRoom_FirstShadow_1,
    },
    {
        .kind = EVENT_CMD_SHOW_GIRATINA_SHADOW,
        .params = &sMapEventCmdParamsGiratinaRoom_FirstShadow_2,
    },
    {
        .kind = EVENT_CMD_SET_DISTORTION_WORLD_PROGRESS,
        .params = &sMapEventCmdParamsGiratinaRoom_FirstShadow_3,
    },
    { EVENT_CMD_END, NULL }
};

static const DistWorldGiratinaShadowTemplate sMapEventCmdParamsGiratinaRoom_SecondShadow_1 = {
    .initialTileX = 15,
    .initialTileY = -34,
    .initialTileZ = 8,
    .rotAnglesIndex = 4,
    .soundKind = GIRATINA_SHADOW_PROP_SFX_KIND_FLEE,
    .scale = { FX32_ONE / 2, FX32_ONE / 2, FX32_ONE / 2 },
    .posDelta = { 0, FX32_ONE * 32, FX32_ONE * 2 },
    .movementAnimSteps = 32
};

static const CmdParamsSetDistortionWorldProgress sMapEventCmdParamsGiratinaRoom_SecondShadow_2 = {
    .progress = 0xC
};

static const DistWorldEventCmd sMapEventGiratinaRoom_SecondShadow[] = {
    {
        .kind = EVENT_CMD_SHOW_GIRATINA_SHADOW,
        .params = &sMapEventCmdParamsGiratinaRoom_SecondShadow_1,
    },
    {
        .kind = EVENT_CMD_SET_DISTORTION_WORLD_PROGRESS,
        .params = &sMapEventCmdParamsGiratinaRoom_SecondShadow_2,
    },
    { EVENT_CMD_END, NULL }
};

static const CmdParamsSetDistortionWorldProgress sMapEventCmdParamsGiratinaRoom_Arrival_1 = {
    .progress = 0xD
};

static const CmdParamsStartScript sMapEventCmdParamsGiratinaRoom_Arrival_3 = {
    .scriptID = 0x8
};

static const DistWorldEventCmd sMapEventGiratinaRoom_Arrival[] = {
    {
        .kind = EVENT_CMD_SET_DISTORTION_WORLD_PROGRESS,
        .params = &sMapEventCmdParamsGiratinaRoom_Arrival_1,
    },
    {
        .kind = EVENT_CMD_PLAY_GIRATINA_ARRIVAL,
        .params = NULL,
    },
    {
        .kind = EVENT_CMD_START_SCRIPT,
        .params = &sMapEventCmdParamsGiratinaRoom_Arrival_3,
    },
    { EVENT_CMD_END, NULL }
};

static const DistWorldEvent sMapEventsGiratinaRoom[] = {
    {
        .tileX = 0xF,
        .tileY = 0x1,
        .tileZ = 0x17,
        .flagCond = FLAG_COND_BOULDER_PUZZLE_FALSE,
        .flagCondVal = DIST_WORLD_PUZZLE_FLAG_GIRATINA_ROOM_PLATFORMS_VISIBLE,
        .cmds = sMapEventGiratinaRoom_ShowPlatforms,
    },
    {
        .tileX = 0xF,
        .tileY = 0x1,
        .tileZ = 0x18,
        .flagCond = FLAG_COND_BOULDER_PUZZLE_TRUE,
        .flagCondVal = DIST_WORLD_PUZZLE_FLAG_GIRATINA_ROOM_PLATFORMS_VISIBLE,
        .cmds = sMapEventGiratinaRoom_HidePlatforms,
    },
    {
        .tileX = 0xF,
        .tileY = 0x1,
        .tileZ = 0x18,
        .flagCond = FLAG_COND_WORLD_PROGRESS_EQ,
        .flagCondVal = 0xA,
        .cmds = sMapEventGiratinaRoom_FirstShadow,
    },
    {
        .tileX = 0xF,
        .tileY = 0x1,
        .tileZ = 0x11,
        .flagCond = FLAG_COND_WORLD_PROGRESS_EQ,
        .flagCondVal = 0xB,
        .cmds = sMapEventGiratinaRoom_SecondShadow,
    },
    {
        .tileX = 0xF,
        .tileY = 0x1,
        .tileZ = 0xE,
        .flagCond = FLAG_COND_WORLD_PROGRESS_EQ,
        .flagCondVal = 0xC,
        .cmds = sMapEventGiratinaRoom_Arrival,
    },
    { 0x0, 0x0, 0x0, FLAG_COND_NONE, 0x0, NULL }
};

static const DistWorldMapEvents sMapEvents[] = {
    { MAP_HEADER_DISTORTION_WORLD_1F, sMapEvents1F },
    { MAP_HEADER_DISTORTION_WORLD_B1F, sMapEventsB1F },
    { MAP_HEADER_DISTORTION_WORLD_B2F, sMapEventsB2F },
    { MAP_HEADER_DISTORTION_WORLD_B3F, sMapEventsB3F },
    { MAP_HEADER_DISTORTION_WORLD_B4F, sMapEventsB4F },
    { MAP_HEADER_DISTORTION_WORLD_B5F, sMapEventsB5F },
    { MAP_HEADER_DISTORTION_WORLD_B7F, sMapEventsB7F },
    { MAP_HEADER_DISTORTION_WORLD_GIRATINA_ROOM, sMapEventsGiratinaRoom },
    { MAP_HEADER_INVALID, NULL }
};

static const DistWorldSimplePropTemplate sSimpleProps1F[] = {
    {
        .propKind = PROP_KIND_PORTAL,
        .tileX = 55,
        .tileY = 289,
        .tileZ = 39,
        .flagCond = FLAG_COND_NONE,
        .flagCondVal = 0,
    },
    { 0, PROP_KIND_INVALID, 0, 0, 0, FLAG_COND_NONE, 0 }
};

static const DistWorldSimplePropTemplate sSimplePropsB5F[] = {
    {
        .propKind = PROP_KIND_WATERFALL,
        .tileX = 106,
        .tileY = 153,
        .tileZ = 78,
        .flagCond = FLAG_COND_NONE,
        .flagCondVal = 0,
    },
    { 0, PROP_KIND_INVALID, 0, 0, 0, FLAG_COND_NONE, 0 }
};

static const DistWorldSimplePropTemplate sSimplePropsGiratinaRoom[] = {
    {
        .propKind = PROP_KIND_PORTAL,
        .tileX = 15,
        .tileY = 1,
        .tileZ = 12,
        .flagCond = FLAG_COND_WORLD_PROGRESS_GEQ,
        .flagCondVal = 14,
    },
    { 0, PROP_KIND_INVALID, 0, 0, 0, FLAG_COND_NONE, 0 }
};

static const DistWorldSimplePropTemplate sSimplePropsTurnbackCaveRoom[] = {
    {
        .propKind = PROP_KIND_PORTAL,
        .tileX = 116,
        .tileY = 65,
        .tileZ = 74,
        .flagCond = FLAG_COND_NONE,
        .flagCondVal = 0,
    },
    { 0, PROP_KIND_INVALID, 0, 0, 0, FLAG_COND_NONE, 0 }
};

static const DistWorldSimplePropMapTemplates sSimplePropsMapTemplates[] = {
    { MAP_HEADER_DISTORTION_WORLD_1F, sSimpleProps1F },
    { MAP_HEADER_DISTORTION_WORLD_B5F, sSimplePropsB5F },
    { MAP_HEADER_DISTORTION_WORLD_GIRATINA_ROOM, sSimplePropsGiratinaRoom },
    { MAP_HEADER_DISTORTION_WORLD_TURNBACK_CAVE_ROOM, sSimplePropsTurnbackCaveRoom },
    { MAP_HEADER_INVALID, NULL }
};

static const DistWorldObjectEvent sMapObjectEvent1F_CynthiaPortal = {
    .flagCond = FLAG_COND_MANUAL_ADD_ONLY,
    .flagCondVal = 0x0,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_1F_CYNTHIA_PORTAL,
        .graphicsID = 0x8A,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x0,
        .dir = FACE_DOWN,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x37,
        .z = 0x28,
        .y = (289 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEvent1F_CynthiaElevator = {
    .flagCond = FLAG_COND_WORLD_PROGRESS_LEQ,
    .flagCondVal = 0x2,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_1F_CYNTHIA_ELEVATOR,
        .graphicsID = 0x8A,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x5,
        .dir = FACE_RIGHT,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x27,
        .z = 0x34,
        .y = (289 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent *sMapObjectEvents1F[] = {
    &sMapObjectEvent1F_CynthiaPortal,
    &sMapObjectEvent1F_CynthiaElevator,
    NULL
};

static const DistWorldObjectEvent sMapObjectEventB1F_Mesprit = {
    .flagCond = FLAG_COND_MANUAL_ADD_ONLY,
    .flagCondVal = 0x0,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B1F_MESPRIT,
        .graphicsID = 0x108,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x0,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0xC,
        .z = 0x39,
        .y = (257 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent *sMapObjectEventsB1F[] = {
    &sMapObjectEventB1F_Mesprit,
    NULL
};

static const DistWorldObjectEvent sMapObjectEventB2F_Cynthia1 = {
    .flagCond = FLAG_COND_WORLD_PROGRESS_EQ,
    .flagCondVal = 0x4,
    .rotated = TRUE,
    .rotationAngle = 0x5A,
    .objEvent = {
        .localID = MAP_OBJECT_B2F_CYNTHIA_1,
        .graphicsID = 0x8A,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x2,
        .dir = FACE_DOWN,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x1E,
        .z = 0x14,
        .y = (233 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventB2F_Cynthia2 = {
    .flagCond = FLAG_COND_WORLD_PROGRESS_EQ,
    .flagCondVal = 0x5,
    .rotated = TRUE,
    .rotationAngle = 0x5A,
    .objEvent = {
        .localID = MAP_OBJECT_B2F_CYNTHIA_2,
        .graphicsID = 0x8A,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x2,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x1E,
        .z = 0x14,
        .y = (232 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent *sMapObjectEventsB2F[] = {
    &sMapObjectEventB2F_Cynthia1,
    &sMapObjectEventB2F_Cynthia2,
    NULL
};

static const DistWorldObjectEvent sMapObjectEventB3F_Cyrus = {
    .flagCond = FLAG_COND_MANUAL_ADD_ONLY,
    .flagCondVal = 0x0,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B3F_CYRUS,
        .graphicsID = 0x78,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x0,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x41,
        .z = 0x31,
        .y = (193 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent *sMapObjectEventsB3F[] = {
    &sMapObjectEventB3F_Cyrus,
    NULL
};

static const DistWorldObjectEvent sMapObjectEventB4F_Cyrus = {
    .flagCond = FLAG_COND_CYRUS_APPEARANCE,
    .flagCondVal = 0x0,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B4F_CYRUS,
        .graphicsID = 0x78,
        .movementType = MOVEMENT_TYPE_067,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x0,
        .dir = FACE_LEFT,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x1,
        .movementRangeZ = 0x0,
        .x = 0x59,
        .z = 0x40,
        .y = (161 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent *sMapObjectEventsB4F[] = {
    &sMapObjectEventB4F_Cyrus,
    NULL
};

static const DistWorldObjectEvent sMapObjectEventB5F_MespritBoulder = {
    .flagCond = FLAG_COND_BOULDER_PUZZLE_TRUE,
    .flagCondVal = DIST_WORLD_PUZZLE_FLAG_MESPRIT_BOULDER_IN_B5F,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B5F_MESPRIT_BOULDER,
        .graphicsID = 0x54,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x2712,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x4B,
        .z = 0x44,
        .y = (129 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventB5F_AzelfBoulder = {
    .flagCond = FLAG_COND_BOULDER_PUZZLE_TRUE,
    .flagCondVal = DIST_WORLD_PUZZLE_FLAG_AZELF_BOULDER_IN_B5F,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B5F_AZELF_BOULDER,
        .graphicsID = 0x54,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x2712,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x62,
        .z = 0x43,
        .y = (129 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventB5F_UxieBoulder = {
    .flagCond = FLAG_COND_BOULDER_PUZZLE_TRUE,
    .flagCondVal = DIST_WORLD_PUZZLE_FLAG_UXIE_BOULDER_IN_B5F,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B5F_UXIE_BOULDER,
        .graphicsID = 0x54,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x2712,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x56,
        .z = 0x38,
        .y = (129 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventB5F_Uxie = {
    .flagCond = FLAG_COND_MANUAL_ADD_ONLY,
    .flagCondVal = 0x0,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B5F_UXIE,
        .graphicsID = 0x97,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x0,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x56,
        .z = 0x3A,
        .y = (113 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventB5F_Azelf = {
    .flagCond = FLAG_COND_MANUAL_ADD_ONLY,
    .flagCondVal = 0x0,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B5F_AZELF,
        .graphicsID = 0x99,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x0,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x60,
        .z = 0x43,
        .y = (117 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventB5F_Mesprit = {
    .flagCond = FLAG_COND_MANUAL_ADD_ONLY,
    .flagCondVal = 0x0,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B5F_MESPRIT,
        .graphicsID = 0x98,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x0,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x4D,
        .z = 0x44,
        .y = (121 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent *sMapObjectEventsB5F[] = {
    &sMapObjectEventB5F_MespritBoulder,
    &sMapObjectEventB5F_AzelfBoulder,
    &sMapObjectEventB5F_UxieBoulder,
    &sMapObjectEventB5F_Uxie,
    &sMapObjectEventB5F_Azelf,
    &sMapObjectEventB5F_Mesprit,
    NULL
};

static const DistWorldObjectEvent sMapObjectEventB6F_MespritBoulderOutside = {
    .flagCond = FLAG_COND_BOULDER_PUZZLE_TRUE,
    .flagCondVal = DIST_WORLD_PUZZLE_FLAG_MESPRIT_BOULDER_IN_B6F_OUTSIDE,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B6F_MESPRIT_BOULDER_OUTSIDE,
        .graphicsID = 0x54,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x2712,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x4B,
        .z = 0x44,
        .y = (115 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventB6F_AzelfBoulderOutside = {
    .flagCond = FLAG_COND_BOULDER_PUZZLE_TRUE,
    .flagCondVal = DIST_WORLD_PUZZLE_FLAG_AZELF_BOULDER_IN_B6F_OUTSIDE,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B6F_AZELF_BOULDER_OUTSIDE,
        .graphicsID = 0x54,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x2712,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x62,
        .z = 0x43,
        .y = (115 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventB6F_UxieBoulderOutside = {
    .flagCond = FLAG_COND_BOULDER_PUZZLE_TRUE,
    .flagCondVal = DIST_WORLD_PUZZLE_FLAG_UXIE_BOULDER_IN_B6F_OUTSIDE,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B6F_UXIE_BOULDER_OUTSIDE,
        .graphicsID = 0x54,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x2712,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x56,
        .z = 0x38,
        .y = (115 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventB6F_Mesprit = {
    .flagCond = FLAG_COND_BOULDER_PUZZLE_TRUE,
    .flagCondVal = DIST_WORLD_PUZZLE_FLAG_MESPRIT_IN_B6F,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B6F_MESPRIT,
        .graphicsID = 0x10A,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x0,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x44,
        .z = 0x40,
        .y = (115 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventB6F_Uxie = {
    .flagCond = FLAG_COND_BOULDER_PUZZLE_TRUE,
    .flagCondVal = DIST_WORLD_PUZZLE_FLAG_UXIE_IN_B6F,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B6F_UXIE,
        .graphicsID = 0x109,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x0,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x52,
        .z = 0x3C,
        .y = (115 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventB6F_Azelf = {
    .flagCond = FLAG_COND_BOULDER_PUZZLE_TRUE,
    .flagCondVal = DIST_WORLD_PUZZLE_FLAG_AZELF_IN_B6F,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B6F_AZELF,
        .graphicsID = 0x10B,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x0,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x60,
        .z = 0x47,
        .y = (115 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventB6F_Cynthia = {
    .flagCond = FLAG_COND_WORLD_PROGRESS_EQ,
    .flagCondVal = 0x6,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B6F_CYNTHIA,
        .graphicsID = 0x8A,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x2,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x55,
        .z = 0x50,
        .y = (115 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventB6F_CynthiaElevator = {
    .flagCond = FLAG_COND_WORLD_PROGRESS_EQ,
    .flagCondVal = 0x7,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B6F_CYNTHIA_ELEVATOR,
        .graphicsID = 0x8A,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x2,
        .dir = FACE_RIGHT,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x54,
        .z = 0x54,
        .y = (115 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventB6F_MespritBoulderPitText1 = {
    .flagCond = FLAG_COND_NONE,
    .flagCondVal = 0x0,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B6F_MESPRIT_BOULDER_PIT_TEXT_1,
        .graphicsID = 0x2000,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x8,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x44,
        .z = 0x43,
        .y = (115 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventB6F_MespritBoulderPitText2 = {
    .flagCond = FLAG_COND_NONE,
    .flagCondVal = 0x0,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B6F_MESPRIT_BOULDER_PIT_TEXT_2,
        .graphicsID = 0x2000,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x8,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x4B,
        .z = 0x43,
        .y = (115 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventB6F_MespritBoulderPitText3 = {
    .flagCond = FLAG_COND_NONE,
    .flagCondVal = 0x0,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B6F_MESPRIT_BOULDER_PIT_TEXT_3,
        .graphicsID = 0x2000,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x8,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x4F,
        .z = 0x43,
        .y = (115 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventB6F_UxieBoulderPitText1 = {
    .flagCond = FLAG_COND_NONE,
    .flagCondVal = 0x0,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B6F_UXIE_BOULDER_PIT_TEXT_1,
        .graphicsID = 0x2000,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x8,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x55,
        .z = 0x34,
        .y = (115 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventB6F_UxieBoulderPitText2 = {
    .flagCond = FLAG_COND_NONE,
    .flagCondVal = 0x0,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B6F_UXIE_BOULDER_PIT_TEXT_2,
        .graphicsID = 0x2000,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x8,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x55,
        .z = 0x38,
        .y = (115 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventB6F_UxieBoulderPitText3 = {
    .flagCond = FLAG_COND_NONE,
    .flagCondVal = 0x0,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B6F_UXIE_BOULDER_PIT_TEXT_3,
        .graphicsID = 0x2000,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x8,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x55,
        .z = 0x3C,
        .y = (115 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventB6F_AzelfBoulderPitText1 = {
    .flagCond = FLAG_COND_NONE,
    .flagCondVal = 0x0,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B6F_AZELF_BOULDER_PIT_TEXT_1,
        .graphicsID = 0x2000,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x8,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x60,
        .z = 0x44,
        .y = (115 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventB6F_AzelfBoulderPitText2 = {
    .flagCond = FLAG_COND_NONE,
    .flagCondVal = 0x0,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B6F_AZELF_BOULDER_PIT_TEXT_2,
        .graphicsID = 0x2000,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x8,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x64,
        .z = 0x44,
        .y = (115 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventB6F_AzelfBoulderPitText3 = {
    .flagCond = FLAG_COND_NONE,
    .flagCondVal = 0x0,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B6F_AZELF_BOULDER_PIT_TEXT_3,
        .graphicsID = 0x2000,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x8,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x69,
        .z = 0x44,
        .y = (115 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventB6F_MespritBoulderInPit = {
    .flagCond = FLAG_COND_BOULDER_PUZZLE_TRUE,
    .flagCondVal = DIST_WORLD_PUZZLE_FLAG_MESPRIT_BOULDER_IN_B6F_PIT,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B6F_MESPRIT_BOULDER_IN_PIT,
        .graphicsID = 0x54,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x0,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x44,
        .z = 0x42,
        .y = (113 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventB6F_AzelfBoulderInPit = {
    .flagCond = FLAG_COND_BOULDER_PUZZLE_TRUE,
    .flagCondVal = DIST_WORLD_PUZZLE_FLAG_AZELF_BOULDER_IN_B6F_PIT,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B6F_AZELF_BOULDER_IN_PIT,
        .graphicsID = 0x54,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x0,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x60,
        .z = 0x45,
        .y = (113 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventB6F_UxieBoulderInPit = {
    .flagCond = FLAG_COND_BOULDER_PUZZLE_TRUE,
    .flagCondVal = DIST_WORLD_PUZZLE_FLAG_UXIE_BOULDER_IN_B6F_PIT,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B6F_UXIE_BOULDER_IN_PIT,
        .graphicsID = 0x54,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x0,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x54,
        .z = 0x3C,
        .y = (113 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent *sMapObjectEventsB6F[] = {
    &sMapObjectEventB6F_MespritBoulderOutside,
    &sMapObjectEventB6F_AzelfBoulderOutside,
    &sMapObjectEventB6F_UxieBoulderOutside,
    &sMapObjectEventB6F_Mesprit,
    &sMapObjectEventB6F_Uxie,
    &sMapObjectEventB6F_Azelf,
    &sMapObjectEventB6F_Cynthia,
    &sMapObjectEventB6F_CynthiaElevator,
    &sMapObjectEventB6F_MespritBoulderPitText1,
    &sMapObjectEventB6F_MespritBoulderPitText2,
    &sMapObjectEventB6F_MespritBoulderPitText3,
    &sMapObjectEventB6F_UxieBoulderPitText1,
    &sMapObjectEventB6F_UxieBoulderPitText2,
    &sMapObjectEventB6F_UxieBoulderPitText3,
    &sMapObjectEventB6F_AzelfBoulderPitText1,
    &sMapObjectEventB6F_AzelfBoulderPitText2,
    &sMapObjectEventB6F_AzelfBoulderPitText3,
    &sMapObjectEventB6F_MespritBoulderInPit,
    &sMapObjectEventB6F_AzelfBoulderInPit,
    &sMapObjectEventB6F_UxieBoulderInPit,
    NULL
};

static const DistWorldObjectEvent sMapObjectEventB7F_CynthiaInitial = {
    .flagCond = FLAG_COND_WORLD_PROGRESS_EQ,
    .flagCondVal = 0x8,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B7F_CYNTHIA_INITIAL,
        .graphicsID = 0x8A,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x6,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x55,
        .z = 0x4A,
        .y = (65 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventB7F_CynthiaTalking = {
    .flagCond = FLAG_COND_WORLD_PROGRESS_EQ,
    .flagCondVal = 0x9,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B7F_CYNTHIA_TALKING,
        .graphicsID = 0x8A,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x6,
        .dir = FACE_RIGHT,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x54,
        .z = 0x4A,
        .y = (65 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventB7F_CynthiaPostBattle = {
    .flagCond = FLAG_COND_WORLD_PROGRESS_GEQ,
    .flagCondVal = 0xA,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B7F_CYNTHIA_POST_BATTLE,
        .graphicsID = 0x8A,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x6,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x59,
        .z = 0x45,
        .y = (65 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventB7F_CyrusInitial = {
    .flagCond = FLAG_COND_WORLD_PROGRESS_LEQ,
    .flagCondVal = 0x8,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B7F_CYRUS_INITIAL,
        .graphicsID = 0x78,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x5,
        .dir = FACE_DOWN,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x55,
        .z = 0x46,
        .y = (65 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventB7F_CyrusTalking = {
    .flagCond = FLAG_COND_WORLD_PROGRESS_EQ,
    .flagCondVal = 0x9,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_B7F_CYRUS_TALKING,
        .graphicsID = 0x78,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x5,
        .dir = FACE_LEFT,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x55,
        .z = 0x4A,
        .y = (65 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent *sMapObjectEventsB7F[] = {
    &sMapObjectEventB7F_CynthiaInitial,
    &sMapObjectEventB7F_CynthiaTalking,
    &sMapObjectEventB7F_CynthiaPostBattle,
    &sMapObjectEventB7F_CyrusInitial,
    &sMapObjectEventB7F_CyrusTalking,
    NULL
};

static const DistWorldObjectEvent sMapObjectEventGiratinaRoom_Giratina = {
    .flagCond = FLAG_COND_WORLD_PROGRESS_EQ,
    .flagCondVal = 0xD,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_GIRATINA_ROOM_GIRATINA,
        .graphicsID = 0xE6,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x5,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0xF,
        .z = 0xD,
        .y = (1 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventGiratinaRoom_Cynthia = {
    .flagCond = FLAG_COND_MANUAL_ADD_ONLY,
    .flagCondVal = 0x0,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_GIRATINA_ROOM_CYNTHIA,
        .graphicsID = 0x8A,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x0,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0xF,
        .z = 0x17,
        .y = (1 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventGiratinaRoom_Cyrus = {
    .flagCond = FLAG_COND_MANUAL_ADD_ONLY,
    .flagCondVal = 0x0,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_GIRATINA_ROOM_CYRUS,
        .graphicsID = 0x78,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x0,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0xF,
        .z = 0x17,
        .y = (1 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventGiratinaRoom_Portal = {
    .flagCond = FLAG_COND_WORLD_PROGRESS_EQ,
    .flagCondVal = 0xE,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_GIRATINA_ROOM_PORTAL,
        .graphicsID = 0x2000,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x3,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0xF,
        .z = 0xD,
        .y = (1 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventGiratinaRoom_CynthiaText = {
    .flagCond = FLAG_COND_WORLD_PROGRESS_EQ,
    .flagCondVal = 0xE,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_GIRATINA_ROOM_CYNTHIA_TEXT,
        .graphicsID = 0x2000,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x6,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0xF,
        .z = 0xF,
        .y = (1 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent *sMapObjectEventsGiratinaRoom[] = {
    &sMapObjectEventGiratinaRoom_Giratina,
    &sMapObjectEventGiratinaRoom_Cynthia,
    &sMapObjectEventGiratinaRoom_Cyrus,
    &sMapObjectEventGiratinaRoom_Portal,
    &sMapObjectEventGiratinaRoom_CynthiaText,
    NULL
};

static const DistWorldObjectEvent sMapObjectEventTurnbackCaveRoom_Portal = {
    .flagCond = FLAG_COND_NONE,
    .flagCondVal = 0x0,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_TURNBACK_CAVE_PORTAL,
        .graphicsID = 0x2000,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x0,
        .script = 0x2,
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x74,
        .z = 0x4A,
        .y = (65 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent sMapObjectEventTurnbackCaveRoom_GriseousOrbItem = {
    .flagCond = FLAG_COND_NONE,
    .flagCondVal = 0x0,
    .rotated = FALSE,
    .rotationAngle = 0x0,
    .objEvent = {
        .localID = MAP_OBJECT_TURNBACK_CAVE_GRISEOUS_ORB_ITEM,
        .graphicsID = 0x57,
        .movementType = MOVEMENT_TYPE_NONE,
        .trainerType = 0x0,
        .hiddenFlag = 0x538,
        .script = SCRIPT_ID(VISIBLE_ITEMS, 321),
        .dir = FACE_UP,
        .data = { 0x0, 0x0, 0x0 },
        .movementRangeX = 0x0,
        .movementRangeZ = 0x0,
        .x = 0x59,
        .z = 0x37,
        .y = (65 << 4) * FX32_ONE,
    },
};

static const DistWorldObjectEvent *sMapObjectEventsTurnbackCaveRoom[] = {
    &sMapObjectEventTurnbackCaveRoom_Portal,
    &sMapObjectEventTurnbackCaveRoom_GriseousOrbItem,
    NULL
};

static const DistWorldMapObjectEvents sMapObjectEvents[] = {
    { MAP_HEADER_DISTORTION_WORLD_1F, sMapObjectEvents1F },
    { MAP_HEADER_DISTORTION_WORLD_B1F, sMapObjectEventsB1F },
    { MAP_HEADER_DISTORTION_WORLD_B2F, sMapObjectEventsB2F },
    { MAP_HEADER_DISTORTION_WORLD_B3F, sMapObjectEventsB3F },
    { MAP_HEADER_DISTORTION_WORLD_B4F, sMapObjectEventsB4F },
    { MAP_HEADER_DISTORTION_WORLD_B5F, sMapObjectEventsB5F },
    { MAP_HEADER_DISTORTION_WORLD_B6F, sMapObjectEventsB6F },
    { MAP_HEADER_DISTORTION_WORLD_B7F, sMapObjectEventsB7F },
    { MAP_HEADER_DISTORTION_WORLD_GIRATINA_ROOM, sMapObjectEventsGiratinaRoom },
    { MAP_HEADER_DISTORTION_WORLD_TURNBACK_CAVE_ROOM, sMapObjectEventsTurnbackCaveRoom },
    { MAP_HEADER_INVALID, NULL }
};
