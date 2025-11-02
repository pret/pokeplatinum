#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, will_o_wisp_spa
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W052, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 6, 1, 16, 0
    BtlAnimCmd_055 3, 0, 0, 0, 0
    Delay 30
    CreateEmitter 0, 1, 4
    PlaySoundEffectR SEQ_SE_DP_W172B
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
