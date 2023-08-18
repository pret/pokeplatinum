#ifndef NNS_MCS_PRINT_H_
#define NNS_MCS_PRINT_H_

#ifdef __cplusplus
extern "C" {
#endif

#if defined(NNS_FINALROM)

    #define         NNS_McsInitPrint(pBuffer, size) ((void)((void)(pBuffer), (size)))

    #define         NNS_McsPutString(string) ((void)0)

    #define         NNS_McsPrintf(fmt, ...) ((void)0)

#else

void NNS_McsInitPrint(
    void * pBuffer,
    u32 size);

BOOL NNS_McsPutString(const char * string);

BOOL NNS_McsPrintf(
    const char * format,
    ...);

#endif

#ifdef __cplusplus
}
#endif

#endif
