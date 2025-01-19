#ifndef POKEPLATINUM_POKEDEXENCDATA_H
#define POKEPLATINUM_POKEDEXENCDATA_H

#include "constants/species.h"

#include "cell_actor.h"
#include "heap.h"

typedef struct EncounterLocations {
    int *locations;
    int numLocations;
} EncounterLocations;

typedef struct {
    u8 x;
    u8 y;
    u8 isMtCoronet;
    u8 unused;
} DungeonCoordinates;

typedef struct {
    u8 y;
    u8 x;
    u8 height;
    u8 width;
    u8 cellMatrix[32];
} FieldCoordinates;

enum PokedexEncFileCatgegory {
    PEFC_DUNGEONMORNING,
    PEFC_DUNGEONDAY,
    PEFC_DUNGEONNIGHT,
    PEFC_DUNGEONSPECIAL,
    PEFC_DUNGEONSPECIALNATDEX,
    PEFC_FIELDMORNING,
    PEFC_FIELDDAY,
    PEFC_FIELDNIGHT,
    PEFC_FIELDSPECIAL,
    PEFC_FIELDSPECIALNATDEX,
};

/**
 * @brief Reads species encounter data from zukan_enc_platinum.narc
 *
 * encounterLocations is populated with the value and length of the file
 * corresponding to the provided species and encounter.
 *
 * @param encounterLocations
 * @param species
 * @param encounterCategory
 * @param heapID
 */
void PokedexEncData_PopulateEncounterLocations(EncounterLocations *encounterLocations, int species, int encounterCategory, enum HeapId heapID);

/**
 * @brief Frees encounter data from the heap
 *
 * @param encounterLocations
 */
void PokedexEncData_FreeEncounterLocations(EncounterLocations *encounterLocations);

/**
 * @brief Reads dungeon coordinates data from zukan_enc_platinum.narc
 *
 * The first file in zukan_enc_platinum contains the location of each dungeon.
 * numDungeons is only set if not passed as null.
 *
 * @param heapID
 * @param numDungeons
 * @return Array of coordinates for each dungeon
 */
DungeonCoordinates *PokedexEncData_GetDungeonCoordinates(enum HeapId heapID, int *numDungeons);

/**
 * @brief Reads field coordinates data from zukan_enc_platinum.narc
 *
 * The third file in zukan_enc_platinum contains the location and shape of each field.
 * numFields is only set if not passed as null.
 *
 * @param heapID
 * @param numFields
 * @return Array of coordinates for each field
 */
FieldCoordinates *PokedexEncData_GetFieldCoordinates(enum HeapId heapID, int *numFields);

/**
 * @brief Updates fieldMap with the coordinates occupied by the field
 *
 * pokedexFieldMap is a 1D array treated like a 2D array for map purposes.
 * Each coordinate occupied by the passed field will become 1 on the map.
 *
 * @param pokedexFieldMap
 * @param mapHeight
 * @param mapWidth
 * @param fieldCoordinates
 */
void PokedexEncData_LocateFieldOnMap(u8 *pokedexFieldMap, u8 mapHeight, u8 mapWidth, const FieldCoordinates *fieldCoordinates);

/**
 * @brief Updates fieldMap with the coordinates occupied by visible fields
 *
 * Calls PokedexEncData_LocateFieldOnMap() for each field in encounterLocations not in invisibleFields.
 *
 * @param pokedexFieldMap
 * @param mapHeight
 * @param mapWidth
 * @param fieldCoordinatesArray
 * @param encounterLocations
 * @param invisibleFields
 * @param numInvisibleFields
 * @return Number of visible fields
 */
u32 PokedexEncData_LocateVisibleFields(u8 *pokedexFieldMap, int mapHeight, int mapWidth, const FieldCoordinates *fieldCoordinatesArray, const EncounterLocations *encounterLocations, const u8 *invisibleFields, u32 numInvisibleFields);

/**
 * @brief Creates a CellActor with the coordinates occupied by the dungeon
 *
 * coronetAnimID is used for Mt Coronet, animID otherwise.
 *
 * @param cellActor
 * @param xOffset
 * @param yOffset
 * @param xScale
 * @param yScale
 * @param dungeonCoordinates
 * @param animID
 * @param coronetAnimID
 */
void PokedexEncData_LocateDungeonOnMap(CellActor *cellActor, int xOffset, int yOffset, int xScale, int yScale, const DungeonCoordinates *dungeonCoordinates, int animID, int coronetAnimID);

/**
 * @brief Creates CellActors with the coordinates occupied by visible fields
 *
 * Calls PokedexEncData_LocateDungeonOnMap() for each dungeon in encounterLocations not in invisibleDungeons.
 * cellActorsModified is set to the number of PokedexEncData_LocateDungeonOnMap() calls.
 * The returned value = (cellActorsModified + initialNumVisibleDungeons)
 *
 * @param cellActorArray
 * @param initialNumVisibleDungeons
 * @param maxNumDungeons
 * @param xOffset
 * @param yOffset
 * @param xScale
 * @param yScale
 * @param dungeonCoordinatesArray
 * @param encounterLocations
 * @param animID
 * @param coronetAnimID
 * @param invisibleDungeons
 * @param numInvisibleDungeons
 * @param cellActorsModified
 * @return Number of visible dungeons
 */
int PokedexEncData_LocateVisibleDungeons(CellActor **cellActorArray, int initialNumVisibleDungeons, int maxNumDungeons, int xOffset, int yOffset, int xScale, int yScale, const DungeonCoordinates *dungeonCoordinatesArray, const EncounterLocations *encounterLocations, int animID, int coronetAnimID, const u8 *invisibleDungeons, u32 numInvisibleDungeons, u32 *cellActorsModified);

#endif // POKEPLATINUM_POKEDEXENCDATA_H
