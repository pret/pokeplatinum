#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "functypes/funcptr_0203B7C0.h"
#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0203D8AC.h"
#include "struct_defs/struct_020708E0.h"
#include "struct_defs/struct_02070950.h"
#include "struct_defs/struct_020709CC.h"
#include "struct_defs/struct_020711C8.h"
#include "functypes/funcptr_02084808.h"

#include "heap.h"
#include "unk_02025E08.h"
#include "trainer_info.h"
#include "unk_0202B604.h"
#include "map_header.h"
#include "unk_0203A6DC.h"
#include "unk_0203A9C8.h"
#include "unk_0203C954.h"
#include "unk_0203D1B8.h"
#include "unk_0203E880.h"
#include "unk_020507CC.h"
#include "unk_020508D4.h"
#include "unk_02054D00.h"
#include "unk_0205DAC8.h"
#include "unk_0205E7D0.h"
#include "unk_0205F180.h"
#include "unk_02061804.h"
#include "unk_0206A8DC.h"
#include "unk_0206B70C.h"
#include "unk_0207070C.h"
#include "unk_020711C8.h"
#include "unk_02071B10.h"
#include "overlay005/ov5_021DFB54.h"
#include "overlay005/ov5_021F101C.h"
#include "overlay006/ov6_02247100.h"

typedef struct {
    UnkFuncPtr_0203B7C0 unk_00;
    UnkFuncPtr_02084808 unk_04;
} UnkStruct_020F0368;

typedef struct {
    u32 unk_00;
    UnkStruct_02061AB4 * unk_04;
    UnkStruct_020709CC unk_08;
} UnkStruct_0207086C;

static void sub_02070838(UnkStruct_0203CDB0 * param0, UnkStruct_02070950 * param1);
static int sub_02070950(const UnkStruct_02070950 * param0);
static void sub_020709CC(UnkStruct_020709CC * param0, const UnkStruct_02070950 * param1);
static int sub_02070EEC(const UnkStruct_02070950 * param0);
static void sub_02070F54(UnkStruct_020709CC * param0, const UnkStruct_02070950 * param1);
static BOOL sub_02070F94(UnkStruct_020508D4 * param0);
static int sub_02070A24(const UnkStruct_02070950 * param0);
static void sub_02070A80(UnkStruct_020709CC * param0, const UnkStruct_02070950 * param1);
static BOOL sub_02070AB4(UnkStruct_020508D4 * param0);
static int sub_02070CF8(const UnkStruct_02070950 * param0);
static void sub_02070D30(UnkStruct_020709CC * param0, const UnkStruct_02070950 * param1);
static BOOL sub_02070D64(UnkStruct_020508D4 * param0);
static int sub_02070DA0(const UnkStruct_02070950 * param0);
static void sub_02070DEC(UnkStruct_020709CC * param0, const UnkStruct_02070950 * param1);
static BOOL sub_02070E20(UnkStruct_020508D4 * param0);
static int sub_02070E5C(const UnkStruct_02070950 * param0);
static void sub_02070E7C(UnkStruct_020709CC * param0, const UnkStruct_02070950 * param1);
static BOOL sub_02070EB0(UnkStruct_020508D4 * param0);
static int sub_02070B98(const UnkStruct_02070950 * param0);
static void sub_02070BD0(UnkStruct_020709CC * param0, const UnkStruct_02070950 * param1);
static BOOL sub_02070C04(UnkStruct_020508D4 * param0);
static int sub_02070C40(const UnkStruct_02070950 * param0);
static void sub_02070C88(UnkStruct_020709CC * param0, const UnkStruct_02070950 * param1);
static BOOL sub_02070CBC(UnkStruct_020508D4 * param0);
static int sub_02070AF0(const UnkStruct_02070950 * param0);
static void sub_02070B28(UnkStruct_020709CC * param0, const UnkStruct_02070950 * param1);
static BOOL sub_02070B5C(UnkStruct_020508D4 * param0);
static int sub_02070FCC(const UnkStruct_02070950 * param0);
static void sub_02071010(UnkStruct_020709CC * param0, const UnkStruct_02070950 * param1);
static BOOL sub_02071050(UnkStruct_020508D4 * param0);
static int sub_020710A4(const UnkStruct_02070950 * param0);
static void sub_020710D4(UnkStruct_020709CC * param0, const UnkStruct_02070950 * param1);
static int sub_02071130(const UnkStruct_02070950 * param0);
static void sub_02071150(UnkStruct_020709CC * param0, const UnkStruct_02070950 * param1);
static BOOL sub_0207118C(UnkStruct_020508D4 * param0);
static int sub_020708AC(const UnkStruct_02070950 * param0);
static void sub_020708E0(UnkStruct_020709CC * param0, const UnkStruct_02070950 * param1);
static BOOL sub_02070914(UnkStruct_020508D4 * param0);

static const UnkStruct_020F0368 Unk_020F0368[] = {
    {sub_020708E0, sub_020708AC},
    {sub_020709CC, sub_02070950},
    {sub_02070A80, sub_02070A24},
    {sub_02070B28, sub_02070AF0},
    {sub_02070BD0, sub_02070B98},
    {sub_02070C88, sub_02070C40},
    {sub_02070D30, sub_02070CF8},
    {sub_02070DEC, sub_02070DA0},
    {sub_02070E7C, sub_02070E5C},
    {sub_02070F54, sub_02070EEC},
    {sub_02071010, sub_02070FCC},
    {sub_020710D4, sub_020710A4},
    {sub_02071150, sub_02071130}
};

static inline BOOL inline_020708AC (const UnkStruct_02070950 * param0, int param1)
{
    if ((param0->unk_0C & (1 << param1)) != 0) {
        return 1;
    } else {
        return 0;
    }
}

static inline BOOL inline_02070950 (const UnkStruct_02070950 * param0, int param1)
{
    return TrainerInfo_HasBadge(sub_02025E38(param0->unk_04->unk_0C), param1);
}

static inline BOOL inline_02070A24 (const UnkStruct_02070950 * param0)
{
    return sub_0206A984(sub_020507E4(param0->unk_04->unk_0C));
}

static inline BOOL inline_02070EEC (const UnkStruct_02070950 * param0)
{
    if ((sub_0206AE5C(sub_020507E4(param0->unk_04->unk_0C)) == 1) || (sub_0206AE8C(sub_020507E4(param0->unk_04->unk_0C)) == 1)) {
        return 1;
    }

    return 0;
}

static inline BOOL inline_020710A4 (const UnkStruct_02070950 * param0)
{
    if (sub_0206AE8C(sub_020507E4(param0->unk_04->unk_0C)) == 1) {
        return 1;
    }

    return 0;
}

static inline BOOL inline_02070AF0 (const UnkStruct_02070950 * param0)
{
    if ((param0->unk_04->unk_70 == 3) || (param0->unk_04->unk_70 == 2)) {
        return 0;
    }

    return 1;
}

u32 sub_0207070C (u16 param0, u16 param1)
{
    if (param0 == 0) {
        return (u32)Unk_020F0368[param1].unk_00;
    }

    return (u32)Unk_020F0368[param1].unk_04;
}

void sub_02070728 (UnkStruct_0203CDB0 * param0, UnkStruct_02070950 * param1)
{
    UnkStruct_02061AB4 * v0;
    int v1, v2;
    int v3;
    int v4;

    param1->unk_04 = param0;
    param1->unk_00 = param0->unk_1C->unk_00;
    param1->unk_0C = 0;

    if (sub_0205F158(param0->unk_3C) == 1) {
        sub_02070838(param0, param1);
        return;
    }

    sub_0203C9D4(param0, &v0);
    param1->unk_08 = v0;

    if (v0 != NULL) {
        switch (sub_02062920(v0)) {
        case 0x54:
            param1->unk_0C |= (1 << 3);
            break;
        case 0x55:
            param1->unk_0C |= (1 << 5);
            break;
        case 0x56:
            param1->unk_0C |= (1 << 0);
            break;
        }
    }

    v1 = sub_0205EABC(param0->unk_3C);
    v2 = sub_0205EAC8(param0->unk_3C);
    v4 = sub_02054F94(param0, v1, v2);

    sub_020615AC(param0->unk_3C, &v1, &v2);
    v3 = sub_02054F94(param0, v1, v2);

    if (ov5_021E0118(param0->unk_3C, v4, v3)) {
        param1->unk_0C |= (1 << 2);
    }

    if (ov5_021E0760(v3, sub_0205EA78(param0->unk_3C))) {
        param1->unk_0C |= (1 << 7);
    }

    if (sub_0205DDB4(v3)) {
        param1->unk_0C |= (1 << 6);
    }

    switch (sub_0203A74C(sub_0203A790(param0->unk_0C))) {
    case 14:
        param1->unk_0C |= (1 << 4);
        break;
    case 16:
        param1->unk_0C |= (1 << 8);
        break;
    }
}

static void sub_02070838 (UnkStruct_0203CDB0 * param0, UnkStruct_02070950 * param1)
{
    int v0;
    u32 v1, v2;

    v0 = sub_0205EAA0(param0->unk_3C);
    v2 = sub_020616F0(param0->unk_3C, v0);
    v1 = sub_02061760(param0->unk_3C);

    if (ov5_021E0118(param0->unk_3C, v1, v2) == 1) {
        param1->unk_0C |= (1 << 2);
    }
}

static UnkStruct_0207086C * sub_0207086C (const UnkStruct_020709CC * param0, const UnkStruct_02070950 * param1)
{
    UnkStruct_0207086C * v0 = Heap_AllocFromHeap(32, sizeof(UnkStruct_0207086C));

    v0->unk_00 = 0x19740205;
    v0->unk_04 = param1->unk_08;
    v0->unk_08 = *param0;

    return v0;
}

static void sub_02070890 (UnkStruct_0207086C * param0)
{
    GF_ASSERT(param0->unk_00 == 0x19740205);
    Heap_FreeToHeap(param0);
}

static int sub_020708AC (const UnkStruct_02070950 * param0)
{
    if (inline_02070AF0(param0) == 0) {
        return 1;
    }

    if (inline_02070950(param0, 1) == 0) {
        return 2;
    }

    if (inline_020708AC(param0, 0)) {
        return 0;
    } else {
        return 1;
    }
}

static void sub_020708E0 (UnkStruct_020709CC * param0, const UnkStruct_02070950 * param1)
{
    UnkStruct_020708E0 * v0;
    UnkStruct_0207086C * v1;

    v0 = sub_02050A64(param0->unk_00);
    v1 = sub_0207086C(param0, param1);

    sub_020509D4(param1->unk_04);

    v0->unk_22C = sub_02070914;
    v0->unk_25C = v1;
    v0->unk_2A = 10;
}

static BOOL sub_02070914 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0207086C * v0 = sub_02050A64(param0);
    UnkStruct_0203CDB0 * v1 = sub_02050A60(param0);

    sub_0203E918(param0, 10008, v0->unk_04);
    sub_0203F21C(v1, v0->unk_08.unk_04, 0, 0, 0);
    sub_02070890(v0);

    return 0;
}

static int sub_02070950 (const UnkStruct_02070950 * param0)
{
    if (inline_02070AF0(param0) == 0) {
        return 1;
    }

    if (inline_02070950(param0, 2) == 0) {
        return 2;
    }

    if (MapHeader_IsFlyAllowed(param0->unk_00) == 0) {
        return 1;
    }

    if (inline_02070A24(param0) == 1) {
        return 3;
    }

    if (inline_02070EEC(param0) == 1) {
        return 1;
    }

    return 0;
}

static void sub_020709CC (UnkStruct_020709CC * param0, const UnkStruct_02070950 * param1)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0->unk_00);
    v1 = sub_02050A64(param0->unk_00);

    {
        u32 * v2;

        v2 = (u32 *)Heap_AllocFromHeap(11, 4);
        *v2 = param0->unk_04;
        v1->unk_260 = (void *)v2;
    }

    v1->unk_25C = Heap_AllocFromHeap(11, sizeof(UnkStruct_0203D8AC));

    sub_0206B70C(v0, v1->unk_25C, 1);
    sub_0203D884(v0, v1->unk_25C);
    sub_0203B674(v1, sub_0203C434);
}

static int sub_02070A24 (const UnkStruct_02070950 * param0)
{
    if (inline_02070AF0(param0) == 0) {
        return 1;
    }

    if (inline_02070950(param0, 3) == 0) {
        return 2;
    }

    if (sub_0205EB74(param0->unk_04->unk_3C) == 0x2) {
        return 4;
    }

    if (!(inline_020708AC(param0, 2))) {
        return 1;
    }

    if (inline_02070A24(param0) == 1) {
        return 3;
    }

    return 0;
}

static void sub_02070A80 (UnkStruct_020709CC * param0, const UnkStruct_02070950 * param1)
{
    UnkStruct_020708E0 * v0;
    UnkStruct_0207086C * v1;

    v0 = sub_02050A64(param0->unk_00);
    v1 = sub_0207086C(param0, param1);

    sub_020509D4(param1->unk_04);

    v0->unk_22C = sub_02070AB4;
    v0->unk_25C = v1;
    v0->unk_2A = 10;
}

static BOOL sub_02070AB4 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0207086C * v0 = sub_02050A64(param0);
    UnkStruct_0203CDB0 * v1 = sub_02050A60(param0);

    sub_0203E918(param0, 10012, NULL);
    sub_0203F21C(v1, v0->unk_08.unk_04, 0, 0, 0);
    sub_02070890(v0);

    return 0;
}

static int sub_02070AF0 (const UnkStruct_02070950 * param0)
{
    if (inline_02070AF0(param0) == 0) {
        return 1;
    }

    if (inline_02070950(param0, 5) == 0) {
        return 2;
    }

    if (inline_020708AC(param0, 3)) {
        return 0;
    } else {
        return 1;
    }
}

static void sub_02070B28 (UnkStruct_020709CC * param0, const UnkStruct_02070950 * param1)
{
    UnkStruct_020708E0 * v0;
    UnkStruct_0207086C * v1;

    v0 = sub_02050A64(param0->unk_00);
    v1 = sub_0207086C(param0, param1);

    sub_020509D4(param1->unk_04);

    v0->unk_22C = sub_02070B5C;
    v0->unk_25C = v1;
    v0->unk_2A = 10;
}

static BOOL sub_02070B5C (UnkStruct_020508D4 * param0)
{
    UnkStruct_0207086C * v0 = sub_02050A64(param0);
    UnkStruct_0203CDB0 * v1 = sub_02050A60(param0);

    sub_0203E918(param0, 10010, v0->unk_04);
    sub_0203F21C(v1, v0->unk_08.unk_04, 0, 0, 0);
    sub_02070890(v0);

    return 0;
}

static int sub_02070B98 (const UnkStruct_02070950 * param0)
{
    if (inline_02070AF0(param0) == 0) {
        return 1;
    }

    if (inline_02070950(param0, 4) == 0) {
        return 2;
    }

    if (inline_020708AC(param0, 4)) {
        return 0;
    } else {
        return 1;
    }
}

static void sub_02070BD0 (UnkStruct_020709CC * param0, const UnkStruct_02070950 * param1)
{
    UnkStruct_020708E0 * v0;
    UnkStruct_0207086C * v1;

    v0 = sub_02050A64(param0->unk_00);
    v1 = sub_0207086C(param0, param1);

    sub_020509D4(param1->unk_04);

    v0->unk_22C = sub_02070C04;
    v0->unk_25C = v1;
    v0->unk_2A = 10;
}

static BOOL sub_02070C04 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0207086C * v0 = sub_02050A64(param0);
    UnkStruct_0203CDB0 * v1 = sub_02050A60(param0);

    sub_0203E918(param0, 10014, NULL);
    sub_0203F21C(v1, v0->unk_08.unk_04, 0, 0, 0);
    sub_02070890(v0);

    return 0;
}

static int sub_02070C40 (const UnkStruct_02070950 * param0)
{
    if (inline_02070AF0(param0) == 0) {
        return 1;
    }

    if (inline_02070950(param0, 0) == 0) {
        return 2;
    }

    if (sub_0205EB74(param0->unk_04->unk_3C) == 0x2) {
        return 1;
    }

    if (inline_020708AC(param0, 5)) {
        return 0;
    } else {
        return 1;
    }
}

static void sub_02070C88 (UnkStruct_020709CC * param0, const UnkStruct_02070950 * param1)
{
    UnkStruct_020708E0 * v0;
    UnkStruct_0207086C * v1;

    v0 = sub_02050A64(param0->unk_00);
    v1 = sub_0207086C(param0, param1);

    sub_020509D4(param1->unk_04);

    v0->unk_22C = sub_02070CBC;
    v0->unk_25C = v1;
    v0->unk_2A = 10;
}

static BOOL sub_02070CBC (UnkStruct_020508D4 * param0)
{
    UnkStruct_0207086C * v0 = sub_02050A64(param0);
    UnkStruct_0203CDB0 * v1 = sub_02050A60(param0);

    sub_0203E918(param0, 10009, v0->unk_04);
    sub_0203F21C(v1, v0->unk_08.unk_04, 0, 0, 0);
    sub_02070890(v0);

    return 0;
}

static int sub_02070CF8 (const UnkStruct_02070950 * param0)
{
    if (inline_02070AF0(param0) == 0) {
        return 1;
    }

    if (inline_02070950(param0, 7) == 0) {
        return 2;
    }

    if (inline_020708AC(param0, 6)) {
        return 0;
    } else {
        return 1;
    }
}

static void sub_02070D30 (UnkStruct_020709CC * param0, const UnkStruct_02070950 * param1)
{
    UnkStruct_020708E0 * v0;
    UnkStruct_0207086C * v1;

    v0 = sub_02050A64(param0->unk_00);
    v1 = sub_0207086C(param0, param1);

    sub_020509D4(param1->unk_04);

    v0->unk_22C = sub_02070D64;
    v0->unk_25C = v1;
    v0->unk_2A = 10;
}

static BOOL sub_02070D64 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0207086C * v0 = sub_02050A64(param0);
    UnkStruct_0203CDB0 * v1 = sub_02050A60(param0);

    sub_0203E918(param0, 10013, NULL);
    sub_0203F21C(v1, v0->unk_08.unk_04, 0, 0, 0);
    sub_02070890(v0);

    return 0;
}

static int sub_02070DA0 (const UnkStruct_02070950 * param0)
{
    if (inline_02070AF0(param0) == 0) {
        return 1;
    }

    if (inline_02070950(param0, 6) == 0) {
        return 2;
    }

    if (!(inline_020708AC(param0, 7))) {
        return 1;
    }

    if (inline_02070A24(param0) == 1) {
        return 3;
    }

    return 0;
}

static void sub_02070DEC (UnkStruct_020709CC * param0, const UnkStruct_02070950 * param1)
{
    UnkStruct_020708E0 * v0;
    UnkStruct_0207086C * v1;

    v0 = sub_02050A64(param0->unk_00);
    v1 = sub_0207086C(param0, param1);

    sub_020509D4(param1->unk_04);

    v0->unk_22C = sub_02070E20;
    v0->unk_25C = v1;
    v0->unk_2A = 10;
}

static BOOL sub_02070E20 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0207086C * v0 = sub_02050A64(param0);
    UnkStruct_0203CDB0 * v1 = sub_02050A60(param0);

    sub_0203E918(param0, 10011, NULL);
    sub_0203F21C(v1, v0->unk_08.unk_04, 0, 0, 0);
    sub_02070890(v0);

    return 0;
}

static int sub_02070E5C (const UnkStruct_02070950 * param0)
{
    if (inline_02070AF0(param0) == 0) {
        return 1;
    }

    if (inline_020708AC(param0, 8)) {
        return 0;
    } else {
        return 1;
    }
}

static void sub_02070E7C (UnkStruct_020709CC * param0, const UnkStruct_02070950 * param1)
{
    UnkStruct_020708E0 * v0;
    UnkStruct_0207086C * v1;

    v0 = sub_02050A64(param0->unk_00);
    v1 = sub_0207086C(param0, param1);

    sub_020509D4(param1->unk_04);

    v0->unk_22C = sub_02070EB0;
    v0->unk_25C = v1;
    v0->unk_2A = 10;
}

static BOOL sub_02070EB0 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0207086C * v0 = sub_02050A64(param0);
    UnkStruct_0203CDB0 * v1 = sub_02050A60(param0);

    sub_0203E918(param0, 10015, NULL);
    sub_0203F21C(v1, v0->unk_08.unk_04, 0, 0, 0);
    sub_02070890(v0);

    return 0;
}

static int sub_02070EEC (const UnkStruct_02070950 * param0)
{
    if (inline_02070AF0(param0) == 0) {
        return 1;
    }

    if (MapHeader_IsTeleportAllowed(param0->unk_00) == 0) {
        return 1;
    }

    if (inline_02070A24(param0) == 1) {
        return 3;
    }

    if (inline_02070EEC(param0) == 1) {
        return 1;
    }

    return 0;
}

static void sub_02070F54 (UnkStruct_020709CC * param0, const UnkStruct_02070950 * param1)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0->unk_00);
    v1 = sub_02050A64(param0->unk_00);

    sub_020509D4(v0);

    {
        UnkStruct_020711C8 * v2;

        v2 = sub_020711C8(11, param0->unk_04, v0->unk_0C);

        v1->unk_22C = sub_02070F94;
        v1->unk_25C = v2;
        v1->unk_2A = 10;
    }
}

static BOOL sub_02070F94 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_020711C8 * v1 = sub_02050A64(param0);
    void * v2 = ov6_02247530(v0, v1->unk_00, 4);

    Heap_FreeToHeap(v1);
    sub_02050924(param0, ov6_02247554, v2);

    return 0;
}

static int sub_02070FCC (const UnkStruct_02070950 * param0)
{
    if (inline_02070AF0(param0) == 0) {
        return 1;
    }

    if (!((MapHeader_IsCave(param0->unk_00) == 1) && (MapHeader_IsEscapeRopeAllowed(param0->unk_00) == 1))) {
        return 1;
    }

    if (inline_02070A24(param0) == 1) {
        return 3;
    }

    return 0;
}

static void sub_02071010 (UnkStruct_020709CC * param0, const UnkStruct_02070950 * param1)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0->unk_00);
    v1 = sub_02050A64(param0->unk_00);

    sub_020509D4(v0);

    {
        UnkStruct_020711C8 * v2;

        v2 = sub_020711C8(11, param0->unk_04, v0->unk_0C);

        v1->unk_22C = sub_02071050;
        v1->unk_25C = v2;
        v1->unk_2A = 10;
    }
}

static BOOL sub_02071050 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_020711C8 * v1 = sub_02050A64(param0);
    void * v2 = ov6_02247488(v0, v1->unk_00, 11);

    {
        void * v3 = sub_0202BE00((29 - 19), v0->unk_1C->unk_00, 4);
        sub_0202B758(v0->unk_9C, v3, 1);
    }

    Heap_FreeToHeap(v1);
    sub_02050924(param0, ov6_022474AC, v2);

    return 0;
}

static int sub_020710A4 (const UnkStruct_02070950 * param0)
{
    if (inline_02070AF0(param0) == 0) {
        return 1;
    }

    if (inline_020710A4(param0) == 1) {
        return 1;
    }

    return 0;
}

static void sub_020710D4 (UnkStruct_020709CC * param0, const UnkStruct_02070950 * param1)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;
    UnkStruct_020711C8 * v2;
    int v3;
    void * v4;

    v0 = sub_02050A60(param0->unk_00);
    v1 = sub_02050A64(param0->unk_00);

    v2 = sub_020711C8(11, param0->unk_04, v0->unk_0C);
    sub_020509D4(v0);

    v1->unk_22C = ov5_021F101C;
    v1->unk_25C = v2;
    v1->unk_2A = 10;

    v4 = sub_0202BE00((30 - 19), v0->unk_1C->unk_00, 11);
    sub_0202B758(v0->unk_9C, v4, 1);
}

static int sub_02071130 (const UnkStruct_02070950 * param0)
{
    if ((inline_02070AF0(param0) == 0) || (sub_02071CB4(param0->unk_04, 9) == 1)) {
        return 1;
    }

    return 0;
}

static void sub_02071150 (UnkStruct_020709CC * param0, const UnkStruct_02070950 * param1)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;
    UnkStruct_0207086C * v2;

    v0 = sub_02050A60(param0->unk_00);
    v1 = sub_02050A64(param0->unk_00);
    v2 = sub_0207086C(param0, param1);

    sub_020509D4(v0);

    v1->unk_22C = sub_0207118C;
    v1->unk_25C = v2;
    v1->unk_2A = 10;
}

static BOOL sub_0207118C (UnkStruct_020508D4 * param0)
{
    UnkStruct_0207086C * v0 = sub_02050A64(param0);
    UnkStruct_0203CDB0 * v1 = sub_02050A60(param0);

    sub_0203E918(param0, 8900, NULL);
    sub_0203F21C(v1, v0->unk_08.unk_04, 0, 0, 0);
    sub_02070890(v0);

    return 0;
}
