#ifndef DEBUGGING_H
#define DEBUGGING_H

#ifdef LOGGING_ENABLED

#define LOG_MESSAGE_MAX_LENGTH 1024
#include "charcode.h"
#include "strbuf.h"

// Prints to the emulator's standard output, with printf formatting
__attribute__((format(printf, 1, 2))) void EmulatorPrintf(const char *text, ...);

// Prints to the emulator's standard output, with printf formatting, but adds a marker prefix and a newline at the end
__attribute__((format(printf, 1, 2))) void EmulatorLog(const char *text, ...);

#else

#define EmulatorPrintf(text, ...)
#define EmulatorLog(text, ...)

#endif

#endif
