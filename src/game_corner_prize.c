#include "game_corner_prize.h"

#include <nitro.h>
#include <string.h>

#include "generated/items.h"

#include "field_script_context.h"
#include "inlines.h"

BOOL ScrCmd_GetGameCornerPrizeData(ScriptContext *param0)
{
    u16 index = ScriptContext_GetVar(param0);
    u16 *item = ScriptContext_GetVarPointer(param0);
    u16 *price = ScriptContext_GetVarPointer(param0);
    static const u16 GameCornerPrizeData[][2] = {
        { ITEM_SILK_SCARF,      1000 },
        { ITEM_WIDE_LENS,       1000 },
        { ITEM_ZOOM_LENS,       1000 },
        { ITEM_METRONOME,       1000 },
        { ITEM_TM90,            2000 },
        { ITEM_TM58,            2000 },
        { ITEM_TM75,            4000 },
        { ITEM_TM32,            4000 },
        { ITEM_TM44,            6000 },
        { ITEM_TM89,            6000 },
        { ITEM_TM10,            6000 },
        { ITEM_TM27,            8000 },
        { ITEM_TM21,            8000 },
        { ITEM_TM35,            10000 },
        { ITEM_TM24,            10000 },
        { ITEM_TM13,            10000 },
        { ITEM_TM29,            10000 },
        { ITEM_TM74,            15000 },
        { ITEM_TM68,            20000 }
    };

    *item = GameCornerPrizeData[index][0];
    *price = GameCornerPrizeData[index][1];

    return 0;
}
