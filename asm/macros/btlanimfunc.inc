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

    .macro Func_RotateMon startAngle, endAngle, frames, mode, pivotX, pivotY
    .ifnb \pivotX
        CallFunc 4, 6, \startAngle, \endAngle, \frames, \mode, \pivotX, \pivotY
    .else
        .ifnb \mode
            CallFunc 4, 4, \startAngle, \endAngle, \frames, \mode
        .else
            CallFunc 4, 3, \startAngle, \endAngle, \frames
        .endif
    .endif
    .endm

    .macro Func_Strength shrinkScale, growScale, shrinkFrames, growFrames
    CallFunc 5, 4, \shrinkScale, \growScale, \shrinkFrames, \growFrames
    .endm

    .macro Func_BulkUp unused
    .ifnb \unused
        CallFunc 6, 1, \unused
    .else
        CallFunc 6, 0
    .endif
    .endm

    .macro Func_DoubleTeam unused
    .ifnb \unused
        CallFunc 7, 1, \unused
    .else
        CallFunc 7, 0
    .endif
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

    .macro Func_Minimize unused
    // Accept 0 or 1 arg; some scripts pass a dummy value
    .ifnb \unused
        CallFunc 22, 1, \unused
    .else
        CallFunc 22, 0
    .endif
    .endm

    .macro Func_FaintAttack
    CallFunc 23, 0
    .endm

    .macro Func_Earthquake mode
    .ifnb \mode
        CallFunc 24, 1, \mode
    .else
        CallFunc 24, 0
    .endif
    .endm

    .macro Func_PlayfulHops battlerRole
    .ifnb \battlerRole
        CallFunc 25, 1, \battlerRole
    .else
        CallFunc 25, 0
    .endif
    .endm

    .macro Func_Nightmare moveAttacker
    CallFunc 26, 1, \moveAttacker
    .endm

    .macro Func_Flail mode, shakeExtentX, shakeExtentY, shakeInterval, shakeAmount
    .ifnb \shakeAmount
        CallFunc 27, 5, \mode, \shakeExtentX, \shakeExtentY, \shakeInterval, \shakeAmount
    .else
        .ifnb \shakeInterval
            CallFunc 27, 4, \mode, \shakeExtentX, \shakeExtentY, \shakeInterval
        .else
            .ifnb \shakeExtentY
                CallFunc 27, 3, \mode, \shakeExtentX, \shakeExtentY
            .else
                .ifnb \shakeExtentX
                    CallFunc 27, 2, \mode, \shakeExtentX
                .else
                    CallFunc 27, 1, \mode
                .endif
            .endif
        .endif
    .endif
    .endm

    .macro Func_Magnitude value
    // Accept 0 or 1 arg; some scripts use CallFunc 28,1,<val>
    .ifnb \value
        CallFunc 28, 1, \value
    .else
        CallFunc 28, 0
    .endif
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
    .ifnb \holdFrames
        CallFunc 34, 6, \battler, \fadeStepFrames, \endDelay, \color, \alpha, \holdFrames
    .else
        CallFunc 34, 5, \battler, \fadeStepFrames, \endDelay, \color, \alpha
    .endif
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

    .macro Func_MuddyWater bgID, startX, startY, stepX, stepY, reverse, p7, p8
    // Supports 7 or 8 args. With 7 args, p7=slowDownTime and alpha defaults to 16.
    // With 8 args, p7=targetBgAlpha and p8=slowDownTime.
    .ifnb \p8
        CallFunc 45, 8, \bgID, \startX, \startY, \stepX, \stepY, \reverse, \p7, \p8
    .else
        CallFunc 45, 8, \bgID, \startX, \startY, \stepX, \stepY, \reverse, 16, \p7
    .endif
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

    .macro Func_Surf mode
    .ifnb \mode
        CallFunc 49, 1, \mode
    .else
        CallFunc 49, 0
    .endif
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

    .macro Func_Superpower a0, a1
    // Accept 0-2 args; pass through when provided
    .ifnb \a1
        CallFunc 56, 2, \a0, \a1
    .else
        .ifnb \a0
            CallFunc 56, 1, \a0
        .else
            CallFunc 56, 0
        .endif
    .endif
    .endm

    .macro Func_MoveBattler target, dx, dy, frames
    CallFunc 57, 4, \frames, \dx, \dy, \target
    .endm

    .macro Func_Mimic
    CallFunc 58, 0
    .endm

    .macro Func_ShadowPunch unused
    .ifnb \unused
        CallFunc 59, 1, \unused
    .else
        CallFunc 59, 0
    .endif
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

    .macro Func_MoveEmitterA2BLinear emitterID, offsetX, offsetY, startDelay, frames, radius, mode, curve, params
    .ifnb \params
        CallFunc 65, 9, \emitterID, \offsetX, \offsetY, \startDelay, \frames, \radius, \mode, \curve, \params
    .else
        .ifnb \curve
            CallFunc 65, 8, \emitterID, \offsetX, \offsetY, \startDelay, \frames, \radius, \mode, \curve
        .else
            .ifnb \mode
                CallFunc 65, 7, \emitterID, \offsetX, \offsetY, \startDelay, \frames, \radius, \mode
            .else
                CallFunc 65, 6, \emitterID, \offsetX, \offsetY, \startDelay, \frames, \radius
            .endif
        .endif
    .endif
    .endm

    .macro Func_MoveEmitterA2BParabolic emitterID, offsetX, offsetY, startDelay, frames, radius, mode, curve, params
    .ifnb \params
        CallFunc 66, 9, \emitterID, \offsetX, \offsetY, \startDelay, \frames, \radius, \mode, \curve, \params
    .else
        .ifnb \curve
            CallFunc 66, 8, \emitterID, \offsetX, \offsetY, \startDelay, \frames, \radius, \mode, \curve
        .else
            .ifnb \mode
                CallFunc 66, 7, \emitterID, \offsetX, \offsetY, \startDelay, \frames, \radius, \mode
            .else
                CallFunc 66, 6, \emitterID, \offsetX, \offsetY, \startDelay, \frames, \radius
            .endif
        .endif
    .endif
    .endm

    .macro Func_MoveEmitterA2BParabolic6 emitterID, offsetX, offsetY, startDelay, frames, radius
    Func_MoveEmitterA2BParabolic \emitterID, \offsetX, \offsetY, \startDelay, \frames, \radius
    .endm

    .macro Func_MoveEmitterA2BParabolic7 emitterID, offsetX, offsetY, startDelay, frames, radius, mode
    Func_MoveEmitterA2BParabolic \emitterID, \offsetX, \offsetY, \startDelay, \frames, \radius, \mode
    .endm

    .macro Func_MoveEmitterA2BParabolic8 emitterID, offsetX, offsetY, startDelay, frames, radius, mode, curve
    Func_MoveEmitterA2BParabolic \emitterID, \offsetX, \offsetY, \startDelay, \frames, \radius, \mode, \curve
    .endm

    .macro Func_MoveEmitterA2BParabolic9 emitterID, offsetX, offsetY, startDelay, frames, radius, mode, curve, params
    Func_MoveEmitterA2BParabolic \emitterID, \offsetX, \offsetY, \startDelay, \frames, \radius, \mode, \curve, \params
    .endm

    .macro Func_BattlerPartialDraw a0, a1, a2, a3, a4
    .ifnb \a4
        CallFunc 67, 5, \a0, \a1, \a2, \a3, \a4
    .else
        CallFunc 67, 4, \a0, \a1, \a2, \a3
    .endif
    .endm

    .macro Func_ShakeBg extentX, extentY, interval, amount, cycles, target
    .ifnb \target
        CallFunc 68, 6, \extentX, \extentY, \interval, \amount, \cycles, \target
    .else
        CallFunc 68, 5, \extentX, \extentY, \interval, \amount, \cycles
    .endif
    .endm

    .macro Func_PixelatePokemonSprite sprite, step, startX, startY
    CallFunc 69, 4, \sprite, \step, \startX, \startY
    .endm

    .macro Func_RolePlay unused
    .ifnb \unused
        CallFunc 70, 1, \unused
    .else
        CallFunc 70, 0
    .endif
    .endm

    .macro Func_Snatch target
    CallFunc 71, 1, \target
    .endm

    .macro Func_RevolveEmitter emitterID, sx, ex, sy, ey, rx, ry, frames, mode, particleSystem
    CallFunc 72, 10, \emitterID, \sx, \ex, \sy, \ey, \rx, \ry, \frames, \mode, \particleSystem
    .endm

    .macro Func_MoveEmitterViewportTop emitterID, mode, type, frames, startDelay, params
    .ifnb \params
        CallFunc 73, 6, \emitterID, \mode, \type, \frames, \startDelay, \params
    .else
        CallFunc 73, 5, \emitterID, \mode, \type, \frames, \startDelay
    .endif
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

    .macro Func_MoveBattlerOnOrOffScreen target, mode, frames, a3, a4
        CallFunc 77, 5, \target, \mode, \frames, \a3, \a4
    .endm

    .macro Func_RenderPokemonSprites frames
    CallFunc 78, 1, \frames
    .endm

    .macro Func_Sketch unused
    .ifnb \unused
        CallFunc 79, 1, \unused
    .else
        CallFunc 79, 0
    .endif
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
