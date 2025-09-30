#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, knock_off_spa
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 14, -8, 2
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W233, BATTLE_SOUND_PAN_RIGHT
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -14, 8, 2
    Delay 5
    Func_Shake 0, 4, 1, 1, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_W004, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
