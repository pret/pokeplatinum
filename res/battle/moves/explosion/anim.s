#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, explosion_spa
    PlaySoundEffectL SEQ_SE_DP_SHUSHU
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 1, 3
    Delay 40
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 0, 15, BATTLE_COLOR_WHITE
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 15, 20
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER_PARTNER, 0, 1, BATTLE_COLOR_WHITE, 15, 20
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_WHITE, 15, 20
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER_PARTNER, 0, 1, BATTLE_COLOR_WHITE, 15, 20
    Delay 1
    PlaySoundEffectC SEQ_SE_DP_186
    Delay 14
    PlayLoopedSoundEffectL SEQ_SE_DP_W436, 3, 4
    Func_Shake 4, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITES | BATTLE_ANIM_ALL_BATTLERS
    Delay 15
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 15, 0, BATTLE_COLOR_WHITE
    Func_ShakeBg 8, 8, 0, 8, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
