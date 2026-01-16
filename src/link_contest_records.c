#include "link_contest_records.h"

#include <nitro.h>
#include <string.h>

#include "constants/contests.h"

#include "savedata.h"

int LinkContestRecords_SaveSize(void)
{
    return sizeof(LinkContestRecords);
}

void LinkContestRecords_Init(LinkContestRecords *linkContestRecords)
{
    int placement;

    for (int type = 0; type < CONTEST_TYPE_MAX; type++) {
        for (placement = 0; placement < CONTEST_NUM_PARTICIPANTS; placement++) {
            linkContestRecords->contestPlacement[type][placement] = 0;
        }
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_LINK_CONTEST_RECORDS);
}

void LinkContestRecords_IncrementSavaData(SaveData *saveData, enum PokemonContestType contestType, int placement)
{
    LinkContestRecords *linkContestRecords = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_LINK_CONTEST_RECORDS);

    if (linkContestRecords->contestPlacement[contestType][placement] < 9999) {
        linkContestRecords->contestPlacement[contestType][placement]++;
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_LINK_CONTEST_RECORDS);
}

u16 LinkContestRecords_GetSavaData(SaveData *saveData, enum PokemonContestType contestType, int placement)
{
    LinkContestRecords *linkContestRecords = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_LINK_CONTEST_RECORDS);
    SaveData_Checksum(SAVE_TABLE_ENTRY_LINK_CONTEST_RECORDS);

    return linkContestRecords->contestPlacement[contestType][placement];
}
