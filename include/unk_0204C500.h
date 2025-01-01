#ifndef POKEPLATINUM_UNK_0204C500_H
#define POKEPLATINUM_UNK_0204C500_H

#include "field_script_context.h"

enum CATCHING_SHOW_POINTS_CATEGORY {
    CATCHING_POINTS = 0,
    TIME_POINTS,
    TYPE_POINTS,
    TOTAL_POINTS
};

BOOL ScrCmd_253(ScriptContext *param0);
BOOL ScrCmd_254(ScriptContext *param0);
BOOL ScrCmd_255(ScriptContext *param0);
BOOL ScrCmd_CalcCatchingShowPoints(ScriptContext *ctx);

#endif // POKEPLATINUM_UNK_0204C500_H
