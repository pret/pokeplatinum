#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_020304A0_decl.h"
#include "struct_decls/struct_020305B8_decl.h"
#include "struct_decls/struct_02073C74_decl.h"
#include "struct_decls/struct_02079FF4_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_0204B184.h"
#include "overlay104/struct_ov104_02238240.h"
#include "overlay104/struct_ov104_0223A348_sub1.h"
#include "overlay104/struct_ov104_0223A348_sub2.h"
#include "overlay104/struct_ov104_0223BFFC.h"
#include "overlay104/struct_ov104_0223C4CC.h"

#include "unk_02002F38.h"
#include "filesystem.h"
#include "unk_02006E3C.h"
#include "unk_02017E74.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0201FE94.h"
#include "unk_020218BC.h"
#include "unk_02030494.h"
#include "unk_0203061C.h"
#include "unk_020507CC.h"
#include "unk_0205DFC4.h"
#include "unk_0206AFE0.h"
#include "unk_02073C2C.h"
#include "unk_02079FEC.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0222ECE8.h"
#include "overlay104/ov104_02231F74.h"
#include "overlay104/ov104_02237DD8.h"
#include "overlay104/ov104_0223BCBC.h"

typedef struct {
    s16 unk_00;
    s16 unk_02;
} UnkStruct_ov104_0223FB18;

typedef void (* UnkFuncPtr_ov104_02238B88)(UnkStruct_ov104_0223BFFC *, UnkStruct_02079FF4 *, u8);

UnkStruct_ov104_0223BFFC * ov104_02237DD8(UnkStruct_021C0794 * param0, u16 param1, u8 param2, u16 param3, u16 param4, u16 param5, u16 * param6);
void ov104_0223806C(UnkStruct_ov104_0223BFFC * param0, u16 param1);
static void ov104_02238080(UnkStruct_ov104_0223BFFC * param0);
static void ov104_02238114(UnkStruct_ov104_0223BFFC * param0);
static void ov104_022381C4(UnkStruct_ov104_0223BFFC * param0);
void ov104_02238210(UnkStruct_ov104_0223BFFC * param0);
void ov104_02238240(UnkStruct_ov104_0223BFFC * param0, void * param1);
u16 ov104_02238264(void * param0, u8 param1);
void ov104_022384D4(UnkStruct_ov104_0223BFFC * param0);
void ov104_022384DC(UnkStruct_ov104_0223BFFC * param0);
int ov104_02238538(UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, UnkStruct_02079FF4 * param2, int param3);
static int ov104_02238584(UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, UnkStruct_02079FF4 * param2, u8 param3);
void ov104_02238658(void * param0, UnkStruct_ov104_0223C4CC * param1);
void ov104_02238728(void * param0, UnkStruct_ov104_0223C4CC * param1);
void ov104_02238764(UnkStruct_ov104_0223BFFC * param0, UnkStruct_ov104_0223C4CC * param1, u16 param2);
void ov104_02238814(UnkStruct_ov104_0223BFFC * param0, UnkStruct_ov104_0223C4CC * param1, u16 param2);
void ov104_0223886C(UnkStruct_ov104_0223BFFC * param0, UnkStruct_ov104_0223C4CC * param1, u16 param2, u16 param3);
void ov104_022388A4(UnkStruct_ov104_0223BFFC * param0, UnkStruct_ov104_0223C4CC * param1, u16 param2, u16 param3);
void ov104_022388DC(UnkStruct_ov104_0223BFFC * param0, UnkStruct_ov104_0223C4CC * param1, u16 param2);
void ov104_022389A0(UnkStruct_ov104_0223BFFC * param0, UnkStruct_ov104_0223C4CC * param1, u16 param2);
void ov104_022389F4(UnkStruct_ov104_0223BFFC * param0, UnkStruct_ov104_0223C4CC * param1, u16 param2, u16 param3, u16 param4);
void ov104_02238AB4(u8 param0, u8 param1);
BOOL ov104_02238B40(UnkStruct_ov104_0223BFFC * param0, u16 param1, u16 param2);
void ov104_02238278(UnkStruct_ov104_0223BFFC * param0, u8 param1);
u16 ov104_02238454(UnkStruct_ov104_0223BFFC * param0);
u16 ov104_02238460(UnkStruct_ov104_0223BFFC * param0);
u16 ov104_02238464(UnkStruct_ov104_0223BFFC * param0, u8 param1);
u16 ov104_02238498(UnkStruct_ov104_0223BFFC * param0, u8 param1);
void ov104_022384A8(UnkStruct_ov104_0223BFFC * param0);
void ov104_022384B4(UnkStruct_ov104_0223BFFC * param0);
static void ov104_02238BBC(UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2);
static void ov104_02238C18(UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2);
static void ov104_02238C9C(UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2);
static void ov104_02238D14(UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2);
static void ov104_02238D8C(UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2);
static void ov104_02238E08(UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2);
static void ov104_02238E9C(UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2);
static void ov104_02238EF8(UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2);
static void ov104_02238F54(UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2);
static void ov104_02238FAC(UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2);
static void ov104_02238FB8(UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2);
static void ov104_02238FC0(UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2);
static void ov104_02238FC8(UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2);
static void ov104_02238FD0(UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2);
static void ov104_02238FD8(UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2);
static void ov104_02238FE4(UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2);
static void ov104_02238FF0(UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2);
static void ov104_02238FFC(UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2);
static void ov104_02239004(UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2);
static void ov104_02239008(UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2);
static void ov104_0223900C(UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2);
static void ov104_02239010(UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2);
u16 ov104_02239014(UnkStruct_ov104_0223BFFC * param0);
void ov104_02239054(UnkStruct_02079FF4 * param0, UnkStruct_02079FF4 * param1, int param2, int param3);

static const u16 Unk_ov104_0223FBBA[32][3] = {
    {0x59, 0x3A, 0x90},
    {0x5A, 0x3C, 0x91},
    {0x5B, 0x3E, 0x92},
    {0x5C, 0x40, 0x93},
    {0x5D, 0x42, 0x94},
    {0x5E, 0x44, 0x95},
    {0x5F, 0x46, 0x96},
    {0x60, 0x48, 0x97},
    {0x61, 0x4A, 0x98},
    {0x59, 0x39, 0x90},
    {0x5A, 0x3B, 0x91},
    {0x5B, 0x3D, 0x92},
    {0x5C, 0x3F, 0x93},
    {0x5D, 0x41, 0x94},
    {0x5E, 0x43, 0x95},
    {0x5F, 0x45, 0x96},
    {0x60, 0x47, 0x97},
    {0x61, 0x49, 0x98},
    {0x62, 0x4B, 0x99},
    {0x63, 0x4C, 0x9A},
    {0x64, 0x4D, 0x9B},
    {0x65, 0x4E, 0x9C},
    {0x66, 0x4F, 0x9D},
    {0x67, 0x50, 0x9E},
    {0x69, 0x52, 0xA0},
    {0x6A, 0x53, 0xA1},
    {0x6B, 0x54, 0xA2},
    {0x68, 0x51, 0x9F},
    {0x6D, 0x56, 0xA4},
    {0x6C, 0x55, 0xA3},
    {0x6E, 0x57, 0xA5},
    {0x6F, 0x58, 0xA6}
};

static const u8 Unk_ov104_0223FAF8[][2] = {
    {0x7, 0x5},
    {0x4, 0x4},
    {0x0, 0x3}
};

UnkStruct_ov104_0223BFFC * ov104_02237DD8 (UnkStruct_021C0794 * param0, u16 param1, u8 param2, u16 param3, u16 param4, u16 param5, u16 * param6)
{
    u32 v0, v1;
    UnkStruct_02079FF4 * v2;
    UnkStruct_02073C74 * v3;
    UnkStruct_020304A0 * v4;
    u8 v5, v6;
    u16 v7, v8;
    static UnkStruct_ov104_0223BFFC * v9;
    UnkStruct_020305B8 * v10;

    v9 = sub_02018144(11, sizeof(UnkStruct_ov104_0223BFFC));
    MI_CpuClear8(v9, sizeof(UnkStruct_ov104_0223BFFC));

    v9->unk_08 = sub_020304A0(param0);
    v9->unk_04 = param0;
    v9->unk_00 = 11;
    v9->unk_70 = sub_02079FF4(11);
    v9->unk_74 = sub_02079FF4(11);
    v9->unk_A80 = param6;
    v9->unk_13 = 32;

    v4 = v9->unk_08;
    v10 = sub_020305B8(param0);

    if (param1 == 0) {
        v9->unk_10 = param2;
        v9->unk_11 = 0;
        v9->unk_1C = 3;
        v9->unk_12 = 0;

        sub_02030494(v4);

        if (v9->unk_10 == 3) {
            v5 = sub_0206B6FC(sub_020507E4(v9->unk_04));
        } else {
            v5 = (u8)sub_02030600(v10, 8, v9->unk_10, 0, NULL);
        }

        if (v5 == 1) {
            v9->unk_18 = sub_02030698(sub_0203068C(v9->unk_04), sub_0205E700(v9->unk_10), sub_0205E6A8(sub_0205E700(v9->unk_10)));
        } else {
            v9->unk_18 = 0;
        }

        v9->unk_1A = (u16)(v9->unk_18 / 7);
        v9->unk_24 = 0;

        v9->unk_2C[0] = param3;
        v9->unk_2C[1] = param4;
        v9->unk_2C[2] = param5;
    } else {
        v9->unk_10 = (u8)sub_0203054C(v4, 0, 0, 0, NULL);
        v9->unk_11 = (u8)sub_0203054C(v4, 2, 0, 0, NULL);
        v9->unk_1C = (u8)sub_0203054C(v4, 3, 0, 0, NULL);
        v9->unk_12 = (u8)sub_0203054C(v4, 1, 0, 0, NULL);
        v9->unk_18 = sub_02030698(sub_0203068C(v9->unk_04), sub_0205E700(v9->unk_10), sub_0205E6A8(sub_0205E700(v9->unk_10)));
        v9->unk_1A = (u16)(v9->unk_18 / 7);

        for (v7 = 0; v7 < 3; v7++) {
            v9->unk_2C[v7] = (u8)sub_0203054C(v4, 6, v7, 0, NULL);
        }
    }

    for (v7 = 0; v7 < 3; v7++) {
        v3 = sub_0207A0FC(sub_0207A268(v9->unk_04), v9->unk_2C[v7]);
        v9->unk_412[v7] = sub_02074470(v3, 6, NULL);
    }

    v2 = sub_0207A268(v9->unk_04);
    v6 = ov104_0223BD70(v9->unk_10, 0);

    for (v7 = 0; v7 < v6; v7++) {
        sub_0207A048(v9->unk_70, sub_0207A0FC(v2, v9->unk_2C[v7]));

        v3 = sub_0207A0FC(v9->unk_70, v7);
        v0 = 0;

        sub_02074B30(v3, 6, &v0);

        if (sub_02074470(v3, 161, NULL) > 50) {
            v1 = sub_02075AD0(sub_02074470(v3, 5, NULL), 50);
            sub_02074B30(v3, 8, &v1);
            sub_0207418C(v3);
        }
    }

    if (ov104_0223C000(v9->unk_10) == 1) {
        ov104_0222E630(v9->unk_04);
    }

    return v9;
}

void ov104_0223806C (UnkStruct_ov104_0223BFFC * param0, u16 param1)
{
    if (param1 == 0) {
        ov104_02238080(param0);
    } else {
        ov104_02238114(param0);
    }

    return;
}

static void ov104_02238080 (UnkStruct_ov104_0223BFFC * param0)
{
    u16 v0;
    int v1;
    UnkStruct_ov104_0223A348_sub2 v2;
    UnkStruct_02073C74 * v3;
    UnkStruct_02079FF4 * v4;
    u16 v5[6];
    u16 v6[6];

    ov104_0223BD28(param0->unk_10, ov104_0223C124(param0), param0->unk_78, (7 * 2));

    for (v1 = 0; v1 < (7 * 2); v1++) {
        (void)0;
    }

    ov104_0222E4BC(ov104_0223BDA4(param0->unk_10, 1), param0->unk_78[param0->unk_11], param0->unk_78[param0->unk_11 + 7], param0->unk_314, param0->unk_330, param0->unk_31C, param0->unk_320, ov104_0223C000(param0->unk_10));

    for (v1 = 0; v1 < 4; v1++) {
        (void)0;
    }

    v0 = ov104_0223C124(param0);

    for (v1 = 0; v1 < (NELEMS(Unk_ov104_0223FAF8)); v1++) {
        if (v0 >= Unk_ov104_0223FAF8[v1][0]) {
            param0->unk_1C = Unk_ov104_0223FAF8[v1][1];
            break;
        }
    }

    return;
}

static void ov104_02238114 (UnkStruct_ov104_0223BFFC * param0)
{
    u16 v0;
    int v1;
    UnkStruct_02073C74 * v2;
    u8 v3;
    UnkStruct_ov104_0223A348_sub2 v4[6];
    u8 v5[6];
    u16 v6[6];
    u32 v7[6];

    ov104_022381C4(param0);

    for (v1 = 0; v1 < (7 * 2); v1++) {
        param0->unk_78[v1] = (u16)sub_0203054C(param0->unk_08, 5, v1, 0, NULL);
    }

    for (v1 = 0; v1 < 4; v1++) {
        v6[v1] = (u16)sub_0203054C(param0->unk_08, 7, v1, 0, NULL);
        param0->unk_314[v1] = v6[v1];
    }

    ov104_0222E330(v4, v6, v5, NULL, v7, 4, 11, 179);

    v2 = sub_02073C74(11);

    for (v1 = 0; v1 < 4; v1++) {
        ov104_0222DF40(&v4[v1], v2, ov104_0223BFFC(param0));
        ov104_0223C034(param0, param0->unk_74, v2);
    }

    sub_020181C4(v2);

    return;
}

static void ov104_022381C4 (UnkStruct_ov104_0223BFFC * param0)
{
    u8 v0;
    u16 v1;
    int v2;
    UnkStruct_02073C74 * v3;

    v0 = sub_0207A0F8(param0->unk_70);

    for (v2 = 0; v2 < v0; v2++) {
        v3 = sub_0207A0FC(param0->unk_70, v2);
        v1 = (u16)sub_0203054C(param0->unk_08, 4, v2, 0, NULL);

        sub_02074B30(v3, 6, &v1);
    }

    return;
}

void ov104_02238210 (UnkStruct_ov104_0223BFFC * param0)
{
    int v0;

    if (param0 == NULL) {
        return;
    }

    if (param0->unk_70 != NULL) {
        sub_020181C4(param0->unk_70);
    }

    if (param0->unk_74 != NULL) {
        sub_020181C4(param0->unk_74);
    }

    MI_CpuClear8(param0, sizeof(UnkStruct_ov104_0223BFFC));
    sub_020181C4(param0);

    param0 = NULL;

    return;
}

void ov104_02238240 (UnkStruct_ov104_0223BFFC * param0, void * param1)
{
    int v0;
    UnkStruct_ov104_02238240 * v1 = param1;

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_418[v0] = ov104_02238264(param1, v0);
    }

    return;
}

u16 ov104_02238264 (void * param0, u8 param1)
{
    UnkStruct_ov104_02238240 * v0 = param0;

    if (param1 >= 6) {
        GF_ASSERT(0);
        return 0;
    }

    return v0->unk_38;
}

void ov104_02238278 (UnkStruct_ov104_0223BFFC * param0, u8 param1)
{
    u16 v0;
    u8 v1;
    u8 v2[4];
    u16 v3[4];
    u32 v4[4];
    u32 v5, v6;
    UnkStruct_02073C74 * v7;
    UnkStruct_020304A0 * v8 = param0->unk_08;
    UnkStruct_020305B8 * v9 = sub_020305B8(param0->unk_04);

    v1 = ov104_0223BDA4(param0->unk_10, 1);

    v2[0] = param0->unk_10;
    sub_020304CC(param0->unk_08, 0, 0, 0, v2);
    sub_020304B8(param0->unk_08, 1);

    v2[0] = param0->unk_11;
    sub_020304CC(param0->unk_08, 2, 0, 0, v2);

    v2[0] = param0->unk_1C;
    sub_020304CC(param0->unk_08, 3, 0, 0, v2);

    v2[0] = param0->unk_12;
    sub_020304CC(param0->unk_08, 1, 0, 0, v2);
    sub_020306E4(sub_0203068C(param0->unk_04), sub_0205E700(param0->unk_10), sub_0205E6A8(sub_0205E700(param0->unk_10)), param0->unk_18);

    if (param1 != 2) {
        v5 = sub_02030848(sub_0203068C(param0->unk_04), sub_0205E728(param0->unk_10), sub_0205E6A8(sub_0205E728(param0->unk_10)), param0->unk_18);

        v2[0] = param0->unk_2F;
        sub_020305CC(v9, 8, param0->unk_10, 0, v2);

        if (param0->unk_10 == 3) {
            sub_020306E4(sub_0203068C(param0->unk_04), 110, sub_0205E6A8(110), param0->unk_2F);
        }
    }

    for (v0 = 0; v0 < (7 * 2); v0++) {
        v3[0] = param0->unk_78[v0];
        sub_020304CC(param0->unk_08, 5, v0, 0, v3);
    }

    for (v0 = 0; v0 < 3; v0++) {
        v2[0] = param0->unk_2C[v0];
        sub_020304CC(param0->unk_08, 6, v0, 0, v2);
    }

    v6 = sub_0207A0F8(param0->unk_70);

    for (v0 = 0; v0 < v6; v0++) {
        v7 = sub_0207A0FC(param0->unk_70, v0);
        v3[0] = sub_02074470(v7, 6, NULL);
        sub_020304CC(param0->unk_08, 4, v0, 0, v3);
    }

    v6 = sub_0207A0F8(param0->unk_74);

    for (v0 = 0; v0 < v6; v0++) {
        v7 = sub_0207A0FC(param0->unk_74, v0);
        v3[0] = param0->unk_314[v0];
        sub_020304CC(param0->unk_08, 7, v0, 0, v3);
    }

    return;
}

u16 ov104_02238454 (UnkStruct_ov104_0223BFFC * param0)
{
    param0->unk_11++;
    return param0->unk_11;
}

u16 ov104_02238460 (UnkStruct_ov104_0223BFFC * param0)
{
    return param0->unk_11;
}

u16 ov104_02238464 (UnkStruct_ov104_0223BFFC * param0, u8 param1)
{
    UnkStruct_ov104_0223A348_sub1 v0;
    UnkStruct_0204B184 * v1;
    u8 v2;

    v2 = ov104_02238498(param0, param1);
    v1 = ov104_0222DD04(&v0, param0->unk_78[v2], 11, 178);

    sub_020181C4(v1);

    return ov104_0222E10C(v0.unk_04);
}

u16 ov104_02238498 (UnkStruct_ov104_0223BFFC * param0, u8 param1)
{
    return param0->unk_11 + (param1 * 7);
}

void ov104_022384A8 (UnkStruct_ov104_0223BFFC * param0)
{
    u16 v0[4];
    int v1;

    ov104_02238278(param0, 1);
    return;
}

void ov104_022384B4 (UnkStruct_ov104_0223BFFC * param0)
{
    param0->unk_2F = 1;

    if (param0->unk_1A < 8) {
        param0->unk_1A++;
    }

    param0->unk_11 = 0;
    ov104_02238278(param0, 0);

    return;
}

void ov104_022384D4 (UnkStruct_ov104_0223BFFC * param0)
{
    ov104_0223C04C(param0);
    return;
}

void ov104_022384DC (UnkStruct_ov104_0223BFFC * param0)
{
    int v0, v1, v2;
    u8 v3;

    ov104_0222E4BC(ov104_0223BDA4(param0->unk_10, 1), param0->unk_78[param0->unk_11], param0->unk_78[param0->unk_11 + 7], param0->unk_314, param0->unk_330, param0->unk_31C, param0->unk_320, ov104_0223C000(param0->unk_10));

    for (v0 = 0; v0 < 4; v0++) {
        (void)0;
    }

    ov104_0223C04C(param0);

    return;
}

static const u8 Unk_ov104_0223FAF0[5] = {
    0x8,
    0x6,
    0x4,
    0x0,
    0x0
};

static const u8 Unk_ov104_0223FAE8[5] = {
    0x6,
    0x4,
    0x2,
    0x0,
    0x0
};

static const u8 Unk_ov104_0223FAFE[5][2] = {
    {0x3, 0xA},
    {0x5, 0x6},
    {0x7, 0x4},
    {0x9, 0x2},
    {0xA, 0x0}
};

int ov104_02238538 (UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, UnkStruct_02079FF4 * param2, int param3)
{
    u8 v0;
    int v1;
    UnkStruct_02073C74 * v2;
    int v3;

    v3 = 0;
    v0 = ov104_0223BD70(param0->unk_10, 0);

    v3 += ov104_02238584(param0, param1, param2, v0);

    for (v1 = 0; v1 < 5; v1++) {
        if (param3 < Unk_ov104_0223FAFE[v1][0]) {
            v3 += Unk_ov104_0223FAFE[v1][1];
            break;
        }
    }

    return v3;
}

static int ov104_02238584 (UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, UnkStruct_02079FF4 * param2, u8 param3)
{
    u32 v0;
    u8 v1;
    u8 v2;
    int v3, v4;
    UnkStruct_02073C74 * v5;

    v4 = 0;
    v1 = 0;
    v2 = 0;

    for (v3 = 0; v3 < param3; v3++) {
        v5 = sub_0207A0FC(param1, v3);

        if (sub_02074470(v5, 172, NULL) == 0) {
            continue;
        }

        v0 = sub_02074470(v5, 163, NULL);

        if (v0 == 0) {
            v1++;
        }

        if (sub_02074470(v5, 160, NULL) != 0) {
            v2++;
        }
    }

    if (ov104_0223C000(param0->unk_10) == 1) {
        for (v3 = 0; v3 < param3; v3++) {
            v5 = sub_0207A0FC(param2, v3);

            if (sub_02074470(v5, 172, NULL) == 0) {
                continue;
            }

            v0 = sub_02074470(v5, 163, NULL);

            if (v0 == 0) {
                v1++;
            }

            if (sub_02074470(v5, 160, NULL) != 0) {
                v2++;
            }
        }
    }

    v4 += Unk_ov104_0223FAF0[v2];
    v4 += Unk_ov104_0223FAE8[v1];

    return v4;
}

void ov104_02238658 (void * param0, UnkStruct_ov104_0223C4CC * param1)
{
    NARC * v0;
    UnkStruct_ov104_0223BFFC * v1;

    v1 = (UnkStruct_ov104_0223BFFC *)param0;

    if (v1->unk_13 != 32) {
        v0 = NARC_ctor(150, 94);

        sub_020070E8(v0, Unk_ov104_0223FBBA[v1->unk_13][0], param1->unk_00, 2, 0, 0, 1, 94);
        sub_0200710C(v0, Unk_ov104_0223FBBA[v1->unk_13][1], param1->unk_00, 2, 0, 0, 1, 94);

        {
            NNSG2dPaletteData * v2;
            void * v3;

            v3 = sub_020071EC(v0, Unk_ov104_0223FBBA[v1->unk_13][2], &v2, 94);
            DC_FlushRange(v2->pRawData, v2->szByte);

            GX_BeginLoadBGExtPltt();
            GX_LoadBGExtPltt(v2->pRawData, 0x4000, 0x2000);
            GX_EndLoadBGExtPltt();

            sub_020181C4(v3);
        }

        sub_0201FF0C(GX_PLANEMASK_BG2, 1);
        sub_0201C3C0(param1->unk_00, 2);
        NARC_dtor(v0);
    } else {
        sub_0201FF0C(GX_PLANEMASK_BG2, 0);
    }

    return;
}

void ov104_02238728 (void * param0, UnkStruct_ov104_0223C4CC * param1)
{
    NARC * v0;
    UnkStruct_ov104_0223BFFC * v1;

    v1 = (UnkStruct_ov104_0223BFFC *)param0;
    v0 = NARC_ctor(150, 94);

    sub_0200710C(v0, 53, param1->unk_00, 3, 0, 0, 1, 94);
    sub_0201C3C0(param1->unk_00, 3);
    NARC_dtor(v0);

    return;
}

static const UnkStruct_ov104_0223FB18 Unk_ov104_0223FB18[] = {
    {0x21, 0x14},
    {0x27, 0x2B},
    {0x2B, 0x42},
    {0x2E, 0x59}
};

static const UnkStruct_ov104_0223FB18 Unk_ov104_0223FB28[] = {
    {0xDE, 0x14},
    {0xD8, 0x2B},
    {0xD5, 0x42},
    {0xD2, 0x59}
};

void ov104_02238764 (UnkStruct_ov104_0223BFFC * param0, UnkStruct_ov104_0223C4CC * param1, u16 param2)
{
    u8 v0, v1;
    int v2;
    UnkStruct_02073C74 * v3;

    v0 = ov104_0223BD70(param0->unk_10, 1);
    v1 = ov104_0223BDA4(param0->unk_10, 1);

    if (param2 == 0) {
        for (v2 = 0; v2 < v0; v2++) {
            v3 = sub_0207A0FC(param0->unk_70, v2);
            param0->unk_30[v2] = ov104_02232F4C(param1, v3, v2, Unk_ov104_0223FB18[v2].unk_00, Unk_ov104_0223FB18[v2].unk_02);
            sub_02021CC8(param0->unk_30[v2]->unk_00, 0);
        }
    } else {
        for (v2 = 0; v2 < v1; v2++) {
            v3 = sub_0207A0FC(param0->unk_74, v2);
            param0->unk_40[v2] = ov104_02232F4C(param1, v3, v2 + v0, Unk_ov104_0223FB28[v2].unk_00, Unk_ov104_0223FB28[v2].unk_02);
            sub_02021CC8(param0->unk_40[v2]->unk_00, 0);
        }
    }

    return;
}

void ov104_02238814 (UnkStruct_ov104_0223BFFC * param0, UnkStruct_ov104_0223C4CC * param1, u16 param2)
{
    u8 v0, v1;
    int v2;

    v0 = ov104_0223BD70(param0->unk_10, 1);
    v1 = ov104_0223BDA4(param0->unk_10, 1);

    if (param2 == 0) {
        for (v2 = 0; v2 < v0; v2++) {
            ov104_02232FD4(param1, param0->unk_30[v2], v2);
        }
    } else {
        for (v2 = 0; v2 < v1; v2++) {
            ov104_02232FD4(param1, param0->unk_40[v2], v2 + v0);
        }
    }

    return;
}

void ov104_0223886C (UnkStruct_ov104_0223BFFC * param0, UnkStruct_ov104_0223C4CC * param1, u16 param2, u16 param3)
{
    u8 v0;

    v0 = ov104_0223BD70(param0->unk_10, 1);

    if (param3 >= v0) {
        return;
    }

    if (param2 == 1) {
        sub_02021CAC(param0->unk_30[param3]->unk_00, 1);
    } else {
        sub_02021CAC(param0->unk_30[param3]->unk_00, 0);
    }

    return;
}

void ov104_022388A4 (UnkStruct_ov104_0223BFFC * param0, UnkStruct_ov104_0223C4CC * param1, u16 param2, u16 param3)
{
    u8 v0;

    v0 = ov104_0223BDA4(param0->unk_10, 1);

    if (param3 >= v0) {
        return;
    }

    if (param2 == 1) {
        sub_02021CAC(param0->unk_40[param3]->unk_00, 1);
    } else {
        sub_02021CAC(param0->unk_40[param3]->unk_00, 0);
    }

    return;
}

void ov104_022388DC (UnkStruct_ov104_0223BFFC * param0, UnkStruct_ov104_0223C4CC * param1, u16 param2)
{
    u8 v0, v1;
    int v2;
    UnkStruct_02073C74 * v3;

    v0 = ov104_0223BD70(param0->unk_10, 1);
    v1 = ov104_0223BDA4(param0->unk_10, 1);

    if (param2 == 0) {
        for (v2 = 0; v2 < v0; v2++) {
            param0->unk_50[v2] = ov104_022330AC(param1, Unk_ov104_0223FB18[v2].unk_00 + 8, Unk_ov104_0223FB18[v2].unk_02 + 4);

            v3 = sub_0207A0FC(param0->unk_70, v2);

            if (sub_02074470(v3, 6, NULL) == 0) {
                sub_02021CAC(param0->unk_50[v2]->unk_00, 0);
            }
        }
    } else {
        for (v2 = 0; v2 < v1; v2++) {
            param0->unk_60[v2] = ov104_022330AC(param1, Unk_ov104_0223FB28[v2].unk_00 + 8, Unk_ov104_0223FB28[v2].unk_02 + 4);

            v3 = sub_0207A0FC(param0->unk_74, v2);

            if (sub_02074470(v3, 6, NULL) == 0) {
                sub_02021CAC(param0->unk_60[v2]->unk_00, 0);
            }
        }
    }

    return;
}

void ov104_022389A0 (UnkStruct_ov104_0223BFFC * param0, UnkStruct_ov104_0223C4CC * param1, u16 param2)
{
    u8 v0, v1;
    int v2;

    v0 = ov104_0223BD70(param0->unk_10, 1);
    v1 = ov104_0223BDA4(param0->unk_10, 1);

    if (param2 == 0) {
        for (v2 = 0; v2 < v0; v2++) {
            ov104_022330F0(param1, param0->unk_50[v2]);
        }
    } else {
        for (v2 = 0; v2 < v1; v2++) {
            ov104_022330F0(param1, param0->unk_60[v2]);
        }
    }

    return;
}

void ov104_022389F4 (UnkStruct_ov104_0223BFFC * param0, UnkStruct_ov104_0223C4CC * param1, u16 param2, u16 param3, u16 param4)
{
    u32 v0;
    u8 v1, v2;
    UnkStruct_02073C74 * v3;

    v1 = ov104_0223BD70(param0->unk_10, 1);
    v2 = ov104_0223BDA4(param0->unk_10, 1);

    if (param2 == 0) {
        if (param3 >= v1) {
            return;
        }

        v3 = sub_0207A0FC(param0->unk_70, param3);
        v0 = sub_02074470(v3, 6, NULL);

        if (param4 == 1) {
            if (v0 == 0) {
                sub_02021CAC(param0->unk_50[param3]->unk_00, 0);
            } else {
                sub_02021CAC(param0->unk_50[param3]->unk_00, 1);
            }
        } else {
            sub_02021CAC(param0->unk_50[param3]->unk_00, 0);
        }
    } else {
        if (param3 >= v2) {
            return;
        }

        v3 = sub_0207A0FC(param0->unk_74, param3);
        v0 = sub_02074470(v3, 6, NULL);

        if (param4 == 1) {
            if (v0 == 0) {
                sub_02021CAC(param0->unk_60[param3]->unk_00, 0);
            } else {
                sub_02021CAC(param0->unk_60[param3]->unk_00, 1);
            }
        } else {
            sub_02021CAC(param0->unk_60[param3]->unk_00, 0);
        }
    }

    return;
}

void ov104_02238AB4 (u8 param0, u8 param1)
{
    u32 v0, v1;
    NNSG2dPaletteData * v2;
    void * v3;
    NARC * v4;
    u16 * v5;

    if (param1 == 0) {
        v0 = 143;
        v1 = (15 * 16) * 2;
    } else {
        v0 = 142;
        v1 = (9 * 16) * 2;
    }

    v5 = sub_02018144(94, 0x1000 * 2);
    memset(v5, 0, 0x1000 * 2);

    v4 = NARC_ctor(150, 94);
    v3 = sub_020071EC(v4, v0, &v2, 94);

    sub_0200393C(v2->pRawData, v5, 0x1000, param0, 0x0);
    DC_FlushRange(v5, 0x1000 * 2);

    GX_BeginLoadBGExtPltt();
    GX_LoadBGExtPltt(v5, 0x6000, v1);
    GX_EndLoadBGExtPltt();

    NARC_dtor(v4);
    sub_020181C4(v5);
    sub_020181C4(v3);

    return;
}

BOOL ov104_02238B40 (UnkStruct_ov104_0223BFFC * param0, u16 param1, u16 param2)
{
    int v0;

    switch (param1) {
    case 0:
        v0 = ov104_0222F86C(param0);
        break;
    case 1:
        v0 = ov104_0222F8D0(param0);
        break;
    case 2:
        v0 = ov104_0222F944(param0);
        break;
    case 3:
        v0 = ov104_0222FA38(param0, param2);
        break;
    case 4:
        v0 = ov104_0222FA84(param0, param2);
        break;
    case 5:
        v0 = ov104_0222FAD0(param0);
        break;
    }

    return v0;
}

static const u16 Unk_ov104_0223FB4C[] = {
    0xDD,
    0xD9,
    0xD5,
    0x115,
    0x128,
    0xE6,
    0x113,
    0xEA,
    0x116,
    0x117,
    0x119
};

static const u16 Unk_ov104_0223FB78[] = {
    0xD6,
    0x10F,
    0x10A,
    0x10B,
    0xFD,
    0xE8,
    0x109,
    0x114,
    0x10C,
    0x10E,
    0x116,
    0x117,
    0x119
};

static const u16 Unk_ov104_0223FB62[] = {
    0xE6,
    0x113,
    0xEA,
    0xE8,
    0x109,
    0x114,
    0x10C,
    0x10E,
    0xDC,
    0x129,
    0x11F
};

static const u16 * Unk_ov104_02241A2C[] = {
    Unk_ov104_0223FB4C,
    Unk_ov104_0223FB78,
    Unk_ov104_0223FB62
};

static const u16 Unk_ov104_0223FB08[] = {
    0x95,
    0x96,
    0x97,
    0x98,
    0x99,
    0x9C,
    0x9E,
    0x9D
};

static const u16 Unk_ov104_0223FB92[] = {
    0xB8,
    0xB9,
    0xBA,
    0xBB,
    0xBC,
    0xBD,
    0xBE,
    0xBF,
    0xC0,
    0xC1,
    0xC2,
    0xC3,
    0xC4,
    0xC5,
    0xC6,
    0xC7,
    0xC8,
    0x9C,
    0x9E,
    0x9D
};

static const u16 Unk_ov104_0223FB38[] = {
    0x9C,
    0x9E,
    0x9D,
    0xC9,
    0xCA,
    0xCB,
    0xCC,
    0xCD,
    0xCE,
    0xCF
};

static const u16 * Unk_ov104_02241A20[] = {
    Unk_ov104_0223FB08,
    Unk_ov104_0223FB92,
    Unk_ov104_0223FB38
};

static void * Unk_ov104_02241A38[] = {
    ov104_02238BBC,
    ov104_02238C18,
    ov104_02238C9C,
    ov104_02238D14,
    ov104_02238D8C,
    ov104_02238E08,
    ov104_02238E9C,
    ov104_02238EF8,
    ov104_02238F54,
    ov104_02238BBC,
    ov104_02238C18,
    ov104_02238C9C,
    ov104_02238D14,
    ov104_02238D8C,
    ov104_02238E08,
    ov104_02238E9C,
    ov104_02238EF8,
    ov104_02238F54,
    ov104_02238FAC,
    ov104_02238FB8,
    ov104_02238FC0,
    ov104_02238FC8,
    ov104_02238FD0,
    ov104_02238FD8,
    ov104_02238FE4,
    ov104_02238FF0,
    ov104_02238FFC,
    ov104_02239004,
    ov104_02239008,
    ov104_0223900C,
    ov104_02239010,
    ov104_02239008
};

void ov104_02238B88 (UnkStruct_ov104_0223BFFC * param0, u8 param1)
{
    u8 v0;
    UnkStruct_02079FF4 * v1;
    UnkFuncPtr_ov104_02238B88 v2;

    if (param1 < 9) {
        v1 = param0->unk_74;
        v0 = ov104_0223BDA4(param0->unk_10, 1);
    } else {
        v1 = param0->unk_70;
        v0 = ov104_0223BD70(param0->unk_10, 1);
    }

    v2 = Unk_ov104_02241A38[param1];
    v2(param0, v1, v0);

    return;
}

static void ov104_02238BBC (UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2)
{
    int v0;
    u32 v1, v2;
    UnkStruct_02073C74 * v3;

    for (v0 = 0; v0 < param2; v0++) {
        v3 = sub_0207A0FC(param1, v0);
        v1 = sub_02074470(v3, 164, NULL);
        v2 = (v1 * 1.2);
        v2 -= v1;
        v2 = (v1 - v2);

        sub_02074B30(v3, 163, &v2);
    }

    return;
}

static void ov104_02238C18 (UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2)
{
    int v0, v1;
    u32 v2, v3, v4, v5;
    UnkStruct_02073C74 * v6;

    v1 = 0;

    for (v0 = 0; v0 < param2; v0++) {
        v6 = sub_0207A0FC(param1, v0);
        v3 = sub_02074470(v6, 177, NULL);
        v4 = sub_02074470(v6, 178, NULL);
        v5 = sub_02074470(v6, 10, NULL);

        if ((v3 == 3) || (v4 == 3) || (v3 == 8) || (v4 == 8) || (v5 == 17)) {
            v1++;
        } else {
            v2 = 0x8;
            sub_02074B30(v6, 160, &v2);
        }
    }

    if (v1 >= param2) {
        param0->unk_1F = 1;
    }

    return;
}

static void ov104_02238C9C (UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2)
{
    int v0, v1;
    u32 v2, v3, v4, v5;
    UnkStruct_02073C74 * v6;

    v1 = 0;

    for (v0 = 0; v0 < param2; v0++) {
        v6 = sub_0207A0FC(param1, v0);
        v3 = sub_02074470(v6, 177, NULL);
        v4 = sub_02074470(v6, 178, NULL);
        v5 = sub_02074470(v6, 10, NULL);

        if ((v3 == 4) || (v4 == 4) || (v5 == 7)) {
            v1++;
        } else {
            v2 = 0x40;
            sub_02074B30(v6, 160, &v2);
        }
    }

    if (v1 >= param2) {
        param0->unk_1F = 1;
    }

    return;
}

static void ov104_02238D14 (UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2)
{
    int v0, v1;
    u32 v2, v3, v4, v5;
    UnkStruct_02073C74 * v6;

    v1 = 0;

    for (v0 = 0; v0 < param2; v0++) {
        v6 = sub_0207A0FC(param1, v0);
        v3 = sub_02074470(v6, 177, NULL);
        v4 = sub_02074470(v6, 178, NULL);
        v5 = sub_02074470(v6, 10, NULL);

        if ((v3 == 10) || (v4 == 10) || (v5 == 41)) {
            v1++;
        } else {
            v2 = 0x10;
            sub_02074B30(v6, 160, &v2);
        }
    }

    if (v1 >= param2) {
        param0->unk_1F = 1;
    }

    return;
}

static void ov104_02238D8C (UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2)
{
    u8 v0;
    int v1, v2;
    u32 v3, v4;
    UnkStruct_02073C74 * v5;

    v2 = 0;
    v0 = (param0->unk_20 % param2);

    for (v1 = 0; v1 < param2; v1++) {
        v5 = sub_0207A0FC(param1, v0);
        v4 = sub_02074470(v5, 10, NULL);

        if ((v4 == 15) || (v4 == 72)) {
            v2++;
            v0++;

            if (v0 >= param2) {
                v0 = 0;
            }
        } else {
            v3 = (sub_0201D2E8() % 4 + 2);
            sub_02074B30(v5, 160, &v3);
            break;
        }
    }

    if (v2 >= param2) {
        param0->unk_1F = 1;
    }

    return;
}

static void ov104_02238E08 (UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2)
{
    u8 v0;
    int v1, v2;
    u32 v3, v4, v5, v6;
    UnkStruct_02073C74 * v7;

    v2 = 0;
    v0 = (param0->unk_20 % param2);

    for (v1 = 0; v1 < param2; v1++) {
        v7 = sub_0207A0FC(param1, v0);
        v4 = sub_02074470(v7, 177, NULL);
        v5 = sub_02074470(v7, 178, NULL);
        v6 = sub_02074470(v7, 10, NULL);

        if ((v4 == 15) || (v5 == 15) || (v6 == 40)) {
            v2++;
            v0++;

            if (v0 >= param2) {
                v0 = 0;
            }
        } else {
            v3 = 0x20;
            sub_02074B30(v7, 160, &v3);

            break;
        }
    }

    if (v2 >= param2) {
        param0->unk_1F = 1;
    }

    return;
}

static void ov104_02238E9C (UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2)
{
    int v0, v1;
    const u16 * v2;
    u16 v3, v4;
    UnkStruct_02073C74 * v5;

    v4 = ov104_0223C124(param0);

    if (v4 < 3) {
        v2 = Unk_ov104_02241A20[0];
        v1 = (NELEMS(Unk_ov104_0223FB08));
    } else if (v4 < 6) {
        v2 = Unk_ov104_02241A20[1];
        v1 = (NELEMS(Unk_ov104_0223FB92));
    } else {
        v2 = Unk_ov104_02241A20[2];
        v1 = (NELEMS(Unk_ov104_0223FB38));
    }

    v3 = v2[(param0->unk_20 % v1)];

    for (v0 = 0; v0 < param2; v0++) {
        v5 = sub_0207A0FC(param1, v0);
        sub_02074B30(v5, 6, &v3);
    }

    return;
}

static void ov104_02238EF8 (UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2)
{
    int v0, v1;
    const u16 * v2;
    u16 v3, v4;
    UnkStruct_02073C74 * v5;

    v4 = ov104_0223C124(param0);

    if (v4 < 3) {
        v2 = Unk_ov104_02241A2C[0];
        v1 = (NELEMS(Unk_ov104_0223FB4C));
    } else if (v4 < 6) {
        v2 = Unk_ov104_02241A2C[1];
        v1 = (NELEMS(Unk_ov104_0223FB78));
    } else {
        v2 = Unk_ov104_02241A2C[2];
        v1 = (NELEMS(Unk_ov104_0223FB62));
    }

    v3 = v2[(param0->unk_20 % v1)];

    for (v0 = 0; v0 < param2; v0++) {
        v5 = sub_0207A0FC(param1, v0);
        sub_02074B30(v5, 6, &v3);
    }

    return;
}

static void ov104_02238F54 (UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2)
{
    int v0;
    u32 v1, v2;
    UnkStruct_02073C74 * v3;

    for (v0 = 0; v0 < param2; v0++) {
        v3 = sub_0207A0FC(param1, v0);
        v2 = sub_02074470(v3, 161, NULL);
        v2 += 3;

        if (v2 > 100) {
            GF_ASSERT(0);
            v2 = 100;
        }

        v1 = sub_02075AD0(sub_02074470(v3, 5, NULL), v2);

        sub_02074B30(v3, 8, &v1);
        sub_0207418C(v3);
    }

    return;
}

static void ov104_02238FAC (UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2)
{
    UnkStruct_02073C74 * v0;

    param0->unk_14 = 1001;
    return;
}

static void ov104_02238FB8 (UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2)
{
    UnkStruct_02073C74 * v0;

    param0->unk_14 = 2;
    return;
}

static void ov104_02238FC0 (UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2)
{
    UnkStruct_02073C74 * v0;

    param0->unk_14 = 10;
    return;
}

static void ov104_02238FC8 (UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2)
{
    UnkStruct_02073C74 * v0;

    param0->unk_14 = 5;
    return;
}

static void ov104_02238FD0 (UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2)
{
    UnkStruct_02073C74 * v0;

    param0->unk_14 = 14;
    return;
}

static void ov104_02238FD8 (UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2)
{
    UnkStruct_02073C74 * v0;

    param0->unk_14 = 1002;
    return;
}

static void ov104_02238FE4 (UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2)
{
    UnkStruct_02073C74 * v0;

    if (param0->unk_1C < (8 - 1)) {
        param0->unk_1C++;
    }

    return;
}

static void ov104_02238FF0 (UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2)
{
    UnkStruct_02073C74 * v0;

    if (param0->unk_1C > 0) {
        param0->unk_1C--;
    }

    return;
}

static void ov104_02238FFC (UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2)
{
    UnkStruct_02073C74 * v0;

    param0->unk_12 = 1;
    return;
}

static void ov104_02239004 (UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2)
{
    UnkStruct_02073C74 * v0;
    return;
}

static void ov104_02239008 (UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2)
{
    u16 v0;
    UnkStruct_02073C74 * v1;

    return;
}

static void ov104_0223900C (UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2)
{
    UnkStruct_02073C74 * v0;
    return;
}

static void ov104_02239010 (UnkStruct_ov104_0223BFFC * param0, UnkStruct_02079FF4 * param1, u8 param2)
{
    UnkStruct_02073C74 * v0;
    return;
}

u16 ov104_02239014 (UnkStruct_ov104_0223BFFC * param0)
{
    u8 v0;
    u16 v1;
    static const u8 v2[8 + 1] = {0, 2, 2, 2, 2, 4, 4, 5, 6};
    static const u8 v3[8 + 1] = {0, 7, 8, 9, 10, 13, 14, 16, 17};

    v1 = param0->unk_1A;

    if ((param0->unk_10 == 0) || (param0->unk_10 == 1)) {
        if (v1 >= 8) {
            v0 = v2[8];
        } else {
            v0 = v2[v1];
        }
    } else {
        if (v1 >= 8) {
            v0 = v3[8];
        } else {
            v0 = v3[v1];
        }
    }

    if (param0->unk_10 == 0) {
        if ((param0->unk_18 == 21) || (param0->unk_18 == 49)) {
            v0 = 20;
        }
    }

    return v0;
}

void ov104_02239054 (UnkStruct_02079FF4 * param0, UnkStruct_02079FF4 * param1, int param2, int param3)
{
    u16 v0;
    UnkStruct_02073C74 * v1;
    UnkStruct_02073C74 * v2;

    v2 = sub_0207A0FC(param0, param2);
    v0 = sub_02074470(v2, 6, NULL);
    v1 = sub_0207A0FC(param1, param3);

    sub_02074B30(v1, 6, &v0);

    return;
}
