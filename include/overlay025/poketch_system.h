#ifndef POKEPLATINUM_OV25_02253CE0_H
#define POKEPLATINUM_OV25_02253CE0_H

#include "struct_decls/struct_02018340_decl.h"
#include "field/field_system_decl.h"
#include "poketch_data.h"
#include "savedata.h"
#include "struct_decls/sys_task.h"

#include "overlay025/struct_ov25_02254560_decl.h"
#include "overlay025/struct_ov25_02254560_1.h"
#include "overlay025/poketch_button.h"

#include <nnsys.h>

enum ButtonDir{
    BUTTON_UP,
    BUTTON_DOWN,
};

typedef struct PoketchSystem PoketchSystem;

typedef BOOL (* UnkFuncPtr_ov25_02254238)(void **, PoketchSystem *, BGL *, u32);
typedef void (* UnkFuncPtr_ov25_02254238_1)(void *);
typedef void (* UnkFuncPtr_ov25_02254274)(void *);

struct PoketchSystem {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 pedometerUpdated;
    u32 unk_08;
    BOOL unk_0C;
    u32 unk_10;
    enum PoketchAppID loadedAppID;
    FSOverlayID loadedAppOverlayID;
    UnkStruct_ov25_02254560 * unk_1C;
    UnkStruct_ov25_02254560_1 unk_20;
    void * unk_24;
    PoketchButtonManager * buttonManager;
    u32 unk_2C;
    u32 unk_30;
    PoketchSystem ** poketchSysPtr;
    SysTask * unk_38;
    UnkFuncPtr_ov25_02254238 unk_3C;
    UnkFuncPtr_ov25_02254238_1 unk_40;
    UnkFuncPtr_ov25_02254274 unk_44;
    void * unk_48;
    BGL *bgl;
    NNSG2dOamManagerInstance * unk_50;
    SaveData * saveData;
    PoketchData * poketchData;
    FieldSystem * fieldSystem;
    enum ButtonDir buttonDir;
};

void PoketchSystem_Create(FieldSystem *fieldSystem, PoketchSystem **poketchSys, SaveData *saveData, BGL *bgl, NNSG2dOamManagerInstance *oamManager);
void ov25_02253D5C(PoketchSystem *poketchSys);
BOOL ov25_02253D70(PoketchSystem *poketchSys);
void ov25_02253D7C(PoketchSystem *poketchSys, int param1, u32 param2);
BOOL ov25_02253DD4(PoketchSystem *poketchSys);
enum PoketchAppID PoketchSystem_CurrentAppID(PoketchSystem *poketchSys);
void ov25_02254238(UnkFuncPtr_ov25_02254238 param0, UnkFuncPtr_ov25_02254238_1 param1);
void ov25_0225424C(PoketchSystem *poketchSys);
void ov25_02254260(PoketchSystem *poketchSys);
void ov25_02254274(UnkFuncPtr_ov25_02254274 param0, void * param1);
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
int ov25_02254548(const PoketchSystem *poketchSys);

#endif // POKEPLATINUM_OV25_02253CE0_H
