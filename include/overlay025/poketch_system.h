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

enum ButtonDir {
    BUTTON_UP,
    BUTTON_DOWN,
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

typedef struct PoketchSystem PoketchSystem;

typedef BOOL (* PoketchAppInitFunction)(void **, PoketchSystem *, BGL *, u32);
typedef void (* PoketchAppShutdownFunction)(void *);
typedef void (* PoketchAppSaveFunction)(void *);

struct PoketchSystem {
    u8 unk_00;
    u8 unk_01;
    u8 appState;
    u8 unk_03;
    u8 unk_04;
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
    void * unk_48;
    BGL *bgl;
    NNSG2dOamManagerInstance * unk_50;
    SaveData *saveData;
    PoketchData *poketchData;
    FieldSystem *fieldSys;
    enum ButtonDir buttonDir;
};

void PoketchSystem_Create(FieldSystem *fieldSystem, PoketchSystem **poketchSys, SaveData *saveData, BGL *bgl, NNSG2dOamManagerInstance *oamManager);
void ov25_02253D5C(PoketchSystem *poketchSys);
BOOL ov25_02253D70(PoketchSystem *poketchSys);
void ov25_02253D7C(PoketchSystem *poketchSys, int param1, u32 param2);
BOOL ov25_02253DD4(PoketchSystem *poketchSys);
enum PoketchAppID PoketchSystem_CurrentAppID(PoketchSystem *poketchSys);
void PoketchSystem_SetAppFunctions(PoketchAppInitFunction param0, PoketchAppShutdownFunction param1);
void PoketchSystem_NotifyAppLoaded(PoketchSystem *poketchSys);
void PoketchSystem_NotifyAppUnloaded(PoketchSystem *poketchSys);
void ov25_02254274(PoketchAppSaveFunction param0, void * param1);
UnkStruct_ov25_02254560 * ov25_02254418(void);
void ov25_02254424(u32 param0);
void ov25_02254444(u32 param0, u32 param1);
BOOL ov25_0225446C(u32 * param0, u32 * param1);
BOOL ov25_022544BC(u32 * param0, u32 * param1);
BOOL ov25_0225450C(const PoketchSystem *poketchSys);
void ov25_02254518(const PoketchSystem *poketchSys, PoketchButtonManager * param1);
BOOL ov25_02254534(const PoketchSystem *poketchSys);
BOOL PoketchSystem_PedometerUpdated(const PoketchSystem *poketchSys);
FieldSystem * PoketchSystem_FieldSystem(const PoketchSystem *poketchSys);
PoketchData * PoketchSystem_PoketchData(const PoketchSystem *poketchSys);
SaveData * PoketchSystem_SaveData(const PoketchSystem *poketchSys);
int PoketchSystem_BorderColor(const PoketchSystem *poketchSys);

#endif // POKEPLATINUM_PoketchSystem_GetFromFieldSystem_H
