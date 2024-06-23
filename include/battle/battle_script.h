#ifndef POKEPLATINUM_BATTLE_SCRIPT_H
#define POKEPLATINUM_BATTLE_SCRIPT_H

#include "struct_decls/battle_system.h"

#include "battle/battle_context.h"

/**
 * @brief Execute the loaded battle script.
 *
 * Scripts are executed as a sequence of byte-code instructions which emulate
 * a basic state machine. The execution loop will read a 4-byte sequence from
 * the loaded script, execute the command which is associated with the read
 * sequence, and then proceed forward. Individual commands may consume
 * additional 4-byte sequences from the loaded script as data parameters for
 * their execution. They may also set the location of the next instruction to
 * be read from the script, depending on the individual command.
 *
 * @param battleSys
 * @param battleCtx
 * @return The result of the final command of the script. This should always
 * be TRUE, as the final command of any script should be the End command. All
 * other commands should return FALSE.
 */
BOOL BattleScript_Exec(BattleSystem *battleSys, BattleContext *battleCtx);

#endif // POKEPLATINUM_BATTLE_SCRIPT_H
