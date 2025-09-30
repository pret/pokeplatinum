#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, take_down_spa
    PlayPannedSoundEffect SEQ_SE_DP_W029, BATTLE_SOUND_PAN_LEFT
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -16, 8, 4
    WaitForAnimTasks
    Delay 15
    PlayPannedSoundEffect SEQ_SE_DP_140, BATTLE_SOUND_PAN_RIGHT
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 32, -16, 4
    WaitForAnimTasks
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 2, 4
    Func_Shake 4, 0, 1, 4, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -16, 8, 4
    WaitForAnimTasks
    End
