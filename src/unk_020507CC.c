#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_021C0794_decl.h"

#include "unk_020244AC.h"
#include "unk_020507CC.h"

typedef struct UnkStruct_020507E4_t {
    u16 unk_00[288];
    u8 unk_240[364];
} UnkStruct_020507E4;

static u8 Unk_021C07F4[8] = {};

int FieldEvents_SaveSize (void)
{
    return sizeof(UnkStruct_020507E4);
}

void FieldEvents_Init (UnkStruct_020507E4 * param0)
{
    memset(param0, 0, sizeof(UnkStruct_020507E4));
}

UnkStruct_020507E4 * sub_020507E4 (SaveData * param0)
{
    UnkStruct_020507E4 * v0;

    v0 = (UnkStruct_020507E4 *)SaveData_Get(param0, 4);
    return v0;
}

BOOL sub_020507F0 (UnkStruct_020507E4 * param0, u16 param1)
{
    u8 * v0 = sub_02050870(param0, param1);

    if (v0 != NULL) {
        if (*v0 & (1 << (param1 % 8))) {
            return 1;
        }
    }

    return 0;
}

void sub_0205081C (UnkStruct_020507E4 * param0, u16 param1)
{
    u8 * v0 = sub_02050870(param0, param1);

    if (v0 == NULL) {
        return;
    }

    *v0 |= 1 << (param1 % 8);

    return;
}

void sub_02050844 (UnkStruct_020507E4 * param0, u16 param1)
{
    u8 * v0 = sub_02050870(param0, param1);

    if (v0 == NULL) {
        return;
    }

    *v0 &= (0xff ^ (1 << (param1 % 8)));

    return;
}

u8 * sub_02050870 (UnkStruct_020507E4 * param0, u16 param1)
{
    if (param1 == 0) {
        return NULL;
    } else if (param1 < 0x4000) {
        if ((param1 / 8) >= ((2400 + 320 + 192) / 8)) {
            GF_ASSERT(FALSE);
        }

        return &param0->unk_240[param1 / 8];
    } else {
        if (((param1 - 0x4000) / 8) >= (64 / 8)) {
            GF_ASSERT(FALSE);
        }

        return &(Unk_021C07F4[(param1 - 0x4000) / 8]);
    }
}

u16 * sub_020508B8 (UnkStruct_020507E4 * param0, u16 param1)
{
    if ((param1 - 0x4000) >= 288) {
        GF_ASSERT(FALSE);
    }

    return &param0->unk_00[param1 - 0x4000];
}
