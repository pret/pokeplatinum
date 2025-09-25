#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, bone_club_spa
    PlayPannedSoundEffect SEQ_SE_DP_W155, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    PlayPannedSoundEffect SEQ_SE_DP_W233B, BATTLE_SOUND_PAN_RIGHT
    PlayDelayedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT, 4
    Delay 3
    Func_Shake 1, 0, 1, 2, 264
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
