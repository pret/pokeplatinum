#include "unk_02095AF0.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/comm_cmd_table.h"
#include "struct_defs/struct_02029C88.h"
#include "struct_defs/struct_02095B28.h"
#include "struct_defs/struct_02095C60.h"

#include "overlay006/ov6_022489E4.h"
#include "overlay017/ov17_02252CEC.h"
#include "overlay017/struct_ov17_0224EDE0.h"

#include "communication_system.h"
#include "contest.h"
#include "heap.h"
#include "unk_020298BC.h"
#include "unk_02032798.h"

static void Contest_Dummy(int unused1, int unused2, void *unused3, void *unused4);
static u8 *Contest_GetCommRecvBuffer(int netID, void *contestParam, int size);
static void Contest_RecvPhoto(int unused1, int unused2, void *src, void *param);
static void Contest_RecvAllPhotos(int unused1, int unused2, void *src, void *param);
static void Contest_RecvVisualCompetitionTimer(int unused, int size, void *src, void *param);
static void sub_02095C98(int param0, int param1, void *param2, void *param3);
static int sub_02095B24(void);
static int sub_02095B28(void);

static const CommCmdTable sContestCommCmdTable[] = {
    { NULL, CommPacketSizeOf_Nothing, NULL },
    { Contest_Dummy, CommPacketSizeOf_Nothing, NULL },
    { ov17_02252CEC, CommPacketSizeOf_Variable, Contest_GetCommRecvBuffer },
    { ov17_02252D7C, sub_02095B24, NULL },
    { Contest_RecvHostElectionData, CommPacketSizeOf_Variable, NULL },
    { Contest_RecvMon, CommPacketSizeOf_Variable, NULL },
    { Contest_RecvAllMons, CommPacketSizeOf_Variable, Contest_GetCommRecvBuffer },
    { Contest_RecvContestant, CommPacketSizeOf_Variable, NULL },
    { Contest_RecvJudges, CommPacketSizeOf_Variable, NULL },
    { Contest_RecvTrainerName, CommPacketSizeOf_Variable, NULL },
    { Contest_RecvPhoto, CommPacketSizeOf_Variable, NULL },
    { Contest_RecvAllPhotos, CommPacketSizeOf_Variable, Contest_GetCommRecvBuffer },
    { Contest_RecvVisualCompetitionTimer, sub_02095B28, NULL },
    { sub_02095C98, sub_02095B28, NULL },
    { Contest_RecvChatotCry, CommPacketSizeOf_Variable, Contest_GetCommRecvBuffer },
    { Contest_RecvContestantLinkInfo, CommPacketSizeOf_Variable, NULL }
};

void Contest_InitCommCommands(void *contest)
{
    int numCommands = NELEMS(sContestCommCmdTable);
    CommCmd_Init(sContestCommCmdTable, numCommands, contest);
}

static u8 *Contest_GetCommRecvBuffer(int netID, void *contestParam, int size)
{
    Contest *contest = contestParam;

    GF_ASSERT(size < CONTEST_COMM_BUFFER_SIZE);
    return contest->commRecvBuffers[netID];
}

static int sub_02095B24(void)
{
    return sizeof(UnkStruct_ov17_0224EDE0);
}

static int sub_02095B28(void)
{
    return sizeof(UnkStruct_02095B28);
}

static void Contest_Dummy(int unused1, int unused2, void *unused3, void *unused4)
{
    return;
}

static void Contest_RecvPhoto(int unused1, int unused2, void *src, void *param)
{
    Contest *contest = param;
    int photoSize;
    int contestantID;
    u8 *data;

    photoSize = ContestPhoto_Size();
    data = src;
    contestantID = data[photoSize];

    MI_CpuCopy8(src, contest->data.photos[contestantID], photoSize);

    contest->numMessagesReceived++;
}

BOOL Contest_SendPhoto(Contest *unused, int contestantID, const ContestPhoto *contestPhoto)
{
    u8 *buffer;
    int photoSize;
    BOOL result;

    photoSize = ContestPhoto_Size();
    buffer = Heap_Alloc(HEAP_ID_20, photoSize + 1);
    MI_CpuCopy8(contestPhoto, buffer, photoSize);
    buffer[photoSize] = contestantID;

    if (CommSys_SendData(CONTEST_CMD_SEND_PHOTO, buffer, photoSize + 1) == TRUE) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    Heap_Free(buffer);
    return result;
}

static void Contest_RecvAllPhotos(int unused1, int unused2, void *src, void *param)
{
    Contest *contest = param;
    int photoSize, totalSize;
    u8 *data;
    int i;

    photoSize = ContestPhoto_Size();
    totalSize = photoSize * CONTEST_NUM_PARTICIPANTS;
    data = src;

    GF_ASSERT(totalSize < CONTEST_COMM_BUFFER_SIZE);

    for (i = 0; i < CONTEST_NUM_PARTICIPANTS; i++) {
        MI_CpuCopy8(&data[photoSize * i], contest->data.photos[i], photoSize);
    }

    contest->numMessagesReceived++;
}

BOOL Contest_SendAllPhotos(Contest *contest, ContestPhoto **contestPhotos)
{
    u8 *buffer;
    int photoSize, totalSize;
    BOOL result;
    int i;

    photoSize = ContestPhoto_Size();
    totalSize = photoSize * CONTEST_NUM_PARTICIPANTS;

    GF_ASSERT(totalSize < CONTEST_COMM_BUFFER_SIZE);

    buffer = contest->commSendBuffer;

    for (i = 0; i < CONTEST_NUM_PARTICIPANTS; i++) {
        MI_CpuCopy8(contestPhotos[i], &buffer[photoSize * i], photoSize);
    }

    if (CommSys_SendDataHuge(CONTEST_CMD_SEND_ALL_PHOTOS, buffer, totalSize) == TRUE) {
        result = TRUE;
    } else {
        result = FALSE;
    }

    return result;
}

static void Contest_RecvVisualCompetitionTimer(int unused, int size, void *src, void *param)
{
    Contest *contest = param;
    MI_CpuCopy8(src, &contest->unk_1984.unk_00, size);
}

BOOL sub_02095C60(UnkStruct_02095C60 *param0, u32 param1)
{
    if (param0->unk_16 == 0) {
        param0->unk_00.unk_00 = param1;
        return TRUE;
    }

    if (param0->unk_14 != param0->unk_15) {
        return FALSE;
    }

    param0->unk_08.unk_00 = param1;

    if (CommSys_SendData(CONTEST_CMD_SEND_VISUAL_COMPETITION_TIMER, &param0->unk_08, sizeof(UnkStruct_02095B28)) == TRUE) {
        return TRUE;
    }

    return FALSE;
}

static void sub_02095C98(int param0, int param1, void *param2, void *param3)
{
    Contest *contest = param3;
    UnkStruct_02095B28 *v1 = param2;
    contest->unk_1984.unk_10[param0] = v1->unk_04;
}

BOOL sub_02095CA8(UnkStruct_02095C60 *param0, int param1)
{
    if (param0->unk_16 == 0) {
        param0->unk_10[0] = param1;
        return TRUE;
    }

    param0->unk_08.unk_04 = param1;

    if (CommSys_SendData(CONTEST_CMD_UNK_35, &param0->unk_08, sizeof(UnkStruct_02095B28)) == TRUE) {
        return TRUE;
    }

    return FALSE;
}
