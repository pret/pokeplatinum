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

#define CANCEL_FADE_IN_STATE_ID              0
#define CANCEL_WAIT_MENU_STATE_ID            1
#define CANCEL_TOGGLE_BG0_STATE_ID           2
#define CANCEL_GET_INPUT_STATE_ID            3
#define CANCEL_FADE_OUT_STATE_ID             4
#define CANCEL_PROCESS_INPUT_STATE_ID        5
#define CAPSULE_MON_SPRITE_X                 192
#define CAPSULE_MON_SPRITE_Y_BASE            48
#define CAPSULE_MON_SPRITE_Z                 -640
#define THROW_INIT_GFX_STATE_ID              0
#define THROW_WAIT_INIT_THROW_STATE_ID       1
#define THROW_SET_CAPSULE_STATE_ID           2
#define THROW_WAIT_FOR_END_STATE_ID          3
#define THROW_WAIT_FOR_ROTATION_END_STATE_ID 4
#define THROW_WAIT_FOR_ANIMS_END_STATE_ID    5
#define THROW_WAIT_AFTER_ANIMS_END_STATE_ID  6
#define THROW_WAIT_FREE_STATE_ID             7
#define SEAL_PAGE_SPRITE_ID                  0
#define UI_PAGE_UP_SPRITE_ID                 8
#define UI_PAGE_DOWN_SPRITE_ID               9
#define UI_THROW_SPRITE_ID                   10
#define UI_CONFIRM_SPRITE_ID                 11
#define UI_CANCEL_SPRITE_ID                  12
#define CAPSULE_SEAL_SPRITE_ID               13

typedef struct {
    int frame;
    ManagedSprite *sprite;
    FontOAM *fontOAM;
} CapsuleUIPressTask;

static BOOL CapsuleManager_SelectionActions(CapsuleAppManager *appMan);
static BOOL CapsuleManager_HandleCancelUpdateSeals(CapsuleAppManager *appMan);
static BOOL CapsuleManager_HandleFades(CapsuleAppManager *appMan);
static BOOL ov76_0223E950(CapsuleAppManager *appMan);
static BOOL CapsuleManager_HandleSpritesAndInputs(CapsuleAppManager *appMan);
static BOOL CapsuleManager_Dummy(CapsuleAppManager *appMan);

void CapsuleManager_CopyToActiveCapsule(CapsuleAppManager *appMan)
{
    BallCapsule_Copy(appMan->capsules[*appMan->capsuleIndex].capsule, &appMan->activeCapsule);
}

void CapsuleManager_CopyFromActiveCapsule(CapsuleAppManager *appMan)
{
    BallCapsule_Copy(&appMan->activeCapsule, appMan->capsules[*appMan->capsuleIndex].capsule);
}

void CapsuleManager_GetSealCounts(CapsuleAppManager *appMan)
{
    for (int i = 0; i < SEAL_ID_MAX; i++) {
        appMan->sealCounts[i] = SealCase_GetSealCount(appMan->sealCount, i);
    }
}

void CapsuleManager_SetSealCounts(CapsuleAppManager *appMan)
{
    for (int i = 0; i < SEAL_ID_MAX; i++) {
        SealCase_SetSealQuantity(appMan->sealCount, i, appMan->sealCounts[i]);
    }
}

void CapsuleManager_SetNormalAlpha(void)
{
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2, 11, 7);
    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, 7, 8);
}

void CapsuleManager_LoadLeadingPokemon(CapsuleAppManager *appMan)
{
    int isEgg;
    Pokemon *pokemon;

    if (appMan->capsules[*appMan->capsuleIndex].pokemonIndex != 0xFF) {
        pokemon = appMan->appData->pokemon[appMan->capsules[*appMan->capsuleIndex].pokemonIndex];
        Pokemon_Copy(pokemon, appMan->pokemon);

        return;
    }

    for (int i = 0; i < appMan->appData->partySize; i++) {
        pokemon = appMan->appData->pokemon[i];
        isEgg = Pokemon_GetValue(pokemon, MON_DATA_IS_EGG, NULL);

        if (isEgg != 0) {
            continue;
        }

        Pokemon_Copy(pokemon, appMan->pokemon);
        break;
    }
}

int CapsuleManager_AnySealsOnCapsule(BallCapsule *capsule)
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

int SealManger_CapsuleMenuField(CapsuleAppManager *appMan, int index)
{
    int pokemonIndex;
    int animIdx;
    int result;

    pokemonIndex = appMan->capsuleSprites[index].pokemonIndex;
    animIdx = appMan->capsuleSprites[index].animIdx;

    if ((pokemonIndex == 0xFF) && (animIdx == 0)) {
        result = CAPSULE_MENU_EMPTY_CAPSULE;
    } else if ((pokemonIndex == 0xFF) && (animIdx == 1)) {
        result = CAPSULE_MENU_HAS_SEALS;
    } else if ((pokemonIndex != 0xFF) && (animIdx == 1)) {
        result = CAPSULE_MENU_HAS_POKEMON;
    } else {
        result = CAPSULE_MENU_UNREACHABLE_CASE;
    }

    return result;
}

static void CapsuleManager_UpdateStates(CapsuleAppManager *appMan, int funcIndex, int stateID, int alternateState)
{
    if (stateID == 0xFF) {
        appMan->stateID = appMan->alternateState;
    } else {
        appMan->stateID = stateID;
    }

    appMan->funcIndex = funcIndex;
    appMan->alternateState = alternateState;
    appMan->throwStateID = 0;
}

static int CapsuleManager_FreeMenuWindow(CapsuleAppManager *appMan)
{
    Window_EraseStandardFrame(&appMan->graphicsMan.windows[1], 1);
    Window_ClearAndCopyToVRAM(&appMan->graphicsMan.windows[1]);
    Menu_Free(appMan->graphicsMan.menu, NULL);
    StringList_Free(appMan->graphicsMan.stringList);
    Window_Remove(&appMan->graphicsMan.windows[1]);

    return 1;
}

static int ov76_0223D4FC(CapsuleAppManager *appMan)
{
    CapsuleManager_UpdateStates(appMan, 1, 0, 3);
    return 0;
}

static int ov76_0223D50C(CapsuleAppManager *appMan)
{
    SealPlacement_UpdateSeals(appMan);
    SealPlacement_LoadCapsuleSeals(appMan);
    CapsuleGraphics_SetCapsuleSpriteAnim(appMan);
    CapsuleManager_UpdateStates(appMan, 2, 0, 0);

    return 0;
}

static int ov76_0223D530(CapsuleAppManager *appMan)
{
    CapsuleManager_UpdateStates(appMan, 3, 0, 3);
    return 0;
}

static int ov76_0223D540(CapsuleAppManager *appMan)
{
    CapsuleManager_UpdateStates(appMan, 4, 0, 3);
    return 0;
}

const SealListMenuEntry gSealListMenuEntries[] = {
    { 0, ov76_0223D4FC },
    { 1, CapsuleManager_FreeMenuWindow },
    { 2, ov76_0223D50C },
    { 3, ov76_0223D530 },
    { 4, ov76_0223D540 },
};

static BOOL (*const sCapsuleFunctions[])(CapsuleAppManager *appMan) = {
    CapsuleManager_SelectionActions,
    CapsuleManager_HandleCancelUpdateSeals,
    CapsuleManager_HandleFades,
    ov76_0223E950,
    CapsuleManager_HandleSpritesAndInputs,
    CapsuleManager_Dummy,
};

BOOL CapsuleManager_CallFunction(CapsuleAppManager *appMan)
{
    BOOL result = sCapsuleFunctions[appMan->funcIndex](appMan);
    SpriteSystem_DrawSprites(appMan->graphicsMan.spriteManager);

    return result;
}

static BOOL CapsuleManager_HandleCapsulePadMovement(int *capsuleIndex)
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

static void CapsuleManager_MoveCursorToCapsule(CapsuleAppManager *appMan, int index, BOOL moveBoth)
{
    s16 x, y;
    int cursorIndex = 0;

    if (index == 0) {
        cursorIndex = 1;
    }

    CapsuleGraphics_GetCapsuleGridLocation(appMan->capsuleIndex[index], &x, &y);
    ManagedSprite_SetPositionXY(appMan->cursor[index], x, y);

    if (moveBoth == 1) {
        appMan->capsuleIndex[cursorIndex] = appMan->capsuleIndex[index];
        CapsuleGraphics_GetCapsuleGridLocation(appMan->capsuleIndex[cursorIndex], &x, &y);
        ManagedSprite_SetPositionXY(appMan->cursor[cursorIndex], x, y);
    }
}

static BOOL CapsuleManager_SelectionActions(CapsuleAppManager *appMan)
{
    switch (appMan->stateID) {
    case CAPSULE_INIT_STATE_ID: {
        NARC *narc;

        narc = NARC_ctor(NARC_INDEX_APPLICATION__CUSTOM_BALL__DATA__CB_DATA, HEAP_ID_53);

        CapsuleGraphics_LoadPokemonIcons(appMan);
        CapsuleGraphics_InitPokemonIcons(appMan);
        CapsuleGraphics_SetPokemonSpritesPosition(appMan);
        CapsuleGraphics_LoadBgLayer2Tilemap(appMan, narc);
        CapsuleGraphics_LoadBgLayer5Tilemap(appMan, narc);
        CapsuleGraphics_LoadBgLayer7Tilemap(appMan, narc);
        CapsuleGraphics_AssignCapsules(appMan);
        CapsuleGraphics_InitCapsuleSprites(appMan, narc);
        CapsuleGraphics_InitMessageWindow(appMan->graphicsMan.bgConfig, appMan->graphicsMan.windows, 1, 2, 21, 27, 2, 1 + 18 + 12 + 9);
        SealPlacement_UpdateSealsFromCapsule(appMan);
        SealPlacement_DrawActiveSeals(appMan, 1);
        SealPlacement_OffsetSeals(appMan);
        CapsuleGraphics_LoadCapsuleUI(appMan, narc);
        CapsuleGraphics_InitCapsuleUI(appMan);
        CapsuleGraphics_LoadSelectionResources(appMan, narc);
        CapsuleGraphics_InitSelectionIndicator(appMan);
        CapsuleManager_CopyToActiveCapsule(appMan);
        CapsuleManager_GetSealCounts(appMan);
        CapsuleGraphics_PopulateSealPage(appMan, appMan->sealPages.page);
        CapsuleGraphics_LoadPageSprites(appMan);
        CapsuleGraphics_InitPageSprites(appMan);
        CapsuleGraphics_SetPageSpritesDrawFlag(appMan, 0);
        CapsuleGraphics_SetSelectionIndicatorDrawFlags(appMan, 0);
        ov76_0223B940(appMan);
        CapsuleGraphics_SetFontOAMDrawFlag(appMan, 0);
        CapsuleGraphics_PrintMessage(appMan->graphicsMan.windows, 7);
        CapsuleGraphics_StartDisplay();
        CapsuleManager_SetSelectedCapsule(appMan, 0);

        NARC_dtor(narc);
    }
        appMan->stateID++;
        break;

    case CAPSULE_FADE_IN_STATE_ID:
        CapsuleGraphics_FadeIn();
        appMan->stateID++;
        break;

    case CAPSULE_FADE_IN_WAIT_STATE_ID:
        if (IsScreenFadeDone() != 1) {
            break;
        }

        appMan->stateID++;

    case CAPSULE_CAPSULE_SELECTION_STATE_ID: {
        BOOL cursorMoved;
        int initialCapsuleIndex;
        int newCapsuleIndex;

        if (TouchScreen_Tapped() == 1) {
            ov76_0223D4FC(appMan);
            break;
        }

        initialCapsuleIndex = *appMan->capsuleIndex;
        cursorMoved = CapsuleManager_HandleCapsulePadMovement(appMan->capsuleIndex);
        newCapsuleIndex = *appMan->capsuleIndex;
        *appMan->capsuleIndex = initialCapsuleIndex;

        if (cursorMoved == 1) {
            SealPlacement_UpdateSeals(appMan);
            SealPlacement_LoadCapsuleSeals(appMan);
            CapsuleGraphics_SetCapsuleSpriteAnim(appMan);

            *appMan->capsuleIndex = newCapsuleIndex;

            CapsuleManager_MoveCursorToCapsule(appMan, 0, 1);
            SealPlacement_FreeInactiveSeals(appMan);
            SealPlacement_UpdateSealsFromCapsule(appMan);
            SealPlacement_DrawActiveSeals(appMan, 1);
            SealPlacement_OffsetSeals(appMan);

            Sound_PlayEffect(SE_CONFIRM_sseq_3);
        } else if (gSystem.pressedKeys & PAD_BUTTON_A) {
            appMan->stateID++;
            CapsuleGraphics_PrintMessage(appMan->graphicsMan.windows, 8);
            CapsuleGraphics_OpenCapsuleSelectionMenu(appMan->graphicsMan.bgConfig, &appMan->graphicsMan.windows[1], 1, appMan, *appMan->capsuleIndex);
            Sound_PlayEffect(SE_CONFIRM_sseq_3);
        } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
            appMan->stateID = CAPSULE_FADE_OUT_STATE_ID;
            Sound_PlayEffect(SEQ_SE_DP_DECIDE_sseq);
        }
    } break;
    case CAPSULE_CAPSULE_MENU_STATE_ID: {
        SealMenuCallback callback;
        u32 result = Menu_ProcessInput(appMan->graphicsMan.menu);

        switch (result) {
        case MENU_CANCEL:
            CapsuleManager_FreeMenuWindow(appMan);
            CapsuleGraphics_PrintMessage(appMan->graphicsMan.windows, 7);
            appMan->stateID = CAPSULE_CAPSULE_SELECTION_STATE_ID;
            break;
        case MENU_NOTHING_CHOSEN:
            break;
        default:
            callback = (SealMenuCallback)result;

            if (callback != NULL) {
                int result = callback(appMan);

                if (result != 1) {
                    CapsuleManager_FreeMenuWindow(appMan);
                    break;
                }

                CapsuleGraphics_PrintMessage(appMan->graphicsMan.windows, 7);
                appMan->stateID = CAPSULE_CAPSULE_SELECTION_STATE_ID;
            }
            break;
        }
    } break;
    case CAPSULE_FADE_OUT_STATE_ID:
        CapsuleGraphics_FadeOut();
        appMan->stateID++;
        break;
    case CAPSULE_FADE_OUT_WAIT_STATE_ID:
        if (IsScreenFadeDone() != 1) {
            break;
        }
        Window_Remove(appMan->graphicsMan.windows);
        CapsuleGraphics_FreeCapsuleSprites(appMan);
        CapsuleGraphics_FreePokemonSprites(appMan);
        CapsuleGraphics_FreeUISprites(appMan);
        CapsuleGraphics_FreeSelectionIndicator(appMan);
        CapsuleGraphics_FreePageSprites(appMan);
        CapsuleMenu_SetAction(appMan->appData, CAPSULE_MENU_GO_TO_FIELD);
        return 0;
    }

    CapsuleGraphics_TickPokemonSprites(appMan);
    CapsuleGraphics_TickCursor(appMan);

    return 1;
}

void CapsuleManager_SetUIAnimationFromTouch(ManagedSprite *sprite, int touchscreenState)
{
    switch (touchscreenState) {
    case TOUCH_BUTTON_PRESSED:
        ManagedSprite_SetAnimationFrame(sprite, 1);
        break;
    case TOUCH_BUTTON_HELD:
        ManagedSprite_SetAnimationFrame(sprite, 2);
        break;
    case TOUCH_BUTTON_RELEASED:
    case TOUCH_BUTTON_HELD_OUT_OF_BOUNDS:
        ManagedSprite_SetAnimationFrame(sprite, 0);
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

static void CapsuleManager_OffsetFontOAM(FontOAM *fontOAM, int xOffset, int yOffset)
{
    int x;
    int y;

    if (fontOAM != NULL) {
        FontOAM_GetXY(fontOAM, &x, &y);
        FontOAM_SetXY(fontOAM, x + xOffset, y + yOffset);
    }
}

static void CapsuleManager_CapsuleUIPressTask(SysTask *sysTask, void *capsuleUIPressTask)
{
    CapsuleUIPressTask *capsuleUIPressTask_dupe = capsuleUIPressTask;

    switch (capsuleUIPressTask_dupe->frame) {
    case 3:
        CapsuleManager_OffsetFontOAM(capsuleUIPressTask_dupe->fontOAM, 0, -1);
        ManagedSprite_SetAnimationFrame(capsuleUIPressTask_dupe->sprite, 2);
        capsuleUIPressTask_dupe->frame++;
        break;
    case 6:
        CapsuleManager_OffsetFontOAM(capsuleUIPressTask_dupe->fontOAM, 0, 2);
        ManagedSprite_SetAnimationFrame(capsuleUIPressTask_dupe->sprite, 0);
        SysTask_Done(sysTask);
        Heap_Free(capsuleUIPressTask_dupe);
        break;
    default:
        capsuleUIPressTask_dupe->frame++;
        break;
    }
}

static void CapsuleManager_PressCapsuleUI(ManagedSprite *sprite, FontOAM *fontOAM)
{
    CapsuleUIPressTask *capsuleUIPressTask = Heap_Alloc(HEAP_ID_53, sizeof(CapsuleUIPressTask));

    capsuleUIPressTask->frame = 1;
    capsuleUIPressTask->sprite = sprite;
    capsuleUIPressTask->fontOAM = fontOAM;

    CapsuleManager_OffsetFontOAM(capsuleUIPressTask->fontOAM, 0, -1);
    SysTask_Start(CapsuleManager_CapsuleUIPressTask, capsuleUIPressTask, 1000);
}

void CapsuleManager_HandleSpritePress(u32 field, enum TouchScreenButtonState touchScreenState, void *appMan)
{
    CapsuleAppManager *appMan_dupe = (CapsuleAppManager *)appMan;

    if (appMan_dupe->graphicsMan.selectedCapsule == FALSE) {
        return;
    }

    switch (field) {
    case UI_PAGE_UP_SPRITE_ID:
        if (touchScreenState == TOUCH_BUTTON_PRESSED) {
            if (appMan_dupe->sealPages.page > 0) {
                appMan_dupe->sealPages.page--;
            } else {
                appMan_dupe->sealPages.page = appMan_dupe->sealPages.maxPage - 1;
            }

            CapsuleGraphics_FreePageSprites(appMan_dupe);
            CapsuleGraphics_PopulateSealPage(appMan_dupe, appMan_dupe->sealPages.page);
            CapsuleGraphics_LoadPageSprites(appMan_dupe);
            CapsuleGraphics_InitPageSprites(appMan_dupe);
            CapsuleGraphics_UpdateAllSealCountText(appMan_dupe);
            Sound_PlayEffect(SEQ_SE_DP_CUSTOM02_sseq);
        }

        CapsuleManager_SetUIAnimationFromTouch(appMan_dupe->pageSprites.sprites[8], touchScreenState);
        break;
    case UI_PAGE_DOWN_SPRITE_ID:
        if (touchScreenState == TOUCH_BUTTON_PRESSED) {
            appMan_dupe->sealPages.page++;
            appMan_dupe->sealPages.page %= appMan_dupe->sealPages.maxPage;

            CapsuleGraphics_FreePageSprites(appMan_dupe);
            CapsuleGraphics_PopulateSealPage(appMan_dupe, appMan_dupe->sealPages.page);
            CapsuleGraphics_LoadPageSprites(appMan_dupe);
            CapsuleGraphics_InitPageSprites(appMan_dupe);
            CapsuleGraphics_UpdateAllSealCountText(appMan_dupe);
            Sound_PlayEffect(SEQ_SE_DP_CUSTOM02_sseq);
        }
        CapsuleManager_SetUIAnimationFromTouch(appMan_dupe->pageSprites.sprites[9], touchScreenState);
        break;
    case UI_THROW_SPRITE_ID:
        if (touchScreenState == TOUCH_BUTTON_PRESSED) {
            if (appMan_dupe->stateID != CAPSULE_FADE_OUT_STATE_ID) {
                appMan_dupe->stateID = CAPSULE_FADE_OUT_STATE_ID;
                Sound_PlayEffect(SEQ_SE_DP_DECIDE_sseq);
            }

            CapsuleManager_PressCapsuleUI(appMan_dupe->pageSprites.sprites[10], NULL);
        }

        CapsuleManager_SetUIAnimationFromTouch(appMan_dupe->pageSprites.sprites[10], touchScreenState);
        break;
    case UI_CONFIRM_SPRITE_ID:
        if (touchScreenState == TOUCH_BUTTON_PRESSED) {
            if (appMan_dupe->stateID != CAPSULE_FADE_OUT_WAIT_STATE_ID) {
                appMan_dupe->stateID = CAPSULE_FADE_OUT_WAIT_STATE_ID;
                CapsuleManager_SetSelectedCapsule(appMan_dupe, 0);
                Sound_PlayEffect(SEQ_SE_DP_PIRORIRO_sseq);
            }

            CapsuleManager_PressCapsuleUI(appMan_dupe->pageSprites.sprites[11], appMan_dupe->graphicsMan.fontOAM[0]);
        }

        CapsuleManager_SetUIAnimationFromTouch(appMan_dupe->pageSprites.sprites[11], touchScreenState);
        break;
    case UI_CANCEL_SPRITE_ID:
        if (touchScreenState == TOUCH_BUTTON_PRESSED) {
            if (appMan_dupe->stateID != CAPSULE_CANCEL_PRESSED_STATE_ID) {
                appMan_dupe->stateID = CAPSULE_CANCEL_PRESSED_STATE_ID;
                CapsuleManager_SetSelectedCapsule(appMan_dupe, 0);
                Sound_PlayEffect(SEQ_SE_DP_DECIDE_sseq);
            }

            CapsuleManager_PressCapsuleUI(appMan_dupe->pageSprites.sprites[12], appMan_dupe->graphicsMan.fontOAM[1]);
        }

        CapsuleManager_SetUIAnimationFromTouch(appMan_dupe->pageSprites.sprites[12], touchScreenState);
        break;
    case SEAL_PAGE_SPRITE_ID:
    case SEAL_PAGE_SPRITE_ID + 1:
    case SEAL_PAGE_SPRITE_ID + 2:
    case SEAL_PAGE_SPRITE_ID + 3:
    case SEAL_PAGE_SPRITE_ID + 4:
    case SEAL_PAGE_SPRITE_ID + 5:
    case SEAL_PAGE_SPRITE_ID + 6:
    case SEAL_PAGE_SPRITE_ID + 7: {
        int sealIdx;

        if (touchScreenState == TOUCH_BUTTON_PRESSED) {
            if (SealPlacement_NotMaxSeals(appMan_dupe) == FALSE) {
                Sound_PlayEffect(SEQ_SE_DP_CUSTOM06_sseq);
                CapsuleGraphics_PrintMessage(appMan_dupe->graphicsMan.windows, 15);
            } else if ((appMan_dupe->sealPages.sealIDs[field] != 0) && (SealCase_GetSealCount(appMan_dupe->sealCount, appMan_dupe->sealPages.sealIDs[field] - 1) != 0)) {
                appMan_dupe->graphicsMan.index = SealPlacement_GetTouchedSeal(appMan_dupe, field);
                sealIdx = CapsuleMenu_GetSealNameIndex(appMan_dupe->sealPages.sealIDs[field]);

                CapsuleGraphics_UpdateSealNameText(appMan_dupe->graphicsMan.windows, sealIdx);
                GiveOrTakeSeal(appMan_dupe->appData->sealCase, appMan_dupe->sealPages.sealIDs[field], -1);
                CapsuleGraphics_UpdateSealCountText(appMan_dupe, field);
                Sound_PlayEffect(SEQ_SE_DP_BOX02_sseq);
            } else if (appMan_dupe->sealPages.sealIDs[field] != 0) {
                Sound_PlayEffect(SEQ_SE_DP_CUSTOM06_sseq);
                CapsuleGraphics_PrintMessage(appMan_dupe->graphicsMan.windows, 16);
            }
        }
    } break;
    case CAPSULE_SEAL_SPRITE_ID:
    case CAPSULE_SEAL_SPRITE_ID + 1:
    case CAPSULE_SEAL_SPRITE_ID + 2:
    case CAPSULE_SEAL_SPRITE_ID + 3:
    case CAPSULE_SEAL_SPRITE_ID + 4:
    case CAPSULE_SEAL_SPRITE_ID + 5:
    case CAPSULE_SEAL_SPRITE_ID + 6:
    case CAPSULE_SEAL_SPRITE_ID + 7: {
        int renderedIndex;
        int sealIndex;

        if (touchScreenState == TOUCH_BUTTON_PRESSED) {
            renderedIndex = field - 13;
            SealPlacement_HandleTouchscreen(appMan_dupe, touchScreenState, renderedIndex);
            sealIndex = CapsuleMenu_GetSealNameIndex(appMan_dupe->sealRenderInfo[renderedIndex].type);

            CapsuleGraphics_UpdateSealNameText(appMan_dupe->graphicsMan.windows, sealIndex);
            Sound_PlayEffect(SEQ_SE_DP_BOX02_sseq);
        }
    } break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

BOOL CapsuleManager_GetGraphicsTaskResult(CapsuleAppManager *appMan)
{
    return appMan->graphicsMan.graphicsTaskResult;
}

void CapsuleManager_SetSelectedCapsule(CapsuleAppManager *appMan, BOOL value)
{
    appMan->graphicsMan.selectedCapsule = value;
}

static const TouchScreenRect CapsuleUIRects[] = {
    { .rect = { .top = 16, .bottom = 32, .left = 8, .right = 24 } },
    { .rect = { .top = 16, .bottom = 32, .left = 64, .right = 80 } },
    { .rect = { .top = 40, .bottom = 56, .left = 8, .right = 24 } },
    { .rect = { .top = 40, .bottom = 56, .left = 64, .right = 80 } },
    { .rect = { .top = 64, .bottom = 80, .left = 8, .right = 24 } },
    { .rect = { .top = 64, .bottom = 80, .left = 64, .right = 80 } },
    { .rect = { .top = 88, .bottom = 104, .left = 8, .right = 24 } },
    { .rect = { .top = 88, .bottom = 104, .left = 64, .right = 80 } },
    { .rect = { .top = 104, .bottom = 128, .left = 8, .right = 48 } },
    { .rect = { .top = 104, .bottom = 128, .left = 56, .right = 96 } },
    { .rect = { .top = 168, .bottom = 188, .left = 18, .right = 77 } },
    { .rect = { .top = 168, .bottom = 188, .left = 97, .right = 156 } },
    { .rect = { .top = 168, .bottom = 188, .left = 178, .right = 237 } },
};

void CapsuleManager_InitTouchRects(CapsuleAppManager *appMan)
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

    appMan->graphicsMan.touchScreenActions = TouchScreenActions_RegisterHandler(appMan->graphicsMan.touchScreenRects, CAPSULE_TOUCH_RECTS, CapsuleManager_HandleSpritePress, appMan, HEAP_ID_53);
}

void CapsuleManager_LoadThrownMonSprite(CapsuleAppManager *appMan)
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

static void CapsuleManager_LoadThrownMonAnim(CapsuleAppManager *appMan)
{
    int species;
    int dummy;

    species = Pokemon_GetValue(appMan->pokemon, MON_DATA_SPECIES, NULL);
    dummy = Pokemon_GetNature(appMan->pokemon);

    PokemonSprite_InitAnim(appMan->graphicsMan.pokemonSprite, 1);
    PokemonSprite_LoadAnim(appMan->narc, appMan->graphicsMan.pokemonAnimManager, appMan->graphicsMan.pokemonSprite, species, FACE_FRONT, 0, 0);
}

static void CapsuleManager_ZeroThrownMonScale(CapsuleAppManager *appMan)
{
    PokemonSprite_SetAttribute(appMan->graphicsMan.pokemonSprite, MON_SPRITE_SCALE_X, 0);
    PokemonSprite_SetAttribute(appMan->graphicsMan.pokemonSprite, MON_SPRITE_SCALE_Y, 0);
}

static BOOL ov76_0223DE78(CapsuleAppManager *appMan)
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

static BOOL ov76_0223DEF4(CapsuleAppManager *appMan)
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

void CapsuleManager_SetThrownMonSpriteHidden(CapsuleAppManager *appMan, int value)
{
    PokemonSprite_SetAttribute(appMan->graphicsMan.pokemonSprite, MON_SPRITE_HIDE, value);
}

void CapsuleManager_FreeThrownMonSprite(CapsuleAppManager *appMan)
{
    PokemonSprite_Delete(appMan->graphicsMan.pokemonSprite);
}

static BOOL CapsuleManager_HandleCancelUpdateSeals(CapsuleAppManager *appMan)
{
    switch (appMan->stateID) {
    case CAPSULE_INIT_STATE_ID:
        CapsuleManager_SetSelectedCapsule(appMan, 0);
        CapsuleGraphics_PrintMessage(appMan->graphicsMan.windows, 0xFFFF);
        CapsuleGraphics_InitWindows(appMan);
        CapsuleGraphics_UpdateAllSealCountText(appMan);
        CapsuleGraphics_TaskStart(appMan, 1, 4);
        CapsuleManager_CopyToActiveCapsule(appMan);
        CapsuleManager_GetSealCounts(appMan);
        appMan->graphicsMan.sealsChanged = 0;
        appMan->stateID++;
        break;
    case CAPSULE_FADE_IN_STATE_ID:
        if (CapsuleManager_GetGraphicsTaskResult(appMan) == 1) {
            break;
        }

        PaletteData_StartFade(appMan->graphicsMan.paletteData, 1, 3, 0, 0, 16, 0);
        PaletteData_StartFade(appMan->graphicsMan.paletteData, 4, 0xFFFF, 0, 0, 16, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
        Bg_SetPriority(BG_LAYER_SUB_3, 1);
        CapsuleGraphics_SetPageSpritesDrawFlag(appMan, 1);
        CapsuleGraphics_SetSelectionIndicatorDrawFlags(appMan, 1);
        CapsuleGraphics_SetFontOAMDrawFlag(appMan, 1);
        appMan->stateID++;
        break;
    case CAPSULE_FADE_IN_WAIT_STATE_ID:
        if (PaletteData_GetSelectedBuffersMask(appMan->graphicsMan.paletteData) != 0) {
            break;
        }
        Bg_SetPriority(BG_LAYER_MAIN_3, 1);
        PaletteData_StartFade(appMan->graphicsMan.paletteData, 1, 2, 0, 16, 0, 0);
        appMan->stateID++;
        break;
    case CAPSULE_CAPSULE_SELECTION_STATE_ID:
        if (PaletteData_GetSelectedBuffersMask(appMan->graphicsMan.paletteData) != 0) {
            break;
        }
        CapsuleManager_SetSelectedCapsule(appMan, 1);
        appMan->stateID++;
        break;
    case CAPSULE_CAPSULE_MENU_STATE_ID:
        break;
    case CAPSULE_FADE_OUT_STATE_ID: {
        switch (appMan->throwStateID) {
        case THROW_INIT_GFX_STATE_ID:
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
            PaletteData_StartFade(appMan->graphicsMan.paletteData, 2, 0x80B, 0, 0, 10, 0);
            PaletteData_StartFade(appMan->graphicsMan.paletteData, 8, 0xFFFF, 0, 0, 10, 0);
            CapsuleManager_SetSelectedCapsule(appMan, 0);
            appMan->yesNoResult = 0;
            CapsuleManager_LoadLeadingPokemon(appMan);
            CapsuleManager_LoadThrownMonSprite(appMan);
            CapsuleManager_SetThrownMonSpriteHidden(appMan, 1);
            CapsuleGraphics_PrintMessage(appMan->graphicsMan.windows, 13);
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
            appMan->yesNoResult = 0;
            break;
        case THROW_WAIT_FOR_END_STATE_ID:
            if (ov12_02236374(appMan->graphicsMan.sealEffect) != 1) {
                break;
            }

            if (ov12_02237810(appMan->graphicsMan.ballRotation) == 1) {
                ov76_0223DE78(appMan);
                ov12_022363B4(appMan->graphicsMan.sealEffect);
                CapsuleManager_SetThrownMonSpriteHidden(appMan, 0);
                CapsuleManager_ZeroThrownMonScale(appMan);
                Sound_PlayEffect(SEQ_SE_DP_CUSTOM05_sseq);
                appMan->throwStateID++;
            }
            break;
        case THROW_WAIT_FOR_ROTATION_END_STATE_ID: {
            BOOL v4 = ov76_0223DE78(appMan);

            if (ov12_022377F8(appMan->graphicsMan.ballRotation) != 0) {
                break;
            }

            if (v4 == 0) {
                ov12_0223783C(appMan->graphicsMan.ballRotation);
                GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 0);
                CapsuleManager_LoadThrownMonAnim(appMan);
                appMan->yesNoResult = 0;
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
        case THROW_WAIT_AFTER_ANIMS_END_STATE_ID:
            if ((++appMan->frameCounter) < 30) {
                break;
            }

            appMan->yesNoResult = 0;
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

                CapsuleManager_SetNormalAlpha();
                GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

                appMan->throwStateID++;
            }
            break;
        case THROW_WAIT_FREE_STATE_ID: {
            BOOL v6 = ov76_0223DEF4(appMan);

            if ((ov12_022377F8(appMan->graphicsMan.ballRotation) == 0) && (v6 == 0)) {
                PaletteData_StartFade(appMan->graphicsMan.paletteData, 2, 0x80B, 0, 10, 0, 0);
                PaletteData_StartFade(appMan->graphicsMan.paletteData, 8, 0xFFFF, 0, 10, 0, 0);
                CapsuleManager_SetThrownMonSpriteHidden(appMan, 1);
                CapsuleManager_FreeThrownMonSprite(appMan);
                ov12_0223783C(appMan->graphicsMan.ballRotation);
                appMan->throwStateID++;
            }
        } break;
        default:
            if (PaletteData_GetSelectedBuffersMask(appMan->graphicsMan.paletteData) != 0) {
                break;
            }

            GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 0);
            CapsuleManager_SetSelectedCapsule(appMan, 1);
            appMan->throwStateID = THROW_INIT_GFX_STATE_ID;
            appMan->stateID = CAPSULE_CAPSULE_MENU_STATE_ID;
            CapsuleGraphics_PrintMessage(appMan->graphicsMan.windows, 0xFFFF);
            break;
        }
    } break;
    case CAPSULE_FADE_OUT_WAIT_STATE_ID:
        CapsuleGraphics_PrintMessage(appMan->graphicsMan.windows, 12);

        if (SealPlacement_AnySealsChanged(appMan) == 1) {
            appMan->graphicsMan.sealsChanged = 1;
        }

        SealPlacement_LoadCapsuleSeals(appMan);
        CapsuleGraphics_SetCapsuleSpriteAnim(appMan);

        GameRecords *gameRecords;
        gameRecords = SaveData_GetGameRecords(appMan->appData->saveData);

        GameRecords_IncrementTrainerScore(gameRecords, TRAINER_SCORE_EVENT_UNK_06);

        Pokemon *pokemon;

        if (appMan->capsuleSprites[*appMan->capsuleIndex].pokemonIndex != 0xFF) {
            pokemon = appMan->appData->pokemon[appMan->capsuleSprites[*appMan->capsuleIndex].pokemonIndex];

            Pokemon_SetValue(pokemon, MON_DATA_BALL_CAPSULE, SealCase_GetCapsuleById(appMan->appData->sealCase, *appMan->capsuleIndex));
        }

        appMan->stateID = CAPSULE_EXIT_FADE_OUT_STATE_ID;
        break;
    case CAPSULE_CANCEL_PRESSED_STATE_ID: {
        switch (appMan->cancelStateID) {
        case CANCEL_FADE_IN_STATE_ID:
            if (SealPlacement_AnySealsChanged(appMan) == 0) {
                appMan->stateID = CAPSULE_EXIT_FADE_OUT_STATE_ID;
                break;
            }

            PaletteData_StartFade(appMan->graphicsMan.paletteData, 2, 0x80B, 0, 0, 10, 0);
            PaletteData_StartFade(appMan->graphicsMan.paletteData, 8, 0xFFFF, 0, 0, 10, 0);
            CapsuleManager_SetSelectedCapsule(appMan, 0);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
            appMan->cancelStateID++;
            break;
        case CANCEL_WAIT_MENU_STATE_ID:
            if (PaletteData_GetSelectedBuffersMask(appMan->graphicsMan.paletteData) != 0) {
                break;
            }

            PaletteData_SetAutoTransparent(appMan->graphicsMan.paletteData, FALSE);
            CapsuleGraphics_InitMessageWindow(appMan->graphicsMan.bgConfig, &appMan->graphicsMan.windows[2], CAPSULE_WINDOW_WIDTH, CAPSULE_WINDOW_HEIGHT, 1, 27, 4, CAPSULE_BASE_TILE_1 - MESSAGE_WINDOW_TILE_COUNT);

            YesNoTouchMenuParams yesNoParams;

            yesNoParams.bgConfig = appMan->graphicsMan.bgConfig;
            yesNoParams.bgLayer = BG_LAYER_SUB_0;
            yesNoParams.baseTile = CAPSULE_BASE_TILE_9;
            yesNoParams.palette = 5;
            yesNoParams.tilemapLeft = 25;
            yesNoParams.tilemapTop = 6;

            appMan->graphicsMan.yesNoTouchMenu = YesNoTouchMenu_New(HEAP_ID_53);
            YesNoTouchMenu_InitWithParams(appMan->graphicsMan.yesNoTouchMenu, &yesNoParams);

            CapsuleGraphics_PrintMessage(&appMan->graphicsMan.windows[2], 14);
            appMan->cancelStateID++;
            break;
        case CANCEL_TOGGLE_BG0_STATE_ID:
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
            appMan->cancelStateID++;
        case CANCEL_GET_INPUT_STATE_ID: {
            u32 yesNoInput;
            yesNoInput = YesNoTouchMenu_ProcessInput(appMan->graphicsMan.yesNoTouchMenu);

            switch (yesNoInput) {
            case YES_NO_TOUCH_MENU_YES:
            case YES_NO_TOUCH_MENU_NO:
                appMan->yesNoResult = yesNoInput;
                PaletteData_SetAutoTransparent(appMan->graphicsMan.paletteData, TRUE);
                YesNoTouchMenu_Reset(appMan->graphicsMan.yesNoTouchMenu);
                YesNoTouchMenu_Free(appMan->graphicsMan.yesNoTouchMenu);
                Window_EraseMessageBox(&appMan->graphicsMan.windows[2], 1);
                Window_ClearAndCopyToVRAM(&appMan->graphicsMan.windows[2]);
                Window_Remove(&appMan->graphicsMan.windows[2]);
                appMan->cancelStateID++;
                break;
            case YES_NO_TOUCH_MENU_NOTHING_CHOSEN:
            default:
                break;
            }
        } break;
        case CANCEL_FADE_OUT_STATE_ID:
            PaletteData_StartFade(appMan->graphicsMan.paletteData, 2, 0x80B, 0, 10, 0, 0);
            PaletteData_StartFade(appMan->graphicsMan.paletteData, 8, 0xFFFF, 0, 10, 0, 0);
            appMan->cancelStateID++;
            break;
        case CANCEL_PROCESS_INPUT_STATE_ID:
            if (PaletteData_GetSelectedBuffersMask(appMan->graphicsMan.paletteData) != 0) {
                break;
            }

            switch (appMan->yesNoResult) {
            case YES_NO_TOUCH_MENU_YES:
                CapsuleManager_CopyFromActiveCapsule(appMan);
                CapsuleManager_SetSealCounts(appMan);
                CapsuleGraphics_UpdateAllSealCountText(appMan);
                SealPlacement_FreeInactiveSeals(appMan);
                SealPlacement_UpdateSealsFromCapsule(appMan);
                SealPlacement_DrawActiveSeals(appMan, 1);
                appMan->stateID = CAPSULE_FADE_OUT_WAIT_STATE_ID;
                break;
            case YES_NO_TOUCH_MENU_NO:
                appMan->stateID = CAPSULE_CAPSULE_MENU_STATE_ID;
                break;
            case YES_NO_TOUCH_MENU_NOTHING_CHOSEN:
            default:
                break;
            }

            CapsuleManager_SetSelectedCapsule(appMan, 1);
            appMan->cancelStateID = CANCEL_FADE_IN_STATE_ID;
        }
    } break;
    case CAPSULE_EXIT_FADE_OUT_STATE_ID:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
        PaletteData_StartFade(appMan->graphicsMan.paletteData, 1, 2, 0, 0, 16, 0);
        appMan->stateID++;
        break;
    case CAPSULE_DEINIT_GFX_STATE_ID:

        if (PaletteData_GetSelectedBuffersMask(appMan->graphicsMan.paletteData) != 0) {
            break;
        }

        PaletteData_StartFade(appMan->graphicsMan.paletteData, 1, 1, 0, 16, 0, 0);
        PaletteData_StartFade(appMan->graphicsMan.paletteData, 4, 0xFFFF, 0, 16, 0, 0);
        Bg_SetPriority(BG_LAYER_MAIN_3, 3);
        Bg_SetPriority(BG_LAYER_SUB_3, 3);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        CapsuleGraphics_SetPageSpritesDrawFlag(appMan, 0);
        CapsuleGraphics_SetSelectionIndicatorDrawFlags(appMan, 0);
        CapsuleGraphics_SetFontOAMDrawFlag(appMan, 0);
        CapsuleGraphics_TaskStart(appMan, -1, 4);
        CapsuleManager_SetSelectedCapsule(appMan, 0);
        appMan->stateID++;
        break;
    case CAPSULE_WAIT_EXIT_STATE_ID:
        if (PaletteData_GetSelectedBuffersMask(appMan->graphicsMan.paletteData) != 0) {
            break;
        }

        if (CapsuleManager_GetGraphicsTaskResult(appMan) == 1) {
            break;
        }

        ManagedSprite_SetDrawFlag(appMan->cursor[1], 0);
        CapsuleManager_UpdateStates(appMan, 0, 0xFF, 0);
        CapsuleGraphics_PrintMessage(appMan->graphicsMan.windows, 7);
        CapsuleGraphics_FreeSealCountWindows(appMan);

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
            CapsuleGraphics_UpdateSealNameText(appMan->graphicsMan.windows, sealIndex);
            ManagedSprite_SetPositionXY(appMan->sealRenderInfo[index].sprite, x, y);
            SealPlacement_UpdateSealOamMode(appMan, index);
            SealPlacement_UpdateSealXY(appMan, index);
        } else {
            BOOL valid;

            valid = SealPlacement_SealIsValid(appMan, index);
            SealPlacement_UpdateSealTouchRect(appMan->sealRenderInfo[index].touchScreenRect, appMan->sealRenderInfo[index].sprite, 0);

            if (valid == 0) {
                GiveOrTakeSeal2(appMan->appData->sealCase, appMan->sealRenderInfo[index].type, 1);
                CapsuleGraphics_UpdateAllSealCountText(appMan);
                SealPlacement_FreeSeal(appMan, index);
            }

            Sound_PlayEffect(SEQ_SE_DP_BOX01_sseq);
            appMan->graphicsMan.index = 0xFF;
            CapsuleGraphics_UpdateSealNameText(appMan->graphicsMan.windows, 0xFFFF);
        }
    }

    CapsuleGraphics_Dummy(appMan);
    CapsuleGraphics_TickSelectionIndicator(appMan);
    CapsuleGraphics_TickPokemonSprites(appMan);
    CapsuleGraphics_TickCursor(appMan);

    return 1;
}

static BOOL CapsuleManager_HandleFades(CapsuleAppManager *appMan)
{
    switch (appMan->stateID) {
    case CAPSULE_INIT_STATE_ID:
        appMan->stateID++;
    case CAPSULE_FADE_IN_STATE_ID:
        CapsuleGraphics_FadeOut();
        appMan->stateID++;
        break;
    case CAPSULE_FADE_IN_WAIT_STATE_ID:
        if (IsScreenFadeDone() != 1) {
            break;
        }

        Window_Remove(appMan->graphicsMan.windows);
        CapsuleGraphics_FreeCapsuleSprites(appMan);
        CapsuleGraphics_FreePokemonSprites(appMan);
        CapsuleGraphics_FreeUISprites(appMan);
        CapsuleGraphics_FreeSelectionIndicator(appMan);
        CapsuleGraphics_FreePageSprites(appMan);
        CapsuleMenu_SetAction(appMan->appData, CAPSULE_MENU_GO_TO_PARTY_MENU);

        return 0;
    }

    CapsuleGraphics_TickPokemonSprites(appMan);
    CapsuleGraphics_TickCursor(appMan);

    return 1;
}

void CapsuleManager_AssignCapsuleMon(CapsuleAppManager *appMan, int capsuleIndex)
{
    int index;
    int capsuleID = 0;
    BallCapsule capsule;

    index = appMan->capsules[capsuleIndex].pokemonIndex;

    if (index != 0xFF) {
        Pokemon_SetValue(appMan->appData->pokemon[index], MON_DATA_BALL_CAPSULE_ID, (u8 *)&capsuleID);
    }

    appMan->capsules[capsuleIndex].pokemonIndex = 0xFF;
    CapsuleGraphics_SetCapsuleSpriteAnim(appMan);
}

static BOOL ov76_0223E950(CapsuleAppManager *appMan)
{
    switch (appMan->stateID) {
    case CAPSULE_INIT_STATE_ID:
        CapsuleManager_AssignCapsuleMon(appMan, *appMan->capsuleIndex);
        CapsuleGraphics_PrintMessage(appMan->graphicsMan.windows, 9);
        appMan->stateID++;
        break;
    case CAPSULE_FADE_IN_STATE_ID:
        if (gSystem.pressedKeys & 0xCF3) {
            appMan->stateID++;
        }
        break;
    case CAPSULE_FADE_IN_WAIT_STATE_ID:
        CapsuleManager_UpdateStates(appMan, 0, 0xFF, 0);
        CapsuleGraphics_PrintMessage(appMan->graphicsMan.windows, 7);
        break;
    }

    CapsuleGraphics_TickPokemonSprites(appMan);
    CapsuleGraphics_TickCursor(appMan);

    return 1;
}

static BOOL CapsuleManager_HandleSpritesAndInputs(CapsuleAppManager *appMan)
{
    switch (appMan->stateID) {
    case CAPSULE_INIT_STATE_ID:
        ManagedSprite_SetPriority(appMan->cursor[0], 25);
        ManagedSprite_SetPriority(appMan->cursor[1], 20);
        ManagedSprite_SetAnim(appMan->cursor[0], 1);
        CapsuleGraphics_PrintMessage(appMan->graphicsMan.windows, 10);
        ManagedSprite_SetDrawFlag(appMan->cursor[1], 1);
        appMan->stateID++;
    case CAPSULE_FADE_IN_STATE_ID: {
        BOOL cursorMoved;

        cursorMoved = CapsuleManager_HandleCapsulePadMovement(&(appMan->capsuleIndex[1]));

        if (cursorMoved == 1) {
            CapsuleManager_MoveCursorToCapsule(appMan, 1, 0);

            Sound_PlayEffect(SE_CONFIRM_sseq_3);
        } else if (gSystem.pressedKeys & PAD_BUTTON_A) {
            CapsuleGraphics_SwapCapsules(appMan, *appMan->capsuleIndex, appMan->capsuleIndex[1]);
            CapsuleManager_MoveCursorToCapsule(appMan, 1, 1);
            CapsuleGraphics_PrintMessage(appMan->graphicsMan.windows, 11);
            appMan->stateID = CAPSULE_FADE_IN_WAIT_STATE_ID;
            Sound_PlayEffect(SE_CONFIRM_sseq_3);
        } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
            ManagedSprite_SetDrawFlag(appMan->cursor[1], 0);
            CapsuleManager_MoveCursorToCapsule(appMan, 0, 1);
            appMan->stateID = CAPSULE_CAPSULE_SELECTION_STATE_ID;
            Sound_PlayEffect(SEQ_SE_DP_DECIDE_sseq);
        }
    } break;
    case CAPSULE_FADE_IN_WAIT_STATE_ID:
        if (gSystem.pressedKeys & 0xCF3) {
            appMan->stateID = CAPSULE_CAPSULE_SELECTION_STATE_ID;
        }
        break;
    case CAPSULE_CAPSULE_SELECTION_STATE_ID:
        ManagedSprite_SetPriority(appMan->cursor[0], 20);
        ManagedSprite_SetPriority(appMan->cursor[1], 25);
        CapsuleManager_UpdateStates(appMan, 0, 0xFF, 0);
        ManagedSprite_SetAnim(appMan->cursor[0], 0);
        CapsuleGraphics_PrintMessage(appMan->graphicsMan.windows, 7);
        break;
    }

    CapsuleGraphics_TickPokemonSprites(appMan);
    CapsuleGraphics_TickCursor(appMan);

    return 1;
}

static BOOL CapsuleManager_Dummy(CapsuleAppManager *appMan)
{
    return 0;
}

void CapsuleManager_InitGraphicsPlane(int unused)
{
    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
}

void CapsuleManager_Deinit(int unused)
{
    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
}

void CapsuleManager_InitBgConfig(BgConfig *bgConfig)
{
    GXLayers_DisableEngineALayers();

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

    GraphicsModes graphicsModes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_3D,
    };

    SetAllGraphicsModes(&graphicsModes);

    BgTemplate bgMainTemplates[] = {
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &bgMainTemplates[0], 0);
    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &bgMainTemplates[1], 0);
    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_3, &bgMainTemplates[2], 0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_3);

    G2_SetBG0Priority(1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    BgTemplate bgSubTemplates[] = {
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0, &bgSubTemplates[0], 0);
    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_1, &bgSubTemplates[1], 0);
    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_2, &bgSubTemplates[2], 0);
    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_3, &bgSubTemplates[3], 0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_1);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_2);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_3);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
}

void CapsuleManager_VBlankCallback(void *appMan)
{
    CapsuleAppManager *appMan_dupe = appMan;

    PokemonSpriteManager_UpdateCharAndPltt(appMan_dupe->graphicsMan.pokemonSpriteManager);
    VramTransfer_Process();
    SpriteSystem_TransferOam();
    PaletteData_CommitFadedBuffers(appMan_dupe->graphicsMan.paletteData);
    Bg_RunScheduledUpdates(appMan_dupe->graphicsMan.bgConfig);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}
