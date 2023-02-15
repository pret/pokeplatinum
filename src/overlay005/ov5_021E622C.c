#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_02026218_decl.h"
#include "struct_decls/struct_02026224_decl.h"
#include "struct_decls/struct_02026310_decl.h"
#include "struct_decls/struct_0202CC84_decl.h"
#include "struct_decls/struct_0202CD88_decl.h"
#include "struct_defs/struct_02073C74.h"
#include "struct_defs/struct_02073C74_sub1.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_0203CDB0.h"

#include "unk_0200AC5C.h"
#include "unk_0200B29C.h"
#include "unk_0200B358.h"
#include "unk_02017038.h"
#include "heap.h"
#include "unk_0201D15C.h"
#include "unk_02023790.h"
#include "unk_02025E08.h"
#include "unk_02025E68.h"
#include "unk_020261E4.h"
#include "unk_0202CC64.h"
#include "unk_0202CD50.h"
#include "unk_020559DC.h"
#include "unk_02073C2C.h"
#include "party.h"
#include "item.h"
#include "unk_02092494.h"
#include "overlay005/ov5_021E622C.h"

#include "constants/species.h"
#include "constants/moves.h"

#define EGG_MOVES_SPECIES_OFFSET 20000
#define EGG_MOVES_TERMINATOR 0xFFFF
#define egg_moves(species, ...) (species + EGG_MOVES_SPECIES_OFFSET), __VA_ARGS__

const u16 gEggMoves[] = {
    egg_moves(SPECIES_BULBASAUR,
              MOVE_LIGHT_SCREEN,
              MOVE_SKULL_BASH,
              MOVE_SAFEGUARD,
              MOVE_CHARM,
              MOVE_PETAL_DANCE,
              MOVE_MAGICAL_LEAF,
              MOVE_GRASS_WHISTLE,
              MOVE_CURSE,
              MOVE_INGRAIN,
              MOVE_NATURE_POWER,
              MOVE_AMNESIA,
              MOVE_LEAF_STORM),
    egg_moves(SPECIES_CHARMANDER,
              MOVE_BELLY_DRUM,
              MOVE_ANCIENT_POWER,
              MOVE_ROCK_SLIDE,
              MOVE_BITE,
              MOVE_OUTRAGE,
              MOVE_BEAT_UP,
              MOVE_SWORDS_DANCE,
              MOVE_DRAGON_DANCE,
              MOVE_CRUNCH,
              MOVE_DRAGON_RUSH,
              MOVE_METAL_CLAW,
              MOVE_FLARE_BLITZ),
    egg_moves(SPECIES_SQUIRTLE,
              MOVE_MIRROR_COAT,
              MOVE_HAZE,
              MOVE_MIST,
              MOVE_FORESIGHT,
              MOVE_FLAIL,
              MOVE_REFRESH,
              MOVE_MUD_SPORT,
              MOVE_YAWN,
              MOVE_MUDDY_WATER,
              MOVE_FAKE_OUT,
              MOVE_AQUA_RING,
              MOVE_AQUA_JET),
    egg_moves(SPECIES_PIDGEY,
              MOVE_PURSUIT,
              MOVE_FEINT_ATTACK,
              MOVE_FORESIGHT,
              MOVE_STEEL_WING,
              MOVE_AIR_CUTTER,
              MOVE_AIR_SLASH,
              MOVE_BRAVE_BIRD,
              MOVE_UPROAR),
    egg_moves(SPECIES_RATTATA,
              MOVE_SCREECH,
              MOVE_FLAME_WHEEL,
              MOVE_FURY_SWIPES,
              MOVE_BITE,
              MOVE_COUNTER,
              MOVE_REVERSAL,
              MOVE_UPROAR,
              MOVE_SWAGGER,
              MOVE_LAST_RESORT,
              MOVE_ME_FIRST),
    egg_moves(SPECIES_SPEAROW,
              MOVE_FEINT_ATTACK,
              MOVE_FALSE_SWIPE,
              MOVE_SCARY_FACE,
              MOVE_QUICK_ATTACK,
              MOVE_TRI_ATTACK,
              MOVE_ASTONISH,
              MOVE_SKY_ATTACK,
              MOVE_WHIRLWIND,
              MOVE_UPROAR),
    egg_moves(SPECIES_EKANS,
              MOVE_PURSUIT,
              MOVE_SLAM,
              MOVE_SPITE,
              MOVE_BEAT_UP,
              MOVE_POISON_FANG,
              MOVE_SCARY_FACE,
              MOVE_POISON_TAIL,
              MOVE_DISABLE),
    egg_moves(SPECIES_SANDSHREW,
              MOVE_FLAIL,
              MOVE_SAFEGUARD,
              MOVE_COUNTER,
              MOVE_RAPID_SPIN,
              MOVE_ROCK_SLIDE,
              MOVE_METAL_CLAW,
              MOVE_SWORDS_DANCE,
              MOVE_CRUSH_CLAW,
              MOVE_NIGHT_SLASH),
    egg_moves(SPECIES_NIDORAN_F,
              MOVE_SUPERSONIC,
              MOVE_DISABLE,
              MOVE_TAKE_DOWN,
              MOVE_FOCUS_ENERGY,
              MOVE_CHARM,
              MOVE_COUNTER,
              MOVE_BEAT_UP,
              MOVE_PURSUIT),
    egg_moves(SPECIES_NIDORAN_M,
              MOVE_COUNTER,
              MOVE_DISABLE,
              MOVE_SUPERSONIC,
              MOVE_TAKE_DOWN,
              MOVE_AMNESIA,
              MOVE_CONFUSION,
              MOVE_BEAT_UP,
              MOVE_SUCKER_PUNCH),
    egg_moves(SPECIES_VULPIX,
              MOVE_FEINT_ATTACK,
              MOVE_HYPNOSIS,
              MOVE_FLAIL,
              MOVE_SPITE,
              MOVE_DISABLE,
              MOVE_HOWL,
              MOVE_PSYCH_UP,
              MOVE_HEAT_WAVE,
              MOVE_FLARE_BLITZ,
              MOVE_EXTRASENSORY,
              MOVE_ENERGY_BALL),
    egg_moves(SPECIES_ZUBAT,
              MOVE_QUICK_ATTACK,
              MOVE_PURSUIT,
              MOVE_FEINT_ATTACK,
              MOVE_GUST,
              MOVE_WHIRLWIND,
              MOVE_CURSE,
              MOVE_NASTY_PLOT,
              MOVE_HYPNOSIS,
              MOVE_ZEN_HEADBUTT,
              MOVE_BRAVE_BIRD),
    egg_moves(SPECIES_ODDISH,
              MOVE_SWORDS_DANCE,
              MOVE_RAZOR_LEAF,
              MOVE_FLAIL,
              MOVE_SYNTHESIS,
              MOVE_CHARM,
              MOVE_INGRAIN,
              MOVE_TICKLE),
    egg_moves(SPECIES_PARAS,
              MOVE_FALSE_SWIPE,
              MOVE_SCREECH,
              MOVE_COUNTER,
              MOVE_PSYBEAM,
              MOVE_FLAIL,
              MOVE_SWEET_SCENT,
              MOVE_LIGHT_SCREEN,
              MOVE_PURSUIT,
              MOVE_METAL_CLAW,
              MOVE_BUG_BITE,
              MOVE_CROSS_POISON),
    egg_moves(SPECIES_VENONAT,
              MOVE_BATON_PASS,
              MOVE_SCREECH,
              MOVE_GIGA_DRAIN,
              MOVE_SIGNAL_BEAM,
              MOVE_AGILITY,
              MOVE_MORNING_SUN,
              MOVE_TOXIC_SPIKES,
              MOVE_BUG_BITE),
    egg_moves(SPECIES_DIGLETT,
              MOVE_FEINT_ATTACK,
              MOVE_SCREECH,
              MOVE_ANCIENT_POWER,
              MOVE_PURSUIT,
              MOVE_BEAT_UP,
              MOVE_UPROAR,
              MOVE_ROCK_SLIDE,
              MOVE_MUD_BOMB,
              MOVE_ASTONISH),
    egg_moves(SPECIES_MEOWTH,
              MOVE_SPITE,
              MOVE_CHARM,
              MOVE_HYPNOSIS,
              MOVE_AMNESIA,
              MOVE_PSYCH_UP,
              MOVE_ASSIST,
              MOVE_ODOR_SLEUTH,
              MOVE_FLAIL,
              MOVE_LAST_RESORT,
              MOVE_PUNISHMENT),
    egg_moves(SPECIES_PSYDUCK,
              MOVE_HYPNOSIS,
              MOVE_PSYBEAM,
              MOVE_FORESIGHT,
              MOVE_LIGHT_SCREEN,
              MOVE_FUTURE_SIGHT,
              MOVE_PSYCHIC,
              MOVE_CROSS_CHOP,
              MOVE_REFRESH,
              MOVE_CONFUSE_RAY,
              MOVE_YAWN,
              MOVE_MUD_BOMB),
    egg_moves(SPECIES_MANKEY,
              MOVE_ROCK_SLIDE,
              MOVE_FORESIGHT,
              MOVE_MEDITATE,
              MOVE_COUNTER,
              MOVE_REVERSAL,
              MOVE_BEAT_UP,
              MOVE_REVENGE,
              MOVE_SMELLING_SALTS,
              MOVE_CLOSE_COMBAT),
    egg_moves(SPECIES_GROWLITHE,
              MOVE_BODY_SLAM,
              MOVE_SAFEGUARD,
              MOVE_CRUNCH,
              MOVE_THRASH,
              MOVE_FIRE_SPIN,
              MOVE_HOWL,
              MOVE_HEAT_WAVE,
              MOVE_DOUBLE_EDGE,
              MOVE_FLARE_BLITZ),
    egg_moves(SPECIES_POLIWAG,
              MOVE_MIST,
              MOVE_SPLASH,
              MOVE_BUBBLE_BEAM,
              MOVE_HAZE,
              MOVE_MIND_READER,
              MOVE_WATER_SPORT,
              MOVE_ICE_BALL,
              MOVE_MUD_SHOT,
              MOVE_REFRESH,
              MOVE_ENDEAVOR),
    egg_moves(SPECIES_ABRA,
              MOVE_ENCORE,
              MOVE_BARRIER,
              MOVE_KNOCK_OFF,
              MOVE_FIRE_PUNCH,
              MOVE_THUNDER_PUNCH,
              MOVE_ICE_PUNCH,
              MOVE_POWER_TRICK,
              MOVE_GUARD_SWAP),
    egg_moves(SPECIES_MACHOP,
              MOVE_LIGHT_SCREEN,
              MOVE_MEDITATE,
              MOVE_ROLLING_KICK,
              MOVE_ENCORE,
              MOVE_SMELLING_SALTS,
              MOVE_COUNTER,
              MOVE_ROCK_SLIDE,
              MOVE_CLOSE_COMBAT,
              MOVE_FIRE_PUNCH,
              MOVE_THUNDER_PUNCH,
              MOVE_ICE_PUNCH,
              MOVE_BULLET_PUNCH),
    egg_moves(SPECIES_BELLSPROUT,
              MOVE_SWORDS_DANCE,
              MOVE_ENCORE,
              MOVE_REFLECT,
              MOVE_SYNTHESIS,
              MOVE_LEECH_LIFE,
              MOVE_INGRAIN,
              MOVE_MAGICAL_LEAF,
              MOVE_WORRY_SEED,
              MOVE_TICKLE),
    egg_moves(SPECIES_TENTACOOL,
              MOVE_AURORA_BEAM,
              MOVE_MIRROR_COAT,
              MOVE_RAPID_SPIN,
              MOVE_HAZE,
              MOVE_SAFEGUARD,
              MOVE_CONFUSE_RAY,
              MOVE_KNOCK_OFF,
              MOVE_ACUPRESSURE),
    egg_moves(SPECIES_GEODUDE,
              MOVE_MEGA_PUNCH,
              MOVE_ROCK_SLIDE,
              MOVE_BLOCK,
              MOVE_HAMMER_ARM,
              MOVE_FLAIL),
    egg_moves(SPECIES_PONYTA,
              MOVE_FLAME_WHEEL,
              MOVE_THRASH,
              MOVE_DOUBLE_KICK,
              MOVE_HYPNOSIS,
              MOVE_CHARM,
              MOVE_DOUBLE_EDGE,
              MOVE_HORN_DRILL),
    egg_moves(SPECIES_SLOWPOKE,
              MOVE_SAFEGUARD,
              MOVE_BELLY_DRUM,
              MOVE_FUTURE_SIGHT,
              MOVE_STOMP,
              MOVE_MUD_SPORT,
              MOVE_SLEEP_TALK,
              MOVE_SNORE,
              MOVE_ME_FIRST,
              MOVE_BLOCK,
              MOVE_ZEN_HEADBUTT),
    egg_moves(SPECIES_FARFETCHD,
              MOVE_STEEL_WING,
              MOVE_FORESIGHT,
              MOVE_MIRROR_MOVE,
              MOVE_GUST,
              MOVE_QUICK_ATTACK,
              MOVE_FLAIL,
              MOVE_FEATHER_DANCE,
              MOVE_CURSE,
              MOVE_COVET,
              MOVE_MUD_SLAP,
              MOVE_NIGHT_SLASH),
    egg_moves(SPECIES_DODUO,
              MOVE_QUICK_ATTACK,
              MOVE_SUPERSONIC,
              MOVE_HAZE,
              MOVE_FEINT_ATTACK,
              MOVE_FLAIL,
              MOVE_ENDEAVOR,
              MOVE_MIRROR_MOVE,
              MOVE_BRAVE_BIRD),
    egg_moves(SPECIES_SEEL,
              MOVE_LICK,
              MOVE_PERISH_SONG,
              MOVE_DISABLE,
              MOVE_HORN_DRILL,
              MOVE_SLAM,
              MOVE_ENCORE,
              MOVE_FAKE_OUT,
              MOVE_ICICLE_SPEAR,
              MOVE_SIGNAL_BEAM),
    egg_moves(SPECIES_GRIMER,
              MOVE_HAZE,
              MOVE_MEAN_LOOK,
              MOVE_LICK,
              MOVE_IMPRISON,
              MOVE_CURSE,
              MOVE_SHADOW_PUNCH,
              MOVE_EXPLOSION,
              MOVE_SHADOW_SNEAK,
              MOVE_STOCKPILE,
              MOVE_SWALLOW,
              MOVE_SPIT_UP),
    egg_moves(SPECIES_SHELLDER,
              MOVE_BUBBLE_BEAM,
              MOVE_TAKE_DOWN,
              MOVE_BARRIER,
              MOVE_RAPID_SPIN,
              MOVE_SCREECH,
              MOVE_ICICLE_SPEAR,
              MOVE_MUD_SHOT),
    egg_moves(SPECIES_GASTLY,
              MOVE_PSYWAVE,
              MOVE_PERISH_SONG,
              MOVE_HAZE,
              MOVE_ASTONISH,
              MOVE_WILL_O_WISP,
              MOVE_GRUDGE,
              MOVE_EXPLOSION,
              MOVE_FIRE_PUNCH,
              MOVE_ICE_PUNCH,
              MOVE_THUNDER_PUNCH),
    egg_moves(SPECIES_ONIX,
              MOVE_ROCK_SLIDE,
              MOVE_FLAIL,
              MOVE_EXPLOSION,
              MOVE_BLOCK,
              MOVE_DEFENSE_CURL,
              MOVE_ROLLOUT,
              MOVE_ROCK_BLAST),
    egg_moves(SPECIES_DROWZEE,
              MOVE_BARRIER,
              MOVE_ASSIST,
              MOVE_ROLE_PLAY,
              MOVE_FIRE_PUNCH,
              MOVE_THUNDER_PUNCH,
              MOVE_ICE_PUNCH,
              MOVE_NASTY_PLOT,
              MOVE_FLATTER,
              MOVE_PSYCHO_CUT),
    egg_moves(SPECIES_KRABBY,
              MOVE_DIG,
              MOVE_HAZE,
              MOVE_AMNESIA,
              MOVE_FLAIL,
              MOVE_SLAM,
              MOVE_KNOCK_OFF,
              MOVE_SWORDS_DANCE,
              MOVE_TICKLE,
              MOVE_ANCIENT_POWER),
    egg_moves(SPECIES_EXEGGCUTE,
              MOVE_SYNTHESIS,
              MOVE_MOONLIGHT,
              MOVE_REFLECT,
              MOVE_ANCIENT_POWER,
              MOVE_PSYCH_UP,
              MOVE_INGRAIN,
              MOVE_CURSE,
              MOVE_NATURE_POWER,
              MOVE_LUCKY_CHANT,
              MOVE_LEAF_STORM),
    egg_moves(SPECIES_CUBONE,
              MOVE_ROCK_SLIDE,
              MOVE_ANCIENT_POWER,
              MOVE_BELLY_DRUM,
              MOVE_SCREECH,
              MOVE_SKULL_BASH,
              MOVE_PERISH_SONG,
              MOVE_SWORDS_DANCE,
              MOVE_DOUBLE_KICK,
              MOVE_IRON_HEAD),
    egg_moves(SPECIES_LICKITUNG,
              MOVE_BELLY_DRUM,
              MOVE_MAGNITUDE,
              MOVE_BODY_SLAM,
              MOVE_CURSE,
              MOVE_SMELLING_SALTS,
              MOVE_SLEEP_TALK,
              MOVE_SNORE,
              MOVE_SUBSTITUTE,
              MOVE_AMNESIA,
              MOVE_HAMMER_ARM),
    egg_moves(SPECIES_KOFFING,
              MOVE_SCREECH,
              MOVE_PSYWAVE,
              MOVE_PSYBEAM,
              MOVE_DESTINY_BOND,
              MOVE_PAIN_SPLIT,
              MOVE_WILL_O_WISP,
              MOVE_GRUDGE,
              MOVE_SPITE,
              MOVE_CURSE),
    egg_moves(SPECIES_RHYHORN,
              MOVE_CRUNCH,
              MOVE_REVERSAL,
              MOVE_ROCK_SLIDE,
              MOVE_COUNTER,
              MOVE_MAGNITUDE,
              MOVE_SWORDS_DANCE,
              MOVE_CURSE,
              MOVE_CRUSH_CLAW,
              MOVE_DRAGON_RUSH,
              MOVE_ICE_FANG,
              MOVE_FIRE_FANG,
              MOVE_THUNDER_FANG),
    egg_moves(SPECIES_CHANSEY,
              MOVE_PRESENT,
              MOVE_METRONOME,
              MOVE_HEAL_BELL,
              MOVE_AROMATHERAPY,
              MOVE_SUBSTITUTE,
              MOVE_COUNTER,
              MOVE_HELPING_HAND,
              MOVE_GRAVITY),
    egg_moves(SPECIES_TANGELA,
              MOVE_FLAIL,
              MOVE_CONFUSION,
              MOVE_MEGA_DRAIN,
              MOVE_REFLECT,
              MOVE_AMNESIA,
              MOVE_LEECH_SEED,
              MOVE_NATURE_POWER,
              MOVE_ENDEAVOR,
              MOVE_LEAF_STORM),
    egg_moves(SPECIES_KANGASKHAN,
              MOVE_STOMP,
              MOVE_FORESIGHT,
              MOVE_FOCUS_ENERGY,
              MOVE_SAFEGUARD,
              MOVE_DISABLE,
              MOVE_COUNTER,
              MOVE_CRUSH_CLAW,
              MOVE_SUBSTITUTE,
              MOVE_DOUBLE_EDGE,
              MOVE_ENDEAVOR,
              MOVE_HAMMER_ARM),
    egg_moves(SPECIES_HORSEA,
              MOVE_FLAIL,
              MOVE_AURORA_BEAM,
              MOVE_OCTAZOOKA,
              MOVE_DISABLE,
              MOVE_SPLASH,
              MOVE_DRAGON_RAGE,
              MOVE_DRAGON_BREATH,
              MOVE_SIGNAL_BEAM),
    egg_moves(SPECIES_GOLDEEN,
              MOVE_PSYBEAM,
              MOVE_HAZE,
              MOVE_HYDRO_PUMP,
              MOVE_SLEEP_TALK,
              MOVE_MUD_SPORT,
              MOVE_MUD_SLAP,
              MOVE_AQUA_TAIL),
    egg_moves(SPECIES_MR_MIME,
              MOVE_FUTURE_SIGHT,
              MOVE_HYPNOSIS,
              MOVE_MIMIC,
              MOVE_PSYCH_UP,
              MOVE_FAKE_OUT,
              MOVE_TRICK,
              MOVE_CONFUSE_RAY,
              MOVE_WAKE_UP_SLAP,
              MOVE_TEETER_DANCE),
    egg_moves(SPECIES_SCYTHER,
              MOVE_COUNTER,
              MOVE_SAFEGUARD,
              MOVE_BATON_PASS,
              MOVE_RAZOR_WIND,
              MOVE_REVERSAL,
              MOVE_LIGHT_SCREEN,
              MOVE_ENDURE,
              MOVE_SILVER_WIND,
              MOVE_BUG_BUZZ,
              MOVE_NIGHT_SLASH),
    egg_moves(SPECIES_PINSIR,
              MOVE_FURY_ATTACK,
              MOVE_FLAIL,
              MOVE_FALSE_SWIPE,
              MOVE_FEINT_ATTACK,
              MOVE_QUICK_ATTACK,
              MOVE_CLOSE_COMBAT,
              MOVE_FEINT),
    egg_moves(SPECIES_LAPRAS,
              MOVE_FORESIGHT,
              MOVE_SUBSTITUTE,
              MOVE_TICKLE,
              MOVE_REFRESH,
              MOVE_DRAGON_DANCE,
              MOVE_CURSE,
              MOVE_SLEEP_TALK,
              MOVE_HORN_DRILL,
              MOVE_ANCIENT_POWER,
              MOVE_WHIRLPOOL,
              MOVE_FISSURE),
    egg_moves(SPECIES_EEVEE,
              MOVE_CHARM,
              MOVE_FLAIL,
              MOVE_ENDURE,
              MOVE_CURSE,
              MOVE_TICKLE,
              MOVE_WISH,
              MOVE_YAWN,
              MOVE_FAKE_TEARS,
              MOVE_COVET),
    egg_moves(SPECIES_OMANYTE,
              MOVE_BUBBLE_BEAM,
              MOVE_AURORA_BEAM,
              MOVE_SLAM,
              MOVE_SUPERSONIC,
              MOVE_HAZE,
              MOVE_ROCK_SLIDE,
              MOVE_SPIKES,
              MOVE_KNOCK_OFF,
              MOVE_WRING_OUT,
              MOVE_TOXIC_SPIKES),
    egg_moves(SPECIES_KABUTO,
              MOVE_BUBBLE_BEAM,
              MOVE_AURORA_BEAM,
              MOVE_RAPID_SPIN,
              MOVE_DIG,
              MOVE_FLAIL,
              MOVE_KNOCK_OFF,
              MOVE_CONFUSE_RAY,
              MOVE_MUD_SHOT,
              MOVE_ICY_WIND,
              MOVE_SCREECH),
    egg_moves(SPECIES_AERODACTYL,
              MOVE_WHIRLWIND,
              MOVE_PURSUIT,
              MOVE_FORESIGHT,
              MOVE_STEEL_WING,
              MOVE_DRAGON_BREATH,
              MOVE_CURSE,
              MOVE_ASSURANCE),
    egg_moves(SPECIES_SNORLAX,
              MOVE_LICK,
              MOVE_CHARM,
              MOVE_DOUBLE_EDGE,
              MOVE_CURSE,
              MOVE_FISSURE,
              MOVE_SUBSTITUTE,
              MOVE_WHIRLWIND,
              MOVE_PURSUIT),
    egg_moves(SPECIES_DRATINI,
              MOVE_LIGHT_SCREEN,
              MOVE_MIST,
              MOVE_HAZE,
              MOVE_SUPERSONIC,
              MOVE_DRAGON_BREATH,
              MOVE_DRAGON_DANCE,
              MOVE_DRAGON_RUSH),
    egg_moves(SPECIES_CHIKORITA,
              MOVE_VINE_WHIP,
              MOVE_LEECH_SEED,
              MOVE_COUNTER,
              MOVE_ANCIENT_POWER,
              MOVE_FLAIL,
              MOVE_NATURE_POWER,
              MOVE_INGRAIN,
              MOVE_GRASS_WHISTLE,
              MOVE_LEAF_STORM,
              MOVE_AROMATHERAPY,
              MOVE_WRING_OUT),
    egg_moves(SPECIES_CYNDAQUIL,
              MOVE_FURY_SWIPES,
              MOVE_QUICK_ATTACK,
              MOVE_REVERSAL,
              MOVE_THRASH,
              MOVE_FORESIGHT,
              MOVE_COVET,
              MOVE_HOWL,
              MOVE_CRUSH_CLAW,
              MOVE_DOUBLE_EDGE,
              MOVE_DOUBLE_KICK,
              MOVE_FLARE_BLITZ),
    egg_moves(SPECIES_TOTODILE,
              MOVE_CRUNCH,
              MOVE_THRASH,
              MOVE_HYDRO_PUMP,
              MOVE_ANCIENT_POWER,
              MOVE_ROCK_SLIDE,
              MOVE_MUD_SPORT,
              MOVE_WATER_SPORT,
              MOVE_DRAGON_CLAW,
              MOVE_ICE_PUNCH,
              MOVE_METAL_CLAW,
              MOVE_DRAGON_DANCE),
    egg_moves(SPECIES_SENTRET,
              MOVE_DOUBLE_EDGE,
              MOVE_PURSUIT,
              MOVE_SLASH,
              MOVE_FOCUS_ENERGY,
              MOVE_REVERSAL,
              MOVE_SUBSTITUTE,
              MOVE_TRICK,
              MOVE_ASSIST,
              MOVE_LAST_RESORT,
              MOVE_CHARM,
              MOVE_COVET),
    egg_moves(SPECIES_HOOTHOOT,
              MOVE_MIRROR_MOVE,
              MOVE_SUPERSONIC,
              MOVE_FEINT_ATTACK,
              MOVE_WING_ATTACK,
              MOVE_WHIRLWIND,
              MOVE_SKY_ATTACK,
              MOVE_FEATHER_DANCE,
              MOVE_AGILITY,
              MOVE_NIGHT_SHADE),
    egg_moves(SPECIES_LEDYBA,
              MOVE_PSYBEAM,
              MOVE_BIDE,
              MOVE_SILVER_WIND,
              MOVE_BUG_BUZZ,
              MOVE_SCREECH,
              MOVE_ENCORE,
              MOVE_KNOCK_OFF,
              MOVE_BUG_BITE),
    egg_moves(SPECIES_SPINARAK,
              MOVE_PSYBEAM,
              MOVE_DISABLE,
              MOVE_SONIC_BOOM,
              MOVE_BATON_PASS,
              MOVE_PURSUIT,
              MOVE_SIGNAL_BEAM,
              MOVE_TOXIC_SPIKES,
              MOVE_POISON_JAB),
    egg_moves(SPECIES_CHINCHOU,
              MOVE_FLAIL,
              MOVE_SCREECH,
              MOVE_AMNESIA,
              MOVE_PSYBEAM,
              MOVE_WHIRLPOOL,
              MOVE_AGILITY,
              MOVE_MIST),
    egg_moves(SPECIES_PICHU,
              MOVE_REVERSAL,
              MOVE_BIDE,
              MOVE_PRESENT,
              MOVE_ENCORE,
              MOVE_DOUBLE_SLAP,
              MOVE_WISH,
              MOVE_CHARGE,
              MOVE_FAKE_OUT,
              MOVE_THUNDER_PUNCH,
              MOVE_TICKLE),
    egg_moves(SPECIES_CLEFFA,
              MOVE_PRESENT,
              MOVE_METRONOME,
              MOVE_AMNESIA,
              MOVE_BELLY_DRUM,
              MOVE_SPLASH,
              MOVE_MIMIC,
              MOVE_WISH,
              MOVE_SUBSTITUTE,
              MOVE_FAKE_TEARS,
              MOVE_COVET),
    egg_moves(SPECIES_IGGLYBUFF,
              MOVE_PERISH_SONG,
              MOVE_PRESENT,
              MOVE_FEINT_ATTACK,
              MOVE_WISH,
              MOVE_FAKE_TEARS,
              MOVE_LAST_RESORT,
              MOVE_COVET,
              MOVE_GRAVITY),
    egg_moves(SPECIES_TOGEPI,
              MOVE_PRESENT,
              MOVE_MIRROR_MOVE,
              MOVE_PECK,
              MOVE_FORESIGHT,
              MOVE_FUTURE_SIGHT,
              MOVE_SUBSTITUTE,
              MOVE_PSYCH_UP,
              MOVE_NASTY_PLOT,
              MOVE_PSYCHO_SHIFT,
              MOVE_LUCKY_CHANT),
    egg_moves(SPECIES_NATU,
              MOVE_HAZE,
              MOVE_DRILL_PECK,
              MOVE_QUICK_ATTACK,
              MOVE_FEINT_ATTACK,
              MOVE_STEEL_WING,
              MOVE_PSYCH_UP,
              MOVE_FEATHER_DANCE,
              MOVE_REFRESH,
              MOVE_ZEN_HEADBUTT,
              MOVE_SUCKER_PUNCH),
    egg_moves(SPECIES_MAREEP,
              MOVE_TAKE_DOWN,
              MOVE_BODY_SLAM,
              MOVE_SAFEGUARD,
              MOVE_SCREECH,
              MOVE_REFLECT,
              MOVE_ODOR_SLEUTH,
              MOVE_CHARGE,
              MOVE_FLATTER,
              MOVE_SAND_ATTACK),
    egg_moves(SPECIES_MARILL,
              MOVE_LIGHT_SCREEN,
              MOVE_PRESENT,
              MOVE_AMNESIA,
              MOVE_FUTURE_SIGHT,
              MOVE_BELLY_DRUM,
              MOVE_PERISH_SONG,
              MOVE_SUPERSONIC,
              MOVE_SUBSTITUTE,
              MOVE_AQUA_JET,
              MOVE_SUPERPOWER,
              MOVE_REFRESH),
    egg_moves(SPECIES_SUDOWOODO,
              MOVE_SELF_DESTRUCT,
              MOVE_HEADBUTT,
              MOVE_HARDEN,
              MOVE_DEFENSE_CURL,
              MOVE_ROLLOUT,
              MOVE_SAND_TOMB),
    egg_moves(SPECIES_HOPPIP,
              MOVE_CONFUSION,
              MOVE_ENCORE,
              MOVE_DOUBLE_EDGE,
              MOVE_REFLECT,
              MOVE_AMNESIA,
              MOVE_HELPING_HAND,
              MOVE_PSYCH_UP,
              MOVE_AROMATHERAPY,
              MOVE_WORRY_SEED),
    egg_moves(SPECIES_AIPOM,
              MOVE_COUNTER,
              MOVE_SCREECH,
              MOVE_PURSUIT,
              MOVE_AGILITY,
              MOVE_SPITE,
              MOVE_SLAM,
              MOVE_DOUBLE_SLAP,
              MOVE_BEAT_UP,
              MOVE_FAKE_OUT,
              MOVE_COVET,
              MOVE_BOUNCE),
    egg_moves(SPECIES_SUNKERN,
              MOVE_GRASS_WHISTLE,
              MOVE_ENCORE,
              MOVE_LEECH_SEED,
              MOVE_NATURE_POWER,
              MOVE_CURSE,
              MOVE_HELPING_HAND,
              MOVE_INGRAIN,
              MOVE_SWEET_SCENT),
    egg_moves(SPECIES_YANMA,
              MOVE_WHIRLWIND,
              MOVE_REVERSAL,
              MOVE_LEECH_LIFE,
              MOVE_SIGNAL_BEAM,
              MOVE_SILVER_WIND,
              MOVE_FEINT,
              MOVE_FEINT_ATTACK,
              MOVE_PURSUIT),
    egg_moves(SPECIES_WOOPER,
              MOVE_BODY_SLAM,
              MOVE_ANCIENT_POWER,
              MOVE_SAFEGUARD,
              MOVE_CURSE,
              MOVE_MUD_SPORT,
              MOVE_STOCKPILE,
              MOVE_SWALLOW,
              MOVE_SPIT_UP,
              MOVE_COUNTER,
              MOVE_ENCORE,
              MOVE_DOUBLE_KICK),
    egg_moves(SPECIES_MURKROW,
              MOVE_WHIRLWIND,
              MOVE_DRILL_PECK,
              MOVE_MIRROR_MOVE,
              MOVE_WING_ATTACK,
              MOVE_SKY_ATTACK,
              MOVE_CONFUSE_RAY,
              MOVE_FEATHER_DANCE,
              MOVE_PERISH_SONG,
              MOVE_PSYCHO_SHIFT,
              MOVE_SCREECH,
              MOVE_FEINT_ATTACK),
    egg_moves(SPECIES_MISDREAVUS,
              MOVE_SCREECH,
              MOVE_DESTINY_BOND,
              MOVE_PSYCH_UP,
              MOVE_IMPRISON,
              MOVE_MEMENTO,
              MOVE_SUCKER_PUNCH,
              MOVE_SHADOW_SNEAK,
              MOVE_CURSE,
              MOVE_SPITE,
              MOVE_OMINOUS_WIND),
    egg_moves(SPECIES_GIRAFARIG,
              MOVE_TAKE_DOWN,
              MOVE_AMNESIA,
              MOVE_FORESIGHT,
              MOVE_FUTURE_SIGHT,
              MOVE_BEAT_UP,
              MOVE_PSYCH_UP,
              MOVE_WISH,
              MOVE_MAGIC_COAT,
              MOVE_DOUBLE_KICK,
              MOVE_MIRROR_COAT),
    egg_moves(SPECIES_PINECO,
              MOVE_REFLECT,
              MOVE_PIN_MISSILE,
              MOVE_FLAIL,
              MOVE_SWIFT,
              MOVE_COUNTER,
              MOVE_SAND_TOMB,
              MOVE_REVENGE,
              MOVE_DOUBLE_EDGE,
              MOVE_TOXIC_SPIKES),
    egg_moves(SPECIES_DUNSPARCE,
              MOVE_BIDE,
              MOVE_ANCIENT_POWER,
              MOVE_ROCK_SLIDE,
              MOVE_BITE,
              MOVE_HEADBUTT,
              MOVE_ASTONISH,
              MOVE_CURSE,
              MOVE_TRUMP_CARD,
              MOVE_MAGIC_COAT,
              MOVE_SNORE),
    egg_moves(SPECIES_GLIGAR,
              MOVE_METAL_CLAW,
              MOVE_WING_ATTACK,
              MOVE_RAZOR_WIND,
              MOVE_COUNTER,
              MOVE_SAND_TOMB,
              MOVE_AGILITY,
              MOVE_BATON_PASS,
              MOVE_DOUBLE_EDGE,
              MOVE_FEINT,
              MOVE_NIGHT_SLASH,
              MOVE_CROSS_POISON),
    egg_moves(SPECIES_SNUBBULL,
              MOVE_METRONOME,
              MOVE_FEINT_ATTACK,
              MOVE_REFLECT,
              MOVE_PRESENT,
              MOVE_CRUNCH,
              MOVE_HEAL_BELL,
              MOVE_SNORE,
              MOVE_SMELLING_SALTS,
              MOVE_CLOSE_COMBAT,
              MOVE_ICE_FANG,
              MOVE_FIRE_FANG,
              MOVE_THUNDER_FANG),
    egg_moves(SPECIES_QWILFISH,
              MOVE_FLAIL,
              MOVE_HAZE,
              MOVE_BUBBLE_BEAM,
              MOVE_SUPERSONIC,
              MOVE_ASTONISH,
              MOVE_SIGNAL_BEAM,
              MOVE_POISON_JAB),
    egg_moves(SPECIES_SHUCKLE,
              MOVE_SWEET_SCENT,
              MOVE_KNOCK_OFF,
              MOVE_HELPING_HAND,
              MOVE_ACUPRESSURE,
              MOVE_SAND_TOMB,
              MOVE_MUD_SLAP),
    egg_moves(SPECIES_HERACROSS,
              MOVE_HARDEN,
              MOVE_BIDE,
              MOVE_FLAIL,
              MOVE_FALSE_SWIPE,
              MOVE_REVENGE,
              MOVE_PURSUIT,
              MOVE_DOUBLE_EDGE),
    egg_moves(SPECIES_SNEASEL,
              MOVE_COUNTER,
              MOVE_SPITE,
              MOVE_FORESIGHT,
              MOVE_REFLECT,
              MOVE_BITE,
              MOVE_CRUSH_CLAW,
              MOVE_FAKE_OUT,
              MOVE_DOUBLE_HIT,
              MOVE_PUNISHMENT,
              MOVE_PURSUIT,
              MOVE_ICE_SHARD,
              MOVE_ICE_PUNCH),
    egg_moves(SPECIES_TEDDIURSA,
              MOVE_CRUNCH,
              MOVE_TAKE_DOWN,
              MOVE_SEISMIC_TOSS,
              MOVE_COUNTER,
              MOVE_METAL_CLAW,
              MOVE_FAKE_TEARS,
              MOVE_YAWN,
              MOVE_SLEEP_TALK,
              MOVE_CROSS_CHOP,
              MOVE_DOUBLE_EDGE,
              MOVE_CLOSE_COMBAT,
              MOVE_NIGHT_SLASH),
    egg_moves(SPECIES_SLUGMA,
              MOVE_ACID_ARMOR,
              MOVE_HEAT_WAVE,
              MOVE_CURSE,
              MOVE_SMOKESCREEN,
              MOVE_MEMENTO,
              MOVE_STOCKPILE,
              MOVE_SPIT_UP,
              MOVE_SWALLOW),
    egg_moves(SPECIES_SWINUB,
              MOVE_TAKE_DOWN,
              MOVE_BITE,
              MOVE_BODY_SLAM,
              MOVE_ROCK_SLIDE,
              MOVE_ANCIENT_POWER,
              MOVE_MUD_SHOT,
              MOVE_ICICLE_SPEAR,
              MOVE_DOUBLE_EDGE,
              MOVE_FISSURE,
              MOVE_CURSE),
    egg_moves(SPECIES_CORSOLA,
              MOVE_ROCK_SLIDE,
              MOVE_SCREECH,
              MOVE_MIST,
              MOVE_AMNESIA,
              MOVE_BARRIER,
              MOVE_INGRAIN,
              MOVE_CONFUSE_RAY,
              MOVE_ICICLE_SPEAR,
              MOVE_NATURE_POWER,
              MOVE_AQUA_RING),
    egg_moves(SPECIES_REMORAID,
              MOVE_AURORA_BEAM,
              MOVE_OCTAZOOKA,
              MOVE_SUPERSONIC,
              MOVE_HAZE,
              MOVE_SCREECH,
              MOVE_THUNDER_WAVE,
              MOVE_ROCK_BLAST,
              MOVE_SNORE,
              MOVE_FLAIL),
    egg_moves(SPECIES_DELIBIRD,
              MOVE_AURORA_BEAM,
              MOVE_QUICK_ATTACK,
              MOVE_FUTURE_SIGHT,
              MOVE_SPLASH,
              MOVE_RAPID_SPIN,
              MOVE_ICE_BALL,
              MOVE_ICE_SHARD,
              MOVE_ICE_PUNCH),
    egg_moves(SPECIES_MANTINE,
              MOVE_TWISTER,
              MOVE_HYDRO_PUMP,
              MOVE_HAZE,
              MOVE_SLAM,
              MOVE_MUD_SPORT,
              MOVE_ROCK_SLIDE,
              MOVE_MIRROR_COAT,
              MOVE_WATER_SPORT,
              MOVE_SPLASH),
    egg_moves(SPECIES_SKARMORY,
              MOVE_DRILL_PECK,
              MOVE_PURSUIT,
              MOVE_WHIRLWIND,
              MOVE_SKY_ATTACK,
              MOVE_CURSE,
              MOVE_BRAVE_BIRD,
              MOVE_ASSURANCE),
    egg_moves(SPECIES_HOUNDOUR,
              MOVE_FIRE_SPIN,
              MOVE_RAGE,
              MOVE_PURSUIT,
              MOVE_COUNTER,
              MOVE_SPITE,
              MOVE_REVERSAL,
              MOVE_BEAT_UP,
              MOVE_WILL_O_WISP,
              MOVE_FIRE_FANG,
              MOVE_THUNDER_FANG,
              MOVE_NASTY_PLOT,
              MOVE_PUNISHMENT),
    egg_moves(SPECIES_PHANPY,
              MOVE_FOCUS_ENERGY,
              MOVE_BODY_SLAM,
              MOVE_ANCIENT_POWER,
              MOVE_SNORE,
              MOVE_COUNTER,
              MOVE_FISSURE,
              MOVE_ENDEAVOR,
              MOVE_ICE_SHARD),
    egg_moves(SPECIES_STANTLER,
              MOVE_SPITE,
              MOVE_DISABLE,
              MOVE_BITE,
              MOVE_SWAGGER,
              MOVE_PSYCH_UP,
              MOVE_EXTRASENSORY,
              MOVE_THRASH,
              MOVE_DOUBLE_KICK,
              MOVE_ZEN_HEADBUTT),
    egg_moves(SPECIES_TYROGUE,
              MOVE_RAPID_SPIN,
              MOVE_HIGH_JUMP_KICK,
              MOVE_MACH_PUNCH,
              MOVE_MIND_READER,
              MOVE_HELPING_HAND,
              MOVE_COUNTER,
              MOVE_VACUUM_WAVE,
              MOVE_BULLET_PUNCH),
    egg_moves(SPECIES_SMOOCHUM,
              MOVE_MEDITATE,
              MOVE_PSYCH_UP,
              MOVE_FAKE_OUT,
              MOVE_WISH,
              MOVE_ICE_PUNCH,
              MOVE_MIRACLE_EYE),
    egg_moves(SPECIES_ELEKID,
              MOVE_KARATE_CHOP,
              MOVE_BARRIER,
              MOVE_ROLLING_KICK,
              MOVE_MEDITATE,
              MOVE_CROSS_CHOP,
              MOVE_FIRE_PUNCH,
              MOVE_ICE_PUNCH,
              MOVE_DYNAMIC_PUNCH),
    egg_moves(SPECIES_MAGBY,
              MOVE_KARATE_CHOP,
              MOVE_MEGA_PUNCH,
              MOVE_BARRIER,
              MOVE_SCREECH,
              MOVE_CROSS_CHOP,
              MOVE_THUNDER_PUNCH,
              MOVE_MACH_PUNCH,
              MOVE_DYNAMIC_PUNCH,
              MOVE_FLARE_BLITZ),
    egg_moves(SPECIES_MILTANK,
              MOVE_PRESENT,
              MOVE_REVERSAL,
              MOVE_SEISMIC_TOSS,
              MOVE_ENDURE,
              MOVE_PSYCH_UP,
              MOVE_CURSE,
              MOVE_HELPING_HAND,
              MOVE_SLEEP_TALK,
              MOVE_DIZZY_PUNCH,
              MOVE_HAMMER_ARM,
              MOVE_DOUBLE_EDGE,
              MOVE_PUNISHMENT),
    egg_moves(SPECIES_LARVITAR,
              MOVE_PURSUIT,
              MOVE_STOMP,
              MOVE_OUTRAGE,
              MOVE_FOCUS_ENERGY,
              MOVE_ANCIENT_POWER,
              MOVE_DRAGON_DANCE,
              MOVE_CURSE,
              MOVE_IRON_DEFENSE,
              MOVE_ASSURANCE,
              MOVE_IRON_HEAD),
    egg_moves(SPECIES_TREECKO,
              MOVE_CRUNCH,
              MOVE_MUD_SPORT,
              MOVE_ENDEAVOR,
              MOVE_LEECH_SEED,
              MOVE_DRAGON_BREATH,
              MOVE_CRUSH_CLAW,
              MOVE_WORRY_SEED,
              MOVE_DOUBLE_KICK,
              MOVE_GRASS_WHISTLE,
              MOVE_SYNTHESIS,
              MOVE_MAGICAL_LEAF,
              MOVE_LEAF_STORM),
    egg_moves(SPECIES_TORCHIC,
              MOVE_COUNTER,
              MOVE_REVERSAL,
              MOVE_ENDURE,
              MOVE_SWAGGER,
              MOVE_ROCK_SLIDE,
              MOVE_SMELLING_SALTS,
              MOVE_CRUSH_CLAW,
              MOVE_BATON_PASS,
              MOVE_AGILITY,
              MOVE_NIGHT_SLASH,
              MOVE_LAST_RESORT,
              MOVE_FEINT),
    egg_moves(SPECIES_MUDKIP,
              MOVE_REFRESH,
              MOVE_UPROAR,
              MOVE_CURSE,
              MOVE_STOMP,
              MOVE_ICE_BALL,
              MOVE_MIRROR_COAT,
              MOVE_COUNTER,
              MOVE_ANCIENT_POWER,
              MOVE_WHIRLPOOL,
              MOVE_BITE,
              MOVE_DOUBLE_EDGE,
              MOVE_MUD_BOMB),
    egg_moves(SPECIES_POOCHYENA,
              MOVE_ASTONISH,
              MOVE_POISON_FANG,
              MOVE_COVET,
              MOVE_LEER,
              MOVE_YAWN,
              MOVE_SUCKER_PUNCH,
              MOVE_ICE_FANG,
              MOVE_FIRE_FANG,
              MOVE_THUNDER_FANG,
              MOVE_ME_FIRST),
    egg_moves(SPECIES_ZIGZAGOON,
              MOVE_CHARM,
              MOVE_PURSUIT,
              MOVE_SUBSTITUTE,
              MOVE_TICKLE,
              MOVE_TRICK,
              MOVE_HELPING_HAND,
              MOVE_MUD_SLAP),
    egg_moves(SPECIES_LOTAD,
              MOVE_SYNTHESIS,
              MOVE_RAZOR_LEAF,
              MOVE_SWEET_SCENT,
              MOVE_LEECH_SEED,
              MOVE_FLAIL,
              MOVE_WATER_GUN,
              MOVE_TICKLE),
    egg_moves(SPECIES_SEEDOT,
              MOVE_LEECH_SEED,
              MOVE_AMNESIA,
              MOVE_QUICK_ATTACK,
              MOVE_RAZOR_WIND,
              MOVE_TAKE_DOWN,
              MOVE_FALSE_SWIPE,
              MOVE_WORRY_SEED,
              MOVE_NASTY_PLOT),
    egg_moves(SPECIES_TAILLOW,
              MOVE_PURSUIT,
              MOVE_SUPERSONIC,
              MOVE_REFRESH,
              MOVE_MIRROR_MOVE,
              MOVE_RAGE,
              MOVE_SKY_ATTACK,
              MOVE_WHIRLWIND,
              MOVE_BRAVE_BIRD),
    egg_moves(SPECIES_WINGULL,
              MOVE_MIST,
              MOVE_TWISTER,
              MOVE_AGILITY,
              MOVE_GUST,
              MOVE_WATER_SPORT,
              MOVE_AQUA_RING,
              MOVE_KNOCK_OFF),
    egg_moves(SPECIES_RALTS,
              MOVE_DISABLE,
              MOVE_WILL_O_WISP,
              MOVE_MEAN_LOOK,
              MOVE_MEMENTO,
              MOVE_DESTINY_BOND,
              MOVE_GRUDGE,
              MOVE_SHADOW_SNEAK,
              MOVE_CONFUSE_RAY),
    egg_moves(SPECIES_SURSKIT,
              MOVE_FORESIGHT,
              MOVE_MUD_SHOT,
              MOVE_PSYBEAM,
              MOVE_HYDRO_PUMP,
              MOVE_MIND_READER,
              MOVE_SIGNAL_BEAM,
              MOVE_BUG_BITE),
    egg_moves(SPECIES_SHROOMISH,
              MOVE_FAKE_TEARS,
              MOVE_SWAGGER,
              MOVE_CHARM,
              MOVE_FALSE_SWIPE,
              MOVE_HELPING_HAND,
              MOVE_WORRY_SEED,
              MOVE_WAKE_UP_SLAP,
              MOVE_SEED_BOMB),
    egg_moves(SPECIES_SLAKOTH,
              MOVE_PURSUIT,
              MOVE_SLASH,
              MOVE_BODY_SLAM,
              MOVE_SNORE,
              MOVE_CRUSH_CLAW,
              MOVE_CURSE,
              MOVE_SLEEP_TALK,
              MOVE_HAMMER_ARM,
              MOVE_NIGHT_SLASH),
    egg_moves(SPECIES_NINCADA,
              MOVE_ENDURE,
              MOVE_FEINT_ATTACK,
              MOVE_GUST,
              MOVE_SILVER_WIND,
              MOVE_BUG_BUZZ,
              MOVE_NIGHT_SLASH,
              MOVE_BUG_BITE),
    egg_moves(SPECIES_WHISMUR,
              MOVE_TAKE_DOWN,
              MOVE_SNORE,
              MOVE_SWAGGER,
              MOVE_EXTRASENSORY,
              MOVE_SMELLING_SALTS,
              MOVE_SMOKESCREEN,
              MOVE_ENDEAVOR),
    egg_moves(SPECIES_MAKUHITA,
              MOVE_FEINT_ATTACK,
              MOVE_DETECT,
              MOVE_FORESIGHT,
              MOVE_HELPING_HAND,
              MOVE_CROSS_CHOP,
              MOVE_REVENGE,
              MOVE_DYNAMIC_PUNCH,
              MOVE_COUNTER,
              MOVE_WAKE_UP_SLAP,
              MOVE_BULLET_PUNCH),
    egg_moves(SPECIES_AZURILL,
              MOVE_ENCORE,
              MOVE_SING,
              MOVE_REFRESH,
              MOVE_SLAM,
              MOVE_TICKLE,
              MOVE_FAKE_TEARS),
    egg_moves(SPECIES_NOSEPASS,
              MOVE_MAGNITUDE,
              MOVE_ROLLOUT,
              MOVE_EXPLOSION,
              MOVE_DOUBLE_EDGE,
              MOVE_BLOCK),
    egg_moves(SPECIES_SKITTY,
              MOVE_HELPING_HAND,
              MOVE_PSYCH_UP,
              MOVE_UPROAR,
              MOVE_FAKE_TEARS,
              MOVE_WISH,
              MOVE_BATON_PASS,
              MOVE_SUBSTITUTE,
              MOVE_TICKLE,
              MOVE_LAST_RESORT,
              MOVE_FAKE_OUT,
              MOVE_ZEN_HEADBUTT,
              MOVE_SUCKER_PUNCH),
    egg_moves(SPECIES_SABLEYE,
              MOVE_PSYCH_UP,
              MOVE_RECOVER,
              MOVE_MOONLIGHT,
              MOVE_NASTY_PLOT,
              MOVE_FLATTER),
    egg_moves(SPECIES_MAWILE,
              MOVE_SWORDS_DANCE,
              MOVE_FALSE_SWIPE,
              MOVE_POISON_FANG,
              MOVE_PSYCH_UP,
              MOVE_ANCIENT_POWER,
              MOVE_TICKLE,
              MOVE_SUCKER_PUNCH,
              MOVE_ICE_FANG,
              MOVE_FIRE_FANG,
              MOVE_THUNDER_FANG,
              MOVE_PUNISHMENT),
    egg_moves(SPECIES_ARON,
              MOVE_ENDEAVOR,
              MOVE_BODY_SLAM,
              MOVE_STOMP,
              MOVE_SMELLING_SALTS,
              MOVE_CURSE,
              MOVE_SCREECH,
              MOVE_IRON_HEAD,
              MOVE_DRAGON_RUSH),
    egg_moves(SPECIES_MEDITITE,
              MOVE_FIRE_PUNCH,
              MOVE_THUNDER_PUNCH,
              MOVE_ICE_PUNCH,
              MOVE_FORESIGHT,
              MOVE_FAKE_OUT,
              MOVE_BATON_PASS,
              MOVE_DYNAMIC_PUNCH,
              MOVE_POWER_SWAP,
              MOVE_GUARD_SWAP,
              MOVE_PSYCHO_CUT,
              MOVE_BULLET_PUNCH),
    egg_moves(SPECIES_ELECTRIKE,
              MOVE_CRUNCH,
              MOVE_HEADBUTT,
              MOVE_UPROAR,
              MOVE_CURSE,
              MOVE_SWIFT,
              MOVE_DISCHARGE,
              MOVE_ICE_FANG,
              MOVE_FIRE_FANG,
              MOVE_THUNDER_FANG),
    egg_moves(SPECIES_PLUSLE,
              MOVE_SUBSTITUTE,
              MOVE_WISH,
              MOVE_SING,
              MOVE_SWEET_KISS),
    egg_moves(SPECIES_MINUN,
              MOVE_SUBSTITUTE,
              MOVE_WISH,
              MOVE_SING,
              MOVE_SWEET_KISS),
    egg_moves(SPECIES_VOLBEAT,
              MOVE_BATON_PASS,
              MOVE_SILVER_WIND,
              MOVE_TRICK,
              MOVE_ENCORE,
              MOVE_BUG_BUZZ),
    egg_moves(SPECIES_ILLUMISE,
              MOVE_BATON_PASS,
              MOVE_SILVER_WIND,
              MOVE_GROWTH,
              MOVE_ENCORE,
              MOVE_BUG_BUZZ),
    egg_moves(SPECIES_ROSELIA,
              MOVE_SPIKES,
              MOVE_SYNTHESIS,
              MOVE_PIN_MISSILE,
              MOVE_COTTON_SPORE,
              MOVE_SLEEP_POWDER,
              MOVE_RAZOR_LEAF,
              MOVE_MIND_READER,
              MOVE_LEAF_STORM),
    egg_moves(SPECIES_GULPIN,
              MOVE_DREAM_EATER,
              MOVE_ACID_ARMOR,
              MOVE_SMOG,
              MOVE_PAIN_SPLIT,
              MOVE_CURSE,
              MOVE_DESTINY_BOND),
    egg_moves(SPECIES_CARVANHA,
              MOVE_HYDRO_PUMP,
              MOVE_DOUBLE_EDGE,
              MOVE_THRASH,
              MOVE_ANCIENT_POWER),
    egg_moves(SPECIES_WAILMER,
              MOVE_DOUBLE_EDGE,
              MOVE_THRASH,
              MOVE_SWAGGER,
              MOVE_SNORE,
              MOVE_SLEEP_TALK,
              MOVE_CURSE,
              MOVE_FISSURE,
              MOVE_TICKLE,
              MOVE_DEFENSE_CURL,
              MOVE_BODY_SLAM),
    egg_moves(SPECIES_NUMEL,
              MOVE_HOWL,
              MOVE_SCARY_FACE,
              MOVE_BODY_SLAM,
              MOVE_ROLLOUT,
              MOVE_DEFENSE_CURL,
              MOVE_STOMP,
              MOVE_YAWN,
              MOVE_ANCIENT_POWER,
              MOVE_MUD_BOMB,
              MOVE_HEAT_WAVE),
    egg_moves(SPECIES_TORKOAL,
              MOVE_ERUPTION,
              MOVE_ENDURE,
              MOVE_SLEEP_TALK,
              MOVE_YAWN,
              MOVE_EARTHQUAKE,
              MOVE_FISSURE),
    egg_moves(SPECIES_SPOINK,
              MOVE_FUTURE_SIGHT,
              MOVE_EXTRASENSORY,
              MOVE_SUBSTITUTE,
              MOVE_TRICK,
              MOVE_ZEN_HEADBUTT,
              MOVE_AMNESIA,
              MOVE_MIRROR_COAT),
    egg_moves(SPECIES_SPINDA,
              MOVE_ENCORE,
              MOVE_ROCK_SLIDE,
              MOVE_ASSIST,
              MOVE_DISABLE,
              MOVE_BATON_PASS,
              MOVE_WISH,
              MOVE_TRICK,
              MOVE_SMELLING_SALTS,
              MOVE_FAKE_OUT,
              MOVE_ROLE_PLAY,
              MOVE_PSYCHO_CUT),
    egg_moves(SPECIES_TRAPINCH,
              MOVE_FOCUS_ENERGY,
              MOVE_QUICK_ATTACK,
              MOVE_GUST,
              MOVE_FLAIL,
              MOVE_FURY_CUTTER),
    egg_moves(SPECIES_CACNEA,
              MOVE_GRASS_WHISTLE,
              MOVE_ACID,
              MOVE_TEETER_DANCE,
              MOVE_DYNAMIC_PUNCH,
              MOVE_COUNTER,
              MOVE_LOW_KICK,
              MOVE_SMELLING_SALTS,
              MOVE_MAGICAL_LEAF,
              MOVE_SEED_BOMB),
    egg_moves(SPECIES_SWABLU,
              MOVE_AGILITY,
              MOVE_HAZE,
              MOVE_PURSUIT,
              MOVE_RAGE,
              MOVE_FEATHER_DANCE,
              MOVE_DRAGON_RUSH),
    egg_moves(SPECIES_ZANGOOSE,
              MOVE_FLAIL,
              MOVE_DOUBLE_KICK,
              MOVE_RAZOR_WIND,
              MOVE_COUNTER,
              MOVE_ROAR,
              MOVE_CURSE,
              MOVE_FURY_SWIPES,
              MOVE_NIGHT_SLASH,
              MOVE_METAL_CLAW,
              MOVE_DOUBLE_HIT),
    egg_moves(SPECIES_SEVIPER,
              MOVE_STOCKPILE,
              MOVE_SWALLOW,
              MOVE_SPIT_UP,
              MOVE_BODY_SLAM,
              MOVE_SCARY_FACE,
              MOVE_ASSURANCE,
              MOVE_NIGHT_SLASH),
    egg_moves(SPECIES_BARBOACH,
              MOVE_THRASH,
              MOVE_WHIRLPOOL,
              MOVE_SPARK,
              MOVE_HYDRO_PUMP,
              MOVE_FLAIL,
              MOVE_TAKE_DOWN),
    egg_moves(SPECIES_CORPHISH,
              MOVE_MUD_SPORT,
              MOVE_ENDEAVOR,
              MOVE_BODY_SLAM,
              MOVE_ANCIENT_POWER,
              MOVE_KNOCK_OFF,
              MOVE_SUPERPOWER,
              MOVE_METAL_CLAW),
    egg_moves(SPECIES_LILEEP,
              MOVE_BARRIER,
              MOVE_RECOVER,
              MOVE_MIRROR_COAT,
              MOVE_ROCK_SLIDE,
              MOVE_WRING_OUT,
              MOVE_TICKLE),
    egg_moves(SPECIES_ANORITH,
              MOVE_RAPID_SPIN,
              MOVE_KNOCK_OFF,
              MOVE_SWORDS_DANCE,
              MOVE_ROCK_SLIDE,
              MOVE_SCREECH,
              MOVE_SAND_ATTACK,
              MOVE_CROSS_POISON),
    egg_moves(SPECIES_FEEBAS,
              MOVE_MIRROR_COAT,
              MOVE_DRAGON_BREATH,
              MOVE_MUD_SPORT,
              MOVE_HYPNOSIS,
              MOVE_LIGHT_SCREEN,
              MOVE_CONFUSE_RAY,
              MOVE_MIST,
              MOVE_HAZE,
              MOVE_TICKLE),
    egg_moves(SPECIES_CASTFORM,
              MOVE_FUTURE_SIGHT,
              MOVE_PSYCH_UP,
              MOVE_LUCKY_CHANT,
              MOVE_DISABLE,
              MOVE_AMNESIA,
              MOVE_OMINOUS_WIND),
    egg_moves(SPECIES_KECLEON,
              MOVE_DISABLE,
              MOVE_MAGIC_COAT,
              MOVE_TRICK,
              MOVE_FAKE_OUT,
              MOVE_NASTY_PLOT,
              MOVE_DIZZY_PUNCH),
    egg_moves(SPECIES_SHUPPET,
              MOVE_DISABLE,
              MOVE_DESTINY_BOND,
              MOVE_FORESIGHT,
              MOVE_ASTONISH,
              MOVE_IMPRISON,
              MOVE_PURSUIT,
              MOVE_SHADOW_SNEAK,
              MOVE_PAYBACK,
              MOVE_CONFUSE_RAY),
    egg_moves(SPECIES_DUSKULL,
              MOVE_IMPRISON,
              MOVE_DESTINY_BOND,
              MOVE_PAIN_SPLIT,
              MOVE_GRUDGE,
              MOVE_MEMENTO,
              MOVE_FEINT_ATTACK,
              MOVE_OMINOUS_WIND),
    egg_moves(SPECIES_TROPIUS,
              MOVE_HEADBUTT,
              MOVE_SLAM,
              MOVE_RAZOR_WIND,
              MOVE_LEECH_SEED,
              MOVE_NATURE_POWER,
              MOVE_LEAF_STORM,
              MOVE_SYNTHESIS,
              MOVE_CURSE,
              MOVE_LEAF_BLADE),
    egg_moves(SPECIES_CHIMECHO,
              MOVE_DISABLE,
              MOVE_CURSE,
              MOVE_HYPNOSIS,
              MOVE_DREAM_EATER,
              MOVE_WISH,
              MOVE_FUTURE_SIGHT),
    egg_moves(SPECIES_ABSOL,
              MOVE_BATON_PASS,
              MOVE_FEINT_ATTACK,
              MOVE_DOUBLE_EDGE,
              MOVE_MAGIC_COAT,
              MOVE_CURSE,
              MOVE_SUBSTITUTE,
              MOVE_MEAN_LOOK,
              MOVE_ZEN_HEADBUTT,
              MOVE_PUNISHMENT,
              MOVE_SUCKER_PUNCH,
              MOVE_ASSURANCE,
              MOVE_ME_FIRST),
    egg_moves(SPECIES_SNORUNT,
              MOVE_BLOCK,
              MOVE_SPIKES,
              MOVE_ROLLOUT,
              MOVE_DISABLE,
              MOVE_BIDE),
    egg_moves(SPECIES_SPHEAL,
              MOVE_WATER_SPORT,
              MOVE_STOCKPILE,
              MOVE_SWALLOW,
              MOVE_SPIT_UP,
              MOVE_YAWN,
              MOVE_ROCK_SLIDE,
              MOVE_CURSE,
              MOVE_FISSURE,
              MOVE_SIGNAL_BEAM),
    egg_moves(SPECIES_CLAMPERL,
              MOVE_REFRESH,
              MOVE_MUD_SPORT,
              MOVE_BODY_SLAM,
              MOVE_SUPERSONIC,
              MOVE_BARRIER,
              MOVE_CONFUSE_RAY,
              MOVE_AQUA_RING),
    egg_moves(SPECIES_RELICANTH,
              MOVE_MAGNITUDE,
              MOVE_SKULL_BASH,
              MOVE_WATER_SPORT,
              MOVE_AMNESIA,
              MOVE_SLEEP_TALK,
              MOVE_ROCK_SLIDE,
              MOVE_AQUA_TAIL,
              MOVE_SNORE,
              MOVE_MUD_SLAP),
    egg_moves(SPECIES_LUVDISC,
              MOVE_SPLASH,
              MOVE_SUPERSONIC,
              MOVE_WATER_SPORT,
              MOVE_MUD_SPORT,
              MOVE_CAPTIVATE,
              MOVE_AQUA_RING),
    egg_moves(SPECIES_BAGON,
              MOVE_HYDRO_PUMP,
              MOVE_THRASH,
              MOVE_DRAGON_RAGE,
              MOVE_TWISTER,
              MOVE_DRAGON_DANCE,
              MOVE_FIRE_FANG,
              MOVE_SHADOW_CLAW,
              MOVE_DRAGON_RUSH),
    egg_moves(SPECIES_TURTWIG,
              MOVE_WORRY_SEED,
              MOVE_GROWTH,
              MOVE_TICKLE,
              MOVE_BODY_SLAM,
              MOVE_DOUBLE_EDGE,
              MOVE_SAND_TOMB,
              MOVE_SEED_BOMB,
              MOVE_THRASH,
              MOVE_AMNESIA,
              MOVE_SUPERPOWER),
    egg_moves(SPECIES_CHIMCHAR,
              MOVE_FIRE_PUNCH,
              MOVE_THUNDER_PUNCH,
              MOVE_DOUBLE_KICK,
              MOVE_ENCORE,
              MOVE_HEAT_WAVE,
              MOVE_FOCUS_ENERGY,
              MOVE_HELPING_HAND,
              MOVE_FAKE_OUT,
              MOVE_BLAZE_KICK,
              MOVE_COUNTER),
    egg_moves(SPECIES_PIPLUP,
              MOVE_DOUBLE_HIT,
              MOVE_SUPERSONIC,
              MOVE_YAWN,
              MOVE_MUD_SPORT,
              MOVE_MUD_SLAP,
              MOVE_SNORE,
              MOVE_FLAIL,
              MOVE_AGILITY,
              MOVE_AQUA_RING,
              MOVE_HYDRO_PUMP),
    egg_moves(SPECIES_STARLY,
              MOVE_FEATHER_DANCE,
              MOVE_FURY_ATTACK,
              MOVE_PURSUIT,
              MOVE_ASTONISH,
              MOVE_SAND_ATTACK,
              MOVE_FORESIGHT,
              MOVE_DOUBLE_EDGE),
    egg_moves(SPECIES_BIDOOF,
              MOVE_QUICK_ATTACK,
              MOVE_WATER_SPORT,
              MOVE_DOUBLE_EDGE,
              MOVE_FURY_SWIPES,
              MOVE_DEFENSE_CURL,
              MOVE_ROLLOUT,
              MOVE_ODOR_SLEUTH,
              MOVE_AQUA_TAIL),
    egg_moves(SPECIES_SHINX,
              MOVE_ICE_FANG,
              MOVE_FIRE_FANG,
              MOVE_THUNDER_FANG,
              MOVE_QUICK_ATTACK,
              MOVE_HOWL,
              MOVE_TAKE_DOWN),
    egg_moves(SPECIES_BUDEW,
              MOVE_SPIKES,
              MOVE_SYNTHESIS,
              MOVE_PIN_MISSILE,
              MOVE_COTTON_SPORE,
              MOVE_SLEEP_POWDER,
              MOVE_RAZOR_LEAF,
              MOVE_MIND_READER,
              MOVE_LEAF_STORM,
              MOVE_EXTRASENSORY),
    egg_moves(SPECIES_CRANIDOS,
              MOVE_CRUNCH,
              MOVE_THRASH,
              MOVE_DOUBLE_EDGE,
              MOVE_LEER,
              MOVE_SLAM,
              MOVE_STOMP,
              MOVE_WHIRLWIND,
              MOVE_HAMMER_ARM),
    egg_moves(SPECIES_SHIELDON,
              MOVE_HEADBUTT,
              MOVE_SCARY_FACE,
              MOVE_FOCUS_ENERGY,
              MOVE_DOUBLE_EDGE,
              MOVE_ROCK_BLAST,
              MOVE_BODY_SLAM,
              MOVE_SCREECH,
              MOVE_CURSE,
              MOVE_FISSURE),
    egg_moves(SPECIES_PACHIRISU,
              MOVE_COVET,
              MOVE_BITE,
              MOVE_FAKE_TEARS,
              MOVE_DEFENSE_CURL,
              MOVE_ROLLOUT,
              MOVE_FLATTER,
              MOVE_FLAIL),
    egg_moves(SPECIES_BUIZEL,
              MOVE_MUD_SLAP,
              MOVE_HEADBUTT,
              MOVE_FURY_SWIPES,
              MOVE_SLASH,
              MOVE_ODOR_SLEUTH,
              MOVE_DOUBLE_SLAP,
              MOVE_FURY_CUTTER,
              MOVE_BATON_PASS),
    egg_moves(SPECIES_CHERUBI,
              MOVE_RAZOR_LEAF,
              MOVE_SWEET_SCENT,
              MOVE_TICKLE,
              MOVE_NATURE_POWER,
              MOVE_GRASS_WHISTLE,
              MOVE_AROMATHERAPY),
    egg_moves(SPECIES_SHELLOS,
              MOVE_COUNTER,
              MOVE_MIRROR_COAT,
              MOVE_STOCKPILE,
              MOVE_SWALLOW,
              MOVE_SPIT_UP,
              MOVE_YAWN,
              MOVE_MEMENTO,
              MOVE_CURSE,
              MOVE_AMNESIA,
              MOVE_FISSURE),
    egg_moves(SPECIES_DRIFLOON,
              MOVE_MEMENTO,
              MOVE_BODY_SLAM,
              MOVE_DESTINY_BOND,
              MOVE_DISABLE,
              MOVE_HAZE,
              MOVE_HYPNOSIS),
    egg_moves(SPECIES_BUNEARY,
              MOVE_FAKE_TEARS,
              MOVE_FAKE_OUT,
              MOVE_ENCORE,
              MOVE_SWEET_KISS,
              MOVE_DOUBLE_HIT,
              MOVE_ATTRACT,
              MOVE_LOW_KICK,
              MOVE_SKY_UPPERCUT,
              MOVE_SWITCHEROO,
              MOVE_THUNDER_PUNCH,
              MOVE_ICE_PUNCH,
              MOVE_FIRE_PUNCH),
    egg_moves(SPECIES_GLAMEOW,
              MOVE_BITE,
              MOVE_TAIL_WHIP,
              MOVE_QUICK_ATTACK,
              MOVE_SAND_ATTACK,
              MOVE_FAKE_TEARS,
              MOVE_ASSURANCE),
    egg_moves(SPECIES_CHINGLING,
              MOVE_DISABLE,
              MOVE_CURSE,
              MOVE_HYPNOSIS,
              MOVE_DREAM_EATER,
              MOVE_WISH,
              MOVE_FUTURE_SIGHT,
              MOVE_RECOVER),
    egg_moves(SPECIES_STUNKY,
              MOVE_PURSUIT,
              MOVE_LEER,
              MOVE_SMOG,
              MOVE_DOUBLE_EDGE,
              MOVE_CRUNCH,
              MOVE_SCARY_FACE,
              MOVE_ASTONISH,
              MOVE_PUNISHMENT),
    egg_moves(SPECIES_BONSLY,
              MOVE_SELF_DESTRUCT,
              MOVE_HEADBUTT,
              MOVE_HARDEN,
              MOVE_DEFENSE_CURL,
              MOVE_ROLLOUT,
              MOVE_SAND_TOMB),
    egg_moves(SPECIES_MIME_JR,
              MOVE_FUTURE_SIGHT,
              MOVE_HYPNOSIS,
              MOVE_MIMIC,
              MOVE_PSYCH_UP,
              MOVE_FAKE_OUT,
              MOVE_TRICK,
              MOVE_CONFUSE_RAY,
              MOVE_WAKE_UP_SLAP,
              MOVE_TEETER_DANCE,
              MOVE_HEALING_WISH,
              MOVE_CHARM),
    egg_moves(SPECIES_HAPPINY,
              MOVE_PRESENT,
              MOVE_METRONOME,
              MOVE_HEAL_BELL,
              MOVE_AROMATHERAPY,
              MOVE_SUBSTITUTE,
              MOVE_COUNTER,
              MOVE_HELPING_HAND,
              MOVE_GRAVITY,
              MOVE_LAST_RESORT),
    egg_moves(SPECIES_CHATOT,
              MOVE_ENCORE,
              MOVE_NIGHT_SHADE,
              MOVE_AGILITY,
              MOVE_NASTY_PLOT,
              MOVE_SUPERSONIC),
    egg_moves(SPECIES_SPIRITOMB,
              MOVE_DESTINY_BOND,
              MOVE_PAIN_SPLIT,
              MOVE_SMOKESCREEN,
              MOVE_IMPRISON,
              MOVE_GRUDGE,
              MOVE_SHADOW_SNEAK),
    egg_moves(SPECIES_GIBLE,
              MOVE_DRAGON_BREATH,
              MOVE_OUTRAGE,
              MOVE_TWISTER,
              MOVE_SCARY_FACE,
              MOVE_DOUBLE_EDGE,
              MOVE_THRASH,
              MOVE_METAL_CLAW,
              MOVE_SAND_TOMB,
              MOVE_BODY_SLAM,
              MOVE_IRON_HEAD),
    egg_moves(SPECIES_MUNCHLAX,
              MOVE_LICK,
              MOVE_CHARM,
              MOVE_DOUBLE_EDGE,
              MOVE_CURSE,
              MOVE_SUBSTITUTE,
              MOVE_WHIRLWIND,
              MOVE_PURSUIT,
              MOVE_ZEN_HEADBUTT),
    egg_moves(SPECIES_RIOLU,
              MOVE_CROSS_CHOP,
              MOVE_DETECT,
              MOVE_BITE,
              MOVE_MIND_READER,
              MOVE_SKY_UPPERCUT,
              MOVE_HIGH_JUMP_KICK,
              MOVE_AGILITY,
              MOVE_VACUUM_WAVE,
              MOVE_CRUNCH,
              MOVE_LOW_KICK,
              MOVE_IRON_DEFENSE,
              MOVE_BLAZE_KICK,
              MOVE_BULLET_PUNCH),
    egg_moves(SPECIES_HIPPOPOTAS,
              MOVE_STOCKPILE,
              MOVE_SWALLOW,
              MOVE_SPIT_UP,
              MOVE_CURSE,
              MOVE_SLACK_OFF,
              MOVE_BODY_SLAM,
              MOVE_SAND_TOMB),
    egg_moves(SPECIES_SKORUPI,
              MOVE_FEINT_ATTACK,
              MOVE_SCREECH,
              MOVE_SAND_ATTACK,
              MOVE_SLASH,
              MOVE_CONFUSE_RAY,
              MOVE_WHIRLWIND,
              MOVE_AGILITY,
              MOVE_PURSUIT,
              MOVE_NIGHT_SLASH),
    egg_moves(SPECIES_CROAGUNK,
              MOVE_ME_FIRST,
              MOVE_FEINT,
              MOVE_DYNAMIC_PUNCH,
              MOVE_HEADBUTT,
              MOVE_VACUUM_WAVE,
              MOVE_MEDITATE,
              MOVE_FAKE_OUT,
              MOVE_WAKE_UP_SLAP,
              MOVE_SMELLING_SALTS,
              MOVE_CROSS_CHOP,
              MOVE_BULLET_PUNCH),
    egg_moves(SPECIES_CARNIVINE,
              MOVE_SLEEP_POWDER,
              MOVE_STUN_SPORE,
              MOVE_RAZOR_LEAF,
              MOVE_SLAM,
              MOVE_SYNTHESIS,
              MOVE_MAGICAL_LEAF,
              MOVE_LEECH_SEED,
              MOVE_WORRY_SEED),
    egg_moves(SPECIES_FINNEON,
              MOVE_SWEET_KISS,
              MOVE_CHARM,
              MOVE_FLAIL,
              MOVE_AQUA_TAIL,
              MOVE_SPLASH,
              MOVE_PSYBEAM,
              MOVE_TICKLE,
              MOVE_AGILITY),
    egg_moves(SPECIES_MANTYKE,
              MOVE_TWISTER,
              MOVE_HYDRO_PUMP,
              MOVE_HAZE,
              MOVE_SLAM,
              MOVE_MUD_SPORT,
              MOVE_ROCK_SLIDE,
              MOVE_MIRROR_COAT,
              MOVE_WATER_SPORT,
              MOVE_SPLASH,
              MOVE_SIGNAL_BEAM),
    egg_moves(SPECIES_SNOVER,
              MOVE_LEECH_SEED,
              MOVE_MAGICAL_LEAF,
              MOVE_SEED_BOMB,
              MOVE_GROWTH,
              MOVE_DOUBLE_EDGE,
              MOVE_MIST,
              MOVE_STOMP),
    EGG_MOVES_TERMINATOR,
};

typedef struct {
    int unk_00[4];
    int unk_10[4];
    int unk_20[4];
    u16 unk_30[50];
    u16 unk_94[16];
} UnkStruct_ov5_021E6948;

void ov5_021E6DE8(Pokemon *param0, u16 param1, UnkStruct_02026310 * param2, u32 param3, u8 param4);
void sub_020262C0(UnkStruct_02026224 * param0);
static u8 ov5_021E70FC(UnkStruct_02026310 * param0);
static int ov5_021E6F6C(Party * param0);
static u8 ov5_021E6FF0(BoxPokemon ** param0);
void ov5_021E6B40(UnkStruct_02026310 * param0);
int ov5_021E6630(UnkStruct_02026310 * param0, u8 param1, UnkStruct_0200B358 * param2);
u8 ov5_021E6640(UnkStruct_02026310 * param0, int param1, UnkStruct_0200B358 * param2);
u16 ov5_021E73A0(Party * param0, int param1, UnkStruct_0200B358 * param2);
u8 ov5_021E73C8(UnkStruct_02026310 * param0);
void ov5_021E72BC(UnkStruct_02026310 * param0, UnkStruct_0200B358 * param1);
static void ov5_021E62C4(Party * param0, int param1, UnkStruct_02026218 * param2, UnkStruct_021C0794 * param3);
static int ov5_021E7110(UnkStruct_0203CDB0 * param0);

static BoxPokemon *ov5_021E622C (UnkStruct_02026310 * param0, int param1)
{
    return sub_02026220(sub_02026218(param0, param1));
}

static UnkStruct_02026310 * Unk_ov5_02202124;

u8 ov5_021E6238 (UnkStruct_02026310 * param0)
{
    u8 v0, v1;
    BoxPokemon *boxMon;

    v0 = 0;

    for (v1 = 0; v1 < 2; v1++) {
        boxMon = sub_02026220(sub_02026218(param0, v1));

        if (sub_02074570(boxMon, MON_DATA_SPECIES, NULL) != 0) {
            v0++;
        }
    }

    return v0;
}

int ov5_021E6270 (UnkStruct_02026310 * param0)
{
    u8 v0;
    BoxPokemon *boxMon;

    Unk_ov5_02202124 = param0;

    for (v0 = 0; v0 < 2; v0++) {
        boxMon = sub_02026220(sub_02026218(param0, v0));

        if (sub_02074570(boxMon, MON_DATA_SPECIES, NULL) == 0) {
            return v0;
        }
    }

    return -1;
}

static int ov5_021E62B0 (BoxPokemon *boxMon)
{
    int v0 = sub_02074570(boxMon, MON_DATA_HELD_ITEM, NULL);
    return Item_IsMail(v0);
}

static void ov5_021E62C4 (Party * param0, int param1, UnkStruct_02026218 * param2, UnkStruct_021C0794 * param3)
{
    int v0;
    Pokemon *v1 = Party_GetPokemonBySlotIndex(param0, param1);
    const u16 * v2;
    u16 v3[10 + 1];
    UnkStruct_02026224 * v4 = sub_02026224(param2);
    BoxPokemon *v5 = sub_02026220(param2);
    UnkStruct_02025E6C * v6 = sub_02025E38(param3);

    v2 = sub_02025EF0(v6);
    GetMonData(v1, MON_DATA_117, v3);

    if (ov5_021E62B0(sub_02076B10(v1))) {
        GetMonData(v1, MON_DATA_170, sub_02026230(v4));
    }

    PokemonToBoxPokemon(v1, v5);
    SetBoxShayminForm(v5, 0);
    sub_02026258(param2, 0);
    Party_RemovePokemonBySlotIndex(param0, param1);

    if (Party_HasSpecies(param0, SPECIES_CHATOT) == 0) {
        UnkStruct_0202CC84 * v7 = sub_0202CC98(param3);
        sub_0202CCA8(v7);
    }
}

void ov5_021E6358 (Party * param0, int param1, UnkStruct_02026310 * param2, UnkStruct_021C0794 * param3)
{
    int v0;
    UnkStruct_0202CD88 * v1 = sub_0202CD88(param3);

    sub_0202CF28(v1, 1 + 39);
    v0 = ov5_021E6270(param2);
    ov5_021E62C4(param0, param1, sub_02026218(param2, v0), param3);
}

static void ov5_021E638C (UnkStruct_02026310 * param0)
{
    UnkStruct_02026218 * v0, * v1;
    BoxPokemon *v2, * v3;

    v0 = sub_02026218(param0, 0);
    v1 = sub_02026218(param0, 1);
    v2 = sub_02026220(v0);
    v3 = sub_02026220(v1);

    if (sub_02074570(v2, MON_DATA_SPECIES, NULL) == 0) {
        if (sub_02074570(v3, MON_DATA_SPECIES, NULL) != 0) {
            sub_020262A8(v0, v1);
            sub_020262F4(v1);
        }
    }
}

static void ov5_021E63E0 (Pokemon *param0)
{
    int v0, v1 = 0, v2;
    u16 v3;
    u16 v4;

    for (v0 = 0; v0 < 100; v0++) {
        if (sub_02076B14(param0)) {
            v1 = 0;

            while ((v4 = sub_0207727C(param0, &v1, &v3)) != 0) {
                if (v4 == 0xffff) {
                    sub_02077134(param0, v3);
                }
            }
        } else {
            break;
        }
    }

    sub_0207418C(param0);
}

static int ov5_021E6444 (Party * param0, UnkStruct_02026218 * param1, UnkStruct_0200B358 * param2)
{
    Pokemon *v0 = sub_02073C74(4);
    BoxPokemon *v1 = sub_02026220(param1);
    UnkStruct_02026224 * v2 = sub_02026224(param1);
    u32 v3;
    u16 v4;

    sub_0200B5CC(param2, 0, v1);
    v4 = sub_02074570(v1, MON_DATA_SPECIES, NULL);
    sub_020774C8(v1, v0);

    if (GetMonData(v0, MON_DATA_161, NULL) != 100) {
        v3 = GetMonData(v0, MON_DATA_EXP, NULL);
        v3 += sub_02026228(param1);
        sub_02074B30(v0, 8, (u8 *)&v3);
        ov5_021E63E0(v0);
    }

    if (ov5_021E62B0(v1)) {
        sub_02074B30(v0, 170, sub_02026230(v2));
    }

    Party_AddPokemon(param0, v0);
    sub_02073C54(v1);
    sub_02026258(param1, 0);
    Heap_FreeToHeap(v0);

    return v4;
}

u16 ov5_021E64F8 (Party * param0, UnkStruct_0200B358 * param1, UnkStruct_02026310 * param2, u8 param3)
{
    u16 v0;
    UnkStruct_02026218 * v1 = sub_02026218(param2, param3);

    v0 = ov5_021E6444(param0, v1, param1);
    ov5_021E638C(param2);

    return v0;
}

int ov5_021E6520 (BoxPokemon *boxMon, u32 exp)
{
    Pokemon *v0 = sub_02073C74(4);
    BoxPokemon *boxMon2 = sub_02076B10(v0);
    int v2;
    u32 currExp;

    CopyBoxPokemon(boxMon, boxMon2);

    currExp = sub_02074570(boxMon2, MON_DATA_EXP, NULL);
    currExp += exp;

    SetBoxMonData(boxMon2, MON_DATA_EXP, (u8 *)&currExp);
    v2 = sub_02075B40(boxMon2);
    Heap_FreeToHeap(v0);

    return v2;
}

int ov5_021E6568 (UnkStruct_02026218 * param0)
{
    u8 v0, v1;
    BoxPokemon *v2;

    v2 = sub_02026220(param0);
    v0 = sub_02075B40(v2);
    v1 = ov5_021E6520(v2, sub_02026228(param0));

    return v1 - v0;
}

int ov5_021E6590 (UnkStruct_02026218 * param0)
{
    u8 v0;
    BoxPokemon *boxMon;

    boxMon = sub_02026220(param0);
    v0 = ov5_021E6520(boxMon, sub_02026228(param0));

    return v0;
}

u8 ov5_021E65B0 (UnkStruct_02026218 * param0, UnkStruct_0200B358 * param1)
{
    int v0;
    UnkStruct_02023790 * v1;
    u16 v2[10 + 1];
    BoxPokemon *v3 = sub_02026220(param0);

    v0 = ov5_021E6568(param0);

    sub_0200B60C(param1, 1, v0, 3, 0, 1);
    sub_0200B5CC(param1, 0, v3);

    return v0;
}

int ov5_021E65EC (UnkStruct_02026218 * param0, UnkStruct_0200B358 * param1)
{
    u16 v0;
    BoxPokemon *v1 = sub_02026220(param0);

    v0 = ov5_021E6568(param0);
    sub_0200B5CC(param1, 0, v1);

    v0 = v0 * 100 + 100;
    sub_0200B60C(param1, 1, v0, 5, 0, 1);

    return v0;
}

int ov5_021E6630 (UnkStruct_02026310 * param0, u8 param1, UnkStruct_0200B358 * param2)
{
    UnkStruct_02026218 * v0;

    v0 = sub_02026218(param0, param1);
    return ov5_021E65EC(v0, param2);
}

u8 ov5_021E6640 (UnkStruct_02026310 * param0, int param1, UnkStruct_0200B358 * param2)
{
    UnkStruct_02026218 * v0 = sub_02026218(param0, param1);
    BoxPokemon *v1 = sub_02026220(v0);

    if (sub_02074570(v1, MON_DATA_SPECIES, NULL)) {
        return ov5_021E65B0(v0, param2);
    }

    return 0;
}

static void ov5_021E6668 (UnkStruct_02026310 * param0, BoxPokemon *boxMon[])
{
    boxMon[0] = ov5_021E622C(param0, 0);
    boxMon[1] = ov5_021E622C(param0, 1);
}

static int ov5_021E6684 (UnkStruct_02026310 * param0)
{
    int v0;
    int v1[2], v2 = -1, v3;
    BoxPokemon *v4[2];

    ov5_021E6668(param0, v4);

    for (v0 = 0; v0 < 2; v0++) {
        if (sub_02075D74(v4[v0]) == 1) {
            v2 = v0;
        }
    }

    for (v3 = 0, v0 = 0; v0 < 2; v0++) {
        if ((v1[v0] = sub_02074570(v4[v0], MON_DATA_SPECIES, NULL)) == 132) {
            v3++;
            v2 = v0;
        }
    }

    if (v3 == 2) {
        if (sub_0201D2E8() >= (0xffff / 2)) {
            v2 = 0;
        } else {
            v2 = 1;
        }
    }

    if (sub_02074570(v4[v2], MON_DATA_HELD_ITEM, NULL) == 229) {
        if (sub_0201D2E8() >= (0xffff / 2)) {
            return -1;
        }
    } else {
        return -1;
    }

    return v2;
}

void ov5_021E6720 (UnkStruct_02026310 * param0)
{
    u32 personality = 0, v1;
    int v2, nature;
    int v4 = 0;

    if ((v2 = ov5_021E6684(param0)) < 0) {
        sub_02026270(param0, sub_0201D35C());
    } else {
        BoxPokemon *v5 = ov5_021E622C(param0, v2);

        personality = sub_02074570(v5, MON_DATA_PERSONALITY, NULL);
        nature = GetNatureFromPersonality(personality);

        while (TRUE) {
            v1 = sub_0201D35C();

            if ((nature == GetNatureFromPersonality(v1)) && (v1 != 0)) {
                break;
            }

            if (++v4 > 2400) {
                break;
            }
        }

        sub_02026270(param0, v1);
    }
}

static void ov5_021E6778 (u8 * param0, u8 param1)
{
    int v0, v1;
    u8 v2[6];

    param0[param1] = 0xff;

    for (v0 = 0; v0 < 6; v0++) {
        v2[v0] = param0[v0];
    }

    v1 = 0;

    for (v0 = 0; v0 < 6; v0++) {
        if (v2[v0] != 0xff) {
            param0[v1++] = v2[v0];
        }
    }
}

static void ov5_021E67B0 (Pokemon *param0, UnkStruct_02026310 * param1)
{
    u8 v0[3], v1, v2[6], v3[3], v4;

    for (v1 = 0; v1 < 6; v1++) {
        v2[v1] = v1;
    }

    for (v1 = 0; v1 < 3; v1++) {
        v0[v1] = v2[sub_0201D2E8() % (6 - v1)];
        ov5_021E6778(v2, v1);
    }

    for (v1 = 0; v1 < 3; v1++) {
        v3[v1] = sub_0201D2E8() % 2;
    }

    for (v1 = 0; v1 < 3; v1++) {
        BoxPokemon *v5 = ov5_021E622C(param1, v3[v1]);

        switch (v0[v1]) {
        case 0:
            v4 = sub_02074570(v5, MON_DATA_HP_IV, NULL);
            sub_02074B30(param0, 70, (u8 *)&v4);
            break;
        case 1:
            v4 = sub_02074570(v5, MON_DATA_ATK_IV, NULL);
            sub_02074B30(param0, 71, (u8 *)&v4);
            break;
        case 2:
            v4 = sub_02074570(v5, MON_DATA_DEF_IV, NULL);
            sub_02074B30(param0, 72, (u8 *)&v4);
            break;
        case 3:
            v4 = sub_02074570(v5, MON_DATA_SPEED_IV, NULL);
            sub_02074B30(param0, 73, (u8 *)&v4);
            break;
        case 4:
            v4 = sub_02074570(v5, MON_DATA_SPATK_IV, NULL);
            sub_02074B30(param0, 74, (u8 *)&v4);
            break;
        case 5:
            v4 = sub_02074570(v5, MON_DATA_SPDEF_IV, NULL);
            sub_02074B30(param0, 75, (u8 *)&v4);
            break;
        }
    }
}

static u8 ov5_021E68D8 (Pokemon *param0, u16 *param1)
{
    u16 v0, v1, v2, v3;

    v2 = 0;
    v1 = 0;
    v0 = GetMonData(param0, MON_DATA_SPECIES, NULL);

    for (v3 = 0; v3 < 1909; v3++) {
        if (gEggMoves[v3] == (EGG_MOVES_SPECIES_OFFSET + v0)) {
            v1 = v3 + 1;
            break;
        }
    }

    for (v3 = 0; v3 < 16; v3++) {
        if (gEggMoves[v1 + v3] > EGG_MOVES_SPECIES_OFFSET) {
            break;
        } else {
            param1[v3] = gEggMoves[v1 + v3];
            v2++;
        }
    }

    return v2;
}

static void ov5_021E6948 (Pokemon *param0, BoxPokemon *boxMon1, BoxPokemon *boxMon2)
{
    u16 v0, v1, v2, v3, v4, v5, v6;
    UnkStruct_ov5_021E6948 * v7 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021E6948));

    v2 = 0;

    MI_CpuClearFast(v7, sizeof(UnkStruct_ov5_021E6948));

    v3 = GetMonData(param0, MON_DATA_SPECIES, NULL);
    v6 = GetMonData(param0, MON_DATA_FORM, NULL);
    v4 = sub_02077660(v3, v6, v7->unk_30);

    for (v0 = 0; v0 < 4; v0++) {
        v7->unk_00[v0] = sub_02074570(boxMon1, 54 + v0, NULL);
        v7->unk_20[v0] = sub_02074570(boxMon2, 54 + v0, NULL);
    }

    v5 = ov5_021E68D8(param0, v7->unk_94);

    for (v0 = 0; v0 < 4; v0++) {
        if (v7->unk_00[v0] != 0) {
            for (v1 = 0; v1 < v5; v1++) {
                if (v7->unk_00[v0] == v7->unk_94[v1]) {
                    if (sub_020770C4(param0, v7->unk_00[v0]) == 0xffff) {
                        sub_02077134(param0, v7->unk_00[v0]);
                    }
                    break;
                }
            }
        } else {
            break;
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (v7->unk_00[v0] != 0) {
            for (v1 = 0; v1 < 100; v1++) {
                if (v7->unk_00[v0] == GetMoveFromTMOrHMItemID(328 + v1)) {
                    if (sub_02077FE4(v3, v6, v1)) {
                        if (sub_020770C4(param0, v7->unk_00[v0]) == 0xffff) {
                            sub_02077134(param0, v7->unk_00[v0]);
                        }
                    }
                }
            }
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (v7->unk_00[v0] == 0) {
            break;
        }

        for (v1 = 0; v1 < 4; v1++) {
            if ((v7->unk_00[v0] == v7->unk_20[v1]) && (v7->unk_00[v0] != 0)) {
                v7->unk_10[v2++] = v7->unk_00[v0];
            }
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (v7->unk_10[v0] == 0) {
            break;
        }

        for (v1 = 0; v1 < v4; v1++) {
            if (v7->unk_30[v1] != 0) {
                if (v7->unk_10[v0] == v7->unk_30[v1]) {
                    if (sub_020770C4(param0, v7->unk_10[v0]) == 0xffff) {
                        sub_02077134(param0, v7->unk_10[v0]);
                    }
                    break;
                }
            }
        }
    }

    Heap_FreeToHeap(v7);
}

void ov5_021E6B40 (UnkStruct_02026310 * param0)
{
    sub_02026270(param0, 0);
    sub_02026278(param0, 0);
}

static const u16 Unk_ov5_021F9F6C[9][3] = {
    {0x168, 0xFF, 0xCA},
    {0x12A, 0xFE, 0xB7},
    {0x1B7, 0x13A, 0x7A},
    {0x1B6, 0x13B, 0xB9},
    {0x1BE, 0x13C, 0x8F},
    {0x1CA, 0x13D, 0xE2},
    {0x196, 0x13E, 0x13B},
    {0x1B8, 0x13F, 0x71},
    {0x1B1, 0x140, 0x166}
};

static u16 ov5_021E6B54 (u16 param0, UnkStruct_02026310 * param1)
{
    u16 v0, v1, v2, v3;
    BoxPokemon *v4[2];

    ov5_021E6668(param1, v4);

    for (v3 = 0; v3 < 9; v3++) {
        if (param0 == Unk_ov5_021F9F6C[v3][0]) {
            v2 = v3;
            break;
        }
    }

    if (v3 == 9) {
        return param0;
    }

    v0 = sub_02074570(v4[0], MON_DATA_HELD_ITEM, NULL);
    v1 = sub_02074570(v4[1], MON_DATA_HELD_ITEM, NULL);

    if ((v0 != Unk_ov5_021F9F6C[v2][1]) && (v1 != Unk_ov5_021F9F6C[v2][1])) {
        param0 = Unk_ov5_021F9F6C[v2][2];
    }

    return param0;
}

static void ov5_021E6BD0 (Pokemon *param0, UnkStruct_02026310 * param1)
{
    int v0, v1;
    BoxPokemon *v2[2];

    ov5_021E6668(param1, v2);

    v0 = sub_02074570(v2[0], MON_DATA_HELD_ITEM, NULL);
    v1 = sub_02074570(v2[1], MON_DATA_HELD_ITEM, NULL);

    if ((v0 == 236) || (v1 == 236)) {
        if (sub_020770C4(param0, 344) == 0xffff) {
            sub_02077134(param0, 344);
        }
    }
}

static u16 ov5_021E6C20 (UnkStruct_02026310 * param0, u8 param1[])
{
    u16 v0[2], v1, v2, v3, v4, v5;
    BoxPokemon *v6[2];

    ov5_021E6668(param0, v6);

    v2 = 0;

    for (v1 = 0; v1 < 2; v1++) {
        if ((v0[v1] = sub_02074570(v6[v1], MON_DATA_SPECIES, NULL)) == 132) {
            param1[0] = v1 ^ 1;
            param1[1] = v1;
        } else if (sub_02075D74(v6[v1]) == 1) {
            param1[0] = v1;
            param1[1] = v1 ^ 1;
        }
    }

    v3 = v0[param1[0]];
    v4 = sub_02076F84(v3);

    if (v4 == 29) {
        if (sub_02026248(param0) & 0x8000) {
            v4 = 32;
        } else {
            v4 = 29;
        }
    }

    if (v4 == 314) {
        if (sub_02026248(param0) & 0x8000) {
            v4 = 313;
        } else {
            v4 = 314;
        }
    }

    if (v4 == 490) {
        v4 = 489;
    }

    if ((v0[param1[1]] == 132) && (sub_02075D74(v6[param1[0]]) != 1)) {
        v5 = param1[1];
        param1[1] = param1[0];
        param1[0] = v5;
    }

    return v4;
}

void ov5_021E6CF0 (Pokemon *param0, u16 param1, u8 param2, UnkStruct_02025E6C * param3, int param4, int param5)
{
    u8 v0, v1, v2;
    u16 v3;
    u8 v4 = sub_020759F0(param1, 19);
    UnkStruct_02023790 * v5;

    sub_02073D80(param0, param1, 1, 32, 0, 0, 0, 0);

    v0 = 0;
    v3 = 4;

    sub_02074B30(param0, 155, &v3);
    sub_02074B30(param0, 9, &v4);
    sub_02074B30(param0, 156, &v0);

    if (param2) {
        sub_02074B30(param0, 152, &param2);
    }

    v2 = 1;
    sub_02074B30(param0, 76, &v2);

    v5 = sub_0200B32C(494, 4);
    sub_02074B30(param0, 119, v5);
    sub_020237BC(v5);

    if (param4 == 4) {
        u32 v6 = sub_02025F20(param3);
        u32 v7 = sub_02025F30(param3);
        UnkStruct_02023790 * v8 = sub_02025F04(param3, 32);

        sub_02074B30(param0, 145, v8);
        sub_02074B30(param0, 7, &v6);
        sub_02074B30(param0, 157, &v7);
        sub_020237BC(v8);
    }

    sub_0209304C(param0, param3, param4, param5, 0);
}

void ov5_021E6DE8 (Pokemon *param0, u16 param1, UnkStruct_02026310 * param2, u32 param3, u8 param4)
{
    u8 v0;
    u16 v1;
    u32 v2;
    UnkStruct_02023790 * v3;
    u8 v4 = sub_020759F0(param1, 19);

    v2 = sub_02026248(param2);

    if (sub_02026280(param2)) {
        int v5;

        if (sub_02075E38(param3, v2) == 0) {
            for (v5 = 0; v5 < 4; v5++) {
                v2 = sub_0201D30C(v2);

                if (sub_02075E38(param3, v2)) {
                    break;
                }
            }
        } else {
            (void)0;
        }
    }

    sub_02073D80(param0, param1, 1, 32, 1, v2, 0, 0);

    v0 = 0;
    v1 = 4;

    sub_02074B30(param0, 155, &v1);
    sub_02074B30(param0, 9, &v4);
    sub_02074B30(param0, 156, &v0);
    sub_02074B30(param0, 112, &param4);

    v3 = sub_0200B32C(494, 4);

    sub_02074B30(param0, 119, v3);
    sub_020237BC(v3);
}

void ov5_021E6EA8 (UnkStruct_02026310 * param0, Party * param1, UnkStruct_02025E6C * param2)
{
    u16 v0;
    u8 v1[2], v2;
    Pokemon *v3 = sub_02073C74(4);

    v0 = ov5_021E6C20(param0, v1);
    v0 = ov5_021E6B54(v0, param0);

    {
        u32 v4 = sub_02025F20(param2);
        BoxPokemon *v5 = ov5_021E622C(param0, v1[0]);
        u8 v6 = sub_02074570(v5, MON_DATA_FORM, NULL);

        ov5_021E6DE8(v3, v0, param0, v4, v6);
    }

    ov5_021E67B0(v3, param0);
    ov5_021E6948(v3, ov5_021E622C(param0, v1[1]), ov5_021E622C(param0, v1[0]));

    sub_0209304C(v3, param2, 3, sub_02017070(1, 0), 4);

    if (v0 == 172) {
        ov5_021E6BD0(v3, param0);
    }

    v2 = 1;
    sub_02074B30(v3, 76, &v2);

    Party_AddPokemon(param1, v3);
    ov5_021E6B40(param0);
    Heap_FreeToHeap(v3);
}

static int ov5_021E6F6C (Party * param0)
{
    u8 v0;
    u8 v1;
    int v2;

    v2 = Party_GetCurrentCount(param0);

    for (v0 = 0; v0 < v2; v0++) {
        if (GetMonData(Party_GetPokemonBySlotIndex(param0, v0), MON_DATA_173, NULL) == 0) {
            v1 = GetMonData(Party_GetPokemonBySlotIndex(param0, v0), MON_DATA_10, NULL);

            if ((v1 == 40) || (v1 == 49)) {
                return 2;
            }
        }
    }

    return 1;
}

static u8 ov5_021E6FC0 (u16 * param0, u16 * param1)
{
    int v0, v1;

    for (v0 = 0; v0 < 2; v0++) {
        for (v1 = 0; v1 < 2; v1++) {
            if (param0[v0] == param1[v1]) {
                return 1;
            }
        }
    }

    return 0;
}

static u8 ov5_021E6FF0 (BoxPokemon ** param0)
{
    u16 v0[2][2], v1[2];
    u32 v2[2], v3[2], personality, v5;

    for (v5 = 0; v5 < 2; v5++) {
        v1[v5] = sub_02074570(param0[v5], MON_DATA_SPECIES, NULL);
        v2[v5] = sub_02074570(param0[v5], MON_DATA_OT_ID, NULL);
        personality = sub_02074570(param0[v5], MON_DATA_PERSONALITY, NULL);
        v3[v5] = sub_02075DAC(v1[v5], personality);
        v0[v5][0] = sub_020759F0(v1[v5], 22);
        v0[v5][1] = sub_020759F0(v1[v5], 23);
    }

    if ((v0[0][0] == 15) || (v0[1][0] == 15)) {
        return 0;
    }

    if ((v0[0][0] == 13) && (v0[1][0] == 13)) {
        return 0;
    }

    if ((v0[0][0] == 13) || (v0[1][0] == 13)) {
        if (v2[0] == v2[1]) {
            return 20;
        } else {
            return 50;
        }
    }

    if (v3[0] == v3[1]) {
        return 0;
    }

    if ((v3[0] == 2) || (v3[1] == 2)) {
        return 0;
    }

    if (ov5_021E6FC0(v0[0], v0[1]) == 0) {
        return 0;
    }

    if (v1[0] == v1[1]) {
        if (v2[0] != v2[1]) {
            return 70;
        } else {
            return 50;
        }
    } else {
        if (v2[0] != v2[1]) {
            return 50;
        } else {
            return 20;
        }
    }

    return 0;
}

static u8 ov5_021E70FC (UnkStruct_02026310 * param0)
{
    BoxPokemon *v0[2];

    ov5_021E6668(param0, v0);
    return ov5_021E6FF0(v0);
}

static const u16 Unk_ov5_021F9F54[] = {
    0x70,
    0xD6,
    0x12F,
    0x191,
    0x1F5,
    0x263,
    0x2C3,
    0x335,
    0x38B,
    0x3A0,
    0x461,
    0x4BE
};

static int ov5_021E7110 (UnkStruct_0203CDB0 * param0)
{
    int v0 = sub_02055BB8(param0) * 100 + sub_02055BC4(param0);
    int v1;

    if (sub_02055C40(param0)) {
        return 255;
    }

    for (v1 = 0; v1 < NELEMS(Unk_ov5_021F9F54); v1++) {
        if (Unk_ov5_021F9F54[v1] == v0) {
            return 230;
        }
    }

    return 255;
}

BOOL ov5_021E7154 (UnkStruct_02026310 * param0, Party * param1, UnkStruct_0203CDB0 * param2)
{
    u32 v0, v1, v2, v3, v4;
    u32 v5 = 0, v6;
    int v7;
    BoxPokemon *v8[2];

    ov5_021E6668(param0, v8);

    v2 = 0;

    for (v0 = 0; v0 < 2; v0++) {
        if (sub_02074570(v8[v0], MON_DATA_172, NULL) != 0) {
            sub_02026260(sub_02026218(param0, v0), 1);
            v2++;
        }
    }

    if ((sub_02026234(param0) == 0) && (v2 == 2)) {
        if ((sub_02026228(sub_02026218(param0, 1)) & 0xff) == 0xff) {
            v3 = ov5_021E70FC(param0);
            v4 = sub_0201D2E8();
            v4 = (v4 * 100) / 0xffff;

            if (v3 > v4) {
                ov5_021E6720(param0);
            }
        }
    }

    v6 = sub_02026250(param0);
    sub_02026278(param0, ++v6);

    if (v6 == ov5_021E7110(param2)) {
        sub_02026278(param0, 0);
        v7 = ov5_021E6F6C(param1);

        for (v0 = 0; v0 < Party_GetCurrentCount(param1); v0++) {
            Pokemon *v9 = Party_GetPokemonBySlotIndex(param1, v0);

            if (GetMonData(v9, MON_DATA_IS_EGG, NULL)) {
                if (GetMonData(v9, MON_DATA_3, NULL)) {
                    continue;
                }

                v1 = GetMonData(v9, MON_DATA_FRIENDSHIP, NULL);

                if (v1 != 0) {
                    if (v1 >= v7) {
                        v1 -= v7;
                    } else {
                        v1--;
                    }

                    sub_02074B30(v9, 9, (u8 *)&v1);
                } else {
                    return 1;
                }
            }
        }
    }

    return 0;
}

Pokemon *ov5_021E7278 (Party * param0)
{
    int v0;
    Pokemon *v1;
    int v2 = Party_GetCurrentCount(param0);

    for (v0 = 0; v0 < v2; v0++) {
        v1 = Party_GetPokemonBySlotIndex(param0, v0);

        if (GetMonData(v1, MON_DATA_IS_EGG, NULL)
            && (GetMonData(v1, MON_DATA_FRIENDSHIP, NULL) == 0)) {
            return v1;
        }
    }

    return NULL;
}

void ov5_021E72BC (UnkStruct_02026310 * param0, UnkStruct_0200B358 * param1)
{
    BoxPokemon *v0[2];
    u16 v1[10 + 1];

    ov5_021E6668(param0, v0);

    if (sub_02074570(v0[0], MON_DATA_SPECIES, NULL) != 0) {
        sub_0200B5CC(param1, 0, v0[0]);
        sub_0200B5EC(param1, 2, v0[0]);
    }

    if (sub_02074570(v0[1], MON_DATA_SPECIES, NULL) != 0) {
        sub_0200B5CC(param1, 1, v0[1]);
    }
}

void ov5_021E7308 (UnkStruct_02026310 * param0, u32 param1, u32 param2, u32 param3, u8 param4, UnkStruct_0200B358 * param5)
{
    UnkStruct_02026218 * v0;
    BoxPokemon *v1;
    u8 v2, v3;
    u16 v4;

    v0 = sub_02026218(param0, param4);
    v1 = ov5_021E622C(param0, param4);

    sub_0200B5CC(param5, param1, v1);

    v2 = ov5_021E6520(v1, sub_02026228(v0));
    sub_0200B60C(param5, param2, v2, 3, 0, 1);
    v3 = sub_02074570(v1, MON_DATA_111, NULL);

    if (v3 != 2) {
        v4 = sub_02074570(v1, MON_DATA_SPECIES, NULL);

        if (((v4 == 29) || (v4 == 32)) && (sub_02074570(v1, MON_DATA_77, NULL) == 0)) {
            v3 = 2;
        }
    }

    sub_0200BCF0(param5, param3, v3);
}

u16 ov5_021E73A0 (Party * param0, int param1, UnkStruct_0200B358 * param2)
{
    Pokemon *v0 = Party_GetPokemonBySlotIndex(param0, param1);

    sub_0200B5CC(param2, 0, sub_02076B10(v0));
    return GetMonData(v0, MON_DATA_SPECIES, NULL);
}

u8 ov5_021E73C8 (UnkStruct_02026310 * param0)
{
    u8 v0;

    if (sub_02026234(param0)) {
        return 1;
    }

    if ((v0 = ov5_021E6238(param0))) {
        return v0 + 1;
    }

    return 0;
}

u8 ov5_021E73F0 (u32 param0)
{
    switch (param0) {
    case 0:
        return 3;
    case 20:
        return 2;
    case 50:
        return 1;
    case 70:
        return 0;
    }

    return 0;
}

extern u32 ov5_021E7420 (UnkStruct_02026310 * param0)
{
    u8 v0, v1;

    v0 = ov5_021E70FC(param0);
    v1 = ov5_021E73F0(v0);

    return v1;
}

static void ov5_021E742C (Pokemon *param0, int param1)
{
    u16 v0;
    u16 v1[4];
    u8 v2[4];
    u32 v3, v4;
    u8 v5[6], v6;
    u8 v7, v8, v9, v10, v11, v12, v13, v14;
    UnkStruct_02023790 * v15 = sub_02023790(7 + 1, param1);
    Pokemon *v16 = sub_02073C74(param1);

    v0 = GetMonData(param0, MON_DATA_SPECIES, NULL);

    for (v7 = 0; v7 < 4; v7++) {
        v1[v7] = GetMonData(param0, 54 + v7, NULL);
        v2[v7] = GetMonData(param0, 58 + v7, NULL);
    }

    v3 = GetMonData(param0, MON_DATA_PERSONALITY, NULL);

    for (v7 = 0; v7 < 6; v7++) {
        v5[v7] = GetMonData(param0, 70 + v7, NULL);
    }

    v8 = GetMonData(param0, MON_DATA_LANGUAGE, NULL);
    v9 = GetMonData(param0, MON_DATA_MET_GAME, NULL);
    v10 = GetMonData(param0, MON_DATA_11, NULL);
    v6 = GetMonData(param0, MON_DATA_POKERUS, NULL);
    v12 = GetMonData(param0, MON_DATA_FATEFUL_ENCOUNTER, NULL);

    GetMonData(param0, MON_DATA_145, v15);

    v14 = GetMonData(param0, MON_DATA_OT_GENDER, NULL);
    v4 = GetMonData(param0, MON_DATA_OT_ID, NULL);
    v13 = GetMonData(param0, MON_DATA_FORM, NULL);

    if (v0 == 490) {
        int v17 = GetMonData(param0, MON_DATA_152, NULL);

        if (v17 == sub_02017070(2, 1)) {
            while (sub_02075E38(v4, v3)) {
                v3 = sub_0201D30C(v3);
            }
        }
    }

    sub_02073D80(v16, v0, 1, 32, 1, v3, 0, 0);

    for (v7 = 0; v7 < 4; v7++) {
        sub_02074B30(v16, 54 + v7, &(v1[v7]));
        sub_02074B30(v16, 58 + v7, &(v2[v7]));
    }

    for (v7 = 0; v7 < 6; v7++) {
        sub_02074B30(v16, 70 + v7, &(v5[v7]));
    }

    sub_02074B30(v16, 12, &v8);
    sub_02074B30(v16, 122, &v9);
    sub_02074B30(v16, 11, &v10);

    v11 = 120;

    sub_02074B30(v16, 9, &v11);
    sub_02074B30(v16, 154, &v6);
    sub_02074B30(v16, 110, &v12);
    sub_02074B30(v16, 145, v15);
    sub_02074B30(v16, 157, &v14);
    sub_02074B30(v16, 7, &v4);
    sub_02074B30(v16, 112, &v13);

    {
        u16 v18;
        u8 v19, v20, v21;

        v18 = GetMonData(param0, MON_DATA_152, NULL);
        v19 = GetMonData(param0, MON_DATA_146, NULL);
        v20 = GetMonData(param0, MON_DATA_147, NULL);
        v21 = GetMonData(param0, MON_DATA_148, NULL);

        sub_02074B30(v16, 152, &v18);
        sub_02074B30(v16, 146, &v19);
        sub_02074B30(v16, 147, &v20);
        sub_02074B30(v16, 148, &v21);

        v18 = GetMonData(param0, MON_DATA_153, NULL);
        v19 = GetMonData(param0, MON_DATA_149, NULL);
        v20 = GetMonData(param0, MON_DATA_150, NULL);
        v21 = GetMonData(param0, MON_DATA_151, NULL);

        sub_02074B30(v16, 153, &v18);
        sub_02074B30(v16, 149, &v19);
        sub_02074B30(v16, 150, &v20);
        sub_02074B30(v16, 151, &v21);
    }

    sub_020775EC(v16, param0);
    sub_020237BC(v15);
    Heap_FreeToHeap(v16);
}

void ov5_021E771C (Pokemon *param0, int param1)
{
    u8 v0, v1;
    u8 v2, v3;
    u16 v4;
    u16 v5[11];

    v0 = 70;
    v1 = 0;
    v2 = 4;
    v3 = 0;

    ov5_021E742C(param0, param1);
    sub_02074B30(param0, 76, &v0);

    v4 = GetMonData(param0, MON_DATA_SPECIES, NULL);

    sub_0200B274(v4, 0, v5);
    sub_02074B30(param0, 117, v5);
    sub_02074B30(param0, 77, &v1);
    sub_02074B30(param0, 155, &v2);
    sub_02074B30(param0, 156, &v3);
    sub_0207418C(param0);
}

u32 ov5_021E7790 (BoxPokemon ** param0)
{
    return ov5_021E73F0(ov5_021E6FF0(param0));
}
