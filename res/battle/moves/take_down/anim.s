#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, take_down_spa
    PlaySoundEffectL SEQ_SE_DP_W029
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -16, 8, 4
    WaitForAnimTasks
    Delay 15
    PlaySoundEffectR SEQ_SE_DP_140
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 32, -16, 4
    WaitForAnimTasks
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 2, 4
    Func_Shake 4, 0, 1, 4, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -16, 8, 4
    WaitForAnimTasks
    End
