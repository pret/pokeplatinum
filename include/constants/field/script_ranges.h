#ifndef POKEPLATINUM_CONSTANTS_FIELD_SCRIPT_RANGES_H
#define POKEPLATINUM_CONSTANTS_FIELD_SCRIPT_RANGES_H

#define SCRIPT_ID_OFFSET_COMMON_SCRIPTS                2000
#define SCRIPT_ID_OFFSET_BG_EVENTS                     2500
#define SCRIPT_ID_OFFSET_BERRY_TREE_INTERACTIONS       2800
#define SCRIPT_ID_OFFSET_SINGLE_BATTLES                3000
#define SCRIPT_ID_OFFSET_DOUBLE_BATTLES                5000
#define SCRIPT_ID_OFFSET_VISIBLE_ITEMS                 7000
#define SCRIPT_ID_OFFSET_HIDDEN_ITEMS                  8000
#define SCRIPT_ID_OFFSET_SAFARI_GAME                   8800
#define SCRIPT_ID_OFFSET_RECORD_CHATOT_CRY             8900
#define SCRIPT_ID_OFFSET_VS_SEEKER                     8950
#define SCRIPT_ID_OFFSET_POKE_RADAR                    8970
#define SCRIPT_ID_OFFSET_POKEMON_CENTER_2F_COMMON      9000
#define SCRIPT_ID_OFFSET_COMMUNICATION_CLUB            9100
#define SCRIPT_ID_OFFSET_POKEMON_CENTER_B1F_COMMON     9200
#define SCRIPT_ID_OFFSET_GROUP_CONNECTION              9300
#define SCRIPT_ID_OFFSET_POFFIN_COMMON                 9400
#define SCRIPT_ID_OFFSET_DAY_CARE_COMMON               9500
#define SCRIPT_ID_OFFSET_INIT_NEW_GAME                 9600
#define SCRIPT_ID_OFFSET_FOLLOWER_PARTNERS             9700
#define SCRIPT_ID_OFFSET_CONTESTS                      9800
#define SCRIPT_ID_OFFSET_UNUSED_0397                   9900
#define SCRIPT_ID_OFFSET_POKEDEX_RATINGS               9950
#define SCRIPT_ID_OFFSET_FIELD_MOVES                   10000
#define SCRIPT_ID_OFFSET_TV_BROADCAST                  10100
#define SCRIPT_ID_OFFSET_TV_REPORTER_INTERVIEWS        10150
#define SCRIPT_ID_OFFSET_MYSTERY_GIFT_DELIVERYMAN      10200
#define SCRIPT_ID_OFFSET_COUNTERPART_TALK              10300
#define SCRIPT_ID_OFFSET_POKEMON_CENTER_DAILY_TRAINERS 10400
#define SCRIPT_ID_OFFSET_BATTLE_FRONTIER_RECORDS       10450
#define SCRIPT_ID_OFFSET_SCRATCH_OFF_CARDS             10490

// clang-format off
#define SCRIPT_RANGE_TABLE(Entry) \
    Entry(SCRIPT_ID_OFFSET_SCRATCH_OFF_CARDS,              scripts_scratch_off_cards,              TEXT_BANK_SCRATCH_OFF_CARDS) \
    Entry(SCRIPT_ID_OFFSET_BATTLE_FRONTIER_RECORDS,        scripts_battle_frontier_records,        TEXT_BANK_BATTLE_FRONTIER_RECORDS) \
    Entry(SCRIPT_ID_OFFSET_POKEMON_CENTER_DAILY_TRAINERS,  scripts_pokemon_center_daily_trainers,  TEXT_BANK_POKEMON_CENTER_DAILY_TRAINERS) \
    Entry(SCRIPT_ID_OFFSET_COUNTERPART_TALK,               scripts_counterpart_talk,               TEXT_BANK_COUNTERPART_TALK) \
    Entry(SCRIPT_ID_OFFSET_MYSTERY_GIFT_DELIVERYMAN,       scripts_mystery_gift_deliveryman,       TEXT_BANK_MYSTERY_GIFT_DELIVERYMAN) \
    Entry(SCRIPT_ID_OFFSET_TV_REPORTER_INTERVIEWS,         scripts_tv_reporter_interviews,         TEXT_BANK_TV_REPORTER_INTERVIEWS) \
    Entry(SCRIPT_ID_OFFSET_TV_BROADCAST,                   scripts_tv_broadcast,                   TEXT_BANK_TV_PROGRAMS) \
    Entry(SCRIPT_ID_OFFSET_FIELD_MOVES,                    scripts_field_moves,                    TEXT_BANK_FIELD_MOVES) \
    Entry(SCRIPT_ID_OFFSET_POKEDEX_RATINGS,                scripts_pokedex_ratings,                TEXT_BANK_POKEDEX_RATINGS) \
    Entry(SCRIPT_ID_OFFSET_UNUSED_0397,                    scripts_unused_0397,                    TEXT_BANK_COMMON_STRINGS) \
    Entry(SCRIPT_ID_OFFSET_CONTESTS,                       scripts_contests,                       TEXT_BANK_CONTEST_COMMON) \
    Entry(SCRIPT_ID_OFFSET_FOLLOWER_PARTNERS,              scripts_follower_partners,              TEXT_BANK_FOLLOWER_PARTNERS) \
    Entry(SCRIPT_ID_OFFSET_INIT_NEW_GAME,                  scripts_init_new_game,                  TEXT_BANK_COMMON_STRINGS) \
    Entry(SCRIPT_ID_OFFSET_DAY_CARE_COMMON,                scripts_day_care_common,                TEXT_BANK_DAY_CARE_COMMON) \
    Entry(SCRIPT_ID_OFFSET_POFFIN_COMMON,                  scripts_poffin_common,                  TEXT_BANK_POFFIN_COMMON) \
    Entry(SCRIPT_ID_OFFSET_GROUP_CONNECTION,               scripts_group_connection,               TEXT_BANK_GROUP_CONNECTION) \
    Entry(SCRIPT_ID_OFFSET_POKEMON_CENTER_B1F_COMMON,      scripts_pokemon_center_b1f_common,      TEXT_BANK_POKEMON_CENTER_B1F_COMMON) \
    Entry(SCRIPT_ID_OFFSET_COMMUNICATION_CLUB,             scripts_communication_club,             TEXT_BANK_COMMUNICATION_CLUB) \
    Entry(SCRIPT_ID_OFFSET_POKEMON_CENTER_2F_COMMON,       scripts_pokemon_center_2f_common,       TEXT_BANK_POKEMON_CENTER_2F_COMMON) \
    Entry(SCRIPT_ID_OFFSET_POKE_RADAR,                     scripts_poke_radar,                     TEXT_BANK_BAG) \
    Entry(SCRIPT_ID_OFFSET_VS_SEEKER,                      scripts_vs_seeker,                      TEXT_BANK_VS_SEEKER) \
    Entry(SCRIPT_ID_OFFSET_RECORD_CHATOT_CRY,              scripts_record_chatot_cry,              TEXT_BANK_RECORD_CHATOT_CRY) \
    Entry(SCRIPT_ID_OFFSET_SAFARI_GAME,                    scripts_safari_game,                    TEXT_BANK_SAFARI_GAME) \
    Entry(SCRIPT_ID_OFFSET_HIDDEN_ITEMS,                   scripts_hidden_items,                   TEXT_BANK_HIDDEN_ITEMS) \
    Entry(SCRIPT_ID_OFFSET_VISIBLE_ITEMS,                  scripts_visible_items,                  TEXT_BANK_VISIBLE_ITEMS) \
    Entry(SCRIPT_ID_OFFSET_DOUBLE_BATTLES,                 scripts_battles,                        TEXT_BANK_COMMON_STRINGS) \
    Entry(SCRIPT_ID_OFFSET_SINGLE_BATTLES,                 scripts_battles,                        TEXT_BANK_COMMON_STRINGS) \
    Entry(SCRIPT_ID_OFFSET_BERRY_TREE_INTERACTIONS,        scripts_berry_tree_interaction,         TEXT_BANK_BERRY_TREES) \
    Entry(SCRIPT_ID_OFFSET_BG_EVENTS,                      scripts_bg_events,                      TEXT_BANK_BG_EVENTS) \
    Entry(SCRIPT_ID_OFFSET_COMMON_SCRIPTS,                 scripts_common,                         TEXT_BANK_COMMON_STRINGS)
// clang-format on

#endif // POKEPLATINUM_CONSTANTS_FIELD_SCRIPT_RANGES_H
