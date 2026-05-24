#include "macros/btlanimcmd.inc"

L_0:
    InitSpriteManager 0, 6, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, helping_hand_NCGR_lz
    LoadPlttRes 0, helping_hand_NCLR, 1
    LoadCellResObj 0, helping_hand_cell_NCER_lz
    LoadAnimResObj 0, helping_hand_anim_NANR_lz
    AddSpriteWithFunc 0, 20, helping_hand_NCGR_lz, helping_hand_NCLR, helping_hand_cell_NCER_lz, helping_hand_anim_NANR_lz, 0, 0, 6
    PlayDelayedSoundEffectC SEQ_SE_DP_W227, 20
    Delay 14
    BeginLoop 2
    Func_MoveBattlerX2 2, 12, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER_PARTNER
    Delay 3
    Func_MoveBattlerX2 2, -12, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Delay 2
    PlaySoundEffectC SEQ_SE_DP_W227
    EndLoop
    Delay 1
    Func_MoveBattlerX2 2, 12, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER_PARTNER
    Delay 3
    Func_MoveBattlerX2 2, -12, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Delay 1
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER_PARTNER, 0, 2, BATTLE_COLOR_LIME, 8, 
    WaitForAnimTasks
    FreeSpriteManager 0
    End
