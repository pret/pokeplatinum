#include "constants/items.h"
#include "constants/seals.h"
#include "generated/mart_decor_id.h"
#include "generated/mart_frontier_id.h"
#include "generated/mart_seal_id.h"
#include "generated/mart_specialties_id.h"

typedef struct {
    u16 itemID;
    u16 requiredBadges;
} PokeMartCommonItem;

const PokeMartCommonItem PokeMartCommonItems[] = {
    { ITEM_POKE_BALL, 0x1 },
    { ITEM_GREAT_BALL, 0x3 },
    { ITEM_ULTRA_BALL, 0x4 },
    { ITEM_POTION, 0x1 },
    { ITEM_SUPER_POTION, 0x2 },
    { ITEM_HYPER_POTION, 0x4 },
    { ITEM_MAX_POTION, 0x5 },
    { ITEM_FULL_RESTORE, 0x6 },
    { ITEM_REVIVE, 0x3 },
    { ITEM_ANTIDOTE, 0x1 },
    { ITEM_PARLYZ_HEAL, 0x1 },
    { ITEM_AWAKENING, 0x2 },
    { ITEM_BURN_HEAL, 0x2 },
    { ITEM_ICE_HEAL, 0x2 },
    { ITEM_FULL_HEAL, 0x4 },
    { ITEM_ESCAPE_ROPE, 0x2 },
    { ITEM_REPEL, 0x2 },
    { ITEM_SUPER_REPEL, 0x3 },
    { ITEM_MAX_REPEL, 0x4 }
};

const u16 JubilifeMartSpecialties[] = {
    ITEM_AIR_MAIL,
    ITEM_HEAL_BALL,
    SHOP_ITEM_END
};

const u16 OreburghMartSpecialties[] = {
    ITEM_TUNNEL_MAIL,
    ITEM_HEAL_BALL,
    ITEM_NET_BALL,
    SHOP_ITEM_END
};

const u16 FloaromaMartSpecialties[] = {
    ITEM_BLOOM_MAIL,
    ITEM_HEAL_BALL,
    ITEM_NET_BALL,
    SHOP_ITEM_END
};

const u16 EternaMartSpecialties[] = {
    ITEM_AIR_MAIL,
    ITEM_HEAL_BALL,
    ITEM_NET_BALL,
    ITEM_NEST_BALL,
    SHOP_ITEM_END
};

const u16 EternaHerbShopStock[] = {
    ITEM_HEAL_POWDER,
    ITEM_ENERGYPOWDER,
    ITEM_ENERGY_ROOT,
    ITEM_REVIVAL_HERB,
    SHOP_ITEM_END
};

const u16 HearthomeMartSpecialties[] = {
    ITEM_HEART_MAIL,
    ITEM_HEAL_BALL,
    ITEM_NET_BALL,
    ITEM_NEST_BALL,
    SHOP_ITEM_END
};

const u16 SolaceonMartSpecialties[] = {
    ITEM_AIR_MAIL,
    ITEM_NET_BALL,
    ITEM_NEST_BALL,
    ITEM_DUSK_BALL,
    SHOP_ITEM_END
};

const u16 PastoriaMartSpecialties[] = {
    ITEM_AIR_MAIL,
    ITEM_NEST_BALL,
    ITEM_DUSK_BALL,
    ITEM_QUICK_BALL,
    SHOP_ITEM_END
};

const u16 VeilstoneDeptStoreStock_1F_RIGHT[] = {
    ITEM_POTION,
    ITEM_SUPER_POTION,
    ITEM_HYPER_POTION,
    ITEM_MAX_POTION,
    ITEM_REVIVE,
    ITEM_ANTIDOTE,
    ITEM_PARLYZ_HEAL,
    ITEM_BURN_HEAL,
    ITEM_ICE_HEAL,
    ITEM_AWAKENING,
    ITEM_FULL_HEAL,
    SHOP_ITEM_END
};

const u16 VeilstoneDeptStoreStock_1F_LEFT[] = {
    ITEM_POKE_BALL,
    ITEM_GREAT_BALL,
    ITEM_ULTRA_BALL,
    ITEM_ESCAPE_ROPE,
    ITEM_POKE_DOLL,
    ITEM_REPEL,
    ITEM_SUPER_REPEL,
    ITEM_MAX_REPEL,
    ITEM_GRASS_MAIL,
    ITEM_FLAME_MAIL,
    ITEM_BUBBLE_MAIL,
    ITEM_SPACE_MAIL,
    SHOP_ITEM_END
};

const u16 VeilstoneDeptStoreStock_2F_UP[] = {
    ITEM_X_SPEED,
    ITEM_X_ATTACK,
    ITEM_X_DEFENSE,
    ITEM_GUARD_SPEC,
    ITEM_DIRE_HIT,
    ITEM_X_ACCURACY,
    ITEM_X_SPECIAL,
    ITEM_X_SP_DEF,
    SHOP_ITEM_END
};

const u16 VeilstoneDeptStoreStock_2F_MID[] = {
    ITEM_PROTEIN,
    ITEM_IRON,
    ITEM_CALCIUM,
    ITEM_ZINC,
    ITEM_CARBOS,
    ITEM_HP_UP,
    SHOP_ITEM_END
};

const u16 VeilstoneDeptStoreStock_3F_UP[] = {
    ITEM_TM83,
    ITEM_TM17,
    ITEM_TM54,
    ITEM_TM20,
    ITEM_TM33,
    ITEM_TM16,
    ITEM_TM70,
    SHOP_ITEM_END
};

const u16 VeilstoneDeptStoreStock_3F_DOWN[] = {
    ITEM_TM38,
    ITEM_TM25,
    ITEM_TM14,
    ITEM_TM22,
    ITEM_TM52,
    ITEM_TM15,
    SHOP_ITEM_END
};

const u16 CelesticMartSpecialties[] = {
    ITEM_AIR_MAIL,
    ITEM_DUSK_BALL,
    ITEM_QUICK_BALL,
    ITEM_TIMER_BALL,
    SHOP_ITEM_END
};

const u16 SnowpointMartSpecialties[] = {
    ITEM_SNOW_MAIL,
    ITEM_DUSK_BALL,
    ITEM_QUICK_BALL,
    ITEM_TIMER_BALL,
    SHOP_ITEM_END
};

const u16 CanalaveMartSpecialties[] = {
    ITEM_AIR_MAIL,
    ITEM_QUICK_BALL,
    ITEM_TIMER_BALL,
    ITEM_REPEAT_BALL,
    SHOP_ITEM_END
};

const u16 SunyshoreMartSpecialties[] = {
    ITEM_STEEL_MAIL,
    ITEM_LUXURY_BALL,
    SHOP_ITEM_END
};

const u16 PokemonLeagueMartSpecialties[] = {
    ITEM_HEAL_BALL,
    ITEM_NET_BALL,
    ITEM_NEST_BALL,
    ITEM_DUSK_BALL,
    ITEM_QUICK_BALL,
    ITEM_TIMER_BALL,
    ITEM_REPEAT_BALL,
    ITEM_LUXURY_BALL,
    SHOP_ITEM_END
};

const u16 VeilstoneDeptStoreStock_B1F_DOWN_LEFT[] = {
    ITEM_FIGY_BERRY,
    ITEM_WIKI_BERRY,
    ITEM_MAGO_BERRY,
    ITEM_AGUAV_BERRY,
    ITEM_IAPAPA_BERRY,
    SHOP_ITEM_END
};

const u16 *PokeMartSpecialties[] = {
    [MART_SPECIALTIES_ID_JUBILIFE] = JubilifeMartSpecialties,
    [MART_SPECIALTIES_ID_OREBURGH] = OreburghMartSpecialties,
    [MART_SPECIALTIES_ID_FLOAROMA] = FloaromaMartSpecialties,
    [MART_SPECIALTIES_ID_ETERNA_MART] = EternaMartSpecialties,
    [MART_SPECIALTIES_ID_ETERNA_HOUSE] = EternaHerbShopStock,
    [MART_SPECIALTIES_ID_HEARTHOME] = HearthomeMartSpecialties,
    [MART_SPECIALTIES_ID_SOLACEON] = SolaceonMartSpecialties,
    [MART_SPECIALTIES_ID_PASTORIA] = PastoriaMartSpecialties,
    [MART_SPECIALTIES_ID_VEILSTONE_1F_RIGHT] = VeilstoneDeptStoreStock_1F_RIGHT,
    [MART_SPECIALTIES_ID_VEILSTONE_1F_LEFT] = VeilstoneDeptStoreStock_1F_LEFT,
    [MART_SPECIALTIES_ID_VEILSTONE_2F_UP] = VeilstoneDeptStoreStock_2F_UP,
    [MART_SPECIALTIES_ID_VEILSTONE_2F_MID] = VeilstoneDeptStoreStock_2F_MID,
    [MART_SPECIALTIES_ID_VEILSTONE_3F_UP] = VeilstoneDeptStoreStock_3F_UP,
    [MART_SPECIALTIES_ID_VEILSTONE_3F_DOWN] = VeilstoneDeptStoreStock_3F_DOWN,
    [MART_SPECIALTIES_ID_CELESTIC] = CelesticMartSpecialties,
    [MART_SPECIALTIES_ID_SNOWPOINT] = SnowpointMartSpecialties,
    [MART_SPECIALTIES_ID_CANALAVE] = CanalaveMartSpecialties,
    [MART_SPECIALTIES_ID_SUNYSHORE] = SunyshoreMartSpecialties,
    [MART_SPECIALTIES_ID_POKEMON_LEAGUE] = PokemonLeagueMartSpecialties,
    [MART_SPECIALTIES_ID_VEILSTONE_B1F] = VeilstoneDeptStoreStock_B1F_DOWN_LEFT
};

const u16 VeilstoneDeptStoreStock_4F_UP[] = {
    0x7,
    0x16,
    0x19,
    0x1A,
    0x1B,
    SHOP_ITEM_END
};

const u16 VeilstoneDeptStoreStock_4F_DOWN[] = {
    0x73,
    0x74,
    0x75,
    0x77,
    0x78,
    0x79,
    SHOP_ITEM_END
};

const u16 *VeilstoneDeptStoreDecorationStocks[] = {
    [MART_DECOR_ID_VEILSTONE_4F_UP] = VeilstoneDeptStoreStock_4F_UP,
    [MART_DECOR_ID_VEILSTONE_4F_DOWN] = VeilstoneDeptStoreStock_4F_DOWN
};

const u16 SunyshoreMarketStockMonday[] = {
    HEART_SEAL_A,
    STAR_SEAL_B,
    FIRE_SEAL_A,
    SONG_SEAL_A,
    LINE_SEAL_C,
    ELE_SEAL_B,
    PARTY_SEAL_D,
    SHOP_ITEM_END
};

const u16 SunyshoreMarketStockTuesday[] = {
    HEART_SEAL_B,
    STAR_SEAL_C,
    FIRE_SEAL_B,
    FLORA_SEAL_A,
    SONG_SEAL_B,
    LINE_SEAL_D,
    ELE_SEAL_C,
    SHOP_ITEM_END
};

const u16 SunyshoreMarketStockWednesday[] = {
    HEART_SEAL_C,
    STAR_SEAL_D,
    FIRE_SEAL_C,
    FLORA_SEAL_B,
    SONG_SEAL_C,
    SMOKE_SEAL_A,
    ELE_SEAL_D,
    SHOP_ITEM_END
};

const u16 SunyshoreMarketStockThursday[] = {
    HEART_SEAL_D,
    FOAMY_SEAL_A,
    FIRE_SEAL_D,
    FLORA_SEAL_C,
    SONG_SEAL_D,
    STAR_SEAL_E,
    SMOKE_SEAL_B,
    SHOP_ITEM_END
};

const u16 SunyshoreMarketStockFriday[] = {
    FOAMY_SEAL_B,
    PARTY_SEAL_A,
    FLORA_SEAL_D,
    SONG_SEAL_E,
    HEART_SEAL_E,
    STAR_SEAL_F,
    SMOKE_SEAL_C,
    SHOP_ITEM_END
};

const u16 SunyshoreMarketStockSaturday[] = {
    FOAMY_SEAL_C,
    PARTY_SEAL_B,
    FLORA_SEAL_E,
    SONG_SEAL_F,
    HEART_SEAL_F,
    LINE_SEAL_A,
    SMOKE_SEAL_D,
    SHOP_ITEM_END
};

const u16 SunyshoreMarketStockSunday[] = {
    STAR_SEAL_A,
    SONG_SEAL_G,
    FOAMY_SEAL_D,
    FLORA_SEAL_F,
    LINE_SEAL_B,
    ELE_SEAL_A,
    PARTY_SEAL_C,
    SHOP_ITEM_END
};

const u16 *SunyshoreMarketDailyStocks[] = {
    [MART_SEAL_ID_SUNYSHORE_MONDAY] = SunyshoreMarketStockMonday,
    [MART_SEAL_ID_SUNYSHORE_TUESDAY] = SunyshoreMarketStockTuesday,
    [MART_SEAL_ID_SUNYSHORE_WEDNESDAY] = SunyshoreMarketStockWednesday,
    [MART_SEAL_ID_SUNYSHORE_THURSDAY] = SunyshoreMarketStockThursday,
    [MART_SEAL_ID_SUNYSHORE_FRIDAY] = SunyshoreMarketStockFriday,
    [MART_SEAL_ID_SUNYSHORE_SATURDAY] = SunyshoreMarketStockSaturday,
    [MART_SEAL_ID_SUNYSHORE_SUNDAY] = SunyshoreMarketStockSunday
};
