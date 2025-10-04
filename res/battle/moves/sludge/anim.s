#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, sludge_spa
    LoadParticleResource 1, sludge_spa
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W145C, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitterEx 0, 1, 1, 3
    Func_MoveEmitterA2BParabolic 1, 0, 0, 0, 14, 64
    Delay 10
    PlaySoundEffectR SEQ_SE_DP_W291
    PlayDelayedSoundEffectR SEQ_SE_DP_W092D, 12
    PlayDelayedSoundEffectR SEQ_SE_DP_W092D, 15
    CreateEmitter 1, 0, 4
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_PURPLE, 10, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    End
