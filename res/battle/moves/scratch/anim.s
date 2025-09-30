#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, scratch_spa
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlayPannedSoundEffect SEQ_SE_DP_W010, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
