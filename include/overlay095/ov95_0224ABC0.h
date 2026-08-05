#ifndef POKEPLATINUM_OV95_0224ABC0_H
#define POKEPLATINUM_OV95_0224ABC0_H

#include "overlay095/ov95_02246C20.h"

void *TradePokemonRevealPhase_New(TradeSequenceData *sequenceData);
void TradePokemonRevealPhase_Free(void *param);
BOOL TradePokemonRevealPhase_Run(void *param, int *state);

#endif // POKEPLATINUM_OV95_0224ABC0_H
