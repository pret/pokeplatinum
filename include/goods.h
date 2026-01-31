#ifndef POKEPLATINUM_GOODS_H
#define POKEPLATINUM_GOODS_H

#include "generated/goods.h"

u8 Good_GetWidth(enum Good goodID);
u8 Good_GetDepth(enum Good goodID);
const u8 *Good_GetCollision(enum Good goodID);
u8 Good_GetSpherePriceType(enum Good goodID);
u8 Good_GetSpherePriceMinSize(enum Good goodID);
u8 Good_GetSpherePriceMaxSize(enum Good goodID);
int Good_GetMoneyPrice(enum Good goodID);
int Good_GetInteractMessageID(enum Good goodID);
BOOL Good_IsNatDexRequired(enum Good goodID);
BOOL Good_IsUngiftable(enum Good goodID);

#endif // POKEPLATINUM_GOODS_H
