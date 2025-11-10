#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, tailwind_spa
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_KAZE, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    JumpIfBattlerSide BATTLER_ROLE_ATTACKER, L_1, L_2
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_1:
    CreateEmitter 0, 0, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 2, EMITTER_CB_GENERIC
    SetExtraParams 0, 0, 0, 0, 0, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End

L_2:
    CreateEmitter 0, 1, EMITTER_CB_SET_POS_TO_ATTACKER
    CreateEmitter 0, 3, EMITTER_CB_GENERIC
    SetExtraParams 0, 0, 0, 0, 0, 0
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
