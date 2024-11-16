#include "ribbon.h"

#include <nitro.h>
#include <string.h>

#include "graphics/pokemon_summary_screen/pl_pst_gra.naix"
#include "text/gmm/message_bank_ribbon_names.h"

typedef struct {
    u32 ribbonID;
    u16 spriteID;
    u16 paletteNum;
    u16 nameID;
    u16 descriptionID;
} RibbonData;

// the special ribbons are unobtainable in-game through normal means,
// either unused or event-only
#define SPECIAL_DESCRIPTION_MASK   0x8000
#define SPECIAL_DESCRIPTIONS_START 146

static const RibbonData sRibbonDataTable[] = {
    [RIBBON_HOENN_CHAMPION] = {
        .ribbonID = 98,
        .spriteID = hoenn_champion_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_hoenn_champion,
        .descriptionID = 80,
    },
    [RIBBON_HOENN_COOL] = {
        .ribbonID = 78,
        .spriteID = hoenn_contest_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_hoenn_cool,
        .descriptionID = 81,
    },
    [RIBBON_HOENN_COOL_SUPER] = {
        .ribbonID = 79,
        .spriteID = hoenn_contest_super_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_hoenn_cool_super,
        .descriptionID = 82,
    },
    [RIBBON_HOENN_COOL_HYPER] = {
        .ribbonID = 80,
        .spriteID = hoenn_contest_hyper_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_hoenn_cool_hyper,
        .descriptionID = 83,
    },
    [RIBBON_HOENN_COOL_MASTER] = {
        .ribbonID = 81,
        .spriteID = hoenn_contest_master_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_hoenn_cool_master,
        .descriptionID = 84,
    },
    [RIBBON_HOENN_BEAUTY] = {
        .ribbonID = 82,
        .spriteID = hoenn_contest_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_hoenn_beauty,
        .descriptionID = 85,
    },
    [RIBBON_HOENN_BEAUTY_SUPER] = {
        .ribbonID = 83,
        .spriteID = hoenn_contest_super_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_hoenn_beauty_super,
        .descriptionID = 86,
    },
    [RIBBON_HOENN_BEAUTY_HYPER] = {
        .ribbonID = 84,
        .spriteID = hoenn_contest_hyper_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_hoenn_beauty_hyper,
        .descriptionID = 87,
    },
    [RIBBON_HOENN_BEAUTY_MASTER] = {
        .ribbonID = 85,
        .spriteID = hoenn_contest_master_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_hoenn_beauty_master,
        .descriptionID = 88,
    },
    [RIBBON_HOENN_CUTE] = {
        .ribbonID = 86,
        .spriteID = hoenn_contest_NCGR,
        .paletteNum = 2,
        .nameID = ribbon_name_hoenn_cute,
        .descriptionID = 89,
    },
    [RIBBON_HOENN_CUTE_SUPER] = {
        .ribbonID = 87,
        .spriteID = hoenn_contest_super_NCGR,
        .paletteNum = 2,
        .nameID = ribbon_name_hoenn_cute_super,
        .descriptionID = 90,
    },
    [RIBBON_HOENN_CUTE_HYPER] = {
        .ribbonID = 88,
        .spriteID = hoenn_contest_hyper_NCGR,
        .paletteNum = 2,
        .nameID = ribbon_name_hoenn_cute_hyper,
        .descriptionID = 91,
    },
    [RIBBON_HOENN_CUTE_MASTER] = {
        .ribbonID = 89,
        .spriteID = hoenn_contest_master_NCGR,
        .paletteNum = 2,
        .nameID = ribbon_name_hoenn_cute_master,
        .descriptionID = 92,
    },
    [RIBBON_HOENN_SMART] = {
        .ribbonID = 90,
        .spriteID = hoenn_contest_NCGR,
        .paletteNum = 3,
        .nameID = ribbon_name_hoenn_smart,
        .descriptionID = 93,
    },
    [RIBBON_HOENN_SMART_SUPER] = {
        .ribbonID = 91,
        .spriteID = hoenn_contest_super_NCGR,
        .paletteNum = 3,
        .nameID = ribbon_name_hoenn_smart_super,
        .descriptionID = 94,
    },
    [RIBBON_HOENN_SMART_HYPER] = {
        .ribbonID = 92,
        .spriteID = hoenn_contest_hyper_NCGR,
        .paletteNum = 3,
        .nameID = ribbon_name_hoenn_smart_hyper,
        .descriptionID = 95,
    },
    [RIBBON_HOENN_SMART_MASTER] = {
        .ribbonID = 93,
        .spriteID = hoenn_contest_master_NCGR,
        .paletteNum = 3,
        .nameID = ribbon_name_hoenn_smart_master,
        .descriptionID = 96,
    },
    [RIBBON_HOENN_TOUGH] = {
        .ribbonID = 94,
        .spriteID = hoenn_contest_NCGR,
        .paletteNum = 4,
        .nameID = ribbon_name_hoenn_tough,
        .descriptionID = 97,
    },
    [RIBBON_HOENN_TOUGH_SUPER] = {
        .ribbonID = 95,
        .spriteID = hoenn_contest_super_NCGR,
        .paletteNum = 4,
        .nameID = ribbon_name_hoenn_tough_super,
        .descriptionID = 98,
    },
    [RIBBON_HOENN_TOUGH_HYPER] = {
        .ribbonID = 96,
        .spriteID = hoenn_contest_hyper_NCGR,
        .paletteNum = 4,
        .nameID = ribbon_name_hoenn_tough_hyper,
        .descriptionID = 99,
    },
    [RIBBON_HOENN_TOUGH_MASTER] = {
        .ribbonID = 97,
        .spriteID = hoenn_contest_master_NCGR,
        .paletteNum = 4,
        .nameID = ribbon_name_hoenn_tough_master,
        .descriptionID = 100,
    },
    [RIBBON_HOENN_WINNING] = {
        .ribbonID = 99,
        .spriteID = hoenn_winning_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_hoenn_winning,
        .descriptionID = 101,
    },
    [RIBBON_HOENN_VICTORY] = {
        .ribbonID = 100,
        .spriteID = hoenn_victory_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_hoenn_victory,
        .descriptionID = 102,
    },
    [RIBBON_HOENN_ARTIST] = {
        .ribbonID = 101,
        .spriteID = hoenn_artist_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_hoenn_artist,
        .descriptionID = 103,
    },
    [RIBBON_HOENN_EFFORT] = {
        .ribbonID = 102,
        .spriteID = hoenn_effort_NCGR,
        .paletteNum = 2,
        .nameID = ribbon_name_hoenn_effort,
        .descriptionID = 104,
    },
    [RIBBON_HOENN_MARINE] = {
        .ribbonID = 103,
        .spriteID = hoenn_marine_land_sky_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_hoenn_marine,
        .descriptionID = 32768,
    },
    [RIBBON_HOENN_LAND] = {
        .ribbonID = 104,
        .spriteID = hoenn_marine_land_sky_NCGR,
        .paletteNum = 3,
        .nameID = ribbon_name_hoenn_land,
        .descriptionID = SPECIAL_DESCRIPTION_MASK | 1,
    },
    [RIBBON_HOENN_SKY] = {
        .ribbonID = 105,
        .spriteID = hoenn_marine_land_sky_NCGR,
        .paletteNum = 4,
        .nameID = ribbon_name_hoenn_sky,
        .descriptionID = SPECIAL_DESCRIPTION_MASK | 2,
    },
    [RIBBON_HOENN_COUNTRY] = {
        .ribbonID = 106,
        .spriteID = hoenn_country_national_NCGR,
        .paletteNum = 3,
        .nameID = ribbon_name_hoenn_country,
        .descriptionID = 178,
    },
    [RIBBON_HOENN_NATIONAL] = {
        .ribbonID = 107,
        .spriteID = hoenn_country_national_NCGR,
        .paletteNum = 4,
        .nameID = ribbon_name_hoenn_national,
        .descriptionID = 190,
    },
    [RIBBON_HOENN_EARTH] = {
        .ribbonID = 108,
        .spriteID = hoenn_earth_world_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_hoenn_earth,
        .descriptionID = 191,
    },
    [RIBBON_HOENN_WORLD] = {
        .ribbonID = 109,
        .spriteID = hoenn_earth_world_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_hoenn_world,
        .descriptionID = 178,
    },
    [RIBBON_SINNOH_CHAMP] = {
        .ribbonID = 25,
        .spriteID = sinnoh_champion_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_sinnoh_champ,
        .descriptionID = 105,
    },
    [RIBBON_COOL] = {
        .ribbonID = 123,
        .spriteID = sinnoh_contest_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_cool,
        .descriptionID = 106,
    },
    [RIBBON_COOL_GREAT] = {
        .ribbonID = 124,
        .spriteID = sinnoh_contest_great_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_cool_great,
        .descriptionID = 107,
    },
    [RIBBON_COOL_ULTRA] = {
        .ribbonID = 125,
        .spriteID = sinnoh_contest_ultra_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_cool_ultra,
        .descriptionID = 108,
    },
    [RIBBON_COOL_MASTER] = {
        .ribbonID = 126,
        .spriteID = sinnoh_contest_master_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_cool_master,
        .descriptionID = 109,
    },
    [RIBBON_BEAUTY] = {
        .ribbonID = 127,
        .spriteID = sinnoh_contest_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_beauty,
        .descriptionID = 110,
    },
    [RIBBON_BEAUTY_GREAT] = {
        .ribbonID = 128,
        .spriteID = sinnoh_contest_great_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_beauty_great,
        .descriptionID = 111,
    },
    [RIBBON_BEAUTY_ULTRA] = {
        .ribbonID = 129,
        .spriteID = sinnoh_contest_ultra_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_beauty_ultra,
        .descriptionID = 112,
    },
    [RIBBON_BEAUTY_MASTER] = {
        .ribbonID = 130,
        .spriteID = sinnoh_contest_master_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_beauty_master,
        .descriptionID = 113,
    },
    [RIBBON_CUTE] = {
        .ribbonID = 131,
        .spriteID = sinnoh_contest_NCGR,
        .paletteNum = 2,
        .nameID = ribbon_name_cute,
        .descriptionID = 114,
    },
    [RIBBON_CUTE_GREAT] = {
        .ribbonID = 132,
        .spriteID = sinnoh_contest_great_NCGR,
        .paletteNum = 2,
        .nameID = ribbon_name_cute_great,
        .descriptionID = 115,
    },
    [RIBBON_CUTE_ULTRA] = {
        .ribbonID = 133,
        .spriteID = sinnoh_contest_ultra_NCGR,
        .paletteNum = 2,
        .nameID = ribbon_name_cute_ultra,
        .descriptionID = 116,
    },
    [RIBBON_CUTE_MASTER] = {
        .ribbonID = 134,
        .spriteID = sinnoh_contest_master_NCGR,
        .paletteNum = 2,
        .nameID = ribbon_name_cute_master,
        .descriptionID = 117,
    },
    [RIBBON_SMART] = {
        .ribbonID = 135,
        .spriteID = sinnoh_contest_NCGR,
        .paletteNum = 3,
        .nameID = ribbon_name_smart,
        .descriptionID = 118,
    },
    [RIBBON_SMART_GREAT] = {
        .ribbonID = 136,
        .spriteID = sinnoh_contest_great_NCGR,
        .paletteNum = 3,
        .nameID = ribbon_name_smart_great,
        .descriptionID = 119,
    },
    [RIBBON_SMART_ULTRA] = {
        .ribbonID = 137,
        .spriteID = sinnoh_contest_ultra_NCGR,
        .paletteNum = 3,
        .nameID = ribbon_name_smart_ultra,
        .descriptionID = 120,
    },
    [RIBBON_SMART_MASTER] = {
        .ribbonID = 138,
        .spriteID = sinnoh_contest_master_NCGR,
        .paletteNum = 3,
        .nameID = ribbon_name_smart_master,
        .descriptionID = 121,
    },
    [RIBBON_TOUGH] = {
        .ribbonID = 139,
        .spriteID = sinnoh_contest_NCGR,
        .paletteNum = 4,
        .nameID = ribbon_name_tough,
        .descriptionID = 122,
    },
    [RIBBON_TOUGH_GREAT] = {
        .ribbonID = 140,
        .spriteID = sinnoh_contest_great_NCGR,
        .paletteNum = 4,
        .nameID = ribbon_name_tough_great,
        .descriptionID = 123,
    },
    [RIBBON_TOUGH_ULTRA] = {
        .ribbonID = 141,
        .spriteID = sinnoh_contest_ultra_NCGR,
        .paletteNum = 4,
        .nameID = ribbon_name_tough_ultra,
        .descriptionID = 124,
    },
    [RIBBON_TOUGH_MASTER] = {
        .ribbonID = 142,
        .spriteID = sinnoh_contest_master_NCGR,
        .paletteNum = 4,
        .nameID = ribbon_name_tough_master,
        .descriptionID = 125,
    },
    [RIBBON_ABILITY] = {
        .ribbonID = 26,
        .spriteID = ability_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_ability,
        .descriptionID = 126,
    },
    [RIBBON_GREAT_ABILITY] = {
        .ribbonID = 27,
        .spriteID = great_ability_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_great_ability,
        .descriptionID = 127,
    },
    [RIBBON_DOUBLE_ABILITY] = {
        .ribbonID = 28,
        .spriteID = double_ability_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_double_ability,
        .descriptionID = 128,
    },
    [RIBBON_MULTI_ABILITY] = {
        .ribbonID = 29,
        .spriteID = multi_ability_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_multi_ability,
        .descriptionID = 129,
    },
    [RIBBON_PAIR_ABILITY] = {
        .ribbonID = 30,
        .spriteID = pair_ability_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_pair_ability,
        .descriptionID = 130,
    },
    [RIBBON_WORLD_ABILITY] = {
        .ribbonID = 31,
        .spriteID = world_ability_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_world_ability,
        .descriptionID = 131,
    },
    [RIBBON_ALERT] = {
        .ribbonID = 32,
        .spriteID = alert_NCGR,
        .paletteNum = 2,
        .nameID = ribbon_name_alert,
        .descriptionID = 132,
    },
    [RIBBON_SHOCK] = {
        .ribbonID = 33,
        .spriteID = shock_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_shock,
        .descriptionID = 133,
    },
    [RIBBON_DOWNCAST] = {
        .ribbonID = 34,
        .spriteID = downcast_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_downcast,
        .descriptionID = 134,
    },
    [RIBBON_CARELESS] = {
        .ribbonID = 35,
        .spriteID = careless_NCGR,
        .paletteNum = 2,
        .nameID = ribbon_name_careless,
        .descriptionID = 135,
    },
    [RIBBON_RELAX] = {
        .ribbonID = 36,
        .spriteID = relax_NCGR,
        .paletteNum = 3,
        .nameID = ribbon_name_relax,
        .descriptionID = 136,
    },
    [RIBBON_SNOOZE] = {
        .ribbonID = 37,
        .spriteID = snooze_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_snooze,
        .descriptionID = 137,
    },
    [RIBBON_SMILE] = {
        .ribbonID = 38,
        .spriteID = smile_NCGR,
        .paletteNum = 2,
        .nameID = ribbon_name_smile,
        .descriptionID = 138,
    },
    [RIBBON_GORGEOUS] = {
        .ribbonID = 39,
        .spriteID = gorgeous_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_gorgeous,
        .descriptionID = 139,
    },
    [RIBBON_ROYAL] = {
        .ribbonID = 40,
        .spriteID = royal_NCGR,
        .paletteNum = 3,
        .nameID = ribbon_name_royal,
        .descriptionID = 140,
    },
    [RIBBON_GORGEOUS_ROYAL] = {
        .ribbonID = 41,
        .spriteID = gorgeous_royal_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_gorgeous_royal,
        .descriptionID = 141,
    },
    [RIBBON_FOOTPRINT] = {
        .ribbonID = 42,
        .spriteID = footprint_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_footprint,
        .descriptionID = 142,
    },
    [RIBBON_RECORD] = {
        .ribbonID = 43,
        .spriteID = record_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_record,
        .descriptionID = 143,
    },
    [RIBBON_HISTORY] = {
        .ribbonID = 44,
        .spriteID = history_NCGR,
        .paletteNum = 3,
        .nameID = ribbon_name_history,
        .descriptionID = 144,
    },
    [RIBBON_LEGEND] = {
        .ribbonID = 45,
        .spriteID = legend_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_legend,
        .descriptionID = 145,
    },
    [RIBBON_RED] = {
        .ribbonID = 46,
        .spriteID = red_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_red,
        .descriptionID = SPECIAL_DESCRIPTION_MASK | 7,
    },
    [RIBBON_GREEN] = {
        .ribbonID = 47,
        .spriteID = green_NCGR,
        .paletteNum = 3,
        .nameID = ribbon_name_green,
        .descriptionID = SPECIAL_DESCRIPTION_MASK | 8,
    },
    [RIBBON_BLUE] = {
        .ribbonID = 48,
        .spriteID = blue_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_blue,
        .descriptionID = SPECIAL_DESCRIPTION_MASK | 9,
    },
    [RIBBON_FESTIVAL] = {
        .ribbonID = 49,
        .spriteID = festival_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_festival,
        .descriptionID = SPECIAL_DESCRIPTION_MASK | 10,
    },
    [RIBBON_CARNIVAL] = {
        .ribbonID = 50,
        .spriteID = carnival_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_carnival,
        .descriptionID = SPECIAL_DESCRIPTION_MASK | 11,
    },
    [RIBBON_CLASSIC] = {
        .ribbonID = 51,
        .spriteID = classic_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_classic,
        .descriptionID = SPECIAL_DESCRIPTION_MASK | 12,
    },
    [RIBBON_PREMIER] = {
        .ribbonID = 52,
        .spriteID = premier_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_premier,
        .descriptionID = SPECIAL_DESCRIPTION_MASK | 13,
    },
};

u32 Ribbon_GetData(u8 ribbonNum, enum RibbonDataField field)
{
    switch (field) {
    case RIBBON_DATA_RIBBON_ID:
        return sRibbonDataTable[ribbonNum].ribbonID;
    case RIBBON_DATA_SPRITE_ID:
        return sRibbonDataTable[ribbonNum].spriteID;
    case RIBBON_DATA_PALETTE_NUM:
        return sRibbonDataTable[ribbonNum].paletteNum;
    case RIBBON_DATA_NAME_ID:
        return sRibbonDataTable[ribbonNum].nameID;
    case RIBBON_DATA_DESCRIPTION_ID:
        return sRibbonDataTable[ribbonNum].descriptionID;
    }

    return 0;
}

u32 PokemonSummaryScreen_GetRibbonDescriptionID(u8 *ribbons, u8 ribbonNum)
{
    if (sRibbonDataTable[ribbonNum].descriptionID & SPECIAL_DESCRIPTION_MASK) {
        return SPECIAL_DESCRIPTIONS_START + ribbons[sRibbonDataTable[ribbonNum].descriptionID & 0xFF];
    }

    return sRibbonDataTable[ribbonNum].descriptionID;
}

u8 Ribbon_TryGetSpecialDescriptionID(u8 ribbonNum)
{
    if (sRibbonDataTable[ribbonNum].descriptionID & SPECIAL_DESCRIPTION_MASK) {
        return sRibbonDataTable[ribbonNum].descriptionID & 0xFF;
    }

    return 0xFF;
}

u16 Ribbon_RibbonIDToNameID(u32 ribbonID)
{
    for (int i = 0; i < NELEMS(sRibbonDataTable); i++) {
        if (sRibbonDataTable[i].ribbonID == ribbonID) {
            return sRibbonDataTable[i].nameID;
        }
    }

    return 0xFFFF;
}
