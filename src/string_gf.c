#include "string_gf.h"

#include <nitro.h>
#include <string.h>

#include "constants/charcode.h"

#include "heap.h"

#define SIZEOF_STRING_HEADER (sizeof(String) - sizeof(charcode_t))
#define STRING_MAGIC_NUMBER  (0xB6F8D2EC)

static inline void String_Assert(const String *string)
{
    GF_ASSERT(string != NULL);
    GF_ASSERT(string->integrity == STRING_MAGIC_NUMBER);
}

String *String_New(u32 size, u32 heapID)
{
    String *string = Heap_Alloc(heapID, SIZEOF_STRING_HEADER + (size * sizeof(charcode_t)));

    if (string) {
        string->integrity = STRING_MAGIC_NUMBER;
        string->maxSize = size;
        string->size = 0;
        string->data[0] = CHAR_EOS;
    }

    return string;
}

void String_Free(String *string)
{
    String_Assert(string);

    string->integrity = STRING_MAGIC_NUMBER + 1;
    Heap_Free(string);
}

void String_Clear(String *string)
{
    String_Assert(string);

    string->size = 0;
    string->data[0] = CHAR_EOS;
}

void String_Copy(String *dest, const String *src)
{
    String_Assert(dest);
    String_Assert(src);

    if (dest->maxSize > src->size) {
        memcpy(dest->data, src->data, (src->size + 1) * sizeof(charcode_t));
        dest->size = src->size;
        return;
    }

    GF_ASSERT(FALSE);
}

String *String_Clone(const String *src, u32 heapID)
{
    String_Assert(src);

    String *string = String_New(src->size + 1, heapID);

    if (string) {
        String_Copy(string, src);
    }

    return string;
}

void String_FormatInt(String *dest, int num, u32 maxDigits, enum PaddingMode paddingMode, enum CharsetMode charsetMode)
{
    static const u32 sPowersOfTen[] = {
        1,
        10,
        100,
        1000,
        10000,
        100000,
        1000000,
        10000000,
        100000000,
        1000000000
    };
    static const charcode_t sDigits_JP[] = {
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
    };
    static const charcode_t sDigits_EN[] = {
        CHAR_0,
        CHAR_1,
        CHAR_2,
        CHAR_3,
        CHAR_4,
        CHAR_5,
        CHAR_6,
        CHAR_7,
        CHAR_8,
        CHAR_9,
    };

    String_Assert(dest);

    BOOL negative = (num < 0);

    if (dest->maxSize > (maxDigits + negative)) {
        const charcode_t *digitSet = (charsetMode == CHARSET_MODE_JP) ? sDigits_JP : sDigits_EN;

        String_Clear(dest);

        if (negative) {
            num *= -1;
            dest->data[dest->size++] = (charsetMode == CHARSET_MODE_JP) ? CHAR_WIDE_MINUS : CHAR_MINUS;
        }

        u32 div = sPowersOfTen[maxDigits - 1];
        while (div != 0) {
            u16 digit = num / div;
            num -= div * digit;

            if (paddingMode == PADDING_MODE_ZEROES) {
                dest->data[dest->size++] = (digit < 10) ? digitSet[digit] : CHAR_WIDE_QUESTION;
                // If we hit a non-zero digit, flip the padding mode off
            } else if (digit != 0 || div == 1) {
                paddingMode = PADDING_MODE_ZEROES;
                dest->data[dest->size++] = (digit < 10) ? digitSet[digit] : CHAR_WIDE_QUESTION;
            } else if (paddingMode == PADDING_MODE_SPACES) {
                dest->data[dest->size++] = (charsetMode == CHARSET_MODE_JP) ? CHAR_WIDE_SPACE : CHAR_NUM_SPACE;
            }

            div /= 10;
        }

        dest->data[dest->size] = CHAR_EOS;
        return;
    }

    GF_ASSERT(FALSE);
}

void String_FormatU64(String *dest, u64 num, u32 maxDigits, enum PaddingMode paddingMode, enum CharsetMode charsetMode)
{
    static const u64 sPowersOfTen[] = {
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
        10000000000,
        100000000000,
        1000000000000,
        10000000000000,
        100000000000000,
        1000000000000000,
        10000000000000000,
        100000000000000000,
        1000000000000000000,
        10000000000000000000
    };
    static const charcode_t sDigits_JP[] = {
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
    };
    static const charcode_t sDigits_EN[] = {
        CHAR_0,
        CHAR_1,
        CHAR_2,
        CHAR_3,
        CHAR_4,
        CHAR_5,
        CHAR_6,
        CHAR_7,
        CHAR_8,
        CHAR_9,
    };

    String_Assert(dest);

    BOOL negative = (num < 0);

    if (dest->maxSize > (maxDigits + negative)) {
        const charcode_t *digitSet = (charsetMode == CHARSET_MODE_JP) ? sDigits_JP : sDigits_EN;

        String_Clear(dest);

        if (negative) {
            num *= -1;
            dest->data[dest->size++] = (charsetMode == CHARSET_MODE_JP) ? CHAR_WIDE_MINUS : CHAR_MINUS;
        }

        u64 div = sPowersOfTen[maxDigits - 1];
        while (div != 0) {
            u64 digit = num / div;
            num -= div * digit;

            if (paddingMode == PADDING_MODE_ZEROES) {
                dest->data[dest->size++] = (digit < 10) ? digitSet[digit] : CHAR_WIDE_QUESTION;
            } else if ((digit != 0) || (div == 1)) {
                paddingMode = PADDING_MODE_ZEROES;
                dest->data[dest->size++] = (digit < 10) ? digitSet[digit] : CHAR_WIDE_QUESTION;
            } else if (paddingMode == PADDING_MODE_SPACES) {
                dest->data[dest->size++] = (charsetMode == CHARSET_MODE_JP) ? CHAR_WIDE_SPACE : CHAR_SPACE;
            }

            div /= 10;
        }

        dest->data[dest->size] = CHAR_EOS;
        return;
    }

    GF_ASSERT(FALSE);
}

u64 String_AtoI(const String *src, BOOL *success)
{
    u64 result = 0, pow = 1;
    if (src->size > 18) {
        return 0;
    }

    for (int i = (src->size - 1); i >= 0; i--) {
        u64 digit = src->data[i] - CHAR_WIDE_0;
        if (digit >= 10) {
            digit = src->data[i] - CHAR_0;

            if (digit >= 10) {
                *success = FALSE;
                return result;
            }
        }

        digit *= pow;
        result += digit;
        pow *= 10;
    }

    *success = TRUE;
    return result;
}

int String_Compare(const String *str1, const String *str2)
{
    String_Assert(str1);
    String_Assert(str2);

    for (int i = 0; str1->data[i] == str2->data[i]; i++) {
        if (str1->data[i] == CHAR_EOS) {
            return 0;
        }
    }

    return 1;
}

u32 String_GetLength(const String *string)
{
    String_Assert(string);
    return string->size;
}

u32 String_CountLines(const String *string)
{
    String_Assert(string);

    int i, count;
    for (i = 0, count = 1; i < string->size; i++) {
        if (string->data[i] == CHAR_CR) {
            count++;
        }
    }

    return count;
}

void String_CopyLine(String *dest, const String *src, u32 lineNum)
{
    String_Assert(src);
    String_Assert(dest);

    int i = 0;

    if (lineNum) {
        for (i = 0; i < src->size; i++) {
            if (src->data[i] == CHAR_CR && --lineNum == 0) {
                i++;
                break;
            }
        }
    }

    String_Clear(dest);

    for (; i < src->size; i++) {
        if (src->data[i] == CHAR_CR) {
            break;
        }

        String_AppendChar(dest, src->data[i]);
    }
}

void String_CopyFromChars(String *dest, const charcode_t *src)
{
    String_Assert(dest);

    dest->size = 0;

    while (*src != CHAR_EOS) {
        if (dest->size >= (dest->maxSize - 1)) {
            GF_ASSERT(FALSE);
            break;
        }

        dest->data[dest->size++] = *src++;
    }

    dest->data[dest->size] = CHAR_EOS;
}

void String_CopyNumChars(String *dest, const charcode_t *src, u32 num)
{
    String_Assert(dest);

    if (num <= dest->maxSize) {
        memcpy(dest->data, src, num * sizeof(charcode_t));

        u32 i;
        for (i = 0; i < num; i++) {
            if (dest->data[i] == CHAR_EOS) {
                break;
            }
        }

        dest->size = i;
        if (i == num) {
            dest->data[num - 1] = CHAR_EOS;
        }

        return;
    }

    GF_ASSERT(FALSE);
}

void String_CopyToChars(const String *src, charcode_t *dest, u32 dstSize)
{
    String_Assert(src);

    if ((src->size + 1) <= dstSize) {
        memcpy(dest, src->data, (src->size + 1) * sizeof(charcode_t));
        return;
    }

    GF_ASSERT(FALSE);
}

const charcode_t *String_GetChars(const String *src)
{
    String_Assert(src);

    return src->data;
}

void String_Concat(String *dest, const String *src)
{
    String_Assert(dest);
    String_Assert(src);

    if ((dest->size + src->size + 1) <= dest->maxSize) {
        memcpy(dest->data + dest->size, src->data, (src->size + 1) * sizeof(charcode_t));
        dest->size += src->size;
        return;
    }

    GF_ASSERT(FALSE);
}

void String_AppendChar(String *dest, charcode_t c)
{
    String_Assert(dest);

    if ((dest->size + 1) < dest->maxSize) {
        dest->data[dest->size++] = c;
        dest->data[dest->size] = CHAR_EOS;
        return;
    }

    GF_ASSERT(FALSE);
}

#define COMPRESSED_MASK (0x01FF)
#define COMPRESSED_EOS  (0x01FF) // 0xFFFF & 0x01FF

BOOL String_IsTrainerName(String *string)
{
    return string->size > 0 && string->data[0] == CHAR_COMPRESSED_MARK;
}

void String_ConcatTrainerName(String *dest, String *src)
{
    // Trainer names are expressed using a format with a designating leader
    // code followed by compression algorithm that trims individual characters
    // from 16 bits to 10 bits.
    //
    // TODO: This process could do with some more documentation, i.e. why this
    // is done.
    if (String_IsTrainerName(src)) {
        charcode_t *dstChar = &dest->data[dest->size];
        charcode_t *srcChar = &src->data[1];
        s32 shift = 0;
        s32 charsAdded = 0;
        charcode_t curChar = 0;

        while (TRUE) {
            curChar = (*srcChar >> shift) & COMPRESSED_MASK;
            shift += 9;

            if (shift >= 15) {
                srcChar++;
                shift -= 15;

                if (shift) {
                    curChar |= (*srcChar << (9 - shift)) & COMPRESSED_MASK;
                }
            }

            if (curChar == COMPRESSED_EOS) {
                break;
            }

            *dstChar++ = curChar;
            charsAdded++;
        }

        *dstChar = CHAR_EOS;
        dest->size += charsAdded;
    } else {
        String_Concat(dest, src);
    }
}

void String_UpperChar(String *string, int i)
{
    String_Assert(string);

    if (string->size > i) {
        if (string->data[i] >= CHAR_a && string->data[i] <= CHAR_z) {
            string->data[i] -= (CHAR_a - CHAR_A);
        }
    }
}
