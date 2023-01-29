#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_0203E724_decl.h"
#include "struct_decls/struct_02073C74_decl.h"

#include "struct_defs/struct_0203E724_t.h"
#include "struct_defs/struct_020997B8.h"

#include "heap.h"
#include "unk_02025E08.h"
#include "unk_0203CC84.h"
#include "unk_0203D1B8.h"
#include "unk_0203E724.h"
#include "unk_0203E880.h"
#include "unk_0203F6C4.h"
#include "unk_0204EDA4.h"
#include "party.h"
#include "unk_020997B8.h"

static void sub_0204EE90(UnkStruct_0203E724 * param0, u16 param1, UnkStruct_02073C74 * param2, u16 * param3);

BOOL sub_0204EDA4 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    void ** v1;

    v1 = sub_0203F098(param0->unk_34, 19);
    *v1 = sub_0203D6E4(32, param0->unk_34, v0);

    sub_0203E764(param0, sub_02041D60);
    return 1;
}

BOOL sub_0204EDEC (UnkStruct_0203E724 * param0)
{
    void ** v0;
    u16 * v1;

    v1 = inline_0204FCAC(param0);
    v0 = sub_0203F098(param0->unk_34, 19);
    GF_ASSERT(*v0 != 0);
    *v1 = sub_0203D750(*v0);

    if (*v1 == 4) {
        *v1 = 0xff;
    }

    FreeToHeap(*v0);
    *v0 = NULL;

    return 0;
}

BOOL sub_0204EE38 (UnkStruct_0203E724 * param0)
{
    return 0;
}

BOOL sub_0204EE3C (UnkStruct_0203E724 * param0)
{
    UnkStruct_02073C74 * v0;
    u16 * v1;
    u16 * v2 = inline_0204FCAC(param0);
    u16 v3 = inline_02049538(param0);

    v0 = Party_GetPokemonBySlotIndex(GetPartyFromSavedata(param0->unk_34->unk_0C), v3);
    v1 = sub_020997D8(v0, 32);
    *v2 = sub_020998D8(v1);

    FreeToHeap(v1);
    return 0;
}

static void sub_0204EE90 (UnkStruct_0203E724 * param0, u16 param1, UnkStruct_02073C74 * param2, u16 * param3)
{
    void ** v0 = sub_0203F098(param0->unk_34, 19);
    UnkStruct_020997B8 * v1;

    v1 = sub_020997B8(32);
    *v0 = v1;

    v1->unk_00 = param2;
    v1->unk_04 = sub_02025E38(sub_0203D174(param0->unk_34));
    v1->unk_08 = sub_02025E44(param0->unk_34->unk_0C);
    v1->unk_0C = param3;
    v1->unk_15 = param1;

    sub_0203E284(param0->unk_34, v1);
    sub_0203E764(param0, sub_02041D60);
    FreeToHeap(param3);
}

BOOL sub_0204EEFC (UnkStruct_0203E724 * param0)
{
    return 1;
}

BOOL sub_0204EF00 (UnkStruct_0203E724 * param0)
{
    UnkStruct_02073C74 * v0;
    u16 v1 = inline_02049538(param0);
    u16 * v2;

    v0 = Party_GetPokemonBySlotIndex(GetPartyFromSavedata(param0->unk_34->unk_0C), v1);
    v2 = sub_020997D8(v0, 32);

    sub_0204EE90(param0, 1, v0, v2);

    return 1;
}

BOOL sub_0204EF40 (UnkStruct_0203E724 * param0)
{
    UnkStruct_02073C74 * v0;
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);
    u16 * v3;

    v0 = Party_GetPokemonBySlotIndex(GetPartyFromSavedata(param0->unk_34->unk_0C), v1);
    v3 = AllocFromHeap(32, (1 + 1) * 2);

    *(v3 + 0) = v2;
    *(v3 + 1) = 0xffff;

    sub_0204EE90(param0, 0, v0, v3);

    return 1;
}

BOOL sub_0204EFA0 (UnkStruct_0203E724 * param0)
{
    return 0;
}

BOOL sub_0204EFA4 (UnkStruct_0203E724 * param0)
{
    UnkStruct_020997B8 * v0;
    u16 * v1 = inline_0204FCAC(param0);
    void ** v2 = sub_0203F098(param0->unk_34, 19);

    v0 = *v2;

    GF_ASSERT(*v2 != 0);

    if ((v0->unk_16) == 0) {
        *v1 = 0;
    } else {
        *v1 = 0xff;
    }

    sub_020997D0(v0);

    return 0;
}

BOOL sub_0204EFE8 (UnkStruct_0203E724 * param0)
{
    UnkStruct_020997B8 * v0;
    u16 * v1 = inline_0204FCAC(param0);
    void ** v2 = sub_0203F098(param0->unk_34, 19);

    v0 = *v2;

    GF_ASSERT(*v2 != 0);

    if ((v0->unk_16) == 0) {
        *v1 = 0;
    } else {
        *v1 = 0xff;
    }

    sub_020997D0(v0);

    return 0;
}
