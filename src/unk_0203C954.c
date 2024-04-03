#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "struct_defs/struct_0203A4AC.h"
#include "struct_defs/struct_0203A594.h"
#include "field/field_system.h"

#include "unk_0203C954.h"
#include "unk_0203E880.h"
#include "unk_02054D00.h"
#include "unk_0205DAC8.h"
#include "unk_0205E7D0.h"
#include "unk_02061804.h"

static u8 sub_0203CB18(FieldSystem * param0, const UnkStruct_0203A594 * param1);
static u8 sub_0203CAEC(FieldSystem * param0, const UnkStruct_0203A594 * param1);

static int sub_0203C954 (FieldSystem * param0, int * param1, int * param2)
{
    int v0 = Player_Dir(param0->playerAvatar);

    *param1 = Player_XPos(param0->playerAvatar);
    *param2 = Player_ZPos(param0->playerAvatar);

    switch (v0) {
    case 0:
        *param2 -= 1;
        break;
    case 1:
        *param2 += 1;
        break;
    case 2:
        *param1 -= 1;
        break;
    case 3:
        *param1 += 1;
        break;
    }

    return v0;
}

static u8 sub_0203C9B0 (PlayerAvatar * param0, UnkStruct_02061AB4 * param1)
{
    UnkStruct_02061AB4 * v0 = sub_0205EB3C(param0);

    if (sub_020630DC(v0) == sub_020630DC(param1)) {
        return 1;
    }

    return 0;
}

void sub_0203C9D4 (FieldSystem * param0, UnkStruct_02061AB4 ** param1)
{
    int v0, v1;
    int v2;
    u8 v3;

    v2 = sub_0203C954(param0, &v0, &v1);
    v3 = sub_02054F94(param0, v0, v1);

    if (sub_0205DAE0(v3) == 1) {
        switch (v2) {
        case 0:
            v1 -= 1;
            break;
        case 1:
            v1 += 1;
            break;
        case 2:
            v0 -= 1;
            break;
        case 3:
            v0 += 1;
            break;
        }
    }

    *param1 = sub_0206326C(param0->unk_38, v0, v1, 0);
}

u8 sub_0203CA40 (FieldSystem * param0, UnkStruct_02061AB4 ** param1)
{
    sub_0203C9D4(param0, param1);

    if (*param1 != NULL) {
        if ((sub_02062D9C(*param1) == 1) && (sub_0203C9B0(param0->playerAvatar, *param1) == 1)) {
            return 1;
        }
    }

    return 0;
}

u16 sub_0203CA6C (FieldSystem * param0, void * param1, int param2)
{
    const UnkStruct_0203A594 * v0;
    int v1, v2;
    int v3;

    v0 = (const UnkStruct_0203A594 *)param1;

    sub_0203C954(param0, &v1, &v2);

    for (v3 = 0; v3 < param2; v3++) {
        if ((v1 == v0[v3].unk_04) && (v2 == v0[v3].unk_08)) {
            if (v0[v3].unk_02 == 2) {
                if (sub_0203CAEC(param0, &v0[v3]) == 1) {
                    return v0[v3].unk_00;
                }
            } else {
                if (sub_0203CB18(param0, &v0[v3]) == 1) {
                    return v0[v3].unk_00;
                }
            }
        }
    }

    return 0xffff;
}

static u8 sub_0203CAEC (FieldSystem * param0, const UnkStruct_0203A594 * param1)
{
    if (param1->unk_02 != 2) {
        return 0;
    }

    if (sub_0203F188(param0, sub_0203F2F4(param1->unk_00)) == 1) {
        return 0;
    }

    return 1;
}

static u8 sub_0203CB18 (FieldSystem * param0, const UnkStruct_0203A594 * param1)
{
    if (param1->unk_10 == 4) {
        return 1;
    }

    switch (Player_Dir(param0->playerAvatar)) {
    case 0:
        if ((param1->unk_10 == 0) || (param1->unk_10 == 6)) {
            return 1;
        }
        break;
    case 1:
        if ((param1->unk_10 == 3) || (param1->unk_10 == 6)) {
            return 1;
        }
        break;
    case 2:
        if ((param1->unk_10 == 2) || (param1->unk_10 == 5)) {
            return 1;
        }
        break;
    case 3:
        if ((param1->unk_10 == 1) || (param1->unk_10 == 5)) {
            return 1;
        }
        break;
    }

    return 0;
}

u16 sub_0203CB80 (FieldSystem * param0, void * param1, int param2)
{
    const UnkStruct_0203A594 * v0;
    int v1, v2;
    int v3;

    if (Player_Dir(param0->playerAvatar) != 0) {
        return 0xffff;
    }

    v0 = (const UnkStruct_0203A594 *)param1;
    sub_0203C954(param0, &v1, &v2);

    for (v3 = 0; v3 < param2; v3++) {
        if ((v1 == v0[v3].unk_04) && (v2 == v0[v3].unk_08) && (v0[v3].unk_02 == 1)) {
            return v0[v3].unk_00;
        }
    }

    return 0xffff;
}

u8 sub_0203CBE0 (FieldSystem * param0, UnkStruct_02061AB4 ** param1)
{
    if (Player_Dir(param0->playerAvatar) != 0) {
        return 0;
    }

    if (sub_0203CA40(param0, param1) == 1) {
        u32 v0 = sub_02062920(*param1);

        if ((v0 == 0x5b) || (v0 == 0x5c) || (v0 == 0x5d) || (v0 == 0x5e) || (v0 == 0x5f) || (v0 == 0x60)) {
            return 1;
        }
    }

    return 0;
}

u16 sub_0203CC14 (FieldSystem * param0, void * param1, int param2)
{
    const UnkStruct_0203A4AC * v0;
    int v1, v2;
    int v3;

    v0 = (const UnkStruct_0203A4AC *)param1;
    v1 = Player_XPos(param0->playerAvatar);
    v2 = Player_ZPos(param0->playerAvatar);

    for (v3 = 0; v3 < param2; v3++) {
        if ((v1 >= v0[v3].unk_02) && (v1 < (v0[v3].unk_02 + v0[v3].unk_06)) && (v2 >= v0[v3].unk_04) && (v2 < (v0[v3].unk_04 + v0[v3].unk_08)) && (sub_0203F150(param0, v0[v3].unk_0E) == v0[v3].unk_0C)) {
            return v0[v3].unk_00;
        }
    }

    return 0xffff;
}
