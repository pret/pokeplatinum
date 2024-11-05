#include "overlay023/ov23_022499E4.h"

#include <nitro.h>
#include <string.h>

#include "consts/game_records.h"

#include "struct_defs/struct_0205964C.h"

#include "field/field_system.h"
#include "functypes/funcptr_020598EC.h"
#include "overlay023/ov23_0223E140.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_0224340C.h"
#include "overlay023/ov23_0224A1D0.h"
#include "overlay023/ov23_0224B05C.h"

#include "comm_player_manager.h"
#include "communication_information.h"
#include "communication_system.h"
#include "field_comm_manager.h"
#include "field_system.h"
#include "game_records.h"
#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system_flags.h"
#include "unk_02033200.h"
#include "unk_020366A0.h"
#include "vars_flags.h"

static void ov97_0222D19C(SysTask *param0, void *param1);
static void ov23_02249C24(FieldCommTask param0, int param1);
static void ov23_02249C34(void);
static void ov23_02249C98(void);
static void ov23_02249CC4(void);
static void ov23_02249CE4(void);
static void ov23_02249D20(void);
static void ov23_02249EBC(void);
static void ov23_02249F14(void);
static void ov23_02249F4C(void);
static void ov23_02249F7C(void);
static void ov23_0224A09C(void);
static void ov23_0224A0CC(void);
static void ov23_0224A0E0(void);
static void ov23_0224A0E8(void);
static void ov23_02249FD4(void);
static void ov23_02249FB4(void);
static void ov23_02249FFC(void);
static void ov23_0224A02C(void);
static void ov23_02249DBC(void);
static void ov23_02249E18(void);
static void ov23_02249E84(void);
static void ov23_02249E98(void);
static void ov23_02249EA0(void);
static void ov23_0224A1A0(void);
static void ov23_0224A138(void);
static void ov23_0224A14C(void);
static void ov23_0224A150(void);
static void ov23_0224A16C(void);
static void ov23_0224A180(void);
static void ov23_0224A184(void);
static void ov23_0224A024(void);
static void ov23_0224A064(void);
static void ov23_022499E4(char *param0)
{
    return;
}

void ov23_022499E8(FieldSystem *fieldSystem)
{
    FieldCommunicationManager *v0 = FieldCommMan_Get();

    if (v0 != NULL) {
        return;
    }

    sub_02036794(FieldSystem_GetSaveData(fieldSystem));
    FieldCommMan_Init(fieldSystem);

    v0 = FieldCommMan_Get();
    Heap_Create(3, 33, 0xe800);

    if (!SystemFlag_CheckUndergroundFirstEntered(SaveData_GetVarsFlags(v0->fieldSystem->saveData))) {
        sub_02036894();
    }
}

void ov23_02249A2C(void)
{
    FieldCommunicationManager *v0 = FieldCommMan_Get();

    v0->unk_41 = 1;
    GameRecords_IncrementTrainerScore(SaveData_GetGameRecordsPtr(v0->fieldSystem->saveData), TRAINER_SCORE_EVENT_UNK_36);

    ov23_02242BC0(v0->fieldSystem);
    ov23_02249C24(ov23_02249C34, 0);
}

void ov23_02249A5C(void)
{
    FieldCommunicationManager *v0 = FieldCommMan_Get();

    if (v0 == NULL) {
        return;
    }

    ov23_02249C24(ov23_0224A1A0, 3);
}

void ov23_02249A74(void)
{
    sub_02036884();
    ov23_02249C24(ov23_0224A02C, 0);
}

static void ov23_02249A88(void)
{
    if (!sub_02033DFC()) {
        ov23_0224C198();
        ov23_02249C24(ov23_02249C34, 0);
    }
}

void ov23_02249AA4(void)
{
    sub_020368A4();
    ov23_02249C24(ov23_02249A88, 0);
}

BOOL ov23_02249AB8(void)
{
    FieldCommunicationManager *v0 = FieldCommMan_Get();
    int v1;
    u32 v2 = (u32)v0->task;
    u32 v3 = (u32)ov23_02249E18;
    u32 v4 = (u32)ov23_0224A09C;
    u32 v5 = (u32)ov23_02249CE4;
    u32 v6 = (u32)ov23_0224A024;
    u32 v7[] = {
        (u32)ov23_02249E84,
        (u32)ov23_0224A0CC,
        (u32)ov23_0224A138,
        (u32)ov23_0224A16C
    };

    if (v2 == v3) {
        ov23_02249C24(ov23_02249E84, 0);
        return 1;
    } else if (v4 == v2) {
        ov23_02249C24(ov23_0224A0CC, 0);
        return 1;
    } else if (v5 == v2) {
        ov23_02249C24(ov23_0224A138, 0);
        return 1;
    } else if (v6 == v2) {
        ov23_02249C24(ov23_0224A16C, 0);
        return 1;
    }

    for (v1 = 0; v1 < NELEMS(v7); v1++) {
        if (v7[v1] == v2) {
            return 1;
        }
    }

    return 0;
}

BOOL ov23_02249B60(void)
{
    FieldCommunicationManager *v0 = FieldCommMan_Get();
    u32 v1 = (u32)v0->task;
    u32 v2 = (u32)ov23_02249E98;
    u32 v3 = (u32)ov23_0224A0E0;
    u32 v4 = (u32)ov23_0224A14C;
    u32 v5 = (u32)ov23_0224A180;

    if (v1 == v2) {
        ov23_02249C24(ov23_02249EA0, 0);
        return 1;
    } else if (v3 == v1) {
        ov23_02249C24(ov23_0224A0E8, 0);
        return 1;
    } else if (v4 == v1) {
        ov23_02249C24(ov23_0224A150, 0);
        return 1;
    } else if (v5 == v1) {
        ov23_02249C24(ov23_0224A184, 0);
        return 1;
    }

    return 0;
}

BOOL ov23_02249BD4(void)
{
    FieldCommunicationManager *v0 = FieldCommMan_Get();
    int v1;
    u32 v2[] = {
        (u32)ov23_0224A09C,
        (u32)ov23_02249E18,
        (u32)ov23_02249EBC,
        (u32)ov23_02249F14,
        (u32)ov23_02249F4C,
        (u32)ov23_02249F7C,
        (u32)ov23_0224A0CC,
        (u32)ov23_0224A0E0,
        (u32)ov23_0224A0E8,
        (u32)ov23_02249E84,
        (u32)ov23_02249E98,
        (u32)ov23_02249EA0,
        0
    };
    u32 v3 = (u32)v0->task;

    if (v0 == NULL) {
        return 0;
    }

    for (v1 = 0; v2[v1] != 0; v1++) {
        if (v3 == v2[v1]) {
            return 1;
        }
    }

    return 0;
}

static void ov97_0222D19C(SysTask *param0, void *param1)
{
    FieldCommunicationManager *v0 = FieldCommMan_Get();

    if (v0 == NULL) {
        SysTask_Done(param0);
    } else {
        if (v0->task != NULL) {
            FieldCommTask v1 = v0->task;

            if (!v0->unk_40) {
                v1();
            }
        }
    }
}

static void ov23_02249C24(FieldCommTask param0, int param1)
{
    FieldCommunicationManager *v0 = FieldCommMan_Get();

    v0->task = param0;
    v0->timer = param1;
}

static void ov23_02249C34(void)
{
    FieldCommunicationManager *v0 = FieldCommMan_Get();

    if (v0->timer != 0) {
        v0->timer--;
        return;
    }

    if (!CommSys_IsInitialized()) {
        return;
    }

    ov23_02242D44(v0->fieldSystem);

    CommInfo_SendBattleRegulation();
    CommPlayer_SendPos(0);

    ov23_02243AF0();
    ov23_0224C21C();

    if (!SystemFlag_CheckUndergroundFirstEntered(SaveData_GetVarsFlags(v0->fieldSystem->saveData))) {
        ov23_02249C24(ov23_02249C98, 0);
    } else {
        sub_02059524();
        ov23_02249C24(ov23_02249CC4, 12 * 2);
    }
}

static void ov23_02249C98(void)
{
    FieldCommunicationManager *v0 = FieldCommMan_Get();

    if (!SystemFlag_CheckUndergroundFirstEntered(SaveData_GetVarsFlags(v0->fieldSystem->saveData))) {
        return;
    }

    sub_020367F0();
    sub_02059524();

    ov23_02249C24(ov23_02249CE4, 12 * 2);
}

static void ov23_02249CC4(void)
{
    FieldCommunicationManager *v0 = FieldCommMan_Get();

    if (v0->timer != 0) {
        v0->timer--;
        return;
    }

    ov23_02249C24(ov23_02249CE4, 12 * 2);
}

static void ov23_02249CE4(void)
{
    ov23_02242B14();
    sub_02059524();

    if (sub_02036834()) {
        if (CommSys_CurNetId() == 0) {
            ov23_0224B598();
            ov23_02249C24(ov23_02249DBC, 60);
        } else {
            ov23_02249C24(ov23_02249D20, 120);
        }
    }
}

static void ov23_02249D20(void)
{
    FieldCommunicationManager *v0 = FieldCommMan_Get();

    if (v0->timer != 0) {
        v0->timer--;
    }

    if (sub_02033E68() || CommSys_CheckError() || (v0->timer == 0)) {
        sub_020367F0();
        ov23_02249C24(ov23_02249FFC, 0);
    } else if (CommSys_IsPlayerConnected(CommSys_CurNetId())) {
        if (v0->timer != 0) {
            v0->timer--;

            if (CommSys_SendRingRemainingSize() != 264) {
                return;
            }
        }

        ov23_0224321C();
        CommPlayer_CopyPersonal(0);

        ov23_0224546C(0, 0, NULL, NULL);
        ov23_02244858(0, 1);

        CommInfo_InitPlayer(0);
        CommPlayer_Destroy(0, 0, 0);
        sub_02059570();

        ov23_02249C24(ov23_02249EBC, 10);
        return;
    }
}

static void ov23_02249DBC(void)
{
    FieldCommunicationManager *v0 = FieldCommMan_Get();

    ov23_02242B14();

    if (v0->timer != 0) {
        v0->timer--;
    }

    if (sub_020360E8() || (v0->timer == 0)) {
        if (ov23_0224321C()) {
            sub_02059514();
        }

        ov23_022499E4("\u0090\u0065\u008B\u0040\u0090\u00DA\u0091\u00B1");

        CommPlayer_SendPos(0);

        ov23_0224AAB0();
        ov23_0224C21C();
        ov23_02243360();
        ov23_02249C24(ov23_02249E18, 0);

        return;
    }
}

static void ov23_02249E18(void)
{
    FieldCommunicationManager *v0 = FieldCommMan_Get();

    ov23_02242B14();

    if (v0->fieldSystem->task != NULL) {
        return;
    }

    if (CommSys_CheckError() || !CommServerClient_IsClientConnecting() || (!CommSys_IsPlayerConnected(CommSys_CurNetId()) && !CommSys_IsAlone())) {
        ov23_0224B5CC(0);
        ov23_0224AA84();
        ov23_0224DA8C();

        Link_Message(43);

        ov23_02244858(CommSys_CurNetId(), 1);
        ov23_0224321C();

        sub_02036824();
        ov23_02249C24(ov23_02249FB4, 0);
    }
}

static void ov23_02249E84(void)
{
    CommPlayerMan_Reset();
    ov23_02249C24(ov23_02249E98, 0);
}

static void ov23_02249E98(void)
{
    ov23_02242B14();
}

static void ov23_02249EA0(void)
{
    FieldCommunicationManager *v0 = FieldCommMan_Get();

    ov23_0224C198();
    CommPlayerMan_Restart();
    ov23_02249C24(ov23_02249E18, 0);
}

static void ov23_02249EBC(void)
{
    FieldCommunicationManager *v0 = FieldCommMan_Get();

    if (v0->timer == 9) {
        CommInfo_SendBattleRegulation();
        ov23_02243360();
    }

    if (v0->timer == 1) {
        CommPlayer_SendPosServer(0);
    }

    if (v0->timer != 0) {
        v0->timer--;
        return;
    }

    if (CommInfo_IsDataFinishedReading()) {
        ov23_022499E4("\u0069\u006E\u0066\u006F\u0083\u0066\u0081\u005B\u0083\u005E\u008E\u00F3\u0090\u004D\u008A\u00AE\u0097\u00B9");
        ov23_0224AAB0();
        ov23_02249C24(ov23_02249F14, 200);
        return;
    }

    ov23_0224A09C();
}

static void ov23_02249F14(void)
{
    FieldCommunicationManager *v0 = FieldCommMan_Get();

    if (ov23_0224AC3C()) {
        ov23_02243AF0();
        ov23_02249C24(ov23_02249F4C, 0);
    } else {
        ov23_0224A09C();

        if (v0->timer != 0) {
            v0->timer--;
        } else {
            ov23_0224A064();
        }
    }
}

static void ov23_02249F4C(void)
{
    if (ov23_0224404C()) {
        ov23_022499E4("\u0090\u0065\u008B\u0040\u00E3\u00A9\u0083\u0066\u0081\u005B\u0083\u005E\u0093\u00CD\u0082\u00A2\u0082\u00BD\u0082\u00E7\u0082\u00B5\u0082\u00A2");
        ov23_02244068();
        ov23_0224C21C();
        ov23_02249C24(ov23_02249F7C, 0);
        return;
    }

    ov23_0224A09C();
}

static void ov23_02249F7C(void)
{
    if (ov23_0224C420()) {
        ov23_022499E4("\u0094\u00E9\u0096\u00A7\u008A\u00EE\u0092\u006E\u0082\u00CC\u0088\u00CA\u0092\u0075\u0082\u00AA\u0082\u00AB\u0082\u00BD");
        ov23_0224C434();
        CommPlayer_SendPos(1);
        Link_Message(31);
        ov23_02249C24(ov23_0224A09C, 0);
        return;
    }

    ov23_0224A09C();
}

static void ov23_02249FB4(void)
{
    if (!CommSys_IsAlone()) {
        return;
    }

    sub_02059058(0, 0);
    ov23_02249C24(ov23_02249FD4, 30);
}

static void ov23_02249FD4(void)
{
    FieldCommunicationManager *v0 = FieldCommMan_Get();

    if (v0->timer != 0) {
        v0->timer--;
        return;
    }

    if (CommSys_CurNetId() == 0) {
        ov23_02249C24(ov23_02249C34, 0);
    }
}

static void ov23_02249FFC(void)
{
    FieldCommunicationManager *v0 = FieldCommMan_Get();

    if (v0->timer != 0) {
        v0->timer--;
        return;
    }

    if (CommSys_CurNetId() == 0) {
        ov23_02249C24(ov23_02249C34, 0);
    }
}

static void ov23_0224A024(void)
{
    ov23_02242B14();
}

static void ov23_0224A02C(void)
{
    FieldCommunicationManager *v0 = FieldCommMan_Get();

    if (CommSys_CurNetId() == 0) {
        ov23_02242D44(v0->fieldSystem);
        CommInfo_SendBattleRegulation();
        CommPlayer_SendPos(0);
        ov23_02243AF0();
        ov23_0224C21C();
        ov23_02249C24(ov23_0224A024, 0);
    }
}

static void ov23_0224A064(void)
{
    ov23_02244858(CommSys_CurNetId(), 1);
    ov23_0224D9AC(CommSys_CurNetId(), 1);
    ov23_0224160C();
    CommPlayerMan_Stop();
    ov23_0224321C();
    sub_020367F0();
    ov23_0224AC4C();
    ov23_02249C24(ov23_02249FFC, 0);
}

static void ov23_0224A09C(void)
{
    FieldCommunicationManager *v0 = FieldCommMan_Get();

    ov23_02242B14();
    sub_02059524();

    if (v0->fieldSystem->task != NULL) {
        return;
    }

    if (sub_02033E68() || CommSys_CheckError()) {
        ov23_0224A064();
    }
}

static void ov23_0224A0CC(void)
{
    CommPlayerMan_Reset();
    ov23_02249C24(ov23_0224A0E0, 0);
}

static void ov23_0224A0E0(void)
{
    ov23_0224DAB4();
}

static void ov23_0224A0E8(void)
{
    FieldCommunicationManager *v0 = FieldCommMan_Get();

    ov23_0224C198();
    CommPlayerMan_Restart();

    if (sub_02033E68() || CommSys_CheckError()) {
        ov23_0224B518();
        CommPlayerMan_Stop();
        ov23_0224321C();
        sub_020367F0();
        ov23_0224AC4C();
        ov23_02249C24(ov23_02249FFC, 0);
    } else {
        ov23_02249C24(ov23_0224A09C, 0);
    }
}

static void ov23_0224A138(void)
{
    CommPlayerMan_Reset();
    ov23_02249C24(ov23_0224A14C, 0);
}

static void ov23_0224A14C(void)
{
    return;
}

static void ov23_0224A150(void)
{
    FieldCommunicationManager *v0 = FieldCommMan_Get();

    ov23_0224C198();
    CommPlayerMan_Restart();
    ov23_02249C24(ov23_02249CE4, 0);
}

static void ov23_0224A16C(void)
{
    ov23_0224A1D0();
    ov23_02249C24(ov23_0224A180, 0);
}

static void ov23_0224A180(void)
{
    return;
}

static void ov23_0224A184(void)
{
    FieldCommunicationManager *v0 = FieldCommMan_Get();

    ov23_0224C198();
    CommPlayerMan_Restart();
    ov23_02249C24(ov23_0224A024, 0);
}

static void ov23_0224A1A0(void)
{
    FieldCommunicationManager *v0 = FieldCommMan_Get();

    if (v0->timer != 0) {
        v0->timer--;
        return;
    }

    ov23_02242D08();

    sub_020367D0();
    Heap_Destroy(33);

    v0->unk_41 = 0;

    FieldCommMan_Delete();
}
