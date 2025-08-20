#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 384
    JumpIfFriendlyFire L_1
    PlayDelayedSoundEffect SEQ_SE_DP_081, BATTLE_SOUND_PAN_LEFT, 1
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    Delay 5
    Func_FadeBattlerSprite 2, 0, 1, 13311, 10, 0
    PlayPannedSoundEffect SEQ_SE_DP_W367, BATTLE_SOUND_PAN_LEFT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    PlayDelayedSoundEffect SEQ_SE_DP_081, BATTLE_SOUND_PAN_LEFT, 1
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    Delay 5
    Func_FadeBattlerSprite 8, 0, 1, 13311, 10, 0
    PlayPannedSoundEffect SEQ_SE_DP_W367, BATTLE_SOUND_PAN_LEFT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
