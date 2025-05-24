#ifndef POKEPLATINUM_OV96_0223B6A0_H
#define POKEPLATINUM_OV96_0223B6A0_H

#include "overlay096/struct_ov96_0223BF40_decl.h"

#include "bg_window.h"
#include "menu.h"
#include "overlay_manager.h"
#include "sprite.h"

int ov96_0223B6A0(ApplicationManager *appMan, int *param1);
int ov96_0223B7F8(ApplicationManager *appMan, int *param1);
int ov96_0223B8CC(ApplicationManager *appMan, int *param1);
void ov96_0223BAE0(AffineSpriteListTemplate *param0, UnkStruct_ov96_0223BF40 *param1, SpriteResourcesHeader *param2, int param3);
Menu *ov96_0223BBC8(BgConfig *param0, int param1, int param2);
void ov96_0223BBFC(UnkStruct_ov96_0223BF40 *param0, int param1, int param2);
int ov96_0223BC50(void);
void ov96_0223BC5C(UnkStruct_ov96_0223BF40 *param0, int param1, int param2);

#endif // POKEPLATINUM_OV96_0223B6A0_H
