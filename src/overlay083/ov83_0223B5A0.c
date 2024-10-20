#include "overlay083/ov83_0223B5A0.h"

#include <nitro.h>
#include <string.h>

#include "consts/game_records.h"

#include "struct_decls/struct_0202440C_decl.h"
#include "struct_decls/struct_0202B370_decl.h"
#include "struct_defs/struct_0202A93C.h"

#include "overlay004/ov4_021D0D80.h"
#include "overlay083/ov83_0223C958.h"
#include "overlay083/ov83_0223D150.h"
#include "overlay083/ov83_0223D4CC.h"
#include "overlay083/ov83_0223D6A8.h"
#include "overlay083/ov83_0223F7F4.h"
#include "overlay083/struct_ov83_0223B784.h"
#include "overlay083/struct_ov83_0223C344.h"
#include "overlay083/struct_ov83_0223FCE8.h"
#include "savedata/save_table.h"

#include "bag.h"
#include "cell_actor.h"
#include "communication_information.h"
#include "communication_system.h"
#include "core_sys.h"
#include "game_options.h"
#include "game_records.h"
#include "gx_layers.h"
#include "heap.h"
#include "journal.h"
#include "overlay_manager.h"
#include "poffin.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_0201DBEC.h"
#include "unk_0202ACE0.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_0203909C.h"
#include "unk_020393C8.h"
#include "unk_0206CCB0.h"

typedef int (*UnkFuncPtr_ov83_0224024C)(UnkStruct_ov83_0223C344 *, UnkStruct_ov83_0223B784 *, int *);

typedef struct {
    UnkFuncPtr_ov83_0224024C unk_00;
    int unk_04;
} UnkStruct_ov83_0224024C;

int ov83_0223B5B0(OverlayManager *param0, int *param1);
int ov83_0223B65C(OverlayManager *param0, int *param1);
int ov83_0223B710(OverlayManager *param0, int *param1);
static int ov83_0223C344(UnkStruct_ov83_0223C344 *param0, UnkStruct_ov83_0223B784 *param1, int *param2);
static int ov83_0223B78C(UnkStruct_ov83_0223C344 *param0, UnkStruct_ov83_0223B784 *param1, int *param2);
static int ov83_0223B920(UnkStruct_ov83_0223C344 *param0, UnkStruct_ov83_0223B784 *param1, int *param2);
static int ov83_0223B950(UnkStruct_ov83_0223C344 *param0, UnkStruct_ov83_0223B784 *param1, int *param2);
static int ov83_0223B964(UnkStruct_ov83_0223C344 *param0, UnkStruct_ov83_0223B784 *param1, int *param2);
static int ov83_0223B9EC(UnkStruct_ov83_0223C344 *param0, UnkStruct_ov83_0223B784 *param1, int *param2);
static int ov83_0223BB40(UnkStruct_ov83_0223C344 *param0, UnkStruct_ov83_0223B784 *param1, int *param2);
static int ov83_0223BCEC(UnkStruct_ov83_0223C344 *param0, UnkStruct_ov83_0223B784 *param1, int *param2);
static int ov83_0223BF74(UnkStruct_ov83_0223C344 *param0, UnkStruct_ov83_0223B784 *param1, int *param2);
static int ov83_0223C24C(UnkStruct_ov83_0223C344 *param0, UnkStruct_ov83_0223B784 *param1, int *param2);
static int ov83_0223C258(UnkStruct_ov83_0223C344 *param0, UnkStruct_ov83_0223B784 *param1, int *param2);
static void ov83_0223C3E8(UnkStruct_ov83_0223B784 *param0);
static void ov83_0223C480(UnkStruct_ov83_0223B784 *param0);
static void ov83_0223C558(UnkStruct_ov83_0223B784 *param0);
static void ov83_0223C600(UnkStruct_ov83_0223B784 *param0);
static void ov83_0223C6D4(UnkStruct_ov83_0223B784 *param0);
static void ov83_0223C758(UnkStruct_ov83_0223B784 *param0);
static void ov83_0223C7FC(UnkStruct_ov83_0223B784 *param0);
static void ov83_0223C90C(UnkStruct_ov83_0223B784 *param0);
static void ov83_0223C82C(UnkStruct_ov83_0223C344 *param0, UnkStruct_ov83_0223B784 *param1);
static void ov83_0223C87C(UnkStruct_ov83_0223C344 *param0, UnkStruct_ov83_0223B784 *param1);
static BOOL ov83_0223C8B0(UnkStruct_ov83_0223C344 *param0, Poffin *param1, int param2);

static const UnkStruct_ov83_0224024C Unk_ov83_0224024C[] = {
    { ov83_0223B78C, 0x1 },
    { ov83_0223B920, 0x0 },
    { ov83_0223B950, 0x0 },
    { ov83_0223B964, 0x0 },
    { ov83_0223B950, 0x0 },
    { ov83_0223C24C, 0x2 },
    { ov83_0223B9EC, 0x0 },
    { ov83_0223BB40, 0x0 },
    { ov83_0223BCEC, 0x0 },
    { ov83_0223B950, 0x0 },
    { ov83_0223BF74, 0x0 },
    { ov83_0223B950, 0x0 },
    { ov83_0223C258, 0x3 },
    { ov83_0223C344, 0x0 }
};

static void ov83_0223B5A0(void *param0)
{
    UnkStruct_ov83_0223C344 *v0 = (UnkStruct_ov83_0223C344 *)param0;
    UnkStruct_ov83_0223B784 *v1 = (v0->unk_18);

    ov83_0223CBFC(v1);
    sub_0201DCAC();
}

int ov83_0223B5B0(OverlayManager *param0, int *param1)
{
    UnkStruct_ov83_0223C344 *v0 = OverlayManager_Args(param0);
    UnkStruct_ov83_0223B784 *v1;

    Heap_Create(3, 56, 0x20000);
    v1 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov83_0223B784), 56);
    memset(v1, 0, sizeof(UnkStruct_ov83_0223B784));

    v0->unk_18 = v1;
    v1->unk_00 = 56;

    sub_0201DBEC(16, v1->unk_00);

    if (v0->unk_06_0 == 1) {
        v1->unk_1490 = 1;
    } else {
        v1->unk_1490 = 0;
    }

    ov83_0223D150(v1, v0->unk_10->unk_10);

    if (v0->unk_26) {
        sub_0203632C(1);
    }

    v1->unk_24 = Options_Frame(v0->unk_10->unk_18);
    v1->unk_28 = Options_TextFrameDelay(v0->unk_10->unk_18);
    v1->unk_31C = 1;

    SetMainCallback(ov83_0223B5A0, v0);
    DisableHBlank();
    sub_02004550(12, 1183, 1);

    return 1;
}

int ov83_0223B65C(OverlayManager *param0, int *param1)
{
    int v0, v1;
    UnkStruct_ov83_0223C344 *v2 = OverlayManager_Args(param0);
    UnkStruct_ov83_0223B784 *v3 = (UnkStruct_ov83_0223B784 *)OverlayManager_Data(param0);
    const UnkStruct_ov83_0224024C *v4;

    v0 = v3->unk_0C;
    v4 = &(Unk_ov83_0224024C[v0]);

    switch (*param1) {
    case 0:
        if (v4->unk_00 == NULL) {
            break;
        }

        v1 = v4->unk_04;
        v3->unk_0C = (v4->unk_00)(v2, v3, &v3->unk_10);

        if (v3->unk_19) {
            v3->unk_0C = v3->unk_1A;
            v3->unk_19 = 0;
        }

        if (v0 == v3->unk_0C) {
            break;
        }

        v3->unk_10 = 0;

        if (!v2->unk_06_0) {
            break;
        }

        if (v1 == 0) {
            break;
        }

        v3->unk_08 = v1;
        *param1 = 1;
        break;
    case 1:
        CommTiming_StartSync(v3->unk_08);
        *param1 = 2;
        break;
    case 2:
        if (!CommTiming_IsSyncState(v3->unk_08)) {
            break;
        }

        *param1 = 0;
        v3->unk_08 = 0;
        break;
    }

    ov83_0223CBA4(v3);
    sub_02038A1C(v3->unk_00, v3->unk_20);

    if (v3->unk_04) {
        return 1;
    } else {
        return 0;
    }
}

int ov83_0223B710(OverlayManager *param0, int *param1)
{
    int v0;
    UnkStruct_ov83_0223C344 *v1 = OverlayManager_Args(param0);
    UnkStruct_ov83_0223B784 *v2 = (UnkStruct_ov83_0223B784 *)OverlayManager_Data(param0);

    v0 = v2->unk_00;

    if (v1->unk_26) {
        if (CommSys_CurNetId() == 0) {
            ov4_021D25FC();
        }
    }

    ov83_0223D1EC(v2);

    SetMainCallback(NULL, NULL);
    DisableHBlank();
    sub_0201DC3C();
    MI_CpuClear8(v2, sizeof(UnkStruct_ov83_0223B784));
    OverlayManager_FreeData(param0);

    v1->unk_18 = NULL;

    Heap_Destroy(v0);
    return 1;
}

void ov83_0223B774(UnkStruct_ov83_0223B784 *param0, int param1)
{
    param0->unk_18 = param1;
    param0->unk_14 = 1;
}

void ov83_0223B77C(UnkStruct_ov83_0223B784 *param0, int param1)
{
    param0->unk_1A = param1;
    param0->unk_19 = 1;
}

void ov83_0223B784(UnkStruct_ov83_0223B784 *param0)
{
    param0->unk_04 = 1;
}

static int ov83_0223B78C(UnkStruct_ov83_0223C344 *param0, UnkStruct_ov83_0223B784 *param1, int *param2)
{
    switch (*param2) {
    case 0:

        ov83_0223C82C(param0, param1);

        if (ov83_0223D570(param1->unk_148C) == 0) {
            ov83_0223FDB0(&param1->unk_34C);
        }

        ov83_0223DEA0(&param1->unk_5B0, param1->unk_1488, &param1->unk_15E0, &param1->unk_1494, param1->unk_24, param1->unk_00);
        ov83_0223E340(&param1->unk_608);
        ov83_0223E6D4(&param1->unk_6A0, param1->unk_1488, &param1->unk_15E0, &param1->unk_1494, param1->unk_24, param1->unk_00);
        ov83_0223E244(&param1->unk_5E4);
        ov83_0223E244(&param1->unk_5F0);
        ov83_0223E244(&param1->unk_5FC);
        ov83_0223E5A4(&param1->unk_680, &param1->unk_1494, param1->unk_1488, param1->unk_148C);
        ov83_0223ED3C(&param1->unk_6D8);
        ov83_0223F29C(&param1->unk_AEC);
        ov83_0223F494(&param1->unk_B6C, param1->unk_1488);
        ov83_0223F820(&param1->unk_334);
        ov83_0223C958(param1);

        sub_02039734();
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

        if (param1->unk_1488 > 1) {
            ov83_0223DF84(&param1->unk_5B0);
        }

        ov83_0223E484(&param1->unk_608, 3, 1);
        ov83_0223E484(&param1->unk_608, 4, 1);
        ov83_0223E484(&param1->unk_608, 5, 1);
        ov83_0223E484(&param1->unk_608, 6, 1);
        (*param2)++;
        break;
    case 1:
        sub_0200F174(0, 1, 1, 0xffff, 6, 1, param1->unk_00);
        (*param2)++;
        break;
    case 2:
        if (ScreenWipe_Done()) {
            return param1->unk_0C + 1;
        }
        break;
    }

    return param1->unk_0C;
}

static int ov83_0223B920(UnkStruct_ov83_0223C344 *param0, UnkStruct_ov83_0223B784 *param1, int *param2)
{
    BOOL v0;

    if (ov83_0223D570(param1->unk_148C) == 0) {
        v0 = ov83_0223D508(22, NULL, 0, param1->unk_148C);

        if (v0 == 0) {
            return param1->unk_0C;
        }
    }

    return param1->unk_0C + 1;
}

static int ov83_0223B950(UnkStruct_ov83_0223C344 *param0, UnkStruct_ov83_0223B784 *param1, int *param2)
{
    if (param1->unk_14) {
        param1->unk_0C = param1->unk_18;
        param1->unk_14 = 0;
    }

    return param1->unk_0C;
}

static int ov83_0223B964(UnkStruct_ov83_0223C344 *param0, UnkStruct_ov83_0223B784 *param1, int *param2)
{
    BOOL v0;

    switch (*param2) {
    case 0:
        ov83_0223DB18(&param1->unk_3C0, param1->unk_1488);
        (*param2)++;
        break;
    case 1:
        param1->unk_1494.unk_00.unk_00 = param0->unk_08;
        {
            int v1;

            for (v1 = 0; v1 < 5; v1++) {
                param1->unk_165C[v1] = 2;
            }

            param1->unk_1666 = 2;
        }
        (*param2)++;
        break;

    case 2:
        v0 = ov83_0223D508(25, &param1->unk_1494.unk_00, ov83_0223D4B8(), param1->unk_148C);

        if (v0 == 1) {
            return param1->unk_0C + 1;
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return param1->unk_0C;
}

static int ov83_0223B9EC(UnkStruct_ov83_0223C344 *param0, UnkStruct_ov83_0223B784 *param1, int *param2)
{
    u32 v0;
    int v1;
    BOOL v2;

    switch (*param2) {
    case 0:
        ov83_0223F790(&param1->unk_1480, param1->unk_00, param1->unk_20);
        (*param2)++;
        break;
    case 1:
        ov83_0223DC68(&param1->unk_3C0);
        (*param2)++;
        break;
    case 2:
        v0 = ov83_0223DD30(&param1->unk_3C0);

        if (v0 == 1) {
            (*param2)++;
            ov83_0223DF70(&param1->unk_5B0);
            param1->unk_1C = 24;
        } else if (v0 != 0) {
            v1 = param1->unk_1494.unk_130[v0 - 2];
            ov83_0223DF30(&param1->unk_5B0, param1->unk_1494.unk_6C.unk_00[v1].unk_00);
        }
        break;
    case 3:
        if (param1->unk_1C > 0) {
            param1->unk_1C--;
            break;
        }

        ov83_0223E2FC(&param1->unk_5FC);
        (*param2)++;
        break;
    case 4:
        if (ov83_0223E32C(&param1->unk_5FC) == 0) {
            break;
        }

        ov83_0223DFAC(&param1->unk_5B0);
        ov83_0223E2E4(&param1->unk_5E4);
        (*param2)++;
        break;
    case 5:
        v2 = ov83_0223E32C(&param1->unk_5E4);
        {
            int v3 = CellActor_GetAnimFrame(param1->unk_5E4.unk_08);

            if (param1->unk_3BC != (v3 + 1) / 3) {
                if (v3 < 10) {
                    Sound_PlayEffect(1725);
                } else {
                    Sound_PlayEffect(1726);
                }

                param1->unk_3BC = (v3 + 1) / 3;
            }
        }

        if (v2) {
            ov83_0223E69C(&param1->unk_680, 1);
            ov83_0223E500(&param1->unk_608);

            return param1->unk_0C + 1;
        }
        break;
    }

    return param1->unk_0C;
}

static int ov83_0223BB40(UnkStruct_ov83_0223C344 *param0, UnkStruct_ov83_0223B784 *param1, int *param2)
{
    BOOL v0;

    ov83_0223F83C(&param1->unk_334);
    ov83_0223F88C(&param1->unk_1494.unk_04.unk_00, &param1->unk_334);

    if (ov83_0223D570(param1->unk_148C) == 0) {
        v0 = ov83_0223FDD8(&param1->unk_34C, &param1->unk_1494, param1->unk_1488);

        if (v0 == 1) {
            v0 = ov83_0223D508(23, NULL, 0, param1->unk_148C);
            return param1->unk_0C;
        } else {
            ov83_0223FFA0(&param1->unk_34C);

            if (param1->unk_15DC == 0) {
                ov83_0223FE50(&param1->unk_34C, &param1->unk_1494, param1->unk_1488);
                param1->unk_15DC = 1;
            } else {
                ov83_0223FEC0(&param1->unk_34C, &param1->unk_1494, param1->unk_1488);
            }
        }
    }

    if (param0->unk_26) {
        param1->unk_1658++;

        if ((param1->unk_1658 % 2) == 0) {
            param1->unk_1658 = 0;

            if (ov83_0223D570(param1->unk_148C) == 0) {
                {
                    BOOL v1 = 1;
                    int v2;

                    for (v2 = 1; v2 < (7 + 1); v2++) {
                        if (CommSys_IsPlayerConnected(v2)) {
                            if (param1->unk_165C[v2] == 0) {
                                v1 = 0;
                            }
                        }
                    }

                    if (v1) {
                        v0 = ov83_0223D508(26, &param1->unk_1494.unk_04, ov83_0223D4BC(), param1->unk_148C);
                        param1->unk_15DC = 0;

                        for (v2 = 1; v2 < (7 + 1); v2++) {
                            if (CommSys_IsPlayerConnected(v2)) {
                                param1->unk_165C[v2]--;
                            }
                        }
                    }
                }
            } else {
                if (param1->unk_1666) {
                    v0 = ov83_0223D508(32, &param1->unk_1494.unk_04.unk_00, ov83_0223D4C8(), param1->unk_148C);
                    param1->unk_1666--;
                }
            }
        }
    } else {
        v0 = ov83_0223D508(26, &param1->unk_1494.unk_04, ov83_0223D4BC(), param1->unk_148C);
        param1->unk_15DC = 0;
    }

    if (v0 == 0) {
        (void)0;
    }

    ov83_0223C3E8(param1);
    ov83_0223EDA4(&param1->unk_6D8, &param1->unk_1494);
    ov83_0223F378(&param1->unk_AEC);
    ov83_0223F52C(&param1->unk_B6C);

    return param1->unk_0C;
}

static int ov83_0223BCEC(UnkStruct_ov83_0223C344 *param0, UnkStruct_ov83_0223B784 *param1, int *param2)
{
    Poffin *v0;
    BOOL v1;

    ov83_0223EDA4(&param1->unk_6D8, &param1->unk_1494);

    switch (*param2) {
    case 0:
        ov83_0223E994(&param1->unk_6A0);
        ov83_0223F3D0(&param1->unk_AEC, 0);
        ov83_0223F3D0(&param1->unk_AEC, 1);
        ov83_0223F3D0(&param1->unk_AEC, 2);
        ov83_0223F3D0(&param1->unk_AEC, 3);
        ov83_0223E2E4(&param1->unk_5F0);

        sub_020057A4(1722, 0);
        sub_020057A4(1723, 0);
        sub_020057A4(1727, 0);
        sub_020057A4(1729, 0);
        Sound_PlayEffect(1730);

        ov83_0223E484(&param1->unk_608, 0, 0);
        ov83_0223E484(&param1->unk_608, 1, 0);
        ov83_0223E484(&param1->unk_608, 2, 0);
        (*param2)++;
        break;
    case 1:
        if (ov83_0223E32C(&param1->unk_5F0) == 0) {
            break;
        }

        sub_0200F174(3, 0, 0, 0x0, 6, 1, param1->unk_00);
        (*param2)++;
        break;
    case 2:
        if (ScreenWipe_Done()) {
            if (param0->unk_26) {
                sub_0203632C(0);
            }
            (*param2)++;
        }
        break;
    case 3: {
        GameRecords *v2 = SaveData_GetGameRecordsPtr(param0->unk_10->unk_0C);

        if (param1->unk_1490 == 0) {
            GameRecords_IncrementTrainerScore(v2, TRAINER_SCORE_EVENT_UNK_12);
            GameRecords_IncrementRecordValue(v2, RECORD_UNK_052);
        } else {
            GameRecords_IncrementTrainerScore(v2, TRAINER_SCORE_EVENT_UNK_18);
            GameRecords_IncrementRecordValue(v2, RECORD_UNK_053);
        }
    }

        if (param1->unk_1490 != 0) {
            UnkStruct_0202B370 *v3 = sub_0202B370(param0->unk_10->unk_0C);
            int v4;
            int v5, v6;
            int v7;
            DWCFriendData *v8;

            for (v4 = 0; v4 < param1->unk_1488; v4++) {
                v5 = param1->unk_1494.unk_130[v4];
                v8 = CommInfo_DWCFriendData(v5);
                v6 = sub_0203909C(param0->unk_10->unk_0C, v8, &v7);

                switch (v6) {
                case 0:
                case 1:
                    sub_0202B1D0(v3, v7, 1);
                    break;
                default:
                    break;
                }
            }
        }

        (*param2)++;
        break;
    case 4:
        if (ov83_0223D570(param1->unk_148C) == 0) {
            v0 = Poffin_malloc(param1->unk_00);
            ov83_0223FFD4(&param1->unk_34C, v0, &param1->unk_1494, param1->unk_1488, param1->unk_00);
            v1 = ov83_0223D508(28, v0, Poffin_sizeof(), param1->unk_148C);
            Heap_FreeToHeap(v0);

            if (v1 == 1) {
                (*param2)++;
            }
        } else {
            (*param2)++;
        }
        break;
    case 5:
        if (ov83_0223D570(param1->unk_148C) == 0) {
            ov83_022401AC(&param1->unk_34C, &param1->unk_1494, param1->unk_1488);
            v1 = ov83_0223D508(27, &param1->unk_1494.unk_20, ov83_0223D4C0(), param1->unk_148C);

            if (v1 == 1) {
                (*param2)++;
            }
        } else {
            (*param2)++;
        }
        break;
    case 6:
        return param1->unk_0C + 1;
    default:
        GF_ASSERT(0);
        break;
    }

    return param1->unk_0C;
}

static int ov83_0223BF74(UnkStruct_ov83_0223C344 *param0, UnkStruct_ov83_0223B784 *param1, int *param2)
{
    u32 v0;
    BOOL v1;
    u8 v2;

    switch (*param2) {
    case 0:
        ov83_0223EC4C(&param1->unk_6A0, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);

        param1->unk_31C = 0;

        ov83_0223F730(&param1->unk_1478, 128, 144, param1->unk_1494.unk_58.unk_0C, param1->unk_00);
        sub_0200F174(3, 1, 0, 0x0, 6, 1, param1->unk_00);
        (*param2)++;
        break;
    case 1:
        if (ScreenWipe_Done()) {
            (*param2)++;
            param1->unk_1C = (30 * 1);
        }
        break;
    case 2:
        param1->unk_1C--;

        if (param1->unk_1C < 0) {
            ov83_0223EC4C(&param1->unk_6A0, 1);
            Sound_PlayEffect(1731);
            (*param2)++;
            param1->unk_1C = (30 * 1);
        }
        break;
    case 3:
        param1->unk_1C--;

        if (param1->unk_1C < 0) {
            ov83_0223EC4C(&param1->unk_6A0, 2);
            ov83_0223F784(&param1->unk_1478);
            Sound_PlayEffect(1731);
            (*param2)++;
            param1->unk_1C = (30 * 20);
        }
        break;
    case 4:
        param1->unk_1C--;

        if ((param1->unk_1C < 0) || (gCoreSys.touchPressed) || (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B))) {
            (*param2)++;
            break;
        }

        ov83_0223F784(&param1->unk_1478);
        break;
    case 5:
        ov83_0223F770(&param1->unk_1478);
        ov83_0223EC70(&param1->unk_6A0);
        ov83_0223C8B0(param0, param1->unk_1494.unk_100, param1->unk_1488);
        ov83_0223EC8C(&param1->unk_6A0, 0);
        param1->unk_1C = (30 * 5);
        (*param2)++;
        break;
    case 6:
        param1->unk_1C--;

        if ((gCoreSys.touchPressed) || (param1->unk_1C < 0) || (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B))) {
            (*param2)++;
        }
        break;
    case 7:
        ov83_0223EC8C(&param1->unk_6A0, 1);
        ov83_0223F7B0(&param1->unk_1480);
        (*param2)++;
        break;
    case 8:
        v0 = ov83_0223F7DC(&param1->unk_1480);

        if ((v0 == 1) || (v0 == 2)) {
            if (v0 == 1) {
                if (sub_0202AC98(param0->unk_10->unk_08) >= 100) {
                    ov83_0223EC8C(&param1->unk_6A0, 2);
                    (*param2) = 10;
                    param1->unk_1C = (30 * 5);
                    break;
                }

                if (Bag_HasItemsInPocket(param0->unk_10->unk_14, 4) == 0) {
                    ov83_0223EC8C(&param1->unk_6A0, 5);
                    (*param2) = 10;
                    param1->unk_1C = (30 * 5);
                    break;
                }

                (*param2) = 9;
            } else {
                (*param2) = 11;
            }

            if (param1->unk_1488 > 1) {
                ov83_0223EC8C(&param1->unk_6A0, 6);
                ov83_0223E9BC(&param1->unk_6A0);
            }
        }
        break;
    case 9:
        param1->unk_3B4 = 1;
        v1 = ov83_0223D508(30, &param1->unk_3B4, ov83_0223D4B0(), param1->unk_148C);

        if (v1 == 1) {
            return param1->unk_0C + 1;
        }
        break;
    case 10:
        param1->unk_1C--;

        if ((gCoreSys.touchPressed) || (param1->unk_1C < 0) || (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B))) {
            if (param1->unk_1488 > 1) {
                ov83_0223EC8C(&param1->unk_6A0, 6);
                ov83_0223E9BC(&param1->unk_6A0);
            }
            (*param2) = 11;
        }
        break;
    case 11:
        param1->unk_3B4 = 0;
        v1 = ov83_0223D508(30, &param1->unk_3B4, ov83_0223D4B0(), param1->unk_148C);

        if (v1 == 1) {
            return param1->unk_0C + 1;
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return param1->unk_0C;
}

static int ov83_0223C24C(UnkStruct_ov83_0223C344 *param0, UnkStruct_ov83_0223B784 *param1, int *param2)
{
    return ov83_0223CB5C(param1, param2);
}

static int ov83_0223C258(UnkStruct_ov83_0223C344 *param0, UnkStruct_ov83_0223B784 *param1, int *param2)
{
    switch (*param2) {
    case 0:
        if (param1->unk_1494.unk_145 == 1) {
            ov83_0223EC8C(&param1->unk_6A0, 3);
            param0->unk_20 = 1;
        } else {
            param0->unk_20 = 0;

            if (param1->unk_1488 <= 1) {
                (*param2) = 2;
                break;
            } else {
                ov83_0223EC8C(&param1->unk_6A0, 4);
            }

            {
                void *v0;

                if (param1->unk_1490 == 1) {
                    v0 = sub_0202C1E0(param1->unk_00);
                    Journal_SaveData(param0->unk_10->unk_1C, v0, 4);
                }
            }
        }

        param1->unk_1C = (30 * 2);
        (*param2)++;
        break;
    case 1:
        param1->unk_1C--;

        if (param1->unk_1C < 0) {
            (*param2)++;
        }
        break;
    case 2:
        sub_0200F174(0, 0, 0, 0x0, 6, 1, param1->unk_00);
        (*param2)++;
        break;
    case 3:
        if (ScreenWipe_Done()) {
            (*param2)++;
        }
        break;
    case 4:
        ov83_0223CB8C(param1, param2);
        ov83_0223CAA4(param1);

        return param1->unk_0C + 1;
    }

    return param1->unk_0C;
}

static int ov83_0223C344(UnkStruct_ov83_0223C344 *param0, UnkStruct_ov83_0223B784 *param1, int *param2)
{
    ov83_0223DB30(&param1->unk_3C0);
    ov83_0223DEC4(&param1->unk_5B0);
    ov83_0223E260(&param1->unk_5E4);
    ov83_0223E260(&param1->unk_5F0);
    ov83_0223E260(&param1->unk_5FC);
    ov83_0223E34C(&param1->unk_608);
    ov83_0223E5C0(&param1->unk_680);
    ov83_0223E6F8(&param1->unk_6A0);
    ov83_0223ED4C(&param1->unk_6D8);
    ov83_0223F2A8(&param1->unk_AEC);
    ov83_0223F4AC(&param1->unk_B6C);
    ov83_0223F7A4(&param1->unk_1480);
    ov83_0223C87C(param0, param1);
    ov83_0223B784(param1);

    return param1->unk_0C;
}

static void ov83_0223C3E8(UnkStruct_ov83_0223B784 *param0)
{
    UnkStruct_ov83_0223FCE8 *v0 = &param0->unk_1494.unk_90[0].unk_08;
    fx32 v1;

    if (v0->unk_0C == 0) {
        param0->unk_1654 += v0->unk_0A;
    } else {
        param0->unk_1654 -= v0->unk_0A;
    }

    ov83_0223E4A4(&param0->unk_608, param0->unk_1654);
    ov83_0223C90C(param0);

    v1 = ov83_0223FB68(v0->unk_0A, v0->unk_0D);

    ov83_0223E4C0(&param0->unk_608, v1);
    ov83_0223E51C(&param0->unk_608, v0->unk_0D);
    ov83_0223E658(&param0->unk_680);
    ov83_0223C480(param0);
    ov83_0223C758(param0);
    ov83_0223C558(param0);
    ov83_0223C600(param0);
    ov83_0223C6D4(param0);
    ov83_0223C7FC(param0);

    {
        v0->unk_13 = 0;
        v0->unk_12 = 0;
        v0->unk_0F = 0;
        v0->unk_0E = 0;
    }
}

static void ov83_0223C480(UnkStruct_ov83_0223B784 *param0)
{
    UnkStruct_ov83_0223FCE8 *v0 = &param0->unk_1494.unk_90[0].unk_08;
    static const u8 v1[3][7] = {
        { 1, 1, 0, 1, 0, 0, 5 },
        { 0, 1, 1, 0, 1, 0, 6 },
        { 0, 0, 1, 0, 0, 1, 8 },
    };

    ov83_0223E484(&param0->unk_608, 5, v1[v0->unk_0D][0]);
    ov83_0223E484(&param0->unk_608, 6, v1[v0->unk_0D][1]);
    ov83_0223E484(&param0->unk_608, 7, v1[v0->unk_0D][2]);
    ov83_0223E484(&param0->unk_608, 0, v1[v0->unk_0D][3]);
    ov83_0223E484(&param0->unk_608, 1, v1[v0->unk_0D][4]);
    ov83_0223E484(&param0->unk_608, 2, v1[v0->unk_0D][5]);

    if (v1[v0->unk_0D][6] != 8) {
        if (v0->unk_10 > 0) {
            ov83_0223E4E0(&param0->unk_608, v1[v0->unk_0D][6], v0->unk_10);
        } else {
            ov83_0223E484(&param0->unk_608, v1[v0->unk_0D][6], 0);
        }
    }
}

static void ov83_0223C558(UnkStruct_ov83_0223B784 *param0)
{
    UnkStruct_ov83_0223FCE8 *v0 = &param0->unk_1494.unk_90[0].unk_08;

    if ((v0->unk_11 == v0->unk_0C) || (v0->unk_0A == 0) || (param0->unk_324 != 0)) {
        ov83_0223F3D0(&param0->unk_AEC, 1);
        ov83_0223F3D0(&param0->unk_AEC, 3);
        param0->unk_328 = 0;
    } else {
        if (v0->unk_11 == 0) {
            if (param0->unk_328 != 1) {
                ov83_0223F3A0(&param0->unk_AEC, 1);
                param0->unk_328 = 1;
                ov83_0223F3D0(&param0->unk_AEC, 3);
                Sound_PlayEffect(1729);
            }
        } else {
            if (param0->unk_328 != 2) {
                ov83_0223F3A0(&param0->unk_AEC, 3);
                param0->unk_328 = 2;
                ov83_0223F3D0(&param0->unk_AEC, 1);
                Sound_PlayEffect(1729);
            }
        }
    }
}

static void ov83_0223C600(UnkStruct_ov83_0223B784 *param0)
{
    UnkStruct_ov83_0223FCE8 *v0 = &param0->unk_1494.unk_90[0].unk_08;
    static const u8 v1[3] = {
        1, 3, 0
    };
    static const u8 v2[3] = {
        0, 2, 4
    };

    if ((param0->unk_328 != 0) || (param0->unk_324 != 0)) {
        ov83_0223E994(&param0->unk_6A0);
        param0->unk_330 = 0;
        param0->unk_32C = 0;
    } else {
        if (param0->unk_330 == 0) {
            if (v0->unk_13) {
                ov83_0223E994(&param0->unk_6A0);
                ov83_0223E908(&param0->unk_6A0, v1[v0->unk_0D]);
                param0->unk_330 = 1;
                param0->unk_32C = 0;
            }
        } else {
            if (ov83_0223E984(&param0->unk_6A0)) {
                param0->unk_330 = 0;
            }
        }

        if (param0->unk_32C == 0) {
            if (v0->unk_12) {
                ov83_0223E994(&param0->unk_6A0);
                ov83_0223E908(&param0->unk_6A0, v2[v0->unk_0D]);
                param0->unk_32C = 1;
                param0->unk_330 = 0;
            }
        } else {
            if (ov83_0223E984(&param0->unk_6A0)) {
                param0->unk_32C = 0;
            }
        }
    }
}

static void ov83_0223C6D4(UnkStruct_ov83_0223B784 *param0)
{
    UnkStruct_ov83_0223FCE8 *v0 = &param0->unk_1494.unk_90[0].unk_08;
    static const u32 v1[3] = {
        1714, 1720, 1720
    };
    static const u32 v2[3] = {
        1715, 1715, 1723
    };

    if (v0->unk_13) {
        ov83_0223EDDC(&param0->unk_6D8, v0->unk_0D, 2);
        Sound_PlayEffect(v1[v0->unk_0D]);
    }

    if (v0->unk_12 == 1) {
        ov83_0223EDDC(&param0->unk_6D8, v0->unk_0D, 1);
        Sound_PlayEffect(v2[v0->unk_0D]);
    } else if (v0->unk_12 == 2) {
        ov83_0223EDDC(&param0->unk_6D8, v0->unk_0D, 0);
    }

    if (ov83_0223FB50(v0->unk_0A, v0->unk_0D) == 0) {
        ov83_0223EFCC(&param0->unk_6D8);
    }
}

static void ov83_0223C758(UnkStruct_ov83_0223B784 *param0)
{
    UnkStruct_ov83_0223FCE8 *v0 = &param0->unk_1494.unk_90[0].unk_08;
    BOOL v1;

    if (v0->unk_0E) {
        if (v0->unk_11 == 0) {
            ov83_0223F3A0(&param0->unk_AEC, 0);
            ov83_0223F3D0(&param0->unk_AEC, 2);
            Sound_PlayEffect(1729);
            param0->unk_324 = 1;
        } else {
            ov83_0223F3A0(&param0->unk_AEC, 2);
            ov83_0223F3D0(&param0->unk_AEC, 0);
            Sound_PlayEffect(1729);
            param0->unk_324 = 2;
        }
    }

    if (param0->unk_324 == 1) {
        v1 = ov83_0223F3F0(&param0->unk_AEC, 0);

        if (v1 == 1) {
            param0->unk_324 = 0;
        }
    } else if (param0->unk_324 == 2) {
        v1 = ov83_0223F3F0(&param0->unk_AEC, 2);

        if (v1 == 1) {
            param0->unk_324 = 0;
        }
    }
}

static void ov83_0223C7FC(UnkStruct_ov83_0223B784 *param0)
{
    UnkStruct_ov83_0223FCE8 *v0 = &param0->unk_1494.unk_90[0].unk_08;
    int v1 = param0->unk_1494.unk_04.unk_00.unk_00;
    int v2 = param0->unk_1494.unk_04.unk_00.unk_01;

    if (v0->unk_0F == 1) {
        ov83_0223F544(&param0->unk_B6C, v1, v2);
        Sound_PlayEffect(1727);
    }
}

static void ov83_0223C82C(UnkStruct_ov83_0223C344 *param0, UnkStruct_ov83_0223B784 *param1)
{
    int v0;

    param1->unk_1494.unk_100 = Poffin_malloc(param1->unk_00);
    param1->unk_1494.unk_144 = ov83_0223D570(param1->unk_148C);

    for (v0 = 0; v0 < 4; v0++) {
        param1->unk_1494.unk_90[v0].unk_00.unk_00 = 128;
        param1->unk_1494.unk_90[v0].unk_00.unk_01 = 96;
    }

    if (param0->unk_26) {
        sub_02035938(2);
    }
}

static void ov83_0223C87C(UnkStruct_ov83_0223C344 *param0, UnkStruct_ov83_0223B784 *param1)
{
    GF_ASSERT(param1->unk_1494.unk_100);

    Heap_FreeToHeap(param1->unk_1494.unk_100);
    param1->unk_1494.unk_100 = NULL;

    if (param0->unk_26) {
        sub_02035938(0);
    }
}

static BOOL ov83_0223C8B0(UnkStruct_ov83_0223C344 *param0, Poffin *param1, int param2)
{
    int v0;
    u16 v1;
    int v2;
    BOOL v3 = 1;
    TVBroadcast *v4 = SaveData_TVBroadcast(param0->unk_10->unk_0C);

    for (v0 = 0; v0 < param2; v0++) {
        v1 = sub_0202AB74(param0->unk_10->unk_08, param1);

        if (v1 == 0xFFFF) {
            v3 = 0;
            break;
        }
    }

    if (param0->unk_26 == 0) {
        v2 = Poffin_GetAttribute(param1, 0);
        sub_0206CFCC(v4, v2);
    }

    return v3;
}

static void ov83_0223C90C(UnkStruct_ov83_0223B784 *param0)
{
    UnkStruct_ov83_0223FCE8 *v0 = &param0->unk_1494.unk_90[0].unk_08;
    static const u32 v1[3] = {
        1713,
        1718,
        1722,
    };

    if (((v0->unk_0C == 0) && (param0->unk_3B8 > v0->unk_08)) || ((v0->unk_0C == 1) && (param0->unk_3B8 < v0->unk_08))) {
        Sound_PlayEffect(v1[v0->unk_0D]);
    }

    param0->unk_3B8 = v0->unk_08;
}
