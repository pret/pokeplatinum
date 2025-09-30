#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, iron_head_spa
    PlaySoundEffectL SEQ_SE_DP_W029
    PlaySoundEffectR SEQ_SE_DP_030
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 14, -8, 2
    WaitForAnimTasks
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    Delay 5
    PlaySoundEffectR SEQ_SE_DP_W088
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -14, 8, 2
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
