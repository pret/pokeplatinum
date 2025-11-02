#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, hypnosis_spa
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 16, 10, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 16, 10, 0, 0
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W048, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 30
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 4, 4
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_PURPLE, 8, 0
    PlaySoundEffectR SEQ_SE_DP_154
    PlayDelayedSoundEffectR SEQ_SE_DP_W173B, 15
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
