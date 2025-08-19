#include "generated/sdat.h"
#include "constants/battle/battle_anim.h"

#include "macros/btlanimfunc.inc"

    .macro Delay frames
    .long 0
    .long \frames
    .endm

    .macro WaitForAnimTasks
    .long 1
    .endm

    .macro BeginLoop loops
    .long 2
    .long \loops
    .endm

    .macro EndLoop
    .long 3
    .endm

    .macro End
    .long 4
    .endm

    .macro PlaySoundEffect seqID
    .long 5
    .long \seqID
    .endm

    @ 6: Nop
    @ 7: Nop

    .macro SetBg0Bg1AlphaBlending ev1, ev2
    .long 8
    .long \ev1
    .long \ev2
    .endm

    .macro SetDefaultAlphaBlending
    .long 9
    .endm

    .macro Call addr
    .long 10
    .long (\addr - .) / 4
    .endm

    .macro Return
    .long 11
    .endm

    .macro SetVar varID, value
    .long 12
    .long \varID
    .long \value
    .endm

    .macro BtlAnimCmd_013 arg0, arg1
    .long 13
    .long (\arg0 - .) / 4
    .long (\arg1 - .) / 4
    .endm

    .macro BtlAnimCmd_014 arg0, arg1
    .long 14
    .long \arg0
    .long \arg1
    .endm

    .macro Jump addr
    .long 15
    .long (\addr - .) / 4
    .endm

    .macro SwitchBg bgID, param
    .long 16
    .long \bgID
    .long \param
    .endm

    .macro SetBgSwitchVar var, value
    .long 17
    .long \var
    .long \value
    .endm

    .macro RestoreBg bgID, param
    .long 18
    .long \bgID
    .long \param
    .endm

    .macro WaitForPartialBgSwitch
    .long 19
    .endm

    .macro WaitForBgSwitch
    .long 20
    .endm

    .macro SetBg bgID
    .long 21
    .long \bgID
    .endm

    .macro PlayPannedSoundEffect seqID, pan
    .long 22
    .long \seqID
    .long \pan
    .endm

    .macro PlaySoundEffectL seqID
    PlayPannedSoundEffect \seqID, BATTLE_SOUND_PAN_LEFT
    .endm

    .macro PlaySoundEffectC seqID
    PlayPannedSoundEffect \seqID, BATTLE_SOUND_PAN_CENTER
    .endm

    .macro PlaySoundEffectR seqID
    PlayPannedSoundEffect \seqID, BATTLE_SOUND_PAN_RIGHT
    .endm

    .macro PanSoundEffects pan
    .long 23
    .long \pan
    .endm

    .macro PlayMovingSoundEffectAtkDef seqID, startPan, endPan, panStep, applyInterval
    .long 24
    .long \seqID
    .long \startPan
    .long \endPan
    .long \panStep
    .long \applyInterval
    .endm

    .macro PlayLoopedSoundEffect seqID, pan, applyInterval, repeatCount
    .long 25
    .long \seqID
    .long \pan
    .long \applyInterval
    .long \repeatCount
    .endm

    .macro PlayDelayedSoundEffect seqID, pan, delay
    .long 26
    .long \seqID
    .long \pan
    .long \delay
    .endm

    .macro PlayDelayedSoundEffectL seqID, delay
    PlayDelayedSoundEffect \seqID, BATTLE_SOUND_PAN_LEFT, \delay
    .endm

    .macro PlayDelayedSoundEffectC seqID, delay
    PlayDelayedSoundEffect \seqID, BATTLE_SOUND_PAN_CENTER, \delay
    .endm

    .macro PlayDelayedSoundEffectR seqID, delay
    PlayDelayedSoundEffect \seqID, BATTLE_SOUND_PAN_RIGHT, \delay
    .endm

    @ 27: Nop
    @ 28: Nop

    .macro WaitForSoundEffects
    .long 29
    .endm

    .macro JumpIfEqual varID, value, addr
    .long 30
    .long \varID
    .long \value
    .long (\addr - .) / 4
    .endm

    .macro LoadPokemonSpriteIntoBg battlerType, trackBattler
    .long 31
    .long \battlerType
    .long \trackBattler
    .endm

    .macro RemovePokemonSpriteFromBg unused
    .long 32
    .long \unused
    .endm

    .macro BtlAnimCmd_033 addr
    .long 33
    .long \addr
    .endm

    .macro SwitchBgEx bgPlayerAttack, bgEnemyAttack, bgContest
    .long 34
    .long \bgPlayerAttack
    .long \bgEnemyAttack
    .long \bgContest
    .endm

    .macro PlayMovingSoundEffectNoCorrection seqID, startPan, endPan, panStep, applyInterval
    .long 35
    .long \seqID
    .long \startPan
    .long \endPan
    .long \panStep
    .long \applyInterval
    .endm

    .macro PlayMovingSoundEffectAtkDef2 seqID, startPan, endPan, panStep, applyInterval
    .long 36
    .long \seqID
    .long \startPan
    .long \endPan
    .long \panStep
    .long \applyInterval
    .endm

    @ 37: Nop
    @ 38: Nop
    @ 39: Nop
    @ 40: Nop
    @ 41: Nop
    @ 42: Nop
    @ 43: Nop

    .macro StopSoundEffect seqID
    .long 44
    .long \seqID
    .endm

    .macro CreateEmitter particleSystem, resourceID, callbackID
    .long 46
    .long \particleSystem
    .long \resourceID
    .long \callbackID
    .endm

    .macro CreateEmitterEx particleSystem, emitterIndex, resourceID, callbackID
    .long 47
    .long \particleSystem
    .long \emitterIndex
    .long \resourceID
    .long \callbackID
    .endm

    .macro CreateEmitterForMove particleSystem, resPlParallel, resPlDiagonal2, resPlDiagonal1, resEmParallel, resEmDiagonal2, resEmDiagonal1, callbackID
    .long 48
    .long \particleSystem
    .long \resPlParallel
    .long \resPlDiagonal2
    .long \resPlDiagonal1
    .long \resEmParallel
    .long \resEmDiagonal2
    .long \resEmDiagonal1
    .long \callbackID
    .endm

    .macro CreateEmitterForFriendlyFire particleSystem, resPl, resEm, unused0, unused1, callbackID
    .long 49
    .long \particleSystem
    .long \resPl
    .long \resEm
    .long \unused0
    .long \unused1
    .long \callbackID
    .endm

    .macro WaitForAllEmitters
    .long 50
    .endm

    .macro LoadParticleSystem particleSystem, narcMemberID
    .long 51
    .long \particleSystem
    .long \narcMemberID
    .endm

    .macro LoadDebugParticleSystem particleSystem, narcID, narcMemberID
    .long 52
    .long \particleSystem
    .long \narcID
    .long \narcMemberID
    .endm

    .macro UnloadParticleSystem particleSystem
    .long 53
    .long \particleSystem
    .endm

    @ 54: Nop

    .macro BtlAnimCmd_055 argCount, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7
    .long 55
    .long \argCount
    .if \argCount > 0
        .long \arg0
    .endif
    .if \argCount > 1
        .long \arg1
    .endif
    .if \argCount > 2   
        .long \arg2
    .endif
    .if \argCount > 3
        .long \arg3
    .endif
    .if \argCount > 4
        .long \arg4
    .endif
    .if \argCount > 5
        .long \arg5
    .endif
    .if \argCount > 6
        .long \arg6
    .endif
    .if \argCount > 7
        .long \arg7
    .endif
    .endm

    .macro InitPokemonSpriteManager
    .long 56
    .endm

    .macro LoadPokemonSpriteDummyResources resID
    .long 57
    .long \resID
    .endm

    .macro AddPokemonSprite battlerRole, trackBattler, spriteID, resID
    .long 58
    .long \battlerRole
    .long \trackBattler
    .long \spriteID
    .long \resID
    .endm

    .macro FreePokemonSpriteManager
    .long 59
    .endm

    .macro RemovePokemonSprite spriteID
    .long 60
    .long \spriteID
    .endm

    .macro CancelTrackingTask taskID
    .long 61
    .long \taskID
    .endm

    .macro SetCameraProjection particleSystem, projection
    .long 62
    .long \particleSystem
    .long \projection
    .endm

    .macro SetCameraFlip particleSystem, flipY
    .long 63
    .long \particleSystem
    .long \flipY
    .endm

    .macro JumpIfBattlerSide battler, addrEnemy, addrPlayer
    .long 64
    .long \battler
    .long (\addrEnemy - .) / 4
    .long (\addrPlayer - .) / 4
    .endm

    .macro PlayPokemonCry modulation, pan, volume
    .long 65
    .long \modulation
    .long \pan
    .long \volume
    .endm

    .macro WaitForPokemonCries fadeOutFrames
    .long 66
    .long \fadeOutFrames
    .endm

    .macro ResetVar
    .long 67
    .endm

    .macro BtlAnimCmd_068 arg0
    .long 68
    .long \arg0
    .endm

    .macro BtlAnimCmd_069 arg0
    .long 69
    .long \arg0
    .endm

    .macro JumpIfWeather addrNoConditions, addrRain, addrSandstorm, addrSunny, addrHail
    .long 70
    .long (\addrNoConditions - .) / 4
    .long (\addrRain - .) / 4
    .long (\addrSandstorm - .) / 4
    .long (\addrSunny - .) / 4
    .long (\addrHail - .) / 4
    .endm

    .macro JumpIfContest addr
    .long 71
    .long (\addr - .) / 4
    .endm

    .macro JumpIfFriendlyFire addr
    .long 72
    .long (\addr - .) / 4
    .endm

    .macro InitSpriteManager managerID, maxSprites, maxCharRes, maxPlttRes, maxCellRes, maxAnimRes, maxMultiCellRes, maxMultiAnimRes
    .long 73
    .long \managerID
    .long \maxSprites
    .long \maxCharRes
    .long \maxPlttRes
    .long \maxCellRes
    .long \maxAnimRes
    .long \maxMultiCellRes
    .long \maxMultiAnimRes
    .endm

    .macro LoadCharResObj managerID, narcMemberIndex
    .long 74
    .long \managerID
    .long \narcMemberIndex
    .endm

    .macro LoadPlttRes managerID, narcMemberIndex, paletteIndex
    .long 75
    .long \managerID
    .long \narcMemberIndex
    .long \paletteIndex
    .endm

    .macro LoadCellResObj managerID, narcMemberIndex
    .long 76
    .long \managerID
    .long \narcMemberIndex
    .endm

    .macro LoadAnimResObj managerID, narcMemberIndex
    .long 77
    .long \managerID
    .long \narcMemberIndex
    .endm

    .macro AddSpriteWithFunc managerID, funcID, charRes, plttRes, cellRes, animRes, multiCellRes, multiAnimRes, argCount, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
    .long 78
    .long \managerID
    .long \funcID
    .long \charRes
    .long \plttRes
    .long \cellRes
    .long \animRes
    .long \multiCellRes
    .long \multiAnimRes
    .long \argCount
    .if \argCount > 0
        .long \arg0
    .endif
    .if \argCount > 1
        .long \arg1
    .endif
    .if \argCount > 2
        .long \arg2
    .endif
    .if \argCount > 3
        .long \arg3
    .endif
    .if \argCount > 4
        .long \arg4
    .endif
    .if \argCount > 5
        .long \arg5
    .endif
    .if \argCount > 6
        .long \arg6
    .endif
    .if \argCount > 7
        .long \arg7
    .endif
    .if \argCount > 8
        .long \arg8
    .endif
    .if \argCount > 9
        .long \arg9
    .endif
    .endm

    .macro AddSprite managerID, spriteID, charRes, plttRes, cellRes, animRes, multiCellRes, multiAnimRes
    .long 79
    .long \managerID
    .long \spriteID
    .long \charRes
    .long \plttRes
    .long \cellRes
    .long \animRes
    .long \multiCellRes
    .long \multiAnimRes
    .endm

    .macro FreeSpriteManager managerID
    .long 80
    .long \managerID
    .endm

    .macro SetPokemonSpriteVisible spriteID, visible
    .long 81
    .long \spriteID
    .long \visible
    .endm

    .macro BtlAnimCmd_082 arg0, arg1, arg2
    .long 82
    .long \arg0
    .long \arg1
    .long \arg2
    .endm

    .macro BtlAnimCmd_083 arg0
    .long 83
    .long \arg0
    .endm

    .macro WaitForLRX
    .long 84
    .endm

    // Convenience Macros

    .macro LoadParticleResource particleSystem, narcMemberID
    InitPokemonSpriteManager
    LoadPokemonSpriteDummyResources 0
    LoadPokemonSpriteDummyResources 1
    LoadPokemonSpriteDummyResources 2
    LoadPokemonSpriteDummyResources 3
    AddPokemonSprite BATTLER_ROLE_PLAYER_1, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    AddPokemonSprite BATTLER_ROLE_ENEMY_1, FALSE, BATTLE_ANIM_MON_SPRITE_1, 1
    AddPokemonSprite BATTLER_ROLE_PLAYER_2, FALSE, BATTLE_ANIM_MON_SPRITE_2, 2
    AddPokemonSprite BATTLER_ROLE_ENEMY_2, FALSE, BATTLE_ANIM_MON_SPRITE_3, 3
    Func_RenderPokemonSprites 0
    LoadParticleSystem \particleSystem, \narcMemberID
    WaitForAnimTasks
    FreePokemonSpriteManager
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_0
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_1
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_2
    RemovePokemonSprite BATTLE_ANIM_MON_SPRITE_3
    .endm

    .text
    .global _start
_start:
