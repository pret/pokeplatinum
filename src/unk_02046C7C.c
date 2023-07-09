#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/strbuf.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_0203E724_decl.h"
#include "struct_defs/pokemon.h"

#include "struct_defs/struct_0203CDB0_sub2_t.h"
#include "struct_defs/struct_0203E724_t.h"
#include "struct_defs/struct_02093800.h"

#include "unk_0200B358.h"
#include "strbuf.h"
#include "unk_02025E08.h"
#include "unk_02025E68.h"
#include "unk_0202631C.h"
#include "unk_020298BC.h"
#include "unk_0202CC64.h"
#include "map_header.h"
#include "unk_0203CC84.h"
#include "unk_0203E724.h"
#include "unk_0203E880.h"
#include "unk_020507CC.h"
#include "unk_0206A8DC.h"
#include "party.h"
#include "unk_020933F8.h"
#include "overlay005/ov5_021EF3A8.h"
#include "overlay006/ov6_02247A0C.h"

static BOOL sub_02046CE0(UnkStruct_0203E724 * param0);
static BOOL sub_02046FDC(UnkStruct_0203E724 * param0);
static BOOL sub_02047404(UnkStruct_0203E724 * param0);
BOOL sub_02046C7C(UnkStruct_0203E724 * param0);
BOOL sub_02046CAC(UnkStruct_0203E724 * param0);
BOOL sub_02046CFC(UnkStruct_0203E724 * param0);
BOOL sub_02046E14(UnkStruct_0203E724 * param0);
BOOL sub_02046E60(UnkStruct_0203E724 * param0);
BOOL sub_02046EB4(UnkStruct_0203E724 * param0);
BOOL sub_02046F08(UnkStruct_0203E724 * param0);
BOOL sub_02046FB8(UnkStruct_0203E724 * param0);
BOOL sub_02046FF0(UnkStruct_0203E724 * param0);
BOOL sub_0204700C(UnkStruct_0203E724 * param0);
BOOL sub_02047048(UnkStruct_0203E724 * param0);
BOOL sub_02047084(UnkStruct_0203E724 * param0);
BOOL sub_020470C0(UnkStruct_0203E724 * param0);
BOOL sub_020470F0(UnkStruct_0203E724 * param0);
BOOL sub_0204712C(UnkStruct_0203E724 * param0);
BOOL sub_0204715C(UnkStruct_0203E724 * param0);
BOOL sub_0204718C(UnkStruct_0203E724 * param0);
BOOL sub_020471BC(UnkStruct_0203E724 * param0);
BOOL sub_02047200(UnkStruct_0203E724 * param0);
BOOL sub_020473B8(UnkStruct_0203E724 * param0);
BOOL sub_020473E4(UnkStruct_0203E724 * param0);
BOOL sub_02047424(UnkStruct_0203E724 * param0);
BOOL sub_02047438(UnkStruct_0203E724 * param0);
BOOL sub_0204744C(UnkStruct_0203E724 * param0);
BOOL sub_020474AC(UnkStruct_0203E724 * param0);
BOOL sub_02047388(UnkStruct_0203E724 * param0);
BOOL sub_020473A0(UnkStruct_0203E724 * param0);
BOOL sub_02046F5C(UnkStruct_0203E724 * param0);
BOOL sub_02047244(UnkStruct_0203E724 * param0);
BOOL sub_02047274(UnkStruct_0203E724 * param0);
BOOL sub_020472E8(UnkStruct_0203E724 * param0);
BOOL sub_02047318(UnkStruct_0203E724 * param0);
BOOL sub_02047358(UnkStruct_0203E724 * param0);

BOOL sub_02046C7C (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    u16 v1 = inline_02049538(param0);

    sub_02094754(*v0, v1);
    return 0;
}

BOOL sub_02046CAC (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    u16 v1 = inline_02049538(param0);

    param0->unk_18[0] = v1;

    sub_0203E764(param0, sub_02046CE0);
    return 1;
}

static BOOL sub_02046CE0 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    return sub_0209476C(*v0, param0->unk_18[0]);
}

BOOL sub_02046CFC (UnkStruct_0203E724 * param0)
{
    Strbuf* v0;
    Pokemon * v1;
    void ** v2 = sub_0203F098(param0->unk_34, 20);
    UnkStruct_02025E6C * v3 = sub_02025E38(sub_0203D174(param0->unk_34));
    u16 v4 = inline_02049538(param0);
    u16 v5 = inline_02049538(param0);
    u16 v6 = inline_02049538(param0);
    u16 v7 = inline_02049538(param0);
    UnkStruct_02093800 v8;

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(param0->unk_34->unk_0C), v7);
    v0 = sub_02025F04(v3, 4);

    v8.unk_00 = v5;
    v8.unk_01 = v4;
    v8.unk_02 = v6;
    v8.unk_03 = sub_0206A954(sub_020507E4(param0->unk_34->unk_0C));
    v8.unk_04 = sub_02027474(sub_02027560(param0->unk_34->unk_0C));
    v8.unk_05 = v7;
    v8.unk_08 = v1;
    v8.unk_0C = v0;
    v8.unk_10 = v3;
    v8.unk_14 = sub_0202A750(param0->unk_34->unk_0C);
    v8.unk_18 = sub_02025E44(param0->unk_34->unk_0C);
    v8.unk_1C = param0->unk_34->unk_0C;
    v8.unk_20 = sub_0202CC98(param0->unk_34->unk_0C);

    *v2 = sub_02093800(&v8);

    Strbuf_Free(v0);

    return 0;
}

BOOL sub_02046E14 (UnkStruct_0203E724 * param0)
{
    Pokemon * v0;
    void ** v1 = sub_0203F098(param0->unk_34, 20);
    u16 v2 = inline_02049538(param0);
    u32 v3 = sub_0203A138(param0->unk_34->unk_1C->unk_00);

    sub_02094C44(*v1, param0->unk_34->unk_0C, v3, param0->unk_34->unk_9C);
    sub_02093AD4(*v1);

    return 0;
}

BOOL sub_02046E60 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    UnkStruct_0200B358 ** v1 = sub_0203F098(param0->unk_34, 15);
    u16 v2 = inline_02049538(param0);
    u16 v3 = inline_02049538(param0);

    sub_02094630(*v0, v2, *v1, v3);

    return 0;
}

BOOL sub_02046EB4 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    UnkStruct_0200B358 ** v1 = sub_0203F098(param0->unk_34, 15);
    u16 v2 = inline_02049538(param0);
    u16 v3 = inline_02049538(param0);

    sub_02094648(*v0, v2, *v1, v3);

    return 0;
}

BOOL sub_02046F08 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    UnkStruct_0200B358 ** v1 = sub_0203F098(param0->unk_34, 15);
    u16 v2 = inline_02049538(param0);
    u16 v3 = inline_02049538(param0);

    sub_02094680(*v0, v2, *v1, v3);

    return 0;
}

BOOL sub_02046F5C (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    UnkStruct_0200B358 ** v1 = sub_0203F098(param0->unk_34, 15);
    u16 v2 = inline_02049538(param0);
    u16 v3 = inline_02049538(param0);

    sub_0200B60C(*v1, v3, v2, 1, 0, 1);
    return 0;
}

BOOL sub_02046FB8 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);

    sub_020943B0(*v0);
    sub_0203E764(param0, sub_02046FDC);

    return 1;
}

static BOOL sub_02046FDC (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    return sub_020944CC(*v0);
}

BOOL sub_02046FF0 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);

    sub_020933F8(param0->unk_28, *v0);
    return 1;
}

BOOL sub_0204700C (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    UnkStruct_0200B358 ** v1 = sub_0203F098(param0->unk_34, 15);
    u16 v2 = inline_02049538(param0);

    sub_020946A4(*v0, *v1, v2);
    return 0;
}

BOOL sub_02047048 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    UnkStruct_0200B358 ** v1 = sub_0203F098(param0->unk_34, 15);
    u16 v2 = inline_02049538(param0);

    sub_020946CC(*v0, *v1, v2);
    return 0;
}

BOOL sub_02047084 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    UnkStruct_0200B358 ** v1 = sub_0203F098(param0->unk_34, 15);
    u16 v2 = inline_02049538(param0);

    sub_020946F0(*v0, *v1, v2);
    return 0;
}

BOOL sub_020470C0 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = sub_02094750(*v0);
    return 0;
}

BOOL sub_020470F0 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    UnkStruct_0200B358 ** v1 = sub_0203F098(param0->unk_34, 15);
    u16 v2 = inline_02049538(param0);

    sub_02094720(*v0, *v1, v2);
    return 0;
}

BOOL sub_0204712C (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = sub_02094790(*v0);
    return 0;
}

BOOL sub_0204715C (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = sub_020947A4(*v0);
    return 0;
}

BOOL sub_0204718C (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = sub_020947C8(*v0);
    return 0;
}

BOOL sub_020471BC (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    u16 v1 = inline_02049538(param0);
    u16 * v2 = inline_0204FCAC(param0);

    *v2 = sub_020947D8(*v0, v1);
    return 0;
}

BOOL sub_02047200 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    u16 v1 = inline_02049538(param0);
    u16 * v2 = inline_0204FCAC(param0);

    *v2 = sub_020947F0(*v0, v1);
    return 0;
}

BOOL sub_02047244 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = sub_02094804(*v0);
    return 0;
}

BOOL sub_02047274 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    u16 * v1 = inline_0204FCAC(param0);
    u16 * v2 = inline_0204FCAC(param0);
    u16 * v3 = inline_0204FCAC(param0);
    u16 * v4 = inline_0204FCAC(param0);

    sub_02094828(*v0, v1, v2, v3, v4);
    return 0;
}

BOOL sub_020472E8 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = sub_02094868(*v0);
    return 0;
}

BOOL sub_02047318 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    UnkStruct_0200B358 ** v1 = sub_0203F098(param0->unk_34, 15);
    u16 v2 = inline_02049538(param0);

    sub_02094898(*v0, *v1, v2, 11);
    return 0;
}

BOOL sub_02047358 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    u16 * v1 = inline_0204FCAC(param0);

    *v1 = sub_02094904(*v0);
    return 0;
}

BOOL sub_02047388 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);

    sub_02094850(*v0);
    return 0;
}

BOOL sub_020473A0 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);

    sub_02094860(*v0);
    return 0;
}

BOOL sub_020473B8 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    u16 v1 = inline_02049538(param0);

    sub_02094A58(*v0, v1);
    return 0;
}

BOOL sub_020473E4 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);

    sub_0203E764(param0, sub_02047404);
    return 1;
}

static BOOL sub_02047404 (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);

    if (sub_02094B1C(*v0) == 1) {
        return 1;
    }

    return 0;
}

BOOL sub_02047424 (UnkStruct_0203E724 * param0)
{
    ov5_021EF3FC(param0->unk_34->unk_04->unk_1C);
    return 0;
}

BOOL sub_02047438 (UnkStruct_0203E724 * param0)
{
    ov5_021EF3DC(param0->unk_34->unk_04->unk_1C);
    return 0;
}

BOOL sub_0204744C (UnkStruct_0203E724 * param0)
{
    void ** v0 = sub_0203F098(param0->unk_34, 20);
    u16 * v1 = inline_0204FCAC(param0);
    int v2, v3, v4, v5, v6;

    sub_02094BB4(*v0, &v2, &v3, &v4, &v5, &v6);

    if ((v3 == 1) || (v4 == 1) || (v5 == 1) || (v6 == 1)) {
        *v1 = 1;
    } else {
        *v1 = 0;
    }

    return 0;
}

BOOL sub_020474AC (UnkStruct_0203E724 * param0)
{
    ov6_02247A0C(param0->unk_28);
    return 1;
}
