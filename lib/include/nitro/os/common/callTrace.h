#ifndef NITRO_OS_CALLTRACE_H_
#define NITRO_OS_CALLTRACE_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/os/common/profile.h>

#define OS_CALLTRACE_CHECK_OVERSTACK

#define OS_CALLTRACE_RECORD_R0
#define OS_CALLTRACE_RECORD_R1
#define OS_CALLTRACE_RECORD_R2
#define OS_CALLTRACE_RECORD_R3

#define OS_CALLTRACE_LEVEL_AVAILABLE

typedef struct {
    u32 name;
    u32 returnAddress;

#ifdef OS_CALLTRACE_LEVEL_AVAILABLE
    u32 level;
#endif

#ifdef OS_CALLTRACE_RECORD_R0
    u32 r0;
#endif
#ifdef OS_CALLTRACE_RECORD_R1
    u32 r1;
#endif
#ifdef OS_CALLTRACE_RECORD_R2
    u32 r2;
#endif
#ifdef OS_CALLTRACE_RECORD_R3
    u32 r3;
#endif
} OSCallTrace;

#define OSi_SIZEOF_CALLTRACE sizeof(OSCallTrace)

typedef struct {
    OSCallTrace * current;
    OSCallTrace * limit;
    u16 enable;
    u16 circular;
#ifdef OS_CALLTRACE_LEVEL_AVAILABLE
    u32 level;
#endif
    OSCallTrace array[1];
} OSCallTraceInfo;

#define OSi_TRACEINFO_SIZEOF_HEADERPART (sizeof(OSCallTraceInfo) - sizeof(OSCallTrace))

typedef enum {
    OS_CALLTRACE_STACK = 0,
    OS_CALLTRACE_LOG = 1
} OSCallTraceMode;

#ifndef OS_NO_CALLTRACE
void OS_InitCallTrace(void * buf, u32 size, OSCallTraceMode mode);
#else
static inline void OS_InitCallTrace (void *, u32, OSCallTraceMode)
{
}
#endif

#ifndef OS_NO_CALLTRACE
void OS_DumpCallTrace(void);
#else
static inline void OS_DumpCallTrace (void)
{
}
#endif

#ifndef OS_NO_CALLTRACE
int OS_CalcCallTraceLines(u32 size);
#else
static inline int OS_CalcCallTraceLines (u32)
{
    return 0;
}
#endif

#ifndef OS_NO_CALLTRACE
u32 OS_CalcCallTraceBufferSize(int lines);
#else
static inline u32 OS_CalcCallTraceBufferSize (int)
{
    return 0;
}
#endif

#ifndef OS_NO_CALLTRACE
void OS_ClearCallTraceBuffer(void);
#else
static inline void OS_ClearCallTraceBuffer (void)
{
}
#endif

#ifndef OS_NO_CALLTRACE
BOOL OS_EnableCallTrace();
#else
static inline BOOL OS_EnableCallTrace ()
{
    return FALSE;
}
#endif

#ifndef OS_NO_CALLTRACE
BOOL OS_DisableCallTrace();
#else
static inline BOOL OS_DisableCallTrace ()
{
    return FALSE;
}
#endif

#ifndef OS_NO_CALLTRACE
BOOL OS_RestoreCallTrace(BOOL enable);
#else
static inline BOOL OS_RestoreCallTrace (BOOL)
{
    return FALSE;
}
#endif

#ifndef OS_NO_CALLTRACE
void OSi_SetCallTraceEntry(const char * name, u32 lr);
#else
static inline void OSi_SetCallTraceEntry(const char * name, u32 lr);
#endif

#ifdef __cplusplus
}
#endif

#endif
