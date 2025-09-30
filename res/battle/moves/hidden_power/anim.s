#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, hidden_power_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    PlaySoundEffectL SEQ_SE_DP_W036
    CreateEmitter 0, 1, 3
    Delay 40
    PlaySoundEffectL SEQ_SE_DP_W179
    Delay 40
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 4, 3
    CreateEmitter 0, 0, 3
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W115, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 5
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
