#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, present_spa
    CreateEmitter 0, 2, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_MoveEmitterA2BParabolic 0, 0, 0, 0, 19, 64
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W039, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Delay 20
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_DEFENDER
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlayLoopedSoundEffectR SEQ_SE_DP_140, 3, 3
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    LoadParticleResource 1, status_effect_spa
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_DEFENDER
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    LoadPokemonSpriteDummyResources 1
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_1, 0
    AddPokemonSprite BATTLER_ROLE_DEFENDER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_2, 1
    Func_StatChangeHeal STAT_CHANGE_MODE_DEFENDER
    PlaySoundEffectR SEQ_SE_DP_W071B
    Delay 5
    CreateEmitter 1, 4, EMITTER_CB_SET_POS_TO_DEFENDER
    WaitForAnimTasks
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_1
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_2
    FreePokemonSpriteManager
    WaitForAllEmitters
    UnloadParticleSystem 1
    End
