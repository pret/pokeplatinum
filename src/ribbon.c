#include "ribbon.h"

#include <nitro.h>
#include <string.h>

#include "constants/pokemon.h"

#include "res/graphics/pokemon_summary_screen/pl_pst_gra.naix.h"
#include "res/text/bank/ribbon_names.h"

typedef struct {
    enum PokemonDataParam monDataParam;
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
        .monDataParam = MON_DATA_CHAMPION_RIBBON,
        .spriteID = hoenn_champion_NCGR,
        .paletteNum = 0,
        .nameID = RibbonName_Text_HoennChampion,
        .descriptionID = RibbonDesc_Text_HoennChampion,
    },
    [RIBBON_HOENN_COOL] = {
        .monDataParam = MON_DATA_COOL_RIBBON,
        .spriteID = hoenn_contest_NCGR,
        .paletteNum = 0,
        .nameID = RibbonName_Text_HoennCool,
        .descriptionID = RibbonDesc_Text_HoennCool,
    },
    [RIBBON_HOENN_COOL_SUPER] = {
        .monDataParam = MON_DATA_COOL_RIBBON_SUPER,
        .spriteID = hoenn_contest_super_NCGR,
        .paletteNum = 0,
        .nameID = RibbonName_Text_HoennCoolSuper,
        .descriptionID = RibbonDesc_Text_HoennCoolSuper,
    },
    [RIBBON_HOENN_COOL_HYPER] = {
        .monDataParam = MON_DATA_COOL_RIBBON_HYPER,
        .spriteID = hoenn_contest_hyper_NCGR,
        .paletteNum = 0,
        .nameID = RibbonName_Text_HoennCoolHyper,
        .descriptionID = RibbonDesc_Text_HoennCoolHyper,
    },
    [RIBBON_HOENN_COOL_MASTER] = {
        .monDataParam = MON_DATA_COOL_RIBBON_MASTER,
        .spriteID = hoenn_contest_master_NCGR,
        .paletteNum = 0,
        .nameID = RibbonName_Text_HoennCoolMaster,
        .descriptionID = RibbonDesc_Text_HoennCoolMaster,
    },
    [RIBBON_HOENN_BEAUTY] = {
        .monDataParam = MON_DATA_BEAUTY_RIBBON,
        .spriteID = hoenn_contest_NCGR,
        .paletteNum = 1,
        .nameID = RibbonName_Text_HoennBeauty,
        .descriptionID = RibbonDesc_Text_HoennBeauty,
    },
    [RIBBON_HOENN_BEAUTY_SUPER] = {
        .monDataParam = MON_DATA_BEAUTY_RIBBON_SUPER,
        .spriteID = hoenn_contest_super_NCGR,
        .paletteNum = 1,
        .nameID = RibbonName_Text_HoennBeautySuper,
        .descriptionID = RibbonDesc_Text_HoennBeautySuper,
    },
    [RIBBON_HOENN_BEAUTY_HYPER] = {
        .monDataParam = MON_DATA_BEAUTY_RIBBON_HYPER,
        .spriteID = hoenn_contest_hyper_NCGR,
        .paletteNum = 1,
        .nameID = RibbonName_Text_HoennBeautyHyper,
        .descriptionID = RibbonDesc_Text_HoennBeautyHyper,
    },
    [RIBBON_HOENN_BEAUTY_MASTER] = {
        .monDataParam = MON_DATA_BEAUTY_RIBBON_MASTER,
        .spriteID = hoenn_contest_master_NCGR,
        .paletteNum = 1,
        .nameID = RibbonName_Text_HoennBeautyMaster,
        .descriptionID = RibbonDesc_Text_HoennBeautyMaster,
    },
    [RIBBON_HOENN_CUTE] = {
        .monDataParam = MON_DATA_CUTE_RIBBON,
        .spriteID = hoenn_contest_NCGR,
        .paletteNum = 2,
        .nameID = RibbonName_Text_HoennCute,
        .descriptionID = RibbonDesc_Text_HoennCute,
    },
    [RIBBON_HOENN_CUTE_SUPER] = {
        .monDataParam = MON_DATA_CUTE_RIBBON_SUPER,
        .spriteID = hoenn_contest_super_NCGR,
        .paletteNum = 2,
        .nameID = RibbonName_Text_HoennCuteSuper,
        .descriptionID = RibbonDesc_Text_HoennCuteSuper,
    },
    [RIBBON_HOENN_CUTE_HYPER] = {
        .monDataParam = MON_DATA_CUTE_RIBBON_HYPER,
        .spriteID = hoenn_contest_hyper_NCGR,
        .paletteNum = 2,
        .nameID = RibbonName_Text_HoennCuteHyper,
        .descriptionID = RibbonDesc_Text_HoennCuteHyper,
    },
    [RIBBON_HOENN_CUTE_MASTER] = {
        .monDataParam = MON_DATA_CUTE_RIBBON_MASTER,
        .spriteID = hoenn_contest_master_NCGR,
        .paletteNum = 2,
        .nameID = RibbonName_Text_HoennCuteMaster,
        .descriptionID = RibbonDesc_Text_HoennCuteMaster,
    },
    [RIBBON_HOENN_SMART] = {
        .monDataParam = MON_DATA_SMART_RIBBON,
        .spriteID = hoenn_contest_NCGR,
        .paletteNum = 3,
        .nameID = RibbonName_Text_HoennSmart,
        .descriptionID = RibbonDesc_Text_HoennSmart,
    },
    [RIBBON_HOENN_SMART_SUPER] = {
        .monDataParam = MON_DATA_SMART_RIBBON_SUPER,
        .spriteID = hoenn_contest_super_NCGR,
        .paletteNum = 3,
        .nameID = RibbonName_Text_HoennSmartSuper,
        .descriptionID = RibbonDesc_Text_HoennSmartSuper,
    },
    [RIBBON_HOENN_SMART_HYPER] = {
        .monDataParam = MON_DATA_SMART_RIBBON_HYPER,
        .spriteID = hoenn_contest_hyper_NCGR,
        .paletteNum = 3,
        .nameID = RibbonName_Text_HoennSmartHyper,
        .descriptionID = RibbonDesc_Text_HoennSmartHyper,
    },
    [RIBBON_HOENN_SMART_MASTER] = {
        .monDataParam = MON_DATA_SMART_RIBBON_MASTER,
        .spriteID = hoenn_contest_master_NCGR,
        .paletteNum = 3,
        .nameID = RibbonName_Text_HoennSmartMaster,
        .descriptionID = RibbonDesc_Text_HoennSmartMaster,
    },
    [RIBBON_HOENN_TOUGH] = {
        .monDataParam = MON_DATA_TOUGH_RIBBON,
        .spriteID = hoenn_contest_NCGR,
        .paletteNum = 4,
        .nameID = RibbonName_Text_HoennTough,
        .descriptionID = RibbonDesc_Text_HoennTough,
    },
    [RIBBON_HOENN_TOUGH_SUPER] = {
        .monDataParam = MON_DATA_TOUGH_RIBBON_SUPER,
        .spriteID = hoenn_contest_super_NCGR,
        .paletteNum = 4,
        .nameID = RibbonName_Text_HoennToughSuper,
        .descriptionID = RibbonDesc_Text_HoennToughSuper,
    },
    [RIBBON_HOENN_TOUGH_HYPER] = {
        .monDataParam = MON_DATA_TOUGH_RIBBON_HYPER,
        .spriteID = hoenn_contest_hyper_NCGR,
        .paletteNum = 4,
        .nameID = RibbonName_Text_HoennToughHyper,
        .descriptionID = RibbonDesc_Text_HoennToughHyper,
    },
    [RIBBON_HOENN_TOUGH_MASTER] = {
        .monDataParam = MON_DATA_TOUGH_RIBBON_MASTER,
        .spriteID = hoenn_contest_master_NCGR,
        .paletteNum = 4,
        .nameID = RibbonName_Text_HoennToughMaster,
        .descriptionID = RibbonDesc_Text_HoennToughMaster,
    },
    [RIBBON_HOENN_WINNING] = {
        .monDataParam = MON_DATA_WINNING_RIBBON,
        .spriteID = hoenn_winning_NCGR,
        .paletteNum = 0,
        .nameID = RibbonName_Text_HoennWinning,
        .descriptionID = RibbonDesc_Text_HoennWinning,
    },
    [RIBBON_HOENN_VICTORY] = {
        .monDataParam = MON_DATA_VICTORY_RIBBON,
        .spriteID = hoenn_victory_NCGR,
        .paletteNum = 0,
        .nameID = RibbonName_Text_HoennVictory,
        .descriptionID = RibbonDesc_Text_HoennVictory,
    },
    [RIBBON_HOENN_ARTIST] = {
        .monDataParam = MON_DATA_ARTIST_RIBBON,
        .spriteID = hoenn_artist_NCGR,
        .paletteNum = 1,
        .nameID = RibbonName_Text_HoennArtist,
        .descriptionID = RibbonDesc_Text_HoennArtist,
    },
    [RIBBON_HOENN_EFFORT] = {
        .monDataParam = MON_DATA_EFFORT_RIBBON,
        .spriteID = hoenn_effort_NCGR,
        .paletteNum = 2,
        .nameID = RibbonName_Text_HoennEffort,
        .descriptionID = RibbonDesc_Text_HoennEffort,
    },
    [RIBBON_HOENN_MARINE] = {
        .monDataParam = MON_DATA_MARINE_RIBBON,
        .spriteID = hoenn_marine_land_sky_NCGR,
        .paletteNum = 1,
        .nameID = RibbonName_Text_HoennMarine,
        .descriptionID = SPECIAL_DESCRIPTION_MASK | 0,
    },
    [RIBBON_HOENN_LAND] = {
        .monDataParam = MON_DATA_LAND_RIBBON,
        .spriteID = hoenn_marine_land_sky_NCGR,
        .paletteNum = 3,
        .nameID = RibbonName_Text_HoennLand,
        .descriptionID = SPECIAL_DESCRIPTION_MASK | 1,
    },
    [RIBBON_HOENN_SKY] = {
        .monDataParam = MON_DATA_SKY_RIBBON,
        .spriteID = hoenn_marine_land_sky_NCGR,
        .paletteNum = 4,
        .nameID = RibbonName_Text_HoennSky,
        .descriptionID = SPECIAL_DESCRIPTION_MASK | 2,
    },
    [RIBBON_HOENN_COUNTRY] = {
        .monDataParam = MON_DATA_COUNTRY_RIBBON,
        .spriteID = hoenn_country_national_NCGR,
        .paletteNum = 3,
        .nameID = RibbonName_Text_HoennCountry,
        .descriptionID = RibbonDesc_Text_HoennCountryWorld,
    },
    [RIBBON_HOENN_NATIONAL] = {
        .monDataParam = MON_DATA_NATIONAL_RIBBON,
        .spriteID = hoenn_country_national_NCGR,
        .paletteNum = 4,
        .nameID = RibbonName_Text_HoennNational,
        .descriptionID = RibbonDesc_Text_HoennNational,
    },
    [RIBBON_HOENN_EARTH] = {
        .monDataParam = MON_DATA_EARTH_RIBBON,
        .spriteID = hoenn_earth_world_NCGR,
        .paletteNum = 0,
        .nameID = RibbonName_Text_HoennEarth,
        .descriptionID = RibbonDesc_Text_HoennEarth,
    },
    [RIBBON_HOENN_WORLD] = {
        .monDataParam = MON_DATA_WORLD_RIBBON,
        .spriteID = hoenn_earth_world_NCGR,
        .paletteNum = 1,
        .nameID = RibbonName_Text_HoennWorld,
        .descriptionID = RibbonDesc_Text_HoennCountryWorld,
    },
    [RIBBON_SINNOH_CHAMP] = {
        .monDataParam = MON_DATA_SINNOH_CHAMP_RIBBON,
        .spriteID = sinnoh_champion_NCGR,
        .paletteNum = 0,
        .nameID = RibbonName_Text_SinnohChamp,
        .descriptionID = RibbonDesc_Text_SinnohChamp,
    },
    [RIBBON_COOL] = {
        .monDataParam = MON_DATA_SUPER_COOL_RIBBON,
        .spriteID = sinnoh_contest_NCGR,
        .paletteNum = 0,
        .nameID = RibbonName_Text_Cool,
        .descriptionID = RibbonDesc_Text_Cool,
    },
    [RIBBON_COOL_GREAT] = {
        .monDataParam = MON_DATA_SUPER_COOL_RIBBON_GREAT,
        .spriteID = sinnoh_contest_great_NCGR,
        .paletteNum = 0,
        .nameID = RibbonName_Text_CoolGreat,
        .descriptionID = RibbonDesc_Text_CoolGreat,
    },
    [RIBBON_COOL_ULTRA] = {
        .monDataParam = MON_DATA_SUPER_COOL_RIBBON_ULTRA,
        .spriteID = sinnoh_contest_ultra_NCGR,
        .paletteNum = 0,
        .nameID = RibbonName_Text_CoolUltra,
        .descriptionID = RibbonDesc_Text_CoolUltra,
    },
    [RIBBON_COOL_MASTER] = {
        .monDataParam = MON_DATA_SUPER_COOL_RIBBON_MASTER,
        .spriteID = sinnoh_contest_master_NCGR,
        .paletteNum = 0,
        .nameID = RibbonName_Text_CoolMaster,
        .descriptionID = RibbonDesc_Text_CoolMaster,
    },
    [RIBBON_BEAUTY] = {
        .monDataParam = MON_DATA_SUPER_BEAUTY_RIBBON,
        .spriteID = sinnoh_contest_NCGR,
        .paletteNum = 1,
        .nameID = RibbonName_Text_Beauty,
        .descriptionID = RibbonDesc_Text_Beauty,
    },
    [RIBBON_BEAUTY_GREAT] = {
        .monDataParam = MON_DATA_SUPER_BEAUTY_RIBBON_GREAT,
        .spriteID = sinnoh_contest_great_NCGR,
        .paletteNum = 1,
        .nameID = RibbonName_Text_BeautyGreat,
        .descriptionID = RibbonDesc_Text_BeautyGreat,
    },
    [RIBBON_BEAUTY_ULTRA] = {
        .monDataParam = MON_DATA_SUPER_BEAUTY_RIBBON_ULTRA,
        .spriteID = sinnoh_contest_ultra_NCGR,
        .paletteNum = 1,
        .nameID = RibbonName_Text_BeautyUltra,
        .descriptionID = RibbonDesc_Text_BeautyUltra,
    },
    [RIBBON_BEAUTY_MASTER] = {
        .monDataParam = MON_DATA_SUPER_BEAUTY_RIBBON_MASTER,
        .spriteID = sinnoh_contest_master_NCGR,
        .paletteNum = 1,
        .nameID = RibbonName_Text_BeautyMaster,
        .descriptionID = RibbonDesc_Text_BeautyMaster,
    },
    [RIBBON_CUTE] = {
        .monDataParam = MON_DATA_SUPER_CUTE_RIBBON,
        .spriteID = sinnoh_contest_NCGR,
        .paletteNum = 2,
        .nameID = RibbonName_Text_Cute,
        .descriptionID = RibbonDesc_Text_Cute,
    },
    [RIBBON_CUTE_GREAT] = {
        .monDataParam = MON_DATA_SUPER_CUTE_RIBBON_GREAT,
        .spriteID = sinnoh_contest_great_NCGR,
        .paletteNum = 2,
        .nameID = RibbonName_Text_CuteGreat,
        .descriptionID = RibbonDesc_Text_CuteGreat,
    },
    [RIBBON_CUTE_ULTRA] = {
        .monDataParam = MON_DATA_SUPER_CUTE_RIBBON_ULTRA,
        .spriteID = sinnoh_contest_ultra_NCGR,
        .paletteNum = 2,
        .nameID = RibbonName_Text_CuteUltra,
        .descriptionID = RibbonDesc_Text_CuteUltra,
    },
    [RIBBON_CUTE_MASTER] = {
        .monDataParam = MON_DATA_SUPER_CUTE_RIBBON_MASTER,
        .spriteID = sinnoh_contest_master_NCGR,
        .paletteNum = 2,
        .nameID = RibbonName_Text_CuteMaster,
        .descriptionID = RibbonDesc_Text_CuteMaster,
    },
    [RIBBON_SMART] = {
        .monDataParam = MON_DATA_SUPER_SMART_RIBBON,
        .spriteID = sinnoh_contest_NCGR,
        .paletteNum = 3,
        .nameID = RibbonName_Text_Smart,
        .descriptionID = RibbonDesc_Text_Smart,
    },
    [RIBBON_SMART_GREAT] = {
        .monDataParam = MON_DATA_SUPER_SMART_RIBBON_GREAT,
        .spriteID = sinnoh_contest_great_NCGR,
        .paletteNum = 3,
        .nameID = RibbonName_Text_SmartGreat,
        .descriptionID = RibbonDesc_Text_SmartGreat,
    },
    [RIBBON_SMART_ULTRA] = {
        .monDataParam = MON_DATA_SUPER_SMART_RIBBON_ULTRA,
        .spriteID = sinnoh_contest_ultra_NCGR,
        .paletteNum = 3,
        .nameID = RibbonName_Text_SmartUltra,
        .descriptionID = RibbonDesc_Text_SmartUltra,
    },
    [RIBBON_SMART_MASTER] = {
        .monDataParam = MON_DATA_SUPER_SMART_RIBBON_MASTER,
        .spriteID = sinnoh_contest_master_NCGR,
        .paletteNum = 3,
        .nameID = RibbonName_Text_SmartMaster,
        .descriptionID = RibbonDesc_Text_SmartMaster,
    },
    [RIBBON_TOUGH] = {
        .monDataParam = MON_DATA_SUPER_TOUGH_RIBBON,
        .spriteID = sinnoh_contest_NCGR,
        .paletteNum = 4,
        .nameID = RibbonName_Text_Tough,
        .descriptionID = RibbonDesc_Text_Tough,
    },
    [RIBBON_TOUGH_GREAT] = {
        .monDataParam = MON_DATA_SUPER_TOUGH_RIBBON_GREAT,
        .spriteID = sinnoh_contest_great_NCGR,
        .paletteNum = 4,
        .nameID = RibbonName_Text_ToughGreat,
        .descriptionID = RibbonDesc_Text_ToughGreat,
    },
    [RIBBON_TOUGH_ULTRA] = {
        .monDataParam = MON_DATA_SUPER_TOUGH_RIBBON_ULTRA,
        .spriteID = sinnoh_contest_ultra_NCGR,
        .paletteNum = 4,
        .nameID = RibbonName_Text_ToughUltra,
        .descriptionID = RibbonDesc_Text_ToughUltra,
    },
    [RIBBON_TOUGH_MASTER] = {
        .monDataParam = MON_DATA_SUPER_TOUGH_RIBBON_MASTER,
        .spriteID = sinnoh_contest_master_NCGR,
        .paletteNum = 4,
        .nameID = RibbonName_Text_ToughMaster,
        .descriptionID = RibbonDesc_Text_ToughMaster,
    },
    [RIBBON_ABILITY] = {
        .monDataParam = MON_DATA_ABILITY_RIBBON,
        .spriteID = ability_NCGR,
        .paletteNum = 0,
        .nameID = RibbonName_Text_Ability,
        .descriptionID = RibbonDesc_Text_Ability,
    },
    [RIBBON_GREAT_ABILITY] = {
        .monDataParam = MON_DATA_GREAT_ABILITY_RIBBON,
        .spriteID = great_ability_NCGR,
        .paletteNum = 0,
        .nameID = RibbonName_Text_GreatAbility,
        .descriptionID = RibbonDesc_Text_GreatAbility,
    },
    [RIBBON_DOUBLE_ABILITY] = {
        .monDataParam = MON_DATA_DOUBLE_ABILITY_RIBBON,
        .spriteID = double_ability_NCGR,
        .paletteNum = 0,
        .nameID = RibbonName_Text_DoubleAbility,
        .descriptionID = RibbonDesc_Text_DoubleAbility,
    },
    [RIBBON_MULTI_ABILITY] = {
        .monDataParam = MON_DATA_MULTI_ABILITY_RIBBON,
        .spriteID = multi_ability_NCGR,
        .paletteNum = 0,
        .nameID = RibbonName_Text_MultiAbility,
        .descriptionID = RibbonDesc_Text_MultiAbility,
    },
    [RIBBON_PAIR_ABILITY] = {
        .monDataParam = MON_DATA_PAIR_ABILITY_RIBBON,
        .spriteID = pair_ability_NCGR,
        .paletteNum = 0,
        .nameID = RibbonName_Text_PairAbility,
        .descriptionID = RibbonDesc_Text_PairAbility,
    },
    [RIBBON_WORLD_ABILITY] = {
        .monDataParam = MON_DATA_WORLD_ABILITY_RIBBON,
        .spriteID = world_ability_NCGR,
        .paletteNum = 0,
        .nameID = RibbonName_Text_WorldAbility,
        .descriptionID = RibbonDesc_Text_WorldAbility,
    },
    [RIBBON_ALERT] = {
        .monDataParam = MON_DATA_ALERT_RIBBON,
        .spriteID = alert_NCGR,
        .paletteNum = 2,
        .nameID = RibbonName_Text_Alert,
        .descriptionID = RibbonDesc_Text_Alert,
    },
    [RIBBON_SHOCK] = {
        .monDataParam = MON_DATA_SHOCK_RIBBON,
        .spriteID = shock_NCGR,
        .paletteNum = 0,
        .nameID = RibbonName_Text_Shock,
        .descriptionID = RibbonDesc_Text_Shock,
    },
    [RIBBON_DOWNCAST] = {
        .monDataParam = MON_DATA_DOWNCAST_RIBBON,
        .spriteID = downcast_NCGR,
        .paletteNum = 1,
        .nameID = RibbonName_Text_Downcast,
        .descriptionID = RibbonDesc_Text_Downcast,
    },
    [RIBBON_CARELESS] = {
        .monDataParam = MON_DATA_CARELESS_RIBBON,
        .spriteID = careless_NCGR,
        .paletteNum = 2,
        .nameID = RibbonName_Text_Careless,
        .descriptionID = RibbonDesc_Text_Careless,
    },
    [RIBBON_RELAX] = {
        .monDataParam = MON_DATA_RELAX_RIBBON,
        .spriteID = relax_NCGR,
        .paletteNum = 3,
        .nameID = RibbonName_Text_Relax,
        .descriptionID = RibbonDesc_Text_Relax,
    },
    [RIBBON_SNOOZE] = {
        .monDataParam = MON_DATA_SNOOZE_RIBBON,
        .spriteID = snooze_NCGR,
        .paletteNum = 0,
        .nameID = RibbonName_Text_Snooze,
        .descriptionID = RibbonDesc_Text_Snooze,
    },
    [RIBBON_SMILE] = {
        .monDataParam = MON_DATA_SMILE_RIBBON,
        .spriteID = smile_NCGR,
        .paletteNum = 2,
        .nameID = RibbonName_Text_Smile,
        .descriptionID = RibbonDesc_Text_Smile,
    },
    [RIBBON_GORGEOUS] = {
        .monDataParam = MON_DATA_GORGEOUS_RIBBON,
        .spriteID = gorgeous_NCGR,
        .paletteNum = 1,
        .nameID = RibbonName_Text_Gorgeous,
        .descriptionID = RibbonDesc_Text_Gorgeous,
    },
    [RIBBON_ROYAL] = {
        .monDataParam = MON_DATA_ROYAL_RIBBON,
        .spriteID = royal_NCGR,
        .paletteNum = 3,
        .nameID = RibbonName_Text_Royal,
        .descriptionID = RibbonDesc_Text_Royal,
    },
    [RIBBON_GORGEOUS_ROYAL] = {
        .monDataParam = MON_DATA_GORGEOUS_ROYAL_RIBBON,
        .spriteID = gorgeous_royal_NCGR,
        .paletteNum = 0,
        .nameID = RibbonName_Text_GorgeousRoyal,
        .descriptionID = RibbonDesc_Text_GorgeousRoyal,
    },
    [RIBBON_FOOTPRINT] = {
        .monDataParam = MON_DATA_FOOTPRINT_RIBBON,
        .spriteID = footprint_NCGR,
        .paletteNum = 0,
        .nameID = RibbonName_Text_Footprint,
        .descriptionID = RibbonDesc_Text_Footprint,
    },
    [RIBBON_RECORD] = {
        .monDataParam = MON_DATA_RECORD_RIBBON,
        .spriteID = record_NCGR,
        .paletteNum = 1,
        .nameID = RibbonName_Text_Record,
        .descriptionID = RibbonDesc_Text_Record,
    },
    [RIBBON_HISTORY] = {
        .monDataParam = MON_DATA_HISTORY_RIBBON,
        .spriteID = history_NCGR,
        .paletteNum = 3,
        .nameID = RibbonName_Text_History,
        .descriptionID = RibbonDesc_Text_History,
    },
    [RIBBON_LEGEND] = {
        .monDataParam = MON_DATA_LEGEND_RIBBON,
        .spriteID = legend_NCGR,
        .paletteNum = 0,
        .nameID = RibbonName_Text_Legend,
        .descriptionID = RibbonDesc_Text_Legend,
    },
    [RIBBON_RED] = {
        .monDataParam = MON_DATA_RED_RIBBON,
        .spriteID = red_NCGR,
        .paletteNum = 0,
        .nameID = RibbonName_Text_Red,
        .descriptionID = SPECIAL_DESCRIPTION_MASK | 7,
    },
    [RIBBON_GREEN] = {
        .monDataParam = MON_DATA_GREEN_RIBBON,
        .spriteID = green_NCGR,
        .paletteNum = 3,
        .nameID = RibbonName_Text_Green,
        .descriptionID = SPECIAL_DESCRIPTION_MASK | 8,
    },
    [RIBBON_BLUE] = {
        .monDataParam = MON_DATA_BLUE_RIBBON,
        .spriteID = blue_NCGR,
        .paletteNum = 1,
        .nameID = RibbonName_Text_Blue,
        .descriptionID = SPECIAL_DESCRIPTION_MASK | 9,
    },
    [RIBBON_FESTIVAL] = {
        .monDataParam = MON_DATA_FESTIVAL_RIBBON,
        .spriteID = festival_NCGR,
        .paletteNum = 1,
        .nameID = RibbonName_Text_Festival,
        .descriptionID = SPECIAL_DESCRIPTION_MASK | 10,
    },
    [RIBBON_CARNIVAL] = {
        .monDataParam = MON_DATA_CARNIVAL_RIBBON,
        .spriteID = carnival_NCGR,
        .paletteNum = 0,
        .nameID = RibbonName_Text_Carnival,
        .descriptionID = SPECIAL_DESCRIPTION_MASK | 11,
    },
    [RIBBON_CLASSIC] = {
        .monDataParam = MON_DATA_CLASSIC_RIBBON,
        .spriteID = classic_NCGR,
        .paletteNum = 1,
        .nameID = RibbonName_Text_Classic,
        .descriptionID = SPECIAL_DESCRIPTION_MASK | 12,
    },
    [RIBBON_PREMIER] = {
        .monDataParam = MON_DATA_PREMIER_RIBBON,
        .spriteID = premier_NCGR,
        .paletteNum = 0,
        .nameID = RibbonName_Text_Premier,
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

u16 Ribbon_MonDataParamToNameID(enum PokemonDataParam monDataParam)
{
    for (int i = 0; i < NELEMS(sRibbonDataTable); i++) {
        if (sRibbonDataTable[i].monDataParam == monDataParam) {
            return sRibbonDataTable[i].nameID;
        }
    }

    return 0xFFFF;
}
