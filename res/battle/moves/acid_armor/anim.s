#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadPokemonSpriteIntoBg 0, 0
    LoadParticleResource 0, acid_armor_spa
    CreateEmitter 0, 0, 3
    CallFunc 12, 0
    PlayPannedSoundEffect SEQ_SE_DP_154, BATTLE_SOUND_PAN_LEFT
    PlayDelayedSoundEffect SEQ_SE_DP_W152, BATTLE_SOUND_PAN_LEFT, 35
    PlayDelayedSoundEffect SEQ_SE_DP_W152, BATTLE_SOUND_PAN_LEFT, 40
    PlayDelayedSoundEffect SEQ_SE_DP_W152, BATTLE_SOUND_PAN_LEFT, 50
    PlayDelayedSoundEffect SEQ_SE_DP_W152, BATTLE_SOUND_PAN_LEFT, 55
    WaitForAnimTasks
    RemovePokemonSpriteFromBg 0
    End
