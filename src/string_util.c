#include <nitro.h>
#include <string.h>
#include <nnsys.h>

#include "string_util.h"
#include "constants/charcode.h"

int StringUtil_Length (char *str)
{
    int length = 0;

    while (str[length] != CHAR_EMPTY) {
        length++;
    }

    return length;
}

char* StringUtil_CopyToTerminator (char *src, char *dst, char terminator)
{
    for (int i = 0; i < MAX_STRING_COPY_LEN; i++) {
        dst[i] = src[i];

        if (src[i] == terminator || src[i] == CHAR_EMPTY) {
            dst[i] = CHAR_EMPTY;

            if (terminator == '\r' && src[i + 1] == '\n') {
                return &src[i + 2];
            } else {
                return &src[i + 1];
            }
        }
    }

    return NULL;
}

int StringUtil_ConvertToInt (char *str)
{
    int length = StringUtil_Length(str);
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

void StringUtil_SetResourceName (NNSG3dResName *resource, const char *src)
{
    u8 i;
    for (i = 0; i < NNS_G3D_RESNAME_VALSIZE; i++) {
        resource->val[i] = 0;
    }

    u8 length = StringUtil_Length((char *)src);

    for (i = 0; i < length; i++) {
        resource->name[i] = src[i];
    }
}

BOOL StringUtil_IsJapaneseChar (u16 character)
{
    return character < CHAR_EN_0;
}
