#include "unk_0206C660.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay006/npc_trade.h"
#include "overlay006/struct_ov6_02246254.h"
#include "overlay095/ov95_02246C20.h"

#include "field_task.h"
#include "field_transition.h"
#include "heap.h"
#include "pokemon.h"

FS_EXTERN_OVERLAY(overlay95);

typedef struct {
    NpcTradeData *unk_00;
    u32 unk_04;
    int unk_08;
    NpcTradeAnimationConfig unk_0C;
    Pokemon *unk_24;
    Pokemon *unk_28;
} UnkStruct_0206C660;

static BOOL sub_0206C680(FieldTask *param0);
static void sub_0206C660(FieldTask *param0);

void sub_0206C660(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_0206C660 *v1 = FieldTask_GetEnv(param0);

    {
        FS_EXTERN_OVERLAY(overlay95);

        static const ApplicationManagerTemplate v2 = {
            TradeSequence_Init,
            TradeSequence_Main,
            TradeSequence_Exit,
            FS_OVERLAY_ID(overlay95),
        };

        FieldTask_RunApplication(param0, &v2, &v1->unk_0C);
    }
}

static BOOL sub_0206C680(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_0206C660 *v1 = FieldTask_GetEnv(param0);

    switch (v1->unk_04) {
    case 0:
        ov6_02246254(fieldSystem, v1->unk_00, v1->unk_08, &v1->unk_0C, v1->unk_24, v1->unk_28);
        NpcTrade_ReceiveMon(fieldSystem, v1->unk_00, v1->unk_08);
        v1->unk_04++;
        break;
    case 1:
        FieldTransition_FadeOut(param0);
        v1->unk_04++;
        break;
    case 2:
        FieldTransition_FinishMap(param0);
        v1->unk_04++;
        break;
    case 3:
        sub_0206C660(param0);
        v1->unk_04++;
        break;
    case 4:
        FieldTransition_StartMap(param0);
        v1->unk_04++;
        break;
    case 5:
        FieldTransition_FadeIn(param0);
        v1->unk_04++;
        break;
    case 6:
        Heap_FreeToHeap(v1->unk_24);
        Heap_FreeToHeap(v1->unk_28);
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

void sub_0206C740(FieldTask *param0, NpcTradeData *param1, int param2, u32 heapID)
{
    UnkStruct_0206C660 *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_0206C660));

    memset(v0, 0, sizeof(UnkStruct_0206C660));

    v0->unk_04 = 0;
    v0->unk_00 = param1;
    v0->unk_08 = param2;
    v0->unk_24 = Pokemon_New(heapID);
    v0->unk_28 = Pokemon_New(heapID);

    FieldTask_InitCall(param0, sub_0206C680, v0);
}
