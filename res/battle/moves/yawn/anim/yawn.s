#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 298
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W281, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CallFunc 42, 8, 258, 100, 80, 100, 160, 100, 1, 327695
    Delay 5
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    Delay 20
    PlayLoopedSoundEffect SEQ_SE_DP_W255, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 1, 4
    CallFunc 42, 8, 264, 100, 80, 100, 160, 100, 1, 327695
    Delay 20
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
