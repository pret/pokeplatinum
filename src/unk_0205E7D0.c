#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0205EC34.h"

#include "unk_02017E74.h"
#include "unk_0205E7D0.h"
#include "unk_02061804.h"
#include "unk_02063400.h"
#include "overlay005/ov5_021F25C0.h"
#include "overlay005/ov5_021F61BC.h"

typedef struct UnkStruct_0205E884_t {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    int unk_0C;
    u32 unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    int unk_24;
    int unk_28;
    int unk_2C;
    UnkStruct_02061AB4 * unk_30;
    UnkStruct_ov101_021D5D90 * unk_34;
    UnkStruct_0205EC34 * unk_38;
    const UnkStruct_0205EC34 * unk_3C;
} UnkStruct_0205E884;

static UnkStruct_0205E884 * sub_0205E8FC(void);
static void sub_0205E91C(UnkStruct_0205E884 * param0, int param1, int param2, UnkStruct_0205EC34 * param3);
static void sub_0205E988(UnkStruct_0205E884 * param0, const UnkStruct_02061830 * param1, int param2, int param3, int param4, int param5);
static UnkStruct_02061AB4 * sub_0205EA64(const UnkStruct_02061830 * param0);
static void sub_0205EB9C(UnkStruct_0205E884 * param0, u32 param1);
static void sub_0205EBA4(UnkStruct_0205E884 * param0, u32 param1);
static u32 sub_0205EBB0(UnkStruct_0205E884 * param0, u32 param1);
static void sub_0205EC08(UnkStruct_0205E884 * param0, UnkStruct_0205EC34 * param1);

UnkStruct_0205E884 * sub_0205E7D0 (const UnkStruct_02061830 * param0, int param1, int param2, int param3, int param4, int param5, int param6, UnkStruct_0205EC34 * param7)
{
    UnkStruct_0205E884 * v0;

    v0 = sub_0205E8FC();
    sub_0205E91C(v0, param4, param5, param7);

    {
        int v1;

        if (param6 == 0) {
            v1 = sub_0205ED6C(param4, param5);
        } else {
            if (param5 == 0) {
                v1 = 0xfc;
            } else {
                v1 = 0xfd;
            }
        }

        sub_0205E988(v0, param0, v1, param3, param1, param2);
    }

    return v0;
}

UnkStruct_0205E884 * sub_0205E820 (const UnkStruct_02061830 * param0, UnkStruct_0205EC34 * param1, int param2)
{
    int v0;
    UnkStruct_0205E884 * v1;
    UnkStruct_02061AB4 * v2;

    v1 = sub_0205E8FC();
    v0 = sub_0205EC94(param1);

    sub_0205E91C(v1, v0, param2, param1);
    v2 = sub_0205EA64(param0);

    sub_0206291C(v2, sub_0205ED6C(v0, param2));
    sub_020628BC(v2, ((1 << 10) | (1 << 13)));
    sub_020628C4(v2, ((1 << 7) | (1 << 8)));
    sub_02062F90(v2, 1);
    sub_0205EB38(v1, v2);

    return v1;
}

void sub_0205E884 (UnkStruct_0205E884 * param0, int param1)
{
    int v0, v1;
    UnkStruct_02061AB4 * v2;
    const UnkStruct_02061830 * v3;

    v2 = sub_0205EB3C(param0);
    GF_ASSERT(v2 != NULL);
    v3 = sub_02062A40(v2);

    ov5_021F6218(param0);

    if (sub_0205EB74(param0) == 0x2) {
        if (param1 != 9) {
            int v4 = sub_0205EABC(param0);
            int v5 = sub_0205EAC8(param0);
            int v6 = sub_0205EA78(param0);
            UnkStruct_ov101_021D5D90 * v7 = ov5_021F261C(v2, v4, v5, v6, 1);

            sub_0205EC00(param0, v7);
        }
    }
}

void sub_0205E8E0 (UnkStruct_0205E884 * param0)
{
    sub_020181C4(param0);
}

void sub_0205E8E8 (UnkStruct_0205E884 * param0)
{
    UnkStruct_02061AB4 * v0 = sub_0205EB3C(param0);

    sub_02061AF4(v0);
    sub_0205E8E0(param0);
}

static UnkStruct_0205E884 * sub_0205E8FC (void)
{
    UnkStruct_0205E884 * v0;

    v0 = sub_02018144(11, (sizeof(UnkStruct_0205E884)));
    GF_ASSERT(v0 != NULL);
    memset(v0, 0, (sizeof(UnkStruct_0205E884)));

    return v0;
}

static void sub_0205E91C (UnkStruct_0205E884 * param0, int param1, int param2, UnkStruct_0205EC34 * param3)
{
    sub_0205EC08(param0, param3);

    sub_0205EB08(param0, 0);
    sub_0205EB10(param0, 0);
    sub_0205EB58(param0, param1);
    sub_0205EB94(param0, param2);
    sub_0205EB8C(param0, 0);
    sub_0205EBC0(param0);
    sub_0205EBDC(param0, -1);
    sub_0205EBE4(param0, -1);
    sub_0205EC20(param0, 0xff, 0);

    sub_0205EF6C(param0, 1);
    sub_0205EFF0(param0, 1);
}

static void sub_0205E988 (UnkStruct_0205E884 * param0, const UnkStruct_02061830 * param1, int param2, int param3, int param4, int param5)
{
    UnkStruct_02061AB4 * v0;

    v0 = sub_020619DC(param1, param4, param5, param3, param2, 0x1, 1);
    GF_ASSERT(v0 != NULL);

    sub_0206290C(v0, 0xff);
    sub_0206294C(v0, 0);
    sub_02062954(v0, 0);
    sub_0206295C(v0, 0);
    sub_020629B4(v0, 0, 0);
    sub_020629B4(v0, 0, 1);
    sub_020629B4(v0, 0, 2);
    sub_020629FC(v0, -1);
    sub_02062A04(v0, -1);
    sub_020628BC(v0, ((1 << 10) | (1 << 13)));
    sub_020628C4(v0, ((1 << 7) | (1 << 8)));
    sub_02062F90(v0, 1);

    sub_0205EB38(param0, v0);
}

UnkStruct_02061AB4 * sub_0205EA24 (const UnkStruct_02061830 * param0)
{
    int v0 = 0;
    UnkStruct_02061AB4 * v1 = NULL;

    while (sub_020625B0(param0, &v1, &v0, (1 << 0))) {
        if (sub_02062948(v1) == 0x1) {
            break;
        }
    }

    return v1;
}

static UnkStruct_02061AB4 * sub_0205EA64 (const UnkStruct_02061830 * param0)
{
    UnkStruct_02061AB4 * v0 = sub_0205EA24(param0);

    GF_ASSERT(v0 != NULL);
    return v0;
}

int sub_0205EA78 (UnkStruct_0205E884 * const param0)
{
    return sub_0206298C(sub_0205EB3C(param0));
}

void sub_0205EA84 (UnkStruct_0205E884 * param0, int param1)
{
    sub_02062974(sub_0205EB3C(param0), param1);
}

int sub_0205EA94 (UnkStruct_0205E884 * const param0)
{
    return sub_0206299C(sub_0205EB3C(param0));
}

int sub_0205EAA0 (UnkStruct_0205E884 * const param0)
{
    if (sub_0205F16C(param0) == 1) {
        return sub_0205EA78(param0);
    }

    return sub_0205EA94(param0);
}

int sub_0205EABC (UnkStruct_0205E884 * const param0)
{
    return sub_02063020(sub_0205EB3C(param0));
}

int sub_0205EAC8 (UnkStruct_0205E884 * const param0)
{
    return sub_02063040(sub_0205EB3C(param0));
}

int sub_0205EAD4 (UnkStruct_0205E884 * const param0)
{
    return sub_02063008(sub_0205EB3C(param0));
}

int sub_0205EAE0 (UnkStruct_0205E884 * const param0)
{
    return sub_02063018(sub_0205EB3C(param0));
}

void sub_0205EAEC (UnkStruct_0205E884 * const param0, VecFx32 * param1)
{
    sub_02063050(sub_0205EB3C(param0), param1);
}

const VecFx32 * sub_0205EAFC (UnkStruct_0205E884 * const param0)
{
    return sub_02063070(sub_0205EB54(param0));
}

void sub_0205EB08 (UnkStruct_0205E884 * param0, int param1)
{
    param0->unk_14 = param1;
}

int sub_0205EB0C (const UnkStruct_0205E884 * param0)
{
    return param0->unk_14;
}

void sub_0205EB10 (UnkStruct_0205E884 * param0, int param1)
{
    param0->unk_18 = param1;
}

int sub_0205EB14 (const UnkStruct_0205E884 * param0)
{
    return param0->unk_18;
}

void sub_0205EB18 (UnkStruct_0205E884 * param0, int param1)
{
    UnkStruct_02061AB4 * v0;

    v0 = sub_0205EB3C(param0);

    if (param1 == 1) {
        sub_020628C4(v0, (1 << 9));
    } else {
        sub_020628BC(v0, (1 << 9));
    }
}

void sub_0205EB38 (UnkStruct_0205E884 * param0, UnkStruct_02061AB4 * param1)
{
    param0->unk_30 = param1;
}

UnkStruct_02061AB4 * sub_0205EB3C (UnkStruct_0205E884 * param0)
{
    GF_ASSERT(param0 != NULL);
    GF_ASSERT(param0->unk_30 != NULL);

    return param0->unk_30;
}

const UnkStruct_02061AB4 * sub_0205EB54 (const UnkStruct_0205E884 * param0)
{
    return param0->unk_30;
}

void sub_0205EB58 (UnkStruct_0205E884 * param0, int param1)
{
    GF_ASSERT(param1 < 0x6);
    param0->unk_1C = param1;

    sub_0205ECA8(param0, param1);
}

int sub_0205EB74 (UnkStruct_0205E884 * param0)
{
    GF_ASSERT(param0 != NULL);
    return param0->unk_1C;
}

void sub_0205EB84 (UnkStruct_0205E884 * param0, u32 param1)
{
    param0->unk_04 |= param1;
}

void sub_0205EB8C (UnkStruct_0205E884 * param0, u32 param1)
{
    param0->unk_04 = param1;
}

u32 sub_0205EB90 (UnkStruct_0205E884 * param0)
{
    return param0->unk_04;
}

void sub_0205EB94 (UnkStruct_0205E884 * param0, int param1)
{
    param0->unk_20 = param1;
}

int sub_0205EB98 (UnkStruct_0205E884 * param0)
{
    return param0->unk_20;
}

static void sub_0205EB9C (UnkStruct_0205E884 * param0, u32 param1)
{
    param0->unk_00 |= param1;
}

static void sub_0205EBA4 (UnkStruct_0205E884 * param0, u32 param1)
{
    param0->unk_00 &= ~param1;
}

static u32 sub_0205EBB0 (UnkStruct_0205E884 * param0, u32 param1)
{
    return param0->unk_00 & param1;
}

int sub_0205EBB8 (UnkStruct_0205E884 * param0)
{
    return param0->unk_24;
}

void sub_0205EBBC (UnkStruct_0205E884 * param0, int param1)
{
    param0->unk_24 = param1;
}

void sub_0205EBC0 (UnkStruct_0205E884 * param0)
{
    param0->unk_24 = 0;
    sub_0205EF98(param0, 0);
}

int sub_0205EBCC (UnkStruct_0205E884 * param0, int param1, int param2)
{
    param0->unk_24 += param1;

    if (param0->unk_24 > param2) {
        param0->unk_24 = param2;
    }

    return param0->unk_24;
}

void sub_0205EBDC (UnkStruct_0205E884 * param0, int param1)
{
    param0->unk_28 = param1;
}

int sub_0205EBE0 (UnkStruct_0205E884 * param0)
{
    return param0->unk_28;
}

void sub_0205EBE4 (UnkStruct_0205E884 * param0, int param1)
{
    param0->unk_2C = param1;
}

int sub_0205EBE8 (UnkStruct_0205E884 * param0)
{
    return param0->unk_2C;
}

void sub_0205EBEC (UnkStruct_0205E884 * param0, int param1, int param2)
{
    sub_0205EBDC(param0, param1);
    sub_0205EBE4(param0, param2);
}

void sub_0205EC00 (UnkStruct_0205E884 * param0, UnkStruct_ov101_021D5D90 * param1)
{
    param0->unk_34 = param1;
}

UnkStruct_ov101_021D5D90 * sub_0205EC04 (UnkStruct_0205E884 * param0)
{
    return param0->unk_34;
}

static void sub_0205EC08 (UnkStruct_0205E884 * param0, UnkStruct_0205EC34 * param1)
{
    param0->unk_38 = param1;
}

UnkStruct_0205EC34 * sub_0205EC0C (UnkStruct_0205E884 * param0)
{
    return param0->unk_38;
}

void sub_0205EC10 (UnkStruct_0205E884 * param0, u32 param1)
{
    param0->unk_08 = param1;
}

u32 sub_0205EC14 (UnkStruct_0205E884 * param0)
{
    return param0->unk_08;
}

void sub_0205EC18 (UnkStruct_0205E884 * param0, int param1)
{
    param0->unk_0C = param1;
}

int sub_0205EC1C (UnkStruct_0205E884 * param0)
{
    return param0->unk_0C;
}

void sub_0205EC20 (UnkStruct_0205E884 * param0, u32 param1, int param2)
{
    sub_0205EC10(param0, param1);
    sub_0205EC18(param0, param2);
}

void sub_0205EC34 (UnkStruct_0205EC34 * param0)
{
    param0->unk_00 = 0;
    param0->unk_02 = 0;
    param0->unk_04 = 0x0;
}

int sub_0205EC40 (UnkStruct_0205EC34 * param0)
{
    if (param0 != NULL) {
        if (param0->unk_02 == 1) {
            return 1;
        }
    }

    return 0;
}

void sub_0205EC54 (UnkStruct_0205EC34 * param0, int param1)
{
    if (param1 == 1) {
        param0->unk_02 = 1;
    } else {
        param0->unk_02 = 0;
    }
}

int sub_0205EC64 (UnkStruct_0205EC34 * param0)
{
    if (param0 == NULL) {
        return 0;
    }

    return param0->unk_00;
}

void sub_0205EC70 (UnkStruct_0205EC34 * param0, int param1)
{
    if (param0 != NULL) {
        param0->unk_00 = param1;
    }
}

void sub_0205EC78 (UnkStruct_0205E884 * param0, int param1)
{
    UnkStruct_0205EC34 * v0 = sub_0205EC0C(param0);
    sub_0205EC70(v0, param1);
}

int sub_0205EC88 (UnkStruct_0205E884 * param0)
{
    UnkStruct_0205EC34 * v0 = sub_0205EC0C(param0);
    return sub_0205EC64(v0);
}

u32 sub_0205EC94 (UnkStruct_0205EC34 * param0)
{
    if (param0 != NULL) {
        return param0->unk_04;
    }

    return 0x0;
}

void sub_0205ECA0 (UnkStruct_0205EC34 * param0, u32 param1)
{
    if (param0 != NULL) {
        param0->unk_04 = param1;
    }
}

void sub_0205ECA8 (UnkStruct_0205E884 * param0, u32 param1)
{
    UnkStruct_0205EC34 * v0 = sub_0205EC0C(param0);
    sub_0205ECA0(v0, param1);
}

void sub_0205ECB8 (UnkStruct_0205E884 * param0, const VecFx32 * param1, int param2)
{
    UnkStruct_02061AB4 * v0;

    v0 = sub_0205EB3C(param0);

    sub_020632D4(v0, param1, param2);
    sub_0205EB08(param0, 0);
    sub_0205EB10(param0, 0);
}

void sub_0205ECE0 (UnkStruct_0205E884 * param0, int param1, int param2, int param3)
{
    UnkStruct_02061AB4 * v0;

    v0 = sub_0205EB3C(param0);

    sub_02063340(v0, param1, 0, param2, param3);
    sub_0205EB08(param0, 0);
    sub_0205EB10(param0, 0);
}

void sub_0205ED0C (UnkStruct_0205E884 * param0, fx32 param1)
{
    VecFx32 v0;
    UnkStruct_02061AB4 * v1 = sub_0205EB3C(param0);

    sub_02063050(v1, &v0);
    v0.y = param1;
    sub_02063060(v1, &v0);
}

void sub_0205ED2C (UnkStruct_0205E884 * param0, int param1)
{
    UnkStruct_02061AB4 * v0 = sub_0205EB3C(param0);

    if (param1 == 1) {
        sub_02062E28(v0, 0);
    } else {
        sub_02062E28(v0, 1);
    }
}

void sub_0205ED48 (UnkStruct_0205E884 * param0, int param1)
{
    UnkStruct_02061AB4 * v0 = sub_0205EB3C(param0);

    if (param1 == 1) {
        sub_02062E28(v0, 0);
        sub_020642F8(v0);
    } else {
        sub_02062E28(v0, 1);
    }
}

int sub_0205ED6C (int param0, int param1)
{
    if (param1 == 0) {
        switch (param0) {
        case 0x0:
            return 0x0;
        case 0x1:
            return 0x15;
        case 0x2:
            return 0xb2;
        case 0x10:
            return 0xb0;
        case 0x11:
            return 0xb4;
        case 0x12:
            return 0xba;
        case 0x13:
            return 0xbc;
        case 0x14:
            return 0xc4;
        case 0x15:
            return 0xc6;
        case 0x16:
            return 0xc8;
        case 0x17:
            return 0x100;
        case 0x18:
            return 0xd4;
        case 0x19:
            return 0x102;
        case 0x1a:
            return 0x10c;
        case 0x1b:
            return 0x10e;
        case 0x1c:
            return 0xd2;
        case 0x1d:
            return 0x110;
        case 0x1e:
            return 0x112;
        }
    } else {
        switch (param0) {
        case 0x0:
            return 0x61;
        case 0x1:
            return 0x62;
        case 0x2:
            return 0xb3;
        case 0x10:
            return 0xb1;
        case 0x11:
            return 0xb5;
        case 0x12:
            return 0xbb;
        case 0x13:
            return 0xbd;
        case 0x14:
            return 0xc5;
        case 0x15:
            return 0xc7;
        case 0x16:
            return 0xc9;
        case 0x17:
            return 0x101;
        case 0x18:
            return 0x107;
        case 0x19:
            return 0x103;
        case 0x1a:
            return 0x10d;
        case 0x1b:
            return 0x10f;
        case 0x1c:
            return 0xd3;
        case 0x1d:
            return 0x111;
        case 0x1e:
            return 0x113;
        }
    }

    GF_ASSERT(FALSE);
    return 0x0;
}

u32 sub_0205EED8 (int param0)
{
    switch (param0) {
    case 0x0:
        return 1 << 0;
    case 0x1:
        return 1 << 1;
    case 0x2:
        return 1 << 2;
    case 0x11:
        return 1 << 4;
    case 0x13:
        return 1 << 5;
    case 0x14:
        return 1 << 6;
    case 0x15:
        return 1 << 7;
    case 0x16:
        return 1 << 8;
    }

    GF_ASSERT(0);
    return 1 << 0;
}

UnkStruct_0205E884 * sub_0205EF3C (UnkStruct_0203CDB0 * param0)
{
    return param0->unk_3C;
}

void sub_0205EF40 (UnkStruct_0205E884 * param0, int param1)
{
    if (param1 == 1) {
        sub_0205EB9C(param0, (1 << 0));
    } else {
        sub_0205EBA4(param0, (1 << 0));
    }
}

int sub_0205EF58 (UnkStruct_0205E884 * param0)
{
    if (sub_0205EBB0(param0, (1 << 0))) {
        return 1;
    }

    return 0;
}

void sub_0205EF6C (UnkStruct_0205E884 * param0, int param1)
{
    if (param1 == 1) {
        sub_0205EB9C(param0, (1 << 1));
    } else {
        sub_0205EBA4(param0, (1 << 1));
    }
}

int sub_0205EF84 (UnkStruct_0205E884 * param0)
{
    if (sub_0205EBB0(param0, (1 << 1))) {
        return 1;
    }

    return 0;
}

void sub_0205EF98 (UnkStruct_0205E884 * param0, int param1)
{
    if (param1 == 1) {
        sub_0205EB9C(param0, (1 << 2));
    } else {
        sub_0205EBA4(param0, (1 << 2));
    }
}

int sub_0205EFB0 (UnkStruct_0205E884 * param0)
{
    if (sub_0205EBB0(param0, (1 << 2))) {
        return 1;
    }

    return 0;
}

void sub_0205EFC4 (UnkStruct_0205E884 * param0, int param1)
{
    if (param1 == 1) {
        sub_0205EB9C(param0, (1 << 3));
    } else {
        sub_0205EBA4(param0, (1 << 3));
    }
}

int sub_0205EFDC (UnkStruct_0205E884 * param0)
{
    if (sub_0205EBB0(param0, (1 << 3))) {
        return 1;
    }

    return 0;
}

void sub_0205EFF0 (UnkStruct_0205E884 * param0, int param1)
{
    if (param1 == 1) {
        sub_0205EB9C(param0, (1 << 4));
    } else {
        sub_0205EBA4(param0, (1 << 4));
    }
}

int sub_0205F008 (UnkStruct_0205E884 * param0)
{
    if (sub_0205EBB0(param0, (1 << 4))) {
        return 1;
    }

    return 0;
}

void sub_0205F01C (UnkStruct_0205E884 * param0, int param1)
{
    if (param1 == 1) {
        sub_0205EB9C(param0, (1 << 5));
    } else {
        sub_0205EBA4(param0, (1 << 5));
    }
}

int sub_0205F034 (UnkStruct_0205E884 * param0)
{
    if (sub_0205EBB0(param0, (1 << 5))) {
        return 1;
    }

    return 0;
}

void sub_0205F048 (UnkStruct_0205E884 * param0)
{
    sub_0205EB9C(param0, (1 << 6));
}

void sub_0205F054 (UnkStruct_0205E884 * param0)
{
    sub_0205EBA4(param0, (1 << 6));
}

int sub_0205F060 (UnkStruct_0205E884 * param0)
{
    if (sub_0205EBB0(param0, (1 << 6))) {
        return 1;
    }

    return 0;
}

void sub_0205F074 (UnkStruct_0205E884 * param0, int param1)
{
    if (param1 == 1) {
        sub_0205EB9C(param0, (1 << 7));
    } else {
        sub_0205EBA4(param0, (1 << 7));
    }
}

int sub_0205F08C (UnkStruct_0205E884 * param0)
{
    return sub_0205EBB0(param0, (1 << 7));
}

void sub_0205F098 (UnkStruct_0205E884 * param0, int param1)
{
    sub_0205EBA4(param0, ((1 << 8) | (1 << 9) | (1 << 10) | (1 << 11) | (1 << 12)));

    switch (param1) {
    case 0:
        return;
    case 1:
        sub_0205EB9C(param0, (1 << 8));
        return;
    case 2:
        sub_0205EB9C(param0, (1 << 9));
        return;
    case 3:
        sub_0205EB9C(param0, (1 << 10));
        return;
    case 4:
        sub_0205EB9C(param0, (1 << 11));
        return;
    case 5:
        sub_0205EB9C(param0, (1 << 12));
        return;
    }

    GF_ASSERT(0);
}

int sub_0205F108 (UnkStruct_0205E884 * const param0)
{
    int v0 = 0;
    u32 v1 = sub_0205EBB0(param0, ((1 << 8) | (1 << 9) | (1 << 10) | (1 << 11) | (1 << 12)));

    switch (v1) {
    case (1 << 8):
        v0 = 1;
        break;
    case (1 << 9):
        v0 = 2;
        break;
    case (1 << 10):
        v0 = 3;
        break;
    case (1 << 11):
        v0 = 4;
        break;
    case (1 << 12):
        v0 = 5;
        break;
    }

    return v0;
}

BOOL sub_0205F158 (UnkStruct_0205E884 * const param0)
{
    int v0 = sub_0205F108(param0);

    if ((v0 == 0) || (v0 == 1)) {
        return 0;
    }

    return 1;
}

BOOL sub_0205F16C (UnkStruct_0205E884 * const param0)
{
    int v0 = sub_0205F108(param0);

    if ((v0 == 0) || (v0 == 1) || (v0 == 2)) {
        return 1;
    }

    return 0;
}
