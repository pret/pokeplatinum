#ifndef POKEPLATINUM_OV94_0223D0C4_H
#define POKEPLATINUM_OV94_0223D0C4_H

#include "overlay094/gts_application_state.h"
#include "overlay094/struct_ov94_0223BA88_sub2.h"

#include "bg_window.h"
#include "message.h"
#include "pokemon.h"
#include "string_template.h"

int ov94_0223D0C4(GTSApplicationState *param0, int param1);
int ov94_0223D19C(GTSApplicationState *param0, int param1);
int ov94_0223D1B0(GTSApplicationState *param0, int param1);
void ov94_0223D910(MessageLoader *param0, MessageLoader *param1, StringTemplate *param2, Window param3[], BoxPokemon *boxMon, UnkStruct_ov94_0223BA88_sub2 *param5);
void ov94_0223DA78(MessageLoader *param0, Window param1[], u16 *param2, Pokemon *param3, Window param4[]);
void ov94_0223DB2C(Pokemon *param0);

#endif // POKEPLATINUM_OV94_0223D0C4_H
