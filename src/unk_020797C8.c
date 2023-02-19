#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_plstring_decl.h"

#include "struct_defs/struct_02073C74_sub1.h"

#include "unk_0200AC5C.h"
#include "plstring.h"
#include "unk_020244AC.h"
#include "unk_02073C2C.h"
#include "unk_020797C8.h"

typedef struct UnkStruct_020797DC_t {
    u32 unk_00;
    UnkStruct_02073C74_sub1 unk_04[18][30];
    u16 unk_10E4[18][20];
    u8 unk_13B4[18];
    u8 unk_13C6;
} UnkStruct_020797DC;

static void sub_020797DC(UnkStruct_020797DC * param0);

void sub_020797C8 (UnkStruct_020797DC * param0)
{
    sub_020797DC(param0);
    sub_02024804();
}

u32 sub_020797D4 (void)
{
    return sizeof(UnkStruct_020797DC);
}

static void sub_020797DC (UnkStruct_020797DC * param0)
{
    u32 v0, v1;
    UnkStruct_0200B144 * v2;

    for (v0 = 0; v0 < 18; v0++) {
        for (v1 = 0; v1 < (5 * 6); v1++) {
            sub_02073C54(&(param0->unk_04[v0][v1]));
        }
    }

    for (v0 = 0, v1 = 0; v0 < 18; v0++) {
        param0->unk_13B4[v0] = v1++;

        if (v1 >= 16) {
            v1 = 0;
        }
    }

    param0->unk_13C6 = 0;
    v2 = sub_0200B144(1, 26, 18, 0);

    if (v2) {
        for (v0 = 0; v0 < 18; v0++) {
            sub_0200B240(v2, 6 + v0, param0->unk_10E4[v0]);
        }

        sub_0200B190(v2);
    }

    param0->unk_00 = 0;
}

BOOL sub_02079868 (UnkStruct_020797DC * param0, UnkStruct_02073C74_sub1 * param1)
{
    u32 v0;

    v0 = param0->unk_00;

    do {
        sub_0207896C(param1);

        if (sub_020798A0(param0, v0, param1)) {
            sub_02024804();
            return 1;
        }

        if (++v0 >= 18) {
            v0 = 0;
        }
    } while (v0 != param0->unk_00);

    return 0;
}

BOOL sub_020798A0 (UnkStruct_020797DC * param0, u32 param1, UnkStruct_02073C74_sub1 * param2)
{
    u32 v0;

    sub_0207896C(param2);
    sub_02077ADC(param2, 0);

    if (param1 == 0xffffffff) {
        param1 = param0->unk_00;
    }

    for (v0 = 0; v0 < (5 * 6); v0++) {
        if (sub_02074570(&(param0->unk_04[param1][v0]), 5, NULL) == 0) {
            param0->unk_04[param1][v0] = *param2;
            sub_02024804();
            return 1;
        }
    }

    return 0;
}

BOOL sub_02079914 (UnkStruct_020797DC * param0, u32 param1, u32 param2, UnkStruct_02073C74_sub1 * param3)
{
    sub_0207896C(param3);
    sub_02077ADC(param3, 0);

    if (param1 == 0xffffffff) {
        param1 = param0->unk_00;
    }

    if ((param1 < 18) && (param2 < (5 * 6))) {
        param0->unk_04[param1][param2] = *param3;
        sub_02024804();
        return 1;
    } else {
        GF_ASSERT(0);
    }

    return 0;
}

void sub_02079968 (UnkStruct_020797DC * param0, u32 param1, u32 param2)
{
    if (param1 == 0xffffffff) {
        param1 = param0->unk_00;
    }

    if ((param2 < (5 * 6)) && (param1 < 18)) {
        sub_02073C54(&(param0->unk_04[param1][param2]));
        sub_02024804();
    } else {
        GF_ASSERT(0);
    }
}

u32 sub_0207999C (const UnkStruct_020797DC * param0)
{
    return param0->unk_00;
}

u32 sub_020799A0 (const UnkStruct_020797DC * param0)
{
    int v0, v1;

    v0 = param0->unk_00;

    while (TRUE) {
        for (v1 = 0; v1 < (5 * 6); v1++) {
            if (sub_02074570((UnkStruct_02073C74_sub1 *)(&(param0->unk_04[v0][v1])), 172, NULL) == 0) {
                return v0;
            }
        }

        if (++v0 >= 18) {
            v0 = 0;
        }

        if (v0 == param0->unk_00) {
            break;
        }
    }

    return(18);
}

BOOL sub_020799F0 (const UnkStruct_020797DC * param0, int * param1, int * param2)
{
    int v0, v1;

    if (*param1 == 0xffffffff) {
        *param1 = param0->unk_00;
    }

    v0 = *param1;
    v1 = *param2;

    while (TRUE) {
        for ( ; v1 < (5 * 6); v1++) {
            if (sub_02074570((UnkStruct_02073C74_sub1 *)(&(param0->unk_04[v0][v1])), 172, NULL) == 0) {
                *param1 = v0;
                *param2 = v1;
                return 1;
            }
        }

        if (++v0 >= 18) {
            v0 = 0;
        }

        if (v0 == (*param1)) {
            break;
        }

        v1 = 0;
    }

    return(18);
}

u32 sub_02079A50 (const UnkStruct_020797DC * param0)
{
    int v0, v1;
    u32 v2;

    v2 = 0;

    for (v0 = 0; v0 < 18; v0++) {
        for (v1 = 0; v1 < (5 * 6); v1++) {
            if (sub_02074570((UnkStruct_02073C74_sub1 *)(&(param0->unk_04[v0][v1])), 172, NULL) != 0) {
                v2++;
            }
        }
    }

    return v2;
}

void sub_02079A94 (UnkStruct_020797DC * param0, u32 param1)
{
    if (param1 < 18) {
        param0->unk_00 = param1;
        sub_02024804();
    } else {
        GF_ASSERT(0);
    }
}

u32 sub_02079AA8 (const UnkStruct_020797DC * param0, u32 param1)
{
    if (param1 < 18) {
        return param0->unk_13B4[param1];
    } else {
        GF_ASSERT(0);
        return 0;
    }
}

void sub_02079AC4 (UnkStruct_020797DC * param0, u32 param1, u32 param2)
{
    if (param1 == 0xffffffff) {
        param1 = param0->unk_00;
    }

    if ((param1 < 18) && (param2 < (16 + 8))) {
        if (param2 >= 16) {
            param2 += 8;
        }

        param0->unk_13B4[param1] = param2;
        sub_02024804();
    } else {
        GF_ASSERT(0);
    }
}

void sub_02079AF4 (const UnkStruct_020797DC * param0, u32 param1, PLString * param2)
{
    if (param1 == 0xffffffff) {
        param1 = param0->unk_00;
    }

    if (param1 < 18) {
        PLString_FillWithChars(param2, param0->unk_10E4[param1]);
    } else {
        GF_ASSERT(0);
    }
}

void sub_02079B24 (UnkStruct_020797DC * param0, u32 param1, const PLString * param2)
{
    if (param1 == 0xffffffff) {
        param1 = param0->unk_00;
    }

    if (param1 < 18) {
        PLString_Dump(param2, param0->unk_10E4[param1], 20);
        sub_02024804();
    }
}

u32 sub_02079B54 (const UnkStruct_020797DC * param0, u32 param1)
{
    if (param1 == 0xffffffff) {
        param1 = param0->unk_00;
    }

    if (param1 < 18) {
        int v0;
        u32 v1 = 0;

        for (v0 = 0; v0 < (5 * 6); v0++) {
            if (sub_02074570((UnkStruct_02073C74_sub1 *)(&(param0->unk_04[param1][v0])), 172, NULL)) {
                v1++;
            }
        }

        return v1;
    } else {
        GF_ASSERT(0);
    }

    return 0;
}

u32 sub_02079B98 (const UnkStruct_020797DC * param0, u32 param1)
{
    if (param1 == 0xffffffff) {
        param1 = param0->unk_00;
    }

    if (param1 < 18) {
        int v0;
        u32 v1 = 0;

        for (v0 = 0; v0 < (5 * 6); v0++) {
            if (sub_02074570((UnkStruct_02073C74_sub1 *)(&(param0->unk_04[param1][v0])), 172, NULL)) {
                if (sub_02074570((UnkStruct_02073C74_sub1 *)(&(param0->unk_04[param1][v0])), 76, NULL) == 0) {
                    v1++;
                }
            }
        }

        return v1;
    } else {
        GF_ASSERT(0);
    }

    return 0;
}

u32 sub_02079BEC (const UnkStruct_020797DC * param0)
{
    u32 v0, v1;

    for (v1 = 0, v0 = 0; v1 < 18; v1++) {
        v0 += sub_02079B98(param0, v1);
    }

    return v0;
}

u32 sub_02079C08 (const UnkStruct_020797DC * param0, u32 param1, u32 param2, int param3, void * param4)
{
    GF_ASSERT((param1 < 18) || (param1 == 0xffffffff));
    GF_ASSERT(param2 < (5 * 6));

    if (param1 == 0xffffffff) {
        param1 = param0->unk_00;
    }

    return sub_02074570((UnkStruct_02073C74_sub1 *)(&param0->unk_04[param1][param2]), param3, param4);
}

void sub_02079C50 (UnkStruct_020797DC * param0, u32 param1, u32 param2, int param3, void * param4)
{
    GF_ASSERT((param1 < 18) || (param1 == 0xffffffff));
    GF_ASSERT(param2 < (5 * 6));

    if (param1 == 0xffffffff) {
        param1 = param0->unk_00;
    }

    sub_02074C60((UnkStruct_02073C74_sub1 *)(&param0->unk_04[param1][param2]), param3, param4);
    sub_02024804();
}

UnkStruct_02073C74_sub1 * sub_02079C9C (const UnkStruct_020797DC * param0, u32 param1, u32 param2)
{
    GF_ASSERT(((param1 < 18) || (param1 == 0xffffffff)));
    GF_ASSERT((param2 < (5 * 6)));

    if (param1 == 0xffffffff) {
        param1 = param0->unk_00;
    }

    return (UnkStruct_02073C74_sub1 *)&(param0->unk_04[param1][param2]);
}

void sub_02079CD8 (UnkStruct_020797DC * param0, u32 param1)
{
    GF_ASSERT(param1 < 8);

    param0->unk_13C6 |= (1 << param1);
    sub_02024804();
}

BOOL sub_02079CFC (const UnkStruct_020797DC * param0, u32 param1)
{
    GF_ASSERT(param1 < 8);

    return (param0->unk_13C6 & (1 << param1)) != 0;
}

u32 sub_02079D20 (const UnkStruct_020797DC * param0)
{
    u32 v0, v1;

    for (v0 = 0, v1 = 0; v0 < 8; v0++) {
        if (sub_02079CFC(param0, v0)) {
            v1++;
        }
    }

    return v1;
}
