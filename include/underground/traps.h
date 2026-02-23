#ifndef POKEPLATINUM_UNDERGROUND_TRAPS_H
#define POKEPLATINUM_UNDERGROUND_TRAPS_H

#include <nitro/math.h>

#include "generated/traps.h"

#include "field/field_system_decl.h"
#include "underground/defs.h"

#include "bg_window.h"
#include "string_gf.h"

void TrapsEnv_Init(void *dest, FieldSystem *fieldSystem);
void Traps_DisableTrapGraphics(void);
void Traps_EnableTrapGraphics(void);
void TrapsEnv_Free(void);
void Traps_Reinit(FieldSystem *fieldSystem);
void Traps_RemoveLinkData(int netID);
int TrapsEnv_Size(void);
int CommPacketSizeOf_AllTrapsPlacedPlayer(void);
void Underground_SendPlacedTrap(u8 trapID);
void Traps_SendTrapRadarResults(void);
void Traps_SendPlacedTraps(void);
void Traps_TryPlaceTrap(int netID, int unused1, void *data, void *unused3);
int CommPacketSizeOf_PlaceTrapResult(void);
enum Trap Traps_SpawnRandomTrap(int x, int z, MATHRandContext16 *rand, int index);
void Traps_LoadSpawnedTraps(void);
void Traps_ProcessPlaceTrapResult(int unused0, int unused1, void *data, void *unused3);
void Traps_RemoveBuriedTrapAtIndex_Unused(int unused0, int unused1, void *data, void *unused3);
int CommPacketSizeOf_2Bytes_Unused(void);
void Traps_LoadLinkPlacedTraps(int netID, int size, void *data, void *unused3);
void Traps_ReceiveLoadTrapsResult(int unused0, int unused1, void *data, void *unused3);
int CommPacketSizeOf_LoadTrapsResult(void);
BOOL Traps_HaveLinksReceivedPlacedTraps(void);
void Traps_ClearLinksReceivedPlacedTraps(void);
int CommPacketSizeOf_Coordinates(void);
BOOL Traps_TryDisengageTrap(int netID, Coordinates *unused, u8 flags);
int CommPacketSizeOf_TriggeredTrap(void);
void Traps_ProcessDisengagedTrap(int unused0, int unused1, void *data, void *unused3);
BOOL Traps_IsTrapAtCoordinates(int x, int z);
int CommPacketSizeOf_TriggeredTrap2(void);
void Traps_HandleTriggeredTool(int victimNetID, int setterNetID, enum Trap trapID, int x, int z, int victimDir);
BOOL Traps_CheckPlayerSteppedOnTrap(int netID);
BOOL Traps_HasPlayerTriggeredTool(int netID);
void Traps_HandleTriggeredTrap(int unused0, int unused1, void *data, void *unused3);
void Traps_CallSecondTrapEffectServerFunc(int netID, int unused1, void *data, void *unused3);
void Traps_StartLinkSlideAnimation_Unused(int unused0, int unused1, void *data, void *unused3);
void Traps_SendTriggeredTrapBits(void);
void Traps_ProcessTriggeredTrapBits(int unused0, int unused1, void *data, void *unused3);
BOOL Traps_GetQueuedMessage(String *dest);
BOOL Traps_GetQueuedMessage2(String *dest);
void Traps_ForceEndCurrentTrapEffectClient(int netID, BOOL allowToolStepBack);
int CommPacketSizeOf_EscapedTrap(void);
void Traps_EscapeTrapServer(int netID, int unused1, void *unused2, void *unused3);
void Traps_EndCurrentTrapEffectServer(int netID, int unused1, void *unused2, void *unused3);
void Traps_ProcessEscapedTrap(int unused0, int unused1, void *data, void *unused3);
void Traps_EscapeHole(int unused0, int unused1, void *data, void *unused3);
void Traps_HelpLink(int netID, int linkNetID);
void Traps_ProcessTrapHelp(int unused0, int unused1, void *data, void *unused3);
int CommPacketSizeOf_TrapHelpData(void);
int TrapRadar_GetXCoordOfBuriedTrap(int radarIndex);
int TrapRadar_GetZCoordOfBuriedTrap(int radarIndex);
void TrapRadar_Start(void);
void TrapRadar_Exit(void);
void Traps_QueueSendTrapRadarResults(int netID, int unused1, void *unused2, void *unused3);
void Traps_ReceiveTrapRadarResults(int unused0, int unused1, void *data, void *unused3);
int CommPacketSizeOf_TrapRadarResult(void);
void Traps_Dummy2(BgConfig *bgConfig);
void TouchRadar_StartTask(FieldSystem *fieldSystem, int touchedTileX, int touchedTileZ, int touchX, int touchY, u8 *trapResults, int trapResultCount, u8 *miningSpotResults, int miningSpotResultCount, u8 *buriedSphereResults, int buriedSphereResultCount);
void Traps_StopLinkSpin(int netID);

#endif // POKEPLATINUM_UNDERGROUND_TRAPS_H
