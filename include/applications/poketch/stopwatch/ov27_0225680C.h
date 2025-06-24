#ifndef POKEPLATINUM_OV27_0225680C_H
#define POKEPLATINUM_OV27_0225680C_H

#include "applications/poketch/stopwatch/struct_ov27_0225680C_1.h"
#include "applications/poketch/stopwatch/struct_ov27_0225680C_decl.h"

#include "bg_window.h"

BOOL ov27_0225680C(PoketchStopwatchGraphics **param0, const PoketchStopwatchGraphics_1 *param1, BgConfig *param2);
void PoketchStopwatchGraphics_Free(PoketchStopwatchGraphics *param0);
void PoketchStopwatchGraphics_StartTask(PoketchStopwatchGraphics *param0, u32 param1);
BOOL PoketchStopwatchGraphics_TaskIsNotActive(PoketchStopwatchGraphics *param0, u32 param1);
BOOL PoketchStopwatchGraphics_NoActiveTasks(PoketchStopwatchGraphics *param0);

#endif // POKEPLATINUM_OV27_0225680C_H
