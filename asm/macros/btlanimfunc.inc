#include "constants/battle/battle_anim.h"

    .set FALSE, 0
    .set TRUE, 1

    // Calls a function from src/battle_anim/script_func_tables.c
    // funcID: The function ID to call (0-83, see src/battle_anim/script_func_tables.c)
    // argCount: The number of arguments to pass to the function (0-10)
    // arg0-arg9: The arguments to pass to the function
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

    // Does nothing
    .macro Func_Nop
    CallFunc 0, 0
    .endm

    // Example functions
    .macro Func_AnimExample
    CallFunc 1, 0
    .endm

    .macro Func_SoundExample
    CallFunc 2, 0
    .endm

    .macro Func_GenericExample
    CallFunc 3, 0
    .endm

    // Rotates a battler sprite on the Z axis
    // startAngle: The starting angle (0-65535)
    // endAngle: The ending angle (0-65535)
    // frames: The number of frames to rotate over
    // mode: The rotation mode (optional, see ROTATE_MON_MODE_*)
    // pivotX: The X coordinate of the pivot point (optional, default: center of sprite)
    // pivotY: The Y coordinate of the pivot point (optional, default: center of sprite)
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

    // Performs the shrinking/growing part of the Strength animation
    // shrinkScale: The scale to shrink to (percentage, 100 = normal size)
    // growScale: The scale to grow to (percentage, 100 = normal size)
    // shrinkFrames: The number of frames to shrink over
    // growFrames: The number of frames to grow over
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

    // Performs the Submission animation
    // numRevs: The number of revolutions to perform
    // framesPerRev: The number of frames per revolution
    // battler: The battler whose sprite to animate (any of BATTLE_ANIM_ATTACKER, BATTLE_ANIM_DEFENDER, etc.)
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

    // Performs a little hopping animation as used by e.g. Attract or Charm
    // battlerRole: The role of the battler whose sprite to animate. (optional, See BATTLER_ROLE_*, defaults to BATTLER_ROLE_ATTACKER)
    .macro Func_PlayfulHops battlerRole
    .ifnb \battlerRole
        CallFunc 25, 1, \battlerRole
    .else
        CallFunc 25, 0
    .endif
    .endm

    // Performs the Nightmare animation
    // moveAttacker: Whether to move the attacker offscreen after the animation (TRUE/FALSE)
    .macro Func_Nightmare moveAttacker
    CallFunc 26, 1, \moveAttacker
    .endm

    // Performs the Flail animation
    // mode: The mode of the animation (see FLAIL_MODE_*)
    // shakeExtentX: The extent of the shaking in the X direction
    // shakeExtentY: The extent of the shaking in the Y direction
    // shakeInterval: The number of frames between shakes
    // shakeAmount: The number of shake cycles
    // Note: Technically all arguments except mode are optional, but they all default to 0
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

    // Performs the Magnitude animation
    // value: Doesn't do anything, can be omitted
    .macro Func_Magnitude value
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

    // Fades the background to the specified color and alpha
    // bgType: The background to fade (see FADE_BG_TYPE_*)
    // delay: The delay in frames between each fade step
    // startAlpha: The starting alpha (0-16)
    // endAlpha: The ending alpha (0-16)
    // color: The color to fade to (16-bit BGR555)
    .macro Func_FadeBg bgType, delay, startAlpha, endAlpha, color
    CallFunc 33, 5, \bgType, \delay, \startAlpha, \endAlpha, \color
    .endm

    // Fades a battler sprite to the specified color and alpha and back
    // battler: The battler whose sprite to fade, valid values:
    //   - BATTLE_ANIM_ATTACKER, BATTLE_ANIM_DEFENDER, BATTLE_ANIM_ATTACKER_PARTNER, BATTLE_ANIM_DEFENDER_PARTNER
    //   - BATTLE_ANIM_BATTLER_PLAYER_1, BATTLE_ANIM_BATTLER_PLAYER_2, BATTLE_ANIM_BATTLER_ENEMY_1, BATTLE_ANIM_BATTLER_ENEMY_2
    // fadeStepFrames: The number of frames between each fade step
    // endDelay: The number of frames to wait at the end of the fade (after fading back)
    // color: The color to fade to (16-bit BGR555)
    // alpha: The target alpha to fade to (0-16)
    // holdFrames: The number of frames to hold at the target color and alpha before fading back (optional, defaults to 0)
    .macro Func_FadeBattlerSprite battler, fadeStepFrames, endDelay, color, alpha, holdFrames
    .ifnb \holdFrames
        CallFunc 34, 6, \battler, \fadeStepFrames, \endDelay, \color, \alpha, \holdFrames
    .else
        CallFunc 34, 5, \battler, \fadeStepFrames, \endDelay, \color, \alpha
    .endif
    .endm

    // Scales a Pokemon sprite to the specified size and back to normal N times
    // battlerRole: The role of the battler whose sprite to scale (See BATTLER_ROLE_*, used only for flipping/height calculations)
    // spriteAlpha: The alpha of the sprite (0-16)
    // startScale: The starting scale
    // endScale: The ending scale
    // refScale: The reference scale (the scale at which the sprite is at its original size)
    // cycles: The number of times to scale the sprite
    // frames: The number of frames the scaling should take (combination of SCALE_F and RESTORE_F macros)
    // sprite: The sprite to scale (See BATTLE_ANIM_MON_SPRITE_*)
    // Example call (scales the attacker to 80% -> 120% -> 80% over total 16 frames, 3 times):
    //   Func_ScalePokemonSprite BATTLER_ROLE_ATTACKER, 16, 80, 120, 100, 3, SCALE_F(8) | RESTORE_F(8), BATTLE_ANIM_MON_SPRITE_0
    // Note: Assumes the the battler specified by battlerRole matches the sprite specified by sprite. (See AddPokemonSprite)
    .macro Func_ScalePokemonSprite battlerRole, spriteAlpha, startScale, endScale, refScale, cycles, frames, sprite
    CallFunc 35, 8, \battlerRole, \spriteAlpha, \startScale, \endScale, \refScale, \cycles, \frames, \sprite
    .endm

    // Shakes one or more battlers/sprites
    // extentX: The extent of the shaking in the X direction
    // extentY: The extent of the shaking in the Y direction
    // interval: The number of frames between shakes
    // amount: The number of shake cycles
    // targets: The targets to shake, valid values:
    //   - A combination of BATTLE_ANIM_BATTLER_SPRITE_*
    //   - A combination of BATTLE_ANIM_POKEMON_SPRITE(N) where N is 0-3
    .macro Func_Shake extentX, extentY, interval, amount, targets
    CallFunc 36, 5, \extentX, \extentY, \interval, \amount, \targets
    .endm

    .macro Func_Extrasensory
    CallFunc 37, 0
    .endm

    // Fades one or more Pokemon sprites to the specified alpha
    // targets: The targets to fade (any combination of BATTLE_ANIM_MON_SPRITE_F(N) where N is 0-3)
    // startAlpha: The starting alpha (0-16)
    // endAlpha: The ending alpha (0-16)
    // bgStartAlpha: The starting alpha of the background (0-16)
    // bgEndAlpha: The ending alpha of the background (0-16)
    // frames: The number of frames to fade over
    .macro Func_AlphaFadePokemonSprite targets, startAlpha, endAlpha, bgStartAlpha, bgEndAlpha, frames
    CallFunc 38, 6, \targets, \startAlpha, \endAlpha, \bgStartAlpha, \bgEndAlpha, \frames
    .endm

    .macro Func_OdorSleuth
    CallFunc 39, 0
    .endm

    // Hides or shows a battler sprite
    // target: The battler whose sprite to hide/show (any of BATTLE_ANIM_ATTACKER, BATTLE_ANIM_DEFENDER, etc.)
    // hide: TRUE to hide the sprite, FALSE to show it
    .macro Func_HideBattler target, hide
    CallFunc 40, 2, \target, \hide
    .endm

    .macro Func_FakeOutCurtain
    CallFunc 41, 0
    .endm

    // Scales a battler sprite to the specified size and back to normal
    // target: The battler whose sprite to scale, valid values:
    //   - One of BATTLE_ANIM_BATTLER_SPRITE_*
    //   - One of BATTLE_ANIM_BATTLER_PLAYER_*, BATTLE_ANIM_BATTLER_ENEMY_*
    // startX: The starting X scale
    // endX: The ending X scale
    // startY: The starting Y scale
    // endY: The ending Y scale
    // reference: The reference scale (the scale at which the sprite is at its original size)
    // cycles: Number of cycles/Hold frames (Combination of CYCLES and HOLD_F macros)
    // frames: The number of frames the scaling should take (combination of SCALE_F and RESTORE_F macros)
    .macro Func_ScaleBattlerSprite target, startX, endX, startY, endY, reference, cycles, frames
    CallFunc 42, 8, \target, \startX, \endX, \startY, \endY, \reference, \cycles, \frames
    .endm

    .macro Func_FakeOut
    CallFunc 43, 0
    .endm

    // Scrolls a custom background
    // bgID: The ID of the background to scroll (0-57)
    // startX: The starting X scroll position
    // startY: The starting Y scroll position
    // stepX: The amount to scroll in the X direction each frame
    // stepY: The amount to scroll in the Y direction each frame
    // reverse: TRUE to reverse direction
    // targetBgAlpha: The target alpha of the background (0-16)
    // slowDownTime: The number of frames to slow down over when stopping the scroll
    .macro Func_ScrollCustomBg bgID, startX, startY, stepX, stepY, reverse, targetBgAlpha, slowDownTime
    CallFunc 44, 8, \bgID, \startX, \startY, \stepX, \stepY, \reverse, \targetBgAlpha, \slowDownTime
    .endm

    // Performs the Muddy Water animation
    // See Func_ScrollCustomBg for parameter descriptions
    .macro Func_MuddyWater bgID, startX, startY, stepX, stepY, reverse, targetBgAlpha, slowDownTime
    CallFunc 45, 8, \bgID, \startX, \startY, \stepX, \stepY, \reverse, \targetBgAlpha, \slowDownTime
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

    // Performs the Surf animation
    // mode: Doesn't do anything
    .macro Func_Surf mode
    .ifnb \mode
        CallFunc 49, 1, \mode
    .else
        CallFunc 49, 0
    .endif
    .endm

    // Blinks the attackers battler sprite N times
    // count: The number of times to blink
    // interval: The number of frames between each on/off transition
    .macro Func_BlinkAttacker count, interval
    CallFunc 50, 2, \count, \interval
    .endm

    // Moves a battler sprite left/right
    // frames: The number of frames to move over
    // offset: The amount to move in the X direction (positive = right, negative = left)
    // target: The battler whose sprite to move (any of BATTLE_ANIM_BATTLER_SPRITE_*)
    .macro Func_MoveBattlerX frames, offset, target
    CallFunc 51, 3, \frames, \offset, \target
    .endm

    // Equivalent to Func_MoveBattlerX
    .macro Func_MoveBattlerX2 frames, offset, target
    CallFunc 52, 3, \frames, \offset, \target
    .endm

    // Shakes and scales the attacker's battler sprite
    // scale1: The first scale (percentage, 100 = normal size)
    // scale2: The second scale (percentage, 100 = normal size)
    // frames1: The number of frames to scale to scale1
    // frames2: The number of frames to scale from scale1 to scale2
    // holdFrames: The number of frames to hold at scale1 before scaling to scale2
    // Note: The sprites scale is set back to normal at the end of the animation instantly
    .macro Func_ShakeAndScaleAttacker scale1, scale2, frames1, frames2, holdFrames
    CallFunc 53, 5, \scale1, \scale2, \frames1, \frames2, \holdFrames
    .endm

    // Same as Func_ShakeAndScaleAttacker but allows specifying separate X and Y scales    
    .macro Func_ShakeAndScaleAttacker2 scale1X, scale1Y, scale1Frames, scale2X, scale2Y, scale2Frames, holdFrames
    CallFunc 54, 7, \scale1X, \scale1Y, \scale1Frames, \scale2X, \scale2Y, \scale2Frames, \holdFrames
    .endm

    .macro Func_Camouflage
    CallFunc 55, 0
    .endm

    // a0 and a1 don't do anything
    .macro Func_Superpower a0, a1
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

    // Moves a battler sprite by the specified amount
    // target: The battler whose sprite to move (any of BATTLE_ANIM_BATTLER_SPRITE_*)
    // dx: The amount to move in the X direction (positive = right, negative = left)
    // dy: The amount to move in the Y direction (positive = up, negative = down)
    // frames: The number of frames to move over
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

    // Revolves a battler sprite N times
    // target: The battler whose sprite to revolve (any of BATTLE_ANIM_ATTACKER, BATTLE_ANIM_DEFENDER, etc.)
    // revs: The number of revolutions to perform
    // framesPerRev: The number of frames per revolution
    .macro Func_RevolveBattler target, revs, framesPerRev
    CallFunc 60, 3, \target, \revs, \framesPerRev
    .endm

    // Moves a battler sprite offscreen (horizontally)
    // target: The battler whose sprite to move (any of BATTLE_ANIM_ATTACKER, BATTLE_ANIM_DEFENDER, etc.)
    // frames: The number of frames to move over
    .macro Func_MoveBattlerOffScreen target, frames
    CallFunc 61, 2, \target, \frames
    .endm

    // Moves a battler sprite to its default position (instantly)
    // target: The battler whose sprite to move (any of BATTLE_ANIM_ATTACKER, BATTLE_ANIM_DEFENDER, etc.)
    .macro Func_MoveBattlerToDefaultPos target
    CallFunc 62, 1, \target
    .endm

    // Fades a Pokemon sprite to the specified color and alpha
    // target: The sprite to fade (See BATTLE_ANIM_MON_SPRITE_*)
    // stepFrames: The number of frames between each fade step
    // stepSize: The amount to change the alpha by each step
    // startFrac: The starting fraction/alpha (0-16)
    // endFrac: The ending fraction/alpha (0-16)
    // color: The color to fade to (16-bit BGR555)
    .macro Func_FadePokemonSprite target, stepFrames, stepSize, startFrac, endFrac, color
    CallFunc 63, 6, \target, \stepFrames, \stepSize, \startFrac, \endFrac, \color
    .endm

    // Moves a particle emitter from point A to point B in a straight line
    // emitterID: The ID of the emitter to move (0-19)
    // offsetX: An offset to add to the X coordinate of point B
    // offsetY: An offset to add to the Y coordinate of point B
    // startDelay: The number of frames to wait before starting the movement
    // frames: The number of frames to move over
    // radius: Unused
    // mode: The movement mode (optional, see EMITTER_ANIMATION_MODE_*, default: EMITTER_ANIMATION_MODE_ATK_TO_DEF)
    // params: Combination of
    //   - SKIP_F(n): Skip the first n frames of the movement
    //   - MAX_F(n): Cap the movement to n frames (if the movement would take longer), set to EMITTER_ANIMATION_DEFAULT_FRAMES to disable
    // curve: TRUE/FALSE, whether to use a curved path (optional, default: FALSE)
    .macro Func_MoveEmitterA2BLinear emitterID, offsetX, offsetY, startDelay, frames, radius, mode, params, curve
    .ifnb \curve
        CallFunc 65, 9, \emitterID, \offsetX, \offsetY, \startDelay, \frames, \radius, \mode, \params, \curve
    .else
        .ifnb \params
            CallFunc 65, 8, \emitterID, \offsetX, \offsetY, \startDelay, \frames, \radius, \mode, \params
        .else
            .ifnb \mode
                CallFunc 65, 7, \emitterID, \offsetX, \offsetY, \startDelay, \frames, \radius, \mode
            .else
                CallFunc 65, 6, \emitterID, \offsetX, \offsetY, \startDelay, \frames, \radius
            .endif
        .endif
    .endif
    .endm

    // Moves a particle emitter from point A to point B in a parabolic arc
    // emitterID: The ID of the emitter to move (0-19)
    // offsetX: An offset to add to the X coordinate of point B
    // offsetY: An offset to add to the Y coordinate of point B
    // startDelay: The number of frames to wait before starting the movement
    // frames: The number of frames to move over
    // radius: The radius of the arc
    // mode: The movement mode (optional, see EMITTER_ANIMATION_MODE_*, default: EMITTER_ANIMATION_MODE_ATK_TO_DEF)
    // params: Combination of
    //   - SKIP_F(n): Skip the first n frames of the movement
    //   - MAX_F(n): Cap the movement to n frames (if the movement would take longer), set to EMITTER_ANIMATION_DEFAULT_FRAMES to disable
    // curve: Unused
    .macro Func_MoveEmitterA2BParabolic emitterID, offsetX, offsetY, startDelay, frames, radius, mode, params, curve
    .ifnb \curve
        CallFunc 66, 9, \emitterID, \offsetX, \offsetY, \startDelay, \frames, \radius, \mode, \params, \curve
    .else
        .ifnb \params
            CallFunc 66, 8, \emitterID, \offsetX, \offsetY, \startDelay, \frames, \radius, \mode, \params
        .else
            .ifnb \mode
                CallFunc 66, 7, \emitterID, \offsetX, \offsetY, \startDelay, \frames, \radius, \mode
            .else
                CallFunc 66, 6, \emitterID, \offsetX, \offsetY, \startDelay, \frames, \radius
            .endif
        .endif
    .endif
    .endm

    // Makes a battler sprite gradually appear/disappear (think Dig)
    // target: The battler whose sprite to affect (any of BATTLE_ANIM_ATTACKER, BATTLE_ANIM_DEFENDER, etc.)
    // stepSize: The amount to move the battler by each step (values >0 make the sprite disappear, values <0 make it appear)
    // stepInterval: The number of frames between each step
    .macro Func_BattlerPartialDraw target, stepSize, stepInterval
    .ifnb \stepInterval
        CallFunc 67, 5, \target, 0, 0, \stepSize, \stepInterval
    .else
        CallFunc 67, 4, \target, 0, 0, \stepSize
    .endif
    .endm

    // Shakes the background
    // extentX: The extent of the shaking in the X direction
    // extentY: The extent of the shaking in the Y direction
    // interval: The number of frames between shakes
    // amount: The number of shakes per cycle
    // cycles: The number of shake cycles
    // target: The target background to shake (optional, see SHAKE_BG_TARGET_*, default: SHAKE_BG_TARGET_EFFECT)
    .macro Func_ShakeBg extentX, extentY, interval, amount, cycles, target
    .ifnb \target
        CallFunc 68, 6, \extentX, \extentY, \interval, \amount, \cycles, \target
    .else
        CallFunc 68, 5, \extentX, \extentY, \interval, \amount, \cycles
    .endif
    .endm

    // Pixelates a Pokemon sprite
    // sprite: The sprite to pixelate (See BATTLE_ANIM_MON_SPRITE_*)
    // step: The amount to change the pixelation by each step (positive values increase pixelation, negative values decrease it)
    // startX: The starting pixelation value on the X axis (0-15)
    // startY: The starting pixelation value on the Y axis (0-15)
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

    // Performs the Snatch animation
    // target: The battler whose sprite to animate (any of BATTLE_ANIM_ATTACKER, BATTLE_ANIM_DEFENDER, etc.)
    .macro Func_Snatch target
    CallFunc 71, 1, \target
    .endm

    // Revolves a particle emitter around a battler
    // emitterID: The ID of the emitter to revolve (0-19)
    // sx: The starting X value of the emitter's orbit (in degrees)
    // ex: The ending X value of the emitter's orbit (in degrees)
    // sy: The starting Y value of the emitter's orbit (in degrees)
    // ey: The ending Y value of the emitter's orbit (in degrees)
    // rx: The radius of the emitter's orbit in the X direction
    // ry: The radius of the emitter's orbit in the Y direction
    // frames: The number of frames to revolve over
    // mode: The revolution mode (see EMITTER_REVOLUTION_MODE_*)
    // particleSystem: The particle system the emitter belongs to (0-15)
    .macro Func_RevolveEmitter emitterID, sx, ex, sy, ey, rx, ry, frames, mode, particleSystem
    CallFunc 72, 10, \emitterID, \sx, \ex, \sy, \ey, \rx, \ry, \frames, \mode, \particleSystem
    .endm

    // Moves a particle emitter to/from the top of the viewport
    // emitterID: The ID of the emitter to move (0-19)
    // mode: The movement mode (see EMITTER_ANIMATION_MODE_*)
    // type: The type of movement (EMITTER_ANIMATION_FROM_TOP or EMITTER_ANIMATION_TO_TOP)
    // frames: The number of frames to move over
    // startDelay: The number of frames to wait before starting the movement
    // params: Combination of
    //   - SKIP_F(n): Skip the first n frames of the movement
    //   - MAX_F(n): Cap the movement to n frames (if the movement would take longer), set to EMITTER_ANIMATION_DEFAULT_FRAMES to disable
    .macro Func_MoveEmitterViewportTop emitterID, mode, type, frames, startDelay, params
    .ifnb \params
        CallFunc 73, 6, \emitterID, \mode, \type, \frames, \startDelay, \params
    .else
        CallFunc 73, 5, \emitterID, \mode, \type, \frames, \startDelay
    .endif
    .endm

    // Sets whether the background is displayed in grayscale
    // grayscale: TRUE to set the background to grayscale, FALSE to set it to normal color
    .macro Func_SetBgGrayscale grayscale
    CallFunc 74, 1, \grayscale
    .endm

    // Sets the priority of a Pokemon sprite for a certain number of frames
    // sprite: The sprite to set the priority of (See BATTLE_ANIM_MON_SPRITE_*)
    // maxFrames: The maximum number of frames to set the priority for
    // bg: The background to set the priority relative to (See BATTLE_ANIM_BG_*)
    // spritePrio: The priority to set the sprite to (Or BATTLE_ANIM_DEFAULT_PRIORITY for default behavior)
    // battlerRole: The role of the battler whose sprite to set the priority for (See BATTLER_ROLE_*)
    // Note: This function has a bug, which results in the priority being set to default values if you pass
    //       anything other than BATTLE_ANIM_DEFAULT_PRIORITY for spritePrio. If you pass BATTLE_ANIM_DEFAULT_PRIORITY
    //       it will not set the priority at all, leaving it at whatever it was before.
    .macro Func_SetPokemonSpritePriority sprite, maxFrames, bg, spritePrio, battlerRole
    CallFunc 75, 5, \sprite, \maxFrames, \bg, \spritePrio, \battlerRole
    .endm

    // Performs the Dark Void animation
    // See Func_SetPokemonSpritePriority for parameter descriptions
    // windowType: 0 or 1, not sure what the difference is
    // Note: This function has the same bug as Func_SetPokemonSpritePriority
    .macro Func_DarkVoid sprite, maxFrames, bg, spritePrio, battler, windowType
    CallFunc 75, 7, \sprite, \maxFrames, \bg, \spritePrio, \battler, POKEMON_SPRITE_PRIORITY_MODE_DARK_VOID, \windowType
    .endm

    // Applies a wavy scroll effect to the background
    // frames: The number of frames to apply the effect for
    // Note: Always acts on the Effect BG, which means that SwitchBg must be called first
    .macro Func_ScrollSwitchedBg frames
    CallFunc 76, 1, \frames
    .endm

    // Moves a battler sprite on or off the screen (horizontally)
    // mode: The mode of movement (MOVE_BATTLER_OFF_SCREEN or MOVE_BATTLER_ON_SCREEN)
    // target: The battler whose sprite to move (any of BATTLE_ANIM_ATTACKER, BATTLE_ANIM_DEFENDER, etc.)
    // frames: The number of frames to move over
    // a3/a4: Unused, can be omitted
    .macro Func_MoveBattlerOnOrOffScreen mode, target, frames, a3, a4
    .ifnb \a4
        CallFunc 77, 5, \mode, \target, \frames, \a3, \a4
    .else
        .ifnb \a3
            CallFunc 77, 4, \mode, \target, \frames, \a3
        .else
            CallFunc 77, 3, \mode, \target, \frames
        .endif
    .endif
    .endm

    // Explicitly renders all loaded Pokemon sprites for N frames
    // frames: The number of frames to render for
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

    // Note for the following 4 macros:
    // Depending on which mode is used, specific pokemon sprites must first be loaded using AddPokemonSprite
    // When using STAT_CHANGE_MODE_ATTACKER, sprites must be loaded as follows:
    //     AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    //     AddPokemonSprite BATTLER_ROLE_ATTACKER, FALSE, BATTLE_ANIM_MON_SPRITE_1, 0
    //     AddPokemonSprite BATTLER_ROLE_ATTACKER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_2, 1
    // When using STAT_CHANGE_MODE_DEFENDER, sprites must be loaded as follows:
    //     AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_0, 0
    //     AddPokemonSprite BATTLER_ROLE_DEFENDER, FALSE, BATTLE_ANIM_MON_SPRITE_1, 0
    //     AddPokemonSprite BATTLER_ROLE_DEFENDER_PARTNER, FALSE, BATTLE_ANIM_MON_SPRITE_2, 1

    // Plays the stat increase animation
    // mode: The mode of the animation (STAT_CHANGE_MODE_ATTACKER or STAT_CHANGE_MODE_DEFENDER)
    .macro Func_StatChangeUp mode
    CallFunc 80, 2, 0, \mode
    .endm

    // Plays the stat decrease animation
    // mode: The mode of the animation (STAT_CHANGE_MODE_ATTACKER or STAT_CHANGE_MODE_DEFENDER)
    .macro Func_StatChangeDown mode
    CallFunc 81, 2, 1, \mode
    .endm

    // Plays the generic heal animation
    // mode: The mode of the animation (STAT_CHANGE_MODE_ATTACKER or STAT_CHANGE_MODE_DEFENDER)
    .macro Func_StatChangeHeal mode
    CallFunc 82, 2, 2, \mode
    .endm

    // Plays the metal coat animation (used by Iron Defense, Metal Claw, etc.)
    // mode: The mode of the animation (STAT_CHANGE_MODE_ATTACKER or STAT_CHANGE_MODE_DEFENDER)
    .macro Func_StatChangeMetal mode
    CallFunc 83, 2, 3, \mode
    .endm
