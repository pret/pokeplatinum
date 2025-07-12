#ifndef POKEPLATINUM_SYSTEM_H
#define POKEPLATINUM_SYSTEM_H

#include "constants/heap.h"
#include "constants/system.h"

#include "sys_task_manager.h"

typedef void (*Callback)(void *);
typedef void (*UnkCallback)(void);

enum ButtonMode {
    BUTTON_MODE_NORMAL = 0,
    BUTTON_MODE_START_IS_X = 1,
    BUTTON_MODE_SWAP_XY = 2,
    BUTTON_MODE_L_IS_A = 3,
};

enum SleepType {
    SLEEP_TYPE_SAVE_DATA = 1,
};

#define PAD_KEY             (PAD_KEY_UP | PAD_KEY_DOWN | PAD_KEY_LEFT | PAD_KEY_RIGHT)
#define JOY_NEW(buttons)    (gSystem.pressedKeys & (buttons))
#define JOY_HELD(buttons)   (gSystem.heldKeys & (buttons))
#define JOY_REPEAT(buttons) (gSystem.pressedKeysRepeatable & (buttons))

typedef struct System {
    Callback vblankCallback;
    void *vblankCallbackData;
    Callback hblankCallback;
    void *hblankCallbackData;
    UnkCallback dummyCallback_10;
    UnkCallback dummyCallback_14;
    SysTaskManager *mainTaskMgr;
    SysTaskManager *vBlankTaskMgr;
    SysTaskManager *postVBlankTaskMgr;
    SysTaskManager *printTaskMgr;
    u32 *unused_28;
    u32 vblankCounter;
    u32 frameCounter;
    enum ButtonMode buttonMode;
    u32 heldKeysRaw;
    u32 pressedKeysRaw;
    u32 pressedKeysRepeatableRaw;
    u32 heldKeys;
    u32 pressedKeys;
    u32 pressedKeysRepeatable;
    int autorepeatTimer;
    int autorepeatRate;
    int autorepeatDelay;
    u16 touchX;
    u16 touchY;
    u16 touchPressed;
    u16 touchHeld;
    u8 touchAutoSampling;
    u8 whichScreenIs3D;
    u8 gbaCartridgeVersion;
    u8 inhibitSleep;
    u8 inhibitReset;
    u8 padding_69[3];
    BOOL unk_6C;
    u32 *heapCanary;
} System;

extern System gSystem;

void SetDummyVBlankIntr(void);
void SetVBlankCallback(Callback cb, void *data);
void DisableHBlank(void);
BOOL SetHBlankCallback(Callback cb, void *data);
void InitSystem(void);
void InitVRAM(void);
void *ReadFileToHeap(int heapID, const char *filename);
void ReadFileToBuffer(const char *filename, void **buf);
void ClearUnusedSystemCache(void);
void InitKeypadAndTouchpad(void);
void SetGBACartridgeVersion(int version);
void SleepLock(u8 mask);
void SleepUnlock(u8 mask);
void ReadKeypadAndTouchpad(void);
void SetAutorepeat(int rate, int delay);
void ResetLock(u8 mask);
void ResetUnlock(u8 mask);
void InitHeapCanary(enum HeapID param0);
void FreeHeapCanary(void);
BOOL HeapCanaryOK(void);

#endif // POKEPLATINUM_SYSTEM_H
