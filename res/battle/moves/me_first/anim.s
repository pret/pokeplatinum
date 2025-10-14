#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, me_first_spa
    PlaySoundEffectR SEQ_SE_DP_SHUSHU
    JumpIfContest L_1
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 1, 1, 1, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 1, 1, 1, 0, 0
    CreateEmitter 0, 3, 3
    Delay 35
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W179, BATTLE_SOUND_PAN_RIGHT, BATTLE_SOUND_PAN_LEFT, 4, 2
    Delay 10
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_TEAL_GREEN, 10, 10
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 1, 1, 1, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 1, 1, 1, 0, 0
    CreateEmitter 0, 3, 3
    Delay 35
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W179, BATTLE_SOUND_PAN_RIGHT, BATTLE_SOUND_PAN_LEFT, 4, 2
    Delay 10
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_TEAL_GREEN, 10, 10
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
