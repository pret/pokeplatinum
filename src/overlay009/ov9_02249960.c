#include "overlay009/ov9_02249960.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/dynamic_map_features.h"
#include "constants/field/map.h"
#include "constants/graphics.h"
#include "constants/map_object.h"
#include "constants/species.h"
#include "constants/types.h"
#include "generated/map_headers.h"
#include "generated/movement_actions.h"
#include "generated/sdat.h"

#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/area_data.h"
#include "overlay005/field_effect_manager.h"
#include "overlay005/fieldmap.h"
#include "overlay005/land_data.h"
#include "overlay005/land_data_manager_decl.h"
#include "overlay005/map_object_anim_cmd.h"
#include "overlay005/ov5_021D57BC.h"
#include "overlay005/ov5_021EB1A0.h"
#include "overlay005/ov5_021ECE40.h"
#include "overlay005/ov5_021F348C.h"
#include "overlay005/ov5_021F8560.h"
#include "overlay005/struct_ov5_021D57D8_decl.h"
#include "overlay005/struct_ov5_021ED0A4.h"
#include "overlay009/camera_configuration.h"
#include "overlay009/struct_ov9_0224F6EC_decl.h"

#include "bg_window.h"
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
#include "unk_02020AEC.h"
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

#define ELEVATOR_PLATFORM_PATH_COUNT        22
#define ELEVATOR_PLATFORM_PATH_INVALID      ELEVATOR_PLATFORM_PATH_COUNT
#define ELEVATOR_PLATFORM_VIBRATION_Y_DELTA (FX32_ONE * 6)

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
    FLAG_COND_1,
    FLAG_COND_2,
    FLAG_COND_WORLD_PROGRESS_EQ,
    FLAG_COND_WORLD_PROGRESS_LEQ,
    FLAG_COND_WORLD_PROGRESS_GEQ,
    FLAG_COND_GIRATINA_SHADOW = 7,
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
    u16 unk_00_0 : 5;
    u16 unk_00_5 : 5;
    u16 unk_00_10 : 5;
    u16 unk_00_15 : 1;
} UnkStruct_ov9_0224F86C;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    u16 unk_04;
    u16 unk_06;
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
    UnkStruct_020216E0 *unk_1C;
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

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
    ObjectEvent unk_08;
} UnkStruct_ov9_0224EF30;

typedef struct {
    u32 unk_00;
    const UnkStruct_ov9_0224EF30 **unk_04;
} UnkStruct_ov9_02252EB4;

typedef struct {
    MapObject *unk_00[19];
} UnkStruct_ov9_0224EE40;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    s16 unk_06;
    s16 unk_08;
    s16 unk_0A;
    VecFx32 unk_0C;
} UnkStruct_ov9_0224E550;

typedef struct {
    u32 unk_00;
    u32 unk_04;
} UnkStruct_ov9_0224E4E8;

typedef struct {
    int unk_00;
    const void *unk_04;
} UnkStruct_ov9_02251438;

typedef struct {
    u32 unk_00;
    u16 unk_04;
    u16 unk_06;
    const UnkStruct_ov9_02251438 *unk_08;
    u8 unk_0C[160];
} UnkFuncPtr_ov9_0224E33C;

typedef int (*UnkFuncPtr_ov9_02253BE4)(DistWorldSystem *, FieldTask *, u16 *, const void *);

typedef struct {
    s16 unk_00;
    s16 unk_02;
    s32 unk_04;
    u16 unk_08;
    u16 unk_0A;
    const UnkStruct_ov9_02251438 *unk_0C;
} UnkStruct_ov9_02252044;

typedef struct {
    u32 unk_00;
    const UnkStruct_ov9_02252044 *unk_04;
} UnkStruct_ov9_02252D38;

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
    UnkFuncPtr_ov9_0224E33C unk_D8;
    UnkStruct_ov9_02249E94 unk_184;
    UnkStruct_ov9_0224A228 unk_188;
    UnkStruct_ov9_0224B064 unk_1A8;
    DistWorldPropRenderBuffers propRenderBuffs;
    UnkStruct_ov9_02249B04_sub1 unk_169C;
    DistWorldGhostPropManager ghostPropMan;
    DistWorldGhostPropManager inactiveGhostPropMan;
    DistWorldMovingPlatformPropManager movingPlatformPropMan;
    DistWorldSimplePropManager simplePropMan;
    UnkStruct_ov9_0224EE40 unk_1C64;
    UnkStruct_ov9_0224CA5C unk_1CB0;
    UnkStruct_ov9_0224CBD8 unk_1CD0;
    UnkStruct_ov9_0224ADC0 unk_1D00;
    UnkStruct_ov9_0224C8E8 unk_1E88;
    DistWorldGiratinaShadowPropRenderer giratinaShadowPropRenderer;
    GXRgb unk_1EB0[8];
    u16 unk_1EC0;
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

typedef struct {
    int unk_00;
} UnkStruct_ov9_0224E4D8;

typedef struct {
    VecFx32 unk_00;
    VecFx32 unk_0C;
    VecFx32 unk_18;
    DistWorldMovingPlatformPropAnimator *unk_24;
    fx32 unk_28;
    fx32 unk_2C;
    fx32 unk_30;
    u32 unk_34;
} UnkStruct_ov9_0224E5EC;

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_ov9_0224E860;

typedef struct {
    u32 unk_00;
} UnkStruct_ov9_0224E870;

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

typedef struct {
    u32 unk_00;
    u16 unk_04;
    s16 unk_06;
    s16 unk_08;
    s16 unk_0A;
    s16 unk_0C;
    s16 unk_0E;
    s16 unk_10;
    s16 unk_12;
    s16 unk_14;
    s16 unk_16;
    VecFx32 unk_18;
} UnkStruct_ov9_0224F8C4;

typedef struct {
    u32 unk_00_0 : 1;
    u32 unk_00_1 : 1;
    u32 unk_00_2 : 1;
    u32 unk_00_3 : 2;
    u32 unk_00_5 : 27;
    VecFx32 unk_04;
    VecFx32 unk_10;
    VecFx32 unk_1C;
    VecFx32 unk_28;
    VecFx32 unk_34;
    VecFx32 unk_40;
    fx32 *unk_4C;
    fx32 unk_50;
    fx32 unk_54;
} UnkStruct_ov9_0224F930;

typedef struct {
    UnkStruct_ov9_0224F8C4 unk_00;
} UnkStruct_ov9_02252384;

typedef struct {
    s16 unk_00;
    u16 unk_02;
    u16 unk_04;
    s16 unk_06;
    s16 unk_08;
    s16 unk_0A;
    VecFx32 unk_0C;
    VecFx32 unk_18;
    VecFx32 unk_24;
    fx32 unk_30;
    fx32 unk_34;
    fx32 unk_38;
    fx32 unk_3C;
    UnkStruct_ov9_0224F930 unk_40;
} UnkStruct_ov9_0224FA94;

typedef struct {
    UnkStruct_ov9_0224F8C4 unk_00;
} UnkStruct_ov9_022523F0;

typedef struct {
    s16 unk_00;
    u16 unk_02;
    u16 unk_04;
    s16 unk_06;
    VecFx32 unk_08;
    VecFx32 unk_14;
    VecFx32 unk_20;
    fx32 unk_2C;
    fx32 unk_30;
    UnkStruct_ov9_0224F930 unk_34;
} UnkStruct_ov9_02250138;

typedef struct {
    u32 unk_00;
} UnkStruct_ov9_022506AC;

typedef struct {
    u32 unk_00;
} UnkStruct_ov9_022506D0;

typedef struct {
    u32 unk_00;
} UnkStruct_ov9_022506EC;

typedef struct {
    u32 unk_00;
} UnkStruct_ov9_02250704;

typedef struct {
    fx32 unk_00;
    fx32 unk_04;
    VecFx32 unk_08;
    int unk_14;
    MapObject *unk_18;
    u16 unk_1C[16];
} UnkStruct_ov9_0225074C;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    fx32 unk_0C;
    fx32 unk_10;
    VecFx32 unk_14;
    MapObject *unk_20;
} UnkStruct_ov9_02250918;

typedef struct {
    fx32 unk_00;
    VecFx32 unk_04;
    SysTask *unk_10;
    MapObject *unk_14;
} UnkStruct_ov9_02250AFC;

typedef struct {
    fx32 unk_00;
    VecFx32 unk_04;
    SysTask *unk_10;
    SysTask *unk_14;
    MapObject *unk_18;
} UnkStruct_ov9_02250C14;

typedef struct {
    s16 unk_00;
    s16 unk_02;
} UnkStruct_ov9_02250D78;

typedef struct {
    s16 unk_00;
    s16 unk_02;
} UnkStruct_ov9_02250DE8;

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
static void ov9_02249DC8(DistWorldSystem *param0, u32 param1);
static void ov9_02249DE4(DistWorldSystem *param0, u32 param1);
static BOOL ov9_02249E00(DistWorldSystem *param0, u32 param1);
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
static void ov9_0224A228(UnkStruct_ov9_0224A228 *param0, UnkStruct_ov9_0224A294 *param1, UnkStruct_020216E0 *param2);
static void ov9_0224A294(UnkStruct_ov9_0224A228 *param0, UnkStruct_ov9_0224A294 *param1);
static void ov9_0224A2AC(UnkStruct_ov9_0224A228 *param0, UnkStruct_ov9_0224A294 *param1);
static void ov9_0224A334(DistWorldSystem *param0);
static void ov9_0224A390(DistWorldSystem *param0, MapObject *param1, int param2);
static void ov9_0224A3C4(DistWorldSystem *param0, UnkStruct_020216E0 *param1, int param2);
static void ov9_0224A408(DistWorldSystem *param0, const UnkStruct_020216E0 *param1);
static void ov9_0224A49C(DistWorldSystem *param0);
static void ov9_0224A4C8(UnkStruct_020216E0 *param0, void *param1);
static void ov9_0224A4D0(DistWorldSystem *param0, MapObject *param1, int param2, int param3);
static void FieldTaskContextNoOp1(DistWorldSystem *system);
static void FieldTaskContextNoOp2(DistWorldSystem *system);
static void *InitFieldTaskContext(DistWorldSystem *system, int ctxSize);
static void *GetFieldTaskContext(DistWorldSystem *system);
static BOOL ApplyCameraAngleForPlayerPosition(DistWorldSystem *system, int playerX, int playerY, int playerZ, int playerDir);
static void ov9_0224A8C0(DistWorldSystem *param0);
static void ov9_0224A9E8(DistWorldSystem *param0);
static BOOL HandleFloatingPlatformJumpPointAt(DistWorldSystem *system, int playerX, int playerY, int playerZ, int playerDir);
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
static void HandleGhostPropTriggerAt(DistWorldSystem *system, int tileX, int tileY, int tileZ, int direction);
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
static const DistWorldFloatingPlatformJumpPointTemplate *FindFloatingPlatformJumpPointAt(DistWorldSystem *system, int playerX, int playerY, int playerZ, int playerDir);
static void InitCameraAngleTemplates(DistWorldSystem *system);
static void ResetCameraAngleTemplates(DistWorldSystem *system);
static const DistWorldCameraAngleTemplate *FindCameraAngleForPlayerPosition(DistWorldSystem *system, int playerX, int playerY, int playerZ, int playerDir);
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
static void ov9_0224E33C(DistWorldSystem *param0);
static void ov9_0224E34C(DistWorldSystem *param0);
static void ov9_0224E350(DistWorldSystem *param0, const UnkStruct_ov9_02251438 *param1);
static void *ov9_0224E37C(DistWorldSystem *param0, u32 param1);
static void *ov9_0224E39C(DistWorldSystem *param0);
static BOOL ov9_0224E3A0(DistWorldSystem *param0, FieldTask *param1);
static BOOL ov9_0224E434(DistWorldSystem *param0, int param1, int param2, int param3);
static void ov9_0224E498(DistWorldSystem *param0, const UnkStruct_ov9_02251438 *param1);
static void ov9_0224E4B0(DistWorldSystem *param0, const UnkStruct_ov9_02252044 *param1);
static BOOL ov9_0224E4BC(FieldTask *param0);
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
static void ov9_0224EE40(DistWorldSystem *param0);
static void ov9_0224EE6C(DistWorldSystem *param0);
static void ov9_0224EE70(DistWorldSystem *param0, MapObject *param1);
static MapObject **ov9_0224EEA0(DistWorldSystem *param0);
static BOOL ov9_0224EF30(DistWorldSystem *param0, const UnkStruct_ov9_0224EF30 *param1, u16 param2);
static BOOL ov9_0224EF64(DistWorldSystem *param0, MapObject **param1, const UnkStruct_ov9_0224EF30 *param2, u32 param3, u16 param4);
static BOOL ov9_0224F048(DistWorldSystem *param0, const UnkStruct_ov9_0224EF30 **param1, u32 param2);
static void ov9_0224F078(DistWorldSystem *param0, u32 param1);
static void ov9_0224F0A4(DistWorldSystem *param0, u32 param1);
static MapObject *ov9_0224F0D4(DistWorldSystem *param0, u32 param1, u16 param2);
static BOOL ov9_0224F1CC(DistWorldSystem *param0, MapObject *param1);
static void ov9_0224F724(DistWorldSystem *param0);
static void ov9_0224F760(DistWorldSystem *param0);
static void ov9_0224F764(DistWorldSystem *param0);
static void ov9_0224F804(DistWorldSystem *param0);
static void ov9_0224F854(DistWorldSystem *param0, u32 param1);
static void ov9_0224F860(DistWorldSystem *param0, s16 param1);
static void ov9_0224F86C(u16 param0, u16 param1, u16 param2, u16 *param3);
static BOOL DistWorldBounds_AreCoordinatesInBounds(int tileX, int tileY, int tileZ, const DistWorldBounds *bounds);
static int CalculateCameraAngleDelta(u16 currentAngleComponent, u16 targetAngleComponent);
static void ov9_02250EE8(s16 *param0, s16 param1);
static void ov9_02250F1C(fx32 *param0, fx32 param1);
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
static const UnkFuncPtr_ov9_02253BE4 *Unk_ov9_02253BE4[18];
const UnkStruct_ov9_02252D38 Unk_ov9_02252D38[];
const UnkStruct_ov9_02251438 Unk_ov9_02251438[];
const UnkStruct_ov9_02251438 Unk_ov9_022513D8[];
const DistWorldSimplePropMapTemplates sSimplePropsMapTemplates[];
const UnkStruct_ov9_02252EB4 Unk_ov9_02252EB4[];

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
    ov9_0224EE40(dwSystem);
    InitSimplePropsForCurrentAndNextMaps(dwSystem);
    InitAllGhostPropManagers(dwSystem);
    ResetMovingPlatformManager(dwSystem);
    ov9_0224E33C(dwSystem);
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
    ov9_0224E34C(v0);
    FinishAllMovingPlatformPropAnimators(v0);
    FinishAllGhostPropManagers(v0);
    FinishAllSimplePropAnimators(v0);
    ov9_0224EE6C(v0);
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
    ov9_0224F0A4(param0, v1->prevID);
    ov9_0224BF18(param0, v1->nextID);
    FreeUnusedPropRenderers(param0);
    InitInactiveGhostPropManager(param0);
    InitSimplePropsForMap(param0, v1->nextID);
    InitMovingPlatformPropsForMap(param0, v1->nextID);
    ov9_0224F078(param0, v1->nextID);
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
    ov9_0224F0A4(param0, v1->nextID);
    ov9_0224BEB4(param0, v0);
    FreeUnusedPropRenderers(param0);
    InitActiveGhostPropManager(param0, TRUE);
    InitSimplePropsForMap(param0, v0);
    InitMovingPlatformPropsForMap(param0, v0);
    ov9_0224F078(param0, v0);
}

static void ov9_02249BD4(DistWorldSystem *param0, u32 param1)
{
    FinishActiveGhostPropManager(param0);
    SetPersistedHiddenGhostPropGroups(param0, 0);
    FinishSimplePropAnimatorForMap(param0, param1);
    FinishMovingPlatformPropAnimatorForMap(param0, param1);
    ov9_0224F0A4(param0, param1);
    FreeUnusedPropRenderers(param0);
}

static void ov9_02249C08(DistWorldSystem *param0, u32 param1)
{
    InitInactiveGhostPropManager(param0);
    InitSimplePropsForMap(param0, param1);
    InitMovingPlatformPropsForMap(param0, param1);
    ov9_0224F078(param0, param1);
}

static void ov9_02249C2C(DistWorldSystem *param0, u32 param1)
{
    FinishInactiveGhostPropManager(param0);
    SetPersistedHiddenGhostPropGroups(param0, 0);
    FinishSimplePropAnimatorForMap(param0, param1);
    FinishMovingPlatformPropAnimatorForMap(param0, param1);
    ov9_0224F0A4(param0, param1);
    FreeUnusedPropRenderers(param0);
}

static void ov9_02249C60(DistWorldSystem *param0, u32 param1)
{
    InitActiveGhostPropManager(param0, TRUE);
    InitSimplePropsForMap(param0, param1);
    InitMovingPlatformPropsForMap(param0, param1);
    ov9_0224F078(param0, param1);
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

    v0->unk_0C = 0;

    {
        // clang-format off
        u32 v2 = 1 << DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B4F_1 |
                 1 << DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B5F_1;
        // clang-format on

        if (DistWorldSystem_GetMapHeaderID(param0) == 581) {
            // clang-format off
            v2 = 1 << DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B1F_1 |
                 1 << DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B2F_1 |
                 1 << DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B3F_1 |
                 1 << DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B4F_1 |
                 1 << DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B4F_2 |
                 1 << DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B5F_1 |
                 1 << DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B6F_1 |
                 1 << DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B7F_1;
            // clang-format on
        }

        SetPersistedMovingPlatformFlags(param0, v2);
    }

    if (!SystemFlag_HandleDistortionWorldPuzzleFinished(v1, HANDLE_FLAG_CHECK)) {
        v0->unk_0C |= ((1 << 0) | (1 << 1) | (1 << 2));
    } else {
        v0->unk_0C |= ((1 << 10) | (1 << 11) | (1 << 12) | (1 << 6) | (1 << 7) | (1 << 8));
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

    GF_ASSERT(index < DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_COUNT);
    persistedData->movingPlatformFlags |= (1 << index);
}

static void ClearPersistedMovingPlatformFlag(DistWorldSystem *system, u32 index)
{
    DistWorldPersistedData *persistedData = system->persistedData;

    GF_ASSERT(index < DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_COUNT);
    persistedData->movingPlatformFlags &= ~(1 << index);
}

static BOOL CheckPersistedMovingPlatformFlag(DistWorldSystem *system, u32 index)
{
    DistWorldPersistedData *persistedData = system->persistedData;

    GF_ASSERT(index < DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_COUNT);
    return persistedData->movingPlatformFlags & (1 << index) ? TRUE : FALSE;
}

static void ov9_02249DC8(DistWorldSystem *param0, u32 param1)
{
    DistWorldPersistedData *v0 = param0->persistedData;

    GF_ASSERT(param1 < 17);
    v0->unk_0C |= (1 << param1);
}

static void ov9_02249DE4(DistWorldSystem *param0, u32 param1)
{
    DistWorldPersistedData *v0 = param0->persistedData;

    GF_ASSERT(param1 < 17);
    v0->unk_0C &= ~(1 << param1);
}

static BOOL ov9_02249E00(DistWorldSystem *system, u32 val)
{
    DistWorldPersistedData *persistedData = system->persistedData;

    GF_ASSERT(val < 17);
    return persistedData->unk_0C & (1 << val) ? TRUE : FALSE;
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

static void ov9_0224A228(UnkStruct_ov9_0224A228 *param0, UnkStruct_ov9_0224A294 *param1, UnkStruct_020216E0 *param2)
{
    NNSG3dResMdl *v0 = sub_02021430(param2);
    NNSG3dResTex *v1 = sub_02021438(param2);
    NNSG3dRenderObj *v2 = sub_02021440(param2);

    GF_ASSERT(param1->unk_10 == NULL);

    param1->unk_1C = param2;
    param1->unk_10 = NNS_G3dAllocAnmObj(&param0->unk_10, param0->unk_0C, v0);

    NNS_G3dAnmObjInit(param1->unk_10, param0->unk_0C, v0, v1);
    NNS_G3dRenderObjAddAnmObj(v2, param1->unk_10);

    sub_02021444(param2, ov9_0224A4C8, param1);

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
            UnkStruct_020216E0 *v0 = ov5_021EB1A0(param1->unk_18);

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
    } else if (sub_02021404(param0->unk_1C) == 0) {
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

static void ov9_0224A390(DistWorldSystem *param0, MapObject *param1, int param2)
{
    int v0 = 0;
    UnkStruct_ov9_0224A228 *v1 = &param0->unk_188;
    UnkStruct_ov9_0224A294 *v2 = v1->unk_04;

    while (v0 < v1->unk_00) {
        if ((v2->unk_18 == NULL) && (v2->unk_1C == NULL)) {
            ov9_0224A374(v2, param1, param2);
            return;
        }

        v0++;
        v2++;
    }

    GF_ASSERT(0);
}

static void ov9_0224A3C4(DistWorldSystem *param0, UnkStruct_020216E0 *param1, int param2)
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

static void ov9_0224A408(DistWorldSystem *param0, const UnkStruct_020216E0 *param1)
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
        ov9_02250F1C(&param2->unk_04, param2->unk_08);

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

static void ov9_0224A4C8(UnkStruct_020216E0 *param0, void *param1)
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
            ov9_02250EE8(&v2->unk_00, param2);
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

void ov9_0224A558(FieldSystem *fieldSystem, UnkStruct_020216E0 *param1, int param2)
{
    DistWorldSystem *v0 = fieldSystem->unk_04->dynamicMapFeaturesData;
    ov9_0224A3C4(v0, param1, param2);
}

void ov9_0224A564(FieldSystem *fieldSystem, const UnkStruct_020216E0 *param1)
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

BOOL ov9_0224A59C(FieldSystem *fieldSystem, int param1)
{
    PersistedMapFeatures *v0 = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));

    if (PersistedMapFeatures_GetID(v0) == DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) {
        int v1, v2, v3, v4;
        DistWorldSystem *v5 = fieldSystem->unk_04->dynamicMapFeaturesData;

        v4 = sub_02061434(fieldSystem->playerAvatar, param1);
        GetPlayerPos(v5, &v1, &v2, &v3);

        if (v4 == 1) {
            HandleGhostPropTriggerAt(v5, v1, v2, v3, param1);
        }

        if (ApplyCameraAngleForPlayerPosition(v5, v1, v2, v3, param1) == 1) {
            (void)0;
        }

        if (HandleFloatingPlatformJumpPointAt(v5, v1, v2, v3, param1) == 1) {
            return 1;
        }

        {
            u32 v6 = DistWorldSystem_GetMapHeaderID(v5);

            if (v6 == 577) {
                if ((param1 == 3) && (v1 == 104) && (v2 == 170) && (v3 >= 76) && (v3 <= 79)) {
                    ov9_0224E498(v5, Unk_ov9_02251438);
                    return 1;
                }
            } else if (v6 == 579) {
                if ((param1 == 3) && (v1 == 104) && (v2 == 128) && (v3 >= 76) && (v3 <= 79)) {
                    ov9_0224E498(v5, Unk_ov9_022513D8);
                    return 1;
                }
            }
        }
    }

    return 0;
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

        if (ov9_0224E434(v5, v1, v2, v3) == 1) {
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

static BOOL ApplyCameraAngleForPlayerPosition(DistWorldSystem *system, int playerX, int playerY, int playerZ, int playerDir)
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

        v9 = ov5_021F85BC(playerAvatar, v2, v3, v4, v10, 1, v0);
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

static BOOL HandleFloatingPlatformJumpPointAt(DistWorldSystem *system, int playerX, int playerY, int playerZ, int playerDir)
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

        int playerDir = ctx->template.playerDir;
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
    ov9_02250F1C(&v4->unk_00, v1);

    v0 = v4->unk_00;
    ov9_02250F1C(&v0, v4->unk_08.unk_04.unk_0C);

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

static void HandleGhostPropTriggerAt(DistWorldSystem *system, int tileX, int tileY, int tileZ, int direction)
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
    platformProp->initialPos.y = MAP_OBJECT_COORD_TO_FX32(ghostPropTemplate->tileY);

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
    obstacleProp->pos.y = MAP_OBJECT_COORD_TO_FX32(ghostPropTemplate->tileY);

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

static const DistWorldFloatingPlatformJumpPointTemplate *FindFloatingPlatformJumpPointAt(DistWorldSystem *system, int playerX, int playerY, int playerZ, int playerDir)
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

static const DistWorldCameraAngleTemplate *FindCameraAngleForPlayerPosition(DistWorldSystem *system, int playerX, int playerY, int playerZ, int playerDir)
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

    ov5_021D12D0(param0->fieldSystem, param1->unk_0C);
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

    ov5_021D12D0(param0->fieldSystem, param1->unk_0C);
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
            elevatorPlatform->passengerMapObj = MapObjMan_LocalMapObjByIndex(system->fieldSystem->mapObjMan, 0x80 + 1);
            GF_ASSERT(elevatorPlatform->passengerMapObj != NULL);
        } else if (mapHeaderID == MAP_HEADER_DISTORTION_WORLD_B6F && distWorldProgress == 7) {
            elevatorPlatform->passengerMapObj = MapObjMan_LocalMapObjByIndex(system->fieldSystem->mapObjMan, 0x80 + 6);
            GF_ASSERT(elevatorPlatform->passengerMapObj != NULL);
        }
    } else {
        elevatorPlatform->destMapHeaderID = mapConnections->prevID;

        switch (elevatorPlatform->pathIndex) {
        case 13:
            SetPersistedMovingPlatformFlag(system, DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B4F_1);
            ClearPersistedMovingPlatformFlag(system, DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B4F_2);
            break;

        case 10:
            ClearPersistedMovingPlatformFlag(system, DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B5F_3);
            break;

        case 11:
            SetPersistedMovingPlatformFlag(system, DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B3F_2);
            ClearPersistedMovingPlatformFlag(system, DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B4F_1);
            ClearPersistedMovingPlatformFlag(system, DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B5F_3);
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
        if (elevatorPlatform->persistedFlagToSet != DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID) {
            SetPersistedMovingPlatformFlag(system, elevatorPlatform->persistedFlagToSet);
        }

        if (elevatorPlatform->persistedFlagToClear != DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID) {
            ClearPersistedMovingPlatformFlag(system, elevatorPlatform->persistedFlagToClear);
        }

        DistWorldMovingPlatformPropAnimator_ChangeMaps(system, elevatorPlatform->animator, elevatorPlatform->destMapHeaderID);
    }

    if (elevatorPlatform->passengerMapObj != NULL) {
        if (elevatorPlatform->destMapHeaderID == MAP_HEADER_DISTORTION_WORLD_B1F) {
            MapObject_SetLocalID(elevatorPlatform->passengerMapObj, 0x80 + 0);
        } else {
            MapObject_SetLocalID(elevatorPlatform->passengerMapObj, 0x80 + 0);
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
                SetPersistedMovingPlatformFlag(system, DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B5F_1);
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

    MapObject *cyrusMapObj = MapObjMan_LocalMapObjByIndex(system->fieldSystem->mapObjMan, 0x80 + 6);
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
        MapObject *cyrusMapObj = MapObjMan_LocalMapObjByIndex(system->fieldSystem->mapObjMan, 0x80 + 6);

        ov9_0224EE70(system, cyrusMapObj);
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

        if ((persistedFlag == DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID || CheckPersistedMovingPlatformFlag(system, persistedFlag) == TRUE) && GetAnimatorForMovingPlatform(system, mapTemplates->templates[i]->index, mapHeaderID) == NULL) {
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
    movingPlatformProp->pos.y = MAP_OBJECT_COORD_TO_FX32(userData->tileY);

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

static void ov9_0224E33C(DistWorldSystem *param0)
{
    UnkFuncPtr_ov9_0224E33C *v0 = &param0->unk_D8;
    memset(v0, 0, sizeof(UnkFuncPtr_ov9_0224E33C));
}

static void ov9_0224E34C(DistWorldSystem *param0)
{
    return;
}

static void ov9_0224E350(DistWorldSystem *param0, const UnkStruct_ov9_02251438 *param1)
{
    UnkFuncPtr_ov9_0224E33C *v0 = &param0->unk_D8;

    GF_ASSERT(v0->unk_00 == 0);
    GF_ASSERT(param1 != NULL);

    v0->unk_00 = 1;
    v0->unk_04 = 0;
    v0->unk_06 = 0;
    v0->unk_08 = param1;
}

static void *ov9_0224E37C(DistWorldSystem *param0, u32 param1)
{
    GF_ASSERT(param1 < 160);

    {
        u8 *v0 = param0->unk_D8.unk_0C;

        memset(v0, 0, param1);
        return v0;
    }
}

static void *ov9_0224E39C(DistWorldSystem *param0)
{
    u8 *v0 = param0->unk_D8.unk_0C;
    return v0;
}

static BOOL ov9_0224E3A0(DistWorldSystem *param0, FieldTask *param1)
{
    int v0;
    int v1;
    UnkFuncPtr_ov9_0224E33C *v2;
    const UnkFuncPtr_ov9_02253BE4 *v3;
    const UnkStruct_ov9_02251438 *v4;

    v2 = &param0->unk_D8;
    v4 = v2->unk_08;

    GF_ASSERT(v4 != NULL);

    while (v4[v2->unk_04].unk_00 != 18) {
        v1 = v4[v2->unk_04].unk_00;
        v3 = Unk_ov9_02253BE4[v1];

        do {
            v0 = v3[v2->unk_06](param0, param1, &v2->unk_06, v4[v2->unk_04].unk_04);
        } while (v0 == 1);

        if (v0 == 0) {
            return 0;
        }

        v2->unk_06 = 0;
        v2->unk_04++;
    }

    v2->unk_00 = 0;
    v2->unk_04 = 0;

    return 1;
}

static const UnkStruct_ov9_02252044 *ov9_0224E410(u32 param0)
{
    const UnkStruct_ov9_02252D38 *v0 = Unk_ov9_02252D38;

    while (v0->unk_00 != 593) {
        if (v0->unk_00 == param0) {
            return v0->unk_04;
        }

        v0++;
    }

    return NULL;
}

static BOOL ov9_0224E434(DistWorldSystem *param0, int param1, int param2, int param3)
{
    VarsFlags *v0 = SaveData_GetVarsFlags(param0->fieldSystem->saveData);
    const UnkStruct_ov9_02252044 *v1 = ov9_0224E410(DistWorldSystem_GetMapHeaderID(param0));

    if (v1 != NULL) {
        u16 v2, v3;

        while (v1->unk_0C != NULL) {
            if ((param2 == v1->unk_02) && (param3 == v1->unk_04) && (param1 == v1->unk_00)) {
                v2 = v1->unk_08;
                v3 = v1->unk_0A;

                if (CheckFlagCondition(param0, v2, v3) == 1) {
                    ov9_0224E4B0(param0, v1);
                    return 1;
                }
            }

            v1++;
        }
    }

    return 0;
}

static void ov9_0224E498(DistWorldSystem *param0, const UnkStruct_ov9_02251438 *param1)
{
    ov9_0224E350(param0, param1);
    FieldSystem_CreateTask(param0->fieldSystem, ov9_0224E4BC, param0);
}

static void ov9_0224E4B0(DistWorldSystem *param0, const UnkStruct_ov9_02252044 *param1)
{
    ov9_0224E498(param0, param1->unk_0C);
}

static BOOL ov9_0224E4BC(FieldTask *param0)
{
    DistWorldSystem *v0 = FieldTask_GetEnv(param0);

    if (ov9_0224E3A0(v0, param0) == 1) {
        return 1;
    }

    return 0;
}

static int ov9_0224E4D8(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    UnkStruct_ov9_0224E4D8 *v0 = ov9_0224E37C(param0, sizeof(UnkStruct_ov9_0224E4D8));

    *param2 = 1;
    return 1;
}

static int ov9_0224E4E8(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    MapObject *v0;
    const UnkStruct_ov9_0224E4E8 *v1 = param3;
    UnkStruct_ov9_0224E4D8 *v2 = ov9_0224E39C(param0);

    v0 = MapObjMan_LocalMapObjByIndex(param0->fieldSystem->mapObjMan, v1->unk_00);
    GF_ASSERT(v0 != NULL);

    if (LocalMapObj_IsAnimationSet(v0) == 1) {
        LocalMapObj_SetAnimationCode(v0, v1->unk_04);
        *param2 = 2;
    }

    return 0;
}

static int ov9_0224E520(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    MapObject *v0;
    const UnkStruct_ov9_0224E4E8 *v1 = param3;
    UnkStruct_ov9_0224E4D8 *v2 = ov9_0224E39C(param0);

    v0 = MapObjMan_LocalMapObjByIndex(param0->fieldSystem->mapObjMan, v1->unk_00);
    GF_ASSERT(v0 != NULL);

    if (sub_020656AC(v0) == 1) {
        return 2;
    }

    return 0;
}

static const UnkFuncPtr_ov9_02253BE4 Unk_ov9_02251360[3] = {
    ov9_0224E4D8,
    ov9_0224E4E8,
    ov9_0224E520
};

static int ov9_0224E550(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    const UnkStruct_ov9_0224E550 *v0 = param3;
    UnkStruct_ov9_0224E5EC *v1 = ov9_0224E37C(param0, sizeof(UnkStruct_ov9_0224E5EC));

    v1->unk_24 = GetAnimatorForMovingPlatform(param0, v0->unk_00, DistWorldSystem_GetMapHeaderID(param0));
    GF_ASSERT(v1->unk_24 != NULL);

    v1->unk_0C.x = (((v0->unk_06) << 4) * FX32_ONE);
    v1->unk_0C.y = (((v0->unk_08) << 4) * FX32_ONE);
    v1->unk_0C.z = (((v0->unk_0A) << 4) * FX32_ONE);

    v1->unk_18 = v0->unk_0C;
    v1->unk_30 = (FX32_ONE * 3);

    {
        VecFx32 *v2 = GetMovingPlatformPropPos(v1->unk_24->animMan);

        v1->unk_2C = v2->y;
    }

    if (v0->unk_02 == 1) {
        VecFx32 v3;
        MapObject *v4 = Player_MapObject(param0->fieldSystem->playerAvatar);

        MapObject_SetHeightCalculationDisabled(v4, TRUE);
        MapObject_GetSpritePosOffset(v4, &v3);

        v1->unk_28 = v3.y;
    }

    Sound_PlayEffect(SEQ_SE_PL_FW089B);

    *param2 = 1;
    return 0;
}

static int ov9_0224E5EC(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    MapObject *v0 = NULL;
    const UnkStruct_ov9_0224E550 *v1 = param3;
    UnkStruct_ov9_0224E5EC *v2 = ov9_0224E39C(param0);
    VecFx32 *v3 = GetMovingPlatformPropPos(v2->unk_24->animMan);

    if (v1->unk_02 == 1) {
        v0 = Player_MapObject(param0->fieldSystem->playerAvatar);
    }

    v3->y = v2->unk_2C + v2->unk_30;

    if (v0 != NULL) {
        VecFx32 v4;

        MapObject_GetSpritePosOffset(v0, &v4);
        v4.y = v2->unk_28 + v2->unk_30;

        MapObject_SetSpritePosOffset(v0, &v4);
        MapObject_GetPosPtr(v0, &v4);
        ov9_022511F4(v0, &v4);
    }

    v2->unk_30 = -v2->unk_30;

    if (v2->unk_30 >= 0) {
        if (v2->unk_30 > (FX32_ONE * 1)) {
            v2->unk_30 -= (FX32_ONE * 1);
        } else {
            v2->unk_34++;

            if (v2->unk_34 >= 4) {
                v2->unk_30 = 0;
            }
        }

        if (v2->unk_30 == 0) {
            v3->y = v2->unk_2C;

            if (v0 != NULL) {
                VecFx32 v5;

                MapObject_GetSpritePosOffset(v0, &v5);
                v5.y = v2->unk_28;
                MapObject_SetSpritePosOffset(v0, &v5);

                MapObject_GetPosPtr(v0, &v5);
                ov9_022511F4(v0, &v5);
            }

            *param2 = 2;
        }
    }

    return 0;
}

static int ov9_0224E6B0(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    VecFx32 v0 = { 0, 0, 0 };
    const UnkStruct_ov9_0224E550 *v1 = param3;
    UnkStruct_ov9_0224E5EC *v2 = ov9_0224E39C(param0);
    VecFx32 *v3 = GetMovingPlatformPropPos(v2->unk_24->animMan);

    if (v2->unk_00.x != v2->unk_0C.x) {
        v2->unk_00.x += v2->unk_18.x;
        v3->x += v2->unk_18.x;

        if (v1->unk_02 == 1) {
            v0.x += v2->unk_18.x;
        }
    }

    if (v2->unk_00.y != v2->unk_0C.y) {
        v2->unk_00.y += v2->unk_18.y;
        v3->y += v2->unk_18.y;

        if (v1->unk_02 == 1) {
            v0.y += v2->unk_18.y;
        }
    }

    if (v2->unk_00.z != v2->unk_0C.z) {
        v2->unk_00.z += v2->unk_18.z;
        v3->z += v2->unk_18.z;

        if (v1->unk_02 == 1) {
            v0.z += v2->unk_18.z;
        }
    }

    if (v1->unk_02 == 1) {
        VecFx32 v4;
        MapObject *v5 = Player_MapObject(param0->fieldSystem->playerAvatar);

        MapObject_GetPosPtr(v5, &v4);

        v4.x += v0.x;
        v4.y += v0.y;
        v4.z += v0.z;

        ov9_022511F4(v5, &v4);
    }

    if ((v2->unk_00.x == v2->unk_0C.x) && (v2->unk_00.y == v2->unk_0C.y) && (v2->unk_00.z == v2->unk_0C.z)) {
        *param2 = 3;
    }

    return 0;
}

static int ov9_0224E798(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    const UnkStruct_ov9_0224E550 *v0 = param3;

    if (v0->unk_02 == 1) {
        MapObject *v1 = Player_MapObject(param0->fieldSystem->playerAvatar);
        int v2 = MapObject_GetX(v1) + v0->unk_06;
        int v3 = MapObject_GetY(v1) + ((v0->unk_08) * 2);
        int v4 = MapObject_GetZ(v1) + v0->unk_0A;

        MapObject_SetX(v1, v2);
        MapObject_SetY(v1, v3);
        MapObject_SetZ(v1, v4);
        MapObject_UpdateCoords(v1);

        {
            u32 v5;
            PlayerAvatar *playerAvatar = param0->fieldSystem->playerAvatar;

            v3 = ((v3) / 2);
            FindAndPrepareNewCurrentFloatingPlatform(param0, v2, v3, v4, 4);
            v5 = GetCurrentFloatingPlatformKindSafely(param0, v2, v3, v4);
            v5 = GetAvatarDistortionStateForFloatingPlatformKind(v5);
            PlayerAvatar_SetDistortionState(playerAvatar, v5);

            if (v5 == 1) {
                MapObject_SetHeightCalculationDisabled(v1, FALSE);
            } else {
                MapObject_SetHeightCalculationDisabled(v1, TRUE);
            }
        }
    }

    Sound_StopEffect(SEQ_SE_PL_FW089B, 0);
    return 2;
}

static const UnkFuncPtr_ov9_02253BE4 Unk_ov9_022513E8[4] = {
    ov9_0224E550,
    ov9_0224E5EC,
    ov9_0224E6B0,
    ov9_0224E798
};

static int ov9_0224E860(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    const UnkStruct_ov9_0224E860 *v0 = param3;

    ov9_0224F0D4(param0, v0->unk_00, v0->unk_02);
    return 2;
}

static const UnkFuncPtr_ov9_02253BE4 Unk_ov9_02251258[1] = {
    ov9_0224E860
};

static int ov9_0224E870(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    const UnkStruct_ov9_0224E870 *v0 = param3;

    ov9_0224F16C(param0->fieldSystem, v0->unk_00);
    return 2;
}

static const UnkFuncPtr_ov9_02253BE4 Unk_ov9_0225126C[1] = {
    ov9_0224E870
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
    simpleProp->pos.y = MAP_OBJECT_COORD_TO_FX32(simplePropTemplate->tileY);

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

static void ov9_0224EE40(DistWorldSystem *param0)
{
    UnkStruct_ov9_0224EE40 *v0 = &param0->unk_1C64;
    u32 v1 = DistWorldSystem_GetMapHeaderID(param0);
    const DistWorldMapConnections *v2 = GetConnectionsForMap(v1);

    ov9_0224F078(param0, v1);

    if (v2->nextID != MAP_HEADER_INVALID) {
        ov9_0224F078(param0, v2->nextID);
    }
}

static void ov9_0224EE6C(DistWorldSystem *param0)
{
    return;
}

static void ov9_0224EE70(DistWorldSystem *param0, MapObject *param1)
{
    int v0 = 0;
    UnkStruct_ov9_0224EE40 *v1 = &param0->unk_1C64;
    MapObject **v2 = v1->unk_00;

    for (v0 = 0; v0 < 19; v0++, v2++) {
        if ((*v2 != NULL) && (*v2 == param1)) {
            MapObject_Delete(*v2);
            *v2 = NULL;
            return;
        }
    }

    GF_ASSERT(0);
}

static MapObject **ov9_0224EEA0(DistWorldSystem *param0)
{
    int v0;
    UnkStruct_ov9_0224EE40 *v1 = &param0->unk_1C64;

    for (v0 = 0; v0 < 19; v0++) {
        if (v1->unk_00[v0] == NULL) {
            return &v1->unk_00[v0];
        }
    }

    GF_ASSERT(0);
    return NULL;
}

static MapObject *ov9_0224EECC(DistWorldSystem *param0, const ObjectEvent *param1, u32 param2)
{
    int v0 = 0;
    MapObject *v1;
    const MapObjectManager *v2 = param0->fieldSystem->mapObjMan;

    while (MapObjectMan_FindObjectWithStatus(v2, &v1, &v0, (1 << 0))) {
        if (MapObject_GetMapID(v1) == param2) {
            if (MapObject_GetLocalID(v1) == param1->localID) {
                GF_ASSERT(param1->graphicsID == MapObject_GetGraphicsID(v1));
                return v1;
            }
        }
    }

    return NULL;
}

static BOOL ov9_0224EF30(DistWorldSystem *param0, const UnkStruct_ov9_0224EF30 *param1, u16 param2)
{
    u16 v0 = param1->unk_00;
    u16 v1 = param1->unk_02;
    VarsFlags *v2 = SaveData_GetVarsFlags(param0->fieldSystem->saveData);

    if (v0 == 6) {
        if (param2 == 0) {
            return 0;
        }
    } else if (CheckFlagCondition(param0, v0, v1) == 0) {
        return 0;
    }

    return 1;
}

static BOOL ov9_0224EF64(DistWorldSystem *param0, MapObject **param1, const UnkStruct_ov9_0224EF30 *param2, u32 param3, u16 param4)
{
    MapObject *v0 = ov9_0224EECC(param0, &param2->unk_08, param3);

    if (v0 != NULL) {
        if (ov9_0224F1CC(param0, v0) == 1) {
            return 0;
        }

        *param1 = v0;
    } else {
        if ((ov9_0224EF30(param0, param2, param4) == 0) || (FieldSystem_CheckFlag(param0->fieldSystem, param2->unk_08.hiddenFlag) != 0)) {
            return 0;
        }

        *param1 = MapObjectMan_AddMapObjectFromHeader(param0->fieldSystem->mapObjMan, &param2->unk_08, param3);
        GF_ASSERT((*param1) != NULL);
    }

    MapObject_SetHidden(*param1, 1);

    if (param2->unk_04 == 1) {
        ov9_0224A390(param0, *param1, param2->unk_06);
    }

    sub_02062FC4(*param1, 1);
    MapObject_SetFlagIsPersistent(*param1, 1);
    MapObject_SetHeightCalculationDisabled(*param1, TRUE);
    MapObject_SetStatusFlagOn(*param1, MAP_OBJ_STATUS_13);

    if (v0 == NULL) {
        UnkStruct_020216E0 *v1;

        MapObject_SetPosDirFromCoords(*param1, param2->unk_08.x, (((param2->unk_08.y) >> 3) / FX32_ONE), param2->unk_08.z, param2->unk_08.dir);

        v1 = ov5_021EB1A0(*param1);

        if (v1 != NULL) {
            ov5_021EDEB4(*param1, v1);
        }
    } else {
        (void)0;
    }

    MapObject_SetHidden(*param1, 0);

    return 1;
}

static BOOL ov9_0224F048(DistWorldSystem *param0, const UnkStruct_ov9_0224EF30 **param1, u32 param2)
{
    MapObject **v0;

    while ((*param1) != NULL) {
        v0 = ov9_0224EEA0(param0);
        ov9_0224EF64(param0, v0, *param1, param2, 0);
        param1++;
    }

    return 0;
}

static void ov9_0224F078(DistWorldSystem *param0, u32 param1)
{
    const UnkStruct_ov9_02252EB4 *v0 = Unk_ov9_02252EB4;

    while (v0->unk_00 != 593) {
        if (v0->unk_00 == param1) {
            ov9_0224F048(param0, v0->unk_04, param1);
            return;
        }

        v0++;
    }
}

static void ov9_0224F0A4(DistWorldSystem *param0, u32 param1)
{
    int v0 = 0;
    UnkStruct_ov9_0224EE40 *v1 = &param0->unk_1C64;
    MapObject **v2 = v1->unk_00;

    for (v0 = 0; v0 < 19; v0++, v2++) {
        if ((*v2) != NULL) {
            if (MapObject_GetMapID(*v2) == param1) {
                MapObject_Delete(*v2);
                *v2 = NULL;
            }
        }
    }
}

static MapObject *ov9_0224F0D4(DistWorldSystem *param0, u32 param1, u16 param2)
{
    MapObject **v0 = NULL;
    const UnkStruct_ov9_02252EB4 *v1 = Unk_ov9_02252EB4;

    while (v1->unk_00 != 593) {
        if (v1->unk_00 == param1) {
            const UnkStruct_ov9_0224EF30 **v2 = v1->unk_04;

            while ((*v2) != NULL) {
                if ((*v2)->unk_08.localID == param2) {
                    v0 = ov9_0224EEA0(param0);
                    ov9_0224EF64(param0, v0, *v2, param1, 1);

                    if (param1 == 580) {
                        if ((param2 >= (0x80 + 7)) && (param2 <= (0x80 + 15))) {
                            sub_02062D80(
                                *v0, 0);
                        }
                    }

                    return *v0;
                }

                v2++;
            }

            GF_ASSERT(0);
        }

        v1++;
    }

    GF_ASSERT(0);
    return NULL;
}

void ov9_0224F158(FieldSystem *fieldSystem, u16 param1)
{
    u32 v0 = fieldSystem->location->mapId;
    DistWorldSystem *v1 = fieldSystem->unk_04->dynamicMapFeaturesData;

    ov9_0224F0D4(v1, v0, param1);
}

void ov9_0224F16C(FieldSystem *fieldSystem, u16 param1)
{
    int v0 = 0;
    MapObject *v1;
    u32 v2 = fieldSystem->location->mapId;
    MapObjectManager *v3 = fieldSystem->mapObjMan;
    DistWorldSystem *v4 = fieldSystem->unk_04->dynamicMapFeaturesData;

    while (MapObjectMan_FindObjectWithStatus(
               v3, &v1, &v0, (1 << 0))
        == 1) {
        if ((MapObject_GetLocalID(v1) == param1) && (MapObject_GetMapID(v1) == v2)) {
            ov9_0224EE70(v4, v1);
            return;
        }
    }

    GF_ASSERT(0);
}

static BOOL ov9_0224F1CC(DistWorldSystem *param0, MapObject *param1)
{
    int v0 = 0;
    UnkStruct_ov9_0224EE40 *v1 = &param0->unk_1C64;
    MapObject **v2 = v1->unk_00;

    GF_ASSERT(param1 != NULL);

    do {
        if ((*v2) == param1) {
            return 1;
        }

        v2++;
        v0++;
    } while (v0 < 19);

    return 0;
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
        if (ov9_02249E00(v0->unk_00, v0->unk_14) == 0) {
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
        case (0x80 + 0):
            v3 = 3;
            v4 = 0;
            break;
        case (0x80 + 1):
            v3 = 4;
            v4 = 1;
            break;
        case (0x80 + 2):
            v3 = 5;
            v4 = 2;
            break;
        }

        ov9_02249DC8(param0->unk_00, v3);
        ov9_02249DE4(param0->unk_00, v4);
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

            ov9_02249DC8(param0->unk_00, param0->unk_14);

            switch (MapObject_GetLocalID(v6)) {
            case (0x80 + 0):
                v4 = (0x80 + 16);
                v5 = 3;
                break;
            case (0x80 + 1):
                v4 = (0x80 + 17);
                v5 = 4;
                break;
            case (0x80 + 2):
                v4 = (0x80 + 18);
                v5 = 5;
                break;
            default:
                GF_ASSERT(0);
            }

            ov9_02249DE4(param0->unk_00, v5);
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

            ov9_02249DE4(param0->unk_00, v15);
            ScriptManager_Start(param0->unk_08, v14, NULL, NULL);
            param0->unk_10++;
            break;
        }
    case 3: {
        int v17 = 0;

        v17 += ov9_02249E00(
            param0->unk_00, 6);
        v17 += ov9_02249E00(
            param0->unk_00, 7);
        v17 += ov9_02249E00(
            param0->unk_00, 8);

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
            case (0x80 + 0):
                v6 = 0;
                v7 = 3;
                break;
            case (0x80 + 1):
                v6 = 1;
                v7 = 4;
                break;
            case (0x80 + 2):
                v6 = 2;
                v7 = 5;
                break;
            default:
                GF_ASSERT(0);
            }

            ov9_02249DC8(param0->unk_00, v6);
            ov9_02249DE4(param0->unk_00, v7);
            ov9_0224EE70(param0->unk_00, param0->unk_0C);

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
            v0->unk_06 = 1;
            v0->unk_00 = 12;
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

    if (v0->unk_06 == 0) {
        v0->unk_00 = (v2->y - ((65 << 4) * FX32_ONE)) / ((((289 - 65) << 4) * FX32_ONE) / 12);
    }

    if (v0->unk_00 < 0) {
        v0->unk_00 = 0;
    } else if (v0->unk_00 > 12) {
        v0->unk_00 = 12;
    }

    if (v0->unk_00 != v0->unk_02) {
        int v3 = 0;

        do {
            ov9_0224F86C(
                v0->unk_08[v3], (4 | (4 << 5) | (8 << 10)), v0->unk_00, &v0->unk_28[v3]);
            v3++;
        } while (v3 < 16);

        v3 = 0;

        do {
            ov9_0224F86C(
                v0->unk_48[v3], (6 | (6 << 5) | (8 << 10)), v0->unk_00, &v0->unk_E8[v3]);
            v3++;
        } while (v3 < (16 * 5));

        v0->unk_04 = 1;
        v0->unk_02 = v0->unk_00;
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

static void ov9_0224F854(DistWorldSystem *param0, u32 param1)
{
    UnkStruct_ov9_0224ADC0 *v0 = &param0->unk_1D00;
    v0->unk_06 = param1;
}

static void ov9_0224F860(DistWorldSystem *param0, s16 param1)
{
    UnkStruct_ov9_0224ADC0 *v0 = &param0->unk_1D00;
    v0->unk_00 = param1;
}

static void ov9_0224F86C(u16 param0, u16 param1, u16 param2, u16 *param3)
{
    const UnkStruct_ov9_0224F86C *v0 = (UnkStruct_ov9_0224F86C *)&param0;
    const UnkStruct_ov9_0224F86C *v1 = (UnkStruct_ov9_0224F86C *)&param1;

    if (param2 > 16) {
        param2 = 16;
    }

    (*param3) = (v0->unk_00_0 + ((v1->unk_00_0 - v0->unk_00_0) * param2 >> 4)) | ((v0->unk_00_5 + ((v1->unk_00_5 - v0->unk_00_5) * param2 >> 4)) << 5) | ((v0->unk_00_10 + ((v1->unk_00_10 - v0->unk_00_10) * param2 >> 4)) << 10);
}

static void ov9_0224F8C4(DistWorldSystem *param0, UnkStruct_ov9_0224F930 *param1, const UnkStruct_ov9_0224F8C4 *param2, const VecFx32 *param3)
{
    param1->unk_00_3 = param2->unk_00;
    param1->unk_00_1 = param2->unk_04;
    param1->unk_1C.x = (FX32_ONE * (param2->unk_0C));
    param1->unk_1C.y = (FX32_ONE * (param2->unk_0E));
    param1->unk_1C.z = (FX32_ONE * (param2->unk_10));
    param1->unk_28.x = (((param2->unk_12) << 4) * FX32_ONE);
    param1->unk_28.y = (((param2->unk_14) << 4) * FX32_ONE);
    param1->unk_28.z = (((param2->unk_16) << 4) * FX32_ONE);
    param1->unk_04 = param2->unk_18;
    param1->unk_34 = *param3;
}

static void ov9_0224F930(UnkStruct_ov9_0224F930 *param0, int param1, fx32 param2, fx32 param3)
{
    switch (param1) {
    case 0:
        param0->unk_4C = &param0->unk_40.x;
        break;
    case 1:
        param0->unk_4C = &param0->unk_40.y;
        break;
    case 2:
        param0->unk_4C = &param0->unk_40.z;
        break;
    }

    *param0->unk_4C = FX32_ONE;

    param0->unk_50 = param2;
    param0->unk_54 = param3;
    param0->unk_00_2 = 1;
}

static BOOL ov9_0224F970(DistWorldSystem *param0, UnkStruct_ov9_0224F930 *param1)
{
    if (param1->unk_10.x != param1->unk_1C.x) {
        param1->unk_10.x += param1->unk_04.x;
        param1->unk_34.x += param1->unk_04.x;
    }

    if (param1->unk_10.y != param1->unk_1C.y) {
        param1->unk_10.y += param1->unk_04.y;
        param1->unk_34.y += param1->unk_04.y;
    }

    if (param1->unk_10.z != param1->unk_1C.z) {
        param1->unk_10.z += param1->unk_04.z;
        param1->unk_34.z += param1->unk_04.z;
    }

    if (param1->unk_00_2) {
        *param1->unk_4C += param1->unk_50;

        if (*param1->unk_4C >= param1->unk_54) {
            *param1->unk_4C = param1->unk_54;
            param1->unk_50 = -param1->unk_50;
        } else if (*param1->unk_4C <= FX32_ONE) {
            *param1->unk_4C = FX32_ONE;
            param1->unk_50 = -param1->unk_50;
        }
    }

    if (param1->unk_00_0 == 0) {
        if ((param1->unk_10.x == param1->unk_28.x) && (param1->unk_10.y == param1->unk_28.y) && (param1->unk_10.z == param1->unk_28.z)) {
            if (param1->unk_00_1 == 0) {
                ov9_0224CC50(param0, NULL, 1);
            } else {
                ov9_0224CC50(param0, NULL, 2);
            }

            param1->unk_00_0++;
        }

        return 1;
    }

    if ((param1->unk_10.x == param1->unk_1C.x) && (param1->unk_10.y == param1->unk_1C.y) && (param1->unk_10.z == param1->unk_1C.z)) {
        return 3;
    }

    {
        fx32 v0;

        switch (param1->unk_00_3) {
        case 0:
            v0 = param1->unk_1C.x - param1->unk_10.x;
            break;
        case 1:
            v0 = param1->unk_1C.y - param1->unk_10.y;
            break;
        case 2:
            v0 = param1->unk_1C.z - param1->unk_10.z;
            break;
        }

        if (v0 < 0) {
            v0 = -v0;
        }

        if ((v0 - (16 * FX32_ONE)) == 0) {
            return 2;
        }
    }

    return 0;
}

static const DistWorldCameraAngleTemplate Unk_ov9_02251E40 = {
    { 0x0, 0x0, 0x0, 0x0 },
    0xF5,
    0xEF,
    0x0,
    0x0,
    0x48
};

static const DistWorldCameraAngleTemplate Unk_ov9_02251888 = {
    { 0x0, 0x0, 0x0, 0x0 },
    0x0,
    0x0,
    0x0,
    0x0,
    0x20
};

static void ov9_0224FA94(DistWorldSystem *param0, UnkStruct_ov9_0224FA94 *param1)
{
    MapObject *v0 = Player_MapObject(param0->fieldSystem->playerAvatar);
    int v1 = (((param1->unk_40.unk_10.y) >> 4) / FX32_ONE);

    if ((param1->unk_04 == 0) && (v1 == -20)) {
        DoCameraTransition(param0, &Unk_ov9_02251E40);
        ov9_0224A4D0(param0, v0, -32, 72);
        param1->unk_04++;
    } else if ((param1->unk_04 == 1) && (v1 == -36)) {
        MapObject_TryFace(v0, 2);
        DoCameraTransition(param0, &Unk_ov9_02251888);
        ov9_0224A4D0(param0, v0, 32, 31);
        param1->unk_04++;
    }

    if ((param1->unk_04 == 1) && (param1->unk_06 >= 0)) {
        param1->unk_06++;

        if (param1->unk_06 >= 32) {
            MapObject_TryFace(v0, 0);
            param1->unk_06 = -1;
        }
    }
}

static int ov9_0224FB3C(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    VecFx32 v0;
    UnkStruct_ov9_0224F930 *v1;
    MapObject *v2;
    PlayerAvatar *playerAvatar;
    UnkStruct_ov9_0224FA94 *v4;
    const UnkStruct_ov9_02252384 *v5 = param3;
    v4 = ov9_0224E37C(param0, sizeof(UnkStruct_ov9_0224FA94));
    v1 = &v4->unk_40;
    playerAvatar = param0->fieldSystem->playerAvatar;
    v2 = Player_MapObject(playerAvatar);

    MapObject_GetPosPtr(v2, &v0);
    MapObject_TryFace(v2, 2);
    ov9_0224F8C4(param0, v1, &v5->unk_00, &v0);

    v1->unk_04.x >>= 1;
    v1->unk_04.y >>= 1;
    v1->unk_04.z >>= 1;
    v4->unk_00 = 32;

    ov9_0224A4D0(param0, v2, 90, v4->unk_00);

    {
        VecFx32 v6 = { 0, 0, 0 };
        MapObject_SetSpritePosOffset(v2, &v6);
    }

    {
        VecFx32 *v7;
        OverworldAnimManager *v8 = PlayerAvatar_GetSurfMountAnimManager(playerAvatar);
        Simple3DRotationAngles *v9 = ov5_021F88A8(v8);

        ov5_021F88B4(v8, 2, 5);
        ov5_021F88CC(v8, 1 << 2 | 1 << 4 | 1 << 6 | 1 << 5);

        v4->unk_0C.x = (FX32_ONE * (v9->alpha));
        v4->unk_0C.y = (FX32_ONE * (v9->beta));
        v4->unk_0C.z = (FX32_ONE * (v9->gamma));
        v4->unk_18.x = (FX32_ONE * -90) / 32;
        v4->unk_18.y = (FX32_ONE * 180) / 32;
        v4->unk_18.z = 0;
        v4->unk_30 = (FX32_ONE * 90);
        v4->unk_34 = (FX32_ONE * -70) / 32;

        v7 = ov5_021F88FC(v8);
        v7->x = 0;
        v7->y = 0;
        v7->z = (FX32_ONE * 6);
        v4->unk_24.x = 0;
        v4->unk_24.y = 0;
        v4->unk_24.z = (FX32_ONE * 4) / 32;
    }

    Sound_PlayEffect(SEQ_SE_PL_FW463);

    *param2 = 1;
    return 0;
}

static int ov9_0224FC2C(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    MapObject *v0 = Player_MapObject(param0->fieldSystem->playerAvatar);
    UnkStruct_ov9_0224FA94 *v1 = ov9_0224E39C(param0);
    UnkStruct_ov9_0224F930 *v2 = &v1->unk_40;

    ov9_0224F970(param0, v2);
    MapObject_SetPos(v0, &v2->unk_34);
    ov9_0224FA94(param0, v1);

    {
        OverworldAnimManager *v3 = PlayerAvatar_GetSurfMountAnimManager(param0->fieldSystem->playerAvatar);

        {
            Simple3DRotationAngles *v4 = ov5_021F88A8(v3);

            ov9_02250F1C(&v1->unk_0C.x, v1->unk_18.x);
            ov9_02250F1C(&v1->unk_0C.y, v1->unk_18.y);
            ov9_02250F1C(&v1->unk_0C.z, v1->unk_18.z);

            v4->alpha = ((v1->unk_0C.x) / FX32_ONE);
            v4->beta = ((v1->unk_0C.y) / FX32_ONE);
            v4->gamma = ((v1->unk_0C.z) / FX32_ONE);
        }

        {
            ov9_02250F1C(&v1->unk_30, v1->unk_34);
            ov5_021F8908(v3, ((v1->unk_30) / FX32_ONE));
        }

        {
            VecFx32 *v5 = ov5_021F88FC(v3);

            v5->x += v1->unk_24.x;
            v5->y += v1->unk_24.y;
            v5->z += v1->unk_24.z;
        }
    }

    v1->unk_00--;

    if (v1->unk_00 == 0) {
        v2->unk_04.x <<= 1;
        v2->unk_04.y <<= 1;
        v2->unk_04.z <<= 1;

        ov9_0224F930(v2, 0, 0x400, (FX32_ONE * 4));

        {
            OverworldAnimManager *v6 = PlayerAvatar_GetSurfMountAnimManager(param0->fieldSystem->playerAvatar);
            VecFx32 *v7;

            v7 = ov5_021F88FC(v6);
            v7->x = 0;
            v7->y = 0;
            v7->z = (FX32_ONE * 10);
            v1->unk_08 = 70;
            v1->unk_0A = -1;
            v1->unk_24.x = 0;
            v1->unk_24.y = 0;
            v1->unk_24.z = (FX32_ONE * -16) / v1->unk_08;
            v1->unk_3C = (FX32_ONE * -4) / v1->unk_08;
        }

        *param2 = 2;
        return 0;
    }

    return 0;
}

static int ov9_0224FD74(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    int v0;
    OverworldAnimManager *v1 = PlayerAvatar_GetSurfMountAnimManager(param0->fieldSystem->playerAvatar);
    MapObject *v2 = Player_MapObject(param0->fieldSystem->playerAvatar);
    UnkStruct_ov9_0224FA94 *v3 = ov9_0224E39C(param0);
    UnkStruct_ov9_0224F930 *v4 = &v3->unk_40;

    v0 = ov9_0224F970(param0, v4);
    MapObject_SetPos(v2, &v4->unk_34);

    {
        VecFx32 v5 = v4->unk_40;

        v5.x += v3->unk_38;
        MapObject_SetSpriteJumpOffset(v2, &v5);
    }

    ov9_0224FA94(param0, v3);

    {
        VecFx32 *v6 = ov5_021F88FC(v1);
        VecFx32 *v7 = ov5_021F88F0(v1);

        *v7 = v4->unk_40;

        if (v3->unk_04 == 1) {
            if (v3->unk_08 > 0) {
                v3->unk_08--;
                v6->x += v3->unk_24.x;
                v6->y += v3->unk_24.y;
                v6->z += v3->unk_24.z;
                v3->unk_38 += v3->unk_3C;
            }
        } else if (v3->unk_04 == 2) {
            if (v3->unk_0A < 0) {
                v3->unk_0A = 30;
                v3->unk_24.x = 0;
                v3->unk_24.y = 0;
                v3->unk_24.z = (FX32_ONE * 6) / v3->unk_0A;
                v3->unk_3C = (FX32_ONE * 4) / v3->unk_0A;
            }

            if (v3->unk_0A > 0) {
                v3->unk_0A--;
                v6->x += v3->unk_24.x;
                v6->y += v3->unk_24.y;
                v6->z += v3->unk_24.z;
                v3->unk_38 += v3->unk_3C;
            }
        }
    }

    if (v0 == 2) {
        v3->unk_00 = 16;
        ov9_0224A4D0(param0, v2, 90, v3->unk_00);

        {
            v3->unk_18.x = (FX32_ONE * -90) / 16;
            v3->unk_18.y = 0;
            v3->unk_18.z = 0;
            v3->unk_24.x = 0;
            v3->unk_24.y = 0;
            v3->unk_24.z = (FX32_ONE * -7) / 16;
            v3->unk_34 = (FX32_ONE * -110) / 16;

            ov5_021F88DC(v1, 1 << 5);
        }

        *param2 = 3;
    }

    GF_ASSERT(v0 != 3);
    return 0;
}

static int ov9_0224FEDC(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    int v0;
    OverworldAnimManager *v1 = PlayerAvatar_GetSurfMountAnimManager(param0->fieldSystem->playerAvatar);
    MapObject *v2 = Player_MapObject(param0->fieldSystem->playerAvatar);
    UnkStruct_ov9_0224FA94 *v3 = ov9_0224E39C(param0);
    UnkStruct_ov9_0224F930 *v4 = &v3->unk_40;

    v0 = ov9_0224F970(param0, v4);

    MapObject_SetPos(v2, &v4->unk_34);
    MapObject_SetSpriteJumpOffset(v2, &v4->unk_40);

    ov9_0224FA94(param0, v3);

    {
        VecFx32 *v5;
        Simple3DRotationAngles *v6 = ov5_021F88A8(v1);

        ov9_02250F1C(&v3->unk_0C.x, v3->unk_18.x);
        ov9_02250F1C(&v3->unk_0C.y, v3->unk_18.y);
        ov9_02250F1C(&v3->unk_0C.z, v3->unk_18.z);

        v6->alpha = ((v3->unk_0C.x) / FX32_ONE);
        v6->beta = ((v3->unk_0C.y) / FX32_ONE);
        v6->gamma = ((v3->unk_0C.z) / FX32_ONE);

        ov9_02250F1C(&v3->unk_30, v3->unk_34);
        ov5_021F8908(v1, ((v3->unk_30) / FX32_ONE));

        {
            VecFx32 *v7 = ov5_021F88FC(v1);

            v7->x += v3->unk_24.x;
            v7->y += v3->unk_24.y;
            v7->z += v3->unk_24.z;
        }
    }

    if (v0 == 3) {
        int v8, v9, v10;
        const UnkStruct_ov9_02252384 *v11 = param3;
        const UnkStruct_ov9_0224F8C4 *v12 = &v11->unk_00;
        VecFx32 v13 = { 0, 0, 0 };

        v8 = MapObject_GetX(v2) + v12->unk_06;
        v9 = MapObject_GetY(v2) + ((v12->unk_08) * 2);
        v10 = MapObject_GetZ(v2) + v12->unk_0A;

        MapObject_SetX(v2, v8);
        MapObject_SetY(v2, v9);
        MapObject_SetZ(v2, v10);
        MapObject_UpdateCoords(v2);
        MapObject_TryFace(v2, 2);
        MapObject_Turn(v2, 2);
        MapObject_SetSpriteJumpOffset(v2, &v13);
        MapObject_SetSpritePosOffset(v2, &v13);
        FindAndPrepareNewCurrentFloatingPlatform(param0, v8, ((v9) / 2), v10, 4);
        PlayerAvatar_SetDistortionState(param0->fieldSystem->playerAvatar, AVATAR_DISTORTION_STATE_ACTIVE);
        MapObject_SetHeightCalculationDisabled(v2, FALSE);

        {
            {
                VecFx32 *v14 = ov5_021F88FC(v1);

                *v14 = v13;
                v14 = ov5_021F88F0(v1);
                *v14 = v13;
            }

            ov5_021F8908(v1, 270);
            ov5_021F88B4(v1, 2, 1);
            ov5_021F88DC(v1, 1 << 2 | 1 << 4 | 1 << 6 | 1 << 5);
        }

        Sound_StopEffect(1488, 0);
        *param2 = 4;

        {
            SetPersistedMovingPlatformFlag(param0, DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B5F_1);
            InitSpecificMovingPlatformPropForMap(param0, 579, 0);
        }
    }

    return 0;
}

static int ov9_022500E0(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    u32 v0[2] = { 0xa, 0x6 };
    UnkStruct_ov9_0224FA94 *v1 = ov9_0224E39C(param0);
    MapObject *v2 = Player_MapObject(param0->fieldSystem->playerAvatar);

    if (LocalMapObj_IsAnimationSet(v2) == 0) {
        return 0;
    }

    if (v1->unk_02 >= 2) {
        return 2;
    }

    LocalMapObj_SetAnimationCode(v2, v0[v1->unk_02]);
    v1->unk_02++;
    return 0;
}

static const UnkFuncPtr_ov9_02253BE4 Unk_ov9_02251544[5] = {
    ov9_0224FB3C,
    ov9_0224FC2C,
    ov9_0224FD74,
    ov9_0224FEDC,
    ov9_022500E0
};

static const DistWorldCameraAngleTemplate Unk_ov9_02251C48 = {
    { 0x0, 0x0, 0x0, 0x0 },
    0x37,
    0xF0,
    0x0,
    0x0,
    0x10
};

static void ov9_02250138(DistWorldSystem *param0, UnkStruct_ov9_02250138 *param1)
{
    MapObject *v0 = Player_MapObject(param0->fieldSystem->playerAvatar);
    int v1 = (((param1->unk_34.unk_10.y) >> 4) / FX32_ONE);

    if ((param1->unk_04 == 0) && (v1 == 20)) {
        DoCameraTransition(param0, &Unk_ov9_02251C48);
        param1->unk_04++;
    }
}

static int ov9_02250170(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    VecFx32 v0;
    UnkStruct_ov9_0224F930 *v1;
    MapObject *v2;
    PlayerAvatar *playerAvatar;
    UnkStruct_ov9_02250138 *v4;
    const UnkStruct_ov9_022523F0 *v5 = param3;
    v4 = ov9_0224E37C(param0, sizeof(UnkStruct_ov9_02250138));
    v1 = &v4->unk_34;
    playerAvatar = param0->fieldSystem->playerAvatar;
    v2 = Player_MapObject(playerAvatar);

    MapObject_GetPosPtr(v2, &v0);
    MapObject_TryFace(v2, 3);
    ov9_0224F8C4(param0, v1, &v5->unk_00, &v0);

    v1->unk_04.x >>= 1;
    v1->unk_04.y >>= 1;
    v1->unk_04.z >>= 1;
    v4->unk_00 = 4;

    ov9_0224A4D0(param0, v2, -90, v4->unk_00);

    {
        VecFx32 v6 = { 0, 0, 0 };
        MapObject_SetSpritePosOffset(v2, &v6);
    }

    {
        VecFx32 *v7;
        OverworldAnimManager *v8 = PlayerAvatar_GetSurfMountAnimManager(playerAvatar);
        Simple3DRotationAngles *v9 = ov5_021F88A8(v8);

        ov5_021F88B4(v8, 3, 1);
        ov5_021F88CC(v8, 1 << 2 | 1 << 4 | 1 << 6 | 1 << 5);

        v4->unk_08.x = (FX32_ONE * (v9->alpha));
        v4->unk_08.y = (FX32_ONE * (v9->beta));
        v4->unk_08.z = (FX32_ONE * (v9->gamma));
        v4->unk_14.x = (FX32_ONE * -90) / 4;
        v4->unk_14.y = (FX32_ONE * 180) / 4;
        v4->unk_14.z = 0;
        v4->unk_2C = (FX32_ONE * 270);
        v4->unk_30 = (FX32_ONE * 110) / 4;

        v7 = ov5_021F88FC(v8);
        v7->x = 0;
        v7->y = 0;
        v7->z = (FX32_ONE * -7);
        v4->unk_20.x = 0;
        v4->unk_20.y = 0;
        v4->unk_20.z = (FX32_ONE * 0) / 4;
    }

    Sound_PlayEffect(SEQ_SE_PL_FW463);

    *param2 = 1;
    return 0;
}

static int ov9_02250260(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    MapObject *v0 = Player_MapObject(param0->fieldSystem->playerAvatar);
    UnkStruct_ov9_02250138 *v1 = ov9_0224E39C(param0);
    UnkStruct_ov9_0224F930 *v2 = &v1->unk_34;

    ov9_0224F970(param0, v2);
    MapObject_SetPos(v0, &v2->unk_34);
    ov9_02250138(param0, v1);

    {
        OverworldAnimManager *v3 = PlayerAvatar_GetSurfMountAnimManager(param0->fieldSystem->playerAvatar);

        {
            Simple3DRotationAngles *v4 = ov5_021F88A8(v3);

            ov9_02250F1C(&v1->unk_08.x, v1->unk_14.x);
            ov9_02250F1C(&v1->unk_08.y, v1->unk_14.y);
            ov9_02250F1C(&v1->unk_08.z, v1->unk_14.z);

            v4->alpha = ((v1->unk_08.x) / FX32_ONE);
            v4->beta = ((v1->unk_08.y) / FX32_ONE);
            v4->gamma = ((v1->unk_08.z) / FX32_ONE);
        }

        {
            ov9_02250F1C(&v1->unk_2C, v1->unk_30);
            ov5_021F8908(v3, ((v1->unk_2C) / FX32_ONE));
        }

        {
            VecFx32 *v5 = ov5_021F88FC(v3);

            v5->x += v1->unk_20.x;
            v5->y += v1->unk_20.y;
            v5->z += v1->unk_20.z;
        }
    }

    v1->unk_00--;

    if (v1->unk_00 == 0) {
        v2->unk_04.x <<= 1;
        v2->unk_04.y <<= 1;
        v2->unk_04.z <<= 1;

        ov9_0224F930(v2, 0, 0x200, (FX32_ONE * 4));

        {
            OverworldAnimManager *v6 = PlayerAvatar_GetSurfMountAnimManager(param0->fieldSystem->playerAvatar);
            VecFx32 *v7;

            v7 = ov5_021F88FC(v6);
            v7->x = 0;
            v7->y = 0;
            v7->z = (FX32_ONE * -7);
            v1->unk_20.x = 0;
            v1->unk_20.y = 0;
            v1->unk_20.z = (FX32_ONE * 17) / 16;
        }

        *param2 = 2;
        return 0;
    }

    return 0;
}

static int ov9_02250388(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    int v0;
    OverworldAnimManager *v1 = PlayerAvatar_GetSurfMountAnimManager(param0->fieldSystem->playerAvatar);
    MapObject *v2 = Player_MapObject(param0->fieldSystem->playerAvatar);
    UnkStruct_ov9_02250138 *v3 = ov9_0224E39C(param0);
    UnkStruct_ov9_0224F930 *v4 = &v3->unk_34;

    v0 = ov9_0224F970(param0, v4);

    MapObject_SetPos(v2, &v4->unk_34);
    MapObject_SetSpriteJumpOffset(v2, &v4->unk_40);
    ov9_02250138(param0, v3);

    {
        VecFx32 *v5 = ov5_021F88F0(v1);

        *v5 = v4->unk_40;

        if (v3->unk_04 == 1) {
            VecFx32 *v6 = ov5_021F88FC(v1);

            if (v6->z < (FX32_ONE * 10)) {
                v6->x += v3->unk_20.x;
                v6->y += v3->unk_20.y;
                v6->z += v3->unk_20.z;
            }
        }
    }

    if (v0 == 2) {
        v3->unk_00 = 2;
        ov9_0224A4D0(param0, v2, -90, v3->unk_00);

        {
            v3->unk_14.x = (FX32_ONE * 90) / 2;
            v3->unk_14.y = 0;
            v3->unk_14.z = 0;
            v3->unk_20.x = 0;
            v3->unk_20.y = 0;
            v3->unk_20.z = (FX32_ONE * -4) / 2;
            v3->unk_30 = (FX32_ONE * 70) / 2;

            ov5_021F88DC(v1, 1 << 5);
        }

        *param2 = 3;
    }

    GF_ASSERT(v0 != 3);
    return 0;
}

static int ov9_02250468(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    int v0;
    OverworldAnimManager *v1 = PlayerAvatar_GetSurfMountAnimManager(param0->fieldSystem->playerAvatar);
    MapObject *v2 = Player_MapObject(param0->fieldSystem->playerAvatar);
    UnkStruct_ov9_02250138 *v3 = ov9_0224E39C(param0);
    UnkStruct_ov9_0224F930 *v4 = &v3->unk_34;

    v0 = ov9_0224F970(param0, v4);

    MapObject_SetPos(v2, &v4->unk_34);
    MapObject_SetSpriteJumpOffset(v2, &v4->unk_40);

    ov9_02250138(param0, v3);

    {
        VecFx32 *v5;
        Simple3DRotationAngles *v6 = ov5_021F88A8(v1);

        ov9_02250F1C(&v3->unk_08.x, v3->unk_14.x);
        ov9_02250F1C(&v3->unk_08.y, v3->unk_14.y);
        ov9_02250F1C(&v3->unk_08.z, v3->unk_14.z);

        v6->alpha = ((v3->unk_08.x) / FX32_ONE);
        v6->beta = ((v3->unk_08.y) / FX32_ONE);
        v6->gamma = ((v3->unk_08.z) / FX32_ONE);

        ov9_02250F1C(&v3->unk_2C, v3->unk_30);
        ov5_021F8908(v1, ((v3->unk_2C) / FX32_ONE));

        {
            VecFx32 *v7 = ov5_021F88FC(v1);

            v7->x += v3->unk_20.x;
            v7->y += v3->unk_20.y;
            v7->z += v3->unk_20.z;
        }
    }

    if (v0 == 3) {
        int v8, v9, v10;
        const UnkStruct_ov9_022523F0 *v11 = param3;
        const UnkStruct_ov9_0224F8C4 *v12 = &v11->unk_00;
        VecFx32 v13 = { 0, 0, 0 };

        v8 = MapObject_GetX(v2) + v12->unk_06;
        v9 = MapObject_GetY(v2) + ((v12->unk_08) * 2);
        v10 = MapObject_GetZ(v2) + v12->unk_0A;

        MapObject_SetX(v2, v8);
        MapObject_SetY(v2, v9);
        MapObject_SetZ(v2, v10);
        MapObject_UpdateCoords(v2);
        MapObject_TryFace(v2, 3);
        MapObject_Turn(v2, 3);
        MapObject_SetSpriteJumpOffset(v2, &v13);
        MapObject_SetSpritePosOffset(v2, &v13);
        FindAndPrepareNewCurrentFloatingPlatform(param0, v8, ((v9) / 2), v10, 4);
        PlayerAvatar_SetDistortionState(param0->fieldSystem->playerAvatar, AVATAR_DISTORTION_STATE_CEILING);
        MapObject_SetHeightCalculationDisabled(v2, TRUE);

        {
            {
                VecFx32 *v14 = ov5_021F88FC(v1);

                *v14 = v13;
                v14 = ov5_021F88F0(v1);
                *v14 = v13;
            }

            ov5_021F8908(v1, 90);
            ov5_021F88B4(v1, 3, 5);
            ov5_021F88DC(v1, 1 << 2 | 1 << 4 | 1 << 6 | 1 << 5);
        }

        Sound_StopEffect(1488, 0);
        *param2 = 4;
    }

    return 0;
}

static int ov9_02250650(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    u32 v0[3] = { 0x97, 0x93, 0x73 };
    UnkStruct_ov9_02250138 *v1 = ov9_0224E39C(param0);
    MapObject *v2 = Player_MapObject(param0->fieldSystem->playerAvatar);

    if (LocalMapObj_IsAnimationSet(v2) == 0) {
        return 0;
    }

    if (v1->unk_02 >= 3) {
        return 2;
    }

    LocalMapObj_SetAnimationCode(v2, v0[v1->unk_02]);
    v1->unk_02++;
    return 0;
}

static const UnkFuncPtr_ov9_02253BE4 Unk_ov9_0225151C[5] = {
    ov9_02250170,
    ov9_02250260,
    ov9_02250388,
    ov9_02250468,
    ov9_02250650
};

static int ov9_022506AC(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    const UnkStruct_ov9_022506AC *v0 = param3;

    ScriptManager_Start(param1, v0->unk_00, NULL, NULL);
    (*param2)++;
    return 0;
}

static int ov9_022506CC(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    return 2;
}

static const UnkFuncPtr_ov9_02253BE4 Unk_ov9_022512C0[2] = {
    ov9_022506AC,
    ov9_022506CC
};

static int ov9_022506D0(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    const UnkStruct_ov9_022506D0 *v0 = param3;
    VarsFlags *v1 = SaveData_GetVarsFlags(param0->fieldSystem->saveData);

    SystemVars_SetDistortionWorldProgress(v1, v0->unk_00);
    return 2;
}

static const UnkFuncPtr_ov9_02253BE4 Unk_ov9_02251238[1] = {
    ov9_022506D0
};

static int ov9_022506EC(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    const UnkStruct_ov9_022506EC *v0 = param3;
    VarsFlags *v1 = SaveData_GetVarsFlags(param0->fieldSystem->saveData);

    SystemFlag_HandleGiratinaAnimation(v1, HANDLE_FLAG_SET, v0->unk_00);
    return 2;
}

static const UnkFuncPtr_ov9_02253BE4 Unk_ov9_0225121C[1] = {
    ov9_022506EC
};

static int ov9_02250704(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    const UnkStruct_ov9_02250704 *v0 = param3;

    ov9_02249DC8(param0, v0->unk_00);
    return 2;
}

static const UnkFuncPtr_ov9_02253BE4 Unk_ov9_02251270[1] = {
    ov9_02250704
};

static int ov9_02250710(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    const UnkStruct_ov9_02250704 *v0 = param3;

    ov9_02249DE4(param0, v0->unk_00);
    return 2;
}

static const UnkFuncPtr_ov9_02253BE4 Unk_ov9_02251254[1] = {
    ov9_02250710
};

static int ov9_0225071C(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    const DistWorldGiratinaShadowTemplate *v0 = param3;

    LoadGiratinaShadowPropAnimation(param0, v0);
    *param2 = 1;
    return 0;
}

static int ov9_02250730(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    if (IsGiratinaShadowAnimationFinished(param0) == TRUE) {
        FinishGiratinaShadowPropRenderer(param0);
        return 2;
    }

    return 0;
}

static const UnkFuncPtr_ov9_02253BE4 Unk_ov9_02251328[2] = {
    ov9_0225071C,
    ov9_02250730
};

static const u16 Unk_ov9_02252284[16] = {
    0x32C9,
    0x20D5,
    0x104f,
    0x3DAD,
    0x4A10,
    0x2929,
    0x5672,
    0x62D5,
    0x6bff,
    0xf5d,
    0x92A,
    0xA55,
    0x215E,
    0x18C6,
    0x0,
    0x7fff
};

static void ov9_0225074C(UnkStruct_ov9_0225074C *param0)
{
    u32 v0, v1 = ((param0->unk_00) / FX32_ONE);

    for (v0 = 0; v0 < 16; v0++) {
        ov9_0224F86C(Unk_ov9_02252284[v0], 0, v1, &param0->unk_1C[v0]);
    }
}

void ov9_02250780(FieldSystem *fieldSystem)
{
    DistWorldSystem *v0 = fieldSystem->unk_04->dynamicMapFeaturesData;

    if (v0->unk_1EC0 == 1) {
        UnkStruct_ov9_0225074C *v1 = ov9_0224E39C(v0);
        UnkStruct_ov5_021ED0A4 *v2 = sub_0206285C(v0->fieldSystem->mapObjMan);
        TextureResourceManager *v3 = ov5_021EDCB0(v2);
        TextureResource *v4 = TextureResourceManager_FindTextureResource(v3, 0xe6);
        NNSGfdPlttKey v5 = TextureResource_GetPaletteKey(v4);
        u32 v6 = NNS_GfdGetPlttKeyAddr(v5);

        VramTransfer_Request(NNS_GFD_DST_3D_TEX_PLTT, v6, v1->unk_1C, 32);
    }
}

static int ov9_022507C4(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    UnkStruct_ov9_0225074C *v0 = ov9_0224E37C(param0, sizeof(UnkStruct_ov9_0225074C));
    v0->unk_18 = ov9_0224F0D4(param0, 582, (0x80 + 0));
    v0->unk_08.y = ((10 << 4) * FX32_ONE);

    MapObject_SetSpritePosOffset(v0->unk_18, &v0->unk_08);

    *param2 = 1;
    return 0;
}

static int ov9_022507FC(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    UnkStruct_ov9_0225074C *v1 = ov9_0224E39C(param0);
    UnkStruct_020216E0 *v0 = ov5_021EB1A0(v1->unk_18);

    if (v0 != NULL) {
        v1->unk_00 = (FX32_ONE * 16);
        ov9_0225074C(v1);
        param0->unk_1EC0 = 1;

        v1->unk_04 = (FX32_ONE * 0);
        ov9_0224F854(param0, 1);

        param0->unk_1EC2 = 2;
        Sound_PlayEffect(SEQ_SE_PL_GIRA);
        *param2 = 2;
        return 1;
    }

    return 0;
}

static int ov9_02250854(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    UnkStruct_ov9_0225074C *v0 = ov9_0224E39C(param0);
    v0->unk_04 += (FX32_ONE * 8) / (3 * 30);

    if (v0->unk_04 >= (FX32_ONE * 12)) {
        v0->unk_04 = (FX32_ONE * 12);
    }

    ov9_0224F860(param0, ((v0->unk_04) / FX32_ONE));

    if (v0->unk_08.y >= ((1 << 4) * FX32_ONE)) {
        v0->unk_08.y -= 0x1000;
    } else {
        v0->unk_08.y -= 0x800;
    }

    if ((v0->unk_08.y < 0) && (v0->unk_04 >= (FX32_ONE * 12))) {
        v0->unk_08.y = 0;
        *param2 = 3;
    }

    MapObject_SetSpritePosOffset(v0->unk_18, &v0->unk_08);
    return 0;
}

static int ov9_022508C0(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    UnkStruct_020216E0 *v0;
    NNSG3dResMdl *v1;
    UnkStruct_ov9_0225074C *v2 = ov9_0224E39C(param0);
    v0 = ov5_021EB1A0(v2->unk_18);
    v1 = sub_02021430(v0);

    v2->unk_00 -= (FX32_ONE * 16) / (3 * 30);

    if (v2->unk_00 < 0) {
        v2->unk_00 = 0;
        *param2 = 4;
    }

    ov9_0225074C(v2);
    return 0;
}

static int ov9_022508F4(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    UnkStruct_ov9_0225074C *v0 = ov9_0224E39C(param0);
    v0->unk_14++;

    if (v0->unk_14 >= 30) {
        param0->unk_1EC0 = 0;
        return 2;
    }

    return 0;
}

static const UnkFuncPtr_ov9_02253BE4 Unk_ov9_02251490[5] = {
    ov9_022507C4,
    ov9_022507FC,
    ov9_02250854,
    ov9_022508C0,
    ov9_022508F4
};

static int ov9_02250918(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    UnkStruct_ov9_02250918 *v0 = ov9_0224E37C(param0, sizeof(UnkStruct_ov9_02250918));
    v0->unk_20 = ov9_0224F0D4(param0, 579, (0x80 + 3));

    Sound_PlayPokemonCry(SPECIES_UXIE, 0);

    v0->unk_04 = 1;
    *param2 = 1;
    return 0;
}

static int ov9_0225094C(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    UnkStruct_ov9_02250918 *v0;
    fx32 v1 = (FX32_ONE * 2);

    v0 = ov9_0224E39C(param0);

    if ((((v0->unk_14.y) >> 4) / FX32_ONE) < 16) {
        v1 <<= 1;
    }

    v0->unk_14.y += v1;
    MapObject_SetSpritePosOffset(v0->unk_20, &v0->unk_14);

    if ((((v0->unk_14.y) >> 4) / FX32_ONE) >= 17) {
        *param2 = 2;
    }

    return 0;
}

static int ov9_02250994(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    UnkStruct_ov9_02250918 *v0 = ov9_0224E39C(param0);
    v0->unk_14.z -= (FX32_ONE * 1);
    MapObject_SetSpritePosOffset(v0->unk_20, &v0->unk_14);

    if ((((v0->unk_14.z) >> 4) / FX32_ONE) <= -2) {
        v0->unk_0C = v0->unk_14.y;
        *param2 = 3;
    }

    return 0;
}

static int ov9_022509D4(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    UnkStruct_ov9_02250918 *v0;
    fx32 v1[8] = { 0x0, 0x800, 0x1000, 0x2000, 0x4000, 0x6000, 0x7000, 0x8000 };

    v0 = ov9_0224E39C(param0);
    v0->unk_14.y = v0->unk_0C + v1[v0->unk_00 >> 1];
    MapObject_SetSpritePosOffset(v0->unk_20, &v0->unk_14);

    v0->unk_00 += v0->unk_04;

    if ((v0->unk_00 >= 15) || (v0->unk_00 <= 0)) {
        v0->unk_04 = -v0->unk_04;

        if (v0->unk_00 == 0) {
            v0->unk_08++;

            if (v0->unk_08 >= 3) {
                v0->unk_14.y = v0->unk_0C + v1[v0->unk_00 >> 1];
                *param2 = 4;
            }
        }
    }

    return 0;
}

static int ov9_02250A58(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    UnkStruct_ov9_02250918 *v0 = ov9_0224E39C(param0);
    v0->unk_14.z += (FX32_ONE * 1);

    MapObject_SetSpritePosOffset(v0->unk_20, &v0->unk_14);

    if ((((v0->unk_14.z) >> 4) / FX32_ONE) == 1) {
        *param2 = 5;
    }

    return 0;
}

static int ov9_02250A90(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    UnkStruct_ov9_02250918 *v0 = ov9_0224E39C(param0);

    if (v0->unk_10 < (FX32_ONE * 2)) {
        v0->unk_10 += 0x200;
    }

    v0->unk_14.y -= v0->unk_10;
    MapObject_SetSpritePosOffset(v0->unk_20, &v0->unk_14);

    if ((((v0->unk_14.y) >> 4) / FX32_ONE) <= 0) {
        ov9_0224EE70(param0, v0->unk_20);
        ov9_02249DC8(param0, 10);
        ov9_02249DC8(param0, 13);
        v0->unk_20 = ov9_0224F0D4(param0, 580, (0x80 + 4));
        return 2;
    }

    return 0;
}

static const UnkFuncPtr_ov9_02253BE4 Unk_ov9_02251CC0[6] = {
    ov9_02250918,
    ov9_0225094C,
    ov9_02250994,
    ov9_022509D4,
    ov9_02250A58,
    ov9_02250A90
};

static const MapObjectAnimCmd Unk_ov9_02251E74[] = {
    { 0x42, 0x1 },
    { 0x7, 0x1 },
    { 0x7, 0x1 },
    { 0xA, 0x1 },
    { 0x6, 0x1 },
    { 0x41, 0x1 },
    { 0xfe, 0x0 }
};

static int ov9_02250AFC(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    UnkStruct_ov9_02250AFC *v0 = ov9_0224E37C(param0, sizeof(UnkStruct_ov9_02250AFC));
    v0->unk_14 = ov9_0224F0D4(param0, 579, (0x80 + 4));

    Sound_PlayPokemonCry(SPECIES_AZELF, 0);

    *param2 = 1;
    return 0;
}

static int ov9_02250B30(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    UnkStruct_ov9_02250AFC *v0;
    fx32 v1 = (FX32_ONE * 2);

    v0 = ov9_0224E39C(param0);

    if ((((v0->unk_04.y) >> 4) / FX32_ONE) < 12) {
        v1 <<= 1;
    }

    v0->unk_04.y += v1;
    MapObject_SetSpritePosOffset(v0->unk_14, &v0->unk_04);

    if ((((v0->unk_04.y) >> 4) / FX32_ONE) >= 13) {
        v0->unk_10 = MapObject_StartAnimation(
            v0->unk_14, Unk_ov9_02251E74);
        *param2 = 2;
    }

    return 0;
}

static int ov9_02250B84(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    UnkStruct_ov9_02250AFC *v0 = ov9_0224E39C(param0);

    if (MapObject_HasAnimationEnded(v0->unk_10) == 1) {
        MapObject_FinishAnimation(v0->unk_10);
        *param2 = 3;
        return 1;
    }

    return 0;
}

static int ov9_02250BAC(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    UnkStruct_ov9_02250AFC *v0 = ov9_0224E39C(param0);

    if (v0->unk_00 < (FX32_ONE * 2)) {
        v0->unk_00 += 0x200;
    }

    v0->unk_04.y -= v0->unk_00;
    MapObject_SetSpritePosOffset(v0->unk_14, &v0->unk_04);

    if ((((v0->unk_04.y) >> 4) / FX32_ONE) <= 0) {
        ov9_0224EE70(param0, v0->unk_14);
        ov9_02249DC8(param0, 11);
        ov9_02249DC8(param0, 14);
        v0->unk_14 = ov9_0224F0D4(param0, 580, (0x80 + 5));
        return 2;
    }

    return 0;
}

static const UnkFuncPtr_ov9_02253BE4 Unk_ov9_02251408[4] = {
    ov9_02250AFC,
    ov9_02250B30,
    ov9_02250B84,
    ov9_02250BAC
};

static const MapObjectAnimCmd Unk_ov9_02252D80[] = {
    { 0x42, 0x1 },
    { 0xf, 0x2 },
    { 0x10, 0x2 },
    { 0x13, 0x2 },
    { 0x11, 0x2 },
    { 0x12, 0x2 },
    { 0x10, 0x2 },
    { 0x13, 0x2 },
    { 0x11, 0x2 },
    { 0x12, 0x2 },
    { 0x12, 0x2 },
    { 0xE, 0x1 },
    { 0xA, 0x1 },
    { 0x42, 0x1 },
    { 0xB, 0x2 },
    { 0x7, 0x1 },
    { 0x41, 0x1 },
    { 0xfe, 0x0 }
};

static const MapObjectAnimCmd Unk_ov9_02252DC8[] = {
    { 0x42, 0x1 },
    { 0xf, 0x2 },
    { 0x10, 0x1 },
    { 0x13, 0x2 },
    { 0x11, 0x2 },
    { 0x12, 0x2 },
    { 0x10, 0x2 },
    { 0x13, 0x2 },
    { 0x11, 0x2 },
    { 0x12, 0x2 },
    { 0x10, 0x1 },
    { 0x12, 0x2 },
    { 0xE, 0x1 },
    { 0xA, 0x1 },
    { 0x42, 0x1 },
    { 0xB, 0x2 },
    { 0x7, 0x1 },
    { 0x41, 0x1 },
    { 0xfe, 0x0 }
};

static const MapObjectAnimCmd Unk_ov9_02252E14[] = {
    { 0x42, 0x1 },
    { 0x3f, 0x2 },
    { 0x2, 0x1 },
    { 0x3C, 0x3 },
    { 0x0, 0x1 },
    { 0x3C, 0x3 },
    { 0x3, 0x1 },
    { 0x3C, 0x3 },
    { 0x1, 0x1 },
    { 0x3C, 0x3 },
    { 0x2, 0x1 },
    { 0x3C, 0x3 },
    { 0x0, 0x1 },
    { 0x3C, 0x3 },
    { 0x3, 0x1 },
    { 0x3C, 0x3 },
    { 0x1, 0x1 },
    { 0x3C, 0x3 },
    { 0x2, 0x1 },
    { 0xfe, 0x0 }
};

static const MapObjectAnimCmd Unk_ov9_02252E64[] = {
    { 0x42, 0x1 },
    { 0x3f, 0x2 },
    { 0x2, 0x1 },
    { 0x3C, 0x3 },
    { 0x0, 0x1 },
    { 0x3C, 0x3 },
    { 0x3, 0x1 },
    { 0x3C, 0x3 },
    { 0x1, 0x1 },
    { 0x3C, 0x3 },
    { 0x2, 0x1 },
    { 0x3C, 0x3 },
    { 0x0, 0x1 },
    { 0x3C, 0x3 },
    { 0x3, 0x1 },
    { 0x3C, 0x3 },
    { 0x1, 0x1 },
    { 0x3C, 0x3 },
    { 0x2, 0x1 },
    { 0xfe, 0x0 }
};

static int ov9_02250C14(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    UnkStruct_ov9_02250C14 *v0 = ov9_0224E37C(param0, sizeof(UnkStruct_ov9_02250AFC));
    v0->unk_18 = ov9_0224F0D4(param0, 579, (0x80 + 5));

    Sound_PlayPokemonCry(SPECIES_MESPRIT, 0);
    *param2 = 1;
    return 0;
}

static int ov9_02250C48(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    UnkStruct_ov9_02250C14 *v0;
    fx32 v1 = (FX32_ONE * 2);

    v0 = ov9_0224E39C(param0);

    if ((((v0->unk_04.y) >> 4) / FX32_ONE) < 8) {
        v1 <<= 1;
    }

    v0->unk_04.y += v1;
    MapObject_SetSpritePosOffset(v0->unk_18, &v0->unk_04);

    if ((((v0->unk_04.y) >> 4) / FX32_ONE) >= 9) {
        int v2, v3, v4;
        const MapObjectAnimCmd *v5, *v6;

        GetPlayerPos(param0, &v2, &v3, &v4);

        if (v4 == 67) {
            v5 = Unk_ov9_02252E14;
            v6 = Unk_ov9_02252D80;
        } else {
            v5 = Unk_ov9_02252E64;
            v6 = Unk_ov9_02252DC8;
        }

        v0->unk_10 = MapObject_StartAnimation(v0->unk_18, v6);
        v0->unk_14 = MapObject_StartAnimation(Player_MapObject(param0->fieldSystem->playerAvatar), v5);
        *param2 = 2;
    }

    return 0;
}

static int ov9_02250CD8(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    UnkStruct_ov9_02250C14 *v0 = ov9_0224E39C(param0);

    if ((MapObject_HasAnimationEnded(v0->unk_10) == 1) && (MapObject_HasAnimationEnded(v0->unk_14) == 1)) {
        MapObject_FinishAnimation(v0->unk_10);
        MapObject_FinishAnimation(v0->unk_14);
        *param2 = 3;
        return 1;
    }

    return 0;
}

static int ov9_02250D10(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    UnkStruct_ov9_02250C14 *v0 = ov9_0224E39C(param0);

    if (v0->unk_00 < (FX32_ONE * 2)) {
        v0->unk_00 += 0x200;
    }

    v0->unk_04.y -= v0->unk_00;
    MapObject_SetSpritePosOffset(v0->unk_18, &v0->unk_04);

    if ((((v0->unk_04.y) >> 4) / FX32_ONE) <= 0) {
        ov9_0224EE70(param0, v0->unk_18);
        ov9_02249DC8(param0, 12);
        ov9_02249DC8(param0, 15);
        v0->unk_18 = ov9_0224F0D4(
            param0, 580, (0x80 + 3));
        return 2;
    }

    return 0;
}

static const UnkFuncPtr_ov9_02253BE4 Unk_ov9_02251448[4] = {
    ov9_02250C14,
    ov9_02250C48,
    ov9_02250CD8,
    ov9_02250D10
};

const DistWorldCameraAngleTemplate Unk_ov9_02251D68 = {
    { 0x0, 0x0, 0x0, 0x0 },
    0x10,
    0x0,
    0x0,
    0x0,
    0x14
};

static int ov9_02250D78(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    UnkStruct_ov9_02250D78 *v0 = ov9_0224E37C(param0, sizeof(UnkStruct_ov9_02250D78));

    DoCameraTransition(param0, &Unk_ov9_02251D68);

    v0->unk_02 = 20 + 16;
    v0->unk_00 = 1;
    *param2 = 1;

    return 1;
}

static int ov9_02250DA0(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    UnkStruct_ov9_02250D78 *v0 = ov9_0224E39C(param0);

    v0->unk_02--;

    if (v0->unk_02 <= 0) {
        v0->unk_02 = 48;
        Sound_StopEffect(1484, 0);
        ShowGhostPropGroup(param0, v0->unk_00);
        v0->unk_00++;

        if (v0->unk_00 >= 4) {
            return 2;
        }
    }

    return 0;
}

static const UnkFuncPtr_ov9_02253BE4 Unk_ov9_02251340[2] = {
    ov9_02250D78,
    ov9_02250DA0
};

static int ov9_02250DE8(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    UnkStruct_ov9_02250DE8 *v0 = ov9_0224E37C(param0, sizeof(UnkStruct_ov9_02250DE8));
    v0->unk_02 = 16;
    v0->unk_00 = 3;

    *param2 = 1;
    return 1;
}

static int ov9_02250E00(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    UnkStruct_ov9_02250DE8 *v0 = ov9_0224E39C(param0);

    v0->unk_02--;

    if (v0->unk_02 <= 0) {
        if (v0->unk_00 >= 1) {
            v0->unk_02 = 48;
            Sound_StopEffect(1484, 0);
            HideGhostPropGroup(param0, v0->unk_00);
            v0->unk_00--;
        } else {
            v0->unk_02 = 8;
            *param2 = 2;
        }
    }

    return 0;
}

static int ov9_02250E50(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    UnkStruct_ov9_02250DE8 *v0 = ov9_0224E39C(param0);

    v0->unk_02--;

    if (v0->unk_02 <= 0) {
        return 2;
    }

    return 0;
}

static const UnkFuncPtr_ov9_02253BE4 Unk_ov9_0225139C[3] = {
    ov9_02250DE8,
    ov9_02250E00,
    ov9_02250E50
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

static void ov9_02250EE8(s16 *param0, s16 param1)
{
    (*param0) += param1;

    if ((*param0) < 0) {
        do {
            (*param0) += 360;
        } while ((*param0) < 0);
    } else {
        (*param0) %= 360;
    }
}

static void ov9_02250F1C(fx32 *param0, fx32 param1)
{
    (*param0) += param1;

    if ((*param0) < 0) {
        do {
            (*param0) += (FX32_ONE * 360);
        } while ((*param0) < 0);
    } else {
        (*param0) %= (FX32_ONE * 360);
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

    case FLAG_COND_1:
        if (ov9_02249E00(system, val) != TRUE) {
            return TRUE;
        }

        break;

    case FLAG_COND_2:
        if (ov9_02249E00(system, val) == TRUE) {
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
    UnkStruct_020216E0 *v0 = ov5_021EB1A0(mapObj);

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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B1F_1
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B2F_1
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B3F_1
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B3F_2
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B4F_1
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B4F_2
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B4F_3
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B5F_1
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B5F_3
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B6F_1
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID
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
    .persistedFlag = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B7F_1
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
        .persistedFlagToSet = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B1F_1,
        .persistedFlagToClear = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID,
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
        .persistedFlagToSet = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID,
        .persistedFlagToClear = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B1F_1,
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
        .persistedFlagToSet = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B2F_1,
        .persistedFlagToClear = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID,
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
        .persistedFlagToSet = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID,
        .persistedFlagToClear = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B2F_1,
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
        .persistedFlagToSet = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B3F_1,
        .persistedFlagToClear = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID,
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
        .persistedFlagToSet = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID,
        .persistedFlagToClear = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B3F_1,
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
        .persistedFlagToSet = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B4F_1,
        .persistedFlagToClear = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B3F_2,
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
        .persistedFlagToSet = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B4F_2,
        .persistedFlagToClear = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID,
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
        .persistedFlagToSet = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B5F_3,
        .persistedFlagToClear = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID,
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
        .persistedFlagToSet = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID,
        .persistedFlagToClear = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID,
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
        .persistedFlagToSet = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B3F_2,
        .persistedFlagToClear = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B4F_1,
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
        .persistedFlagToSet = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID,
        .persistedFlagToClear = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B4F_2,
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
        .persistedFlagToSet = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B5F_1,
        .persistedFlagToClear = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B4F_3,
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
        .persistedFlagToSet = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B4F_3,
        .persistedFlagToClear = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B5F_1,
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
        .persistedFlagToSet = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B6F_1,
        .persistedFlagToClear = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID,
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
        .persistedFlagToSet = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID,
        .persistedFlagToClear = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B5F_3,
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
        .persistedFlagToSet = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID,
        .persistedFlagToClear = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID,
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
        .persistedFlagToSet = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID,
        .persistedFlagToClear = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B6F_1,
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
        .persistedFlagToSet = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B7F_1,
        .persistedFlagToClear = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID,
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
        .persistedFlagToSet = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID,
        .persistedFlagToClear = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_B7F_1,
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
        .persistedFlagToSet = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID,
        .persistedFlagToClear = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID,
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
        .persistedFlagToSet = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID,
        .persistedFlagToClear = DIST_WORLD_PERSISTED_MOVING_PLATFORM_FLAG_INVALID,
    },
};

static const UnkFuncPtr_ov9_02253BE4 *Unk_ov9_02253BE4[18] = {
    Unk_ov9_02251360,
    Unk_ov9_022513E8,
    Unk_ov9_02251258,
    Unk_ov9_0225126C,
    Unk_ov9_0225151C,
    Unk_ov9_022512C0,
    Unk_ov9_02251238,
    Unk_ov9_02251328,
    Unk_ov9_0225121C,
    Unk_ov9_02251270,
    Unk_ov9_02251544,
    Unk_ov9_02251490,
    Unk_ov9_02251CC0,
    Unk_ov9_02251408,
    Unk_ov9_02251448,
    Unk_ov9_02251340,
    Unk_ov9_0225139C,
    Unk_ov9_02251254
};

static const UnkStruct_ov9_022506AC Unk_ov9_02251220 = {
    0x4
};

static const UnkStruct_ov9_022506D0 Unk_ov9_0225123C = {
    0x2
};

static const UnkStruct_ov9_02251438 Unk_ov9_02251858[] = {
    { 0x5, &Unk_ov9_02251220 },
    { 0x6, &Unk_ov9_0225123C },
    { 0x12, NULL }
};

static const UnkStruct_ov9_02252044 Unk_ov9_02252044[] = {
    { 0x28, 0x121, 0x34, 0x3, 0x1, Unk_ov9_02251858 },
    { 0x0, 0x0, 0x0, 0x0, NULL }
};

static const UnkStruct_ov9_022506AC Unk_ov9_02251214 = {
    0x3
};

static const UnkStruct_ov9_022506D0 Unk_ov9_0225124C = {
    0x4
};

static const UnkStruct_ov9_0224E860 Unk_ov9_02251248 = {
    0x23F,
    0x80
};

static const UnkStruct_ov9_02251438 Unk_ov9_02252064[] = {
    { 0x5, &Unk_ov9_02251214 },
    { 0x6, &Unk_ov9_0225124C },
    { 0x2, &Unk_ov9_02251248 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_02252044 Unk_ov9_02252084[] = {
    { 0xF, 0x101, 0x3A, 0x3, 0x3, Unk_ov9_02252064 },
    { 0x0, 0x0, 0x0, 0x0, NULL }
};

static const UnkStruct_ov9_0224E550 Unk_ov9_022518B8 = {
    0x1,
    0x1,
    0x1,
    0x0,
    0x0,
    -8,
    { 0x0, 0x0, (FX32_ONE * -4) }
};

static const UnkStruct_ov9_0224E4E8 Unk_ov9_02251308 = {
    0xff,
    0x75
};

static const UnkStruct_ov9_0224E550 Unk_ov9_022518E8 = {
    0x1,
    0x0,
    0x0,
    0x0,
    0x0,
    0x8,
    { 0x0, 0x0, (FX32_ONE * 4) }
};

static const UnkStruct_ov9_02251438 Unk_ov9_022520A4[] = {
    { 0x1, &Unk_ov9_022518B8 },
    { 0x0, &Unk_ov9_02251308 },
    { 0x1, &Unk_ov9_022518E8 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251900 = {
    0x1,
    0x0,
    0x0,
    0x0,
    0x0,
    -8,
    { 0x0, 0x0, (FX32_ONE * -4) }
};

static const UnkStruct_ov9_0224E4E8 Unk_ov9_022512B0 = {
    0xff,
    0x76
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251918 = {
    0x1,
    0x1,
    0x1,
    0x0,
    0x0,
    0x8,
    { 0x0, 0x0, (FX32_ONE * 4) }
};

static const UnkStruct_ov9_02251438 Unk_ov9_022520C4[] = {
    { 0x1, &Unk_ov9_02251900 },
    { 0x0, &Unk_ov9_022512B0 },
    { 0x1, &Unk_ov9_02251918 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251930 = {
    0x2,
    0x1,
    0x1,
    0x0,
    0x0,
    -8,
    { 0x0, 0x0, (FX32_ONE * -4) }
};

static const UnkStruct_ov9_0224E4E8 Unk_ov9_02251338 = {
    0xff,
    0x75
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251948 = {
    0x2,
    0x0,
    0x0,
    0x0,
    0x0,
    0x8,
    { 0x0, 0x0, (FX32_ONE * 4) }
};

static const UnkStruct_ov9_02251438 Unk_ov9_022520E4[] = {
    { 0x1, &Unk_ov9_02251930 },
    { 0x0, &Unk_ov9_02251338 },
    { 0x1, &Unk_ov9_02251948 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251D20 = {
    0x2,
    0x0,
    0x0,
    0x0,
    0x0,
    -8,
    { 0x0, 0x0, (FX32_ONE * -4) }
};

static const UnkStruct_ov9_0224E4E8 Unk_ov9_022512F8 = {
    0xff,
    0x76
};

static const UnkStruct_ov9_0224E550 Unk_ov9_022519A8 = {
    0x2,
    0x1,
    0x1,
    0x0,
    0x0,
    0x8,
    { 0x0, 0x0, (FX32_ONE * 4) }
};

static const UnkStruct_ov9_02251438 Unk_ov9_02252104[] = {
    { 0x1, &Unk_ov9_02251D20 },
    { 0x0, &Unk_ov9_022512F8 },
    { 0x1, &Unk_ov9_022519A8 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_0224E550 Unk_ov9_022519C0 = {
    0x3,
    0x1,
    0x1,
    0x9,
    0x0,
    0x0,
    { (FX32_ONE * 4), 0x0, 0x0 }
};

static const UnkStruct_ov9_0224E4E8 Unk_ov9_02251280 = {
    0xff,
    0x78
};

static const UnkStruct_ov9_0224E550 Unk_ov9_022519D8 = {
    0x3,
    0x0,
    0x0,
    -9,
    0x0,
    0x0,
    { (FX32_ONE * -4), 0x0, 0x0 }
};

static const UnkStruct_ov9_02251438 Unk_ov9_02252124[] = {
    { 0x1, &Unk_ov9_022519C0 },
    { 0x0, &Unk_ov9_02251280 },
    { 0x1, &Unk_ov9_022519D8 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251A08 = {
    0x3,
    0x0,
    0x0,
    0x9,
    0x0,
    0x0,
    { (FX32_ONE * 4), 0x0, 0x0 }
};

static const UnkStruct_ov9_0224E4E8 Unk_ov9_02251320 = {
    0xff,
    0x77
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251A20 = {
    0x3,
    0x1,
    0x1,
    -9,
    0x0,
    0x0,
    { (FX32_ONE * -4), 0x0, 0x0 }
};

static const UnkStruct_ov9_02251438 Unk_ov9_02252144[] = {
    { 0x1, &Unk_ov9_02251A08 },
    { 0x0, &Unk_ov9_02251320 },
    { 0x1, &Unk_ov9_02251A20 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251A38 = {
    0x5,
    0x1,
    0x1,
    0x0,
    0x0,
    0x25,
    { 0x0, 0x0, (FX32_ONE * 4) }
};

static const UnkStruct_ov9_0224E4E8 Unk_ov9_022512C8 = {
    0xff,
    0x76
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251A68 = {
    0x5,
    0x0,
    0x0,
    0x0,
    0x0,
    -37,
    { 0x0, 0x0, (FX32_ONE * -4) }
};

static const UnkStruct_ov9_02251438 Unk_ov9_02252164[] = {
    { 0x1, &Unk_ov9_02251A38 },
    { 0x0, &Unk_ov9_022512C8 },
    { 0x1, &Unk_ov9_02251A68 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251A80 = {
    0x5,
    0x0,
    0x0,
    0x0,
    0x0,
    0x25,
    { 0x0, 0x0, (FX32_ONE * 4) }
};

static const UnkStruct_ov9_0224E4E8 Unk_ov9_022512D8 = {
    0xff,
    0x75
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251AB0 = {
    0x5,
    0x1,
    0x1,
    0x0,
    0x0,
    -37,
    { 0x0, 0x0, (FX32_ONE * -4) }
};

static const UnkStruct_ov9_02251438 Unk_ov9_02252184[] = {
    { 0x1, &Unk_ov9_02251A80 },
    { 0x0, &Unk_ov9_022512D8 },
    { 0x1, &Unk_ov9_02251AB0 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251AC8 = {
    0x6,
    0x1,
    0x1,
    0x9,
    0x0,
    0x0,
    { (FX32_ONE * 4), 0x0, 0x0 }
};

static const UnkStruct_ov9_0224E4E8 Unk_ov9_022512F0 = {
    0xff,
    0x78
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251AE0 = {
    0x6,
    0x0,
    0x0,
    -9,
    0x0,
    0x0,
    { (FX32_ONE * -4), 0x0, 0x0 }
};

static const UnkStruct_ov9_02251438 Unk_ov9_022521A4[] = {
    { 0x1, &Unk_ov9_02251AC8 },
    { 0x0, &Unk_ov9_022512F0 },
    { 0x1, &Unk_ov9_02251AE0 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251AF8 = {
    0x6,
    0x0,
    0x0,
    0x9,
    0x0,
    0x0,
    { (FX32_ONE * 4), 0x0, 0x0 }
};

static const UnkStruct_ov9_0224E4E8 Unk_ov9_02251348 = {
    0xff,
    0x77
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251B28 = {
    0x6,
    0x1,
    0x1,
    -9,
    0x0,
    0x0,
    { (FX32_ONE * -4), 0x0, 0x0 }
};

static const UnkStruct_ov9_02251438 Unk_ov9_022521C4[] = {
    { 0x1, &Unk_ov9_02251AF8 },
    { 0x0, &Unk_ov9_02251348 },
    { 0x1, &Unk_ov9_02251B28 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251B58 = {
    0x9,
    0x1,
    0x2,
    0x9,
    0x0,
    0x0,
    { (FX32_ONE * 4), 0x0, 0x0 }
};

static const UnkStruct_ov9_0224E4E8 Unk_ov9_02251318 = {
    0xff,
    0x78
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251B88 = {
    0x9,
    0x0,
    0x2,
    -9,
    0x0,
    0x0,
    { (FX32_ONE * -4), 0x0, 0x0 }
};

static const UnkStruct_ov9_02251438 Unk_ov9_02252204[] = {
    { 0x1, &Unk_ov9_02251B58 },
    { 0x0, &Unk_ov9_02251318 },
    { 0x1, &Unk_ov9_02251B88 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251D38 = {
    0x9,
    0x0,
    0x2,
    0x9,
    0x0,
    0x0,
    { (FX32_ONE * 4), 0x0, 0x0 }
};

static const UnkStruct_ov9_0224E4E8 Unk_ov9_022512B8 = {
    0xff,
    0x77
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251BD0 = {
    0x9,
    0x1,
    0x2,
    -9,
    0x0,
    0x0,
    { (FX32_ONE * -4), 0x0, 0x0 }
};

static const UnkStruct_ov9_02251438 Unk_ov9_02252364[] = {
    { 0x1, &Unk_ov9_02251D38 },
    { 0x0, &Unk_ov9_022512B8 },
    { 0x1, &Unk_ov9_02251BD0 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251BE8 = {
    0xA,
    0x1,
    0x2,
    0x9,
    0x0,
    0x0,
    { (FX32_ONE * 4), 0x0, 0x0 }
};

static const UnkStruct_ov9_0224E4E8 Unk_ov9_02251300 = {
    0xff,
    0x78
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251C30 = {
    0xA,
    0x0,
    0x2,
    -9,
    0x0,
    0x0,
    { (FX32_ONE * -4), 0x0, 0x0 }
};

static const UnkStruct_ov9_02251438 Unk_ov9_02252244[] = {
    { 0x1, &Unk_ov9_02251BE8 },
    { 0x0, &Unk_ov9_02251300 },
    { 0x1, &Unk_ov9_02251C30 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251C60 = {
    0xA,
    0x0,
    0x2,
    0x9,
    0x0,
    0x0,
    { (FX32_ONE * 4), 0x0, 0x0 }
};

static const UnkStruct_ov9_0224E4E8 Unk_ov9_022512E0 = {
    0xff,
    0x77
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251C78 = {
    0xA,
    0x1,
    0x2,
    -9,
    0x0,
    0x0,
    { (FX32_ONE * -4), 0x0, 0x0 }
};

static const UnkStruct_ov9_02251438 Unk_ov9_02252264[] = {
    { 0x1, &Unk_ov9_02251C60 },
    { 0x0, &Unk_ov9_022512E0 },
    { 0x1, &Unk_ov9_02251C78 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251C18 = {
    0xB,
    0x1,
    0x2,
    0x0,
    0x0,
    0x17,
    { 0x0, 0x0, (FX32_ONE * 4) }
};

static const UnkStruct_ov9_0224E4E8 Unk_ov9_02251310 = {
    0xff,
    0x76
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251D08 = {
    0xB,
    0x0,
    0x2,
    0x0,
    0x0,
    -23,
    { 0x0, 0x0, (FX32_ONE * -4) }
};

static const UnkStruct_ov9_02251438 Unk_ov9_022522E4[] = {
    { 0x1, &Unk_ov9_02251C18 },
    { 0x0, &Unk_ov9_02251310 },
    { 0x1, &Unk_ov9_02251D08 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251D50 = {
    0xB,
    0x0,
    0x2,
    0x0,
    0x0,
    0x17,
    { 0x0, 0x0, (FX32_ONE * 4) }
};

static const UnkStruct_ov9_0224E4E8 Unk_ov9_022512D0 = {
    0xff,
    0x75
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251D98 = {
    0xB,
    0x1,
    0x2,
    0x0,
    0x0,
    -23,
    { 0x0, 0x0, (FX32_ONE * -4) }
};

static const UnkStruct_ov9_02251438 Unk_ov9_02252304[] = {
    { 0x1, &Unk_ov9_02251D50 },
    { 0x0, &Unk_ov9_022512D0 },
    { 0x1, &Unk_ov9_02251D98 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_0224E550 Unk_ov9_022518A0 = {
    0xC,
    0x1,
    0x2,
    -9,
    0x0,
    0x0,
    { (FX32_ONE * -4), 0x0, 0x0 }
};

static const UnkStruct_ov9_0224E4E8 Unk_ov9_02251288 = {
    0xff,
    0x77
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251DF8 = {
    0xC,
    0x0,
    0x2,
    0x9,
    0x0,
    0x0,
    { (FX32_ONE * 4), 0x0, 0x0 }
};

static const UnkStruct_ov9_02251438 Unk_ov9_02252324[] = {
    { 0x1, &Unk_ov9_022518A0 },
    { 0x0, &Unk_ov9_02251288 },
    { 0x1, &Unk_ov9_02251DF8 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251E28 = {
    0xC,
    0x0,
    0x2,
    -9,
    0x0,
    0x0,
    { (FX32_ONE * -4), 0x0, 0x0 }
};

static const UnkStruct_ov9_0224E4E8 Unk_ov9_02251290 = {
    0xff,
    0x78
};

static const UnkStruct_ov9_0224E550 Unk_ov9_022517E0 = {
    0xC,
    0x1,
    0x2,
    0x9,
    0x0,
    0x0,
    { (FX32_ONE * 4), 0x0, 0x0 }
};

static const UnkStruct_ov9_02251438 Unk_ov9_02251EE4[] = {
    { 0x1, &Unk_ov9_02251E28 },
    { 0x0, &Unk_ov9_02251290 },
    { 0x1, &Unk_ov9_022517E0 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_0224E550 Unk_ov9_022517B0 = {
    0xD,
    0x1,
    0x2,
    -17,
    0x0,
    0x0,
    { (FX32_ONE * -4), 0x0, 0x0 }
};

static const UnkStruct_ov9_0224E4E8 Unk_ov9_02251358 = {
    0xff,
    0x77
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251780 = {
    0xD,
    0x0,
    0x2,
    0x11,
    0x0,
    0x0,
    { (FX32_ONE * 4), 0x0, 0x0 }
};

static const UnkStruct_ov9_02251438 Unk_ov9_02251F04[] = {
    { 0x1, &Unk_ov9_022517B0 },
    { 0x0, &Unk_ov9_02251358 },
    { 0x1, &Unk_ov9_02251780 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_0224E550 Unk_ov9_022515B8 = {
    0xD,
    0x0,
    0x2,
    -17,
    0x0,
    0x0,
    { (FX32_ONE * -4), 0x0, 0x0 }
};

static const UnkStruct_ov9_0224E4E8 Unk_ov9_02251298 = {
    0xff,
    0x78
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251720 = {
    0xD,
    0x1,
    0x2,
    0x11,
    0x0,
    0x0,
    { (FX32_ONE * 4), 0x0, 0x0 }
};

static const UnkStruct_ov9_02251438 Unk_ov9_02251F64[] = {
    { 0x1, &Unk_ov9_022515B8 },
    { 0x0, &Unk_ov9_02251298 },
    { 0x1, &Unk_ov9_02251720 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_0224E550 Unk_ov9_022516F0 = {
    0x11,
    0x1,
    0x1,
    0x0,
    -8,
    0x0,
    { 0x0, (FX32_ONE * -2), 0x0 }
};

static const UnkStruct_ov9_0224E4E8 Unk_ov9_02251330 = {
    0xff,
    0x75
};

static const UnkStruct_ov9_0224E550 Unk_ov9_022516C0 = {
    0x11,
    0x0,
    0x1,
    0x0,
    0x8,
    0x0,
    { 0x0, (FX32_ONE * 2), 0x0 }
};

static const UnkStruct_ov9_02251438 Unk_ov9_02251FC4[] = {
    { 0x1, &Unk_ov9_022516F0 },
    { 0x0, &Unk_ov9_02251330 },
    { 0x1, &Unk_ov9_022516C0 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251660 = {
    0x11,
    0x0,
    0x1,
    0x0,
    -8,
    0x0,
    { 0x0, (FX32_ONE * -2), 0x0 }
};

static const UnkStruct_ov9_0224E4E8 Unk_ov9_022512E8 = {
    0xff,
    0x76
};

static const UnkStruct_ov9_0224E550 Unk_ov9_022516A8 = {
    0x11,
    0x1,
    0x1,
    0x0,
    0x8,
    0x0,
    { 0x0, (FX32_ONE * 2), 0x0 }
};

static const UnkStruct_ov9_02251438 Unk_ov9_02251FE4[] = {
    { 0x1, &Unk_ov9_02251660 },
    { 0x0, &Unk_ov9_022512E8 },
    { 0x1, &Unk_ov9_022516A8 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251738 = {
    0x10,
    0x1,
    0x1,
    0x0,
    -8,
    0x0,
    { 0x0, (FX32_ONE * -2), 0x0 }
};

static const UnkStruct_ov9_0224E4E8 Unk_ov9_022512A8 = {
    0xff,
    0x78
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251798 = {
    0x10,
    0x0,
    0x1,
    0x0,
    0x8,
    0x0,
    { 0x0, (FX32_ONE * 2), 0x0 }
};

static const UnkStruct_ov9_02251438 Unk_ov9_02252004[] = {
    { 0x1, &Unk_ov9_02251738 },
    { 0x0, &Unk_ov9_022512A8 },
    { 0x1, &Unk_ov9_02251798 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251810 = {
    0x10,
    0x0,
    0x1,
    0x0,
    -8,
    0x0,
    { 0x0, (FX32_ONE * -2), 0x0 }
};

static const UnkStruct_ov9_0224E4E8 Unk_ov9_02251278 = {
    0xff,
    0x77
};

static const UnkStruct_ov9_0224E550 Unk_ov9_02251840 = {
    0x10,
    0x1,
    0x1,
    0x0,
    0x8,
    0x0,
    { 0x0, (FX32_ONE * 2), 0x0 }
};

static const UnkStruct_ov9_02251438 Unk_ov9_02252024[] = {
    { 0x1, &Unk_ov9_02251810 },
    { 0x0, &Unk_ov9_02251278 },
    { 0x1, &Unk_ov9_02251840 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_02252044 Unk_ov9_022534F0[] = {
    { 0x21, 0xE1, 0x24, 0x0, 0x0, Unk_ov9_022520A4 },
    { 0x21, 0xE1, 0x19, 0x0, 0x0, Unk_ov9_022520C4 },
    { 0x21, 0xE1, 0x15, 0x0, 0x0, Unk_ov9_022520E4 },
    { 0x21, 0xE1, 0xA, 0x0, 0x0, Unk_ov9_02252104 },
    { 0x23, 0xE1, 0x8, 0x0, 0x0, Unk_ov9_02252124 },
    { 0x2F, 0xE1, 0x8, 0x0, 0x0, Unk_ov9_02252144 },
    { 0x38, 0xE1, 0xA, 0x0, 0x0, Unk_ov9_02252164 },
    { 0x38, 0xE1, 0x32, 0x0, 0x0, Unk_ov9_02252184 },
    { 0x33, 0xE1, 0x1F, 0x0, 0x0, Unk_ov9_022521A4 },
    { 0x3F, 0xE1, 0x1F, 0x0, 0x0, Unk_ov9_022521C4 },
    { 0x23, 0xE9, 0xF, 0x0, 0x0, Unk_ov9_02252204 },
    { 0x2F, 0xE9, 0xF, 0x0, 0x0, Unk_ov9_02252364 },
    { 0x33, 0xE9, 0xF, 0x0, 0x0, Unk_ov9_02252244 },
    { 0x3F, 0xE9, 0xF, 0x0, 0x0, Unk_ov9_02252264 },
    { 0x41, 0xE9, 0x11, 0x0, 0x0, Unk_ov9_022522E4 },
    { 0x41, 0xE9, 0x2B, 0x0, 0x0, Unk_ov9_02252304 },
    { 0x3F, 0xE9, 0x2D, 0x0, 0x0, Unk_ov9_02252324 },
    { 0x33, 0xE9, 0x2D, 0x0, 0x0, Unk_ov9_02251EE4 },
    { 0x3F, 0xE9, 0x34, 0x0, 0x0, Unk_ov9_02251F04 },
    { 0x2B, 0xE9, 0x34, 0x0, 0x0, Unk_ov9_02251F64 },
    { 0x31, 0xE9, 0x24, 0x0, 0x0, Unk_ov9_02251FC4 },
    { 0x31, 0xE1, 0x21, 0x0, 0x0, Unk_ov9_02251FE4 },
    { 0x1C, 0xE9, 0x26, 0x0, 0x0, Unk_ov9_02252004 },
    { 0x1F, 0xE1, 0x26, 0x0, 0x0, Unk_ov9_02252024 },
    { 0x0, 0x0, 0x0, 0x0, NULL }
};

static const UnkStruct_ov9_022506AC Unk_ov9_02251250 = {
    0x2
};

static const UnkStruct_ov9_022506D0 Unk_ov9_02251244 = {
    0x6
};

static const UnkStruct_ov9_02251438 Unk_ov9_022518D0[] = {
    { 0x5, &Unk_ov9_02251250 },
    { 0x6, &Unk_ov9_02251244 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_02252044 Unk_ov9_02252BD8[] = {
    { 0x41, 0xC1, 0x29, 0x3, 0x4, Unk_ov9_022518D0 },
    { 0x41, 0xC1, 0x29, 0x3, 0x5, Unk_ov9_022518D0 },
    { 0x0, 0x0, 0x0, 0x0, NULL }
};

static const UnkStruct_ov9_02252384 Unk_ov9_02252384 = {
    {
        0x1,
        0x1,
        0x0,
        -42,
        0x0,
        0x0,
        -664,
        0x0,
        0x0,
        -21,
        0x0,
        { 0x0, (FX32_ONE * -1), 0x0 },
    },
};

static const UnkStruct_ov9_02251438 Unk_ov9_02251438[] = {
    { 0xA, &Unk_ov9_02252384 },
    { 0x12, NULL },
};

static const DistWorldGiratinaShadowTemplate Unk_ov9_022523A8 = {
    .initialTileX = 63,
    .initialTileY = 169,
    .initialTileZ = 9,
    .rotAnglesIndex = 1,
    .soundKind = GIRATINA_SHADOW_PROP_SFX_KIND_CRY,
    .scale = { FX32_ONE, FX32_ONE, FX32_ONE },
    .posDelta = { 0, 0, FX32_ONE * 48 },
    .movementAnimSteps = 64,
};

static const UnkStruct_ov9_022506EC Unk_ov9_02251274 = {
    0x0
};

static const UnkStruct_ov9_02251438 Unk_ov9_02251960[] = {
    { 0x7, &Unk_ov9_022523A8 },
    { 0x8, &Unk_ov9_02251274 },
    { 0x12, NULL }
};

static const DistWorldGiratinaShadowTemplate Unk_ov9_022523CC = {
    .initialTileX = 42,
    .initialTileY = 137,
    .initialTileZ = 32,
    .rotAnglesIndex = 3,
    .soundKind = GIRATINA_SHADOW_PROP_SFX_KIND_CRY,
    .scale = { FX32_ONE, FX32_ONE, FX32_ONE },
    .posDelta = { FX32_ONE * 48, 0, 0 },
    .movementAnimSteps = 72
};

static const UnkStruct_ov9_022506EC Unk_ov9_02251228 = {
    0x1
};

static const UnkStruct_ov9_02251438 Unk_ov9_022519F0[] = {
    { 0x7, &Unk_ov9_022523CC },
    { 0x8, &Unk_ov9_02251228 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_02252044 Unk_ov9_02252C78[] = {
    { 0x41, 0xA1, 0x39, 0x7, 0x0, Unk_ov9_02251960 },
    { 0x62, 0xA1, 0x38, 0x7, 0x1, Unk_ov9_022519F0 },
    { 0x62, 0xA1, 0x39, 0x7, 0x1, Unk_ov9_022519F0 },
    { 0x0, 0x0, 0x0, 0x0, NULL }
};

static const UnkStruct_ov9_022523F0 Unk_ov9_022523F0 = {
    {
        0x1,
        0x0,
        0x0,
        0x2A,
        0x0,
        0x0,
        0x298,
        0x0,
        0x0,
        0x14,
        0x0,
        { 0x0, (FX32_ONE * 8), 0x0 },
    },
};

static const UnkStruct_ov9_02251438 Unk_ov9_022513D8[] = {
    { 0x4, &Unk_ov9_022523F0 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_02251438 Unk_ov9_022513C8[] = {
    { 0xC, NULL },
    { 0x12, NULL }
};

static const UnkStruct_ov9_02251438 Unk_ov9_022513B8[] = {
    { 0xD, NULL },
    { 0x12, NULL }
};

static const UnkStruct_ov9_02251438 Unk_ov9_022513F8[] = {
    { 0xE, NULL },
    { 0x12, NULL }
};

static const UnkStruct_ov9_02252044 Unk_ov9_02253034[] = {
    { 0x56, 0x81, 0x35, 0x1, 0xA, Unk_ov9_022513C8 },
    { 0x57, 0x81, 0x35, 0x1, 0xA, Unk_ov9_022513C8 },
    { 0x64, 0x81, 0x43, 0x1, 0xB, Unk_ov9_022513B8 },
    { 0x64, 0x81, 0x44, 0x1, 0xB, Unk_ov9_022513B8 },
    { 0x50, 0x81, 0x43, 0x1, 0xC, Unk_ov9_022513F8 },
    { 0x50, 0x81, 0x44, 0x1, 0xC, Unk_ov9_022513F8 },
    { 0x0, 0x0, 0x0, 0x0, NULL }
};

static const UnkStruct_ov9_022506AC Unk_ov9_0225125C = {
    0x4
};

static const UnkStruct_ov9_022506D0 Unk_ov9_02251234 = {
    0x9
};

static const UnkStruct_ov9_02251438 Unk_ov9_02251B40[] = {
    { 0x5, &Unk_ov9_0225125C },
    { 0x6, &Unk_ov9_02251234 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_02252044 Unk_ov9_02252CB8[] = {
    { 0x54, 0x41, 0x4C, 0x3, 0x8, Unk_ov9_02251B40 },
    { 0x55, 0x41, 0x4C, 0x3, 0x8, Unk_ov9_02251B40 },
    { 0x56, 0x41, 0x4C, 0x3, 0x8, Unk_ov9_02251B40 },
    { 0x0, 0x0, 0x0, 0x0, NULL }
};

static const UnkStruct_ov9_02250704 Unk_ov9_02251260 = {
    0x10
};

static const UnkStruct_ov9_02251438 Unk_ov9_02251BA0[] = {
    { 0xF, NULL },
    { 0x9, &Unk_ov9_02251260 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_02250704 Unk_ov9_02251268 = {
    0x10
};

static const UnkStruct_ov9_02251438 Unk_ov9_02251C00[] = {
    { 0x10, NULL },
    { 0x11, &Unk_ov9_02251268 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_022506AC Unk_ov9_02251240 = {
    0x7
};

static const DistWorldGiratinaShadowTemplate Unk_ov9_02252438 = {
    .initialTileX = -9,
    .initialTileY = -4,
    .initialTileZ = 22,
    .rotAnglesIndex = 3,
    .soundKind = GIRATINA_SHADOW_PROP_SFX_KIND_NONE,
    .scale = { FX32_ONE / 4, FX32_ONE / 4, FX32_ONE / 4 },
    .posDelta = { FX32_ONE * 16, 0, 0 },
    .movementAnimSteps = 48
};

static const UnkStruct_ov9_022506D0 Unk_ov9_02251264 = {
    0xB
};

static const UnkStruct_ov9_02251438 Unk_ov9_022522C4[] = {
    { 0x5, &Unk_ov9_02251240 },
    { 0x7, &Unk_ov9_02252438 },
    { 0x6, &Unk_ov9_02251264 },
    { 0x12, NULL }
};

static const DistWorldGiratinaShadowTemplate Unk_ov9_0225245C = {
    .initialTileX = 15,
    .initialTileY = -34,
    .initialTileZ = 8,
    .rotAnglesIndex = 4,
    .soundKind = GIRATINA_SHADOW_PROP_SFX_KIND_FLEE,
    .scale = { FX32_ONE / 2, FX32_ONE / 2, FX32_ONE / 2 },
    .posDelta = { 0, FX32_ONE * 32, FX32_ONE * 2 },
    .movementAnimSteps = 32
};

static const UnkStruct_ov9_022506D0 Unk_ov9_02251230 = {
    0xC
};

static const UnkStruct_ov9_02251438 Unk_ov9_02251DB0[] = {
    { 0x7, &Unk_ov9_0225245C },
    { 0x6, &Unk_ov9_02251230 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_022506D0 Unk_ov9_0225122C = {
    0xD
};

static const UnkStruct_ov9_022506AC Unk_ov9_02251218 = {
    0x8
};

static const UnkStruct_ov9_02251438 Unk_ov9_02252344[] = {
    { 0x6, &Unk_ov9_0225122C },
    { 0xB, NULL },
    { 0x5, &Unk_ov9_02251218 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_02252044 Unk_ov9_02252F0C[] = {
    { 0xF, 0x1, 0x17, 0x1, 0x10, Unk_ov9_02251BA0 },
    { 0xF, 0x1, 0x18, 0x2, 0x10, Unk_ov9_02251C00 },
    { 0xF, 0x1, 0x18, 0x3, 0xA, Unk_ov9_022522C4 },
    { 0xF, 0x1, 0x11, 0x3, 0xB, Unk_ov9_02251DB0 },
    { 0xF, 0x1, 0xE, 0x3, 0xC, Unk_ov9_02252344 },
    { 0x0, 0x0, 0x0, 0x0, NULL }
};

static const UnkStruct_ov9_02252D38 Unk_ov9_02252D38[] = {
    { 0x23D, Unk_ov9_02252044 },
    { 0x23E, Unk_ov9_02252084 },
    { 0x23F, Unk_ov9_022534F0 },
    { 0x240, Unk_ov9_02252BD8 },
    { 0x241, Unk_ov9_02252C78 },
    { 0x243, Unk_ov9_02253034 },
    { 0x245, Unk_ov9_02252CB8 },
    { 0x246, Unk_ov9_02252F0C },
    { 0x251, NULL }
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

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252598 = {
    0x6,
    0x0,
    0x0,
    0x0,
    {
        0x80,
        0x8A,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x37,
        0x28,
        ((289 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_022525E8 = {
    0x4,
    0x2,
    0x0,
    0x0,
    {
        0x81,
        0x8A,
        0x0,
        0x0,
        0x0,
        0x5,
        0x3,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x27,
        0x34,
        ((289 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 *Unk_ov9_02253B34[] = {
    &Unk_ov9_02252598,
    &Unk_ov9_022525E8,
    NULL
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252638 = {
    0x6,
    0x0,
    0x0,
    0x0,
    {
        0x81,
        0x108,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0xC,
        0x39,
        ((257 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 *Unk_ov9_02253B08[] = {
    &Unk_ov9_02252638,
    NULL
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_022526D8 = {
    0x3,
    0x4,
    0x1,
    0x5A,
    {
        0x80,
        0x8A,
        0x0,
        0x0,
        0x0,
        0x2,
        0x1,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1E,
        0x14,
        ((233 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252728 = {
    0x3,
    0x5,
    0x1,
    0x5A,
    {
        0x80,
        0x8A,
        0x0,
        0x0,
        0x0,
        0x2,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1E,
        0x14,
        ((232 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 *Unk_ov9_02253B58[] = {
    &Unk_ov9_022526D8,
    &Unk_ov9_02252728,
    NULL
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_022527A0 = {
    0x6,
    0x0,
    0x0,
    0x0,
    {
        0x80,
        0x78,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x41,
        0x31,
        ((193 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 *Unk_ov9_02253B20[] = {
    &Unk_ov9_022527A0,
    NULL
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_022527F0 = {
    0x8,
    0x0,
    0x0,
    0x0,
    {
        0x86,
        0x78,
        0x43,
        0x0,
        0x0,
        0x0,
        0x2,
        0x0,
        0x0,
        0x0,
        0x1,
        0x0,
        0x59,
        0x40,
        ((161 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 *Unk_ov9_02253B18[] = {
    &Unk_ov9_022527F0,
    NULL
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252840 = {
    0x2,
    0x0,
    0x0,
    0x0,
    {
        0x80,
        0x54,
        0x0,
        0x0,
        0x0,
        0x2712,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x4B,
        0x44,
        ((129 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252890 = {
    0x2,
    0x1,
    0x0,
    0x0,
    {
        0x81,
        0x54,
        0x0,
        0x0,
        0x0,
        0x2712,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x62,
        0x43,
        ((129 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_022528B8 = {
    0x2,
    0x2,
    0x0,
    0x0,
    {
        0x82,
        0x54,
        0x0,
        0x0,
        0x0,
        0x2712,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x56,
        0x38,
        ((129 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252908 = {
    0x6,
    0x0,
    0x0,
    0x0,
    {
        0x83,
        0x97,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x56,
        0x3A,
        (((129 - 16) << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252958 = {
    0x6,
    0x0,
    0x0,
    0x0,
    {
        0x84,
        0x99,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x60,
        0x43,
        (((129 - 12) << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_022529A8 = {
    0x6,
    0x0,
    0x0,
    0x0,
    {
        0x85,
        0x98,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x4D,
        0x44,
        (((129 - 8) << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 *Unk_ov9_02253BC8[] = {
    &Unk_ov9_02252840,
    &Unk_ov9_02252890,
    &Unk_ov9_022528B8,
    &Unk_ov9_02252908,
    &Unk_ov9_02252958,
    &Unk_ov9_022529A8,
    NULL
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252A20 = {
    0x2,
    0x3,
    0x0,
    0x0,
    {
        0x80,
        0x54,
        0x0,
        0x0,
        0x0,
        0x2712,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x4B,
        0x44,
        ((115 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252A70 = {
    0x2,
    0x4,
    0x0,
    0x0,
    {
        0x81,
        0x54,
        0x0,
        0x0,
        0x0,
        0x2712,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x62,
        0x43,
        ((115 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252AC0 = {
    0x2,
    0x5,
    0x0,
    0x0,
    {
        0x82,
        0x54,
        0x0,
        0x0,
        0x0,
        0x2712,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x56,
        0x38,
        ((115 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252AE8 = {
    0x2,
    0xF,
    0x0,
    0x0,
    {
        0x83,
        0x10A,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x44,
        0x40,
        ((115 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252B10 = {
    0x2,
    0xD,
    0x0,
    0x0,
    {
        0x84,
        0x109,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x52,
        0x3C,
        ((115 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252B38 = {
    0x2,
    0xE,
    0x0,
    0x0,
    {
        0x85,
        0x10B,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x60,
        0x47,
        ((115 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252480 = {
    0x3,
    0x6,
    0x0,
    0x0,
    {
        0x86,
        0x8A,
        0x0,
        0x0,
        0x0,
        0x2,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x55,
        0x50,
        ((115 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_022524F8 = {
    0x3,
    0x7,
    0x0,
    0x0,
    {
        0x86,
        0x8A,
        0x0,
        0x0,
        0x0,
        0x2,
        0x3,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x54,
        0x54,
        ((115 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252520 = {
    0x0,
    0x0,
    0x0,
    0x0,
    {
        0x87,
        0x2000,
        0x0,
        0x0,
        0x0,
        0x8,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x44,
        0x43,
        ((115 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252570 = {
    0x0,
    0x0,
    0x0,
    0x0,
    {
        0x88,
        0x2000,
        0x0,
        0x0,
        0x0,
        0x8,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x4B,
        0x43,
        ((115 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252610 = {
    0x0,
    0x0,
    0x0,
    0x0,
    {
        0x89,
        0x2000,
        0x0,
        0x0,
        0x0,
        0x8,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x4F,
        0x43,
        ((115 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252660 = {
    0x0,
    0x0,
    0x0,
    0x0,
    {
        0x8A,
        0x2000,
        0x0,
        0x0,
        0x0,
        0x8,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x55,
        0x34,
        ((115 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252750 = {
    0x0,
    0x0,
    0x0,
    0x0,
    {
        0x8B,
        0x2000,
        0x0,
        0x0,
        0x0,
        0x8,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x55,
        0x38,
        ((115 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_022527C8 = {
    0x0,
    0x0,
    0x0,
    0x0,
    {
        0x8C,
        0x2000,
        0x0,
        0x0,
        0x0,
        0x8,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x55,
        0x3C,
        ((115 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252818 = {
    0x0,
    0x0,
    0x0,
    0x0,
    {
        0x8D,
        0x2000,
        0x0,
        0x0,
        0x0,
        0x8,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x60,
        0x44,
        ((115 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252868 = {
    0x0,
    0x0,
    0x0,
    0x0,
    {
        0x8E,
        0x2000,
        0x0,
        0x0,
        0x0,
        0x8,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x64,
        0x44,
        ((115 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_022528E0 = {
    0x0,
    0x0,
    0x0,
    0x0,
    {
        0x8F,
        0x2000,
        0x0,
        0x0,
        0x0,
        0x8,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x69,
        0x44,
        ((115 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252930 = {
    0x2,
    0x6,
    0x0,
    0x0,
    {
        0x90,
        0x54,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x44,
        0x42,
        ((113 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_022529D0 = {
    0x2,
    0x7,
    0x0,
    0x0,
    {
        0x91,
        0x54,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x60,
        0x45,
        ((113 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252A48 = {
    0x2,
    0x8,
    0x0,
    0x0,
    {
        0x92,
        0x54,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x54,
        0x3C,
        ((113 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 *Unk_ov9_02253C78[] = {
    &Unk_ov9_02252A20,
    &Unk_ov9_02252A70,
    &Unk_ov9_02252AC0,
    &Unk_ov9_02252AE8,
    &Unk_ov9_02252B10,
    &Unk_ov9_02252B38,
    &Unk_ov9_02252480,
    &Unk_ov9_022524F8,
    &Unk_ov9_02252520,
    &Unk_ov9_02252570,
    &Unk_ov9_02252610,
    &Unk_ov9_02252660,
    &Unk_ov9_02252750,
    &Unk_ov9_022527C8,
    &Unk_ov9_02252818,
    &Unk_ov9_02252868,
    &Unk_ov9_022528E0,
    &Unk_ov9_02252930,
    &Unk_ov9_022529D0,
    &Unk_ov9_02252A48,
    NULL
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252B88 = {
    0x3,
    0x8,
    0x0,
    0x0,
    {
        0x80,
        0x8A,
        0x0,
        0x0,
        0x0,
        0x6,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x55,
        0x4A,
        ((65 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_022524A8 = {
    0x3,
    0x9,
    0x0,
    0x0,
    {
        0x80,
        0x8A,
        0x0,
        0x0,
        0x0,
        0x6,
        0x3,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x54,
        0x4A,
        ((65 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_022525C0 = {
    0x5,
    0xA,
    0x0,
    0x0,
    {
        0x80,
        0x8A,
        0x0,
        0x0,
        0x0,
        0x6,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x59,
        0x45,
        ((65 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252688 = {
    0x4,
    0x8,
    0x0,
    0x0,
    {
        0x81,
        0x78,
        0x0,
        0x0,
        0x0,
        0x5,
        0x1,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x55,
        0x46,
        ((65 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252700 = {
    0x3,
    0x9,
    0x0,
    0x0,
    {
        0x81,
        0x78,
        0x0,
        0x0,
        0x0,
        0x5,
        0x2,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x55,
        0x4A,
        ((65 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 *Unk_ov9_02253B98[] = {
    &Unk_ov9_02252B88,
    &Unk_ov9_022524A8,
    &Unk_ov9_022525C0,
    &Unk_ov9_02252688,
    &Unk_ov9_02252700,
    NULL
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252980 = {
    0x3,
    0xD,
    0x0,
    0x0,
    {
        0x80,
        0xE6,
        0x0,
        0x0,
        0x0,
        0x5,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0xF,
        0xD,
        ((1 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252A98 = {
    0x6,
    0x0,
    0x0,
    0x0,
    {
        0x81,
        0x8A,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0xF,
        0x17,
        ((1 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252B60 = {
    0x6,
    0x0,
    0x0,
    0x0,
    {
        0x82,
        0x78,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0xF,
        0x17,
        ((1 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_022524D0 = {
    0x3,
    0xE,
    0x0,
    0x0,
    {
        0x83,
        0x2000,
        0x0,
        0x0,
        0x0,
        0x3,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0xF,
        0xD,
        ((1 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_022526B0 = {
    0x3,
    0xE,
    0x0,
    0x0,
    {
        0x84,
        0x2000,
        0x0,
        0x0,
        0x0,
        0x6,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0xF,
        0xF,
        ((1 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 *Unk_ov9_02253BB0[] = {
    &Unk_ov9_02252980,
    &Unk_ov9_02252A98,
    &Unk_ov9_02252B60,
    &Unk_ov9_022524D0,
    &Unk_ov9_022526B0,
    NULL
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252BB0 = {
    0x0,
    0x0,
    0x0,
    0x0,
    {
        0x80,
        0x2000,
        0x0,
        0x0,
        0x0,
        0x2,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x74,
        0x4A,
        ((65 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 Unk_ov9_02252778 = {
    0x0,
    0x0,
    0x0,
    0x0,
    {
        0x81,
        0x57,
        0x0,
        0x0,
        0x538,
        0x1C99,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x59,
        0x37,
        ((65 << 4) * FX32_ONE),
    },
};

static const UnkStruct_ov9_0224EF30 *Unk_ov9_02253B40[] = {
    &Unk_ov9_02252BB0,
    &Unk_ov9_02252778,
    NULL
};

static const UnkStruct_ov9_02252EB4 Unk_ov9_02252EB4[] = {
    { 0x23D, Unk_ov9_02253B34 },
    { 0x23E, Unk_ov9_02253B08 },
    { 0x23F, Unk_ov9_02253B58 },
    { 0x240, Unk_ov9_02253B20 },
    { 0x241, Unk_ov9_02253B18 },
    { 0x243, Unk_ov9_02253BC8 },
    { 0x244, Unk_ov9_02253C78 },
    { 0x245, Unk_ov9_02253B98 },
    { 0x246, Unk_ov9_02253BB0 },
    { 0x247, Unk_ov9_02253B40 },
    { 0x251, NULL }
};
