#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, ember_spa
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_RED, 10, 0
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlayLoopedSoundEffectR SEQ_SE_DP_W052, 3, 4
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
