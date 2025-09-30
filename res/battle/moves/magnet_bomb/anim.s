#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, magnet_bomb_spa
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    PlayPannedSoundEffect SEQ_SE_DP_290, BATTLE_SOUND_PAN_RIGHT
    Delay 20
    PlayPannedSoundEffect SEQ_SE_DP_W443B, BATTLE_SOUND_PAN_RIGHT
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W443B, BATTLE_SOUND_PAN_RIGHT
    Delay 3
    PlayPannedSoundEffect SEQ_SE_DP_W443B, BATTLE_SOUND_PAN_RIGHT
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W443B, BATTLE_SOUND_PAN_RIGHT
    Delay 3
    PlayPannedSoundEffect SEQ_SE_DP_W443B, BATTLE_SOUND_PAN_RIGHT
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_W443B, BATTLE_SOUND_PAN_RIGHT
    Delay 2
    PlayPannedSoundEffect SEQ_SE_DP_W443B, BATTLE_SOUND_PAN_RIGHT
    Delay 3
    Func_Shake 2, 0, 1, 8, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlayDelayedSoundEffect SEQ_SE_DP_161, BATTLE_SOUND_PAN_RIGHT, 5
    PlayDelayedSoundEffect SEQ_SE_DP_161, BATTLE_SOUND_PAN_RIGHT, 15
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
