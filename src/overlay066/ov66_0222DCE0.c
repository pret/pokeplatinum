#include <nitro.h>
#include <string.h>
#include <ppwlobby/ppw_lobby.h>

#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_021C0794_decl.h"
#include "overlay066/struct_ov66_0222DFF8_decl.h"
#include "overlay066/struct_ov66_02230C90_decl.h"

#include "overlay066/struct_ov66_0222DCE0.h"

#include "unk_020064F0.h"
#include "unk_020067E8.h"
#include "unk_0200D9E8.h"
#include "unk_02017728.h"
#include "unk_02017E74.h"
#include "unk_02099550.h"
#include "overlay066/ov66_0222DCE0.h"
#include "overlay066/ov66_0222DDF0.h"
#include "overlay066/ov66_02230C44.h"

FS_EXTERN_OVERLAY(overlay63);

typedef struct {
    UnkStruct_021C0794 * unk_00;
    UnkStruct_ov66_0222DFF8 * unk_04;
    UnkStruct_ov66_02230C90 * unk_08;
    UnkStruct_0201CD38 * unk_0C;
} UnkStruct_ov66_0222DD90;

static void ov66_0222DDDC(UnkStruct_0201CD38 * param0, void * param1);

int ov66_0222DCE0 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov66_0222DD90 * v0;
    UnkStruct_ov66_0222DCE0 * v1;

    {
        FS_EXTERN_OVERLAY(overlay63);
        sub_02006590(FS_OVERLAY_ID(overlay63), 2);
        sub_02099550();
        sub_020995B4();
    }

    sub_02017FC8(3, 104, 0x5000);

    v0 = sub_0200681C(param0, sizeof(UnkStruct_ov66_0222DD90), 104);
    memset(v0, 0, sizeof(UnkStruct_ov66_0222DD90));

    v1 = sub_02006840(param0);

    v0->unk_00 = v1->unk_04;
    v0->unk_04 = ov66_0222DDF0(v0->unk_00, 104);
    v0->unk_08 = ov66_02230C44(v1->unk_08, v1->unk_04, v1->unk_00, v0->unk_04, 104);

    sub_02017798(NULL, NULL);
    sub_020177A4();

    v0->unk_0C = sub_0200DA3C(ov66_0222DDDC, v0, 0);

    ov66_02230CAC(v0->unk_08);

    return 1;
}

int ov66_0222DD6C (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov66_0222DD90 * v0;
    int v1;

    v0 = sub_0200682C(param0);
    v1 = ov66_02230CB8(v0->unk_08);

    ov66_0222DF58(v0->unk_04);

    if (v1 == 1) {
        return 1;
    }

    return 0;
}

int ov66_0222DD90 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov66_0222DD90 * v0;

    v0 = sub_0200682C(param0);

    sub_0200DA58(v0->unk_0C);
    sub_02017798(NULL, NULL);
    sub_020177A4();

    ov66_02230C90(v0->unk_08);
    ov66_0222DEEC(v0->unk_04);

    sub_02006830(param0);
    sub_0201807C(104);

    {
        FS_EXTERN_OVERLAY(overlay63);
        sub_02006514(FS_OVERLAY_ID(overlay63));
        sub_020995C4();
        sub_02099560();
    }

    return 1;
}

static void ov66_0222DDDC (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov66_0222DD90 * v0;

    v0 = param1;

    ov66_02230CE8(v0->unk_08);
    ov66_0222DFF4(v0->unk_04);
}
