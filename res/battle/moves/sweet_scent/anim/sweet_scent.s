#include "macros/btlanimcmd.inc"

.data

L_0:
    JumpIfBattlerSide 0, L_1, L_2
    End

L_1:
    LoadParticleResource 0, sweet_scent_spa
    PlayPannedSoundEffect SEQ_SE_DP_W230, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 3, 0, 0, 0
    BtlAnimCmd_055 4, 1, -2000, 8000, 0
    CreateEmitter 0, 2, 0
    CreateEmitter 0, 4, 4
    Func_FadeBattlerSprite 8, 0, 2, 23199, 12
    Func_FadeBattlerSprite 16, 0, 2, 23199, 12
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    LoadParticleResource 0, sweet_scent_spa
    PlayPannedSoundEffect SEQ_SE_DP_W230, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 3, 0, 0, 0
    BtlAnimCmd_055 4, 1, -2000, 8000, 0
    CreateEmitter 0, 3, 0
    CreateEmitter 0, 4, 4
    Func_FadeBattlerSprite 8, 0, 2, 23199, 12
    Func_FadeBattlerSprite 16, 0, 2, 23199, 12
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
