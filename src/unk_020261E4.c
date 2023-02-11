#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_0202818C.h"
#include "struct_defs/struct_02073C74_sub1.h"

#include "unk_020244AC.h"
#include "unk_020261E4.h"
#include "unk_02073C2C.h"

typedef struct UnkStruct_02026224_t {
    UnkStruct_0202818C unk_00;
    u16 unk_38[8];
    u16 unk_48[11];
    u8 unk_5E_0 : 4;
    u8 unk_5E_4 : 4;
} UnkStruct_02026224;

typedef struct UnkStruct_02026218_t {
    BoxPokemon unk_00;
    UnkStruct_02026224 unk_08;
    u32 unk_68;
} UnkStruct_02026218;

typedef struct UnkStruct_02026310_t {
    UnkStruct_02026218 unk_00[2];
    u32 unk_D8;
    u8 unk_DC;
} UnkStruct_02026310;

int sub_020261E4 (void)
{
    return sizeof(UnkStruct_02026310);
}

void sub_020261EC (UnkStruct_02026310 * param0)
{
    memset(param0, 0, sizeof(UnkStruct_02026310));

    sub_02073C54(&param0->unk_00[0].unk_00);
    sub_02073C54(&param0->unk_00[1].unk_00);

    param0->unk_D8 = 0;
    param0->unk_DC = 0;
}

UnkStruct_02026218 * sub_02026218 (UnkStruct_02026310 * param0, int param1)
{
    return &(param0->unk_00[param1]);
}

BoxPokemon * sub_02026220 (UnkStruct_02026218 * param0)
{
    return &(param0->unk_00);
}

UnkStruct_02026224 * sub_02026224 (UnkStruct_02026218 * param0)
{
    return &(param0->unk_08);
}

u32 sub_02026228 (const UnkStruct_02026218 * param0)
{
    return param0->unk_68;
}

UnkStruct_0202818C * sub_02026230 (UnkStruct_02026224 * param0)
{
    return &(param0->unk_00);
}

int sub_02026234 (const UnkStruct_02026310 * param0)
{
    if (param0->unk_D8 != 0) {
        return 1;
    }

    return 0;
}

int sub_02026248 (const UnkStruct_02026310 * param0)
{
    return param0->unk_D8;
}

int sub_02026250 (const UnkStruct_02026310 * param0)
{
    return param0->unk_DC;
}

void sub_02026258 (UnkStruct_02026218 * param0, int param1)
{
    param0->unk_68 = param1;
}

void sub_02026260 (UnkStruct_02026218 * param0, int param1)
{
    param0->unk_68 += param1;
}

void sub_02026270 (UnkStruct_02026310 * param0, int param1)
{
    param0->unk_D8 = param1;
}

void sub_02026278 (UnkStruct_02026310 * param0, int param1)
{
    param0->unk_DC = param1;
}

BOOL sub_02026280 (UnkStruct_02026310 * param0)
{
    int v0, v1;

    v0 = sub_02074570(&param0->unk_00[0].unk_00, MON_DATA_LANGUAGE, NULL);
    v1 = sub_02074570(&param0->unk_00[1].unk_00, MON_DATA_LANGUAGE, NULL);

    if (v0 != v1) {
        return 1;
    }

    return 0;
}

void sub_020262A8 (UnkStruct_02026218 * param0, const UnkStruct_02026218 * param1)
{
    *param0 = *param1;
}

void sub_020262C0 (UnkStruct_02026224 * param0)
{
    int v0;

    for (v0 = 0; v0 < 7 + 1; v0++) {
        param0->unk_38[v0] = 0;
    }

    for (v0 = 0; v0 < 10 + 1; v0++) {
        param0->unk_48[v0] = 0;
    }

    param0->unk_38[0] = 0xffff;
    param0->unk_48[0] = 0xffff;
}

void sub_020262F4 (UnkStruct_02026218 * param0)
{
    sub_02073C54(&param0->unk_00);
    param0->unk_68 = 0;
    sub_020262C0(&param0->unk_08);
}

UnkStruct_02026310 * sub_02026310 (UnkStruct_021C0794 * param0)
{
    UnkStruct_02026310 * v0;

    v0 = sub_020245BC(param0, 8);
    return v0;
}
