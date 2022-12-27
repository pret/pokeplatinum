#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_02073C74.h"
#include "struct_defs/struct_02079FF4.h"

#include "unk_02017E74.h"
#include "unk_020244AC.h"
#include "unk_02073C2C.h"
#include "unk_02079FEC.h"

int sub_02079FEC (void)
{
    return sizeof(UnkStruct_02079FF4);
}

UnkStruct_02079FF4 * sub_02079FF4 (u32 param0)
{
    UnkStruct_02079FF4 * v0;

    v0 = sub_02018144(param0, sizeof(UnkStruct_02079FF4));
    sub_0207A008(v0);

    return v0;
}

void sub_0207A008 (UnkStruct_02079FF4 * param0)
{
    sub_0207A014(param0, 6);
}

void sub_0207A014 (UnkStruct_02079FF4 * param0, int param1)
{
    int v0;

    GF_ASSERT(param1 <= 6);
    memset(param0, 0, sizeof(UnkStruct_02079FF4));

    param0->unk_04 = 0;
    param0->unk_00 = param1;

    for (v0 = 0; v0 < 6; v0++) {
        sub_02073C2C(&param0->unk_08[v0]);
    }
}

BOOL sub_0207A048 (UnkStruct_02079FF4 * param0, UnkStruct_02073C74 * param1)
{
    if (param0->unk_04 >= param0->unk_00) {
        return 0;
    }

    param0->unk_08[param0->unk_04] = *param1;
    param0->unk_04++;

    return 1;
}

BOOL sub_0207A080 (UnkStruct_02079FF4 * param0, int param1)
{
    int v0;

    GF_ASSERT((param1) >= 0);
    GF_ASSERT((param1) < (param0)->unk_04);
    GF_ASSERT((param1) < (param0)->unk_00);
    GF_ASSERT(param0->unk_04 > 0);

    for (v0 = param1; v0 < param0->unk_04 - 1; v0++) {
        param0->unk_08[v0] = param0->unk_08[v0 + 1];
    }

    sub_02073C2C(&param0->unk_08[v0]);
    param0->unk_04--;

    return 1;
}

int sub_0207A0F4 (const UnkStruct_02079FF4 * param0)
{
    return param0->unk_00;
}

int sub_0207A0F8 (const UnkStruct_02079FF4 * param0)
{
    return param0->unk_04;
}

UnkStruct_02073C74 * sub_0207A0FC (const UnkStruct_02079FF4 * param0, int param1)
{
    GF_ASSERT((param1) >= 0);
    GF_ASSERT((param1) < (param0)->unk_04);
    GF_ASSERT((param1) < (param0)->unk_00);
    return (UnkStruct_02073C74 *)&param0->unk_08[param1];
}

void sub_0207A128 (UnkStruct_02079FF4 * param0, int param1, UnkStruct_02073C74 * param2)
{
    int v0;

    GF_ASSERT((param1) >= 0);
    GF_ASSERT((param1) < (param0)->unk_04);
    GF_ASSERT((param1) < (param0)->unk_00);

    v0 = sub_02074470(&(param0->unk_08[param1]), 172, NULL) - sub_02074470(param2, 172, NULL);
    param0->unk_08[param1] = *param2;
    param0->unk_04 += v0;
}

BOOL sub_0207A184 (UnkStruct_02079FF4 * param0, int param1, int param2)
{
    struct UnkStruct_02073C74_t * v0;

    GF_ASSERT((param1) >= 0);
    GF_ASSERT((param1) < (param0)->unk_04);
    GF_ASSERT((param1) < (param0)->unk_00);
    GF_ASSERT((param2) >= 0);
    GF_ASSERT((param2) < (param0)->unk_04);
    GF_ASSERT((param2) < (param0)->unk_00);

    v0 = sub_02018144(0, sizeof(struct UnkStruct_02073C74_t));
    *v0 = param0->unk_08[param1];

    param0->unk_08[param1] = param0->unk_08[param2];
    param0->unk_08[param2] = *v0;

    sub_020181C4(v0);

    return 0;
}

void sub_0207A21C (const UnkStruct_02079FF4 * param0, UnkStruct_02079FF4 * param1)
{
    *param1 = *param0;
}

BOOL sub_0207A230 (const UnkStruct_02079FF4 * param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (sub_02074470((UnkStruct_02073C74 *)&param0->unk_08[v0], 5, NULL) == param1) {
            break;
        }
    }

    return v0 != param0->unk_04;
}

UnkStruct_02079FF4 * sub_0207A268 (UnkStruct_021C0794 * param0)
{
    UnkStruct_02079FF4 * v0;

    v0 = (UnkStruct_02079FF4 *)sub_020245BC(param0, 2);
    return v0;
}
