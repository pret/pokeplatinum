#ifndef DEBUGGING_H
#define DEBUGGING_H

#ifdef LOGGING_ENABLED

#define LOG_MESSAGE_MAX_LENGTH 1024
#include "charcode.h"
#include "strbuf.h"

// Prints to the emulator's standard output, with printf formatting
__attribute__((format(printf, 1, 2))) void EmulatorPrintf(const char *text, ...);

// Prints to the emulator's standard output, with printf formatting, but adds a marker prefix and a newline at the end
__attribute__((format(printf, 2, 3))) void EmulatorLog(const char *text, ...);
// Prints the contents of the specified buffer by translating the game's charmap to utf-8
void EmulatorPrintCharMapBuf(const charcode_t *buf, u16 len);
// Prints the contents of the specified Strbuf by translating the game's charmap to utf-8
void EmulatorPrintStrBuf(const Strbuf *buf);

#else

#define EmulatorPrintf(text, ...)
#define EmulatorLog(subsystem, text, ...)
#define EmulatorPrintCharMapBuf(buf, len) EmulatorPrintCharMapBuf(buf, len)
#define EmulatorPrintStrBuf(buf)

#endif

#endif
