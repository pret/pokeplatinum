#ifndef DWC_ND_H_
#define DWC_ND_H_

#include <nd/DWCi_Nd.h>

#ifdef __cplusplus
extern "C" {
#endif

BOOL DWC_NdInitAsync(DWCNdCallback callback, char * gamecd, char * passwd);
BOOL DWC_NdCleanupAsync(DWCNdCleanupCallback callback);
BOOL DWC_NdSetAttr(const char * attr1, const char * attr2, const char * attr3);
BOOL DWC_NdGetFileListNumAsync(int * entrynum);
BOOL DWC_NdGetFileListAsync(DWCNdFileInfo * filelist, unsigned int offset, unsigned int num);
BOOL DWC_NdGetFileAsync(DWCNdFileInfo * fileinfo, char * buf, unsigned int size);
BOOL DWC_NdCancelAsync(void);
BOOL DWC_NdGetProgress(u32 * received, u32 * contentlen);

#ifdef __cplusplus
}
#endif

#endif
