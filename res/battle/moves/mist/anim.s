#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, mist_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_WHITE
    PlayLoopedSoundEffect SEQ_SE_DP_W109, BATTLE_SOUND_PAN_LEFT, 4, 3
    CreateEmitter 0, 0, 19
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 10, 60
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER_PARTNER, 0, 1, BATTLE_COLOR_WHITE, 10, 60
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_WHITE
    WaitForAnimTasks
    End
