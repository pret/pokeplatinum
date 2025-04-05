#include "overlay023/ov23_0224A1D0.h"

#include <nitro.h>
#include <nnsys/g3d/glbstate.h>
#include <string.h>

#include "generated/trainer_score_events.h"

#include "struct_decls/struct_0202855C_decl.h"
#include "struct_defs/struct_02057B48.h"

#include "field/field_system.h"
#include "overlay005/ov5_021F50BC.h"
#include "overlay005/ov5_021F5284.h"
#include "overlay005/ov5_021F5428.h"
#include "overlay005/ov5_021F55CC.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_02249918.h"
#include "overlay023/ov23_0224B05C.h"
#include "overlay023/ov23_0224DC40.h"
#include "overlay023/ov23_0224F294.h"
#include "overlay023/ov23_02253D40.h"
#include "overlay023/struct_ov23_0224A5CC.h"
#include "overlay023/struct_ov23_0224ABC4.h"

#include "comm_player_manager.h"
#include "communication_information.h"
#include "communication_system.h"
#include "field_system.h"
#include "game_records.h"
#include "heap.h"
#include "map_object_move.h"
#include "player_avatar.h"
#include "strbuf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system_flags.h"
#include "system_vars.h"
#include "trainer_info.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_0202854C.h"
#include "unk_0206CCB0.h"
#include "unk_020711EC.h"
#include "vars_flags.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
} UnkStruct_ov23_0224A348;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
} UnkStruct_ov23_0224A570;

CommPlayerManager *CommPlayerMan_Get(void);

void ov23_0224A1D0(void)
{
    int v0;
    CommPlayerManager *v1 = CommPlayerMan_Get();

    if (v1 == NULL) {
        return;
    }

    for (v0 = 0; v0 < (7 + 1); v0++) {
        CommPlayer_Destroy(v0, 0, 0);
        sub_020593B4(v0);
    }

    v1->isResetting = 1;
}

static void ov23_0224A204(int param0)
{
    int v0;
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();

    if (param0 == CommSys_CurNetId()) {
        if (commPlayerMan->unk_290[param0] != NULL) {
            GameRecords_IncrementTrainerScore(SaveData_GetGameRecords(commPlayerMan->fieldSystem->saveData), TRAINER_SCORE_EVENT_UNK_28);

            if (commPlayerMan->unk_27C[5 - 1]) {
                Heap_FreeToHeap(commPlayerMan->unk_27C[5 - 1]);
            }

            for (v0 = 5 - 1; v0 >= 1; v0--) {
                commPlayerMan->unk_27C[v0] = commPlayerMan->unk_27C[v0 - 1];
            }

            commPlayerMan->unk_27C[0] = commPlayerMan->unk_290[param0];
            sub_02028830(sub_020298B0(FieldSystem_GetSaveData(commPlayerMan->fieldSystem)), commPlayerMan->unk_290[param0]);

            commPlayerMan->unk_290[param0] = NULL;
            commPlayerMan->unk_14A[param0].unk_20 = 0xff;
        }
    } else {
        ov23_0224AE60(param0);
    }
}

static BOOL ov23_0224A294(int param0, int param1)
{
    CommPlayerManager *v0 = CommPlayerMan_Get();

    if ((v0->unk_290[param0] == NULL) && (v0->unk_290[param1] != NULL)) {
        v0->unk_290[param0] = v0->unk_290[param1];
        v0->unk_290[param1] = NULL;
        v0->unk_FA[param0] = 1;
        v0->unk_FA[param1] = 0;
        v0->unk_14A[param0].unk_20 = param0;
        v0->unk_14A[param1].unk_20 = 0xff;
        TrainerInfo_Copy(v0->unk_290[param0], (TrainerInfo *)&v0->unk_14A[param0].unk_00);
        return 1;
    }

    return 0;
}

static void ov23_0224A300(int param0)
{
    sub_02059514();
}

static void ov23_0224A308(int param0)
{
    sub_02059514();
}

static void ov23_0224A310(int param0)
{
    sub_0205948C(0x2);
}

static void ov23_0224A31C(int param0)
{
    sub_0205948C(0x20);
}

static void ov23_0224A328(int param0)
{
    sub_0205948C(0x1);
}

static void ov23_0224A334(int param0)
{
    CommPlayerManager *v0 = CommPlayerMan_Get();

    if (v0) {
        v0->unk_2B8 = 0;
    }
}

void ov23_0224A348(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov23_0224A348 v0;
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();

    v0.unk_00 = 2;
    v0.unk_01 = param0;

    if (commPlayerMan->unk_E2[param0] && !ov23_0224ACC0(param0)) {
        if (ov23_0224AEA4(param0)) {
            v0.unk_00 = 3;
        } else {
            v0.unk_00 = 1;
        }
    }

    if (CommSys_SendDataServer(29, &v0, 2)) {
        if (v0.unk_00 != 2) {
            sub_02059058(param0, 0);
        }
    }
}

void ov23_0224A3A8(int param0, int param1, void *param2, void *param3)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();
    UnkStruct_ov23_0224A348 *v1 = param2;

    if (!CommSys_IsSendingMovementData()) {
        return;
    }

    if ((v1->unk_00 == 1) && (v1->unk_01 == CommSys_CurNetId())) {
        if (!commPlayerMan->unk_2B8) {
            commPlayerMan->unk_2B8 = 1;

            ov23_0224F758(ov23_0224A334, commPlayerMan->fieldSystem);
        }
    } else if ((v1->unk_00 == 3) && (v1->unk_01 == CommSys_CurNetId())) {
        if (!commPlayerMan->unk_2B8) {
            commPlayerMan->unk_2B8 = 1;
            ov23_02250A50(ov23_0224A334, commPlayerMan->fieldSystem);
        }
    }
}

void ov23_0224A410(int param0, int param1, void *param2, void *param3)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();
    UnkStruct_ov23_0224A348 *v1 = param2;
    VarsFlags *v2 = SaveData_GetVarsFlags(commPlayerMan->fieldSystem->saveData);

    GF_ASSERT(v1->unk_01 < (7 + 1));

    if ((v1->unk_00 == 4) && (v1->unk_01 == CommSys_CurNetId())) {
        sub_020594FC();
        ov23_02253F40(ov23_0224219C(), 72, 1, ov23_0224A300);
    }

    if (v1->unk_00 == 1) {
        CommPlayer_LookTowards(v1->unk_01, v1->unk_02);
    }

    if ((v1->unk_00 == 1) && (v1->unk_01 == CommSys_CurNetId())) {
        ov23_0224DCB8(v1->unk_02, ov23_0224A334, commPlayerMan->fieldSystem);

        commPlayerMan->unk_58.unk_00_0 = v1->unk_01;
        commPlayerMan->unk_58.unk_00_4 = v1->unk_02;
        commPlayerMan->unk_58.unk_00_8 = 0;
        commPlayerMan->unk_58.unk_00_9 = 0;

        if (commPlayerMan->unk_5A[v1->unk_02] == 0) {
            sub_020294F4(SaveData_SecretBaseRecord(FieldSystem_GetSaveData(commPlayerMan->fieldSystem)), v1->unk_02);
            SystemVars_SetSpiritombCounter(v2, SystemVars_GetSpiritombCounter(v2) + 1);
            SystemVars_SetUndergroundTalkCounter(v2, SystemVars_GetUndergroundTalkCounter(v2) + 1);

            commPlayerMan->unk_5A[v1->unk_02]++;
        }
    }

    if ((v1->unk_00 == 1) && (v1->unk_02 == CommSys_CurNetId())) {
        ov23_0224F07C(v1->unk_02, v1->unk_01, commPlayerMan->fieldSystem);
    }

    if ((v1->unk_00 == 2) && (v1->unk_01 == CommSys_CurNetId())) {
        sub_020594FC();
        ov23_02253F40(ov23_0224219C(), 2, 1, ov23_0224A300);
    }

    if (v1->unk_00 == 1) {
        ov23_0224300C(v1->unk_01, v1->unk_02);
    }
}

int ov23_0224A56C(void)
{
    return sizeof(UnkStruct_ov23_0224A570);
}

void ov23_0224A570(int param0, int param1, void *param2, void *param3)
{
    u8 *v0 = param2;
    UnkStruct_ov23_0224A570 v1;

    v1.unk_01 = param0;

    switch (v0[0]) {
    case 0:
        v1.unk_00 = 0;
        sub_02035B48(85, &v1);
        break;
    case 3:
        v1.unk_00 = 3;
        sub_02035B48(85, &v1);
        sub_02059058(param0, 0);
        break;
    }
}

static void ov23_0224A5B0(int param0)
{
    ov23_0224B040(CommSys_CurNetId());
    ov23_02254044(ov23_022421AC());

    sub_0205948C(0x4);
}

static void ov23_0224A5CC(SysTask *param0, void *param1)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();
    UnkStruct_ov23_0224A5CC *v1 = param1;
    u8 v2 = v1->unk_04;
    u8 v3 = 0;

    if (!CommSys_IsPlayerConnected(v2)) {
        Heap_FreeToHeap(v1);
        SysTask_Done(param0);
        return;
    } else {
        v1->unk_00++;

        if (v1->unk_00 > 60) {
            v3 = 1;
        }
    }

    if (v3) {
        commPlayerMan->unk_EA[v2] = 1;
        Heap_FreeToHeap(v1);
        SysTask_Done(param0);
    }
}

static void ov23_0224A620(int param0)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();
    UnkStruct_ov23_0224A5CC *v1 = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, sizeof(UnkStruct_ov23_0224A5CC));

    v1->unk_00 = 0;
    v1->unk_04 = param0;
    commPlayerMan->unk_EA[param0] = 0;

    SysTask_Start(ov23_0224A5CC, v1, 100);
    sub_02059058(param0, 0);
}

BOOL ov23_0224A658(int param0, int param1, BOOL param2)
{
    UnkStruct_ov23_0224A570 v0;

    if (param2 & 0x1) {
        v0.unk_00 = 11;
    } else if (ov23_0224AEA4(param0)) {
        v0.unk_00 = 11;
    } else {
        if (param1 == 0xff) {
            return 0;
        } else if (!ov23_0224AEA4(param1)) {
            return 0;
        } else {
            v0.unk_00 = 5;
            ov23_0224A620(param1);
        }
    }

    v0.unk_01 = param0;
    v0.unk_02 = param1;

    sub_02059058(param0, 0);
    sub_02035B48(85, &v0);

    return 1;
}

BOOL ov23_0224A6B8(int param0)
{
    UnkStruct_ov23_0224A570 v0;

    if (ov23_0224AEA4(param0)) {
        v0.unk_00 = 12;
    } else {
        return 0;
    }

    v0.unk_01 = param0;
    sub_02035B48(85, &v0);

    return 1;
}

static void ov23_0224A6E4(UnkStruct_ov23_0224A570 *param0, BOOL param1, SecretBaseRecord *param2)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();

    ov23_0224321C();

    sub_02057FC4(0);
    sub_02059464(0x4);

    ov23_02254068(ov23_022421AC(), CommInfo_TrainerInfo(param0->unk_01));

    if (param1) {
        commPlayerMan->unk_FA[CommSys_CurNetId()] = 0;
        ov23_0224B040(CommSys_CurNetId());
        ov23_0224B00C(CommSys_CurNetId());
        ov23_02253F40(ov23_022421AC(), 10, 1, ov23_0224A5B0);
    } else {
        ov23_02253F40(ov23_022421AC(), 11, 1, ov23_0224A5B0);
    }

    sub_0200502C(4, 1060, 60, 0, 0xff, NULL);
    Sound_PlayEffect(SEQ_SE_DP_CARD10);
}

void ov23_0224A77C(int param0, int param1, void *param2, void *param3)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();
    UnkStruct_ov23_0224A570 *v1 = param2;
    BOOL v2;
    int v3 = 0;
    SecretBaseRecord *v4 = SaveData_SecretBaseRecord(FieldSystem_GetSaveData(commPlayerMan->fieldSystem));

    switch (v1->unk_00) {
    case 0:
        if (commPlayerMan->unk_290[v1->unk_01]) {
            ov23_0224AE60(v1->unk_01);
            ov23_0224B040(v1->unk_01);

            if (v1->unk_01 == CommSys_CurNetId()) {
                sub_020594FC();
                ov23_02253F40(ov23_022421AC(), 2, 1, ov23_0224A308);
                sub_0200502C(4, 1060, 60, 0, 0xff, NULL);
            }
        }
        break;
    case 5:
        if (CommInfo_TrainerInfo(v1->unk_01) == NULL) {
            ov23_0224AE60(v1->unk_02);
            return;
        }

        if (commPlayerMan->unk_290[v1->unk_02] == NULL) {
            if (v1->unk_01 == CommSys_CurNetId()) {
                sub_02059514();
            }

            return;
        }

        if (TrainerInfo_Equals(commPlayerMan->unk_290[v1->unk_02], CommInfo_TrainerInfo(v1->unk_01)) == 1) {
            ov23_0224AE60(v1->unk_02);

            if (v1->unk_01 == CommSys_CurNetId()) {
                sub_020297EC(v4);
                sub_020594FC();
                ov23_02253F40(ov23_022421AC(), 13, 1, ov23_0224A300);
                Sound_PlayEffect(SEQ_SE_DP_UG_021);
            } else if (v1->unk_02 == CommSys_CurNetId()) {
                ov23_0224A6E4(v1, 0, v4);
            }

            ov23_0224D530(v1->unk_01);
        } else if (ov23_0224A294(v1->unk_01, v1->unk_02)) {
            if (v1->unk_01 == CommSys_CurNetId()) {
                sub_0202955C(v4);
                sub_02059464(0x1);
                ov23_02254068(ov23_022421AC(), CommInfo_TrainerInfo(v1->unk_02));
                ov23_02253F40(ov23_022421AC(), 12, 1, ov23_0224A328);
                Sound_PlayBGM(1061);
                Sound_PlayEffect(SEQ_SE_DP_UG_021);
            } else if (v1->unk_02 == CommSys_CurNetId()) {
                ov23_0224A6E4(v1, 1, v4);
            }

            ov23_0224D518(v1->unk_01, v1->unk_02);
        }
        break;
    case 11:
        if (v1->unk_01 == CommSys_CurNetId()) {
            sub_02059464(0x2);
            ov23_02253F40(ov23_022421AC(), 6, 1, ov23_0224A310);
        }
        break;
    case 12:
        if (v1->unk_01 == CommSys_CurNetId()) {
            sub_02059464(0x20);
            ov23_02253F40(ov23_022421AC(), 5, 1, ov23_0224A31C);
        }
        break;
    case 3:
        commPlayerMan->unk_FA[v1->unk_01] = 0;
        ov23_0224B040(v1->unk_01);

        if (v1->unk_01 == CommSys_CurNetId()) {
            SecretBaseRecord *v5 = SaveData_SecretBaseRecord(FieldSystem_GetSaveData(commPlayerMan->fieldSystem));
            u8 v6 = sub_0202958C(v5);

            sub_020295C0(v5);
            SystemFlag_SetDeliveredStolenFlag(SaveData_GetVarsFlags(commPlayerMan->fieldSystem->saveData));

            if (commPlayerMan->unk_290[v1->unk_01]) {
                sub_0206DAB8(commPlayerMan->fieldSystem, commPlayerMan->unk_290[v1->unk_01]);

                if (commPlayerMan->unk_2B2 != 0xffff) {
                    commPlayerMan->unk_2B2++;
                }
            }

            sub_020594FC();
            Sound_PlayEffect(SEQ_SE_DP_UG_027);

            if (v6 == sub_0202958C(v5)) {
                ov23_02253F40(ov23_022421AC(), 7, 1, ov23_0224A300);
            } else {
                CommSys_SendDataFixedSize(96, &v6);
            }

            sub_0200502C(4, 1060, 60, 0, 0xff, NULL);
        }

        if (commPlayerMan->unk_290[v1->unk_01]) {
            if (TrainerInfo_Equals(commPlayerMan->unk_290[v1->unk_01], CommInfo_TrainerInfo(CommSys_CurNetId())) == 1) {
                sub_0206DAD4(commPlayerMan->fieldSystem, CommInfo_TrainerInfo(v1->unk_01));
            }
        }

        ov23_0224A204(v1->unk_01);
        break;
    }
}

void ov23_0224AA84(void)
{
    int v0;
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();

    for (v0 = 0; v0 < (7 + 1); v0++) {
        commPlayerMan->unk_14A[v0].unk_20 = 0xff;
    }
}

u8 *ov23_0224AAA0(int param0, void *param1, int param2)
{
    CommPlayerManager *v0 = CommPlayerMan_Get();
    return (u8 *)&v0->unk_14A[(7 + 1)];
}

void ov23_0224AAB0(void)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();

    commPlayerMan->unk_2B9 = 0;

    if (commPlayerMan->unk_290[CommSys_CurNetId()]) {
        CommSys_SendDataFixedSize(91, commPlayerMan->unk_290[CommSys_CurNetId()]);
    } else {
        TrainerInfo *v0 = TrainerInfo_New(15);
        Strbuf *v1 = Strbuf_Init(20, HEAP_ID_COMMUNICATION);

        GF_ASSERT(v0);
        GF_ASSERT(v1);

        TrainerInfo_SetNameFromStrbuf(v0, v1);
        CommSys_SendDataFixedSize(91, v0);
        Strbuf_Free(v1);
        Heap_FreeToHeap(v0);
    }
}

int ov23_0224AB2C(void)
{
    return 32;
}

void ov23_0224AB30(int param0, int param1, void *param2, void *param3)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();
    int v1;
    const TrainerInfo *v2 = param2;
    Strbuf *v3;
    u8 v4 = param0;

    if (commPlayerMan) {
        TrainerInfo_Copy(v2, (TrainerInfo *)commPlayerMan->unk_14A[param0].unk_00);

        v3 = TrainerInfo_NameNewStrbuf(v2, 15);

        if (Strbuf_Length(v3) != 0) {
            commPlayerMan->unk_14A[param0].unk_20 = param0;
        }

        for (v1 = 0; v1 < (7 + 1); v1++) {
            if (commPlayerMan->unk_14A[v1].unk_20 != 0xff) {
                commPlayerMan->unk_14A[v1].unk_20 = v1;
                sub_02035A3C(92, &commPlayerMan->unk_14A[v1], sizeof(UnkStruct_ov23_0224ABC4));
            }
        }

        CommSys_SendDataServer(93, &v4, 1);
        Strbuf_Free(v3);

        commPlayerMan->unk_2C2 = 1;
    } else {
        GF_ASSERT(0);
    }
}

void ov23_0224ABC4(int param0, int param1, void *param2, void *param3)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();
    UnkStruct_ov23_0224ABC4 *v1 = param2;
    int v2, v3;

    if (commPlayerMan) {
        v3 = v1->unk_20;

        if (commPlayerMan->unk_290[v3]) {
            Heap_FreeToHeap(commPlayerMan->unk_290[v3]);
        }

        commPlayerMan->unk_290[v3] = TrainerInfo_New(15);
        TrainerInfo_Copy((TrainerInfo *)v1->unk_00, commPlayerMan->unk_290[v3]);
        commPlayerMan->unk_FA[v3] = 1;
    }
}

int ov23_0224AC0C(void)
{
    return sizeof(UnkStruct_ov23_0224ABC4);
}

void ov23_0224AC10(int param0, int param1, void *param2, void *param3)
{
    u8 *v0 = param2;
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();

    if (v0[0] == CommSys_CurNetId()) {
        commPlayerMan->unk_2B9 = 1;
    }

    commPlayerMan->unk_2C2 = 0;
}

BOOL ov23_0224AC3C(void)
{
    CommPlayerManager *v0 = CommPlayerMan_Get();
    return v0->unk_2B9;
}

void ov23_0224AC4C(void)
{
    TrainerInfo *v0 = NULL;
    int v1, v2;
    int v3 = CommSys_CurNetId();
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();

    if (commPlayerMan->unk_290[v3]) {
        v0 = commPlayerMan->unk_290[v3];
        commPlayerMan->unk_290[v3] = NULL;
        commPlayerMan->unk_FA[v3] = 0;
        commPlayerMan->unk_14A[v3].unk_20 = 0xff;
    }

    for (v1 = 0; v1 < (7 + 1); v1++) {
        ov23_0224AE60(v1);
    }

    if (v0) {
        commPlayerMan->unk_290[0] = v0;
        commPlayerMan->unk_FA[0] = 1;

        TrainerInfo_Copy(v0, (TrainerInfo *)&commPlayerMan->unk_14A[0].unk_00);

        commPlayerMan->unk_14A[0].unk_20 = 0;
    }
}

BOOL ov23_0224ACC0(int param0)
{
    CommPlayerManager *v0 = CommPlayerMan_Get();

    if (v0->unk_04) {
        return !ov23_0224999C(
            ov23_0224993C(v0->unk_04, param0));
    }

    return 0;
}

void ov23_0224ACE8(int param0, int param1, void *param2, void *param3)
{
    u8 v0 = param0;
    sub_02035B48(26, &v0);
}

void ov23_0224ACF8(int param0, int param1, void *param2, void *param3)
{
    u8 *v0 = param2;
    ov23_02243020(v0[0]);
}

int ov23_0224AD04(int param0)
{
    CommPlayerManager *v0 = CommPlayerMan_Get();

    if (!v0) {
        return 0xffff;
    } else if (CommSys_CurNetId() == param0) {
        return v0->playerLocation[param0].x;
    } else if (!sub_02058C40()) {
        return 0xffff;
    }

    return v0->playerLocation[param0].x;
}

int ov23_0224AD40(int param0)
{
    CommPlayerManager *v0 = CommPlayerMan_Get();

    if (!v0) {
        return 0xffff;
    } else if (CommSys_CurNetId() == param0) {
        return v0->playerLocation[param0].z;
    } else if (!sub_02058C40()) {
        return 0xffff;
    }

    return v0->playerLocation[param0].z;
}

void ov23_0224AD7C(int param0, int param1)
{
    CommPlayerManager *v0 = CommPlayerMan_Get();
    ov23_02249994(ov23_0224993C(v0->unk_04, param0), param1);
}

void ov23_0224AD98(int param0)
{
    CommPlayerManager *v0 = CommPlayerMan_Get();
    ov23_02249994(ov23_0224993C(v0->unk_04, param0), 0);
}

void ov23_0224ADB0(int param0, int param1, int param2, int param3)
{
    CommPlayerManager *v0 = CommPlayerMan_Get();
    CommPlayerLocation *v1 = &v0->playerLocationServer[param0];

    v1->x = param1 + MapObject_GetDxFromDir(param3);
    v1->z = param2 + MapObject_GetDzFromDir(param3);
    v1->dir = param3;
}

void ov23_0224ADE8(int param0, int param1, int param2, int param3)
{
    CommPlayerManager *v0 = CommPlayerMan_Get();
    CommPlayerLocation *v1;

    if (!v0) {
        return;
    }

    v1 = &v0->playerLocation[param0];

    if (!v0->isResetting) {
        ov5_021F5634(v0->fieldSystem, v1->x, 0, v1->z);
    }

    v1->x = param1;
    v1->z = param2;
    v1->dir = param3;

    if (v0->playerAvatar[param0]) {
        sub_0205ECE0(v0->playerAvatar[param0], param1, param2, param3);
    }

    if (!v0->isResetting) {
        ov5_021F5634(v0->fieldSystem, v1->x, 0, v1->z);
    }

    if (!v0->isResetting) {
        ov23_0224B040(param0);
    }
}

BOOL ov23_0224AE60(int param0)
{
    CommPlayerManager *v0 = CommPlayerMan_Get();

    if (v0->unk_290[param0] != NULL) {
        Heap_FreeToHeap(v0->unk_290[param0]);

        v0->unk_290[param0] = NULL;
        v0->unk_FA[param0] = 0;
        v0->unk_14A[param0].unk_20 = 0xff;

        return 1;
    }

    return 0;
}

BOOL ov23_0224AEA4(int param0)
{
    CommPlayerManager *v0 = CommPlayerMan_Get();

    if (v0->unk_290[param0] != NULL) {
        return 1;
    }

    return 0;
}

BOOL ov23_0224AEC4(int param0, int param1)
{
    CommPlayerManager *v0 = CommPlayerMan_Get();

    if (v0->unk_290[param0] == NULL) {
        TrainerInfo *v1 = CommInfo_TrainerInfo(param1);

        if (v1) {
            v0->unk_290[param0] = TrainerInfo_New(15);
            TrainerInfo_Copy(v1, v0->unk_290[param0]);

            v0->unk_FA[param0] = 1;
            v0->unk_14A[param0].unk_20 = param0;

            TrainerInfo_Copy(v1, (TrainerInfo *)&v0->unk_14A[param0].unk_00);

            if (param1 == CommSys_CurNetId()) {
                SecretBaseRecord *v2 = SaveData_SecretBaseRecord(v0->fieldSystem->saveData);
                sub_020297B4(v2);
            }

            return 1;
        }
    }

    return 0;
}

void ov23_0224AF4C(int param0)
{
    CommPlayerManager *v0 = CommPlayerMan_Get();

    if (v0->unk_28[param0] != NULL) {
        if (sub_020714F0(v0->unk_28[param0])) {
            sub_0207136C(v0->unk_28[param0]);
        } else {
            GF_ASSERT(0);
        }

        v0->unk_28[param0] = NULL;
    }
}

void ov23_0224AF7C(int param0)
{
    CommPlayerManager *v0 = CommPlayerMan_Get();

    if (!v0->isResetting) {
        if (v0->playerAvatar[param0]) {
            switch (v0->unk_FA[param0]) {
            case 3:
                if (v0->unk_28[param0] == NULL) {
                    v0->unk_28[param0] = ov5_021F5488(Player_MapObject(v0->playerAvatar[param0]));
                }

                v0->unk_FA[param0] = 0;
                break;
            case 2:
                if (v0->unk_28[param0] == NULL) {
                    v0->unk_28[param0] = ov5_021F52E4(Player_MapObject(v0->playerAvatar[param0]));
                }
                break;
            case 1:
                if (v0->unk_28[param0] == NULL) {
                    v0->unk_28[param0] = ov5_021F511C(Player_MapObject(v0->playerAvatar[param0]));
                }
                break;
            case 0:
                ov23_0224AF4C(param0);
                break;
            }
        }
    }
}

void ov23_0224B00C(int param0)
{
    CommPlayerManager *v0 = CommPlayerMan_Get();

    if (v0->unk_FA[param0] != 1) {
        v0->unk_FA[param0] = 2;
    }
}

void ov23_0224B024(int param0)
{
    CommPlayerManager *v0 = CommPlayerMan_Get();

    if (v0->unk_FA[param0] != 1) {
        v0->unk_FA[param0] = 3;
    }

    ov23_0224AF4C(param0);
}

void ov23_0224B040(int param0)
{
    CommPlayerManager *v0 = CommPlayerMan_Get();

    if (v0->unk_FA[param0] != 1) {
        v0->unk_FA[param0] = 0;
    }

    ov23_0224AF4C(param0);
}
