#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, sludge_bomb_spa
    CreateEmitterEx 0, 1, 2, 3
    Func_MoveEmitterA2BParabolic 1, 0, 0, 0, 14, 64
    PlayLoopedSoundEffectC SEQ_SE_DP_W145B, 2, 4
    Delay 10
    PlayLoopedSoundEffectR SEQ_SE_DP_W092D, 2, 12
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    Delay 5
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 2, BATTLE_COLOR_PURPLE, 14, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
