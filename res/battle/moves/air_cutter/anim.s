#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, air_cutter_spa
    CreateEmitter 0, 0, 20
    CreateEmitter 0, 1, 20
    Delay 10
    PlayLoopedSoundEffect SEQ_SE_DP_W104, 0, 2, 6
    Delay 5
    Func_Shake 0, 2, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_Shake 0, 2, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER
    PlayPannedSoundEffect SEQ_SE_DP_W015, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
