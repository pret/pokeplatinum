#ifndef POKEPLATINUM_APPLICATIONS_CAPSULE_MENU_PLACEMENT_H
#define POKEPLATINUM_APPLICATIONS_CAPSULE_MENU_PLACEMENT_H

#include "struct_defs/seal_case.h"

#include "applications/capsule_menu/defs.h"

#include "sprite_system.h"
#include "touch_screen.h"

void SealPlacement_UpdateSealTouchRect(TouchScreenRect *rect, ManagedSprite *sprite, BOOL touchingSprite);
void ov76_0223B1E0(SealAppManager *appMan);
void SealPlacement_UpdateSealsFromCapsule(SealAppManager *appMan);
int SealPlacement_GetTouchedSeal(SealAppManager *appMan, u8 sealIndex);
BOOL SealPlacement_NotMaxSeals(SealAppManager *appMan);
void SealPlacement_SetSealRenderPriorities(SealAppManager *appMan, u8 index);
void SealPlacement_LoadSeal(SealAppManager *appMan, u8 type, u8 sealIndex);
void ov76_0223B400(SealAppManager *appMan);
BOOL SealPlacement_InitSeal(SealAppManager *appMan, u8 sealIndex);
BOOL SealPlacement_HandleTouchscreen(SealAppManager *appMan, u32 touchscreenState, u8 index);
void SealPlacement_FreeInactiveSeals(SealAppManager *appMan);
void SealPlacement_DrawActiveSeals(SealAppManager *appMan, int flag);
BOOL SealPlacement_SealIsValid(SealAppManager *appMan, int index);
void SealPlacement_FreeSeal(SealAppManager *appMan, int sealIndex);
void SealPlacement_UpdateSealOamMode(SealAppManager *appMan, int param1);
BOOL SealPlacement_AnySealsChanged(SealAppManager *appMan);
void SealPlacement_UpdateSealXY(SealAppManager *appMan, int sealIndex);
void SealPlacement_LoadCapsuleSeals(SealAppManager *appMan);
void SealPlacement_GetCapsuleSeals(BallCapsule *capsule, SealAppManager *appMan);

#endif // POKEPLATINUM_APPLICATIONS_CAPSULE_MENU_PLACEMENT_H
