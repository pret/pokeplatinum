#ifndef DEBUGGING_H
#define DEBUGGING_H

#ifdef LOGGING_ENABLED

#define LOG_MESSAGE_MAX_LENGTH 1024
#include "charcode.h"
#include "strbuf.h"

#ifdef __JETBRAINS_IDE__
[[jetbrains::format(printf, 1, 2)]] // so CLion validates templating
#endif
void EmulatorPrintf(const char *text, ...);
BOOL LogSubsystemAllowed(const char *subsystemName);

#ifdef __JETBRAINS_IDE__
[[jetbrains::format(printf, 2, 3)]]
#endif
void EmulatorLog(const char *subsystem, const char *text, ...);
void EmulatorPrintCharMapBuf(const charcode_t *buf, u16 len);
void EmulatorPrintStrBuf(const Strbuf *buf);

#else

#define EmulatorPrintf(text, ...)
#define EmulatorLog(subsystem, text, ...)
#define EmulatorPrintCharMapBuf(buf, len) EmulatorPrintCharMapBuf(buf, len)
#define EmulatorPrintStrBuf(buf)

#endif

#endif
