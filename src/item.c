#include "item.h"

#include <nitro.h>
#include <string.h>

#include "constants/gba/items.h"
#include "constants/items.h"
#include "constants/items_icons_palettes.h"
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
    [ITEM_NONE]         = {  .dataID = 0x0,   .iconID = ICON_UNUSED,        .paletteID = PLTT_UNUSED,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_MASTER_BALL]  = {  .dataID = 0x1,   .iconID = ICON_MASTER_BALL,   .paletteID = PLTT_MASTER_BALL,    .gen3ID = GBA_ITEM_MASTER_BALL,   },
    [ITEM_ULTRA_BALL]   = {  .dataID = 0x2,   .iconID = ICON_ULTRA_BALL,    .paletteID = PLTT_ULTRA_BALL,     .gen3ID = GBA_ITEM_ULTRA_BALL,    },
    [ITEM_GREAT_BALL]   = {  .dataID = 0x3,   .iconID = ICON_GREAT_BALL,    .paletteID = PLTT_GREAT_BALL,     .gen3ID = GBA_ITEM_GREAT_BALL,    },
    [ITEM_POKE_BALL]    = {  .dataID = 0x4,   .iconID = ICON_POKE_BALL,     .paletteID = PLTT_POKE_BALL,      .gen3ID = GBA_ITEM_POKE_BALL,     },
    [ITEM_SAFARI_BALL]  = {  .dataID = 0x5,   .iconID = ICON_SAFARI_BALL,   .paletteID = PLTT_SAFARI_BALL,    .gen3ID = GBA_ITEM_SAFARI_BALL,   },
    [ITEM_NET_BALL]     = {  .dataID = 0x6,   .iconID = ICON_NET_BALL,      .paletteID = PLTT_NET_BALL,       .gen3ID = GBA_ITEM_NET_BALL,      },
    [ITEM_DIVE_BALL]    = {  .dataID = 0x7,   .iconID = ICON_DIVE_BALL,     .paletteID = PLTT_DIVE_BALL,      .gen3ID = GBA_ITEM_DIVE_BALL,     },
    [ITEM_NEST_BALL]    = {  .dataID = 0x8,   .iconID = ICON_NEST_BALL,     .paletteID = PLTT_NEST_BALL,      .gen3ID = GBA_ITEM_NEST_BALL,     },
    [ITEM_REPEAT_BALL]  = {  .dataID = 0x9,   .iconID = ICON_REPEAT_BALL,   .paletteID = PLTT_REPEAT_BALL,    .gen3ID = GBA_ITEM_REPEAT_BALL,   },
    [ITEM_TIMER_BALL]   = {  .dataID = 0xA,   .iconID = ICON_TIMER_BALL,    .paletteID = PLTT_REPEAT_BALL,    .gen3ID = GBA_ITEM_TIMER_BALL,    },
    [ITEM_LUXURY_BALL]  = {  .dataID = 0xB,   .iconID = ICON_LUXURY_BALL,   .paletteID = PLTT_LUXURY_BALL,    .gen3ID = GBA_ITEM_LUXURY_BALL,   },
    [ITEM_PREMIER_BALL] = {  .dataID = 0xC,   .iconID = ICON_PREMIER_BALL,  .paletteID = PLTT_LUXURY_BALL,    .gen3ID = GBA_ITEM_PREMIER_BALL,  },
    [ITEM_DUSK_BALL]    = {  .dataID = 0xD,   .iconID = ICON_DUSK_BALL,     .paletteID = PLTT_DUSK_BALL,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_HEAL_BALL]    = {  .dataID = 0xE,   .iconID = ICON_HEAL_BALL,     .paletteID = PLTT_HEAL_BALL,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_QUICK_BALL]   = {  .dataID = 0xF,   .iconID = ICON_QUICK_BALL,    .paletteID = PLTT_QUICK_BALL,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_CHERISH_BALL] = {  .dataID = 0x10,  .iconID = ICON_CHERISH_BALL,  .paletteID = PLTT_CHERISH_BALL,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_POTION]       = {  .dataID = 0x11,  .iconID = ICON_POTION,        .paletteID = PLTT_POTION,         .gen3ID = GBA_ITEM_POTION,        },
    [ITEM_ANTIDOTE]     = {  .dataID = 0x12,  .iconID = ICON_ANTIDOTE,      .paletteID = PLTT_ANTIDOTE,       .gen3ID = GBA_ITEM_ANTIDOTE,      },
    [ITEM_BURN_HEAL]    = {  .dataID = 0x13,  .iconID = ICON_STATUS_HEAL,   .paletteID = PLTT_BURN_HEAL,      .gen3ID = GBA_ITEM_BURN_HEAL,     },
    [ITEM_ICE_HEAL]     = {  .dataID = 0x14,  .iconID = ICON_STATUS_HEAL,   .paletteID = PLTT_ICE_HEAL,       .gen3ID = GBA_ITEM_ICE_HEAL,      },
    [ITEM_AWAKENING]    = {  .dataID = 0x15,  .iconID = ICON_STATUS_HEAL,   .paletteID = PLTT_AWAKENING,      .gen3ID = GBA_ITEM_AWAKENING,     },
    [ITEM_PARLYZ_HEAL]  = {  .dataID = 0x16,  .iconID = ICON_STATUS_HEAL,   .paletteID = PLTT_PARALYZ_HEAL,   .gen3ID = GBA_ITEM_PARALYZE_HEAL, },
    [ITEM_FULL_RESTORE] = {  .dataID = 0x17,  .iconID = ICON_FULL_RESTORE,  .paletteID = PLTT_FULL_RESTORE,   .gen3ID = GBA_ITEM_FULL_RESTORE,  },
    [ITEM_MAX_POTION]   = {  .dataID = 0x18,  .iconID = ICON_FULL_RESTORE,  .paletteID = PLTT_MAX_POTION,     .gen3ID = GBA_ITEM_MAX_POTION,    },
    [ITEM_HYPER_POTION] = {  .dataID = 0x19,  .iconID = ICON_POTION,        .paletteID = PLTT_HYPER_POTION,   .gen3ID = GBA_ITEM_HYPER_POTION,  },
    [ITEM_SUPER_POTION] = {  .dataID = 0x1A,  .iconID = ICON_POTION,        .paletteID = PLTT_SUPER_POTION,   .gen3ID = GBA_ITEM_SUPER_POTION,  },
    [ITEM_FULL_HEAL]    = {  .dataID = 0x1B,  .iconID = ICON_FULL_HEAL,     .paletteID = PLTT_FULL_HEAL,      .gen3ID = GBA_ITEM_FULL_HEAL,     },
    [ITEM_REVIVE]       = {  .dataID = 0x1C,  .iconID = ICON_REVIVE,        .paletteID = PLTT_REVIVE,         .gen3ID = GBA_ITEM_REVIVE,        },
    [ITEM_MAX_REVIVE]   = {  .dataID = 0x1D,  .iconID = ICON_MAX_REVIVE,    .paletteID = PLTT_REVIVE,         .gen3ID = GBA_ITEM_MAX_REVIVE,    },
    [ITEM_FRESH_WATER]  = {  .dataID = 0x1E,  .iconID = ICON_FRESH_WATER,   .paletteID = PLTT_FRESH_WATER,    .gen3ID = GBA_ITEM_FRESH_WATER,   },
    [ITEM_SODA_POP]     = {  .dataID = 0x1F,  .iconID = ICON_SODA_POP,      .paletteID = PLTT_SODA_POP,       .gen3ID = GBA_ITEM_SODA_POP,      },
    [ITEM_LEMONADE]     = {  .dataID = 0x20,  .iconID = ICON_LEMONADE,      .paletteID = PLTT_LEMONADE,       .gen3ID = GBA_ITEM_LEMONADE,      },
    [ITEM_MOOMOO_MILK]  = {  .dataID = 0x21,  .iconID = ICON_MOOMOO_MILK,   .paletteID = PLTT_MOOMOO_MILK,    .gen3ID = GBA_ITEM_MOOMOO_MILK,   },
    [ITEM_ENERGYPOWDER] = {  .dataID = 0x22,  .iconID = ICON_ENERGYPOWDER,  .paletteID = PLTT_ENERGYPOWDER,   .gen3ID = GBA_ITEM_ENERGY_POWDER, },
    [ITEM_ENERGY_ROOT]  = {  .dataID = 0x23,  .iconID = ICON_ENERGY_ROOT,   .paletteID = PLTT_ENERGY_ROOT,    .gen3ID = GBA_ITEM_ENERGY_ROOT,   },
    [ITEM_HEAL_POWDER]  = {  .dataID = 0x24,  .iconID = ICON_ENERGYPOWDER,  .paletteID = PLTT_HEAL_POWDER,    .gen3ID = GBA_ITEM_HEAL_POWDER,   },
    [ITEM_REVIVAL_HERB] = {  .dataID = 0x25,  .iconID = ICON_REVIVAL_HERB,  .paletteID = PLTT_REVIVAL_HERB,   .gen3ID = GBA_ITEM_REVIVAL_HERB,  },
    [ITEM_ETHER]        = {  .dataID = 0x26,  .iconID = ICON_ETHER,         .paletteID = PLTT_ETHER,          .gen3ID = GBA_ITEM_ETHER,         },
    [ITEM_MAX_ETHER]    = {  .dataID = 0x27,  .iconID = ICON_ETHER,         .paletteID = PLTT_MAX_ETHER,      .gen3ID = GBA_ITEM_MAX_ETHER,     },
    [ITEM_ELIXIR]       = {  .dataID = 0x28,  .iconID = ICON_ETHER,         .paletteID = PLTT_ELIXIR,         .gen3ID = GBA_ITEM_ELIXIR,        },
    [ITEM_MAX_ELIXIR]   = {  .dataID = 0x29,  .iconID = ICON_ETHER,         .paletteID = PLTT_MAX_ELIXIR,     .gen3ID = GBA_ITEM_MAX_ELIXIR,    },
    [ITEM_LAVA_COOKIE]  = {  .dataID = 0x2A,  .iconID = ICON_LAVA_COOKIE,   .paletteID = PLTT_LAVA_COOKIE,    .gen3ID = GBA_ITEM_LAVA_COOKIE,   },
    [ITEM_BERRY_JUICE]  = {  .dataID = 0x2B,  .iconID = ICON_BERRY_JUICE,   .paletteID = PLTT_BERRY_JUICE,    .gen3ID = GBA_ITEM_BERRY_JUICE,   },
    [ITEM_SACRED_ASH]   = {  .dataID = 0x2C,  .iconID = ICON_SACRED_ASH,    .paletteID = PLTT_SACRED_ASH,     .gen3ID = GBA_ITEM_SACRED_ASH,    },
    [ITEM_HP_UP]        = {  .dataID = 0x2D,  .iconID = ICON_HP_UP,         .paletteID = PLTT_HP_UP,          .gen3ID = GBA_ITEM_HP_UP,         },
    [ITEM_PROTEIN]      = {  .dataID = 0x2E,  .iconID = ICON_VITAMIN,       .paletteID = PLTT_PROTEIN,        .gen3ID = GBA_ITEM_PROTEIN,       },
    [ITEM_IRON]         = {  .dataID = 0x2F,  .iconID = ICON_VITAMIN,       .paletteID = PLTT_IRON,           .gen3ID = GBA_ITEM_IRON,          },
    [ITEM_CARBOS]       = {  .dataID = 0x30,  .iconID = ICON_VITAMIN,       .paletteID = PLTT_CARBOS,         .gen3ID = GBA_ITEM_CARBOS,        },
    [ITEM_CALCIUM]      = {  .dataID = 0x31,  .iconID = ICON_VITAMIN,       .paletteID = PLTT_CALCIUM,        .gen3ID = GBA_ITEM_CALCIUM,       },
    [ITEM_RARE_CANDY]   = {  .dataID = 0x32,  .iconID = ICON_RARE_CANDY,    .paletteID = PLTT_RARE_CANDY,     .gen3ID = GBA_ITEM_RARE_CANDY,    },
    [ITEM_PP_UP]        = {  .dataID = 0x33,  .iconID = ICON_PP_UP,         .paletteID = PLTT_PP_UP,          .gen3ID = GBA_ITEM_PP_UP,         },
    [ITEM_ZINC]         = {  .dataID = 0x34,  .iconID = ICON_VITAMIN,       .paletteID = PLTT_ZINC,           .gen3ID = GBA_ITEM_ZINC,          },
    [ITEM_PP_MAX]       = {  .dataID = 0x35,  .iconID = ICON_PP_MAX,        .paletteID = PLTT_PP_MAX,         .gen3ID = GBA_ITEM_PP_MAX,        },
    [ITEM_OLD_GATEAU]   = {  .dataID = 0x36,  .iconID = ICON_OLD_GATEAU,    .paletteID = PLTT_OLD_GATEAU,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_GUARD_SPEC]   = {  .dataID = 0x37,  .iconID = ICON_BATTLE_ITEM,   .paletteID = PLTT_GUARD_SPED,     .gen3ID = GBA_ITEM_GUARD_SPEC,    },
    [ITEM_DIRE_HIT]     = {  .dataID = 0x38,  .iconID = ICON_BATTLE_ITEM,   .paletteID = PLTT_DIRE_HIT,       .gen3ID = GBA_ITEM_DIRE_HIT,      },
    [ITEM_X_ATTACK]     = {  .dataID = 0x39,  .iconID = ICON_BATTLE_ITEM,   .paletteID = PLTT_X_ATTACK,       .gen3ID = GBA_ITEM_X_ATTACK,      },
    [ITEM_X_DEFENSE]    = {  .dataID = 0x3A,  .iconID = ICON_BATTLE_ITEM,   .paletteID = PLTT_X_DEFENSE,      .gen3ID = GBA_ITEM_X_DEFEND,      },
    [ITEM_X_SPEED]      = {  .dataID = 0x3B,  .iconID = ICON_BATTLE_ITEM,   .paletteID = PLTT_X_SPEED,        .gen3ID = GBA_ITEM_X_SPEED,       },
    [ITEM_X_ACCURACY]   = {  .dataID = 0x3C,  .iconID = ICON_BATTLE_ITEM,   .paletteID = PLTT_X_ACCURACY,     .gen3ID = GBA_ITEM_X_ACCURACY,    },
    [ITEM_X_SPECIAL]    = {  .dataID = 0x3D,  .iconID = ICON_BATTLE_ITEM,   .paletteID = PLTT_X_SPECIAL,      .gen3ID = GBA_ITEM_X_SPECIAL,     },
    [ITEM_X_SP_DEF]     = {  .dataID = 0x3E,  .iconID = ICON_BATTLE_ITEM,   .paletteID = PLTT_X_SP_DEF,       .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_POKE_DOLL]    = {  .dataID = 0x3F,  .iconID = ICON_POKE_DOLL,     .paletteID = PLTT_POKE_DOLL,      .gen3ID = GBA_ITEM_POKE_DOLL,     },
    [ITEM_FLUFFY_TAIL]  = {  .dataID = 0x40,  .iconID = ICON_FLUFFY_TAIL,   .paletteID = PLTT_FLUFFY_TAIL,    .gen3ID = GBA_ITEM_FLUFFY_TAIL,   },
    [ITEM_BLUE_FLUTE]   = {  .dataID = 0x41,  .iconID = ICON_FLUTE,         .paletteID = PLTT_BLUE_FLUTE,     .gen3ID = GBA_ITEM_BLUE_FLUTE,    },
    [ITEM_YELLOW_FLUTE] = {  .dataID = 0x42,  .iconID = ICON_FLUTE,         .paletteID = PLTT_YELLOW_FLUTE,   .gen3ID = GBA_ITEM_YELLOW_FLUTE,  },
    [ITEM_RED_FLUTE]    = {  .dataID = 0x43,  .iconID = ICON_FLUTE,         .paletteID = PLTT_RED_FLUTE,      .gen3ID = GBA_ITEM_RED_FLUTE,     },
    [ITEM_BLACK_FLUTE]  = {  .dataID = 0x44,  .iconID = ICON_FLUTE,         .paletteID = PLTT_BLACK_FLUTE,    .gen3ID = GBA_ITEM_BLACK_FLUTE,   },
    [ITEM_WHITE_FLUTE]  = {  .dataID = 0x45,  .iconID = ICON_FLUTE,         .paletteID = PLTT_WHITE_FLUTE,    .gen3ID = GBA_ITEM_WHITE_FLUTE,   },
    [ITEM_SHOAL_SALT]   = {  .dataID = 0x46,  .iconID = ICON_ENERGYPOWDER,  .paletteID = PLTT_SHOAL_SALT,     .gen3ID = GBA_ITEM_SHOAL_SALT,    },
    [ITEM_SHOAL_SHELL]  = {  .dataID = 0x47,  .iconID = ICON_SHOAL_SHELL,   .paletteID = PLTT_SHOAL_SHELL,    .gen3ID = GBA_ITEM_SHOAL_SHELL,   },
    [ITEM_RED_SHARD]    = {  .dataID = 0x48,  .iconID = ICON_SHARD,         .paletteID = PLTT_RED_SHARD,      .gen3ID = GBA_ITEM_RED_SHARD,     },
    [ITEM_BLUE_SHARD]   = {  .dataID = 0x49,  .iconID = ICON_SHARD,         .paletteID = PLTT_BLUE_SHARD,     .gen3ID = GBA_ITEM_BLUE_SHARD,    },
    [ITEM_YELLOW_SHARD] = {  .dataID = 0x4A,  .iconID = ICON_SHARD,         .paletteID = PLTT_YELLOW_SHARD,   .gen3ID = GBA_ITEM_YELLOW_SHARD,  },
    [ITEM_GREEN_SHARD]  = {  .dataID = 0x4B,  .iconID = ICON_SHARD,         .paletteID = PLTT_GREEN_SHARD,    .gen3ID = GBA_ITEM_GREEN_SHARD,   },
    [ITEM_SUPER_REPEL]  = {  .dataID = 0x4C,  .iconID = ICON_REPEL,         .paletteID = PLTT_SUPER_REPEL,    .gen3ID = GBA_ITEM_SUPER_REPEL,   },
    [ITEM_MAX_REPEL]    = {  .dataID = 0x4D,  .iconID = ICON_REPEL,         .paletteID = PLTT_MAX_REPEL,      .gen3ID = GBA_ITEM_MAX_REPEL,     },
    [ITEM_ESCAPE_ROPE]  = {  .dataID = 0x4E,  .iconID = ICON_ESCAPE_ROPE,   .paletteID = PLTT_ESCAPE_ROPE,    .gen3ID = GBA_ITEM_ESCAPE_ROPE,   },
    [ITEM_REPEL]        = {  .dataID = 0x4F,  .iconID = ICON_REPEL,         .paletteID = PLTT_REPEL,          .gen3ID = GBA_ITEM_REPEL,         },
    [ITEM_SUN_STONE]    = {  .dataID = 0x50,  .iconID = ICON_SUN_STONE,     .paletteID = PLTT_SUN_STONE,      .gen3ID = GBA_ITEM_SUN_STONE,     },
    [ITEM_MOON_STONE]   = {  .dataID = 0x51,  .iconID = ICON_MOON_STONE,    .paletteID = PLTT_MOON_STONE,     .gen3ID = GBA_ITEM_MOON_STONE,    },
    [ITEM_FIRE_STONE]   = {  .dataID = 0x52,  .iconID = ICON_FIRE_STONE,    .paletteID = PLTT_FIRE_STONE,     .gen3ID = GBA_ITEM_FIRE_STONE,    },
    [ITEM_THUNDERSTONE] = {  .dataID = 0x53,  .iconID = ICON_THUNDERSTONE,  .paletteID = PLTT_THUNDERSTONE,   .gen3ID = GBA_ITEM_THUNDER_STONE, },
    [ITEM_WATER_STONE]  = {  .dataID = 0x54,  .iconID = ICON_WATER_STONE,   .paletteID = PLTT_WATER_STONE,    .gen3ID = GBA_ITEM_WATER_STONE,   },
    [ITEM_LEAF_STONE]   = {  .dataID = 0x55,  .iconID = ICON_LEAF_STONE,    .paletteID = PLTT_LEAF_STONE,     .gen3ID = GBA_ITEM_LEAF_STONE,    },
    [ITEM_TINYMUSHROOM] = {  .dataID = 0x56,  .iconID = ICON_TINYMUSHROOM,  .paletteID = PLTT_MUSHROOM,       .gen3ID = GBA_ITEM_TINY_MUSHROOM, },
    [ITEM_BIG_MUSHROOM] = {  .dataID = 0x57,  .iconID = ICON_BIG_MUSHROOM,  .paletteID = PLTT_MUSHROOM,       .gen3ID = GBA_ITEM_BIG_MUSHROOM,  },
    [ITEM_PEARL]        = {  .dataID = 0x58,  .iconID = ICON_PEARL,         .paletteID = PLTT_PEARL,          .gen3ID = GBA_ITEM_PEARL,         },
    [ITEM_BIG_PEARL]    = {  .dataID = 0x59,  .iconID = ICON_BIG_PEARL,     .paletteID = PLTT_PEARL,          .gen3ID = GBA_ITEM_BIG_PEARL,     },
    [ITEM_STARDUST]     = {  .dataID = 0x5A,  .iconID = ICON_STARDUST,      .paletteID = PLTT_STARDUST,       .gen3ID = GBA_ITEM_STARDUST,      },
    [ITEM_STAR_PIECE]   = {  .dataID = 0x5B,  .iconID = ICON_STAR_PIECE,    .paletteID = PLTT_STARDUST,       .gen3ID = GBA_ITEM_STAR_PIECE,    },
    [ITEM_NUGGET]       = {  .dataID = 0x5C,  .iconID = ICON_NUGGET,        .paletteID = PLTT_NUGGET,         .gen3ID = GBA_ITEM_NUGGET,        },
    [ITEM_HEART_SCALE]  = {  .dataID = 0x5D,  .iconID = ICON_HEART_SCALE,   .paletteID = PLTT_HEART_SCALE,    .gen3ID = GBA_ITEM_HEART_SCALE,   },
    [ITEM_HONEY]        = {  .dataID = 0x5E,  .iconID = ICON_HONEY,         .paletteID = PLTT_HONEY,          .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_GROWTH_MULCH] = {  .dataID = 0x5F,  .iconID = ICON_GROWTH_MULCH,  .paletteID = PLTT_GROWTH_MULCH,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_DAMP_MULCH]   = {  .dataID = 0x60,  .iconID = ICON_DAMP_MULCH,    .paletteID = PLTT_DAMP_MULCH,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_STABLE_MULCH] = {  .dataID = 0x61,  .iconID = ICON_STABLE_MULCH,  .paletteID = PLTT_STABLE_MULCH,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_GOOEY_MULCH]  = {  .dataID = 0x62,  .iconID = ICON_GOOEY_MULCH,   .paletteID = PLTT_GOOEY_MULCH,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_ROOT_FOSSIL]  = {  .dataID = 0x63,  .iconID = ICON_ROOT_FOSSIL,   .paletteID = PLTT_ROOT_FOSSIL,    .gen3ID = GBA_ITEM_ROOT_FOSSIL,   },
    [ITEM_CLAW_FOSSIL]  = {  .dataID = 0x64,  .iconID = ICON_CLAW_FOSSIL,   .paletteID = PLTT_ROOT_FOSSIL,    .gen3ID = GBA_ITEM_CLAW_FOSSIL,   },
    [ITEM_HELIX_FOSSIL] = {  .dataID = 0x65,  .iconID = ICON_HELIX_FOSSIL,  .paletteID = PLTT_HELIX_FOSSIL,   .gen3ID = GBA_ITEM_HELIX_FOSSIL,  },
    [ITEM_DOME_FOSSIL]  = {  .dataID = 0x66,  .iconID = ICON_DOME_FOSSIL,   .paletteID = PLTT_HELIX_FOSSIL,   .gen3ID = GBA_ITEM_DOME_FOSSIL,   },
    [ITEM_OLD_AMBER]    = {  .dataID = 0x67,  .iconID = ICON_OLD_AMBER,     .paletteID = PLTT_OLD_AMBER,      .gen3ID = GBA_ITEM_OLD_AMBER,     },
    [ITEM_ARMOR_FOSSIL] = {  .dataID = 0x68,  .iconID = ICON_ARMOR_FOSSIL,  .paletteID = PLTT_ARMOR_FOSSIL,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_SKULL_FOSSIL] = {  .dataID = 0x69,  .iconID = ICON_SKULL_FOSSIL,  .paletteID = PLTT_SKULL_FOSSIL,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_RARE_BONE]    = {  .dataID = 0x6A,  .iconID = ICON_BONE,          .paletteID = PLTT_BONE,           .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_SHINY_STONE]  = {  .dataID = 0x6B,  .iconID = ICON_SHINY_STONE,   .paletteID = PLTT_SHINY_STONE,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_DUSK_STONE]   = {  .dataID = 0x6C,  .iconID = ICON_DUSK_STONE,    .paletteID = PLTT_DUSK_STONE,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_DAWN_STONE]   = {  .dataID = 0x6D,  .iconID = ICON_DAWN_STONE,    .paletteID = PLTT_DAWN_STONE,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_OVAL_STONE]   = {  .dataID = 0x6E,  .iconID = ICON_OVAL_STONE,    .paletteID = PLTT_OVAL_STONE,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_ODD_KEYSTONE] = {  .dataID = 0x6F,  .iconID = ICON_ODD_KEYSTONE,  .paletteID = PLTT_ODD_KEYSTONE,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_GRISEOUS_ORB] = {  .dataID = 0x70,  .iconID = ICON_GRISEOUS_ORB,  .paletteID = PLTT_GRISEOUS_ORB,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_113]   = {  .dataID = 0x0,   .iconID = ICON_UNUSED,        .paletteID = PLTT_UNUSED,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_114]   = {  .dataID = 0x0,   .iconID = ICON_UNUSED,        .paletteID = PLTT_UNUSED,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_115]   = {  .dataID = 0x0,   .iconID = ICON_UNUSED,        .paletteID = PLTT_UNUSED,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_116]   = {  .dataID = 0x0,   .iconID = ICON_UNUSED,        .paletteID = PLTT_UNUSED,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_117]   = {  .dataID = 0x0,   .iconID = ICON_UNUSED,        .paletteID = PLTT_UNUSED,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_118]   = {  .dataID = 0x0,   .iconID = ICON_UNUSED,        .paletteID = PLTT_UNUSED,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_119]   = {  .dataID = 0x0,   .iconID = ICON_UNUSED,        .paletteID = PLTT_UNUSED,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_120]   = {  .dataID = 0x0,   .iconID = ICON_UNUSED,        .paletteID = PLTT_UNUSED,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_121]   = {  .dataID = 0x0,   .iconID = ICON_UNUSED,        .paletteID = PLTT_UNUSED,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_122]   = {  .dataID = 0x0,   .iconID = ICON_UNUSED,        .paletteID = PLTT_UNUSED,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_123]   = {  .dataID = 0x0,   .iconID = ICON_UNUSED,        .paletteID = PLTT_UNUSED,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_124]   = {  .dataID = 0x0,   .iconID = ICON_UNUSED,        .paletteID = PLTT_UNUSED,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_125]   = {  .dataID = 0x0,   .iconID = ICON_UNUSED,        .paletteID = PLTT_UNUSED,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_126]   = {  .dataID = 0x0,   .iconID = ICON_UNUSED,        .paletteID = PLTT_UNUSED,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_127]   = {  .dataID = 0x0,   .iconID = ICON_UNUSED,        .paletteID = PLTT_UNUSED,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_128]   = {  .dataID = 0x0,   .iconID = ICON_UNUSED,        .paletteID = PLTT_UNUSED,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_129]   = {  .dataID = 0x0,   .iconID = ICON_UNUSED,        .paletteID = PLTT_UNUSED,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_130]   = {  .dataID = 0x0,   .iconID = ICON_UNUSED,        .paletteID = PLTT_UNUSED,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_131]   = {  .dataID = 0x0,   .iconID = ICON_UNUSED,        .paletteID = PLTT_UNUSED,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_132]   = {  .dataID = 0x0,   .iconID = ICON_UNUSED,        .paletteID = PLTT_UNUSED,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_133]   = {  .dataID = 0x0,   .iconID = ICON_UNUSED,        .paletteID = PLTT_UNUSED,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_UNUSED_134]   = {  .dataID = 0x0,   .iconID = ICON_UNUSED,        .paletteID = PLTT_UNUSED,         .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_ADAMANT_ORB]  = {  .dataID = 0x71,  .iconID = ICON_ADAMANT_ORB,   .paletteID = PLTT_ADAMANT_ORB,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_LUSTROUS_ORB] = {  .dataID = 0x72,  .iconID = ICON_LUSTROUS_ORB,  .paletteID = PLTT_LUSTROUS_ORB,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_GRASS_MAIL]   = {  .dataID = 0x73,  .iconID = ICON_GRASS_MAIL,    .paletteID = PLTT_GRASS_MAIL,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_FLAME_MAIL]   = {  .dataID = 0x74,  .iconID = ICON_FLAME_MAIL,    .paletteID = PLTT_FLAME_MAIL,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_BUBBLE_MAIL]  = {  .dataID = 0x75,  .iconID = ICON_BUBBLE_MAIL,   .paletteID = PLTT_BUBBLE_MAIL,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_BLOOM_MAIL]   = {  .dataID = 0x76,  .iconID = ICON_BLOOM_MAIL,    .paletteID = PLTT_BLOOM_MAIL,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TUNNEL_MAIL]  = {  .dataID = 0x77,  .iconID = ICON_TUNNEL_MAIL,   .paletteID = PLTT_TUNNEL_MAIL,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_STEEL_MAIL]   = {  .dataID = 0x78,  .iconID = ICON_STEEL_MAIL,    .paletteID = PLTT_STEEL_MAIL,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_HEART_MAIL]   = {  .dataID = 0x79,  .iconID = ICON_HEART_MAIL,    .paletteID = PLTT_HEART_MAIL,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_SNOW_MAIL]    = {  .dataID = 0x7A,  .iconID = ICON_SNOW_MAIL,     .paletteID = PLTT_SNOW_MAIL,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_SPACE_MAIL]   = {  .dataID = 0x7B,  .iconID = ICON_SPACE_MAIL,    .paletteID = PLTT_SPACE_MAIL,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_AIR_MAIL]     = {  .dataID = 0x7C,  .iconID = ICON_AIR_MAIL,      .paletteID = PLTT_AIR_MAIL,       .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_MOSAIC_MAIL]  = {  .dataID = 0x7D,  .iconID = ICON_MOSAIC_MAIL,   .paletteID = PLTT_MOSAIC_MAIL,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_BRICK_MAIL]   = {  .dataID = 0x7E,  .iconID = ICON_BRICK_MAIL,    .paletteID = PLTT_BRICK_MAIL,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_CHERI_BERRY]  = {  .dataID = 0x7F,  .iconID = ICON_CHERI_BERRY,   .paletteID = PLTT_CHERI_BERRY,    .gen3ID = GBA_ITEM_CHERI_BERRY,   },
    [ITEM_CHESTO_BERRY] = {  .dataID = 0x80,  .iconID = ICON_CHESTO_BERRY,  .paletteID = PLTT_CHESTO_BERRY,   .gen3ID = GBA_ITEM_CHESTO_BERRY,  },
    [ITEM_PECHA_BERRY]  = {  .dataID = 0x81,  .iconID = ICON_PECHA_BERRY,   .paletteID = PLTT_PECHA_BERRY,    .gen3ID = GBA_ITEM_PECHA_BERRY,   },
    [ITEM_RAWST_BERRY]  = {  .dataID = 0x82,  .iconID = ICON_RAWST_BERRY,   .paletteID = PLTT_RAWST_BERRY,    .gen3ID = GBA_ITEM_RAWST_BERRY,   },
    [ITEM_ASPEAR_BERRY] = {  .dataID = 0x83,  .iconID = ICON_ASPEAR_BERRY,  .paletteID = PLTT_ASPEAR_BERRY,   .gen3ID = GBA_ITEM_ASPEAR_BERRY,  },
    [ITEM_LEPPA_BERRY]  = {  .dataID = 0x84,  .iconID = ICON_LEPPA_BERRY,   .paletteID = PLTT_LEPPA_BERRY,    .gen3ID = GBA_ITEM_LEPPA_BERRY,   },
    [ITEM_ORAN_BERRY]   = {  .dataID = 0x85,  .iconID = ICON_ORAN_BERRY,    .paletteID = PLTT_ORAN_BERRY,     .gen3ID = GBA_ITEM_ORAN_BERRY,    },
    [ITEM_PERSIM_BERRY] = {  .dataID = 0x86,  .iconID = ICON_PERSIM_BERRY,  .paletteID = PLTT_PERSIM_BERRY,   .gen3ID = GBA_ITEM_PERSIM_BERRY,  },
    [ITEM_LUM_BERRY]    = {  .dataID = 0x87,  .iconID = ICON_LUM_BERRY,     .paletteID = PLTT_LUM_BERRY,      .gen3ID = GBA_ITEM_LUM_BERRY,     },
    [ITEM_SITRUS_BERRY] = {  .dataID = 0x88,  .iconID = ICON_SITRUS_BERRY,  .paletteID = PLTT_SITRUS_BERRY,   .gen3ID = GBA_ITEM_SITRUS_BERRY,  },
    [ITEM_FIGY_BERRY]   = {  .dataID = 0x89,  .iconID = ICON_FIGY_BERRY,    .paletteID = PLTT_FIGY_BERRY,     .gen3ID = GBA_ITEM_FIGY_BERRY,    },
    [ITEM_WIKI_BERRY]   = {  .dataID = 0x8A,  .iconID = ICON_WIKI_BERRY,    .paletteID = PLTT_WIKI_BERRY,     .gen3ID = GBA_ITEM_WIKI_BERRY,    },
    [ITEM_MAGO_BERRY]   = {  .dataID = 0x8B,  .iconID = ICON_MAGO_BERRY,    .paletteID = PLTT_MAGO_BERRY,     .gen3ID = GBA_ITEM_MAGO_BERRY,    },
    [ITEM_AGUAV_BERRY]  = {  .dataID = 0x8C,  .iconID = ICON_AGUAV_BERRY,   .paletteID = PLTT_AGUAV_BERRY,    .gen3ID = GBA_ITEM_AGUAV_BERRY,   },
    [ITEM_IAPAPA_BERRY] = {  .dataID = 0x8D,  .iconID = ICON_IAPAPA_BERRY,  .paletteID = PLTT_IAPAPA_BERRY,   .gen3ID = GBA_ITEM_IAPAPA_BERRY,  },
    [ITEM_RAZZ_BERRY]   = {  .dataID = 0x8E,  .iconID = ICON_RAZZ_BERRY,    .paletteID = PLTT_RAZZ_BERRY,     .gen3ID = GBA_ITEM_RAZZ_BERRY,    },
    [ITEM_BLUK_BERRY]   = {  .dataID = 0x8F,  .iconID = ICON_BLUK_BERRY,    .paletteID = PLTT_BLUK_BERRY,     .gen3ID = GBA_ITEM_BLUK_BERRY,    },
    [ITEM_NANAB_BERRY]  = {  .dataID = 0x90,  .iconID = ICON_NANAB_BERRY,   .paletteID = PLTT_NANAB_BERRY,    .gen3ID = GBA_ITEM_NANAB_BERRY,   },
    [ITEM_WEPEAR_BERRY] = {  .dataID = 0x91,  .iconID = ICON_WEPEAR_BERRY,  .paletteID = PLTT_WEPEAR_BERRY,   .gen3ID = GBA_ITEM_WEPEAR_BERRY,  },
    [ITEM_PINAP_BERRY]  = {  .dataID = 0x92,  .iconID = ICON_PINAP_BERRY,   .paletteID = PLTT_PINAP_BERRY,    .gen3ID = GBA_ITEM_PINAP_BERRY,   },
    [ITEM_POMEG_BERRY]  = {  .dataID = 0x93,  .iconID = ICON_POMEG_BERRY,   .paletteID = PLTT_POMEG_BERRY,    .gen3ID = GBA_ITEM_POMEG_BERRY,   },
    [ITEM_KELPSY_BERRY] = {  .dataID = 0x94,  .iconID = ICON_KELPSY_BERRY,  .paletteID = PLTT_KELPSY_BERRY,   .gen3ID = GBA_ITEM_KELPSY_BERRY,  },
    [ITEM_QUALOT_BERRY] = {  .dataID = 0x95,  .iconID = ICON_QUALOT_BERRY,  .paletteID = PLTT_QUALOT_BERRY,   .gen3ID = GBA_ITEM_QUALOT_BERRY,  },
    [ITEM_HONDEW_BERRY] = {  .dataID = 0x96,  .iconID = ICON_HONDEW_BERRY,  .paletteID = PLTT_HONDEW_BERRY,   .gen3ID = GBA_ITEM_HONDEW_BERRY,  },
    [ITEM_GREPA_BERRY]  = {  .dataID = 0x97,  .iconID = ICON_GREPA_BERRY,   .paletteID = PLTT_GREPA_BERRY,    .gen3ID = GBA_ITEM_GREPA_BERRY,   },
    [ITEM_TAMATO_BERRY] = {  .dataID = 0x98,  .iconID = ICON_TAMATO_BERRY,  .paletteID = PLTT_TAMATO_BERRY,   .gen3ID = GBA_ITEM_TAMATO_BERRY,  },
    [ITEM_CORNN_BERRY]  = {  .dataID = 0x99,  .iconID = ICON_CORNN_BERRY,   .paletteID = PLTT_CORNN_BERRY,    .gen3ID = GBA_ITEM_CORNN_BERRY,   },
    [ITEM_MAGOST_BERRY] = {  .dataID = 0x9A,  .iconID = ICON_MAGOST_BERRY,  .paletteID = PLTT_MAGOST_BERRY,   .gen3ID = GBA_ITEM_MAGOST_BERRY,  },
    [ITEM_RABUTA_BERRY] = {  .dataID = 0x9B,  .iconID = ICON_RABUTA_BERRY,  .paletteID = PLTT_RABUTA_BERRY,   .gen3ID = GBA_ITEM_RABUTA_BERRY,  },
    [ITEM_NOMEL_BERRY]  = {  .dataID = 0x9C,  .iconID = ICON_NOMEL_BERRY,   .paletteID = PLTT_NOMEL_BERRY,    .gen3ID = GBA_ITEM_NOMEL_BERRY,   },
    [ITEM_SPELON_BERRY] = {  .dataID = 0x9D,  .iconID = ICON_SPELON_BERRY,  .paletteID = PLTT_SPELON_BERRY,   .gen3ID = GBA_ITEM_SPELON_BERRY,  },
    [ITEM_PAMTRE_BERRY] = {  .dataID = 0x9E,  .iconID = ICON_PAMTRE_BERRY,  .paletteID = PLTT_PAMTRE_BERRY,   .gen3ID = GBA_ITEM_PAMTRE_BERRY,  },
    [ITEM_WATMEL_BERRY] = {  .dataID = 0x9F,  .iconID = ICON_WATMEL_BERRY,  .paletteID = PLTT_WATMEL_BERRY,   .gen3ID = GBA_ITEM_WATMEL_BERRY,  },
    [ITEM_DURIN_BERRY]  = {  .dataID = 0xA0,  .iconID = ICON_DURIN_BERRY,   .paletteID = PLTT_DURIN_BERRY,    .gen3ID = GBA_ITEM_DURIN_BERRY,   },
    [ITEM_BELUE_BERRY]  = {  .dataID = 0xA1,  .iconID = ICON_BELUE_BERRY,   .paletteID = PLTT_BELUE_BERRY,    .gen3ID = GBA_ITEM_BELUE_BERRY,   },
    [ITEM_OCCA_BERRY]   = {  .dataID = 0xA2,  .iconID = ICON_OCCA_BERRY,    .paletteID = PLTT_OCCA_BERRY,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_PASSHO_BERRY] = {  .dataID = 0xA3,  .iconID = ICON_PASSHO_BERRY,  .paletteID = PLTT_PASSHO_BERRY,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_WACAN_BERRY]  = {  .dataID = 0xA4,  .iconID = ICON_WACAN_BERRY,   .paletteID = PLTT_WACAN_BERRY,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_RINDO_BERRY]  = {  .dataID = 0xA5,  .iconID = ICON_RINDO_BERRY,   .paletteID = PLTT_RINDO_BERRY,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_YACHE_BERRY]  = {  .dataID = 0xA6,  .iconID = ICON_YACHE_BERRY,   .paletteID = PLTT_YACHE_BERRY,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_CHOPLE_BERRY] = {  .dataID = 0xA7,  .iconID = ICON_CHOPLE_BERRY,  .paletteID = PLTT_CHOPLE_BERRY,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_KEBIA_BERRY]  = {  .dataID = 0xA8,  .iconID = ICON_KEBIA_BERRY,   .paletteID = PLTT_KEBIA_BERRY,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_SHUCA_BERRY]  = {  .dataID = 0xA9,  .iconID = ICON_SHUCA_BERRY,   .paletteID = PLTT_SHUCA_BERRY,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_COBA_BERRY]   = {  .dataID = 0xAA,  .iconID = ICON_COBA_BERRY,    .paletteID = PLTT_COBA_BERRY,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_PAYAPA_BERRY] = {  .dataID = 0xAB,  .iconID = ICON_PAYAPA_BERRY,  .paletteID = PLTT_PAYAPA_BERRY,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TANGA_BERRY]  = {  .dataID = 0xAC,  .iconID = ICON_TANGA_BERRY,   .paletteID = PLTT_TANGA_BERRY,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_CHARTI_BERRY] = {  .dataID = 0xAD,  .iconID = ICON_CHARTI_BERRY,  .paletteID = PLTT_CHARTI_BERRY,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_KASIB_BERRY]  = {  .dataID = 0xAE,  .iconID = ICON_KASIB_BERRY,   .paletteID = PLTT_KASIB_BERRY,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_HABAN_BERRY]  = {  .dataID = 0xAF,  .iconID = ICON_HABAN_BERRY,   .paletteID = PLTT_HABAN_BERRY,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_COLBUR_BERRY] = {  .dataID = 0xB0,  .iconID = ICON_COLBUR_BERRY,  .paletteID = PLTT_COLBUR_BERRY,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_BABIRI_BERRY] = {  .dataID = 0xB1,  .iconID = ICON_BABIRI_BERRY,  .paletteID = PLTT_BABIRI_BERRY,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_CHILAN_BERRY] = {  .dataID = 0xB2,  .iconID = ICON_CHILAN_BERRY,  .paletteID = PLTT_CHILAN_BERRY,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_LIECHI_BERRY] = {  .dataID = 0xB3,  .iconID = ICON_LIECHI_BERRY,  .paletteID = PLTT_LIECHI_BERRY,   .gen3ID = GBA_ITEM_LIECHI_BERRY,  },
    [ITEM_GANLON_BERRY] = {  .dataID = 0xB4,  .iconID = ICON_GANLON_BERRY,  .paletteID = PLTT_GANLON_BERRY,   .gen3ID = GBA_ITEM_GANLON_BERRY,  },
    [ITEM_SALAC_BERRY]  = {  .dataID = 0xB5,  .iconID = ICON_SALAC_BERRY,   .paletteID = PLTT_SALAC_BERRY,    .gen3ID = GBA_ITEM_SALAC_BERRY,   },
    [ITEM_PETAYA_BERRY] = {  .dataID = 0xB6,  .iconID = ICON_PETAYA_BERRY,  .paletteID = PLTT_PETAYA_BERRY,   .gen3ID = GBA_ITEM_PETAYA_BERRY,  },
    [ITEM_APICOT_BERRY] = {  .dataID = 0xB7,  .iconID = ICON_APICOT_BERRY,  .paletteID = PLTT_APICOT_BERRY,   .gen3ID = GBA_ITEM_APICOT_BERRY,  },
    [ITEM_LANSAT_BERRY] = {  .dataID = 0xB8,  .iconID = ICON_LANSAT_BERRY,  .paletteID = PLTT_LANSAT_BERRY,   .gen3ID = GBA_ITEM_LANSAT_BERRY,  },
    [ITEM_STARF_BERRY]  = {  .dataID = 0xB9,  .iconID = ICON_STARF_BERRY,   .paletteID = PLTT_STARF_BERRY,    .gen3ID = GBA_ITEM_STARF_BERRY,   },
    [ITEM_ENIGMA_BERRY] = {  .dataID = 0xBA,  .iconID = ICON_ENIGMA_BERRY,  .paletteID = PLTT_ENIGMA_BERRY,   .gen3ID = GBA_ITEM_ENIGMA_BERRY,  },
    [ITEM_MICLE_BERRY]  = {  .dataID = 0xBB,  .iconID = ICON_MICLE_BERRY,   .paletteID = PLTT_MICLE_BERRY,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_CUSTAP_BERRY] = {  .dataID = 0xBC,  .iconID = ICON_CUSTAP_BERRY,  .paletteID = PLTT_CUSTAP_BERRY,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_JABOCA_BERRY] = {  .dataID = 0xBD,  .iconID = ICON_JABOCA_BERRY,  .paletteID = PLTT_JABOCA_BERRY,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_ROWAP_BERRY]  = {  .dataID = 0xBE,  .iconID = ICON_ROWAP_BERRY,   .paletteID = PLTT_ROWAP_BERRY,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_BRIGHTPOWDER] = {  .dataID = 0xBF,  .iconID = ICON_BRIGHTPOWDER,  .paletteID = PLTT_BRIGHTPOWDER,   .gen3ID = GBA_ITEM_BRIGHT_POWDER, },
    [ITEM_WHITE_HERB]   = {  .dataID = 0xC0,  .iconID = ICON_HERB,          .paletteID = PLTT_WHITE_HERB,     .gen3ID = GBA_ITEM_WHITE_HERB,    },
    [ITEM_MACHO_BRACE]  = {  .dataID = 0xC1,  .iconID = ICON_MACHO_BRACE,   .paletteID = PLTT_MACHO_BRACE,    .gen3ID = GBA_ITEM_MACHO_BRACE,   },
    [ITEM_EXP_SHARE]    = {  .dataID = 0xC2,  .iconID = ICON_EXP_SHARE,     .paletteID = PLTT_EXP_SHARE,      .gen3ID = GBA_ITEM_EXP_SHARE,     },
    [ITEM_QUICK_CLAW]   = {  .dataID = 0xC3,  .iconID = ICON_QUICK_CLAW,    .paletteID = PLTT_QUICK_CLAW,     .gen3ID = GBA_ITEM_QUICK_CLAW,    },
    [ITEM_SOOTHE_BELL]  = {  .dataID = 0xC4,  .iconID = ICON_SOOTHE_BELL,   .paletteID = PLTT_SOOTHE_BELL,    .gen3ID = GBA_ITEM_SOOTHE_BELL,   },
    [ITEM_MENTAL_HERB]  = {  .dataID = 0xC5,  .iconID = ICON_HERB,          .paletteID = PLTT_MENTAL_HERB,    .gen3ID = GBA_ITEM_MENTAL_HERB,   },
    [ITEM_CHOICE_BAND]  = {  .dataID = 0xC6,  .iconID = ICON_CHOICE_BAND,   .paletteID = PLTT_CHOICE_BAND,    .gen3ID = GBA_ITEM_CHOICE_BAND,   },
    [ITEM_KINGS_ROCK]   = {  .dataID = 0xC7,  .iconID = ICON_KINGS_ROCK,    .paletteID = PLTT_KINGS_ROCK,     .gen3ID = GBA_ITEM_KINGS_ROCK,    },
    [ITEM_SILVERPOWDER] = {  .dataID = 0xC8,  .iconID = ICON_SILVERPOWDER,  .paletteID = PLTT_SILVERPOWDER,   .gen3ID = GBA_ITEM_SILVER_POWDER, },
    [ITEM_AMULET_COIN]  = {  .dataID = 0xC9,  .iconID = ICON_AMULET_COIN,   .paletteID = PLTT_AMULET_COIN,    .gen3ID = GBA_ITEM_AMULET_COIN,   },
    [ITEM_CLEANSE_TAG]  = {  .dataID = 0xCA,  .iconID = ICON_CLEANSE_TAG,   .paletteID = PLTT_CLEANSE_TAG,    .gen3ID = GBA_ITEM_CLEANSE_TAG,   },
    [ITEM_SOUL_DEW]     = {  .dataID = 0xCB,  .iconID = ICON_SOUL_DEW,      .paletteID = PLTT_SOUL_DEW,       .gen3ID = GBA_ITEM_SOUL_DEW,      },
    [ITEM_DEEPSEATOOTH] = {  .dataID = 0xCC,  .iconID = ICON_DEEPSEATOOTH,  .paletteID = PLTT_DEEPSEATOOTH,   .gen3ID = GBA_ITEM_DEEP_SEA_TOOTH,},
    [ITEM_DEEPSEASCALE] = {  .dataID = 0xCD,  .iconID = ICON_DEEPSEASCALE,  .paletteID = PLTT_DEEPSEASCALE,   .gen3ID = GBA_ITEM_DEEP_SEA_SCALE,},
    [ITEM_SMOKE_BALL]   = {  .dataID = 0xCE,  .iconID = ICON_SMOKE_BALL,    .paletteID = PLTT_SMOKE_BALL,     .gen3ID = GBA_ITEM_SMOKE_BALL,    },
    [ITEM_EVERSTONE]    = {  .dataID = 0xCF,  .iconID = ICON_EVERSTONE,     .paletteID = PLTT_EVERSTONE,      .gen3ID = GBA_ITEM_EVERSTONE,     },
    [ITEM_FOCUS_BAND]   = {  .dataID = 0xD0,  .iconID = ICON_FOCUS_BAND,    .paletteID = PLTT_FOCUS_BAND,     .gen3ID = GBA_ITEM_FOCUS_BAND,    },
    [ITEM_LUCKY_EGG]    = {  .dataID = 0xD1,  .iconID = ICON_LUCKY_EGG,     .paletteID = PLTT_LUCKY_EGG,      .gen3ID = GBA_ITEM_LUCKY_EGG,     },
    [ITEM_SCOPE_LENS]   = {  .dataID = 0xD2,  .iconID = ICON_SCOPE_LENS,    .paletteID = PLTT_SCOPE_LENS,     .gen3ID = GBA_ITEM_SCOPE_LENS,    },
    [ITEM_METAL_COAT]   = {  .dataID = 0xD3,  .iconID = ICON_METAL_COAT,    .paletteID = PLTT_METAL_COAT,     .gen3ID = GBA_ITEM_METAL_COAT,    },
    [ITEM_LEFTOVERS]    = {  .dataID = 0xD4,  .iconID = ICON_LEFTOVERS,     .paletteID = PLTT_LEFTOVERS,      .gen3ID = GBA_ITEM_LEFTOVERS,     },
    [ITEM_DRAGON_SCALE] = {  .dataID = 0xD5,  .iconID = ICON_DRAGON_SCALE,  .paletteID = PLTT_DRAGON_SCALE,   .gen3ID = GBA_ITEM_DRAGON_SCALE,  },
    [ITEM_LIGHT_BALL]   = {  .dataID = 0xD6,  .iconID = ICON_LIGHT_BALL,    .paletteID = PLTT_LIGHT_BALL,     .gen3ID = GBA_ITEM_LIGHT_BALL,    },
    [ITEM_SOFT_SAND]    = {  .dataID = 0xD7,  .iconID = ICON_SOFT_SAND,     .paletteID = PLTT_SOFT_SAND,      .gen3ID = GBA_ITEM_SOFT_SAND,     },
    [ITEM_HARD_STONE]   = {  .dataID = 0xD8,  .iconID = ICON_HARD_STONE,    .paletteID = PLTT_HARD_STONE,     .gen3ID = GBA_ITEM_HARD_STONE,    },
    [ITEM_MIRACLE_SEED] = {  .dataID = 0xD9,  .iconID = ICON_MIRACLE_SEED,  .paletteID = PLTT_MIRACLE_SEED,   .gen3ID = GBA_ITEM_MIRACLE_SEED,  },
    [ITEM_BLACKGLASSES] = {  .dataID = 0xDA,  .iconID = ICON_BLACKGLASSES,  .paletteID = PLTT_BLACKGLASSES,   .gen3ID = GBA_ITEM_BLACK_GLASSES, },
    [ITEM_BLACK_BELT]   = {  .dataID = 0xDB,  .iconID = ICON_BLACK_BELT,    .paletteID = PLTT_BLACKGLASSES,   .gen3ID = GBA_ITEM_BLACK_BELT,    },
    [ITEM_MAGNET]       = {  .dataID = 0xDC,  .iconID = ICON_MAGNET,        .paletteID = PLTT_MAGNET,         .gen3ID = GBA_ITEM_MAGNET,        },
    [ITEM_MYSTIC_WATER] = {  .dataID = 0xDD,  .iconID = ICON_MYSTIC_WATER,  .paletteID = PLTT_MYSTIC_WATER,   .gen3ID = GBA_ITEM_MYSTIC_WATER,  },
    [ITEM_SHARP_BEAK]   = {  .dataID = 0xDE,  .iconID = ICON_SHARP_BEAK,    .paletteID = PLTT_SHARP_BEAK,     .gen3ID = GBA_ITEM_SHARP_BEAK,    },
    [ITEM_POISON_BARB]  = {  .dataID = 0xDF,  .iconID = ICON_POISON_BARB,   .paletteID = PLTT_POISON_BARB,    .gen3ID = GBA_ITEM_POISON_BARB,   },
    [ITEM_NEVERMELTICE] = {  .dataID = 0xE0,  .iconID = ICON_NEVERMELTICE,  .paletteID = PLTT_NEVERMELTICE,   .gen3ID = GBA_ITEM_NEVER_MELT_ICE,},
    [ITEM_SPELL_TAG]    = {  .dataID = 0xE1,  .iconID = ICON_SPELL_TAG,     .paletteID = PLTT_SPELL_TAG,      .gen3ID = GBA_ITEM_SPELL_TAG,     },
    [ITEM_TWISTEDSPOON] = {  .dataID = 0xE2,  .iconID = ICON_TWISTED_SPOON, .paletteID = PLTT_TWISTED_SPOON,  .gen3ID = GBA_ITEM_TWISTED_SPOON, },
    [ITEM_CHARCOAL]     = {  .dataID = 0xE3,  .iconID = ICON_CHARCOAL,      .paletteID = PLTT_CHARCOAL,       .gen3ID = GBA_ITEM_CHARCOAL,      },
    [ITEM_DRAGON_FANG]  = {  .dataID = 0xE4,  .iconID = ICON_DRAGON_FANG,   .paletteID = PLTT_DRAGON_FANG,    .gen3ID = GBA_ITEM_DRAGON_FANG,   },
    [ITEM_SILK_SCARF]   = {  .dataID = 0xE5,  .iconID = ICON_SILK_SCARF,    .paletteID = PLTT_SILK_SCARF,     .gen3ID = GBA_ITEM_SILK_SCARF,    },
    [ITEM_UPGRADE]      = {  .dataID = 0xE6,  .iconID = ICON_UPGRADE,       .paletteID = PLTT_UPGRADE,        .gen3ID = GBA_ITEM_UP_GRADE,      },
    [ITEM_SHELL_BELL]   = {  .dataID = 0xE7,  .iconID = ICON_SHELL_BELL,    .paletteID = PLTT_SHOAL_SHELL,    .gen3ID = GBA_ITEM_SHELL_BELL,    },
    [ITEM_SEA_INCENSE]  = {  .dataID = 0xE8,  .iconID = ICON_SEA_INCENSE,   .paletteID = PLTT_SEA_INCENSE,    .gen3ID = GBA_ITEM_SEA_INCENSE,   },
    [ITEM_LAX_INCENSE]  = {  .dataID = 0xE9,  .iconID = ICON_LAX_INCENSE,   .paletteID = PLTT_LAX_INCENSE,    .gen3ID = GBA_ITEM_LAX_INCENSE,   },
    [ITEM_LUCKY_PUNCH]  = {  .dataID = 0xEA,  .iconID = ICON_LUCKY_PUNCH,   .paletteID = PLTT_LUCKY_PUNCH,    .gen3ID = GBA_ITEM_LUCKY_PUNCH,   },
    [ITEM_METAL_POWDER] = {  .dataID = 0xEB,  .iconID = ICON_POWDER,        .paletteID = PLTT_METAL_POWDER,   .gen3ID = GBA_ITEM_METAL_POWDER,  },
    [ITEM_THICK_CLUB]   = {  .dataID = 0xEC,  .iconID = ICON_BONE,          .paletteID = PLTT_BONE,           .gen3ID = GBA_ITEM_THICK_CLUB,    },
    [ITEM_STICK]        = {  .dataID = 0xED,  .iconID = ICON_STICK,         .paletteID = PLTT_STICK,          .gen3ID = GBA_ITEM_STICK,         },
    [ITEM_RED_SCARF]    = {  .dataID = 0xEE,  .iconID = ICON_SCARF,         .paletteID = PLTT_RED_SCARF,      .gen3ID = GBA_ITEM_RED_SCARF,     },
    [ITEM_BLUE_SCARF]   = {  .dataID = 0xEF,  .iconID = ICON_SCARF,         .paletteID = PLTT_BLUE_SCARF,     .gen3ID = GBA_ITEM_BLUE_SCARF,    },
    [ITEM_PINK_SCARF]   = {  .dataID = 0xF0,  .iconID = ICON_SCARF,         .paletteID = PLTT_PINK_SCARF,     .gen3ID = GBA_ITEM_PINK_SCARF,    },
    [ITEM_GREEN_SCARF]  = {  .dataID = 0xF1,  .iconID = ICON_SCARF,         .paletteID = PLTT_GREEN_SCARF,    .gen3ID = GBA_ITEM_GREEN_SCARF,   },
    [ITEM_YELLOW_SCARF] = {  .dataID = 0xF2,  .iconID = ICON_SCARF,         .paletteID = PLTT_YELLOW_SCARF,   .gen3ID = GBA_ITEM_YELLOW_SCARF,  },
    [ITEM_WIDE_LENS]    = {  .dataID = 0xF3,  .iconID = ICON_WIDE_LENS,     .paletteID = PLTT_WIDE_LENS,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_MUSCLE_BAND]  = {  .dataID = 0xF4,  .iconID = ICON_MUSCLE_BAND,   .paletteID = PLTT_MUSCLE_BAND,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_WISE_GLASSES] = {  .dataID = 0xF5,  .iconID = ICON_WISE_GLASSES,  .paletteID = PLTT_WISE_GLASSES,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_EXPERT_BELT]  = {  .dataID = 0xF6,  .iconID = ICON_EXPERT_BELT,   .paletteID = PLTT_EXPERT_BELT,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_LIGHT_CLAY]   = {  .dataID = 0xF7,  .iconID = ICON_LIGHT_CLAY,    .paletteID = PLTT_LIGHT_CLAY,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_LIFE_ORB]     = {  .dataID = 0xF8,  .iconID = ICON_LIFE_ORB,      .paletteID = PLTT_LIFE_ORB,       .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_POWER_HERB]   = {  .dataID = 0xF9,  .iconID = ICON_POWER_HERB,    .paletteID = PLTT_POWER_HERB,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TOXIC_ORB]    = {  .dataID = 0xFA,  .iconID = ICON_TOXIC_ORB,     .paletteID = PLTT_TOXIC_ORB,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_FLAME_ORB]    = {  .dataID = 0xFB,  .iconID = ICON_FLAME_ORB,     .paletteID = PLTT_FLAME_ORB,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_QUICK_POWDER] = {  .dataID = 0xFC,  .iconID = ICON_POWDER,        .paletteID = PLTT_QUICK_POWDER,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_FOCUS_SASH]   = {  .dataID = 0xFD,  .iconID = ICON_FOCUS_SASH,    .paletteID = PLTT_FOCUS_SASH,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_ZOOM_LENS]    = {  .dataID = 0xFE,  .iconID = ICON_ZOOM_LENS,     .paletteID = PLTT_ZOOM_LENS,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_METRONOME]    = {  .dataID = 0xFF,  .iconID = ICON_METRONOME,     .paletteID = PLTT_METRONOME,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_IRON_BALL]    = {  .dataID = 0x100, .iconID = ICON_IRON_BALL,     .paletteID = PLTT_IRON_BALL,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_LAGGING_TAIL] = {  .dataID = 0x101, .iconID = ICON_LAGGING_TAIL,  .paletteID = PLTT_LAGGING_TAIL,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_DESTINY_KNOT] = {  .dataID = 0x102, .iconID = ICON_DESTINY_KNOT,  .paletteID = PLTT_DESTINY_KNOT,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_BLACK_SLUDGE] = {  .dataID = 0x103, .iconID = ICON_BLACK_SLUDGE,  .paletteID = PLTT_BLACK_SLUDGE,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_ICY_ROCK]     = {  .dataID = 0x104, .iconID = ICON_ICY_ROCK,      .paletteID = PLTT_ICY_ROCK,       .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_SMOOTH_ROCK]  = {  .dataID = 0x105, .iconID = ICON_SMOOTH_ROCK,   .paletteID = PLTT_SMOOTH_ROCK,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_HEAT_ROCK]    = {  .dataID = 0x106, .iconID = ICON_HEAT_ROCK,     .paletteID = PLTT_HEAT_ROCK,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_DAMP_ROCK]    = {  .dataID = 0x107, .iconID = ICON_DAMP_ROCK,     .paletteID = PLTT_DAMP_ROCK,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_GRIP_CLAW]    = {  .dataID = 0x108, .iconID = ICON_GRIP_CLAW,     .paletteID = PLTT_GRIP_CLAW,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_CHOICE_SCARF] = {  .dataID = 0x109, .iconID = ICON_CHOICE_SCARF,  .paletteID = PLTT_CHOICE_SCARF,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_STICKY_BARB]  = {  .dataID = 0x10A, .iconID = ICON_STICKY_BARB,   .paletteID = PLTT_STICKY_BARB,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_POWER_BRACER] = {  .dataID = 0x10B, .iconID = ICON_POWER_BRACER,  .paletteID = PLTT_POWER_BRACER,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_POWER_BELT]   = {  .dataID = 0x10C, .iconID = ICON_POWER_BELT,    .paletteID = PLTT_POWER_BELT,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_POWER_LENS]   = {  .dataID = 0x10D, .iconID = ICON_POWER_LENS,    .paletteID = PLTT_POWER_LENS,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_POWER_BAND]   = {  .dataID = 0x10E, .iconID = ICON_POWER_BAND,    .paletteID = PLTT_POWER_BAND,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_POWER_ANKLET] = {  .dataID = 0x10F, .iconID = ICON_POWER_ANKLET,  .paletteID = PLTT_POWER_ANKLET,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_POWER_WEIGHT] = {  .dataID = 0x110, .iconID = ICON_POWER_WEIGHT,  .paletteID = PLTT_POWER_WEIGHT,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_SHED_SHELL]   = {  .dataID = 0x111, .iconID = ICON_SHED_SHELL,    .paletteID = PLTT_SHED_SHELL,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_BIG_ROOT]     = {  .dataID = 0x112, .iconID = ICON_BIG_ROOT,      .paletteID = PLTT_BIG_ROOT,       .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_CHOICE_SPECS] = {  .dataID = 0x113, .iconID = ICON_CHOICE_SPECS,  .paletteID = PLTT_CHOICE_SPECS,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_FLAME_PLATE]  = {  .dataID = 0x114, .iconID = ICON_PLATE,         .paletteID = PLTT_FLAME_PLATE,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_SPLASH_PLATE] = {  .dataID = 0x115, .iconID = ICON_PLATE,         .paletteID = PLTT_SPLASH_PLATE,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_ZAP_PLATE]    = {  .dataID = 0x116, .iconID = ICON_PLATE,         .paletteID = PLTT_ZAP_PLATE,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_MEADOW_PLATE] = {  .dataID = 0x117, .iconID = ICON_PLATE,         .paletteID = PLTT_MEADOW_PLATE,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_ICICLE_PLATE] = {  .dataID = 0x118, .iconID = ICON_PLATE,         .paletteID = PLTT_ICICLE_PLATE,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_FIST_PLATE]   = {  .dataID = 0x119, .iconID = ICON_PLATE,         .paletteID = PLTT_FIST_PLATE,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TOXIC_PLATE]  = {  .dataID = 0x11A, .iconID = ICON_PLATE,         .paletteID = PLTT_TOXIC_PLATE,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_EARTH_PLATE]  = {  .dataID = 0x11B, .iconID = ICON_PLATE,         .paletteID = PLTT_EARTH_PLATE,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_SKY_PLATE]    = {  .dataID = 0x11C, .iconID = ICON_PLATE,         .paletteID = PLTT_SKY_PLATE,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_MIND_PLATE]   = {  .dataID = 0x11D, .iconID = ICON_PLATE,         .paletteID = PLTT_MIND_PLATE,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_INSECT_PLATE] = {  .dataID = 0x11E, .iconID = ICON_PLATE,         .paletteID = PLTT_INSECT_PLATE,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_STONE_PLATE]  = {  .dataID = 0x11F, .iconID = ICON_PLATE,         .paletteID = PLTT_STONE_PLATE,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_SPOOKY_PLATE] = {  .dataID = 0x120, .iconID = ICON_PLATE,         .paletteID = PLTT_SPOOKY_PLATE,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_DRACO_PLATE]  = {  .dataID = 0x121, .iconID = ICON_PLATE,         .paletteID = PLTT_DRACO_PLATE,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_DREAD_PLATE]  = {  .dataID = 0x122, .iconID = ICON_PLATE,         .paletteID = PLTT_DREAD_PLATE,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_IRON_PLATE]   = {  .dataID = 0x123, .iconID = ICON_PLATE,         .paletteID = PLTT_IRON_PLATE,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_ODD_INCENSE]  = {  .dataID = 0x124, .iconID = ICON_ODD_INCENSE,   .paletteID = PLTT_ODD_INCENSE,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_ROCK_INCENSE] = {  .dataID = 0x125, .iconID = ICON_ROCK_INCENSE,  .paletteID = PLTT_ROCK_INCENSE,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_FULL_INCENSE] = {  .dataID = 0x126, .iconID = ICON_FULL_INCENSE,  .paletteID = PLTT_FULL_INCENSE,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_WAVE_INCENSE] = {  .dataID = 0x127, .iconID = ICON_WAVE_INCENSE,  .paletteID = PLTT_WAVE_INCENSE,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_ROSE_INCENSE] = {  .dataID = 0x128, .iconID = ICON_ROSE_INCENSE,  .paletteID = PLTT_ROSE_INCENSE,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_LUCK_INCENSE] = {  .dataID = 0x129, .iconID = ICON_LUCK_INCENSE,  .paletteID = PLTT_LUCK_INCENSE,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_PURE_INCENSE] = {  .dataID = 0x12A, .iconID = ICON_PURE_INCENSE,  .paletteID = PLTT_PURE_INCENSE,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_PROTECTOR]    = {  .dataID = 0x12B, .iconID = ICON_PROTECTOR,     .paletteID = PLTT_PROTECTOR,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_ELECTIRIZER]  = {  .dataID = 0x12C, .iconID = ICON_ELECTIRIZER,   .paletteID = PLTT_ELECTIRIZER,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_MAGMARIZER]   = {  .dataID = 0x12D, .iconID = ICON_MAGMARIZER,    .paletteID = PLTT_MAGMARIZER,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_DUBIOUS_DISC] = {  .dataID = 0x12E, .iconID = ICON_DUBIOUS_DISC,  .paletteID = PLTT_DUBIOUS_DISC,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_REAPER_CLOTH] = {  .dataID = 0x12F, .iconID = ICON_REAPER_CLOTH,  .paletteID = PLTT_REAPER_CLOTH,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_RAZOR_CLAW]   = {  .dataID = 0x130, .iconID = ICON_RAZOR_CLAW,    .paletteID = PLTT_RAZOR_CLAW,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_RAZOR_FANG]   = {  .dataID = 0x131, .iconID = ICON_RAZOR_FANG,    .paletteID = PLTT_RAZOR_FANG,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM01]         = {  .dataID = 0x132, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_FIGHTING, .gen3ID = GBA_ITEM_TM01,          },
    [ITEM_TM02]         = {  .dataID = 0x133, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_DRAGON,   .gen3ID = GBA_ITEM_TM02,          },
    [ITEM_TM03]         = {  .dataID = 0x134, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_WATER,    .gen3ID = GBA_ITEM_TM03,          },
    [ITEM_TM04]         = {  .dataID = 0x135, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_PSYCHIC,  .gen3ID = GBA_ITEM_TM04,          },
    [ITEM_TM05]         = {  .dataID = 0x136, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_NORMAL,   .gen3ID = GBA_ITEM_TM05,          },
    [ITEM_TM06]         = {  .dataID = 0x137, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_POISON,   .gen3ID = GBA_ITEM_TM06,          },
    [ITEM_TM07]         = {  .dataID = 0x138, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_ICE,      .gen3ID = GBA_ITEM_TM07,          },
    [ITEM_TM08]         = {  .dataID = 0x139, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_FIGHTING, .gen3ID = GBA_ITEM_TM08,          },
    [ITEM_TM09]         = {  .dataID = 0x13A, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_GRASS,    .gen3ID = GBA_ITEM_TM09,          },
    [ITEM_TM10]         = {  .dataID = 0x13B, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_NORMAL,   .gen3ID = GBA_ITEM_TM10,          },
    [ITEM_TM11]         = {  .dataID = 0x13C, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_FIRE,     .gen3ID = GBA_ITEM_TM11,          },
    [ITEM_TM12]         = {  .dataID = 0x13D, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_DARK,     .gen3ID = GBA_ITEM_TM12,          },
    [ITEM_TM13]         = {  .dataID = 0x13E, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_ICE,      .gen3ID = GBA_ITEM_TM13,          },
    [ITEM_TM14]         = {  .dataID = 0x13F, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_ICE,      .gen3ID = GBA_ITEM_TM14,          },
    [ITEM_TM15]         = {  .dataID = 0x140, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_NORMAL,   .gen3ID = GBA_ITEM_TM15,          },
    [ITEM_TM16]         = {  .dataID = 0x141, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_PSYCHIC,  .gen3ID = GBA_ITEM_TM16,          },
    [ITEM_TM17]         = {  .dataID = 0x142, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_NORMAL,   .gen3ID = GBA_ITEM_TM17,          },
    [ITEM_TM18]         = {  .dataID = 0x143, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_WATER,    .gen3ID = GBA_ITEM_TM18,          },
    [ITEM_TM19]         = {  .dataID = 0x144, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_GRASS,    .gen3ID = GBA_ITEM_TM19,          },
    [ITEM_TM20]         = {  .dataID = 0x145, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_NORMAL,   .gen3ID = GBA_ITEM_TM20,          },
    [ITEM_TM21]         = {  .dataID = 0x146, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_NORMAL,   .gen3ID = GBA_ITEM_TM21,          },
    [ITEM_TM22]         = {  .dataID = 0x147, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_GRASS,    .gen3ID = GBA_ITEM_TM22,          },
    [ITEM_TM23]         = {  .dataID = 0x148, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_STEEL,    .gen3ID = GBA_ITEM_TM23,          },
    [ITEM_TM24]         = {  .dataID = 0x149, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_ELECTRIC, .gen3ID = GBA_ITEM_TM24,          },
    [ITEM_TM25]         = {  .dataID = 0x14A, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_ELECTRIC, .gen3ID = GBA_ITEM_TM25,          },
    [ITEM_TM26]         = {  .dataID = 0x14B, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_GROUND,   .gen3ID = GBA_ITEM_TM26,          },
    [ITEM_TM27]         = {  .dataID = 0x14C, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_NORMAL,   .gen3ID = GBA_ITEM_TM27,          },
    [ITEM_TM28]         = {  .dataID = 0x14D, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_GROUND,   .gen3ID = GBA_ITEM_TM28,          },
    [ITEM_TM29]         = {  .dataID = 0x14E, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_PSYCHIC,  .gen3ID = GBA_ITEM_TM29,          },
    [ITEM_TM30]         = {  .dataID = 0x14F, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_GHOST,    .gen3ID = GBA_ITEM_TM30,          },
    [ITEM_TM31]         = {  .dataID = 0x150, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_FIGHTING, .gen3ID = GBA_ITEM_TM31,          },
    [ITEM_TM32]         = {  .dataID = 0x151, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_NORMAL,   .gen3ID = GBA_ITEM_TM32,          },
    [ITEM_TM33]         = {  .dataID = 0x152, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_PSYCHIC,  .gen3ID = GBA_ITEM_TM33,          },
    [ITEM_TM34]         = {  .dataID = 0x153, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_ELECTRIC, .gen3ID = GBA_ITEM_TM34,          },
    [ITEM_TM35]         = {  .dataID = 0x154, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_FIRE,     .gen3ID = GBA_ITEM_TM35,          },
    [ITEM_TM36]         = {  .dataID = 0x155, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_POISON,   .gen3ID = GBA_ITEM_TM36,          },
    [ITEM_TM37]         = {  .dataID = 0x156, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_ROCK,     .gen3ID = GBA_ITEM_TM37,          },
    [ITEM_TM38]         = {  .dataID = 0x157, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_FIRE,     .gen3ID = GBA_ITEM_TM38,          },
    [ITEM_TM39]         = {  .dataID = 0x158, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_ROCK,     .gen3ID = GBA_ITEM_TM39,          },
    [ITEM_TM40]         = {  .dataID = 0x159, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_FLYING,   .gen3ID = GBA_ITEM_TM40,          },
    [ITEM_TM41]         = {  .dataID = 0x15A, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_DARK,     .gen3ID = GBA_ITEM_TM41,          },
    [ITEM_TM42]         = {  .dataID = 0x15B, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_NORMAL,   .gen3ID = GBA_ITEM_TM42,          },
    [ITEM_TM43]         = {  .dataID = 0x15C, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_NORMAL,   .gen3ID = GBA_ITEM_TM43,          },
    [ITEM_TM44]         = {  .dataID = 0x15D, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_PSYCHIC,  .gen3ID = GBA_ITEM_TM44,          },
    [ITEM_TM45]         = {  .dataID = 0x15E, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_NORMAL,   .gen3ID = GBA_ITEM_TM45,          },
    [ITEM_TM46]         = {  .dataID = 0x15F, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_DARK,     .gen3ID = GBA_ITEM_TM46,          },
    [ITEM_TM47]         = {  .dataID = 0x160, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_STEEL,    .gen3ID = GBA_ITEM_TM47,          },
    [ITEM_TM48]         = {  .dataID = 0x161, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_PSYCHIC,  .gen3ID = GBA_ITEM_TM48,          },
    [ITEM_TM49]         = {  .dataID = 0x162, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_DARK,     .gen3ID = GBA_ITEM_TM49,          },
    [ITEM_TM50]         = {  .dataID = 0x163, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_FIRE,     .gen3ID = GBA_ITEM_TM50,          },
    [ITEM_TM51]         = {  .dataID = 0x164, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_FLYING,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM52]         = {  .dataID = 0x165, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_FIGHTING, .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM53]         = {  .dataID = 0x166, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_GRASS,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM54]         = {  .dataID = 0x167, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_NORMAL,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM55]         = {  .dataID = 0x168, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_WATER,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM56]         = {  .dataID = 0x169, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_DARK,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM57]         = {  .dataID = 0x16A, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_ELECTRIC, .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM58]         = {  .dataID = 0x16B, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_NORMAL,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM59]         = {  .dataID = 0x16C, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_DRAGON,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM60]         = {  .dataID = 0x16D, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_FIGHTING, .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM61]         = {  .dataID = 0x16E, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_FIRE,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM62]         = {  .dataID = 0x16F, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_BUG,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM63]         = {  .dataID = 0x170, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_DARK,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM64]         = {  .dataID = 0x171, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_NORMAL,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM65]         = {  .dataID = 0x172, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_GHOST,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM66]         = {  .dataID = 0x173, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_DARK,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM67]         = {  .dataID = 0x174, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_NORMAL,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM68]         = {  .dataID = 0x175, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_NORMAL,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM69]         = {  .dataID = 0x176, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_ROCK,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM70]         = {  .dataID = 0x177, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_NORMAL,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM71]         = {  .dataID = 0x178, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_ROCK,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM72]         = {  .dataID = 0x179, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_ICE,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM73]         = {  .dataID = 0x17A, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_ELECTRIC, .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM74]         = {  .dataID = 0x17B, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_STEEL,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM75]         = {  .dataID = 0x17C, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_NORMAL,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM76]         = {  .dataID = 0x17D, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_ROCK,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM77]         = {  .dataID = 0x17E, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_NORMAL,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM78]         = {  .dataID = 0x17F, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_NORMAL,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM79]         = {  .dataID = 0x180, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_DARK,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM80]         = {  .dataID = 0x181, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_ROCK,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM81]         = {  .dataID = 0x182, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_BUG,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM82]         = {  .dataID = 0x183, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_NORMAL,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM83]         = {  .dataID = 0x184, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_NORMAL,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM84]         = {  .dataID = 0x185, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_POISON,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM85]         = {  .dataID = 0x186, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_PSYCHIC,  .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM86]         = {  .dataID = 0x187, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_GRASS,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM87]         = {  .dataID = 0x188, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_NORMAL,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM88]         = {  .dataID = 0x189, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_FLYING,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM89]         = {  .dataID = 0x18A, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_BUG,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM90]         = {  .dataID = 0x18B, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_NORMAL,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM91]         = {  .dataID = 0x18C, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_STEEL,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TM92]         = {  .dataID = 0x18D, .iconID = ICON_TM,            .paletteID = PLTT_TM_HM_PSYCHIC,  .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_HM01]         = {  .dataID = 0x18E, .iconID = ICON_HM,            .paletteID = PLTT_TM_HM_NORMAL,   .gen3ID = GBA_ITEM_HM01,          },
    [ITEM_HM02]         = {  .dataID = 0x18F, .iconID = ICON_HM,            .paletteID = PLTT_TM_HM_FLYING,   .gen3ID = GBA_ITEM_HM02,          },
    [ITEM_HM03]         = {  .dataID = 0x190, .iconID = ICON_HM,            .paletteID = PLTT_TM_HM_WATER,    .gen3ID = GBA_ITEM_HM03,          },
    [ITEM_HM04]         = {  .dataID = 0x191, .iconID = ICON_HM,            .paletteID = PLTT_TM_HM_NORMAL,   .gen3ID = GBA_ITEM_HM04,          },
    [ITEM_HM05]         = {  .dataID = 0x192, .iconID = ICON_HM,            .paletteID = PLTT_TM_HM_WATER,    .gen3ID = GBA_ITEM_HM05,          },
    [ITEM_HM06]         = {  .dataID = 0x193, .iconID = ICON_HM,            .paletteID = PLTT_TM_HM_FIGHTING, .gen3ID = GBA_ITEM_HM06,          },
    [ITEM_HM07]         = {  .dataID = 0x194, .iconID = ICON_HM,            .paletteID = PLTT_TM_HM_WATER,    .gen3ID = GBA_ITEM_HM07,          },
    [ITEM_HM08]         = {  .dataID = 0x195, .iconID = ICON_HM,            .paletteID = PLTT_TM_HM_NORMAL,   .gen3ID = GBA_ITEM_HM08,          },
    [ITEM_EXPLORER_KIT] = {  .dataID = 0x196, .iconID = ICON_EXPLORER_KIT,  .paletteID = PLTT_EXPLORER_KIT,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_LOOT_SACK]    = {  .dataID = 0x197, .iconID = ICON_LOOT_SACK,     .paletteID = PLTT_LOOT_SACK,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_RULE_BOOK]    = {  .dataID = 0x198, .iconID = ICON_RULE_BOOK,     .paletteID = PLTT_RULE_BOOK,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_POKE_RADAR]   = {  .dataID = 0x199, .iconID = ICON_POKE_RADAR,    .paletteID = PLTT_POKE_RADAR,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_POINT_CARD]   = {  .dataID = 0x19A, .iconID = ICON_POINT_CARD,    .paletteID = PLTT_POINT_CARD,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_JOURNAL]      = {  .dataID = 0x19B, .iconID = ICON_JOURNAL,       .paletteID = PLTT_JOURNAL,        .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_SEAL_CASE]    = {  .dataID = 0x19C, .iconID = ICON_SEAL_CASE,     .paletteID = PLTT_SEAL_CASE,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_FASHION_CASE] = {  .dataID = 0x19D, .iconID = ICON_FASHION_CASE,  .paletteID = PLTT_FASHION_CASE,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_SEAL_BAG]     = {  .dataID = 0x19E, .iconID = ICON_SEAL_BAG,      .paletteID = PLTT_SEAL_BAG,       .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_PAL_PAD]      = {  .dataID = 0x19F, .iconID = ICON_SEAL_PAD,      .paletteID = PLTT_SEAL_PAD,       .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_WORKS_KEY]    = {  .dataID = 0x1A0, .iconID = ICON_WORKS_KEY,     .paletteID = PLTT_WORKS_KEY,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_OLD_CHARM]    = {  .dataID = 0x1A1, .iconID = ICON_OLD_CHARM,     .paletteID = PLTT_OLD_CHARM,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_GALACTIC_KEY] = {  .dataID = 0x1A2, .iconID = ICON_GALACTIC_KEY,  .paletteID = PLTT_GALACTIC_KEY,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_RED_CHAIN]    = {  .dataID = 0x1A3, .iconID = ICON_RED_CHAIN,     .paletteID = PLTT_RED_CHAIN,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_TOWN_MAP]     = {  .dataID = 0x1A4, .iconID = ICON_TOWN_MAP,      .paletteID = PLTT_TOWN_MAP,       .gen3ID = GBA_ITEM_TOWN_MAP,      },
    [ITEM_VS_SEEKER]    = {  .dataID = 0x1A5, .iconID = ICON_VS_SEEKER,     .paletteID = PLTT_VS_SEEKER,      .gen3ID = GBA_ITEM_VS_SEEKER,     },
    [ITEM_COIN_CASE]    = {  .dataID = 0x1A6, .iconID = ICON_COIN_CASE,     .paletteID = PLTT_COIN_CASE,      .gen3ID = GBA_ITEM_COIN_CASE,     },
    [ITEM_OLD_ROD]      = {  .dataID = 0x1A7, .iconID = ICON_OLD_ROD,       .paletteID = PLTT_OLD_ROD,        .gen3ID = GBA_ITEM_OLD_ROD,       },
    [ITEM_GOOD_ROD]     = {  .dataID = 0x1A8, .iconID = ICON_GOOD_ROD,      .paletteID = PLTT_GOOD_ROD,       .gen3ID = GBA_ITEM_GOOD_ROD,      },
    [ITEM_SUPER_ROD]    = {  .dataID = 0x1A9, .iconID = ICON_SUPER_ROD,     .paletteID = PLTT_SUPER_ROD,      .gen3ID = GBA_ITEM_SUPER_ROD,     },
    [ITEM_SPRAYDUCK]    = {  .dataID = 0x1AA, .iconID = ICON_SPRAYDUCK,     .paletteID = PLTT_SPRAYDUCK,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_POFFIN_CASE]  = {  .dataID = 0x1AB, .iconID = ICON_POFFIN_CASE,   .paletteID = PLTT_POFFIN_CASE,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_BICYCLE]      = {  .dataID = 0x1AC, .iconID = ICON_BICYCLE,       .paletteID = PLTT_BICYCLE,        .gen3ID = GBA_ITEM_BICYCLE,       },
    [ITEM_SUITE_KEY]    = {  .dataID = 0x1AD, .iconID = ICON_SUITE_KEY,     .paletteID = PLTT_SUITE_KEY,      .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_OAKS_LETTER]  = {  .dataID = 0x1AE, .iconID = ICON_OAKS_LETTER,   .paletteID = PLTT_LAVA_COOKIE,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_LUNAR_WING]   = {  .dataID = 0x1AF, .iconID = ICON_LUNAR_WING,    .paletteID = PLTT_LUNAR_WING,     .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_MEMBER_CARD]  = {  .dataID = 0x1B0, .iconID = ICON_MEMBER_CARD,   .paletteID = PLTT_MEMBER_CARD,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_AZURE_FLUTE]  = {  .dataID = 0x1B1, .iconID = ICON_AZURE_FLUTE,   .paletteID = PLTT_AZURE_FLUTE,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_S_S_TICKET]   = {  .dataID = 0x1B2, .iconID = ICON_SS_TICKET,     .paletteID = PLTT_SS_TICKET,      .gen3ID = GBA_ITEM_SS_TICKET,     },
    [ITEM_CONTEST_PASS] = {  .dataID = 0x1B3, .iconID = ICON_CONTEST_PASS,  .paletteID = PLTT_CONTEST_PASS,   .gen3ID = GBA_ITEM_CONTEST_PASS,  },
    [ITEM_MAGMA_STONE]  = {  .dataID = 0x1B4, .iconID = ICON_MAGMA_STONE,   .paletteID = PLTT_MAGMA_STONE,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_PARCEL]       = {  .dataID = 0x1B5, .iconID = ICON_PARCEL,        .paletteID = PLTT_PARCEL,         .gen3ID = GBA_ITEM_OAKS_PARCEL,   },
    [ITEM_COUPON_1]     = {  .dataID = 0x1B6, .iconID = ICON_COUPON_1,      .paletteID = PLTT_COUPON_1,       .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_COUPON_2]     = {  .dataID = 0x1B7, .iconID = ICON_COUPON_2,      .paletteID = PLTT_COUPON_2,       .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_COUPON_3]     = {  .dataID = 0x1B8, .iconID = ICON_COUPON_3,      .paletteID = PLTT_COUPON_3,       .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_STORAGE_KEY]  = {  .dataID = 0x1B9, .iconID = ICON_STORAGE_KEY,   .paletteID = PLTT_STORAGE_KEY,    .gen3ID = GBA_ITEM_STORAGE_KEY,   },
    [ITEM_SECRETPOTION] = {  .dataID = 0x1BA, .iconID = ICON_SECRETPOTION,  .paletteID = PLTT_SECRETPOTION,   .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_VS_RECORDER]  = {  .dataID = 0x1BB, .iconID = ICON_VS_RECORDER,   .paletteID = PLTT_VS_RECORDER,    .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_GRACIDEA]     = {  .dataID = 0x1BC, .iconID = ICON_GRACIDEA,      .paletteID = PLTT_GRACIDEA,       .gen3ID = GBA_ITEM_NONE,          },
    [ITEM_SECRET_KEY]   = {  .dataID = 0x1BD, .iconID = ICON_SECRET_KEY,    .paletteID = PLTT_SECRET_KEY,     .gen3ID = GBA_ITEM_SECRET_KEY,    },
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
