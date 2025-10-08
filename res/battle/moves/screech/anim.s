#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, screech_spa
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    PlaySoundEffectL SEQ_SE_DP_020
    Delay 15
    BeginLoop 1
    Func_MoveBattlerX2 8, 8, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Delay 8
    Func_MoveBattlerX2 16, -16, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Delay 16
    Func_MoveBattlerX2 8, 8, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Delay 8
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
