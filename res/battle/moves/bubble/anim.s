#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, bubble_spa
    LoadParticleResource 1, bubble_spa
    JumpIfContest L_1
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 31, 24, 0, 4
    PlayLoopedSoundEffectC SEQ_SE_DP_W145, 2, 5
    Delay 10
    CreateEmitter 1, 1, 20
    Delay 10
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER
    PlayLoopedSoundEffectR SEQ_SE_DP_W145C, 2, 2
    Delay 10
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    End

L_1:
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 0, 28, 22, 0, 4
    PlayLoopedSoundEffectC SEQ_SE_DP_W145, 2, 5
    Delay 10
    CreateEmitter 1, 1, 20
    Delay 10
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER
    PlayLoopedSoundEffectR SEQ_SE_DP_W145C, 2, 2
    Delay 10
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    End
