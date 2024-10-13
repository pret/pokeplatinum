#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "struct_defs/struct_0203CC84.h"

#include "overlay057/const_ov57_021D0F70.h"
#include "overlay077/const_ov77_021D742C.h"

#include "assert.h"
#include "communication_system.h"
#include "core_sys.h"
#include "font.h"
#include "game_overlay.h"
#include "overlay_manager.h"
#include "rtc.h"
#include "save_player.h"
#include "savedata.h"
#include "sys_task_manager.h"
#include "unk_02000C88.h"
#include "unk_02003B60.h"
#include "unk_0200A9DC.h"
#include "unk_0200F174.h"
#include "unk_02017428.h"
#include "unk_02017728.h"
#include "unk_0201D15C.h"
#include "unk_0201E3D8.h"
#include "unk_02022844.h"
#include "unk_0202419C.h"
#include "unk_0202CC64.h"
#include "unk_020366A0.h"
#include "unk_02038FFC.h"
#include "unk_02039814.h"
#include "unk_02039A64.h"
#include "unk_0209A74C.h"

#define RESET_COMBO (PAD_BUTTON_START | PAD_BUTTON_SELECT | PAD_BUTTON_L | PAD_BUTTON_R)

FS_EXTERN_OVERLAY(overlay57);
FS_EXTERN_OVERLAY(overlay77);

typedef struct {
    FSOverlayID unk_00;
    OverlayManager *unk_04;
    FSOverlayID unk_08;
    const OverlayManagerTemplate *unk_0C;
    UnkStruct_0203CC84 unk_10;
} UnkStruct_02101D28;

static void sub_02000E3C(void);
static void sub_02000E54(void);
static void WaitFrame(void);
static void sub_02000F10(int param0);
static void SoftReset(int param0);
static void HeapCanaryFailed(int param0, int param1);
static void CheckHeapCanary(void);

static UnkStruct_02101D28 Unk_02101D28;
// This variable doesn't really makes sense. If it's set to off, the game will
// repeatedly try to restore the backlight to its saved state.
static PMBackLightSwitch sSavedBacklightState;
BOOL gIgnoreCartridgeForWake;
extern const OverlayManagerTemplate Unk_ov77_021D788C;

void NitroMain(void)
{
    sub_0201789C();
    InitGraphics();
    InitKeypadAndTouchpad();

    sub_02017B70(0);
    PM_GetBackLight(&sSavedBacklightState, NULL);
    sub_0202419C();
    InitRTC();
    sub_02000E3C();

    Fonts_Init();
    Font_InitManager(FONT_SYSTEM, HEAP_ID_APPLICATION);
    Font_InitManager(FONT_MESSAGE, HEAP_ID_APPLICATION);
    Font_InitManager(FONT_UNOWN, HEAP_ID_APPLICATION);

    Unk_02101D28.unk_10.unk_00 = -1;
    Unk_02101D28.unk_10.unk_08 = SaveData_Init();

    sub_02003B60(GetChatotCryDataFromSave(Unk_02101D28.unk_10.unk_08), SaveData_Options(Unk_02101D28.unk_10.unk_08));
    sub_02022844();

    if (sub_02038FFC(3) == DWC_INIT_RESULT_DESTROY_OTHER_SETTING) {
        sub_02039A64(3, 0);
    }

    if (SaveData_BackupExists(Unk_02101D28.unk_10.unk_08) == 0) {
        sub_0209A74C(0);
    } else {
        switch (OS_GetResetParameter()) {
        case 0:
            Unk_02101D28.unk_10.unk_04 = 0;
            sub_02000EC4(FS_OVERLAY_ID(overlay77), &Unk_ov77_021D788C);
            break;
        case 1:
            sub_0200F344(0, 0x0);
            sub_0200F344(1, 0x0);
            Unk_02101D28.unk_10.unk_04 = 1;
            sub_02000EC4(FS_OVERLAY_ID(overlay57), &Unk_ov57_021D0F70);
            break;
        default:
            GF_ASSERT(0);
        }
    }

    gCoreSys.unk_6C = 1;
    gCoreSys.unk_30 = 0;

    InitRNG();
    sub_0200AB84();
    sub_02017428();

    gIgnoreCartridgeForWake = FALSE;

    while (TRUE) {
        CheckHeapCanary();
        HandleConsoleFold();
        ReadKeypadAndTouchpad();

        if ((gCoreSys.heldKeysRaw & RESET_COMBO) == RESET_COMBO) {
            if (gCoreSys.inhibitReset == 0) {
                SoftReset(0);
            }
        }

        if (CommSys_Update()) {
            CheckHeapCanary();
            sub_02000E54();
            SysTaskManager_ExecuteTasks(gCoreSys.mainTaskMgr);
            SysTaskManager_ExecuteTasks(gCoreSys.unk_24);

            if (!gCoreSys.unk_30) {
                OS_WaitIrq(1, OS_IE_V_BLANK);
                gCoreSys.frameCounter++;
            }
        }

        UpdateRTC();
        sub_02017458();
        sub_020241CC();
        SysTaskManager_ExecuteTasks(gCoreSys.unk_24);

        OS_WaitIrq(1, OS_IE_V_BLANK);

        gCoreSys.frameCounter++;
        gCoreSys.unk_30 = 0;

        sub_0200ABF0();
        sub_0200F27C();

        if (gCoreSys.mainCallback != NULL) {
            gCoreSys.mainCallback(gCoreSys.mainCallbackData);
        }

        UpdateSound();
        SysTaskManager_ExecuteTasks(gCoreSys.postVBlankTaskMgr);
    }
}

static void sub_02000E3C(void)
{
    Unk_02101D28.unk_00 = 0xffffffff;
    Unk_02101D28.unk_04 = NULL;
    Unk_02101D28.unk_08 = 0xffffffff;
    Unk_02101D28.unk_0C = NULL;
}

static void sub_02000E54(void)
{
    BOOL v0;

    if (Unk_02101D28.unk_04 == NULL) {
        if (Unk_02101D28.unk_0C == NULL) {
            return;
        }

        if (Unk_02101D28.unk_08 != 0xffffffff) {
            Overlay_LoadByID(Unk_02101D28.unk_08, 0);
        }

        Unk_02101D28.unk_00 = Unk_02101D28.unk_08;
        Unk_02101D28.unk_04 = OverlayManager_New(Unk_02101D28.unk_0C, &Unk_02101D28.unk_10, 0);
        Unk_02101D28.unk_08 = 0xffffffff;
        Unk_02101D28.unk_0C = NULL;
    }

    v0 = OverlayManager_Exec(Unk_02101D28.unk_04);

    if (v0) {
        OverlayManager_Free(Unk_02101D28.unk_04);
        Unk_02101D28.unk_04 = NULL;

        if (Unk_02101D28.unk_00 != 0xffffffff) {
            Overlay_UnloadByID(Unk_02101D28.unk_00);
        }
    }
}

void sub_02000EC4(FSOverlayID param0, const OverlayManagerTemplate *param1)
{
    GF_ASSERT(Unk_02101D28.unk_0C == NULL);

    Unk_02101D28.unk_08 = param0;
    Unk_02101D28.unk_0C = param1;
}

static void WaitFrame(void)
{
    CommSys_Update();

    OS_WaitIrq(1, OS_IE_V_BLANK);

    gCoreSys.frameCounter++;
    gCoreSys.unk_30 = 0;

    if (gCoreSys.mainCallback != NULL) {
        gCoreSys.mainCallback(gCoreSys.mainCallbackData);
    }
}

static void sub_02000F10(int param0)
{
    if (sub_02038AB8()) {
        if (CARD_TryWaitBackupAsync() == TRUE) {
            OS_ResetSystem(param0);
        }
    }

    WaitFrame();
}

static void CheckHeapCanary(void)
{
    int v0 = sub_020389D8();

    switch (v0) {
    case 1:
        HeapCanaryFailed(1, v0);
        break;
    case 2:
        HeapCanaryFailed(0, v0);
        break;
    case 3:
        HeapCanaryFailed(1, v0);
        break;
    }
}

static void SoftReset(int param0)
{
    sub_0200F344(0, 0x7fff);
    sub_0200F344(1, 0x7fff);

    if (sub_02037DB0()) {
        SaveData_SaveStateCancel(SaveData_Ptr());
    }

    while (TRUE) {
        HandleConsoleFold();
        sub_02000F10(param0);
    }
}

static void HeapCanaryFailed(int param0, int param1)
{
    int elapsed;
    BOOL v1;

    if (param1 == 3) {
        sub_02039834(0, 3, 0);
    } else if (0 == param0) {
        if (sub_020389B8() == TRUE) {
            sub_02039834(0, 6, 0);
        } else {
            sub_02039834(0, 2, 0);
        }
    } else {
        if (sub_020389B8() == TRUE) {
            sub_02039834(0, 5, 0);
        } else {
            sub_02039834(0, 0, 0);
        }
    }

    sub_02037DB0();
    WaitFrame();
    UpdateSound();

    elapsed = 0;

    while (TRUE) {
        HandleConsoleFold();
        ReadKeypadAndTouchpad();

        if (elapsed >= 30) {
            if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
                break;
            }
        }

        WaitFrame();

        if (elapsed < 30) {
            elapsed++;
        }
    }

    SoftReset(param0);
}

void InitRNG(void)
{
    RTCDate v0;
    RTCTime v1;
    u32 v2;

    GetCurrentDateTime(&v0, &v1);

    v2 = v0.year + v0.month * 0x100 * v0.day * 0x10000 + v1.hour * 0x10000 + (v1.minute + v1.second) * 0x1000000 + gCoreSys.frameCounter;

    MTRNG_SetSeed(v2);
    LCRNG_SetSeed(v2);
}

void HandleConsoleFold(void)
{
    PMBackLightSwitch top, bottom;
    PMWakeUpTrigger trigger;

    if (PAD_DetectFold()) {
        if (gCoreSys.inhibitSleep == 0) {
            BeforeSleep();

            if (CTRDG_IsPulledOut() == TRUE) {
                gIgnoreCartridgeForWake = TRUE;
            }

sleep_again:
            trigger = PM_TRIGGER_COVER_OPEN | PM_TRIGGER_CARD;

            if (gCoreSys.unk_66 && !gIgnoreCartridgeForWake) {
                trigger |= PM_TRIGGER_CARTRIDGE;
            }

            PM_GoSleepMode(trigger, 0, 0);

            if (CARD_IsPulledOut()) {
                PM_ForceToPowerOff();
            } else if (PAD_DetectFold()) {
                // Woke up because the cartridge got pulled out
                gIgnoreCartridgeForWake = TRUE;
                goto sleep_again;
            }

            AfterSleep();
        } else {
            PM_GetBackLight(&top, &bottom);

            if (top == PM_BACKLIGHT_ON) {
                PM_SetBackLight(PM_LCD_ALL, PM_BACKLIGHT_OFF);
            }
        }
    } else {
        PM_GetBackLight(&top, &bottom);

        if (top == PM_BACKLIGHT_OFF) {
            PM_SetBackLight(PM_LCD_ALL, sSavedBacklightState);
        }
    }
}
