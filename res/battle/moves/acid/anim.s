#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, acid_spa
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W145C, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 1, 3
    Func_MoveEmitterA2BParabolic 0, 0, 0, 0, 8, 64
    Delay 8
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_PURPLE, 10, 0
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 0, 4
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER_PARTNER, 0, 1, BATTLE_COLOR_PURPLE, 10, 0
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER
    PlaySoundEffectR SEQ_SE_DP_W145
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
