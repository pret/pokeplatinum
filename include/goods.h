#ifndef POKEPLATINUM_GOODS_H
#define POKEPLATINUM_GOODS_H

u8 Good_GetWidth(int goodID);
u8 Good_GetDepth(int goodID);
const u8 *Good_GetCollision(int goodID);
u8 Good_GetSpherePriceType(int goodID);
u8 Good_GetSpherePriceMinSize(int goodID);
u8 Good_GetSpherePriceMaxSize(int goodID);
int Good_GetMoneyPrice(int goodID);
int Good_GetInteractMessageID(int goodID);
BOOL Good_IsNatDexRequired(int goodID);
BOOL Good_IsUngiftable(int goodID);

#endif // POKEPLATINUM_GOODS_H
