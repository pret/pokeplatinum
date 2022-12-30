#ifndef VCT_VOICECHAT_H_
#define VCT_VOICECHAT_H_

#include <nitro/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define VCT_ERROR_NONE 0
#define VCT_ERROR_BAD_PARAM -1
#define VCT_ERROR_BAD_MODE -2
#define VCT_ERROR_BAD_REQUEST -3
#define VCT_ERROR_SEND_FAIL -4
#define VCT_ERROR_TRANSCEIVER_BUSY -5
#define VCT_ERROR_EXHAUST_CLIENTS -6
#define VCT_MAX_SESSION 8
#define VCT_MAX_TRANSCEIVER_CLIENT 8
#define VCT_MAX_CONFERENCE_CLIENT 4
#define VCT_MAX_AUDIO_STREAM (VCT_MAX_CONFERENCE_CLIENT - 1)
#define VCT_MAGIC_PACKET_HEADER '_VCT'
#define VCT_AUDIO_FRAME_LENGTH 68
#define VCT_AUDIO_FRAME_RATE 8000
#define VCT_AUDIO_BUFFER_SIZE 1144
#define VCT_DEFAULT_AUDIO_BUFFER_COUNT 8
#define VCT_MIN_AUDIO_BUFFER_COUNT 4
#define VCT_MAX_AUDIO_BUFFER_COUNT (24 * VCT_MAX_AUDIO_STREAM)

typedef struct _VCTSession VCTSession;

typedef enum {
    VCT_CODEC_8BIT_RAW,
    VCT_CODEC_G711_ULAW,
    VCT_CODEC_2BIT_ADPCM,
    VCT_CODEC_3BIT_ADPCM,
    VCT_CODEC_4BIT_ADPCM,
    VCT_CODEC_END
} VCTCodec;

typedef enum {
    VCT_MODE_NULL,
    VCT_MODE_PHONE,
    VCT_MODE_TRANSCEIVER,
    VCT_MODE_CONFERENCE
} VCTMode;

typedef enum {
    VCT_EVENT_NONE,
    VCT_EVENT_INCOMING,
    VCT_EVENT_REJECT,
    VCT_EVENT_BUSY,
    VCT_EVENT_CANCEL,
    VCT_EVENT_NOTIFY_FREE,
    VCT_EVENT_NOTIFY_BUSY,
    VCT_EVENT_CONNECTED,
    VCT_EVENT_RESPONDBYE,
    VCT_EVENT_DISCONNECTED,
    VCT_EVENT_CONTACT,
    VCT_EVENT_TIMEOUT,
    VCT_EVENT_ABORT
} VCTEvent;

typedef enum {
    VCT_REQUEST_INVITE = 0,
    VCT_REQUEST_BYE,
    VCT_REQUEST_CANCEL,
    VCT_REQUEST_CONTACT,
    VCT_REQUEST_NOTIFY,
    VCT_REQUEST_END
} VCTRequestCode;

typedef enum {
    VCT_RESPONSE_OK,
    VCT_RESPONSE_BAD_REQUEST,
    VCT_RESPONSE_NOT_ACCEPTABLE,
    VCT_RESPONSE_BUSY_HERE,
    VCT_RESPONSE_TERMINATED,
    VCT_RESPONSE_DECLINE,
    VCT_RESPONSE_END
} VCTResponseCode;

typedef enum {
    VCT_STATE_INIT,
    VCT_STATE_OUTGOING,
    VCT_STATE_TALKING,
    VCT_STATE_CONNECTED,
    VCT_STATE_INCOMING,
    VCT_STATE_DISCONNECTING
} VCTState;

typedef enum {
    VCT_REPORTLEVEL_NONE,
    VCT_REPORTLEVEL_ALL
} VCTReportLevel;

typedef struct VCTAudioInfo {
    u32 internalLatency;
    u32 bufferLatency;
    u32 bufferCount;
    int clockSkew;
    u32 sequence;
    u32 dropCount;
    u32 jitter;
    u32 jamCount;
    u32 recoverCount;
    VCTCodec codec;
} VCTAudioInfo;

typedef void (* VCTEventCallback)(u8 aid, VCTEvent result, VCTSession * session, void * param);

typedef struct {
    VCTSession * session;
    u32 numSession;
    VCTMode mode;
    u8 aid;
    u8 padding__[3];
    void * audioBuffer;
    u32 audioBufferSize;
    VCTEventCallback callback;
    void * userData;
} VCTConfig;

struct _VCTSession {
    VCTMode mode;
    u8 aid;
    u8 talking;
    u16 padding__;
    u32 aidBitmap;
    VCTState state;
    void * userData;
    VCTSession * _next;
};

typedef struct _VCTVADInfo {
    BOOL activity;
    int scale;
    int releaseCount;
    int releaseTime;
} VCTVADInfo;

BOOL VCT_Init(VCTConfig * config);
void VCT_Cleanup(void);
void VCT_Main();
BOOL VCT_HandleData(u8 aid, u8 * buffer, int size);
int VCT_Request(VCTSession * session, VCTRequestCode request);
int VCT_Response(VCTSession * session, VCTResponseCode response);
int VCT_Contact(VCTSession ** outSession);
int VCT_Release(VCTSession * session);
void VCT_SetTransceiverMode(BOOL true_or_false);
int VCT_SetTransceiverServer(u8 aid);
int VCT_SetTransceiverClients(u8 aidList[], int num_of_aid);
void VCT_SetTransceiverTimeout(u32 sec);
int VCT_AddConferenceClient(u8 aid);
int VCT_RemoveConferenceClient(u8 aid);
VCTSession * VCT_CreateSession(u8 aid);
BOOL VCT_DeleteSession(VCTSession * session);
BOOL VCT_StartStreaming(VCTSession * session);
void VCT_StopStreaming(VCTSession * session);
BOOL VCT_SendAudio(void * audio_data, u32 length);
BOOL VCT_ReceiveAudio(void * audio_data, u32 length, u32 * outAIDBitmap);
BOOL VCT_SetCodec(VCTCodec codec);
VCTCodec VCT_GetCodec(void);
void VCT_GetAudioInfo(u32 channel, VCTAudioInfo * info);
void VCT_EnableVAD(BOOL flag);
void VCT_SetVADReleaseTime(int count);
void VCT_ResetVAD(void);
void VCT_GetVADInfo(VCTVADInfo * outInfo);
void VCT_EnableEchoCancel(BOOL flag);

#ifndef SDK_FINALROM
void VCT_SetReportLevel(VCTReportLevel level);
#else
#define VCT_SetReportLevel(level) ((void)0)
#endif

#ifdef __cplusplus
}
#endif

#endif
