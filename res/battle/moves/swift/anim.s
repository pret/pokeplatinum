#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, swift_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_165, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 2, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 1, 0, 0, 0
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 6, 5, 0, 0
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER_SIDE
    Delay 2
    Delay 18
    PlayLoopedSoundEffectR SEQ_SE_DP_143, 4, 3
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
