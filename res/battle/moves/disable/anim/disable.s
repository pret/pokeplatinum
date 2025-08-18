#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 80
    JumpIfContest L_1
    JumpIfBattlerSide 0, L_2, L_3
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 0, -4128, 0, 0
    PlayPannedSoundEffect SEQ_SE_DP_081, BATTLE_SOUND_PAN_LEFT
    Delay 5
    CallFunc 74, 1, 1
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_061, BATTLE_SOUND_PAN_RIGHT
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    Delay 1
    LoadPokemonSpriteDummyResources 4
    AddPokemonSprite BATTLER_ROLE_DEFENDER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_4, 4
    BtlAnimCmd_082 3, 0, 4
    CallFunc 35, 8, 1, 8, 10, 12, 10, 1, 589833, 0
    CallFunc 34, 6, 8, 0, 1, 6342, 14, 0
    CallFunc 63, 6, 2, 0, 1, 14, 14, 6342
    WaitForAnimTasks
    CallFunc 74, 1, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    FreePokemonSpriteManager
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    BtlAnimCmd_083 0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_4
    End

L_2:
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, 4128, 6192, 0
    PlayPannedSoundEffect SEQ_SE_DP_081, BATTLE_SOUND_PAN_LEFT
    Delay 5
    CallFunc 74, 1, 1
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_061, BATTLE_SOUND_PAN_RIGHT
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    Delay 1
    LoadPokemonSpriteDummyResources 4
    AddPokemonSprite BATTLER_ROLE_DEFENDER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_4, 4
    BtlAnimCmd_082 3, 0, 4
    CallFunc 35, 8, 1, 8, 10, 12, 10, 1, 589833, 0
    CallFunc 34, 6, 8, 0, 1, 6342, 14, 0
    CallFunc 63, 6, 2, 0, 1, 14, 14, 6342
    WaitForAnimTasks
    CallFunc 74, 1, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    FreePokemonSpriteManager
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    BtlAnimCmd_083 0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_4
    End

L_3:
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -4128, 6192, 0
    PlayPannedSoundEffect SEQ_SE_DP_081, BATTLE_SOUND_PAN_LEFT
    Delay 5
    CallFunc 74, 1, 1
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_061, BATTLE_SOUND_PAN_RIGHT
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    Delay 1
    LoadPokemonSpriteDummyResources 4
    AddPokemonSprite BATTLER_ROLE_DEFENDER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_4, 4
    BtlAnimCmd_082 3, 0, 4
    CallFunc 35, 8, 1, 8, 10, 12, 10, 1, 589833, 0
    CallFunc 34, 6, 8, 0, 1, 6342, 14, 0
    CallFunc 63, 6, 2, 0, 1, 14, 14, 6342
    WaitForAnimTasks
    CallFunc 74, 1, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    FreePokemonSpriteManager
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    BtlAnimCmd_083 0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_4
    End

L_1:
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 1, 5, 0, 0, 0
    BtlAnimCmd_055 4, 1, -4128, 6192, 0
    PlayPannedSoundEffect SEQ_SE_DP_081, BATTLE_SOUND_PAN_LEFT
    Delay 5
    CallFunc 74, 1, 1
    Delay 5
    PlayPannedSoundEffect SEQ_SE_DP_061, BATTLE_SOUND_PAN_RIGHT
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    Delay 1
    LoadPokemonSpriteDummyResources 4
    AddPokemonSprite BATTLER_ROLE_DEFENDER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_4, 4
    BtlAnimCmd_082 3, 0, 4
    CallFunc 35, 8, 1, 8, 10, 12, 10, 1, 589833, 0
    CallFunc 34, 6, 8, 0, 1, 6342, 14, 0
    CallFunc 63, 6, 2, 0, 1, 14, 14, 6342
    WaitForAnimTasks
    CallFunc 74, 1, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    FreePokemonSpriteManager
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    BtlAnimCmd_083 0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_4
    End
