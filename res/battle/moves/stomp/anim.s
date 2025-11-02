#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, stomp_spa
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    Delay 5
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_DEFENDER, 100, 130, 100, 70, 100, HOLD_F(20) | CYCLES(1), SCALE_F(4) | RESTORE_F(4)
    PlaySoundEffectR SEQ_SE_DP_W036
    PlayDelayedSoundEffectR SEQ_SE_DP_030, 5
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
