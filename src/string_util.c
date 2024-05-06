#include <nitro.h>
#include <string.h>
#include <nnsys.h>

#include "string_util.h"
#include "constants/charcode.h"

// StringUtil_Length
int sub_0201E0A4 (char *str)
{
    int length = 0;

    while (str[length] != CHAR_EMPTY) {
        length++;
    }

    return length;
}

// StringUtil_CopyToTerminator
char* sub_0201E0B8 (char *src, char *dst, char terminator)
{
    int i;

    for (i = 0; i < MAX_STRING_COPY_LEN; i++) {
        dst[i] = src[i];

        if (src[i] == terminator || src[i] == CHAR_EMPTY) {
            dst[i] = CHAR_EMPTY;

            if (terminator == ASCII_CARRIAGE_RETURN && src[i + 1] == ASCII_LINE_FEED) {
                return &src[i + 2];
            } else {
                return &src[i + 1];
            }
        }
    }

    return NULL;
}

// StringUtil_ConvertToInt
int sub_0201E0FC (char *str)
{
    int length = sub_0201E0A4(str);
    int i;
    int powerOfTen = 1;
    int ret = 0;

    for (i = length - 1; i >= 0; i--) {
        if (str[i] >= '0' && str[i] <= '9') {
            ret += powerOfTen * (str[i] - '0');
        } else {
            if (i == 0) {
                if (str[i] == '-') {
                    ret *= -1;
                }
            } else {
                return -1;
            }
        }

        powerOfTen *= 10;
    }

    return ret;
}

// StringUtil_SetResourceName
void sub_0201E140 (NNSG3dResName *resource, const char *src)
{
    u8 i;
    for (i = 0; i < NNS_G3D_RESNAME_VALSIZE; i++) {
        resource->val[i] = 0;
    }

    u8 length = sub_0201E0A4((char *)src);

    for (i = 0; i < length; i++) {
        resource->name[i] = src[i];
    }
}

// StringUtil_IsJapaneseChar
BOOL sub_0201E17C (u16 character)
{
    return character < CHAR_EN_0;
}
