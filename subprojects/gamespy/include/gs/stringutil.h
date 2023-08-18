#ifndef __STRINGUTIL_H__
#define __STRINGUTIL_H__

#ifdef __cplusplus
extern "C" {
#endif

#ifdef _PS2
#define ALIGNED __attribute__ ((aligned(16)))
#else
#define ALIGNED
#endif

#define UCS2Char unsigned short
#define UCS2String unsigned short *
#define UTF8ByteType unsigned char
#define UTF8String char *
#define UTF8_FOLLOW_BYTE_TAG 0x80
#define UTF8_TWO_BYTE_TAG 0xC0
#define UTF8_THREE_BYTE_TAG 0xE0
#define UTF8_FOUR_BYTE_TAG 0xF0
#define UTF8_FOLLOW_BYTE_MASK 0x3F
#define UTF8_TWO_BYTE_MASK 0x1F
#define UTF8_THREE_BYTE_MASK 0x0F
#define UTF8_IS_THREE_BYTE(a) (((UTF8ByteType)a & UTF8_FOUR_BYTE_TAG) == UTF8_THREE_BYTE_TAG)
#define UTF8_IS_TWO_BYTE(a) (((UTF8ByteType)a & UTF8_THREE_BYTE_TAG) == UTF8_TWO_BYTE_TAG)
#define UTF8_IS_FOLLOW_BYTE(a) (((UTF8ByteType)a & UTF8_TWO_BYTE_TAG) == UTF8_FOLLOW_BYTE_TAG)
#define UTF8_IS_SINGLE_BYTE(a) ((UTF8ByteType)a <= 0x7F)
#define REPLACE_INVALID_CHAR '?';

int _ReadUCS2CharFromUTF8String(const UTF8String theUTF8String, UCS2Char * theUnicodeChar);
int _UCS2CharToUTF8String(UCS2Char theUCS2Char, UTF8String theUTF8String);
int _UCS2ToUTF8ConversionLengthOnly(const UCS2String theUCS2String);
int _UTF8ToUCS2ConversionLengthOnly(const UTF8String theUTF8String);
int AsciiToUTF8String(const char * theAsciiString, UTF8String theUTF8String);
int UTF8ToAsciiString(const UTF8String theUTF8String, char * theAsciiString);
int UCS2ToUTF8String(const UCS2String theUCS2String, UTF8String theUTF8String);
int UTF8ToUCS2String(const UTF8String theUTF8String, UCS2String theUCS2String);
int UCS2ToAsciiString(const UCS2String theUCS2String, char * theAsciiString);
int AsciiToUCS2String(const char * theAsciiString, UCS2String theUCS2String);
UTF8String UCS2ToUTF8StringAlloc(const UCS2String theUCS2String);
UCS2String UTF8ToUCS2StringAlloc(const UTF8String theUTF8String);
UTF8String * UCS2ToUTF8StringArrayAlloc(const UCS2String * theUCS2StringArray, int theNumStrings);
UCS2String * UTF8ToUCS2StringArrayAlloc(const UTF8String * theUTF8StringArray, int theNumStrings);

#ifdef __cplusplus
}
#endif

#endif
