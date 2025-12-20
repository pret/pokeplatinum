#ifndef POKEPLATINUM_OV23_02241F74_H
#define POKEPLATINUM_OV23_02241F74_H

#include "struct_decls/struct_02029894_decl.h"

#include "field/field_system_decl.h"
#include "overlay023/underground_defs.h"
#include "overlay023/underground_text_printer.h"

#include "savedata.h"
#include "string_gf.h"
#include "sys_task_manager.h"
#include "trainer_info.h"

typedef void (*EndSysTaskFunc)(SysTask *sysTask, void *ctx);

enum UndergroundStoredPosKeys {
    UNDERGROUND_STORED_POS_NONE = 0,
    UNDERGROUND_STORED_POS_KEY_PC,
    UNDERGROUND_STORED_POS_KEY_START_MENU,
    UNDERGROUND_STORED_POS_KEY_3,
};

enum UndergroundMenuKeys {
    UNDERGROUND_MENU_KEY_STORE_GOODS = 2,
    UNDERGROUND_MENU_KEY_WITHDRAW_GOODS = 6,
    UNDERGROUND_MENU_KEY_TRAPS = 8,
    UNDERGROUND_MENU_KEY_SPHERES,
    UNDERGROUND_MENU_KEY_GOODS,
    UNDERGROUND_MENU_KEY_TREASURES,
    UNDERGROUND_MENU_KEY_12,
    UNDERGROUND_MENU_KEY_13,
    UNDERGROUND_MENU_KEY_14,
    UNDERGROUND_MENU_KEY_15,
    UNDERGROUND_MENU_KEY_16,
    UNDERGROUND_MENU_KEY_17,
    UNDERGROUND_MENU_KEY_18,
    UNDERGROUND_MENU_KEY_19,
    UNDERGROUND_MENU_KEY_PC_RADAR = 22,
    UNDERGROUND_MENU_KEY_PC
};

#define BIT_TRAPS_FULL             1 << 4
#define BIT_BURIED_SPHERE_IN_FRONT 1 << 5

typedef Coordinates *(*CoordinatesGetter)(Coordinates *, int);

UndergroundTextPrinter *CommManUnderground_GetCommonTextPrinter(void);
UndergroundTextPrinter *CommManUnderground_GetCaptureFlagTextPrinter(void);
UndergroundTextPrinter *CommManUnderground_GetMiscTextPrinter(void);
UndergroundTextPrinter *CommManUnderground_GetDecorateBaseTextPrinter(void);
UndergroundTextPrinter *CommManUnderground_GetItemNameTextPrinter(void);
void ov23_022421EC(void);
BOOL CommManUnderground_FormatStringWith2TrainerNames(TrainerInfo *trainerInfo1, TrainerInfo *trainerInfo2, int bankEntry, String *dest);
BOOL CommManUnderground_FormatStringWithTrainerName(TrainerInfo *trainerInfo, int index, int bankEntry, String *dest);
BOOL ov23_0224240C(int x, int z);
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
BOOL ov23_02242D60(String *param0);
UnkStruct_02029894 *ov23_02242E10(SaveData *saveData);
int ov23_02242E28(void);
int ov23_02242E40(void);
BOOL Underground_AreCoordinatesInSecretBase(int x, int z);
int ov23_02242E78(int param0);
int ov23_02242EE0(int param0);
int ov23_02242F48(int param0);
void ov23_02242FA8(void);
void ov23_02242FBC(void);
void CommManUnderground_SetSphereRadarActive(void);
void CommManUnderground_SetTrapRadarActive(void);
void CommManUnderground_SetTreasureRadarActive(void);
void ov23_0224300C(int param0, int param1);
void ov23_02243020(int param0);
void UndergroundMan_SetReturnLog(int param0);
void ov23_022430B8(int param0);
void CommManUnderground_SetStoredPosKey(u16 menuKey);
void CommManUnderground_StoreCursorAndListPos(u16 menuKey, u16 cursorPos, u16 listPos);
u16 CommManUnderground_GetStoredListPos(u16 menuKey);
u16 CommManUnderground_GetStoredCursorPos(u16 menuKey);
void ov23_022431C4(int param0, int param1, void *param2, void *param3);
void CommManUnderground_SetCurrentSysTask(void *ctx, SysTask *sysTask, EndSysTaskFunc endFunc);
void CommManUnderground_ClearCurrentSysTaskInfo(void);
BOOL ov23_0224321C(void);
BOOL ov23_02243298(int param0);
void ov23_02243360(void);
void ov23_02243390(int param0, int param1, void *param2, void *param3);
int ov23_022433B8(void);
void ov23_022433BC(int param0, int param1, void *param2, void *param3);
int ov23_022433D0(void);

#endif // POKEPLATINUM_OV23_02241F74_H
