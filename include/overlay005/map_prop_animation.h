#ifndef POKEPLATINUM_OV5_MAP_PROP_ANIMATION_H
#define POKEPLATINUM_OV5_MAP_PROP_ANIMATION_H

#include <nnsys.h>

#include "narc.h"

#define MAP_PROP_ANIME_LIST_FILE_ARCHIVE_IDS_COUNT 4

#define MAP_PROP_ANIMATION_MANAGER_MAX_ANIMATIONS               16
#define MAP_PROP_ANIMATION_MANAGER_MAX_BICYCLE_SLOPE_ANIMATIONS 2

#define MAP_PROP_ONE_SHOT_ANIMATION_MAX_ANIMATIONS 4

#define MAP_PROP_ONE_SHOT_ANIMATION_MAX_RENDER_OBJS 6

#define MAP_PROP_ONE_SHOT_ANIMATION_MANAGER_MAX_ITEMS 16

typedef struct MapPropAnimation {
    NNSG3dAnmObj *animationObj;
    BOOL loaded;
    int currentLoop;
    int animeArchiveID;
    BOOL paused;
    void *animationFile;
    int loopCount;
    BOOL looping;
    BOOL reversed;
    int pastoriaGymButtonGroup;
} MapPropAnimation;

typedef struct BicycleSlopeAnimation {
    BOOL loaded;
    NNSG3dRenderObj *renderObj;
    MapPropAnimation *animation;
    int animeArchiveID;
} BicycleSlopeAnimation;

typedef struct MapPropAnimeListFile {
    u8 hasAnimations;
    u8 flags;
    u8 isBicycleSlope;
    u8 dummy03;
    int animeArchiveIDs[MAP_PROP_ANIME_LIST_FILE_ARCHIVE_IDS_COUNT];
} MapPropAnimeListFile;

typedef struct MapPropAnimationManager {
    NNSFndAllocator allocator;
    MapPropAnimation animations[MAP_PROP_ANIMATION_MANAGER_MAX_ANIMATIONS];
    BicycleSlopeAnimation bicycleSlopeAnimations[MAP_PROP_ANIMATION_MANAGER_MAX_BICYCLE_SLOPE_ANIMATIONS];
    NARC *animeNARC;
    NARC *animeListNARC;
} MapPropAnimationManager;

typedef struct MapPropOneShotAnimationList {
    MapPropAnimation *list[MAP_PROP_ONE_SHOT_ANIMATION_MAX_ANIMATIONS];
    int count;
} MapPropOneShotAnimationList;

typedef struct MapPropOneShotAnimation {
    MapPropOneShotAnimationList animations;
    NNSG3dRenderObj *mapPropRenderObjs[MAP_PROP_ONE_SHOT_ANIMATION_MAX_RENDER_OBJS];
    MapPropAnimation *currentAnimation;
    int mapPropModelID;
    u8 tag;
} MapPropOneShotAnimation;

typedef struct MapPropOneShotAnimationManager {
    MapPropOneShotAnimation items[MAP_PROP_ONE_SHOT_ANIMATION_MANAGER_MAX_ITEMS];
} MapPropOneShotAnimationManager;

MapPropAnimationManager *MapPropAnimationManager_New(void);
MapPropAnimation *MapPropAnimationManager_LoadPropAnimationForOneShot(const int mapPropModelID, const int mapPropAnimIndex, const int animationLoopCount, const int pastoriaGymButtonGroup, const BOOL animationReversed, const BOOL animationPaused, const BOOL isDeferredLoading, NNSG3dResMdl *mapPropModel, NNSG3dResTex *mapPropTexture, MapPropAnimationManager *manager);
void MapPropAnimationManager_LoadPropAnimations(const int mapPropModelID, NNSG3dResMdl *mapPropModel, NNSG3dResTex *mapPropTexture, MapPropAnimationManager *manager);
BOOL MapPropAnimationManager_AddAnimationToRenderObj(const int mapPropModelID, const int mapPropAnimIndex, const BOOL isDeferredAddToRenderObj, NNSG3dRenderObj *mapPropRenderObj, MapPropAnimationManager *manager);
BOOL MapPropAnimationManager_AddAllAnimationsToRenderObj(const int mapPropModelID, NNSG3dRenderObj *mapPropRenderObj, MapPropAnimationManager *manager);
void MapPropAnimationManager_UnloadAllAnimations(MapPropAnimationManager *manager);
void MapPropAnimationManager_UnloadAnimation(MapPropAnimation *animation, MapPropAnimationManager *manager);
void MapPropAnimationManager_RemoveAnimationFromRenderObj(MapPropAnimationManager *manager, NNSG3dRenderObj *mapPropRenderObj, const int mapPropModelID, const int mapPropAnimIndex);
void MapPropAnimationManager_Free(MapPropAnimationManager *manager);
MapPropAnimation *MapPropAnimationManager_GetAnimationByPastoriaGymButtonGroup(const int pastoriaGymButtonGroup, MapPropAnimationManager *manager);
MapPropAnimation *MapPropAnimationManager_GetAnimation(const int mapPropModelID, const int mapPropAnimIndex, MapPropAnimationManager *manager);
void MapPropAnimationManager_AdvanceAnimations(MapPropAnimationManager *manager);
u16 MapPropAnimationManager_GetAnimeListNARCFileCount(MapPropAnimationManager *manager);
const u8 MapPropAnimationManager_GetPropAnimationCount(MapPropAnimationManager *manager, const int mapPropModelID);

void MapPropAnimation_SetAnimationPaused(MapPropAnimation *animation, const BOOL paused);
void MapPropAnimation_StartLoop(MapPropAnimation *animation);
BOOL MapPropAnimation_IsOnLastFrame(MapPropAnimation *animation);
void MapPropAnimation_GoToFirstFrame(MapPropAnimation *animation);
void MapPropAnimation_GoToLastFrame(MapPropAnimation *animation);
void MapPropAnimation_AdvanceFrame(MapPropAnimation *animation);
void MapPropAnimation_SetReversed(MapPropAnimation *animation, const BOOL reversed);
void MapPropAnimation_SetLoopCount(MapPropAnimation *animation, const int loopCount);
void MapPropAnimation_SetPastoriaGymButtonGroup(MapPropAnimation *animation, const int pastoriaGymButtonGroup);
BOOL MapPropAnimation_IsLoopFinished(const MapPropAnimation *animation);

MapPropOneShotAnimationManager *MapPropOneShotAnimationManager_New(void);
void MapPropOneShotAnimationManager_Free(MapPropOneShotAnimationManager **oneShotAnimMan);
void MapPropOneShotAnimationManager_LoadPropAnimations(MapPropAnimationManager *animMan, MapPropOneShotAnimationManager *const oneShotAnimMan, const int tag, const int mapPropModelID, NNSG3dRenderObj *mapPropRenderObj, NNSG3dResMdl *mapPropModel, NNSG3dResTex *mapPropTexture, const int animationCount, const u8 animationLoopCount, const BOOL animationReversed);
void MapPropOneShotAnimationManager_SetAnimationRenderObj(MapPropOneShotAnimationManager *const oneShotAnimMan, const int tag, const u8 renderObjIndex, NNSG3dRenderObj *renderObj);
void MapPropOneShotAnimationManager_PlayAnimation(MapPropOneShotAnimationManager *const oneShotAnimMan, const int tag, const int mapPropAnimIndex);
void MapPropOneShotAnimationManager_PlayAnimationWithSoundEffect(MapPropOneShotAnimationManager *const oneShotAnimMan, const int tag, const int mapPropAnimIndex, const int soundEffectID);
void MapPropOneShotAnimationManager_UnloadAnimation(MapPropAnimationManager *animMan, MapPropOneShotAnimationManager *oneShotAnimMan, const int tag);
MapPropAnimation *MapPropOneShotAnimationManager_GetCurrentAnimation(MapPropOneShotAnimationManager *const oneShotAnimMan, const int tag);
const BOOL MapPropOneShotAnimationManager_IsAnimationLoopFinished(MapPropOneShotAnimationManager *const oneShotAnimMan, const int tag);
const int MapPropOneShotAnimationManager_GetAnimationMapPropModelID(MapPropOneShotAnimationManager *const oneShotAnimMan, const int tag);

#endif // POKEPLATINUM_OV5_MAP_PROP_ANIMATION_H
