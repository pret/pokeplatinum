#ifndef POKEPLATINUM_OV95_0224A390_H
#define POKEPLATINUM_OV95_0224A390_H

#include "overlay095/ov95_02246C20.h"

void *ReceiveBall_New(TradeSequenceData *sequenceData);
void ReceiveBall_Free(void *param);
BOOL ReceiveBall_Run(void *param, int *state);

#endif // POKEPLATINUM_OV95_0224A390_H
