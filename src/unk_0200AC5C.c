#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02023790_decl.h"

#include "narc.h"
#include "unk_0200AC5C.h"
#include "heap.h"
#include "strbuf.h"

typedef struct {
    u32 unk_00;
    u32 unk_04;
} UnkStruct_0200AC6C;

typedef struct UnkStruct_0200AC5C_t {
    u16 unk_00;
    u16 unk_02;
    UnkStruct_0200AC6C unk_04[];
} UnkStruct_0200AC5C;

typedef struct UnkStruct_0200B144_t {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
    union {
        UnkStruct_0200AC5C * unk_08_val1;
        NARC * unk_08_val2;
    };
} UnkStruct_0200B144;

static void sub_0200AD98(u16 * param0, const u16 * param1, const UnkStruct_0200AC6C * param2);

UnkStruct_0200AC5C * sub_0200AC5C (u32 param0, u32 param1, u32 param2)
{
    return NARC_AllocAndReadWholeMemberByIndexPair(param0, param1, param2);
}

void sub_0200AC64 (UnkStruct_0200AC5C * param0)
{
    Heap_FreeToHeap(param0);
}

static inline int inline_0200ACF0 (u32 param0)
{
    return sizeof(UnkStruct_0200AC5C) + sizeof(UnkStruct_0200AC6C) * param0;
}

static inline void inline_0200AC6C (UnkStruct_0200AC6C * param0, u32 param1, u32 param2)
{
    param2 = (param2 * 765 * (param1 + 1)) & 0xffff;
    param2 |= (param2 << 16);

    param0->unk_00 ^= param2;
    param0->unk_04 ^= param2;
}

static inline void inline_0200AC6C_1 (u16 * param0, u32 param1, u32 param2, u16 param3)
{
    param3 = (param2 + 1) * 596947;

    while (param1--) {
        *param0 ^= param3;
        param0++;
        param3 += 18749;
    }
}

void sub_0200AC6C (const UnkStruct_0200AC5C * param0, u32 param1, u16 * param2)
{
    if (param1 < param0->unk_00) {
        UnkStruct_0200AC6C v0;
        const u16 * v1;

        v0 = param0->unk_04[param1];
        inline_0200AC6C(&v0, param1, param0->unk_02);
        v1 = (u16 *)(((u8 *)param0) + v0.unk_00);
        sub_0200AD98(param2, v1, &v0);
        inline_0200AC6C_1(param2, v0.unk_04, param1, param0->unk_02);
    } else {
        GF_ASSERT(0);
    }
}

void sub_0200ACF0 (u32 param0, u32 param1, u32 param2, u32 param3, u16 * param4)
{
    NARC * v0 = NARC_ctor(param0, param3);

    if (v0) {
        UnkStruct_0200AC5C v1;
        UnkStruct_0200AC6C v2;
        u16 * v3;
        u32 v4;

        NARC_ReadFromMember(v0, param1, 0, sizeof(UnkStruct_0200AC5C), &v1);
        NARC_ReadFromMember(v0, param1, inline_0200ACF0(param2), sizeof(UnkStruct_0200AC6C), &v2);

        inline_0200AC6C(&v2, param2, v1.unk_02);

        v4 = v2.unk_04 * sizeof(u16);
        NARC_ReadFromMember(v0, param1, v2.unk_00, v4, param4);

        inline_0200AC6C_1(param4, v2.unk_04, param2, v1.unk_02);
        NARC_dtor(v0);
    }
}

static void sub_0200AD98 (u16 * param0, const u16 * param1, const UnkStruct_0200AC6C * param2)
{
    MI_CpuCopy16(param1, param0, param2->unk_04 * sizeof(u16));
}

void sub_0200ADAC (const UnkStruct_0200AC5C * param0, u32 param1, Strbuf *param2)
{
    if (param1 < param0->unk_00) {
        UnkStruct_0200AC6C v0;
        u16 * v1;
        u32 v2;

        v0 = param0->unk_04[param1];
        inline_0200AC6C(&v0, param1, param0->unk_02);

        v2 = v0.unk_04 * sizeof(u16);
        v1 = Heap_AllocFromHeapAtEnd(0, v2);

        if (v1) {
            MI_CpuCopy16((((u8 *)param0) + v0.unk_00), v1, v2);

            inline_0200AC6C_1(v1, v0.unk_04, param1, param0->unk_02);
            Strbuf_CopyNumChars(param2, v1, v0.unk_04);
            Heap_FreeToHeap(v1);
        }
    } else {
        GF_ASSERT(0);
        Strbuf_Clear(param2);
    }
}

Strbuf* sub_0200AE5C (const UnkStruct_0200AC5C * param0, u32 param1, u32 param2)
{
    if (param1 < param0->unk_00) {
        UnkStruct_0200AC6C v0;
        u16 * v1;
        u32 v2;

        v0 = param0->unk_04[param1];
        inline_0200AC6C(&v0, param1, param0->unk_02);
        v2 = v0.unk_04 * sizeof(u16);
        v1 = Heap_AllocFromHeapAtEnd(param2, v2);

        if (v1) {
            Strbuf* v3;

            MI_CpuCopy16((((u8 *)param0) + v0.unk_00), v1, v2);
            inline_0200AC6C_1(v1, v0.unk_04, param1, param0->unk_02);

            v3 = Strbuf_Init(v0.unk_04, param2);

            if (v3) {
                Strbuf_CopyNumChars(v3, v1, v0.unk_04);
            }

            Heap_FreeToHeap(v1);
            return v3;
        }

        return NULL;
    } else {
        GF_ASSERT(0);
        return Strbuf_Init(4, param2);
    }
}

void sub_0200AF20 (u32 param0, u32 param1, u32 param2, u32 param3, Strbuf *param4)
{
    NARC * v0;

    v0 = NARC_ctor(param0, param3);

    if (v0) {
        sub_0200AF48(v0, param1, param2, param3, param4);
        NARC_dtor(v0);
    }
}

void sub_0200AF48 (NARC * param0, u32 param1, u32 param2, u32 param3, Strbuf *param4)
{
    UnkStruct_0200AC5C v0;
    UnkStruct_0200AC6C v1;
    u16 * v2;
    u32 v3;

    NARC_ReadFromMember(param0, param1, 0, sizeof(UnkStruct_0200AC5C), &v0);

    if (param2 < v0.unk_00) {
        NARC_ReadFromMember(param0, param1, inline_0200ACF0(param2), sizeof(UnkStruct_0200AC6C), &v1);
        inline_0200AC6C(&v1, param2, v0.unk_02);

        v3 = v1.unk_04 * sizeof(u16);
        v2 = Heap_AllocFromHeapAtEnd(param3, v3);

        if (v2) {
            NARC_ReadFromMember(param0, param1, v1.unk_00, v3, v2);
            inline_0200AC6C_1(v2, v1.unk_04, param2, v0.unk_02);
            Strbuf_CopyNumChars(param4, v2, v1.unk_04);
            Heap_FreeToHeap(v2);
        }
    } else {
        GF_ASSERT(0);
        Strbuf_Clear(param4);
    }
}

Strbuf* sub_0200B010 (u32 param0, u32 param1, u32 param2, u32 param3)
{
    NARC * v0;
    Strbuf* v1;

    v0 = NARC_ctor(param0, param3);

    if (v0) {
        v1 = sub_0200B044(v0, param1, param2, param3);
        NARC_dtor(v0);
    } else {
        v1 = Strbuf_Init(4, param3);
    }

    return v1;
}

Strbuf* sub_0200B044 (NARC * param0, u32 param1, u32 param2, u32 param3)
{
    UnkStruct_0200AC5C v0;

    NARC_ReadFromMember(param0, param1, 0, sizeof(UnkStruct_0200AC5C), &v0);

    if (param2 < v0.unk_00) {
        UnkStruct_0200AC6C v1;
        Strbuf* v2;

        NARC_ReadFromMember(param0, param1, inline_0200ACF0(param2), sizeof(UnkStruct_0200AC6C), &v1);
        inline_0200AC6C(&v1, param2, v0.unk_02);

        v2 = Strbuf_Init(v1.unk_04, param3);

        if (v2) {
            u16 * v3;
            u32 v4;

            v4 = v1.unk_04 * sizeof(u16);
            v3 = Heap_AllocFromHeapAtEnd(param3, v4);

            if (v3) {
                NARC_ReadFromMember(param0, param1, v1.unk_00, v4, v3);
                inline_0200AC6C_1(v3, v1.unk_04, param2, v0.unk_02);
                Strbuf_CopyNumChars(v2, v3, v1.unk_04);
                Heap_FreeToHeap(v3);
            }
        }

        return v2;
    } else {
        GF_ASSERT(0);
        return Strbuf_Init(4, param3);
    }
}

u32 sub_0200B120 (const UnkStruct_0200AC5C * param0)
{
    return param0->unk_00;
}

u32 sub_0200B124 (u32 param0, u32 param1)
{
    UnkStruct_0200AC5C v0;

    NARC_ReadFromMemberByIndexPair(&v0, param0, param1, 0, sizeof(UnkStruct_0200AC5C));
    return v0.unk_00;
}

UnkStruct_0200B144 * sub_0200B144 (int param0, u32 param1, u32 param2, u32 param3)
{
    UnkStruct_0200B144 * v0 = Heap_AllocFromHeapAtEnd(param3, sizeof(UnkStruct_0200B144));

    if (v0) {
        if (param0 == 0) {
            v0->unk_08_val1 = sub_0200AC5C(param1, param2, param3);

            if (v0->unk_08_val1 == NULL) {
                Heap_FreeToHeap(v0);
                return NULL;
            }
        } else {
            v0->unk_08_val2 = NARC_ctor(param1, param3);
        }

        v0->unk_00 = param0;
        v0->unk_04 = param1;
        v0->unk_06 = param2;
        v0->unk_02 = param3;
    }

    return v0;
}

void sub_0200B190 (UnkStruct_0200B144 * param0)
{
    if (param0) {
        switch (param0->unk_00) {
        case 0:
            sub_0200AC64(param0->unk_08_val1);
            break;
        case 1:
            NARC_dtor(param0->unk_08_val2);
            break;
        }

        Heap_FreeToHeap(param0);
    }
}

void sub_0200B1B8 (const UnkStruct_0200B144 * param0, u32 param1, Strbuf *param2)
{
    switch (param0->unk_00) {
    case 0:
        sub_0200ADAC(param0->unk_08_val1, param1, param2);
        break;
    case 1:
        sub_0200AF48(param0->unk_08_val2, param0->unk_06, param1, param0->unk_02, param2);
        break;
    }
}

Strbuf* sub_0200B1EC (const UnkStruct_0200B144 * param0, u32 param1)
{
    switch (param0->unk_00) {
    case 0:
        return sub_0200AE5C(param0->unk_08_val1, param1, param0->unk_02);
    case 1:
        return sub_0200B044(param0->unk_08_val2, param0->unk_06, param1, param0->unk_02);
    }

    return NULL;
}

u32 sub_0200B218 (const UnkStruct_0200B144 * param0)
{
    switch (param0->unk_00) {
    case 0:
        return sub_0200B120(param0->unk_08_val1);
    case 1:
        return sub_0200B124(param0->unk_04, param0->unk_06);
    }

    return 0;
}

void sub_0200B240 (const UnkStruct_0200B144 * param0, u32 param1, u16 * param2)
{
    switch (param0->unk_00) {
    case 0:
        sub_0200AC6C(param0->unk_08_val1, param1, param2);
        break;
    case 1:
        sub_0200ACF0(param0->unk_04, param0->unk_06, param1, param0->unk_02, param2);
        break;
    }
}

void sub_0200B274 (u32 param0, u32 param1, u16 * param2)
{
    UnkStruct_0200B144 * v0 = sub_0200B144(1, 26, 412, param1);

    sub_0200B240(v0, 0 + param0, param2);
    sub_0200B190(v0);
}
