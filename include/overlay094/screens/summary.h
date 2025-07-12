#ifndef POKEPLATINUM_OV94_0223D0C4_H
#define POKEPLATINUM_OV94_0223D0C4_H

#include "overlay094/gts_application_state.h"
#include "overlay094/struct_ov94_0223BA88_sub2.h"

#include "bg_window.h"
#include "message.h"
#include "pokemon.h"
#include "string_template.h"

int GTSApplication_Summary_Init(GTSApplicationState *param0, int param1);
int GTSApplication_Summary_Main(GTSApplicationState *param0, int param1);
int GTSApplication_Summary_Exit(GTSApplicationState *param0, int param1);
void ov94_0223D910(MessageLoader *param0, MessageLoader *param1, StringTemplate *param2, Window param3[], BoxPokemon *boxMon, GTSPokemonCriteria *param5);
void ov94_0223DA78(MessageLoader *param0, Window param1[], u16 *param2, Pokemon *param3, Window param4[]);
void ov94_0223DB2C(Pokemon *param0);

#endif // POKEPLATINUM_OV94_0223D0C4_H
