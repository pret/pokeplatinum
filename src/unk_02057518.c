#include <nitro.h>
#include <string.h>
#include <nitro/os.h>
#include <nnsys/g3d/glbstate.h>

#include "core_sys.h"

#include "struct_decls/sys_task.h"
#include "trainer_info.h"
#include "struct_decls/struct_0202855C_decl.h"
#include "struct_decls/struct_020298B0_decl.h"
#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "overlay023/struct_ov23_02249978_decl.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_02057B48.h"
#include "struct_defs/struct_020590C4.h"
#include "struct_defs/struct_020619DC.h"
#include "overlay023/struct_ov23_0224A294.h"

#include "unk_0200D9E8.h"
#include "heap.h"
#include "trainer_info.h"
#include "unk_0202854C.h"
#include "unk_0202CD50.h"
#include "communication_information.h"
#include "communication_system.h"
#include "unk_020366A0.h"
#include "unk_0203A378.h"
#include "unk_0203CC84.h"
#include "unk_02054D00.h"
#include "unk_02057518.h"
#include "unk_0205E7D0.h"
#include "unk_0205F180.h"
#include "unk_02061804.h"
#include "unk_02063400.h"
#include "unk_020655F4.h"
#include "unk_0206CCB0.h"
#include "overlay005/ov5_021F55CC.h"
#include "overlay023/ov23_0223E140.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_0224340C.h"
#include "overlay023/ov23_02249918.h"
#include "overlay023/ov23_022499E4.h"
#include "overlay023/ov23_0224A1D0.h"
#include "overlay023/ov23_0224B05C.h"

static int sub_020581CC(int param0, int param1);
static BOOL sub_02058A18(int param0, int param1);
static BOOL sub_020586A8(int param0, int param1, int param2, int param3);
static void sub_02057BC4(void * param0);
static void sub_02057C2C(void * param0);
static void sub_02057C8C(u8 param0);
static void sub_0205820C(SysTask * param0, void * param1);
static void sub_02057E80(SysTask * param0, void * param1);
static void sub_02057EF8(void * param0);
static void sub_020587C0(int param0);
static void sub_020591A8(void);

static UnkStruct_ov23_0224A294 * Unk_021C0848 = NULL;

UnkStruct_ov23_0224A294 * sub_02057518 (void)
{
    return Unk_021C0848;
}

BOOL sub_02057524 (void * param0, FieldSystem * param1, BOOL param2)
{
    int v0, v1;

    if (Unk_021C0848) {
        return 0;
    }

    if (Unk_021C0848 == NULL) {
        Unk_021C0848 = param0;
        MI_CpuFill8(Unk_021C0848, 0, sizeof(UnkStruct_ov23_0224A294));
    }

    Unk_021C0848->unk_2BE = param2;
    Unk_021C0848->unk_04 = NULL;

    if (param2) {
        Unk_021C0848->unk_04 = Heap_AllocFromHeap(15, ov23_02249918());
        ov23_0224991C(Unk_021C0848->unk_04);
    }

    Unk_021C0848->unk_54 = param1;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        Unk_021C0848->unk_A2[v0].unk_04 = -1;
        Unk_021C0848->unk_A2[v0].unk_00 = 0xffff;
        Unk_021C0848->unk_A2[v0].unk_02 = 0xffff;
        Unk_021C0848->unk_A2[v0].unk_05 = 2;
        Unk_021C0848->unk_62[v0].unk_04 = -1;
        Unk_021C0848->unk_62[v0].unk_00 = 0xffff;
        Unk_021C0848->unk_62[v0].unk_02 = 0xffff;
        Unk_021C0848->unk_62[v0].unk_05 = 2;
        Unk_021C0848->unk_102[v0] = -1;
        Unk_021C0848->unk_E2[v0] = 0;
        Unk_021C0848->unk_EA[v0] = 1;
        Unk_021C0848->unk_F2[v0] = 0;
        Unk_021C0848->unk_14A[v0].unk_20 = 0xff;
    }

    Unk_021C0848->unk_2BC = 0;
    Unk_021C0848->unk_2BF = 0;
    Unk_021C0848->unk_50 = SysTask_Start(sub_02057E80, NULL, (100 + 100));

    sub_02035EA8();
    sub_020578DC();

    return 1;
}

void sub_0205764C (void)
{
    int v0;

    if (Unk_021C0848 == NULL) {
        return;
    }

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (Unk_021C0848->unk_2BE) {
            sub_02057DB8(v0, 1, 0);
        } else {
            sub_02057DB8(v0, 1, 1);
        }
    }

    if (Unk_021C0848->unk_2BE) {
        Unk_021C0848->unk_2BD = 1;
    }
}

void sub_020576A0 (void)
{
    int v0, v1;

    if (Unk_021C0848 == NULL) {
        return;
    }

    Unk_021C0848->unk_2BB = 1;
    Unk_021C0848->unk_2BD = 0;

    sub_020578DC();
    sub_02057AE4(1);
}

void sub_020576CC (BOOL param0)
{
    int v0, v1;

    if (Unk_021C0848) {
        for (v1 = 0; v1 < 5; v1++) {
            if (Unk_021C0848->unk_27C[v1]) {
                Heap_FreeToHeap(Unk_021C0848->unk_27C[v1]);
                Unk_021C0848->unk_27C[v1] = NULL;
            }
        }

        if (Unk_021C0848->unk_2B2 >= 5) {
            sub_0206DF60(Unk_021C0848->unk_54, Unk_021C0848->unk_2B2);
        }

        for (v0 = 0; v0 < (7 + 1); v0++) {
            sub_02057DB8(v0, 0, param0);
        }

        SysTask_Done(Unk_021C0848->unk_50);

        if (Unk_021C0848->unk_04) {
            ov23_02249938(Unk_021C0848->unk_04);
            Heap_FreeToHeap(Unk_021C0848->unk_04);
        }

        Heap_FreeToHeap(Unk_021C0848);
        Unk_021C0848 = NULL;
    }
}

void sub_02057764 (void)
{
    int v0, v1;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (Unk_021C0848->unk_2BE) {
            ov23_0224AF4C(v0);
            ov23_0224AD98(v0);

            if (v0 != 0) {
                ov23_0224AE60(v0);
            }
        }

        if (Unk_021C0848->unk_08[v0] != NULL) {
            if (Unk_021C0848->unk_54->unk_3C != Unk_021C0848->unk_08[v0]) {
                if (Unk_021C0848->unk_2BE) {
                    sub_0205E8E8(Unk_021C0848->unk_08[v0]);
                }
            }

            Unk_021C0848->unk_08[v0] = NULL;
        }

        Unk_021C0848->unk_48[v0] = 0;
        Unk_021C0848->unk_A2[v0].unk_04 = -1;
        Unk_021C0848->unk_A2[v0].unk_00 = 0xffff;
        Unk_021C0848->unk_A2[v0].unk_02 = 0xffff;
        Unk_021C0848->unk_A2[v0].unk_05 = 2;
        Unk_021C0848->unk_62[v0].unk_04 = -1;
        Unk_021C0848->unk_62[v0].unk_00 = 0xffff;
        Unk_021C0848->unk_62[v0].unk_02 = 0xffff;
        Unk_021C0848->unk_62[v0].unk_05 = 2;
        Unk_021C0848->unk_102[v0] = -1;
        Unk_021C0848->unk_10A[v0] = 0;
        Unk_021C0848->unk_E2[v0] = 0;
        Unk_021C0848->unk_EA[v0] = 1;
        Unk_021C0848->unk_F2[v0] = 0;
        Unk_021C0848->unk_13A[v0] = 0;
        Unk_021C0848->unk_142[v0] = 0;
    }

    Unk_021C0848->unk_2BF = 0;
    sub_020578DC();

    if (Unk_021C0848->unk_50 == NULL) {
        Unk_021C0848->unk_50 = SysTask_Start(sub_02057E80, NULL, (100 + 100));
    }
}

void sub_020578B0 (void)
{
    if (Unk_021C0848->unk_50) {
        sub_02057E80(NULL, NULL);
        SysTask_Done(Unk_021C0848->unk_50);
    }

    Unk_021C0848->unk_50 = NULL;
}

void sub_020578DC (void)
{
    Unk_021C0848->unk_08[CommSys_CurNetId()] = Unk_021C0848->unk_54->unk_3C;
    Unk_021C0848->unk_48[CommSys_CurNetId()] = 1;
    Unk_021C0848->unk_A2[CommSys_CurNetId()].unk_00 = sub_0205EABC(Unk_021C0848->unk_54->unk_3C);
    Unk_021C0848->unk_A2[CommSys_CurNetId()].unk_02 = sub_0205EAC8(Unk_021C0848->unk_54->unk_3C);
    Unk_021C0848->unk_A2[CommSys_CurNetId()].unk_04 = sub_0205EA78(Unk_021C0848->unk_54->unk_3C);
    Unk_021C0848->unk_62[CommSys_CurNetId()].unk_00 = sub_0205EABC(Unk_021C0848->unk_54->unk_3C);
    Unk_021C0848->unk_62[CommSys_CurNetId()].unk_02 = sub_0205EAC8(Unk_021C0848->unk_54->unk_3C);
    Unk_021C0848->unk_62[CommSys_CurNetId()].unk_04 = sub_0205EA78(Unk_021C0848->unk_54->unk_3C);
}

void sub_020579BC (int param0)
{
    int v0;

    Unk_021C0848->unk_2BF = 0;
    v0 = CommSys_CurNetId();

    Unk_021C0848->unk_08[v0] = Unk_021C0848->unk_54->unk_3C;
    Unk_021C0848->unk_48[v0] = 1;
    Unk_021C0848->unk_A2[v0].unk_00 = Unk_021C0848->unk_A2[param0].unk_00;
    Unk_021C0848->unk_A2[v0].unk_02 = Unk_021C0848->unk_A2[param0].unk_02;
    Unk_021C0848->unk_A2[v0].unk_04 = Unk_021C0848->unk_A2[param0].unk_04;
    Unk_021C0848->unk_62[v0].unk_00 = Unk_021C0848->unk_62[param0].unk_00;
    Unk_021C0848->unk_62[v0].unk_02 = Unk_021C0848->unk_62[param0].unk_02;
    Unk_021C0848->unk_62[v0].unk_04 = Unk_021C0848->unk_62[param0].unk_04;
    Unk_021C0848->unk_290[v0] = Unk_021C0848->unk_290[param0];
    Unk_021C0848->unk_290[param0] = NULL;

    if (Unk_021C0848->unk_290[v0]) {
        TrainerInfo_Copy(Unk_021C0848->unk_290[v0], (TrainerInfo *)&Unk_021C0848->unk_14A[v0].unk_00);
    }

    Unk_021C0848->unk_14A[param0].unk_20 = 0xff;
}

void sub_02057A94 (BOOL param0, int param1, int param2)
{
    u8 v0[5 + 1];
    int v1 = sub_0205EA78(Unk_021C0848->unk_54->unk_3C);

    v0[0] = param1;
    v0[1] = param1 >> 8;
    v0[2] = param2;
    v0[3] = param2 >> 8;
    v0[4] = v1;

    if (param0) {
        v0[4] = v0[4] | 0x80;
    }

    sub_020360D0(22, v0);
    Unk_021C0848->unk_2BB = 1;
}

void sub_02057AE4 (BOOL param0)
{
    int v0 = sub_0205EABC(Unk_021C0848->unk_54->unk_3C);
    int v1 = sub_0205EAC8(Unk_021C0848->unk_54->unk_3C);

    sub_02057A94(param0, v0, v1);
}

void sub_02057B14 (BOOL param0)
{
    int v0 = Unk_021C0848->unk_62[CommSys_CurNetId()].unk_00;
    int v1 = Unk_021C0848->unk_62[CommSys_CurNetId()].unk_02;

    sub_02057A94(param0, v0, v1);
}

static void sub_02057B48 (int param0, const UnkStruct_02057B48 * param1)
{
    u8 v0[4 + 1];
    int v1 = param1->unk_00, v2 = param1->unk_02;

    if (param1->unk_00 < 0) {
        v1 = 0;
    } else if (param1->unk_00 >= 0xf000) {
        v1 = 0xf000 - 1;
    }

    if (param1->unk_02 < 0) {
        v2 = 0;
    } else if (param1->unk_02 >= 0xf000) {
        v2 = 0xf000 - 1;
    }

    v0[0] = param0 & 0xf;
    v0[1] = v1;
    v0[2] = ((v1 >> 8) & 0x1) + ((v2 >> 7) & 0x2);
    v0[3] = v2;

    if (param1->unk_07) {
        v0[2] |= 0x80;
    }

    v0[0] += ((param1->unk_04 % 4) << 4);
    v0[0] += (param1->unk_05 << 6);

    sub_02035AC4(23, v0, 0);
}

void sub_02057BC4 (void * param0)
{
    int v0 = sub_0205EB0C(Unk_021C0848->unk_54->unk_3C);
    int v1 = sub_0205EB14(Unk_021C0848->unk_54->unk_3C);

    if ((0 == v0) && CommSys_IsPlayerConnected(CommSys_CurNetId())) {
        if (!Unk_021C0848->unk_2BA) {
            sub_02057AE4(1);
            Unk_021C0848->unk_2BA = 1;
        }
    }

    if ((1 == v0) && (1 == v1)) {
        Unk_021C0848->unk_2BA = 0;
    }
}

static void sub_02057C2C (void * param0)
{
    int v0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (Unk_021C0848->unk_48[v0]) {
            UnkStruct_02057B48 * v1 = &Unk_021C0848->unk_62[v0];

            if (Unk_021C0848->unk_132[v0] || Unk_021C0848->unk_2BB) {
                Unk_021C0848->unk_132[v0] = 0;
                sub_02057B48(v0, v1);
            }
        }
    }

    Unk_021C0848->unk_2BB = 0;
}

u32 sub_02057C84 (void)
{
    return sizeof(UnkStruct_ov23_0224A294);
}

static void sub_02057C8C (u8 param0)
{
    fx32 v0, v1;
    UnkStruct_0205E884 * v2;

    if (Unk_021C0848->unk_08[param0] != NULL) {
        return;
    }

    if (Unk_021C0848->unk_2BD) {
        return;
    }

    {
        TrainerInfo * v3 = CommInfo_TrainerInfo(param0);

        if (v3 == NULL) {
            (void)0;
        }

        if (v3) {
            if (!Unk_021C0848->unk_2BE) {
                if (param0 != CommSys_CurNetId()) {
                    UnkStruct_02061AB4 * v4 = sub_0206251C(Unk_021C0848->unk_54->unk_38, 0xff + param0 + 1);

                    if (v4) {
                        sub_02061AF4(v4);
                    }
                }
            }

            {
                int v5 = 0;

                if (0 == TrainerInfo_GameCode(v3)) {
                    v5 = 1;
                }

                v2 = sub_0205E7D0(Unk_021C0848->unk_54->unk_38, Unk_021C0848->unk_A2[param0].unk_00, Unk_021C0848->unk_A2[param0].unk_02, Unk_021C0848->unk_A2[param0].unk_04, 0x0, TrainerInfo_Gender(v3), v5, NULL);
            }

            GF_ASSERT(v2);
            Unk_021C0848->unk_08[param0] = v2;

            sub_0206290C(sub_0205EB3C(v2), 0xff + param0 + 1);

            if (Unk_021C0848->unk_2BE) {
                ov23_02243038(param0);
            }

            if (Unk_021C0848->unk_2BE && !Unk_021C0848->unk_48[param0]) {
                if (!Unk_021C0848->unk_2BD) {
                    ov5_021F5634(Unk_021C0848->unk_54, Unk_021C0848->unk_A2[param0].unk_00, 0, Unk_021C0848->unk_A2[param0].unk_02);
                }

                Unk_021C0848->unk_48[param0] = 1;
            } else if (!Unk_021C0848->unk_2BE) {
                Unk_021C0848->unk_48[param0] = 1;
            }
        }
    }
}

void sub_02057DB8 (u8 param0, BOOL param1, BOOL param2)
{
    int v0;

    if (Unk_021C0848 == NULL) {
        return;
    }

    MI_CpuClear8(Unk_021C0848->unk_5A, (7 + 1));

    if (Unk_021C0848->unk_2BE) {
        ov23_0224AF4C(param0);
    }

    if (Unk_021C0848->unk_08[param0] != NULL) {
        if (Unk_021C0848->unk_54->unk_3C != Unk_021C0848->unk_08[param0]) {
            if (Unk_021C0848->unk_2BE || param2) {
                sub_0205E8E8(Unk_021C0848->unk_08[param0]);
            } else {
                sub_0205E8E0(Unk_021C0848->unk_08[param0]);
            }
        }

        Unk_021C0848->unk_08[param0] = NULL;
    }

    if ((Unk_021C0848->unk_48[param0]) && (!param1)) {
        Unk_021C0848->unk_48[param0] = 0;
    }

    Unk_021C0848->unk_132[param0] = 1;

    if (!param1) {
        Unk_021C0848->unk_FA[param0] = 0;

        if (Unk_021C0848->unk_2BE) {
            ov23_0224AE60(param0);

            if (param0 != 0) {
                (void)0;
            }
        }
    }
}

static void sub_02057E68 ()
{
    u8 v0 = 2;

    if (PAD_BUTTON_B & gCoreSys.heldKeys) {
        v0 = 1;
    }

    sub_02035E5C(v0);
}

static void sub_02057E80 (SysTask * param0, void * param1)
{
    int v0;

    if (CommSys_IsInitialized()) {
        sub_02057E68();

        if (CommSys_CurNetId() == 0) {
            sub_02057C2C(param1);
            sub_02057BC4(param1);

            if (Unk_021C0848->unk_04) {
                ov23_02249954(Unk_021C0848->unk_04);
            }
        } else {
            sub_02057BC4(param1);
        }

        sub_02057EF8(param1);
    }

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (Unk_021C0848->unk_2BE) {
            if (CommSys_CurNetId() == 0) {
                if (NULL == CommInfo_TrainerInfo(v0)) {
                    ov23_0224B5CC(v0);
                }
            }
        }
    }
}

static void sub_02057EF8 (void * param0)
{
    int v0, v1;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (!CommSys_IsPlayerConnected(v0)) {
            if (!(sub_02036180() && (v0 == 0))) {
                if ((CommSys_CurNetId() == 0) && (Unk_021C0848->unk_2BE)) {
                    ov23_0224D898(v0);
                }
            }
        }

        if (CommSys_IsPlayerConnected(v0) || (sub_02036180() && (v0 == 0))) {
            sub_020587C0(v0);

            if (Unk_021C0848->unk_2BE) {
                ov23_0224AF7C(v0);
            }
        } else {
            if (Unk_021C0848->unk_48[v0]) {
                if ((CommSys_CurNetId() == 0) && (Unk_021C0848->unk_2BE)) {
                    ov23_022436F0(v0);
                    ov23_02241648(v0);
                }

                {
                    u8 v2 = v0;
                    sub_0205853C(0, 1, &v2, Unk_021C0848->unk_54);
                }
            }
        }
    }
}

BOOL sub_02057FAC (void)
{
    if (Unk_021C0848 != NULL) {
        return Unk_021C0848->unk_2BC;
    }

    return 0;
}

void sub_02057FC4 (BOOL param0)
{
    if (Unk_021C0848 != NULL) {
        if (Unk_021C0848->unk_2BC != param0) {
            Unk_021C0848->unk_2BC = param0;
        }

        sub_020360D0(62, &Unk_021C0848->unk_2BC);
    }
}

static void sub_02057FF0 (BOOL param0)
{
    if (Unk_021C0848 != NULL) {
        if (Unk_021C0848->unk_2BC != param0) {
            Unk_021C0848->unk_2BC = param0;
            sub_020360D0(62, &Unk_021C0848->unk_2BC);
        }
    }
}

void sub_02058018 (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = (u8 *)param2;

    if (Unk_021C0848) {
        GF_ASSERT(param1 == 1);
        GF_ASSERT(param0 < (7 + 1));
        GF_ASSERT((v0[0] == 1) || (v0[0] == 0));

        sub_02059058(param0, v0[0]);
    }
}

void sub_0205805C (FieldSystem * param0, BOOL param1)
{
    if (Unk_021C0848 == NULL) {
        return;
    }

    if (!Unk_021C0848->unk_2BE) {
        sub_02057FF0(param1);
        Unk_021C0848->unk_2C1 = param1;
    }

    if (param0->unk_3C) {
        Unk_021C0848->unk_08[CommSys_CurNetId()] = param0->unk_3C;
    }

    if (CommSys_IsInitialized() && (CommSys_CurNetId() == 0)) {
        sub_0205820C(NULL, Unk_021C0848);
    }

    if (CommSys_IsInitialized() && (CommSys_CurNetId() == 0)) {
        if (!Unk_021C0848->unk_2BE) {
            sub_020591A8();
        }
    }
}

static int sub_020580DC (u16 param0, u16 param1)
{
    if ((param1 & PAD_KEY_LEFT)) {
        return 2;
    }

    if ((param1 & PAD_KEY_RIGHT)) {
        return 3;
    }

    if ((param1 & PAD_KEY_UP)) {
        return 0;
    }

    if ((param1 & PAD_KEY_DOWN)) {
        return 1;
    }

    return(-1);
}

BOOL sub_02058108 (int param0, int param1)
{
    int v0, v1;
    const UnkStruct_020619DC * v2;

    v0 = sub_0203A4B4(Unk_021C0848->unk_54);
    v2 = sub_0203A4BC(Unk_021C0848->unk_54);

    for (v1 = 0; v1 < v0; v1++) {
        if ((v2[v1].unk_1A == param0) && (v2[v1].unk_1C == param1)) {
            return 1;
        }
    }

    return 0;
}

static BOOL sub_0205814C (int param0, int param1, int param2)
{
    int v0;

    if ((param0 != 0xffff) && (param1 != 0xffff)) {
        for (v0 = 0; v0 < (7 + 1); v0++) {
            if (v0 == param2) {
                continue;
            }

            if ((param0 == sub_02058DF8(v0)) && (param1 == sub_02058E4C(v0))) {
                return 1;
            }
        }

        if (sub_02058108(param0, param1)) {
            return 1;
        }

        if (Unk_021C0848->unk_2BE) {
            if (!ov23_0224D1A0(param0, param1)) {
                return 1;
            }
        }
    }

    return sub_02054F68(Unk_021C0848->unk_54, param0, param1);
}

static int sub_020581CC (int param0, int param1)
{
    int v0;

    if (param0 < 5) {
        return 8;
    } else if (param0 < 10) {
        return 4;
    }

    return 2;
}

static int sub_020581E0 (int param0)
{
    int v0[5] = {2, 4, 8, 16, 2};

    GF_ASSERT(param0 < 5);
    return v0[param0];
}

static void sub_0205820C (SysTask * param0, void * param1)
{
    u16 v0;
    u8 v1;
    int v2, v3, v4, v5, v6;
    UnkStruct_02057B48 * v7;
    UnkStruct_ov23_02249978 * v8 = NULL;

    for (v5 = 0; v5 < (7 + 1); v5++) {
        if (Unk_021C0848->unk_48[v5] && Unk_021C0848->unk_E2[v5] && Unk_021C0848->unk_EA[v5]) {
            v7 = &Unk_021C0848->unk_62[v5];

            if (Unk_021C0848->unk_04) {
                v8 = ov23_0224993C(Unk_021C0848->unk_04, v5);
            }

            if (Unk_021C0848->unk_2BE) {
                if (ov23_0224C1C8(v5)) {
                    continue;
                }
            }

            if (Unk_021C0848->unk_13A[v5] != 0) {
                Unk_021C0848->unk_13A[v5]--;
            }

            if (Unk_021C0848->unk_13A[v5] == 0) {
                if (Unk_021C0848->unk_2BE) {
                    if (ov23_0224444C(v5)) {
                        continue;
                    }

                    if (!ov23_0224ACC0(v5)) {
                        if (ov23_0224D7C8(v5)) {
                            continue;
                        }
                    }
                }
            }

            if (v8) {
                if (!ov23_022499AC(v8)) {
                    continue;
                }
            }

            if (!Unk_021C0848->unk_F2[v5]) {
                v0 = sub_02035E84(v5);
            } else {
                v0 = 0;
            }

            v7->unk_05 = sub_02035E70(v5);

            if (Unk_021C0848->unk_13A[v5] != 0) {
                continue;
            }

            v6 = sub_020581CC(Unk_021C0848->unk_10A[v5], Unk_021C0848->unk_12A[v5]);

            if (sub_02058A18(v5, v6)) {
                Unk_021C0848->unk_13A[v5] = v6;
                Unk_021C0848->unk_132[v5] = 1;
                continue;
            }

            if (v7->unk_07 == 1) {
                Unk_021C0848->unk_132[v5] = 1;
            }

            v7->unk_07 = 0;

            if (Unk_021C0848->unk_122[v5] == 2) {
                u8 v9 = v5;

                Unk_021C0848->unk_122[v5] = 1;
                sub_02035B48(40, &v9);
                continue;
            }

            v2 = sub_020580DC(v0, v0);
            v3 = sub_02058EE0(v5);
            v4 = sub_02058F18(v5);

            if ((v3 != 0xffff) && (v4 != 0xffff) && (v2 != -1)) {
                if (v7->unk_04 != v2) {
                    v7->unk_04 = v2;
                    Unk_021C0848->unk_13A[v5] = 4;
                    Unk_021C0848->unk_132[v5] = 1;

                    if (Unk_021C0848->unk_122[v5] > 2) {
                        Unk_021C0848->unk_122[v5]--;
                        continue;
                    }
                } else if (Unk_021C0848->unk_122[v5] != 0) {
                    continue;
                } else if (Unk_021C0848->unk_2BE && (ov23_0224B8E0(v5, v3, v4) == 1)) {
                    continue;
                } else if (sub_0205814C(v3, v4, v5)) {
                    v7->unk_07 = 1;
                    Unk_021C0848->unk_132[v5] = 1;
                    Unk_021C0848->unk_13A[v5] = 4;
                } else {
                    Unk_021C0848->unk_132[v5] = 1;
                    v7->unk_00 = v3;
                    v7->unk_02 = v4;
                    v7->unk_04 = v2;

                    Unk_021C0848->unk_13A[v5] = sub_020581E0(v7->unk_05);

                    if (Unk_021C0848->unk_11A[v5] != 0) {
                        Unk_021C0848->unk_11A[v5]--;

                        if (Unk_021C0848->unk_11A[v5] == 0) {
                            u8 v10 = 1;
                            ov23_0224540C(v5, 1, &v10, NULL);
                        }
                    }
                }
            }
        }
    }
}

void sub_02058488 (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = (u8 *)param2;
    UnkStruct_02057B48 * v1;

    if (Unk_021C0848 == NULL) {
        return;
    }

    v1 = &Unk_021C0848->unk_62[param0];

    if (v0[4] & 0x80) {
        Unk_021C0848->unk_2BB = 1;
        return;
    }

    if (v1->unk_04 == -1) {
        int v2;

        for (v2 = 0; v2 < (7 + 1); v2++) {
            Unk_021C0848->unk_132[v2] = 1;
        }
    }

    v1->unk_00 = 0;
    v1->unk_02 = 0;
    v1->unk_00 += ((u32)v0[0]) & 0xff;
    v1->unk_00 += ((u32)v0[1] << 8) & 0xff00;
    v1->unk_02 += ((u32)v0[2]) & 0xff;
    v1->unk_02 += ((u32)v0[3] << 8) & 0xff00;
    v1->unk_04 = v0[4] & 0xf;

    Unk_021C0848->unk_48[param0] = 1;
    Unk_021C0848->unk_132[param0] = 1;

    if (sub_02054F68(Unk_021C0848->unk_54, v1->unk_00, v1->unk_02)) {
        GF_ASSERT(0);
    }
}

void sub_0205853C (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = (u8 *)param2;
    u8 v1 = v0[0];

    if (Unk_021C0848 == NULL) {
        return;
    }

    if (v1 == CommSys_CurNetId()) {
        return;
    }

    if (Unk_021C0848->unk_2BE) {
        ov23_022430B8(v1);

        if (!Unk_021C0848->unk_2BD) {
            ov5_021F5634(Unk_021C0848->unk_54, Unk_021C0848->unk_A2[v1].unk_00, 0, Unk_021C0848->unk_A2[v1].unk_02);
        }
    }

    sub_02057DB8(v1, 0, 0);
    CommInfo_InitPlayer(v1);
}

int sub_020585A4 (void)
{
    return 5;
}

void sub_020585A8 (int param0, int param1, void * param2, void * param3)
{
    u16 v0;
    u8 * v1 = (u8 *)param2;
    UnkStruct_02057B48 * v2;
    int v3;

    v3 = v1[0] & 0xf;

    if (Unk_021C0848 == NULL) {
        return;
    }

    if ((param0 == CommSys_CurNetId()) && Unk_021C0848->unk_2C3) {
        return;
    }

    v2 = &Unk_021C0848->unk_A2[v3];

    if (v1[2] & 0x80) {
        v2->unk_07 = 1;
    } else {
        v2->unk_07 = 0;
    }

    v2->unk_00 = 0;
    v2->unk_02 = 0;
    v2->unk_00 += ((u32)v1[1]) & 0xff;
    v2->unk_00 += ((u32)v1[2] << 8) & 0x100;
    v2->unk_02 += ((u32)v1[3]) & 0xff;
    v2->unk_02 += ((u32)v1[2] << 7) & 0x100;
    v2->unk_04 = ((v1[0] >> 4) & 0x3);
    v2->unk_05 = ((v1[0] >> 6) & 0x3);

    sub_02057C8C(v3);
}

static void sub_02058644 (int param0)
{
    UnkStruct_020298B0 * v0 = sub_020298B0(sub_0203D174(Unk_021C0848->unk_54));
    UnkStruct_0202855C * v1 = sub_020298A0(sub_0203D174(Unk_021C0848->unk_54));

    if (Unk_021C0848->unk_2BE) {
        if (param0 == CommSys_CurNetId()) {
            sub_0202929C(v0);

            if (sub_020292B4(v0) == 50) {
                sub_0202CFEC(sub_0202CD88(Unk_021C0848->unk_54->unk_0C), 37);
            }
        }
    }
}

static BOOL sub_020586A8 (int param0, int param1, int param2, int param3)
{
    UnkStruct_02061AB4 * v0;
    int v1, v2;
    u8 v3[] = {
        0x14, 0x15, 0x16, 0x17, 0x10, 0x11, 0x12, 0x13, 0xc, 0xd, 0xe, 0xf
    };

    if ((Unk_021C0848->unk_102[param0] == -1) || (Unk_021C0848->unk_08[param0] == NULL)) {
        return 0;
    }

    if (param1 == 0) {
        return 1;
    }

    v0 = sub_0205EB3C(Unk_021C0848->unk_08[param0]);

    if (sub_0205EA78(Unk_021C0848->unk_08[param0]) != sub_02059328(Unk_021C0848->unk_102[param0])) {
        sub_020628C4(v0, (1 << 7));
        sub_0205EA84(Unk_021C0848->unk_08[param0], sub_02059328(Unk_021C0848->unk_102[param0]));
        sub_020628BC(v0, (1 << 7));
    }

    if (sub_02065684(v0) == 1) {
        (void)0;
    }

    if (sub_020655F4(v0) == 1) {
        sub_02058644(param0);

        switch (param3) {
        case 0:
            sub_02065638(v0, v3[Unk_021C0848->unk_102[param0]]);
            break;
        case 1:
            sub_02065638(v0, v3[Unk_021C0848->unk_102[param0] + 4]);
            break;
        case 2:
            sub_02065638(v0, v3[Unk_021C0848->unk_102[param0] + 8]);
            break;
        }
    } else {
        (void)0;
    }

    return 1;
}

static void sub_020587C0 (int param0)
{
    BOOL v0 = 0, v1 = 1;
    u16 v2 = 0;
    UnkStruct_02057B48 * v3;
    UnkStruct_0205E884 * v4;
    int v5;

    v3 = &Unk_021C0848->unk_A2[param0];

    if (Unk_021C0848->unk_142[param0] != 0) {
        Unk_021C0848->unk_142[param0]--;
        return;
    }

    if ((v3->unk_00 == 0xffff) || (v3->unk_02 == 0xffff)) {
        return;
    }

    if (Unk_021C0848->unk_2BD) {
        return;
    }

    if (!Unk_021C0848->unk_2BE) {
        if (param0 == CommSys_CurNetId()) {
            if (!Unk_021C0848->unk_2C1) {
                return;
            }
        }
    }

    v4 = Unk_021C0848->unk_08[param0];

    if (v4) {
        int v6 = sub_0205EABC(v4) - v3->unk_00;
        int v7 = sub_0205EAC8(v4) - v3->unk_02;
        int v8 = sub_0205EA78(v4);

        if ((v6 == 0) && (v7 == 0)) {
            v2 = 0;
        } else if (abs(v6) > abs(v7)) {
            if (v6 > 0) {
                v2 = PAD_KEY_LEFT;
            } else {
                v2 = PAD_KEY_RIGHT;
            }
        } else {
            if (v7 > 0) {
                v2 = PAD_KEY_UP;
            } else {
                v2 = PAD_KEY_DOWN;
            }
        }

        if (abs(v6) + abs(v7) > 2) {
            v1 = 0;
        }

        if (sub_020586A8(param0, v2, v2, v3->unk_05)) {
            return;
        }

        {
            u32 v9 = 0xff;
            int v10;

            v5 = v3->unk_05;

            switch (v3->unk_05) {
            case 0:
                v10 = 5;
                break;
            case 1:
                v10 = 4;
                v2 |= PAD_BUTTON_B;
                break;
            case 2:
                v10 = 2;
                break;
            case 3:
                v10 = 1;
                break;
            }

            if (Unk_021C0848->unk_2C0 && (param0 == CommSys_CurNetId())) {
                Unk_021C0848->unk_2C0--;
            } else if (!sub_02035EE0() && Unk_021C0848->unk_2BE && (param0 == CommSys_CurNetId())) {
                v9 = sub_0206147C(
                    v4, v2, v2, v10, 1, 0);
            } else if (((v2 & ~PAD_BUTTON_B) == 0) && (v3->unk_07)) {
                v5 = 3;

                switch (v3->unk_04) {
                case 0:
                    v9 = 0x1c;
                    break;
                case 1:
                default:
                    v9 = 0x1d;
                    break;
                case 2:
                    v9 = 0x1e;
                    break;
                case 3:
                    v9 = 0x1f;
                    break;
                }
            } else if (((v2 & ~PAD_BUTTON_B) == 0) && (v3->unk_04 != v8)) {
                v9 = sub_02065838(v3->unk_04, 0x24);
            } else {
                v9 = sub_0206147C(v4, v2, v2, v10, 1, 0);
            }

            if (sub_02061544(v4) == 0) {
                if (sub_020613AC(v4) == 0) {
                    return;
                }
            }

            if (v9 != 0xff) {
                sub_02061550(v4, v9, 1);

                if (v2 & ~PAD_BUTTON_B) {
                    if (Unk_021C0848->unk_142[param0] == 0) {
                        Unk_021C0848->unk_142[param0] = sub_020581E0(v5);
                    }

                    if (Unk_021C0848->unk_142[param0] != 0) {
                        Unk_021C0848->unk_142[param0]--;
                    }

                    sub_02058644(param0);
                }
            }
        }
    }
}

static BOOL sub_02058A18 (int param0, int param1)
{
    int v0, v1;
    UnkStruct_02057B48 * v2;

    if (Unk_021C0848->unk_10A[param0] == 0) {
        return 0;
    }

    if (Unk_021C0848->unk_10A[param0] == 0xff) {
        return 1;
    }

    Unk_021C0848->unk_10A[param0]--;

    if (1 == param1) {
        return 1;
    }

    v0 = sub_02058DF8(param0);
    v1 = sub_02058E4C(param0);
    v0 += sub_0206419C(Unk_021C0848->unk_112[param0]);
    v1 += sub_020641A8(Unk_021C0848->unk_112[param0]);

    if (Unk_021C0848->unk_10A[param0] != 0) {
        if (sub_0205814C(v0, v1, param0)) {
            Unk_021C0848->unk_10A[param0] = 1;
        }
    }

    if (Unk_021C0848->unk_10A[param0] == 1) {
        return 1;
    } else if (Unk_021C0848->unk_10A[param0] == 0) {
        u8 v3 = 1;

        ov23_0224540C(param0, 1, &v3, NULL);
        return 1;
    }

    v2 = &Unk_021C0848->unk_62[param0];
    v2->unk_00 = v0;
    v2->unk_02 = v1;

    switch (param1) {
    case 2:
        v2->unk_05 = 0;
        break;
    case 4:
        v2->unk_05 = 1;
        break;
    case 8:
        v2->unk_05 = 2;
        break;
    }

    return 1;
}

void sub_02058B0C (int param0, int param1, BOOL param2)
{
    UnkStruct_02057B48 * v0 = &Unk_021C0848->unk_62[param0];
    u8 v1[3];

    v0->unk_04 = sub_02059328(param1);
    Unk_021C0848->unk_112[param0] = param1;

    if (param2) {
        Unk_021C0848->unk_12A[param0] = 1;
        Unk_021C0848->unk_10A[param0] = 45;
    } else {
        Unk_021C0848->unk_12A[param0] = 0;
        Unk_021C0848->unk_10A[param0] = 27;
    }

    Unk_021C0848->unk_132[param0] = 1;
}

void sub_02058B7C (int param0)
{
    Unk_021C0848->unk_10A[param0] = 0;
}

void sub_02058B94 (int param0)
{
    Unk_021C0848->unk_10A[param0] = 0xff;
}

void sub_02058BA8 (int param0, int param1, BOOL param2)
{
    UnkStruct_02061AB4 * v0;

    if (Unk_021C0848->unk_08[param0] == NULL) {
        return;
    }

    v0 = sub_0205EB3C(Unk_021C0848->unk_08[param0]);

    sub_020628BC(v0, (1 << 7));
    sub_020628BC(v0, (1 << 8));

    Unk_021C0848->unk_102[param0] = param1;
}

void sub_02058BE8 (int param0)
{
    UnkStruct_02061AB4 * v0;

    if (Unk_021C0848->unk_08[param0] == NULL) {
        return;
    }

    if (Unk_021C0848->unk_102[param0] != -1) {
        v0 = sub_0205EB3C(Unk_021C0848->unk_08[param0]);

        sub_020656AC(v0);
        sub_020628C4(v0, (1 << 7));
        sub_020628C4(v0, (1 << 8));

        Unk_021C0848->unk_102[param0] = -1;
    }
}

int sub_02058C3C (void)
{
    return 4;
}

BOOL sub_02058C40 (void)
{
    if (sub_02036180()) {
        return 1;
    }

    if (!Unk_021C0848) {
        return 0;
    }

    if (!CommSys_IsPlayerConnected(CommSys_CurNetId())) {
        return 0;
    }

    if (Unk_021C0848->unk_2BE && !ov23_02249BD4()) {
        return 0;
    }

    return 1;
}

BOOL sub_02058C90 (int param0)
{
    return Unk_021C0848->unk_48[param0];
}

int sub_02058CA0 (int param0)
{
    if (!Unk_021C0848) {
        return 0xffff;
    } else if (CommSys_CurNetId() == param0) {
        return Unk_021C0848->unk_A2[param0].unk_00;
    } else if (!sub_02058C40() || !Unk_021C0848->unk_48[param0]) {
        return 0xffff;
    }

    return Unk_021C0848->unk_A2[param0].unk_00;
}

int sub_02058CF4 (int param0)
{
    if (!Unk_021C0848) {
        return 0xffff;
    } else if (CommSys_CurNetId() == param0) {
        return Unk_021C0848->unk_A2[param0].unk_02;
    } else if (!sub_02058C40() || !Unk_021C0848->unk_48[param0]) {
        return 0xffff;
    }

    return Unk_021C0848->unk_A2[param0].unk_02;
}

int sub_02058D48 (int param0)
{
    if (!Unk_021C0848) {
        return 0xffff;
    }

    return Unk_021C0848->unk_A2[param0].unk_00;
}

int sub_02058D68 (int param0)
{
    if (!Unk_021C0848) {
        return 0xffff;
    }

    return Unk_021C0848->unk_A2[param0].unk_02;
}

int sub_02058D88 (int param0)
{
    if (sub_02058CA0(param0) == 0xffff) {
        return 0xffff;
    }

    return Unk_021C0848->unk_A2[param0].unk_00 + sub_0206419C(Unk_021C0848->unk_A2[param0].unk_04);
}

int sub_02058DC0 (int param0)
{
    if (sub_02058CF4(param0) == 0xffff) {
        return 0xffff;
    }

    return Unk_021C0848->unk_A2[param0].unk_02 + sub_020641A8(Unk_021C0848->unk_A2[param0].unk_04);
}

int sub_02058DF8 (int param0)
{
    if (!Unk_021C0848) {
        return 0xffff;
    } else if (CommSys_CurNetId() == param0) {
        return Unk_021C0848->unk_62[param0].unk_00;
    } else if (!sub_02058C40() || !Unk_021C0848->unk_48[param0]) {
        return 0xffff;
    }

    return Unk_021C0848->unk_62[param0].unk_00;
}

int sub_02058E4C (int param0)
{
    if (!Unk_021C0848) {
        return 0xffff;
    } else if (CommSys_CurNetId() == param0) {
        return Unk_021C0848->unk_62[param0].unk_02;
    } else if (!sub_02058C40() || !Unk_021C0848->unk_48[param0]) {
        return 0xffff;
    }

    return Unk_021C0848->unk_62[param0].unk_02;
}

int sub_02058EA0 (int param0)
{
    if (!Unk_021C0848) {
        return 0xffff;
    }

    return Unk_021C0848->unk_62[param0].unk_00;
}

int sub_02058EC0 (int param0)
{
    if (!Unk_021C0848) {
        return 0xffff;
    }

    return Unk_021C0848->unk_62[param0].unk_02;
}

int sub_02058EE0 (int param0)
{
    if (sub_02058DF8(param0) == 0xffff) {
        return 0xffff;
    }

    return Unk_021C0848->unk_62[param0].unk_00 + sub_0206419C(Unk_021C0848->unk_62[param0].unk_04);
}

int sub_02058F18 (int param0)
{
    if (sub_02058E4C(param0) == 0xffff) {
        return 0xffff;
    }

    return Unk_021C0848->unk_62[param0].unk_02 + sub_020641A8(Unk_021C0848->unk_62[param0].unk_04);
}

int sub_02058F50 (int param0)
{
    if (!sub_02058C40() || !Unk_021C0848->unk_48[param0]) {
        return -1;
    }

    return Unk_021C0848->unk_A2[param0].unk_04;
}

int sub_02058F80 (int param0)
{
    if (!sub_02058C40() || !Unk_021C0848->unk_48[param0]) {
        return -1;
    }

    return Unk_021C0848->unk_62[param0].unk_04;
}

void sub_02058FB0 (int param0, int param1)
{
    int v0 = sub_02059328(Unk_021C0848->unk_62[param0].unk_04);

    Unk_021C0848->unk_62[param1].unk_04 = v0;
    Unk_021C0848->unk_132[param1] = 1;
}

void sub_02058FE4 (int param0, int param1)
{
    int v0 = sub_02059328(Unk_021C0848->unk_A2[param0].unk_04);
    Unk_021C0848->unk_A2[param1].unk_04 = v0;
}

int sub_0205900C (int param0, int param1)
{
    int v0, v1, v2;

    if (!Unk_021C0848) {
        return 0xff;
    }

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (Unk_021C0848->unk_48[v0] == 0) {
            continue;
        }

        v1 = Unk_021C0848->unk_62[v0].unk_00;
        v2 = Unk_021C0848->unk_62[v0].unk_02;

        if ((param0 == v1) && (param1 == v2)) {
            return v0;
        }
    }

    return 0xff;
}

void sub_02059058 (int param0, BOOL param1)
{
    if (Unk_021C0848->unk_E2[param0] != param1) {
        Unk_021C0848->unk_E2[param0] = param1;
        Unk_021C0848->unk_62[param0].unk_07 = 0;
        Unk_021C0848->unk_132[param0] = 1;
        Unk_021C0848->unk_62[param0].unk_05 = 2;
    }
}

BOOL sub_02059094 (int param0)
{
    if (Unk_021C0848->unk_2C2) {
        return 0;
    }

    if (!Unk_021C0848->unk_EA[param0]) {
        return 0;
    }

    return Unk_021C0848->unk_E2[param0];
}

BOOL sub_020590C4 (void)
{
    UnkStruct_020590C4 v0[] = {
        {4, 7},
        {11, 7}
    };
    UnkStruct_020590C4 v1[] = {
        {4, 6},
        {11, 6},
        {4, 8},
        {11, 8}
    };
    int v2 = sub_02036148(sub_0203895C());
    int v3, v4, v5 = 0, v6[4], v7;
    int v8 = 0;
    UnkStruct_020590C4 * v9;

    if (v2 == 2) {
        v9 = v0;
    } else {
        v9 = v1;
    }

    for (v3 = 0; v3 < v2; v3++) {
        for (v4 = 0; v4 < v2; v4++) {
            if ((sub_02058CA0(v4) == v9[v3].unk_00) && (sub_02058CF4(v4) == v9[v3].unk_02)) {
                v5++;
                v6[v4] = v3;

                if (v4 == CommSys_CurNetId()) {
                    v8 = 1;
                }
                break;
            }
        }
    }

    if (v5 == v2) {
        for (v3 = 0; v3 < v2; v3++) {
            sub_020362DC(v6[v3], v3);
        }
    }

    return v8;
}

void sub_02059180 (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = param2;

    if (v0[0] == 3) {
        Unk_021C0848->unk_F2[param0] = 0;
    } else {
        Unk_021C0848->unk_2B4[param0] = v0[0];
    }
}

static UnkStruct_020590C4 Unk_02100B6C[] = {
    {0x4, 0x7},
    {0xB, 0x7}
};

static UnkStruct_020590C4 Unk_02100B74[] = {
    {0x4, 0x6},
    {0xB, 0x6},
    {0x4, 0x8},
    {0xB, 0x8}
};

static void sub_020591A8 (void)
{
    int v0 = sub_02036148(sub_0203895C());
    int v1, v2, v3 = 0, v4[4];
    int v5 = 0;
    UnkStruct_020590C4 * v6;
    u8 v7;

    if (v0 == 2) {
        v6 = Unk_02100B6C;
    } else {
        v6 = Unk_02100B74;
    }

    for (v7 = 0; v7 < v0; v7++) {
        if (!Unk_021C0848->unk_2B4[v7]) {
            continue;
        }

        for (v1 = 0; v1 < v0; v1++) {
            if ((sub_02058DF8(v7) == v6[v1].unk_00) && (sub_02058E4C(v7) == v6[v1].unk_02)) {
                Unk_021C0848->unk_F2[v7] = 1;
                sub_02035B48(95, &v7);
            }
        }
    }
}

void sub_02059240 (void)
{
    int v0 = CommSys_CurNetId();
    int v1;

    if (sub_02058CA0(v0) > 8) {
        sub_020593F4(2);
        v1 = sub_02065838(2, 0x24);
    } else {
        sub_020593F4(3);
        v1 = sub_02065838(3, 0x24);
    }

    sub_02061550(Unk_021C0848->unk_08[v0], v1, 1);
    sub_02059624();
}

BOOL sub_0205928C (void)
{
    int v0 = sub_02036148(sub_0203895C());
    int v1, v2, v3 = 0, v4[4], v5;
    int v6 = 0;

    for (v1 = 0; v1 < v0; v1++) {
        if ((Unk_021C0848->unk_48[v1] == 0) || (Unk_021C0848->unk_132[v1] == 1)) {
            return 0;
        }
    }

    for (v1 = 0; v1 < v0; v1++) {
        UnkStruct_02057B48 * v7 = &Unk_021C0848->unk_62[v1];

        v5 = sub_02059328(v7->unk_04);
        v7->unk_00 += sub_0206419C(v5);
        v7->unk_02 += sub_020641A8(v5);
        v7->unk_05 = 2;

        Unk_021C0848->unk_132[v1] = 1;
        sub_02059058(v1, 1);
    }

    return 1;
}

int sub_02059328 (int param0)
{
    if (param0 == 0) {
        return 1;
    } else if (param0 == 1) {
        return 0;
    } else if (param0 == 2) {
        return 3;
    } else if (param0 == 3) {
        return 2;
    }

    GF_ASSERT(FALSE);
    return 2;
}

void sub_02059354 (int param0, int param1)
{
    Unk_021C0848->unk_11A[param0] = param1;
    Unk_021C0848->unk_13A[param0] = 15;
}

void sub_02059378 (int param0)
{
    Unk_021C0848->unk_11A[param0] = 0;
}

void sub_02059390 (int param0, int param1)
{
    Unk_021C0848->unk_122[param0] = param1;
    Unk_021C0848->unk_13A[param0] = 15;
}

void sub_020593B4 (int param0)
{
    Unk_021C0848->unk_122[param0] = 0;
}

int sub_020593CC (int param0)
{
    return Unk_021C0848->unk_142[param0];
}

int sub_020593E0 (int param0)
{
    return Unk_021C0848->unk_13A[param0];
}

void sub_020593F4 (int param0)
{
    sub_0205EA84(Unk_021C0848->unk_54->unk_3C, param0);
    Unk_021C0848->unk_A2[CommSys_CurNetId()].unk_04 = param0;
    sub_02057AE4(0);
}

void sub_02059424 (int param0, int param1)
{
    Unk_021C0848->unk_A2[param0].unk_04 = param1;
    sub_0205EA84(Unk_021C0848->unk_08[param0], param1);
}

int sub_02059444 (int param0)
{
    if (!Unk_021C0848->unk_08[param0]) {
        return -1;
    }

    return sub_0205EA78(Unk_021C0848->unk_08[param0]);
}

void sub_02059464 (int param0)
{
    if (0 != param0) {
        Unk_021C0848->unk_00 |= param0;
    }

    sub_0203D128();
    Unk_021C0848->unk_2BC = 0;
}

void sub_0205948C (int param0)
{
    if (0 != param0) {
        Unk_021C0848->unk_00 &= ~(param0);
    }

    if (Unk_021C0848->unk_00 == 0x10) {
        u8 v0 = 1;
        sub_020360D0(62, &v0);
    }

    if (Unk_021C0848->unk_00 == 0) {
        if (0x10 != param0) {
            sub_0203D140();
            sub_02057FC4(1);
        } else {
            sub_0203D140();
            Unk_021C0848->unk_2BC = 1;
        }
    }
}

void sub_020594EC (void)
{
    Unk_021C0848->unk_00 = 0;
}

void sub_020594FC (void)
{
    sub_0203D128();
    Unk_021C0848->unk_2BC = 0;
}

void sub_02059514 (void)
{
    sub_0203D140();
    sub_02057FC4(1);
}

void sub_02059524 (void)
{
    if (Unk_021C0848->unk_2BF == 0) {
        if (!Unk_021C0848->unk_2BE) {
            sub_02059514();
            Unk_021C0848->unk_2BF = 1;
        } else if (ov23_02243298(CommSys_CurNetId())) {
            sub_02059514();
            Unk_021C0848->unk_2BF = 1;
        } else {
            (void)0;
        }
    }
}

void sub_02059570 (void)
{
    if (Unk_021C0848->unk_2BF == 0) {
        if (Unk_021C0848->unk_2BE) {
            if (!ov23_02243298(CommSys_CurNetId())) {
                sub_02057FC4(0);
            }
        }
    }
}

void sub_020595A4 (void)
{
    int v0, v1, v2, v3;
    UnkStruct_02061AB4 * v4;

    if (!Unk_021C0848) {
        return;
    }

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (Unk_021C0848->unk_08[v0] == NULL) {
            continue;
        }

        if (CommSys_CurNetId() == v0) {
            continue;
        }

        v4 = sub_0205EB3C(Unk_021C0848->unk_08[v0]);
        v1 = Unk_021C0848->unk_A2[v0].unk_00;
        v2 = Unk_021C0848->unk_A2[v0].unk_02;
        v3 = Unk_021C0848->unk_A2[v0].unk_04;

        sub_02063024(v4, v1);
        sub_02063044(v4, v2);
        sub_02063340(v4, v1, 0, v2, v3);
    }
}

void sub_02059624 (void)
{
    Unk_021C0848->unk_2C0 = 8;
}

void sub_02059638 (BOOL param0)
{
    Unk_021C0848->unk_2C3 = param0;
}
