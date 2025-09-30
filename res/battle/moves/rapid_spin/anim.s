#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, rapid_spin_spa
    PlayPannedSoundEffect SEQ_SE_DP_207, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 0, 4
    Func_Shake 2, 0, 1, 8, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlayLoopedSoundEffect SEQ_SE_DP_143, BATTLE_SOUND_PAN_RIGHT, 6, 3
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
