#ifndef POKEPLATINUM_FIELD_MOVE_TASKS_H
#define POKEPLATINUM_FIELD_MOVE_TASKS_H

#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system_decl.h"

#include "field_task.h"

typedef struct FieldMoveContext {
    u32 mapId;
    FieldSystem *fieldSystem;
    MapObject *mapObj;
    u16 usableMoves;
} FieldMoveContext;

typedef struct FieldMovePokemon {
    FieldTask *fieldTask;
    u16 fieldMonId;
    u16 fieldMove;
} FieldMovePokemon;

enum FieldMoveList {
    FIELD_MOVE_CUT,
    FIELD_MOVE_FLY, // unused
    FIELD_MOVE_SURF,
    FIELD_MOVE_STRENGTH,
    FIELD_MOVE_DEFOG,
    FIELD_MOVE_ROCK_SMASH,
    FIELD_MOVE_WATERFALL,
    FIELD_MOVE_ROCK_CLIMB,
    FIELD_MOVE_FLASH,
};

enum FieldMoveError {
    FIELD_MOVE_ERROR_NONE,
    FIELD_MOVE_ERROR_LOCATION,
    FIELD_MOVE_ERROR_BADGE,
    FIELD_MOVE_ERROR_PARTNER,
    FIELD_MOVE_ERROR_STATE,
};

enum TaskOrError {
    FIELD_MOVE_TASK,
    FIELD_MOVE_ERROR,
};

typedef void (*FieldMoveTaskContext)(FieldMovePokemon *, const FieldMoveContext *);
typedef enum FieldMoveError (*FieldMoveErrContext)(const FieldMoveContext *);

void *FieldMove_GetTaskOrError(u16 taskOrError, u16 fieldMove);
void FieldMoves_SetUsableMoves(FieldSystem *fieldSystem, FieldMoveContext *fieldMoveContext);

#endif // POKEPLATINUM_FIELD_MOVE_TASKS_H
