#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, octazooka_spa
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 6, 1, 16, 0
    BtlAnimCmd_055 3, 0, 0, 0, 0
    Func_MoveBattlerX2 3, -24, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Delay 5
    CreateEmitter 0, 1, 4
    PlaySoundEffectR SEQ_SE_DP_W120
    Func_Shake 2, 0, 1, 10, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_MoveBattlerX2 3, 24, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
