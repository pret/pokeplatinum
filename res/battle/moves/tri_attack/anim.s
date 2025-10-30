#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, tri_attack_spa
    LoadParticleResource 1, tri_attack_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    PlayLoopedSoundEffectL SEQ_SE_DP_W161, 8, 3
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 3, 3
    CreateEmitter 0, 7, 3
    CreateEmitter 0, 4, 3
    CreateEmitter 0, 5, 17
    BtlAnimCmd_055 0, 2, 18, 12, 0, 0
    Delay 40
    PlaySoundEffectR SEQ_SE_DP_W172B
    CreateEmitter 0, 1, 4
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Delay 20
    PlaySoundEffectR SEQ_SE_DP_W161B
    CreateEmitter 0, 6, 4
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Delay 20
    PlaySoundEffectR SEQ_SE_DP_W280
    CreateEmitter 0, 2, 4
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_BLACK
    WaitForAnimTasks
    End
