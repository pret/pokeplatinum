#ifndef _GPIBUFFER_H_
#define _GPIBUFFER_H_

#include "gpi.h"

typedef struct {
    char * buffer;
    int size;
    int len;
    int pos;
} GPIBuffer;

typedef struct GPIPeer_s * GPIPeer_st;

GPResult gpiAppendCharToBuffer(GPConnection * connection, GPIBuffer * outputBuffer, char c);
GPResult gpiAppendStringToBufferLen(GPConnection * connection, GPIBuffer * outputBuffer, const char * string, int stringLen);
GPResult gpiAppendStringToBuffer(GPConnection * connection, GPIBuffer * outputBuffer, const char * buffer);
GPResult gpiAppendIntToBuffer(GPConnection * connection, GPIBuffer * outputBuffer, int num);
GPResult gpiAppendUIntToBuffer(GPConnection * connection, GPIBuffer * outputBuffer, unsigned int num);
GPResult gpiSendOrBufferChar(GPConnection * connection, GPIPeer_st peer, char c);
GPResult gpiSendOrBufferStringLen(GPConnection * connection, GPIPeer_st peer, const char * string, int stringLen);
GPResult gpiSendOrBufferString(GPConnection * connection, GPIPeer_st peer, const char * string);
GPResult gpiSendOrBufferInt(GPConnection * connection, GPIPeer_st peer, int num);
GPResult gpiSendOrBufferUInt(GPConnection * connection, GPIPeer_st peer, unsigned int num);
GPResult gpiSendFromBuffer(GPConnection * connection, SOCKET sock, GPIBuffer * outputBuffer, GPIBool * connClosed, GPIBool clipSentData, char id[3]);
GPResult gpiRecvToBuffer(GPConnection * connection, SOCKET sock, GPIBuffer * inputBuffer, int * bytesRead, GPIBool * connClosed, char id[3]);
GPResult gpiReadMessageFromBuffer(GPConnection * connection, GPIBuffer * inputBuffer, char ** message, int * type, int * len);
GPResult gpiClipBufferToPosition(GPConnection * connection, GPIBuffer * buffer);

#endif
