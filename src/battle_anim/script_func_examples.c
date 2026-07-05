#include "battle_anim/script_func_examples.h"

#include <nitro.h>
#include <string.h>

#include "battle_anim/battle_anim_system.h"

#include "heap.h"
#include "sprite.h"
#include "sprite_system.h"
#include "sys_task.h"
#include "sys_task_manager.h"

#define TASK_STATE_RUNNING 0
#define TASK_STATE_DONE    1

typedef struct AnimExampleContext {
    u8 state;
    BattleAnimSystem *system;
} AnimExampleContext;

typedef struct SoundExampleContext {
    u8 state;
    BattleAnimSystem *system;
} SoundExampleContext;

typedef struct GenericExampleContext {
    u8 state;
    BattleAnimSystem *system;
} GenericExampleContext;

typedef struct SpriteExampleContext {
    u8 state;
    BattleAnimSystem *battleAnimSys;
    SpriteSystem *spriteSys;
    SpriteManager *spriteManager;
    ManagedSprite *managedSprite;
    ManagedSprite *managedSprites[100];
    Sprite *sprites[10];
} SpriteExampleContext;

void BattleAnimScriptFunc_Nop(BattleAnimSystem *system)
{
    return;
}

static void BattleAnimTask_AnimExample(SysTask *task, void *param)
{
    AnimExampleContext *ctx = param;

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
    AnimExampleContext *ctx = Heap_Alloc(HEAP_ID_BATTLE, sizeof(AnimExampleContext));

    ctx->state = TASK_STATE_RUNNING;
    ctx->system = system;

    BattleAnimSystem_StartAnimTaskEx(ctx->system, BattleAnimTask_AnimExample, ctx, 0x1000);
}

static void BattleAnimTask_SoundExample(SysTask *task, void *param)
{
    SoundExampleContext *ctx = param;

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
    SoundExampleContext *ctx = Heap_Alloc(HEAP_ID_BATTLE, sizeof(SoundExampleContext));

    ctx->state = TASK_STATE_RUNNING;
    ctx->system = system;

    BattleAnimSystem_StartSoundTask(ctx->system, BattleAnimTask_SoundExample, ctx, 0x1000);
}

static void BattleAnimTask_GenericExample(SysTask *task, void *param)
{
    GenericExampleContext *ctx = param;

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
    GenericExampleContext *ctx = Heap_Alloc(HEAP_ID_BATTLE, sizeof(GenericExampleContext));

    ctx->state = TASK_STATE_RUNNING;
    ctx->system = system;

    SysTask_Start(BattleAnimTask_GenericExample, ctx, 0x1000);
}

static void BattleAnimTask_SpriteExample(SysTask *task, void *param)
{
    SpriteExampleContext *ctx = param;

    switch (ctx->state) {
    case TASK_STATE_RUNNING:
        Sprite_TickFrame(ctx->managedSprites[0]->sprite);
        Sprite_TickFrame(ctx->managedSprites[1]->sprite);
        Sprite_TickFrame(ctx->managedSprites[2]->sprite);

        Sprite_OffsetPositionXY(ctx->managedSprites[0]->sprite, 1, 0);
        Sprite_OffsetPositionXY(ctx->managedSprites[1]->sprite, -1, 0);
        Sprite_OffsetPositionXY(ctx->managedSprites[2]->sprite, 1, 1);

        SpriteSystem_DrawSprites(ctx->spriteManager);
        break;
    case TASK_STATE_DONE:
        BattleAnimSystem *battleAnimSys = ctx->battleAnimSys;

        Sprite_DeleteAndFreeResources(ctx->managedSprite);
        Heap_Free(ctx);
        BattleAnimSystem_EndAnimTask(battleAnimSys, task);
        break;
    }
}

void BattleAnimScriptFunc_SpriteExample(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteManager, ManagedSprite *managedSprite)
{
    SpriteExampleContext *ctx = Heap_Alloc(HEAP_ID_BATTLE, sizeof(SpriteExampleContext));
    SpriteTemplate spriteTemplate;

    GF_ASSERT(ctx != NULL);

    ctx->state = 0;
    ctx->spriteSys = spriteSys;
    ctx->spriteManager = spriteManager;
    ctx->managedSprite = managedSprite;
    ctx->battleAnimSys = system;

    spriteTemplate = BattleAnimSystem_GetLastSpriteTemplate(system);
    ctx->managedSprites[0] = managedSprite;

    for (int i = 1; i < 3; i++) {
        ctx->managedSprites[i] = SpriteSystem_NewSprite(ctx->spriteSys, ctx->spriteManager, &spriteTemplate);
    }

    BattleAnimSystem_StartAnimTaskEx(system, BattleAnimTask_SpriteExample, ctx, 0x1000);
}
