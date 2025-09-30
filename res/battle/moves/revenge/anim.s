#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, revenge_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    CreateEmitter 0, 2, 3
    PlayPannedSoundEffect SEQ_SE_DP_W036, BATTLE_SOUND_PAN_LEFT
    Delay 45
    PlayPannedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 16, -8, 2
    Delay 2
    Func_Shake 8, 0, 1, 4, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -16, 8, 2
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
