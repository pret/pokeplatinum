#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, rock_smash_spa
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    Func_Shake 2, 0, 1, 2, 264
    PlayPannedSoundEffect SEQ_SE_DP_W233B, BATTLE_SOUND_PAN_RIGHT
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_W088, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
