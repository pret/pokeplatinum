#ifndef POKEPLATINUM_OVERWORLD_ANIM_MANAGER_H
#define POKEPLATINUM_OVERWORLD_ANIM_MANAGER_H

#include <nitro/fx/fx.h>

#include "heap.h"
#include "sys_task.h"

#define OVERWORLD_ANIM_MANAGER_FUNCS_CONTEXT_SIZE 160

typedef struct OverworldAnimManager OverworldAnimManager;

typedef BOOL (*OverworldAnimManager_InitFunc)(OverworldAnimManager *, void *);
typedef void (*OverworldAnimManager_ExitFunc)(OverworldAnimManager *, void *);
typedef void (*OverworldAnimManager_TickFunc)(OverworldAnimManager *, void *);
typedef void (*OverworldAnimManager_RenderFunc)(OverworldAnimManager *, void *);
typedef void (*OverworldAnimManager_Unused1Func)(OverworldAnimManager *, void *);
typedef void (*OverworldAnimManager_Unused2Func)(OverworldAnimManager *, void *);

typedef struct OverworldAnimManagerFuncs {
    int ctxSize;
    OverworldAnimManager_InitFunc initFunc;
    OverworldAnimManager_ExitFunc exitFunc;
    OverworldAnimManager_TickFunc tickFunc;
    OverworldAnimManager_RenderFunc renderFunc;
} OverworldAnimManagerFuncs;

typedef struct OverworldAnimManagerExtendedFuncs {
    OverworldAnimManagerFuncs baseFuncs;
    // The next two functions are always set to dummy implementations,
    // and never called.
    OverworldAnimManager_Unused1Func unused1Func;
    OverworldAnimManager_Unused2Func unused2Func;
} OverworldAnimManagerExtendedFuncs;

typedef struct OverworldAnimManagerList {
    int count;
    int activeCount;
    enum HeapID heapID;
    OverworldAnimManager *managers;
} OverworldAnimManagerList;

enum OverworldAnimManagerFlags {
    OVERWORLD_ANIM_MANAGER_ACTIVE_FLAG = 1 << 0,
    OVERWORLD_ANIM_MANAGER_TICKING_FLAG = 1 << 1,
};

struct OverworldAnimManager {
    u32 flags;
    int id;
    int unk_08;
    const void *userData;
    SysTask *tickSysTask;
    const OverworldAnimManagerList *list;
    int dummy18;
    int dummy1C;
    int dummy20;
    VecFx32 position;
    u8 funcsCtx[OVERWORLD_ANIM_MANAGER_FUNCS_CONTEXT_SIZE];
    OverworldAnimManager_InitFunc initFunc;
    OverworldAnimManager_TickFunc tickFunc;
    OverworldAnimManager_RenderFunc renderFunc;
    OverworldAnimManager_ExitFunc exitFunc;
    OverworldAnimManager_Unused1Func unused1Func;
    OverworldAnimManager_Unused2Func unused2Func;
};

OverworldAnimManagerList *OverworldAnimManagerList_New(enum HeapID heapID, int managerCount);
void OverworldAnimManagerList_Free(OverworldAnimManagerList *managerList);
void OverworldAnimManagerList_FinishAndFree(OverworldAnimManagerList *managerList);
OverworldAnimManager *OverworldAnimManagerList_InitManagerEx(OverworldAnimManagerList *managerList, const OverworldAnimManagerExtendedFuncs *funcs, const VecFx32 *initialPos, int id, const void *userData, int sysTaskPriority);
OverworldAnimManager *OverworldAnimManagerList_InitManager(OverworldAnimManagerList *managerList, const OverworldAnimManagerFuncs *funcs, const VecFx32 *initialPos, int id, const void *userData, int sysTaskPriority);
void OverworldAnimManager_Finish(OverworldAnimManager *manager);
void OverworldAnimManagerList_Finish(OverworldAnimManagerList *managerList);
void OverworldAnimManagerList_Render(OverworldAnimManagerList *managerList);
int OverworldAnimManager_IsActive(const OverworldAnimManager *manager);
void OverworldAnimManager_SetInitFunc(OverworldAnimManager *manager, OverworldAnimManager_InitFunc initFunc);
int OverworldAnimManager_CallInitFunc(OverworldAnimManager *manager);
void OverworldAnimManager_SetTickFunc(OverworldAnimManager *manager, OverworldAnimManager_TickFunc tickFunc);
void OverworldAnimManager_CallTickFunc(OverworldAnimManager *manager);
void OverworldAnimManager_SetRenderFunc(OverworldAnimManager *manager, OverworldAnimManager_RenderFunc renderFunc);
void OverworldAnimManager_CallRenderFunc(OverworldAnimManager *manager);
void OverworldAnimManager_SetExitFunc(OverworldAnimManager *manager, OverworldAnimManager_ExitFunc exitFunc);
void OverworldAnimManager_CallExitFunc(OverworldAnimManager *manager);
void OverworldAnimManager_SetUnused1Func(OverworldAnimManager *manager, OverworldAnimManager_Unused1Func unused1Func);
void OverworldAnimManager_SetUnused2Func(OverworldAnimManager *manager, OverworldAnimManager_Unused2Func unused2Func);
void *OverworldAnimManager_GetFuncsContext(OverworldAnimManager *manager);
void OverworldAnimManager_ResetFuncsContext(OverworldAnimManager *manager, int ctxSize);
int OverworldAnimManager_GetID(const OverworldAnimManager *manager);
const void *OverworldAnimManager_GetUserData(const OverworldAnimManager *manager);
void sub_020715C0(OverworldAnimManager *param0, int param1);
int sub_020715C4(const OverworldAnimManager *param0);
void OverworldAnimManager_SetPosition(OverworldAnimManager *manager, const VecFx32 *position);
void OverworldAnimManager_GetPosition(OverworldAnimManager *manager, VecFx32 *position);
int OverworldAnimManager_DummyInitFunc(OverworldAnimManager *manager, void *ctx);
void OverworldAnimManager_DummyTickFunc(OverworldAnimManager *manager, void *ctx);
void OverworldAnimManager_DummyRenderFunc(OverworldAnimManager *manager, void *ctx);
void OverworldAnimManager_DummyExitFunc(OverworldAnimManager *manager, void *ctx);
void OverworldAnimManager_DummyUnused1Func(OverworldAnimManager *manager, void *ctx);
void OverworldAnimManager_DummyUnused2Func(OverworldAnimManager *manager, void *ctx);

#endif // POKEPLATINUM_OVERWORLD_ANIM_MANAGER_H
