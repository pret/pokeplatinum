#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, power_whip_spa
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SwitchBg 7, BATTLE_BG_SWITCH_MODE_FADE
    PlaySoundEffectR SEQ_SE_DP_W104
    PlayDelayedSoundEffectR SEQ_SE_DP_MUCHI, 10
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    Delay 10
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_186
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 7, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    End
