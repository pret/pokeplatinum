#include "overworld_anim_manager.h"

#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"

static SysTask *OverworldAnimManager_StartTickSysTask(OverworldAnimManager *manager, int priority);
static void OverworldAnimManager_Tick(SysTask *sysTask, void *sysTaskParam);
static OverworldAnimManagerList *OverworldAnimManagerList_Alloc(enum HeapID heapID);
static void OverworldAnimManagerList_FreeSelf(OverworldAnimManagerList *managerList);
static OverworldAnimManager *OverworldAnimManager_AllocMultiple(enum HeapID heapID, int count);
static void OverworldAnimManagerList_FreeManagers(OverworldAnimManagerList *managerList);
static void OverworldAnimManager_Reset(OverworldAnimManager *manager);
static int OverworldAnimManagerList_GetManagerCount(const OverworldAnimManagerList *managerList);
static OverworldAnimManager *OverworldAnimManagerList_GetManagers(const OverworldAnimManagerList *managerList);
static void OverworldAnimManager_SetActive(OverworldAnimManager *manager);
static void OverworldAnimManager_SetFlags(OverworldAnimManager *manager, u32 mask);
static u32 OverworldAnimManager_GetFlags(OverworldAnimManager *manager, u32 mask);
static void OverworldAnimManager_SetID(OverworldAnimManager *manager, int id);
static void OverworldAnimManager_SetUserData(OverworldAnimManager *manager, const void *userData);
static void OverworldAnimManager_SetTickSysTask(OverworldAnimManager *manager, SysTask *sysTask);
static SysTask *OverworldAnimManager_GetTickSysTask(OverworldAnimManager *manager);
static void OverworldAnimManager_SetList(OverworldAnimManager *manager, const OverworldAnimManagerList *managerList);

OverworldAnimManagerList *OverworldAnimManagerList_New(enum HeapID heapID, int managerCount)
{
    OverworldAnimManagerList *managerList = OverworldAnimManagerList_Alloc(heapID);

    managerList->managers = OverworldAnimManager_AllocMultiple(heapID, managerCount);
    managerList->count = managerCount;
    managerList->heapID = heapID;

    return managerList;
}

void OverworldAnimManagerList_Free(OverworldAnimManagerList *managerList)
{
    OverworldAnimManagerList_FreeManagers(managerList);
    OverworldAnimManagerList_FreeSelf(managerList);
}

void OverworldAnimManagerList_FinishAndFree(OverworldAnimManagerList *managerList)
{
    OverworldAnimManagerList_Finish(managerList);
    OverworldAnimManagerList_Free(managerList);
}

OverworldAnimManager *OverworldAnimManagerList_InitManagerEx(OverworldAnimManagerList *managerList, const OverworldAnimManagerExtendedFuncs *funcs, const VecFx32 *initialPos, int id, const void *userData, int sysTaskPriority)
{
    int i = 0;
    int count = OverworldAnimManagerList_GetManagerCount(managerList);
    OverworldAnimManager *iter = OverworldAnimManagerList_GetManagers(managerList);

    do {
        if (!OverworldAnimManager_IsActive(iter)) {
            break;
        }

        i++;
        iter++;
    } while (i < count);

    if (i >= count) {
        return NULL;
    }

    OverworldAnimManager_SetActive(iter);
    OverworldAnimManager_SetID(iter, id);
    OverworldAnimManager_SetUserData(iter, userData);
    OverworldAnimManager_SetList(iter, managerList);

    if (initialPos != NULL) {
        OverworldAnimManager_SetPosition(iter, initialPos);
    } else {
        VecFx32 zeroPos = { 0, 0, 0 };
        OverworldAnimManager_SetPosition(iter, &zeroPos);
    }

    OverworldAnimManager_ResetFuncsContext(iter, funcs->baseFuncs.ctxSize);
    OverworldAnimManager_SetInitFunc(iter, funcs->baseFuncs.initFunc);
    OverworldAnimManager_SetExitFunc(iter, funcs->baseFuncs.exitFunc);
    OverworldAnimManager_SetTickFunc(iter, funcs->baseFuncs.tickFunc);
    OverworldAnimManager_SetRenderFunc(iter, funcs->baseFuncs.renderFunc);
    OverworldAnimManager_SetUnused1Func(iter, funcs->unused1Func);
    OverworldAnimManager_SetUnused2Func(iter, funcs->unused2Func);

    SysTask *tickSysTask = OverworldAnimManager_StartTickSysTask(iter, sysTaskPriority);

    if (tickSysTask == NULL) {
        OverworldAnimManager_Reset(iter);
        return NULL;
    }

    OverworldAnimManager_SetTickSysTask(iter, tickSysTask);

    if (!OverworldAnimManager_CallInitFunc(iter)) {
        SysTask_Done(tickSysTask);
        OverworldAnimManager_Reset(iter);
        return NULL;
    }

    OverworldAnimManager_SetFlags(iter, OVERWORLD_ANIM_MANAGER_TICKING_FLAG);
    managerList->activeCount++;

    return iter;
}

OverworldAnimManager *OverworldAnimManagerList_InitManager(OverworldAnimManagerList *managerList, const OverworldAnimManagerFuncs *funcs, const VecFx32 *initialPos, int id, const void *userData, int sysTaskPriority)
{
    OverworldAnimManagerExtendedFuncs funcsEx;
    funcsEx.baseFuncs = *funcs;
    funcsEx.unused1Func = OverworldAnimManager_DummyUnused1Func;
    funcsEx.unused2Func = OverworldAnimManager_DummyUnused2Func;

    return OverworldAnimManagerList_InitManagerEx(managerList, &funcsEx, initialPos, id, userData, sysTaskPriority);
}

void OverworldAnimManager_Finish(OverworldAnimManager *manager)
{
    GF_ASSERT(manager != NULL);

    if (!OverworldAnimManager_IsActive(manager)) {
        return;
    }

    OverworldAnimManager_CallExitFunc(manager);

    OverworldAnimManagerList *managerList = manager->list;
    managerList->activeCount--;

    SysTask *tickSysTask = OverworldAnimManager_GetTickSysTask(manager);

    if (tickSysTask != NULL) {
        SysTask_Done(tickSysTask);
    }

    OverworldAnimManager_Reset(manager);
}

void OverworldAnimManagerList_Finish(OverworldAnimManagerList *managerList)
{
    int i = OverworldAnimManagerList_GetManagerCount(managerList);
    OverworldAnimManager *iter = OverworldAnimManagerList_GetManagers(managerList);

    do {
        if (OverworldAnimManager_IsActive(iter) == TRUE) {
            OverworldAnimManager_Finish(iter);
        }

        iter++;
        i--;
    } while (i);
}

void OverworldAnimManagerList_Render(OverworldAnimManagerList *managerList)
{
    int i = OverworldAnimManagerList_GetManagerCount(managerList);
    OverworldAnimManager *iter = OverworldAnimManagerList_GetManagers(managerList);

    do {
        u32 flags = OverworldAnimManager_GetFlags(iter, OVERWORLD_ANIM_MANAGER_ACTIVE_FLAG | OVERWORLD_ANIM_MANAGER_TICKING_FLAG);

        if (flags == (OVERWORLD_ANIM_MANAGER_ACTIVE_FLAG | OVERWORLD_ANIM_MANAGER_TICKING_FLAG)) {
            OverworldAnimManager_CallRenderFunc(iter);
        }

        iter++;
        i--;
    } while (i);
}

static SysTask *OverworldAnimManager_StartTickSysTask(OverworldAnimManager *manager, int priority)
{
    SysTask *sysTask = SysTask_Start(OverworldAnimManager_Tick, manager, priority);
    GF_ASSERT(sysTask != NULL);

    return sysTask;
}

static void OverworldAnimManager_Tick(SysTask *sysTask, void *sysTaskParam)
{
    OverworldAnimManager *manager = sysTaskParam;
    OverworldAnimManager_CallTickFunc(manager);
}

static OverworldAnimManagerList *OverworldAnimManagerList_Alloc(enum HeapID heapID)
{
    OverworldAnimManagerList *managerList = Heap_Alloc(heapID, sizeof(OverworldAnimManagerList));
    GF_ASSERT(managerList != NULL);

    memset(managerList, 0, sizeof(OverworldAnimManagerList));
    return managerList;
}

static void OverworldAnimManagerList_FreeSelf(OverworldAnimManagerList *managerList)
{
    Heap_FreeExplicit(managerList->heapID, managerList);
}

static OverworldAnimManager *OverworldAnimManager_AllocMultiple(enum HeapID heapID, int count)
{
    int size = count * sizeof(OverworldAnimManager);
    OverworldAnimManager *managers = Heap_Alloc(heapID, size);

    GF_ASSERT(managers != NULL);
    memset(managers, 0, size);

    return managers;
}

static void OverworldAnimManagerList_FreeManagers(OverworldAnimManagerList *managerList)
{
    Heap_FreeExplicit(managerList->heapID, managerList->managers);
}

static void OverworldAnimManager_Reset(OverworldAnimManager *manager)
{
    memset(manager, 0, sizeof(OverworldAnimManager));

    OverworldAnimManager_SetInitFunc(manager, OverworldAnimManager_DummyInitFunc);
    OverworldAnimManager_SetExitFunc(manager, OverworldAnimManager_DummyExitFunc);
    OverworldAnimManager_SetTickFunc(manager, OverworldAnimManager_DummyTickFunc);
    OverworldAnimManager_SetRenderFunc(manager, OverworldAnimManager_DummyRenderFunc);
    OverworldAnimManager_SetUnused1Func(manager, OverworldAnimManager_DummyUnused1Func);
    OverworldAnimManager_SetUnused2Func(manager, OverworldAnimManager_DummyUnused2Func);
}

static int OverworldAnimManagerList_GetManagerCount(const OverworldAnimManagerList *managerList)
{
    return managerList->count;
}

static OverworldAnimManager *OverworldAnimManagerList_GetManagers(const OverworldAnimManagerList *managerList)
{
    return managerList->managers;
}

BOOL OverworldAnimManager_IsActive(const OverworldAnimManager *manager)
{
    return manager->flags & OVERWORLD_ANIM_MANAGER_ACTIVE_FLAG ? TRUE : FALSE;
}

static void OverworldAnimManager_SetActive(OverworldAnimManager *manager)
{
    manager->flags |= OVERWORLD_ANIM_MANAGER_ACTIVE_FLAG;
}

static void OverworldAnimManager_SetFlags(OverworldAnimManager *manager, u32 mask)
{
    manager->flags |= mask;
}

static u32 OverworldAnimManager_GetFlags(OverworldAnimManager *manager, u32 mask)
{
    return manager->flags & mask;
}

void OverworldAnimManager_SetInitFunc(OverworldAnimManager *manager, OverworldAnimManager_InitFunc initFunc)
{
    manager->initFunc = initFunc;
}

int OverworldAnimManager_CallInitFunc(OverworldAnimManager *manager)
{
    void *ctx = OverworldAnimManager_GetFuncsContext(manager);
    return manager->initFunc(manager, ctx);
}

void OverworldAnimManager_SetTickFunc(OverworldAnimManager *manager, OverworldAnimManager_TickFunc tickFunc)
{
    manager->tickFunc = tickFunc;
}

void OverworldAnimManager_CallTickFunc(OverworldAnimManager *manager)
{
    void *ctx = OverworldAnimManager_GetFuncsContext(manager);
    manager->tickFunc(manager, ctx);
}

void OverworldAnimManager_SetRenderFunc(OverworldAnimManager *manager, OverworldAnimManager_RenderFunc renderFunc)
{
    manager->renderFunc = renderFunc;
}

void OverworldAnimManager_CallRenderFunc(OverworldAnimManager *manager)
{
    void *ctx = OverworldAnimManager_GetFuncsContext(manager);
    manager->renderFunc(manager, ctx);
}

void OverworldAnimManager_SetExitFunc(OverworldAnimManager *manager, OverworldAnimManager_ExitFunc exitFunc)
{
    manager->exitFunc = exitFunc;
}

void OverworldAnimManager_CallExitFunc(OverworldAnimManager *manager)
{
    void *ctx = OverworldAnimManager_GetFuncsContext(manager);
    manager->exitFunc(manager, ctx);
}

void OverworldAnimManager_SetUnused1Func(OverworldAnimManager *manager, OverworldAnimManager_Unused1Func unused1Func)
{
    manager->unused1Func = unused1Func;
}

void OverworldAnimManager_SetUnused2Func(OverworldAnimManager *manager, OverworldAnimManager_Unused2Func unused2Func)
{
    manager->unused2Func = unused2Func;
}

void *OverworldAnimManager_GetFuncsContext(OverworldAnimManager *manager)
{
    return manager->funcsCtx;
}

void OverworldAnimManager_ResetFuncsContext(OverworldAnimManager *manager, int ctxSize)
{
    void *ctx = OverworldAnimManager_GetFuncsContext(manager);
    memset(ctx, 0, ctxSize);
}

static void OverworldAnimManager_SetID(OverworldAnimManager *manager, int id)
{
    manager->id = id;
}

int OverworldAnimManager_GetID(const OverworldAnimManager *manager)
{
    return manager->id;
}

static void OverworldAnimManager_SetUserData(OverworldAnimManager *manager, const void *userData)
{
    manager->userData = userData;
}

const void *OverworldAnimManager_GetUserData(const OverworldAnimManager *manager)
{
    return manager->userData;
}

void sub_020715C0(OverworldAnimManager *manager, int param1)
{
    manager->unk_08 = param1;
}

int sub_020715C4(const OverworldAnimManager *manager)
{
    return manager->unk_08;
}

static void OverworldAnimManager_SetTickSysTask(OverworldAnimManager *manager, SysTask *sysTask)
{
    manager->tickSysTask = sysTask;
}

static SysTask *OverworldAnimManager_GetTickSysTask(OverworldAnimManager *manager)
{
    return manager->tickSysTask;
}

static void OverworldAnimManager_SetList(OverworldAnimManager *manager, const OverworldAnimManagerList *managerList)
{
    manager->list = managerList;
}

void OverworldAnimManager_SetPosition(OverworldAnimManager *manager, const VecFx32 *position)
{
    manager->position = *position;
}

void OverworldAnimManager_GetPosition(OverworldAnimManager *manager, VecFx32 *position)
{
    *position = manager->position;
}

BOOL OverworldAnimManager_DummyInitFunc(OverworldAnimManager *manager, void *ctx)
{
    return TRUE;
}

void OverworldAnimManager_DummyTickFunc(OverworldAnimManager *manager, void *ctx)
{
    return;
}

void OverworldAnimManager_DummyRenderFunc(OverworldAnimManager *manager, void *ctx)
{
    return;
}

void OverworldAnimManager_DummyExitFunc(OverworldAnimManager *manager, void *ctx)
{
    return;
}

void OverworldAnimManager_DummyUnused1Func(OverworldAnimManager *manager, void *ctx)
{
    return;
}

void OverworldAnimManager_DummyUnused2Func(OverworldAnimManager *manager, void *ctx)
{
    return;
}
