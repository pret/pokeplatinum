#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 470
    PlayPannedSoundEffect SEQ_SE_DP_W029, BATTLE_SOUND_PAN_LEFT
    CallFunc 57, 4, 2, -14, 8, 258
    WaitForAnimTasks
    CallFunc 57, 4, 2, 28, -16, 258
    WaitForAnimTasks
    CallFunc 40, 2, 2, 1
    PlayPannedSoundEffect SEQ_SE_DP_W291, BATTLE_SOUND_PAN_LEFT
    CreateEmitterEx 0, 0, 3, 3
    CallFunc 65, 8, 0, 0, 0, 0, 8, 64, 0, 131075
    CreateEmitterEx 0, 1, 4, 3
    CallFunc 65, 8, 1, 0, 0, 0, 8, 64, 0, 131075
    CreateEmitterEx 0, 2, 5, 3
    CallFunc 65, 8, 2, 0, 0, 0, 8, 64, 0, 131075
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_W291, 0
    CreateEmitterEx 0, 3, 3, 3
    CallFunc 65, 8, 3, 0, 0, 0, 8, 64, 0, 327686
    CreateEmitterEx 0, 4, 4, 3
    CallFunc 65, 8, 4, 0, 0, 0, 8, 64, 0, 327686
    CreateEmitterEx 0, 5, 5, 3
    CallFunc 65, 8, 5, 0, 0, 0, 8, 64, 0, 327686
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_W291, BATTLE_SOUND_PAN_RIGHT
    CreateEmitterEx 0, 6, 3, 3
    CallFunc 65, 8, 6, 0, 0, 0, 8, 64, 0, 458760
    CreateEmitterEx 0, 7, 4, 3
    CallFunc 65, 8, 7, 0, 0, 0, 8, 64, 0, 458760
    CreateEmitterEx 0, 8, 5, 3
    CallFunc 65, 8, 8, 0, 0, 0, 8, 64, 0, 458760
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CallFunc 36, 5, 2, 0, 1, 4, 264
    CallFunc 57, 4, 2, -14, 8, 258
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    CallFunc 40, 2, 2, 0
    End
