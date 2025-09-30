#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, bone_club_spa
    PlaySoundEffectR SEQ_SE_DP_W155
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    PlaySoundEffectR SEQ_SE_DP_W233B
    PlayDelayedSoundEffectR SEQ_SE_DP_030, 4
    Delay 3
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
