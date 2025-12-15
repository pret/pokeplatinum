#include "overlay023/underground_player_status.h"

#include "communication_system.h"

static int sDummiedStatusDurations[] = {
    [PLAYER_STATUS_NORMAL] = 0,
    [PLAYER_STATUS_MOVEMENT_ALTERED] = -1,
    [PLAYER_STATUS_IMMOBILIZED_BY_TRAP] = -1,
    [PLAYER_STATUS_SLIDING] = -1,
    [PLAYER_STATUS_IN_HOLE] = -1,
    [PLAYER_STATUS_5_UNUSED] = -1,
    [PLAYER_STATUS_6_UNUSED] = -1
};

static int sDummyTable[] = {
    [PLAYER_STATUS_NORMAL] = 0,
    [PLAYER_STATUS_MOVEMENT_ALTERED] = 16,
    [PLAYER_STATUS_IMMOBILIZED_BY_TRAP] = 0,
    [PLAYER_STATUS_SLIDING] = 0,
    [PLAYER_STATUS_IN_HOLE] = 0,
    [PLAYER_STATUS_5_UNUSED] = 0,
    [PLAYER_STATUS_6_UNUSED] = 0
};

int UndergroundPlayerStatuses_Size(void)
{
    return sizeof(UndergroundPlayerStatuses);
}

void UndergroundPlayerStatuses_Init(UndergroundPlayerStatuses *playerStatuses)
{
    CommSys_Seed(&playerStatuses->dummy);

    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        PlayerStatus *playerStatus = &playerStatuses->playerStatuses[netID];

        playerStatus->status = PLAYER_STATUS_NORMAL;
        playerStatus->unusedTimer = 0;
    }
}

void UndergroundPlayerStatuses_Dummy(UndergroundPlayerStatuses *playerStatuses)
{
    return;
}

PlayerStatus *UndergroundPlayerStatuses_GetPlayerStatus(UndergroundPlayerStatuses *playerStatuses, int netID)
{
    GF_ASSERT(netID < MAX_CONNECTED_PLAYERS);
    return &playerStatuses->playerStatuses[netID];
}

void UndergroundPlayerStatuses_UpdateUnusedTimers(UndergroundPlayerStatuses *playerStatuses)
{
    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        PlayerStatus *playerStatus = &playerStatuses->playerStatuses[netID];

        // will never be above 0
        if (playerStatus->unusedTimer > 0) {
            playerStatus->unusedTimer--;
        }

        if (playerStatus->unusedTimer == 0) {
            playerStatus->status = PLAYER_STATUS_NORMAL;
        }
    }
}

static void UpdatePlayerStatus(PlayerStatus *playerStatus, int status)
{
    playerStatus->status = status;
    playerStatus->unusedTimer = sDummiedStatusDurations[status];
    playerStatus->dummy = sDummyTable[status];
}

void UndergroundPlayerStatus_Update(PlayerStatus *playerStatus, int status)
{
    UpdatePlayerStatus(playerStatus, status);
}

BOOL UndergroundPlayerStatus_IsNormal(PlayerStatus *playerStatus)
{
    return playerStatus->status == PLAYER_STATUS_NORMAL;
}

BOOL UndergroundPlayerStatus_CanMove(PlayerStatus *playerStatus)
{
    if (playerStatus->status == PLAYER_STATUS_IMMOBILIZED_BY_TRAP) {
        return FALSE;
    } else if (playerStatus->status == PLAYER_STATUS_5_UNUSED) {
        return FALSE;
    } else if (playerStatus->status == PLAYER_STATUS_SLIDING) {
        return TRUE;
    } else if (playerStatus->status == PLAYER_STATUS_MOVEMENT_ALTERED) {
        return TRUE;
    } else if (playerStatus->status == PLAYER_STATUS_IN_HOLE) {
        return TRUE;
    } else if (playerStatus->status == PLAYER_STATUS_NORMAL) {
        return TRUE;
    }

    return FALSE;
}
