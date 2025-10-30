#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, rock_slide_spa
    CreateEmitter 0, 0, 20
    CreateEmitter 0, 1, 20
    CreateEmitter 0, 2, 20
    Delay 10
    PlayLoopedSoundEffectR SEQ_SE_DP_W088, 1, 20
    Delay 5
    Func_Shake 2, 0, 1, 10, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_Shake 2, 0, 1, 10, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
