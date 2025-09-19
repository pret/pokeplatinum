#ifndef POKEPLATINUM_OVERLAY005_POKETCH_SYSTEM_H
#define POKEPLATINUM_OVERLAY005_POKETCH_SYSTEM_H

#include "applications/poketch/poketch_system.h"
#include "field/field_system_decl.h"

void FieldSystem_SendPoketchEvent(FieldSystem *fieldSystem, enum PoketchEventID eventID, u32 dummy);
void PoketchSystem_InitBottomScreen(FieldSystem *fieldSystem);
void PoketchSystem_EndBottomScreen(FieldSystem *fieldSystem);
BOOL PoketchSystem_IsBottomScreenDone(FieldSystem *fieldSystem);
void BottomScreen_InitPoketchUnavailable(FieldSystem *fieldSystem);
void BottomScreen_EndPoketchUnavailable(FieldSystem *fieldSystem);
BOOL BottomScreen_IsPoketchUnavailableDone(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_OVERLAY005_POKETCH_SYSTEM_H
