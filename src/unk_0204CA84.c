#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_02026310_decl.h"
#include "struct_decls/struct_0203E724_decl.h"
#include "struct_decls/struct_02079FF4_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0203E724_t.h"

#include "unk_020244AC.h"
#include "unk_02025E08.h"
#include "unk_020261E4.h"
#include "unk_0203CC84.h"
#include "unk_0203E724.h"
#include "unk_0203E880.h"
#include "unk_0204CA84.h"
#include "party.h"
#include "overlay005/ov5_021E622C.h"

BOOL sub_0204CA84 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    UnkStruct_021C0794 * v1 = v0->unk_0C;
    UnkStruct_0200B358 ** v2 = sub_0203F098(v0, 15);

    ov5_021E72BC(sub_02026310(v1), *v2);

    return 0;
}

BOOL sub_0204CAA4 (UnkStruct_0203E724 * param0)
{
    u16 * v0;
    UnkStruct_0203CDB0 * v1 = param0->unk_34;
    UnkStruct_021C0794 * v2 = v1->unk_0C;
    UnkStruct_02026310 * v3;

    v0 = inline_0204FCAC(param0);
    v3 = (UnkStruct_02026310 *)(sub_020245BC(v2, 8));
    *v0 = ov5_021E73C8(v3);

    return 0;
}

BOOL sub_0204CAD4 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    UnkStruct_021C0794 * v1 = v0->unk_0C;
    UnkStruct_02026310 * v2;

    v2 = (UnkStruct_02026310 *)(sub_020245BC(v1, 8));
    ov5_021E6B40(v2);

    return 0;
}

BOOL sub_0204CAEC (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    UnkStruct_021C0794 * v1 = v0->unk_0C;
    UnkStruct_02026310 * v2 = (UnkStruct_02026310 *)(sub_020245BC(v1, 8));
    UnkStruct_02079FF4 * v3 = GetPartyFromSavedata(v0->unk_0C);
    UnkStruct_02025E6C * v4 = sub_02025E38(sub_0203D174(param0->unk_34));

    ov5_021E6EA8(v2, v3, v4);
    return 0;
}

BOOL sub_0204CB20 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    UnkStruct_02026310 * v1;
    UnkStruct_02079FF4 * v2;
    UnkStruct_0200B358 ** v3 = sub_0203F098(v0, 15);
    UnkStruct_021C0794 * v4 = v0->unk_0C;
    u16 * v5 = inline_0204FCAC(param0);
    u8 v6 = inline_02049538(param0);

    v1 = (UnkStruct_02026310 *)(sub_020245BC(v4, 8));
    v2 = GetPartyFromSavedata(v0->unk_0C);
    *v5 = ov5_021E64F8(v2, *v3, v1, v6);

    return 0;
}

BOOL sub_0204CB80 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    UnkStruct_02026310 * v1;
    UnkStruct_0200B358 ** v2 = sub_0203F098(v0, 15);
    UnkStruct_021C0794 * v3 = v0->unk_0C;
    u16 * v4 = inline_0204FCAC(param0);
    u8 v5 = inline_02049538(param0);

    v1 = (UnkStruct_02026310 *)(sub_020245BC(v3, 8));
    *v4 = ov5_021E6630(v1, v5, *v2);

    return 0;
}

BOOL sub_0204CBD4 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    UnkStruct_021C0794 * v1 = v0->unk_0C;
    UnkStruct_02026310 * v2;
    UnkStruct_0200B358 ** v3 = sub_0203F098(param0->unk_34, 15);
    u16 * v4 = inline_0204FCAC(param0);
    u16 v5 = inline_02049538(param0);

    v2 = (UnkStruct_02026310 *)(sub_020245BC(v1, 8));
    *v4 = ov5_021E6640(v2, v5, *v3);

    return 0;
}

BOOL sub_0204CC24 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    UnkStruct_02079FF4 * v1;
    UnkStruct_0200B358 ** v2 = sub_0203F098(param0->unk_34, 15);
    u16 v3 = sub_0203E838(param0);
    u16 v4 = inline_02049538(param0);
    u16 * v5 = inline_0204FCAC(param0);

    v1 = GetPartyFromSavedata(v0->unk_0C);
    *v5 = ov5_021E73A0(v1, v4, *v2);

    return 0;
}

BOOL sub_0204CC78 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    UnkStruct_021C0794 * v1 = v0->unk_0C;
    UnkStruct_02026310 * v2;
    UnkStruct_02079FF4 * v3;
    u8 v4 = inline_02049538(param0);

    v3 = GetPartyFromSavedata(v0->unk_0C);
    v2 = (UnkStruct_02026310 *)(sub_020245BC(v1, 8));

    ov5_021E6358(v3, v4, v2, v1);

    return 0;
}

BOOL sub_0204CCB8 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    UnkStruct_021C0794 * v1 = v0->unk_0C;
    UnkStruct_0200B358 ** v2 = sub_0203F098(param0->unk_34, 15);
    u8 v3 = inline_02049538(param0);
    u8 v4 = inline_02049538(param0);
    u8 v5 = inline_02049538(param0);
    u8 v6 = inline_02049538(param0);

    ov5_021E7308(sub_02026310(v1), v3, v4, v5, v6, *v2);
    return 0;
}

BOOL sub_0204CD44 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    UnkStruct_021C0794 * v1 = v0->unk_0C;
    UnkStruct_02026310 * v2;
    u16 * v3 = inline_0204FCAC(param0);

    v2 = (UnkStruct_02026310 *)(sub_020245BC(v1, 8));
    *v3 = ov5_021E7420(v2);

    return 0;
}

BOOL sub_0204CD74 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    UnkStruct_021C0794 * v1 = v0->unk_0C;
    UnkStruct_02026310 * v2;
    u16 * v3 = inline_0204FCAC(param0);

    v2 = (UnkStruct_02026310 *)(sub_020245BC(v1, 8));
    *v3 = sub_02026234(v2);

    return 0;
}

BOOL sub_0204CDA4 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    u16 * v1 = inline_0204FCAC(param0);

    return 0;
}

BOOL sub_0204CDBC (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    return 0;
}

BOOL sub_0204CDC0 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    return 0;
}

BOOL sub_0204CDC4 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    u16 * v1 = inline_0204FCAC(param0);

    return 0;
}
