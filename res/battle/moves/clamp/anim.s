#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, clamp_spa
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    PlayPannedSoundEffect SEQ_SE_DP_050, BATTLE_SOUND_PAN_RIGHT
    Delay 10
    CreateEmitter 0, 2, 4
    PlayPannedSoundEffect SEQ_SE_DP_W011, BATTLE_SOUND_PAN_RIGHT
    PlayDelayedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT, 13
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
