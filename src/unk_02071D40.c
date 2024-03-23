#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02025E5C_decl.h"
#include "trainer_info.h"
#include "struct_decls/struct_0202855C_decl.h"
#include "struct_decls/struct_0202C834_decl.h"
#include "struct_decls/struct_0202C844_decl.h"
#include "struct_decls/struct_0202CD88_decl.h"
#include "struct_decls/struct_0203068C_decl.h"
#include "struct_decls/struct_020507E4_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "unk_020244AC.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_02072014.h"

#include "unk_020021B0.h"
#include "heap.h"
#include "unk_02025E08.h"
#include "trainer_info.h"
#include "unk_0202631C.h"
#include "unk_0202854C.h"
#include "unk_0202C7FC.h"
#include "unk_0202CBE4.h"
#include "unk_0202CD50.h"
#include "unk_0203061C.h"
#include "unk_0203CC84.h"
#include "unk_0203D1B8.h"
#include "unk_020507CC.h"
#include "unk_020508D4.h"
#include "unk_020559DC.h"
#include "unk_0205B33C.h"
#include "unk_0206A8DC.h"
#include "unk_02071D40.h"

typedef struct {
    int unk_00;
    UnkStruct_02072014 * unk_04;
} UnkStruct_02072204;

static void sub_02072014(const u8 param0, const u8 param1, const u8 param2, const u8 param3, const u8 param4, UnkStruct_02072014 * param5);
static void sub_02072038(const u16 param0, const u8 param1, const u16 * param2, const u32 param3, const u32 param4, const BOOL param5, const u32 param6, UnkStruct_02072014 * param7);
static void sub_0207207C(const u8 param0, const UnkStruct_02025E5C * param1, const RTCDate * param2, const RTCDate * param3, const RTCTime * param4, const u8 param5, UnkStruct_02072014 * param6);
static void sub_02072120(const u32 param0, const u32 param1, const u32 param2, const u32 param3, const u8 * param4, UnkStruct_02072014 * param5);
static void sub_0207216C(TrainerInfo * param0, UnkStruct_0203CDB0 * param1, UnkStruct_02072014 * param2);
static BOOL sub_02072230(UnkStruct_020508D4 * param0);

void sub_02071D40 (const u8 param0, const u8 param1, const u8 param2, const u8 param3, UnkStruct_0203CDB0 * param4, UnkStruct_02072014 * param5)
{
    TrainerInfo * v0;
    UnkStruct_0202CD88 * v1;
    SaveData * v2;

    v2 = sub_0203D174(param4);
    v0 = sub_02025E38(v2);
    v1 = sub_0202CD88(v2);

    param5->unk_05 = param3;

    {
        u8 v3;

        v3 = sub_02071F28(param4);
        sub_02072014(param0, GAME_VERSION, v3, param2, TrainerInfo_RegionCode(v0), param5);
    }

    sub_02072038(TrainerInfo_ID_LowHalf(v0), TrainerInfo_Gender(v0), TrainerInfo_Name(v0), TrainerInfo_Money(v0), sub_02026E48(sub_02027560(param4->unk_0C)), sub_02027520(sub_02027560(param4->unk_0C)), sub_0202D034(v1), param5);

    {
        RTCDate v4;
        RTCDate v5;
        RTCTime v6;
        UnkStruct_02025E5C * v7;

        v7 = sub_02025E5C(v2);

        sub_02055BF4(param4, &v4, &v6);
        sub_02055C10(param4, &v5, &v6);
        sub_0207207C(sub_0206A954(SaveData_Events(param4->unk_0C)), v7, &v4, &v5, &v6, param1, param5);
    }

    {
        u32 v8, v9, v10, v11;
        UnkStruct_0202C834 * v12;

        v12 = sub_0202C834(param4->unk_0C);
        v8 = sub_0202CFB8(v1, (((70 + 1)) + 20)) + sub_0202CFB8(v1, (1 + 18)) + sub_0202CFB8(v1, (1 + 23)) + sub_0202CFB8(v1, (1 + 19)) + sub_0202CFB8(v1, (1 + 24)) + sub_0202CFB8(v1, (1 + 31));
        v9 = sub_0202CFB8(v1, (1 + 20)) + sub_0202CFB8(v1, (1 + 25));
        v10 = sub_0202CFB8(v1, (1 + 21)) + sub_0202CFB8(v1, (1 + 26));
        v11 = sub_0202CFB8(v1, (1 + 18)) + sub_0202CFB8(v1, (1 + 23));

        sub_02072120(v8, v9, v10, v11, sub_0202C840(v12), param5);
    }

    sub_0207216C(v0, param4, param5);

    {
        int v13, v14 = 0;
        u8 * v15 = (u8 *)param5;

        for (v13 = 0; v13 < sizeof(UnkStruct_02072014); v13++) {
            v14 ^= v15[v13];
        }

        param5->unk_668 = v14;
    }

    param5->unk_66A = 0;
}

UnkStruct_02072014 * sub_02071F04 (const u16 param0)
{
    UnkStruct_02072014 * v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_02072014));

    memset(v0, 0, sizeof(UnkStruct_02072014));
    return v0;
}

void sub_02071F20 (UnkStruct_02072014 * param0)
{
    Heap_FreeToHeap(param0);
}

u8 sub_02071F28 (UnkStruct_0203CDB0 * param0)
{
    u8 v0;
    SaveData * v1;
    UnkStruct_0202CD88 * v2;
    UnkStruct_020507E4 * v3;
    UnkStruct_0202855C * v4;
    UnkStruct_0203068C * v5;

    v1 = sub_0203D174(param0);
    v2 = sub_0202CD88(v1);
    v3 = SaveData_Events(v1);
    v4 = sub_020298A0(v1);
    v5 = sub_0203068C(v1);
    v0 = 0;

    if (sub_0206A954(v3)) {
        v0++;
    }

    if (sub_02026EF4(sub_02027560(v1))) {
        v0++;
    }

    if ((sub_02030698(v5, 0, 0xff) >= 100) || (sub_02030698(v5, 2, 0xff) >= 100) || (sub_02030698(v5, 4, 0xff) >= 100) || (sub_02030698(v5, 6, 0xff) >= 100) || (sub_02030698(v5, 8, 0xff) >= 100)) {
        v0++;
    }

    if (sub_0206AAA8(v3, 0) || sub_0206AAA8(v3, 1) || sub_0206AAA8(v3, 3) || sub_0206AAA8(v3, 4) || sub_0206AAA8(v3, 2)) {
        v0++;
    }

    if (sub_020294C0(v4) == 1) {
        v0++;
    }

    return v0;
}

static void sub_02072014 (const u8 param0, const u8 param1, const u8 param2, const u8 param3, const u8 param4, UnkStruct_02072014 * param5)
{
    param5->unk_04_0 = param0;
    param5->unk_00 = param1;
    param5->unk_03 = param2;
    param5->unk_01 = param4;
    param5->unk_02 = param3;
}

static void sub_02072038 (const u16 param0, const u8 param1, const u16 * param2, const u32 param3, const u32 param4, const BOOL param5, const u32 param6, UnkStruct_02072014 * param7)
{
    param7->unk_28 = param0;
    param7->unk_04_2 = param1;

    sub_020021D0(param7->unk_08, param2, 7 + 1);

    param7->unk_1C = param3;
    param7->unk_20 = param4;
    param7->unk_04_3 = param5;
    param7->unk_24 = param6;
}

static void sub_0207207C (const u8 param0, const UnkStruct_02025E5C * param1, const RTCDate * param2, const RTCDate * param3, const RTCTime * param4, const u8 param5, UnkStruct_02072014 * param6)
{
    param6->unk_2A = sub_0202CC58(param1);
    param6->unk_2E = sub_0202CC5C(param1);
    param6->unk_2F = param2->year;
    param6->unk_30 = param2->month;
    param6->unk_31 = param2->day;

    if (param0) {
        param6->unk_32 = param3->year;
        param6->unk_33 = param3->month;
        param6->unk_34 = param3->day;
        param6->unk_2C = param4->hour;
        param6->unk_35 = param4->minute;
    } else {
        param6->unk_32 = 0;
        param6->unk_33 = 0;
        param6->unk_34 = 0;
        param6->unk_2C = 0;
        param6->unk_35 = 0;
    }

    param6->unk_04_1 = param5;

    if (param5) {
        param6->unk_18 = param1;
    } else {
        param6->unk_18 = NULL;
    }
}

static void sub_02072120 (const u32 param0, const u32 param1, const u32 param2, const u32 param3, const u8 * param4, UnkStruct_02072014 * param5)
{
    param5->unk_38 = param0;

    if (param5->unk_38 > 999999) {
        param5->unk_38 = 999999;
    }

    param5->unk_3C = param1;
    param5->unk_40 = param2;

    if (param5->unk_3C > 9999) {
        param5->unk_3C = 9999;
    }

    if (param5->unk_40 > 9999) {
        param5->unk_40 = 9999;
    }

    param5->unk_44 = param3;

    if (param5->unk_44 > 99999) {
        param5->unk_44 = 99999;
    }

    MI_CpuCopy8(param4, param5->unk_68, 24 * 8 * 8);
}

static void sub_0207216C (TrainerInfo * param0, UnkStruct_0203CDB0 * param1, UnkStruct_02072014 * param2)
{
    u8 v0;
    UnkStruct_0202C834 * v1;
    UnkStruct_0202C844 * v2;

    v1 = sub_0202C834(param1->unk_0C);
    v2 = sub_0202C844(v1);

    for (v0 = 0; v0 < 8; v0++) {
        if (TrainerInfo_HasBadge(param0, v0)) {
            param2->unk_48[v0].unk_00_0 = 1;
        } else {
            param2->unk_48[v0].unk_00_0 = 0;
        }

        param2->unk_48[v0].unk_00_1 = sub_0202C848(v0, v2);
    }
}

void sub_020721D4 (UnkStruct_0203CDB0 * param0, const UnkStruct_02072014 * param1)
{
    u8 v0;
    UnkStruct_0202C834 * v1;
    UnkStruct_0202C844 * v2;

    v1 = sub_0202C834(param0->unk_0C);
    v2 = sub_0202C844(v1);

    for (v0 = 0; v0 < 8; v0++) {
        sub_0202C850(v0, param1->unk_48[v0].unk_00_1, v2);
    }
}

void sub_02072204 (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_02072204 * v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_02072204));

    v0->unk_00 = 0;
    v0->unk_04 = (UnkStruct_02072014 *)sub_0205C17C(param0->unk_7C);

    sub_02050944(param0->unk_10, sub_02072230, v0);
}

static BOOL sub_02072230 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_02072204 * v1 = sub_02050A64(param0);

    switch (v1->unk_00) {
    case 0:
        sub_0205C214(v0->unk_7C);
        v1->unk_00 = 1;
    case 1:
        if (v1->unk_04->unk_66A != 0) {
            v1->unk_00 = 10;
        }
        break;
    case 10:
        sub_0203E09C(v0, v1->unk_04);
        v1->unk_00 = 11;
        break;
    case 11:
        if (!sub_020509B4(v0)) {
            sub_0205C1F0(v0->unk_7C);
            Heap_FreeToHeap(v1);
            return 1;
        }
        break;
    }

    return 0;
}
