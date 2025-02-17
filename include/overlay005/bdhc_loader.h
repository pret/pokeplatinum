#ifndef POKEPLATINUM_OV5_BDHC_LOADER_H
#define POKEPLATINUM_OV5_BDHC_LOADER_H

#include "overlay005/bdhc.h"

#include "narc.h"
#include "sys_task_manager.h"

void BDHCLoader_Load(NARC *narc, const int bdhcSize, BDHC *bdhc, u8 *buffer);
SysTask *BDHCLoader_StartTask(NARC *landDataNARC, const int param1, BDHC *bdhc, int *param3, u8 **buffer, int *param5);
void BDHCLoader_ForceExitTask(SysTask *sysTask);
void BDHCLoader_MarkBDHCNotLoaded(BDHC *bdhc);

BDHC *BDHC_New(void);
void BDHC_Free(BDHC *bdhc);
void BDHC_Reset(BDHC *bdhc);

#endif // POKEPLATINUM_OV5_BDHC_LOADER_H
