#ifndef NITRO_OS_FUNCTIONCOST_H_
#define NITRO_OS_FUNCTIONCOST_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/os/common/profile.h>

#if defined(OS_PROFILE_AVAILABLE) && defined(OS_PROFILE_FUNCTION_COST)
#ifndef OS_NO_FUNCTIONCOST
#define OSi_FUNCTIONCOST_THREAD_INTERVAL
#endif
#endif

#define OSi_FUNCTIONCOST_EXIT_TAG 0xffffffff

typedef union {
    struct {
        u32 name;
        u32 time;
#ifdef OSi_FUNCTIONCOST_THREAD_INTERVAL
        u32 interval;
#endif
    } entry;
    struct {
        u32 tag;
        u32 time;
#ifdef OSi_FUNCTIONCOST_THREAD_INTERVAL
        u32 interval;
#endif
    } exit;
} OSFunctionCost;

#define OSi_SIZEOF_FUNCTIONCOST sizeof(OSFunctionCost)

typedef struct {
    OSFunctionCost * current;
    OSFunctionCost * limit;
    u16 enable;
    u16 padding;
#ifdef OSi_FUNCTIONCOST_THREAD_INTERVAL
    u32 breakTime;
#endif
    OSFunctionCost array[1];
} OSFunctionCostInfo;

#define OSi_COSTINFO_SIZEOF_HEADERPART (sizeof(OSFunctionCostInfo) - sizeof(OSFunctionCost))

typedef struct {
    u32 name;
    u32 count;
    u64 time;
} OSFunctionCostStatistics;

typedef struct {
    u32 size;
    OSFunctionCostStatistics * limit;
    OSFunctionCostStatistics array[1];
} OSFunctionCostStatisticsInfo;

#define OSi_STATISTICS_SIZEOF_HEADERPART (sizeof(OSFunctionCostStatisticsInfo) - sizeof(OSFunctionCostStatistics))
#define OSi_STATISTICS_LEAST_SIZE (OSi_STATISTICS_SIZEOF_HEADERPART + sizeof(OSFunctionCostStatistics))

#ifndef OS_NO_FUNCTIONCOST
void OS_InitFunctionCost(void * buf, u32 size);
#else
static inline void OS_InitFunctionCost (void *, u32)
{
}
#endif

#ifndef OS_NO_FUNCTIONCOST
int OS_CalcFunctionCostLines(u32 size);
#else
static inline int OS_CalcFunctionCostLines (u32)
{
    return 0;
}
#endif

#ifndef OS_NO_FUNCTIONCOST
u32 OS_CalcFunctionCostBufferSize(int lines);
#else
static inline u32 OS_CalcFunctionCostBufferSize (int)
{
    return 0;
}
#endif

#ifndef OS_NO_FUNCTIONCOST
BOOL OS_CheckFunctionCostBuffer(void * buf);
#else
static inline BOOL OS_CheckFunctionCostBuffer (void * buf)
{
#pragma unused(buf)
    return FALSE;
}
#endif

#ifndef OS_NO_FUNCTIONCOST
extern void OSi_ClearThreadFunctionCostBuffer(OSThread * thread);
static inline void OS_ClearFunctionCostBuffer (void)
{
    OSi_ClearThreadFunctionCostBuffer(NULL);
}
#else
static inline void OS_ClearFunctionCostBuffer (void)
{
}
#endif

#ifndef OS_NO_FUNCTIONCOST
BOOL OS_EnableFunctionCost();
#else
static inline BOOL OS_EnableFunctionCost ()
{
    return FALSE;
}
#endif

#ifndef OS_NO_FUNCTIONCOST
BOOL OS_DisableFunctionCost();
#else
static inline BOOL OS_DisableFunctionCost ()
{
    return FALSE;
}
#endif

#ifndef OS_NO_FUNCTIONCOST
BOOL OS_RestoreFunctionCost(BOOL enable);
#else
static inline BOOL OS_RestoreFunctionCost (BOOL)
{
    return FALSE;
}
#endif

#ifndef OS_NO_FUNCTIONCOST
void OS_InitStatistics(void * statBuf, u32 size);
#else
static inline void OS_InitStatistics (void *, u32)
{
}
#endif

#ifndef OS_NO_FUNCTIONCOST
void OS_CalcThreadStatistics(void * statBuf, OSThread * thread);
#else
static inline void OS_CalcThreadStatistics (void *, OSThread *)
{
}
#endif

static inline void OS_CalcStatistics (void * statBuf)
{
    OS_CalcThreadStatistics(statBuf, NULL);
}

#ifndef OS_NO_FUNCTIONCOST
BOOL OS_CheckStatisticsBuffer(void * statBuf);
#else
static inline BOOL OS_CheckStatisticsBuffer (void * statBuf)
{
#pragma unused(statBuf)
    return FALSE;
}
#endif

#ifndef OS_NO_FUNCTIONCOST
void OS_DumpStatistics(void * statBuf);
#else
static inline void OS_DumpStatistics (void *)
{
}
#endif

#ifdef __cplusplus
}
#endif

#endif
