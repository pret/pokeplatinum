#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, rock_blast_spa
    JumpIfContest L_1
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 6, 1, 0, 0
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W207, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 8
    CreateEmitter 0, 2, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_W088
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 1, 1, 0, 0
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W207, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 8
    CreateEmitter 0, 2, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_W088
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
