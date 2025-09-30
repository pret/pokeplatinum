#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, discharge_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 3, 3
    Delay 2
    PlayLoopedSoundEffect SEQ_SE_DP_W085B, BATTLE_SOUND_PAN_LEFT, 4, 7
    Delay 28
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITES | BATTLE_ANIM_NOT_ATTACKER
    CreateEmitter 0, 1, 4
    PlayDelayedSoundEffect SEQ_SE_DP_W085, BATTLE_SOUND_PAN_RIGHT, 5
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_LIGHT_YELLOW1, 14, 0
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER_PARTNER, 0, 1, BATTLE_COLOR_LIGHT_YELLOW1, 14, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
