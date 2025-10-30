#include "constants/battle/battle_anim.h"

    .set FALSE, 0
    .set TRUE, 1

    .macro CountArgs count:req, first, rest:vararg
    .ifnb \first
    CountArgs \count+1, \rest
    .else
    .long \count
    .endif
    .endm
    
    .macro UnpackArgs first, rest:vararg
    .ifnb \first
    .long \first
    UnpackArgs \rest
    .endif
    .endm
    
    .macro UnpackArgsWithCount args:vararg
    CountArgs 0, \args
    UnpackArgs \args
    .endm

    // Calls a function from src/battle_anim/script_func_tables.c
    // funcID: The function ID to call (0-83, see src/battle_anim/script_func_tables.c)
    // arg0-arg9: The arguments to pass to the function
    .macro CallFunc funcID:req, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
    .long 45
    .long \funcID
    UnpackArgsWithCount \arg0, \arg1, \arg2, \arg3, \arg4, \arg5, \arg6, \arg7, \arg8, \arg9
    .endm

    // Does nothing
    .macro Func_Nop
    CallFunc 0
    .endm

    // Example functions
    .macro Func_AnimExample
    CallFunc 1
    .endm

    .macro Func_SoundExample
    CallFunc 2
    .endm

    .macro Func_GenericExample
    CallFunc 3
    .endm

    // Rotates a battler sprite on the Z axis
    // startAngle: The starting angle (0-65535)
    // endAngle: The ending angle (0-65535)
    // frames: The number of frames to rotate over
    // mode: The rotation mode (optional, see ROTATE_MON_MODE_*)
    // pivotX: The X coordinate of the pivot point (optional, default: center of sprite)
    // pivotY: The Y coordinate of the pivot point (optional, default: center of sprite)
    .macro Func_RotateMon startAngle:req, endAngle:req, frames:req, mode, pivotX, pivotY
    CallFunc 4, \startAngle, \endAngle, \frames, \mode, \pivotX, \pivotY
    .endm

    // Performs the shrinking/growing part of the Strength animation
    // shrinkScale: The scale to shrink to (percentage, 100 = normal size)
    // growScale: The scale to grow to (percentage, 100 = normal size)
    // shrinkFrames: The number of frames to shrink over
    // growFrames: The number of frames to grow over
    .macro Func_Strength shrinkScale:req, growScale:req, shrinkFrames:req, growFrames:req
    CallFunc 5, \shrinkScale, \growScale, \shrinkFrames, \growFrames
    .endm

    .macro Func_BulkUp unused
    CallFunc 6, \unused
    .endm

    .macro Func_DoubleTeam unused
    CallFunc 7, \unused
    .endm

    .macro Func_QuickAttack
    CallFunc 8
    .endm

    .macro Func_DrillPeck
    CallFunc 9
    .endm

    // Performs the Submission animation
    // numRevs: The number of revolutions to perform
    // framesPerRev: The number of frames per revolution
    // battler: The battler whose sprite to animate (any of BATTLE_ANIM_ATTACKER, BATTLE_ANIM_DEFENDER, etc.)
    .macro Func_Submission numRevs:req, framesPerRev:req, battler:req
    CallFunc 10, \numRevs, \framesPerRev, \battler
    .endm

    .macro Func_Confusion
    CallFunc 11
    .endm

    .macro Func_AcidArmor
    CallFunc 12
    .endm

    .macro Func_Growth
    CallFunc 13
    .endm

    .macro Func_Meditate
    CallFunc 14
    .endm

    .macro Func_Teleport
    CallFunc 15
    .endm

    .macro Func_Flash
    CallFunc 16
    .endm

    .macro Func_NightShadeAttacker
    CallFunc 17
    .endm

    .macro Func_NightShadeDefender
    CallFunc 18
    .endm

    .macro Func_Splash
    CallFunc 19
    .endm

    .macro Func_Spite
    CallFunc 20
    .endm

    .macro Func_Harden
    CallFunc 21
    .endm

    .macro Func_Minimize unused
    CallFunc 22, \unused
    .endm

    .macro Func_FaintAttack
    CallFunc 23
    .endm

    .macro Func_Earthquake mode
    CallFunc 24, \mode
    .endm

    // Performs a little hopping animation as used by e.g. Attract or Charm
    // battlerRole: The role of the battler whose sprite to animate. (optional, See BATTLER_ROLE_*, defaults to BATTLER_ROLE_ATTACKER)
    .macro Func_PlayfulHops battlerRole
    CallFunc 25, \battlerRole
    .endm

    // Performs the Nightmare animation
    // moveAttacker: Whether to move the attacker offscreen after the animation (TRUE/FALSE)
    .macro Func_Nightmare moveAttacker:req
    CallFunc 26, \moveAttacker
    .endm

    // Performs the Flail animation
    // mode: The mode of the animation (see FLAIL_MODE_*)
    // shakeExtentX: The extent of the shaking in the X direction
    // shakeExtentY: The extent of the shaking in the Y direction
    // shakeInterval: The number of frames between shakes
    // shakeAmount: The number of shake cycles
    // Note: Technically all arguments except mode are optional, but they all default to 0
    .macro Func_Flail mode:req, shakeExtentX, shakeExtentY, shakeInterval, shakeAmount
    CallFunc 27, \mode, \shakeExtentX, \shakeExtentY, \shakeInterval, \shakeAmount
    .endm

    // Performs the Magnitude animation
    // value: Doesn't do anything, can be omitted
    .macro Func_Magnitude value
    CallFunc 28, \value
    .endm

    .macro Func_Return
    CallFunc 29
    .endm

    .macro Func_VitalThrow
    CallFunc 30
    .endm

    .macro Func_Swagger
    CallFunc 31
    .endm

    .macro Func_Memento
    CallFunc 32
    .endm

    // Fades the background to the specified color and alpha
    // bgType: The background to fade (see FADE_BG_TYPE_*)
    // delay: The delay in frames between each fade step
    // startAlpha: The starting alpha (0-16)
    // endAlpha: The ending alpha (0-16)
    // color: The color to fade to (16-bit BGR555)
    .macro Func_FadeBg bgType:req, delay:req, startAlpha:req, endAlpha:req, color:req
    CallFunc 33, \bgType, \delay, \startAlpha, \endAlpha, \color
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
    .macro Func_FadeBattlerSprite battler:req, fadeStepFrames:req, endDelay:req, color:req, alpha:req, holdFrames
    CallFunc 34, \battler, \fadeStepFrames, \endDelay, \color, \alpha, \holdFrames
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
    .macro Func_ScalePokemonSprite battlerRole:req, spriteAlpha:req, startScale:req, endScale:req, refScale:req, cycles:req, frames:req, sprite:req
    CallFunc 35, \battlerRole, \spriteAlpha, \startScale, \endScale, \refScale, \cycles, \frames, \sprite
    .endm

    // Shakes one or more battlers/sprites
    // extentX: The extent of the shaking in the X direction
    // extentY: The extent of the shaking in the Y direction
    // interval: The number of frames between shakes
    // amount: The number of shake cycles
    // targets: The targets to shake, valid values:
    //   - A combination of BATTLE_ANIM_BATTLER_SPRITE_*
    //   - A combination of BATTLE_ANIM_POKEMON_SPRITE(N) where N is 0-3
    .macro Func_Shake extentX:req, extentY:req, interval:req, amount:req, targets:req
    CallFunc 36, \extentX, \extentY, \interval, \amount, \targets
    .endm

    .macro Func_Extrasensory
    CallFunc 37
    .endm

    // Fades one or more Pokemon sprites to the specified alpha
    // targets: The targets to fade (any combination of BATTLE_ANIM_MON_SPRITE_F(N) where N is 0-3)
    // startAlpha: The starting alpha (0-16)
    // endAlpha: The ending alpha (0-16)
    // bgStartAlpha: The starting alpha of the background (0-16)
    // bgEndAlpha: The ending alpha of the background (0-16)
    // frames: The number of frames to fade over
    .macro Func_AlphaFadePokemonSprite targets:req, startAlpha:req, endAlpha:req, bgStartAlpha:req, bgEndAlpha:req, frames:req
    CallFunc 38, \targets, \startAlpha, \endAlpha, \bgStartAlpha, \bgEndAlpha, \frames
    .endm

    .macro Func_OdorSleuth
    CallFunc 39
    .endm

    // Hides or shows a battler sprite
    // target: The battler whose sprite to hide/show (any of BATTLE_ANIM_ATTACKER, BATTLE_ANIM_DEFENDER, etc.)
    // hide: TRUE to hide the sprite, FALSE to show it
    .macro Func_HideBattler target:req, hide:req
    CallFunc 40, \target, \hide
    .endm

    .macro Func_FakeOutCurtain
    CallFunc 41
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
    .macro Func_ScaleBattlerSprite target:req, startX:req, endX:req, startY:req, endY:req, reference:req, cycles:req, frames:req
    CallFunc 42, \target, \startX, \endX, \startY, \endY, \reference, \cycles, \frames
    .endm

    .macro Func_FakeOut
    CallFunc 43
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
    .macro Func_ScrollCustomBg bgID:req, startX:req, startY:req, stepX:req, stepY:req, reverse:req, targetBgAlpha:req, slowDownTime:req
    CallFunc 44, \bgID, \startX, \startY, \stepX, \stepY, \reverse, \targetBgAlpha, \slowDownTime
    .endm

    // Performs the Muddy Water animation
    // See Func_ScrollCustomBg for parameter descriptions
    .macro Func_MuddyWater bgID:req, startX:req, startY:req, stepX:req, stepY:req, reverse:req, targetBgAlpha:req, slowDownTime:req
    CallFunc 45, \bgID, \startX, \startY, \stepX, \stepY, \reverse, \targetBgAlpha, \slowDownTime
    .endm

    .macro Func_Megahorn
    CallFunc 46
    .endm

    .macro Func_MegahornAttacker
    CallFunc 47
    .endm

    .macro Func_MegahornDefender
    CallFunc 48
    .endm

    // Performs the Surf animation
    // mode: Doesn't do anything, can be omitted
    .macro Func_Surf mode
    CallFunc 49, \mode
    .endm

    // Blinks the attackers battler sprite N times
    // count: The number of times to blink
    // interval: The number of frames between each on/off transition
    .macro Func_BlinkAttacker count:req, interval:req
    CallFunc 50, \count, \interval
    .endm

    // Moves a battler sprite left/right
    // frames: The number of frames to move over
    // offset: The amount to move in the X direction (positive = right, negative = left)
    // target: The battler whose sprite to move (any of BATTLE_ANIM_BATTLER_SPRITE_*)
    .macro Func_MoveBattlerX frames:req, offset:req, target:req
    CallFunc 51, \frames, \offset, \target
    .endm

    // Equivalent to Func_MoveBattlerX
    .macro Func_MoveBattlerX2 frames:req, offset:req, target:req
    CallFunc 52, \frames, \offset, \target
    .endm

    // Shakes and scales the attacker's battler sprite
    // scale1: The first scale (percentage, 100 = normal size)
    // scale2: The second scale (percentage, 100 = normal size)
    // frames1: The number of frames to scale to scale1
    // frames2: The number of frames to scale from scale1 to scale2
    // holdFrames: The number of frames to hold at scale1 before scaling to scale2
    // Note: The sprites scale is set back to normal at the end of the animation instantly
    .macro Func_ShakeAndScaleAttacker scale1:req, scale2:req, frames1:req, frames2:req, holdFrames:req
    CallFunc 53, \scale1, \scale2, \frames1, \frames2, \holdFrames
    .endm

    // Same as Func_ShakeAndScaleAttacker but allows specifying separate X and Y scales
    .macro Func_ShakeAndScaleAttacker2 scale1X:req, scale1Y:req, scale1Frames:req, scale2X:req, scale2Y:req, scale2Frames:req, holdFrames:req
    CallFunc 54, \scale1X, \scale1Y, \scale1Frames, \scale2X, \scale2Y, \scale2Frames, \holdFrames
    .endm

    .macro Func_Camouflage
    CallFunc 55
    .endm

    // a0 and a1 don't do anything and can be omitted
    .macro Func_Superpower a0, a1
    CallFunc 56, \a0, \a1
    .endm

    // Moves a battler sprite by the specified amount
    // target: The battler whose sprite to move (any of BATTLE_ANIM_BATTLER_SPRITE_*)
    // dx: The amount to move in the X direction (positive = right, negative = left)
    // dy: The amount to move in the Y direction (positive = up, negative = down)
    // frames: The number of frames to move over
    .macro Func_MoveBattler target:req, dx:req, dy:req, frames:req
    CallFunc 57, \frames, \dx, \dy, \target
    .endm

    .macro Func_Mimic
    CallFunc 58
    .endm

    .macro Func_ShadowPunch unused
    CallFunc 59, \unused
    .endm

    // Revolves a battler sprite N times
    // target: The battler whose sprite to revolve (any of BATTLE_ANIM_ATTACKER, BATTLE_ANIM_DEFENDER, etc.)
    // revs: The number of revolutions to perform
    // framesPerRev: The number of frames per revolution
    .macro Func_RevolveBattler target:req, revs:req, framesPerRev:req
    CallFunc 60, \target, \revs, \framesPerRev
    .endm

    // Moves a battler sprite offscreen (horizontally)
    // target: The battler whose sprite to move (any of BATTLE_ANIM_ATTACKER, BATTLE_ANIM_DEFENDER, etc.)
    // frames: The number of frames to move over
    .macro Func_MoveBattlerOffScreen target:req, frames:req
    CallFunc 61, \target, \frames
    .endm

    // Moves a battler sprite to its default position (instantly)
    // target: The battler whose sprite to move (any of BATTLE_ANIM_ATTACKER, BATTLE_ANIM_DEFENDER, etc.)
    .macro Func_MoveBattlerToDefaultPos target:req
    CallFunc 62, \target
    .endm

    // Fades a Pokemon sprite to the specified color and alpha
    // target: The sprite to fade (See BATTLE_ANIM_MON_SPRITE_*)
    // stepFrames: The number of frames between each fade step
    // stepSize: The amount to change the alpha by each step
    // startFrac: The starting fraction/alpha (0-16)
    // endFrac: The ending fraction/alpha (0-16)
    // color: The color to fade to (16-bit BGR555)
    .macro Func_FadePokemonSprite target:req, stepFrames:req, stepSize:req, startFrac:req, endFrac:req, color:req
    CallFunc 63, \target, \stepFrames, \stepSize, \startFrac, \endFrac, \color
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
    .macro Func_MoveEmitterA2BLinear emitterID:req, offsetX:req, offsetY:req, startDelay:req, frames:req, radius:req, mode, params, curve
    CallFunc 65, \emitterID, \offsetX, \offsetY, \startDelay, \frames, \radius, \mode, \params, \curve
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
    .macro Func_MoveEmitterA2BParabolic emitterID:req, offsetX:req, offsetY:req, startDelay:req, frames:req, radius:req, mode, params, curve
    CallFunc 66, \emitterID, \offsetX, \offsetY, \startDelay, \frames, \radius, \mode, \params, \curve
    .endm

    // Makes a battler sprite gradually appear/disappear (think Dig)
    // target: The battler whose sprite to affect (any of BATTLE_ANIM_ATTACKER, BATTLE_ANIM_DEFENDER, etc.)
    // stepSize: The amount to move the battler by each step (values >0 make the sprite disappear, values <0 make it appear)
    // stepInterval: The number of frames between each step
    .macro Func_BattlerPartialDraw target:req, stepSize:req, stepInterval
    CallFunc 67, \target, 0, 0, \stepSize, \stepInterval
    .endm

    // Shakes the background
    // extentX: The extent of the shaking in the X direction
    // extentY: The extent of the shaking in the Y direction
    // interval: The number of frames between shakes
    // amount: The number of shakes per cycle
    // cycles: The number of shake cycles
    // target: The target background to shake (optional, see SHAKE_BG_TARGET_*, default: SHAKE_BG_TARGET_EFFECT)
    .macro Func_ShakeBg extentX:req, extentY:req, interval:req, amount:req, cycles:req, target
    CallFunc 68, \extentX, \extentY, \interval, \amount, \cycles, \target
    .endm

    // Pixelates a Pokemon sprite
    // sprite: The sprite to pixelate (See BATTLE_ANIM_MON_SPRITE_*)
    // step: The amount to change the pixelation by each step (positive values increase pixelation, negative values decrease it)
    // startX: The starting pixelation value on the X axis (0-15)
    // startY: The starting pixelation value on the Y axis (0-15)
    .macro Func_PixelatePokemonSprite sprite:req, step:req, startX:req, startY:req
    CallFunc 69, \sprite, \step, \startX, \startY
    .endm

    .macro Func_RolePlay unused
    CallFunc 70, \unused
    .endm

    // Performs the Snatch animation
    // target: The battler whose sprite to animate (any of BATTLE_ANIM_ATTACKER, BATTLE_ANIM_DEFENDER, etc.)
    .macro Func_Snatch target:req
    CallFunc 71, \target
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
    .macro Func_RevolveEmitter emitterID:req, sx:req, ex:req, sy:req, ey:req, rx:req, ry:req, frames:req, mode:req, particleSystem:req
    CallFunc 72, \emitterID, \sx, \ex, \sy, \ey, \rx, \ry, \frames, \mode, \particleSystem
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
    .macro Func_MoveEmitterViewportTop emitterID:req, mode:req, type:req, frames:req, startDelay:req, params
    CallFunc 73, \emitterID, \mode, \type, \frames, \startDelay, \params
    .endm

    // Sets whether the background is displayed in grayscale
    // grayscale: TRUE to set the background to grayscale, FALSE to set it to normal color
    .macro Func_SetBgGrayscale grayscale:req
    CallFunc 74, \grayscale
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
    .macro Func_SetPokemonSpritePriority sprite:req, maxFrames:req, bg:req, spritePrio:req, battlerRole:req
    CallFunc 75, \sprite, \maxFrames, \bg, \spritePrio, \battlerRole
    .endm

    // Performs the Dark Void animation
    // See Func_SetPokemonSpritePriority for parameter descriptions
    // windowType: 0 or 1, not sure what the difference is
    // Note: This function has the same bug as Func_SetPokemonSpritePriority
    .macro Func_DarkVoid sprite:req, maxFrames:req, bg:req, spritePrio:req, battler:req, windowType:req
    CallFunc 75, \sprite, \maxFrames, \bg, \spritePrio, \battler, POKEMON_SPRITE_PRIORITY_MODE_DARK_VOID, \windowType
    .endm

    // Applies a wavy scroll effect to the background
    // frames: The number of frames to apply the effect for
    // Note: Always acts on the Effect BG, which means that SwitchBg must be called first
    .macro Func_ScrollSwitchedBg frames:req
    CallFunc 76, \frames
    .endm

    // Moves a battler sprite on or off the screen (horizontally)
    // mode: The mode of movement (MOVE_BATTLER_OFF_SCREEN or MOVE_BATTLER_ON_SCREEN)
    // target: The battler whose sprite to move (any of BATTLE_ANIM_ATTACKER, BATTLE_ANIM_DEFENDER, etc.)
    // frames: The number of frames to move over
    // a3/a4: Unused, can be omitted
    .macro Func_MoveBattlerOnOrOffScreen mode:req, target:req, frames:req, a3, a4
    CallFunc 77, \mode, \target, \frames, \a3, \a4
    .endm

    // Explicitly renders all loaded Pokemon sprites for N frames
    // frames: The number of frames to render for
    .macro Func_RenderPokemonSprites frames:req
    CallFunc 78, \frames
    .endm

    .macro Func_Sketch unused
    CallFunc 79, \unused
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
    .macro Func_StatChangeUp mode:req
    CallFunc 80, 0, \mode
    .endm

    // Plays the stat decrease animation
    // mode: The mode of the animation (STAT_CHANGE_MODE_ATTACKER or STAT_CHANGE_MODE_DEFENDER)
    .macro Func_StatChangeDown mode:req
    CallFunc 81, 1, \mode
    .endm

    // Plays the generic heal animation
    // mode: The mode of the animation (STAT_CHANGE_MODE_ATTACKER or STAT_CHANGE_MODE_DEFENDER)
    .macro Func_StatChangeHeal mode:req
    CallFunc 82, 2, \mode
    .endm

    // Plays the metal coat animation (used by Iron Defense, Metal Claw, etc.)
    // mode: The mode of the animation (STAT_CHANGE_MODE_ATTACKER or STAT_CHANGE_MODE_DEFENDER)
    .macro Func_StatChangeMetal mode:req
    CallFunc 83, 3, \mode
    .endm
