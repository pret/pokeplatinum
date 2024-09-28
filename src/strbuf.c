#include "strbuf.h"

#include <nitro.h>
#include <string.h>

#include "constants/charcode.h"

#include "heap.h"

#define SIZEOF_STRBUF_HEADER (sizeof(Strbuf) - sizeof(charcode_t))
#define STRBUF_MAGIC_NUMBER  (0xB6F8D2EC)

static inline void Strbuf_Check(const Strbuf *strbuf)
{
    GF_ASSERT(strbuf != NULL);
    GF_ASSERT(strbuf->integrity == STRBUF_MAGIC_NUMBER);
}

Strbuf *Strbuf_Init(u32 size, u32 heapID)
{
    Strbuf *strbuf;

    strbuf = Heap_AllocFromHeap(heapID, SIZEOF_STRBUF_HEADER + (size * sizeof(charcode_t)));

    if (strbuf) {
        strbuf->integrity = STRBUF_MAGIC_NUMBER;
        strbuf->maxSize = size;
        strbuf->size = 0;
        strbuf->data[0] = CHAR_EOS;
    }

    return strbuf;
}

void Strbuf_Free(Strbuf *strbuf)
{
    Strbuf_Check(strbuf);

    strbuf->integrity = STRBUF_MAGIC_NUMBER + 1;
    Heap_FreeToHeap(strbuf);
}

void Strbuf_Clear(Strbuf *strbuf)
{
    Strbuf_Check(strbuf);

    strbuf->size = 0;
    strbuf->data[0] = CHAR_EOS;
}

void Strbuf_Copy(Strbuf *dst, const Strbuf *src)
{
    Strbuf_Check(dst);
    Strbuf_Check(src);

    if (dst->maxSize > src->size) {
        memcpy(dst->data, src->data, (src->size + 1) * sizeof(charcode_t));
        dst->size = src->size;
        return;
    }

    GF_ASSERT(FALSE);
}

Strbuf *Strbuf_Clone(const Strbuf *src, u32 heapID)
{
    Strbuf_Check(src);

    Strbuf *strbuf = Strbuf_Init(src->size + 1, heapID);

    if (strbuf) {
        Strbuf_Copy(strbuf, src);
    }

    return strbuf;
}

void Strbuf_FormatInt(Strbuf *dst, int num, u32 maxDigits, enum PaddingMode paddingMode, enum CharsetMode charsetMode)
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
        CHAR_JP_0,
        CHAR_JP_1,
        CHAR_JP_2,
        CHAR_JP_3,
        CHAR_JP_4,
        CHAR_JP_5,
        CHAR_JP_6,
        CHAR_JP_7,
        CHAR_JP_8,
        CHAR_JP_9,
    };
    static const charcode_t sDigits_EN[] = {
        CHAR_EN_0,
        CHAR_EN_1,
        CHAR_EN_2,
        CHAR_EN_3,
        CHAR_EN_4,
        CHAR_EN_5,
        CHAR_EN_6,
        CHAR_EN_7,
        CHAR_EN_8,
        CHAR_EN_9,
    };

    Strbuf_Check(dst);

    BOOL negative = (num < 0);

    if (dst->maxSize > (maxDigits + negative)) {
        const charcode_t *digitSet = (charsetMode == CHARSET_MODE_JP) ? sDigits_JP : sDigits_EN;

        Strbuf_Clear(dst);

        if (negative) {
            num *= -1;
            dst->data[dst->size++] = (charsetMode == CHARSET_MODE_JP) ? CHAR_JP_MINUS : CHAR_EN_MINUS;
        }

        u32 div = sPowersOfTen[maxDigits - 1];
        while (div != 0) {
            u16 digit = num / div;
            num -= div * digit;

            if (paddingMode == PADDING_MODE_ZEROES) {
                dst->data[dst->size++] = (digit < 10) ? digitSet[digit] : CHAR_JP_QUESTION;
                // If we hit a non-zero digit, flip the padding mode off
            } else if (digit != 0 || div == 1) {
                paddingMode = PADDING_MODE_ZEROES;
                dst->data[dst->size++] = (digit < 10) ? digitSet[digit] : CHAR_JP_QUESTION;
            } else if (paddingMode == PADDING_MODE_SPACES) {
                dst->data[dst->size++] = (charsetMode == CHARSET_MODE_JP) ? CHAR_JP_SPACE : CHAR_NUM_SPACE;
            }

            div /= 10;
        }

        dst->data[dst->size] = CHAR_EOS;
        return;
    }

    GF_ASSERT(FALSE);
}

void Strbuf_FormatU64(Strbuf *dst, u64 num, u32 maxDigits, enum PaddingMode paddingMode, enum CharsetMode charsetMode)
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
        CHAR_JP_0,
        CHAR_JP_1,
        CHAR_JP_2,
        CHAR_JP_3,
        CHAR_JP_4,
        CHAR_JP_5,
        CHAR_JP_6,
        CHAR_JP_7,
        CHAR_JP_8,
        CHAR_JP_9,
    };
    static const charcode_t sDigits_EN[] = {
        CHAR_EN_0,
        CHAR_EN_1,
        CHAR_EN_2,
        CHAR_EN_3,
        CHAR_EN_4,
        CHAR_EN_5,
        CHAR_EN_6,
        CHAR_EN_7,
        CHAR_EN_8,
        CHAR_EN_9,
    };

    Strbuf_Check(dst);

    BOOL negative = (num < 0);

    if (dst->maxSize > (maxDigits + negative)) {
        const charcode_t *digitSet = (charsetMode == CHARSET_MODE_JP) ? sDigits_JP : sDigits_EN;

        Strbuf_Clear(dst);

        if (negative) {
            num *= -1;
            dst->data[dst->size++] = (charsetMode == CHARSET_MODE_JP) ? CHAR_JP_MINUS : CHAR_EN_MINUS;
        }

        u64 div = sPowersOfTen[maxDigits - 1];
        while (div != 0) {
            u64 digit = num / div;
            num -= div * digit;

            if (paddingMode == PADDING_MODE_ZEROES) {
                dst->data[dst->size++] = (digit < 10) ? digitSet[digit] : CHAR_JP_QUESTION;
            } else if ((digit != 0) || (div == 1)) {
                paddingMode = PADDING_MODE_ZEROES;
                dst->data[dst->size++] = (digit < 10) ? digitSet[digit] : CHAR_JP_QUESTION;
            } else if (paddingMode == PADDING_MODE_SPACES) {
                dst->data[dst->size++] = (charsetMode == CHARSET_MODE_JP) ? CHAR_JP_SPACE : CHAR_EN_SPACE;
            }

            div /= 10;
        }

        dst->data[dst->size] = CHAR_EOS;
        return;
    }

    GF_ASSERT(FALSE);
}

u64 Strbuf_AtoI(const Strbuf *src, BOOL *success)
{
    u64 result = 0, pow = 1;
    if (src->size > 18) {
        return 0;
    }

    for (int i = (src->size - 1); i >= 0; i--) {
        u64 digit = src->data[i] - CHAR_JP_0;
        if (digit >= 10) {
            digit = src->data[i] - CHAR_EN_0;

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

int Strbuf_Compare(const Strbuf *str1, const Strbuf *str2)
{
    Strbuf_Check(str1);
    Strbuf_Check(str2);

    for (int i = 0; str1->data[i] == str2->data[i]; i++) {
        if (str1->data[i] == CHAR_EOS) {
            return 0;
        }
    }

    return 1;
}

u32 Strbuf_Length(const Strbuf *strbuf)
{
    Strbuf_Check(strbuf);
    return strbuf->size;
}

u32 Strbuf_NumLines(const Strbuf *strbuf)
{
    Strbuf_Check(strbuf);

    int i, count;
    for (i = 0, count = 1; i < strbuf->size; i++) {
        if (strbuf->data[i] == CHAR_CR) {
            count++;
        }
    }

    return count;
}

void Strbuf_CopyLineNum(Strbuf *dst, const Strbuf *src, u32 lineNum)
{
    Strbuf_Check(src);
    Strbuf_Check(dst);

    int i = 0;

    if (lineNum) {
        for (i = 0; i < src->size; i++) {
            if (src->data[i] == CHAR_CR && --lineNum == 0) {
                i++;
                break;
            }
        }
    }

    Strbuf_Clear(dst);

    for (; i < src->size; i++) {
        if (src->data[i] == CHAR_CR) {
            break;
        }

        Strbuf_AppendChar(dst, src->data[i]);
    }
}

void Strbuf_CopyChars(Strbuf *dst, const charcode_t *src)
{
    Strbuf_Check(dst);

    dst->size = 0;

    while (*src != CHAR_EOS) {
        if (dst->size >= (dst->maxSize - 1)) {
            GF_ASSERT(FALSE);
            break;
        }

        dst->data[dst->size++] = *src++;
    }

    dst->data[dst->size] = CHAR_EOS;
}

void Strbuf_CopyNumChars(Strbuf *dst, const charcode_t *src, u32 num)
{
    Strbuf_Check(dst);

    if (num <= dst->maxSize) {
        memcpy(dst->data, src, num * sizeof(charcode_t));

        u32 i;
        for (i = 0; i < num; i++) {
            if (dst->data[i] == CHAR_EOS) {
                break;
            }
        }

        dst->size = i;
        if (i == num) {
            dst->data[num - 1] = CHAR_EOS;
        }

        return;
    }

    GF_ASSERT(FALSE);
}

void Strbuf_ToChars(const Strbuf *src, charcode_t *dst, u32 dstSize)
{
    Strbuf_Check(src);

    if ((src->size + 1) <= dstSize) {
        memcpy(dst, src->data, (src->size + 1) * sizeof(charcode_t));
        return;
    }

    GF_ASSERT(FALSE);
}

const charcode_t *Strbuf_GetData(const Strbuf *src)
{
    Strbuf_Check(src);

    return src->data;
}

void Strbuf_Concat(Strbuf *dst, const Strbuf *src)
{
    Strbuf_Check(dst);
    Strbuf_Check(src);

    if ((dst->size + src->size + 1) <= dst->maxSize) {
        memcpy(dst->data + dst->size, src->data, (src->size + 1) * sizeof(charcode_t));
        dst->size += src->size;
        return;
    }

    GF_ASSERT(FALSE);
}

void Strbuf_AppendChar(Strbuf *dst, charcode_t c)
{
    Strbuf_Check(dst);

    if ((dst->size + 1) < dst->maxSize) {
        dst->data[dst->size++] = c;
        dst->data[dst->size] = CHAR_EOS;
        return;
    }

    GF_ASSERT(FALSE);
}

#define COMPRESSED_MASK (0x01FF)
#define COMPRESSED_EOS  (0x01FF) // 0xFFFF & 0x01FF

BOOL Strbuf_IsTrainerName(Strbuf *strbuf)
{
    return strbuf->size > 0 && strbuf->data[0] == CHAR_COMPRESSED_MARK;
}

void Strbuf_ConcatTrainerName(Strbuf *dst, Strbuf *src)
{
    // Trainer names are expressed using a format with a designating leader
    // code followed by compression algorithm that trims individual characters
    // from 16 bits to 10 bits.
    //
    // TODO: This process could do with some more documentation, i.e. why this
    // is done.
    if (Strbuf_IsTrainerName(src)) {
        charcode_t *dstChar = &dst->data[dst->size];
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
        dst->size += charsAdded;
    } else {
        Strbuf_Concat(dst, src);
    }
}

void Strbuf_UpperChar(Strbuf *strbuf, int i)
{
    Strbuf_Check(strbuf);

    if (strbuf->size > i) {
        if (strbuf->data[i] >= CHAR_EN_a && strbuf->data[i] <= CHAR_EN_z) {
            strbuf->data[i] -= (CHAR_EN_a - CHAR_EN_A);
        }
    }
}
