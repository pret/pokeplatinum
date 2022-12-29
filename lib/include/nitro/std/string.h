#ifndef NITRO_STD_STRING_H_
#define NITRO_STD_STRING_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/misc.h>
#include <nitro/types.h>

#define STD_StrCpy STD_CopyString
#define STD_StrLCpy STD_CopyLString
#define STD_StrStr STD_SearchString
#define STD_StrLen STD_GetStringLength
#define STD_StrCat STD_ConcatenateString
#define STD_StrCmp STD_CompareString
#define STD_StrNCmp STD_CompareNString
#define STD_StrLCmp STD_CompareLString

extern char * STD_CopyString(char * destp, const char * srcp);

extern int STD_CopyLStringZeroFill(char * destp, const char * srcp, int n);

extern int STD_CopyLString(char * destp, const char * srcp, int siz);

extern char * STD_SearchString(const char * srcp, const char * str);

extern int STD_GetStringLength(const char * str);

extern char * STD_ConcatenateString(char * str1, const char * str2);

extern int STD_CompareString(const char * str1, const char * str2);

extern int STD_CompareNString(const char * str1, const char * str2, int len);

extern int STD_CompareLString(const char * str1, const char * str2);

extern int STD_TSScanf(const char * src, const char * fmt, ...);

extern int STD_TVSScanf(const char * src, const char * fmt, va_list vlist);

extern int STD_TSPrintf(char * dst, const char * fmt, ...);

extern int STD_TVSPrintf(char * dst, const char * fmt, va_list vlist);

extern int STD_TSNPrintf(char * dst, size_t len, const char * fmt, ...);

extern int STD_TVSNPrintf(char * dst, size_t len, const char * fmt, va_list vlist);

#ifdef __cplusplus
}
#endif

#endif
