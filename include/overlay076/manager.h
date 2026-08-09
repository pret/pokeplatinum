#ifndef POKEPLATINUM_OV76_MANAGER_H
#define POKEPLATINUM_OV76_MANAGER_H

#include "struct_defs/seal_case.h"

#include "overlay076/defs.h"
#include "overlay076/struct_ov76_0223DD88_sub1.h"
#include "overlay076/struct_ov76_0223DD88_sub3.h"
#include "overlay076/unk_0223B140.h"

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

void ov76_0223D338(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223D350(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223D368(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223D384(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223D3A0(void);
void ov76_0223D3CC(UnkStruct_ov76_0223DE00 *param0);
int ov76_0223D430(BallCapsule *param0);
int ov76_0223D45C(UnkStruct_ov76_0223DE00 *param0, int param1);
BOOL ov76_0223D550(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223D94C(ManagedSprite *param0, int param1);
void ov76_0223DA34(u32 param0, enum TouchScreenButtonState param1, void *param2);
BOOL ov76_0223DCB0(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223DCB8(UnkStruct_ov76_0223DE00 *param0, BOOL param1);
void ov76_0223DCC0(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223DD88(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223DE00(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223DF70(UnkStruct_ov76_0223DE00 *param0, int param1);
void ov76_0223DF84(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223E91C(UnkStruct_ov76_0223DE00 *param0, int param1);
void ov76_0223EB20(int unused);
void ov76_0223EB54(int param0);
void ov76_0223EB64(BgConfig *param0);
void ov76_0223ECB0(void *param0);

#endif // POKEPLATINUM_OV76_MANAGER_H
