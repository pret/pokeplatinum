#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, thief_spa
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    Func_MoveBattlerX2 3, 24, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    WaitForAnimTasks
    Func_MoveBattlerX2 3, -24, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_GRAY, 14, 0
    Delay 1
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_W233
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    CreateEmitter 0, 2, 3
    Func_MoveEmitterA2BParabolic 0, 0, 0, 0, 19, 64, EMITTER_ANIMATION_MODE_DEF_TO_ATK
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W039, BATTLE_SOUND_PAN_RIGHT, BATTLE_SOUND_PAN_LEFT, 4, 2
    Delay 20
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
