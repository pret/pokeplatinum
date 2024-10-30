#include "unk_02046AD4.h"

#include <nitro.h>
#include <string.h>

#include "data/mart_items.h"
#include "overlay007/ov7_0224CD28.h"

#include "field_script_context.h"
#include "inlines.h"
#include "save_player.h"
#include "trainer_info.h"
#include "unk_0203D1B8.h"

BOOL ScrCmd_147(ScriptContext *param0)
{
    u16 v0[64];
    u8 v1, v2, v3, v4;
    u16 v5 = ScriptContext_GetVar(param0);

    v3 = 0;
    v2 = 0;
    v1 = 0;

    for (v4 = 0; v4 < 8; v4++) {
        if (TrainerInfo_HasBadge(SaveData_GetTrainerInfo(param0->fieldSystem->saveData), v4) == 1) {
            v2++;
        }
    }

    switch (v2) {
    case 0:
        v1 = 1;
        break;
    case 1:
    case 2:
        v1 = 2;
        break;
    case 3:
    case 4:
        v1 = 3;
        break;
    case 5:
    case 6:
        v1 = 4;
        break;
    case 7:
        v1 = 5;
        break;
    case 8:
        v1 = 6;
        break;
    default:
        v1 = 1;
        break;
    }

    for (v4 = 0; v4 < (NELEMS(PokeMartCommonItems)); v4++) {
        if (v1 >= PokeMartCommonItems[v4].requiredBadges) {
            v0[v3] = PokeMartCommonItems[v4].itemID;
            v3++;
        }
    }

    v0[v3] = 0xffff;

    ov7_0224CDA4(param0->taskManager, param0->fieldSystem, v0, 0, 0);
    return 1;
}

BOOL ScrCmd_148(ScriptContext *param0)
{
    u16 v0 = ScriptContext_GetVar(param0);
    BOOL v1;

    if ((v0 == 8) || (v0 == 9) || (v0 == 10) || (v0 == 11) || (v0 == 12) || (v0 == 13) || (v0 == 19)) {
        v1 = 1;
    } else {
        v1 = 0;
    }

    ov7_0224CDA4(param0->taskManager, param0->fieldSystem, (u16 *)PokeMartSpecialties[v0], 0, v1);
    return 1;
}

BOOL ScrCmd_149(ScriptContext *param0)
{
    u16 v0 = ScriptContext_GetVar(param0);
    BOOL v1;

    if ((v0 == 0) || (v0 == 1)) {
        v1 = 1;
    } else {
        v1 = 0;
    }

    ov7_0224CDA4(param0->taskManager, param0->fieldSystem, (u16 *)VeilstoneDeptStoreDecorationStocks[v0], 1, v1);
    return 1;
}

BOOL ScrCmd_14A(ScriptContext *param0)
{
    u16 v0 = ScriptContext_GetVar(param0);

    ov7_0224CDA4(param0->taskManager, param0->fieldSystem, (u16 *)SunyshoreMarketDailyStocks[v0], 2, 0);
    return 1;
}

BOOL ScrCmd_257(ScriptContext *param0)
{
    sub_0203E518(param0->fieldSystem->taskManager);
    return 1;
}
