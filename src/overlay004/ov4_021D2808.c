#include "overlay004/ov4_021D2808.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>
#include <vct.h>

#include "overlay004/ov4_021D0D80.h"

#include "heap.h"
#include "unk_0203266C.h"
#include "unk_020366A0.h"

typedef struct {
    u8 unk_00[2176];
    void *unk_880;
    u8 *unk_884;
    u8 *unk_888;
    u8 unk_88C[2176];
    u8 unk_110C[2176];
    void (*unk_198C)(void);
    VCTSession unk_1990[3];
    BOOL unk_19D8[4];
    int unk_19E8;
    int unk_19EC;
    int unk_19F0;
    int unk_19F4;
    struct NNSSndStrm unk_19F8;
    VCTSession *unk_1A54;
    u8 unk_1A58;
    u8 unk_1A59;
    u16 unk_1A5A;
    MICAutoParam unk_1A5C;
    int unk_1A78;
    int unk_1A7C;
    int unk_1A80;
    int unk_1A84;
    int unk_1A88;
    u16 unk_1A8C[16];
    int unk_1AAC;
} UnkStruct_ov4_0221A408;

static void ov4_021D2E8C(void);
static void ov4_021D2B04(VCTSession *param0);

static UnkStruct_ov4_0221A408 *Unk_ov4_0221A408 = NULL;
static OSTick Unk_ov4_0221A40C;
static int Unk_ov4_0221A404 = 0;

static void ov4_021D2808(void) {
    MIC_Init();
    PM_Init();

    {
        u32 v0;

        v0 = PM_SetAmp(PM_AMP_ON);

        if (v0 == PM_RESULT_SUCCESS) {
            (void)0;
        } else {
            (void)0;
        }
    }

    {
        u32 v1;

        v1 = PM_SetAmpGain(PM_AMPGAIN_160);

        if (v1 == PM_RESULT_SUCCESS) {
            (void)0;
        } else {
            (void)0;
        }
    }

    Unk_ov4_0221A408->unk_1A78 = 0;
    Unk_ov4_0221A408->unk_1A84 = 0;
    Unk_ov4_0221A408->unk_1A7C = 0;
    Unk_ov4_0221A408->unk_1A80 = 0;
    Unk_ov4_0221A408->unk_1A88 = 0;

    {
        int v2;

        for (v2 = 0; v2 < 16; v2++) {
            Unk_ov4_0221A408->unk_1A8C[v2] = 0;
        }

        Unk_ov4_0221A408->unk_1AAC = 0;
    }

    VCT_EnableVAD(1);

    NNS_SndInit();
    NNS_SndStrmInit(&Unk_ov4_0221A408->unk_19F8);
    MI_CpuClearFast(Unk_ov4_0221A408->unk_110C, sizeof(Unk_ov4_0221A408->unk_110C));

    Unk_ov4_0221A404 = 0;

    VCT_EnableEchoCancel(1);
}

static void ov4_021D28B0(MICResult param0, void *param1) {
#pragma unused(param0, param1)
    return;
}

static void ov4_021D28B4(NNSSndStrmCallbackStatus param0, int param1, void *param2[], u32 param3, NNSSndStrmFormat param4, void *param5) {
#pragma unused(param4)

    OSTick v0;
    const void *v1;
    u32 v2;
    u8 *v3;
    u32 v4;

    v3 = (u8 *)param5;

    if (param0 == NNS_SND_STRM_CALLBACK_SETUP) {
        for (v4 = 0; v4 < param1; ++v4) {
            MI_CpuClear8(param2[v4], param3);
        }

        return;
    }

    if (Unk_ov4_0221A408->unk_1A59) {
        MIC_StartAutoSamplingAsync(&(Unk_ov4_0221A408->unk_1A5C), ov4_021D28B0, NULL);
        Unk_ov4_0221A408->unk_1A59 = 0;
    }

    v1 = MIC_GetLastSamplingAddress();
    v2 = (u32)((u8 *)v1 - v3);

    if (v2 < param3) {
        v3 = v3 + param3;
    }

    if (PAD_DetectFold()) {
        v3 = Unk_ov4_0221A408->unk_110C;
    }

    if (Unk_ov4_0221A408->unk_19F0 == 0) {
        VCT_SendAudio(v3, param3);
    } else {
        (void)0;
    }

    for (v4 = 0; v4 < param1; ++v4) {
        if (!VCT_ReceiveAudio(param2[v4], param3, NULL)) {
            (void)0;
        }
    }

    Unk_ov4_0221A408->unk_1A58 = 2;
    return;
}

static int ov4_021D2974(u8 param0) {
    BOOL v0;
    VCTSession *v1;

    if (Unk_ov4_0221A408->unk_1A54 == NULL) {
        v1 = VCT_CreateSession(param0);

        if (v1 == NULL) {
            return 0;
        }

        v0 = VCT_Request(v1, VCT_REQUEST_INVITE);
    } else {
        v1 = Unk_ov4_0221A408->unk_1A54;
        v0 = VCT_Request(v1, VCT_REQUEST_INVITE);
    }

    if (v0 != VCT_ERROR_NONE) {
        VCT_DeleteSession(v1);
        Unk_ov4_0221A408->unk_1A54 = NULL;
        return 0;
    } else {
        Unk_ov4_0221A408->unk_1A54 = v1;
    }

    return 1;
}

static int ov4_021D29C8(u8 param0) {
    BOOL v0;

    if ((Unk_ov4_0221A408->unk_1A54 != NULL) && (Unk_ov4_0221A408->unk_1A54->state == VCT_STATE_INCOMING)) {
        v0 = VCT_Response(Unk_ov4_0221A408->unk_1A54, VCT_RESPONSE_OK);

        if (v0 != VCT_ERROR_NONE) {
            return 0;
        }

        if (!VCT_StartStreaming(Unk_ov4_0221A408->unk_1A54)) {
            return 0;
        } else {
            (void)0;
        }

        return 1;
    }

    return 0;
}

static void ov4_021D2A10(u8 param0, VCTEvent param1, VCTSession *param2, void *param3) {
#pragma unused(param0, param3)

    switch (param1) {
    case VCT_EVENT_DISCONNECTED:
        ov4_021D2B04(param2);
        break;
    case VCT_EVENT_CONNECTED:
        VCT_StartStreaming(param2);
        break;
    case VCT_EVENT_ABORT:
        ov4_021D2B04(param2);
        break;
    default:
        break;
    }
}

static void ov4_021D2A38(u8 param0, VCTEvent param1, VCTSession *param2, void *param3) {
#pragma unused(param0, param3)

    int v0;

    switch (param1) {
    case VCT_EVENT_INCOMING:
        if (Unk_ov4_0221A408->unk_1A54) {
            v0 = VCT_Response(param2, VCT_RESPONSE_BUSY_HERE);
            VCT_DeleteSession(param2);
            break;
        }

        Unk_ov4_0221A408->unk_1A54 = param2;
        break;
    case VCT_EVENT_RESPONDBYE:
        v0 = VCT_Response(param2, VCT_RESPONSE_OK);

        if (v0 != VCT_ERROR_NONE) {
            (void)0;
        }

        ov4_021D2B04(param2);
        ov4_021D1F18();
        break;
    case VCT_EVENT_DISCONNECTED:
        ov4_021D2B04(param2);
        ov4_021D1F18();
        break;
    case VCT_EVENT_CANCEL:
        v0 = VCT_Response(param2, VCT_RESPONSE_TERMINATED);

        if (v0 != VCT_ERROR_NONE) {
            (void)0;
        }

        ov4_021D2B04(param2);
        break;
    case VCT_EVENT_CONNECTED:
        if (param2->mode != Unk_ov4_0221A408->unk_19E8) {
            ov4_021D2B04(param2);
            return;
        }

        if (VCT_StartStreaming(param2)) {
            Unk_ov4_0221A408->unk_19EC = 2;
        } else {
            (void)0;
        }
        break;
    case VCT_EVENT_REJECT:
        ov4_021D2B04(param2);
        break;
    case VCT_EVENT_BUSY:
    case VCT_EVENT_TIMEOUT:
    case VCT_EVENT_ABORT:
        ov4_021D2B04(param2);
        break;
    default:
        break;
    }
}

static void ov4_021D2B04(VCTSession *param0) {
    VCT_StopStreaming(param0);
    VCT_DeleteSession(param0);
    Unk_ov4_0221A408->unk_1A54 = NULL;
}

void ov4_021D2B28(void) {
    OSTick v0;

    v0 = OS_GetTick();

    Unk_ov4_0221A404 += OS_TicksToMicroSeconds32(v0 - Unk_ov4_0221A40C) - 1000 * 1000 / 60;

    if (Unk_ov4_0221A404 < -10000) {
        Unk_ov4_0221A404 = 0;
    }

    Unk_ov4_0221A40C = v0;
    VCT_Main();

    while (Unk_ov4_0221A404 >= 1000 * 1000 / 60) {
        VCT_Main();
        Unk_ov4_0221A404 -= 1000 * 1000 / 60;
    }

    if (Unk_ov4_0221A408->unk_1A80) {
        switch (Unk_ov4_0221A408->unk_1A7C) {
        case 0:
            PM_SetAmpGain(PM_AMPGAIN_160);
            break;
        case 1:
            PM_SetAmpGain(PM_AMPGAIN_80);
            break;
        case 2:
            PM_SetAmpGain(PM_AMPGAIN_40);
            break;
        case 3:
            PM_SetAmpGain(PM_AMPGAIN_20);
            break;
        }

        Unk_ov4_0221A408->unk_1A80 = 0;
    }

    if (Unk_ov4_0221A408->unk_19E8 != VCT_MODE_CONFERENCE) {
        switch (Unk_ov4_0221A408->unk_19EC) {
        case 0: {
            if (ov4_021D1E30() == 0) {
                if (ov4_021D2974(1)) {
                    Unk_ov4_0221A408->unk_19EC = 1;
                    Unk_ov4_0221A408->unk_1A5A = 60;
                }
            } else if (ov4_021D1E30() == 1) {
                if (ov4_021D29C8(0)) {
                    Unk_ov4_0221A408->unk_19EC = 2;
                }
            }
            break;
        }
        case 1:
            Unk_ov4_0221A408->unk_1A5A--;

            if (Unk_ov4_0221A408->unk_1A5A == 0) {
                Unk_ov4_0221A408->unk_19EC = 0;
            }
            break;
        case 2:
            break;
        }
    }
}

BOOL ov4_021D2C70(int param0, void *param1, int param2) {
    if (Unk_ov4_0221A408 == NULL) {
        return 0;
    }

    if (VCT_HandleData(param0, param1, param2)) {
        return 1;
    }

    return 0;
}

static void ov4_021D2C98(void **param0, void **param1, int param2, int heapID) {
    *param0 = Heap_AllocFromHeap(heapID, param2 + 32);
    MI_CpuClear8(*param0, param2 + 32);
    *param1 = (UnkStruct_ov4_0221A408 *)(((u32)*param0 + 31) / 32 * 32);
}

void ov4_021D2CC0(int heapID, int param1, int param2) {
    u8 v0[3] = { 13, 13, 13 };
    u32 v1;
    BOOL v2;
    int v3;

    if (Unk_ov4_0221A408 == NULL) {
        void *v4 = NULL;

        ov4_021D2C98(&v4, (void **)&Unk_ov4_0221A408, sizeof(UnkStruct_ov4_0221A408), heapID);
        Unk_ov4_0221A408->unk_880 = v4;
        ov4_021D2C98((void **)&Unk_ov4_0221A408->unk_888, (void **)&Unk_ov4_0221A408->unk_884, VCT_AUDIO_BUFFER_SIZE * param2 * VCT_DEFAULT_AUDIO_BUFFER_COUNT + 32, heapID);

        Unk_ov4_0221A408->unk_19F4 = heapID;
        Unk_ov4_0221A408->unk_198C = NULL;

        ov4_021D2808();
    }

    v1 = (u32)(8000 * VCT_AUDIO_FRAME_LENGTH * 2) / 1000;

    {
        Unk_ov4_0221A408->unk_1A5C.type = MIC_SAMPLING_TYPE_SIGNED_12BIT;
        Unk_ov4_0221A408->unk_1A5C.buffer = Unk_ov4_0221A408->unk_00;
        Unk_ov4_0221A408->unk_1A5C.size = v1 * 2;
        Unk_ov4_0221A408->unk_1A5C.rate = (u32)((NNS_SND_STRM_TIMER_CLOCK / 8000) * 64);
        Unk_ov4_0221A408->unk_1A5C.loop_enable = 1;
        Unk_ov4_0221A408->unk_1A5C.full_callback = NULL;
        Unk_ov4_0221A408->unk_1A5C.full_arg = NULL;
        Unk_ov4_0221A408->unk_1A59 = 1;
    }

    NNS_SndStrmAllocChannel(&Unk_ov4_0221A408->unk_19F8, 1, v0);
    NNS_SndStrmSetVolume(&Unk_ov4_0221A408->unk_19F8, 0);

    v2 = NNS_SndStrmSetup(&Unk_ov4_0221A408->unk_19F8, NNS_SND_STRM_FORMAT_PCM16, Unk_ov4_0221A408->unk_88C, v1 * 2 * 1, NNS_SND_STRM_TIMER_CLOCK / 8000, 2, ov4_021D28B4, Unk_ov4_0221A408->unk_00);

    Unk_ov4_0221A408->unk_19EC = 0;
    Unk_ov4_0221A408->unk_1A54 = NULL;

    {
        VCTConfig v5;

        if (!sub_0203272C(sub_0203895C())) {
            v5.mode = VCT_MODE_PHONE;
        } else {
            v5.mode = VCT_MODE_CONFERENCE;
        }

        Unk_ov4_0221A408->unk_19E8 = v5.mode;

        v5.session = Unk_ov4_0221A408->unk_1990;
        v5.numSession = param2;
        v5.aid = DWC_GetMyAID();

        GF_ASSERT(v5.aid != -1);

        if (Unk_ov4_0221A408->unk_19E8 == VCT_MODE_CONFERENCE) {
            v5.callback = ov4_021D2A10;
        } else {
            v5.callback = ov4_021D2A38;
        }

        v5.userData = NULL;
        v5.audioBuffer = Unk_ov4_0221A408->unk_884;
        v5.audioBufferSize = VCT_AUDIO_BUFFER_SIZE * param2 * VCT_DEFAULT_AUDIO_BUFFER_COUNT + 32;

        if (!VCT_Init(&v5)) {
            (void)0;
        }
    }

    Unk_ov4_0221A408->unk_19F0 = 0;

    VCT_SetCodec(param1);
    ov4_021D2E8C();
    VCT_EnableEchoCancel(1);

    return;
}

static void ov4_021D2E8C(void) {
    NNS_SndStrmStart(&Unk_ov4_0221A408->unk_19F8);
}

void ov4_021D2EA4(void) {
    int v0;

    if ((Unk_ov4_0221A408->unk_1A54 == NULL) || (Unk_ov4_0221A408->unk_19EC == 0)) {
        ov4_021D1F18();
        return;
    }

    if (Unk_ov4_0221A408->unk_19EC == 1) {
        v0 = VCT_Request(Unk_ov4_0221A408->unk_1A54, VCT_REQUEST_CANCEL);

        if (v0 != VCT_ERROR_NONE) {
            ov4_021D1F18();
            return;
        }
    }

    v0 = VCT_Request(Unk_ov4_0221A408->unk_1A54, VCT_REQUEST_BYE);

    if (v0 != VCT_ERROR_NONE) {
        ov4_021D1F18();
        return;
    }

    return;
}

void ov4_021D2EF4(void (*func)()) {
    Unk_ov4_0221A408->unk_198C = func;
}

void ov4_021D2F08(void) {
    void (*v0)(void);

    if (Unk_ov4_0221A408 != NULL) {
        v0 = Unk_ov4_0221A408->unk_198C;

        (void)MIC_StopAutoSampling();
        NNS_SndStrmStop(&Unk_ov4_0221A408->unk_19F8);
        NNS_SndStrmFreeChannel(&Unk_ov4_0221A408->unk_19F8);

        VCT_Cleanup();

        Heap_FreeExplicit(Unk_ov4_0221A408->unk_19F4, Unk_ov4_0221A408->unk_888);
        Heap_FreeExplicit(Unk_ov4_0221A408->unk_19F4, Unk_ov4_0221A408->unk_880);
        Unk_ov4_0221A408 = NULL;

        if (v0 != NULL) {
            v0();
        }
    }
}

BOOL ov4_021D2F7C(void) {
    if (Unk_ov4_0221A408) {
        VCTVADInfo v0;

        VCT_GetVADInfo(&v0);

        if (v0.scale > 2) {
            return v0.activity;
        }
    }

    return 0;
}

void ov4_021D2FA4(void) {
    Unk_ov4_0221A408->unk_19F0 = 1;
}

void ov4_021D2FB8(void) {
    Unk_ov4_0221A408->unk_19F0 = 0;
}

BOOL ov4_021D2FCC(int param0, int param1) {
    int v0, v1;

    if (!(Unk_ov4_0221A408) || (Unk_ov4_0221A408->unk_19E8 != VCT_MODE_CONFERENCE)) {
        return 0;
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (v0 == param1) {
            continue;
        }

        if (param0 & (1 << v0)) {
            if (Unk_ov4_0221A408->unk_19D8[v0] == 1) {
                continue;
            }

            v1 = VCT_AddConferenceClient(v0);

            if (v1 != VCT_ERROR_NONE) {
                return 0;
            } else {
                Unk_ov4_0221A408->unk_19D8[v0] = 1;
            }
        }
    }

    return 1;
}
