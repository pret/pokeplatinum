#include "overlay006/ov6_02243258.h"

#include "nitro/fx/fx.h"
#include "nitro/fx/fx_const.h"
#include "nitro/types.h"
#include <nitro.h>
#include <string.h>

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
    int someInt; // involved in setting a sprite draw flag
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
    BOOL resourcesLoaded1;
    BOOL resourcesLoaded2;
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
    u8 mode;
    u8 state;
    u8 subState;
    u8 _1;
    int unk_04;
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

typedef struct SomePlayerAnimationEnv {
    int state;
    BOOL animationPartFinished;
    BOOL _; // set, but never read
    int positionDeltaIdx;
    VecFx32 position;
    HMCutIn *cutIn;
    Sprite *playerSprite;
} SomePlayerAnimationEnv;

typedef struct SpriteResourceWithLocation {
    s16 resourceId;
    s16 memberIdx;
    SpriteResource *spriteResource;
} SpriteResourceWithLocation;

typedef struct UnkStruct_ov6_02243258 {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    s8 unk_04;
    s8 unk_05;
    s8 unk_06;
    s8 unk_07;
    SpriteList *spriteList;
    G2dRenderer g2dRenderer;
    SpriteResourceCollection *charLocation;
    SpriteResourceCollection *paletteLocation;
    SpriteResourceCollection *cellLocation;
    SpriteResourceCollection *animLocation;
    SpriteResourceWithLocation *charSourceWrapper;
    SpriteResourceWithLocation *paletteSourceWrapper;
    SpriteResourceWithLocation *cellSourceWrapper;
    SpriteResourceWithLocation *animSourceWrapper;
} UnkStruct_ov6_02243258;

typedef struct FlyLandingEnv {
    int state;
    int animationFinished;
    int _;
    int playerGender;
    BOOL animationInProgress;
    FieldSystem *fieldSystem;
    UnkStruct_ov6_02243258 unk_18;
    Sprite *playerSprite;
    UnkStruct_020711EC *unk_1D4;
    UnkStruct_ov101_021D5D90 *unk_1D8;
    SysTask *unk_1DC;
} FlyLandingEnv;

typedef struct {
    UnkStruct_020711EC *unk_00;
    FieldSystem *fieldSystem;
    Sprite *playerSprite;
    UnkStruct_ov6_02243258 *unk_0C;
} UnkStruct_ov6_02243888;

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
    UnkStruct_ov6_02243888 unk_58;
    Sprite *birdSprite;
    UnkStruct_ov101_021D5D90 *unk_6C;
    SysTask *task;
} FlyLandingEnvExtended;

typedef struct UnkStruct_ov6_02245328 {
    int unk_00;
    int unk_04;
    HMCutIn *cutIn;
    VecFx32 unk_0C;
} UnkStruct_ov6_02245328;

typedef struct UnkStruct_ov6_02245364 {
    int unk_00;
    int animID;
    Sprite *unk_08;
    UnkStruct_ov6_02245328 unk_0C;
} UnkStruct_ov6_02245364;

typedef struct UnkStruct_ov6_0224936C {
    fx32 unk_00;
    fx32 unk_04;
    fx32 unk_08;
    int unk_0C;
    int unk_10;
} UnkStruct_ov6_0224936C;

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

typedef struct HMCutInWithPlayer {
    Sprite *playerSprite;
    HMCutIn *cutIn;
} HMCutInWithPlayer;

static HMCutIn *HMCutIn_New(FieldSystem *fieldSystem);
static void HMCutIn_Free(HMCutIn *cutIn);
static void SysTask_CutIn(SysTask *cutInTask, void *hmCutInPtr);
static void SysTask_CutInFly(SysTask *param0, void *param1);
static void CreateResourceTransferTask(HMCutIn *cutIn);
static void CreateBirdResourceTransferTask(HMCutIn *cutIn);
static void DeleteResourceTransferTask(HMCutIn *cutIn);
static void SysTask_TransferResources(SysTask *dummyTask, void *hmCutInPtr);
static void SysTask_FreeResources(SysTask *task, void *hmCutInPtr);
static void SysTask_TransferBirdResource(SysTask *task, void *hmCutInPtr);
static void SysTask_FinalizeBirdSpriteTransfer(SysTask *task, void *hmCutInPtr);
static void InitSpriteResources(HMCutIn *cutIn);
static void DeleteSprites(HMCutIn *cutIn);
static NARC *GetFieldCutInNarc2(void);
static void LoadSpriteResources(HMCutIn *cutIn, NARC *narc);
static void DeleteSpriteResources(HMCutIn *cutIn);
static void UpdateSpriteList(HMCutIn *cutIn);
static Sprite *CreateSprite(HMCutIn *cutIn, const VecFx32 *position, u32 charResourceID, u32 plttResourceID, u32 cellResourceID, u32 animResourceID, int headerPriority, int listPriority);
static Sprite *ov6_02244CD4(HMCutIn *cutIn, const VecFx32 *position, int listPriority, int animID);
static Sprite *InitPlayerSprite(HMCutIn *cutIn, const VecFx32 *position);
static void StartPlayerAnim(Sprite *sprite);
static Sprite *CreateBirdSprite(HMCutIn *cutIn, const VecFx32 *position, int priority, int dummy);
static void LoadBirdSpriteResources(HMCutIn *cutIn);
static void LoadBgPalette(NARC *narc, u32 memberIndex, NNSG2dPaletteData **plttData);
static void LoadBgPatternChar(BgConfig *bgConfig, NARC *narc, u32 memberIndex, NNSG2dCharacterData **charData);
static void LoadBgPatternPalette(BgConfig *bgConfig, NARC *narc, u32 memberIndex, NNSG2dScreenData **screenData);
static void CleartTileMapBG3(BgConfig *bgConfig);
static void InitCutInWindow(HMCutIn *cutIn);
static void SetWindowMask(HMCutIn *cutIn);
static void ClearWindowMask(HMCutIn *cutIn);
static void InitPlaneMasks(HMCutIn *cutIn);
static void InitPlaneMasksForFly(HMCutIn *cutIn);
static void SetCutInWindowSize(HMCutIn *cutIn, fx32 x1, fx32 y1, fx32 x2, fx32 y2);
static void CreateCutInWindowTask(HMCutIn *cutIn);
static void DeleteWindowTask(HMCutIn *cutIn);
static void SysTask_ShowCutInWindow(SysTask *task, void *hmCutInPtr);
static void BuildMonSpriteTemplate(HMCutIn *cutIn, PokemonSpriteTemplate *spriteTemplate);
static void *GetPokemonSpriteSource(Pokemon *pokemon, PokemonSpriteTemplate *spriteTemplate, u32 heapID);
static void *GetPokemonPaletteSource(PokemonSpriteTemplate *spriteTemplate, u32 heapID);
static SpriteResource *GetParticleCharResource(HMCutIn *cutIn, NARC *narc);
static void LoadPokemonChar(HMCutIn *cutIn, void *pokemonSpriteSource);
static SpriteResource *GetPlayerMalePlttResource(HMCutIn *cutIn, NARC *narc);
static void LoadPokemonSpritePalette(HMCutIn *cutIn, void *paletteSource);
static void UnloadPokemonSpriteResources(HMCutIn *cutIn);
static Sprite *InitMonSprite(HMCutIn *cutIn, const VecFx32 *position);
static void ov6_022452BC(HMCutIn *cutIn, int param1);
static void ov6_02245328(HMCutIn *cutIn, const VecFx32 *param1, const VecFx32 *param2, int param3, int param4, int param5);
static void CreateFlyTasks(HMCutIn *cutIn);
static void CreateFlyTasks(HMCutIn *cutIn);
static int GetSubState(HMCutIn *cutIn);
static void ov6_02245480(HMCutIn *cutIn);
static void InitBirdSpritePos(HMCutIn *cutIn);
static void PrepareBirdForDescent(HMCutIn *cutIn);
static UnkStruct_ov101_021D5D90 *ov6_02245B4C(UnkStruct_020711EC *param0, Sprite *sprite);
static void InitSomePlayerAnimationEnv(UnkStruct_ov101_021D5D90 *param0);
static void ov6_02245B80(UnkStruct_ov101_021D5D90 *param0);
static void ov6_02245BC8(UnkStruct_ov101_021D5D90 *param0);
static void HideAndStopPlayerMapObj(HMCutIn *cutIn, BOOL hidden);
static void CreateDrawCutInPlayerSpriteTasks(HMCutIn *cutIn);
static void ov6_02246018(HMCutIn *cutIn);
static void FadeIn(void);
static void FadeOut(void);
static void *AllocFromHeapAtEnd(u32 heapID, int size);
static void HidePlayerMapObj(FieldSystem *fieldSystem, BOOL hidden);
static void FlyLandingTask(SysTask *task, void *taskEnv);

typedef int (*CutInTaskFunc)(HMCutIn *);
typedef int (*FlyTaskFunc)(FlyTaskEnv *);
typedef int (*FlyLandingTaskFunc)(FlyLandingEnv *);
static const CutInTaskFunc sCutInTaskFuncs[];
static const CutInTaskFunc sCutInTaskFuncsFly[];
static const FlyTaskFunc *const sFlyTaskFuncCollection[];
static const FlyTaskFunc sFlyTaskFuncsUnused[];
static const FlyTaskFunc sFlyTaskFuncsAscent[];
static const FlyTaskFunc sFlyTaskFuncsDescentFlyAway[];
static const FlyLandingTaskFunc FlyLandingFuncs[];
static const UnkStruct_ov101_021D86B0 sFlyTaskFuncContainer;
static const UnkStruct_ov101_021D86B0 PushPlayerSpriteUpFuncs;
static const ResourceLocation sCutInCloudChar[1];
static const ResourceLocation sCutInCloudPltt[1];
static const ResourceLocation sCutInCloudCell[1];
static const ResourceLocation sCutInCloudAnim[1];

static void ov6_02243258(UnkStruct_ov6_02243258 *param0, int maxSpriteListElements, int param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9)
{
    int i;

    param0->unk_00 = param2; // resource count
    param0->unk_01 = param3; // resource count
    param0->unk_02 = param4; // resource count
    param0->unk_03 = param5; // resource count
    param0->unk_04 = param6; // resourceId for checks
    param0->unk_05 = param7; // resourceId for checks
    param0->unk_06 = param8; // resourceId for checks
    param0->unk_07 = param9; // resourceId for checks
    param0->spriteList = SpriteList_InitRendering(maxSpriteListElements, &param0->g2dRenderer, HEAP_ID_FIELD);

    SetSubScreenViewRect(&param0->g2dRenderer, 0, FX32_CONST(512));

    param0->charLocation = SpriteResourceCollection_New(param2, SPRITE_RESOURCE_CHAR, HEAP_ID_FIELD);
    param0->paletteLocation = SpriteResourceCollection_New(param3, SPRITE_RESOURCE_PLTT, HEAP_ID_FIELD);
    param0->cellLocation = SpriteResourceCollection_New(param4, SPRITE_RESOURCE_CELL, HEAP_ID_FIELD);
    param0->animLocation = SpriteResourceCollection_New(param5, SPRITE_RESOURCE_ANIM, HEAP_ID_FIELD);
    param0->charSourceWrapper = AllocFromHeapAtEnd(HEAP_ID_FIELD, (sizeof(SpriteResourceWithLocation)) * param2);
    param0->paletteSourceWrapper = AllocFromHeapAtEnd(HEAP_ID_FIELD, (sizeof(SpriteResourceWithLocation)) * param3);
    param0->cellSourceWrapper = AllocFromHeapAtEnd(HEAP_ID_FIELD, (sizeof(SpriteResourceWithLocation)) * param4);
    param0->animSourceWrapper = AllocFromHeapAtEnd(HEAP_ID_FIELD, (sizeof(SpriteResourceWithLocation)) * param5);

    for (i = 0; i < param2; param0->charSourceWrapper[i].resourceId = param6, i++) {
        (void)0;
    }

    for (i = 0; i < param3; param0->paletteSourceWrapper[i].resourceId = param7, i++) {
        (void)0;
    }

    for (i = 0; i < param4; param0->cellSourceWrapper[i].resourceId = param8, i++) {
        (void)0;
    }

    for (i = 0; i < param5; param0->animSourceWrapper[i].resourceId = param9, i++) {
        (void)0;
    }
}

static void ov6_0224339C(UnkStruct_ov6_02243258 *param0)
{
    int i;

    for (i = 0; i < param0->unk_00; i++) {
        if (param0->charSourceWrapper[i].resourceId != param0->unk_04) {
            SpriteTransfer_ResetCharTransfer(param0->charSourceWrapper[i].spriteResource);
        }
    }

    for (i = 0; i < param0->unk_01; i++) {
        if (param0->paletteSourceWrapper[i].resourceId != param0->unk_05) {
            SpriteTransfer_ResetPlttTransfer(param0->paletteSourceWrapper[i].spriteResource);
        }
    }

    for (i = 0; i < param0->unk_02; i++) {
        if (param0->cellSourceWrapper[i].resourceId != param0->unk_06) {
            SpriteResource_ReleaseData(param0->cellSourceWrapper[i].spriteResource);
        }
    }

    for (i = 0; i < param0->unk_03; i++) {
        if (param0->animSourceWrapper[i].resourceId != param0->unk_07) {
            SpriteResource_ReleaseData(param0->animSourceWrapper[i].spriteResource);
        }
    }

    SpriteResourceCollection_Delete(param0->charLocation);
    SpriteResourceCollection_Delete(param0->paletteLocation);
    SpriteResourceCollection_Delete(param0->cellLocation);
    SpriteResourceCollection_Delete(param0->animLocation);
    Heap_Free(param0->charSourceWrapper);
    Heap_Free(param0->paletteSourceWrapper);
    Heap_Free(param0->cellSourceWrapper);
    Heap_Free(param0->animSourceWrapper);
    SpriteList_DeleteAll(param0->spriteList);
    SpriteList_Delete(param0->spriteList);
}

static void ov6_022434B0(UnkStruct_ov6_02243258 *param0, NARC *narc, int memberIdx, int resourceId)
{
    int i;

    for (i = 0; i < param0->unk_00; i++) {
        if (param0->charSourceWrapper[i].resourceId == param0->unk_04) {
            param0->charSourceWrapper[i].resourceId = resourceId;
            param0->charSourceWrapper[i].memberIdx = 0;
            param0->charSourceWrapper[i].spriteResource = SpriteResourceCollection_AddTilesFrom(param0->charLocation, narc, memberIdx, FALSE, resourceId, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_FIELD);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void ov6_02243520(UnkStruct_ov6_02243258 *param0, int resourceId)
{
    int i;

    for (i = 0; i < param0->unk_00; i++) {
        if (param0->charSourceWrapper[i].resourceId == resourceId) {
            SpriteTransfer_RequestCharAtEnd(param0->charSourceWrapper[i].spriteResource);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void ov6_02243554(UnkStruct_ov6_02243258 *param0, int param1)
{
    int i;

    for (i = 0; i < param0->unk_00; i++) {
        if (param0->charSourceWrapper[i].resourceId == param1) {
            SpriteResource_ReleaseData(param0->charSourceWrapper[i].spriteResource);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void ov6_02243588(UnkStruct_ov6_02243258 *param0, NARC *narc, int memberIdx, int resourceId)
{
    int i;

    for (i = 0; i < param0->unk_00; i++) {
        if (param0->paletteSourceWrapper[i].resourceId == param0->unk_05) {
            param0->paletteSourceWrapper[i].resourceId = resourceId;
            param0->paletteSourceWrapper[i].memberIdx = 0;
            param0->paletteSourceWrapper[i].spriteResource = SpriteResourceCollection_AddPaletteFrom(param0->paletteLocation, narc, memberIdx, FALSE, resourceId, NNS_G2D_VRAM_TYPE_2DMAIN, 1, 4);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void ov6_022435F8(UnkStruct_ov6_02243258 *param0, int resourceId)
{
    int i;

    for (i = 0; i < param0->unk_01; i++) {
        if (param0->paletteSourceWrapper[i].resourceId == resourceId) {
            SpriteTransfer_RequestPlttFreeSpace(param0->paletteSourceWrapper[i].spriteResource);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void ov6_0224362C(UnkStruct_ov6_02243258 *param0, int resourceId)
{
    int i;

    for (i = 0; i < param0->unk_01; i++) {
        if (param0->paletteSourceWrapper[i].resourceId == resourceId) {
            SpriteResource_ReleaseData(param0->paletteSourceWrapper[i].spriteResource);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void ov6_02243660(UnkStruct_ov6_02243258 *param0, NARC *narc, int memberIdx, int resourceId)
{
    int i;

    for (i = 0; i < param0->unk_00; i++) {
        if (param0->cellSourceWrapper[i].resourceId == param0->unk_06) {
            param0->cellSourceWrapper[i].resourceId = resourceId;
            param0->cellSourceWrapper[i].memberIdx = 0;
            param0->cellSourceWrapper[i].spriteResource = SpriteResourceCollection_AddFrom(param0->cellLocation, narc, memberIdx, FALSE, resourceId, 2, 4);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void ov6_022436D0(UnkStruct_ov6_02243258 *param0, NARC *narc, int memberIdx, int resourceId)
{
    int i;

    for (i = 0; i < param0->unk_00; i++) {
        if (param0->animSourceWrapper[i].resourceId == param0->unk_07) {
            param0->animSourceWrapper[i].resourceId = resourceId;
            param0->animSourceWrapper[i].memberIdx = 0;
            param0->animSourceWrapper[i].spriteResource = SpriteResourceCollection_AddFrom(param0->animLocation, narc, memberIdx, FALSE, resourceId, 3, 4);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static Sprite *CreateSprite2(UnkStruct_ov6_02243258 *param0, const VecFx32 *position, u32 charResourceID, u32 paletteResourceID, u32 cellResourceID, u32 animResourceID, int headerPriority, int listPriority)
{
    SpriteResourcesHeader resourceHeader;
    SpriteListTemplate spriteListTemplate;
    Sprite *sprite;

    if (animResourceID == param0->unk_07) {
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
        param0->charLocation,
        param0->paletteLocation,
        param0->cellLocation,
        param0->animLocation,
        NULL,
        NULL);

    spriteListTemplate.list = param0->spriteList;
    spriteListTemplate.resourceData = &resourceHeader;
    spriteListTemplate.position = *position;
    spriteListTemplate.priority = listPriority;
    spriteListTemplate.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    spriteListTemplate.heapID = HEAP_ID_FIELD;

    sprite = SpriteList_Add(&spriteListTemplate);
    GF_ASSERT(sprite != NULL);

    return sprite;
}

static void SetVectorToSpritePosition(Sprite *sprite, VecFx32 *vectorToSet)
{
    const VecFx32 *spritePosition = Sprite_GetPosition(sprite);
    *vectorToSet = *spritePosition;
}

static Sprite *InitBirdSprite(UnkStruct_ov6_02243258 *param0)
{
    Sprite *sprite;
    VecFx32 coordinateVector = { 0, 0, 0 };
    VecFx32 translationVector = { 0, 0, 0 };
    VecFx32 scalingVector = { 0x1000, 0x1000, 0 };

    sprite = CreateSprite2(param0, &coordinateVector, 0, 0, 0, 2, 0, 132);

    Sprite_SetAffineOverwriteMode(sprite, AFFINE_OVERWRITE_MODE_DOUBLE);
    Sprite_SetAffineTranslation(sprite, &translationVector);
    Sprite_SetAffineScale(sprite, &scalingVector);
    Sprite_SetAffineZRotation(sprite, CalcAngleRotationIdx_Wraparound(0));

    return sprite;
}

static Sprite *FlyLanding_InitPlayerSprite(UnkStruct_ov6_02243258 *param0, int playerGender)
{
    VecFx32 initPosition = { 0, 0, 0 };
    Sprite *playerSprite;
    u32 paletteResourceId = 0;

    if (playerGender == 1) {
        paletteResourceId = 1;
    }

    playerSprite = CreateSprite2(param0, &initPosition, 2, paletteResourceId, 2, 1, 0, 131);

    Sprite_SetDrawFlag(playerSprite, FALSE);
    Sprite_SetAnim(playerSprite, 6);

    return playerSprite;
}

static const UnkStruct_ov101_021D86B0 FlyLandingAnimWrapperFuncs;
int (*const *const FlyLandingAnimFuncCollections[])(FlyLandingEnvExtended *);

static UnkStruct_ov101_021D5D90 *CreateFlyLandingAnimTasks(FieldSystem *fieldSystem, UnkStruct_020711EC *param1, UnkStruct_ov6_02243258 *param2, Sprite *playerSprite)
{
    UnkStruct_ov101_021D5D90 *v0;
    VecFx32 v1 = { 0, 0, 0 };
    UnkStruct_ov6_02243888 v2;

    v2.fieldSystem = fieldSystem;
    v2.unk_00 = param1;
    v2.unk_0C = param2;
    v2.playerSprite = playerSprite;

    v0 = sub_02071330(param1, &FlyLandingAnimWrapperFuncs, &v1, 0, &v2, 130);

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

static int FlyLandingAnimWrapper_InitBirdSprite(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    FlyLandingEnvExtended *env = param1;
    const UnkStruct_ov6_02243888 *v1 = sub_020715BC(param0);

    env->unk_58 = *v1;
    env->birdSprite = InitBirdSprite(env->unk_58.unk_0C);

    return 1;
}

static void ov6_022438EC(UnkStruct_ov101_021D5D90 *param0)
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

static void FlyLandingAnimWrapper_DeleteBirdSprite(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    FlyLandingEnvExtended *v0 = param1;
    Sprite_Delete(v0->birdSprite);
}

static void FlyLandingAnimWrapper_RunFlyLandingAnim(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    FlyLandingEnvExtended *env = param1;
    int (*const *funcs)(FlyLandingEnvExtended *);

    funcs = FlyLandingAnimFuncCollections[env->stage];

    while (funcs[env->state](env) == 1) {
        (void)0;
    }
}

static const UnkStruct_ov101_021D86B0 FlyLandingAnimWrapperFuncs = {
    (sizeof(FlyLandingEnvExtended)),
    FlyLandingAnimWrapper_InitBirdSprite,
    FlyLandingAnimWrapper_DeleteBirdSprite,
    FlyLandingAnimWrapper_RunFlyLandingAnim,
    UnkStruct_ov101_021D5D90_DoNothing2
};

static int HideBirdSprite(FlyLandingEnvExtended *param0)
{
    param0->hasEndedIfTwo = 0;
    Sprite_SetDrawFlag(param0->birdSprite, FALSE);
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

    env->unk_6C = ov6_02245B4C(env->unk_58.unk_00, env->unk_58.playerSprite);
    env->task = ov5_021F0EB0(env->unk_58.fieldSystem, HEAP_ID_FIELD);

    ov5_021F0F10(env->task, 1, -(FX32_ONE * 120), 12);

    Sprite *playerSprite;
    VecFx32 playerTranslation = { 0, 0, 0 };
    VecFx32 playerScale = { 0x2000, 0x2000, 0 };

    playerSprite = env->unk_58.playerSprite;

    Sprite_SetAffineOverwriteMode(playerSprite, 2);
    Sprite_SetAffineTranslation(playerSprite, &playerTranslation);
    Sprite_SetAffineScale(playerSprite, &playerScale);
    Sprite_SetAffineZRotation(playerSprite, CalcAngleRotationIdx_Wraparound(0));
    Sprite_SetAnim(playerSprite, 2);

    FadeIn();
}

static int FlyLandingAnim_SetUpSprites(FlyLandingEnvExtended *env)
{
    VecFx32 newPos;
    Sprite *birdSprite = env->birdSprite;
    Sprite *playerSprite = env->unk_58.playerSprite;

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

static int FlyLandingAnim_SetUpEnv(FlyLandingEnvExtended *env)
{
    ov6_02245BC8(env->unk_6C);
    ov5_021F0F10(env->task, 2, 0, 12);

    env->scaleDelta = 0x400;
    env->angleParam = FX32_ONE * 128;
    env->pathParam = 0;
    env->pathDelta = 0x1800;
    env->state++;

    return 1;
}

static int FlyLandingAnim_FlyUpLeft(FlyLandingEnvExtended *env)
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
    Sprite_SetAnim(env->unk_58.playerSprite, 1);

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
    Sprite_SetAnim(env->unk_58.playerSprite, 6);
    Sprite_SetAnimateFlag(env->unk_58.playerSprite, TRUE);

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
        Sprite_SetAnim(env->unk_58.playerSprite, 1);
        HidePlayerMapObj(env->unk_58.fieldSystem, FALSE); // show player on map again
    }

    if (env->subState == 10) {
        Sprite_SetDrawFlag(env->unk_58.playerSprite, FALSE);
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
    FlyLandingAnim_SetUpSprites,
    FlyLandingAnim_SetUpEnv,
    FlyLandingAnim_FlyUpLeft,
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

static NARC *GetFieldCutInNarc1(void)
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

SysTask *SysTask_CutIn_New(FieldSystem *fieldSystem, BOOL isNotFly, Pokemon *shownPokemon, int playerGender)
{
    SysTask *task;
    HMCutIn *cutIn = HMCutIn_New(fieldSystem);

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

int CheckCutInFinished(SysTask *cutInTask)
{
    HMCutIn *cutIn = SysTask_GetParam(cutInTask);
    return cutIn->isFinished;
}

void SysTask_CutIn_Done(SysTask *cutInTask)
{
    HMCutIn *cutIn = SysTask_GetParam(cutInTask);

    HMCutIn_Free(cutIn);
    SysTask_Done(cutInTask);
}

static HMCutIn *HMCutIn_New(FieldSystem *fieldSystem)
{
    HMCutIn *cutIn = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELD, sizeof(HMCutIn));

    memset(cutIn, 0, sizeof(HMCutIn));
    cutIn->fieldSystem = fieldSystem;

    return cutIn;
}

static void HMCutIn_Free(HMCutIn *cutIn)
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

        UpdateSpriteList(cutIn);
    }
}

static BOOL SubTask_HMCutIn_Init(HMCutIn *cutIn)
{
    InitSpriteResources(cutIn);
    CreateResourceTransferTask(cutIn);
    cutIn->state++;
    return FALSE;
}

static BOOL SubTask_HMCutIn_InitSprites(HMCutIn *cutIn)
{
    if (cutIn->resourcesLoaded2 == FALSE) {
        return FALSE;
    }

    VecFx32 playerSpritePosition = { FX32_ONE * 128, FX32_ONE * 96, 0 };
    VecFx32 pokemonSpritePosition = { FX32_ONE * (256 + 40), FX32_ONE * 96, 0 };

    cutIn->playerSprite = InitPlayerSprite(cutIn, &playerSpritePosition);
    cutIn->pokemonSprite = InitMonSprite(cutIn, &pokemonSpritePosition);

    ov6_022452BC(cutIn, 1);
    DeleteResourceTransferTask(cutIn);

    cutIn->updateSprites = TRUE;
    cutIn->state++;

    return TRUE;
}

static BOOL SubTask_HMCutIn_InitWindowAndPlayerSprite(HMCutIn *cutIn)
{
    CreateDrawCutInPlayerSpriteTasks(cutIn);

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

static BOOL SubTask_HMCutIn_WindowExpandX(HMCutIn *cutIn)
{
    cutIn->updateWindow = FALSE;
    cutIn->windowX1 += cutIn->windowDelta;

    if (cutIn->windowX1 <= 0) {
        cutIn->windowX1 = 0;
        cutIn->windowDelta = 0x2000;
        cutIn->state++;
    }

    SetCutInWindowSize(cutIn, cutIn->windowX1, cutIn->windowY1, cutIn->windowX2, cutIn->windowY2);
    cutIn->updateWindow = TRUE;

    return FALSE;
}

static BOOL SubTask_HMCutIn_WindowExpandY(HMCutIn *cutIn)
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

    SetCutInWindowSize(cutIn, cutIn->windowX1, cutIn->windowY1, cutIn->windowX2, cutIn->windowY2);
    cutIn->updateWindow = TRUE;

    if ((cutIn->windowY1 == (FX32_ONE * (96 - 40))) && (cutIn->windowY2 == (FX32_ONE * (96 + 40)))) {
        StartPlayerAnim(cutIn->playerSprite);
        cutIn->state++;
    }

    return FALSE;
}

static BOOL SubTask_HMCutIn_SlideInSpeedUp(HMCutIn *cutIn)
{
    cutIn->subState++;

    if (cutIn->subState >= 15) {
        cutIn->subState = 0;
        cutIn->pokemonSpriteDeltaX = (FX32_ONE * -64);
        cutIn->state++;
    }

    return FALSE;
}

static BOOL SubTask_HMCutIn_SlideMonIn(HMCutIn *cutIn)
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

static BOOL SubTask_HMCutIn_SlideMonToCenter(HMCutIn *cutIn)
{
    const VecFx32 *monSpritePosition;
    VecFx32 position;

    cutIn->pokemonSpriteDeltaX /= 2;

    // Pokemon sprite has reached the center of the screen
    if (cutIn->pokemonSpriteDeltaX > (FX32_ONE * -2)) {
        cutIn->pokemonSpriteDeltaX = (FX32_ONE * -2);
        cutIn->state++;

        Pokemon_PlayCry(cutIn->pokemon);
    }

    monSpritePosition = Sprite_GetPosition(cutIn->pokemonSprite);
    position = *monSpritePosition;
    position.x += cutIn->pokemonSpriteDeltaX;

    Sprite_SetPosition(cutIn->pokemonSprite, &position);
    return FALSE;
}

static BOOL SubTask_HMCutIn_SlideOutSpeedUp(HMCutIn *cutIn)
{
    cutIn->subState++;

    if (cutIn->subState >= 8) {
        cutIn->subState = 0;
        cutIn->pokemonSpriteDeltaX = (FX32_ONE * -1);
        cutIn->state++;
    }

    return FALSE;
}

static BOOL SubTask_HMCutIn_SlideMonOut(HMCutIn *cutIn)
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

static BOOL SubTask_HMCutIn_WindowShrinkY(HMCutIn *cutIn)
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

    SetCutInWindowSize(cutIn, cutIn->windowX1, cutIn->windowY1, cutIn->windowX2, cutIn->windowY2);
    cutIn->updateWindow = 1;

    if ((cutIn->windowY1 == (FX32_ONE * (96 - 8))) && (cutIn->windowY2 == (FX32_ONE * (96 + 8)))) {
        ov6_02246018(cutIn);
        cutIn->state++;
    }

    return FALSE;
}

static BOOL SubTask_HMCutIn_DeleteSprites(HMCutIn *cutIn)
{
    DeleteSprites(cutIn);
    cutIn->updateSprites = FALSE;
    cutIn->state++;
    return FALSE;
}

static BOOL SubTask_HMCutIn_WindowTaskDone(HMCutIn *cutIn)
{
    DeleteWindowTask(cutIn);
    cutIn->state++;
    return FALSE;
}

static BOOL SubTask_HMCutIn_Done(HMCutIn *cutIn)
{
    cutIn->isFinished = TRUE;
    return FALSE;
}

static const CutInTaskFunc sCutInTaskFuncs[] = {
    SubTask_HMCutIn_Init,
    SubTask_HMCutIn_InitSprites,
    SubTask_HMCutIn_InitWindowAndPlayerSprite,
    SubTask_HMCutIn_WindowExpandX,
    SubTask_HMCutIn_WindowExpandY,
    SubTask_HMCutIn_SlideInSpeedUp,
    SubTask_HMCutIn_SlideMonIn,
    SubTask_HMCutIn_SlideMonToCenter,
    SubTask_HMCutIn_SlideOutSpeedUp,
    SubTask_HMCutIn_SlideMonOut,
    SubTask_HMCutIn_WindowShrinkY,
    SubTask_HMCutIn_DeleteSprites,
    SubTask_HMCutIn_WindowTaskDone,
    SubTask_HMCutIn_Done
};

static void SysTask_CutInFly(SysTask *sysTask, void *param1)
{
    int ret;
    HMCutIn *cutIn = param1;

    do {
        ret = sCutInTaskFuncsFly[cutIn->state](cutIn);
    } while (ret == TRUE);

    if (cutIn->updateSprites == TRUE) {
        if (cutIn->unk_244 != NULL) {
            sub_020713D0(cutIn->unk_244);
        }

        UpdateSpriteList(cutIn);
    }
}

// Identical to SubTask_HMCutIn_InitSprites
static BOOL SubTask_HMCutIn_InitSpritesFly(HMCutIn *cutIn)
{
    if (cutIn->resourcesLoaded2 == FALSE) {
        return FALSE;
    }

    VecFx32 playerSpritePosition = { (FX32_ONE * 128), FX32_ONE * 96, 0 };
    VecFx32 monSpritePosition = { (FX32_ONE * (256 + 40)), FX32_ONE * 96, 0 };

    cutIn->playerSprite = InitPlayerSprite(cutIn, &playerSpritePosition);
    cutIn->pokemonSprite = InitMonSprite(cutIn, &monSpritePosition);

    ov6_022452BC(cutIn, 1);
    DeleteResourceTransferTask(cutIn);

    cutIn->updateSprites = TRUE;
    cutIn->state++;

    return TRUE;
}

static BOOL SubTask_HMCutIn_UnloadMonSprite(HMCutIn *cutIn)
{
    UnloadPokemonSpriteResources(cutIn);
    cutIn->state++;
    return FALSE;
}

static BOOL SubTask_HMCutIn_LoadBirdSprite(HMCutIn *cutIn)
{
    LoadBirdSpriteResources(cutIn);
    CreateBirdResourceTransferTask(cutIn);
    cutIn->state++;
    return FALSE;
}

static BOOL SubTask_HMCutIn_WaitResourceTransfer(HMCutIn *cutIn)
{
    if (cutIn->resourcesLoaded2 == FALSE) {
        return FALSE;
    }

    DeleteResourceTransferTask(cutIn);

    cutIn->state++;
    return TRUE;
}

static BOOL SubTask_HMCutIn_InitFlyBird(HMCutIn *cutIn)
{
    CreateFlyTasks(cutIn);
    InitBirdSpritePos(cutIn);
    InitPlaneMasksForFly(cutIn);
    HideAndStopPlayerMapObj(cutIn, TRUE);
    cutIn->state++;
    return FALSE;
}

static BOOL SubTask_HMCutIn_CallBirdAnim(HMCutIn *cutIn)
{
    if (GetSubState(cutIn) != 2) {
        return FALSE;
    }

    Sprite_SetAnim(cutIn->playerSprite, 1);
    cutIn->state++;

    return FALSE;
}

static BOOL SubTask_HMCutIn_PrepareDescent(HMCutIn *cutIn)
{
    cutIn->subState++;

    if (cutIn->subState >= 20) {
        cutIn->subState = 0;
        cutIn->state++;

        PrepareBirdForDescent(cutIn);
    }

    return TRUE;
}

static BOOL SubTask_HMCutIn_PlaySwooshSound(HMCutIn *cutIn)
{
    if (GetSubState(cutIn) != 3) {
        return FALSE;
    }

    Sound_PlayEffect(SEQ_SE_DP_FW019);

    cutIn->windowDelta = FX32_CONST(0.5);
    cutIn->someInt = 2;
    cutIn->state++;

    return TRUE;
}

static BOOL SubTask_HMCutIn_SlideOutWindow(HMCutIn *cutIn)
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

    SetCutInWindowSize(cutIn, cutIn->windowX1, cutIn->windowY1, cutIn->windowX2, cutIn->windowY2);
    cutIn->updateWindow = TRUE;

    if (cutIn->screenFaded == FALSE) {
        if (GetSubState(cutIn) == 4) {
            cutIn->screenFaded = TRUE;
            FadeOut();
        }
    }

    if ((cutIn->windowY1 == (FX32_ONE * (96 - 1))) && (cutIn->windowY2 == (FX32_ONE * (96 + 1)))) {
        CleartTileMapBG3(cutIn->fieldSystem->bgConfig);
        cutIn->someInt = 1;
        ClearWindowMask(cutIn);
        cutIn->state++;
    }

    return FALSE;
}

static BOOL SubTask_HMCutIn_FadeOut(HMCutIn *cutIn)
{
    if (cutIn->screenFaded == FALSE) {
        if (GetSubState(cutIn) == 4) {
            cutIn->screenFaded = TRUE;
            FadeOut();
        }
    }

    if (GetSubState(cutIn) != 2) {
        return FALSE;
    }

    if (cutIn->screenFaded == FALSE) {
        cutIn->screenFaded = TRUE;
        FadeOut();
    }

    ov6_02245480(cutIn);
    cutIn->state++;
    return FALSE;
}

static BOOL SubTask_HMCutIn_CheckFadeOutComplete(HMCutIn *cutIn)
{
    if (IsScreenFadeDone()) {
        cutIn->state++;
    }

    return FALSE;
}

static const CutInTaskFunc sCutInTaskFuncsFly[] = {
    SubTask_HMCutIn_Init,
    SubTask_HMCutIn_InitSpritesFly,
    SubTask_HMCutIn_InitWindowAndPlayerSprite,
    SubTask_HMCutIn_WindowExpandX,
    SubTask_HMCutIn_WindowExpandY,
    SubTask_HMCutIn_SlideInSpeedUp,
    SubTask_HMCutIn_SlideMonIn,
    SubTask_HMCutIn_SlideMonToCenter,
    SubTask_HMCutIn_SlideOutSpeedUp,
    SubTask_HMCutIn_SlideMonOut,
    SubTask_HMCutIn_UnloadMonSprite,
    SubTask_HMCutIn_LoadBirdSprite,
    SubTask_HMCutIn_WaitResourceTransfer,
    SubTask_HMCutIn_InitFlyBird,
    SubTask_HMCutIn_CallBirdAnim,
    SubTask_HMCutIn_PrepareDescent,
    SubTask_HMCutIn_PlaySwooshSound,
    SubTask_HMCutIn_SlideOutWindow,
    SubTask_HMCutIn_FadeOut,
    SubTask_HMCutIn_CheckFadeOutComplete,
    SubTask_HMCutIn_DeleteSprites,
    SubTask_HMCutIn_WindowTaskDone,
    SubTask_HMCutIn_Done
};

static void CreateResourceTransferTask(HMCutIn *cutIn)
{
    cutIn->resourcesLoaded1 = FALSE;
    cutIn->resourcesLoaded2 = FALSE;
    cutIn->resourceTransferTask = SysTask_ExecuteOnVBlank(SysTask_TransferResources, cutIn, 0x80);
}

static void CreateBirdResourceTransferTask(HMCutIn *cutIn)
{
    cutIn->resourcesLoaded1 = FALSE;
    cutIn->resourcesLoaded2 = FALSE;
    cutIn->resourceTransferTask = SysTask_ExecuteOnVBlank(SysTask_TransferBirdResource, cutIn, 0x80);
}

static void DeleteResourceTransferTask(HMCutIn *cutIn)
{
    if (cutIn->resourceTransferTask != NULL) {
        SysTask_Done(cutIn->resourceTransferTask);
        cutIn->resourceTransferTask = NULL;
    }
}

static void SysTask_TransferResources(SysTask *dummyTask, void *hmCutInPtr)
{
    int i;
    HMCutIn *cutIn = hmCutInPtr;

    if (cutIn->resourcesLoaded1 == FALSE) {
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
            LoadPokemonChar(cutIn, cutIn->pokemonCharSource);
        }

        if (cutIn->pokemonPaletteSource != NULL) {
            LoadPokemonSpritePalette(cutIn, cutIn->pokemonPaletteSource);
        }

        cutIn->resourcesLoaded1++; // setting the flag to 1 = TRUE
        SysTask_ExecuteAfterVBlank(SysTask_FreeResources, cutIn, 0x80);
    }
}

static void SysTask_FreeResources(SysTask *task, void *hmCutInPtr)
{
    int i;
    HMCutIn *cutIn = hmCutInPtr;

    if (cutIn->resourcesLoaded1 == TRUE) {
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

        cutIn->resourcesLoaded2 = TRUE;
        SysTask_Done(task);
    }
}

static void SysTask_TransferBirdResource(SysTask *task, void *hmCutInPtr)
{
    HMCutIn *cutIn = hmCutInPtr;
    SpriteResource *charResource = SpriteResourceCollection_Find(cutIn->charLocation, 0);

    if (cutIn->resourcesLoaded1 == FALSE) {
        SpriteTransfer_RequestCharAtEnd(charResource);
        SysTask_ExecuteAfterVBlank(SysTask_FinalizeBirdSpriteTransfer, cutIn, 0x80);
        cutIn->resourcesLoaded1++; // setting the flag to 1 = TRUE
    }
}

static void SysTask_FinalizeBirdSpriteTransfer(SysTask *task, void *hmCutInPtr)
{
    HMCutIn *cutIn = hmCutInPtr;
    SpriteResource *charSource = SpriteResourceCollection_Find(cutIn->charLocation, 0);

    if (cutIn->resourcesLoaded1 == TRUE) {
        SpriteResource_ReleaseData(charSource);
        cutIn->resourcesLoaded2 = TRUE;
        SysTask_Done(task);
    }
}

static void InitSpriteResources(HMCutIn *cutIn)
{
    NARC *narc = GetFieldCutInNarc2();

    SetCutInWindowSize(cutIn, FX32_ONE * 0, FX32_ONE * 192, FX32_ONE * 1, FX32_ONE * 192);
    InitCutInWindow(cutIn);

    cutIn->bg0Priority = Bg_GetPriority(cutIn->fieldSystem->bgConfig, BG_LAYER_MAIN_0);
    cutIn->bg3Priority = Bg_GetPriority(cutIn->fieldSystem->bgConfig, BG_LAYER_MAIN_3);

    G2_SetBG1Priority(1);
    G2_SetBG3Priority(0);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, FALSE);

    LoadBgPalette(narc, 2, &cutIn->g2dPaletteData);
    LoadBgPatternChar(cutIn->fieldSystem->bgConfig, narc, 0, &cutIn->g2dCharData);
    LoadBgPatternPalette(cutIn->fieldSystem->bgConfig, narc, 1, &cutIn->g2dScreenData);
    LoadSpriteResources(cutIn, narc);

    NARC_dtor(narc);
    cutIn->unk_244 = sub_020711EC(HEAP_ID_FIELD, 32);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
}

static void DeleteSprites(HMCutIn *cutIn)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
    sub_0207121C(cutIn->unk_244);

    CleartTileMapBG3(cutIn->fieldSystem->bgConfig);
    DeleteSpriteResources(cutIn);

    G2_SetBG0Priority(cutIn->bg0Priority);
    G2_SetBG3Priority(cutIn->bg3Priority);

    FieldMessage_LoadTextPalettes(0, TRUE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
}

static NARC *GetFieldCutInNarc2(void)
{
    return NARC_ctor(NARC_INDEX_DATA__FIELD_CUTIN, HEAP_ID_FIELD);
}

static void LoadSpriteResources(HMCutIn *cutIn, NARC *narc)
{
    int i;

    BuildMonSpriteTemplate(cutIn, &cutIn->pokemonSpriteTemplate);
    cutIn->spriteList = SpriteList_InitRendering(32, &cutIn->g2dRenderer, HEAP_ID_FIELD);
    SetSubScreenViewRect(&cutIn->g2dRenderer, 0, FX32_CONST(512));

    cutIn->charLocation = SpriteResourceCollection_New(4, 0, HEAP_ID_FIELD);
    cutIn->paletteLocation = SpriteResourceCollection_New(3, 1, HEAP_ID_FIELD);
    cutIn->cellLocation = SpriteResourceCollection_New(4, 2, HEAP_ID_FIELD);
    cutIn->animLocation = SpriteResourceCollection_New(2, 3, HEAP_ID_FIELD);

    // Char Index 0: White Clouds
    for (i = 0; i < 1; i++) {
        cutIn->charSource[i] = SpriteResourceCollection_AddTilesFrom(cutIn->charLocation, narc, sCutInCloudChar[i].memberIdx, FALSE, sCutInCloudChar[i].resourceId, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_FIELD);
    }

    // Char Index 1: Player
    if (cutIn->playerGender == 0) {
        cutIn->charSource[i] = SpriteResourceCollection_AddTilesFrom(cutIn->charLocation, narc, 13, FALSE, 2, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_FIELD);
    } else {
        cutIn->charSource[i] = SpriteResourceCollection_AddTilesFrom(cutIn->charLocation, narc, 16, FALSE, 2, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_FIELD);
    }

    i++;
    // Char Index 2: Player's Pokemon
    cutIn->charSource[i] = GetParticleCharResource(cutIn, narc);

    // Palette Index 0: White Clouds
    for (i = 0; i < 1; i++) {
        cutIn->paletteSource[i] = SpriteResourceCollection_AddPaletteFrom(cutIn->paletteLocation, narc, sCutInCloudPltt[i].memberIdx, FALSE, sCutInCloudPltt[i].resourceId, NNS_G2D_VRAM_TYPE_2DMAIN, PLTT_1, HEAP_ID_FIELD);
    }

    // Palette Index 1: Player Female
    if (cutIn->playerGender == 0) {
        (void)0;
    } else {
        cutIn->paletteSource[i] = SpriteResourceCollection_AddPaletteFrom(cutIn->paletteLocation, narc, 4, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, PLTT_1, HEAP_ID_FIELD);
        i++;
    }

    // Palette Index 1 / 2: Player Male / Part of Clouds
    cutIn->paletteSource[i] = GetPlayerMalePlttResource(cutIn, narc);

    // Cell Index 0: White Clouds
    for (i = 0; i < 1; i++) {
        cutIn->cellSource[i] = SpriteResourceCollection_AddFrom(cutIn->cellLocation, narc, sCutInCloudCell[i].memberIdx, FALSE, sCutInCloudCell[i].resourceId, SPRITE_RESOURCE_CELL, HEAP_ID_FIELD);
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
        cutIn->animSource[i] = SpriteResourceCollection_AddFrom(cutIn->animLocation, narc, sCutInCloudAnim[i].memberIdx, FALSE, sCutInCloudAnim[i].resourceId, SPRITE_RESOURCE_ANIM, HEAP_ID_FIELD);
    }

    // Animation Index 1: Player
    if (cutIn->playerGender == 0) {
        cutIn->animSource[i] = SpriteResourceCollection_AddFrom(cutIn->animLocation, narc, 15, FALSE, 1, SPRITE_RESOURCE_ANIM, HEAP_ID_FIELD);
    } else {
        cutIn->animSource[i] = SpriteResourceCollection_AddFrom(cutIn->animLocation, narc, 18, FALSE, 1, SPRITE_RESOURCE_ANIM, HEAP_ID_FIELD);
    }

    cutIn->pokemonCharSource = GetPokemonSpriteSource(cutIn->pokemon, &cutIn->pokemonSpriteTemplate, HEAP_ID_FIELD);
    cutIn->pokemonPaletteSource = GetPokemonPaletteSource(&cutIn->pokemonSpriteTemplate, HEAP_ID_FIELD);
}

static void DeleteSpriteResources(HMCutIn *cutIn)
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

static void UpdateSpriteList(HMCutIn *cutIn)
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

static Sprite *ov6_02244CD4(HMCutIn *cutIn, const VecFx32 *position, int listPriority, int animID)
{
    Sprite *sprite = CreateSprite(cutIn, position, 1, 0, 1, 0, 0, listPriority);
    Sprite_SetAnim(sprite, animID);

    return sprite;
}

static Sprite *InitPlayerSprite(HMCutIn *cutIn, const VecFx32 *position)
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

static void StartPlayerAnim(Sprite *sprite)
{
    Sprite_SetAnimateFlag(sprite, TRUE);
    Sprite_SetAnimSpeed(sprite, FX32_ONE);
}

static Sprite *CreateBirdSprite(HMCutIn *cutIn, const VecFx32 *position, int priority, int dummy)
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

static void LoadBirdSpriteResources(HMCutIn *cutIn)
{
    int i;
    NARC *narc = GetFieldCutInNarc2();

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

static void LoadBgPalette(NARC *narc, u32 memberIndex, NNSG2dPaletteData **plttData)
{
    void *nclrFile = NARC_AllocAndReadWholeMember(narc, memberIndex, HEAP_ID_FIELD);

    NNS_G2dGetUnpackedPaletteData(nclrFile, plttData);

    Bg_LoadPalette(BG_LAYER_MAIN_3, (*plttData)->pRawData, 32 * 1, 32 * 12);
    Heap_Free(nclrFile);
}

static void LoadBgPatternChar(BgConfig *bgConfig, NARC *narc, u32 memberIndex, NNSG2dCharacterData **charData)
{
    void *ncgrFile = NARC_AllocAndReadWholeMember(narc, memberIndex, HEAP_ID_FIELD);
    NNS_G2dGetUnpackedCharacterData(ncgrFile, charData);

    Bg_LoadTiles(bgConfig, BG_LAYER_MAIN_3, (*charData)->pRawData, (*charData)->szByte, 0);
    Heap_Free(ncgrFile);
}

static void LoadBgPatternPalette(BgConfig *bgConfig, NARC *narc, u32 memberIndex, NNSG2dScreenData **screenData)
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

static void CleartTileMapBG3(BgConfig *bgConfig)
{
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_3);
}

static void InitCutInWindow(HMCutIn *cutIn)
{
    CreateCutInWindowTask(cutIn);
    cutIn->updateWindow = FALSE;

    ClearWindowMask(cutIn);
    InitPlaneMasks(cutIn);
    SetWindowMask(cutIn);

    cutIn->updateWindow = TRUE;
}

static void SetWindowMask(HMCutIn *cutIn)
{
    cutIn->window = (GX_WNDMASK_W0);
}

static void ClearWindowMask(HMCutIn *cutIn)
{
    cutIn->window = GX_WNDMASK_NONE;
}

static void InitPlaneMasks(HMCutIn *cutIn)
{
    cutIn->planeMaskInside = (GX_WND_PLANEMASK_BG3) | GX_WND_PLANEMASK_OBJ;
    cutIn->effectInside = 0;
    cutIn->planeMaskOutside = (GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ) & (~(GX_WND_PLANEMASK_BG3));
    cutIn->effectOutside = 1;
}

static void InitPlaneMasksForFly(HMCutIn *cutIn)
{
    cutIn->planeMaskOutside = (GX_WND_PLANEMASK_OBJ | GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3) & (~(GX_WND_PLANEMASK_BG3));
    cutIn->effectOutside = 1;
}

static void SetCutInWindowSize(HMCutIn *cutIn, fx32 x1, fx32 y1, fx32 x2, fx32 y2)
{
    cutIn->windowX1 = x1;
    cutIn->windowX2 = x2;
    cutIn->windowY1 = y1;
    cutIn->windowY2 = y2;
}

static void CreateCutInWindowTask(HMCutIn *cutIn)
{
    GF_ASSERT(cutIn->windowTask == NULL);
    cutIn->windowTask = SysTask_ExecuteOnVBlank(SysTask_ShowCutInWindow, cutIn, 0x81);
}

static void DeleteWindowTask(HMCutIn *cutIn)
{
    GF_ASSERT(cutIn->windowTask != NULL);

    SysTask_Done(cutIn->windowTask);
    GX_SetVisibleWnd(GX_WNDMASK_NONE);
}

static void SysTask_ShowCutInWindow(SysTask *task, void *hmCutInPtr)
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

static void BuildMonSpriteTemplate(HMCutIn *cutIn, PokemonSpriteTemplate *spriteTemplate)
{
    Pokemon_BuildSpriteTemplate(spriteTemplate, cutIn->pokemon, 2);
}

static void *GetPokemonSpriteSource(Pokemon *pokemon, PokemonSpriteTemplate *spriteTemplate, u32 heapID)
{
    void *spriteSource = Heap_AllocFromHeap(HEAP_ID_FIELD, (32 * 10) * 10);

    GF_ASSERT(spriteSource != NULL);

    int personality = Pokemon_GetValue(pokemon, MON_DATA_PERSONALITY, NULL);
    sub_02013750(spriteTemplate->narcID, spriteTemplate->character, heapID, spriteSource, personality, FALSE, 2, spriteTemplate->spindaSpots);

    return spriteSource;
}

static void *GetPokemonPaletteSource(PokemonSpriteTemplate *spriteTemplate, u32 heapID)
{
    void *paletteSource = sub_02013660(spriteTemplate->narcID, spriteTemplate->palette, heapID);
    return paletteSource;
}

static SpriteResource *GetParticleCharResource(HMCutIn *cutIn, NARC *narc)
{
    SpriteResource *spriteResource = SpriteResourceCollection_AddTilesFrom(cutIn->charLocation, narc, 5, FALSE, 3, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_FIELD);
    return spriteResource;
}

static void LoadPokemonChar(HMCutIn *cutIn, void *pokemonSpriteSource)
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

static SpriteResource *GetPlayerMalePlttResource(HMCutIn *cutIn, NARC *narc)
{
    SpriteResource *spriteResource = SpriteResourceCollection_AddPaletteFrom(cutIn->paletteLocation, narc, 3, FALSE, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 1, HEAP_ID_FIELD);
    return spriteResource;
}

static void LoadPokemonSpritePalette(HMCutIn *cutIn, void *paletteSource)
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

static void UnloadPokemonSpriteResources(HMCutIn *cutIn)
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

static Sprite *InitMonSprite(HMCutIn *cutIn, const VecFx32 *position)
{
    Sprite *monSprite = CreateSprite(cutIn, position, 3, 2, 3, 0xffffffff, 0, 129);
    return monSprite;
}

static const UnkStruct_ov101_021D86B0 Unk_ov6_02249220;

static const UnkStruct_ov6_0224936C Unk_ov6_0224936C[13] = {
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

static void ov6_022452BC(HMCutIn *cutIn, int param1)
{
    int v0, v1, v2;
    VecFx32 v3, v4;

    cutIn->someInt = 2;

    for (v0 = 0; v0 < 13; v0++) {
        v3.x = Unk_ov6_0224936C[v0].unk_00;
        v3.y = Unk_ov6_0224936C[v0].unk_04;
        v3.z = 0;
        v4.x = Unk_ov6_0224936C[v0].unk_08;
        v4.y = 0;
        v4.z = 0;
        v2 = Unk_ov6_0224936C[v0].unk_0C;
        v1 = Unk_ov6_0224936C[v0].unk_10;

        ov6_02245328(cutIn, &v3, &v4, v2, v1, param1);
        v3.x += (FX32_ONE * 256);
        ov6_02245328(cutIn, &v3, &v4, v2, v1, param1);
    }
}

static void ov6_02245328(HMCutIn *cutIn, const VecFx32 *param1, const VecFx32 *param2, int param3, int param4, int param5)
{
    UnkStruct_ov101_021D5D90 *v0;
    UnkStruct_ov6_02245328 v1;

    v1.unk_00 = param3;
    v1.unk_04 = param5;
    v1.cutIn = cutIn;
    v1.unk_0C = *param2;

    v0 = sub_02071330(cutIn->unk_244, &Unk_ov6_02249220, param1, param4, &v1, 132);
}

static int ov6_02245364(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    VecFx32 position;
    UnkStruct_ov6_02245364 *v1 = param1;
    const UnkStruct_ov6_02245328 *v2 = sub_020715BC(param0);

    v1->unk_0C = *v2;
    v1->animID = sub_020715B4(param0);

    sub_020715E4(param0, &position);

    v1->unk_08 = ov6_02244CD4(v1->unk_0C.cutIn, &position, v1->unk_0C.unk_00, v1->animID);
    Sprite_SetDrawFlag(v1->unk_08, FALSE);

    return 1;
}

static void ov6_022453AC(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    UnkStruct_ov6_02245364 *v0 = param1;
    Sprite_Delete(v0->unk_08);
}

static void ov6_022453B8(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_ov6_02245364 *v1 = param1;

    sub_020715E4(param0, &v0);

    v0.x += v1->unk_0C.unk_0C.x;
    v0.x %= (FX32_ONE * 512);

    sub_020715D4(param0, &v0);
    Sprite_SetPosition(v1->unk_08, &v0);

    if (v1->unk_0C.unk_04 == 1) {
        HMCutIn *v2 = v1->unk_0C.cutIn;

        if (v2->someInt == 2) {
            BOOL drawFlag = FALSE;
            fx32 v4 = v2->windowY1, v5 = v2->windowY2;

            if ((v0.y - (FX32_ONE * 2)) >= v4
                && (v0.y - (FX32_ONE * 2)) <= v5
                && (v0.y + (FX32_ONE * 2)) >= v4
                && (v0.y + (FX32_ONE * 2)) <= v5) {
                drawFlag = TRUE;
            }

            Sprite_SetDrawFlag(v1->unk_08, drawFlag);
        } else if (v2->someInt == 1) {
            Sprite_SetDrawFlag(v1->unk_08, FALSE);
        }
    }
}

static void ov6_02245438(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    UnkStruct_ov6_02245364 *v0 = param1;
}

static const UnkStruct_ov101_021D86B0 Unk_ov6_02249220 = {
    (sizeof(UnkStruct_ov6_02245364)),
    ov6_02245364,
    ov6_022453AC,
    ov6_022453B8,
    ov6_02245438
};

static void CreateFlyTasks(HMCutIn *cutIn)
{
    VecFx32 position = { 0, 0, 0 };
    HMCutIn *hmCutIn = cutIn;

    cutIn->unk_250 = sub_02071330(cutIn->unk_244, &sFlyTaskFuncContainer, &position, 0, &hmCutIn, 130);
}

static int GetSubState(HMCutIn *cutIn)
{
    FlyTaskEnv *taskEnv = sub_02071598(cutIn->unk_250);
    return taskEnv->subState;
}

static void ov6_02245480(HMCutIn *cutIn)
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

static BOOL SubTask_HMFly_InitSprite(UnkStruct_ov101_021D5D90 *param0, void *taskEnv)
{
    VecFx32 position;
    FlyTaskEnv *flyTaskEnv = taskEnv;
    const HMCutInContainer *cutInContainer = sub_020715BC(param0);

    flyTaskEnv->cutInContainer = *cutInContainer;
    sub_020715E4(param0, &position);
    flyTaskEnv->birdSprite = CreateBirdSprite(flyTaskEnv->cutInContainer.cutIn, &position, 0, 0);

    return 1;
}

static void SubTask_HMFly_DeleteSprite(UnkStruct_ov101_021D5D90 *param0, void *taskEnv)
{
    FlyTaskEnv *flyTaskEnv = taskEnv;
    Sprite_Delete(flyTaskEnv->birdSprite);
}

static void SubTask_HMFly_Main(UnkStruct_ov101_021D5D90 *param0, void *taskEnv)
{
    FlyTaskEnv *flyTaskEnv = taskEnv;
    const FlyTaskFunc *taskFuncs;
    taskFuncs = sFlyTaskFuncCollection[flyTaskEnv->mode];

    while (taskFuncs[flyTaskEnv->state](flyTaskEnv) == 1) {
        (void)0;
    }
}

static void SubTask_HMFly_Dummy(UnkStruct_ov101_021D5D90 *param0, void *taskEnv)
{
    FlyTaskEnv *flyTaskEnv = taskEnv;
}

static const UnkStruct_ov101_021D86B0 sFlyTaskFuncContainer = {
    (sizeof(FlyTaskEnv)),
    SubTask_HMFly_InitSprite,
    SubTask_HMFly_DeleteSprite,
    SubTask_HMFly_Main,
    SubTask_HMFly_Dummy
};

static const FlyTaskFunc *const sFlyTaskFuncCollection[] = {
    sFlyTaskFuncsUnused,
    sFlyTaskFuncsAscent,
    sFlyTaskFuncsDescentFlyAway,
};

static int SubTask_HMFlyUnused_HideBird(FlyTaskEnv *flyTaskEnv)
{
    flyTaskEnv->subState = 0;
    Sprite_SetDrawFlag(flyTaskEnv->birdSprite, FALSE);
    return 0;
}

static const FlyTaskFunc sFlyTaskFuncsUnused[] = {
    SubTask_HMFlyUnused_HideBird
};

static void InitBirdSpritePos(HMCutIn *cutIn)
{
    VecFx32 birdPosition = { FX32_ONE * (128 + 8), FX32_ONE * (96 - 8), 0 };
    VecFx32 birdScale = { 0x400, 0x400, 0 };
    FlyTaskEnv *flyTaskEnv = sub_02071598(cutIn->unk_250);

    flyTaskEnv->mode = 1;
    flyTaskEnv->state = 0;
    flyTaskEnv->subState = 0;
    flyTaskEnv->birdStartPos = birdPosition;
    flyTaskEnv->pathOffset.x = 0;
    flyTaskEnv->pathOffset.y = 0;
    flyTaskEnv->pathOffset.z = 0;
    flyTaskEnv->birdRotation = FX32_ONE * 60;
    flyTaskEnv->birdScale = birdScale;
    flyTaskEnv->scaleDelta = 0x200;
    flyTaskEnv->angleParam = FX32_ONE * 180;
    flyTaskEnv->pathParam = 0;
    flyTaskEnv->pathDelta = 0x2000;

    Sprite_SetPosition(flyTaskEnv->birdSprite, &birdPosition);
    Sprite_SetAffineScale(flyTaskEnv->birdSprite, &birdScale);
    Sprite_SetAffineZRotation(flyTaskEnv->birdSprite, CalcAngleRotationIdx_Wraparound((flyTaskEnv->birdRotation) / FX32_ONE));
    Sprite_SetDrawFlag(flyTaskEnv->birdSprite, TRUE);
}

static int SubTask_HMFlyAscent_Ascend(FlyTaskEnv *env)
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

static int SubTask_HMFlyAscent_Idle(FlyTaskEnv *param0)
{
    return 0;
}

static const FlyTaskFunc sFlyTaskFuncsAscent[] = {
    SubTask_HMFlyAscent_Ascend,
    SubTask_HMFlyAscent_Idle
};

static void PrepareBirdForDescent(HMCutIn *cutIn)
{
    VecFx32 birdPosition = VEC_FX32(128, 104, 0);
    VecFx32 birdScale = VEC_FX32(1.25, 1.25, 0);
    FlyTaskEnv *env = sub_02071598(cutIn->unk_250);

    env->mode = 2;
    env->state = 0;
    env->subState = 1;
    env->unk_04 = 0;
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

    env->unk_60 = ov6_02245B4C(cutIn->unk_244, cutIn->playerSprite);
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
        env->unk_04 = 0;
        env->state++;
    } else {
        env->unk_04++;
    }

    if (env->unk_04 == 12) {
        ov6_02245B80(env->unk_60);
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

    InitSomePlayerAnimationEnv(flyTaskEnv->unk_60);
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

static int FlyPickUpPlayer_DoNothing(FlyTaskEnv *param0)
{
    return 0;
}

static const FlyTaskFunc sFlyTaskFuncsDescentFlyAway[] = {
    FlyPickUpPlayer_DescendToCenter,
    FlyPickUpPlayer_PrepareForTakeoff,
    FlyPickUpPlayer_AscendToBottomLeft,
    FlyPickUpPlayer_DoNothing
};

static UnkStruct_ov101_021D5D90 *ov6_02245B4C(UnkStruct_020711EC *param0, Sprite *sprite)
{
    UnkStruct_ov101_021D5D90 *v0;
    HMCutInWithPlayer1 cutInWithPlayer;
    VecFx32 initialPos = { 0, 0, 0 };

    cutInWithPlayer.playerSprite = sprite;
    v0 = sub_02071330(param0, &PushPlayerSpriteUpFuncs, &initialPos, 0, &cutInWithPlayer, 129);

    return v0;
}

static void InitSomePlayerAnimationEnv(UnkStruct_ov101_021D5D90 *param0)
{
    SomePlayerAnimationEnv *v0 = sub_02071598(param0);
    v0->state = 0;
}

static void ov6_02245B80(UnkStruct_ov101_021D5D90 *param0)
{
    VecFx32 playerSpritePosPtr;
    const VecFx32 *playerSpritePos;
    SomePlayerAnimationEnv *env = sub_02071598(param0);

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

static void ov6_02245BC8(UnkStruct_ov101_021D5D90 *param0)
{
    VecFx32 spritePosition;
    SomePlayerAnimationEnv *env = sub_02071598(param0);

    env->state = 2;
    env->animationPartFinished = FALSE;
    env->positionDeltaIdx = 0;
    env->_ = FALSE;
    env->position.x = 0;
    env->position.y = 0;
    env->position.z = 0;

    SetVectorToSpritePosition(env->playerSprite, &spritePosition);

    sub_020715D4(param0, &spritePosition);
    Sprite_SetAnim(env->playerSprite, 4);
}

static int LoadPlayerAnimationEnv(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    SomePlayerAnimationEnv *v0 = param1;
    const HMCutInWithPlayer1 *v1 = sub_020715BC(param0);

    v0->cutIn = v1->cutIn;
    v0->playerSprite = v1->playerSprite;

    return 1;
}

static const fx32 sPlayerPushUpDeltas1[12] = {
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

static const fx32 sPlayerPushUpDeltas2[4] = {
    FX32_ONE * -4,
    FX32_ONE * -6,
    FX32_ONE * -7,
    FX32_ONE * -8 };

static void PushPlayerUpAfterLanding1(UnkStruct_ov101_021D5D90 *param0, SomePlayerAnimationEnv *param1)
{
    VecFx32 newPos;

    if (param1->animationPartFinished == FALSE) {
        param1->position.y = sPlayerPushUpDeltas1[param1->positionDeltaIdx];
        sub_020715E4(param0, &newPos);
        newPos.y += param1->position.y;
        Sprite_SetPosition(param1->playerSprite, &newPos);
        param1->positionDeltaIdx++;

        if (param1->positionDeltaIdx >= 12) {
            param1->positionDeltaIdx = 0;
            param1->_ = TRUE;
            param1->animationPartFinished++; // setting the flag to 1 = TRUE
        }
    }
}

static void PushPlayerUpAfterLanding2(UnkStruct_ov101_021D5D90 *param0, SomePlayerAnimationEnv *param1)
{
    VecFx32 newPos;

    if (param1->animationPartFinished == FALSE) {
        param1->position.y = sPlayerPushUpDeltas2[param1->positionDeltaIdx];
        sub_020715E4(param0, &newPos);
        newPos.y += param1->position.y;
        Sprite_SetPosition(param1->playerSprite, &newPos);
        param1->positionDeltaIdx++;

        if (param1->positionDeltaIdx >= 4) {
            param1->positionDeltaIdx = 0;
            param1->_ = TRUE;
            param1->animationPartFinished++; // setting the flag to 1 = TRUE
        }
    }
}

static void PushPlayerSpriteUpAfterLanding(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    SomePlayerAnimationEnv *env = param1;

    switch (env->state) {
    case 1:
        PushPlayerUpAfterLanding1(param0, env);
        break;
    case 2:
        PushPlayerUpAfterLanding2(param0, env);
        break;
    }
}

static const UnkStruct_ov101_021D86B0 PushPlayerSpriteUpFuncs = {
    sizeof(SomePlayerAnimationEnv),
    LoadPlayerAnimationEnv,
    UnkStruct_ov101_021D5D90_DoNothing3,
    PushPlayerSpriteUpAfterLanding,
    UnkStruct_ov101_021D5D90_DoNothing2
};

static const UnkStruct_ov101_021D86B0 dummy_field_cutin = {
    sizeof(_Unused),
    NULL,
    UnkStruct_ov101_021D5D90_DoNothing3,
    NULL,
    UnkStruct_ov101_021D5D90_DoNothing2,
};

SysTask *FieldTask_InitFlyLandingTask(FieldSystem *fieldSystem, int playerGender)
{
    FlyLandingEnv *taskEnv = AllocFromHeapAtEnd(HEAP_ID_FIELD, sizeof(FlyLandingEnv));

    taskEnv->playerGender = playerGender;
    taskEnv->fieldSystem = fieldSystem;

    SysTask *task = SysTask_Start(FlyLandingTask, taskEnv, 133);
    return task;
}

BOOL IsFlyLandingAnimFinished(SysTask *param0)
{
    FlyLandingEnv *env = SysTask_GetParam(param0);
    return env->animationFinished;
}

void SetFlyLandingTaskDone(SysTask *param0)
{
    FlyLandingEnv *env = SysTask_GetParam(param0);
    Heap_Free(env);
    SysTask_Done(param0);
}

static void FlyLandingTask(SysTask *task, void *taskEnv)
{
    FlyLandingEnv *flyLandingTaskEnv = taskEnv;

    while (FlyLandingFuncs[flyLandingTaskEnv->state](flyLandingTaskEnv) == TRUE) {
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
    ov6_02243258(&taskEnv->unk_18, 32, 2, 2, 2, 1, 4, 3, 4, 2);

    {
        NARC *narc = GetFieldCutInNarc1();

        ov6_022434B0(&taskEnv->unk_18, narc, 7, 0);
        ov6_02243588(&taskEnv->unk_18, narc, 3, 0);
        ov6_02243660(&taskEnv->unk_18, narc, 8, 0);

        ov6_02243520(&taskEnv->unk_18, 0);
        ov6_022435F8(&taskEnv->unk_18, 0);
        ov6_02243554(&taskEnv->unk_18, 0);
        ov6_0224362C(&taskEnv->unk_18, 0);

        if (taskEnv->playerGender == 0) {
            ov6_022434B0(&taskEnv->unk_18, narc, 13, 2);
            ov6_02243660(&taskEnv->unk_18, narc, 14, 2);
            ov6_022436D0(&taskEnv->unk_18, narc, 15, 1);

            ov6_02243520(&taskEnv->unk_18, 2);
            ov6_02243554(&taskEnv->unk_18, 2);
        } else {
            ov6_022434B0(&taskEnv->unk_18, narc, 16, 2);
            ov6_02243588(&taskEnv->unk_18, narc, 4, 1);
            ov6_02243660(&taskEnv->unk_18, narc, 17, 2);
            ov6_022436D0(&taskEnv->unk_18, narc, 18, 1);

            ov6_02243520(&taskEnv->unk_18, 2);
            ov6_022435F8(&taskEnv->unk_18, 1);
            ov6_02243554(&taskEnv->unk_18, 2);
            ov6_0224362C(&taskEnv->unk_18, 1);
        }

        NARC_dtor(narc);
    }

    taskEnv->state++;
    return FALSE;
}

static BOOL FlyLanding_InitAnimTasks(FlyLandingEnv *param0)
{
    param0->playerSprite = FlyLanding_InitPlayerSprite(&param0->unk_18, param0->playerGender);
    Sprite_SetDrawFlag(param0->playerSprite, TRUE);

    param0->unk_1D8 = CreateFlyLandingAnimTasks(param0->fieldSystem, param0->unk_1D4, &param0->unk_18, param0->playerSprite);
    FlyLanding_InitEnv(param0->unk_1D8);

    param0->state++;
    param0->animationInProgress = TRUE;

    return FALSE;
}

static BOOL FlyLanding_EndTaskIfAnimationEnded(FlyLandingEnv *param0)
{
    if (FlyLanding_HasAnimationEnded(param0->unk_1D8) != 2) {
        return FALSE;
    }

    ov6_022438EC(param0->unk_1D8);
    param0->state++;

    return FALSE;
}

static BOOL FlyLanding_CleanupResources(FlyLandingEnv *param0)
{
    sub_0207121C(param0->unk_1D4);
    ov6_0224339C(&param0->unk_18);

    param0->animationInProgress = FALSE;
    param0->animationFinished = TRUE;
    param0->state++;

    return FALSE;
}

static BOOL SubTask_FlyLanding_NOP(FlyLandingEnv *param0)
{
    return FALSE;
}

static BOOL (*const FlyLandingFuncs[])(FlyLandingEnv *) = {
    FlyLanding_HidePlayerMapObj,
    FlyLanding_LoadResources,
    FlyLanding_InitAnimTasks,
    FlyLanding_EndTaskIfAnimationEnded,
    FlyLanding_CleanupResources,
    SubTask_FlyLanding_NOP
};

static void *AllocFromHeapAtEnd(u32 heapID, int size)
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

static int ShowHidePlayerSprite_GetCutInFromContext(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    const HMCutInWithPlayer *wrapper = sub_020715BC(param0);
    HMCutInWithPlayer *destWrapper = param1;

    *destWrapper = *wrapper;
    return 1;
}

static void ShowHidePlayerSprite_ShowHidePlayerSprite(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    fx32 playerSpriteY, windowMinY, windowMaxY;
    const VecFx32 *playerSpritePosition;
    HMCutInWithPlayer *wrapper = param1;

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

static const UnkStruct_ov101_021D86B0 ShowHidePlayerSpriteFuncs = {
    sizeof(HMCutInWithPlayer),
    ShowHidePlayerSprite_GetCutInFromContext,
    UnkStruct_ov101_021D5D90_DoNothing3,
    ShowHidePlayerSprite_ShowHidePlayerSprite,
    UnkStruct_ov101_021D5D90_DoNothing2
};

static void CreateDrawCutInPlayerSpriteTasks(HMCutIn *cutIn)
{
    VecFx32 initialPosition = { 0, 0, 0 };
    HMCutInWithPlayer wrapper;

    wrapper.playerSprite = cutIn->playerSprite;
    wrapper.cutIn = cutIn;

    cutIn->unk_254 = sub_02071330(cutIn->unk_244, &ShowHidePlayerSpriteFuncs, &initialPosition, 0, &wrapper, 134);
}

static void ov6_02246018(HMCutIn *cutIn)
{
    if (cutIn->unk_254 != NULL) {
        sub_0207136C(cutIn->unk_254);
        cutIn->unk_254 = NULL;
    }
}

static const ResourceLocation sCutInCloudChar[1] = {
    { .resourceId = 0x1, .memberIdx = 0xA }
};

static const ResourceLocation sCutInCloudPltt[1] = {
    { .resourceId = 0x0, .memberIdx = 0x3 }
};

static const ResourceLocation sCutInCloudCell[1] = {
    { .resourceId = 0x1, .memberIdx = 0xB }
};

static const ResourceLocation sCutInCloudAnim[1] = {
    { .resourceId = 0x0, .memberIdx = 0xC }
};
