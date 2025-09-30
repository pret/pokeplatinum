#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, screech_spa
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    PlayPannedSoundEffect SEQ_SE_DP_020, BATTLE_SOUND_PAN_LEFT
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
