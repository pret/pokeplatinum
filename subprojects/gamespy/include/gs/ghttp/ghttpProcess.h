#ifndef _GHTTPPROCESS_H_
#define _GHTTPPROCESS_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "ghttpMain.h"
#include "ghttpConnection.h"

void ghiDoHostLookup(GHIConnection * connection);
void ghiDoConnecting(GHIConnection * connection);
void ghiDoSecuringSession(GHIConnection * connection);
void ghiDoSendingRequest(GHIConnection * connection);
void ghiDoPosting(GHIConnection * connection);
void ghiDoWaiting(GHIConnection * connection);
void ghiDoReceivingStatus(GHIConnection * connection);
void ghiDoReceivingHeaders(GHIConnection * connection);
void ghiDoReceivingFile(GHIConnection * connection);

#ifdef __cplusplus
}
#endif

#endif
