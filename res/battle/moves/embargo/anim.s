#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, embargo_spa
    PlaySoundEffectR SEQ_SE_DP_W373
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_BLACK, 10, 20
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
