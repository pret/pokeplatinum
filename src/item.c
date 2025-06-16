#include "item.h"

#include <nitro.h>
#include <string.h>

#include "constants/gba/items.h"
#include "constants/items.h"
#include "res/items/item_icon/item_icon.naix"
#include "constants/moves.h"

#include "bag.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "strbuf.h"

typedef struct ItemArchiveIDs {
    u16 dataID; // Member file index in pl_item_data.narc; TODO: Use NAIX generated from pl_item_data
    u16 iconID; // Member file index of NCGR in item_icon.narc; TODO: Use NAIX generated from item_icon.narc
    u16 paletteID; // Member file index of NCLR in item_icon.narc; TODO: Use NAIX generated from item_icon.narc
    u16 gen3ID; // Transfer ID from gen3
} ItemArchiveIDs;

static s32 ItemPartyParam_Get(ItemPartyParam *partyParam, enum ItemDataParam attributeID);

// clang-format off
const ItemArchiveIDs sItemArchiveIDs[] = {
    [ITEM_NONE]         = {  .dataID = 0x0,   .iconID = icon_unused.NCGR,        .paletteID = pltt_unused.NCLR,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_MASTER_BALL]  = {  .dataID = 0x1,   .iconID = icon_master_ball.NCGR,   .paletteID = pltt_master_ball.NCLR,    .gen3ID = GBA_ITEM_MASTER_BALL,   },
    [ITEM_ULTRA_BALL]   = {  .dataID = 0x2,   .iconID = icon_ultra_ball.NCGR,    .paletteID = pltt_ultra_ball.NCLR,     .gen3ID = GBA_ITEM_ULTRA_BALL,    },
    [ITEM_GREAT_BALL]   = {  .dataID = 0x3,   .iconID = icon_great_ball.NCGR,    .paletteID = pltt_great_ball.NCLR,     .gen3ID = GBA_ITEM_GREAT_BALL,    },
    [ITEM_POKE_BALL]    = {  .dataID = 0x4,   .iconID = icon_poke_ball.NCGR,     .paletteID = pltt_poke_ball.NCLR,      .gen3ID = GBA_ITEM_POKE_BALL,     },
    [ITEM_SAFARI_BALL]  = {  .dataID = 0x5,   .iconID = icon_safari_ball.NCGR,   .paletteID = pltt_safari_ball.NCLR,    .gen3ID = GBA_ITEM_SAFARI_BALL,   },
    [ITEM_NET_BALL]     = {  .dataID = 0x6,   .iconID = icon_net_ball.NCGR,      .paletteID = pltt_net_ball.NCLR,       .gen3ID = GBA_ITEM_NET_BALL,      },
    [ITEM_DIVE_BALL]    = {  .dataID = 0x7,   .iconID = icon_dive_ball.NCGR,     .paletteID = pltt_dive_ball.NCLR,      .gen3ID = GBA_ITEM_DIVE_BALL,     },
    [ITEM_NEST_BALL]    = {  .dataID = 0x8,   .iconID = icon_nest_ball.NCGR,     .paletteID = pltt_nest_ball.NCLR,      .gen3ID = GBA_ITEM_NEST_BALL,     },
    [ITEM_REPEAT_BALL]  = {  .dataID = 0x9,   .iconID = icon_repeat_ball.NCGR,   .paletteID = pltt_repeat_ball.NCLR,    .gen3ID = GBA_ITEM_REPEAT_BALL,   },
    [ITEM_TIMER_BALL]   = {  .dataID = 0xA,   .iconID = icon_timer_ball.NCGR,    .paletteID = pltt_repeat_ball.NCLR,    .gen3ID = GBA_ITEM_TIMER_BALL,    },
    [ITEM_LUXURY_BALL]  = {  .dataID = 0xB,   .iconID = icon_luxury_ball.NCGR,   .paletteID = pltt_luxury_ball.NCLR,    .gen3ID = GBA_ITEM_LUXURY_BALL,   },
    [ITEM_PREMIER_BALL] = {  .dataID = 0xC,   .iconID = icon_premier_ball.NCGR,  .paletteID = pltt_luxury_ball.NCLR,    .gen3ID = GBA_ITEM_PREMIER_BALL,  },
    [ITEM_DUSK_BALL]    = {  .dataID = 0xD,   .iconID = icon_dusk_ball.NCGR,     .paletteID = pltt_dusk_ball.NCLR,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_HEAL_BALL]    = {  .dataID = 0xE,   .iconID = icon_heal_ball.NCGR,     .paletteID = pltt_heal_ball.NCLR,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_QUICK_BALL]   = {  .dataID = 0xF,   .iconID = icon_quick_ball.NCGR,    .paletteID = pltt_quick_ball.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_CHERISH_BALL] = {  .dataID = 0x10,  .iconID = icon_cherish_ball.NCGR,  .paletteID = pltt_cherish_ball.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_POTION]       = {  .dataID = 0x11,  .iconID = icon_potion.NCGR,        .paletteID = pltt_potion.NCLR,         .gen3ID = GBA_ITEM_POTION,        },
    [ITEM_ANTIDOTE]     = {  .dataID = 0x12,  .iconID = icon_antidote.NCGR,      .paletteID = pltt_antidote.NCLR,       .gen3ID = GBA_ITEM_ANTIDOTE,      },
    [ITEM_BURN_HEAL]    = {  .dataID = 0x13,  .iconID = icon_status_heal.NCGR,   .paletteID = pltt_burn_heal.NCLR,      .gen3ID = GBA_ITEM_BURN_HEAL,     },
    [ITEM_ICE_HEAL]     = {  .dataID = 0x14,  .iconID = icon_status_heal.NCGR,   .paletteID = pltt_ice_heal.NCLR,       .gen3ID = GBA_ITEM_ICE_HEAL,      },
    [ITEM_AWAKENING]    = {  .dataID = 0x15,  .iconID = icon_status_heal.NCGR,   .paletteID = pltt_awakening.NCLR,      .gen3ID = GBA_ITEM_AWAKENING,     },
    [ITEM_PARLYZ_HEAL]  = {  .dataID = 0x16,  .iconID = icon_status_heal.NCGR,   .paletteID = pltt_paralyz_heal.NCLR,   .gen3ID = GBA_ITEM_PARALYZE_HEAL, },
    [ITEM_FULL_RESTORE] = {  .dataID = 0x17,  .iconID = icon_full_restore.NCGR,  .paletteID = pltt_full_restore.NCLR,   .gen3ID = GBA_ITEM_FULL_RESTORE,  },
    [ITEM_MAX_POTION]   = {  .dataID = 0x18,  .iconID = icon_full_restore.NCGR,  .paletteID = pltt_max_potion.NCLR,     .gen3ID = GBA_ITEM_MAX_POTION,    },
    [ITEM_HYPER_POTION] = {  .dataID = 0x19,  .iconID = icon_potion.NCGR,        .paletteID = pltt_hyper_potion.NCLR,   .gen3ID = GBA_ITEM_HYPER_POTION,  },
    [ITEM_SUPER_POTION] = {  .dataID = 0x1A,  .iconID = icon_potion.NCGR,        .paletteID = pltt_super_potion.NCLR,   .gen3ID = GBA_ITEM_SUPER_POTION,  },
    [ITEM_FULL_HEAL]    = {  .dataID = 0x1B,  .iconID = icon_full_heal.NCGR,     .paletteID = pltt_full_heal.NCLR,      .gen3ID = GBA_ITEM_FULL_HEAL,     },
    [ITEM_REVIVE]       = {  .dataID = 0x1C,  .iconID = icon_revive.NCGR,        .paletteID = pltt_revive.NCLR,         .gen3ID = GBA_ITEM_REVIVE,        },
    [ITEM_MAX_REVIVE]   = {  .dataID = 0x1D,  .iconID = icon_max_revive.NCGR,    .paletteID = pltt_revive.NCLR,         .gen3ID = GBA_ITEM_MAX_REVIVE,    },
    [ITEM_FRESH_WATER]  = {  .dataID = 0x1E,  .iconID = icon_fresh_water.NCGR,   .paletteID = pltt_fresh_water.NCLR,    .gen3ID = GBA_ITEM_FRESH_WATER,   },
    [ITEM_SODA_POP]     = {  .dataID = 0x1F,  .iconID = icon_soda_pop.NCGR,      .paletteID = pltt_soda_pop.NCLR,       .gen3ID = GBA_ITEM_SODA_POP,      },
    [ITEM_LEMONADE]     = {  .dataID = 0x20,  .iconID = icon_lemonade.NCGR,      .paletteID = pltt_lemonade.NCLR,       .gen3ID = GBA_ITEM_LEMONADE,      },
    [ITEM_MOOMOO_MILK]  = {  .dataID = 0x21,  .iconID = icon_moomoo_milk.NCGR,   .paletteID = pltt_moomoo_milk.NCLR,    .gen3ID = GBA_ITEM_MOOMOO_MILK,   },
    [ITEM_ENERGYPOWDER] = {  .dataID = 0x22,  .iconID = icon_energypowder.NCGR,  .paletteID = pltt_energypowder.NCLR,   .gen3ID = GBA_ITEM_ENERGY_POWDER, },
    [ITEM_ENERGY_ROOT]  = {  .dataID = 0x23,  .iconID = icon_energy_root.NCGR,   .paletteID = pltt_energy_root.NCLR,    .gen3ID = GBA_ITEM_ENERGY_ROOT,   },
    [ITEM_HEAL_POWDER]  = {  .dataID = 0x24,  .iconID = icon_energypowder.NCGR,  .paletteID = pltt_heal_powder.NCLR,    .gen3ID = GBA_ITEM_HEAL_POWDER,   },
    [ITEM_REVIVAL_HERB] = {  .dataID = 0x25,  .iconID = icon_revival_herb.NCGR,  .paletteID = pltt_revival_herb.NCLR,   .gen3ID = GBA_ITEM_REVIVAL_HERB,  },
    [ITEM_ETHER]        = {  .dataID = 0x26,  .iconID = icon_ether.NCGR,         .paletteID = pltt_ether.NCLR,          .gen3ID = GBA_ITEM_ETHER,         },
    [ITEM_MAX_ETHER]    = {  .dataID = 0x27,  .iconID = icon_ether.NCGR,         .paletteID = pltt_max_ether.NCLR,      .gen3ID = GBA_ITEM_MAX_ETHER,     },
    [ITEM_ELIXIR]       = {  .dataID = 0x28,  .iconID = icon_ether.NCGR,         .paletteID = pltt_elixir.NCLR,         .gen3ID = GBA_ITEM_ELIXIR,        },
    [ITEM_MAX_ELIXIR]   = {  .dataID = 0x29,  .iconID = icon_ether.NCGR,         .paletteID = pltt_max_elixir.NCLR,     .gen3ID = GBA_ITEM_MAX_ELIXIR,    },
    [ITEM_LAVA_COOKIE]  = {  .dataID = 0x2A,  .iconID = icon_lava_cookie.NCGR,   .paletteID = pltt_lava_cookie.NCLR,    .gen3ID = GBA_ITEM_LAVA_COOKIE,   },
    [ITEM_BERRY_JUICE]  = {  .dataID = 0x2B,  .iconID = icon_berry_juice.NCGR,   .paletteID = pltt_berry_juice.NCLR,    .gen3ID = GBA_ITEM_BERRY_JUICE,   },
    [ITEM_SACRED_ASH]   = {  .dataID = 0x2C,  .iconID = icon_sacred_ash.NCGR,    .paletteID = pltt_sacred_ash.NCLR,     .gen3ID = GBA_ITEM_SACRED_ASH,    },
    [ITEM_HP_UP]        = {  .dataID = 0x2D,  .iconID = icon_hp_up.NCGR,         .paletteID = pltt_hp_up.NCLR,          .gen3ID = GBA_ITEM_HP_UP,         },
    [ITEM_PROTEIN]      = {  .dataID = 0x2E,  .iconID = icon_vitamin.NCGR,       .paletteID = pltt_protein.NCLR,        .gen3ID = GBA_ITEM_PROTEIN,       },
    [ITEM_IRON]         = {  .dataID = 0x2F,  .iconID = icon_vitamin.NCGR,       .paletteID = pltt_iron.NCLR,           .gen3ID = GBA_ITEM_IRON,          },
    [ITEM_CARBOS]       = {  .dataID = 0x30,  .iconID = icon_vitamin.NCGR,       .paletteID = pltt_carbos.NCLR,         .gen3ID = GBA_ITEM_CARBOS,        },
    [ITEM_CALCIUM]      = {  .dataID = 0x31,  .iconID = icon_vitamin.NCGR,       .paletteID = pltt_calcium.NCLR,        .gen3ID = GBA_ITEM_CALCIUM,       },
    [ITEM_RARE_CANDY]   = {  .dataID = 0x32,  .iconID = icon_rare_candy.NCGR,    .paletteID = pltt_rare_candy.NCLR,     .gen3ID = GBA_ITEM_RARE_CANDY,    },
    [ITEM_PP_UP]        = {  .dataID = 0x33,  .iconID = icon_pp_up.NCGR,         .paletteID = pltt_pp_up.NCLR,          .gen3ID = GBA_ITEM_PP_UP,         },
    [ITEM_ZINC]         = {  .dataID = 0x34,  .iconID = icon_vitamin.NCGR,       .paletteID = pltt_zinc.NCLR,           .gen3ID = GBA_ITEM_ZINC,          },
    [ITEM_PP_MAX]       = {  .dataID = 0x35,  .iconID = icon_pp_max.NCGR,        .paletteID = pltt_pp_max.NCLR,         .gen3ID = GBA_ITEM_PP_MAX,        },
    [ITEM_OLD_GATEAU]   = {  .dataID = 0x36,  .iconID = icon_old_gateau.NCGR,    .paletteID = pltt_old_gateau.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_GUARD_SPEC]   = {  .dataID = 0x37,  .iconID = icon_battle_item.NCGR,   .paletteID = pltt_guard_sped.NCLR,     .gen3ID = GBA_ITEM_GUARD_SPEC,    },
    [ITEM_DIRE_HIT]     = {  .dataID = 0x38,  .iconID = icon_battle_item.NCGR,   .paletteID = pltt_dire_hit.NCLR,       .gen3ID = GBA_ITEM_DIRE_HIT,      },
    [ITEM_X_ATTACK]     = {  .dataID = 0x39,  .iconID = icon_battle_item.NCGR,   .paletteID = pltt_x_attack.NCLR,       .gen3ID = GBA_ITEM_X_ATTACK,      },
    [ITEM_X_DEFENSE]    = {  .dataID = 0x3A,  .iconID = icon_battle_item.NCGR,   .paletteID = pltt_x_defense.NCLR,      .gen3ID = GBA_ITEM_X_DEFEND,      },
    [ITEM_X_SPEED]      = {  .dataID = 0x3B,  .iconID = icon_battle_item.NCGR,   .paletteID = pltt_x_speed.NCLR,        .gen3ID = GBA_ITEM_X_SPEED,       },
    [ITEM_X_ACCURACY]   = {  .dataID = 0x3C,  .iconID = icon_battle_item.NCGR,   .paletteID = pltt_x_accuracy.NCLR,     .gen3ID = GBA_ITEM_X_ACCURACY,    },
    [ITEM_X_SPECIAL]    = {  .dataID = 0x3D,  .iconID = icon_battle_item.NCGR,   .paletteID = pltt_x_special.NCLR,      .gen3ID = GBA_ITEM_X_SPECIAL,     },
    [ITEM_X_SP_DEF]     = {  .dataID = 0x3E,  .iconID = icon_battle_item.NCGR,   .paletteID = pltt_x_sp_def.NCLR,       .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_POKE_DOLL]    = {  .dataID = 0x3F,  .iconID = icon_poke_doll.NCGR,     .paletteID = pltt_poke_doll.NCLR,      .gen3ID = GBA_ITEM_POKE_DOLL,     },
    [ITEM_FLUFFY_TAIL]  = {  .dataID = 0x40,  .iconID = icon_fluffy_tail.NCGR,   .paletteID = pltt_fluffy_tail.NCLR,    .gen3ID = GBA_ITEM_FLUFFY_TAIL,   },
    [ITEM_BLUE_FLUTE]   = {  .dataID = 0x41,  .iconID = icon_flute.NCGR,         .paletteID = pltt_blue_flute.NCLR,     .gen3ID = GBA_ITEM_BLUE_FLUTE,    },
    [ITEM_YELLOW_FLUTE] = {  .dataID = 0x42,  .iconID = icon_flute.NCGR,         .paletteID = pltt_yellow_flute.NCLR,   .gen3ID = GBA_ITEM_YELLOW_FLUTE,  },
    [ITEM_RED_FLUTE]    = {  .dataID = 0x43,  .iconID = icon_flute.NCGR,         .paletteID = pltt_red_flute.NCLR,      .gen3ID = GBA_ITEM_RED_FLUTE,     },
    [ITEM_BLACK_FLUTE]  = {  .dataID = 0x44,  .iconID = icon_flute.NCGR,         .paletteID = pltt_black_flute.NCLR,    .gen3ID = GBA_ITEM_BLACK_FLUTE,   },
    [ITEM_WHITE_FLUTE]  = {  .dataID = 0x45,  .iconID = icon_flute.NCGR,         .paletteID = pltt_white_flute.NCLR,    .gen3ID = GBA_ITEM_WHITE_FLUTE,   },
    [ITEM_SHOAL_SALT]   = {  .dataID = 0x46,  .iconID = icon_energypowder.NCGR,  .paletteID = pltt_shoal_salt.NCLR,     .gen3ID = GBA_ITEM_SHOAL_SALT,    },
    [ITEM_SHOAL_SHELL]  = {  .dataID = 0x47,  .iconID = icon_shoal_shell.NCGR,   .paletteID = pltt_shoal_shell.NCLR,    .gen3ID = GBA_ITEM_SHOAL_SHELL,   },
    [ITEM_RED_SHARD]    = {  .dataID = 0x48,  .iconID = icon_shard.NCGR,         .paletteID = pltt_red_shard.NCLR,      .gen3ID = GBA_ITEM_RED_SHARD,     },
    [ITEM_BLUE_SHARD]   = {  .dataID = 0x49,  .iconID = icon_shard.NCGR,         .paletteID = pltt_blue_shard.NCLR,     .gen3ID = GBA_ITEM_BLUE_SHARD,    },
    [ITEM_YELLOW_SHARD] = {  .dataID = 0x4A,  .iconID = icon_shard.NCGR,         .paletteID = pltt_yellow_shard.NCLR,   .gen3ID = GBA_ITEM_YELLOW_SHARD,  },
    [ITEM_GREEN_SHARD]  = {  .dataID = 0x4B,  .iconID = icon_shard.NCGR,         .paletteID = pltt_green_shard.NCLR,    .gen3ID = GBA_ITEM_GREEN_SHARD,   },
    [ITEM_SUPER_REPEL]  = {  .dataID = 0x4C,  .iconID = icon_repel.NCGR,         .paletteID = pltt_super_repel.NCLR,    .gen3ID = GBA_ITEM_SUPER_REPEL,   },
    [ITEM_MAX_REPEL]    = {  .dataID = 0x4D,  .iconID = icon_repel.NCGR,         .paletteID = pltt_max_repel.NCLR,      .gen3ID = GBA_ITEM_MAX_REPEL,     },
    [ITEM_ESCAPE_ROPE]  = {  .dataID = 0x4E,  .iconID = icon_escape_rope.NCGR,   .paletteID = pltt_escape_rope.NCLR,    .gen3ID = GBA_ITEM_ESCAPE_ROPE,   },
    [ITEM_REPEL]        = {  .dataID = 0x4F,  .iconID = icon_repel.NCGR,         .paletteID = pltt_repel.NCLR,          .gen3ID = GBA_ITEM_REPEL,         },
    [ITEM_SUN_STONE]    = {  .dataID = 0x50,  .iconID = icon_sun_stone.NCGR,     .paletteID = pltt_sun_stone.NCLR,      .gen3ID = GBA_ITEM_SUN_STONE,     },
    [ITEM_MOON_STONE]   = {  .dataID = 0x51,  .iconID = icon_moon_stone.NCGR,    .paletteID = pltt_moon_stone.NCLR,     .gen3ID = GBA_ITEM_MOON_STONE,    },
    [ITEM_FIRE_STONE]   = {  .dataID = 0x52,  .iconID = icon_fire_stone.NCGR,    .paletteID = pltt_fire_stone.NCLR,     .gen3ID = GBA_ITEM_FIRE_STONE,    },
    [ITEM_THUNDERSTONE] = {  .dataID = 0x53,  .iconID = icon_thunderstone.NCGR,  .paletteID = pltt_thunderstone.NCLR,   .gen3ID = GBA_ITEM_THUNDER_STONE, },
    [ITEM_WATER_STONE]  = {  .dataID = 0x54,  .iconID = icon_water_stone.NCGR,   .paletteID = pltt_water_stone.NCLR,    .gen3ID = GBA_ITEM_WATER_STONE,   },
    [ITEM_LEAF_STONE]   = {  .dataID = 0x55,  .iconID = icon_leaf_stone.NCGR,    .paletteID = pltt_leaf_stone.NCLR,     .gen3ID = GBA_ITEM_LEAF_STONE,    },
    [ITEM_TINYMUSHROOM] = {  .dataID = 0x56,  .iconID = icon_tinymushroom.NCGR,  .paletteID = pltt_mushroom.NCLR,       .gen3ID = GBA_ITEM_TINY_MUSHROOM, },
    [ITEM_BIG_MUSHROOM] = {  .dataID = 0x57,  .iconID = icon_big_mushroom.NCGR,  .paletteID = pltt_mushroom.NCLR,       .gen3ID = GBA_ITEM_BIG_MUSHROOM,  },
    [ITEM_PEARL]        = {  .dataID = 0x58,  .iconID = icon_pearl.NCGR,         .paletteID = pltt_pearl.NCLR,          .gen3ID = GBA_ITEM_PEARL,         },
    [ITEM_BIG_PEARL]    = {  .dataID = 0x59,  .iconID = icon_big_pearl.NCGR,     .paletteID = pltt_pearl.NCLR,          .gen3ID = GBA_ITEM_BIG_PEARL,     },
    [ITEM_STARDUST]     = {  .dataID = 0x5A,  .iconID = icon_stardust.NCGR,      .paletteID = pltt_stardust.NCLR,       .gen3ID = GBA_ITEM_STARDUST,      },
    [ITEM_STAR_PIECE]   = {  .dataID = 0x5B,  .iconID = icon_star_piece.NCGR,    .paletteID = pltt_stardust.NCLR,       .gen3ID = GBA_ITEM_STAR_PIECE,    },
    [ITEM_NUGGET]       = {  .dataID = 0x5C,  .iconID = icon_nugget.NCGR,        .paletteID = pltt_nugget.NCLR,         .gen3ID = GBA_ITEM_NUGGET,        },
    [ITEM_HEART_SCALE]  = {  .dataID = 0x5D,  .iconID = icon_heart_scale.NCGR,   .paletteID = pltt_heart_scale.NCLR,    .gen3ID = GBA_ITEM_HEART_SCALE,   },
    [ITEM_HONEY]        = {  .dataID = 0x5E,  .iconID = icon_honey.NCGR,         .paletteID = pltt_honey.NCLR,          .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_GROWTH_MULCH] = {  .dataID = 0x5F,  .iconID = icon_growth_mulch.NCGR,  .paletteID = pltt_growth_mulch.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_DAMP_MULCH]   = {  .dataID = 0x60,  .iconID = icon_damp_mulch.NCGR,    .paletteID = pltt_damp_mulch.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_STABLE_MULCH] = {  .dataID = 0x61,  .iconID = icon_stable_mulch.NCGR,  .paletteID = pltt_stable_mulch.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_GOOEY_MULCH]  = {  .dataID = 0x62,  .iconID = icon_gooey_mulch.NCGR,   .paletteID = pltt_gooey_mulch.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_ROOT_FOSSIL]  = {  .dataID = 0x63,  .iconID = icon_root_fossil.NCGR,   .paletteID = pltt_root_fossil.NCLR,    .gen3ID = GBA_ITEM_ROOT_FOSSIL,   },
    [ITEM_CLAW_FOSSIL]  = {  .dataID = 0x64,  .iconID = icon_claw_fossil.NCGR,   .paletteID = pltt_root_fossil.NCLR,    .gen3ID = GBA_ITEM_CLAW_FOSSIL,   },
    [ITEM_HELIX_FOSSIL] = {  .dataID = 0x65,  .iconID = icon_helix_fossil.NCGR,  .paletteID = pltt_helix_fossil.NCLR,   .gen3ID = GBA_ITEM_HELIX_FOSSIL,  },
    [ITEM_DOME_FOSSIL]  = {  .dataID = 0x66,  .iconID = icon_dome_fossil.NCGR,   .paletteID = pltt_helix_fossil.NCLR,   .gen3ID = GBA_ITEM_DOME_FOSSIL,   },
    [ITEM_OLD_AMBER]    = {  .dataID = 0x67,  .iconID = icon_old_amber.NCGR,     .paletteID = pltt_old_amber.NCLR,      .gen3ID = GBA_ITEM_OLD_AMBER,     },
    [ITEM_ARMOR_FOSSIL] = {  .dataID = 0x68,  .iconID = icon_armor_fossil.NCGR,  .paletteID = pltt_armor_fossil.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_SKULL_FOSSIL] = {  .dataID = 0x69,  .iconID = icon_skull_fossil.NCGR,  .paletteID = pltt_skull_fossil.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_RARE_BONE]    = {  .dataID = 0x6A,  .iconID = icon_bone.NCGR,          .paletteID = pltt_bone.NCLR,           .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_SHINY_STONE]  = {  .dataID = 0x6B,  .iconID = icon_shiny_stone.NCGR,   .paletteID = pltt_shiny_stone.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_DUSK_STONE]   = {  .dataID = 0x6C,  .iconID = icon_dusk_stone.NCGR,    .paletteID = pltt_dusk_stone.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_DAWN_STONE]   = {  .dataID = 0x6D,  .iconID = icon_dawn_stone.NCGR,    .paletteID = pltt_dawn_stone.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_OVAL_STONE]   = {  .dataID = 0x6E,  .iconID = icon_oval_stone.NCGR,    .paletteID = pltt_oval_stone.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_ODD_KEYSTONE] = {  .dataID = 0x6F,  .iconID = icon_odd_keystone.NCGR,  .paletteID = pltt_odd_keystone.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_GRISEOUS_ORB] = {  .dataID = 0x70,  .iconID = icon_griseous_orb.NCGR,  .paletteID = pltt_griseous_orb.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_113]   = {  .dataID = 0x0,   .iconID = icon_unused.NCGR,        .paletteID = pltt_unused.NCLR,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_114]   = {  .dataID = 0x0,   .iconID = icon_unused.NCGR,        .paletteID = pltt_unused.NCLR,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_115]   = {  .dataID = 0x0,   .iconID = icon_unused.NCGR,        .paletteID = pltt_unused.NCLR,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_116]   = {  .dataID = 0x0,   .iconID = icon_unused.NCGR,        .paletteID = pltt_unused.NCLR,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_117]   = {  .dataID = 0x0,   .iconID = icon_unused.NCGR,        .paletteID = pltt_unused.NCLR,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_118]   = {  .dataID = 0x0,   .iconID = icon_unused.NCGR,        .paletteID = pltt_unused.NCLR,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_119]   = {  .dataID = 0x0,   .iconID = icon_unused.NCGR,        .paletteID = pltt_unused.NCLR,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_120]   = {  .dataID = 0x0,   .iconID = icon_unused.NCGR,        .paletteID = pltt_unused.NCLR,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_121]   = {  .dataID = 0x0,   .iconID = icon_unused.NCGR,        .paletteID = pltt_unused.NCLR,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_122]   = {  .dataID = 0x0,   .iconID = icon_unused.NCGR,        .paletteID = pltt_unused.NCLR,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_123]   = {  .dataID = 0x0,   .iconID = icon_unused.NCGR,        .paletteID = pltt_unused.NCLR,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_124]   = {  .dataID = 0x0,   .iconID = icon_unused.NCGR,        .paletteID = pltt_unused.NCLR,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_125]   = {  .dataID = 0x0,   .iconID = icon_unused.NCGR,        .paletteID = pltt_unused.NCLR,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_126]   = {  .dataID = 0x0,   .iconID = icon_unused.NCGR,        .paletteID = pltt_unused.NCLR,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_127]   = {  .dataID = 0x0,   .iconID = icon_unused.NCGR,        .paletteID = pltt_unused.NCLR,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_128]   = {  .dataID = 0x0,   .iconID = icon_unused.NCGR,        .paletteID = pltt_unused.NCLR,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_129]   = {  .dataID = 0x0,   .iconID = icon_unused.NCGR,        .paletteID = pltt_unused.NCLR,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_130]   = {  .dataID = 0x0,   .iconID = icon_unused.NCGR,        .paletteID = pltt_unused.NCLR,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_131]   = {  .dataID = 0x0,   .iconID = icon_unused.NCGR,        .paletteID = pltt_unused.NCLR,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_132]   = {  .dataID = 0x0,   .iconID = icon_unused.NCGR,        .paletteID = pltt_unused.NCLR,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_133]   = {  .dataID = 0x0,   .iconID = icon_unused.NCGR,        .paletteID = pltt_unused.NCLR,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_134]   = {  .dataID = 0x0,   .iconID = icon_unused.NCGR,        .paletteID = pltt_unused.NCLR,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_ADAMANT_ORB]  = {  .dataID = 0x71,  .iconID = icon_adamant_orb.NCGR,   .paletteID = pltt_adamant_orb.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_LUSTROUS_ORB] = {  .dataID = 0x72,  .iconID = icon_lustrous_orb.NCGR,  .paletteID = pltt_lustrous_orb.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_GRASS_MAIL]   = {  .dataID = 0x73,  .iconID = icon_grass_mail.NCGR,    .paletteID = pltt_grass_mail.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_FLAME_MAIL]   = {  .dataID = 0x74,  .iconID = icon_flame_mail.NCGR,    .paletteID = pltt_flame_mail.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_BUBBLE_MAIL]  = {  .dataID = 0x75,  .iconID = icon_bubble_mail.NCGR,   .paletteID = pltt_bubble_mail.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_BLOOM_MAIL]   = {  .dataID = 0x76,  .iconID = icon_bloom_mail.NCGR,    .paletteID = pltt_bloom_mail.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TUNNEL_MAIL]  = {  .dataID = 0x77,  .iconID = icon_tunnel_mail.NCGR,   .paletteID = pltt_tunnel_mail.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_STEEL_MAIL]   = {  .dataID = 0x78,  .iconID = icon_steel_mail.NCGR,    .paletteID = pltt_steel_mail.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_HEART_MAIL]   = {  .dataID = 0x79,  .iconID = icon_heart_mail.NCGR,    .paletteID = pltt_heart_mail.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_SNOW_MAIL]    = {  .dataID = 0x7A,  .iconID = icon_snow_mail.NCGR,     .paletteID = pltt_snow_mail.NCLR,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_SPACE_MAIL]   = {  .dataID = 0x7B,  .iconID = icon_space_mail.NCGR,    .paletteID = pltt_space_mail.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_AIR_MAIL]     = {  .dataID = 0x7C,  .iconID = icon_air_mail.NCGR,      .paletteID = pltt_air_mail.NCLR,       .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_MOSAIC_MAIL]  = {  .dataID = 0x7D,  .iconID = icon_mosaic_mail.NCGR,   .paletteID = pltt_mosaic_mail.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_BRICK_MAIL]   = {  .dataID = 0x7E,  .iconID = icon_brick_mail.NCGR,    .paletteID = pltt_brick_mail.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_CHERI_BERRY]  = {  .dataID = 0x7F,  .iconID = icon_cheri_berry.NCGR,   .paletteID = pltt_cheri_berry.NCLR,    .gen3ID = GBA_ITEM_CHERI_BERRY,   },
    [ITEM_CHESTO_BERRY] = {  .dataID = 0x80,  .iconID = icon_chesto_berry.NCGR,  .paletteID = pltt_chesto_berry.NCLR,   .gen3ID = GBA_ITEM_CHESTO_BERRY,  },
    [ITEM_PECHA_BERRY]  = {  .dataID = 0x81,  .iconID = icon_pecha_berry.NCGR,   .paletteID = pltt_pecha_berry.NCLR,    .gen3ID = GBA_ITEM_PECHA_BERRY,   },
    [ITEM_RAWST_BERRY]  = {  .dataID = 0x82,  .iconID = icon_rawst_berry.NCGR,   .paletteID = pltt_rawst_berry.NCLR,    .gen3ID = GBA_ITEM_RAWST_BERRY,   },
    [ITEM_ASPEAR_BERRY] = {  .dataID = 0x83,  .iconID = icon_aspear_berry.NCGR,  .paletteID = pltt_aspear_berry.NCLR,   .gen3ID = GBA_ITEM_ASPEAR_BERRY,  },
    [ITEM_LEPPA_BERRY]  = {  .dataID = 0x84,  .iconID = icon_leppa_berry.NCGR,   .paletteID = pltt_leppa_berry.NCLR,    .gen3ID = GBA_ITEM_LEPPA_BERRY,   },
    [ITEM_ORAN_BERRY]   = {  .dataID = 0x85,  .iconID = icon_oran_berry.NCGR,    .paletteID = pltt_oran_berry.NCLR,     .gen3ID = GBA_ITEM_ORAN_BERRY,    },
    [ITEM_PERSIM_BERRY] = {  .dataID = 0x86,  .iconID = icon_persim_berry.NCGR,  .paletteID = pltt_persim_berry.NCLR,   .gen3ID = GBA_ITEM_PERSIM_BERRY,  },
    [ITEM_LUM_BERRY]    = {  .dataID = 0x87,  .iconID = icon_lum_berry.NCGR,     .paletteID = pltt_lum_berry.NCLR,      .gen3ID = GBA_ITEM_LUM_BERRY,     },
    [ITEM_SITRUS_BERRY] = {  .dataID = 0x88,  .iconID = icon_sitrus_berry.NCGR,  .paletteID = pltt_sitrus_berry.NCLR,   .gen3ID = GBA_ITEM_SITRUS_BERRY,  },
    [ITEM_FIGY_BERRY]   = {  .dataID = 0x89,  .iconID = icon_figy_berry.NCGR,    .paletteID = pltt_figy_berry.NCLR,     .gen3ID = GBA_ITEM_FIGY_BERRY,    },
    [ITEM_WIKI_BERRY]   = {  .dataID = 0x8A,  .iconID = icon_wiki_berry.NCGR,    .paletteID = pltt_wiki_berry.NCLR,     .gen3ID = GBA_ITEM_WIKI_BERRY,    },
    [ITEM_MAGO_BERRY]   = {  .dataID = 0x8B,  .iconID = icon_mago_berry.NCGR,    .paletteID = pltt_mago_berry.NCLR,     .gen3ID = GBA_ITEM_MAGO_BERRY,    },
    [ITEM_AGUAV_BERRY]  = {  .dataID = 0x8C,  .iconID = icon_aguav_berry.NCGR,   .paletteID = pltt_aguav_berry.NCLR,    .gen3ID = GBA_ITEM_AGUAV_BERRY,   },
    [ITEM_IAPAPA_BERRY] = {  .dataID = 0x8D,  .iconID = icon_iapapa_berry.NCGR,  .paletteID = pltt_iapapa_berry.NCLR,   .gen3ID = GBA_ITEM_IAPAPA_BERRY,  },
    [ITEM_RAZZ_BERRY]   = {  .dataID = 0x8E,  .iconID = icon_razz_berry.NCGR,    .paletteID = pltt_razz_berry.NCLR,     .gen3ID = GBA_ITEM_RAZZ_BERRY,    },
    [ITEM_BLUK_BERRY]   = {  .dataID = 0x8F,  .iconID = icon_bluk_berry.NCGR,    .paletteID = pltt_bluk_berry.NCLR,     .gen3ID = GBA_ITEM_BLUK_BERRY,    },
    [ITEM_NANAB_BERRY]  = {  .dataID = 0x90,  .iconID = icon_nanab_berry.NCGR,   .paletteID = pltt_nanab_berry.NCLR,    .gen3ID = GBA_ITEM_NANAB_BERRY,   },
    [ITEM_WEPEAR_BERRY] = {  .dataID = 0x91,  .iconID = icon_wepear_berry.NCGR,  .paletteID = pltt_wepear_berry.NCLR,   .gen3ID = GBA_ITEM_WEPEAR_BERRY,  },
    [ITEM_PINAP_BERRY]  = {  .dataID = 0x92,  .iconID = icon_pinap_berry.NCGR,   .paletteID = pltt_pinap_berry.NCLR,    .gen3ID = GBA_ITEM_PINAP_BERRY,   },
    [ITEM_POMEG_BERRY]  = {  .dataID = 0x93,  .iconID = icon_pomeg_berry.NCGR,   .paletteID = pltt_pomeg_berry.NCLR,    .gen3ID = GBA_ITEM_POMEG_BERRY,   },
    [ITEM_KELPSY_BERRY] = {  .dataID = 0x94,  .iconID = icon_kelpsy_berry.NCGR,  .paletteID = pltt_kelpsy_berry.NCLR,   .gen3ID = GBA_ITEM_KELPSY_BERRY,  },
    [ITEM_QUALOT_BERRY] = {  .dataID = 0x95,  .iconID = icon_qualot_berry.NCGR,  .paletteID = pltt_qualot_berry.NCLR,   .gen3ID = GBA_ITEM_QUALOT_BERRY,  },
    [ITEM_HONDEW_BERRY] = {  .dataID = 0x96,  .iconID = icon_hondew_berry.NCGR,  .paletteID = pltt_hondew_berry.NCLR,   .gen3ID = GBA_ITEM_HONDEW_BERRY,  },
    [ITEM_GREPA_BERRY]  = {  .dataID = 0x97,  .iconID = icon_grepa_berry.NCGR,   .paletteID = pltt_grepa_berry.NCLR,    .gen3ID = GBA_ITEM_GREPA_BERRY,   },
    [ITEM_TAMATO_BERRY] = {  .dataID = 0x98,  .iconID = icon_tamato_berry.NCGR,  .paletteID = pltt_tamato_berry.NCLR,   .gen3ID = GBA_ITEM_TAMATO_BERRY,  },
    [ITEM_CORNN_BERRY]  = {  .dataID = 0x99,  .iconID = icon_cornn_berry.NCGR,   .paletteID = pltt_cornn_berry.NCLR,    .gen3ID = GBA_ITEM_CORNN_BERRY,   },
    [ITEM_MAGOST_BERRY] = {  .dataID = 0x9A,  .iconID = icon_magost_berry.NCGR,  .paletteID = pltt_magost_berry.NCLR,   .gen3ID = GBA_ITEM_MAGOST_BERRY,  },
    [ITEM_RABUTA_BERRY] = {  .dataID = 0x9B,  .iconID = icon_rabuta_berry.NCGR,  .paletteID = pltt_rabuta_berry.NCLR,   .gen3ID = GBA_ITEM_RABUTA_BERRY,  },
    [ITEM_NOMEL_BERRY]  = {  .dataID = 0x9C,  .iconID = icon_nomel_berry.NCGR,   .paletteID = pltt_nomel_berry.NCLR,    .gen3ID = GBA_ITEM_NOMEL_BERRY,   },
    [ITEM_SPELON_BERRY] = {  .dataID = 0x9D,  .iconID = icon_spelon_berry.NCGR,  .paletteID = pltt_spelon_berry.NCLR,   .gen3ID = GBA_ITEM_SPELON_BERRY,  },
    [ITEM_PAMTRE_BERRY] = {  .dataID = 0x9E,  .iconID = icon_pamtre_berry.NCGR,  .paletteID = pltt_pamtre_berry.NCLR,   .gen3ID = GBA_ITEM_PAMTRE_BERRY,  },
    [ITEM_WATMEL_BERRY] = {  .dataID = 0x9F,  .iconID = icon_watmel_berry.NCGR,  .paletteID = pltt_watmel_berry.NCLR,   .gen3ID = GBA_ITEM_WATMEL_BERRY,  },
    [ITEM_DURIN_BERRY]  = {  .dataID = 0xA0,  .iconID = icon_durin_berry.NCGR,   .paletteID = pltt_durin_berry.NCLR,    .gen3ID = GBA_ITEM_DURIN_BERRY,   },
    [ITEM_BELUE_BERRY]  = {  .dataID = 0xA1,  .iconID = icon_belue_berry.NCGR,   .paletteID = pltt_belue_berry.NCLR,    .gen3ID = GBA_ITEM_BELUE_BERRY,   },
    [ITEM_OCCA_BERRY]   = {  .dataID = 0xA2,  .iconID = icon_occa_berry.NCGR,    .paletteID = pltt_occa_berry.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_PASSHO_BERRY] = {  .dataID = 0xA3,  .iconID = icon_passho_berry.NCGR,  .paletteID = pltt_passho_berry.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_WACAN_BERRY]  = {  .dataID = 0xA4,  .iconID = icon_wacan_berry.NCGR,   .paletteID = pltt_wacan_berry.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_RINDO_BERRY]  = {  .dataID = 0xA5,  .iconID = icon_rindo_berry.NCGR,   .paletteID = pltt_rindo_berry.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_YACHE_BERRY]  = {  .dataID = 0xA6,  .iconID = icon_yache_berry.NCGR,   .paletteID = pltt_yache_berry.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_CHOPLE_BERRY] = {  .dataID = 0xA7,  .iconID = icon_chople_berry.NCGR,  .paletteID = pltt_chople_berry.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_KEBIA_BERRY]  = {  .dataID = 0xA8,  .iconID = icon_kebia_berry.NCGR,   .paletteID = pltt_kebia_berry.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_SHUCA_BERRY]  = {  .dataID = 0xA9,  .iconID = icon_shuca_berry.NCGR,   .paletteID = pltt_shuca_berry.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_COBA_BERRY]   = {  .dataID = 0xAA,  .iconID = icon_coba_berry.NCGR,    .paletteID = pltt_coba_berry.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_PAYAPA_BERRY] = {  .dataID = 0xAB,  .iconID = icon_payapa_berry.NCGR,  .paletteID = pltt_payapa_berry.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TANGA_BERRY]  = {  .dataID = 0xAC,  .iconID = icon_tanga_berry.NCGR,   .paletteID = pltt_tanga_berry.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_CHARTI_BERRY] = {  .dataID = 0xAD,  .iconID = icon_charti_berry.NCGR,  .paletteID = pltt_charti_berry.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_KASIB_BERRY]  = {  .dataID = 0xAE,  .iconID = icon_kasib_berry.NCGR,   .paletteID = pltt_kasib_berry.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_HABAN_BERRY]  = {  .dataID = 0xAF,  .iconID = icon_haban_berry.NCGR,   .paletteID = pltt_haban_berry.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_COLBUR_BERRY] = {  .dataID = 0xB0,  .iconID = icon_colbur_berry.NCGR,  .paletteID = pltt_colbur_berry.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_BABIRI_BERRY] = {  .dataID = 0xB1,  .iconID = icon_babiri_berry.NCGR,  .paletteID = pltt_babiri_berry.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_CHILAN_BERRY] = {  .dataID = 0xB2,  .iconID = icon_chilan_berry.NCGR,  .paletteID = pltt_chilan_berry.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_LIECHI_BERRY] = {  .dataID = 0xB3,  .iconID = icon_liechi_berry.NCGR,  .paletteID = pltt_liechi_berry.NCLR,   .gen3ID = GBA_ITEM_LIECHI_BERRY,  },
    [ITEM_GANLON_BERRY] = {  .dataID = 0xB4,  .iconID = icon_ganlon_berry.NCGR,  .paletteID = pltt_ganlon_berry.NCLR,   .gen3ID = GBA_ITEM_GANLON_BERRY,  },
    [ITEM_SALAC_BERRY]  = {  .dataID = 0xB5,  .iconID = icon_salac_berry.NCGR,   .paletteID = pltt_salac_berry.NCLR,    .gen3ID = GBA_ITEM_SALAC_BERRY,   },
    [ITEM_PETAYA_BERRY] = {  .dataID = 0xB6,  .iconID = icon_petaya_berry.NCGR,  .paletteID = pltt_petaya_berry.NCLR,   .gen3ID = GBA_ITEM_PETAYA_BERRY,  },
    [ITEM_APICOT_BERRY] = {  .dataID = 0xB7,  .iconID = icon_apicot_berry.NCGR,  .paletteID = pltt_apicot_berry.NCLR,   .gen3ID = GBA_ITEM_APICOT_BERRY,  },
    [ITEM_LANSAT_BERRY] = {  .dataID = 0xB8,  .iconID = icon_lansat_berry.NCGR,  .paletteID = pltt_lansat_berry.NCLR,   .gen3ID = GBA_ITEM_LANSAT_BERRY,  },
    [ITEM_STARF_BERRY]  = {  .dataID = 0xB9,  .iconID = icon_starf_berry.NCGR,   .paletteID = pltt_starf_berry.NCLR,    .gen3ID = GBA_ITEM_STARF_BERRY,   },
    [ITEM_ENIGMA_BERRY] = {  .dataID = 0xBA,  .iconID = icon_enigma_berry.NCGR,  .paletteID = pltt_enigma_berry.NCLR,   .gen3ID = GBA_ITEM_ENIGMA_BERRY,  },
    [ITEM_MICLE_BERRY]  = {  .dataID = 0xBB,  .iconID = icon_micle_berry.NCGR,   .paletteID = pltt_micle_berry.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_CUSTAP_BERRY] = {  .dataID = 0xBC,  .iconID = icon_custap_berry.NCGR,  .paletteID = pltt_custap_berry.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_JABOCA_BERRY] = {  .dataID = 0xBD,  .iconID = icon_jaboca_berry.NCGR,  .paletteID = pltt_jaboca_berry.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_ROWAP_BERRY]  = {  .dataID = 0xBE,  .iconID = icon_rowap_berry.NCGR,   .paletteID = pltt_rowap_berry.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_BRIGHTPOWDER] = {  .dataID = 0xBF,  .iconID = icon_brightpowder.NCGR,  .paletteID = pltt_brightpowder.NCLR,   .gen3ID = GBA_ITEM_BRIGHT_POWDER, },
    [ITEM_WHITE_HERB]   = {  .dataID = 0xC0,  .iconID = icon_herb.NCGR,          .paletteID = pltt_white_herb.NCLR,     .gen3ID = GBA_ITEM_WHITE_HERB,    },
    [ITEM_MACHO_BRACE]  = {  .dataID = 0xC1,  .iconID = icon_macho_brace.NCGR,   .paletteID = pltt_macho_brace.NCLR,    .gen3ID = GBA_ITEM_MACHO_BRACE,   },
    [ITEM_EXP_SHARE]    = {  .dataID = 0xC2,  .iconID = icon_exp_share.NCGR,     .paletteID = pltt_exp_share.NCLR,      .gen3ID = GBA_ITEM_EXP_SHARE,     },
    [ITEM_QUICK_CLAW]   = {  .dataID = 0xC3,  .iconID = icon_quick_claw.NCGR,    .paletteID = pltt_quick_claw.NCLR,     .gen3ID = GBA_ITEM_QUICK_CLAW,    },
    [ITEM_SOOTHE_BELL]  = {  .dataID = 0xC4,  .iconID = icon_soothe_bell.NCGR,   .paletteID = pltt_soothe_bell.NCLR,    .gen3ID = GBA_ITEM_SOOTHE_BELL,   },
    [ITEM_MENTAL_HERB]  = {  .dataID = 0xC5,  .iconID = icon_herb.NCGR,          .paletteID = pltt_mental_herb.NCLR,    .gen3ID = GBA_ITEM_MENTAL_HERB,   },
    [ITEM_CHOICE_BAND]  = {  .dataID = 0xC6,  .iconID = icon_choice_band.NCGR,   .paletteID = pltt_choice_band.NCLR,    .gen3ID = GBA_ITEM_CHOICE_BAND,   },
    [ITEM_KINGS_ROCK]   = {  .dataID = 0xC7,  .iconID = icon_kings_rock.NCGR,    .paletteID = pltt_kings_rock.NCLR,     .gen3ID = GBA_ITEM_KINGS_ROCK,    },
    [ITEM_SILVERPOWDER] = {  .dataID = 0xC8,  .iconID = icon_silverpowder.NCGR,  .paletteID = pltt_silverpowder.NCLR,   .gen3ID = GBA_ITEM_SILVER_POWDER, },
    [ITEM_AMULET_COIN]  = {  .dataID = 0xC9,  .iconID = icon_amulet_coin.NCGR,   .paletteID = pltt_amulet_coin.NCLR,    .gen3ID = GBA_ITEM_AMULET_COIN,   },
    [ITEM_CLEANSE_TAG]  = {  .dataID = 0xCA,  .iconID = icon_cleanse_tag.NCGR,   .paletteID = pltt_cleanse_tag.NCLR,    .gen3ID = GBA_ITEM_CLEANSE_TAG,   },
    [ITEM_SOUL_DEW]     = {  .dataID = 0xCB,  .iconID = icon_soul_dew.NCGR,      .paletteID = pltt_soul_dew.NCLR,       .gen3ID = GBA_ITEM_SOUL_DEW,      },
    [ITEM_DEEPSEATOOTH] = {  .dataID = 0xCC,  .iconID = icon_deepseatooth.NCGR,  .paletteID = pltt_deepseatooth.NCLR,   .gen3ID = GBA_ITEM_DEEP_SEA_TOOTH,},
    [ITEM_DEEPSEASCALE] = {  .dataID = 0xCD,  .iconID = icon_deepseascale.NCGR,  .paletteID = pltt_deepseascale.NCLR,   .gen3ID = GBA_ITEM_DEEP_SEA_SCALE,},
    [ITEM_SMOKE_BALL]   = {  .dataID = 0xCE,  .iconID = icon_smoke_ball.NCGR,    .paletteID = pltt_smoke_ball.NCLR,     .gen3ID = GBA_ITEM_SMOKE_BALL,    },
    [ITEM_EVERSTONE]    = {  .dataID = 0xCF,  .iconID = icon_everstone.NCGR,     .paletteID = pltt_everstone.NCLR,      .gen3ID = GBA_ITEM_EVERSTONE,     },
    [ITEM_FOCUS_BAND]   = {  .dataID = 0xD0,  .iconID = icon_focus_band.NCGR,    .paletteID = pltt_focus_band.NCLR,     .gen3ID = GBA_ITEM_FOCUS_BAND,    },
    [ITEM_LUCKY_EGG]    = {  .dataID = 0xD1,  .iconID = icon_lucky_egg.NCGR,     .paletteID = pltt_lucky_egg.NCLR,      .gen3ID = GBA_ITEM_LUCKY_EGG,     },
    [ITEM_SCOPE_LENS]   = {  .dataID = 0xD2,  .iconID = icon_scope_lens.NCGR,    .paletteID = pltt_scope_lens.NCLR,     .gen3ID = GBA_ITEM_SCOPE_LENS,    },
    [ITEM_METAL_COAT]   = {  .dataID = 0xD3,  .iconID = icon_metal_coat.NCGR,    .paletteID = pltt_metal_coat.NCLR,     .gen3ID = GBA_ITEM_METAL_COAT,    },
    [ITEM_LEFTOVERS]    = {  .dataID = 0xD4,  .iconID = icon_leftovers.NCGR,     .paletteID = pltt_leftovers.NCLR,      .gen3ID = GBA_ITEM_LEFTOVERS,     },
    [ITEM_DRAGON_SCALE] = {  .dataID = 0xD5,  .iconID = icon_dragon_scale.NCGR,  .paletteID = pltt_dragon_scale.NCLR,   .gen3ID = GBA_ITEM_DRAGON_SCALE,  },
    [ITEM_LIGHT_BALL]   = {  .dataID = 0xD6,  .iconID = icon_light_ball.NCGR,    .paletteID = pltt_light_ball.NCLR,     .gen3ID = GBA_ITEM_LIGHT_BALL,    },
    [ITEM_SOFT_SAND]    = {  .dataID = 0xD7,  .iconID = icon_soft_sand.NCGR,     .paletteID = pltt_soft_sand.NCLR,      .gen3ID = GBA_ITEM_SOFT_SAND,     },
    [ITEM_HARD_STONE]   = {  .dataID = 0xD8,  .iconID = icon_hard_stone.NCGR,    .paletteID = pltt_hard_stone.NCLR,     .gen3ID = GBA_ITEM_HARD_STONE,    },
    [ITEM_MIRACLE_SEED] = {  .dataID = 0xD9,  .iconID = icon_miracle_seed.NCGR,  .paletteID = pltt_miracle_seed.NCLR,   .gen3ID = GBA_ITEM_MIRACLE_SEED,  },
    [ITEM_BLACKGLASSES] = {  .dataID = 0xDA,  .iconID = icon_blackglasses.NCGR,  .paletteID = pltt_blackglasses.NCLR,   .gen3ID = GBA_ITEM_BLACK_GLASSES, },
    [ITEM_BLACK_BELT]   = {  .dataID = 0xDB,  .iconID = icon_black_belt.NCGR,    .paletteID = pltt_blackglasses.NCLR,   .gen3ID = GBA_ITEM_BLACK_BELT,    },
    [ITEM_MAGNET]       = {  .dataID = 0xDC,  .iconID = icon_magnet.NCGR,        .paletteID = pltt_magnet.NCLR,         .gen3ID = GBA_ITEM_MAGNET,        },
    [ITEM_MYSTIC_WATER] = {  .dataID = 0xDD,  .iconID = icon_mystic_water.NCGR,  .paletteID = pltt_mystic_water.NCLR,   .gen3ID = GBA_ITEM_MYSTIC_WATER,  },
    [ITEM_SHARP_BEAK]   = {  .dataID = 0xDE,  .iconID = icon_sharp_beak.NCGR,    .paletteID = pltt_sharp_beak.NCLR,     .gen3ID = GBA_ITEM_SHARP_BEAK,    },
    [ITEM_POISON_BARB]  = {  .dataID = 0xDF,  .iconID = icon_poison_barb.NCGR,   .paletteID = pltt_poison_barb.NCLR,    .gen3ID = GBA_ITEM_POISON_BARB,   },
    [ITEM_NEVERMELTICE] = {  .dataID = 0xE0,  .iconID = icon_nevermeltice.NCGR,  .paletteID = pltt_nevermeltice.NCLR,   .gen3ID = GBA_ITEM_NEVER_MELT_ICE,},
    [ITEM_SPELL_TAG]    = {  .dataID = 0xE1,  .iconID = icon_spell_tag.NCGR,     .paletteID = pltt_spell_tag.NCLR,      .gen3ID = GBA_ITEM_SPELL_TAG,     },
    [ITEM_TWISTEDSPOON] = {  .dataID = 0xE2,  .iconID = icon_twisted_spoon.NCGR, .paletteID = pltt_twisted_spoon.NCLR,  .gen3ID = GBA_ITEM_TWISTED_SPOON, },
    [ITEM_CHARCOAL]     = {  .dataID = 0xE3,  .iconID = icon_charcoal.NCGR,      .paletteID = pltt_charcoal.NCLR,       .gen3ID = GBA_ITEM_CHARCOAL,      },
    [ITEM_DRAGON_FANG]  = {  .dataID = 0xE4,  .iconID = icon_dragon_fang.NCGR,   .paletteID = pltt_dragon_fang.NCLR,    .gen3ID = GBA_ITEM_DRAGON_FANG,   },
    [ITEM_SILK_SCARF]   = {  .dataID = 0xE5,  .iconID = icon_silk_scarf.NCGR,    .paletteID = pltt_silk_scarf.NCLR,     .gen3ID = GBA_ITEM_SILK_SCARF,    },
    [ITEM_UPGRADE]      = {  .dataID = 0xE6,  .iconID = icon_upgrade.NCGR,       .paletteID = pltt_upgrade.NCLR,        .gen3ID = GBA_ITEM_UP_GRADE,      },
    [ITEM_SHELL_BELL]   = {  .dataID = 0xE7,  .iconID = icon_shell_bell.NCGR,    .paletteID = pltt_shoal_shell.NCLR,    .gen3ID = GBA_ITEM_SHELL_BELL,    },
    [ITEM_SEA_INCENSE]  = {  .dataID = 0xE8,  .iconID = icon_sea_incense.NCGR,   .paletteID = pltt_sea_incense.NCLR,    .gen3ID = GBA_ITEM_SEA_INCENSE,   },
    [ITEM_LAX_INCENSE]  = {  .dataID = 0xE9,  .iconID = icon_lax_incense.NCGR,   .paletteID = pltt_lax_incense.NCLR,    .gen3ID = GBA_ITEM_LAX_INCENSE,   },
    [ITEM_LUCKY_PUNCH]  = {  .dataID = 0xEA,  .iconID = icon_lucky_punch.NCGR,   .paletteID = pltt_lucky_punch.NCLR,    .gen3ID = GBA_ITEM_LUCKY_PUNCH,   },
    [ITEM_METAL_POWDER] = {  .dataID = 0xEB,  .iconID = icon_powder.NCGR,        .paletteID = pltt_metal_powder.NCLR,   .gen3ID = GBA_ITEM_METAL_POWDER,  },
    [ITEM_THICK_CLUB]   = {  .dataID = 0xEC,  .iconID = icon_bone.NCGR,          .paletteID = pltt_bone.NCLR,           .gen3ID = GBA_ITEM_THICK_CLUB,    },
    [ITEM_STICK]        = {  .dataID = 0xED,  .iconID = icon_stick.NCGR,         .paletteID = pltt_stick.NCLR,          .gen3ID = GBA_ITEM_STICK,         },
    [ITEM_RED_SCARF]    = {  .dataID = 0xEE,  .iconID = icon_scarf.NCGR,         .paletteID = pltt_red_scarf.NCLR,      .gen3ID = GBA_ITEM_RED_SCARF,     },
    [ITEM_BLUE_SCARF]   = {  .dataID = 0xEF,  .iconID = icon_scarf.NCGR,         .paletteID = pltt_blue_scarf.NCLR,     .gen3ID = GBA_ITEM_BLUE_SCARF,    },
    [ITEM_PINK_SCARF]   = {  .dataID = 0xF0,  .iconID = icon_scarf.NCGR,         .paletteID = pltt_pink_scarf.NCLR,     .gen3ID = GBA_ITEM_PINK_SCARF,    },
    [ITEM_GREEN_SCARF]  = {  .dataID = 0xF1,  .iconID = icon_scarf.NCGR,         .paletteID = pltt_green_scarf.NCLR,    .gen3ID = GBA_ITEM_GREEN_SCARF,   },
    [ITEM_YELLOW_SCARF] = {  .dataID = 0xF2,  .iconID = icon_scarf.NCGR,         .paletteID = pltt_yellow_scarf.NCLR,   .gen3ID = GBA_ITEM_YELLOW_SCARF,  },
    [ITEM_WIDE_LENS]    = {  .dataID = 0xF3,  .iconID = icon_wide_lens.NCGR,     .paletteID = pltt_wide_lens.NCLR,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_MUSCLE_BAND]  = {  .dataID = 0xF4,  .iconID = icon_muscle_band.NCGR,   .paletteID = pltt_muscle_band.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_WISE_GLASSES] = {  .dataID = 0xF5,  .iconID = icon_wise_glasses.NCGR,  .paletteID = pltt_wise_glasses.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_EXPERT_BELT]  = {  .dataID = 0xF6,  .iconID = icon_expert_belt.NCGR,   .paletteID = pltt_expert_belt.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_LIGHT_CLAY]   = {  .dataID = 0xF7,  .iconID = icon_light_clay.NCGR,    .paletteID = pltt_light_clay.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_LIFE_ORB]     = {  .dataID = 0xF8,  .iconID = icon_life_orb.NCGR,      .paletteID = pltt_life_orb.NCLR,       .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_POWER_HERB]   = {  .dataID = 0xF9,  .iconID = icon_power_herb.NCGR,    .paletteID = pltt_power_herb.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TOXIC_ORB]    = {  .dataID = 0xFA,  .iconID = icon_toxic_orb.NCGR,     .paletteID = pltt_toxic_orb.NCLR,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_FLAME_ORB]    = {  .dataID = 0xFB,  .iconID = icon_flame_orb.NCGR,     .paletteID = pltt_flame_orb.NCLR,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_QUICK_POWDER] = {  .dataID = 0xFC,  .iconID = icon_powder.NCGR,        .paletteID = pltt_quick_powder.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_FOCUS_SASH]   = {  .dataID = 0xFD,  .iconID = icon_focus_sash.NCGR,    .paletteID = pltt_focus_sash.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_ZOOM_LENS]    = {  .dataID = 0xFE,  .iconID = icon_zoom_lens.NCGR,     .paletteID = pltt_zoom_lens.NCLR,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_METRONOME]    = {  .dataID = 0xFF,  .iconID = icon_metronome.NCGR,     .paletteID = pltt_metronome.NCLR,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_IRON_BALL]    = {  .dataID = 0x100, .iconID = icon_iron_ball.NCGR,     .paletteID = pltt_iron_ball.NCLR,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_LAGGING_TAIL] = {  .dataID = 0x101, .iconID = icon_lagging_tail.NCGR,  .paletteID = pltt_lagging_tail.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_DESTINY_KNOT] = {  .dataID = 0x102, .iconID = icon_destiny_knot.NCGR,  .paletteID = pltt_destiny_knot.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_BLACK_SLUDGE] = {  .dataID = 0x103, .iconID = icon_black_sludge.NCGR,  .paletteID = pltt_black_sludge.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_ICY_ROCK]     = {  .dataID = 0x104, .iconID = icon_icy_rock.NCGR,      .paletteID = pltt_icy_rock.NCLR,       .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_SMOOTH_ROCK]  = {  .dataID = 0x105, .iconID = icon_smooth_rock.NCGR,   .paletteID = pltt_smooth_rock.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_HEAT_ROCK]    = {  .dataID = 0x106, .iconID = icon_heat_rock.NCGR,     .paletteID = pltt_heat_rock.NCLR,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_DAMP_ROCK]    = {  .dataID = 0x107, .iconID = icon_damp_rock.NCGR,     .paletteID = pltt_damp_rock.NCLR,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_GRIP_CLAW]    = {  .dataID = 0x108, .iconID = icon_grip_claw.NCGR,     .paletteID = pltt_grip_claw.NCLR,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_CHOICE_SCARF] = {  .dataID = 0x109, .iconID = icon_choice_scarf.NCGR,  .paletteID = pltt_choice_scarf.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_STICKY_BARB]  = {  .dataID = 0x10A, .iconID = icon_sticky_barb.NCGR,   .paletteID = pltt_sticky_barb.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_POWER_BRACER] = {  .dataID = 0x10B, .iconID = icon_power_bracer.NCGR,  .paletteID = pltt_power_bracer.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_POWER_BELT]   = {  .dataID = 0x10C, .iconID = icon_power_belt.NCGR,    .paletteID = pltt_power_belt.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_POWER_LENS]   = {  .dataID = 0x10D, .iconID = icon_power_lens.NCGR,    .paletteID = pltt_power_lens.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_POWER_BAND]   = {  .dataID = 0x10E, .iconID = icon_power_band.NCGR,    .paletteID = pltt_power_band.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_POWER_ANKLET] = {  .dataID = 0x10F, .iconID = icon_power_anklet.NCGR,  .paletteID = pltt_power_anklet.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_POWER_WEIGHT] = {  .dataID = 0x110, .iconID = icon_power_weight.NCGR,  .paletteID = pltt_power_weight.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_SHED_SHELL]   = {  .dataID = 0x111, .iconID = icon_shed_shell.NCGR,    .paletteID = pltt_shed_shell.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_BIG_ROOT]     = {  .dataID = 0x112, .iconID = icon_big_root.NCGR,      .paletteID = pltt_big_root.NCLR,       .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_CHOICE_SPECS] = {  .dataID = 0x113, .iconID = icon_choice_specs.NCGR,  .paletteID = pltt_choice_specs.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_FLAME_PLATE]  = {  .dataID = 0x114, .iconID = icon_plate.NCGR,         .paletteID = pltt_flame_plate.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_SPLASH_PLATE] = {  .dataID = 0x115, .iconID = icon_plate.NCGR,         .paletteID = pltt_splash_plate.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_ZAP_PLATE]    = {  .dataID = 0x116, .iconID = icon_plate.NCGR,         .paletteID = pltt_zap_plate.NCLR,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_MEADOW_PLATE] = {  .dataID = 0x117, .iconID = icon_plate.NCGR,         .paletteID = pltt_meadow_plate.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_ICICLE_PLATE] = {  .dataID = 0x118, .iconID = icon_plate.NCGR,         .paletteID = pltt_icicle_plate.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_FIST_PLATE]   = {  .dataID = 0x119, .iconID = icon_plate.NCGR,         .paletteID = pltt_fist_plate.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TOXIC_PLATE]  = {  .dataID = 0x11A, .iconID = icon_plate.NCGR,         .paletteID = pltt_toxic_plate.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_EARTH_PLATE]  = {  .dataID = 0x11B, .iconID = icon_plate.NCGR,         .paletteID = pltt_earth_plate.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_SKY_PLATE]    = {  .dataID = 0x11C, .iconID = icon_plate.NCGR,         .paletteID = pltt_sky_plate.NCLR,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_MIND_PLATE]   = {  .dataID = 0x11D, .iconID = icon_plate.NCGR,         .paletteID = pltt_mind_plate.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_INSECT_PLATE] = {  .dataID = 0x11E, .iconID = icon_plate.NCGR,         .paletteID = pltt_insect_plate.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_STONE_PLATE]  = {  .dataID = 0x11F, .iconID = icon_plate.NCGR,         .paletteID = pltt_stone_plate.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_SPOOKY_PLATE] = {  .dataID = 0x120, .iconID = icon_plate.NCGR,         .paletteID = pltt_spooky_plate.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_DRACO_PLATE]  = {  .dataID = 0x121, .iconID = icon_plate.NCGR,         .paletteID = pltt_draco_plate.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_DREAD_PLATE]  = {  .dataID = 0x122, .iconID = icon_plate.NCGR,         .paletteID = pltt_dread_plate.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_IRON_PLATE]   = {  .dataID = 0x123, .iconID = icon_plate.NCGR,         .paletteID = pltt_iron_plate.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_ODD_INCENSE]  = {  .dataID = 0x124, .iconID = icon_odd_incense.NCGR,   .paletteID = pltt_odd_incense.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_ROCK_INCENSE] = {  .dataID = 0x125, .iconID = icon_rock_incense.NCGR,  .paletteID = pltt_rock_incense.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_FULL_INCENSE] = {  .dataID = 0x126, .iconID = icon_full_incense.NCGR,  .paletteID = pltt_full_incense.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_WAVE_INCENSE] = {  .dataID = 0x127, .iconID = icon_wave_incense.NCGR,  .paletteID = pltt_wave_incense.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_ROSE_INCENSE] = {  .dataID = 0x128, .iconID = icon_rose_incense.NCGR,  .paletteID = pltt_rose_incense.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_LUCK_INCENSE] = {  .dataID = 0x129, .iconID = icon_luck_incense.NCGR,  .paletteID = pltt_luck_incense.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_PURE_INCENSE] = {  .dataID = 0x12A, .iconID = icon_pure_incense.NCGR,  .paletteID = pltt_pure_incense.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_PROTECTOR]    = {  .dataID = 0x12B, .iconID = icon_protector.NCGR,     .paletteID = pltt_protector.NCLR,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_ELECTIRIZER]  = {  .dataID = 0x12C, .iconID = icon_electirizer.NCGR,   .paletteID = pltt_electirizer.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_MAGMARIZER]   = {  .dataID = 0x12D, .iconID = icon_magmarizer.NCGR,    .paletteID = pltt_magmarizer.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_DUBIOUS_DISC] = {  .dataID = 0x12E, .iconID = icon_dubious_disc.NCGR,  .paletteID = pltt_dubious_disc.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_REAPER_CLOTH] = {  .dataID = 0x12F, .iconID = icon_reaper_cloth.NCGR,  .paletteID = pltt_reaper_cloth.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_RAZOR_CLAW]   = {  .dataID = 0x130, .iconID = icon_razor_claw.NCGR,    .paletteID = pltt_razor_claw.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_RAZOR_FANG]   = {  .dataID = 0x131, .iconID = icon_razor_fang.NCGR,    .paletteID = pltt_razor_fang.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM01]         = {  .dataID = 0x132, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_fighting.NCLR, .gen3ID = GBA_ITEM_TM01,          },
    [ITEM_TM02]         = {  .dataID = 0x133, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_dragon.NCLR,   .gen3ID = GBA_ITEM_TM02,          },
    [ITEM_TM03]         = {  .dataID = 0x134, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_water.NCLR,    .gen3ID = GBA_ITEM_TM03,          },
    [ITEM_TM04]         = {  .dataID = 0x135, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_psychic.NCLR,  .gen3ID = GBA_ITEM_TM04,          },
    [ITEM_TM05]         = {  .dataID = 0x136, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_normal.NCLR,   .gen3ID = GBA_ITEM_TM05,          },
    [ITEM_TM06]         = {  .dataID = 0x137, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_poison.NCLR,   .gen3ID = GBA_ITEM_TM06,          },
    [ITEM_TM07]         = {  .dataID = 0x138, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_ice.NCLR,      .gen3ID = GBA_ITEM_TM07,          },
    [ITEM_TM08]         = {  .dataID = 0x139, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_fighting.NCLR, .gen3ID = GBA_ITEM_TM08,          },
    [ITEM_TM09]         = {  .dataID = 0x13A, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_grass.NCLR,    .gen3ID = GBA_ITEM_TM09,          },
    [ITEM_TM10]         = {  .dataID = 0x13B, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_normal.NCLR,   .gen3ID = GBA_ITEM_TM10,          },
    [ITEM_TM11]         = {  .dataID = 0x13C, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_fire.NCLR,     .gen3ID = GBA_ITEM_TM11,          },
    [ITEM_TM12]         = {  .dataID = 0x13D, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_dark.NCLR,     .gen3ID = GBA_ITEM_TM12,          },
    [ITEM_TM13]         = {  .dataID = 0x13E, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_ice.NCLR,      .gen3ID = GBA_ITEM_TM13,          },
    [ITEM_TM14]         = {  .dataID = 0x13F, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_ice.NCLR,      .gen3ID = GBA_ITEM_TM14,          },
    [ITEM_TM15]         = {  .dataID = 0x140, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_normal.NCLR,   .gen3ID = GBA_ITEM_TM15,          },
    [ITEM_TM16]         = {  .dataID = 0x141, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_psychic.NCLR,  .gen3ID = GBA_ITEM_TM16,          },
    [ITEM_TM17]         = {  .dataID = 0x142, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_normal.NCLR,   .gen3ID = GBA_ITEM_TM17,          },
    [ITEM_TM18]         = {  .dataID = 0x143, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_water.NCLR,    .gen3ID = GBA_ITEM_TM18,          },
    [ITEM_TM19]         = {  .dataID = 0x144, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_grass.NCLR,    .gen3ID = GBA_ITEM_TM19,          },
    [ITEM_TM20]         = {  .dataID = 0x145, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_normal.NCLR,   .gen3ID = GBA_ITEM_TM20,          },
    [ITEM_TM21]         = {  .dataID = 0x146, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_normal.NCLR,   .gen3ID = GBA_ITEM_TM21,          },
    [ITEM_TM22]         = {  .dataID = 0x147, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_grass.NCLR,    .gen3ID = GBA_ITEM_TM22,          },
    [ITEM_TM23]         = {  .dataID = 0x148, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_steel.NCLR,    .gen3ID = GBA_ITEM_TM23,          },
    [ITEM_TM24]         = {  .dataID = 0x149, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_electric.NCLR, .gen3ID = GBA_ITEM_TM24,          },
    [ITEM_TM25]         = {  .dataID = 0x14A, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_electric.NCLR, .gen3ID = GBA_ITEM_TM25,          },
    [ITEM_TM26]         = {  .dataID = 0x14B, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_ground.NCLR,   .gen3ID = GBA_ITEM_TM26,          },
    [ITEM_TM27]         = {  .dataID = 0x14C, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_normal.NCLR,   .gen3ID = GBA_ITEM_TM27,          },
    [ITEM_TM28]         = {  .dataID = 0x14D, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_ground.NCLR,   .gen3ID = GBA_ITEM_TM28,          },
    [ITEM_TM29]         = {  .dataID = 0x14E, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_psychic.NCLR,  .gen3ID = GBA_ITEM_TM29,          },
    [ITEM_TM30]         = {  .dataID = 0x14F, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_ghost.NCLR,    .gen3ID = GBA_ITEM_TM30,          },
    [ITEM_TM31]         = {  .dataID = 0x150, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_fighting.NCLR, .gen3ID = GBA_ITEM_TM31,          },
    [ITEM_TM32]         = {  .dataID = 0x151, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_normal.NCLR,   .gen3ID = GBA_ITEM_TM32,          },
    [ITEM_TM33]         = {  .dataID = 0x152, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_psychic.NCLR,  .gen3ID = GBA_ITEM_TM33,          },
    [ITEM_TM34]         = {  .dataID = 0x153, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_electric.NCLR, .gen3ID = GBA_ITEM_TM34,          },
    [ITEM_TM35]         = {  .dataID = 0x154, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_fire.NCLR,     .gen3ID = GBA_ITEM_TM35,          },
    [ITEM_TM36]         = {  .dataID = 0x155, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_poison.NCLR,   .gen3ID = GBA_ITEM_TM36,          },
    [ITEM_TM37]         = {  .dataID = 0x156, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_rock.NCLR,     .gen3ID = GBA_ITEM_TM37,          },
    [ITEM_TM38]         = {  .dataID = 0x157, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_fire.NCLR,     .gen3ID = GBA_ITEM_TM38,          },
    [ITEM_TM39]         = {  .dataID = 0x158, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_rock.NCLR,     .gen3ID = GBA_ITEM_TM39,          },
    [ITEM_TM40]         = {  .dataID = 0x159, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_flying.NCLR,   .gen3ID = GBA_ITEM_TM40,          },
    [ITEM_TM41]         = {  .dataID = 0x15A, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_dark.NCLR,     .gen3ID = GBA_ITEM_TM41,          },
    [ITEM_TM42]         = {  .dataID = 0x15B, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_normal.NCLR,   .gen3ID = GBA_ITEM_TM42,          },
    [ITEM_TM43]         = {  .dataID = 0x15C, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_normal.NCLR,   .gen3ID = GBA_ITEM_TM43,          },
    [ITEM_TM44]         = {  .dataID = 0x15D, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_psychic.NCLR,  .gen3ID = GBA_ITEM_TM44,          },
    [ITEM_TM45]         = {  .dataID = 0x15E, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_normal.NCLR,   .gen3ID = GBA_ITEM_TM45,          },
    [ITEM_TM46]         = {  .dataID = 0x15F, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_dark.NCLR,     .gen3ID = GBA_ITEM_TM46,          },
    [ITEM_TM47]         = {  .dataID = 0x160, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_steel.NCLR,    .gen3ID = GBA_ITEM_TM47,          },
    [ITEM_TM48]         = {  .dataID = 0x161, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_psychic.NCLR,  .gen3ID = GBA_ITEM_TM48,          },
    [ITEM_TM49]         = {  .dataID = 0x162, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_dark.NCLR,     .gen3ID = GBA_ITEM_TM49,          },
    [ITEM_TM50]         = {  .dataID = 0x163, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_fire.NCLR,     .gen3ID = GBA_ITEM_TM50,          },
    [ITEM_TM51]         = {  .dataID = 0x164, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_flying.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM52]         = {  .dataID = 0x165, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_fighting.NCLR, .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM53]         = {  .dataID = 0x166, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_grass.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM54]         = {  .dataID = 0x167, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_normal.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM55]         = {  .dataID = 0x168, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_water.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM56]         = {  .dataID = 0x169, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_dark.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM57]         = {  .dataID = 0x16A, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_electric.NCLR, .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM58]         = {  .dataID = 0x16B, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_normal.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM59]         = {  .dataID = 0x16C, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_dragon.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM60]         = {  .dataID = 0x16D, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_fighting.NCLR, .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM61]         = {  .dataID = 0x16E, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_fire.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM62]         = {  .dataID = 0x16F, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_bug.NCLR,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM63]         = {  .dataID = 0x170, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_dark.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM64]         = {  .dataID = 0x171, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_normal.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM65]         = {  .dataID = 0x172, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_ghost.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM66]         = {  .dataID = 0x173, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_dark.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM67]         = {  .dataID = 0x174, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_normal.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM68]         = {  .dataID = 0x175, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_normal.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM69]         = {  .dataID = 0x176, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_rock.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM70]         = {  .dataID = 0x177, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_normal.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM71]         = {  .dataID = 0x178, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_rock.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM72]         = {  .dataID = 0x179, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_ice.NCLR,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM73]         = {  .dataID = 0x17A, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_electric.NCLR, .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM74]         = {  .dataID = 0x17B, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_steel.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM75]         = {  .dataID = 0x17C, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_normal.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM76]         = {  .dataID = 0x17D, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_rock.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM77]         = {  .dataID = 0x17E, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_normal.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM78]         = {  .dataID = 0x17F, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_normal.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM79]         = {  .dataID = 0x180, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_dark.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM80]         = {  .dataID = 0x181, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_rock.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM81]         = {  .dataID = 0x182, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_bug.NCLR,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM82]         = {  .dataID = 0x183, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_normal.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM83]         = {  .dataID = 0x184, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_normal.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM84]         = {  .dataID = 0x185, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_poison.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM85]         = {  .dataID = 0x186, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_psychic.NCLR,  .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM86]         = {  .dataID = 0x187, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_grass.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM87]         = {  .dataID = 0x188, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_normal.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM88]         = {  .dataID = 0x189, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_flying.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM89]         = {  .dataID = 0x18A, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_bug.NCLR,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM90]         = {  .dataID = 0x18B, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_normal.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM91]         = {  .dataID = 0x18C, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_steel.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM92]         = {  .dataID = 0x18D, .iconID = icon_tm.NCGR,            .paletteID = pltt_tm_hm_psychic.NCLR,  .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_HM01]         = {  .dataID = 0x18E, .iconID = icon_hm.NCGR,            .paletteID = pltt_tm_hm_normal.NCLR,   .gen3ID = GBA_ITEM_HM01,          },
    [ITEM_HM02]         = {  .dataID = 0x18F, .iconID = icon_hm.NCGR,            .paletteID = pltt_tm_hm_flying.NCLR,   .gen3ID = GBA_ITEM_HM02,          },
    [ITEM_HM03]         = {  .dataID = 0x190, .iconID = icon_hm.NCGR,            .paletteID = pltt_tm_hm_water.NCLR,    .gen3ID = GBA_ITEM_HM03,          },
    [ITEM_HM04]         = {  .dataID = 0x191, .iconID = icon_hm.NCGR,            .paletteID = pltt_tm_hm_normal.NCLR,   .gen3ID = GBA_ITEM_HM04,          },
    [ITEM_HM05]         = {  .dataID = 0x192, .iconID = icon_hm.NCGR,            .paletteID = pltt_tm_hm_water.NCLR,    .gen3ID = GBA_ITEM_HM05,          },
    [ITEM_HM06]         = {  .dataID = 0x193, .iconID = icon_hm.NCGR,            .paletteID = pltt_tm_hm_fighting.NCLR, .gen3ID = GBA_ITEM_HM06,          },
    [ITEM_HM07]         = {  .dataID = 0x194, .iconID = icon_hm.NCGR,            .paletteID = pltt_tm_hm_water.NCLR,    .gen3ID = GBA_ITEM_HM07,          },
    [ITEM_HM08]         = {  .dataID = 0x195, .iconID = icon_hm.NCGR,            .paletteID = pltt_tm_hm_normal.NCLR,   .gen3ID = GBA_ITEM_HM08,          },
    [ITEM_EXPLORER_KIT] = {  .dataID = 0x196, .iconID = icon_explorer_kit.NCGR,  .paletteID = pltt_explorer_kit.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_LOOT_SACK]    = {  .dataID = 0x197, .iconID = icon_loot_sack.NCGR,     .paletteID = pltt_loot_sack.NCLR,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_RULE_BOOK]    = {  .dataID = 0x198, .iconID = icon_rule_book.NCGR,     .paletteID = pltt_rule_book.NCLR,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_POKE_RADAR]   = {  .dataID = 0x199, .iconID = icon_poke_radar.NCGR,    .paletteID = pltt_poke_radar.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_POINT_CARD]   = {  .dataID = 0x19A, .iconID = icon_point_card.NCGR,    .paletteID = pltt_point_card.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_JOURNAL]      = {  .dataID = 0x19B, .iconID = icon_journal.NCGR,       .paletteID = pltt_journal.NCLR,        .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_SEAL_CASE]    = {  .dataID = 0x19C, .iconID = icon_seal_case.NCGR,     .paletteID = pltt_seal_case.NCLR,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_FASHION_CASE] = {  .dataID = 0x19D, .iconID = icon_fashion_case.NCGR,  .paletteID = pltt_fashion_case.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_SEAL_BAG]     = {  .dataID = 0x19E, .iconID = icon_seal_bag.NCGR,      .paletteID = pltt_seal_bag.NCLR,       .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_PAL_PAD]      = {  .dataID = 0x19F, .iconID = icon_seal_pad.NCGR,      .paletteID = pltt_seal_pad.NCLR,       .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_WORKS_KEY]    = {  .dataID = 0x1A0, .iconID = icon_works_key.NCGR,     .paletteID = pltt_works_key.NCLR,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_OLD_CHARM]    = {  .dataID = 0x1A1, .iconID = icon_old_charm.NCGR,     .paletteID = pltt_old_charm.NCLR,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_GALACTIC_KEY] = {  .dataID = 0x1A2, .iconID = icon_galactic_key.NCGR,  .paletteID = pltt_galactic_key.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_RED_CHAIN]    = {  .dataID = 0x1A3, .iconID = icon_red_chain.NCGR,     .paletteID = pltt_red_chain.NCLR,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TOWN_MAP]     = {  .dataID = 0x1A4, .iconID = icon_town_map.NCGR,      .paletteID = pltt_town_map.NCLR,       .gen3ID = GBA_ITEM_TOWN_MAP,      },
    [ITEM_VS_SEEKER]    = {  .dataID = 0x1A5, .iconID = icon_vs_seeker.NCGR,     .paletteID = pltt_vs_seeker.NCLR,      .gen3ID = GBA_ITEM_VS_SEEKER,     },
    [ITEM_COIN_CASE]    = {  .dataID = 0x1A6, .iconID = icon_coin_case.NCGR,     .paletteID = pltt_coin_case.NCLR,      .gen3ID = GBA_ITEM_COIN_CASE,     },
    [ITEM_OLD_ROD]      = {  .dataID = 0x1A7, .iconID = icon_old_rod.NCGR,       .paletteID = pltt_old_rod.NCLR,        .gen3ID = GBA_ITEM_OLD_ROD,       },
    [ITEM_GOOD_ROD]     = {  .dataID = 0x1A8, .iconID = icon_good_rod.NCGR,      .paletteID = pltt_good_rod.NCLR,       .gen3ID = GBA_ITEM_GOOD_ROD,      },
    [ITEM_SUPER_ROD]    = {  .dataID = 0x1A9, .iconID = icon_super_rod.NCGR,     .paletteID = pltt_super_rod.NCLR,      .gen3ID = GBA_ITEM_SUPER_ROD,     },
    [ITEM_SPRAYDUCK]    = {  .dataID = 0x1AA, .iconID = icon_sprayduck.NCGR,     .paletteID = pltt_sprayduck.NCLR,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_POFFIN_CASE]  = {  .dataID = 0x1AB, .iconID = icon_poffin_case.NCGR,   .paletteID = pltt_poffin_case.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_BICYCLE]      = {  .dataID = 0x1AC, .iconID = icon_bicycle.NCGR,       .paletteID = pltt_bicycle.NCLR,        .gen3ID = GBA_ITEM_BICYCLE,       },
    [ITEM_SUITE_KEY]    = {  .dataID = 0x1AD, .iconID = icon_suite_key.NCGR,     .paletteID = pltt_suite_key.NCLR,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_OAKS_LETTER]  = {  .dataID = 0x1AE, .iconID = icon_oaks_letter.NCGR,   .paletteID = pltt_lava_cookie.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_LUNAR_WING]   = {  .dataID = 0x1AF, .iconID = icon_lunar_wing.NCGR,    .paletteID = pltt_lunar_wing.NCLR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_MEMBER_CARD]  = {  .dataID = 0x1B0, .iconID = icon_member_card.NCGR,   .paletteID = pltt_member_card.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_AZURE_FLUTE]  = {  .dataID = 0x1B1, .iconID = icon_azure_flute.NCGR,   .paletteID = pltt_azure_flute.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_S_S_TICKET]   = {  .dataID = 0x1B2, .iconID = icon_ss_ticket.NCGR,     .paletteID = pltt_ss_ticket.NCLR,      .gen3ID = GBA_ITEM_SS_TICKET,     },
    [ITEM_CONTEST_PASS] = {  .dataID = 0x1B3, .iconID = icon_contest_pass.NCGR,  .paletteID = pltt_contest_pass.NCLR,   .gen3ID = GBA_ITEM_CONTEST_PASS,  },
    [ITEM_MAGMA_STONE]  = {  .dataID = 0x1B4, .iconID = icon_magma_stone.NCGR,   .paletteID = pltt_magma_stone.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_PARCEL]       = {  .dataID = 0x1B5, .iconID = icon_parcel.NCGR,        .paletteID = pltt_parcel.NCLR,         .gen3ID = GBA_ITEM_OAKS_PARCEL,   },
    [ITEM_COUPON_1]     = {  .dataID = 0x1B6, .iconID = icon_coupon_1.NCGR,      .paletteID = pltt_coupon_1.NCLR,       .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_COUPON_2]     = {  .dataID = 0x1B7, .iconID = icon_coupon_2.NCGR,      .paletteID = pltt_coupon_2.NCLR,       .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_COUPON_3]     = {  .dataID = 0x1B8, .iconID = icon_coupon_3.NCGR,      .paletteID = pltt_coupon_3.NCLR,       .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_STORAGE_KEY]  = {  .dataID = 0x1B9, .iconID = icon_storage_key.NCGR,   .paletteID = pltt_storage_key.NCLR,    .gen3ID = GBA_ITEM_STORAGE_KEY,   },
    [ITEM_SECRETPOTION] = {  .dataID = 0x1BA, .iconID = icon_secretpotion.NCGR,  .paletteID = pltt_secretpotion.NCLR,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_VS_RECORDER]  = {  .dataID = 0x1BB, .iconID = icon_vs_recorder.NCGR,   .paletteID = pltt_vs_recorder.NCLR,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_GRACIDEA]     = {  .dataID = 0x1BC, .iconID = icon_gracidea.NCGR,      .paletteID = pltt_gracidea.NCLR,       .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_SECRET_KEY]   = {  .dataID = 0x1BD, .iconID = icon_secret_key.NCGR,    .paletteID = pltt_secret_key.NCLR,     .gen3ID = GBA_ITEM_SECRET_KEY,    },

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
    [MAIL_ID(GRASS)]  = ITEM_GRASS_MAIL,
    [MAIL_ID(FLAME)]  = ITEM_FLAME_MAIL,
    [MAIL_ID(BUBBLE)] = ITEM_BUBBLE_MAIL,
    [MAIL_ID(BLOOM)]  = ITEM_BLOOM_MAIL,
    [MAIL_ID(TUNNEL)] = ITEM_TUNNEL_MAIL,
    [MAIL_ID(STEEL)]  = ITEM_STEEL_MAIL,
    [MAIL_ID(HEART)]  = ITEM_HEART_MAIL,
    [MAIL_ID(SNOW)]   = ITEM_SNOW_MAIL,
    [MAIL_ID(SPACE)]  = ITEM_SPACE_MAIL,
    [MAIL_ID(AIR)]    = ITEM_AIR_MAIL,
    [MAIL_ID(MOSAIC)] = ITEM_MOSAIC_MAIL,
    [MAIL_ID(BRICK)]  = ITEM_BRICK_MAIL,
};

const u16 sBerryItemIDs[] = {
    [BERRY_ID(CHERI)]  = ITEM_CHERI_BERRY,
    [BERRY_ID(CHESTO)] = ITEM_CHESTO_BERRY,
    [BERRY_ID(PECHA)]  = ITEM_PECHA_BERRY,
    [BERRY_ID(RAWST)]  = ITEM_RAWST_BERRY,
    [BERRY_ID(ASPEAR)] = ITEM_ASPEAR_BERRY,
    [BERRY_ID(LEPPA)]  = ITEM_LEPPA_BERRY,
    [BERRY_ID(ORAN)]   = ITEM_ORAN_BERRY,
    [BERRY_ID(PERSIM)] = ITEM_PERSIM_BERRY,
    [BERRY_ID(LUM)]    = ITEM_LUM_BERRY,
    [BERRY_ID(SITRUS)] = ITEM_SITRUS_BERRY,
    [BERRY_ID(FIGY)]   = ITEM_FIGY_BERRY,
    [BERRY_ID(WIKI)]   = ITEM_WIKI_BERRY,
    [BERRY_ID(MAGO)]   = ITEM_MAGO_BERRY,
    [BERRY_ID(AGUAV)]  = ITEM_AGUAV_BERRY,
    [BERRY_ID(IAPAPA)] = ITEM_IAPAPA_BERRY,
    [BERRY_ID(RAZZ)]   = ITEM_RAZZ_BERRY,
    [BERRY_ID(BLUK)]   = ITEM_BLUK_BERRY,
    [BERRY_ID(NANAB)]  = ITEM_NANAB_BERRY,
    [BERRY_ID(WEPEAR)] = ITEM_WEPEAR_BERRY,
    [BERRY_ID(PINAP)]  = ITEM_PINAP_BERRY,
    [BERRY_ID(POMEG)]  = ITEM_POMEG_BERRY,
    [BERRY_ID(KELPSY)] = ITEM_KELPSY_BERRY,
    [BERRY_ID(QUALOT)] = ITEM_QUALOT_BERRY,
    [BERRY_ID(HONDEW)] = ITEM_HONDEW_BERRY,
    [BERRY_ID(GREPA)]  = ITEM_GREPA_BERRY,
    [BERRY_ID(TAMATO)] = ITEM_TAMATO_BERRY,
    [BERRY_ID(CORNN)]  = ITEM_CORNN_BERRY,
    [BERRY_ID(MAGOST)] = ITEM_MAGOST_BERRY,
    [BERRY_ID(RABUTA)] = ITEM_RABUTA_BERRY,
    [BERRY_ID(NOMEL)]  = ITEM_NOMEL_BERRY,
    [BERRY_ID(SPELON)] = ITEM_SPELON_BERRY,
    [BERRY_ID(PAMTRE)] = ITEM_PAMTRE_BERRY,
    [BERRY_ID(WATMEL)] = ITEM_WATMEL_BERRY,
    [BERRY_ID(DURIN)]  = ITEM_DURIN_BERRY,
    [BERRY_ID(BELUE)]  = ITEM_BELUE_BERRY,
    [BERRY_ID(OCCA)]   = ITEM_OCCA_BERRY,
    [BERRY_ID(PASSHO)] = ITEM_PASSHO_BERRY,
    [BERRY_ID(WACAN)]  = ITEM_WACAN_BERRY,
    [BERRY_ID(RINDO)]  = ITEM_RINDO_BERRY,
    [BERRY_ID(YACHE)]  = ITEM_YACHE_BERRY,
    [BERRY_ID(CHOPLE)] = ITEM_CHOPLE_BERRY,
    [BERRY_ID(KEBIA)]  = ITEM_KEBIA_BERRY,
    [BERRY_ID(SHUCA)]  = ITEM_SHUCA_BERRY,
    [BERRY_ID(COBA)]   = ITEM_COBA_BERRY,
    [BERRY_ID(PAYAPA)] = ITEM_PAYAPA_BERRY,
    [BERRY_ID(TANGA)]  = ITEM_TANGA_BERRY,
    [BERRY_ID(CHARTI)] = ITEM_CHARTI_BERRY,
    [BERRY_ID(KASIB)]  = ITEM_KASIB_BERRY,
    [BERRY_ID(HABAN)]  = ITEM_HABAN_BERRY,
    [BERRY_ID(COLBUR)] = ITEM_COLBUR_BERRY,
    [BERRY_ID(BABIRI)] = ITEM_BABIRI_BERRY,
    [BERRY_ID(CHILAN)] = ITEM_CHILAN_BERRY,
    [BERRY_ID(LIECHI)] = ITEM_LIECHI_BERRY,
    [BERRY_ID(GANLON)] = ITEM_GANLON_BERRY,
    [BERRY_ID(SALAC)]  = ITEM_SALAC_BERRY,
    [BERRY_ID(PETAYA)] = ITEM_PETAYA_BERRY,
    [BERRY_ID(APICOT)] = ITEM_APICOT_BERRY,
    [BERRY_ID(LANSAT)] = ITEM_LANSAT_BERRY,
    [BERRY_ID(STARF)]  = ITEM_STARF_BERRY,
    [BERRY_ID(ENIGMA)] = ITEM_ENIGMA_BERRY,
    [BERRY_ID(MICLE)]  = ITEM_MICLE_BERRY,
    [BERRY_ID(CUSTAP)] = ITEM_CUSTAP_BERRY,
    [BERRY_ID(JABOCA)] = ITEM_JABOCA_BERRY,
    [BERRY_ID(ROWAP)]  = ITEM_ROWAP_BERRY,
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

void *Item_Load(u16 item, enum ItemFileType type, u32 heapID)
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

void Item_LoadName(Strbuf *dst, u16 item, u32 heapID)
{
    MessageLoader *msgData = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_ITEM_NAMES, heapID);

    MessageLoader_GetStrbuf(msgData, item, dst);
    MessageLoader_Free(msgData);
}

void Item_LoadDescription(Strbuf *dst, u16 item, u16 heapID)
{
    MessageLoader *msgData = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0391, heapID);

    MessageLoader_GetStrbuf(msgData, item, dst);
    MessageLoader_Free(msgData);
}

s32 Item_LoadParam(u16 item, enum ItemDataParam param, u32 heapID)
{
    ItemData *itemData = (ItemData *)Item_Load(item, 0, heapID);
    s32 val = Item_Get(itemData, param);
    Heap_FreeToHeapExplicit(heapID, itemData);

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

void *ItemTable_Load(enum HeapId heapID)
{
    int maxItem = Item_FileID(NUM_ITEMS, ITEM_FILE_TYPE_DATA);
    return NARC_AllocAndReadFromMemberByIndexPair(NARC_INDEX_ITEMTOOL__ITEMDATA__PL_ITEM_DATA, 0, heapID, 0, sizeof(ItemData) * maxItem);
}

ItemData *ItemTable_Index(ItemData *itemTable, u16 index)
{
    return (ItemData *)((u8 *)itemTable + index * sizeof(ItemData));
}
