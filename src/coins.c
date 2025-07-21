#include "coins.h"

#include <nitro.h>
#include <string.h>

void Coins_Init(u16 *coins) {
    *coins = 0;
}

void Coins_SetValue(u16 *coins, u32 value) {
    GF_ASSERT(value <= MAX_COINS);
    *coins = value;
}

u16 Coins_GetValue(u16 *coins) {
    return *coins;
}

BOOL Coins_Add(u16 *coins, u16 amount) {
    if (*coins >= MAX_COINS) {
        return FALSE;
    }

    *coins += amount;

    if (*coins > MAX_COINS) {
        *coins = MAX_COINS;
    }

    return TRUE;
}

BOOL Coins_CanAdd(u16 *coins, u16 amount) {
    return (u32)(amount + *coins) <= MAX_COINS;
}

BOOL Coins_Subtract(u16 *coins, u16 amount) {
    if (*coins < amount) {
        return FALSE;
    }

    *coins -= amount;
    return TRUE;
}
