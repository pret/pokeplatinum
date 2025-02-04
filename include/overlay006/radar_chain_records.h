#ifndef POKEPLATINUM_RADAR_CHAIN_RECORDS_H
#define POKEPLATINUM_RADAR_CHAIN_RECORDS_H

#include "struct_defs/radar_chain_records.h"

#include "field/field_system_decl.h"

int RadarChainRecords_GetNumFilledSlots(FieldSystem *fieldSystem);
int RadarChainRecords_GetSpecies(FieldSystem *fieldSystem, const u8 slot);
int RadarChainRecords_GetChainCount(FieldSystem *fieldSystem, const u8 slot);
int RadarChainRecords_GetActiveChain(FieldSystem *fieldSystem);
int GetRadarSpecies(FieldSystem *fieldSystem);
void RadarChainRecords_SortSavedRecords(RadarChainRecords *recordsData);

#endif // POKEPLATINUM_RADAR_CHAIN_RECORDS_H
