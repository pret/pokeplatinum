#ifndef POKEPLATINUM_UNK_02017728_H
#define POKEPLATINUM_UNK_02017728_H

#include "core_sys.h"

void sub_02017728(void);
void SetMainCallback(Callback cb, void *data);
void DisableHBlank(void);
BOOL SetHBlankCallback(Callback cb, void *data);
void sub_0201789C(void);
void InitGraphics(void);
void *ReadFileToHeap(int heapID, const char *filename);
void ReadFileToBuffer(const char *filename, void **buf);
void sub_02017ACC(void);
void InitKeypadAndTouchpad(void);
void sub_02017B70(int param0);
void SleepLock(u8 param0);
void SleepUnlock(u8 param0);
void ReadKeypadAndTouchpad(void);
void SetAutorepeat(int rate, int delay);
void ResetLock(u8 param0);
void ResetUnlock(u8 param0);
void InitHeapCanary(int param0);
void FreeHeapCanary(void);
BOOL HeapCanaryOK(void);

#endif // POKEPLATINUM_UNK_02017728_H
