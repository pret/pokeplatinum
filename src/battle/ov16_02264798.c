#include "battle/ov16_02264798.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/battle_system.h"

#include "battle/ov16_0223DF00.h"
#include "battle/struct_ov16_0225BFFC_decl.h"
#include "battle/struct_ov16_0225BFFC_t.h"

#include "math.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_0200762C.h"

static void ov16_02264800(SysTask *param0, void *param1);

void ov16_02264798(BattlerData *param0, BattleSystem *param1)
{
    if (param0->unk_194 != NULL) {
        return;
    }

    if (BattleSystem_BattleType(param1) & (0x20 | 0x200)) {
        return;
    }

    param0->unk_198 = 180;
    param0->unk_194 = SysTask_Start(ov16_02264800, param0, 1010);
}

void ov16_022647D8(BattlerData *param0)
{
    if (param0->unk_194 == NULL) {
        return;
    }

    SysTask_Done(param0->unk_194);

    param0->unk_194 = NULL;
    param0->unk_198 = 0;

    sub_02007DEC(param0->unk_20, 4, 0);
}

static void ov16_02264800(SysTask *param0, void *param1)
{
    BattlerData *v0 = param1;
    int v1;

    v0->unk_198 += 20;

    if (v0->unk_198 >= 360) {
        v0->unk_198 -= 360;
    }

    v1 = FX_Mul(CalcSineDegrees(v0->unk_198), 0x1800) / FX32_ONE;
    sub_02007DEC(v0->unk_20, 4, v1);
}
