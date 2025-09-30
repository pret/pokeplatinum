#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, meteor_mash_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    CreateEmitter 0, 0, 4
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W112, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 15
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 1, 4
    Delay 7
    PlaySoundEffectR SEQ_SE_DP_030
    Delay 8
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_351, BATTLE_SOUND_PAN_RIGHT, BATTLE_SOUND_PAN_LEFT, 4, 2
    Func_Shake 5, 0, 1, 4, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_WHITE, 14, 0
    WaitForAnimTasks
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
