#include "system.h"

#include <string.h>

#include "constants/heap.h"

#include "boot.h"
#include "heap.h"
#include "math.h"
#include "sys_task_manager.h"

typedef struct {
    void *unk_00;
    u32 unk_04;
} UnkStruct_021BF6F0;

static void SetHBlankEnabled(BOOL param0);
void sub_0201777C(void);
static void ApplyButtonModeToInput(void);

System gSystem;

void sub_02017728(void)
{
    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
    MI_WaitDma(GX_DEFAULT_DMAID);
    SysTaskManager_ExecuteTasks(gSystem.vBlankTaskMgr);
    gSystem.frameCounter++;
}

static void sub_0201775C(void)
{
    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
    MI_WaitDma(GX_DEFAULT_DMAID);
}

void sub_0201777C(void)
{
    (void)OS_DisableIrqMask(OS_IE_V_BLANK);
    OS_SetIrqFunction(OS_IE_V_BLANK, sub_0201775C);
    (void)OS_EnableIrqMask(OS_IE_V_BLANK);
}

void SetMainCallback(Callback cb, void *data)
{
    gSystem.mainCallback = cb;
    gSystem.mainCallbackData = data;
}

void DisableHBlank(void)
{
    SetHBlankEnabled(0);
    gSystem.hblankCallback = NULL;
    gSystem.hblankCallbackData = NULL;
}

BOOL SetHBlankCallback(Callback cb, void *data)
{
    if (cb == NULL) {
        SetHBlankEnabled(0);
        gSystem.hblankCallback = NULL;
        gSystem.hblankCallbackData = NULL;
        return 1;
    } else {
        if (gSystem.hblankCallback == NULL) {
            gSystem.hblankCallbackData = data;
            gSystem.hblankCallback = cb;
            SetHBlankEnabled(1);
            return 1;
        } else {
            return 0;
        }
    }
}

static void HBlankIntr(void)
{
    if (gSystem.hblankCallback) {
        gSystem.hblankCallback(gSystem.hblankCallbackData);
    }
}

static void SetHBlankEnabled(BOOL enabled)
{
    OSIrqMask savedMask;

    OS_DisableIrq();

    if (!enabled) {
        savedMask = OS_GetIrqMask();
        OS_DisableIrqMask(OS_IE_H_BLANK);
        GX_HBlankIntr(0);
    } else {
        savedMask = OS_GetIrqMask();
        OS_SetIrqFunction(OS_IE_H_BLANK, HBlankIntr);
        OS_EnableIrqMask(OS_IE_H_BLANK);
        GX_HBlankIntr(1);
    }

    OS_EnableIrq();
}

static const HeapParam Unk_020E5674[] = {
    { 0xD200, OS_ARENA_MAIN },
    { 0x20E00, OS_ARENA_MAIN },
    { 0x10, OS_ARENA_MAIN },
    { 0x10D800, OS_ARENA_MAIN }
};

static void sub_02017850(void)
{
    u32 v0[8];
    u8 v1[MATH_MD5_DIGEST_SIZE];
    u32 v2, v3;

    OS_GetLowEntropyData(v0);
    MATH_CalcMD5(v1, v0, sizeof(v0));

    v2 = 0;

    for (v3 = 0; v3 < MATH_MD5_DIGEST_SIZE; v3++) {
        v2 += v1[v3];
    }

    v2 %= 256;

    while (v2 % 4) {
        v2++;
    }

    Heap_InitSystem(Unk_020E5674, NELEMS(Unk_020E5674), 123, v2);
}

void sub_0201789C(void)
{
    OS_Init();
    FX_Init();

    GX_SetPower(GX_POWER_ALL);
    GX_Init();

    OS_InitTick();
    sub_02017850();

    gSystem.mainTaskMgr = SysTaskManager_Init(160, OS_AllocFromMainArenaLo(SysTaskManager_GetRequiredSize(160), 4));
    gSystem.vBlankTaskMgr = SysTaskManager_Init(32, OS_AllocFromMainArenaLo(SysTaskManager_GetRequiredSize(32), 4));
    gSystem.postVBlankTaskMgr = SysTaskManager_Init(32, OS_AllocFromMainArenaLo(SysTaskManager_GetRequiredSize(32), 4));
    gSystem.printTaskMgr = SysTaskManager_Init(4, OS_AllocFromMainArenaLo(SysTaskManager_GetRequiredSize(4), 4));

    GX_DispOff();
    GXS_DispOff();

    GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);
    OS_SetIrqFunction(OS_IE_V_BLANK, sub_02017728);

    (void)OS_EnableIrqMask(OS_IE_V_BLANK);
    (void)OS_EnableIrqMask(OS_IE_FIFO_RECV);
    (void)OS_EnableIrq();
    (void)GX_VBlankIntr(1);

    FS_Init(1);
    CheckForMemoryTampering();

    {
        u32 v0 = FS_GetTableSize();
        void *v1 = OS_AllocFromMainArenaLo(v0, 4);

        GF_ASSERT(v1 != NULL);
        FS_LoadTable(v1, v0);
    }

    gSystem.mainCallback = NULL;
    gSystem.hblankCallback = NULL;
    gSystem.dummyCallback_10 = NULL;
    gSystem.dummyCallback_14 = NULL;
    gSystem.heapCanary = NULL;
    gSystem.vblankCounter = 0;
    gSystem.unk_65 = 0;

    CARD_SetCacheFlushThreshold(0x500, 0x2400);

    InitCRC16Table(HEAP_ID_SYSTEM);
}

void InitGraphics(void)
{
    GX_SetBankForLCDC(GX_VRAM_LCDC_ALL);

    MI_CpuClearFast((void *)HW_LCDC_VRAM, HW_LCDC_VRAM_SIZE);
    GX_DisableBankForLCDC();

    MI_CpuFillFast((void *)HW_OAM, 192, HW_OAM_SIZE);
    MI_CpuFillFast((void *)HW_DB_OAM, 192, HW_DB_OAM_SIZE);

    MI_CpuClearFast((void *)HW_PLTT, HW_PLTT_SIZE);
    MI_CpuClearFast((void *)HW_DB_PLTT, HW_DB_PLTT_SIZE);
}

void *ReadFileToHeap(int heapID, const char *filename)
{
    FSFile file;
    void *buf;

    FS_InitFile(&file);

    if (FS_OpenFile(&file, filename)) {
        u32 length = FS_GetLength(&file);

        buf = Heap_AllocFromHeap(heapID, length);

        if (buf != NULL) {
            if (FS_ReadFile(&file, buf, length) != length) {
                Heap_FreeToHeapExplicit(heapID, buf);
                buf = NULL;
            }
        }

        FS_CloseFile(&file);
    } else {
        buf = NULL;
    }

    return buf;
}

void ReadFileToBuffer(const char *filename, void **buf)
{
    FSFile file;

    FS_InitFile(&file);

    if (FS_OpenFile(&file, filename)) {
        u32 length = FS_GetLength(&file);

        if (*buf != NULL) {
            if (FS_ReadFile(&file, *buf, length) != length) {
                /* error not handled */
            }
        }

        FS_CloseFile(&file);
    }
}

UnkStruct_021BF6F0 Unk_021BF6F0[128];

void sub_02017ACC(void)
{
    int v0;

    for (v0 = 128 - 1; v0 > -1; v0--) {
        if (Unk_021BF6F0[v0].unk_00 != NULL) {
            Heap_FreeToHeap(Unk_021BF6F0[v0].unk_00);

            Unk_021BF6F0[v0].unk_00 = NULL;
            Unk_021BF6F0[v0].unk_04 = 0;
        }
    }
}

void InitKeypadAndTouchpad(void)
{
    TPCalibrateParam v0;

    gSystem.buttonMode = 0;
    gSystem.heldKeysRaw = 0;
    gSystem.pressedKeysRaw = 0;
    gSystem.pressedKeysRepeatableRaw = 0;
    gSystem.heldKeys = 0;
    gSystem.pressedKeys = 0;
    gSystem.pressedKeysRepeatable = 0;
    gSystem.autorepeatTimer = 0;
    gSystem.autorepeatRate = 4;
    gSystem.autorepeatDelay = 8;
    gSystem.touchX = 0;
    gSystem.touchY = 0;
    gSystem.touchPressed = 0;
    gSystem.touchHeld = 0;
    gSystem.unk_64 = 0;

    TP_Init();

    if (TP_GetUserInfo(&v0) == 1) {
        TP_SetCalibrateParam(&v0);
    } else {
        v0.x0 = 0x2ae;
        v0.y0 = 0x58c;
        v0.xDotSize = 0xe25;
        v0.yDotSize = 0x1208;

        TP_SetCalibrateParam(&v0);
    }
}

void SetGBACartridgeVersion(int version)
{
    gSystem.gbaCartridgeVersion = version;
}

void SleepLock(u8 param0)
{
    gSystem.inhibitSleep |= param0;
}

void SleepUnlock(u8 param0)
{
    gSystem.inhibitSleep &= ~(param0);
}

void ReadKeypadAndTouchpad(void)
{
    TPData tpRaw;
    TPData tp;
    u32 padRead;

    if (PAD_DetectFold()) {
        // Can't press any buttons while the lid is closed.
        gSystem.pressedKeys = 0;
        gSystem.heldKeys = 0;
        gSystem.pressedKeysRepeatable = 0;
        gSystem.touchPressed = 0;
        gSystem.touchHeld = 0;
        return;
    }

    padRead = PAD_Read();

    gSystem.pressedKeysRaw = padRead & (padRead ^ gSystem.heldKeysRaw);
    gSystem.pressedKeysRepeatableRaw = gSystem.pressedKeysRaw;

    if ((padRead != 0) && (gSystem.heldKeysRaw == padRead)) {
        if (--gSystem.autorepeatTimer == 0) {
            gSystem.pressedKeysRepeatableRaw = padRead;
            gSystem.autorepeatTimer = gSystem.autorepeatRate;
        }
    } else {
        gSystem.autorepeatTimer = gSystem.autorepeatDelay;
    }

    gSystem.heldKeysRaw = padRead;

    gSystem.pressedKeys = gSystem.pressedKeysRaw;
    gSystem.heldKeys = gSystem.heldKeysRaw;
    gSystem.pressedKeysRepeatable = gSystem.pressedKeysRepeatableRaw;

    ApplyButtonModeToInput();

    if (gSystem.unk_64 == 0) {
        while (TP_RequestRawSampling(&tpRaw) != 0)
            ;
    } else {
        TP_GetLatestRawPointInAuto(&tpRaw);
    }

    TP_GetCalibratedPoint(&tp, &tpRaw);

    if (tp.validity == TP_VALIDITY_VALID) {
        gSystem.touchX = tp.x;
        gSystem.touchY = tp.y;
    } else {
        if (gSystem.touchHeld) {
            switch (tp.validity) {
            case TP_VALIDITY_INVALID_X:
                gSystem.touchY = tp.y;
                break;
            case TP_VALIDITY_INVALID_Y:
                gSystem.touchX = tp.x;
                break;
            case TP_VALIDITY_INVALID_XY:
                break;
            default:
                break;
            }
        } else {
            tp.touch = 0;
        }
    }

    gSystem.touchPressed = (u16)(tp.touch & (tp.touch ^ gSystem.touchHeld));
    gSystem.touchHeld = tp.touch;
}

static void ApplyButtonModeToInput(void)
{
    switch (gSystem.buttonMode) {
    default:
    case BUTTON_MODE_NORMAL:
        break;
    case BUTTON_MODE_START_IS_X:
        if (gSystem.pressedKeys & PAD_BUTTON_START) {
            gSystem.pressedKeys |= PAD_BUTTON_X;
        }

        if (gSystem.heldKeys & PAD_BUTTON_START) {
            gSystem.heldKeys |= PAD_BUTTON_X;
        }

        if (gSystem.pressedKeysRepeatable & PAD_BUTTON_START) {
            gSystem.pressedKeysRepeatable |= PAD_BUTTON_X;
        }
        break;
    case BUTTON_MODE_SWAP_XY: {
        u32 tmp = 0;

        if (gSystem.pressedKeys & PAD_BUTTON_X) {
            tmp |= PAD_BUTTON_Y;
        }

        if (gSystem.pressedKeys & PAD_BUTTON_Y) {
            tmp |= PAD_BUTTON_X;
        }

        gSystem.pressedKeys &= ((PAD_BUTTON_X | PAD_BUTTON_Y) ^ 0xffff);
        gSystem.pressedKeys |= tmp;
    }
        {
            u32 tmp = 0;

            if (gSystem.heldKeys & PAD_BUTTON_X) {
                tmp |= PAD_BUTTON_Y;
            }

            if (gSystem.heldKeys & PAD_BUTTON_Y) {
                tmp |= PAD_BUTTON_X;
            }

            gSystem.heldKeys &= ((PAD_BUTTON_X | PAD_BUTTON_Y) ^ 0xffff);
            gSystem.heldKeys |= tmp;
        }
        {
            u32 tmp = 0;

            if (gSystem.pressedKeysRepeatable & PAD_BUTTON_X) {
                tmp |= PAD_BUTTON_Y;
            }

            if (gSystem.pressedKeysRepeatable & PAD_BUTTON_Y) {
                tmp |= PAD_BUTTON_X;
            }

            gSystem.pressedKeysRepeatable &= ((PAD_BUTTON_X | PAD_BUTTON_Y) ^ 0xffff);
            gSystem.pressedKeysRepeatable |= tmp;
        }
        break;
    case BUTTON_MODE_L_IS_A:
        if (gSystem.pressedKeys & PAD_BUTTON_L) {
            gSystem.pressedKeys |= PAD_BUTTON_A;
        }

        if (gSystem.heldKeys & PAD_BUTTON_L) {
            gSystem.heldKeys |= PAD_BUTTON_A;
        }

        if (gSystem.pressedKeysRepeatable & PAD_BUTTON_L) {
            gSystem.pressedKeysRepeatable |= PAD_BUTTON_A;
        }

        gSystem.pressedKeys &= ((PAD_BUTTON_L | PAD_BUTTON_R) ^ 0xffff);
        gSystem.heldKeys &= ((PAD_BUTTON_L | PAD_BUTTON_R) ^ 0xffff);
        gSystem.pressedKeysRepeatable &= ((PAD_BUTTON_L | PAD_BUTTON_R) ^ 0xffff);
        break;
    }
}

void SetAutorepeat(int rate, int delay)
{
    gSystem.autorepeatRate = rate;
    gSystem.autorepeatDelay = delay;
}

void ResetLock(u8 param0)
{
    gSystem.inhibitReset |= param0;
}

void ResetUnlock(u8 param0)
{
    gSystem.inhibitReset &= ~(param0);
}

#define HEAP_CANARY 0x2f93a1bc

void InitHeapCanary(int heapID)
{
    GF_ASSERT(gSystem.heapCanary == NULL);

    gSystem.heapCanary = Heap_AllocFromHeapAtEnd(heapID, sizeof(u32));
    *(gSystem.heapCanary) = HEAP_CANARY;
}

void FreeHeapCanary(void)
{
    GF_ASSERT(gSystem.heapCanary != NULL);

    *(gSystem.heapCanary) = 0;
    Heap_FreeToHeap(gSystem.heapCanary);
    gSystem.heapCanary = NULL;
}

BOOL HeapCanaryOK(void)
{
    if (gSystem.heapCanary && *gSystem.heapCanary == HEAP_CANARY) {
        return 1;
    }

    return 0;
}
