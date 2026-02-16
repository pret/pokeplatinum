#ifndef POKEPLATINUM_FIELD_WARP_H
#define POKEPLATINUM_FIELD_WARP_H

#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/pokemon.h"

#include "field/field_system_decl.h"

#include "field_task.h"
#include "sys_task_manager.h"

enum FieldWarpType {
    FIELD_WARP_TYPE_ESCAPE_ROPE = 0,
    FIELD_WARP_TYPE_DIG,
    FIELD_WARP_TYPE_TELEPORT,
};

typedef struct FieldWarp {
    int state;
    int animationDelay;
    enum FieldWarpType warpType;
    SysTask *animationTask;
    SysTask *cutInTask;
    SysTask *unk_14;
    MapObject *player;
    FieldSystem *fieldSystem;
    Pokemon *mon;
} FieldWarp;

FieldWarp *FieldWarp_InitEscapeRope(FieldSystem *fieldSystem, enum HeapID heapID);
BOOL FieldWarp_EscapeRopeFadeOut(FieldTask *task);
FieldWarp *FieldWarp_InitFadeIn(FieldSystem *fieldSystem, enum HeapID heapID, enum FieldWarpType warpType);
BOOL FieldWarp_FadeIn(FieldTask *task);
FieldWarp *FieldWarp_InitDig(FieldSystem *, Pokemon *, enum HeapID heapID);
BOOL FieldWarp_DigFadeOut(FieldTask *task);
FieldWarp *FieldWarp_InitTeleport(FieldSystem *fieldSystem, Pokemon *mon, enum HeapID heapID);
BOOL FieldWarp_TeleportFadeOut(FieldTask *task);

#endif // POKEPLATINUM_FIELD_WARP_H
