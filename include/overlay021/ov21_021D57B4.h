#ifndef POKEPLATINUM_OV21_021D57B4_H
#define POKEPLATINUM_OV21_021D57B4_H

#include "overlay021/struct_dungeoncoordinates.h"
#include "overlay021/struct_fieldCoordinates.h"
#include "overlay021/struct_ov21_021D5844.h"

#include "cell_actor.h"

#define PEFI_DUNGEONMORNING       4
#define PEFI_DUNGEONDAY           (4 + MAX_SPECIES)
#define PEFI_DUNGEONNIGHT         (4 + MAX_SPECIES * 2)
#define PEFI_DUNGEONSPECIAL       (4 + MAX_SPECIES * 3)
#define PEFI_DUNGEONSPECIALNATDEX (4 + MAX_SPECIES * 4)
#define PEFI_FIELDMORNING         (4 + MAX_SPECIES * 5)
#define PEFI_FIELDDAY             (4 + MAX_SPECIES * 6)
#define PEFI_FIELDNIGHT           (4 + MAX_SPECIES * 7)
#define PEFI_FIELDSPECIAL         (4 + MAX_SPECIES * 8)
#define PEFI_FIELDSPECIALNATDEX   (4 + MAX_SPECIES * 9)

enum PokedexEncFileCatgegory {
    PEFC_DUNGEONMORNING = 0,
    PEFC_DUNGEONDAY = 1,
    PEFC_DUNGEONNIGHT = 2,
    PEFC_DUNGEONSPECIAL = 3,
    PEFC_DUNGEONSPECIALNATDEX = 4,
    PEFC_FIELDMORNING = 5,
    PEFC_FIELDDAY = 6,
    PEFC_FIELDNIGHT = 7,
    PEFC_FIELDSPECIAL = 8,
    PEFC_FIELDSPECIALNATDEX = 9,
};

void PokedexEncData_PopulateMapsEncounteredOn(mapsEncounteredOn *mapsEncOn, int species, int encounterCategory, int heapID);
void PokedexEncData_FreeMapsEncounteredOn(mapsEncounteredOn *mapsEncOn);
dungeonCoordinates *PokedexEncData_GetDungeonLocations(int heapID, int *numDungeons);
fieldCoordinates *PokedexEncData_GetFieldLocations(int heapID, int *numFields);
void ov21_021D58C0(u8 *param0, u8 param1, u8 param2, const fieldCoordinates *param3);
u32 ov21_021D5948(u8 *param0, int param1, int param2, const fieldCoordinates *param3, const mapsEncounteredOn *mapsEncOn, const u8 *param5, u32 param6);
void ov21_021D59D8(CellActor *param0, int param1, int param2, int param3, int param4, const dungeonCoordinates *param5, int param6, int param7);
int ov21_021D5A20(CellActor **param0, int param1, int param2, int param3, int param4, int param5, int param6, const dungeonCoordinates *param7, const mapsEncounteredOn *mapsEncOn, int param9, int param10, const u8 *param11, u32 param12, u32 *param13);

#endif // POKEPLATINUM_OV21_021D57B4_H
