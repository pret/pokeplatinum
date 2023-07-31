#ifndef DWC_COMMON_H_
#define DWC_COMMON_H_

#ifdef __cplusplus
extern "C" {
#endif

#define DWC_COMMONSTR_MAX_KEY_VALUE_LEN 4096

extern int DWC_SetCommonKeyValueString(const char * key, const char * value, char * string, char separator);
extern int DWC_AddCommonKeyValueString(const char * key, const char * value, char * string, char separator);
extern int DWC_GetCommonValueString(const char * key, char * value, const char * string, char separator);
extern u32 DWCi_GetMathRand32(u32 max);
extern u32 DWCi_WStrLen(const u16 * str);

#ifdef __cplusplus
}
#endif

#endif
