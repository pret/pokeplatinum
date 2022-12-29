#ifndef NNS_SND_PLAYER_H_
#define NNS_SND_PLAYER_H_

#include <nitro/types.h>
#include <nitro/version.h>
#include <nitro/snd.h>
#include <nnsys/misc.h>
#include <nnsys/fnd.h>
#include <nnsys/snd/heap.h>
#include <nnsys/snd/fader.h>
#include <nnsys/snd/config.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_SND_PLAYER_NUM 32

#define NNS_SND_PLAYER_NO_MAX (NNS_SND_PLAYER_NUM - 1)

#define NNS_SND_PLAYER_TRACK_PITCH_MIN -32768
#define NNS_SND_PLAYER_TRACK_PITCH_MAX 32767
#define NNS_SND_PLAYER_TRACK_PAN_MIN -128
#define NNS_SND_PLAYER_TRACK_PAN_MAX 127
#define NNS_SND_PLAYER_TRACK_PAN_RANGE_MIN 0
#define NNS_SND_PLAYER_TRACK_PAN_RANGE_MAX 127
#define NNS_SND_PLAYER_PRIO_MAX 127

#define NNS_SND_PLAYER_SEQ_NO_MAX 0xffff
#define NNS_SND_PLAYER_SEQARC_INDEX_MAX 0xffff

struct SNDBankData;
struct NNSSndSeqArcHeader;
struct NNSSndSeqHeader;
struct NNSSndSeqPlayer;
struct NNSSndPlayer;
struct NNSSndPlayerHeap;

struct SNDPlayerInfo;
struct SNDTrackInfo;

enum NNSSndSeqPlayerStatus {
    NNS_SND_SEQ_PLAYER_STATUS_STOP,
    NNS_SND_SEQ_PLAYER_STATUS_PLAY,
    NNS_SND_SEQ_PLAYER_STATUS_FADEOUT
};

typedef enum NNSSndPlayerSeqType {
    NNS_SND_PLAYER_SEQ_TYPE_INVALID,
    NNS_SND_PLAYER_SEQ_TYPE_SEQ,
    NNS_SND_PLAYER_SEQ_TYPE_SEQARC
} NNSSndPlayerSeqType;

#if SDK_CURRENT_VERSION_NUMBER >= SDK_VERSION_NUMBER(3, 1, 0)
typedef enum NNSSndSeqMute {
    NNS_SND_SEQ_MUTE_OFF     = SND_SEQ_MUTE_OFF,
    NNS_SND_SEQ_MUTE_NO_STOP = SND_SEQ_MUTE_NO_STOP,
    NNS_SND_SEQ_MUTE_RELEASE = SND_SEQ_MUTE_RELEASE,
    NNS_SND_SEQ_MUTE_STOP    = SND_SEQ_MUTE_STOP
} NNSSndSeqMute;
#endif

typedef struct NNSSndHandle {
    struct NNSSndSeqPlayer * player;
} NNSSndHandle;

typedef struct NNSSndSeqPlayer {
    struct NNSSndHandle * handle;
    struct NNSSndPlayer * player;
    struct NNSSndPlayerHeap * heap;
    NNSFndLink playerLink;
    NNSFndLink prioLink;
    NNSSndFader fader;

    u8 status;
    u8 startFlag;
    u8 pauseFlag;
    u8 prepareFlag;

    u32 commandTag;

    u16 seqType;
    u16 pad2;
    u16 seqNo;
    u16 seqArcIndex;

    u8 playerNo;
    u8 prio;
    s16 volume;

    u8 initVolume;
    u8 extVolume;
    u16 pad3_;
} NNSSndSeqPlayer;

typedef struct NNSSndPlayer {
    NNSFndList playerList;
    NNSFndList heapList;
    u32 playableSeqCount;
    u32 allocChBitFlag;
    u8 volume;
    u8 pad_;
    u16 pad2_;
} NNSSndPlayer;

NNS_SND_INLINE BOOL NNS_SndHandleIsValid (const struct NNSSndHandle * handle)
{
    NNS_NULL_ASSERT(handle);
    return handle->player != NULL;
}

void NNS_SndPlayerStopSeq(NNSSndHandle * handle, int fadeFrame);
void NNS_SndPlayerStopSeqByPlayerNo(int playerNo, int fadeFrame);
void NNS_SndPlayerStopSeqBySeqNo(int seqNo, int fadeFrame);
void NNS_SndPlayerStopSeqBySeqArcNo(int seqArcNo, int fadeFrame);
void NNS_SndPlayerStopSeqBySeqArcIdx(int seqArcNo, int index, int fadeFrame);
void NNS_SndPlayerStopSeqAll(int fadeFrame);

void NNS_SndPlayerPause(NNSSndHandle * handle, BOOL flag);
void NNS_SndPlayerPauseByPlayerNo(int playerNo, BOOL flag);
void NNS_SndPlayerPauseAll(BOOL flag);

void NNS_SndPlayerSetTempoRatio(NNSSndHandle * handle, int ratio);
void NNS_SndPlayerSetVolume(NNSSndHandle * handle, int volume);
void NNS_SndPlayerSetInitialVolume(NNSSndHandle * handle, int volume);
void NNS_SndPlayerMoveVolume(NNSSndHandle * handle, int targetVolume, int frames);
void NNS_SndPlayerSetPlayerPriority(NNSSndHandle * handle, int priority);
void NNS_SndPlayerSetChannelPriority(NNSSndHandle * handle, int priority);

void NNS_SndPlayerSetTrackMute(NNSSndHandle * handle, u16 trackBitMask, BOOL flag);
#if SDK_CURRENT_VERSION_NUMBER >= SDK_VERSION_NUMBER(3, 1, 0)
void NNS_SndPlayerSetTrackMuteEx(NNSSndHandle * handle, u16 trackBitMask, NNSSndSeqMute mute);
#endif
void NNS_SndPlayerSetTrackVolume(NNSSndHandle * handle, u16 trackBitMask, int volume);
void NNS_SndPlayerSetTrackPitch(NNSSndHandle * handle, u16 trackBitMask, int pitch);
void NNS_SndPlayerSetTrackPan(NNSSndHandle * handle, u16 trackBitMask, int pan);
void NNS_SndPlayerSetTrackPanRange(NNSSndHandle * handle, u16 trackBitMask, int panRange);
void NNS_SndPlayerSetTrackModDepth(NNSSndHandle * handle, u16 trackBitMask, int depth);
void NNS_SndPlayerSetTrackModSpeed(NNSSndHandle * handle, u16 trackBitMask, int speed);
void NNS_SndPlayerSetTrackAllocatableChannel(NNSSndHandle * handle, u16 trackBitMask, u32 chBitFlag);

u32 NNS_SndPlayerGetTick(NNSSndHandle * handle);
int NNS_SndPlayerCountPlayingSeqByPlayerNo(int playerNo);
int NNS_SndPlayerCountPlayingSeqBySeqNo(int seqNo);
int NNS_SndPlayerCountPlayingSeqBySeqArcNo(int seqArcNo);
int NNS_SndPlayerCountPlayingSeqBySeqArcIdx(int seqArcNo, int index);

void NNS_SndPlayerSetSeqNo(NNSSndHandle * handle, int seqNo);
void NNS_SndPlayerSetSeqArcNo(NNSSndHandle * handle, int seqArcNo, int index);
NNSSndPlayerSeqType NNS_SndPlayerGetSeqType(NNSSndHandle * handle);
int NNS_SndPlayerGetSeqNo(NNSSndHandle * handle);
int NNS_SndPlayerGetSeqArcNo(NNSSndHandle * handle);
int NNS_SndPlayerGetSeqArcIdx(NNSSndHandle * handle);

BOOL NNS_SndPlayerReadVariable(NNSSndHandle * handle, int varNo, s16 * var);
BOOL NNS_SndPlayerReadGlobalVariable(int varNo, s16 * var);
BOOL NNS_SndPlayerWriteVariable(NNSSndHandle * handle, int varNo, s16 var);
BOOL NNS_SndPlayerWriteGlobalVariable(int varNo, s16 var);

void NNS_SndPlayerSetPlayerVolume(int playerNo, int volume);
void NNS_SndPlayerSetPlayableSeqCount(int playerNo, int seqCount);
void NNS_SndPlayerSetAllocatableChannel(int playerNo, u32 chBitFlag);
BOOL NNS_SndPlayerCreateHeap(int playerNo, NNSSndHeapHandle heap, u32 size);

BOOL NNS_SndPlayerReadDriverPlayerInfo(NNSSndHandle * handle, struct SNDPlayerInfo * info);
BOOL NNS_SndPlayerReadDriverTrackInfo(NNSSndHandle * handle, int trackNo, struct SNDTrackInfo * info);

void NNS_SndHandleInit(NNSSndHandle * handle);
void NNS_SndHandleReleaseSeq(NNSSndHandle * handle);

void NNSi_SndPlayerInit(void);
void NNSi_SndPlayerMain(void);

void NNSi_SndPlayerStartSeq(
    NNSSndSeqPlayer * seqPlayer,
    const void * seqDataBase,
    u32 seqDataOffset,
    const struct SNDBankData * bank
);

NNSSndSeqPlayer * NNSi_SndPlayerAllocSeqPlayer(NNSSndHandle * handle, int playerNo, int prio);
void NNSi_SndPlayerFreeSeqPlayer(NNSSndSeqPlayer * seqPlayer);

void NNSi_SndPlayerStopSeq(NNSSndSeqPlayer * seqPlayer, int fadeFrame);
void NNSi_SndPlayerPause(NNSSndSeqPlayer * seqPlayer, BOOL flag);

NNSSndHeapHandle NNSi_SndPlayerAllocHeap(int playerNo, NNSSndSeqPlayer * seqPlayer);

#ifdef __cplusplus
}
#endif

#endif
