#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, astonish_spa
    Func_MoveBattlerX2 3, 24, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    WaitForAnimTasks
    PlaySoundEffectR SEQ_SE_DP_W280B
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_DEFENDER, 100, 90, 100, 140, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(5)
    Delay 1
    Func_MoveBattlerX2 3, -24, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    WaitForAnimTasks
    PlaySoundEffectR SEQ_SE_DP_W166
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
