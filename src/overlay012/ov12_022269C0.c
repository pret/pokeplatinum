#include "overlay012/ov12_022269C0.h"

#include <nitro.h>
#include <string.h>

#include "overlay012/ov12_0221FC20.h"
#include "overlay012/struct_ov12_0221FCDC_decl.h"

#include "heap.h"
#include "sprite.h"
#include "sprite_system.h"
#include "sys_task.h"
#include "sys_task_manager.h"

#define TASK_STATE_RUNNING 0
#define TASK_STATE_DONE    1

typedef struct {
    u8 state;
    BattleAnimSystem *system;
} BattleAnimScriptContext_AnimExample;

typedef struct {
    u8 state;
    BattleAnimSystem *system;
} BattleAnimScriptContext_SoundExample;

typedef struct {
    u8 state;
    BattleAnimSystem *system;
} BattleAnimScriptContext_GenericExample;

typedef struct {
    u8 unk_00;
    BattleAnimSystem *unk_04;
    SpriteSystem *unk_08;
    SpriteManager *unk_0C;
    ManagedSprite *unk_10;
    ManagedSprite *unk_14[100];
    Sprite *unk_1A4[10];
} UnkStruct_ov12_02226AAC;

void BattleAnimScriptFunc_NoOp(BattleAnimSystem *system)
{
    return;
}

static void BattleAnimScriptTask_AnimExample(SysTask *task, void *param)
{
    BattleAnimScriptContext_AnimExample *ctx = param;

    switch (ctx->state) {
    case TASK_STATE_RUNNING:
        ctx->state++;
        break;
    case TASK_STATE_DONE:
        BattleAnimSystem_EndAnimTask(ctx->system, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_AnimExample(BattleAnimSystem *system)
{
    BattleAnimScriptContext_AnimExample *ctx = Heap_AllocFromHeap(HEAP_ID_BATTLE, sizeof(BattleAnimScriptContext_AnimExample));

    ctx->state = TASK_STATE_RUNNING;
    ctx->system = system;

    BattleAnimSystem_StartAnimTaskEx(ctx->system, BattleAnimScriptTask_AnimExample, ctx, 0x1000);
}

static void BattleAnimScriptTask_SoundExample(SysTask *task, void *param)
{
    BattleAnimScriptContext_SoundExample *ctx = param;

    switch (ctx->state) {
    case TASK_STATE_RUNNING:
        ctx->state++;
        break;
    case TASK_STATE_DONE:
        BattleAnimSystem_EndSoundTask(ctx->system, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_SoundExample(BattleAnimSystem *system)
{
    BattleAnimScriptContext_SoundExample *ctx = Heap_AllocFromHeap(HEAP_ID_BATTLE, sizeof(BattleAnimScriptContext_SoundExample));

    ctx->state = TASK_STATE_RUNNING;
    ctx->system = system;

    BattleAnimSystem_StartSoundTask(ctx->system, BattleAnimScriptTask_SoundExample, ctx, 0x1000);
}

static void BattleAnimScriptTask_GenericExample(SysTask *task, void *param)
{
    BattleAnimScriptContext_GenericExample *ctx = param;

    switch (ctx->state) {
    case TASK_STATE_RUNNING:
        ctx->state++;
        break;
    case TASK_STATE_DONE:
        SysTask_Done(task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_GenericExample(BattleAnimSystem *system)
{
    BattleAnimScriptContext_GenericExample *ctx = Heap_AllocFromHeap(HEAP_ID_BATTLE, sizeof(BattleAnimScriptContext_GenericExample));

    ctx->state = TASK_STATE_RUNNING;
    ctx->system = system;

    SysTask_Start(BattleAnimScriptTask_GenericExample, ctx, 0x1000);
}

static void ov12_02226AAC(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02226AAC *v0 = (UnkStruct_ov12_02226AAC *)param1;

    switch (v0->unk_00) {
    case 0:
        Sprite_TickFrame(v0->unk_14[0]->sprite);
        Sprite_TickFrame(v0->unk_14[1]->sprite);
        Sprite_TickFrame(v0->unk_14[2]->sprite);

        Sprite_OffsetPositionXY(v0->unk_14[0]->sprite, 1, 0);
        Sprite_OffsetPositionXY(v0->unk_14[1]->sprite, -1, 0);
        Sprite_OffsetPositionXY(v0->unk_14[2]->sprite, 1, 1);

        SpriteSystem_DrawSprites(v0->unk_0C);
        break;
    case 1: {
        BattleAnimSystem *v1 = v0->unk_04;

        Sprite_DeleteAndFreeResources(v0->unk_10);
        Heap_Free(v0);
        BattleAnimSystem_EndAnimTask(v1, param0);
    } break;
    }
}

void ov12_02226B1C(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_02226AAC *v0;
    SpriteTemplate v1;

    v0 = Heap_AllocFromHeap(HEAP_ID_BATTLE, sizeof(UnkStruct_ov12_02226AAC));

    GF_ASSERT(v0 != NULL);

    v0->unk_00 = 0;
    v0->unk_08 = param1;
    v0->unk_0C = param2;
    v0->unk_10 = param3;
    v0->unk_04 = param0;

    v1 = ov12_0222329C(param0);
    v0->unk_14[0] = param3;

    {
        int v2;

        for (v2 = 1; v2 < 3; v2++) {
            v0->unk_14[v2] = SpriteSystem_NewSprite(v0->unk_08, v0->unk_0C, &v1);
        }
    }

    BattleAnimSystem_StartAnimTaskEx(param0, ov12_02226AAC, v0, 0x1000);
}
