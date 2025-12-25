#ifndef POKEPLATINUM_UNDERGROUND_SECRET_BASES_H
#define POKEPLATINUM_UNDERGROUND_SECRET_BASES_H

#include "struct_defs/underground.h"

#include "field/field_system_decl.h"
#include "overlay023/underground_defs.h"

#include "savedata.h"
#include "string_gf.h"

#define SECRET_BASE_WIDTH 32
#define SECRET_BASE_DEPTH 32

void SecretBasesEnv_Init(void *dest, FieldSystem *fieldSystem);
void SecretBases_LoadCurrentPlayerBase(FieldSystem *fieldSystem);
void SecretBases_DisableBaseEntranceGraphics(void);
void SecretBases_EnableBaseEntranceGraphics(void);
void SecretBasesEnv_Free(void);
void SecretBases_ResetAllBaseInfo(void);
void SecretBases_ClearAllBaseInfo(void);
int SecretBasesEnv_Size(void);
void SecretBases_ResetBaseEntranceData(int netID);
void SecretBases_RemoveEntrance(int netID);
void SecretBases_ProcessBaseTransitionPromptEvent(int unused0, int unused1, void *data, void *unused3);
void SecretBases_ProcessFailedBaseEnter(int unused0, int unused1, void *data, void *unused3);
int CommPacketSizeOf_BaseTransitionPromptEvent(void);
void SecretBases_ProcessBaseTransitionEvent(int netID, int unused1, void *data, void *unused3);
int CommPacketSizeOf_BaseTransitionEvent(void);
BOOL SecretBases_CheckForEnterExit(int netID, int x, int z);
int CommPacketSizeOf_BaseExitEvent(void);
void SecretBases_ProcessBaseExitEvent(int unused0, int unused1, void *data, void *unused3);
void SecretBases_RequestClearTransitioningStatus(void);
void SecretBases_ClearTransitioningStatus(int netID, int unused1, void *unused2, void *unused3);
BOOL SecretBases_IsPlayerMidBaseTransition(int netID);
void SecretBases_SendBaseInfo(void);
void SecretBases_SendEnteredBase(int baseOwnerNetID);
void SecretBases_ProcessBaseEnter(int unused0, int unused1, void *data, void *unused3);
void SecretBases_ProcessBaseInfo(int netID, int unused1, void *data, void *unused3);
int CommPacketSizeOf_SecretBaseInfo(void);
BOOL SecretBases_AreBaseEntranceLocationsReceived(void);
void SecretBases_ClearBaseEntranceLocationsReceived(void);
void SecretBases_ProcessBaseEntrancesBuffer(int unused0, int unused1, void *data, void *unused3);
int CommPacketSizeOf_BaseEntrancesBuffer(void);
void SecretBases_UseDiggerDrill(void);
int CommPacketSizeOf_SecretBaseCreateEvent(void);
void SecretBases_ProcessBaseCreateRequest(int netID, int unused1, void *data, void *unused3);
void SecretBases_ProcessBaseCreateEvent(int unused0, int unused1, void *data, void *unused3);
BOOL SecretBases_GetQueuedMessage(String *dest);
SecretBase *SecretBases_GetCurrentOccupiedBase(SaveData *saveData);
int SecretBases_GetBaseXCoordinate(void);
int SecretBases_GetBaseZCoordinate(void);
BOOL SecretBases_AreCoordinatesWalkable(int x, int z);
int SecretBases_PrintDecorateBaseMessage(int bankEntry);
void SecretBases_EraseDecorateBaseMessageBox(void);
void SecretBases_SetGoodNameForPrinter(int goodID);
void SecretBases_SetTwoDigitNumberWithIndexForPrinter(int num, int index);
BOOL SecretBases_CheckForInteractableGood(int netID, Coordinates *coordinates);
void SecretBases_ProcessGoodInteractionEvent(int unused0, int unused1, void *data, void *unused3);
int CommPacketSizeOf_GoodInteractionEvent(void);
void SecretBases_QueueObtainedFlagMessage(int netID, int flagOwnerNetID);
void SecretBases_QueueTookFlagMessage(int netID, int victimNetID);
void SecretBases_QueueTookBackFlagMessage(int netID);
void SecretBases_ProcessFlagRankUp(int netID, int unused1, void *data, void *unused3);
void SecretBases_ProcessFlagRankUpEvent(int unused0, int unused1, void *data, void *unused3);
int CommPacketSizeOf_FlagRankUpEvent(void);
BOOL SecretBases_CheckPlayerTriggeredTool(int netID);
BOOL SecretBases_ClearToolEffectFlag(int netID);
void SecretBases_HandleDisconnectedPlayers(int unused);
BOOL SecretBases_RemovePlayerFromBase(int netID, BOOL forceExit);
void SecretBases_AbortBaseEnterEarly(void);
void SecretBases_AbortBaseEnterLate(void);
void SecretBases_RemoveNewLinkFromBase(int netID);
int SecretBases_GetCurrentBaseReturnXCoord(void);
int SecretBases_GetCurrentBaseReturnZCoord(void);
int SecretBases_GetCurrentBaseReturnDir(void);
void SecretBases_SetBaseReturnXCoord(int netID, int x);
void SecretBases_SetBaseReturnZCoord(int netID, int z);
void SecretBases_SetBaseReturnDir(int netID, int dir);
void SecretBases_SetEntranceGraphicsEnabled(BOOL enabled);

#endif // POKEPLATINUM_UNDERGROUND_SECRET_BASES_H
