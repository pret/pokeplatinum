#ifndef POKEPLATINUM_STRBUF_H
#define POKEPLATINUM_STRBUF_H

typedef struct Strbuf_t Strbuf;
typedef u16 charcode_t;

/*
 * Control codes for how to pad numeric strings.
 *
 * Ex: `1000000` being assigned to a buffer of size 20 may be:
 * - Left-justified:                      "1000000             "
 * - Right-justified, padded with spaces: "             1000000"
 * - Right-justified, padded with zeroes: "00000000000001000000"
 */
enum PaddingMode {
    PADDING_MODE_NONE,
    PADDING_MODE_SPACES,
    PADDING_MODE_ZEROES,
};

/*
 * Control codes for which charset to use when formatting a string.
 */
enum CharsetMode {
    CHARSET_MODE_JP,
    CHARSET_MODE_EN,
};

Strbuf* Strbuf_Init(u32 size, u32 heapID);
void Strbuf_Free(Strbuf *strbuf);
void Strbuf_Clear(Strbuf *strbuf);
void Strbuf_Copy(Strbuf *dst, const Strbuf *src);
Strbuf* Strbuf_Clone(const Strbuf *src, u32 heapID);
void Strbuf_FormatInt(Strbuf *dst, int num, u32 maxDigits, enum PaddingMode paddingMode, enum CharsetMode charsetMode);
void Strbuf_FormatU64(Strbuf *dst, u64 num, u32 maxDigits, enum PaddingMode paddingMode, enum CharsetMode charsetMode);
u64 Strbuf_AtoI(const Strbuf *src, BOOL *success);
int Strbuf_Compare(const Strbuf *str1, const Strbuf *str2);
u32 Strbuf_Length(const Strbuf *strbuf);
u32 Strbuf_NumLines(const Strbuf *strbuf);
void Strbuf_CopyLineNum(Strbuf *dst, const Strbuf *src, u32 linenum);
void Strbuf_CopyChars(Strbuf *dst, const charcode_t *src);
void Strbuf_CopyNumChars(Strbuf *dst, const charcode_t *src, u32 num);
void Strbuf_ToChars(const Strbuf *src, charcode_t *dst, u32 dstsize);
const charcode_t* Strbuf_GetData(const Strbuf *strbuf);
void Strbuf_Concat(Strbuf *dst, const Strbuf *src);
void Strbuf_AppendChar(Strbuf *dst, charcode_t c);
BOOL Strbuf_IsTrainerName(Strbuf *strbuf);
void Strbuf_ConcatTrainerName(Strbuf *str1, Strbuf *str2);
void Strbuf_UpperChar(Strbuf *strbuf, int i);

#endif // POKEPLATINUM_STRBUF_H
