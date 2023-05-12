#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02023790_decl.h"

#include "heap.h"
#include "unk_02023790.h"

struct Strbuf_t {
    u16 maxsize;
    u16 size;
    u32 magic;
    u16 data[1];
};

#define SIZEOF_STRBUF_HEADER    (sizeof(Strbuf) - sizeof(u16))
#define STRBUF_MAGIC            (0xB6F8D2EC)

static inline void Strbuf_Check(const Strbuf *strbuf)
{
    GF_ASSERT(strbuf != NULL);
    GF_ASSERT(strbuf->magic == STRBUF_MAGIC);
}

Strbuf* sub_02023790(u32 size, u32 heapID)  // Strbuf_Init
{
    Strbuf *strbuf;

    strbuf = Heap_AllocFromHeap(heapID, SIZEOF_STRBUF_HEADER + sizeof(u16) * size);

    if (strbuf) {
        strbuf->magic = STRBUF_MAGIC;
        strbuf->maxsize = size;
        strbuf->size = 0;
        strbuf->data[0] = 0xffff;
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
    strbuf->data[0] = 0xffff;
}

void sub_02023810(Strbuf *dst, const Strbuf *src)    // Strbuf_Copy
{
    Strbuf_Check(dst);
    Strbuf_Check(src);

    if (dst->maxsize > src->size) {
        memcpy(dst->data, src->data, (src->size + 1) * sizeof(u16));
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

// Strbuf_From32
void sub_020238A0(Strbuf *dst, int num, u32 maxDigits, int paddingMode, int charWidth)
{
    static const u32 v0[] = {
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
    int v1;
    static const u16 v2[] = {
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
    static const u16 v3[] = {
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
    
    Strbuf_Check(dst);

    v1 = (num < 0);

    if (dst->maxsize > (maxDigits + v1)) {
        u32 v4, v5, v6;
        const u16 * v7 = (charWidth == 0) ? v2 : v3;

        sub_020237E8(dst);

        if (v1) {
            num *= -1;
            dst->data[dst->size++] = (charWidth == 0) ? 0xf1 : 0x1be;
        }

        for (v6 = v0[maxDigits - 1]; v6 > 0; v6 /= 10) {
            v5 = (u16)(num / v6);
            v4 = (u32)(num - (v6 * v5));

            if (paddingMode == 2) {
                dst->data[dst->size++] = (v5 < 10) ? v7[v5] : 0xe2;
            } else if ((v5 != 0) || (v6 == 1)) {
                paddingMode = 2;
                dst->data[dst->size++] = (v5 < 10) ? v7[v5] : 0xe2;
            } else if (paddingMode == 1) {
                dst->data[dst->size++] = (charWidth == 0) ? 0x1 : 0x1e2;
            }

            num = v4;
        }

        dst->data[dst->size] = 0xffff;
        return;
    }

    GF_ASSERT(0);
}

// Strbuf_From64
void sub_020239D4(Strbuf *dst, u64 num, u32 maxDigits, int paddingMode, int charWidth)
{
    static const u64 v0[] = {
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
    int v1;
    static const u16 v2[] = {
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
    static const u16 v3[] = {
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
    
    Strbuf_Check(dst);

    v1 = (num < 0);

    if (dst->maxsize > (maxDigits + v1)) {
        u64 v4, v5, v6;
        const u16 * v7 = (charWidth == 0) ? v2 : v3;

        sub_020237E8(dst);

        if (v1) {
            num *= -1;
            dst->data[dst->size++] = (charWidth == 0) ? 0xf1 : 0x1be;
        }

        for (v6 = v0[maxDigits - 1]; v6 > 0; v6 /= 10) {
            v5 = (u64)(num / v6);
            v4 = (u64)(num - (v6 * v5));

            if (paddingMode == 2) {
                dst->data[dst->size++] = (v5 < 10) ? v7[v5] : 0xe2;
            } else if ((v5 != 0) || (v6 == 1)) {
                paddingMode = 2;
                dst->data[dst->size++] = (v5 < 10) ? v7[v5] : 0xe2;
            } else if (paddingMode == 1) {
                dst->data[dst->size++] = (charWidth == 0) ? 0x1 : 0x1de;
            }

            num = v4;
        }

        dst->data[dst->size] = 0xffff;
        return;
    }

    GF_ASSERT(0);
}

// Strbuf_ToInt
u64 sub_02023B38(const Strbuf *src, BOOL *success)
{
    u64 v0 = 0, v1 = 0, v2 = 1;
    int v3;
    u16 v4;
    u16 v5 = 0xa2;
    u16 v6 = 0x121;

    if (src->size > 18) {
        return 0;
    }

    for (v3 = (src->size - 1); v3 >= 0; v3--) {
        v4 = src->data[v3];
        v0 = v4 - v5;

        if (v0 >= 10) {
            v0 = v4 - v6;

            if (v0 >= 10) {
                *success = 0;
                return v1;
            }
        }

        v0 = v0 * v2;
        v1 += v0;
        v2 *= 10;
    }

    *success = 1;
    return v1;
}

// Strbuf_Compare
int sub_02023BE0(const Strbuf *strbuf1, const Strbuf *strbuf2)
{
    Strbuf_Check(strbuf1);    
    Strbuf_Check(strbuf2);

    {
        int v0;

        for (v0 = 0; strbuf1->data[v0] == strbuf2->data[v0]; v0++) {
            if (strbuf1->data[v0] == 0xffff) {
                return 0;
            }
        }

        return 1;
    }
}

// Strbuf_Size
u32 sub_02023C3C(const Strbuf *strbuf)
{
    Strbuf_Check(strbuf);
    return strbuf->size;
}

// Strbuf_NumLines
u32 sub_02023C5C(const Strbuf *strbuf)
{
    Strbuf_Check(strbuf);

    {
        int v0;
        u32 v1;

        for (v0 = 0, v1 = 1; v0 < strbuf->size; v0++) {
            if (strbuf->data[v0] == 0xe000) {
                v1++;
            }
        }

        return v1;
    }
}

// Strbuf_CopyLineNum
void sub_02023C9C(Strbuf *dst, const Strbuf *src, u32 linenum)
{
    Strbuf_Check(src);
    Strbuf_Check(dst);

    {
        int v0 = 0;

        if (linenum) {
            for (v0 = 0; v0 < src->size; v0++) {
                if (src->data[v0] == 0xe000) {
                    if (--linenum == 0) {
                        v0++;
                        break;
                    }
                }
            }
        }

        sub_020237E8(dst);

        for ( ; v0 < src->size; v0++) {
            if (src->data[v0] == 0xe000) {
                break;
            }

            sub_02023EB0(dst, src->data[v0]);
        }
    }
}

// Strbuf_CopyChars
void sub_02023D28(Strbuf *dst, const u16 *src)
{
    Strbuf_Check(dst);

    dst->size = 0;

    while (*src != 0xffff) {
        if (dst->size >= (dst->maxsize - 1)) {
            GF_ASSERT(0);
            break;
        }

        dst->data[dst->size++] = *src++;
    }

    dst->data[dst->size] = 0xffff;
}

// Strbuf_CopyNumChars
void sub_02023D8C(Strbuf *dst, const u16 *src, u32 num)
{
    Strbuf_Check(dst);

    if (num <= dst->maxsize) {
        u32 v0;

        memcpy(dst->data, src, num * sizeof(u16));

        for (v0 = 0; v0 < num; v0++) {
            if (dst->data[v0] == 0xffff) {
                break;
            }
        }

        dst->size = v0;

        if (v0 == num) {
            dst->data[num - 1] = 0xffff;
        }

        return;
    }

    GF_ASSERT(0);
}

// Strbuf_ToChars
void sub_02023DF0(const Strbuf *src, u16 *dst, u32 dstsize)
{
    Strbuf_Check(src);

    if ((src->size + 1) <= dstsize) {
        memcpy(dst, src->data, (src->size + 1) * sizeof(u16));
        return;
    }

    GF_ASSERT(0);
}

// Strbuf_GetData
const u16* sub_02023E2C(const Strbuf *src)
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
        memcpy(&(dst->data[dst->size]), src->data, (src->size + 1) * sizeof(u16));
        dst->size += src->size;
        return;
    }

    GF_ASSERT(0);
}

// Strbuf_Append
void sub_02023EB0(Strbuf *dst, u16 c)
{
    Strbuf_Check(dst);

    if ((dst->size + 1) < dst->maxsize) {
        dst->data[dst->size++] = c;
        dst->data[dst->size] = 0xffff;
        return;
    }

    GF_ASSERT(0);
}

// Strbuf_IsCompressed
BOOL sub_02023EF8(Strbuf *strbuf)
{
    return (strbuf->size > 0) && (strbuf->data[0] == 0xF100); // COMPRESSED_LEADER
}

// Strbuf_ConcatCompressed
void sub_02023F10(Strbuf *strbuf1, Strbuf *strbuf2)
{
    if (sub_02023EF8(strbuf2)) {
        u32 v0;
        u16 * v1 = &strbuf1->data[strbuf1->size];
        u16 * v2 = &strbuf2->data[1];
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

        *v1 = 0xffff;
        strbuf1->size += v4;
    } else {
        sub_02023E4C(strbuf1, strbuf2);
    }
}

// Strbuf_Capitalize
void sub_02023F8C(Strbuf *strbuf, int i)
{
    Strbuf_Check(strbuf);

    if (strbuf->size > i) {
        u16 v0 = strbuf->data[i];

        if ((v0 >= 0x145) && (v0 <= 0x15e)) {
            strbuf->data[i] -= 0x145 - 0x12b;
        }
    }
}
