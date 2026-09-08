#ifndef POKEPLATINUM_APPLICATIONS_CAPSULE_MENU_PLACEMENT_H
#define POKEPLATINUM_APPLICATIONS_CAPSULE_MENU_PLACEMENT_H

#include "struct_defs/seal_case.h"

#include "applications/capsule_menu/defs.h"

#include "sprite_system.h"
#include "touch_screen.h"

void SealPlacement_UpdateSealTouchRect(TouchScreenRect *rect, ManagedSprite *sprite, BOOL touchingSprite);
void SealPlacement_OffsetSeals(CapsuleAppManager *appMan);
void SealPlacement_UpdateSealsFromCapsule(CapsuleAppManager *appMan);
int SealPlacement_GetTouchedSeal(CapsuleAppManager *appMan, u8 sealIndex);
BOOL SealPlacement_NotMaxSeals(CapsuleAppManager *appMan);
void SealPlacement_SetSealRenderPriorities(CapsuleAppManager *appMan, u8 index);
void SealPlacement_LoadSeal(CapsuleAppManager *appMan, u8 type, u8 sealIndex);
void SealPlacement_UpdateSeals(CapsuleAppManager *appMan);
BOOL SealPlacement_InitSeal(CapsuleAppManager *appMan, u8 sealIndex);
BOOL SealPlacement_HandleTouchscreen(CapsuleAppManager *appMan, u32 touchscreenState, u8 index);
void SealPlacement_FreeInactiveSeals(CapsuleAppManager *appMan);
void SealPlacement_DrawActiveSeals(CapsuleAppManager *appMan, int flag);
BOOL SealPlacement_SealIsValid(CapsuleAppManager *appMan, int index);
void SealPlacement_FreeSeal(CapsuleAppManager *appMan, int sealIndex);
void SealPlacement_UpdateSealOamMode(CapsuleAppManager *appMan, int param1);
BOOL SealPlacement_AnySealsChanged(CapsuleAppManager *appMan);
void SealPlacement_UpdateSealXY(CapsuleAppManager *appMan, int sealIndex);
void SealPlacement_LoadCapsuleSeals(CapsuleAppManager *appMan);
void SealPlacement_GetCapsuleSeals(BallCapsule *capsule, CapsuleAppManager *appMan);

#endif // POKEPLATINUM_APPLICATIONS_CAPSULE_MENU_PLACEMENT_H
