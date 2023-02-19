#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_plstring_decl.h"

#include "heap.h"
#include "plstring.h"

#define CR                      0xe000
#define TERMINATOR              0xffff
#define IS_ALLOCED_MASK         0xb6f8d2ec
#define IS_COMPRESSED_MASK      0xf100
#define COMPRESSION_MASK        0x01ff
#define COMPRESSED_TERMINATOR   0x01ff

#define PLSTRING_CHECK(string) { \
    GF_ASSERT(string != NULL); \
    GF_ASSERT(string->checksum == IS_ALLOCED_MASK); \
}

struct PLString_t {
    // size of the buffer allocation for this string
    u16 size;

    // length of this string (excluding the terminator)
    u16 len;

    // checksum; a magic number is assigned here on successful buffer allocation
    u32 checksum;

    // actual string buffer
    PLChar * buffer;
};

PLString * PLString_New (u32 size, u32 heapID)
{
    PLString * newString = Heap_AllocFromHeap(
        heapID,
        (
            (sizeof(PLString) - sizeof(PLChar)) // Size of header data for a PLString
                + sizeof(PLChar) * size         // Allocate enough for the desired string size
        )
    );

    if (newString) {
        newString->size         = size;
        newString->len          = 0;
        newString->checksum     = IS_ALLOCED_MASK;
        newString->buffer[0]    = TERMINATOR;
    }

    return newString;
}

void PLString_Free (PLString * string)
{
    PLSTRING_CHECK(string);

    string->checksum = IS_ALLOCED_MASK + 1;
    Heap_FreeToHeap(string);
}

void PLString_Clear (PLString * string)
{
    PLSTRING_CHECK(string);

    string->len         = 0;
    string->buffer[0]   = TERMINATOR;
}

void PLString_Copy (PLString * dst, const PLString * src)
{
    PLSTRING_CHECK(dst);
    PLSTRING_CHECK(src);

    if (dst->size > src->len) {
        memcpy(dst->buffer, src->buffer, (src->len + 1) * sizeof(PLChar));
        dst->len = src->len;

        return;
    }

    GF_ASSERT(0);
}

PLString * PLString_Clone (const PLString * src, u32 heapID)
{
    PLSTRING_CHECK(src);

    PLString * dst = PLString_New(src->len + 1, heapID);

    if (dst) {
        PLString_Copy(dst, src);
    }

    return dst;
}

/// @brief Fills a string with bytes to represent a given number. itoa.
/// @param dst          output; the destination buffer. existing contents will be destroyed.
/// @param number       the number to be filled into the destination buffer.
/// @param len          the length of the number, or the number of digits to be filled in.
/// @param paddingMode  see NUMBER_PADDING_MODE.
/// @param charWidth    controls using full-width or half-width character mappings.
void PLString_FromInt (PLString * dst, int num, u32 len, NUMBER_PADDING_MODE paddingMode, CHARACTER_WIDTH charWidth)
{
    // digit sets could use better names
    static const u32 POWERS_OF_TEN[] = {
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
    static const u16 FULL_WIDTH_DIGITS[] = {
        0xa2,   // 0
        0xa3,   // 1
        0xa4,   // 2
        0xa5,   // 3
        0xa6,   // 4
        0xa7,   // 5
        0xa8,   // 6
        0xa9,   // 7
        0xaa,   // 8
        0xab    // 9
    };
    static const u16 HALF_WIDTH_DIGITS[] = {
        0x121,  // 0
        0x122,  // 1
        0x123,  // 2
        0x124,  // 3
        0x125,  // 4
        0x126,  // 5
        0x127,  // 6
        0x128,  // 7
        0x129,  // 8
        0x12a   // 9
    };

    PLSTRING_CHECK(dst);

    int neg = (num < 0);

    // make sure the number will fit
    // negative inputs get an extra character for the sign
    if (dst->size > (len + neg)) {
        u32 remainder, digit, power;
        const u16 * charMap = (charWidth == CHARACTER_WIDTH_FULL) ? FULL_WIDTH_DIGITS : HALF_WIDTH_DIGITS;

        PLString_Clear(dst);

        // append the sign first, if needed
        if (neg) {
            num *= -1;
            dst->buffer[dst->len++] = (charWidth == CHARACTER_WIDTH_FULL) ? 0xf1 : 0x1be;
        }

        // curse forwards through the integer digit by digit, appending individual digits along the way
        for (power = POWERS_OF_TEN[len - 1]; power > 0; power /= 10) {
            digit     = (u16) (num / power);
            remainder = (u32) (num - (power * digit));

            if (paddingMode == NUMBER_PADDING_MODE_ZEROES)      // this branch is hit if the user specified this padding mode, or any time after we hit a non-zero digit
            {
                dst->buffer[dst->len++] = (digit < 10) ? charMap[digit] : 0xe2;
            }
            else if (digit != 0 || power == 1)                  // once we hit this branch, we should always hit the above branch on future digits
            {
                paddingMode = NUMBER_PADDING_MODE_ZEROES;
                dst->buffer[dst->len++] = (digit < 10) ? charMap[digit] : 0xe2;
            }
            else if (paddingMode == NUMBER_PADDING_MODE_SPACES) // not in zero-padding mode, and found a leading zero, pad out with the appropriate width space
            {
                dst->buffer[dst->len++] = (charWidth == CHARACTER_WIDTH_FULL) ? 0x1 : 0x1e2;
            }

            num = remainder;
        }

        dst->buffer[dst->len] = TERMINATOR;
        return;
    }

    GF_ASSERT(0);
}

/// @brief Fills a string with bytes to represent a given number. itoa.
/// @param dst          output; the destination buffer. existing contents will be destroyed.
/// @param number       the number to be filled into the destination buffer.
/// @param len          the length of the number, or the number of digits to be filled in.
/// @param paddingMode  see NUMBER_PADDING_MODE.
/// @param charWidth    controls using full-width or half-width character mappings.
void PLString_FromInt64 (PLString * string, u64 number, u32 len, NUMBER_PADDING_MODE paddingMode, CHARACTER_WIDTH charWidth)
{
    static const u64 POWERS_OF_TEN[] = {
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
    static const u16 FULL_WIDTH_DIGITS[] = {
        0xa2,   // 0
        0xa3,   // 1
        0xa4,   // 2
        0xa5,   // 3
        0xa6,   // 4
        0xa7,   // 5
        0xa8,   // 6
        0xa9,   // 7
        0xaa,   // 8
        0xab    // 9
    };
    static const u16 HALF_WIDTH_DIGITS[] = {
        0x121,  // 0
        0x122,  // 1
        0x123,  // 2
        0x124,  // 3
        0x125,  // 4
        0x126,  // 5
        0x127,  // 6
        0x128,  // 7
        0x129,  // 8
        0x12a   // 9
    };

    PLSTRING_CHECK(string);

    int neg = (number < 0);

    // make sure the number will fit
    // negative inputs get an extra character for the sign
    if (string->size > (len + neg)) {
        u64 remainder, digit, power;
        const u16 * charMap = (charWidth == CHARACTER_WIDTH_FULL) ? FULL_WIDTH_DIGITS : HALF_WIDTH_DIGITS;

        PLString_Clear(string);

        // append the sign first, if needed
        if (neg) {
            number *= -1;
            string->buffer[string->len++] = (charWidth == CHARACTER_WIDTH_FULL) ? 0xf1 : 0x1be;
        }

        // curse forwards through the integer digit by digit, appending individual digits along the way
        for (power = POWERS_OF_TEN[len - 1]; power > 0; power /= 10) {
            digit     = (u16) (number / power);
            remainder = (u64) (number - (power * digit));

            if (paddingMode == NUMBER_PADDING_MODE_ZEROES)      // this branch is hit if the user specified this padding mode, or any time after we hit a non-zero digit
            {
                string->buffer[string->len++] = (digit < 10) ? charMap[digit] : 0xe2;
            }
            else if (digit != 0 || power == 1)                  // once we hit this branch, we should always hit the above branch on future digits
            {
                paddingMode = NUMBER_PADDING_MODE_ZEROES;
                string->buffer[string->len++] = (digit < 10) ? charMap[digit] : 0xe2;
            }
            else if (paddingMode == NUMBER_PADDING_MODE_SPACES) // not in zero-padding mode, and found a leading zero, pad out with the appropriate width space
            {
                string->buffer[string->len++] = (charWidth == CHARACTER_WIDTH_FULL) ? 0x1 : 0x1e2;
            }

            number = remainder;
        }

        string->buffer[string->len] = TERMINATOR;
        return;
    }

    GF_ASSERT(0);
}

/// @brief Construct a u64 representing a numeric input string. atoi.
/// @param src          the source buffer. if this buffer is not wholly numeric, this function will short-circuit.
/// @param successful   output; set to TRUE if src was wholly numeric.
/// @return A u64 representing as much numeric value could be parsed from src.
u64 PLString_ToInt64 (const PLString * src, BOOL * successful)
{
    u64 digit = 0, result = 0, power = 1;
    int i;
    PLChar c;
    u16 zeroFullWidth = 0xa2;
    u16 zeroHalfWidth = 0x121;

    // We don't support integers longer than 18 digits
    if (string->len > 18) {
        return 0;
    }

    // work through the string backwards, starting from the 1's place
    for (i = (string->len - 1); i >= 0; i--, power *= 10) {
        c = string->buffer[i];

        // check if this is a digit on the full-width map
        digit = c - zeroFullWidth;
        if (digit >= 10)
        {
            // check if this is a digit on the half-width map
            digit = c - zeroHalfWidth;
            if (digit >= 10)
            {
                // fail, but return as much of the number as we could parse
                *successful = 0;
                return result;
            }
        }

        // slot the digit into the result in the appropriate place, then go up to the next place
        digit = digit * power;
        result += digit;
    }

    // success!
    *successful = 1;
    return result;
}

int PLString_Compare (const PLString * this, const PLString * that)
{
    PLSTRING_CHECK(this);
    PLSTRING_CHECK(that);

    for (int i = 0; this->buffer[i] == that->buffer[i]; i++) {
        // Both strings matched on a terminator; the strings match
        if (this->buffer[i] == TERMINATOR) {
            return 0;
        }
    }

    return 1;
}

u32 PLString_GetLength (const PLString * string)
{
    PLSTRING_CHECK(string);

    return string->len;
}

u32 PLString_CountLines (const PLString * string)
{
    PLSTRING_CHECK(string);

    u32 lines = 1;

    for (u32 i = 0; i < string->len; i++) {
        if (string->buffer[i] == CR) {
            lines++;
        }
    }

    return lines;
}

/// @brief Fill a buffer with the ith line of a source string.
/// @param dst  output; the destination buffer. existing contents will be destroyed.
/// @param src  a multi-line string, delimited by carriage-return bytes.
/// @param i    the line to be extracted, zero-indexed (line 0 starts at src[0]).
void PLString_FillWithLine (PLString * dst, const PLString * src, u32 i)
{
    PLSTRING_CHECK(dst);
    PLSTRING_CHECK(src);

    u32 j = 0;

    // skip ahead to line i (0-indexed, so i = 0 does not skip ahead)
    if (i > 0) {
        for ( ; j < src->len; j++) {
            if (src->buffer[j] == CR) {
                if (--i == 0) {
                    j++;
                    break;
                }
            }
        }
    }

    // fill dst with bytes from src until either a CR is found or src ends
    PLString_Clear(dst);

    for ( ; j < src->len; j++) {
        if (src->buffer[j] == CR) {
            break;
        }

        PLString_Append(dst, src->buffer[j]);
    }
}

void PLString_FillWithChars (PLString * dst, const PLChar * src)
{
    PLSTRING_CHECK(dst);

    dst->len = 0;

    while (*src != TERMINATOR) {
        // Don't fill any characters over our allocated buffer size
        if (dst->len >= (dst->size - 1)) {
            GF_ASSERT(0);
            break;
        }

        dst->buffer[dst->len++] = *src++;
    }

    dst->buffer[dst->len] = TERMINATOR;
}

/// @brief Fill a buffer with up to a certain number of characters from a source string.
/// @param dst    output; the destination buffer. existing contents will be destroyed.
/// @param src    a source string, from which bytes will be copied into dst.
/// @param limit  the maximum number of bytes which should be copied into dst.
void PLString_FillWithCharsLimit (PLString * dst, const PLChar * src, u32 limit)
{
    PLSTRING_CHECK(dst);

    if (limit <= dst->size) {
        memcpy(dst->buffer, src, limit * sizeof(PLChar));

        // find the new terminator and update the destination string's header
        for (u32 i = 0; i < limit; i++) {
            if (dst->buffer[i] == TERMINATOR) {
                break;
            }
        }

        dst->len = i;

        // if we hit the end of the string before actually finding a terminator, then add one at the end
        if (i == limit) {
            dst->buffer[limit - 1] = TERMINATOR;
        }

        return;
    }

    GF_ASSERT(0);
}

/// @brief Dump the contents of a source string into a destination buffer with a given length.
/// @param src  a source string, from which bytes will be copied into dst.
/// @param dst  output; the destination buffer. existing contents will be destroyed.
/// @param len  the size of dst. if dst is too small to accommodate bytes from src, then short-circuit.
void PLString_Dump (const PLString * src, PLChar * dst, u32 len)
{
    PLSTRING_CHECK(src);

    // only copy characters if our terminator is under the limit
    if ((src->len + 1) <= len) {
        memcpy(dst, src->buffer, (src->len + 1) * sizeof(PLChar));
        return;
    }

    GF_ASSERT(0);
}

const u16 * PLString_GetBuffer (const PLString * string)
{
    PLSTRING_CHECK(string);
    return string->buffer;
}

void PLString_Concat (PLString * dst, const PLString * src)
{
    PLSTRING_CHECK(dst);
    PLSTRING_CHECK(src);

    // don't append the source string if it would overwrite our allocation
    if ((dst->len + src->len + 1) <= dst->size) {
        memcpy(&(dst->buffer[dst->len]), src->buffer, (src->len + 1) * sizeof(PLChar));
        dst->len += src->len;

        return;
    }

    GF_ASSERT(0);
}

void PLString_Append (PLString * dst, PLChar c)
{
    PLSTRING_CHECK(dst);

    // don't append the character if it would overwrite our allocation
    if ((dst->len + 1) < dst->size) {
        dst->buffer[dst->len++] = c;
        dst->buffer[dst->len] = TERMINATOR;

        return;
    }

    GF_ASSERT(0);
}

BOOL PLString_IsCompressed (PLString * string)
{
    return string->len > 0 && string->buffer[0] == IS_COMPRESSED_MASK;
}

/// @brief Concatenates two compressed strings dst and src, with the results
///        being stored in dst. If src is not compressed, then uses normal
///        concatenation. A light compression algorithm is used to translate
///        bytes from src before appending them to dst.
/// @param dst  output; the destination buffer. will receive bytes from src.
/// @param src  a source string, compressed.
void PLString_ConcatCompressed (PLString * dst, PLString * src)
{
    if (PLString_IsCompressed(src)) {;
        u16 * dstBuffer = &dst->buffer[dst->len];
        u16 * srcBuffer = &src->buffer[1];
        s32 srcShift = 0;
        s32 len = 0;

        do {
            // iterate through compressed characters one-by-one
            PLChar c = (*srcBuffer >> srcShift) & COMPRESSION_MASK;
            srcShift += 9;

            if (srcShift >= 15) {
                ++srcBuffer;
                srcShift -= 15;
                if (srcShift) {
                    c |= (*srcBuffer << (9 - srcShift)) & COMPRESSION_MASK;
                }
            }

            // if we come up with a compressed terminator, then we're done
            if (c == COMPRESSED_TERMINATOR) {
                break;
            }

            // append the compressed character from src
            *dstBuffer++ = c;
            ++len;
        } while (TRUE);

        // terminate the string
        *dstBuffer = TERMINATOR;
        dst->len += len;
    } else {
        PLString_Concat(dst, src);
    }
}

/// @brief Capitalize a given character at index i in the input string.
/// @param string  the source string
/// @param i       the index of the char to be capitalized
void PLString_CapitalizeAt (PLString * string, int i)
{
    PLSTRING_CHECK(string);

    // don't touch any buffer index past the actual string content
    if (string->len > i) {
        PLChar c = string->buffer[i];

        // if the character falls between a and z, capitalize it
        if ((c >= 0x145) && (c <= 0x15e)) {
            string->buffer[i] -= 0x145 - 0x12b;
        }
    }
}
