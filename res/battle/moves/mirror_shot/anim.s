#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, mirror_shot_spa
    PlaySoundEffectL SEQ_SE_DP_146
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 1, 2, 0, 0, 0
    Delay 50
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_146, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    Delay 5
    Func_Shake 2, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
