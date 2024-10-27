#ifndef POKEPLATINUM_POKEDEXFIELDMAP_H
#define POKEPLATINUM_POKEDEXFIELDMAP_H

#include "bg_window.h"

/**
 * @brief Highlights fields on the map
 *
 * Generates a rectangle corresponding to the field type.
 * Differs based upon neighboring fields.
 *
 * @param window
 * @param src
 * @param fieldWidth
 * @param fieldHeight
 * @param mapSize
 * @param pokedexFieldMap
 * @param mapHeight
 * @param mapWidth
 * @param yOffset
 * @param xOffset
 */
void PokedexFieldMap_DisplayFields(Window *window, u8 *src, u16 fieldWidth, u16 fieldHeight, u8 mapSize, u8 *pokedexFieldMap, u8 mapHeight, u8 mapWidth, u16 yOffset, u16 xOffset);

/**
 * @brief Identifies how many neighboring fields each empty map location has
 *
 * Each combination of neighbors has a corresponding value stored in the map.
 * For example, an empty location with fields to the north and east is different from one with neighbors to the north and northeast.
 *
 * @param pokedexFieldMap
 * @param mapHeight
 * @param mapWidth
 */
void PokedexFieldMap_SmoothFields(u8 *pokedexFieldMap, u8 mapHeight, u8 mapWidth);

#endif // POKEPLATINUM_POKEDEXFIELDMAP_H
