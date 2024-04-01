#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_020507E4_decl.h"

#include "struct_defs/struct_0202D7B0.h"
#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_02049FA8.h"
#include "struct_defs/struct_020556C4.h"
#include "struct_defs/struct_0205EC34.h"

#include "unk_02025E08.h"
#include "unk_0202B604.h"
#include "unk_0202D7A8.h"
#include "map_header.h"
#include "unk_0203A6DC.h"
#include "unk_0203A7D8.h"
#include "unk_020507CC.h"
#include "unk_020556C4.h"
#include "unk_0206A8DC.h"
#include "unk_0206AFE0.h"
#include "roaming_pokemon.h"
#include "unk_02070428.h"

static BOOL sub_020705DC(FieldSystem * param0);
static BOOL sub_02070610(FieldSystem * param0);

void sub_02070428 (FieldSystem * param0, BOOL param1)
{
    param0->unk_B8 = param1;
}

void sub_02070430 (FieldSystem * param0)
{
    sub_020705DC(param0);
    sub_0206AF1C(SaveData_Events(param0->unk_0C), 0);

    inline_0204E650_1(SaveData_Events(param0->unk_0C));

    sub_0203A8E8(param0, param0->unk_1C->unk_00);
    sub_0202D9EC(sub_0202D834(param0->unk_0C), 0);

    param0->unk_78.unk_00 = 0;

    if (!sub_0206AE5C(SaveData_Events(param0->unk_0C))) {
        UnkStruct_0202D7B0 * v0;

        v0 = sub_0202D834(param0->unk_0C);
        sub_0206C404(v0, param0->unk_1C->unk_00);
        sub_0206C37C(v0);
    }
}

void sub_02070494 (FieldSystem * param0)
{
    if (param0->unk_B8 == 1) {
        return;
    }

    if (sub_020705DC(param0) == 0) {
        sub_02070610(param0);
    }

    sub_0206AF1C(SaveData_Events(param0->unk_0C), 0);
    sub_0206AE9C(SaveData_Events(param0->unk_0C));

    inline_0204E650_1(SaveData_Events(param0->unk_0C));

    sub_0203A8E8(param0, param0->unk_1C->unk_00);
    sub_0202D9EC(sub_0202D834(param0->unk_0C), 0);

    param0->unk_78.unk_00 = 0;

    {
        UnkStruct_0202D7B0 * v0;

        v0 = sub_0202D834(param0->unk_0C);
        sub_0206C404(v0, param0->unk_1C->unk_00);
    }

    if (!MapHeader_IsCave(param0->unk_1C->unk_00)) {
        UnkStruct_020507E4 * v1 = SaveData_Events(param0->unk_0C);

        sub_0206AECC(v1);
        sub_0206AEFC(v1);
    }

    {
        UnkStruct_0205EC34 * v2 = sub_0203A780(sub_0203A790(param0->unk_0C));

        if ((v2->unk_04 == 0x1) && (MapHeader_IsBikeAllowed(param0->unk_1C->unk_00) == 0)) {
            v2->unk_04 = 0x0;
        } else if (v2->unk_04 == 0x2) {
            v2->unk_04 = 0x0;
        }
    }

    if (MapHeader_IsOnMainMatrix(param0->unk_1C->unk_00)) {
        UnkStruct_020556C4 * v3;

        v3 = sub_0203A76C(sub_0203A790(param0->unk_0C));
        sub_020556E8(v3, param0->unk_1C->unk_08, param0->unk_1C->unk_0C);
    }
}

void sub_0207056C (FieldSystem * param0)
{
    sub_0206AE4C(SaveData_Events(param0->unk_0C));
    sub_0206C354(sub_0202D834(param0->unk_0C));
}

void sub_02070588 (FieldSystem * param0)
{
    sub_0206AE4C(SaveData_Events(param0->unk_0C));
    sub_0206C354(sub_0202D834(param0->unk_0C));
}

void sub_020705A4 (FieldSystem * param0)
{
    sub_0206AE4C(SaveData_Events(param0->unk_0C));
}

void sub_020705B4 (FieldSystem * param0)
{
    UnkStruct_020507E4 * v0 = SaveData_Events(param0->unk_0C);

    sub_0206A974(v0);
    sub_0206B024(v0, 0);
}

void sub_020705CC (FieldSystem * param0)
{
    sub_0206C354(sub_0202D834(param0->unk_0C));
}

static BOOL sub_020705DC (FieldSystem * param0)
{
    int v0 = sub_0203A87C(param0->unk_1C->unk_00);

    if ((v0 != 0) && (sub_0203A920(param0, v0) == 0)) {
        sub_0202C704(param0->unk_9C, param0->unk_1C->unk_00, 32);
        return 1;
    }

    return 0;
}

static BOOL sub_02070610 (FieldSystem * param0)
{
    UnkStruct_02049FA8 * v0 = sub_0203A728(sub_0203A790(param0->unk_0C));

    if (v0->unk_00 != param0->unk_1C->unk_00) {
        sub_0202C5C4(
            SaveData_GetTrainerInfo(param0->unk_0C), param0->unk_9C, param0->unk_1C->unk_00, v0->unk_00, 32);
        return 1;
    }

    return 0;
}
