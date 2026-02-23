#ifndef POKEPLATINUM_UNDERGROUND_PLAYER_STATUS_H
#define POKEPLATINUM_UNDERGROUND_PLAYER_STATUS_H

#include "communication_system.h"

typedef struct PlayerStatus {
    int dummy;
    int unusedTimer;
    u8 padding[2];
    u8 status;
} PlayerStatus;

typedef struct UndergroundPlayerStatuses {
    MATHRandContext32 dummy;
    PlayerStatus playerStatuses[MAX_CONNECTED_PLAYERS];
} UndergroundPlayerStatuses;

enum Status {
    PLAYER_STATUS_NORMAL = 0,
    PLAYER_STATUS_MOVEMENT_ALTERED,
    PLAYER_STATUS_IMMOBILIZED_BY_TRAP,
    PLAYER_STATUS_SLIDING,
    PLAYER_STATUS_IN_HOLE,
    PLAYER_STATUS_5_UNUSED,
    PLAYER_STATUS_6_UNUSED,
};

int UndergroundPlayerStatuses_Size(void);
void UndergroundPlayerStatuses_Init(UndergroundPlayerStatuses *playerStatuses);
void UndergroundPlayerStatuses_Dummy(UndergroundPlayerStatuses *playerStatuses);
PlayerStatus *UndergroundPlayerStatuses_GetPlayerStatus(UndergroundPlayerStatuses *playerStatuses, int netID);
void UndergroundPlayerStatuses_UpdateUnusedTimers(UndergroundPlayerStatuses *playerStatuses);
void UndergroundPlayerStatus_Update(PlayerStatus *playerStatus, int status);
BOOL UndergroundPlayerStatus_IsNormal(PlayerStatus *playerStatus);
BOOL UndergroundPlayerStatus_CanMove(PlayerStatus *playerStatus);

#endif // POKEPLATINUM_UNDERGROUND_PLAYER_STATUS_H
