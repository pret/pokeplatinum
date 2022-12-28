#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0202298C_decl.h"
#include "struct_decls/struct_02022BC0_decl.h"

#include "struct_defs/struct_02009CFC.h"

#include "unk_020068C8.h"
#include "unk_02006E3C.h"
#include "unk_02009714.h"
#include "unk_02017E74.h"
#include "unk_0202298C.h"


typedef struct UnkStruct_02009DC8_t {
    UnkStruct_02022BC0 * unk_00;
    int unk_04;
    void * unk_08;
} UnkStruct_02009DC8;

typedef struct UnkStruct_02009714_t {
    UnkStruct_0202298C * unk_00;
    UnkStruct_02009DC8 * unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
} UnkStruct_02009714;

typedef struct {
    int unk_00;
    char unk_04[64];
    int unk_44[2];
} UnkStruct_02009794;

typedef struct {
    int unk_00;
    int unk_04;
    BOOL unk_08;
    int unk_0C;
    int unk_10[2];
} UnkStruct_0200A2C0;

typedef struct UnkStruct_02009F38_t {
    void * unk_00;
    int unk_04;
    int unk_08;
    u8 unk_0C;
} UnkStruct_02009F38;

typedef struct {
    NNSG2dCharacterData * unk_00;
    int unk_04;
} UnkStruct_0200A144;

typedef struct {
    NNSG2dPaletteData * unk_00;
    int unk_04;
    int unk_08;
} UnkStruct_02009E34;

typedef struct {
    NNSG2dCellDataBank * unk_00;
} UnkStruct_02009E4C;

typedef struct {
    NNSG2dAnimBankData * unk_00;
} UnkStruct_02009E64;

typedef struct {
    NNSG2dMultiCellDataBank * unk_00;
} UnkStruct_02009E7C;

typedef struct {
    NNSG2dAnimBankData * unk_00;
} UnkStruct_02009E94;

static UnkStruct_02009DC8 * sub_0200A0A8(UnkStruct_02009714 * param0);
static void sub_0200A224(UnkStruct_02009714 * param0, UnkStruct_02009DC8 * param1, const char * param2, int param3, int param4, int param5, int param6, int param7);
static void sub_0200A250(UnkStruct_02009714 * param0, UnkStruct_02009DC8 * param1, int param2, int param3, BOOL param4, int param5, int param6, int param7, int param8, int param9, u32 param10);
static void sub_0200A288(UnkStruct_02009714 * param0, UnkStruct_02009DC8 * param1, UnkStruct_02006C24 * param2, int param3, BOOL param4, int param5, int param6, int param7, int param8, int param9, u32 param10);
static void * sub_0200A2DC(UnkStruct_02006C24 * param0, u32 param1, BOOL param2, u32 param3, u32 param4);
static void sub_0200A0D4(UnkStruct_02009DC8 * param0, int param1, int param2, int param3, int param4);
static UnkStruct_0200A144 * sub_0200A144(void * param0, int param1, int param2);
static UnkStruct_02009E34 * sub_0200A164(void * param0, int param1, int param2, int param3);
static UnkStruct_02009E4C * sub_0200A188(void * param0, int param1);
static UnkStruct_02009E64 * sub_0200A1A4(void * param0, int param1);
static UnkStruct_02009E7C * sub_0200A1C0(void * param0, int param1);
static UnkStruct_02009E94 * sub_0200A1DC(void * param0, int param1);
static void * sub_0200A20C(const UnkStruct_02009DC8 * param0);
static void sub_0200A1F8(UnkStruct_02009DC8 * param0);
static int sub_0200A2C0(const UnkStruct_0200A2C0 * param0);

UnkStruct_02009714 * sub_02009714 (int param0, int param1, int param2)
{
    UnkStruct_02009714 * v0;
    int v1;

    v0 = sub_02018144(param2, sizeof(UnkStruct_02009714));
    v0->unk_00 = sub_0202298C(param0, param2);
    v0->unk_04 = sub_02018144(param2, sizeof(UnkStruct_02009DC8) * param0);

    memset(v0->unk_04, 0, sizeof(UnkStruct_02009DC8) * param0);

    v0->unk_08 = param0;
    v0->unk_0C = 0;
    v0->unk_10 = param1;

    return v0;
}

void sub_02009754 (UnkStruct_02009714 * param0)
{
    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_00);
    GF_ASSERT(param0->unk_04);

    sub_02009D9C(param0);

    sub_020229D8(param0->unk_00);
    param0->unk_00 = NULL;

    sub_020181C4(param0->unk_04);
    param0->unk_04 = NULL;

    sub_020181C4(param0);
    param0 = NULL;
}

UnkStruct_02009DC8 * sub_02009794 (UnkStruct_02009714 * param0, const UnkStruct_02009F38 * param1, int param2, int param3)
{
    UnkStruct_02009DC8 * v0;
    UnkStruct_02009794 * v1;
    UnkStruct_0200A2C0 * v2;

    GF_ASSERT(param0);
    GF_ASSERT(param1);
    GF_ASSERT(param1->unk_04 > param2);
    GF_ASSERT(param0->unk_10 == param1->unk_08);

    v0 = sub_0200A0A8(param0);
    GF_ASSERT(v0);

    if (param1->unk_0C == 0) {
        v1 = (UnkStruct_02009794 *)param1->unk_00 + param2;
        GF_ASSERT(sub_02009D34(param0, v1->unk_00) == 1);
        sub_0200A224(param0, v0, v1->unk_04, v1->unk_00, v1->unk_44[0], v1->unk_44[1], param1->unk_08, param3);
    } else {
        v2 = (UnkStruct_0200A2C0 *)param1->unk_00 + param2;
        GF_ASSERT(sub_02009D34(param0, v2->unk_0C) == 1);
        sub_0200A250(param0, v0, v2->unk_00, v2->unk_04, v2->unk_08, v2->unk_0C, v2->unk_10[0], v2->unk_10[1], param1->unk_08, param3, 0);
    }

    param0->unk_0C++;

    return v0;
}

UnkStruct_02009DC8 * sub_0200985C (UnkStruct_02009714 * param0, int param1, int param2, BOOL param3, int param4, int param5, int param6)
{
    UnkStruct_02009DC8 * v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_10 == 0);

    v0 = sub_0200A0A8(param0);

    GF_ASSERT(v0);
    sub_0200A250(param0, v0, param1, param2, param3, param4, param5, 0, 0, param6, 0);

    param0->unk_0C++;

    return v0;
}

UnkStruct_02009DC8 * sub_020098B8 (UnkStruct_02009714 * param0, int param1, int param2, BOOL param3, int param4, int param5, int param6, int param7)
{
    UnkStruct_02009DC8 * v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_10 == 1);

    v0 = sub_0200A0A8(param0);

    GF_ASSERT(v0);
    sub_0200A250(param0, v0, param1, param2, param3, param4, param5, param6, 1, param7, 0);

    param0->unk_0C++;
    return v0;
}

UnkStruct_02009DC8 * sub_02009918 (UnkStruct_02009714 * param0, int param1, int param2, BOOL param3, int param4, int param5, int param6)
{
    UnkStruct_02009DC8 * v0;

    GF_ASSERT(param0);

    v0 = sub_0200A0A8(param0);

    GF_ASSERT(v0);
    sub_0200A250(param0, v0, param1, param2, param3, param4, 0, 0, param5, param6, 0);

    param0->unk_0C++;
    return v0;
}

void sub_02009968 (UnkStruct_02009714 * param0, UnkStruct_02009DC8 * param1, int param2, int param3, BOOL param4, int param5)
{
    int v0;
    int v1;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_10 == 0);
    GF_ASSERT(param1);
    GF_ASSERT(param1->unk_04 == 0);

    v1 = sub_02009E08(param1);
    v0 = sub_02009EBC(param1);

    sub_02009D68(param0, param1);
    sub_0200A250(param0, param1, param2, param3, param4, v1, v0, 0, 0, param5, 0);
}

void sub_020099D4 (UnkStruct_02009714 * param0, UnkStruct_02009DC8 * param1, int param2, int param3, BOOL param4, int param5)
{
    int v0;
    int v1;
    int v2;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_10 == 1);
    GF_ASSERT(param1);
    GF_ASSERT(param1->unk_04 == 1);

    v2 = sub_02009E08(param1);
    v0 = sub_02009EBC(param1);
    v1 = sub_02009EE8(param1);

    sub_02009D68(param0, param1);
    sub_0200A250(param0, param1, param2, param3, param4, v2, v0, v1, 1, param5, 0);
}

UnkStruct_02009DC8 * sub_02009A4C (UnkStruct_02009714 * param0, UnkStruct_02006C24 * param1, int param2, BOOL param3, int param4, int param5, int param6)
{
    UnkStruct_02009DC8 * v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_10 == 0);

    v0 = sub_0200A0A8(param0);
    GF_ASSERT(v0);

    sub_0200A288(param0, v0, param1, param2, param3, param4, param5, 0, 0, param6, 0);
    param0->unk_0C++;

    return v0;
}

UnkStruct_02009DC8 * sub_02009AA8 (UnkStruct_02009714 * param0, UnkStruct_02006C24 * param1, int param2, BOOL param3, int param4, int param5, int param6, int param7)
{
    UnkStruct_02009DC8 * v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_10 == 0);

    v0 = sub_0200A0A8(param0);
    GF_ASSERT(v0);

    sub_0200A288(param0, v0, param1, param2, param3, param4, param5, 0, 0, param6, param7);

    param0->unk_0C++;

    return v0;
}

UnkStruct_02009DC8 * sub_02009B04 (UnkStruct_02009714 * param0, UnkStruct_02006C24 * param1, int param2, BOOL param3, int param4, int param5, int param6, int param7)
{
    UnkStruct_02009DC8 * v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_10 == 1);

    v0 = sub_0200A0A8(param0);

    GF_ASSERT(v0);
    sub_0200A288(param0, v0, param1, param2, param3, param4, param5, param6, 1, param7, 0);

    param0->unk_0C++;
    return v0;
}

UnkStruct_02009DC8 * sub_02009B64 (UnkStruct_02009714 * param0, UnkStruct_02006C24 * param1, int param2, BOOL param3, int param4, int param5, int param6, int param7, int param8)
{
    UnkStruct_02009DC8 * v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_10 == 1);

    v0 = sub_0200A0A8(param0);

    GF_ASSERT(v0);
    sub_0200A288(param0, v0, param1, param2, param3, param4, param5, param6, 1, param7, param8);

    param0->unk_0C++;
    return v0;
}

UnkStruct_02009DC8 * sub_02009BC4 (UnkStruct_02009714 * param0, UnkStruct_02006C24 * param1, int param2, BOOL param3, int param4, int param5, int param6)
{
    UnkStruct_02009DC8 * v0;

    GF_ASSERT(param0);

    v0 = sub_0200A0A8(param0);

    GF_ASSERT(v0);
    sub_0200A288(param0, v0, param1, param2, param3, param4, 0, 0, param5, param6, 0);

    param0->unk_0C++;
    return v0;
}

void sub_02009C14 (UnkStruct_02009714 * param0, UnkStruct_02009DC8 * param1, UnkStruct_02006C24 * param2, int param3, BOOL param4, int param5)
{
    int v0;
    int v1;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_10 == 0);
    GF_ASSERT(param1);
    GF_ASSERT(param1->unk_04 == 0);

    v1 = sub_02009E08(param1);
    v0 = sub_02009EBC(param1);

    sub_02009D68(param0, param1);
    sub_0200A288(param0, param1, param2, param3, param4, v1, v0, 0, 0, param5, 0);
}

int sub_02009C80 (UnkStruct_02009714 * param0, const UnkStruct_02009F38 * param1, UnkStruct_02009CFC * param2, int param3)
{
    GF_ASSERT(param0);
    GF_ASSERT(param1);

    sub_02009CB4(param0, param1, 0, param1->unk_04, param2, param3);
    return param1->unk_04;
}

void sub_02009CB4 (UnkStruct_02009714 * param0, const UnkStruct_02009F38 * param1, int param2, int param3, UnkStruct_02009CFC * param4, int param5)
{
    int v0;
    UnkStruct_02009DC8 * v1;

    for (v0 = param2; v0 < param2 + param3; v0++) {
        v1 = sub_02009794(param0, param1, v0, param5);

        if (param4 != NULL) {
            if (param4->unk_04 > param4->unk_08) {
                param4->unk_00[param4->unk_08] = v1;
                param4->unk_08++;
            }
        }
    }
}

UnkStruct_02009CFC * sub_02009CFC (int param0, int param1)
{
    UnkStruct_02009CFC * v0;

    v0 = sub_02018144(param1, sizeof(UnkStruct_02009CFC));

    v0->unk_00 = sub_02018144(param1, sizeof(UnkStruct_02009DC8 *) * param0);
    v0->unk_04 = param0;
    v0->unk_08 = 0;

    return v0;
}

void sub_02009D20 (UnkStruct_02009CFC * param0)
{
    sub_020181C4(param0->unk_00);
    sub_020181C4(param0);
    param0 = NULL;
}

BOOL sub_02009D34 (const UnkStruct_02009714 * param0, int param1)
{
    GF_ASSERT(param0);
    return sub_020229F8(param0->unk_00, param1);
}

void sub_02009D4C (UnkStruct_02009DC8 * param0)
{
    GF_ASSERT(param0);

    sub_0200A1F8(param0);
    sub_02022B64(param0->unk_00, NULL);
}

void sub_02009D68 (UnkStruct_02009714 * param0, UnkStruct_02009DC8 * param1)
{
    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_04);

    sub_0200A1F8(param1);
    sub_02022AB0(param0->unk_00, param1->unk_00);

    param1->unk_00 = NULL;
    param0->unk_0C--;
}

void sub_02009D9C (UnkStruct_02009714 * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_08; v0++) {
        if (param0->unk_04[v0].unk_00 != NULL) {
            sub_02009D68(param0, param0->unk_04 + v0);
        }
    }
}

UnkStruct_02009DC8 * sub_02009DC8 (const UnkStruct_02009714 * param0, int param1)
{
    int v0;
    int v1;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->unk_08; v0++) {
        if (param0->unk_04[v0].unk_00) {
            v1 = sub_02022B80(param0->unk_04[v0].unk_00);

            if (v1 == param1) {
                return param0->unk_04 + v0;
            }
        }
    }

    return NULL;
}

int sub_02009E08 (const UnkStruct_02009DC8 * param0)
{
    GF_ASSERT(param0);
    return sub_02022B80(param0->unk_00);
}

NNSG2dCharacterData * sub_02009E1C (const UnkStruct_02009DC8 * param0)
{
    UnkStruct_0200A144 * v0;

    GF_ASSERT(param0->unk_04 == 0);

    v0 = (UnkStruct_0200A144 *)sub_0200A20C(param0);
    return v0->unk_00;
}

NNSG2dPaletteData * sub_02009E34 (const UnkStruct_02009DC8 * param0)
{
    UnkStruct_02009E34 * v0;

    GF_ASSERT(param0->unk_04 == 1);

    v0 = (UnkStruct_02009E34 *)sub_0200A20C(param0);
    return v0->unk_00;
}

NNSG2dCellDataBank * sub_02009E4C (const UnkStruct_02009DC8 * param0)
{
    UnkStruct_02009E4C * v0;

    GF_ASSERT(param0->unk_04 == 2);

    v0 = (UnkStruct_02009E4C *)sub_0200A20C(param0);
    return v0->unk_00;
}

NNSG2dCellAnimBankData * sub_02009E64 (const UnkStruct_02009DC8 * param0)
{
    UnkStruct_02009E64 * v0;

    GF_ASSERT(param0->unk_04 == 3);

    v0 = (UnkStruct_02009E64 *)sub_0200A20C(param0);
    return v0->unk_00;
}

NNSG2dMultiCellDataBank * sub_02009E7C (const UnkStruct_02009DC8 * param0)
{
    UnkStruct_02009E7C * v0;

    GF_ASSERT(param0->unk_04 == 4);

    v0 = (UnkStruct_02009E7C *)sub_0200A20C(param0);
    return v0->unk_00;
}

NNSG2dMultiCellAnimBankData * sub_02009E94 (const UnkStruct_02009DC8 * param0)
{
    UnkStruct_02009E94 * v0;

    GF_ASSERT(param0->unk_04 == 5);

    v0 = (UnkStruct_02009E94 *)sub_0200A20C(param0);
    return v0->unk_00;
}

int sub_02009EAC (const UnkStruct_02009DC8 * param0)
{
    GF_ASSERT(param0);
    return param0->unk_04;
}

int sub_02009EBC (const UnkStruct_02009DC8 * param0)
{
    GF_ASSERT(param0);

    if (param0->unk_04 == 0) {
        UnkStruct_0200A144 * v0;

        v0 = sub_0200A20C(param0);
        return v0->unk_04;
    }

    if (param0->unk_04 == 1) {
        UnkStruct_02009E34 * v1;

        v1 = sub_0200A20C(param0);
        return v1->unk_04;
    }

    return 0;
}

int sub_02009EE8 (const UnkStruct_02009DC8 * param0)
{
    GF_ASSERT(param0);

    if (param0->unk_04 == 1) {
        UnkStruct_02009E34 * v0;

        v0 = sub_0200A20C(param0);
        return v0->unk_08;
    }

    return 0;
}

void sub_02009F08 (UnkStruct_02009DC8 * param0, int param1)
{
    GF_ASSERT(param0);

    if (param0->unk_04 == 0) {
        UnkStruct_0200A144 * v0;

        v0 = sub_0200A20C(param0);
        v0->unk_04 = param1;
    }

    if (param0->unk_04 == 1) {
        UnkStruct_02009E34 * v1;

        v1 = sub_0200A20C(param0);
        v1->unk_04 = param1;
    }
}

int sub_02009F34 (void)
{
    return sizeof(UnkStruct_02009F38);
}

UnkStruct_02009F38 * sub_02009F38 (UnkStruct_02009F38 * param0, int param1)
{
    return param0 + param1;
}

void sub_02009F40 (const void * param0, UnkStruct_02009F38 * param1, int param2)
{
    int v0;
    const int * v1;

    GF_ASSERT(param1);

    v1 = param0;

    param1->unk_08 = v1[0];
    param1->unk_0C = 1;
    param1->unk_04 = sub_0200A2C0((const UnkStruct_0200A2C0 *)(v1 + 1));

    if (param1->unk_04 > 0) {
        param1->unk_00 = sub_02018144(param2, sizeof(UnkStruct_0200A2C0) * param1->unk_04);
    } else {
        param1->unk_00 = NULL;
    }

    if (param1->unk_00) {
        memcpy(param1->unk_00, v1 + 1, sizeof(UnkStruct_0200A2C0) * param1->unk_04);
    }
}

void sub_02009F8C (UnkStruct_02009F38 * param0)
{
    if (param0->unk_00) {
        sub_020181C4(param0->unk_00);
    }

    param0->unk_00 = NULL;
    param0->unk_04 = 0;
}

int sub_02009FA4 (const UnkStruct_02009F38 * param0)
{
    GF_ASSERT(param0);
    return param0->unk_04;
}

int sub_02009FB4 (const UnkStruct_02009F38 * param0, int param1)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_04 > param1);

    if (param0->unk_0C == 0) {
        UnkStruct_02009794 * v1 = param0->unk_00;
        v0 = v1[param1].unk_00;
    } else {
        UnkStruct_0200A2C0 * v2 = param0->unk_00;
        v0 = v2[param1].unk_0C;
    }

    return v0;
}

int sub_02009FE8 (const UnkStruct_02009F38 * param0, int param1)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_04 > param1);

    if (param0->unk_0C == 1) {
        UnkStruct_0200A2C0 * v1 = param0->unk_00;

        v0 = v1[param1].unk_04;
    }

    return v0;
}

int sub_0200A014 (const UnkStruct_02009F38 * param0, int param1)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_04 > param1);

    if (param0->unk_0C == 1) {
        UnkStruct_0200A2C0 * v1 = param0->unk_00;

        v0 = v1[param1].unk_08;
    }

    return v0;
}

int sub_0200A040 (const UnkStruct_02009F38 * param0, int param1)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_04 > param1);

    if (param0->unk_0C == 0) {
        UnkStruct_02009794 * v1 = param0->unk_00;
        v0 = v1[param1].unk_44[0];
    } else {
        UnkStruct_0200A2C0 * v2 = param0->unk_00;
        v0 = v2[param1].unk_10[0];
    }

    return v0;
}

int sub_0200A074 (const UnkStruct_02009F38 * param0, int param1)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_04 > param1);

    if (param0->unk_0C == 0) {
        UnkStruct_02009794 * v1 = param0->unk_00;
        v0 = v1[param1].unk_44[1];
    } else {
        UnkStruct_0200A2C0 * v2 = param0->unk_00;
        v0 = v2[param1].unk_10[1];
    }

    return v0;
}

static UnkStruct_02009DC8 * sub_0200A0A8 (UnkStruct_02009714 * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_08; v0++) {
        if (param0->unk_04[v0].unk_00 == NULL) {
            return param0->unk_04 + v0;
        }
    }

    return NULL;
}

static void sub_0200A0D4 (UnkStruct_02009DC8 * param0, int param1, int param2, int param3, int param4)
{
    void * v0;

    v0 = sub_02022B54(param0->unk_00);

    switch (param1) {
    case 0:
        param0->unk_08 = sub_0200A144(v0, param2, param4);
        break;
    case 1:
        param0->unk_08 = sub_0200A164(v0, param2, param3, param4);
        break;
    case 2:
        param0->unk_08 = sub_0200A188(v0, param4);
        break;
    case 3:
        param0->unk_08 = sub_0200A1A4(v0, param4);
        break;
    case 4:
        param0->unk_08 = sub_0200A1C0(v0, param4);
        break;
    case 5:
        param0->unk_08 = sub_0200A1DC(v0, param4);
        break;
    }
}

static UnkStruct_0200A144 * sub_0200A144 (void * param0, int param1, int param2)
{
    UnkStruct_0200A144 * v0;

    v0 = sub_02018144(param2, sizeof(UnkStruct_0200A144));
    NNS_G2dGetUnpackedCharacterData(param0, &v0->unk_00);
    v0->unk_04 = param1;

    return v0;
}

static UnkStruct_02009E34 * sub_0200A164 (void * param0, int param1, int param2, int param3)
{
    UnkStruct_02009E34 * v0;

    v0 = sub_02018144(param3, sizeof(UnkStruct_02009E34));
    NNS_G2dGetUnpackedPaletteData(param0, &v0->unk_00);

    v0->unk_04 = param1;
    v0->unk_08 = param2;

    return v0;
}

static UnkStruct_02009E4C * sub_0200A188 (void * param0, int param1)
{
    UnkStruct_02009E4C * v0;

    v0 = sub_02018144(param1, sizeof(UnkStruct_02009E4C));
    NNS_G2dGetUnpackedCellBank(param0, &v0->unk_00);

    return v0;
}

static UnkStruct_02009E64 * sub_0200A1A4 (void * param0, int param1)
{
    UnkStruct_02009E64 * v0;

    v0 = sub_02018144(param1, sizeof(UnkStruct_02009E64));
    NNS_G2dGetUnpackedAnimBank(param0, &v0->unk_00);

    return v0;
}

static UnkStruct_02009E7C * sub_0200A1C0 (void * param0, int param1)
{
    UnkStruct_02009E7C * v0;

    v0 = sub_02018144(param1, sizeof(UnkStruct_02009E7C));
    NNS_G2dGetUnpackedMultiCellBank(param0, &v0->unk_00);

    return v0;
}

static UnkStruct_02009E94 * sub_0200A1DC (void * param0, int param1)
{
    UnkStruct_02009E94 * v0;

    v0 = sub_02018144(param1, sizeof(UnkStruct_02009E94));
    NNS_G2dGetUnpackedMCAnimBank(param0, &v0->unk_00);

    return v0;
}

static void sub_0200A1F8 (UnkStruct_02009DC8 * param0)
{
    if (param0->unk_08) {
        sub_020181C4(param0->unk_08);
    }

    param0->unk_08 = NULL;
}

static void * sub_0200A20C (const UnkStruct_02009DC8 * param0)
{
    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_08);

    return param0->unk_08;
}

static void sub_0200A224 (UnkStruct_02009714 * param0, UnkStruct_02009DC8 * param1, const char * param2, int param3, int param4, int param5, int param6, int param7)
{
    param1->unk_00 = sub_02022A58(param0->unk_00, param2, param3, param7);
    param1->unk_04 = param6;

    sub_0200A0D4(param1, param6, param4, param5, param7);
}

static void sub_0200A250 (UnkStruct_02009714 * param0, UnkStruct_02009DC8 * param1, int param2, int param3, BOOL param4, int param5, int param6, int param7, int param8, int param9, u32 param10)
{
    void * v0;

    v0 = sub_02006FE8(param2, param3, param4, param9, param10);

    param1->unk_00 = sub_02022A1C(param0->unk_00, v0, param5);
    param1->unk_04 = param8;

    sub_0200A0D4(param1, param8, param6, param7, param9);
}

static void sub_0200A288 (UnkStruct_02009714 * param0, UnkStruct_02009DC8 * param1, UnkStruct_02006C24 * param2, int param3, BOOL param4, int param5, int param6, int param7, int param8, int param9, u32 param10)
{
    void * v0;

    v0 = sub_0200A2DC(param2, param3, param4, param9, param10);

    param1->unk_00 = sub_02022A1C(param0->unk_00, v0, param5);
    param1->unk_04 = param8;

    sub_0200A0D4(param1, param8, param6, param7, param9);
}

static int sub_0200A2C0 (const UnkStruct_0200A2C0 * param0)
{
    int v0;

    v0 = 0;

    while (param0[v0].unk_00 != 0xfffffffe) {
        v0++;
    }

    return v0;
}

static void * sub_0200A2DC (UnkStruct_02006C24 * param0, u32 param1, BOOL param2, u32 param3, u32 param4)
{
    void * v0;

    v0 = sub_02006CB8(param0, param1, param3);

    if (v0 != NULL) {
        if (param2) {
            void * v1;

            if (param4 == 0) {
                v1 = sub_02018144(param3, MI_GetUncompressedSize(v0));
            } else {
                v1 = sub_02018184(param3, MI_GetUncompressedSize(v0));
            }

            if (v1) {
                MI_UncompressLZ8(v0, v1);
                sub_020181C4(v0);
            }

            v0 = v1;
        }
    }

    return v0;
}
