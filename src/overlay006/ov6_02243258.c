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
    BOOL someFlag4;
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
    u8 unk_03;
    int unk_04;
    VecFx32 birdStartPos;
    VecFx32 pathOffset;
    VecFx32 unk_20;
    VecFx32 birdScale;
    fx32 birdRotation;
    fx32 unk_3C;
    fx32 angleParam;
    fx32 unk_44;
    fx32 pathParam;
    fx32 pathDelta;
    fx32 scaleDelta;
    fx32 playerOffsetY;
    Sprite *birdSprite;
    HMCutInContainer cutInContainer;
    UnkStruct_ov101_021D5D90 *unk_60;
    SysTask *task;
} FlyTaskEnv;

typedef struct {
    HMCutIn *unk_00;
    Sprite *unk_04;
} UnkStruct_ov6_02245B4C;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    VecFx32 unk_10;
    HMCutIn *unk_1C;
    Sprite *unk_20;
} UnkStruct_ov6_02245B74;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    SpriteResource *unk_04;
} UnkStruct_ov6_02243258_sub1;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    s8 unk_04;
    s8 unk_05;
    s8 unk_06;
    s8 unk_07;
    SpriteList *unk_08;
    G2dRenderer unk_0C;
    SpriteResourceCollection *unk_198;
    SpriteResourceCollection *unk_19C;
    SpriteResourceCollection *unk_1A0;
    SpriteResourceCollection *unk_1A4;
    UnkStruct_ov6_02243258_sub1 *unk_1A8;
    UnkStruct_ov6_02243258_sub1 *unk_1AC;
    UnkStruct_ov6_02243258_sub1 *unk_1B0;
    UnkStruct_ov6_02243258_sub1 *unk_1B4;
} UnkStruct_ov6_02243258;

typedef struct FlyLandingEnv {
    int state;
    int unk_04;
    int unk_08;
    int playerGender;
    int unk_10;
    FieldSystem *fieldSystem;
    UnkStruct_ov6_02243258 unk_18;
    Sprite *unk_1D0;
    UnkStruct_020711EC *unk_1D4;
    UnkStruct_ov101_021D5D90 *unk_1D8;
    SysTask *unk_1DC;
} FlyLandingEnv;

typedef struct {
    UnkStruct_020711EC *unk_00;
    FieldSystem *fieldSystem;
    Sprite *unk_08;
    UnkStruct_ov6_02243258 *unk_0C;
} UnkStruct_ov6_02243888;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    int unk_04;
    VecFx32 unk_08;
    VecFx32 unk_14;
    VecFx32 unk_20;
    VecFx32 unk_2C;
    fx32 unk_38;
    fx32 unk_3C;
    fx32 unk_40;
    fx32 unk_44;
    fx32 unk_48;
    fx32 unk_4C;
    fx32 unk_50;
    fx32 unk_54;
    UnkStruct_ov6_02243888 unk_58;
    Sprite *unk_68;
    UnkStruct_ov101_021D5D90 *unk_6C;
    SysTask *unk_70;
} UnkStruct_ov6_02249110;

typedef struct {
    int unk_00;
    int unk_04;
    HMCutIn *cutIn;
    VecFx32 unk_0C;
} UnkStruct_ov6_02245328;

typedef struct {
    int unk_00;
    int animID;
    Sprite *unk_08;
    UnkStruct_ov6_02245328 unk_0C;
} UnkStruct_ov6_02245364;

typedef struct {
    fx32 unk_00;
    fx32 unk_04;
    fx32 unk_08;
    int unk_0C;
    int unk_10;
} UnkStruct_ov6_0224936C;

typedef struct {
    int camera;
    int unk_04;
    int unk_08;
    VecFx32 unk_0C;
    VecFx32 unk_18;
    fx32 unk_24;
    fx32 unk_28;
    MapObject *unk_2C;
    HMCutIn *cutIn;
} UnkStruct_ov100_021D4890;

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
static void SysTask_TransferResources(SysTask *param0, void *param1);
static void SysTask_FreeResources(SysTask *param0, void *param1);
static void SysTask_TransferBirdResource(SysTask *param0, void *param1);
static void SysTask_FinalizeBirdSpriteTransfer(SysTask *param0, void *param1);
static void InitSpriteResources(HMCutIn *cutIn);
static void DeleteSprites(HMCutIn *cutIn);
static NARC *GetFieldCutInNarc2(void);
static void LoadSpriteResources(HMCutIn *cutIn, NARC *narc);
static void DeleteSpriteResources(HMCutIn *cutIn);
static void UpdateSpriteList(HMCutIn *cutIn);
static Sprite *CreateSprite(HMCutIn *cutIn, const VecFx32 *position, u32 charResourceID, u32 plttResourceID, u32 cellResourceID, u32 animResourceID, int priority, int listPriority);
static Sprite *ov6_02244CD4(HMCutIn *cutIn, const VecFx32 *position, int listPriority, int animID);
static Sprite *InitPlayerSprite(HMCutIn *cutIn, const VecFx32 *position);
static void StartPlayerAnim(Sprite *param0);
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
static void SysTask_ShowCutInWindow(SysTask *param0, void *param1);
static void BuildMonSpriteTemplate(HMCutIn *cutIn, PokemonSpriteTemplate *spriteTemplate);
static void *CharacterSprite_LoadPokemonSprite(Pokemon *mon, PokemonSpriteTemplate *spriteTemplate, u32 heapID); // TODO revisit name
static void *CharacterSprite_GetPaletteData(PokemonSpriteTemplate *spriteTemplate, u32 heapID); // TODO revisit name
static SpriteResource *GetMonCharResource(HMCutIn *cutIn, NARC *narc); // TODO revisit name (was LoadParticleTilesResource)
static void LoadPokemonChar(HMCutIn *cutIn, void *imgSource);
static SpriteResource *GetPlayerMalePlttResource(HMCutIn *cutIn, NARC *narc); // TODO revisit name (was LoadParticlePalette)
static void LoadPokemonSpritePalette(HMCutIn *cutIn, void *imgSource);
static void UnloadPokemonSpriteResources(HMCutIn *cutIn);
static Sprite *InitMonSprite(HMCutIn *cutIn, const VecFx32 *position);
static void ov6_022452BC(HMCutIn *cutIn, int param1);
static void ov6_02245328(HMCutIn *cutIn, const VecFx32 *param1, const VecFx32 *param2, int param3, int param4, int param5);
static void CreateFlyTasks(HMCutIn *cutIn);
static void CreateFlyTasks(HMCutIn *cutIn);
static int GetSubState(HMCutIn *cutIn);
static void ov6_02245480(HMCutIn *cutIn);
static void InitBirdSpritePos(HMCutIn *cutIn);
static void ov6_022456D4(HMCutIn *cutIn);
static UnkStruct_ov101_021D5D90 *ov6_02245B4C(UnkStruct_020711EC *param0, Sprite *param1);
static void ov6_02245B74(UnkStruct_ov101_021D5D90 *param0);
static void ov6_02245B80(UnkStruct_ov101_021D5D90 *param0);
static void ov6_02245BC8(UnkStruct_ov101_021D5D90 *param0);
static void HidePlayer(HMCutIn *cutIn, BOOL hidden);
static void ov6_02245FDC(HMCutIn *cutIn);
static void ov6_02246018(HMCutIn *cutIn);
static void FadeIn(void);
static void FadeOut(void);
static void *AllocFromHeapAtEnd(u32 heapID, int size);
static void HidePlayerMapObj(FieldSystem *fieldSystem, BOOL hidden);
static void FlyLandingTask(SysTask *task, void *param1);

typedef int (*CutInTaskFunc)(HMCutIn *);
typedef int (*FlyTaskFunc)(FlyTaskEnv *);
typedef int (*FlyLandingTaskFunc)(FlyLandingEnv *);
static const CutInTaskFunc sCutInTaskFuncs[];
static const CutInTaskFunc sCutInTaskFuncsFly[];
static const FlyTaskFunc *const sFlyTaskFuncCollection[];
static const FlyTaskFunc sFlyTaskFuncsUnused[];
static const FlyTaskFunc sFlyTaskFuncsAscent[];
static const FlyTaskFunc sFlyTaskFuncsDescentFlyAway[];
static const FlyLandingTaskFunc FlyLandingTaskFuncs[];
static const UnkStruct_ov101_021D86B0 sFlyTaskFuncContainer;
static const UnkStruct_ov101_021D86B0 Unk_ov6_0224920C;
static const ResourceLocation sCutInCloudChar[1];
static const ResourceLocation sCutInCloudPltt[1];
static const ResourceLocation sCutInCloudCell[1];
static const ResourceLocation sCutInCloudAnim[1];

static void ov6_02243258(UnkStruct_ov6_02243258 *param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9)
{
    int v0;

    param0->unk_00 = param2;
    param0->unk_01 = param3;
    param0->unk_02 = param4;
    param0->unk_03 = param5;
    param0->unk_04 = param6;
    param0->unk_05 = param7;
    param0->unk_06 = param8;
    param0->unk_07 = param9;
    param0->unk_08 = SpriteList_InitRendering(param1, &param0->unk_0C, HEAP_ID_FIELD);

    SetSubScreenViewRect(&param0->unk_0C, 0, FX32_CONST(512));

    param0->unk_198 = SpriteResourceCollection_New(param2, 0, HEAP_ID_FIELD);
    param0->unk_19C = SpriteResourceCollection_New(param3, 1, HEAP_ID_FIELD);
    param0->unk_1A0 = SpriteResourceCollection_New(param4, 2, HEAP_ID_FIELD);
    param0->unk_1A4 = SpriteResourceCollection_New(param5, 3, HEAP_ID_FIELD);
    param0->unk_1A8 = AllocFromHeapAtEnd(HEAP_ID_FIELD, (sizeof(UnkStruct_ov6_02243258_sub1)) * param2);
    param0->unk_1AC = AllocFromHeapAtEnd(HEAP_ID_FIELD, (sizeof(UnkStruct_ov6_02243258_sub1)) * param3);
    param0->unk_1B0 = AllocFromHeapAtEnd(HEAP_ID_FIELD, (sizeof(UnkStruct_ov6_02243258_sub1)) * param4);
    param0->unk_1B4 = AllocFromHeapAtEnd(HEAP_ID_FIELD, (sizeof(UnkStruct_ov6_02243258_sub1)) * param5);

    for (v0 = 0; v0 < param2; param0->unk_1A8[v0].unk_00 = param6, v0++) {
        (void)0;
    }

    for (v0 = 0; v0 < param3; param0->unk_1AC[v0].unk_00 = param7, v0++) {
        (void)0;
    }

    for (v0 = 0; v0 < param4; param0->unk_1B0[v0].unk_00 = param8, v0++) {
        (void)0;
    }

    for (v0 = 0; v0 < param5; param0->unk_1B4[v0].unk_00 = param9, v0++) {
        (void)0;
    }
}

static void ov6_0224339C(UnkStruct_ov6_02243258 *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_00; v0++) {
        if (param0->unk_1A8[v0].unk_00 != param0->unk_04) {
            SpriteTransfer_ResetCharTransfer(param0->unk_1A8[v0].unk_04);
        }
    }

    for (v0 = 0; v0 < param0->unk_01; v0++) {
        if (param0->unk_1AC[v0].unk_00 != param0->unk_05) {
            SpriteTransfer_ResetPlttTransfer(param0->unk_1AC[v0].unk_04);
        }
    }

    for (v0 = 0; v0 < param0->unk_02; v0++) {
        if (param0->unk_1B0[v0].unk_00 != param0->unk_06) {
            SpriteResource_ReleaseData(param0->unk_1B0[v0].unk_04);
        }
    }

    for (v0 = 0; v0 < param0->unk_03; v0++) {
        if (param0->unk_1B4[v0].unk_00 != param0->unk_07) {
            SpriteResource_ReleaseData(param0->unk_1B4[v0].unk_04);
        }
    }

    SpriteResourceCollection_Delete(param0->unk_198);
    SpriteResourceCollection_Delete(param0->unk_19C);
    SpriteResourceCollection_Delete(param0->unk_1A0);
    SpriteResourceCollection_Delete(param0->unk_1A4);
    Heap_Free(param0->unk_1A8);
    Heap_Free(param0->unk_1AC);
    Heap_Free(param0->unk_1B0);
    Heap_Free(param0->unk_1B4);
    SpriteList_DeleteAll(param0->unk_08);
    SpriteList_Delete(param0->unk_08);
}

static void ov6_022434B0(UnkStruct_ov6_02243258 *param0, NARC *narc, int param2, int param3)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_00; v0++) {
        if (param0->unk_1A8[v0].unk_00 == param0->unk_04) {
            param0->unk_1A8[v0].unk_00 = param3;
            param0->unk_1A8[v0].unk_02 = 0;
            param0->unk_1A8[v0].unk_04 = SpriteResourceCollection_AddTilesFrom(param0->unk_198, narc, param2, 0, param3, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_FIELD);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void ov6_02243520(UnkStruct_ov6_02243258 *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_00; v0++) {
        if (param0->unk_1A8[v0].unk_00 == param1) {
            SpriteTransfer_RequestCharAtEnd(param0->unk_1A8[v0].unk_04);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void ov6_02243554(UnkStruct_ov6_02243258 *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_00; v0++) {
        if (param0->unk_1A8[v0].unk_00 == param1) {
            SpriteResource_ReleaseData(param0->unk_1A8[v0].unk_04);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void ov6_02243588(UnkStruct_ov6_02243258 *param0, NARC *narc, int param2, int param3)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_00; v0++) {
        if (param0->unk_1AC[v0].unk_00 == param0->unk_05) {
            param0->unk_1AC[v0].unk_00 = param3;
            param0->unk_1AC[v0].unk_02 = 0;
            param0->unk_1AC[v0].unk_04 = SpriteResourceCollection_AddPaletteFrom(
                param0->unk_19C, narc, param2, 0, param3, NNS_G2D_VRAM_TYPE_2DMAIN, 1, 4);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void ov6_022435F8(UnkStruct_ov6_02243258 *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_01; v0++) {
        if (param0->unk_1AC[v0].unk_00 == param1) {
            SpriteTransfer_RequestPlttFreeSpace(param0->unk_1AC[v0].unk_04);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void ov6_0224362C(UnkStruct_ov6_02243258 *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_01; v0++) {
        if (param0->unk_1AC[v0].unk_00 == param1) {
            SpriteResource_ReleaseData(param0->unk_1AC[v0].unk_04);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void ov6_02243660(UnkStruct_ov6_02243258 *param0, NARC *narc, int param2, int param3)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_00; v0++) {
        if (param0->unk_1B0[v0].unk_00 == param0->unk_06) {
            param0->unk_1B0[v0].unk_00 = param3;
            param0->unk_1B0[v0].unk_02 = 0;
            param0->unk_1B0[v0].unk_04 = SpriteResourceCollection_AddFrom(
                param0->unk_1A0, narc, param2, 0, param3, 2, 4);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static void ov6_022436D0(UnkStruct_ov6_02243258 *param0, NARC *narc, int param2, int param3)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_00; v0++) {
        if (param0->unk_1B4[v0].unk_00 == param0->unk_07) {
            param0->unk_1B4[v0].unk_00 = param3;
            param0->unk_1B4[v0].unk_02 = 0;
            param0->unk_1B4[v0].unk_04 = SpriteResourceCollection_AddFrom(
                param0->unk_1A4, narc, param2, 0, param3, 3, 4);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

static Sprite *ov6_02243740(UnkStruct_ov6_02243258 *param0, const VecFx32 *coordinates, u32 charResourceID, u32 paletteResourceID, u32 cellResourceID, u32 animResourceID, int spriteResourceHeaderPriority, int spriteListTemplatePriority)
{
    SpriteResourcesHeader spriteResourceHeader;
    SpriteListTemplate spriteListTemplate;
    Sprite *sprite;

    if (animResourceID == param0->unk_07) {
        animResourceID = 0xffffffff;
    }

    SpriteResourcesHeader_Init(
        &spriteResourceHeader, charResourceID, paletteResourceID, cellResourceID, animResourceID, 0xffffffff, 0xffffffff, FALSE, spriteResourceHeaderPriority, param0->unk_198, param0->unk_19C, param0->unk_1A0, param0->unk_1A4, NULL, NULL);

    spriteListTemplate.list = param0->unk_08;
    spriteListTemplate.resourceData = &spriteResourceHeader;
    spriteListTemplate.position = *coordinates;
    spriteListTemplate.priority = spriteListTemplatePriority;
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

static Sprite *ov6_022437DC(UnkStruct_ov6_02243258 *param0)
{
    Sprite *sprite;
    VecFx32 coordinateVector = { 0, 0, 0 };
    VecFx32 translationVector = { 0, 0, 0 };
    VecFx32 scalingVector = { 0x1000, 0x1000, 0 };

    sprite = ov6_02243740(param0, &coordinateVector, 0, 0, 0, 2, 0, 132);

    Sprite_SetAffineOverwriteMode(sprite, AFFINE_OVERWRITE_MODE_DOUBLE);
    Sprite_SetAffineTranslation(sprite, &translationVector);
    Sprite_SetAffineScale(sprite, &scalingVector);
    Sprite_SetAffineZRotation(sprite, CalcAngleRotationIdx_Wraparound(0));

    return sprite;
}

static Sprite *ov6_02243848(UnkStruct_ov6_02243258 *param0, int param1)
{
    VecFx32 v0 = { 0, 0, 0 };
    Sprite *v1;
    u32 v2 = 0;

    if (param1 == 1) {
        v2 = 1;
    }

    v1 = ov6_02243740(param0, &v0, 2, v2, 2, 1, 0, 131);

    Sprite_SetDrawFlag(v1, FALSE);
    Sprite_SetAnim(v1, 6);

    return v1;
}

static const UnkStruct_ov101_021D86B0 Unk_ov6_0224925C;
int (*const *const Unk_ov6_02249110[])(UnkStruct_ov6_02249110 *);

static UnkStruct_ov101_021D5D90 *ov6_02243888(FieldSystem *fieldSystem, UnkStruct_020711EC *param1, UnkStruct_ov6_02243258 *param2, Sprite *param3)
{
    UnkStruct_ov101_021D5D90 *v0;
    VecFx32 v1 = { 0, 0, 0 };
    UnkStruct_ov6_02243888 v2;

    v2.fieldSystem = fieldSystem;
    v2.unk_00 = param1;
    v2.unk_0C = param2;
    v2.unk_08 = param3;

    v0 = sub_02071330(param1, &Unk_ov6_0224925C, &v1, 0, &v2, 130);

    return v0;
}

static int ov6_022438BC(UnkStruct_ov101_021D5D90 *param0)
{
    UnkStruct_ov6_02249110 *v0 = sub_02071598(param0);
    return v0->unk_02;
}

static int ov6_022438C8(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    UnkStruct_ov6_02249110 *v0 = param1;
    const UnkStruct_ov6_02243888 *v1 = sub_020715BC(param0);

    v0->unk_58 = *v1;
    v0->unk_68 = ov6_022437DC(v0->unk_58.unk_0C);

    return 1;
}

static void ov6_022438EC(UnkStruct_ov101_021D5D90 *param0)
{
    UnkStruct_ov6_02249110 *v0 = sub_02071598(param0);

    if (v0->unk_6C) {
        sub_0207136C(v0->unk_6C);
    }

    if (v0->unk_70) {
        ov5_021F0EFC(v0->unk_70);
    }

    sub_0207136C(param0);
}

static void ov6_02243914(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    UnkStruct_ov6_02249110 *v0 = param1;
    Sprite_Delete(v0->unk_68);
}

static void ov6_02243920(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    UnkStruct_ov6_02249110 *v0 = param1;
    int (*const *v1)(UnkStruct_ov6_02249110 *);

    v1 = Unk_ov6_02249110[v0->unk_00];

    while (v1[v0->unk_01](v0) == 1) {
        (void)0;
    }
}

static const UnkStruct_ov101_021D86B0 Unk_ov6_0224925C = {
    (sizeof(UnkStruct_ov6_02249110)),
    ov6_022438C8,
    ov6_02243914,
    ov6_02243920,
    UnkStruct_ov101_021D5D90_DoNothing2
};

static int ov6_02243940(UnkStruct_ov6_02249110 *param0)
{
    param0->unk_02 = 0;
    Sprite_SetDrawFlag(param0->unk_68, FALSE);
    return 0;
}

static int (*const Unk_ov6_022490EC[])(UnkStruct_ov6_02249110 *) = {
    ov6_02243940,
};

static void ov6_02243950(UnkStruct_ov101_021D5D90 *param0)
{
    VecFx32 v0 = { FX32_ONE * 128, FX32_ONE * 111, 0 };
    VecFx32 v1 = { 0x2000, 0x2000, 0 };
    UnkStruct_ov6_02249110 *v2 = sub_02071598(param0);

    v2->unk_00 = 1;
    v2->unk_02 = 0;
    v2->unk_01 = 0;
    v2->unk_04 = 0;
    v2->unk_08 = v0;
    v2->unk_14.x = 0;
    v2->unk_14.y = 0;
    v2->unk_14.z = 0;
    v2->unk_38 = (FX32_ONE * 350);
    v2->unk_2C = v1;
    v2->unk_50 = 0x400;
    v2->unk_40 = (FX32_ONE * 45);
    v2->unk_48 = (FX32_ONE * (128 + 64));
    v2->unk_4C = (FX32_ONE * 32);
    v2->unk_14.x = CalcCosineDegrees_Wraparound(45) * ((v2->unk_48) / FX32_ONE);
    v2->unk_14.y = CalcSineDegrees_Wraparound((v2->unk_40) / FX32_ONE) * ((v2->unk_48) / FX32_ONE);

    v0.x = v2->unk_08.x + v2->unk_14.x;
    v0.y = v2->unk_08.y + v2->unk_14.y;

    Sprite_SetPosition(v2->unk_68, &v0);
    Sprite_SetAffineScale(v2->unk_68, &v1);
    Sprite_SetAffineZRotation(v2->unk_68, CalcAngleRotationIdx_Wraparound((v2->unk_38) / FX32_ONE));
    Sprite_SetPriority(v2->unk_68, 132);
    Sprite_SetDrawFlag(v2->unk_68, TRUE);

    v2->unk_6C = ov6_02245B4C(v2->unk_58.unk_00, v2->unk_58.unk_08);
    v2->unk_70 = ov5_021F0EB0(v2->unk_58.fieldSystem, HEAP_ID_FIELD);

    ov5_021F0F10(v2->unk_70, 1, -(FX32_ONE * 120), 12);

    {
        Sprite *v3;
        VecFx32 v4 = { 0, 0, 0 };
        VecFx32 v5 = { 0x2000, 0x2000, 0 };

        v3 = v2->unk_58.unk_08;

        Sprite_SetAffineOverwriteMode(v3, 2);
        Sprite_SetAffineTranslation(v3, &v4);
        Sprite_SetAffineScale(v3, &v5);
        Sprite_SetAffineZRotation(v3, CalcAngleRotationIdx_Wraparound(0));
        Sprite_SetAnim(v3, 2);
    }

    FadeIn();
}

static int ov6_02243AB8(UnkStruct_ov6_02249110 *param0)
{
    VecFx32 v0;
    Sprite *v1 = param0->unk_68;
    Sprite *v2 = param0->unk_58.unk_08;

    param0->unk_48 -= param0->unk_4C;

    if (param0->unk_48 < 0) {
        param0->unk_48 = 0;
    }

    if (param0->unk_4C > 0x800) {
        param0->unk_4C -= 0x1c00;
    }

    if (param0->unk_4C < 0x1000) {
        param0->unk_4C = 0x1000;
    }

    param0->unk_14.x = CalcCosineDegrees_Wraparound(45) * ((param0->unk_48) / FX32_ONE);
    param0->unk_14.y = CalcSineDegrees_Wraparound((param0->unk_40) / FX32_ONE) * ((param0->unk_48) / FX32_ONE);

    if (((param0->unk_40) / FX32_ONE) < 90) {
        param0->unk_40 += 0x4000;
    }

    param0->unk_2C.x -= param0->unk_50;

    if (param0->unk_2C.x < 0x1000) {
        param0->unk_2C.x = 0x1000;
    }

    param0->unk_2C.y -= param0->unk_50;

    if (param0->unk_2C.y < 0x1000) {
        param0->unk_2C.y = 0x1000;
    }

    Sprite_SetAffineScale(v1, &param0->unk_2C);
    Sprite_SetAffineScale(v2, &param0->unk_2C);

    v0.x = param0->unk_08.x + param0->unk_14.x;
    v0.y = param0->unk_08.y + param0->unk_14.y;

    Sprite_SetPosition(v1, &v0);
    v0.y -= (FX32_ONE * 18);
    Sprite_SetPosition(v2, &v0);

    if (param0->unk_48 == 0) {
        param0->unk_04 = 0;
        param0->unk_01++;
    } else {
        param0->unk_04++;
    }

    return 0;
}

static int ov6_02243BB8(UnkStruct_ov6_02249110 *param0)
{
    ov6_02245BC8(param0->unk_6C);
    ov5_021F0F10(param0->unk_70, 2, 0, 12);

    param0->unk_50 = 0x400;
    param0->unk_40 = FX32_ONE * 128;
    param0->unk_48 = 0;
    param0->unk_4C = 0x1800;
    param0->unk_01++;

    return 1;
}

static int ov6_02243BEC(UnkStruct_ov6_02249110 *param0)
{
    VecFx32 v0;
    Sprite *v1 = param0->unk_68;

    param0->unk_48 += param0->unk_4C;
    param0->unk_4C += 0x1000;

    if (param0->unk_4C > (FX32_ONE * 16)) {
        param0->unk_4C = (FX32_ONE * 16);
    }

    param0->unk_14.x = CalcCosineDegrees_Wraparound((param0->unk_40) / FX32_ONE) * ((param0->unk_48) / FX32_ONE);
    param0->unk_14.y = CalcSineDegrees_Wraparound(128) * ((param0->unk_48) / FX32_ONE);

    if (param0->unk_40 < (FX32_ONE * 160)) {
        param0->unk_40 += 0x1000;
    }

    param0->unk_38 += 0x2000;
    Sprite_SetAffineZRotation(v1, CalcAngleRotationIdx_Wraparound((param0->unk_38) / FX32_ONE));
    param0->unk_2C.x += param0->unk_50;

    if (param0->unk_2C.x > 0x1000) {
        param0->unk_2C.x = 0x1000;
    }

    param0->unk_2C.y += param0->unk_50;

    if (param0->unk_2C.y > 0x1000) {
        param0->unk_2C.y = 0x1000;
    }

    Sprite_SetAffineScale(v1, &param0->unk_2C);

    v0.x = param0->unk_08.x + param0->unk_14.x;
    v0.y = param0->unk_08.y - param0->unk_14.y;

    Sprite_SetPosition(v1, &v0);

    if (((v0.y) / FX32_ONE) <= -16) {
        param0->unk_01++;
    }

    return 0;
}

static int ov6_02243CD8(UnkStruct_ov6_02249110 *param0)
{
    Sprite_SetDrawFlag(param0->unk_68, FALSE);
    Sprite_SetAnim(param0->unk_58.unk_08, 1);

    param0->unk_04 = 0;
    param0->unk_01++;

    return 1;
}

static int ov6_02243CFC(UnkStruct_ov6_02249110 *param0)
{
    param0->unk_04++;

    if (param0->unk_04 < 20) {
        return 0;
    }

    {
        VecFx32 v0 = { FX32_ONE * (128 + 8), FX32_ONE * (111 - 32), 0 };
        VecFx32 v1 = { 0x1000, 0x1000, 0 };

        param0->unk_04 = 0;
        param0->unk_08 = v0;
        param0->unk_14.x = 0;
        param0->unk_14.y = 0;
        param0->unk_14.z = 0;
        param0->unk_38 = (FX32_ONE * 0);
        param0->unk_2C = v1;
        param0->unk_50 = 0x200;
        param0->unk_40 = (FX32_ONE * 315);
        param0->unk_48 = (FX32_ONE * 128);
        param0->unk_4C = 0x2000;

        Sprite_SetPosition(param0->unk_68, &v0);
        Sprite_SetAffineScale(param0->unk_68, &v1);
        Sprite_SetAffineZRotation(param0->unk_68, CalcAngleRotationIdx_Wraparound((param0->unk_38) / FX32_ONE));
        Sprite_SetDrawFlag(param0->unk_68, TRUE);
        Sprite_SetAnim(param0->unk_58.unk_08, 6);
        Sprite_SetAnimateFlag(param0->unk_58.unk_08, 1);
    }

    param0->unk_01++;
    return 1;
}

static int ov6_02243DC0(UnkStruct_ov6_02249110 *param0)
{
    VecFx32 v0;
    Sprite *v1 = param0->unk_68;

    param0->unk_48 -= param0->unk_4C;

    if (param0->unk_4C < (FX32_ONE * 16)) {
        param0->unk_4C += 0x2000;
    }

    if (param0->unk_48 < 0) {
        param0->unk_48 = 0;
    }

    param0->unk_14.x = CalcCosineDegrees_Wraparound(315) * ((param0->unk_48) / FX32_ONE);
    param0->unk_14.y = CalcSineDegrees_Wraparound((param0->unk_40) / FX32_ONE) * ((param0->unk_48) / FX32_ONE);

    if (((param0->unk_40) / FX32_ONE) < 180) {
        param0->unk_40 -= 0x4000;
    }

    param0->unk_2C.x -= param0->unk_50;

    if (param0->unk_2C.x < 0x400) {
        param0->unk_2C.x = 0x400;
    }

    param0->unk_2C.y -= param0->unk_50;

    if (param0->unk_2C.y < 0x400) {
        param0->unk_2C.y = 0x400;
    }

    Sprite_SetAffineScale(v1, &param0->unk_2C);
    param0->unk_38 += 0x6000;

    if (((param0->unk_38) / FX32_ONE) > 60) {
        param0->unk_38 = (FX32_ONE * 60);
    }

    Sprite_SetAffineZRotation(v1, CalcAngleRotationIdx_Wraparound((param0->unk_38) / FX32_ONE));

    v0.x = param0->unk_08.x + param0->unk_14.x;
    v0.y = param0->unk_08.y + param0->unk_14.y;

    Sprite_SetPosition(v1, &v0);

    if (param0->unk_48 <= 0) {
        Sprite_SetDrawFlag(v1, FALSE);
        param0->unk_01++;
    }

    return 0;
}

static int ov6_02243ECC(UnkStruct_ov6_02249110 *param0)
{
    param0->unk_04++;

    if (param0->unk_04 == 8) {
        Sprite_SetAnim(param0->unk_58.unk_08, 1);
        HidePlayerMapObj(param0->unk_58.fieldSystem, 0);
    }

    if (param0->unk_04 == 10) {
        Sprite_SetDrawFlag(param0->unk_58.unk_08, FALSE);
    }

    if ((param0->unk_04 > 15) && (ov5_021F0EF0(param0->unk_70) == 1)) {
        param0->unk_04 = 0;
        param0->unk_01++;
        param0->unk_02 = 2;
    }

    return 0;
}

static int ov6_02243F1C(UnkStruct_ov6_02249110 *param0)
{
    return 0;
}

static int (*const Unk_ov6_02249288[])(UnkStruct_ov6_02249110 *) = {
    ov6_02243AB8,
    ov6_02243BB8,
    ov6_02243BEC,
    ov6_02243CD8,
    ov6_02243CFC,
    ov6_02243DC0,
    ov6_02243ECC,
    ov6_02243F1C
};

static int (*const *const Unk_ov6_02249110[])(UnkStruct_ov6_02249110 *) = {
    Unk_ov6_022490EC,
    Unk_ov6_02249288
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

SysTask *SysTask_CutIn_New(FieldSystem *fieldSystem, u32 param1, Pokemon *shownPokemon, int playerGender)
{
    SysTask *task;
    HMCutIn *cutIn = HMCutIn_New(fieldSystem);

    cutIn->pokemon = shownPokemon;
    cutIn->playerGender = playerGender;
    cutIn->_1 = param1;

    if (param1 == 0) {
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

static BOOL SubTask_HMCutIn_InitWindow(HMCutIn *cutIn)
{
    ov6_02245FDC(cutIn);

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
    SubTask_HMCutIn_InitWindow,
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
    HidePlayer(cutIn, TRUE);
    cutIn->state++;
    return FALSE;
}

static BOOL SubTask_HMCutIn_WaitAscent(HMCutIn *cutIn)
{
    if (GetSubState(cutIn) != 2) {
        return FALSE;
    }

    Sprite_SetAnim(cutIn->playerSprite, 1);
    cutIn->state++;

    return FALSE;
}

static BOOL ov6_022444F8(HMCutIn *cutIn)
{
    cutIn->subState++;

    if (cutIn->subState >= 20) {
        cutIn->subState = 0;
        cutIn->state++;

        ov6_022456D4(cutIn);
    }

    return TRUE;
}

static BOOL ov6_02244518(HMCutIn *cutIn)
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

static BOOL ov6_02244548(HMCutIn *cutIn)
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

static BOOL ov6_022445EC(HMCutIn *cutIn)
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

static BOOL ov6_02244634(HMCutIn *cutIn)
{
    if (IsScreenFadeDone()) {
        cutIn->state++;
    }

    return FALSE;
}

static const CutInTaskFunc sCutInTaskFuncsFly[] = {
    SubTask_HMCutIn_Init,
    SubTask_HMCutIn_InitSpritesFly,
    SubTask_HMCutIn_InitWindow,
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
    SubTask_HMCutIn_WaitAscent,
    ov6_022444F8,
    ov6_02244518,
    ov6_02244548,
    ov6_022445EC,
    ov6_02244634,
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
    cutIn->charSource[i] = GetMonCharResource(cutIn, narc);

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

    // Palette Index 1 / 2: Player Male
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

    cutIn->pokemonCharSource = CharacterSprite_LoadPokemonSprite(cutIn->pokemon, &cutIn->pokemonSpriteTemplate, HEAP_ID_FIELD);
    cutIn->pokemonPaletteSource = CharacterSprite_GetPaletteData(&cutIn->pokemonSpriteTemplate, HEAP_ID_FIELD);
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

static void StartPlayerAnim(Sprite *param0)
{
    Sprite_SetAnimateFlag(param0, 1);
    Sprite_SetAnimSpeed(param0, FX32_ONE);
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

static void *CharacterSprite_LoadPokemonSprite(Pokemon *pokemon, PokemonSpriteTemplate *spriteTemplate, u32 heapID)
{
    void *v0 = Heap_AllocFromHeap(HEAP_ID_FIELD, (32 * 10) * 10);

    GF_ASSERT(v0 != NULL);

    int personality = Pokemon_GetValue(pokemon, MON_DATA_PERSONALITY, NULL);
    sub_02013750(spriteTemplate->narcID, spriteTemplate->character, heapID, v0, personality, FALSE, 2, spriteTemplate->spindaSpots);

    return v0;
}

static void *CharacterSprite_GetPaletteData(PokemonSpriteTemplate *spriteTemplate, u32 heapID)
{
    void *v0 = sub_02013660(spriteTemplate->narcID, spriteTemplate->palette, heapID);
    return v0;
}

static SpriteResource *GetMonCharResource(HMCutIn *cutIn, NARC *narc)
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
    SpriteResource *spriteResource = SpriteResourceCollection_AddPaletteFrom(cutIn->paletteLocation, narc, 3, 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 1, HEAP_ID_FIELD);
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
    FlyTaskEnv *v0 = sub_02071598(cutIn->unk_250);

    if (v0->unk_60) {
        sub_0207136C(v0->unk_60);
    }

    if (v0->task) {
        ov5_021F0EFC(v0->task);
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

static int SubTask_HMFlyAscent_Ascend(FlyTaskEnv *flyTaskEnv)
{
    VecFx32 position;
    Sprite *birdSprite = flyTaskEnv->birdSprite;

    flyTaskEnv->pathParam += flyTaskEnv->pathDelta;

    if (flyTaskEnv->pathDelta < FX32_CONST(16)) {
        flyTaskEnv->pathDelta += FX32_CONST(4);
    }

    flyTaskEnv->pathOffset.x = CalcCosineDegrees_Wraparound(315) * ((flyTaskEnv->pathParam) / FX32_ONE);
    flyTaskEnv->pathOffset.y = CalcSineDegrees_Wraparound((flyTaskEnv->angleParam) / FX32_ONE) * ((flyTaskEnv->pathParam) / FX32_ONE);

    if ((flyTaskEnv->angleParam / FX32_ONE) < 270) {
        flyTaskEnv->angleParam += FX32_CONST(4);
    }

    flyTaskEnv->birdScale.x += flyTaskEnv->scaleDelta;

    if (flyTaskEnv->birdScale.x > FX32_ONE) {
        flyTaskEnv->birdScale.x = FX32_ONE;
    }

    flyTaskEnv->birdScale.y += flyTaskEnv->scaleDelta;

    if (flyTaskEnv->birdScale.y > FX32_ONE) {
        flyTaskEnv->birdScale.y = FX32_ONE;
    }

    Sprite_SetAffineScale(birdSprite, &flyTaskEnv->birdScale);
    flyTaskEnv->birdRotation -= FX32_CONST(6);

    if (((flyTaskEnv->birdRotation) / FX32_ONE) < 0) {
        flyTaskEnv->birdRotation = 0;
    }

    Sprite_SetAffineZRotation(birdSprite, CalcAngleRotationIdx_Wraparound((flyTaskEnv->birdRotation) / FX32_ONE));

    position.x = flyTaskEnv->birdStartPos.x + flyTaskEnv->pathOffset.x;
    position.y = flyTaskEnv->birdStartPos.y + flyTaskEnv->pathOffset.y;

    Sprite_SetPosition(birdSprite, &position);

    if (position.y < FX32_CONST(-64)) {
        Sprite_SetDrawFlag(birdSprite, FALSE);
        flyTaskEnv->subState = 2;
        flyTaskEnv->state++;
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

static void ov6_022456D4(HMCutIn *cutIn)
{
    VecFx32 birdPosition = VEC_FX32(128, 104, 0);
    VecFx32 birdScale = VEC_FX32(1.25, 1.25, 0);
    FlyTaskEnv *flyTaskEnv = sub_02071598(cutIn->unk_250);

    flyTaskEnv->mode = 2;
    flyTaskEnv->state = 0;
    flyTaskEnv->subState = 1;
    flyTaskEnv->unk_04 = 0;
    flyTaskEnv->birdStartPos = birdPosition;
    flyTaskEnv->pathOffset.x = 0;
    flyTaskEnv->pathOffset.y = 0;
    flyTaskEnv->pathOffset.z = 0;
    flyTaskEnv->birdRotation = FX32_CONST(315);
    flyTaskEnv->birdScale = birdScale;
    flyTaskEnv->scaleDelta = FX32_CONST(0.0625);
    flyTaskEnv->angleParam = FX32_CONST(225);
    flyTaskEnv->pathParam = FX32_CONST(192);
    flyTaskEnv->pathDelta = FX32_CONST(32);
    flyTaskEnv->pathOffset.x = CalcCosineDegrees_Wraparound(315) * ((flyTaskEnv->pathParam) / FX32_ONE);
    flyTaskEnv->pathOffset.y = CalcSineDegrees_Wraparound((flyTaskEnv->angleParam) / FX32_ONE) * ((flyTaskEnv->pathParam) / FX32_ONE);

    birdPosition.x = flyTaskEnv->birdStartPos.x + flyTaskEnv->pathOffset.x;
    birdPosition.y = flyTaskEnv->birdStartPos.y + flyTaskEnv->pathOffset.y;

    Sprite_SetPosition(flyTaskEnv->birdSprite, &birdPosition);
    Sprite_SetAffineScale(flyTaskEnv->birdSprite, &birdScale);
    Sprite_SetAffineZRotation(flyTaskEnv->birdSprite, CalcAngleRotationIdx_Wraparound((flyTaskEnv->birdRotation) / FX32_ONE));
    Sprite_SetDrawFlag(flyTaskEnv->birdSprite, TRUE);

    flyTaskEnv->unk_60 = ov6_02245B4C(cutIn->unk_244, cutIn->playerSprite);
    cutIn->someFlag4 = TRUE;
    flyTaskEnv->task = ov5_021F0EB0(cutIn->fieldSystem, HEAP_ID_FIELD);

    ov5_021F0F10(flyTaskEnv->task, 1, FX32_CONST(-120), 12);

    Sprite *playerSprite;
    VecFx32 playerTranslation = VEC_FX32(0, 0, 0);
    VecFx32 playerScale = VEC_FX32(1, 1, 0);

    playerSprite = flyTaskEnv->cutInContainer.cutIn->playerSprite;

    Sprite_SetAffineOverwriteMode(playerSprite, AFFINE_OVERWRITE_MODE_DOUBLE);
    Sprite_SetAffineTranslation(playerSprite, &playerTranslation);
    Sprite_SetAffineScale(playerSprite, &playerScale);
    Sprite_SetAffineZRotation(playerSprite, CalcAngleRotationIdx_Wraparound(0));
}

static int ov6_02245840(FlyTaskEnv *env)
{
    VecFx32 birdPosition;
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

    if (((env->birdRotation) / FX32_ONE) > 360) {
        env->birdRotation = FX32_CONST(360);
    }

    Sprite_SetAffineZRotation(birdSprite, CalcAngleRotationIdx_Wraparound(env->birdRotation / FX32_ONE));

    birdPosition.x = env->birdStartPos.x + env->pathOffset.x;
    birdPosition.y = env->birdStartPos.y + env->pathOffset.y;

    Sprite_SetPosition(birdSprite, &birdPosition);

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

static int PrepareFlyDescent(FlyTaskEnv *flyTaskEnv)
{
    Sprite *playerSprite = flyTaskEnv->cutInContainer.cutIn->playerSprite;

    Sprite_SetAnim(playerSprite, 3);

    const VecFx32 *spritePos = Sprite_GetPosition(playerSprite);
    fx32 playerY = spritePos->y;
    spritePos = Sprite_GetPosition(flyTaskEnv->birdSprite);
    fx32 birdY = spritePos->y;
    flyTaskEnv->playerOffsetY = playerY - birdY;

    ov6_02245B74(flyTaskEnv->unk_60);
    ov5_021F0F10(flyTaskEnv->task, 2, 0, 12);

    flyTaskEnv->scaleDelta = FX32_CONST(1. / 16);
    flyTaskEnv->angleParam = FX32_CONST(128);
    flyTaskEnv->pathParam = 0;
    flyTaskEnv->pathDelta = FX32_CONST(0.5);
    flyTaskEnv->subState = 3;
    flyTaskEnv->state++;

    return 1;
}

static int UpdateSpritesForFlyDescent(FlyTaskEnv *env)
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

static int FlyDescentDoNothing(FlyTaskEnv *param0)
{
    return 0;
}

static const FlyTaskFunc sFlyTaskFuncsDescentFlyAway[] = {
    ov6_02245840,
    PrepareFlyDescent,
    UpdateSpritesForFlyDescent,
    FlyDescentDoNothing
};

static UnkStruct_ov101_021D5D90 *ov6_02245B4C(UnkStruct_020711EC *param0, Sprite *param1)
{
    UnkStruct_ov101_021D5D90 *v0;
    UnkStruct_ov6_02245B4C v1;
    VecFx32 v2 = { 0, 0, 0 };

    v1.unk_04 = param1;
    v0 = sub_02071330(param0, &Unk_ov6_0224920C, &v2, 0, &v1, 129);

    return v0;
}

static void ov6_02245B74(UnkStruct_ov101_021D5D90 *param0)
{
    UnkStruct_ov6_02245B74 *v0 = sub_02071598(param0);
    v0->unk_00 = 0;
}

static void ov6_02245B80(UnkStruct_ov101_021D5D90 *param0)
{
    VecFx32 v0;
    const VecFx32 *v1;
    UnkStruct_ov6_02245B74 *v2 = sub_02071598(param0);

    v2->unk_00 = 1;
    v2->unk_04 = 0;
    v2->unk_0C = 0;
    v2->unk_08 = 0;
    v2->unk_10.x = 0;
    v2->unk_10.y = 0;
    v2->unk_10.z = 0;
    v1 = Sprite_GetPosition(v2->unk_20);
    v0 = *v1;

    sub_020715D4(param0, &v0);
    Sprite_SetAnim(v2->unk_20, 5);
}

static void ov6_02245BC8(UnkStruct_ov101_021D5D90 *param0)
{
    VecFx32 spritePosition;
    UnkStruct_ov6_02245B74 *v1 = sub_02071598(param0);

    v1->unk_00 = 2;
    v1->unk_04 = 0;
    v1->unk_0C = 0;
    v1->unk_08 = 0;
    v1->unk_10.x = 0;
    v1->unk_10.y = 0;
    v1->unk_10.z = 0;

    SetVectorToSpritePosition(v1->unk_20, &spritePosition);

    sub_020715D4(param0, &spritePosition);
    Sprite_SetAnim(v1->unk_20, 4);
}

static int ov6_02245C04(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    UnkStruct_ov6_02245B74 *v0 = param1;
    const UnkStruct_ov6_02245B4C *v1 = sub_020715BC(param0);

    v0->unk_1C = v1->unk_00;
    v0->unk_20 = v1->unk_04;

    return 1;
}

static const fx32 Unk_ov6_022492A8[12] = {
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

static const fx32 Unk_ov6_022491FC[4] = {
    FX32_ONE * -4,
    FX32_ONE * -6,
    FX32_ONE * -7,
    FX32_ONE * -8 };

static void ov6_02245C18(UnkStruct_ov101_021D5D90 *param0, UnkStruct_ov6_02245B74 *param1)
{
    VecFx32 v0;

    switch (param1->unk_04) {
    case 0:
        param1->unk_10.y = Unk_ov6_022492A8[param1->unk_0C];
        sub_020715E4(param0, &v0);
        v0.y += param1->unk_10.y;
        Sprite_SetPosition(param1->unk_20, &v0);
        param1->unk_0C++;

        if (param1->unk_0C >= 12) {
            param1->unk_0C = 0;
            param1->unk_08 = 1;
            param1->unk_04++;
        }
    }
}

static void ov6_02245C64(UnkStruct_ov101_021D5D90 *param0, UnkStruct_ov6_02245B74 *param1)
{
    VecFx32 newSpritePosition;

    if (param1->unk_04 == FALSE) {
        param1->unk_10.y = Unk_ov6_022491FC[param1->unk_0C];
        sub_020715E4(param0, &newSpritePosition);
        newSpritePosition.y += param1->unk_10.y;
        Sprite_SetPosition(param1->unk_20, &newSpritePosition);
        param1->unk_0C++;

        if (param1->unk_0C >= 4) {
            param1->unk_0C = 0;
            param1->unk_08 = 1;
            param1->unk_04++;
        }
    }
}

static void ov6_02245CB0(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    UnkStruct_ov6_02245B74 *v0 = param1;

    switch (v0->unk_00) {
    case 1:
        ov6_02245C18(param0, v0);
        break;
    case 2:
        ov6_02245C64(param0, v0);
        break;
    }
}

static const UnkStruct_ov101_021D86B0 Unk_ov6_0224920C = {
    sizeof(UnkStruct_ov6_02245B74),
    ov6_02245C04,
    UnkStruct_ov101_021D5D90_DoNothing3,
    ov6_02245CB0,
    UnkStruct_ov101_021D5D90_DoNothing2
};

static const UnkStruct_ov101_021D86B0 dummy_field_cutin = {
    sizeof(UnkStruct_ov100_021D4890),
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

int ov6_02245CF0(SysTask *param0)
{
    FlyLandingEnv *v0 = SysTask_GetParam(param0);
    return v0->unk_04;
}

void ov6_02245CFC(SysTask *param0)
{
    FlyLandingEnv *v0 = SysTask_GetParam(param0);

    Heap_Free(v0);
    SysTask_Done(param0);
}

static void FlyLandingTask(SysTask *task, void *taskEnv)
{
    FlyLandingEnv *flyLandingTaskEnv = taskEnv;

    while (FlyLandingTaskFuncs[flyLandingTaskEnv->state](flyLandingTaskEnv) == TRUE) {
        (void)0;
    }

    if (flyLandingTaskEnv->unk_10) {
        if (flyLandingTaskEnv->unk_1D4 != NULL) {
            sub_020713D0(flyLandingTaskEnv->unk_1D4);
        }

        if (flyLandingTaskEnv->unk_18.unk_08 != NULL) {
            SpriteList_Update(flyLandingTaskEnv->unk_18.unk_08);
        }
    }
}

static BOOL SubTask_FlyLanding_HidePlayer(FlyLandingEnv *taskEnv)
{
    HidePlayerMapObj(taskEnv->fieldSystem, TRUE);
    taskEnv->state++;
    return FALSE;
}

static BOOL ov6_02245D60(FlyLandingEnv *taskEnv)
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

static BOOL ov6_02245EA4(FlyLandingEnv *param0)
{
    param0->unk_1D0 = ov6_02243848(&param0->unk_18, param0->playerGender);
    Sprite_SetDrawFlag(param0->unk_1D0, TRUE);

    param0->unk_1D8 = ov6_02243888(param0->fieldSystem, param0->unk_1D4, &param0->unk_18, param0->unk_1D0);
    ov6_02243950(param0->unk_1D8);

    param0->state++;
    param0->unk_10 = 1;

    return FALSE;
}

static BOOL ov6_02245EEC(FlyLandingEnv *param0)
{
    if (ov6_022438BC(param0->unk_1D8) != 2) {
        return FALSE;
    }

    ov6_022438EC(param0->unk_1D8);
    param0->state++;

    return FALSE;
}

static BOOL ov6_02245F18(FlyLandingEnv *param0)
{
    sub_0207121C(param0->unk_1D4);
    ov6_0224339C(&param0->unk_18);

    param0->unk_10 = 0;
    param0->unk_04 = 1;
    param0->state++;

    return FALSE;
}

static BOOL SubTask_FlyLanding_NOP(FlyLandingEnv *param0)
{
    return FALSE;
}

static BOOL (*const FlyLandingTaskFuncs[])(FlyLandingEnv *) = {
    SubTask_FlyLanding_HidePlayer,
    ov6_02245D60,
    ov6_02245EA4,
    ov6_02245EEC,
    ov6_02245F18,
    SubTask_FlyLanding_NOP
};

static void *AllocFromHeapAtEnd(u32 heapID, int size)
{
    void *ptr = Heap_AllocFromHeapAtEnd(heapID, size);

    GF_ASSERT(ptr != NULL);
    memset(ptr, 0, size);

    return ptr;
}

static void HidePlayer(HMCutIn *cutIn, BOOL hidden)
{
    MapObject *playObj = Player_MapObject(cutIn->fieldSystem->playerAvatar);

    MapObject_SetPauseMovementOff(playObj);
    MapObject_SetHidden(playObj, hidden);
}

static int ov6_02245F80(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    const HMCutInWithPlayer *v0 = sub_020715BC(param0);
    HMCutInWithPlayer *v1 = param1;

    *v1 = *v0;
    return 1;
}

static void ov6_02245F94(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    fx32 v0, v1, v2;
    const VecFx32 *v3;
    HMCutInWithPlayer *v4 = param1;

    v3 = Sprite_GetPosition(v4->playerSprite);
    v0 = v3->y;
    v1 = v4->cutIn->windowY1;
    v2 = v4->cutIn->windowY2;

    if (v4->cutIn->someFlag4 == FALSE) {
        if (v0 - (FX32_ONE * 8) >= v1 && v0 + (FX32_ONE * 8) <= v2) {
            Sprite_SetDrawFlag(v4->playerSprite, TRUE);
        } else {
            Sprite_SetDrawFlag(v4->playerSprite, FALSE);
        }
    } else {
        Sprite_SetDrawFlag(v4->playerSprite, TRUE);
    }
}

static const UnkStruct_ov101_021D86B0 Unk_ov6_02249234 = {
    sizeof(HMCutInWithPlayer),
    ov6_02245F80,
    UnkStruct_ov101_021D5D90_DoNothing3,
    ov6_02245F94,
    UnkStruct_ov101_021D5D90_DoNothing2
};

static void ov6_02245FDC(HMCutIn *cutIn)
{
    VecFx32 initialPosition = { 0, 0, 0 };
    HMCutInWithPlayer wrapper;

    wrapper.playerSprite = cutIn->playerSprite;
    wrapper.cutIn = cutIn;

    cutIn->unk_254 = sub_02071330(cutIn->unk_244, &Unk_ov6_02249234, &initialPosition, 0, &wrapper, 134);
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
