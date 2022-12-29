#ifndef NITRO_OS_EXCEPTION_H_
#define NITRO_OS_EXCEPTION_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/misc.h>
#include <nitro/types.h>

typedef void (* OSExceptionHandler) (u32, void *);

void OS_SetExceptionVectorUpper(void);

void OS_SetExceptionVectorLower(void);

void OS_InitException(void);

void OS_SetUserExceptionHandler(OSExceptionHandler handler, void * arg);

void OS_EnableUserExceptionHandlerOnDebugger(void);

#ifdef __cplusplus
}
#endif

#endif
