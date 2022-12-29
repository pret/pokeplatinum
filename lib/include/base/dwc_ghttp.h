#ifndef DWC_GHTTP_H_
#define DWC_GHTTP_H_

#define GHTTP_EXTENDEDERROR

#include "gs/ghttp/ghttp.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    DWCGHTTPFalse = -1, DWCGHTTPHostLookup = GHTTPHostLookup, DWCGHTTPConnecting = GHTTPConnecting, DWCGHTTPSecuringSession = GHTTPSecuringSession, DWCGHTTPSendingRequest = GHTTPSendingRequest, DWCGHTTPPosting = GHTTPPosting, DWCGHTTPWaiting = GHTTPWaiting, DWCGHTTPReceivingStatus = GHTTPReceivingStatus, DWCGHTTPReceivingHeaders = GHTTPReceivingHeaders, DWCGHTTPReceivingFile = GHTTPReceivingFile, DWC_GHTTP_FALSE = -1, DWC_GHTTP_HOST_LOOKUP = GHTTPHostLookup, DWC_GHTTP_CONNECTING = GHTTPConnecting, DWC_GHTTP_SECURING_SESSION = GHTTPSecuringSession, DWC_GHTTP_SENDING_REQUEST = GHTTPSendingRequest, DWC_GHTTP_POSTING = GHTTPPosting, DWC_GHTTP_WAITING = GHTTPWaiting, DWC_GHTTP_RECEIVING_STATUS = GHTTPReceivingStatus, DWC_GHTTP_RECEIVING_HEADERS = GHTTPReceivingHeaders, DWC_GHTTP_RECEIVING_FILE = GHTTPReceivingFile
} DWCGHTTPState;

typedef enum {
    DWCGHTTPErrorStart = GHTTPErrorStart, DWCGHTTPFailedToOpenFile = GHTTPFailedToOpenFile, DWCGHTTPInvalidPost = GHTTPInvalidPost, DWCGHTTPInsufficientMemory = GHTTPInsufficientMemory, DWCGHTTPInvalidFileName = GHTTPInvalidFileName, DWCGHTTPInvalidBufferSize = GHTTPInvalidBufferSize, DWCGHTTPInvalidURL = GHTTPInvalidURL, DWCGHTTPUnspecifiedError = GHTTPUnspecifiedError, DWC_GHTTP_ERROR_START = GHTTPErrorStart, DWC_GHTTP_IN_ERROR = DWC_GHTTP_ERROR_START, DWC_GHTTP_FAILED_TO_OPEN_FILE = GHTTPFailedToOpenFile, DWC_GHTTP_INVALID_POST = GHTTPInvalidPost, DWC_GHTTP_INSUFFICIENT_MEMORY = GHTTPInsufficientMemory, DWC_GHTTP_INVALID_FILE_NAME = GHTTPInvalidFileName, DWC_GHTTP_INVALID_BUFFER_SIZE = GHTTPInvalidBufferSize, DWC_GHTTP_INVALID_URL = GHTTPInvalidURL, DWC_GHTTP_UNSPECIFIED_ERROR = GHTTPUnspecifiedError
} DWCGHTTPRequestError;

typedef enum {
    DWCGHTTPSuccess = GHTTPSuccess, DWCGHTTPOutOfMemory = GHTTPOutOfMemory, DWCGHTTPBufferOverflow = GHTTPBufferOverflow, DWCGHTTPParseURLFailed = GHTTPParseURLFailed, DWCGHTTPHostLookupFailed = GHTTPHostLookupFailed, DWCGHTTPSocketFailed = GHTTPSocketFailed, DWCGHTTPConnectFailed = GHTTPConnectFailed, DWCGHTTPBadResponse = GHTTPBadResponse, DWCGHTTPRequestRejected = GHTTPRequestRejected, DWCGHTTPUnauthorized = GHTTPUnauthorized, DWCGHTTPForbidden = GHTTPForbidden, DWCGHTTPFileNotFound = GHTTPFileNotFound, DWCGHTTPServerError = GHTTPServerError, DWCGHTTPFileWriteFailed = GHTTPFileWriteFailed, DWCGHTTPFileReadFailed = GHTTPFileReadFailed, DWCGHTTPFileIncomplete = GHTTPFileIncomplete, DWCGHTTPFileToBig = GHTTPFileToBig, DWCGHTTPEncryptionError = GHTTPEncryptionError, DWCGHTTPNum, DWCGHTTPMemoryError = DWCGHTTPNum + 1, DWC_GHTTP_SUCCESS = GHTTPSuccess, DWC_GHTTP_OUT_OF_MEMORY = GHTTPOutOfMemory, DWC_GHTTP_BUFFER_OVERFLOW = GHTTPBufferOverflow, DWC_GHTTP_PARSE_URL_FAILED = GHTTPParseURLFailed, DWC_GHTTP_HOST_LOOKUP_FAILED = GHTTPHostLookupFailed, DWC_GHTTP_SOCKET_FAILED = GHTTPSocketFailed, DWC_GHTTP_CONNECT_FAILED = GHTTPConnectFailed, DWC_GHTTP_BAD_RESPONSE = GHTTPBadResponse, DWC_GHTTP_REQUEST_REJECTED = GHTTPRequestRejected, DWC_GHTTP_UNAUTHORIZED = GHTTPUnauthorized, DWC_GHTTP_FORBIDDEN = GHTTPForbidden, DWC_GHTTP_FILE_NOT_FOUND = GHTTPFileNotFound, DWC_GHTTP_SERVER_ERROR = GHTTPServerError, DWC_GHTTP_FILE_WRITE_FAILED = GHTTPFileWriteFailed, DWC_GHTTP_FILE_READ_FAILED = GHTTPFileReadFailed, DWC_GHTTP_FILE_INCOMPLETE = GHTTPFileIncomplete, DWC_GHTTP_FILE_TOO_BIG = GHTTPFileToBig, DWC_GHTTP_ENCRYPTION_ERROR = GHTTPEncryptionError, DWC_GHTTP_NUM, DWC_GHTTP_MEMORY_ERROR = DWC_GHTTP_NUM + 1
} DWCGHTTPResult;

typedef GHTTPRequest DWCGHTTPRequest;
typedef GHTTPPost DWCGHTTPPost;

typedef void (* DWC_GHTTPCompletedCALLBACK)(const char * buf, int len, DWCGHTTPResult result, void * param);
typedef void (* DWC_GHTTPProgressCALLBACK)(DWCGHTTPState state, const char * buf, int len, int bytesReceived, int totalSize, void * param);
typedef void (* DWCGHTTPCompletedCallback)(const char * buf, int len, DWCGHTTPResult result, void * param);
typedef void (* DWCGHTTPProgressCallback)(DWCGHTTPState state, const char * buf, int len, int bytesReceived, int totalSize, void * param);

typedef struct {
    void * param;
    DWCGHTTPCompletedCallback completedCallback;
    DWCGHTTPProgressCallback progressCallback;
    BOOL buffer_clear;
} DWCGHTTPParam;

BOOL DWC_InitGHTTP(const char * gamename);
BOOL DWC_ShutdownGHTTP(void);
BOOL DWC_ProcessGHTTP(void);
void DWC_GHTTPNewPost(DWCGHTTPPost * post);
BOOL DWC_GHTTPPostAddString(DWCGHTTPPost * post, const char * key, const char * value);
BOOL DWC_GHTTPPostAddFileFromMemory(DWCGHTTPPost * post, const char * key, const char * buffer, int bufferlen, const char * filename, const char * contentType);
int DWC_PostGHTTPData(const char * url, DWCGHTTPPost * post, DWCGHTTPCompletedCallback completedCallback, void * param);
int DWC_GetGHTTPData(const char * url, DWCGHTTPCompletedCallback completedCallback, void * param);
int DWC_GetGHTTPDataEx(const char * url, int bufferlen, BOOL buffer_clear, DWCGHTTPProgressCallback progressCallback, DWCGHTTPCompletedCallback completedCallback, void * param);
int DWC_GetGHTTPDataEx2(const char * url, int bufferlen, BOOL buffer_clear, DWCGHTTPPost * post, DWCGHTTPProgressCallback progressCallback, DWCGHTTPCompletedCallback completedCallback, void * param);
void DWC_CancelGHTTPRequest(int req);
DWCGHTTPState DWC_GetGHTTPState(int req);

#ifdef __cplusplus
}
#endif

#endif
