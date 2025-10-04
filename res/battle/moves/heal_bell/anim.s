#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, heal_bell_spa
    PlaySoundEffectL SEQ_SE_DP_W234
    CreateEmitter 0, 0, 19
    CreateEmitter 0, 1, 19
    CreateEmitter 0, 2, 19
    BeginLoop 1
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 0, 8, BATTLE_COLOR_LIGHT_CYAN
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 8, 8
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER_PARTNER, 0, 1, BATTLE_COLOR_WHITE, 8, 8
    Delay 8
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 8, 0, BATTLE_COLOR_LIGHT_CYAN
    Delay 8
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 0, 8, BATTLE_COLOR_WHITE
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_LIGHT_CYAN, 8, 8
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER_PARTNER, 0, 1, BATTLE_COLOR_LIGHT_CYAN, 8, 8
    Delay 8
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 8, 0, BATTLE_COLOR_WHITE
    Delay 8
    EndLoop
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 0, 8, BATTLE_COLOR_WHITE
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 8, 8
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER_PARTNER, 0, 1, BATTLE_COLOR_WHITE, 8, 8
    Delay 8
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 8, 0, BATTLE_COLOR_WHITE
    Delay 8
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
