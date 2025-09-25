#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, dragon_claw_spa
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 3
    PlayPannedSoundEffect SEQ_SE_DP_W221B, BATTLE_SOUND_PAN_LEFT
    Func_FadeBattlerSprite 2, 0, 2, 31, 10, 0
    Delay 30
    InitSpriteManager 0, 4, 1, 1, 1, 1, 0, 0
    LoadCharResObj 0, claw_NCGR_lz
    LoadPlttRes 0, claw_NCLR, 1
    LoadCellResObj 0, claw_cell_NCER_lz
    LoadAnimResObj 0, claw_anim_NANR_lz
    AddSpriteWithFunc 0, 22, claw_NCGR_lz, claw_NCLR, claw_cell_NCER_lz, claw_anim_NANR_lz, 0, 0, 1, 4
    Delay 1
    BeginLoop 2
    PlayPannedSoundEffect SEQ_SE_DP_W013, BATTLE_SOUND_PAN_RIGHT
    Func_MoveBattlerX2 2, 24, 258
    Delay 2
    Func_Shake 1, 0, 1, 2, 264
    Delay 2
    Func_MoveBattlerX2 2, -24, 258
    Delay 4
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
