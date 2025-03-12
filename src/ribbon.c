#include "ribbon.h"

#include <nitro.h>
#include <string.h>

#include "constants/pokemon.h"

#include "res/graphics/pokemon_summary_screen/pl_pst_gra.naix"
#include "res/text/bank/ribbon_names.h"

typedef struct {
    u32 monDataParam;
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
    [RIBBON_CHAMPION] = {
        .monDataParam = MON_DATA_CHAMPION_RIBBON,
        .spriteID = hoenn_champion_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_hoenn_champion,
        .descriptionID = ribbon_desc_hoenn_champion,
    },
    [RIBBON_HOENN_COOL] = {
        .monDataParam = MON_DATA_HOENN_COOL_RIBBON,
        .spriteID = hoenn_contest_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_hoenn_cool,
        .descriptionID = ribbon_desc_hoenn_cool,
    },
    [RIBBON_HOENN_COOL_SUPER] = {
        .monDataParam = MON_DATA_HOENN_COOL_RIBBON_SUPER,
        .spriteID = hoenn_contest_super_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_hoenn_cool_super,
        .descriptionID = ribbon_desc_hoenn_cool_super,
    },
    [RIBBON_HOENN_COOL_HYPER] = {
        .monDataParam = MON_DATA_HOENN_COOL_RIBBON_HYPER,
        .spriteID = hoenn_contest_hyper_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_hoenn_cool_hyper,
        .descriptionID = ribbon_desc_hoenn_cool_hyper,
    },
    [RIBBON_HOENN_COOL_MASTER] = {
        .monDataParam = MON_DATA_HOENN_COOL_RIBBON_MASTER,
        .spriteID = hoenn_contest_master_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_hoenn_cool_master,
        .descriptionID = ribbon_desc_hoenn_cool_master,
    },
    [RIBBON_HOENN_BEAUTY] = {
        .monDataParam = MON_DATA_HOENN_BEAUTY_RIBBON,
        .spriteID = hoenn_contest_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_hoenn_beauty,
        .descriptionID = ribbon_desc_hoenn_beauty,
    },
    [RIBBON_HOENN_BEAUTY_SUPER] = {
        .monDataParam = MON_DATA_HOENN_BEAUTY_RIBBON_SUPER,
        .spriteID = hoenn_contest_super_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_hoenn_beauty_super,
        .descriptionID = ribbon_desc_hoenn_beauty_super,
    },
    [RIBBON_HOENN_BEAUTY_HYPER] = {
        .monDataParam = MON_DATA_HOENN_BEAUTY_RIBBON_HYPER,
        .spriteID = hoenn_contest_hyper_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_hoenn_beauty_hyper,
        .descriptionID = ribbon_desc_hoenn_beauty_hyper,
    },
    [RIBBON_HOENN_BEAUTY_MASTER] = {
        .monDataParam = MON_DATA_HOENN_BEAUTY_RIBBON_MASTER,
        .spriteID = hoenn_contest_master_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_hoenn_beauty_master,
        .descriptionID = ribbon_desc_hoenn_beauty_master,
    },
    [RIBBON_HOENN_CUTE] = {
        .monDataParam = MON_DATA_HOENN_CUTE_RIBBON,
        .spriteID = hoenn_contest_NCGR,
        .paletteNum = 2,
        .nameID = ribbon_name_hoenn_cute,
        .descriptionID = ribbon_desc_hoenn_cute,
    },
    [RIBBON_HOENN_CUTE_SUPER] = {
        .monDataParam = MON_DATA_HOENN_CUTE_RIBBON_SUPER,
        .spriteID = hoenn_contest_super_NCGR,
        .paletteNum = 2,
        .nameID = ribbon_name_hoenn_cute_super,
        .descriptionID = ribbon_desc_hoenn_cute_super,
    },
    [RIBBON_HOENN_CUTE_HYPER] = {
        .monDataParam = MON_DATA_HOENN_CUTE_RIBBON_HYPER,
        .spriteID = hoenn_contest_hyper_NCGR,
        .paletteNum = 2,
        .nameID = ribbon_name_hoenn_cute_hyper,
        .descriptionID = ribbon_desc_hoenn_cute_hyper,
    },
    [RIBBON_HOENN_CUTE_MASTER] = {
        .monDataParam = MON_DATA_HOENN_CUTE_RIBBON_MASTER,
        .spriteID = hoenn_contest_master_NCGR,
        .paletteNum = 2,
        .nameID = ribbon_name_hoenn_cute_master,
        .descriptionID = ribbon_desc_hoenn_cute_master,
    },
    [RIBBON_HOENN_SMART] = {
        .monDataParam = MON_DATA_HOENN_SMART_RIBBON,
        .spriteID = hoenn_contest_NCGR,
        .paletteNum = 3,
        .nameID = ribbon_name_hoenn_smart,
        .descriptionID = ribbon_desc_hoenn_smart,
    },
    [RIBBON_HOENN_SMART_SUPER] = {
        .monDataParam = MON_DATA_HOENN_SMART_RIBBON_SUPER,
        .spriteID = hoenn_contest_super_NCGR,
        .paletteNum = 3,
        .nameID = ribbon_name_hoenn_smart_super,
        .descriptionID = ribbon_desc_hoenn_smart_super,
    },
    [RIBBON_HOENN_SMART_HYPER] = {
        .monDataParam = MON_DATA_HOENN_SMART_RIBBON_HYPER,
        .spriteID = hoenn_contest_hyper_NCGR,
        .paletteNum = 3,
        .nameID = ribbon_name_hoenn_smart_hyper,
        .descriptionID = ribbon_desc_hoenn_smart_hyper,
    },
    [RIBBON_HOENN_SMART_MASTER] = {
        .monDataParam = MON_DATA_HOENN_SMART_RIBBON_MASTER,
        .spriteID = hoenn_contest_master_NCGR,
        .paletteNum = 3,
        .nameID = ribbon_name_hoenn_smart_master,
        .descriptionID = ribbon_desc_hoenn_smart_master,
    },
    [RIBBON_HOENN_TOUGH] = {
        .monDataParam = MON_DATA_HOENN_TOUGH_RIBBON,
        .spriteID = hoenn_contest_NCGR,
        .paletteNum = 4,
        .nameID = ribbon_name_hoenn_tough,
        .descriptionID = ribbon_desc_hoenn_tough,
    },
    [RIBBON_HOENN_TOUGH_SUPER] = {
        .monDataParam = MON_DATA_HOENN_TOUGH_RIBBON_SUPER,
        .spriteID = hoenn_contest_super_NCGR,
        .paletteNum = 4,
        .nameID = ribbon_name_hoenn_tough_super,
        .descriptionID = ribbon_desc_hoenn_tough_super,
    },
    [RIBBON_HOENN_TOUGH_HYPER] = {
        .monDataParam = MON_DATA_HOENN_TOUGH_RIBBON_HYPER,
        .spriteID = hoenn_contest_hyper_NCGR,
        .paletteNum = 4,
        .nameID = ribbon_name_hoenn_tough_hyper,
        .descriptionID = ribbon_desc_hoenn_tough_hyper,
    },
    [RIBBON_HOENN_TOUGH_MASTER] = {
        .monDataParam = MON_DATA_HOENN_TOUGH_RIBBON_MASTER,
        .spriteID = hoenn_contest_master_NCGR,
        .paletteNum = 4,
        .nameID = ribbon_name_hoenn_tough_master,
        .descriptionID = ribbon_desc_hoenn_tough_master,
    },
    [RIBBON_WINNING] = {
        .monDataParam = MON_DATA_WINNING_RIBBON,
        .spriteID = hoenn_winning_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_hoenn_winning,
        .descriptionID = ribbon_desc_hoenn_winning,
    },
    [RIBBON_VICTORY] = {
        .monDataParam = MON_DATA_VICTORY_RIBBON,
        .spriteID = hoenn_victory_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_hoenn_victory,
        .descriptionID = ribbon_desc_hoenn_victory,
    },
    [RIBBON_ARTIST] = {
        .monDataParam = MON_DATA_ARTIST_RIBBON,
        .spriteID = hoenn_artist_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_hoenn_artist,
        .descriptionID = ribbon_desc_hoenn_artist,
    },
    [RIBBON_EFFORT] = {
        .monDataParam = MON_DATA_EFFORT_RIBBON,
        .spriteID = hoenn_effort_NCGR,
        .paletteNum = 2,
        .nameID = ribbon_name_hoenn_effort,
        .descriptionID = ribbon_desc_hoenn_effort,
    },
    [RIBBON_MARINE] = {
        .monDataParam = MON_DATA_MARINE_RIBBON,
        .spriteID = hoenn_marine_land_sky_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_hoenn_marine,
        .descriptionID = SPECIAL_DESCRIPTION_MASK | 0,
    },
    [RIBBON_LAND] = {
        .monDataParam = MON_DATA_LAND_RIBBON,
        .spriteID = hoenn_marine_land_sky_NCGR,
        .paletteNum = 3,
        .nameID = ribbon_name_hoenn_land,
        .descriptionID = SPECIAL_DESCRIPTION_MASK | 1,
    },
    [RIBBON_SKY] = {
        .monDataParam = MON_DATA_SKY_RIBBON,
        .spriteID = hoenn_marine_land_sky_NCGR,
        .paletteNum = 4,
        .nameID = ribbon_name_hoenn_sky,
        .descriptionID = SPECIAL_DESCRIPTION_MASK | 2,
    },
    [RIBBON_COUNTRY] = {
        .monDataParam = MON_DATA_COUNTRY_RIBBON,
        .spriteID = hoenn_country_national_NCGR,
        .paletteNum = 3,
        .nameID = ribbon_name_hoenn_country,
        .descriptionID = ribbon_desc_hoenn_country_world,
    },
    [RIBBON_NATIONAL] = {
        .monDataParam = MON_DATA_NATIONAL_RIBBON,
        .spriteID = hoenn_country_national_NCGR,
        .paletteNum = 4,
        .nameID = ribbon_name_hoenn_national,
        .descriptionID = ribbon_desc_hoenn_national,
    },
    [RIBBON_EARTH] = {
        .monDataParam = MON_DATA_EARTH_RIBBON,
        .spriteID = hoenn_earth_world_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_hoenn_earth,
        .descriptionID = ribbon_desc_hoenn_earth,
    },
    [RIBBON_WORLD] = {
        .monDataParam = MON_DATA_WORLD_RIBBON,
        .spriteID = hoenn_earth_world_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_hoenn_world,
        .descriptionID = ribbon_desc_hoenn_country_world,
    },
    [RIBBON_SINNOH_CHAMPION] = {
        .monDataParam = MON_DATA_SINNOH_CHAMPION_RIBBON,
        .spriteID = sinnoh_champion_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_sinnoh_champ,
        .descriptionID = ribbon_desc_sinnoh_champ,
    },
    [RIBBON_COOL] = {
        .monDataParam = MON_DATA_COOL_RIBBON,
        .spriteID = sinnoh_contest_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_cool,
        .descriptionID = ribbon_desc_cool,
    },
    [RIBBON_COOL_GREAT] = {
        .monDataParam = MON_DATA_COOL_RIBBON_GREAT,
        .spriteID = sinnoh_contest_great_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_cool_great,
        .descriptionID = ribbon_desc_cool_great,
    },
    [RIBBON_COOL_ULTRA] = {
        .monDataParam = MON_DATA_COOL_RIBBON_ULTRA,
        .spriteID = sinnoh_contest_ultra_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_cool_ultra,
        .descriptionID = ribbon_desc_cool_ultra,
    },
    [RIBBON_COOL_MASTER] = {
        .monDataParam = MON_DATA_COOL_RIBBON_MASTER,
        .spriteID = sinnoh_contest_master_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_cool_master,
        .descriptionID = ribbon_desc_cool_master,
    },
    [RIBBON_BEAUTY] = {
        .monDataParam = MON_DATA_BEAUTY_RIBBON,
        .spriteID = sinnoh_contest_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_beauty,
        .descriptionID = ribbon_desc_beauty,
    },
    [RIBBON_BEAUTY_GREAT] = {
        .monDataParam = MON_DATA_BEAUTY_RIBBON_GREAT,
        .spriteID = sinnoh_contest_great_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_beauty_great,
        .descriptionID = ribbon_desc_beauty_great,
    },
    [RIBBON_BEAUTY_ULTRA] = {
        .monDataParam = MON_DATA_BEAUTY_RIBBON_ULTRA,
        .spriteID = sinnoh_contest_ultra_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_beauty_ultra,
        .descriptionID = ribbon_desc_beauty_ultra,
    },
    [RIBBON_BEAUTY_MASTER] = {
        .monDataParam = MON_DATA_BEAUTY_RIBBON_MASTER,
        .spriteID = sinnoh_contest_master_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_beauty_master,
        .descriptionID = ribbon_desc_beauty_master,
    },
    [RIBBON_CUTE] = {
        .monDataParam = MON_DATA_CUTE_RIBBON,
        .spriteID = sinnoh_contest_NCGR,
        .paletteNum = 2,
        .nameID = ribbon_name_cute,
        .descriptionID = ribbon_desc_cute,
    },
    [RIBBON_CUTE_GREAT] = {
        .monDataParam = MON_DATA_CUTE_RIBBON_GREAT,
        .spriteID = sinnoh_contest_great_NCGR,
        .paletteNum = 2,
        .nameID = ribbon_name_cute_great,
        .descriptionID = ribbon_desc_cute_great,
    },
    [RIBBON_CUTE_ULTRA] = {
        .monDataParam = MON_DATA_CUTE_RIBBON_ULTRA,
        .spriteID = sinnoh_contest_ultra_NCGR,
        .paletteNum = 2,
        .nameID = ribbon_name_cute_ultra,
        .descriptionID = ribbon_desc_cute_ultra,
    },
    [RIBBON_CUTE_MASTER] = {
        .monDataParam = MON_DATA_CUTE_RIBBON_MASTER,
        .spriteID = sinnoh_contest_master_NCGR,
        .paletteNum = 2,
        .nameID = ribbon_name_cute_master,
        .descriptionID = ribbon_desc_cute_master,
    },
    [RIBBON_SMART] = {
        .monDataParam = MON_DATA_SMART_RIBBON,
        .spriteID = sinnoh_contest_NCGR,
        .paletteNum = 3,
        .nameID = ribbon_name_smart,
        .descriptionID = ribbon_desc_smart,
    },
    [RIBBON_SMART_GREAT] = {
        .monDataParam = MON_DATA_SMART_RIBBON_GREAT,
        .spriteID = sinnoh_contest_great_NCGR,
        .paletteNum = 3,
        .nameID = ribbon_name_smart_great,
        .descriptionID = ribbon_desc_smart_great,
    },
    [RIBBON_SMART_ULTRA] = {
        .monDataParam = MON_DATA_SMART_RIBBON_ULTRA,
        .spriteID = sinnoh_contest_ultra_NCGR,
        .paletteNum = 3,
        .nameID = ribbon_name_smart_ultra,
        .descriptionID = ribbon_desc_smart_ultra,
    },
    [RIBBON_SMART_MASTER] = {
        .monDataParam = MON_DATA_SMART_RIBBON_MASTER,
        .spriteID = sinnoh_contest_master_NCGR,
        .paletteNum = 3,
        .nameID = ribbon_name_smart_master,
        .descriptionID = ribbon_desc_smart_master,
    },
    [RIBBON_TOUGH] = {
        .monDataParam = MON_DATA_TOUGH_RIBBON,
        .spriteID = sinnoh_contest_NCGR,
        .paletteNum = 4,
        .nameID = ribbon_name_tough,
        .descriptionID = ribbon_desc_tough,
    },
    [RIBBON_TOUGH_GREAT] = {
        .monDataParam = MON_DATA_TOUGH_RIBBON_GREAT,
        .spriteID = sinnoh_contest_great_NCGR,
        .paletteNum = 4,
        .nameID = ribbon_name_tough_great,
        .descriptionID = ribbon_desc_tough_great,
    },
    [RIBBON_TOUGH_ULTRA] = {
        .monDataParam = MON_DATA_TOUGH_RIBBON_ULTRA,
        .spriteID = sinnoh_contest_ultra_NCGR,
        .paletteNum = 4,
        .nameID = ribbon_name_tough_ultra,
        .descriptionID = ribbon_desc_tough_ultra,
    },
    [RIBBON_TOUGH_MASTER] = {
        .monDataParam = MON_DATA_TOUGH_RIBBON_MASTER,
        .spriteID = sinnoh_contest_master_NCGR,
        .paletteNum = 4,
        .nameID = ribbon_name_tough_master,
        .descriptionID = ribbon_desc_tough_master,
    },
    [RIBBON_ABILITY] = {
        .monDataParam = MON_DATA_ABILITY_RIBBON,
        .spriteID = ability_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_ability,
        .descriptionID = ribbon_desc_ability,
    },
    [RIBBON_GREAT_ABILITY] = {
        .monDataParam = MON_DATA_GREAT_ABILITY_RIBBON,
        .spriteID = great_ability_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_great_ability,
        .descriptionID = ribbon_desc_great_ability,
    },
    [RIBBON_DOUBLE_ABILITY] = {
        .monDataParam = MON_DATA_DOUBLE_ABILITY_RIBBON,
        .spriteID = double_ability_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_double_ability,
        .descriptionID = ribbon_desc_double_ability,
    },
    [RIBBON_MULTI_ABILITY] = {
        .monDataParam = MON_DATA_MULTI_ABILITY_RIBBON,
        .spriteID = multi_ability_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_multi_ability,
        .descriptionID = ribbon_desc_multi_ability,
    },
    [RIBBON_PAIR_ABILITY] = {
        .monDataParam = MON_DATA_PAIR_ABILITY_RIBBON,
        .spriteID = pair_ability_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_pair_ability,
        .descriptionID = ribbon_desc_pair_ability,
    },
    [RIBBON_WORLD_ABILITY] = {
        .monDataParam = MON_DATA_WORLD_ABILITY_RIBBON,
        .spriteID = world_ability_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_world_ability,
        .descriptionID = ribbon_desc_world_ability,
    },
    [RIBBON_ALERT] = {
        .monDataParam = MON_DATA_ALERT_RIBBON,
        .spriteID = alert_NCGR,
        .paletteNum = 2,
        .nameID = ribbon_name_alert,
        .descriptionID = ribbon_desc_alert,
    },
    [RIBBON_SHOCK] = {
        .monDataParam = MON_DATA_SHOCK_RIBBON,
        .spriteID = shock_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_shock,
        .descriptionID = ribbon_desc_shock,
    },
    [RIBBON_DOWNCAST] = {
        .monDataParam = MON_DATA_DOWNCAST_RIBBON,
        .spriteID = downcast_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_downcast,
        .descriptionID = ribbon_desc_downcast,
    },
    [RIBBON_CARELESS] = {
        .monDataParam = MON_DATA_CARELESS_RIBBON,
        .spriteID = careless_NCGR,
        .paletteNum = 2,
        .nameID = ribbon_name_careless,
        .descriptionID = ribbon_desc_careless,
    },
    [RIBBON_RELAX] = {
        .monDataParam = MON_DATA_RELAX_RIBBON,
        .spriteID = relax_NCGR,
        .paletteNum = 3,
        .nameID = ribbon_name_relax,
        .descriptionID = ribbon_desc_relax,
    },
    [RIBBON_SNOOZE] = {
        .monDataParam = MON_DATA_SNOOZE_RIBBON,
        .spriteID = snooze_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_snooze,
        .descriptionID = ribbon_desc_snooze,
    },
    [RIBBON_SMILE] = {
        .monDataParam = MON_DATA_SMILE_RIBBON,
        .spriteID = smile_NCGR,
        .paletteNum = 2,
        .nameID = ribbon_name_smile,
        .descriptionID = ribbon_desc_smile,
    },
    [RIBBON_GORGEOUS] = {
        .monDataParam = MON_DATA_GORGEOUS_RIBBON,
        .spriteID = gorgeous_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_gorgeous,
        .descriptionID = ribbon_desc_gorgeous,
    },
    [RIBBON_ROYAL] = {
        .monDataParam = MON_DATA_ROYAL_RIBBON,
        .spriteID = royal_NCGR,
        .paletteNum = 3,
        .nameID = ribbon_name_royal,
        .descriptionID = ribbon_desc_royal,
    },
    [RIBBON_GORGEOUS_ROYAL] = {
        .monDataParam = MON_DATA_GORGEOUS_ROYAL_RIBBON,
        .spriteID = gorgeous_royal_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_gorgeous_royal,
        .descriptionID = ribbon_desc_gorgeous_royal,
    },
    [RIBBON_FOOTPRINT] = {
        .monDataParam = MON_DATA_FOOTPRINT_RIBBON,
        .spriteID = footprint_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_footprint,
        .descriptionID = ribbon_desc_footprint,
    },
    [RIBBON_RECORD] = {
        .monDataParam = MON_DATA_RECORD_RIBBON,
        .spriteID = record_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_record,
        .descriptionID = ribbon_desc_record,
    },
    [RIBBON_HISTORY] = {
        .monDataParam = MON_DATA_HISTORY_RIBBON,
        .spriteID = history_NCGR,
        .paletteNum = 3,
        .nameID = ribbon_name_history,
        .descriptionID = ribbon_desc_history,
    },
    [RIBBON_LEGEND] = {
        .monDataParam = MON_DATA_LEGEND_RIBBON,
        .spriteID = legend_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_legend,
        .descriptionID = ribbon_desc_legend,
    },
    [RIBBON_RED] = {
        .monDataParam = MON_DATA_RED_RIBBON,
        .spriteID = red_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_red,
        .descriptionID = SPECIAL_DESCRIPTION_MASK | 7,
    },
    [RIBBON_GREEN] = {
        .monDataParam = MON_DATA_GREEN_RIBBON,
        .spriteID = green_NCGR,
        .paletteNum = 3,
        .nameID = ribbon_name_green,
        .descriptionID = SPECIAL_DESCRIPTION_MASK | 8,
    },
    [RIBBON_BLUE] = {
        .monDataParam = MON_DATA_BLUE_RIBBON,
        .spriteID = blue_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_blue,
        .descriptionID = SPECIAL_DESCRIPTION_MASK | 9,
    },
    [RIBBON_FESTIVAL] = {
        .monDataParam = MON_DATA_FESTIVAL_RIBBON,
        .spriteID = festival_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_festival,
        .descriptionID = SPECIAL_DESCRIPTION_MASK | 10,
    },
    [RIBBON_CARNIVAL] = {
        .monDataParam = MON_DATA_CARNIVAL_RIBBON,
        .spriteID = carnival_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_carnival,
        .descriptionID = SPECIAL_DESCRIPTION_MASK | 11,
    },
    [RIBBON_CLASSIC] = {
        .monDataParam = MON_DATA_CLASSIC_RIBBON,
        .spriteID = classic_NCGR,
        .paletteNum = 1,
        .nameID = ribbon_name_classic,
        .descriptionID = SPECIAL_DESCRIPTION_MASK | 12,
    },
    [RIBBON_PREMIER] = {
        .monDataParam = MON_DATA_PREMIER_RIBBON,
        .spriteID = premier_NCGR,
        .paletteNum = 0,
        .nameID = ribbon_name_premier,
        .descriptionID = SPECIAL_DESCRIPTION_MASK | 13,
    },
};

u32 Ribbon_GetData(u8 ribbonID, enum RibbonDataField field)
{
    switch (field) {
    case RIBBON_DATA_MON_DATA_PARAM:
        return sRibbonDataTable[ribbonID].monDataParam;
    case RIBBON_DATA_SPRITE_ID:
        return sRibbonDataTable[ribbonID].spriteID;
    case RIBBON_DATA_PALETTE_NUM:
        return sRibbonDataTable[ribbonID].paletteNum;
    case RIBBON_DATA_NAME_ID:
        return sRibbonDataTable[ribbonID].nameID;
    case RIBBON_DATA_DESCRIPTION_ID:
        return sRibbonDataTable[ribbonID].descriptionID;
    }

    return 0;
}

u32 PokemonSummaryScreen_GetRibbonDescriptionID(u8 *specialRibbons, u8 ribbonID)
{
    if (sRibbonDataTable[ribbonID].descriptionID & SPECIAL_DESCRIPTION_MASK) {
        return SPECIAL_DESCRIPTIONS_START + specialRibbons[sRibbonDataTable[ribbonID].descriptionID & 0xFF];
    }

    return sRibbonDataTable[ribbonID].descriptionID;
}

u8 Ribbon_TryGetSpecialDescriptionID(u8 ribbonID)
{
    if (sRibbonDataTable[ribbonID].descriptionID & SPECIAL_DESCRIPTION_MASK) {
        return sRibbonDataTable[ribbonID].descriptionID & 0xFF;
    }

    return 0xFF;
}

u16 Ribbon_MonDataParamToNameID(u32 monDataParam)
{
    for (int i = 0; i < NELEMS(sRibbonDataTable); i++) {
        if (sRibbonDataTable[i].monDataParam == monDataParam) {
            return sRibbonDataTable[i].nameID;
        }
    }

    return 0xFFFF;
}
