#ifndef POKEPLATINUM_MOVE_TABLE_H
#define POKEPLATINUM_MOVE_TABLE_H

#include "consts/moves.h" // def for MoveAttribute

typedef struct MoveContestData {
    u8 effect;
    u8 type;
    u8 padding02[2]; // needed to match
} MoveContestData;

typedef struct MoveTable {
    u16 effect;
    u8 class;
    u8 power;
    u8 type;
    u8 accuracy;
    u8 pp;
    u8 effectChance;
    u16 range;
    s8 priority;
    u8 flags;
    MoveContestData contest;
} MoveTable;

/**
 * @brief Load the full move table into a destination buffer.
 * 
 * No allocation happens here; the destination buffer is assumed to be
 * allocated on entry.
 * 
 * @param buf
 */
void MoveTable_Load(void *buf);

/**
 * @brief Load a param for a given move from the global move table.
 * 
 * @param move      The move to load.
 * @param param     The param value to load.
 * @return Value of the parameter for the requested move.
 */
u32 MoveTable_LoadParam(int move, enum MoveAttribute param);

/**
 * @brief Compute the maximum PP for a given move according to a specified
 * number of PP Ups applied to that move.
 * 
 * @param move
 * @param ppUps     The number of PP Ups which have been applied to this move.
 * @return The maximum PP of the move, accounting for PP Ups.
 */
u8 MoveTable_CalcMaxPP(u16 move, u8 ppUps);

/**
 * @brief Get a param value for a given move table entry.
 * 
 * @param entry     A pre-loaded move table entry.
 * @param param     The param to get.
 * @return Value of the parameter for the given move.
 */
u32 MoveTable_Get(MoveTable *entry, enum MoveAttribute param);

#endif // POKEPLATINUM_MOVE_TABLE_H
