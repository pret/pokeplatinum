#include "applications/capsule_menu/manager.h"

#include <nitro.h>
#include <string.h>

#include "generated/trainer_score_events.h"

#include "struct_decls/font_oam.h"
#include "struct_defs/seal_case.h"
#include "struct_defs/sprite_animation_frame.h"

#include "applications/capsule_menu/defs.h"
#include "applications/capsule_menu/graphics.h"
#include "applications/capsule_menu/main.h"
#include "applications/capsule_menu/placement.h"
#include "battle_anim/ov12_02235E94.h"
#include "battle_anim/struct_ov12_02236030.h"
#include "battle_anim/struct_ov12_02237728.h"

#include "ball_seal_info.h"
#include "bg_window.h"
#include "game_records.h"
#include "gx_layers.h"
#include "heap.h"
#include "menu.h"
#include "narc.h"
#include "palette.h"
#include "pokemon.h"
#include "pokemon_anim.h"
#include "pokemon_sprite.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite_system.h"
#include "string_list.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "touch_screen.h"
#include "touch_screen_actions.h"
#include "unk_02012744.h"
#include "vram_transfer.h"
#include "yes_no_touch_menu.h"

typedef struct {
    int frame;
    ManagedSprite *sprite;
    FontOAM *fontOAM;
} CapsuleUIPressTask;

static BOOL ov76_0223D674(SealAppManager *appMan);
static BOOL ov76_0223DF94(SealAppManager *appMan);
static BOOL ov76_0223E8A4(SealAppManager *appMan);
static BOOL ov76_0223E950(SealAppManager *appMan);
static BOOL ov76_0223E9C4(SealAppManager *appMan);
static BOOL SealManager_Dummy(SealAppManager *appMan);

void SealManager_CopyToActiveCapsule(SealAppManager *appMan)
{
    BallCapsule_Copy(appMan->capsules[*appMan->capsuleIndex].capsule, &appMan->activeCapsule);
}

void SealManager_CopyFromActiveCapsule(SealAppManager *appMan)
{
    BallCapsule_Copy(&appMan->activeCapsule, appMan->capsules[*appMan->capsuleIndex].capsule);
}

void SealManager_GetSealCounts(SealAppManager *appMan)
{
    for (int i = 0; i < SEAL_ID_MAX; i++) {
        appMan->sealCounts[i] = SealCase_GetSealCount(appMan->sealCount, i);
    }
}

void SealManager_SetSealCounts(SealAppManager *appMan)
{
    for (int i = 0; i < SEAL_ID_MAX; i++) {
        SealCase_SetSealQuantity(appMan->sealCount, i, appMan->sealCounts[i]);
    }
}

void SealManager_SetNormalAlpha(void)
{
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2, 11, 7);
    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, 7, 8);
}

void ov76_0223D3CC(SealAppManager *appMan)
{
    int i;
    int isEgg;
    Pokemon *pokemon;

    if (appMan->capsules[*appMan->capsuleIndex].index != 0xFF) {
        pokemon = appMan->appData->pokemon[appMan->capsules[*appMan->capsuleIndex].index];
        Pokemon_Copy(pokemon, appMan->pokemon);

        return;
    }

    for (i = 0; i < appMan->appData->partySize; i++) {
        pokemon = appMan->appData->pokemon[i];
        isEgg = Pokemon_GetValue(pokemon, MON_DATA_IS_EGG, NULL);

        if (isEgg != 0) {
            continue;
        }

        Pokemon_Copy(pokemon, appMan->pokemon);
        break;
    }
}

int SealManager_AnySealsOnCapsule(BallCapsule *capsule)
{
    int i;
    int result = 0;
    int sealCount;
    BallSeal *seal;

    sealCount = 0;

    for (i = 0; i < SEALS_PER_CAPSULE; i++) {
        seal = BallCapsule_GetBallSeals(capsule, i);

        if (BallSeal_GetSealType(seal) != 0) {
            sealCount++;
        }
    }

    if (sealCount != 0) {
        result = 1;
    }

    return result;
}

int ov76_0223D45C(SealAppManager *appMan, int index)
{
    int spriteIndex;
    int animIdx;
    int result;

    spriteIndex = appMan->capsuleSprites[index].index;
    animIdx = appMan->capsuleSprites[index].animIdx;

    if ((spriteIndex == 0xFF) && (animIdx == 0)) {
        result = 0;
    } else if ((spriteIndex == 0xFF) && (animIdx == 1)) {
        result = 1;
    } else if ((spriteIndex != 0xFF) && (animIdx == 1)) {
        result = 2;
    } else {
        result = 3;
    }

    return result;
}

static void ov76_0223D494(SealAppManager *appMan, int param1, int param2, int param3) // set the stateids???
{
    if (param2 == 0xFF) {
        appMan->stateID = appMan->unk_3D8;
    } else {
        appMan->stateID = param2;
    }

    appMan->unk_3CC = param1;
    appMan->unk_3D8 = param3;
    appMan->throwStateID = 0;
}

static int ov76_0223D4C4(SealAppManager *appMan)
{
    Window_EraseStandardFrame(&appMan->graphicsMan.windows[1], 1);
    Window_ClearAndCopyToVRAM(&appMan->graphicsMan.windows[1]);
    Menu_Free(appMan->graphicsMan.menu, NULL);
    StringList_Free(appMan->graphicsMan.stringList);
    Window_Remove(&appMan->graphicsMan.windows[1]);

    return 1;
}

static int ov76_0223D4FC(SealAppManager *appMan)
{
    ov76_0223D494(appMan, 1, 0, 3);
    return 0;
}

static int ov76_0223D50C(SealAppManager *appMan)
{
    ov76_0223B400(appMan);
    SealPlacement_LoadCapsuleSeals(appMan);
    SealGraphics_SetCapsuleSpriteAnim(appMan);
    ov76_0223D494(appMan, 2, 0, 0);

    return 0;
}

static int ov76_0223D530(SealAppManager *appMan)
{
    ov76_0223D494(appMan, 3, 0, 3);
    return 0;
}

static int ov76_0223D540(SealAppManager *appMan)
{
    ov76_0223D494(appMan, 4, 0, 3);
    return 0;
}

const SealStringIndices sealStringIndices[] = {
    { 0, (const u32)ov76_0223D4FC },
    { 1, (const u32)ov76_0223D4C4 },
    { 2, (const u32)ov76_0223D50C },
    { 3, (const u32)ov76_0223D530 },
    { 4, (const u32)ov76_0223D540 },
};

static BOOL (*const Unk_ov76_0223EE04[])(SealAppManager *appMan) = {
    ov76_0223D674,
    ov76_0223DF94,
    ov76_0223E8A4,
    ov76_0223E950,
    ov76_0223E9C4,
    SealManager_Dummy,
};

BOOL ov76_0223D550(SealAppManager *appMan)
{
    BOOL result = Unk_ov76_0223EE04[appMan->unk_3CC](appMan);
    SpriteSystem_DrawSprites(appMan->graphicsMan.spriteManager);

    return result;
}

static BOOL SealManager_HandleCapsulePadMovement(int *capsuleIndex)
{
    int *capsuleIndex_dupe = capsuleIndex;

    if (gSystem.pressedKeysRepeatable & PAD_KEY_RIGHT) {
        (*capsuleIndex_dupe)++;
        (*capsuleIndex_dupe) %= CAPSULE_NUM;
    } else if (gSystem.pressedKeysRepeatable & PAD_KEY_LEFT) {
        if (*capsuleIndex_dupe > 0) {
            (*capsuleIndex_dupe)--;
        } else {
            *capsuleIndex_dupe = CAPSULE_NUM - 1;
        }
    } else if (gSystem.pressedKeysRepeatable & PAD_KEY_UP) {
        if ((*capsuleIndex_dupe / 4) != 0) {
            (*capsuleIndex_dupe) -= 4;
            (*capsuleIndex_dupe) %= CAPSULE_NUM;
        } else {
            return FALSE;
        }
    } else if (gSystem.pressedKeysRepeatable & PAD_KEY_DOWN) {
        if ((*capsuleIndex_dupe / 4) != 2) {
            (*capsuleIndex_dupe) += 4;
            (*capsuleIndex_dupe) %= CAPSULE_NUM;
        } else {
            return FALSE;
        }
    } else {
        return FALSE;
    }

    return TRUE;
}

static void SealManager_MoveCursorToCapsule(SealAppManager *appMan, int index, BOOL moveBoth)
{
    s16 x, y;
    int cursorIndex = 0;

    if (index == 0) {
        cursorIndex = 1;
    }

    SealGraphics_GetCapsuleGridLocation(appMan->capsuleIndex[index], &x, &y);
    ManagedSprite_SetPositionXY(appMan->cursor[index], x, y);

    if (moveBoth == 1) {
        appMan->capsuleIndex[cursorIndex] = appMan->capsuleIndex[index];
        SealGraphics_GetCapsuleGridLocation(appMan->capsuleIndex[cursorIndex], &x, &y);
        ManagedSprite_SetPositionXY(appMan->cursor[cursorIndex], x, y);
    }
}

static BOOL ov76_0223D674(SealAppManager *appMan) // this is the state for the capsule selection
{
    switch (appMan->stateID) {
    case SEAL_INIT_STATE_ID: {
        NARC *narc;

        narc = NARC_ctor(NARC_INDEX_APPLICATION__CUSTOM_BALL__DATA__CB_DATA, HEAP_ID_53);

        ov76_0223C110(appMan);
        SealGraphics_InitPokemonSprites(appMan);
        SealGraphics_SetPokemonSpritesPosition(appMan);
        ov76_0223CE84(appMan, narc);
        ov76_0223CF24(appMan, narc);
        ov76_0223CF88(appMan, narc);
        ov76_0223C354(appMan);
        SealGraphics_InitCapsuleSprites(appMan, narc);
        SealGraphics_InitMessageWindow(appMan->graphicsMan.bgConfig, appMan->graphicsMan.windows, 1, 2, 21, 27, 2, 1 + 18 + 12 + 9);
        ov76_0223B208(appMan);
        SealPlacement_DrawActiveSeals(appMan, 1);
        ov76_0223B1E0(appMan);
        ov76_0223CFEC(appMan, narc);
        ov76_0223D16C(appMan);
        SealGraphics_LoadSelectionResources(appMan, narc);
        SealGraphics_InitSelectionIndicator(appMan);
        SealManager_CopyToActiveCapsule(appMan);
        SealManager_GetSealCounts(appMan);
        SealGraphics_PopulateSealPage(appMan, appMan->sealPages.page);
        SealGraphics_LoadSealSprites(appMan);
        SealGraphics_InitSealSprites(appMan);
        SealGraphics_SetSealSpritesDrawFlag(appMan, 0);
        SealGraphics_SetSelectionIndicatorDrawFlags(appMan, 0);
        ov76_0223B940(appMan);
        SealGraphics_SetFontOAMDrawFlag(appMan, 0);
        SealGraphics_PrintMessage(appMan->graphicsMan.windows, 7);
        SealGraphics_StartDisplay();
        SealManager_SetSelectedCapsule(appMan, 0);

        NARC_dtor(narc);
    }
        appMan->stateID++;
        break;

    case SEAL_FADE_IN_STATE_ID:
        SealGraphics_FadeIn();
        appMan->stateID++;
        break;

    case SEAL_FADE_IN_WAIT_STATE_ID:
        if (IsScreenFadeDone() != 1) {
            break;
        }

        appMan->stateID++;

    case SEAL_CAPSULE_SELECTION_STATE_ID: {
        BOOL cursorMoved;
        int initialCapsuleIndex;
        int newCapsuleIndex;

        if (TouchScreen_Tapped() == 1) {
            ov76_0223D4FC(appMan);
            break;
        }

        initialCapsuleIndex = *appMan->capsuleIndex;
        cursorMoved = SealManager_HandleCapsulePadMovement(appMan->capsuleIndex);
        newCapsuleIndex = *appMan->capsuleIndex;
        *appMan->capsuleIndex = initialCapsuleIndex;

        if (cursorMoved) {
            ov76_0223B400(appMan);
            SealPlacement_LoadCapsuleSeals(appMan);
            SealGraphics_SetCapsuleSpriteAnim(appMan);

            *appMan->capsuleIndex = newCapsuleIndex;

            SealManager_MoveCursorToCapsule(appMan, 0, 1);
            SealPlacement_FreeInactiveSeals(appMan);
            ov76_0223B208(appMan);
            SealPlacement_DrawActiveSeals(appMan, 1);
            ov76_0223B1E0(appMan);

            Sound_PlayEffect(SEQ_SE_CONFIRM);
        } else if (gSystem.pressedKeys & PAD_BUTTON_A) {
            appMan->stateID++;
            SealGraphics_PrintMessage(appMan->graphicsMan.windows, 8);
            SealGraphics_OpenCapsuleSelectionMenu(appMan->graphicsMan.bgConfig, &appMan->graphicsMan.windows[1], 1, appMan, *appMan->capsuleIndex);
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
            appMan->stateID = 5;
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        }
    } break;
    case SEAL_CAPSULE_MENU_STATE_ID: {
        SealMenuCallback callback;
        u32 result = Menu_ProcessInput(appMan->graphicsMan.menu);

        switch (result) {
        case MENU_CANCEL:
            ov76_0223D4C4(appMan);
            SealGraphics_PrintMessage(appMan->graphicsMan.windows, 7);
            appMan->stateID = 3;
            break;
        case MENU_NOTHING_CHOSEN:
            break;
        default:
            callback = (SealMenuCallback)result;

            if (callback != NULL) {
                int result = callback(appMan);

                if (result != 1) {
                    ov76_0223D4C4(appMan);
                    break;
                }

                SealGraphics_PrintMessage(appMan->graphicsMan.windows, 7);
                appMan->stateID = 3;
            }
            break;
        }
    } break;
    case SEAL_FADE_OUT_STATE_ID:
        SealGraphics_FadeOut();
        appMan->stateID++;
        break;
    case SEAL_FADE_OUT_WAIT_STATE_ID:
        if (IsScreenFadeDone() != 1) {
            break;
        }
        Window_Remove(appMan->graphicsMan.windows);
        SealGraphics_FreeCapsuleSprites(appMan);
        SealGraphics_FreePokemonSprites(appMan);
        SealGraphics_FreeUISprites(appMan);
        SealGraphics_FreeSelectionIndicator(appMan);
        SealGraphics_FreeSealSprites(appMan);
        CapsuleMenu_SetAction(appMan->appData, CAPSULE_MENU_SWITCH_ACTION_STATE_ID);
        return 0;
    }

    SealGraphics_TickPokemonSprites(appMan);
    SealGraphics_TickCursor(appMan);

    return 1;
}

void ov76_0223D94C(ManagedSprite *sprite, int field)
{
    switch (field) {
    case 0:
        ManagedSprite_SetAnimationFrame(sprite, 1);
        break;
    case 2:
        ManagedSprite_SetAnimationFrame(sprite, 2);
        break;
    case 1:
    case 3:
        ManagedSprite_SetAnimationFrame(sprite, 0);
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

static void SealManager_OffsetFontOAM(FontOAM *fontOAM, int xOffset, int yOffset)
{
    int x;
    int y;

    if (fontOAM != NULL) {
        FontOAM_GetXY(fontOAM, &x, &y);
        FontOAM_SetXY(fontOAM, x + xOffset, y + yOffset);
    }
}

static void SealManager_CapsuleUIPressTask(SysTask *sysTask, void *capsuleUIPressTask)
{
    CapsuleUIPressTask *capsuleUIPressTask_dupe = capsuleUIPressTask;

    switch (capsuleUIPressTask_dupe->frame) {
    case 3:
        SealManager_OffsetFontOAM(capsuleUIPressTask_dupe->fontOAM, 0, -1);
        ManagedSprite_SetAnimationFrame(capsuleUIPressTask_dupe->sprite, 2);
        capsuleUIPressTask_dupe->frame++;
        break;
    case 6:
        SealManager_OffsetFontOAM(capsuleUIPressTask_dupe->fontOAM, 0, 2);
        ManagedSprite_SetAnimationFrame(capsuleUIPressTask_dupe->sprite, 0);
        SysTask_Done(sysTask);
        Heap_Free(capsuleUIPressTask_dupe);
        break;
    default:
        capsuleUIPressTask_dupe->frame++;
        break;
    }
}

static void SealManager_PressCapsuleUI(ManagedSprite *sprite, FontOAM *fontOAM)
{
    CapsuleUIPressTask *capsuleUIPressTask = Heap_Alloc(HEAP_ID_53, sizeof(CapsuleUIPressTask));

    capsuleUIPressTask->frame = 1;
    capsuleUIPressTask->sprite = sprite;
    capsuleUIPressTask->fontOAM = fontOAM;

    SealManager_OffsetFontOAM(capsuleUIPressTask->fontOAM, 0, -1);
    SysTask_Start(SealManager_CapsuleUIPressTask, capsuleUIPressTask, 1000);
}

void SealManager_HandleSpritePress(u32 field, enum TouchScreenButtonState touchScreenState, void *appMan) // on sprite press
{
    SealAppManager *appMan_dupe = (SealAppManager *)appMan;

    if (appMan_dupe->graphicsMan.selectedCapsule == FALSE) {
        return;
    }

    switch (field) {
    case 8:
        if (touchScreenState == TOUCH_BUTTON_PRESSED) {
            if (appMan_dupe->sealPages.page > 0) {
                appMan_dupe->sealPages.page--;
            } else {
                appMan_dupe->sealPages.page = appMan_dupe->sealPages.maxPage - 1;
            }

            SealGraphics_FreeSealSprites(appMan_dupe);
            SealGraphics_PopulateSealPage(appMan_dupe, appMan_dupe->sealPages.page);
            SealGraphics_LoadSealSprites(appMan_dupe);
            SealGraphics_InitSealSprites(appMan_dupe);
            SealGraphics_UpdateAllSealCountText(appMan_dupe);
            Sound_PlayEffect(SEQ_SE_DP_CUSTOM02);
        }

        ov76_0223D94C(appMan_dupe->capsuleActiveSprites.sprites[8], touchScreenState);
        break;
    case 9:
        if (touchScreenState == TOUCH_BUTTON_PRESSED) {
            appMan_dupe->sealPages.page++;
            appMan_dupe->sealPages.page %= appMan_dupe->sealPages.maxPage;

            SealGraphics_FreeSealSprites(appMan_dupe);
            SealGraphics_PopulateSealPage(appMan_dupe, appMan_dupe->sealPages.page);
            SealGraphics_LoadSealSprites(appMan_dupe);
            SealGraphics_InitSealSprites(appMan_dupe);
            SealGraphics_UpdateAllSealCountText(appMan_dupe);
            Sound_PlayEffect(SEQ_SE_DP_CUSTOM02);
        }
        ov76_0223D94C(appMan_dupe->capsuleActiveSprites.sprites[9], touchScreenState);
        break;
    case 10:
        if (touchScreenState == TOUCH_BUTTON_PRESSED) {
            if (appMan_dupe->stateID != SEAL_FADE_OUT_STATE_ID) {
                appMan_dupe->stateID = SEAL_FADE_OUT_STATE_ID;
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            }

            SealManager_PressCapsuleUI(appMan_dupe->capsuleActiveSprites.sprites[10], NULL);
        }

        ov76_0223D94C(appMan_dupe->capsuleActiveSprites.sprites[10], touchScreenState);
        break;
    case 11:
        if (touchScreenState == TOUCH_BUTTON_PRESSED) {
            if (appMan_dupe->stateID != SEAL_FADE_OUT_WAIT_STATE_ID) {
                appMan_dupe->stateID = SEAL_FADE_OUT_WAIT_STATE_ID;
                SealManager_SetSelectedCapsule(appMan_dupe, 0);
                Sound_PlayEffect(SEQ_SE_DP_PIRORIRO);
            }

            SealManager_PressCapsuleUI(appMan_dupe->capsuleActiveSprites.sprites[11], appMan_dupe->graphicsMan.fontOAM[0]);
        }

        ov76_0223D94C(appMan_dupe->capsuleActiveSprites.sprites[11], touchScreenState);
        break;
    case 12:
        if (touchScreenState == TOUCH_BUTTON_PRESSED) {
            if (appMan_dupe->stateID != 7) {
                appMan_dupe->stateID = 7;
                SealManager_SetSelectedCapsule(appMan_dupe, 0);
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            }

            SealManager_PressCapsuleUI(appMan_dupe->capsuleActiveSprites.sprites[12], appMan_dupe->graphicsMan.fontOAM[1]);
        }

        ov76_0223D94C(appMan_dupe->capsuleActiveSprites.sprites[12], touchScreenState);
        break;
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7: {
        int sealIdx;

        if (touchScreenState == TOUCH_BUTTON_PRESSED) {
            if (SealPlacement_NotMaxSeals(appMan_dupe) == FALSE) {
                Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
                SealGraphics_PrintMessage(appMan_dupe->graphicsMan.windows, 15);
            } else if ((appMan_dupe->sealPages.sealIDs[field] != 0) && (SealCase_GetSealCount(appMan_dupe->sealCount, appMan_dupe->sealPages.sealIDs[field] - 1) != 0)) {
                appMan_dupe->graphicsMan.index = SealPlacement_GetTouchedSeal(appMan_dupe, field);
                sealIdx = CapsuleMenu_GetSealNameIndex(appMan_dupe->sealPages.sealIDs[field]);

                SealGraphics_UpdateSealNameText(appMan_dupe->graphicsMan.windows, sealIdx);
                GiveOrTakeSeal(appMan_dupe->appData->sealCase, appMan_dupe->sealPages.sealIDs[field], -1);
                SealGraphics_UpdateSealCountText(appMan_dupe, field);
                Sound_PlayEffect(SEQ_SE_DP_BOX02);
            } else if (appMan_dupe->sealPages.sealIDs[field] != 0) {
                Sound_PlayEffect(SEQ_SE_DP_CUSTOM06);
                SealGraphics_PrintMessage(appMan_dupe->graphicsMan.windows, 16);
            }
        }
    } break;
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20: {
        int renderedIndex;
        int sealIndex;

        if (touchScreenState == TOUCH_BUTTON_PRESSED) {
            renderedIndex = field - 13;
            ov76_0223B5C4(appMan_dupe, touchScreenState, renderedIndex);
            sealIndex = CapsuleMenu_GetSealNameIndex(appMan_dupe->sealRenderInfo[renderedIndex].type);

            SealGraphics_UpdateSealNameText(appMan_dupe->graphicsMan.windows, sealIndex);
            Sound_PlayEffect(SEQ_SE_DP_BOX02);
        }
    } break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

BOOL ov76_0223DCB0(SealAppManager *appMan)
{
    return appMan->graphicsMan.unk_184;
}

void SealManager_SetSelectedCapsule(SealAppManager *appMan, BOOL value)
{
    appMan->graphicsMan.selectedCapsule = value;
}

static const TouchScreenRect CapsuleUIRects[] = {
    { 16, 32, 8, 24 },
    { 16, 32, 64, 80 },
    { 40, 56, 8, 24 },
    { 40, 56, 64, 80 },
    { 64, 80, 8, 24 },
    { 64, 80, 64, 80 },
    { 88, 104, 8, 24 },
    { 88, 104, 64, 80 },
    { 104, 128, 8, 48 },
    { 104, 128, 56, 96 },
    { 168, 188, 18, 77 },
    { 168, 188, 97, 156 },
    { 168, 188, 178, 237 },
};

void SealManager_InitTouchRects(SealAppManager *appMan)
{
    int i;
    const TouchScreenRect emptyRect = { 0, 0, 0, 0 };

    for (i = 0; i < 13; i++) {
        appMan->graphicsMan.touchScreenRects[i] = CapsuleUIRects[i];
    }

    for (; i < CAPSULE_TOUCH_RECTS; i++) {
        appMan->graphicsMan.touchScreenRects[i] = emptyRect;
        appMan->sealRenderInfo[i - 13].touchScreenRect = &appMan->graphicsMan.touchScreenRects[i];
    }

    appMan->graphicsMan.touchScreenActions = TouchScreenActions_RegisterHandler(appMan->graphicsMan.touchScreenRects, CAPSULE_TOUCH_RECTS, SealManager_HandleSpritePress, appMan, HEAP_ID_53);
}

void SealManager_LoadThrownMonSprite(SealAppManager *appMan)
{
    PokemonSpriteTemplate pokemonSpriteTemplate;
    SpriteAnimFrame spriteAnimFrame[10];
    int species;
    int yOffset;

    Pokemon_BuildSpriteTemplate(&pokemonSpriteTemplate, appMan->pokemon, FACE_FRONT);

    species = Pokemon_GetValue(appMan->pokemon, MON_DATA_SPECIES, NULL);
    yOffset = Pokemon_SpriteYOffset(appMan->pokemon, FACE_FRONT);

    appMan->graphicsMan.pokemonYOffset = yOffset;
    PokemonSprite_LoadAnimFrames(appMan->narc, spriteAnimFrame, species, 1);
    appMan->graphicsMan.pokemonSprite = PokemonSpriteManager_CreateSprite(appMan->graphicsMan.pokemonSpriteManager, &pokemonSpriteTemplate, CAPSULE_MON_SPRITE_X, CAPSULE_MON_SPRITE_Y_BASE + yOffset, CAPSULE_MON_SPRITE_Z, 0, spriteAnimFrame, NULL);
}

static void SealManager_LoadThrownMonAnim(SealAppManager *appMan)
{
    int species;
    int dummy;

    species = Pokemon_GetValue(appMan->pokemon, MON_DATA_SPECIES, NULL);
    dummy = Pokemon_GetNature(appMan->pokemon);

    PokemonSprite_InitAnim(appMan->graphicsMan.pokemonSprite, 1);
    PokemonSprite_LoadAnim(appMan->narc, appMan->graphicsMan.pokemonAnimManager, appMan->graphicsMan.pokemonSprite, species, FACE_FRONT, 0, 0);
}

static void SealManager_ZeroThrownMonScale(SealAppManager *appMan)
{
    PokemonSprite_SetAttribute(appMan->graphicsMan.pokemonSprite, MON_SPRITE_SCALE_X, 0);
    PokemonSprite_SetAttribute(appMan->graphicsMan.pokemonSprite, MON_SPRITE_SCALE_Y, 0);
}

static BOOL ov76_0223DE78(SealAppManager *appMan)
{
    if (PokemonSprite_GetAttribute(appMan->graphicsMan.pokemonSprite, MON_SPRITE_SCALE_X) == 0x100) {
        return 0;
    } else if (PokemonSprite_GetAttribute(appMan->graphicsMan.pokemonSprite, MON_SPRITE_SCALE_X) >= 0x100) {
        PokemonSprite_SetAttribute(appMan->graphicsMan.pokemonSprite, MON_SPRITE_SCALE_X, 0x100);
        PokemonSprite_SetAttribute(appMan->graphicsMan.pokemonSprite, MON_SPRITE_SCALE_Y, 0x100);
        return 0;
    } else {
        PokemonSprite_AddAttribute(appMan->graphicsMan.pokemonSprite, MON_SPRITE_SCALE_X, 0x20);
        PokemonSprite_AddAttribute(appMan->graphicsMan.pokemonSprite, MON_SPRITE_SCALE_Y, 0x20);
        PokemonSprite_CalcScaledYOffset(appMan->graphicsMan.pokemonSprite, appMan->graphicsMan.pokemonYOffset);
    }

    return 1;
}

static BOOL ov76_0223DEF4(SealAppManager *appMan)
{
    if (PokemonSprite_GetAttribute(appMan->graphicsMan.pokemonSprite, MON_SPRITE_SCALE_X) == 0x0) {
        return 0;
    } else if (PokemonSprite_GetAttribute(appMan->graphicsMan.pokemonSprite, MON_SPRITE_SCALE_X) <= 0x0) {
        PokemonSprite_SetAttribute(appMan->graphicsMan.pokemonSprite, MON_SPRITE_SCALE_X, 0x0);
        PokemonSprite_SetAttribute(appMan->graphicsMan.pokemonSprite, MON_SPRITE_SCALE_Y, 0x0);
        return 0;
    } else {
        PokemonSprite_AddAttribute(appMan->graphicsMan.pokemonSprite, MON_SPRITE_SCALE_X, -0x20);
        PokemonSprite_AddAttribute(appMan->graphicsMan.pokemonSprite, MON_SPRITE_SCALE_Y, -0x20);
        PokemonSprite_CalcScaledYOffset(appMan->graphicsMan.pokemonSprite, appMan->graphicsMan.pokemonYOffset);
    }

    return 1;
}

void SealManager_SetThrownMonSpriteHidden(SealAppManager *appMan, int value)
{
    PokemonSprite_SetAttribute(appMan->graphicsMan.pokemonSprite, MON_SPRITE_HIDE, value);
}

void SealManager_FreeThrownMonSprite(SealAppManager *appMan)
{
    PokemonSprite_Delete(appMan->graphicsMan.pokemonSprite);
}

static BOOL ov76_0223DF94(SealAppManager *appMan)
{
    switch (appMan->stateID) {
    case SEAL_INIT_STATE_ID:
        SealManager_SetSelectedCapsule(appMan, 0);
        SealGraphics_PrintMessage(appMan->graphicsMan.windows, 0xFFFF);
        SealGraphics_InitWindows(appMan);
        SealGraphics_UpdateAllSealCountText(appMan);
        SealGraphics_TaskStart(appMan, 1, 4);
        SealManager_CopyToActiveCapsule(appMan);
        SealManager_GetSealCounts(appMan);
        appMan->graphicsMan.unk_18C = 0;
        appMan->stateID++;
        break;
    case SEAL_FADE_IN_STATE_ID:
        if (ov76_0223DCB0(appMan) == 1) {
            break;
        }

        PaletteData_StartFade(appMan->graphicsMan.paletteData, 1, 3, 0, 0, 16, 0);
        PaletteData_StartFade(appMan->graphicsMan.paletteData, 4, 0xFFFF, 0, 0, 16, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
        Bg_SetPriority(BG_LAYER_SUB_3, 1);
        SealGraphics_SetSealSpritesDrawFlag(appMan, 1);
        SealGraphics_SetSelectionIndicatorDrawFlags(appMan, 1);
        SealGraphics_SetFontOAMDrawFlag(appMan, 1);
        appMan->stateID++;
        break;
    case SEAL_FADE_IN_WAIT_STATE_ID:
        if (PaletteData_GetSelectedBuffersMask(appMan->graphicsMan.paletteData) != 0) {
            break;
        }
        Bg_SetPriority(BG_LAYER_MAIN_3, 1);
        PaletteData_StartFade(appMan->graphicsMan.paletteData, 1, 2, 0, 16, 0, 0);
        appMan->stateID++;
        break;
    case SEAL_CAPSULE_SELECTION_STATE_ID:
        if (PaletteData_GetSelectedBuffersMask(appMan->graphicsMan.paletteData) != 0) {
            break;
        }
        SealManager_SetSelectedCapsule(appMan, 1);
        appMan->stateID++;
        break;
    case SEAL_CAPSULE_MENU_STATE_ID:
        break;
    case SEAL_FADE_OUT_STATE_ID: {
        switch (appMan->throwStateID) {
        case THROW_INIT_GFX_STATE_ID:
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
            PaletteData_StartFade(appMan->graphicsMan.paletteData, 2, 0x80B, 0, 0, 10, 0);
            PaletteData_StartFade(appMan->graphicsMan.paletteData, 8, 0xFFFF, 0, 0, 10, 0);
            SealManager_SetSelectedCapsule(appMan, 0);
            appMan->unk_3E0 = 0;
            ov76_0223D3CC(appMan);
            SealManager_LoadThrownMonSprite(appMan);
            SealManager_SetThrownMonSpriteHidden(appMan, 1);
            SealGraphics_PrintMessage(appMan->graphicsMan.windows, 13);
            appMan->throwStateID++;
            break;
        case THROW_WAIT_INIT_THROW_STATE_ID:
            if (PaletteData_GetSelectedBuffersMask(appMan->graphicsMan.paletteData) != 0) {
                break;
            }

            {
                BallThrow ballThrow;

                ballThrow.type = 1;
                ballThrow.heapID = HEAP_ID_53;
                ballThrow.mode = BALL_THROW_MODE_SEND_OUT;
                ballThrow.target = 0xFF;
                ballThrow.bgPrio = 0;
                ballThrow.surface = 1;
                ballThrow.cellActorSys = appMan->graphicsMan.spriteSystem;
                ballThrow.paletteSys = appMan->graphicsMan.paletteData;
                ballThrow.ballID = Pokemon_GetValue(appMan->pokemon, MON_DATA_POKEBALL, NULL);

                appMan->graphicsMan.ballRotation = ov12_02237728(&ballThrow);
                appMan->throwStateID++;
            }
            break;
        case THROW_SET_CAPSULE_STATE_ID: {
            int capsuleIndex;
            BallCapsule capsule;
            BallCapsuleConfig ballCapCfg = { 0 };

            ballCapCfg.battlerType = 1;
            ballCapCfg.mon = appMan->pokemon;
            capsuleIndex = *appMan->capsuleIndex + 1;

            SealPlacement_GetCapsuleSeals(&capsule, appMan);
            Pokemon_SetValue(appMan->pokemon, MON_DATA_BALL_CAPSULE_ID, (u8 *)&capsuleIndex);
            Pokemon_SetValue(appMan->pokemon, MON_DATA_BALL_CAPSULE, &capsule);

            appMan->graphicsMan.sealEffect = ov12_02236004(HEAP_ID_53, &ballCapCfg);
            ov12_02236320(appMan->graphicsMan.sealEffect);
        }
            appMan->throwStateID++;
            appMan->unk_3E0 = 0;
            break;
        case THROW_WAIT_FOR_END_STATE_ID:
            if (ov12_02236374(appMan->graphicsMan.sealEffect) != 1) {
                break;
            }

            if (ov12_02237810(appMan->graphicsMan.ballRotation) == 1) {
                ov76_0223DE78(appMan);
                ov12_022363B4(appMan->graphicsMan.sealEffect);
                SealManager_SetThrownMonSpriteHidden(appMan, 0);
                SealManager_ZeroThrownMonScale(appMan);
                Sound_PlayEffect(SEQ_SE_DP_CUSTOM05);
                appMan->throwStateID++;
            }
            break;
        case 4: {
            BOOL v4 = ov76_0223DE78(appMan);

            if (ov12_022377F8(appMan->graphicsMan.ballRotation) != 0) {
                break;
            }

            if (v4 == 0) {
                ov12_0223783C(appMan->graphicsMan.ballRotation);
                GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 0);
                SealManager_LoadThrownMonAnim(appMan);
                appMan->unk_3E0 = 0;
                appMan->throwStateID++;
            }
        } break;
        case THROW_WAIT_FOR_ANIMS_END_STATE_ID:
            if (ov12_022363C4(appMan->graphicsMan.sealEffect) != 0) {
                break;
            }

            if (PokemonAnimManager_HasAnimCompleted(appMan->graphicsMan.pokemonAnimManager, 0) != TRUE) {
                break;
            }

            if (PokemonSprite_IsAnimActive(appMan->graphicsMan.pokemonSprite) != 0) {
                break;
            }

            ov12_02236428(appMan->graphicsMan.sealEffect);
            appMan->throwStateID++;
            break;
        case 6:
            if ((++appMan->unk_3E0) < 30) { // looks suspiciously like a frame counter
                break;
            }

            appMan->unk_3E0 = 0;
            {
                BallThrow ballThrow;

                ballThrow.type = 1;
                ballThrow.heapID = HEAP_ID_53;
                ballThrow.mode = 5;
                ballThrow.target = 0xFF;
                ballThrow.bgPrio = 0;
                ballThrow.surface = 1;
                ballThrow.cellActorSys = appMan->graphicsMan.spriteSystem;
                ballThrow.paletteSys = appMan->graphicsMan.paletteData;
                ballThrow.ballID = Pokemon_GetValue(appMan->pokemon, MON_DATA_POKEBALL, NULL);

                appMan->graphicsMan.ballRotation = ov12_02237728(&ballThrow);

                SealManager_SetNormalAlpha();
                GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

                appMan->throwStateID++;
            }
            break;
        case THROW_WAIT_FREE_STATE_ID: {
            BOOL v6 = ov76_0223DEF4(appMan);

            if ((ov12_022377F8(appMan->graphicsMan.ballRotation) == 0) && (v6 == 0)) {
                PaletteData_StartFade(appMan->graphicsMan.paletteData, 2, 0x80B, 0, 10, 0, 0);
                PaletteData_StartFade(appMan->graphicsMan.paletteData, 8, 0xFFFF, 0, 10, 0, 0);
                SealManager_SetThrownMonSpriteHidden(appMan, 1);
                SealManager_FreeThrownMonSprite(appMan);
                ov12_0223783C(appMan->graphicsMan.ballRotation);
                appMan->throwStateID++;
            }
        } break;
        default:
            if (PaletteData_GetSelectedBuffersMask(appMan->graphicsMan.paletteData) != 0) {
                break;
            }

            GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 0);
            SealManager_SetSelectedCapsule(appMan, 1);
            appMan->throwStateID = THROW_INIT_GFX_STATE_ID;
            appMan->stateID = SEAL_CAPSULE_MENU_STATE_ID;
            SealGraphics_PrintMessage(appMan->graphicsMan.windows, 0xFFFF);
            break;
        }
    } break;
    case SEAL_FADE_OUT_WAIT_STATE_ID:
        SealGraphics_PrintMessage(appMan->graphicsMan.windows, 12);

        if (SealPlacement_AnySealsChanged(appMan) == 1) {
            appMan->graphicsMan.unk_18C = 1;
        }

        SealPlacement_LoadCapsuleSeals(appMan);
        SealGraphics_SetCapsuleSpriteAnim(appMan);
        {
            GameRecords *gameRecords;
            gameRecords = SaveData_GetGameRecords(appMan->appData->saveData);

            GameRecords_IncrementTrainerScore(gameRecords, TRAINER_SCORE_EVENT_UNK_06);
        }

        {
            Pokemon *pokemon;

            if (appMan->capsuleSprites[*appMan->capsuleIndex].index != 0xFF) {
                pokemon = appMan->appData->pokemon[appMan->capsuleSprites[*appMan->capsuleIndex].index];

                Pokemon_SetValue(pokemon, MON_DATA_BALL_CAPSULE, SealCase_GetCapsuleById(appMan->appData->sealCase, *appMan->capsuleIndex));
            }
        }
        appMan->stateID = 8;
        break;
    case 7: {
        switch (appMan->throwStateID) {
        case THROW_INIT_GFX_STATE_ID:
            if (SealPlacement_AnySealsChanged(appMan) == 0) {
                appMan->stateID = 8;
                break;
            }

            PaletteData_StartFade(appMan->graphicsMan.paletteData, 2, 0x80B, 0, 0, 10, 0);
            PaletteData_StartFade(appMan->graphicsMan.paletteData, 8, 0xFFFF, 0, 0, 10, 0);
            SealManager_SetSelectedCapsule(appMan, 0);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
            appMan->throwStateID++;
            break;
        case THROW_WAIT_INIT_THROW_STATE_ID:
            if (PaletteData_GetSelectedBuffersMask(appMan->graphicsMan.paletteData) != 0) {
                break;
            }

            PaletteData_SetAutoTransparent(appMan->graphicsMan.paletteData, FALSE);
            SealGraphics_InitMessageWindow(appMan->graphicsMan.bgConfig, &appMan->graphicsMan.windows[2], WINDOW_WIDTH, WINDOW_HEIGHT, 1, 27, 4, BASE_TILE_1 - MESSAGE_WINDOW_TILE_COUNT);

            {
                YesNoTouchMenuParams yesNoParams;

                yesNoParams.bgConfig = appMan->graphicsMan.bgConfig;
                yesNoParams.bgLayer = BG_LAYER_SUB_0;
                yesNoParams.baseTile = BASE_TILE_9;
                yesNoParams.palette = 5;
                yesNoParams.tilemapLeft = 25;
                yesNoParams.tilemapTop = 6;

                appMan->graphicsMan.yesNoTouchMenu = YesNoTouchMenu_New(HEAP_ID_53);
                YesNoTouchMenu_InitWithParams(appMan->graphicsMan.yesNoTouchMenu, &yesNoParams);
            }

            SealGraphics_PrintMessage(&appMan->graphicsMan.windows[2], 14);
            appMan->throwStateID++;
            break;
        case THROW_SET_CAPSULE_STATE_ID:
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
            appMan->throwStateID++;
        case THROW_WAIT_FOR_END_STATE_ID: {
            u32 yesNoInput;
            yesNoInput = YesNoTouchMenu_ProcessInput(appMan->graphicsMan.yesNoTouchMenu);

            switch (yesNoInput) {
            case YES_NO_TOUCH_MENU_YES:
            case YES_NO_TOUCH_MENU_NO:
                appMan->unk_3E0 = yesNoInput;
                PaletteData_SetAutoTransparent(appMan->graphicsMan.paletteData, TRUE);
                YesNoTouchMenu_Reset(appMan->graphicsMan.yesNoTouchMenu);
                YesNoTouchMenu_Free(appMan->graphicsMan.yesNoTouchMenu);
                Window_EraseMessageBox(&appMan->graphicsMan.windows[2], 1);
                Window_ClearAndCopyToVRAM(&appMan->graphicsMan.windows[2]);
                Window_Remove(&appMan->graphicsMan.windows[2]);
                appMan->throwStateID++;
                break;
            case YES_NO_TOUCH_MENU_NOTHING_CHOSEN:
            default:
                break;
            }
        } break;
        case 4:
            PaletteData_StartFade(appMan->graphicsMan.paletteData, 2, 0x80B, 0, 10, 0, 0);
            PaletteData_StartFade(appMan->graphicsMan.paletteData, 8, 0xFFFF, 0, 10, 0, 0);
            appMan->throwStateID++;
            break;
        case THROW_WAIT_FOR_ANIMS_END_STATE_ID:
            if (PaletteData_GetSelectedBuffersMask(appMan->graphicsMan.paletteData) != 0) {
                break;
            }

            switch (appMan->unk_3E0) {
            case 1:
                SealManager_CopyFromActiveCapsule(appMan);
                SealManager_SetSealCounts(appMan);
                SealGraphics_UpdateAllSealCountText(appMan);
                SealPlacement_FreeInactiveSeals(appMan);
                ov76_0223B208(appMan);
                SealPlacement_DrawActiveSeals(appMan, 1);
                appMan->stateID = SEAL_FADE_OUT_WAIT_STATE_ID;
                break;
            case 2:
                appMan->stateID = SEAL_CAPSULE_MENU_STATE_ID;
                break;
            case 0:
            default:
                break;
            }

            SealManager_SetSelectedCapsule(appMan, 1);
            appMan->throwStateID = THROW_INIT_GFX_STATE_ID;
        }
    } break;
    case 8:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
        PaletteData_StartFade(appMan->graphicsMan.paletteData, 1, 2, 0, 0, 16, 0);
        appMan->stateID++;
        break;
    case 9:

        if (PaletteData_GetSelectedBuffersMask(appMan->graphicsMan.paletteData) != 0) {
            break;
        }

        PaletteData_StartFade(appMan->graphicsMan.paletteData, 1, 1, 0, 16, 0, 0);
        PaletteData_StartFade(appMan->graphicsMan.paletteData, 4, 0xFFFF, 0, 16, 0, 0);
        Bg_SetPriority(BG_LAYER_MAIN_3, 3);
        Bg_SetPriority(BG_LAYER_SUB_3, 3);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        SealGraphics_SetSealSpritesDrawFlag(appMan, 0);
        SealGraphics_SetSelectionIndicatorDrawFlags(appMan, 0);
        SealGraphics_SetFontOAMDrawFlag(appMan, 0);
        SealGraphics_TaskStart(appMan, -1, 4);
        SealManager_SetSelectedCapsule(appMan, 0);
        appMan->stateID++;
        break;
    case 10:
        if (PaletteData_GetSelectedBuffersMask(appMan->graphicsMan.paletteData) != 0) {
            break;
        }

        if (ov76_0223DCB0(appMan) == 1) {
            break;
        }

        ManagedSprite_SetDrawFlag(appMan->cursor[1], 0);
        ov76_0223D494(appMan, 0, 0xFF, 0);
        SealGraphics_PrintMessage(appMan->graphicsMan.windows, 7);
        SealGraphics_FreeSealCountWindows(appMan);

        return 1;
    }

    if (appMan->graphicsMan.index == 0xFF) {
        TouchScreenActions_HandleAction(appMan->graphicsMan.touchScreenActions);
    } else {
        u32 x, y;
        int index;
        BOOL isScreenHeld;

        index = appMan->graphicsMan.index;
        isScreenHeld = TouchScreen_GetHoldState(&x, &y);

        if (isScreenHeld) {
            int sealIndex;

            sealIndex = CapsuleMenu_GetSealNameIndex(appMan->sealRenderInfo[index].type);
            SealGraphics_UpdateSealNameText(appMan->graphicsMan.windows, sealIndex);
            ManagedSprite_SetPositionXY(appMan->sealRenderInfo[index].sprite, x, y);
            ov76_0223B758(appMan, index);
            SealPlacement_UpdateSealXY(appMan, index);
        } else {
            BOOL v16;

            v16 = ov76_0223B6C4(appMan, index);
            SealPlacement_UpdateSealTouchRect(appMan->sealRenderInfo[index].touchScreenRect, appMan->sealRenderInfo[index].sprite, 0);

            if (v16 == 0) {
                GiveOrTakeSeal2(appMan->appData->sealCase, appMan->sealRenderInfo[index].type, 1);
                SealGraphics_UpdateAllSealCountText(appMan);
                SealPlacement_FreeSeal(appMan, index);
            }

            Sound_PlayEffect(SEQ_SE_DP_BOX01);
            appMan->graphicsMan.index = 0xFF;
            SealGraphics_UpdateSealNameText(appMan->graphicsMan.windows, 0xFFFF);
        }
    }

    SealGraphics_Dummy(appMan);
    SealGraphics_TickSelectionIndicator(appMan);
    SealGraphics_TickPokemonSprites(appMan);
    SealGraphics_TickCursor(appMan);

    return 1;
}

static BOOL ov76_0223E8A4(SealAppManager *appMan)
{
    switch (appMan->stateID) {
    case SEAL_INIT_STATE_ID:
        appMan->stateID++;
    case SEAL_FADE_IN_STATE_ID:
        SealGraphics_FadeOut();
        appMan->stateID++;
        break;
    case SEAL_FADE_IN_WAIT_STATE_ID:
        if (IsScreenFadeDone() != 1) {
            break;
        }

        Window_Remove(appMan->graphicsMan.windows);
        SealGraphics_FreeCapsuleSprites(appMan);
        SealGraphics_FreePokemonSprites(appMan);
        SealGraphics_FreeUISprites(appMan);
        SealGraphics_FreeSelectionIndicator(appMan);
        SealGraphics_FreeSealSprites(appMan);
        CapsuleMenu_SetAction(appMan->appData, CAPSULE_MENU_SWITCH_ACTION_STATE_ID);

        return 0;
    }

    SealGraphics_TickPokemonSprites(appMan);
    SealGraphics_TickCursor(appMan);

    return 1;
}

void SealManager_AssignCapsuleMon(SealAppManager *appMan, int capsuleIndex)
{
    int unused;
    int index;
    int capsuleID = 0;
    BallCapsule capsule;

    index = appMan->capsules[capsuleIndex].index;

    if (index != 0xFF) {
        Pokemon_SetValue(appMan->appData->pokemon[index], MON_DATA_BALL_CAPSULE_ID, (u8 *)&capsuleID);
    }

    appMan->capsules[capsuleIndex].index = 0xFF;
    SealGraphics_SetCapsuleSpriteAnim(capsuleIndex);
}

static BOOL ov76_0223E950(SealAppManager *appMan) // idk what the difference is with the one above
{
    switch (appMan->stateID) {
    case SEAL_INIT_STATE_ID:
        SealManager_AssignCapsuleMon(appMan, *appMan->capsuleIndex);
        SealGraphics_PrintMessage(appMan->graphicsMan.windows, 9);
        appMan->stateID++;
        break;
    case SEAL_FADE_IN_STATE_ID:
        if (gSystem.pressedKeys & 0xCF3) {
            appMan->stateID++;
        }
        break;
    case SEAL_FADE_IN_WAIT_STATE_ID:
        ov76_0223D494(appMan, 0, 0xFF, 0);
        SealGraphics_PrintMessage(appMan->graphicsMan.windows, 7);
        break;
    }

    SealGraphics_TickPokemonSprites(appMan);
    SealGraphics_TickCursor(appMan);

    return 1;
}

static BOOL ov76_0223E9C4(SealAppManager *appMan)
{
    switch (appMan->stateID) {
    case SEAL_INIT_STATE_ID:
        ManagedSprite_SetPriority(appMan->cursor[0], 25);
        ManagedSprite_SetPriority(appMan->cursor[1], 20);
        ManagedSprite_SetAnim(appMan->cursor[0], 1);
        SealGraphics_PrintMessage(appMan->graphicsMan.windows, 10);
        ManagedSprite_SetDrawFlag(appMan->cursor[1], 1);
        appMan->stateID++;
    case SEAL_FADE_IN_STATE_ID: {
        BOOL cursorMoved;

        cursorMoved = SealManager_HandleCapsulePadMovement(&(appMan->capsuleIndex[1]));

        if (cursorMoved) {
            SealManager_MoveCursorToCapsule(appMan, 1, 0);

            Sound_PlayEffect(SEQ_SE_CONFIRM);
        } else if (gSystem.pressedKeys & PAD_BUTTON_A) {
            SealGraphics_SwapCapsules(appMan, *appMan->capsuleIndex, appMan->capsuleIndex[1]);
            SealManager_MoveCursorToCapsule(appMan, 1, 1);
            SealGraphics_PrintMessage(appMan->graphicsMan.windows, 11);
            appMan->stateID = SEAL_FADE_IN_WAIT_STATE_ID;
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
            ManagedSprite_SetDrawFlag(appMan->cursor[1], 0);
            SealManager_MoveCursorToCapsule(appMan, 0, 1);
            appMan->stateID = SEAL_CAPSULE_SELECTION_STATE_ID;
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        }
    } break;
    case SEAL_FADE_IN_WAIT_STATE_ID:
        if (gSystem.pressedKeys & 0xCF3) {
            appMan->stateID = SEAL_CAPSULE_SELECTION_STATE_ID;
        }
        break;
    case SEAL_CAPSULE_SELECTION_STATE_ID:
        ManagedSprite_SetPriority(appMan->cursor[0], 20);
        ManagedSprite_SetPriority(appMan->cursor[1], 25);
        ov76_0223D494(appMan, 0, 0xFF, 0);
        ManagedSprite_SetAnim(appMan->cursor[0], 0);
        SealGraphics_PrintMessage(appMan->graphicsMan.windows, 7);
        break;
    }

    SealGraphics_TickPokemonSprites(appMan);
    SealGraphics_TickCursor(appMan);

    return 1;
}

static BOOL SealManager_Dummy(SealAppManager *appMan)
{
    return 0;
}

void SealManager_InitGraphicsPlane(int unused)
{
    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
}

void SealManager_Deinit(int unused)
{
    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
}

void SealManager_InitBgConfig(BgConfig *bgConfig)
{
    GXLayers_DisableEngineALayers();

    {
        GXBanks gxBanks = {
            GX_VRAM_BG_128_A,
            GX_VRAM_BGEXTPLTT_NONE,
            GX_VRAM_SUB_BG_32_H,
            GX_VRAM_SUB_BGEXTPLTT_NONE,
            GX_VRAM_OBJ_64_E,
            GX_VRAM_OBJEXTPLTT_NONE,
            GX_VRAM_SUB_OBJ_16_I,
            GX_VRAM_SUB_OBJEXTPLTT_NONE,
            GX_VRAM_TEX_01_BC,
            GX_VRAM_TEXPLTT_01_FG
        };

        GXLayers_SetBanks(&gxBanks);

        MI_CpuClear32((void *)HW_BG_VRAM, HW_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_BG_VRAM, HW_DB_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_OBJ_VRAM, HW_OBJ_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_OBJ_VRAM, HW_DB_OBJ_VRAM_SIZE);
    }

    {
        GraphicsModes graphicsModes = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D,
        };

        SetAllGraphicsModes(&graphicsModes);
    }

    {
        BgTemplate bgTemplates[] = {
            {
                .x = 0,
                .y = 0,
                .bufferSize = 0x800,
                .baseTile = 0,
                .screenSize = BG_SCREEN_SIZE_256x256,
                .colorMode = GX_BG_COLORMODE_16,
                .screenBase = GX_BG_SCRBASE_0x0000,
                .charBase = GX_BG_CHARBASE_0x04000,
                .bgExtPltt = GX_BG_EXTPLTT_01,
                .priority = 0,
                .areaOver = 0,
                .mosaic = FALSE,
            },
            {
                .x = 0,
                .y = 0,
                .bufferSize = 0x2000,
                .baseTile = 0,
                .screenSize = BG_SCREEN_SIZE_256x256,
                .colorMode = GX_BG_COLORMODE_16,
                .screenBase = GX_BG_SCRBASE_0x1000,
                .charBase = GX_BG_CHARBASE_0x0c000,
                .bgExtPltt = GX_BG_EXTPLTT_01,
                .priority = 2,
                .areaOver = 0,
                .mosaic = FALSE,
            },
            {
                .x = 0,
                .y = 0,
                .bufferSize = 0x1000,
                .baseTile = 0,
                .screenSize = BG_SCREEN_SIZE_256x256,
                .colorMode = GX_BG_COLORMODE_16,
                .screenBase = GX_BG_SCRBASE_0x3000,
                .charBase = GX_BG_CHARBASE_0x10000,
                .bgExtPltt = GX_BG_EXTPLTT_01,
                .priority = 3,
                .areaOver = 0,
                .mosaic = FALSE,
            },
        };

        Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &bgTemplates[0], 0);
        Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &bgTemplates[1], 0);
        Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_3, &bgTemplates[2], 0);
        Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);
        Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);
        Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_3);

        G2_SetBG0Priority(1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    }

    {
        BgTemplate bgTemplates[] = {
            {
                .x = 0,
                .y = 0,
                .bufferSize = 0x800,
                .baseTile = 0,
                .screenSize = BG_SCREEN_SIZE_256x256,
                .colorMode = GX_BG_COLORMODE_16,
                .screenBase = GX_BG_SCRBASE_0x6800,
                .charBase = GX_BG_CHARBASE_0x00000,
                .bgExtPltt = GX_BG_EXTPLTT_01,
                .priority = 0,
                .areaOver = 0,
                .mosaic = FALSE,
            },
            {
                .x = 0,
                .y = 0,
                .bufferSize = 0x800,
                .baseTile = 0,
                .screenSize = BG_SCREEN_SIZE_256x256,
                .colorMode = GX_BG_COLORMODE_16,
                .screenBase = GX_BG_SCRBASE_0x7000,
                .charBase = GX_BG_CHARBASE_0x04000,
                .bgExtPltt = GX_BG_EXTPLTT_01,
                .priority = 2,
                .areaOver = 0,
                .mosaic = FALSE,
            },
            {
                .x = 0,
                .y = 0,
                .bufferSize = 0x800,
                .baseTile = 0,
                .screenSize = BG_SCREEN_SIZE_256x256,
                .colorMode = GX_BG_COLORMODE_16,
                .screenBase = GX_BG_SCRBASE_0x6000,
                .charBase = GX_BG_CHARBASE_0x00000,
                .bgExtPltt = GX_BG_EXTPLTT_01,
                .priority = 1,
                .areaOver = 0,
                .mosaic = FALSE,
            },
            {
                .x = 0,
                .y = 0,
                .bufferSize = 0x800,
                .baseTile = 0,
                .screenSize = BG_SCREEN_SIZE_256x256,
                .colorMode = GX_BG_COLORMODE_16,
                .screenBase = GX_BG_SCRBASE_0x7800,
                .charBase = GX_BG_CHARBASE_0x04000,
                .bgExtPltt = GX_BG_EXTPLTT_01,
                .priority = 3,
                .areaOver = 0,
                .mosaic = FALSE,
            },
        };

        Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0, &bgTemplates[0], 0);
        Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_1, &bgTemplates[1], 0);
        Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_2, &bgTemplates[2], 0);
        Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_3, &bgTemplates[3], 0);
        Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_0);
        Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_1);
        Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_2);
        Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_3);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
    }
}

void SealManager_VBlankCallback(void *appMan)
{
    SealAppManager *appMan_dupe = appMan;

    PokemonSpriteManager_UpdateCharAndPltt(appMan_dupe->graphicsMan.pokemonSpriteManager);
    VramTransfer_Process();
    SpriteSystem_TransferOam();
    PaletteData_CommitFadedBuffers(appMan_dupe->graphicsMan.paletteData);
    Bg_RunScheduledUpdates(appMan_dupe->graphicsMan.bgConfig);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}
