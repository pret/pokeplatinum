#include "macros/btlanimcmd.inc"

#define REV_MODE EMITTER_REVOLUTION_MODE_ATTACKER

L_0:
    JumpIfBattlerSide BATTLER_ROLE_ATTACKER, L_1, L_2
    End

L_1:
    LoadParticleResource 0, blast_burn_spa
    LoadParticleResource 1, flamethrower_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_DARK_RED2
    WaitForAnimTasks
    PlayLoopedSoundEffectL SEQ_SE_DP_W085, 1, 2
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    LoadPokemonSpriteDummyResources 1
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    AddPokemonSprite BATTLER_ROLE_ATTACKER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_1, 1
    Func_SetPokemonSpritePriority BATTLE_ANIM_MON_SPRITE_0, 31, BATTLE_ANIM_BG_POKEMON, 0, BATTLER_ROLE_ATTACKER
    Func_SetPokemonSpritePriority BATTLE_ANIM_MON_SPRITE_1, 30, BATTLE_ANIM_BG_POKEMON, 0, BATTLER_ROLE_ATTACKER_PARTNER
    CreateEmitterEx 0, 3, 0, 3
    Func_RevolveEmitter 3, -90, -90, -90, -90, 48, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 4, 1, 3
    Func_RevolveEmitter 4, -90, -90, -90, -90, 48, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 5, 2, 3
    Func_RevolveEmitter 5, -90, -90, -90, -90, 48, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 6, 0, 3
    Func_RevolveEmitter 6, -45, -45, -45, -45, 48, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 7, 1, 3
    Func_RevolveEmitter 7, -45, -45, -45, -45, 48, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 8, 2, 3
    Func_RevolveEmitter 8, -45, -45, -45, -45, 48, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 9, 0, 3
    Func_RevolveEmitter 9, 0, 0, 0, 0, 48, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 10, 1, 3
    Func_RevolveEmitter 10, 0, 0, 0, 0, 48, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 11, 2, 3
    Func_RevolveEmitter 11, 0, 0, 0, 0, 48, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 9, 0, 3
    Func_RevolveEmitter 9, 45, 45, 45, 45, 48, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 10, 1, 3
    Func_RevolveEmitter 10, 45, 45, 45, 45, 48, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 11, 2, 3
    Func_RevolveEmitter 11, 45, 45, 45, 45, 48, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 12, 0, 3
    Func_RevolveEmitter 12, 90, 90, 90, 90, 48, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 13, 1, 3
    Func_RevolveEmitter 13, 90, 90, 90, 90, 48, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 14, 2, 3
    Func_RevolveEmitter 14, 90, 90, 90, 90, 48, 24, 7, REV_MODE, 0
    Delay 8
    PlayLoopedSoundEffectL SEQ_SE_DP_W085, 1, 2
    CreateEmitterEx 0, 3, 0, 3
    Func_RevolveEmitter 3, -90, -90, -90, -90, 64, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 4, 1, 3
    Func_RevolveEmitter 4, -90, -90, -90, -90, 64, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 5, 2, 3
    Func_RevolveEmitter 5, -90, -90, -90, -90, 64, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 6, 0, 3
    Func_RevolveEmitter 6, -45, -45, -45, -45, 64, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 7, 1, 3
    Func_RevolveEmitter 7, -45, -45, -45, -45, 64, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 8, 2, 3
    Func_RevolveEmitter 8, -45, -45, -45, -45, 64, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 9, 0, 3
    Func_RevolveEmitter 9, 0, 0, 0, 0, 64, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 10, 1, 3
    Func_RevolveEmitter 10, 0, 0, 0, 0, 64, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 11, 2, 3
    Func_RevolveEmitter 11, 0, 0, 0, 0, 64, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 9, 0, 3
    Func_RevolveEmitter 9, 45, 45, 45, 45, 64, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 10, 1, 3
    Func_RevolveEmitter 10, 45, 45, 45, 45, 64, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 11, 2, 3
    Func_RevolveEmitter 11, 45, 45, 45, 45, 64, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 12, 0, 3
    Func_RevolveEmitter 12, 90, 90, 90, 90, 64, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 13, 1, 3
    Func_RevolveEmitter 13, 90, 90, 90, 90, 64, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 14, 2, 3
    Func_RevolveEmitter 14, 90, 90, 90, 90, 64, 24, 7, REV_MODE, 0
    Delay 8
    PlayLoopedSoundEffectL SEQ_SE_DP_W085, 1, 2
    CreateEmitterEx 0, 3, 0, 3
    Func_RevolveEmitter 3, -90, -90, -90, -90, 92, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 4, 1, 3
    Func_RevolveEmitter 4, -90, -90, -90, -90, 92, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 5, 2, 3
    Func_RevolveEmitter 5, -90, -90, -90, -90, 92, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 6, 0, 3
    Func_RevolveEmitter 6, -45, -45, -45, -45, 92, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 7, 1, 3
    Func_RevolveEmitter 7, -45, -45, -45, -45, 92, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 8, 2, 3
    Func_RevolveEmitter 8, -45, -45, -45, -45, 92, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 9, 0, 3
    Func_RevolveEmitter 9, 0, 0, 0, 0, 92, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 10, 1, 3
    Func_RevolveEmitter 10, 0, 0, 0, 0, 92, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 11, 2, 3
    Func_RevolveEmitter 11, 0, 0, 0, 0, 92, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 9, 0, 3
    Func_RevolveEmitter 9, 45, 45, 45, 45, 92, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 10, 1, 3
    Func_RevolveEmitter 10, 45, 45, 45, 45, 92, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 11, 2, 3
    Func_RevolveEmitter 11, 45, 45, 45, 45, 92, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 12, 0, 3
    Func_RevolveEmitter 12, 90, 90, 90, 90, 92, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 13, 1, 3
    Func_RevolveEmitter 13, 90, 90, 90, 90, 92, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 14, 2, 3
    Func_RevolveEmitter 14, 90, 90, 90, 90, 92, 24, 7, REV_MODE, 0
    Delay 8
    PlaySoundEffectR SEQ_SE_DP_W379
    CreateEmitter 1, 0, 4
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_RED, 10, 0
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    WaitForAnimTasks
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_1
    FreePokemonSpriteManager
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_DARK_RED2
    WaitForAnimTasks
    End

L_2:
    LoadParticleResource 0, blast_burn_spa
    LoadParticleResource 1, flamethrower_spa
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 0, 12, BATTLE_COLOR_DARK_RED2
    WaitForAnimTasks
    PlayLoopedSoundEffectL SEQ_SE_DP_W085, 1, 2
    CreateEmitterEx 0, 3, 0, 3
    Func_RevolveEmitter 3, 90, 90, 90, 90, 48, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 4, 1, 3
    Func_RevolveEmitter 4, 90, 90, 90, 90, 48, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 5, 2, 3
    Func_RevolveEmitter 5, 90, 90, 90, 90, 48, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 6, 0, 3
    Func_RevolveEmitter 6, 135, 135, 135, 135, 48, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 7, 1, 3
    Func_RevolveEmitter 7, 135, 135, 135, 135, 48, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 8, 2, 3
    Func_RevolveEmitter 8, 135, 135, 135, 135, 48, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 9, 0, 3
    Func_RevolveEmitter 9, 180, 180, 180, 180, 48, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 10, 1, 3
    Func_RevolveEmitter 10, 180, 180, 180, 180, 48, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 11, 2, 3
    Func_RevolveEmitter 11, 180, 180, 180, 180, 48, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 9, 0, 3
    Func_RevolveEmitter 9, 225, 225, 225, 225, 48, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 10, 1, 3
    Func_RevolveEmitter 10, 225, 225, 225, 225, 48, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 11, 2, 3
    Func_RevolveEmitter 11, 225, 225, 225, 225, 48, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 12, 0, 3
    Func_RevolveEmitter 12, 270, 270, 270, 270, 48, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 13, 1, 3
    Func_RevolveEmitter 13, 270, 270, 270, 270, 48, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 14, 2, 3
    Func_RevolveEmitter 14, 270, 270, 270, 270, 48, 24, 7, REV_MODE, 0
    Delay 8
    PlayLoopedSoundEffectL SEQ_SE_DP_W085, 1, 2
    CreateEmitterEx 0, 3, 0, 3
    Func_RevolveEmitter 3, 90, 90, 90, 90, 64, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 4, 1, 3
    Func_RevolveEmitter 4, 90, 90, 90, 90, 64, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 5, 2, 3
    Func_RevolveEmitter 5, 90, 90, 90, 90, 64, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 6, 0, 3
    Func_RevolveEmitter 6, 135, 135, 135, 135, 64, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 7, 1, 3
    Func_RevolveEmitter 7, 135, 135, 135, 135, 64, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 8, 2, 3
    Func_RevolveEmitter 8, 135, 135, 135, 135, 64, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 9, 0, 3
    Func_RevolveEmitter 9, 180, 180, 180, 180, 64, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 10, 1, 3
    Func_RevolveEmitter 10, 180, 180, 180, 180, 64, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 11, 2, 3
    Func_RevolveEmitter 11, 180, 180, 180, 180, 64, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 9, 0, 3
    Func_RevolveEmitter 9, 225, 225, 225, 225, 64, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 10, 1, 3
    Func_RevolveEmitter 10, 225, 225, 225, 225, 64, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 11, 2, 3
    Func_RevolveEmitter 11, 225, 225, 225, 225, 64, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 12, 0, 3
    Func_RevolveEmitter 12, 270, 270, 270, 270, 64, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 13, 1, 3
    Func_RevolveEmitter 13, 270, 270, 270, 270, 64, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 14, 2, 3
    Func_RevolveEmitter 14, 270, 270, 270, 270, 64, 24, 7, REV_MODE, 0
    Delay 8
    PlayLoopedSoundEffectL SEQ_SE_DP_W085, 1, 2
    CreateEmitterEx 0, 3, 0, 3
    Func_RevolveEmitter 3, 90, 90, 90, 90, 92, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 4, 1, 3
    Func_RevolveEmitter 4, 90, 90, 90, 90, 92, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 5, 2, 3
    Func_RevolveEmitter 5, 90, 90, 90, 90, 92, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 6, 0, 3
    Func_RevolveEmitter 6, 135, 135, 135, 135, 92, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 7, 1, 3
    Func_RevolveEmitter 7, 135, 135, 135, 135, 92, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 8, 2, 3
    Func_RevolveEmitter 8, 135, 135, 135, 135, 92, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 9, 0, 3
    Func_RevolveEmitter 9, 180, 180, 180, 180, 92, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 10, 1, 3
    Func_RevolveEmitter 10, 180, 180, 180, 180, 92, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 11, 2, 3
    Func_RevolveEmitter 11, 180, 180, 180, 180, 92, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 9, 0, 3
    Func_RevolveEmitter 9, 225, 225, 225, 225, 92, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 10, 1, 3
    Func_RevolveEmitter 10, 225, 225, 225, 225, 92, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 11, 2, 3
    Func_RevolveEmitter 11, 225, 225, 225, 225, 92, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 12, 0, 3
    Func_RevolveEmitter 12, 270, 270, 270, 270, 92, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 13, 1, 3
    Func_RevolveEmitter 13, 270, 270, 270, 270, 92, 24, 7, REV_MODE, 0
    CreateEmitterEx 0, 14, 2, 3
    Func_RevolveEmitter 14, 270, 270, 270, 270, 92, 24, 7, REV_MODE, 0
    Delay 8
    PlaySoundEffectR SEQ_SE_DP_W379
    CreateEmitter 1, 0, 4
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_RED, 10, 0
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    Func_FadeBg FADE_BG_TYPE_BASE, 1, 12, 0, BATTLE_COLOR_DARK_RED2
    WaitForAnimTasks
    End
