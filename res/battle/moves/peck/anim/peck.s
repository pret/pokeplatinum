#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, peck_spa
    Func_RotateMon BATTLE_ANIM_DEGREES(360), BATTLE_ANIM_DEGREES(350), 2
    Delay 2
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 0, 4
    PlaySoundEffectR SEQ_SE_DP_W030
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    WaitForAnimTasks
    End
