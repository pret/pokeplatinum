#ifndef _GHTTPCOMMON_H_
#define _GHTTPCOMMON_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "ghttp.h"
#include "ghttpConnection.h"

#define CRLF "\xD\xA"

#define GHI_DEFAULT_PORT 80
#define GHI_DEFAULT_SECURE_PORT 443
#define GHI_DEFAULT_THROTTLE_BUFFER_SIZE 125
#define GHI_DEFAULT_THROTTLE_TIME_DELAY 250

typedef enum {
    GHIRecvData,
    GHINoData,
    GHIConnClosed,
    GHIError
} GHIRecvResult;

typedef enum {
    GHITrySendError,
    GHITrySendSent,
    GHITrySendBuffered
} GHITrySendResult;

extern char * ghiProxyAddress;
extern unsigned short ghiProxyPort;
extern int ghiThrottleBufferSize;
extern gsi_time ghiThrottleTimeDelay;

void ghiCreateLock(void);
void ghiFreeLock(void);
void ghiLock(void);
void ghiUnlock(void);
#ifdef HTTP_LOG
void ghiLog(char * buffer, int len);
#else
#define ghiLog(b, c)
#endif
GHIRecvResult ghiDoReceive(GHIConnection * connection, char buffer[], int * bufferLen);
int ghiDoSend(GHIConnection * connection, const char * buffer, int len);
GHITrySendResult ghiTrySendThenBuffer(GHIConnection * connection, const char * buffer, int len);
GHTTPBool ghiSetProxy(const char * server);
GHTTPBool ghiSetRequestProxy(GHTTPRequest request, const char * server);
void ghiThrottleSettings(int bufferSize, gsi_time timeDelay);
#ifdef UNDER_CE
int isspace(int c);
#endif

#ifdef __cplusplus
}
#endif

#endif
