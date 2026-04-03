#include "unk_0204F04C.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_020300F4.h"

#include "battle_frontier_stats.h"
#include "field_script_context.h"
#include "inlines.h"
#include "unk_0202FF4C.h"
#include "unk_0205DFC4.h"

BOOL ScrCmd_2C5(ScriptContext *param0);

BOOL ScrCmd_2C5(ScriptContext *param0)
{
    u32 v0;
    u8 v1[4];
    UnkStruct_020300F4 *v2;
    u16 v3 = ScriptContext_GetVar(param0);
    u16 v4 = ScriptContext_GetVar(param0);

    v2 = sub_020300F4(param0->fieldSystem->saveData);
    v1[0] = 0;

    sub_020300B0(v2, 10, (v4 * 4) + v3, v1);

    if (v3 == 3) {
        if (v4 == 0) {
            v0 = 102;
        } else {
            v0 = 104;
        }

        BattleFrontierStats_SetStat(SaveData_GetBattleFrontier(param0->fieldSystem->saveData), v0, BattleFrontierStats_GetHostFriendIdx(v0), 0);
    }

    BattleFrontierStats_SetStat(SaveData_GetBattleFrontier(param0->fieldSystem->saveData), BattleFrontierStats_GetFactoryLatestStreakIdx(v4, v3), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetFactoryLatestStreakIdx(v4, v3)), 0);
    BattleFrontierStats_SetStat(SaveData_GetBattleFrontier(param0->fieldSystem->saveData), BattleFrontierStats_GetFactoryLatestTradeCountIndex(v4, v3), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetFactoryLatestTradeCountIndex(v4, v3)), 0);

    return 0;
}
