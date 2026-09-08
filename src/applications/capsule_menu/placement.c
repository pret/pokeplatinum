#include "applications/capsule_menu/placement.h"

#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "struct_defs/seal_case.h"

#include "applications/capsule_menu/main.h"
#include "battle_anim/ov12_02237E54.h"

#include "ball_seal_info.h"
#include "game_overlay.h"
#include "palette.h"
#include "sprite_system.h"
#include "system.h"
#include "touch_screen.h"

FS_EXTERN_OVERLAY(overlay11);
FS_EXTERN_OVERLAY(battle_anim);

static void NitroStaticInit(void)
{
    Overlay_LoadByID(FS_OVERLAY_ID(overlay11), 2);
    Overlay_LoadByID(FS_OVERLAY_ID(battle_anim), 2);
}

static void SealPlacement_SealTouchRange(TouchScreenRect *rect, u8 x, u8 y)
{
    rect->rect.top = y - 10;
    rect->rect.left = x - 10;
    rect->rect.bottom = y + 10;
    rect->rect.right = x + 10;
}

static void SealPlacement_ScreenRect(TouchScreenRect *rect)
{
    rect->rect.top = 0;
    rect->rect.left = 0;
    rect->rect.bottom = 192;
    rect->rect.right = 255;
}

void SealPlacement_UpdateSealTouchRect(TouchScreenRect *rect, ManagedSprite *sprite, BOOL touchingSprite)
{
    s16 x, y;

    if (sprite == NULL) {
        return;
    }

    if (touchingSprite == 1) {
        ManagedSprite_SetPositionXY(sprite, gSystem.touchX, gSystem.touchY);
        ManagedSprite_GetPositionXY(sprite, &x, &y);
        SealPlacement_ScreenRect(rect);
    } else {
        ManagedSprite_GetPositionXY(sprite, &x, &y);
        SealPlacement_SealTouchRange(rect, x, y);
    }
}

void SealPlacement_OffsetSeals(CapsuleAppManager *appMan)
{
    for (int i = 0; i < SEALS_PER_CAPSULE; i++) {
        if (appMan->sealRenderInfo[i].sprite == NULL) {
            continue;
        }

        ManagedSprite_OffsetPositionXY(appMan->sealRenderInfo[i].sprite, -56, 16);
    }
}

void SealPlacement_UpdateSealsFromCapsule(CapsuleAppManager *appMan)
{
    BallCapsule *capsule = appMan->capsules[*appMan->capsuleIndex].capsule;

    for (int i = 0; i < SEALS_PER_CAPSULE; i++) {
        if (capsule->seals[i].type != SEAL_DUMMY) {
            appMan->sealRenderInfo[i].type = capsule->seals[i].type;
            appMan->sealRenderInfo[i].x = capsule->seals[i].x;
            appMan->sealRenderInfo[i].y = capsule->seals[i].y;

            SealPlacement_InitSeal(appMan, i);
            SealPlacement_UpdateSealTouchRect(appMan->sealRenderInfo[i].touchScreenRect, appMan->sealRenderInfo[i].sprite, 0);

            appMan->sealRenderInfo[i].shouldRender = 1;
        } else {
            appMan->sealRenderInfo[i].shouldRender = 0;
            appMan->sealRenderInfo[i].type = 0;
        }
    }
}

int SealPlacement_GetTouchedSeal(CapsuleAppManager *appMan, u8 sealIndex)
{
    u32 touchX, touchY;

    for (int i = 0; i < SEALS_PER_CAPSULE; i++) {
        if (appMan->sealRenderInfo[i].shouldRender == 1) {
            continue;
        }

        appMan->sealRenderInfo[i].type = appMan->sealPages.sealIDs[sealIndex];
        appMan->sealRenderInfo[i].x = 190;
        appMan->sealRenderInfo[i].y = 70;

        TouchScreen_GetHoldState(&touchX, &touchY);

        appMan->sealRenderInfo[i].x = touchX;
        appMan->sealRenderInfo[i].y = touchY;

        SealPlacement_InitSeal(appMan, i);
        SealPlacement_SetSealRenderPriorities(appMan, i);

        appMan->sealRenderInfo[i].shouldRender = 1;

        return i;
    }

    return 0xFF;
}

BOOL SealPlacement_NotMaxSeals(CapsuleAppManager *appMan)
{
    for (int i = 0; i < SEALS_PER_CAPSULE; i++) {
        if (appMan->sealRenderInfo[i].shouldRender == 1) {
            continue;
        }

        return 1;
    }

    return 0;
}

void SealPlacement_SetSealRenderPriorities(CapsuleAppManager *appMan, u8 index)
{
    for (int i = 0; i < SEALS_PER_CAPSULE; i++) {
        if (appMan->sealRenderInfo[i].shouldRender != 1) {
            continue;
        }

        if (i == index) {
            ManagedSprite_SetPriority(appMan->sealRenderInfo[i].sprite, 0);
        } else {
            int priority = ManagedSprite_GetPriority(appMan->sealRenderInfo[i].sprite);

            if (priority == 0) {
                ManagedSprite_SetPriority(appMan->sealRenderInfo[i].sprite, priority + 1);
            } else {
                ManagedSprite_SetPriority(appMan->sealRenderInfo[i].sprite, priority + 2);
            }
        }
    }
}

void SealPlacement_LoadSeal(CapsuleAppManager *appMan, u8 type, u8 sealIndex)
{
    SpriteSystem *spriteSystem = appMan->graphicsMan.spriteSystem;
    SpriteManager *spriteManager = appMan->graphicsMan.spriteManager;
    PaletteData *paletteData = appMan->graphicsMan.paletteData;

    SpriteSystem_LoadPaletteBuffer(paletteData, PLTTBUF_SUB_OBJ, spriteSystem, spriteManager, NARC_INDEX_APPLICATION__CUSTOM_BALL__DATA__CB_DATA, 293, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, 21293);

    int memberIdx = CapsuleMenu_GetSealMemberIdx(type);
    int objID = (sealIndex + 20000);

    SpriteSystem_LoadCharResObj(spriteSystem, spriteManager, NARC_INDEX_APPLICATION__CUSTOM_BALL__DATA__CB_DATA, memberIdx, TRUE, NNS_G2D_VRAM_TYPE_2DSUB, objID);
    SpriteSystem_LoadCellResObj(spriteSystem, spriteManager, NARC_INDEX_APPLICATION__CUSTOM_BALL__DATA__CB_DATA, 93, TRUE, 22093);
    SpriteSystem_LoadAnimResObj(spriteSystem, spriteManager, NARC_INDEX_APPLICATION__CUSTOM_BALL__DATA__CB_DATA, 1, TRUE, 23001);
}

void SealPlacement_UpdateSeals(CapsuleAppManager *appMan)
{
    int i;
    int dummy;
    int priorities[8];
    int indices[8];

    if (appMan->graphicsMan.sealsChanged == 0) {
        return;
    }

    appMan->graphicsMan.sealsChanged = 0;

    dummy = 0;

    for (i = 0; i < SEALS_PER_CAPSULE; i++) {
        priorities[i] = 0xFF;
        indices[i] = 0xFF;

        if (appMan->sealRenderInfo[i].sprite != NULL) {
            priorities[i] = ManagedSprite_GetPriority(appMan->sealRenderInfo[i].sprite);
            indices[i] = i;
            dummy++;
        }
    }

    int tmp1;
    int tmp2;

    for (i = 0; i < SEALS_PER_CAPSULE - 1; i++) {
        for (int j = SEALS_PER_CAPSULE - 1; j > i; j--) {
            if (priorities[j - 1] >= priorities[j]) {
                tmp1 = priorities[j];
                tmp2 = indices[j];
                priorities[j] = priorities[j - 1];
                indices[j] = indices[j - 1];
                priorities[j - 1] = tmp1;
                indices[j - 1] = tmp2;
            }
        }
    }

    BallCapsule capsule;
    BallCapsule capsule_dupe;

    for (i = 0; i < SEALS_PER_CAPSULE; i++) {
        capsule.seals[i].type = appMan->sealRenderInfo[i].type;
        capsule.seals[i].x = appMan->sealRenderInfo[i].x;
        capsule.seals[i].y = appMan->sealRenderInfo[i].y;
    }

    capsule_dupe = capsule;

    for (i = 0; i < SEALS_PER_CAPSULE; i++) {
        if (indices[i] == 0xFF) {
            appMan->sealRenderInfo[i].type = 0;
            appMan->sealRenderInfo[i].x = 0;
            appMan->sealRenderInfo[i].y = 0;
            continue;
        }

        appMan->sealRenderInfo[i].type = capsule_dupe.seals[indices[i]].type;
        appMan->sealRenderInfo[i].x = capsule_dupe.seals[indices[i]].x;
        appMan->sealRenderInfo[i].y = capsule_dupe.seals[indices[i]].y;

        if (appMan->sealRenderInfo[indices[i]].sprite == NULL) {
            continue;
        }

        ManagedSprite_SetPriority(appMan->sealRenderInfo[indices[i]].sprite, i);
    }
}

BOOL SealPlacement_InitSeal(CapsuleAppManager *appMan, u8 sealIndex)
{
    int dummy;
    int charID;
    SealRenderInfo *sealInfo;
    SpriteTemplate spriteTemplate;
    SpriteSystem *spriteSystem = appMan->graphicsMan.spriteSystem;
    SpriteManager *spriteManager = appMan->graphicsMan.spriteManager;
    PaletteData *paletteData = appMan->graphicsMan.paletteData;
    sealInfo = &appMan->sealRenderInfo[sealIndex];

    if (sealInfo->shouldRender == 1) {
        GF_ASSERT(FALSE);
        return 0;
    }

    SealPlacement_LoadSeal(appMan, sealInfo->type, sealIndex);

    spriteTemplate.x = sealInfo->x;
    spriteTemplate.y = sealInfo->y;
    spriteTemplate.z = 0;
    spriteTemplate.animIdx = 0;
    spriteTemplate.plttIdx = 0;
    spriteTemplate.vramTransfer = FALSE;
    spriteTemplate.priority = 0;
    spriteTemplate.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    spriteTemplate.bgPriority = 1;
    spriteTemplate.resources[4] = SPRITE_RESOURCE_NONE;
    spriteTemplate.resources[5] = SPRITE_RESOURCE_NONE;

    dummy = CapsuleMenu_GetSealMemberIdx(sealInfo->type);
    charID = (sealIndex + 20000);

    spriteTemplate.resources[0] = charID;
    spriteTemplate.resources[1] = 21293;
    spriteTemplate.resources[2] = 22093;
    spriteTemplate.resources[3] = 23001;
    sealInfo->sprite = SpriteSystem_NewSprite(spriteSystem, spriteManager, &spriteTemplate);

    ManagedSprite_TickFrame(sealInfo->sprite);

    return 1;
}

BOOL SealPlacement_HandleTouchscreen(CapsuleAppManager *appMan, u32 touchscreenState, u8 index)
{
    if (appMan->sealRenderInfo[index].shouldRender == 0) {
        return 1;
    }

    switch (touchscreenState) {
    case TOUCH_BUTTON_PRESSED:
        if (appMan->graphicsMan.index == 0xFF) {
            appMan->graphicsMan.index = index;
            SealPlacement_SetSealRenderPriorities(appMan, index);
        }
        break;
    case TOUCH_BUTTON_HELD: {
        if (appMan->graphicsMan.index == index) {
            SealPlacement_UpdateSealTouchRect(appMan->sealRenderInfo[index].touchScreenRect, appMan->sealRenderInfo[index].sprite, 1);
            SealPlacement_UpdateSealOamMode(appMan, index);
            SealPlacement_UpdateSealXY(appMan, index);
        }
    } break;
    case TOUCH_BUTTON_HELD_OUT_OF_BOUNDS:
    case TOUCH_BUTTON_RELEASED: {
        BOOL shouldFree;

        if (appMan->graphicsMan.index == 0xFF) {
            shouldFree = SealPlacement_SealIsValid(appMan, index);
            SealPlacement_UpdateSealTouchRect(appMan->sealRenderInfo[index].touchScreenRect, appMan->sealRenderInfo[index].sprite, 0);

            if (shouldFree == 0) {
                SealPlacement_FreeSeal(appMan, index);
            }

            appMan->graphicsMan.index = 0xFF;
        }
    } break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    return 1;
}

void SealPlacement_FreeInactiveSeals(CapsuleAppManager *appMan)
{
    for (int i = 0; i < SEALS_PER_CAPSULE; i++) {
        if (appMan->sealRenderInfo[i].shouldRender != 1) {
            continue;
        }

        SealPlacement_FreeSeal(appMan, i);
    }
}

void SealPlacement_DrawActiveSeals(CapsuleAppManager *appMan, int flag)
{
    for (int i = 0; i < SEALS_PER_CAPSULE; i++) {
        if (appMan->sealRenderInfo[i].shouldRender != 1) {
            continue;
        }

        ManagedSprite_SetDrawFlag(appMan->sealRenderInfo[i].sprite, flag);
    }
}

BOOL SealPlacement_SealIsValid(CapsuleAppManager *appMan, int index)
{
    int distance;
    s16 x, y;

    if (appMan->sealRenderInfo[index].shouldRender == 0) {
        return 1;
    }

    ManagedSprite_GetPositionXY(appMan->sealRenderInfo[index].sprite, &x, &y);
    distance = SealAnim_GetDistance(x, y, 190, 70);

    if (distance > 60) {
        return 0;
    }

    return 1;
}

void SealPlacement_FreeSeal(CapsuleAppManager *appMan, int sealIndex)
{
    int dummy;
    int objID;

    dummy = CapsuleMenu_GetSealMemberIdx(appMan->sealRenderInfo[sealIndex].type);
    objID = (sealIndex + 20000);

    SpriteManager_UnloadCharObjById(appMan->graphicsMan.spriteManager, objID);
    Sprite_DeleteAndFreeResources(appMan->sealRenderInfo[sealIndex].sprite);

    appMan->sealRenderInfo[sealIndex].sprite = NULL;
    appMan->sealRenderInfo[sealIndex].shouldRender = 0;
    appMan->sealRenderInfo[sealIndex].type = 0;
    appMan->sealRenderInfo[sealIndex].x = 0;
    appMan->sealRenderInfo[sealIndex].y = 0;

    SealPlacement_SealTouchRange(appMan->sealRenderInfo[sealIndex].touchScreenRect, 0, 0);
}

void SealPlacement_UpdateSealOamMode(CapsuleAppManager *appMan, int index)
{
    BOOL isValid = SealPlacement_SealIsValid(appMan, index);

    if (isValid == 0) {
        ManagedSprite_SetExplicitOamMode(appMan->sealRenderInfo[index].sprite, GX_OAM_MODE_XLU);
    } else {
        ManagedSprite_SetExplicitOamMode(appMan->sealRenderInfo[index].sprite, GX_OAM_MODE_NORMAL);
    }
}

BOOL SealPlacement_AnySealsChanged(CapsuleAppManager *appMan)
{
    int index;
    BallCapsule *capsule;

    index = *appMan->capsuleIndex;
    capsule = appMan->capsules[index].capsule;

    for (int i = 0; i < SEALS_PER_CAPSULE; i++) {
        if ((appMan->sealRenderInfo[i].type != capsule->seals[i].type)
            || (appMan->sealRenderInfo[i].x != capsule->seals[i].x)
            || (appMan->sealRenderInfo[i].y != capsule->seals[i].y)) {
            return 1;
        }
    }

    return 0;
}

void SealPlacement_UpdateSealXY(CapsuleAppManager *appMan, int sealIndex)
{
    s16 x, y;

    ManagedSprite_GetPositionXY(appMan->sealRenderInfo[sealIndex].sprite, &x, &y);

    appMan->sealRenderInfo[sealIndex].x = (u8)x;
    appMan->sealRenderInfo[sealIndex].y = (u8)y;
}

void SealPlacement_LoadCapsuleSeals(CapsuleAppManager *appMan)
{
    BallCapsule capsule;

    for (int i = 0; i < SEALS_PER_CAPSULE; i++) {
        capsule.seals[i].type = appMan->sealRenderInfo[i].type;
        capsule.seals[i].x = appMan->sealRenderInfo[i].x;
        capsule.seals[i].y = appMan->sealRenderInfo[i].y;
    }

    SealCase_CopyCapsuleFromId(appMan->appData->sealCase, &capsule, *appMan->capsuleIndex);
}

void SealPlacement_GetCapsuleSeals(BallCapsule *capsule, CapsuleAppManager *appMan)
{
    for (int i = 0; i < SEALS_PER_CAPSULE; i++) {
        capsule->seals[i].type = appMan->sealRenderInfo[i].type;
        capsule->seals[i].x = appMan->sealRenderInfo[i].x;
        capsule->seals[i].y = appMan->sealRenderInfo[i].y;
    }
}
