#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, rock_throw_spa
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    Delay 12
    PlaySoundEffectR SEQ_SE_DP_W088
    Delay 8
    PlaySoundEffectR SEQ_SE_DP_W070
    Func_Shake 0, 1, 1, 8, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
