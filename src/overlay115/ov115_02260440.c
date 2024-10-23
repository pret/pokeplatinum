#include "overlay115/ov115_02260440.h"

#include <nitro.h>
#include <string.h>

#include "overlay004/ov4_021D0D80.h"
#include "overlay114/ov114_0225C700.h"
#include "overlay114/struct_ov114_0225C76C.h"
#include "overlay114/struct_ov114_0225C9A8.h"
#include "overlay114/struct_ov114_0225D678_decl.h"
#include "overlay114/struct_ov114_0225E854_decl.h"
#include "overlay115/ov115_02260BBC.h"
#include "overlay115/ov115_02260CEC.h"
#include "overlay115/ov115_02265A24.h"
#include "overlay115/struct_ov115_02260440.h"
#include "overlay115/struct_ov115_02260BE4_decl.h"
#include "overlay115/struct_ov115_02260D78_decl.h"
#include "overlay115/struct_ov115_022612BC.h"
#include "overlay115/struct_ov115_02262DC4.h"
#include "overlay115/struct_ov115_02262F50.h"
#include "overlay115/struct_ov115_02265AD0.h"
#include "overlay115/struct_ov115_02265AD4.h"

#include "communication_information.h"
#include "communication_system.h"
#include "core_sys.h"
#include "graphics.h"
#include "heap.h"
#include "narc.h"
#include "overlay_manager.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_0201DBEC.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_020393C8.h"

typedef struct UnkStruct_ov115_0226095C_t {
    UnkStruct_ov114_0225D678 *unk_00;
    UnkStruct_ov114_0225E854 *unk_04;
    UnkStruct_ov114_0225C76C unk_08;
    UnkStruct_ov114_0225C9A8 unk_18;
    UnkStruct_ov115_02260BE4 *unk_30;
    UnkStruct_ov115_02260D78 *unk_34;
    BOOL unk_38;
    BOOL unk_3C;
    BOOL unk_40;
    u16 unk_44;
    u16 unk_46;
    UnkStruct_ov115_02262F50 unk_48;
    u32 unk_70;
    u32 unk_74;
    u32 unk_78;
    u32 unk_7C;
    BOOL unk_80;
    u8 unk_84[4];
} UnkStruct_ov115_0226095C;

static void ov115_02260A50(void *param0);
static void ov115_02260A5C(UnkStruct_ov115_0226095C *param0);
static void ov115_02260A90(UnkStruct_ov115_0226095C *param0);
static void ov115_02260ADC(UnkStruct_ov115_0226095C *param0, u32 param1);
static void ov115_02260B30(UnkStruct_ov115_0226095C *param0);
static void ov115_02260B44(UnkStruct_ov115_0226095C *param0, UnkStruct_ov115_02260440 *param1);
static BOOL ov115_02260BA0(UnkStruct_ov115_0226095C *param0, int param1, const void *param2, int param3);

int ov115_02260440(OverlayManager *param0, int *param1)
{
    UnkStruct_ov115_0226095C *v0;
    UnkStruct_ov115_02260440 *v1 = OverlayManager_Args(param0);
    BOOL v2;

    Heap_Create(3, 99, 0x60000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov115_0226095C), 99);
    memset(v0, 0, sizeof(UnkStruct_ov115_0226095C));

    ov114_0225C700(&v0->unk_08, v1->unk_39, v1->unk_34, v1->unk_38, &v1->unk_00);
    ov115_02260ADC(v0, 99);

    return 1;
}

int ov115_0226048C(OverlayManager *param0, int *param1)
{
    UnkStruct_ov115_0226095C *v0 = OverlayManager_Data(param0);
    UnkStruct_ov115_02260440 *v1 = OverlayManager_Args(param0);
    BOOL v2;
    u32 v3;

    if (ov114_0225CA54(&v0->unk_08) == 1) {
        switch (v0->unk_78) {
        case 0:

            if (ScreenWipe_Done() == 1) {
                sub_0200F2C0();
            }

            sub_0200F370(0x0);
            v0->unk_78++;
            break;
        case 1:
            if (ov114_0225CA98(&v0->unk_08) == 1) {
                v0->unk_78++;
            }
            break;
        case 2:
            ov115_02260B44(v0, v1);
            return 1;
            GF_ASSERT(0);
            return 1;
        }

        return 0;
    }

    switch (*param1) {
    case 0:

        v0->unk_00 = ov114_0225C814(&v0->unk_08, 99);

        (*param1)++;
        break;

    case 1:
        if (ov114_0225C8BC(v0->unk_00) == 1) {
            v0->unk_70 = ov114_0225C8CC(v0->unk_00);
            ov114_0225C838(v0->unk_00);
            v0->unk_00 = NULL;
            (*param1)++;
        }
        break;
    case 2:
        if (gCoreSys.heldKeys & PAD_BUTTON_A) {
            break;
        }

        SetMainCallback(ov115_02260A50, v0);
        DisableHBlank();

        v0->unk_38 = 0;
        v0->unk_3C = 0;
        v0->unk_40 = 0;
        memset(v0->unk_84, 0, sizeof(u8) * 4);

        sub_0201DBEC(32, 99);
        ov115_02265A24(v0);

        v0->unk_80 = 1;
        v0->unk_74 = CommInfo_CountReceived();

        GF_ASSERT(v0->unk_74 > 1);

        v0->unk_44 = CommSys_CurNetId();
        v0->unk_46 = ov114_0225C76C(&v0->unk_08, v0->unk_44);

        if (v0->unk_44 == 0) {
            v0->unk_30 = ov115_02260BBC(99, (30 * 40), v0->unk_74, &v0->unk_48);
            v0->unk_7C = 1;
        }

        v0->unk_34 = ov115_02260CEC(99, (30 * 40), v0->unk_74, v0->unk_46, &v0->unk_48);
        sub_02039734();

        if (v1->unk_38) {
            ov4_021D1E74(99);
        }

        {
            UnkStruct_ov115_022612BC v4;

            switch (v0->unk_70) {
            case 0:
                v4.unk_00 = 0;
                v4.unk_01 = 0;
                break;
            case 1:
                v4.unk_00 = 0;
                v4.unk_01 = 1;
                break;
            case 2:
                v4.unk_00 = 1;
                v4.unk_01 = 0;
                break;
            default:
                GF_ASSERT(0);
                break;
            }

            ov115_022612BC(v0->unk_34, &v4);
        }

        CommTiming_StartSync(1);

        (*param1)++;
        break;
    case 3:
        if (!CommTiming_IsSyncState(1)) {
            break;
        }

        sub_0200F174(0, 27, 27, 0xffff, 6, 1, 99);
        (*param1)++;
        break;
    case 4:
        ov115_02260DAC(v0->unk_34, 0);

        if (ScreenWipe_Done()) {
            if (v0->unk_44 == 0) {
                v2 = CommSys_SendData(22, NULL, 0);

                if (v2) {
                    (*param1)++;
                }
            } else {
                (*param1)++;
            }
        }
        break;
    case 5:
        ov115_02260DAC(v0->unk_34, 0);

        if (v0->unk_38) {
            (*param1)++;
        }
        break;
    case 6:
        v2 = ov115_02260DAC(v0->unk_34, 1);

        if (v2 == 0) {
            (*param1)++;
        }
        break;
    case 7:
        if (v0->unk_3C) {
            u32 v5;

            v5 = ov115_02261274(v0->unk_34);
            v2 = CommSys_SendData(25, &v5, sizeof(u32));

            if (v2) {
                (*param1)++;
            }
            break;
        }

        if (v0->unk_44 == 0) {
            v2 = ov115_02260BEC(v0->unk_30);

            if (ov115_02260C54(v0->unk_30)) {
                u32 v6;
                BOOL v7;

                v6 = ov115_02260C64(v0->unk_30);
                v7 = ov115_02260BA0(v0, 27, &v6, sizeof(u32));

                if (v7 == 1) {
                    ov115_02260C5C(v0->unk_30);
                }
            }

            if (v2 == 0) {
                ov115_02260BA0(v0, 23, NULL, 0);
            }
        }

        ov115_022610D4(v0->unk_34);
        ov115_02260A5C(v0);
        ov115_02260A90(v0);
        break;
    case 8:
        ov115_02260F70(v0->unk_34, 0);

        if (v0->unk_44 == 0) {
            v2 = ov115_02260CA4(v0->unk_30);

            if (v2 == 1) {
                UnkStruct_ov115_02265AD4 v8;

                ov115_02260CBC(v0->unk_30, &v8);
                v2 = CommSys_SendData(26, &v8, sizeof(UnkStruct_ov115_02265AD4));

                if (v2) {
                    (*param1)++;
                }
            }
        } else {
            (*param1)++;
        }
        break;
    case 9:
        ov115_02260F70(v0->unk_34, 0);

        if (v0->unk_40 == 1) {
            (*param1)++;
        }
        break;
    case 10:
        v2 = ov115_02260F70(v0->unk_34, 1);

        if (v2 == 0) {
            (*param1)++;
        }
        break;
    case 11:
        sub_0200F174(0, 26, 26, 0xffff, 6, 1, 99);
        ov115_02260F70(v0->unk_34, 1);
        (*param1)++;
        break;
    case 12:
        ov115_02260F70(v0->unk_34, 1);

        if (ScreenWipe_Done()) {
            CommTiming_StartSync(3);
            (*param1)++;
        }
        break;
    case 13:
        if (!CommTiming_IsSyncState(3)) {
            return 0;
        }

        if (v1->unk_38) {
            ov4_021D1F18();
        }

        if (v0->unk_44 == 0) {
            ov115_02260BE4(v0->unk_30);
            v0->unk_30 = NULL;
        }

        ov115_02260D78(v0->unk_34);
        v0->unk_34 = NULL;
        SetMainCallback(NULL, NULL);
        DisableHBlank();
        sub_0201DC3C();
        (*param1)++;
        break;
    case 14: {
        u32 v9;

        ov114_0225C9A8(&v0->unk_18, v0->unk_08.unk_08);
        v9 = v0->unk_18.unk_10[v0->unk_46];
    }
        v0->unk_04 = ov114_0225C8E0(&v0->unk_08, &v0->unk_18, 99);
        (*param1)++;
        break;
    case 15: {
        BOOL v10;

        if (ov114_0225C9A0(v0->unk_04) == 1) {
            v10 = ov114_0225C9A4(v0->unk_04);

            ov114_0225C904(v0->unk_04);
            v0->unk_04 = NULL;

            if (v10 == 0) {
                return 1;
            } else {
                (*param1) = 0;
            }
        }
    } break;
    }

    return 0;
}

int ov115_022608E4(OverlayManager *param0, int *param1)
{
    UnkStruct_ov115_0226095C *v0 = OverlayManager_Data(param0);
    UnkStruct_ov115_02260440 *v1 = OverlayManager_Args(param0);
    BOOL v2;

    switch (*param1) {
    case 0:
        v2 = ov114_0225CA54(&v0->unk_08);

        ov115_02260B30(v0);

        OverlayManager_FreeData(param0);
        Heap_Destroy(99);
        CommMan_SetErrorHandling(0, 1);

        if (v2 == 1) {
            return 1;
        }

        CommTiming_StartSync(4);
        (*param1)++;
        break;
    case 1:
        if (CommTiming_IsSyncState(4) || (CommSys_ConnectedCount() < CommInfo_CountReceived())) {
            return 1;
        }
        break;
    default:
        break;
    }

    return 0;
}

void ov115_0226095C(UnkStruct_ov115_0226095C *param0)
{
    param0->unk_38 = 1;
}

void ov115_02260964(UnkStruct_ov115_0226095C *param0)
{
    param0->unk_3C = 1;
}

void ov115_0226096C(UnkStruct_ov115_0226095C *param0, const UnkStruct_ov115_02265AD0 *param1, u32 param2)
{
    u32 v0;

    v0 = ov114_0225C76C(&param0->unk_08, param2);
    ov115_02260C6C(param0->unk_30, param1, v0);
}

void ov115_02260988(UnkStruct_ov115_0226095C *param0, const UnkStruct_ov115_02265AD0 *param1, u32 param2)
{
    ov115_022611E4(param0->unk_34, param1);
}

void ov115_02260994(UnkStruct_ov115_0226095C *param0, u32 param1, u32 param2)
{
    u32 v0;

    v0 = ov114_0225C76C(&param0->unk_08, param2);

    if (param0->unk_30 != NULL) {
        ov115_02260C7C(param0->unk_30, param1, v0);
    }
}

void ov115_022609B4(UnkStruct_ov115_0226095C *param0, const UnkStruct_ov115_02265AD4 *param1, u32 param2)
{
    ov115_02261260(param0->unk_34, param1);
    param0->unk_40 = 1;

    {
        int v0;

        for (v0 = 0; v0 < 4; v0++) {
            param0->unk_18.unk_00[v0] = param1->unk_00[v0];
        }
    }
}

void ov115_022609D8(UnkStruct_ov115_0226095C *param0, u32 param1)
{
    ov115_02261278(param0->unk_34, param1);
}

void ov115_022609E4(UnkStruct_ov115_0226095C *param0, u32 param1, u32 param2)
{
    u32 v0;
    int v1;

    v0 = ov114_0225C76C(&param0->unk_08, param2);
    ov115_022612AC(param0->unk_34, param1, v0);

    param0->unk_84[v0]++;

    if (param0->unk_44 == 0) {
        BOOL v2 = 1;

        for (v1 = 0; v1 < param0->unk_74; v1++) {
            if (param0->unk_7C > param0->unk_84[v1]) {
                v2 = 0;
            }
        }

        if (v2 == 1) {
            param0->unk_7C++;
            CommSys_SendData(29, NULL, 0);
        }
    }
}

void ov115_02260A48(UnkStruct_ov115_0226095C *param0)
{
    param0->unk_80 = 1;
}

static void ov115_02260A50(void *param0)
{
    UnkStruct_ov115_0226095C *v0 = param0;

    ov115_022611C8(v0->unk_34);
}

static void ov115_02260A5C(UnkStruct_ov115_0226095C *param0)
{
    UnkStruct_ov115_02265AD0 v0;

    while (ov115_02261224(param0->unk_34, &v0) == 1) {
        ov115_02260BA0(param0, 24, &v0, sizeof(UnkStruct_ov115_02265AD0));
    }
}

static void ov115_02260A90(UnkStruct_ov115_0226095C *param0)
{
    s32 v0;
    u32 v1;
    BOOL v2;

    v0 = ov115_022611E0(param0->unk_34);

    if (v0 == 0) {
        return;
    }

    if ((v0 % 30) == 0) {
        if (param0->unk_80 == 1) {
            v1 = ov115_02261274(param0->unk_34);
            v2 = ov115_02260BA0(param0, 28, &v1, sizeof(u32));
            GF_ASSERT(v2);

            param0->unk_80 = 0;
        }
    }
}

static void ov115_02260ADC(UnkStruct_ov115_0226095C *param0, u32 param1)
{
    u32 v0;
    int v1;

    param0->unk_48.unk_04 = sub_02007068(NARC_INDEX_APPLICATION__BUCKET__BALLSLOW_DATA, 0, 0, param1, 0, &v0);
    param0->unk_48.unk_00 = v0 / sizeof(UnkStruct_ov115_02262DC4);

    for (v1 = 0; v1 < param0->unk_08.unk_08; v1++) {
        param0->unk_48.unk_08[v1] = ov114_0225C7CC(&param0->unk_08, v1);
        param0->unk_48.unk_18[v1] = ov114_0225C7A4(&param0->unk_08, v1);
    }
}

static void ov115_02260B30(UnkStruct_ov115_0226095C *param0)
{
    Heap_FreeToHeap(param0->unk_48.unk_04);
    param0->unk_48.unk_04 = NULL;
    param0->unk_48.unk_00 = 0;
}

static void ov115_02260B44(UnkStruct_ov115_0226095C *param0, UnkStruct_ov115_02260440 *param1)
{
    SetMainCallback(NULL, NULL);
    DisableHBlank();

    if (param0->unk_00 != NULL) {
        ov114_0225C838(param0->unk_00);
        param0->unk_00 = NULL;
    }

    if (param0->unk_34) {
        if (param0->unk_44 == 0) {
            ov115_02260BE4(param0->unk_30);
        }

        ov115_02260D78(param0->unk_34);
        sub_0201DC3C();
    }

    if (param1->unk_38) {
        ov4_021D1F18();
    }

    if (param0->unk_04 != NULL) {
        ov114_0225C904(param0->unk_04);
        param0->unk_04 = NULL;
    }
}

static BOOL ov115_02260BA0(UnkStruct_ov115_0226095C *param0, int param1, const void *param2, int param3)
{
    if (param0->unk_80 == 0) {
        return 0;
    }

    return CommSys_SendData(param1, param2, param3);
}
