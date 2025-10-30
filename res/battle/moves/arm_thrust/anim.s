#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, arm_thrust_spa
    JumpIfBattlerSide BATTLER_ROLE_ATTACKER, L_1, L_2
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    CreateEmitter 0, 1, 4
    Delay 5
    PlayDelayedSoundEffectR SEQ_SE_DP_030, 3
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 0, 4
    Delay 10
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    End

L_2:
    CreateEmitter 0, 2, 4
    Delay 5
    PlayDelayedSoundEffectR SEQ_SE_DP_030, 3
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 0, 4
    Delay 10
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    End
