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

static void BattleAnimTask_AnimExample(SysTask *task, void *ctxPtr)
{
    AnimExampleContext *aeCtx = ctxPtr;

    switch (aeCtx->state) {
    case TASK_STATE_RUNNING:
        aeCtx->state++;
        break;
    case TASK_STATE_DONE:
        BattleAnimSystem_EndAnimTask(aeCtx->system, task);
        Heap_Free(aeCtx);
        break;
    }
}

void BattleAnimScriptFunc_AnimExample(BattleAnimSystem *system)
{
    AnimExampleContext *aeCtx = Heap_Alloc(HEAP_ID_BATTLE, sizeof(AnimExampleContext));

    aeCtx->state = TASK_STATE_RUNNING;
    aeCtx->system = system;

    BattleAnimSystem_StartAnimTaskEx(aeCtx->system, BattleAnimTask_AnimExample, aeCtx, 0x1000);
}

static void BattleAnimTask_SoundExample(SysTask *task, void *ctxPtr)
{
    SoundExampleContext *seCtx = ctxPtr;

    switch (seCtx->state) {
    case TASK_STATE_RUNNING:
        seCtx->state++;
        break;
    case TASK_STATE_DONE:
        BattleAnimSystem_EndSoundTask(seCtx->system, task);
        Heap_Free(seCtx);
        break;
    }
}

void BattleAnimScriptFunc_SoundExample(BattleAnimSystem *system)
{
    SoundExampleContext *seCtx = Heap_Alloc(HEAP_ID_BATTLE, sizeof(SoundExampleContext));

    seCtx->state = TASK_STATE_RUNNING;
    seCtx->system = system;

    BattleAnimSystem_StartSoundTask(seCtx->system, BattleAnimTask_SoundExample, seCtx, 0x1000);
}

static void BattleAnimTask_GenericExample(SysTask *task, void *ctxPtr)
{
    GenericExampleContext *geCtx = ctxPtr;

    switch (geCtx->state) {
    case TASK_STATE_RUNNING:
        geCtx->state++;
        break;
    case TASK_STATE_DONE:
        SysTask_Done(task);
        Heap_Free(geCtx);
        break;
    }
}

void BattleAnimScriptFunc_GenericExample(BattleAnimSystem *system)
{
    GenericExampleContext *geCtx = Heap_Alloc(HEAP_ID_BATTLE, sizeof(GenericExampleContext));

    geCtx->state = TASK_STATE_RUNNING;
    geCtx->system = system;

    SysTask_Start(BattleAnimTask_GenericExample, geCtx, 0x1000);
}

static void BattleAnimTask_SpriteExample(SysTask *task, void *ctxPtr)
{
    SpriteExampleContext *seCtx = (SpriteExampleContext *)ctxPtr;

    switch (seCtx->state) {
    case TASK_STATE_RUNNING:
        Sprite_TickFrame(seCtx->managedSprites[0]->sprite);
        Sprite_TickFrame(seCtx->managedSprites[1]->sprite);
        Sprite_TickFrame(seCtx->managedSprites[2]->sprite);

        Sprite_OffsetPositionXY(seCtx->managedSprites[0]->sprite, 1, 0);
        Sprite_OffsetPositionXY(seCtx->managedSprites[1]->sprite, -1, 0);
        Sprite_OffsetPositionXY(seCtx->managedSprites[2]->sprite, 1, 1);

        SpriteSystem_DrawSprites(seCtx->spriteManager);
        break;
    case TASK_STATE_DONE:
        BattleAnimSystem *battleAnimSys = seCtx->battleAnimSys;

        Sprite_DeleteAndFreeResources(seCtx->managedSprite);
        Heap_Free(seCtx);
        BattleAnimSystem_EndAnimTask(battleAnimSys, task);
        break;
    }
}

void BattleAnimScriptFunc_SpriteExample(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteManager, ManagedSprite *managedSprite)
{
    SpriteExampleContext *seCtx;
    SpriteTemplate spriteTemplate;

    seCtx = Heap_Alloc(HEAP_ID_BATTLE, sizeof(SpriteExampleContext));

    GF_ASSERT(seCtx != NULL);

    seCtx->state = 0;
    seCtx->spriteSys = spriteSys;
    seCtx->spriteManager = spriteManager;
    seCtx->managedSprite = managedSprite;
    seCtx->battleAnimSys = system;

    spriteTemplate = BattleAnimSystem_GetLastSpriteTemplate(system);
    seCtx->managedSprites[0] = managedSprite;

    {
        int i;

        for (i = 1; i < 3; i++) {
            seCtx->managedSprites[i] = SpriteSystem_NewSprite(seCtx->spriteSys, seCtx->spriteManager, &spriteTemplate);
        }
    }

    BattleAnimSystem_StartAnimTaskEx(system, BattleAnimTask_SpriteExample, seCtx, 0x1000);
}
