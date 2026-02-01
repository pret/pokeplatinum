#ifndef POKEPLATINUM_UNDERGROUND_TOP_SCREEN_H
#define POKEPLATINUM_UNDERGROUND_TOP_SCREEN_H

#include "field/field_system_decl.h"
#include "overlay023/struct_underground_top_screen_context_decl.h"

UndergroundTopScreenContext *UndergroundTopScreen_StartTask(FieldSystem *fieldSystem);
void UndergroundTopScreen_EndTask(UndergroundTopScreenContext *ctx);

#endif // POKEPLATINUM_UNDERGROUND_TOP_SCREEN_H
