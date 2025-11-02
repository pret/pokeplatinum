#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, yawn_spa
    PlayMovingSoundEffectAtkDef SEQ_SE_DP_W281, BATTLE_SOUND_PAN_LEFT, BATTLE_SOUND_PAN_RIGHT, 4, 2
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_ATTACKER, 100, 80, 100, 160, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(15)
    Delay 5
    CreateEmitter 0, 0, 17
    BtlAnimCmd_055 0, 2, 6, 1, 0, 0
    Delay 20
    PlayLoopedSoundEffectR SEQ_SE_DP_W255, 4, 2
    CreateEmitter 0, 1, 4
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_DEFENDER, 100, 80, 100, 160, 100, CYCLES(1), SCALE_F(5) | RESTORE_F(15)
    Delay 20
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
