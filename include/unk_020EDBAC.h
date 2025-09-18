/**
 * @file unk_020EDBAC.h
 * @brief Movement Action System - Header definitions for map object movement
 *
 * This header defines the core movement action system used by all map objects
 * in Pokemon Platinum. It provides function tables and lookup arrays for
 * converting movement commands into specific action implementations.
 *
 * @author Pokemon Platinum Development Team
 * @date 2008
 */

#ifndef POKEPLATINUM_UNK_020EDBAC_H
#define POKEPLATINUM_UNK_020EDBAC_H

#include "generated/movement_actions.h"

#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_020EDF0C.h"

/**
 * @brief Main movement action function dispatch table
 *
 * Maps each movement action ID (0-152) to its implementation function.
 * This is the central dispatch table used by the movement system.
 */
extern int (*const *const gMovementActionFuncs[MAX_MOVEMENT_ACTION])(MapObject *);

/**
 * @brief Movement action descriptors for complex behaviors
 *
 * Array of movement action descriptors that define multi-phase movement
 * behaviors with initialization, update, completion, and cleanup functions.
 *
 * Known descriptors:
 * - sMovementActionDescriptor_BerryPatch: Berry patch growth stage management
 * - All others: Unknown purposes, kept as Unk_ names until functionality is determined
 */
extern const MovementActionDescriptor *const gMovementActionDescriptors[];

/**
 * @brief Movement action codes lookup table
 *
 * Maps movement type indices to their corresponding directional action
 * code arrays. Used to convert high-level movement commands into
 * specific action IDs.
 */
extern const int *const gMovementActionCodes[];

#endif // POKEPLATINUM_UNK_020EDBAC_H
