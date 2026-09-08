#ifndef POKEPLATINUM_POFFIN_BERRY_SELECTION_CONTEXT_H
#define POKEPLATINUM_POFFIN_BERRY_SELECTION_CONTEXT_H

#include "applications/poffin_berry_selection.h"
#include "field/field_system_decl.h"

#include "savedata.h"

PoffinBerrySelectionContext *PoffinBerrySelectionContext_Create(FieldSystem *fieldSystem, BOOL isInGroup, enum HeapID heapID);
PoffinBerrySelectionContext *PoffinBerrySelectionContext_CreateVoiceChat(FieldSystem *fieldSystem, enum HeapID heapID, BOOL voiceChat);

#endif // POKEPLATINUM_POFFIN_BERRY_SELECTION_CONTEXT_H
