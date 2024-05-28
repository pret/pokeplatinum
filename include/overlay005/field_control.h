#ifndef POKEPLATINUM_FIELD_CONTROL_H
#define POKEPLATINUM_FIELD_CONTROL_H

#include "field/field_system_decl.h"

typedef struct FieldInput {
    u16 interact : 1;
    u16 endMovement : 1;
    u16 menu : 1;
    u16 registeredItem : 1;
    u16 sign : 1;
    u16 mapTransition : 1;
    u16 movement : 1;
    u16 unused1 : 1;
    u16 unused2 : 1;
    u16 unused3 : 1;
    u16 unused4 : 1;
    u16 unused5 : 1;
    u16 padding : 4;
    u8 playerDir;
    s8 transitionDir;
    u16 pressedKeys;
    u16 heldKeys;
} FieldInput;

void FieldInput_Update(FieldInput *input, FieldSystem *fieldSystem, u16 pressedKeys, u16 heldKeys);
int FieldInput_Process(const FieldInput *input, FieldSystem *fieldSystem);
BOOL FieldInput_Process_Underground(FieldInput *input, FieldSystem *fieldSystem);
BOOL FieldInput_Process_Colosseum(FieldInput *input, FieldSystem *fieldSystem);
BOOL FieldInput_Process_UnionRoom(const FieldInput *input, FieldSystem *fieldSystem);
int FieldInput_Process_BattleTower(const FieldInput *input, FieldSystem *fieldSystem);

#endif // POKEPLATINUM_FIELD_CONTROL_H
