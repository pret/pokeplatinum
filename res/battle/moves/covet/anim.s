#include "macros/btlanimcmd.inc"

L_0:
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    LoadParticleResource 0, covet_spa
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 1, 0, 0, 0
    Func_Flail FLAIL_MODE_ATTACKER
    PlayLoopedSoundEffectL SEQ_SE_DP_W204, 2, 4
    Delay 20
    PlayLoopedSoundEffectL SEQ_SE_DP_W204, 2, 4
    Delay 10
    Func_Shake 1, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlayDelayedSoundEffectR SEQ_SE_DP_350, 12
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    LoadParticleResource 0, thief_spa
    CreateEmitter 0, 2, 3
    Func_MoveEmitterA2BParabolic 0, 0, 0, 0, 19, 64, EMITTER_ANIMATION_MODE_DEF_TO_ATK
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W039, BATTLE_SOUND_PAN_RIGHT, BATTLE_SOUND_PAN_LEFT, 4, 2
    Delay 20
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
