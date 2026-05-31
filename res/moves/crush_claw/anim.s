#include "macros/btlanimcmd.inc"

L_0:
    InitSpriteManager 0, 4, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, claw_NCGR_lz
    LoadPlttRes 0, crush_claw_NCLR, 1
    LoadCellResObj 0, claw_cell_NCER_lz
    LoadAnimResObj 0, claw_anim_NANR_lz
    AddSpriteWithFunc 0, 22, claw_NCGR_lz, crush_claw_NCLR, claw_cell_NCER_lz, claw_anim_NANR_lz, 0, 0, 4
    Delay 1
    BeginLoop 2
    PlaySoundEffectR SEQ_SE_DP_W013
    Func_MoveBattlerX2 3, 24, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Delay 2
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Delay 2
    Func_MoveBattlerX2 3, -24, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Delay 4
    EndLoop
    WaitForAnimTasks
    FreeSpriteManager 0
    End
