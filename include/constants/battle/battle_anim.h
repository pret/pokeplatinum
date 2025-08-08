#ifndef POKEPLATINUM_CONSTANTS_BATTLE_ANIM_H
#define POKEPLATINUM_CONSTANTS_BATTLE_ANIM_H

#include "constants/battle.h"

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

#define BATTLE_BG_PALETTE_EFFECT          9
#define BATTLE_BG_PALETTE_MON_SPRITE      8
#define BATTLE_BG_PALETTE_FLAG_EFFECT     (1 << BATTLE_BG_PALETTE_EFFECT)
#define BATTLE_BG_PALETTE_FLAG_MON_SPRITE (1 << BATTLE_BG_PALETTE_MON_SPRITE)

#define BATTLE_BG_ANIM_REVERSE_NEVER        0 //< Don't reverse BG anims
#define BATTLE_BG_ANIM_REVERSE_ENEMY_ONLY   1 //< Reverse BG anims only for enemy attacking player
#define BATTLE_BG_ANIM_REVERSE_DEFAULT      2 //< Reverse BG anims for enemy attacking player OR enemy attacking enemy

#define BATTLE_BG_SCREEN_REVERSE_NEVER      0 //< Don't reverse BG screen
#define BATTLE_BG_SCREEN_REVERSE_ENEMY_ONLY 1 //< Reverse BG screen only for enemy attacking player
#define BATTLE_BG_SCREEN_REVERSE_DEFAULT    2 //< Reverse BG screen for enemy attacking player OR enemy attacking enemy

#define BATTLE_ANIM_HW_SPRITE_PRIORITY     100
#define BATTLE_ANIM_HW_SPRITE_EXP_PRIORITY 1

#define BATTLE_ANIM_ATTACKER         (1 << 1) //< Attacker
#define BATTLE_ANIM_ATTACKER_PARTNER (1 << 2) //< Attacker's partner
#define BATTLE_ANIM_DEFENDER         (1 << 3) //< Defender
#define BATTLE_ANIM_DEFENDER_PARTNER (1 << 4) //< Defender's partner
#define BATTLE_ANIM_POKEMON_SPRITE_0 (1 << 1) //< First Pokemon sprite
#define BATTLE_ANIM_POKEMON_SPRITE_1 (1 << 2) //< Second Pokemon sprite
#define BATTLE_ANIM_POKEMON_SPRITE_2 (1 << 3) //< Third Pokemon sprite
#define BATTLE_ANIM_POKEMON_SPRITE_3 (1 << 4) //< Fourth Pokemon sprite
#define BATTLE_ANIM_NOT_ATTACKER     (1 << 5) //< All battlers except attacker
#define BATTLE_ANIM_ALL_BATTLERS     (1 << 6) //< All battlers
#define BATTLE_ANIM_ATTACKER_SIDE    (BATTLE_ANIM_ATTACKER | BATTLE_ANIM_ATTACKER_PARTNER) //< Attacker and its partner
#define BATTLE_ANIM_DEFENDER_SIDE    (BATTLE_ANIM_DEFENDER | BATTLE_ANIM_DEFENDER_PARTNER) //< Defender and its partner
#define BATTLE_ANIM_BOTH_SIDES       (BATTLE_ANIM_ATTACKER_SIDE | BATTLE_ANIM_DEFENDER_SIDE) //< Both sides of the battle
#define BATTLE_ANIM_BATTLER_SPRITES  (1 << 8) //< Use battler sprites
#define BATTLE_ANIM_POKEMON_SPRITES  (1 << 9) //< Use Pokemon sprites
#define BATTLE_ANIM_BACKGROUND       (1 << 10) //< Use background
#define BATTLE_ANIM_SPECIFIC_BATTLER (1 << 11) //< Specific battler slot, do not use by itself

#define BATTLE_ANIM_BATTLER_PLAYER_1 (BATTLE_ANIM_SPECIFIC_BATTLER | BATTLE_ANIM_ATTACKER) //< Player's first battler
#define BATTLE_ANIM_BATTLER_PLAYER_2 (BATTLE_ANIM_SPECIFIC_BATTLER | BATTLE_ANIM_ATTACKER_PARTNER) //< Player's second battler
#define BATTLE_ANIM_BATTLER_ENEMY_1  (BATTLE_ANIM_SPECIFIC_BATTLER | BATTLE_ANIM_DEFENDER) //< Enemy's first battler
#define BATTLE_ANIM_BATTLER_ENEMY_2  (BATTLE_ANIM_SPECIFIC_BATTLER | BATTLE_ANIM_DEFENDER_PARTNER) //< Enemy's second battler

#define BATTLE_ANIM_BATTLER_SPRITE_ATTACKER (BATTLE_ANIM_ATTACKER | BATTLE_ANIM_BATTLER_SPRITES) //< Attacker's battler sprite
#define BATTLE_ANIM_BATTLER_SPRITE_ATTACKER_PARTNER (BATTLE_ANIM_ATTACKER_PARTNER | BATTLE_ANIM_BATTLER_SPRITES) //< Attacker's partner's battler sprite
#define BATTLE_ANIM_BATTLER_SPRITE_DEFENDER (BATTLE_ANIM_DEFENDER | BATTLE_ANIM_BATTLER_SPRITES) //< Defender's battler sprite
#define BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER (BATTLE_ANIM_DEFENDER_PARTNER | BATTLE_ANIM_BATTLER_SPRITES) //< Defender's partner's battler sprite

#define BATTLE_ANIM_POKEMON_SPRITE(N) ((1 << (N + 1)) | BATTLE_ANIM_POKEMON_SPRITES) //< Pokemon sprite N, where N is 0-3
#define BATTLE_ANIM_BATTLER_SPRITE(N) ((1 << (N + 1)) | BATTLE_ANIM_BATTLER_SPRITES) //< Battler sprite N, where N is 0-3

#define BATTLE_ANIM_MON_SPRITE_0 0
#define BATTLE_ANIM_MON_SPRITE_1 1
#define BATTLE_ANIM_MON_SPRITE_2 2
#define BATTLE_ANIM_MON_SPRITE_3 3
#define BATTLE_ANIM_MON_SPRITE_4 4
#define BATTLE_ANIM_MON_SPRITE_F(N) (1 << (N))

#define BATTLE_PARTICLE_PIXEL_FACTOR 172 //< Arbitrary scaling factor to convert particle world coordinates to screen coordinates
#define BATTLE_PARTICLE_WORLD_TO_SCREEN(X) ((X) / BATTLE_PARTICLE_PIXEL_FACTOR)
#define BATTLE_PARTICLE_SCREEN_TO_WORLD(X) ((X) * BATTLE_PARTICLE_PIXEL_FACTOR)
#define BATTLE_PARTICLE_VIEWPORT_TOP 16512 //< Top of the viewport in world coordinates

// Default positions for battler sprites, lines up with BATTLER_TYPE_*
#define BATTLER_POS_SOLO_PLAYER_X   64
#define BATTLER_POS_SOLO_PLAYER_Y   112
#define BATTLER_POS_SOLO_ENEMY_X    192
#define BATTLER_POS_SOLO_ENEMY_Y    48
#define BATTLER_POS_PLAYER_SLOT_1_X 40
#define BATTLER_POS_PLAYER_SLOT_1_Y 112
#define BATTLER_POS_ENEMY_SLOT_1_X  216
#define BATTLER_POS_ENEMY_SLOT_1_Y  50
#define BATTLER_POS_PLAYER_SLOT_2_X 80
#define BATTLER_POS_PLAYER_SLOT_2_Y 120
#define BATTLER_POS_ENEMY_SLOT_2_X  176
#define BATTLER_POS_ENEMY_SLOT_2_Y  42

// Default positions for contest sprites
#define CONTESTANT_POS_PLAYER_X 216
#define CONTESTANT_POS_PLAYER_Y 112
#define CONTESTANT_POS_ENEMY_X  80
#define CONTESTANT_POS_ENEMY_Y  42

#define CONTESTANT_TYPE_PLAYER (BATTLER_TYPE_MAX + BATTLER_TYPE_SOLO_PLAYER)
#define CONTESTANT_TYPE_ENEMY  (BATTLER_TYPE_MAX + BATTLER_TYPE_SOLO_ENEMY)

#define BASE_SCALE_XY 100

// Script function specific constants
#define FLAIL_MODE_ATTACKER 0
#define FLAIL_MODE_DEFENDER 1

#define FADE_BG_TYPE_BASE       0
#define FADE_BG_TYPE_MON_SPRITE 1
#define FADE_BG_TYPE_EFFECT     2

#define SCALE_POKEMON_SPRITE_FRAMES(scaleFrames, restoreFrames) (((scaleFrames & 0xFFFF) << 16) | (restoreFrames & 0xFFFF))
#define SCALE_POKEMON_SPRITE_SCALE_FRAMES(frames) ((frames) >> 16)
#define SCALE_POKEMON_SPRITE_RESTORE_FRAMES(frames) ((frames) & 0xFFFF)

#define SCALE_BATTLER_SPRITE_FRAMES(scaleFrames, restoreFrames) SCALE_POKEMON_SPRITE_FRAMES(scaleFrames, restoreFrames)
#define SCALE_BATTLER_SPRITE_HOLD_CYCLES(delay, cycles) (((delay & 0xFFFF) << 16) | (cycles & 0xFFFF))
#define SCALE_BATTLER_SPRITE_HOLD(frames) ((frames) >> 16)
#define SCALE_BATTLER_SPRITE_CYCLES(frames) ((frames) & 0xFFFF)

#define EMITTER_ANIMATION_MODE_ATK_TO_DEF 0 //< Animation from attacker to defender
#define EMITTER_ANIMATION_MODE_DEF_TO_ATK 1 //< Animation from defender to attacker
#define EMITTER_ANIMATION_DEFAULT_FRAMES 0xFF
#define EMITTER_ANIMATION_PARAMS(skipFrames, maxFrames) (((skipFrames & 0xFFFF) << 16) | (maxFrames & 0xFFFF))
#define EMITTER_ANIMATION_SKIP_FRAMES(params) ((params & 0xFFFF0000) >> 16)
#define EMITTER_ANIMATION_MAX_FRAMES(params) ((params) & 0x0000FFFF)

#define SHAKE_BG_TARGET_EFFECT 0 //< Shake the effect background
#define SHAKE_BG_TARGET_BASE   1 //< Shake the base background

#define EMITTER_REVOLUTION_MODE_ATTACKER 0
#define EMITTER_REVOLUTION_MODE_DEFENDER 1

#define EMITTER_ANIMATION_FROM_TOP 0 //< Animation from the top of the screen
#define EMITTER_ANIMATION_TO_TOP   1 //< Animation to the top of the screen

#define BATTLE_ANIM_DEFAULT_PRIORITY 0xFF //< Default priority for battle anim sprites

#define POKEMON_SPRITE_PRIORITY_MODE_DEFAULT   0
#define POKEMON_SPRITE_PRIORITY_MODE_DARK_VOID 0xFF

#define MOVE_BATTLER_OFF_SCREEN 0
#define MOVE_BATTLER_ON_SCREEN  1

#define STAT_CHANGE_MODE_ATTACKER 0
#define STAT_CHANGE_MODE_DEFENDER 1

// clang-format on
#endif // POKEPLATINUM_CONSTANTS_BATTLE_ANIM_H
