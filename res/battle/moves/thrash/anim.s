#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, thrash_spa
    Func_RevolveBattler BATTLE_ANIM_ATTACKER, 1, 12
    Func_Shake 4, 0, 1, 4, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 1720, -3440, 0
    PlaySoundEffectR SEQ_SE_DP_007
    Delay 3
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 1720, -3440, 0
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 1720, 1720, 0
    PlaySoundEffectR SEQ_SE_DP_030
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 1720, 1720, 0
    WaitForAnimTasks
    Func_RevolveBattler BATTLE_ANIM_ATTACKER, 1, 12
    Func_Shake 4, 0, 1, 4, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    CreateEmitter 0, 2, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 344, 3440, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, 344, 3440, 0
    PlaySoundEffectR SEQ_SE_DP_W025B
    Delay 3
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, -860, -1032, 0
    CreateEmitter 0, 1, 17
    BtlAnimCmd_055 0, 2, 5, 0, 0, 0
    BtlAnimCmd_055 1, -860, -1032, 0
    WaitForAnimTasks
    End
