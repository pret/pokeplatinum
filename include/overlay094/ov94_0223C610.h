#ifndef POKEPLATINUM_OV94_0223C610_H
#define POKEPLATINUM_OV94_0223C610_H

#include "overlay094/gts_application_state.h"

#include "bg_window.h"
#include "message.h"

int GTSApplication_MainMenu_Init(GTSApplicationState *param0, int param1);
int ov94_0223C6D4(GTSApplicationState *param0, int param1);
int ov94_0223C6F4(GTSApplicationState *param0, int param1);
void ov94_GTS_MainMenu_RenderButton(Window *param0, MessageLoader *gtsMessageLoader, int param2, u16 param3);
void ov94_0223D068(GTSApplicationState *param0);

#endif // POKEPLATINUM_OV94_0223C610_H
