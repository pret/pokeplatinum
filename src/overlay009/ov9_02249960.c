#include "overlay009/ov9_02249960.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/dynamic_map_features.h"
#include "constants/field/map.h"
#include "constants/map_object.h"
#include "constants/species.h"
#include "constants/types.h"
#include "generated/map_headers.h"
#include "generated/movement_actions.h"

#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/area_data.h"
#include "overlay005/fieldmap.h"
#include "overlay005/land_data.h"
#include "overlay005/land_data_manager_decl.h"
#include "overlay005/map_object_anim_cmd.h"
#include "overlay005/ov5_021D57BC.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/ov5_021EB1A0.h"
#include "overlay005/ov5_021ECE40.h"
#include "overlay005/ov5_021F348C.h"
#include "overlay005/ov5_021F8560.h"
#include "overlay005/struct_ov5_021D57D8_decl.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"
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

#define GIRATINA_ROOM_TELEPORT_TILE_X 15
#define GIRATINA_ROOM_TELEPORT_TILE_Z 25
#define B7F_TELEPORT_TILE_X           89
#define B7F_TELEPORT_TILE_Z           57

#define FIELD_TASK_CONTEXT_MAX_SIZE 128

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

typedef struct {
    int unk_00;
    int unk_04;
    u32 unk_08;
} UnkStruct_ov9_0224B3F8;

typedef struct {
    u32 unk_00;
    u16 unk_04;
    s16 unk_06;
    s16 unk_08;
    s16 unk_0A;
} UnkStruct_ov9_0224B6CC;

typedef struct {
    u32 unk_00;
    s16 unk_04;
    s16 unk_06;
    DistWorldBounds unk_08;
} UnkStruct_ov9_0224B748;

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

typedef struct {
    const UnkStruct_ov9_0224B3F8 *unk_00;
    const UnkStruct_ov9_0224B6CC *unk_04;
    const UnkStruct_ov9_0224B748 *unk_08;
} UnkStruct_ov9_0224C788;

typedef struct DistWorldFileHeader {
    int unk_00;
    int floatingPlatformSectionSize;
    int floatingPlatformJumpPointSectionSize;
    int cameraAngleSectionSize;
    int unk_10;
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
    void *unk_10;
    DistWorldFileHeader *header;
    void *buffer;
} DistWorldFile;

typedef struct {
    UnkStruct_ov9_0224BFE0 unk_00;
    DistWorldFile distortionWorldFile;
    DistWorldFloatingPlatformManager floatingPlatformMan;
    DistWorldFileFloatingPlatformJumpPointSection floatingPlatformJumpPoints;
    DistWorldCameraAngleTemplates cameraAngleTemplates;
    UnkStruct_ov9_0224C788 unk_4C;
    DistWorldFile unk_58;
    UnkStruct_ov9_0224C788 unk_74;
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

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u32 unk_04;
} UnkStruct_ov9_022531D0;

typedef struct {
    u32 unk_00;
    Simple3DModel unk_04;
} UnkStruct_ov9_0224D744_sub1;

typedef struct {
    u32 unk_00;
    void *unk_04;
} UnkStruct_ov9_0224D744_sub2;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    Simple3DRenderObj unk_04;
    Simple3DAnimation unk_58;
} UnkStruct_ov9_0224D928;

typedef struct {
    UnkStruct_ov9_0224D744_sub1 unk_00[25];
    UnkStruct_ov9_0224D744_sub2 unk_258[5];
    UnkStruct_ov9_0224D928 unk_280[34];
} UnkStruct_ov9_0224D744;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    u16 unk_04;
    u16 unk_06;
    UnkStruct_ov9_0224B6CC unk_08;
    DistWorldSystem *unk_14;
} UnkStruct_ov9_0224B708;

typedef struct {
    u32 unk_00;
    s32 unk_04;
    OverworldAnimManager **unk_08;
} UnkStruct_ov9_0224B528;

typedef struct {
    int unk_00;
    int unk_04;
    u32 unk_08;
    NARC *unk_0C;
    MapMatrix *unk_10;
    AreaDataManager *unk_14;
    LandDataManager *unk_18;
} UnkStruct_ov9_0224C8E8;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    s16 unk_04;
    u16 unk_06;
    u32 unk_08;
    DistWorldSystem *unk_0C;
} UnkStruct_ov9_0224DFA0;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    VecFx32 unk_04;
    UnkStruct_ov9_0224DFA0 unk_10;
    UnkStruct_ov9_0224D928 *unk_20;
} UnkStruct_ov9_0224E1CC;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    s16 unk_04;
    s16 unk_06;
    s16 unk_08;
    s16 unk_0A;
    s16 unk_0C;
    s16 unk_0E;
    VecFx32 unk_10;
    u16 unk_1C;
    u16 unk_1E;
} UnkStruct_ov9_02253830;

typedef struct {
    u16 unk_00;
    s16 unk_02;
    s16 unk_04;
    s16 unk_06;
    u16 unk_08;
    u16 unk_0A;
    u32 unk_0C;
    u32 unk_10;
    u32 unk_14;
} UnkStruct_ov9_0224DF10;

typedef struct {
    u32 unk_00;
    const UnkStruct_ov9_0224DF10 **unk_04;
} UnkStruct_ov9_02252C38;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u16 unk_02;
    UnkStruct_ov9_0224DF10 unk_04;
    MapObject *unk_1C;
    OverworldAnimManager *unk_20;
} UnkStruct_ov9_0224E0DC;

typedef struct {
    UnkStruct_ov9_0224E0DC unk_00[32];
} UnkStruct_ov9_0224DC34;

typedef struct {
    SysTask *unk_00;
} UnkStruct_ov9_02249E94;

typedef struct {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
} UnkStruct_ov9_022530A4;

typedef struct {
    u32 unk_00;
    u16 unk_04;
    s16 unk_06;
    s16 unk_08;
    s16 unk_0A;
    u16 unk_0C;
    u16 unk_0E;
} UnkStruct_ov9_0224EC10;

typedef struct {
    u32 unk_00;
    const UnkStruct_ov9_0224EC10 *unk_04;
} UnkStruct_ov9_02252548;

typedef struct {
    u16 unk_00;
    OverworldAnimManager *unk_04;
    UnkStruct_ov9_0224EC10 unk_08;
} UnkStruct_ov9_0224EBB8;

typedef struct {
    UnkStruct_ov9_0224EBB8 unk_00[8];
} UnkStruct_ov9_0224EB68;

typedef struct {
    DistWorldSystem *unk_00;
    const UnkStruct_ov9_0224EBB8 *unk_04;
} UnkStruct_ov9_0224EBCC;

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

typedef struct {
    s16 unk_00;
    s16 unk_02;
    s16 unk_04;
    s8 unk_06;
    u8 unk_07;
    VecFx32 unk_08;
    VecFx32 unk_14;
    int unk_20;
} UnkStruct_ov9_02252414;

typedef struct {
    u32 unk_00;
    UnkStruct_ov9_0224D928 *unk_04;
    OverworldAnimManager *unk_08;
} UnkStruct_ov9_0224E8B4;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    int unk_04;
    int unk_08;
    int unk_0C[4];
    UnkStruct_ov9_0224E0DC *unk_1C;
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
    UnkStruct_ov9_0224E0DC *unk_28;
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
    UnkStruct_ov9_0224D744 unk_3A4;
    UnkStruct_ov9_02249B04_sub1 unk_169C;
    UnkStruct_ov9_0224B528 unk_171C;
    UnkStruct_ov9_0224B528 unk_1728;
    UnkStruct_ov9_0224DC34 unk_1734;
    UnkStruct_ov9_0224EB68 unk_1BB4;
    UnkStruct_ov9_0224EE40 unk_1C64;
    UnkStruct_ov9_0224CA5C unk_1CB0;
    UnkStruct_ov9_0224CBD8 unk_1CD0;
    UnkStruct_ov9_0224ADC0 unk_1D00;
    UnkStruct_ov9_0224C8E8 unk_1E88;
    UnkStruct_ov9_0224E8B4 unk_1EA4;
    GXRgb unk_1EB0[8];
    u16 unk_1EC0;
    u16 unk_1EC2;
    SysTask *unk_1EC4;
};

typedef struct {
    s8 unk_00;
    s8 unk_01;
    u16 unk_02;
    fx32 unk_04;
    fx32 unk_08;
    fx32 unk_0C;
    VecFx32 unk_10;
    VecFx32 unk_1C;
    UnkStruct_ov9_0224B708 unk_28;
    UnkStruct_ov9_0224D928 *unk_40;
} UnkStruct_ov9_0224BA48;

typedef struct {
    s8 unk_00;
    s8 unk_01;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
    VecFx32 unk_08;
    VecFx32 unk_14;
    UnkStruct_ov9_0224B708 unk_20;
    UnkStruct_ov9_0224D928 *unk_38;
} UnkStruct_ov9_0224BC08;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
    u16 unk_08;
    s16 unk_0A;
    s16 unk_0C;
    s16 unk_0E;
    u16 unk_10;
    u16 unk_12;
    VecFx32 unk_14;
    VecFx32 unk_20;
    VecFx32 unk_2C;
    VecFx32 unk_38;
    VecFx32 unk_44;
    fx32 unk_50;
    fx32 unk_54;
    fx32 unk_58;
    fx32 unk_5C;
    u32 unk_60;
    UnkStruct_ov9_0224E0DC *unk_64;
    MapObject *unk_68;
    SysTask *unk_6C;
} UnkStruct_ov9_0224D078;

typedef struct {
    int unk_00;
} UnkStruct_ov9_0224E4D8;

typedef struct {
    VecFx32 unk_00;
    VecFx32 unk_0C;
    VecFx32 unk_18;
    UnkStruct_ov9_0224E0DC *unk_24;
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

typedef struct {
    DistWorldSystem *unk_00;
    UnkStruct_ov9_0224D928 *unk_04;
    UnkStruct_ov9_02252414 unk_08;
} UnkStruct_ov9_0224E91C;

typedef struct {
    UnkStruct_ov9_0224E91C unk_00;
    u16 unk_2C;
    u16 unk_2E;
    int unk_30;
    int unk_34;
    Simple3DRotationAngles unk_38;
} UnkStruct_ov9_0224E964;

typedef struct {
    s16 unk_00;
    u16 unk_02;
    VecFx32 unk_04;
    VecFx32 unk_10;
    UnkStruct_ov9_0224EBCC unk_1C;
    UnkStruct_ov9_0224D928 *unk_24;
} UnkStruct_ov9_0224ED58;

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

typedef void (*FloatingPlatformJumpPointHandler)(DistWorldSystem *, const DistWorldFloatingPlatformJumpPointTemplate *);

static void ov9_02249B04(DistWorldSystem *param0);
static void ov9_02249B68(DistWorldSystem *param0);
static void OpenArchives(DistWorldSystem *system);
static void CloseArchives(DistWorldSystem *system);
static void ov9_02249CC4(DistWorldSystem *param0);
static void SetPersistedCameraAngles(DistWorldSystem *system, u16 angleX, u16 angleY, u16 angleZ);
static void GetPersistedCameraAngles(DistWorldSystem *system, u16 *angleX, u16 *angleY, u16 *angleZ);
static BOOL IsPersistedDataValid(DistWorldSystem *system);
static void ov9_02249D44(DistWorldSystem *param0, u32 param1);
static u32 ov9_02249D5C(DistWorldSystem *param0);
static void ov9_02249D68(DistWorldSystem *param0, u32 param1);
static void ov9_02249D70(DistWorldSystem *param0, u32 param1);
static void ov9_02249D8C(DistWorldSystem *param0, u32 param1);
static BOOL ov9_02249DA8(DistWorldSystem *param0, u32 param1);
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
static void ov9_0224B1B4(DistWorldSystem *param0, UnkStruct_ov5_021DF47C *param1, UnkStruct_ov9_0224B064 *param2);
static void ov9_0224B3A8(DistWorldSystem *param0);
static void ov9_0224B3F4(DistWorldSystem *param0);
static void ov9_0224B3F8(DistWorldSystem *param0, UnkStruct_ov9_0224B528 *param1, const UnkStruct_ov9_0224B3F8 *param2, const UnkStruct_ov9_0224B6CC *param3, int param4, u32 param5);
static void ov9_0224B45C(DistWorldSystem *param0, int param1);
static void ov9_0224B4CC(DistWorldSystem *param0);
static void ov9_0224B514(DistWorldSystem *param0);
static void ov9_0224B528(UnkStruct_ov9_0224B528 *param0);
static void ov9_0224B560(DistWorldSystem *param0);
static void ov9_0224B624(DistWorldSystem *param0, u32 param1);
static void ov9_0224B64C(DistWorldSystem *param0, u32 param1);
static BOOL ov9_0224B674(DistWorldSystem *param0, u32 param1);
static BOOL ov9_0224B698(DistWorldSystem *param0, u32 param1);
static void ov9_0224B6BC(DistWorldSystem *param0);
static void ov9_0224B6CC(DistWorldSystem *param0, UnkStruct_ov9_0224B528 *param1, const UnkStruct_ov9_0224B6CC *param2, int param3);
static OverworldAnimManager *ov9_0224B708(DistWorldSystem *param0, int param1, int param2, const UnkStruct_ov9_0224B6CC *param3);
static void ov9_0224B748(DistWorldSystem *param0, int param1, int param2, int param3, int param4);
static BOOL ov9_0224B7B0(DistWorldSystem *param0, u32 param1);
static BOOL ov9_0224B844(DistWorldSystem *param0, u32 param1);
static BOOL ov9_0224B8DC(DistWorldSystem *param0, int param1);
static void ov9_0224B570(DistWorldSystem *param0);
static void ov9_0224B580(DistWorldSystem *param0);
static void ov9_0224B590(DistWorldSystem *param0);
static void ov9_0224B5A0(DistWorldSystem *param0);
static void ov9_0224B5B0(DistWorldSystem *param0);
static void ov9_0224B5EC(DistWorldSystem *param0);
static u16 ov9_0224B958(OverworldAnimManager *param0);
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
static int ov9_0224C27C(DistWorldSystem *param0);
static int ov9_0224C288(DistWorldSystem *param0);
static const UnkStruct_ov9_0224B3F8 *ov9_0224C2A8(DistWorldFile *param0);
static const UnkStruct_ov9_0224B6CC *ov9_0224C2AC(DistWorldFile *param0);
static const UnkStruct_ov9_0224B748 *ov9_0224C2B4(DistWorldFile *param0);
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
static void ov9_0224C788(DistWorldFile *param0, UnkStruct_ov9_0224C788 *param1);
static void ov9_0224C7C8(DistWorldSystem *param0);
static void ov9_0224C7E8(DistWorldSystem *param0);
static void ov9_0224C808(DistWorldSystem *param0);
static void ov9_0224C834(DistWorldSystem *param0);
static void ov9_0224C854(DistWorldSystem *param0);
static void ov9_0224C844(DistWorldSystem *param0);
static void ov9_0224C864(DistWorldSystem *param0);
static void ov9_0224C888(DistWorldSystem *param0);
static const UnkStruct_ov9_0224B3F8 *ov9_0224C8AC(DistWorldSystem *param0);
static const UnkStruct_ov9_0224B3F8 *ov9_0224C8B8(DistWorldSystem *param0);
static const UnkStruct_ov9_0224B6CC *ov9_0224C8C4(DistWorldSystem *param0);
static const UnkStruct_ov9_0224B6CC *ov9_0224C8D0(DistWorldSystem *param0);
static const UnkStruct_ov9_0224B748 *ov9_0224C8DC(DistWorldSystem *param0);
static void ov9_0224C8E8(DistWorldSystem *param0);
static void ov9_0224C9E8(DistWorldSystem *param0);
static void ov9_0224CA98(DistWorldSystem *param0);
static void ov9_0224CB30(DistWorldSystem *param0);
static void ov9_0224CBD8(DistWorldSystem *param0);
static void ov9_0224CBF8(DistWorldSystem *param0);
static void ov9_0224CC08(SysTask *param0, void *param1);
static void ov9_0224CC4C(DistWorldSystem *param0);
static void ov9_0224CC50(DistWorldSystem *param0, UnkStruct_ov9_0224E0DC *param1, u32 param2);
static BOOL ov9_0224CC7C(DistWorldSystem *param0);
static BOOL ov9_0224D040(DistWorldSystem *param0, int param1, int param2, int param3);
static void ov9_0224D078(DistWorldSystem *param0, UnkStruct_ov9_0224E0DC *param1);
static BOOL ov9_0224D098(FieldTask *param0);
static const UnkStruct_ov9_022530A4 *ov9_0224D720(int param0);
static void ov9_0224D744(DistWorldSystem *param0);
static void ov9_0224D780(DistWorldSystem *param0, u32 param1);
static void ov9_0224D7C0(DistWorldSystem *param0, u32 param1);
static Simple3DModel *ov9_0224D7EC(DistWorldSystem *param0, u32 param1);
static void ov9_0224D814(DistWorldSystem *param0, u32 param1);
static void ov9_0224D874(DistWorldSystem *param0, u32 param1);
static void ov9_0224D994(DistWorldSystem *param0);
static void ov9_0224D9BC(DistWorldSystem *param0, u32 param1, u32 param2, Simple3DRenderObj *param3, Simple3DAnimation *param4);
static void ov9_0224DA48(DistWorldSystem *param0, int param1, Simple3DRenderObj *param2, Simple3DAnimation *param3);
static void ov9_0224DA64(DistWorldSystem *param0, int param1, int param2, int param3);
static void ov9_0224DAAC(DistWorldSystem *param0, int param1, int param2);
static void ov9_0224DAB8(DistWorldSystem *param0, int param1, int param2);
static BOOL ov9_0224DAEC(int param0);
static BOOL ov9_0224DB04(int param0);
static void ov9_0224DB1C(DistWorldSystem *param0);
static UnkStruct_ov9_0224D928 *ov9_0224D8A4(DistWorldSystem *param0, u32 param1, int *param2);
static void ov9_0224D928(DistWorldSystem *param0, UnkStruct_ov9_0224D928 *param1);
static void ov9_0224D938(DistWorldSystem *param0, UnkStruct_ov9_0224D928 *param1);
static void ov9_0224D954(DistWorldSystem *param0, int param1);
static BOOL ov9_0224DBE4(DistWorldSystem *param0, int param1, VecFx32 *param2);
static void ov9_0224DC34(DistWorldSystem *param0);
static void ov9_0224DC4C(DistWorldSystem *param0);
static void ov9_0224DC74(DistWorldSystem *param0, u32 param1);
static void ov9_0224DCA8(DistWorldSystem *param0);
static void ov9_0224DD24(DistWorldSystem *param0, u32 param1);
static void ov9_0224DD40(DistWorldSystem *param0, const UnkStruct_ov9_02252C38 *param1, u32 param2);
static void ov9_0224DDA0(DistWorldSystem *param0, u32 param1, int param2);
static UnkStruct_ov9_0224E0DC *ov9_0224DDDC(DistWorldSystem *param0);
static UnkStruct_ov9_0224E0DC *ov9_0224DE08(DistWorldSystem *param0, u32 param1, u32 param2);
static const UnkStruct_ov9_02252C38 *ov9_0224DE40(u32 param0);
static const UnkStruct_ov9_0224DF10 *ov9_0224DE60(u32 param0, u32 param1);
static const UnkStruct_ov9_02253830 *ov9_0224DE70(u32 param0);
static MapObject *ov9_0224DE94(DistWorldSystem *param0, int param1, int param2, int param3, int param4, int param5, u32 param6);
static void ov9_0224DF10(DistWorldSystem *param0, UnkStruct_ov9_0224E0DC *param1, MapObject *param2);
static OverworldAnimManager *ov9_0224DFA0(DistWorldSystem *param0, UnkStruct_ov9_0224E0DC *param1);
static void ov9_0224DFF4(DistWorldSystem *param0, UnkStruct_ov9_0224E0DC *param1, const UnkStruct_ov9_0224DF10 *param2, u32 param3);
static void ov9_0224E044(DistWorldSystem *param0, UnkStruct_ov9_0224E0DC *param1);
static void ov9_0224E060(DistWorldSystem *param0, UnkStruct_ov9_0224E0DC *param1);
static void ov9_0224E07C(DistWorldSystem *param0, UnkStruct_ov9_0224E0DC *param1, u32 param2);
static void ov9_0224E0DC(UnkStruct_ov9_0224E0DC *param0, u32 param1);
static BOOL ov9_0224E0E0(DistWorldSystem *param0, u32 param1);
static BOOL ov9_0224E120(DistWorldSystem *param0, u32 param1);
static BOOL ov9_0224E160(DistWorldSystem *param0, int param1);
static UnkStruct_ov9_0224E0DC *ov9_0224E188(DistWorldSystem *param0, int param1, int param2, int param3, u32 param4);
static VecFx32 *ov9_0224E330(OverworldAnimManager *param0);
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
static void ov9_0224E8B4(DistWorldSystem *param0);
static void ov9_0224E8EC(DistWorldSystem *param0);
static void ov9_0224E91C(DistWorldSystem *param0, const UnkStruct_ov9_02252414 *param1);
static BOOL ov9_0224E964(DistWorldSystem *param0);
static void ov9_0224E984(DistWorldSystem *param0);
static void ov9_0224E988(DistWorldSystem *param0);
static BOOL ov9_0224E9A4(DistWorldSystem *param0, u32 param1);
static BOOL ov9_0224E9CC(DistWorldSystem *param0, u32 param1);
static BOOL ov9_0224E9F4(DistWorldSystem *param0, int param1);
static void ov9_0224EB68(DistWorldSystem *param0);
static void ov9_0224EB94(DistWorldSystem *param0);
static void ov9_0224EBB8(UnkStruct_ov9_0224EBB8 *param0);
static void ov9_0224EC10(DistWorldSystem *param0, const UnkStruct_ov9_02252548 *param1);
static void ov9_0224EC48(DistWorldSystem *param0, u32 param1);
static UnkStruct_ov9_0224EBB8 *ov9_0224EC70(DistWorldSystem *param0);
static void ov9_0224EC94(DistWorldSystem *param0, u32 param1);
static BOOL ov9_0224ECC0(DistWorldSystem *param0, int param1);
static BOOL ov9_0224ECE8(DistWorldSystem *param0, u32 param1);
static BOOL ov9_0224ED20(DistWorldSystem *param0, u32 param1);
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
static BOOL ov9_02251104(DistWorldSystem *param0, u32 param1, u32 param2);
static void ov9_022511E0(u16 param0);
static void ov9_022511F4(MapObject *param0, const VecFx32 *param1);

static const OverworldAnimManagerFuncs Unk_ov9_02251508;
static const OverworldAnimManagerFuncs Unk_ov9_02251468;
static const OverworldAnimManagerFuncs Unk_ov9_022514B8;
static const OverworldAnimManagerFuncs Unk_ov9_02251530;
static const fx32 Unk_ov9_02252CF8[16];
static const FloatingPlatformJumpPointHandler sFloatingPlatformJumpPointHandlers[1];
static const int Unk_ov9_02251E58[7];
static const int Unk_ov9_02251E90[7];
static const int Unk_ov9_02251EAC[7];
static const int Unk_ov9_02251210[1];
static const UnkStruct_ov9_02251EC8 Unk_ov9_02251EC8[7];
static const UnkStruct_ov9_02253680 Unk_ov9_02253680[9];
static const fx32 Unk_ov9_02252C08[3][4];
static const u32 Unk_ov9_02252FD0[25];
static const u32 Unk_ov9_022514A4[5];
static const UnkStruct_ov9_022531D0 Unk_ov9_022531D0[25];
static const VecFx32 Unk_ov9_02253298[25];
static const VecFx32 Unk_ov9_022533C4[25];
static const OverworldAnimManagerFuncs *const Unk_ov9_02252F6C[25];
static const UnkStruct_ov9_022530A4 Unk_ov9_022530A4[10];
static const UnkStruct_ov9_02252C38 Unk_ov9_02252C38[8];
static const UnkStruct_ov9_02253830 Unk_ov9_02253830[22];
static const UnkFuncPtr_ov9_02253BE4 *Unk_ov9_02253BE4[18];
const UnkStruct_ov9_02252D38 Unk_ov9_02252D38[];
const UnkStruct_ov9_02251438 Unk_ov9_02251438[];
const UnkStruct_ov9_02251438 Unk_ov9_022513D8[];
const UnkStruct_ov9_02252548 Unk_ov9_02252548[];
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

    if (data->valid == FALSE) {
        ov9_02249CC4(dwSystem);
    }

    ov9_0224BE14(dwSystem);
    ov9_02249F50(dwSystem);
    ov9_02249F88(dwSystem);
    ov9_0224A1E4(dwSystem, (4 + 2));
    ov9_0224D744(dwSystem);
    ov9_0224ADC0(dwSystem);
    ov9_0224B3A8(dwSystem);
    ov9_0224AEE4(dwSystem, &dwSystem->unk_1A8, dwSystem->unk_10);
    ov9_0224F724(dwSystem);
    CameraInit(dwSystem);
    FieldTaskContextNoOp1(dwSystem);
    ov9_0224A8C0(dwSystem);
    ov9_0224EE40(dwSystem);
    ov9_0224EB68(dwSystem);
    ov9_0224B514(dwSystem);
    ov9_0224DC34(dwSystem);
    ov9_0224E33C(dwSystem);
    ov9_02249E94(dwSystem);
    ov9_0224C8E8(dwSystem);
    ov9_0224CBD8(dwSystem);
    ov9_0224DCA8(dwSystem);
    ov9_0224B1B4(dwSystem, dwSystem->fieldSystem->unk_40, &dwSystem->unk_1A8);
    ov9_0224E984(dwSystem);
    ov5_021F34B8(dwSystem->fieldSystem->unk_40);
    ov9_02249EF0(dwSystem);

    data->valid = TRUE;
}

void DistWorld_DynamicMapFeaturesFree(FieldSystem *fieldSystem)
{
    DistWorldSystem *v0 = fieldSystem->unk_04->dynamicMapFeaturesData;

    ov9_02249F18(v0);
    ov9_0224E988(v0);
    ov9_0224CBF8(v0);
    ov9_0224C9E8(v0);
    ov9_02249EC8(v0);
    ov9_0224E34C(v0);
    ov9_0224DC4C(v0);
    ov9_0224B560(v0);
    ov9_0224EB94(v0);
    ov9_0224EE6C(v0);
    ov9_0224A9E8(v0);
    FieldTaskContextNoOp2(v0);
    CameraFree(v0);
    ov9_0224F760(v0);
    ov9_0224B064(&v0->unk_1A8);
    ov9_0224B3F4(v0);
    ov9_0224AED8(v0);
    ov9_0224D994(v0);
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
    const UnkStruct_ov9_022530A4 *v1 = ov9_0224D720(v0);

    ov9_0224B570(param0);
    ov9_02249D44(param0, 0);
    ov9_0224EC94(param0, v1->unk_04);
    ov9_0224DC74(param0, v1->unk_04);
    ov9_0224F0A4(param0, v1->unk_04);
    ov9_0224BF18(param0, v1->unk_08);
    ov9_0224DB1C(param0);
    ov9_0224B4CC(param0);
    ov9_0224EC48(param0, v1->unk_08);
    ov9_0224DD24(param0, v1->unk_08);
    ov9_0224F078(param0, v1->unk_08);
}

static void ov9_02249B68(DistWorldSystem *param0)
{
    u32 v0 = DistWorldSystem_GetMapHeaderID(param0);
    const UnkStruct_ov9_022530A4 *v1 = ov9_0224D720(v0);

    v1 = ov9_0224D720(v1->unk_08);

    ov9_0224B580(param0);
    ov9_02249D44(param0, 0);
    ov9_0224EC94(param0, v1->unk_08);
    ov9_0224DC74(param0, v1->unk_08);
    ov9_0224F0A4(param0, v1->unk_08);
    ov9_0224BEB4(param0, v0);
    ov9_0224DB1C(param0);
    ov9_0224B45C(param0, 1);
    ov9_0224EC48(param0, v0);
    ov9_0224DD24(param0, v0);
    ov9_0224F078(param0, v0);
}

static void ov9_02249BD4(DistWorldSystem *param0, u32 param1)
{
    ov9_0224B570(param0);
    ov9_02249D44(param0, 0);
    ov9_0224EC94(param0, param1);
    ov9_0224DC74(param0, param1);
    ov9_0224F0A4(param0, param1);
    ov9_0224DB1C(param0);
}

static void ov9_02249C08(DistWorldSystem *param0, u32 param1)
{
    ov9_0224B4CC(param0);
    ov9_0224EC48(param0, param1);
    ov9_0224DD24(param0, param1);
    ov9_0224F078(param0, param1);
}

static void ov9_02249C2C(DistWorldSystem *param0, u32 param1)
{
    ov9_0224B580(param0);
    ov9_02249D44(param0, 0);
    ov9_0224EC94(param0, param1);
    ov9_0224DC74(param0, param1);
    ov9_0224F0A4(param0, param1);
    ov9_0224DB1C(param0);
}

static void ov9_02249C60(DistWorldSystem *param0, u32 param1)
{
    ov9_0224B45C(param0, 1);
    ov9_0224EC48(param0, param1);
    ov9_0224DD24(param0, param1);
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
        u32 v2 = ((1 << 3) | (1 << 7));

        if (DistWorldSystem_GetMapHeaderID(param0) == 581) {
            v2 = ((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 7) | (1 << 9) | (1 << 10));
        }

        ov9_02249D68(param0, v2);
    }

    if (SystemFlag_HandleDistortionWorldPuzzleFinished(v1, HANDLE_FLAG_CHECK) == FALSE) {
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

static void ov9_02249D44(DistWorldSystem *param0, u32 param1)
{
    DistWorldPersistedData *v0 = param0->persistedData;
    v0->unk_00_1 = param1;
}

static u32 ov9_02249D5C(DistWorldSystem *param0)
{
    DistWorldPersistedData *v0 = param0->persistedData;
    return v0->unk_00_1;
}

static void ov9_02249D68(DistWorldSystem *param0, u32 param1)
{
    DistWorldPersistedData *v0 = param0->persistedData;
    v0->unk_0A = param1;
}

static void ov9_02249D70(DistWorldSystem *param0, u32 param1)
{
    DistWorldPersistedData *v0 = param0->persistedData;

    GF_ASSERT(param1 < 11);
    v0->unk_0A |= (1 << param1);
}

static void ov9_02249D8C(DistWorldSystem *param0, u32 param1)
{
    DistWorldPersistedData *v0 = param0->persistedData;

    GF_ASSERT(param1 < 11);
    v0->unk_0A &= ~(1 << param1);
}

static BOOL ov9_02249DA8(DistWorldSystem *param0, u32 param1)
{
    DistWorldPersistedData *v0 = param0->persistedData;

    GF_ASSERT(param1 < 11);

    if (v0->unk_0A & (1 << param1)) {
        return 1;
    }

    return 0;
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

static BOOL ov9_02249E00(DistWorldSystem *param0, u32 param1)
{
    DistWorldPersistedData *v0 = param0->persistedData;

    GF_ASSERT(param1 < 17);

    if (v0->unk_0C & (1 << param1)) {
        return 1;
    }

    return 0;
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
    u32 mapHeaderID = DistWorldSystem_GetMapHeaderID(dwSystem);

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

    v0 = sub_02062858(param0->fieldSystem->mapObjMan);
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

    if (transition->isActive == FALSE) {
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

    v0->unk_08 = ov5_021DF5C0(param0->fieldSystem->unk_40, 197, 1);
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
            ov9_0224B748(v5, v1, v2, v3, param1);
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

        if (ov9_0224D040(v5, v1, v2, v3) == 1) {
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
        sub_0205EC00(playerAvatar, v9);
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

static void ov9_0224B1B4(DistWorldSystem *param0, UnkStruct_ov5_021DF47C *param1, UnkStruct_ov9_0224B064 *param2)
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
        v2 = ov5_021DF72C(param1, &Unk_ov9_02251508, NULL, 0, &v1, 0);
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

static void ov9_0224B3F8(DistWorldSystem *param0, UnkStruct_ov9_0224B528 *param1, const UnkStruct_ov9_0224B3F8 *param2, const UnkStruct_ov9_0224B6CC *param3, int param4, u32 param5)
{
    {
        GF_ASSERT(param1->unk_08 == NULL);
    }

    {
        int v0;

        memset(param1, 0, sizeof(UnkStruct_ov9_0224B528));

        param1->unk_00 = param5;
        param1->unk_04 = param2->unk_00;

        GF_ASSERT(param1->unk_04);

        v0 = param1->unk_04 * sizeof(OverworldAnimManager *);
        param1->unk_08 = Heap_AllocAtEnd(HEAP_ID_FIELD1, v0);

        memset((u8 *)param1->unk_08, 0, v0);
        ov9_0224B6CC(param0, param1, param3, param4);
    }
}

static void ov9_0224B45C(DistWorldSystem *param0, int param1)
{
    int v0;
    const UnkStruct_ov9_022530A4 *v1;

    v0 = DistWorldSystem_GetMapHeaderID(param0);
    v1 = ov9_0224D720(v0);

    if (ov9_0224C27C(param0)) {
        UnkStruct_ov9_0224B528 *v2 = &param0->unk_171C;
        const UnkStruct_ov9_0224B3F8 *v3 = ov9_0224C8AC(param0);
        const UnkStruct_ov9_0224B6CC *v4 = ov9_0224C8C4(param0);

        if ((param1 == 1) || (IsPersistedDataValid(param0) == 0)) {
            v2->unk_00 = ~v3->unk_08;
            ov9_02249D44(param0, v2->unk_00);
        } else {
            v2->unk_00 = ov9_02249D5C(param0);
        }

        ov9_0224B3F8(param0, v2, v3, v4, v0, v2->unk_00);
    }
}

static void ov9_0224B4CC(DistWorldSystem *param0)
{
    int v0;
    const UnkStruct_ov9_022530A4 *v1;

    v0 = DistWorldSystem_GetMapHeaderID(param0);
    v1 = ov9_0224D720(v0);
    v0 = v1->unk_08;

    if (ov9_0224C288(param0)) {
        UnkStruct_ov9_0224B528 *v2 = &param0->unk_1728;
        const UnkStruct_ov9_0224B3F8 *v3 = ov9_0224C8B8(param0);
        const UnkStruct_ov9_0224B6CC *v4 = ov9_0224C8D0(param0);

        ov9_0224B3F8(param0, v2, v3, v4, v0, ~v3->unk_08);
    }
}

static void ov9_0224B514(DistWorldSystem *param0)
{
    ov9_0224B45C(param0, 0);
    ov9_0224B4CC(param0);
}

static void ov9_0224B528(UnkStruct_ov9_0224B528 *param0)
{
    int v0;

    if (param0->unk_04) {
        for (v0 = 0; v0 < param0->unk_04; v0++) {
            if (param0->unk_08[v0] != NULL) {
                OverworldAnimManager_Finish(param0->unk_08[v0]);
            }
        }

        Heap_Free(param0->unk_08);

        param0->unk_08 = NULL;
        param0->unk_04 = 0;
    }
}

static void ov9_0224B560(DistWorldSystem *param0)
{
    ov9_0224B570(param0);
    ov9_0224B580(param0);
}

static void ov9_0224B570(DistWorldSystem *param0)
{
    ov9_0224B528(&param0->unk_171C);
}

static void ov9_0224B580(DistWorldSystem *param0)
{
    ov9_0224B528(&param0->unk_1728);
}

static void ov9_0224B590(DistWorldSystem *param0)
{
    param0->unk_171C.unk_08 = NULL;
    param0->unk_171C.unk_04 = 0;
}

static void ov9_0224B5A0(DistWorldSystem *param0)
{
    param0->unk_1728.unk_08 = NULL;
    param0->unk_1728.unk_04 = 0;
}

static void ov9_0224B5B0(DistWorldSystem *param0)
{
    GF_ASSERT(param0->unk_1728.unk_08 == NULL);
    GF_ASSERT(param0->unk_1728.unk_04 == 0);

    param0->unk_1728 = param0->unk_171C;
}

static void ov9_0224B5EC(DistWorldSystem *param0)
{
    GF_ASSERT(param0->unk_171C.unk_08 == NULL);
    GF_ASSERT(param0->unk_171C.unk_04 == 0);

    param0->unk_171C = param0->unk_1728;
}

static void ov9_0224B624(DistWorldSystem *param0, u32 param1)
{
    UnkStruct_ov9_0224B528 *v0 = &param0->unk_171C;

    GF_ASSERT(param1 < 24);

    v0->unk_00 |= 1 << param1;
    ov9_02249D44(param0, v0->unk_00);
}

static void ov9_0224B64C(DistWorldSystem *param0, u32 param1)
{
    u32 v0 = ~(1 << param1);
    UnkStruct_ov9_0224B528 *v1 = &param0->unk_171C;

    GF_ASSERT(param1 < 24);

    v1->unk_00 &= v0;
    ov9_02249D44(param0, v1->unk_00);
}

static BOOL ov9_0224B674(DistWorldSystem *param0, u32 param1)
{
    UnkStruct_ov9_0224B528 *v0 = &param0->unk_171C;

    GF_ASSERT(param1 < 24);

    if (v0->unk_00 & (1 << param1)) {
        return 1;
    }

    return 0;
}

static BOOL ov9_0224B698(DistWorldSystem *param0, u32 param1)
{
    UnkStruct_ov9_0224B528 *v0 = &param0->unk_1728;

    GF_ASSERT(param1 < 24);

    if (v0->unk_00 & (1 << param1)) {
        return 1;
    }

    return 0;
}

static void ov9_0224B6BC(DistWorldSystem *param0)
{
    UnkStruct_ov9_0224B528 *v0 = &param0->unk_171C;
    ov9_02249D44(param0, v0->unk_00);
}

static void ov9_0224B6CC(DistWorldSystem *param0, UnkStruct_ov9_0224B528 *param1, const UnkStruct_ov9_0224B6CC *param2, int param3)
{
    if (param1->unk_04) {
        int v0;

        for (v0 = 0; v0 < param1->unk_04; v0++, param2++) {
            param1->unk_08[v0] = ov9_0224B708(param0, v0, param3, param2);
        }
    }
}

static OverworldAnimManager *ov9_0224B708(DistWorldSystem *param0, int param1, int param2, const UnkStruct_ov9_0224B6CC *param3)
{
    OverworldAnimManager *v0;
    UnkStruct_ov9_0224B708 v1;
    UnkStruct_ov9_0224B528 *v2 = &param0->unk_171C;
    const OverworldAnimManagerFuncs *v3 = Unk_ov9_02252F6C[param3->unk_04];

    v1.unk_00 = param1;
    v1.unk_02 = param2;
    v1.unk_08 = *param3;
    v1.unk_14 = param0;

    v0 = ov5_021DF72C(param0->fieldSystem->unk_40, v3, NULL, 0, &v1, 2);

    return v0;
}

static void ov9_0224B748(DistWorldSystem *param0, int param1, int param2, int param3, int param4)
{
    if (ov9_0224C27C(param0)) {
        const UnkStruct_ov9_0224B3F8 *v0 = ov9_0224C8AC(param0);

        if (v0->unk_04) {
            int v1 = v0->unk_04;
            const UnkStruct_ov9_0224B748 *v2;

            v2 = ov9_0224C8DC(param0);

            do {
                if (param4 == v2->unk_04) {
                    if (DistWorldBounds_AreCoordinatesInBounds(param1, param2, param3, &v2->unk_08)) {
                        if (v2->unk_06 == 0) {
                            ov9_0224B624(param0, v2->unk_00);
                        } else {
                            ov9_0224B64C(param0, v2->unk_00);
                        }
                    }
                }

                v2++;
            } while (--v1);
        }
    }
}

static BOOL ov9_0224B7B0(DistWorldSystem *param0, u32 param1)
{
    int v0;
    u16 v1;
    const UnkStruct_ov9_022531D0 *v2;
    UnkStruct_ov9_0224B528 *v3 = &param0->unk_171C;

    GF_ASSERT(param1 != 25);

    for (v0 = 0; v0 < v3->unk_04; v0++) {
        if (OverworldAnimManager_IsActive(v3->unk_08[v0]) == 1) {
            v1 = ov9_0224B958(v3->unk_08[v0]);
            v2 = &Unk_ov9_022531D0[v1];

            if (param1 == v2->unk_00) {
                return 1;
            }
        }
    }

    v3 = &param0->unk_1728;

    for (v0 = 0; v0 < v3->unk_04; v0++) {
        if (OverworldAnimManager_IsActive(v3->unk_08[v0]) == 1) {
            v1 = ov9_0224B958(v3->unk_08[v0]);
            v2 = &Unk_ov9_022531D0[v1];

            if (param1 == v2->unk_00) {
                return 1;
            }
        }
    }

    return 0;
}

static BOOL ov9_0224B844(DistWorldSystem *param0, u32 param1)
{
    int v0;
    u16 v1;
    const UnkStruct_ov9_022531D0 *v2;
    UnkStruct_ov9_0224B528 *v3 = &param0->unk_171C;

    GF_ASSERT(param1 != 5);

    for (v0 = 0; v0 < v3->unk_04; v0++) {
        if (OverworldAnimManager_IsActive(v3->unk_08[v0]) == 1) {
            v1 = ov9_0224B958(v3->unk_08[v0]);
            v2 = &Unk_ov9_022531D0[v1];

            if (param1 == v2->unk_02) {
                return 1;
            }
        }
    }

    v3 = &param0->unk_1728;

    for (v0 = 0; v0 < v3->unk_04; v0++) {
        if (OverworldAnimManager_IsActive(v3->unk_08[v0]) == 1) {
            v1 = ov9_0224B958(v3->unk_08[v0]);
            v2 = &Unk_ov9_022531D0[v1];

            if (param1 == v2->unk_02) {
                return 1;
            }
        }
    }

    return 0;
}

static BOOL ov9_0224B8DC(DistWorldSystem *param0, int param1)
{
    int v0;
    u16 v1;
    const UnkStruct_ov9_022531D0 *v2;
    UnkStruct_ov9_0224B528 *v3 = &param0->unk_171C;

    for (v0 = 0; v0 < v3->unk_04; v0++) {
        if (OverworldAnimManager_IsActive(v3->unk_08[v0]) == 1) {
            v1 = ov9_0224B958(v3->unk_08[v0]);

            if (v1 == param1) {
                return 1;
            }
        }
    }

    v3 = &param0->unk_1728;

    for (v0 = 0; v0 < v3->unk_04; v0++) {
        if (OverworldAnimManager_IsActive(v3->unk_08[v0]) == 1) {
            v1 = ov9_0224B958(v3->unk_08[v0]);

            if (v1 == param1) {
                return 1;
            }
        }
    }

    return 0;
}

static u16 ov9_0224B958(OverworldAnimManager *param0)
{
    return (u16)sub_020715C4(param0);
}

static int ov9_0224B964(OverworldAnimManager *param0, void *param1)
{
    int v0;
    UnkStruct_ov9_0224B6CC *v1;
    UnkStruct_ov9_0224BA48 *v2 = param1;
    const UnkStruct_ov9_0224B708 *v3 = OverworldAnimManager_GetUserData(param0);

    v2->unk_28 = *v3;
    v1 = &v2->unk_28.unk_08;

    sub_020715C0(param0, v1->unk_04);

    v2->unk_40 = ov9_0224D8A4(v3->unk_14, v1->unk_04, &v0);

    if (v0 == 0) {
        ov9_0224DA48(v2->unk_28.unk_14, v1->unk_04, &v2->unk_40->unk_04, &v2->unk_40->unk_58);
    }

    {
        BOOL v4;

        if (DistWorldSystem_GetMapHeaderID(v3->unk_14) == v3->unk_02) {
            v4 = ov9_0224B674(v3->unk_14, v1->unk_00);
        } else {
            v4 = ov9_0224B698(v3->unk_14, v1->unk_00);
        }

        if (v4 == 1) {
            v2->unk_00 = 0;
        } else {
            v2->unk_00 = 31;
        }
    }

    sub_02064450(v1->unk_06, v1->unk_0A, &v2->unk_10);
    v2->unk_10.y = (((v1->unk_08) << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1);

    {
        VecFx32 v5;
        const VecFx32 *v6 = &Unk_ov9_02253298[v1->unk_04];

        v2->unk_10.x += v6->x;
        v2->unk_10.y += v6->y;
        v2->unk_10.z += v6->z;
    }

    v2->unk_04 = LCRNG_Next() % (FX32_ONE * 8);
    v2->unk_08 = 0x800;

    if (v2->unk_04 & 0x1) {
        v2->unk_08 = -v2->unk_08;
    }

    return 1;
}

static void ov9_0224BA48(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov9_0224BA48 *v0 = param1;
    UnkStruct_ov9_0224B708 *v1 = &v0->unk_28;

    if (ov9_0224DAEC(v1->unk_08.unk_04) == 1) {
        Simple3D_FreeAnimation(&v0->unk_40->unk_58);
    }

    ov9_0224D938(v1->unk_14, v0->unk_40);
}

static const fx32 Unk_ov9_022521E4[8] = {
    0x0,
    -0x1000,
    -0x2000,
    -0x4000,
    -0x5000,
    -0x5800,
    -0x5c00,
    -0x6000
};

static void ov9_0224BA6C(OverworldAnimManager *param0, void *param1)
{
    const fx32 *v0;
    UnkStruct_ov9_0224BA48 *v1 = param1;
    UnkStruct_ov9_0224B708 *v2 = &v1->unk_28;
    UnkStruct_ov9_0224B6CC *v3 = &v2->unk_08;
    u32 v4 = 0, v5 = DistWorldSystem_GetMapHeaderID(v2->unk_14);

    if ((v2->unk_08.unk_04 == 0) && (v5 == v2->unk_02)) {
        int v6 = 0;
        int v7 = ((v2->unk_08.unk_08) * 2);
        const MapObjectManager *v8 = v2->unk_14->fieldSystem->mapObjMan;
        MapObject *v9;

        while (sub_020625B0(
                   v8, &v9, &v6, (1 << 0))
            == 1) {
            if (MapObject_GetY(v9) == v7) {
                if (MapObject_GetZ(v9) == v2->unk_08.unk_0A) {
                    if (MapObject_GetX(v9) == v2->unk_08.unk_06) {
                        v4 = 1;
                        break;
                    }
                }
            }
        }
    }

    v0 = Unk_ov9_022521E4;
    v1->unk_0C = v0[((v1->unk_04) / FX32_ONE) % 8];

    if (v4 == 1) {
        v1->unk_0C >>= 1;
    }

    v1->unk_04 += v1->unk_08;

    if (v1->unk_04 < 0) {
        v1->unk_04 = 0;
        v1->unk_08 = 0x800;
    } else if (v1->unk_04 >= (FX32_ONE * 8)) {
        v1->unk_04 = (FX32_ONE * 8) - 0x800;
        v1->unk_08 = -0x800;
    }

    {
        BOOL v10;

        if (DistWorldSystem_GetMapHeaderID(v2->unk_14) == v2->unk_02) {
            v10 = ov9_0224B674(v2->unk_14, v3->unk_00);
        } else {
            v10 = ov9_0224B698(v2->unk_14, v3->unk_00);
        }

        if (v10 == 1) {
            if (v1->unk_00 > 0) {
                v1->unk_00--;

                if (v1->unk_01 != -1) {
                    v1->unk_01 = -1;
                    ov9_022511E0(1484);
                }
            }
        } else if (v1->unk_00 < 31) {
            v1->unk_00++;

            if (v1->unk_01 != 1) {
                v1->unk_01 = 1;
                ov9_022511E0(1484);
            }
        }
    }

    {
        v1->unk_1C = v1->unk_10;
        v1->unk_1C.y += v1->unk_0C;
        v1->unk_02 = ov9_0224DBE4(v2->unk_14, v2->unk_08.unk_04, &v1->unk_1C);
    }
}

static void ov9_0224BBDC(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov9_0224BA48 *v0 = param1;

    if (v0->unk_02 == 0) {
        return;
    }

    if (v0->unk_00 > 0) {
        UnkStruct_ov9_0224B708 *v1 = &v0->unk_28;

        ov9_0224DAAC(v1->unk_14, v1->unk_08.unk_04, v0->unk_00);
        Simple3D_DrawRenderObjWithPos(&v0->unk_40->unk_04, &v0->unk_1C);
    }
}

static int ov9_0224BC08(OverworldAnimManager *param0, void *param1)
{
    int v0;
    UnkStruct_ov9_0224B6CC *v1;
    UnkStruct_ov9_0224BC08 *v2 = param1;
    const UnkStruct_ov9_0224B708 *v3 = OverworldAnimManager_GetUserData(param0);

    v2->unk_20 = *v3;
    v1 = &v2->unk_20.unk_08;

    sub_020715C0(param0, v1->unk_04);

    v2->unk_38 = ov9_0224D8A4(v3->unk_14, v1->unk_04, &v0);

    if (v0 == 0) {
        ov9_0224DA48(v2->unk_20.unk_14, v1->unk_04, &v2->unk_38->unk_04, &v2->unk_38->unk_58);
    }

    if (v1->unk_04 == 23) {
        v2->unk_04 = 1483;
        v2->unk_06 = 1483;
    } else {
        v2->unk_04 = 1485;
        v2->unk_06 = 1486;
    }

    {
        BOOL v4;

        if (DistWorldSystem_GetMapHeaderID(v3->unk_14) == v3->unk_02) {
            v4 = ov9_0224B674(v3->unk_14, v1->unk_00);
        } else {
            v4 = ov9_0224B698(v3->unk_14, v1->unk_00);
        }

        if (v4 == 1) {
            v2->unk_00 = 0;
        } else {
            v2->unk_00 = 31;
            Simple3D_SetAnimFrame(&v2->unk_38->unk_58, Simple3D_GetAnimFrameCount(&v2->unk_38->unk_58));
        }
    }

    sub_02064450(v1->unk_06, v1->unk_0A, &v2->unk_08);
    v2->unk_08.y = (((v1->unk_08) << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1);

    {
        VecFx32 v5;
        const VecFx32 *v6 = &Unk_ov9_02253298[v1->unk_04];

        v2->unk_08.x += v6->x;
        v2->unk_08.y += v6->y;
        v2->unk_08.z += v6->z;
    }

    return 1;
}

static void ov9_0224BCF4(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov9_0224BC08 *v0 = param1;
    UnkStruct_ov9_0224B708 *v1 = &v0->unk_20;

    if (ov9_0224DAEC(v1->unk_08.unk_04) == 1) {
        Simple3D_FreeAnimation(&v0->unk_38->unk_58);
    }

    ov9_0224D938(v1->unk_14, v0->unk_38);
}

static void ov9_0224BD18(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov9_0224BC08 *v0 = param1;
    UnkStruct_ov9_0224B708 *v1 = &v0->unk_20;
    UnkStruct_ov9_0224B6CC *v2 = &v1->unk_08;

    {
        BOOL v3;

        if (DistWorldSystem_GetMapHeaderID(v1->unk_14) == v1->unk_02) {
            v3 = ov9_0224B674(v1->unk_14, v2->unk_00);
        } else {
            v3 = ov9_0224B698(v1->unk_14, v2->unk_00);
        }

        if (v3 == 1) {
            fx32 v4;

            Simple3D_UpdateAnim(&v0->unk_38->unk_58, -FX32_ONE * 2, 0);
            v4 = Simple3D_GetAnimFrame(&v0->unk_38->unk_58);

            if (v0->unk_00 >= ((v4) / FX32_ONE)) {
                if (v0->unk_00 > 0) {
                    v0->unk_00 -= 2;

                    if (v0->unk_01 != -2) {
                        v0->unk_01 = -2;
                        ov9_022511E0(v0->unk_06);
                    }

                    if (v0->unk_00 < 0) {
                        v0->unk_00 = 0;
                    }
                } else {
                    v0->unk_00 = 0;
                }
            }
        } else {
            if (v0->unk_00 < 31) {
                v0->unk_00 += 2;

                if (v0->unk_01 != 2) {
                    v0->unk_01 = 2;
                    ov9_022511E0(v0->unk_04);
                }

                if (v0->unk_00 > 31) {
                    v0->unk_00 = 31;
                }
            } else {
                v0->unk_00 = 31;
            }

            Simple3D_UpdateAnim(&v0->unk_38->unk_58, FX32_ONE * 2, 0);
        }
    }

    {
        v0->unk_02 = ov9_0224DBE4(
            v1->unk_14, v1->unk_08.unk_04, &v0->unk_08);
    }
}

static void ov9_0224BDE8(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov9_0224BC08 *v0 = param1;

    if (v0->unk_02 == 0) {
        return;
    }

    if (v0->unk_00 > 0) {
        UnkStruct_ov9_0224B708 *v1 = &v0->unk_20;

        ov9_0224DAAC(v1->unk_14, v1->unk_08.unk_04, v0->unk_00);
        Simple3D_DrawRenderObjWithPos(&v0->unk_38->unk_04, &v0->unk_08);
    }
}

static void ov9_0224BE14(DistWorldSystem *param0)
{
    enum MapHeader mapHeaderID;
    const UnkStruct_ov9_022530A4 *v1;

    mapHeaderID = DistWorldSystem_GetMapHeaderID(param0);
    v1 = ov9_0224D720(mapHeaderID);

    ov9_0224BFBC(param0);
    ov9_0224C0F8(param0, mapHeaderID, v1->unk_08);

    InitFloatingPlatformManager(param0);
    InitFloatingPlatformJumpPoint(param0);
    InitCameraAngleTemplates(param0);
    ov9_0224C808(param0);

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
    ov9_0224C854(param0);
    ov9_0224C164(param0);
    ov9_0224BFFC(param0);
}

static void ov9_0224BEB4(DistWorldSystem *param0, u32 param1)
{
    ov9_0224C844(param0);
    ov9_0224C184(param0);
    ResetCameraAngleTemplates(param0);
    ResetFloatingPlatformJumpPoint(param0);
    ResetFloatingPlatformManager(param0);
    ov9_0224C194(param0);
    ov9_0224C864(param0);
    ov9_0224B5B0(param0);
    ov9_0224B590(param0);
    ov9_0224C10C(param0, param1);
    InitFloatingPlatformManager(param0);
    FreeFloatingPlatformManagerTerrainAttrs(param0);
    InitFloatingPlatformJumpPoint(param0);
    InitCameraAngleTemplates(param0);
    ov9_0224C7C8(param0);
}

static void ov9_0224BF18(DistWorldSystem *param0, u32 param1)
{
    ResetCameraAngleTemplates(param0);
    ResetFloatingPlatformJumpPoint(param0);
    ResetFloatingPlatformManager(param0);
    ov9_0224C834(param0);
    ov9_0224C174(param0);
    ov9_0224C1E4(param0);
    ov9_0224C888(param0);
    ov9_0224B5EC(param0);
    ov9_0224B6BC(param0);
    ov9_0224B5A0(param0);
    InitFloatingPlatformManager(param0);
    FreeFloatingPlatformManagerTerrainAttrs(param0);
    InitFloatingPlatformJumpPoint(param0);
    InitCameraAngleTemplates(param0);

    if (param1 != 593) {
        ov9_0224C120(param0, param1);
        ov9_0224C7E8(param0);
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
        file->unk_10 = (u8 *)file->cameraAngleSection + header->cameraAngleSectionSize;
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
    DistWorldFile_Load(param0, &param0->unk_169C.unk_58, mapHeaderID);
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
    DistWorldFile_Free(&param0->unk_169C.unk_58);
}

static void ov9_0224C194(DistWorldSystem *param0)
{
    GF_ASSERT(param0->unk_169C.unk_58.mapHeaderID == MAP_HEADER_COUNT);
    GF_ASSERT(param0->unk_169C.unk_58.buffer == NULL);

    param0->unk_169C.unk_58 = param0->unk_169C.distortionWorldFile;

    DistWorldFile_Invalidate(&param0->unk_169C.distortionWorldFile);
}

static void ov9_0224C1E4(DistWorldSystem *param0)
{
    GF_ASSERT(param0->unk_169C.distortionWorldFile.mapHeaderID == MAP_HEADER_COUNT);
    GF_ASSERT(param0->unk_169C.distortionWorldFile.buffer == NULL);

    param0->unk_169C.distortionWorldFile = param0->unk_169C.unk_58;
    DistWorldFile_Invalidate(&param0->unk_169C.unk_58);
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

static int ov9_0224C27C(DistWorldSystem *param0)
{
    DistWorldFile *v0 = &param0->unk_169C.distortionWorldFile;
    DistWorldFileHeader *v1 = v0->header;

    return v1->unk_10;
}

static int ov9_0224C288(DistWorldSystem *param0)
{
    int v0 = 0;
    DistWorldFile *v1 = &param0->unk_169C.unk_58;

    if (v1->mapHeaderID != MAP_HEADER_COUNT) {
        DistWorldFileHeader *v2 = v1->header;
        v0 = v2->unk_10;
    }

    return v0;
}

static const UnkStruct_ov9_0224B3F8 *ov9_0224C2A8(DistWorldFile *param0)
{
    UnkStruct_ov9_0224B3F8 *v0 = param0->unk_10;
    return v0;
}

static const UnkStruct_ov9_0224B6CC *ov9_0224C2AC(DistWorldFile *param0)
{
    const u8 *v0 = param0->unk_10;
    v0 += sizeof(UnkStruct_ov9_0224B3F8);

    return (UnkStruct_ov9_0224B6CC *)v0;
}

static const UnkStruct_ov9_0224B748 *ov9_0224C2B4(DistWorldFile *param0)
{
    const UnkStruct_ov9_0224B3F8 *v0 = param0->unk_10;
    const u8 *v1 = param0->unk_10;

    v1 += sizeof(UnkStruct_ov9_0224B3F8) + (sizeof(UnkStruct_ov9_0224B6CC) * v0->unk_00);
    return (UnkStruct_ov9_0224B748 *)v1;
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

static void ov9_0224C788(DistWorldFile *param0, UnkStruct_ov9_0224C788 *param1)
{
    GF_ASSERT(param1->unk_00 == NULL);
    GF_ASSERT(param1->unk_04 == NULL);
    GF_ASSERT(param1->unk_08 == NULL);

    param1->unk_00 = ov9_0224C2A8(param0);
    param1->unk_04 = ov9_0224C2AC(param0);
    param1->unk_08 = ov9_0224C2B4(param0);
}

static void ov9_0224C7C8(DistWorldSystem *param0)
{
    if (ov9_0224C27C(param0)) {
        DistWorldFile *v0 = &param0->unk_169C.distortionWorldFile;
        UnkStruct_ov9_0224C788 *v1 = &param0->unk_169C.unk_4C;

        ov9_0224C788(v0, v1);
    }
}

static void ov9_0224C7E8(DistWorldSystem *param0)
{
    if (ov9_0224C288(param0)) {
        DistWorldFile *v0 = &param0->unk_169C.unk_58;
        UnkStruct_ov9_0224C788 *v1 = &param0->unk_169C.unk_74;

        ov9_0224C788(v0, v1);
    }
}

static void ov9_0224C808(DistWorldSystem *param0)
{
    ov9_0224C7C8(param0);
    ov9_0224C7E8(param0);
}

static void ov9_0224C818(UnkStruct_ov9_0224C788 *param0)
{
    memset(param0, 0, sizeof(UnkStruct_ov9_0224C788));
}

static void ov9_0224C834(DistWorldSystem *param0)
{
    UnkStruct_ov9_0224C788 *v0 = &param0->unk_169C.unk_4C;
    ov9_0224C818(v0);
}

static void ov9_0224C844(DistWorldSystem *param0)
{
    UnkStruct_ov9_0224C788 *v0 = &param0->unk_169C.unk_74;
    ov9_0224C818(v0);
}

static void ov9_0224C854(DistWorldSystem *param0)
{
    ov9_0224C834(param0);
    ov9_0224C844(param0);
}

static void ov9_0224C864(DistWorldSystem *param0)
{
    param0->unk_169C.unk_74 = param0->unk_169C.unk_4C;
    ov9_0224C818(&param0->unk_169C.unk_4C);
}

static void ov9_0224C888(DistWorldSystem *param0)
{
    param0->unk_169C.unk_4C = param0->unk_169C.unk_74;
    ov9_0224C818(&param0->unk_169C.unk_74);
}

static const UnkStruct_ov9_0224B3F8 *ov9_0224C8AC(DistWorldSystem *param0)
{
    UnkStruct_ov9_0224C788 *v0 = &param0->unk_169C.unk_4C;
    return v0->unk_00;
}

static const UnkStruct_ov9_0224B3F8 *ov9_0224C8B8(DistWorldSystem *param0)
{
    UnkStruct_ov9_0224C788 *v0 = &param0->unk_169C.unk_74;
    return v0->unk_00;
}

static const UnkStruct_ov9_0224B6CC *ov9_0224C8C4(DistWorldSystem *param0)
{
    UnkStruct_ov9_0224C788 *v0 = &param0->unk_169C.unk_4C;
    return v0->unk_04;
}

static const UnkStruct_ov9_0224B6CC *ov9_0224C8D0(DistWorldSystem *param0)
{
    UnkStruct_ov9_0224C788 *v0 = &param0->unk_169C.unk_74;
    return v0->unk_04;
}

static const UnkStruct_ov9_0224B748 *ov9_0224C8DC(DistWorldSystem *param0)
{
    UnkStruct_ov9_0224C788 *v0 = &param0->unk_169C.unk_4C;
    return v0->unk_08;
}

static void ov9_0224C8E8(DistWorldSystem *param0)
{
    enum MapHeader mapHeaderID, v1;
    UnkStruct_ov9_0224C8E8 *v2 = &param0->unk_1E88;
    FieldSystem *fieldSystem = param0->fieldSystem;
    const UnkStruct_ov9_022530A4 *v4, *v5;

    mapHeaderID = DistWorldSystem_GetMapHeaderID(param0);
    v4 = ov9_0224D720(mapHeaderID);
    v1 = v4->unk_08;

    if (v1 == 593) {
        return;
    }

    v5 = ov9_0224D720(v1);
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

static void ov9_0224CC50(DistWorldSystem *param0, UnkStruct_ov9_0224E0DC *param1, u32 param2)
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
    const UnkStruct_ov9_022530A4 *v2 = ov9_0224D720(DistWorldSystem_GetMapHeaderID(param0));
    GF_ASSERT(v2->unk_08 != 593);

    v2 = ov9_0224D720(v2->unk_08);
    param1->unk_0C = v2->unk_00;

    ov5_021D12D0(param0->fieldSystem, param1->unk_0C);
    ov9_0224BF18(param0, v2->unk_08);
    LandDataManager_DistortionWorldEndWithoutFreeing(fieldSystem->landDataMan);

    param1->unk_08 = Player_GetXPos(fieldSystem->playerAvatar);
    param1->unk_0A = Player_GetZPos(fieldSystem->playerAvatar);

    LandDataManager_DistortionWorldPrepareNextFloor(v1->unk_10, v1->unk_14, v1->unk_18, fieldSystem->landDataMan, param1->unk_08, param1->unk_0A);
    v1->unk_08 = 0;
    ov9_0224CBBC(v1->unk_18, 0);

    MapMatrix_Free(v1->unk_10);
    v1->unk_10 = NULL;

    ov9_0224CBBC(param0->fieldSystem->landDataMan, 1);
    v1->unk_00 = v2->unk_08;

    if (v1->unk_00 != 593) {
        v2 = ov9_0224D720(v2->unk_08);
        v1->unk_10 = MapMatrix_NewWithHeapID(4);
        MapMatrix_Load(v2->unk_00, v1->unk_10);
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
    const UnkStruct_ov9_022530A4 *v0;
    UnkStruct_ov9_0224C8E8 *v1 = &param0->unk_1E88;

    if (v1->unk_00 != 593) {
        v1->unk_08 = 1;
        ov9_0224CBBC(v1->unk_18, 1);
        LandDataManager_DistortionWorldUpdateTrackedTargetValues(v1->unk_18, param1->unk_08, param1->unk_0A);
    }

    v0 = ov9_0224D720(param1->unk_0C);
    ov9_02249C08(param0, v0->unk_08);

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
    const UnkStruct_ov9_022530A4 *v0;
    UnkStruct_ov9_0224C8E8 *v1 = &param0->unk_1E88;

    v1->unk_08 = 0;

    if (v1->unk_04 == 1) {
        ov9_0224CBBC(v1->unk_18, 0);
    }

    v0 = ov9_0224D720(DistWorldSystem_GetMapHeaderID(param0));
    ov9_02249C2C(param0, v0->unk_08);

    param1->unk_04 = 1;
    return 0;
}

static int ov9_0224CEBC(DistWorldSystem *param0, UnkStruct_ov9_0224CBD8 *param1)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    UnkStruct_ov9_0224C8E8 *v1 = &param0->unk_1E88;
    const UnkStruct_ov9_022530A4 *v2 = ov9_0224D720(DistWorldSystem_GetMapHeaderID(param0));
    GF_ASSERT(v2->unk_04 != 593);
    v2 = ov9_0224D720(v2->unk_04);

    param1->unk_0C = v2->unk_00;

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
    MapMatrix_Load(v2->unk_00, fieldSystem->mapMatrix);

    {
        int v4 = 0, v5 = 0, v6 = 0;

        LandDataManager_DistortionWorldInitWithoutNARC(fieldSystem->landDataMan, fieldSystem->mapMatrix, fieldSystem->areaDataManager);
        ov9_02251094(v2->unk_00, &v4, &v5, &v6);
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

static BOOL ov9_0224D040(DistWorldSystem *param0, int param1, int param2, int param3)
{
    UnkStruct_ov9_0224E0DC *v0 = ov9_0224E188(param0, param1, param2, param3, DistWorldSystem_GetMapHeaderID(param0));

    if (v0 == NULL) {
        return 0;
    }

    if ((v0->unk_04.unk_0A == 1) || (v0->unk_04.unk_0A == 0)) {
        ov9_0224D078(param0, v0);
        return 1;
    }

    return 0;
}

static int (*const Unk_ov9_02252224[8])(DistWorldSystem *, UnkStruct_ov9_0224D078 *);

static void ov9_0224D078(DistWorldSystem *param0, UnkStruct_ov9_0224E0DC *param1)
{
    UnkStruct_ov9_0224D078 *v0 = InitFieldTaskContext(param0, sizeof(UnkStruct_ov9_0224D078));
    v0->unk_64 = param1;

    FieldSystem_CreateTask(param0->fieldSystem, ov9_0224D098, param0);
}

static BOOL ov9_0224D098(FieldTask *param0)
{
    int v0;
    DistWorldSystem *v1 = FieldTask_GetEnv(param0);
    UnkStruct_ov9_0224D078 *v2 = GetFieldTaskContext(v1);

    do {
        v0 = Unk_ov9_02252224[v2->unk_04](v1, v2);
    } while (v0 == 1);

    if (v0 == 2) {
        return 1;
    }

    return 0;
}

static int ov9_0224D0C8(DistWorldSystem *param0, UnkStruct_ov9_0224D078 *param1)
{
    u32 v0;
    MapObject *v1;
    const UnkStruct_ov9_022530A4 *v2;
    const UnkStruct_ov9_02253830 *v3;

    param1->unk_00 = param1->unk_64->unk_04.unk_0A;
    param1->unk_02 = param1->unk_64->unk_04.unk_08;

    v0 = DistWorldSystem_GetMapHeaderID(param0);
    v2 = ov9_0224D720(v0);

    if (param1->unk_00 == 1) {
        param1->unk_06 = v2->unk_08;

        {
            VarsFlags *v4 = SaveData_GetVarsFlags(param0->fieldSystem->saveData);
            u16 v5 = SystemVars_GetDistortionWorldProgress(v4);

            if ((v0 == 573) && (v5 == 2)) {
                param1->unk_68 = MapObjMan_LocalMapObjByIndex(param0->fieldSystem->mapObjMan, (0x80 + 1));
                GF_ASSERT(param1->unk_68 != NULL);
            } else if ((v0 == 580) && (v5 == 7)) {
                param1->unk_68 = MapObjMan_LocalMapObjByIndex(param0->fieldSystem->mapObjMan, (0x80 + 6));
                GF_ASSERT(param1->unk_68 != NULL);
            }
        }
    } else {
        param1->unk_06 = v2->unk_04;

        switch (param0, param1->unk_02) {
        case 13:
            ov9_02249D70(param0, 3);
            ov9_02249D8C(param0, 4);
            break;
        case 10:
            ov9_02249D8C(param0, 5);
            break;
        case 11:
            ov9_02249D70(param0, 6);
            ov9_02249D8C(param0, 3);
            ov9_02249D8C(param0, 5);
            break;
        }
    }

    v3 = ov9_0224DE70(param1->unk_02);
    v1 = Player_MapObject(param0->fieldSystem->playerAvatar);

    MapObject_GetPosPtr(v1, &param1->unk_14);
    MapObject_SetHeightCalculationDisabled(v1, TRUE);

    param1->unk_44.x = 0;
    param1->unk_44.y = 0;
    param1->unk_44.z = 0;
    param1->unk_0A = MapObject_GetX(v1);
    param1->unk_0A += v3->unk_04;
    param1->unk_0C = MapObject_GetY(v1);
    param1->unk_0C += ((v3->unk_06) * 2);
    param1->unk_0E = MapObject_GetZ(v1);
    param1->unk_0E += v3->unk_08;
    param1->unk_2C.x = (((v3->unk_04) << 4) * FX32_ONE);
    param1->unk_2C.y = (((v3->unk_06) << 4) * FX32_ONE);
    param1->unk_2C.z = (((v3->unk_08) << 4) * FX32_ONE);
    param1->unk_38.x = (((v3->unk_0A) << 4) * FX32_ONE);
    param1->unk_38.y = (((v3->unk_0C) << 4) * FX32_ONE);
    param1->unk_38.z = (((v3->unk_0E) << 4) * FX32_ONE);
    param1->unk_20 = v3->unk_10;
    param1->unk_08 = v3->unk_02;

    if (param1->unk_01 == 0) {
        VecFx32 v6, *v7;

        param1->unk_5C = (FX32_ONE * 6);
        sub_0206309C(v1, &v6);
        param1->unk_50 = v6.y;

        if (param1->unk_68 != NULL) {
            sub_0206309C(param1->unk_68, &v6);
            param1->unk_54 = v6.y;
        }

        v7 = ov9_0224E330(param1->unk_64->unk_20);

        param1->unk_58 = v7->y;
        param1->unk_01 = 1;
        param1->unk_04 = 1;

        Sound_PlayEffect(SEQ_SE_PL_FW089);
    } else {
        param1->unk_04 = 2;
    }

    param1->unk_10 = v3->unk_1C;
    param1->unk_12 = v3->unk_1E;

    return 0;
}

static int ov9_0224D288(DistWorldSystem *param0, UnkStruct_ov9_0224D078 *param1)
{
    VecFx32 v0;
    PlayerAvatar *playerAvatar = param0->fieldSystem->playerAvatar;
    MapObject *v2 = Player_MapObject(playerAvatar);
    VecFx32 *v3 = ov9_0224E330(param1->unk_64->unk_20);

    sub_0206309C(v2, &v0);

    v0.y = param1->unk_50 + param1->unk_5C;

    sub_020630AC(v2, &v0);
    ov9_022511F4(v2, &param1->unk_14);

    if (param1->unk_68 != NULL) {
        VecFx32 v4;

        sub_0206309C(param1->unk_68, &v0);
        v0.y = param1->unk_54 + param1->unk_5C;
        sub_020630AC(param1->unk_68, &v0);

        MapObject_GetPosPtr(param1->unk_68, &v4);
        v4.y = param1->unk_14.y;
        ov9_022511F4(param1->unk_68, &v4);
    }

    v3->y = param1->unk_58 + param1->unk_5C;
    param1->unk_5C = -param1->unk_5C;

    if (param1->unk_5C >= 0) {
        if (param1->unk_5C >= (FX32_ONE * 4)) {
            param1->unk_5C -= (FX32_ONE * 2);
        } else if (param1->unk_5C > (FX32_ONE * 1)) {
            param1->unk_5C -= (FX32_ONE * 1);
        } else {
            param1->unk_60++;

            if (param1->unk_60 >= 8) {
                param1->unk_5C -= (FX32_ONE * 1);
            }
        }

        if (param1->unk_5C <= 0) {
            sub_0206309C(v2, &v0);
            v0.y = param1->unk_50;
            sub_020630AC(v2, &v0);

            if (param1->unk_68 != NULL) {
                sub_0206309C(param1->unk_68, &v0);
                v0.y = param1->unk_54;
                sub_020630AC(param1->unk_68, &v0);
            }

            v3->y = param1->unk_58;
            param1->unk_04 = 2;
        }
    }

    return 0;
}

static int ov9_0224D374(DistWorldSystem *param0, UnkStruct_ov9_0224D078 *param1)
{
    int v0;
    PlayerAvatar *playerAvatar = param0->fieldSystem->playerAvatar;
    MapObject *v2 = Player_MapObject(playerAvatar);
    VecFx32 *v3 = ov9_0224E330(param1->unk_64->unk_20);

    if (param1->unk_44.x != param1->unk_2C.x) {
        param1->unk_44.x += param1->unk_20.x;
        param1->unk_14.x += param1->unk_20.x;
        v3->x += param1->unk_20.x;
    }

    if (param1->unk_44.y != param1->unk_2C.y) {
        param1->unk_44.y += param1->unk_20.y;
        param1->unk_14.y += param1->unk_20.y;
        v3->y += param1->unk_20.y;
    }

    if (param1->unk_44.z != param1->unk_2C.z) {
        param1->unk_44.z += param1->unk_20.z;
        param1->unk_14.z += param1->unk_20.z;
        v3->z += param1->unk_20.z;
    }

    ov9_022511F4(v2, &param1->unk_14);

    if (param1->unk_68 != NULL) {
        VecFx32 v4;

        MapObject_GetPosPtr(param1->unk_68, &v4);
        v4.y = param1->unk_14.y;
        ov9_022511F4(param1->unk_68, &v4);
    }

    if ((param1->unk_44.x == param1->unk_38.x) && (param1->unk_44.y == param1->unk_38.y) && (param1->unk_44.z == param1->unk_38.z)) {
        param1->unk_04 = 3;
        return 1;
    }

    return 0;
}

static int ov9_0224D430(DistWorldSystem *param0, UnkStruct_ov9_0224D078 *param1)
{
    ov9_0224E0DC(param1->unk_64, 1);

    if (param1->unk_08 == 22) {
        if (param1->unk_10 != 11) {
            ov9_02249D70(param0, param1->unk_10);
        }

        if (param1->unk_12 != 11) {
            ov9_02249D8C(param0, param1->unk_12);
        }

        ov9_0224E07C(param0, param1->unk_64, param1->unk_06);
    }

    if (param1->unk_68 != NULL) {
        if (param1->unk_06 == 574) {
            MapObject_SetLocalID(param1->unk_68, (0x80 + 0));
        } else {
            MapObject_SetLocalID(param1->unk_68, (0x80 + 0));
            MapObject_SetScript(param1->unk_68, 6);
        }

        sub_02062914(param1->unk_68, param1->unk_06);
    }

    if (param1->unk_00 == 1) {
        ov9_0224CC50(param0, param1->unk_64, 2);
    } else if (param1->unk_00 == 0) {
        ov9_0224CC50(param0, param1->unk_64, 1);
    } else {
        GF_ASSERT(0);
    }

    param1->unk_04 = 4;
    return 0;
}

static int ov9_0224D4C4(DistWorldSystem *param0, UnkStruct_ov9_0224D078 *param1)
{
    int v0;
    PlayerAvatar *playerAvatar = param0->fieldSystem->playerAvatar;
    MapObject *v2 = Player_MapObject(playerAvatar);
    VecFx32 *v3 = ov9_0224E330(param1->unk_64->unk_20);

    if (param1->unk_44.x != param1->unk_2C.x) {
        param1->unk_44.x += param1->unk_20.x;
        param1->unk_14.x += param1->unk_20.x;
        v3->x += param1->unk_20.x;
    }

    if (param1->unk_44.y != param1->unk_2C.y) {
        param1->unk_44.y += param1->unk_20.y;
        param1->unk_14.y += param1->unk_20.y;
        v3->y += param1->unk_20.y;
    }

    if (param1->unk_44.z != param1->unk_2C.z) {
        param1->unk_44.z += param1->unk_20.z;
        param1->unk_14.z += param1->unk_20.z;
        v3->z += param1->unk_20.z;
    }

    ov9_022511F4(v2, &param1->unk_14);

    if (param1->unk_68 != NULL) {
        VecFx32 v4;

        MapObject_GetPosPtr(param1->unk_68, &v4);
        v4.y = param1->unk_14.y;
        ov9_022511F4(param1->unk_68, &v4);
    }

    if ((param1->unk_44.x == param1->unk_2C.x) && (param1->unk_44.y == param1->unk_2C.y) && (param1->unk_44.z == param1->unk_2C.z)) {
        if (param1->unk_08 == 22) {
            Sound_StopEffect(1481, 0);
            param1->unk_04 = 5;
        } else {
            MapObject *v5 = Player_MapObject(param0->fieldSystem->playerAvatar);

            MapObject_SetX(v5, param1->unk_0A);
            MapObject_SetY(v5, param1->unk_0C);
            MapObject_SetZ(v5, param1->unk_0E);
            MapObject_UpdateCoords(v5);

            if (param1->unk_68 != NULL) {
                MapObject_SetY(param1->unk_68, param1->unk_0C);
                MapObject_UpdateCoords(param1->unk_68);
            }

            {
                UnkStruct_ov9_0224E0DC *v6 = param1->unk_64;

                v6->unk_04.unk_08 = param1->unk_08;
                MapObject_SetDataAt(v6->unk_1C, v6->unk_04.unk_08, 2);
            }

            param1->unk_04 = 0;
        }

        return 1;
    }

    return 0;
}

static int ov9_0224D5E8(DistWorldSystem *param0, UnkStruct_ov9_0224D078 *param1)
{
    if (ov9_0224CC7C(param0) == 0) {
        MapObject *v0 = Player_MapObject(param0->fieldSystem->playerAvatar);

        MapObject_SetX(v0, param1->unk_0A);
        MapObject_SetY(v0, param1->unk_0C);
        MapObject_SetZ(v0, param1->unk_0E);
        MapObject_UpdateCoords(v0);
        PlayerAvatar_SetHeightCalculationEnabledAndUpdate(param0->fieldSystem->playerAvatar, TRUE);

        if (param1->unk_68 != NULL) {
            MapObject_SetY(param1->unk_68, param1->unk_0C);
            MapObject_UpdateCoords(param1->unk_68);
        }

        if (param1->unk_00 == 1) {
            switch (param1->unk_02) {
            case 9:
                ov9_02249D70(param0, 7);
                ov9_0224DDA0(param0, 579, 0);
                break;
            }
        }

        if ((param1->unk_06 == 577) && (param1->unk_00 == 1) && (param1->unk_64->unk_04.unk_00 == 1)) {
            VarsFlags *v1 = SaveData_GetVarsFlags(param0->fieldSystem->saveData);

            if (SystemVars_GetDistortionWorldCyrusApperanceState(v1) == 0) {
                param1->unk_04 = 6;
                return 1;
            }
        }

        return 2;
    }

    return 0;
}

static const MapObjectAnimCmd Unk_ov9_02251378[] = {
    { 0xf, 0x2 },
    { 0xC, 0x4 },
    { 0xfe, 0x0 }
};

static const MapObjectAnimCmd Unk_ov9_0225136C[] = {
    { 0xf, 0x1 },
    { 0xC, 0x4 },
    { 0xfe, 0x0 }
};

static const MapObjectAnimCmd Unk_ov9_02251350[] = {
    { 0xC, 0x4 },
    { 0xfe, 0x0 }
};

static const MapObjectAnimCmd *const Unk_ov9_02251384[3] = {
    Unk_ov9_02251378,
    Unk_ov9_0225136C,
    Unk_ov9_02251350
};

static int ov9_0224D69C(DistWorldSystem *param0, UnkStruct_ov9_0224D078 *param1)
{
    int v0;
    MapObject *v1;
    const MapObjectAnimCmd *v2;

    v1 = MapObjMan_LocalMapObjByIndex(param0->fieldSystem->mapObjMan, (0x80 + 6));
    GF_ASSERT(v1 != NULL);

    v0 = MapObject_GetX(v1);
    GF_ASSERT((u32)(v0 - 88) < 3);

    v2 = Unk_ov9_02251384[v0 - 88];
    param1->unk_6C = MapObject_StartAnimation(v1, v2);
    param1->unk_04 = 7;

    return 0;
}

static int ov9_0224D6E0(DistWorldSystem *param0, UnkStruct_ov9_0224D078 *param1)
{
    if (MapObject_HasAnimationEnded(param1->unk_6C) == 1) {
        VarsFlags *v0;
        MapObject *v1;

        MapObject_FinishAnimation(param1->unk_6C);
        v1 = MapObjMan_LocalMapObjByIndex(param0->fieldSystem->mapObjMan, (0x80 + 6));

        ov9_0224EE70(param0, v1);
        v0 = SaveData_GetVarsFlags(param0->fieldSystem->saveData);

        SystemVars_SetDistortionWorldCyrusApperanceState(v0, 1);
        return 2;
    }

    return 0;
}

static int (*const Unk_ov9_02252224[8])(DistWorldSystem *, UnkStruct_ov9_0224D078 *) = {
    ov9_0224D0C8,
    ov9_0224D288,
    ov9_0224D374,
    ov9_0224D430,
    ov9_0224D4C4,
    ov9_0224D5E8,
    ov9_0224D69C,
    ov9_0224D6E0
};

static const UnkStruct_ov9_022530A4 *ov9_0224D720(int param0)
{
    int v0 = 0;
    const UnkStruct_ov9_022530A4 *v1 = Unk_ov9_022530A4;

    while (v0 < 10) {
        if (v1->unk_00 == param0) {
            return v1;
        }

        v0++;
        v1++;
    }

    GF_ASSERT(0);
    return NULL;
}

static void ov9_0224D744(DistWorldSystem *param0)
{
    int v0;
    UnkStruct_ov9_0224D744 *v1 = &param0->unk_3A4;

    memset((u8 *)v1, 0, sizeof(UnkStruct_ov9_0224D744));

    for (v0 = 0; v0 < 25; v0++) {
        v1->unk_00[v0].unk_00 = 25;
    }

    for (v0 = 0; v0 < 5; v0++) {
        v1->unk_258[v0].unk_00 = 5;
    }
}

static void ov9_0224D780(DistWorldSystem *param0, u32 param1)
{
    UnkStruct_ov9_0224D744 *v0 = &param0->unk_3A4;

    GF_ASSERT(param1 < 25);

    if (v0->unk_00[param1].unk_00 == 25) {
        v0->unk_00[param1].unk_00 = param1;
        ov5_021DFB00(param0->fieldSystem->unk_40, &v0->unk_00[param1].unk_04, 0, Unk_ov9_02252FD0[param1], 1);
    }
}

static void ov9_0224D7C0(DistWorldSystem *param0, u32 param1)
{
    UnkStruct_ov9_0224D744 *v0 = &param0->unk_3A4;

    GF_ASSERT(param1 < 25);

    if (v0->unk_00[param1].unk_00 != 25) {
        v0->unk_00[param1].unk_00 = 25;
        Simple3D_FreeModel(&v0->unk_00[param1].unk_04);
    }
}

static Simple3DModel *ov9_0224D7EC(DistWorldSystem *param0, u32 param1)
{
    UnkStruct_ov9_0224D744 *v0 = &param0->unk_3A4;

    GF_ASSERT(param1 < 25);
    GF_ASSERT(v0->unk_00[param1].unk_00 != 25);

    return &v0->unk_00[param1].unk_04;
}

static void ov9_0224D814(DistWorldSystem *param0, u32 param1)
{
    UnkStruct_ov9_0224D744 *v0 = &param0->unk_3A4;

    GF_ASSERT(param1 < 5);

    if (v0->unk_258[param1].unk_00 == 5) {
        u32 v1 = Unk_ov9_022514A4[param1];
        u32 v2 = ov5_021DF5A8(param0->fieldSystem->unk_40, v1);

        v0->unk_258[param1].unk_04 = Heap_AllocAtEnd(HEAP_ID_FIELD1, v2);
        ov5_021DF5B4(param0->fieldSystem->unk_40, v1, v0->unk_258[param1].unk_04);
        v0->unk_258[param1].unk_00 = param1;
    }
}

static void ov9_0224D874(DistWorldSystem *param0, u32 param1)
{
    UnkStruct_ov9_0224D744 *v0 = &param0->unk_3A4;

    GF_ASSERT(param1 < 5);

    if (v0->unk_258[param1].unk_00 != 5) {
        v0->unk_258[param1].unk_00 = 5;
        Heap_Free(v0->unk_258[param1].unk_04);
    }
}

static UnkStruct_ov9_0224D928 *ov9_0224D8A4(DistWorldSystem *param0, u32 param1, int *param2)
{
    int v0;
    BOOL v1;
    UnkStruct_ov9_0224D744 *v2 = &param0->unk_3A4;

    v1 = ov9_0224DB04(param1);

    if (v1 == 1) {
        for (v0 = 0; v0 < 34; v0++) {
            if (v2->unk_280[v0].unk_00 == 1) {
                if (v2->unk_280[v0].unk_02 == param1) {
                    *param2 = 1;
                    return &v2->unk_280[v0];
                }
            }
        }
    }

    for (v0 = 0; v0 < 34; v0++) {
        if (v2->unk_280[v0].unk_00 == 0) {
            *param2 = 0;
            v2->unk_280[v0].unk_00 = 1;
            v2->unk_280[v0].unk_02 = param1;
            return &v2->unk_280[v0];
        }
    }

    GF_ASSERT(0);
    return NULL;
}

static void ov9_0224D928(DistWorldSystem *param0, UnkStruct_ov9_0224D928 *param1)
{
    GF_ASSERT(param1 != NULL);
    param1->unk_00 = 0;
}

static void ov9_0224D938(DistWorldSystem *param0, UnkStruct_ov9_0224D928 *param1)
{
    BOOL v0 = ov9_0224DB04(param1->unk_02);

    if (v0 == 0) {
        ov9_0224D928(param0, param1);
    }
}

static void ov9_0224D954(DistWorldSystem *param0, int param1)
{
    int v0;
    UnkStruct_ov9_0224D744 *v1 = &param0->unk_3A4;

    for (v0 = 0; v0 < 34; v0++) {
        if (v1->unk_280[v0].unk_00 && (v1->unk_280[v0].unk_02 == param1)) {
            ov9_0224D928(param0, &v1->unk_280[v0]);
        }
    }
}

static void ov9_0224D994(DistWorldSystem *param0)
{
    int v0;
    UnkStruct_ov9_0224D744 *v1 = &param0->unk_3A4;

    for (v0 = 0; v0 < 25; v0++) {
        ov9_0224D7C0(param0, v0);
    }

    for (v0 = 0; v0 < 5; v0++) {
        ov9_0224D874(param0, v0);
    }
}

static void ov9_0224D9BC(DistWorldSystem *param0, u32 param1, u32 param2, Simple3DRenderObj *param3, Simple3DAnimation *param4)
{
    UnkStruct_ov9_0224D744 *v0 = &param0->unk_3A4;

    if (param1 != 25) {
        if (v0->unk_00[param1].unk_00 == 25) {
            ov9_0224D780(param0, param1);
        }

        Simple3D_CreateRenderObject(param3, &v0->unk_00[param1].unk_04);
    }

    if (param2 != 5) {
        if (v0->unk_258[param2].unk_00 == 5) {
            ov9_0224D814(param0, param2);
        }

        Simple3D_LoadFromAllocatedSet(param4, v0->unk_258[param2].unk_04, 0);
        Simple3D_BindModelToAnim(param4, &v0->unk_00[param1].unk_04, HEAP_ID_FIELD1);
        Simple3D_InitG3DAnimObject(param4, &v0->unk_00[param1].unk_04);
        Simple3D_BindAnimToRenderObj(param3, param4);
    }
}

static void ov9_0224DA48(DistWorldSystem *param0, int param1, Simple3DRenderObj *param2, Simple3DAnimation *param3)
{
    const UnkStruct_ov9_022531D0 *v0 = &Unk_ov9_022531D0[param1];
    ov9_0224D9BC(param0, v0->unk_00, v0->unk_02, param2, param3);
}

static void ov9_0224DA64(DistWorldSystem *param0, int param1, int param2, int param3)
{
    const UnkStruct_ov9_022531D0 *v0 = &Unk_ov9_022531D0[param1];
    int v1 = v0->unk_00;
    UnkStruct_ov9_0224D744 *v2 = &param0->unk_3A4;

    NNS_G3dMdlUseMdlAlpha(v2->unk_00[v1].unk_04.g3DModel);
    NNS_G3dMdlSetMdlAlphaAll(v2->unk_00[v1].unk_04.g3DModel, param2);

    if (param3 != -1) {
        param3 &= 0x3f;
        NNS_G3dMdlSetMdlPolygonIDAll(v2->unk_00[v1].unk_04.g3DModel, param3);
    }
}

static void ov9_0224DAAC(DistWorldSystem *param0, int param1, int param2)
{
    ov9_0224DA64(param0, param1, param2, -1);
}

static void ov9_0224DAB8(DistWorldSystem *param0, int param1, int param2)
{
    const UnkStruct_ov9_022531D0 *v0 = &Unk_ov9_022531D0[param1];
    int v1 = v0->unk_00;
    UnkStruct_ov9_0224D744 *v2 = &param0->unk_3A4;

    GF_ASSERT(v2->unk_00[v1].unk_00 < 25);
    param2 &= 0x3f;

    NNS_G3dMdlSetMdlPolygonIDAll(v2->unk_00[v1].unk_04.g3DModel, param2);
}

static BOOL ov9_0224DAEC(int param0)
{
    const UnkStruct_ov9_022531D0 *v0 = &Unk_ov9_022531D0[param0];

    if (v0->unk_02 != 5) {
        return 1;
    }

    return 0;
}

static BOOL ov9_0224DB04(int param0)
{
    const UnkStruct_ov9_022531D0 *v0 = &Unk_ov9_022531D0[param0];

    if (v0->unk_04 == 1) {
        return 1;
    }

    return 0;
}

static void ov9_0224DB1C(DistWorldSystem *param0)
{
    int v0;

    for (v0 = 0; v0 < 25; v0++) {
        if ((ov9_0224B8DC(param0, v0) == 0) && (ov9_0224E160(param0, v0) == 0) && (ov9_0224E9F4(param0, v0) == 0) && (ov9_0224ECC0(param0, v0) == 0)) {
            ov9_0224D954(param0, v0);
        }
    }

    for (v0 = 0; v0 < 25; v0++) {
        if ((ov9_0224B7B0(param0, v0) == 0) && (ov9_0224E0E0(param0, v0) == 0) && (ov9_0224E9A4(param0, v0) == 0) && (ov9_0224ECE8(param0, v0) == 0)) {
            ov9_0224D7C0(param0, v0);
        }
    }

    for (v0 = 0; v0 < 5; v0++) {
        if ((ov9_0224B844(param0, v0) == 0) && (ov9_0224E120(param0, v0) == 0) && (ov9_0224E9CC(param0, v0) == 0) && (ov9_0224ED20(param0, v0) == 0)) {
            ov9_0224D874(param0, v0);
        }
    }
}

static BOOL ov9_0224DBE4(DistWorldSystem *param0, int param1, VecFx32 *param2)
{
    const VecFx32 *v0 = &Unk_ov9_022533C4[param1];

    if (v0->x == 0) {
        return 1;
    }

    {
        const UnkStruct_ov9_022531D0 *v1 = &Unk_ov9_022531D0[param1];
        Simple3DModel *v2 = ov9_0224D7EC(param0, v1->unk_00);
        MtxFx33 v3;

        MTX_Identity33(&v3);

        if (GFXBoxTest_IsModelInView(v2->g3DModel, param2, &v3, v0)) {
            return 1;
        }
    }

    return 0;
}

static void ov9_0224DC34(DistWorldSystem *param0)
{
    UnkStruct_ov9_0224DC34 *v0 = &param0->unk_1734;
    memset(v0, 0, sizeof(UnkStruct_ov9_0224DC34));
}

static void ov9_0224DC4C(DistWorldSystem *param0)
{
    int v0;
    UnkStruct_ov9_0224DC34 *v1 = &param0->unk_1734;

    for (v0 = 0; v0 < 32; v0++) {
        if (v1->unk_00[v0].unk_00) {
            ov9_0224E044(param0, &v1->unk_00[v0]);
        }
    }
}

static void ov9_0224DC74(DistWorldSystem *param0, u32 param1)
{
    int v0;
    UnkStruct_ov9_0224DC34 *v1 = &param0->unk_1734;

    for (v0 = 0; v0 < 32; v0++) {
        if (v1->unk_00[v0].unk_00) {
            if (v1->unk_00[v0].unk_02 == param1) {
                if (v1->unk_00[v0].unk_01 == 0) {
                    ov9_0224E060(param0, &v1->unk_00[v0]);
                } else {
                    (void)0;
                }
            }
        }
    }
}

static void ov9_0224DCA8(DistWorldSystem *param0)
{
    if (IsPersistedDataValid(param0) == 1) {
        int v0 = 0;
        UnkStruct_ov9_0224E0DC *v1;
        MapObject *v2;
        MapObjectManager *v3 = param0->fieldSystem->mapObjMan;

        while (sub_020625B0(v3, &v2, &v0, (1 << 0)) == 1) {
            if (MapObject_GetLocalID(v2) == 0xfd) {
                v1 = ov9_0224DDDC(param0);
                ov9_0224DF10(param0, v1, v2);
            }
        }
    } else {
        u32 v4 = DistWorldSystem_GetMapHeaderID(param0);
        const UnkStruct_ov9_022530A4 *v5 = ov9_0224D720(v4);

        ov9_0224DD24(param0, v4);
        ov9_0224DD24(param0, v5->unk_08);
    }
}

static void ov9_0224DD24(DistWorldSystem *param0, u32 param1)
{
    const UnkStruct_ov9_02252C38 *v0 = ov9_0224DE40(param1);

    if (v0 != NULL) {
        ov9_0224DD40(param0, v0, param1);
    }
}

static void ov9_0224DD40(DistWorldSystem *param0, const UnkStruct_ov9_02252C38 *param1, u32 param2)
{
    u32 v0;
    int v1 = 0;
    UnkStruct_ov9_0224E0DC *v2;

    GF_ASSERT(param1 != NULL);

    while (param1->unk_04[v1] != NULL) {
        v0 = param1->unk_04[v1]->unk_14;

        if ((v0 == 11) || (ov9_02249DA8(param0, v0) == 1)) {
            if (ov9_0224DE08(param0, param1->unk_04[v1]->unk_00, param2) == NULL) {
                v2 = ov9_0224DDDC(param0);
                ov9_0224DFF4(param0, v2, param1->unk_04[v1], param2);
            } else {
                (void)0;
            }
        }

        v1++;
    }
}

static void ov9_0224DDA0(DistWorldSystem *param0, u32 param1, int param2)
{
    const UnkStruct_ov9_02252C38 *v0 = ov9_0224DE40(param1);

    if (ov9_0224DE08(param0, v0->unk_04[param2]->unk_00, param1) == NULL) {
        UnkStruct_ov9_0224E0DC *v1;

        v1 = ov9_0224DDDC(param0);
        ov9_0224DFF4(param0, v1, v0->unk_04[param2], param1);
    }
}

static UnkStruct_ov9_0224E0DC *ov9_0224DDDC(DistWorldSystem *param0)
{
    int v0 = 0;
    UnkStruct_ov9_0224DC34 *v1 = &param0->unk_1734;

    while (v0 < 32) {
        if (v1->unk_00[v0].unk_00 == 0) {
            return &v1->unk_00[v0];
        }

        v0++;
    }

    GF_ASSERT(0);
    return NULL;
}

static UnkStruct_ov9_0224E0DC *ov9_0224DE08(DistWorldSystem *param0, u32 param1, u32 param2)
{
    int v0 = 0;
    UnkStruct_ov9_0224DC34 *v1 = &param0->unk_1734;

    while (v0 < 32) {
        if ((v1->unk_00[v0].unk_00 == 1) && (v1->unk_00[v0].unk_04.unk_00 == param1) && (v1->unk_00[v0].unk_02 == param2)) {
            return &v1->unk_00[v0];
        }

        v0++;
    }

    return NULL;
}

static const UnkStruct_ov9_02252C38 *ov9_0224DE40(u32 param0)
{
    int v0 = 0;
    const UnkStruct_ov9_02252C38 *v1 = Unk_ov9_02252C38;

    while (v0 < 8) {
        if (v1->unk_00 == param0) {
            return v1;
        }

        v0++;
        v1++;
    }

    return NULL;
}

static const UnkStruct_ov9_0224DF10 *ov9_0224DE60(u32 param0, u32 param1)
{
    const UnkStruct_ov9_02252C38 *v0 = ov9_0224DE40(param0);
    return v0->unk_04[param1];
}

static const UnkStruct_ov9_02253830 *ov9_0224DE70(u32 param0)
{
    u32 v0 = 0;
    const UnkStruct_ov9_02253830 *v1 = Unk_ov9_02253830;

    while (v0 < 22) {
        if (v1->unk_00 == param0) {
            return v1;
        }

        v1++;
        v0++;
    }

    GF_ASSERT(0);
    return NULL;
}

static MapObject *ov9_0224DE94(DistWorldSystem *param0, int param1, int param2, int param3, int param4, int param5, u32 param6)
{
    MapObject *v0 = MapObjectMan_AddMapObject(param0->fieldSystem->mapObjMan, param1, param3, 0, 0x2000, 0x0, DistWorldSystem_GetMapHeaderID(param0));

    MapObject_SetY(v0, param2);
    MapObject_SetLocalID(v0, 0xfd);
    MapObject_SetDataAt(v0, param4, 0);
    MapObject_SetDataAt(v0, param6, 1);
    MapObject_SetDataAt(v0, param5, 2);
    sub_02062E5C(v0, 1);
    sub_02062D80(v0, 0);
    MapObject_SetHeightCalculationDisabled(v0, TRUE);
    sub_02062FC4(v0, 1);

    return v0;
}

static void ov9_0224DF10(DistWorldSystem *param0, UnkStruct_ov9_0224E0DC *param1, MapObject *param2)
{
    u32 v0, v1, v2, v3;
    const UnkStruct_ov9_0224DF10 *v4;

    v0 = MapObject_GetDataAt(param2, 0);
    v1 = MapObject_GetDataAt(param2, 1);
    v3 = MapObject_GetDataAt(param2, 2);
    v4 = ov9_0224DE60(v1, v0);

    param1->unk_00 = 1;
    param1->unk_02 = v1;
    param1->unk_04 = *v4;
    param1->unk_04.unk_02 = MapObject_GetX(param2);
    param1->unk_04.unk_04 = MapObject_GetY(param2);
    param1->unk_04.unk_06 = MapObject_GetZ(param2);
    param1->unk_04.unk_08 = v3;
    param1->unk_1C = param2;
    param1->unk_20 = ov9_0224DFA0(param0, param1);

    sub_02062E5C(param2, 1);
    sub_02062D80(param2, 0);
    MapObject_SetHeightCalculationDisabled(param2, TRUE);
    sub_02062FC4(param2, 1);
}

static OverworldAnimManager *ov9_0224DFA0(DistWorldSystem *param0, UnkStruct_ov9_0224E0DC *param1)
{
    OverworldAnimManager *v0;
    UnkStruct_ov9_0224DFA0 v1;

    v1.unk_00 = param1->unk_04.unk_02;
    v1.unk_02 = param1->unk_04.unk_04;
    v1.unk_04 = param1->unk_04.unk_06;
    v1.unk_06 = param1->unk_04.unk_10;
    v1.unk_0C = param0;
    v1.unk_08 = 0;

    if ((param1->unk_02 == 580) && (param1->unk_04.unk_00 == 1)) {
        v1.unk_08 = 1;
    }

    v0 = ov5_021DF72C(param0->fieldSystem->unk_40, &Unk_ov9_02251468, NULL, 0, &v1, 0);
    return v0;
}

static void ov9_0224DFF4(DistWorldSystem *param0, UnkStruct_ov9_0224E0DC *param1, const UnkStruct_ov9_0224DF10 *param2, u32 param3)
{
    param1->unk_00 = 1;
    param1->unk_02 = param3;
    param1->unk_04 = *param2;
    param1->unk_1C = ov9_0224DE94(param0, param2->unk_02, param2->unk_04, param2->unk_06, param2->unk_00, param2->unk_08, param3);
    param1->unk_20 = ov9_0224DFA0(param0, param1);
}

static void ov9_0224E044(DistWorldSystem *param0, UnkStruct_ov9_0224E0DC *param1)
{
    if (param1->unk_20 != NULL) {
        OverworldAnimManager_Finish(param1->unk_20);
    }

    memset(param1, 0, sizeof(UnkStruct_ov9_0224E0DC));
}

static void ov9_0224E060(DistWorldSystem *param0, UnkStruct_ov9_0224E0DC *param1)
{
    if (param1->unk_1C != NULL) {
        MapObject_Delete(param1->unk_1C);
    }

    ov9_0224E044(param0, param1);
}

static void ov9_0224E07C(DistWorldSystem *param0, UnkStruct_ov9_0224E0DC *param1, u32 param2)
{
    param1->unk_02 = param2;

    {
        const UnkStruct_ov9_0224DF10 *v0;

        v0 = ov9_0224DE60(param2, param1->unk_04.unk_0C);
        param1->unk_04 = *v0;
    }

    {
        MapObject *v1 = param1->unk_1C;

        MapObject_SetX(v1, param1->unk_04.unk_02);
        MapObject_SetY(v1, param1->unk_04.unk_04);
        MapObject_SetZ(v1, param1->unk_04.unk_06);
        MapObject_SetDataAt(v1, param1->unk_04.unk_00, 0);
        MapObject_SetDataAt(v1, param2, 1);
        MapObject_SetDataAt(v1, param1->unk_04.unk_08, 2);
    }
}

static void ov9_0224E0DC(UnkStruct_ov9_0224E0DC *param0, u32 param1)
{
    param0->unk_01 = param1;
}

static BOOL ov9_0224E0E0(DistWorldSystem *param0, u32 param1)
{
    int v0;
    u16 v1;
    const UnkStruct_ov9_022531D0 *v2;
    UnkStruct_ov9_0224DC34 *v3 = &param0->unk_1734;

    GF_ASSERT(param1 != 25);

    for (v0 = 0; v0 < 32; v0++) {
        if (v3->unk_00[v0].unk_00) {
            v1 = v3->unk_00[v0].unk_04.unk_10;
            v2 = &Unk_ov9_022531D0[v1];

            if (param1 == v2->unk_00) {
                return 1;
            }
        }
    }

    return 0;
}

static BOOL ov9_0224E120(DistWorldSystem *param0, u32 param1)
{
    int v0;
    u16 v1;
    const UnkStruct_ov9_022531D0 *v2;
    UnkStruct_ov9_0224DC34 *v3 = &param0->unk_1734;

    GF_ASSERT(param1 != 5);

    for (v0 = 0; v0 < 32; v0++) {
        if (v3->unk_00[v0].unk_00) {
            v1 = v3->unk_00[v0].unk_04.unk_10;
            v2 = &Unk_ov9_022531D0[v1];

            if (param1 == v2->unk_02) {
                return 1;
            }
        }
    }

    return 0;
}

static BOOL ov9_0224E160(DistWorldSystem *param0, int param1)
{
    int v0;
    const UnkStruct_ov9_022531D0 *v1;
    UnkStruct_ov9_0224DC34 *v2 = &param0->unk_1734;

    for (v0 = 0; v0 < 32; v0++) {
        if (v2->unk_00[v0].unk_00) {
            if (v2->unk_00[v0].unk_04.unk_10 == param1) {
                return 1;
            }
        }
    }

    return 0;
}

static UnkStruct_ov9_0224E0DC *ov9_0224E188(DistWorldSystem *param0, int param1, int param2, int param3, u32 param4)
{
    int v0 = 32;
    UnkStruct_ov9_0224E0DC *v1 = param0->unk_1734.unk_00;
    const UnkStruct_ov9_0224DF10 *v2;

    do {
        if (v1->unk_00 && (v1->unk_02 == param4)) {
            v2 = &v1->unk_04;

            if ((v2->unk_04 == param2) && (v2->unk_06 == param3) && (v2->unk_02 == param1)) {
                return v1;
            }
        }

        v1++;
    } while (--v0);

    return NULL;
}

static int ov9_0224E1CC(OverworldAnimManager *param0, void *param1)
{
    int v0;
    UnkStruct_ov9_0224E1CC *v1 = param1;
    const UnkStruct_ov9_0224DFA0 *v2 = OverworldAnimManager_GetUserData(param0);

    v1->unk_10 = *v2;
    v1->unk_20 = ov9_0224D8A4(v2->unk_0C, v2->unk_06, &v0);

    if (v0 == 0) {
        ov9_0224DA48(v2->unk_0C, v2->unk_06, &v1->unk_20->unk_04, &v1->unk_20->unk_58);
    }

    sub_02064450(v2->unk_00, v2->unk_04, &v1->unk_04);
    v1->unk_04.y = (((v2->unk_02) << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1);

    {
        VecFx32 v3;
        const VecFx32 *v4 = &Unk_ov9_02253298[v2->unk_06];

        v1->unk_04.x += v4->x;
        v1->unk_04.y += v4->y;
        v1->unk_04.z += v4->z;
    }

    v1->unk_02 = 31;
    v1->unk_00 = 0;

    if (v2->unk_08 == 1) {
        VarsFlags *v5 = SaveData_GetVarsFlags(v2->unk_0C->fieldSystem->saveData);

        if (SystemFlag_CheckDistortionWorldSteppingStones(v5) == 0) {
            v1->unk_02 = 0;
            v1->unk_00 = 1;
            v1->unk_01 = 1;
        }
    }

    return 1;
}

static void ov9_0224E274(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov9_0224E1CC *v0 = param1;

    if (ov9_0224DAEC(v0->unk_10.unk_06) == 1) {
        Simple3D_FreeAnimation(&v0->unk_20->unk_58);
    }

    ov9_0224D938(v0->unk_10.unk_0C, v0->unk_20);
}

static void ov9_0224E294(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov9_0224E1CC *v0 = param1;

    if (v0->unk_00 == 1) {
        VarsFlags *v1;

        v1 = SaveData_GetVarsFlags(v0->unk_10.unk_0C->fieldSystem->saveData);

        if (SystemFlag_CheckDistortionWorldSteppingStones(v1) == 1) {
            v0->unk_01 = 0;

            if (v0->unk_02 < 31) {
                if (v0->unk_02 == 0) {
                    ov9_022511E0(1484);
                }

                v0->unk_03++;
                v0->unk_02 = v0->unk_03 >> 1;
            }

            if (v0->unk_02 >= 31) {
                v0->unk_02 = 31;
                v0->unk_00 = 0;
            }
        }
    }
}

static void ov9_0224E2E4(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov9_0224E1CC *v0 = param1;

    if (v0->unk_01 == 0) {
        if (v0->unk_00 == 1) {
            const UnkStruct_ov9_0224DFA0 *v1 = &v0->unk_10;

            ov9_0224DA64(v1->unk_0C, v1->unk_06, v0->unk_02, 1);
            Simple3D_DrawRenderObjWithPos(&v0->unk_20->unk_04, &v0->unk_04);

            ov9_0224DAB8(v1->unk_0C, v1->unk_06, 0);
            ov9_0224DAAC(v1->unk_0C, v1->unk_06, 31);
        } else {
            Simple3D_DrawRenderObjWithPos(&v0->unk_20->unk_04, &v0->unk_04);
        }
    }
}

static const OverworldAnimManagerFuncs Unk_ov9_02251468 = {
    sizeof(UnkStruct_ov9_0224E1CC),
    ov9_0224E1CC,
    ov9_0224E274,
    ov9_0224E294,
    ov9_0224E2E4
};

static VecFx32 *ov9_0224E330(OverworldAnimManager *param0)
{
    UnkStruct_ov9_0224E1CC *v0 = OverworldAnimManager_GetFuncsContext(param0);
    return &v0->unk_04;
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

                if (ov9_02251104(param0, v2, v3) == 1) {
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

    v1->unk_24 = ov9_0224DE08(param0, v0->unk_00, DistWorldSystem_GetMapHeaderID(param0));
    GF_ASSERT(v1->unk_24 != NULL);

    v1->unk_0C.x = (((v0->unk_06) << 4) * FX32_ONE);
    v1->unk_0C.y = (((v0->unk_08) << 4) * FX32_ONE);
    v1->unk_0C.z = (((v0->unk_0A) << 4) * FX32_ONE);

    v1->unk_18 = v0->unk_0C;
    v1->unk_30 = (FX32_ONE * 3);

    {
        VecFx32 *v2 = ov9_0224E330(v1->unk_24->unk_20);

        v1->unk_2C = v2->y;
    }

    if (v0->unk_02 == 1) {
        VecFx32 v3;
        MapObject *v4 = Player_MapObject(param0->fieldSystem->playerAvatar);

        MapObject_SetHeightCalculationDisabled(v4, TRUE);
        sub_0206309C(v4, &v3);

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
    VecFx32 *v3 = ov9_0224E330(v2->unk_24->unk_20);

    if (v1->unk_02 == 1) {
        v0 = Player_MapObject(param0->fieldSystem->playerAvatar);
    }

    v3->y = v2->unk_2C + v2->unk_30;

    if (v0 != NULL) {
        VecFx32 v4;

        sub_0206309C(v0, &v4);
        v4.y = v2->unk_28 + v2->unk_30;

        sub_020630AC(v0, &v4);
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

                sub_0206309C(v0, &v5);
                v5.y = v2->unk_28;
                sub_020630AC(v0, &v5);

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
    VecFx32 *v3 = ov9_0224E330(v2->unk_24->unk_20);

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

    Sound_StopEffect(1482, 0);
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

static const UnkStruct_ov9_02252414 Unk_ov9_02252414[1] = {
    {
        0x6,
        0x129,
        0x2A,
        0x3,
        0x1,
        { FX32_ONE, FX32_ONE, FX32_ONE },
        { (FX32_ONE * 48), 0x0, 0x0 },
        0x40,
    },
};

void ov9_0224E884(FieldSystem *fieldSystem, u16 param1)
{
    DistWorldSystem *v0;

    GF_ASSERT(param1 < 1);
    v0 = fieldSystem->unk_04->dynamicMapFeaturesData;
    ov9_0224E91C(v0, &Unk_ov9_02252414[param1]);
}

void ov9_0224E8A8(FieldSystem *fieldSystem)
{
    DistWorldSystem *v0 = fieldSystem->unk_04->dynamicMapFeaturesData;
    ov9_0224E988(v0);
}

static void ov9_0224E8B4(DistWorldSystem *param0)
{
    int v0;
    UnkStruct_ov9_0224E8B4 *v1 = &param0->unk_1EA4;

    if (v1->unk_00 == 0) {
        v1->unk_04 = ov9_0224D8A4(param0, 20, &v0);

        if (v0 == 0) {
            ov9_0224DA48(param0, 20, &v1->unk_04->unk_04, &v1->unk_04->unk_58);
        }

        v1->unk_00 = 1;
    }
}

static void ov9_0224E8EC(DistWorldSystem *param0)
{
    int v0;
    UnkStruct_ov9_0224E8B4 *v1 = &param0->unk_1EA4;

    if (v1->unk_00 == 1) {
        ov9_0224D938(param0, v1->unk_04);
        ov9_0224D874(param0, 0);
        ov9_0224D7C0(param0, 20);
        v1->unk_00 = 0;
    }
}

static void ov9_0224E91C(DistWorldSystem *param0, const UnkStruct_ov9_02252414 *param1)
{
    UnkStruct_ov9_0224E91C v0;
    UnkStruct_ov9_0224E8B4 *v1 = &param0->unk_1EA4;

    ov9_0224E8B4(param0);

    v0.unk_00 = param0;
    v0.unk_08 = *param1;
    v0.unk_04 = v1->unk_04;

    v1->unk_08 = ov5_021DF72C(param0->fieldSystem->unk_40, &Unk_ov9_022514B8, NULL, 0, &v0, 0);
}

static BOOL ov9_0224E964(DistWorldSystem *param0)
{
    UnkStruct_ov9_0224E964 *v0;
    UnkStruct_ov9_0224E8B4 *v1 = &param0->unk_1EA4;

    GF_ASSERT(v1->unk_08 != NULL);

    v0 = OverworldAnimManager_GetFuncsContext(v1->unk_08);
    return v0->unk_34;
}

static void ov9_0224E984(DistWorldSystem *param0)
{
    UnkStruct_ov9_0224E8B4 *v0 = &param0->unk_1EA4;
}

static void ov9_0224E988(DistWorldSystem *param0)
{
    UnkStruct_ov9_0224E8B4 *v0 = &param0->unk_1EA4;

    if (v0->unk_08 != NULL) {
        OverworldAnimManager_Finish(v0->unk_08);
    }

    ov9_0224E8EC(param0);
}

static BOOL ov9_0224E9A4(DistWorldSystem *param0, u32 param1)
{
    UnkStruct_ov9_0224E8B4 *v0 = &param0->unk_1EA4;

    GF_ASSERT(param1 != 25);

    if (v0->unk_00 == 1) {
        if (param1 == 20) {
            return 1;
        }
    }

    return 0;
}

static BOOL ov9_0224E9CC(DistWorldSystem *param0, u32 param1)
{
    UnkStruct_ov9_0224E8B4 *v0 = &param0->unk_1EA4;

    GF_ASSERT(param1 != 5);

    if (v0->unk_00 == 1) {
        if (param1 == 0) {
            return 1;
        }
    }

    return 0;
}

static BOOL ov9_0224E9F4(DistWorldSystem *param0, int param1)
{
    UnkStruct_ov9_0224E8B4 *v0 = &param0->unk_1EA4;

    if (v0->unk_00 == 1) {
        if (param1 == 20) {
            return 1;
        }
    }

    return 0;
}

static const Simple3DRotationAngles Unk_ov9_022529F8[5] = {
    { 0x0, 0x0, 0x0 },
    { 0x0, 0xB4, 0x0 },
    { 0x0, 0x5A, 0x0 },
    { 0x0, 0x10E, 0x0 },
    { 0x5A, 0x0, 0x0 }
};

static int ov9_0224EA0C(OverworldAnimManager *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_ov9_0224E964 *v1 = param1;
    const UnkStruct_ov9_0224E91C *v2 = OverworldAnimManager_GetUserData(param0);
    const UnkStruct_ov9_02252414 *v3;

    v1->unk_00 = *v2;
    v3 = &v1->unk_00.unk_08;

    v1->unk_2E = 1;
    v1->unk_38 = Unk_ov9_022529F8[v3->unk_06];

    v0.x = (((v3->unk_00) << 4) * FX32_ONE);
    v0.y = (((v3->unk_02) << 4) * FX32_ONE);
    v0.z = (((v3->unk_04) << 4) * FX32_ONE);

    if (v3->unk_06 == 4) {
        v0.x += (FX32_ONE * 8);
    }

    OverworldAnimManager_SetPosition(param0, &v0);

    v1->unk_2E = 0;
    return 1;
}

static void ov9_0224EA88(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov9_0224E964 *v0 = param1;
    Simple3D_FreeAnimObject(&v0->unk_00.unk_04->unk_58);
}

static void ov9_0224EA94(OverworldAnimManager *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_ov9_0224E964 *v1 = param1;
    const UnkStruct_ov9_02252414 *v2 = &v1->unk_00.unk_08;

    switch (v1->unk_2C) {
    case 0:
        if (v2->unk_07 == 1) {
            Sound_PlayPokemonCry(SPECIES_GIRATINA, 0);
        } else if (v2->unk_07 == 2) {
            Sound_PlayEffect(SEQ_SE_DP_FW019);
        }

        v1->unk_2C++;
    case 1: {
        VecFx32 v3;
        const VecFx32 *v4 = &v2->unk_14;

        OverworldAnimManager_GetPosition(param0, &v3);

        v3.x += v4->x;
        v3.y += v4->y;
        v3.z += v4->z;

        v1->unk_30++;

        if (v1->unk_30 >= v2->unk_20) {
            v1->unk_2C++;
            v1->unk_34 = 1;
            v1->unk_2E = 1;
        }

        OverworldAnimManager_SetPosition(param0, &v3);
    } break;
    case 2:
        break;
    }

    if (v1->unk_2E == 0) {
        Simple3D_UpdateAnim(&v1->unk_00.unk_04->unk_58, FX32_ONE, 1);
    }
}

static void ov9_0224EB34(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov9_0224E964 *v0 = param1;

    if (v0->unk_2E == 0) {
        VecFx32 v1;
        const VecFx32 *v2;

        OverworldAnimManager_GetPosition(param0, &v1);
        v2 = &v0->unk_00.unk_08.unk_08;

        ov9_0224DAB8(v0->unk_00.unk_00, 20, (1 * 8));
        Simple3D_DrawRenderObjRotationAngles(&v0->unk_00.unk_04->unk_04, &v1, v2, &v0->unk_38);
    }
}

static const OverworldAnimManagerFuncs Unk_ov9_022514B8 = {
    sizeof(UnkStruct_ov9_0224E964),
    ov9_0224EA0C,
    ov9_0224EA88,
    ov9_0224EA94,
    ov9_0224EB34
};

static void ov9_0224EB68(DistWorldSystem *param0)
{
    UnkStruct_ov9_0224EB68 *v0 = &param0->unk_1BB4;
    u32 v1 = DistWorldSystem_GetMapHeaderID(param0);
    const UnkStruct_ov9_022530A4 *v2 = ov9_0224D720(v1);

    ov9_0224EC48(param0, v1);

    if (v2->unk_08 != 593) {
        ov9_0224EC48(param0, v2->unk_08);
    }
}

static void ov9_0224EB94(DistWorldSystem *param0)
{
    int v0 = 0;
    UnkStruct_ov9_0224EB68 *v1 = &param0->unk_1BB4;
    UnkStruct_ov9_0224EBB8 *v2 = v1->unk_00;

    while (v0 < 8) {
        if (v2->unk_04 != NULL) {
            ov9_0224EBB8(v2);
        }

        v2++;
        v0++;
    }
}

static void ov9_0224EBB8(UnkStruct_ov9_0224EBB8 *param0)
{
    if (param0->unk_04 != NULL) {
        OverworldAnimManager_Finish(param0->unk_04);
    }

    param0->unk_04 = NULL;
}

static void ov9_0224EBCC(DistWorldSystem *param0, UnkStruct_ov9_0224EBB8 *param1, const UnkStruct_ov9_0224EC10 *param2, u32 param3)
{
    param1->unk_00 = param3;
    param1->unk_08 = *param2;

    {
        UnkStruct_ov9_0224EBCC v0;
        const OverworldAnimManagerFuncs *v1;

        v0.unk_00 = param0;
        v0.unk_04 = param1;
        v1 = Unk_ov9_02252F6C[param2->unk_04];

        param1->unk_04 = ov5_021DF72C(param0->fieldSystem->unk_40, v1, NULL, 0, &v0, 2);
    }
}

static void ov9_0224EC10(DistWorldSystem *param0, const UnkStruct_ov9_02252548 *param1)
{
    u16 v0, v1;
    const UnkStruct_ov9_0224EC10 *v2 = param1->unk_04;
    UnkStruct_ov9_0224EBB8 *v3;

    while (v2->unk_04 != 25) {
        v0 = v2->unk_0C;
        v1 = v2->unk_0E;

        if (ov9_02251104(param0, v0, v1) == 1) {
            v3 = ov9_0224EC70(param0);
            ov9_0224EBCC(param0, v3, v2, param1->unk_00);
        }

        v2++;
    }
}

static void ov9_0224EC48(DistWorldSystem *param0, u32 param1)
{
    const UnkStruct_ov9_02252548 *v0 = Unk_ov9_02252548;

    while (v0->unk_00 != 593) {
        if (v0->unk_00 == param1) {
            ov9_0224EC10(param0, v0);

            return;
        }

        v0++;
    }
}

static UnkStruct_ov9_0224EBB8 *ov9_0224EC70(DistWorldSystem *param0)
{
    int v0 = 0;
    UnkStruct_ov9_0224EB68 *v1 = &param0->unk_1BB4;
    UnkStruct_ov9_0224EBB8 *v2 = v1->unk_00;

    do {
        if (v2->unk_04 == NULL) {
            return v2;
        }

        v2++;
        v0++;
    } while (v0 < 8);

    GF_ASSERT(FALSE);
    return NULL;
}

static void ov9_0224EC94(DistWorldSystem *param0, u32 param1)
{
    int v0 = 0;
    UnkStruct_ov9_0224EB68 *v1 = &param0->unk_1BB4;
    UnkStruct_ov9_0224EBB8 *v2 = v1->unk_00;

    while (v0 < 8) {
        if ((v2->unk_00 == param1) && (v2->unk_04 != NULL)) {
            ov9_0224EBB8(v2);
        }

        v2++;
        v0++;
    }
}

static BOOL ov9_0224ECC0(DistWorldSystem *param0, int param1)
{
    int v0 = 0;
    UnkStruct_ov9_0224EB68 *v1 = &param0->unk_1BB4;
    UnkStruct_ov9_0224EBB8 *v2 = v1->unk_00;

    while (v0 < 8) {
        if (v2->unk_04 != NULL) {
            if (v2->unk_08.unk_04 == param1) {
                return 1;
            }
        }

        v2++;
        v0++;
    }

    return 0;
}

static BOOL ov9_0224ECE8(DistWorldSystem *param0, u32 param1)
{
    int v0 = 0;
    const UnkStruct_ov9_022531D0 *v1;
    UnkStruct_ov9_0224EB68 *v2 = &param0->unk_1BB4;
    UnkStruct_ov9_0224EBB8 *v3 = v2->unk_00;

    while (v0 < 8) {
        if (v3->unk_04 != NULL) {
            v1 = &Unk_ov9_022531D0[v3->unk_08.unk_04];

            if (v1->unk_00 == param1) {
                return 1;
            }
        }

        v3++;
        v0++;
    }

    return 0;
}

static BOOL ov9_0224ED20(DistWorldSystem *param0, u32 param1)
{
    int v0 = 0;
    const UnkStruct_ov9_022531D0 *v1;
    UnkStruct_ov9_0224EB68 *v2 = &param0->unk_1BB4;
    UnkStruct_ov9_0224EBB8 *v3 = v2->unk_00;

    while (v0 < 8) {
        if (v3->unk_04 != NULL) {
            v1 = &Unk_ov9_022531D0[v3->unk_08.unk_04];

            if (v1->unk_02 == param1) {
                return 1;
            }
        }

        v3++;
        v0++;
    }

    return 0;
}

static int ov9_0224ED58(OverworldAnimManager *param0, void *param1)
{
    int v0;
    UnkStruct_ov9_0224ED58 *v1 = param1;
    const UnkStruct_ov9_0224EBCC *v2 = OverworldAnimManager_GetUserData(param0);
    const UnkStruct_ov9_0224EC10 *v3 = &v2->unk_04->unk_08;

    v1->unk_1C = *v2;
    v1->unk_24 = ov9_0224D8A4(v2->unk_00, v3->unk_04, &v0);

    if (v0 == 0) {
        ov9_0224DA48(v1->unk_1C.unk_00, v3->unk_04, &v1->unk_24->unk_04, &v1->unk_24->unk_58);
    }

    sub_02064450(v3->unk_06, v3->unk_0A, &v1->unk_04);
    v1->unk_04.y = (((v3->unk_08) << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1);

    {
        VecFx32 v4;
        const VecFx32 *v5 = &Unk_ov9_02253298[v3->unk_04];

        v1->unk_04.x += v5->x;
        v1->unk_04.y += v5->y;
        v1->unk_04.z += v5->z;
    }

    return 1;
}

static void ov9_0224EDD8(OverworldAnimManager *param0, void *param1)
{
    int v0;
    UnkStruct_ov9_0224ED58 *v1 = param1;
    const UnkStruct_ov9_0224EC10 *v2 = &v1->unk_1C.unk_04->unk_08;

    if (ov9_0224DAEC(v2->unk_04) == 1) {
        Simple3D_FreeAnimation(&v1->unk_24->unk_58);
    }

    ov9_0224D938(v1->unk_1C.unk_00, v1->unk_24);
}

static void ov9_0224EDFC(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov9_0224ED58 *v0 = param1;
    int v1 = v0->unk_1C.unk_04->unk_08.unk_04;

    if (ov9_0224DAEC(v1) == 1) {
        Simple3D_UpdateAnim(&v0->unk_24->unk_58, FX32_ONE, 1);
    }

    v0->unk_02 = ov9_0224DBE4(v0->unk_1C.unk_00, v1, &v0->unk_04);
}

static void ov9_0224EE2C(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov9_0224ED58 *v0 = param1;

    if (v0->unk_02 == 1) {
        Simple3D_DrawRenderObjWithPos(&v0->unk_24->unk_04, &v0->unk_04);
    }
}

static const OverworldAnimManagerFuncs Unk_ov9_02251530 = {
    sizeof(UnkStruct_ov9_0224ED58),
    ov9_0224ED58,
    ov9_0224EDD8,
    ov9_0224EDFC,
    ov9_0224EE2C
};

static void ov9_0224EE40(DistWorldSystem *param0)
{
    UnkStruct_ov9_0224EE40 *v0 = &param0->unk_1C64;
    u32 v1 = DistWorldSystem_GetMapHeaderID(param0);
    const UnkStruct_ov9_022530A4 *v2 = ov9_0224D720(v1);

    ov9_0224F078(param0, v1);

    if (v2->unk_08 != 593) {
        ov9_0224F078(param0, v2->unk_08);
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

    while (sub_020625B0(v2, &v1, &v0, (1 << 0))) {
        if (sub_02062918(v1) == param2) {
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
    } else if (ov9_02251104(param0, v0, v1) == 0) {
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
    sub_02062E5C(*param1, 1);
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
            if (sub_02062918(*v2) == param1) {
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

    while (sub_020625B0(
               v3, &v1, &v0, (1 << 0))
        == 1) {
        if ((MapObject_GetLocalID(v1) == param1) && (sub_02062918(v1) == v2)) {
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
    sub_02062914(v2, 580);

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

            sub_0206309C(param0->unk_0C, &v11);

            param0->unk_1C = v11.y;
            param0->unk_20 = (FX32_ONE * 1);

            Sound_PlayEffect(SEQ_SE_DP_UG_008);
        }

        param0->unk_10++;
        break;
    case 2: {
        VecFx32 v12;
        MapObject *v13 = param0->unk_0C;

        sub_0206309C(v13, &v12);
        v12.y = param0->unk_1C + param0->unk_20;

        sub_020630AC(v13, &v12);
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
        sub_020630AC(v2, &v6);
    }

    {
        VecFx32 *v7;
        OverworldAnimManager *v8 = sub_0205EC04(playerAvatar);
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
        OverworldAnimManager *v3 = sub_0205EC04(param0->fieldSystem->playerAvatar);

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
            OverworldAnimManager *v6 = sub_0205EC04(param0->fieldSystem->playerAvatar);
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
    OverworldAnimManager *v1 = sub_0205EC04(param0->fieldSystem->playerAvatar);
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
    OverworldAnimManager *v1 = sub_0205EC04(param0->fieldSystem->playerAvatar);
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
        sub_020630AC(v2, &v13);
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
            ov9_02249D70(param0, 7);
            ov9_0224DDA0(param0, 579, 0);
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
        sub_020630AC(v2, &v6);
    }

    {
        VecFx32 *v7;
        OverworldAnimManager *v8 = sub_0205EC04(playerAvatar);
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
        OverworldAnimManager *v3 = sub_0205EC04(param0->fieldSystem->playerAvatar);

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
            OverworldAnimManager *v6 = sub_0205EC04(param0->fieldSystem->playerAvatar);
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
    OverworldAnimManager *v1 = sub_0205EC04(param0->fieldSystem->playerAvatar);
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
    OverworldAnimManager *v1 = sub_0205EC04(param0->fieldSystem->playerAvatar);
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
        sub_020630AC(v2, &v13);
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
    const UnkStruct_ov9_02252414 *v0 = param3;

    ov9_0224E91C(param0, v0);
    *param2 = 1;
    return 0;
}

static int ov9_02250730(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    if (ov9_0224E964(param0) == 1) {
        ov9_0224E988(param0);
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

    sub_020630AC(v0->unk_18, &v0->unk_08);

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

    sub_020630AC(v0->unk_18, &v0->unk_08);
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
    sub_020630AC(v0->unk_20, &v0->unk_14);

    if ((((v0->unk_14.y) >> 4) / FX32_ONE) >= 17) {
        *param2 = 2;
    }

    return 0;
}

static int ov9_02250994(DistWorldSystem *param0, FieldTask *param1, u16 *param2, const void *param3)
{
    UnkStruct_ov9_02250918 *v0 = ov9_0224E39C(param0);
    v0->unk_14.z -= (FX32_ONE * 1);
    sub_020630AC(v0->unk_20, &v0->unk_14);

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
    sub_020630AC(v0->unk_20, &v0->unk_14);

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

    sub_020630AC(v0->unk_20, &v0->unk_14);

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
    sub_020630AC(v0->unk_20, &v0->unk_14);

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
    sub_020630AC(v0->unk_14, &v0->unk_04);

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
    sub_020630AC(v0->unk_14, &v0->unk_04);

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
    sub_020630AC(v0->unk_18, &v0->unk_04);

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
    sub_020630AC(v0->unk_18, &v0->unk_04);

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
        ov9_0224B64C(param0, v0->unk_00);
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
            ov9_0224B624(param0, v0->unk_00);
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

static BOOL ov9_02251104(DistWorldSystem *param0, u32 param1, u32 param2)
{
    VarsFlags *v0 = SaveData_GetVarsFlags(param0->fieldSystem->saveData);

    switch (param1) {
    case 0:
        return 1;
    case 1:
        if (ov9_02249E00(param0, param2) != 1) {
            return 1;
        }
        break;
    case 2:
        if (ov9_02249E00(param0, param2) == 1) {
            return 1;
        }
        break;
    case 3:
        if (SystemVars_GetDistortionWorldProgress(v0) == param2) {
            return 1;
        }
        break;
    case 4:
        if (SystemVars_GetDistortionWorldProgress(v0) <= param2) {
            return 1;
        }
        break;
    case 5:
        if (SystemVars_GetDistortionWorldProgress(v0) >= param2) {
            return 1;
        }
        break;
    case 7:
        if (SystemFlag_HandleGiratinaAnimation(v0, HANDLE_FLAG_CHECK, param2) == FALSE) {
            return 1;
        }
        break;
    case 8:
        if (SystemVars_GetDistortionWorldCyrusApperanceState(v0) == param2) {
            return 1;
        }
        break;
    }

    return 0;
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

static void ov9_022511E0(u16 param0)
{
    if (Sound_IsEffectPlaying(param0) == 0) {
        Sound_PlayEffect(param0);
    }
}

static void ov9_022511F4(MapObject *param0, const VecFx32 *param1)
{
    UnkStruct_020216E0 *v0;

    MapObject_SetPos(param0, param1);
    v0 = ov5_021EB1A0(param0);

    if (v0 != NULL) {
        ov5_021EDEB4(param0, v0);
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

static const u32 Unk_ov9_02252FD0[25] = {
    0x7C,
    0x7D,
    0x7E,
    0x7F,
    0x80,
    0x81,
    0x82,
    0x83,
    0x84,
    0x85,
    0x86,
    0x87,
    0x88,
    0x89,
    0x8A,
    0x8B,
    0x8C,
    0x8D,
    0x8E,
    0x8F,
    0x90,
    0x91,
    0x92,
    0x93,
    0x94
};

static const u32 Unk_ov9_022514A4[5] = {
    0xC6,
    0xBF,
    0xC0,
    0xC8,
    0xC1
};

static const UnkStruct_ov9_022531D0 Unk_ov9_022531D0[25] = {
    { 0x0, 0x5, 0x1 },
    { 0x1, 0x5, 0x1 },
    { 0x2, 0x5, 0x1 },
    { 0x3, 0x5, 0x1 },
    { 0x4, 0x5, 0x1 },
    { 0x5, 0x5, 0x1 },
    { 0x6, 0x5, 0x1 },
    { 0x7, 0x5, 0x1 },
    { 0x8, 0x5, 0x1 },
    { 0x9, 0x5, 0x1 },
    { 0xA, 0x5, 0x1 },
    { 0xB, 0x5, 0x1 },
    { 0xC, 0x5, 0x1 },
    { 0xD, 0x5, 0x1 },
    { 0xE, 0x5, 0x1 },
    { 0xF, 0x5, 0x1 },
    { 0x10, 0x5, 0x1 },
    { 0x11, 0x5, 0x1 },
    { 0x12, 0x5, 0x1 },
    { 0x13, 0x5, 0x1 },
    { 0x14, 0x0, 0x0 },
    { 0x15, 0x3, 0x0 },
    { 0x16, 0x1, 0x0 },
    { 0x17, 0x2, 0x0 },
    { 0x18, 0x4, 0x0 }
};

static const VecFx32 Unk_ov9_02253298[25] = {
    { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    { 0 + (-FX32_ONE * 8), -FX32_ONE * 25, (-FX32_ONE * 6) + (FX32_ONE * 8) },
    { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    { 0 + (-FX32_ONE * 8), -FX32_ONE * 25, (-FX32_ONE * 6) + (FX32_ONE * 8) },
    { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    { 0 + (-FX32_ONE * 8), -FX32_ONE * 25, (-FX32_ONE * 6) + (FX32_ONE * 16) },
    { 0x0, -FX32_ONE * 25, -FX32_ONE * 6 },
    { 0x0, -FX32_ONE * 32, -FX32_ONE * 6 },
    { 0x0, -FX32_ONE * 32, -FX32_ONE * 6 },
    { 0x0, -FX32_ONE * 32, -FX32_ONE * 6 },
    { 0x0, -FX32_ONE * 32, -FX32_ONE * 6 },
    { 0x0, -FX32_ONE * 14, FX32_ONE * 8 }
};

static const VecFx32 Unk_ov9_022533C4[25] = {
    { (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)) },
    { (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)) },
    { (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)) },
    { (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)) },
    { (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)) },
    { (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)) },
    { (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)) },
    { (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)) },
    { (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)) },
    { (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)) },
    { (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)) },
    { (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)) },
    { (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)) },
    { (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)) },
    { (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)) },
    { (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)) },
    { (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)) },
    { (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)) },
    { (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)) },
    { (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)) },
    { (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)) },
    { (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)) },
    { (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 4)), (FX32_ONE + (0x100 * 8)) },
    { 0x0, 0x0, 0x0 }
};

static const OverworldAnimManagerFuncs DATA_EoaFStoneHeader = {
    sizeof(UnkStruct_ov9_0224BA48),
    ov9_0224B964,
    ov9_0224BA48,
    NULL,
    ov9_0224BBDC,
};

static const OverworldAnimManagerFuncs Unk_ov9_022514F4 = {
    sizeof(UnkStruct_ov9_0224BA48),
    ov9_0224B964,
    ov9_0224BA48,
    ov9_0224BA6C,
    ov9_0224BBDC
};

static const OverworldAnimManagerFuncs Unk_ov9_0225147C = {
    sizeof(UnkStruct_ov9_0224BC08),
    ov9_0224BC08,
    ov9_0224BCF4,
    ov9_0224BD18,
    ov9_0224BDE8
};

static const OverworldAnimManagerFuncs *const Unk_ov9_02252F6C[25] = {
    &Unk_ov9_022514F4,
    &Unk_ov9_022514F4,
    &Unk_ov9_022514F4,
    &Unk_ov9_022514F4,
    &Unk_ov9_022514F4,
    &Unk_ov9_022514F4,
    &Unk_ov9_022514F4,
    &Unk_ov9_022514F4,
    &Unk_ov9_022514F4,
    &Unk_ov9_022514F4,
    &Unk_ov9_022514F4,
    &Unk_ov9_022514F4,
    &Unk_ov9_022514F4,
    &Unk_ov9_022514F4,
    &Unk_ov9_022514F4,
    &Unk_ov9_022514F4,
    &Unk_ov9_022514F4,
    &Unk_ov9_022514F4,
    &Unk_ov9_022514F4,
    &Unk_ov9_022514F4,
    &Unk_ov9_022514B8,
    &Unk_ov9_02251530,
    &Unk_ov9_0225147C,
    &Unk_ov9_0225147C,
    &Unk_ov9_02251530
};

static const UnkStruct_ov9_022530A4 Unk_ov9_022530A4[10] = {
    { 0x23D, 0x251, 0x23E },
    { 0x23E, 0x23D, 0x23F },
    { 0x23F, 0x23E, 0x240 },
    { 0x240, 0x23F, 0x241 },
    { 0x241, 0x240, 0x243 },
    { 0x243, 0x241, 0x244 },
    { 0x244, 0x243, 0x245 },
    { 0x245, 0x244, 0x251 },
    { 0x247, 0x251, 0x251 },
    { 0x246, 0x251, 0x251 }
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_02251558 = {
    0x0,
    0x28,
    0x121,
    0x36,
    0x0,
    0x1,
    0x0,
    0x2,
    0xB
};

static const UnkStruct_ov9_0224DF10 *Unk_ov9_02253B10[] = {
    &Unk_ov9_02251558,
    NULL
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_02251600 = {
    0x0,
    0x28,
    0x101,
    0x36,
    0x1,
    0x0,
    0x0,
    0x2,
    0x0
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_02251570 = {
    0x1,
    0x21,
    0x101,
    0x2D,
    0x2,
    0x1,
    0x0,
    0x3,
    0xB
};

static const UnkStruct_ov9_0224DF10 *Unk_ov9_02253B4C[] = {
    &Unk_ov9_02251600,
    &Unk_ov9_02251570,
    NULL
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_02251E10 = {
    0x0,
    0x21,
    0xE1,
    0x2D,
    0x3,
    0x0,
    0x1,
    0x3,
    0x1
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_02251978 = {
    0x1,
    0x21,
    0xE1,
    0x26,
    0x0,
    0x2,
    0x0,
    0x5,
    0xB
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_022515A0 = {
    0x2,
    0x21,
    0xE1,
    0x17,
    0x0,
    0x2,
    0x0,
    0x5,
    0xB
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_02251B10 = {
    0x3,
    0x21,
    0xE1,
    0x8,
    0x0,
    0x2,
    0x0,
    0x5,
    0xB
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_02251DC8 = {
    0x4,
    0x31,
    0xE1,
    0x8,
    0x0,
    0x2,
    0x0,
    0x5,
    0xB
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_022515D0 = {
    0x5,
    0x38,
    0xE1,
    0x8,
    0x0,
    0x2,
    0x0,
    0x5,
    0xB
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_022515E8 = {
    0x6,
    0x31,
    0xE1,
    0x1F,
    0x0,
    0x2,
    0x0,
    0x5,
    0xB
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_02251CA8 = {
    0x7,
    0x41,
    0xE1,
    0x1F,
    0x4,
    0x1,
    0x0,
    0x4,
    0xB
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_02251CD8 = {
    0x8,
    0x38,
    0xE1,
    0x34,
    0x0,
    0x2,
    0x0,
    0x5,
    0xB
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_02251C90 = {
    0x9,
    0x21,
    0xE9,
    0xF,
    0x0,
    0x2,
    0x1,
    0x6,
    0xB
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_02251CF0 = {
    0xA,
    0x31,
    0xE9,
    0xF,
    0x0,
    0x2,
    0x1,
    0x6,
    0xB
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_02251D80 = {
    0xB,
    0x41,
    0xE9,
    0xF,
    0x0,
    0x2,
    0x1,
    0x6,
    0xB
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_02251DE0 = {
    0xC,
    0x41,
    0xE9,
    0x2D,
    0x0,
    0x2,
    0x1,
    0x6,
    0xB
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_02251618 = {
    0xD,
    0x41,
    0xE9,
    0x34,
    0x0,
    0x2,
    0x1,
    0x6,
    0xB
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_02251630 = {
    0xE,
    0x29,
    0xE9,
    0x34,
    0x0,
    0x2,
    0x1,
    0x6,
    0xB
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_02251B70 = {
    0xF,
    0x31,
    0xE9,
    0x2D,
    0x0,
    0x2,
    0x1,
    0x6,
    0xB
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_02251BB8 = {
    0x10,
    0x1A,
    0xE9,
    0x26,
    0x0,
    0x2,
    0x1,
    0x6,
    0xB
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_02251648 = {
    0x11,
    0x31,
    0xE9,
    0x26,
    0x0,
    0x2,
    0x1,
    0x6,
    0xB
};

static const UnkStruct_ov9_0224DF10 *Unk_ov9_02253C2C[] = {
    &Unk_ov9_02251E10,
    &Unk_ov9_02251978,
    &Unk_ov9_022515A0,
    &Unk_ov9_02251B10,
    &Unk_ov9_02251DC8,
    &Unk_ov9_022515D0,
    &Unk_ov9_022515E8,
    &Unk_ov9_02251CA8,
    &Unk_ov9_02251CD8,
    &Unk_ov9_02251C90,
    &Unk_ov9_02251CF0,
    &Unk_ov9_02251D80,
    &Unk_ov9_02251DE0,
    &Unk_ov9_02251618,
    &Unk_ov9_02251630,
    &Unk_ov9_02251B70,
    &Unk_ov9_02251BB8,
    &Unk_ov9_02251648,
    NULL
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_02251A50 = {
    0x0,
    0x41,
    0xC1,
    0x1F,
    0x5,
    0x0,
    0x7,
    0x4,
    0x2
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_02251A98 = {
    0x1,
    0x4F,
    0xC1,
    0x3E,
    0x6,
    0x1,
    0x0,
    0x9,
    0x6
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_02251678 = {
    0x2,
    0x5F,
    0xC1,
    0x46,
    0x7,
    0x1,
    0x1,
    0x9,
    0xB
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_02251690 = {
    0x3,
    0x60,
    0xC1,
    0x2B,
    0x8,
    0x1,
    0x2,
    0x8,
    0xB
};

static const UnkStruct_ov9_0224DF10 *Unk_ov9_02253B84[] = {
    &Unk_ov9_02251A50,
    &Unk_ov9_02251A98,
    &Unk_ov9_02251678,
    &Unk_ov9_02251690,
    NULL
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_02251990 = {
    0x0,
    0x4F,
    0xA1,
    0x3E,
    0xA,
    0x0,
    0x1,
    0x9,
    0x3
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_022516D8 = {
    0x1,
    0x5F,
    0xA1,
    0x46,
    0xB,
    0x0,
    0x2,
    0x9,
    0x4
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_02251708 = {
    0x2,
    0x4E,
    0xA1,
    0x4D,
    0xC,
    0x1,
    0x0,
    0x10,
    0x8
};

static const UnkStruct_ov9_0224DF10 *Unk_ov9_02253B74[] = {
    &Unk_ov9_02251990,
    &Unk_ov9_022516D8,
    &Unk_ov9_02251708,
    NULL
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_02251870 = {
    0x0,
    0x4E,
    0x81,
    0x4D,
    0xD,
    0x0,
    0x2,
    0x10,
    0x7
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_02251750 = {
    0x1,
    0x57,
    0x81,
    0x43,
    0xE,
    0x1,
    0x0,
    0x12,
    0xB
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_02251768 = {
    0x2,
    0x60,
    0x81,
    0x2B,
    0xF,
    0x0,
    0x3,
    0x8,
    0x5
};

static const UnkStruct_ov9_0224DF10 *Unk_ov9_02253B64[] = {
    &Unk_ov9_02251870,
    &Unk_ov9_02251750,
    &Unk_ov9_02251768,
    NULL
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_02251828 = {
    0x0,
    0x57,
    0x73,
    0x43,
    0x11,
    0x0,
    0x1,
    0x12,
    0x9
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_022517C8 = {
    0x1,
    0x55,
    0x73,
    0x56,
    0x12,
    0x1,
    0x0,
    0x13,
    0xB
};

static const UnkStruct_ov9_0224DF10 *Unk_ov9_02253B28[] = {
    &Unk_ov9_02251828,
    &Unk_ov9_022517C8,
    NULL
};

static const UnkStruct_ov9_0224DF10 Unk_ov9_022517F8 = {
    0x0,
    0x55,
    0x41,
    0x56,
    0x13,
    0x0,
    0x1,
    0x13,
    0xA
};

static const UnkStruct_ov9_0224DF10 *Unk_ov9_02253B00[] = {
    &Unk_ov9_022517F8,
    NULL
};

static const UnkStruct_ov9_02252C38 Unk_ov9_02252C38[8] = {
    { 0x23D, Unk_ov9_02253B10 },
    { 0x23E, Unk_ov9_02253B4C },
    { 0x23F, Unk_ov9_02253C2C },
    { 0x240, Unk_ov9_02253B84 },
    { 0x241, Unk_ov9_02253B74 },
    { 0x243, Unk_ov9_02253B64 },
    { 0x244, Unk_ov9_02253B28 },
    { 0x245, Unk_ov9_02253B00 }
};

static const UnkStruct_ov9_02253830 Unk_ov9_02253830[22] = {
    {
        0x0,
        0x16,
        0x0,
        -32,
        0x0,
        0x0,
        -16,
        0x0,
        { 0x0, (FX32_ONE * -4), 0x0 },
        0x0,
        0xB,
    },
    {
        0x1,
        0x16,
        0x0,
        0x20,
        0x0,
        0x0,
        0x12,
        0x0,
        { 0x0, (FX32_ONE * 4), 0x0 },
        0xB,
        0x0,
    },
    {
        0x2,
        0x16,
        0x0,
        -32,
        0x0,
        0x0,
        -28,
        0x0,
        { 0x0, (FX32_ONE * -4), 0x0 },
        0x1,
        0xB,
    },
    {
        0x3,
        0x16,
        0x0,
        0x20,
        0x0,
        0x0,
        0x12,
        0x0,
        { 0x0, (FX32_ONE * 4), 0x0 },
        0xB,
        0x1,
    },
    {
        0x4,
        0x16,
        0x0,
        -32,
        0x0,
        0x0,
        -14,
        0x0,
        { 0x0, (FX32_ONE * -4), 0x0 },
        0x2,
        0xB,
    },
    {
        0x5,
        0x16,
        0x0,
        0x20,
        0x0,
        0x0,
        0x12,
        0x0,
        { 0x0, (FX32_ONE * 4), 0x0 },
        0xB,
        0x2,
    },
    {
        0x6,
        0x16,
        0x0,
        -32,
        0x0,
        0x0,
        -18,
        0x0,
        { 0x0, (FX32_ONE * -4), 0x0 },
        0x3,
        0x6,
    },
    {
        0x7,
        0x16,
        0x0,
        -32,
        0x0,
        0x0,
        -14,
        0x0,
        { 0x0, (FX32_ONE * -4), 0x0 },
        0x4,
        0xB,
    },
    {
        0x8,
        0x9,
        0x0,
        -32,
        0x0,
        0x0,
        -18,
        0x0,
        { 0x0, (FX32_ONE * -4), 0x0 },
        0x5,
        0xB,
    },
    {
        0x9,
        0x16,
        0x0,
        -32,
        0x0,
        0x0,
        -14,
        0x0,
        { 0x0, (FX32_ONE * -4), 0x0 },
        0xB,
        0xB,
    },
    {
        0xA,
        0x16,
        0x0,
        0x20,
        0x0,
        0x0,
        0x12,
        0x0,
        { 0x0, (FX32_ONE * 4), 0x0 },
        0x6,
        0x3,
    },
    {
        0xB,
        0x16,
        0x0,
        0x20,
        0x0,
        0x0,
        0x12,
        0x0,
        { 0x0, (FX32_ONE * 4), 0x0 },
        0xB,
        0x4,
    },
    {
        0xC,
        0x16,
        0x0,
        -32,
        0x0,
        0x0,
        -14,
        0x0,
        { 0x0, (FX32_ONE * -4), 0x0 },
        0x7,
        0x8,
    },
    {
        0xD,
        0x16,
        0x0,
        0x20,
        0x0,
        0x0,
        0x12,
        0x0,
        { 0x0, (FX32_ONE * 4), 0x0 },
        0x8,
        0x7,
    },
    {
        0xE,
        0x16,
        0x0,
        -14,
        0x0,
        0x0,
        -12,
        0x0,
        { 0x0, (FX32_ONE * -4), 0x0 },
        0x9,
        0xB,
    },
    {
        0xF,
        0x10,
        0x0,
        0x20,
        0x0,
        0x0,
        0x12,
        0x0,
        { 0x0, (FX32_ONE * 4), 0x0 },
        0xB,
        0x5,
    },
    {
        0x10,
        0x16,
        0x0,
        0x20,
        0x0,
        0x0,
        0xA,
        0x0,
        { 0x0, (FX32_ONE * 4), 0x0 },
        0xB,
        0xB,
    },
    {
        0x11,
        0x16,
        0x0,
        0xE,
        0x0,
        0x0,
        0x1,
        0x0,
        { 0x0, (FX32_ONE * 4), 0x0 },
        0xB,
        0x9,
    },
    {
        0x12,
        0x16,
        0x0,
        -50,
        0x0,
        0x0,
        -17,
        0x0,
        { 0x0, (FX32_ONE * -4), 0x0 },
        0xA,
        0xB,
    },
    {
        0x13,
        0x16,
        0x0,
        0x32,
        0x0,
        0x0,
        0x12,
        0x0,
        { 0x0, (FX32_ONE * 4), 0x0 },
        0xB,
        0xA,
    },
    {
        0x14,
        0x16,
        0x0,
        0x20,
        0x0,
        0x0,
        0x12,
        0x0,
        { 0x0, (FX32_ONE * 4), 0x0 },
        0xB,
        0xB,
    },
    {
        0x15,
        0x16,
        0x0,
        -32,
        0x0,
        0x0,
        -14,
        0x0,
        { 0x0, (FX32_ONE * 4), 0x0 },
        0xB,
        0xB,
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

static const UnkStruct_ov9_02252414 Unk_ov9_022523A8 = {
    0x3F,
    0xA9,
    0x9,
    0x1,
    0x1,
    { FX32_ONE, FX32_ONE, FX32_ONE },
    { 0x0, 0x0, (FX32_ONE * 48) },
    0x40,
};

static const UnkStruct_ov9_022506EC Unk_ov9_02251274 = {
    0x0
};

static const UnkStruct_ov9_02251438 Unk_ov9_02251960[] = {
    { 0x7, &Unk_ov9_022523A8 },
    { 0x8, &Unk_ov9_02251274 },
    { 0x12, NULL }
};

static const UnkStruct_ov9_02252414 Unk_ov9_022523CC = {
    0x2A,
    0x89,
    0x20,
    0x3,
    0x1,
    { FX32_ONE, FX32_ONE, FX32_ONE },
    { (FX32_ONE * 48), 0x0, 0x0 },
    0x48
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

static const UnkStruct_ov9_02252414 Unk_ov9_02252438 = {
    0xFFFFFFFFFFFFFFF7,
    -4,
    0x16,
    0x3,
    0x0,
    { FX32_ONE / 4, FX32_ONE / 4, FX32_ONE / 4 },
    { (FX32_ONE * 16), 0x0, 0x0 },
    0x30
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

static const UnkStruct_ov9_02252414 Unk_ov9_0225245C = {
    0xF,
    -34,
    0x8,
    0x4,
    0x2,
    { FX32_ONE / 2, FX32_ONE / 2, FX32_ONE / 2 },
    { 0x0, (FX32_ONE * 32), (FX32_ONE * 2) },
    0x20
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

static const UnkStruct_ov9_0224EC10 Unk_ov9_02251F24[] = {
    { 0x0, 0x18, 0x37, 0x121, 0x27, 0x0, 0x0 },
    { 0x0, 0x19, 0x0, 0x0, 0x0 }
};

static const UnkStruct_ov9_0224EC10 Unk_ov9_02251F44[] = {
    { 0x0, 0x15, 0x6A, 0x99, 0x4E, 0x0, 0x0 },
    { 0x0, 0x19, 0x0, 0x0, 0x0, 0x0, 0x0 }
};

static const UnkStruct_ov9_0224EC10 Unk_ov9_02251F84[] = {
    { 0x0, 0x18, 0xF, 0x1, 0xC, 0x5, 0xE },
    { 0x0, 0x19, 0x0, 0x0, 0x0, 0x0, 0x0 }
};

static const UnkStruct_ov9_0224EC10 Unk_ov9_02251FA4[] = {
    { 0x0, 0x18, 0x74, 0x41, 0x4A, 0x0, 0x0 },
    { 0x0, 0x19, 0x0, 0x0, 0x0 }
};

static const UnkStruct_ov9_02252548 Unk_ov9_02252548[] = {
    { 0x23D, Unk_ov9_02251F24 },
    { 0x243, Unk_ov9_02251F44 },
    { 0x246, Unk_ov9_02251F84 },
    { 0x247, Unk_ov9_02251FA4 },
    { 0x251, NULL }
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
