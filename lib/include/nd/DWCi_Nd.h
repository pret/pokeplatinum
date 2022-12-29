#ifndef DWC_ND_DWC_ND_H
#define DWC_ND_DWC_ND_H

#if ((defined WIN32) || (defined _WIN32))
#pragma once
#define BOOL int
typedef unsigned long u32;
typedef unsigned long long u64;
#include <stdlib.h>
#else
#ifndef _NITRO
#define _NITRO
#endif
#include <nitro.h>
#include <nitroWiFi.h>
#endif

#ifdef __cplusplus
extern "C" {
#endif

#define DWC_ND_NHTTP_THREAD_PRIORITY 10
#define DWC_ND_RECVBUF_MIN 128
#define DWC_ND_LISTBUFFER_PERNUM 256
#define DWC_ND_LENGTH_GAMECODE 4
#define DWC_ND_LENGTH_PASSWORD 16
#define DWC_ND_FILEATTR_LEN 10

typedef enum {
    DWC_ND_ERROR_NONE,
    DWC_ND_ERROR_ALLOC,
    DWC_ND_ERROR_BUSY,
    DWC_ND_ERROR_HTTP,
    DWC_ND_ERROR_BUFFULL,
    DWC_ND_ERROR_DLSERVER,
    DWC_ND_ERROR_CANCELED,
    DWC_ND_ERROR_PARAM,
    DWC_ND_ERROR_FATAL,
    DWC_ND_ERROR_MAX
} DWCNdError;

typedef enum {
    DWC_ND_CBREASON_INITIALIZE,
    DWC_ND_CBREASON_GETFILELISTNUM,
    DWC_ND_CBREASON_GETFILELIST,
    DWC_ND_CBREASON_GETFILE,
    DWC_ND_CBREASON_MAX
} DWCNdCallbackReason;

typedef struct {
    char name[32 + 1];
    short explain[50 + 1];
    char param1[DWC_ND_FILEATTR_LEN + 1];
    char param2[DWC_ND_FILEATTR_LEN + 1];
    char param3[DWC_ND_FILEATTR_LEN + 1];
    unsigned int size;
} DWCNdFileInfo;

typedef void * (* DWCNdAlloc)(u32 size, int align);
typedef void (* DWCNdFree)(void * ptr);
typedef void (* DWCNdCallback)(DWCNdCallbackReason reason, DWCNdError errpr, int servererror);
typedef void (* DWCNdCleanupCallback)(void);

BOOL DWCi_NdStartup(DWCNdAlloc alloc, DWCNdFree free, char * url, char * token, char * gamecd, char * passwd, DWCNdCallback callback);
void DWCi_NdCleanupAsync(DWCNdCleanupCallback callback);
DWCNdError DWCi_NdGetError(void);
BOOL DWCi_NdSetAttr(char * attr1, char * attr2, char * attr3);
BOOL DWCi_NdGetFileListNumAsync(int * entrynum);
BOOL DWCi_NdGetFileListAsync(DWCNdFileInfo * filelist, int offset, int num);
BOOL DWCi_NdGetFileAsync(DWCNdFileInfo * filelist, char * buf, unsigned int bufsize);
BOOL DWCi_NdCancelAsync(void);
BOOL DWCi_NdGetProgress(u32 * received, u32 * contentlen);

#ifdef __cplusplus
}
#endif

#endif
