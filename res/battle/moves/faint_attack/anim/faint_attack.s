#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 204
    Func_FadeBg 0, 1, 0, 12, 0
    WaitForAnimTasks
    PlayPannedSoundEffect SEQ_SE_DP_061, BATTLE_SOUND_PAN_LEFT
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    LoadPokemonSpriteDummyResources 4
    AddPokemonSprite BATTLER_ROLE_ATTACKER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_4, 4
    BtlAnimCmd_082 2, 0, 4
    CallFunc 23, 0
    Delay 32
    BtlAnimCmd_083 0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    PlayPannedSoundEffect SEQ_SE_DP_030, BATTLE_SOUND_PAN_RIGHT
    Func_Shake 4, 0, 1, 1, 264
    Delay 15
    LoadPokemonSpriteDummyResources 4
    AddPokemonSprite BATTLER_ROLE_ATTACKER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_4, 4
    BtlAnimCmd_082 2, 0, 4
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    FreePokemonSpriteManager
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    BtlAnimCmd_083 0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_4
    Func_FadeBg 0, 1, 12, 0, 0
    WaitForAnimTasks
    End
