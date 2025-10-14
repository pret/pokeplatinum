#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, flamethrower_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_DARK_RED2
    WaitForAnimTasks
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 6, 1, 0, 0
    PlaySoundEffectR SEQ_SE_DP_W053
    Delay 50
    CreateEmitter 0, 0, 4
    Func_Shake 2, 0, 1, 14, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Delay 3
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_RED, 10, 25
    Func_Shake 2, 0, 1, 14, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_DARK_RED2
    WaitForAnimTasks
    End
