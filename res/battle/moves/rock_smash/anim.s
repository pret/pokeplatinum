#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, rock_smash_spa
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_W233B
    Delay 5
    PlaySoundEffectR SEQ_SE_DP_W088
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
