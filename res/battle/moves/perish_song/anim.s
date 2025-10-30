#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, perish_song_spa
    CreateEmitter 0, 2, 0
    CreateEmitter 0, 3, 0
    CreateEmitter 0, 0, 0
    CreateEmitter 0, 1, 0
    PlaySoundEffectC SEQ_SE_DP_W195
    Delay 10
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 16, BATTLE_COLOR_BLACK
    Delay 15
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 1, 1, BATTLE_COLOR_GRAY, 16, 
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER_PARTNER, 1, 1, BATTLE_COLOR_GRAY, 16, 
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 1, 1, BATTLE_COLOR_GRAY, 16, 
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER_PARTNER, 1, 1, BATTLE_COLOR_GRAY, 16, 
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 16, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
