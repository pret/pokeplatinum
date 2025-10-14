#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, dragon_claw_spa
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    PlaySoundEffectL SEQ_SE_DP_W221B
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 2, BATTLE_COLOR_RED, 10, 0
    Delay 30
    InitSpriteManager 0, 4, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, claw_NCGR_lz
    LoadPlttRes 0, claw_NCLR, 1
    LoadCellResObj 0, claw_cell_NCER_lz
    LoadAnimResObj 0, claw_anim_NANR_lz
    AddSpriteWithFunc 0, 22, claw_NCGR_lz, claw_NCLR, claw_cell_NCER_lz, claw_anim_NANR_lz, 0, 0, 4
    Delay 1
    BeginLoop 2
    PlaySoundEffectR SEQ_SE_DP_W013
    Func_MoveBattlerX2 2, 24, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Delay 2
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Delay 2
    Func_MoveBattlerX2 2, -24, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    Delay 4
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
