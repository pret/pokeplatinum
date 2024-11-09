#ifndef POKEPLATINUM_FIELD_SYSTEM_H
#define POKEPLATINUM_FIELD_SYSTEM_H

#include "field/field_system_decl.h"
#include "overlay025/poketch_system.h"

#include "bg_window.h"
#include "overlay_manager.h"
#include "savedata.h"

void FieldSystem_StartFieldMapInner(FieldSystem *fieldSystem);
void FieldSystem_FlagNotRunningFieldMap(FieldSystem *fieldSystem);
BOOL FieldSystem_HasParentProcess(FieldSystem *fieldSystem);
BOOL FieldSystem_IsRunningFieldMapInner(FieldSystem *fieldSystem);
BOOL FieldSystem_HasChildProcess(FieldSystem *fieldSystem);
void FieldSystem_StartChildProcess(FieldSystem *fieldSystem, const OverlayManagerTemplate *overlayTemplate, void *overlayArgs);
void FieldSystem_PauseProcessing(void);
void FieldSystem_ResumeProcessing(void);
PoketchSystem *FieldSystem_GetPoketchSystem(void);
BgConfig *FieldSystem_GetBgConfig(void *fieldSystem);
SaveData *FieldSystem_GetSaveData(void *fieldSystem);

#endif // POKEPLATINUM_UNK_0203CC84_H
