#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, snore_spa
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    Func_ShakeBg 5, 0, 0, 8, 0
    Func_Shake 2, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlayLoopedSoundEffect SEQ_SE_DP_W173B, BATTLE_SOUND_PAN_LEFT, 20, 2
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
