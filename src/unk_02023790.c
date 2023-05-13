#include <nitro.h>
#include <string.h>

#include "charcode.h"
#include "heap.h"
#include "unk_02023790.h"

struct Strbuf_t {
    u16 maxsize;
    u16 size;
    u32 magic;
    Charcode data[1];
};

#define SIZEOF_STRBUF_HEADER    (sizeof(Strbuf) - sizeof(Charcode))
#define STRBUF_MAGIC            (0xB6F8D2EC)

static inline void Strbuf_Check(const Strbuf *strbuf)
{
    GF_ASSERT(strbuf != NULL);
    GF_ASSERT(strbuf->magic == STRBUF_MAGIC);
}

Strbuf* sub_02023790(u32 size, u32 heapID)  // Strbuf_Init
{
    Strbuf *strbuf;

    strbuf = Heap_AllocFromHeap(heapID, SIZEOF_STRBUF_HEADER + (size * sizeof(Charcode)));

    if (strbuf) {
        strbuf->magic = STRBUF_MAGIC;
        strbuf->maxsize = size;
        strbuf->size = 0;
        strbuf->data[0] = EOS;
    }

    return strbuf;
}

void sub_020237BC(Strbuf *strbuf)  // Strbuf_Free
{
    Strbuf_Check(strbuf);

    strbuf->magic = STRBUF_MAGIC + 1;
    Heap_FreeToHeap(strbuf);
}

void sub_020237E8(Strbuf *strbuf)  // Strbuf_Clear
{
    Strbuf_Check(strbuf);

    strbuf->size = 0;
    strbuf->data[0] = EOS;
}

void sub_02023810(Strbuf *dst, const Strbuf *src)    // Strbuf_Copy
{
    Strbuf_Check(dst);
    Strbuf_Check(src);

    if (dst->maxsize > src->size) {
        memcpy(dst->data, src->data, (src->size + 1) * sizeof(Charcode));
        dst->size = src->size;
        return;
    }

    GF_ASSERT(0);
}

Strbuf* sub_02023868(const Strbuf *src, u32 heapID) // Strbuf_Clone
{
    Strbuf_Check(src);

    Strbuf *strbuf = sub_02023790(src->size + 1, heapID);

    if (strbuf) {
        sub_02023810(strbuf, src);
    }

    return strbuf;
}

// Strbuf_FormatInt
void sub_020238A0(Strbuf *dst, int num, u32 maxDigits, int paddingMode, BOOL whichCharset)
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
    static const Charcode sDigits_JP[] = {
        JP_0,
        JP_1,
        JP_2,
        JP_3,
        JP_4,
        JP_5,
        JP_6,
        JP_7,
        JP_8,
        JP_9,
    };
    static const Charcode sDigits_EN[] = {
        EN_0,
        EN_1,
        EN_2,
        EN_3,
        EN_4,
        EN_5,
        EN_6,
        EN_7,
        EN_8,
        EN_9,
    };

    Strbuf_Check(dst);

    BOOL negative = (num < 0);

    if (dst->maxsize > (maxDigits + negative)) {
        const Charcode *digitSet = (whichCharset == 0) ? sDigits_JP : sDigits_EN;

        sub_020237E8(dst);

        if (negative) {
            num *= -1;
            dst->data[dst->size++] = (whichCharset == 0) ? JP_MINUS : EN_MINUS;
        }

        u32 div = sPowersOfTen[maxDigits - 1];
        while (div != 0) {
            u16 digit = (u16)(num / div);
            num -= div * digit;

            if (paddingMode == 2) {
                dst->data[dst->size++] = (digit < 10) ? digitSet[digit] : JP_QUESTION;
            } else if (digit != 0 || div == 1) {
                paddingMode = 2;
                dst->data[dst->size++] = (digit < 10) ? digitSet[digit] : JP_QUESTION;
            } else if (paddingMode == 1) {
                dst->data[dst->size++] = (whichCharset == 0) ? JP_SPACE : NUM_SPACE;
            }

            div /= 10;
        }

        dst->data[dst->size] = EOS;
        return;
    }

    GF_ASSERT(0);
}

// Strbuf_FormatU64
void sub_020239D4(Strbuf *dst, u64 num, u32 maxDigits, int paddingMode, int whichCharset)
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
    static const Charcode sDigits_JP[] = {
        JP_0,
        JP_1,
        JP_2,
        JP_3,
        JP_4,
        JP_5,
        JP_6,
        JP_7,
        JP_8,
        JP_9,
    };
    static const Charcode sDigits_EN[] = {
        EN_0,
        EN_1,
        EN_2,
        EN_3,
        EN_4,
        EN_5,
        EN_6,
        EN_7,
        EN_8,
        EN_9,
    };

    Strbuf_Check(dst);

    BOOL negative = (num < 0);

    if (dst->maxsize > (maxDigits + negative)) {
        const Charcode *digitSet = (whichCharset == 0) ? sDigits_JP : sDigits_EN;

        sub_020237E8(dst);

        if (negative) {
            num *= -1;
            dst->data[dst->size++] = (whichCharset == 0) ? JP_MINUS : EN_MINUS;
        }

        u64 div = sPowersOfTen[maxDigits - 1];
        while (div != 0) {
            u64 digit = num / div;
            num -= div * digit;

            if (paddingMode == 2) {
                dst->data[dst->size++] = (digit < 10) ? digitSet[digit] : JP_QUESTION;
            } else if ((digit != 0) || (div == 1)) {
                paddingMode = 2;
                dst->data[dst->size++] = (digit < 10) ? digitSet[digit] : JP_QUESTION;
            } else if (paddingMode == 1) {
                dst->data[dst->size++] = (whichCharset == 0) ? JP_SPACE : EN_SPACE;
            }

            div /= 10;
        }

        dst->data[dst->size] = EOS;
        return;
    }

    GF_ASSERT(0);
}

// Strbuf_ToInt
u64 sub_02023B38(const Strbuf *src, BOOL *success)
{
    u64 ret = 0, pow = 1;
    if (src->size > 18) {
        return 0;
    }

    for (int i = (src->size - 1); i >= 0; i--) {
        u64 digit = src->data[i] - JP_0;
        if (digit >= 10) {
            digit = src->data[i] - EN_0;

            if (digit >= 10) {
                *success = 0;
                return ret;
            }
        }

        digit *= pow;
        ret += digit;
        pow *= 10;
    }

    *success = 1;
    return ret;
}

// Strbuf_Compare
int sub_02023BE0(const Strbuf *str1, const Strbuf *str2)
{
    Strbuf_Check(str1);
    Strbuf_Check(str2);

    for (int i = 0; str1->data[i] == str2->data[i]; i++) {
        if (str1->data[i] == EOS) {
            return 0;
        }
    }

    return 1;
}

// Strbuf_Length
u32 sub_02023C3C(const Strbuf *strbuf)
{
    Strbuf_Check(strbuf);
    return strbuf->size;
}

// Strbuf_NumLines
u32 sub_02023C5C(const Strbuf *strbuf)
{
    Strbuf_Check(strbuf);

    int i, count;
    for (i = 0, count = 1; i < strbuf->size; i++) {
        if (strbuf->data[i] == CR) {
            count++;
        }
    }

    return count;
}

// Strbuf_CopyLineNum
void sub_02023C9C(Strbuf *dst, const Strbuf *src, u32 linenum)
{
    Strbuf_Check(src);
    Strbuf_Check(dst);

    int i = 0;

    if (linenum) {
        for (i = 0; i < src->size; i++) {
            if (src->data[i] == CR && --linenum == 0) {
                i++;
                break;
            }
        }
    }

    sub_020237E8(dst);

    for ( ; i < src->size; i++) {
        if (src->data[i] == CR) {
            break;
        }

        sub_02023EB0(dst, src->data[i]);
    }
}

// Strbuf_CopyChars
void sub_02023D28(Strbuf *dst, const Charcode *src)
{
    Strbuf_Check(dst);

    dst->size = 0;

    while (*src != EOS) {
        if (dst->size >= (dst->maxsize - 1)) {
            GF_ASSERT(0);
            break;
        }

        dst->data[dst->size++] = *src++;
    }

    dst->data[dst->size] = EOS;
}

// Strbuf_CopyNumChars
void sub_02023D8C(Strbuf *dst, const Charcode *src, u32 num)
{
    Strbuf_Check(dst);

    if (num <= dst->maxsize) {
        memcpy(dst->data, src, num * sizeof(Charcode));

        u32 i;
        for (i = 0; i < num; i++) {
            if (dst->data[i] == EOS) {
                break;
            }
        }

        dst->size = i;
        if (i == num) {
            dst->data[num - 1] = EOS;
        }

        return;
    }

    GF_ASSERT(0);
}

// Strbuf_ToChars
void sub_02023DF0(const Strbuf *src, Charcode *dst, u32 dstsize)
{
    Strbuf_Check(src);

    if ((src->size + 1) <= dstsize) {
        memcpy(dst, src->data, (src->size + 1) * sizeof(Charcode));
        return;
    }

    GF_ASSERT(0);
}

// Strbuf_GetData
const Charcode* sub_02023E2C(const Strbuf *src)
{
    Strbuf_Check(src);

    return src->data;
}

// Strbuf_Concat
void sub_02023E4C(Strbuf *dst, const Strbuf *src)
{
    Strbuf_Check(dst);
    Strbuf_Check(src);

    if ((dst->size + src->size + 1) <= dst->maxsize) {
        memcpy(dst->data + dst->size, src->data, (src->size + 1) * sizeof(Charcode));
        dst->size += src->size;
        return;
    }

    GF_ASSERT(0);
}

// Strbuf_Append
void sub_02023EB0(Strbuf *dst, Charcode c)
{
    Strbuf_Check(dst);

    if ((dst->size + 1) < dst->maxsize) {
        dst->data[dst->size++] = c;
        dst->data[dst->size] = EOS;
        return;
    }

    GF_ASSERT(0);
}

#define COMPRESSED_LEADER       (0xF100)
#define COMPRESSED_MASK         (0x01FF)
#define COMPRESSED_EOS          (0x01FF) // 0xFFFF & 0x01FF

// Strbuf_IsTrainerName
BOOL sub_02023EF8(Strbuf *strbuf)
{
    return strbuf->size > 0 && strbuf->data[0] == COMPRESSED_LEADER;
}

// Strbuf_HandleTrainerName
void sub_02023F10(Strbuf *dst, Strbuf *src)
{
    if (sub_02023EF8(src)) {
        Charcode *dstC = &dst->data[dst->size];
        Charcode *srcC = &src->data[1];
        s32 bit = 0;
        s32 outsize = 0;
        Charcode cur = 0;

        while (TRUE) {
            cur = (*srcC >> bit) & COMPRESSED_MASK;
            bit += 9;

            if (bit >= 15) {
                srcC++;
                bit -= 15;

                if (bit) {
                    cur |= (*srcC << (9 - bit)) & COMPRESSED_MASK;
                }
            }

            if (cur == COMPRESSED_EOS) {
                break;
            }

            *dstC++ = cur;
            outsize++;
        }

        *dstC = EOS;
        dst->size += outsize;
    } else {
        sub_02023E4C(dst, src);
    }
}

// Strbuf_UpperChar
void sub_02023F8C(Strbuf *strbuf, int i)
{
    Strbuf_Check(strbuf);

    if (strbuf->size > i) {
        if (strbuf->data[i] >= EN_a && strbuf->data[i] <= EN_z) {
            strbuf->data[i] -= 26;
        }
    }
}
