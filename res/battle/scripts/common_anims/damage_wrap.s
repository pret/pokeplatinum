#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 65
    BeginLoop 2
    PlayLoopedSoundEffect SEQ_SE_DP_W020B, BATTLE_SOUND_PAN_LEFT, 4, 2
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_RevolveBattler BATTLE_ANIM_ATTACKER, 1, 12
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 70, 100, 100, 100, 1, 327685
    WaitForAnimTasks
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
