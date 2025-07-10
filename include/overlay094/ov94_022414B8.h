#ifndef POKEPLATINUM_OV94_022414B8_H
#define POKEPLATINUM_OV94_022414B8_H

#include "struct_decls/pokedexdata_decl.h"

#include "overlay094/gts_application_state.h"
#include "overlay094/struct_ov94_0223BA88.h"
#include "overlay094/struct_ov94_0223BA88_sub3.h"
#include "overlay094/struct_ov94_02242AAC.h"

#include "bg_window.h"
#include "list_menu.h"
#include "message.h"
#include "string_list.h"
#include "string_template.h"
#include "text.h"

int ov94_022414B8(GTSApplicationState *param0, int param1);
int ov94_02241548(GTSApplicationState *param0, int param1);
int ov94_02241568(GTSApplicationState *param0, int param1);
int ov94_02241B80(GTSPokemonRequirements *param0, int genderRatio);
void ov94_02242158(Window *param0, MessageLoader *param1, int param2, int param3, int param4, TextColor param5);
void ov94_0224218C(Window *param0, MessageLoader *param1, MessageLoader *gtsMessageLoader, int param3, int param4, int param5, TextColor param6);
void ov94_02242204(Window *param0, MessageLoader *gtsMessageLoader, int param2, int param3, int param4, int param5, u32 param6);
void ov94_0224226C(Window *param0, MessageLoader *gtsMessageLoader, int param2, int param3, int param4, u32 param5, int param6, int param7);
void ov94_022422B8(Window *param0, MessageLoader *gtsMessageLoader, int param2, int param3, int param4, u32 param5, int param6);
void ov94_022422D4(MessageLoader *gtsMessageLoader, MessageLoader *param1, StringTemplate *param2, Window param3[], int param4, int param5, int param6);
void ov94_02242368(MessageLoader *gtsMessageLoader, MessageLoader *param1, StringTemplate *param2, Window param3[], int param4, int param5, int param6);
u16 *ov94_Pokedex_Alphabetical(int heapID, int unused, int *pokedexLength);
u8 *ov94_02242548(int param0);
void ov94_022425A8(GTSPokemonListing *param0, GTSApplicationState *param1);
ListMenu *ov94_022426A8(GTSApplicationState *param0, StringList **param1, Window *param2, MessageLoader *gtsMessageLoader);
ListMenu *ov94_022427C0(GTSApplicationState *param0, StringList **param1, Window *param2, MessageLoader *gtsMessageLoader, MessageLoader *param4, GTSApplicationState_sub3 *param5, Pokedex *param6);
ListMenu *ov94_02242840(StringList **param0, Window *param1, MessageLoader *param2);
ListMenu *ov94_022428B0(StringList **param0, Window *param1, MessageLoader *param2, int param3);
void ov94_02242934(GTSPokemonRequirements *param0, int param1, int param2);
int ov94_02242970(int param0, int param1, int param2);
ListMenu *ov94_022429B4(StringList **param0, Window *param1, MessageLoader *param2, MessageLoader *param3);
void ov94_02242A44(GTSApplicationState *param0, int param1);
u32 ov94_02242A6C(ListMenu *param0, u16 *param1);
void ov94_02242AAC(UnkStruct_ov94_02242AAC *param0);
void ov94_02242AC4(UnkStruct_ov94_02242AAC *param0, int param1, int param2, int param3);

#endif // POKEPLATINUM_OV94_022414B8_H
