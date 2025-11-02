#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, roost_spa
    PlaySoundEffectL SEQ_SE_DP_210
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 1, 2, 0, 0, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 1, 2, 0, 0, 0
    Delay 50
    PlaySoundEffectL SEQ_SE_DP_W234
    Func_FadeBattlerSprite BATTLE_ANIM_ATTACKER, 0, 1, BATTLE_COLOR_WHITE, 10, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
