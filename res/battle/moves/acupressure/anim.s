#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, acupressure_spa
    JumpIfFriendlyFire L_1
    PlayDelayedSoundEffect SEQ_SE_DP_081, BATTLE_SOUND_PAN_LEFT, 1
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 1, 2, 0, 0, 0
    Delay 5
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_LIGHT_YELLOW1, 10, 0
    PlayPannedSoundEffect SEQ_SE_DP_W367, BATTLE_SOUND_PAN_LEFT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    PlayDelayedSoundEffect SEQ_SE_DP_081, BATTLE_SOUND_PAN_LEFT, 1
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 6, 0, 2, 2, 0, 0, 0
    Delay 5
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_LIGHT_YELLOW1, 10, 0
    PlayPannedSoundEffect SEQ_SE_DP_W367, BATTLE_SOUND_PAN_LEFT
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
