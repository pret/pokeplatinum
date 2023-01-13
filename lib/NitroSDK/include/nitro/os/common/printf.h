#ifndef NITRO_OS_COMMON_PRINTF_H_
#define NITRO_OS_COMMON_PRINTF_H_

#pragma warn_padding off
// #include <stdio.h>
#include <null.h>
#include <size_t.h>
#pragma warn_padding reset
#include <stdarg.h>
#include <nitro/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define REG_EMU_CONSOLE_OUT 0x4fff000
#define reg_OS_EMU_CONSOLE_OUT (*((REGType8v *)REG_EMU_CONSOLE_OUT))

#ifndef SDK_FINALROM
extern void (* OS_PutString) (const char * str);
#else
#define OS_PutString(x) ((void)0)
#endif

int OS_SPrintf(char * dst, const char * fmt, ...);
int OS_VSPrintf(char * dst, const char * fmt, va_list vlist);
int OS_SNPrintf(char * dst, size_t len, const char * fmt, ...);
int OS_VSNPrintf(char * dst, size_t len, const char * fmt, va_list vlist);
int OS_VSNPrintfEx(char * dst, size_t len, const char * fmt, va_list vlist);

#ifndef SDK_FINALROM
void OS_PutChar(char c);
void OS_VPrintf(const char * fmt, va_list vlist);
void OS_TVPrintf(const char * fmt, va_list vlist);
void OS_TVPrintfEx(const char * fmt, va_list vlist);
void OS_Printf(const char * fmt, ...);
void OS_TPrintf(const char * fmt, ...);
void OS_TPrintfEx(const char * fmt, ...);
#ifndef SDK_NO_MESSAGE
void OSi_Warning(const char * file, int line, const char * fmt, ...);
void OSi_TWarning(const char * file, int line, const char * fmt, ...);
void OSi_Panic(const char * file, int line, const char * fmt, ...);
void OSi_TPanic(const char * file, int line, const char * fmt, ...);
#else
void OS_Terminate();
#define OSi_Warning(file, line, ...) ((void)0)
#define OSi_TWarning(file, line, ...) ((void)0)
#define OSi_Panic(file, line, ...) OS_Terminate()
#define OSi_TPanic(file, line, ...) OS_Terminate()
#endif

#define OS_Warning(...) OSi_Warning(__FILE__, __LINE__, __VA_ARGS__);
#define OS_Panic(...) OSi_Panic(__FILE__, __LINE__, __VA_ARGS__);
#define OS_TWarning(...) OSi_TWarning(__FILE__, __LINE__, __VA_ARGS__);
#define OS_TPanic(...) OSi_TPanic(__FILE__, __LINE__, __VA_ARGS__);

#else

void OS_Terminate();
#define OS_PutChar(...) ((void)0)
#define OS_VPrintf(fmt, ...) ((void)0)
#define OS_Printf(...) ((void)0)
#define OSi_Warning(file, line, ...) ((void)0)
#define OSi_Panic(file, line, ...) OS_Terminate()
#define OS_Warning(...) ((void)0)
#define OS_Panic(...) OS_Terminate()

#define OS_TVPrintf(fmt, ...) ((void)0)
#define OS_TVPrintfEx(fmt, ...) ((void)0)
#define OS_TPrintf(...) ((void)0)
#define OS_TPrintfEx(...) ((void)0)
#define OSi_TWarning(file, line, ...) ((void)0)
#define OSi_TPanic(file, line, ...) OS_Terminate()
#define OS_TWarning(...) ((void)0)
#define OS_TPanic(...) OS_Terminate()
#endif

typedef union {
    u16 s;
    char c[2];
} OSPrintWChar;

#define OS_PRINTSRV_BUFFERSIZE 1024
#define OS_PRINTSRV_WCHARSIZE (OS_PRINTSRV_BUFFERSIZE / sizeof(OSPrintWChar))

typedef volatile struct {
    u32 in;
    u32 out;
    OSPrintWChar buffer[OS_PRINTSRV_WCHARSIZE];
} OSPrintServerBuffer;

#ifdef SDK_ARM9
#ifndef SDK_FINALROM
void OS_InitPrintServer(void);
void OS_PrintServer(void);
#else
#define OS_InitPrintServer() ((void)0)
#define OS_PrintServer() ((void)0)
#endif
#endif

#ifdef __cplusplus
}
#endif

#endif
