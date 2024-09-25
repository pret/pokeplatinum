#include "unk_02002B7C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02023350_decl.h"
#include "struct_defs/struct_02002328.h"
#include "struct_defs/struct_02002D18.h"
#include "struct_defs/struct_0201D670.h"
#include "struct_defs/struct_0201D834.h"

#include "heap.h"
#include "render_text.h"
#include "strbuf.h"
#include "unk_02006E3C.h"
#include "unk_0201D670.h"
#include "unk_020232E0.h"

typedef struct {
    UnkStruct_02002328 unk_00;
    void *unk_84[4];
    UnkStruct_02023350 *unk_94[4];
} UnkStruct_02101D4C;

static const struct {
    u16 unk_00;
    u16 unk_02;
} Unk_020E4CD4[] = {
    { 0x0, 0x0 },
    { 0x1, 0x0 },
    { 0x2, 0x0 },
    { 0x3, 0x0 }
};

static const UnkStruct_0201D670 Unk_020E4CE4[] = {
    { 0xB, 0x10, 0x0, 0x0, 0x0, 0x1, 0xF, 0x2 },
    { 0xB, 0x10, 0x0, 0x0, 0x0, 0x1, 0xF, 0x2 },
    { 0xB, 0x10, 0x0, 0x0, 0x0, 0x1, 0xF, 0x2 },
    { 0xB, 0x10, 0x0, 0x0, 0x0, 0x1, 0xF, 0x2 },
    { 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 }
};

static UnkStruct_02101D4C Unk_02101D4C = {
    0x0
};

static UnkStruct_02101D4C *Unk_02101D48 = NULL;

void sub_02002B7C(void)
{
    u32 v0;

    Unk_02101D48 = &Unk_02101D4C;

    for (v0 = 0; v0 < NELEMS(Unk_020E4CD4); v0++) {
        Unk_02101D48->unk_84[v0] = NULL;
        Unk_02101D48->unk_94[v0] = NULL;
    }

    sub_0201D670(Unk_020E4CE4);
}

void sub_02002BB8(int param0, u32 param1)
{
    Unk_02101D48->unk_94[param0] = sub_020232E0(14, Unk_020E4CD4[param0].unk_00, 1, Unk_020E4CD4[param0].unk_02, param1);
}

void sub_02002BEC(int param0, u32 param1)
{
    GF_ASSERT(param0 < 4);
    GF_ASSERT(Unk_02101D48->unk_94[param0]);

    sub_02023330(Unk_02101D48->unk_94[param0], 0, param1);
}

void sub_02002C28(int param0)
{
    GF_ASSERT(param0 < 4);
    GF_ASSERT(Unk_02101D48->unk_94[param0]);

    sub_02023330(Unk_02101D48->unk_94[param0], 1, 0);
}

void sub_02002C60(int param0)
{
    GF_ASSERT(param0 < 4);

    if (Unk_02101D48->unk_84[param0] != NULL) {
        int v0;

        for (v0 = 0; v0 < NELEMS(Unk_020E4CD4); v0++) {
            if (v0 == param0) {
                continue;
            }

            if ((Unk_020E4CD4[v0].unk_00 == Unk_020E4CD4[param0].unk_00) && (Unk_02101D48->unk_94[v0] != NULL)) {
                Unk_02101D48->unk_84[v0] = Unk_02101D48->unk_84[param0];
                break;
            }
        }

        if (v0 == NELEMS(Unk_020E4CD4)) {
            Heap_FreeToHeap(Unk_02101D48->unk_84[param0]);
            Unk_02101D48->unk_84[param0] = NULL;
        }
    }

    if (Unk_02101D48->unk_94[param0] != NULL) {
        sub_02023318(Unk_02101D48->unk_94[param0]);
        Unk_02101D48->unk_94[param0] = NULL;
    }
}

const UnkStruct_02002328 *sub_02002CFC(int param0, u16 param1)
{
    sub_020234A0(Unk_02101D48->unk_94[param0], param1, &Unk_02101D48->unk_00);
    return &(Unk_02101D48->unk_00);
}

int sub_02002D18(int param0, UnkStruct_0201D834 *param1)
{
    UnkStruct_02002D18 *v0;

    v0 = (UnkStruct_02002D18 *)&(param1->unk_20[0]);

    if (!v0->unk_01_7) {
        v0->unk_00_0 = param0;
        v0->unk_01_7 = 1;
    }

    return sub_02002328(param1);
}

u32 sub_02002D48(int param0, const u16 *param1, u32 param2)
{
    GF_ASSERT(Unk_02101D48->unk_94[param0] != NULL);
    return sub_02023620(Unk_02101D48->unk_94[param0], param1, param2);
}

u32 sub_02002D7C(int param0, const Strbuf *param1, u32 param2)
{
    GF_ASSERT(Unk_02101D48->unk_94[param0] != NULL);
    return sub_02023620(Unk_02101D48->unk_94[param0], Strbuf_GetData(param1), param2);
}

u32 sub_02002DB4(int param0, Strbuf *param1, Strbuf *param2)
{
    GF_ASSERT(Unk_02101D48->unk_94[param0] != NULL);

    Strbuf_Clear(param2);
    Strbuf_ConcatTrainerName(param2, param1);

    return sub_0202366C(Unk_02101D48->unk_94[param0], Strbuf_GetData(param2));
}

u8 sub_02002DF8(u8 param0, u8 param1)
{
    u8 v0 = 0;

    switch (param1) {
    case 0:
        v0 = Unk_020E4CE4[param0].unk_00;
        break;
    case 1:
        v0 = Unk_020E4CE4[param0].unk_01;
        break;
    case 2:
        v0 = Unk_020E4CE4[param0].unk_02;
        break;
    case 3:
        v0 = Unk_020E4CE4[param0].unk_03;
        break;
    case 4:
        v0 = Unk_020E4CE4[param0].unk_04;
        break;
    case 5:
        v0 = Unk_020E4CE4[param0].unk_05;
        break;
    case 6:
        v0 = Unk_020E4CE4[param0].unk_06;
        break;
    case 7:
        v0 = Unk_020E4CE4[param0].unk_07;
        break;
    }

    return v0;
}

void sub_02002E7C(u32 param0, u32 param1, u32 param2)
{
    sub_02006E84(14, 6, (int)param0, param1, 0x20, param2);
}

void sub_02002E98(u32 param0, u32 param1, u32 param2)
{
    sub_02006E84(14, 7, (int)param0, param1, 0x20, param2);
}

u32 sub_02002EB4(int param0, const Strbuf *param1, u32 param2)
{
    GF_ASSERT(Unk_02101D48->unk_94[param0] != NULL);
    return sub_020236D0(Unk_02101D48->unk_94[param0], Strbuf_GetData(param1), param2);
}

u32 sub_02002EEC(int param0, const Strbuf *param1, u32 param2, u32 param3)
{
    u32 v0 = sub_02002D7C(param0, param1, param2);

    return (v0 < param3) ? (param3 - v0) / 2 : 0;
}

u32 sub_02002F04(int param0, const Strbuf *param1)
{
    GF_ASSERT(Unk_02101D48->unk_94[param0] != NULL);
    return sub_02023738(Unk_02101D48->unk_94[param0], Strbuf_GetData(param1));
}
