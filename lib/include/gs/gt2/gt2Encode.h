#ifndef _GT_ENCODE_H
#define _GT_ENCODE_H

#ifdef __cplusplus
extern "C" {
#endif

#include <stdarg.h>

#define GT_INT 'i'
#define GT_INT_ "i"
#define GT_INT_TYPE int
#define GT_UINT 'u'
#define GT_UINT_ "u"
#define GT_UINT_TYPE unsigned int
#define GT_SHORT 'o'
#define GT_SHORT_ "o"
#define GT_SHORT_TYPE short
#define GT_USHORT 'p'
#define GT_USHORT_ "p"
#define GT_USHORT_TYPE unsigned short
#define GT_CHAR 'c'
#define GT_CHAR_ "c"
#define GT_CHAR_TYPE signed char
#define GT_UCHAR 'b'
#define GT_UCHAR_ "b"
#define GT_UCHAR_TYPE unsigned char
#define GT_FLOAT 'f'
#define GT_FLOAT_ "f"
#define GT_FLOAT_TYPE float
#define GT_DOUBLE 'd'
#define GT_DOUBLE_ "d"
#define GT_DOUBLE_TYPE double
#define GT_CSTR 's'
#define GT_CSTR_ "s"
#define GT_CSTR_TYPE char *
#define GT_CSTR_PTR 'S'
#define GT_CSTR_PTR_ "S"
#define GT_CSTR_PTR_TYPE char **
#define GT_DBSTR 'w'
#define GT_DBSTR_ "w"
#define GT_DBSTR_TYPE short *
#define GT_DBSTR_PTR 'W'
#define GT_DBSTR_PTR_ "W"
#define GT_DBSTR_PTR_TYPE short **
#define GT_RAW 'r'
#define GT_RAW_ "r"
#define GT_RAW_TYPE char *
#define GT_RAW_PTR 'R'
#define GT_RAW_PTR_ "R"
#define GT_RAW_PTR_TYPE char **
#define GT_BIT 'z'
#define GT_BIT_ "z"
#define GT_BIT_TYPE unsigned char

#if defined(UNDER_CE) || defined(__mips64)
#define ALIGNED_COPY
#endif

typedef unsigned short GTMessageType;

int gtEncode(GTMessageType msgType, const char * fmtString, char * outBuffer, int outLength, ...);
int gtEncodeV(GTMessageType msgType, const char * fmtString, char * outBuffer, int outLength, va_list * args);
int gtEncodeNoType(const char * fmtString, char * outBuffer, int outLength, ...);
int gtEncodeNoTypeV(const char * fmtString, char * outBuffer, int outLength, va_list * args);
int gtDecode(const char * fmtString, char * inBuffer, int inLength, ...);
int gtDecodeV(const char * fmtString, char * inBuffer, int inLength, va_list * args);
int gtDecodeNoType(const char * fmtString, char * inBuffer, int inLength, ...);
int gtDecodeNoTypeV(const char * fmtString, char * inBuffer, int inLength, va_list * args);
GTMessageType gtEncodedMessageType(char * inBuffer);

#ifdef __cplusplus
}
#endif

#endif
