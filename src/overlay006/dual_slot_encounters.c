#include "overlay006/dual_slot_encounters.h"

#include <nitro.h>
#include <string.h>

#include "overlay006/wild_encounters.h"

#include "system.h"

void WildEncounters_ReplaceDualSlotEncounters(const WildEncounters *encounterData, const BOOL nationalDexObtained, int *param2, int *param3) {
    if (!nationalDexObtained) {
        return;
    }

    switch (gSystem.gbaCartridgeVersion) {
    case VERSION_SAPPHIRE:
        (*param2) = encounterData->dualSlotSapphireEncounters[0];
        (*param3) = encounterData->dualSlotSapphireEncounters[1];
        break;
    case VERSION_RUBY:
        (*param2) = encounterData->dualSlotRubyEncounters[0];
        (*param3) = encounterData->dualSlotRubyEncounters[1];
        break;
    case VERSION_EMERALD:
        (*param2) = encounterData->dualSlotEmeraldEncouters[0];
        (*param3) = encounterData->dualSlotEmeraldEncouters[1];
        break;
    case VERSION_FIRERED:
        (*param2) = encounterData->dualSlotFireredEncounters[0];
        (*param3) = encounterData->dualSlotFireredEncounters[1];
        break;
    case VERSION_LEAFGREEN:
        (*param2) = encounterData->dualSlotLeafgreenEncounters[0];
        (*param3) = encounterData->dualSlotLeafgreenEncounters[1];
        break;
    }
}
