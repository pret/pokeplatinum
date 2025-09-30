#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, psycho_shift_spa
    PlayPannedSoundEffect SEQ_SE_DP_W375, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 1, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 1, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 3, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    Delay 15
    PlayPannedSoundEffect SEQ_SE_DP_W375, BATTLE_SOUND_PAN_RIGHT
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 10, 30
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_PURPLE, 10, 30
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
