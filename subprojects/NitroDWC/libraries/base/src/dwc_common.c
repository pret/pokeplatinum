#include <string.h>
#include <nitro.h>

#include <base/dwc_common.h>

static MATHRandContext32 stRandContext32 = { 0, 0, 0 };

int DWC_SetCommonKeyValueString (const char * key, const char * value, char * string, char separator)
{

    SDK_ASSERT(key && value);

    OS_SNPrintf(string, DWC_COMMONSTR_MAX_KEY_VALUE_LEN,
                "%c%s%c%s",
                separator, key, separator, value);

    return (int)strlen(string);
}

int DWC_AddCommonKeyValueString (const char * key, const char * value, char * string, char separator)
{
    (void)DWC_SetCommonKeyValueString(key, value, strchr(string, '\0'), separator);
    return (int)strlen(string);
}

int DWC_GetCommonValueString (const char * key, char * value, const char * string, char separator)
{
    const char * pSrcBegin;
    char * pSrcEnd;
    int len;

    SDK_ASSERT(key);

    if (!value) return -1;

    pSrcBegin = strchr(string, separator);
    if (!pSrcBegin) return -1;

    while (1){
        if (!strncmp(pSrcBegin+1, key, strlen(key)) &&
            (pSrcBegin[strlen(key)+1] == separator)){
            break;
        }

        pSrcBegin = strchr(pSrcBegin+1, separator);
        if (!pSrcBegin) return -1;
        pSrcBegin = strchr(pSrcBegin+1, separator);
        if (!pSrcBegin) return -1;
    }

    pSrcBegin = strchr(pSrcBegin+1, separator);
    if (!pSrcBegin) return -1;
    pSrcBegin++;

    pSrcEnd = strchr(pSrcBegin, separator);
    if (pSrcEnd) len = (int)(pSrcEnd-pSrcBegin);
    else len = (int)strlen(pSrcBegin);

    strncpy(value, pSrcBegin, (u32)len);
    value[len] = '\0';

    return len;
}

u32 DWCi_GetMathRand32 (u32 max)
{
    u64 seed;

    if (!stRandContext32.x && !stRandContext32.mul && !stRandContext32.add){
        OS_GetMacAddress((u8 *)&seed);
        seed = ((seed >> 24) & 0xffffff) | (OS_GetTick() << 24);
        MATH_InitRand32(&stRandContext32, seed);
    }

    return MATH_Rand32(&stRandContext32, max);
}

u32 DWCi_WStrLen (const u16 * str)
{
    u32 length = 0;

    while (str[length] != 0)
    {
        length++;
    }

    return length;
}
