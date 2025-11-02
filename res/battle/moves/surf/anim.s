#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, aqua_jet_spa
    InitSpriteManager 0, 2, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, surf_NCGR_lz
    LoadPlttRes 0, surf_NCLR, 1
    LoadCellResObj 0, surf_cell_NCER_lz
    LoadAnimResObj 0, surf_anim_NANR_lz
    AddSprite 0, 0, surf_NCGR_lz, surf_NCLR, surf_cell_NCER_lz, surf_anim_NANR_lz, 0, 0
    AddSprite 0, 1, surf_NCGR_lz, surf_NCLR, surf_cell_NCER_lz, surf_anim_NANR_lz, 0, 0
    PlaySoundEffectL SEQ_SE_DP_W057
    Func_Surf 0
    WaitForAnimTasks
    FreeSpriteManager 0
    Func_ScrollCustomBg 48, 0, 256, -6, 6, TRUE, 20, 45
    PlaySoundEffectC SEQ_SE_DP_W057B
    Delay 15
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 20
    JumpIfFriendlyFire L_1
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_TEAL_GREEN, 10, 10
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER_PARTNER, 0, 1, BATTLE_COLOR_TEAL_GREEN, 10, 10
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER_PARTNER, 0, 1, BATTLE_COLOR_TEAL_GREEN, 10, 10
    Func_Shake 2, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITES | BATTLE_ANIM_NOT_ATTACKER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    JumpIfBattlerSide BATTLER_ROLE_ATTACKER, L_2, L_3
    End

L_2:
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_TEAL_GREEN, 10, 10
    Func_FadeBattlerSprite BATTLE_ANIM_BATTLER_ENEMY_1, 0, 1, BATTLE_COLOR_TEAL_GREEN, 10, 10
    Func_FadeBattlerSprite BATTLE_ANIM_BATTLER_ENEMY_2, 0, 1, BATTLE_COLOR_TEAL_GREEN, 10, 10
    Func_Shake 2, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITES | BATTLE_ANIM_NOT_ATTACKER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_3:
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_TEAL_GREEN, 10, 10
    Func_FadeBattlerSprite BATTLE_ANIM_BATTLER_PLAYER_1, 0, 1, BATTLE_COLOR_TEAL_GREEN, 10, 10
    Func_FadeBattlerSprite BATTLE_ANIM_BATTLER_PLAYER_2, 0, 1, BATTLE_COLOR_TEAL_GREEN, 10, 10
    Func_Shake 2, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITES | BATTLE_ANIM_NOT_ATTACKER
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
    End
    End
