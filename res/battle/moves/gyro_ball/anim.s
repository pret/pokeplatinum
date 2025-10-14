#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, gyro_ball_spa
    PlaySoundEffectL SEQ_SE_DP_W360
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 1, 2, 0, 0, 0
    Delay 40
    PlaySoundEffectR SEQ_SE_DP_W360C
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 16, -8, 2
    WaitForAnimTasks
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -16, 8, 2
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
