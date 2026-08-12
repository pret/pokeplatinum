#ifndef POKEPLATINUM_APPLICATIONS_CAPSULE_MENU_MANAGER_H
#define POKEPLATINUM_APPLICATIONS_CAPSULE_MENU_MANAGER_H

#include "struct_defs/seal_case.h"

#include "applications/capsule_menu/defs.h"

#include "bg_window.h"
#include "narc.h"
#include "pokemon.h"
#include "sprite_system.h"
#include "touch_screen.h"

#define SEAL_INIT_STATE_ID              0
#define SEAL_FADE_IN_STATE_ID           1
#define SEAL_FADE_IN_WAIT_STATE_ID      2
#define SEAL_CAPSULE_SELECTION_STATE_ID 3
#define SEAL_CAPSULE_MENU_STATE_ID      4
#define SEAL_FADE_OUT_STATE_ID          5
#define SEAL_FADE_OUT_WAIT_STATE_ID     6

typedef int (*SealMenuCallback)(SealAppManager *);

void SealManager_CopyToActiveCapsule(SealAppManager *appMan);
void SealManager_CopyFromActiveCapsule(SealAppManager *appMan);
void SealManager_GetSealCounts(SealAppManager *appMan);
void SealManager_SetSealCounts(SealAppManager *appMan);
void SealManager_SetNormalAlpha(void);
void ov76_0223D3CC(SealAppManager *appMan);
int SealManager_AnySealsOnCapsule(BallCapsule *capsule);
int ov76_0223D45C(SealAppManager *appMan, int index);
BOOL ov76_0223D550(SealAppManager *appMan);
void ov76_0223D94C(ManagedSprite *sprite, int field);
void SealManager_HandleSpritePress(u32 field, enum TouchScreenButtonState touchScreenState, void *appMan);
BOOL ov76_0223DCB0(SealAppManager *appMan);
void SealManager_SetSelectedCapsule(SealAppManager *appMan, BOOL value);
void SealManager_InitTouchRects(SealAppManager *appMan);
void SealManager_LoadThrownMonSprite(SealAppManager *appMan);
void SealManager_SetThrownMonSpriteHidden(SealAppManager *appMan, int value);
void SealManager_FreeThrownMonSprite(SealAppManager *appMan);
void SealManager_AssignCapsuleMon(SealAppManager *appMan, int capsuleIndex);
void SealManager_InitGraphicsPlane(int unused);
void SealManager_Deinit(int unused);
void SealManager_InitBgConfig(BgConfig *bgConfig);
void SealManager_VBlankCallback(void *appMan);

#endif // POKEPLATINUM_APPLICATIONS_CAPSULE_MENU_MANAGER_H
