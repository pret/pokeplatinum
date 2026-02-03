#ifndef POKEPLATINUM_UNDERGROUND_MANAGER_H
#define POKEPLATINUM_UNDERGROUND_MANAGER_H

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

#define FLAG_TRAPS_FULL             (1 << 4)
#define FLAG_BURIED_SPHERE_IN_FRONT (1 << 5)

#define MAX_RADAR_BLIPS 16

typedef Coordinates *(*CoordinatesGetter)(Coordinates *, int);

UndergroundTextPrinter *UndergroundMan_GetCommonTextPrinter(void);
UndergroundTextPrinter *UndergroundMan_GetCaptureFlagTextPrinter(void);
UndergroundTextPrinter *UndergroundMan_GetMiscTextPrinter(void);
UndergroundTextPrinter *UndergroundMan_GetBaseDecorationTextPrinter(void);
UndergroundTextPrinter *UndergroundMan_GetItemNameTextPrinter(void);
void UndergroundMan_RemovePrinters(void);
BOOL UndergroundMan_FormatCommonStringWith2TrainerNames(TrainerInfo *trainerInfo1, TrainerInfo *trainerInfo2, int bankEntry, String *dest);
BOOL UndergroundMan_FormatCommonStringWithTrainerName(TrainerInfo *trainerInfo, int index, int bankEntry, String *dest);
BOOL UndergroundMan_AreCoordinatesOccupied(int x, int z);
BOOL UndergroundMan_CheckForTouchInput(void);
void UndergroundMan_ProcessTouchInput(int netID, int unused1, void *data, void *unused3);
void UndergroundMan_ProcessTouchRadarTrapResults(int unused0, int size, void *data, void *unused3);
void UndergroundMan_ProcessTouchRadarMiningSpotResults(int unused0, int size, void *data, void *unused3);
int UndergroundMan_CalcCoordsIndexGet(Coordinates *coordinates);
int UndergroundMan_CalcCoordsIndexInsert(Coordinates *coordinates);
void UndergroundMan_InitCoordsOrderingState(int orderedArrayLength, CoordinatesGetter coordinatesGetter);
void UndergroundMan_OpenMenu(void);
void UndergroundMan_ProgressInteractCooldown(void);
void UndergroundMan_ProcessInteract(u8 flags);
int CommPacketSizeOf_InteractEvent(void);
void UndergroundMan_ProcessInteractEvent(int netID, int unused1, void *data, void *unused3);
void UndergroundMan_Process(void);
void UndergroundMan_InitAllResources(FieldSystem *fieldSystem);
void UndergroundMan_PauseResources(void);
void UndergroundMan_UnpauseResources(void);
void UndergroundMan_FreeAllResources(void);
void UndergroundMan_ResetResources(FieldSystem *fieldSystem);
BOOL UndergroundMan_GetQueuedMessage(String *dest);
SecretBase *UndergroundMan_GetCurrentOccupiedSecretBase(SaveData *saveData);
int UndergroundMan_GetSecretBaseXCoordinate(void);
int UndergroundMan_GetSecretBaseZCoordinate(void);
BOOL UndergroundMan_AreCoordinatesInSecretBase(int x, int z);
int UndergroundMan_GetRadarItemXCoord(int index);
int UndergroundMan_GetRadarItemZCoord(int index);
int UndergroundMan_GetRadarItemAnimID(int index);
void UndergroundMan_DeactivateRadar(void);
void UndergroundMan_SetNormalRadarActive(void);
void UndergroundMan_SetSphereRadarActive(void);
void UndergroundMan_SetTrapRadarActive(void);
void UndergroundMan_SetTreasureRadarActive(void);
void UndergroundMan_SetLinkTalkedTo(int netID, int targetNetID);
void UndergroundMan_QueueTalkedToVendorMessage(int netID);
void UndergroundMan_SetLeftUndergroundMessage(int netID);
void UndergroundMan_SetPlayerLeft(int netID);
void UndergroundMan_SetStoredPosKey(u16 menuKey);
void UndergroundMan_StoreCursorAndListPos(u16 menuKey, u16 cursorPos, u16 listPos);
u16 UndergroundMan_GetStoredListPos(u16 menuKey);
u16 UndergroundMan_GetStoredCursorPos(u16 menuKey);
void UndergroundMan_ProcessVendorTalkRequest(int unused0, int unused1, void *data, void *unused3);
void UndergroundMan_SetCurrentSysTask(void *ctx, SysTask *sysTask, EndSysTaskFunc endFunc);
void UndergroundMan_ClearCurrentSysTaskInfo(void);
BOOL UndergroundMan_ForceEndCurrentSysTask(void);
BOOL UndergroundMan_ShouldFieldSystemBeResumed(int netID);
void UndergroundMan_SendPlayerState(void);
void UndergroundMan_ProcessPlayerState(int netID, int unused1, void *data, void *unused3);
int CommPacketSizeOf_UndergroundPlayerState(void);
void ov23_022433BC(int netID, int unused1, void *unused2, void *unused3);

#endif // POKEPLATINUM_UNDERGROUND_MANAGER_H
