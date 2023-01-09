#ifndef NITRO_LIBRARY_CTRDG_WORK_H_
#define NITRO_LIBRARY_CTRDG_WORK_H_

#include <nitro/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct CTRDGWork {
    vu16 subpInitialized;
    u16 lockID;
} CTRDGWork;

#ifdef __cplusplus
}
#endif

#endif
