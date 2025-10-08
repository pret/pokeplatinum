#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, bug_bite_spa
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    PlayLoopedSoundEffectR SEQ_SE_DP_W025B, 4, 4
    Delay 5
    Func_Shake 1, 0, 1, 4, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
