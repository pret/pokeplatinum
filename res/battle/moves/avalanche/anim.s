#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, avalanche_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_WHITE
    WaitForAnimTasks
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 5, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    Delay 2
    PlaySoundEffectR SEQ_SE_DP_W419
    Delay 12
    PlaySoundEffectR SEQ_SE_DP_W070
    Delay 2
    PlaySoundEffectR SEQ_SE_DP_W070
    Delay 2
    PlaySoundEffectR SEQ_SE_DP_W070
    Delay 2
    PlaySoundEffectR SEQ_SE_DP_W070
    Delay 2
    PlaySoundEffectR SEQ_SE_DP_W070
    Delay 2
    PlaySoundEffectR SEQ_SE_DP_W070
    Delay 2
    PlaySoundEffectR SEQ_SE_DP_W070
    Delay 2
    PlaySoundEffectR SEQ_SE_DP_W070
    Delay 2
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_WHITE, 10, 10
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    Func_Shake 1, 0, 1, 8, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_WHITE
    WaitForAnimTasks
    End
