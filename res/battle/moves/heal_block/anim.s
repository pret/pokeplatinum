#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, heal_block_spa
    PlayPannedSoundEffect SEQ_SE_DP_W377, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 0, 20
    Delay 30
    Func_SetBgGrayscale 1
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_BLACK, 10, 15
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER_PARTNER, 0, 1, BATTLE_COLOR_BLACK, 10, 15
    WaitForAnimTasks
    Func_SetBgGrayscale 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
