#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, stone_edge_spa
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    PlayLoopedSoundEffect SEQ_SE_DP_W088, BATTLE_SOUND_PAN_RIGHT, 2, 4
    Delay 25
    Func_Shake 2, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlayPannedSoundEffect SEQ_SE_DP_W082, BATTLE_SOUND_PAN_RIGHT
    PlayLoopedSoundEffect SEQ_SE_DP_W088, BATTLE_SOUND_PAN_RIGHT, 6, 3
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
