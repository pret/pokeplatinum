#include "constants/battle/battle_anim.h"

    .set FALSE, 0
    .set TRUE, 1

    .macro CallFunc funcID, argCount, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
    .long 45
    .long \funcID
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

    .macro Func_Nop
    CallFunc 0, 0
    .endm

    .macro Func_AnimExample
    CallFunc 1, 0
    .endm

    .macro Func_SoundExample
    CallFunc 2, 0
    .endm

    .macro Func_GenericExample
    CallFunc 3, 0
    .endm

    .macro Func_RotateMon mode, startAngle, endAngle, frames, pivotX, pivotY
    .if \mode == ROTATE_MON_MODE_ATTACKER_CUSTOM_PIVOT
        CallFunc 4, 6, \startAngle, \endAngle, \frames, \mode, \pivotX, \pivotY
    .else \mode == ROTATE_MON_MODE_DEFENDER_REVERSED
        CallFunc 4, 4, \startAngle, \endAngle, \frames, \mode
    .endif
    .endm

    .macro Func_Strength
    CallFunc 5, 0
    .endm

    .macro Func_BulkUp
    CallFunc 6, 0
    .endm

    .macro Func_DoubleTeam
    CallFunc 7, 0
    .endm

    .macro Func_QuickAttack
    CallFunc 8, 0
    .endm

    .macro Func_DrillPeck
    CallFunc 9, 0
    .endm

    .macro Func_Submission numRevs, framesPerRev, battler
    CallFunc 10, 3, \numRevs, \framesPerRev, \battler
    .endm

    .macro Func_Confusion
    CallFunc 11, 0
    .endm

    .macro Func_AcidArmor
    CallFunc 12, 0
    .endm

    .macro Func_Growth
    CallFunc 13, 0
    .endm

    .macro Func_Meditate
    CallFunc 14, 0
    .endm

    .macro Func_Teleport
    CallFunc 15, 0
    .endm

    .macro Func_Flash
    CallFunc 16, 0
    .endm

    .macro Func_NightShadeAttacker
    CallFunc 17, 0
    .endm

    .macro Func_NightShadeDefender
    CallFunc 18, 0
    .endm

    .macro Func_Splash
    CallFunc 19, 0
    .endm

    .macro Func_Spite
    CallFunc 20, 0
    .endm

    .macro Func_Harden
    CallFunc 21, 0
    .endm

    .macro Func_Minimize
    CallFunc 22, 0
    .endm

    .macro Func_FaintAttack
    CallFunc 23, 0
    .endm

    .macro Func_Earthquake
    CallFunc 24, 0
    .endm

    .macro Func_PlayfulHops battlerRole
    CallFunc 25, 1, \battlerRole
    .endm

    .macro Func_Nightmare moveAttacker
    CallFunc 26, 1, \moveAttacker
    .endm

    .macro Func_Flail mode, shakeExtentX, shakeExtentY, shakeInterval, shakeAmount
    CallFunc 27, 5, \mode, \shakeExtentX, \shakeExtentY, \shakeInterval, \shakeAmount
    .endm

    .macro Func_Magnitude
    CallFunc 28, 0
    .endm

    .macro Func_Return
    CallFunc 29, 0
    .endm

    .macro Func_VitalThrow
    CallFunc 30, 0
    .endm

    .macro Func_Swagger
    CallFunc 31, 0
    .endm

    .macro Func_Memento
    CallFunc 32, 0
    .endm

    .macro Func_FadeBg bgType, delay, startValue, endValue, color
    CallFunc 33, 5, \bgType, \delay, \startValue, \endValue, \color
    .endm

    .macro Func_FadeBattlerSprite battler, fadeStepFrames, endDelay, color, alpha, holdFrames
    CallFunc 34, 6, \battler, \fadeStepFrames, \endDelay, \color, \alpha, \holdFrames
    .endm

    .macro Func_ScalePokemonSprite battlerRole, spriteAlpha, startScale, endScale, refScale, cycles, frames, sprite
    CallFunc 35, 8, \battlerRole, \spriteAlpha, \startScale, \endScale, \refScale, \cycles, \frames, \sprite
    .endm

    .macro Func_Shake extentX, extentY, interval, amount, targets
    CallFunc 36, 5, \extentX, \extentY, \interval, \amount, \targets
    .endm

    .macro Func_Extrasensory
    CallFunc 37, 0
    .endm

    .macro Func_AlphaFadePokemonSprite targets, startAlpha, endAlpha, bgStartAlpha, bgEndAlpha, frames
    CallFunc 38, 6, \targets, \startAlpha, \endAlpha, \bgStartAlpha, \bgEndAlpha, \frames
    .endm

    .macro Func_OdorSleuth
    CallFunc 39, 0
    .endm

    .macro Func_HideBattler target, hide
    CallFunc 40, 2, \target, \hide
    .endm

    .macro Func_FakeOutCurtain
    CallFunc 41, 0
    .endm

    .macro Func_ScaleBattlerSprite target, startX, endX, startY, endY, reference, cycles, frames
    CallFunc 42, 8, \target, \startX, \endX, \startY, \endY, \reference, \cycles, \frames
    .endm

    .macro Func_FakeOut
    CallFunc 43, 0
    .endm

    .macro Func_ScrollCustomBg bgID, startX, startY, stepX, stepY, reverse, targetBgAlpha, slowDownTime
    CallFunc 44, 8, \bgID, \startX, \startY, \stepX, \stepY, \reverse, \targetBgAlpha, \slowDownTime
    .endm

    .macro Func_MuddyWater bgID, startX, startY, stepX, stepY, reverse, slowDownTime
    CallFunc 45, 8, \bgID, \startX, \startY, \stepX, \stepY, \reverse, 16, \slowDownTime
    .endm

    .macro Func_Megahorn
    CallFunc 46, 0
    .endm

    .macro Func_MegahornAttacker
    CallFunc 47, 0
    .endm

    .macro Func_MegahornDefender
    CallFunc 48, 0
    .endm

    .macro Func_Surf
    CallFunc 49, 0
    .endm

    .macro Func_BlinkAttacker count, interval
    CallFunc 50, 2, \count, \interval
    .endm

    .macro Func_MoveBattlerX frames, offset, target
    CallFunc 51, 3, \frames, \offset, \target
    .endm

    .macro Func_MoveBattlerX2 frames, offset, target
    CallFunc 52, 3, \frames, \offset, \target
    .endm

    .macro Func_ShakeAndScaleAttacker scale1, scale2, frames1, frames2, holdFrames
    CallFunc 53, 5, \scale1, \scale2, \frames1, \frames2, \holdFrames
    .endm

    .macro Func_ShakeAndScaleAttacker2 scale1X, scale1Y, scale1Frames, scale2X, scale2Y, scale2Frames, holdFrames
    CallFunc 54, 7, \scale1X, \scale1Y, \scale1Frames, \scale2X, \scale2Y, \scale2Frames, \holdFrames
    .endm

    .macro Func_Camouflage
    CallFunc 55, 0
    .endm

    .macro Func_Superpower
    CallFunc 56, 0
    .endm

    .macro Func_MoveBattler target, dx, dy, frames
    CallFunc 57, 4, \frames, \dx, \dy, \target
    .endm

    .macro Func_Mimic
    CallFunc 58, 0
    .endm

    .macro Func_ShadowPunch
    CallFunc 59, 0
    .endm

    .macro Func_RevolveBattler target, revs, framesPerRev
    CallFunc 60, 3, \target, \revs, \framesPerRev
    .endm

    .macro Func_MoveBattlerOffScreen target, frames
    CallFunc 61, 2, \target, \frames
    .endm

    .macro Func_MoveBattlerToDefaultPos target
    CallFunc 62, 1, \target
    .endm

    .macro Func_FadePokemonSprite target, stepFrames, stepSize, startFrac, endFrac, color
    CallFunc 63, 6, \target, \stepFrames, \stepSize, \startFrac, \endFrac, \color
    .endm

    .macro Func_MoveEmitterA2BLinear emitterID, offsetX, offsetY, startDelay, frames, radius
    CallFunc 65, 6, \emitterID, \offsetX, \offsetY, \startDelay, \frames, \radius
    .endm

    .macro Func_MoveEmitterA2BParabolic6 emitterID, offsetX, offsetY, startDelay, frames, radius
    CallFunc 66, 6, \emitterID, \offsetX, \offsetY, \startDelay, \frames, \radius
    .endm

    .macro Func_MoveEmitterA2BParabolic7 emitterID, offsetX, offsetY, startDelay, frames, radius, mode
    CallFunc 66, 7, \emitterID, \offsetX, \offsetY, \startDelay, \frames, \radius, \mode
    .endm

    .macro Func_MoveEmitterA2BParabolic8 emitterID, offsetX, offsetY, startDelay, frames, radius, mode, curve
    CallFunc 66, 8, \emitterID, \offsetX, \offsetY, \startDelay, \frames, \radius, \mode, \curve
    .endm

    .macro Func_MoveEmitterA2BParabolic9 emitterID, offsetX, offsetY, startDelay, frames, radius, mode, curve, params
    CallFunc 66, 9, \emitterID, \offsetX, \offsetY, \startDelay, \frames, \radius, \mode, \curve, \params
    .endm

    .macro Func_BattlerPartialDraw target, stepSize, stepInterval, isSketch
    CallFunc 67, 4, \target, \stepSize, \stepInterval, \isSketch
    .endm

    .macro Func_ShakeBg extentX, extentY, interval, amount, cycles, target
    CallFunc 68, 6, \extentX, \extentY, \interval, \amount, \cycles, \target
    .endm

    .macro Func_PixelatePokemonSprite sprite, step, startX, startY
    CallFunc 69, 4, \sprite, \step, \startX, \startY
    .endm

    .macro Func_RolePlay
    CallFunc 70, 0
    .endm

    .macro Func_Snatch target
    CallFunc 71, 1, \target
    .endm

    .macro Func_RevolveEmitter emitterID, sx, ex, sy, ey, rx, ry, frames, mode, particleSystem
    CallFunc 72, 10, \emitterID, \sx, \ex, \sy, \ey, \rx, \ry, \frames, \mode, \particleSystem
    .endm

    .macro Func_MoveEmitterViewportTop emitterID, mode, type, frames, startDelay, params
    CallFunc 73, 6, \emitterID, \mode, \type, \frames, \startDelay, \params
    .endm

    .macro Func_SetBgGrayscale grayscale
    CallFunc 74, 1, \grayscale
    .endm

    .macro Func_SetPokemonSpritePriority sprite, maxFrames, bg, spritePrio, battler
    CallFunc 75, 5, \sprite, \maxFrames, \bg, \spritePrio, \battler
    .endm

    .macro Func_DarkVoid sprite, maxFrames, bg, spritePrio, battler, mode, windowType
    CallFunc 75, 7, \sprite, \maxFrames, \bg, \spritePrio, \battler, \mode, \windowType
    .endm

    .macro Func_ScrollSwitchedBg frames
    CallFunc 76, 1, \frames
    .endm

    .macro Func_MoveBattlerOnOrOffScreen target, mode, frames
    CallFunc 77, 3, \mode, \target, \frames
    .endm

    .macro Func_RenderPokemonSprites frames
    CallFunc 78, 1, \frames
    .endm

    .macro Func_Sketch
    CallFunc 79, 0
    .endm

    .macro Func_StatChangeUp mode
    CallFunc 80, 2, 0, \mode
    .endm

    .macro Func_StatChangeDown mode
    CallFunc 81, 2, 1, \mode
    .endm

    .macro Func_StatChangeHeal mode
    CallFunc 82, 2, 2, \mode
    .endm

    .macro Func_StatChangeMetal mode
    CallFunc 83, 2, 3, \mode
    .endm
