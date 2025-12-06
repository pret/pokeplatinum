#ifndef POKEPLATINUM_STRING_H
#define POKEPLATINUM_STRING_H

#include "charcode.h"

/**
 * Managed string buffer.
 */
typedef struct String {
    /// Maximum allocated size of the buffer.
    u16 maxSize;

    /// Size of the buffer, at present; the length of the underlying string.
    u16 size;

    /// Integrity value specified at allocation time.
    u32 integrity;

    /// The underlying character buffer.
    ///
    /// UB: This is meant to be a flexible array, but is purposely defined
    /// incorrectly in order to match the original byte-code. The correct
    /// definition method would be as `data[]`.
    charcode_t data[1];
} String;

#include "generated/string_padding_mode.h"

/**
 * Control codes for which charset to use when formatting a string.
 */
enum CharsetMode {
    /// Use the Japanese character set (i.e., full-width characters).
    CHARSET_MODE_JP,

    /// Use the English character set (i.e., half-width characters).
    CHARSET_MODE_EN,
};

/**
 * @brief Init routine. Allocates memory for a new String, initializes it
 * with an integrity-check value, and exposes its address.
 *
 * @param size The size of the new String to allocate from the heap.
 * @param heapID ID of the heap to own the new String.
 * @return Address to the new String.
 */
String *String_Init(u32 size, u32 heapID);

/**
 * @brief Free routine. Destroys an existing String and returns its memory
 * to the owning heap.
 *
 * @param string Address to the String to be freed.
 */
void String_Free(String *string);

/**
 * @brief Clears out a string of any existing character data. The first value
 * in the underlying data buffer is set to `CHAR_EOS`, and `string->size` is
 * set to 0.
 *
 * @param string Address to the String to be cleared.
 */
void String_Clear(String *string);

/**
 * @brief Copies the contents of the data buffer in `src` to the data buffer
 * in `dst`. Fails if the contents of `src` will not fit into `dst`'s
 * allocated memory.
 *
 * @param dst Destination buffer. `dst->size` and `dst->data` will be modified.
 * @param src Source buffer. `src->size` and `src->data` will be accessed.
 */
void String_Copy(String *dst, const String *src);

/**
 * @brief Clones the contents of a given String into a new String and returns
 * the address of the newly-created struct.
 *
 * This is effectively a nice wrapper around the following code:
 *
 * ```c
 * String *dst = String_Init(src->size + 1, heapID);
 * String_Copy(dst, src);
 * ```
 *
 * @param src Source buffer to clone.
 * @param heapID ID of the heap which will own the new String.
 * @return Address to the cloned String.
 */
String *String_Clone(const String *src, u32 heapID);

/**
 * @brief Format a number into a destination buffer.
 *
 * The destination buffer must already be initialized.
 *
 * @param[out] dst Destination buffer.
 * @param num Number to be formatted.
 * @param maxDigits Maximum number of digits to format, right-justified.
 * @param paddingMode Padding mode to use when formatting the number.
 * @param charsetMode Charset mode to use when formatting the number.
 */
void String_FormatInt(String *dst, int num, u32 maxDigits, enum PaddingMode paddingMode, enum CharsetMode charsetMode);

/**
 * @brief Format a number into a destination buffer.
 *
 * The destination buffer must already be initialized.
 *
 * @param[out] dst Destination buffer.
 * @param num Number to be formatted.
 * @param maxDigits Maximum number of digits to format, right-justified.
 * @param paddingMode Padding mode to use when formatting the number.
 * @param charsetMode Charset mode to use when formatting the number.
 */
void String_FormatU64(String *dst, u64 num, u32 maxDigits, enum PaddingMode paddingMode, enum CharsetMode charsetMode);

/**
 * @brief Parses a numeric string into a number.
 *
 * @param src Numeric string.
 * @param[out] success Flag denoting if the result string was fully processed.
 * @return Parsed result.
 */
u64 String_AtoI(const String *src, BOOL *success);

/**
 * @brief Compares two strings. Follows the `strcmp` standard.
 *
 * @param str1 First string.
 * @param str2 Second string.
 * @return 0 if the strings match, 1 if they do not.
 */
int String_Compare(const String *str1, const String *str2);

/**
 * @brief Accessor for the length of a string.
 *
 * @param string
 * @return `string->size`
 */
u32 String_Length(const String *string);

/**
 * @brief Counts the number of lines in a string.
 *
 * @param string
 * @return The number of lines in `string`.
 */
u32 String_NumLines(const String *string);

/**
 * @brief Copies a particular line number from `src` into `dst`.
 *
 * Lines are zero-indexed, e.g. `lineNum == 0` will copy the first line,
 * `lineNum == 1` will copy the second line, etc.
 *
 * @param[out] dst Destination buffer.
 * @param src Source buffer.
 * @param lineNum Number of the line to copy, zero-indexed.
 */
void String_CopyLineNum(String *dst, const String *src, u32 lineNum);

/**
 * @brief Copies data from a raw character buffer into a managed String.
 *
 * @param[out] dst Destination buffer.
 * @param src Raw character source buffer.
 */
void String_CopyChars(String *dst, const charcode_t *src);

/**
 * @brief Copies a specific number of values from a raw character buffer into
 * a managed String.
 *
 * @param[out] dst Destination buffer.
 * @param src Raw character source buffer.
 * @param num Number of values to copy.
 */
void String_CopyNumChars(String *dst, const charcode_t *src, u32 num);

/**
 * @brief Dumps the contents of a String into a raw character buffer.
 *
 * Fails if `src->size + 1 > dstSize`.
 *
 * @param src Source buffer.
 * @param[out] dst Destination buffer.
 * @param dstSize Size of `dst`.
 */
void String_ToChars(const String *src, charcode_t *dst, u32 dstSize);

/**
 * @brief Accessor for the underlying data buffer of a managed string.
 *
 * @param string
 * @return Underlying data buffer for `string`.
 */
const charcode_t *String_GetData(const String *string);

/**
 * @brief Concatenates `src` onto the end of `dst`, if allocation permits.
 *
 * Fails if `dst->maxSize < dst->size + src->size + 1`.
 *
 * @param[out] dst Destination buffer.
 * @param src Source buffer.
 */
void String_Concat(String *dst, const String *src);

/**
 * @brief Appends a single character onto `dst`, if allocation permits.
 *
 * Fails if `dst->maxSize >= dst->size + 1`.
 *
 * @param[out] dst Destination buffer.
 * @param c Character to append.
 */
void String_AppendChar(String *dst, charcode_t c);

/**
 * @brief Checks if a given string is a trainer name.
 *
 * Trainer names are identified using a specific leader character which denotes
 * different handling methods for their concatenation.
 *
 * @param string
 * @return TRUE if `string` is a trainer name, FALSE otherwise.
 */
BOOL String_IsTrainerName(String *string);

/**
 * @brief Concatenates `src` onto the end of `dst`, accounting for trainer
 * name compression.
 *
 * If `src` is not a trainer name, then this falls back to `String_Concat`.
 *
 * @param[out] dst Destination buffer.
 * @param src Source buffer.
 */
void String_ConcatTrainerName(String *dst, String *src);

/**
 * @brief Converts a particular character to uppercase.
 *
 * @param string
 * @param i Index of the character to capitalize, zero-indexed.
 */
void String_UpperChar(String *string, int i);

#endif // POKEPLATINUM_STRING_H
