#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_decls/struct_02073C74_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_0203CDB0.h"

#include "heap.h"
#include "unk_0201D15C.h"
#include "unk_02025E08.h"
#include "unk_02025E68.h"
#include "unk_020329E0.h"
#include "unk_02034198.h"
#include "unk_020508D4.h"
#include "unk_0205DFC4.h"
#include "unk_02061804.h"
#include "unk_02073C2C.h"
#include "party.h"
#include "overlay004/ov4_021D0D80.h"

typedef struct {
    UnkStruct_02061AB4 * unk_00;
    fx32 unk_04;
    fx32 unk_08;
    u16 unk_0C;
    u16 unk_0E;
    u16 unk_10;
} UnkStruct_0205E268;

typedef struct {
    UnkStruct_02061AB4 * unk_00;
    u16 unk_04;
    u16 unk_06;
    u8 unk_08;
    u8 unk_09;
} UnkStruct_0205E3AC;

u16 sub_0205DFC4(u32 param0);
u16 sub_0205E060(u16 param0);
u16 sub_0205E078(u16 param0, u16 param1);
u16 sub_0205E0E4(u16 param0, u16 param1);
int sub_0205E430(u8 param0, u8 param1);
int sub_0205E45C(u8 param0, u8 param1);
int sub_0205E488(u8 param0, u8 param1);
int sub_0205E4B4(u8 param0, u8 param1);
int sub_0205E4E0(u8 param0, u8 param1);
int sub_0205E50C(u8 param0);
int sub_0205E534(u8 param0);
int sub_0205E55C(u8 param0);
int sub_0205E584(u8 param0);
int sub_0205E5B4(u8 param0, u8 param1);
int sub_0205E5E0(u8 param0);
int sub_0205E608(u8 param0);
int sub_0205E630(u8 param0);
int sub_0205E658(u8 param0);
int sub_0205E680(u8 param0);
int sub_0205E6A8(u32 param0);
u8 sub_0205E6B8(void);
u8 sub_0205E6D8(UnkStruct_021C0794 * param0);
int sub_0205E700(u8 param0);
int sub_0205E728(u8 param0);
int sub_0205E750(u8 param0);
int sub_0205E790(u8 param0);

u16 sub_0205DFC4 (u32 param0)
{
    if (param0 / 10 == 0) {
        return 1;
    } else if (param0 / 100 == 0) {
        return 2;
    } else if (param0 / 1000 == 0) {
        return 3;
    } else if (param0 / 10000 == 0) {
        return 4;
    } else if (param0 / 100000 == 0) {
        return 5;
    } else if (param0 / 1000000 == 0) {
        return 6;
    } else if (param0 / 10000000 == 0) {
        return 7;
    } else if (param0 / 100000000 == 0) {
        return 8;
    }

    return 1;
}

u16 sub_0205E060 (u16 param0)
{
    if ((param0 >= 328) && (param0 <= 427)) {
        return 1;
    }

    return 0;
}

u16 sub_0205E078 (u16 param0, u16 param1)
{
    if (param0 <= 15) {
        return 6;
    }

    if (param0 <= 30) {
        return 7;
    }

    if (param0 <= 45) {
        return 8;
    }

    if (param0 <= 60) {
        return 9;
    }

    if (param0 <= 80) {
        return 10;
    }

    if (param0 <= 100) {
        return 11;
    }

    if (param0 <= 120) {
        return 12;
    }

    if (param0 <= 140) {
        return 13;
    }

    if (param0 <= 160) {
        return 14;
    }

    if (param0 <= 180) {
        return 15;
    }

    if (param0 <= 200) {
        return 16;
    }

    if (param0 <= 209) {
        return 17;
    }

    if (param1) {
        return 4;
    } else {
        return 5;
    }
}

u16 sub_0205E0E4 (u16 param0, u16 param1)
{
    if (param0 <= 39) {
        return 22;
    }

    if (param0 <= 59) {
        return 23;
    }

    if (param0 <= 89) {
        return 24;
    }

    if (param0 <= 119) {
        return 25;
    }

    if (param0 <= 149) {
        return 26;
    }

    if (param0 <= 189) {
        return 27;
    }

    if (param0 <= 229) {
        return 28;
    }

    if (param0 <= 269) {
        return 29;
    }

    if (param0 <= 309) {
        return 30;
    }

    if (param0 <= 349) {
        return 31;
    }

    if (param0 <= 379) {
        return 32;
    }

    if (param0 <= 409) {
        return 33;
    }

    if (param0 <= 429) {
        if (param1) {
            return 35;
        } else {
            return 34;
        }
    }

    if (param0 <= 449) {
        return 36;
    }

    if (param0 <= 459) {
        return 37;
    }

    if (param0 <= 469) {
        return 38;
    }

    if (param0 <= 475) {
        return 39;
    }

    if (param0 <= 481) {
        return 40;
    }

    if (param1) {
        return 42;
    } else {
        return 41;
    }
}

u16 sub_0205E1B4 (UnkStruct_021C0794 * param0)
{
    Pokemon * v0;
    u16 v1, v2;

    v2 = Party_GetCurrentCount(Party_GetFromSavedata(param0));

    for (v1 = 0; v1 < v2; v1++) {
        v0 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(param0), v1);

        if (sub_02074470(v0, 76, NULL) == 0) {
            return v1;
        }
    }

    return 0;
}

BOOL sub_0205E1F8 (UnkStruct_021C0794 * param0)
{
    int v0, v1, v2, v3 = 0;
    Party * v4;
    static const u16 v5[] = {377, 378, 379};
    u16 v6[6];

    v4 = Party_GetFromSavedata(param0);
    v2 = Party_GetCurrentCount(v4);

    for (v0 = 0; v0 < v2; v0++) {
        v6[v0] = sub_02074470(Party_GetPokemonBySlotIndex(v4, v0), 5, NULL);
    }

    for (v0 = 0; v0 < 3; v0++) {
        for (v1 = 0; v1 < v2; v1++) {
            if (v6[v1] == v5[v0]) {
                ++v3;
                break;
            }
        }
    }

    if (v3 == 3) {
        return 1;
    }

    return 0;
}

static BOOL sub_0205E268 (UnkStruct_020508D4 * param0)
{
    VecFx32 v0;
    UnkStruct_0203CDB0 * v1 = sub_02050A60(param0);
    UnkStruct_0205E268 * v2 = sub_02050A64(param0);

    v0.x = FX32_CONST(8);
    v0.z = FX32_CONST(8);
    v0.x = FX_Mul(sub_0201D15C(v2->unk_0E), v2->unk_04);
    v0.z = FX_Mul(sub_0201D15C(v2->unk_0E), v2->unk_08);
    v0.y = 0;

    sub_020630AC(v2->unk_00, &v0);

    v2->unk_0E += v2->unk_10;

    if (v2->unk_0E >= 360) {
        v2->unk_0E = 0;
        v2->unk_0C--;
    }

    if (v2->unk_0C == 0) {
        v0.x = v0.y = v0.z = 0;
        sub_020630AC(v2->unk_00, &v0);
        Heap_FreeToHeap(v2);
        return 1;
    }

    return 0;
}

void sub_0205E318 (UnkStruct_020508D4 * param0, UnkStruct_02061AB4 * param1, u16 param2, u16 param3, u16 param4, u16 param5)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_0205E268 * v1 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_0205E268));

    MI_CpuClear8(v1, sizeof(UnkStruct_0205E268));

    v1->unk_04 = FX32_CONST(param4);
    v1->unk_08 = FX32_CONST(param5);
    v1->unk_0C = param2;
    v1->unk_10 = param3;
    v1->unk_00 = param1;

    sub_02050944(v0->unk_10, sub_0205E268, v1);
}

static BOOL sub_0205E3AC (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_0205E3AC * v1 = sub_02050A64(param0);

    sub_02062D64(v1->unk_00, v1->unk_09);

    if (v1->unk_08++ >= v1->unk_06) {
        v1->unk_09 ^= 1;
        v1->unk_08 = 0;

        if (v1->unk_04-- == 0) {
            Heap_FreeToHeap(v1);
            return 1;
        }
    }

    return 0;
}

void sub_0205E3F4 (UnkStruct_020508D4 * param0, UnkStruct_02061AB4 * param1, u16 param2, u16 param3)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_0205E3AC * v1 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_0205E3AC));

    MI_CpuClear8(v1, sizeof(UnkStruct_0205E3AC));

    v1->unk_04 = param2;
    v1->unk_06 = param3;
    v1->unk_00 = param1;
    v1->unk_09 = 0;

    sub_02050944(v0->unk_10, sub_0205E3AC, v1);
}

int sub_0205E430 (u8 param0, u8 param1)
{
    int v0;

    switch (param1) {
    case 0:
        v0 = 11;
        break;
    case 1:
        v0 = 19;
        break;
    case 2:
        v0 = 27;
        break;
    case 3:
        v0 = 115;
        break;
    }

    return v0 + (param0 * 4);
}

int sub_0205E45C (u8 param0, u8 param1)
{
    int v0;

    switch (param1) {
    case 0:
        v0 = 10;
        break;
    case 1:
        v0 = 18;
        break;
    case 2:
        v0 = 26;
        break;
    case 3:
        v0 = 114;
        break;
    }

    return v0 + (param0 * 4);
}

int sub_0205E488 (u8 param0, u8 param1)
{
    int v0;

    switch (param1) {
    case 0:
        v0 = 13;
        break;
    case 1:
        v0 = 21;
        break;
    case 2:
        v0 = 29;
        break;
    case 3:
        v0 = 117;
        break;
    }

    return v0 + (param0 * 4);
}

int sub_0205E4B4 (u8 param0, u8 param1)
{
    int v0;

    switch (param1) {
    case 0:
        v0 = 12;
        break;
    case 1:
        v0 = 20;
        break;
    case 2:
        v0 = 28;
        break;
    case 3:
        v0 = 116;
        break;
    }

    return v0 + (param0 * 4);
}

int sub_0205E4E0 (u8 param0, u8 param1)
{
    int v0;

    switch (param0) {
    case 0:
        v0 = 37;
        break;
    case 1:
        v0 = 49;
        break;
    case 2:
        v0 = 61;
        break;
    case 3:
        v0 = 125;
        break;
    }

    v0 += (param1 / 2);
    return v0;
}

int sub_0205E50C (u8 param0)
{
    int v0;

    switch (param0) {
    case 0:
        v0 = 35;
        break;
    case 1:
        v0 = 47;
        break;
    case 2:
        v0 = 59;
        break;
    case 3:
        v0 = 123;
        break;
    }

    return v0;
}

int sub_0205E534 (u8 param0)
{
    int v0;

    switch (param0) {
    case 0:
        v0 = 34;
        break;
    case 1:
        v0 = 46;
        break;
    case 2:
        v0 = 58;
        break;
    case 3:
        v0 = 122;
        break;
    }

    return v0;
}

int sub_0205E55C (u8 param0)
{
    int v0;

    switch (param0) {
    case 0:
        v0 = 36;
        break;
    case 1:
        v0 = 48;
        break;
    case 2:
        v0 = 60;
        break;
    case 3:
        v0 = 124;
        break;
    }

    return v0;
}

int sub_0205E584 (u8 param0)
{
    int v0;

    switch (param0) {
    case 0:
        v0 = 0;
        break;
    case 1:
        v0 = 1;
        break;
    case 2:
        v0 = 2;
        break;
    case 3:
        v0 = 2;
        GF_ASSERT(0);
        break;
    }

    return v0;
}

int sub_0205E5B4 (u8 param0, u8 param1)
{
    int v0;

    switch (param0) {
    case 0:
        v0 = 75;
        break;
    case 1:
        v0 = 83;
        break;
    case 2:
        v0 = 91;
        break;
    case 3:
        v0 = 139;
        break;
    }

    v0 += param1;
    return v0;
}

int sub_0205E5E0 (u8 param0)
{
    int v0;

    switch (param0) {
    case 0:
        v0 = 71;
        break;
    case 1:
        v0 = 79;
        break;
    case 2:
        v0 = 87;
        break;
    case 3:
        v0 = 135;
        break;
    }

    return v0;
}

int sub_0205E608 (u8 param0)
{
    int v0;

    switch (param0) {
    case 0:
        v0 = 70;
        break;
    case 1:
        v0 = 78;
        break;
    case 2:
        v0 = 86;
        break;
    case 3:
        v0 = 134;
        break;
    }

    return v0;
}

int sub_0205E630 (u8 param0)
{
    int v0;

    switch (param0) {
    case 0:
        v0 = 72;
        break;
    case 1:
        v0 = 80;
        break;
    case 2:
        v0 = 88;
        break;
    case 3:
        v0 = 136;
        break;
    }

    return v0;
}

int sub_0205E658 (u8 param0)
{
    int v0;

    switch (param0) {
    case 0:
        v0 = 73;
        break;
    case 1:
        v0 = 81;
        break;
    case 2:
        v0 = 89;
        break;
    case 3:
        v0 = 137;
        break;
    }

    return v0;
}

int sub_0205E680 (u8 param0)
{
    int v0;

    switch (param0) {
    case 0:
        v0 = 74;
        break;
    case 1:
        v0 = 82;
        break;
    case 2:
        v0 = 90;
        break;
    case 3:
        v0 = 138;
        break;
    }

    return v0;
}

int sub_0205E6A8 (u32 param0)
{
    if (param0 < 100) {
        return 0xff;
    }

    return ov4_021D2388();
}

u8 sub_0205E6B8 (void)
{
    UnkStruct_02025E6C * v0;

    v0 = sub_02032EE8(sub_0203608C() ^ 1);
    GF_ASSERT(v0 != NULL);

    return sub_02025FCC(v0);
}

u8 sub_0205E6D8 (UnkStruct_021C0794 * param0)
{
    if (sub_02025FCC(sub_02025E38(param0)) == 0) {
        return 1;
    }

    if (sub_0205E6B8() == 0) {
        return 1;
    }

    return 0;
}

int sub_0205E700 (u8 param0)
{
    int v0;

    switch (param0) {
    case 0:
        v0 = 95;
        break;
    case 1:
        v0 = 97;
        break;
    case 2:
        v0 = 99;
        break;
    case 3:
        v0 = 143;
        break;
    }

    return v0;
}

int sub_0205E728 (u8 param0)
{
    int v0;

    switch (param0) {
    case 0:
        v0 = 94;
        break;
    case 1:
        v0 = 96;
        break;
    case 2:
        v0 = 98;
        break;
    case 3:
        v0 = 142;
        break;
    }

    return v0;
}

int sub_0205E750 (u8 param0)
{
    int v0;

    switch (param0) {
    case 0:
        v0 = 1;
        break;
    case 1:
        v0 = 3;
        break;
    case 2:
        v0 = 5;
        break;
    case 3:
        v0 = 7;
        break;
    case 4:
        v0 = 9;
        break;
    case 6:
        v0 = 113;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return v0;
}

int sub_0205E790 (u8 param0)
{
    int v0;

    switch (param0) {
    case 0:
        v0 = 0;
        break;
    case 1:
        v0 = 2;
        break;
    case 2:
        v0 = 4;
        break;
    case 3:
        v0 = 6;
        break;
    case 4:
        v0 = 8;
        break;
    case 6:
        v0 = 112;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return v0;
}
