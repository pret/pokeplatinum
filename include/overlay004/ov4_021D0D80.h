#ifndef POKEPLATINUM_OV4_021D0D80_H
#define POKEPLATINUM_OV4_021D0D80_H

#include "savedata.h"
#include "overlay004/funcptr_ov4_021D1104.h"
#include "overlay004/funcptr_ov4_021D1120.h"
#include "overlay004/funcptr_ov4_021D113C.h"
#include "overlay004/funcptr_ov4_021D1150.h"

#include <dwc.h>

int ov4_021D0D80(SaveData * param0, int param1, int param2, int param3);
void ov4_021D0F68();
int ov4_021D0FEC();
void ov4_021D1104(UnkFuncPtr_ov4_021D1104 param0, UnkFuncPtr_ov4_021D1104 param1);
void ov4_021D1120(UnkFuncPtr_ov4_021D1120 param0, void * param1);
void ov4_021D113C(UnkFuncPtr_ov4_021D113C param0);
void ov4_021D1150(UnkFuncPtr_ov4_021D1150 param0, void * param1);
int ov4_021D116C(u8 * param0, int param1, BOOL param2, u32 param3);
int ov4_021D12D4(int param0);
BOOL ov4_021D1404();
int ov4_021D142C(void * param0, int param1);
int ov4_021D14D4(void * param0, int param1);
int ov4_021D1590(void * param0, int param1);
void * ov4_021D1AA0(DWCAllocType param0, u32 param1, int param2);
void ov4_021D1B04(DWCAllocType param0, void * param1, u32 param2);
int ov4_021D1B5C(void);
int ov4_021D1E30();
void ov4_021D1E74(int param0);
void ov4_021D1F18(void);
int ov4_021D1F3C(int param0, int param1);
int ov4_021D20B0(int param0);
int ov4_021D2134();
void ov4_021D2170(void (* func)(int));
void ov4_021D2184(void);
void ov4_021D2198(void * param0, int param1);
BOOL ov4_021D222C(const void * param0, int param1);
u8 ov4_021D2234(int param0);
int ov4_021D2248(int param0, int param1, BOOL param2);
int ov4_021D2388();
void ov4_021D24D8();
BOOL ov4_021D2544(void);
BOOL ov4_021D254C(void);
int ov4_021D2568(void);
void ov4_021D2584(BOOL param0);
void ov4_021D2598(BOOL param0);
int ov4_021D25C0(void);
void ov4_021D25FC(void);
int ov4_021D2610(void);
void ov4_021D2618(BOOL param0, int param1);
void ov4_021D26EC(BOOL param0);
u8 ov4_021D27E0(void);
void ov4_021D27F4(void);

#endif // POKEPLATINUM_OV4_021D0D80_H
