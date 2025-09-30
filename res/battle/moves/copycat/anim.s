#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, copycat_spa
    PlayPannedSoundEffect SEQ_SE_DP_SHUSHU, BATTLE_SOUND_PAN_RIGHT
    JumpIfContest L_1
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 1, 1, 1, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 1, 1, 1, 0, 0
    CreateEmitter 0, 3, 3
    Delay 35
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W383, BATTLE_SOUND_PAN_RIGHT, BATTLE_SOUND_PAN_LEFT, 4, 2
    Delay 10
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_DARK_YELLOW, 10, 10
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 1, 1, 1, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 1, 1, 1, 0, 0
    CreateEmitter 0, 3, 3
    Delay 35
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W383, BATTLE_SOUND_PAN_RIGHT, BATTLE_SOUND_PAN_LEFT, 4, 2
    Delay 10
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_DARK_YELLOW, 10, 10
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
