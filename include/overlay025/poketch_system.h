#ifndef POKEPLATINUM_PoketchSystem_GetFromFieldSystem_H
#define POKEPLATINUM_PoketchSystem_GetFromFieldSystem_H

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

enum ButtonDir {
    BUTTON_UP,
    BUTTON_DOWN,
};

enum PoketchMainButton {
    POKETCHSYSTEM_MAINBUTTON_UP,
    // POKETCHSYSTEM_MAINBUTTON_DOWN,
    POKETCHSYSTEM_MAINBUTTON_SCREEN = 2,
};

enum PoketchSystemState {
    POKETCHSYSTEM_INIT,
    POKETCHSYSTEM_UPDATE,
    POKETCHSYSTEM_CHANGEAPP,
    POKETCHSYSTEM_SHUTDOWN,
    POKETCHSYSTEM_UNLOAD
};

enum PoketchAppState {
    POKETCH_APP_STATE_NONE,
    POKETCH_APP_STATE_INIT,
    POKETCH_APP_STATE_UPDATE,
    POKETCH_APP_STATE_SHUTDOWN
};

enum PoketchBorderColor {
    POKETCH_BORDER_PINK,
    POKETCH_BORDER_BLUE
};

enum PoketchFieldEventID {
    POKETCH_FIELDEVENT_SLEEP = 0,
    POKETCH_FIELDEVENT_PLAYERMOVED,
    
    POKETCH_FIELDEVENT_SAVE = 4,
    POKETCH_FIELDEVENT_PEDOMETER,
};

enum PoketchScreenCoordinates {
    POKETCH_SCREEN_MINX = 16,
    POKETCH_SCREEN_MINY = 16,
    POKETCH_SCREEN_MAXX = 207,
    POKETCH_SCREEN_MAXY = 175,
};

typedef struct PoketchSystem PoketchSystem;

typedef BOOL (* PoketchAppInitFunction)(void **, PoketchSystem *, BGL *, u32);
typedef void (* PoketchAppShutdownFunction)(void *);
typedef void (* PoketchAppSaveFunction)(void *);

struct PoketchSystem {
    u8 systemState;
    u8 subState; // each systemState has its own sub-state machine, they all share this variable
    u8 appState;
    u8 touchingScreen;
    u8 playerMoved;
    u8 unk_05;
    u8 unk_06;
    u8 pedometerUpdated;
    u32 buttonState;
    BOOL unk_0C;
    u32 unk_10;
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
    FieldSystem *fieldSys;
    enum ButtonDir buttonDir;
};

void PoketchSystem_Create(FieldSystem *fieldSys, PoketchSystem **poketchSys, SaveData *saveData, BGL *bgl, NNSG2dOamManagerInstance *oamManager);
void PoketchSystem_StartShutdown(PoketchSystem *poketchSys);
BOOL PoketchSystem_IsSystemShutdown(PoketchSystem *poketchSys);
void PoketchSystem_SendFieldEvent(PoketchSystem *poketchSys, enum PoketchFieldEventID eventID, u32);
BOOL PoketchSystem_CheckTouch(PoketchSystem *poketchSys);
enum PoketchAppID PoketchSystem_CurrentAppID(PoketchSystem *poketchSys);
void PoketchSystem_SetAppFunctions(PoketchAppInitFunction initFunction, PoketchAppShutdownFunction shutdownFunction);
void PoketchSystem_NotifyAppLoaded(PoketchSystem *poketchSys);
void PoketchSystem_NotifyAppUnloaded(PoketchSystem *poketchSys);
void PoketchSystem_SetSaveFunction(PoketchAppSaveFunction saveFunction, void *saveData);
UnkStruct_ov25_02254560 * ov25_02254418(void);
void PoketchSystem_PlaySoundEffect(u32 param0);
void ov25_02254444(u32 param0, u32 param1);
BOOL PoketchSystem_IsTouchingDisplay(u32 *x, u32 *y);
BOOL PoketchSystem_TappedDisplay(u32 *x, u32 *y);
BOOL ov25_0225450C(const PoketchSystem *poketchSys);
void ov25_02254518(const PoketchSystem *poketchSys, PoketchButtonManager * param1);
BOOL ov25_02254534(const PoketchSystem *poketchSys);
BOOL PoketchSystem_PedometerUpdated(const PoketchSystem *poketchSys);
FieldSystem * PoketchSystem_FieldSystem(const PoketchSystem *poketchSys);
PoketchData * PoketchSystem_PoketchData(const PoketchSystem *poketchSys);
SaveData * PoketchSystem_SaveData(const PoketchSystem *poketchSys);
int PoketchSystem_BorderColor(const PoketchSystem *poketchSys);

#endif // POKEPLATINUM_PoketchSystem_GetFromFieldSystem_H
