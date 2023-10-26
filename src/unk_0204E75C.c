#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_0203E724_decl.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0203E724_t.h"

#include "unk_0204E75C.h"
#include "unk_0205DFC4.h"
#include "item.h"
#include "unk_0207D3B8.h"

BOOL sub_0204E75C (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);
    u16 * v3 = inline_0204FCAC(param0);

    *v3 = sub_0207D570(sub_0207D990(v0->unk_0C), v1, v2, 4);
    return 0;
}

BOOL sub_0204E7B4 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);
    u16 * v3 = inline_0204FCAC(param0);

    *v3 = Bag_SubtractItem(sub_0207D990(v0->unk_0C), v1, v2, 4);
    return 0;
}

BOOL sub_0204E80C (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);
    u16 * v3 = inline_0204FCAC(param0);

    *v3 = sub_0207D55C(sub_0207D990(v0->unk_0C), v1, v2, 4);
    return 0;
}

BOOL sub_0204E864 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    u16 v1 = inline_02049538(param0);
    u16 v2 = inline_02049538(param0);
    u16 * v3 = inline_0204FCAC(param0);

    *v3 = sub_0207D688(sub_0207D990(v0->unk_0C), v1, v2, 11);
    return 0;
}

BOOL sub_0204E8BC (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    u16 v1 = inline_02049538(param0);
    u16 * v2 = inline_0204FCAC(param0);

    *v2 = sub_0207D730(sub_0207D990(v0->unk_0C), v1, 11);
    return 0;
}

BOOL sub_0204E900 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    u16 v1 = inline_02049538(param0);
    u16 * v2 = inline_0204FCAC(param0);

    *v2 = sub_0205E060(v1);
    return 0;
}

BOOL sub_0204E934 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    u16 v1 = inline_02049538(param0);
    u16 * v2 = inline_0204FCAC(param0);

    *v2 = (u16)Item_LoadParam(v1, 5, 11);
    return 0;
}

BOOL sub_0204E96C (UnkStruct_0203E724 * param0)
{
    return 0;
}

BOOL sub_0204E970 (UnkStruct_0203E724 * param0)
{
    return 0;
}
