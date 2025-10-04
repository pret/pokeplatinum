#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, flatter_spa
    PlaySoundEffectC SEQ_SE_DP_W227B
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    JumpIfBattlerSide BATTLER_ROLE_ATTACKER, L_1, L_2
    End

L_1:
    Delay 15
    BeginLoop 2
    PlaySoundEffectR SEQ_SE_DP_001
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_DEFENDER, 0, 8, 4
    Delay 4
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_DEFENDER, 0, -8, 4
    Delay 4
    EndLoop
    Delay 30
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    Delay 15
    BeginLoop 2
    PlaySoundEffectR SEQ_SE_DP_001
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_DEFENDER, 0, -8, 4
    Delay 4
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_DEFENDER, 0, 8, 4
    Delay 4
    EndLoop
    Delay 30
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
