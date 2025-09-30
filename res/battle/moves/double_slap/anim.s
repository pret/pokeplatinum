#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, double_slap_spa
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    PlayPannedSoundEffect SEQ_SE_DP_030C, BATTLE_SOUND_PAN_RIGHT
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Delay 15
    PlayPannedSoundEffect SEQ_SE_DP_030C, BATTLE_SOUND_PAN_RIGHT
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
