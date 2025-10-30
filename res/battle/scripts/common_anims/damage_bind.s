#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 50
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    BeginLoop 2
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 70, 100, 100, 100, 1, 327685
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W020B, BATTLE_SOUND_PAN_LEFT
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
