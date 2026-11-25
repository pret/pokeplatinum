#include "contest/link_comm.h"

#include <nitro.h>
#include <string.h>

#include "contest/common.h"
#include "contest/manager.h"

#include "chatot_cry.h"
#include "communication_system.h"
#include "heap.h"
#include "pokemon.h"
#include "string_gf.h"

typedef struct ContestHostElectionData {
    u8 linkVersion;
    u8 contestantID;
    u8 dressUpTheme;
    u8 padding_03;
} ContestHostElectionData;

static int ElectHost(ContestHostElectionData *candidates[CONTEST_NUM_PARTICIPANTS], int connectionCount, u8 *destHostLinkVersion);

void Contest_RecvHostElectionData(int netID, int size, void *src, void *param)
{
    Contest *contest = param;

    MI_CpuCopy8(src, contest->hostElectionBuffers[netID], size);
    contest->numMessagesReceived++;

    if (contest->numMessagesReceived >= contest->data.connectionCount) {
        ContestHostElectionData *candidates[CONTEST_NUM_PARTICIPANTS];
        int i;
        u8 hostLinkVersion;

        for (i = 0; i < contest->data.connectionCount; i++) {
            candidates[i] = (void *)contest->hostElectionBuffers[i];
        }

        contest->data.hostContestantID = ElectHost(candidates, contest->data.connectionCount, &hostLinkVersion);
        contest->data.hostLinkVersion = hostLinkVersion;
        contest->data.dressUpTheme = candidates[contest->data.hostContestantID]->dressUpTheme;
    }
}

BOOL Contest_SendHostElectionData(Contest *contest)
{
    ContestHostElectionData electionData;

    electionData.linkVersion = contest->data.linkVersion;
    electionData.contestantID = contest->data.playerContestantID;
    electionData.dressUpTheme = contest->data.dressUpTheme;

    if (CommSys_SendData(CONTEST_CMD_SEND_HOST_ELECTION_DATA, &electionData, sizeof(ContestHostElectionData)) == TRUE) {
        return TRUE;
    }

    return FALSE;
}

static int ElectHost(ContestHostElectionData *candidates[CONTEST_NUM_PARTICIPANTS], int connectionCount, u8 *destHostLinkVersion)
{
    int i, hostID = 0;

    for (i = 0; i < connectionCount; i++) {
        if (candidates[hostID]->linkVersion < candidates[i]->linkVersion) {
            hostID = i;
        }
    }

    *destHostLinkVersion = candidates[hostID]->linkVersion;
    return hostID;
}

void Contest_RecvMon(int unused1, int unused2, void *src, void *param)
{
    Contest *contest = param;

    int monSize = Pokemon_StructSize();
    u8 *data = src;
    int contestantID = data[monSize];

    MI_CpuCopy8(src, contest->data.contestMons[contestantID], monSize);

    contest->numMessagesReceived++;
}

BOOL Contest_SendMon(Contest *unused, int contestantID, const Pokemon *mon)
{
    BOOL result;

    int monSize = Pokemon_StructSize();
    u8 *buffer = Heap_Alloc(HEAP_ID_20, monSize + 1);
    MI_CpuCopy8(mon, buffer, monSize);
    buffer[monSize] = contestantID;

    if (CommSys_SendData(CONTEST_CMD_SEND_MON, buffer, monSize + 1) == TRUE) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    Heap_Free(buffer);
    return result;
}

void Contest_RecvAllMons(int unused1, int unused2, void *src, void *param)
{
    Contest *contest = param;

    int monSize = Pokemon_StructSize();
    int unread = monSize * CONTEST_NUM_PARTICIPANTS;
    u8 *data = src;

    for (int i = 0; i < CONTEST_NUM_PARTICIPANTS; i++) {
        MI_CpuCopy8(&data[monSize * i], contest->data.contestMons[i], monSize);
    }

    contest->numMessagesReceived++;
}

BOOL Contest_SendAllMons(Contest *contest, Pokemon **mons)
{
    u8 *buffer;
    BOOL result;

    int monSize = Pokemon_StructSize();
    int totalSize = monSize * CONTEST_NUM_PARTICIPANTS;
    buffer = contest->commSendBuffer;

    for (int i = 0; i < CONTEST_NUM_PARTICIPANTS; i++) {
        MI_CpuCopy8(mons[i], &buffer[monSize * i], monSize);
    }

    if (CommSys_SendDataHuge(CONTEST_CMD_SEND_ALL_MONS, buffer, totalSize) == TRUE) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void Contest_RecvContestant(int unused1, int unused2, void *src, void *param)
{
    Contest *contest = param;

    int opponentSize = sizeof(Contestant);
    u8 *data = src;
    int contestantID = data[opponentSize];

    MI_CpuCopy8(src, &contest->data.contestants[contestantID], opponentSize);

    contest->numMessagesReceived++;
}

BOOL Contest_SendContestant(Contest *unused, int contestantID, const Contestant *contestant)
{
    BOOL result;

    int opponentSize = sizeof(Contestant);
    u8 *buffer = Heap_Alloc(HEAP_ID_20, opponentSize + 1);
    MI_CpuCopy8(contestant, buffer, opponentSize);
    buffer[opponentSize] = contestantID;

    if (CommSys_SendData(CONTEST_CMD_SEND_CONTESTANT, buffer, opponentSize + 1) == TRUE) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    Heap_Free(buffer);
    return result;
}

void Contest_RecvJudges(int unused1, int unused2, void *src, void *param)
{
    Contest *contest = param;

    int packetSize = sizeof(ContestJudge) * CONTEST_NUM_JUDGES + 1;
    u8 *data = src;

    for (int i = 0; i < CONTEST_NUM_JUDGES; i++) {
        MI_CpuCopy8(&data[sizeof(ContestJudge) * i], &contest->data.judges[i], sizeof(ContestJudge));
    }

    contest->data.headJudgeID = data[packetSize - 1];
    contest->numMessagesReceived++;
}

BOOL Contest_SendJudges(Contest *contest, int unused, const ContestJudge *judges)
{
    BOOL result;
    const ContestJudge *judge = judges;

    int packetSize = sizeof(ContestJudge) * CONTEST_NUM_JUDGES + 1;
    u8 *buffer = Heap_Alloc(HEAP_ID_20, packetSize);

    for (int i = 0; i < CONTEST_NUM_JUDGES; i++) {
        MI_CpuCopy8(judge, &buffer[sizeof(ContestJudge) * i], sizeof(ContestJudge));
        judge++;
    }

    buffer[packetSize - 1] = contest->data.headJudgeID;

    if (CommSys_SendData(CONTEST_CMD_SEND_JUDGES, buffer, packetSize) == TRUE) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    Heap_Free(buffer);
    return result;
}

void Contest_RecvTrainerName(int unused1, int unused2, void *src, void *param)
{
    Contest *contest = param;

    int headerSize = 4;
    u8 *data = src;
    int contestantID = data[0];
    u16 *name = (u16 *)(&data[headerSize]);

    String_Clear(contest->data.trainerNames[contestantID]);
    String_CopyChars(contest->data.trainerNames[contestantID], name);

    contest->numMessagesReceived++;
}

BOOL Contest_SendTrainerName(Contest *contest, int contestantID, const String *trainerName)
{
    BOOL result;
    charcode_t name[TRAINER_NAME_LEN + 1];

    int nameSize = (TRAINER_NAME_LEN + 1) * sizeof(charcode_t);
    int headerSize = 4;

    String_ToChars(trainerName, name, TRAINER_NAME_LEN + 1);

    u8 *buffer = Heap_Alloc(HEAP_ID_20, nameSize + headerSize);
    MI_CpuCopy8(name, &buffer[headerSize], nameSize);
    buffer[0] = contestantID;
    buffer[1] = nameSize;
    buffer[2] = 0;
    buffer[3] = 0;

    if (CommSys_SendData(CONTEST_CMD_SEND_TRAINER_NAME, buffer, nameSize + headerSize) == TRUE) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    Heap_Free(buffer);
    return result;
}

void Contest_RecvChatotCry(int unused1, int unused2, void *src, void *param)
{
    Contest *contest = param;

    int chatotCrySize = ChatotCry_SaveSize();
    u8 *data = src;
    int contestantID = data[chatotCrySize];

    MI_CpuCopy8(src, contest->chatotCry[contestantID], chatotCrySize);

    contest->numMessagesReceived++;
}

BOOL Contest_SendChatotCry(Contest *contest, int contestantID, void *chatotCry)
{
    u8 *buffer;
    BOOL result;

    int chatotCrySize = ChatotCry_SaveSize();
    buffer = contest->commSendBuffer;

    if (chatotCry != NULL) {
        MI_CpuCopy8(chatotCry, buffer, chatotCrySize);
    }

    buffer[chatotCrySize] = contestantID;

    if (CommSys_SendDataHuge(CONTEST_CMD_SEND_CHATOT_CRY, buffer, chatotCrySize + 1) == TRUE) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

void Contest_RecvContestantLinkInfo(int unused1, int unused2, void *src, void *param)
{
    Contest *contest = param;

    int linkInfoSize = sizeof(ContestantLinkInfo);
    ContestantLinkInfo *linkInfo = src;
    u8 *data = src;
    int contestantID = data[linkInfoSize];

    contest->data.trainerGenders[contestantID] = linkInfo->trainerGender;
    contest->data.npcSkillLevels[contestantID] = linkInfo->npcSkillLevel;
    contest->data.monContestFame[contestantID] = linkInfo->monContestFame;
    contest->data.contestantObjEventGFX[contestantID] = linkInfo->contestantObjEventGFX;
    contest->numMessagesReceived++;
}

BOOL Contest_SendContestantLinkInfo(Contest *unused, int contestantID, const ContestantLinkInfo *linkInfo)
{
    BOOL result;

    int linkInfoSize = sizeof(ContestantLinkInfo);
    u8 *buffer = Heap_Alloc(HEAP_ID_20, linkInfoSize + 1);
    MI_CpuCopy8(linkInfo, buffer, linkInfoSize);
    buffer[linkInfoSize] = contestantID;

    if (CommSys_SendData(CONTEST_CMD_SEND_CONTESTANT_LINK_INFO, buffer, linkInfoSize + 1) == TRUE) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    Heap_Free(buffer);
    return result;
}
