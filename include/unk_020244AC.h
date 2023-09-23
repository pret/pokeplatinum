#ifndef POKEPLATINUM_UNK_020244AC_H
#define POKEPLATINUM_UNK_020244AC_H

#include "struct_decls/struct_021C0794_decl.h"

SaveData * sub_020244AC(void);
SaveData * sub_020245A4(void);
void * SaveData_Get(SaveData * param0, int param1);
const void * sub_020245E0(const SaveData * param0, int param1);
BOOL sub_020245E8(SaveData * param0);
BOOL sub_020246A8(SaveData * param0);
int sub_020246E0(SaveData * param0);
int sub_02024760(SaveData * param0, int param1);
void sub_0202479C(SaveData * param0);
BOOL sub_020247B8(const SaveData * param0);
u32 sub_020247BC(const SaveData * param0);
BOOL sub_020247C0(const SaveData * param0);
BOOL sub_020247C4(const SaveData * param0);
BOOL sub_020247C8(SaveData * param0);
BOOL sub_020247E0(const SaveData * param0);
BOOL sub_02024800(const SaveData * param0);
void sub_02024804(void);
void sub_02024814(SaveData * param0, int param1);
int sub_02024828(SaveData * param0);
void sub_02024850(SaveData * param0);
u16 sub_0202486C(const SaveData * param0, const void * param1, u32 param2);
int sub_020251A4(int param0);
void sub_02025340(SaveData * param0);
int SaveDataExtra_Save(const SaveData * param0, int param1, void * param2);
int SaveDataExtra_SaveMirror(SaveData * param0, int param1, void * param2);
void * SaveDataExtra_Get(SaveData * param0, int param1, int param2, int * param3);
void * SaveDataExtra_Mirror(SaveData * param0, int param1, int param2, int * param3, BOOL * param4);
BOOL sub_02025A3C(void);
BOOL sub_02025A9C(u32 param0, void * param1, u32 param2);
BOOL sub_02025AC0(u32 param0, void * param1, u32 param2);
BOOL SaveData_CRC(int param0);
void sub_02025C84(int param0);

#endif // POKEPLATINUM_UNK_020244AC_H
