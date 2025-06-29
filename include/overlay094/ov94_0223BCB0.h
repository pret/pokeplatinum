#ifndef POKEPLATINUM_OV94_0223BCB0_H
#define POKEPLATINUM_OV94_0223BCB0_H

#include "overlay094/gts_application_state.h"

#include "bg_window.h"
#include "menu.h"
#include "overlay_manager.h"
#include "sprite.h"

int GTSApplication_Init(ApplicationManager *appMan, int *param1);
int GTSApplication_Main(ApplicationManager *appMan, int *param1);
int GTSApplication_Exit(ApplicationManager *appMan, int *param1);
void ov94_0223C300(AffineSpriteListTemplate *param0, GTSApplicationState *param1, SpriteResourcesHeader *param2, int param3);
Menu *ov94_0223C3C0(BgConfig *param0, int param1, int param2);
void ov94_0223C3F4(GTSApplicationState *param0, int param1, int param2);
void ov94_0223C3FC(Sprite *param0, int param1, int param2);
int ov94_GetNetworkStrength(void);
void ov94_Setunk_18Andunk_24(GTSApplicationState *param0, int param1, int param2);
void ov94_0223C4C8(GTSApplicationState *param0);
int ov94_0223C4D4(GTSApplicationState *param0);
void ov94_0223C584(GTSApplicationState *param0);
void ov94_0223C5D8(GTSApplicationState *param0);
void ov94_0223C5F4(GTSApplicationState *param0);

#endif // POKEPLATINUM_OV94_0223BCB0_H
