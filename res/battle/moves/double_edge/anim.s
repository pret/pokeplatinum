#include "macros/btlanimcmd.inc"

.data

L_0:
    LoadParticleResource 0, double_edge_spa
    PlayPannedSoundEffect SEQ_SE_DP_W025, BATTLE_SOUND_PAN_LEFT
    PlayDelayedSoundEffect SEQ_SE_DP_131, BATTLE_SOUND_PAN_RIGHT, 10
    WaitForAnimTasks
    Func_RevolveBattler BATTLE_ANIM_ATTACKER, 1, 10
    WaitForAnimTasks
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    SwitchBg 6, BATTLE_BG_SWITCH_MODE_FADE
    Func_RevolveBattler BATTLE_ANIM_ATTACKER, 1, 10
    WaitForAnimTasks
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 14, -8, 2
    CreateEmitter 0, 0, 4
    CreateEmitter 0, 1, 4
    CreateEmitter 0, 2, 4
    CreateEmitter 0, 3, 4
    CreateEmitter 0, 4, 4
    PlayPannedSoundEffect SEQ_SE_DP_140, BATTLE_SOUND_PAN_RIGHT
    Delay 2
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_DEFENDER, -18, 4, 2
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, -14, 8, 2
    Func_ShakeBg 0, 5, 1, 3, 0
    Delay 2
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_DEFENDER, 18, -4, 4
    WaitForAnimTasks
    WaitForAllEmitters
    UnloadParticleSystem 0
    ResetVars
    SetVar BATTLE_ANIM_VAR_BG_SCREEN_MODE, 1
    RestoreBg 6, BATTLE_BG_SWITCH_MODE_FADE
    WaitForBgSwitch
    End
