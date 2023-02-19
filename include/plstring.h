#ifndef POKEPLATINUM_PLSTRING_H
#define POKEPLATINUM_PLSTRING_H

#include "struct_decls/struct_plstring_decl.h"

/**
 * Control codes for how to pad numeric strings with leading zeroes
 * filling their allocation space.
 * 
 * Ex: `1000000` being assigned to a buffer of size 20 may be:
 * - Left-justified:                      "1000000             "
 * - Right-justified, padded with spaces: "             1000000"
 * - Right-justified, padded with zeroes: "00000000000001000000"
 */
typedef enum {
    NUMBER_PADDING_MODE_NONE,       ///< Left-justified strings; no padding
    NUMBER_PADDING_MODE_SPACES,     ///< Right-justified strings, pad with spaces
    NUMBER_PADDING_MODE_ZEROES      ///< Right-justified strings, pad with zeroes
} NUMBER_PADDING_MODE;

/**
 * Control codes for which character-width should be used when translating
 * numeric values into byte-data.
 */
typedef enum {
    CHARACTER_WIDTH_FULL,           ///< Use full-width characters
    CHARACTER_WIDTH_HALF            ///< Use half-width characters
} CHARACTER_WIDTH;

/**
 * Initialize a new string buffer.
 * 
 * @param size:         How much space to allocate on the parent heap
 * @param heapID:       ID of the heap to allocate the new buffer on
 * 
 * @return              A pointer to the new buffer
 */
PLString * PLString_Init(u32 size, u32 heapID);

/**
 * Free up an existing string buffer.
 * 
 * @param string        The buffer to be freed back to the heap
 */
void PLString_Free(PLString * string);

/**
 * Clear out an existing string buffer.
 * 
 * Any existing content within the buffer will no longer be accessible.
 * 
 * @param string        The buffer to be cleared
 */
void PLString_Clear(PLString * string);

/**
 * Copies an existing string buffer's content into another existing buffer.
 * 
 * Acts as a wrapper for `memcpy()` on PLString structs. Any content in the
 * destination buffer will be overwritten.
 * 
 * If the destination buffer's allocation is too small to receive all of the
 * source buffer's content, then no copy will be performed.
 * 
 * @param[out] dst           The destination buffer
 * @param      src           The source buffer to be copied
 */
void PLString_Copy(PLString * dst, const PLString * src);

/**
 * Creates a new string buffer and fills it with content from an existing one.
 * 
 * @param src           The source buffer, which will provide byte-data
 * @param heapID        ID of the heap to allocate the new buffer on
 * 
 * @return              A pointer to the new buffer
 */
PLString * PLString_Clone(const PLString * src, u32 heapID);

/**
 * Fills an existing string buffer with a signed numeric value.
 * 
 * Acts as a wrapper for `itoa()` on PLString structs. The destination buffer
 * will be cleared before new content is added. If the desired number to be
 * written is too long for the destination buffer, then this function is a
 * no-op. This version supports negative inputs, and will precede negative
 * inputs with a sign character.
 * 
 * @param[out] dst          The destination buffer
 * @param      num          The number to convert into a string
 * @param      len          The number of digits to be written
 * @param      paddingMode  Designates how to treat leading-zeroes
 * @param      charWidth    Designates which encoding-map to use for digits
 * @see        NUMBER_PADDING_MODE
 * @see        CHARACTER_WIDTH
 */
void PLString_FromInt(PLString * dst, int num, u32 len, NUMBER_PADDING_MODE paddingMode, CHARACTER_WIDTH charWidth);

/**
 * Fills an existing string buffer with an unsigned numeric value.
 * 
 * Acts as a wrapper for `itoa()` on PLString structs. The destination buffer
 * will be cleared before new content is added. If the desired number to be
 * written is too long for the destination buffer, then this function is a
 * no-op. This version does NOT support negative inputs.
 * 
 * @param[out] dst          The destination buffer
 * @param      num          The number to convert into a string
 * @param      len          The number of digits to be written
 * @param      paddingMode  Designates how to treat leading-zeroes
 * @param      charWidth    Designates which encoding-map to use for digits
 * @see        NUMBER_PADDING_MODE
 * @see        CHARACTER_WIDTH
 */
void PLString_FromInt64(PLString * dst, u64 num, u32 len, NUMBER_PADDING_MODE paddingMode, CHARACTER_WIDTH charWidth);

/**
 * Converts a numeric string buffer into an unsigned numeric value.
 * 
 * @param      src          The source string
 * @param[out] successful   `TRUE` if the conversion was successful
 * @return                  Unsigned number parsed from the source buffer
 */
u64 PLString_ToInt64(const PLString * src, BOOL * successful);

/**
 * Compare two strings' content byte-for-byte.
 * 
 * @param this
 * @param that 
 * @return 0 if the strings are equal, 1 if they are not
 */
int PLString_Compare(const PLString * this, const PLString * that);

/**
 * Returns the length of a string buffer's content (NOT its allocated size)
 * 
 * @param string
 * @return The length of the input string's content
 */
u32 PLString_GetLength(const PLString * string);

/**
 * Counts the number of lines present within a string buffer's content
 * 
 * @param string 
 * @return Number of lines within the string
 */
u32 PLString_CountLines(const PLString * string);

/**
 * Fills the destination buffer with content from the `i`^th line of the
 * source buffer. Line numbers are zero-indexed, i.e. the first line is
 * `i = 0`, the second is `i = 1`, etc.
 * 
 * @param[out] dst      The destination buffer
 * @param      src      The source string, multi-line
 * @param      i        Which line should be filled into `dst`
 */
void PLString_FillWithLine(PLString * dst, const PLString * src, u32 i);

/**
 * Fill the destination buffer with content from a raw `char` array.
 * If `dst`'s allocation is insufficient to receive all of `src`'s content,
 * then this function will panic and fail.
 * 
 * @param[out] dst      The destination buffer
 * @param      src      The source string, as a character array
 */
void PLString_FillWithChars(PLString * dst, const PLChar * src);

/**
 * Fill the destination with up to `limit` characters from a raw `char` array.
 * If `dst`'s allocation is insufficient to receive the specified number of
 * characters, then this function will panic and fail.
 * 
 * @param[out] dst      The destination buffer 
 * @param      src      The source string, as a character array
 * @param      limit    No more than this many characters should be copied
 */
void PLString_FillWithCharsLimit(PLString * dst, const PLChar * src, u32 limit);

/**
 * Dumps the contents of a string buffer into a `char` buffer of length `len`.
 * If `len` is less than `src`'s content length, then this function will panic
 * and fail.
 * 
 * @param      src      The source string
 * @param[out] dst      The destination `char` buffer
 * @param      len      The size of `dst`
 */
void PLString_Dump(const PLString * src, PLChar * dst, u32 len);

/**
 * Returns the backing content of a string buffer.
 * 
 * @param string 
 * @return The string's content
 */
const PLChar * PLString_GetBuffer(const PLString * string);

/**
 * Concatenates the content from `src` after the content of `dst`. If `dst`'s
 * allocation is insufficient to receive `src`'s content, then this function
 * will panic and fail.
 * 
 * `dst := dst + src`
 * 
 * @param[out] dst      The destination buffer
 * @param      src      The string to concatenate after `dst`
 */
void PLString_Concat(PLString * dst, const PLString * src);

/**
 * Appends a single character to the end of `dst`. If `dst`'s allocation is
 * insufficient to receive another character, then this function will panic
 * and fail.
 * 
 * @param[out] dst      The destination buffer
 * @param      c        The character to append to `dst`
 */
void PLString_Append(PLString * dst, PLChar c);

/**
 * Checks if a string is marked as compressed.
 * 
 * @param string
 * @return `TRUE` if the string is marked as compressed; `FALSE` otherwise.
 */
BOOL PLString_IsCompressed(PLString * string);

/**
 * Concatenates `src` onto `dst`, accounting for `src` being a compressed
 * string. If `src` is not compressed, then performs raw concatenation.
 * 
 * @param[out] dst      The destination buffer
 * @param      src      The string to concatenate after `dst`
 * @see        PLString_Concat
 */
void PLString_ConcatCompressed(PLString * dst, PLString * src);

/**
 * Capitalizes the `i`^th character in a given string. `i` is zero-indexed,
 * i.e. the first character is `i = 0`, the second is `i = 1`, etc.
 * 
 * @param[out] string   The input string to be modified
 * @param      i        Index of the character to be capitalized
 */
void PLString_CapitalizeAt(PLString * string, int i);

#endif // POKEPLATINUM_PLSTRING_H
