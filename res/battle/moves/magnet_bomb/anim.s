#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, magnet_bomb_spa
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 0, 4
    PlaySoundEffectR SEQ_SE_DP_290
    Delay 20
    PlaySoundEffectR SEQ_SE_DP_W443B
    Delay 2
    PlaySoundEffectR SEQ_SE_DP_W443B
    Delay 3
    PlaySoundEffectR SEQ_SE_DP_W443B
    Delay 2
    PlaySoundEffectR SEQ_SE_DP_W443B
    Delay 3
    PlaySoundEffectR SEQ_SE_DP_W443B
    Delay 5
    PlaySoundEffectR SEQ_SE_DP_W443B
    Delay 2
    PlaySoundEffectR SEQ_SE_DP_W443B
    Delay 3
    Func_Shake 2, 0, 1, 8, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlayDelayedSoundEffectR SEQ_SE_DP_161, 5
    PlayDelayedSoundEffectR SEQ_SE_DP_161, 15
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
