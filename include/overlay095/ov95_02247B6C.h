#ifndef POKEPLATINUM_OV95_02247B6C_H
#define POKEPLATINUM_OV95_02247B6C_H

#include "overlay095/ov95_02246C20.h"

void *TradeSendPhase_New(TradeSequenceData *sequenceData);
void TradeSendPhase_Free(void *param);
BOOL TradeSendPhase_Run(void *param, int *state);

#endif // POKEPLATINUM_OV95_02247B6C_H
