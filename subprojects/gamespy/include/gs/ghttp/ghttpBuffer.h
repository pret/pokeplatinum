#ifndef _GHTTPBUFFER_H_
#define _GHTTPBUFFER_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "ghttpMain.h"
#include "ghttpEncryption.h"

typedef struct GHIBuffer {
    struct GHIConnection * connection;
    char * data;
    int size;
    int len;
    int pos;
    int sizeIncrement;
    GHTTPBool fixed;
    GHTTPBool dontFree;
    GHTTPBool encrypted;
} GHIBuffer;

GHTTPBool ghiInitBuffer(struct GHIConnection * connection, GHIBuffer * buffer, int initialSize, int sizeIncrement);
GHTTPBool ghiInitFixedBuffer(struct GHIConnection * connection, GHIBuffer * buffer, char * userBuffer, int size);
void ghiFreeBuffer(GHIBuffer * buffer);
GHTTPBool ghiAppendDataToBuffer(GHIBuffer * buffer, const char * data, int dataLen);
GHTTPBool ghiAppendHeaderToBuffer(GHIBuffer * buffer, const char * name, const char * value);
GHTTPBool ghiAppendCharToBuffer(GHIBuffer * buffer, int c);
GHTTPBool ghiReadDataFromBuffer(GHIBuffer * bufferIn, char bufferOut[], int * len);
GHTTPBool ghiAppendIntToBuffer(GHIBuffer * buffer, int i);
void ghiResetBuffer(GHIBuffer * buffer);
GHTTPBool ghiSendBufferedData(struct GHIConnection * connection);
GHTTPBool ghiResizeBuffer(GHIBuffer * buffer, int sizeIncrement);

#ifdef __cplusplus
}
#endif

#endif
