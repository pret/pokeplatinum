#ifndef _GT2_MAIN_H_
#define _GT2_MAIN_H_

#include "gt2.h"
#include <gs/nonport.h>
#include <darray.h>
#include <hashtable.h>
#include "gt2Auth.h"

#define GTI2_MAGIC_STRING "\xFE\xFE"
#define GTI2_MAGIC_STRING_LEN 2
#define GTI2_SERVER_TIMEOUT (1 * 60 * 1000)
#define GTI2_RESEND_TIME 1000
#define GTI2_PENDING_ACK_TIME 100
#define GTI2_KEEP_ALIVE_TIME (30 * 1000)

#if defined(_PS2) && defined(INSOCK)
    #define GTI2_STACK_RECV_BUFFER_SIZE NETBUFSIZE
#elif defined(_NITRO)
    #define GTI2_STACK_RECV_BUFFER_SIZE 1500
#else
    #define GTI2_STACK_RECV_BUFFER_SIZE 65535
#endif

typedef enum {
    GTI2AwaitingServerChallenge,
    GTI2AwaitingAcceptance,
    GTI2AwaitingClientChallenge,
    GTI2AwaitingClientResponse,
    GTI2AwaitingAcceptReject,
    GTI2Connected,
    GTI2Closing,
    GTI2Closed
} GTI2ConnectionState;

typedef enum {
    GTI2MsgAppReliable,
    GTI2MsgClientChallenge,
    GTI2MsgServerChallenge,
    GTI2MsgClientResponse,
    GTI2MsgAccept,
    GTI2MsgReject,
    GTI2MsgClose,
    GTI2MsgKeepAlive,
    GTI2NumReliableMessages,
    GTI2MsgAck = 100,
    GTI2MsgNack,
    GTI2MsgPing,
    GTI2MsgPong,
    GTI2MsgClosed
} GTI2MessageType;

typedef struct GTI2Buffer {
    GT2Byte * buffer;
    int size;
    int len;
} GTI2Buffer;

typedef struct GTI2IncomingBufferMessage {
    int start;
    int len;
    GTI2MessageType type;
    unsigned short serialNumber;
} GTI2IncomingBufferMessage;

typedef struct GTI2OutgoingBufferMessage {
    int start;
    int len;
    unsigned short serialNumber;
    gsi_time lastSend;
} GTI2OutgoingBufferMessage;

typedef struct GTI2Socket {
    SOCKET socket;
    unsigned int ip;
    unsigned short port;
    HashTable connections;
    DArray closedConnections;
    GT2Bool close;
    GT2Bool error;
    int callbackLevel;
    gt2ConnectAttemptCallback connectAttemptCallback;
    gt2SocketErrorCallback socketErrorCallback;
    gt2DumpCallback sendDumpCallback;
    gt2DumpCallback receiveDumpCallback;
    gt2UnrecognizedMessageCallback unrecognizedMessageCallback;
    void * data;
    int outgoingBufferSize;
    int incomingBufferSize;
    GT2Bool broadcastEnabled;
} GTI2Socket;

typedef struct GTI2Connection {
    unsigned int ip;
    unsigned short port;
    GTI2Socket * socket;
    GTI2ConnectionState state;
    GT2Bool initiated;
    GT2Bool freeAtAcceptReject;
    GT2Result connectionResult;
    gsi_time startTime;
    gsi_time timeout;
    int callbackLevel;
    GT2ConnectionCallbacks callbacks;
    char * initialMessage;
    int initialMessageLen;
    void * data;
    GTI2Buffer incomingBuffer;
    GTI2Buffer outgoingBuffer;
    DArray incomingBufferMessages;
    DArray outgoingBufferMessages;
    unsigned short serialNumber;
    unsigned short expectedSerialNumber;
    char response[GTI2_RESPONSE_LEN];
    gsi_time lastSend;
    gsi_time challengeTime;
    GT2Bool pendingAck;
    gsi_time pendingAckTime;
    DArray sendFilters;
    DArray receiveFilters;
} GTI2Connection;

#endif
