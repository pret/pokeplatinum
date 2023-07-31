
#include <nnsys/snd/player.h>
#include <nitro/os.h>
#include <nitro/snd.h>
#include <nnsys/misc.h>
#include <nnsys/snd/main.h>

#define FADER_SHIFT 8

typedef struct NNSSndPlayerHeap {
    NNSFndLink link;
    NNSSndHeapHandle handle;
    NNSSndSeqPlayer * player;
    int playerNo;
} NNSSndPlayerHeap;

static NNSSndSeqPlayer sSeqPlayer[SND_PLAYER_NUM];
static NNSSndPlayer sPlayer[NNS_SND_PLAYER_NUM];
static NNSFndList sPrioList;
static NNSFndList sFreeList;

static void InitPlayer(NNSSndSeqPlayer * seqPlayer);
static void ShutdownPlayer(NNSSndSeqPlayer * seqPlayer);
static void ForceStopSeq(NNSSndSeqPlayer * seqPlayer);
static NNSSndSeqPlayer * AllocSeqPlayer(int prio);
static void InsertPlayerList(NNSSndPlayer * player, NNSSndSeqPlayer * seqPlayer);
static void InsertPrioList(NNSSndSeqPlayer * seqPlayer);
static void SetPlayerPriority(NNSSndSeqPlayer * seqPlayer, int priority);
static void PlayerHeapDisposeCallback(void * mem, u32 size, u32 data1, u32 data2);

void NNS_SndPlayerSetPlayerVolume (int playerNo, int volume) {
    NNS_MINMAX_ASSERT(playerNo, 0, NNS_SND_PLAYER_NO_MAX);
    NNS_MINMAX_ASSERT(volume, 0, SND_CALC_DECIBEL_SCALE_MAX);

    sPlayer[playerNo].volume = (u8)volume;
}

void NNS_SndPlayerSetPlayableSeqCount (int playerNo, int seqCount) {
    NNS_MINMAX_ASSERT(playerNo, 0, NNS_SND_PLAYER_NO_MAX);
    NNS_MINMAX_ASSERT(seqCount, 0, SND_PLAYER_NUM);

    sPlayer[playerNo].playableSeqCount = (u16)seqCount;
}

void NNS_SndPlayerSetAllocatableChannel (int playerNo, u32 chBitFlag) {
    NNS_MINMAX_ASSERT(playerNo, 0, NNS_SND_PLAYER_NO_MAX);
    NNS_MINMAX_ASSERT(chBitFlag, 0, 0xffff);

    sPlayer[playerNo].allocChBitFlag = chBitFlag;
}

BOOL NNS_SndPlayerCreateHeap (int playerNo, NNSSndHeapHandle heap, u32 size) {
    NNSSndHeapHandle playerHeapHandle;
    NNSSndPlayerHeap * playerHeap;
    void * buffer;

    NNS_MINMAX_ASSERT(playerNo, 0, NNS_SND_PLAYER_NO_MAX);

    buffer = NNS_SndHeapAlloc(heap, sizeof(NNSSndPlayerHeap) + size, PlayerHeapDisposeCallback, 0, 0);
    if (buffer == NULL) {
        return FALSE;
    }

    playerHeap = (NNSSndPlayerHeap *)buffer;

    playerHeap->player = NULL;
    playerHeap->playerNo = playerNo;
    playerHeap->handle = NNS_SND_HEAP_INVALID_HANDLE;

    playerHeapHandle = NNS_SndHeapCreate(
        (u8 *)buffer + sizeof(NNSSndPlayerHeap),
        size
    );
    if (playerHeapHandle == NNS_SND_HEAP_INVALID_HANDLE) {
        return FALSE;
    }

    playerHeap->handle = playerHeapHandle;
    NNS_FndAppendListObject(&sPlayer[playerNo].heapList, playerHeap);

    return TRUE;
}

void NNS_SndPlayerStopSeq (NNSSndHandle * handle, int fadeFrame) {
    NNS_NULL_ASSERT(handle);

    NNSi_SndPlayerStopSeq(handle->player, fadeFrame);
}

void NNS_SndPlayerStopSeqByPlayerNo (int playerNo, int fadeFrame) {
    NNSSndSeqPlayer * seqPlayer;
    int i;

    NNS_MINMAX_ASSERT(playerNo, 0, NNS_SND_PLAYER_NO_MAX);

    for ( i = 0; i < SND_PLAYER_NUM ; i++ ) {
        seqPlayer = &sSeqPlayer[i];

        if (seqPlayer->status != NNS_SND_SEQ_PLAYER_STATUS_STOP &&
            seqPlayer->player == &sPlayer[playerNo]) {
            NNSi_SndPlayerStopSeq(seqPlayer, fadeFrame);
        }
    }
}

void NNS_SndPlayerStopSeqBySeqNo (int seqNo, int fadeFrame) {
    NNSSndSeqPlayer * seqPlayer;
    int i;

    for ( i = 0; i < SND_PLAYER_NUM ; i++ ) {
        seqPlayer = &sSeqPlayer[i];

        if (seqPlayer->status != NNS_SND_SEQ_PLAYER_STATUS_STOP &&
            seqPlayer->seqType == NNS_SND_PLAYER_SEQ_TYPE_SEQ &&
            seqPlayer->seqNo == seqNo) {
            NNSi_SndPlayerStopSeq(seqPlayer, fadeFrame);
        }
    }
}

void NNS_SndPlayerStopSeqBySeqArcNo (int seqArcNo, int fadeFrame) {
    NNSSndSeqPlayer * seqPlayer;
    int i;

    for ( i = 0; i < SND_PLAYER_NUM ; i++ ) {
        seqPlayer = &sSeqPlayer[i];

        if (seqPlayer->status != NNS_SND_SEQ_PLAYER_STATUS_STOP &&
            seqPlayer->seqType == NNS_SND_PLAYER_SEQ_TYPE_SEQARC &&
            seqPlayer->seqNo == seqArcNo) {
            NNSi_SndPlayerStopSeq(seqPlayer, fadeFrame);
        }
    }
}

void NNS_SndPlayerStopSeqBySeqArcIdx (int seqArcNo, int index, int fadeFrame) {
    NNSSndSeqPlayer * seqPlayer;
    int i;

    for ( i = 0; i < SND_PLAYER_NUM ; i++ ) {
        seqPlayer = &sSeqPlayer[i];

        if (seqPlayer->status != NNS_SND_SEQ_PLAYER_STATUS_STOP &&
            seqPlayer->seqType == NNS_SND_PLAYER_SEQ_TYPE_SEQARC &&
            seqPlayer->seqNo == seqArcNo &&
            seqPlayer->seqArcIndex == index) {
            NNSi_SndPlayerStopSeq(seqPlayer, fadeFrame);
        }
    }
}

void NNS_SndPlayerStopSeqAll (int fadeFrame) {
    NNSSndSeqPlayer * seqPlayer;
    int i;

    for ( i = 0; i < SND_PLAYER_NUM ; i++ ) {
        seqPlayer = &sSeqPlayer[i];

        if (seqPlayer->status != NNS_SND_SEQ_PLAYER_STATUS_STOP) {
            NNSi_SndPlayerStopSeq(seqPlayer, fadeFrame);
        }
    }
}

void NNS_SndPlayerPause (NNSSndHandle * handle, BOOL flag) {
    NNS_NULL_ASSERT(handle);

    NNSi_SndPlayerPause(handle->player, flag);
}

void NNS_SndPlayerPauseByPlayerNo (int playerNo, BOOL flag) {
    NNSSndSeqPlayer * seqPlayer;
    NNSSndSeqPlayer * next;

    NNS_MINMAX_ASSERT(playerNo, 0, NNS_SND_PLAYER_NO_MAX);

    for ( seqPlayer = (NNSSndSeqPlayer *)NNS_FndGetNextListObject(&sPlayer[playerNo].playerList, NULL);
          seqPlayer != NULL ; seqPlayer = next ) {
        next = (NNSSndSeqPlayer *)NNS_FndGetNextListObject(&sPlayer[playerNo].playerList, seqPlayer);

        NNSi_SndPlayerPause(seqPlayer, flag);
    }
}

void NNS_SndPlayerPauseAll (BOOL flag) {
    NNSSndSeqPlayer * seqPlayer;
    NNSSndSeqPlayer * next;

    for ( seqPlayer = (NNSSndSeqPlayer *)NNS_FndGetNextListObject(&sPrioList, NULL);
          seqPlayer != NULL ; seqPlayer = next ) {
        next = (NNSSndSeqPlayer *)NNS_FndGetNextListObject(&sPrioList, seqPlayer);

        NNSi_SndPlayerPause(seqPlayer, flag);
    }
}

void NNS_SndHandleInit (NNSSndHandle * handle) {
    NNS_NULL_ASSERT(handle);

    handle->player = NULL;
}

void NNS_SndHandleReleaseSeq (NNSSndHandle * handle) {
    NNS_NULL_ASSERT(handle);

    if (!NNS_SndHandleIsValid(handle)) {
        return;
    }

    NNS_ASSERT(handle == handle->player->handle);

    handle->player->handle = NULL;
    handle->player = NULL;
}

int NNS_SndPlayerCountPlayingSeqByPlayerNo (int playerNo) {
    NNS_MINMAX_ASSERT(playerNo, 0, NNS_SND_PLAYER_NO_MAX);

    return sPlayer[playerNo].playerList.numObjects;
}

int NNS_SndPlayerCountPlayingSeqBySeqNo (int seqNo) {
    int count = 0;

    NNSSndSeqPlayer * seqPlayer = NULL;
    while ((seqPlayer = (NNSSndSeqPlayer *)NNS_FndGetNextListObject(&sPrioList, seqPlayer)) != NULL) {
        if (seqPlayer->seqType == NNS_SND_PLAYER_SEQ_TYPE_SEQ &&
            seqPlayer->seqNo == seqNo) {
            count++;
        }
    }

    return count;
}

int NNS_SndPlayerCountPlayingSeqBySeqArcNo (int seqArcNo) {
    int count = 0;

    NNSSndSeqPlayer * seqPlayer = NULL;
    while ((seqPlayer = (NNSSndSeqPlayer *)NNS_FndGetNextListObject(&sPrioList, seqPlayer)) != NULL) {
        if (seqPlayer->seqType == NNS_SND_PLAYER_SEQ_TYPE_SEQARC &&
            seqPlayer->seqNo == seqArcNo) {
            count++;
        }
    }

    return count;
}

int NNS_SndPlayerCountPlayingSeqBySeqArcIdx (int seqArcNo, int index) {
    int count = 0;

    NNSSndSeqPlayer * seqPlayer = NULL;
    while ((seqPlayer = (NNSSndSeqPlayer *)NNS_FndGetNextListObject(&sPrioList, seqPlayer)) != NULL) {
        if (seqPlayer->seqType == NNS_SND_PLAYER_SEQ_TYPE_SEQARC &&
            seqPlayer->seqNo == seqArcNo &&
            seqPlayer->seqArcIndex == index) {
            count++;
        }
    }

    return count;
}

void NNS_SndPlayerSetVolume (NNSSndHandle * handle, int volume) {
    NNS_NULL_ASSERT(handle);
    NNS_MINMAX_ASSERT(volume, 0, SND_CALC_DECIBEL_SCALE_MAX);

    if (!NNS_SndHandleIsValid(handle)) {
        return;
    }

    handle->player->extVolume = (u8)volume;
}

void NNS_SndPlayerSetInitialVolume (NNSSndHandle * handle, int volume) {
    NNS_NULL_ASSERT(handle);
    NNS_MINMAX_ASSERT(volume, 0, SND_CALC_DECIBEL_SCALE_MAX);

    if (!NNS_SndHandleIsValid(handle)) {
        return;
    }

    handle->player->initVolume = (u8)volume;
}

void NNS_SndPlayerMoveVolume (NNSSndHandle * handle, int targetVolume, int frames) {
    NNS_NULL_ASSERT(handle);
    NNS_MINMAX_ASSERT(targetVolume, 0, SND_CALC_DECIBEL_SCALE_MAX);

    if (!NNS_SndHandleIsValid(handle)) {
        return;
    }

    if (handle->player->status == NNS_SND_SEQ_PLAYER_STATUS_FADEOUT) {
        return;
    }

    NNSi_SndFaderSet(&handle->player->fader, targetVolume << FADER_SHIFT, frames);
}

void NNS_SndPlayerSetPlayerPriority (NNSSndHandle * handle, int priority) {
    NNS_NULL_ASSERT(handle);
    NNS_MINMAX_ASSERT(priority, 0, NNS_SND_PLAYER_PRIO_MAX);

    if (!NNS_SndHandleIsValid(handle)) {
        return;
    }

    SetPlayerPriority(handle->player, priority);
}

void NNS_SndPlayerSetChannelPriority (NNSSndHandle * handle, int priority) {
    NNS_NULL_ASSERT(handle);
    NNS_MINMAX_ASSERT(priority, 0, 127);

    if (!NNS_SndHandleIsValid(handle)) {
        return;
    }

    SND_SetPlayerChannelPriority(handle->player->playerNo, priority);
}

void NNS_SndPlayerSetTrackMute (NNSSndHandle * handle, u16 trackBitMask, BOOL flag) {
    NNS_NULL_ASSERT(handle);

    if (!NNS_SndHandleIsValid(handle)) {
        return;
    }

    SND_SetTrackMute(
        handle->player->playerNo,
        trackBitMask,
        flag
    );
}

#if SDK_CURRENT_VERSION_NUMBER >= SDK_VERSION_NUMBER(3, 1, 0)
void NNS_SndPlayerSetTrackMuteEx (NNSSndHandle * handle, u16 trackBitMask, NNSSndSeqMute mute) {
    NNS_NULL_ASSERT(handle);

    if (!NNS_SndHandleIsValid(handle)) {
        return;
    }

    SND_SetTrackMuteEx(
        handle->player->playerNo,
        trackBitMask,
        (SNDSeqMute)mute
    );
}
void SND_SetTrackMuteEx(int playerNo, u32 trackBitMask, SNDSeqMute mute);
SDK_WEAK_SYMBOL void SND_SetTrackMuteEx (int playerNo, u32 trackBitMask, SNDSeqMute mute) {
    (void)playerNo;
    (void)trackBitMask;
    (void)mute;

    NNS_WARNING(FALSE, "SND_SetTrackMuteEx is not supported.");
}
#endif

void NNS_SndPlayerSetTrackVolume (NNSSndHandle * handle, u16 trackBitMask, int volume) {
    NNS_NULL_ASSERT(handle);
    NNS_MINMAX_ASSERT(volume, 0, SND_CALC_DECIBEL_SCALE_MAX);

    if (!NNS_SndHandleIsValid(handle)) {
        return;
    }

    SND_SetTrackVolume(
        handle->player->playerNo,
        trackBitMask,
        SND_CalcDecibel(volume)
    );
}

void NNS_SndPlayerSetTrackPitch (NNSSndHandle * handle, u16 trackBitMask, int pitch) {
    NNS_NULL_ASSERT(handle);
    NNS_MINMAX_ASSERT(pitch, NNS_SND_PLAYER_TRACK_PITCH_MIN, NNS_SND_PLAYER_TRACK_PITCH_MAX);

    if (!NNS_SndHandleIsValid(handle)) {
        return;
    }

    SND_SetTrackPitch(handle->player->playerNo, trackBitMask, pitch);
}

void NNS_SndPlayerSetTrackPan (NNSSndHandle * handle, u16 trackBitMask, int pan) {
    NNS_NULL_ASSERT(handle);
    NNS_MINMAX_ASSERT(pan, NNS_SND_PLAYER_TRACK_PAN_MIN, NNS_SND_PLAYER_TRACK_PAN_MAX);

    if (!NNS_SndHandleIsValid(handle)) {
        return;
    }

    SND_SetTrackPan(handle->player->playerNo, trackBitMask, pan);
}

void NNS_SndPlayerSetTrackPanRange (NNSSndHandle * handle, u16 trackBitMask, int panRange) {
    NNS_NULL_ASSERT(handle);
    NNS_MINMAX_ASSERT(panRange, NNS_SND_PLAYER_TRACK_PAN_RANGE_MIN, NNS_SND_PLAYER_TRACK_PAN_RANGE_MAX);

    if (!NNS_SndHandleIsValid(handle)) {
        return;
    }

    SND_SetTrackPanRange(handle->player->playerNo, trackBitMask, panRange);
}

void NNS_SndPlayerSetTrackModDepth (NNSSndHandle * handle, u16 trackBitMask, int depth) {
    NNS_NULL_ASSERT(handle);
    NNS_MINMAX_ASSERT(depth, 0, 255);

    if (!NNS_SndHandleIsValid(handle)) {
        return;
    }

    SND_SetTrackModDepth(handle->player->playerNo, trackBitMask, depth);
}

void NNS_SndPlayerSetTrackModSpeed (NNSSndHandle * handle, u16 trackBitMask, int speed) {
    NNS_NULL_ASSERT(handle);
    NNS_MINMAX_ASSERT(speed, 0, 255);

    if (!NNS_SndHandleIsValid(handle)) {
        return;
    }

    SND_SetTrackModSpeed(handle->player->playerNo, trackBitMask, speed);
}

void NNS_SndPlayerSetTrackAllocatableChannel (NNSSndHandle * handle, u16 trackBitMask, u32 chBitFlag) {
    NNS_NULL_ASSERT(handle);
    NNS_MINMAX_ASSERT(chBitFlag, 0, 0xffff);

    if (!NNS_SndHandleIsValid(handle)) {
        return;
    }

    SND_SetTrackAllocatableChannel(handle->player->playerNo, trackBitMask, chBitFlag);
}

void NNS_SndPlayerSetTempoRatio (NNSSndHandle * handle, int ratio) {
    NNS_NULL_ASSERT(handle);
    NNS_MINMAX_ASSERT(ratio, 1, 65535);

    if (!NNS_SndHandleIsValid(handle)) {
        return;
    }

    SND_SetPlayerTempoRatio(handle->player->playerNo, ratio);
}

void NNS_SndPlayerSetSeqNo (NNSSndHandle * handle, int seqNo) {
    NNS_NULL_ASSERT(handle);
    NNS_MINMAX_ASSERT(seqNo, 0, NNS_SND_PLAYER_SEQ_NO_MAX);

    if (!NNS_SndHandleIsValid(handle)) {
        return;
    }

    handle->player->seqType = NNS_SND_PLAYER_SEQ_TYPE_SEQ;
    handle->player->seqNo = (u16)seqNo;
}

void NNS_SndPlayerSetSeqArcNo (NNSSndHandle * handle, int seqArcNo, int index) {
    NNS_NULL_ASSERT(handle);
    NNS_MINMAX_ASSERT(seqArcNo, 0, NNS_SND_PLAYER_SEQ_NO_MAX);
    NNS_MINMAX_ASSERT(index, 0, NNS_SND_PLAYER_SEQARC_INDEX_MAX);

    if (!NNS_SndHandleIsValid(handle)) {
        return;
    }

    handle->player->seqType = NNS_SND_PLAYER_SEQ_TYPE_SEQARC;
    handle->player->seqNo = (u16)seqArcNo;
    handle->player->seqArcIndex = (u16)index;
}

NNSSndPlayerSeqType NNS_SndPlayerGetSeqType (NNSSndHandle * handle) {
    NNS_NULL_ASSERT(handle);

    if (!NNS_SndHandleIsValid(handle)) {
        return NNS_SND_PLAYER_SEQ_TYPE_INVALID;
    }

    return (NNSSndPlayerSeqType)(handle->player->seqType);
}

int NNS_SndPlayerGetSeqNo (NNSSndHandle * handle) {
    NNS_NULL_ASSERT(handle);

    if (!NNS_SndHandleIsValid(handle)) {
        return -1;
    }

    if (handle->player->seqType != NNS_SND_PLAYER_SEQ_TYPE_SEQ) {
        return -1;
    }

    return handle->player->seqNo;
}

int NNS_SndPlayerGetSeqArcNo (NNSSndHandle * handle) {
    NNS_NULL_ASSERT(handle);

    if (!NNS_SndHandleIsValid(handle)) {
        return -1;
    }

    if (handle->player->seqType != NNS_SND_PLAYER_SEQ_TYPE_SEQARC) {
        return -1;
    }

    return handle->player->seqNo;
}

int NNS_SndPlayerGetSeqArcIdx (NNSSndHandle * handle) {
    NNS_NULL_ASSERT(handle);

    if (!NNS_SndHandleIsValid(handle)) {
        return -1;
    }

    if (handle->player->seqType != NNS_SND_PLAYER_SEQ_TYPE_SEQARC) {
        return -1;
    }

    return handle->player->seqArcIndex;
}

BOOL NNS_SndPlayerReadVariable (NNSSndHandle * handle, int varNo, s16 * var) {
    NNSSndSeqPlayer * seqPlayer;

    NNS_NULL_ASSERT(handle);
    NNS_NULL_ASSERT(var);
    NNS_MINMAX_ASSERT(varNo, 0, SND_PLAYER_VARIABLE_NUM - 1);

    if (!NNS_SndHandleIsValid(handle)) {
        return FALSE;
    }

    seqPlayer = handle->player;

    if (!seqPlayer->startFlag) {
        *var = SND_DEFAULT_VARIABLE;
        return TRUE;
    }

    *var = SND_GetPlayerLocalVariable(seqPlayer->playerNo, varNo);
    return TRUE;
}

BOOL NNS_SndPlayerReadGlobalVariable (int varNo, s16 * var) {
    NNS_NULL_ASSERT(var);
    NNS_MINMAX_ASSERT(varNo, 0, SND_GLOBAL_VARIABLE_NUM - 1);

    *var = SND_GetPlayerGlobalVariable(varNo);
    return TRUE;
}

BOOL NNS_SndPlayerWriteVariable (NNSSndHandle * handle, int varNo, s16 var) {
    NNS_NULL_ASSERT(handle);
    NNS_MINMAX_ASSERT(varNo, 0, SND_PLAYER_VARIABLE_NUM - 1);

    if (!NNS_SndHandleIsValid(handle)) {
        return FALSE;
    }

    SND_SetPlayerLocalVariable(handle->player->playerNo, varNo, var);

    return TRUE;
}

BOOL NNS_SndPlayerWriteGlobalVariable (int varNo, s16 var) {
    NNS_MINMAX_ASSERT(varNo, 0, SND_GLOBAL_VARIABLE_NUM - 1);

    SND_SetPlayerGlobalVariable(varNo, var);

    return TRUE;
}

u32 NNS_SndPlayerGetTick (NNSSndHandle * handle) {
    NNSSndSeqPlayer * seqPlayer;

    NNS_NULL_ASSERT(handle);

    if (!NNS_SndHandleIsValid(handle)) {
        return 0;
    }

    seqPlayer = handle->player;

    if (!seqPlayer->startFlag) {
        return 0;
    }

    return SND_GetPlayerTickCounter(seqPlayer->playerNo);
}

BOOL NNS_SndPlayerReadDriverPlayerInfo (NNSSndHandle * handle, SNDPlayerInfo * info) {
    NNSSndSeqPlayer * seqPlayer;

    NNS_NULL_ASSERT(handle);

    if (!NNS_SndHandleIsValid(handle)) {
        return FALSE;
    }

    seqPlayer = handle->player;
    NNS_NULL_ASSERT(seqPlayer);

    return NNSi_SndReadDriverPlayerInfo(seqPlayer->playerNo, info);
}

BOOL NNS_SndPlayerReadDriverTrackInfo (NNSSndHandle * handle, int trackNo, SNDTrackInfo * info) {
    NNSSndSeqPlayer * seqPlayer;

    NNS_NULL_ASSERT(handle);

    if (!NNS_SndHandleIsValid(handle)) {
        return FALSE;
    }

    seqPlayer = handle->player;
    NNS_NULL_ASSERT(seqPlayer);

    return NNSi_SndReadDriverTrackInfo(seqPlayer->playerNo, trackNo, info);
}

void NNSi_SndPlayerInit (void) {
    NNSSndPlayer * player;
    int playerNo;

    NNS_FND_INIT_LIST(&sPrioList, NNSSndSeqPlayer, prioLink);
    NNS_FND_INIT_LIST(&sFreeList, NNSSndSeqPlayer, prioLink);

    for ( playerNo = 0; playerNo < SND_PLAYER_NUM ; playerNo++ ) {
        sSeqPlayer[playerNo].status = NNS_SND_SEQ_PLAYER_STATUS_STOP;
        sSeqPlayer[playerNo].playerNo = (u8)playerNo;
        NNS_FndAppendListObject(&sFreeList, &sSeqPlayer[playerNo]);
    }

    for ( playerNo = 0; playerNo < NNS_SND_PLAYER_NUM ; playerNo++ ) {
        player = &sPlayer[playerNo];

        NNS_FND_INIT_LIST(&player->playerList, NNSSndSeqPlayer, playerLink);
        NNS_FND_INIT_LIST(&player->heapList, NNSSndPlayerHeap, link);
        player->volume = 127;
        player->playableSeqCount = 1;
        player->allocChBitFlag = 0;
    }
}

void NNSi_SndPlayerMain (void) {
    NNSSndSeqPlayer * seqPlayer;
    NNSSndSeqPlayer * next;
    u32 status;
    int fader;

    status = SND_GetPlayerStatus();

    for ( seqPlayer = (NNSSndSeqPlayer *)NNS_FndGetNextListObject(&sPrioList, NULL);
          seqPlayer != NULL ; seqPlayer = next ) {
        next = (NNSSndSeqPlayer *)NNS_FndGetNextListObject(&sPrioList, seqPlayer);

        if (!seqPlayer->startFlag) {
            if (SND_IsFinishedCommandTag(seqPlayer->commandTag)) {
                seqPlayer->startFlag = TRUE;
            }
        }

        if (seqPlayer->startFlag) {
            if ((status & (1 << seqPlayer->playerNo)) == 0) {
                ShutdownPlayer(seqPlayer);
                continue;
            }
        }

        NNSi_SndFaderUpdate(&seqPlayer->fader);

        fader
            = SND_CalcDecibel(seqPlayer->initVolume)
              + SND_CalcDecibel(seqPlayer->extVolume)
              + SND_CalcDecibel(seqPlayer->player->volume)
              + SND_CalcDecibel(NNSi_SndFaderGet(&seqPlayer->fader) >> FADER_SHIFT)
            ;
        if (fader < -32768) {
            fader = -32768;
        } else if (fader > 32767) {
            fader = 32767;
        }

        if (fader != seqPlayer->volume) {
            SND_SetPlayerVolume(seqPlayer->playerNo, fader);
            seqPlayer->volume = (s16)fader;
        }

        if (seqPlayer->status == NNS_SND_SEQ_PLAYER_STATUS_FADEOUT) {
            if (NNSi_SndFaderIsFinished(&seqPlayer->fader)) {
                ForceStopSeq(seqPlayer);
            }
        }

        if (seqPlayer->prepareFlag) {
            SND_StartPreparedSeq(seqPlayer->playerNo);
            seqPlayer->prepareFlag = FALSE;
        }
    }
}

NNSSndSeqPlayer * NNSi_SndPlayerAllocSeqPlayer (NNSSndHandle * handle, int playerNo, int prio) {
    NNSSndSeqPlayer * seqPlayer;
    NNSSndPlayer * player;

    NNS_NULL_ASSERT(handle);
    NNS_MINMAX_ASSERT(playerNo, 0, NNS_SND_PLAYER_NO_MAX);
    NNS_MINMAX_ASSERT(prio, 0, NNS_SND_PLAYER_PRIO_MAX);

    player = &sPlayer[playerNo];

    if (NNS_SndHandleIsValid(handle)) {
        NNS_SndHandleReleaseSeq(handle);
    }

    if (player->playerList.numObjects >= player->playableSeqCount) {
        seqPlayer = (NNSSndSeqPlayer *)NNS_FndGetNextListObject(&player->playerList, NULL);
        if (seqPlayer == NULL) {
            return NULL;
        }
        if (prio < seqPlayer->prio) {
            return NULL;
        }

        ForceStopSeq(seqPlayer);
    }

    seqPlayer = AllocSeqPlayer(prio);
    if (seqPlayer == NULL) {
        return NULL;
    }

    InsertPlayerList(player, seqPlayer);

    seqPlayer->handle = handle;
    handle->player = seqPlayer;

    return seqPlayer;
}

void NNSi_SndPlayerFreeSeqPlayer (NNSSndSeqPlayer * seqPlayer) {
    NNS_NULL_ASSERT(seqPlayer);

    ShutdownPlayer(seqPlayer);
}

void NNSi_SndPlayerStartSeq (NNSSndSeqPlayer * seqPlayer, const void * seqDataBase, u32 seqDataOffset, const SNDBankData * bank) {
    NNSSndPlayer * player;

    NNS_NULL_ASSERT(seqPlayer);
    NNS_NULL_ASSERT(seqDataBase);
    NNS_NULL_ASSERT(bank);

    player = seqPlayer->player;
    NNS_NULL_ASSERT(player);

    SND_PrepareSeq(
        seqPlayer->playerNo,
        seqDataBase,
        seqDataOffset,
        bank
    );
    if (player->allocChBitFlag) {
        SND_SetTrackAllocatableChannel(
            seqPlayer->playerNo,
            0xffff,
            player->allocChBitFlag
        );
    }

    InitPlayer(seqPlayer);
    seqPlayer->commandTag = SND_GetCurrentCommandTag();
    seqPlayer->prepareFlag = TRUE;
    seqPlayer->status = NNS_SND_SEQ_PLAYER_STATUS_PLAY;
}

void NNSi_SndPlayerStopSeq (NNSSndSeqPlayer * seqPlayer, int fadeFrame) {
    if (seqPlayer == NULL) {
        return;
    }
    if (seqPlayer->status == NNS_SND_SEQ_PLAYER_STATUS_STOP) {
        return;
    }

    if (fadeFrame == 0) {
        ForceStopSeq(seqPlayer);
        return;
    }

    NNSi_SndFaderSet(&seqPlayer->fader, 0, fadeFrame);

    SetPlayerPriority(seqPlayer, 0);

    seqPlayer->status = NNS_SND_SEQ_PLAYER_STATUS_FADEOUT;
}

void NNSi_SndPlayerPause (NNSSndSeqPlayer * seqPlayer, BOOL flag) {
    if (seqPlayer == NULL) {
        return;
    }

    if (flag != seqPlayer->pauseFlag) {
        SND_PauseSeq(seqPlayer->playerNo, flag);
        seqPlayer->pauseFlag = (u8)flag;
    }
}

NNSSndHeapHandle NNSi_SndPlayerAllocHeap (int playerNo, NNSSndSeqPlayer * seqPlayer) {
    NNSSndPlayer * player;
    NNSSndPlayerHeap * heap;

    NNS_MINMAX_ASSERT(playerNo, 0, NNS_SND_PLAYER_NO_MAX);

    player = &sPlayer[playerNo];

    heap = (NNSSndPlayerHeap *)NNS_FndGetNextListObject(&player->heapList, NULL);
    if (heap == NULL) {
        return NULL;
    }

    NNS_FndRemoveListObject(&player->heapList, heap);

    heap->player = seqPlayer;
    seqPlayer->heap = heap;

    NNS_SndHeapClear(heap->handle);

    return heap->handle;
}

static void InitPlayer (NNSSndSeqPlayer * seqPlayer) {
    NNS_NULL_ASSERT(seqPlayer);

    seqPlayer->pauseFlag = FALSE;
    seqPlayer->startFlag = FALSE;
    seqPlayer->prepareFlag = FALSE;

    seqPlayer->seqType = NNS_SND_PLAYER_SEQ_TYPE_INVALID;

    seqPlayer->volume = 0;

    seqPlayer->initVolume = 127;
    seqPlayer->extVolume = 127;

    NNSi_SndFaderInit(&seqPlayer->fader);
    NNSi_SndFaderSet(&seqPlayer->fader, 127 << FADER_SHIFT, 1);
}

static void InsertPlayerList (NNSSndPlayer * player, NNSSndSeqPlayer * seqPlayer) {
    NNSSndSeqPlayer * next = NULL;
    while ((next = (NNSSndSeqPlayer *)NNS_FndGetNextListObject(&player->playerList, next)) != NULL) {
        if (seqPlayer->prio < next->prio) {
            break;
        }
    }

    NNS_FndInsertListObject(&player->playerList, next, seqPlayer);

    seqPlayer->player = player;
}

static void InsertPrioList (NNSSndSeqPlayer * seqPlayer) {
    NNSSndSeqPlayer * next = NULL;
    while ((next = (NNSSndSeqPlayer *)NNS_FndGetNextListObject(&sPrioList, next)) != NULL) {
        if (seqPlayer->prio < next->prio) {
            break;
        }
    }

    NNS_FndInsertListObject(&sPrioList, next, seqPlayer);
}

static void ForceStopSeq (NNSSndSeqPlayer * seqPlayer) {
    if (seqPlayer->status == NNS_SND_SEQ_PLAYER_STATUS_FADEOUT) {
        SND_SetPlayerVolume(seqPlayer->playerNo, SND_VOLUME_DB_MIN);
    }
    SND_StopSeq(seqPlayer->playerNo);
    ShutdownPlayer(seqPlayer);
}

static NNSSndSeqPlayer * AllocSeqPlayer (int prio) {
    NNSSndSeqPlayer * seqPlayer;

    NNS_MINMAX_ASSERT(prio, 0, NNS_SND_PLAYER_PRIO_MAX);

    seqPlayer = (NNSSndSeqPlayer *)NNS_FndGetNextListObject(&sFreeList, NULL);
    if (seqPlayer == NULL) {
        seqPlayer = (NNSSndSeqPlayer *)NNS_FndGetNextListObject(&sPrioList, NULL);
        NNS_NULL_ASSERT(seqPlayer);

        if (prio < seqPlayer->prio) {
            return NULL;
        }

        ForceStopSeq(seqPlayer);
    }
    NNS_FndRemoveListObject(&sFreeList, seqPlayer);

    seqPlayer->prio = (u8)prio;

    InsertPrioList(seqPlayer);

    return seqPlayer;
}

static void ShutdownPlayer (NNSSndSeqPlayer * seqPlayer) {
    NNSSndPlayer * player;

    NNS_NULL_ASSERT(seqPlayer);

    if (seqPlayer->handle != NULL) {
        NNS_ASSERT(seqPlayer == seqPlayer->handle->player);
        seqPlayer->handle->player = NULL;
        seqPlayer->handle = NULL;
    }

    player = seqPlayer->player;
    NNS_NULL_ASSERT(player);
    NNS_FndRemoveListObject(&player->playerList, seqPlayer);
    seqPlayer->player = NULL;

    if (seqPlayer->heap != NULL) {
        NNS_FndAppendListObject(&player->heapList, seqPlayer->heap);
        seqPlayer->heap->player = NULL;
        seqPlayer->heap = NULL;
    }

    NNS_FndRemoveListObject(&sPrioList, seqPlayer);
    NNS_FndAppendListObject(&sFreeList, seqPlayer);

    seqPlayer->status = NNS_SND_SEQ_PLAYER_STATUS_STOP;
}

static void PlayerHeapDisposeCallback (void * mem, u32, u32, u32) {
    NNSSndPlayerHeap * heap = (NNSSndPlayerHeap *)mem;
    NNSSndSeqPlayer * seqPlayer;

    if (heap->handle == NNS_SND_HEAP_INVALID_HANDLE) {
        return;
    }

    NNS_SndHeapDestroy(heap->handle);

    seqPlayer = heap->player;
    if (seqPlayer != NULL) {
        seqPlayer->heap = NULL;
    } else {
        NNS_FndRemoveListObject(&sPlayer[heap->playerNo].heapList, heap);
    }
}

static void SetPlayerPriority (NNSSndSeqPlayer * seqPlayer, int priority) {
    NNSSndPlayer * player;

    NNS_NULL_ASSERT(seqPlayer);
    NNS_MINMAX_ASSERT(priority, 0, NNS_SND_PLAYER_PRIO_MAX);

    player = seqPlayer->player;
    if (player != NULL) {
        NNS_FndRemoveListObject(&player->playerList, seqPlayer);
        seqPlayer->player = NULL;
    }
    NNS_FndRemoveListObject(&sPrioList, seqPlayer);

    seqPlayer->prio = (u8)priority;

    if (player != NULL) {
        InsertPlayerList(player, seqPlayer);
    }
    InsertPrioList(seqPlayer);
}
