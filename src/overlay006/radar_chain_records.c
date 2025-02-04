#include "overlay006/radar_chain_records.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/radar_chain_records.h"

#include "field/field_system.h"

#include "pokeradar.h"
#include "special_encounter.h"

static void SortChainRecords(RadarChainRecords *param0, ChainRecord **param1);

int RadarChainRecords_GetNumFilledSlots(FieldSystem *fieldSystem)
{
    int i;
    int filledSlots;
    RadarChainRecords *recordsData = SpecialEncounter_GetRadarChainRecords(SaveData_GetSpecialEncounters(fieldSystem->saveData));

    filledSlots = 0;

    for (i = 0; i < NUM_RADAR_RECORDS; i++) {
        if (recordsData->records[0].chainCount) {
            filledSlots++;
        }
    }

    return filledSlots;
}

int RadarChainRecords_GetSpecies(FieldSystem *fieldSystem, const u8 slot)
{
    RadarChainRecords *recordsData;
    ChainRecord *records[NUM_RADAR_RECORDS];

    GF_ASSERT(slot < NUM_RADAR_RECORDS);

    recordsData = SpecialEncounter_GetRadarChainRecords(SaveData_GetSpecialEncounters(fieldSystem->saveData));
    SortChainRecords(recordsData, records);

    return records[slot]->species;
}

int RadarChainRecords_GetChainCount(FieldSystem *fieldSystem, const u8 slot)
{
    RadarChainRecords *recordsData;
    ChainRecord *records[NUM_RADAR_RECORDS];

    GF_ASSERT(slot < NUM_RADAR_RECORDS);
    recordsData = SpecialEncounter_GetRadarChainRecords(SaveData_GetSpecialEncounters(fieldSystem->saveData));

    SortChainRecords(recordsData, records);
    return records[slot]->chainCount;
}

int RadarChainRecords_GetActiveChain(FieldSystem *fieldSystem)
{
    return GetChainCount(fieldSystem);
}

int GetRadarSpecies(FieldSystem *fieldSystem)
{
    int species, level;

    GetRadarMon(fieldSystem->chain, &species, &level);
    return species;
}

void RadarChainRecords_SortSavedRecords(RadarChainRecords *recordsData)
{
    int i;
    ChainRecord recordsCopy[NUM_RADAR_RECORDS];
    ChainRecord *sortedRecords[NUM_RADAR_RECORDS];

    SortChainRecords(recordsData, sortedRecords);

    for (i = 0; i < NUM_RADAR_RECORDS; i++) {
        recordsCopy[i] = *(sortedRecords[i]);
    }

    for (i = 0; i < NUM_RADAR_RECORDS; i++) {
        recordsData->records[i] = recordsCopy[i];
    }
}

// Sorts RadarChainRecords data in descending order.
static void SortChainRecords(RadarChainRecords *data, ChainRecord **sorted)
{
    if (data->records[0].chainCount < data->records[1].chainCount) {
        if (data->records[1].chainCount < data->records[2].chainCount) { // 2 > 1 > 0
            sorted[0] = &data->records[2];
            sorted[1] = &data->records[1];
            sorted[2] = &data->records[0];
        } else if (data->records[0].chainCount < data->records[2].chainCount) { // 1 > 2 > 0
            sorted[0] = &data->records[1];
            sorted[1] = &data->records[2];
            sorted[2] = &data->records[0];
        } else { // 1 > 0 > 2
            sorted[0] = &data->records[1];
            sorted[1] = &data->records[0];
            sorted[2] = &data->records[2];
        }
    } else {
        if (data->records[0].chainCount < data->records[2].chainCount) { // 2 > 0 > 1
            sorted[0] = &data->records[2];
            sorted[1] = &data->records[0];
            sorted[2] = &data->records[1];
        } else if (data->records[1].chainCount < data->records[2].chainCount) { // 0 > 2 > 1
            sorted[0] = &data->records[0];
            sorted[1] = &data->records[2];
            sorted[2] = &data->records[1];
        } else { // 0 > 1 > 2
            sorted[0] = &data->records[0];
            sorted[1] = &data->records[1];
            sorted[2] = &data->records[2];
        }
    }
}
