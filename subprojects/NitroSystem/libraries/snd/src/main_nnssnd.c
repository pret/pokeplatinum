#include <nnsys/snd/main.h>
#include <nitro/spi.h>
#include <nnsys/misc.h>
#include <nnsys/snd/capture.h>
#include <nnsys/snd/player.h>
#include <nnsys/snd/sndarc_stream.h>
#include <nnsys/snd/resource_mgr.h>
#include <nnsys/snd/config.h>

static PMSleepCallbackInfo sPreSleepCallback;
static PMSleepCallbackInfo sPostSleepCallback;

static SNDDriverInfo sDriverInfo[2] ATTRIBUTE_ALIGN(32);
static u32 sDriverInfoCommandTag;
static s8 sCurDriverInfo;
static BOOL sDriverInfoFirstFlag;

static void BeginSleep(void *);
static void EndSleep(void *);

static const SNDDriverInfo * GetCurDriverInfo(void);

static NNS_SND_INLINE const SNDDriverInfo * GetCurDriverInfo (void) {
    if (sCurDriverInfo < 0) {
        return NULL;
    }
    return &sDriverInfo[sCurDriverInfo];
}

void NNS_SndInit (void) {
    {
        static BOOL initialized = FALSE;
        if (initialized) {
            return;
        }
        initialized = TRUE;
    }

    SND_Init();

    PM_SetSleepCallbackInfo(&sPreSleepCallback, BeginSleep, NULL);
    PM_SetSleepCallbackInfo(&sPostSleepCallback, EndSleep, NULL);

    PM_PrependPreSleepCallback(&sPreSleepCallback);
    PM_AppendPostSleepCallback(&sPostSleepCallback);

    NNSi_SndInitResourceMgr();
    NNSi_SndCaptureInit();
    NNSi_SndPlayerInit();

    sCurDriverInfo = -1;
    sDriverInfoFirstFlag = TRUE;
}

void NNS_SndMain (void) {
    while (SND_RecvCommandReply(SND_COMMAND_NOBLOCK) != NULL) {
    }

    NNSi_SndPlayerMain();
    NNSi_SndCaptureMain();
#ifndef SDK_SMALL_BUILD
    NNSi_SndArcStrmMain();
#endif

    (void)SND_FlushCommand(SND_COMMAND_NOBLOCK);
}

void NNS_SndSetMasterVolume (int volume) {
    NNS_MINMAX_ASSERT(volume, 0, SND_MASTER_VOLUME_MAX);

    SND_SetMasterVolume(volume);
}

void NNS_SndSetMonoFlag (BOOL flag) {
    if (flag) {
        SND_SetMasterPan(SND_CHANNEL_PAN_CENTER);
    } else {
        SND_ResetMasterPan();
    }
}

void NNS_SndStopSoundAll (void) {
    u32 commandTag;

    NNS_SndPlayerStopSeqAll(0);
#ifndef SDK_SMALL_BUILD
    NNS_SndArcStrmStopAll(0);
#endif
    NNSi_SndCaptureStop();

    SNDi_SetSurroundDecay(0);
    SND_StopTimer(0xffff, 0xffff, 0xffff, 0);

    commandTag = SND_GetCurrentCommandTag();
    (void)SND_FlushCommand(SND_COMMAND_BLOCK);
    SND_WaitForCommandProc(commandTag);
}

void NNS_SndStopChannelAll (void) {
    SND_StopUnlockedChannel(0xffff, 0);
}

BOOL NNS_SndUpdateDriverInfo (void) {
    if (!sDriverInfoFirstFlag) {
        while (SND_RecvCommandReply(SND_COMMAND_NOBLOCK) != NULL) {
        }

        if (!SND_IsFinishedCommandTag(sDriverInfoCommandTag)) {
            return FALSE;
        }

        if (sCurDriverInfo < 0) {
            sCurDriverInfo = 1;
        }

        SND_ReadDriverInfo(&sDriverInfo[sCurDriverInfo]);
        sDriverInfoCommandTag = SND_GetCurrentCommandTag();

        if (sCurDriverInfo == 0) {
            sCurDriverInfo = 1;
        } else {
            sCurDriverInfo = 0;
        }

        DC_InvalidateRange(&sDriverInfo[sCurDriverInfo], sizeof(SNDDriverInfo));

        (void)SND_FlushCommand(SND_COMMAND_NOBLOCK);

        return TRUE;
    } else {
        SND_ReadDriverInfo(&sDriverInfo[0]);
        sDriverInfoCommandTag = SND_GetCurrentCommandTag();
        sDriverInfoFirstFlag = FALSE;
        return FALSE;
    }
}

BOOL NNS_SndReadDriverChannelInfo (int chNo, SNDChannelInfo * info) {
    const SNDDriverInfo * driverInfo;

    NNS_NULL_ASSERT(info);

    driverInfo = GetCurDriverInfo();
    if (driverInfo == NULL) {
        return FALSE;
    }

    return SND_ReadChannelInfo(driverInfo, chNo, info);
}

BOOL NNSi_SndReadDriverPlayerInfo (int playerNo, SNDPlayerInfo * info) {
    const SNDDriverInfo * driverInfo;

    NNS_NULL_ASSERT(info);

    driverInfo = GetCurDriverInfo();
    if (driverInfo == NULL) {
        return FALSE;
    }

    return SND_ReadPlayerInfo(driverInfo, playerNo, info);
}

BOOL NNSi_SndReadDriverTrackInfo (int playerNo, int trackNo, SNDTrackInfo * info) {
    const SNDDriverInfo * driverInfo;

    NNS_NULL_ASSERT(info);

    driverInfo = GetCurDriverInfo();
    if (driverInfo == NULL) {
        return FALSE;
    }

    return SND_ReadTrackInfo(driverInfo, playerNo, trackNo, info);
}

static void BeginSleep (void *) {
    u32 commandTag;

    NNSi_SndCaptureBeginSleep();

    SND_StopTimer(0, 0, 0, 0);

    commandTag = SND_GetCurrentCommandTag();
    (void)SND_FlushCommand(SND_COMMAND_BLOCK);
    SND_WaitForCommandProc(commandTag);
}

static void EndSleep (void *) {
    NNSi_SndCaptureEndSleep();
}
