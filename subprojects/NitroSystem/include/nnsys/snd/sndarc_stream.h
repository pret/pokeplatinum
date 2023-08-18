#ifndef NNS_SND_SNDARC_STREAM_H_
#define NNS_SND_SNDARC_STREAM_H_

#ifndef SDK_SMALL_BUILD

#include <nitro/types.h>
#include <nitro/os.h>
#include <nnsys/misc.h>
#include <nnsys/fnd.h>
#include <nnsys/snd/heap.h>
#include <nnsys/snd/stream.h>
#include <nnsys/snd/config.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_SND_STRM_PLAYER_NUM 4
#define NNS_SND_STRM_PLAYER_MIN 0
#define NNS_SND_STRM_PLAYER_MAX 3

#define NNS_SND_STRM_PLAYER_PRIO_MIN 0
#define NNS_SND_STRM_PLAYER_PRIO_MAX 127

#define NNS_SND_STRM_THREAD_STACK_SIZE 1024

struct NNSSndStrmPlayer;

typedef enum NNSSndArcStrmCallbackStatus {
    NNS_SND_ARC_STRM_CALLBACK_DATA_END
} NNSSndArcStrmCallbackStatus;

typedef struct NNSSndArcStrmCallbackInfo {
    int playerNo;
    int strmNo;
} NNSSndArcStrmCallbackInfo;

typedef struct NNSSndArcStrmCallbackParam {
    int strmNo;
    u32 offset;
} NNSSndArcStrmCallbackParam;

typedef BOOL (* NNSSndArcStrmCallback)(
    NNSSndArcStrmCallbackStatus status,
    const NNSSndArcStrmCallbackInfo * info,
    NNSSndArcStrmCallbackParam * param,
    void * arg
);

typedef struct NNSSndStrmHandle {
    struct NNSSndStrmPlayer * player;
} NNSSndStrmHandle;

typedef struct NNSSndStrmThread {
    OSThread thread;
    u64 stack[NNS_SND_STRM_THREAD_STACK_SIZE / sizeof(u64)];
    OSThreadQueue threadQ;
#ifndef SDK_THREAD_INFINITY
#if OS_SIZEOF_OSTHREADQUEUE == 16
    u16 padding;
#endif
#endif
    OSMutex mutex;

    NNSFndList commandList;
} NNSSndStrmThread;

NNS_SND_INLINE BOOL NNS_SndStrmHandleIsValid (const NNSSndStrmHandle * handle)
{
    NNS_NULL_ASSERT(handle);
    return handle->player != NULL;
}

void NNS_SndArcStrmInit(u32 threadPrio, NNSSndHeapHandle heap);
BOOL NNS_SndArcStrmSetupPlayer(NNSSndHeapHandle heap);
void NNS_SndArcStrmCreatePrepareThread(NNSSndStrmThread * thread, u32 threadPrio);

BOOL NNS_SndArcStrmStart(struct NNSSndStrmHandle * handle, int strmNo, u32 offset);
void NNS_SndArcStrmStop(struct NNSSndStrmHandle * handle, int fadeFrame);
void NNS_SndArcStrmStopAll(int fadeFrame);

BOOL NNS_SndArcStrmPrepare(struct NNSSndStrmHandle * handle, int strmNo, u32 offset);
void NNS_SndArcStrmStartPrepared(struct NNSSndStrmHandle * handle);
BOOL NNS_SndArcStrmIsPrepared(struct NNSSndStrmHandle * handle);

BOOL NNS_SndArcStrmStartEx(struct NNSSndStrmHandle * handle, int playerNo, int playerPrio, int strmNo, u32 offset);
BOOL NNS_SndArcStrmPrepareEx(struct NNSSndStrmHandle * handle, int playerNo, int playerPrio, int strmNo, u32 offset);
BOOL NNS_SndArcStrmStartEx2(
    struct NNSSndStrmHandle * handle,
    int playerNo,
    int playerPrio,
    int strmNo,
    u32 offset,
    NNSSndStrmCallback strmCallback,
    void * strmCallbackArg,
    NNSSndArcStrmCallback sndArcStrmCallback,
    void * sndArcStrmCallbackArg
);
BOOL NNS_SndArcStrmPrepareEx2(
    struct NNSSndStrmHandle * handle,
    int playerNo,
    int playerPrio,
    int strmNo,
    u32 offset,
    NNSSndStrmCallback strmCallback,
    void * strmCallbackArg,
    NNSSndArcStrmCallback sndArcStrmCallback,
    void * sndArcStrmCallbackArg
);

BOOL NNS_SndArcStrmAllocChannel(int playerNo);
void NNS_SndArcStrmFreeChannel(int playerNo);

void NNS_SndArcStrmSetVolume(struct NNSSndStrmHandle * handle, int volume);
void NNS_SndArcStrmMoveVolume(struct NNSSndStrmHandle * handle, int volume, int frames);
void NNS_SndArcStrmSetChannelVolume(struct NNSSndStrmHandle * handle, int chNo, int volume);
void NNS_SndArcStrmSetChannelPan(struct NNSSndStrmHandle * handle, int chNo, int pan);

u32 NNS_SndArcStrmGetTimeLength(struct NNSSndStrmHandle * handle);
u32 NNS_SndArcStrmGetCurrentPlayingPos(struct NNSSndStrmHandle * handle);
int NNS_SndArcStrmGetChannelCount(struct NNSSndStrmHandle * handle);

void NNS_SndStrmHandleInit(struct NNSSndStrmHandle * handle);
void NNS_SndStrmHandleRelease(struct NNSSndStrmHandle * handle);

void NNSi_SndArcStrmMain(void);
void NNSi_SndArcStrmSetPlayerBuffer(int playerNo, void * buffer, u32 len);
void NNSi_SndArcStrmSetDecodeBuffer(void * buffer, u32 len);
void NNSi_SndArcStrmStopByChannel(u32 chBitMask);
OSThread * NNSi_SndArcStrmGetThread();

#ifdef __cplusplus
}
#endif

#endif

#endif
