#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, twineedle_spa
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_HURU2, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 8, 2
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 14, -8, 2
    WaitForAnimTasks
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 6, 1, 0, 0
    CreateEmitter 0, 0, 4
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -14, 8, 2
    Delay 5
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_HURU2, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 8, 2
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_PURPLE, 10, 0
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlayDelayedSoundEffectR SEQ_SE_DP_W004, 3
    PlayDelayedSoundEffectR SEQ_SE_DP_W004, 6
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
