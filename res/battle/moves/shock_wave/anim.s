#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, shock_wave_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 4, 3
    Delay 5
    PlayLoopedSoundEffectL SEQ_SE_DP_W082, 8, 2
    Delay 40
    CreateEmitter 0, 4, 4
    Delay 13
    PlaySoundEffectL SEQ_SE_DP_W085B
    Delay 24
    PlaySoundEffectL SEQ_SE_DP_W085B
    Delay 8
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 2, BATTLE_COLOR_LIGHT_YELLOW1, 10, 10
    Func_Shake 2, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W172B, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    PlayDelayedSoundEffectR SEQ_SE_DP_W085B, 15
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
