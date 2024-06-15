#include <nitro.h>
#include <string.h>

#include "core_sys.h"

#include "overlay006/encounter_data.h"

#include "overlay006/ov6_022477B8.h"

void ov6_022477B8 (const WildEncounters * encounterData, const BOOL param1, int * param2, int * param3)
{
    if (!param1) {
        return;
    }

    switch (gCoreSys.unk_66) {
    case 1:
        (*param2) = encounterData->dualSlotSapphireEncounters[0];
        (*param3) = encounterData->dualSlotSapphireEncounters[1];
        break;
    case 2:
        (*param2) = encounterData->dualSlotRubyEncounters[0];
        (*param3) = encounterData->dualSlotRubyEncounters[1];
        break;
    case 3:
        (*param2) = encounterData->dualSlotEmeraldEncouters[0];
        (*param3) = encounterData->dualSlotEmeraldEncouters[1];
        break;
    case 4:
        (*param2) = encounterData->dualSlotFireredEncounters[0];
        (*param3) = encounterData->dualSlotFireredEncounters[1];
        break;
    case 5:
        (*param2) = encounterData->dualSlotLeafgreenEncounters[0];
        (*param3) = encounterData->dualSlotLeafgreenEncounters[1];
        break;
    }
}
