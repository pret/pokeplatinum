#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, 96
    LoadParticleResource 1, 34
    CallFunc 10, 3, 7, 10, 2
    CallFunc 10, 3, 7, 10, 8
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    PlayDelayedSoundEffect SEQ_SE_DP_W104, BATTLE_SOUND_PAN_LEFT, 1
    PlayDelayedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT, 10
    PlayDelayedSoundEffect SEQ_SE_DP_W104, BATTLE_SOUND_PAN_LEFT, 10
    PlayDelayedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT, 20
    PlayDelayedSoundEffect SEQ_SE_DP_W104, BATTLE_SOUND_PAN_LEFT, 20
    PlayDelayedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT, 30
    PlayDelayedSoundEffect SEQ_SE_DP_W104, BATTLE_SOUND_PAN_LEFT, 30
    PlayDelayedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT, 40
    PlayDelayedSoundEffect SEQ_SE_DP_W104, BATTLE_SOUND_PAN_LEFT, 40
    PlayDelayedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT, 50
    PlayDelayedSoundEffect SEQ_SE_DP_W104, BATTLE_SOUND_PAN_LEFT, 50
    PlayDelayedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT, 60
    PlayDelayedSoundEffect SEQ_SE_DP_W104, BATTLE_SOUND_PAN_LEFT, 60
    PlayDelayedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT, 70
    PlayDelayedSoundEffect SEQ_SE_DP_W104, BATTLE_SOUND_PAN_LEFT, 70
    PlayDelayedSoundEffect SEQ_SE_DP_W025B, BATTLE_SOUND_PAN_RIGHT, 80
    BeginLoop 5
    Delay 8
    CreateEmitter 1, 0, 4
    EndLoop
    WaitForAllEmitters
    UnloadParticleSystem 0
    UnloadParticleSystem 1
    WaitForAnimTasks
    End
