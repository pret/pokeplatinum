#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, feint_spa
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    PlayLoopedSoundEffect SEQ_SE_DP_W104, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 30
    PlayPannedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT
    Delay 5
    Func_Shake 2, 0, 1, 4, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
