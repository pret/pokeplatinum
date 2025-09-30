#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, attack_order_spa
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    PlayLoopedSoundEffect SEQ_SE_DP_W456, BATTLE_SOUND_PAN_RIGHT, 6, 8
    Delay 28
    PlayPannedSoundEffect SEQ_SE_DP_W109, BATTLE_SOUND_PAN_RIGHT
    Delay 3
    PlayDelayedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT, 20
    PlayDelayedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT, 24
    Func_Shake 2, 0, 1, 16, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
