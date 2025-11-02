#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, barrage_spa
    CreateEmitterEx 0, 1, 0, 3
    Func_MoveEmitterA2BParabolic 1, 0, 0, 0, 15, 64
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W207, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    Delay 15
    Func_ShakeBg 0, 5, 1, 3, 0
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_W088
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
