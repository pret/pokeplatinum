#include "main.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "overlay077/const_ov77_021D742C.h"

#include "assert.h"
#include "bg_window.h"
#include "communication_system.h"
#include "core_sys.h"
#include "font.h"
#include "game_overlay.h"
#include "game_start.h"
#include "main.h"
#include "overlay_manager.h"
#include "rtc.h"
#include "save_player.h"
#include "savedata.h"
#include "sys_task_manager.h"
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

FS_EXTERN_OVERLAY(game_start);
FS_EXTERN_OVERLAY(overlay77);

typedef struct Application {
    FSOverlayID currOverlayID;
    OverlayManager *currOverlay;
    FSOverlayID nextOverlayID;
    const OverlayManagerTemplate *nextOverlay;
    ApplicationArgs args;
} Application;

static void InitApplication(void);
static void RunApplication(void);
static void WaitFrame(void);
static void TrySystemReset(enum OSResetParameter resetParam);
static void SoftReset(enum OSResetParameter resetParam);
static void HeapCanaryFailed(int param0, int param1);
static void CheckHeapCanary(void);

static Application sApplication;
// This variable doesn't really makes sense. If it's set to off, the game will
// repeatedly try to restore the backlight to its saved state.
static PMBackLightSwitch sSavedBacklightState;
BOOL gIgnoreCartridgeForWake;
extern const OverlayManagerTemplate gOpeningCutsceneOverlayTemplate;

void NitroMain(void)
{
    sub_0201789C();
    InitGraphics();
    InitKeypadAndTouchpad();

    sub_02017B70(0);
    PM_GetBackLight(&sSavedBacklightState, NULL);
    sub_0202419C();
    InitRTC();
    InitApplication();

    Fonts_Init();
    Font_InitManager(FONT_SYSTEM, HEAP_ID_APPLICATION);
    Font_InitManager(FONT_MESSAGE, HEAP_ID_APPLICATION);
    Font_InitManager(FONT_UNOWN, HEAP_ID_APPLICATION);

    sApplication.args.unk_00 = -1;
    sApplication.args.saveData = SaveData_Init();

    sub_02003B60(GetChatotCryDataFromSave(sApplication.args.saveData), SaveData_Options(sApplication.args.saveData));
    sub_02022844();

    if (sub_02038FFC(3) == DWC_INIT_RESULT_DESTROY_OTHER_SETTING) {
        sub_02039A64(3, 0);
    }

    if (SaveData_BackupExists(sApplication.args.saveData) == 0) {
        sub_0209A74C(0);
    } else {
        switch (OS_GetResetParameter()) {
        case RESET_CLEAN:
            sApplication.args.error = FALSE;
            EnqueueApplication(FS_OVERLAY_ID(overlay77), &gOpeningCutsceneOverlayTemplate);
            break;

        case RESET_ERROR:
            sub_0200F344(0, 0x0);
            sub_0200F344(1, 0x0);
            sApplication.args.error = TRUE;
            EnqueueApplication(FS_OVERLAY_ID(game_start), &gGameStartLoadSaveOverlayTemplate);
            break;

        default:
            GF_ASSERT(FALSE);
        }
    }

    gCoreSys.unk_6C = 1;
    gCoreSys.frameCounter = 0;

    InitRNG();
    sub_0200AB84();
    PlayTime_FlagNotStarted();

    gIgnoreCartridgeForWake = FALSE;

    while (TRUE) {
        CheckHeapCanary();
        HandleConsoleFold();
        ReadKeypadAndTouchpad();

        if ((gCoreSys.heldKeysRaw & RESET_COMBO) == RESET_COMBO && !gCoreSys.inhibitReset) {
            SoftReset(RESET_CLEAN);
        }

        if (CommSys_Update()) {
            CheckHeapCanary();
            RunApplication();
            SysTaskManager_ExecuteTasks(gCoreSys.mainTaskMgr);
            SysTaskManager_ExecuteTasks(gCoreSys.printTaskMgr);

            if (!gCoreSys.frameCounter) {
                OS_WaitIrq(TRUE, OS_IE_V_BLANK);
                gCoreSys.vblankCounter++;
            }
        }

        UpdateRTC();
        sub_02017458();
        sub_020241CC();
        SysTaskManager_ExecuteTasks(gCoreSys.printTaskMgr);

        OS_WaitIrq(TRUE, OS_IE_V_BLANK);

        gCoreSys.vblankCounter++;
        gCoreSys.frameCounter = 0;

        sub_0200ABF0();
        sub_0200F27C();

        if (gCoreSys.mainCallback != NULL) {
            gCoreSys.mainCallback(gCoreSys.mainCallbackData);
        }

        UpdateSound();
        SysTaskManager_ExecuteTasks(gCoreSys.postVBlankTaskMgr);
    }
}

static void InitApplication()
{
    sApplication.currOverlayID = FS_OVERLAY_ID_NONE;
    sApplication.currOverlay = NULL;
    sApplication.nextOverlayID = FS_OVERLAY_ID_NONE;
    sApplication.nextOverlay = NULL;
}

static void RunApplication(void)
{
    if (sApplication.currOverlay == NULL) {
        if (sApplication.nextOverlay == NULL) {
            return;
        }

        if (sApplication.nextOverlayID != FS_OVERLAY_ID_NONE) {
            Overlay_LoadByID(sApplication.nextOverlayID, OVERLAY_LOAD_NORMAL);
        }

        sApplication.currOverlayID = sApplication.nextOverlayID;
        sApplication.currOverlay = OverlayManager_New(sApplication.nextOverlay, &sApplication.args, HEAP_ID_SYSTEM);
        sApplication.nextOverlayID = FS_OVERLAY_ID_NONE;
        sApplication.nextOverlay = NULL;
    }

    if (OverlayManager_Exec(sApplication.currOverlay)) {
        OverlayManager_Free(sApplication.currOverlay);
        sApplication.currOverlay = NULL;

        if (sApplication.currOverlayID != FS_OVERLAY_ID_NONE) {
            Overlay_UnloadByID(sApplication.currOverlayID);
        }
    }
}

void EnqueueApplication(FSOverlayID overlayID, const OverlayManagerTemplate *template)
{
    GF_ASSERT(sApplication.nextOverlay == NULL);

    sApplication.nextOverlayID = overlayID;
    sApplication.nextOverlay = template;
}

static void WaitFrame(void)
{
    CommSys_Update();

    OS_WaitIrq(TRUE, OS_IE_V_BLANK);

    gCoreSys.vblankCounter++;
    gCoreSys.frameCounter = 0;

    if (gCoreSys.mainCallback != NULL) {
        gCoreSys.mainCallback(gCoreSys.mainCallbackData);
    }
}

static void TrySystemReset(enum OSResetParameter resetParam)
{
    if (sub_02038AB8()) {
        if (CARD_TryWaitBackupAsync() == TRUE) {
            OS_ResetSystem(resetParam);
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

static void SoftReset(enum OSResetParameter resetParam)
{
    sub_0200F344(DS_SCREEN_MAIN, 0x7fff);
    sub_0200F344(DS_SCREEN_SUB, 0x7fff);

    if (sub_02037DB0()) {
        SaveData_SaveStateCancel(SaveData_Ptr());
    }

    while (TRUE) {
        HandleConsoleFold();
        TrySystemReset(resetParam);
    }
}

static void HeapCanaryFailed(int resetParam, int param1)
{
    int elapsed;

    if (param1 == 3) {
        sub_02039834(0, 3, 0);
    } else if (0 == resetParam) {
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

    SoftReset(resetParam);
}

void InitRNG(void)
{
    RTCDate date;
    RTCTime time;
    GetCurrentDateTime(&date, &time);

    u32 seed = date.year + date.month * 0x100 * date.day * 0x10000 + time.hour * 0x10000 + (time.minute + time.second) * 0x1000000 + gCoreSys.vblankCounter;

    MTRNG_SetSeed(seed);
    LCRNG_SetSeed(seed);
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
