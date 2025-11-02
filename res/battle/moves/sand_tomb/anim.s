#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, sand_tomb_spa
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    PlayLoopedSoundEffectR SEQ_SE_DP_W028, 2, 18
    Delay 10
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 2, BATTLE_COLOR_YELLOW, 12, 
    Func_Shake 3, 0, 1, 8, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
