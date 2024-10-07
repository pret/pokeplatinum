#include "pokedex_data_index.h"

#include <nitro.h>
#include <string.h>

#include "text/pl_msg.naix"

#include "narc.h"

static u32 sPokedexDataNarcIndex = NARC_INDEX_APPLICATION__ZUKANLIST__ZKN_DATA__ZUKAN_DATA;
static u32 sWeightMessageBankIndex = message_bank_species_weight;
static u32 sHeightMessageBankIndex = message_bank_species_height;

void Pokedex_SetupGiratina(u32 formNun)
{
    if (formNun == 0) {
        sPokedexDataNarcIndex = NARC_INDEX_APPLICATION__ZUKANLIST__ZKN_DATA__ZUKAN_DATA_GIRA;
        sWeightMessageBankIndex = message_bank_species_weight_gira;
        sHeightMessageBankIndex = message_bank_species_height_gira;
    } else {
        sPokedexDataNarcIndex = NARC_INDEX_APPLICATION__ZUKANLIST__ZKN_DATA__ZUKAN_DATA;
        sWeightMessageBankIndex = message_bank_species_weight;
        sHeightMessageBankIndex = message_bank_species_height;
    }
}

u32 Pokedex_Data_NARC_Index(void)
{
    return sPokedexDataNarcIndex;
}

u32 Weight_Message_Bank_Index(void)
{
    return sWeightMessageBankIndex;
}

u32 Height_Message_Bank_Index(void)
{
    return sHeightMessageBankIndex;
}
