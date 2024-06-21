#ifndef POKEPLATINUM_POKETCH_SYSTEM_H
#define POKEPLATINUM_POKETCH_SYSTEM_H

#include "struct_decls/struct_02018340_decl.h"
#include "field/field_system_decl.h"
#include "poketch_data.h"
#include "savedata.h"
#include "struct_decls/sys_task.h"

#include "overlay025/struct_ov25_02254560_decl.h"
#include "overlay025/struct_ov25_02254560_1.h"
#include "overlay025/poketch_button.h"

#include <nnsys.h>

#define POKETCH_PEDOMETER_MAX 99999

#define POKETCH_SCREEN_MIN_X 16
#define POKETCH_SCREEN_MAX_X 207

#define POKETCH_SCREEN_MIN_Y 16
#define POKETCH_SCREEN_MAX_Y 175

#define POKETCH_BUTTON_TOP_MIN_X 224
#define POKETCH_BUTTON_TOP_MAX_X 255

#define POKETCH_BUTTON_TOP_MIN_Y 32
#define POKETCH_BUTTON_TOP_MAX_Y 96

#define POKETCH_BUTTON_BOTTOM_MIN_X 224
#define POKETCH_BUTTON_BOTTOM_MAX_X 255

#define POKETCH_BUTTON_BOTTOM_MIN_Y 96
#define POKETCH_BUTTON_BOTTOM_MAX_Y 160

enum ButtonDir {
    BUTTON_UP,
    BUTTON_DOWN,
};

enum PoketchMainButton {
    POKETCH_SYSTEM_MAIN_BUTTON_UP = 0,
    POKETCH_SYSTEM_MAIN_BUTTON_DOWN,
    POKETCH_SYSTEM_MAIN_BUTTON_SCREEN,
};

enum PoketchSystemState {
    POKETCH_SYSTEM_INIT = 0,
    POKETCH_SYSTEM_UPDATE,
    POKETCH_SYSTEM_CHANGE_APP,
    POKETCH_SYSTEM_SHUTDOWN,
    POKETCH_SYSTEM_UNLOAD
};

enum PoketchAppState {
    POKETCH_APP_STATE_NONE = 0,
    POKETCH_APP_STATE_INIT,
    POKETCH_APP_STATE_UPDATE,
    POKETCH_APP_STATE_SHUTDOWN
};

enum PoketchBorderColor {
    POKETCH_BORDER_PINK = 0,
    POKETCH_BORDER_BLUE
};

enum PoketchEventID {
    POKETCH_EVENT_SLEEP = 0,
    POKETCH_EVENT_PLAYER_MOVED,
    
    POKETCH_EVENT_SAVE = 4,
    POKETCH_EVENT_PEDOMETER,
};

typedef struct PoketchSystem PoketchSystem;

typedef BOOL (* PoketchAppInitFunction)(void **app, PoketchSystem *poketchSys, BGL *bgl, u32 appID);
typedef void (* PoketchAppShutdownFunction)(void *app);
typedef void (* PoketchAppSaveFunction)(void *app);

struct PoketchSystem {
    u8 systemState;
    u8 subState; // each systemState has its own sub-state machine, they all share this variable
    u8 appState;
    u8 touchingScreen;
    u8 playerMoving;
    u8 appChanging;
    u8 unk_06;
    u8 pedometerUpdated;
    u32 buttonState;
    BOOL skipApp;
    u32 appSkipTimer;
    enum PoketchAppID loadedAppID;
    FSOverlayID loadedAppOverlayID;
    UnkStruct_ov25_02254560 * unk_1C;
    UnkStruct_ov25_02254560_1 unk_20;
    void * unk_24;
    PoketchButtonManager *buttonManager;
    u32 unk_2C;
    u32 unk_30;
    PoketchSystem ** poketchSysPtr;
    SysTask * unk_38;

    PoketchAppInitFunction currAppInit;
    PoketchAppShutdownFunction currAppShutdown;
    PoketchAppSaveFunction currAppSave;
    void * appSaveData;

    BGL *bgl;
    NNSG2dOamManagerInstance * oamManager;

    SaveData *saveData;
    PoketchData *poketchData;
    FieldSystem *fieldSystem;
    enum ButtonDir buttonDir;
};

void PoketchSystem_Create(FieldSystem *fieldSystem, PoketchSystem **poketchSys, SaveData *saveData, BGL *bgl, NNSG2dOamManagerInstance *oamManager);
void PoketchSystem_StartShutdown(PoketchSystem *poketchSys);
BOOL PoketchSystem_IsSystemShutdown(PoketchSystem *poketchSys);
void PoketchSystem_SendEvent(PoketchSystem *poketchSys, enum PoketchEventID eventID, u32);
BOOL PoketchSystem_IsTapped(PoketchSystem *poketchSys);
enum PoketchAppID PoketchSystem_CurrentAppID(PoketchSystem *poketchSys);
void PoketchSystem_SetAppFunctions(PoketchAppInitFunction initFunction, PoketchAppShutdownFunction shutdownFunction);
void PoketchSystem_NotifyAppLoaded(PoketchSystem *poketchSys);
void PoketchSystem_NotifyAppUnloaded(PoketchSystem *poketchSys);
void PoketchSystem_SetSaveFunction(PoketchAppSaveFunction saveFunction, void *saveData);
UnkStruct_ov25_02254560 * ov25_02254418(void);
void PoketchSystem_PlaySoundEffect(u32 soundID);
void ov25_02254444(u32 param0, u32 param1);
BOOL PoketchSystem_GetDisplayHeldCoords(u32 *x, u32 *y);
BOOL PoketchSystem_GetDisplayTappedCoords(u32 *x, u32 *y);
BOOL ov25_0225450C(const PoketchSystem *poketchSys);
void ov25_02254518(const PoketchSystem *poketchSys, PoketchButtonManager * param1);
BOOL PoketchSystem_IsPlayerMoving(const PoketchSystem *poketchSys);
BOOL PoketchSystem_PedometerUpdated(const PoketchSystem *poketchSys);
FieldSystem * PoketchSystem_GetFieldSystem(const PoketchSystem *poketchSys);
PoketchData * PoketchSystem_GetPoketchData(const PoketchSystem *poketchSys);
SaveData * PoketchSystem_GetSaveData(const PoketchSystem *poketchSys);
int PoketchSystem_GetBorderColor(const PoketchSystem *poketchSys);

#endif // POKEPLATINUM_POKETCH_SYSTEM_H
