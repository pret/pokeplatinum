#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, heal_bell_spa
    PlayPannedSoundEffect SEQ_SE_DP_W234, BATTLE_SOUND_PAN_LEFT
    CreateEmitter 0, 0, 19
    CreateEmitter 0, 1, 19
    CreateEmitter 0, 2, 19
    BeginLoop 1
    Func_FadeBg 0, 0, 0, 8, 32720
    Func_FadeBattlerSprite 2, 0, 1, 32767, 8, 8
    Func_FadeBattlerSprite 4, 0, 1, 32767, 8, 8
    Delay 8
    Func_FadeBg 0, 0, 8, 0, 32720
    Delay 8
    Func_FadeBg 0, 0, 0, 8, 32767
    Func_FadeBattlerSprite 2, 0, 1, 32720, 8, 8
    Func_FadeBattlerSprite 4, 0, 1, 32720, 8, 8
    Delay 8
    Func_FadeBg 0, 0, 8, 0, 32767
    Delay 8
    EndLoop
    Func_FadeBg 0, 0, 0, 8, 32767
    Func_FadeBattlerSprite 2, 0, 1, 32767, 8, 8
    Func_FadeBattlerSprite 4, 0, 1, 32767, 8, 8
    Delay 8
    Func_FadeBg 0, 0, 8, 0, 32767
    Delay 8
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
