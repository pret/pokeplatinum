#include "overlay006/hm_cut_in.h"

#include <nitro/fx/fx.h>
#include <nitro/fx/fx_const.h>
#include <nitro/types.h>

#include "constants/heap.h"

#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_decls/struct_020711EC_decl.h"

#include "field/field_system.h"
#include "overlay005/ov5_021F0EB0.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"
#include "overlay101/struct_ov101_021D86B0.h"

#include "bg_window.h"
#include "field_message.h"
#include "fx_util.h"
#include "gx_layers.h"
#include "heap.h"
#include "map_object.h"
#include "math_util.h"
#include "narc.h"
#include "palette.h"
#include "player_avatar.h"
#include "pokemon.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_020131EC.h"
#include "unk_020711EC.h"

typedef struct HMCutIn {
    int state;
    int isFinished;
    int subState;
    int playerGender;
    BOOL updateSprites;
    int windParticlesAnimState; // 2 = active; 1 = inactive
    BOOL screenFaded;
    BOOL forceDrawPlayerSprite;
    u32 _1; // assigned, but never used
    u16 bg0Priority;
    u16 bg3Priority;
    int _2; // unused
    BOOL updateWindow;
    u32 window;
    u32 planeMaskInside;
    BOOL effectInside;
    u32 planeMaskOutside;
    BOOL effectOutside;
    fx32 windowX1;
    fx32 windowX2;
    fx32 windowY1;
    fx32 windowY2;
    fx32 windowDelta;
    fx32 pokemonSpriteDeltaX;
    Pokemon *pokemon;
    FieldSystem *fieldSystem;
    NNSG2dScreenData *g2dScreenData;
    NNSG2dCharacterData *g2dCharData;
    NNSG2dPaletteData *g2dPaletteData;
    SpriteList *spriteList;
    G2dRenderer g2dRenderer;
    SpriteResourceCollection *charLocation;
    SpriteResourceCollection *paletteLocation;
    SpriteResourceCollection *cellLocation;
    SpriteResourceCollection *animLocation;
    SpriteResource *charSource[4];
    SpriteResource *paletteSource[3];
    SpriteResource *cellSource[4];
    SpriteResource *animSource[2];
    UnkStruct_020711EC *unk_244;
    Sprite *playerSprite;
    Sprite *pokemonSprite;
    UnkStruct_ov101_021D5D90 *unk_250;
    UnkStruct_ov101_021D5D90 *unk_254;
    PokemonSpriteTemplate pokemonSpriteTemplate;
    BOOL resourcesLoaded;
    BOOL resourceSourcesFreed;
    void *pokemonCharSource;
    void *pokemonPaletteSource;
    SysTask *resourceTransferTask;
    SysTask *windowTask;
} HMCutIn;

typedef struct ResourceLocation {
    u32 resourceId;
    u32 memberIdx;
} ResourceLocation;

typedef struct HMCutInContainer {
    HMCutIn *cutIn;
} HMCutInContainer;

typedef struct FlyTaskEnv {
    u8 stage;
    u8 state;
    u8 subState;
    u8 _1;
    int descendCount;
    VecFx32 birdStartPos;
    VecFx32 pathOffset;
    VecFx32 _2;
    VecFx32 birdScale;
    fx32 birdRotation;
    fx32 _3;
    fx32 angleParam;
    fx32 _4;
    fx32 pathParam;
    fx32 pathDelta;
    fx32 scaleDelta;
    fx32 playerOffsetY;
    Sprite *birdSprite;
    HMCutInContainer cutInContainer;
    UnkStruct_ov101_021D5D90 *unk_60;
    SysTask *task;
} FlyTaskEnv;

typedef struct HMCutInWithPlayer1 {
    HMCutIn *cutIn;
    Sprite *playerSprite;
} HMCutInWithPlayer1;

typedef struct PlayerAnimEnv {
    int state;
    BOOL animationPartFinished;
    BOOL _; // set, but never read
    int positionDeltaIdx;
    VecFx32 position;
    HMCutIn *cutIn;
    Sprite *playerSprite;
} PlayerAnimEnv;

typedef struct SpriteResourceWithLocation {
    s16 resourceId;
    s16 memberIdx;
    SpriteResource *spriteResource;
} SpriteResourceWithLocation;

typedef struct FlyResources {
    u8 resource1Count;
    u8 resource2Count;
    u8 resource3Count;
    u8 resource4Count;
    s8 resource1ID;
    s8 resource2ID;
    s8 resource3ID;
    s8 resource4ID;
    SpriteList *spriteList;
    G2dRenderer g2dRenderer;
    SpriteResourceCollection *charLocation;
    SpriteResourceCollection *paletteLocation;
    SpriteResourceCollection *cellLocation;
    SpriteResourceCollection *animLocation;
    SpriteResourceWithLocation *charSourceWrapper; // array
    SpriteResourceWithLocation *paletteSourceWrapper; // array
    SpriteResourceWithLocation *cellSourceWrapper; // array
    SpriteResourceWithLocation *animSourceWrapper; // array
} FlyResources;

typedef struct FlyLandingEnv {
    int state;
    int animationFinished;
    int _1; // unused
    int playerGender;
    BOOL animationInProgress;
    FieldSystem *fieldSystem;
    FlyResources unk_18;
    Sprite *playerSprite;
    UnkStruct_020711EC *unk_1D4;
    UnkStruct_ov101_021D5D90 *unk_1D8;
    SysTask *_2; // unused
} FlyLandingEnv;

typedef struct FlyResourcesWithPlayer {
    UnkStruct_020711EC *unk_00;
    FieldSystem *fieldSystem;
    Sprite *playerSprite;
    FlyResources *resources;
} FlyResourcesWithPlayer;

typedef struct FlyLandingEnvExtended {
    u8 stage;
    u8 state;
    u8 hasEndedIfTwo; // by default 0; then set to 2, which shortcuts another function
    u8 _1; // unused
    int subState;
    VecFx32 position;
    VecFx32 pathOffset;
    VecFx32 _2; // unused
    VecFx32 scale;
    fx32 birdRotation;
    fx32 _3;
    fx32 angleParam;
    fx32 _4;
    fx32 pathParam;
    fx32 pathDelta;
    fx32 scaleDelta;
    fx32 playerOffsetY;
    FlyResourcesWithPlayer resourcesWithPlayer;
    Sprite *birdSprite;
    UnkStruct_ov101_021D5D90 *unk_6C;
    SysTask *task;
} FlyLandingEnvExtended;

typedef struct WindParticleAnimData {
    int spriteListPriority;
    BOOL allowWindParticles;
    HMCutIn *cutIn;
    VecFx32 movementDelta;
} WindParticleAnimData;

typedef struct WindParticleAnimEnv {
    int _;
    int animID;
    Sprite *sprite;
    WindParticleAnimData data;
} WindParticleAnimEnv;

typedef struct WindParticleAnimConfig {
    fx32 initialX;
    fx32 initialY;
    fx32 movementDeltaX;
    int spriteListPriority;
    int animID;
} WindParticleAnimConfig;

typedef struct _Unused {
    int camera;
    int unk_04;
    int unk_08;
    VecFx32 unk_0C;
    VecFx32 unk_18;
    fx32 unk_24;
    fx32 unk_28;
    MapObject *_;
    HMCutIn *cutIn;
} _Unused;

typedef struct HMCutInWithPlayer2 {
    Sprite *playerSprite;
    HMCutIn *cutIn;
} HMCutInWithPlayer2;

// General setup
static HMCutIn *CreateHMCutIn(FieldSystem *fieldSystem);
static void FreeHMCutIn(HMCutIn *cutIn);
static void SysTask_CutIn(SysTask *cutInTask, void *hmCutInPtr);
static void SysTask_CutInFly(SysTask *sysTask, void *cutInRef);

// Initial loading of resources
static void CutIn_InitSpriteResources(HMCutIn *cutIn);
static void CutIn_LoadSpriteResources(HMCutIn *cutIn, NARC *narc);
static void CutIn_BuildPokemonSpriteTemplate(HMCutIn *cutIn, PokemonSpriteTemplate *spriteTemplate);
static SpriteResource *CutIn_GetParticleCharResource(HMCutIn *cutIn, NARC *narc);
static SpriteResource *CutIn_GetPlayerMalePlttResource(HMCutIn *cutIn, NARC *narc);
static void *CutIn_GetPokemonSpriteSource(Pokemon *pokemon, PokemonSpriteTemplate *spriteTemplate, u32 heapID);
static void *CutIn_GetPokemonPaletteSource(PokemonSpriteTemplate *spriteTemplate, u32 heapID);
static Sprite *CutIn_InitPlayerSprite(HMCutIn *cutIn, const VecFx32 *position);
static void CutIn_LoadBgPalette(NARC *narc, u32 memberIndex, NNSG2dPaletteData **paletteData);
static void CutIn_LoadBgPatternChar(BgConfig *bgConfig, NARC *narc, u32 memberIndex, NNSG2dCharacterData **charData);
static void CutIn_LoadBgPatternPalette(BgConfig *bgConfig, NARC *narc, u32 memberIndex, NNSG2dScreenData **screenData);
static void CutIn_CreateResourceTransferTask(HMCutIn *cutIn);
static Sprite *CutIn_InitPokemonSprite(HMCutIn *cutIn, const VecFx32 *position);
static void CutIn_CreateBirdResourceTransferTask(HMCutIn *cutIn);
static void CutIn_LoadBirdSpriteResources(HMCutIn *cutIn);
static void CutIn_DeleteResourceTransferTask(HMCutIn *cutIn);
static void SysTask_CutIn_TransferResources(SysTask *dummyTask, void *hmCutInPtr);
static void CutIn_LoadPokemonChar(HMCutIn *cutIn, void *pokemonSpriteSource);
static void CutIn_LoadPokemonSpritePalette(HMCutIn *cutIn, void *paletteSource);
static void SysTask_CutIn_FreeResources(SysTask *task, void *hmCutInPtr);
static void SysTask_CutIn_TransferBirdResource(SysTask *task, void *hmCutInPtr);
static void SysTask_CutIn_FinalizeBirdSpriteTransfer(SysTask *task, void *hmCutInPtr);

// Cleanup
static NARC *CutIn_GetCutInNarc(void);
static void CutIn_DeleteSprites(HMCutIn *cutIn);
static void CutIn_UnloadPokemonSpriteResources(HMCutIn *cutIn);
static void CutIn_ClearTileMapBG3(BgConfig *bgConfig);
static void CutIn_DeleteSpriteResources(HMCutIn *cutIn);
static void CutIn_UpdateSpriteList(HMCutIn *cutIn);

// Cut-In window
static void CutIn_InitWindow(HMCutIn *cutIn);
static void CutIn_SetWindowMask(HMCutIn *cutIn);
static void CutIn_ClearWindowMask(HMCutIn *cutIn);
static void CutIn_InitPlaneMasks(HMCutIn *cutIn);
static void CutIn_InitPlaneMasksForFly(HMCutIn *cutIn);
static void CutIn_SetWindowSize(HMCutIn *cutIn, fx32 x1, fx32 y1, fx32 x2, fx32 y2);
static void CutIn_CreateWindowTask(HMCutIn *cutIn);
static void SysTask_CutIn_ShowWindow(SysTask *task, void *hmCutInPtr);
static void CutIn_DeleteWindowTask(HMCutIn *cutIn);

// Wind particles
static void CreateWindParticleAnims(HMCutIn *cutIn, int allowWindParticles);
static Sprite *WindParticle_CreateSprite(HMCutIn *cutIn, const VecFx32 *position, int listPriority, int animID);
static void WindParticle_RunAnimFuncs(HMCutIn *cutIn, const VecFx32 *initialPos, const VecFx32 *movementDelta, int spriteListPriority, int param4, BOOL allowWindParticles);

// Player sprite in cut-in
static void CutIn_CreateDrawPlayerSpriteTasks(HMCutIn *cutIn);
static void CutIn_StartPlayerAnim(Sprite *sprite);

// Fade-in/-out
static void FadeOut(void);
static void FadeIn(void);

// Fly
static void Fly_CreateTasks(HMCutIn *cutIn);
static Sprite *Fly_CreateBirdSprite(HMCutIn *cutIn, const VecFx32 *position, int priority, int dummy);
static void Fly_InitBirdSpritePos(HMCutIn *cutIn);
static void Fly_PrepareBirdForDescent(HMCutIn *cutIn);
static int Fly_GetTaskEnvSubState(HMCutIn *cutIn);
static void FlyPickUpPlayer_SetUpPlayerAnimEnv(UnkStruct_ov101_021D5D90 *param0);
static void FlyPickUpPlayer_TransferPlayerAnimEnv(UnkStruct_ov101_021D5D90 *param0);
static void FlyAway_SetTasksDone(HMCutIn *cutIn);
static void SysTask_FlyLanding(SysTask *task, void *taskEnv);
static void FlyLanding_SetUpPlayerAnimEnv(UnkStruct_ov101_021D5D90 *param0);

// Utils for Fly
static UnkStruct_ov101_021D5D90 *PushPlayerUp(UnkStruct_020711EC *param0, Sprite *sprite);
static void HidePlayerMapObj(FieldSystem *fieldSystem, BOOL hidden);
static void HideAndStopPlayerMapObj(HMCutIn *cutIn, BOOL hidden);

// TODO
static void CutIn_SetTaskUnk_254Done(HMCutIn *cutIn);

// Utilities
static Sprite *CreateSprite(HMCutIn *cutIn, const VecFx32 *position, u32 charResourceID, u32 plttResourceID, u32 cellResourceID, u32 animResourceID, int headerPriority, int listPriority);
static void *FlyLanding_AllocFromHeapAtEnd(u32 heapID, int size);

typedef int (*CutInTaskFunc)(HMCutIn *);
static const CutInTaskFunc sCutInTaskFuncs[];
static const CutInTaskFunc sCutInTaskFuncsFly[];
static const UnkStruct_ov101_021D86B0 sWindParticleAnimFuncs;
static const ResourceLocation sCutInWindParticleChar[1];
static const ResourceLocation sCutInWindParticlePalette[1];
static const ResourceLocation sCutInWindParticleCell[1];
static const ResourceLocation sCutInWindParticleAnim[1];

typedef int (*FlyAwayTaskFunc)(FlyTaskEnv *);
static const UnkStruct_ov101_021D86B0 sPushPlayerFuncs;
static const UnkStruct_ov101_021D86B0 sFlyAwayFuncs;
static const FlyAwayTaskFunc *const sFlyAwayAnimFuncsComplex[];
static const FlyAwayTaskFunc sFlyTaskFuncsUnused[];
static const FlyAwayTaskFunc sFlyAwayAscendFromPokeballFuncs[];
static const FlyAwayTaskFunc sFlyPickUpPlayerFuncs[];
typedef int (*FlyLandingTaskFunc)(FlyLandingEnv *);
static const FlyLandingTaskFunc sFlyLandingFuncs[];
int (*const *const FlyLandingAnimFuncCollections[])(FlyLandingEnvExtended *);
static const UnkStruct_ov101_021D86B0 sFlyLandingAnimWrapperFuncs;

static void FlyLanding_InitResourceData(FlyResources *flyResources, int maxSpriteListElements, int resource1Count, int resource2Count, int resource3Count, int resource4Count, int resource1ID, int resource2ID, int resource3ID, int resource4ID)
{
    int i;

    flyResources->resource1Count = resource1Count;
    flyResources->resource2Count = resource2Count;
    flyResources->resource3Count = resource3Count;
    flyResources->resource4Count = resource4Count;
    flyResources->resource1ID = resource1ID;
    flyResources->resource2ID = resource2ID;
    flyResources->resource3ID = resource3ID;
    flyResources->resource4ID = resource4ID;
    flyResources->spriteList = SpriteList_InitRendering(maxSpriteListElements, &flyResources->g2dRenderer, HEAP_ID_FIELD);

    SetSubScreenViewRect(&flyResources->g2dRenderer, 0, FX32_CONST(512));

    flyResources->charLocation = SpriteResourceCollection_New(resource1Count, SPRITE_RESOURCE_CHAR, HEAP_ID_FIELD);
    flyResources->paletteLocation = SpriteResourceCollection_New(resource2Count, SPRITE_RESOURCE_PLTT, HEAP_ID_FIELD);
    flyResources->cellLocation = SpriteResourceCollection_New(resource3Count, SPRITE_RESOURCE_CELL, HEAP_ID_FIELD);
    flyResources->animLocation = SpriteResourceCollection_New(resource4Count, SPRITE_RESOURCE_ANIM, HEAP_ID_FIELD);
    flyResources->charSourceWrapper = FlyLanding_AllocFromHeapAtEnd(HEAP_ID_FIELD, (sizeof(SpriteResourceWithLocation)) * resource1Count);
    flyResources->paletteSourceWrapper = FlyLanding_AllocFromHeapAtEnd(HEAP_ID_FIELD, (sizeof(SpriteResourceWithLocation)) * resource2Count);
    flyResources->cellSourceWrapper = FlyLanding_AllocFromHeapAtEnd(HEAP_ID_FIELD, (sizeof(SpriteResourceWithLocation)) * resource3Count);
    flyResources->animSourceWrapper = FlyLanding_AllocFromHeapAtEnd(HEAP_ID_FIELD, (sizeof(SpriteResourceWithLocation)) * resource4Count);

    for (i = 0; i < resource1Count; flyResources->charSourceWrapper[i].resourceId = resource1ID, i++) {
        (void)0;
    }

    for (i = 0; i < resource2Count; flyResources->paletteSourceWrapper[i].resourceId = resource2ID, i++) {
        (void)0;
    }

    for (i = 0; i < resource3Count; flyResources->cellSourceWrapper[i].resourceId = resource3ID, i++) {
        (void)0;
    }

    for (i = 0; i < resource4Count; flyResources->animSourceWrapper[i].resourceId = resource4ID, i++) {
        (void)0;
    }
}

static void FlyLanding_ReleaseResources(FlyResources *flyResources)
{
    int i;

    for (i = 0; i < flyResources->resource1Count; i++) {
        if (flyResources->charSourceWrapper[i].resourceId != flyResources->resource1ID) {
            SpriteTransfer_ResetCharTransfer(flyResources->charSourceWrapper[i].spriteResource);
        }
    }

    for (i = 0; i < flyResources->resource2Count; i++) {
        if (flyResources->paletteSourceWrapper[i].resourceId != flyResources->resource2ID) {
            SpriteTransfer_ResetPlttTransfer(flyResources->paletteSourceWrapper[i].spriteResource);
        }
    }

    for (i = 0; i < flyResources->resource3Count; i++) {
        if (flyResources->cellSourceWrapper[i].resourceId != flyResources->resource3ID) {
            SpriteResource_ReleaseData(flyResources->cellSourceWrapper[i].spriteResource);
        }
    }

    for (i = 0; i < flyResources->resource4Count; i++) {
        if (flyResources->animSourceWrapper[i].resourceId != flyResources->resource4ID) {
            SpriteResource_ReleaseData(flyResources->animSourceWrapper[i].spriteResource);
        }
    }

    SpriteResourceCollection_Delete(flyResources->charLocation);
    SpriteResourceCollection_Delete(flyResources->paletteLocation);
    SpriteResourceCollection_Delete(flyResources->cellLocation);
    SpriteResourceCollection_Delete(flyResources->animLocation);
    Heap_Free(flyResources->charSourceWrapper);
    Heap_Free(flyResources->paletteSourceWrapper);
    Heap_Free(flyResources->cellSourceWrapper);
    Heap_Free(flyResources->animSourceWrapper);
    SpriteList_DeleteAll(flyResources->spriteList);
    SpriteList_Delete(flyResources->spriteList);
}

static void FlyLanding_LoadCharResources(FlyResources *flyResources, NARC *narc, int memberIdx, int resourceId)
{
    int i;

    for (i = 0; i < flyResources->resource1Count; i++) {
        if (flyResources->charSourceWrapper[i].resourceId == flyResources->resource1ID) {
            flyResources->charSourceWrapper[i].resourceId = resourceId;
            flyResources->charSourceWrapper[i].memberIdx = 0;
            flyResources->charSourceWrapper[i].spriteResource = SpriteResourceCollection_AddTilesFrom(flyResources->charLocation, narc, memberIdx, FALSE, resourceId, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_FIELD);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void FlyLanding_RequestCharResources(FlyResources *flyResources, int resourceId)
{
    int i;

    for (i = 0; i < flyResources->resource1Count; i++) {
        if (flyResources->charSourceWrapper[i].resourceId == resourceId) {
            SpriteTransfer_RequestCharAtEnd(flyResources->charSourceWrapper[i].spriteResource);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void FlyLanding_ReleaseCharResources(FlyResources *flyResources, int resourceId)
{
    int i;

    for (i = 0; i < flyResources->resource1Count; i++) {
        if (flyResources->charSourceWrapper[i].resourceId == resourceId) {
            SpriteResource_ReleaseData(flyResources->charSourceWrapper[i].spriteResource);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void FlyLanding_LoadPaletteResources(FlyResources *flyResources, NARC *narc, int memberIdx, int resourceId)
{
    int i;

    for (i = 0; i < flyResources->resource1Count; i++) {
        if (flyResources->paletteSourceWrapper[i].resourceId == flyResources->resource2ID) {
            flyResources->paletteSourceWrapper[i].resourceId = resourceId;
            flyResources->paletteSourceWrapper[i].memberIdx = 0;
            flyResources->paletteSourceWrapper[i].spriteResource = SpriteResourceCollection_AddPaletteFrom(flyResources->paletteLocation, narc, memberIdx, FALSE, resourceId, NNS_G2D_VRAM_TYPE_2DMAIN, 1, 4);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void FlyLanding_FreeSpaceForPaletteResources(FlyResources *flyResources, int resourceId)
{
    int i;

    for (i = 0; i < flyResources->resource2Count; i++) {
        if (flyResources->paletteSourceWrapper[i].resourceId == resourceId) {
            SpriteTransfer_RequestPlttFreeSpace(flyResources->paletteSourceWrapper[i].spriteResource);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void FlyLanding_ReleasePaletteResources(FlyResources *flyResources, int resourceId)
{
    int i;

    for (i = 0; i < flyResources->resource2Count; i++) {
        if (flyResources->paletteSourceWrapper[i].resourceId == resourceId) {
            SpriteResource_ReleaseData(flyResources->paletteSourceWrapper[i].spriteResource);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void FlyLanding_LoadCellResources(FlyResources *flyResources, NARC *narc, int memberIdx, int resourceId)
{
    int i;

    for (i = 0; i < flyResources->resource1Count; i++) {
        if (flyResources->cellSourceWrapper[i].resourceId == flyResources->resource3ID) {
            flyResources->cellSourceWrapper[i].resourceId = resourceId;
            flyResources->cellSourceWrapper[i].memberIdx = 0;
            flyResources->cellSourceWrapper[i].spriteResource = SpriteResourceCollection_AddFrom(flyResources->cellLocation, narc, memberIdx, FALSE, resourceId, 2, 4);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void FlyLanding_LoadAnimResources(FlyResources *flyResources, NARC *narc, int memberIdx, int resourceId)
{
    int i;

    for (i = 0; i < flyResources->resource1Count; i++) {
        if (flyResources->animSourceWrapper[i].resourceId == flyResources->resource4ID) {
            flyResources->animSourceWrapper[i].resourceId = resourceId;
            flyResources->animSourceWrapper[i].memberIdx = 0;
            flyResources->animSourceWrapper[i].spriteResource = SpriteResourceCollection_AddFrom(flyResources->animLocation, narc, memberIdx, FALSE, resourceId, 3, 4);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static Sprite *FlyLanding_CreateSprite(FlyResources *flyResources, const VecFx32 *position, u32 charResourceID, u32 paletteResourceID, u32 cellResourceID, u32 animResourceID, int headerPriority, int listPriority)
{
    SpriteResourcesHeader resourceHeader;
    SpriteListTemplate spriteListTemplate;
    Sprite *sprite;

    if (animResourceID == flyResources->resource4ID) {
        animResourceID = 0xffffffff;
    }

    SpriteResourcesHeader_Init(
        &resourceHeader,
        charResourceID,
        paletteResourceID,
        cellResourceID,
        animResourceID,
        0xffffffff,
        0xffffffff,
        FALSE,
        headerPriority,
        flyResources->charLocation,
        flyResources->paletteLocation,
        flyResources->cellLocation,
        flyResources->animLocation,
        NULL,
        NULL);

    spriteListTemplate.list = flyResources->spriteList;
    spriteListTemplate.resourceData = &resourceHeader;
    spriteListTemplate.position = *position;
    spriteListTemplate.priority = listPriority;
    spriteListTemplate.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    spriteListTemplate.heapID = HEAP_ID_FIELD;

    sprite = SpriteList_Add(&spriteListTemplate);
    GF_ASSERT(sprite != NULL);

    return sprite;
}

static void FlyLanding_SetVectorToSpritePosition(Sprite *sprite, VecFx32 *vectorToSet)
{
    const VecFx32 *spritePosition = Sprite_GetPosition(sprite);
    *vectorToSet = *spritePosition;
}

static Sprite *FlyLanding_InitBirdSprite(FlyResources *param0)
{
    Sprite *sprite;
    VecFx32 coordinateVector = { 0, 0, 0 };
    VecFx32 translationVector = { 0, 0, 0 };
    VecFx32 scalingVector = { 0x1000, 0x1000, 0 };

    sprite = FlyLanding_CreateSprite(param0, &coordinateVector, 0, 0, 0, 2, 0, 132);

    Sprite_SetAffineOverwriteMode(sprite, AFFINE_OVERWRITE_MODE_DOUBLE);
    Sprite_SetAffineTranslation(sprite, &translationVector);
    Sprite_SetAffineScale(sprite, &scalingVector);
    Sprite_SetAffineZRotation(sprite, CalcAngleRotationIdx_Wraparound(0));

    return sprite;
}

static Sprite *FlyLanding_InitPlayerSprite(FlyResources *flyResources, int playerGender)
{
    VecFx32 initPosition = { 0, 0, 0 };
    Sprite *playerSprite;
    u32 paletteResourceId = 0;

    if (playerGender == 1) {
        paletteResourceId = 1;
    }

    playerSprite = FlyLanding_CreateSprite(flyResources, &initPosition, 2, paletteResourceId, 2, 1, 0, 131);

    Sprite_SetDrawFlag(playerSprite, FALSE);
    Sprite_SetAnim(playerSprite, 6);

    return playerSprite;
}

static UnkStruct_ov101_021D5D90 *CreateFlyLandingAnimTasks(FieldSystem *fieldSystem, UnkStruct_020711EC *param1, FlyResources *resources, Sprite *playerSprite)
{
    UnkStruct_ov101_021D5D90 *v0;
    VecFx32 v1 = { 0, 0, 0 };
    FlyResourcesWithPlayer v2;

    v2.fieldSystem = fieldSystem;
    v2.unk_00 = param1;
    v2.resources = resources;
    v2.playerSprite = playerSprite;

    v0 = sub_02071330(param1, &sFlyLandingAnimWrapperFuncs, &v1, 0, &v2, 130);

    return v0;
}

/**
 * Returns 2 if the fly landing animation has ended, 0 otherwise
 */
static int FlyLanding_HasAnimationEnded(UnkStruct_ov101_021D5D90 *param0)
{
    FlyLandingEnvExtended *v0 = sub_02071598(param0);
    return v0->hasEndedIfTwo;
}

static int FlyLandingAnimWrapper_InitBirdSprite(UnkStruct_ov101_021D5D90 *param0, void *flyLandingEnvExtended)
{
    FlyLandingEnvExtended *env = flyLandingEnvExtended;
    const FlyResourcesWithPlayer *resourcesWithPlayer = sub_020715BC(param0);

    env->resourcesWithPlayer = *resourcesWithPlayer;
    env->birdSprite = FlyLanding_InitBirdSprite(env->resourcesWithPlayer.resources);

    return 1;
}

static void FlyLanding_SetTasksDone(UnkStruct_ov101_021D5D90 *param0)
{
    FlyLandingEnvExtended *v0 = sub_02071598(param0);

    if (v0->unk_6C) {
        sub_0207136C(v0->unk_6C);
    }

    if (v0->task) {
        ov5_021F0EFC(v0->task);
    }

    sub_0207136C(param0);
}

static void FlyLandingAnimWrapper_DeleteBirdSprite(UnkStruct_ov101_021D5D90 *param0, void *flyLandingEnvExtended)
{
    FlyLandingEnvExtended *env = flyLandingEnvExtended;
    Sprite_Delete(env->birdSprite);
}

static void FlyLandingAnimWrapper_RunFlyLandingAnim(UnkStruct_ov101_021D5D90 *param0, void *flyLandingEnvExtended)
{
    FlyLandingEnvExtended *env = flyLandingEnvExtended;
    int (*const *funcs)(FlyLandingEnvExtended *);

    funcs = FlyLandingAnimFuncCollections[env->stage];

    while (funcs[env->state](env) == 1) {
        (void)0;
    }
}

static const UnkStruct_ov101_021D86B0 sFlyLandingAnimWrapperFuncs = {
    (sizeof(FlyLandingEnvExtended)),
    FlyLandingAnimWrapper_InitBirdSprite,
    FlyLandingAnimWrapper_DeleteBirdSprite,
    FlyLandingAnimWrapper_RunFlyLandingAnim,
    UnkStruct_ov101_021D5D90_DoNothing2
};

static int HideBirdSprite(FlyLandingEnvExtended *env)
{
    env->hasEndedIfTwo = 0;
    Sprite_SetDrawFlag(env->birdSprite, FALSE);
    return 0;
}

static int (*const HideBirdSpriteFuncCollection[])(FlyLandingEnvExtended *) = {
    HideBirdSprite,
};

static void FlyLanding_InitEnv(UnkStruct_ov101_021D5D90 *param0)
{
    VecFx32 initialPosition = { FX32_ONE * 128, FX32_ONE * 111, 0 };
    VecFx32 scale = { 0x2000, 0x2000, 0 };
    FlyLandingEnvExtended *env = sub_02071598(param0);

    env->stage = 1;
    env->hasEndedIfTwo = 0;
    env->state = 0;
    env->subState = 0;
    env->position = initialPosition;
    env->pathOffset.x = 0;
    env->pathOffset.y = 0;
    env->pathOffset.z = 0;
    env->birdRotation = (FX32_ONE * 350);
    env->scale = scale;
    env->scaleDelta = 0x400;
    env->angleParam = (FX32_ONE * 45);
    env->pathParam = (FX32_ONE * (128 + 64));
    env->pathDelta = (FX32_ONE * 32);
    env->pathOffset.x = CalcCosineDegrees_Wraparound(45) * ((env->pathParam) / FX32_ONE);
    env->pathOffset.y = CalcSineDegrees_Wraparound((env->angleParam) / FX32_ONE) * ((env->pathParam) / FX32_ONE);

    initialPosition.x = env->position.x + env->pathOffset.x;
    initialPosition.y = env->position.y + env->pathOffset.y;

    Sprite_SetPosition(env->birdSprite, &initialPosition);
    Sprite_SetAffineScale(env->birdSprite, &scale);
    Sprite_SetAffineZRotation(env->birdSprite, CalcAngleRotationIdx_Wraparound((env->birdRotation) / FX32_ONE));
    Sprite_SetPriority(env->birdSprite, 132);
    Sprite_SetDrawFlag(env->birdSprite, TRUE);

    env->unk_6C = PushPlayerUp(env->resourcesWithPlayer.unk_00, env->resourcesWithPlayer.playerSprite);
    env->task = ov5_021F0EB0(env->resourcesWithPlayer.fieldSystem, HEAP_ID_FIELD);

    ov5_021F0F10(env->task, 1, -(FX32_ONE * 120), 12);

    Sprite *playerSprite;
    VecFx32 playerTranslation = { 0, 0, 0 };
    VecFx32 playerScale = { 0x2000, 0x2000, 0 };

    playerSprite = env->resourcesWithPlayer.playerSprite;

    Sprite_SetAffineOverwriteMode(playerSprite, 2);
    Sprite_SetAffineTranslation(playerSprite, &playerTranslation);
    Sprite_SetAffineScale(playerSprite, &playerScale);
    Sprite_SetAffineZRotation(playerSprite, CalcAngleRotationIdx_Wraparound(0));
    Sprite_SetAnim(playerSprite, 2);

    FadeIn();
}

static int FlyLanding_SetUpSprites(FlyLandingEnvExtended *env)
{
    VecFx32 newPos;
    Sprite *birdSprite = env->birdSprite;
    Sprite *playerSprite = env->resourcesWithPlayer.playerSprite;

    env->pathParam -= env->pathDelta;

    if (env->pathParam < 0) {
        env->pathParam = 0;
    }

    if (env->pathDelta > 0x800) {
        env->pathDelta -= 0x1c00;
    }

    if (env->pathDelta < 0x1000) {
        env->pathDelta = 0x1000;
    }

    env->pathOffset.x = CalcCosineDegrees_Wraparound(45) * ((env->pathParam) / FX32_ONE);
    env->pathOffset.y = CalcSineDegrees_Wraparound((env->angleParam) / FX32_ONE) * ((env->pathParam) / FX32_ONE);

    if (((env->angleParam) / FX32_ONE) < 90) {
        env->angleParam += 0x4000;
    }

    env->scale.x -= env->scaleDelta;

    if (env->scale.x < 0x1000) {
        env->scale.x = 0x1000;
    }

    env->scale.y -= env->scaleDelta;

    if (env->scale.y < 0x1000) {
        env->scale.y = 0x1000;
    }

    Sprite_SetAffineScale(birdSprite, &env->scale);
    Sprite_SetAffineScale(playerSprite, &env->scale);

    newPos.x = env->position.x + env->pathOffset.x;
    newPos.y = env->position.y + env->pathOffset.y;

    Sprite_SetPosition(birdSprite, &newPos);
    newPos.y -= (FX32_ONE * 18);
    Sprite_SetPosition(playerSprite, &newPos);

    if (env->pathParam == 0) {
        env->subState = 0;
        env->state++;
    } else {
        env->subState++;
    }

    return 0;
}

static int FlyLanding_SetUpEnv(FlyLandingEnvExtended *env)
{
    FlyLanding_SetUpPlayerAnimEnv(env->unk_6C);
    ov5_021F0F10(env->task, 2, 0, 12);

    env->scaleDelta = 0x400;
    env->angleParam = FX32_ONE * 128;
    env->pathParam = 0;
    env->pathDelta = 0x1800;
    env->state++;

    return 1;
}

static int FlyLanding_FlyUpLeft(FlyLandingEnvExtended *env)
{
    VecFx32 newPos;
    Sprite *sprite = env->birdSprite;

    env->pathParam += env->pathDelta;
    env->pathDelta += 0x1000;

    if (env->pathDelta > (FX32_ONE * 16)) {
        env->pathDelta = (FX32_ONE * 16);
    }

    env->pathOffset.x = CalcCosineDegrees_Wraparound((env->angleParam) / FX32_ONE) * ((env->pathParam) / FX32_ONE);
    env->pathOffset.y = CalcSineDegrees_Wraparound(128) * ((env->pathParam) / FX32_ONE);

    if (env->angleParam < (FX32_ONE * 160)) {
        env->angleParam += 0x1000;
    }

    env->birdRotation += 0x2000;
    Sprite_SetAffineZRotation(sprite, CalcAngleRotationIdx_Wraparound((env->birdRotation) / FX32_ONE));
    env->scale.x += env->scaleDelta;

    if (env->scale.x > 0x1000) {
        env->scale.x = 0x1000;
    }

    env->scale.y += env->scaleDelta;

    if (env->scale.y > 0x1000) {
        env->scale.y = 0x1000;
    }

    Sprite_SetAffineScale(sprite, &env->scale);

    newPos.x = env->position.x + env->pathOffset.x;
    newPos.y = env->position.y - env->pathOffset.y;

    Sprite_SetPosition(sprite, &newPos);

    if (((newPos.y) / FX32_ONE) <= -16) {
        env->state++;
    }

    return 0;
}

static int FlyLandingAnim_HideBird(FlyLandingEnvExtended *env)
{
    Sprite_SetDrawFlag(env->birdSprite, FALSE);
    Sprite_SetAnim(env->resourcesWithPlayer.playerSprite, 1);

    env->subState = 0;
    env->state++;

    return 1;
}

static int FlyLandingAnim_PlayerHoldUpPokeballAndSetUpBirdSprite(FlyLandingEnvExtended *env)
{
    env->subState++;

    if (env->subState < 20) {
        return 0;
    }

    VecFx32 birdPos = { FX32_ONE * (128 + 8), FX32_ONE * (111 - 32), 0 };
    VecFx32 birdScale = { 0x1000, 0x1000, 0 };

    env->subState = 0;
    env->position = birdPos;
    env->pathOffset.x = 0;
    env->pathOffset.y = 0;
    env->pathOffset.z = 0;
    env->birdRotation = (FX32_ONE * 0);
    env->scale = birdScale;
    env->scaleDelta = 0x200;
    env->angleParam = (FX32_ONE * 315);
    env->pathParam = (FX32_ONE * 128);
    env->pathDelta = 0x2000;

    Sprite_SetPosition(env->birdSprite, &birdPos);
    Sprite_SetAffineScale(env->birdSprite, &birdScale);
    Sprite_SetAffineZRotation(env->birdSprite, CalcAngleRotationIdx_Wraparound(env->birdRotation / FX32_ONE));
    Sprite_SetDrawFlag(env->birdSprite, TRUE);
    Sprite_SetAnim(env->resourcesWithPlayer.playerSprite, 6);
    Sprite_SetAnimateFlag(env->resourcesWithPlayer.playerSprite, TRUE);

    env->state++;
    return 1;
}

static int FlyLandingAnim_FlyIntoPokeball(FlyLandingEnvExtended *env)
{
    VecFx32 newPos;
    Sprite *sprite = env->birdSprite;

    env->pathParam -= env->pathDelta;

    if (env->pathDelta < FX32_ONE * 16) {
        env->pathDelta += 0x2000;
    }

    if (env->pathParam < 0) {
        env->pathParam = 0;
    }

    env->pathOffset.x = CalcCosineDegrees_Wraparound(315) * (env->pathParam / FX32_ONE);
    env->pathOffset.y = CalcSineDegrees_Wraparound(env->angleParam / FX32_ONE) * (env->pathParam / FX32_ONE);

    if (((env->angleParam) / FX32_ONE) < 180) {
        env->angleParam -= 0x4000;
    }

    env->scale.x -= env->scaleDelta;

    if (env->scale.x < 0x400) {
        env->scale.x = 0x400;
    }

    env->scale.y -= env->scaleDelta;

    if (env->scale.y < 0x400) {
        env->scale.y = 0x400;
    }

    Sprite_SetAffineScale(sprite, &env->scale);
    env->birdRotation += 0x6000;

    if (env->birdRotation / FX32_ONE > 60) {
        env->birdRotation = FX32_ONE * 60;
    }

    Sprite_SetAffineZRotation(sprite, CalcAngleRotationIdx_Wraparound(env->birdRotation / FX32_ONE));

    newPos.x = env->position.x + env->pathOffset.x;
    newPos.y = env->position.y + env->pathOffset.y;

    Sprite_SetPosition(sprite, &newPos);

    if (env->pathParam <= 0) {
        Sprite_SetDrawFlag(sprite, FALSE);
        env->state++;
    }

    return 0;
}

static int FlyLandingAnim_HidePlayerMapObjAndSprite(FlyLandingEnvExtended *env)
{
    env->subState++;

    if (env->subState == 8) {
        Sprite_SetAnim(env->resourcesWithPlayer.playerSprite, 1);
        HidePlayerMapObj(env->resourcesWithPlayer.fieldSystem, FALSE); // show player on map again
    }

    if (env->subState == 10) {
        Sprite_SetDrawFlag(env->resourcesWithPlayer.playerSprite, FALSE);
    }

    if (env->subState > 15 && ov5_021F0EF0(env->task) == TRUE) {
        env->subState = 0;
        env->state++;
        env->hasEndedIfTwo = 2;
    }

    return 0;
}

static int FlyLandingAnim_DoNothing(FlyLandingEnvExtended *env)
{
    return 0;
}

static int (*const FlyLandingAnimFuncCollection[])(FlyLandingEnvExtended *) = {
    FlyLanding_SetUpSprites,
    FlyLanding_SetUpEnv,
    FlyLanding_FlyUpLeft,
    FlyLandingAnim_HideBird,
    FlyLandingAnim_PlayerHoldUpPokeballAndSetUpBirdSprite,
    FlyLandingAnim_FlyIntoPokeball,
    FlyLandingAnim_HidePlayerMapObjAndSprite,
    FlyLandingAnim_DoNothing
};

static int (*const *const FlyLandingAnimFuncCollections[])(FlyLandingEnvExtended *) = {
    HideBirdSpriteFuncCollection,
    FlyLandingAnimFuncCollection
};

static NARC *FlyLanding_GetCutInNarc(void)
{
    return NARC_ctor(NARC_INDEX_DATA__FIELD_CUTIN, HEAP_ID_FIELD);
}

static void FadeIn(void)
{
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_WHITE, 6, 1, HEAP_ID_FIELD);
}

static void FadeOut(void)
{
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_WHITE, 6, 1, HEAP_ID_FIELD);
}

static void HidePlayerMapObj(FieldSystem *fieldSystem, BOOL hidden)
{
    MapObject *playerMapObject = Player_MapObject(fieldSystem->playerAvatar);
    MapObject_SetHidden(playerMapObject, hidden);
}

SysTask *SysTask_HMCutIn_New(FieldSystem *fieldSystem, BOOL isNotFly, Pokemon *shownPokemon, int playerGender)
{
    SysTask *task;
    HMCutIn *cutIn = CreateHMCutIn(fieldSystem);

    cutIn->pokemon = shownPokemon;
    cutIn->playerGender = playerGender;
    cutIn->_1 = isNotFly;

    if (isNotFly == FALSE) {
        task = SysTask_Start(SysTask_CutIn, cutIn, 133);
    } else {
        task = SysTask_Start(SysTask_CutInFly, cutIn, 133);
    }

    return task;
}

int CheckHMCutInFinished(SysTask *cutInTask)
{
    HMCutIn *cutIn = SysTask_GetParam(cutInTask);
    return cutIn->isFinished;
}

void SysTask_HMCutIn_SetTaskDone(SysTask *cutInTask)
{
    HMCutIn *cutIn = SysTask_GetParam(cutInTask);

    FreeHMCutIn(cutIn);
    SysTask_Done(cutInTask);
}

static HMCutIn *CreateHMCutIn(FieldSystem *fieldSystem)
{
    HMCutIn *cutIn = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELD, sizeof(HMCutIn));

    memset(cutIn, 0, sizeof(HMCutIn));
    cutIn->fieldSystem = fieldSystem;

    return cutIn;
}

static void FreeHMCutIn(HMCutIn *cutIn)
{
    Heap_Free(cutIn);
}

static void SysTask_CutIn(SysTask *cutInTask, void *hmCutInPtr)
{
    int ret;
    HMCutIn *cutIn = hmCutInPtr;

    do {
        ret = sCutInTaskFuncs[cutIn->state](cutIn);
    } while (ret == TRUE);

    if (cutIn->updateSprites == TRUE) {
        if (cutIn->unk_244 != NULL) {
            sub_020713D0(cutIn->unk_244);
        }

        CutIn_UpdateSpriteList(cutIn);
    }
}

static BOOL CutIn_Init(HMCutIn *cutIn)
{
    CutIn_InitSpriteResources(cutIn);
    CutIn_CreateResourceTransferTask(cutIn);
    cutIn->state++;
    return FALSE;
}

static BOOL HMCutIn_InitSprites(HMCutIn *cutIn)
{
    if (cutIn->resourceSourcesFreed == FALSE) {
        return FALSE;
    }

    VecFx32 playerSpritePosition = { FX32_ONE * 128, FX32_ONE * 96, 0 };
    VecFx32 pokemonSpritePosition = { FX32_ONE * (256 + 40), FX32_ONE * 96, 0 };

    cutIn->playerSprite = CutIn_InitPlayerSprite(cutIn, &playerSpritePosition);
    cutIn->pokemonSprite = CutIn_InitPokemonSprite(cutIn, &pokemonSpritePosition);

    CreateWindParticleAnims(cutIn, 1);
    CutIn_DeleteResourceTransferTask(cutIn);

    cutIn->updateSprites = TRUE;
    cutIn->state++;

    return TRUE;
}

static BOOL HMCutIn_InitWindowAndPlayerSprite(HMCutIn *cutIn)
{
    CutIn_CreateDrawPlayerSpriteTasks(cutIn);

    cutIn->updateWindow = FALSE;
    cutIn->windowDelta = FX32_ONE * -64;
    cutIn->windowX1 = FX32_ONE * 254;
    cutIn->windowX2 = FX32_ONE * 255;
    cutIn->windowY1 = FX32_ONE * (96 - 1);
    cutIn->windowY2 = FX32_ONE * (96 + 1);
    cutIn->updateWindow = TRUE;
    cutIn->state++;

    return FALSE;
}

static BOOL HMCutIn_WindowExpandX(HMCutIn *cutIn)
{
    cutIn->updateWindow = FALSE;
    cutIn->windowX1 += cutIn->windowDelta;

    if (cutIn->windowX1 <= 0) {
        cutIn->windowX1 = 0;
        cutIn->windowDelta = 0x2000;
        cutIn->state++;
    }

    CutIn_SetWindowSize(cutIn, cutIn->windowX1, cutIn->windowY1, cutIn->windowX2, cutIn->windowY2);
    cutIn->updateWindow = TRUE;

    return FALSE;
}

static BOOL HMCutIn_WindowExpandY(HMCutIn *cutIn)
{
    cutIn->updateWindow = FALSE;
    cutIn->windowY1 -= cutIn->windowDelta;
    cutIn->windowY2 += cutIn->windowDelta;
    cutIn->windowDelta += 0x2000;

    if (cutIn->windowDelta > (FX32_ONE * 32)) {
        cutIn->windowDelta = (FX32_ONE * 32);
    }

    if (cutIn->windowY1 < (FX32_ONE * (96 - 40))) {
        cutIn->windowY1 = (FX32_ONE * (96 - 40));
    }

    if (cutIn->windowY2 > (FX32_ONE * (96 + 40))) {
        cutIn->windowY2 = (FX32_ONE * (96 + 40));
    }

    CutIn_SetWindowSize(cutIn, cutIn->windowX1, cutIn->windowY1, cutIn->windowX2, cutIn->windowY2);
    cutIn->updateWindow = TRUE;

    if ((cutIn->windowY1 == (FX32_ONE * (96 - 40))) && (cutIn->windowY2 == (FX32_ONE * (96 + 40)))) {
        CutIn_StartPlayerAnim(cutIn->playerSprite);
        cutIn->state++;
    }

    return FALSE;
}

static BOOL HMCutIn_SlideInSpeedUp(HMCutIn *cutIn)
{
    cutIn->subState++;

    if (cutIn->subState >= 15) {
        cutIn->subState = 0;
        cutIn->pokemonSpriteDeltaX = (FX32_ONE * -64);
        cutIn->state++;
    }

    return FALSE;
}

static BOOL HMCutIn_SlideMonIn(HMCutIn *cutIn)
{
    const VecFx32 *pokemonSpritePosition;
    VecFx32 position;

    pokemonSpritePosition = Sprite_GetPosition(cutIn->pokemonSprite);
    position = *pokemonSpritePosition;
    position.x += cutIn->pokemonSpriteDeltaX;

    if (position.x <= (FX32_ONE * (128 + 32))) {
        position.x = (FX32_ONE * (128 + 64));
        cutIn->state++;
    }

    Sprite_SetPosition(cutIn->pokemonSprite, &position);
    return FALSE;
}

static BOOL HMCutIn_SlideMonToCenter(HMCutIn *cutIn)
{
    const VecFx32 *pokemonSpritePosition;
    VecFx32 position;

    cutIn->pokemonSpriteDeltaX /= 2;

    // Pokemon sprite has reached the center of the screen
    if (cutIn->pokemonSpriteDeltaX > (FX32_ONE * -2)) {
        cutIn->pokemonSpriteDeltaX = (FX32_ONE * -2);
        cutIn->state++;

        Pokemon_PlayCry(cutIn->pokemon);
    }

    pokemonSpritePosition = Sprite_GetPosition(cutIn->pokemonSprite);
    position = *pokemonSpritePosition;
    position.x += cutIn->pokemonSpriteDeltaX;

    Sprite_SetPosition(cutIn->pokemonSprite, &position);
    return FALSE;
}

static BOOL HMCutIn_SlideOutSpeedUp(HMCutIn *cutIn)
{
    cutIn->subState++;

    if (cutIn->subState >= 8) {
        cutIn->subState = 0;
        cutIn->pokemonSpriteDeltaX = (FX32_ONE * -1);
        cutIn->state++;
    }

    return FALSE;
}

static BOOL HMCutIn_SlideMonOut(HMCutIn *cutIn)
{
    const VecFx32 *v0;
    VecFx32 v1;

    cutIn->pokemonSpriteDeltaX *= 2;

    if (cutIn->pokemonSpriteDeltaX < (FX32_ONE * -64)) {
        cutIn->pokemonSpriteDeltaX = (FX32_ONE * -64);
    }

    v0 = Sprite_GetPosition(cutIn->pokemonSprite);
    v1 = *v0;
    v1.x += cutIn->pokemonSpriteDeltaX;

    Sprite_SetPosition(cutIn->pokemonSprite, &v1);

    if (v1.x <= (FX32_ONE * -40)) {
        cutIn->windowDelta = 0x1000;
        cutIn->state++;
    }

    return FALSE;
}

static BOOL HMCutIn_WindowShrinkY(HMCutIn *cutIn)
{
    cutIn->updateWindow = 0;
    cutIn->windowY1 += cutIn->windowDelta;
    cutIn->windowY2 -= cutIn->windowDelta;
    cutIn->windowDelta += 0x4000;

    if (cutIn->windowDelta > (FX32_ONE * 32)) {
        cutIn->windowDelta = (FX32_ONE * 32);
    }

    if (cutIn->windowY1 >= (FX32_ONE * (96 - 8))) {
        cutIn->windowY1 = (FX32_ONE * (96 - 8));
    }

    if (cutIn->windowY2 <= (FX32_ONE * (96 + 8))) {
        cutIn->windowY2 = (FX32_ONE * (96 + 8));
    }

    CutIn_SetWindowSize(cutIn, cutIn->windowX1, cutIn->windowY1, cutIn->windowX2, cutIn->windowY2);
    cutIn->updateWindow = 1;

    if ((cutIn->windowY1 == (FX32_ONE * (96 - 8))) && (cutIn->windowY2 == (FX32_ONE * (96 + 8)))) {
        CutIn_SetTaskUnk_254Done(cutIn);
        cutIn->state++;
    }

    return FALSE;
}

static BOOL HMCutIn_DeleteSprites(HMCutIn *cutIn)
{
    CutIn_DeleteSprites(cutIn);
    cutIn->updateSprites = FALSE;
    cutIn->state++;
    return FALSE;
}

static BOOL HMCutIn_WindowTaskDone(HMCutIn *cutIn)
{
    CutIn_DeleteWindowTask(cutIn);
    cutIn->state++;
    return FALSE;
}

static BOOL HMCutIn_Done(HMCutIn *cutIn)
{
    cutIn->isFinished = TRUE;
    return FALSE;
}

static const CutInTaskFunc sCutInTaskFuncs[] = {
    CutIn_Init,
    HMCutIn_InitSprites,
    HMCutIn_InitWindowAndPlayerSprite,
    HMCutIn_WindowExpandX,
    HMCutIn_WindowExpandY,
    HMCutIn_SlideInSpeedUp,
    HMCutIn_SlideMonIn,
    HMCutIn_SlideMonToCenter,
    HMCutIn_SlideOutSpeedUp,
    HMCutIn_SlideMonOut,
    HMCutIn_WindowShrinkY,
    HMCutIn_DeleteSprites,
    HMCutIn_WindowTaskDone,
    HMCutIn_Done
};

static void SysTask_CutInFly(SysTask *sysTask, void *cutInRef)
{
    int ret;
    HMCutIn *cutIn = cutInRef;

    do {
        ret = sCutInTaskFuncsFly[cutIn->state](cutIn);
    } while (ret == TRUE);

    if (cutIn->updateSprites == TRUE) {
        if (cutIn->unk_244 != NULL) {
            sub_020713D0(cutIn->unk_244);
        }

        CutIn_UpdateSpriteList(cutIn);
    }
}

// Identical to HMCutIn_InitSprites
static BOOL CutIn_InitSpritesFly(HMCutIn *cutIn)
{
    if (cutIn->resourceSourcesFreed == FALSE) {
        return FALSE;
    }

    VecFx32 playerSpritePosition = { (FX32_ONE * 128), FX32_ONE * 96, 0 };
    VecFx32 pokemonSpritePosition = { (FX32_ONE * (256 + 40)), FX32_ONE * 96, 0 };

    cutIn->playerSprite = CutIn_InitPlayerSprite(cutIn, &playerSpritePosition);
    cutIn->pokemonSprite = CutIn_InitPokemonSprite(cutIn, &pokemonSpritePosition);

    CreateWindParticleAnims(cutIn, 1);
    CutIn_DeleteResourceTransferTask(cutIn);

    cutIn->updateSprites = TRUE;
    cutIn->state++;

    return TRUE;
}

static BOOL HMCutIn_UnloadMonSprite(HMCutIn *cutIn)
{
    CutIn_UnloadPokemonSpriteResources(cutIn);
    cutIn->state++;
    return FALSE;
}

static BOOL HMCutIn_LoadBirdSprite(HMCutIn *cutIn)
{
    CutIn_LoadBirdSpriteResources(cutIn);
    CutIn_CreateBirdResourceTransferTask(cutIn);
    cutIn->state++;
    return FALSE;
}

static BOOL HMCutIn_WaitResourceTransfer(HMCutIn *cutIn)
{
    if (cutIn->resourceSourcesFreed == FALSE) {
        return FALSE;
    }

    CutIn_DeleteResourceTransferTask(cutIn);

    cutIn->state++;
    return TRUE;
}

static BOOL HMCutIn_InitFlyTasks(HMCutIn *cutIn)
{
    Fly_CreateTasks(cutIn);
    Fly_InitBirdSpritePos(cutIn);
    CutIn_InitPlaneMasksForFly(cutIn);
    HideAndStopPlayerMapObj(cutIn, TRUE);
    cutIn->state++;
    return FALSE;
}

static BOOL HMCutIn_PlayerAnimBackToDefault(HMCutIn *cutIn)
{
    if (Fly_GetTaskEnvSubState(cutIn) != 2) {
        return FALSE;
    }

    Sprite_SetAnim(cutIn->playerSprite, 1);
    cutIn->state++;

    return FALSE;
}

static BOOL HMCutIn_PrepareDescent(HMCutIn *cutIn)
{
    cutIn->subState++;

    if (cutIn->subState >= 20) {
        cutIn->subState = 0;
        cutIn->state++;

        Fly_PrepareBirdForDescent(cutIn);
    }

    return TRUE;
}

static BOOL HMCutIn_PlaySwooshSound(HMCutIn *cutIn)
{
    if (Fly_GetTaskEnvSubState(cutIn) != 3) {
        return FALSE;
    }

    Sound_PlayEffect(SEQ_SE_DP_FW019);

    cutIn->windowDelta = FX32_CONST(0.5);
    cutIn->windParticlesAnimState = 2;
    cutIn->state++;

    return TRUE;
}

static BOOL HMCutIn_SlideOutWindow(HMCutIn *cutIn)
{
    cutIn->updateWindow = FALSE;
    cutIn->windowY1 += cutIn->windowDelta;
    cutIn->windowY2 -= cutIn->windowDelta;
    cutIn->windowDelta += FX32_CONST(0.5);

    if (cutIn->windowDelta > FX32_CONST(16)) {
        cutIn->windowDelta = FX32_CONST(16);
    }

    if (cutIn->windowY1 >= FX32_CONST(96 - 1)) {
        cutIn->windowY1 = FX32_CONST(96 - 1);
    }

    if (cutIn->windowY2 <= FX32_CONST(96 + 1)) {
        cutIn->windowY2 = FX32_CONST(96 + 1);
    }

    CutIn_SetWindowSize(cutIn, cutIn->windowX1, cutIn->windowY1, cutIn->windowX2, cutIn->windowY2);
    cutIn->updateWindow = TRUE;

    if (cutIn->screenFaded == FALSE) {
        if (Fly_GetTaskEnvSubState(cutIn) == 4) {
            cutIn->screenFaded = TRUE;
            FadeOut();
        }
    }

    if ((cutIn->windowY1 == (FX32_ONE * (96 - 1))) && (cutIn->windowY2 == (FX32_ONE * (96 + 1)))) {
        CutIn_ClearTileMapBG3(cutIn->fieldSystem->bgConfig);
        cutIn->windParticlesAnimState = 1;
        CutIn_ClearWindowMask(cutIn);
        cutIn->state++;
    }

    return FALSE;
}

static BOOL HMCutIn_FadeOut(HMCutIn *cutIn)
{
    if (cutIn->screenFaded == FALSE) {
        if (Fly_GetTaskEnvSubState(cutIn) == 4) {
            cutIn->screenFaded = TRUE;
            FadeOut();
        }
    }

    if (Fly_GetTaskEnvSubState(cutIn) != 2) {
        return FALSE;
    }

    if (cutIn->screenFaded == FALSE) {
        cutIn->screenFaded = TRUE;
        FadeOut();
    }

    FlyAway_SetTasksDone(cutIn);
    cutIn->state++;
    return FALSE;
}

static BOOL HMCutIn_CheckFadeOutComplete(HMCutIn *cutIn)
{
    if (IsScreenFadeDone()) {
        cutIn->state++;
    }

    return FALSE;
}

static const CutInTaskFunc sCutInTaskFuncsFly[] = {
    CutIn_Init,
    CutIn_InitSpritesFly,
    HMCutIn_InitWindowAndPlayerSprite,
    HMCutIn_WindowExpandX,
    HMCutIn_WindowExpandY,
    HMCutIn_SlideInSpeedUp,
    HMCutIn_SlideMonIn,
    HMCutIn_SlideMonToCenter,
    HMCutIn_SlideOutSpeedUp,
    HMCutIn_SlideMonOut,
    HMCutIn_UnloadMonSprite,
    HMCutIn_LoadBirdSprite,
    HMCutIn_WaitResourceTransfer,
    HMCutIn_InitFlyTasks,
    HMCutIn_PlayerAnimBackToDefault,
    HMCutIn_PrepareDescent,
    HMCutIn_PlaySwooshSound,
    HMCutIn_SlideOutWindow,
    HMCutIn_FadeOut,
    HMCutIn_CheckFadeOutComplete,
    HMCutIn_DeleteSprites,
    HMCutIn_WindowTaskDone,
    HMCutIn_Done
};

static void CutIn_CreateResourceTransferTask(HMCutIn *cutIn)
{
    cutIn->resourcesLoaded = FALSE;
    cutIn->resourceSourcesFreed = FALSE;
    cutIn->resourceTransferTask = SysTask_ExecuteOnVBlank(SysTask_CutIn_TransferResources, cutIn, 0x80);
}

static void CutIn_CreateBirdResourceTransferTask(HMCutIn *cutIn)
{
    cutIn->resourcesLoaded = FALSE;
    cutIn->resourceSourcesFreed = FALSE;
    cutIn->resourceTransferTask = SysTask_ExecuteOnVBlank(SysTask_CutIn_TransferBirdResource, cutIn, 0x80);
}

static void CutIn_DeleteResourceTransferTask(HMCutIn *cutIn)
{
    if (cutIn->resourceTransferTask != NULL) {
        SysTask_Done(cutIn->resourceTransferTask);
        cutIn->resourceTransferTask = NULL;
    }
}

static void SysTask_CutIn_TransferResources(SysTask *dummyTask, void *hmCutInPtr)
{
    int i;
    HMCutIn *cutIn = hmCutInPtr;

    if (cutIn->resourcesLoaded == FALSE) {
        for (i = 0; i < 4; i++) {
            if (cutIn->charSource[i] != NULL) {
                SpriteTransfer_RequestCharAtEnd(cutIn->charSource[i]);
            }
        }

        for (i = 0; i < 3; i++) {
            if (cutIn->paletteSource[i] != NULL) {
                SpriteTransfer_RequestPlttFreeSpace(cutIn->paletteSource[i]);
            }
        }

        if (cutIn->pokemonCharSource != NULL) {
            CutIn_LoadPokemonChar(cutIn, cutIn->pokemonCharSource);
        }

        if (cutIn->pokemonPaletteSource != NULL) {
            CutIn_LoadPokemonSpritePalette(cutIn, cutIn->pokemonPaletteSource);
        }

        cutIn->resourcesLoaded++; // setting the flag to 1 = TRUE
        SysTask_ExecuteAfterVBlank(SysTask_CutIn_FreeResources, cutIn, 0x80);
    }
}

static void SysTask_CutIn_FreeResources(SysTask *task, void *hmCutInPtr)
{
    int i;
    HMCutIn *cutIn = hmCutInPtr;

    if (cutIn->resourcesLoaded == TRUE) {
        for (i = 0; i < 4; i++) {
            if (cutIn->charSource[i] != NULL) {
                SpriteResource_ReleaseData(cutIn->charSource[i]);
            }
        }

        for (i = 0; i < 3; i++) {
            if (cutIn->paletteSource[i] != NULL) {
                SpriteResource_ReleaseData(cutIn->paletteSource[i]);
            }
        }

        if (cutIn->pokemonCharSource != NULL) {
            Heap_Free(cutIn->pokemonCharSource);
            cutIn->pokemonCharSource = NULL;
        }

        if (cutIn->pokemonPaletteSource != NULL) {
            Heap_Free(cutIn->pokemonPaletteSource);
            cutIn->pokemonPaletteSource = NULL;
        }

        cutIn->resourceSourcesFreed = TRUE;
        SysTask_Done(task);
    }
}

static void SysTask_CutIn_TransferBirdResource(SysTask *task, void *hmCutInPtr)
{
    HMCutIn *cutIn = hmCutInPtr;
    SpriteResource *charResource = SpriteResourceCollection_Find(cutIn->charLocation, 0);

    if (cutIn->resourcesLoaded == FALSE) {
        SpriteTransfer_RequestCharAtEnd(charResource);
        SysTask_ExecuteAfterVBlank(SysTask_CutIn_FinalizeBirdSpriteTransfer, cutIn, 0x80);
        cutIn->resourcesLoaded++; // setting the flag to 1 = TRUE
    }
}

static void SysTask_CutIn_FinalizeBirdSpriteTransfer(SysTask *task, void *hmCutInPtr)
{
    HMCutIn *cutIn = hmCutInPtr;
    SpriteResource *charSource = SpriteResourceCollection_Find(cutIn->charLocation, 0);

    if (cutIn->resourcesLoaded == TRUE) {
        SpriteResource_ReleaseData(charSource);
        cutIn->resourceSourcesFreed = TRUE;
        SysTask_Done(task);
    }
}

static void CutIn_InitSpriteResources(HMCutIn *cutIn)
{
    NARC *narc = CutIn_GetCutInNarc();

    CutIn_SetWindowSize(cutIn, FX32_ONE * 0, FX32_ONE * 192, FX32_ONE * 1, FX32_ONE * 192);
    CutIn_InitWindow(cutIn);

    cutIn->bg0Priority = Bg_GetPriority(cutIn->fieldSystem->bgConfig, BG_LAYER_MAIN_0);
    cutIn->bg3Priority = Bg_GetPriority(cutIn->fieldSystem->bgConfig, BG_LAYER_MAIN_3);

    G2_SetBG1Priority(1);
    G2_SetBG3Priority(0);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, FALSE);

    CutIn_LoadBgPalette(narc, 2, &cutIn->g2dPaletteData);
    CutIn_LoadBgPatternChar(cutIn->fieldSystem->bgConfig, narc, 0, &cutIn->g2dCharData);
    CutIn_LoadBgPatternPalette(cutIn->fieldSystem->bgConfig, narc, 1, &cutIn->g2dScreenData);
    CutIn_LoadSpriteResources(cutIn, narc);

    NARC_dtor(narc);
    cutIn->unk_244 = sub_020711EC(HEAP_ID_FIELD, 32);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
}

static void CutIn_DeleteSprites(HMCutIn *cutIn)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
    sub_0207121C(cutIn->unk_244);

    CutIn_ClearTileMapBG3(cutIn->fieldSystem->bgConfig);
    CutIn_DeleteSpriteResources(cutIn);

    G2_SetBG0Priority(cutIn->bg0Priority);
    G2_SetBG3Priority(cutIn->bg3Priority);

    FieldMessage_LoadTextPalettes(0, TRUE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
}

static NARC *CutIn_GetCutInNarc(void)
{
    return NARC_ctor(NARC_INDEX_DATA__FIELD_CUTIN, HEAP_ID_FIELD);
}

static void CutIn_LoadSpriteResources(HMCutIn *cutIn, NARC *narc)
{
    int i;

    CutIn_BuildPokemonSpriteTemplate(cutIn, &cutIn->pokemonSpriteTemplate);
    cutIn->spriteList = SpriteList_InitRendering(32, &cutIn->g2dRenderer, HEAP_ID_FIELD);
    SetSubScreenViewRect(&cutIn->g2dRenderer, 0, FX32_CONST(512));

    cutIn->charLocation = SpriteResourceCollection_New(4, 0, HEAP_ID_FIELD);
    cutIn->paletteLocation = SpriteResourceCollection_New(3, 1, HEAP_ID_FIELD);
    cutIn->cellLocation = SpriteResourceCollection_New(4, 2, HEAP_ID_FIELD);
    cutIn->animLocation = SpriteResourceCollection_New(2, 3, HEAP_ID_FIELD);

    // Char Index 0: White Clouds
    for (i = 0; i < 1; i++) {
        cutIn->charSource[i] = SpriteResourceCollection_AddTilesFrom(cutIn->charLocation, narc, sCutInWindParticleChar[i].memberIdx, FALSE, sCutInWindParticleChar[i].resourceId, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_FIELD);
    }

    // Char Index 1: Player
    if (cutIn->playerGender == 0) {
        cutIn->charSource[i] = SpriteResourceCollection_AddTilesFrom(cutIn->charLocation, narc, 13, FALSE, 2, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_FIELD);
    } else {
        cutIn->charSource[i] = SpriteResourceCollection_AddTilesFrom(cutIn->charLocation, narc, 16, FALSE, 2, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_FIELD);
    }

    i++;
    // Char Index 2: Player's Pokemon
    cutIn->charSource[i] = CutIn_GetParticleCharResource(cutIn, narc);

    // Palette Index 0: White Clouds
    for (i = 0; i < 1; i++) {
        cutIn->paletteSource[i] = SpriteResourceCollection_AddPaletteFrom(cutIn->paletteLocation, narc, sCutInWindParticlePalette[i].memberIdx, FALSE, sCutInWindParticlePalette[i].resourceId, NNS_G2D_VRAM_TYPE_2DMAIN, PLTT_1, HEAP_ID_FIELD);
    }

    // Palette Index 1: Player Female
    if (cutIn->playerGender == 0) {
        (void)0;
    } else {
        cutIn->paletteSource[i] = SpriteResourceCollection_AddPaletteFrom(cutIn->paletteLocation, narc, 4, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, PLTT_1, HEAP_ID_FIELD);
        i++;
    }

    // Palette Index 1 / 2: Player Male / Part of Clouds
    cutIn->paletteSource[i] = CutIn_GetPlayerMalePlttResource(cutIn, narc);

    // Cell Index 0: White Clouds
    for (i = 0; i < 1; i++) {
        cutIn->cellSource[i] = SpriteResourceCollection_AddFrom(cutIn->cellLocation, narc, sCutInWindParticleCell[i].memberIdx, FALSE, sCutInWindParticleCell[i].resourceId, SPRITE_RESOURCE_CELL, HEAP_ID_FIELD);
    }

    // Cell Index 1: Player
    if (cutIn->playerGender == 0) {
        cutIn->cellSource[i] = SpriteResourceCollection_AddFrom(cutIn->cellLocation, narc, 14, FALSE, 2, SPRITE_RESOURCE_CELL, HEAP_ID_FIELD);
    } else {
        cutIn->cellSource[i] = SpriteResourceCollection_AddFrom(cutIn->cellLocation, narc, 17, FALSE, 2, SPRITE_RESOURCE_CELL, HEAP_ID_FIELD);
    }

    i++;
    // Cell Index 2: Player's Pokemon
    cutIn->cellSource[i] = SpriteResourceCollection_AddFrom(cutIn->cellLocation, narc, 6, FALSE, 3, SPRITE_RESOURCE_CELL, HEAP_ID_FIELD);

    // Animation Index 0: White Clouds
    for (i = 0; i < 1; i++) {
        cutIn->animSource[i] = SpriteResourceCollection_AddFrom(cutIn->animLocation, narc, sCutInWindParticleAnim[i].memberIdx, FALSE, sCutInWindParticleAnim[i].resourceId, SPRITE_RESOURCE_ANIM, HEAP_ID_FIELD);
    }

    // Animation Index 1: Player
    if (cutIn->playerGender == 0) {
        cutIn->animSource[i] = SpriteResourceCollection_AddFrom(cutIn->animLocation, narc, 15, FALSE, 1, SPRITE_RESOURCE_ANIM, HEAP_ID_FIELD);
    } else {
        cutIn->animSource[i] = SpriteResourceCollection_AddFrom(cutIn->animLocation, narc, 18, FALSE, 1, SPRITE_RESOURCE_ANIM, HEAP_ID_FIELD);
    }

    cutIn->pokemonCharSource = CutIn_GetPokemonSpriteSource(cutIn->pokemon, &cutIn->pokemonSpriteTemplate, HEAP_ID_FIELD);
    cutIn->pokemonPaletteSource = CutIn_GetPokemonPaletteSource(&cutIn->pokemonSpriteTemplate, HEAP_ID_FIELD);
}

static void CutIn_DeleteSpriteResources(HMCutIn *cutIn)
{
    int i;

    for (i = 0; i < 4; i++) {
        if (cutIn->charSource[i] != NULL) {
            SpriteTransfer_ResetCharTransfer(cutIn->charSource[i]);
        }
    }

    for (i = 0; i < 3; i++) {
        if (cutIn->paletteSource[i] != NULL) {
            SpriteTransfer_ResetPlttTransfer(cutIn->paletteSource[i]);
        }
    }

    for (i = 0; i < 4; i++) {
        if (cutIn->cellSource[i] != NULL) {
            SpriteResource_ReleaseData(cutIn->cellSource[i]);
        }
    }

    for (i = 0; i < 2; i++) {
        if (cutIn->animSource[i] != NULL) {
            SpriteResource_ReleaseData(cutIn->animSource[i]);
        }
    }

    SpriteResourceCollection_Delete(cutIn->charLocation);
    SpriteResourceCollection_Delete(cutIn->paletteLocation);
    SpriteResourceCollection_Delete(cutIn->cellLocation);
    SpriteResourceCollection_Delete(cutIn->animLocation);
    SpriteList_DeleteAll(cutIn->spriteList);
    SpriteList_Delete(cutIn->spriteList);
}

static void CutIn_UpdateSpriteList(HMCutIn *cutIn)
{
    if (cutIn->spriteList != NULL) {
        SpriteList_Update(cutIn->spriteList);
    }
}

static Sprite *CreateSprite(HMCutIn *cutIn, const VecFx32 *position, u32 charResourceID, u32 paletteResourceID, u32 cellResourceID, u32 animResourceID, int headerPriority, int listPriority)
{
    SpriteResourcesHeader resourceHeader;
    SpriteListTemplate spriteListTemplate;
    Sprite *sprite;

    if (animResourceID == 4) {
        SpriteResourcesHeader_Init(
            &resourceHeader,
            charResourceID,
            paletteResourceID,
            cellResourceID,
            0xffffffff,
            0xffffffff,
            0xffffffff,
            FALSE,
            headerPriority,
            cutIn->charLocation,
            cutIn->paletteLocation,
            cutIn->cellLocation,
            NULL,
            NULL,
            NULL);
    } else {
        SpriteResourcesHeader_Init(
            &resourceHeader,
            charResourceID,
            paletteResourceID,
            cellResourceID,
            animResourceID,
            0xffffffff,
            0xffffffff,
            FALSE,
            headerPriority,
            cutIn->charLocation,
            cutIn->paletteLocation,
            cutIn->cellLocation,
            cutIn->animLocation,
            NULL,
            NULL);
    }

    spriteListTemplate.list = cutIn->spriteList;
    spriteListTemplate.resourceData = &resourceHeader;
    spriteListTemplate.position = *position;
    spriteListTemplate.priority = listPriority;
    spriteListTemplate.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    spriteListTemplate.heapID = HEAP_ID_FIELD;

    sprite = SpriteList_Add(&spriteListTemplate);
    GF_ASSERT(sprite != NULL);

    return sprite;
}

static Sprite *WindParticle_CreateSprite(HMCutIn *cutIn, const VecFx32 *position, int listPriority, int animID)
{
    Sprite *sprite = CreateSprite(cutIn, position, 1, 0, 1, 0, 0, listPriority);
    Sprite_SetAnim(sprite, animID);

    return sprite;
}

static Sprite *CutIn_InitPlayerSprite(HMCutIn *cutIn, const VecFx32 *position)
{
    Sprite *playerSprite;
    u32 plttResourceID = 0;

    if (cutIn->playerGender == 1) {
        plttResourceID = 1;
    }

    playerSprite = CreateSprite(cutIn, position, 2, plttResourceID, 2, 1, 0, 131);

    Sprite_SetDrawFlag(playerSprite, FALSE);
    Sprite_SetAnim(playerSprite, 6); // Pull ball out of pocket animation

    return playerSprite;
}

static void CutIn_StartPlayerAnim(Sprite *sprite)
{
    Sprite_SetAnimateFlag(sprite, TRUE);
    Sprite_SetAnimSpeed(sprite, FX32_ONE);
}

static Sprite *Fly_CreateBirdSprite(HMCutIn *cutIn, const VecFx32 *position, int priority, int dummy)
{
    Sprite *birdSprite;
    VecFx32 translation = { 0, 0, 0 };
    VecFx32 scale = { 0x1000, 0x1000, 0 };

    birdSprite = CreateSprite(cutIn, position, 0, 0, 0, 0xffffffff, 0, priority);

    Sprite_SetAffineOverwriteMode(birdSprite, AFFINE_OVERWRITE_MODE_DOUBLE);
    Sprite_SetAffineTranslation(birdSprite, &translation);
    Sprite_SetAffineScale(birdSprite, &scale);
    Sprite_SetAffineZRotation(birdSprite, CalcAngleRotationIdx_Wraparound(0));

    return birdSprite;
}

static void CutIn_LoadBirdSpriteResources(HMCutIn *cutIn)
{
    int i;
    NARC *narc = CutIn_GetCutInNarc();

    for (i = 0; i < 4; i++) {
        if (cutIn->charSource[i] == NULL) {
            cutIn->charSource[i] = SpriteResourceCollection_AddTilesFrom(cutIn->charLocation, narc, 7, FALSE, 0, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_FIELD);
            break;
        }
    }

    GF_ASSERT(i < 4);

    for (i = 0; i < 4; i++) {
        if (cutIn->cellSource[i] == NULL) {
            cutIn->cellSource[i] = SpriteResourceCollection_AddFrom(cutIn->cellLocation, narc, 8, FALSE, 0, SPRITE_RESOURCE_CELL, HEAP_ID_FIELD);
            break;
        }
    }

    GF_ASSERT(i < 4);
    NARC_dtor(narc);
}

static void CutIn_LoadBgPalette(NARC *narc, u32 memberIndex, NNSG2dPaletteData **paletteData)
{
    void *nclrFile = NARC_AllocAndReadWholeMember(narc, memberIndex, HEAP_ID_FIELD);

    NNS_G2dGetUnpackedPaletteData(nclrFile, paletteData);

    Bg_LoadPalette(BG_LAYER_MAIN_3, (*paletteData)->pRawData, 32 * 1, 32 * 12);
    Heap_Free(nclrFile);
}

static void CutIn_LoadBgPatternChar(BgConfig *bgConfig, NARC *narc, u32 memberIndex, NNSG2dCharacterData **charData)
{
    void *ncgrFile = NARC_AllocAndReadWholeMember(narc, memberIndex, HEAP_ID_FIELD);
    NNS_G2dGetUnpackedCharacterData(ncgrFile, charData);

    Bg_LoadTiles(bgConfig, BG_LAYER_MAIN_3, (*charData)->pRawData, (*charData)->szByte, 0);
    Heap_Free(ncgrFile);
}

static void CutIn_LoadBgPatternPalette(BgConfig *bgConfig, NARC *narc, u32 memberIndex, NNSG2dScreenData **screenData)
{
    void *nscrFile;

    Bg_SetOffset(bgConfig, BG_LAYER_MAIN_3, 0, 0);
    Bg_SetOffset(bgConfig, BG_LAYER_MAIN_3, 3, 0);

    nscrFile = NARC_AllocAndReadWholeMember(narc, memberIndex, HEAP_ID_FIELD);
    NNS_G2dGetUnpackedScreenData(nscrFile, screenData);

    Bg_LoadTilemapBuffer(bgConfig, BG_LAYER_MAIN_3, (void *)(*screenData)->rawData, (*screenData)->szByte);
    Bg_ChangeTilemapRectPalette(bgConfig, BG_LAYER_MAIN_3, 0, 0, 32, 32, 12);
    Bg_CopyTilemapBufferToVRAM(bgConfig, BG_LAYER_MAIN_3);
    Heap_Free(nscrFile);
}

static void CutIn_ClearTileMapBG3(BgConfig *bgConfig)
{
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_3);
}

static void CutIn_InitWindow(HMCutIn *cutIn)
{
    CutIn_CreateWindowTask(cutIn);
    cutIn->updateWindow = FALSE;

    CutIn_ClearWindowMask(cutIn);
    CutIn_InitPlaneMasks(cutIn);
    CutIn_SetWindowMask(cutIn);

    cutIn->updateWindow = TRUE;
}

static void CutIn_SetWindowMask(HMCutIn *cutIn)
{
    cutIn->window = (GX_WNDMASK_W0);
}

static void CutIn_ClearWindowMask(HMCutIn *cutIn)
{
    cutIn->window = GX_WNDMASK_NONE;
}

static void CutIn_InitPlaneMasks(HMCutIn *cutIn)
{
    cutIn->planeMaskInside = (GX_WND_PLANEMASK_BG3) | GX_WND_PLANEMASK_OBJ;
    cutIn->effectInside = 0;
    cutIn->planeMaskOutside = (GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ) & (~(GX_WND_PLANEMASK_BG3));
    cutIn->effectOutside = 1;
}

static void CutIn_InitPlaneMasksForFly(HMCutIn *cutIn)
{
    cutIn->planeMaskOutside = (GX_WND_PLANEMASK_OBJ | GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3) & (~(GX_WND_PLANEMASK_BG3));
    cutIn->effectOutside = 1;
}

static void CutIn_SetWindowSize(HMCutIn *cutIn, fx32 x1, fx32 y1, fx32 x2, fx32 y2)
{
    cutIn->windowX1 = x1;
    cutIn->windowX2 = x2;
    cutIn->windowY1 = y1;
    cutIn->windowY2 = y2;
}

static void CutIn_CreateWindowTask(HMCutIn *cutIn)
{
    GF_ASSERT(cutIn->windowTask == NULL);
    cutIn->windowTask = SysTask_ExecuteOnVBlank(SysTask_CutIn_ShowWindow, cutIn, 0x81);
}

static void CutIn_DeleteWindowTask(HMCutIn *cutIn)
{
    GF_ASSERT(cutIn->windowTask != NULL);

    SysTask_Done(cutIn->windowTask);
    GX_SetVisibleWnd(GX_WNDMASK_NONE);
}

static void SysTask_CutIn_ShowWindow(SysTask *task, void *hmCutInPtr)
{
    HMCutIn *cutIn = hmCutInPtr;

    if (cutIn->updateWindow == 0) {
        return;
    }

    GX_SetVisibleWnd(cutIn->window);
    G2_SetWnd0InsidePlane(cutIn->planeMaskInside, cutIn->effectInside);
    G2_SetWndOutsidePlane(cutIn->planeMaskOutside, cutIn->effectOutside);
    G2_SetWnd0Position(cutIn->windowX1 / FX32_ONE, cutIn->windowY1 / FX32_ONE, cutIn->windowX2 / FX32_ONE, cutIn->windowY2 / FX32_ONE);
}

static void CutIn_BuildPokemonSpriteTemplate(HMCutIn *cutIn, PokemonSpriteTemplate *spriteTemplate)
{
    Pokemon_BuildSpriteTemplate(spriteTemplate, cutIn->pokemon, 2);
}

static void *CutIn_GetPokemonSpriteSource(Pokemon *pokemon, PokemonSpriteTemplate *spriteTemplate, u32 heapID)
{
    void *spriteSource = Heap_AllocFromHeap(HEAP_ID_FIELD, (32 * 10) * 10);

    GF_ASSERT(spriteSource != NULL);

    int personality = Pokemon_GetValue(pokemon, MON_DATA_PERSONALITY, NULL);
    sub_02013750(spriteTemplate->narcID, spriteTemplate->character, heapID, spriteSource, personality, FALSE, 2, spriteTemplate->spindaSpots);

    return spriteSource;
}

static void *CutIn_GetPokemonPaletteSource(PokemonSpriteTemplate *spriteTemplate, u32 heapID)
{
    void *paletteSource = sub_02013660(spriteTemplate->narcID, spriteTemplate->palette, heapID);
    return paletteSource;
}

static SpriteResource *CutIn_GetParticleCharResource(HMCutIn *cutIn, NARC *narc)
{
    SpriteResource *spriteResource = SpriteResourceCollection_AddTilesFrom(cutIn->charLocation, narc, 5, FALSE, 3, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_FIELD);
    return spriteResource;
}

static void CutIn_LoadPokemonChar(HMCutIn *cutIn, void *pokemonSpriteSource)
{
    u32 imageLocationInSource;
    SpriteResource *charResource;
    const NNSG2dImageProxy *imageProxy;

    charResource = SpriteResourceCollection_Find(cutIn->charLocation, 3);
    imageProxy = SpriteTransfer_GetImageProxy(charResource);
    imageLocationInSource = NNS_G2dGetImageLocation(imageProxy, NNS_G2D_VRAM_TYPE_2DMAIN);

    DC_FlushRange((void *)pokemonSpriteSource, (32 * 10) * 10);
    GX_LoadOBJ(pokemonSpriteSource, imageLocationInSource, (32 * 10) * 10);
}

static SpriteResource *CutIn_GetPlayerMalePlttResource(HMCutIn *cutIn, NARC *narc)
{
    SpriteResource *spriteResource = SpriteResourceCollection_AddPaletteFrom(cutIn->paletteLocation, narc, 3, FALSE, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 1, HEAP_ID_FIELD);
    return spriteResource;
}

static void CutIn_LoadPokemonSpritePalette(HMCutIn *cutIn, void *paletteSource)
{
    u32 plttLocationInSource;
    SpriteResource *plttResource;
    SpriteResource *charResource;
    NNSG2dImageProxy *imageProxy;
    const NNSG2dImagePaletteProxy *plttProxy;

    charResource = SpriteResourceCollection_Find(cutIn->charLocation, 3);
    imageProxy = SpriteTransfer_GetImageProxy(charResource);
    plttResource = SpriteResourceCollection_Find(cutIn->paletteLocation, 2);
    plttProxy = SpriteTransfer_GetPaletteProxy(plttResource, imageProxy);
    plttLocationInSource = NNS_G2dGetImagePaletteLocation(plttProxy, NNS_G2D_VRAM_TYPE_2DMAIN);

    DC_FlushRange((void *)paletteSource, 32);
    GX_LoadOBJPltt(paletteSource, plttLocationInSource, 32);
}

static void CutIn_UnloadPokemonSpriteResources(HMCutIn *cutIn)
{
    int i;
    SpriteResource *charResource = SpriteResourceCollection_Find(cutIn->charLocation, 3);

    SpriteTransfer_ResetCharTransfer(charResource);
    SpriteResourceCollection_Remove(cutIn->charLocation, charResource);

    for (i = 0; i < 4; i++) {
        if (cutIn->charSource[i] == charResource) {
            cutIn->charSource[i] = NULL;
            break;
        }
    }

    GF_ASSERT(i < 4);

    charResource = SpriteResourceCollection_Find(cutIn->paletteLocation, 2);
    SpriteTransfer_ResetPlttTransfer(charResource);
    SpriteResourceCollection_Remove(cutIn->paletteLocation, charResource);

    for (i = 0; i < 3; i++) {
        if (cutIn->paletteSource[i] == charResource) {
            cutIn->paletteSource[i] = NULL;
            break;
        }
    }

    GF_ASSERT(i < 3);
    charResource = SpriteResourceCollection_Find(cutIn->cellLocation, 3);

    SpriteResource_ReleaseData(charResource);
    SpriteResourceCollection_Remove(cutIn->cellLocation, charResource);

    for (i = 0; i < 4; i++) {
        if (cutIn->cellSource[i] == charResource) {
            cutIn->cellSource[i] = NULL;
            break;
        }
    }

    GF_ASSERT(i < 4);
}

static Sprite *CutIn_InitPokemonSprite(HMCutIn *cutIn, const VecFx32 *position)
{
    Sprite *monSprite = CreateSprite(cutIn, position, 3, 2, 3, 0xffffffff, 0, 129);
    return monSprite;
}

static const WindParticleAnimConfig sWindParticleAnimConfigs[13] = {
    { FX32_ONE * 15, FX32_ONE * 63, FX32_ONE * 16, 0x85, 0x0 },
    { FX32_ONE * 76, FX32_ONE * 67, FX32_ONE * 16, 0x85, 0x0 },
    { FX32_ONE * 128, FX32_ONE * 61, FX32_ONE * 24, 0x80, 0x1 },
    { FX32_ONE * 240, FX32_ONE * 69, FX32_ONE * 16, 0x85, 0x0 },
    { FX32_ONE * 40, FX32_ONE * 78, FX32_ONE * 24, 0x80, 0x1 },
    { FX32_ONE * 72, FX32_ONE * 91, FX32_ONE * 16, 0x85, 0x0 },
    { FX32_ONE * 208, FX32_ONE * 86, FX32_ONE * 24, 0x80, 0x1 },
    { FX32_ONE * 56, FX32_ONE * 116, FX32_ONE * 16, 0x85, 0x0 },
    { FX32_ONE * 95, FX32_ONE * 109, FX32_ONE * 24, 0x80, 0x1 },
    { FX32_ONE * 159, FX32_ONE * 100, FX32_ONE * 16, 0x85, 0x0 },
    { FX32_ONE * 24, FX32_ONE * 126, FX32_ONE * 24, 0x80, 0x1 },
    { FX32_ONE * 140, FX32_ONE * 125, FX32_ONE * 24, 0x80, 0x1 },
    { FX32_ONE * 221, FX32_ONE * 124, FX32_ONE * 24, 0x80, 0x1 }
};

static void CreateWindParticleAnims(HMCutIn *cutIn, int allowWindParticles)
{
    int i, v1, v2;
    VecFx32 v3, v4;

    cutIn->windParticlesAnimState = 2;

    for (i = 0; i < 13; i++) {
        v3.x = sWindParticleAnimConfigs[i].initialX;
        v3.y = sWindParticleAnimConfigs[i].initialY;
        v3.z = 0;
        v4.x = sWindParticleAnimConfigs[i].movementDeltaX;
        v4.y = 0;
        v4.z = 0;
        v2 = sWindParticleAnimConfigs[i].spriteListPriority;
        v1 = sWindParticleAnimConfigs[i].animID;

        WindParticle_RunAnimFuncs(cutIn, &v3, &v4, v2, v1, allowWindParticles);
        v3.x += (FX32_ONE * 256);
        WindParticle_RunAnimFuncs(cutIn, &v3, &v4, v2, v1, allowWindParticles);
    }
}

static void WindParticle_RunAnimFuncs(HMCutIn *cutIn, const VecFx32 *initialPos, const VecFx32 *movementDelta, int spriteListPriority, int param4, BOOL allowWindParticles)
{
    UnkStruct_ov101_021D5D90 *v0;
    WindParticleAnimData animData;

    animData.spriteListPriority = spriteListPriority;
    animData.allowWindParticles = allowWindParticles;
    animData.cutIn = cutIn;
    animData.movementDelta = *movementDelta;

    v0 = sub_02071330(cutIn->unk_244, &sWindParticleAnimFuncs, initialPos, param4, &animData, 132);
}

static int WindParticleAnim_SetUpSprite(UnkStruct_ov101_021D5D90 *param0, void *windParticleAnimEnv)
{
    VecFx32 position;
    WindParticleAnimEnv *env = windParticleAnimEnv;
    const WindParticleAnimData *animData = sub_020715BC(param0);

    env->data = *animData;
    env->animID = sub_020715B4(param0);

    sub_020715E4(param0, &position);

    env->sprite = WindParticle_CreateSprite(env->data.cutIn, &position, env->data.spriteListPriority, env->animID);
    Sprite_SetDrawFlag(env->sprite, FALSE);

    return 1;
}

static void WindParticleAnim_DeleteSprite(UnkStruct_ov101_021D5D90 *param0, void *windParticleAnimEnv)
{
    WindParticleAnimEnv *env = windParticleAnimEnv;
    Sprite_Delete(env->sprite);
}

static void WindParticleAnim_AnimateParticle(UnkStruct_ov101_021D5D90 *param0, void *windParticleAnimEnv)
{
    VecFx32 newPos;
    WindParticleAnimEnv *env = windParticleAnimEnv;

    sub_020715E4(param0, &newPos);

    newPos.x += env->data.movementDelta.x;
    newPos.x %= (FX32_ONE * 512);

    sub_020715D4(param0, &newPos);
    Sprite_SetPosition(env->sprite, &newPos);

    if (env->data.allowWindParticles == TRUE) {
        HMCutIn *v2 = env->data.cutIn;

        if (v2->windParticlesAnimState == 2) {
            BOOL drawFlag = FALSE;
            fx32 v4 = v2->windowY1, v5 = v2->windowY2;

            if ((newPos.y - (FX32_ONE * 2)) >= v4
                && (newPos.y - (FX32_ONE * 2)) <= v5
                && (newPos.y + (FX32_ONE * 2)) >= v4
                && (newPos.y + (FX32_ONE * 2)) <= v5) {
                drawFlag = TRUE;
            }

            Sprite_SetDrawFlag(env->sprite, drawFlag);
        } else if (v2->windParticlesAnimState == 1) {
            Sprite_SetDrawFlag(env->sprite, FALSE);
        }
    }
}

static void WindParticleAnim_DoNothing(UnkStruct_ov101_021D5D90 *param0, void *windParticleAnimEnv)
{
    WindParticleAnimEnv *env = windParticleAnimEnv;
}

static const UnkStruct_ov101_021D86B0 sWindParticleAnimFuncs = {
    (sizeof(WindParticleAnimEnv)),
    WindParticleAnim_SetUpSprite,
    WindParticleAnim_DeleteSprite,
    WindParticleAnim_AnimateParticle,
    WindParticleAnim_DoNothing
};

static void Fly_CreateTasks(HMCutIn *cutIn)
{
    VecFx32 position = { 0, 0, 0 };
    HMCutIn *CutIn = cutIn;

    cutIn->unk_250 = sub_02071330(cutIn->unk_244, &sFlyAwayFuncs, &position, 0, &CutIn, 130);
}

static int Fly_GetTaskEnvSubState(HMCutIn *cutIn)
{
    FlyTaskEnv *taskEnv = sub_02071598(cutIn->unk_250);
    return taskEnv->subState;
}

static void FlyAway_SetTasksDone(HMCutIn *cutIn)
{
    FlyTaskEnv *env = sub_02071598(cutIn->unk_250);

    if (env->unk_60) {
        sub_0207136C(env->unk_60);
    }

    if (env->task) {
        ov5_021F0EFC(env->task);
    }

    sub_0207136C(cutIn->unk_250);
}

static BOOL FlyAway_InitBirdSprite(UnkStruct_ov101_021D5D90 *param0, void *taskEnv)
{
    VecFx32 position;
    FlyTaskEnv *flyTaskEnv = taskEnv;
    const HMCutInContainer *cutInContainer = sub_020715BC(param0);

    flyTaskEnv->cutInContainer = *cutInContainer;
    sub_020715E4(param0, &position);
    flyTaskEnv->birdSprite = Fly_CreateBirdSprite(flyTaskEnv->cutInContainer.cutIn, &position, 0, 0);

    return 1;
}

static void FlyAway_DeleteBirdSprite(UnkStruct_ov101_021D5D90 *param0, void *taskEnv)
{
    FlyTaskEnv *flyTaskEnv = taskEnv;
    Sprite_Delete(flyTaskEnv->birdSprite);
}

static void FlyAway_Main(UnkStruct_ov101_021D5D90 *param0, void *taskEnv)
{
    FlyTaskEnv *flyTaskEnv = taskEnv;
    const FlyAwayTaskFunc *taskFuncs;
    taskFuncs = sFlyAwayAnimFuncsComplex[flyTaskEnv->stage];

    while (taskFuncs[flyTaskEnv->state](flyTaskEnv) == 1) {
        (void)0;
    }
}

static void FlyAway_DoNothing(UnkStruct_ov101_021D5D90 *param0, void *taskEnv)
{
    FlyTaskEnv *flyTaskEnv = taskEnv;
}

static const UnkStruct_ov101_021D86B0 sFlyAwayFuncs = {
    (sizeof(FlyTaskEnv)),
    FlyAway_InitBirdSprite,
    FlyAway_DeleteBirdSprite,
    FlyAway_Main,
    FlyAway_DoNothing
};

static const FlyAwayTaskFunc *const sFlyAwayAnimFuncsComplex[] = {
    sFlyTaskFuncsUnused,
    sFlyAwayAscendFromPokeballFuncs,
    sFlyPickUpPlayerFuncs,
};

static int HMFlyUnused_HideBird(FlyTaskEnv *flyTaskEnv)
{
    flyTaskEnv->subState = 0;
    Sprite_SetDrawFlag(flyTaskEnv->birdSprite, FALSE);
    return 0;
}

static const FlyAwayTaskFunc sFlyTaskFuncsUnused[] = {
    HMFlyUnused_HideBird
};

static void Fly_InitBirdSpritePos(HMCutIn *cutIn)
{
    VecFx32 birdPosition = { FX32_ONE * (128 + 8), FX32_ONE * (96 - 8), 0 };
    VecFx32 birdScale = { 0x400, 0x400, 0 };
    FlyTaskEnv *env = sub_02071598(cutIn->unk_250);

    env->stage = 1;
    env->state = 0;
    env->subState = 0;
    env->birdStartPos = birdPosition;
    env->pathOffset.x = 0;
    env->pathOffset.y = 0;
    env->pathOffset.z = 0;
    env->birdRotation = FX32_ONE * 60;
    env->birdScale = birdScale;
    env->scaleDelta = 0x200;
    env->angleParam = FX32_ONE * 180;
    env->pathParam = 0;
    env->pathDelta = 0x2000;

    Sprite_SetPosition(env->birdSprite, &birdPosition);
    Sprite_SetAffineScale(env->birdSprite, &birdScale);
    Sprite_SetAffineZRotation(env->birdSprite, CalcAngleRotationIdx_Wraparound(env->birdRotation / FX32_ONE));
    Sprite_SetDrawFlag(env->birdSprite, TRUE);
}

static int FlyAwayAscendFromPokeball_AscendAnim(FlyTaskEnv *env)
{
    VecFx32 position;
    Sprite *birdSprite = env->birdSprite;

    env->pathParam += env->pathDelta;

    if (env->pathDelta < FX32_CONST(16)) {
        env->pathDelta += FX32_CONST(4);
    }

    env->pathOffset.x = CalcCosineDegrees_Wraparound(315) * ((env->pathParam) / FX32_ONE);
    env->pathOffset.y = CalcSineDegrees_Wraparound((env->angleParam) / FX32_ONE) * ((env->pathParam) / FX32_ONE);

    if ((env->angleParam / FX32_ONE) < 270) {
        env->angleParam += FX32_CONST(4);
    }

    env->birdScale.x += env->scaleDelta;

    if (env->birdScale.x > FX32_ONE) {
        env->birdScale.x = FX32_ONE;
    }

    env->birdScale.y += env->scaleDelta;

    if (env->birdScale.y > FX32_ONE) {
        env->birdScale.y = FX32_ONE;
    }

    Sprite_SetAffineScale(birdSprite, &env->birdScale);
    env->birdRotation -= FX32_CONST(6);

    if (((env->birdRotation) / FX32_ONE) < 0) {
        env->birdRotation = 0;
    }

    Sprite_SetAffineZRotation(birdSprite, CalcAngleRotationIdx_Wraparound((env->birdRotation) / FX32_ONE));

    position.x = env->birdStartPos.x + env->pathOffset.x;
    position.y = env->birdStartPos.y + env->pathOffset.y;

    Sprite_SetPosition(birdSprite, &position);

    if (position.y < FX32_CONST(-64)) {
        Sprite_SetDrawFlag(birdSprite, FALSE);
        env->subState = 2;
        env->state++;
    }

    return 0;
}

static int FlyAwayAscendFromPokeball_DoNothing(FlyTaskEnv *env)
{
    return 0;
}

static const FlyAwayTaskFunc sFlyAwayAscendFromPokeballFuncs[] = {
    FlyAwayAscendFromPokeball_AscendAnim,
    FlyAwayAscendFromPokeball_DoNothing
};

static void Fly_PrepareBirdForDescent(HMCutIn *cutIn)
{
    VecFx32 birdPosition = VEC_FX32(128, 104, 0);
    VecFx32 birdScale = VEC_FX32(1.25, 1.25, 0);
    FlyTaskEnv *env = sub_02071598(cutIn->unk_250);

    env->stage = 2;
    env->state = 0;
    env->subState = 1;
    env->descendCount = 0;
    env->birdStartPos = birdPosition;
    env->pathOffset.x = 0;
    env->pathOffset.y = 0;
    env->pathOffset.z = 0;
    env->birdRotation = FX32_CONST(315);
    env->birdScale = birdScale;
    env->scaleDelta = FX32_CONST(0.0625);
    env->angleParam = FX32_CONST(225);
    env->pathParam = FX32_CONST(192);
    env->pathDelta = FX32_CONST(32);
    env->pathOffset.x = CalcCosineDegrees_Wraparound(315) * ((env->pathParam) / FX32_ONE);
    env->pathOffset.y = CalcSineDegrees_Wraparound((env->angleParam) / FX32_ONE) * ((env->pathParam) / FX32_ONE);

    birdPosition.x = env->birdStartPos.x + env->pathOffset.x;
    birdPosition.y = env->birdStartPos.y + env->pathOffset.y;

    Sprite_SetPosition(env->birdSprite, &birdPosition);
    Sprite_SetAffineScale(env->birdSprite, &birdScale);
    Sprite_SetAffineZRotation(env->birdSprite, CalcAngleRotationIdx_Wraparound((env->birdRotation) / FX32_ONE));
    Sprite_SetDrawFlag(env->birdSprite, TRUE);

    env->unk_60 = PushPlayerUp(cutIn->unk_244, cutIn->playerSprite);
    cutIn->forceDrawPlayerSprite = TRUE;
    env->task = ov5_021F0EB0(cutIn->fieldSystem, HEAP_ID_FIELD);

    ov5_021F0F10(env->task, 1, FX32_CONST(-120), 12);

    Sprite *playerSprite;
    VecFx32 playerTranslation = VEC_FX32(0, 0, 0);
    VecFx32 playerScale = VEC_FX32(1, 1, 0);

    playerSprite = env->cutInContainer.cutIn->playerSprite;

    Sprite_SetAffineOverwriteMode(playerSprite, AFFINE_OVERWRITE_MODE_DOUBLE);
    Sprite_SetAffineTranslation(playerSprite, &playerTranslation);
    Sprite_SetAffineScale(playerSprite, &playerScale);
    Sprite_SetAffineZRotation(playerSprite, CalcAngleRotationIdx_Wraparound(0));
}

static int FlyPickUpPlayer_DescendToCenter(FlyTaskEnv *env)
{
    VecFx32 newPos;
    Sprite *birdSprite = env->birdSprite;

    env->pathParam -= env->pathDelta;

    if (env->pathParam < 0) {
        env->pathParam = 0;
    }

    if (env->pathDelta > 0x800) {
        env->pathDelta -= 0x1800;
    }

    if (env->pathDelta < FX32_ONE) {
        env->pathDelta = FX32_ONE;
    }

    env->pathOffset.x = CalcCosineDegrees_Wraparound(315) * (env->pathParam / FX32_ONE);
    env->pathOffset.y = CalcSineDegrees_Wraparound(env->angleParam / FX32_ONE) * (env->pathParam / FX32_ONE);

    if (env->angleParam / FX32_ONE < 270) {
        env->angleParam += FX32_CONST(4);
    }

    env->birdScale.x += env->scaleDelta;

    if (env->birdScale.x > 0x1800) {
        env->birdScale.x = 0x1800;
    }

    env->birdScale.y += env->scaleDelta;

    if (env->birdScale.y > 0x1800) {
        env->birdScale.y = 0x1800;
    }

    Sprite_SetAffineScale(birdSprite, &env->birdScale);
    env->birdRotation += FX32_CONST(8);

    if (env->birdRotation / FX32_ONE > 360) {
        env->birdRotation = FX32_CONST(360);
    }

    Sprite_SetAffineZRotation(birdSprite, CalcAngleRotationIdx_Wraparound(env->birdRotation / FX32_ONE));

    newPos.x = env->birdStartPos.x + env->pathOffset.x;
    newPos.y = env->birdStartPos.y + env->pathOffset.y;

    Sprite_SetPosition(birdSprite, &newPos);

    if (env->pathParam == 0) {
        env->descendCount = 0;
        env->state++;
    } else {
        env->descendCount++;
    }

    if (env->descendCount == 12) {
        FlyPickUpPlayer_SetUpPlayerAnimEnv(env->unk_60);
    }

    Sprite *playerSprite = env->cutInContainer.cutIn->playerSprite;
    const VecFx32 *playerScale = Sprite_GetAffineScale(playerSprite);
    VecFx32 newPlayerScale = *playerScale;

    newPlayerScale.x += 0x80;

    if (newPlayerScale.x > 0x1400) {
        newPlayerScale.x = 0x1400;
    }

    newPlayerScale.y += 0x80;

    if (newPlayerScale.y > 0x1400) {
        newPlayerScale.y = 0x1400;
    }

    Sprite_SetAffineScale(playerSprite, &newPlayerScale);

    return 0;
}

static int FlyPickUpPlayer_PrepareForTakeoff(FlyTaskEnv *flyTaskEnv)
{
    Sprite *playerSprite = flyTaskEnv->cutInContainer.cutIn->playerSprite;

    Sprite_SetAnim(playerSprite, 3);

    const VecFx32 *spritePos = Sprite_GetPosition(playerSprite);
    fx32 playerY = spritePos->y;
    spritePos = Sprite_GetPosition(flyTaskEnv->birdSprite);
    fx32 birdY = spritePos->y;
    flyTaskEnv->playerOffsetY = playerY - birdY;

    FlyPickUpPlayer_TransferPlayerAnimEnv(flyTaskEnv->unk_60);
    ov5_021F0F10(flyTaskEnv->task, 2, 0, 12);

    flyTaskEnv->scaleDelta = FX32_CONST(1. / 16);
    flyTaskEnv->angleParam = FX32_CONST(128);
    flyTaskEnv->pathParam = 0;
    flyTaskEnv->pathDelta = FX32_CONST(0.5);
    flyTaskEnv->subState = 3;
    flyTaskEnv->state++;

    return 1;
}

static int FlyPickUpPlayer_AscendToBottomLeft(FlyTaskEnv *env)
{
    // update bird sprite
    VecFx32 nextBirdPosition;
    Sprite *birdSprite = env->birdSprite;

    env->pathParam += env->pathDelta;
    env->pathDelta += 0x1000;

    if (env->pathDelta > FX32_ONE * 16) {
        env->pathDelta = FX32_ONE * 16;
    }

    env->pathOffset.x = CalcCosineDegrees_Wraparound(env->angleParam / FX32_ONE) * (env->pathParam / FX32_ONE);
    env->pathOffset.y = CalcSineDegrees_Wraparound(128) * (env->pathParam / FX32_ONE);

    if (env->angleParam < FX32_ONE * 135) {
        env->angleParam += 0x1000;
    }

    env->birdScale.x += env->scaleDelta;

    if (env->birdScale.x > 0x2000) {
        env->birdScale.x = 0x2000;
    }

    env->birdScale.y += env->scaleDelta;

    if (env->birdScale.y > 0x2000) {
        env->birdScale.y = 0x2000;
    }

    Sprite_SetAffineScale(birdSprite, &env->birdScale);

    nextBirdPosition.x = env->birdStartPos.x + env->pathOffset.x;
    nextBirdPosition.y = env->birdStartPos.y + env->pathOffset.y;

    Sprite_SetPosition(birdSprite, &nextBirdPosition);

    // update player sprite
    Sprite *playerSprite = env->cutInContainer.cutIn->playerSprite;
    const VecFx32 *playerScale_ = Sprite_GetAffineScale(playerSprite);
    VecFx32 nextPlayerPosition = nextBirdPosition;
    VecFx32 newPlayerScale = *playerScale_;

    env->playerOffsetY -= 0x1000;

    nextPlayerPosition.y += env->playerOffsetY;
    Sprite_SetPosition(playerSprite, &nextPlayerPosition);
    newPlayerScale.x += 0x100;

    if (newPlayerScale.x > 0x2000) {
        newPlayerScale.x = 0x2000;
    }

    newPlayerScale.y += 0x100;

    if (newPlayerScale.y > 0x2000) {
        newPlayerScale.y = 0x2000;
    }

    Sprite_SetAffineScale(playerSprite, &newPlayerScale);

    // check for animation end
    if (nextBirdPosition.y / FX32_ONE >= 240) {
        env->subState = 2;
        env->state++;
    }

    return 0;
}

static int FlyPickUpPlayer_DoNothing(FlyTaskEnv *env)
{
    return 0;
}

static const FlyAwayTaskFunc sFlyPickUpPlayerFuncs[] = {
    FlyPickUpPlayer_DescendToCenter,
    FlyPickUpPlayer_PrepareForTakeoff,
    FlyPickUpPlayer_AscendToBottomLeft,
    FlyPickUpPlayer_DoNothing
};

static UnkStruct_ov101_021D5D90 *PushPlayerUp(UnkStruct_020711EC *param0, Sprite *sprite)
{
    UnkStruct_ov101_021D5D90 *v0;
    HMCutInWithPlayer1 cutInWithPlayer;
    VecFx32 initialPos = { 0, 0, 0 };

    cutInWithPlayer.playerSprite = sprite;
    v0 = sub_02071330(param0, &sPushPlayerFuncs, &initialPos, 0, &cutInWithPlayer, 129);

    return v0;
}

static void FlyPickUpPlayer_TransferPlayerAnimEnv(UnkStruct_ov101_021D5D90 *param0)
{
    PlayerAnimEnv *v0 = sub_02071598(param0);
    v0->state = 0;
}

static void FlyPickUpPlayer_SetUpPlayerAnimEnv(UnkStruct_ov101_021D5D90 *param0)
{
    VecFx32 playerSpritePosPtr;
    const VecFx32 *playerSpritePos;
    PlayerAnimEnv *env = sub_02071598(param0);

    env->state = 1;
    env->animationPartFinished = FALSE;
    env->positionDeltaIdx = 0;
    env->_ = FALSE;
    env->position.x = 0;
    env->position.y = 0;
    env->position.z = 0;
    playerSpritePos = Sprite_GetPosition(env->playerSprite);
    playerSpritePosPtr = *playerSpritePos;

    sub_020715D4(param0, &playerSpritePosPtr);
    Sprite_SetAnim(env->playerSprite, 5);
}

static void FlyLanding_SetUpPlayerAnimEnv(UnkStruct_ov101_021D5D90 *param0)
{
    VecFx32 spritePosition;
    PlayerAnimEnv *env = sub_02071598(param0);

    env->state = 2;
    env->animationPartFinished = FALSE;
    env->positionDeltaIdx = 0;
    env->_ = FALSE;
    env->position.x = 0;
    env->position.y = 0;
    env->position.z = 0;

    FlyLanding_SetVectorToSpritePosition(env->playerSprite, &spritePosition);

    sub_020715D4(param0, &spritePosition);
    Sprite_SetAnim(env->playerSprite, 4);
}

static int PushPlayer_LoadPlayerAnimationEnv(UnkStruct_ov101_021D5D90 *param0, void *playerAnimEnv)
{
    PlayerAnimEnv *env = playerAnimEnv;
    const HMCutInWithPlayer1 *data = sub_020715BC(param0);

    env->cutIn = data->cutIn;
    env->playerSprite = data->playerSprite;

    return 1;
}

static const fx32 PushPlayer_MoveUpSignificantlyYDeltas[12] = {
    FX32_ONE * -12,
    FX32_ONE * -16,
    FX32_ONE * -20,
    FX32_ONE * -24,
    FX32_ONE * -26,
    FX32_ONE * -28,
    FX32_ONE * -28,
    FX32_ONE * -28,
    FX32_ONE * -26,
    FX32_ONE * -24,
    FX32_ONE * -22,
    FX32_ONE * -20 };

static const fx32 PushPlayer_MoveUpSlightlyYDeltas[4] = {
    FX32_ONE * -4,
    FX32_ONE * -6,
    FX32_ONE * -7,
    FX32_ONE * -8 };

static void PushPlayer_MoveUpSignificantly(UnkStruct_ov101_021D5D90 *param0, PlayerAnimEnv *env)
{
    VecFx32 newPos;

    if (env->animationPartFinished == FALSE) {
        env->position.y = PushPlayer_MoveUpSignificantlyYDeltas[env->positionDeltaIdx];
        sub_020715E4(param0, &newPos);
        newPos.y += env->position.y;
        Sprite_SetPosition(env->playerSprite, &newPos);
        env->positionDeltaIdx++;

        if (env->positionDeltaIdx >= 12) {
            env->positionDeltaIdx = 0;
            env->_ = TRUE;
            env->animationPartFinished++; // setting the flag to 1 = TRUE
        }
    }
}

static void PushPlayer_MoveUpSlightly(UnkStruct_ov101_021D5D90 *param0, PlayerAnimEnv *env)
{
    VecFx32 newPos;

    if (env->animationPartFinished == FALSE) {
        env->position.y = PushPlayer_MoveUpSlightlyYDeltas[env->positionDeltaIdx];
        sub_020715E4(param0, &newPos);
        newPos.y += env->position.y;
        Sprite_SetPosition(env->playerSprite, &newPos);
        env->positionDeltaIdx++;

        if (env->positionDeltaIdx >= 4) {
            env->positionDeltaIdx = 0;
            env->_ = TRUE;
            env->animationPartFinished++; // setting the flag to 1 = TRUE
        }
    }
}

static void PushPlayer_MoveSpriteUp(UnkStruct_ov101_021D5D90 *param0, void *playerAnimEnv)
{
    PlayerAnimEnv *env = playerAnimEnv;

    switch (env->state) {
    case 1: // for fly away
        PushPlayer_MoveUpSignificantly(param0, env);
        break;
    case 2: // for fly landing
        PushPlayer_MoveUpSlightly(param0, env);
        break;
    }
}

static const UnkStruct_ov101_021D86B0 sPushPlayerFuncs = {
    sizeof(PlayerAnimEnv),
    PushPlayer_LoadPlayerAnimationEnv,
    UnkStruct_ov101_021D5D90_DoNothing3,
    PushPlayer_MoveSpriteUp,
    UnkStruct_ov101_021D5D90_DoNothing2
};

// unused
static const UnkStruct_ov101_021D86B0 s_ = {
    sizeof(_Unused),
    NULL,
    UnkStruct_ov101_021D5D90_DoNothing3,
    NULL,
    UnkStruct_ov101_021D5D90_DoNothing2,
};

SysTask *FieldTask_FlyLanding_InitTask(FieldSystem *fieldSystem, int playerGender)
{
    FlyLandingEnv *taskEnv = FlyLanding_AllocFromHeapAtEnd(HEAP_ID_FIELD, sizeof(FlyLandingEnv));

    taskEnv->playerGender = playerGender;
    taskEnv->fieldSystem = fieldSystem;

    SysTask *task = SysTask_Start(SysTask_FlyLanding, taskEnv, 133);
    return task;
}

BOOL FlyLanding_IsAnimFinished(SysTask *sysTask)
{
    FlyLandingEnv *env = SysTask_GetParam(sysTask);
    return env->animationFinished;
}

void FlyLanding_SetTaskDone(SysTask *sysTask)
{
    FlyLandingEnv *env = SysTask_GetParam(sysTask);
    Heap_Free(env);
    SysTask_Done(sysTask);
}

static void SysTask_FlyLanding(SysTask *task, void *taskEnv)
{
    FlyLandingEnv *flyLandingTaskEnv = taskEnv;

    while (sFlyLandingFuncs[flyLandingTaskEnv->state](flyLandingTaskEnv) == TRUE) {
        (void)0;
    }

    if (flyLandingTaskEnv->animationInProgress) {
        if (flyLandingTaskEnv->unk_1D4 != NULL) {
            sub_020713D0(flyLandingTaskEnv->unk_1D4);
        }

        if (flyLandingTaskEnv->unk_18.spriteList != NULL) {
            SpriteList_Update(flyLandingTaskEnv->unk_18.spriteList);
        }
    }
}

static BOOL FlyLanding_HidePlayerMapObj(FlyLandingEnv *taskEnv)
{
    HidePlayerMapObj(taskEnv->fieldSystem, TRUE);
    taskEnv->state++;
    return FALSE;
}

static BOOL FlyLanding_LoadResources(FlyLandingEnv *taskEnv)
{
    taskEnv->unk_1D4 = sub_020711EC(HEAP_ID_FIELD, 32);
    FlyLanding_InitResourceData(&taskEnv->unk_18, 32, 2, 2, 2, 1, 4, 3, 4, 2);

    {
        NARC *narc = FlyLanding_GetCutInNarc();

        FlyLanding_LoadCharResources(&taskEnv->unk_18, narc, 7, 0);
        FlyLanding_LoadPaletteResources(&taskEnv->unk_18, narc, 3, 0);
        FlyLanding_LoadCellResources(&taskEnv->unk_18, narc, 8, 0);

        FlyLanding_RequestCharResources(&taskEnv->unk_18, 0);
        FlyLanding_FreeSpaceForPaletteResources(&taskEnv->unk_18, 0);
        FlyLanding_ReleaseCharResources(&taskEnv->unk_18, 0);
        FlyLanding_ReleasePaletteResources(&taskEnv->unk_18, 0);

        if (taskEnv->playerGender == 0) {
            FlyLanding_LoadCharResources(&taskEnv->unk_18, narc, 13, 2);
            FlyLanding_LoadCellResources(&taskEnv->unk_18, narc, 14, 2);
            FlyLanding_LoadAnimResources(&taskEnv->unk_18, narc, 15, 1);

            FlyLanding_RequestCharResources(&taskEnv->unk_18, 2);
            FlyLanding_ReleaseCharResources(&taskEnv->unk_18, 2);
        } else {
            FlyLanding_LoadCharResources(&taskEnv->unk_18, narc, 16, 2);
            FlyLanding_LoadPaletteResources(&taskEnv->unk_18, narc, 4, 1);
            FlyLanding_LoadCellResources(&taskEnv->unk_18, narc, 17, 2);
            FlyLanding_LoadAnimResources(&taskEnv->unk_18, narc, 18, 1);

            FlyLanding_RequestCharResources(&taskEnv->unk_18, 2);
            FlyLanding_FreeSpaceForPaletteResources(&taskEnv->unk_18, 1);
            FlyLanding_ReleaseCharResources(&taskEnv->unk_18, 2);
            FlyLanding_ReleasePaletteResources(&taskEnv->unk_18, 1);
        }

        NARC_dtor(narc);
    }

    taskEnv->state++;
    return FALSE;
}

static BOOL FlyLanding_InitAnimTasks(FlyLandingEnv *env)
{
    env->playerSprite = FlyLanding_InitPlayerSprite(&env->unk_18, env->playerGender);
    Sprite_SetDrawFlag(env->playerSprite, TRUE);

    env->unk_1D8 = CreateFlyLandingAnimTasks(env->fieldSystem, env->unk_1D4, &env->unk_18, env->playerSprite);
    FlyLanding_InitEnv(env->unk_1D8);

    env->state++;
    env->animationInProgress = TRUE;

    return FALSE;
}

static BOOL FlyLanding_EndTaskIfAnimationEnded(FlyLandingEnv *env)
{
    if (FlyLanding_HasAnimationEnded(env->unk_1D8) != 2) {
        return FALSE;
    }

    FlyLanding_SetTasksDone(env->unk_1D8);
    env->state++;

    return FALSE;
}

static BOOL FlyLanding_CleanupResources(FlyLandingEnv *env)
{
    sub_0207121C(env->unk_1D4);
    FlyLanding_ReleaseResources(&env->unk_18);

    env->animationInProgress = FALSE;
    env->animationFinished = TRUE;
    env->state++;

    return FALSE;
}

static BOOL FlyLanding_DoNothing(FlyLandingEnv *env)
{
    return FALSE;
}

static BOOL (*const sFlyLandingFuncs[])(FlyLandingEnv *) = {
    FlyLanding_HidePlayerMapObj,
    FlyLanding_LoadResources,
    FlyLanding_InitAnimTasks,
    FlyLanding_EndTaskIfAnimationEnded,
    FlyLanding_CleanupResources,
    FlyLanding_DoNothing
};

static void *FlyLanding_AllocFromHeapAtEnd(u32 heapID, int size)
{
    void *ptr = Heap_AllocFromHeapAtEnd(heapID, size);

    GF_ASSERT(ptr != NULL);
    memset(ptr, 0, size);

    return ptr;
}

static void HideAndStopPlayerMapObj(HMCutIn *cutIn, BOOL hidden)
{
    MapObject *playObj = Player_MapObject(cutIn->fieldSystem->playerAvatar);

    MapObject_SetPauseMovementOff(playObj);
    MapObject_SetHidden(playObj, hidden);
}

static int ShowHidePlayerSprite_GetCutInFromContext(UnkStruct_ov101_021D5D90 *param0, void *hmCutInWithPlayer2)
{
    const HMCutInWithPlayer2 *wrapper = sub_020715BC(param0);
    HMCutInWithPlayer2 *destWrapper = hmCutInWithPlayer2;

    *destWrapper = *wrapper;
    return 1;
}

static void ShowHidePlayerSprite_ShowOrHide(UnkStruct_ov101_021D5D90 *param0, void *hmCutInWithPlayer2)
{
    fx32 playerSpriteY, windowMinY, windowMaxY;
    const VecFx32 *playerSpritePosition;
    HMCutInWithPlayer2 *wrapper = hmCutInWithPlayer2;

    playerSpritePosition = Sprite_GetPosition(wrapper->playerSprite);
    playerSpriteY = playerSpritePosition->y;
    windowMinY = wrapper->cutIn->windowY1;
    windowMaxY = wrapper->cutIn->windowY2;

    if (wrapper->cutIn->forceDrawPlayerSprite == FALSE) {
        if (playerSpriteY - (FX32_ONE * 8) >= windowMinY && playerSpriteY + (FX32_ONE * 8) <= windowMaxY) {
            Sprite_SetDrawFlag(wrapper->playerSprite, TRUE);
        } else {
            Sprite_SetDrawFlag(wrapper->playerSprite, FALSE);
        }
    } else {
        Sprite_SetDrawFlag(wrapper->playerSprite, TRUE);
    }
}

static const UnkStruct_ov101_021D86B0 sShowHidePlayerSpriteFuncs = {
    sizeof(HMCutInWithPlayer2),
    ShowHidePlayerSprite_GetCutInFromContext,
    UnkStruct_ov101_021D5D90_DoNothing3,
    ShowHidePlayerSprite_ShowOrHide,
    UnkStruct_ov101_021D5D90_DoNothing2
};

static void CutIn_CreateDrawPlayerSpriteTasks(HMCutIn *cutIn)
{
    VecFx32 initialPosition = { 0, 0, 0 };
    HMCutInWithPlayer2 wrapper;

    wrapper.playerSprite = cutIn->playerSprite;
    wrapper.cutIn = cutIn;

    cutIn->unk_254 = sub_02071330(cutIn->unk_244, &sShowHidePlayerSpriteFuncs, &initialPosition, 0, &wrapper, 134);
}

static void CutIn_SetTaskUnk_254Done(HMCutIn *cutIn)
{
    if (cutIn->unk_254 != NULL) {
        sub_0207136C(cutIn->unk_254);
        cutIn->unk_254 = NULL;
    }
}

static const ResourceLocation sCutInWindParticleChar[1] = {
    { .resourceId = 0x1, .memberIdx = 0xA }
};

static const ResourceLocation sCutInWindParticlePalette[1] = {
    { .resourceId = 0x0, .memberIdx = 0x3 }
};

static const ResourceLocation sCutInWindParticleCell[1] = {
    { .resourceId = 0x1, .memberIdx = 0xB }
};

static const ResourceLocation sCutInWindParticleAnim[1] = {
    { .resourceId = 0x0, .memberIdx = 0xC }
};
