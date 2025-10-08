#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, metal_burst_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    PlayLoopedSoundEffectC SEQ_SE_DP_W368, 3, 8
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 10, 0
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 0, 3
    Delay 30
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W209, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 1, 4
    Func_Shake 2, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
