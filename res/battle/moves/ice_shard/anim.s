#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, ice_shard_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    PlaySoundEffectL SEQ_SE_DP_KAZE
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 0, 1, 2, 0, 0, 0
    Delay 20
    PlaySoundEffectL SEQ_SE_DP_150
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 2, 1, 1, 4096, 0
    BtlAnimCmd_055 1, 0, 0, 0, 0
    Delay 40
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_151, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 40
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 2, 0, 0, 0
    Func_Shake 1, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_WHITE, 10, 10
    PlayLoopedSoundEffectR SEQ_SE_DP_030, 2, 3
    PlayDelayedSoundEffectR SEQ_SE_DP_W258, 7
    PlayDelayedSoundEffectR SEQ_SE_DP_W258, 14
    WaitForAllEmitters
    UnloadParticleSystem 0
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
