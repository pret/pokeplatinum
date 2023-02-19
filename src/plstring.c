#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_plstring_decl.h"

#include "heap.h"
#include "plstring.h"

#define TERMINATOR 0xffff
#define IS_ALLOCED 0xb6f8d2ec
#define PLString_IsAllocated(string) (GF_ASSERT(string != NULL); GF_ASSERT(string->checksum == IS_ALLOCED));

struct PLString_t {
    u16 bufSize; // length of string, minus the terminator
    u16 termIdx; // Location of terminator
    u32 checksum; // Checksum? Seems to be a unique value that validates if a string is alloc'd or free'd
    u16 buffer[1]; // Actual string content
};

PLString * PLString_AllocFromHeap (u32 size, u32 heapID)
{
    PLString * newString = Heap_AllocFromHeap(
        heapID,
        (
            (sizeof(PLString) - sizeof(u16)) // Size of header data for a PLString
                + sizeof(u16) * size         // Allocate enough for the desired string size
        )
    );

    if (newString) {
        newString->bufSize = size;
        newString->termIdx = 0;
        newString->checksum = IS_ALLOCED;
        newString->buffer[0] = TERMINATOR;
    }

    return newString;
}

void PLString_FreeToHeap (PLString * string)
{
    PLString_IsAllocated(string);

    string->checksum = IS_ALLOCED + 1;
    Heap_FreeToHeap(string);
}

void PLString_Zero (PLString * string)
{
    PLString_IsAllocated(string);

    string->termIdx = 0;
    string->buffer[0] = TERMINATOR;
}

void PLString_CopyInto (PLString * dest, const PLString * source)
{
    PLString_IsAllocated(dest);
    PLString_IsAllocated(source);

    if (dest->bufSize > source->termIdx) {
        memcpy(dest->buffer, source->buffer, (source->termIdx + 1) * sizeof(u16));
        dest->termIdx = source->termIdx;
        return;
    }

    GF_ASSERT(0);
}

PLString * PLString_CloneUpTo (const PLString * string, u32 size)
{
    PLString_IsAllocated(string);

    PLString * newString = PLString_AllocFromHeap(string->termIdx + 1, size);

    if (newString) {
        PLString_CopyInto(newString, string);
    }

    return newString;
}

void PLString_FromInteger (PLString * string, int integer, u32 numDigits, int mode, int digitSetToUse)
{
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
    static const u16 DIGIT_SET_A2[] = {
        0xa2,
        0xa3,
        0xa4,
        0xa5,
        0xa6,
        0xa7,
        0xa8,
        0xa9,
        0xaa,
        0xab
    };
    static const u16 DIGIT_SET_121[] = {
        0x121,
        0x122,
        0x123,
        0x124,
        0x125,
        0x126,
        0x127,
        0x128,
        0x129,
        0x12a
    };

    PLString_IsAllocated(string);

    int isNegative = (integer < 0);

    // make sure the integer will fit
    // negative integers have an extra character for the sign
    if (string->bufSize > (numDigits + isNegative)) {
        u32 remainder, digit, power;
        const u16 * digitChars = (digitSetToUse == 0) ? DIGIT_SET_A2 : DIGIT_SET_121;

        PLString_Zero(string);

        // append the sign, if needed
        if (isNegative) {
            integer *= -1;
            string->buffer[string->termIdx++] = (digitSetToUse == 0) ? 0xf1 : 0x1be;
        }

        // curse forwards through the integer digit by digit, appending individual digits along the way
        for (power = POWERS_OF_TEN[numDigits - 1]; power > 0; power /= 10) {
            digit = (u16)(integer / power);
            remainder = (u32)(integer - (power * digit));

            // need to document this code a bit more
            if (mode == 2) {
                string->buffer[string->termIdx++] = (digit < 10) ? digitChars[digit] : 0xe2;
            } else if ((digit != 0) || (power == 1)) {
                mode = 2;
                string->buffer[string->termIdx++] = (digit < 10) ? digitChars[digit] : 0xe2;
            } else if (mode == 1) {
                string->buffer[string->termIdx++] = (digitSetToUse == 0) ? 0x1 : 0x1e2;
            }

            integer = remainder;
        }

        string->buffer[string->termIdx] = TERMINATOR;
        return;
    }

    GF_ASSERT(0);
}

// Functionally identical to PLString_FromInteger, but for a U64 input
void PLString_FromU64 (PLString * string, u64 number, u32 numDigits, int mode, int digitSetToUse)
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
    static const u16 DIGIT_SET_A2[] = {
        0xa2,
        0xa3,
        0xa4,
        0xa5,
        0xa6,
        0xa7,
        0xa8,
        0xa9,
        0xaa,
        0xab
    };
    static const u16 DIGIT_SET_121[] = {
        0x121,
        0x122,
        0x123,
        0x124,
        0x125,
        0x126,
        0x127,
        0x128,
        0x129,
        0x12a
    };

    PLString_IsAllocated(string);

    int isNegative = (number < 0);

    if (string->bufSize > (numDigits + isNegative)) {
        u64 remainder, digit, power;
        const u16 * digitChars = (digitSetToUse == 0) ? DIGIT_SET_A2 : DIGIT_SET_121;

        PLString_Zero(string);

        if (isNegative) {
            number *= -1;
            string->buffer[string->termIdx++] = (digitSetToUse == 0) ? 0xf1 : 0x1be;
        }

        for (power = POWERS_OF_TEN[numDigits - 1]; power > 0; power /= 10) {
            digit = (u64)(number / power);
            remainder = (u64)(number - (power * digit));

            if (mode == 2) {
                string->buffer[string->termIdx++] = (digit < 10) ? digitChars[digit] : 0xe2;
            } else if ((digit != 0) || (power == 1)) {
                mode = 2;
                string->buffer[string->termIdx++] = (digit < 10) ? digitChars[digit] : 0xe2;
            } else if (mode == 1) {
                string->buffer[string->termIdx++] = (digitSetToUse == 0) ? 0x1 : 0x1de;
            }

            number = remainder;
        }

        string->buffer[string->termIdx] = TERMINATOR;
        return;
    }

    GF_ASSERT(0);
}

u64 PLString_ToInteger (const PLString * string, BOOL * successful)
{
    u64 digit = 0, result = 0, power = 1;
    int cursor;
    u16 charDigit;
    u16 intRootA2 = 0xa2;
    u16 intRoot121 = 0x121;

    // We don't support integers longer than 18 digits
    if (string->termIdx > 18) {
        return 0;
    }

    // work through the string backwards, starting from the 1's place
    for (cursor = (string->termIdx - 1); cursor >= 0; cursor--) {
        charDigit = string->buffer[cursor];

        // check if this is a digit relative to the encoding root at 0xA2
        digit = charDigit - intRootA2;
        if (digit >= 10) { // if the diff is >= 10, then this is not a digit

            // check if this is a digit relative to the encoding root at 0x121
            digit = charDigit - intRoot121;
            if (digit >= 10) { // if the diff is >= 10, then this is not a digit

                // fail, but return as much of the digit as we could
                *successful = 0;
                return result;
            }
        }

        // slot the digit into the result in the appropriate place, then go up to the next place
        digit = digit * power;
        result += digit;
        power *= 10;
    }

    // success!
    *successful = 1;
    return result;
}

int PLString_IsPrefixOf (const PLString * maybePrefix, const PLString * string)
{
    PLString_IsAllocated(maybePrefix);
    PLString_IsAllocated(string);

    int cursor;

    // Curse through the buffer char-by-char until a differing character is found
    for (cursor = 0; maybePrefix->buffer[cursor] == string->buffer[cursor]; cursor++) {
        // If the differing character was a terminator on our test prefix, then the test was successful
        if (maybePrefix->buffer[cursor] == TERMINATOR) {
            return 0;
        }
    }

    return 1;
}

u32 PLString_GetTerminatorIndex (const PLString * string)
{
    PLString_IsAllocated(string);
    return string->termIdx;
}

// this one needs a name that describes what exactly it's searching for
u32 sub_02023C5C (const PLString * string)
{
    PLString_IsAllocated(string);

    {
        int cursor;
        u32 next;

        for (cursor = 0, next = 1; cursor < string->termIdx; cursor++) {
            if (string->buffer[cursor] == 0xe000) {
                next++;
            }
        }

        return next;
    }
}

// this one needs a name still that describes its function; dependent on figuring out what char 0xe000 represents
void sub_02023C9C (PLString * dest, const PLString * source, u32 skip)
{
    PLString_IsAllocated(dest);
    PLString_IsAllocated(source);

    {
        int cursor = 0;

        if (skip) {
            for (cursor = 0; cursor < source->termIdx; cursor++) {
                if (source->buffer[cursor] == 0xe000) {
                    if (--skip == 0) {
                        cursor++;
                        break;
                    }
                }
            }
        }

        PLString_Zero(dest);

        for ( ; cursor < source->termIdx; cursor++) {
            if (source->buffer[cursor] == 0xe000) {
                break;
            }

            PLString_AppendChar(dest, source->buffer[cursor]);
        }
    }
}

void PLString_ImportChars (PLString * dest, const u16 * source)
{
    PLString_IsAllocated(dest);

    dest->termIdx = 0;

    while (*source != TERMINATOR) {
        // Don't import any characters over our allocated buffer size
        if (dest->termIdx >= (dest->bufSize - 1)) {
            GF_ASSERT(0);
            break;
        }

        dest->buffer[dest->termIdx++] = *source++;
    }

    dest->buffer[dest->termIdx] = TERMINATOR;
}

void PLString_ImportCharsUpTo (PLString * dest, const u16 * source, u32 size)
{
    PLString_IsAllocated(dest);

    if (size <= dest->bufSize) {
        u32 cursor;

        memcpy(dest->buffer, source, size * sizeof(u16));

        // find the new terminator and update the destination string's header
        for (cursor = 0; cursor < size; cursor++) {
            if (dest->buffer[cursor] == TERMINATOR) {
                break;
            }
        }

        dest->termIdx = cursor;

        // if we hit the end of the string before actually finding a terminator, then add one at the end
        if (cursor == size) {
            dest->buffer[size - 1] = TERMINATOR;
        }

        return;
    }

    GF_ASSERT(0);
}

void PLString_ExportCharsUpTo (const PLString * source, u16 * dest, u32 size)
{
    PLString_IsAllocated(source);

    // only copy characters if our terminator is under the limit
    if ((source->termIdx + 1) <= size) {
        memcpy(dest, source->buffer, (source->termIdx + 1) * sizeof(u16));
        return;
    }

    GF_ASSERT(0);
}

const u16 * PLString_GetCharData (const PLString * string)
{
    PLString_IsAllocated(string);
    return string->buffer;
}

void PLString_Concatenate (PLString * dest, const PLString * source)
{
    PLString_IsAllocated(dest);
    PLString_IsAllocated(source);

    // don't append the source string if it would overwrite our allocation
    if ((dest->termIdx + source->termIdx + 1) <= dest->bufSize) {
        memcpy(&(dest->buffer[dest->termIdx]), source->buffer, (source->termIdx + 1) * sizeof(u16));
        dest->termIdx += source->termIdx;
        return;
    }

    GF_ASSERT(0);
}

void PLString_AppendChar (PLString * dest, u16 charToAppend)
{
    PLString_IsAllocated(dest);

    // don't append the character if it would overwrite our allocation
    if ((dest->termIdx + 1) < dest->bufSize) {
        dest->buffer[dest->termIdx++] = charToAppend;
        dest->buffer[dest->termIdx] = TERMINATOR;
        return;
    }

    GF_ASSERT(0);
}

BOOL sub_02023EF8 (PLString * string)
{
    return (string->termIdx > 0) && (string->buffer[0] == 0xF100);
}

void sub_02023F10 (PLString * string0, PLString * string1)
{
    if (sub_02023EF8(string1)) {
        u32 v0;
        u16 * v1 = &string0->buffer[string0->termIdx];
        u16 * v2 = &string1->buffer[1];
        s32 v3 = 0;
        s32 v4 = 0;

        do {
            u16 v5;

            v5 = (*v2 >> v3) & 0x1FF;
            v3 += 9;

            if (v3 >= 15) {
                ++v2;
                v3 -= 15;

                if (v3) {
                    v5 |= (*v2 << (9 - v3)) & 0x1FF;
                }
            }

            if (v5 == 0x1FF) {
                break;
            }

            *v1++ = v5;
            ++v4;
        } while (TRUE);

        *v1 = TERMINATOR;
        string0->termIdx += v4;
    } else {
        PLString_Concatenate(string0, string1);
    }
}

void PLString_SanitizeAtIndex (PLString * string, int index)
{
    PLString_IsAllocated(string);

    // don't touch any buffer index past the actual string content
    if (string->termIdx > index) {
        u16 toSanitize = string->buffer[index];

        if ((toSanitize >= 0x145) && (toSanitize <= 0x15e)) {
            string->buffer[index] -= 0x145 - 0x12b;
        }
    }
}
