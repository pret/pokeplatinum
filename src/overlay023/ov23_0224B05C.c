#include "overlay023/ov23_0224B05C.h"

#include <nitro.h>
#include <string.h>

#include "consts/game_records.h"

#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0202855C_decl.h"
#include "struct_decls/struct_02029894_decl.h"
#include "struct_decls/struct_020298B0_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_defs/struct_02013A04_t.h"
#include "struct_defs/struct_02049FA8.h"
#include "struct_defs/struct_02081CF4.h"

#include "field/field_system.h"
#include "overlay005/ov5_021E15F4.h"
#include "overlay005/ov5_021F55CC.h"
#include "overlay005/ov5_021F5894.h"
#include "overlay005/struct_ov5_021E1890_decl.h"
#include "overlay023/ov23_022416A8.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_0224340C.h"
#include "overlay023/ov23_02248F1C.h"
#include "overlay023/ov23_022499E4.h"
#include "overlay023/ov23_0224A1D0.h"
#include "overlay023/ov23_0224DC40.h"
#include "overlay023/ov23_0224F294.h"
#include "overlay023/ov23_02253598.h"
#include "overlay023/ov23_02253D40.h"
#include "overlay023/struct_ov23_0224271C.h"
#include "overlay061/struct_ov61_0222C884.h"

#include "comm_player_manager.h"
#include "communication_information.h"
#include "communication_system.h"
#include "core_sys.h"
#include "field_map_change.h"
#include "field_system.h"
#include "game_records.h"
#include "heap.h"
#include "journal.h"
#include "map_object_move.h"
#include "message.h"
#include "player_avatar.h"
#include "savedata.h"
#include "strbuf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "trainer_info.h"
#include "unk_02001AF4.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02013A04.h"
#include "unk_02018340.h"
#include "unk_0202854C.h"
#include "unk_02030EE0.h"
#include "unk_02033200.h"
#include "unk_020366A0.h"
#include "unk_020508D4.h"
#include "unk_02054D00.h"
#include "unk_020573FC.h"
#include "unk_0205F180.h"
#include "unk_020655F4.h"
#include "unk_0206A8DC.h"
#include "vars_flags.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02[148];
} UnkStruct_ov23_0224B144;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04;
} UnkStruct_ov23_0224B098;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
} UnkStruct_ov23_0224B844;

typedef struct {
    FieldSystem *fieldSystem;
    SysTask *unk_04;
    UnkStruct_ov23_0224B144 unk_08[17];
    UnkStruct_ov23_0224B144 *unk_A00;
    u32 unk_A04[17][32];
    UnkStruct_ov23_0224B098 unk_1284[8];
    UnkStruct_ov23_0224B098 unk_12AC[8];
    u8 unk_12D4;
    u8 unk_12D5[17];
    u16 unk_12E6[17];
    u16 unk_1308[17];
    u8 unk_132A[17];
    u8 unk_133B[8];
    u8 unk_1343[8];
    u8 unk_134B[8];
    u8 unk_1353[8];
    u8 unk_135B[8];
    u8 unk_1363[8];
    u8 unk_136B[8];
    u8 unk_1373[8];
    u8 unk_137B[32];
    u16 unk_139C[8];
    u16 unk_13AC[8];
    u16 unk_13BC[8];
    u16 unk_13CC;
    u16 unk_13CE;
    u8 unk_13D0;
    u8 unk_13D1;
    u8 unk_13D2;
    u8 unk_13D3;
    u8 unk_13D4;
    u8 unk_13D5;
    u8 unk_13D6;
} UnkStruct_ov23_022577AC;

typedef struct {
    FieldSystem *fieldSystem;
    UIControlData *unk_04;
    SysTask *unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    int unk_24;
    u8 unk_28;
    u8 unk_29;
    u8 unk_2A;
    u8 unk_2B;
    u8 unk_2C;
    u8 unk_2D;
    u8 unk_2E;
} UnkStruct_ov23_0224BA48;

typedef struct {
    FieldSystem *fieldSystem;
    SysTask *unk_04;
    UIControlData *unk_08;
    int unk_0C;
    u8 unk_10;
    u8 unk_11;
    u8 unk_12;
} UnkStruct_ov23_0224CB1C;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
} UnkStruct_ov23_0224B6AC;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
} UnkStruct_ov23_0224B730;

typedef struct {
    u8 unk_00;
    u8 unk_01;
} UnkStruct_ov23_0224CF18;

typedef struct {
    int unk_00;
    u8 unk_04;
    u8 unk_05;
} UnkStruct_ov23_0224D54C;

static void ov23_0224B39C(UnkStruct_02029894 *param0, u32 *param1);
static void ov23_0224C448(void);
static void ov23_0224C6E8(void);
static void ov23_0224C588(int param0, int param1, int param2, int param3);
static void ov23_0224CAF0(FieldSystem *fieldSystem, int param1, int param2, int param3, int param4, BOOL param5);
static void ov23_0224BC5C(FieldSystem *fieldSystem, int param1, int param2, int param3, int param4, int param5);
static void ov23_0224C090(FieldSystem *fieldSystem, int param1, int param2, int param3, int param4, int param5);
static BOOL ov23_0224B79C(int param0, int param1);
static void ov23_0224B844(int param0, int param1, BOOL param2);
static void ov23_0224D238(void);
static void ov23_0224C6AC(int param0);
static void ov23_0224C5B4(SysTask *param0, void *param1);
static void ov23_0224DC08(void);
static void ov23_0224DC24(void);

static UnkStruct_ov23_022577AC *Unk_ov23_022577AC = NULL;

static const UnkStruct_ov61_0222C884 Unk_ov23_02256864 = {
    0x3,
    0x19,
    0xD,
    0x6,
    0x4,
    0xD,
    0x21F
};

static const UnkStruct_ov61_0222C884 Unk_ov23_0225686C = {
    0x3,
    0x10,
    0xD,
    0xF,
    0x4,
    0xD,
    0x1F9
};

static u8 Unk_ov23_0225760C[] = {
    0x1,
    0x2,
    0x3,
    0x4,
    0x5,
    0x6,
    0x7,
    0x8,
    0x1,
    0x2,
    0x3,
    0x4,
    0x5,
    0x6,
    0x7,
    0x8,
    0x0
};

static u8 Unk_ov23_02257620[] = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x1,
    0x0
};

static int ov23_0224B05C(int param0, int param1)
{
    int v0;
    int v1 = param0 / 32;
    int v2 = param1 / 32;

    for (v0 = 0; v0 < 17; v0++) {
        if ((v1 == Unk_ov23_0225760C[v0]) && (v2 == Unk_ov23_02257620[v0])) {
            return v0;
        }
    }

    return 16;
}

static BOOL ov23_0224B098(int param0, int param1)
{
    const UnkStruct_ov23_0224B098 v0 = { 15, 24, 0 };
    const int v1 = 32;
    int v2;
    int v3;

    for (v3 = 0; v3 < (7 + 1); v3++) {
        if ((param0 == (v0.unk_00 + v3 * v1 + v1)) && (param1 == v0.unk_02)) {
            return 1;
        }
    }

    return 0;
}

static void ov23_0224B0DC(int param0, UnkStruct_ov23_0224B098 *param1)
{
    const UnkStruct_ov23_0224B098 v0 = { 15, 24, 0 };
    const int v1 = 32;
    int v2;

    if (sub_02033DFC()) {
        param1->unk_00 = v0.unk_00;
        param1->unk_02 = v0.unk_02;
        return;
    }

    v2 = param0;

    if (param0 == 16) {
        v2 = 0;
    }

    param1->unk_00 = v0.unk_00 + v2 * v1 + v1;
    param1->unk_02 = v0.unk_02;
}

static void ov23_0224B128(int param0, UnkStruct_ov23_0224B098 *param1)
{
    int v0 = param0;

    if (CommSys_IsAlone()) {
        v0 = 16;
    }

    ov23_0224B0DC(v0, param1);
}

void ov23_0224B144(void *param0, FieldSystem *fieldSystem)
{
    int v0;
    UnkStruct_ov23_0224B144 *v1;
    UnkStruct_02029894 *v2;

    if (Unk_ov23_022577AC) {
        return;
    }

    GF_ASSERT(148 == sub_02028554());

    Unk_ov23_022577AC = (UnkStruct_ov23_022577AC *)param0;
    MI_CpuFill8(param0, 0, sizeof(UnkStruct_ov23_022577AC));
    Unk_ov23_022577AC->fieldSystem = fieldSystem;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        Unk_ov23_022577AC->unk_1284[v0].unk_00 = 0xfff;
        Unk_ov23_022577AC->unk_1284[v0].unk_02 = 0xfff;
        Unk_ov23_022577AC->unk_12AC[v0].unk_00 = 0xfff;
        Unk_ov23_022577AC->unk_12AC[v0].unk_02 = 0xfff;

        Unk_ov23_022577AC->unk_135B[v0] = 0xff;
        Unk_ov23_022577AC->unk_1363[v0] = 0xff;
        Unk_ov23_022577AC->unk_1353[v0] = 0xff;

        Unk_ov23_022577AC->unk_136B[v0] = 0xff;
        Unk_ov23_022577AC->unk_133B[v0] = 0xff;
        Unk_ov23_022577AC->unk_1343[v0] = 0xff;
        Unk_ov23_022577AC->unk_134B[v0] = 0xff;

        Unk_ov23_022577AC->unk_139C[v0] = 72;
        Unk_ov23_022577AC->unk_13AC[v0] = 437;
        Unk_ov23_022577AC->unk_13BC[v0] = 1;
    }

    for (v0 = 0; v0 < 17; v0++) {
        v1 = &Unk_ov23_022577AC->unk_08[v0];
        v2 = (UnkStruct_02029894 *)Unk_ov23_022577AC->unk_08[v0].unk_02;

        sub_020292C0(v2);

        Unk_ov23_022577AC->unk_12D5[v0] = 0xff;
        Unk_ov23_022577AC->unk_132A[v0] = -1;
    }

    MI_CpuFill8(Unk_ov23_022577AC->unk_A04, 0xff, 17 * 32 * (32 / 8));
    ov23_0224B2C8(fieldSystem);

    Unk_ov23_022577AC->unk_13CC = 72;
    Unk_ov23_022577AC->unk_13CE = 437;
    Unk_ov23_022577AC->unk_13D0 = 1;
    Unk_ov23_022577AC->unk_04 = SysTask_Start(ov23_0224C5B4, NULL, 100);
}

void ov23_0224B2C8(FieldSystem *fieldSystem)
{
    UnkStruct_02029894 *v0;
    SecretBaseRecord *v1;

    v0 = sub_02029894(FieldSystem_SaveData(fieldSystem));
    v1 = sub_020298AC(v0);

    sub_020294D4(v1, GameRecords_GetTrainerScore(SaveData_GetGameRecordsPtr(fieldSystem->saveData)));

    MI_CpuCopy8(v0, Unk_ov23_022577AC->unk_08[16].unk_02, 148);
    ov23_0224B39C(v0, Unk_ov23_022577AC->unk_A04[16]);

    MI_CpuCopy8(v0, Unk_ov23_022577AC->unk_08[0].unk_02, 148);
    ov23_0224B39C(v0, Unk_ov23_022577AC->unk_A04[0]);
}

static void ov23_0224B33C(int param0, int param1, const u8 *param2, u32 *param3)
{
    int v0, v1;

    for (v1 = 0; v1 < 3; v1++) {
        if ((param1 + v1) < 32) {
            for (v0 = 0; v0 < 3; v0++) {
                if (param2[v1 * 3 + v0]) {
                    if ((param0 + v0) < 32) {
                        param3[v1 + param1] &= ~(0x1 << (param0 + v0));
                    }
                }
            }
        }
    }
}

static void ov23_0224B39C(UnkStruct_02029894 *param0, u32 *param1)
{
    int v0, v1, v2;
    const u8 *v3;
    u8 v4[] = { 1, 1, 0, 0, 0, 0, 0, 0, 0 };
    u8 v5[] = { 1, 1, 0, 1, 1, 0, 0, 0, 0 };

    MI_CpuFill8(param1, 0xff, 32 * (32 / 8));

    for (v0 = 0; v0 < (15 + 16 + 1); v0++) {
        int v6 = sub_020293B0(param0, v0);

        if (v6 == 0) {
            continue;
        }

        v1 = sub_020293FC(param0, v0);
        v2 = sub_0202942C(param0, v0);

        if (v0 == 0) {
            v3 = v4;
        } else if (v0 < (15 + 1)) {
            v3 = sub_0205741C(v6);
        } else {
            v3 = v5;
        }

        ov23_0224B33C(v1, v2, v3, param1);
    }
}

void ov23_0224B430(void)
{
    ov23_0224C6E8();

    if (Unk_ov23_022577AC->unk_04) {
        SysTask_Done(Unk_ov23_022577AC->unk_04);
        Unk_ov23_022577AC->unk_04 = NULL;
    }

    Unk_ov23_022577AC->unk_13D4 = 1;
}

void ov23_0224B460(void)
{
    int v0;

    Unk_ov23_022577AC->unk_13D4 = 0;

    if (Unk_ov23_022577AC->unk_13D6 == 0) {
        for (v0 = 0; v0 < (7 + 1); v0++) {
            ov23_0224C6AC(v0);
        }

        for (v0 = 0; v0 < (7 + 1); v0++) {
            UnkStruct_ov23_0224B098 *v1 = &Unk_ov23_022577AC->unk_1284[v0];

            if ((0xfff != v1->unk_00) && (0xfff != v1->unk_02)) {
                ov23_0224C588(v1->unk_00, v1->unk_02, v1->unk_04, v0);
            }
        }
    }

    if (Unk_ov23_022577AC->unk_04 == NULL) {
        Unk_ov23_022577AC->unk_04 = SysTask_Start(ov23_0224C5B4, NULL, 100);
    }
}

void ov23_0224B4E4(void)
{
    if (Unk_ov23_022577AC->unk_04) {
        SysTask_Done(Unk_ov23_022577AC->unk_04);
        Unk_ov23_022577AC->unk_04 = NULL;
    }

    ov23_0224C6E8();

    if (Unk_ov23_022577AC) {
        Heap_FreeToHeap(Unk_ov23_022577AC);
    }

    Unk_ov23_022577AC = NULL;
}

void ov23_0224B518(void)
{
    int v0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        UnkStruct_02029894 *v1 = (UnkStruct_02029894 *)Unk_ov23_022577AC->unk_08[v0].unk_02;

        sub_02029300(v1);

        Unk_ov23_022577AC->unk_1284[v0].unk_00 = 0xfff;
        Unk_ov23_022577AC->unk_1284[v0].unk_02 = 0xfff;
        Unk_ov23_022577AC->unk_12AC[v0].unk_00 = 0xfff;
        Unk_ov23_022577AC->unk_12AC[v0].unk_02 = 0xfff;
    }

    MI_CpuFill8(Unk_ov23_022577AC->unk_A04, 0xff, 17 * 32 * (32 / 8));
    ov23_0224B2C8(Unk_ov23_022577AC->fieldSystem);
}

void ov23_0224B598(void)
{
    int v0;
    UnkStruct_ov23_0224B144 *v1;
    UnkStruct_02029894 *v2;

    for (v0 = 0; v0 < 17; v0++) {
        v1 = &Unk_ov23_022577AC->unk_08[v0];
        v2 = (UnkStruct_02029894 *)Unk_ov23_022577AC->unk_08[v0].unk_02;
        sub_020292C0(v2);
    }

    ov23_0224B2C8(Unk_ov23_022577AC->fieldSystem);
}

int ov23_0224B5C4(void)
{
    return sizeof(UnkStruct_ov23_022577AC);
}

void ov23_0224B5CC(int param0)
{
    if (Unk_ov23_022577AC) {
        Unk_ov23_022577AC->unk_1353[param0] = 0xff;
        Unk_ov23_022577AC->unk_135B[param0] = 0xff;
        Unk_ov23_022577AC->unk_1363[param0] = 0xff;
        Unk_ov23_022577AC->unk_12AC[param0].unk_00 = 0xfff;
        Unk_ov23_022577AC->unk_12AC[param0].unk_02 = 0xfff;
    }
}

void ov23_0224B61C(int param0)
{
    if (Unk_ov23_022577AC) {
        ov23_0224C6AC(param0);
        Unk_ov23_022577AC->unk_1284[param0].unk_00 = 0xfff;
        Unk_ov23_022577AC->unk_1284[param0].unk_02 = 0xfff;
    }
}

static void ov23_0224B654(int param0)
{
    sub_02059514();
}

static int ov23_0224B65C(int param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        UnkStruct_ov23_0224B144 *v1 = &Unk_ov23_022577AC->unk_08[v0];
        UnkStruct_02029894 *v2 = (UnkStruct_02029894 *)Unk_ov23_022577AC->unk_08[v0].unk_02;

        if (!sub_0202988C(v2)) {
            continue;
        }

        if (!CommPlayer_IsActive(v0)) {
            continue;
        }

        if ((param0 == sub_02029874(v2)) && (param1 == sub_0202987C(v2))) {
            return v0;
        }
    }

    return 0xff;
}

void ov23_0224B6AC(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov23_0224B6AC *v0 = param2;

    if (v0->unk_04 != CommSys_CurNetId()) {
        return;
    }

    if (Unk_ov23_022577AC->unk_13D4) {
        return;
    }

    if (v0->unk_07) {
        ov23_0224C090(Unk_ov23_022577AC->fieldSystem, v0->unk_00, v0->unk_02, 0, v0->unk_04, v0->unk_05);
    } else {
        ov23_0224BC5C(Unk_ov23_022577AC->fieldSystem, v0->unk_00, v0->unk_02, v0->unk_06, v0->unk_04, v0->unk_05);
    }
}

void ov23_0224B700(int param0, int param1, void *param2, void *param3)
{
    u8 *v0 = param2;

    if (CommSys_CurNetId() == v0[0]) {
        sub_020594FC();

        ov23_02253F40(ov23_0224219C(), 88, 1, ov23_0224B654);
        ov23_0224DC24();
    }
}

int ov23_0224B72C(void)
{
    return sizeof(UnkStruct_ov23_0224B6AC);
}

void ov23_0224B730(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov23_0224B730 *v0 = param2;
    u8 v1 = param0;

    if (CommSys_CurNetId() != 0) {
        GF_ASSERT(0);
        return;
    }

    if (v0->unk_01) {
        if (v0->unk_02) {
            if (!ov23_0224B79C(v0->unk_00, param0)) {
                Unk_ov23_022577AC->unk_135B[param0] = 0xff;
                sub_02035B48(61, &v1);
            }
        } else {
            ov23_0224B844(v0->unk_00, param0, 0);
        }
    } else {
        Unk_ov23_022577AC->unk_135B[param0] = 0xff;
    }
}

int ov23_0224B798(void)
{
    return sizeof(UnkStruct_ov23_0224B730);
}

static BOOL ov23_0224B79C(int param0, int param1)
{
    UnkStruct_ov23_0224B098 v0;
    int v1;
    UnkStruct_ov23_0224B144 *v2 = &Unk_ov23_022577AC->unk_08[param0];
    UnkStruct_02029894 *v3 = (UnkStruct_02029894 *)v2->unk_02;

    if (!sub_0202988C(v3)) {
        return 0;
    }

    if (sub_02036254(54)) {
        return 0;
    }

    for (v1 = 0; v1 < (7 + 1); v1++) {
        if (CommSys_IsPlayerConnected(v1)) {
            if (Unk_ov23_022577AC->unk_1363[v1] == param0) {
                return 0;
            }
        }
    }

    ov23_0224B128(param0, &v0);
    v2->unk_01 = param1;
    ov23_0224C23C(param0);

    Unk_ov23_022577AC->unk_135B[param1] = param0;
    Unk_ov23_022577AC->unk_1363[param1] = param0;

    ov23_0224ADB0(param1, v0.unk_00, v0.unk_02, 0);

    return 1;
}

static void ov23_0224B844(int param0, int param1, BOOL param2)
{
    UnkStruct_ov23_0224B844 v0;
    UnkStruct_ov23_0224B098 v1;
    int v2, v3, v4;
    UnkStruct_ov23_0224B144 *v5 = &Unk_ov23_022577AC->unk_08[param0];
    UnkStruct_02029894 *v6 = (UnkStruct_02029894 *)v5->unk_02;

    ov23_0224B0DC(param0, &v1);
    Unk_ov23_022577AC->unk_135B[param1] = param0;

    if (CommSys_IsAlone()) {
        v2 = Unk_ov23_022577AC->unk_13CC;
        v3 = Unk_ov23_022577AC->unk_13CE;
        v4 = Unk_ov23_022577AC->unk_13D0;
    } else {
        v2 = Unk_ov23_022577AC->unk_139C[param1];
        v3 = Unk_ov23_022577AC->unk_13AC[param1];
        v4 = Unk_ov23_022577AC->unk_13BC[param1];
    }

    ov23_0224ADB0(param1, v2, v3, v4);

    v2 += MapObject_GetDxFromDir(v4);
    v3 += MapObject_GetDyFromDir(v4);

    v0.unk_00 = v2;
    v0.unk_02 = v3;
    v0.unk_04 = param1;
    v0.unk_05 = v4;
    v0.unk_06 = param2;

    sub_02035B48(57, &v0);
    sub_02059058(param1, 0);
}

BOOL ov23_0224B8E0(int param0, int param1, int param2)
{
    int v0;
    UnkStruct_ov23_0224B844 v1;
    UnkStruct_ov23_0224B098 v2;
    UnkStruct_ov23_0224B6AC v3;
    int v4, v5;

    if (!Unk_ov23_022577AC) {
        return 0;
    }

    if ((param0 != 0) && !CommSys_IsPlayerConnected(param0)) {
        return 0;
    }

    if (ov23_0224ACC0(param0)) {
        return 0;
    }

    if (Unk_ov23_022577AC->unk_135B[param0] != 0xff) {
        return 1;
    }

    v0 = ov23_0224B65C(param1, param2);

    if (v0 != 0xff) {
        Unk_ov23_022577AC->unk_135B[param0] = v0;

        v3.unk_07 = 1;
        v3.unk_00 = param1;
        v3.unk_02 = param2;
        v3.unk_06 = 0;
        v3.unk_04 = param0;
        v3.unk_05 = v0;

        sub_02035B48(58, &v3);
        sub_02059058(param0, 0);

        return 1;
    }

    for (v0 = 0; v0 <= (7 + 1); v0++) {
        UnkStruct_ov23_0224B144 *v6 = &Unk_ov23_022577AC->unk_08[v0];
        UnkStruct_02029894 *v7 = (UnkStruct_02029894 *)Unk_ov23_022577AC->unk_08[v0].unk_02;

        if (!sub_0202988C(v7)) {
            continue;
        }

        ov23_0224B0DC(v0, &v2);

        if ((param1 == v2.unk_00) && (param2 == v2.unk_02)) {
            Unk_ov23_022577AC->unk_135B[param0] = v0;

            v3.unk_07 = 0;
            v3.unk_00 = param1;
            v3.unk_02 = param2;
            v3.unk_06 = 0;
            v3.unk_04 = param0;
            v3.unk_05 = v0;

            sub_02035B48(58, &v3);
            sub_02059058(param0, 0);

            return 1;
        }
    }

    if (ov23_0224B098(param1, param2)) {
        v1.unk_00 = Unk_ov23_022577AC->unk_139C[param0];
        v1.unk_02 = Unk_ov23_022577AC->unk_13AC[param0];
        v1.unk_04 = param0;
        v1.unk_05 = Unk_ov23_022577AC->unk_13BC[param0];
        v1.unk_06 = 0;

        Unk_ov23_022577AC->unk_135B[param0] = 0;

        ov23_0224ADB0(param0, v1.unk_00, v1.unk_02, v1.unk_05);
        sub_02035B48(57, &v1);
        return 1;
    }

    return 0;
}

static void ov23_0224BA48(SysTask *param0, void *param1)
{
    UnkStruct_ov23_0224BA48 *v0 = param1;

    if (v0->unk_04) {
        sub_02002154(v0->unk_04, 4);
    }

    SysTask_Done(param0);
    Heap_FreeToHeap(v0);

    ov23_02243204();
}

static void ov23_0224BA6C(SysTask *param0, void *param1)
{
    UnkStruct_ov23_0224BA48 *v0 = param1;
    UnkStruct_ov23_0224B730 v1;

    if (v0->unk_04) {
        sub_02002154(v0->unk_04, 4);
    }

    v1.unk_01 = 0;
    v1.unk_00 = v0->unk_2C;
    v1.unk_02 = 0;

    CommSys_SendDataFixedSize(59, &v1);
    SysTask_Done(param0);
    Heap_FreeToHeap(v0);

    ov23_02243204();
    ov23_0224DC24();
}

static void ov23_0224BAAC(SysTask *param0, void *param1)
{
    UnkStruct_ov23_0224BA48 *v0 = param1;
    FieldSystem *fieldSystem = v0->fieldSystem;
    Location v2;
    int v3 = 0, v4 = 0, v5, v6, v7 = 0;
    UnkStruct_ov23_0224B730 v8;

    switch (v0->unk_0C) {
    case 0:
        if (sub_02033DFC()) {
            v5 = 47;
            v0->unk_0C = 3;
        } else {
            v5 = 50;
            v0->unk_0C = 1;
        }

        ov23_02253F40(ov23_0224219C(), v5, 0, NULL);
        break;
    case 1:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            v0->unk_04 = sub_02002100(fieldSystem->unk_08, &Unk_ov23_02256864, 1024 - (18 + 12) - 9, 11, 4);
            v0->unk_0C = 2;
        }
        break;
    case 2:
        v6 = sub_02002114(v0->unk_04, 4);

        if (v6 == 0) {
            v0->unk_04 = NULL;
            v0->unk_0C = 7;
        } else if (v6 != 0xffffffff) {
            v0->unk_04 = NULL;
            v7 = 1;
        }
        break;
    case 3:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            v0->unk_04 = sub_02002100(fieldSystem->unk_08, &Unk_ov23_02256864, 1024 - (18 + 12) - 9, 11, 4);
            v0->unk_0C = 4;
        }
        break;
    case 4:
        v6 = sub_02002114(v0->unk_04, 4);

        if (v6 == 0) {
            v0->unk_04 = NULL;
            ov23_02253F40(ov23_0224219C(), 48, 0, NULL);
            v0->unk_0C = 5;
        } else if (v6 != 0xffffffff) {
            v0->unk_04 = NULL;
            v7 = 1;
        }
        break;
    case 5:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            v0->unk_04 = sub_02002100(fieldSystem->unk_08, &Unk_ov23_02256864, 1024 - (18 + 12) - 9, 11, 4);
            v0->unk_0C = 6;
        }
        break;
    case 6:
        v6 = sub_02002114(v0->unk_04, 4);

        if (v6 == 0) {
            v0->unk_04 = NULL;
            v0->unk_0C = 7;
        } else if (v6 != 0xffffffff) {
            v0->unk_04 = NULL;
            v7 = 1;
        }
        break;
    case 7:
        ov23_02254044(ov23_0224219C());

        v8.unk_01 = 1;
        v8.unk_00 = v0->unk_2C;
        v8.unk_02 = 0;

        CommSys_SendDataFixedSize(59, &v8);
        ov23_0224BA48(param0, v0);
        return;
    }

    if (!sub_02033DFC()) {
        if ((v0->unk_2C < (7 + 1)) && !CommSys_IsPlayerConnected(v0->unk_2C) && (CommSys_CurNetId() != 0)) {
            v7 = 1;
        }
    }

    if (v7) {
        ov23_02254044(ov23_0224219C());
        ov23_0224BA6C(param0, v0);

        sub_02059514();
    }
}

static void ov23_0224BC5C(FieldSystem *fieldSystem, int param1, int param2, int param3, int param4, int param5)
{
    UnkStruct_ov23_0224BA48 *v0 = NULL;

    ov23_0224DC08();
    v0 = Heap_AllocFromHeapAtEnd(4, sizeof(UnkStruct_ov23_0224BA48));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov23_0224BA48));

    v0->unk_18 = -1;
    v0->unk_1C = param1;
    v0->unk_20 = param2;
    v0->unk_2B = param4;
    v0->unk_2C = param5;
    v0->unk_14 = 2;
    v0->unk_24 = param3;
    v0->fieldSystem = fieldSystem;
    v0->unk_08 = SysTask_Start(ov23_0224BAAC, v0, 100);

    ov23_022431EC(v0, v0->unk_08, ov23_0224BA6C);
    sub_020594FC();
}

static UnkStruct_ov23_0224BA48 *ov23_0224BCC4(FieldSystem *fieldSystem, int param1, int param2, int param3, int param4, int param5)
{
    UnkStruct_ov23_0224BA48 *v0 = NULL;

    if (fieldSystem->unk_10 == NULL) {
        v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_ov23_0224BA48));
        MI_CpuClear8(v0, sizeof(UnkStruct_ov23_0224BA48));

        v0->unk_18 = -1;
        v0->unk_1C = param1;
        v0->unk_20 = param2;
        v0->unk_2B = param4;
        v0->unk_2C = param5;

        GF_ASSERT(fieldSystem->location->mapId == 2);

        v0->unk_14 = 2;
        v0->unk_24 = param3;
    }

    return v0;
}

static int ov23_0224BD1C(int param0, BOOL param1)
{
    int v0, v1 = 0, v2, v3, v4;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (!CommSys_IsPlayerConnected(v0)) {
            continue;
        }

        if (param1) {
            v3 = CommPlayer_GetXServer(v0);
            v4 = CommPlayer_GetZServer(v0);
        } else {
            v3 = CommPlayer_XPos(v0);
            v4 = CommPlayer_ZPos(v0);
        }

        if ((v3 == 0xffff) && (v4 == 0xffff)) {
            (void)0;
        } else if (ov23_02242E58(v3, v4)) {
            v2 = ov23_0224B05C(v3, v4);

            if (v2 == param0) {
                v1++;
            }
        }
    }

    return v1;
}

static UIControlData *ov23_0224BD90(BGL *param0, const UnkStruct_ov61_0222C884 *param1, u16 param2, u8 param3, u32 param4)
{
    UnkStruct_02081CF4 v0;
    MessageLoader *v1 = ov23_02253E3C(ov23_0224219C());
    ResourceMetadata *v2;

    v2 = sub_02013A04(2, param4);

    sub_02013A4C(v2, v1, 38, 0);
    sub_02013A4C(v2, v1, 39, 1);

    v0.unk_00 = v2;
    v0.unk_04 = sub_0201A778(param4, 1);
    v0.unk_08 = 0;
    v0.unk_09 = 1;
    v0.unk_0A = 2;
    v0.unk_0B_0 = 0;
    v0.unk_0B_4 = 0;
    v0.unk_0B_0 = 0;

    sub_0201A8D4(param0, v0.unk_04, param1);
    Window_Show(v0.unk_04, 1, param2, param3);

    return sub_02001B7C(&v0, 8, 0, 0, param4, PAD_BUTTON_B);
}

static void ov23_0224BE28(SysTask *param0, void *param1)
{
    UnkStruct_ov23_0224BA48 *v0 = param1;
    FieldSystem *fieldSystem = v0->fieldSystem;
    Location v2;
    int v3 = 0, v4 = 0, v5, v6, v7 = 0;
    UnkStruct_ov23_0224B730 v8;

    switch (v0->unk_0C) {
    case 0:
        if (v0->unk_2C != v0->unk_2B) {
            v5 = 45;
            v0->unk_0C = 1;
        } else {
            v5 = 41;
            v0->unk_0C = 4;
        }

        ov23_02253F40(ov23_0224219C(), v5, 0, NULL);
        break;
    case 1:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            v0->unk_04 = sub_02002100(fieldSystem->unk_08, &Unk_ov23_02256864, 1024 - (18 + 12) - 9, 11, 4);
            v0->unk_0C = 2;
        }
        break;
    case 2:
        v6 = sub_02002114(v0->unk_04, 4);

        if (v6 == 0) {
            v0->unk_04 = NULL;
            v0->unk_0C = 3;
        } else if (v6 != 0xffffffff) {
            v0->unk_04 = NULL;
            v7 = 1;
        }
        break;
    case 3:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            v0->unk_0C = 10;
        }
        break;
    case 4:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            v0->unk_04 = sub_02002100(fieldSystem->unk_08, &Unk_ov23_02256864, 1024 - (18 + 12) - 9, 11, 4);
            v0->unk_0C = 5;
        }
        break;
    case 5:
        v6 = sub_02002114(v0->unk_04, 4);

        if (v6 == 0) {
            v0->unk_04 = NULL;

            if (ov23_0224AEA4(v0->unk_2C) || (ov23_0224BD1C(v0->unk_2C, 0) > 0)) {
                ov23_02253F40(ov23_0224219C(), 44, 0, NULL);
                v0->unk_0C = 3;
            } else {
                ov23_02253F40(ov23_0224219C(), 37, 0, NULL);
                v0->unk_0C = 6;
            }
        } else if (v6 != 0xffffffff) {
            v0->unk_04 = NULL;
            v7 = 1;
        }
        break;
    case 6:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            v0->unk_04 = ov23_0224BD90(fieldSystem->unk_08, &Unk_ov23_0225686C, 1024 - (18 + 12) - 9, 11, 4);
            v0->unk_0C = 7;
        }
        break;
    case 7:
        v6 = sub_02002114(v0->unk_04, 4);

        if (v6 == 0) {
            v0->unk_04 = NULL;
            v0->unk_0C = 3;
        } else if (v6 == 1) {
            v0->unk_04 = NULL;
            v0->unk_0C = 8;
        } else if (v6 != 0xffffffff) {
            v0->unk_04 = NULL;
            v7 = 1;
        }
        break;
    case 8:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            ov23_02254044(ov23_0224219C());
            ov23_02249A74();
            v0->unk_0C = 9;
        }
        break;
    case 9:
        if (sub_02033DFC() && (CommSys_CurNetId() == 0)) {
            u8 v9 = 1;

            CommSys_SendDataFixedSize(86, &v9);
            ov23_0224BA48(param0, v0);

            return;
        }
        break;
    case 10:
        ov23_02254044(ov23_0224219C());

        v8.unk_01 = 1;
        v8.unk_00 = v0->unk_2C;
        v8.unk_02 = 1;

        CommSys_SendDataFixedSize(59, &v8);
        ov23_0224BA48(param0, v0);

        Unk_ov23_022577AC->unk_12D4 = 1;
        return;
    }

    if ((v0->unk_2C != 16) && !CommPlayer_IsActive(v0->unk_2C)) {
        if ((8 != v0->unk_0C) && (9 != v0->unk_0C)) {
            v7 = 1;
        }
    }

    if (v7) {
        ov23_02254044(ov23_0224219C());
        ov23_0224BA6C(param0, v0);

        sub_02059514();
    }
}

static void ov23_0224C090(FieldSystem *fieldSystem, int param1, int param2, int param3, int param4, int param5)
{
    UnkStruct_ov23_0224BA48 *v0 = NULL;

    v0 = Heap_AllocFromHeapAtEnd(4, sizeof(UnkStruct_ov23_0224BA48));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov23_0224BA48));

    v0->unk_18 = -1;
    v0->unk_1C = param1;
    v0->unk_20 = param2;
    v0->unk_2B = param4;
    v0->unk_2C = param5;
    v0->unk_14 = 2;
    v0->unk_24 = param3;
    v0->fieldSystem = fieldSystem;
    v0->unk_29 = 0;

    ov23_0224DC08();
    v0->unk_08 = SysTask_Start(ov23_0224BE28, v0, 100);
    ov23_022431EC(v0, v0->unk_08, ov23_0224BA6C);

    sub_020594FC();
}

int ov23_0224C100(void)
{
    return sizeof(UnkStruct_ov23_0224B844);
}

void ov23_0224C104(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov23_0224B844 *v0 = param2;

    Unk_ov23_022577AC->unk_1353[v0->unk_04] = 0xff;

    if (CommSys_CurNetId() == v0->unk_04) {
        ov23_022535EC();
        ov23_0224F24C();
        ov23_0224321C();
        ov23_02244858(CommSys_CurNetId(), 0);

        Link_Message(43);
        Unk_ov23_022577AC->unk_13D6 = 0;
        sub_02059638(1);

        ov23_0224CAF0(Unk_ov23_022577AC->fieldSystem, v0->unk_00, v0->unk_02, v0->unk_05, v0->unk_04, v0->unk_06);
        Unk_ov23_022577AC->unk_A00 = NULL;
    } else {
        ov23_02248B98(v0->unk_04);
        ov23_0224ADE8(v0->unk_04, v0->unk_00, v0->unk_02, v0->unk_05);
    }
}

void ov23_0224C198(void)
{
    Link_Message(56);
}

void ov23_0224C1A4(int param0, int param1, void *param2, void *param3)
{
    Unk_ov23_022577AC->unk_135B[param0] = 0xff;
    Unk_ov23_022577AC->unk_1363[param0] = 0xff;
}

BOOL ov23_0224C1C8(int param0)
{
    if (Unk_ov23_022577AC) {
        if (Unk_ov23_022577AC->unk_135B[param0] != 0xff) {
            return 1;
        }
    }

    return 0;
}

static void ov23_0224C1EC(int param0, int param1, int param2, int param3)
{
    UnkStruct_ov23_0224B144 *v0 = &Unk_ov23_022577AC->unk_08[param3];

    if (v0) {
        UnkStruct_02029894 *v1 = (UnkStruct_02029894 *)v0->unk_02;

        sub_02029854(v1, param0, param1, CommPlayer_GetOppositeDir(param2));
        v0->unk_00 = param3;
    }
}

void ov23_0224C21C(void)
{
    UnkStruct_02029894 *v0 = (UnkStruct_02029894 *)Unk_ov23_022577AC->unk_08[16].unk_02;
    int v1;
    u8 v2 = 0;
    int v3 = CommSys_CurNetId();

    CommSys_WriteToQueue(53, &Unk_ov23_022577AC->unk_08[16], sizeof(UnkStruct_ov23_0224B144));
}

void ov23_0224C23C(int param0)
{
    CommSys_WriteToQueueServer(54, &Unk_ov23_022577AC->unk_08[param0], sizeof(UnkStruct_ov23_0224B144));
}

void ov23_0224C25C(int param0, int param1, void *param2, void *param3)
{
    u8 *v0 = param2;
    UnkStruct_ov23_0224B144 *v1 = param2;
    UnkStruct_02029894 *v2;
    UnkStruct_ov23_0224B098 v3;
    int v4, v5;

    if (!Unk_ov23_022577AC) {
        return;
    }

    if (CommSys_CurNetId() == v1->unk_01) {
        if (Unk_ov23_022577AC->unk_12D4 == 2) {
            Unk_ov23_022577AC->unk_12D4 = 0;

            sub_02059514();
            Link_Message(56);
            CommPlayer_SendPos(0);

            ov23_0224DC24();
            return;
        }
    }

    Unk_ov23_022577AC->unk_12D4 = 5;

    v4 = v1->unk_00;
    GF_ASSERT(v4 < 17);

    v1 = &Unk_ov23_022577AC->unk_08[v4];
    MI_CpuCopy8(param2, v1, sizeof(UnkStruct_ov23_0224B144));

    Unk_ov23_022577AC->unk_1353[v1->unk_01] = v1->unk_00;

    if (v1->unk_00 != 16) {
        Unk_ov23_022577AC->unk_136B[v1->unk_01] = v1->unk_00;
    }

    ov23_0224B128(v1->unk_00, &v3);

    if (CommSys_CurNetId() == v1->unk_01) {
        Unk_ov23_022577AC->unk_13D6 = 1;
        ov23_0224CAF0(Unk_ov23_022577AC->fieldSystem, v3.unk_00, v3.unk_02 - 1, 0, v1->unk_01, 0);
        Unk_ov23_022577AC->unk_A00 = v1;

        v2 = (UnkStruct_02029894 *)v1->unk_02;

        Unk_ov23_022577AC->unk_13CC = sub_02029874(v2);
        Unk_ov23_022577AC->unk_13CE = sub_0202987C(v2);
        Unk_ov23_022577AC->unk_13D0 = sub_02029884(v2);

        ov23_02243360();
    } else {
        ov23_0224ADE8(v1->unk_01, v3.unk_00, v3.unk_02, 0);
    }
}

void ov23_0224C384(int param0, int param1, void *param2, void *param3)
{
    u8 *v0 = param2;
    UnkStruct_ov23_0224B144 *v1;
    UnkStruct_02029894 *v2;

    if (!Unk_ov23_022577AC) {
        return;
    }

    v1 = &Unk_ov23_022577AC->unk_08[param0];
    MI_CpuCopy8(param2, v1, sizeof(UnkStruct_ov23_0224B144));
    v1->unk_00 = param0;

    Unk_ov23_022577AC->unk_13D2 = 1;

    v2 = (UnkStruct_02029894 *)v1->unk_02;

    Unk_ov23_022577AC->unk_12AC[param0].unk_00 = sub_02029874(v2);
    Unk_ov23_022577AC->unk_12AC[param0].unk_02 = sub_0202987C(v2);
    Unk_ov23_022577AC->unk_12AC[param0].unk_04 = sub_02029884(v2);

    ov23_0224C448();
    ov23_0224B39C(v2, Unk_ov23_022577AC->unk_A04[param0]);
    ov23_0224DAD0(param0);
}

int ov23_0224C41C(void)
{
    return sizeof(UnkStruct_ov23_0224B144);
}

BOOL ov23_0224C420(void)
{
    return Unk_ov23_022577AC->unk_13D3;
}

void ov23_0224C434(void)
{
    Unk_ov23_022577AC->unk_13D3 = 0;
}

static void ov23_0224C448(void)
{
    int v0, v1;

    v1 = 0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        UnkStruct_ov23_0224B098 *v2 = &Unk_ov23_022577AC->unk_12AC[v0];

        Unk_ov23_022577AC->unk_137B[v1] = v2->unk_00 & 0xff;
        v1++;
        Unk_ov23_022577AC->unk_137B[v1] = ((v2->unk_00 >> 8) & 0xf) + ((v2->unk_02 >> 4) & 0xf0);
        v1++;
        Unk_ov23_022577AC->unk_137B[v1] = v2->unk_02 & 0xff;
        v1++;
        Unk_ov23_022577AC->unk_137B[v1] = v2->unk_04;
        v1++;
    }

    CommSys_WriteToQueueServer(55, &Unk_ov23_022577AC->unk_137B, sizeof(Unk_ov23_022577AC->unk_137B));
}

void ov23_0224C4CC(int param0, int param1, void *param2, void *param3)
{
    u8 *v0 = (u8 *)param2;
    UnkStruct_ov23_0224B098 v1;
    UnkStruct_ov23_0224B098 *v2;
    UnkStruct_ov23_0224B098 *v3;
    int v4, v5;

    if (!Unk_ov23_022577AC) {
        return;
    }

    for (v4 = 0; v4 < (7 + 1); v4++) {
        ov23_0224C6AC(v4);
    }

    v5 = 0;

    for (v4 = 0; v4 < (7 + 1); v4++) {
        v3 = &Unk_ov23_022577AC->unk_1284[v4];
        v2 = &v1;
        v2->unk_00 = v0[v5];
        v5++;
        v2->unk_00 += ((int)v0[v5] << 8 & 0xf00);
        v2->unk_02 = ((int)v0[v5] << 4 & 0xf00);
        v5++;
        v2->unk_02 += v0[v5];
        v5++;
        v2->unk_04 = v0[v5];
        v5++;

        if ((0xfff != v2->unk_00) && (0xfff != v2->unk_02)) {
            MI_CpuCopy8(v2, v3, sizeof(UnkStruct_ov23_0224B098));
            ov23_0224C588(v2->unk_00, v2->unk_02, v2->unk_04, v4);
        }
    }

    Unk_ov23_022577AC->unk_13D3 = 1;
}

int ov23_0224C584(void)
{
    return sizeof(Unk_ov23_022577AC->unk_137B);
}

static void ov23_0224C588(int param0, int param1, int param2, int param3)
{
    VecFx32 v0;
    int v1, v2;

    Unk_ov23_022577AC->unk_132A[param3] = param2;
    Unk_ov23_022577AC->unk_12E6[param3] = param0;
    Unk_ov23_022577AC->unk_1308[param3] = param1;
}

static void ov23_0224C5B4(SysTask *param0, void *param1)
{
    int v0, v1, v2, v3, v4, v5;

    if (Unk_ov23_022577AC->unk_13D4) {
        return;
    }

    if (!Unk_ov23_022577AC->unk_13D5) {
        return;
    }

    if (Unk_ov23_022577AC->fieldSystem->playerAvatar == NULL) {
        return;
    }

    v4 = Player_GetXPos(Unk_ov23_022577AC->fieldSystem->playerAvatar);
    v5 = Player_GetZPos(Unk_ov23_022577AC->fieldSystem->playerAvatar);

    if (ov23_02242E58(v4, v5)) {
        return;
    }

    for (v0 = 0; v0 < 17; v0++) {
        if (v0 < (7 + 1)) {
            if (NULL == CommInfo_TrainerInfo(v0)) {
                ov23_0224B61C(v0);
                ov23_0224D87C(v0);
            }
        }

        if (Unk_ov23_022577AC->unk_132A[v0] != (u8)-1) {
            v3 = Unk_ov23_022577AC->unk_132A[v0];
            v1 = Unk_ov23_022577AC->unk_12E6[v0];
            v2 = Unk_ov23_022577AC->unk_1308[v0];

            if (Unk_ov23_022577AC->unk_12D5[v0] != 0xff) {
                ov5_021E1674(Unk_ov23_022577AC->unk_12D5[v0], Unk_ov23_022577AC->fieldSystem->unk_A4);
            }

            {
                VecFx32 v6;

                v6.x = (v1) * (FX32_ONE * 16) + (FX32_ONE * 8);
                v6.y = 0;
                v6.z = (v2) * (FX32_ONE * 16) + (FX32_ONE * 8);

                Unk_ov23_022577AC->unk_12D5[v0] = ov5_021E19CC(Unk_ov23_022577AC->fieldSystem->unk_A4, Unk_ov23_022577AC->fieldSystem->unk_30, 429 + v3, &v6, NULL, Unk_ov23_022577AC->fieldSystem->unk_50);
            }
        }
    }
}

static void ov23_0224C6AC(int param0)
{
    if (Unk_ov23_022577AC->unk_12D5[param0] != 0xff) {
        ov5_021E1674(Unk_ov23_022577AC->unk_12D5[param0], Unk_ov23_022577AC->fieldSystem->unk_A4);

        Unk_ov23_022577AC->unk_12D5[param0] = 0xff;
        Unk_ov23_022577AC->unk_132A[param0] = -1;
    }
}

static void ov23_0224C6E8(void)
{
    int v0;

    if (Unk_ov23_022577AC == NULL) {
        return;
    }

    for (v0 = 0; v0 < 17; v0++) {
        ov23_0224C6AC(v0);
    }
}

static BOOL ov23_0224C708(TaskManager *param0)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    UnkStruct_ov23_0224BA48 *v1 = TaskManager_Environment(param0);

    switch (v1->unk_10) {
    case 0:
        sub_0203CD44(fieldSystem);
        (v1->unk_10)++;
        break;
    case 1:
        if (!sub_0203CD4C(fieldSystem)) {
            v1->unk_10 = 0;
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov23_0224C74C(TaskManager *param0)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    UnkStruct_ov23_0224BA48 *v1 = TaskManager_Environment(param0);

    switch (v1->unk_10) {
    case 0:
        sub_0203CD00(fieldSystem);
        (v1->unk_10)++;
        break;
    case 1:
        if (sub_020509DC(fieldSystem)) {
            v1->unk_10 = 0;
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov23_0224C790(TaskManager *param0)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    UnkStruct_ov23_0224BA48 *v1 = TaskManager_Environment(param0);
    Location v2;
    int v3 = 0, v4 = 0;

    switch (v1->unk_0C) {
    case 0:
        ov23_0224DBF4(0);
        ov23_0224DC08();

        v1->unk_28 = CommSys_ConnectedCount();

        CommSys_DisableSendMovementData();
        ov23_022417CC();

        if (ov23_02249AB8()) {
            v1->unk_0C = 1;
        }
        break;
    case 1:
        sub_0200F2C0();
        sub_0200F174(2, 16, 18, 0x0, 6, 1, 4);
        ov23_0224942C(fieldSystem->unk_6C);
        Sound_PlayEffect(1539);
        v1->unk_0C++;
        break;
    case 2:
        if (ScreenWipe_Done()) {
            if (fieldSystem->unk_6C == NULL) {
                (v1->unk_0C)++;
            }
        }
        break;
    case 3:
        if (ov23_0224C708(param0)) {
            (v1->unk_0C)++;
        }
        break;
    case 4:
        v2.mapId = v1->unk_14;
        v2.unk_04 = v1->unk_18;
        v2.x = v1->unk_1C;
        v2.z = v1->unk_20;
        v2.unk_10 = v1->unk_24;
        sub_020544F0(param0, &v2);
        (v1->unk_0C)++;
        break;
    case 5:
        if (ov23_0224C74C(param0)) {
            (v1->unk_0C)++;
        }
        break;
    case 6:
        fieldSystem->unk_6C = ov23_02249404(fieldSystem);
        sub_0200F2C0();
        sub_0200F174(1, 17, 19, 0x0, 6, 1, 4);
        (v1->unk_0C)++;
        break;
    case 7:
        if (!ScreenWipe_Done()) {
            break;
        }

        if (sub_02033DFC() && !ov23_02242E58(v1->unk_1C, v1->unk_20)) {
            v1->unk_2E = 0;
        } else {
            v1->unk_2E = 1;
        }

        CommSys_EnableSendMovementData();
        sub_020594FC();

        sub_02006E84(50, 52, 0, 10 * 0x20, 4 * 0x20, 4);
        sub_0200DAA4(fieldSystem->unk_08, 3, 1024 - (18 + 12) - 9, 11, 2, 4);

        if (v1->unk_2D) {
            sub_020594EC();
            ov23_02253F40(ov23_0224219C(), 51, 0, NULL);
            v1->unk_0C = 8;
        } else if (!Unk_ov23_022577AC->unk_13D6) {
            v1->unk_0C = 13;
        } else {
            v1->unk_29 = 0;
            v1->unk_0C = 9;
        }
        break;
    case 9:
        v1->unk_29++;
        v1->unk_29 = 0;
        v1->unk_0C = 10;
        break;
    case 10:
        v1->unk_29++;

        if (v1->unk_29 > 10) {
            if (!sub_02033DFC() || !v1->unk_2E) {
                v1->unk_0C = 13;
            } else {
                v1->unk_0C = 11;
            }
        }
        break;
    case 11:
        CommPlayerMan_ForceDir();
        PlayerAvatar_SetAnimationCode(fieldSystem->playerAvatar, sub_02065838(1, 0x24), 1);
        CommPlayer_SetDir(1);
        ov23_02253F40(ov23_0224219C(), 68, 0, NULL);
        Sound_PlayEffect(1540);
        v1->unk_0C = 12;
        break;
    case 12:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                v1->unk_0C = 13;
                ov23_02254044(ov23_0224219C());
                CommPlayer_SetDir(0);
            }
        }
        break;
    case 13:
        if (sub_02033DFC() && !ov23_02242E58(v1->unk_1C, v1->unk_20)) {
            ov23_02249AA4();
        } else {
            ov23_02249B60();
        }

        sub_02059638(0);
        sub_02059514();
        Heap_FreeToHeap(v1);

        if (sub_02033DFC() && ov23_02242E58(v1->unk_1C, v1->unk_20)) {
            ov23_02242FA8();
        } else {
            ov23_02242FBC();
        }

        if ((Unk_ov23_022577AC->unk_12D4 == 4) && (Unk_ov23_022577AC->unk_13D6)) {
            Unk_ov23_022577AC->unk_12D4 = 6;
        } else {
            Unk_ov23_022577AC->unk_12D4 = 0;
        }

        ov23_0224DC24();
        ov23_0224DBF4(1);
        return 1;
    case 8:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                v1->unk_0C = 13;
                ov23_02254044(ov23_0224219C());
                return 0;
            }
        }

        if ((CommSys_ConnectedCount() > 1) && (v1->unk_28 == 0)) {
            v1->unk_0C = 13;
            ov23_02254044(ov23_0224219C());
        }
        break;
    }

    return 0;
}

static void ov23_0224CAF0(FieldSystem *fieldSystem, int param1, int param2, int param3, int param4, BOOL param5)
{
    UnkStruct_ov23_0224BA48 *v0 = ov23_0224BCC4(fieldSystem, param1, param2, param3, param4, param4);

    if (v0) {
        v0->unk_2D = param5;
        FieldTask_Set(fieldSystem, ov23_0224C790, v0);
    }
}

static void ov23_0224CB1C(SysTask *param0, void *param1)
{
    UnkStruct_ov23_0224CB1C *v0 = param1;
    FieldSystem *fieldSystem = v0->fieldSystem;
    Location v2;
    u32 v3;
    BOOL v4 = 0;
    int v5;
    int v6, v7, v8;

    switch (v0->unk_0C) {
    case 0: {
        UnkStruct_02029894 *v9 = sub_02029894(fieldSystem->saveData);

        v0->unk_12 = sub_0202988C(v9);
    }
        sub_020594FC();
        ov23_02254098(ov23_0224219C(), 33);
        Sound_PlayEffect(1566);

        ov5_021F58FC(Player_MapObject(fieldSystem->playerAvatar), 0, 0, 0);
        ov23_02253F40(ov23_0224219C(), 33, 0, NULL);

        v0->unk_0C = 1;
        v0->unk_11 = 0;
        break;
    case 1:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            v0->unk_11++;

            if (v0->unk_11 > 30) {
                v0->unk_0C = 2;
            }
        }
        break;
    case 2: {
        v6 = sub_02058D88(CommSys_CurNetId());
        v7 = sub_02058DC0(CommSys_CurNetId());
        v8 = CommPlayer_GetOppositeDir(PlayerAvatar_GetDir(fieldSystem->playerAvatar));

        ov23_02253F40(ov23_0224219C(), 34, 0, NULL);
        ov23_0224C588(v6, v7, v8, 16);
        ov5_021F5634(fieldSystem, v6, 0, v7);

        v0->unk_0C = 3;
    } break;
    case 3:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            if (ov23_0224BD1C(CommSys_CurNetId(), 0)) {
                v5 = 57;
                v0->unk_0C = 4;
            } else if (v0->unk_12) {
                v5 = 36;
                v0->unk_0C = 5;
            } else {
                v5 = 35;
                v0->unk_0C = 5;
            }

            ov23_02253F40(ov23_0224219C(), v5, 0, NULL);
        }
        break;
    case 4:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
                v4 = 1;
            }
        }
        break;
    case 5:
        if (ov23_02254238(ov23_0224219C()) == 0) {
            v0->unk_08 = sub_02002100(fieldSystem->unk_08, &Unk_ov23_02256864, 1024 - (18 + 12) - 9, 11, 4);
            v0->unk_0C = 6;
        }
        break;
    case 6:
        v3 = sub_02002114(v0->unk_08, 4);

        if (v3 == 0) {
            v0->unk_0C = 9;
            v0->unk_08 = NULL;
        } else if (v3 != 0xffffffff) {
            v4 = 1;
            v0->unk_08 = NULL;
        }
        break;
    case 9:
        ov23_0224FD68(33);
        ov23_02254044(ov23_0224219C());
        ov23_02249A74();
        v0->unk_0C = 10;
        break;
    case 10:
        if (sub_02033DFC() && (CommSys_CurNetId() == 0)) {
            u8 v10 = 2;

            if (v0->unk_12) {
                v10 = 3;
            }

            ov23_0224D238();

            CommSys_SendDataFixedSize(86, &v10);
            SysTask_Done(param0);
            Heap_FreeToHeap(v0);

            ov23_02243204();
            return;
        }
        break;
    }

    if (v4) {
        ov23_02253F40(ov23_0224219C(), 56, 1, ov23_0224B654);
        ov23_0224C6AC(16);

        {
            v6 = sub_02058D88(CommSys_CurNetId());
            v7 = sub_02058DC0(CommSys_CurNetId());

            ov5_021F5634(fieldSystem, v6, 0, v7);
        }

        SysTask_Done(param0);
        Heap_FreeToHeap(v0);

        ov23_02243204();
        ov23_0224DC24();
    }
}

void ov23_0224CD68(void)
{
    u8 v0 = 0;
    CommSys_SendDataFixedSize(86, &v0);
}

int ov23_0224CD7C(void)
{
    return sizeof(UnkStruct_ov23_0224CF18);
}

void ov23_0224CD80(int param0, int param1, void *param2, void *param3)
{
    u8 *v0 = param2;
    int v1 = CommPlayer_AddXServer(param0);
    int v2 = CommPlayer_AddZServer(param0);
    int v3, v4, v5, v6;
    int v7 = CommPlayer_DirServer(param0);
    UnkStruct_ov23_0224CF18 v8;
    int v9;

    v5 = v1 - CommPlayer_GetXServer(param0);
    v6 = v2 - CommPlayer_GetZServer(param0);

    if (v6 != 0) {
        v3 = v1 + 1;
        v5 = v1 - 1;
        v6 = v4 = v2;
    } else {
        v4 = v2 + 1;
        v6 = v2 - 1;
        v5 = v3 = v1;
    }

    v8.unk_00 = param0;

    if (v0[0] == 0) {
        v8.unk_01 = 0;
    } else {
        v8.unk_01 = 5;
    }

    v9 = ov23_0224B65C(v1, v2);

    if ((v0[0] == 0) && (v9 != 0xff)) {
        (void)0;
    } else if (ov23_02242E58(v1, v2)) {
        v8.unk_01 = 6;
    } else if (FieldSystem_CheckCollision(Unk_ov23_022577AC->fieldSystem, v1, v2) && FieldSystem_CheckCollision(Unk_ov23_022577AC->fieldSystem, v3, v4) && FieldSystem_CheckCollision(Unk_ov23_022577AC->fieldSystem, v5, v6)) {
        if (v0[0] == 0) {
            v8.unk_01 = 1;
        } else {
            ov23_0224C1EC(v1, v2, v7, 16);

            if (ov23_0224B79C(16, param0)) {
                switch (v0[0]) {
                case 1:
                    v8.unk_01 = 2;
                    break;
                case 3:
                    v8.unk_01 = 3;
                    break;
                case 2:
                    v8.unk_01 = 4;
                    break;
                }
            }
        }
    }

    sub_02035B48(87, &v8);
}

static void ov23_0224CE94(SysTask *param0, void *param1)
{
    UnkStruct_ov23_0224CB1C *v0 = param1;

    ov23_0224C6AC(16);

    if (v0->unk_08) {
        sub_02002154(v0->unk_08, 4);
    }

    SysTask_Done(param0);
    Heap_FreeToHeap(v0);

    ov23_02243204();
    sub_02059514();
    ov23_0224DC24();
}

static void ov23_0224CEC8(void)
{
    UnkStruct_ov23_0224CB1C *v0;

    ov23_0224DC08();

    v0 = Heap_AllocFromHeapAtEnd(4, sizeof(UnkStruct_ov23_0224CB1C));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov23_0224CB1C));

    v0->unk_0C = 0;
    v0->unk_10 = CommSys_CurNetId();
    v0->fieldSystem = Unk_ov23_022577AC->fieldSystem;
    v0->unk_04 = SysTask_Start(ov23_0224CB1C, v0, 100);

    ov23_022431EC(v0, v0->unk_04, ov23_0224CE94);
}

void ov23_0224CF18(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov23_0224CF18 *v0 = param2;
    SecretBaseRecord *v1 = SaveData_SecretBaseRecord(FieldSystem_SaveData(Unk_ov23_022577AC->fieldSystem));

    if (v0->unk_00 != CommSys_CurNetId()) {
        return;
    }

    if (v0->unk_01 == 0) {
        sub_020594FC();
        ov23_02253F40(ov23_0224219C(), 54, 1, ov23_0224B654);
        ov23_0224DC24();
    } else if (v0->unk_01 == 1) {
        ov23_0224CEC8();
    } else if (v0->unk_01 == 6) {
        sub_020594FC();
        ov23_02253F40(ov23_0224219C(), 74, 1, ov23_0224B654);
        ov23_0224DC24();
    } else if (v0->unk_01 == 5) {
        sub_020594FC();
        ov23_02253F40(ov23_0224219C(), 88, 1, ov23_0224B654);
        ov23_02249AA4();
        ov23_0224DC24();
    } else if ((v0->unk_01 == 2) || (v0->unk_01 == 3) || (v0->unk_01 == 4)) {
        UnkStruct_ov23_0224B098 v2;
        int v3 = sub_02058D88(v0->unk_00);
        int v4 = sub_02058DC0(v0->unk_00);
        int v5 = CommPlayer_Dir(v0->unk_00);

        ov23_0224C1EC(v3, v4, v5, v0->unk_00);
        ov23_0224C1EC(v3, v4, v5, 16);

        if (v0->unk_01 == 3) {
            sub_02029824(v1);
        }

        if ((v0->unk_01 == 3) || (v0->unk_01 == 4)) {
            void *v6 = sub_0202BE20(11);

            Journal_SaveData(Unk_ov23_022577AC->fieldSystem->journal, v6, 1);
            GameRecords_IncrementTrainerScore(SaveData_GetGameRecordsPtr(Unk_ov23_022577AC->fieldSystem->saveData), TRAINER_SCORE_EVENT_UNK_35);
        }
    }
}

BOOL ov23_0224D020(Strbuf *param0)
{
    int v0, v1;
    TrainerInfo *v2;
    TrainerInfo *v3;

    if (!Unk_ov23_022577AC) {
        return 0;
    }

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (Unk_ov23_022577AC->unk_136B[v0] != 0xff) {
            v1 = Unk_ov23_022577AC->unk_136B[v0];
            Unk_ov23_022577AC->unk_136B[v0] = 0xff;

            if (v0 != v1) {
                v2 = CommInfo_TrainerInfo(v0);
                v3 = CommInfo_TrainerInfo(v1);

                if (ov23_0224223C(v2, v3, 104, param0)) {
                    return 1;
                }
            }
        }

        if (Unk_ov23_022577AC->unk_133B[v0] != 0xff) {
            v2 = CommInfo_TrainerInfo(v0);
            v3 = CommInfo_TrainerInfo(Unk_ov23_022577AC->unk_133B[v0]);

            Unk_ov23_022577AC->unk_133B[v0] = 0xff;

            if (ov23_0224223C(v2, v3, 108, param0)) {
                return 1;
            }
        }

        if (Unk_ov23_022577AC->unk_134B[v0] != 0xff) {
            v2 = CommInfo_TrainerInfo(v0);
            Unk_ov23_022577AC->unk_134B[v0] = 0xff;

            if (ov23_022422A8(v2, 0, 109, param0)) {
                return 1;
            }
            break;
        }

        if (Unk_ov23_022577AC->unk_1343[v0] != 0xff) {
            v2 = CommInfo_TrainerInfo(v0);
            v3 = CommInfo_TrainerInfo(Unk_ov23_022577AC->unk_1343[v0]);

            Unk_ov23_022577AC->unk_1343[v0] = 0xff;

            if (ov23_0224223C(v2, v3, 110, param0)) {
                return 1;
            }
        }
    }

    return 0;
}

UnkStruct_02029894 *ov23_0224D130(SaveData *param0)
{
    if (Unk_ov23_022577AC) {
        if (Unk_ov23_022577AC->unk_A00) {
            return (UnkStruct_02029894 *)Unk_ov23_022577AC->unk_A00->unk_02;
        }
    }

    return NULL;
}

int ov23_0224D150(void)
{
    if (Unk_ov23_022577AC) {
        if (Unk_ov23_022577AC->unk_A00) {
            return Unk_ov23_0225760C[Unk_ov23_022577AC->unk_A00->unk_00];
        }
    }

    return 0;
}

int ov23_0224D178(void)
{
    if (Unk_ov23_022577AC) {
        if (Unk_ov23_022577AC->unk_A00) {
            return Unk_ov23_02257620[Unk_ov23_022577AC->unk_A00->unk_00];
        }
    }

    return 0;
}

BOOL ov23_0224D1A0(int param0, int param1)
{
    int v0, v1, v2;

    if (!Unk_ov23_022577AC) {
        return 1;
    }

    if (param1 >= (32 * 2)) {
        return 1;
    }

    v0 = param0 / 32;
    v1 = param1 / 32;

    for (v2 = 0; v2 < 17; v2++) {
        if ((v0 == Unk_ov23_0225760C[v2]) && (v1 == Unk_ov23_02257620[v2])) {
            v0 = param0 % 32;
            v1 = param1 % 32;

            if (Unk_ov23_022577AC->unk_A04[v2][v1] & (0x1 << v0)) {
                return 1;
            } else {
                return 0;
            }
        }
    }

    return 1;
}

static void ov23_0224D238(void)
{
    UnkStruct_02029894 *v0 = sub_02029894(FieldSystem_SaveData(Unk_ov23_022577AC->fieldSystem));
    UndergroundData *v1 = sub_020298B0(FieldSystem_SaveData(Unk_ov23_022577AC->fieldSystem));
    int v2 = CommPlayer_AddXServer(0);
    int v3 = CommPlayer_AddZServer(0);
    int v4 = CommPlayer_DirServer(0);
    int v5, v6, v7, v8, v9;
    const int v10 = 10, v11 = 18, v12 = 12, v13 = 5, v14 = 6;
    MATHRandContext32 v15;
    int v16[16 + 1][2];

    v16[0][0] = 16;
    v16[0][1] = 12;

    sub_0206AA20(SaveData_GetVarsFlags(Unk_ov23_022577AC->fieldSystem->saveData));
    sub_020292CC(v0);
    sub_02028B34(v1);
    CommSys_Seed(&v15);

    for (v5 = 0; v5 < 16; v5++) {
        v6 = MATH_Rand32(&v15, v13);

        if (v6 < 2) {
            v6 = v6 * 2 + v10;
        } else {
            v6 = (v6 - 3) * 2 + v11;
        }

        v7 = MATH_Rand32(&v15, v14) * 2 + v12;
        v8 = 1;

        for (v9 = 0; v9 <= v5; v9++) {
            if ((v16[v9][0] == v6) && (v16[v9][1] == v7)) {
                v8 = 0;
                break;
            }
        }

        if (!v8) {
            v5--;
            continue;
        }

        sub_02029364(v0, 15 + 1 + v5, v6, v7);

        v16[v5 + 1][0] = v6;
        v16[v5 + 1][1] = v7;
    }

    MI_CpuFill8(Unk_ov23_022577AC->unk_A04, 0xff, 17 * 32 * (32 / 8));
    sub_02029854(v0, v2, v3, CommPlayer_GetOppositeDir(v4));

    MI_CpuCopy8(v0, Unk_ov23_022577AC->unk_08[16].unk_02, 148);
    ov23_0224B39C(v0, Unk_ov23_022577AC->unk_A04[16]);
}

int ov23_0224D39C(int param0)
{
    return ov23_02253F40(ov23_022421CC(), param0, 0, NULL);
}

void ov23_0224D3B0(void)
{
    ov23_02254044(ov23_022421CC());
}

void ov23_0224D3BC(int param0)
{
    ov23_022541C8(ov23_022421CC(), 0, param0);
}

void ov23_0224D3D0(int param0, int param1)
{
    ov23_02254154(ov23_022421CC(), param1, param0);
}

static int ov23_0224D3E4(UnkStruct_02029894 *param0, int param1, int param2)
{
    int v0, v1, v2;
    const u8 *v3;

    for (v0 = 0; v0 < (15 + 16 + 1); v0++) {
        int v4 = sub_020293B0(param0, v0);

        if (v4 == 0) {
            continue;
        }

        if (v0 == 0) {
            continue;
        } else if (v0 < (15 + 1)) {
            v3 = sub_0205741C(v4);
        } else {
            continue;
        }

        v1 = sub_020293FC(param0, v0);
        v2 = sub_0202942C(param0, v0);

        v1 = param1 - v1;
        v2 = param2 - v2;

        if ((v1 < 0) || (v1 > 2)) {
            continue;
        }

        if ((v2 < 0) || (v2 > 2)) {
            continue;
        }

        if (v3[v2 * 3 + v1]) {
            return v4;
        }
    }

    return 0;
}

BOOL ov23_0224D454(int param0, UnkStruct_ov23_0224271C *param1)
{
    int v0 = param1->unk_00;
    int v1 = param1->unk_02;
    int v2, v3, v4;
    UnkStruct_02029894 *v5;

    if (ov23_0224D1A0(v0, v1) == 0) {
        u8 v6[2];

        v6[0] = param0;

        v2 = ov23_0224B05C(v0, v1);
        v5 = (UnkStruct_02029894 *)Unk_ov23_022577AC->unk_08[v2].unk_02;
        v3 = ov23_0224D3E4(v5, v0 % 32, v1 % 32);

        v6[1] = sub_0205746C(v3);

        if (v6[1] != 0) {
            sub_02059058(param0, 0);
            sub_02035B48(60, &v6);

            return 1;
        }
    }

    return 0;
}

void ov23_0224D4CC(int param0, int param1, void *param2, void *param3)
{
    u8 *v0 = param2;
    UnkStruct_02029894 *v1 = (UnkStruct_02029894 *)Unk_ov23_022577AC->unk_A00->unk_02;
    SecretBaseRecord *v2 = sub_020298AC(v1);

    if (v0[0] == CommSys_CurNetId()) {
        ov23_02253A00(v2, v0[1]);
    }
}

int ov23_0224D4FC(void)
{
    return 2;
}

void ov23_0224D500(int param0, int param1)
{
    if (Unk_ov23_022577AC) {
        Unk_ov23_022577AC->unk_133B[param0] = param1;
    }
}

void ov23_0224D518(int param0, int param1)
{
    if (Unk_ov23_022577AC) {
        Unk_ov23_022577AC->unk_1343[param0] = param1;
    }
}

void ov23_0224D530(int param0)
{
    if (Unk_ov23_022577AC) {
        Unk_ov23_022577AC->unk_134B[param0] = 1;
    }
}

static void ov23_0224D54C(UnkStruct_ov23_0224D54C *param0)
{
    VecFx32 v0;
    UnkStruct_ov5_021E1890 *v1 = ov5_021E18C4(Unk_ov23_022577AC->fieldSystem->unk_A4, 0);

    v0 = ov5_021E1894(v1);

    ov5_021E1674(0, Unk_ov23_022577AC->fieldSystem->unk_A4);
    ov5_021E19CC(Unk_ov23_022577AC->fieldSystem->unk_A4, Unk_ov23_022577AC->fieldSystem->unk_30, 317 + param0->unk_05, &v0, NULL, Unk_ov23_022577AC->fieldSystem->unk_50);
}

static void ov23_0224D5A8(SysTask *param0, void *param1)
{
    Heap_FreeToHeap(param1);
    SysTask_Done(param0);
}

static void ov23_0224D5BC(SysTask *param0, void *param1)
{
    UnkStruct_ov23_0224D54C *v0 = param1;

    switch (v0->unk_00) {
    case 0:
        sub_020594FC();
        ov23_02253F40(ov23_022421AC(), 7, 0, NULL);
        Sound_PlayEffect(1507);
        v0->unk_00 = 1;
        break;
    case 1:
        if (ov23_02254238(ov23_022421AC()) == 0) {
            if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                int v1 = v0->unk_05;

                ov23_02253F40(ov23_022421AC(), 14 + v1, 0, NULL);
                v0->unk_00 = 2;
            }
        }
        break;
    case 2:
        if (ov23_02254238(ov23_022421AC()) == 0) {
            if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                ov23_0224D54C(v0);
                v0->unk_00 = 4;
                ov23_02254044(ov23_022421AC());
                sub_02059514();
            }
        }
        break;
    case 3:
        sub_0200F174(2, 0, 0, 0x0, 6, 1, 4);
        break;
    case 4:
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
        ov23_02243204();
        break;
    }
}

void ov23_0224D698(int param0, int param1, void *param2, void *param3)
{
    u8 v0[2];
    u8 *v1 = param2;

    v0[0] = param0;
    v0[1] = v1[0];

    sub_02035B48(97, v0);
}

void ov23_0224D6AC(int param0, int param1, void *param2, void *param3)
{
    int v0;
    u8 *v1 = param2;
    SysTask *v2;

    if (v1[0] == CommSys_CurNetId()) {
        UnkStruct_ov23_0224D54C *v3 = Heap_AllocFromHeap(11, sizeof(UnkStruct_ov23_0224D54C));

        MI_CpuClear8(v3, sizeof(v3));

        v3->unk_00 = 0;
        v3->unk_05 = v1[1];
        v2 = SysTask_Start(ov23_0224D5BC, v3, 100);

        ov23_022431EC(v3, v2, ov23_0224D5A8);
    } else {
        (void)0;
    }
}

int ov23_0224D6F4(void)
{
    return 2;
}

static int ov23_0224D6F8(UnkStruct_02029894 *param0, int param1, int param2)
{
    int v0, v1, v2;
    const u8 *v3;

    for (v0 = 0; v0 < (15 + 16 + 1); v0++) {
        int v4 = sub_020293B0(param0, v0);

        if (v4 == 0) {
            continue;
        }

        if (v0 == 0) {
            continue;
        } else if (v0 < (15 + 1)) {
            v3 = sub_0205741C(v4);
        } else {
            continue;
        }

        v1 = sub_020293FC(param0, v0);
        v2 = sub_0202942C(param0, v0);
        v1 = param1 - v1;
        v2 = param2 - v2;

        if ((v1 == 0) && (v2 == 0)) {
            return v4;
        }
    }

    return 0;
}

static int ov23_0224D750(int param0)
{
    switch (param0) {
    case 56:
        return 11;
    case 57:
        return 12;
    case 58:
        return 18;
    case 59:
        return 19;
    case 60:
        return 20;
    case 61:
        return 21;
    case 62:
        return 22;
    case 63:
        return 23;
    case 64:
        return 24;
    case 65:
        return 25;
    case 66:
        return 26;
    case 67:
        return 27;
    case 68:
        return 28;
    case 69:
        return 29;
    case 70:
        return 30;
    case 71:
        return 31;
    }

    return 0;
}

BOOL ov23_0224D7C8(int param0)
{
    int v0;
    int v1;
    UnkStruct_02029894 *v2;
    int v3 = CommPlayer_GetXServer(param0);
    int v4 = CommPlayer_GetZServer(param0);
    int v5 = CommPlayer_DirServer(param0);

    if (!ov23_02242E58(v3, v4)) {
        return 0;
    }

    if ((ov23_0224D1A0(v3, v4) == 1) && (!Unk_ov23_022577AC->unk_1373[param0])) {
        u8 v6[2];

        v6[0] = param0;

        v1 = ov23_0224B05C(v3, v4);
        v2 = (UnkStruct_02029894 *)Unk_ov23_022577AC->unk_08[v1].unk_02;

        v6[1] = ov23_0224D6F8(v2, v3 % 32, v4 % 32);
        v0 = ov23_0224D750(v6[1]);

        if (0 != v0) {
            Unk_ov23_022577AC->unk_1373[param0] = 1;
            ov23_022443CC(param0, 0xff, v0, v3, v4, v5);

            return 1;
        }
    }

    return 0;
}

BOOL ov23_0224D87C(int param0)
{
    BOOL v0 = 0;

    if (Unk_ov23_022577AC) {
        BOOL v1 = Unk_ov23_022577AC->unk_1373[param0];

        Unk_ov23_022577AC->unk_1373[param0] = 0;
    }

    return v0;
}

void Underground_SecretBaseRemovePlayer(int param0)
{
    int v0, v1 = 0;
    int v2, v3;
    u8 v4[(7 + 1)];

    MI_CpuClear8(v4, (7 + 1));

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (CommSys_IsPlayerConnected(v0)) {
            v2 = CommPlayer_GetXServer(v0);
            v3 = CommPlayer_GetZServer(v0);

            if ((v2 == 0xffff) && (v3 == 0xffff)) {
                continue;
            }

            v1 = ov23_0224B05C(v2, v3);

            if ((v0 == v1) || (v1 == 16)) {
                continue;
            }

            if (CommSys_IsPlayerConnected(v1)) {
                continue;
            }

            if ((Unk_ov23_022577AC->unk_135B[v0] == 0xff) && (Unk_ov23_022577AC->unk_1363[v0] == 0xff)) {
                if (ov23_02242E58(v2, v3)) {
                    if (!v4[v0]) {
                        ov23_0224B844(v1, v0, 1);
                        v4[v0] = 1;
                    }
                }
            }
        }
    }

    v0 = CommSys_CurNetId();

    if (Unk_ov23_022577AC->unk_12D4 == 6) {
        v2 = CommPlayer_GetXServer(v0);
        v3 = CommPlayer_GetZServer(v0);

        if ((v2 == 0xffff) && (v3 == 0xffff)) {
            (void)0;
        } else if (ov23_02242E58(v2, v3)) {
            v1 = ov23_0224B05C(v2, v3);

            if (!v4[v0]) {
                ov23_0224B844(v1, v0, 1);
                v4[v0] = 1;
            }
        }

        if (v4[v0]) {
            Unk_ov23_022577AC->unk_12D4 = 0;
        }
    }
}

BOOL ov23_0224D9AC(int param0, BOOL param1)
{
    UnkStruct_ov23_0224B844 v0;
    UnkStruct_ov23_0224B098 v1;
    int v2, v3, v4, v5;
    UnkStruct_ov23_0224B098 *v6;

    if (Unk_ov23_022577AC->unk_1353[param0] == 0xff) {
        return 0;
    }

    v5 = Unk_ov23_022577AC->unk_1353[param0];
    v2 = CommPlayer_XPos(CommSys_CurNetId());
    v3 = CommPlayer_ZPos(CommSys_CurNetId());

    if (!ov23_02242E58(v2, v3)) {
        Unk_ov23_022577AC->unk_1353[param0] = 0xff;

        return 0;
    }

    ov23_022535EC();
    ov23_0224F24C();
    ov23_0224321C();
    ov23_02244858(CommSys_CurNetId(), 0);

    v2 = Unk_ov23_022577AC->unk_13CC;
    v3 = Unk_ov23_022577AC->unk_13CE;
    v4 = Unk_ov23_022577AC->unk_13D0;

    GF_ASSERT((v2 != 0) && (v3 != 0));

    v2 += MapObject_GetDxFromDir(v4);
    v3 += MapObject_GetDyFromDir(v4);

    Unk_ov23_022577AC->unk_13D6 = 0;

    ov23_0224CAF0(Unk_ov23_022577AC->fieldSystem, v2, v3, v4, param0, param1);
    ov23_02249AB8();

    Unk_ov23_022577AC->unk_A00 = NULL;
    Unk_ov23_022577AC->unk_1353[param0] = 0xff;

    return 1;
}

void ov23_0224DA8C(void)
{
    if (Unk_ov23_022577AC->unk_12D4 == 1) {
        Unk_ov23_022577AC->unk_12D4 = 2;
        CommPlayer_InitPersonal();
        ov23_0224B5CC(0);
    }
}

void ov23_0224DAB4(void)
{
    if (Unk_ov23_022577AC->unk_12D4 == 5) {
        Unk_ov23_022577AC->unk_12D4 = 4;
    }
}

void ov23_0224DAD0(int param0)
{
    int v0, v1, v2, v3 = param0;
    UnkStruct_ov23_0224B730 v4;

    v0 = sub_02058EA0(v3);
    v1 = sub_02058EC0(v3);

    if (!FieldSystem_CheckCollision(Unk_ov23_022577AC->fieldSystem, v0, v1)) {
        if (param0 == 0) {
            return;
        }

        if (sub_02033DFC()) {
            return;
        }
    }

    if ((v0 == 0xffff) && (v1 == 0xffff)) {
        ov23_0224B844(v3, v3, 1);
    } else if (ov23_02242E58(v0, v1) || FieldSystem_CheckCollision(Unk_ov23_022577AC->fieldSystem, v0, v1)) {
        ov23_0224B844(v3, v3, 1);
    }
}

int ov23_0224DB48(void)
{
    if (Unk_ov23_022577AC) {
        return Unk_ov23_022577AC->unk_13CC;
    }

    return 72;
}

int ov23_0224DB64(void)
{
    if (Unk_ov23_022577AC) {
        return Unk_ov23_022577AC->unk_13CE;
    }

    return 437;
}

int ov23_0224DB84(void)
{
    if (Unk_ov23_022577AC) {
        return Unk_ov23_022577AC->unk_13D0;
    }

    return 1;
}

void ov23_0224DBA0(int param0, int param1)
{
    if (Unk_ov23_022577AC) {
        Unk_ov23_022577AC->unk_139C[param0] = param1;
    }
}

void ov23_0224DBBC(int param0, int param1)
{
    if (Unk_ov23_022577AC) {
        Unk_ov23_022577AC->unk_13AC[param0] = param1;
    }
}

void ov23_0224DBD8(int param0, int param1)
{
    if (Unk_ov23_022577AC) {
        Unk_ov23_022577AC->unk_13BC[param0] = param1;
    }
}

void ov23_0224DBF4(BOOL param0)
{
    Unk_ov23_022577AC->unk_13D5 = param0;
}

static void ov23_0224DC08(void)
{
    sub_02032174(1);
    sub_02032138(1);
    sub_02036814(1);
    sub_020340FC();
}

static void ov23_0224DC24(void)
{
    sub_02032174(0);
    sub_02032138(0);
    sub_02036814(0);
    sub_020340FC();
}
