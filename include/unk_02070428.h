#ifndef POKEPLATINUM_UNK_02070428_H
#define POKEPLATINUM_UNK_02070428_H

#include "field/field_system_decl.h"

void sub_02070428(FieldSystem *fieldSystem, BOOL param1);
void FieldSystem_InitFlagsOnMapChange(FieldSystem *fieldSystem);
void FieldSystem_InitFlagsWarp(FieldSystem *fieldSystem);
void FieldSystem_SetFlyFlags(FieldSystem *fieldSystem);
void FieldSystem_SetTeleportFlags(FieldSystem *fieldSystem);
void FieldSystem_SetEscapeFlags(FieldSystem *fieldSystem);
void FieldSystem_ClearPartnerTrainer(FieldSystem *fieldSystem);
void sub_020705CC(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_UNK_02070428_H
