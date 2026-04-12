#include "data/scripts/aicmd.h"

    .equ FALSE, 0
    .equ TRUE, 1

    .macro IfRandomLessThan i:req, jump:req
    .long AICMD_IFRANDOMLESSTHAN
    .long \i
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfRandomGreaterThan i:req, jump:req
    .long AICMD_IFRANDOMGREATERTHAN
    .long \i
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfRandomEqualTo i:req, jump:req
    .long AICMD_IFRANDOMEQUALTO
    .long \i
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfRandomNotEqualTo i:req, jump:req
    .long AICMD_IFRANDOMNOTEQUALTO
    .long \i
    .long (\jump-.) / 4 - 1
    .endm

    .macro AddToMoveScore i:req
    .long AICMD_ADDTOMOVESCORE
    .long \i
    .endm

    .macro IfHPPercentLessThan battler:req, i:req, jump:req
    .long AICMD_IFHPPERCENTLESSTHAN
    .long \battler
    .long \i
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfHPPercentGreaterThan battler:req, i:req, jump:req
    .long AICMD_IFHPPERCENTGREATERTHAN
    .long \battler
    .long \i
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfHPPercentEqualTo battler:req, i:req, jump:req
    .long AICMD_IFHPPERCENTEQUALTO
    .long \battler
    .long \i
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfHPPercentNotEqualTo battler:req, i:req, jump:req
    .long AICMD_IFHPPERCENTNOTEQUALTO
    .long \battler
    .long \i
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfStatus battler:req, status:req, jump:req
    .long AICMD_IFSTATUS
    .long \battler
    .long \status
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfNotStatus battler:req, status:req, jump:req
    .long AICMD_IFNOTSTATUS
    .long \battler
    .long \status
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfVolatileStatus battler:req, volatile_status:req, jump:req
    .long AICMD_IFVOLATILESTATUS
    .long \battler
    .long \volatile_status
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfNotVolatileStatus battler:req, volatile_status:req, jump:req
    .long AICMD_IFNOTVOLATILESTATUS
    .long \battler
    .long \volatile_status
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfMoveEffect battler:req, move_effects:req, jump:req
    .long AICMD_IFMOVEEFFECT
    .long \battler
    .long \move_effects
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfNotMoveEffect battler:req, move_effects:req, jump:req
    .long AICMD_IFNOTMOVEEFFECT
    .long \battler
    .long \move_effects
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfSideCondition battler:req, side_conditions:req, jump:req
    .long AICMD_IFSIDECONDITION
    .long \battler
    .long \side_conditions
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfNotSideCondition battler:req, side_conditions:req, jump:req
    .long AICMD_IFNOTSIDECONDITION
    .long \battler
    .long \side_conditions
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfLoadedLessThan loaded_val:req, jump:req
    .long AICMD_IFLOADEDLESSTHAN
    .long \loaded_val
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfLoadedGreaterThan loaded_val:req, jump:req
    .long AICMD_IFLOADEDGREATERTHAN
    .long \loaded_val
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfLoadedEqualTo loaded_val:req, jump:req
    .long AICMD_IFLOADEDEQUALTO
    .long \loaded_val
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfLoadedNotEqualTo loaded_val:req, jump:req
    .long AICMD_IFLOADEDNOTEQUALTO
    .long \loaded_val
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfLoadedMask loaded_val:req, jump:req
    .long AICMD_IFLOADEDMASK
    .long \loaded_val
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfLoadedNotMask loaded_val:req, jump:req
    .long AICMD_IFLOADEDNOTMASK
    .long \loaded_val
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfMoveEqualTo move:req, jump:req
    .long AICMD_IFMOVEEQUALTO
    .long \move
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfMoveNotEqualTo move:req, jump:req
    .long AICMD_IFMOVENOTEQUALTO
    .long \move
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfLoadedinTable table:req, jump:req
    .long AICMD_IFLOADEDINTABLE
    .long (\table-.) / 4 - 2
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfLoadedNotinTable table:req, jump:req
    .long AICMD_IFLOADEDNOTINTABLE
    .long (\table-.) / 4 - 2
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfAttackerHasDamagingMoves jump:req
    .long AICMD_IFATTACKERHASDAMAGINGMOVES
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfAttackerHasNoDamagingMoves jump:req
    .long AICMD_IFATTACKERHASNODAMAGINGMOVES
    .long (\jump-.) / 4 - 1
    .endm

    .macro LoadTurnCount
    .long 29
    .endm

    .macro LoadTypeFrom load_type_target:req
    .long AICMD_LOADTYPEFROM
    .long \load_type_target
    .endm

    .macro LoadMovePower
    .long 31
    .endm

    .macro FlagMoveDamageScore bool:req
    .long AICMD_FLAGMOVEDAMAGESCORE
    .long \bool
    .endm

    .macro LoadBattlerPreviousMove battler:req
    .long AICMD_LOADBATTLERPREVIOUSMOVE
    .long \battler
    .endm

    .macro IfTempEqualTo loaded_val:req, jump:req
    .long AICMD_IFTEMPEQUALTO
    .long \loaded_val
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfTempNotEqualTo loaded_val:req, jump:req
    .long AICMD_IFTEMPNOTEQUALTO
    .long \loaded_val
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfSpeedCompareEqualTo cmp:req, jump:req
    .long AICMD_IFSPEEDCOMPAREEQUALTO
    .long \cmp
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfSpeedCompareNotEqualTo cmp:req, jump:req
    .long AICMD_IFSPEEDCOMPARENOTEQUALTO
    .long \cmp
    .long (\jump-.) / 4 - 1
    .endm

    .macro CountAlivePartyBattlers battler:req
    .long AICMD_COUNTALIVEPARTYBATTLERS
    .long \battler
    .endm

    .macro LoadCurrentMove
    .long 39
    .endm

    .macro LoadCurrentMoveEffect
    .long 40
    .endm

    .macro LoadBattlerAbility battler:req
    .long AICMD_LOADBATTLERABILITY
    .long \battler
    .endm

    .macro CalcMaxEffectiveness
    .long 42
    .endm

    .macro IfMoveEffectivenessEquals modifier:req, jump:req
    .long AICMD_IFMOVEEFFECTIVENESSEQUALS
    .long \modifier
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfPartyMemberStatus battler:req, pokemon_status:req, jump:req
    .long AICMD_IFPARTYMEMBERSTATUS
    .long \battler
    .long \pokemon_status
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfPartyMemberNotStatus battler:req, pokemon_status:req, jump:req
    .long AICMD_IFPARTYMEMBERNOTSTATUS
    .long \battler
    .long \pokemon_status
    .long (\jump-.) / 4 - 1
    .endm

    .macro LoadCurrentWeather
    .long 46
    .endm

    .macro IfCurrentMoveEffectEqualTo battle_effect:req, jump:req
    .long AICMD_IFCURRENTMOVEEFFECTEQUALTO
    .long \battle_effect
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfCurrentMoveEffectNotEqualTo battle_effect:req, jump:req
    .long AICMD_IFCURRENTMOVEEFFECTNOTEQUALTO
    .long \battle_effect
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfStatStageLessThan battler:req, stat:req, i:req, jump:req
    .long AICMD_IFSTATSTAGELESSTHAN
    .long \battler
    .long \stat
    .long \i
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfStatStageGreaterThan battler:req, stat:req, i:req, jump:req
    .long AICMD_IFSTATSTAGEGREATERTHAN
    .long \battler
    .long \stat
    .long \i
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfStatStageEqualTo battler:req, stat:req, i:req, jump:req
    .long AICMD_IFSTATSTAGEEQUALTO
    .long \battler
    .long \stat
    .long \i
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfStatStageNotEqualTo battler:req, stat:req, i:req, jump:req
    .long AICMD_IFSTATSTAGENOTEQUALTO
    .long \battler
    .long \stat
    .long \i
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfCurrentMoveKills roll_damage:req, jump:req
    .long AICMD_IFCURRENTMOVEKILLS
    .long \roll_damage
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfCurrentMoveDoesNotKill roll_damage:req, jump:req
    .long AICMD_IFCURRENTMOVEDOESNOTKILL
    .long \roll_damage
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfMoveKnown battler:req, move:req, jump:req
    .long AICMD_IFMOVEKNOWN
    .long \battler
    .long \move
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfMoveNotKnown battler:req, move:req, jump:req
    .long AICMD_IFMOVENOTKNOWN
    .long \battler
    .long \move
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfMoveEffectKnown battler:req, battle_effect:req, jump:req
    .long AICMD_IFMOVEEFFECTKNOWN
    .long \battler
    .long \battle_effect
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfMoveEffectNotKnown battler:req, battle_effect:req, jump:req
    .long AICMD_IFMOVEEFFECTNOTKNOWN
    .long \battler
    .long \battle_effect
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfBattlerUnderEffect battler:req, check_effect:req, jump:req
    .long AICMD_IFBATTLERUNDEREFFECT
    .long \battler
    .long \check_effect
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfCurrentMoveMatchesEffect check_effect:req, jump:req
    .long AICMD_IFCURRENTMOVEMATCHESEFFECT
    .long \check_effect
    .long (\jump-.) / 4 - 1
    .endm

    .macro Escape
    .long 61
    .endm

    .macro Dummy3E i:req
    .long AICMD_DUMMY3E
    .long \i
    .endm

    .macro Dummy3F
    .long 63
    .endm

    .macro LoadHeldItem battler:req
    .long AICMD_LOADHELDITEM
    .long \battler
    .endm

    .macro LoadHeldItemEffect battler:req
    .long AICMD_LOADHELDITEMEFFECT
    .long \battler
    .endm

    .macro LoadGender battler:req
    .long AICMD_LOADGENDER
    .long \battler
    .endm

    .macro LoadIsFirstTurnInBattle battler:req
    .long AICMD_LOADISFIRSTTURNINBATTLE
    .long \battler
    .endm

    .macro LoadStockpileCount battler:req
    .long AICMD_LOADSTOCKPILECOUNT
    .long \battler
    .endm

    .macro LoadBattleType
    .long 69
    .endm

    .macro LoadRecycleItem battler:req
    .long AICMD_LOADRECYCLEITEM
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

    .macro LoadProtectChain battler:req
    .long AICMD_LOADPROTECTCHAIN
    .long \battler
    .endm

    .macro PushAndGoTo jump:req
    .long AICMD_PUSHANDGOTO
    .long (\jump-.) / 4 - 1
    .endm

    .macro GoTo jump:req
    .long AICMD_GOTO
    .long (\jump-.) / 4 - 1
    .endm

    .macro PopOrEnd
    .long 77
    .endm

    .macro IfLevel check_level:req, jump:req
    .long AICMD_IFLEVEL
    .long \check_level
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfTargetIsTaunted jump:req
    .long AICMD_IFTARGETISTAUNTED
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfTargetIsNotTaunted jump:req
    .long AICMD_IFTARGETISNOTTAUNTED
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfTargetIsPartner jump:req
    .long AICMD_IFTARGETISPARTNER
    .long (\jump-.) / 4 - 1
    .endm

    .macro FlagBattlerIsType battler:req, type:req
    .long AICMD_FLAGBATTLERISTYPE
    .long \battler
    .long \type
    .endm

    .macro CheckBattlerAbility battler:req, ability:req
    .long AICMD_CHECKBATTLERABILITY
    .long \battler
    .long \ability
    .endm

    .macro IfActivatedFlashFire battler:req, jump:req
    .long AICMD_IFACTIVATEDFLASHFIRE
    .long \battler
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfHeldItemEqualTo battler:req, item:req, jump:req
    .long AICMD_IFHELDITEMEQUALTO
    .long \battler
    .long \item
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfFieldConditionsMask field_conditions:req, jump:req
    .long AICMD_IFFIELDCONDITIONSMASK
    .long \field_conditions
    .long (\jump-.) / 4 - 1
    .endm

    .macro LoadSpikesLayers battler:req, side_conditions:req
    .long AICMD_LOADSPIKESLAYERS
    .long \battler
    .long \side_conditions
    .endm

    .macro IfAnyPartyMemberIsWounded battler:req, jump:req
    .long AICMD_IFANYPARTYMEMBERISWOUNDED
    .long \battler
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfAnyPartyMemberUsedPP battler:req, jump:req
    .long AICMD_IFANYPARTYMEMBERUSEDPP
    .long \battler
    .long (\jump-.) / 4 - 1
    .endm

    .macro LoadFlingPower battler:req
    .long AICMD_LOADFLINGPOWER
    .long \battler
    .endm

    .macro LoadCurrentMovePP
    .long 91
    .endm

    .macro IfCanUseLastResort battler:req, jump:req
    .long AICMD_IFCANUSELASTRESORT
    .long \battler
    .long (\jump-.) / 4 - 1
    .endm

    .macro LoadCurrentMoveClass
    .long 93
    .endm

    .macro LoadDefenderLastUsedMoveClass
    .long 94
    .endm

    .macro LoadBattlerSpeedRank battler:req
    .long AICMD_LOADBATTLERSPEEDRANK
    .long \battler
    .endm

    .macro LoadBattlerTurnCount battler:req
    .long AICMD_LOADBATTLERTURNCOUNT
    .long \battler
    .endm

    .macro IfPartyMemberDealsMoreDamage roll_damage:req, jump:req
    .long AICMD_IFPARTYMEMBERDEALSMOREDAMAGE
    .long \roll_damage
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfHasSuperEffectiveMove jump:req
    .long AICMD_IFHASSUPEREFFECTIVEMOVE
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfBattlerDealsMoreDamage battler:req, roll_damage:req, jump:req
    .long AICMD_IFBATTLERDEALSMOREDAMAGE
    .long \battler
    .long \roll_damage
    .long (\jump-.) / 4 - 1
    .endm

    .macro SumPositiveStatStages battler:req
    .long AICMD_SUMPOSITIVESTATSTAGES
    .long \battler
    .endm

    .macro DiffStatStages battler:req, battle_stat:req
    .long AICMD_DIFFSTATSTAGES
    .long \battler
    .long \battle_stat
    .endm

    .macro IfBattlerHasHigherStat battler:req, battle_stat:req, jump:req
    .long AICMD_IFBATTLERHASHIGHERSTAT
    .long \battler
    .long \battle_stat
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfBattlerHasLowerStat battler:req, battle_stat:req, jump:req
    .long AICMD_IFBATTLERHASLOWERSTAT
    .long \battler
    .long \battle_stat
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfBattlerHasEqualStat battler:req, battle_stat:req, jump:req
    .long AICMD_IFBATTLERHASEQUALSTAT
    .long \battler
    .long \battle_stat
    .long (\jump-.) / 4 - 1
    .endm

    .macro CheckIfHighestDamageWithPartner roll_damage:req
    .long AICMD_CHECKIFHIGHESTDAMAGEWITHPARTNER
    .long \roll_damage
    .endm

    .macro IfBattlerFainted battler:req, jump:req
    .long AICMD_IFBATTLERFAINTED
    .long \battler
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfBattlerNotFainted battler:req, jump:req
    .long AICMD_IFBATTLERNOTFAINTED
    .long \battler
    .long (\jump-.) / 4 - 1
    .endm

    .macro LoadAbility battler:req
    .long AICMD_LOADABILITY
    .long \battler
    .endm

    .equ TABLE_END, 0xFFFFFFFF

    .macro TableEntry entry:req
    .long \entry
    .endm

    .macro LabelDistance dst:req, src:req
    .long (\dst-\src) / 4
    .endm
