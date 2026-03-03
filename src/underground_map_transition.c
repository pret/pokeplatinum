#include "underground_map_transition.h"

#include <nitro.h>

#include "generated/genders.h"

#include "field/field_system.h"

#include "bg_window.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "map_object.h"
#include "player_avatar.h"
#include "save_player.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "sys_task_extensions.h"
#include "sys_task_manager.h"
#include "trainer_info.h"

#include "res/graphics/sprite_templates/underground_map_transition.h"
#include "res/graphics/sprite_templates/underground_map_transition_templates.naix"

typedef struct UGMapTransitionSpriteData {
    SpriteList *spriteList;
    SpriteResourcesHeaderList *resourceHeaders;
    SpriteResourceCollection *spriteResourceCollection[MAX_SPRITE_RESOURCE_GEN4];
    SpriteResourceList *resourceLists[2];
    int dummy[MAX_SPRITE_RESOURCE_GEN4];
    G2dRenderer g2dRenderer;
} UGMapTransitionSpriteData;

struct UGMapTransitionAnimManager;
typedef struct UGMapTransitionAnimManager {
    void *animContext;
    void (*initAnimContextFunc)(UGMapTransitionSpriteData *spriteData, struct UGMapTransitionAnimManager *animManager);
    void (*freeAnimContextFunc)(struct UGMapTransitionAnimManager *animManager);
    int (*animateFunc)(struct UGMapTransitionAnimManager *animManager);
} UGMapTransitionAnimManager;

typedef struct UndergroundMapTransitionContext {
    FieldSystem *fieldSystem;
    UGMapTransitionSpriteData spriteData;
    UGMapTransitionAnimManager animManagers[2];
    int activeAnimCount;
    int state;
    int timer;
    BOOL *isDone;
} UndergroundMapTransitionContext;

typedef struct DescendAnimContext {
    VecFx32 position;
    Sprite *sprite;
    int index;
} DescendAnimContext;

typedef struct AscendAnimContext {
    VecFx32 position;
    Sprite *sprite;
    int state;
    int index;
} AscendAnimContext;

typedef struct HoleAnimContext {
    VecFx32 position;
    Sprite *sprite;
    int frames;
} HoleAnimContext;

enum UGMapTransitionAnim {
    UG_MAP_TRANSITION_ANIM_JUMP_INTO_HOLE = 0,
    UG_MAP_TRANSITION_ANIM_OPEN_HOLE,
    UG_MAP_TRANSITION_ANIM_DESCEND,
    UG_MAP_TRANSITION_ANIM_ASCEND,
    UG_MAP_TRANSITION_ANIM_EMERGE_FROM_HOLE,
    UG_MAP_TRANSITION_ANIM_CLOSE_HOLE,
};

enum UGMapTransitionAnimateResult {
    ANIMATE_RESULT_DONE = 0,
    ANIMATE_RESULT_ONGOING,
    ANIMATE_RESULT_START_FADE,
};

enum UGMapTransitionPlayerAnim {
    PLAYER_ANIM_DESCEND = 0,
    PLAYER_ANIM_ASCEND,
};

enum HoleAnim {
    HOLE_ANIM_OPEN = 0,
    HOLE_ANIM_CLOSE,
};

enum EnterStartTaskState {
    ENTER_START_STATE_INIT = 0,
    ENTER_START_STATE_INIT_ANIMS,
    ENTER_START_STATE_ANIMATE,
    ENTER_START_STATE_WAIT_FOR_FADE,
    ENTER_START_STATE_FREE,
    ENTER_START_STATE_END,
};

enum EnterArriveTaskState {
    ENTER_ARRIVE_STATE_INIT = 0,
    ENTER_ARRIVE_STATE_INIT_ANIM,
    ENTER_ARRIVE_STATE_ANIMATE,
    ENTER_ARRIVE_STATE_WAIT,
    ENTER_ARRIVE_STATE_FREE,
    ENTER_ARRIVE_STATE_END,
};

enum ExitStartTaskState {
    EXIT_START_STATE_INIT = 0,
    EXIT_START_STATE_INIT_ANIM,
    EXIT_START_STATE_WAIT,
    EXIT_START_STATE_ANIMATE,
    EXIT_START_STATE_WAIT_FOR_FADE,
    EXIT_START_STATE_FREE,
    EXIT_START_STATE_END,
};

enum ExitArriveTaskState {
    EXIT_ARRIVE_STATE_INIT = 0,
    EXIT_ARRIVE_STATE_FADE,
    EXIT_ARRIVE_STATE_WAIT_FOR_FADE,
    EXIT_ARRIVE_STATE_ANIMATE_PLAYER,
    EXIT_ARRIVE_STATE_ANIMATE_HOLE,
    EXIT_ARRIVE_STATE_FREE,
    EXIT_ARRIVE_STATE_END,
};

enum AscendState {
    ASCEND_STATE_INIT = 0,
    ASCEND_STATE_BOTTOM_SCREEN,
    ASCEND_STATE_TOP_SCREEN,
    ASCEND_STATE_TOP_SCREEN_FADE,
    ASCEND_STATE_END,
};

enum EmergeFromHoleState {
    EMERGE_FROM_HOLE_INIT = 0,
    EMERGE_FROM_HOLE_JUMP,
    EMERGE_FROM_HOLE_SPIN,
    EMERGE_FROM_HOLE_END,
};

static UndergroundMapTransitionContext *UndergroundMapTransition_StartTransitionTask(SysTaskFunc func, FieldSystem *fieldSystem, NNS_G2D_VRAM_TYPE vramType);
static void UndergroundMapTransition_EndTransitionTask(SysTask *sysTask, UndergroundMapTransitionContext *ctx);
void UndergroundMapTransition_InitSprites(UGMapTransitionSpriteData *spriteData, enum Gender playerGender, NNS_G2D_VRAM_TYPE vramType);
static void UndergroundMapTransition_FreeSpriteData(UGMapTransitionSpriteData *spriteData);
static void UndergroundMapTransition_InitAnim(UndergroundMapTransitionContext *ctx, UGMapTransitionAnimManager *animManager, int anim);
static void UndergroundMapTransition_FreeCurrentAnim(UGMapTransitionAnimManager *animManager);
static void UGMapTransitionSpriteData_Init(UGMapTransitionSpriteData *spriteData);
static void UndergroundMapTransition_LoadSpriteResources(UGMapTransitionSpriteData *spriteData, enum Gender playerGender, NNS_G2D_VRAM_TYPE vramType);
static int UndergroundMapTransition_LoadSpriteResource(SpriteResourceCollection *spriteData, SpriteResourceList **outList, u32 narcMemberIdx);
static void UGMapTransitionSpriteData_Free(UGMapTransitionSpriteData *spriteData);
static void UndergroundMapTransition_InitJumpIntoHoleAnim(UGMapTransitionSpriteData *spriteData, UGMapTransitionAnimManager *animManager);
static void UndergroundMapTransition_FreeJumpIntoHoleAnim(UGMapTransitionAnimManager *animManager);
static int UndergroundMapTransition_JumpIntoHole(UGMapTransitionAnimManager *animManager);
static void UndergroundMapTransition_InitOpenHoleAnim(UGMapTransitionSpriteData *spriteData, UGMapTransitionAnimManager *animManager);
static void UndergroundMapTransition_FreeOpenHoleAnim(UGMapTransitionAnimManager *animManager);
static int UndergroundMapTransition_OpenHole(UGMapTransitionAnimManager *animManager);
static void UndergroundMapTransition_InitDescendAnim(UGMapTransitionSpriteData *spriteData, UGMapTransitionAnimManager *animManager);
static void UndergroundMapTransition_FreeDescendAnim(UGMapTransitionAnimManager *animManager);
static int UndergroundMapTransition_Descend(UGMapTransitionAnimManager *animManager);
static void UndergroundMapTransition_InitAscendAnim(UGMapTransitionSpriteData *spriteData, UGMapTransitionAnimManager *animManager);
static void UndergroundMapTransition_FreeAscendAnim(UGMapTransitionAnimManager *animManager);
static int UndergroundMapTransition_Ascend(UGMapTransitionAnimManager *animManager);
static void UndergroundMapTransition_InitEmergeFromHoleAnim(UGMapTransitionSpriteData *spriteData, UGMapTransitionAnimManager *animManager);
static void UndergroundMapTransition_FreeEmergeFromHoleAnim(UGMapTransitionAnimManager *animManager);
static int UndergroundMapTransition_EmergeFromHole(UGMapTransitionAnimManager *animManager);
static void UndergroundMapTransition_InitCloseHoleAnim(UGMapTransitionSpriteData *spriteData, UGMapTransitionAnimManager *animManager);
static void UndergroundMapTransition_FreeCloseHoleAnim(UGMapTransitionAnimManager *animManager);
static int UndergroundMapTransition_CloseHole(UGMapTransitionAnimManager *animManager);

static const u8 sResdatNarcIndices[2][2] = {
    [SPRITE_RESOURCE_CHAR] = { [GENDER_MALE] = underground_map_transition_chars_resdat, [GENDER_FEMALE] = underground_map_transition_dawn_chars_resdat },
    [SPRITE_RESOURCE_PLTT] = { [GENDER_MALE] = underground_map_transition_pltts_resdat, [GENDER_FEMALE] = underground_map_transition_dawn_pltts_resdat }
};

static const u8 sVRAMTypes[UG_MAP_TRANSITION_COUNT] = {
    [UG_MAP_TRANSITION_ENTER_START] = NNS_G2D_VRAM_TYPE_2DMAIN,
    [UG_MAP_TRANSITION_ENTER_ARRIVE] = NNS_G2D_VRAM_TYPE_2DBOTH,
    [UG_MAP_TRANSITION_EXIT_START] = NNS_G2D_VRAM_TYPE_2DBOTH,
    [UG_MAP_TRANSITION_EXIT_ARRIVE] = NNS_G2D_VRAM_TYPE_2DMAIN
};

static void UndergroundMapTransition_EnterStartTask(SysTask *sysTask, void *data)
{
    UndergroundMapTransitionContext *ctx = (UndergroundMapTransitionContext *)data;
    int animateResults[2];
    int i;

    if (ctx->spriteData.spriteList) {
        SpriteList_Update(ctx->spriteData.spriteList);
    }

    switch (ctx->state) {
    case ENTER_START_STATE_INIT:
        MapObject_SetPauseMovementOff(Player_MapObject(ctx->fieldSystem->playerAvatar));
        PlayerAvatar_SetVisible(ctx->fieldSystem->playerAvatar, FALSE);
        ctx->state++;
        break;
    case ENTER_START_STATE_INIT_ANIMS:
        UndergroundMapTransition_InitAnim(ctx, &ctx->animManagers[UndergroundMapTransition_Template_Player], UG_MAP_TRANSITION_ANIM_JUMP_INTO_HOLE);
        UndergroundMapTransition_InitAnim(ctx, &ctx->animManagers[UndergroundMapTransition_Template_Hole], UG_MAP_TRANSITION_ANIM_OPEN_HOLE);
        ctx->activeAnimCount = 2;
        ctx->state++;
        break;
    case ENTER_START_STATE_ANIMATE:
        for (i = 0; i < ctx->activeAnimCount; i++) {
            animateResults[i] = ctx->animManagers[i].animateFunc(&ctx->animManagers[i]);
        }

        if (animateResults[UndergroundMapTransition_Template_Player] == ANIMATE_RESULT_START_FADE) {
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_FIELD1);
        }

        for (i = 0; i < ctx->activeAnimCount; i++) {
            if (animateResults[i] != ANIMATE_RESULT_DONE) {
                break;
            }
        }

        if (i == ctx->activeAnimCount) {
            ctx->state++;
        }
        break;
    case ENTER_START_STATE_WAIT_FOR_FADE:
        if (IsScreenFadeDone()) {
            ctx->state++;
        }
        break;
    case ENTER_START_STATE_FREE:
        for (i = 0; i < ctx->activeAnimCount; i++) {
            UndergroundMapTransition_FreeCurrentAnim(&ctx->animManagers[i]);
        }

        ctx->state++;
        break;
    case ENTER_START_STATE_END:
        *ctx->isDone = TRUE;
        UndergroundMapTransition_EndTransitionTask(sysTask, ctx);
        break;
    }
}

static void UndergroundMapTransition_EnterArriveTask(SysTask *sysTask, void *data)
{
    UndergroundMapTransitionContext *ctx = (UndergroundMapTransitionContext *)data;
    GXRgb bgColor = GX_RGB(0, 0, 0);

    if (ctx->state != ENTER_ARRIVE_STATE_END) {
        SpriteList_Update(ctx->spriteData.spriteList);
    }

    switch (ctx->state) {
    case ENTER_ARRIVE_STATE_INIT:
        PlayerAvatar_SetVisible(ctx->fieldSystem->playerAvatar, FALSE);
        ctx->state++;
        break;
    case ENTER_ARRIVE_STATE_INIT_ANIM:
        Bg_LoadPalette(BG_LAYER_SUB_0, &bgColor, sizeof(GXRgb), 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, FALSE);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, FALSE);
        UndergroundMapTransition_InitAnim(ctx, &ctx->animManagers[UndergroundMapTransition_Template_Player], UG_MAP_TRANSITION_ANIM_DESCEND);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_FIELD1);
        Sound_PlayEffect(SEQ_SE_DP_PYUU);
        ctx->activeAnimCount = 1;
        ctx->state++;
        break;
    case ENTER_ARRIVE_STATE_ANIMATE:
        int animateResult = ctx->animManagers[UndergroundMapTransition_Template_Player].animateFunc(&ctx->animManagers[UndergroundMapTransition_Template_Player]);

        if (animateResult == ANIMATE_RESULT_DONE && IsScreenFadeDone()) {
            Sound_PlayEffect(SEQ_SE_DP_SUTYA);
            ctx->state++;
            ctx->timer = -255;
        }
        break;
    case ENTER_ARRIVE_STATE_WAIT:
        ctx->timer += 16;

        if (ctx->timer > 0) {
            ctx->state++;
            PlayerAvatar_SetVisible(ctx->fieldSystem->playerAvatar, TRUE);
        }
        break;
    case ENTER_ARRIVE_STATE_FREE:
        UndergroundMapTransition_FreeCurrentAnim(&ctx->animManagers[UndergroundMapTransition_Template_Player]);
        ctx->state++;
        break;
    case ENTER_ARRIVE_STATE_END:
        *ctx->isDone = TRUE;
        UndergroundMapTransition_EndTransitionTask(sysTask, ctx);
        break;
    }
}

static void UndergroundMapTransition_ExitStartTask(SysTask *sysTask, void *data)
{
    UndergroundMapTransitionContext *ctx = (UndergroundMapTransitionContext *)data;

    if (ctx->state != EXIT_START_STATE_END) {
        SpriteList_Update(ctx->spriteData.spriteList);
    }

    switch (ctx->state) {
    case EXIT_START_STATE_INIT:
        PlayerAvatar_SetVisible(ctx->fieldSystem->playerAvatar, FALSE);
        ctx->state++;
        break;
    case EXIT_START_STATE_INIT_ANIM:
        UndergroundMapTransition_InitAnim(ctx, &ctx->animManagers[UndergroundMapTransition_Template_Player], UG_MAP_TRANSITION_ANIM_ASCEND);
        Sound_PlayEffect(SEQ_SE_DP_PYUU2);
        ctx->activeAnimCount = 1;
        ctx->state++;
        break;
    case EXIT_START_STATE_WAIT:
        ctx->timer -= 32;

        if (ctx->timer < -255) {
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, FALSE);

            ctx->state++;
        }
        break;
    case EXIT_START_STATE_ANIMATE:
        int animateResult = ctx->animManagers[UndergroundMapTransition_Template_Player].animateFunc(&ctx->animManagers[UndergroundMapTransition_Template_Player]);

        if (animateResult == ANIMATE_RESULT_START_FADE) {
            ctx->timer = 0;
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_WHITE, 6, 1, HEAP_ID_FIELD1);
        }

        if (animateResult == ANIMATE_RESULT_DONE) {
            ctx->state++;
        }
        break;
    case EXIT_START_STATE_WAIT_FOR_FADE:
        if (IsScreenFadeDone()) {
            ctx->timer = 0;
            ctx->state++;
        }
        break;
    case EXIT_START_STATE_FREE:
        UndergroundMapTransition_FreeCurrentAnim(&ctx->animManagers[UndergroundMapTransition_Template_Player]);
        ctx->state++;
        break;
    case EXIT_START_STATE_END:
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, FALSE);
        *ctx->isDone = TRUE;
        UndergroundMapTransition_EndTransitionTask(sysTask, ctx);
        break;
    }
}

static void UndergroundMapTransition_ExitArriveTask(SysTask *sysTask, void *data)
{
    UndergroundMapTransitionContext *ctx = (UndergroundMapTransitionContext *)data;
    int animateResults[2];

    if (ctx->state != EXIT_ARRIVE_STATE_END) {
        SpriteList_Update(ctx->spriteData.spriteList);
    }

    switch (ctx->state) {
    case EXIT_ARRIVE_STATE_INIT:
        PlayerAvatar_SetVisible(ctx->fieldSystem->playerAvatar, FALSE);
        UndergroundMapTransition_InitAnim(ctx, &ctx->animManagers[UndergroundMapTransition_Template_Player], UG_MAP_TRANSITION_ANIM_EMERGE_FROM_HOLE);
        UndergroundMapTransition_InitAnim(ctx, &ctx->animManagers[UndergroundMapTransition_Template_Hole], UG_MAP_TRANSITION_ANIM_CLOSE_HOLE);
        ctx->activeAnimCount = 2;
        ctx->state++;
        break;
    case EXIT_ARRIVE_STATE_FADE:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_WHITE, 6, 1, HEAP_ID_FIELD1);
        ctx->state++;
        break;
    case EXIT_ARRIVE_STATE_WAIT_FOR_FADE:
        if (IsScreenFadeDone()) {
            Sound_PlayEffect(SEQ_SE_DP_GYURU);
            ctx->state++;
        }
        break;
    case EXIT_ARRIVE_STATE_ANIMATE_PLAYER:
        animateResults[UndergroundMapTransition_Template_Player] = ctx->animManagers[UndergroundMapTransition_Template_Player].animateFunc(&ctx->animManagers[UndergroundMapTransition_Template_Player]);

        if (animateResults[UndergroundMapTransition_Template_Player] == ANIMATE_RESULT_DONE) {
            PlayerAvatar_SetVisible(ctx->fieldSystem->playerAvatar, TRUE);
            ctx->timer = 6;
            ctx->state++;
        }
        break;
    case EXIT_ARRIVE_STATE_ANIMATE_HOLE:
        animateResults[UndergroundMapTransition_Template_Hole] = ctx->animManagers[UndergroundMapTransition_Template_Hole].animateFunc(&ctx->animManagers[UndergroundMapTransition_Template_Hole]);

        if (ctx->timer <= 0) {
            if (ctx->timer == 0) {
                UndergroundMapTransition_FreeCurrentAnim(&ctx->animManagers[UndergroundMapTransition_Template_Player]);
                ctx->timer--;
            }
        } else {
            ctx->timer--;
        }

        if (animateResults[UndergroundMapTransition_Template_Hole] == ANIMATE_RESULT_DONE) {
            ctx->state++;
        }
        break;
    case EXIT_ARRIVE_STATE_FREE:
        UndergroundMapTransition_FreeCurrentAnim(&ctx->animManagers[UndergroundMapTransition_Template_Hole]);
        ctx->state++;
        break;
    case EXIT_ARRIVE_STATE_END:
        *ctx->isDone = TRUE;
        UndergroundMapTransition_EndTransitionTask(sysTask, ctx);
        break;
    }
}

void UndergroundMapTransition_StartTransition(FieldSystem *fieldSystem, enum UGMapTransition transition, BOOL *isDoneOut)
{
    UndergroundMapTransitionContext *ctx;

    switch (transition) {
    case UG_MAP_TRANSITION_ENTER_START:
        ctx = UndergroundMapTransition_StartTransitionTask(UndergroundMapTransition_EnterStartTask, fieldSystem, sVRAMTypes[transition]);
        break;
    case UG_MAP_TRANSITION_ENTER_ARRIVE:
        ctx = UndergroundMapTransition_StartTransitionTask(UndergroundMapTransition_EnterArriveTask, fieldSystem, sVRAMTypes[transition]);
        break;
    case UG_MAP_TRANSITION_EXIT_START:
        ctx = UndergroundMapTransition_StartTransitionTask(UndergroundMapTransition_ExitStartTask, fieldSystem, sVRAMTypes[transition]);
        break;
    case UG_MAP_TRANSITION_EXIT_ARRIVE:
        ctx = UndergroundMapTransition_StartTransitionTask(UndergroundMapTransition_ExitArriveTask, fieldSystem, sVRAMTypes[transition]);
        break;
    }

    ctx->isDone = isDoneOut;
    ctx->fieldSystem = fieldSystem;
}

static UndergroundMapTransitionContext *UndergroundMapTransition_StartTransitionTask(SysTaskFunc func, FieldSystem *fieldSystem, NNS_G2D_VRAM_TYPE vramType)
{
    SysTask *sysTask = SysTask_StartAndAllocateParam(func, sizeof(UndergroundMapTransitionContext), 5, HEAP_ID_FIELD1);
    UndergroundMapTransitionContext *ctx = SysTask_GetParam(sysTask);
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(fieldSystem->saveData);
    enum Gender playerGender = TrainerInfo_Gender(trainerInfo);

    UndergroundMapTransition_InitSprites(&ctx->spriteData, playerGender, vramType);

    return ctx;
}

static void UndergroundMapTransition_EndTransitionTask(SysTask *sysTask, UndergroundMapTransitionContext *ctx)
{
    UndergroundMapTransition_FreeSpriteData(&ctx->spriteData);
    SysTask_FinishAndFreeParam(sysTask);
}

static void UndergroundMapTransition_InitSprites(UGMapTransitionSpriteData *spriteData, enum Gender playerGender, NNS_G2D_VRAM_TYPE vramType)
{
    UGMapTransitionSpriteData_Init(spriteData);
    UndergroundMapTransition_LoadSpriteResources(spriteData, playerGender, vramType);
}

static void UndergroundMapTransition_FreeSpriteData(UGMapTransitionSpriteData *spriteData)
{
    UGMapTransitionSpriteData_Free(spriteData);
}

static void UGMapTransitionSpriteData_Init(UGMapTransitionSpriteData *spriteData)
{
    spriteData->spriteList = SpriteList_InitRendering(2, &spriteData->g2dRenderer, HEAP_ID_FIELD1);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

static void UndergroundMapTransition_LoadSpriteResources(UGMapTransitionSpriteData *spriteData, enum Gender playerGender, NNS_G2D_VRAM_TYPE vramType)
{
    for (int resourceType = SPRITE_RESOURCE_CHAR; resourceType < MAX_SPRITE_RESOURCE_GEN4; resourceType++) {
        spriteData->spriteResourceCollection[resourceType] = SpriteResourceCollection_New(2, resourceType, HEAP_ID_FIELD1);
    }

    spriteData->dummy[SPRITE_RESOURCE_CHAR] = UndergroundMapTransition_LoadSpriteResource(spriteData->spriteResourceCollection[SPRITE_RESOURCE_CHAR], &spriteData->resourceLists[SPRITE_RESOURCE_CHAR], sResdatNarcIndices[SPRITE_RESOURCE_CHAR][playerGender]);

    for (int i = 0; i < spriteData->resourceLists[SPRITE_RESOURCE_CHAR]->count; i++) {
        SpriteResource_SetVRAMType(spriteData->resourceLists[SPRITE_RESOURCE_CHAR]->resources[i], vramType);
    }

    spriteData->dummy[SPRITE_RESOURCE_PLTT] = UndergroundMapTransition_LoadSpriteResource(spriteData->spriteResourceCollection[SPRITE_RESOURCE_PLTT], &spriteData->resourceLists[SPRITE_RESOURCE_PLTT], sResdatNarcIndices[SPRITE_RESOURCE_PLTT][playerGender]);

    for (int i = 0; i < spriteData->resourceLists[SPRITE_RESOURCE_PLTT]->count; i++) {
        SpriteResource_SetVRAMType(spriteData->resourceLists[SPRITE_RESOURCE_PLTT]->resources[i], vramType);
    }

    spriteData->dummy[SPRITE_RESOURCE_CELL] = UndergroundMapTransition_LoadSpriteResource(spriteData->spriteResourceCollection[SPRITE_RESOURCE_CELL], NULL, underground_map_transition_cells_resdat);
    spriteData->dummy[SPRITE_RESOURCE_ANIM] = UndergroundMapTransition_LoadSpriteResource(spriteData->spriteResourceCollection[SPRITE_RESOURCE_ANIM], NULL, underground_map_transition_anims_resdat);

    SpriteTransfer_RequestCharListAtEnd(spriteData->resourceLists[SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_RequestPlttFreeSpaceList(spriteData->resourceLists[SPRITE_RESOURCE_PLTT]);

    void *resdatEntries = LoadMemberFromNARC(NARC_INDEX_DATA__UGROUNDEFFECT, underground_map_transition_cldat, FALSE, HEAP_ID_FIELD1, FALSE);
    spriteData->resourceHeaders = SpriteResourcesHeaderList_NewFromResdat(resdatEntries, HEAP_ID_FIELD1, spriteData->spriteResourceCollection[SPRITE_RESOURCE_CHAR], spriteData->spriteResourceCollection[SPRITE_RESOURCE_PLTT], spriteData->spriteResourceCollection[SPRITE_RESOURCE_CELL], spriteData->spriteResourceCollection[SPRITE_RESOURCE_ANIM], NULL, NULL);

    Heap_Free(resdatEntries);
}

static int UndergroundMapTransition_LoadSpriteResource(SpriteResourceCollection *spriteResources, SpriteResourceList **outList, u32 narcMemberIdx)
{
    SpriteResourceTable *table = Heap_AllocAtEnd(HEAP_ID_FIELD1, SpriteResourceTable_Size());
    void *data = LoadMemberFromNARC(NARC_INDEX_DATA__UGROUNDEFFECT, narcMemberIdx, FALSE, HEAP_ID_FIELD1, FALSE);

    SpriteResourceTable_LoadFromBinary(data, table, HEAP_ID_FIELD1);
    Heap_Free(data);

    SpriteResourceList *list;
    int count;
    if (outList != NULL) {
        count = SpriteResourceTable_GetCount(table);
        *outList = SpriteResourceList_New(count, HEAP_ID_FIELD1);
        list = *outList;
    } else {
        list = NULL;
    }

    count = SpriteResourceCollection_Extend(spriteResources, table, list, HEAP_ID_FIELD1);

    SpriteResourceTable_Clear(table);
    Heap_Free(table);

    return count;
}

static void UGMapTransitionSpriteData_Free(UGMapTransitionSpriteData *spriteData)
{
    SpriteList_Delete(spriteData->spriteList);
    spriteData->spriteList = NULL;

    SpriteResourcesHeaderList_Free(spriteData->resourceHeaders);
    spriteData->resourceHeaders = NULL;

    SpriteTransfer_ResetCharTransferList(spriteData->resourceLists[SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_ResetPlttTransferList(spriteData->resourceLists[SPRITE_RESOURCE_PLTT]);

    for (int resourceType = SPRITE_RESOURCE_CHAR; resourceType < SPRITE_RESOURCE_PLTT + 1; resourceType++) {
        SpriteResourceList_Delete(spriteData->resourceLists[resourceType]);
    }

    for (int resourceType = SPRITE_RESOURCE_CHAR; resourceType < MAX_SPRITE_RESOURCE_GEN4; resourceType++) {
        SpriteResourceCollection_Delete(spriteData->spriteResourceCollection[resourceType]);
    }
}

static void UndergroundMapTransition_InitAnim(UndergroundMapTransitionContext *ctx, UGMapTransitionAnimManager *animManager, int anim)
{
    memset(animManager, 0, sizeof(UGMapTransitionAnimManager));

    switch (anim) {
    case UG_MAP_TRANSITION_ANIM_JUMP_INTO_HOLE:
        animManager->initAnimContextFunc = UndergroundMapTransition_InitJumpIntoHoleAnim;
        animManager->freeAnimContextFunc = UndergroundMapTransition_FreeJumpIntoHoleAnim;
        animManager->animateFunc = UndergroundMapTransition_JumpIntoHole;
        break;
    case UG_MAP_TRANSITION_ANIM_OPEN_HOLE:
        animManager->initAnimContextFunc = UndergroundMapTransition_InitOpenHoleAnim;
        animManager->freeAnimContextFunc = UndergroundMapTransition_FreeOpenHoleAnim;
        animManager->animateFunc = UndergroundMapTransition_OpenHole;
        break;
    case UG_MAP_TRANSITION_ANIM_DESCEND:
        animManager->initAnimContextFunc = UndergroundMapTransition_InitDescendAnim;
        animManager->freeAnimContextFunc = UndergroundMapTransition_FreeDescendAnim;
        animManager->animateFunc = UndergroundMapTransition_Descend;
        break;
    case UG_MAP_TRANSITION_ANIM_ASCEND:
        animManager->initAnimContextFunc = UndergroundMapTransition_InitAscendAnim;
        animManager->freeAnimContextFunc = UndergroundMapTransition_FreeAscendAnim;
        animManager->animateFunc = UndergroundMapTransition_Ascend;
        break;
    case UG_MAP_TRANSITION_ANIM_EMERGE_FROM_HOLE:
        animManager->initAnimContextFunc = UndergroundMapTransition_InitEmergeFromHoleAnim;
        animManager->freeAnimContextFunc = UndergroundMapTransition_FreeEmergeFromHoleAnim;
        animManager->animateFunc = UndergroundMapTransition_EmergeFromHole;
        break;
    case UG_MAP_TRANSITION_ANIM_CLOSE_HOLE:
        animManager->initAnimContextFunc = UndergroundMapTransition_InitCloseHoleAnim;
        animManager->freeAnimContextFunc = UndergroundMapTransition_FreeCloseHoleAnim;
        animManager->animateFunc = UndergroundMapTransition_CloseHole;
        break;
    }

    animManager->initAnimContextFunc(&ctx->spriteData, animManager);
}

static Sprite *UndergroundMapTransition_GetSprite(UGMapTransitionSpriteData *spriteData, int templateIdx, VecFx32 *position, int priority, NNS_G2D_VRAM_TYPE vramType)
{
    VecFx32 scale = {
        .x = FX32_ONE,
        .y = FX32_ONE,
        .z = FX32_ONE
    };

    AffineSpriteListTemplate template;
    memset(&template, 0, sizeof(AffineSpriteListTemplate));

    template.list = spriteData->spriteList;
    template.resourceData = &spriteData->resourceHeaders->headers[templateIdx];
    template.position = *position;
    template.affineScale = scale;
    template.priority = priority;
    template.vramType = vramType;
    template.heapID = HEAP_ID_FIELD1;

    Sprite *sprite = SpriteList_AddAffine(&template);
    GF_ASSERT(sprite);

    return sprite;
}

static void UndergroundMapTransition_FreeCurrentAnim(UGMapTransitionAnimManager *animManager)
{
    animManager->freeAnimContextFunc(animManager);
    memset(animManager, 0, sizeof(UGMapTransitionAnimManager));
}

static void UndergroundMapTransition_InitJumpIntoHoleAnim(UGMapTransitionSpriteData *spriteData, UGMapTransitionAnimManager *animManager)
{
    animManager->animContext = Heap_Alloc(HEAP_ID_FIELD1, sizeof(DescendAnimContext));
    memset(animManager->animContext, 0, sizeof(DescendAnimContext));

    DescendAnimContext *ctx = (DescendAnimContext *)animManager->animContext;

    ctx->position.x = 112 * FX32_ONE;
    ctx->position.y = 69 * FX32_ONE;
    ctx->sprite = UndergroundMapTransition_GetSprite(spriteData, UndergroundMapTransition_Template_Player, &ctx->position, 0, NNS_G2D_VRAM_TYPE_2DMAIN);
}

static void UndergroundMapTransition_FreeJumpIntoHoleAnim(UGMapTransitionAnimManager *animManager)
{
    DescendAnimContext *ctx = (DescendAnimContext *)animManager->animContext;

    if (animManager->animContext != NULL) {
        Sprite_Delete(ctx->sprite);
        Heap_FreeExplicit(HEAP_ID_FIELD1, animManager->animContext);
        animManager->animContext = NULL;
    }
}

static int UndergroundMapTransition_JumpIntoHole(UGMapTransitionAnimManager *animManager)
{
    VecFx32 position;
    DescendAnimContext *ctx = (DescendAnimContext *)animManager->animContext;

    if (ctx->index <= 0x8000) {
        position = ctx->position;
        position.y -= FX_Mul(FX_SinIdx(ctx->index), 16 * FX32_ONE);

        Sprite_SetPosition(ctx->sprite, &position);
        ctx->index += 0x800;
        Sprite_UpdateAnim(ctx->sprite, FX32_ONE);

        if (ctx->index == 0x8000) {
            return ANIMATE_RESULT_START_FADE;
        } else {
            return ANIMATE_RESULT_ONGOING;
        }
    }

    return ANIMATE_RESULT_DONE;
}

static void UndergroundMapTransition_InitOpenHoleAnim(UGMapTransitionSpriteData *spriteData, UGMapTransitionAnimManager *animManager)
{
    animManager->animContext = Heap_Alloc(HEAP_ID_FIELD1, sizeof(HoleAnimContext));
    memset(animManager->animContext, 0, sizeof(HoleAnimContext));

    HoleAnimContext *ctx = (HoleAnimContext *)animManager->animContext;

    ctx->position.x = 112 * FX32_ONE;
    ctx->position.y = 96 * FX32_ONE;
    ctx->sprite = UndergroundMapTransition_GetSprite(spriteData, UndergroundMapTransition_Template_Hole, &ctx->position, 1, NNS_G2D_VRAM_TYPE_2DMAIN);
}

static void UndergroundMapTransition_FreeOpenHoleAnim(UGMapTransitionAnimManager *animManager)
{
    HoleAnimContext *ctx = (HoleAnimContext *)animManager->animContext;

    if (animManager->animContext != NULL) {
        Sprite_Delete(ctx->sprite);
        Heap_FreeExplicit(HEAP_ID_FIELD1, animManager->animContext);
        animManager->animContext = NULL;
    }
}

static int UndergroundMapTransition_OpenHole(UGMapTransitionAnimManager *animManager)
{
    HoleAnimContext *ctx = (HoleAnimContext *)animManager->animContext;

    if (ctx->frames < 7) {
        Sprite_UpdateAnim(ctx->sprite, FX32_ONE);
        ctx->frames++;
        return ANIMATE_RESULT_ONGOING;
    }

    return ANIMATE_RESULT_DONE;
}

static void UndergroundMapTransition_InitDescendAnim(UGMapTransitionSpriteData *spriteData, UGMapTransitionAnimManager *animManager)
{
    animManager->animContext = Heap_Alloc(HEAP_ID_FIELD1, sizeof(DescendAnimContext));
    memset(animManager->animContext, 0, sizeof(DescendAnimContext));

    DescendAnimContext *ctx = (DescendAnimContext *)animManager->animContext;

    ctx->position.x = 112 * FX32_ONE;
    ctx->position.y = HW_LCD_HEIGHT * FX32_ONE;
    ctx->sprite = UndergroundMapTransition_GetSprite(spriteData, UndergroundMapTransition_Template_Player, &ctx->position, 0, NNS_G2D_VRAM_TYPE_2DMAIN);
}

static void UndergroundMapTransition_FreeDescendAnim(UGMapTransitionAnimManager *animManager)
{
    DescendAnimContext *ctx = (DescendAnimContext *)animManager->animContext;

    if (animManager->animContext != NULL) {
        Sprite_Delete(ctx->sprite);
        Heap_FreeExplicit(HEAP_ID_FIELD1, animManager->animContext);
        animManager->animContext = NULL;
    }
}

static int UndergroundMapTransition_Descend(UGMapTransitionAnimManager *animManager)
{
    DescendAnimContext *ctx = (DescendAnimContext *)animManager->animContext;

    ctx->position.y += 8 * FX32_ONE;

    Sprite_SetPosition(ctx->sprite, &ctx->position);
    Sprite_UpdateAnim(ctx->sprite, FX32_ONE);

    if (ctx->index == 0) {
        // move to bottom screen when at bottom of top screen
        if (ctx->position.y >= HW_LCD_HEIGHT * 2 * FX32_ONE) {
            ctx->position.y = -32 * FX32_ONE;
            ctx->index++;
        }
    } else {
        if (ctx->position.y >= 69 * FX32_ONE) {
            ctx->position.y = 69 * FX32_ONE;
            Sprite_SetPosition(ctx->sprite, &ctx->position);
            return ANIMATE_RESULT_DONE;
        }
    }

    return ANIMATE_RESULT_ONGOING;
}

static void UndergroundMapTransition_InitAscendAnim(UGMapTransitionSpriteData *spriteData, UGMapTransitionAnimManager *animManager)
{
    animManager->animContext = Heap_Alloc(HEAP_ID_FIELD1, sizeof(AscendAnimContext));
    memset(animManager->animContext, 0, sizeof(AscendAnimContext));

    AscendAnimContext *ctx = (AscendAnimContext *)animManager->animContext;

    ctx->position.x = 112 * FX32_ONE;
    ctx->position.y = 69 * FX32_ONE;
    ctx->sprite = UndergroundMapTransition_GetSprite(spriteData, UndergroundMapTransition_Template_Player, &ctx->position, 0, NNS_G2D_VRAM_TYPE_2DMAIN);

    Sprite_SetAnim(ctx->sprite, PLAYER_ANIM_ASCEND);
}

static void UndergroundMapTransition_FreeAscendAnim(UGMapTransitionAnimManager *animManager)
{
    AscendAnimContext *ctx = (AscendAnimContext *)animManager->animContext;

    if (animManager->animContext != NULL) {
        Sprite_Delete(ctx->sprite);
        Heap_FreeExplicit(HEAP_ID_FIELD1, animManager->animContext);
        animManager->animContext = NULL;
    }
}

static int UndergroundMapTransition_Ascend(UGMapTransitionAnimManager *animManager)
{
    AscendAnimContext *ctx = (AscendAnimContext *)animManager->animContext;
    int result = ANIMATE_RESULT_ONGOING;

    switch (ctx->state) {
    case ASCEND_STATE_INIT:
        ctx->index += FX32_CONST(0.20f);
        Sprite_UpdateAnim(ctx->sprite, ctx->index);

        if (ctx->index >= 2 * FX32_ONE) {
            ctx->state++;
        }
        break;
    case ASCEND_STATE_BOTTOM_SCREEN:
        if (ctx->position.y > -32 * FX32_ONE) {
            ctx->position.y -= 8 * FX32_ONE;
            Sprite_SetPosition(ctx->sprite, &ctx->position);
            Sprite_UpdateAnim(ctx->sprite, ctx->index);
        } else {
            // move to top screen when at top of bottom screen
            ctx->position.y = HW_LCD_HEIGHT * 2 * FX32_ONE;
            ctx->state++;
        }
        break;
    case ASCEND_STATE_TOP_SCREEN:
        ctx->position.y -= 8 * FX32_ONE;

        Sprite_SetPosition(ctx->sprite, &ctx->position);
        Sprite_UpdateAnim(ctx->sprite, ctx->index);

        if (ctx->position.y < 300 * FX32_ONE) {
            result = ANIMATE_RESULT_START_FADE;
            ctx->state++;
        }
        break;
    case ASCEND_STATE_TOP_SCREEN_FADE:
        if (ctx->position.y > HW_LCD_HEIGHT * FX32_ONE) {
            ctx->position.y -= 8 * FX32_ONE;
            Sprite_SetPosition(ctx->sprite, &ctx->position);
            Sprite_UpdateAnim(ctx->sprite, ctx->index);
        } else {
            ctx->state++;
        }
        break;
    case ASCEND_STATE_END:
        result = ANIMATE_RESULT_DONE;
        break;
    }

    return result;
}

static void UndergroundMapTransition_InitEmergeFromHoleAnim(UGMapTransitionSpriteData *spriteData, UGMapTransitionAnimManager *animManager)
{
    animManager->animContext = Heap_Alloc(HEAP_ID_FIELD1, sizeof(AscendAnimContext));
    memset(animManager->animContext, 0, sizeof(AscendAnimContext));

    AscendAnimContext *ctx = (AscendAnimContext *)animManager->animContext;

    ctx->position.x = 112 * FX32_ONE;
    ctx->position.y = 69 * FX32_ONE;
    ctx->sprite = UndergroundMapTransition_GetSprite(spriteData, UndergroundMapTransition_Template_Player, &ctx->position, 0, NNS_G2D_VRAM_TYPE_2DMAIN);

    Sprite_SetAnim(ctx->sprite, PLAYER_ANIM_ASCEND);
    ctx->index = 2 * FX32_ONE;
    Sprite_SetDrawFlag(ctx->sprite, FALSE);
}

static void UndergroundMapTransition_FreeEmergeFromHoleAnim(UGMapTransitionAnimManager *animManager)
{
    AscendAnimContext *ctx = (AscendAnimContext *)animManager->animContext;

    if (animManager->animContext != NULL) {
        Sprite_Delete(ctx->sprite);
        Heap_FreeExplicit(HEAP_ID_FIELD1, animManager->animContext);
        animManager->animContext = NULL;
    }
}

static int UndergroundMapTransition_EmergeFromHole(UGMapTransitionAnimManager *animManager)
{
    VecFx32 position;
    AscendAnimContext *ctx = (AscendAnimContext *)animManager->animContext;
    int result = ANIMATE_RESULT_ONGOING;

    switch (ctx->state) {
    case EMERGE_FROM_HOLE_INIT:
        Sprite_SetDrawFlag(ctx->sprite, TRUE);
        ctx->state++;
        break;
    case EMERGE_FROM_HOLE_JUMP:
        if (ctx->index <= 0x8000) {
            position = ctx->position;
            position.y -= FX_Mul(FX_SinIdx(ctx->index), 32 * FX32_ONE);

            Sprite_SetPosition(ctx->sprite, &position);
            ctx->index += 0x1000;
            Sprite_UpdateAnim(ctx->sprite, FX32_ONE);
        } else {
            ctx->state++;
        }
        break;
    case EMERGE_FROM_HOLE_SPIN:
        ctx->index -= FX32_CONST(0.40f);
        Sprite_UpdateAnim(ctx->sprite, ctx->index);

        if (ctx->index <= 0) {
            ctx->state++;
        }
        break;
    case EMERGE_FROM_HOLE_END:
        result = ANIMATE_RESULT_DONE;
        break;
    }

    return result;
}

static void UndergroundMapTransition_InitCloseHoleAnim(UGMapTransitionSpriteData *spriteData, UGMapTransitionAnimManager *animManager)
{
    animManager->animContext = Heap_Alloc(HEAP_ID_FIELD1, sizeof(HoleAnimContext));
    memset(animManager->animContext, 0, sizeof(HoleAnimContext));

    HoleAnimContext *ctx = (HoleAnimContext *)animManager->animContext;

    ctx->position.x = 112 * FX32_ONE;
    ctx->position.y = 96 * FX32_ONE;
    ctx->sprite = UndergroundMapTransition_GetSprite(spriteData, UndergroundMapTransition_Template_Hole, &ctx->position, 1, NNS_G2D_VRAM_TYPE_2DMAIN);

    Sprite_SetAnim(ctx->sprite, HOLE_ANIM_CLOSE);
}

static void UndergroundMapTransition_FreeCloseHoleAnim(UGMapTransitionAnimManager *animManager)
{
    HoleAnimContext *ctx = (HoleAnimContext *)animManager->animContext;

    if (animManager->animContext != NULL) {
        Sprite_Delete(ctx->sprite);
        Heap_FreeExplicit(HEAP_ID_FIELD1, animManager->animContext);
        animManager->animContext = NULL;
    }
}

static int UndergroundMapTransition_CloseHole(UGMapTransitionAnimManager *animManager)
{
    HoleAnimContext *ctx = (HoleAnimContext *)animManager->animContext;

    if (ctx->frames < 8) {
        Sprite_UpdateAnim(ctx->sprite, FX32_ONE);
        ctx->frames++;
        return ANIMATE_RESULT_ONGOING;
    }

    return ANIMATE_RESULT_DONE;
}
