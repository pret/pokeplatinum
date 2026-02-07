#include "battle/ov16_0226E148.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/battle_system.h"

#include "battle/battle_cursor.h"
#include "battle/battle_system.h"
#include "battle/struct_ov16_02268A14_decl.h"

#include "heap.h"
#include "narc.h"
#include "sound_playback.h"
#include "sys_task.h"
#include "sys_task_manager.h"

typedef struct {
    BattleSystem *battleSys;
    s16 unk_04;
    s16 unk_06;
} UnkStruct_ov16_0226E148;

static void ov16_0226E188(SysTask *param0, void *param1);

SysTask *ov16_0226E148(BattleSystem *battleSys)
{
    UnkStruct_ov16_0226E148 *v0;
    SysTask *v1;

    v0 = Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0226E148));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov16_0226E148));

    v0->battleSys = battleSys;
    v1 = SysTask_Start(ov16_0226E188, v0, 1000);

    return v1;
}

void ov16_0226E174(SysTask *param0)
{
    UnkStruct_ov16_0226E148 *v0 = SysTask_GetParam(param0);

    Heap_Free(v0);
    SysTask_Done(param0);
}

static void ov16_0226E188(SysTask *param0, void *param1)
{
    UnkStruct_ov16_0226E148 *v0 = param1;
    UnkStruct_ov16_02268A14 *v1 = ov16_0223E02C(v0->battleSys);

    switch (v0->unk_04) {
    case 0:
        GF_ASSERT(v1 != NULL);

        {
            NARC *v2, *v3;

            v2 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
            v3 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

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
        if (ov16_0223F7A4(v0->battleSys) == 1) {
            if (BattleSystem_MenuInput(v1) == 1) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                v0->unk_04++;
            }
        }
        break;
    case 3:
        v0->unk_06++;

        if (v0->unk_06 > 8) {
            BattleSystem_SetStopRecording(v0->battleSys, 0);
            v0->unk_04++;
        }
        break;
    case 4:
        break;
    }
}
