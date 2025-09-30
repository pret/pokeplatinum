#include "macros/btlanimcmd.inc"

.data

L_0:
    JumpIfBattlerSide 0, L_1, L_2
    End

L_1:
    LoadParticleResource 0, rollout_spa
    Func_MoveBattler 258, -14, 8, 2
    WaitForAnimTasks
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    Func_MoveBattler 258, 14, -8, 2
    CreateEmitter 0, 2, 4
    PlayLoopedSoundEffect SEQ_SE_DP_W025B, 0, 2, 6
    Delay 20
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlayPannedSoundEffect SEQ_SE_DP_W070, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    LoadParticleResource 0, rollout_spa
    Func_MoveBattler 258, -14, 8, 2
    WaitForAnimTasks
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    Func_MoveBattler 258, 14, -8, 2
    CreateEmitter 0, 2, 4
    PlayLoopedSoundEffect SEQ_SE_DP_W025B, 0, 2, 6
    Delay 20
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlayPannedSoundEffect SEQ_SE_DP_W070, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
