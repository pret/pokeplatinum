#ifndef _GHTTPCONNECTION_H_
#define _GHTTPCONNECTION_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "ghttpMain.h"
#include "ghttpEncryption.h"
#include "ghttpBuffer.h"
#include "ghttpPost.h"

#define SEND_BUFFER_INITIAL_SIZE (2 * 1024)
#define SEND_BUFFER_INCREMENT_SIZE (4 * 1024)
#define RECV_BUFFER_INITIAL_SIZE (2 * 1024)
#define RECV_BUFFER_INCREMENT_SIZE (2 * 1024)
#define GET_FILE_BUFFER_INITIAL_SIZE (2 * 1024)
#define GET_FILE_BUFFER_INCREMENT_SIZE (2 * 1024)
#define DECODE_BUFFER_INITIAL_SIZE (2 * 1024)
#define DECODE_BUFFER_INCREMENT_SIZE (1 * 1024)
#define CHUNK_HEADER_SIZE 10

typedef enum {
    GHIGET,
    GHISAVE,
    GHISTREAM,
    GHIHEAD,
    GHIPOST
} GHIRequestType;

typedef enum {
    CRHeader,
    CRChunk,
    CRCRLF,
    CRFooter
} CRState;

typedef struct GHIConnection {
    GHTTPBool inUse;
    GHTTPRequest request;
    int uniqueID;
    GHIRequestType type;
    GHTTPState state;
    char * URL;
    char * serverAddress;
    unsigned int serverIP;
    unsigned short serverPort;
    char * requestPath;
    char * sendHeaders;
    FILE * saveFile;
    GHTTPBool blocking;
    GHTTPBool persistConnection;
    GHTTPResult result;
    ghttpProgressCallback progressCallback;
    ghttpCompletedCallback completedCallback;
    void * callbackParam;
    SOCKET socket;
    int socketError;
    GHIBuffer sendBuffer;
    GHIBuffer recvBuffer;
    GHIBuffer decodeBuffer;
    GHIBuffer getFileBuffer;
    GHTTPBool userBufferSupplied;
    int statusMajorVersion;
    int statusMinorVersion;
    int statusCode;
    int statusStringIndex;
    int headerStringIndex;
    int tempDataIndex;
    GHTTPBool completed;
    GHTTPByteCount fileBytesReceived;
    GHTTPByteCount totalSize;
    char * redirectURL;
    int redirectCount;
    GHTTPBool chunkedTransfer;
    char chunkHeader[CHUNK_HEADER_SIZE + 1];
    int chunkHeaderLen;
    int chunkBytesLeft;
    CRState chunkReadingState;
    GHTTPBool processing;
    GHTTPBool connectionClosed;
    GHTTPBool throttle;
    gsi_time lastThrottleRecv;
    GHTTPPost post;
    GHIPostingState postingState;
    gsi_time maxRecvTime;
    char * proxyOverrideServer;
    unsigned short proxyOverridePort;
    struct GHIEncryptor encryptor;
} GHIConnection;

GHIConnection * ghiNewConnection(void);
GHTTPBool ghiFreeConnection(GHIConnection * connection);
GHIConnection * ghiRequestToConnection(GHTTPRequest request);
void ghiEnumConnections(GHTTPBool (* callback)(GHIConnection *));
void ghiRedirectConnection(GHIConnection * connection);
void ghiCleanupConnections(void);

#ifdef __cplusplus
}
#endif

#endif
