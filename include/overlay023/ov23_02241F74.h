#ifndef POKEPLATINUM_OV23_02241F74_H
#define POKEPLATINUM_OV23_02241F74_H

#include "struct_defs/underground.h"

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
    UNDERGROUND_STORED_POS_KEY_GOODS_VENDOR,
    UNDERGROUND_STORED_POS_KEY_TRAPS_VENDOR,
    UNDERGROUND_STORED_POS_KEY_TREASURES_VENDOR,
};

enum UndergroundMenuKeys {
    UNDERGROUND_MENU_KEY_STORE_GOODS = 2,
    UNDERGROUND_MENU_KEY_WITHDRAW_GOODS = 6,
    UNDERGROUND_MENU_KEY_TRAPS = 8,
    UNDERGROUND_MENU_KEY_SPHERES,
    UNDERGROUND_MENU_KEY_GOODS,
    UNDERGROUND_MENU_KEY_TREASURES,
    UNDERGROUND_MENU_KEY_PAY_WITH_SPHERES,
    UNDERGROUND_MENU_KEY_BUY_GOODS,
    UNDERGROUND_MENU_KEY_BUY_TRAPS,
    UNDERGROUND_MENU_KEY_BUY_TREASURES_UNUSED,
    UNDERGROUND_MENU_KEY_SELL_GOODS,
    UNDERGROUND_MENU_KEY_SELL_TRAPS,
    UNDERGROUND_MENU_KEY_SELL_TREASURES,
    UNDERGROUND_MENU_KEY_VENDOR_OPTIONS,
    UNDERGROUND_MENU_KEY_PC_RADAR = 22,
    UNDERGROUND_MENU_KEY_PC,
};

enum MapMarkerAnim {
    MARKER_ANIM_LINK = 0,
    MARKER_ANIM_CURRENT_PLAYER,
    MARKER_ANIM_PINK_DOT_UNUSED,
    MARKER_ANIM_SECRET_BASE,
    MARKER_ANIM_RED_SHINE_UNUSED,
    MARKER_ANIM_BROWN_SHINE_UNUSED,
    MARKER_ANIM_GRAY_SHINE_UNUSED,
    MARKER_ANIM_YELLOW_SHINE_UNUSED,
    MARKER_ANIM_LIGHT_YELLOW_SHINE_UNUSED,
    MARKER_ANIM_SPHERE,
    MARKER_ANIM_GREEN_SHINE_UNUSED,
    MARKER_ANIM_TRAP,
    MARKER_ANIM_MINING_SPOT,
};

#define BIT_TRAPS_FULL             1 << 4
#define BIT_BURIED_SPHERE_IN_FRONT 1 << 5

#define MAX_RADAR_BLIPS 16

typedef Coordinates *(*CoordinatesGetter)(Coordinates *, int);

UndergroundTextPrinter *CommManUnderground_GetCommonTextPrinter(void);
UndergroundTextPrinter *CommManUnderground_GetCaptureFlagTextPrinter(void);
UndergroundTextPrinter *CommManUnderground_GetMiscTextPrinter(void);
UndergroundTextPrinter *CommManUnderground_GetBaseDecorationTextPrinter(void);
UndergroundTextPrinter *CommManUnderground_GetItemNameTextPrinter(void);
void ov23_022421EC(void);
BOOL CommManUnderground_FormatCommonStringWith2TrainerNames(TrainerInfo *trainerInfo1, TrainerInfo *trainerInfo2, int bankEntry, String *dest);
BOOL CommManUnderground_FormatCommonStringWithTrainerName(TrainerInfo *trainerInfo, int index, int bankEntry, String *dest);
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
BOOL CommManUnderground_GetQueuedMessage(String *param0);
SecretBase *ov23_02242E10(SaveData *saveData);
int ov23_02242E28(void);
int ov23_02242E40(void);
BOOL Underground_AreCoordinatesInSecretBase(int x, int z);
int CommManUnderground_GetRadarItemXCoord(int param0);
int CommManUnderground_GetRadarItemZCoord(int param0);
int CommManUnderground_GetRadarItemAnimID(int param0);
void CommManUnderground_DeactivateRadar(void);
void CommManUnderground_SetNormalRadarActive(void);
void CommManUnderground_SetSphereRadarActive(void);
void CommManUnderground_SetTrapRadarActive(void);
void CommManUnderground_SetTreasureRadarActive(void);
void ov23_0224300C(int param0, int param1);
void CommManUnderground_QueueTalkedToVendorMessage(int param0);
void UndergroundMan_SetReturnLog(int param0);
void ov23_022430B8(int param0);
void CommManUnderground_SetStoredPosKey(u16 menuKey);
void CommManUnderground_StoreCursorAndListPos(u16 menuKey, u16 cursorPos, u16 listPos);
u16 CommManUnderground_GetStoredListPos(u16 menuKey);
u16 CommManUnderground_GetStoredCursorPos(u16 menuKey);
void CommManUnderground_ProcessVendorTalkRequest(int param0, int param1, void *param2, void *param3);
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
