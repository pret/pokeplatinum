#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, rock_climb_spa
    PlaySoundEffectL SEQ_SE_DP_W088
    BeginLoop 3
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 0, 8, 4
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 1, 0, -3440, 0
    Delay 4
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 0, -8, 4
    Delay 4
    EndLoop
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -16, 8, 4
    PlaySoundEffectL SEQ_SE_DP_W036
    WaitForAnimTasks
    Delay 10
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 32, -16, 4
    WaitForAnimTasks
    PlaySoundEffectR SEQ_SE_DP_W085
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    Func_Shake 4, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -16, 8, 4
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
