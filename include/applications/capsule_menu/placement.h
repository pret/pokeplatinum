#ifndef POKEPLATINUM_APPLICATIONS_CAPSULE_MENU_PLACEMENT_H
#define POKEPLATINUM_APPLICATIONS_CAPSULE_MENU_PLACEMENT_H

#include "struct_defs/seal_case.h"

#include "applications/capsule_menu/defs.h"

#include "sprite_system.h"
#include "touch_screen.h"

#define SEAL_OBJ_ID_OFFSET 20000

void SealPlacement_UpdateSealTouchRect(TouchScreenRect *rect, ManagedSprite *sprite, BOOL touchingSprite);
void ov76_0223B1E0(SealAppManager *appMan);
void ov76_0223B208(SealAppManager *appMan);
int SealPlacement_GetTouchedSeal(SealAppManager *appMan, u8 sealIndex);
BOOL SealPlacement_NotMaxSeals(SealAppManager *appMan);
void ov76_0223B314(SealAppManager *appMan, u8 index);
void ov76_0223B36C(SealAppManager *appMan, u8 param1, u8 sealIndex);
void ov76_0223B400(SealAppManager *appMan);
BOOL ov76_0223B52C(SealAppManager *appMan, u8 sealIndex);
BOOL ov76_0223B5C4(SealAppManager *appMan, u32 field, u8 index);
void SealPlacement_FreeInactiveSeals(SealAppManager *appMan);
void SealPlacement_DrawActiveSeals(SealAppManager *appMan, int flag);
BOOL ov76_0223B6C4(SealAppManager *appMan, int index);
void SealPlacement_FreeSeal(SealAppManager *appMan, int sealIndex);
void ov76_0223B758(SealAppManager *appMan, int param1);
BOOL SealPlacement_AnySealsChanged(SealAppManager *appMan);
void SealPlacement_UpdateSealXY(SealAppManager *appMan, int sealIndex);
void SealPlacement_LoadCapsuleSeals(SealAppManager *appMan);
void SealPlacement_GetCapsuleSeals(BallCapsule *capsule, SealAppManager *appMan);

#endif // POKEPLATINUM_APPLICATIONS_CAPSULE_MENU_PLACEMENT_H
