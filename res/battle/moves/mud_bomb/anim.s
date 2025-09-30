#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, mud_bomb_spa
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W145C, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 1
    CreateEmitter 0, 0, 3
    Func_MoveEmitterA2BParabolic 0, 0, 0, 0, 24, 64
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 2, 4
    Delay 23
    PlaySoundEffectR SEQ_SE_DP_W426
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
