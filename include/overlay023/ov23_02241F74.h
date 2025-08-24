#ifndef POKEPLATINUM_OV23_02241F74_H
#define POKEPLATINUM_OV23_02241F74_H

#include "struct_decls/struct_02029894_decl.h"

#include "field/field_system_decl.h"
#include "overlay023/funcptr_ov23_022431EC.h"
#include "overlay023/underground_defs.h"
#include "overlay023/underground_text_printer.h"

#include "savedata.h"
#include "strbuf.h"
#include "sys_task_manager.h"
#include "trainer_info.h"

typedef Coordinates *(*CoordinatesGetter)(Coordinates *, int);

UndergroundTextPrinter *CommManUnderground_GetCommonTextPrinter(void);
UndergroundTextPrinter *CommManUnderground_GetCaptureFlagTextPrinter(void);
UndergroundTextPrinter *CommManUnderground_GetMiscTextPrinter(void);
UndergroundTextPrinter *CommManUnderground_GetDecorateBaseTextPrinter(void);
UndergroundTextPrinter *CommManUnderground_GetItemNameTextPrinter(void);
void ov23_022421EC(void);
BOOL ov23_0224223C(TrainerInfo *param0, TrainerInfo *param1, int param2, Strbuf *param3);
BOOL ov23_022422A8(TrainerInfo *param0, int param1, int param2, Strbuf *param3);
BOOL ov23_0224240C(int param0, int param1);
BOOL ov23_02242458(void);
void ov23_022425F8(int param0, int param1, void *param2, void *param3);
void ov23_02242624(int param0, int param1, void *param2, void *param3);
void ov23_02242654(int param0, int param1, void *param2, void *param3);
int Underground_CalculateCoordinatesIndexGet(Coordinates *coordinates);
int Underground_CalculateCoordinatesIndexInsert(Coordinates *coordinates);
void Underground_InitCoordinatesOrderingState(int orderedArrayLength, CoordinatesGetter coordinatesGetter);
void ov23_022427F8(void);
void ov23_02242814(void);
void ov23_02242830(u8 param0);
int ov23_022428D4(void);
void ov23_022428D8(int param0, int param1, void *param2, void *param3);
void ov23_02242B14(void);
void ov23_02242BC0(FieldSystem *fieldSystem);
void ov23_02242C78(void);
void ov23_02242CB4(void);
void ov23_02242D08(void);
void ov23_02242D44(FieldSystem *fieldSystem);
BOOL ov23_02242D60(Strbuf *param0);
UnkStruct_02029894 *ov23_02242E10(SaveData *saveData);
int ov23_02242E28(void);
int ov23_02242E40(void);
BOOL Underground_AreCoordinatesInSecretBase(int x, int z);
int ov23_02242E78(int param0);
int ov23_02242EE0(int param0);
int ov23_02242F48(int param0);
void ov23_02242FA8(void);
void ov23_02242FBC(void);
void ov23_02242FD0(void);
void ov23_02242FE4(void);
void ov23_02242FF8(void);
void ov23_0224300C(int param0, int param1);
void ov23_02243020(int param0);
void UndergroundMan_SetReturnLog(int param0);
void ov23_022430B8(int param0);
void ov23_022430D0(u16 param0);
void ov23_022430E0(u16 param0, u16 param1, u16 param2);
u16 ov23_02243154(u16 param0);
u16 ov23_0224318C(u16 param0);
void ov23_022431C4(int param0, int param1, void *param2, void *param3);
void ov23_022431EC(void *param0, SysTask *param1, UnkFuncPtr_ov23_022431EC param2);
void ov23_02243204(void);
BOOL ov23_0224321C(void);
BOOL ov23_02243298(int param0);
void ov23_02243360(void);
void ov23_02243390(int param0, int param1, void *param2, void *param3);
int ov23_022433B8(void);
void ov23_022433BC(int param0, int param1, void *param2, void *param3);
int ov23_022433D0(void);

#endif // POKEPLATINUM_OV23_02241F74_H
