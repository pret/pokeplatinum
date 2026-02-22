#ifndef POKEPLATINUM_UNDERGROUND_MINING_H
#define POKEPLATINUM_UNDERGROUND_MINING_H

#include <nitro/math.h>

#include "field/field_system_decl.h"
#include "underground/defs.h"

#include "string_gf.h"

void MiningEnv_Init(void *dest, FieldSystem *fieldSystem);
int MiningEnv_Size(void);
void Mining_Dummy(void);
void Mining_Dummy2(void);
void MiningEnv_Free(void);
BOOL Mining_CheckForMiningSpotInteract(int netID, Coordinates *coordinates);
void Mining_SpawnMiningSpotNearBuriedSphere(int buriedSphereX, int buriedSphereZ, MATHRandContext16 *rand);
void Mining_SendRadarResults(void);
void Mining_ProcessMiningSpotInteract(int unused0, int unused1, void *data, void *unused3);
void Mining_ProcessConfirmStartMiningResult(int netID, int unused1, void *data, void *unused3);
void Mining_ProcessStartMiningConfirm(int unused0, int unused1, void *data, void *unused3);
void Mining_ProcessMiningGameEnd(int netID, int unused1, void *unused2, void *unused3);
void Mining_ProcessLinkInput(int netID, int unused1, void *data, void *unused3);
int CommPacketSizeOf_MiningLinkInput(void);
void Mining_ProcessLinkInputServer(int unused0, int unused1, void *data, void *unused3);
int CommPacketSizeOf_MiningLinkInputWithNetID(void);
BOOL Mining_IsMiningSpotAtCoordinates(int x, int z);
int NormalRadar_GetXCoordOfMiningSpot(int radarIndex);
int NormalRadar_GetZCoordOfMiningSpot(int radarIndex);
int TreasureRadar_GetXCoordOfMiningSpot(int radarIndex);
int TreasureRadar_GetZCoordOfMiningSpot(int radarIndex);
void TreasureRadar_Start(void);
void TreasureRadar_Exit(void);
void Mining_ProcessTreasureRadarStart(int netID, int unused1, void *unused2, void *unused3);
void Mining_ProcessMiningSpotRadarResult(int unused0, int unused1, void *data, void *unused3);
int CommPacketSizeOf_MiningSpotRadarResult(void);
BOOL Mining_GetQueuedMessage(String *dest);
void Mining_ClearMessageQueue(void);
BOOL Mining_IsPlayerMining(int netID);
void Mining_ResetPlayerData(int netID);
BOOL Mining_IsMiningGameTaskActive(void);
void Mining_SetPlayerMiningStatus(int netID, int isMining);

enum MiningObjectID {
    MINING_TREASURE_NONE = 0,
    MINING_SMALL_PRISM_SPHERE,
    MINING_SMALL_PALE_SPHERE,
    MINING_SMALL_RED_SPHERE,
    MINING_SMALL_BLUE_SPHERE,
    MINING_SMALL_GREEN_SPHERE,
    MINING_LARGE_PRISM_SPHERE,
    MINING_LARGE_PALE_SPHERE,
    MINING_LARGE_RED_SPHERE,
    MINING_LARGE_BLUE_SPHERE,
    MINING_LARGE_GREEN_SPHERE,
    MINING_SPHERES_MAX,
    MINING_TREASURE_OVAL_STONE = MINING_SPHERES_MAX,
    MINING_TREASURE_ODD_KEYSTONE,
    MINING_TREASURE_SUN_STONE,
    MINING_TREASURE_STAR_PIECE,
    MINING_TREASURE_MOON_STONE,
    MINING_TREASURE_HARD_STONE,
    MINING_TREASURE_THUNDERSTONE,
    MINING_TREASURE_EVERSTONE,
    MINING_TREASURE_FIRE_STONE,
    MINING_TREASURE_WATER_STONE,
    MINING_TREASURE_LEAF_STONE,
    MINING_TREASURE_NUGGET_UNUSED,
    MINING_TREASURE_HELIX_FOSSIL,
    MINING_TREASURE_DOME_FOSSIL,
    MINING_TREASURE_CLAW_FOSSIL,
    MINING_TREASURE_ROOT_FOSSIL,
    MINING_TREASURE_OLD_AMBER,
    MINING_TREASURE_RARE_BONE,
    MINING_TREASURE_REVIVE,
    MINING_TREASURE_MAX_REVIVE,
    MINING_TREASURE_RED_SHARD,
    MINING_TREASURE_BLUE_SHARD,
    MINING_TREASURE_YELLOW_SHARD,
    MINING_TREASURE_GREEN_SHARD,
    MINING_TREASURE_HEART_SCALE,
    MINING_TREASURE_ARMOR_FOSSIL,
    MINING_TREASURE_SKULL_FOSSIL,
    MINING_TREASURE_LIGHT_CLAY,
    MINING_TREASURE_IRON_BALL,
    MINING_TREASURE_ICY_ROCK,
    MINING_TREASURE_SMOOTH_ROCK,
    MINING_TREASURE_HEAT_ROCK,
    MINING_TREASURE_DAMP_ROCK,
    MINING_TREASURE_FLAME_PLATE,
    MINING_TREASURE_SPLASH_PLATE,
    MINING_TREASURE_ZAP_PLATE,
    MINING_TREASURE_MEADOW_PLATE,
    MINING_TREASURE_ICICLE_PLATE,
    MINING_TREASURE_FIST_PLATE,
    MINING_TREASURE_TOXIC_PLATE,
    MINING_TREASURE_EARTH_PLATE,
    MINING_TREASURE_SKY_PLATE,
    MINING_TREASURE_MIND_PLATE,
    MINING_TREASURE_INSECT_PLATE,
    MINING_TREASURE_STONE_PLATE,
    MINING_TREASURE_SPOOKY_PLATE,
    MINING_TREASURE_DRACO_PLATE,
    MINING_TREASURE_DREAD_PLATE,
    MINING_TREASURE_IRON_PLATE,
    MINING_TREASURE_MAX,
    MINING_ROCK_1 = MINING_TREASURE_MAX,
    MINING_ROCK_2,
    MINING_ROCK_3,
    MINING_ROCK_4,
    MINING_ROCK_5,
    MINING_ROCK_6,
    MINING_ROCK_7
};

#endif // POKEPLATINUM_UNDERGROUND_MINING_H
