#include "macros/btlanimcmd.inc"

.data

L_0:
    BtlAnimCmd_013 L_1, L_2
    End

L_1:
    LoadParticleResource 0, 166
    CreateEmitter 0, 2, 3
    JumpIfFriendlyFire L_3
    CallFunc 33, 5, 0, 1, 0, 10, 0
    CallFunc 34, 6, 2, 0, 1, 0, 10, 0
    CallFunc 34, 6, 4, 0, 1, 0, 10, 30
    CallFunc 34, 6, 16, 0, 1, 0, 10, 30
    PlayLoopedSoundEffect SEQ_SE_DP_W360, BATTLE_SOUND_PAN_LEFT, 12, 2
    Delay 25
    CallFunc 34, 6, 2, 0, 1, 32767, 12, 0
    CallFunc 36, 5, 1, 0, 1, 6, 258
    WaitForAnimTasks
    CallFunc 33, 5, 0, 1, 10, 0, 0
    WaitForAnimTasks
    FreePokemonSpriteManager
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    End

L_3:
    JumpIfBattlerSide 0, L_4, L_5
    End

L_4:
    CallFunc 33, 5, 0, 1, 0, 10, 0
    CallFunc 34, 6, 2, 0, 1, 0, 10, 0
    CallFunc 34, 6, 2056, 0, 1, 0, 10, 30
    CallFunc 34, 6, 2064, 0, 1, 0, 10, 30
    PlayLoopedSoundEffect SEQ_SE_DP_W360, BATTLE_SOUND_PAN_LEFT, 12, 2
    Delay 25
    CallFunc 34, 6, 2, 0, 1, 32767, 12, 0
    CallFunc 36, 5, 1, 0, 1, 6, 258
    WaitForAnimTasks
    CallFunc 33, 5, 0, 1, 10, 0, 0
    WaitForAnimTasks
    FreePokemonSpriteManager
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    End

L_5:
    CallFunc 33, 5, 0, 1, 0, 10, 0
    CallFunc 34, 6, 2, 0, 1, 0, 10, 0
    CallFunc 34, 6, 2050, 0, 1, 0, 10, 30
    CallFunc 34, 6, 2052, 0, 1, 0, 10, 30
    PlayLoopedSoundEffect SEQ_SE_DP_W360, BATTLE_SOUND_PAN_LEFT, 12, 2
    Delay 25
    CallFunc 34, 6, 2, 0, 1, 32767, 12, 0
    CallFunc 36, 5, 1, 0, 1, 6, 258
    WaitForAnimTasks
    CallFunc 33, 5, 0, 1, 10, 0, 0
    WaitForAnimTasks
    FreePokemonSpriteManager
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    End

L_2:
    LoadParticleResource 0, 166
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -32
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    SwitchBg 18, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAGS_MOVE
    WaitForBgSwitch
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    LoadPokemonSpriteDummyResources 4
    AddPokemonSprite BATTLER_ROLE_ATTACKER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_4, 4
    BtlAnimCmd_082 2, 0, 4
    CallFunc 38, 6, 1, 16, 0, 0, 16, 8
    Delay 1
    CallFunc 40, 2, 2, 1
    WaitForAnimTasks
    SetPokemonSpriteVisible 0, 0
    SetPokemonSpriteVisible 4, 0
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W360C, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    JumpIfContest L_6
    JumpIfBattlerSide 0, L_7, L_8
    End

L_7:
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_186, BATTLE_SOUND_PAN_RIGHT
    CallFunc 36, 5, 4, 0, 1, 6, 264
    CreateEmitter 0, 6, 4
    WaitForAllEmitters
    UnloadParticleSystem 0
    SetPokemonSpriteVisible 0, 1
    SetPokemonSpriteVisible 4, 1
    CallFunc 38, 6, 1, 0, 16, 16, 0, 8
    Delay 7
    CallFunc 40, 2, 2, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -32
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    RestoreBg 18, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAGS_STOP
    WaitForBgSwitch
    FreePokemonSpriteManager
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    BtlAnimCmd_083 0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_4
    End

L_6:
    CreateEmitter 0, 5, 17
    BtlAnimCmd_055 6, 0, 2, 1, 1, 0, 0
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_186, BATTLE_SOUND_PAN_RIGHT
    CallFunc 36, 5, 4, 0, 1, 6, 264
    CreateEmitter 0, 6, 4
    WaitForAllEmitters
    UnloadParticleSystem 0
    SetPokemonSpriteVisible 0, 1
    SetPokemonSpriteVisible 4, 1
    CallFunc 38, 6, 1, 0, 16, 16, 0, 8
    Delay 7
    CallFunc 40, 2, 2, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -32
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    RestoreBg 18, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAGS_STOP
    WaitForBgSwitch
    FreePokemonSpriteManager
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    BtlAnimCmd_083 0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_4
    End

L_8:
    CreateEmitter 0, 4, 17
    BtlAnimCmd_055 6, 0, 2, 6, 1, 0, 0
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_186, BATTLE_SOUND_PAN_RIGHT
    CallFunc 36, 5, 4, 0, 1, 6, 264
    CreateEmitter 0, 6, 4
    WaitForAllEmitters
    UnloadParticleSystem 0
    SetPokemonSpriteVisible 0, 1
    SetPokemonSpriteVisible 4, 1
    CallFunc 38, 6, 1, 0, 16, 16, 0, 8
    Delay 7
    CallFunc 40, 2, 2, 0
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_X, -32
    SetVar BATTLE_ANIM_VAR_BG_MOVE_STEP_Y, 0
    SetVar BATTLE_ANIM_VAR_BG_ANIM_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SetVar BATTLE_ANIM_VAR_BG_FADE_TYPE, 0
    RestoreBg 18, BATTLE_BG_SWITCH_MODE_FADE | BATTLE_BG_SWITCH_FLAGS_STOP
    WaitForBgSwitch
    FreePokemonSpriteManager
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    BtlAnimCmd_083 0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_4
    End
