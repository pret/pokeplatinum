#include "macros/btlanimcmd.inc"

L_0:
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    LoadParticleResource 0, curse_spa
    CreateEmitter 0, 1, 3
    BeginLoop 1
    PlaySoundEffectL SEQ_SE_DP_W185
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_RED, 10, 10
    Func_MoveBattlerX2 10, 10, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Delay 10
    Func_MoveBattlerX2 20, -20, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Delay 20
    Func_MoveBattlerX2 10, 10, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Delay 10
    EndLoop
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    LoadParticleResource 0, curse_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    PlayLoopedSoundEffectL SEQ_SE_DP_032, 12, 3
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 4, 3
    CreateEmitter 0, 0, 3
    Func_Shake 2, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
