#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, bite_spa
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 4, 4
    CreateEmitter 0, 2, 4
    Delay 2
    PlaySoundEffectR SEQ_SE_DP_W044
    Delay 8
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    End
