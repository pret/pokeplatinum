#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, poison_fang_spa
    CreateEmitter 0, 4, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 5, 4
    CreateEmitter 0, 3, 4
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 1, 1, BATTLE_COLOR_PURPLE, 12, 
    Delay 1
    PlaySoundEffectR SEQ_SE_DP_W044
    Delay 9
    PlayLoopedSoundEffectR SEQ_SE_DP_W092D, 8, 4
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
