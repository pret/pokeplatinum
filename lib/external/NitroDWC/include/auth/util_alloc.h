#ifndef DWC_UTIL_ALLOC_H_
#define DWC_UTIL_ALLOC_H_

#include <nitro.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef void *(* DWCAuthAlloc)(unsigned long name, long size);
typedef void (* DWCAuthFree)(unsigned long name, void * ptr, long size);

#ifdef __cplusplus
}
#endif

#endif
