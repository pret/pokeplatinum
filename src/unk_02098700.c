#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"

#include "filesystem.h"
#include "unk_02006E3C.h"
#include "unk_02017E74.h"
#include "unk_02098700.h"
#include "unk_02098988.h"



typedef struct UnkStruct_02098700_t {
    int * unk_00;
    int * unk_04;
    short * unk_08;
    short * unk_0C;
    short * unk_10;
    short * unk_14;
} UnkStruct_02098700;

static int * sub_020988C8(NARC * param0, int param1);
static int * sub_020988D8(NARC * param0, int param1);
static void sub_020988E8(NARC * param0, short ** param1, short ** param2, int param3);
static void sub_02098910(NARC * param0, short ** param1, short ** param2, int param3);
static void sub_02098938(NARC * param0, short ** param1, short ** param2, int param3);
static void sub_02098960(NARC * param0, short ** param1, short ** param2, int param3);

UnkStruct_02098700 * sub_02098700 (int param0)
{
    UnkStruct_02098700 * v0;

    v0 = sub_02018144(param0, sizeof(UnkStruct_02098700));
    memset(v0, 0, sizeof(UnkStruct_02098700));

    return v0;
}

void sub_02098718 (UnkStruct_02098700 * param0)
{
    GF_ASSERT(param0);

    sub_020181C4(param0);
    param0 = NULL;
}

void sub_0209872C (UnkStruct_02098700 * param0, int param1, int param2)
{
    NARC * v0;
    u32 v1;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_00 == NULL);
    GF_ASSERT(param0->unk_04 == NULL);

    v1 = sub_020989B8();
    v0 = NARC_ctor(v1, param2);

    param0->unk_00 = sub_020988C8(v0, param2);
    param0->unk_04 = sub_020988D8(v0, param2);

    if (param1 == 0) {
        sub_020988E8(v0, &param0->unk_08, &param0->unk_0C, param2);
        sub_02098938(v0, &param0->unk_10, &param0->unk_14, param2);
    } else {
        sub_02098910(v0, &param0->unk_08, &param0->unk_0C, param2);
        sub_02098960(v0, &param0->unk_10, &param0->unk_14, param2);
    }

    NARC_dtor(v0);
}

void sub_020987BC (UnkStruct_02098700 * param0)
{
    GF_ASSERT(param0->unk_00);
    GF_ASSERT(param0->unk_04);

    sub_020181C4(param0->unk_00);
    sub_020181C4(param0->unk_04);

    sub_020181C4(param0->unk_08);
    sub_020181C4(param0->unk_0C);
    sub_020181C4(param0->unk_10);
    sub_020181C4(param0->unk_14);

    param0->unk_00 = NULL;
    param0->unk_04 = NULL;
    param0->unk_08 = NULL;
    param0->unk_0C = NULL;
    param0->unk_10 = NULL;
    param0->unk_14 = NULL;
}

int sub_02098808 (const UnkStruct_02098700 * param0, int param1)
{
    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_00);
    return param0->unk_00[param1];
}

int sub_02098828 (const UnkStruct_02098700 * param0, int param1)
{
    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_04);
    return param0->unk_04[param1];
}

short sub_02098848 (const UnkStruct_02098700 * param0, int param1)
{
    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_08);
    return param0->unk_08[param1];
}

short sub_02098868 (const UnkStruct_02098700 * param0, int param1)
{
    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_0C);
    return param0->unk_0C[param1];
}

short sub_02098888 (const UnkStruct_02098700 * param0, int param1)
{
    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_10);
    return param0->unk_10[param1];
}

short sub_020988A8 (const UnkStruct_02098700 * param0, int param1)
{
    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_14);
    return param0->unk_14[param1];
}

static int * sub_020988C8 (NARC * param0, int param1)
{
    void * v0;

    v0 = sub_0200723C(param0, 0, 0, param1, 0);
    return (int *)v0;
}

static int * sub_020988D8 (NARC * param0, int param1)
{
    void * v0;

    v0 = sub_0200723C(param0, 1, 0, param1, 0);
    return (int *)v0;
}

static void sub_020988E8 (NARC * param0, short ** param1, short ** param2, int param3)
{
    *param1 = (short *)sub_0200723C(param0, 9, 0, param3, 0);
    *param2 = (short *)sub_0200723C(param0, 10, 0, param3, 0);
}

static void sub_02098910 (NARC * param0, short ** param1, short ** param2, int param3)
{
    *param1 = (short *)sub_0200723C(param0, 7, 0, param3, 0);
    *param2 = (short *)sub_0200723C(param0, 8, 0, param3, 0);
}

static void sub_02098938 (NARC * param0, short ** param1, short ** param2, int param3)
{
    *param1 = (short *)sub_0200723C(param0, 5, 0, param3, 0);
    *param2 = (short *)sub_0200723C(param0, 6, 0, param3, 0);
}

static void sub_02098960 (NARC * param0, short ** param1, short ** param2, int param3)
{
    *param1 = (short *)sub_0200723C(param0, 3, 0, param3, 0);
    *param2 = (short *)sub_0200723C(param0, 4, 0, param3, 0);
}
