#include "main_menu/ov97_02233814.h"

#include <nitro.h>
#include <string.h>

#include "main_menu/ov97_02232200.h"
#include "main_menu/ov97_02233408.h"
#include "main_menu/ov97_022337FC.h"
#include "main_menu/struct_ov97_02232254.h"
#include "main_menu/struct_ov97_02232620.h"
#include "main_menu/struct_ov97_02233268.h"
#include "main_menu/struct_ov97_022339EC.h"

BOOL ov97_02233814(const void *param0, u32 param1, u16 param2)
{
    WMErrCode v0;

    v0 = WM_SetMPDataToPort(ov97_022323CC, param0, (u16)param1, param2, (u16)ov97_02233460(), 2);

    if (v0 != WM_ERRCODE_OPERATING) {
        ov97_022337FC(v0);
        return 0;
    } else {
        return 1;
    }
}

BOOL ov97_02233854(void)
{
    WMErrCode v0;

    v0 = WM_Enable(ov97_022323E4);

    if (v0 != WM_ERRCODE_OPERATING) {
        ov97_022337FC(v0);
        return 0;
    } else {
        return 1;
    }
}

BOOL ov97_02233870(void)
{
    WMErrCode v0;

    v0 = WM_Disable(ov97_02232424);

    if (v0 != WM_ERRCODE_OPERATING) {
        ov97_022337FC(v0);
        OS_Terminate();
        return 0;
    } else {
        return 1;
    }
}

BOOL ov97_02233890(u32 param0)
{
    WMErrCode v0;

    v0 = WM_MeasureChannel(ov97_0223245C, 3, 17, (u16)param0, 30);

    if (v0 != WM_ERRCODE_OPERATING) {
        ov97_022337FC(v0);
        return 0;
    } else {
        return 1;
    }
}

BOOL ov97_022338BC(void)
{
    WMErrCode v0;
    WMParentParam *v1 = ov97_02233408();
    UnkStruct_ov97_02233268 *v2 = ov97_02233590();
    UnkStruct_ov97_02232254 *v3 = ov97_02233510();

    v1->channel = v3->unk_64;
    v1->userGameInfo = (u16 *)v2;
    v1->userGameInfoLength = (u16)ov97_0223358C();

    v0 = WM_SetParentParameter(ov97_022324C4, v1);

    if (v0 != WM_ERRCODE_OPERATING) {
        ov97_022337FC(v0);
        return 0;
    } else {
        return 1;
    }
}

BOOL ov97_022338F8(void)
{
    WMErrCode v0;

    v0 = WM_StartParent(ov97_022324EC);

    if (v0 != WM_ERRCODE_OPERATING) {
        ov97_022337FC(v0);
        return 0;
    } else {
        return 1;
    }
}

BOOL ov97_02233914(void)
{
    WMErrCode v0;

    v0 = WM_StartScan(ov97_022327B8, ov97_02233478());

    if (v0 != WM_ERRCODE_OPERATING) {
        ov97_022337FC(v0);
        return 0;
    } else {
        return 1;
    }
}

BOOL ov97_02233938(void)
{
    WMErrCode v0;

    {
        WMScanParam *v1 = ov97_02233478();
        UnkStruct_ov97_02232620 *v2 = ov97_02233508();

        v1->bssid[0] = v2->unk_00[v2->unk_1C3_0].unk_34.unk_00.val1[0];
        v1->bssid[1] = v2->unk_00[v2->unk_1C3_0].unk_34.unk_00.val1[1];
        v1->bssid[2] = v2->unk_00[v2->unk_1C3_0].unk_00.unk_00.val1[0];
        v1->bssid[3] = v2->unk_00[v2->unk_1C3_0].unk_00.unk_00.val1[1];
        v1->bssid[4] = v2->unk_00[v2->unk_1C3_0].unk_00.unk_00.val1[2];
        v1->bssid[5] = v2->unk_00[v2->unk_1C3_0].unk_00.unk_00.val1[3];
    }

    v0 = WM_StartScan(ov97_022328D4, ov97_02233478());

    if (v0 != WM_ERRCODE_OPERATING) {
        ov97_022337FC(v0);
        return 0;
    } else {
        return 1;
    }
}

BOOL ov97_022339D0(void)
{
    WMErrCode v0;

    v0 = WM_EndScan(ov97_02232944);

    if (v0 != WM_ERRCODE_OPERATING) {
        ov97_022337FC(v0);
        return 0;
    } else {
        return 1;
    }
}

BOOL ov97_022339EC(void)
{
    WMErrCode v0;
    UnkStruct_ov97_022339EC *v1 = ov97_0223359C();

    v0 = WM_StartConnect(ov97_02232998, ov97_022334B4(), (const u8 *)v1);

    if (v0 != WM_ERRCODE_OPERATING) {
        ov97_022337FC(v0);
        return 0;
    } else {
        return 1;
    }
}

BOOL ov97_02233A24(void)
{
    WMErrCode v0;

    v0 = WM_SetPortCallback(4, ov97_02232C94, NULL);

    if (v0 == WM_ERRCODE_SUCCESS) {
        (void)0;
    } else {
        ov97_022337FC(v0);
        return 0;
    }

    v0 = WM_StartMP(ov97_02232A7C, ov97_022334A8(), (u16)ov97_02233490(), ov97_0223349C(), (u16)ov97_02233484(), (u16)(ov97_02233408()->CS_Flag ? 0 : 1));

    if (v0 != WM_ERRCODE_OPERATING) {
        ov97_022337FC(v0);
        return 0;
    } else {
        return 1;
    }
}

BOOL ov97_02233A9C(void)
{
    WMErrCode v0;

    v0 = WM_PowerOn(ov97_02232D18);

    if (v0 != WM_ERRCODE_OPERATING) {
        ov97_022337FC(v0);
        return 0;
    } else {
        return 1;
    }
}

BOOL ov97_02233AB8(void)
{
    WMErrCode v0;

    v0 = WM_PowerOff(ov97_02232D3C);

    if (v0 != WM_ERRCODE_OPERATING) {
        ov97_022337FC(v0);
        OS_Terminate();
        return 0;
    } else {
        return 1;
    }
}

BOOL ov97_02233AD8(void)
{
    WMErrCode v0;

    v0 = WM_Reset(ov97_02232D60);

    if (v0 != WM_ERRCODE_OPERATING) {
        ov97_022337FC(v0);
        OS_Terminate();
        return 0;
    } else {
        return 1;
    }
}

BOOL ov97_02233AF8(void)
{
    WMErrCode v0;

    v0 = WM_End(ov97_02232DA4);

    if (v0 != WM_ERRCODE_OPERATING) {
        ov97_022337FC(v0);
        OS_Terminate();
        return 0;
    } else {
        return 1;
    }
}
