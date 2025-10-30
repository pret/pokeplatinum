#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, pain_split_spa
    CreateEmitter 0, 0, 3
    CreateEmitter 0, 1, 4
    Func_Shake 2, 0, 1, 8, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    Func_Shake 2, 0, 1, 8, BATTLE_ANIM_BATTLER_SPRITE_ATTACKER
    PlayDelayedSoundEffectL SEQ_SE_DP_W025B, 1
    PlayDelayedSoundEffectR SEQ_SE_DP_W025B, 5
    PlayDelayedSoundEffectL SEQ_SE_DP_W025B, 10
    PlayDelayedSoundEffectR SEQ_SE_DP_W025B, 15
    PlayDelayedSoundEffectL SEQ_SE_DP_W025B, 20
    PlayDelayedSoundEffectR SEQ_SE_DP_W025B, 25
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
