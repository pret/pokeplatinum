#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, bounce_spa
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 3, 3
    Delay 8
    PlaySoundEffectL SEQ_SE_DP_W100
    Func_HideBattler BATTLE_ANIM_ATTACKER, TRUE
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    CreateEmitter 0, 2, 4
    Delay 10
    PlaySoundEffectR SEQ_SE_DP_W029
    Delay 10
    PlaySoundEffectR SEQ_SE_DP_143
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_HideBattler BATTLE_ANIM_ATTACKER, FALSE
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
