#ifndef _GHTTP_H_
#define _GHTTP_H_

#ifdef __cplusplus
extern "C" {
#endif

//#include <stdlib.h>
#include <gs/nonport.h>

#ifndef GSI_UNICODE
#define ghttpGet ghttpGetA
#define ghttpGetEx ghttpGetExA
#define ghttpSave ghttpSaveA
#define ghttpSaveEx ghttpSaveExA
#define ghttpStream ghttpStreamA
#define ghttpStreamEx ghttpStreamExA
#define ghttpHead ghttpHeadA
#define ghttpHeadEx ghttpHeadExA
#define ghttpPost ghttpPostA
#define ghttpPostEx ghttpPostExA
#define ghttpPostAddString ghttpPostAddStringA
#define ghttpPostAddFileFromDisk ghttpPostAddFileFromDiskA
#define ghttpPostAddFileFromMemory ghttpPostAddFileFromMemoryA
#else
#define ghttpGet ghttpGetW
#define ghttpGetEx ghttpGetExW
#define ghttpSave ghttpSaveW
#define ghttpSaveEx ghttpSaveExW
#define ghttpStream ghttpStreamW
#define ghttpStreamEx ghttpStreamExW
#define ghttpHead ghttpHeadW
#define ghttpHeadEx ghttpHeadExW
#define ghttpPost ghttpPostW
#define ghttpPostEx ghttpPostExW
#define ghttpPostAddString ghttpPostAddStringW
#define ghttpPostAddFileFromDisk ghttpPostAddFileFromDiskW
#define ghttpPostAddFileFromMemory ghttpPostAddFileFromMemoryW
#endif

#define ghttpGetFile(a, b, c, d) ghttpGet(a, b, c, d)
#define ghttpGetFileEx(a, b, c, d, e, f, g, h, i, j) ghttpGetEx(a, b, c, d, e, f, g, h, i, j)
#define ghttpSaveFile(a, b, c, d, e) ghttpSave(a, b, c, d, e)
#define ghttpSaveFileEx(a, b, c, d, e, f, g, h, i) ghttpSaveEx(a, b, c, d, e, f, g, h, i)
#define ghttpStreamFile(a, b, c, d, e) ghttpStream(a, b, c, d, e)
#define ghttpStreamFileEx(a, b, c, d, e, f, g, h) ghttpStreamEx(a, b, c, d, e, f, g, h)
#define ghttpHeadFile(a, b, c, d) ghttpHead(a, b, c, d)
#define ghttpHeadFileEx(a, b, c, d, e, f, g) ghttpHeadEx(a, b, c, d, e, f, g)
#define ghttpGetFileA(a, b, c, d) ghttpGetA(a, b, c, d)
#define IS_GHTTP_ERROR(x) (x < 0)

typedef int GHTTPRequest;

typedef enum {
    GHTTPFalse,
    GHTTPTrue
} GHTTPBool;

#if (GSI_MAX_INTEGRAL_BITS >= 64)
typedef gsi_i64 GHTTPByteCount;
#else
typedef gsi_i32 GHTTPByteCount;
#endif

typedef enum {
    GHTTPHostLookup,
    GHTTPConnecting,
    GHTTPSecuringSession,
    GHTTPSendingRequest,
    GHTTPPosting,
    GHTTPWaiting,
    GHTTPReceivingStatus,
    GHTTPReceivingHeaders,
    GHTTPReceivingFile
} GHTTPState;

typedef enum {
    GHTTPSuccess,
    GHTTPOutOfMemory,
    GHTTPBufferOverflow,
    GHTTPParseURLFailed,
    GHTTPHostLookupFailed,
    GHTTPSocketFailed,
    GHTTPConnectFailed,
    GHTTPBadResponse,
    GHTTPRequestRejected,
    GHTTPUnauthorized,
    GHTTPForbidden,
    GHTTPFileNotFound,
    GHTTPServerError,
    GHTTPFileWriteFailed,
    GHTTPFileReadFailed,
    GHTTPFileIncomplete,
    GHTTPFileToBig,
    GHTTPEncryptionError
} GHTTPResult;

typedef enum {
    GHTTPEncryptionEngine_None,
    GHTTPEncryptionEngine_MatrixSsl
} GHTTPEncryptionEngine;

#ifdef GHTTP_EXTENDEDERROR
typedef enum {
    GHTTPErrorStart = -8,
    GHTTPFailedToOpenFile,
    GHTTPInvalidPost,
    GHTTPInsufficientMemory,
    GHTTPInvalidFileName,
    GHTTPInvalidBufferSize,
    GHTTPInvalidURL,
    GHTTPUnspecifiedError = -1
} GHTTPRequestError;
#else
typedef enum {
    GHTTPErrorStart = -1,
    GHTTPFailedToOpenFile = -1,
    GHTTPInvalidPost = -1,
    GHTTPInsufficientMemory = -1,
    GHTTPInvalidFileName = -1,
    GHTTPInvalidBufferSize = -1,
    GHTTPInvalidURL = -1,
    GHTTPUnspecifiedError = -1
} GHTTPRequestError;
#endif

typedef struct GHIPost * GHTTPPost;
typedef void (* ghttpProgressCallback)(GHTTPRequest request, GHTTPState state, const char * buffer, GHTTPByteCount bufferLen, GHTTPByteCount bytesReceived, GHTTPByteCount totalSize, void * param);
typedef GHTTPBool (* ghttpCompletedCallback)(GHTTPRequest request, GHTTPResult result, char * buffer, GHTTPByteCount bufferLen, void * param);

void ghttpStartup(void);
void ghttpCleanup(void);
GHTTPRequest ghttpGet(const gsi_char * URL, GHTTPBool blocking, ghttpCompletedCallback completedCallback, void * param);
GHTTPRequest ghttpGetEx(const gsi_char * URL, const gsi_char * headers, char * buffer, int bufferSize, GHTTPPost post, GHTTPBool throttle, GHTTPBool blocking, ghttpProgressCallback progressCallback, ghttpCompletedCallback completedCallback, void * param);
GHTTPRequest ghttpSave(const gsi_char * URL, const gsi_char * filename, GHTTPBool blocking, ghttpCompletedCallback completedCallback, void * param);
GHTTPRequest ghttpSaveEx(const gsi_char * URL, const gsi_char * filename, const gsi_char * headers, GHTTPPost post, GHTTPBool throttle, GHTTPBool blocking, ghttpProgressCallback progressCallback, ghttpCompletedCallback completedCallback, void * param);
GHTTPRequest ghttpStream(const gsi_char * URL, GHTTPBool blocking, ghttpProgressCallback progressCallback, ghttpCompletedCallback completedCallback, void * param);
GHTTPRequest ghttpStreamEx(const gsi_char * URL, const gsi_char * headers, GHTTPPost post, GHTTPBool throttle, GHTTPBool blocking, ghttpProgressCallback progressCallback, ghttpCompletedCallback completedCallback, void * param);
GHTTPRequest ghttpHead(const gsi_char * URL, GHTTPBool blocking, ghttpCompletedCallback completedCallback, void * param);
GHTTPRequest ghttpHeadEx(const gsi_char * URL, const gsi_char * headers, GHTTPBool throttle, GHTTPBool blocking, ghttpProgressCallback progressCallback, ghttpCompletedCallback completedCallback, void * param);
GHTTPRequest ghttpPost(const gsi_char * URL, GHTTPPost post, GHTTPBool blocking, ghttpCompletedCallback completedCallback, void * param);
GHTTPRequest ghttpPostEx(const gsi_char * URL, const gsi_char * headers, GHTTPPost post, GHTTPBool throttle, GHTTPBool blocking, ghttpProgressCallback progressCallback, ghttpCompletedCallback completedCallback, void * param);
void ghttpThink(void);
GHTTPBool ghttpRequestThink(GHTTPRequest request);
void ghttpCancelRequest(GHTTPRequest request);
GHTTPState ghttpGetState(GHTTPRequest request);
const char * ghttpGetResponseStatus(GHTTPRequest request, int * statusCode);
const char * ghttpGetHeaders(GHTTPRequest request);
const char * ghttpGetURL(GHTTPRequest request);
GHTTPBool ghttpSetProxy(const char * server);
GHTTPBool ghttpSetRequestProxy(GHTTPRequest request, const char * server);
void ghttpSetThrottle(GHTTPRequest request, GHTTPBool throttle);
void ghttpThrottleSettings(int bufferSize, gsi_time timeDelay);
void ghttpSetMaxRecvTime(GHTTPRequest request, gsi_time maxRecvTime);
GHTTPPost ghttpNewPost(void);
void ghttpPostSetAutoFree(GHTTPPost post, GHTTPBool autoFree);
void ghttpFreePost(GHTTPPost post);
GHTTPBool ghttpPostAddString(GHTTPPost post, const gsi_char * name, const gsi_char * string);
GHTTPBool ghttpPostAddFileFromDisk(GHTTPPost post, const gsi_char * name, const gsi_char * filename, const gsi_char * reportFilename, const gsi_char * contentType);
GHTTPBool ghttpPostAddFileFromMemory(GHTTPPost post, const gsi_char * name, const char * buffer, int bufferLen, const gsi_char * reportFilename, const gsi_char * contentType);
typedef void (* ghttpPostCallback)(GHTTPRequest request, int bytesPosted, int totalBytes, int objectsPosted, int totalObjects, void * param);
void ghttpPostSetCallback(GHTTPPost post, ghttpPostCallback callback, void * param);
GHTTPBool ghttpSetRequestEncryptionEngine(GHTTPRequest request, GHTTPEncryptionEngine engine);
GHTTPRequest ghttpGetA(const char * URL, GHTTPBool blocking, ghttpCompletedCallback completedCallback, void * param);

#ifdef __cplusplus
}
#endif

#endif
