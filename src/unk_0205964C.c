#include <nitro.h>
#include <string.h>

#include "struct_decls/sys_task.h"
#include "trainer_info.h"
#include "struct_decls/struct_02029894_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "savedata.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0205964C.h"
#include "functypes/funcptr_020598EC.h"
#include "struct_defs/struct_02072014.h"

#include "unk_0200D9E8.h"
#include "unk_0200F174.h"
#include "heap.h"
#include "communication_information.h"
#include "unk_02033200.h"
#include "communication_system.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_0203CC84.h"
#include "unk_0203E880.h"
#include "unk_02050A74.h"
#include "unk_02057518.h"
#include "unk_0205964C.h"
#include "unk_0205A0D8.h"
#include "unk_02071D40.h"
#include "party.h"
#include "unk_02099500.h"
#include "overlay007/ov7_02249960.h"
#include "overlay023/ov23_02241F74.h"

static void sub_020598C4(SysTask * param0, void * param1);
static void sub_020598EC(UnkFuncPtr_020598EC param0, int param1);
static void sub_020598FC(void);
static void sub_02059920(void);
static void sub_02059924(void);
static void sub_02059940(void);
static void sub_02059944(void);
static void sub_02059964(void);
static void sub_02059980(void);
static void sub_02059AB4(void);
static void sub_02059B10(void);
static void sub_02059984(void);
static void sub_020599E4(void);
static void sub_02059A70(void);
static void sub_02059BF4(void);
static void sub_02059CD8(void);
static void sub_02059E80(void);
static void sub_02059E94(void);
static void sub_02059E50(void);
static void sub_02059D58(void);
static void sub_02059F10(void);
static void sub_02059FB8(void);
static void sub_02059ED8(void);
static void sub_02059FD4(void);
static void sub_0205A018(void);
static void sub_0205A040(void);
static void sub_0205A058(void);

static UnkStruct_0205964C * Unk_021C084C = NULL;

UnkStruct_0205964C * sub_0205964C (void)
{
    return Unk_021C084C;
}

static void sub_02059658 (void)
{
    return;
}

void sub_0205965C (UnkStruct_0203CDB0 * param0)
{
    void * v0;

    if (Unk_021C084C != NULL) {
        return;
    }

    sub_02099514((void *)param0);

    Unk_021C084C = (UnkStruct_0205964C *)Heap_AllocFromHeap(15, sizeof(UnkStruct_0205964C));
    MI_CpuFill8(Unk_021C084C, 0, sizeof(UnkStruct_0205964C));

    Unk_021C084C->unk_3C = 50;
    Unk_021C084C->unk_38 = SysTask_Start(sub_020598C4, NULL, 10);
    Unk_021C084C->unk_18 = param0;
    Unk_021C084C->unk_44 = NULL;

    sub_02059658();
    CommunicationSystem_InitRandomSeed(&Unk_021C084C->unk_1C);
}

void sub_020596BC (void)
{
    void * v0;
    int v1;

    if (Unk_021C084C == NULL) {
        return;
    }

    SysTask_Done(Unk_021C084C->unk_38);

    for (v1 = 0; v1 < 4; v1++) {
        if (Unk_021C084C->unk_00[v1]) {
            Heap_FreeToHeap(Unk_021C084C->unk_00[v1]);
        }
    }

    if (Unk_021C084C->unk_44) {
        Heap_FreeToHeap(Unk_021C084C->unk_44);
    }

    Heap_FreeToHeap(Unk_021C084C);
    Unk_021C084C = NULL;
}

void sub_02059708 (UnkStruct_0203CDB0 * param0, int param1, int param2)
{
    if (sub_02035E38()) {
        return;
    }

    sub_020368B8(sub_0203D174(param0), param1, param2, param0->unk_B0, 0);
    sub_0205965C(param0);
    sub_020598EC(sub_020598FC, 0);
}

void sub_02059748 (UnkStruct_0203CDB0 * param0, int param1, int param2)
{
    if (sub_02035E38()) {
        return;
    }

    sub_02036900(sub_0203D174(param0), param1, param2, param0->unk_B0, 0);
    sub_0205965C(param0);
    sub_020598EC(sub_02059924, 0);
}

void sub_02059788 (int param0)
{
    Unk_021C084C->unk_3E = param0;
    sub_020598EC(sub_02059944, 0);
}

void sub_020597A4 (void)
{
    sub_020598EC(sub_02059E80, 0);
}

void sub_020597B4 (UnkStruct_0203CDB0 * param0)
{
    sub_0200F3B0(0, 0x0);
    sub_0200F3B0(1, 0x0);
    sub_020388F4(1, 1);

    if (!sub_02036780()) {
        return;
    }

    if (Unk_021C084C == NULL) {
        sub_0205965C(param0);
        Unk_021C084C->unk_42 = 1;
    } else {
        Unk_021C084C->unk_42 = 0;
    }

    Unk_021C084C->unk_43 = 0;

    {
        int v0, v1 = CommunicationSystem_GetCurNetId();
        TrainerInfo * v2 = sub_02032EE8(CommunicationSystem_GetCurNetId());

        for (v0 = 0; v0 < sub_02035E18(); v0++) {
            if (Unk_021C084C->unk_00[v0] == NULL) {
                Unk_021C084C->unk_00[v0] = Heap_AllocFromHeap(0, sizeof(UnkStruct_02072014));
            }
        }

        sub_02071D40(0, 0, 0, 0xff, Unk_021C084C->unk_18, Unk_021C084C->unk_00[v1]);
    }

    sub_020364F0(95);
    sub_020598EC(sub_02059ED8, 0);
}

void sub_0205987C (void)
{
    if (Unk_021C084C == NULL) {
        return;
    }

    sub_020388F4(0, 0);
    sub_020598EC(sub_0205A040, 5);
}

void sub_020598A0 (void)
{
    if (Unk_021C084C == NULL) {
        return;
    }

    sub_020364F0(91);
    sub_020598EC(sub_0205A018, 5);
}

void sub_020598C4 (SysTask * param0, void * param1)
{
    if (Unk_021C084C == NULL) {
        SysTask_Done(param0);
    } else {
        if (Unk_021C084C->unk_34 != NULL) {
            UnkFuncPtr_020598EC v0 = Unk_021C084C->unk_34;

            if (!Unk_021C084C->unk_40) {
                v0();
            }
        }
    }
}

static void sub_020598EC (UnkFuncPtr_020598EC param0, int param1)
{
    Unk_021C084C->unk_34 = param0;
    Unk_021C084C->unk_3C = param1;
}

static void sub_020598FC (void)
{
    if (!CommunicationSystem_IsPlayerConnected(CommunicationSystem_GetCurNetId())) {
        return;
    }

    ov7_0224B4B8();

    CommunicationInformation_SendBattleRegulation();
    sub_020598EC(sub_02059920, 0);
}

static void sub_02059920 (void)
{
    return;
}

static void sub_02059924 (void)
{
    if (!sub_020334A4()) {
        return;
    }

    ov7_0224B450();
    sub_020598EC(sub_02059940, 0);
}

static void sub_02059940 (void)
{
    return;
}

static void sub_02059944 (void)
{
    sub_02036948(Unk_021C084C->unk_3E);
    sub_020598EC(sub_02059964, 0);
}

static void sub_02059964 (void)
{
    if (!sub_0203699C()) {
        return;
    }

    CommunicationInformation_SendBattleRegulation();
    sub_020598EC(sub_02059980, 0);
}

static void sub_02059980 (void)
{
    return;
}

static void sub_02059984 (void)
{
    void * v0;

    if (sub_02036540(98)) {
        v0 = Heap_AllocFromHeap(15, sub_02057C84());
        sub_02057524(v0, Unk_021C084C->unk_18, 0);
        sub_02059524();
        sub_02035EC8();
        sub_020364F0(92);
        sub_020598EC(sub_020599E4, 0);
        return;
    }

    if (Unk_021C084C->unk_3C != 0) {
        Unk_021C084C->unk_3C--;
    } else {
        Unk_021C084C->unk_3C = 30;
        sub_020364F0(98);
    }
}

static void sub_020599E4 (void)
{
    if (CommunicationSystem_GetCurNetId() == 0) {
        sub_02032CE8();
    }

    if (sub_02036540(92)) {
        sub_0200F174(0, 1, 1, 0x0, 6, 1, 4);
        sub_0200F32C(0);
        sub_0200F32C(1);
        sub_020576A0();
        sub_02057AE4(0);
        sub_020598EC(sub_02059A70, 1);
    }
}

static void sub_02059A3C (void)
{
    if (Unk_021C084C->unk_3C != 0) {
        Unk_021C084C->unk_3C--;
        return;
    }

    if (sub_02036540(30)) {
        sub_02035EA8();
        sub_020598EC(sub_02059BF4, 0);
    }
}

static void sub_02059A70 (void)
{
    if (Unk_021C084C->unk_3C != 0) {
        Unk_021C084C->unk_3C--;
        return;
    }

    if (CommunicationSystem_GetCurNetId() == 0) {
        if (0 == sub_0205928C()) {
            return;
        }

        sub_020364F0(30);
    } else {
        sub_020364F0(30);
    }

    sub_020598EC(sub_02059A3C, 20);
}

static void sub_02059AB4 (void)
{
    void * v0;

    if (sub_02036540(98)) {
        v0 = Heap_AllocFromHeap(15, sub_02057C84());
        sub_02057524(v0, Unk_021C084C->unk_18, 0);
        sub_02059524();
        sub_020364F0(92);
        sub_020598EC(sub_02059B10, 0);
        return;
    }

    if (Unk_021C084C->unk_3C != 0) {
        Unk_021C084C->unk_3C--;
    } else {
        Unk_021C084C->unk_3C = 30;
        sub_020364F0(98);
    }
}

static void sub_02059B10 (void)
{
    if (CommunicationSystem_GetCurNetId() == 0) {
        sub_02032CE8();
    }

    if (sub_02036540(92)) {
        sub_020576A0();
        sub_02057AE4(0);

        {
            u8 v0 = 1;
            sub_020360D0(94, &v0);
        }

        sub_0200F174(0, 1, 1, 0x0, 6, 1, 4);
        sub_0200F32C(0);
        sub_0200F32C(1);
        sub_020598EC(sub_02059CD8, 0);
    }
}

static void sub_02059B74 (void)
{
    int v0, v1;

    for (v0 = 0; v0 < sub_02035E18(); v0++) {
        if (v0 != CommunicationSystem_GetCurNetId()) {
            if (sub_02036564(v0) == 94) {
                if (Unk_021C084C->unk_18->unk_10 == NULL) {
                    for (v1 = 0; v1 < 4; v1++) {
                        if (Unk_021C084C->unk_00[v1]) {
                            Heap_FreeToHeap(Unk_021C084C->unk_00[v1]);
                            Unk_021C084C->unk_00[v1] = NULL;
                        }
                    }

                    sub_0203E880(Unk_021C084C->unk_18, 9102, NULL);
                }
            }
        }
    }

    sub_02038A1C(4, Unk_021C084C->unk_18->unk_08);
}

static void sub_02059BF4 (void)
{
    if (!sub_020590C4()) {
        Unk_021C084C->unk_43 = 0;

        {
            u8 v0 = 1;
            sub_020360D0(94, &v0);
        }

        sub_020598EC(sub_02059CD8, 0);
    }

    sub_02059B74();
}

static void sub_02059C2C (BOOL param0, const Party * param1)
{
    if (param1) {
        Unk_021C084C->unk_44 = Party_New(11);
        Party_cpy(param1, Unk_021C084C->unk_44);
    }

    if (param0) {
        sub_020598EC(sub_02059E50, 3);
    } else {
        {
            u8 v0 = 3;
            sub_020360D0(94, &v0);
        }

        sub_020598EC(sub_02059BF4, 0);
    }
}

static void sub_02059C7C (void)
{
    sub_020598EC(sub_02059BF4, 0);
}

static void sub_02059C8C (void)
{
    if (sub_020363A0() || (0 != sub_020593CC(CommunicationSystem_GetCurNetId()))) {
        return;
    }

    if (Unk_021C084C->unk_3C != 0) {
        Unk_021C084C->unk_3C--;
        return;
    }

    sub_020594FC();
    sub_0205AB10(Unk_021C084C->unk_18, sub_02059C2C);
    sub_020598EC(sub_02059C7C, 0);
}

static void sub_02059CD8 (void)
{
    if (Unk_021C084C->unk_43) {
        sub_020598EC(sub_02059C8C, 5);

        {
            u8 v0 = 0;
            sub_020360D0(94, &v0);
        }
    }

    sub_02059B74();
}

void sub_02059D0C (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = param2;

    if (v0[0] == CommunicationSystem_GetCurNetId()) {
        Unk_021C084C->unk_43 = 1;
    }
}

BOOL sub_02059D2C (void)
{
    if (Unk_021C084C) {
        if ((Unk_021C084C->unk_34 == sub_02059CD8) || (Unk_021C084C->unk_34 == sub_02059BF4)) {
            return 1;
        }
    }

    return 0;
}

static void sub_02059D58 (void)
{
    BOOL v0 = 1;
    int v1;
    u8 v2[6];

    if (Unk_021C084C->unk_3C != 0) {
        Unk_021C084C->unk_3C--;
        return;
    }

    v1 = (0x4 | 0x1);

    switch (sub_0203895C()) {
    case 4:
    case 5:
        v1 = (((0x4 | 0x1) | 0x2) | 0x8);
        break;
    case 2:
        v1 = ((0x4 | 0x1) | 0x2);
        break;
    }

    sub_020389A0(v2);

    if (Unk_021C084C->unk_44 == NULL) {
        sub_020517E8(Unk_021C084C->unk_18, v2, v1);
    } else {
        sub_0205184C(Unk_021C084C->unk_18, Unk_021C084C->unk_44, v1);
        Heap_FreeToHeap(Unk_021C084C->unk_44);
        Unk_021C084C->unk_44 = NULL;
    }

    sub_020596BC();
}

static void sub_02059DC8 (void)
{
    if (sub_020348B0()) {
        if (Unk_021C084C->unk_3C != 0) {
            Unk_021C084C->unk_3C--;
        }

        if (Unk_021C084C->unk_3C == 90) {
            sub_020364F0(4);
        }

        if (sub_02036540(4)) {
            sub_020598EC(sub_02059D58, 0);
        }
    }
}

static void sub_02059E0C (void)
{
    if (Unk_021C084C->unk_3C != 0) {
        Unk_021C084C->unk_3C--;
        return;
    }

    sub_02034878();
    sub_020598EC(sub_02059DC8, 120);
}

static void sub_02059E34 (void)
{
    BOOL v0 = 1;

    if (sub_02036540(3)) {
        sub_020598EC(sub_02059E0C, 2);
    }
}

static void sub_02059E50 (void)
{
    BOOL v0 = 1;

    if (Unk_021C084C->unk_3C != 0) {
        Unk_021C084C->unk_3C--;
        return;
    }

    sub_020576CC(0);
    sub_020364F0(3);
    sub_020598EC(sub_02059E34, 0);
}

static void sub_02059E80 (void)
{
    sub_02036964();
    sub_020598EC(sub_02059E94, 2);
}

static void sub_02059E94 (void)
{
    if (!sub_02033E30()) {
        return;
    }

    sub_020598EC(sub_02059964, 10);
}

void sub_02059EAC (int param0, int param1, void * param2, void * param3)
{
    Unk_021C084C->unk_10[param0] = 1;
}

u8 * sub_02059EBC (int param0, void * param1, int param2)
{
    GF_ASSERT(param0 < 4);
    return (u8 *)Unk_021C084C->unk_00[param0];
}

static void sub_02059ED8 (void)
{
    int v0, v1 = CommunicationSystem_GetCurNetId();

    if (sub_02036540(95)) {
        sub_0203597C(88, Unk_021C084C->unk_00[v1], sizeof(UnkStruct_02072014));
        sub_020598EC(sub_02059F10, 0);
    }
}

static void sub_02059F10 (void)
{
    int v0;

    for (v0 = 0; v0 < sub_02035E18(); v0++) {
        if (!Unk_021C084C->unk_10[v0]) {
            return;
        }
    }

    sub_020364F0(97);
    sub_020598EC(sub_02059FB8, 0);
}

static void sub_02059F4C (void)
{
    if (!sub_020348B0()) {
        if (Unk_021C084C->unk_3C != 0) {
            Unk_021C084C->unk_3C--;
        }

        if (Unk_021C084C->unk_3C == 90) {
            sub_020364F0(5);
        }

        if (sub_02036540(5)) {
            sub_020598EC(sub_02059FD4, 0);
        }
    }
}

static void sub_02059F90 (void)
{
    if (Unk_021C084C->unk_3C != 0) {
        Unk_021C084C->unk_3C--;
        return;
    }

    sub_02034884();
    sub_020598EC(sub_02059F4C, 120);
}

static void sub_02059FB8 (void)
{
    if (sub_02036540(97)) {
        sub_020598EC(sub_02059F90, 2);
    }
}

static void sub_02059FD4 (void)
{
    if (Unk_021C084C->unk_3C != 0) {
        Unk_021C084C->unk_3C--;
        return;
    }

    sub_020364F0(98);

    if (Unk_021C084C->unk_42) {
        sub_020598EC(sub_02059984, 30);
    } else {
        sub_020598EC(sub_02059AB4, 30);
    }
}

static void sub_0205A018 (void)
{
    if (sub_02036540(91)) {
        sub_020388F4(0, 0);
        sub_020576CC(1);
        sub_020598EC(sub_0205A058, 5);
    }
}

static void sub_0205A040 (void)
{
    sub_020576CC(1);
    sub_020598EC(sub_0205A058, 5);
}

static void sub_0205A058 (void)
{
    if (Unk_021C084C->unk_3C != 0) {
        Unk_021C084C->unk_3C--;
        return;
    }

    sub_02036978();
    sub_020598EC(sub_020596BC, 0);
}

UnkStruct_02029894 * sub_0205A080 (SaveData * param0)
{
    if (!Unk_021C084C || !Unk_021C084C->unk_41) {
        return NULL;
    }

    return ov23_02242E10(param0);
}

void sub_0205A0A0 (void)
{
    if (Unk_021C084C && Unk_021C084C->unk_41) {
        ov23_02242C78();
    }
}

void sub_0205A0BC (void)
{
    if (Unk_021C084C && Unk_021C084C->unk_41) {
        ov23_02242CB4();
    }
}
