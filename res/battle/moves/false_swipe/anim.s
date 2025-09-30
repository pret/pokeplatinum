#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, false_swipe_spa
    PlayPannedSoundEffect SEQ_SE_DP_W104, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Delay 3
    PlayPannedSoundEffect SEQ_SE_DP_BRADE, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
