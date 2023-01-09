#ifndef SDK_SMALL_BUILD

#include <nnsys/snd/sndarc_stream.h>
#include <nnsys/misc.h>
#include <nnsys/snd/sndarc.h>
#include <nnsys/snd/stream.h>
#include <nnsys/snd/fader.h>
#include <nnsys/snd/config.h>

#define BLOCK_SIZE 512
#define BLOCK_NUM 4

#define COMMAND_BUFFER_NUM (NNS_SND_STRM_PLAYER_NUM * (BLOCK_NUM - 2))

#define ADPCM_INDEX_NUM 89

#define STRM_CHANNEL_MAX 6

struct NNSSndStrmPlayer;

typedef BOOL (* OpenStreamFunc)(struct NNSSndStrmPlayer * player, u32 fileId);
typedef void (* CloseStreamFunc)(struct NNSSndStrmPlayer * player);
typedef s32 (* ReadStreamFunc)(struct NNSSndStrmPlayer * player, void * dest, u32 size, u32 offset);
typedef void (* CancelStreamFunc)(struct NNSSndStrmPlayer * player);

typedef struct NNSSndStrmData {
    struct SNDBinaryFileHeader fileHeader;
    struct SNDBinaryBlockHeader blockHeader;

    u8 format;
    u8 loopFlag;
    u8 numChannels;
    u8 pad_;
    u16 sampleRate;
    u16 timer;
    u32 loopStart;
    u32 loopEnd;
    u32 dataOffset;
    u32 numBlocks;
    u32 blockSize;
    u32 blockSamples;
    u32 lastBlockSize;
    u32 lastBlockSamples;
} NNSSndStrmData;

typedef enum StrmFormat {
    STRM_FORMAT_PCM8,
    STRM_FORMAT_PCM16,
    STRM_FORMAT_ADPCM
} StrmFormat;

typedef struct AdpcmState {
    s16 prevSample;
    u8 prevIndex;
    u8 padding;
} AdpcmState;

typedef struct NNSSndStrmPlayer {
    NNSSndStrm stream;
    FSFile file;
    u32 fileOffset;
    NNSSndStrmData info;
    NNSSndFader fader;
    AdpcmState adpcmState[STRM_CHANNEL_MAX];

    BOOL activeFlag  : 1;
    BOOL playFlag    : 1;
    BOOL startFlag   : 1;
    BOOL fadeOutFlag : 1;
    BOOL dirtyFlag   : 1;
    BOOL finishFlag  : 1;
    BOOL monoFlag    : 1;
    volatile int finishCounter;
    volatile BOOL prepareFlag;
    volatile int commandCount;
    int allocChannelCount;

    u8 numChannels;
    u8 padding;
    u8 chNoList[STRM_CHANNEL_MAX];
    void * buffer;
    u32 bufSize;

    NNSSndStrmCallback strmCallback;
    void * strmCallbackArg;
    NNSSndArcStrmCallback sndArcStrmCallback;
    void * sndArcStrmCallbackArg;

    int strmNo;
    int playerNo;

    NNSSndStrmHandle * handle;
    int prio;
    int initVolume;
    int extVolume;
    int volume;
    u32 curSample;

    OpenStreamFunc openStreamFunc;
    CloseStreamFunc closeStreamFunc;
    ReadStreamFunc readStreamFunc;
    CancelStreamFunc cancelStreamFunc;
} NNSSndStrmPlayer;

typedef struct LoadCommand {
    NNSFndLink link;
    NNSSndStrmPlayer * player;
    NNSSndStrmCallbackStatus status;
    int numChannels;
    void * buffer[STRM_CHANNEL_MAX];
    u32 bufLen;
} LoadCommand;

static const s8 cAdpcmIndexTable[16] =
{
    -1, -1, -1, -1, 2, 4, 6, 8,
    -1, -1, -1, -1, 2, 4, 6, 8,
};

static const s16 cAdpcmStepSizeTable[ADPCM_INDEX_NUM] =
{
    7, 8, 9, 10, 11, 12, 13, 14, 16, 17,
    19, 21, 23, 25, 28, 31, 34, 37, 41, 45,
    50, 55, 60, 66, 73, 80, 88, 97, 107, 118,
    130, 143, 157, 173, 190, 209, 230, 253, 279, 307,
    337, 371, 408, 449, 494, 544, 598, 658, 724, 796,
    876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066,
    2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358,
    5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899,
    15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767
};

static NNSSndStrmThread sStrmThread;
static NNSSndStrmThread * sPrepareThread = NULL;

static NNSFndList sFreeCommandList;
static LoadCommand sLoadCommandBuffer[COMMAND_BUFFER_NUM];

static NNSSndStrmPlayer sStrmPlayer[NNS_SND_STRM_PLAYER_NUM];

static u8 * sDecodeBuffer;
static u8 sDecodeBufferArea[BLOCK_SIZE] ATTRIBUTE_ALIGN(32);
static OSMutex sDecodeBufferMutex;

static void StrmThread(void * arg);
static NNSSndStrmPlayer * AllocPlayer(NNSSndStrmHandle * handle, int playerNo, int playerPrio);
static void FreePlayer(NNSSndStrmPlayer * player);
static BOOL PrepareStrm(NNSSndStrmHandle * handle, const NNSSndArcStrmInfo * strmInfo, int playerNo, int playerPrio, int strmNo, u32 offset, NNSSndStrmCallback strmCallback, void * strmCallbackArg, NNSSndArcStrmCallback sndArcStrmCallback, void * sndArcStrmCallbackArg);
static void StopStrm(NNSSndStrmPlayer * player, int fadeFrame);
static void ForceStopStrm(NNSSndStrmPlayer * player);
static void ShutdownPlayer(NNSSndStrmPlayer * player);
static BOOL AllocChannel(NNSSndStrmPlayer * player, int numChannels, const u8 chNoList[]);
static void FreeChannel(NNSSndStrmPlayer * player);
static LoadCommand * ReadCommandBuffer(NNSFndList * commandList);
static LoadCommand * AllocCommandBuffer(void);
static void FreeCommandBuffer(LoadCommand * command);
static s16 DecodeAdpcm(int code, AdpcmState * state);
static void StrmCallback(NNSSndStrmCallbackStatus status, int numChannels, void * buffer[], u32 len, NNSSndStrmFormat format, void * arg);
static void DisposeCallback(void * mem, u32 size, u32 data1, u32 data2);
static void CreateThread(NNSSndStrmThread * thread, u32 threadPrio);
static void RemoveCommandByPlayer(NNSFndList * commandList, const NNSSndStrmPlayer * player);
static void MakeWaveData(LoadCommand * command);
static void OnDataEnd(NNSSndStrmPlayer * player);

static void SetupStreamFunction(NNSSndStrmPlayer * player, u32 fileId);

static BOOL OpenFileStream(NNSSndStrmPlayer * player, u32 fileId);
static void CloseFileStream(NNSSndStrmPlayer * player);
static s32 ReadFileStream(NNSSndStrmPlayer * player, void * dest, u32 size, u32 offset);
static void CancelFileStream(NNSSndStrmPlayer * player);

static BOOL OpenMemoryStream(NNSSndStrmPlayer * player, u32 fileId);
static void CloseMemoryStream(NNSSndStrmPlayer * player);
static s32 ReadMemoryStream(NNSSndStrmPlayer * player, void * dest, u32 size, u32 offset);
static void CancelMemoryStream(NNSSndStrmPlayer * player);

static NNS_SND_INLINE s16 DecodeAdpcm (int code, AdpcmState * state) {
    int step;
    int sample;
    int index;
    int d;

    sample = state->prevSample;
    index = state->prevIndex;

    step = cAdpcmStepSizeTable[index];

    d = step >> 3;
    if (code & 4) {
        d += step;
    }
    if (code & 2) {
        d += step >> 1;
    }
    if (code & 1) {
        d += step >> 2;
    }

    if (code & 8) {
        sample -= d;
        if (sample < -32768) {
            sample = -32768;
        }
    } else {
        sample += d;
        if (sample > 32767) {
            sample = 32767;
        }
    }

    index += cAdpcmIndexTable[code];

    if (index < 0) {
        index = 0;
    } else if (index > ADPCM_INDEX_NUM - 1) {
        index = ADPCM_INDEX_NUM - 1;
    }

    state->prevSample = (s16)sample;
    state->prevIndex = (u8)index;

    return (s16)sample;
}

void NNS_SndArcStrmInit (u32 threadPrio, NNSSndHeapHandle heap) {
    int playerNo;
    NNSSndStrmPlayer * player;
    int i;
    BOOL result;

    NNS_ASSERT(OS_IsThreadAvailable());

    {
        static BOOL initialized = FALSE;
        if (initialized) {
            result = NNS_SndArcStrmSetupPlayer(heap);
            NNS_ASSERT(result);
            return;
        }
        initialized = TRUE;
    }

    NNS_FND_INIT_LIST(&sFreeCommandList, LoadCommand, link);
    for ( i = 0 ; i < COMMAND_BUFFER_NUM ; i++ ) {
        NNS_FndAppendListObject(&sFreeCommandList, &sLoadCommandBuffer[i]);
    }

    OS_InitMutex(&sDecodeBufferMutex);
    sDecodeBuffer = sDecodeBufferArea;

    for ( playerNo = 0; playerNo < NNS_SND_STRM_PLAYER_NUM ; ++playerNo ) {
        player = &sStrmPlayer[playerNo];

        player->activeFlag = FALSE;
        FS_InitFile(&player->file);

        NNS_SndStrmInit(&player->stream);

        player->playerNo = playerNo;

        player->numChannels = 0;
        player->buffer = NULL;
        player->bufSize = 0;

        player->allocChannelCount = 0;
    }

    result = NNS_SndArcStrmSetupPlayer(heap);
    NNS_ASSERT(result);

    CreateThread(&sStrmThread, threadPrio);
}

BOOL NNS_SndArcStrmSetupPlayer (NNSSndHeapHandle heap) {
    int playerNo;
    const NNSSndArcStrmPlayerInfo * playerInfo;
    NNSSndStrmPlayer * player;
    void * buffer;
    u32 bufSize;
    int i;

    for ( playerNo = 0; playerNo < NNS_SND_STRM_PLAYER_NUM ; ++playerNo ) {
        player = &sStrmPlayer[playerNo];

        playerInfo = NNS_SndArcGetStrmPlayerInfo(playerNo);
        if (playerInfo == NULL) {
            continue;
        }

        player->numChannels = playerInfo->numChannels;
        for ( i = 0 ; i < playerInfo->numChannels ; i++ ) {
            player->chNoList[i] = playerInfo->chNoList[i];
        }

        if (heap != NNS_SND_HEAP_INVALID_HANDLE) {
            bufSize = (unsigned long)(BLOCK_SIZE * BLOCK_NUM * player->numChannels);
            buffer = NNS_SndHeapAlloc(heap, bufSize, DisposeCallback, (u32)player, 0);
            if (buffer == NULL) {
                return FALSE;
            }

            ForceStopStrm(player);

            player->buffer = buffer;
            player->bufSize = bufSize;
        }
    }

    return TRUE;
}

void NNS_SndArcStrmCreatePrepareThread (NNSSndStrmThread * thread, u32 threadPrio) {
    if (sPrepareThread != NULL) {
        return;
    }

    CreateThread(thread, threadPrio);

    sPrepareThread = thread;
}

BOOL NNS_SndArcStrmPrepare (struct NNSSndStrmHandle * handle, int strmNo, u32 offset) {
    const NNSSndArcStrmInfo * strmInfo;

    NNS_NULL_ASSERT(handle);

    strmInfo = NNS_SndArcGetStrmInfo(strmNo);
    if (strmInfo == NULL) {
        return FALSE;
    }

    return PrepareStrm(
        handle,
        strmInfo,
        strmInfo->playerNo,
        strmInfo->playerPrio,
        strmNo,
        offset,
        NULL,
        NULL,
        NULL,
        NULL
    );
}

BOOL NNS_SndArcStrmPrepareEx (struct NNSSndStrmHandle * handle, int playerNo, int playerPrio, int strmNo, u32 offset) {
    const NNSSndArcStrmInfo * strmInfo;

    NNS_NULL_ASSERT(handle);

    strmInfo = NNS_SndArcGetStrmInfo(strmNo);
    if (strmInfo == NULL) {
        return FALSE;
    }

    return PrepareStrm(
        handle,
        strmInfo,
        playerNo >= 0 ? playerNo   : strmInfo->playerNo,
        playerPrio >= 0 ? playerPrio : strmInfo->playerPrio,
        strmNo,
        offset,
        NULL,
        NULL,
        NULL,
        NULL
    );
}

BOOL NNS_SndArcStrmPrepareEx2 (struct NNSSndStrmHandle * handle, int playerNo, int playerPrio, int strmNo, u32 offset, NNSSndStrmCallback strmCallback, void * strmCallbackArg, NNSSndArcStrmCallback sndArcStrmCallback, void * sndArcStrmCallbackArg) {
    const NNSSndArcStrmInfo * strmInfo;

    NNS_NULL_ASSERT(handle);

    strmInfo = NNS_SndArcGetStrmInfo(strmNo);
    if (strmInfo == NULL) {
        return FALSE;
    }

    return PrepareStrm(
        handle,
        strmInfo,
        playerNo >= 0 ? playerNo   : strmInfo->playerNo,
        playerPrio >= 0 ? playerPrio : strmInfo->playerPrio,
        strmNo,
        offset,
        strmCallback,
        strmCallbackArg,
        sndArcStrmCallback,
        sndArcStrmCallbackArg
    );
}

void NNS_SndArcStrmStartPrepared (NNSSndStrmHandle * handle) {
    NNS_NULL_ASSERT(handle);

    if (!NNS_SndStrmHandleIsValid(handle)) {
        return;
    }

    handle->player->startFlag = TRUE;
}

BOOL NNS_SndArcStrmIsPrepared (NNSSndStrmHandle * handle) {
    NNS_NULL_ASSERT(handle);

    if (!NNS_SndStrmHandleIsValid(handle)) {
        return FALSE;
    }

    return handle->player->prepareFlag;
}

BOOL NNS_SndArcStrmStart (NNSSndStrmHandle * handle, int strmNo, u32 offset) {
    BOOL result;

    NNS_NULL_ASSERT(handle);

    result = NNS_SndArcStrmPrepare(handle, strmNo, offset);
    if (!result) {
        return FALSE;
    }

    NNS_SndArcStrmStartPrepared(handle);

    return TRUE;
}

BOOL NNS_SndArcStrmStartEx (NNSSndStrmHandle * handle, int playerNo, int playerPrio, int strmNo, u32 offset) {
    BOOL result;

    NNS_NULL_ASSERT(handle);

    result = NNS_SndArcStrmPrepareEx(handle, playerNo, playerPrio, strmNo, offset);
    if (!result) {
        return FALSE;
    }

    NNS_SndArcStrmStartPrepared(handle);

    return TRUE;
}

BOOL NNS_SndArcStrmStartEx2 (NNSSndStrmHandle * handle, int playerNo, int playerPrio, int strmNo, u32 offset, NNSSndStrmCallback strmCallback, void * strmCallbackArg, NNSSndArcStrmCallback sndArcStrmCallback, void * sndArcStrmCallbackArg) {
    BOOL result;

    NNS_NULL_ASSERT(handle);

    result = NNS_SndArcStrmPrepareEx2(
        handle,
        playerNo,
        playerPrio,
        strmNo,
        offset,
        strmCallback,
        strmCallbackArg,
        sndArcStrmCallback,
        sndArcStrmCallbackArg
    );
    if (!result) {
        return FALSE;
    }

    NNS_SndArcStrmStartPrepared(handle);

    return TRUE;
}

void NNS_SndArcStrmStop (NNSSndStrmHandle * handle, int fadeFrame) {
    NNS_NULL_ASSERT(handle);

    if (!NNS_SndStrmHandleIsValid(handle)) {
        return;
    }

    StopStrm(handle->player, fadeFrame);
}

void NNS_SndArcStrmStopAll (int fadeFrame) {
    int playerNo;

    for ( playerNo = 0; playerNo < NNS_SND_STRM_PLAYER_NUM ; ++playerNo ) {
        if (!sStrmPlayer[playerNo].activeFlag) {
            continue;
        }

        StopStrm(&sStrmPlayer[playerNo], fadeFrame);
    }
}

void NNS_SndArcStrmSetVolume (struct NNSSndStrmHandle * handle, int volume) {
    NNS_NULL_ASSERT(handle);
    NNS_MINMAX_ASSERT(volume, 0, SND_CALC_DECIBEL_SCALE_MAX);

    if (!NNS_SndStrmHandleIsValid(handle)) {
        return;
    }

    handle->player->extVolume = volume;
}

void NNS_SndArcStrmMoveVolume (struct NNSSndStrmHandle * handle, int volume, int frames) {
    NNS_NULL_ASSERT(handle);

    if (!NNS_SndStrmHandleIsValid(handle)) {
        return;
    }

    if (handle->player->fadeOutFlag) {
        return;
    }

    NNSi_SndFaderSet(&handle->player->fader, volume << 8, frames);
}

void NNS_SndArcStrmSetChannelVolume (struct NNSSndStrmHandle * handle, int chNo, int volume) {
    NNS_NULL_ASSERT(handle);

    if (!NNS_SndStrmHandleIsValid(handle)) {
        return;
    }

    NNS_SndStrmSetChannelVolume(&handle->player->stream, chNo, SND_CalcDecibel(volume));
}

void NNS_SndArcStrmSetChannelPan (struct NNSSndStrmHandle * handle, int chNo, int pan) {
    NNS_NULL_ASSERT(handle);

    if (!NNS_SndStrmHandleIsValid(handle)) {
        return;
    }

    NNS_SndStrmSetChannelPan(&handle->player->stream, chNo, pan);
}

void NNS_SndStrmHandleInit (NNSSndStrmHandle * handle) {
    NNS_NULL_ASSERT(handle);

    handle->player = NULL;
}

void NNS_SndStrmHandleRelease (NNSSndStrmHandle * handle) {
    NNS_NULL_ASSERT(handle);

    if (handle->player == NULL) {
        return;
    }

    NNS_ASSERT(handle == handle->player->handle);

    handle->player->handle = NULL;
    handle->player = NULL;
}

u32 NNS_SndArcStrmGetCurrentPlayingPos (NNSSndStrmHandle * handle) {
    NNSSndStrmPlayer * player;
    u64 pos;

    NNS_NULL_ASSERT(handle);

    if (!NNS_SndStrmHandleIsValid(handle)) {
        return 0;
    }

    player = handle->player;

    pos = player->curSample;
    pos *= 1000;
    pos /= player->info.sampleRate;

    return (u32)pos;
}

u32 NNS_SndArcStrmGetTimeLength (NNSSndStrmHandle * handle) {
    NNSSndStrmPlayer * player;
    u64 len;

    NNS_NULL_ASSERT(handle);

    if (!NNS_SndStrmHandleIsValid(handle)) {
        return 0;
    }

    player = handle->player;

    len = player->info.loopEnd;
    len *= 1000;
    len /= player->info.sampleRate;

    return (u32)len;
}

int NNS_SndArcStrmGetChannelCount (NNSSndStrmHandle * handle) {
    NNSSndStrmPlayer * player;

    NNS_NULL_ASSERT(handle);

    if (!NNS_SndStrmHandleIsValid(handle)) {
        return 0;
    }

    player = handle->player;
    return player->info.numChannels;
}

BOOL NNS_SndArcStrmAllocChannel (int playerNo) {
    NNSSndStrmPlayer * player;

    NNS_MINMAX_ASSERT(playerNo, NNS_SND_STRM_PLAYER_MIN, NNS_SND_STRM_PLAYER_MAX);

    player = &sStrmPlayer[playerNo];

    if (player->activeFlag) {
        OS_Warning("Cannot call NNS_SndArcStrmAllocChannel for active player.\n");
        return FALSE;
    }

    if (!AllocChannel(player, player->numChannels, player->chNoList)) {
        return FALSE;
    }

    return TRUE;
}

void NNS_SndArcStrmFreeChannel (int playerNo) {
    NNS_MINMAX_ASSERT(playerNo, NNS_SND_STRM_PLAYER_MIN, NNS_SND_STRM_PLAYER_MAX);

    FreeChannel(&sStrmPlayer[playerNo]);
}

void NNSi_SndArcStrmMain (void) {
    NNSSndStrmPlayer * player;
    int playerNo;
    int volume;

    for ( playerNo = 0; playerNo < NNS_SND_STRM_PLAYER_NUM ; ++playerNo ) {
        player = &sStrmPlayer[playerNo];

        if (!player->activeFlag) {
            continue;
        }

        if (player->finishCounter == 0) {
            ForceStopStrm(player);
            continue;
        }

        if (player->startFlag) {
            if (player->prepareFlag) {
                NNS_SndStrmStart(&player->stream);

                player->playFlag = TRUE;
                player->startFlag = FALSE;
            }
        }

        if (!player->playFlag) {
            continue;
        }

        NNSi_SndFaderUpdate(&player->fader);

        volume
            = SND_CalcDecibel(NNSi_SndFaderGet(&player->fader) >> 8)
              + SND_CalcDecibel(player->initVolume)
              + SND_CalcDecibel(player->extVolume)
            ;
        if (volume != player->volume) {
            NNS_SndStrmSetVolume(&player->stream, volume);

            player->volume = volume;
        }

        if (player->fadeOutFlag) {
            if (NNSi_SndFaderIsFinished(&player->fader)) {
                ForceStopStrm(player);
            }
        }
    }
}

void NNSi_SndArcStrmSetPlayerBuffer (int playerNo, void * buffer, u32 len) {
    NNSSndStrmPlayer * player;

    NNS_MINMAX_ASSERT(playerNo, NNS_SND_STRM_PLAYER_MIN, NNS_SND_STRM_PLAYER_MAX);

    player = &sStrmPlayer[playerNo];

    player->buffer = buffer;
    player->bufSize = len;
}

void NNSi_SndArcStrmSetDecodeBuffer (void * buffer, u32) {
    OS_LockMutex(&sDecodeBufferMutex);
    sDecodeBuffer = buffer;
    OS_UnlockMutex(&sDecodeBufferMutex);
}

void NNSi_SndArcStrmStopByChannel (u32 chBitMask) {
    int playerNo;
    int chNo;

    for ( playerNo = 0; playerNo < NNS_SND_STRM_PLAYER_NUM ; ++playerNo ) {
        NNSSndStrmPlayer * player = &sStrmPlayer[playerNo];
        if (!player->activeFlag) {
            continue;
        }

        for ( chNo = 0; chNo < player->numChannels ; chNo++ ) {
            if (chBitMask & (1 << player->chNoList[chNo])) {
                StopStrm(player, 0);
                break;
            }
        }
    }
}

OSThread * NNSi_SndArcStrmGetThread () {
    return &sStrmThread.thread;
}

static NNSSndStrmPlayer * AllocPlayer (NNSSndStrmHandle * handle, int playerNo, int prio) {
    NNSSndStrmPlayer * player;

    NNS_NULL_ASSERT(handle);
    NNS_MINMAX_ASSERT(playerNo, 0, NNS_SND_STRM_PLAYER_NUM - 1);
    NNS_MINMAX_ASSERT(prio, NNS_SND_STRM_PLAYER_PRIO_MIN, NNS_SND_STRM_PLAYER_PRIO_MAX);

    if (NNS_SndStrmHandleIsValid(handle)) {
        NNS_SndStrmHandleRelease(handle);
    }

    player = &sStrmPlayer[playerNo];

    if (player->buffer == NULL) {
        return NULL;
    }

    if (player->activeFlag) {
        if (prio < player->prio) {
            return NULL;
        }
        ForceStopStrm(player);
    }

    player->prio = prio;
    player->activeFlag = TRUE;

    player->handle = handle;
    handle->player = player;

    return player;
}

static void FreePlayer (NNSSndStrmPlayer * player) {
    NNS_NULL_ASSERT(player);

    if (player->handle != NULL) {
        player->handle->player = NULL;
        player->handle = NULL;
    }

    player->activeFlag = FALSE;
    player->startFlag = FALSE;
    player->playFlag = FALSE;
}

BOOL PrepareStrm (struct NNSSndStrmHandle * handle, const NNSSndArcStrmInfo * strmInfo, int playerNo, int playerPrio, int strmNo, u32 offset, NNSSndStrmCallback strmCallback, void * strmCallbackArg, NNSSndArcStrmCallback sndArcStrmCallback, void * sndArcStrmCallbackArg) {
    NNSSndStrmPlayer * player;
    NNSSndStrmFormat format;
    int numChannels;
    u64 tmpU64;
    BOOL ret;

    NNS_NULL_ASSERT(handle);
    NNS_NULL_ASSERT(strmInfo);

    player = AllocPlayer(handle, playerNo, playerPrio);
    if (player == NULL) {
        return FALSE;
    }

    SetupStreamFunction(player, strmInfo->fileId);

    if (!player->openStreamFunc(player, strmInfo->fileId)) {
        FreePlayer(player);
        return FALSE;
    }

    tmpU64 = player->info.sampleRate;
    tmpU64 *= offset;
    tmpU64 /= 1000;
    player->curSample = (u32)tmpU64;
    if (player->curSample != 0 && player->info.format == STRM_FORMAT_ADPCM) {
        player->dirtyFlag = TRUE;
    } else {
        player->dirtyFlag = FALSE;
    }
    player->finishCounter = BLOCK_NUM;
    player->finishFlag = FALSE;
    player->playFlag = FALSE;
    player->prepareFlag = FALSE;
    player->startFlag = FALSE;
    player->fadeOutFlag = FALSE;
    player->commandCount = 0;

    player->strmCallback = strmCallback;
    player->strmCallbackArg = strmCallbackArg;
    player->sndArcStrmCallback = sndArcStrmCallback;
    player->sndArcStrmCallbackArg = sndArcStrmCallbackArg;

    player->strmNo = strmNo;

    player->volume = 0;
    player->initVolume = strmInfo->volume;
    player->extVolume = 127;
    NNSi_SndFaderInit(&player->fader);
    NNSi_SndFaderSet(&player->fader, 127 << 8, 1);

    switch (player->info.format) {
    case STRM_FORMAT_PCM8:
        format = NNS_SND_STRM_FORMAT_PCM8;
        break;
    case STRM_FORMAT_PCM16:
    case STRM_FORMAT_ADPCM:
        format = NNS_SND_STRM_FORMAT_PCM16;
        break;
    }

    numChannels = player->info.numChannels;
    if (strmInfo->flags & NNS_SND_ARC_STRM_FORCE_STEREO) {
        numChannels = 2;
    }
    if (numChannels > player->numChannels) {
        numChannels = player->numChannels;
    }
    player->monoFlag = (numChannels == 1) ? TRUE : FALSE;

    ret = AllocChannel(player, numChannels, player->chNoList);
    if (!ret) {
        player->closeStreamFunc(player);
        FreePlayer(player);
        return FALSE;
    }

    ret = NNS_SndStrmSetup(
        &player->stream,
        format,
        player->buffer,
        player->bufSize * numChannels / player->numChannels,
        player->info.timer,
        BLOCK_NUM,
        StrmCallback,
        player
    );
    if (!ret) {
        FreeChannel(player);
        player->closeStreamFunc(player);
        FreePlayer(player);
        return FALSE;
    }

    if (numChannels == 2) {
        NNS_SndStrmSetChannelPan(&player->stream, 0, 0);
        NNS_SndStrmSetChannelPan(&player->stream, 1, 127);
    }

    return TRUE;
}

static void StopStrm (NNSSndStrmPlayer * player, int fadeFrame) {
    NNS_NULL_ASSERT(player);

    if (!player->playFlag) {
        ForceStopStrm(player);
        return;
    }

    if (fadeFrame == 0) {
        ForceStopStrm(player);
        return;
    }

    NNSi_SndFaderSet(&player->fader, 0, fadeFrame);

    player->fadeOutFlag = TRUE;

    player->prio = 0;
}

static void ForceStopStrm (NNSSndStrmPlayer * player) {
    NNS_NULL_ASSERT(player);

    OS_LockMutex(&sStrmThread.mutex);
    if (sPrepareThread) {
        OS_LockMutex(&sPrepareThread->mutex);
    }

    if (player->playFlag) {
        NNS_SndStrmStop(&player->stream);
    }

    if (player->activeFlag) {
        player->cancelStreamFunc(player);
    }

    ShutdownPlayer(player);

    OS_UnlockMutex(&sStrmThread.mutex);
    if (sPrepareThread) {
        OS_UnlockMutex(&sPrepareThread->mutex);
    }
}

static void ShutdownPlayer (NNSSndStrmPlayer * player) {
    NNS_NULL_ASSERT(player);

    if (!player->activeFlag) {
        return;
    }

    FreeChannel(player);

    player->closeStreamFunc(player);

    RemoveCommandByPlayer(&sStrmThread.commandList, player);
    if (sPrepareThread) {
        RemoveCommandByPlayer(&sPrepareThread->commandList, player);
    }

    FreePlayer(player);
}

static BOOL AllocChannel (NNSSndStrmPlayer * player, int numChannels, const u8 chNoList[]) {
    NNS_NULL_ASSERT(player);

    if (player->allocChannelCount == 0) {
        if (!NNS_SndStrmAllocChannel(&player->stream, numChannels, chNoList)) {
            return FALSE;
        }
    }

    player->allocChannelCount++;

    return TRUE;
}

static void FreeChannel (NNSSndStrmPlayer * player) {
    NNS_NULL_ASSERT(player);

    if (player->allocChannelCount == 0) {
        OS_Warning("Unmatch Alloc/Free for stream channel.\n");
        return;
    }

    player->allocChannelCount--;

    if (player->allocChannelCount == 0) {
        NNS_SndStrmFreeChannel(&player->stream);
    }
}

static void CreateThread (NNSSndStrmThread * thread, u32 threadPrio) {
    OS_CreateThread(
        &thread->thread,
        StrmThread,
        thread,
        thread->stack + NNS_SND_STRM_THREAD_STACK_SIZE / sizeof(u64),
        NNS_SND_STRM_THREAD_STACK_SIZE,
        threadPrio
    );
    NNS_FND_INIT_LIST(&thread->commandList, LoadCommand, link);
    OS_InitMutex(&thread->mutex);
    OS_InitThreadQueue(&thread->threadQ);
    OS_WakeupThreadDirect(&thread->thread);
}

static void RemoveCommandByPlayer (NNSFndList * commandList, const NNSSndStrmPlayer * player) {
    OSIntrMode old;
    LoadCommand * command;
    LoadCommand * next;

    old = OS_DisableInterrupts();

    for ( command = (LoadCommand *)NNS_FndGetNextListObject(commandList, NULL);
          command != NULL ; command = next ) {
        next = (LoadCommand *)NNS_FndGetNextListObject(commandList, command);

        if (command->player == player) {
            NNS_FndRemoveListObject(commandList, command);
            FreeCommandBuffer(command);
        }
    }

    (void)OS_RestoreInterrupts(old);
}

static LoadCommand * ReadCommandBuffer (NNSFndList * commandList) {
    OSIntrMode old;
    LoadCommand * command;

    old = OS_DisableInterrupts();

    command = (LoadCommand *)NNS_FndGetNextListObject(commandList, NULL);
    if (command != NULL) {
        NNS_FndRemoveListObject(commandList, command);

        command->player->commandCount--;
    }

    (void)OS_RestoreInterrupts(old);

    return command;
}

static LoadCommand * AllocCommandBuffer (void) {
    OSIntrMode old;
    LoadCommand * command;

    old = OS_DisableInterrupts();

    command = (LoadCommand *)NNS_FndGetNextListObject(&sFreeCommandList, NULL);
    if (command != NULL) {
        NNS_FndRemoveListObject(&sFreeCommandList, command);
    }

    (void)OS_RestoreInterrupts(old);

    return command;
}

static void FreeCommandBuffer (LoadCommand * command) {
    OSIntrMode old;

    old = OS_DisableInterrupts();

    NNS_FndAppendListObject(&sFreeCommandList, command);

    (void)OS_RestoreInterrupts(old);
}

static void DisposeCallback (void * mem, u32, u32 data1, u32) {
    NNSSndStrmPlayer * player = (NNSSndStrmPlayer *)data1;

    if (mem == player->buffer) {
        OS_LockMutex(&sStrmThread.mutex);
        if (sPrepareThread) {
            OS_LockMutex(&sPrepareThread->mutex);
        }

        ForceStopStrm(player);

        player->buffer = NULL;
        player->bufSize = 0;

        player->numChannels = 0;
        if (player->allocChannelCount > 0) {
            NNS_SndStrmFreeChannel(&player->stream);
            player->allocChannelCount = 0;
        }

        OS_UnlockMutex(&sStrmThread.mutex);
        if (sPrepareThread) {
            OS_UnlockMutex(&sPrepareThread->mutex);
        }
    }
}

static void StrmCallback (NNSSndStrmCallbackStatus status, int numChannels, void * buffer[], u32 len, NNSSndStrmFormat, void * arg) {
    NNSSndStrmPlayer * player = (NNSSndStrmPlayer *)arg;
    LoadCommand * command;
    NNSSndStrmThread * thread;
    int ch;

    NNS_MINMAX_ASSERT(numChannels, 0, STRM_CHANNEL_MAX - 1);

    if (player->commandCount >= BLOCK_NUM - 2) {
        command = NULL;
        while ((command = (LoadCommand *)NNS_FndGetNextListObject(&sStrmThread.commandList, command)) != NULL) {
            if (command->player == player) {
                break;
            }
        }
        NNS_NULL_ASSERT(command);

        for ( ch = 0; ch < command->numChannels; ch++ ) {
            MI_CpuClear8(command->buffer[ch], command->bufLen);
        }

        NNS_FndRemoveListObject(&sStrmThread.commandList, command);
        player->commandCount--;
        FreeCommandBuffer(command);
    }

    command = AllocCommandBuffer();
    NNS_NULL_ASSERT(command);

    command->player = player;
    command->status = status;
    command->numChannels = numChannels;
    for ( ch = 0; ch < numChannels ; ch++ ) {
        command->buffer[ch] = buffer[ch];
    }
    command->bufLen = len;

    thread = &sStrmThread;
    if (status == NNS_SND_STRM_CALLBACK_SETUP && sPrepareThread) {
        thread = sPrepareThread;
    }

    player->commandCount++;
    NNS_FndAppendListObject(&thread->commandList, command);

    OS_WakeupThread(&thread->threadQ);
}

static void OnDataEnd (NNSSndStrmPlayer * player) {
    NNSSndArcStrmCallbackInfo info;
    NNSSndArcStrmCallbackParam param;
    const NNSSndArcStrmInfo * strmInfo;
    u8 old_format;
    u16 old_sampleRate;
    u64 tmpU64;
    BOOL result;

    info.playerNo = player->playerNo;
    info.strmNo = player->strmNo;

    param.strmNo = player->strmNo;
    param.offset = 0;

    result = player->sndArcStrmCallback(
        NNS_SND_ARC_STRM_CALLBACK_DATA_END,
        &info,
        &param,
        player->sndArcStrmCallbackArg
    );
    if (!result) {
        return;
    }

    strmInfo = NNS_SndArcGetStrmInfo(param.strmNo);
    if (strmInfo == NULL) {
        return;
    }

    old_format = player->info.format;
    old_sampleRate = player->info.sampleRate;

    player->closeStreamFunc(player);

    SetupStreamFunction(player, strmInfo->fileId);

    if (!player->openStreamFunc(player, strmInfo->fileId)) {
        return;
    }

    if (old_sampleRate != player->info.sampleRate) {
        OS_Warning(
            "Cannot continue stream because sample rate is different %d != %d.",
            player->info.sampleRate,
            old_sampleRate
        );
        return;
    }
    if (old_format == STRM_FORMAT_PCM8 && player->info.format != STRM_FORMAT_PCM8 ||
        old_format != STRM_FORMAT_PCM8 && player->info.format == STRM_FORMAT_PCM8) {
        OS_Warning("Cannot continue stream because format is different.");
        return;
    }

    player->strmNo = param.strmNo;
    tmpU64 = player->info.sampleRate;
    tmpU64 *= param.offset;
    tmpU64 /= 1000;
    player->curSample = (u32)tmpU64;
    if (player->curSample != 0 && player->info.format == STRM_FORMAT_ADPCM) {
        player->dirtyFlag = TRUE;
    } else {
        player->dirtyFlag = FALSE;
    }

    player->finishFlag = FALSE;
}

static void MakeWaveData (LoadCommand * command) {
    NNSSndStrmPlayer * player = command->player;
    BOOL loopFlag;
    u32 destOffset;
    u32 restSize;
    u32 blockNo;
    u32 blockSize;
    u32 blockSamples;
    u32 blockOffsetSample;
    u32 blockOffset;
    u32 offset;
    u32 samples;
    u32 size;
    u32 readSize;
    int ch;

    if (player->finishFlag && player->finishCounter > 0) {
        player->finishCounter--;
    }

    destOffset = 0;

    restSize = command->bufLen;
    while (restSize > 0) {
        if (player->finishFlag) {
            for ( ch = 0; ch < command->numChannels; ch++ ) {
                MI_CpuClear8((u8 *)(command->buffer[ch]) + destOffset, restSize);
            }
            break;
        }

        blockNo = player->curSample / player->info.blockSamples;

        if (blockNo < player->info.numBlocks - 1) {
            blockSize = player->info.blockSize;
            blockSamples = player->info.blockSamples;
        } else {
            blockSize = player->info.lastBlockSize;
            blockSamples = player->info.lastBlockSamples;
        }

        blockOffsetSample = player->curSample;
        blockOffsetSample -= blockNo * player->info.blockSamples;

        samples = restSize;
        if (player->info.format != STRM_FORMAT_PCM8) {
            NNS_ASSERT((samples & 0x01) == 0);
            samples >>= 1;
        }

        if (player->dirtyFlag) {
            if (blockOffsetSample == 0) {
                player->dirtyFlag = FALSE;
            } else {
                samples = blockOffsetSample;
                blockOffsetSample = 0;
            }
        }

        loopFlag = FALSE;
        if (blockOffsetSample + samples >= blockSamples) {
            samples = blockSamples - blockOffsetSample;

            if (blockNo >= player->info.numBlocks - 1) {
                if (player->info.loopFlag) {
                    loopFlag = TRUE;
                } else {
                    player->finishFlag = TRUE;
                }
            }
        }

        blockOffset = blockOffsetSample;
        size = samples;
        switch (player->info.format) {
        case STRM_FORMAT_PCM8:
            readSize = size;
            break;
        case STRM_FORMAT_PCM16:
            blockOffset <<= 1;
            size <<= 1;
            readSize = size;
            break;
        case STRM_FORMAT_ADPCM: {
            u32 endSample = blockOffsetSample + samples;
            blockOffset >>= 1;
            endSample++; endSample >>= 1;
            readSize = endSample - blockOffset;
            if (blockOffsetSample == 0) {
                readSize += sizeof(AdpcmState);
            } else {
                blockOffset += sizeof(AdpcmState);
            }
            size <<= 1;

            break;
        }
        }

        offset = blockOffset;
        offset += blockNo * player->info.blockSize * player->info.numChannels;
        offset += player->info.dataOffset;

        for ( ch = 0; ch < command->numChannels; ch++ ) {
            void * dest;
            void * read_dest;

            dest = read_dest = (u8 *)(command->buffer[ch]) + destOffset;

            if (ch < player->info.numChannels) {
                s32 resultSize;

                if (player->info.format == STRM_FORMAT_ADPCM) {
                    OS_LockMutex(&sDecodeBufferMutex);
                    read_dest = sDecodeBuffer;
                }

                resultSize = player->readStreamFunc(
                    player,
                    read_dest,
                    readSize,
                    offset + ch * blockSize
                );

                if (resultSize != readSize) {
                    size = 0;
                    samples = 0;
                    loopFlag = FALSE;
                    player->finishFlag = TRUE;
                    if (player->info.format == STRM_FORMAT_ADPCM) {
                        OS_UnlockMutex(&sDecodeBufferMutex);
                    }
                    break;
                }

                if (player->info.format == STRM_FORMAT_ADPCM) {
                    AdpcmState * state = &player->adpcmState[ch];
                    u8 * srcp = sDecodeBuffer;
                    s16 * destp = dest;
                    u32 i;
                    u32 end;

                    if (blockOffsetSample == 0) {
                        *state = *((AdpcmState *)srcp)++;
                    }

                    end = blockOffsetSample + samples;

                    i = blockOffsetSample;
                    if (i & 0x01) {
                        *destp++ = DecodeAdpcm((*srcp >> 4) & 0x0f, state); i++;
                        srcp++;
                    }
                    while (i < (end & ~0x01)) {
                        *destp++ = DecodeAdpcm(*srcp & 0x0f, state); i++;
                        *destp++ = DecodeAdpcm((*srcp >> 4) & 0x0f, state); i++;
                        srcp++;
                    }
                    if (i < end) {
                        *destp++ = DecodeAdpcm(*srcp & 0x0f, state); i++;
                    }
                    OS_UnlockMutex(&sDecodeBufferMutex);
                }
            } else {
                if (player->monoFlag) {
                    MI_CpuClear8(dest, size);
                } else {
                    MI_CpuCopy8((u8 *)(command->buffer[0]) + destOffset, dest, size);
                }
            }
        }

        if (player->dirtyFlag) {
            player->dirtyFlag = FALSE;
            continue;
        }

        if (loopFlag) {
            player->curSample = player->info.loopStart;
        } else {
            player->curSample += samples;
        }

        destOffset += size;

        restSize -= size;

        if (player->finishFlag && player->sndArcStrmCallback) {
            OnDataEnd(player);
        }
    }

    if (player->strmCallback != NULL) {
        player->strmCallback(
            command->status,
            command->numChannels,
            command->buffer,
            command->bufLen,
            player->info.format == STRM_FORMAT_PCM8 ? NNS_SND_STRM_FORMAT_PCM8 : NNS_SND_STRM_FORMAT_PCM16,
            player->strmCallbackArg
        );
    }

    for ( ch = 0; ch < command->numChannels; ch++ ) {
        DC_FlushRange(command->buffer[ch], command->bufLen);
    }

    if (command->status == NNS_SND_STRM_CALLBACK_SETUP) {
        player->prepareFlag = TRUE;
    }
}

static void SetupStreamFunction (NNSSndStrmPlayer * player, u32 fileId) {
    if (NNS_SndArcGetFileAddress(fileId) == NULL) {
        player->openStreamFunc = OpenFileStream;
        player->closeStreamFunc = CloseFileStream;
        player->readStreamFunc = ReadFileStream;
        player->cancelStreamFunc = CancelFileStream;
    } else {
        player->openStreamFunc = OpenMemoryStream;
        player->closeStreamFunc = CloseMemoryStream;
        player->readStreamFunc = ReadMemoryStream;
        player->cancelStreamFunc = CancelMemoryStream;
    }
}

static BOOL OpenFileStream (NNSSndStrmPlayer * player, u32 fileId) {
    if (NNS_SndArcReadFile(fileId, &player->info, sizeof(player->info), 0) != sizeof(player->info)) {
        return FALSE;
    }

    if (!FS_OpenFileFast(&player->file, NNS_SndArcGetFileID())) {
        return FALSE;
    }
    player->fileOffset = NNS_SndArcGetFileOffset(fileId);

    return TRUE;
}

static void CloseFileStream (NNSSndStrmPlayer * player) {
    (void)FS_CloseFile(&player->file);
}

static s32 ReadFileStream (NNSSndStrmPlayer * player, void * dest, u32 size, u32 offset) {
    BOOL result;

    result = FS_SeekFile(
        &player->file,
        (s32)(player->fileOffset + offset),
        FS_SEEK_SET
    );
    NNS_ASSERT(result);
    return FS_ReadFile(
        &player->file,
        dest,
        (s32)size
    );
}

static void CancelFileStream (NNSSndStrmPlayer * player) {
    FS_CancelFile(&player->file);
}

static BOOL OpenMemoryStream (NNSSndStrmPlayer * player, u32 fileId) {
    player->fileOffset = (u32)NNS_SndArcGetFileAddress(fileId);

    MI_CpuCopy8(
        (const void *)(player->fileOffset),
        &player->info,
        sizeof(player->info)
    );

    return TRUE;
}

static void CloseMemoryStream (NNSSndStrmPlayer * player) {
#pragma unused( player )
}

static s32 ReadMemoryStream (NNSSndStrmPlayer * player, void * dest, u32 size, u32 offset) {
#pragma unused( player )

    const u8 * src = (const u8 *)(player->fileOffset);

    MI_CpuCopy8(src + offset, dest, size);

    return (s32)size;
}

static void CancelMemoryStream (NNSSndStrmPlayer * player) {
#pragma unused( player )
}

static void StrmThread (void * arg) {
    NNSSndStrmThread * thread = (NNSSndStrmThread *)arg;

    while (1) {
        LoadCommand * command;

        OS_SleepThread(&thread->threadQ);

        while (1) {
            OS_LockMutex(&thread->mutex);

            command = ReadCommandBuffer(&thread->commandList);
            if (command == NULL) {
                OS_UnlockMutex(&thread->mutex);
                break;
            }

            MakeWaveData(command);

            FreeCommandBuffer(command);

            OS_UnlockMutex(&thread->mutex);
        }
    }
}

#endif
