#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, iron_head_spa
    PlayPannedSoundEffect SEQ_SE_DP_W029, BATTLE_SOUND_PAN_LEFT
    PlayPannedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 14, -8, 2
    WaitForAnimTasks
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_W088, BATTLE_SOUND_PAN_RIGHT
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -14, 8, 2
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
