#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, night_slash_spa
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 0, 0, 0, 0, 0
    PlaySoundEffectC SEQ_SE_DP_BRADE
    PlayDelayedSoundEffectC SEQ_SE_DP_W233, 10
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    Delay 11
    CreateEmitter 0, 4, 4
    CreateEmitter 0, 0, 4
    Func_Shake 1, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Delay 10
    PlaySoundEffectC SEQ_SE_DP_BRADE
    PlayDelayedSoundEffectC SEQ_SE_DP_W233, 10
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    Delay 8
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 4, 4
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
