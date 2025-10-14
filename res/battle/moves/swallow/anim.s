#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, swallow_spa
    PlaySoundEffectL SEQ_SE_DP_W036
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 80, 100, 160, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(15)
    Delay 5
    CreateEmitter 0, 1, 3
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 2, 3
    PlaySoundEffectL SEQ_SE_DP_W255F
    Delay 55
    PlaySoundEffectL SEQ_SE_DP_W071B
    Delay 5
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 10, 0
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
