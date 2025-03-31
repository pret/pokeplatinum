#include "overlay005/map_prop_animation.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "heap.h"
#include "narc.h"
#include "sound_playback.h"

#define ANIME_ARCHIVE_ID_NONE -1

static BOOL BicycleSlopeAnimation_Load(BicycleSlopeAnimation *bicycleSlopeAnims, NNSG3dRenderObj *renderObj, MapPropAnimation *animation, const u8 animeArchiveID)
{
    int i;

    GF_ASSERT(animation->loopCount != -1);

    for (i = 0; i < MAP_PROP_ANIMATION_MANAGER_MAX_BICYCLE_SLOPE_ANIMATIONS; i++) {
        if (bicycleSlopeAnims[i].loaded && bicycleSlopeAnims[i].animeArchiveID == animeArchiveID && bicycleSlopeAnims[i].renderObj == renderObj) {
            return FALSE;
        }
    }

    for (i = 0; i < MAP_PROP_ANIMATION_MANAGER_MAX_BICYCLE_SLOPE_ANIMATIONS; i++) {
        if (!bicycleSlopeAnims[i].loaded) {
            bicycleSlopeAnims[i].loaded = TRUE;
            bicycleSlopeAnims[i].animeArchiveID = animeArchiveID;
            bicycleSlopeAnims[i].animation = animation;
            bicycleSlopeAnims[i].renderObj = renderObj;
            break;
        }
    }

    return TRUE;
}

static void *MapPropAnimation_LoadAnimationObj(NARC *animeNARC, const u32 animeArchiveID, NNSG3dResMdl *mapPropModel, NNSG3dAnmObj **animationObj, NNSG3dResTex *mapPropTexture, NNSFndAllocator *allocator)
{
    void *animation;

    GF_ASSERT(animeArchiveID != ANIME_ARCHIVE_ID_NONE);
    void *animationFile = NARC_AllocAndReadWholeMember(animeNARC, animeArchiveID, HEAP_ID_FIELD);
    GF_ASSERT(animationFile != NULL);

    animation = NNS_G3dGetAnmByIdx(animationFile, 0);
    GF_ASSERT(animation != NULL);

    *animationObj = NNS_G3dAllocAnmObj(allocator, animation, mapPropModel);
    GF_ASSERT(animationObj != NULL);

    NNS_G3dAnmObjInit(*animationObj, animation, mapPropModel, mapPropTexture);
    return animationFile;
}

static const BOOL MapPropAnimation_RemoveAnimationObjFromRenderObj(NNSG3dRenderObj *renderObj, NNSG3dAnmObj *animationObj)
{
    if (animationObj == NULL) {
        return FALSE;
    } else if (renderObj == NULL) {
        return FALSE;
    }

    NNS_G3dRenderObjRemoveAnmObj(renderObj, animationObj);
    return TRUE;
}

static void BicycleSlopeAnimation_ResetFinishedAnimations(BicycleSlopeAnimation *bicycleSlopeAnims)
{
    for (int i = 0; i < MAP_PROP_ANIMATION_MANAGER_MAX_BICYCLE_SLOPE_ANIMATIONS; i++) {
        if (bicycleSlopeAnims[i].loaded && MapPropAnimation_IsLoopFinished(bicycleSlopeAnims[i].animation)) {
            MapPropAnimation_RemoveAnimationObjFromRenderObj(bicycleSlopeAnims[i].renderObj, bicycleSlopeAnims[i].animation->animationObj);
            bicycleSlopeAnims[i].loaded = FALSE;
            bicycleSlopeAnims[i].animeArchiveID = 0;
            bicycleSlopeAnims[i].animation = NULL;
            bicycleSlopeAnims[i].renderObj = NULL;
        }
    }
}

MapPropAnimationManager *MapPropAnimationManager_New(void)
{
    int i;
    MapPropAnimationManager *manager = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(MapPropAnimationManager));

    for (i = 0; i < MAP_PROP_ANIMATION_MANAGER_MAX_ANIMATIONS; i++) {
        manager->animations[i].loaded = FALSE;
        manager->animations[i].paused = 0;
        manager->animations[i].animationObj = NULL;
        manager->animations[i].currentLoop = 0;
        manager->animations[i].animeArchiveID = 0;
        manager->animations[i].animationFile = NULL;
        manager->animations[i].loopCount = -1;
        manager->animations[i].looping = FALSE;
        manager->animations[i].reversed = FALSE;
        manager->animations[i].pastoriaGymButtonGroup = 0;
    }

    for (i = 0; i < MAP_PROP_ANIMATION_MANAGER_MAX_BICYCLE_SLOPE_ANIMATIONS; i++) {
        manager->bicycleSlopeAnimations[i].loaded = FALSE;
        manager->bicycleSlopeAnimations[i].renderObj = NULL;
        manager->bicycleSlopeAnimations[i].animation = NULL;
        manager->bicycleSlopeAnimations[i].animeArchiveID = 0;
    }

    Heap_FndInitAllocatorForExpHeap(&manager->allocator, HEAP_ID_FIELD, 4);

    manager->animeNARC = NARC_ctor(NARC_INDEX_ARC__BM_ANIME, HEAP_ID_FIELD);
    manager->animeListNARC = NARC_ctor(NARC_INDEX_ARC__BM_ANIME_LIST, HEAP_ID_FIELD);

    return manager;
}

static NNSG3dAnmObj *MapPropAnimation_GetAnimationObj(MapPropAnimation *animation)
{
    if (animation == NULL) {
        return NULL;
    }

    return animation->animationObj;
}

static BOOL MapPropAnimation_CheckDeferredLoadingFlag(const u8 animationFlags)
{
    return (animationFlags & 0x1) == 0x1;
}

static BOOL MapPropAnimation_CheckDeferredAddToRenderObjFlag(const u8 animationFlags)
{
    return ((animationFlags >> 1) & 0x1) == 0x1;
}

static int MapPropAnimation_IsLooping(const MapPropAnimation *animation)
{
    GF_ASSERT(animation->loaded == TRUE);
    return animation->looping;
}

MapPropAnimation *MapPropAnimationManager_LoadPropAnimationForOneShot(const int mapPropModelID, const int mapPropAnimIndex, const int animationLoopCount, const int pastoriaGymButtonGroup, const BOOL animationReversed, const BOOL animationPaused, const BOOL isDeferredLoading, NNSG3dResMdl *mapPropModel, NNSG3dResTex *mapPropTexture, MapPropAnimationManager *manager)
{
    int i;

    MapPropAnimeListFile animeListFile;
    NARC_ReadWholeMember(manager->animeListNARC, mapPropModelID, &animeListFile);
    GF_ASSERT(mapPropAnimIndex < MAP_PROP_ANIME_LIST_FILE_ARCHIVE_IDS_COUNT);

    int animeArchiveID = animeListFile.animeArchiveIDs[mapPropAnimIndex];

    if (animeArchiveID == ANIME_ARCHIVE_ID_NONE) {
        return NULL;
    } else if (MapPropAnimation_CheckDeferredLoadingFlag(animeListFile.flags) != isDeferredLoading) {
        return NULL;
    }

    for (i = 0; i < MAP_PROP_ANIMATION_MANAGER_MAX_ANIMATIONS; i++) {
        if (pastoriaGymButtonGroup != 0 && manager->animations[i].pastoriaGymButtonGroup == pastoriaGymButtonGroup) {
            GF_ASSERT(FALSE);
        }
    }

    for (i = 0; i < MAP_PROP_ANIMATION_MANAGER_MAX_ANIMATIONS; i++) {
        if (!manager->animations[i].loaded) {
            manager->animations[i].loaded = TRUE;
            manager->animations[i].paused = animationPaused;
            manager->animations[i].animationObj = NULL;
            manager->animations[i].currentLoop = 0;
            manager->animations[i].animeArchiveID = animeArchiveID;
            manager->animations[i].reversed = animationReversed;
            manager->animations[i].pastoriaGymButtonGroup = pastoriaGymButtonGroup;
            manager->animations[i].animationFile = MapPropAnimation_LoadAnimationObj(manager->animeNARC, animeArchiveID, mapPropModel, &manager->animations[i].animationObj, mapPropTexture, &manager->allocator);
            manager->animations[i].loopCount = animationLoopCount;
            manager->animations[i].looping = TRUE;

            MapPropAnimation *animation = &manager->animations[i];
            MapPropAnimation_GoToFirstFrame(animation);

            return animation;
        }
    }

    GF_ASSERT(FALSE);
    return NULL;
}

void MapPropAnimationManager_LoadPropAnimations(const int mapPropModelID, NNSG3dResMdl *mapPropModel, NNSG3dResTex *mapPropTexture, MapPropAnimationManager *manager)
{
    int animeArchiveID;
    int i, j;

    MapPropAnimeListFile animeListFile;
    NARC_ReadWholeMember(manager->animeListNARC, mapPropModelID, &animeListFile);

    // BUG: The generated NARC contains 0xFF instead of 0x00,
    // so this early exit is never taken
    if (!animeListFile.hasAnimations) {
        return;
    }

    for (int i = 0; i < MAP_PROP_ANIME_LIST_FILE_ARCHIVE_IDS_COUNT; i++) {
        animeArchiveID = animeListFile.animeArchiveIDs[i];

        if (animeArchiveID == ANIME_ARCHIVE_ID_NONE || MapPropAnimation_CheckDeferredLoadingFlag(animeListFile.flags)) {
            return;
        }

        for (j = 0; j < MAP_PROP_ANIMATION_MANAGER_MAX_ANIMATIONS; j++) {
            if (!manager->animations[j].loaded) {
                manager->animations[j].loaded = TRUE;
                manager->animations[j].paused = FALSE;
                manager->animations[j].animationObj = NULL;
                manager->animations[j].currentLoop = 0;
                manager->animations[j].animeArchiveID = animeArchiveID;
                manager->animations[j].reversed = FALSE;
                manager->animations[j].pastoriaGymButtonGroup = 0;
                manager->animations[j].animationFile = MapPropAnimation_LoadAnimationObj(manager->animeNARC, animeArchiveID, mapPropModel, &manager->animations[j].animationObj, mapPropTexture, &manager->allocator);
                manager->animations[j].loopCount = -1;
                manager->animations[j].looping = TRUE;

                MapPropAnimation_GoToFirstFrame(&manager->animations[j]);

                if (animeListFile.isBicycleSlope) {
                    manager->animations[j].paused = TRUE;
                    manager->animations[j].loopCount = 1;
                }

                break;
            }
        }

        GF_ASSERT(j != MAP_PROP_ANIMATION_MANAGER_MAX_ANIMATIONS);
    }
}

BOOL MapPropAnimationManager_AddAnimationToRenderObj(const int mapPropModelID, const int mapPropAnimIndex, const BOOL isDeferredAddToRenderObj, NNSG3dRenderObj *mapPropRenderObj, MapPropAnimationManager *manager)
{
    int i;
    BOOL addAnimationObj;

    if (manager == NULL) {
        GF_ASSERT(FALSE);
        return FALSE;
    } else if (mapPropModelID >= MapPropAnimationManager_GetAnimeListNARCFileCount(manager)) {
        return FALSE;
    }

    MapPropAnimeListFile animeListFile;
    NARC_ReadWholeMember(manager->animeListNARC, mapPropModelID, &animeListFile);
    GF_ASSERT(mapPropAnimIndex < MAP_PROP_ANIME_LIST_FILE_ARCHIVE_IDS_COUNT);

    int animeArchiveID = animeListFile.animeArchiveIDs[mapPropAnimIndex];

    if (animeArchiveID == ANIME_ARCHIVE_ID_NONE) {
        return FALSE;
    } else if (MapPropAnimation_CheckDeferredAddToRenderObjFlag(animeListFile.flags) != isDeferredAddToRenderObj) {
        return FALSE;
    }

    for (i = 0; i < MAP_PROP_ANIMATION_MANAGER_MAX_ANIMATIONS; i++) {
        if (animeArchiveID == manager->animations[i].animeArchiveID) {
            if (animeListFile.isBicycleSlope) {
                addAnimationObj = BicycleSlopeAnimation_Load(manager->bicycleSlopeAnimations, mapPropRenderObj, &manager->animations[i], animeArchiveID);
            } else {
                addAnimationObj = TRUE;
            }

            if (addAnimationObj) {
                NNS_G3dRenderObjAddAnmObj(mapPropRenderObj, manager->animations[i].animationObj);
            }

            return TRUE;
        }
    }

    return FALSE;
}

BOOL MapPropAnimationManager_AddAllAnimationsToRenderObj(const int mapPropModelID, NNSG3dRenderObj *mapPropRenderObj, MapPropAnimationManager *manager)
{
    int i, j;
    int animeArchiveID;
    BOOL res = FALSE;
    BOOL addAnimationObj;

    if (manager == NULL) {
        GF_ASSERT(FALSE);
    }

    if (mapPropModelID >= MapPropAnimationManager_GetAnimeListNARCFileCount(manager)) {
        return FALSE;
    }

    MapPropAnimeListFile animeListFile;
    NARC_ReadWholeMember(manager->animeListNARC, mapPropModelID, &animeListFile);

    if (MapPropAnimation_CheckDeferredAddToRenderObjFlag(animeListFile.flags)) {
        return FALSE;
    }

    for (i = 0; i < MAP_PROP_ANIME_LIST_FILE_ARCHIVE_IDS_COUNT; i++) {
        animeArchiveID = animeListFile.animeArchiveIDs[i];

        if (animeArchiveID == ANIME_ARCHIVE_ID_NONE) {
            return res;
        }

        for (j = 0; j < MAP_PROP_ANIMATION_MANAGER_MAX_ANIMATIONS; j++) {
            if (animeArchiveID == manager->animations[j].animeArchiveID) {
                if (animeListFile.isBicycleSlope) {
                    addAnimationObj = BicycleSlopeAnimation_Load(manager->bicycleSlopeAnimations, mapPropRenderObj, &manager->animations[j], animeArchiveID);
                } else {
                    addAnimationObj = TRUE;
                }

                if (addAnimationObj) {
                    NNS_G3dRenderObjAddAnmObj(mapPropRenderObj, manager->animations[j].animationObj);
                    res = TRUE;
                }

                break;
            }
        }
    }

    return res;
}

void MapPropAnimationManager_UnloadAllAnimations(MapPropAnimationManager *manager)
{
    if (manager == NULL) {
        return;
    }

    for (int i = 0; i < MAP_PROP_ANIMATION_MANAGER_MAX_ANIMATIONS; i++) {
        if (manager->animations[i].loaded) {
            if (manager->animations[i].loaded == TRUE) {
                NNS_G3dFreeAnmObj(&manager->allocator, manager->animations[i].animationObj);
                manager->animations[i].animationObj = NULL;
                Heap_FreeToHeap(manager->animations[i].animationFile);
            }

            manager->animations[i].loaded = FALSE;
            manager->animations[i].pastoriaGymButtonGroup = 0;
        }
    }
}

void MapPropAnimationManager_UnloadAnimation(MapPropAnimation *animation, MapPropAnimationManager *manager)
{
    if (manager == NULL) {
        return;
    }

    GF_ASSERT(animation != NULL);

    if (animation->loaded) {
        if (animation->loaded == TRUE) {
            NNS_G3dFreeAnmObj(&manager->allocator, animation->animationObj);
            animation->animationObj = NULL;
            Heap_FreeToHeap(animation->animationFile);
        }

        animation->loaded = FALSE;
        animation->pastoriaGymButtonGroup = 0;
    }
}

void MapPropAnimationManager_RemoveAnimationFromRenderObj(MapPropAnimationManager *manager, NNSG3dRenderObj *mapPropRenderObj, const int mapPropModelID, const int mapPropAnimIndex)
{
    MapPropAnimeListFile animeListFile;
    NARC_ReadWholeMember(manager->animeListNARC, mapPropModelID, &animeListFile);

    GF_ASSERT(mapPropAnimIndex < MAP_PROP_ANIME_LIST_FILE_ARCHIVE_IDS_COUNT);
    int animeArchiveID = animeListFile.animeArchiveIDs[mapPropAnimIndex];
    GF_ASSERT(animeArchiveID != ANIME_ARCHIVE_ID_NONE);

    for (u8 i = 0; i < MAP_PROP_ANIMATION_MANAGER_MAX_ANIMATIONS; i++) {
        if (manager->animations[i].loaded == TRUE && manager->animations[i].animeArchiveID == animeArchiveID) {
            MapPropAnimation_RemoveAnimationObjFromRenderObj(mapPropRenderObj, manager->animations[i].animationObj);
            return;
        }
    }
}

void MapPropAnimationManager_Free(MapPropAnimationManager *manager)
{
    if (manager == NULL) {
        return;
    }

    NARC_dtor(manager->animeNARC);
    NARC_dtor(manager->animeListNARC);
    Heap_FreeToHeap(manager);

    manager = NULL;
}

MapPropAnimation *MapPropAnimationManager_GetAnimationByPastoriaGymButtonGroup(const int pastoriaGymButtonGroup, MapPropAnimationManager *manager)
{
    GF_ASSERT(pastoriaGymButtonGroup != 0);
    MapPropAnimation *animation = NULL;

    for (int i = 0; i < MAP_PROP_ANIMATION_MANAGER_MAX_ANIMATIONS; i++) {
        if (manager->animations[i].pastoriaGymButtonGroup == pastoriaGymButtonGroup) {
            animation = &manager->animations[i];
            GF_ASSERT(animation->loaded);
            break;
        }
    }

    GF_ASSERT(animation != NULL);
    return animation;
}

MapPropAnimation *MapPropAnimationManager_GetAnimation(const int mapPropModelID, const int mapPropAnimIndex, MapPropAnimationManager *manager)
{
    MapPropAnimeListFile animeListFile;
    NARC_ReadWholeMember(manager->animeListNARC, mapPropModelID, &animeListFile);

    GF_ASSERT(mapPropAnimIndex < MAP_PROP_ANIME_LIST_FILE_ARCHIVE_IDS_COUNT);

    int animeArchiveID = animeListFile.animeArchiveIDs[mapPropAnimIndex];
    MapPropAnimation *animation = NULL;

    for (int i = 0; i < MAP_PROP_ANIMATION_MANAGER_MAX_ANIMATIONS; i++) {
        if (manager->animations[i].animeArchiveID == animeArchiveID) {
            animation = &manager->animations[i];
            GF_ASSERT(animation->loaded);
            break;
        }
    }

    GF_ASSERT(animation != NULL);
    return animation;
}

void MapPropAnimation_SetAnimationPaused(MapPropAnimation *animation, const BOOL paused)
{
    animation->paused = paused;
}

void MapPropAnimation_StartLoop(MapPropAnimation *animation)
{
    animation->looping = TRUE;
}

BOOL MapPropAnimation_IsOnLastFrame(MapPropAnimation *animation)
{
    BOOL onLastFrame;

    if (!animation->reversed) {
        if (animation->animationObj->frame >= NNS_G3dAnmObjGetNumFrame(animation->animationObj) - (FX32_ONE)) {
            onLastFrame = TRUE;
        } else {
            onLastFrame = FALSE;
        }
    } else {
        if (animation->animationObj->frame == 0) {
            onLastFrame = TRUE;
        } else {
            onLastFrame = FALSE;
        }
    }

    return onLastFrame;
}

void MapPropAnimation_GoToFirstFrame(MapPropAnimation *animation)
{
    if (!animation->reversed) {
        animation->animationObj->frame = 0;
    } else {
        animation->animationObj->frame = NNS_G3dAnmObjGetNumFrame(animation->animationObj) - (FX32_ONE);
    }
}

void MapPropAnimation_GoToLastFrame(MapPropAnimation *animation)
{
    if (!animation->reversed) {
        animation->animationObj->frame = NNS_G3dAnmObjGetNumFrame(animation->animationObj) - (FX32_ONE);
    } else {
        animation->animationObj->frame = 0;
    }
}

void MapPropAnimation_AdvanceFrame(MapPropAnimation *animation)
{
    if (!animation->reversed) {
        animation->animationObj->frame += (FX32_ONE);

        if (animation->animationObj->frame == NNS_G3dAnmObjGetNumFrame(animation->animationObj)) {
            animation->animationObj->frame = 0;
        }
    } else {
        if (animation->animationObj->frame <= 0) {
            animation->animationObj->frame = NNS_G3dAnmObjGetNumFrame(animation->animationObj) - (FX32_ONE);
        } else {
            animation->animationObj->frame -= (FX32_ONE);
        }
    }
}

void MapPropAnimation_SetReversed(MapPropAnimation *animation, const BOOL reversed)
{
    animation->reversed = reversed;
}

void MapPropAnimation_SetLoopCount(MapPropAnimation *animation, const int loopCount)
{
    animation->loopCount = loopCount;
}

void MapPropAnimation_SetPastoriaGymButtonGroup(MapPropAnimation *animation, const int pastoriaGymButtonGroup)
{
    animation->pastoriaGymButtonGroup = pastoriaGymButtonGroup;
}

void MapPropAnimationManager_AdvanceAnimations(MapPropAnimationManager *manager)
{
    if (manager == NULL) {
        return;
    }

    for (int i = 0; i < MAP_PROP_ANIMATION_MANAGER_MAX_ANIMATIONS; i++) {
        MapPropAnimation *animation = &manager->animations[i];

        if (animation->loaded == TRUE) {
            if (animation->paused == TRUE || animation->looping == FALSE) {
                continue;
            }

            MapPropAnimation_AdvanceFrame(animation);

            if (animation->loopCount != -1 && MapPropAnimation_IsOnLastFrame(animation)) {
                if (animation->currentLoop + 1 >= animation->loopCount) {
                    animation->looping = FALSE;
                } else {
                    animation->currentLoop++;
                }
            }
        }
    }

    BicycleSlopeAnimation_ResetFinishedAnimations(manager->bicycleSlopeAnimations);
}

BOOL MapPropAnimation_IsLoopFinished(const MapPropAnimation *animation)
{
    return MapPropAnimation_IsLooping(animation) == FALSE;
}

u16 MapPropAnimationManager_GetAnimeListNARCFileCount(MapPropAnimationManager *manager)
{
    return NARC_GetFileCount(manager->animeListNARC);
}

const u8 MapPropAnimationManager_GetPropAnimationCount(MapPropAnimationManager *manager, const int mapPropModelID)
{
    u8 i;

    MapPropAnimeListFile animeListFile;
    NARC_ReadWholeMember(manager->animeListNARC, mapPropModelID, &animeListFile);

    // BUG: The generated NARC contains 0xFF instead of 0x00,
    // so this early exit is never taken
    if (!animeListFile.hasAnimations) {
        return 0;
    }

    for (i = 0; i < MAP_PROP_ANIME_LIST_FILE_ARCHIVE_IDS_COUNT; i++) {
        if (animeListFile.animeArchiveIDs[i] == ANIME_ARCHIVE_ID_NONE) {
            break;
        }
    }

    return i;
}

static MapPropOneShotAnimation *MapPropOneShotAnimationManager_AllocateAnimation(MapPropOneShotAnimationManager *oneShotAnimMan, const u8 tag)
{
    u8 i;

    GF_ASSERT(tag != 0);
    u8 itemIndex = MAP_PROP_ONE_SHOT_ANIMATION_MANAGER_MAX_ITEMS;

    for (i = 0; i < MAP_PROP_ONE_SHOT_ANIMATION_MANAGER_MAX_ITEMS; i++) {
        if (itemIndex == MAP_PROP_ONE_SHOT_ANIMATION_MANAGER_MAX_ITEMS && oneShotAnimMan->items[i].tag == 0) {
            itemIndex = i;
        }
    }

    if (itemIndex != MAP_PROP_ONE_SHOT_ANIMATION_MANAGER_MAX_ITEMS) {
        oneShotAnimMan->items[itemIndex].tag = tag;
    } else {
        GF_ASSERT(FALSE);
        return NULL;
    }

    return &oneShotAnimMan->items[itemIndex];
}

static void MapPropOneShotAnimation_Reset(MapPropOneShotAnimation *oneShotAnimation)
{
    oneShotAnimation->tag = 0;
    oneShotAnimation->mapPropModelID = 0;
    oneShotAnimation->currentAnimation = NULL;

    for (u8 i = 0; i < MAP_PROP_ONE_SHOT_ANIMATION_MAX_RENDER_OBJS; i++) {
        oneShotAnimation->mapPropRenderObjs[i] = NULL;
    }
}

static MapPropOneShotAnimation *MapPropOneShotAnimationManager_GetAnimation(MapPropOneShotAnimationManager *oneShotAnimMan, const int tag)
{
    int i;
    MapPropOneShotAnimation *oneShotAnimation = NULL;

    for (i = 0; i < MAP_PROP_ONE_SHOT_ANIMATION_MANAGER_MAX_ITEMS; i++) {
        if (oneShotAnimMan->items[i].tag == tag) {
            oneShotAnimation = &oneShotAnimMan->items[i];
            break;
        }
    }

    return oneShotAnimation;
}

static void MapPropOneShotAnimation_Init(NNSG3dRenderObj *mapPropRenderObj, const int animationCount, MapPropOneShotAnimation *oneShotAnimation)
{
    GF_ASSERT(animationCount <= MAP_PROP_ONE_SHOT_ANIMATION_MAX_ANIMATIONS);

    if (mapPropRenderObj != NULL) {
        oneShotAnimation->mapPropRenderObjs[0] = mapPropRenderObj;
    }

    oneShotAnimation->animations.count = animationCount;
}

static void MapPropOneShotAnimation_SetAnimation(MapPropOneShotAnimation *oneShotAnimation, const int mapPropAnimIndex, MapPropAnimation *animation)
{
    GF_ASSERT(mapPropAnimIndex < oneShotAnimation->animations.count);
    oneShotAnimation->animations.list[mapPropAnimIndex] = animation;
}

static MapPropAnimation *MapPropOneShotAnimation_SwitchAnimation(MapPropOneShotAnimation *oneShotAnimation, const int mapPropAnimIndex)
{
    GF_ASSERT(mapPropAnimIndex < oneShotAnimation->animations.count);

    MapPropAnimation *newAnimation = oneShotAnimation->animations.list[mapPropAnimIndex];
    NNSG3dAnmObj *newAnimationObj = MapPropAnimation_GetAnimationObj(newAnimation);
    NNSG3dAnmObj *currentAnimationObj = MapPropAnimation_GetAnimationObj(oneShotAnimation->currentAnimation);

    for (u8 i = 0; i < MAP_PROP_ONE_SHOT_ANIMATION_MAX_RENDER_OBJS; i++) {
        if (oneShotAnimation->mapPropRenderObjs[i] != NULL) {
            MapPropAnimation_RemoveAnimationObjFromRenderObj(oneShotAnimation->mapPropRenderObjs[i], currentAnimationObj);
            NNS_G3dRenderObjAddAnmObj(oneShotAnimation->mapPropRenderObjs[i], newAnimationObj);
        }
    }

    oneShotAnimation->currentAnimation = newAnimation;
    return newAnimation;
}

static void MapPropOneShotAnimation_LoadPropAnimations(const int mapPropModelID, NNSG3dResMdl *mapPropModel, NNSG3dResTex *mapPropTexture, const int animationCount, const int animationLoopCount, const BOOL animationReversed, MapPropAnimationManager *manager, MapPropOneShotAnimation *oneShotAnimation)
{
    for (int i = 0; i < animationCount; i++) {
        MapPropAnimation *animation = MapPropAnimationManager_LoadPropAnimationForOneShot(mapPropModelID, i, animationLoopCount, 0, animationReversed, TRUE, TRUE, mapPropModel, mapPropTexture, manager);
        GF_ASSERT(animation != NULL);
        MapPropOneShotAnimation_SetAnimation(oneShotAnimation, i, animation);
    }
}

static void MapPropAnimationManager_UnloadOneShotAnimation(MapPropAnimationManager *manager, MapPropOneShotAnimation *oneShotAnimation)
{
    int i;
    NNSG3dAnmObj *animationObj = MapPropAnimation_GetAnimationObj(oneShotAnimation->currentAnimation);

    for (i = 0; i < MAP_PROP_ONE_SHOT_ANIMATION_MAX_RENDER_OBJS; i++) {
        if (oneShotAnimation->mapPropRenderObjs[i] != NULL) {
            MapPropAnimation_RemoveAnimationObjFromRenderObj(oneShotAnimation->mapPropRenderObjs[i], animationObj);
        }
    }

    for (i = 0; i < oneShotAnimation->animations.count; i++) {
        MapPropAnimation *animation = oneShotAnimation->animations.list[i];
        MapPropAnimationManager_UnloadAnimation(animation, manager);

        oneShotAnimation->animations.list[i] = NULL;
    }
}

MapPropOneShotAnimationManager *MapPropOneShotAnimationManager_New(void)
{
    int oneShotAnimationManagerSize = sizeof(MapPropOneShotAnimationManager);
    MapPropOneShotAnimationManager *oneShotAnimMan = Heap_AllocFromHeap(HEAP_ID_FIELD, oneShotAnimationManagerSize);

    MI_CpuClearFast(oneShotAnimMan, oneShotAnimationManagerSize);

    return oneShotAnimMan;
}

void MapPropOneShotAnimationManager_Free(MapPropOneShotAnimationManager **oneShotAnimMan)
{
    if (*oneShotAnimMan == NULL) {
        return;
    }

    Heap_FreeToHeap(*oneShotAnimMan);
    *oneShotAnimMan = NULL;
}

void MapPropOneShotAnimationManager_LoadPropAnimations(MapPropAnimationManager *animMan, MapPropOneShotAnimationManager *const oneShotAnimMan, const int tag, const int mapPropModelID, NNSG3dRenderObj *mapPropRenderObj, NNSG3dResMdl *mapPropModel, NNSG3dResTex *mapPropTexture, const int animationCount, const u8 animationLoopCount, const BOOL animationReversed)
{
    u8 fixedAnimationLoopCount;
    MapPropOneShotAnimation *oneShotAnimation = MapPropOneShotAnimationManager_AllocateAnimation(oneShotAnimMan, tag);

    if (!oneShotAnimation) {
        GF_ASSERT(FALSE);
        return;
    }

    MapPropOneShotAnimation_Init(mapPropRenderObj, animationCount, oneShotAnimation);

    fixedAnimationLoopCount = animationLoopCount;
    GF_ASSERT(fixedAnimationLoopCount != 0);

    if (fixedAnimationLoopCount == 0) {
        fixedAnimationLoopCount = 1;
    }

    MapPropOneShotAnimation_LoadPropAnimations(mapPropModelID, mapPropModel, mapPropTexture, animationCount, fixedAnimationLoopCount, animationReversed, animMan, oneShotAnimation);
    oneShotAnimation->mapPropModelID = mapPropModelID;
}

void MapPropOneShotAnimationManager_SetAnimationRenderObj(MapPropOneShotAnimationManager *const oneShotAnimMan, const int tag, const u8 renderObjIndex, NNSG3dRenderObj *renderObj)
{
    GF_ASSERT(renderObjIndex < MAP_PROP_ONE_SHOT_ANIMATION_MAX_RENDER_OBJS);
    MapPropOneShotAnimation *oneShotAnimation = MapPropOneShotAnimationManager_GetAnimation(oneShotAnimMan, tag);

    GF_ASSERT(oneShotAnimation->mapPropRenderObjs[renderObjIndex] == NULL);
    oneShotAnimation->mapPropRenderObjs[renderObjIndex] = renderObj;
}

void MapPropOneShotAnimationManager_PlayAnimation(MapPropOneShotAnimationManager *const oneShotAnimMan, const int tag, const int mapPropAnimIndex)
{
    GF_ASSERT(tag != 0);

    MapPropOneShotAnimation *oneShotAnimation = MapPropOneShotAnimationManager_GetAnimation(oneShotAnimMan, tag);
    MapPropAnimation *animation = MapPropOneShotAnimation_SwitchAnimation(oneShotAnimation, mapPropAnimIndex);

    MapPropAnimation_SetAnimationPaused(animation, FALSE);
}

void MapPropOneShotAnimationManager_PlayAnimationWithSoundEffect(MapPropOneShotAnimationManager *const oneShotAnimMan, const int tag, const int mapPropAnimIndex, const int soundEffectID)
{
    GF_ASSERT(tag != 0);

    MapPropOneShotAnimation *oneShotAnimation = MapPropOneShotAnimationManager_GetAnimation(oneShotAnimMan, tag);
    MapPropAnimation *animation = MapPropOneShotAnimation_SwitchAnimation(oneShotAnimation, mapPropAnimIndex);

    if (soundEffectID != 0) {
        Sound_PlayEffect(soundEffectID);
    }

    MapPropAnimation_SetAnimationPaused(animation, FALSE);
}

void MapPropOneShotAnimationManager_UnloadAnimation(MapPropAnimationManager *animMan, MapPropOneShotAnimationManager *oneShotAnimMan, const int tag)
{
    GF_ASSERT(tag != 0);
    MapPropOneShotAnimation *oneShotAnimation = MapPropOneShotAnimationManager_GetAnimation(oneShotAnimMan, tag);

    MapPropAnimationManager_UnloadOneShotAnimation(animMan, oneShotAnimation);
    MapPropOneShotAnimation_Reset(oneShotAnimation);
}

MapPropAnimation *MapPropOneShotAnimationManager_GetCurrentAnimation(MapPropOneShotAnimationManager *const oneShotAnimMan, const int tag)
{
    GF_ASSERT(tag != 0);

    MapPropOneShotAnimation *oneShotAnimation = MapPropOneShotAnimationManager_GetAnimation(oneShotAnimMan, tag);
    return oneShotAnimation->currentAnimation;
}

const BOOL MapPropOneShotAnimationManager_IsAnimationLoopFinished(MapPropOneShotAnimationManager *const oneShotAnimMan, const int tag)
{
    MapPropAnimation *animation = MapPropOneShotAnimationManager_GetCurrentAnimation(oneShotAnimMan, tag);
    GF_ASSERT(animation != NULL);

    return MapPropAnimation_IsLoopFinished(animation) != FALSE;
}

const int MapPropOneShotAnimationManager_GetAnimationMapPropModelID(MapPropOneShotAnimationManager *const oneShotAnimMan, const int tag)
{
    MapPropOneShotAnimation *oneShotAnimation = MapPropOneShotAnimationManager_GetAnimation(oneShotAnimMan, tag);
    return oneShotAnimation->mapPropModelID;
}
