#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, ancient_power_spa
    JumpIfContest L_1
    PlaySoundEffectL SEQ_SE_DP_W082
    CreateEmitter 0, 1, 3
    Delay 10
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 1, 1, 0, 0
    Delay 20
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_050, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 20
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    PlaySoundEffectR SEQ_SE_DP_W120
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    PlaySoundEffectL SEQ_SE_DP_W082
    CreateEmitter 0, 1, 3
    Delay 10
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 1, 3, 2, 0
    BtlAnimCmd_055 1, 1, -120, -41, 0
    Delay 20
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_050, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 20
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    PlaySoundEffectR SEQ_SE_DP_W120
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
