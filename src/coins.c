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

u32 Coins_GetValue(const u16 *coins) {
    return *coins;
}

BOOL Coins_Add(u16 *coins, u32 amount) {
    if (*coins >= MAX_COINS) {
        return FALSE;
    }

    *coins += amount;

    if (*coins > MAX_COINS) {
        *coins = MAX_COINS;
    }

    return TRUE;
}

BOOL Coins_CanAddAmount(const u16 *coins, u32 amount) {
    if (amount + (u32)*coins <= MAX_COINS) {
        return TRUE;
    } else {
        return FALSE;
    }
}

BOOL Coins_Subtract(u16 *coins, u32 amount) {
    if (*coins < amount) {
        return FALSE;
    }

    *coins -= amount;
    return TRUE;
}
