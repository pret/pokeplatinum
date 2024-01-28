#ifndef POKEPLATINUM_UNK_02017728_H
#define POKEPLATINUM_UNK_02017728_H

#include "functypes/funcptr_02017798.h"

void sub_02017728(void);
void SetMainCallback(Callback cb, void * data);
void DisableHBlank(void);
BOOL SetHBlankCallback(Callback cb, void * data);
void sub_0201789C(void);
void InitGraphics(void);
void * ReadFileToHeap(int heapID, const char * filename);
void ReadFileToBuffer(const char * filename, void ** buf);
void sub_02017ACC(void);
void InitKeypadAndTouchpad(void);
void sub_02017B70(int param0);
void sub_02017B7C(u8 param0);
void sub_02017B8C(u8 param0);
void ReadKeypadAndTouchpad(void);
void SetAutorepeat(int rate, int delay);
void sub_02017DE0(u8 param0);
void sub_02017DF0(u8 param0);
void sub_02017E00(int param0);
void sub_02017E2C(void);
BOOL sub_02017E54(void);

#endif // POKEPLATINUM_UNK_02017728_H
