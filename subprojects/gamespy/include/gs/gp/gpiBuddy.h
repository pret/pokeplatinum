#ifndef _GPIBUDDY_H_
#define _GPIBUDDY_H_

#include "gpi.h"

#define GPI_BM_MESSAGE 1
#define GPI_BM_REQUEST 2
#define GPI_BM_REPLY 3
#define GPI_BM_STATUS 100
#define GPI_BM_INVITE 101
#define GPI_BM_PING 102
#define GPI_BM_PONG 103
#define GPI_BM_FILE_SEND_REQUEST 200
#define GPI_BM_FILE_SEND_REPLY 201
#define GPI_BM_FILE_BEGIN 202
#define GPI_BM_FILE_END 203
#define GPI_BM_FILE_DATA 204
#define GPI_BM_FILE_SKIP 205
#define GPI_BM_FILE_TRANSFER_THROTTLE 206
#define GPI_BM_FILE_TRANSFER_CANCEL 207
#define GPI_BM_FILE_TRANSFER_KEEPALIVE 208

GPResult gpiProcessRecvBuddyMessage(GPConnection * connection, const char * input);
GPResult gpiSendServerBuddyMessage(GPConnection * connection, int profileid, int type, const char * message);
GPResult gpiSendBuddyMessage(GPConnection * connection, int profileid, int type, const char * message);
GPResult gpiAuthBuddyRequest(GPConnection * connection, GPProfile profile);
GPResult gpiDeleteBuddy(GPConnection * connection, GPProfile profile);

#endif
