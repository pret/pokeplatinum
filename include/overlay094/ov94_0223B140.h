#ifndef POKEPLATINUM_OV94_0223B140_H
#define POKEPLATINUM_OV94_0223B140_H

#include "overlay094/struct_ov94_0223BA24.h"
#include "overlay094/struct_ov94_0223BA88.h"
#include "overlay094/struct_ov94_0223BA88_sub3.h"
#include "overlay096/struct_ov96_0223B574.h"
#include "overlay096/struct_ov96_0223B574_1.h"

void ov94_0223B140(s32 param0, u64 param1);
void GTSNetworking_ProcessCurrentRequest(void);
void ov94_0223B7AC(void);
BOOL GTSNetworking_RequestComplete(void);
s32 GTSNetworking_GetErrorCode(void);
void GTSNetworking_Post(const GTSPokemonListing *param0);
void ov94_0223B834(void);
void GTSNetworking_GetListedPokemon(GTSPokemonListing *param0);
void GTSNetworking_GetListingStatus(GTSPokemonListing *param0);
void GTSNetworking_Delete(void);
void GTSNetworking_Return(void);
void GTSNetworking_Search(const GTSPokemonListing_sub3 *param0, s32 param1, GTSPokemonListing *param2);
void ov94_0223BA24(const UnkStruct_ov94_0223BA24 *param0, GTSPokemonListing *param1);
void ov94_0223BA88(s32 param0, const GTSPokemonListing *param1, GTSPokemonListing *param2);
void ov94_0223BAEC(void);
void GTSNetworking_InitConnection(void);
void GTSNetworking_SetProfile(const WorldExchangeTrainer *param0, WorldExchangeTrainerError *param1);

#endif // POKEPLATINUM_OV94_0223B140_H
