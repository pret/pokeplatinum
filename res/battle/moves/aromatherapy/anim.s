#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, aromatherapy_spa
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 2, 4
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 0, 8, BATTLE_COLOR_LIME
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W080, 0
    Delay 60
    PlayPannedSoundEffect SEQ_SE_DP_W234, BATTLE_SOUND_PAN_LEFT
    Func_FadeBg FADE_BG_TYPE_BASE, 0, 8, 0, BATTLE_COLOR_LIME
    WaitForAnimTasks
    PlayDelayedSoundEffect SEQ_SE_DP_REAPOKE, BATTLE_SOUND_PAN_LEFT, 23
    CreateEmitter 0, 3, 19
    CreateEmitter 0, 1, 19
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 10, 0
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER_PARTNER, 0, 1, BATTLE_COLOR_WHITE, 10, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
