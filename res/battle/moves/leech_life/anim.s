#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, leech_life_spa
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_HURU, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 0, 2, 1, 1, 0, 0
    Delay 8
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 2, 1, 16, 0
    BtlAnimCmd_055 2, 0, 0, 0, 0
    PlaySoundEffectR SEQ_SE_DP_W071
    Delay 10
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W080B, BATTLE_SOUND_PAN_RIGHT, BATTLE_SOUND_PAN_LEFT, 4, 2
    CreateEmitter 0, 2, 3
    Delay 75
    PlaySoundEffectL SEQ_SE_DP_W071B
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 10, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
