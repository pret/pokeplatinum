#ifndef POKEPLATINUM_APPLICATIONS_CAPSULE_MENU_MANAGER_H
#define POKEPLATINUM_APPLICATIONS_CAPSULE_MENU_MANAGER_H

#include "struct_defs/seal_case.h"

#include "applications/capsule_menu/defs.h"

#include "bg_window.h"
#include "narc.h"
#include "pokemon.h"
#include "sprite_system.h"
#include "touch_screen.h"

#define CAPSULE_INIT_STATE_ID              0
#define CAPSULE_FADE_IN_STATE_ID           1
#define CAPSULE_FADE_IN_WAIT_STATE_ID      2
#define CAPSULE_CAPSULE_SELECTION_STATE_ID 3
#define CAPSULE_CAPSULE_MENU_STATE_ID      4
#define CAPSULE_FADE_OUT_STATE_ID          5
#define CAPSULE_FADE_OUT_WAIT_STATE_ID     6
#define CAPSULE_CANCEL_PRESSED_STATE_ID    7
#define CAPSULE_EXIT_FADE_OUT_STATE_ID     8
#define CAPSULE_DEINIT_GFX_STATE_ID        9
#define CAPSULE_WAIT_EXIT_STATE_ID         10

typedef int (*SealMenuCallback)(CapsuleAppManager *);

void CapsuleManager_CopyToActiveCapsule(CapsuleAppManager *appMan);
void CapsuleManager_CopyFromActiveCapsule(CapsuleAppManager *appMan);
void CapsuleManager_GetSealCounts(CapsuleAppManager *appMan);
void CapsuleManager_SetSealCounts(CapsuleAppManager *appMan);
void CapsuleManager_SetNormalAlpha(void);
void CapsuleManager_LoadLeadingPokemon(CapsuleAppManager *appMan);
int CapsuleManager_AnySealsOnCapsule(BallCapsule *capsule);
int CapsuleManager_CapsuleSelectionField(CapsuleAppManager *appMan, int index);
BOOL CapsuleManager_CallFunction(CapsuleAppManager *appMan);
void CapsuleManager_SetUIAnimationFromTouch(ManagedSprite *sprite, int touchscreenState);
void CapsuleManager_HandleSpritePress(u32 field, enum TouchScreenButtonState touchScreenState, void *appMan);
BOOL CapsuleManager_GetGraphicsTaskResult(CapsuleAppManager *appMan);
void CapsuleManager_SetSelectedCapsule(CapsuleAppManager *appMan, BOOL value);
void CapsuleManager_InitTouchRects(CapsuleAppManager *appMan);
void CapsuleManager_LoadThrownMonSprite(CapsuleAppManager *appMan);
void CapsuleManager_SetThrownMonSpriteHidden(CapsuleAppManager *appMan, int value);
void CapsuleManager_FreeThrownMonSprite(CapsuleAppManager *appMan);
void CapsuleManager_AssignCapsuleMon(CapsuleAppManager *appMan, int capsuleIndex);
void CapsuleManager_InitGraphicsPlane(int unused);
void CapsuleManager_Deinit(int unused);
void CapsuleManager_InitBgConfig(BgConfig *bgConfig);
void CapsuleManager_VBlankCallback(void *appMan);

#endif // POKEPLATINUM_APPLICATIONS_CAPSULE_MENU_MANAGER_H
