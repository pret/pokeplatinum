#include "overlay094/avatar.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "overlay094/application.h"
#include "overlay094/gts_application_state.h"

#include "appearance.h"
#include "graphics.h"
#include "heap.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sys_task_extensions.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

typedef struct AvatarAnimationData {
    int state;
    int y;
    int gender;
    GTSApplicationState *appState;
} AvatarAnimationData;

static void GTSAvatar_LoginAnimTask(SysTask *task, void *param);
static void GTSAvatar_LogoutAnimTask(SysTask *task, void *param1);
static void GTSAvatar_SetSpritePosition(Sprite *sprite, int x, int y);
static void GTSAvatar_SetPlayerAnimation(AvatarAnimationData *animData, int animIndex);
static void GTSAvatar_LoadGraphics(GTSApplicationState *appState);
static void GTSAvatar_LoadTrainerSprite(NNSG2dCharacterData *charData, NNSG2dPaletteData *plttData, int slotIndex, int appearance, int gender);
static int GTSAvatar_GetSlotBaseAnim(int slotIndex);

static const u16 sSearchResultSpritePositions[][2] = {
    { 128, 54 },
    { 96, 55 },
    { 160, 55 },
    { 64, 70 },
    { 192, 70 },
    { 48, 102 },
    { 208, 102 }
};

void GTSAvatar_Init(GTSApplicationState *appState, int gender)
{
    AffineSpriteListTemplate template;
    int i;

    GTSAvatar_LoadGraphics(appState);
    GTSApplication_InitAffineTemplate(&template, appState, &appState->avatarSpriteResourceHeader, NNS_G2D_VRAM_TYPE_2DSUB);

    template.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    template.position.x = FX32_ONE * 128;
    template.position.y = FX32_ONE * 130 + (256 * FX32_ONE);

    appState->avatarSprites[0] = SpriteList_AddAffine(&template);

    Sprite_SetAnimateFlag(appState->avatarSprites[0], 1);
    Sprite_SetAnim(appState->avatarSprites[0], 3 + gender * 7);
    Sprite_SetDrawFlag(appState->avatarSprites[0], TRUE);

    for (i = 0; i < GTS_MAX_SEARCH_RESULTS; i++) {
        appState->avatarSprites[i + 1] = SpriteList_AddAffine(&template);

        Sprite_SetAnimateFlag(appState->avatarSprites[i + 1], 1);
        Sprite_SetAnim(appState->avatarSprites[i + 1], 14 + i * 4);
        Sprite_SetDrawFlag(appState->avatarSprites[i + 1], FALSE);

        GTSAvatar_SetSpritePosition(appState->avatarSprites[i + 1], sSearchResultSpritePositions[i][0], sSearchResultSpritePositions[i][1]);
    }
}

void GTSAvatar_BeginLoginAnimation(GTSApplicationState *appState, int gender)
{
    GTSAvatar_Init(appState, gender);
    AvatarAnimationData *animData;
    appState->playerAvatarAnimationTask = SysTask_StartAndAllocateParam(GTSAvatar_LoginAnimTask, sizeof(AvatarAnimationData), 5, HEAP_ID_62);

    animData = SysTask_GetParam(appState->playerAvatarAnimationTask);
    animData->state = 0;
    animData->y = -40;
    animData->gender = gender;
    animData->appState = appState;

    GTSAvatar_SetPlayerAnimation(animData, 0);
    Sound_PlayEffect(SEQ_SE_DP_PYUU);
}

static void GTSAvatar_SetPlayerAnimation(AvatarAnimationData *animData, int animIndex)
{
    Sprite_SetAnim(animData->appState->avatarSprites[0], animIndex + animData->gender * 7);
}

static void GTSAvatar_LoginAnimTask(SysTask *task, void *param)
{
    AvatarAnimationData *animData = (AvatarAnimationData *)param;
    GTSApplicationState *appState = animData->appState;

    switch (animData->state) {
    case 0:
        if (animData->y > 160) {
            animData->y = 160;
            animData->state = 1;

            GTSAvatar_SetPlayerAnimation(animData, 1);
        }

        animData->y += 5;
        GTSAvatar_SetSpritePosition(appState->avatarSprites[0], 128, animData->y);
        break;
    case 1:
        if (!Sprite_IsAnimated(appState->avatarSprites[0])) {
            GTSAvatar_SetPlayerAnimation(animData, 2);
            animData->state = 2;
        }
        break;
    case 2:
        if (animData->y < 130) {
            animData->y = 130;
            animData->state = 3;

            GTSAvatar_SetPlayerAnimation(animData, 3);
        }

        animData->y -= 2;
        GTSAvatar_SetSpritePosition(appState->avatarSprites[0], 128, animData->y);
        break;
    case 3:
        Sound_PlayEffect(SEQ_SE_DP_PC_LOGIN);
        animData->appState->hasAvatarFinishedMoving = TRUE;
        SysTask_FinishAndFreeParam(task);
        break;
    }
}

void GTSAvatar_BeginLogoutAnimation(GTSApplicationState *appState, int gender)
{
    AvatarAnimationData *animData;

    appState->playerAvatarAnimationTask = SysTask_StartAndAllocateParam(GTSAvatar_LogoutAnimTask, sizeof(AvatarAnimationData), 5, HEAP_ID_62);

    animData = SysTask_GetParam(appState->playerAvatarAnimationTask);
    animData->state = 0;
    animData->y = 130;
    animData->gender = gender;
    animData->appState = appState;

    GTSAvatar_SetPlayerAnimation(animData, 5);
    Sound_PlayEffect(SEQ_SE_DP_PC_LOGOFF);
}

static void GTSAvatar_LogoutAnimTask(SysTask *task, void *param)
{
    AvatarAnimationData *animData = (AvatarAnimationData *)param;
    GTSApplicationState *appState = animData->appState;

    switch (animData->state) {
    case 0:
        if (animData->y > 160) {
            animData->y = 160;
            animData->state = 1;

            GTSAvatar_SetPlayerAnimation(animData, 6);
        }

        animData->y += 2;
        GTSAvatar_SetSpritePosition(appState->avatarSprites[0], 128, animData->y);
        break;
    case 1:
        if (!Sprite_IsAnimated(appState->avatarSprites[0])) {
            GTSAvatar_SetPlayerAnimation(animData, 0);
            animData->state = 2;
            Sound_PlayEffect(SEQ_SE_DP_PYUU2);
        }
        break;
    case 2:
        if (animData->y < -20) {
            animData->state = 3;

            GTSAvatar_SetPlayerAnimation(animData, 3);
        }

        animData->y -= 5;
        GTSAvatar_SetSpritePosition(appState->avatarSprites[0], 128, animData->y);
        break;
    case 3:
        animData->appState->hasAvatarFinishedMoving = TRUE;
        SysTask_FinishAndFreeParam(task);
        break;
    }
}

static void GTSAvatar_SetSpritePosition(Sprite *sprite, int x, int y)
{
    VecFx32 pos;

    pos.x = FX32_CONST(x);
    pos.y = FX32_CONST(y - 8) + (256 * FX32_ONE);
    pos.z = 0;

    Sprite_SetPosition(sprite, &pos);
}

static const TouchScreenRect sSearchResultTouchRects[] = {
    { 38, 70, 112, 144 },
    { 39, 71, 80, 112 },
    { 39, 71, 144, 176 },
    { 54, 86, 48, 80 },
    { 54, 86, 176, 208 },
    { 86, 118, 32, 64 },
    { 86, 118, 192, 224 },
    { 255, 0, 0, 0 }
};

int GTSAvatar_GetTouchedSearchResult(int resultCount)
{
    int rectPressed = TouchScreen_CheckRectanglePressed(sSearchResultTouchRects);

    if (rectPressed != 0xffffffff) {
        if (rectPressed < resultCount) {
            return rectPressed;
        }
    }

    return -1;
}

void GTSAvatar_ShowSearchResults(GTSApplicationState *appState, int resultCount, int showIdle)
{
    if ((resultCount != 0) && (showIdle == 1)) {
        Sound_PlayEffect(SEQ_SE_DP_TELE2);
    }

    for (int i = 0; i < GTS_MAX_SEARCH_RESULTS; i++) {
        if (i < resultCount) {
            int v1 = appState->searchResults[i].unk_120;
            int v2 = appState->searchResults[i].unk_F6;

            GTSAvatar_LoadTrainerSprite(appState->unk_10F8, appState->unk_1100, i, v1, v2);

            if (showIdle) {
                Sprite_SetAnim(appState->avatarSprites[i + 1], 14 + i * 4);
            } else {
                Sprite_SetAnim(appState->avatarSprites[i + 1], 17 + i * 4);
            }

            Sprite_SetDrawFlag(appState->avatarSprites[i + 1], TRUE);
        } else {
            Sprite_SetDrawFlag(appState->avatarSprites[i + 1], FALSE);
        }
    }
}

static int GTSAvatar_GetSlotBaseAnim(int slotIndex)
{
    return 14 + slotIndex * 4;
}

void GTSAvatar_HighlightSearchResults(GTSApplicationState *appState)
{
    for (int i = 0; i < GTS_MAX_SEARCH_RESULTS; i++) {
        if (Sprite_GetDrawFlag(appState->avatarSprites[i + 1])) {
            if (Sprite_GetActiveAnim(appState->avatarSprites[i + 1]) != GTSAvatar_GetSlotBaseAnim(i) + 1) {
                Sprite_SetAnim(appState->avatarSprites[i + 1], GTSAvatar_GetSlotBaseAnim(i) + 1);
            }
        }
    }
}

static void GTSAvatar_LoadGraphics(GTSApplicationState *appState)
{
    appState->unk_10FC = Graphics_GetPlttData(NARC_INDEX_GRAPHIC__RECORD, 7, &(appState->unk_1100), HEAP_ID_62);
    appState->unk_10F4 = Graphics_GetCharData(NARC_INDEX_GRAPHIC__RECORD, 9, 1, &(appState->unk_10F8), HEAP_ID_62);

    DC_FlushRange(appState->unk_10F8, (256 * 256 / 2));
}

static const u16 sSearchResultVRAMAddresses[] = {
    0x2400,
    0x2600,
    0x2800,
    0x2A00,
    0x2C00,
    0x2E00,
    0x3000
};

static void GTSAvatar_LoadTrainerSprite(NNSG2dCharacterData *charData, NNSG2dPaletteData *plttData, int slotIndex, int appearance, int gender)
{
    int appearanceIdx;
    u8 *charRawData, *plttRawData;

    appearanceIdx = Appearance_GetIndex(gender, appearance);
    charRawData = (u8 *)charData->pRawData;
    plttRawData = (u8 *)plttData->pRawData;

    GXS_LoadOBJ(&charRawData[((4 * 4) * 3) * appearanceIdx * 0x20], sSearchResultVRAMAddresses[slotIndex], (4 * 4) * 0x20);
    GXS_LoadOBJPltt(&plttRawData[appearanceIdx * 32], (slotIndex + 2) * 32, 32);
}

void GTSAvatar_FreeGraphics(GTSApplicationState *appState)
{
    if (appState->hasAvatarFinishedMoving) {
        Heap_Free(appState->unk_10FC);
        Heap_Free(appState->unk_10F4);
    }
}
