#include "scrcmd_battle_factory.h"

#include <nitro.h>

#include "battle_factory_save.h"
#include "battle_frontier_save.h"
#include "battle_frontier_stats.h"
#include "field_script_context.h"
#include "inlines.h"

BOOL ScrCmd_DeleteActiveBattleFactoryStreak(ScriptContext *ctx)
{
    u16 challengeType = ScriptContext_GetVar(ctx);
    u16 isOpenLevel = ScriptContext_GetVar(ctx);

    BattleFactoryStreakFlags *flags = BattleFactoryStreakFlags_Get(ctx->fieldSystem->saveData);

    u8 value[4];
    value[0] = 0;
    BattleFactoryStreakFlags_SetFlag(flags, FACTORY_SAVE_STREAK_FLAGS, (isOpenLevel * 4) + challengeType, value);

    if (challengeType == FRONTIER_CHALLENGE_MULTI_WFC) {
        u32 statIndex;
        if (isOpenLevel == FALSE) {
            statIndex = STAT_FACTORY_50_WFC_STREAK_ACTIVE;
        } else {
            statIndex = STAT_FACTORY_OPEN_WFC_STREAK_ACTIVE;
        }

        BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(ctx->fieldSystem->saveData), statIndex, 0);
    }

    BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(ctx->fieldSystem->saveData), BattleFrontierStats_GetFactoryLatestStreakIdx(isOpenLevel, challengeType), 0);
    BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(ctx->fieldSystem->saveData), BattleFrontierStats_GetFactoryLatestTradeCountIndex(isOpenLevel, challengeType), 0);

    return FALSE;
}
