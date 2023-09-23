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

TownMapCityHolder * ov80_021D2AF4(UnkStruct_0200C6E4 * param0, UnkStruct_0200C704 * param1, u8 * param2, short param3, int param4);
void ov80_021D2C1C(TownMapCityHolder * param0);
TownMapCity * ov80_021D2C5C(TownMapCityHolder * param0, int param1, int param2, int param3);
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
 * @param loader The struct to be freed.
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
