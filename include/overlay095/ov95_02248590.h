#ifndef POKEPLATINUM_OV95_02248590_H
#define POKEPLATINUM_OV95_02248590_H

#include "overlay095/ov95_02246C20.h"

void *TradeTubePhase_New(TradeSequenceData *sequenceData);
void TradeTubePhase_Free(void *param);
BOOL TradeTubePhase_Run(void *param, int *state);

#endif // POKEPLATINUM_OV95_02248590_H
