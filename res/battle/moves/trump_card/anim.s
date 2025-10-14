#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, trump_card_spa
    PlaySoundEffectR SEQ_SE_DP_W376
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    Delay 43
    PlaySoundEffectR SEQ_SE_DP_W013
    Delay 3
    PlaySoundEffectR SEQ_SE_DP_W376B
    Delay 4
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
