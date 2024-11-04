#include "charcode_util.h"

#include <nitro.h>
#include <string.h>

#include "constants/charcode.h"

#include "charcode.h"

static const charcode_t sHexadecimalDigits[] = {
    CHAR_WIDE_0,
    CHAR_WIDE_1,
    CHAR_WIDE_2,
    CHAR_WIDE_3,
    CHAR_WIDE_4,
    CHAR_WIDE_5,
    CHAR_WIDE_6,
    CHAR_WIDE_7,
    CHAR_WIDE_8,
    CHAR_WIDE_9,
    CHAR_WIDE_A,
    CHAR_WIDE_B,
    CHAR_WIDE_C,
    CHAR_WIDE_D,
    CHAR_WIDE_E,
    CHAR_WIDE_F,
};

static const int sPowersOfTen[] = {
    1,
    10,
    100,
    1000,
    10000,
    100000,
    1000000,
    10000000,
    100000000,
    1000000000,
};

charcode_t *CharCode_Copy(charcode_t *dst, const charcode_t *src)
{
    while (*src != CHAR_EOS) {
        *dst = *src;
        dst++;
        src++;
    }

    *dst = 0xffff;
    return dst;
}

charcode_t *CharCode_CopyNumChars(charcode_t *dst, const charcode_t *src, u32 num)
{
    for (int i = 0; i < num; i++) {
        dst[i] = src[i];
    }

    return &dst[num];
}

u32 CharCode_Length(const charcode_t *str)
{
    u32 i = 0;
    while (str[i] != CHAR_EOS) {
        i++;
    }

    return i;
}

int CharCode_Compare(const charcode_t *str1, const charcode_t *str2)
{
    while (*str1 == *str2) {
        if (*str1 == CHAR_EOS) {
            return 0;
        }

        str1++;
        str2++;
    }

    return 1;
}

int CharCode_CompareNumChars(const charcode_t *str1, const charcode_t *str2, u32 num)
{
    while (*str1 == *str2) {
        if (num == 0) {
            return 0;
        }

        if (*str1 == CHAR_EOS && *str2 == CHAR_EOS) {
            return 0;
        }

        num--;
        str1++;
        str2++;
    }

    return 1;
}

charcode_t *CharCode_FillWith(charcode_t *str, charcode_t fill, u32 num)
{
    int i;
    for (i = 0; i < num; i++) {
        str[i] = fill;
    }

    return &str[i];
}

charcode_t *CharCode_FillWithEOS(charcode_t *str, u32 num)
{
    return CharCode_FillWith(str, CHAR_EOS, num);
}

charcode_t *CharCode_FromInt(charcode_t *str, s32 i, enum PaddingMode paddingMode, u32 digits)
{
    u32 j;
    u32 diff;
    u16 digit;

    for (j = sPowersOfTen[digits - 1]; j > 0; j /= 10) {
        digit = i / j;
        diff = i - (j * digit);

        if (paddingMode == PADDING_MODE_ZEROES) {
            *str = digit >= 10 ? CHAR_WIDE_QUESTION : sHexadecimalDigits[digit];
            str++;
        } else if (digit != 0 || j == 1) {
            paddingMode = PADDING_MODE_ZEROES;
            *str = digit >= 10 ? CHAR_WIDE_QUESTION : sHexadecimalDigits[digit];
            str++;
        } else if (paddingMode == PADDING_MODE_SPACES) {
            *str = CHAR_WIDE_SPACE;
            str++;
        }

        i = diff;
    }

    *str = CHAR_EOS;
    return str;
}
