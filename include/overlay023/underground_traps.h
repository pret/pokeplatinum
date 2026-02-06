#ifndef POKEPLATINUM_UNDERGROUND_TRAPS_H
#define POKEPLATINUM_UNDERGROUND_TRAPS_H

#include <nitro/math.h>

#include "field/field_system_decl.h"
#include "overlay023/underground_defs.h"

#include "bg_window.h"
#include "string_gf.h"

void TrapsEnv_Init(void *dest, FieldSystem *fieldSystem);
void UndergroundTraps_DisableTrapGraphics(void);
void UndergroundTraps_EnableTrapGraphics(void);
void TrapsEnv_Free(void);
void UndergroundTraps_Reinit(FieldSystem *fieldSystem);
void UndergroundTraps_RemoveLinkData(int netID);
int TrapsEnv_Size(void);
int CommPacketSizeOf_AllTrapsPlacedPlayer(void);
void Underground_SendPlacedTrap(u8 trapID);
void UndergroundTraps_SendTrapRadarResults(void);
void UndergroundTraps_SendPlacedTraps(void);
void UndergroundTraps_TryPlaceTrap(int netID, int unused1, void *data, void *unused3);
int CommPacketSizeOf_PlaceTrapResult(void);
int UndergroundTraps_SpawnRandomTrap(int x, int z, MATHRandContext16 *rand, int index);
void UndergroundTraps_LoadSpawnedTraps(void);
void UndergroundTraps_ProcessPlaceTrapResult(int unused0, int unused1, void *data, void *unused3);
void UndergroundTraps_RemoveBuriedTrapAtIndex_Unused(int unused0, int unused1, void *data, void *unused3);
int CommPacketSizeOf_2Bytes_Unused(void);
void UndergroundTraps_LoadLinkPlacedTraps(int netID, int size, void *data, void *unused3);
void UndergroundTraps_ReceiveLoadTrapsResult(int unused0, int unused1, void *data, void *unused3);
int CommPacketSizeOf_LoadTrapsResult(void);
BOOL UndergroundTraps_HaveLinksReceivedPlacedTraps(void);
void UndergroundTraps_ClearLinksReceivedPlacedTraps(void);
int CommPacketSizeOf_Coordinates(void);
BOOL UndergroundTraps_TryDisengageTrap(int netID, Coordinates *unused, u8 flags);
int CommPacketSizeOf_TriggeredTrap(void);
void UndergroundTraps_ProcessDisengagedTrap(int unused0, int unused1, void *data, void *unused3);
BOOL UndergroundTraps_IsTrapAtCoordinates(int x, int z);
int CommPacketSizeOf_TriggeredTrap2(void);
void UndergroundTraps_HandleTriggeredTool(int victimNetID, int setterNetID, int trapID, int x, int z, int victimDir);
BOOL UndergroundTraps_CheckPlayerSteppedOnTrap(int netID);
BOOL UndergroundTraps_HasPlayerTriggeredTool(int netID);
void UndergroundTraps_HandleTriggeredTrap(int unused0, int unused1, void *data, void *unused3);
void UndergroundTraps_CallSecondTrapEffectServerFunc(int netID, int unused1, void *data, void *unused3);
void UndergroundTraps_StartLinkSlideAnimation_Unused(int unused0, int unused1, void *data, void *unused3);
void UndergroundTraps_SendTriggeredTrapBits(void);
void UndergroundTraps_ProcessTriggeredTrapBits(int unused0, int unused1, void *data, void *unused3);
BOOL UndergroundTraps_GetQueuedMessage(String *dest);
BOOL UndergroundTraps_GetQueuedMessage2(String *dest);
void UndergroundTraps_ForceEndCurrentTrapEffectClient(int netID, BOOL allowToolStepBack);
int CommPacketSizeOf_EscapedTrap(void);
void UndergroundTraps_EscapeTrapServer(int netID, int unused1, void *unused2, void *unused3);
void UndergroundTraps_EndCurrentTrapEffectServer(int netID, int unused1, void *unused2, void *unused3);
void UndergroundTraps_ProcessEscapedTrap(int unused0, int unused1, void *data, void *unused3);
void UndergroundTraps_EscapeHole(int unused0, int unused1, void *data, void *unused3);
void UndergroundTraps_HelpLink(int netID, int linkNetID);
void UndergroundTraps_ProcessTrapHelp(int unused0, int unused1, void *data, void *unused3);
int CommPacketSizeOf_TrapHelpData(void);
int TrapRadar_GetXCoordOfBuriedTrap(int radarIndex);
int TrapRadar_GetZCoordOfBuriedTrap(int radarIndex);
void TrapRadar_Start(void);
void TrapRadar_Exit(void);
void UndergroundTraps_QueueSendTrapRadarResults(int netID, int unused1, void *unused2, void *unused3);
void UndergroundTraps_ReceiveTrapRadarResults(int unused0, int unused1, void *data, void *unused3);
int CommPacketSizeOf_TrapRadarResult(void);
void UndergroundTraps_Dummy2(BgConfig *bgConfig);
void UndergroundTraps_StartTouchRadarTask(FieldSystem *fieldSystem, int param1, int param2, int param3, int param4, u8 *param5, int param6, u8 *param7, int param8, u8 *param9, int param10);
void UndergroundTraps_StopLinkSpin(int netID);

#endif // POKEPLATINUM_UNDERGROUND_TRAPS_H
