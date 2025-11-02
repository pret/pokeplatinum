#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, last_resort_spa
    PlaySoundEffectR SEQ_SE_DP_W387
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Delay 30
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
