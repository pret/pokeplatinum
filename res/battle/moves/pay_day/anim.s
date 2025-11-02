#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, pay_day_spa
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 6, 1, 0, 0
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W013B, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 10
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 3, 4
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_W006
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
