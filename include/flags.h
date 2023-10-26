#ifndef POKEPLATINUM_FLAGS_H
#define POKEPLATINUM_FLAGS_H

/**
 * @brief Gets a bitmask with a single bit set at the specified index.
 * 
 * @param index 
 * @return A bitmask with a single bit set at the specified index.
 */
u32 FlagIndex(int index);

/**
 * @brief Gets the index of the lowest set bit of the given number
 * 
 * @param num 
 * @return The index of the lowest set bit of the given number 
 */
int LowestBit(u32 num);

#endif // POKEPLATINUM_FLAGS_H