#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_0202C878_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_02030CEC.h"
#include "overlay096/struct_ov96_0223B574.h"

#include "unk_020021B0.h"
#include "unk_0201D15C.h"
#include "unk_020244AC.h"
#include "unk_02025E08.h"
#include "unk_02025E68.h"
#include "unk_0202C858.h"
#include "unk_02030CE8.h"

static void sub_02030DD0(UnkStruct_021C0794 * param0, UnkStruct_ov96_0223B574 * param1);

int sub_02030CE8 (void)
{
    return sizeof(UnkStruct_02030CEC);
}

void sub_02030CEC (UnkStruct_02030CEC * param0)
{
    MI_CpuClear8(param0, sizeof(UnkStruct_02030CEC));

    memset(param0->unk_00, '\0', (50 + 1));
    param0->unk_34 = 1;

    sub_02025C84(35);
}

void sub_02030D10 (UnkStruct_021C0794 * param0)
{
    sub_02030CEC(sub_020245BC(param0, 35));
}

BOOL sub_02030D20 (UnkStruct_021C0794 * param0)
{
    UnkStruct_02030CEC * v0;

    v0 = sub_020245BC(param0, 35);

    if (v0->unk_00[0] == '\0') {
        return 0;
    }

    return 1;
}

void sub_02030D38 (UnkStruct_021C0794 * param0, const char * param1)
{
    UnkStruct_02030CEC * v0;

    v0 = sub_020245BC(param0, 35);

    strcpy(v0->unk_00, param1);
    sub_02025C84(35);
}

char * sub_02030D50 (UnkStruct_021C0794 * param0)
{
    UnkStruct_02030CEC * v0;

    v0 = sub_020245BC(param0, 35);
    return v0->unk_00;
}

void sub_02030D5C (UnkStruct_021C0794 * param0, int param1, u32 param2)
{
    UnkStruct_02030CEC * v0 = sub_020245BC(param0, 35);

    switch (param1) {
    case 0:
        v0->unk_34 = param2;
        break;
    case 1:
        v0->unk_38 = param2;
        break;
    case 2:
        v0->unk_3A = param2;
        break;
    case 3:
        v0->unk_3C = param2;
        break;
    }

    sub_02025C84(35);
}

u32 sub_02030D98 (UnkStruct_021C0794 * param0, int param1)
{
    UnkStruct_02030CEC * v0 = sub_020245BC(param0, 35);

    switch (param1) {
    case 0:
        return v0->unk_34;
    case 1:
        return v0->unk_38;
    case 2:
        return v0->unk_3A;
    case 3:
        return v0->unk_3C;
    }

    return 0;
}

static void sub_02030DD0 (UnkStruct_021C0794 * param0, UnkStruct_ov96_0223B574 * param1)
{
    UnkStruct_0202C878 * v0 = sub_0202C878(param0);
    UnkStruct_02025E6C * v1 = sub_02025E38(param0);
    char * v2 = sub_02030D50(param0);

    MI_CpuClear8(param1, sizeof(UnkStruct_ov96_0223B574));

    param1->unk_00 = GAME_VERSION;
    param1->unk_01 = GAME_LANGUAGE;
    param1->unk_02 = sub_0202C8C0(v0);
    param1->unk_03 = sub_0202C8C4(v0);
    param1->unk_04 = sub_02025F20(v1);

    sub_020021B0(param1->unk_08, sub_02025EF0(v1));
    param1->unk_10 = 0;

    strcpy(param1->unk_1C, v2);
    param1->unk_54 = sub_02030D98(param0, 0);

    sub_02025C84(35);
}

u32 sub_02030E48 (UnkStruct_021C0794 * param0, UnkStruct_ov96_0223B574 * param1)
{
    u32 v0;

    sub_02030DD0(param0, param1);

    v0 = LCRNG_Next() % 1000;

    param1->unk_58 = v0;
    param1->unk_5A = 0xffff;

    sub_02025C84(35);

    return v0;
}

void sub_02030E78 (UnkStruct_021C0794 * param0, UnkStruct_ov96_0223B574 * param1)
{
    UnkStruct_02030CEC * v0 = sub_020245BC(param0, 35);

    sub_02030DD0(param0, param1);

    param1->unk_58 = v0->unk_38;
    param1->unk_5A = v0->unk_3A;

    sub_02025C84(35);
}
