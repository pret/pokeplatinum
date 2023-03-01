#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "string/strbuf.h"
#include "string/charcode.h"

#define COMPRESSED_LEADER       0xf100
#define COMPRESSED_CODE_MASK    0x01ff
#define COMPRESSED_CODE_BITS    9
#define COMPRESSED_EOM          0x01ff
#define CHARCODE_VALID_BITS     15

// basic strbuf validation function
#define CHECKSUM_BUF_IS_ALLOCED 0xb6f8d2ec
#define STRBUF_CHECK(string) { \
    GF_ASSERT(string != NULL); \
    GF_ASSERT(string->checksum == CHECKSUM_BUF_IS_ALLOCED); \
}

/**
 * Structure definition for a managed string buffer.
 */
struct Strbuf_t {
    ///< Maximum number of characters that this buffer will support.
    u16 size;

    ///< Length of this string's content, i.e. number of characters
    ///< actually present in the string (as opposed to many it can
    ///< hold).
    u16 len;

    ///< Magic number checksum assigned at allocation time.
    ///< This prop is changed to a different value when freeing the
    ///< buffer in order to prevent further operations.
    u32 checksum;

    ///< The actual string content, with each character encoded as
    ///< a pair of bytes.
    CharCode * buffer;        
};

#define STRBUF_HEADER_SIZE (sizeof(Strbuf) - sizeof(CharCode))

Strbuf * Strbuf_Init (u32 size, u32 heapID)
{
    Strbuf * newString = Heap_AllocFromHeap(
        heapID,
        STRBUF_HEADER_SIZE + (sizeof(CharCode) * size)
    );

    if (newString) {
        newString->size = size;
        newString->len = 0;
        newString->checksum = CHECKSUM_BUF_IS_ALLOCED;
        newString->buffer[0] = CHAR_EOM;
    }

    return newString;
}

void Strbuf_Free (Strbuf * string)
{
    STRBUF_CHECK(string);

    string->checksum = CHECKSUM_BUF_IS_ALLOCED + 1;
    Heap_FreeToHeap(string);
}

void Strbuf_Clear (Strbuf * string)
{
    STRBUF_CHECK(string);

    string->len = 0;
    string->buffer[0] = CHAR_EOM;
}

void Strbuf_Copy (Strbuf * dst, const Strbuf * src)
{
    STRBUF_CHECK(dst);
    STRBUF_CHECK(src);

    if (dst->size > src->len) {
        memcpy(dst->buffer, src->buffer, (src->len + 1) * sizeof(CharCode));
        dst->len = src->len;

        return;
    }

    GF_ASSERT(FALSE);
}

Strbuf * Strbuf_Clone (const Strbuf * src, u32 heapID)
{
    STRBUF_CHECK(src);

    Strbuf * dst = Strbuf_Init(src->len + 1, heapID);

    if (dst) {
        Strbuf_Copy(dst, src);
    }

    return dst;
}

void Strbuf_FromInt (Strbuf * dst, int number, u32 len, enum NumberPaddingMode paddingMode, enum CharacterWidth charWidth)
{
    // digit sets could use better names
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
    static const u16 sFullWidthDigits[] = {
        CHAR_FULL_NUM_0,
        CHAR_FULL_NUM_1,
        CHAR_FULL_NUM_2,
        CHAR_FULL_NUM_3,
        CHAR_FULL_NUM_4,
        CHAR_FULL_NUM_5,
        CHAR_FULL_NUM_6,
        CHAR_FULL_NUM_7,
        CHAR_FULL_NUM_8,
        CHAR_FULL_NUM_9
    };
    static const u16 sHalfWidthDigits[] = {
        CHAR_HALF_NUM_0,
        CHAR_HALF_NUM_1,
        CHAR_HALF_NUM_2,
        CHAR_HALF_NUM_3,
        CHAR_HALF_NUM_4,
        CHAR_HALF_NUM_5,
        CHAR_HALF_NUM_6,
        CHAR_HALF_NUM_7,
        CHAR_HALF_NUM_8,
        CHAR_HALF_NUM_9
    };

    STRBUF_CHECK(dst);

    int neg = (number < 0);

    // make sure the number will fit
    // negative inputs get an extra character for the sign
    if (dst->size > (len + neg)) {
        u32 remainder, digit, power;
        const u16 * charMap = (charWidth == CHARACTER_WIDTH_FULL) ? sFullWidthDigits : sHalfWidthDigits;

        Strbuf_Clear(dst);

        // append the sign first, if needed
        if (neg) {
            number *= -1;
            dst->buffer[dst->len++] = (charWidth == CHARACTER_WIDTH_FULL) ? CHAR_FULL_MINUS : CHAR_HALF_MINUS;
        }

        // curse forwards through the integer digit by digit, appending individual digits along the way
        for (power = sPowersOfTen[len - 1]; power > 0; power /= 10) {
            digit = (u32)(number / power);
            remainder = (u32)(number - (power * digit));

            // this branch is hit if the user specified this padding mode, or any time after we hit a non-zero digit
            if (paddingMode == NUMBER_PADDING_MODE_ZEROES) {
                dst->buffer[dst->len++] = (digit < 10) ? charMap[digit] : CHAR_FULL_QUESTION;

            // once we hit this branch, we should always hit the above branch on future digits
            } else if (digit != 0 || power == 1) {
                paddingMode = NUMBER_PADDING_MODE_ZEROES;
                dst->buffer[dst->len++] = (digit < 10) ? charMap[digit] : CHAR_FULL_QUESTION;

            // not in zero-padding mode, and found a leading zero, pad out with the appropriate width space
            } else if (paddingMode == NUMBER_PADDING_MODE_SPACES) {
                dst->buffer[dst->len++] = (charWidth == CHARACTER_WIDTH_FULL) ? CHAR_FULL_SPACE : CHAR_HALF_SPACE;
            }

            number = remainder;
        }

        dst->buffer[dst->len] = CHAR_EOM;
        return;
    }

    GF_ASSERT(FALSE);
}

void Strbuf_FromInt64 (Strbuf * string, u64 number, u32 len, enum NumberPaddingMode paddingMode, enum CharacterWidth charWidth)
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
    static const u16 sFullWidthDigits[] = {
        CHAR_FULL_NUM_0,
        CHAR_FULL_NUM_1,
        CHAR_FULL_NUM_2,
        CHAR_FULL_NUM_3,
        CHAR_FULL_NUM_4,
        CHAR_FULL_NUM_5,
        CHAR_FULL_NUM_6,
        CHAR_FULL_NUM_7,
        CHAR_FULL_NUM_8,
        CHAR_FULL_NUM_9
    };
    static const u16 sHalfWidthDigits[] = {
        CHAR_HALF_NUM_0,
        CHAR_HALF_NUM_1,
        CHAR_HALF_NUM_2,
        CHAR_HALF_NUM_3,
        CHAR_HALF_NUM_4,
        CHAR_HALF_NUM_5,
        CHAR_HALF_NUM_6,
        CHAR_HALF_NUM_7,
        CHAR_HALF_NUM_8,
        CHAR_HALF_NUM_9
    };

    STRBUF_CHECK(string);

    // make sure the number will fit
    if (string->size > len) {
        u64 remainder, digit, power;
        const u16 * charMap = (charWidth == CHARACTER_WIDTH_FULL) ? sFullWidthDigits : sHalfWidthDigits;

        Strbuf_Clear(string);

        // curse forwards through the integer digit by digit, appending individual digits along the way
        for (power = sPowersOfTen[len - 1]; power > 0; power /= 10) {
            digit = (u64)(number / power);
            remainder = (u64)(number - (power * digit));

            // this branch is hit if the user specified this padding mode, or any time after we hit a non-zero digit
            if (paddingMode == NUMBER_PADDING_MODE_ZEROES) {
                dst->buffer[dst->len++] = (digit < 10) ? charMap[digit] : CHAR_FULL_QUESTION;

            // once we hit this branch, we should always hit the above branch on future digits
            } else if (digit != 0 || power == 1) {
                paddingMode = NUMBER_PADDING_MODE_ZEROES;
                dst->buffer[dst->len++] = (digit < 10) ? charMap[digit] : CHAR_FULL_QUESTION;

            // not in zero-padding mode, and found a leading zero, pad out with the appropriate width space
            } else if (paddingMode == NUMBER_PADDING_MODE_SPACES) {
                dst->buffer[dst->len++] = (charWidth == CHARACTER_WIDTH_FULL) ? CHAR_FULL_SPACE : CHAR_HALF_SPACE;
            }
        }

        string->buffer[string->len] = CHAR_EOM;
        return;
    }

    GF_ASSERT(FALSE);
}

u64 Strbuf_ToInt64 (const Strbuf * src, BOOL * successful)
{
    u64 digit = 0, result = 0, power = 1;
    int i;
    CharCode c;

    // We don't support integers longer than 18 digits
    if (src->len > 18) {
        return FALSE;
    }

    // work through the string backwards, starting from the 1's place
    for (i = (src->len - 1); i >= 0; i--, power *= 10) {
        c = src->buffer[i];

        // check if this is a digit on the full-width map
        digit = c - CHAR_FULL_NUM_0;
        if (digit >= 10) {
            // check if this is a digit on the half-width map
            digit = c - CHAR_HALF_NUM_0;
            if (digit >= 10)
            {
                // fail, but return as much of the number as we could parse
                *successful = FALSE;
                return result;
            }
        }

        // slot the digit into the result in the appropriate place, then go up to the next place
        digit = digit * power;
        result += digit;
    }

    // success!
    *successful = TRUE;
    return result;
}

int Strbuf_Compare (const Strbuf * str1, const Strbuf * str2)
{
    STRBUF_CHECK(str1);
    STRBUF_CHECK(str2);

    for (int i = 0; str1->buffer[i] == str2->buffer[i]; i++) {
        // Both strings matched on a terminator; the strings match
        if (str1->buffer[i] == CHAR_EOM) {
            return 0;
        }
    }

    return 1;
}

u32 Strbuf_GetLength (const Strbuf * string)
{
    STRBUF_CHECK(string);

    return string->len;
}

u32 Strbuf_CountLines (const Strbuf * string)
{
    STRBUF_CHECK(string);

    u32 numLines = 1;

    for (u32 i = 0; i < string->len; i++) {
        if (string->buffer[i] == CHAR_CR) {
            numLines++;
        }
    }

    return numLines;
}

void Strbuf_FillWithLine (Strbuf * dst, const Strbuf * src, u32 i)
{
    STRBUF_CHECK(dst);
    STRBUF_CHECK(src);

    u32 j = 0;

    // skip ahead to line i (0-indexed, so i = 0 does not skip ahead)
    if (i > 0) {
        for ( ; j < src->len; j++) {
            if (src->buffer[j] == CHAR_CR) {
                if (--i == 0) {
                    j++;
                    break;
                }
            }
        }
    }

    // fill dst with bytes from src until either a CR is found or src ends
    Strbuf_Clear(dst);

    for ( ; j < src->len; j++) {
        if (src->buffer[j] == CHAR_CR) {
            break;
        }

        Strbuf_Append(dst, src->buffer[j]);
    }
}

void Strbuf_FillWithChars (Strbuf * dst, const CharCode * src)
{
    STRBUF_CHECK(dst);

    dst->len = 0;

    while (*src != CHAR_EOM) {
        // Don't fill any characters over our allocated buffer size
        if (dst->len >= (dst->size - 1)) {
            GF_ASSERT(FALSE);
            break;
        }

        dst->buffer[dst->len++] = *src++;
    }

    dst->buffer[dst->len] = CHAR_EOM;
}

void Strbuf_FillWithCharsLimit (Strbuf * dst, const CharCode * src, u32 limit)
{
    STRBUF_CHECK(dst);

    if (limit <= dst->size) {
        memcpy(dst->buffer, src, limit * sizeof(CharCode));

        // find the new terminator and update the destination string's header
        u32 i;
        for (i = 0; i < limit; i++) {
            if (dst->buffer[i] == CHAR_EOM) {
                break;
            }
        }

        dst->len = i;

        // if we hit the end of the string before actually finding a terminator, then add one at the end
        if (i == limit) {
            dst->buffer[limit - 1] = CHAR_EOM;
        }

        return;
    }

    GF_ASSERT(FALSE);
}

void Strbuf_Dump (const Strbuf * src, CharCode * dst, u32 len)
{
    STRBUF_CHECK(src);

    // only copy characters if our terminator is under the limit
    if ((src->len + 1) <= len) {
        memcpy(dst, src->buffer, (src->len + 1) * sizeof(CharCode));
        return;
    }

    GF_ASSERT(FALSE);
}

const CharCode * Strbuf_GetBuffer (const Strbuf * string)
{
    STRBUF_CHECK(string);
    return string->buffer;
}

void Strbuf_Concat (Strbuf * dst, const Strbuf * src)
{
    STRBUF_CHECK(dst);
    STRBUF_CHECK(src);

    // don't append the source string if it would overwrite our allocation
    if ((dst->len + src->len + 1) <= dst->size) {
        memcpy(&(dst->buffer[dst->len]), src->buffer, (src->len + 1) * sizeof(CharCode));
        dst->len += src->len;

        return;
    }

    GF_ASSERT(FALSE);
}

void Strbuf_Append (Strbuf * dst, CharCode c)
{
    STRBUF_CHECK(dst);

    // don't append the character if it would overwrite our allocation
    if ((dst->len + 1) < dst->size) {
        dst->buffer[dst->len++] = c;
        dst->buffer[dst->len] = CHAR_EOM;

        return;
    }

    GF_ASSERT(FALSE);
}

BOOL Strbuf_IsCompressed (Strbuf * string)
{
    return string->len > 0 && string->buffer[0] == COMPRESSED_LEADER;
}

void Strbuf_ConcatCompressed (Strbuf * dst, Strbuf * src)
{
    if (Strbuf_IsCompressed(src)) {
        CharCode * dstChar = &dst->buffer[dst->len];
        CharCode * srcChar = &src->buffer[1];
        s32 srcBit = 0;
        s32 len = 0;

        do {
            // Compress the individual characters from the string
            CharCode c = (*srcChar >> srcBit) & COMPRESSED_CODE_MASK;
            srcBit += COMPRESSED_CODE_BITS;
            if (srcBit >= CHARCODE_VALID_BITS) {
                ++srcChar;
                srcBit -= CHARCODE_VALID_BITS;
                if (srcBit) {
                    c |= (*srcChar << (COMPRESSED_CODE_BITS - srcBit)) & COMPRESSED_CODE_MASK;
                }
            }

            // If we come up with a compressed terminator, then we're done
            if (c == COMPRESSED_EOM) {
                break;
            }

            // Append the compressed character from src
            *dstChar++ = c;
            ++len;
        } while (TRUE);

        // terminate the string
        *dstChar = CHAR_EOM;
        dst->len += len;
    } else {
        Strbuf_Concat(dst, src);
    }
}

void Strbuf_CapitalizeAt (Strbuf * string, int i)
{
    STRBUF_CHECK(string);

    // don't touch any buffer index past the actual string content
    if (string->len > i) {
        CharCode c = string->buffer[i];

        // if the character falls between a and z, capitalize it
        if ((c >= CHAR_HALF_LOWER_A) && (c <= CHAR_HALF_LOWER_Z)) {
            string->buffer[i] -= CHAR_HALF_LOWER_A - CHAR_HALF_UPPER_A;
        }
    }
}
