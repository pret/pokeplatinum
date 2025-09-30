#include "generated/sdat.h"
#include "constants/battle/battle_anim.h"
#include "res/battle/particles/waza_particle.naix.h"
#include "res/graphics/battle/moves/wecell.naix.h"
#include "res/graphics/battle/moves/wecellanm.naix.h"
#include "res/graphics/battle/moves/wechar.naix.h"
#include "res/graphics/battle/moves/wepltt.naix.h"

#include "macros/btlanimfunc.inc"

    // Delays the script for a number of frames.
    // frames: Number of frames to delay.
    .macro Delay frames
    .long 0
    .long \frames
    .endm

    // Waits for all animation tasks to complete. Mostly relevant for Func_* commands in btlanimfunc.inc.
    .macro WaitForAnimTasks
    .long 1
    .endm

    // Begins a loop that repeats a specified number of times.
    // loops: Number of times to repeat the loop.
    .macro BeginLoop loops
    .long 2
    .long \loops
    .endm

    // Marks the end of a loop started with BeginLoop.
    .macro EndLoop
    .long 3
    .endm

    // Marks the end of the animation script.
    .macro End
    .long 4
    .endm

    // Plays a sound effect.
    // seqID: The ID of the sound effect to play. See build/generated/sdat.h for a list of sound effect IDs.
    .macro PlaySoundEffect seqID
    .long 5
    .long \seqID
    .endm

    // 6: Nop
    // 7: Nop

    // Sets the alpha blending for BG0 and BG1
    // ev1: The blend coefficient for BG0 (0-16)
    // ev2: The blend coefficient for BG1 (0-16)
    .macro SetBg0Bg1AlphaBlending ev1, ev2
    .long 8
    .long \ev1
    .long \ev2
    .endm

    // Sets default alpha blending (8, 8)
    .macro SetDefaultAlphaBlending
    .long 9
    .endm

    // Calls a subroutine at the specified address
    // addr: Address of the subroutine to call
    .macro Call addr
    .long 10
    .long (\addr - .) / 4
    .endm

    // Returns from a subroutine
    .macro Return
    .long 11
    .endm

    // Sets a script variable to a specified value
    // varID: ID of the variable to set (0-9)
    // value: Value to set the variable to (32-bit signed integer)
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

    // Jumps to the specified address
    // addr: Address to jump to
    .macro Jump addr
    .long 15
    .long (\addr - .) / 4
    .endm

    // Switches the background to a specified background from pl_batt_bg.narc
    // bgID: ID of the background to switch to (0-57)
    // param: Additional parameters for the background switch (see BATTLE_BG_SWITCH_MODE_* and BATTLE_BG_SWITCH_FLAG_*)
    // Note: When using BATTLE_BG_SWITCH_MODE_FADE, you must set BATTLE_ANIM_VAR_BG_FADE_TYPE
    // to either BATTLE_BG_FADE_TO_BLACK or BATTLE_BG_FADE_TO_WHITE using the SetVar command.
    .macro SwitchBg bgID, param
    .long 16
    .long \bgID
    .long \param
    .endm

    // Sets a variable related to background switching
    // var: ID of the variable to set (see BATTLE_ANIM_VAR_BG_MOVE_*)
    // value: Value to set the variable to (16-bit signed integer)
    // Note: This function can only be called AFTER a SwitchBg/RestoreBg command.
    .macro SetBgSwitchVar var, value
    .long 17
    .long \var
    .long \value
    .endm

    // Restores the background to the original background before a SwitchBg command
    // bgID: ID of the background to restore to (0-57), not actually used
    // param: Additional parameters for the background switch (see BATTLE_BG_SWITCH_MODE_* and BATTLE_BG_SWITCH_FLAG_*)
    // Note: Same conditions as SwitchBg apply.
    .macro RestoreBg bgID, param
    .long 18
    .long \bgID
    .long \param
    .endm

    // Waits for the background switch to complete partially
    // Only relevant when using BATTLE_BG_SWITCH_MODE_FADE
    .macro WaitForPartialBgSwitch
    .long 19
    .endm

    // Waits for the background switch to complete fully
    .macro WaitForBgSwitch
    .long 20
    .endm

    // Switches the background without any transition
    // bgID: ID of the background to switch to (0-57)
    .macro SetBg bgID
    .long 21
    .long \bgID
    .endm

    // Plays a sound effect with panning
    // seqID: The ID of the sound effect to play. See build/generated/sdat.h
    // pan: The pan of the sound effect. [-117, 117] See BATTLE_SOUND_PAN_*
    // Note: In most cases, using PlaySoundEffectL/C/R is preferred.
    .macro PlayPannedSoundEffect seqID, pan
    .long 22
    .long \seqID
    .long \pan
    .endm

    // Convenience macros for PlayPannedSoundEffect with preset panning
    .macro PlaySoundEffectL seqID
    PlayPannedSoundEffect \seqID, BATTLE_SOUND_PAN_LEFT
    .endm

    .macro PlaySoundEffectC seqID
    PlayPannedSoundEffect \seqID, BATTLE_SOUND_PAN_CENTER
    .endm

    .macro PlaySoundEffectR seqID
    PlayPannedSoundEffect \seqID, BATTLE_SOUND_PAN_RIGHT
    .endm

    // Pans all currently playing sound effects to the specified pan
    // pan: The pan to set all sound effects to. [-117, 117] See BATTLE_SOUND_PAN_*
    .macro PanSoundEffects pan
    .long 23
    .long \pan
    .endm

    // Plays a sound effect that moves from startPan to endPan over time, adjusted for attacker/defender positions
    // seqID: The ID of the sound effect to play. See build/generated/sdat.h
    // startPan: The starting pan of the sound effect.
    // endPan: The ending pan of the sound effect.
    // panStep: The amount to change the pan by each interval.
    // applyInterval: The number of frames between each pan change.
    // Note: Generally you will want to set startPan to BATTLE_SOUND_PAN_LEFT and endPan to BATTLE_SOUND_PAN_RIGHT
    // if you want your sound effect to pan from the attacker to the defender.
    .macro PlayMovingSoundEffectAtkDef seqID, startPan, endPan, panStep, applyInterval
    .long 24
    .long \seqID
    .long \startPan
    .long \endPan
    .long \panStep
    .long \applyInterval
    .endm

    // Plays a sound effect N times in a loop with panning
    // seqID: The ID of the sound effect to play. See build/generated/sdat.h
    // pan: The pan of the sound effect.
    // applyInterval: The number of frames between each sound effect play.
    // repeatCount: The number of times to repeat the sound effect.
    .macro PlayLoopedSoundEffect seqID, pan, applyInterval, repeatCount
    .long 25
    .long \seqID
    .long \pan
    .long \applyInterval
    .long \repeatCount
    .endm

    // Convenience macros for PlayLoopedSoundEffect with preset panning
    .macro PlayLoopedSoundEffectL seqID, applyInterval, repeatCount
    PlayLoopedSoundEffect \seqID, BATTLE_SOUND_PAN_LEFT, \applyInterval, \repeatCount
    .endm

    .macro PlayLoopedSoundEffectC seqID, applyInterval, repeatCount
    PlayLoopedSoundEffect \seqID, BATTLE_SOUND_PAN_CENTER, \applyInterval, \repeatCount
    .endm

    .macro PlayLoopedSoundEffectR seqID, applyInterval, repeatCount
    PlayLoopedSoundEffect \seqID, BATTLE_SOUND_PAN_RIGHT, \applyInterval, \repeatCount
    .endm

    // Plays a sound effect after a delay
    // seqID: The ID of the sound effect to play. See build/generated/sdat.h
    // pan: The pan of the sound effect.
    // delay: The number of frames to wait before playing the sound effect.
    .macro PlayDelayedSoundEffect seqID, pan, delay
    .long 26
    .long \seqID
    .long \pan
    .long \delay
    .endm

    // Convenience macros for PlayDelayedSoundEffect with preset panning
    .macro PlayDelayedSoundEffectL seqID, delay
    PlayDelayedSoundEffect \seqID, BATTLE_SOUND_PAN_LEFT, \delay
    .endm

    .macro PlayDelayedSoundEffectC seqID, delay
    PlayDelayedSoundEffect \seqID, BATTLE_SOUND_PAN_CENTER, \delay
    .endm

    .macro PlayDelayedSoundEffectR seqID, delay
    PlayDelayedSoundEffect \seqID, BATTLE_SOUND_PAN_RIGHT, \delay
    .endm

    // 27: Nop
    // 28: Nop

    // Waits for all currently playing sound effects to finish
    .macro WaitForSoundEffects
    .long 29
    .endm

    // Jumps to the specified address if the specified variable equals the specified value
    // varID: ID of the variable to check (0-9)
    // value: Value to compare the variable to (32-bit signed integer)
    // addr: Address to jump to if the variable equals the value
    .macro JumpIfEqual varID, value, addr
    .long 30
    .long \varID
    .long \value
    .long (\addr - .) / 4
    .endm

    // Loads a Pokemon sprite into the background layer
    // battlerRobattlerRolele: The role of the battler whose sprite to load. See BATTLER_ROLE_*
    // trackBattler: Whether to track the battler's position. (TRUE/FALSE)
    // Note: This is usually used if some advanced scrolling effect should be applied to a battler.
    // The sprite is loaded into BATTLE_BG_BASE (BG2).
    .macro LoadPokemonSpriteIntoBg battlerRole, trackBattler
    .long 31
    .long \battlerRole
    .long \trackBattler
    .endm

    // Removes a Pokemon sprite from the background layer
    // unused: Unused parameter, set to 0
    .macro RemovePokemonSpriteFromBg unused
    .long 32
    .long \unused
    .endm

    .macro BtlAnimCmd_033 addr
    .long 33
    .long \addr
    .endm

    // Switches the background to a specified background from pl_batt_bg.narc based on the situation
    // bgPlayerAttack: ID of the background to switch to when the player is attacking (0-57)
    // bgEnemyAttack: ID of the background to switch to when the enemy is attacking (0-57)
    // bgContest: ID of the background to switch to in contests (0-57)
    // Note: This command will always use BATTLE_BG_SWITCH_MODE_BLEND
    .macro SwitchBgEx bgPlayerAttack, bgEnemyAttack, bgContest
    .long 34
    .long \bgPlayerAttack
    .long \bgEnemyAttack
    .long \bgContest
    .endm

    // Plays a sound effect that moves from startPan to endPan over time, without adjusting for attacker/defender positions
    // seqID: The ID of the sound effect to play. See build/generated/sdat.h
    // startPan: The starting pan of the sound effect.
    // endPan: The ending pan of the sound effect.
    // panStep: The amount to change the pan by each interval.
    // applyInterval: The number of frames between each pan change.
    .macro PlayMovingSoundEffectNoCorrection seqID, startPan, endPan, panStep, applyInterval
    .long 35
    .long \seqID
    .long \startPan
    .long \endPan
    .long \panStep
    .long \applyInterval
    .endm

    // Plays a sound effect that moves from startPan to endPan over time, adjusted for attacker/defender positions
    // seqID: The ID of the sound effect to play. See build/generated/sdat.h
    // startPan: The starting pan of the sound effect.
    // endPan: The ending pan of the sound effect.
    // panStep: The amount to change the pan by each interval.
    // applyInterval: The number of frames between each pan change.
    // Note: Functionally almost identical to PlayMovingSoundEffectAtkDef, but this command
    // performs pan correction on the panStep as well.
    .macro PlayMovingSoundEffectAtkDef2 seqID, startPan, endPan, panStep, applyInterval
    .long 36
    .long \seqID
    .long \startPan
    .long \endPan
    .long \panStep
    .long \applyInterval
    .endm

    // 37: Nop
    // 38: Nop
    // 39: Nop
    // 40: Nop
    // 41: Nop
    // 42: Nop
    // 43: Nop

    // Stops a sound effect
    // seqID: The ID of the sound effect to stop. See build/generated/sdat.h
    .macro StopSoundEffect seqID
    .long 44
    .long \seqID
    .endm

    // Creates a particle emitter
    // particleSystem: The particle system to use. (0-15)
    // resourceID: The resource ID of the particle emitter to create. See waza_particle.naix.h for a list of resource IDs.
    // callbackID: The callback ID to use for the particle emitter. (0-22, see src/battle_anim/battle_particle_util.c)
    .macro CreateEmitter particleSystem, resourceID, callbackID
    .long 46
    .long \particleSystem
    .long \resourceID
    .long \callbackID
    .endm

    // Creates a particle emitter with an explicit emitter index
    // particleSystem: The particle system to use. (0-15)
    // emitterIndex: The index of the emitter to create. (0-19)
    // resourceID: The resource ID of the particle emitter to create. See waza_particle.naix.h for a list of resource IDs.
    // callbackID: The callback ID to use for the particle emitter. (0-22, see src/battle_anim/battle_particle_util.c)
    .macro CreateEmitterEx particleSystem, emitterIndex, resourceID, callbackID
    .long 47
    .long \particleSystem
    .long \emitterIndex
    .long \resourceID
    .long \callbackID
    .endm

    // Creates a particle emitter for a move, with resources for different orientations
    // particleSystem: The particle system to use. (0-15)
    // res*: Resource IDs based on attacker/defender configuration. See enum BattleAnimParticleResource
    // for move information.
    // callbackID: The callback ID to use for the particle emitter. (0-22, see src/battle_anim/battle_particle_util.c)
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

    // Creates a particle emitter for a move that hit an ally
    // particleSystem: The particle system to use. (0-15)
    // resPl: Resource ID to use when the player is attacking their ally
    // resEm: Resource ID to use when the enemy is attacking their ally
    // unused0: Unused parameter, set to 0
    // unused1: Unused parameter, set to 0
    // callbackID: The callback ID to use for the particle emitter. (0-22, see src/battle_anim/battle_particle_util.c)
    .macro CreateEmitterForFriendlyFire particleSystem, resPl, resEm, unused0, unused1, callbackID
    .long 49
    .long \particleSystem
    .long \resPl
    .long \resEm
    .long \unused0
    .long \unused1
    .long \callbackID
    .endm

    // Waits for all emitters (regardless of particle system) to finish
    .macro WaitForAllEmitters
    .long 50
    .endm

    // Loads a particle system from waza_particle.narc
    // particleSystem: The particle system to load. (0-15)
    // narcMemberID: The member ID in waza_particle.narc to load (See waza_particle.naix.h)
    // Note: Advanced use only, use LoadParticleResource instead.
    .macro LoadParticleSystem particleSystem, narcMemberID
    .long 51
    .long \particleSystem
    .long \narcMemberID
    .endm

    // Loads a particle system from debug_particle.narc 
    // particleSystem: The particle system to load. (0-15)
    // narcID: The NARC ID to load from (ignored)
    // narcMemberID: The member ID in the specified NARC to load
    // Note: Will not work, as debug_particle.narc is not present in the final game.
    .macro LoadDebugParticleSystem particleSystem, narcID, narcMemberID
    .long 52
    .long \particleSystem
    .long \narcID
    .long \narcMemberID
    .endm

    // Unloads a particle system
    // particleSystem: The particle system to unload. (0-15)
    .macro UnloadParticleSystem particleSystem
    .long 53
    .long \particleSystem
    .endm

    // 54: Nop

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

    // Initializes the main Pokemon sprite manager
    .macro InitPokemonSpriteManager
    .long 56
    .endm

    // Loads dummy resources for a Pokemon sprite
    // resID: The resource ID to use, can be anything.
    .macro LoadPokemonSpriteDummyResources resID
    .long 57
    .long \resID
    .endm

    // Adds a Pokemon sprite to the pokemon sprite manager
    // battlerRole: The role of the battler whose sprite to load. See BATTLER_ROLE_*
    // trackBattler: Whether to track the battler's position. (TRUE/FALSE)
    // spriteID: The ID to assign to the sprite. See BATTLE_ANIM_MON_SPRITE_*
    // resID: The resource ID to use, must match the ID used in LoadPokemonSpriteDummyResources
    // Note: This command will fail if LoadPokemonSpriteDummyResources was not called first with the same resID.
    .macro AddPokemonSprite battlerRole, trackBattler, spriteID, resID
    .long 58
    .long \battlerRole
    .long \trackBattler
    .long \spriteID
    .long \resID
    .endm

    // Frees the main Pokemon sprite manager and all associated resources
    .macro FreePokemonSpriteManager
    .long 59
    .endm

    // Removes a Pokemon sprite from the pokemon sprite manager
    // spriteID: The ID of the sprite to remove. See BATTLE_ANIM_MON_SPRITE_*
    .macro RemovePokemonSprite spriteID
    .long 60
    .long \spriteID
    .endm

    // Cancels a tracking task
    // task: The task to cancel. See enum BattleAnimTrackingTask
    .macro CancelTrackingTask task
    .long 61
    .long \task
    .endm

    // Sets the camera projection mode for a particle system
    // particleSystem: The particle system to modify. (0-15)
    // projection: The projection mode to set. 0 for perspective, 1 for orthographic.
    // Note: Default camera projection is orthographic.
    .macro SetCameraProjection particleSystem, projection
    .long 62
    .long \particleSystem
    .long \projection
    .endm

    // Sets whether to flip the Y axis for a particle system
    // particleSystem: The particle system to modify. (0-15)
    // flipY: Whether to flip the Y axis. (TRUE/FALSE)
    // Note: Default is FALSE (no flip).
    .macro SetCameraFlip particleSystem, flipY
    .long 63
    .long \particleSystem
    .long \flipY
    .endm

    // Jumps to one of two addresses based on the side of the specified battler
    // battler: The battler to check. Either BATTLER_ROLE_ATTACKER or BATTLER_ROLE_DEFENDER.
    // addrEnemy: Address to jump to if the battler is on the enemy side
    // addrPlayer: Address to jump to if the battler is on the player side
    .macro JumpIfBattlerSide battler, addrEnemy, addrPlayer
    .long 64
    .long \battler
    .long (\addrEnemy - .) / 4
    .long (\addrPlayer - .) / 4
    .endm

    // Plays the cry of the attacker
    // modulation: The cry modulation to use. See enum PokemonCryMod
    // pan: The pan to play the cry at.
    // volume: The volume to play the cry at. (0-127)
    .macro PlayPokemonCry modulation, pan, volume
    .long 65
    .long \modulation
    .long \pan
    .long \volume
    .endm

    // Waits for all currently playing Pokemon cries to finish, with an optional fade out
    // fadeOutFrames: The number of frames to fade out over. If 0, no fade out is performed.
    .macro WaitForPokemonCries fadeOutFrames
    .long 66
    .long \fadeOutFrames
    .endm

    // Resets all script variables to 0
    .macro ResetVars
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

    // Jumps to one of five addresses based on the current weather
    // addrNoConditions: Address to jump to if there is no weather condition
    // addrRain: Address to jump to if it is raining
    // addrSandstorm: Address to jump to if there is a sandstorm
    // addrSunny: Address to jump to if it is sunny
    // addrHail: Address to jump to if it is hailing
    .macro JumpIfWeather addrNoConditions, addrRain, addrSandstorm, addrSunny, addrHail
    .long 70
    .long (\addrNoConditions - .) / 4
    .long (\addrRain - .) / 4
    .long (\addrSandstorm - .) / 4
    .long (\addrSunny - .) / 4
    .long (\addrHail - .) / 4
    .endm

    // Jumps to the specified address if we are in a contest
    // addr: Address to jump to if in a contest
    .macro JumpIfContest addr
    .long 71
    .long (\addr - .) / 4
    .endm

    // Jumps to the specified address if the move is hitting an ally
    // addr: Address to jump to if the move is hitting an ally (i.e. attacker side == defender side)
    .macro JumpIfFriendlyFire addr
    .long 72
    .long (\addr - .) / 4
    .endm

    // Initializes a sprite manager
    // managerID: ID to assign to the sprite manager (0-3)
    // maxSprites: Maximum number of sprites the manager can hold
    // maxCharRes: Maximum number of character resources the manager can hold
    // maxPlttRes: Maximum number of palette resources the manager can hold
    // maxCellRes: Maximum number of cell resources the manager can hold
    // maxAnimRes: Maximum number of animation resources the manager can hold
    // maxMultiCellRes: Maximum number of multi-cell resources the manager can hold
    // maxMultiAnimRes: Maximum number of multi-animation resources the manager can hold
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

    // Loads a character resource into a sprite manager
    // managerID: ID of the sprite manager to load into (0-3)
    // narcMemberIndex: Index of the character resource (See wechar.naix.h)
    .macro LoadCharResObj managerID, narcMemberIndex
    .long 74
    .long \managerID
    .long \narcMemberIndex
    .endm

    // Loads a palette resource into a sprite manager
    // managerID: ID of the sprite manager to load into (0-3)
    // narcMemberIndex: Index of the palette resource (See wepltt.naix.h)
    // paletteIndex: Index of the palette within the resource to load (0-15)
    .macro LoadPlttRes managerID, narcMemberIndex, paletteIndex
    .long 75
    .long \managerID
    .long \narcMemberIndex
    .long \paletteIndex
    .endm

    // Loads a cell resource into a sprite manager
    // managerID: ID of the sprite manager to load into (0-3)
    // narcMemberIndex: Index of the cell resource (See wecell.naix.h)
    .macro LoadCellResObj managerID, narcMemberIndex
    .long 76
    .long \managerID
    .long \narcMemberIndex
    .endm

    // Loads an animation resource into a sprite manager
    // managerID: ID of the sprite manager to load into (0-3)
    // narcMemberIndex: Index of the animation resource (See wecellanm.naix.h)
    .macro LoadAnimResObj managerID, narcMemberIndex
    .long 77
    .long \managerID
    .long \narcMemberIndex
    .endm

    // Adds a sprite to a sprite manager with a callback
    // managerID: ID of the sprite manager to add to (0-3)
    // funcID: ID of the callback function to use (0-32, see src/battle_anim/script_func_tables.c)
    // charRes: Index of the character resource to use. (Same as for LoadCharResObj)
    // plttRes: Index of the palette resource to use. (Same as for LoadPlttRes)
    // cellRes: Index of the cell resource to use. (Same as for LoadCellResObj)
    // animRes: Index of the animation resource to use. (Same as for LoadAnimResObj)
    // multiCellRes: Always 0
    // multiAnimRes: Always 0
    // argCount: Number of additional arguments to pass to the callback (0-10)
    // arg0-arg9: Additional arguments to pass to the callback
    // Note: All resource indices specified here must have been previously loaded into the sprite manager.
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

    // Adds a sprite to a sprite manager
    // managerID: ID of the sprite manager to add to (0-3)
    // spriteID: ID to assign to the sprite (0-9)
    // charRes: Index of the character resource to use. (Same as for LoadCharResObj)
    // plttRes: Index of the palette resource to use. (Same as for LoadPlttRes)
    // cellRes: Index of the cell resource to use. (Same as for LoadCellResObj)
    // animRes: Index of the animation resource to use. (Same as for LoadAnimResObj)
    // multiCellRes: Always 0
    // multiAnimRes: Always 0
    // Note: All resource indices specified here must have been previously loaded into the sprite manager.
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

    // Frees a sprite manager and all associated resources
    // managerID: ID of the sprite manager to free (0-3)
    .macro FreeSpriteManager managerID
    .long 80
    .long \managerID
    .endm

    // Sets the visibility of a pokemon sprite
    // spriteID: ID of the sprite to modify. See BATTLE_ANIM_MON_SPRITE_*
    // visible: Whether the sprite should be visible. (TRUE/FALSE)
    // Note: This only affects sprite explicitly added with AddPokemonSprite.
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

    // Waits for either L, R, or X button to be pressed
    .macro WaitForLRX
    .long 84
    .endm

    // Convenience Macros

    // Loads a particle system from waza_particle.narc
    // particleSystem: The particle system to load. (0-15)
    // narcMemberID: The member ID in waza_particle.narc to load (See waza_particle.naix.h)
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
