#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, agility_spa
    JumpIfBattlerSide BATTLER_ROLE_ATTACKER, L_1, L_2
    End

L_1:
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    LoadPokemonSpriteDummyResources 1
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_1, 1
    LoadPokemonSpriteDummyResources 4
    AddPokemonSprite BATTLER_ROLE_ATTACKER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_4, 4
    BtlAnimCmd_082 2, 0, 4
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -64
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SwitchBg 47, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    PlaySoundEffectC SEQ_SE_PL_W097
    CreateEmitter 0, 0, 0
    WaitForBgSwitch
    Delay 19
    Delay 1
    Func_QuickAttack
    WaitForAnimTasks
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_1
    FreePokemonSpriteManager
    BtlAnimCmd_083 0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_4
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -64
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    RestoreBg 47, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    LoadPokemonSpriteDummyResources 1
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_1, 1
    LoadPokemonSpriteDummyResources 4
    AddPokemonSprite BATTLER_ROLE_ATTACKER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_4, 4
    BtlAnimCmd_082 2, 0, 4
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -64
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SwitchBg 47, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_MOVE
    PlaySoundEffectC SEQ_SE_PL_W097
    CreateEmitter 0, 1, 0
    WaitForBgSwitch
    Delay 19
    Delay 1
    Func_QuickAttack
    WaitForAnimTasks
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_1
    FreePokemonSpriteManager
    BtlAnimCmd_083 0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_4
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -64
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    RestoreBg 47, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAG_STOP
    WaitForBgSwitch
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
