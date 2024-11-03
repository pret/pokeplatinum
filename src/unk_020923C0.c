#include "unk_020923C0.h"

#include <nitro.h>
#include <string.h>

#include "text/gmm/message_bank_ribbon_names.h"

typedef struct {
    u32 ribbonID;
    u16 spriteID;
    u16 paletteNum;
    u16 nameID;
    u16 descriptionID;
} RibbonData;

#define SPECIAL_DESCRIPTION_MASK   0x8000
#define SPECIAL_DESCRIPTIONS_START 146

static const RibbonData sRibbonDataTable[] = {
    [RIBBON_HOENN_CHAMPION] = { 0x62, 0x48, 0x0, ribbon_name_hoenn_champion, 0x50 },
    [RIBBON_HOENN_COOL] = { 0x4E, 0x49, 0x0, ribbon_name_hoenn_cool, 0x51 },
    [RIBBON_HOENN_COOL_SUPER] = { 0x4F, 0x4A, 0x0, ribbon_name_hoenn_cool_super, 0x52 },
    [RIBBON_HOENN_COOL_HYPER] = { 0x50, 0x4B, 0x0, ribbon_name_hoenn_cool_hyper, 0x53 },
    [RIBBON_HOENN_COOL_MASTER] = { 0x51, 0x4C, 0x0, ribbon_name_hoenn_cool_master, 0x54 },
    [RIBBON_HOENN_BEAUTY] = { 0x52, 0x49, 0x1, ribbon_name_hoenn_beauty, 0x55 },
    [RIBBON_HOENN_BEAUTY_SUPER] = { 0x53, 0x4A, 0x1, ribbon_name_hoenn_beauty_super, 0x56 },
    [RIBBON_HOENN_BEAUTY_HYPER] = { 0x54, 0x4B, 0x1, ribbon_name_hoenn_beauty_hyper, 0x57 },
    [RIBBON_HOENN_BEAUTY_MASTER] = { 0x55, 0x4C, 0x1, ribbon_name_hoenn_beauty_master, 0x58 },
    [RIBBON_HOENN_CUTE] = { 0x56, 0x49, 0x2, ribbon_name_hoenn_cute, 0x59 },
    [RIBBON_HOENN_CUTE_SUPER] = { 0x57, 0x4A, 0x2, ribbon_name_hoenn_cute_super, 0x5A },
    [RIBBON_HOENN_CUTE_HYPER] = { 0x58, 0x4B, 0x2, ribbon_name_hoenn_cute_hyper, 0x5B },
    [RIBBON_HOENN_CUTE_MASTER] = { 0x59, 0x4C, 0x2, ribbon_name_hoenn_cute_master, 0x5C },
    [RIBBON_HOENN_SMART] = { 0x5A, 0x49, 0x3, ribbon_name_hoenn_smart, 0x5D },
    [RIBBON_HOENN_SMART_SUPER] = { 0x5B, 0x4A, 0x3, ribbon_name_hoenn_smart_super, 0x5E },
    [RIBBON_HOENN_SMART_HYPER] = { 0x5C, 0x4B, 0x3, ribbon_name_hoenn_smart_hyper, 0x5F },
    [RIBBON_HOENN_SMART_MASTER] = { 0x5D, 0x4C, 0x3, ribbon_name_hoenn_smart_master, 0x60 },
    [RIBBON_HOENN_TOUGH] = { 0x5E, 0x49, 0x4, ribbon_name_hoenn_tough, 0x61 },
    [RIBBON_HOENN_TOUGH_SUPER] = { 0x5F, 0x4A, 0x4, ribbon_name_hoenn_tough_super, 0x62 },
    [RIBBON_HOENN_TOUGH_HYPER] = { 0x60, 0x4B, 0x4, ribbon_name_hoenn_tough_hyper, 0x63 },
    [RIBBON_HOENN_TOUGH_MASTER] = { 0x61, 0x4C, 0x4, ribbon_name_hoenn_tough_master, 0x64 },
    [RIBBON_HOENN_WINNING] = { 0x63, 0x4E, 0x0, ribbon_name_hoenn_winning, 0x65 },
    [RIBBON_HOENN_VICTORY] = { 0x64, 0x4D, 0x0, ribbon_name_hoenn_victory, 0x66 },
    [RIBBON_HOENN_ARTIST] = { 0x65, 0x4F, 0x1, ribbon_name_hoenn_artist, 0x67 },
    [RIBBON_HOENN_EFFORT] = { 0x66, 0x50, 0x2, ribbon_name_hoenn_effort, 0x68 },
    [RIBBON_HOENN_MARINE] = { 0x67, 0x51, 0x1, ribbon_name_hoenn_marine, 0x8000 },
    [RIBBON_HOENN_LAND] = { 0x68, 0x51, 0x3, ribbon_name_hoenn_land, 0x8001 },
    [RIBBON_HOENN_SKY] = { 0x69, 0x51, 0x4, ribbon_name_hoenn_sky, 0x8002 },
    [RIBBON_HOENN_COUNTRY] = { 0x6A, 0x52, 0x3, ribbon_name_hoenn_country, 0xB2 },
    [RIBBON_HOENN_NATIONAL] = { 0x6B, 0x52, 0x4, ribbon_name_hoenn_national, 0xBE },
    [RIBBON_HOENN_EARTH] = { 0x6C, 0x53, 0x0, ribbon_name_hoenn_earth, 0xBF },
    [RIBBON_HOENN_WORLD] = { 0x6D, 0x53, 0x1, ribbon_name_hoenn_world, 0xB2 },
    [RIBBON_SINNOH_CHAMP] = { 0x19, 0x58, 0x0, ribbon_name_sinnoh_champ, 0x69 },
    [RIBBON_COOL] = { 0x7B, 0x59, 0x0, ribbon_name_cool, 0x6A },
    [RIBBON_COOL_GREAT] = { 0x7C, 0x5A, 0x0, ribbon_name_cool_great, 0x6B },
    [RIBBON_COOL_ULTRA] = { 0x7D, 0x5B, 0x0, ribbon_name_cool_ultra, 0x6C },
    [RIBBON_COOL_MASTER] = { 0x7E, 0x5C, 0x0, ribbon_name_cool_master, 0x6D },
    [RIBBON_BEAUTY] = { 0x7F, 0x59, 0x1, ribbon_name_beauty, 0x6E },
    [RIBBON_BEAUTY_GREAT] = { 0x80, 0x5A, 0x1, ribbon_name_beauty_great, 0x6F },
    [RIBBON_BEAUTY_ULTRA] = { 0x81, 0x5B, 0x1, ribbon_name_beauty_ultra, 0x70 },
    [RIBBON_BEAUTY_MASTER] = { 0x82, 0x5C, 0x1, ribbon_name_beauty_master, 0x71 },
    [RIBBON_CUTE] = { 0x83, 0x59, 0x2, ribbon_name_cute, 0x72 },
    [RIBBON_CUTE_GREAT] = { 0x84, 0x5A, 0x2, ribbon_name_cute_great, 0x73 },
    [RIBBON_CUTE_ULTRA] = { 0x85, 0x5B, 0x2, ribbon_name_cute_ultra, 0x74 },
    [RIBBON_CUTE_MASTER] = { 0x86, 0x5C, 0x2, ribbon_name_cute_master, 0x75 },
    [RIBBON_SMART] = { 0x87, 0x59, 0x3, ribbon_name_smart, 0x76 },
    [RIBBON_SMART_GREAT] = { 0x88, 0x5A, 0x3, ribbon_name_smart_great, 0x77 },
    [RIBBON_SMART_ULTRA] = { 0x89, 0x5B, 0x3, ribbon_name_smart_ultra, 0x78 },
    [RIBBON_SMART_MASTER] = { 0x8A, 0x5C, 0x3, ribbon_name_smart_master, 0x79 },
    [RIBBON_TOUGH] = { 0x8B, 0x59, 0x4, ribbon_name_tough, 0x7A },
    [RIBBON_TOUGH_GREAT] = { 0x8C, 0x5A, 0x4, ribbon_name_tough_great, 0x7B },
    [RIBBON_TOUGH_ULTRA] = { 0x8D, 0x5B, 0x4, ribbon_name_tough_ultra, 0x7C },
    [RIBBON_TOUGH_MASTER] = { 0x8E, 0x5C, 0x4, ribbon_name_tough_master, 0x7D },
    [RIBBON_ABILITY] = { 0x1A, 0x5D, 0x0, ribbon_name_ability, 0x7E },
    [RIBBON_GREAT_ABILITY] = { 0x1B, 0x5E, 0x0, ribbon_name_great_ability, 0x7F },
    [RIBBON_DOUBLE_ABILITY] = { 0x1C, 0x5F, 0x0, ribbon_name_double_ability, 0x80 },
    [RIBBON_MULTI_ABILITY] = { 0x1D, 0x60, 0x0, ribbon_name_multi_ability, 0x81 },
    [RIBBON_PAIR_ABILITY] = { 0x1E, 0x61, 0x0, ribbon_name_pair_ability, 0x82 },
    [RIBBON_WORLD_ABILITY] = { 0x1F, 0x62, 0x0, ribbon_name_world_ability, 0x83 },
    [RIBBON_ALERT] = { 0x20, 0x63, 0x2, ribbon_name_alert, 0x84 },
    [RIBBON_SHOCK] = { 0x21, 0x64, 0x0, ribbon_name_shock, 0x85 },
    [RIBBON_DOWNCAST] = { 0x22, 0x65, 0x1, ribbon_name_downcast, 0x86 },
    [RIBBON_CARELESS] = { 0x23, 0x66, 0x2, ribbon_name_careless, 0x87 },
    [RIBBON_RELAX] = { 0x24, 0x67, 0x3, ribbon_name_relax, 0x88 },
    [RIBBON_SNOOZE] = { 0x25, 0x68, 0x0, ribbon_name_snooze, 0x89 },
    [RIBBON_SMILE] = { 0x26, 0x69, 0x2, ribbon_name_smile, 0x8A },
    [RIBBON_GORGEOUS] = { 0x27, 0x6A, 0x1, ribbon_name_gorgeous, 0x8B },
    [RIBBON_ROYAL] = { 0x28, 0x6B, 0x3, ribbon_name_royal, 0x8C },
    [RIBBON_GORGEOUS_ROYAL] = { 0x29, 0x6C, 0x0, ribbon_name_gorgeous_royal, 0x8D },
    [RIBBON_FOOTPRINT] = { 0x2A, 0x6D, 0x0, ribbon_name_footprint, 0x8E },
    [RIBBON_RECORD] = { 0x2B, 0x6E, 0x1, ribbon_name_record, 0x8F },
    [RIBBON_HISTORY] = { 0x2C, 0x6F, 0x3, ribbon_name_history, 0x90 },
    [RIBBON_LEGEND] = { 0x2D, 0x70, 0x0, ribbon_name_legend, 0x91 },
    [RIBBON_RED] = { 0x2E, 0x71, 0x0, ribbon_name_red, 0x8007 },
    [RIBBON_GREEN] = { 0x2F, 0x72, 0x3, ribbon_name_green, 0x8008 },
    [RIBBON_BLUE] = { 0x30, 0x73, 0x1, ribbon_name_blue, 0x8009 },
    [RIBBON_FESTIVAL] = { 0x31, 0x74, 0x1, ribbon_name_festival, 0x800A },
    [RIBBON_CARNIVAL] = { 0x32, 0x75, 0x0, ribbon_name_carnival, 0x800B },
    [RIBBON_CLASSIC] = { 0x33, 0x76, 0x1, ribbon_name_classic, 0x800C },
    [RIBBON_PREMIER] = { 0x34, 0x77, 0x0, ribbon_name_premier, 0x800D },
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
