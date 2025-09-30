#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, hi_jump_kick_spa
    PlayPannedSoundEffect SEQ_SE_DP_W026, BATTLE_SOUND_PAN_LEFT
    Func_MoveBattlerX2 3, 24, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    WaitForAnimTasks
    Func_MoveBattlerX2 3, -24, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    PlayPannedSoundEffect SEQ_SE_DP_W233B, BATTLE_SOUND_PAN_RIGHT
    Func_MoveBattlerX2 3, -24, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    CreateEmitter 0, 1, 4
    WaitForAnimTasks
    Func_MoveBattlerX2 3, 24, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_BASI, BATTLE_SOUND_PAN_RIGHT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
