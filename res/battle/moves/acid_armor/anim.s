#include "macros/btlanimcmd.inc"

L_0:
    LoadPokemonSpriteIntoBg BATTLER_ROLE_ATTACKER, FALSE
    LoadParticleResource 0, acid_armor_spa
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    Func_AcidArmor
    PlaySoundEffectL SEQ_SE_DP_154
    PlayDelayedSoundEffectL SEQ_SE_DP_W152, 35
    PlayDelayedSoundEffectL SEQ_SE_DP_W152, 40
    PlayDelayedSoundEffectL SEQ_SE_DP_W152, 50
    PlayDelayedSoundEffectL SEQ_SE_DP_W152, 55
    WaitForAnimTasks
    RemovePokemonSpriteFromBg 0
    End
