#ifndef POKEPLATINUM_CONSTANTS_BATTLE_ANIM_H
#define POKEPLATINUM_CONSTANTS_BATTLE_ANIM_H
// clang-format off

#define BATTLE_ANIM_VAR_BG_MOVE_STEP_X  0 //< Step size for background movement in X direction (BATTLE_BG_SWITCH_FLAG_MOVE)
#define BATTLE_ANIM_VAR_BG_MOVE_STEP_Y  1 //< Step size for background movement in Y direction (BATTLE_BG_SWITCH_FLAG_MOVE)
#define BATTLE_ANIM_VAR_BG_MOVE_START_X 2 //< Starting position for background movement on X axis (BATTLE_BG_SWITCH_FLAG_MOVE)
#define BATTLE_ANIM_VAR_BG_MOVE_START_Y 3 //< Starting position for background movement on Y axis (BATTLE_BG_SWITCH_FLAG_MOVE)
#define BATTLE_ANIM_VAR_BG_FADE_TYPE    4 //< See BATTLE_BG_FADE_TO_*
#define BATTLE_ANIM_VAR_BG_BLEND_TYPE   5 //< See BATTLE_BG_BLEND_*
#define BATTLE_ANIM_VAR_BG_ANIM_MODE    6 //< See BATTLE_BG_ANIM_REVERSE_*
#define BATTLE_ANIM_VAR_BG_SCREEN_MODE  7 //< See BATTLE_BG_SCREEN_REVERSE_*

#define BATTLE_BG_FADE_TO_BLACK         0
#define BATTLE_BG_FADE_TO_WHITE         1

#define BATTLE_BG_BLEND_FULL_B_TO_A     0
#define BATTLE_BG_BLEND_PARTIAL         1
#define BATTLE_BG_BLEND_INVERSE_PARTIAL 2

#define BATTLE_BG_SWITCH_FLAGS_SHIFT    16

#define BATTLE_BG_SWITCH_MODE(VAR)      (((VAR) & 0x0000FFFF))
#define BATTLE_BG_SWITCH_FLAGS(VAR)     (((VAR) & 0xFFFF0000) >> BATTLE_BG_SWITCH_FLAGS_SHIFT)

#define BATTLE_BG_SWITCH_FLAG_NONE      (0x00 << BATTLE_BG_SWITCH_FLAGS_SHIFT)
#define BATTLE_BG_SWITCH_FLAG_MOVE      (0x02 << BATTLE_BG_SWITCH_FLAGS_SHIFT)
#define BATTLE_BG_SWITCH_FLAG_STOP      (0x04 << BATTLE_BG_SWITCH_FLAGS_SHIFT)
#define BATTLE_BG_SWITCH_FLAG_CANCEL    (0x08 << BATTLE_BG_SWITCH_FLAGS_SHIFT)
#define BATTLE_BG_SWITCH_FLAG_UNK_10    (0x10 << BATTLE_BG_SWITCH_FLAGS_SHIFT)
#define BATTLE_BG_SWITCH_FLAG_UNK_20    (0x20 << BATTLE_BG_SWITCH_FLAGS_SHIFT)
#define BATTLE_BG_SWITCH_FLAG_UNK_40    (0x40 << BATTLE_BG_SWITCH_FLAGS_SHIFT)

#define BATTLE_BG_SWITCH_MODE_BLEND     0 //< Switch BG by blending between normal and effect BG
#define BATTLE_BG_SWITCH_MODE_FADE      1 //< Switch BG by fading to black/white and then to effect BG
#define BATTLE_BG_SWITCH_MODE_FLAGS     2 //< Don't switch BG, apply flags only
#define BATTLE_BG_SWITCH_MODE_COUNT     3

#define BATTLE_BG_SWITCH_STATE_NONE     0 //< No switch in progress
#define BATTLE_BG_SWITCH_STATE_RUNNING  1 //< Switch in progress
#define BATTLE_BG_SWITCH_STATE_PARTIAL  2 //< Faded to black/white. Note: Use only with BATTLE_BG_SWITCH_MODE_FADE

#define BATTLE_BG_ID_UNUSED             0
#define BATTLE_BG_ID_WINDOW             1
#define BATTLE_BG_ID_BASE               2
#define BATTLE_BG_ID_EFFECT             3

#define BATTLE_BG_PRIORITY_WINDOW       0
#define BATTLE_BG_PRIORITY_BASE         1
#define BATTLE_BG_PRIORITY_EFFECT       3

#define BATTLE_BG_PALETTE_EFFECT        (1 << 9)

#define BATTLE_BG_ANIM_REVERSE_NEVER        0 //< Don't reverse BG anims
#define BATTLE_BG_ANIM_REVERSE_ENEMY_ONLY   1 //< Reverse BG anims only for enemy attacking player
#define BATTLE_BG_ANIM_REVERSE_DEFAULT      2 //< Reverse BG anims for enemy attacking player OR enemy attacking enemy

#define BATTLE_BG_SCREEN_REVERSE_NEVER      0 //< Don't reverse BG screen
#define BATTLE_BG_SCREEN_REVERSE_ENEMY_ONLY 1 //< Reverse BG screen only for enemy attacking player
#define BATTLE_BG_SCREEN_REVERSE_DEFAULT    2 //< Reverse BG screen for enemy attacking player OR enemy attacking enemy

// clang-format on
#endif // POKEPLATINUM_CONSTANTS_BATTLE_ANIM_H
