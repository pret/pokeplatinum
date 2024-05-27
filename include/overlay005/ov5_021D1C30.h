#ifndef POKEPLATINUM_FIELD_EVENT_CHECK_H
#define POKEPLATINUM_FIELD_EVENT_CHECK_H

#include "field/field_system_decl.h"

typedef struct FieldEventCheck {
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
} FieldEventCheck;

void FieldEventCheck_Set(FieldEventCheck *eventCheck, FieldSystem *fieldSystem, u16 pressedKeys, u16 heldKeys);
int FieldEvent_Check(const FieldEventCheck *eventCheck, FieldSystem *fieldSystem);
BOOL FieldEventCheck_Underground(FieldEventCheck *eventCheck, FieldSystem *fieldSystem);
BOOL FieldEventCheck_Colosseum(FieldEventCheck *eventCheck, FieldSystem *fieldSystem);
BOOL FieldEventCheck_UnionRoom(const FieldEventCheck *eventCheck, FieldSystem *fieldSystem);
int FieldEventCheck_BattleTower(const FieldEventCheck *eventCheck, FieldSystem *fieldSystem);

#endif // POKEPLATINUM_FIELD_EVENT_CHECK_H
