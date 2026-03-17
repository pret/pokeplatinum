#include "item.h"

#include <nitro.h>
#include <string.h>

#include "constants/gba/items.h"
#include "constants/items.h"
#include "constants/moves.h"

#include "bag.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "string_gf.h"

#include "res/graphics/item_icons/item_icon.naix"

typedef struct ItemArchiveIDs {
    u16 dataID; // Member file index in pl_item_data.narc; TODO: Use NAIX generated from pl_item_data
    u16 iconID; // Member file index of NCGR in item_icon.narc; TODO: Use NAIX generated from item_icon.narc
    u16 paletteID; // Member file index of NCLR in item_icon.narc; TODO: Use NAIX generated from item_icon.narc
    u16 gen3ID; // Transfer ID from gen3
} ItemArchiveIDs;

static s32 ItemPartyParam_Get(ItemPartyParam *partyParam, enum ItemDataParam attributeID);

const ItemArchiveIDs sItemArchiveIDs[] = {
    [ITEM_NONE] = {
        .dataID = 0x0,
        .iconID = none_NCGR,
        .paletteID = none_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_MASTER_BALL] = {
        .dataID = 0x1,
        .iconID = master_ball_NCGR,
        .paletteID = master_ball_NCLR,
        .gen3ID = GBA_ITEM_MASTER_BALL,
    },
    [ITEM_ULTRA_BALL] = {
        .dataID = 0x2,
        .iconID = ultra_ball_NCGR,
        .paletteID = ultra_ball_NCLR,
        .gen3ID = GBA_ITEM_ULTRA_BALL,
    },
    [ITEM_GREAT_BALL] = {
        .dataID = 0x3,
        .iconID = great_ball_NCGR,
        .paletteID = great_ball_NCLR,
        .gen3ID = GBA_ITEM_GREAT_BALL,
    },
    [ITEM_POKE_BALL] = {
        .dataID = 0x4,
        .iconID = poke_ball_NCGR,
        .paletteID = poke_ball_NCLR,
        .gen3ID = GBA_ITEM_POKE_BALL,
    },
    [ITEM_SAFARI_BALL] = {
        .dataID = 0x5,
        .iconID = safari_ball_NCGR,
        .paletteID = safari_ball_NCLR,
        .gen3ID = GBA_ITEM_SAFARI_BALL,
    },
    [ITEM_NET_BALL] = {
        .dataID = 0x6,
        .iconID = net_ball_NCGR,
        .paletteID = net_ball_NCLR,
        .gen3ID = GBA_ITEM_NET_BALL,
    },
    [ITEM_DIVE_BALL] = {
        .dataID = 0x7,
        .iconID = dive_ball_NCGR,
        .paletteID = dive_ball_NCLR,
        .gen3ID = GBA_ITEM_DIVE_BALL,
    },
    [ITEM_NEST_BALL] = {
        .dataID = 0x8,
        .iconID = nest_ball_NCGR,
        .paletteID = nest_ball_NCLR,
        .gen3ID = GBA_ITEM_NEST_BALL,
    },
    [ITEM_REPEAT_BALL] = {
        .dataID = 0x9,
        .iconID = repeat_ball_NCGR,
        .paletteID = repeat_ball_NCLR,
        .gen3ID = GBA_ITEM_REPEAT_BALL,
    },
    [ITEM_TIMER_BALL] = {
        .dataID = 0xA,
        .iconID = timer_ball_NCGR,
        .paletteID = repeat_ball_NCLR,
        .gen3ID = GBA_ITEM_TIMER_BALL,
    },
    [ITEM_LUXURY_BALL] = {
        .dataID = 0xB,
        .iconID = luxury_ball_NCGR,
        .paletteID = luxury_ball_NCLR,
        .gen3ID = GBA_ITEM_LUXURY_BALL,
    },
    [ITEM_PREMIER_BALL] = {
        .dataID = 0xC,
        .iconID = premier_ball_NCGR,
        .paletteID = luxury_ball_NCLR,
        .gen3ID = GBA_ITEM_PREMIER_BALL,
    },
    [ITEM_DUSK_BALL] = {
        .dataID = 0xD,
        .iconID = dusk_ball_NCGR,
        .paletteID = dusk_ball_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_HEAL_BALL] = {
        .dataID = 0xE,
        .iconID = heal_ball_NCGR,
        .paletteID = heal_ball_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_QUICK_BALL] = {
        .dataID = 0xF,
        .iconID = quick_ball_NCGR,
        .paletteID = quick_ball_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_CHERISH_BALL] = {
        .dataID = 0x10,
        .iconID = cherish_ball_NCGR,
        .paletteID = cherish_ball_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_POTION] = {
        .dataID = 0x11,
        .iconID = potion_NCGR,
        .paletteID = potion_NCLR,
        .gen3ID = GBA_ITEM_POTION,
    },
    [ITEM_ANTIDOTE] = {
        .dataID = 0x12,
        .iconID = antidote_NCGR,
        .paletteID = antidote_NCLR,
        .gen3ID = GBA_ITEM_ANTIDOTE,
    },
    [ITEM_BURN_HEAL] = {
        .dataID = 0x13,
        .iconID = burn_heal_NCGR,
        .paletteID = burn_heal_NCLR,
        .gen3ID = GBA_ITEM_BURN_HEAL,
    },
    [ITEM_ICE_HEAL] = {
        .dataID = 0x14,
        .iconID = burn_heal_NCGR,
        .paletteID = ice_heal_NCLR,
        .gen3ID = GBA_ITEM_ICE_HEAL,
    },
    [ITEM_AWAKENING] = {
        .dataID = 0x15,
        .iconID = burn_heal_NCGR,
        .paletteID = awakening_NCLR,
        .gen3ID = GBA_ITEM_AWAKENING,
    },
    [ITEM_PARLYZ_HEAL] = {
        .dataID = 0x16,
        .iconID = burn_heal_NCGR,
        .paletteID = parlyz_heal_NCLR,
        .gen3ID = GBA_ITEM_PARALYZE_HEAL,
    },
    [ITEM_FULL_RESTORE] = {
        .dataID = 0x17,
        .iconID = full_restore_NCGR,
        .paletteID = full_restore_NCLR,
        .gen3ID = GBA_ITEM_FULL_RESTORE,
    },
    [ITEM_MAX_POTION] = {
        .dataID = 0x18,
        .iconID = full_restore_NCGR,
        .paletteID = max_potion_NCLR,
        .gen3ID = GBA_ITEM_MAX_POTION,
    },
    [ITEM_HYPER_POTION] = {
        .dataID = 0x19,
        .iconID = potion_NCGR,
        .paletteID = hyper_potion_NCLR,
        .gen3ID = GBA_ITEM_HYPER_POTION,
    },
    [ITEM_SUPER_POTION] = {
        .dataID = 0x1A,
        .iconID = potion_NCGR,
        .paletteID = super_potion_NCLR,
        .gen3ID = GBA_ITEM_SUPER_POTION,
    },
    [ITEM_FULL_HEAL] = {
        .dataID = 0x1B,
        .iconID = full_heal_NCGR,
        .paletteID = full_heal_NCLR,
        .gen3ID = GBA_ITEM_FULL_HEAL,
    },
    [ITEM_REVIVE] = {
        .dataID = 0x1C,
        .iconID = revive_NCGR,
        .paletteID = revive_NCLR,
        .gen3ID = GBA_ITEM_REVIVE,
    },
    [ITEM_MAX_REVIVE] = {
        .dataID = 0x1D,
        .iconID = max_revive_NCGR,
        .paletteID = revive_NCLR,
        .gen3ID = GBA_ITEM_MAX_REVIVE,
    },
    [ITEM_FRESH_WATER] = {
        .dataID = 0x1E,
        .iconID = fresh_water_NCGR,
        .paletteID = fresh_water_NCLR,
        .gen3ID = GBA_ITEM_FRESH_WATER,
    },
    [ITEM_SODA_POP] = {
        .dataID = 0x1F,
        .iconID = soda_pop_NCGR,
        .paletteID = soda_pop_NCLR,
        .gen3ID = GBA_ITEM_SODA_POP,
    },
    [ITEM_LEMONADE] = {
        .dataID = 0x20,
        .iconID = lemonade_NCGR,
        .paletteID = lemonade_NCLR,
        .gen3ID = GBA_ITEM_LEMONADE,
    },
    [ITEM_MOOMOO_MILK] = {
        .dataID = 0x21,
        .iconID = moomoo_milk_NCGR,
        .paletteID = moomoo_milk_NCLR,
        .gen3ID = GBA_ITEM_MOOMOO_MILK,
    },
    [ITEM_ENERGYPOWDER] = {
        .dataID = 0x22,
        .iconID = energypowder_NCGR,
        .paletteID = energypowder_NCLR,
        .gen3ID = GBA_ITEM_ENERGY_POWDER,
    },
    [ITEM_ENERGY_ROOT] = {
        .dataID = 0x23,
        .iconID = energy_root_NCGR,
        .paletteID = energy_root_NCLR,
        .gen3ID = GBA_ITEM_ENERGY_ROOT,
    },
    [ITEM_HEAL_POWDER] = {
        .dataID = 0x24,
        .iconID = energypowder_NCGR,
        .paletteID = heal_powder_NCLR,
        .gen3ID = GBA_ITEM_HEAL_POWDER,
    },
    [ITEM_REVIVAL_HERB] = {
        .dataID = 0x25,
        .iconID = revival_herb_NCGR,
        .paletteID = revival_herb_NCLR,
        .gen3ID = GBA_ITEM_REVIVAL_HERB,
    },
    [ITEM_ETHER] = {
        .dataID = 0x26,
        .iconID = ether_NCGR,
        .paletteID = ether_NCLR,
        .gen3ID = GBA_ITEM_ETHER,
    },
    [ITEM_MAX_ETHER] = {
        .dataID = 0x27,
        .iconID = ether_NCGR,
        .paletteID = max_ether_NCLR,
        .gen3ID = GBA_ITEM_MAX_ETHER,
    },
    [ITEM_ELIXIR] = {
        .dataID = 0x28,
        .iconID = ether_NCGR,
        .paletteID = elixir_NCLR,
        .gen3ID = GBA_ITEM_ELIXIR,
    },
    [ITEM_MAX_ELIXIR] = {
        .dataID = 0x29,
        .iconID = ether_NCGR,
        .paletteID = max_elixir_NCLR,
        .gen3ID = GBA_ITEM_MAX_ELIXIR,
    },
    [ITEM_LAVA_COOKIE] = {
        .dataID = 0x2A,
        .iconID = lava_cookie_NCGR,
        .paletteID = lava_cookie_NCLR,
        .gen3ID = GBA_ITEM_LAVA_COOKIE,
    },
    [ITEM_BERRY_JUICE] = {
        .dataID = 0x2B,
        .iconID = berry_juice_NCGR,
        .paletteID = berry_juice_NCLR,
        .gen3ID = GBA_ITEM_BERRY_JUICE,
    },
    [ITEM_SACRED_ASH] = {
        .dataID = 0x2C,
        .iconID = sacred_ash_NCGR,
        .paletteID = sacred_ash_NCLR,
        .gen3ID = GBA_ITEM_SACRED_ASH,
    },
    [ITEM_HP_UP] = {
        .dataID = 0x2D,
        .iconID = hp_up_NCGR,
        .paletteID = hp_up_NCLR,
        .gen3ID = GBA_ITEM_HP_UP,
    },
    [ITEM_PROTEIN] = {
        .dataID = 0x2E,
        .iconID = protein_NCGR,
        .paletteID = protein_NCLR,
        .gen3ID = GBA_ITEM_PROTEIN,
    },
    [ITEM_IRON] = {
        .dataID = 0x2F,
        .iconID = protein_NCGR,
        .paletteID = iron_NCLR,
        .gen3ID = GBA_ITEM_IRON,
    },
    [ITEM_CARBOS] = {
        .dataID = 0x30,
        .iconID = protein_NCGR,
        .paletteID = carbos_NCLR,
        .gen3ID = GBA_ITEM_CARBOS,
    },
    [ITEM_CALCIUM] = {
        .dataID = 0x31,
        .iconID = protein_NCGR,
        .paletteID = calcium_NCLR,
        .gen3ID = GBA_ITEM_CALCIUM,
    },
    [ITEM_RARE_CANDY] = {
        .dataID = 0x32,
        .iconID = rare_candy_NCGR,
        .paletteID = rare_candy_NCLR,
        .gen3ID = GBA_ITEM_RARE_CANDY,
    },
    [ITEM_PP_UP] = {
        .dataID = 0x33,
        .iconID = pp_up_NCGR,
        .paletteID = pp_up_NCLR,
        .gen3ID = GBA_ITEM_PP_UP,
    },
    [ITEM_ZINC] = {
        .dataID = 0x34,
        .iconID = protein_NCGR,
        .paletteID = zinc_NCLR,
        .gen3ID = GBA_ITEM_ZINC,
    },
    [ITEM_PP_MAX] = {
        .dataID = 0x35,
        .iconID = pp_max_NCGR,
        .paletteID = pp_max_NCLR,
        .gen3ID = GBA_ITEM_PP_MAX,
    },
    [ITEM_OLD_GATEAU] = {
        .dataID = 0x36,
        .iconID = old_gateau_NCGR,
        .paletteID = old_gateau_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_GUARD_SPEC] = {
        .dataID = 0x37,
        .iconID = guard_spec_NCGR,
        .paletteID = guard_spec_NCLR,
        .gen3ID = GBA_ITEM_GUARD_SPEC,
    },
    [ITEM_DIRE_HIT] = {
        .dataID = 0x38,
        .iconID = guard_spec_NCGR,
        .paletteID = dire_hit_NCLR,
        .gen3ID = GBA_ITEM_DIRE_HIT,
    },
    [ITEM_X_ATTACK] = {
        .dataID = 0x39,
        .iconID = guard_spec_NCGR,
        .paletteID = x_attack_NCLR,
        .gen3ID = GBA_ITEM_X_ATTACK,
    },
    [ITEM_X_DEFENSE] = {
        .dataID = 0x3A,
        .iconID = guard_spec_NCGR,
        .paletteID = x_defense_NCLR,
        .gen3ID = GBA_ITEM_X_DEFEND,
    },
    [ITEM_X_SPEED] = {
        .dataID = 0x3B,
        .iconID = guard_spec_NCGR,
        .paletteID = x_speed_NCLR,
        .gen3ID = GBA_ITEM_X_SPEED,
    },
    [ITEM_X_ACCURACY] = {
        .dataID = 0x3C,
        .iconID = guard_spec_NCGR,
        .paletteID = x_accuracy_NCLR,
        .gen3ID = GBA_ITEM_X_ACCURACY,
    },
    [ITEM_X_SPECIAL] = {
        .dataID = 0x3D,
        .iconID = guard_spec_NCGR,
        .paletteID = x_special_NCLR,
        .gen3ID = GBA_ITEM_X_SPECIAL,
    },
    [ITEM_X_SP_DEF] = {
        .dataID = 0x3E,
        .iconID = guard_spec_NCGR,
        .paletteID = x_sp_def_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_POKE_DOLL] = {
        .dataID = 0x3F,
        .iconID = poke_doll_NCGR,
        .paletteID = poke_doll_NCLR,
        .gen3ID = GBA_ITEM_POKE_DOLL,
    },
    [ITEM_FLUFFY_TAIL] = {
        .dataID = 0x40,
        .iconID = fluffy_tail_NCGR,
        .paletteID = fluffy_tail_NCLR,
        .gen3ID = GBA_ITEM_FLUFFY_TAIL,
    },
    [ITEM_BLUE_FLUTE] = {
        .dataID = 0x41,
        .iconID = blue_flute_NCGR,
        .paletteID = blue_flute_NCLR,
        .gen3ID = GBA_ITEM_BLUE_FLUTE,
    },
    [ITEM_YELLOW_FLUTE] = {
        .dataID = 0x42,
        .iconID = blue_flute_NCGR,
        .paletteID = yellow_flute_NCLR,
        .gen3ID = GBA_ITEM_YELLOW_FLUTE,
    },
    [ITEM_RED_FLUTE] = {
        .dataID = 0x43,
        .iconID = blue_flute_NCGR,
        .paletteID = red_flute_NCLR,
        .gen3ID = GBA_ITEM_RED_FLUTE,
    },
    [ITEM_BLACK_FLUTE] = {
        .dataID = 0x44,
        .iconID = blue_flute_NCGR,
        .paletteID = black_flute_NCLR,
        .gen3ID = GBA_ITEM_BLACK_FLUTE,
    },
    [ITEM_WHITE_FLUTE] = {
        .dataID = 0x45,
        .iconID = blue_flute_NCGR,
        .paletteID = white_flute_NCLR,
        .gen3ID = GBA_ITEM_WHITE_FLUTE,
    },
    [ITEM_SHOAL_SALT] = {
        .dataID = 0x46,
        .iconID = energypowder_NCGR,
        .paletteID = shoal_salt_NCLR,
        .gen3ID = GBA_ITEM_SHOAL_SALT,
    },
    [ITEM_SHOAL_SHELL] = {
        .dataID = 0x47,
        .iconID = shoal_shell_NCGR,
        .paletteID = shoal_shell_NCLR,
        .gen3ID = GBA_ITEM_SHOAL_SHELL,
    },
    [ITEM_RED_SHARD] = {
        .dataID = 0x48,
        .iconID = red_shard_NCGR,
        .paletteID = red_shard_NCLR,
        .gen3ID = GBA_ITEM_RED_SHARD,
    },
    [ITEM_BLUE_SHARD] = {
        .dataID = 0x49,
        .iconID = red_shard_NCGR,
        .paletteID = blue_shard_NCLR,
        .gen3ID = GBA_ITEM_BLUE_SHARD,
    },
    [ITEM_YELLOW_SHARD] = {
        .dataID = 0x4A,
        .iconID = red_shard_NCGR,
        .paletteID = yellow_shard_NCLR,
        .gen3ID = GBA_ITEM_YELLOW_SHARD,
    },
    [ITEM_GREEN_SHARD] = {
        .dataID = 0x4B,
        .iconID = red_shard_NCGR,
        .paletteID = green_shard_NCLR,
        .gen3ID = GBA_ITEM_GREEN_SHARD,
    },
    [ITEM_SUPER_REPEL] = {
        .dataID = 0x4C,
        .iconID = repel_NCGR,
        .paletteID = super_repel_NCLR,
        .gen3ID = GBA_ITEM_SUPER_REPEL,
    },
    [ITEM_MAX_REPEL] = {
        .dataID = 0x4D,
        .iconID = repel_NCGR,
        .paletteID = max_repel_NCLR,
        .gen3ID = GBA_ITEM_MAX_REPEL,
    },
    [ITEM_ESCAPE_ROPE] = {
        .dataID = 0x4E,
        .iconID = escape_rope_NCGR,
        .paletteID = escape_rope_NCLR,
        .gen3ID = GBA_ITEM_ESCAPE_ROPE,
    },
    [ITEM_REPEL] = {
        .dataID = 0x4F,
        .iconID = repel_NCGR,
        .paletteID = repel_NCLR,
        .gen3ID = GBA_ITEM_REPEL,
    },
    [ITEM_SUN_STONE] = {
        .dataID = 0x50,
        .iconID = sun_stone_NCGR,
        .paletteID = sun_stone_NCLR,
        .gen3ID = GBA_ITEM_SUN_STONE,
    },
    [ITEM_MOON_STONE] = {
        .dataID = 0x51,
        .iconID = moon_stone_NCGR,
        .paletteID = moon_stone_NCLR,
        .gen3ID = GBA_ITEM_MOON_STONE,
    },
    [ITEM_FIRE_STONE] = {
        .dataID = 0x52,
        .iconID = fire_stone_NCGR,
        .paletteID = fire_stone_NCLR,
        .gen3ID = GBA_ITEM_FIRE_STONE,
    },
    [ITEM_THUNDERSTONE] = {
        .dataID = 0x53,
        .iconID = thunderstone_NCGR,
        .paletteID = thunderstone_NCLR,
        .gen3ID = GBA_ITEM_THUNDER_STONE,
    },
    [ITEM_WATER_STONE] = {
        .dataID = 0x54,
        .iconID = water_stone_NCGR,
        .paletteID = water_stone_NCLR,
        .gen3ID = GBA_ITEM_WATER_STONE,
    },
    [ITEM_LEAF_STONE] = {
        .dataID = 0x55,
        .iconID = leaf_stone_NCGR,
        .paletteID = leaf_stone_NCLR,
        .gen3ID = GBA_ITEM_LEAF_STONE,
    },
    [ITEM_TINYMUSHROOM] = {
        .dataID = 0x56,
        .iconID = tinymushroom_NCGR,
        .paletteID = tinymushroom_NCLR,
        .gen3ID = GBA_ITEM_TINY_MUSHROOM,
    },
    [ITEM_BIG_MUSHROOM] = {
        .dataID = 0x57,
        .iconID = big_mushroom_NCGR,
        .paletteID = tinymushroom_NCLR,
        .gen3ID = GBA_ITEM_BIG_MUSHROOM,
    },
    [ITEM_PEARL] = {
        .dataID = 0x58,
        .iconID = pearl_NCGR,
        .paletteID = pearl_NCLR,
        .gen3ID = GBA_ITEM_PEARL,
    },
    [ITEM_BIG_PEARL] = {
        .dataID = 0x59,
        .iconID = big_pearl_NCGR,
        .paletteID = pearl_NCLR,
        .gen3ID = GBA_ITEM_BIG_PEARL,
    },
    [ITEM_STARDUST] = {
        .dataID = 0x5A,
        .iconID = stardust_NCGR,
        .paletteID = stardust_NCLR,
        .gen3ID = GBA_ITEM_STARDUST,
    },
    [ITEM_STAR_PIECE] = {
        .dataID = 0x5B,
        .iconID = star_piece_NCGR,
        .paletteID = stardust_NCLR,
        .gen3ID = GBA_ITEM_STAR_PIECE,
    },
    [ITEM_NUGGET] = {
        .dataID = 0x5C,
        .iconID = nugget_NCGR,
        .paletteID = nugget_NCLR,
        .gen3ID = GBA_ITEM_NUGGET,
    },
    [ITEM_HEART_SCALE] = {
        .dataID = 0x5D,
        .iconID = heart_scale_NCGR,
        .paletteID = heart_scale_NCLR,
        .gen3ID = GBA_ITEM_HEART_SCALE,
    },
    [ITEM_HONEY] = {
        .dataID = 0x5E,
        .iconID = honey_NCGR,
        .paletteID = honey_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_GROWTH_MULCH] = {
        .dataID = 0x5F,
        .iconID = growth_mulch_NCGR,
        .paletteID = growth_mulch_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_DAMP_MULCH] = {
        .dataID = 0x60,
        .iconID = damp_mulch_NCGR,
        .paletteID = damp_mulch_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_STABLE_MULCH] = {
        .dataID = 0x61,
        .iconID = stable_mulch_NCGR,
        .paletteID = stable_mulch_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_GOOEY_MULCH] = {
        .dataID = 0x62,
        .iconID = gooey_mulch_NCGR,
        .paletteID = gooey_mulch_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_ROOT_FOSSIL] = {
        .dataID = 0x63,
        .iconID = root_fossil_NCGR,
        .paletteID = root_fossil_NCLR,
        .gen3ID = GBA_ITEM_ROOT_FOSSIL,
    },
    [ITEM_CLAW_FOSSIL] = {
        .dataID = 0x64,
        .iconID = claw_fossil_NCGR,
        .paletteID = root_fossil_NCLR,
        .gen3ID = GBA_ITEM_CLAW_FOSSIL,
    },
    [ITEM_HELIX_FOSSIL] = {
        .dataID = 0x65,
        .iconID = helix_fossil_NCGR,
        .paletteID = helix_fossil_NCLR,
        .gen3ID = GBA_ITEM_HELIX_FOSSIL,
    },
    [ITEM_DOME_FOSSIL] = {
        .dataID = 0x66,
        .iconID = dome_fossil_NCGR,
        .paletteID = helix_fossil_NCLR,
        .gen3ID = GBA_ITEM_DOME_FOSSIL,
    },
    [ITEM_OLD_AMBER] = {
        .dataID = 0x67,
        .iconID = old_amber_NCGR,
        .paletteID = old_amber_NCLR,
        .gen3ID = GBA_ITEM_OLD_AMBER,
    },
    [ITEM_ARMOR_FOSSIL] = {
        .dataID = 0x68,
        .iconID = armor_fossil_NCGR,
        .paletteID = armor_fossil_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_SKULL_FOSSIL] = {
        .dataID = 0x69,
        .iconID = skull_fossil_NCGR,
        .paletteID = skull_fossil_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_RARE_BONE] = {
        .dataID = 0x6A,
        .iconID = rare_bone_NCGR,
        .paletteID = rare_bone_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_SHINY_STONE] = {
        .dataID = 0x6B,
        .iconID = shiny_stone_NCGR,
        .paletteID = shiny_stone_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_DUSK_STONE] = {
        .dataID = 0x6C,
        .iconID = dusk_stone_NCGR,
        .paletteID = dusk_stone_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_DAWN_STONE] = {
        .dataID = 0x6D,
        .iconID = dawn_stone_NCGR,
        .paletteID = dawn_stone_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_OVAL_STONE] = {
        .dataID = 0x6E,
        .iconID = oval_stone_NCGR,
        .paletteID = oval_stone_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_ODD_KEYSTONE] = {
        .dataID = 0x6F,
        .iconID = odd_keystone_NCGR,
        .paletteID = odd_keystone_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_GRISEOUS_ORB] = {
        .dataID = 0x70,
        .iconID = griseous_orb_NCGR,
        .paletteID = griseous_orb_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_UNUSED_113] = {
        .dataID = 0x0,
        .iconID = none_NCGR,
        .paletteID = none_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_UNUSED_114] = {
        .dataID = 0x0,
        .iconID = none_NCGR,
        .paletteID = none_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_UNUSED_115] = {
        .dataID = 0x0,
        .iconID = none_NCGR,
        .paletteID = none_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_UNUSED_116] = {
        .dataID = 0x0,
        .iconID = none_NCGR,
        .paletteID = none_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_UNUSED_117] = {
        .dataID = 0x0,
        .iconID = none_NCGR,
        .paletteID = none_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_UNUSED_118] = {
        .dataID = 0x0,
        .iconID = none_NCGR,
        .paletteID = none_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_UNUSED_119] = {
        .dataID = 0x0,
        .iconID = none_NCGR,
        .paletteID = none_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_UNUSED_120] = {
        .dataID = 0x0,
        .iconID = none_NCGR,
        .paletteID = none_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_UNUSED_121] = {
        .dataID = 0x0,
        .iconID = none_NCGR,
        .paletteID = none_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_UNUSED_122] = {
        .dataID = 0x0,
        .iconID = none_NCGR,
        .paletteID = none_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_UNUSED_123] = {
        .dataID = 0x0,
        .iconID = none_NCGR,
        .paletteID = none_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_UNUSED_124] = {
        .dataID = 0x0,
        .iconID = none_NCGR,
        .paletteID = none_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_UNUSED_125] = {
        .dataID = 0x0,
        .iconID = none_NCGR,
        .paletteID = none_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_UNUSED_126] = {
        .dataID = 0x0,
        .iconID = none_NCGR,
        .paletteID = none_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_UNUSED_127] = {
        .dataID = 0x0,
        .iconID = none_NCGR,
        .paletteID = none_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_UNUSED_128] = {
        .dataID = 0x0,
        .iconID = none_NCGR,
        .paletteID = none_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_UNUSED_129] = {
        .dataID = 0x0,
        .iconID = none_NCGR,
        .paletteID = none_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_UNUSED_130] = {
        .dataID = 0x0,
        .iconID = none_NCGR,
        .paletteID = none_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_UNUSED_131] = {
        .dataID = 0x0,
        .iconID = none_NCGR,
        .paletteID = none_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_UNUSED_132] = {
        .dataID = 0x0,
        .iconID = none_NCGR,
        .paletteID = none_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_UNUSED_133] = {
        .dataID = 0x0,
        .iconID = none_NCGR,
        .paletteID = none_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_UNUSED_134] = {
        .dataID = 0x0,
        .iconID = none_NCGR,
        .paletteID = none_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_ADAMANT_ORB] = {
        .dataID = 0x71,
        .iconID = adamant_orb_NCGR,
        .paletteID = adamant_orb_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_LUSTROUS_ORB] = {
        .dataID = 0x72,
        .iconID = lustrous_orb_NCGR,
        .paletteID = lustrous_orb_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_GRASS_MAIL] = {
        .dataID = 0x73,
        .iconID = grass_mail_NCGR,
        .paletteID = grass_mail_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_FLAME_MAIL] = {
        .dataID = 0x74,
        .iconID = flame_mail_NCGR,
        .paletteID = flame_mail_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_BUBBLE_MAIL] = {
        .dataID = 0x75,
        .iconID = bubble_mail_NCGR,
        .paletteID = bubble_mail_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_BLOOM_MAIL] = {
        .dataID = 0x76,
        .iconID = bloom_mail_NCGR,
        .paletteID = bloom_mail_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TUNNEL_MAIL] = {
        .dataID = 0x77,
        .iconID = tunnel_mail_NCGR,
        .paletteID = tunnel_mail_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_STEEL_MAIL] = {
        .dataID = 0x78,
        .iconID = steel_mail_NCGR,
        .paletteID = steel_mail_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_HEART_MAIL] = {
        .dataID = 0x79,
        .iconID = heart_mail_NCGR,
        .paletteID = heart_mail_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_SNOW_MAIL] = {
        .dataID = 0x7A,
        .iconID = snow_mail_NCGR,
        .paletteID = snow_mail_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_SPACE_MAIL] = {
        .dataID = 0x7B,
        .iconID = space_mail_NCGR,
        .paletteID = space_mail_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_AIR_MAIL] = {
        .dataID = 0x7C,
        .iconID = air_mail_NCGR,
        .paletteID = air_mail_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_MOSAIC_MAIL] = {
        .dataID = 0x7D,
        .iconID = mosaic_mail_NCGR,
        .paletteID = mosaic_mail_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_BRICK_MAIL] = {
        .dataID = 0x7E,
        .iconID = brick_mail_NCGR,
        .paletteID = brick_mail_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_CHERI_BERRY] = {
        .dataID = 0x7F,
        .iconID = cheri_berry_NCGR,
        .paletteID = cheri_berry_NCLR,
        .gen3ID = GBA_ITEM_CHERI_BERRY,
    },
    [ITEM_CHESTO_BERRY] = {
        .dataID = 0x80,
        .iconID = chesto_berry_NCGR,
        .paletteID = chesto_berry_NCLR,
        .gen3ID = GBA_ITEM_CHESTO_BERRY,
    },
    [ITEM_PECHA_BERRY] = {
        .dataID = 0x81,
        .iconID = pecha_berry_NCGR,
        .paletteID = pecha_berry_NCLR,
        .gen3ID = GBA_ITEM_PECHA_BERRY,
    },
    [ITEM_RAWST_BERRY] = {
        .dataID = 0x82,
        .iconID = rawst_berry_NCGR,
        .paletteID = rawst_berry_NCLR,
        .gen3ID = GBA_ITEM_RAWST_BERRY,
    },
    [ITEM_ASPEAR_BERRY] = {
        .dataID = 0x83,
        .iconID = aspear_berry_NCGR,
        .paletteID = aspear_berry_NCLR,
        .gen3ID = GBA_ITEM_ASPEAR_BERRY,
    },
    [ITEM_LEPPA_BERRY] = {
        .dataID = 0x84,
        .iconID = leppa_berry_NCGR,
        .paletteID = leppa_berry_NCLR,
        .gen3ID = GBA_ITEM_LEPPA_BERRY,
    },
    [ITEM_ORAN_BERRY] = {
        .dataID = 0x85,
        .iconID = oran_berry_NCGR,
        .paletteID = oran_berry_NCLR,
        .gen3ID = GBA_ITEM_ORAN_BERRY,
    },
    [ITEM_PERSIM_BERRY] = {
        .dataID = 0x86,
        .iconID = persim_berry_NCGR,
        .paletteID = persim_berry_NCLR,
        .gen3ID = GBA_ITEM_PERSIM_BERRY,
    },
    [ITEM_LUM_BERRY] = {
        .dataID = 0x87,
        .iconID = lum_berry_NCGR,
        .paletteID = lum_berry_NCLR,
        .gen3ID = GBA_ITEM_LUM_BERRY,
    },
    [ITEM_SITRUS_BERRY] = {
        .dataID = 0x88,
        .iconID = sitrus_berry_NCGR,
        .paletteID = sitrus_berry_NCLR,
        .gen3ID = GBA_ITEM_SITRUS_BERRY,
    },
    [ITEM_FIGY_BERRY] = {
        .dataID = 0x89,
        .iconID = figy_berry_NCGR,
        .paletteID = figy_berry_NCLR,
        .gen3ID = GBA_ITEM_FIGY_BERRY,
    },
    [ITEM_WIKI_BERRY] = {
        .dataID = 0x8A,
        .iconID = wiki_berry_NCGR,
        .paletteID = wiki_berry_NCLR,
        .gen3ID = GBA_ITEM_WIKI_BERRY,
    },
    [ITEM_MAGO_BERRY] = {
        .dataID = 0x8B,
        .iconID = mago_berry_NCGR,
        .paletteID = mago_berry_NCLR,
        .gen3ID = GBA_ITEM_MAGO_BERRY,
    },
    [ITEM_AGUAV_BERRY] = {
        .dataID = 0x8C,
        .iconID = aguav_berry_NCGR,
        .paletteID = aguav_berry_NCLR,
        .gen3ID = GBA_ITEM_AGUAV_BERRY,
    },
    [ITEM_IAPAPA_BERRY] = {
        .dataID = 0x8D,
        .iconID = iapapa_berry_NCGR,
        .paletteID = iapapa_berry_NCLR,
        .gen3ID = GBA_ITEM_IAPAPA_BERRY,
    },
    [ITEM_RAZZ_BERRY] = {
        .dataID = 0x8E,
        .iconID = razz_berry_NCGR,
        .paletteID = razz_berry_NCLR,
        .gen3ID = GBA_ITEM_RAZZ_BERRY,
    },
    [ITEM_BLUK_BERRY] = {
        .dataID = 0x8F,
        .iconID = bluk_berry_NCGR,
        .paletteID = bluk_berry_NCLR,
        .gen3ID = GBA_ITEM_BLUK_BERRY,
    },
    [ITEM_NANAB_BERRY] = {
        .dataID = 0x90,
        .iconID = nanab_berry_NCGR,
        .paletteID = nanab_berry_NCLR,
        .gen3ID = GBA_ITEM_NANAB_BERRY,
    },
    [ITEM_WEPEAR_BERRY] = {
        .dataID = 0x91,
        .iconID = wepear_berry_NCGR,
        .paletteID = wepear_berry_NCLR,
        .gen3ID = GBA_ITEM_WEPEAR_BERRY,
    },
    [ITEM_PINAP_BERRY] = {
        .dataID = 0x92,
        .iconID = pinap_berry_NCGR,
        .paletteID = pinap_berry_NCLR,
        .gen3ID = GBA_ITEM_PINAP_BERRY,
    },
    [ITEM_POMEG_BERRY] = {
        .dataID = 0x93,
        .iconID = pomeg_berry_NCGR,
        .paletteID = pomeg_berry_NCLR,
        .gen3ID = GBA_ITEM_POMEG_BERRY,
    },
    [ITEM_KELPSY_BERRY] = {
        .dataID = 0x94,
        .iconID = kelpsy_berry_NCGR,
        .paletteID = kelpsy_berry_NCLR,
        .gen3ID = GBA_ITEM_KELPSY_BERRY,
    },
    [ITEM_QUALOT_BERRY] = {
        .dataID = 0x95,
        .iconID = qualot_berry_NCGR,
        .paletteID = qualot_berry_NCLR,
        .gen3ID = GBA_ITEM_QUALOT_BERRY,
    },
    [ITEM_HONDEW_BERRY] = {
        .dataID = 0x96,
        .iconID = hondew_berry_NCGR,
        .paletteID = hondew_berry_NCLR,
        .gen3ID = GBA_ITEM_HONDEW_BERRY,
    },
    [ITEM_GREPA_BERRY] = {
        .dataID = 0x97,
        .iconID = grepa_berry_NCGR,
        .paletteID = grepa_berry_NCLR,
        .gen3ID = GBA_ITEM_GREPA_BERRY,
    },
    [ITEM_TAMATO_BERRY] = {
        .dataID = 0x98,
        .iconID = tamato_berry_NCGR,
        .paletteID = tamato_berry_NCLR,
        .gen3ID = GBA_ITEM_TAMATO_BERRY,
    },
    [ITEM_CORNN_BERRY] = {
        .dataID = 0x99,
        .iconID = cornn_berry_NCGR,
        .paletteID = cornn_berry_NCLR,
        .gen3ID = GBA_ITEM_CORNN_BERRY,
    },
    [ITEM_MAGOST_BERRY] = {
        .dataID = 0x9A,
        .iconID = magost_berry_NCGR,
        .paletteID = magost_berry_NCLR,
        .gen3ID = GBA_ITEM_MAGOST_BERRY,
    },
    [ITEM_RABUTA_BERRY] = {
        .dataID = 0x9B,
        .iconID = rabuta_berry_NCGR,
        .paletteID = rabuta_berry_NCLR,
        .gen3ID = GBA_ITEM_RABUTA_BERRY,
    },
    [ITEM_NOMEL_BERRY] = {
        .dataID = 0x9C,
        .iconID = nomel_berry_NCGR,
        .paletteID = nomel_berry_NCLR,
        .gen3ID = GBA_ITEM_NOMEL_BERRY,
    },
    [ITEM_SPELON_BERRY] = {
        .dataID = 0x9D,
        .iconID = spelon_berry_NCGR,
        .paletteID = spelon_berry_NCLR,
        .gen3ID = GBA_ITEM_SPELON_BERRY,
    },
    [ITEM_PAMTRE_BERRY] = {
        .dataID = 0x9E,
        .iconID = pamtre_berry_NCGR,
        .paletteID = pamtre_berry_NCLR,
        .gen3ID = GBA_ITEM_PAMTRE_BERRY,
    },
    [ITEM_WATMEL_BERRY] = {
        .dataID = 0x9F,
        .iconID = watmel_berry_NCGR,
        .paletteID = watmel_berry_NCLR,
        .gen3ID = GBA_ITEM_WATMEL_BERRY,
    },
    [ITEM_DURIN_BERRY] = {
        .dataID = 0xA0,
        .iconID = durin_berry_NCGR,
        .paletteID = durin_berry_NCLR,
        .gen3ID = GBA_ITEM_DURIN_BERRY,
    },
    [ITEM_BELUE_BERRY] = {
        .dataID = 0xA1,
        .iconID = belue_berry_NCGR,
        .paletteID = belue_berry_NCLR,
        .gen3ID = GBA_ITEM_BELUE_BERRY,
    },
    [ITEM_OCCA_BERRY] = {
        .dataID = 0xA2,
        .iconID = occa_berry_NCGR,
        .paletteID = occa_berry_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_PASSHO_BERRY] = {
        .dataID = 0xA3,
        .iconID = passho_berry_NCGR,
        .paletteID = passho_berry_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_WACAN_BERRY] = {
        .dataID = 0xA4,
        .iconID = wacan_berry_NCGR,
        .paletteID = wacan_berry_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_RINDO_BERRY] = {
        .dataID = 0xA5,
        .iconID = rindo_berry_NCGR,
        .paletteID = rindo_berry_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_YACHE_BERRY] = {
        .dataID = 0xA6,
        .iconID = yache_berry_NCGR,
        .paletteID = yache_berry_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_CHOPLE_BERRY] = {
        .dataID = 0xA7,
        .iconID = chople_berry_NCGR,
        .paletteID = chople_berry_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_KEBIA_BERRY] = {
        .dataID = 0xA8,
        .iconID = kebia_berry_NCGR,
        .paletteID = kebia_berry_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_SHUCA_BERRY] = {
        .dataID = 0xA9,
        .iconID = shuca_berry_NCGR,
        .paletteID = shuca_berry_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_COBA_BERRY] = {
        .dataID = 0xAA,
        .iconID = coba_berry_NCGR,
        .paletteID = coba_berry_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_PAYAPA_BERRY] = {
        .dataID = 0xAB,
        .iconID = payapa_berry_NCGR,
        .paletteID = payapa_berry_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TANGA_BERRY] = {
        .dataID = 0xAC,
        .iconID = tanga_berry_NCGR,
        .paletteID = tanga_berry_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_CHARTI_BERRY] = {
        .dataID = 0xAD,
        .iconID = charti_berry_NCGR,
        .paletteID = charti_berry_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_KASIB_BERRY] = {
        .dataID = 0xAE,
        .iconID = kasib_berry_NCGR,
        .paletteID = kasib_berry_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_HABAN_BERRY] = {
        .dataID = 0xAF,
        .iconID = haban_berry_NCGR,
        .paletteID = haban_berry_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_COLBUR_BERRY] = {
        .dataID = 0xB0,
        .iconID = colbur_berry_NCGR,
        .paletteID = colbur_berry_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_BABIRI_BERRY] = {
        .dataID = 0xB1,
        .iconID = babiri_berry_NCGR,
        .paletteID = babiri_berry_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_CHILAN_BERRY] = {
        .dataID = 0xB2,
        .iconID = chilan_berry_NCGR,
        .paletteID = chilan_berry_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_LIECHI_BERRY] = {
        .dataID = 0xB3,
        .iconID = liechi_berry_NCGR,
        .paletteID = liechi_berry_NCLR,
        .gen3ID = GBA_ITEM_LIECHI_BERRY,
    },
    [ITEM_GANLON_BERRY] = {
        .dataID = 0xB4,
        .iconID = ganlon_berry_NCGR,
        .paletteID = ganlon_berry_NCLR,
        .gen3ID = GBA_ITEM_GANLON_BERRY,
    },
    [ITEM_SALAC_BERRY] = {
        .dataID = 0xB5,
        .iconID = salac_berry_NCGR,
        .paletteID = salac_berry_NCLR,
        .gen3ID = GBA_ITEM_SALAC_BERRY,
    },
    [ITEM_PETAYA_BERRY] = {
        .dataID = 0xB6,
        .iconID = petaya_berry_NCGR,
        .paletteID = petaya_berry_NCLR,
        .gen3ID = GBA_ITEM_PETAYA_BERRY,
    },
    [ITEM_APICOT_BERRY] = {
        .dataID = 0xB7,
        .iconID = apicot_berry_NCGR,
        .paletteID = apicot_berry_NCLR,
        .gen3ID = GBA_ITEM_APICOT_BERRY,
    },
    [ITEM_LANSAT_BERRY] = {
        .dataID = 0xB8,
        .iconID = lansat_berry_NCGR,
        .paletteID = lansat_berry_NCLR,
        .gen3ID = GBA_ITEM_LANSAT_BERRY,
    },
    [ITEM_STARF_BERRY] = {
        .dataID = 0xB9,
        .iconID = starf_berry_NCGR,
        .paletteID = starf_berry_NCLR,
        .gen3ID = GBA_ITEM_STARF_BERRY,
    },
    [ITEM_ENIGMA_BERRY] = {
        .dataID = 0xBA,
        .iconID = enigma_berry_NCGR,
        .paletteID = enigma_berry_NCLR,
        .gen3ID = GBA_ITEM_ENIGMA_BERRY,
    },
    [ITEM_MICLE_BERRY] = {
        .dataID = 0xBB,
        .iconID = micle_berry_NCGR,
        .paletteID = micle_berry_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_CUSTAP_BERRY] = {
        .dataID = 0xBC,
        .iconID = custap_berry_NCGR,
        .paletteID = custap_berry_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_JABOCA_BERRY] = {
        .dataID = 0xBD,
        .iconID = jaboca_berry_NCGR,
        .paletteID = jaboca_berry_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_ROWAP_BERRY] = {
        .dataID = 0xBE,
        .iconID = rowap_berry_NCGR,
        .paletteID = rowap_berry_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_BRIGHTPOWDER] = {
        .dataID = 0xBF,
        .iconID = brightpowder_NCGR,
        .paletteID = brightpowder_NCLR,
        .gen3ID = GBA_ITEM_BRIGHT_POWDER,
    },
    [ITEM_WHITE_HERB] = {
        .dataID = 0xC0,
        .iconID = white_herb_NCGR,
        .paletteID = white_herb_NCLR,
        .gen3ID = GBA_ITEM_WHITE_HERB,
    },
    [ITEM_MACHO_BRACE] = {
        .dataID = 0xC1,
        .iconID = macho_brace_NCGR,
        .paletteID = macho_brace_NCLR,
        .gen3ID = GBA_ITEM_MACHO_BRACE,
    },
    [ITEM_EXP_SHARE] = {
        .dataID = 0xC2,
        .iconID = exp_share_NCGR,
        .paletteID = exp_share_NCLR,
        .gen3ID = GBA_ITEM_EXP_SHARE,
    },
    [ITEM_QUICK_CLAW] = {
        .dataID = 0xC3,
        .iconID = quick_claw_NCGR,
        .paletteID = quick_claw_NCLR,
        .gen3ID = GBA_ITEM_QUICK_CLAW,
    },
    [ITEM_SOOTHE_BELL] = {
        .dataID = 0xC4,
        .iconID = soothe_bell_NCGR,
        .paletteID = soothe_bell_NCLR,
        .gen3ID = GBA_ITEM_SOOTHE_BELL,
    },
    [ITEM_MENTAL_HERB] = {
        .dataID = 0xC5,
        .iconID = white_herb_NCGR,
        .paletteID = mental_herb_NCLR,
        .gen3ID = GBA_ITEM_MENTAL_HERB,
    },
    [ITEM_CHOICE_BAND] = {
        .dataID = 0xC6,
        .iconID = choice_band_NCGR,
        .paletteID = choice_band_NCLR,
        .gen3ID = GBA_ITEM_CHOICE_BAND,
    },
    [ITEM_KINGS_ROCK] = {
        .dataID = 0xC7,
        .iconID = kings_rock_NCGR,
        .paletteID = kings_rock_NCLR,
        .gen3ID = GBA_ITEM_KINGS_ROCK,
    },
    [ITEM_SILVERPOWDER] = {
        .dataID = 0xC8,
        .iconID = silverpowder_NCGR,
        .paletteID = silverpowder_NCLR,
        .gen3ID = GBA_ITEM_SILVER_POWDER,
    },
    [ITEM_AMULET_COIN] = {
        .dataID = 0xC9,
        .iconID = amulet_coin_NCGR,
        .paletteID = amulet_coin_NCLR,
        .gen3ID = GBA_ITEM_AMULET_COIN,
    },
    [ITEM_CLEANSE_TAG] = {
        .dataID = 0xCA,
        .iconID = cleanse_tag_NCGR,
        .paletteID = cleanse_tag_NCLR,
        .gen3ID = GBA_ITEM_CLEANSE_TAG,
    },
    [ITEM_SOUL_DEW] = {
        .dataID = 0xCB,
        .iconID = soul_dew_NCGR,
        .paletteID = soul_dew_NCLR,
        .gen3ID = GBA_ITEM_SOUL_DEW,
    },
    [ITEM_DEEPSEATOOTH] = {
        .dataID = 0xCC,
        .iconID = deepseatooth_NCGR,
        .paletteID = deepseatooth_NCLR,
        .gen3ID = GBA_ITEM_DEEP_SEA_TOOTH,
    },
    [ITEM_DEEPSEASCALE] = {
        .dataID = 0xCD,
        .iconID = deepseascale_NCGR,
        .paletteID = deepseascale_NCLR,
        .gen3ID = GBA_ITEM_DEEP_SEA_SCALE,
    },
    [ITEM_SMOKE_BALL] = {
        .dataID = 0xCE,
        .iconID = smoke_ball_NCGR,
        .paletteID = smoke_ball_NCLR,
        .gen3ID = GBA_ITEM_SMOKE_BALL,
    },
    [ITEM_EVERSTONE] = {
        .dataID = 0xCF,
        .iconID = everstone_NCGR,
        .paletteID = everstone_NCLR,
        .gen3ID = GBA_ITEM_EVERSTONE,
    },
    [ITEM_FOCUS_BAND] = {
        .dataID = 0xD0,
        .iconID = focus_band_NCGR,
        .paletteID = focus_band_NCLR,
        .gen3ID = GBA_ITEM_FOCUS_BAND,
    },
    [ITEM_LUCKY_EGG] = {
        .dataID = 0xD1,
        .iconID = lucky_egg_NCGR,
        .paletteID = lucky_egg_NCLR,
        .gen3ID = GBA_ITEM_LUCKY_EGG,
    },
    [ITEM_SCOPE_LENS] = {
        .dataID = 0xD2,
        .iconID = scope_lens_NCGR,
        .paletteID = scope_lens_NCLR,
        .gen3ID = GBA_ITEM_SCOPE_LENS,
    },
    [ITEM_METAL_COAT] = {
        .dataID = 0xD3,
        .iconID = metal_coat_NCGR,
        .paletteID = metal_coat_NCLR,
        .gen3ID = GBA_ITEM_METAL_COAT,
    },
    [ITEM_LEFTOVERS] = {
        .dataID = 0xD4,
        .iconID = leftovers_NCGR,
        .paletteID = leftovers_NCLR,
        .gen3ID = GBA_ITEM_LEFTOVERS,
    },
    [ITEM_DRAGON_SCALE] = {
        .dataID = 0xD5,
        .iconID = dragon_scale_NCGR,
        .paletteID = dragon_scale_NCLR,
        .gen3ID = GBA_ITEM_DRAGON_SCALE,
    },
    [ITEM_LIGHT_BALL] = {
        .dataID = 0xD6,
        .iconID = light_ball_NCGR,
        .paletteID = light_ball_NCLR,
        .gen3ID = GBA_ITEM_LIGHT_BALL,
    },
    [ITEM_SOFT_SAND] = {
        .dataID = 0xD7,
        .iconID = soft_sand_NCGR,
        .paletteID = soft_sand_NCLR,
        .gen3ID = GBA_ITEM_SOFT_SAND,
    },
    [ITEM_HARD_STONE] = {
        .dataID = 0xD8,
        .iconID = hard_stone_NCGR,
        .paletteID = hard_stone_NCLR,
        .gen3ID = GBA_ITEM_HARD_STONE,
    },
    [ITEM_MIRACLE_SEED] = {
        .dataID = 0xD9,
        .iconID = miracle_seed_NCGR,
        .paletteID = miracle_seed_NCLR,
        .gen3ID = GBA_ITEM_MIRACLE_SEED,
    },
    [ITEM_BLACKGLASSES] = {
        .dataID = 0xDA,
        .iconID = blackglasses_NCGR,
        .paletteID = blackglasses_NCLR,
        .gen3ID = GBA_ITEM_BLACK_GLASSES,
    },
    [ITEM_BLACK_BELT] = {
        .dataID = 0xDB,
        .iconID = black_belt_NCGR,
        .paletteID = blackglasses_NCLR,
        .gen3ID = GBA_ITEM_BLACK_BELT,
    },
    [ITEM_MAGNET] = {
        .dataID = 0xDC,
        .iconID = magnet_NCGR,
        .paletteID = magnet_NCLR,
        .gen3ID = GBA_ITEM_MAGNET,
    },
    [ITEM_MYSTIC_WATER] = {
        .dataID = 0xDD,
        .iconID = mystic_water_NCGR,
        .paletteID = mystic_water_NCLR,
        .gen3ID = GBA_ITEM_MYSTIC_WATER,
    },
    [ITEM_SHARP_BEAK] = {
        .dataID = 0xDE,
        .iconID = sharp_beak_NCGR,
        .paletteID = sharp_beak_NCLR,
        .gen3ID = GBA_ITEM_SHARP_BEAK,
    },
    [ITEM_POISON_BARB] = {
        .dataID = 0xDF,
        .iconID = poison_barb_NCGR,
        .paletteID = poison_barb_NCLR,
        .gen3ID = GBA_ITEM_POISON_BARB,
    },
    [ITEM_NEVERMELTICE] = {
        .dataID = 0xE0,
        .iconID = nevermeltice_NCGR,
        .paletteID = nevermeltice_NCLR,
        .gen3ID = GBA_ITEM_NEVER_MELT_ICE,
    },
    [ITEM_SPELL_TAG] = {
        .dataID = 0xE1,
        .iconID = spell_tag_NCGR,
        .paletteID = spell_tag_NCLR,
        .gen3ID = GBA_ITEM_SPELL_TAG,
    },
    [ITEM_TWISTEDSPOON] = {
        .dataID = 0xE2,
        .iconID = twistedspoon_NCGR,
        .paletteID = twistedspoon_NCLR,
        .gen3ID = GBA_ITEM_TWISTED_SPOON,
    },
    [ITEM_CHARCOAL] = {
        .dataID = 0xE3,
        .iconID = charcoal_NCGR,
        .paletteID = charcoal_NCLR,
        .gen3ID = GBA_ITEM_CHARCOAL,
    },
    [ITEM_DRAGON_FANG] = {
        .dataID = 0xE4,
        .iconID = dragon_fang_NCGR,
        .paletteID = dragon_fang_NCLR,
        .gen3ID = GBA_ITEM_DRAGON_FANG,
    },
    [ITEM_SILK_SCARF] = {
        .dataID = 0xE5,
        .iconID = silk_scarf_NCGR,
        .paletteID = silk_scarf_NCLR,
        .gen3ID = GBA_ITEM_SILK_SCARF,
    },
    [ITEM_UPGRADE] = {
        .dataID = 0xE6,
        .iconID = upgrade_NCGR,
        .paletteID = upgrade_NCLR,
        .gen3ID = GBA_ITEM_UP_GRADE,
    },
    [ITEM_SHELL_BELL] = {
        .dataID = 0xE7,
        .iconID = shell_bell_NCGR,
        .paletteID = shoal_shell_NCLR,
        .gen3ID = GBA_ITEM_SHELL_BELL,
    },
    [ITEM_SEA_INCENSE] = {
        .dataID = 0xE8,
        .iconID = sea_incense_NCGR,
        .paletteID = sea_incense_NCLR,
        .gen3ID = GBA_ITEM_SEA_INCENSE,
    },
    [ITEM_LAX_INCENSE] = {
        .dataID = 0xE9,
        .iconID = lax_incense_NCGR,
        .paletteID = lax_incense_NCLR,
        .gen3ID = GBA_ITEM_LAX_INCENSE,
    },
    [ITEM_LUCKY_PUNCH] = {
        .dataID = 0xEA,
        .iconID = lucky_punch_NCGR,
        .paletteID = lucky_punch_NCLR,
        .gen3ID = GBA_ITEM_LUCKY_PUNCH,
    },
    [ITEM_METAL_POWDER] = {
        .dataID = 0xEB,
        .iconID = metal_powder_NCGR,
        .paletteID = metal_powder_NCLR,
        .gen3ID = GBA_ITEM_METAL_POWDER,
    },
    [ITEM_THICK_CLUB] = {
        .dataID = 0xEC,
        .iconID = rare_bone_NCGR,
        .paletteID = rare_bone_NCLR,
        .gen3ID = GBA_ITEM_THICK_CLUB,
    },
    [ITEM_STICK] = {
        .dataID = 0xED,
        .iconID = stick_NCGR,
        .paletteID = stick_NCLR,
        .gen3ID = GBA_ITEM_STICK,
    },
    [ITEM_RED_SCARF] = {
        .dataID = 0xEE,
        .iconID = red_scarf_NCGR,
        .paletteID = red_scarf_NCLR,
        .gen3ID = GBA_ITEM_RED_SCARF,
    },
    [ITEM_BLUE_SCARF] = {
        .dataID = 0xEF,
        .iconID = red_scarf_NCGR,
        .paletteID = blue_scarf_NCLR,
        .gen3ID = GBA_ITEM_BLUE_SCARF,
    },
    [ITEM_PINK_SCARF] = {
        .dataID = 0xF0,
        .iconID = red_scarf_NCGR,
        .paletteID = pink_scarf_NCLR,
        .gen3ID = GBA_ITEM_PINK_SCARF,
    },
    [ITEM_GREEN_SCARF] = {
        .dataID = 0xF1,
        .iconID = red_scarf_NCGR,
        .paletteID = green_scarf_NCLR,
        .gen3ID = GBA_ITEM_GREEN_SCARF,
    },
    [ITEM_YELLOW_SCARF] = {
        .dataID = 0xF2,
        .iconID = red_scarf_NCGR,
        .paletteID = yellow_scarf_NCLR,
        .gen3ID = GBA_ITEM_YELLOW_SCARF,
    },
    [ITEM_WIDE_LENS] = {
        .dataID = 0xF3,
        .iconID = wide_lens_NCGR,
        .paletteID = wide_lens_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_MUSCLE_BAND] = {
        .dataID = 0xF4,
        .iconID = muscle_band_NCGR,
        .paletteID = muscle_band_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_WISE_GLASSES] = {
        .dataID = 0xF5,
        .iconID = wise_glasses_NCGR,
        .paletteID = wise_glasses_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_EXPERT_BELT] = {
        .dataID = 0xF6,
        .iconID = expert_belt_NCGR,
        .paletteID = expert_belt_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_LIGHT_CLAY] = {
        .dataID = 0xF7,
        .iconID = light_clay_NCGR,
        .paletteID = light_clay_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_LIFE_ORB] = {
        .dataID = 0xF8,
        .iconID = life_orb_NCGR,
        .paletteID = life_orb_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_POWER_HERB] = {
        .dataID = 0xF9,
        .iconID = power_herb_NCGR,
        .paletteID = power_herb_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TOXIC_ORB] = {
        .dataID = 0xFA,
        .iconID = toxic_orb_NCGR,
        .paletteID = toxic_orb_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_FLAME_ORB] = {
        .dataID = 0xFB,
        .iconID = flame_orb_NCGR,
        .paletteID = flame_orb_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_QUICK_POWDER] = {
        .dataID = 0xFC,
        .iconID = metal_powder_NCGR,
        .paletteID = quick_powder_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_FOCUS_SASH] = {
        .dataID = 0xFD,
        .iconID = focus_sash_NCGR,
        .paletteID = focus_sash_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_ZOOM_LENS] = {
        .dataID = 0xFE,
        .iconID = zoom_lens_NCGR,
        .paletteID = zoom_lens_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_METRONOME] = {
        .dataID = 0xFF,
        .iconID = metronome_NCGR,
        .paletteID = metronome_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_IRON_BALL] = {
        .dataID = 0x100,
        .iconID = iron_ball_NCGR,
        .paletteID = iron_ball_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_LAGGING_TAIL] = {
        .dataID = 0x101,
        .iconID = lagging_tail_NCGR,
        .paletteID = lagging_tail_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_DESTINY_KNOT] = {
        .dataID = 0x102,
        .iconID = destiny_knot_NCGR,
        .paletteID = destiny_knot_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_BLACK_SLUDGE] = {
        .dataID = 0x103,
        .iconID = black_sludge_NCGR,
        .paletteID = black_sludge_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_ICY_ROCK] = {
        .dataID = 0x104,
        .iconID = icy_rock_NCGR,
        .paletteID = icy_rock_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_SMOOTH_ROCK] = {
        .dataID = 0x105,
        .iconID = smooth_rock_NCGR,
        .paletteID = smooth_rock_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_HEAT_ROCK] = {
        .dataID = 0x106,
        .iconID = heat_rock_NCGR,
        .paletteID = heat_rock_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_DAMP_ROCK] = {
        .dataID = 0x107,
        .iconID = damp_rock_NCGR,
        .paletteID = damp_rock_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_GRIP_CLAW] = {
        .dataID = 0x108,
        .iconID = grip_claw_NCGR,
        .paletteID = grip_claw_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_CHOICE_SCARF] = {
        .dataID = 0x109,
        .iconID = choice_scarf_NCGR,
        .paletteID = choice_scarf_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_STICKY_BARB] = {
        .dataID = 0x10A,
        .iconID = sticky_barb_NCGR,
        .paletteID = sticky_barb_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_POWER_BRACER] = {
        .dataID = 0x10B,
        .iconID = power_bracer_NCGR,
        .paletteID = power_bracer_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_POWER_BELT] = {
        .dataID = 0x10C,
        .iconID = power_belt_NCGR,
        .paletteID = power_belt_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_POWER_LENS] = {
        .dataID = 0x10D,
        .iconID = power_lens_NCGR,
        .paletteID = power_lens_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_POWER_BAND] = {
        .dataID = 0x10E,
        .iconID = power_band_NCGR,
        .paletteID = power_band_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_POWER_ANKLET] = {
        .dataID = 0x10F,
        .iconID = power_anklet_NCGR,
        .paletteID = power_anklet_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_POWER_WEIGHT] = {
        .dataID = 0x110,
        .iconID = power_weight_NCGR,
        .paletteID = power_weight_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_SHED_SHELL] = {
        .dataID = 0x111,
        .iconID = shed_shell_NCGR,
        .paletteID = shed_shell_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_BIG_ROOT] = {
        .dataID = 0x112,
        .iconID = big_root_NCGR,
        .paletteID = big_root_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_CHOICE_SPECS] = {
        .dataID = 0x113,
        .iconID = choice_specs_NCGR,
        .paletteID = choice_specs_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_FLAME_PLATE] = {
        .dataID = 0x114,
        .iconID = flame_plate_NCGR,
        .paletteID = flame_plate_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_SPLASH_PLATE] = {
        .dataID = 0x115,
        .iconID = flame_plate_NCGR,
        .paletteID = splash_plate_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_ZAP_PLATE] = {
        .dataID = 0x116,
        .iconID = flame_plate_NCGR,
        .paletteID = zap_plate_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_MEADOW_PLATE] = {
        .dataID = 0x117,
        .iconID = flame_plate_NCGR,
        .paletteID = meadow_plate_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_ICICLE_PLATE] = {
        .dataID = 0x118,
        .iconID = flame_plate_NCGR,
        .paletteID = icicle_plate_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_FIST_PLATE] = {
        .dataID = 0x119,
        .iconID = flame_plate_NCGR,
        .paletteID = fist_plate_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TOXIC_PLATE] = {
        .dataID = 0x11A,
        .iconID = flame_plate_NCGR,
        .paletteID = toxic_plate_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_EARTH_PLATE] = {
        .dataID = 0x11B,
        .iconID = flame_plate_NCGR,
        .paletteID = earth_plate_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_SKY_PLATE] = {
        .dataID = 0x11C,
        .iconID = flame_plate_NCGR,
        .paletteID = sky_plate_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_MIND_PLATE] = {
        .dataID = 0x11D,
        .iconID = flame_plate_NCGR,
        .paletteID = mind_plate_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_INSECT_PLATE] = {
        .dataID = 0x11E,
        .iconID = flame_plate_NCGR,
        .paletteID = insect_plate_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_STONE_PLATE] = {
        .dataID = 0x11F,
        .iconID = flame_plate_NCGR,
        .paletteID = stone_plate_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_SPOOKY_PLATE] = {
        .dataID = 0x120,
        .iconID = flame_plate_NCGR,
        .paletteID = spooky_plate_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_DRACO_PLATE] = {
        .dataID = 0x121,
        .iconID = flame_plate_NCGR,
        .paletteID = draco_plate_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_DREAD_PLATE] = {
        .dataID = 0x122,
        .iconID = flame_plate_NCGR,
        .paletteID = dread_plate_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_IRON_PLATE] = {
        .dataID = 0x123,
        .iconID = flame_plate_NCGR,
        .paletteID = iron_plate_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_ODD_INCENSE] = {
        .dataID = 0x124,
        .iconID = odd_incense_NCGR,
        .paletteID = odd_incense_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_ROCK_INCENSE] = {
        .dataID = 0x125,
        .iconID = rock_incense_NCGR,
        .paletteID = rock_incense_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_FULL_INCENSE] = {
        .dataID = 0x126,
        .iconID = full_incense_NCGR,
        .paletteID = full_incense_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_WAVE_INCENSE] = {
        .dataID = 0x127,
        .iconID = wave_incense_NCGR,
        .paletteID = wave_incense_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_ROSE_INCENSE] = {
        .dataID = 0x128,
        .iconID = rose_incense_NCGR,
        .paletteID = rose_incense_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_LUCK_INCENSE] = {
        .dataID = 0x129,
        .iconID = luck_incense_NCGR,
        .paletteID = luck_incense_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_PURE_INCENSE] = {
        .dataID = 0x12A,
        .iconID = pure_incense_NCGR,
        .paletteID = pure_incense_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_PROTECTOR] = {
        .dataID = 0x12B,
        .iconID = protector_NCGR,
        .paletteID = protector_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_ELECTIRIZER] = {
        .dataID = 0x12C,
        .iconID = electirizer_NCGR,
        .paletteID = electirizer_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_MAGMARIZER] = {
        .dataID = 0x12D,
        .iconID = magmarizer_NCGR,
        .paletteID = magmarizer_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_DUBIOUS_DISC] = {
        .dataID = 0x12E,
        .iconID = dubious_disc_NCGR,
        .paletteID = dubious_disc_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_REAPER_CLOTH] = {
        .dataID = 0x12F,
        .iconID = reaper_cloth_NCGR,
        .paletteID = reaper_cloth_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_RAZOR_CLAW] = {
        .dataID = 0x130,
        .iconID = razor_claw_NCGR,
        .paletteID = razor_claw_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_RAZOR_FANG] = {
        .dataID = 0x131,
        .iconID = razor_fang_NCGR,
        .paletteID = razor_fang_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM01] = {
        .dataID = 0x132,
        .iconID = tm_NCGR,
        .paletteID = tm_fighting_NCLR,
        .gen3ID = GBA_ITEM_TM01,
    },
    [ITEM_TM02] = {
        .dataID = 0x133,
        .iconID = tm_NCGR,
        .paletteID = tm_dragon_NCLR,
        .gen3ID = GBA_ITEM_TM02,
    },
    [ITEM_TM03] = {
        .dataID = 0x134,
        .iconID = tm_NCGR,
        .paletteID = tm_water_NCLR,
        .gen3ID = GBA_ITEM_TM03,
    },
    [ITEM_TM04] = {
        .dataID = 0x135,
        .iconID = tm_NCGR,
        .paletteID = tm_psychic_NCLR,
        .gen3ID = GBA_ITEM_TM04,
    },
    [ITEM_TM05] = {
        .dataID = 0x136,
        .iconID = tm_NCGR,
        .paletteID = tm_normal_NCLR,
        .gen3ID = GBA_ITEM_TM05,
    },
    [ITEM_TM06] = {
        .dataID = 0x137,
        .iconID = tm_NCGR,
        .paletteID = tm_poison_NCLR,
        .gen3ID = GBA_ITEM_TM06,
    },
    [ITEM_TM07] = {
        .dataID = 0x138,
        .iconID = tm_NCGR,
        .paletteID = tm_ice_NCLR,
        .gen3ID = GBA_ITEM_TM07,
    },
    [ITEM_TM08] = {
        .dataID = 0x139,
        .iconID = tm_NCGR,
        .paletteID = tm_fighting_NCLR,
        .gen3ID = GBA_ITEM_TM08,
    },
    [ITEM_TM09] = {
        .dataID = 0x13A,
        .iconID = tm_NCGR,
        .paletteID = tm_grass_NCLR,
        .gen3ID = GBA_ITEM_TM09,
    },
    [ITEM_TM10] = {
        .dataID = 0x13B,
        .iconID = tm_NCGR,
        .paletteID = tm_normal_NCLR,
        .gen3ID = GBA_ITEM_TM10,
    },
    [ITEM_TM11] = {
        .dataID = 0x13C,
        .iconID = tm_NCGR,
        .paletteID = tm_fire_NCLR,
        .gen3ID = GBA_ITEM_TM11,
    },
    [ITEM_TM12] = {
        .dataID = 0x13D,
        .iconID = tm_NCGR,
        .paletteID = tm_dark_NCLR,
        .gen3ID = GBA_ITEM_TM12,
    },
    [ITEM_TM13] = {
        .dataID = 0x13E,
        .iconID = tm_NCGR,
        .paletteID = tm_ice_NCLR,
        .gen3ID = GBA_ITEM_TM13,
    },
    [ITEM_TM14] = {
        .dataID = 0x13F,
        .iconID = tm_NCGR,
        .paletteID = tm_ice_NCLR,
        .gen3ID = GBA_ITEM_TM14,
    },
    [ITEM_TM15] = {
        .dataID = 0x140,
        .iconID = tm_NCGR,
        .paletteID = tm_normal_NCLR,
        .gen3ID = GBA_ITEM_TM15,
    },
    [ITEM_TM16] = {
        .dataID = 0x141,
        .iconID = tm_NCGR,
        .paletteID = tm_psychic_NCLR,
        .gen3ID = GBA_ITEM_TM16,
    },
    [ITEM_TM17] = {
        .dataID = 0x142,
        .iconID = tm_NCGR,
        .paletteID = tm_normal_NCLR,
        .gen3ID = GBA_ITEM_TM17,
    },
    [ITEM_TM18] = {
        .dataID = 0x143,
        .iconID = tm_NCGR,
        .paletteID = tm_water_NCLR,
        .gen3ID = GBA_ITEM_TM18,
    },
    [ITEM_TM19] = {
        .dataID = 0x144,
        .iconID = tm_NCGR,
        .paletteID = tm_grass_NCLR,
        .gen3ID = GBA_ITEM_TM19,
    },
    [ITEM_TM20] = {
        .dataID = 0x145,
        .iconID = tm_NCGR,
        .paletteID = tm_normal_NCLR,
        .gen3ID = GBA_ITEM_TM20,
    },
    [ITEM_TM21] = {
        .dataID = 0x146,
        .iconID = tm_NCGR,
        .paletteID = tm_normal_NCLR,
        .gen3ID = GBA_ITEM_TM21,
    },
    [ITEM_TM22] = {
        .dataID = 0x147,
        .iconID = tm_NCGR,
        .paletteID = tm_grass_NCLR,
        .gen3ID = GBA_ITEM_TM22,
    },
    [ITEM_TM23] = {
        .dataID = 0x148,
        .iconID = tm_NCGR,
        .paletteID = tm_steel_NCLR,
        .gen3ID = GBA_ITEM_TM23,
    },
    [ITEM_TM24] = {
        .dataID = 0x149,
        .iconID = tm_NCGR,
        .paletteID = tm_electric_NCLR,
        .gen3ID = GBA_ITEM_TM24,
    },
    [ITEM_TM25] = {
        .dataID = 0x14A,
        .iconID = tm_NCGR,
        .paletteID = tm_electric_NCLR,
        .gen3ID = GBA_ITEM_TM25,
    },
    [ITEM_TM26] = {
        .dataID = 0x14B,
        .iconID = tm_NCGR,
        .paletteID = tm_ground_NCLR,
        .gen3ID = GBA_ITEM_TM26,
    },
    [ITEM_TM27] = {
        .dataID = 0x14C,
        .iconID = tm_NCGR,
        .paletteID = tm_normal_NCLR,
        .gen3ID = GBA_ITEM_TM27,
    },
    [ITEM_TM28] = {
        .dataID = 0x14D,
        .iconID = tm_NCGR,
        .paletteID = tm_ground_NCLR,
        .gen3ID = GBA_ITEM_TM28,
    },
    [ITEM_TM29] = {
        .dataID = 0x14E,
        .iconID = tm_NCGR,
        .paletteID = tm_psychic_NCLR,
        .gen3ID = GBA_ITEM_TM29,
    },
    [ITEM_TM30] = {
        .dataID = 0x14F,
        .iconID = tm_NCGR,
        .paletteID = tm_ghost_NCLR,
        .gen3ID = GBA_ITEM_TM30,
    },
    [ITEM_TM31] = {
        .dataID = 0x150,
        .iconID = tm_NCGR,
        .paletteID = tm_fighting_NCLR,
        .gen3ID = GBA_ITEM_TM31,
    },
    [ITEM_TM32] = {
        .dataID = 0x151,
        .iconID = tm_NCGR,
        .paletteID = tm_normal_NCLR,
        .gen3ID = GBA_ITEM_TM32,
    },
    [ITEM_TM33] = {
        .dataID = 0x152,
        .iconID = tm_NCGR,
        .paletteID = tm_psychic_NCLR,
        .gen3ID = GBA_ITEM_TM33,
    },
    [ITEM_TM34] = {
        .dataID = 0x153,
        .iconID = tm_NCGR,
        .paletteID = tm_electric_NCLR,
        .gen3ID = GBA_ITEM_TM34,
    },
    [ITEM_TM35] = {
        .dataID = 0x154,
        .iconID = tm_NCGR,
        .paletteID = tm_fire_NCLR,
        .gen3ID = GBA_ITEM_TM35,
    },
    [ITEM_TM36] = {
        .dataID = 0x155,
        .iconID = tm_NCGR,
        .paletteID = tm_poison_NCLR,
        .gen3ID = GBA_ITEM_TM36,
    },
    [ITEM_TM37] = {
        .dataID = 0x156,
        .iconID = tm_NCGR,
        .paletteID = tm_rock_NCLR,
        .gen3ID = GBA_ITEM_TM37,
    },
    [ITEM_TM38] = {
        .dataID = 0x157,
        .iconID = tm_NCGR,
        .paletteID = tm_fire_NCLR,
        .gen3ID = GBA_ITEM_TM38,
    },
    [ITEM_TM39] = {
        .dataID = 0x158,
        .iconID = tm_NCGR,
        .paletteID = tm_rock_NCLR,
        .gen3ID = GBA_ITEM_TM39,
    },
    [ITEM_TM40] = {
        .dataID = 0x159,
        .iconID = tm_NCGR,
        .paletteID = tm_flying_NCLR,
        .gen3ID = GBA_ITEM_TM40,
    },
    [ITEM_TM41] = {
        .dataID = 0x15A,
        .iconID = tm_NCGR,
        .paletteID = tm_dark_NCLR,
        .gen3ID = GBA_ITEM_TM41,
    },
    [ITEM_TM42] = {
        .dataID = 0x15B,
        .iconID = tm_NCGR,
        .paletteID = tm_normal_NCLR,
        .gen3ID = GBA_ITEM_TM42,
    },
    [ITEM_TM43] = {
        .dataID = 0x15C,
        .iconID = tm_NCGR,
        .paletteID = tm_normal_NCLR,
        .gen3ID = GBA_ITEM_TM43,
    },
    [ITEM_TM44] = {
        .dataID = 0x15D,
        .iconID = tm_NCGR,
        .paletteID = tm_psychic_NCLR,
        .gen3ID = GBA_ITEM_TM44,
    },
    [ITEM_TM45] = {
        .dataID = 0x15E,
        .iconID = tm_NCGR,
        .paletteID = tm_normal_NCLR,
        .gen3ID = GBA_ITEM_TM45,
    },
    [ITEM_TM46] = {
        .dataID = 0x15F,
        .iconID = tm_NCGR,
        .paletteID = tm_dark_NCLR,
        .gen3ID = GBA_ITEM_TM46,
    },
    [ITEM_TM47] = {
        .dataID = 0x160,
        .iconID = tm_NCGR,
        .paletteID = tm_steel_NCLR,
        .gen3ID = GBA_ITEM_TM47,
    },
    [ITEM_TM48] = {
        .dataID = 0x161,
        .iconID = tm_NCGR,
        .paletteID = tm_psychic_NCLR,
        .gen3ID = GBA_ITEM_TM48,
    },
    [ITEM_TM49] = {
        .dataID = 0x162,
        .iconID = tm_NCGR,
        .paletteID = tm_dark_NCLR,
        .gen3ID = GBA_ITEM_TM49,
    },
    [ITEM_TM50] = {
        .dataID = 0x163,
        .iconID = tm_NCGR,
        .paletteID = tm_fire_NCLR,
        .gen3ID = GBA_ITEM_TM50,
    },
    [ITEM_TM51] = {
        .dataID = 0x164,
        .iconID = tm_NCGR,
        .paletteID = tm_flying_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM52] = {
        .dataID = 0x165,
        .iconID = tm_NCGR,
        .paletteID = tm_fighting_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM53] = {
        .dataID = 0x166,
        .iconID = tm_NCGR,
        .paletteID = tm_grass_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM54] = {
        .dataID = 0x167,
        .iconID = tm_NCGR,
        .paletteID = tm_normal_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM55] = {
        .dataID = 0x168,
        .iconID = tm_NCGR,
        .paletteID = tm_water_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM56] = {
        .dataID = 0x169,
        .iconID = tm_NCGR,
        .paletteID = tm_dark_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM57] = {
        .dataID = 0x16A,
        .iconID = tm_NCGR,
        .paletteID = tm_electric_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM58] = {
        .dataID = 0x16B,
        .iconID = tm_NCGR,
        .paletteID = tm_normal_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM59] = {
        .dataID = 0x16C,
        .iconID = tm_NCGR,
        .paletteID = tm_dragon_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM60] = {
        .dataID = 0x16D,
        .iconID = tm_NCGR,
        .paletteID = tm_fighting_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM61] = {
        .dataID = 0x16E,
        .iconID = tm_NCGR,
        .paletteID = tm_fire_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM62] = {
        .dataID = 0x16F,
        .iconID = tm_NCGR,
        .paletteID = tm_bug_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM63] = {
        .dataID = 0x170,
        .iconID = tm_NCGR,
        .paletteID = tm_dark_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM64] = {
        .dataID = 0x171,
        .iconID = tm_NCGR,
        .paletteID = tm_normal_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM65] = {
        .dataID = 0x172,
        .iconID = tm_NCGR,
        .paletteID = tm_ghost_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM66] = {
        .dataID = 0x173,
        .iconID = tm_NCGR,
        .paletteID = tm_dark_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM67] = {
        .dataID = 0x174,
        .iconID = tm_NCGR,
        .paletteID = tm_normal_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM68] = {
        .dataID = 0x175,
        .iconID = tm_NCGR,
        .paletteID = tm_normal_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM69] = {
        .dataID = 0x176,
        .iconID = tm_NCGR,
        .paletteID = tm_rock_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM70] = {
        .dataID = 0x177,
        .iconID = tm_NCGR,
        .paletteID = tm_normal_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM71] = {
        .dataID = 0x178,
        .iconID = tm_NCGR,
        .paletteID = tm_rock_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM72] = {
        .dataID = 0x179,
        .iconID = tm_NCGR,
        .paletteID = tm_ice_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM73] = {
        .dataID = 0x17A,
        .iconID = tm_NCGR,
        .paletteID = tm_electric_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM74] = {
        .dataID = 0x17B,
        .iconID = tm_NCGR,
        .paletteID = tm_steel_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM75] = {
        .dataID = 0x17C,
        .iconID = tm_NCGR,
        .paletteID = tm_normal_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM76] = {
        .dataID = 0x17D,
        .iconID = tm_NCGR,
        .paletteID = tm_rock_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM77] = {
        .dataID = 0x17E,
        .iconID = tm_NCGR,
        .paletteID = tm_normal_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM78] = {
        .dataID = 0x17F,
        .iconID = tm_NCGR,
        .paletteID = tm_normal_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM79] = {
        .dataID = 0x180,
        .iconID = tm_NCGR,
        .paletteID = tm_dark_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM80] = {
        .dataID = 0x181,
        .iconID = tm_NCGR,
        .paletteID = tm_rock_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM81] = {
        .dataID = 0x182,
        .iconID = tm_NCGR,
        .paletteID = tm_bug_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM82] = {
        .dataID = 0x183,
        .iconID = tm_NCGR,
        .paletteID = tm_normal_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM83] = {
        .dataID = 0x184,
        .iconID = tm_NCGR,
        .paletteID = tm_normal_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM84] = {
        .dataID = 0x185,
        .iconID = tm_NCGR,
        .paletteID = tm_poison_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM85] = {
        .dataID = 0x186,
        .iconID = tm_NCGR,
        .paletteID = tm_psychic_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM86] = {
        .dataID = 0x187,
        .iconID = tm_NCGR,
        .paletteID = tm_grass_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM87] = {
        .dataID = 0x188,
        .iconID = tm_NCGR,
        .paletteID = tm_normal_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM88] = {
        .dataID = 0x189,
        .iconID = tm_NCGR,
        .paletteID = tm_flying_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM89] = {
        .dataID = 0x18A,
        .iconID = tm_NCGR,
        .paletteID = tm_bug_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM90] = {
        .dataID = 0x18B,
        .iconID = tm_NCGR,
        .paletteID = tm_normal_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM91] = {
        .dataID = 0x18C,
        .iconID = tm_NCGR,
        .paletteID = tm_steel_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TM92] = {
        .dataID = 0x18D,
        .iconID = tm_NCGR,
        .paletteID = tm_psychic_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_HM01] = {
        .dataID = 0x18E,
        .iconID = hm_NCGR,
        .paletteID = tm_normal_NCLR,
        .gen3ID = GBA_ITEM_HM01,
    },
    [ITEM_HM02] = {
        .dataID = 0x18F,
        .iconID = hm_NCGR,
        .paletteID = tm_flying_NCLR,
        .gen3ID = GBA_ITEM_HM02,
    },
    [ITEM_HM03] = {
        .dataID = 0x190,
        .iconID = hm_NCGR,
        .paletteID = tm_water_NCLR,
        .gen3ID = GBA_ITEM_HM03,
    },
    [ITEM_HM04] = {
        .dataID = 0x191,
        .iconID = hm_NCGR,
        .paletteID = tm_normal_NCLR,
        .gen3ID = GBA_ITEM_HM04,
    },
    [ITEM_HM05] = {
        .dataID = 0x192,
        .iconID = hm_NCGR,
        .paletteID = tm_water_NCLR, // BUG: Defog is a flying type move, and thus this should be tm_flying_NCLR.
        .gen3ID = GBA_ITEM_HM05,
    },
    [ITEM_HM06] = {
        .dataID = 0x193,
        .iconID = hm_NCGR,
        .paletteID = tm_fighting_NCLR,
        .gen3ID = GBA_ITEM_HM06,
    },
    [ITEM_HM07] = {
        .dataID = 0x194,
        .iconID = hm_NCGR,
        .paletteID = tm_water_NCLR,
        .gen3ID = GBA_ITEM_HM07,
    },
    [ITEM_HM08] = {
        .dataID = 0x195,
        .iconID = hm_NCGR,
        .paletteID = tm_normal_NCLR,
        .gen3ID = GBA_ITEM_HM08,
    },
    [ITEM_EXPLORER_KIT] = {
        .dataID = 0x196,
        .iconID = explorer_kit_NCGR,
        .paletteID = explorer_kit_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_LOOT_SACK] = {
        .dataID = 0x197,
        .iconID = loot_sack_NCGR,
        .paletteID = loot_sack_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_RULE_BOOK] = {
        .dataID = 0x198,
        .iconID = rule_book_NCGR,
        .paletteID = rule_book_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_POKE_RADAR] = {
        .dataID = 0x199,
        .iconID = poke_radar_NCGR,
        .paletteID = poke_radar_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_POINT_CARD] = {
        .dataID = 0x19A,
        .iconID = point_card_NCGR,
        .paletteID = point_card_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_JOURNAL] = {
        .dataID = 0x19B,
        .iconID = journal_NCGR,
        .paletteID = journal_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_SEAL_CASE] = {
        .dataID = 0x19C,
        .iconID = seal_case_NCGR,
        .paletteID = seal_case_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_FASHION_CASE] = {
        .dataID = 0x19D,
        .iconID = fashion_case_NCGR,
        .paletteID = fashion_case_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_SEAL_BAG] = {
        .dataID = 0x19E,
        .iconID = seal_bag_NCGR,
        .paletteID = seal_bag_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_PAL_PAD] = {
        .dataID = 0x19F,
        .iconID = pal_pad_NCGR,
        .paletteID = pal_pad_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_WORKS_KEY] = {
        .dataID = 0x1A0,
        .iconID = works_key_NCGR,
        .paletteID = works_key_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_OLD_CHARM] = {
        .dataID = 0x1A1,
        .iconID = old_charm_NCGR,
        .paletteID = old_charm_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_GALACTIC_KEY] = {
        .dataID = 0x1A2,
        .iconID = galactic_key_NCGR,
        .paletteID = galactic_key_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_RED_CHAIN] = {
        .dataID = 0x1A3,
        .iconID = red_chain_NCGR,
        .paletteID = red_chain_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_TOWN_MAP] = {
        .dataID = 0x1A4,
        .iconID = town_map_NCGR,
        .paletteID = town_map_NCLR,
        .gen3ID = GBA_ITEM_TOWN_MAP,
    },
    [ITEM_VS_SEEKER] = {
        .dataID = 0x1A5,
        .iconID = vs_seeker_NCGR,
        .paletteID = vs_seeker_NCLR,
        .gen3ID = GBA_ITEM_VS_SEEKER,
    },
    [ITEM_COIN_CASE] = {
        .dataID = 0x1A6,
        .iconID = coin_case_NCGR,
        .paletteID = coin_case_NCLR,
        .gen3ID = GBA_ITEM_COIN_CASE,
    },
    [ITEM_OLD_ROD] = {
        .dataID = 0x1A7,
        .iconID = old_rod_NCGR,
        .paletteID = old_rod_NCLR,
        .gen3ID = GBA_ITEM_OLD_ROD,
    },
    [ITEM_GOOD_ROD] = {
        .dataID = 0x1A8,
        .iconID = good_rod_NCGR,
        .paletteID = good_rod_NCLR,
        .gen3ID = GBA_ITEM_GOOD_ROD,
    },
    [ITEM_SUPER_ROD] = {
        .dataID = 0x1A9,
        .iconID = super_rod_NCGR,
        .paletteID = super_rod_NCLR,
        .gen3ID = GBA_ITEM_SUPER_ROD,
    },
    [ITEM_SPRAYDUCK] = {
        .dataID = 0x1AA,
        .iconID = sprayduck_NCGR,
        .paletteID = sprayduck_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_POFFIN_CASE] = {
        .dataID = 0x1AB,
        .iconID = poffin_case_NCGR,
        .paletteID = poffin_case_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_BICYCLE] = {
        .dataID = 0x1AC,
        .iconID = bicycle_NCGR,
        .paletteID = bicycle_NCLR,
        .gen3ID = GBA_ITEM_BICYCLE,
    },
    [ITEM_SUITE_KEY] = {
        .dataID = 0x1AD,
        .iconID = suite_key_NCGR,
        .paletteID = suite_key_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_OAKS_LETTER] = {
        .dataID = 0x1AE,
        .iconID = oaks_letter_NCGR,
        .paletteID = lava_cookie_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_LUNAR_WING] = {
        .dataID = 0x1AF,
        .iconID = lunar_wing_NCGR,
        .paletteID = lunar_wing_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_MEMBER_CARD] = {
        .dataID = 0x1B0,
        .iconID = member_card_NCGR,
        .paletteID = member_card_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_AZURE_FLUTE] = {
        .dataID = 0x1B1,
        .iconID = azure_flute_NCGR,
        .paletteID = azure_flute_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_S_S_TICKET] = {
        .dataID = 0x1B2,
        .iconID = s_s_ticket_NCGR,
        .paletteID = s_s_ticket_NCLR,
        .gen3ID = GBA_ITEM_SS_TICKET,
    },
    [ITEM_CONTEST_PASS] = {
        .dataID = 0x1B3,
        .iconID = contest_pass_NCGR,
        .paletteID = contest_pass_NCLR,
        .gen3ID = GBA_ITEM_CONTEST_PASS,
    },
    [ITEM_MAGMA_STONE] = {
        .dataID = 0x1B4,
        .iconID = magma_stone_NCGR,
        .paletteID = magma_stone_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_PARCEL] = {
        .dataID = 0x1B5,
        .iconID = parcel_NCGR,
        .paletteID = parcel_NCLR,
        .gen3ID = GBA_ITEM_OAKS_PARCEL,
    },
    [ITEM_COUPON_1] = {
        .dataID = 0x1B6,
        .iconID = coupon_1_NCGR,
        .paletteID = coupon_1_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_COUPON_2] = {
        .dataID = 0x1B7,
        .iconID = coupon_2_NCGR,
        .paletteID = coupon_2_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_COUPON_3] = {
        .dataID = 0x1B8,
        .iconID = coupon_3_NCGR,
        .paletteID = coupon_3_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_STORAGE_KEY] = {
        .dataID = 0x1B9,
        .iconID = storage_key_NCGR,
        .paletteID = storage_key_NCLR,
        .gen3ID = GBA_ITEM_STORAGE_KEY,
    },
    [ITEM_SECRETPOTION] = {
        .dataID = 0x1BA,
        .iconID = secretpotion_NCGR,
        .paletteID = secretpotion_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_VS_RECORDER] = {
        .dataID = 0x1BB,
        .iconID = vs_recorder_NCGR,
        .paletteID = vs_recorder_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_GRACIDEA] = {
        .dataID = 0x1BC,
        .iconID = gracidea_NCGR,
        .paletteID = gracidea_NCLR,
        .gen3ID = GBA_ITEM_NONE,
    },
    [ITEM_SECRET_KEY] = {
        .dataID = 0x1BD,
        .iconID = secret_key_NCGR,
        .paletteID = secret_key_NCLR,
        .gen3ID = GBA_ITEM_SECRET_KEY,
    },
};

static const u16 sTMHMMoves[] = {
    [TMHM_ID(TM01)] = MOVE_FOCUS_PUNCH,
    [TMHM_ID(TM02)] = MOVE_DRAGON_CLAW,
    [TMHM_ID(TM03)] = MOVE_WATER_PULSE,
    [TMHM_ID(TM04)] = MOVE_CALM_MIND,
    [TMHM_ID(TM05)] = MOVE_ROAR,
    [TMHM_ID(TM06)] = MOVE_TOXIC,
    [TMHM_ID(TM07)] = MOVE_HAIL,
    [TMHM_ID(TM08)] = MOVE_BULK_UP,
    [TMHM_ID(TM09)] = MOVE_BULLET_SEED,
    [TMHM_ID(TM10)] = MOVE_HIDDEN_POWER,
    [TMHM_ID(TM11)] = MOVE_SUNNY_DAY,
    [TMHM_ID(TM12)] = MOVE_TAUNT,
    [TMHM_ID(TM13)] = MOVE_ICE_BEAM,
    [TMHM_ID(TM14)] = MOVE_BLIZZARD,
    [TMHM_ID(TM15)] = MOVE_HYPER_BEAM,
    [TMHM_ID(TM16)] = MOVE_LIGHT_SCREEN,
    [TMHM_ID(TM17)] = MOVE_PROTECT,
    [TMHM_ID(TM18)] = MOVE_RAIN_DANCE,
    [TMHM_ID(TM19)] = MOVE_GIGA_DRAIN,
    [TMHM_ID(TM20)] = MOVE_SAFEGUARD,
    [TMHM_ID(TM21)] = MOVE_FRUSTRATION,
    [TMHM_ID(TM22)] = MOVE_SOLAR_BEAM,
    [TMHM_ID(TM23)] = MOVE_IRON_TAIL,
    [TMHM_ID(TM24)] = MOVE_THUNDERBOLT,
    [TMHM_ID(TM25)] = MOVE_THUNDER,
    [TMHM_ID(TM26)] = MOVE_EARTHQUAKE,
    [TMHM_ID(TM27)] = MOVE_RETURN,
    [TMHM_ID(TM28)] = MOVE_DIG,
    [TMHM_ID(TM29)] = MOVE_PSYCHIC,
    [TMHM_ID(TM30)] = MOVE_SHADOW_BALL,
    [TMHM_ID(TM31)] = MOVE_BRICK_BREAK,
    [TMHM_ID(TM32)] = MOVE_DOUBLE_TEAM,
    [TMHM_ID(TM33)] = MOVE_REFLECT,
    [TMHM_ID(TM34)] = MOVE_SHOCK_WAVE,
    [TMHM_ID(TM35)] = MOVE_FLAMETHROWER,
    [TMHM_ID(TM36)] = MOVE_SLUDGE_BOMB,
    [TMHM_ID(TM37)] = MOVE_SANDSTORM,
    [TMHM_ID(TM38)] = MOVE_FIRE_BLAST,
    [TMHM_ID(TM39)] = MOVE_ROCK_TOMB,
    [TMHM_ID(TM40)] = MOVE_AERIAL_ACE,
    [TMHM_ID(TM41)] = MOVE_TORMENT,
    [TMHM_ID(TM42)] = MOVE_FACADE,
    [TMHM_ID(TM43)] = MOVE_SECRET_POWER,
    [TMHM_ID(TM44)] = MOVE_REST,
    [TMHM_ID(TM45)] = MOVE_ATTRACT,
    [TMHM_ID(TM46)] = MOVE_THIEF,
    [TMHM_ID(TM47)] = MOVE_STEEL_WING,
    [TMHM_ID(TM48)] = MOVE_SKILL_SWAP,
    [TMHM_ID(TM49)] = MOVE_SNATCH,
    [TMHM_ID(TM50)] = MOVE_OVERHEAT,
    [TMHM_ID(TM51)] = MOVE_ROOST,
    [TMHM_ID(TM52)] = MOVE_FOCUS_BLAST,
    [TMHM_ID(TM53)] = MOVE_ENERGY_BALL,
    [TMHM_ID(TM54)] = MOVE_FALSE_SWIPE,
    [TMHM_ID(TM55)] = MOVE_BRINE,
    [TMHM_ID(TM56)] = MOVE_FLING,
    [TMHM_ID(TM57)] = MOVE_CHARGE_BEAM,
    [TMHM_ID(TM58)] = MOVE_ENDURE,
    [TMHM_ID(TM59)] = MOVE_DRAGON_PULSE,
    [TMHM_ID(TM60)] = MOVE_DRAIN_PUNCH,
    [TMHM_ID(TM61)] = MOVE_WILL_O_WISP,
    [TMHM_ID(TM62)] = MOVE_SILVER_WIND,
    [TMHM_ID(TM63)] = MOVE_EMBARGO,
    [TMHM_ID(TM64)] = MOVE_EXPLOSION,
    [TMHM_ID(TM65)] = MOVE_SHADOW_CLAW,
    [TMHM_ID(TM66)] = MOVE_PAYBACK,
    [TMHM_ID(TM67)] = MOVE_RECYCLE,
    [TMHM_ID(TM68)] = MOVE_GIGA_IMPACT,
    [TMHM_ID(TM69)] = MOVE_ROCK_POLISH,
    [TMHM_ID(TM70)] = MOVE_FLASH,
    [TMHM_ID(TM71)] = MOVE_STONE_EDGE,
    [TMHM_ID(TM72)] = MOVE_AVALANCHE,
    [TMHM_ID(TM73)] = MOVE_THUNDER_WAVE,
    [TMHM_ID(TM74)] = MOVE_GYRO_BALL,
    [TMHM_ID(TM75)] = MOVE_SWORDS_DANCE,
    [TMHM_ID(TM76)] = MOVE_STEALTH_ROCK,
    [TMHM_ID(TM77)] = MOVE_PSYCH_UP,
    [TMHM_ID(TM78)] = MOVE_CAPTIVATE,
    [TMHM_ID(TM79)] = MOVE_DARK_PULSE,
    [TMHM_ID(TM80)] = MOVE_ROCK_SLIDE,
    [TMHM_ID(TM81)] = MOVE_X_SCISSOR,
    [TMHM_ID(TM82)] = MOVE_SLEEP_TALK,
    [TMHM_ID(TM83)] = MOVE_NATURAL_GIFT,
    [TMHM_ID(TM84)] = MOVE_POISON_JAB,
    [TMHM_ID(TM85)] = MOVE_DREAM_EATER,
    [TMHM_ID(TM86)] = MOVE_GRASS_KNOT,
    [TMHM_ID(TM87)] = MOVE_SWAGGER,
    [TMHM_ID(TM88)] = MOVE_PLUCK,
    [TMHM_ID(TM89)] = MOVE_U_TURN,
    [TMHM_ID(TM90)] = MOVE_SUBSTITUTE,
    [TMHM_ID(TM91)] = MOVE_FLASH_CANNON,
    [TMHM_ID(TM92)] = MOVE_TRICK_ROOM,
    [TMHM_ID(HM01)] = MOVE_CUT,
    [TMHM_ID(HM02)] = MOVE_FLY,
    [TMHM_ID(HM03)] = MOVE_SURF,
    [TMHM_ID(HM04)] = MOVE_STRENGTH,
    [TMHM_ID(HM05)] = MOVE_DEFOG,
    [TMHM_ID(HM06)] = MOVE_ROCK_SMASH,
    [TMHM_ID(HM07)] = MOVE_WATERFALL,
    [TMHM_ID(HM08)] = MOVE_ROCK_CLIMB,
};

const u16 sMailItemIDs[] = {
    [MAIL_ID(GRASS)] = ITEM_GRASS_MAIL,
    [MAIL_ID(FLAME)] = ITEM_FLAME_MAIL,
    [MAIL_ID(BUBBLE)] = ITEM_BUBBLE_MAIL,
    [MAIL_ID(BLOOM)] = ITEM_BLOOM_MAIL,
    [MAIL_ID(TUNNEL)] = ITEM_TUNNEL_MAIL,
    [MAIL_ID(STEEL)] = ITEM_STEEL_MAIL,
    [MAIL_ID(HEART)] = ITEM_HEART_MAIL,
    [MAIL_ID(SNOW)] = ITEM_SNOW_MAIL,
    [MAIL_ID(SPACE)] = ITEM_SPACE_MAIL,
    [MAIL_ID(AIR)] = ITEM_AIR_MAIL,
    [MAIL_ID(MOSAIC)] = ITEM_MOSAIC_MAIL,
    [MAIL_ID(BRICK)] = ITEM_BRICK_MAIL,
};

const u16 sBerryItemIDs[] = {
    [BERRY_ID(CHERI)] = ITEM_CHERI_BERRY,
    [BERRY_ID(CHESTO)] = ITEM_CHESTO_BERRY,
    [BERRY_ID(PECHA)] = ITEM_PECHA_BERRY,
    [BERRY_ID(RAWST)] = ITEM_RAWST_BERRY,
    [BERRY_ID(ASPEAR)] = ITEM_ASPEAR_BERRY,
    [BERRY_ID(LEPPA)] = ITEM_LEPPA_BERRY,
    [BERRY_ID(ORAN)] = ITEM_ORAN_BERRY,
    [BERRY_ID(PERSIM)] = ITEM_PERSIM_BERRY,
    [BERRY_ID(LUM)] = ITEM_LUM_BERRY,
    [BERRY_ID(SITRUS)] = ITEM_SITRUS_BERRY,
    [BERRY_ID(FIGY)] = ITEM_FIGY_BERRY,
    [BERRY_ID(WIKI)] = ITEM_WIKI_BERRY,
    [BERRY_ID(MAGO)] = ITEM_MAGO_BERRY,
    [BERRY_ID(AGUAV)] = ITEM_AGUAV_BERRY,
    [BERRY_ID(IAPAPA)] = ITEM_IAPAPA_BERRY,
    [BERRY_ID(RAZZ)] = ITEM_RAZZ_BERRY,
    [BERRY_ID(BLUK)] = ITEM_BLUK_BERRY,
    [BERRY_ID(NANAB)] = ITEM_NANAB_BERRY,
    [BERRY_ID(WEPEAR)] = ITEM_WEPEAR_BERRY,
    [BERRY_ID(PINAP)] = ITEM_PINAP_BERRY,
    [BERRY_ID(POMEG)] = ITEM_POMEG_BERRY,
    [BERRY_ID(KELPSY)] = ITEM_KELPSY_BERRY,
    [BERRY_ID(QUALOT)] = ITEM_QUALOT_BERRY,
    [BERRY_ID(HONDEW)] = ITEM_HONDEW_BERRY,
    [BERRY_ID(GREPA)] = ITEM_GREPA_BERRY,
    [BERRY_ID(TAMATO)] = ITEM_TAMATO_BERRY,
    [BERRY_ID(CORNN)] = ITEM_CORNN_BERRY,
    [BERRY_ID(MAGOST)] = ITEM_MAGOST_BERRY,
    [BERRY_ID(RABUTA)] = ITEM_RABUTA_BERRY,
    [BERRY_ID(NOMEL)] = ITEM_NOMEL_BERRY,
    [BERRY_ID(SPELON)] = ITEM_SPELON_BERRY,
    [BERRY_ID(PAMTRE)] = ITEM_PAMTRE_BERRY,
    [BERRY_ID(WATMEL)] = ITEM_WATMEL_BERRY,
    [BERRY_ID(DURIN)] = ITEM_DURIN_BERRY,
    [BERRY_ID(BELUE)] = ITEM_BELUE_BERRY,
    [BERRY_ID(OCCA)] = ITEM_OCCA_BERRY,
    [BERRY_ID(PASSHO)] = ITEM_PASSHO_BERRY,
    [BERRY_ID(WACAN)] = ITEM_WACAN_BERRY,
    [BERRY_ID(RINDO)] = ITEM_RINDO_BERRY,
    [BERRY_ID(YACHE)] = ITEM_YACHE_BERRY,
    [BERRY_ID(CHOPLE)] = ITEM_CHOPLE_BERRY,
    [BERRY_ID(KEBIA)] = ITEM_KEBIA_BERRY,
    [BERRY_ID(SHUCA)] = ITEM_SHUCA_BERRY,
    [BERRY_ID(COBA)] = ITEM_COBA_BERRY,
    [BERRY_ID(PAYAPA)] = ITEM_PAYAPA_BERRY,
    [BERRY_ID(TANGA)] = ITEM_TANGA_BERRY,
    [BERRY_ID(CHARTI)] = ITEM_CHARTI_BERRY,
    [BERRY_ID(KASIB)] = ITEM_KASIB_BERRY,
    [BERRY_ID(HABAN)] = ITEM_HABAN_BERRY,
    [BERRY_ID(COLBUR)] = ITEM_COLBUR_BERRY,
    [BERRY_ID(BABIRI)] = ITEM_BABIRI_BERRY,
    [BERRY_ID(CHILAN)] = ITEM_CHILAN_BERRY,
    [BERRY_ID(LIECHI)] = ITEM_LIECHI_BERRY,
    [BERRY_ID(GANLON)] = ITEM_GANLON_BERRY,
    [BERRY_ID(SALAC)] = ITEM_SALAC_BERRY,
    [BERRY_ID(PETAYA)] = ITEM_PETAYA_BERRY,
    [BERRY_ID(APICOT)] = ITEM_APICOT_BERRY,
    [BERRY_ID(LANSAT)] = ITEM_LANSAT_BERRY,
    [BERRY_ID(STARF)] = ITEM_STARF_BERRY,
    [BERRY_ID(ENIGMA)] = ITEM_ENIGMA_BERRY,
    [BERRY_ID(MICLE)] = ITEM_MICLE_BERRY,
    [BERRY_ID(CUSTAP)] = ITEM_CUSTAP_BERRY,
    [BERRY_ID(JABOCA)] = ITEM_JABOCA_BERRY,
    [BERRY_ID(ROWAP)] = ITEM_ROWAP_BERRY,
};
// clang-format on

void Item_MoveInPocket(void *pocket, u16 srcSlot, u16 dstSlot)
{
    if (srcSlot == dstSlot) {
        return;
    }

    BagItem *items = (BagItem *)pocket;
    BagItem item = items[srcSlot];
    s16 i; // must be here to match
    if (dstSlot > srcSlot) {
        // Moving the item down in the pocket list
        dstSlot -= 1;

        // Bubble all the other items upward
        for (i = (s16)srcSlot; i < (s16)dstSlot; i++) {
            items[i] = items[i + 1];
        }
    } else {
        // Moving the item up in the pocket list
        // Sift all the other items downward
        for (i = (s16)srcSlot; i > (s16)dstSlot; i--) {
            items[i] = items[i - 1];
        }
    }

    items[dstSlot] = item;
}

u16 Item_FileID(u16 item, enum ItemFileType type)
{
    switch (type) {
    case ITEM_FILE_TYPE_DATA:
        if (item == ITEM_NONE || item == ITEM_RETURN_ID) {
            break;
        }

        return sItemArchiveIDs[item].dataID;
    case ITEM_FILE_TYPE_ICON:
        if (item == ITEM_NONE) {
            return 707; // TODO: Use NAIX generated from item_icon.narc
        }

        if (item == ITEM_RETURN_ID) {
            return 709; // TODO: Use NAIX generated from item_icon.narc
        }

        return sItemArchiveIDs[item].iconID;
    case ITEM_FILE_TYPE_PALETTE:
        if (item == ITEM_NONE) {
            return 708; // TODO: Use NAIX generated from item_icon.narc
        }

        if (item == ITEM_RETURN_ID) {
            return 710; // TODO: Use NAIX generated from item_icon.narc
        }

        return sItemArchiveIDs[item].paletteID;
    case ITEM_FILE_TYPE_GBA:
        if (item == ITEM_NONE || item == ITEM_RETURN_ID) {
            break;
        }

        return sItemArchiveIDs[item].gen3ID;
    }

    return 0;
}

u16 Item_FromGBAID(u16 gbaID)
{
    for (u16 i = ITEM_NONE + 1; i <= NUM_ITEMS; i++) {
        if (gbaID == sItemArchiveIDs[i].gen3ID) {
            return i;
        }
    }

    return ITEM_NONE;
}

u16 Item_IconNCERFile(void)
{
    return 1; // TODO: Use NAIX generated from item_icon.narc
}

u16 Item_IconNANRFile(void)
{
    return 0; // TODO: Use NAIX generated from item_icon.narc
}

void *Item_Load(u16 item, enum ItemFileType type, enum HeapID heapID)
{
    if (item > NUM_ITEMS) {
        item = ITEM_NONE;
    }

    switch (type) {
    case ITEM_FILE_TYPE_DATA:
        return NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_ITEMTOOL__ITEMDATA__PL_ITEM_DATA, sItemArchiveIDs[item].dataID, heapID);
    case ITEM_FILE_TYPE_ICON:
        return NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, sItemArchiveIDs[item].iconID, heapID);
    case ITEM_FILE_TYPE_PALETTE:
        return NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, sItemArchiveIDs[item].paletteID, heapID);
    }

    return NULL;
}

void Item_LoadName(String *dst, u16 item, enum HeapID heapID)
{
    MessageLoader *msgData = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_ITEM_NAMES, heapID);

    MessageLoader_GetString(msgData, item, dst);
    MessageLoader_Free(msgData);
}

void Item_LoadDescription(String *dst, u16 item, u16 heapID)
{
    MessageLoader *msgData = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_ITEM_DESCRIPTIONS, heapID);

    MessageLoader_GetString(msgData, item, dst);
    MessageLoader_Free(msgData);
}

s32 Item_LoadParam(u16 item, enum ItemDataParam param, enum HeapID heapID)
{
    ItemData *itemData = (ItemData *)Item_Load(item, 0, heapID);
    s32 val = Item_Get(itemData, param);
    Heap_FreeExplicit(heapID, itemData);

    return val;
}

s32 Item_Get(ItemData *itemData, enum ItemDataParam param)
{
    switch (param) {
    case ITEM_PARAM_PRICE:
        return (s32)itemData->price;
    case ITEM_PARAM_HOLD_EFFECT:
        return (s32)itemData->holdEffect;
    case ITEM_PARAM_HOLD_EFFECT_PARAM:
        return (s32)itemData->holdEffectParam;
    case ITEM_PARAM_PREVENT_TOSS:
        return (s32)itemData->preventToss;
    case ITEM_PARAM_IS_SELECTABLE:
        return (s32)itemData->isSelectable;
    case ITEM_PARAM_FIELD_POCKET:
        return (s32)itemData->fieldPocket;
    case ITEM_PARAM_FIELD_USE_FUNC:
        return (s32)itemData->fieldUseFunc;
    case ITEM_PARAM_BATTLE_USE_FUNC:
        return (s32)itemData->battleUseFunc;
    case ITEM_PARAM_PLUCK_EFFECT:
        return (s32)itemData->pluckEffect;
    case ITEM_PARAM_FLING_EFFECT:
        return (s32)itemData->flingEffect;
    case ITEM_PARAM_FLING_POWER:
        return (s32)itemData->flingPower;
    case ITEM_PARAM_NATURAL_GIFT_POWER:
        return (s32)itemData->naturalGiftPower;
    case ITEM_PARAM_NATURAL_GIFT_TYPE:
        return (s32)itemData->naturalGiftType;
    case ITEM_PARAM_BATTLE_POCKET:
        return (s32)itemData->battlePocket;
    case ITEM_PARAM_PARTY_USE:
        return (s32)itemData->partyUse;
    default:
        // Must use a switch-case to match; any non-BOOL input on itemData->partyUse will implicitly fall-through
        // to return 0 below.
        switch (itemData->partyUse) {
        case FALSE:
            return itemData->dummy;
        case TRUE:
            return ItemPartyParam_Get(&itemData->partyUseParam, param);
        }
    }

    return 0;
}

static s32 ItemPartyParam_Get(ItemPartyParam *partyParam, enum ItemDataParam attributeID)
{
    switch (attributeID) {
    case ITEM_PARAM_HEAL_SLEEP:
        return (s32)partyParam->healSleep;
    case ITEM_PARAM_HEAL_POISON:
        return (s32)partyParam->healPoison;
    case ITEM_PARAM_HEAL_BURN:
        return (s32)partyParam->healBurn;
    case ITEM_PARAM_HEAL_FREEZE:
        return (s32)partyParam->healFreeze;
    case ITEM_PARAM_HEAL_PARALYSIS:
        return (s32)partyParam->healParalysis;
    case ITEM_PARAM_HEAL_CONFUSION:
        return (s32)partyParam->healConfusion;
    case ITEM_PARAM_HEAL_ATTRACT:
        return (s32)partyParam->healAttract;
    case ITEM_PARAM_GUARD_SPEC:
        return (s32)partyParam->guardSpec;
    case ITEM_PARAM_REVIVE:
        return (s32)partyParam->revive;
    case ITEM_PARAM_REVIVE_ALL:
        return (s32)partyParam->reviveAll;
    case ITEM_PARAM_LEVEL_UP:
        return (s32)partyParam->levelUp;
    case ITEM_PARAM_EVOLVE:
        return (s32)partyParam->evolve;
    case ITEM_PARAM_ATK_STAGES:
        return (s32)partyParam->atkStages;
    case ITEM_PARAM_DEF_STAGES:
        return (s32)partyParam->defStages;
    case ITEM_PARAM_SPATK_STAGES:
        return (s32)partyParam->spatkStages;
    case ITEM_PARAM_SPDEF_STAGES:
        return (s32)partyParam->spdefStages;
    case ITEM_PARAM_SPEED_STAGES:
        return (s32)partyParam->speedStages;
    case ITEM_PARAM_ACC_STAGES:
        return (s32)partyParam->accStages;
    case ITEM_PARAM_CRIT_STAGES:
        return (s32)partyParam->critStages;
    case ITEM_PARAM_PP_UP:
        return (s32)partyParam->ppUp;
    case ITEM_PARAM_PP_MAX:
        return (s32)partyParam->ppMax;
    case ITEM_PARAM_PP_RESTORE:
        return (s32)partyParam->ppRestore;
    case ITEM_PARAM_PP_RESTORE_ALL:
        return (s32)partyParam->ppRestoreAll;
    case ITEM_PARAM_HP_RESTORE:
        return (s32)partyParam->hpRestore;
    case ITEM_PARAM_GIVE_HP_EVS:
        return (s32)partyParam->giveHPEVs;
    case ITEM_PARAM_GIVE_ATK_EVS:
        return (s32)partyParam->giveAtkEVs;
    case ITEM_PARAM_GIVE_DEF_EVS:
        return (s32)partyParam->giveDefEVs;
    case ITEM_PARAM_GIVE_SPEED_EVS:
        return (s32)partyParam->giveSpeedEVs;
    case ITEM_PARAM_GIVE_SPATK_EVS:
        return (s32)partyParam->giveSpAtkEVs;
    case ITEM_PARAM_GIVE_SPDEF_EVS:
        return (s32)partyParam->giveSpDefEVs;
    case ITEM_PARAM_GIVE_FRIENDSHIP_LOW:
        return (s32)partyParam->giveFriendshipLow;
    case ITEM_PARAM_GIVE_FRIENDSHIP_MED:
        return (s32)partyParam->giveFriendshipMed;
    case ITEM_PARAM_GIVE_FRIENDSHIP_HIGH:
        return (s32)partyParam->giveFriendshipHigh;
    case ITEM_PARAM_HP_EVS:
        return (s32)partyParam->hpEVs;
    case ITEM_PARAM_ATK_EVS:
        return (s32)partyParam->atkEVs;
    case ITEM_PARAM_DEF_EVS:
        return (s32)partyParam->defEVs;
    case ITEM_PARAM_SPEED_EVS:
        return (s32)partyParam->speedEVs;
    case ITEM_PARAM_SPATK_EVS:
        return (s32)partyParam->spatkEVs;
    case ITEM_PARAM_SPDEF_EVS:
        return (s32)partyParam->spdefEVs;
    case ITEM_PARAM_HP_RESTORED:
        return (s32)partyParam->hpRestored;
    case ITEM_PARAM_PP_RESTORED:
        return (s32)partyParam->ppRestored;
    case ITEM_PARAM_FRIENDSHIP_LOW:
        return (s32)partyParam->friendshipLow;
    case ITEM_PARAM_FRIENDSHIP_MED:
        return (s32)partyParam->friendshipMed;
    case ITEM_PARAM_FRIENDSHIP_HIGH:
        return (s32)partyParam->friendshipHigh;
    }

    return 0;
}

const u16 Item_MoveForTMHM(u16 item)
{
    if (item < ITEM_TM01 || item > ITEM_HM08) {
        return MOVE_NONE;
    }

    item -= ITEM_TM01;
    return sTMHMMoves[item];
}

u8 Item_IsHMMove(u16 move)
{
    for (u8 i = 0; i < NUM_HMS; i++) {
        if (sTMHMMoves[NUM_TMS + i] == move) {
            return TRUE;
        }
    }

    return FALSE;
}

u8 Item_TMHMNumber(u16 item)
{
    if (item < ITEM_TM01 || item > ITEM_HM08) {
        return ITEM_NONE;
    }

    return item - ITEM_TM01;
}

u8 Item_IsMail(u16 item)
{
    for (u32 i = 0; i < NUM_MAILS; i++) {
        if (sMailItemIDs[i] == item) {
            return TRUE;
        }
    }

    return FALSE;
}

u8 Item_MailNumber(u16 item)
{
    for (u32 i = 0; i < NUM_MAILS; i++) {
        if (sMailItemIDs[i] == item) {
            return i;
        }
    }

    return ITEM_NONE;
}

u16 Item_ForMailNumber(u8 mail)
{
    if (mail >= NUM_MAILS) {
        return ITEM_NONE;
    }

    return sMailItemIDs[mail];
}

u8 Item_IsBerry(u16 item)
{
    for (u32 i = 0; i < NUM_BERRIES; i++) {
        if (sBerryItemIDs[i] == item) {
            return TRUE;
        }
    }

    return FALSE;
}

u8 Item_BerryNumber(u16 item)
{
    if (item < ITEM_CHERI_BERRY) {
        return BERRY_ID_NONE;
    }

    return item - ITEM_CHERI_BERRY;
}

u16 Item_ForBerryNumber(u8 berry)
{
    if (berry >= NUM_BERRIES) {
        return ITEM_RETURN_ID;
    }

    return sBerryItemIDs[berry];
}

u8 Item_IsHerbalMedicine(u16 item)
{
    return item == ITEM_ENERGYPOWDER
        || item == ITEM_ENERGY_ROOT
        || item == ITEM_HEAL_POWDER
        || item == ITEM_REVIVAL_HERB;
}

void *ItemTable_Load(enum HeapID heapID)
{
    int maxItem = Item_FileID(NUM_ITEMS, ITEM_FILE_TYPE_DATA);
    return NARC_AllocAndReadFromMemberByIndexPair(NARC_INDEX_ITEMTOOL__ITEMDATA__PL_ITEM_DATA, 0, heapID, 0, sizeof(ItemData) * maxItem);
}

ItemData *ItemTable_Index(ItemData *itemTable, u16 index)
{
    return (ItemData *)((u8 *)itemTable + index * sizeof(ItemData));
}
