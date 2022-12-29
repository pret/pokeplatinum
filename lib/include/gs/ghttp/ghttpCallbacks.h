#ifndef _GHTTPCALLBACKS_H_
#define _GHTTPCALLBACKS_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "ghttpMain.h"
#include "ghttpConnection.h"

void ghiCallCompletedCallback(GHIConnection * connection);
void ghiCallProgressCallback(GHIConnection * connection, const char * buffer, GHTTPByteCount bufferLen);
void ghiCallPostCallback(GHIConnection * connection);

#ifdef __cplusplus
}
#endif

#endif
