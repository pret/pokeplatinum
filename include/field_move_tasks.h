#ifndef POKEPLATINUM_FIELD_MOVE_TASKS_H
#define POKEPLATINUM_FIELD_MOVE_TASKS_H

#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_decls/struct_020709CC_decl.h"

#include "field/field_system_decl.h"

typedef struct FieldMoveContext {
    u32 mapId;
    FieldSystem *fieldSystem;
    MapObject *mapObj;
    u16 usableMoves;
} FieldMoveContext;

enum TaskOrError {
    FIELD_MOVE_TASK,
    FIELD_MOVE_ERROR,
};

typedef void (*FieldMoveTaskContext)(UnkStruct_020709CC *, const FieldMoveContext *);
typedef int (*FieldMoveErrContext)(const FieldMoveContext *);

void *FieldMove_GetTaskOrError(u16 taskOrError, u16 fieldMove);
void FieldMoves_SetUsableMoves(FieldSystem *fieldSystem, FieldMoveContext *param1);

#endif // POKEPLATINUM_FIELD_MOVE_TASKS_H
