#ifdef LOGGING_ENABLED
#include "debug.h"

#include "charcode.h"
#include "charmap.h"
#include "strbuf.h"
#define NOCASHGBAIDADDR     0x04FFFA00
#define NOCASHGBAPRINTADDR1 0x04FFFA14 // does not automatically add the newline
#define NOCASHGBAPRINTADDR2 0x04FFFA18 // does automatically add the newline

#define MELONDS_PRINT_MAX_LEN 120

volatile const char **noCashPrint = (volatile char **)NOCASHGBAPRINTADDR1;

volatile char nocashbuf[LOG_MESSAGE_MAX_LENGTH];

void EmulatorVPrintf(const char *text, va_list ap)
{

    int res = vsnprintf(nocashbuf, LOG_MESSAGE_MAX_LENGTH, text, ap);

    int toprint = res >= LOG_MESSAGE_MAX_LENGTH - 1 ? LOG_MESSAGE_MAX_LENGTH - 1 : res;
    char *cashbuf = nocashbuf;
    while (toprint > 0) {
        *noCashPrint = cashbuf;
        toprint -= MELONDS_PRINT_MAX_LEN;
        cashbuf += MELONDS_PRINT_MAX_LEN;
    }
    if (res >= LOG_MESSAGE_MAX_LENGTH - 1) {
        *noCashPrint = "\nlog truncated\n";
    }
}
void EmulatorPrintf(const char *text, ...)
{
    va_list args;
    va_start(args, text);
    EmulatorVPrintf(text, args);
    va_end(args);
}

void EmulatorLog(const char *text, ...)
{
    EmulatorPrintf("[GAME_LOG] ");
    va_list args;
    va_start(args, text);
    EmulatorVPrintf(text, args);
    va_end(args);
    EmulatorPrintf("\n");
}

void EmulatorPrintStrBuf(const Strbuf *buf)
{
    EmulatorPrintCharMapBuf(buf->data, buf->size);
}

void EmulatorPrintCharMapBuf(const charcode_t *buf, const u16 len)
{
    char outbuf[LOG_MESSAGE_MAX_LENGTH] = "";
    size_t outbuf_len = 0;
    for (int i = 0; i < len; ++i) {
        charcode_t charcode = buf[i];
        const char *mapping = resolve_charmap(charcode);
        if (mapping == NULL) {
            EmulatorPrintf("Mapping is null ptr, char code was 0x%X\n", charcode);
            continue;
        }
        const size_t maplen = strlen(mapping);
        if (outbuf_len + maplen + 1 > LOG_MESSAGE_MAX_LENGTH) {
            // flush buffer before continuing
            outbuf[outbuf_len] = '\0';
            EmulatorPrintf(outbuf);
            outbuf_len = 0;
            i--;
        } else {
            // continue appending
            memcpy(&outbuf[outbuf_len], mapping, maplen);
            outbuf_len += maplen;
            outbuf[outbuf_len] = '\0';
        }
    }
    if (outbuf_len > 0) {
        outbuf[outbuf_len] = '\0';
        EmulatorPrintf(outbuf);
    }
    EmulatorPrintf("\n");
}

#endif
