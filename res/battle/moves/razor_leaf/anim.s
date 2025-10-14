#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, razor_leaf_spa
    PlaySoundEffectL SEQ_SE_DP_KAZE
    CreateEmitter 0, 2, 3
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 6, 5, 0, 0
    Delay 15
    StopSoundEffect SEQ_SE_DP_KAZE
    Delay 50
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_209, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 10
    CreateEmitter 0, 0, 20
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER
    Delay 7
    PlayLoopedSoundEffectR SEQ_SE_DP_HURU, 3, 5
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
