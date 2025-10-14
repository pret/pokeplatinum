#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, steel_wing_spa
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 6, 1, 0, 0
    CreateEmitter 0, 2, 4
    Delay 15
    PlaySoundEffectL SEQ_SE_DP_W231
    Delay 15
    PlaySoundEffectL SEQ_SE_DP_W231
    Delay 5
    PlaySoundEffectC SEQ_SE_DP_W017
    Delay 5
    PlaySoundEffectC SEQ_SE_DP_W017
    Delay 5
    PlaySoundEffectR SEQ_SE_DP_W017
    Delay 5
    PlaySoundEffectR SEQ_SE_DP_W017
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
