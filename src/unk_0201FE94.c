#include <nitro.h>
#include <string.h>
#include <nnsys.h>

#include "data_021BF67C.h"

#include "struct_defs/struct_02099F80.h"

#include "unk_0201FE94.h"

static int Unk_021C076C;
static int Unk_021C0768;

void sub_0201FE94 (const UnkStruct_02099F80 * param0)
{
    GX_ResetBankForBG();
    GX_ResetBankForBGExtPltt();
    GX_ResetBankForSubBG();
    GX_ResetBankForSubBGExtPltt();
    GX_ResetBankForOBJ();
    GX_ResetBankForOBJExtPltt();
    GX_ResetBankForSubOBJ();
    GX_ResetBankForSubOBJExtPltt();
    GX_ResetBankForTex();
    GX_ResetBankForTexPltt();

    GX_SetBankForBG(param0->unk_00);
    GX_SetBankForBGExtPltt(param0->unk_04);
    GX_SetBankForSubBG(param0->unk_08);
    GX_SetBankForSubBGExtPltt(param0->unk_0C);
    GX_SetBankForOBJ(param0->unk_10);
    GX_SetBankForOBJExtPltt(param0->unk_14);
    GX_SetBankForSubOBJ(param0->unk_18);
    GX_SetBankForSubOBJExtPltt(param0->unk_1C);
    GX_SetBankForTex(param0->unk_20);
    GX_SetBankForTexPltt(param0->unk_24);
}

void sub_0201FF00 (void)
{
    Unk_021C076C = 0;
}

void sub_0201FF0C (u8 param0, u8 param1)
{
    if (param1 == 1) {
        if (Unk_021C076C & param0) {
            return;
        }
    } else {
        if (!(Unk_021C076C & param0)) {
            return;
        }
    }

    Unk_021C076C ^= param0;
    GX_SetVisiblePlane(Unk_021C076C);
}

void sub_0201FF48 (int param0)
{
    Unk_021C076C = param0;
    GX_SetVisiblePlane(Unk_021C076C);
}

void sub_0201FF68 (void)
{
    Unk_021C0768 = 0;
}

void sub_0201FF74 (u8 param0, u8 param1)
{
    if (param1 == 1) {
        if (Unk_021C0768 & param0) {
            return;
        }
    } else {
        if (!(Unk_021C0768 & param0)) {
            return;
        }
    }

    Unk_021C0768 ^= param0;
    GXS_SetVisiblePlane(Unk_021C0768);
}

void sub_0201FFB0 (int param0)
{
    Unk_021C0768 = param0;
    GXS_SetVisiblePlane(Unk_021C0768);
}

void sub_0201FFD0 (void)
{
    GX_DispOn();
    GXS_DispOn();
}

void sub_0201FFE8 (void)
{
    if (Unk_021BF67C.unk_65 == 0) {
        GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);
    } else {
        GX_SetDispSelect(GX_DISP_SELECT_SUB_MAIN);
    }
}

int sub_02020014 (void)
{
    return Unk_021C076C;
}
