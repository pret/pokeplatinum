#include "constants/charcode.h"

#include "charcode.h"

#define FORMAT_ARG_TYPE_MASK   0xFF00

charcode_t *CharCode_SkipFormatArg(const charcode_t *cstr)
{
    GF_ASSERT(*cstr == CHAR_FORMAT_ARG);

    if (*cstr == CHAR_FORMAT_ARG) {
        cstr += 2;
        u32 skip = *cstr++;
        cstr += skip;
    }

    return cstr;
}

u32 CharCode_FormatArgType(const charcode_t *cstr)
{
    GF_ASSERT(*cstr== CHAR_FORMAT_ARG);
    return *(cstr + 1);
}

BOOL CharCode_IsFormatArg(const charcode_t *cstr)
{
    u32 type = CharCode_FormatArgType(cstr);

    if ((type & FORMAT_ARG_TYPE_MASK) == 0x100
            || (type & FORMAT_ARG_TYPE_MASK) == 0x600
            || (type & FORMAT_ARG_TYPE_MASK) == 0x500) {
        return TRUE;
    }

    return FALSE;
}

u32 CharCode_FormatArgParam(const charcode_t *cstr, u32 paramIdx)
{
    GF_ASSERT(*cstr == CHAR_FORMAT_ARG);

    cstr += 2;
    u32 skip = *cstr++;

    GF_ASSERT(paramIdx < skip);

    return cstr[paramIdx];
}

