    .equ FALSE, 0
    .equ TRUE, 1

    .macro IfRandomLessThan i, jump
    .long 0
    .long \i
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfRandomGreaterThan i, jump
    .long 1
    .long \i
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfRandomEqualTo i, jump
    .long 2
    .long \i
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfRandomNotEqualTo i, jump
    .long 3
    .long \i
    .long (\jump-.) / 4 - 1
    .endm

    .macro AddToMoveScore i
    .long 4
    .long \i
    .endm

    .macro IfHPPercentLessThan battler, i, jump
    .long 5
    .long \battler
    .long \i
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfHPPercentGreaterThan battler, i, jump
    .long 6
    .long \battler
    .long \i
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfHPPercentEqualTo battler, i, jump
    .long 7
    .long \battler
    .long \i
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfHPPercentNotEqualTo battler, i, jump
    .long 8
    .long \battler
    .long \i
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfStatus battler, status, jump
    .long 9
    .long \battler
    .long \status
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfNotStatus battler, status, jump
    .long 10
    .long \battler
    .long \status
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfVolatileStatus battler, volatile_status, jump
    .long 11
    .long \battler
    .long \volatile_status
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfNotVolatileStatus battler, volatile_status, jump
    .long 12
    .long \battler
    .long \volatile_status
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfMoveEffect battler, move_effects, jump
    .long 13
    .long \battler
    .long \move_effects
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfNotMoveEffect battler, move_effects, jump
    .long 14
    .long \battler
    .long \move_effects
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfSideCondition battler, side_conditions, jump
    .long 15
    .long \battler
    .long \side_conditions
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfNotSideCondition battler, side_conditions, jump
    .long 16
    .long \battler
    .long \side_conditions
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfLoadedLessThan loaded_val, jump
    .long 17
    .long \loaded_val
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfLoadedGreaterThan loaded_val, jump
    .long 18
    .long \loaded_val
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfLoadedEqualTo loaded_val, jump
    .long 19
    .long \loaded_val
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfLoadedNotEqualTo loaded_val, jump
    .long 20
    .long \loaded_val
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfLoadedMask loaded_val, jump
    .long 21
    .long \loaded_val
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfLoadedNotMask loaded_val, jump
    .long 22
    .long \loaded_val
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfMoveEqualTo move, jump
    .long 23
    .long \move
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfMoveNotEqualTo move, jump
    .long 24
    .long \move
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfLoadedinTable table, jump
    .long 25
    .long (\table-.) / 4 - 2
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfLoadedNotinTable table, jump
    .long 26
    .long (\table-.) / 4 - 2
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfAttackerHasDamagingMoves jump
    .long 27
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfAttackerHasNoDamagingMoves jump
    .long 28
    .long (\jump-.) / 4 - 1
    .endm

    .macro LoadTurnCount
    .long 29
    .endm

    .macro LoadTypeFrom load_type_target
    .long 30
    .long \load_type_target
    .endm

    .macro LoadMovePower
    .long 31
    .endm

    .macro FlagMoveDamageScore bool
    .long 32
    .long \bool
    .endm

    .macro LoadBattlerPreviousMove battler
    .long 33
    .long \battler
    .endm

    .macro IfTempEqualTo loaded_val, jump
    .long 34
    .long \loaded_val
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfTempNotEqualTo loaded_val, jump
    .long 35
    .long \loaded_val
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfSpeedCompareEqualTo cmp, jump
    .long 36
    .long \cmp
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfSpeedCompareNotEqualTo cmp, jump
    .long 37
    .long \cmp
    .long (\jump-.) / 4 - 1
    .endm

    .macro CountAlivePartyBattlers battler
    .long 38
    .long \battler
    .endm

    .macro LoadCurrentMove
    .long 39
    .endm

    .macro LoadCurrentMoveEffect
    .long 40
    .endm

    .macro LoadBattlerAbility battler
    .long 41
    .long \battler
    .endm

    .macro CalcMaxEffectiveness
    .long 42
    .endm

    .macro IfMoveEffectivenessEquals modifier, jump
    .long 43
    .long \modifier
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfPartyMemberStatus battler, pokemon_status, jump
    .long 44
    .long \battler
    .long \pokemon_status
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfPartyMemberNotStatus battler, pokemon_status, jump
    .long 45
    .long \battler
    .long \pokemon_status
    .long (\jump-.) / 4 - 1
    .endm

    .macro LoadCurrentWeather
    .long 46
    .endm

    .macro IfCurrentMoveEffectEqualTo battle_effect, jump
    .long 47
    .long \battle_effect
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfCurrentMoveEffectNotEqualTo battle_effect, jump
    .long 48
    .long \battle_effect
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfStatStageLessThan battler, stat, i, jump
    .long 49
    .long \battler
    .long \stat
    .long \i
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfStatStageGreaterThan battler, stat, i, jump
    .long 50
    .long \battler
    .long \stat
    .long \i
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfStatStageEqualTo battler, stat, i, jump
    .long 51
    .long \battler
    .long \stat
    .long \i
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfStatStageNotEqualTo battler, stat, i, jump
    .long 52
    .long \battler
    .long \stat
    .long \i
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfCurrentMoveKills roll_damage, jump
    .long 53
    .long \roll_damage
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfCurrentMoveDoesNotKill roll_damage, jump
    .long 54
    .long \roll_damage
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfMoveKnown battler, move, jump
    .long 55
    .long \battler
    .long \move
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfMoveNotKnown battler, move, jump
    .long 56
    .long \battler
    .long \move
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfMoveEffectKnown battler, battle_effect, jump
    .long 57
    .long \battler
    .long \battle_effect
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfMoveEffectNotKnown battler, battle_effect, jump
    .long 58
    .long \battler
    .long \battle_effect
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfBattlerUnderEffect battler, check_effect, jump
    .long 59
    .long \battler
    .long \check_effect
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfCurrentMoveMatchesEffect check_effect, jump
    .long 60
    .long \check_effect
    .long (\jump-.) / 4 - 1
    .endm

    .macro Escape
    .long 61
    .endm

    .macro Dummy3E i
    .long 62
    .long \i
    .endm

    .macro Dummy3F
    .long 63
    .endm

    .macro LoadHeldItem battler
    .long 64
    .long \battler
    .endm

    .macro LoadHeldItemEffect battler
    .long 65
    .long \battler
    .endm

    .macro LoadGender battler
    .long 66
    .long \battler
    .endm

    .macro LoadIsFirstTurnInBattle battler
    .long 67
    .long \battler
    .endm

    .macro LoadStockpileCount battler
    .long 68
    .long \battler
    .endm

    .macro LoadBattleType
    .long 69
    .endm

    .macro LoadRecycleItem battler
    .long 70
    .long \battler
    .endm

    .macro LoadTypeOfLoadedMove
    .long 71
    .endm

    .macro LoadPowerOfLoadedMove
    .long 72
    .endm

    .macro LoadEffectOfLoadedMove
    .long 73
    .endm

    .macro LoadProtectChain battler
    .long 74
    .long \battler
    .endm

    .macro PushAndGoTo jump
    .long 75
    .long (\jump-.) / 4 - 1
    .endm

    .macro GoTo jump
    .long 76
    .long (\jump-.) / 4 - 1
    .endm

    .macro PopOrEnd
    .long 77
    .endm

    .macro IfLevel check_level, jump
    .long 78
    .long \check_level
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfTargetIsTaunted jump
    .long 79
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfTargetIsNotTaunted jump
    .long 80
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfTargetIsPartner jump
    .long 81
    .long (\jump-.) / 4 - 1
    .endm

    .macro FlagBattlerIsType battler, type
    .long 82
    .long \battler
    .long \type
    .endm

    .macro CheckBattlerAbility battler, ability
    .long 83
    .long \battler
    .long \ability
    .endm

    .macro IfActivatedFlashFire battler, jump
    .long 84
    .long \battler
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfHeldItemEqualTo battler, item, jump
    .long 85
    .long \battler
    .long \item
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfFieldConditionsMask field_conditions, jump
    .long 86
    .long \field_conditions
    .long (\jump-.) / 4 - 1
    .endm

    .macro LoadSpikesLayers battler, side_conditions
    .long 87
    .long \battler
    .long \side_conditions
    .endm

    .macro IfAnyPartyMemberIsWounded battler, jump
    .long 88
    .long \battler
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfAnyPartyMemberUsedPP battler, jump
    .long 89
    .long \battler
    .long (\jump-.) / 4 - 1
    .endm

    .macro LoadFlingPower battler
    .long 90
    .long \battler
    .endm

    .macro LoadCurrentMovePP
    .long 91
    .endm

    .macro IfCanUseLastResort battler, jump
    .long 92
    .long \battler
    .long (\jump-.) / 4 - 1
    .endm

    .macro LoadCurrentMoveClass
    .long 93
    .endm

    .macro LoadDefenderLastUsedMoveClass
    .long 94
    .endm

    .macro LoadBattlerSpeedRank battler
    .long 95
    .long \battler
    .endm

    .macro LoadBattlerTurnCount battler
    .long 96
    .long \battler
    .endm

    .macro IfPartyMemberDealsMoreDamage roll_damage, jump
    .long 97
    .long \roll_damage
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfHasSuperEffectiveMove jump
    .long 98
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfBattlerDealsMoreDamage battler, roll_damage, jump
    .long 99
    .long \battler
    .long \roll_damage
    .long (\jump-.) / 4 - 1
    .endm

    .macro SumPositiveStatStages battler
    .long 100
    .long \battler
    .endm

    .macro DiffStatStages battler, battle_stat
    .long 101
    .long \battler
    .long \battle_stat
    .endm

    .macro IfBattlerHasHigherStat battler, battle_stat, jump
    .long 102
    .long \battler
    .long \battle_stat
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfBattlerHasLowerStat battler, battle_stat, jump
    .long 103
    .long \battler
    .long \battle_stat
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfBattlerHasEqualStat battler, battle_stat, jump
    .long 104
    .long \battler
    .long \battle_stat
    .long (\jump-.) / 4 - 1
    .endm

    .macro CheckIfHighestDamageWithPartner roll_damage
    .long 105
    .long \roll_damage
    .endm

    .macro IfBattlerFainted battler, jump
    .long 106
    .long \battler
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfBattlerNotFainted battler, jump
    .long 107
    .long \battler
    .long (\jump-.) / 4 - 1
    .endm

    .macro LoadAbility battler
    .long 108
    .long \battler
    .endm

    .equ TABLE_END, 0xFFFFFFFF

    .macro TableEntry entry
    .long \entry
    .endm

    .macro LabelDistance dst, src
    .long (\dst-\src) / 4
    .endm
