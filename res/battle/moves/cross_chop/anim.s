#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, cross_chop_spa
    PlayPannedSoundEffect SEQ_SE_DP_W025, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 4, 4
    Delay 10
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 5, 4
    Delay 55
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlayPannedSoundEffect SEQ_SE_DP_W013, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
