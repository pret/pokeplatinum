#ifndef DWC_UTILITY_H_
#define DWC_UTILITY_H_

#ifdef __cplusplus
extern "C" {
#endif

#define DWC_UTILITY_WORK_SIZE 0x40000

#define DWC_UTILITY_TOP_MENU_FOR_USA                                         \
    (DWC_UTIL_FLAG0_TOP)

#define DWC_UTILITY_SETTING_FOR_USA                                          \
    (DWC_UTIL_FLAG0_SETTING)

#define DWC_UTILITY_TOP_MENU_FOR_EUR                                         \
    (DWC_UTIL_FLAG0_TOP)

#define DWC_UTILITY_SETTING_FOR_EUR                                          \
    (DWC_UTIL_FLAG0_SETTING)

#define DWC_UTILITY_TOP_MENU_FOR_JPN                                         \
    (DWC_UTIL_FLAG0_TOP | (DWC_UTIL_FLAG1_RAKU << 4))

#define DWC_UTILITY_SETTING_FOR_JPN                                          \
    (DWC_UTIL_FLAG0_SETTING | (DWC_UTIL_FLAG1_RAKU << 4))

#define DWC_UTILITY_TOP_MENU_COMMON                                          \
    (DWC_UTIL_FLAG0_TOP)

#define DWC_UTILITY_SETTING_COMMON                                           \
    (DWC_UTIL_FLAG0_SETTING)

#define DWC_UTILITY_TOP_MENU_EXCEPT_JPN                                      \
    DWC_UTILITY_TOP_MENU_COMMON

#define DWC_UTILITY_SETTING_EXCEPT_JPN                                       \
    DWC_UTILITY_SETTING_COMMON

enum DWC_LANGUAGE {
    DWC_LANGUAGE_JAPANESE,
    DWC_LANGUAGE_ENGLISH,
    DWC_LANGUAGE_FRENCH,
    DWC_LANGUAGE_GERMAN,
    DWC_LANGUAGE_ITALIAN,
    DWC_LANGUAGE_SPANISH,
    DWC_LANGUAGE_HANGUL
};

enum DWCUTILRESULT {
    DWC_UTIL_RESULT_SUCCESS = 0,
    DWC_UTIL_RESULT_FAILED  = ~0
};

enum DWCUTILFLAG0 {
    DWC_UTIL_FLAG0_TOP     = 0x0000,
    DWC_UTIL_FLAG0_SETTING = 0x0001
};

enum DWCUTILFLAG1 {
    DWC_UTIL_FLAG1_RAKU = 0x0001,
    DWC_UTIL_FLAG1_USA  = 0x0002
};

int DWC_StartUtility(void * work, int language, int param);
int DWC_StartUtilityEx(int language, int param);

#ifdef __cplusplus
}
#endif

#endif
