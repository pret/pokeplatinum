#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, mud_shot_spa
    JumpIfFriendlyFire L_1
    JumpIfContest L_2
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W250, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitterForMove 0, 0, 3, 6, 7, 8, 9, 18
    Delay 10
    CreateEmitter 0, 14, 4
    Func_Shake 2, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 2, BATTLE_COLOR_DARK_RED1, 14, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W250, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitterForFriendlyFire 0, 11, 12, 11, 12, 3
    Delay 10
    CreateEmitter 0, 14, 4
    Func_Shake 2, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W250, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 10, 17
    BtlAnimCmd_055 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 0, 11008, -8256, 0
    Delay 10
    CreateEmitter 0, 14, 4
    Func_Shake 2, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
