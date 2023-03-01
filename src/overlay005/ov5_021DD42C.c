#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_strbuf_decl.h"
#include "struct_decls/struct_0203E724_decl.h"

#include "struct_defs/struct_02014A84.h"
#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0203E724_t.h"
#include "struct_defs/struct_0205AA50.h"
#include "overlay005/struct_ov5_021DD42C.h"

#include "unk_0200AC5C.h"
#include "unk_0200B358.h"
#include "unk_02014A84.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "string/strbuf.h"
#include "unk_02025E08.h"
#include "unk_020279FC.h"
#include "unk_0203E880.h"
#include "unk_0205D8CC.h"
#include "overlay005/ov5_021DD42C.h"

typedef struct {
    Strbuf * unk_00;
    Strbuf * unk_04;
    UnkStruct_0200B358 * unk_08;
    UnkStruct_0205AA50 * unk_0C;
    u8 * unk_10;
    u8 * unk_14;
} UnkStruct_ov5_021DD648;

static u8 ov5_021DD574(UnkStruct_0203E724 * param0);
static void ov5_021DD588(UnkStruct_0203CDB0 * param0, UnkStruct_ov5_021DD648 * param1);
static void ov5_021DD5D0(UnkStruct_0203CDB0 * param0, UnkStruct_0200B358 * param1, UnkStruct_ov5_021DD648 * param2);
static void ov5_021DD610(UnkStruct_0203CDB0 * param0, UnkStruct_ov5_021DD648 * param1);
static void ov5_021DD648(UnkStruct_ov5_021DD648 * param0, const UnkStruct_0200B144 * param1, u32 param2);
static void ov5_021DD664(UnkStruct_ov5_021DD648 * param0, u16 param1, u16 param2, u16 param3, u16 param4);
static void ov5_021DD6B4(UnkStruct_ov5_021DD648 * param0, int param1, int param2, int param3, int param4);
static void ov5_021DD6DC(UnkStruct_ov5_021DD648 * param0, int param1);

void ov5_021DD42C (UnkStruct_ov5_021DD42C * param0, UnkStruct_0203E724 * param1)
{
    param0->unk_00 = ov5_021DD574(param1);
    param0->unk_01 = 0;
    param0->unk_02 = 1;
}

void ov5_021DD444 (UnkStruct_0203E724 * param0, const UnkStruct_0200B144 * param1, u16 param2, u8 param3, UnkStruct_ov5_021DD42C * param4)
{
    UnkStruct_ov5_021DD648 v0;
    u8 v1;
    u8 v2;
    u8 v3;

    ov5_021DD588(param0->unk_34, &v0);
    ov5_021DD610(param0->unk_34, &v0);
    ov5_021DD648(&v0, param1, param2);

    if (param4 == NULL) {
        v1 = ov5_021DD574(param0);
        v2 = 0;
        v3 = 1;
    } else {
        v1 = param4->unk_00;
        v2 = param4->unk_01;
        v3 = param4->unk_02;
    }

    ov5_021DD6B4(&v0, v3, v1, param3, v2);
}

void ov5_021DD498 (UnkStruct_0203E724 * param0, const UnkStruct_0200B144 * param1, int param2)
{
    UnkStruct_ov5_021DD648 v0;

    ov5_021DD588(param0->unk_34, &v0);
    ov5_021DD610(param0->unk_34, &v0);
    ov5_021DD648(&v0, param1, param2);
    ov5_021DD6DC(&v0, 1);
}

void ov5_021DD4CC (UnkStruct_0203E724 * param0, u16 param1, u16 param2, u16 param3, s16 param4, u8 param5)
{
    UnkStruct_ov5_021DD648 v0;
    UnkStruct_02014A84 v1;

    ov5_021DD588(param0->unk_34, &v0);
    ov5_021DD610(param0->unk_34, &v0);
    ov5_021DD664(&v0, param1, param2, param3, param4);

    if (param5 != 0xFF) {
        ov5_021DD6B4(&v0, 1, ov5_021DD574(param0), param5, 0);
    } else {
        ov5_021DD6DC(&v0, 1);
    }
}

void ov5_021DD530 (UnkStruct_0203E724 * param0, UnkStruct_0200B358 * param1, u8 param2, u8 param3)
{
    UnkStruct_ov5_021DD648 v0;

    ov5_021DD5D0(param0->unk_34, param1, &v0);
    ov5_021DD610(param0->unk_34, &v0);
    ov5_021DD648(&v0, param0->unk_2C, param2);
    ov5_021DD6B4(&v0, 1, ov5_021DD574(param0), param3, 0);
}

static u8 ov5_021DD574 (UnkStruct_0203E724 * param0)
{
    return sub_02027AC0(sub_02025E44(param0->unk_34->unk_0C));
}

static void ov5_021DD588 (UnkStruct_0203CDB0 * param0, UnkStruct_ov5_021DD648 * param1)
{
    param1->unk_00 = *((Strbuf **)(sub_0203F098(param0, 16)));
    param1->unk_04 = *((Strbuf **)(sub_0203F098(param0, 17)));
    param1->unk_08 = *((UnkStruct_0200B358 **)(sub_0203F098(param0, 15)));
    param1->unk_0C = sub_0203F098(param0, 1);
    param1->unk_10 = sub_0203F098(param0, 6);
    param1->unk_14 = sub_0203F098(param0, 3);
}

static void ov5_021DD5D0 (UnkStruct_0203CDB0 * param0, UnkStruct_0200B358 * param1, UnkStruct_ov5_021DD648 * param2)
{
    param2->unk_00 = *((Strbuf **)(sub_0203F098(param0, 16)));
    param2->unk_04 = *((Strbuf **)(sub_0203F098(param0, 17)));
    param2->unk_08 = param1;
    param2->unk_0C = sub_0203F098(param0, 1);
    param2->unk_10 = sub_0203F098(param0, 6);
    param2->unk_14 = sub_0203F098(param0, 3);
}

static void ov5_021DD610 (UnkStruct_0203CDB0 * param0, UnkStruct_ov5_021DD648 * param1)
{
    if (*(param1->unk_10) == 0) {
        sub_0205D8F4(param0->unk_08, param1->unk_0C, 3);
        sub_0205D944(param1->unk_0C, sub_02025E44(param0->unk_0C));
        *(param1->unk_10) = 1;
    }

    sub_0201ADA4(param1->unk_0C, 15);
}

static void ov5_021DD648 (UnkStruct_ov5_021DD648 * param0, const UnkStruct_0200B144 * param1, u32 param2)
{
    sub_0200B1B8(param1, param2, param0->unk_04);
    sub_0200C388(param0->unk_08, param0->unk_00, param0->unk_04);
}

static void ov5_021DD664 (UnkStruct_ov5_021DD648 * param0, u16 param1, u16 param2, u16 param3, u16 param4)
{
    UnkStruct_02014A84 v0;
    Strbuf * v1;

    sub_02014A84(&v0);
    sub_02014CE0(&v0, param1, param2);
    sub_02014CF8(&v0, 0, param3);
    sub_02014CF8(&v0, 1, param4);

    v1 = sub_02014B34(&v0, 32);

    PLString_Copy(param0->unk_00, v1);
    PLString_Free(v1);
}

static void ov5_021DD6B4 (UnkStruct_ov5_021DD648 * param0, int param1, int param2, int param3, int param4)
{
    *(param0->unk_14) = sub_0205D9CC(param0->unk_0C, param0->unk_00, param1, param2, param3, param4);
}

static void ov5_021DD6DC (UnkStruct_ov5_021DD648 * param0, int param1)
{
    *(param0->unk_14) = sub_0201D738(param0->unk_0C, param1, param0->unk_00, 0, 0, 0, NULL);
}
