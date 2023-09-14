#ifndef POKEPLATINUM_CONSTANTS_ITEMS_H
#define POKEPLATINUM_CONSTANTS_ITEMS_H

enum {
    POCKET_ITEMS,
    POCKET_MEDICINE,
    POCKET_BALLS,
    POCKET_TMHMS,
    POCKET_BERRIES,
    POCKET_MAIL,
    POCKET_BATTLE_ITEMS,
    POCKET_KEY_ITEMS,
    
    POCKET_MAX,
};

enum {
    BATTLE_POCKET_RECOVER_HP,
    BATTLE_POCKET_RECOVER_STATUS,
    BATTLE_POCKET_POKE_BALLS,
    BATTLE_POCKET_BATTLE_ITEMS,

    BATTLE_POCKET_MAX,
};

enum {
    ITEM_TYPE_FULL_RESTORE,
    ITEM_TYPE_RECOVER_HP,
    ITEM_TYPE_RECOVER_STATUS,
    ITEM_TYPE_STAT_BOOSTER,
    ITEM_TYPE_GUARD_SPEC,

    ITEM_TYPE_MAX
};

#define ITEM_RECOVER_CONFUSION  (1 << 0)
#define ITEM_RECOVER_PARALYSIS  (1 << 1)
#define ITEM_RECOVER_FREEZE     (1 << 2)
#define ITEM_RECOVER_BURN       (1 << 3)
#define ITEM_RECOVER_POISON     (1 << 4)
#define ITEM_RECOVER_SLEEP      (1 << 5)
#define ITEM_RECOVER_FULL       (ITEM_RECOVER_SLEEP \
                                | ITEM_RECOVER_POISON \
                                | ITEM_RECOVER_BURN \
                                | ITEM_RECOVER_FREEZE \
                                | ITEM_RECOVER_PARALYSIS)

#define HOLD_EFFECT_NONE                    0
#define HOLD_EFFECT_HP_RESTORE              1
#define HOLD_EFFECT_GIRATINA_BOOST          2
#define HOLD_EFFECT_DIALGA_BOOST            3
#define HOLD_EFFECT_PALKIA_BOOST            4
#define HOLD_EFFECT_PRZ_RESTORE             5
#define HOLD_EFFECT_SLP_RESTORE             6
#define HOLD_EFFECT_PSN_RESTORE             7
#define HOLD_EFFECT_BRN_RESTORE             8
#define HOLD_EFFECT_FRZ_RESTORE             9
#define HOLD_EFFECT_PP_RESTORE             10
#define HOLD_EFFECT_CONFUSE_RESTORE        11
#define HOLD_EFFECT_STATUS_RESTORE         12
#define HOLD_EFFECT_HP_PCT_RESTORE         13
#define HOLD_EFFECT_HP_RESTORE_SPICY       14
#define HOLD_EFFECT_HP_RESTORE_DRY         15
#define HOLD_EFFECT_HP_RESTORE_SWEET       16
#define HOLD_EFFECT_HP_RESTORE_BITTER      17
#define HOLD_EFFECT_HP_RESTORE_SOUR        18
#define HOLD_EFFECT_WEAKEN_SE_FIRE         19
#define HOLD_EFFECT_WEAKEN_SE_WATER        20
#define HOLD_EFFECT_WEAKEN_SE_ELECTRIC     21
#define HOLD_EFFECT_WEAKEN_SE_GRASS        22
#define HOLD_EFFECT_WEAKEN_SE_ICE          23
#define HOLD_EFFECT_WEAKEN_SE_FIGHT        24
#define HOLD_EFFECT_WEAKEN_SE_POISON       25
#define HOLD_EFFECT_WEAKEN_SE_GROUND       26
#define HOLD_EFFECT_WEAKEN_SE_FLYING       27
#define HOLD_EFFECT_WEAKEN_SE_PSYCHIC      28
#define HOLD_EFFECT_WEAKEN_SE_BUG          29
#define HOLD_EFFECT_WEAKEN_SE_ROCK         30
#define HOLD_EFFECT_WEAKEN_SE_GHOST        31
#define HOLD_EFFECT_WEAKEN_SE_DRAGON       32
#define HOLD_EFFECT_WEAKEN_SE_DARK         33
#define HOLD_EFFECT_WEAKEN_SE_STEEL        34
#define HOLD_EFFECT_WEAKEN_NORMAL          35
#define HOLD_EFFECT_PINCH_ATK_UP           36
#define HOLD_EFFECT_PINCH_DEF_UP           37
#define HOLD_EFFECT_PINCH_SPEED_UP         38
#define HOLD_EFFECT_PINCH_SPATK_UP         39
#define HOLD_EFFECT_PINCH_SPDEF_UP         40
#define HOLD_EFFECT_PINCH_CRITRATE_UP      41
#define HOLD_EFFECT_PINCH_RANDOM_UP        42
#define HOLD_EFFECT_HP_RESTORE_SE          43
#define HOLD_EFFECT_PINCH_ACC_UP           44
#define HOLD_EFFECT_PINCH_PRIORITY         45
#define HOLD_EFFECT_RECOIL_PHYSICAL        46
#define HOLD_EFFECT_RECOIL_SPECIAL         47
#define HOLD_EFFECT_ACC_REDUCE             48
#define HOLD_EFFECT_STATDOWN_RESTORE       49
#define HOLD_EFFECT_EXP_UP_SPEED_DOWN      50
#define HOLD_EFFECT_EXP_SHARE              51
#define HOLD_EFFECT_SOMETIMES_PRIORITY     52
#define HOLD_EFFECT_FRIENDSHIP_UP          53
#define HOLD_EFFECT_HEAL_INFATUATION       54
#define HOLD_EFFECT_CHOICE_ATK             55
#define HOLD_EFFECT_CRIT_UP                56
#define HOLD_EFFECT_STRENGTHEN_BUG         57
#define HOLD_EFFECT_MONEY_UP               58
#define HOLD_EFFECT_ENCOUNTERS_DOWN        59
#define HOLD_EFFECT_LATI_SPECIAL           60
#define HOLD_EFFECT_CLAMPERL_SPATK         61
#define HOLD_EFFECT_CLAMPERL_SPDEF         62
#define HOLD_EFFECT_FLEE                   63
#define HOLD_EFFECT_NO_EVOLVE              64
#define HOLD_EFFECT_MAYBE_ENDURE           65
#define HOLD_EFFECT_EXP_UP                 66
#define HOLD_EFFECT_CRITRATE_UP            67
#define HOLD_EFFECT_STRENGTHEN_STEEL       68
#define HOLD_EFFECT_HP_RESTORE_GRADUAL     69
#define HOLD_EFFECT_EVOLVE_SEADRA          70
#define HOLD_EFFECT_PIKA_SPATK_UP          71
#define HOLD_EFFECT_STRENGTHEN_GROUND      72
#define HOLD_EFFECT_STRENGTHEN_ROCK        73
#define HOLD_EFFECT_STRENGTHEN_GRASS       74
#define HOLD_EFFECT_STRENGTHEN_DARK        75
#define HOLD_EFFECT_STRENGTHEN_FIGHT       76
#define HOLD_EFFECT_STRENGTHEN_ELECTRIC    77
#define HOLD_EFFECT_STRENGTHEN_WATER       78
#define HOLD_EFFECT_STRENGTHEN_FLYING      79
#define HOLD_EFFECT_STRENGTHEN_POISON      80
#define HOLD_EFFECT_STRENGTHEN_ICE         81
#define HOLD_EFFECT_STRENGTHEN_GHOST       82
#define HOLD_EFFECT_STRENGTHEN_PSYCHIC     83
#define HOLD_EFFECT_STRENGTHEN_FIRE        84
#define HOLD_EFFECT_STRENGTHEN_DRAGON      85
#define HOLD_EFFECT_STRENGTHEN_NORMAL      86
#define HOLD_EFFECT_EVOLVE_PORYGON         87
#define HOLD_EFFECT_HP_RESTORE_ON_DMG      88
#define HOLD_EFFECT_CHANSEY_CRITRATE_UP    89
#define HOLD_EFFECT_DITTO_DEF_UP           90
#define HOLD_EFFECT_CUBONE_ATK_UP          91
#define HOLD_EFFECT_FARFETCHD_CRITRATE_UP  92
#define HOLD_EFFECT_ACCURACY_UP            93
#define HOLD_EFFECT_POWER_UP_PHYS          94
#define HOLD_EFFECT_POWER_UP_SPEC          95
#define HOLD_EFFECT_POWER_UP_SE            96
#define HOLD_EFFECT_EXTEND_SCREENS         97
#define HOLD_EFFECT_HP_DRAIN_ON_ATK        98
#define HOLD_EFFECT_CHARGE_SKIP            99
#define HOLD_EFFECT_PSN_USER              100
#define HOLD_EFFECT_BRN_USER              101
#define HOLD_EFFECT_DITTO_SPEED_UP        102
#define HOLD_EFFECT_ENDURE                103
#define HOLD_EFFECT_CRITRATE_UP_SLOWER    104
#define HOLD_EFFECT_BOOST_REPEATED        105
#define HOLD_EFFECT_SPEED_DOWN_GROUNDED   106
#define HOLD_EFFECT_SPEED_DOWN            107
#define HOLD_EFFECT_RECIPROCATE_INFAT     108
#define HOLD_EFFECT_HP_RESTORE_PSN_TYPE   109
#define HOLD_EFFECT_EXTEND_HAIL           110
#define HOLD_EFFECT_EXTEND_SANDSTORM      111
#define HOLD_EFFECT_EXTEND_SUN            112
#define HOLD_EFFECT_EXTEND_RAIN           113
#define HOLD_EFFECT_EXTEND_TRAPPING       114
#define HOLD_EFFECT_CHOICE_SPEED          115
#define HOLD_EFFECT_DMG_USER_CONTACT_XFR  116
#define HOLD_EFFECT_LVLUP_ATK_EV_UP       117
#define HOLD_EFFECT_LVLUP_DEF_EV_UP       118
#define HOLD_EFFECT_LVLUP_SPATK_EV_UP     119
#define HOLD_EFFECT_LVLUP_SPDEF_EV_UP     120
#define HOLD_EFFECT_LVLUP_SPEED_EV_UP     121
#define HOLD_EFFECT_LVLUP_HP_EV_UP        122
#define HOLD_EFFECT_SWITCH                123
#define HOLD_EFFECT_LEECH_BOOST           124
#define HOLD_EFFECT_CHOICE_SPATK          125
#define HOLD_EFFECT_ARCEUS_FIRE           126
#define HOLD_EFFECT_ARCEUS_WATER          127
#define HOLD_EFFECT_ARCEUS_ELECTRIC       128
#define HOLD_EFFECT_ARCEUS_GRASS          129
#define HOLD_EFFECT_ARCEUS_ICE            130
#define HOLD_EFFECT_ARCEUS_FIGHT          131
#define HOLD_EFFECT_ARCEUS_POISON         132
#define HOLD_EFFECT_ARCEUS_GROUND         133
#define HOLD_EFFECT_ARCEUS_FLYING         134
#define HOLD_EFFECT_ARCEUS_PSYCHIC        135
#define HOLD_EFFECT_ARCEUS_BUG            136
#define HOLD_EFFECT_ARCEUS_ROCK           137
#define HOLD_EFFECT_ARCEUS_GHOST          138
#define HOLD_EFFECT_ARCEUS_DRAGON         139
#define HOLD_EFFECT_ARCEUS_DARK           140
#define HOLD_EFFECT_ARCEUS_STEEL          141
#define HOLD_EFFECT_EVOLVE_RHYDON         142
#define HOLD_EFFECT_EVOLVE_ELECTABUZZ     143
#define HOLD_EFFECT_EVOLVE_MAGMAR         144
#define HOLD_EFFECT_EVOLVE_PORYGON2       145
#define HOLD_EFFECT_EVOLVE_DUSCLOPS       146

#define ITEM_NONE                  0

// Balls
#define ITEM_MASTER_BALL           1
#define ITEM_ULTRA_BALL            2
#define ITEM_GREAT_BALL            3
#define ITEM_POKE_BALL             4
#define ITEM_SAFARI_BALL           5
#define ITEM_NET_BALL              6
#define ITEM_DIVE_BALL             7
#define ITEM_NEST_BALL             8
#define ITEM_REPEAT_BALL           9
#define ITEM_TIMER_BALL           10
#define ITEM_LUXURY_BALL          11
#define ITEM_PREMIER_BALL         12
#define ITEM_DUSK_BALL            13
#define ITEM_HEAL_BALL            14
#define ITEM_QUICK_BALL           15
#define ITEM_CHERISH_BALL         16

// Pokemon Items
#define ITEM_POTION               17
#define ITEM_ANTIDOTE             18
#define ITEM_BURN_HEAL            19
#define ITEM_ICE_HEAL             20
#define ITEM_AWAKENING            21
#define ITEM_PARLYZ_HEAL          22
#define ITEM_FULL_RESTORE         23
#define ITEM_MAX_POTION           24
#define ITEM_HYPER_POTION         25
#define ITEM_SUPER_POTION         26
#define ITEM_FULL_HEAL            27
#define ITEM_REVIVE               28
#define ITEM_MAX_REVIVE           29
#define ITEM_FRESH_WATER          30
#define ITEM_SODA_POP             31
#define ITEM_LEMONADE             32
#define ITEM_MOOMOO_MILK          33
#define ITEM_ENERGYPOWDER         34
#define ITEM_ENERGY_ROOT          35
#define ITEM_HEAL_POWDER          36
#define ITEM_REVIVAL_HERB         37
#define ITEM_ETHER                38
#define ITEM_MAX_ETHER            39
#define ITEM_ELIXIR               40
#define ITEM_MAX_ELIXIR           41
#define ITEM_LAVA_COOKIE          42
#define ITEM_BERRY_JUICE          43
#define ITEM_SACRED_ASH           44
#define ITEM_HP_UP                45
#define ITEM_PROTEIN              46
#define ITEM_IRON                 47
#define ITEM_CARBOS               48
#define ITEM_CALCIUM              49
#define ITEM_RARE_CANDY           50
#define ITEM_PP_UP                51
#define ITEM_ZINC                 52
#define ITEM_PP_MAX               53
#define ITEM_OLD_GATEAU           54
#define ITEM_GUARD_SPEC_          55
#define ITEM_DIRE_HIT             56
#define ITEM_X_ATTACK             57
#define ITEM_X_DEFENSE            58
#define ITEM_X_SPEED              59
#define ITEM_X_ACCURACY           60
#define ITEM_X_SPECIAL            61
#define ITEM_X_SP__DEF            62
#define ITEM_POKE_DOLL            63
#define ITEM_FLUFFY_TAIL          64
#define ITEM_BLUE_FLUTE           65
#define ITEM_YELLOW_FLUTE         66
#define ITEM_RED_FLUTE            67
#define ITEM_BLACK_FLUTE          68
#define ITEM_WHITE_FLUTE          69
#define ITEM_SHOAL_SALT           70
#define ITEM_SHOAL_SHELL          71
#define ITEM_RED_SHARD            72
#define ITEM_BLUE_SHARD           73
#define ITEM_YELLOW_SHARD         74
#define ITEM_GREEN_SHARD          75
#define ITEM_SUPER_REPEL          76
#define ITEM_MAX_REPEL            77
#define ITEM_ESCAPE_ROPE          78
#define ITEM_REPEL                79
#define ITEM_SUN_STONE            80
#define ITEM_MOON_STONE           81
#define ITEM_FIRE_STONE           82
#define ITEM_THUNDERSTONE         83
#define ITEM_WATER_STONE          84
#define ITEM_LEAF_STONE           85

// Unusable
#define ITEM_TINYMUSHROOM         86
#define ITEM_BIG_MUSHROOM         87
#define ITEM_PEARL                88
#define ITEM_BIG_PEARL            89
#define ITEM_STARDUST             90
#define ITEM_STAR_PIECE           91
#define ITEM_NUGGET               92
#define ITEM_HEART_SCALE          93
#define ITEM_HONEY                94
#define ITEM_GROWTH_MULCH         95
#define ITEM_DAMP_MULCH           96
#define ITEM_STABLE_MULCH         97
#define ITEM_GOOEY_MULCH          98
#define ITEM_ROOT_FOSSIL          99
#define ITEM_CLAW_FOSSIL         100
#define ITEM_HELIX_FOSSIL        101
#define ITEM_DOME_FOSSIL         102
#define ITEM_OLD_AMBER           103
#define ITEM_ARMOR_FOSSIL        104
#define ITEM_SKULL_FOSSIL        105
#define ITEM_RARE_BONE           106
#define ITEM_SHINY_STONE         107
#define ITEM_DUSK_STONE          108
#define ITEM_DAWN_STONE          109
#define ITEM_OVAL_STONE          110
#define ITEM_ODD_KEYSTONE        111
#define ITEM_GRISEOUS_ORB        112

// Unused
#define ITEM_UNUSED_113          113
#define ITEM_UNUSED_114          114
#define ITEM_UNUSED_115          115
#define ITEM_UNUSED_116          116
#define ITEM_UNUSED_117          117
#define ITEM_UNUSED_118          118
#define ITEM_UNUSED_119          119
#define ITEM_UNUSED_120          120
#define ITEM_UNUSED_121          121
#define ITEM_UNUSED_122          122
#define ITEM_UNUSED_123          123
#define ITEM_UNUSED_124          124
#define ITEM_UNUSED_125          125
#define ITEM_UNUSED_126          126
#define ITEM_UNUSED_127          127
#define ITEM_UNUSED_128          128
#define ITEM_UNUSED_129          129
#define ITEM_UNUSED_130          130
#define ITEM_UNUSED_131          131
#define ITEM_UNUSED_132          132
#define ITEM_UNUSED_133          133
#define ITEM_UNUSED_134          134

#define ITEM_ADAMANT_ORB         135
#define ITEM_LUSTROUS_ORB        136

// Mails
#define ITEM_GRASS_MAIL          137
#define ITEM_FLAME_MAIL          138
#define ITEM_BUBBLE_MAIL         139
#define ITEM_BLOOM_MAIL          140
#define ITEM_TUNNEL_MAIL         141
#define ITEM_STEEL_MAIL          142
#define ITEM_HEART_MAIL          143
#define ITEM_SNOW_MAIL           144
#define ITEM_SPACE_MAIL          145
#define ITEM_AIR_MAIL            146
#define ITEM_MOSAIC_MAIL         147
#define ITEM_BRICK_MAIL          148

#define FIRST_MAIL_IDX ITEM_GRASS_MAIL
#define LAST_MAIL_IDX ITEM_BRICK_MAIL
#define NUM_MAILS (LAST_MAIL_IDX - FIRST_MAIL_IDX + 1)

// Berries
#define ITEM_CHERI_BERRY         149
#define ITEM_CHESTO_BERRY        150
#define ITEM_PECHA_BERRY         151
#define ITEM_RAWST_BERRY         152
#define ITEM_ASPEAR_BERRY        153
#define ITEM_LEPPA_BERRY         154
#define ITEM_ORAN_BERRY          155
#define ITEM_PERSIM_BERRY        156
#define ITEM_LUM_BERRY           157
#define ITEM_SITRUS_BERRY        158
#define ITEM_FIGY_BERRY          159
#define ITEM_WIKI_BERRY          160
#define ITEM_MAGO_BERRY          161
#define ITEM_AGUAV_BERRY         162
#define ITEM_IAPAPA_BERRY        163
#define ITEM_RAZZ_BERRY          164
#define ITEM_BLUK_BERRY          165
#define ITEM_NANAB_BERRY         166
#define ITEM_WEPEAR_BERRY        167
#define ITEM_PINAP_BERRY         168
#define ITEM_POMEG_BERRY         169
#define ITEM_KELPSY_BERRY        170
#define ITEM_QUALOT_BERRY        171
#define ITEM_HONDEW_BERRY        172
#define ITEM_GREPA_BERRY         173
#define ITEM_TAMATO_BERRY        174
#define ITEM_CORNN_BERRY         175
#define ITEM_MAGOST_BERRY        176
#define ITEM_RABUTA_BERRY        177
#define ITEM_NOMEL_BERRY         178
#define ITEM_SPELON_BERRY        179
#define ITEM_PAMTRE_BERRY        180
#define ITEM_WATMEL_BERRY        181
#define ITEM_DURIN_BERRY         182
#define ITEM_BELUE_BERRY         183
#define ITEM_OCCA_BERRY          184
#define ITEM_PASSHO_BERRY        185
#define ITEM_WACAN_BERRY         186
#define ITEM_RINDO_BERRY         187
#define ITEM_YACHE_BERRY         188
#define ITEM_CHOPLE_BERRY        189
#define ITEM_KEBIA_BERRY         190
#define ITEM_SHUCA_BERRY         191
#define ITEM_COBA_BERRY          192
#define ITEM_PAYAPA_BERRY        193
#define ITEM_TANGA_BERRY         194
#define ITEM_CHARTI_BERRY        195
#define ITEM_KASIB_BERRY         196
#define ITEM_HABAN_BERRY         197
#define ITEM_COLBUR_BERRY        198
#define ITEM_BABIRI_BERRY        199
#define ITEM_CHILAN_BERRY        200
#define ITEM_LIECHI_BERRY        201
#define ITEM_GANLON_BERRY        202
#define ITEM_SALAC_BERRY         203
#define ITEM_PETAYA_BERRY        204
#define ITEM_APICOT_BERRY        205
#define ITEM_LANSAT_BERRY        206
#define ITEM_STARF_BERRY         207
#define ITEM_ENIGMA_BERRY        208
#define ITEM_MICLE_BERRY         209
#define ITEM_CUSTAP_BERRY        210
#define ITEM_JABOCA_BERRY        211
#define ITEM_ROWAP_BERRY         212

#define FIRST_BERRY_IDX ITEM_CHERI_BERRY
#define LAST_BERRY_IDX ITEM_ROWAP_BERRY
#define NUM_BERRIES (LAST_BERRY_IDX - FIRST_BERRY_IDX + 1)

// Battle Held items
#define ITEM_BRIGHTPOWDER        213
#define ITEM_WHITE_HERB          214
#define ITEM_MACHO_BRACE         215
#define ITEM_EXP_SHARE           216
#define ITEM_QUICK_CLAW          217
#define ITEM_SOOTHE_BELL         218
#define ITEM_MENTAL_HERB         219
#define ITEM_CHOICE_BAND         220
#define ITEM_KINGS_ROCK          221
#define ITEM_SILVERPOWDER        222
#define ITEM_AMULET_COIN         223
#define ITEM_CLEANSE_TAG         224
#define ITEM_SOUL_DEW            225
#define ITEM_DEEPSEATOOTH        226
#define ITEM_DEEPSEASCALE        227
#define ITEM_SMOKE_BALL          228
#define ITEM_EVERSTONE           229
#define ITEM_FOCUS_BAND          230
#define ITEM_LUCKY_EGG           231
#define ITEM_SCOPE_LENS          232
#define ITEM_METAL_COAT          233
#define ITEM_LEFTOVERS           234
#define ITEM_DRAGON_SCALE        235
#define ITEM_LIGHT_BALL          236
#define ITEM_SOFT_SAND           237
#define ITEM_HARD_STONE          238
#define ITEM_MIRACLE_SEED        239
#define ITEM_BLACKGLASSES        240
#define ITEM_BLACK_BELT          241
#define ITEM_MAGNET              242
#define ITEM_MYSTIC_WATER        243
#define ITEM_SHARP_BEAK          244
#define ITEM_POISON_BARB         245
#define ITEM_NEVERMELTICE        246
#define ITEM_SPELL_TAG           247
#define ITEM_TWISTEDSPOON        248
#define ITEM_CHARCOAL            249
#define ITEM_DRAGON_FANG         250
#define ITEM_SILK_SCARF          251
#define ITEM_UPGRADE             252
#define ITEM_SHELL_BELL          253
#define ITEM_SEA_INCENSE         254
#define ITEM_LAX_INCENSE         255
#define ITEM_LUCKY_PUNCH         256
#define ITEM_METAL_POWDER        257
#define ITEM_THICK_CLUB          258
#define ITEM_STICK               259

// Contest held items
#define ITEM_RED_SCARF           260
#define ITEM_BLUE_SCARF          261
#define ITEM_PINK_SCARF          262
#define ITEM_GREEN_SCARF         263
#define ITEM_YELLOW_SCARF        264

// New battle held items
#define ITEM_WIDE_LENS           265
#define ITEM_MUSCLE_BAND         266
#define ITEM_WISE_GLASSES        267
#define ITEM_EXPERT_BELT         268
#define ITEM_LIGHT_CLAY          269
#define ITEM_LIFE_ORB            270
#define ITEM_POWER_HERB          271
#define ITEM_TOXIC_ORB           272
#define ITEM_FLAME_ORB           273
#define ITEM_QUICK_POWDER        274
#define ITEM_FOCUS_SASH          275
#define ITEM_ZOOM_LENS           276
#define ITEM_METRONOME           277
#define ITEM_IRON_BALL           278
#define ITEM_LAGGING_TAIL        279
#define ITEM_DESTINY_KNOT        280
#define ITEM_BLACK_SLUDGE        281
#define ITEM_ICY_ROCK            282
#define ITEM_SMOOTH_ROCK         283
#define ITEM_HEAT_ROCK           284
#define ITEM_DAMP_ROCK           285
#define ITEM_GRIP_CLAW           286
#define ITEM_CHOICE_SCARF        287
#define ITEM_STICKY_BARB         288
#define ITEM_POWER_BRACER        289
#define ITEM_POWER_BELT          290
#define ITEM_POWER_LENS          291
#define ITEM_POWER_BAND          292
#define ITEM_POWER_ANKLET        293
#define ITEM_POWER_WEIGHT        294
#define ITEM_SHED_SHELL          295
#define ITEM_BIG_ROOT            296
#define ITEM_CHOICE_SPECS        297

// Arceus plates
#define ITEM_FLAME_PLATE         298
#define ITEM_SPLASH_PLATE        299
#define ITEM_ZAP_PLATE           300
#define ITEM_MEADOW_PLATE        301
#define ITEM_ICICLE_PLATE        302
#define ITEM_FIST_PLATE          303
#define ITEM_TOXIC_PLATE         304
#define ITEM_EARTH_PLATE         305
#define ITEM_SKY_PLATE           306
#define ITEM_MIND_PLATE          307
#define ITEM_INSECT_PLATE        308
#define ITEM_STONE_PLATE         309
#define ITEM_SPOOKY_PLATE        310
#define ITEM_DRACO_PLATE         311
#define ITEM_DREAD_PLATE         312
#define ITEM_IRON_PLATE          313

// Incenses
#define ITEM_ODD_INCENSE         314
#define ITEM_ROCK_INCENSE        315
#define ITEM_FULL_INCENSE        316
#define ITEM_WAVE_INCENSE        317
#define ITEM_ROSE_INCENSE        318
#define ITEM_LUCK_INCENSE        319
#define ITEM_PURE_INCENSE        320

// Evolution held items
#define ITEM_PROTECTOR           321
#define ITEM_ELECTIRIZER         322
#define ITEM_MAGMARIZER          323
#define ITEM_DUBIOUS_DISC        324
#define ITEM_REAPER_CLOTH        325
#define ITEM_RAZOR_CLAW          326
#define ITEM_RAZOR_FANG          327

// TMs/HMs
#define ITEM_TM01                328
#define ITEM_TM02                329
#define ITEM_TM03                330
#define ITEM_TM04                331
#define ITEM_TM05                332
#define ITEM_TM06                333
#define ITEM_TM07                334
#define ITEM_TM08                335
#define ITEM_TM09                336
#define ITEM_TM10                337
#define ITEM_TM11                338
#define ITEM_TM12                339
#define ITEM_TM13                340
#define ITEM_TM14                341
#define ITEM_TM15                342
#define ITEM_TM16                343
#define ITEM_TM17                344
#define ITEM_TM18                345
#define ITEM_TM19                346
#define ITEM_TM20                347
#define ITEM_TM21                348
#define ITEM_TM22                349
#define ITEM_TM23                350
#define ITEM_TM24                351
#define ITEM_TM25                352
#define ITEM_TM26                353
#define ITEM_TM27                354
#define ITEM_TM28                355
#define ITEM_TM29                356
#define ITEM_TM30                357
#define ITEM_TM31                358
#define ITEM_TM32                359
#define ITEM_TM33                360
#define ITEM_TM34                361
#define ITEM_TM35                362
#define ITEM_TM36                363
#define ITEM_TM37                364
#define ITEM_TM38                365
#define ITEM_TM39                366
#define ITEM_TM40                367
#define ITEM_TM41                368
#define ITEM_TM42                369
#define ITEM_TM43                370
#define ITEM_TM44                371
#define ITEM_TM45                372
#define ITEM_TM46                373
#define ITEM_TM47                374
#define ITEM_TM48                375
#define ITEM_TM49                376
#define ITEM_TM50                377
#define ITEM_TM51                378
#define ITEM_TM52                379
#define ITEM_TM53                380
#define ITEM_TM54                381
#define ITEM_TM55                382
#define ITEM_TM56                383
#define ITEM_TM57                384
#define ITEM_TM58                385
#define ITEM_TM59                386
#define ITEM_TM60                387
#define ITEM_TM61                388
#define ITEM_TM62                389
#define ITEM_TM63                390
#define ITEM_TM64                391
#define ITEM_TM65                392
#define ITEM_TM66                393
#define ITEM_TM67                394
#define ITEM_TM68                395
#define ITEM_TM69                396
#define ITEM_TM70                397
#define ITEM_TM71                398
#define ITEM_TM72                399
#define ITEM_TM73                400
#define ITEM_TM74                401
#define ITEM_TM75                402
#define ITEM_TM76                403
#define ITEM_TM77                404
#define ITEM_TM78                405
#define ITEM_TM79                406
#define ITEM_TM80                407
#define ITEM_TM81                408
#define ITEM_TM82                409
#define ITEM_TM83                410
#define ITEM_TM84                411
#define ITEM_TM85                412
#define ITEM_TM86                413
#define ITEM_TM87                414
#define ITEM_TM88                415
#define ITEM_TM89                416
#define ITEM_TM90                417
#define ITEM_TM91                418
#define ITEM_TM92                419
#define ITEM_HM01                420
#define ITEM_HM02                421
#define ITEM_HM03                422
#define ITEM_HM04                423
#define ITEM_HM05                424
#define ITEM_HM06                425
#define ITEM_HM07                426
#define ITEM_HM08                427

// Key Items
#define ITEM_EXPLORER_KIT        428
#define ITEM_LOOT_SACK           429
#define ITEM_RULE_BOOK           430
#define ITEM_POKE_RADAR          431
#define ITEM_POINT_CARD          432
#define ITEM_JOURNAL             433
#define ITEM_SEAL_CASE           434
#define ITEM_FASHION_CASE        435
#define ITEM_SEAL_BAG            436
#define ITEM_PAL_PAD             437
#define ITEM_WORKS_KEY           438
#define ITEM_OLD_CHARM           439
#define ITEM_GALACTIC_KEY        440
#define ITEM_RED_CHAIN           441
#define ITEM_TOWN_MAP            442
#define ITEM_VS_SEEKER           443
#define ITEM_COIN_CASE           444
#define ITEM_OLD_ROD             445
#define ITEM_GOOD_ROD            446
#define ITEM_SUPER_ROD           447
#define ITEM_SPRAYDUCK           448
#define ITEM_POFFIN_CASE         449
#define ITEM_BICYCLE             450
#define ITEM_SUITE_KEY           451
#define ITEM_OAKS_LETTER         452
#define ITEM_LUNAR_WING          453
#define ITEM_MEMBER_CARD         454
#define ITEM_AZURE_FLUTE         455
#define ITEM_S_S_TICKET          456
#define ITEM_CONTEST_PASS        457
#define ITEM_MAGMA_STONE         458
#define ITEM_PARCEL              459
#define ITEM_COUPON_1            460
#define ITEM_COUPON_2            461
#define ITEM_COUPON_3            462
#define ITEM_STORAGE_KEY         463
#define ITEM_SECRETPOTION        464

// New to Platinum
#define ITEM_VS_RECORDER         465
#define ITEM_GRACIDEA            466
#define ITEM_SECRET_KEY          467

#define NUM_ITEMS                ITEM_SECRET_KEY
#define MAX_ITEMS                (NUM_ITEMS + 1)

#define ITEM_RETURN_ID           0xFFFF

#endif // POKEPLATINUM_CONSTANTS_ITEMS_H