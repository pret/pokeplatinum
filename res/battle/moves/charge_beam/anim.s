#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, charge_beam_spa
    JumpIfFriendlyFire L_1
    JumpIfContest L_2
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    CreateEmitter 0, 10, 3
    CreateEmitter 0, 11, 3
    CreateEmitter 0, 12, 3
    CreateEmitter 0, 13, 3
    PlayLoopedSoundEffectL SEQ_SE_DP_206, 4, 5
    Delay 80
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_291, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitterForMove 0, 1, 2, 3, 4, 5, 6, 18
    Delay 5
    Func_Shake 2, 0, 1, 4, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_LIGHT_YELLOW1, 10, 10
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End

L_1:
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    CreateEmitter 0, 10, 3
    CreateEmitter 0, 11, 3
    CreateEmitter 0, 12, 3
    CreateEmitter 0, 13, 3
    PlayLoopedSoundEffectL SEQ_SE_DP_206, 4, 5
    Delay 80
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_291, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitterForFriendlyFire 0, 8, 9, 8, 9, 3
    Delay 5
    Func_Shake 2, 0, 1, 4, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_LIGHT_YELLOW1, 10, 10
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End

L_2:
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    CreateEmitter 0, 10, 3
    CreateEmitter 0, 11, 3
    CreateEmitter 0, 12, 3
    CreateEmitter 0, 13, 3
    PlayLoopedSoundEffectL SEQ_SE_DP_206, 4, 5
    Delay 80
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_291, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 7, 0
    Delay 5
    Func_Shake 2, 0, 1, 4, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_LIGHT_YELLOW1, 10, 10
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
