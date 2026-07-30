#include "npc_trade_task.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay006/npc_trade.h"
#include "overlay006/struct_npc_trade_animation_template.h"
#include "overlay095/ov95_02246C20.h"

#include "field_task.h"
#include "field_transition.h"
#include "heap.h"
#include "pokemon.h"

FS_EXTERN_OVERLAY(overlay95);

typedef struct NPCTradeTaskEnv {
    NPCTradeData *npcTradeData;
    u32 state;
    int partySlot;
    TradeAnimationTemplate tradeAnimTemplate;
    Pokemon *givingMon;
    Pokemon *receivingMon;
} NPCTradeTaskEnv;

static const ApplicationManagerTemplate tradeSequenceAppMan = {
    TradeSequence_Init,
    TradeSequence_Main,
    TradeSequence_Exit,
    FS_OVERLAY_ID(overlay95),
};

static BOOL FieldTask_ProcessNPCTrade(FieldTask *task);
static void StartTradeApplication(FieldTask *task);

void StartTradeApplication(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    NPCTradeTaskEnv *taskEnv = FieldTask_GetEnv(task);

    FS_EXTERN_OVERLAY(overlay95);

    FieldTask_RunApplication(task, &tradeSequenceAppMan, &taskEnv->tradeAnimTemplate);
}

static BOOL FieldTask_ProcessNPCTrade(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    NPCTradeTaskEnv *taskEnv = FieldTask_GetEnv(task);

    switch (taskEnv->state) {
    case 0:
        NPCTrade_FillAnimationTemplate(fieldSystem, taskEnv->npcTradeData, taskEnv->partySlot, &taskEnv->tradeAnimTemplate, taskEnv->givingMon, taskEnv->receivingMon);
        NPCTrade_ReceiveMon(fieldSystem, taskEnv->npcTradeData, taskEnv->partySlot);
        taskEnv->state++;
        break;
    case 1:
        FieldTransition_FadeOut(task);
        taskEnv->state++;
        break;
    case 2:
        FieldTransition_FinishMap(task);
        taskEnv->state++;
        break;
    case 3:
        StartTradeApplication(task);
        taskEnv->state++;
        break;
    case 4:
        FieldTransition_StartMap(task);
        taskEnv->state++;
        break;
    case 5:
        FieldTransition_FadeIn(task);
        taskEnv->state++;
        break;
    case 6:
        Heap_Free(taskEnv->givingMon);
        Heap_Free(taskEnv->receivingMon);
        Heap_Free(taskEnv);
        return TRUE;
    }

    return FALSE;
}

void FieldTask_StartNPCTrade(FieldTask *task, NPCTradeData *npcTradeData, int partySlot, enum HeapID heapID)
{
    NPCTradeTaskEnv *taskEnv = Heap_Alloc(heapID, sizeof(NPCTradeTaskEnv));

    memset(taskEnv, 0, sizeof(NPCTradeTaskEnv));

    taskEnv->state = 0;
    taskEnv->npcTradeData = npcTradeData;
    taskEnv->partySlot = partySlot;
    taskEnv->givingMon = Pokemon_New(heapID);
    taskEnv->receivingMon = Pokemon_New(heapID);

    FieldTask_InitCall(task, FieldTask_ProcessNPCTrade, taskEnv);
}
