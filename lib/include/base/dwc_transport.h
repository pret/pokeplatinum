#ifndef DWC_TRANSPORT_H_
#define DWC_TRANSPORT_H_

#include <gs/darray.h>

#ifdef __cplusplus
extern "C" {
#endif

#define DWC_MAGIC_STRINGS "DT"
#define DWC_MAGIC_STRINGS_LEN 2
#define DWC_TRANSPORT_SEND_MAX 1465
#define DWC_TRANSPORT_GT2HEADER_SIZE 7

enum {
    DWC_TRANSPORT_SEND_READY,
    DWC_TRANSPORT_SEND_BUSY,
    DWC_TRANSPORT_SEND_LAST
};

enum {
    DWC_TRANSPORT_RECV_NOBUF,
    DWC_TRANSPORT_RECV_HEADER,
    DWC_TRANSPORT_RECV_BODY,
    DWC_TRANSPORT_RECV_SYSTEM_DATA,
    DWC_TRANSPORT_RECV_ERROR,
    DWC_TRANSPORT_RECV_LAST
};

enum {
    DWC_SEND_TYPE_INVALID,
    DWC_SEND_TYPE_USERDATA,
    DWC_SEND_TYPE_MATCH_SYN,
    DWC_SEND_TYPE_MATCH_SYN_ACK,
    DWC_SEND_TYPE_MATCH_ACK,
    DWC_SEND_TYPE_MAX
};

typedef struct DWCstTransportInfo DWCTransportInfo;
typedef struct DWCstTransportHeader DWCTransportHeader;
typedef struct DWCstTransportConnection DWCTransportConnection;
typedef struct DWCstDelayedMessage DWCDelayedMessage;
typedef void (* DWCUserSendCallback)(int size, u8 aid);
typedef void (* DWCUserRecvCallback)(u8 aid, u8 * buffer, int size);
typedef void (* DWCUserRecvTimeoutCallback)(u8 aid);
typedef void (* DWCUserPingCallback)(int latency, u8 aid);

struct DWCstTransportConnection {
    const u8 * sendBuffer;
    u8 * recvBuffer;
    int recvBufferSize;
    int sendingSize;
    int recvingSize;
    int requestSendSize;
    int requestRecvSize;
    u8 sendState;
    u8 recvState;
    u8 lastRecvState;
    u8 pads[3];
    u16 lastRecvType;
    OSTick previousRecvTick;
    u32 recvTimeoutTime;
#ifndef SDK_FINALROM
    u16 sendDelay;
    u16 recvDelay;
#endif
};

struct DWCstTransportInfo {
    DWCTransportConnection connections[DWC_MAX_CONNECTIONS];
    DWCUserSendCallback sendCallback;
    DWCUserRecvCallback recvCallback;
    DWCUserRecvTimeoutCallback recvTimeoutCallback;
    DWCUserPingCallback pingCallback;
    u16 sendSplitMax;
#ifndef SDK_FINALROM
    MATHRandContext16 context;
    u32 seed;
    DArray delayedSend;
    DArray delayedRecv;
    u8 sendDrop;
    u8 recvDrop;
    u8 pads[2];
#endif
};

struct DWCstTransportHeader {
    int size;
    u16 type;
    char magicStrings[DWC_MAGIC_STRINGS_LEN];
};

struct DWCstDelayedMessage {
    GT2Connection connection;
    int filterID;
    u8 * message;
    int size;
    BOOL reliable;
    OSTick startTime;
    OSTick delayTime;
};

extern BOOL DWC_SendReliable(u8 aid, const void * buffer, int size);
extern u32 DWC_SendReliableBitmap(u32 bitmap, const void * buffer, int size);
extern BOOL DWC_SendUnreliable(u8 aid, const void * buffer, int size);
extern u32 DWC_SendUnreliableBitmap(u32 bitmap, const void * buffer, int size);
extern BOOL DWC_Ping(u8 aid);
extern BOOL DWC_SetRecvBuffer(u8 aid, void * recvBuffer, int size);
extern BOOL DWC_SetUserSendCallback(DWCUserSendCallback callback);
extern BOOL DWC_SetUserRecvCallback(DWCUserRecvCallback callback);
extern BOOL DWC_SetUserRecvTimeoutCallback(DWCUserRecvTimeoutCallback callback);
extern BOOL DWC_SetRecvTimeoutTime(u8 aid, u32 time);
extern BOOL DWC_SetUserPingCallback(DWCUserPingCallback callback);
extern BOOL DWC_SetSendSplitMax(u16 sendSplitMax);
extern BOOL DWC_IsSendableReliable(u8 aid);
#ifndef SDK_FINALROM
extern BOOL DWC_SetSendDelay(u16 delay, u8 aid);
extern BOOL DWC_SetRecvDelay(u16 delay, u8 aid);
extern BOOL DWC_SetSendDrop(u8 drop, u8 aid);
extern BOOL DWC_SetRecvDrop(u8 drop, u8 aid);
#else
#define DWC_SetSendDelay(delay, aid) ((void)0)
#define DWC_SetRecvDelay(delay, aid) ((void)0)
#define DWC_SetSendDrop(drop, aid) ((void)0)
#define DWC_SetRecvDrop(drop, aid) ((void)0)
#endif
void DWCi_InitTransport(DWCTransportInfo * info);
BOOL DWCi_IsSendableReliable(u8 aid, u16 type);
BOOL DWCi_SendReliable(u16 type, u8 aid, const void * buffer, int size);
void DWCi_RecvCallback(GT2Connection connection, GT2Byte * message, int size, GT2Bool reliable);
void DWCi_PingCallback(GT2Connection connection, int latency);
void DWCi_TransportProcess(void);
void DWCi_ShutdownTransport(void);
void DWCi_ClearTransConnection(u8 aid);

#ifdef __cplusplus
}
#endif

#endif
