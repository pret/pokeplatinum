#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, payback_spa
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 1, 0, 0, 0
    PlayLoopedSoundEffectL SEQ_SE_DP_W185, 4, 6
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 1, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 2, 1, 0, 0, 0
    CreateEmitter 0, 3, 4
    Delay 35
    PlaySoundEffectL SEQ_SE_DP_182
    Delay 40
    PlayLoopedSoundEffectR SEQ_SE_DP_030, 3, 4
    Func_Shake 2, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
