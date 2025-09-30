#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, gastro_acid_spa
    PlayLoopedSoundEffect SEQ_SE_DP_W380, BATTLE_SOUND_PAN_RIGHT, 2, 6
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 2, BATTLE_COLOR_LIGHT_GREEN, 10, 0
    Func_Shake 2, 0, 1, 6, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
