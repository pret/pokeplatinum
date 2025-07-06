#include "main.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "constants/screen.h"

#include "overlay077/const_ov77_021D742C.h"

#include "assert.h"
#include "bg_window.h"
#include "brightness_controller.h"
#include "communication_system.h"
#include "font.h"
#include "game_overlay.h"
#include "game_start.h"
#include "main.h"
#include "math_util.h"
#include "overlay_manager.h"
#include "rtc.h"
#include "save_player.h"
#include "savedata.h"
#include "screen_fade.h"
#include "sound_system.h"
#include "sys_task_manager.h"
#include "system.h"
#include "touch_pad.h"
#include "unk_02017428.h"
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
    ApplicationManager *currApplication;
    FSOverlayID nextOverlayID;
    const ApplicationManagerTemplate *nextApplication;
    ApplicationArgs args;
} Application;

static void InitApplication(void);
static void RunApplication(void);
static void WaitFrame(void);
static void TrySystemReset(enum OSResetParameter resetParam);
static void SoftReset(enum OSResetParameter resetParam);
static void HeapCanaryFailed(int resetParam, int param1);
static void CheckHeapCanary(void);

static Application sApplication;
// This variable doesn't really makes sense. If it's set to off, the game will
// repeatedly try to restore the backlight to its saved state.
static PMBackLightSwitch sSavedBacklightState;
BOOL gIgnoreCartridgeForWake;
extern const ApplicationManagerTemplate gOpeningCutsceneAppTemplate;

void NitroMain(void)
{
    InitSystem();
    InitVRAM();
    InitKeypadAndTouchpad();

    SetGBACartridgeVersion(VERSION_NONE);
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

    SoundSystem_Init(SaveData_GetChatotCry(sApplication.args.saveData), SaveData_GetOptions(sApplication.args.saveData));
    sub_02022844();

    if (sub_02038FFC(HEAP_ID_APPLICATION) == DWC_INIT_RESULT_DESTROY_OTHER_SETTING) {
        sub_02039A64(HEAP_ID_APPLICATION, 0);
    }

    if (SaveData_BackupExists(sApplication.args.saveData) == FALSE) {
        sub_0209A74C(HEAP_ID_SYSTEM);
    } else {
        switch (OS_GetResetParameter()) {
        case RESET_CLEAN:
            sApplication.args.error = FALSE;
            EnqueueApplication(FS_OVERLAY_ID(overlay77), &gOpeningCutsceneAppTemplate);
            break;

        case RESET_ERROR:
            SetScreenColorBrightness(DS_SCREEN_MAIN, FADE_TO_BLACK);
            SetScreenColorBrightness(DS_SCREEN_SUB, FADE_TO_BLACK);
            sApplication.args.error = TRUE;
            EnqueueApplication(FS_OVERLAY_ID(game_start), &gGameStartLoadSaveAppTemplate);
            break;

        default:
            GF_ASSERT(FALSE);
        }
    }

    gSystem.unk_6C = 1;
    gSystem.frameCounter = 0;

    InitRNG();
    BrightnessController_ResetAllControllers();
    PlayTime_FlagNotStarted();

    gIgnoreCartridgeForWake = FALSE;

    while (TRUE) {
        CheckHeapCanary();
        HandleConsoleFold();
        ReadKeypadAndTouchpad();

        if ((gSystem.heldKeysRaw & RESET_COMBO) == RESET_COMBO && !gSystem.inhibitReset) {
            SoftReset(RESET_CLEAN);
        }

        if (CommSys_Update()) {
            CheckHeapCanary();
            RunApplication();
            SysTaskManager_ExecuteTasks(gSystem.mainTaskMgr);
            SysTaskManager_ExecuteTasks(gSystem.printTaskMgr);

            if (!gSystem.frameCounter) {
                OS_WaitIrq(TRUE, OS_IE_V_BLANK);
                gSystem.vblankCounter++;
            }
        }

        UpdateRTC();
        sub_02017458();
        sub_020241CC();
        SysTaskManager_ExecuteTasks(gSystem.printTaskMgr);

        OS_WaitIrq(TRUE, OS_IE_V_BLANK);

        gSystem.vblankCounter++;
        gSystem.frameCounter = 0;

        BrightnessController_Update();
        ExecScreenFade();

        if (gSystem.vblankCallback != NULL) {
            gSystem.vblankCallback(gSystem.vblankCallbackData);
        }

        SoundSystem_Tick();
        SysTaskManager_ExecuteTasks(gSystem.postVBlankTaskMgr);
    }
}

static void InitApplication()
{
    sApplication.currOverlayID = FS_OVERLAY_ID_NONE;
    sApplication.currApplication = NULL;
    sApplication.nextOverlayID = FS_OVERLAY_ID_NONE;
    sApplication.nextApplication = NULL;
}

static void RunApplication(void)
{
    if (sApplication.currApplication == NULL) {
        if (sApplication.nextApplication == NULL) {
            return;
        }

        if (sApplication.nextOverlayID != FS_OVERLAY_ID_NONE) {
            Overlay_LoadByID(sApplication.nextOverlayID, OVERLAY_LOAD_NORMAL);
        }

        sApplication.currOverlayID = sApplication.nextOverlayID;
        sApplication.currApplication = ApplicationManager_New(sApplication.nextApplication, &sApplication.args, HEAP_ID_SYSTEM);
        sApplication.nextOverlayID = FS_OVERLAY_ID_NONE;
        sApplication.nextApplication = NULL;
    }

    if (ApplicationManager_Exec(sApplication.currApplication)) {
        ApplicationManager_Free(sApplication.currApplication);
        sApplication.currApplication = NULL;

        if (sApplication.currOverlayID != FS_OVERLAY_ID_NONE) {
            Overlay_UnloadByID(sApplication.currOverlayID);
        }
    }
}

void EnqueueApplication(FSOverlayID overlayID, const ApplicationManagerTemplate *template)
{
    GF_ASSERT(sApplication.nextApplication == NULL);

    sApplication.nextOverlayID = overlayID;
    sApplication.nextApplication = template;
}

static void WaitFrame(void)
{
    CommSys_Update();

    OS_WaitIrq(TRUE, OS_IE_V_BLANK);

    gSystem.vblankCounter++;
    gSystem.frameCounter = 0;

    if (gSystem.vblankCallback != NULL) {
        gSystem.vblankCallback(gSystem.vblankCallbackData);
    }
}

static void TrySystemReset(enum OSResetParameter resetParam)
{
    if (sub_02038AB8() && CARD_TryWaitBackupAsync() == TRUE) {
        OS_ResetSystem(resetParam);
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
    SetScreenColorBrightness(DS_SCREEN_MAIN, FADE_TO_WHITE);
    SetScreenColorBrightness(DS_SCREEN_SUB, FADE_TO_WHITE);

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
        NetworkError_DisplayNetworkError(HEAP_ID_SYSTEM, 3, 0);
    } else if (resetParam == RESET_CLEAN) {
        if (CommMan_IsConnectedToWifi() == TRUE) {
            NetworkError_DisplayNetworkError(HEAP_ID_SYSTEM, 6, 0);
        } else {
            NetworkError_DisplayNetworkError(HEAP_ID_SYSTEM, 2, 0);
        }
    } else {
        if (CommMan_IsConnectedToWifi() == TRUE) {
            NetworkError_DisplayNetworkError(HEAP_ID_SYSTEM, 5, 0);
        } else {
            NetworkError_DisplayNetworkError(HEAP_ID_SYSTEM, 0, 0);
        }
    }

    sub_02037DB0();
    WaitFrame();
    SoundSystem_Tick();

    elapsed = 0;

    while (TRUE) {
        HandleConsoleFold();
        ReadKeypadAndTouchpad();

        if (elapsed >= 30 && gSystem.pressedKeys & PAD_BUTTON_A) {
            break;
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

    u32 seed = date.year + date.month * 0x100 * date.day * 0x10000 + time.hour * 0x10000 + (time.minute + time.second) * 0x1000000 + gSystem.vblankCounter;

    MTRNG_SetSeed(seed);
    LCRNG_SetSeed(seed);
}

void HandleConsoleFold(void)
{
    PMBackLightSwitch top, bottom;
    PMWakeUpTrigger trigger;

    if (PAD_DetectFold()) {
        if (gSystem.inhibitSleep == 0) {
            BeforeSleep();

            if (CTRDG_IsPulledOut() == TRUE) {
                gIgnoreCartridgeForWake = TRUE;
            }

sleep_again:
            trigger = PM_TRIGGER_COVER_OPEN | PM_TRIGGER_CARD;

            if (gSystem.gbaCartridgeVersion && !gIgnoreCartridgeForWake) {
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
