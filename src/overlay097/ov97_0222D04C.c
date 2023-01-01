#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_0203CC84.h"
#include "overlay097/struct_ov97_0222D04C.h"
#include "overlay097/struct_ov97_0222D250.h"
#include "overlay097/union_ov97_0222D2B0.h"

#include "unk_020067E8.h"
#include "unk_0200D9E8.h"
#include "unk_02017E74.h"
#include "unk_020329E0.h"
#include "unk_02033200.h"
#include "unk_02034198.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "overlay097/ov97_0222D04C.h"
#include "overlay097/ov97_0222D2F8.h"
#include "overlay097/ov97_0222D30C.h"

typedef void (* UnkFuncPtr_ov97_0222D0A4)(void);

typedef struct {
    UnkStruct_ov97_0222D04C * unk_00;
    MATHRandContext32 unk_04;
    UnkStruct_0201CD38 * unk_1C;
    UnkFuncPtr_ov97_0222D0A4 unk_20;
    u16 unk_24;
    u8 unk_26;
    u8 unk_27;
    UnkStruct_02025E6C * unk_28[16];
    UnkUnion_ov97_0222D2B0 unk_68;
    u8 unk_3C0;
    u8 unk_3C1[16];
} UnkStruct_ov97_0223F1A4;

static void ov97_0222D19C(UnkStruct_0201CD38 * param0, void * param1);
static void ov97_0222D0B4(void);
static void ov97_0222D0F0(void);
static void ov97_0222D128(void);
static void ov97_0222D140(void);
static void ov97_0222D144(void);
static void ov97_0222D164(void);
static void ov97_0222D198(void);

static UnkStruct_ov97_0223F1A4 * Unk_ov97_0223F1A4 = NULL;

static void ov97_0222D04C (UnkStruct_ov97_0222D04C * param0)
{
    void * v0;

    if (Unk_ov97_0223F1A4 != NULL) {
        return;
    }

    ov97_0222D2F8((void *)param0);

    Unk_ov97_0223F1A4 = (UnkStruct_ov97_0223F1A4 *)sub_02018144(15, sizeof(UnkStruct_ov97_0223F1A4));
    MI_CpuFill8(Unk_ov97_0223F1A4, 0, sizeof(UnkStruct_ov97_0223F1A4));

    Unk_ov97_0223F1A4->unk_24 = 50;
    Unk_ov97_0223F1A4->unk_1C = sub_0200D9E8(ov97_0222D19C, NULL, 10);
    Unk_ov97_0223F1A4->unk_00 = param0;

    sub_020361BC(&Unk_ov97_0223F1A4->unk_04);
}

static void ov97_0222D0A4 (UnkFuncPtr_ov97_0222D0A4 param0, int param1)
{
    Unk_ov97_0223F1A4->unk_20 = param0;
    Unk_ov97_0223F1A4->unk_24 = param1;
}

static void ov97_0222D0B4 (void)
{
    int v0;

    if (!sub_02035D78(sub_0203608C())) {
        return;
    }

    for (v0 = 0; v0 < 16; v0++) {
        Unk_ov97_0223F1A4->unk_3C1[v0] = 0;
    }

    sub_02032AC0();
    ov97_0222D0A4(ov97_0222D0F0, 0);
}

static void ov97_0222D0F0 (void)
{
    int v0;

    for (v0 = 0; v0 < 16; v0++) {
        if ((Unk_ov97_0223F1A4->unk_28[v0] == NULL) && (sub_02035D78(v0) == 1)) {
            Unk_ov97_0223F1A4->unk_28[v0] = sub_02032EE8(v0);

            if (Unk_ov97_0223F1A4->unk_28[v0]) {
                (void)0;
            }
        }
    }
}

static void ov97_0222D128 (void)
{
    if (!sub_020334A4()) {
        return;
    }

    ov97_0222D0A4(ov97_0222D140, 0);
}

static void ov97_0222D140 (void)
{
    (void)0;
}

static void ov97_0222D144 (void)
{
    sub_02036948(Unk_ov97_0223F1A4->unk_27);
    ov97_0222D0A4(ov97_0222D164, 0);
}

static void ov97_0222D164 (void)
{
    if (!sub_0203699C()) {
        return;
    }

    Unk_ov97_0223F1A4->unk_3C0 = 0;

    sub_02032AC0();
    sub_020364F0(0xAB);

    ov97_0222D0A4(ov97_0222D198, 0);
}

static void ov97_0222D198 (void)
{
    return;
}

void ov97_0222D19C (UnkStruct_0201CD38 * param0, void * param1)
{
    if (Unk_ov97_0223F1A4 == NULL) {
        sub_0200DA58(param0);
    } else {
        if (Unk_ov97_0223F1A4->unk_20 != NULL) {
            UnkFuncPtr_ov97_0222D0A4 v0 = Unk_ov97_0223F1A4->unk_20;

            if (!Unk_ov97_0223F1A4->unk_26) {
                v0();
            }
        }
    }
}

void ov97_0222D1C4 (UnkStruct_ov97_0222D04C * param0, UnkStruct_021C0794 * param1, int param2)
{
    if (sub_02035E38()) {
        return;
    }

    sub_02036BE8(param1, param2);

    ov97_0222D04C(param0);
    ov97_0222D0A4(ov97_0222D0B4, 0);
}

void ov97_0222D1F0 (const void * param0, int param1)
{
    sub_02035A3C(22, param0, param1);
}

void ov97_0222D200 (UnkStruct_ov97_0222D04C * param0, int param1)
{
    UnkStruct_021C0794 * v0;

    if (sub_02035E38()) {
        return;
    }

    v0 = ((UnkStruct_0203CC84 *)sub_02006840(ov97_022301A4()))->unk_08;
    sub_02036C1C(v0, param1);

    ov97_0222D04C(param0);
    ov97_0222D0A4(ov97_0222D128, 0);
}

void ov97_0222D234 (int param0)
{
    Unk_ov97_0223F1A4->unk_27 = param0;
    ov97_0222D0A4(ov97_0222D144, 0);
}

int ov97_0222D250 (UnkStruct_ov97_0222D04C * param0)
{
    int v0;
    UnkStruct_ov97_0222D250 * v1;

    for (v0 = 0; v0 < 16; v0++) {
        v1 = (UnkStruct_ov97_0222D250 *)sub_02034168(v0);

        if (v1) {
            if (v1->unk_4C) {
                memcpy(&param0->unk_8C.unk_00, v1, sizeof(UnkStruct_ov97_0222D250));
                return v0;
            }
        }
    }

    return -1;
}

void ov97_0222D284 (int param0, int param1, void * param2, void * param3)
{
    if (Unk_ov97_0223F1A4->unk_27 != param0) {
        return;
    }

    Unk_ov97_0223F1A4->unk_3C0 = 1;
}

int ov97_0222D2A0 (void)
{
    return Unk_ov97_0223F1A4->unk_3C0;
}

int ov97_0222D2B0 (void)
{
    return sizeof(UnkUnion_ov97_0222D2B0);
}

u8 * ov97_0222D2B8 (int param0, void * param1, int param2)
{
    return (u8 *)&Unk_ov97_0223F1A4->unk_68;
}

void ov97_0222D2C4 (int param0, int param1, void * param2, void * param3)
{
    Unk_ov97_0223F1A4->unk_3C1[param0] = 1;
}

void ov97_0222D2DC (void)
{
    sub_02018238(15, Unk_ov97_0223F1A4);
    Unk_ov97_0223F1A4 = NULL;
    sub_02036978();
}
