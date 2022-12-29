#ifndef NITRO_OS_ARGUMENT_H_
#define NITRO_OS_ARGUMENT_H_

#ifdef __cplusplus
extern "C" {
#endif

#ifdef SDK_FINALROM
#define OS_NO_ARGUMENT TRUE
#endif

#ifdef OS_ARGUMENT_FORCE_TO_BE_AVAILABLE
#ifdef OS_NO_ARGUMENT
#undef OS_NO_ARGUMENT
#endif
#endif

#if (defined(SDK_WIN32) || defined(SDK_FROM_TOOL))
#define SDK_ASSERT(exp) ((void)0)
#define SDK_ALIGN4_ASSERT(exp) ((void)0)
#define SDK_MINMAX_ASSERT(exp, min, max) ((void)0)
#define SDK_NULL_ASSERT(exp) ((void)0)

#if (defined(_MSC_VER) && !defined(__cplusplus))
#define inline __inline
#endif
#endif

#define OS_ARGUMENT_BUFFER_SIZE 256

#define OS_ARGUMENT_ID_STRING ":$@$Argument$@$:"
#define OS_ARGUMENT_ID_STRING_BUFFER_SIZE 18

typedef struct OSArgumentBuffer {
    char argMark[OS_ARGUMENT_ID_STRING_BUFFER_SIZE];
    u16 size;
#if defined(SDK_WIN32) || defined(SDK_FROM_TOOL)
    char buffer[OS_ARGUMENT_BUFFER_SIZE];
#else
    const char buffer[OS_ARGUMENT_BUFFER_SIZE];
#endif
} OSArgumentBuffer;

#ifndef OS_NO_ARGUMENT
extern int OS_GetArgc(void);
#else
static inline int OS_GetArgc (void)
{
    return 0;
}
#endif

#ifndef OS_NO_ARGUMENT
extern const char * OS_GetArgv(int n);
#else
static inline const char * OS_GetArgv (int n)
{
#pragma unused(n)
    return NULL;
}
#endif

#ifndef OS_NO_ARGUMENT
int OS_GetOpt(const char * optstring);
#else
static inline int OS_GetOpt (const char * optstring)
{
#pragma unused(optstring)
    return -1;
}
#endif

extern const char * OSi_OptArg;
extern int OSi_OptInd;
extern int OSi_OptOpt;

static inline const char * OS_GetOptArg (void)
{
    return OSi_OptArg;
}
static inline int OS_GetOptInd (void)
{
    return OSi_OptInd;
}
static inline int OS_GetOptOpt (void)
{
    return OSi_OptOpt;
}

#ifndef OS_NO_ARGUMENT
extern void OS_ConvertToArguments(const char * str, char cs, char * buffer, u32 bufSize);
#else
static inline void OS_ConvertToArguments (const char * str, char cs, char * buffer, u32 bufSize)
{
#pragma unused(str, cs, buffer, bufSize)
}
#endif

#ifndef OS_NO_ARGUMENT
extern void OS_SetArgumentBuffer(const char * buffer);
#else
static inline void OS_SetArgumentBuffer (const char * buffer)
{
#pragma unused(buffer)
}
#endif

#ifndef OS_NO_ARGUMENT
extern const char * OS_GetArgumentBuffer(void);
#else
static inline const char * OS_GetArgumentBuffer (void)
{
    return NULL;
}
#endif

#ifdef __cplusplus
}
#endif

#endif
