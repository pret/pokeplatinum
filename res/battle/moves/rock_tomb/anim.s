#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, rock_tomb_spa
    LoadParticleResource 1, rock_tomb_spa
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    Delay 10
    PlayLoopedSoundEffectR SEQ_SE_DP_W070, 4, 4
    Delay 20
    SetCameraProjection 1, 0
    JumpIfBattlerSide BATTLER_ROLE_DEFENDER, L_1, L_2
    End

L_1:
    CreateEmitter 1, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 5, 0, 0, 0
    SetExtraParams 1, -6000, 0, 3000
    PlaySoundEffectR SEQ_SE_DP_W063
    Delay 5
    Func_ShakeBg 0, 5, 0, 5, 0
    CreateEmitter 1, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 5, 0, 0, 0
    SetExtraParams 1, 4000, 0, 3000
    PlaySoundEffectR SEQ_SE_DP_W063
    Delay 5
    Func_ShakeBg 0, 5, 0, 5, 0
    CreateEmitter 1, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 5, 0, 0, 0
    SetExtraParams 1, 1000, 1000, -4000
    PlaySoundEffectR SEQ_SE_DP_W063
    Delay 5
    Func_ShakeBg 0, 5, 0, 5, 0
    CreateEmitter 1, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 5, 0, 0, 0
    SetExtraParams 1, -1000, -1000, 4000
    Func_ShakeBg 0, 5, 0, 5, 0
    PlaySoundEffectR SEQ_SE_DP_W063
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    End

L_2:
    CreateEmitter 1, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 5, 0, 0, 0
    SetExtraParams 1, -6000, -3000, 3000
    PlaySoundEffectR SEQ_SE_DP_W063
    Delay 5
    Func_ShakeBg 0, 5, 0, 5, 0
    CreateEmitter 1, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 5, 0, 0, 0
    SetExtraParams 1, 4000, -3000, 3000
    PlaySoundEffectR SEQ_SE_DP_W063
    Delay 5
    Func_ShakeBg 0, 5, 0, 5, 0
    CreateEmitter 1, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 5, 0, 0, 0
    SetExtraParams 1, 1000, 1000, -4000
    PlaySoundEffectR SEQ_SE_DP_W063
    Delay 5
    Func_ShakeBg 0, 5, 0, 5, 0
    CreateEmitter 1, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 5, 0, 0, 0
    SetExtraParams 1, -1000, -3000, 4000
    Func_ShakeBg 0, 5, 0, 5, 0
    PlaySoundEffectR SEQ_SE_DP_W063
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    End
