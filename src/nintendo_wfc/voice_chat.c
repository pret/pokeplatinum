#include "nintendo_wfc/voice_chat.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>
#include <vct.h>

#include "nintendo_wfc/main.h"

#include "heap.h"
#include "unk_0203266C.h"
#include "unk_020366A0.h"

#define VOICE_CHAT_BUFFER_SIZE    ((8000 * VCT_AUDIO_FRAME_LENGTH * 2 * 2) / 1000)
#define FRAME_LENGTH_MICROSECONDS (1000000 / 60)

enum VoiceChatState {
    VOICE_CHAT_STATE_INIT,
    VOICE_CHAT_STATE_CONNECTING,
    VOICE_CHAT_STATE_CONNECTED,
};

typedef struct VoiceChatManager {
    u8 sendBuffer[VOICE_CHAT_BUFFER_SIZE];
    void *allocStartPtr;
    u8 *audioBuffer;
    u8 *audioBufferAllocStartPtr;
    u8 receiveBuffer[VOICE_CHAT_BUFFER_SIZE];
    u8 emptyVoiceBuffer[VOICE_CHAT_BUFFER_SIZE];
    VoiceChatCleanupCallback cleanupCallback;
    VCTSession otherConfMembersSessions[VCT_MAX_CONFERENCE_CLIENT - 1]; // Excludes this console's session
    BOOL occupiedConfSeats[VCT_MAX_CONFERENCE_CLIENT];
    VCTMode mode;
    enum VoiceChatState state;
    int disabled;
    enum HeapID heapID;
    struct NNSSndStrm soundStream;
    VCTSession *session;
    u8 unused_1A58;
    u8 shouldStartSampling;
    u16 timeout;
    MICAutoParam microphone;
    int unused_1A78;
    int gain;
    BOOL shouldUpdateGain;
    int unused_1A84;
    int unused_1A88;
    u16 unused_1A8C[16];
    int unused_1AAC;
} VoiceChatManager;

static void StartSoundStream(void);
static void EndVoiceChatSession(VCTSession *session);

static VoiceChatManager *sVoiceChatManager = NULL;
static OSTick sPreviousTick;
static int sTimeToProcess = 0;

static void InitVoiceChat(void)
{
    MIC_Init();
    PM_Init();

    PM_SetAmp(PM_AMP_ON);
    PM_SetAmpGain(PM_AMPGAIN_160);

    sVoiceChatManager->unused_1A78 = 0;
    sVoiceChatManager->unused_1A84 = 0;
    sVoiceChatManager->gain = 0;
    sVoiceChatManager->shouldUpdateGain = FALSE;
    sVoiceChatManager->unused_1A88 = 0;

    for (int i = 0; i < 16; i++) {
        sVoiceChatManager->unused_1A8C[i] = 0;
    }

    sVoiceChatManager->unused_1AAC = 0;

    VCT_EnableVAD(TRUE);

    NNS_SndInit();
    NNS_SndStrmInit(&sVoiceChatManager->soundStream);
    MI_CpuClearFast(sVoiceChatManager->emptyVoiceBuffer, sizeof(sVoiceChatManager->emptyVoiceBuffer));

    sTimeToProcess = 0;

    VCT_EnableEchoCancel(TRUE);
}

static void DummyMicCallback(MICResult unused0, void *unused1)
{
    return;
}

static void SoundStreamCallback(NNSSndStrmCallbackStatus status, int numOtherClients, void *receiveBuffers[], u32 bufferSize, NNSSndStrmFormat unused, void *_sendBuffer)
{

    const void *lastSamplingAddr;
    u32 lastSamplingPos;
    u8 *sendBuffer;
    u32 clientIdx;

    sendBuffer = (u8 *)_sendBuffer;

    if (status == NNS_SND_STRM_CALLBACK_SETUP) {
        for (clientIdx = 0; clientIdx < numOtherClients; ++clientIdx) {
            MI_CpuClear8(receiveBuffers[clientIdx], bufferSize);
        }

        return;
    }

    if (sVoiceChatManager->shouldStartSampling) {
        MIC_StartAutoSamplingAsync(&(sVoiceChatManager->microphone), DummyMicCallback, NULL);
        sVoiceChatManager->shouldStartSampling = FALSE;
    }

    lastSamplingAddr = MIC_GetLastSamplingAddress();
    lastSamplingPos = (u8 *)lastSamplingAddr - sendBuffer;

    if (lastSamplingPos < bufferSize) {
        sendBuffer = sendBuffer + bufferSize;
    }

    if (PAD_DetectFold()) {
        sendBuffer = sVoiceChatManager->emptyVoiceBuffer;
    }

    if (sVoiceChatManager->disabled == FALSE) {
        VCT_SendAudio(sendBuffer, bufferSize);
    }

    for (clientIdx = 0; clientIdx < numOtherClients; ++clientIdx) {
        VCT_ReceiveAudio(receiveBuffers[clientIdx], bufferSize, NULL);
    }

    sVoiceChatManager->unused_1A58 = 2;
}

static BOOL RequestVoiceChat(u8 id)
{
    BOOL requestResult;
    VCTSession *session;

    if (sVoiceChatManager->session == NULL) {
        session = VCT_CreateSession(id);

        if (session == NULL) {
            return FALSE;
        }

        requestResult = VCT_Request(session, VCT_REQUEST_INVITE);
    } else {
        session = sVoiceChatManager->session;
        requestResult = VCT_Request(session, VCT_REQUEST_INVITE);
    }

    if (requestResult != VCT_ERROR_NONE) {
        VCT_DeleteSession(session);
        sVoiceChatManager->session = NULL;
        return FALSE;
    } else {
        sVoiceChatManager->session = session;
    }

    return TRUE;
}

static int AcceptIncomingCall(u8 unused)
{
    BOOL result;

    if (sVoiceChatManager->session != NULL
        && sVoiceChatManager->session->state == VCT_STATE_INCOMING) {
        result = VCT_Response(sVoiceChatManager->session, VCT_RESPONSE_OK);

        if (result != VCT_ERROR_NONE) {
            return FALSE;
        }

        if (!VCT_StartStreaming(sVoiceChatManager->session)) {
            return FALSE;
        }

        return TRUE;
    }

    return FALSE;
}

static void VoiceChatConferenceCallback(u8 unused0, VCTEvent event, VCTSession *session, void *unused3)
{
    switch (event) {
    case VCT_EVENT_DISCONNECTED:
        EndVoiceChatSession(session);
        break;
    case VCT_EVENT_CONNECTED:
        VCT_StartStreaming(session);
        break;
    case VCT_EVENT_ABORT:
        EndVoiceChatSession(session);
        break;
    default:
        break;
    }
}

static void VoiceChatPhoneCallback(u8 unused0, VCTEvent event, VCTSession *session, void *unused3)
{
    switch (event) {
    case VCT_EVENT_INCOMING:
        if (sVoiceChatManager->session) {
            VCT_Response(session, VCT_RESPONSE_BUSY_HERE);
            VCT_DeleteSession(session);
            break;
        }

        sVoiceChatManager->session = session;
        break;
    case VCT_EVENT_RESPONDBYE:
        VCT_Response(session, VCT_RESPONSE_OK);

        EndVoiceChatSession(session);
        NintendoWFC_TerminateVoiceChat();
        break;
    case VCT_EVENT_DISCONNECTED:
        EndVoiceChatSession(session);
        NintendoWFC_TerminateVoiceChat();
        break;
    case VCT_EVENT_CANCEL:
        VCT_Response(session, VCT_RESPONSE_TERMINATED);

        EndVoiceChatSession(session);
        break;
    case VCT_EVENT_CONNECTED:
        if (session->mode != sVoiceChatManager->mode) {
            EndVoiceChatSession(session);
            return;
        }

        if (VCT_StartStreaming(session)) {
            sVoiceChatManager->state = VOICE_CHAT_STATE_CONNECTED;
        }
        break;
    case VCT_EVENT_REJECT:
        EndVoiceChatSession(session);
        break;
    case VCT_EVENT_BUSY:
    case VCT_EVENT_TIMEOUT:
    case VCT_EVENT_ABORT:
        EndVoiceChatSession(session);
        break;
    default:
        break;
    }
}

static void EndVoiceChatSession(VCTSession *session)
{
    VCT_StopStreaming(session);
    VCT_DeleteSession(session);
    sVoiceChatManager->session = NULL;
}

void VoiceChat_Main(void)
{
    OSTick currentTick = OS_GetTick();

    sTimeToProcess += OS_TicksToMicroSeconds32(currentTick - sPreviousTick) - FRAME_LENGTH_MICROSECONDS;

    if (sTimeToProcess < -10000) {
        sTimeToProcess = 0;
    }

    sPreviousTick = currentTick;
    VCT_Main();

    while (sTimeToProcess >= FRAME_LENGTH_MICROSECONDS) {
        VCT_Main();
        sTimeToProcess -= FRAME_LENGTH_MICROSECONDS;
    }

    if (sVoiceChatManager->shouldUpdateGain) {
        switch (sVoiceChatManager->gain) {
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

        sVoiceChatManager->shouldUpdateGain = FALSE;
    }

    if (sVoiceChatManager->mode != VCT_MODE_CONFERENCE) {
        switch (sVoiceChatManager->state) {
        case VOICE_CHAT_STATE_INIT: {
            if (NintendoWFC_GetNetID() == 0) {
                if (RequestVoiceChat(1)) {
                    sVoiceChatManager->state = VOICE_CHAT_STATE_CONNECTING;
                    sVoiceChatManager->timeout = 60;
                }
            } else if (NintendoWFC_GetNetID() == 1) {
                if (AcceptIncomingCall(0)) {
                    sVoiceChatManager->state = VOICE_CHAT_STATE_CONNECTED;
                }
            }
            break;
        }
        case VOICE_CHAT_STATE_CONNECTING:
            sVoiceChatManager->timeout--;

            if (sVoiceChatManager->timeout == 0) {
                sVoiceChatManager->state = VOICE_CHAT_STATE_INIT;
            }
            break;
        case VOICE_CHAT_STATE_CONNECTED:
            break;
        }
    }
}

BOOL VoiceChat_ProcessReceivedData(int id, void *buffer, int size)
{
    if (sVoiceChatManager == NULL) {
        return FALSE;
    }

    if (VCT_HandleData(id, buffer, size)) {
        return TRUE;
    }

    return FALSE;
}

static void Alloc32ByteAligned(void **allocStartPtr, void **alignedPtr, int size, enum HeapID heapID)
{
    *allocStartPtr = Heap_Alloc(heapID, size + 32);
    MI_CpuClear8(*allocStartPtr, size + 32);
    *alignedPtr = ALIGN_PTR(*allocStartPtr, 32);
}

void VoiceChat_Start(enum HeapID heapID, int codec, int numConferenceSessions)
{
    u8 voiceSoundChannels[3] = { 13, 13, 13 };

    if (sVoiceChatManager == NULL) {
        void *voiceChatManAllocPtr = NULL;

        Alloc32ByteAligned(&voiceChatManAllocPtr, (void **)&sVoiceChatManager, sizeof(VoiceChatManager), heapID);
        sVoiceChatManager->allocStartPtr = voiceChatManAllocPtr;
        Alloc32ByteAligned((void **)&sVoiceChatManager->audioBufferAllocStartPtr, (void **)&sVoiceChatManager->audioBuffer, VCT_AUDIO_BUFFER_SIZE * numConferenceSessions * VCT_DEFAULT_AUDIO_BUFFER_COUNT + 32, heapID);

        sVoiceChatManager->heapID = heapID;
        sVoiceChatManager->cleanupCallback = NULL;

        InitVoiceChat();
    }

    sVoiceChatManager->microphone.type = MIC_SAMPLING_TYPE_SIGNED_12BIT;
    sVoiceChatManager->microphone.buffer = sVoiceChatManager->sendBuffer;
    sVoiceChatManager->microphone.size = VOICE_CHAT_BUFFER_SIZE;
    sVoiceChatManager->microphone.rate = (NNS_SND_STRM_TIMER_CLOCK / 8000) * 64;
    sVoiceChatManager->microphone.loop_enable = TRUE;
    sVoiceChatManager->microphone.full_callback = NULL;
    sVoiceChatManager->microphone.full_arg = NULL;
    sVoiceChatManager->shouldStartSampling = TRUE;

    NNS_SndStrmAllocChannel(&sVoiceChatManager->soundStream, 1, voiceSoundChannels);
    NNS_SndStrmSetVolume(&sVoiceChatManager->soundStream, 0);

    NNS_SndStrmSetup(&sVoiceChatManager->soundStream, NNS_SND_STRM_FORMAT_PCM16, sVoiceChatManager->receiveBuffer, VOICE_CHAT_BUFFER_SIZE, NNS_SND_STRM_TIMER_CLOCK / 8000, 2, SoundStreamCallback, sVoiceChatManager->sendBuffer);

    sVoiceChatManager->state = VOICE_CHAT_STATE_INIT;
    sVoiceChatManager->session = NULL;

    VCTConfig voiceChatConfig;

    if (!sub_0203272C(sub_0203895C())) {
        voiceChatConfig.mode = VCT_MODE_PHONE;
    } else {
        voiceChatConfig.mode = VCT_MODE_CONFERENCE;
    }

    sVoiceChatManager->mode = voiceChatConfig.mode;

    voiceChatConfig.session = sVoiceChatManager->otherConfMembersSessions;
    voiceChatConfig.numSession = numConferenceSessions;
    voiceChatConfig.aid = DWC_GetMyAID();

    GF_ASSERT(voiceChatConfig.aid != -1);

    if (sVoiceChatManager->mode == VCT_MODE_CONFERENCE) {
        voiceChatConfig.callback = VoiceChatConferenceCallback;
    } else {
        voiceChatConfig.callback = VoiceChatPhoneCallback;
    }

    voiceChatConfig.userData = NULL;
    voiceChatConfig.audioBuffer = sVoiceChatManager->audioBuffer;
    voiceChatConfig.audioBufferSize = VCT_AUDIO_BUFFER_SIZE * numConferenceSessions * VCT_DEFAULT_AUDIO_BUFFER_COUNT + 32;

    VCT_Init(&voiceChatConfig);

    sVoiceChatManager->disabled = FALSE;

    VCT_SetCodec(codec);
    StartSoundStream();
    VCT_EnableEchoCancel(TRUE);
}

static void StartSoundStream(void)
{
    NNS_SndStrmStart(&sVoiceChatManager->soundStream);
}

void VoiceChat_RequestEnd(void)
{
    int result;

    if (sVoiceChatManager->session == NULL
        || sVoiceChatManager->state == VOICE_CHAT_STATE_INIT) {
        NintendoWFC_TerminateVoiceChat();
        return;
    }

    if (sVoiceChatManager->state == VOICE_CHAT_STATE_CONNECTING) {
        result = VCT_Request(sVoiceChatManager->session, VCT_REQUEST_CANCEL);

        if (result != VCT_ERROR_NONE) {
            NintendoWFC_TerminateVoiceChat();
            return;
        }
    }

    result = VCT_Request(sVoiceChatManager->session, VCT_REQUEST_BYE);

    if (result != VCT_ERROR_NONE) {
        NintendoWFC_TerminateVoiceChat();
    }
}

void VoiceChat_SetCleanupCallback(VoiceChatCleanupCallback func)
{
    sVoiceChatManager->cleanupCallback = func;
}

void VoiceChat_Stop(void)
{
    void (*callback)(void);

    if (sVoiceChatManager != NULL) {
        callback = sVoiceChatManager->cleanupCallback;

        (void)MIC_StopAutoSampling();
        NNS_SndStrmStop(&sVoiceChatManager->soundStream);
        NNS_SndStrmFreeChannel(&sVoiceChatManager->soundStream);

        VCT_Cleanup();

        Heap_FreeExplicit(sVoiceChatManager->heapID, sVoiceChatManager->audioBufferAllocStartPtr);
        Heap_FreeExplicit(sVoiceChatManager->heapID, sVoiceChatManager->allocStartPtr);
        sVoiceChatManager = NULL;

        if (callback != NULL) {
            callback();
        }
    }
}

BOOL VoiceChat_DetectVoice(void)
{
    if (sVoiceChatManager) {
        VCTVADInfo vadInfo;

        VCT_GetVADInfo(&vadInfo);

        if (vadInfo.scale > 2) {
            return vadInfo.activity;
        }
    }

    return FALSE;
}

void VoiceChat_Disable(void)
{
    sVoiceChatManager->disabled = TRUE;
}

void VoiceChat_Enable(void)
{
    sVoiceChatManager->disabled = FALSE;
}

BOOL VoiceChat_AddConferenceClients(int newClientsBitmap, int currentClientID)
{
    int i, clientAddError;

    if (!(sVoiceChatManager) || (sVoiceChatManager->mode != VCT_MODE_CONFERENCE)) {
        return FALSE;
    }

    for (i = 0; i < 4; i++) {
        if (i == currentClientID) {
            continue;
        }

        if (newClientsBitmap & (1 << i)) {
            if (sVoiceChatManager->occupiedConfSeats[i] == TRUE) {
                continue;
            }

            clientAddError = VCT_AddConferenceClient(i);

            if (clientAddError != VCT_ERROR_NONE) {
                return FALSE;
            } else {
                sVoiceChatManager->occupiedConfSeats[i] = TRUE;
            }
        }
    }

    return TRUE;
}
