#ifndef POKEPLATINUM_STRBUF_H
#define POKEPLATINUM_STRBUF_H

#include "generated/string_padding_mode.h"

#include "struct_defs/strbuf.h"

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
 * @brief Init routine. Allocates memory for a new Strbuf, initializes it
 * with an integrity-check value, and exposes its address.
 *
 * @param size The size of the new Strbuf to allocate from the heap.
 * @param heapID ID of the heap to own the new Strbuf.
 * @return Address to the new Strbuf.
 */
Strbuf *Strbuf_Init(u32 size, u32 heapID);

/**
 * @brief Free routine. Destroys an existing Strbuf and returns its memory
 * to the owning heap.
 *
 * @param strbuf Address to the Strbuf to be freed.
 */
void Strbuf_Free(Strbuf *strbuf);

/**
 * @brief Clears out a string of any existing character data. The first value
 * in the underlying data buffer is set to `CHAR_EOS`, and `strbuf->size` is
 * set to 0.
 *
 * @param strbuf Address to the Strbuf to be cleared.
 */
void Strbuf_Clear(Strbuf *strbuf);

/**
 * @brief Copies the contents of the data buffer in `src` to the data buffer
 * in `dst`. Fails if the contents of `src` will not fit into `dst`'s
 * allocated memory.
 *
 * @param dst Destination buffer. `dst->size` and `dst->data` will be modified.
 * @param src Source buffer. `src->size` and `src->data` will be accessed.
 */
void Strbuf_Copy(Strbuf *dst, const Strbuf *src);

/**
 * @brief Clones the contents of a given Strbuf into a new Strbuf and returns
 * the address of the newly-created struct.
 *
 * This is effectively a nice wrapper around the following code:
 *
 * ```c
 * Strbuf *dst = Strbuf_Init(src->size + 1, heapID);
 * Strbuf_Copy(dst, src);
 * ```
 *
 * @param src Source buffer to clone.
 * @param heapID ID of the heap which will own the new Strbuf.
 * @return Address to the cloned Strbuf.
 */
Strbuf *Strbuf_Clone(const Strbuf *src, u32 heapID);

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
void Strbuf_FormatInt(Strbuf *dst, int num, u32 maxDigits, enum PaddingMode paddingMode, enum CharsetMode charsetMode);

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
void Strbuf_FormatU64(Strbuf *dst, u64 num, u32 maxDigits, enum PaddingMode paddingMode, enum CharsetMode charsetMode);

/**
 * @brief Parses a numeric string into a number.
 *
 * @param src Numeric string.
 * @param[out] success Flag denoting if the result string was fully processed.
 * @return Parsed result.
 */
u64 Strbuf_AtoI(const Strbuf *src, BOOL *success);

/**
 * @brief Compares two strings. Follows the `strcmp` standard.
 *
 * @param str1 First string.
 * @param str2 Second string.
 * @return 0 if the strings match, 1 if they do not.
 */
int Strbuf_Compare(const Strbuf *str1, const Strbuf *str2);

/**
 * @brief Accessor for the length of a string.
 *
 * @param strbuf
 * @return `strbuf->size`
 */
u32 Strbuf_Length(const Strbuf *strbuf);

/**
 * @brief Counts the number of lines in a string.
 *
 * @param strbuf
 * @return The number of lines in `strbuf`.
 */
u32 Strbuf_NumLines(const Strbuf *strbuf);

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
void Strbuf_CopyLineNum(Strbuf *dst, const Strbuf *src, u32 lineNum);

/**
 * @brief Copies data from a raw character buffer into a managed Strbuf.
 *
 * @param[out] dst Destination buffer.
 * @param src Raw character source buffer.
 */
void Strbuf_CopyChars(Strbuf *dst, const charcode_t *src);

/**
 * @brief Copies a specific number of values from a raw character buffer into
 * a managed Strbuf.
 *
 * @param[out] dst Destination buffer.
 * @param src Raw character source buffer.
 * @param num Number of values to copy.
 */
void Strbuf_CopyNumChars(Strbuf *dst, const charcode_t *src, u32 num);

/**
 * @brief Dumps the contents of a Strbuf into a raw character buffer.
 *
 * Fails if `src->size + 1 > dstSize`.
 *
 * @param src Source buffer.
 * @param[out] dst Destination buffer.
 * @param dstSize Size of `dst`.
 */
void Strbuf_ToChars(const Strbuf *src, charcode_t *dst, u32 dstSize);

/**
 * @brief Accessor for the underlying data buffer of a managed string.
 *
 * @param strbuf
 * @return Underlying data buffer for `strbuf`.
 */
const charcode_t *Strbuf_GetData(const Strbuf *strbuf);

/**
 * @brief Concatenates `src` onto the end of `dst`, if allocation permits.
 *
 * Fails if `dst->maxSize < dst->size + src->size + 1`.
 *
 * @param[out] dst Destination buffer.
 * @param src Source buffer.
 */
void Strbuf_Concat(Strbuf *dst, const Strbuf *src);

/**
 * @brief Appends a single character onto `dst`, if allocation permits.
 *
 * Fails if `dst->maxSize >= dst->size + 1`.
 *
 * @param[out] dst Destination buffer.
 * @param c Character to append.
 */
void Strbuf_AppendChar(Strbuf *dst, charcode_t c);

/**
 * @brief Checks if a given string is a trainer name.
 *
 * Trainer names are identified using a specific leader character which denotes
 * different handling methods for their concatenation.
 *
 * @param strbuf
 * @return TRUE if `strbuf` is a trainer name, FALSE otherwise.
 */
BOOL Strbuf_IsTrainerName(Strbuf *strbuf);

/**
 * @brief Concatenates `src` onto the end of `dst`, accounting for trainer
 * name compression.
 *
 * If `src` is not a trainer name, then this falls back to `Strbuf_Concat`.
 *
 * @param[out] dst Destination buffer.
 * @param src Source buffer.
 */
void Strbuf_ConcatTrainerName(Strbuf *dst, Strbuf *src);

/**
 * @brief Converts a particular character to uppercase.
 *
 * @param strbuf
 * @param i Index of the character to capitalize, zero-indexed.
 */
void Strbuf_UpperChar(Strbuf *strbuf, int i);

#endif // POKEPLATINUM_STRBUF_H
