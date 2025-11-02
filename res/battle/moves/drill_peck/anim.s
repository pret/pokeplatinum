#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, peck_spa
    PlaySoundEffectL SEQ_SE_DP_W029
    Func_DrillPeck
    Delay 18
    Func_Shake 2, 0, 1, 12, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 0, 4128, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 0, 4128, 0
    PlaySoundEffectR SEQ_SE_DP_W030
    Delay 2
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 4128, 4128, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 4128, 4128, 0
    PlaySoundEffectR SEQ_SE_DP_W030
    Delay 2
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 4128, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 4128, 0, 0
    PlaySoundEffectR SEQ_SE_DP_W030
    Delay 2
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 4128, -4128, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 4128, -4128, 0
    PlaySoundEffectR SEQ_SE_DP_W030
    Delay 2
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 0, -4128, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 0, -4128, 0
    PlaySoundEffectR SEQ_SE_DP_W030
    Delay 2
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, -4128, -4128, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, -4128, -4128, 0
    PlaySoundEffectR SEQ_SE_DP_W030
    Delay 2
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, -4128, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, -4128, 0, 0
    PlaySoundEffectR SEQ_SE_DP_W030
    Delay 2
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, -4128, 4128, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, -4128, 4128, 0
    PlaySoundEffectR SEQ_SE_DP_W030
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
