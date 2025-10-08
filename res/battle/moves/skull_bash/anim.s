#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, skull_bash_spa
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    BeginLoop 2
    PlaySoundEffectL SEQ_SE_DP_W036
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -24, 0, 4
    WaitForAnimTasks
    Func_RotateMon DEG_TO_IDX(360), DEG_TO_IDX(375), 10, 1, 0, 64
    WaitForAnimTasks
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 24, 0, 4
    WaitForAnimTasks
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    PlaySoundEffectL SEQ_SE_DP_W036
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -24, 0, 4
    WaitForAnimTasks
    Func_RotateMon DEG_TO_IDX(360), DEG_TO_IDX(375), 10, 1
    WaitForAnimTasks
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 38, -8, 4
    WaitForAnimTasks
    PlaySoundEffectR SEQ_SE_DP_W025B
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    Func_Shake 6, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -14, 8, 2
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
