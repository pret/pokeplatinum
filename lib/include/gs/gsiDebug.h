#ifndef __GSIDEBUG_H__
#define __GSIDEBUG_H__

typedef gsi_u8 GSIDebugLevel;

#define GSIDebugLevel_HotError (GSIDebugLevel)(1 << 0)
#define GSIDebugLevel_WarmError (GSIDebugLevel)(1 << 1)
#define GSIDebugLevel_Warning (GSIDebugLevel)(1 << 2)
#define GSIDebugLevel_Notice (GSIDebugLevel)(1 << 3)
#define GSIDebugLevel_Comment (GSIDebugLevel)(1 << 4)
#define GSIDebugLevel_RawDump (GSIDebugLevel)(1 << 5)
#define GSIDebugLevel_StackTrace (GSIDebugLevel)(1 << 6)
#define GSIDebugLevel_Count 7
#define GSIDebugLevel_None (GSIDebugLevel)(0)
#define GSIDebugLevel_Normal (GSIDebugLevel)(0x07)
#define GSIDebugLevel_Debug (GSIDebugLevel)(0x0F)
#define GSIDebugLevel_Verbose (GSIDebugLevel)(0x1F)
#define GSIDebugLevel_Hardcore (GSIDebugLevel)(0xFF)

typedef enum {
    GSIDebugType_Network,
    GSIDebugType_File,
    GSIDebugType_Memory,
    GSIDebugType_State,
    GSIDebugType_Misc,
    GSIDebugType_Count,
    GSIDebugType_All = GSIDebugType_Count
} GSIDebugType;

typedef enum {
    GSIDebugCat_App,
    GSIDebugCat_GP,
    GSIDebugCat_Peer,
    GSIDebugCat_QR2,
    GSIDebugCat_SB,
    GSIDebugCat_Voice,
    GSIDebugCat_AD,
    GSIDebugCat_NatNeg,
    GSIDebugCat_HTTP,
    GSIDebugCat_Common,
    GSIDebugCat_Count,
    GSIDebugCat_All = GSIDebugCat_Count
} GSIDebugCategory;

extern char * gGSIDebugCatStrings[GSIDebugCat_Count];
extern char * gGSIDebugTypeStrings[GSIDebugType_Count];
extern char * gGSIDebugLevelStrings[GSIDebugLevel_Count];

#ifndef GSI_COMMON_DEBUG
    #if !defined(_WIN32) && !defined(__MWERKS__)
        #define gsDebugFormat(c, t, l, f, ...)
        #define gsDebugVaList(c, t, l, f, v)
        #define gsDebugBinary(c, t, l, b, n)
        #define gsSetDebugLevel(c, t, l)
        #define gsSetDebugFile(f)
        #define gsOpenDebugFile(f)
        #define gsGetDebugFile
        #define gsSetDebugCallback(c)
    #elif defined(_NITRO)
        #define gsDebugFormat(...)
        #define gsDebugVaList(c, t, l, f, v)
        #define gsDebugBinary(c, t, l, b, n)
        #define gsSetDebugLevel(c, t, l)
        #define gsSetDebugFile(f)
        #define gsOpenDebugFile(f)
        #define gsGetDebugFile
        #define gsSetDebugCallback(c)
    #else
        #define gsDebugFormat
        #define gsDebugVaList
        #define gsDebugBinary
        #define gsSetDebugLevel
        #define gsSetDebugFile
        #define gsOpenDebugFile
        #define gsGetDebugFile
        #define gsSetDebugCallback
    #endif
#else

typedef void (* GSIDebugCallback)(GSIDebugCategory, GSIDebugType, GSIDebugLevel, const char *, va_list);

typedef struct GSIDebugInstance {
#if !defined(_NITRO)
    FILE * mGSIDebugFile;
#endif
    GSIDebugCallback mDebugCallback;
    gsi_i32 mInitialized;
    GSICriticalSection mDebugCrit;

    GSIDebugLevel mGSIDebugLevel[GSIDebugCat_Count][GSIDebugType_Count];
} GSIDebugInstance;

void gsDebugFormat(GSIDebugCategory theCat, GSIDebugType theType, GSIDebugLevel theLevel, const char * theTokenStr, ...);
void gsDebugVaList(GSIDebugCategory theCat, GSIDebugType theType, GSIDebugLevel theLevel, const char * theTokenStr, va_list theParams);
void gsDebugBinary(GSIDebugCategory theCat, GSIDebugType theType, GSIDebugLevel theLevel, const char * theBuffer, gsi_i32 theLength);
void gsSetDebugLevel(GSIDebugCategory theCat, GSIDebugType theType, GSIDebugLevel theLevel);

#if !defined(_NITRO)
void gsSetDebugFile(FILE * theFile);
FILE * gsOpenDebugFile(const char * theFileName);
FILE * gsGetDebugFile();
#endif
void gsSetDebugCallback(GSIDebugCallback theCallback);
#endif

#endif
