#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, mega_drain_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 8, BATTLE_COLOR_LIGHT_GREEN
    WaitForAnimTasks
    PlayLoopedSoundEffectC SEQ_SE_DP_W145C, 2, 24
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 2, 1, 16, 0
    BtlAnimCmd_055 2, 0, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 2, 1, 16, 0
    BtlAnimCmd_055 2, 0, 0, 0, 0
    WaitForAllEmitters
    CreateEmitter 0, 2, 3
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 10, 0
    PlaySoundEffectL SEQ_SE_DP_W071B
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 8, 0, BATTLE_COLOR_LIGHT_GREEN
    WaitForAnimTasks
    End
