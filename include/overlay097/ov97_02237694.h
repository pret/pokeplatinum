#ifndef POKEPLATINUM_OV97_02237694_H
#define POKEPLATINUM_OV97_02237694_H

#include "overlay097/mystery_gift_app.h"
#include "overlay097/struct_ov97_02237808.h"
#include "overlay097/struct_ov97_02237AEC.h"

#include "bg_window.h"
#include "list_menu.h"
#include "mystery_gift.h"
#include "overlay_manager.h"
#include "savedata.h"
#include "sprite.h"

void ov97_02237694(int heapID);
void *ov97_022376C4(ApplicationManager *appMan, int heapID, int param2, int param3);
void ov97_022376FC(BgConfig *param0, int param1, u8 param2, u32 param3, u32 param4);
void ov97_02237784(int param0);
void ov97_02237790(int param0, int param1, int *param2, int param3);
void ov97_022377F0(int *param0);
void ov97_02237808(UnkStruct_ov97_02237808 *param0, Window *param1, int param2, int param3, int param4, int param5);
void ov97_02237858(UnkStruct_ov97_02237808 *param0, int param1, int param2, int param3);
void ov97_02237860(UnkStruct_ov97_02237808 *param0, int param1, int param2);
void ov97_02237868(UnkStruct_ov97_02237808 *param0, int param1, int param2);
int ov97_0223795C(BgConfig *param0, UnkStruct_ov97_02237808 *param1, int param2, int param3, int param4);
int ov97_02237A18(UnkStruct_ov97_02237808 *param0);
void ov97_02237A20(void);
BOOL ov97_02237A60(void);
void ov97_02237A74(void);
UnkStruct_ov97_02237AEC *ov97_02237AEC(void);
void ov97_02237B0C(int param0, int param1, int param2, int param3, int param4, int param5);
void ov97_02237C80(fx32 param0, fx32 param1);
void ov97_02237CA0(void);
void ov97_02237CAC(int param0);
Sprite *ov97_02237D14(int param0, Sprite *param1, int param2, int param3, int param4);
void ov97_02237DA0(void);
u32 ov97_02237E4C(int param0);
void ov97_02238194(BgConfig *param0, WonderCard *param1);
void ov97_0223829C(MysteryGiftEventData *param0, WonderCard *param1, int heapID);
void ov97_02238324(MysteryGiftEventData *param0, WonderCard *param1, int heapID);
void ov97_022383C4(ListMenu *param0, u32 param1, u8 param2);
void ov97_02238400(BOOL param0);
void ov97_02238440(void);
void ov97_0223846C(SaveData *saveData);
int ov97_0223847C(void);
void ov97_022384F4(void);
void ov97_0223850C(void);
int ov97_02238528(void);

#endif // POKEPLATINUM_OV97_02237694_H
