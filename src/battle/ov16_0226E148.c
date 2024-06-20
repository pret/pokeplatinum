#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/battle_system.h"
#include "battle/struct_ov16_02268A14_decl.h"

#include "unk_02005474.h"
#include "narc.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "sys_task_manager.h"
#include "battle/ov16_0223DF00.h"
#include "battle/ov16_0226871C.h"
#include "battle/ov16_0226E148.h"

typedef struct {
    BattleSystem * unk_00;
    s16 unk_04;
    s16 unk_06;
} UnkStruct_ov16_0226E148;

static void ov16_0226E188(SysTask * param0, void * param1);

SysTask * ov16_0226E148 (BattleSystem * param0)
{
    UnkStruct_ov16_0226E148 * v0;
    SysTask * v1;

    v0 = Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0226E148));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov16_0226E148));

    v0->unk_00 = param0;
    v1 = SysTask_Start(ov16_0226E188, v0, 1000);

    return v1;
}

void ov16_0226E174 (SysTask * param0)
{
    UnkStruct_ov16_0226E148 * v0;

    v0 = SysTask_GetParam(param0);

    Heap_FreeToHeap(v0);
    SysTask_Done(param0);
}

static void ov16_0226E188 (SysTask * param0, void * param1)
{
    UnkStruct_ov16_0226E148 * v0 = param1;
    UnkStruct_ov16_02268A14 * v1;

    v1 = ov16_0223E02C(v0->unk_00);

    switch (v0->unk_04) {
    case 0:
        GF_ASSERT(v1 != NULL);

        {
            NARC * v2, * v3;

            v2 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, 5);
            v3 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, 5);

            ov16_02268C04(v2, v3, v1, 18, 0, NULL);
            NARC_dtor(v2);
            NARC_dtor(v3);
        }
        v0->unk_04++;
        break;
    case 1:
        if (ov16_02269348(v1) == 1) {
            v0->unk_04++;
        }
        break;
    case 2:
        if (ov16_0223F7A4(v0->unk_00) == 1) {
            if (ov16_0226925C(v1) == 1) {
                Sound_PlayEffect(1501);
                v0->unk_04++;
            }
        }
        break;
    case 3:
        v0->unk_06++;

        if (v0->unk_06 > 8) {
            BattleSystem_SetStopRecording(v0->unk_00, 0);
            v0->unk_04++;
        }
        break;
    case 4:
        break;
    }
}
