#include <nnsys/snd/resource_mgr.h>
#include <nitro/snd.h>
#include <nnsys/misc.h>

static u32 sChannelLock;
static u32 sCaptureLock;
static u32 sAlarmLock;

BOOL NNS_SndLockChannel (u32 chBitFlag) {
    if (chBitFlag == 0) {
        return TRUE;
    }

    if (chBitFlag & sChannelLock) {
        return FALSE;
    }

    SND_LockChannel(chBitFlag, 0);

    sChannelLock |= chBitFlag;

    return TRUE;
}

void NNS_SndUnlockChannel (u32 chBitFlag) {
    NNS_ASSERT((chBitFlag & sChannelLock) == chBitFlag);

    if (chBitFlag == 0) {
        return;
    }

    SND_UnlockChannel(chBitFlag, 0);

    sChannelLock &= ~chBitFlag;
}

BOOL NNS_SndLockCapture (u32 capBitFlag) {
    if (capBitFlag & sCaptureLock) {
        return FALSE;
    }

    sCaptureLock |= capBitFlag;

    return TRUE;
}

void NNS_SndUnlockCapture (u32 capBitFlag) {
    NNS_ASSERT((capBitFlag & sCaptureLock) == capBitFlag);

    sCaptureLock &= ~capBitFlag;
}

int NNS_SndAllocAlarm (void) {
    int alarmNo;
    u32 mask = 1;

    for ( alarmNo = 0; alarmNo < SND_ALARM_NUM ; alarmNo++, mask <<= 1 ) {
        if ((sAlarmLock & mask) == 0) {
            sAlarmLock |= mask;
            return alarmNo;
        }
    }

    return -1;
}

void NNS_SndFreeAlarm (int alarmNo) {
    NNS_MINMAX_ASSERT(alarmNo, SND_ALARM_MIN, SND_ALARM_MAX);
    NNS_ASSERT(sAlarmLock & (1 << alarmNo));

    sAlarmLock &= ~(1 << alarmNo);
}

void NNSi_SndInitResourceMgr (void) {
    sChannelLock = 0;
    sCaptureLock = 0;
    sAlarmLock = 0;
}

u32 NNSi_GetLockedChannel (void) {
    return sChannelLock;
}
