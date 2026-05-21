#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, teleport_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    Func_Teleport
    PlaySoundEffectL SEQ_SE_DP_W100
    Delay 10
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    WaitForAnimTasks
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
