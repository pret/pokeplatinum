#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, reversal_spa
    PlayPannedSoundEffect SEQ_SE_DP_W197, BATTLE_SOUND_PAN_LEFT
    BeginLoop 2
    Func_FadeBg FADE_BG_TYPE_BASE, -2, 0, 8, BATTLE_COLOR_WHITE
    WaitForAnimTasks
    Func_FadeBg FADE_BG_TYPE_BASE, -2, 8, 0, BATTLE_COLOR_WHITE
    WaitForAnimTasks
    EndLoop
    PlayPannedSoundEffect SEQ_SE_DP_W179, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 1, 0, 0, 0
    Delay 40
    Func_FadeBg FADE_BG_TYPE_BASE, -2, 0, 8, BATTLE_COLOR_WHITE
    WaitForAnimTasks
    Func_FadeBg FADE_BG_TYPE_BASE, -2, 8, 0, BATTLE_COLOR_WHITE
    WaitForAnimTasks
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 24, 0, 4
    WaitForAnimTasks
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT
    Func_Shake 1, 0, 1, 3, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -24, 0, 4
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
