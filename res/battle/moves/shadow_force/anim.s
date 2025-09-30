#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, shadow_force_spa
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    PlayPannedSoundEffect SEQ_SE_DP_W467, BATTLE_SOUND_PAN_LEFT
    Func_BlinkAttacker 5, 0
    Delay 2
    Func_SetBgGrayscale 1
    WaitForAnimTasks
    Func_HideBattler BATTLE_ANIM_ATTACKER, TRUE
    Delay 15
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_SetBgGrayscale 0
    WaitForAnimTasks
    End

L_2:
    Func_SetBgGrayscale 1
    PlayPannedSoundEffect SEQ_SE_DP_186, BATTLE_SOUND_PAN_RIGHT
    WaitForAnimTasks
    Delay 20
    PlayPannedSoundEffect SEQ_SE_DP_W007, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    Func_Shake 4, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Delay 5
    PlayDelayedSoundEffect SEQ_SE_DP_W109, BATTLE_SOUND_PAN_RIGHT, 8
    PlayDelayedSoundEffect SEQ_SE_DP_W109, BATTLE_SOUND_PAN_RIGHT, 13
    Func_BlinkAttacker 5, 0
    WaitForAnimTasks
    Func_HideBattler BATTLE_ANIM_ATTACKER, FALSE
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_SetBgGrayscale 0
    WaitForAnimTasks
    End
