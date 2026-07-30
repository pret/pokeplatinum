#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, luster_purge_spa
    PlaySoundEffectL SEQ_SE_DP_W076
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 3, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 4, EMITTER_CB_SET_POS_TO_ATTACKER
    Delay 60
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 16, BATTLE_COLOR_WHITE
    Func_FadeBattlerSprite BATTLE_ANIM_BATTLER_PLAYER_1, 0, 1, BATTLE_COLOR_WHITE, 16, 30
    Func_FadeBattlerSprite BATTLE_ANIM_BATTLER_ENEMY_1, 0, 1, BATTLE_COLOR_WHITE, 16, 30
    Func_FadeBattlerSprite BATTLE_ANIM_BATTLER_PLAYER_2, 0, 1, BATTLE_COLOR_WHITE, 16, 30
    Func_FadeBattlerSprite BATTLE_ANIM_BATTLER_ENEMY_2, 0, 1, BATTLE_COLOR_WHITE, 16, 30
    Delay 20
    PlayLoopedSoundEffectR SEQ_SE_DP_W030, 4, 8
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    Delay 20
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 16, 0, BATTLE_COLOR_WHITE
    Func_Shake 4, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
