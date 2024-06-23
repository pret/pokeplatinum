#ifndef POKEPLATINUM_UNK_0202B594_H
#define POKEPLATINUM_UNK_0202B594_H

#define MAX_COINS 50000

/*
 * Initialize the player's coin case
 *
 * @param coins:    Pointer to coin case amount
 */
void Coins_Init(u16 *coins);

/*
 * Sets the amount of coins in the player's coin case
 *
 * @param coins:    Pointer to coin case amount
 * @param value:    Value to set
 */
void Coins_SetValue(u16 *coins, u32 value);

/*
 * Gets the amount of coins owned
 *
 * @param coins:    Pointer to coin case amount
 *
 * @returns: The amount of coins owned
 */
u32 Coins_GetValue(const u16 *coins);

/*
 * Adds an amount of coins. It will fail if the
 * coin case would overflow.
 *
 * @param coins:    Pointer to coin case amount
 * @param amount:   Number of coins to add
 *
 * @returns: TRUE if success, otherwise FALSE
 */
BOOL Coins_Add(u16 *coins, u32 amount);

/*
 * Checks if a certain amount of coins can be
 * added to the coin case without making it overflow.
 *
 * @param coins:    Pointer to coin case amount
 * @param amount:   Number of coins to add
 *
 * @returns: TRUE if success, otherwise FALSE
 */
BOOL Coins_CanAddAmount(const u16 *coins, u32 amount);

/*
 * Subtracts an amount of coins. It will fail if the
 * coin case would overflow.
 *
 * @param coins:    Pointer to coin case amount
 * @param amount:   Number of coins to subtract
 *
 * @returns: TRUE if success, otherwise FALSE
 */
BOOL Coins_Subtract(u16 *coins, u32 amount);

#endif // POKEPLATINUM_UNK_0202B594_H
