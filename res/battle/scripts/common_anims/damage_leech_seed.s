#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 101
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, 0
    WaitForAnimTasks
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 2, 1, 16, 0
    BtlAnimCmd_055 2, 0, 0, 0, 0
    PlayLoopedSoundEffect SEQ_SE_DP_W152, 0, 2, 16
    WaitForAllEmitters
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 1, 0, 0, 0
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 10, 0
    PlayPannedSoundEffect SEQ_SE_DP_W071B, BATTLE_SOUND_PAN_LEFT
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, 0
    WaitForAnimTasks
    End
