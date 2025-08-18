#include "macros/btlanimcmd.inc"

.data

L_0:
    PlayLoopedSoundEffect SEQ_SE_DP_W231, BATTLE_SOUND_PAN_LEFT, 8, 2
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    LoadPokemonSpriteDummyResources 1
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_1, 0
    AddPokemonSprite BATTLER_ROLE_ATTACKER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_2, 1
    CallFunc 83, 2, 3, 0
    WaitForAnimTasks
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_1
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_2
    FreePokemonSpriteManager
    Delay 1
    InitSpriteManager 0, 4, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, 17
    LoadPlttRes 0, 16, 1
    LoadCellResObj 0, 17
    LoadAnimResObj 0, 17
    AddSpriteWithFunc 0, 22, 17, 16, 17, 17, 0, 0, 1, 4
    Delay 1
    BeginLoop 2
    PlayPannedSoundEffect SEQ_SE_DP_W013, BATTLE_SOUND_PAN_RIGHT
    CallFunc 52, 3, 3, 24, 258
    Delay 2
    CallFunc 36, 5, 1, 0, 1, 2, 264
    Delay 2
    CallFunc 52, 3, 3, -24, 258
    Delay 4
    EndLoop
    WaitForAnimTasks
    FreeSpriteManager 0
    End
