#ifndef DWC_PROF_H
#define DWC_PROF_H

#include "dwc_http.h"

#ifdef __cplusplus
extern "C" {
#endif

#define DWC_PROF_RESULT_STRING_LENGTH 51

typedef enum {
    DWC_PROF_STATE_NOT_INITIALIZED  = 0,
    DWC_PROF_STATE_OPERATING,
    DWC_PROF_STATE_SUCCESS,
    DWC_PROF_STATE_FAIL
} DWCProfState;

typedef enum {
    DWC_PROF_REGION_SELF = 0x00,
    DWC_PROF_REGION_ALL  = 0xff
} DWCProfRegion;

BOOL DWC_CheckProfanityAsync(const u16 ** words, int wordsnum, const char * reserved, int timeout, char * result, int * badwordsnum);
BOOL DWC_CheckProfanityExAsync(const u16 ** words, int wordsnum, const char * reserved, int timeout, char * result, int * badwordsnum, DWCProfRegion region);
DWCProfState DWC_CheckProfanityProcess(void);

#ifdef __cplusplus
}
#endif

#endif
