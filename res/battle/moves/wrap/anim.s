#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, wrap_spa
    BeginLoop 2
    PlayLoopedSoundEffectR SEQ_SE_DP_W020B, 4, 2
    CreateEmitter 0, 0, 4
    Func_RevolveBattler BATTLE_ANIM_ATTACKER, 1, 12
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_DEFENDER, 100, 70, 100, 100, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    WaitForAnimTasks
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
