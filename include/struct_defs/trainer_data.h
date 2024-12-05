#ifndef POKEPLATINUM_STRUCT_TRAINER_DATA_H
#define POKEPLATINUM_STRUCT_TRAINER_DATA_H

#include "constants/string.h"

#include "struct_defs/sentence.h"

#include "strbuf.h"

enum TrainerDataType {
    TRDATATYPE_BASE = 0,
    TRDATATYPE_WITH_MOVES,
    TRDATATYPE_WITH_ITEM,
    TRDATATYPE_WITH_MOVES_AND_ITEM,
};

/**
 * @brief Trainer data encapsulation. Contains all trainer-level data needed to instantiate a trainer battle.
 */
typedef struct Trainer {
    u8 type; //< The data type of the trainer; controls which TrainerMon struct is used for the party.
    u8 class; //< The trainer's class, e.g. "Youngster" or "Gym Leader."
    u8 sprite; //< Which sprite ID the trainer uses.
    u8 partySize; //< How many Pokemon the trainer has in their party.

    u16 items[4]; //< Items that the trainer has in their bag.

    u32 aiMask; //< Mask of AI flags to use for this trainer in battle.

    u32 battleType; //< The type of battle to be instantiated.

    charcode_t name[TRAINER_NAME_LEN + 1]; //< The trainer's name.

    Sentence winMsg; //< The message to display if the trainer wins.
    Sentence loseMsg; //< The message to display if the trainer loses.
} Trainer;

#define MAX_DV 255

/**
 * @brief The most basic Trainer Pokemon structure. No item is held, and moves are populated from the learnset.
 */
typedef struct TrainerMonBase {
    u16 dv; //< Difficulty value; determines how many IVs the Pokemon will have in each stat.
    u16 level; //< The Pokemon's level.
    u16 species; //< Composite mask of the Pokemon's level (least-significant 10 bits) and form (most-significant 6 bits).
    u16 cbSeal; //< Ball seal applied to the Pokemon.
} TrainerMonBase;

/**
 * @brief Trainer Pokemon that knows a certain set of moves.
 */
typedef struct TrainerMonWithMoves {
    u16 dv; //< Difficulty value; determines how many IVs the Pokemon will have in each stat.
    u16 level; //< The Pokemon's level.
    u16 species; //< Composite mask of the Pokemon's level (least-significant 10 bits) and form (most-significant 6 bits).
    u16 moves[4]; //< The Pokemon's known moves.
    u16 cbSeal; //< Ball seal applied to the Pokemon.
} TrainerMonWithMoves;

/**
 * @brief Trainer Pokemon that has a specific held item.
 */
typedef struct TrainerMonWithItem {
    u16 dv; //< Difficulty value; determines how many IVs the Pokemon will have in each stat.
    u16 level; //< The Pokemon's level.
    u16 species; //< Composite mask of the Pokemon's level (least-significant 10 bits) and form (most-significant 6 bits).
    u16 item; //< The Pokemon's held item.
    u16 cbSeal; //< Ball seal applied to the Pokemon.
} TrainerMonWithItem;

/**
 * @brief Trainer Pokemon that has a specific held item and knows a certain set of moves.
 */
typedef struct TrainerMonWithMovesAndItem {
    u16 dv; //< Difficulty value; determines how many IVs the Pokemon will have in each stat.
    u16 level; //< The Pokemon's level.
    u16 species; //< Composite mask of the Pokemon's level (least-significant 10 bits) and form (most-significant 6 bits).
    u16 item; //< The Pokemon's held item.
    u16 moves[4]; //< The Pokemon's known moves.
    u16 cbSeal; //< Ball seal applied to the Pokemon.
} TrainerMonWithMovesAndItem;

#endif // POKEPLATINUM_STRUCT_TRAINER_DATA_H
