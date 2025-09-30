#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, poison_tail_spa
    PlayPannedSoundEffect SEQ_SE_DP_BRADE, BATTLE_SOUND_PAN_RIGHT
    PlayDelayedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT, 6
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 1, 4
    Delay 5
    PlayDelayedSoundEffect SEQ_SE_DP_W092D, BATTLE_SOUND_PAN_RIGHT, 10
    PlayDelayedSoundEffect SEQ_SE_DP_W092D, BATTLE_SOUND_PAN_RIGHT, 18
    PlayDelayedSoundEffect SEQ_SE_DP_W092D, BATTLE_SOUND_PAN_RIGHT, 26
    PlayDelayedSoundEffect SEQ_SE_DP_W092D, BATTLE_SOUND_PAN_RIGHT, 34
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 1, 1, BATTLE_COLOR_PURPLE, 12, 
    Func_Shake 2, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
