#ifndef POKEPLATINUM_OV80_021D2AF4_H
#define POKEPLATINUM_OV80_021D2AF4_H

#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "overlay080/struct_town_map_interaction.h"
#include "overlay080/struct_town_map_city_holder.h"
#include "overlay080/struct_town_map_city.h"

#define TOWN_MAP_UNIT (7)
#define TOWN_MAP_HALF_UNIT (4)

#define TOWN_MAP_COORDINATE(n) (TOWN_MAP_UNIT * n)

enum {
    TOWN_MAP_BLOCK_CIRCLE,
    TOWN_MAP_BLOCK_VERTICAL,
    TOWN_MAP_BLOCK_SQUARE,
    TOWN_MAP_BLOCK_L_UP_RIGHT,
    TOWN_MAP_BLOCK_L_UP_LEFT,
    TOWN_MAP_BLOCK_HORIZONTAL,
    TOWN_MAP_BLOCK_PALPARK
};

/**
 * @brief Allocates a TownMapCityHolder struct, then initializes it with data from gTownMapBlocks
 *
 * @param param0 ???
 * @param param1 ???
 * @param arriveFlags Array of flags used to initialize the holder's TownMapCity->flag
 * @param cityCount   Number of cities the struct should hold
 * @param heapID      ID of the heap to alloc from
 * 
 * @returns TownMapInteractionList*
 */
TownMapCityHolder * TownMapCityHolder_New(UnkStruct_0200C6E4 * param0, UnkStruct_0200C704 * param1, u8 * arriveFlags, short cityCount, int heapID);

/**
 * @brief Free a TownMapCityHolder struct back to its owning heap.
 * 
 * @param holder The struct to be freed.
 */
void TownMapCityHolder_Free(TownMapCityHolder * holder);

/**
 * @brief Returns the first occurrence of TownMapCity
 * in the holder with the specified coordinates. If no match
 * is found, a NULL pointer is returned.
 *
 * @param holder    Pointer to a TownMapCityHolder struct
 * @param param3    Map header index
 * @param xCoord    x coordinate
 * @param yCoord    y coordinate
 * 
 * @returns TownMapCity* if success, otherwise NULL
 */
TownMapCity * TownMapCityHolder_SearchByHeaderAndCoordinates(TownMapCityHolder * holder, int headerID, int xCoord, int yCoord);

int ov80_021D2CC0(TownMapCityHolder * param0, int param1, int param2, int param3);
void ov80_021D2D28(TownMapCityHolder * param0, int param1);

/**
 * @brief Allocates a TownMapInteractionList struct, then initializes it with data from a binary file
 *
 * @param filePath    Path to the file containing the data to initialize the struct with
 * @param heapID      ID of the heap to alloc from
 * 
 * @returns TownMapInteractionList*
 */
TownMapInteractionList * TownMapInteractionList_New(const char * filePath, int heapID);

/**
 * @brief Free a TownMapInteractionList struct back to its owning heap.
 * 
 * @param list The struct to be freed.
 */
void TownMapInteractionList_Free(TownMapInteractionList * list);

/**
 * @brief Returns the first occurrence of TownMapInteraction
 * in the list with the specified coordinates. If no match
 * is found, a NULL pointer is returned.
 *
 * @param list      Pointer to a TownMapInteraction struct
 * @param xCoord    x coordinate
 * @param yCoord    y coordinate
 * @param param3    ???
 * 
 * @returns TownMapInteraction* if success, otherwise NULL
 */
TownMapInteraction * TownMapInteractionList_GetElementFromCoordinates(TownMapInteractionList * list, int xCoord, int yCoord, u16 param3);

#endif // POKEPLATINUM_OV80_021D2AF4_H
