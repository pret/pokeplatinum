#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, poison_jab_spa
    PlayLoopedSoundEffectR SEQ_SE_DP_030, 4, 6
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 1, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    Delay 10
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_PURPLE, 10, 0
    Func_Shake 2, 0, 1, 4, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
