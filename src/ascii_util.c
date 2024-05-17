#include <nitro.h>
#include <string.h>
#include <nnsys.h>

#include "ascii_util.h"
#include "constants/charcode.h"

int Ascii_Length (char *str)
{
    int length = 0;

    while (str[length] != '\0') {
        length++;
    }

    return length;
}

char* Ascii_CopyToTerminator (char *src, char *dst, char terminator)
{
    for (int i = 0; i < MAX_STRING_COPY_LEN; i++) {
        dst[i] = src[i];

        if (src[i] == terminator || src[i] == '\0') {
            dst[i] = '\0';

            if (terminator == '\r' && src[i + 1] == '\n') {
                return &src[i + 2];
            } else {
                return &src[i + 1];
            }
        }
    }

    return NULL;
}

int Ascii_ConvertToInt (char *str)
{
    int length = Ascii_Length(str);
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

void Ascii_SetResourceName (NNSG3dResName *resource, const char *src)
{
    u8 i;
    for (i = 0; i < NNS_G3D_RESNAME_VALSIZE; i++) {
        resource->val[i] = 0;
    }

    u8 length = Ascii_Length((char *)src);

    for (i = 0; i < length; i++) {
        resource->name[i] = src[i];
    }
}

BOOL IsFullWidthChar (charcode_t character)
{
    return character < CHAR_EN_0;
}
