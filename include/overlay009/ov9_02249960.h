#ifndef POKEPLATINUM_OV9_02249960_H
#define POKEPLATINUM_OV9_02249960_H

#include "struct_decls/map_object.h"

#include "field/field_system_decl.h"

#include "billboard.h"
#include "field_task.h"
#include "location.h"

#define GHOST_PROP_GROUP_MAX_COUNT 24

#define DIST_WORLD_PERSISTED_DATA_CURRENT_FLOATING_PLATFORM_SIZE 4
#define DIST_WORLD_PERSISTED_DATA_CURRENT_FLOATING_PLATFORM_MAX  (1 << DIST_WORLD_PERSISTED_DATA_CURRENT_FLOATING_PLATFORM_SIZE)

enum DistWorldPersistedMovingPlatformFlag {
    DIST_WORLD_PLATFORM_FLAG_B1F_1 = 0,
    DIST_WORLD_PLATFORM_FLAG_B2F_1,
    DIST_WORLD_PLATFORM_FLAG_B3F_1,
    DIST_WORLD_PLATFORM_FLAG_B4F_1,
    DIST_WORLD_PLATFORM_FLAG_B4F_2,
    DIST_WORLD_PLATFORM_FLAG_B5F_3,
    DIST_WORLD_PLATFORM_FLAG_B3F_2,
    DIST_WORLD_PLATFORM_FLAG_B5F_1,
    DIST_WORLD_PLATFORM_FLAG_B4F_3,
    DIST_WORLD_PLATFORM_FLAG_B6F_1,
    DIST_WORLD_PLATFORM_FLAG_B7F_1,
    DIST_WORLD_PLATFORM_FLAG_COUNT,
    DIST_WORLD_PLATFORM_FLAG_INVALID = DIST_WORLD_PLATFORM_FLAG_COUNT,
};

enum DistWorldPersistedBoulderPuzzleFlag {
    DIST_WORLD_PUZZLE_FLAG_MESPRIT_BOULDER_IN_B5F = 0,
    DIST_WORLD_PUZZLE_FLAG_AZELF_BOULDER_IN_B5F,
    DIST_WORLD_PUZZLE_FLAG_UXIE_BOULDER_IN_B5F,
    DIST_WORLD_PUZZLE_FLAG_MESPRIT_BOULDER_IN_B6F_OUTSIDE,
    DIST_WORLD_PUZZLE_FLAG_AZELF_BOULDER_IN_B6F_OUTSIDE,
    DIST_WORLD_PUZZLE_FLAG_UXIE_BOULDER_IN_B6F_OUTSIDE,
    DIST_WORLD_PUZZLE_FLAG_MESPRIT_BOULDER_IN_B6F_PIT,
    DIST_WORLD_PUZZLE_FLAG_AZELF_BOULDER_IN_B6F_PIT,
    DIST_WORLD_PUZZLE_FLAG_UXIE_BOULDER_IN_B6F_PIT,
    DIST_WORLD_PUZZLE_FLAG_DUMMY9,
    DIST_WORLD_PUZZLE_FLAG_UXIE_TUTO_SEEN,
    DIST_WORLD_PUZZLE_FLAG_AZELF_TUTO_SEEN,
    DIST_WORLD_PUZZLE_FLAG_MESPRIT_TUTO_SEEN,
    DIST_WORLD_PUZZLE_FLAG_UXIE_IN_B6F,
    DIST_WORLD_PUZZLE_FLAG_AZELF_IN_B6F,
    DIST_WORLD_PUZZLE_FLAG_MESPRIT_IN_B6F,
    DIST_WORLD_PUZZLE_FLAG_GIRATINA_ROOM_PLATFORMS_VISIBLE,
    DIST_WORLD_PUZZLE_FLAG_COUNT,
    DIST_WORLD_PUZZLE_FLAG_INVALID = DIST_WORLD_PUZZLE_FLAG_COUNT,
};

typedef struct DistWorldPersistedData {
    u32 valid : 1;
    u32 hiddenGhostPropGroups : GHOST_PROP_GROUP_MAX_COUNT;
    u32 currentFloatingPlatformIndex : DIST_WORLD_PERSISTED_DATA_CURRENT_FLOATING_PLATFORM_SIZE;
    u32 padding : 3;
    u16 cameraAngleX;
    u16 cameraAngleY;
    u16 cameraAngleZ;
    u16 movingPlatformFlags;
    u32 boulderPuzzleFlags;
    u8 dummy10[16];
} DistWorldPersistedData;

typedef struct DistWorldSystem DistWorldSystem;

typedef struct DistWorldFallingBoulder {
    DistWorldSystem *system;
    FieldSystem *fieldSystem;
    FieldTask *fieldTask;
    MapObject *mapObj;
    u16 state;
    u16 destination;
    u32 flagIndex;
    int animStep;
    fx32 finalPosY;
    fx32 vibrationYDelta;
} DistWorldFallingBoulder;

void DistWorld_DynamicMapFeaturesInit(FieldSystem *fieldSystem);
void DistWorld_DynamicMapFeaturesFree(FieldSystem *fieldSystem);
BOOL DistWorld_DynamicMapFeaturesCheckCollision(FieldSystem *fieldSystem, const int tileX, const int tileZ, const fx32 height, BOOL *isColliding);
void DistWorld_UpdateCameraAngle(FieldSystem *fieldSystem);
void DistWorld_ResetPersistedCameraAngles(FieldSystem *fieldSystem);
int DistWorld_GetMapObjectRotatorAnimFrame(FieldSystem *fieldSystem, MapObject *mapObj);
void DistWorld_BindMapObjectRotator(FieldSystem *fieldSystem, Billboard *billboard, int initialAngle);
void DistWorld_UnbindMapObjectRotator(FieldSystem *fieldSystem, const Billboard *billboard);
BOOL DistWorld_HandlePlayerMoved(FieldSystem *fieldSystem, enum FaceDirection playerDir);
BOOL DistWorld_HandlePlayerMovementEnd(FieldSystem *fieldSystem, enum FaceDirection playerDir);
BOOL DistWorld_HandlePlayerPositionChanged(FieldSystem *fieldSystem);
BOOL DistWorld_CheckMapTransition(FieldSystem *fieldSystem, enum FaceDirection transitionDir);
void DistWorld_RenderInactiveFloor(FieldSystem *fieldSystem);
void DistWorld_TickInactiveFloor(FieldSystem *fieldSystem);
void DistWorld_StartGiratinaShadowEvent(FieldSystem *fieldSystem, u16 eventIndex);
void DistWorld_FinishGiratinaShadowEvent(FieldSystem *fieldSystem);
void DistWorld_AddMapObjectWithLocalID(FieldSystem *fieldSystem, u16 mapObjLocalID);
void DistWorld_DeleteMapObjectWithLocalID(FieldSystem *fieldSystem, u16 mapObjLocalID);
BOOL DistWorld_WillBoulderBeAtFallLocation(const MapObject *boulderMapObj, enum FaceDirection boulderDir);
BOOL DistWorld_IsBoulderAtFallLocation(const MapObject *boulderMapObj);
DistWorldFallingBoulder *DistWorldFallingBoulder_New(FieldSystem *fieldSystem, FieldTask *boulderFieldTask, MapObject *boulderMapObj);
BOOL DistWorldFallingBoulder_Tick(DistWorldFallingBoulder *boulder);
void DistWorld_ApplyGiratinaSpritePalette(FieldSystem *fieldSystem);
BOOL DistWorld_ArePersistedFeaturesInit(FieldSystem *fieldSystem);
BOOL DistWorld_CheckCollisionOnCurrentFloatingPlatform(FieldSystem *fieldSystem, int tileX, int tileY, int tileZ);
BOOL DistWorld_IsValidTileOnCurrentFloatingPlatform(FieldSystem *fieldSystem, int tileX, int tileY, int tileZ);
BOOL DistWorld_AreCoordsValidOnCurrentFloatingPlatformKind(FieldSystem *fieldSystem, int tileX, int tileY, int tileZ);
void DistWorld_FindAndPrepareNewCurrentFloatingPlatform(FieldSystem *fieldSystem, int tileX, int tileY, int tileZ);
BOOL DistWorld_GetTileBehaviorOnCurrentFloatingPlatform(FieldSystem *fieldSystem, int tileX, int tileY, int tileZ, u32 *tileBehavior);
void DistWorld_LoadFloorOffsets(int mapHeaderID, int *offsetTileX, int *offsetAltitude, int *offsetTileZ);
BOOL DistWorld_IsBlockedByCynthia(FieldSystem *fieldSystem, int tileX, int tileZ, int tileY);

#endif // POKEPLATINUM_OV9_02249960_H
