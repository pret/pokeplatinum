#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, horn_drill_spa
    JumpIfContest L_1
    Func_MoveBattler 258, 14, -8, 2
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_RIGHT
    PlayDelayedSoundEffect SEQ_SE_DP_145, BATTLE_SOUND_PAN_RIGHT, 5
    JumpIfBattlerSide 0, L_2, L_3
    End

L_1:
    Func_MoveBattler 258, 14, -8, 2
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W030, BATTLE_SOUND_PAN_RIGHT
    PlayDelayedSoundEffect SEQ_SE_DP_145, BATTLE_SOUND_PAN_RIGHT, 5
    CreateEmitter 0, 5, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 8, 4
    Func_Shake 1, 0, 1, 12, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_MoveBattler 258, -14, 8, 2
    WaitForAnimTasks
    End

L_2:
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 6, 4
    Func_Shake 1, 0, 1, 12, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_MoveBattler 258, -14, 8, 2
    WaitForAnimTasks
    End

L_3:
    CreateEmitter 0, 4, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 7, 4
    Func_Shake 1, 0, 1, 12, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_MoveBattler 258, -14, 8, 2
    WaitForAnimTasks
    End
