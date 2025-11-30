#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, signal_beam_spa
    JumpIfFriendlyFire L_1
    JumpIfContest L_2
    CreateEmitterForMove 0, 0, 1, 2, 3, 4, 5, 18
    Func_Shake 1, 0, 0, 15, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Func_Shake 1, 0, 0, 15, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlayLoopedSoundEffectC SEQ_SE_DP_W062, 6, 2
    BeginLoop 3
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_RED, 8, 
    Delay 8
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_LIGHT_GREEN, 8, 
    Delay 8
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    CreateEmitterForFriendlyFire 0, 7, 8, 7, 8, 3
    Func_Shake 1, 0, 0, 15, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Func_Shake 1, 0, 0, 15, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlayLoopedSoundEffectC SEQ_SE_DP_W062, 6, 2
    BeginLoop 3
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_RED, 8, 
    Delay 8
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_LIGHT_GREEN, 8, 
    Delay 8
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    CreateEmitter 0, 6, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_Shake 1, 0, 0, 15, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Func_Shake 1, 0, 0, 15, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlayLoopedSoundEffectC SEQ_SE_DP_W062, 6, 2
    BeginLoop 3
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_RED, 8, 
    Delay 8
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_LIGHT_GREEN, 8, 
    Delay 8
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
