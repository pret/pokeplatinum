#include "pokedex_data_index.h"

#include <nitro.h>
#include <string.h>

#include "narc.h"

static u32 pokedex_data_narc_index = NARC_INDEX_APPLICATION__ZUKANLIST__ZKN_DATA__ZUKAN_DATA;
static u32 weight_message_bank_index = 707;
static u32 height_message_bank_index = 709;

void Pokedex_SetupGiratina(u32 param0)
{
    if (param0 == 0) {
        pokedex_data_narc_index = NARC_INDEX_APPLICATION__ZUKANLIST__ZKN_DATA__ZUKAN_DATA_GIRA;
        weight_message_bank_index = 708;
        height_message_bank_index = 710;
    } else {
        pokedex_data_narc_index = NARC_INDEX_APPLICATION__ZUKANLIST__ZKN_DATA__ZUKAN_DATA;
        weight_message_bank_index = 707;
        height_message_bank_index = 709;
    }
}

u32 Pokedex_Data_NARC_Index(void)
{
    return pokedex_data_narc_index;
}

u32 Weight_Message_Bank_Index(void)
{
    return weight_message_bank_index;
}

u32 Height_Message_Bank_Index(void)
{
    return height_message_bank_index;
}
