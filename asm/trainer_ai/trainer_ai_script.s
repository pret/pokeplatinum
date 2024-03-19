    .ifndef ASM_BATTLE_SCRIPT_INC
    .set ASM_BATTLE_SCRIPT_INC, 1
#define __ASM_PM_

#include "constants/battle.h"
#include "constants/items.h"
#include "constants/battle/trainer_ai.h"

    .include "consts/generated/asm/abilities.inc"
    .include "consts/generated/asm/battle.inc"
    .include "consts/generated/asm/battle_controller_params.inc"
    .include "consts/generated/asm/battle_lib_params.inc"
    .include "consts/generated/asm/gender.inc"
    .include "consts/generated/asm/items.inc"
    .include "consts/generated/asm/moves.inc"
    .include "consts/generated/asm/pokemon.inc"
    .include "consts/generated/asm/trainer_ai.inc"
    .include "macros/aicmd.inc"

    .text

    .global gTrainerAITable
gTrainerAITable:

TrainerAI_FlagTable:
    LabelDistance TrainerAI_Basic_Main,          TrainerAI_FlagTable ; AI_FLAG_BASIC
    LabelDistance TrainerAI_EvalAttack_Main,     TrainerAI_FlagTable ; AI_FLAG_EVAL_ATTACK
    LabelDistance TrainerAI_Expert_Main,         TrainerAI_FlagTable ; AI_FLAG_EXPERT
    LabelDistance TrainerAI_SetupFirstTurn_Main, TrainerAI_FlagTable ; AI_FLAG_SETUP_FIRST_TURN
    LabelDistance TrainerAI_Risky_Main,          TrainerAI_FlagTable ; AI_FLAG_RISKY
    LabelDistance TrainerAI_DamagePriority_Main, TrainerAI_FlagTable ; AI_FLAG_DAMAGE_PRIORITY
    LabelDistance TrainerAI_BatonPass_Main,      TrainerAI_FlagTable ; AI_FLAG_BATON_PASS
    LabelDistance TrainerAI_TagStrategy_Main,    TrainerAI_FlagTable ; AI_FLAG_TAG_STRATEGY
    LabelDistance TrainerAI_CheckHP_Main,        TrainerAI_FlagTable ; AI_FLAG_CHECK_HP
    LabelDistance TrainerAI_Weather_Main,        TrainerAI_FlagTable ; AI_FLAG_WEATHER
    LabelDistance TrainerAI_Harrassment_Main,    TrainerAI_FlagTable ; AI_FLAG_HARRASSMENT
    LabelDistance TrainerAI_Terminate,           TrainerAI_FlagTable ; AI_FLAG_UNUSED_11
    LabelDistance TrainerAI_Terminate,           TrainerAI_FlagTable ; AI_FLAG_UNUSED_12
    LabelDistance TrainerAI_Terminate,           TrainerAI_FlagTable ; AI_FLAG_UNUSED_13
    LabelDistance TrainerAI_Terminate,           TrainerAI_FlagTable ; AI_FLAG_UNUSED_14
    LabelDistance TrainerAI_Terminate,           TrainerAI_FlagTable ; AI_FLAG_UNUSED_15
    LabelDistance TrainerAI_Terminate,           TrainerAI_FlagTable ; AI_FLAG_UNUSED_16
    LabelDistance TrainerAI_Terminate,           TrainerAI_FlagTable ; AI_FLAG_UNUSED_17
    LabelDistance TrainerAI_Terminate,           TrainerAI_FlagTable ; AI_FLAG_UNUSED_18
    LabelDistance TrainerAI_Terminate,           TrainerAI_FlagTable ; AI_FLAG_UNUSED_19
    LabelDistance TrainerAI_Terminate,           TrainerAI_FlagTable ; AI_FLAG_UNUSED_20
    LabelDistance TrainerAI_Terminate,           TrainerAI_FlagTable ; AI_FLAG_UNUSED_21
    LabelDistance TrainerAI_Terminate,           TrainerAI_FlagTable ; AI_FLAG_UNUSED_22
    LabelDistance TrainerAI_Terminate,           TrainerAI_FlagTable ; AI_FLAG_UNUSED_23
    LabelDistance TrainerAI_Terminate,           TrainerAI_FlagTable ; AI_FLAG_UNUSED_24
    LabelDistance TrainerAI_Terminate,           TrainerAI_FlagTable ; AI_FLAG_UNUSED_25
    LabelDistance TrainerAI_Terminate,           TrainerAI_FlagTable ; AI_FLAG_UNUSED_26
    LabelDistance TrainerAI_Terminate,           TrainerAI_FlagTable ; AI_FLAG_UNUSED_27
    LabelDistance TrainerAI_Terminate,           TrainerAI_FlagTable ; AI_FLAG_UNUSED_28
    LabelDistance TrainerAI_RoamingPokemon_Main, TrainerAI_FlagTable ; AI_FLAG_ROAMING_POKEMON
    LabelDistance TrainerAI_Safari_Main,         TrainerAI_FlagTable ; AI_FLAG_SAFARI
    LabelDistance TrainerAI_CatchTutorial_Main,  TrainerAI_FlagTable ; AI_FLAG_CATCH_TUTORIAL

TrainerAI_Basic_Main:
    ; Ignore this flag on partner battlers.
    IfTargetIsPartner TrainerAI_Terminate

    ; Skip damage scoring for OHKO moves (only Fissure and Horn Drill)
    IfMoveEqualTo MOVE_FISSURE, TrainerAI_Basic_CheckForImmunity
    IfMoveEqualTo MOVE_HORN_DRILL, TrainerAI_Basic_CheckForImmunity

    ; Score the move according to its damage. If the AI does not know any
    ; moves which are eligible for scoring, skip ahead.
    FlagMoveDamageScore FALSE
    IfLoadedEqualTo AI_NO_COMPARISON_MADE, TrainerAI_Basic_CheckSoundproof

TrainerAI_Basic_CheckForImmunity:
    ; Check for any immunity to the current move based on move type and what
    ; we know the battler's ability to be (if we do at all).
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_ScoreMinus10
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_MOLD_BREAKER, TrainerAI_Basic_NoImmunityAbility
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_VOLT_ABSORB, TrainerAI_Basic_CheckElectricAbsorption
    IfLoadedEqualTo ABILITY_MOTOR_DRIVE, TrainerAI_Basic_CheckElectricAbsorption
    IfLoadedEqualTo ABILITY_WATER_ABSORB, TrainerAI_Basic_CheckWaterAbsorption
    IfLoadedEqualTo ABILITY_FLASH_FIRE, TrainerAI_Basic_CheckFireAbsorption
    IfLoadedEqualTo ABILITY_WONDER_GUARD, TrainerAI_Basic_CheckWonderGuard
    IfLoadedEqualTo ABILITY_LEVITATE, TrainerAI_Basic_CheckGroundAbsorption
    IfLoadedEqualTo ABILITY_LEVITATE, TrainerAI_Basic_CheckWaterAbsorption2 ; BUG: This line should branch on Dry Skin rather than Levitate
    GoTo TrainerAI_Basic_NoImmunityAbility

TrainerAI_Basic_CheckElectricAbsorption:
    LoadTypeFrom LOAD_MOVE_TYPE
    IfTempEqualTo TYPE_ELECTRIC, TrainerAI_ScoreMinus12
    GoTo TrainerAI_Basic_NoImmunityAbility

TrainerAI_Basic_CheckWaterAbsorption:
    LoadTypeFrom LOAD_MOVE_TYPE
    IfTempEqualTo TYPE_WATER, TrainerAI_ScoreMinus12
    GoTo TrainerAI_Basic_NoImmunityAbility

TrainerAI_Basic_CheckFireAbsorption:
    LoadTypeFrom LOAD_MOVE_TYPE
    IfTempEqualTo TYPE_FIRE, TrainerAI_ScoreMinus12
    GoTo TrainerAI_Basic_NoImmunityAbility

TrainerAI_Basic_CheckWonderGuard:
    IfMoveEffectivenessEquals TYPE_MULTI_DOUBLE_DAMAGE, TrainerAI_Basic_NoImmunityAbility
    IfMoveEffectivenessEquals TYPE_MULTI_QUADRUPLE_DAMAGE, TrainerAI_Basic_NoImmunityAbility
    GoTo TrainerAI_ScoreMinus12

TrainerAI_Basic_CheckGroundAbsorption:
    LoadTypeFrom LOAD_MOVE_TYPE
    IfTempEqualTo TYPE_GROUND, TrainerAI_ScoreMinus12
    GoTo TrainerAI_Basic_NoImmunityAbility

TrainerAI_Basic_CheckWaterAbsorption2:
    LoadTypeFrom LOAD_MOVE_TYPE
    IfTempEqualTo TYPE_WATER, TrainerAI_ScoreMinus12
    GoTo TrainerAI_Basic_NoImmunityAbility

TrainerAI_Basic_NoImmunityAbility:
    FlagMoveDamageScore FALSE
    IfLoadedEqualTo AI_NO_COMPARISON_MADE, TrainerAI_Basic_CheckSoundproof

TrainerAI_Basic_CheckSoundproof:
    ; Check for immunity to sound-based moves
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedNotEqualTo ABILITY_SOUNDPROOF, TrainerAI_Basic_ScoreMoveEffect
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_MOLD_BREAKER, TrainerAI_Basic_ScoreMoveEffect
    IfMoveEqualTo MOVE_GROWL, TrainerAI_ScoreMinus10
    IfMoveEqualTo MOVE_ROAR, TrainerAI_ScoreMinus10
    IfMoveEqualTo MOVE_SING, TrainerAI_ScoreMinus10
    IfMoveEqualTo MOVE_SUPERSONIC, TrainerAI_ScoreMinus10
    IfMoveEqualTo MOVE_SCREECH, TrainerAI_ScoreMinus10
    IfMoveEqualTo MOVE_SNORE, TrainerAI_ScoreMinus10
    IfMoveEqualTo MOVE_UPROAR, TrainerAI_ScoreMinus10
    IfMoveEqualTo MOVE_METAL_SOUND, TrainerAI_ScoreMinus10
    IfMoveEqualTo MOVE_GRASS_WHISTLE, TrainerAI_ScoreMinus10
    IfMoveEqualTo MOVE_BUG_BUZZ, TrainerAI_ScoreMinus10
    IfMoveEqualTo MOVE_CHATTER, TrainerAI_ScoreMinus10

TrainerAI_Basic_ScoreMoveEffect:
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STATUS_SLEEP, TrainerAI_Basic_CheckCannotSleep
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HALVE_DEFENSE, TrainerAI_Basic_CheckCannotExplode
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RECOVER_DAMAGE_SLEEP, TrainerAI_Basic_CheckDreamEater
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ATK_UP, TrainerAI_Basic_CheckHighStatStage_Attack
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DEF_UP, TrainerAI_Basic_CheckHighStatStage_Defense
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SPEED_UP, TrainerAI_Basic_CheckHighStatStage_Speed
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_ATK_UP, TrainerAI_Basic_CheckHighStatStage_SpAttack
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_DEF_UP, TrainerAI_Basic_CheckHighStatStage_SpDefense
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ACC_UP, TrainerAI_Basic_CheckHighStatStage_Accuracy
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_EVA_UP, TrainerAI_Basic_CheckHighStatStage_Evasion
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ATK_DOWN, TrainerAI_Basic_CheckLowStatStage_Attack
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DEF_DOWN, TrainerAI_Basic_CheckLowStatStage_Defense
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SPEED_DOWN, TrainerAI_Basic_CheckLowStatStage_Speed
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_ATK_DOWN, TrainerAI_Basic_CheckLowStatStage_SpAttack
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_DEF_DOWN, TrainerAI_Basic_CheckLowStatStage_SpDefense
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ACC_DOWN, TrainerAI_Basic_CheckLowStatStage_Accuracy
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_EVA_DOWN, TrainerAI_Basic_CheckLowStatStage_Evasion
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RESET_STAT_CHANGES, TrainerAI_Basic_CheckStatStageImbalance
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_BIDE, TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_FORCE_SWITCH, TrainerAI_Basic_CheckCanForceSwitch
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RESTORE_HALF_HP, TrainerAI_Basic_CheckCanRecoverHP
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STATUS_BADLY_POISON, TrainerAI_Basic_CheckCannotPoison
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SET_LIGHT_SCREEN, TrainerAI_Basic_CheckAlreadyUnderLightScreen
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ONE_HIT_KO, TrainerAI_Basic_CheckOHKOWouldFail
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_CHARGE_TURN_HIGH_CRIT, TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HALVE_HP, TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_40_DAMAGE_FLAT, TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_PREVENT_STAT_REDUCTION, TrainerAI_Basic_CheckAlreadyUnderMist
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_CRIT_UP_2, TrainerAI_Basic_CheckAlreadyPumpedUp
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STATUS_CONFUSE, TrainerAI_Basic_CheckCannotConfuse
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ATK_UP_2, TrainerAI_Basic_CheckHighStatStage_Attack
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DEF_UP_2, TrainerAI_Basic_CheckHighStatStage_Defense
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SPEED_UP_2, TrainerAI_Basic_CheckHighStatStage_Speed
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_ATK_UP_2, TrainerAI_Basic_CheckHighStatStage_SpAttack
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_DEF_UP_2, TrainerAI_Basic_CheckHighStatStage_SpDefense
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ACC_UP_2, TrainerAI_Basic_CheckHighStatStage_Accuracy
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_EVA_UP_2, TrainerAI_Basic_CheckHighStatStage_Evasion
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ATK_DOWN_2, TrainerAI_Basic_CheckLowStatStage_Attack
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DEF_DOWN_2, TrainerAI_Basic_CheckLowStatStage_Defense
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SPEED_DOWN_2, TrainerAI_Basic_CheckLowStatStage_Speed
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_ATK_DOWN_2, TrainerAI_Basic_CheckLowStatStage_SpAttack
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_DEF_DOWN_2, TrainerAI_Basic_CheckLowStatStage_SpDefense
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_EVA_DOWN_2, TrainerAI_Basic_CheckLowStatStage_Accuracy
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ACC_DOWN_2, TrainerAI_Basic_CheckLowStatStage_Evasion
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SET_REFLECT, TrainerAI_Basic_CheckAlreadyUnderReflect
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STATUS_POISON, TrainerAI_Basic_CheckCannotPoison
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STATUS_PARALYZE, TrainerAI_Basic_CheckCannotParalyze
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SET_SUBSTITUTE, TrainerAI_Basic_CheckCannotSubstitute
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RECHARGE_AFTER, TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STATUS_LEECH_SEED, TrainerAI_Basic_CheckCannotLeechSeed
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DISABLE, TrainerAI_Basic_CheckCannotDisable
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_LEVEL_DAMAGE_FLAT, TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RANDOM_DAMAGE_1_TO_150_LEVEL, TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_COUNTER, TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ENCORE, TrainerAI_Basic_CheckCannotEncore
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DAMAGE_WHILE_ASLEEP, TrainerAI_Basic_CheckAttackerAsleep
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_NEXT_ATTACK_ALWAYS_HITS, TrainerAI_Basic_CheckLockOn
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_USE_RANDOM_LEARNED_MOVE_SLEEP, TrainerAI_Basic_CheckAttackerAsleep
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_INCREASE_POWER_WITH_LESS_HP, TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_PREVENT_ESCAPE, TrainerAI_Basic_CheckMeanLook
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STATUS_NIGHTMARE, TrainerAI_Basic_CheckNightmare
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_EVA_UP_2_MINIMIZE, TrainerAI_Basic_CheckHighStatStage_Evasion
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_CURSE, TrainerAI_Basic_CheckCurse
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SET_SPIKES, TrainerAI_Basic_CheckSpikes
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_IGNORE_EVASION_REMOVE_GHOST_IMMUNE, TrainerAI_Basic_CheckForesight
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ALL_FAINT_3_TURNS, TrainerAI_Basic_CheckPerishSong
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_WEATHER_SANDSTORM, TrainerAI_Basic_CheckSandstorm
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ATK_UP_2_STATUS_CONFUSION, TrainerAI_Basic_CheckCannotConfuse
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_INFATUATE, TrainerAI_Basic_CheckCannotAttract
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_POWER_BASED_ON_FRIENDSHIP, TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RANDOM_POWER_MAYBE_HEAL, TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_POWER_BASED_ON_LOW_FRIENDSHIP, TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_PREVENT_STATUS, TrainerAI_Basic_CheckAlreadyUnderSafeguard
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RANDOM_POWER_10_CASES, TrainerAI_Basic_CheckMagnitude
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_PASS_STATS_AND_STATUS, TrainerAI_Basic_CheckBatonPass
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_10_DAMAGE_FLAT, TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HEAL_HALF_MORE_IN_SUN, TrainerAI_Basic_CheckCanRecoverHP
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_UNUSED_133, TrainerAI_Basic_CheckCanRecoverHP
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_UNUSED_134, TrainerAI_Basic_CheckCanRecoverHP
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RANDOM_POWER_BASED_ON_IVS, TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_WEATHER_RAIN, TrainerAI_Basic_CheckRainDance
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_WEATHER_SUN, TrainerAI_Basic_CheckSunnyDay
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_MAX_ATK_LOSE_HALF_MAX_HP, TrainerAI_Basic_CheckBellyDrum
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_COPY_STAT_CHANGES, TrainerAI_Basic_CheckStatStageImbalance
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_MIRROR_COAT, TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_CHARGE_TURN_DEF_UP, TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HIT_IN_3_TURNS, TrainerAI_Basic_CheckFutureSight
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_FLEE_FROM_WILD_BATTLE, TrainerAI_ScoreMinus10
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DEF_UP_DOUBLE_ROLLOUT_POWER, TrainerAI_Basic_CheckHighStatStage_Defense
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_UNUSED_157, TrainerAI_Basic_CheckCanRecoverHP
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ALWAYS_FLINCH_FIRST_TURN_ONLY, TrainerAI_Basic_CheckFirstTurnInBattle
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STOCKPILE, TrainerAI_Basic_CheckMaxStockpile
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SPIT_UP, TrainerAI_Basic_CheckCanSpitUpOrSwallow
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SWALLOW, TrainerAI_Basic_CheckCanSpitUpOrSwallow
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_WEATHER_HAIL, TrainerAI_Basic_CheckHail
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_TORMENT, TrainerAI_Basic_CheckTorment
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_ATK_UP_CAUSE_CONFUSION, TrainerAI_Basic_CheckCannotConfuse
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STATUS_BURN, TrainerAI_Basic_CheckCannotBurn
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_FAINT_AND_ATK_SP_ATK_DOWN_2, TrainerAI_Basic_CheckMemento
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HIT_LAST_WHIFF_IF_HIT, TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_BOOST_ALLY_POWER_BY_50_PERCENT, TrainerAI_Basic_CheckHelpingHand
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SWITCH_HELD_ITEMS, TrainerAI_Basic_CheckCanRemoveItem
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_GROUND_TRAP_USER_CONTINUOUS_HEAL, TrainerAI_Basic_CheckAlreadyIngrained
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_LOWER_OWN_ATK_AND_DEF, TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RECYCLE, TrainerAI_Basic_CheckCanRecycle
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STATUS_SLEEP_NEXT_TURN, TrainerAI_Basic_CheckCannotSleep
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_REMOVE_HELD_ITEM, TrainerAI_Basic_CheckCanRemoveItem
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SET_HP_EQUAL_TO_USER, TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_MAKE_SHARED_MOVES_UNUSEABLE, TrainerAI_Basic_CheckCanImprison
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HEAL_STATUS, TrainerAI_Basic_CheckCanRefreshStatus
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_INCREASE_POWER_WITH_WEIGHT, TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HALVE_ELECTRIC_DAMAGE, TrainerAI_Basic_CheckCanMudSport
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ATK_DEF_DOWN, TrainerAI_Basic_CheckTickle
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DEF_SPD_UP, TrainerAI_Basic_CheckCosmicPower
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ATK_DEF_UP, TrainerAI_Basic_CheckBulkUp
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HALVE_FIRE_DAMAGE, TrainerAI_Basic_CheckWaterSport
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_ATK_SP_DEF_UP, TrainerAI_Basic_CheckCalmMind
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ATK_SPD_UP, TrainerAI_Basic_CheckDragonDance
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_CAMOUFLAGE, TrainerAI_Basic_CheckCamouflage
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HEAL_HALF_REMOVE_FLYING_TYPE, TrainerAI_Basic_CheckCanRecoverHP
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_GRAVITY, TrainerAI_Basic_CheckGravityActive
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_IGNORE_EVATION_REMOVE_DARK_IMMUNE, TrainerAI_Basic_CheckMiracleEye
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_POWER_BASED_ON_LOW_SPEED, TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_FAINT_AND_FULL_HEAL_NEXT_MON, TrainerAI_Basic_CheckHealingWish
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_NATURAL_GIFT, TrainerAI_Basic_CheckNaturalGift
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DOUBLE_SPEED_3_TURNS, TrainerAI_Basic_CheckTailwind
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RANDOM_STAT_UP_2, TrainerAI_Basic_CheckAcupressure
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_METAL_BURST, TrainerAI_Basic_CheckMetalBurst
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_PREVENT_ITEM_USE, TrainerAI_Basic_CheckEmbargo
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_FLING, TrainerAI_Basic_CheckFling
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_TRANSFER_STATUS, TrainerAI_Basic_CheckCanPsychoShift
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HIGHER_POWER_WHEN_LOW_PP, TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_PREVENT_HEALING, TrainerAI_Basic_CheckHealBlock
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_INCREASE_POWER_WITH_MORE_HP, TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SWAP_ATK_DEF, TrainerAI_Basic_CheckPowerTrick
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SUPRESS_ABILITY, TrainerAI_Basic_CheckGastroAcid
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_PREVENT_CRITS, TrainerAI_Basic_CheckLuckyChant
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_USE_LAST_USED_MOVE, TrainerAI_Basic_CheckCopycat
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SWAP_ATK_SP_ATK_STAT_CHANGES, TrainerAI_Basic_CheckPowerSwap
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SWAP_DEF_SP_DEF_STAT_CHANGES, TrainerAI_Basic_CheckGuardSwap
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_INCREASE_POWER_WITH_MORE_STAT_UP, TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_FAIL_IF_NOT_USED_ALL_OTHER_MOVES, TrainerAI_Basic_CheckLastResort
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SET_ABILITY_TO_INSOMNIA, TrainerAI_Basic_CheckWorrySeed
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_TOXIC_SPIKES, TrainerAI_Basic_CheckToxicSpikes
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SWAP_STAT_CHANGES, TrainerAI_Basic_CheckStatStageImbalance
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RESTORE_HP_EVERY_TURN, TrainerAI_Basic_CheckAquaRing
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_GIVE_GROUND_IMMUNITY, TrainerAI_Basic_CheckMagnetRise
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_REMOVE_HAZARDS_SCREENS_EVA_DOWN, TrainerAI_Basic_CheckDefog
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_TRICK_ROOM, TrainerAI_Basic_CheckTrickRoom
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER, TrainerAI_Basic_CheckCaptivate
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STEALTH_ROCK, TrainerAI_Basic_CheckStealthRock
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_FAINT_FULL_RESTORE_NEXT_MON, TrainerAI_Basic_CheckLunarDance
    PopOrEnd 

TrainerAI_Basic_CheckCannotSleep:
    ; If the target cannot be put to sleep for any reason, score -10.
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_ANY, TrainerAI_ScoreMinus10
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_SAFEGUARD, TrainerAI_ScoreMinus10
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_INSOMNIA, TrainerAI_ScoreMinus10
    IfLoadedEqualTo ABILITY_VITAL_SPIRIT, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckCannotExplode:
    ; If the target is immune, score -10.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_ScoreMinus10

    ; If the target has Damp and we do not have Mold Breaker, score -10.
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_MOLD_BREAKER, TrainerAI_Basic_CheckLastMon
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_DAMP, TrainerAI_ScoreMinus10

TrainerAI_Basic_CheckLastMon:
    ; If we are on our last Pokemon and the target is not also on their last Pokemon,
    ; score -10.
    CountAlivePartyBattlers AI_BATTLER_ATTACKER
    IfLoadedNotEqualTo 0, TrainerAI_Basic_Explode_Terminate
    CountAlivePartyBattlers AI_BATTLER_DEFENDER
    IfLoadedNotEqualTo 0, TrainerAI_ScoreMinus10

    ; If the target is also on their last Pokemon, score -1 instead of -10.
    GoTo TrainerAI_ScoreMinus1

TrainerAI_Basic_Explode_Terminate:
    PopOrEnd 

TrainerAI_Basic_CheckNightmare:
    ; If the target is immune to the effect of Nightmare for any reason, score -8/-10.
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_NIGHTMARE, TrainerAI_ScoreMinus10
    IfNotStatus AI_BATTLER_DEFENDER, MON_CONDITION_SLEEP, TrainerAI_ScoreMinus8
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_MAGIC_GUARD, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckDreamEater:
    ; If the target is immune to Dream Eater for any reason, score -8/-10.
    IfNotStatus AI_BATTLER_DEFENDER, MON_CONDITION_SLEEP, TrainerAI_ScoreMinus8
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckBellyDrum:
    ; If the attacker is at half HP or less, score -10.
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 51, TrainerAI_ScoreMinus10

    ; General comments on stat-boosting Status moves below:
    ;   - If the attacker has Simple and is already at +2, score -10.
    ;   - If the attacker is already at +6, score -10.
    ;   - Special cases for Speed (Trick Room active -> -10) and Accuracy/Evasion (attacker has No Guard -> -10)
TrainerAI_Basic_CheckHighStatStage_Attack:
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedNotEqualTo ABILITY_SIMPLE, TrainerAI_Basic_CheckHighStatStage_Attack_NoSimple
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 8, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckHighStatStage_Attack_NoSimple:
    IfStatStageEqualTo AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 12, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckHighStatStage_Defense:
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedNotEqualTo ABILITY_SIMPLE, TrainerAI_Basic_CheckHighStatStage_Defense_NoSimple
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 8, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckHighStatStage_Defense_NoSimple:
    IfStatStageEqualTo AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 12, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckHighStatStage_Speed:
    IfFieldConditionsMask FIELD_CONDITION_TRICK_ROOM, TrainerAI_ScoreMinus10
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedNotEqualTo ABILITY_SIMPLE, TrainerAI_Basic_CheckHighStatStage_Speed_NoSimple
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_SPEED, 8, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckHighStatStage_Speed_NoSimple:
    IfStatStageEqualTo AI_BATTLER_ATTACKER, BATTLE_STAT_SPEED, 12, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckHighStatStage_SpAttack:
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedNotEqualTo ABILITY_SIMPLE, TrainerAI_Basic_CheckHighStatStage_SpAttack_NoSimple
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_ATTACK, 8, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckHighStatStage_SpAttack_NoSimple:
    IfStatStageEqualTo AI_BATTLER_ATTACKER, BATTLE_STAT_SP_ATTACK, 12, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckHighStatStage_SpDefense:
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedNotEqualTo ABILITY_SIMPLE, TrainerAI_Basic_CheckHighStatStage_SpDefense_NoSimple
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_DEFENSE, 8, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckHighStatStage_SpDefense_NoSimple:
    IfStatStageEqualTo AI_BATTLER_ATTACKER, BATTLE_STAT_SP_DEFENSE, 12, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckHighStatStage_Accuracy:
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_NO_GUARD, TrainerAI_ScoreMinus10
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_NO_GUARD, TrainerAI_ScoreMinus10
    IfLoadedNotEqualTo ABILITY_SIMPLE, TrainerAI_Basic_CheckHighStatStage_Accuracy_NoSimple
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_ACCURACY, 8, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckHighStatStage_Accuracy_NoSimple:
    IfStatStageEqualTo AI_BATTLER_ATTACKER, BATTLE_STAT_ACCURACY, 12, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckHighStatStage_Evasion:
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_NO_GUARD, TrainerAI_ScoreMinus10
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_NO_GUARD, TrainerAI_ScoreMinus10
    IfLoadedNotEqualTo ABILITY_SIMPLE, TrainerAI_Basic_CheckHighStatStage_Evasion_NoSimple
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_EVASION, 8, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckHighStatStage_Evasion_NoSimple:
    IfStatStageEqualTo AI_BATTLER_ATTACKER, BATTLE_STAT_EVASION, 12, TrainerAI_ScoreMinus10
    PopOrEnd 

    ; General comments on stat-reducing Status moves below:
    ;   - If the target is already at -6, score -10.
    ;   - If the target has White Smoke or Clear Body, score -10.
    ;   - If reducing Attack -> -10 if the target has Hyper Cutter
    ;   - If reducing Speed -> -10 if Trick Room is currently active
    ;   - If reducing Speed -> -10 if the target has Speed Boost
    ;   - If reducing Accuracy or Evasion -> -10 if either battler has No Guard
    ;   - If reducing Accuracy -> -10 if the target has Keen Eye
TrainerAI_Basic_CheckLowStatStage_Attack:
    IfStatStageEqualTo AI_BATTLER_DEFENDER, BATTLE_STAT_ATTACK, 0, TrainerAI_ScoreMinus10
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_HYPER_CUTTER, TrainerAI_ScoreMinus10
    GoTo TrainerAI_Basic_CheckClearBodyEffect

TrainerAI_Basic_CheckLowStatStage_Defense:
    IfStatStageEqualTo AI_BATTLER_DEFENDER, BATTLE_STAT_DEFENSE, 0, TrainerAI_ScoreMinus10
    GoTo TrainerAI_Basic_CheckClearBodyEffect

TrainerAI_Basic_CheckLowStatStage_Speed:
    IfFieldConditionsMask FIELD_CONDITION_TRICK_ROOM, TrainerAI_ScoreMinus10
    IfStatStageEqualTo AI_BATTLER_DEFENDER, BATTLE_STAT_SPEED, 0, TrainerAI_ScoreMinus10
    CheckBattlerAbility AI_BATTLER_DEFENDER, ABILITY_SPEED_BOOST
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScoreMinus10
    GoTo TrainerAI_Basic_CheckClearBodyEffect

TrainerAI_Basic_CheckLowStatStage_SpAttack:
    IfStatStageEqualTo AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK, 0, TrainerAI_ScoreMinus10
    GoTo TrainerAI_Basic_CheckClearBodyEffect

TrainerAI_Basic_CheckLowStatStage_SpDefense:
    IfStatStageEqualTo AI_BATTLER_DEFENDER, BATTLE_STAT_SP_DEFENSE, 0, TrainerAI_ScoreMinus10
    GoTo TrainerAI_Basic_CheckClearBodyEffect

TrainerAI_Basic_CheckLowStatStage_Accuracy:
    IfStatStageEqualTo AI_BATTLER_DEFENDER, BATTLE_STAT_ACCURACY, 0, TrainerAI_ScoreMinus10
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_NO_GUARD, TrainerAI_ScoreMinus10
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_KEEN_EYE, TrainerAI_ScoreMinus10
    IfLoadedEqualTo ABILITY_NO_GUARD, TrainerAI_ScoreMinus10
    GoTo TrainerAI_Basic_CheckClearBodyEffect

TrainerAI_Basic_CheckLowStatStage_Evasion:
    IfStatStageEqualTo AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 0, TrainerAI_ScoreMinus10
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_NO_GUARD, TrainerAI_ScoreMinus10
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_NO_GUARD, TrainerAI_ScoreMinus10

TrainerAI_Basic_CheckClearBodyEffect:
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_CLEAR_BODY, TrainerAI_ScoreMinus10
    IfLoadedEqualTo ABILITY_WHITE_SMOKE, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckStatStageImbalance:
    ; The name is a little esoteric; an "imbalance" is regarded as the attacker
    ; having any reduced stat stage or the target having any increased stat stage.
    ;
    ; If neither of those are true, score -10.
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 6, TrainerAI_Basic_CheckStatStageImbalance_Terminate
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 6, TrainerAI_Basic_CheckStatStageImbalance_Terminate
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_SPEED, 6, TrainerAI_Basic_CheckStatStageImbalance_Terminate
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_ATTACK, 6, TrainerAI_Basic_CheckStatStageImbalance_Terminate
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_DEFENSE, 6, TrainerAI_Basic_CheckStatStageImbalance_Terminate
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_ACCURACY, 6, TrainerAI_Basic_CheckStatStageImbalance_Terminate
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_EVASION, 6, TrainerAI_Basic_CheckStatStageImbalance_Terminate
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_ATTACK, 6, TrainerAI_Basic_CheckStatStageImbalance_Terminate
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_DEFENSE, 6, TrainerAI_Basic_CheckStatStageImbalance_Terminate
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_SPEED, 6, TrainerAI_Basic_CheckStatStageImbalance_Terminate
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK, 6, TrainerAI_Basic_CheckStatStageImbalance_Terminate
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_SP_DEFENSE, 6, TrainerAI_Basic_CheckStatStageImbalance_Terminate
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_ACCURACY, 6, TrainerAI_Basic_CheckStatStageImbalance_Terminate
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 6, TrainerAI_Basic_CheckStatStageImbalance_Terminate
    GoTo TrainerAI_ScoreMinus10

TrainerAI_Basic_CheckStatStageImbalance_Terminate:
    PopOrEnd 

TrainerAI_Basic_CheckCanForceSwitch:
    ; If the target cannot be forced out for any reason, score -10.
    CountAlivePartyBattlers AI_BATTLER_DEFENDER
    IfLoadedEqualTo 0, TrainerAI_ScoreMinus10
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_MOLD_BREAKER, TrainerAI_Basic_CheckCanForceSwitch_Terminate
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_SUCTION_CUPS, TrainerAI_ScoreMinus10

TrainerAI_Basic_CheckCanForceSwitch_Terminate:
    PopOrEnd 

TrainerAI_Basic_CheckCanRecoverHP:
    ; If at 100% HP, score -8.
    IfHPPercentNotEqualTo AI_BATTLER_ATTACKER, 100, TrainerAI_Basic_CheckCanRecoverHP_Terminate
    AddToMoveScore -8

TrainerAI_Basic_CheckCanRecoverHP_Terminate:
    PopOrEnd 

TrainerAI_Basic_CheckCannotPoison:
    ; If the target is immune to the usual effects of Poison for any reason, score -10.
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_STEEL, TrainerAI_ScoreMinus10
    IfLoadedEqualTo TYPE_POISON, TrainerAI_ScoreMinus10
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_STEEL, TrainerAI_ScoreMinus10
    IfLoadedEqualTo TYPE_POISON, TrainerAI_ScoreMinus10

    ; Check for immunity by ability
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_IMMUNITY, TrainerAI_ScoreMinus10
    IfLoadedEqualTo ABILITY_MAGIC_GUARD, TrainerAI_ScoreMinus10
    IfLoadedEqualTo ABILITY_POISON_HEAL, TrainerAI_ScoreMinus10

    IfLoadedNotEqualTo ABILITY_LEAF_GUARD, TrainerAI_Basic_CheckCannotPoison_Hydration
    LoadCurrentWeather 
    IfLoadedEqualTo AI_WEATHER_SUNNY, TrainerAI_ScoreMinus10

TrainerAI_Basic_CheckCannotPoison_Hydration:
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedNotEqualTo ABILITY_HYDRATION, TrainerAI_Basic_CheckCannotPoison_StatusOrSafeguard
    LoadCurrentWeather 
    IfLoadedEqualTo AI_WEATHER_RAINING, TrainerAI_ScoreMinus10

TrainerAI_Basic_CheckCannotPoison_StatusOrSafeguard:
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_ANY, TrainerAI_ScoreMinus10
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_SAFEGUARD, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckAlreadyUnderLightScreen:
    ; If already under the effect of Light Screen, score -8.
    IfSideCondition AI_BATTLER_ATTACKER, SIDE_CONDITION_LIGHT_SCREEN, TrainerAI_ScoreMinus8
    PopOrEnd 

TrainerAI_Basic_CheckOHKOWouldFail:
    ; If the OHKO move would always fail for any reason, score -10.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_ScoreMinus10
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_MOLD_BREAKER, TrainerAI_Basic_CheckOHKOWouldFail_Levels
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_STURDY, TrainerAI_ScoreMinus10

TrainerAI_Basic_CheckOHKOWouldFail_Levels:
    IfLevel CHECK_LOWER_THAN_TARGET, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckMagnitude:
    ; If the target's ability is Levitate and the attacker's ability is not Mold Breaker, score -10.
    IfLoadedEqualTo ABILITY_MOLD_BREAKER, TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_LEVITATE, TrainerAI_ScoreMinus10

TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn:
    ; If the target is immune to this move by its typing or due to the target's ability being
    ; Wonder Guard, score -10.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_ScoreMinus10
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedNotEqualTo ABILITY_WONDER_GUARD, TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn_Terminate
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_MOLD_BREAKER, TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn_Terminate
    IfMoveEffectivenessEquals TYPE_MULTI_DOUBLE_DAMAGE, TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn_Terminate
    IfMoveEffectivenessEquals TYPE_MULTI_QUADRUPLE_DAMAGE, TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn_Terminate
    GoTo TrainerAI_ScoreMinus10

TrainerAI_Basic_CheckNonStandardDamageOrChargeTurn_Terminate:
    PopOrEnd 

TrainerAI_Basic_CheckAlreadyUnderMist:
    ; If already under the effect of Mist, score -8.
    IfSideCondition AI_BATTLER_ATTACKER, SIDE_CONDITION_MIST, TrainerAI_ScoreMinus8
    PopOrEnd 

TrainerAI_Basic_CheckAlreadyPumpedUp:
    ; If already under the effect of Focus Energy, score -10.
    IfVolatileStatus AI_BATTLER_ATTACKER, VOLATILE_CONDITION_FOCUS_ENERGY, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckCannotConfuse:
    ; If the target is already confused, score -5.
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_CONFUSION, TrainerAI_ScoreMinus5

    ; If the target otherwise cannot be confused, score -10.
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_OWN_TEMPO, TrainerAI_ScoreMinus10
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_SAFEGUARD, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckAlreadyUnderReflect:
    ; If already under the effect of Reflect, score -8.
    IfSideCondition AI_BATTLER_ATTACKER, SIDE_CONDITION_REFLECT, TrainerAI_ScoreMinus8
    PopOrEnd 

TrainerAI_Basic_CheckCannotParalyze:
    ; If the target cannot be paralyzed for any reason, score -10.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_ScoreMinus10
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_LIMBER, TrainerAI_ScoreMinus10
    IfLoadedEqualTo ABILITY_MAGIC_GUARD, TrainerAI_ScoreMinus10
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_MOLD_BREAKER, TrainerAI_Basic_CheckCannotParalyze_ImmuneToStatus
    IfMoveEqualTo MOVE_THUNDER_WAVE, TrainerAI_Basic_CheckCannotParalyze_ThunderWave
    GoTo TrainerAI_Basic_CheckCannotParalyze_ImmuneToStatus

TrainerAI_Basic_CheckCannotParalyze_ThunderWave:
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_MOTOR_DRIVE, TrainerAI_ScoreMinus10
    IfLoadedEqualTo ABILITY_VOLT_ABSORB, TrainerAI_ScoreMinus10

TrainerAI_Basic_CheckCannotParalyze_ImmuneToStatus:
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_ANY, TrainerAI_ScoreMinus10
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_SAFEGUARD, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckCannotSubstitute:
    ; If the attacker's Substitute would fail, score -8/-10.
    IfVolatileStatus AI_BATTLER_ATTACKER, VOLATILE_CONDITION_SUBSTITUTE, TrainerAI_ScoreMinus8
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 26, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckCannotLeechSeed:
    ; If the target is already Seeded or immune to the effects of Leech Seed, score -10.
    IfMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_LEECH_SEED, TrainerAI_ScoreMinus10
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_GRASS, TrainerAI_ScoreMinus10
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_GRASS, TrainerAI_ScoreMinus10
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_MAGIC_GUARD, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckCannotDisable:
    ; If the target is already Disabled, score -8.
    IfBattlerUnderEffect AI_BATTLER_DEFENDER, CHECK_DISABLE, TrainerAI_ScoreMinus8
    PopOrEnd 

TrainerAI_Basic_CheckCannotEncore:
    ; If the target is already Encored, score -8.
    IfBattlerUnderEffect AI_BATTLER_DEFENDER, CHECK_ENCORE, TrainerAI_ScoreMinus8
    PopOrEnd 

TrainerAI_Basic_CheckAttackerAsleep:
    ; If the attacker is not currently asleep, score -8.
    IfNotStatus AI_BATTLER_ATTACKER, MON_CONDITION_SLEEP, TrainerAI_ScoreMinus8
    PopOrEnd 

TrainerAI_Basic_CheckLockOn:
    ; If the target is already Locked On, or either battler has No Guard, score -10.
    IfMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_LOCK_ON, TrainerAI_ScoreMinus10
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_NO_GUARD, TrainerAI_ScoreMinus10
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_NO_GUARD, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckMeanLook:
    ; If the target is already under the effect of Mean Look, score -10.
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_MEAN_LOOK, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckCurse:
    ; Branch for a Ghost-type using Curse
    LoadTypeFrom LOAD_ATTACKER_TYPE_1
    IfLoadedEqualTo TYPE_GHOST, TrainerAI_Basic_CheckCurse_GhostType
    LoadTypeFrom LOAD_ATTACKER_TYPE_2
    IfLoadedEqualTo TYPE_GHOST, TrainerAI_Basic_CheckCurse_GhostType

    ; If the attacker has Simple, treat it like a boosting move for both Attack and Defense.
    ; That is, if either Attack or Defense are already +2, score -10.
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedNotEqualTo ABILITY_SIMPLE, TrainerAI_Basic_CheckCurse_NoSimple
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 8, TrainerAI_ScoreMinus10
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 8, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckCurse_NoSimple:
    ; If the attacker does not have Simple and either Attack or Defense are already +6, score -10.
    IfStatStageEqualTo AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 12, TrainerAI_ScoreMinus10
    IfStatStageEqualTo AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 12, TrainerAI_ScoreMinus8
    PopOrEnd 

TrainerAI_Basic_CheckCurse_GhostType:
    ; If the target is immune to the effect, score -10.
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_CURSE, TrainerAI_ScoreMinus10
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_MAGIC_GUARD, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckSpikes:
    ; If the target already has 3 layers of Spikes or is on their last Pokemon, score -10.
    LoadSpikesLayers AI_BATTLER_DEFENDER, SIDE_CONDITION_SPIKES
    IfLoadedEqualTo 3, TrainerAI_ScoreMinus10
    CountAlivePartyBattlers AI_BATTLER_DEFENDER
    IfLoadedEqualTo 0, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckForesight:
    ; If the target is already under the effect, score -10.
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_FORESIGHT, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckPerishSong:
    ; If the target is already under the effect, score -10.
    IfMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_PERISH_SONG, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckSandstorm:
    ; If the current weather is Sand, score -8.
    LoadCurrentWeather 
    IfLoadedEqualTo AI_WEATHER_SANDSTORM, TrainerAI_ScoreMinus8
    PopOrEnd 

TrainerAI_Basic_CheckCannotAttract:
    ; If the target cannot be Infatuated for any reason, score -10.
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_ATTRACT, TrainerAI_ScoreMinus10
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_OBLIVIOUS, TrainerAI_ScoreMinus10
    LoadGender AI_BATTLER_ATTACKER
    IfLoadedEqualTo GENDER_MALE, TrainerAI_Basic_CheckCannotAttract_BothMale
    IfLoadedEqualTo GENDER_FEMALE, TrainerAI_Basic_CheckCannotAttract_BothFemale
    GoTo TrainerAI_ScoreMinus10

TrainerAI_Basic_CheckCannotAttract_BothMale:
    LoadGender AI_BATTLER_DEFENDER
    IfLoadedEqualTo GENDER_FEMALE, TrainerAI_Basic_CheckCannotAttract_Terminate
    GoTo TrainerAI_ScoreMinus10

TrainerAI_Basic_CheckCannotAttract_BothFemale:
    LoadGender AI_BATTLER_DEFENDER
    IfLoadedEqualTo GENDER_MALE, TrainerAI_Basic_CheckCannotAttract_Terminate
    GoTo TrainerAI_ScoreMinus10

TrainerAI_Basic_CheckCannotAttract_Terminate:
    PopOrEnd 

TrainerAI_Basic_CheckAlreadyUnderSafeguard:
    ; If already under the effect of Safeguard, score -8.
    IfSideCondition AI_BATTLER_ATTACKER, SIDE_CONDITION_SAFEGUARD, TrainerAI_ScoreMinus8
    PopOrEnd 

TrainerAI_Basic_CheckMemento:
    ; If the target's ability blocks the stat drop and the attacker does not have Mold Breaker,
    ; score -10.
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_MOLD_BREAKER, TrainerAI_Basic_CheckMemento_CheckStatStages
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_CLEAR_BODY, TrainerAI_ScoreMinus10
    IfLoadedEqualTo ABILITY_WHITE_SMOKE, TrainerAI_ScoreMinus10

TrainerAI_Basic_CheckMemento_CheckStatStages:
    ; If the target's Attack is already at -6, score -10.
    IfStatStageEqualTo AI_BATTLER_DEFENDER, BATTLE_STAT_ATTACK, 0, TrainerAI_ScoreMinus10

    ; If the target's SpAttack is already at -6, score -8.
    IfStatStageEqualTo AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK, 0, TrainerAI_ScoreMinus8

    ; If the attacker is on their last Pokemon, score -10.
    CountAlivePartyBattlers AI_BATTLER_ATTACKER
    IfLoadedEqualTo 0, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckBatonPass:
    ; If the attacker is on its last Pokemon, score -10.
    CountAlivePartyBattlers AI_BATTLER_ATTACKER
    IfLoadedEqualTo 0, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckRainDance:
    ; If the attacker's ability is Swift Swim or Hydration, skip the defender-Hydration check below.
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_SWIFT_SWIM, TrainerAI_Basic_CheckCurrentWeatherIsRain
    IfLoadedEqualTo ABILITY_HYDRATION, TrainerAI_Basic_CheckCurrentWeatherIsRain

    ; If the target's ability is Hydration and they are currently statused, score -8.
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedNotEqualTo ABILITY_HYDRATION, TrainerAI_Basic_CheckCurrentWeatherIsRain
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_ANY, TrainerAI_ScoreMinus8

TrainerAI_Basic_CheckCurrentWeatherIsRain:
    ; If the weather is currently Rain, score -8.
    LoadCurrentWeather 
    IfLoadedEqualTo AI_WEATHER_RAINING, TrainerAI_ScoreMinus8
    PopOrEnd 

TrainerAI_Basic_CheckSunnyDay:
    ; If the attacker's ability is any of Flower Gift, Leaf Guard, or Solar Power, skip the defender-
    ; Hydration check below.
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_FLOWER_GIFT, TrainerAI_Basic_CheckCurrentWeatherIsSun
    IfLoadedEqualTo ABILITY_LEAF_GUARD, TrainerAI_Basic_CheckCurrentWeatherIsSun
    IfLoadedEqualTo ABILITY_SOLAR_POWER, TrainerAI_Basic_CheckCurrentWeatherIsSun

    ; If the target's ability is Hydration and they are currently statused, score -10.
    ; Why does this consider Hydration? This is clearly a bug, but what was the intention?
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedNotEqualTo ABILITY_HYDRATION, TrainerAI_Basic_CheckCurrentWeatherIsSun
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_ANY, TrainerAI_ScoreMinus10

TrainerAI_Basic_CheckCurrentWeatherIsSun:
    ; If the weather is currently Sun, score -8.
    LoadCurrentWeather 
    IfLoadedEqualTo AI_WEATHER_SUNNY, TrainerAI_ScoreMinus8
    PopOrEnd 

TrainerAI_Basic_CheckFutureSight:
    ; If either the attacker or the target are currently under the effect of Future Sight, score -12.
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_FUTURE_SIGHT, TrainerAI_ScoreMinus12
    IfSideCondition AI_BATTLER_ATTACKER, SIDE_CONDITION_FUTURE_SIGHT, TrainerAI_ScoreMinus12
    PopOrEnd 

TrainerAI_Basic_CheckFirstTurnInBattle:
    ; If it is not the attacker's first turn in battle, score -10.
    LoadIsFirstTurnInBattle AI_BATTLER_ATTACKER
    IfLoadedEqualTo FALSE, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckMaxStockpile:
    ; If the Stockpile count is already at 3, score -10.
    LoadStockpileCount AI_BATTLER_ATTACKER
    IfLoadedEqualTo 3, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckCanSpitUpOrSwallow:
    ; If the target is immune to the move by its typing or the Stockpile count is 0, score -10.
    ; Note that this means that Swallow will never be used against a Ghost-type Pokemon, even though
    ; it would still have an effect.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_ScoreMinus10
    LoadStockpileCount AI_BATTLER_ATTACKER
    IfLoadedEqualTo 0, TrainerAI_ScoreMinus10

    ; Treat Swallow like a standard recovery move.
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SWALLOW, TrainerAI_Basic_CheckCanRecoverHP
    PopOrEnd 

TrainerAI_Basic_CheckHail:
    ; If the current weather is Hail, score -8.
    LoadCurrentWeather 
    IfLoadedEqualTo AI_WEATHER_HAILING, TrainerAI_ScoreMinus8

    ; If any opposing battler's ability is Ice Body, score -8.
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedNotEqualTo ABILITY_ICE_BODY, TrainerAI_Basic_CheckHail_Terminate
    AddToMoveScore -8

    ; If an attacker's ability is also Ice Body, score +8 (undo the previous modifier).
    ; This feels like a bug of misintention; the intention here seems to be for an attacker with
    ; Ice Body to have an incentive to use Hail, but that is not realized. Instead, such an
    ; attacker can only have a disincentive undone.
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedNotEqualTo ABILITY_ICE_BODY, TrainerAI_Basic_CheckHail_Terminate
    AddToMoveScore 8

TrainerAI_Basic_CheckHail_Terminate:
    PopOrEnd 

TrainerAI_Basic_CheckTorment:
    ; If the target is already under the effect, score -10.
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_TORMENT, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckCannotBurn:
    ; If the target cannot be burned for any reason, score -10.
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_WATER_VEIL, TrainerAI_ScoreMinus10
    IfLoadedEqualTo ABILITY_MAGIC_GUARD, TrainerAI_ScoreMinus10
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_ANY, TrainerAI_ScoreMinus10
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_FIRE, TrainerAI_ScoreMinus10
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_FIRE, TrainerAI_ScoreMinus10
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_SAFEGUARD, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckHelpingHand:
    ; If the battle type is not Doubles, score -10.
    LoadBattleType 
    IfLoadedNotMask BATTLE_TYPE_DOUBLES, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckCanRemoveItem:
    ; If the defender's ability is Sticky Hold or they do not have a held item, score -10.
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_STICKY_HOLD, TrainerAI_ScoreMinus10
    LoadHeldItem AI_BATTLER_DEFENDER
    IfLoadedEqualTo ITEM_NONE, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckAlreadyIngrained:
    ; If the attacker is already under the effect, score -10.
    IfMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_INGRAIN, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckCanRecycle:
    ; If there is no item to be recycled, score -10.
    LoadRecycleItem AI_BATTLER_ATTACKER
    IfLoadedEqualTo ITEM_NONE, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckCanImprison:
    ; If either the attacker or a target are under the effect of Imprison, score -10.
    IfMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_IMPRISON, TrainerAI_ScoreMinus10
    IfMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_IMPRISONED, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckCanRefreshStatus:
    ; If the attacker is not Burned, Poisoned, or Paralyzed, score -10.
    IfNotStatus AI_BATTLER_ATTACKER, MON_CONDITION_FACADE_BOOST, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckCanMudSport:
    ; If the attacker is already under the respective effect, score -10.
    IfMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_MUD_SPORT, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckTickle:
    ; If the target's ability is Clear Body or White Smoke and the attacker's ability is not
    ; Mold Breaker, score -10.
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_MOLD_BREAKER, TrainerAI_Basic_CheckTickle_CheckStatStages
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_CLEAR_BODY, TrainerAI_ScoreMinus10
    IfLoadedEqualTo ABILITY_WHITE_SMOKE, TrainerAI_ScoreMinus10

TrainerAI_Basic_CheckTickle_CheckStatStages:
    ; If the target's Attack is at -6, score -10.
    ; If the target's Defense is at -6, score -8.
    IfStatStageEqualTo AI_BATTLER_DEFENDER, BATTLE_STAT_ATTACK, 0, TrainerAI_ScoreMinus10
    IfStatStageEqualTo AI_BATTLER_DEFENDER, BATTLE_STAT_DEFENSE, 0, TrainerAI_ScoreMinus8
    PopOrEnd 

TrainerAI_Basic_CheckCosmicPower:
    ; If the attacker's ability is Simple and either Defense or SpDefense are already at
    ; +3, score -10.
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedNotEqualTo ABILITY_SIMPLE, TrainerAI_Basic_CheckCosmicPower_NoSimple
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 8, TrainerAI_ScoreMinus10
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_DEFENSE, 8, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckCosmicPower_NoSimple:
    ; If the attacker's Defense is already at +6, score -10.
    ; If the attacker's SpDefense is already at +6, score -8.
    IfStatStageEqualTo AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 12, TrainerAI_ScoreMinus10
    IfStatStageEqualTo AI_BATTLER_ATTACKER, BATTLE_STAT_SP_DEFENSE, 12, TrainerAI_ScoreMinus8
    PopOrEnd 

TrainerAI_Basic_CheckBulkUp:
    ; If the attacker's ability is Simple and either Attack or Defense are already at
    ; +3, score -10.
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedNotEqualTo ABILITY_SIMPLE, TrainerAI_Basic_CheckBulkUp_NoSimple
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 8, TrainerAI_ScoreMinus10
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 8, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckBulkUp_NoSimple:
    ; If the attacker's Attack is already at +6, score -10.
    ; If the attacker's Defense is already at +6, score -8.
    IfStatStageEqualTo AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 12, TrainerAI_ScoreMinus10
    IfStatStageEqualTo AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 12, TrainerAI_ScoreMinus8
    PopOrEnd 

TrainerAI_Basic_CheckWaterSport:
    ; If the attacker is already under the respective effect, score -10.
    IfMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_WATER_SPORT, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckCalmMind:
    ; If the attacker's ability is Simple and either SpAttack or SpDefense are already at
    ; +3, score -10.
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedNotEqualTo ABILITY_SIMPLE, TrainerAI_Basic_CheckCalmMind_NoSimple
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_ATTACK, 8, TrainerAI_ScoreMinus10
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_DEFENSE, 8, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckCalmMind_NoSimple:
    ; If the attacker's SpAttack is already at +6, score -10.
    ; If the attacker's SpDefense is already at +6, score -8.
    IfStatStageEqualTo AI_BATTLER_ATTACKER, BATTLE_STAT_SP_ATTACK, 12, TrainerAI_ScoreMinus10
    IfStatStageEqualTo AI_BATTLER_ATTACKER, BATTLE_STAT_SP_DEFENSE, 12, TrainerAI_ScoreMinus8
    PopOrEnd 

TrainerAI_Basic_CheckDragonDance:
    ; If Trick Room is in effect, score -10.
    IfFieldConditionsMask FIELD_CONDITION_TRICK_ROOM, TrainerAI_ScoreMinus10

    ; If the attacker's ability is Simple and either Attack or Speed are already at
    ; +3, score -10.
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedNotEqualTo ABILITY_SIMPLE, TrainerAI_Basic_CheckDragonDance_NoSimple
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 8, TrainerAI_ScoreMinus10
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_SPEED, 8, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckDragonDance_NoSimple:
    ; If the attacker's Attack is already at +6, score -10.
    ; If the attacker's Speed is already at +6, score -8.
    IfStatStageEqualTo AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 12, TrainerAI_ScoreMinus10
    IfStatStageEqualTo AI_BATTLER_ATTACKER, BATTLE_STAT_SPEED, 12, TrainerAI_ScoreMinus8
    PopOrEnd 

TrainerAI_Basic_CheckCamouflage:
    ; If the attacker is already under the respective effect, score -10.
    IfMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_CAMOUFLAGE, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckGravityActive:
    ; If Gravity is already active, score -10.
    IfFieldConditionsMask FIELD_CONDITION_GRAVITY, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckMiracleEye:
    ; If the target is already under the respective effect, score -10.
    IfMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_MIRACLE_EYE, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckHealingWish:
    ; Start at -20
    AddToMoveScore -20

    ; If the attacker is on their last Pokemon, score additional -10.
    CountAlivePartyBattlers AI_BATTLER_ATTACKER
    IfLoadedEqualTo 0, TrainerAI_ScoreMinus10

    ; If none of the attacker's party members are statused or at less than 100% HP,
    ; score additional -10.
    IfPartyMemberStatus AI_BATTLER_ATTACKER, MON_CONDITION_ANY, TrainerAI_Basic_CheckHealingWish_Terminate
    IfAnyPartyMemberIsWounded AI_BATTLER_ATTACKER, TrainerAI_Basic_CheckHealingWish_Terminate
    GoTo TrainerAI_ScoreMinus10

TrainerAI_Basic_CheckHealingWish_Terminate:
    PopOrEnd 

TrainerAI_Basic_CheckNaturalGift:
    ; If the attacker does not have an eligible berry or the target is immune to that berry's
    ; Natural Gift type, score -10.
    LoadHeldItem AI_BATTLER_ATTACKER
    IfLoadedNotInTable TrainerAI_Basic_NaturalGiftBerries, TrainerAI_ScoreMinus10
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_NaturalGiftBerries:
    TableEntry ITEM_CHERI_BERRY
    TableEntry ITEM_CHESTO_BERRY
    TableEntry ITEM_PECHA_BERRY
    TableEntry ITEM_RAWST_BERRY
    TableEntry ITEM_ASPEAR_BERRY
    TableEntry ITEM_LEPPA_BERRY
    TableEntry ITEM_ORAN_BERRY
    TableEntry ITEM_PERSIM_BERRY
    TableEntry ITEM_LUM_BERRY
    TableEntry ITEM_SITRUS_BERRY
    TableEntry ITEM_FIGY_BERRY
    TableEntry ITEM_WIKI_BERRY
    TableEntry ITEM_MAGO_BERRY
    TableEntry ITEM_AGUAV_BERRY
    TableEntry ITEM_IAPAPA_BERRY
    TableEntry ITEM_RAZZ_BERRY
    TableEntry ITEM_BLUK_BERRY
    TableEntry ITEM_NANAB_BERRY
    TableEntry ITEM_WEPEAR_BERRY
    TableEntry ITEM_PINAP_BERRY
    TableEntry ITEM_POMEG_BERRY
    TableEntry ITEM_KELPSY_BERRY
    TableEntry ITEM_QUALOT_BERRY
    TableEntry ITEM_HONDEW_BERRY
    TableEntry ITEM_GREPA_BERRY
    TableEntry ITEM_TAMATO_BERRY
    TableEntry ITEM_CORNN_BERRY
    TableEntry ITEM_MAGOST_BERRY
    TableEntry ITEM_RABUTA_BERRY
    TableEntry ITEM_NOMEL_BERRY
    TableEntry ITEM_SPELON_BERRY
    TableEntry ITEM_PAMTRE_BERRY
    TableEntry ITEM_WATMEL_BERRY
    TableEntry ITEM_DURIN_BERRY
    TableEntry ITEM_BELUE_BERRY
    TableEntry ITEM_OCCA_BERRY
    TableEntry ITEM_PASSHO_BERRY
    TableEntry ITEM_WACAN_BERRY
    TableEntry ITEM_RINDO_BERRY
    TableEntry ITEM_YACHE_BERRY
    TableEntry ITEM_CHOPLE_BERRY
    TableEntry ITEM_KEBIA_BERRY
    TableEntry ITEM_SHUCA_BERRY
    TableEntry ITEM_COBA_BERRY
    TableEntry ITEM_PAYAPA_BERRY
    TableEntry ITEM_TANGA_BERRY
    TableEntry ITEM_CHARTI_BERRY
    TableEntry ITEM_KASIB_BERRY
    TableEntry ITEM_HABAN_BERRY
    TableEntry ITEM_COLBUR_BERRY
    TableEntry ITEM_BABIRI_BERRY
    TableEntry ITEM_CHILAN_BERRY
    TableEntry ITEM_LIECHI_BERRY
    TableEntry ITEM_GANLON_BERRY
    TableEntry ITEM_SALAC_BERRY
    TableEntry ITEM_PETAYA_BERRY
    TableEntry ITEM_APICOT_BERRY
    TableEntry ITEM_LANSAT_BERRY
    TableEntry ITEM_STARF_BERRY
    TableEntry ITEM_ENIGMA_BERRY
    TableEntry ITEM_MICLE_BERRY
    TableEntry ITEM_CUSTAP_BERRY
    TableEntry ITEM_JABOCA_BERRY
    TableEntry ITEM_ROWAP_BERRY
    TableEntry TABLE_END

TrainerAI_Basic_CheckTailwind:
    ; If Trick Room is currently active or Tailwind is already active for the attacker's side
    ; of the field, score -10.
    IfFieldConditionsMask FIELD_CONDITION_TRICK_ROOM, TrainerAI_ScoreMinus10
    IfSideCondition AI_BATTLER_ATTACKER, SIDE_CONDITION_TAILWIND, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckAcupressure:
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_SIMPLE, TrainerAI_Basic_CheckAcupressure_Simple

    ; If any of the attacker's stat stages are already at +6, score -10.
    IfStatStageEqualTo AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 12, TrainerAI_ScoreMinus10
    IfStatStageEqualTo AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 12, TrainerAI_ScoreMinus10
    IfStatStageEqualTo AI_BATTLER_ATTACKER, BATTLE_STAT_SPEED, 12, TrainerAI_ScoreMinus10
    IfStatStageEqualTo AI_BATTLER_ATTACKER, BATTLE_STAT_SP_ATTACK, 12, TrainerAI_ScoreMinus10
    IfStatStageEqualTo AI_BATTLER_ATTACKER, BATTLE_STAT_SP_DEFENSE, 12, TrainerAI_ScoreMinus10
    IfStatStageEqualTo AI_BATTLER_ATTACKER, BATTLE_STAT_EVASION, 12, TrainerAI_ScoreMinus10
    IfStatStageEqualTo AI_BATTLER_ATTACKER, BATTLE_STAT_ACCURACY, 12, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckAcupressure_Simple:
    ; If the attacker's ability is Simple and any stat stage is already at +3, score -10.
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 8, TrainerAI_ScoreMinus10
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 8, TrainerAI_ScoreMinus10
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_SPEED, 8, TrainerAI_ScoreMinus10
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_ATTACK, 8, TrainerAI_ScoreMinus10
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_DEFENSE, 8, TrainerAI_ScoreMinus10
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_EVASION, 8, TrainerAI_ScoreMinus10
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_ACCURACY, 8, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckMetalBurst:
    ; If the target is immune to Metal Burst due to its typing (?), score -10.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_ScoreMinus10

    ; If the target's ability is Stall or they are holding a Shiny Stone, score -10.
    ; BUG: This should use the command LoadHeldItemEffect to check for the Lagging Tail
    ; effect.
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_STALL, TrainerAI_ScoreMinus10
    IfHeldItemEqualTo AI_BATTLER_DEFENDER, ITEM_SHINY_STONE, TrainerAI_ScoreMinus10

    ; If the attacker's ability is Stall or they are holding a Shiny Stone, terminate.
    ; BUG: This should use the command LoadHeldItemEffect to check for the Lagging Tail
    ; effect.
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_STALL, TrainerAI_Basic_CheckMetalBurst_Terminate
    IfHeldItemEqualTo AI_BATTLER_ATTACKER, ITEM_SHINY_STONE, TrainerAI_Basic_CheckMetalBurst_Terminate

    ; If the attacker is faster than the target, score -10.
    IfSpeedCompareEqualTo COMPARE_SPEED_FASTER, TrainerAI_ScoreMinus10

TrainerAI_Basic_CheckMetalBurst_Terminate:
    PopOrEnd 

TrainerAI_Basic_CheckEmbargo:
    ; If the target is already under the respective effect, score -10.
    IfMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_EMBARGO, TrainerAI_ScoreMinus10

    ; If a recyclable item for the target's side exists, terminate.
    LoadRecycleItem AI_BATTLER_DEFENDER
    IfLoadedEqualTo ITEM_NONE, TrainerAI_Basic_CheckEmbargo_Terminate

    ; If the battle is taking place in the Frontier, score -10.
    LoadBattleType 
    IfLoadedMask BATTLE_TYPE_FRONTIER, TrainerAI_ScoreMinus10

TrainerAI_Basic_CheckEmbargo_Terminate:
    PopOrEnd 

TrainerAI_Basic_CheckFling:
    ; If the target is immune to the move due to its typing (?), score -10.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_ScoreMinus10

    ; If Fling would have 0 base power, score -10.
    LoadFlingPower AI_BATTLER_ATTACKER
    IfLoadedLessThan 10, TrainerAI_ScoreMinus10

    ; If the attacker's ability is Multitype, score -10.
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_MULTITYPE, TrainerAI_ScoreMinus10

    ; Branch according to possible status effects.
    LoadHeldItemEffect AI_BATTLER_ATTACKER
    IfLoadedInTable TrainerAI_Basic_FlingItems_Poison, TrainerAI_Basic_FlingPoison
    IfLoadedInTable TrainerAI_Basic_FlingItems_Burn, TrainerAI_Basic_FlingBurn
    IfLoadedInTable TrainerAI_Basic_FlingItems_Paralyze, TrainerAI_Basic_FlingParalyze
    PopOrEnd 

TrainerAI_Basic_FlingPoison:
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_SAFEGUARD, TrainerAI_Basic_FlingPoison_AttackerChecks
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_ANY, TrainerAI_Basic_FlingPoison_AttackerChecks
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_POISON_HEAL, TrainerAI_Basic_FlingPoison_AttackerChecks
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_POISON, TrainerAI_Basic_FlingPoison_AttackerChecks
    IfLoadedEqualTo TYPE_STEEL, TrainerAI_Basic_FlingPoison_AttackerChecks
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_POISON, TrainerAI_Basic_FlingPoison_AttackerChecks
    IfLoadedEqualTo TYPE_STEEL, TrainerAI_Basic_FlingPoison_AttackerChecks
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_IMMUNITY, TrainerAI_Basic_FlingPoison_AttackerChecks
    IfLoadedEqualTo ABILITY_POISON_HEAL, TrainerAI_Basic_FlingPoison_AttackerChecks
    IfLoadedEqualTo ABILITY_MAGIC_GUARD, TrainerAI_Basic_FlingPoison_AttackerChecks
    PopOrEnd 

TrainerAI_Basic_FlingPoison_AttackerChecks:
    IfSideCondition AI_BATTLER_ATTACKER, SIDE_CONDITION_SAFEGUARD, TrainerAI_ScoreMinus5
    IfStatus AI_BATTLER_ATTACKER, MON_CONDITION_ANY, TrainerAI_ScoreMinus5
    LoadTypeFrom LOAD_ATTACKER_TYPE_1
    IfLoadedEqualTo TYPE_POISON, TrainerAI_ScoreMinus5
    IfLoadedEqualTo TYPE_STEEL, TrainerAI_ScoreMinus5
    LoadTypeFrom LOAD_ATTACKER_TYPE_2
    IfLoadedEqualTo TYPE_POISON, TrainerAI_ScoreMinus5
    IfLoadedEqualTo TYPE_STEEL, TrainerAI_ScoreMinus5
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_KLUTZ, TrainerAI_ScoreMinus5
    IfLoadedEqualTo ABILITY_IMMUNITY, TrainerAI_ScoreMinus5
    IfLoadedEqualTo ABILITY_POISON_HEAL, TrainerAI_ScoreMinus5
    IfLoadedEqualTo ABILITY_MAGIC_GUARD, TrainerAI_ScoreMinus5
    IfLoadedEqualTo ABILITY_GUTS, TrainerAI_ScoreMinus5
    AddToMoveScore 3
    PopOrEnd 

TrainerAI_Basic_FlingBurn:
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_SAFEGUARD, TrainerAI_Basic_FlingBurn_AttackerChecks
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_ANY, TrainerAI_Basic_FlingBurn_AttackerChecks
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_FIRE, TrainerAI_Basic_FlingBurn_AttackerChecks
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_FIRE, TrainerAI_Basic_FlingBurn_AttackerChecks
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_MAGIC_GUARD, TrainerAI_Basic_FlingBurn_AttackerChecks
    IfLoadedEqualTo ABILITY_WATER_VEIL, TrainerAI_Basic_FlingBurn_AttackerChecks
    PopOrEnd 

TrainerAI_Basic_FlingBurn_AttackerChecks:
    IfSideCondition AI_BATTLER_ATTACKER, SIDE_CONDITION_SAFEGUARD, TrainerAI_ScoreMinus5
    IfStatus AI_BATTLER_ATTACKER, MON_CONDITION_ANY, TrainerAI_ScoreMinus5
    LoadTypeFrom LOAD_ATTACKER_TYPE_1
    IfLoadedEqualTo TYPE_FIRE, TrainerAI_ScoreMinus5
    LoadTypeFrom LOAD_ATTACKER_TYPE_2
    IfLoadedEqualTo TYPE_FIRE, TrainerAI_ScoreMinus5
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_KLUTZ, TrainerAI_ScoreMinus5
    IfLoadedEqualTo ABILITY_MAGIC_GUARD, TrainerAI_ScoreMinus5
    IfLoadedEqualTo ABILITY_WATER_VEIL, TrainerAI_ScoreMinus5
    IfLoadedEqualTo ABILITY_GUTS, TrainerAI_ScoreMinus5
    AddToMoveScore 3
    PopOrEnd 

TrainerAI_Basic_FlingParalyze:
    ; If the target cannot be Paralyzed, score -5.
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_SAFEGUARD, TrainerAI_ScoreMinus5
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_ANY, TrainerAI_ScoreMinus5
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_LIMBER, TrainerAI_ScoreMinus5
    PopOrEnd 

TrainerAI_Basic_FlingItems_Poison:
    TableEntry HOLD_EFFECT_PSN_USER
    TableEntry HOLD_EFFECT_STRENGTHEN_POISON
    TableEntry TABLE_END

TrainerAI_Basic_FlingItems_Burn:
    TableEntry HOLD_EFFECT_BRN_USER
    TableEntry TABLE_END

TrainerAI_Basic_FlingItems_Paralyze:
    TableEntry HOLD_EFFECT_PIKA_SPATK_UP
    TableEntry TABLE_END

TrainerAI_Basic_CheckCanPsychoShift:
    ; If the attacker does not have a status condition or the target already has a status
    ; condition, score -10.
    IfNotStatus AI_BATTLER_ATTACKER, MON_CONDITION_ANY, TrainerAI_ScoreMinus10
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_ANY, TrainerAI_ScoreMinus10

    ; If the target is protected by Safeguard, score -10.
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_SAFEGUARD, TrainerAI_ScoreMinus10

    ; Branch according to the attacker's status condition.
    IfStatus AI_BATTLER_ATTACKER, MON_CONDITION_ANY_POISON, TrainerAI_Basic_PsychoShift_Poison
    IfStatus AI_BATTLER_ATTACKER, MON_CONDITION_BURN, TrainerAI_Basic_PsychoShift_Burn
    IfStatus AI_BATTLER_ATTACKER, MON_CONDITION_PARALYSIS, TrainerAI_Basic_PsychoShift_Paralysis
    GoTo TrainerAI_Basic_PsychoShift_Terminate

TrainerAI_Basic_PsychoShift_Poison:
    ; If the attacker has Poison Heal, score -10.
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_POISON_HEAL, TrainerAI_ScoreMinus10

    ; If the target is immune to the effects of poison for any reason, score -10.
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_POISON, TrainerAI_ScoreMinus10
    IfLoadedEqualTo TYPE_STEEL, TrainerAI_ScoreMinus10
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_POISON, TrainerAI_ScoreMinus10
    IfLoadedEqualTo TYPE_STEEL, TrainerAI_ScoreMinus10
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_IMMUNITY, TrainerAI_ScoreMinus10
    IfLoadedEqualTo ABILITY_POISON_HEAL, TrainerAI_ScoreMinus10
    IfLoadedEqualTo ABILITY_MAGIC_GUARD, TrainerAI_ScoreMinus10
    GoTo TrainerAI_Basic_PsychoShift_Terminate

TrainerAI_Basic_PsychoShift_Burn:
    ; If the target is immune to the effects of burn for any reason, score -10.
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_FIRE, TrainerAI_ScoreMinus10
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_FIRE, TrainerAI_ScoreMinus10
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_MAGIC_GUARD, TrainerAI_ScoreMinus10
    IfLoadedEqualTo ABILITY_WATER_VEIL, TrainerAI_ScoreMinus10
    GoTo TrainerAI_Basic_PsychoShift_Terminate

TrainerAI_Basic_PsychoShift_Paralysis:
    ; If the target's ability is Limber, score -10.
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_LIMBER, TrainerAI_ScoreMinus10

TrainerAI_Basic_PsychoShift_Terminate:
    PopOrEnd 

TrainerAI_Basic_CheckHealBlock:
    ; If the target is already under the effect, score -10.
    IfMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_HEAL_BLOCK, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckPowerTrick:
    ; If the attacker is already under the effect, score -10.
    IfMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_POWER_TRICK, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckGastroAcid:
    ; If the target is already under the effect, score -10.
    IfMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_ABILITY_SUPPRESSED, TrainerAI_ScoreMinus10

    ; If the target has any of the following abilities, score -10.
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_MULTITYPE, TrainerAI_ScoreMinus10
    IfLoadedEqualTo ABILITY_TRUANT, TrainerAI_ScoreMinus10
    IfLoadedEqualTo ABILITY_SLOW_START, TrainerAI_ScoreMinus10
    IfLoadedEqualTo ABILITY_STENCH, TrainerAI_ScoreMinus10
    IfLoadedEqualTo ABILITY_RUN_AWAY, TrainerAI_ScoreMinus10
    IfLoadedEqualTo ABILITY_PICKUP, TrainerAI_ScoreMinus10
    IfLoadedEqualTo ABILITY_HONEY_GATHER, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckLuckyChant:
    ; If the attacker is already under the effect, score -10.
    IfSideCondition AI_BATTLER_ATTACKER, SIDE_CONDITION_LUCKY_CHANT, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckCopycat:
    ; If it's the first turn of the battle and the attacker is faster than its target, score -10.
    LoadTurnCount 
    IfLoadedNotEqualTo 0, TrainerAI_Basic_CheckCopycat_Terminate
    IfSpeedCompareEqualTo COMPARE_SPEED_FASTER, TrainerAI_ScoreMinus10

TrainerAI_Basic_CheckCopycat_Terminate:
    PopOrEnd 

TrainerAI_Basic_CheckPowerSwap:
    ; If Power Swap would result in a net-negative change to stat stages for both Attack
    ; and SpAttack, score -10.
    DiffStatStages AI_BATTLER_DEFENDER, BATTLE_STAT_ATTACK
    IfLoadedLessThan 1, TrainerAI_Basic_CheckGuardSwap_SpAttack
    GoTo TrainerAI_Basic_CheckPowerSwap_Terminate

TrainerAI_Basic_CheckGuardSwap_SpAttack:
    DiffStatStages AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK
    IfLoadedLessThan 1, TrainerAI_ScoreMinus10

TrainerAI_Basic_CheckPowerSwap_Terminate:
    PopOrEnd 

TrainerAI_Basic_CheckGuardSwap:
    ; If Guard Swap would result in a net-negative change to stat stages for both Defense
    ; and SpDefense, score -10.
    DiffStatStages AI_BATTLER_DEFENDER, BATTLE_STAT_DEFENSE
    IfLoadedLessThan 1, TrainerAI_Basic_CheckGuardSwap_SpDefense
    GoTo TrainerAI_Basic_CheckGuardSwap_Terminate

TrainerAI_Basic_CheckGuardSwap_SpDefense:
    DiffStatStages AI_BATTLER_DEFENDER, BATTLE_STAT_SP_DEFENSE
    IfLoadedLessThan 1, TrainerAI_ScoreMinus10

TrainerAI_Basic_CheckGuardSwap_Terminate:
    PopOrEnd 

TrainerAI_Basic_CheckLastResort:
    ; If the attacker has yet to use all of its other moves, score -10.
    IfCanUseLastResort AI_BATTLER_ATTACKER, TrainerAI_Basic_CheckLastResort_Terminate
    AddToMoveScore -10

TrainerAI_Basic_CheckLastResort_Terminate:
    PopOrEnd 

TrainerAI_Basic_CheckWorrySeed:
    ; If the target has any of the following abilities, score -10.
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_TRUANT, TrainerAI_ScoreMinus10
    IfLoadedEqualTo ABILITY_INSOMNIA, TrainerAI_ScoreMinus10
    IfLoadedEqualTo ABILITY_VITAL_SPIRIT, TrainerAI_ScoreMinus10
    IfLoadedEqualTo ABILITY_MULTITYPE, TrainerAI_ScoreMinus10

    ; If the target is asleep and does not know either Sleep Talk or Snore, score -10.
    IfNotStatus AI_BATTLER_DEFENDER, MON_CONDITION_SLEEP, TrainerAI_Basic_CheckWorrySeed_Terminate
    IfMoveKnown AI_BATTLER_DEFENDER, MOVE_SLEEP_TALK, TrainerAI_Basic_CheckWorrySeed_Terminate
    IfMoveKnown AI_BATTLER_DEFENDER, MOVE_SNORE, TrainerAI_Basic_CheckWorrySeed_Terminate
    AddToMoveScore -10

TrainerAI_Basic_CheckWorrySeed_Terminate:
    PopOrEnd 

TrainerAI_Basic_CheckToxicSpikes:
    ; If the target's side of the field already has 2 layers of Toxic Spikes, score -10.
    LoadSpikesLayers AI_BATTLER_DEFENDER, SIDE_CONDITION_TOXIC_SPIKES
    IfLoadedEqualTo 2, TrainerAI_ScoreMinus10

    ; If the target is the last battler, score -10.
    CountAlivePartyBattlers AI_BATTLER_DEFENDER
    IfLoadedEqualTo 0, TrainerAI_ScoreMinus10
    PopOrEnd 
    PopOrEnd 

TrainerAI_Basic_CheckAquaRing:
    ; If the attacker is already under the effect, score -10.
    IfMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_AQUA_RING, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckMagnetRise:
    ; If the attacker is already under the effect, score -10.
    IfMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_MAGNET_RISE, TrainerAI_ScoreMinus10

    ; If the attacker's ability is Levitate, score -10.
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_LEVITATE, TrainerAI_ScoreMinus10

    ; If either of the attacker's types are Flying, score -10.
    LoadTypeFrom LOAD_ATTACKER_TYPE_1
    IfLoadedEqualTo TYPE_FLYING, TrainerAI_ScoreMinus10
    LoadTypeFrom LOAD_ATTACKER_TYPE_2
    IfLoadedEqualTo TYPE_FLYING, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckDefog:
    ; If the target's Evasion is not at -6 or their side of the field has Light Screen or
    ; Reflect, ignore all other checks.
    IfStatStageNotEqualTo AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 0, TrainerAI_Basic_CheckDefog_Terminate
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_LIGHT_SCREEN, TrainerAI_Basic_CheckDefog_Terminate
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_REFLECT, TrainerAI_Basic_CheckDefog_Terminate

    ; If the current weather is Deep Fog, ignore all other checks.
    LoadCurrentWeather 
    IfLoadedEqualTo AI_WEATHER_DEEP_FOG, TrainerAI_Basic_CheckDefog_Terminate

    ; If the target is on their last Pokemon, score -10.
    CountAlivePartyBattlers AI_BATTLER_DEFENDER
    IfLoadedEqualTo 0, TrainerAI_ScoreMinus10

    ; If the target's side of the field has none of Spikes, Stealth Rock, or Toxic Spikes
    ; active, score -10.
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_SPIKES, TrainerAI_Basic_CheckDefog_Terminate
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_STEALTH_ROCK, TrainerAI_Basic_CheckDefog_Terminate
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_TOXIC_SPIKES, TrainerAI_Basic_CheckDefog_Terminate
    GoTo TrainerAI_ScoreMinus10

TrainerAI_Basic_CheckDefog_Terminate:
    PopOrEnd 

TrainerAI_Basic_CheckTrickRoom:
    ; If the attacker is faster than the target, score -10.
    ; Treat speed ties as being faster than the target.
    IfSpeedCompareEqualTo COMPARE_SPEED_FASTER, TrainerAI_ScoreMinus10
    IfSpeedCompareEqualTo COMPARE_SPEED_TIE, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckCaptivate:
    ; If the target's ability is any of Oblivious, Clear Body, or White Smoke and the attacker's
    ; ability is not Mold Breaker, score -10.
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_MOLD_BREAKER, TrainerAI_Basic_CheckCaptivate_CheckGender
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_OBLIVIOUS, TrainerAI_ScoreMinus10
    IfLoadedEqualTo ABILITY_CLEAR_BODY, TrainerAI_ScoreMinus10
    IfLoadedEqualTo ABILITY_WHITE_SMOKE, TrainerAI_ScoreMinus10

TrainerAI_Basic_CheckCaptivate_CheckGender:
    ; If the target and the attacker share gender or the target has no gender, score -10.
    LoadGender AI_BATTLER_ATTACKER
    IfLoadedEqualTo GENDER_MALE, TrainerAI_Basic_CheckCaptivate_CheckMale
    IfLoadedEqualTo GENDER_FEMALE, TrainerAI_Basic_CheckCaptivate_CheckFemale
    GoTo TrainerAI_ScoreMinus10

TrainerAI_Basic_CheckCaptivate_CheckMale:
    LoadGender AI_BATTLER_DEFENDER
    IfLoadedEqualTo GENDER_FEMALE, TrainerAI_Basic_CheckCaptivate_CheckStatStage
    GoTo TrainerAI_ScoreMinus10

TrainerAI_Basic_CheckCaptivate_CheckFemale:
    LoadGender AI_BATTLER_DEFENDER
    IfLoadedEqualTo GENDER_MALE, TrainerAI_Basic_CheckCaptivate_CheckStatStage
    GoTo TrainerAI_ScoreMinus10

TrainerAI_Basic_CheckCaptivate_CheckStatStage:
    ; If the target is already at -6, score -10.
    IfStatStageLessThan AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK, 1, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckStealthRock:
    ; If the target's side of the field is already under the effect of Stealth Rock, score -10.
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_STEALTH_ROCK, TrainerAI_ScoreMinus10

    ; If the target is on their last Pokemon, score -10.
    CountAlivePartyBattlers AI_BATTLER_DEFENDER
    IfLoadedEqualTo 0, TrainerAI_ScoreMinus10
    PopOrEnd 

TrainerAI_Basic_CheckLunarDance:
    ; Start at -20
    AddToMoveScore -20

    ; If the attacker is on their last Pokemon, score additional -10.
    CountAlivePartyBattlers AI_BATTLER_ATTACKER
    IfLoadedEqualTo 0, TrainerAI_ScoreMinus10

    ; If none of the attacker's party members are statused, at less than 100% HP, or at
    ; less than full PP on all of their moves, score -10.
    IfAnyPartyMemberIsWounded AI_BATTLER_ATTACKER, TrainerAI_Basic_CheckLunarDance_Terminate
    IfPartyMemberStatus AI_BATTLER_ATTACKER, MON_CONDITION_ANY, TrainerAI_Basic_CheckLunarDance_Terminate
    IfAnyPartyMemberUsedPP AI_BATTLER_ATTACKER, TrainerAI_Basic_CheckLunarDance_Terminate
    GoTo TrainerAI_ScoreMinus10

TrainerAI_Basic_CheckLunarDance_Terminate:
    PopOrEnd 

TrainerAI_ScoreMinus1:
    AddToMoveScore -1
    PopOrEnd 

TrainerAI_ScoreMinus2:
    AddToMoveScore -2
    PopOrEnd 

TrainerAI_ScoreMinus3:
    AddToMoveScore -3
    PopOrEnd 

TrainerAI_ScoreMinus5:
    AddToMoveScore -5
    PopOrEnd 

TrainerAI_ScoreMinus6: ; unused
    AddToMoveScore -6
    PopOrEnd 

TrainerAI_ScoreMinus8:
    AddToMoveScore -8
    PopOrEnd 

TrainerAI_ScoreMinus10:
    AddToMoveScore -10
    PopOrEnd 

TrainerAI_ScoreMinus12:
    AddToMoveScore -12
    PopOrEnd 

TrainerAI_ScoreMinus30:
    AddToMoveScore -30
    PopOrEnd 

TrainerAI_ScorePlus1:
    AddToMoveScore 1
    PopOrEnd 

TrainerAI_ScorePlus2:
    AddToMoveScore 2
    PopOrEnd 

TrainerAI_ScorePlus3:
    AddToMoveScore 3
    PopOrEnd 

TrainerAI_ScorePlus5:
    AddToMoveScore 5
    PopOrEnd 

TrainerAI_ScorePlus10:
    AddToMoveScore 10
    PopOrEnd 

TrainerAI_Expert_Main:
    ; This flag will never target its partner.
    IfTargetIsPartner TrainerAI_Terminate

    ; Evaluate moves which match a known effect according to this jump table.
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STATUS_SLEEP, TrainerAI_Expert_StatusSleep
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RECOVER_HALF_DAMAGE_DEALT, TrainerAI_Expert_DrainMove
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HALVE_DEFENSE, TrainerAI_Expert_Explosion
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RECOVER_DAMAGE_SLEEP, TrainerAI_Expert_DreamEater
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_COPY_MOVE, TrainerAI_Expert_MirrorMove
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ATK_UP, TrainerAI_Expert_StatusAttackUp
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DEF_UP, TrainerAI_Expert_StatusDefenseUp
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SPEED_UP, TrainerAI_Expert_StatusSpeedUp
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_ATK_UP, TrainerAI_Expert_StatusSpAttackUp
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_DEF_UP, TrainerAI_Expert_StatusSpDefenseUp
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ACC_UP, TrainerAI_Expert_StatusAccuracyUp
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_EVA_UP, TrainerAI_Expert_StatusEvasionUp
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_BYPASS_ACCURACY, TrainerAI_Expert_BypassAccuracyMove
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ATK_DOWN, TrainerAI_Expert_StatusAttackDown
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DEF_DOWN, TrainerAI_Expert_StatusDefenseDown
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SPEED_DOWN, TrainerAI_Expert_StatusSpeedDown
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_ATK_DOWN, TrainerAI_Expert_StatusSpAttackDown
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_DEF_DOWN, TrainerAI_Expert_StatusSpDefenseDown
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ACC_DOWN, TrainerAI_Expert_StatusAccuracyDown
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_EVA_DOWN, TrainerAI_Expert_StatusEvasionDown
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RESET_STAT_CHANGES, TrainerAI_Expert_Haze
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_BIDE, TrainerAI_Expert_Bide
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_FORCE_SWITCH, TrainerAI_Expert_ForceSwitch
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_CONVERSION, TrainerAI_Expert_Conversion
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RESTORE_HALF_HP, TrainerAI_Expert_Recovery
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STATUS_BADLY_POISON, TrainerAI_Expert_ToxicLeechSeed
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SET_LIGHT_SCREEN, TrainerAI_Expert_LightScreen
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_REST, TrainerAI_Expert_Rest
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ONE_HIT_KO, TrainerAI_Expert_OHKOMove
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_CHARGE_TURN_HIGH_CRIT, TrainerAI_Expert_ChargeTurnNoInvuln
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HALVE_HP, TrainerAI_Expert_SuperFang
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_BIND_HIT, TrainerAI_Expert_BindingMove
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HIGH_CRITICAL, TrainerAI_Expert_HighCritical
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RECOIL_QUARTER, TrainerAI_Expert_RecoilMove
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STATUS_CONFUSE, TrainerAI_Expert_StatusConfuse
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ATK_UP_2, TrainerAI_Expert_StatusAttackUp
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DEF_UP_2, TrainerAI_Expert_StatusDefenseUp
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SPEED_UP_2, TrainerAI_Expert_StatusSpeedUp
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_ATK_UP_2, TrainerAI_Expert_StatusSpAttackUp
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_DEF_UP_2, TrainerAI_Expert_StatusSpDefenseUp
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ACC_UP_2, TrainerAI_Expert_StatusAccuracyUp
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_EVA_UP_2, TrainerAI_Expert_StatusEvasionUp
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ATK_DOWN_2, TrainerAI_Expert_StatusAttackDown
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DEF_DOWN_2, TrainerAI_Expert_StatusDefenseDown
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SPEED_DOWN_2, TrainerAI_Expert_StatusSpeedDown
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_ATK_DOWN_2, TrainerAI_Expert_StatusSpAttackDown
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_DEF_DOWN_2, TrainerAI_Expert_StatusSpDefenseDown
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_EVA_DOWN_2, TrainerAI_Expert_StatusAccuracyDown
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ACC_DOWN_2, TrainerAI_Expert_StatusEvasionDown
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SET_REFLECT, TrainerAI_Expert_Reflect
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STATUS_POISON, TrainerAI_Expert_StatusPoison
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STATUS_PARALYZE, TrainerAI_Expert_StatusParalyze
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ATK_UP_2_STATUS_CONFUSION, TrainerAI_Expert_Swagger
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_LOWER_SPEED_HIT, TrainerAI_Expert_SpeedDownOnHit
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_CHARGE_TURN_HIGH_CRIT_FLINCH, TrainerAI_Expert_ChargeTurnNoInvuln
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_PRIORITY_NEG_1_BYPASS_ACCURACY, TrainerAI_Expert_VitalThrow
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SET_SUBSTITUTE, TrainerAI_Expert_Substitute
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RECHARGE_AFTER, TrainerAI_Expert_RechargeTurn
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STATUS_LEECH_SEED, TrainerAI_Expert_ToxicLeechSeed
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DISABLE, TrainerAI_Expert_Disable
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_COUNTER, TrainerAI_Expert_Counter
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ENCORE, TrainerAI_Expert_Encore
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_AVERAGE_HP, TrainerAI_Expert_PainSplit
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DAMAGE_WHILE_ASLEEP, TrainerAI_Expert_Nightmare
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_NEXT_ATTACK_ALWAYS_HITS, TrainerAI_Expert_LockOn
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_USE_RANDOM_LEARNED_MOVE_SLEEP, TrainerAI_Expert_SleepTalk
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_KO_MON_THAT_DEFEATED_USER, TrainerAI_Expert_DestinyBond
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_INCREASE_POWER_WITH_LESS_HP, TrainerAI_Expert_Reversal
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_CURE_PARTY_STATUS, TrainerAI_Expert_HealBell
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STEAL_HELD_ITEM, TrainerAI_Expert_Thief
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_PREVENT_ESCAPE, TrainerAI_Expert_BindingMove
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_EVA_UP_2_MINIMIZE, TrainerAI_Expert_StatusEvasionUp
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_CURSE, TrainerAI_Expert_Curse
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_PROTECT, TrainerAI_Expert_Protect
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SET_SPIKES, TrainerAI_Expert_Spikes
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_IGNORE_EVASION_REMOVE_GHOST_IMMUNE, TrainerAI_Expert_Foresight
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SURVIVE_WITH_1_HP, TrainerAI_Expert_Endure
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_PASS_STATS_AND_STATUS, TrainerAI_Expert_BatonPass
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HIT_BEFORE_SWITCH, TrainerAI_Expert_Pursuit
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HEAL_HALF_MORE_IN_SUN, TrainerAI_Expert_Synthesis
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_UNUSED_133, TrainerAI_Expert_Synthesis
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_UNUSED_134, TrainerAI_Expert_Synthesis
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_WEATHER_RAIN, TrainerAI_Expert_RainDance
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_WEATHER_SUN, TrainerAI_Expert_SunnyDay
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_MAX_ATK_LOSE_HALF_MAX_HP, TrainerAI_Expert_BellyDrum
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_COPY_STAT_CHANGES, TrainerAI_Expert_PsychUp
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_MIRROR_COAT, TrainerAI_Expert_MirrorCoat
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_CHARGE_TURN_DEF_UP, TrainerAI_Expert_ChargeTurnNoInvuln
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SKIP_CHARGE_TURN_IN_SUN, TrainerAI_Expert_ChargeTurnNoInvuln
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SKIP_CHARGE_TURN_IN_SUN, TrainerAI_Expert_UnusedSolarbeam
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_FLY, TrainerAI_Expert_ChargeTurnWithInvuln
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_UNUSED_157, TrainerAI_Expert_Recovery
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ALWAYS_FLINCH_FIRST_TURN_ONLY, TrainerAI_Expert_FakeOut
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SPIT_UP, TrainerAI_Expert_SpitUp
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SWALLOW, TrainerAI_Expert_Recovery
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_WEATHER_HAIL, TrainerAI_Expert_Hail
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_ATK_UP_CAUSE_CONFUSION, TrainerAI_Expert_Flatter
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_FAINT_AND_ATK_SP_ATK_DOWN_2, TrainerAI_Expert_Explosion
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DOUBLE_POWER_WHEN_STATUSED, TrainerAI_Expert_Facade
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HIT_LAST_WHIFF_IF_HIT, TrainerAI_Expert_FocusPunch
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DOUBLE_POWER_AND_CURE_PARALYSIS, TrainerAI_Expert_SmellingSalts
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SWITCH_HELD_ITEMS, TrainerAI_Expert_Trick
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_COPY_ABILITY, TrainerAI_Expert_ChangeUserAbility
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_GROUND_TRAP_USER_CONTINUOUS_HEAL, TrainerAI_Expert_Ingrain
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_LOWER_OWN_ATK_AND_DEF, TrainerAI_Expert_Superpower
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_APPLY_MAGIC_COAT, TrainerAI_Expert_MagicCoat
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RECYCLE, TrainerAI_Expert_Recycle
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DOUBLE_POWER_IF_HIT, TrainerAI_Expert_Revenge
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_REMOVE_SCREENS, TrainerAI_Expert_BrickBreak
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_REMOVE_HELD_ITEM, TrainerAI_Expert_KnockOff
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SET_HP_EQUAL_TO_USER, TrainerAI_Expert_Endeavor
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DECREASE_POWER_WITH_LESS_USER_HP, TrainerAI_Expert_WaterSpout
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SWITCH_ABILITIES, TrainerAI_Expert_ChangeUserAbility
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_MAKE_SHARED_MOVES_UNUSEABLE, TrainerAI_Expert_Imprison
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HEAL_STATUS, TrainerAI_Expert_Refresh
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STEAL_STATUS_MOVE, TrainerAI_Expert_Snatch
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RECOIL_THIRD, TrainerAI_Expert_RecoilMove
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HIGH_CRITICAL_BURN_HIT, TrainerAI_Expert_HighCritical
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HALVE_ELECTRIC_DAMAGE, TrainerAI_Expert_MudSport
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_USER_SP_ATK_DOWN_2, TrainerAI_Expert_Overheat
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ATK_DEF_DOWN, TrainerAI_Expert_StatusDefenseDown
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DEF_SPD_UP, TrainerAI_Expert_StatusSpDefenseUp
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ATK_DEF_UP, TrainerAI_Expert_StatusDefenseUp
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HIGH_CRITICAL_POISON_HIT, TrainerAI_Expert_HighCritical
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HALVE_FIRE_DAMAGE, TrainerAI_Expert_WaterSport
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_ATK_SP_DEF_UP, TrainerAI_Expert_StatusSpDefenseUp
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ATK_SPD_UP, TrainerAI_Expert_DragonDance
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HEAL_HALF_REMOVE_FLYING_TYPE, TrainerAI_Expert_Recovery
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_GRAVITY, TrainerAI_Expert_Gravity
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_IGNORE_EVATION_REMOVE_DARK_IMMUNE, TrainerAI_Expert_MiracleEye
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DOUBLE_POWER_HEAL_SLEEP, TrainerAI_Expert_WakeUpSlap
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SPEED_DOWN_HIT, TrainerAI_Expert_HammerArm
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_POWER_BASED_ON_LOW_SPEED, TrainerAI_Expert_GyroBall
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_FAINT_AND_FULL_HEAL_NEXT_MON, TrainerAI_Expert_HealingWish
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DOUBLE_POWER_WHEN_BELOW_HALF, TrainerAI_Expert_Brine
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_REMOVE_PROTECT, TrainerAI_Expert_Feint
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_EAT_BERRY, TrainerAI_Expert_Pluck
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DOUBLE_SPEED_3_TURNS, TrainerAI_Expert_Tailwind
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RANDOM_STAT_UP_2, TrainerAI_Expert_Acupressure
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_METAL_BURST, TrainerAI_Expert_MetalBurst
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SWITCH_HIT, TrainerAI_Expert_UTurn
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DEF_SPD_DOWN_HIT, TrainerAI_Expert_CloseCombat
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DOUBLE_POWER_IF_MOVING_SECOND, TrainerAI_Expert_Payback
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DOUBLE_POWER_IF_TARGET_HIT, TrainerAI_Expert_Assurance
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_PREVENT_ITEM_USE, TrainerAI_Expert_Embargo
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_FLING, TrainerAI_Expert_Fling
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_TRANSFER_STATUS, TrainerAI_Expert_PsychoShift
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HIGHER_POWER_WHEN_LOW_PP, TrainerAI_Expert_TrumpCard
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_PREVENT_HEALING, TrainerAI_Expert_HealBlock
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_INCREASE_POWER_WITH_MORE_HP, TrainerAI_Expert_WringOut
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SWAP_ATK_DEF, TrainerAI_Expert_PowerTrick
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SUPRESS_ABILITY, TrainerAI_Expert_GastroAcid
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_PREVENT_CRITS, TrainerAI_Expert_LuckyChant
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_USE_MOVE_FIRST, TrainerAI_Expert_MeFirst
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_USE_LAST_USED_MOVE, TrainerAI_Expert_Copycat
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SWAP_ATK_SP_ATK_STAT_CHANGES, TrainerAI_Expert_PowerSwap
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SWAP_DEF_SP_DEF_STAT_CHANGES, TrainerAI_Expert_GuardSwap
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_INCREASE_POWER_WITH_MORE_STAT_UP, TrainerAI_Expert_Punishment
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_FAIL_IF_NOT_USED_ALL_OTHER_MOVES, TrainerAI_Expert_LastResort
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SET_ABILITY_TO_INSOMNIA, TrainerAI_Expert_WorrySeed
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HIT_FIRST_IF_TARGET_ATTACKING, TrainerAI_Expert_SuckerPunch
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_TOXIC_SPIKES, TrainerAI_Expert_ToxicSpikes
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SWAP_STAT_CHANGES, TrainerAI_Expert_HeartSwap
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RESTORE_HP_EVERY_TURN, TrainerAI_Expert_AquaRing
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_GIVE_GROUND_IMMUNITY, TrainerAI_Expert_MagnetRise
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RECOIL_BURN_HIT, TrainerAI_Expert_RecoilMove
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DIVE, TrainerAI_Expert_ChargeTurnWithInvuln
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DIG, TrainerAI_Expert_ChargeTurnWithInvuln
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_REMOVE_HAZARDS_SCREENS_EVA_DOWN, TrainerAI_Expert_Defog
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_TRICK_ROOM, TrainerAI_Expert_TrickRoom
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_BLIZZARD, TrainerAI_Expert_Blizzard
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RECOIL_PARALYZE_HIT, TrainerAI_Expert_RecoilMove
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_BOUNCE, TrainerAI_Expert_ChargeTurnWithInvuln
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER, TrainerAI_Expert_Captivate
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STEALTH_ROCK, TrainerAI_Expert_StealthRock
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RECOIL_HALF, TrainerAI_Expert_RecoilMove
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_FAINT_FULL_RESTORE_NEXT_MON, TrainerAI_Expert_HealingWish
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SHADOW_FORCE, TrainerAI_Expert_ShadowForce

    ; All other moves have no additional logic.
    PopOrEnd 

TrainerAI_Expert_StatusSleep:
    ; If the attacker knows a move which requires the target to be asleep (Dream Eater or Nightmare
    ; effects), 50% chance of score +1.
    IfMoveEffectKnown AI_BATTLER_ATTACKER, BATTLE_EFFECT_RECOVER_DAMAGE_SLEEP, TrainerAI_Expert_StatusSleep_TryScorePlus1
    IfMoveEffectKnown AI_BATTLER_ATTACKER, BATTLE_EFFECT_STATUS_NIGHTMARE, TrainerAI_Expert_StatusSleep_TryScorePlus1
    GoTo TrainerAI_Expert_StatusSleep_End

TrainerAI_Expert_StatusSleep_TryScorePlus1:
    IfRandomLessThan 128, TrainerAI_Expert_StatusSleep_End
    AddToMoveScore 1

TrainerAI_Expert_StatusSleep_End:
    PopOrEnd 

TrainerAI_Expert_DrainMove:
    ; If the target is immune to or resists the move, ~80.5% chance of score -3.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_Expert_DrainMove_TryScoreMinus3
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, TrainerAI_Expert_DrainMove_TryScoreMinus3
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, TrainerAI_Expert_DrainMove_TryScoreMinus3
    GoTo TrainerAI_Expert_DrainMove_End

TrainerAI_Expert_DrainMove_TryScoreMinus3:
    IfRandomLessThan 50, TrainerAI_Expert_DrainMove_End
    AddToMoveScore -3

TrainerAI_Expert_DrainMove_End:
    PopOrEnd 

TrainerAI_Expert_Explosion:
    ; If the target's Evasion is at +1 stage or higher, additional score -1 to all further modifiers.
    ;
    ; If the target's Evasion is at +3 stages or higher, 50% chance of additional score -1 to all further modifiers.
    ;
    ; Apply an additional modifier according to the user's current HP (as a percentage):
    ;
    ; | User HP (%)   | Additional Qualifier | Modifier                 |
    ; | ------------: | -------------------- | ------------------------ |
    ; |        >= 80% | Faster than target   | 80.5% chance of score -3 |
    ; |        >= 80% | Slower than target   | 80.5% chance of score -1 |
    ; |         > 50% | N/A                  | 80.5% chance of score -1 |
    ; | <= 50%, > 30% | N/A                  | 50% chance of score +1   |
    ; |        <= 30% | N/A                  | 80.5% chance of score +1 |
    ;
    IfStatStageLessThan AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 7, TrainerAI_Expert_Explosion_CheckUserHighHP
    AddToMoveScore -1
    IfStatStageLessThan AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 10, TrainerAI_Expert_Explosion_CheckUserHighHP
    IfRandomLessThan 128, TrainerAI_Expert_Explosion_CheckUserHighHP
    AddToMoveScore -1

TrainerAI_Expert_Explosion_CheckUserHighHP:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 80, TrainerAI_Expert_Explosion_CheckUserMediumHP
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_Explosion_CheckUserMediumHP
    IfRandomLessThan 50, TrainerAI_Expert_Explosion_End
    GoTo TrainerAI_ScoreMinus3

TrainerAI_Expert_Explosion_CheckUserMediumHP:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 50, TrainerAI_Expert_Explosion_TryScoreMinus1
    IfRandomLessThan 128, TrainerAI_Expert_Explosion_CheckUserLowHP
    AddToMoveScore 1

TrainerAI_Expert_Explosion_CheckUserLowHP:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 30, TrainerAI_Expert_Explosion_End
    IfRandomLessThan 50, TrainerAI_Expert_Explosion_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_Explosion_End

TrainerAI_Expert_Explosion_TryScoreMinus1:
    IfRandomLessThan 50, TrainerAI_Expert_Explosion_End
    AddToMoveScore -1

TrainerAI_Expert_Explosion_End:
    PopOrEnd 

TrainerAI_Expert_DreamEater:
    ; If the target is immune to or resists the move, always score -1 instead of the above.
    ;
    ; If the target does not resist the move and is asleep, 80.1% chance of score +3.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_Expert_DreamEater_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, TrainerAI_Expert_DreamEater_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, TrainerAI_Expert_DreamEater_ScoreMinus1
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_SLEEP, TrainerAI_Expert_DreamEater_TryScorePlus3
    GoTo TrainerAI_Expert_DreamEater_End

TrainerAI_Expert_DreamEater_TryScorePlus3:
    IfRandomLessThan 51, TrainerAI_Expert_DreamEater_End
    AddToMoveScore 3
    GoTo TrainerAI_Expert_DreamEater_End

TrainerAI_Expert_DreamEater_ScoreMinus1:
    AddToMoveScore -1

TrainerAI_Expert_DreamEater_End:
    PopOrEnd 

TrainerAI_Expert_MirrorMove:
    ; If the attacker is faster than its target and the last-used move by that target is in the below
    ; list, 50% chance of score +2.
    ;
    ; Otherwise, if the last-used move by the target is *not* in the table, 68.75% chance of score -1.
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_MirrorMove_TryScoreMinus1
    LoadBattlerPreviousMove AI_BATTLER_DEFENDER
    IfLoadedNotInTable TrainerAI_Expert_MirrorMove_MoveTable, TrainerAI_Expert_MirrorMove_TryScoreMinus1
    IfRandomLessThan 128, TrainerAI_Expert_MirrorMove_End
    AddToMoveScore 2
    GoTo TrainerAI_Expert_MirrorMove_End

TrainerAI_Expert_MirrorMove_TryScoreMinus1:
    LoadBattlerPreviousMove AI_BATTLER_DEFENDER
    IfLoadedInTable TrainerAI_Expert_MirrorMove_MoveTable, TrainerAI_Expert_MirrorMove_End
    IfRandomLessThan 80, TrainerAI_Expert_MirrorMove_End
    AddToMoveScore -1

TrainerAI_Expert_MirrorMove_End:
    PopOrEnd 

TrainerAI_Expert_MirrorMove_MoveTable:
    TableEntry MOVE_SLEEP_POWDER
    TableEntry MOVE_LOVELY_KISS
    TableEntry MOVE_SPORE
    TableEntry MOVE_HYPNOSIS
    TableEntry MOVE_SING
    TableEntry MOVE_GRASS_WHISTLE
    TableEntry MOVE_SHADOW_PUNCH
    TableEntry MOVE_SAND_ATTACK
    TableEntry MOVE_SMOKE_SCREEN
    TableEntry MOVE_TOXIC
    TableEntry MOVE_GUILLOTINE
    TableEntry MOVE_HORN_DRILL
    TableEntry MOVE_FISSURE
    TableEntry MOVE_SHEER_COLD
    TableEntry MOVE_CROSS_CHOP
    TableEntry MOVE_AEROBLAST
    TableEntry MOVE_CONFUSE_RAY
    TableEntry MOVE_SWEET_KISS
    TableEntry MOVE_SCREECH
    TableEntry MOVE_COTTON_SPORE
    TableEntry MOVE_SCARY_FACE
    TableEntry MOVE_FAKE_TEARS
    TableEntry MOVE_METAL_SOUND
    TableEntry MOVE_THUNDER_WAVE
    TableEntry MOVE_GLARE
    TableEntry MOVE_POISON_POWDER
    TableEntry MOVE_SHADOW_BALL
    TableEntry MOVE_DYNAMIC_PUNCH
    TableEntry MOVE_HYPER_BEAM
    TableEntry MOVE_EXTREME_SPEED
    TableEntry MOVE_THIEF
    TableEntry MOVE_COVET
    TableEntry MOVE_ATTRACT
    TableEntry MOVE_SWAGGER
    TableEntry MOVE_TORMENT
    TableEntry MOVE_FLATTER
    TableEntry MOVE_TRICK
    TableEntry MOVE_SUPERPOWER
    TableEntry MOVE_SKILL_SWAP
    TableEntry MOVE_PSYCHO_SHIFT
    TableEntry MOVE_POWER_SWAP
    TableEntry MOVE_GUARD_SWAP
    TableEntry MOVE_SUCKER_PUNCH
    TableEntry MOVE_HEART_SWAP
    TableEntry MOVE_SWITCHEROO
    TableEntry MOVE_CAPTIVATE
    TableEntry MOVE_DARK_VOID
    TableEntry TABLE_END

TrainerAI_Expert_StatusAttackUp:
    ; If the attacker is at +3 stat stage or higher, ~60.9% chance of additional score -1.
    ;
    ; If the attacker is at 100% HP, 50% chance of additional score +2.
    ;
    ; If the attacker's HP is > 70%, no further score changes.
    ;
    ; If the attacker's HP is < 40%, additional score -2.
    ;
    ; Otherwise, ~84.4% chance of additional score -2.
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 9, TrainerAI_Expert_StatusAttackUp_CheckUserAtMaxHP
    IfRandomLessThan 100, TrainerAI_Expert_StatusAttackUp_CheckUserHPRange
    AddToMoveScore -1
    GoTo TrainerAI_Expert_StatusAttackUp_CheckUserHPRange

TrainerAI_Expert_StatusAttackUp_CheckUserAtMaxHP:
    IfHPPercentNotEqualTo AI_BATTLER_ATTACKER, 100, TrainerAI_Expert_StatusAttackUp_CheckUserHPRange
    IfRandomLessThan 128, TrainerAI_Expert_StatusAttackUp_CheckUserHPRange
    AddToMoveScore 2

TrainerAI_Expert_StatusAttackUp_CheckUserHPRange:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 70, TrainerAI_Expert_StatusAttackUp_End
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 40, TrainerAI_Expert_StatusAttackUp_ScoreMinus2
    IfRandomLessThan 40, TrainerAI_Expert_StatusAttackUp_End

TrainerAI_Expert_StatusAttackUp_ScoreMinus2:
    AddToMoveScore -2

TrainerAI_Expert_StatusAttackUp_End:
    PopOrEnd 

TrainerAI_Expert_StatusDefenseUp:
    ; If the attacker is at +3 stat stage or higher, ~60.9% chance of additional score -1.
    ;
    ; If the attacker is at 100% HP, 50% chance of additional score +2.
    ;
    ; If the attacker's HP is >= 70%, ~78.1% chance to suppress all further score modifiers.
    ;
    ; If the attacker's HP is < 40%, additional score -2.
    ;
    ; Otherwise:
    ; - If the target's last-used move was a Status move, ~76.6% chance of score -2.
    ; - If the target's last-used move was a Special move, 58.6% chance of score -2.
    ; - Otherwise, score -2.
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 9, TrainerAI_Expert_StatusDefenseUp_CheckUserAtMaxHP
    IfRandomLessThan 100, TrainerAI_Expert_StatusDefenseUp_CheckUserHighHP
    AddToMoveScore -1
    GoTo TrainerAI_Expert_StatusDefenseUp_CheckUserHighHP

TrainerAI_Expert_StatusDefenseUp_CheckUserAtMaxHP:
    IfHPPercentNotEqualTo AI_BATTLER_ATTACKER, 100, TrainerAI_Expert_StatusDefenseUp_CheckUserHighHP
    IfRandomLessThan 128, TrainerAI_Expert_StatusDefenseUp_CheckUserHighHP
    AddToMoveScore 2

TrainerAI_Expert_StatusDefenseUp_CheckUserHighHP:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 70, TrainerAI_Expert_StatusDefenseUp_CheckUserMediumHP
    IfRandomLessThan 200, TrainerAI_Expert_StatusDefenseUp_End

TrainerAI_Expert_StatusDefenseUp_CheckUserMediumHP:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 40, TrainerAI_Expert_StatusDefenseUp_ScoreMinus2
    LoadBattlerPreviousMove AI_BATTLER_DEFENDER
    LoadPowerOfLoadedMove 
    IfLoadedEqualTo 0, TrainerAI_Expert_StatusDefenseUp_UserAtLowHP
    LoadDefenderLastUsedMoveClass 
    IfLoadedEqualTo CLASS_SPECIAL, TrainerAI_Expert_StatusDefenseUp_ScoreMinus2
    IfRandomLessThan 60, TrainerAI_Expert_StatusDefenseUp_End

TrainerAI_Expert_StatusDefenseUp_UserAtLowHP:
    IfRandomLessThan 60, TrainerAI_Expert_StatusDefenseUp_End

TrainerAI_Expert_StatusDefenseUp_ScoreMinus2:
    AddToMoveScore -2

TrainerAI_Expert_StatusDefenseUp_End:
    PopOrEnd 

TrainerAI_Expert_StatusDefenseUp_PreSplitPhysicalTypes:
    TableEntry TYPE_NORMAL
    TableEntry TYPE_FIGHTING
    TableEntry TYPE_POISON
    TableEntry TYPE_GROUND
    TableEntry TYPE_FLYING
    TableEntry TYPE_ROCK
    TableEntry TYPE_BUG
    TableEntry TYPE_GHOST
    TableEntry TYPE_STEEL
    TableEntry TABLE_END

TrainerAI_Expert_StatusSpeedUp:
    ; If the AI is faster than its target, score -3.
    ;
    ; If the AI is slower than its target, 72.7% chance of score +3.
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_StatusSpeedUp_TryScorePlus3
    AddToMoveScore -3
    GoTo TrainerAI_Expert_StatusSpeedUp_End

TrainerAI_Expert_StatusSpeedUp_TryScorePlus3:
    IfRandomLessThan 70, TrainerAI_Expert_StatusSpeedUp_End
    AddToMoveScore 3

TrainerAI_Expert_StatusSpeedUp_End:
    PopOrEnd 

TrainerAI_Expert_StatusSpAttackUp:
    ; If the attacker is at +3 stat stage or higher, ~60.9% chance of additional score -1.
    ;
    ; If the attacker is at 100% HP, 50% chance of additional score +2.
    ;
    ; If the attacker's HP is > 70%, no further score changes.
    ;
    ; If the attacker's HP is < 40%, additional score -2.
    ;
    ; Otherwise, ~84.4% chance of additional score -2.
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_ATTACK, 9, TrainerAI_Expert_StatusSpAttackUp_CheckUserAtMaxHP
    IfRandomLessThan 100, TrainerAI_Expert_StatusSpAttackUp_CheckUserHPRange
    AddToMoveScore -1
    GoTo TrainerAI_Expert_StatusSpAttackUp_CheckUserHPRange

TrainerAI_Expert_StatusSpAttackUp_CheckUserAtMaxHP:
    IfHPPercentNotEqualTo AI_BATTLER_ATTACKER, 100, TrainerAI_Expert_StatusSpAttackUp_CheckUserHPRange
    IfRandomLessThan 128, TrainerAI_Expert_StatusSpAttackUp_CheckUserHPRange
    AddToMoveScore 2

TrainerAI_Expert_StatusSpAttackUp_CheckUserHPRange:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 70, TrainerAI_Expert_StatusSpAttackUp_End
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 40, TrainerAI_Expert_StatusSpAttackUp_ScoreMinus2
    IfRandomLessThan 70, TrainerAI_Expert_StatusSpAttackUp_End

TrainerAI_Expert_StatusSpAttackUp_ScoreMinus2:
    AddToMoveScore -2

TrainerAI_Expert_StatusSpAttackUp_End:
    PopOrEnd 

TrainerAI_Expert_StatusSpDefenseUp:
    ; If the attacker is at +3 stat stage or higher, ~60.9% chance of additional score -1.
    ;
    ; If the attacker is at 100% HP, 50% chance of additional score +2.
    ;
    ; If the attacker's HP is >= 70%, ~78.1% chance to suppress all further score modifiers.
    ;
    ; If the attacker's HP is < 40%, additional score -2.
    ;
    ; Otherwise:
    ; - If the target's last-used move was a Status move, ~76.6% chance of score -2.
    ; - If the target's last-used move was a Physical move, 58.6% chance of score -2.
    ; - Otherwise, score -2.
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_DEFENSE, 9, TrainerAI_Expert_StatusSpDefenseUp_CheckUserAtMaxHP
    IfRandomLessThan 100, TrainerAI_Expert_StatusSpDefenseUp_CheckUserHighHP
    AddToMoveScore -1
    GoTo TrainerAI_Expert_StatusSpDefenseUp_CheckUserHighHP

TrainerAI_Expert_StatusSpDefenseUp_CheckUserAtMaxHP:
    IfHPPercentNotEqualTo AI_BATTLER_ATTACKER, 100, TrainerAI_Expert_StatusSpDefenseUp_CheckUserHighHP
    IfRandomLessThan 128, TrainerAI_Expert_StatusSpDefenseUp_CheckUserHighHP
    AddToMoveScore 2

TrainerAI_Expert_StatusSpDefenseUp_CheckUserHighHP:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 70, TrainerAI_Expert_StatusSpDefenseUp_CheckUserMediumHP
    IfRandomLessThan 200, TrainerAI_Expert_StatusSpDefenseUp_End

TrainerAI_Expert_StatusSpDefenseUp_CheckUserMediumHP:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 40, TrainerAI_Expert_StatusSpDefenseUp_TryScoreMinus2
    LoadBattlerPreviousMove AI_BATTLER_DEFENDER
    LoadPowerOfLoadedMove 
    IfLoadedEqualTo 0, TrainerAI_Expert_StatusSpDefenseUp_UserAtLowHP
    LoadDefenderLastUsedMoveClass 
    IfLoadedEqualTo CLASS_PHYSICAL, TrainerAI_Expert_StatusSpDefenseUp_TryScoreMinus2
    IfRandomLessThan 60, TrainerAI_Expert_StatusSpDefenseUp_End

TrainerAI_Expert_StatusSpDefenseUp_UserAtLowHP:
    IfRandomLessThan 60, TrainerAI_Expert_StatusSpDefenseUp_End

TrainerAI_Expert_StatusSpDefenseUp_TryScoreMinus2:
    AddToMoveScore -2

TrainerAI_Expert_StatusSpDefenseUp_End:
    PopOrEnd 

TrainerAI_Expert_StatusSpDefenseUp_PreSplitPhysicalTypes:
    TableEntry TYPE_NORMAL
    TableEntry TYPE_FIGHTING
    TableEntry TYPE_POISON
    TableEntry TYPE_GROUND
    TableEntry TYPE_FLYING
    TableEntry TYPE_ROCK
    TableEntry TYPE_BUG
    TableEntry TYPE_GHOST
    TableEntry TYPE_STEEL
    TableEntry TABLE_END

TrainerAI_Expert_StatusAccuracyUp:
    ; If the attacker is at +3 stat stage or higher, ~80.5% chance of additional score -2.
    ;
    ; If the attacker's HP is at < 70%, score -2.
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_ACCURACY, 9, TrainerAI_Expert_StatusAccuracyUp_TryScoreMinus2
    IfRandomLessThan 50, TrainerAI_Expert_StatusAccuracyUp_TryScoreMinus2
    AddToMoveScore -2

TrainerAI_Expert_StatusAccuracyUp_TryScoreMinus2:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 70, TrainerAI_Expert_StatusAccuracyUp_End
    AddToMoveScore -2

TrainerAI_Expert_StatusAccuracyUp_End:
    PopOrEnd 

TrainerAI_Expert_StatusEvasionUp:
    ; If the attacker's HP is >= 90%, ~60.9% chance of additional score +3.
    ;
    ; If the attacker is at +3 stat stage or higher, 50% chance of additional score -1.
    ;
    ; If the target is Badly Poisoned:
    ; - If the attacker's HP is > 50%, ~80.5% chance of additional score +3.
    ; - If the attacker's HP is <= 50%, ~55.3% chance of additional score +3.
    ;
    ; If the target is affected by Leech Seed, ~72.7% chance of additional score +3.
    ;
    ; If the attacker is affected by Ingrain or Aqua Ring, 50% chance of additional score +2.
    ;
    ; If the target is affected by Curse, ~72.7% chance of additional score +3.
    ;
    ; If the attacker's HP is > 70%, suppress all further modifiers. Otherwise:
    ; - If the attacker is at exactly +0 stat stage, no further score modifiers.
    ; - If either the attacker's HP or the target's HP are < 40%, score -2.
    ; - Otherwise, ~72.7% chance of score -2.
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 90, TrainerAI_Expert_StatusEvasionUp_CheckUserStatStage
    IfRandomLessThan 100, TrainerAI_Expert_StatusEvasionUp_CheckUserStatStage
    AddToMoveScore 3

TrainerAI_Expert_StatusEvasionUp_CheckUserStatStage:
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_EVASION, 9, TrainerAI_Expert_StatusEvasionUp_CheckEnemyBadlyPoisoned
    IfRandomLessThan 128, TrainerAI_Expert_StatusEvasionUp_CheckEnemyBadlyPoisoned
    AddToMoveScore -1

TrainerAI_Expert_StatusEvasionUp_CheckEnemyBadlyPoisoned:
    IfNotStatus AI_BATTLER_DEFENDER, MON_CONDITION_TOXIC, TrainerAI_Expert_StatusEvasionUp_CheckEnemySeeded
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 50, TrainerAI_Expert_StatusEvasionUp_TryScorePlus3
    IfRandomLessThan 80, TrainerAI_Expert_StatusEvasionUp_CheckEnemySeeded

TrainerAI_Expert_StatusEvasionUp_TryScorePlus3:
    IfRandomLessThan 50, TrainerAI_Expert_StatusEvasionUp_CheckEnemySeeded
    AddToMoveScore 3

TrainerAI_Expert_StatusEvasionUp_CheckEnemySeeded:
    IfNotMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_LEECH_SEED, TrainerAI_Expert_StatusEvasionUp_CheckUserIngrained
    IfRandomLessThan 70, TrainerAI_Expert_StatusEvasionUp_CheckUserIngrained
    AddToMoveScore 3

TrainerAI_Expert_StatusEvasionUp_CheckUserIngrained:
    IfNotMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_INGRAIN, TrainerAI_Expert_StatusEvasionUp_CheckUserHasAquaRing
    IfRandomLessThan 128, TrainerAI_Expert_StatusEvasionUp_CheckEnemyCursed
    AddToMoveScore 2
    GoTo TrainerAI_Expert_StatusEvasionUp_CheckEnemyCursed

TrainerAI_Expert_StatusEvasionUp_CheckUserHasAquaRing:
    IfNotMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_AQUA_RING, TrainerAI_Expert_StatusEvasionUp_CheckEnemyCursed
    IfRandomLessThan 128, TrainerAI_Expert_StatusEvasionUp_CheckEnemyCursed
    AddToMoveScore 2
    GoTo TrainerAI_Expert_StatusEvasionUp_CheckEnemyCursed

TrainerAI_Expert_StatusEvasionUp_CheckEnemyCursed:
    IfNotVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_CURSE, TrainerAI_Expert_StatusEvasionUp_CheckHPRanges
    IfRandomLessThan 70, TrainerAI_Expert_StatusEvasionUp_CheckHPRanges
    AddToMoveScore 3

TrainerAI_Expert_StatusEvasionUp_CheckHPRanges:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 70, TrainerAI_Expert_StatusEvasionUp_End
    IfStatStageEqualTo AI_BATTLER_ATTACKER, BATTLE_STAT_EVASION, 6, TrainerAI_Expert_StatusEvasionUp_End
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 40, TrainerAI_Expert_StatusEvasionUp_ScoreMinus2
    IfHPPercentLessThan AI_BATTLER_DEFENDER, 40, TrainerAI_Expert_StatusEvasionUp_ScoreMinus2
    IfRandomLessThan 70, TrainerAI_Expert_StatusEvasionUp_End

TrainerAI_Expert_StatusEvasionUp_ScoreMinus2:
    AddToMoveScore -2

TrainerAI_Expert_StatusEvasionUp_End:
    PopOrEnd 

TrainerAI_Expert_BypassAccuracyMove:
    ; If the target is at +5 Evasion or higher, or the attacker is at -5 Accuracy or lower, 60.9%
    ; chance of score +2, 39.1% chance of score +1.
    ;
    ; If the target is at +3 Evasion or higher, or the attacker is at -3 Accuracy or lower, score +1.
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 10, TrainerAI_Expert_BypassAccuracyMove_ScorePlus1
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_ACCURACY, 2, TrainerAI_Expert_BypassAccuracyMove_ScorePlus1
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 8, TrainerAI_Expert_BypassAccuracyMove_TryScorePlus1
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_ACCURACY, 4, TrainerAI_Expert_BypassAccuracyMove_TryScorePlus1
    GoTo TrainerAI_Expert_BypassAccuracyMove_End

TrainerAI_Expert_BypassAccuracyMove_ScorePlus1:
    AddToMoveScore 1

TrainerAI_Expert_BypassAccuracyMove_TryScorePlus1:
    IfRandomLessThan 100, TrainerAI_Expert_BypassAccuracyMove_End
    AddToMoveScore 1

TrainerAI_Expert_BypassAccuracyMove_End:
    PopOrEnd 

TrainerAI_Expert_StatusAttackDown:
    ; If the target is at any stat stage other than +0, additional score -1. Also, further modify
    ; the score according to all of the following which apply:
    ; - If the attacker's HP is at 90% or lower, additional score -1.
    ; - If the target is at -3 stat stage or lower, 80.5% chance of additional score -2.
    ;
    ; If the target's HP is at 70% or lower, additional score -2.
    ;
    ; If the move last used by the target was not a Special move, 50% chance of score -2.
    IfStatStageEqualTo AI_BATTLER_DEFENDER, BATTLE_STAT_ATTACK, 6, TrainerAI_Expert_StatusAttackDown_CheckTargetHP
    AddToMoveScore -1
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 90, TrainerAI_Expert_StatusAttackDown_CheckTargetStatStage
    AddToMoveScore -1

TrainerAI_Expert_StatusAttackDown_CheckTargetStatStage:
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_ATTACK, 3, TrainerAI_Expert_StatusAttackDown_CheckTargetHP
    IfRandomLessThan 50, TrainerAI_Expert_StatusAttackDown_CheckTargetHP
    AddToMoveScore -2

TrainerAI_Expert_StatusAttackDown_CheckTargetHP:
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 70, TrainerAI_Expert_StatusAttackDown_CheckLastUsedMove
    AddToMoveScore -2

TrainerAI_Expert_StatusAttackDown_CheckLastUsedMove:
    LoadDefenderLastUsedMoveClass 
    IfLoadedNotEqualTo CLASS_SPECIAL, TrainerAI_Expert_StatusAttackDown_End
    IfRandomLessThan 128, TrainerAI_Expert_StatusAttackDown_End
    AddToMoveScore -2

TrainerAI_Expert_StatusAttackDown_End:
    PopOrEnd 

TrainerAI_Expert_StatusAttackDown_PreSplitPhysicalTypes:
    TableEntry TYPE_NORMAL
    TableEntry TYPE_FIGHTING
    TableEntry TYPE_GROUND
    TableEntry TYPE_ROCK
    TableEntry TYPE_BUG
    TableEntry TYPE_STEEL
    TableEntry TABLE_END

TrainerAI_Expert_StatusDefenseDown:
    ; If the attacker's HP is < 70%, 80.5% chance of additional score -2.
    ;
    ; If the target's stat stage is otherwise at -3 or lower, 80.5% chance of additional score -2.
    ;
    ; If the target's HP is < 70%, score -2.
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 70, TrainerAI_Expert_StatusDefenseDown_TryScoreMinus2
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_DEFENSE, 3, TrainerAI_Expert_StatusDefenseDown_CheckTargetHP

TrainerAI_Expert_StatusDefenseDown_TryScoreMinus2:
    IfRandomLessThan 50, TrainerAI_Expert_StatusDefenseDown_CheckTargetHP
    AddToMoveScore -2

TrainerAI_Expert_StatusDefenseDown_CheckTargetHP:
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 70, TrainerAI_Expert_StatusDefenseDown_End
    AddToMoveScore -2

TrainerAI_Expert_StatusDefenseDown_End:
    PopOrEnd 

TrainerAI_Expert_SpeedDownOnHit:
    ; If the target is immune to or would resist the move, do not apply any further modifiers.
    ;
    ; Treat the exact moves Icy Wind, Rock Tomb, and Mud Shot as Speed-reducing status moves.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_Expert_SpeedDownOnHit_End
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, TrainerAI_Expert_SpeedDownOnHit_End
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, TrainerAI_Expert_SpeedDownOnHit_End
    IfMoveEqualTo MOVE_ICY_WIND, TrainerAI_Expert_StatusSpeedDown
    IfMoveEqualTo MOVE_ROCK_TOMB, TrainerAI_Expert_StatusSpeedDown
    IfMoveEqualTo MOVE_MUD_SHOT, TrainerAI_Expert_StatusSpeedDown
    PopOrEnd 

TrainerAI_Expert_SpeedDownOnHit_End:
    PopOrEnd 

TrainerAI_Expert_StatusSpeedDown:
    ; If the attacker is slower than its target, 72.7% chance of score +2.
    ;
    ; If the attacker is faster than its target, score -3.
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_StatusSpeedDown_TryScorePlus2
    AddToMoveScore -3
    GoTo TrainerAI_Expert_StatusSpeedDown_End

TrainerAI_Expert_StatusSpeedDown_TryScorePlus2:
    IfRandomLessThan 70, TrainerAI_Expert_StatusSpeedDown_End
    AddToMoveScore 2

TrainerAI_Expert_StatusSpeedDown_End:
    PopOrEnd 

TrainerAI_Expert_StatusSpAttackDown:
    ; If the target is at any stat stage other than +0, additional score -1. Also, further modify
    ; the score according to all of the following which apply:
    ; - If the attacker's HP is at 90% or lower, additional score -1.
    ; - If the target is at -3 stat stage or lower, 80.5% chance of additional score -2.
    ;
    ; If the target's HP is at 70% or lower, additional score -2.
    ;
    ; If the move last used by the target was not a Physical move, 50% chance of score -2.
    IfStatStageEqualTo AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK, 6, TrainerAI_Expert_StatusSpAttackDown_CheckTargetHP
    AddToMoveScore -1
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 90, TrainerAI_Expert_StatusSpAttackDown_CheckTargetStatStage
    AddToMoveScore -1

TrainerAI_Expert_StatusSpAttackDown_CheckTargetStatStage:
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK, 3, TrainerAI_Expert_StatusSpAttackDown_CheckTargetHP
    IfRandomLessThan 50, TrainerAI_Expert_StatusSpAttackDown_CheckTargetHP
    AddToMoveScore -2

TrainerAI_Expert_StatusSpAttackDown_CheckTargetHP:
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 70, TrainerAI_Expert_StatusSpAttackDown_CheckLastUsedMove
    AddToMoveScore -2

TrainerAI_Expert_StatusSpAttackDown_CheckLastUsedMove:
    LoadDefenderLastUsedMoveClass 
    IfLoadedNotEqualTo CLASS_PHYSICAL, TrainerAI_Expert_StatusSpAttackDown_End
    IfRandomLessThan 128, TrainerAI_Expert_StatusSpAttackDown_End
    AddToMoveScore -2

TrainerAI_Expert_StatusSpAttackDown_End:
    PopOrEnd 

TrainerAI_Expert_StatusSpAttackDown_PreSplitSpecialTypes:
    TableEntry TYPE_FIRE
    TableEntry TYPE_WATER
    TableEntry TYPE_GRASS
    TableEntry TYPE_ELECTRIC
    TableEntry TYPE_PSYCHIC
    TableEntry TYPE_ICE
    TableEntry TYPE_DRAGON
    TableEntry TYPE_DARK
    TableEntry TABLE_END

TrainerAI_Expert_StatusSpDefenseDown:
    ; If the attacker's HP is < 70%, 80.5% chance of additional score -2.
    ;
    ; If the target's stat stage is otherwise at -3 or lower, 80.5% chance of additional score -2.
    ;
    ; If the target's HP is < 70%, score -2.
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 70, TrainerAI_Expert_StatusSpDefenseDown_TryScoreMinus2
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_SP_DEFENSE, 3, TrainerAI_Expert_StatusSpDefenseDown_CheckTargetHP

TrainerAI_Expert_StatusSpDefenseDown_TryScoreMinus2:
    IfRandomLessThan 50, TrainerAI_Expert_StatusSpDefenseDown_CheckTargetHP
    AddToMoveScore -2

TrainerAI_Expert_StatusSpDefenseDown_CheckTargetHP:
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 70, TrainerAI_Expert_StatusSpDefenseDown_End
    AddToMoveScore -2

TrainerAI_Expert_StatusSpDefenseDown_End:
    PopOrEnd 

TrainerAI_Expert_StatusAccuracyDown:
    ; If the target's HP is <= 70% and the attacker's HP is NOT >= 70%, 60.9% chance of additional
    ; score -1.
    ;
    ; If the attacker is at -2 accuracy or lower, 68.75% chance of additional score -2.
    ;
    ; If the target is Badly Poisoned, ~72.7% chance of additional score +2.
    ;
    ; If the target is affected by Leech Seed, ~72.7% chance of additional score +2.
    ;
    ; If the attacker is affected by Ingrain or Aqua Ring, 50% chance of additional score +1.
    ;
    ; If the target is affected by Curse, ~72.7% chance of additional score +2.
    ;
    ; If the attacker's HP is > 70%, suppress all further modifiers. Otherwise:
    ; - If the attacker is at exactly +0 stat stage, no further score modifiers.
    ; - If either the attacker's HP or the target's HP are < 40%, score -2.
    ; - Otherwise, ~72.7% chance of score -2.
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 70, TrainerAI_Expert_StatusAccuracyDown_TryScoreMinus1
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 70, TrainerAI_Expert_StatusAccuracyDown_CheckUserAccuracy

TrainerAI_Expert_StatusAccuracyDown_TryScoreMinus1:
    IfRandomLessThan 100, TrainerAI_Expert_StatusAccuracyDown_CheckUserAccuracy
    AddToMoveScore -1

TrainerAI_Expert_StatusAccuracyDown_CheckUserAccuracy:
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_ACCURACY, 4, TrainerAI_Expert_StatusAccuracyDown_CheckTargetBadlyPoisoned
    IfRandomLessThan 80, TrainerAI_Expert_StatusAccuracyDown_CheckTargetBadlyPoisoned
    AddToMoveScore -2

TrainerAI_Expert_StatusAccuracyDown_CheckTargetBadlyPoisoned:
    IfNotStatus AI_BATTLER_DEFENDER, MON_CONDITION_TOXIC, TrainerAI_Expert_StatusAccuracyDown_CheckTargetSeeded
    IfRandomLessThan 70, TrainerAI_Expert_StatusAccuracyDown_CheckTargetSeeded
    AddToMoveScore 2

TrainerAI_Expert_StatusAccuracyDown_CheckTargetSeeded:
    IfNotMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_LEECH_SEED, TrainerAI_Expert_StatusAccuracyDown_CheckUserIngrained
    IfRandomLessThan 70, TrainerAI_Expert_StatusAccuracyDown_CheckUserIngrained
    AddToMoveScore 2

TrainerAI_Expert_StatusAccuracyDown_CheckUserIngrained:
    IfNotMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_INGRAIN, TrainerAI_Expert_StatusAccuracyDown_CheckUserHasAquaRing
    IfRandomLessThan 128, TrainerAI_Expert_StatusAccuracyDown_CheckTargetCursed
    AddToMoveScore 1
    GoTo TrainerAI_Expert_StatusAccuracyDown_CheckTargetCursed

TrainerAI_Expert_StatusAccuracyDown_CheckUserHasAquaRing:
    IfNotMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_AQUA_RING, TrainerAI_Expert_StatusAccuracyDown_CheckTargetCursed
    IfRandomLessThan 128, TrainerAI_Expert_StatusAccuracyDown_CheckTargetCursed
    AddToMoveScore 1

TrainerAI_Expert_StatusAccuracyDown_CheckTargetCursed:
    IfNotVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_CURSE, TrainerAI_Expert_StatusAccuracyDown_CheckHPRanges
    IfRandomLessThan 70, TrainerAI_Expert_StatusAccuracyDown_CheckHPRanges
    AddToMoveScore 2

TrainerAI_Expert_StatusAccuracyDown_CheckHPRanges:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 70, TrainerAI_Expert_StatusAccuracyDown_End
    IfStatStageEqualTo AI_BATTLER_DEFENDER, BATTLE_STAT_ACCURACY, 6, TrainerAI_Expert_StatusAccuracyDown_End
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 40, TrainerAI_Expert_StatusAccuracyDown_ScoreMinus2
    IfHPPercentLessThan AI_BATTLER_DEFENDER, 40, TrainerAI_Expert_StatusAccuracyDown_ScoreMinus2
    IfRandomLessThan 70, TrainerAI_Expert_StatusAccuracyDown_End

TrainerAI_Expert_StatusAccuracyDown_ScoreMinus2:
    AddToMoveScore -2

TrainerAI_Expert_StatusAccuracyDown_End:
    PopOrEnd 

TrainerAI_Expert_StatusEvasionDown:
    ; If the attacker's HP is < 70%, 80.5% chance of additional score -2.
    ;
    ; Otherwise, if the target's stat stage is -3 or lower, 80.5% chance of additional score -2.
    ;
    ; If the target's HP is <= 70%, score -2.
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 70, TrainerAI_Expert_StatusEvasionDown_TryScoreMinus2
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 3, TrainerAI_Expert_StatusEvasionDown_CheckTargetHP

TrainerAI_Expert_StatusEvasionDown_TryScoreMinus2:
    IfRandomLessThan 50, TrainerAI_Expert_StatusEvasionDown_CheckTargetHP
    AddToMoveScore -2

TrainerAI_Expert_StatusEvasionDown_CheckTargetHP:
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 70, TrainerAI_Expert_StatusEvasionDown_End
    AddToMoveScore -2

TrainerAI_Expert_StatusEvasionDown_End:
    PopOrEnd 

TrainerAI_Expert_Haze:
    ; If any of the attacker's stat stages are at +3 or higher, or any of the target's stat stages
    ; are at -3 or lower, 80.4% chance of additional score -3.
    ;
    ; If any of the attacker's stat stages are at -3 or lower, or any of the target's stat stages
    ; are at +3 or higher, 80.4% chance of additional score +3.
    ;
    ; Otherwise, score -1.
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 8, TrainerAI_Expert_Haze_TryScoreMinus3
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 8, TrainerAI_Expert_Haze_TryScoreMinus3
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_ATTACK, 8, TrainerAI_Expert_Haze_TryScoreMinus3
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_DEFENSE, 8, TrainerAI_Expert_Haze_TryScoreMinus3
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_EVASION, 8, TrainerAI_Expert_Haze_TryScoreMinus3
    IfStatStageLessThan AI_BATTLER_DEFENDER, BATTLE_STAT_ATTACK, 4, TrainerAI_Expert_Haze_TryScoreMinus3
    IfStatStageLessThan AI_BATTLER_DEFENDER, BATTLE_STAT_DEFENSE, 4, TrainerAI_Expert_Haze_TryScoreMinus3
    IfStatStageLessThan AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK, 4, TrainerAI_Expert_Haze_TryScoreMinus3
    IfStatStageLessThan AI_BATTLER_DEFENDER, BATTLE_STAT_SP_DEFENSE, 4, TrainerAI_Expert_Haze_TryScoreMinus3
    IfStatStageLessThan AI_BATTLER_DEFENDER, BATTLE_STAT_ACCURACY, 4, TrainerAI_Expert_Haze_TryScoreMinus3
    GoTo TrainerAI_Expert_Haze_CheckToEncourage

TrainerAI_Expert_Haze_TryScoreMinus3:
    IfRandomLessThan 50, TrainerAI_Expert_Haze_CheckToEncourage
    AddToMoveScore -3

TrainerAI_Expert_Haze_CheckToEncourage:
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_ATTACK, 8, TrainerAI_Expert_Haze_TryScorePlus3
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_DEFENSE, 8, TrainerAI_Expert_Haze_TryScorePlus3
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK, 8, TrainerAI_Expert_Haze_TryScorePlus3
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_SP_DEFENSE, 8, TrainerAI_Expert_Haze_TryScorePlus3
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 8, TrainerAI_Expert_Haze_TryScorePlus3
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 4, TrainerAI_Expert_Haze_TryScorePlus3
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 4, TrainerAI_Expert_Haze_TryScorePlus3
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_ATTACK, 4, TrainerAI_Expert_Haze_TryScorePlus3
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_DEFENSE, 4, TrainerAI_Expert_Haze_TryScorePlus3
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_ACCURACY, 4, TrainerAI_Expert_Haze_TryScorePlus3
    IfRandomLessThan 50, TrainerAI_Expert_Haze_End
    AddToMoveScore -1
    GoTo TrainerAI_Expert_Haze_End

TrainerAI_Expert_Haze_TryScorePlus3:
    IfRandomLessThan 50, TrainerAI_Expert_Haze_End
    AddToMoveScore 3

TrainerAI_Expert_Haze_End:
    PopOrEnd 

TrainerAI_Expert_Bide:
    ; If the attacker's HP is <= 90%, score -2.
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 90, TrainerAI_Expert_Bide_End
    AddToMoveScore -2

TrainerAI_Expert_Bide_End:
    PopOrEnd 

TrainerAI_Expert_ForceSwitch:
    ; If the target has been in battle for longer than more than 3 turns, 75% chance of score +2.
    ;
    ; If the target's side of the field has Spikes, Stealth Rock, or Toxic Spikes set, 50% chance of
    ; score +2.
    ;
    ; If the target has a stat stage of +3 or higher in any of the following stats, 50% chance of
    ; score +2:
    ; - Attack
    ; - Defense
    ; - SpAttack
    ; - SpDefense
    ; - Evasion
    ;
    ; Otherwise, score -3.
    LoadBattlerTurnCount AI_BATTLER_DEFENDER
    IfLoadedGreaterThan 3, TrainerAI_Expert_ForceSwitch_75PercentScorePlus2
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_SPIKES, TrainerAI_Expert_ForceSwitch_50PercentScorePlus2
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_STEALTH_ROCK, TrainerAI_Expert_ForceSwitch_50PercentScorePlus2
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_TOXIC_SPIKES, TrainerAI_Expert_ForceSwitch_50PercentScorePlus2
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_ATTACK, 8, TrainerAI_Expert_ForceSwitch_50PercentScorePlus2
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_DEFENSE, 8, TrainerAI_Expert_ForceSwitch_50PercentScorePlus2
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK, 8, TrainerAI_Expert_ForceSwitch_50PercentScorePlus2
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_SP_DEFENSE, 8, TrainerAI_Expert_ForceSwitch_50PercentScorePlus2
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 8, TrainerAI_Expert_ForceSwitch_50PercentScorePlus2
    AddToMoveScore -3
    GoTo TrainerAI_Expert_ForceSwitch_End

TrainerAI_Expert_ForceSwitch_75PercentScorePlus2:
    IfRandomLessThan 64, TrainerAI_Expert_ForceSwitch_50PercentScorePlus2
    AddToMoveScore 2

TrainerAI_Expert_ForceSwitch_50PercentScorePlus2:
    IfRandomLessThan 128, TrainerAI_Expert_ForceSwitch_End
    AddToMoveScore 2

TrainerAI_Expert_ForceSwitch_End:
    PopOrEnd 

TrainerAI_Expert_Conversion:
    ; If the attacker's HP is <= 90%, additional score -2.
    ;
    ; If it is NOT the first global turn of the battle, ~78.1% chance of score -2.
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 90, TrainerAI_Expert_Conversion_CheckTurnCount
    AddToMoveScore -2

TrainerAI_Expert_Conversion_CheckTurnCount:
    LoadTurnCount 
    IfLoadedEqualTo 0, TrainerAI_Expert_Conversion_End
    IfRandomLessThan 200, TrainerAI_ScoreMinus2

TrainerAI_Expert_Conversion_End:
    PopOrEnd 

TrainerAI_Expert_Synthesis:
    ; Treat Synthesis-type effects like any other recovery move, but additional score -2 if the
    ; weather is Hail, Rain, or Sand.
    LoadCurrentWeather 
    IfLoadedEqualTo AI_WEATHER_HAILING, TrainerAI_Expert_Synthesis_ScoreMinus2
    IfLoadedEqualTo AI_WEATHER_RAINING, TrainerAI_Expert_Synthesis_ScoreMinus2
    IfLoadedEqualTo AI_WEATHER_SANDSTORM, TrainerAI_Expert_Synthesis_ScoreMinus2
    GoTo TrainerAI_Expert_Recovery

TrainerAI_Expert_Synthesis_ScoreMinus2:
    AddToMoveScore -2

TrainerAI_Expert_Recovery:
    ; If the attacker is at full HP, score -3 and terminate.
    ;
    ; If the attacker is faster than its opponent, score -8 and terminate.
    ;
    ; If the attacker is at 70% HP or more, ~88.3% chance of score -3 and terminate.
    ;
    ; If the opponent does not know Snatch, ~92.2% chance of score +2.
    ; If the opponent does know Snatch, ~56.2% chance of score +2.
    IfHPPercentEqualTo AI_BATTLER_ATTACKER, 100, TrainerAI_Expert_Recovery_ScoreMinus3AndEnd
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_Recovery_CheckHP
    AddToMoveScore -8
    GoTo TrainerAI_Expert_Recovery_End

TrainerAI_Expert_Recovery_Unused:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 50, TrainerAI_Expert_Recovery_CheckForSnatch
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 80, TrainerAI_Expert_Recovery_ScoreMinus3AndEnd
    IfRandomLessThan 70, TrainerAI_Expert_Recovery_CheckForSnatch

TrainerAI_Expert_Recovery_ScoreMinus3AndEnd:
    AddToMoveScore -3
    GoTo TrainerAI_Expert_Recovery_End

TrainerAI_Expert_Recovery_CheckHP:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 70, TrainerAI_Expert_Recovery_CheckForSnatch
    IfRandomLessThan 30, TrainerAI_Expert_Recovery_CheckForSnatch
    AddToMoveScore -3
    GoTo TrainerAI_Expert_Recovery_End

TrainerAI_Expert_Recovery_CheckForSnatch:
    IfMoveEffectNotKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_STEAL_STATUS_MOVE, TrainerAI_Expert_Recovery_TryScorePlus2
    IfRandomLessThan 100, TrainerAI_Expert_Recovery_End

TrainerAI_Expert_Recovery_TryScorePlus2:
    IfRandomLessThan 20, TrainerAI_Expert_Recovery_End
    AddToMoveScore 2

TrainerAI_Expert_Recovery_End:
    PopOrEnd 

TrainerAI_Expert_ToxicLeechSeed:
    ; If the attacker has at least one damaging move, apply all of the following which apply:
    ; - If the attacker's HP <= 50%, 80.5% chance of additional score -3.
    ; - If the defender's HP <= 50%, 80.5% chance of additional score -3.
    ;
    ; If the attacker knows a move that either increases its Special Defense by 1 stage or acts as
    ; Protect, 76.6% chance of score +2. (Note: no such move exists in Vanilla that only raises
    ; Special Defense by 1 stage.)
    IfAttackerHasNoDamagingMoves TrainerAI_Expert_ToxicLeechSeed_CheckMoveEffectsKnown
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 50, TrainerAI_Expert_ToxicLeechSeed_CheckTargetHP
    IfRandomLessThan 50, TrainerAI_Expert_ToxicLeechSeed_CheckTargetHP
    AddToMoveScore -3

TrainerAI_Expert_ToxicLeechSeed_CheckTargetHP:
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 50, TrainerAI_Expert_ToxicLeechSeed_CheckMoveEffectsKnown
    IfRandomLessThan 50, TrainerAI_Expert_ToxicLeechSeed_CheckMoveEffectsKnown
    AddToMoveScore -3

TrainerAI_Expert_ToxicLeechSeed_CheckMoveEffectsKnown:
    IfMoveEffectKnown AI_BATTLER_ATTACKER, BATTLE_EFFECT_SP_DEF_UP, TrainerAI_Expert_ToxicLeechSeed_TryScorePlus2
    IfMoveEffectKnown AI_BATTLER_ATTACKER, BATTLE_EFFECT_PROTECT, TrainerAI_Expert_ToxicLeechSeed_TryScorePlus2
    GoTo TrainerAI_Expert_ToxicLeechSeed_End

TrainerAI_Expert_ToxicLeechSeed_TryScorePlus2:
    IfRandomLessThan 60, TrainerAI_Expert_ToxicLeechSeed_End
    AddToMoveScore 2

TrainerAI_Expert_ToxicLeechSeed_End:
    PopOrEnd 

TrainerAI_Expert_LightScreen:
    ; If the attacker's HP is < 50%, score -2.
    ;
    ; If the attacker's HP is >= 90%, 50% of additional score +1.
    ;
    ; If the opponent's last-used move was a Special move, 75% chance of score +1.
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 50, TrainerAI_Expert_LightScreen_ScoreMinus2
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 90, TrainerAI_Expert_LightScreen_CheckLastUsedMove
    IfRandomLessThan 128, TrainerAI_Expert_LightScreen_CheckLastUsedMove
    AddToMoveScore 1

TrainerAI_Expert_LightScreen_CheckLastUsedMove:
    LoadDefenderLastUsedMoveClass 
    IfLoadedNotEqualTo CLASS_SPECIAL, TrainerAI_Expert_LightScreen_End
    IfRandomLessThan 64, TrainerAI_Expert_LightScreen_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_LightScreen_End

TrainerAI_Expert_LightScreen_ScoreMinus2:
    AddToMoveScore -2

TrainerAI_Expert_LightScreen_End:
    PopOrEnd 

TrainerAI_Expert_LightScreen_PreSplitSpecialTypes:
    TableEntry TYPE_FIRE
    TableEntry TYPE_WATER
    TableEntry TYPE_GRASS
    TableEntry TYPE_ELECTRIC
    TableEntry TYPE_PSYCHIC
    TableEntry TYPE_ICE
    TableEntry TYPE_DRAGON
    TableEntry TYPE_DARK
    TableEntry TABLE_END

TrainerAI_Expert_Rest:
    ; If the attacker is faster than its target:
    ; - If the attacker is at full HP, 60.9% chance of score -8 and terminate.
    ; - If the attacker's HP is > 50%, score -3 and terminate.
    ; - If the attacker's HP is >= 40%, 72.7% chance of score -3 and terminate.
    ;
    ; If the attacker is slower than its target:
    ; - If the attacker's HP > 70%, score -3 and terminate.
    ; - If the attacker's HP >= 60%, 80.5% chance of score -3 and terminate.
    ;
    ; If the opponent does not know Snatch, 96.1% chance of score +3.
    ;
    ; If the opponent knows Snatch, 77.3% chance of score +3.
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_Rest_SlowerCheckHP
    IfHPPercentNotEqualTo AI_BATTLER_ATTACKER, 100, TrainerAI_Expert_Rest_FasterCheckHP
    AddToMoveScore -8
    GoTo TrainerAI_Expert_Rest_End

TrainerAI_Expert_Rest_FasterCheckHP:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 40, TrainerAI_Expert_Rest_CheckForSnatch
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 50, TrainerAI_Expert_Rest_FasterScoreMinus3
    IfRandomLessThan 70, TrainerAI_Expert_Rest_CheckForSnatch

TrainerAI_Expert_Rest_FasterScoreMinus3:
    AddToMoveScore -3
    GoTo TrainerAI_Expert_Rest_End

TrainerAI_Expert_Rest_SlowerCheckHP:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 60, TrainerAI_Expert_Rest_CheckForSnatch
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 70, TrainerAI_Expert_Rest_SlowerScoreMinus3
    IfRandomLessThan 50, TrainerAI_Expert_Rest_CheckForSnatch

TrainerAI_Expert_Rest_SlowerScoreMinus3:
    AddToMoveScore -3
    GoTo TrainerAI_Expert_Rest_End

TrainerAI_Expert_Rest_CheckForSnatch:
    IfMoveEffectNotKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_STEAL_STATUS_MOVE, TrainerAI_Expert_Rest_TryScorePlus3
    IfRandomLessThan 50, TrainerAI_Expert_Rest_End

TrainerAI_Expert_Rest_TryScorePlus3:
    IfRandomLessThan 10, TrainerAI_Expert_Rest_End
    AddToMoveScore 3

TrainerAI_Expert_Rest_End:
    PopOrEnd 

TrainerAI_Expert_OHKOMove:
    ; 25% chance of score +1.
    IfRandomLessThan 192, TrainerAI_Expert_OHKOMove_End
    AddToMoveScore 1

TrainerAI_Expert_OHKOMove_End:
    PopOrEnd 

TrainerAI_Expert_SuperFang:
    ; If the target is at 50% HP or less, score -1.
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 50, TrainerAI_Expert_SuperFang_End
    AddToMoveScore -1

TrainerAI_Expert_SuperFang_End:
    PopOrEnd 

TrainerAI_Expert_BindingMove:
    ; If the target is under any of the following conditions or effects, 50% chance of score +1:
    ; - Toxic
    ; - Curse
    ; - Perish Song
    ; - Attract
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_TOXIC, TrainerAI_Expert_BindingMove_TryScorePlus1
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_CURSE, TrainerAI_Expert_BindingMove_TryScorePlus1
    IfMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_PERISH_SONG, TrainerAI_Expert_BindingMove_TryScorePlus1
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_ATTRACT, TrainerAI_Expert_BindingMove_TryScorePlus1
    GoTo TrainerAI_Expert_BindingMove_End

TrainerAI_Expert_BindingMove_TryScorePlus1:
    IfRandomLessThan 128, TrainerAI_Expert_BindingMove_End
    AddToMoveScore 1

TrainerAI_Expert_BindingMove_End:
    PopOrEnd 

TrainerAI_Expert_HighCritical:
    ; If the move is super-effective against the target, 50% chance of score +1.
    ;
    ; If the move would deal normal damage against the target, 25% chance of score +1.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_Expert_HighCritical_End
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, TrainerAI_Expert_HighCritical_End
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, TrainerAI_Expert_HighCritical_End
    IfMoveEffectivenessEquals TYPE_MULTI_DOUBLE_DAMAGE, TrainerAI_Expert_HighCritical_TryScorePlus1
    IfMoveEffectivenessEquals TYPE_MULTI_QUADRUPLE_DAMAGE, TrainerAI_Expert_HighCritical_TryScorePlus1
    IfRandomLessThan 128, TrainerAI_Expert_HighCritical_End

TrainerAI_Expert_HighCritical_TryScorePlus1:
    IfRandomLessThan 128, TrainerAI_Expert_HighCritical_End
    AddToMoveScore 1

TrainerAI_Expert_HighCritical_End:
    PopOrEnd 

TrainerAI_Expert_Swagger:
    ; If the attacker knows Psych Up:
    ; - If the target's attack stat is -3 or higher, score -5 and terminate.
    ; - If it is the first turn of the battle, score +5.
    ; - Otherwise, score +3.
    ;
    ; Otherwise, act identically to Flatter.
    IfMoveKnown AI_BATTLER_ATTACKER, MOVE_PSYCH_UP, TrainerAI_Expert_Swagger_PsychUp

TrainerAI_Expert_Flatter:
    ; 50% chance of additional score +1.
    ;
    ; Otherwise, act identically to any other Confusion-inducing Status move.
    IfRandomLessThan 128, TrainerAI_Expert_StatusConfuse
    AddToMoveScore 1

TrainerAI_Expert_StatusConfuse:
    ; If the target's HP is <= 70%, 50% chance of additional score -1.
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 70, TrainerAI_Expert_StatusConfuse_End
    IfRandomLessThan 128, TrainerAI_Expert_StatusConfuse_CheckHP
    AddToMoveScore -1

TrainerAI_Expert_StatusConfuse_CheckHP:
    ; If the target's HP is <= 50%, additional score -1.
    ;
    ; If the target's HP is also <= 30%, additional score -1.
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 50, TrainerAI_Expert_StatusConfuse_End
    AddToMoveScore -1
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 30, TrainerAI_Expert_StatusConfuse_End
    AddToMoveScore -1

TrainerAI_Expert_StatusConfuse_End:
    PopOrEnd 

TrainerAI_Expert_Swagger_PsychUp:
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_ATTACK, 3, TrainerAI_Expert_Swagger_ScoreMinus5
    AddToMoveScore 3
    LoadTurnCount 
    IfLoadedNotEqualTo 0, TrainerAI_Expert_Swagger_End
    AddToMoveScore 2
    GoTo TrainerAI_Expert_Swagger_End

TrainerAI_Expert_Swagger_ScoreMinus5:
    AddToMoveScore -5

TrainerAI_Expert_Swagger_End:
    PopOrEnd 

TrainerAI_Expert_Reflect:
    ; If the attacker's HP is < 50%, score -2.
    ;
    ; If the attacker's HP is >= 90%, 50% of additional score +1.
    ;
    ; If the opponent's last-used move was a Physical move, 75% chance of score +1.
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 50, TrainerAI_Expert_Reflect_ScoreMinus2
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 90, TrainerAI_Expert_Reflect_CheckLastUsedMove
    IfRandomLessThan 128, TrainerAI_Expert_Reflect_CheckLastUsedMove
    AddToMoveScore 1

TrainerAI_Expert_Reflect_CheckLastUsedMove:
    LoadDefenderLastUsedMoveClass 
    IfLoadedNotEqualTo CLASS_PHYSICAL, TrainerAI_Expert_Reflect_End
    IfRandomLessThan 64, TrainerAI_Expert_Reflect_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_Reflect_End

TrainerAI_Expert_Reflect_ScoreMinus2:
    AddToMoveScore -2

TrainerAI_Expert_Reflect_End:
    PopOrEnd 

TrainerAI_Expert_Reflect_PreSplitPhysicalTypes:
    TableEntry TYPE_NORMAL
    TableEntry TYPE_FIGHTING
    TableEntry TYPE_FLYING
    TableEntry TYPE_POISON
    TableEntry TYPE_GROUND
    TableEntry TYPE_ROCK
    TableEntry TYPE_BUG
    TableEntry TYPE_GHOST
    TableEntry TYPE_STEEL
    TableEntry TABLE_END

TrainerAI_Expert_StatusPoison:
    ; If the attacker's HP is < 50% or the defender's HP is <= 50%, score -1.
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 50, TrainerAI_Expert_StatusPoison_ScoreMinus1
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 50, TrainerAI_Expert_StatusPoison_End

TrainerAI_Expert_StatusPoison_ScoreMinus1:
    AddToMoveScore -1

TrainerAI_Expert_StatusPoison_End:
    PopOrEnd 

TrainerAI_Expert_StatusParalyze:
    ; If the attacker is slower than its target, 92.2% chance of score +3.
    ;
    ; If the attacker's HP is <= 70%, score -1.
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_StatusParalyze_TryScorePlus3
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 70, TrainerAI_Expert_StatusParalyze_End
    AddToMoveScore -1
    GoTo TrainerAI_Expert_StatusParalyze_End

TrainerAI_Expert_StatusParalyze_TryScorePlus3:
    IfRandomLessThan 20, TrainerAI_Expert_StatusParalyze_End
    AddToMoveScore 3

TrainerAI_Expert_StatusParalyze_End:
    PopOrEnd 

TrainerAI_Expert_VitalThrow:
    ; If the attacker is slower than its target, no change.
    ;
    ; If the attacker's HP > 60%, no change.
    ;
    ; If the attacker's HP < 40%, 80.5% chance of score -1.
    ;
    ; Otherwise, 23.9% chance of score -1.
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_VitalThrow_End
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 60, TrainerAI_Expert_VitalThrow_End
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 40, TrainerAI_Expert_VitalThrow_TryScoreMinus1
    IfRandomLessThan 180, TrainerAI_Expert_VitalThrow_End

TrainerAI_Expert_VitalThrow_TryScoreMinus1:
    IfRandomLessThan 50, TrainerAI_Expert_VitalThrow_End
    AddToMoveScore -1

TrainerAI_Expert_VitalThrow_End:
    PopOrEnd 

TrainerAI_Expert_Substitute:
    ; If the attacker knows specifically Focus Punch, 62.5% chance of additional score +1.
    ;
    ; If the attacker's HP <= 90%, roll for a 60.9% chance of additional score -1 a number of times
    ; corresponding to the attacker's HP:
    ; - > 70%: roll once
    ; - > 50%: roll twice
    ; - <= 50%: roll thrice
    ; These rolls are cumulative; e.g., an attacker at 53% HP can receive additional score -2.
    ;
    ; If the attacker is faster than its opponent, consider the move that the opponent last used:
    ; - If it was a Status move that induces a non-volatile status condition and the opponent is
    ; currently Asleep, Poisoned, Paralyzed, Burned, or Frozen, 60.9% chance of score +1.
    ; - If it was a Status move that induces Confusion and the opponent is currently Confused, 60.9%
    ; chance of score +1.
    ; - If it was Leech Seed and the opponent is currently Seeded, 60.9% chance of score +1.
    ;
    ; Otherwise, no further score modifications.
    IfMoveNotKnown AI_BATTLER_ATTACKER, MOVE_FOCUS_PUNCH, TrainerAI_Expert_Substitute_CheckUserHP
    IfRandomLessThan 96, TrainerAI_Expert_Substitute_CheckUserHP
    AddToMoveScore 1

TrainerAI_Expert_Substitute_CheckUserHP:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 90, TrainerAI_Expert_Substitute_CheckTargetLastMove
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 70, TrainerAI_Expert_Substitute_TryScoreMinus1_FinalRound
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 50, TrainerAI_Expert_Substitute_TryScoreMinus1_SecondRound
    IfRandomLessThan 100, TrainerAI_Expert_Substitute_TryScoreMinus1_SecondRound
    AddToMoveScore -1

TrainerAI_Expert_Substitute_TryScoreMinus1_SecondRound:
    IfRandomLessThan 100, TrainerAI_Expert_Substitute_TryScoreMinus1_FinalRound
    AddToMoveScore -1

TrainerAI_Expert_Substitute_TryScoreMinus1_FinalRound:
    IfRandomLessThan 100, TrainerAI_Expert_Substitute_CheckTargetLastMove
    AddToMoveScore -1

TrainerAI_Expert_Substitute_CheckTargetLastMove:
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_Substitute_End
    LoadBattlerPreviousMove AI_BATTLER_DEFENDER
    LoadEffectOfLoadedMove 
    IfLoadedEqualTo BATTLE_EFFECT_STATUS_SLEEP, TrainerAI_Expert_Substitute_CheckTargetStatus
    IfLoadedEqualTo BATTLE_EFFECT_STATUS_BADLY_POISON, TrainerAI_Expert_Substitute_CheckTargetStatus
    IfLoadedEqualTo BATTLE_EFFECT_STATUS_POISON, TrainerAI_Expert_Substitute_CheckTargetStatus
    IfLoadedEqualTo BATTLE_EFFECT_STATUS_PARALYZE, TrainerAI_Expert_Substitute_CheckTargetStatus
    IfLoadedEqualTo BATTLE_EFFECT_STATUS_BURN, TrainerAI_Expert_Substitute_CheckTargetStatus
    IfLoadedEqualTo BATTLE_EFFECT_STATUS_CONFUSE, TrainerAI_Expert_Substitute_CheckTargetConfused
    IfLoadedEqualTo BATTLE_EFFECT_STATUS_LEECH_SEED, TrainerAI_Expert_Substitute_CheckTargetSeeded
    GoTo TrainerAI_Expert_Substitute_End

TrainerAI_Expert_Substitute_CheckTargetStatus:
    IfNotStatus AI_BATTLER_DEFENDER, MON_CONDITION_ANY, TrainerAI_Expert_Substitute_TryScorePlus1
    GoTo TrainerAI_Expert_Substitute_End

TrainerAI_Expert_Substitute_CheckTargetConfused:
    IfNotVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_CONFUSION, TrainerAI_Expert_Substitute_TryScorePlus1
    GoTo TrainerAI_Expert_Substitute_End

TrainerAI_Expert_Substitute_CheckTargetSeeded:
    IfMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_LEECH_SEED, TrainerAI_Expert_Substitute_End

TrainerAI_Expert_Substitute_TryScorePlus1:
    IfRandomLessThan 100, TrainerAI_Expert_Substitute_End
    AddToMoveScore 1

TrainerAI_Expert_Substitute_End:
    PopOrEnd 

TrainerAI_Expert_RechargeTurn:
    ; If the opponent would resist or is immune to the move, score -1.
    ;
    ; If the attacker's ability is Truant, 68.75% chance of score +1.
    ;
    ; If the attacker is slower than the opponent and the attacker's HP is >= 60%, score -1.
    ;
    ; If the attacker is faster than the opponent and the attacker's HP is > 40%, score -1.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_Expert_RechargeTurn_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, TrainerAI_Expert_RechargeTurn_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, TrainerAI_Expert_RechargeTurn_ScoreMinus1
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_TRUANT, TrainerAI_Expert_RechargeTurn_TryScorePlus1
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_RechargeTurn_CheckUserHP
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 40, TrainerAI_Expert_RechargeTurn_ScoreMinus1
    GoTo TrainerAI_Expert_RechargeTurn_End

TrainerAI_Expert_RechargeTurn_TryScorePlus1:
    IfRandomLessThan 80, TrainerAI_Expert_RechargeTurn_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_RechargeTurn_End

TrainerAI_Expert_RechargeTurn_CheckUserHP:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 60, TrainerAI_Expert_RechargeTurn_End

TrainerAI_Expert_RechargeTurn_ScoreMinus1:
    AddToMoveScore -1

TrainerAI_Expert_RechargeTurn_End:
    PopOrEnd 

TrainerAI_Expert_Disable:
    ; If the attacker is slower than the opponent, score +0 and terminate.
    ;
    ; If the opponent's last-used move was a Status move, 60.9% chance of score -1.
    ;
    ; If the opponent's last-used move was a Damaging move, score +1.
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_Disable_End
    LoadBattlerPreviousMove AI_BATTLER_DEFENDER
    LoadPowerOfLoadedMove 
    IfLoadedEqualTo 0, TrainerAI_Expert_Disable_TryScoreMinus1
    AddToMoveScore 1
    GoTo TrainerAI_Expert_Disable_End

TrainerAI_Expert_Disable_TryScoreMinus1:
    IfRandomLessThan 100, TrainerAI_Expert_Disable_End
    AddToMoveScore -1

TrainerAI_Expert_Disable_End:
    PopOrEnd 

TrainerAI_Expert_Counter:
    ; If the opponent is asleep, confused, or infatuated, score -1 and terminate.
    ;
    ; If the attacker's HP <= 30%, 96.1% chance of additional score -1.
    ;
    ; If the attacker's HP <= 50%, 60.9% chance of additional score -1. (This stacks with the above condition.)
    ;
    ; If the attacker knows specifically Mirror Coat, 60.9% chance of score +4.
    ;
    ; If the opponent's last-used move was a Status move:
    ; - If the opponent is Taunted, 60.9% chance of additional score +1.
    ; - If the opponent does NOT have a type which is considered a Physical type, 49% chance of score +4.
    ;
    ; If the opponent's last-used move was a Damaging move:
    ; - If the opponent is Taunted, 60.9% chance of additional score +1.
    ; - If the last-used move was a Special move, score -1.
    ; - If the last-used move was a Physical move, 60.9% chance of score +1.
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_SLEEP, TrainerAI_Expert_Counter_ScoreMinus1
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_ATTRACT, TrainerAI_Expert_Counter_ScoreMinus1
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_CONFUSION, TrainerAI_Expert_Counter_ScoreMinus1
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 30, TrainerAI_Expert_Counter_CheckAboveHalfHP
    IfRandomLessThan 10, TrainerAI_Expert_Counter_CheckAboveHalfHP
    AddToMoveScore -1

TrainerAI_Expert_Counter_CheckAboveHalfHP:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 50, TrainerAI_Expert_Counter_CheckLastUsedMove
    IfRandomLessThan 100, TrainerAI_Expert_Counter_CheckLastUsedMove
    AddToMoveScore -1

TrainerAI_Expert_Counter_CheckLastUsedMove:
    IfMoveKnown AI_BATTLER_ATTACKER, MOVE_MIRROR_COAT, TrainerAI_Expert_Counter_TryScorePlus4
    LoadBattlerPreviousMove AI_BATTLER_DEFENDER
    LoadPowerOfLoadedMove 
    IfLoadedEqualTo 0, TrainerAI_Expert_Counter_TryScorePlus1
    IfTargetIsNotTaunted TrainerAI_Expert_Counter_CheckPhysicalMove
    IfRandomLessThan 100, TrainerAI_Expert_Counter_CheckPhysicalMove
    AddToMoveScore 1

TrainerAI_Expert_Counter_CheckPhysicalMove:
    LoadDefenderLastUsedMoveClass 
    IfLoadedNotEqualTo CLASS_PHYSICAL, TrainerAI_Expert_Counter_ScoreMinus1
    IfRandomLessThan 100, TrainerAI_Expert_Counter_End2
    AddToMoveScore 1
    GoTo TrainerAI_Expert_Counter_End2

TrainerAI_Expert_Counter_TryScorePlus1:
    IfTargetIsNotTaunted TrainerAI_Expert_Counter_CheckOpponentTypes
    IfRandomLessThan 100, TrainerAI_Expert_Counter_CheckOpponentTypes
    AddToMoveScore 1

TrainerAI_Expert_Counter_CheckOpponentTypes:
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedInTable TrainerAI_Expert_Counter_PhysicalTypes, TrainerAI_Expert_Counter_End2
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedInTable TrainerAI_Expert_Counter_PhysicalTypes, TrainerAI_Expert_Counter_End2
    IfRandomLessThan 50, TrainerAI_Expert_Counter_End2

TrainerAI_Expert_Counter_TryScorePlus4:
    IfRandomLessThan 100, TrainerAI_Expert_Counter_End
    AddToMoveScore 4

TrainerAI_Expert_Counter_End:
    PopOrEnd 

TrainerAI_Expert_Counter_ScoreMinus1:
    AddToMoveScore -1

TrainerAI_Expert_Counter_End2:
    PopOrEnd 

TrainerAI_Expert_Counter_PhysicalTypes:
    TableEntry TYPE_NORMAL
    TableEntry TYPE_FIGHTING
    TableEntry TYPE_FLYING
    TableEntry TYPE_POISON
    TableEntry TYPE_GROUND
    TableEntry TYPE_ROCK
    TableEntry TYPE_BUG
    TableEntry TYPE_GHOST
    TableEntry TYPE_STEEL
    TableEntry TABLE_END

TrainerAI_Expert_Encore:
    ; If the opponent is Disabled, 88.3% chance of score +3.
    ;
    ; If the attacker is slower than the opponent, score -2.
    ;
    ; If the opponent's last-used move is not one of a specific set of effects, score -2.
    ;
    ; Otherwise, 88.3% chance of score +3.
    IfBattlerUnderEffect AI_BATTLER_DEFENDER, CHECK_DISABLE, TrainerAI_Expert_Encore_TryScorePlus3
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_Encore_ScoreMinus2
    LoadBattlerPreviousMove AI_BATTLER_DEFENDER
    LoadEffectOfLoadedMove 
    IfLoadedNotInTable TrainerAI_Expert_Encore_EncouragedMoveEffects, TrainerAI_Expert_Encore_ScoreMinus2

TrainerAI_Expert_Encore_TryScorePlus3:
    IfRandomLessThan 30, TrainerAI_Expert_Encore_End
    AddToMoveScore 3
    GoTo TrainerAI_Expert_Encore_End

TrainerAI_Expert_Encore_ScoreMinus2:
    AddToMoveScore -2

TrainerAI_Expert_Encore_End:
    PopOrEnd 

TrainerAI_Expert_Encore_EncouragedMoveEffects:
    TableEntry BATTLE_EFFECT_RECOVER_DAMAGE_SLEEP
    TableEntry BATTLE_EFFECT_ATK_UP
    TableEntry BATTLE_EFFECT_DEF_UP
    TableEntry BATTLE_EFFECT_SPEED_UP
    TableEntry BATTLE_EFFECT_SP_ATK_UP
    TableEntry BATTLE_EFFECT_RESET_STAT_CHANGES
    TableEntry BATTLE_EFFECT_FORCE_SWITCH
    TableEntry BATTLE_EFFECT_CONVERSION
    TableEntry BATTLE_EFFECT_STATUS_BADLY_POISON
    TableEntry BATTLE_EFFECT_SET_LIGHT_SCREEN
    TableEntry BATTLE_EFFECT_REST
    TableEntry BATTLE_EFFECT_HALVE_HP
    TableEntry BATTLE_EFFECT_SP_DEF_UP_2
    TableEntry BATTLE_EFFECT_STATUS_CONFUSE
    TableEntry BATTLE_EFFECT_STATUS_POISON
    TableEntry BATTLE_EFFECT_STATUS_PARALYZE
    TableEntry BATTLE_EFFECT_STATUS_LEECH_SEED
    TableEntry BATTLE_EFFECT_DO_NOTHING
    TableEntry BATTLE_EFFECT_ATK_UP_2
    TableEntry BATTLE_EFFECT_ENCORE
    TableEntry BATTLE_EFFECT_CONVERSION2
    TableEntry BATTLE_EFFECT_NEXT_ATTACK_ALWAYS_HITS
    TableEntry BATTLE_EFFECT_CURE_PARTY_STATUS
    TableEntry BATTLE_EFFECT_PREVENT_ESCAPE
    TableEntry BATTLE_EFFECT_STATUS_NIGHTMARE
    TableEntry BATTLE_EFFECT_PROTECT
    TableEntry BATTLE_EFFECT_SWITCH_ABILITIES
    TableEntry BATTLE_EFFECT_IGNORE_EVASION_REMOVE_GHOST_IMMUNE
    TableEntry BATTLE_EFFECT_ALL_FAINT_3_TURNS
    TableEntry BATTLE_EFFECT_WEATHER_SANDSTORM
    TableEntry BATTLE_EFFECT_SURVIVE_WITH_1_HP
    TableEntry BATTLE_EFFECT_ATK_UP_2_STATUS_CONFUSION
    TableEntry BATTLE_EFFECT_INFATUATE
    TableEntry BATTLE_EFFECT_PREVENT_STATUS
    TableEntry BATTLE_EFFECT_WEATHER_RAIN
    TableEntry BATTLE_EFFECT_WEATHER_SUN
    TableEntry BATTLE_EFFECT_MAX_ATK_LOSE_HALF_MAX_HP
    TableEntry BATTLE_EFFECT_COPY_STAT_CHANGES
    TableEntry BATTLE_EFFECT_HIT_IN_3_TURNS
    TableEntry BATTLE_EFFECT_ALWAYS_FLINCH_FIRST_TURN_ONLY
    TableEntry BATTLE_EFFECT_STOCKPILE
    TableEntry BATTLE_EFFECT_SPIT_UP
    TableEntry BATTLE_EFFECT_SWALLOW
    TableEntry BATTLE_EFFECT_WEATHER_HAIL
    TableEntry BATTLE_EFFECT_TORMENT
    TableEntry BATTLE_EFFECT_STATUS_BURN
    TableEntry BATTLE_EFFECT_MAKE_GLOBAL_TARGET
    TableEntry BATTLE_EFFECT_SP_DEF_UP_DOUBLE_ELECTRIC_POWER
    TableEntry BATTLE_EFFECT_SWITCH_HELD_ITEMS
    TableEntry BATTLE_EFFECT_COPY_ABILITY
    TableEntry BATTLE_EFFECT_GROUND_TRAP_USER_CONTINUOUS_HEAL
    TableEntry BATTLE_EFFECT_RECYCLE
    TableEntry BATTLE_EFFECT_REMOVE_HELD_ITEM
    TableEntry BATTLE_EFFECT_SWITCH_ABILITIES
    TableEntry BATTLE_EFFECT_MAKE_SHARED_MOVES_UNUSEABLE
    TableEntry BATTLE_EFFECT_HEAL_STATUS
    TableEntry BATTLE_EFFECT_REMOVE_ALL_PP_ON_DEFEAT
    TableEntry BATTLE_EFFECT_CONFUSE_ALL
    TableEntry BATTLE_EFFECT_HALVE_ELECTRIC_DAMAGE
    TableEntry BATTLE_EFFECT_HALVE_FIRE_DAMAGE
    TableEntry BATTLE_EFFECT_ATK_SPD_UP
    TableEntry BATTLE_EFFECT_CAMOUFLAGE
    TableEntry BATTLE_EFFECT_GRAVITY
    TableEntry BATTLE_EFFECT_IGNORE_EVATION_REMOVE_DARK_IMMUNE
    TableEntry BATTLE_EFFECT_FAINT_AND_FULL_HEAL_NEXT_MON
    TableEntry BATTLE_EFFECT_NATURAL_GIFT
    TableEntry BATTLE_EFFECT_REMOVE_PROTECT
    TableEntry BATTLE_EFFECT_DOUBLE_SPEED_3_TURNS
    TableEntry BATTLE_EFFECT_RANDOM_STAT_UP_2
    TableEntry BATTLE_EFFECT_FLING
    TableEntry BATTLE_EFFECT_TRANSFER_STATUS
    TableEntry BATTLE_EFFECT_PREVENT_HEALING
    TableEntry BATTLE_EFFECT_SWAP_ATK_DEF
    TableEntry BATTLE_EFFECT_SUPRESS_ABILITY
    TableEntry BATTLE_EFFECT_PREVENT_CRITS
    TableEntry BATTLE_EFFECT_SWAP_ATK_SP_ATK_STAT_CHANGES
    TableEntry BATTLE_EFFECT_SWAP_DEF_SP_DEF_STAT_CHANGES
    TableEntry BATTLE_EFFECT_SET_ABILITY_TO_INSOMNIA
    TableEntry BATTLE_EFFECT_SWAP_STAT_CHANGES
    TableEntry BATTLE_EFFECT_RESTORE_HP_EVERY_TURN
    TableEntry BATTLE_EFFECT_GIVE_GROUND_IMMUNITY
    TableEntry BATTLE_EFFECT_TRICK_ROOM
    TableEntry TABLE_END

TrainerAI_Expert_PainSplit:
    ; If the opponent's HP < 80%, score -1.
    ;
    ; If the attacker is slower than its opponent:
    ; - If the attacker's HP > 60%, score -1.
    ; - Otherwise, score +1.
    ;
    ; If the attacker's HP > 40%, score -1.
    ;
    ; Otherwise, score -1.
    IfHPPercentLessThan AI_BATTLER_DEFENDER, 80, TrainerAI_Expert_PainSplit_ScoreMinus1
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_PainSplit_CheckUserHP
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 40, TrainerAI_Expert_PainSplit_ScoreMinus1
    AddToMoveScore 1
    GoTo TrainerAI_Expert_PainSplit_End

TrainerAI_Expert_PainSplit_CheckUserHP:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 60, TrainerAI_Expert_PainSplit_ScoreMinus1
    AddToMoveScore 1
    GoTo TrainerAI_Expert_PainSplit_End

TrainerAI_Expert_PainSplit_ScoreMinus1:
    AddToMoveScore -1

TrainerAI_Expert_PainSplit_End:
    PopOrEnd 

TrainerAI_Expert_Nightmare:
    ; Score +2.
    AddToMoveScore 2
    PopOrEnd 

TrainerAI_Expert_LockOn:
    ; 50% chance of score +2.
    IfRandomLessThan 128, TrainerAI_Expert_LockOn_End
    AddToMoveScore 2

TrainerAI_Expert_LockOn_End:
    PopOrEnd 

TrainerAI_Expert_SleepTalk:
    ; If the attacker is asleep, score +10.
    ;
    ; Otherwise, score -5.
    IfStatus AI_BATTLER_ATTACKER, MON_CONDITION_SLEEP, TrainerAI_ScorePlus10
    AddToMoveScore -5
    PopOrEnd 

TrainerAI_Expert_DestinyBond:
    ; Start at score -1. If the attacker is slower than its opponent, terminate.
    ;
    ; If the attacker's HP > 70%, terminate. Otherwise, 50% chance of additional score +1.
    ;
    ; If the attacker's HP > 50%, terminate. Otherwise, 50% chance of additional score +1.
    ;
    ; If the attacker's HP > 30%, terminate. Otherwise, 60.9% chance of additional score +2.
    AddToMoveScore -1
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_DestinyBond_End
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 70, TrainerAI_Expert_DestinyBond_End
    IfRandomLessThan 128, TrainerAI_Expert_DestinyBond_CheckUserMediumHP
    AddToMoveScore 1

TrainerAI_Expert_DestinyBond_CheckUserMediumHP:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 50, TrainerAI_Expert_DestinyBond_End
    IfRandomLessThan 128, TrainerAI_Expert_DestinyBond_CheckUserLowHP
    AddToMoveScore 1

TrainerAI_Expert_DestinyBond_CheckUserLowHP:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 30, TrainerAI_Expert_DestinyBond_End
    IfRandomLessThan 100, TrainerAI_Expert_DestinyBond_End
    AddToMoveScore 2

TrainerAI_Expert_DestinyBond_End:
    PopOrEnd 

TrainerAI_Expert_Reversal:
    ; If the attacker is slower than its opponent:
    ; - If the attacker's HP > 60%, score -1.
    ; - If the attacker's HP > 40%, score +0.
    ; - Otherwise, 60.9% chance of score +1.
    ;
    ; If the attacker is faster than its opponent:
    ; - If the attacker's HP > 33%, score -1.
    ; - If the attacker's HP > 20%, score +0.
    ; - If the attacker's HP >= 8%, 60.9% chance of score +1.
    ; - If the attacker's HP < 8%, 60.9% chance of score +2, 39.1% chance of score +1.
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_Reversal_SlowerCheckHP
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 33, TrainerAI_Expert_Reversal_ScoreMinus1
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 20, TrainerAI_Expert_Reversal_End
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 8, TrainerAI_Expert_Reversal_ScorePlus1
    GoTo TrainerAI_Expert_Reversal_TryScorePlus1

TrainerAI_Expert_Reversal_SlowerCheckHP:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 60, TrainerAI_Expert_Reversal_ScoreMinus1
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 40, TrainerAI_Expert_Reversal_End
    GoTo TrainerAI_Expert_Reversal_TryScorePlus1

TrainerAI_Expert_Reversal_ScorePlus1:
    AddToMoveScore 1

TrainerAI_Expert_Reversal_TryScorePlus1:
    IfRandomLessThan 100, TrainerAI_Expert_Reversal_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_Reversal_End

TrainerAI_Expert_Reversal_ScoreMinus1:
    AddToMoveScore -1

TrainerAI_Expert_Reversal_End:
    PopOrEnd 

TrainerAI_Expert_HealBell:
    ; If neither the attacker nor any of its party members have a non-volatile status condition,
    ; score -5.
    IfStatus AI_BATTLER_ATTACKER, MON_CONDITION_ANY, TrainerAI_Expert_HealBell_End
    IfPartyMemberStatus AI_BATTLER_ATTACKER, MON_CONDITION_ANY, TrainerAI_Expert_HealBell_End
    AddToMoveScore -5

TrainerAI_Expert_HealBell_End:
    PopOrEnd 

TrainerAI_Expert_Thief:
    ; If the opponent's held item does NOT have one of the encouraged effects, score -2.
    ;
    ; Otherwise, 80.5% chance of score +1.
    LoadHeldItemEffect AI_BATTLER_DEFENDER
    IfLoadedNotInTable TrainerAI_Expert_Thief_EncouragedItemEffects, TrainerAI_Expert_Thief_ScoreMinus2
    IfRandomLessThan 50, TrainerAI_Expert_Thief_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_Thief_End

TrainerAI_Expert_Thief_ScoreMinus2:
    AddToMoveScore -2

TrainerAI_Expert_Thief_End:
    PopOrEnd 

TrainerAI_Expert_Thief_EncouragedItemEffects:
    TableEntry HOLD_EFFECT_SLP_RESTORE
    TableEntry HOLD_EFFECT_STATUS_RESTORE
    TableEntry HOLD_EFFECT_HP_RESTORE
    TableEntry HOLD_EFFECT_ACC_REDUCE
    TableEntry HOLD_EFFECT_HP_RESTORE_GRADUAL
    TableEntry HOLD_EFFECT_PIKA_SPATK_UP
    TableEntry HOLD_EFFECT_CUBONE_ATK_UP
    TableEntry HOLD_EFFECT_WEAKEN_SE_FIRE
    TableEntry HOLD_EFFECT_WEAKEN_SE_WATER
    TableEntry HOLD_EFFECT_WEAKEN_SE_ELECTRIC
    TableEntry HOLD_EFFECT_WEAKEN_SE_GRASS
    TableEntry HOLD_EFFECT_WEAKEN_SE_ICE
    TableEntry HOLD_EFFECT_WEAKEN_SE_FIGHT
    TableEntry HOLD_EFFECT_WEAKEN_SE_POISON
    TableEntry HOLD_EFFECT_WEAKEN_SE_GROUND
    TableEntry HOLD_EFFECT_WEAKEN_SE_FLYING
    TableEntry HOLD_EFFECT_WEAKEN_SE_PSYCHIC
    TableEntry HOLD_EFFECT_WEAKEN_SE_BUG
    TableEntry HOLD_EFFECT_WEAKEN_SE_ROCK
    TableEntry HOLD_EFFECT_WEAKEN_SE_GHOST
    TableEntry HOLD_EFFECT_WEAKEN_SE_DRAGON
    TableEntry HOLD_EFFECT_WEAKEN_SE_DARK
    TableEntry HOLD_EFFECT_WEAKEN_SE_STEEL
    TableEntry HOLD_EFFECT_WEAKEN_NORMAL
    TableEntry HOLD_EFFECT_HP_RESTORE_PSN_TYPE
    TableEntry TABLE_END

TrainerAI_Expert_Curse:
    ; If the attacker has a Ghost typing:
    ; - If the attacker's HP > 80%, score +0.
    ; - Otherwise, score -1.
    ;
    ; If the attacker's Defense stat stage is at +3 or higher, score +0 and terminate.
    ;
    ; If the attacker knows the move Gyro Ball or Trick Room, 87.5% chance of additional score +1.
    ;
    ; 50% chance from here-on of additional score +1.
    ;
    ; If the attacker's Defense stat stage is at +1 or lower, 50% chance of additional score +1.
    ;
    ; If the attacker's Defense stat stage is at +0 or lower, 50% chance of additional score +1.
    ; (This is cumulative with the previous check.)
    LoadTypeFrom LOAD_ATTACKER_TYPE_1
    IfLoadedEqualTo TYPE_GHOST, TrainerAI_Expert_Curse_GhostCheckHP
    LoadTypeFrom LOAD_ATTACKER_TYPE_2
    IfLoadedEqualTo TYPE_GHOST, TrainerAI_Expert_Curse_GhostCheckHP
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 9, TrainerAI_Expert_Curse_End
    IfMoveKnown AI_BATTLER_ATTACKER, MOVE_GYRO_BALL, TrainerAI_Expert_Curse_HighChanceScorePlus1
    IfMoveKnown AI_BATTLER_ATTACKER, MOVE_TRICK_ROOM, TrainerAI_Expert_Curse_HighChanceScorePlus1
    GoTo TrainerAI_Expert_Curse_FlipCoinScorePlus1

TrainerAI_Expert_Curse_HighChanceScorePlus1:
    IfRandomLessThan 32, TrainerAI_Expert_Curse_CheckDefenseStage
    AddToMoveScore 1

TrainerAI_Expert_Curse_FlipCoinScorePlus1:
    IfRandomLessThan 128, TrainerAI_Expert_Curse_CheckDefenseStage
    AddToMoveScore 1

TrainerAI_Expert_Curse_CheckDefenseStage:
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 7, TrainerAI_Expert_Curse_End
    IfRandomLessThan 128, TrainerAI_Expert_Curse_CheckDefenseStageAnyBoosts
    AddToMoveScore 1

TrainerAI_Expert_Curse_CheckDefenseStageAnyBoosts:
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 6, TrainerAI_Expert_Curse_End
    IfRandomLessThan 128, TrainerAI_Expert_Curse_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_Curse_End

TrainerAI_Expert_Curse_GhostCheckHP:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 80, TrainerAI_Expert_Curse_End
    AddToMoveScore -1

TrainerAI_Expert_Curse_End:
    PopOrEnd 

TrainerAI_Expert_Protect:
    ; If the opponent knows either Feint or Shadow Force, 50% chance of additional score -2.
    ;
    ; If the attacker has used Protect more than once already, score -2 and terminate.
    ;
    ; If the attacker is under any of the following effects and is also not Locked Onto by an
    ; opponent, score -2 and terminate:
    ; - Toxic
    ; - Curse
    ; - Perish Song
    ; - Attract
    ; - Leech Seed
    ; - Yawn
    ;
    ; If the opponent knows a Recovery move (not weather-based or Rest) or Defense Curl and the
    ; attacker is not Locked On to a target, score -2 and terminate.
    ;
    ; If the opponent is under any of the following effects, additional score +2:
    ; - Toxic
    ; - Curse
    ; - Perish Song
    ; - Attract
    ; - Leech Seed
    ; - Yawn
    ;
    ; Otherwise, if the battle is doubles, additional score +2.
    ;
    ; Otherwise, if the attacker is Locked Onto by an opponent, additional score +2.
    ;
    ; Otherwise, 33.2% chance of additional score +2.
    ;
    ; 50% of additional score -1 from here-on.
    ;
    ; If the attacker used Protect last turn, score -1 and 50% chance of additional score -1.
    IfMoveKnown AI_BATTLER_DEFENDER, MOVE_FEINT, TrainerAI_Expert_Protect_TryScoreMinus2
    IfMoveKnown AI_BATTLER_DEFENDER, MOVE_SHADOW_FORCE, TrainerAI_Expert_Protect_TryScoreMinus2
    GoTo TrainerAI_Expert_Protect_CheckStatusConditions

TrainerAI_Expert_Protect_TryScoreMinus2:
    IfRandomLessThan 128, TrainerAI_Expert_Protect_CheckStatusConditions
    AddToMoveScore -2

TrainerAI_Expert_Protect_CheckStatusConditions:
    LoadProtectChain AI_BATTLER_ATTACKER
    IfLoadedGreaterThan 1, TrainerAI_Expert_Protect_ScoreMinus2
    IfStatus AI_BATTLER_ATTACKER, MON_CONDITION_TOXIC, TrainerAI_Expert_Protect_CheckAttackerLockedOnto
    IfVolatileStatus AI_BATTLER_ATTACKER, VOLATILE_CONDITION_CURSE, TrainerAI_Expert_Protect_CheckAttackerLockedOnto
    IfMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_PERISH_SONG, TrainerAI_Expert_Protect_CheckAttackerLockedOnto
    IfVolatileStatus AI_BATTLER_ATTACKER, VOLATILE_CONDITION_ATTRACT, TrainerAI_Expert_Protect_CheckAttackerLockedOnto
    IfMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_LEECH_SEED, TrainerAI_Expert_Protect_CheckAttackerLockedOnto
    IfMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_YAWN, TrainerAI_Expert_Protect_CheckAttackerLockedOnto
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_RESTORE_HALF_HP, TrainerAI_Expert_Protect_CheckAttackerLockedOnto
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_DEF_UP_DOUBLE_ROLLOUT_POWER, TrainerAI_Expert_Protect_CheckAttackerLockedOnto
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_TOXIC, TrainerAI_Expert_Protect_ScorePlus2
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_CURSE, TrainerAI_Expert_Protect_ScorePlus2
    IfMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_PERISH_SONG, TrainerAI_Expert_Protect_ScorePlus2
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_ATTRACT, TrainerAI_Expert_Protect_ScorePlus2
    IfMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_LEECH_SEED, TrainerAI_Expert_Protect_ScorePlus2
    IfMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_YAWN, TrainerAI_Expert_Protect_ScorePlus2
    LoadBattleType 
    IfLoadedMask BATTLE_TYPE_DOUBLES, TrainerAI_Expert_Protect_ScorePlus2
    IfMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_LOCK_ON, TrainerAI_Expert_Protect_ScorePlus2
    IfRandomLessThan 85, TrainerAI_Expert_Protect_ScorePlus2
    GoTo TrainerAI_Expert_Protect_TryScoreMinus1

TrainerAI_Expert_Protect_ScorePlus2:
    AddToMoveScore 2

TrainerAI_Expert_Protect_TryScoreMinus1:
    IfRandomLessThan 128, TrainerAI_Expert_Protect_CheckEmptyChain
    AddToMoveScore -1

TrainerAI_Expert_Protect_CheckEmptyChain:
    LoadProtectChain AI_BATTLER_ATTACKER
    IfLoadedEqualTo 0, TrainerAI_Expert_Protect_End
    AddToMoveScore -1
    IfRandomLessThan 128, TrainerAI_Expert_Protect_End
    AddToMoveScore -1
    GoTo TrainerAI_Expert_Protect_End

TrainerAI_Expert_Protect_CheckAttackerLockedOnto:
    IfMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_LOCK_ON, TrainerAI_Expert_Protect_End

TrainerAI_Expert_Protect_ScoreMinus2:
    AddToMoveScore -2

TrainerAI_Expert_Protect_End:
    PopOrEnd 

TrainerAI_Expert_Spikes:
    ; 50% chance of score +0 and terminate. Otherwise, start at score +1.
    ;
    ; If the attacker knows either Roar or Whirlwind, 75% chance of additional score +1.
    IfRandomLessThan 128, TrainerAI_Expert_Spikes_End
    AddToMoveScore 1
    IfMoveKnown AI_BATTLER_ATTACKER, MOVE_ROAR, TrainerAI_Expert_Spikes_TryScorePlus1
    IfMoveKnown AI_BATTLER_ATTACKER, MOVE_WHIRLWIND, TrainerAI_Expert_Spikes_TryScorePlus1
    GoTo TrainerAI_Expert_Spikes_End

TrainerAI_Expert_Spikes_TryScorePlus1:
    IfRandomLessThan 64, TrainerAI_Expert_Spikes_End
    AddToMoveScore 1

TrainerAI_Expert_Spikes_End:
    PopOrEnd 

TrainerAI_Expert_Foresight:
    ; If the attacker has a Ghost typing, 47.3% chance of score +2.
    ; BUG: This should instead check the opponent's typing.
    ;
    ; If the target's Evasion stat stage is at +3 or higher, 68.75% chance of score +2.
    ;
    ; Otherwise, score -2.
    LoadTypeFrom LOAD_ATTACKER_TYPE_1
    IfLoadedEqualTo TYPE_GHOST, TrainerAI_Expert_Foresight_FirstRoll
    LoadTypeFrom LOAD_ATTACKER_TYPE_2
    IfLoadedEqualTo TYPE_GHOST, TrainerAI_Expert_Foresight_FirstRoll
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 8, TrainerAI_Expert_Foresight_SecondRoll
    AddToMoveScore -2
    GoTo TrainerAI_Expert_Foresight_End

TrainerAI_Expert_Foresight_FirstRoll:
    IfRandomLessThan 80, TrainerAI_Expert_Foresight_End

TrainerAI_Expert_Foresight_SecondRoll:
    IfRandomLessThan 80, TrainerAI_Expert_Foresight_End
    AddToMoveScore 2

TrainerAI_Expert_Foresight_End:
    PopOrEnd 

TrainerAI_Expert_Endure:
    ; If the attacker's HP < 4%, score -1.
    ;
    ; If the attacker's HP < 35%, 72.7% chance of score +1.
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 4, TrainerAI_Expert_Endure_ScoreMinus1
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 35, TrainerAI_Expert_Endure_TryScorePlus1

TrainerAI_Expert_Endure_ScoreMinus1:
    AddToMoveScore -1
    GoTo TrainerAI_Expert_Endure_End

TrainerAI_Expert_Endure_TryScorePlus1:
    IfRandomLessThan 70, TrainerAI_Expert_Endure_End
    AddToMoveScore 1

TrainerAI_Expert_Endure_End:
    PopOrEnd 

TrainerAI_Expert_BatonPass:
    ; If any of the attacker's stat stages are at +3 or higher, 68.75% chance of score +2 if either
    ; of the following is true:
    ; - The attacker is slower than its target and has HP <= 70%
    ; - The attacker is faster than its target and has HP <= 60%
    ; If neither are true, score +0.
    ;
    ; If any of the attacker's stat stages are at +2, score -2 if either of the following is true:
    ; - The attacker is slower than its target and has HP <= 70%
    ; - The attacker is faster than its target and has HP <= 60%
    ; If neither are true, score +0.
    ;
    ; Otherwise, score -2.
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 8, TrainerAI_Expert_BatonPass_HighStatStage_CheckSpeedAndHP
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 8, TrainerAI_Expert_BatonPass_HighStatStage_CheckSpeedAndHP
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_ATTACK, 8, TrainerAI_Expert_BatonPass_HighStatStage_CheckSpeedAndHP
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_DEFENSE, 8, TrainerAI_Expert_BatonPass_HighStatStage_CheckSpeedAndHP
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_EVASION, 8, TrainerAI_Expert_BatonPass_HighStatStage_CheckSpeedAndHP
    GoTo TrainerAI_Expert_BatonPass_CheckMediumStatStage

TrainerAI_Expert_BatonPass_HighStatStage_CheckSpeedAndHP:
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_BatonPass_HighStatStage_SlowerCheckHP
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 60, TrainerAI_Expert_BatonPass_End
    GoTo TrainerAI_Expert_BatonPass_HighStatStage_TryScorePlus2

TrainerAI_Expert_BatonPass_HighStatStage_SlowerCheckHP:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 70, TrainerAI_Expert_BatonPass_End

TrainerAI_Expert_BatonPass_HighStatStage_TryScorePlus2:
    IfRandomLessThan 80, TrainerAI_Expert_BatonPass_End
    AddToMoveScore 2
    GoTo TrainerAI_Expert_BatonPass_End

TrainerAI_Expert_BatonPass_CheckMediumStatStage:
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 7, TrainerAI_Expert_BatonPass_MediumStatStage_CheckSpeedAndHP
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 7, TrainerAI_Expert_BatonPass_MediumStatStage_CheckSpeedAndHP
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_ATTACK, 7, TrainerAI_Expert_BatonPass_MediumStatStage_CheckSpeedAndHP
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_DEFENSE, 7, TrainerAI_Expert_BatonPass_MediumStatStage_CheckSpeedAndHP
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_EVASION, 7, TrainerAI_Expert_BatonPass_MediumStatStage_CheckSpeedAndHP
    GoTo TrainerAI_Expert_BatonPass_ScoreMinus2

TrainerAI_Expert_BatonPass_MediumStatStage_CheckSpeedAndHP:
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_BatonPass_MediumStatStage_SlowerCheckHP
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 60, TrainerAI_Expert_BatonPass_ScoreMinus2
    GoTo TrainerAI_Expert_BatonPass_End

TrainerAI_Expert_BatonPass_MediumStatStage_SlowerCheckHP:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 70, TrainerAI_Expert_BatonPass_End

TrainerAI_Expert_BatonPass_ScoreMinus2:
    AddToMoveScore -2

TrainerAI_Expert_BatonPass_End:
    PopOrEnd 

TrainerAI_Expert_Pursuit:
    ; If it is the attacker's first turn in battle, 50% chance of additional score +1.
    ;
    ; If it is NOT the attacker's first turn in battle and the opponent has a Ghost or Psychic
    ; typing, 50% chance of additional score +1.
    ;
    ; If the opponent knows specifically the move U-turn, 50% chance of additional score +1.
    LoadIsFirstTurnInBattle AI_BATTLER_ATTACKER
    IfLoadedNotEqualTo FALSE, TrainerAI_Expert_Pursuit_TryScorePlus1
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_GHOST, TrainerAI_Expert_Pursuit_TryScorePlus1
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_PSYCHIC, TrainerAI_Expert_Pursuit_TryScorePlus1
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_GHOST, TrainerAI_Expert_Pursuit_TryScorePlus1
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_PSYCHIC, TrainerAI_Expert_Pursuit_TryScorePlus1
    GoTo TrainerAI_Expert_Pursuit_CheckUturn

TrainerAI_Expert_Pursuit_TryScorePlus1:
    IfRandomLessThan 128, TrainerAI_Expert_Pursuit_CheckUturn
    AddToMoveScore 1

TrainerAI_Expert_Pursuit_CheckUturn:
    IfMoveNotKnown AI_BATTLER_DEFENDER, MOVE_U_TURN, TrainerAI_Expert_Pursuit_End
    IfRandomLessThan 128, TrainerAI_Expert_Pursuit_End
    AddToMoveScore 1

TrainerAI_Expert_Pursuit_End:
    PopOrEnd 

TrainerAI_Expert_RainDance:
    ; If the attacker is slower than its opponent and has the ability Swift Swim, score +1 and
    ; terminate.
    ;
    ; If the attacker's HP < 40%, score -1.
    ;
    ; If the current weather is Hail, Sun, or Sandstorm, score +1.
    ;
    ; If the attacker has the ability Rain Dish or is statused and has the ability Hydration,
    ; score +1.
    IfSpeedCompareEqualTo COMPARE_SPEED_FASTER, TrainerAI_Expert_RainDance_OtherChecks
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_SWIFT_SWIM, TrainerAI_Expert_RainDance_ScorePlus1

TrainerAI_Expert_RainDance_OtherChecks:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 40, TrainerAI_Expert_RainDance_ScoreMinus1
    LoadCurrentWeather 
    IfLoadedEqualTo AI_WEATHER_HAILING, TrainerAI_Expert_RainDance_ScorePlus1
    IfLoadedEqualTo AI_WEATHER_SUNNY, TrainerAI_Expert_RainDance_ScorePlus1
    IfLoadedEqualTo AI_WEATHER_SANDSTORM, TrainerAI_Expert_RainDance_ScorePlus1
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_RAIN_DISH, TrainerAI_Expert_RainDance_ScorePlus1
    IfLoadedNotEqualTo ABILITY_HYDRATION, TrainerAI_Expert_RainDance_End
    IfStatus AI_BATTLER_ATTACKER, MON_CONDITION_ANY, TrainerAI_Expert_RainDance_ScorePlus1
    GoTo TrainerAI_Expert_RainDance_End

TrainerAI_Expert_RainDance_ScorePlus1:
    AddToMoveScore 1
    GoTo TrainerAI_Expert_RainDance_End

TrainerAI_Expert_RainDance_ScoreMinus1:
    AddToMoveScore -1

TrainerAI_Expert_RainDance_End:
    PopOrEnd 

TrainerAI_Expert_SunnyDay:
    ; If the attacker's HP < 40%, score -1.
    ;
    ; If the current weather is Hail, Rain, or Sandstorm, score +1.
    ;
    ; If the attacker has the ability Flower Gift or is statused and has the ability Leaf Guard,
    ; score +1.
    ; BUG: This should check instead if the attacker is NOT statused, as Leaf Guard has no
    ; effect on existing status conditions.
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 40, TrainerAI_Expert_SunnyDay_ScoreMinus1
    LoadCurrentWeather 
    IfLoadedEqualTo AI_WEATHER_HAILING, TrainerAI_Expert_SunnyDay_ScorePlus1
    IfLoadedEqualTo AI_WEATHER_RAINING, TrainerAI_Expert_SunnyDay_ScorePlus1
    IfLoadedEqualTo AI_WEATHER_SANDSTORM, TrainerAI_Expert_SunnyDay_ScorePlus1
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_FLOWER_GIFT, TrainerAI_Expert_SunnyDay_ScorePlus1
    IfLoadedNotEqualTo ABILITY_LEAF_GUARD, TrainerAI_Expert_SunnyDay_End
    IfStatus AI_BATTLER_ATTACKER, MON_CONDITION_ANY, TrainerAI_Expert_SunnyDay_ScorePlus1
    GoTo TrainerAI_Expert_SunnyDay_End

TrainerAI_Expert_SunnyDay_ScorePlus1:
    AddToMoveScore 1
    GoTo TrainerAI_Expert_SunnyDay_End

TrainerAI_Expert_SunnyDay_ScoreMinus1:
    AddToMoveScore -1

TrainerAI_Expert_SunnyDay_End:
    PopOrEnd 

TrainerAI_Expert_BellyDrum:
    ; If the attacker is at less than 90% HP, score -2.
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 90, TrainerAI_Expert_BellyDrum_ScoreMinus2
    GoTo TrainerAI_Expert_BellyDrum_End

TrainerAI_Expert_BellyDrum_ScoreMinus2:
    AddToMoveScore -2

TrainerAI_Expert_BellyDrum_End:
    PopOrEnd 

TrainerAI_Expert_PsychUp:
    ; If the opponent has any of Attack, Defense, SpAttack, SpDefense, or Evasion at +3 stages or
    ; higher:
    ; - If the attacker's Evasion stat is at +0 stages or lower, score +2.
    ; - If the attacker has any of Attack, Defense, SpAttack, or SpDefense at +0 stages or lower,
    ; score +1.
    ; - Otherwise, 80.4% chance of score -2.
    ;
    ; Otherwise, score -2.
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_ATTACK, 8, TrainerAI_Expert_PsychUp_CheckUserStatStages
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_DEFENSE, 8, TrainerAI_Expert_PsychUp_CheckUserStatStages
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK, 8, TrainerAI_Expert_PsychUp_CheckUserStatStages
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_SP_DEFENSE, 8, TrainerAI_Expert_PsychUp_CheckUserStatStages
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 8, TrainerAI_Expert_PsychUp_CheckUserStatStages
    GoTo TrainerAI_Expert_PsychUp_ScoreMinus2

TrainerAI_Expert_PsychUp_CheckUserStatStages:
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 7, TrainerAI_Expert_PsychUp_ScorePlus1
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 7, TrainerAI_Expert_PsychUp_ScorePlus1
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_ATTACK, 7, TrainerAI_Expert_PsychUp_ScorePlus1
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_DEFENSE, 7, TrainerAI_Expert_PsychUp_ScorePlus1
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_EVASION, 7, TrainerAI_Expert_PsychUp_ScorePlus2
    IfRandomLessThan 50, TrainerAI_Expert_PsychUp_End
    GoTo TrainerAI_Expert_PsychUp_ScoreMinus2

TrainerAI_Expert_PsychUp_ScorePlus2:
    AddToMoveScore 1

TrainerAI_Expert_PsychUp_ScorePlus1:
    AddToMoveScore 1
    PopOrEnd 

TrainerAI_Expert_PsychUp_ScoreMinus2:
    AddToMoveScore -2

TrainerAI_Expert_PsychUp_End:
    PopOrEnd 

TrainerAI_Expert_MirrorCoat:
    ; If the opponent is asleep, confused, or infatuated, score -1 and terminate.
    ;
    ; If the attacker's HP <= 30%, 96.1% chance of additional score -1.
    ;
    ; If the attacker's HP <= 50%, 60.9% chance of additional score -1. (This stacks with the above condition.)
    ;
    ; If the attacker knows specifically Counter, 60.9% chance of score +4.
    ;
    ; If the opponent's last-used move was a Status move:
    ; - If the opponent is Taunted, 60.9% chance of additional score +1.
    ; - If the opponent does NOT have a type which is considered a Special type, 49% chance of score +4.
    ;
    ; If the opponent's last-used move was a Damaging move:
    ; - If the opponent is Taunted, 60.9% chance of additional score +1.
    ; - If the last-used move was a Physical move, score -1.
    ; - If the last-used move was a Special move, 60.9% chance of score +1.
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_SLEEP, TrainerAI_Expert_MirrorCoat_ScoreMinus1
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_ATTRACT, TrainerAI_Expert_MirrorCoat_ScoreMinus1
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_CONFUSION, TrainerAI_Expert_MirrorCoat_ScoreMinus1
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 30, TrainerAI_Expert_MirrorCoat_CheckAboveHalfHP
    IfRandomLessThan 10, TrainerAI_Expert_MirrorCoat_CheckAboveHalfHP
    AddToMoveScore -1

TrainerAI_Expert_MirrorCoat_CheckAboveHalfHP:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 50, TrainerAI_Expert_MirrorCoat_CheckLastUsedMove
    IfRandomLessThan 100, TrainerAI_Expert_MirrorCoat_CheckLastUsedMove
    AddToMoveScore -1

TrainerAI_Expert_MirrorCoat_CheckLastUsedMove:
    IfMoveKnown AI_BATTLER_ATTACKER, MOVE_COUNTER, TrainerAI_Expert_MirrorCoat_TryScorePlus4
    LoadBattlerPreviousMove AI_BATTLER_DEFENDER
    LoadPowerOfLoadedMove 
    IfLoadedEqualTo 0, TrainerAI_Expert_MirrorCoat_TryScorePlus1
    IfTargetIsNotTaunted TrainerAI_Expert_MirrorCoat_CheckSpecialMove
    IfRandomLessThan 100, TrainerAI_Expert_MirrorCoat_CheckSpecialMove
    AddToMoveScore 1

TrainerAI_Expert_MirrorCoat_CheckSpecialMove:
    LoadDefenderLastUsedMoveClass 
    IfLoadedNotEqualTo CLASS_SPECIAL, TrainerAI_Expert_MirrorCoat_ScoreMinus1
    IfRandomLessThan 100, TrainerAI_Expert_MirrorCoat_End2
    AddToMoveScore 1
    GoTo TrainerAI_Expert_MirrorCoat_End2

TrainerAI_Expert_MirrorCoat_TryScorePlus1:
    IfTargetIsNotTaunted TrainerAI_Expert_MirrorCoat_CheckOpponentTypes
    IfRandomLessThan 100, TrainerAI_Expert_MirrorCoat_CheckOpponentTypes
    AddToMoveScore 1

TrainerAI_Expert_MirrorCoat_CheckOpponentTypes:
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedInTable TrainerAI_Expert_MirrorCoat_SpecialTypes, TrainerAI_Expert_MirrorCoat_End2
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedInTable TrainerAI_Expert_MirrorCoat_SpecialTypes, TrainerAI_Expert_MirrorCoat_End2
    IfRandomLessThan 50, TrainerAI_Expert_MirrorCoat_End2

TrainerAI_Expert_MirrorCoat_TryScorePlus4:
    IfRandomLessThan 100, TrainerAI_Expert_MirrorCoat_End
    AddToMoveScore 4

TrainerAI_Expert_MirrorCoat_End:
    PopOrEnd 

TrainerAI_Expert_MirrorCoat_ScoreMinus1:
    AddToMoveScore -1

TrainerAI_Expert_MirrorCoat_End2:
    PopOrEnd 

TrainerAI_Expert_MirrorCoat_SpecialTypes:
    TableEntry TYPE_FIRE
    TableEntry TYPE_WATER
    TableEntry TYPE_GRASS
    TableEntry TYPE_ELECTRIC
    TableEntry TYPE_PSYCHIC
    TableEntry TYPE_ICE
    TableEntry TYPE_DRAGON
    TableEntry TYPE_DARK
    TableEntry TABLE_END

TrainerAI_Expert_ChargeTurnNoInvuln:
    ; If the opponent resists or is immune to the move, score -2 and terminate.
    ;
    ; If the move would skip its charge turn in Sun and the current weather is Sun, score +2.
    ;
    ; If the attacker is holding a Power Herb, score +2.
    ;
    ; If the opponent knows the move Protect, score -2.
    ;
    ; If the attacker's HP <= 38%, score -1.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_Expert_ChargeTurnNoInvuln_ScoreMinus2
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, TrainerAI_Expert_ChargeTurnNoInvuln_ScoreMinus2
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, TrainerAI_Expert_ChargeTurnNoInvuln_ScoreMinus2
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SKIP_CHARGE_TURN_IN_SUN, TrainerAI_Expert_ChargeTurnNoInvuln_CheckForSunnyWeather
    GoTo TrainerAI_Expert_ChargeTurnNoInvuln_CheckForPowerHerb

TrainerAI_Expert_ChargeTurnNoInvuln_CheckForSunnyWeather:
    LoadCurrentWeather 
    IfLoadedNotEqualTo AI_WEATHER_SUNNY, TrainerAI_Expert_ChargeTurnNoInvuln_CheckForPowerHerb
    AddToMoveScore 2
    GoTo TrainerAI_Expert_ChargeTurnNoInvuln_End

TrainerAI_Expert_ChargeTurnNoInvuln_CheckForPowerHerb:
    IfHeldItemEqualTo AI_BATTLER_ATTACKER, ITEM_POWER_HERB, TrainerAI_Expert_ChargeTurnNoInvuln_ScorePlus2
    GoTo TrainerAI_Expert_ChargeTurnNoInvuln_CheckForProtectAndHP

TrainerAI_Expert_ChargeTurnNoInvuln_ScorePlus2:
    AddToMoveScore 2
    GoTo TrainerAI_Expert_ChargeTurnNoInvuln_End

TrainerAI_Expert_ChargeTurnNoInvuln_CheckForProtectAndHP:
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_PROTECT, TrainerAI_Expert_ChargeTurnNoInvuln_ScoreMinus2
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 38, TrainerAI_Expert_ChargeTurnNoInvuln_End
    AddToMoveScore -1
    GoTo TrainerAI_Expert_ChargeTurnNoInvuln_End

TrainerAI_Expert_ChargeTurnNoInvuln_ScoreMinus2:
    AddToMoveScore -2

TrainerAI_Expert_ChargeTurnNoInvuln_End:
    PopOrEnd 

TrainerAI_Expert_UnusedSolarbeam:
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_Expert_UnusedSolarbeam_TryScoreMinus3
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, TrainerAI_Expert_UnusedSolarbeam_TryScoreMinus3
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, TrainerAI_Expert_UnusedSolarbeam_TryScoreMinus3
    LoadCurrentWeather 
    IfLoadedEqualTo AI_WEATHER_SUNNY, TrainerAI_Expert_UnusedSolarbeam_TryScoreMinus3
    IfLoadedNotEqualTo AI_WEATHER_RAINING, TrainerAI_Expert_UnusedSolarbeam_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_UnusedSolarbeam_End

TrainerAI_Expert_UnusedSolarbeam_TryScoreMinus3:
    IfRandomLessThan 50, TrainerAI_Expert_UnusedSolarbeam_End
    AddToMoveScore -3

TrainerAI_Expert_UnusedSolarbeam_End:
    PopOrEnd 

TrainerAI_Expert_ChargeTurnWithInvuln:
    ; If the attacker is holding a Power Herb, score +2.
    ;
    ; If the opponent knows a Protect move, score -1.
    ;
    ; If the opponent is immune to or would resist the move, score +1. (Bug?)
    ;
    ; If the opponent is under any of the following conditions, score +1:
    ; - Toxic
    ; - Curse
    ; - Leech Seed
    ;
    ; If the current weather is Sand or Hail and the attacker's type makes them immune to the
    ; corresponding damage effect, 68.75% chance of score +1.
    ;
    ; If the attacker is faster than its opponent and the opponent's last-used move is not an
    ; always-hit effect (e.g. Aerial Ace), 68.75% chance of score +1.
    IfHeldItemEqualTo AI_BATTLER_ATTACKER, ITEM_POWER_HERB, TrainerAI_Expert_ChargeTurnNoInvuln_ScorePlus2
    IfMoveEffectNotKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_PROTECT, TrainerAI_Expert_ShadowForce
    AddToMoveScore -1
    GoTo TrainerAI_Expert_ChargeTurnWithInvuln_End

TrainerAI_Expert_ShadowForce:
    ; Shadow Force is handled identically to ChargeTurnWithInvuln, but only gets score +1 for Power Herb
    ; and does not consider if the opponent knows a Protect move (which it would bypass).
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_Expert_ChargeTurnWithInvuln_ScorePlus1
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, TrainerAI_Expert_ChargeTurnWithInvuln_ScorePlus1
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, TrainerAI_Expert_ChargeTurnWithInvuln_ScorePlus1
    IfHeldItemEqualTo AI_BATTLER_ATTACKER, ITEM_POWER_HERB, TrainerAI_Expert_ChargeTurnWithInvuln_ScorePlus1AndEnd
    GoTo TrainerAI_Expert_ChargeTurnWithInvuln_CheckConditions

TrainerAI_Expert_ChargeTurnWithInvuln_ScorePlus1AndEnd:
    AddToMoveScore 1
    GoTo TrainerAI_Expert_ChargeTurnWithInvuln_End

TrainerAI_Expert_ChargeTurnWithInvuln_CheckConditions:
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_TOXIC, TrainerAI_Expert_ChargeTurnWithInvuln_TryScorePlus1
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_CURSE, TrainerAI_Expert_ChargeTurnWithInvuln_TryScorePlus1
    IfMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_LEECH_SEED, TrainerAI_Expert_ChargeTurnWithInvuln_TryScorePlus1
    LoadCurrentWeather 
    IfLoadedEqualTo AI_WEATHER_SANDSTORM, TrainerAI_Expert_ChargeTurnWithInvuln_CheckSandImmuneType
    IfLoadedEqualTo AI_WEATHER_HAILING, TrainerAI_Expert_ChargeTurnWithInvuln_CheckHailImmuneType
    GoTo TrainerAI_Expert_ChargeTurnWithInvuln_CompareSpeed

TrainerAI_Expert_ChargeTurnWithInvuln_CheckSandImmuneType:
    LoadTypeFrom LOAD_ATTACKER_TYPE_1
    IfLoadedInTable TrainerAI_Expert_ChargeTurnWithInvuln_SandImmuneTypes, TrainerAI_Expert_ChargeTurnWithInvuln_TryScorePlus1
    LoadTypeFrom LOAD_ATTACKER_TYPE_2
    IfLoadedInTable TrainerAI_Expert_ChargeTurnWithInvuln_SandImmuneTypes, TrainerAI_Expert_ChargeTurnWithInvuln_TryScorePlus1
    GoTo TrainerAI_Expert_ChargeTurnWithInvuln_CompareSpeed

TrainerAI_Expert_ChargeTurnWithInvuln_CheckHailImmuneType:
    LoadTypeFrom LOAD_ATTACKER_TYPE_1
    IfLoadedEqualTo TYPE_ICE, TrainerAI_Expert_ChargeTurnWithInvuln_TryScorePlus1
    LoadTypeFrom LOAD_ATTACKER_TYPE_2
    IfLoadedEqualTo TYPE_ICE, TrainerAI_Expert_ChargeTurnWithInvuln_TryScorePlus1
    GoTo TrainerAI_Expert_ChargeTurnWithInvuln_CompareSpeed

TrainerAI_Expert_ChargeTurnWithInvuln_CompareSpeed:
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_ChargeTurnWithInvuln_End
    LoadBattlerPreviousMove AI_BATTLER_DEFENDER
    LoadEffectOfLoadedMove 
    IfLoadedNotEqualTo BATTLE_EFFECT_NEXT_ATTACK_ALWAYS_HITS, TrainerAI_Expert_ChargeTurnWithInvuln_TryScorePlus1
    GoTo TrainerAI_Expert_ChargeTurnWithInvuln_End

TrainerAI_Expert_ChargeTurnWithInvuln_TryScorePlus1:
    IfRandomLessThan 80, TrainerAI_Expert_ChargeTurnWithInvuln_End
    AddToMoveScore 1

TrainerAI_Expert_ChargeTurnWithInvuln_End:
    PopOrEnd 

TrainerAI_Expert_ChargeTurnWithInvuln_ScorePlus1:
    AddToMoveScore 1
    PopOrEnd 

TrainerAI_Expert_ChargeTurnWithInvuln_SandImmuneTypes:
    TableEntry TYPE_GROUND
    TableEntry TYPE_ROCK
    TableEntry TYPE_STEEL
    TableEntry TABLE_END

TrainerAI_Expert_FakeOut:
    ; Score +2.
    AddToMoveScore 2
    PopOrEnd 

TrainerAI_Expert_SpitUp:
    ; If the attacker's Stockpile count is 2 or higher, 68.75% chance of score +2.
    LoadStockpileCount AI_BATTLER_ATTACKER
    IfLoadedLessThan 2, TrainerAI_Expert_SpitUp_End
    IfRandomLessThan 80, TrainerAI_Expert_SpitUp_End
    AddToMoveScore 2

TrainerAI_Expert_SpitUp_End:
    PopOrEnd 

TrainerAI_Expert_Hail:
    ; If the attacker's HP < 40%, score -1 and terminate.
    ;
    ; If the current weather is Sun, Rain, or Sand, additional score +1. If the attacker also knows
    ; the move Blizzard, additional score +2.
    ;
    ; If the attacker has the ability Ice Body, additional score +2.
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 40, TrainerAI_Expert_Hail_ScoreMinus1
    LoadCurrentWeather 
    IfLoadedEqualTo AI_WEATHER_SUNNY, TrainerAI_Expert_Hail_ScorePlus1AndCheckBlizzard
    IfLoadedEqualTo AI_WEATHER_RAINING, TrainerAI_Expert_Hail_ScorePlus1AndCheckBlizzard
    IfLoadedEqualTo AI_WEATHER_SANDSTORM, TrainerAI_Expert_Hail_ScorePlus1AndCheckBlizzard
    GoTo TrainerAI_Expert_Hail_End

TrainerAI_Expert_Hail_ScorePlus1AndCheckBlizzard:
    AddToMoveScore 1
    IfMoveNotKnown AI_BATTLER_ATTACKER, MOVE_BLIZZARD, TrainerAI_Expert_Hail_CheckIceBody
    AddToMoveScore 2

TrainerAI_Expert_Hail_CheckIceBody:
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedNotEqualTo ABILITY_ICE_BODY, TrainerAI_Expert_Hail_End
    AddToMoveScore 2
    GoTo TrainerAI_Expert_Hail_End

TrainerAI_Expert_Hail_ScoreMinus1:
    AddToMoveScore -1

TrainerAI_Expert_Hail_End:
    PopOrEnd 

TrainerAI_Expert_Facade:
    ; If the opponent has a status condition which would boost Facade, score +1.
    ; BUG: This should instead check if the attacker has such a status condition.
    IfNotStatus AI_BATTLER_DEFENDER, MON_CONDITION_FACADE_BOOST, TrainerAI_Expert_Facade_End
    AddToMoveScore 1

TrainerAI_Expert_Facade_End:
    PopOrEnd 

TrainerAI_Expert_FocusPunch:
    ; If the opponent is immune to or would resist the move, score -1.
    ;
    ; If the attacker is behind a Substitute, score +5.
    ;
    ; If the opponent is asleep, score +1.
    ;
    ; If the opponent is confused or infatuated, 60.9% chance of score +1.
    ;
    ; If it is not the attacker's first turn in battle, 21.875% chance of score +1.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_Expert_FocusPunch_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, TrainerAI_Expert_FocusPunch_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, TrainerAI_Expert_FocusPunch_ScoreMinus1
    IfVolatileStatus AI_BATTLER_ATTACKER, VOLATILE_CONDITION_SUBSTITUTE, TrainerAI_ScorePlus5
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_SLEEP, TrainerAI_Expert_FocusPunch_ScorePlus1
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_ATTRACT, TrainerAI_Expert_FocusPunch_TryScorePlus1
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_CONFUSION, TrainerAI_Expert_FocusPunch_TryScorePlus1
    LoadIsFirstTurnInBattle AI_BATTLER_ATTACKER
    IfLoadedNotEqualTo FALSE, TrainerAI_Expert_FocusPunch_End
    IfRandomLessThan 200, TrainerAI_Expert_FocusPunch_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_FocusPunch_End

TrainerAI_Expert_FocusPunch_ScoreMinus1:
    AddToMoveScore -1
    GoTo TrainerAI_Expert_FocusPunch_End

TrainerAI_Expert_FocusPunch_TryScorePlus1:
    IfRandomLessThan 100, TrainerAI_Expert_FocusPunch_End

TrainerAI_Expert_FocusPunch_ScorePlus1:
    AddToMoveScore 1

TrainerAI_Expert_FocusPunch_End:
    PopOrEnd 

TrainerAI_Expert_SmellingSalts:
    ; If the opponent is paralyzed, score +1.
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_PARALYSIS, TrainerAI_Expert_SmellingSalts_ScorePlus1
    GoTo TrainerAI_Expert_SmellingSalts_End

TrainerAI_Expert_SmellingSalts_ScorePlus1:
    AddToMoveScore 1

TrainerAI_Expert_SmellingSalts_End:
    PopOrEnd 

TrainerAI_Expert_Trick:
    ; If the attacker is holding a Disruptive item:
    ; - If the opponent is holding a bad item to trade with, score -3.
    ; - Otherwise, score +5.
    ;
    ; If the attacker is holding an item that poisons its bearer:
    ; - If the opponent is holding a bad item to trade with, score -3.
    ; - If the opponent does not meet any of the following criteria, score +5:
    ;   - Has a non-volatile status condition.
    ;   - Is protected by Safeguard.
    ;   - Has a Steel or Poison typing.
    ;   - Has the ability Immunity, Magic Guard, or Poison Heal.
    ; - If the attacker meets any of the following criteria, score -3:
    ;   - Has a non-volatile status condition.
    ;   - Is protected by Safeguard.
    ;   - Has a Steel or Poison typing.
    ;   - Has the ability Immunity, Magic Guard, Poison Heal, or Klutz.
    ; - Otherwise, score +5.
    ;
    ; If the attacker is holding an item that burns its bearer:
    ; - If the opponent is holding a bad item to trade with, score -3.
    ; - If the opponent does not meet any of the following criteria, score +5:
    ;   - Has a non-volatile status condition.
    ;   - Is protected by Safeguard.
    ;   - Has a Fire typing.
    ;   - Has the ability Water Veil or Magic Guard.
    ; - If the attacker meets any of the following criteria, score -3:
    ;   - Has a non-volatile status condition.
    ;   - Is protected by Safeguard.
    ;   - Has a Fire typing.
    ;   - Has the ability Water Veil, Magic Guard, or Klutz.
    ; - Otherwise, score +5.
    ;
    ; If the attacker is holding Black Sludge:
    ; - If the opponent is holding a bad item to trade with, score -3.
    ; - If the opponent does not meet any of the following criteria, score +5:
    ;   - Has a Poison typing.
    ;   - Has the ability Magic Guard.
    ; - If the attacker meets any of the following criteria, score -3:
    ;   - Has a Poison typing.
    ;   - Has the ability Magic Guard or Klutz.
    ; - Otherwise, score +5.
    ;
    ; If the attacker is holding a Flavor Berry:
    ; - If the opponent is holding a bad item to trade with or a flavor berry, score -3.
    ; - Otherwise, 80.5% chance of score +2.
    LoadHeldItemEffect AI_BATTLER_ATTACKER
    IfLoadedInTable TrainerAI_Expert_Trick_DisruptiveItems, TrainerAI_Expert_Trick_CheckOpponentItem
    IfLoadedInTable TrainerAI_Expert_Trick_PoisoningItems, TrainerAI_Expert_Trick_CheckOpponentForPoison
    IfLoadedInTable TrainerAI_Expert_Trick_BurningItems, TrainerAI_Expert_Trick_CheckOpponentForBurn
    IfLoadedInTable TrainerAI_Expert_Trick_BlackSludge, TrainerAI_Expert_Trick_CheckOpponentForSludge
    IfLoadedInTable TrainerAI_Expert_Trick_FlavorBerries, TrainerAI_Expert_Trick_CheckOpponentForFlavorBerry

TrainerAI_Expert_Trick_ScoreMinus3:
    AddToMoveScore -3
    GoTo TrainerAI_Expert_Trick_End

TrainerAI_Expert_Trick_CheckOpponentItem:
    LoadHeldItemEffect AI_BATTLER_DEFENDER
    IfLoadedInTable TrainerAI_Expert_Trick_BadOpponentItems, TrainerAI_Expert_Trick_ScoreMinus3
    AddToMoveScore 5
    GoTo TrainerAI_Expert_Trick_End

TrainerAI_Expert_Trick_CheckOpponentForPoison:
    LoadHeldItemEffect AI_BATTLER_DEFENDER
    IfLoadedInTable TrainerAI_Expert_Trick_BadOpponentItems, TrainerAI_Expert_Trick_ScoreMinus3
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_ANY, TrainerAI_Expert_Trick_CheckAttackerForPoison
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_SAFEGUARD, TrainerAI_Expert_Trick_CheckAttackerForPoison
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_STEEL, TrainerAI_Expert_Trick_CheckAttackerForPoison
    IfLoadedEqualTo TYPE_POISON, TrainerAI_Expert_Trick_CheckAttackerForPoison
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_STEEL, TrainerAI_Expert_Trick_CheckAttackerForPoison
    IfLoadedEqualTo TYPE_POISON, TrainerAI_Expert_Trick_CheckAttackerForPoison
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_IMMUNITY, TrainerAI_Expert_Trick_CheckAttackerForPoison
    IfLoadedEqualTo ABILITY_MAGIC_GUARD, TrainerAI_Expert_Trick_CheckAttackerForPoison
    IfLoadedEqualTo ABILITY_POISON_HEAL, TrainerAI_Expert_Trick_CheckAttackerForPoison
    AddToMoveScore 5
    GoTo TrainerAI_Expert_Trick_End

TrainerAI_Expert_Trick_CheckAttackerForPoison:
    IfStatus AI_BATTLER_ATTACKER, MON_CONDITION_ANY, TrainerAI_Expert_Trick_ScoreMinus3
    IfSideCondition AI_BATTLER_ATTACKER, SIDE_CONDITION_SAFEGUARD, TrainerAI_Expert_Trick_ScoreMinus3
    LoadTypeFrom LOAD_ATTACKER_TYPE_1
    IfLoadedEqualTo TYPE_STEEL, TrainerAI_Expert_Trick_ScoreMinus3
    IfLoadedEqualTo TYPE_POISON, TrainerAI_Expert_Trick_ScoreMinus3
    LoadTypeFrom LOAD_ATTACKER_TYPE_2
    IfLoadedEqualTo TYPE_STEEL, TrainerAI_Expert_Trick_ScoreMinus3
    IfLoadedEqualTo TYPE_POISON, TrainerAI_Expert_Trick_ScoreMinus3
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_IMMUNITY, TrainerAI_Expert_Trick_ScoreMinus3
    IfLoadedEqualTo ABILITY_MAGIC_GUARD, TrainerAI_Expert_Trick_ScoreMinus3
    IfLoadedEqualTo ABILITY_POISON_HEAL, TrainerAI_Expert_Trick_ScoreMinus3
    IfLoadedEqualTo ABILITY_KLUTZ, TrainerAI_Expert_Trick_ScoreMinus3
    AddToMoveScore 5
    GoTo TrainerAI_Expert_Trick_End

TrainerAI_Expert_Trick_CheckOpponentForBurn:
    LoadHeldItemEffect AI_BATTLER_DEFENDER
    IfLoadedInTable TrainerAI_Expert_Trick_BadOpponentItems, TrainerAI_Expert_Trick_ScoreMinus3
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_WATER_VEIL, TrainerAI_Expert_Trick_CheckAttackerForBurn
    IfLoadedEqualTo ABILITY_MAGIC_GUARD, TrainerAI_Expert_Trick_CheckAttackerForBurn
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_ANY, TrainerAI_Expert_Trick_CheckAttackerForBurn
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_SAFEGUARD, TrainerAI_Expert_Trick_CheckAttackerForBurn
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_FIRE, TrainerAI_Expert_Trick_CheckAttackerForBurn
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_FIRE, TrainerAI_Expert_Trick_CheckAttackerForBurn
    AddToMoveScore 5
    GoTo TrainerAI_Expert_Trick_End

TrainerAI_Expert_Trick_CheckAttackerForBurn:
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_WATER_VEIL, TrainerAI_Expert_Trick_ScoreMinus3
    IfLoadedEqualTo ABILITY_MAGIC_GUARD, TrainerAI_Expert_Trick_ScoreMinus3
    IfLoadedEqualTo ABILITY_KLUTZ, TrainerAI_ScoreMinus5
    IfStatus AI_BATTLER_ATTACKER, MON_CONDITION_ANY, TrainerAI_Expert_Trick_ScoreMinus3
    IfSideCondition AI_BATTLER_ATTACKER, SIDE_CONDITION_SAFEGUARD, TrainerAI_Expert_Trick_ScoreMinus3
    LoadTypeFrom LOAD_ATTACKER_TYPE_1
    IfLoadedEqualTo TYPE_FIRE, TrainerAI_Expert_Trick_ScoreMinus3
    LoadTypeFrom LOAD_ATTACKER_TYPE_2
    IfLoadedEqualTo TYPE_FIRE, TrainerAI_Expert_Trick_ScoreMinus3
    AddToMoveScore 5
    GoTo TrainerAI_Expert_Trick_End

TrainerAI_Expert_Trick_CheckOpponentForSludge:
    LoadHeldItemEffect AI_BATTLER_DEFENDER
    IfLoadedInTable TrainerAI_Expert_Trick_BadOpponentItems, TrainerAI_Expert_Trick_ScoreMinus3
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_POISON, TrainerAI_Expert_Trick_CheckAttackerForSludge
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_POISON, TrainerAI_Expert_Trick_CheckAttackerForSludge
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_MAGIC_GUARD, TrainerAI_Expert_Trick_CheckAttackerForPoison
    AddToMoveScore 5
    GoTo TrainerAI_Expert_Trick_End

TrainerAI_Expert_Trick_CheckAttackerForSludge:
    LoadTypeFrom LOAD_ATTACKER_TYPE_1
    IfLoadedEqualTo TYPE_POISON, TrainerAI_Expert_Trick_ScoreMinus3
    LoadTypeFrom LOAD_ATTACKER_TYPE_2
    IfLoadedEqualTo TYPE_POISON, TrainerAI_Expert_Trick_ScoreMinus3
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_MAGIC_GUARD, TrainerAI_Expert_Trick_ScoreMinus3
    IfLoadedEqualTo ABILITY_KLUTZ, TrainerAI_Expert_Trick_ScoreMinus3
    AddToMoveScore 5
    GoTo TrainerAI_Expert_Trick_End

TrainerAI_Expert_Trick_CheckOpponentForFlavorBerry:
    LoadHeldItemEffect AI_BATTLER_DEFENDER
    IfLoadedInTable TrainerAI_Expert_Trick_BadOpponentItemsAndFlavorBerries, TrainerAI_Expert_Trick_ScoreMinus3
    IfRandomLessThan 50, TrainerAI_Expert_Trick_End
    AddToMoveScore 2

TrainerAI_Expert_Trick_End:
    PopOrEnd 

TrainerAI_Expert_Trick_FlavorBerries:
    TableEntry HOLD_EFFECT_HP_RESTORE_SPICY
    TableEntry HOLD_EFFECT_HP_RESTORE_DRY
    TableEntry HOLD_EFFECT_HP_RESTORE_SWEET
    TableEntry HOLD_EFFECT_HP_RESTORE_BITTER
    TableEntry HOLD_EFFECT_HP_RESTORE_SOUR
    TableEntry TABLE_END

TrainerAI_Expert_Trick_DisruptiveItems:
    ; BUG: This list does not include Macho Brace.
    TableEntry HOLD_EFFECT_CHOICE_ATK
    TableEntry HOLD_EFFECT_CHOICE_SPATK
    TableEntry HOLD_EFFECT_CHOICE_SPEED
    TableEntry HOLD_EFFECT_SPEED_DOWN_GROUNDED
    TableEntry HOLD_EFFECT_PRIORITY_DOWN
    TableEntry HOLD_EFFECT_DMG_USER_CONTACT_XFR
    TableEntry HOLD_EFFECT_LVLUP_ATK_EV_UP
    TableEntry HOLD_EFFECT_LVLUP_DEF_EV_UP
    TableEntry HOLD_EFFECT_LVLUP_SPATK_EV_UP
    TableEntry HOLD_EFFECT_LVLUP_DEF_EV_UP
    TableEntry HOLD_EFFECT_LVLUP_SPDEF_EV_UP
    TableEntry HOLD_EFFECT_LVLUP_SPEED_EV_UP
    TableEntry HOLD_EFFECT_LVLUP_HP_EV_UP
    TableEntry TABLE_END

TrainerAI_Expert_Trick_PoisoningItems:
    TableEntry HOLD_EFFECT_PSN_USER
    TableEntry TABLE_END

TrainerAI_Expert_Trick_BurningItems:
    TableEntry HOLD_EFFECT_BRN_USER
    TableEntry TABLE_END

TrainerAI_Expert_Trick_BlackSludge:
    TableEntry HOLD_EFFECT_HP_RESTORE_PSN_TYPE
    TableEntry TABLE_END

TrainerAI_Expert_Trick_BadOpponentItemsAndFlavorBerries:
    TableEntry HOLD_EFFECT_HP_RESTORE_SPICY
    TableEntry HOLD_EFFECT_HP_RESTORE_DRY
    TableEntry HOLD_EFFECT_HP_RESTORE_SWEET
    TableEntry HOLD_EFFECT_HP_RESTORE_BITTER
    TableEntry HOLD_EFFECT_HP_RESTORE_SOUR
    TableEntry HOLD_EFFECT_EVS_UP_SPEED_DOWN
    TableEntry HOLD_EFFECT_CHOICE_ATK
    TableEntry HOLD_EFFECT_CHOICE_SPATK
    TableEntry HOLD_EFFECT_CHOICE_SPEED
    TableEntry HOLD_EFFECT_SPEED_DOWN_GROUNDED
    TableEntry HOLD_EFFECT_PRIORITY_DOWN
    TableEntry HOLD_EFFECT_DMG_USER_CONTACT_XFR
    TableEntry HOLD_EFFECT_LVLUP_ATK_EV_UP
    TableEntry HOLD_EFFECT_LVLUP_DEF_EV_UP
    TableEntry HOLD_EFFECT_LVLUP_SPATK_EV_UP
    TableEntry HOLD_EFFECT_LVLUP_SPDEF_EV_UP
    TableEntry HOLD_EFFECT_LVLUP_SPEED_EV_UP
    TableEntry HOLD_EFFECT_LVLUP_HP_EV_UP
    TableEntry HOLD_EFFECT_PSN_USER
    TableEntry HOLD_EFFECT_BRN_USER
    TableEntry HOLD_EFFECT_HP_RESTORE_PSN_TYPE
    TableEntry TABLE_END

TrainerAI_Expert_Trick_BadOpponentItems:
    TableEntry HOLD_EFFECT_EVS_UP_SPEED_DOWN
    TableEntry HOLD_EFFECT_CHOICE_ATK
    TableEntry HOLD_EFFECT_CHOICE_SPATK
    TableEntry HOLD_EFFECT_CHOICE_SPEED
    TableEntry HOLD_EFFECT_SPEED_DOWN_GROUNDED
    TableEntry HOLD_EFFECT_PRIORITY_DOWN
    TableEntry HOLD_EFFECT_DMG_USER_CONTACT_XFR
    TableEntry HOLD_EFFECT_LVLUP_ATK_EV_UP
    TableEntry HOLD_EFFECT_LVLUP_DEF_EV_UP
    TableEntry HOLD_EFFECT_LVLUP_SPATK_EV_UP
    TableEntry HOLD_EFFECT_LVLUP_SPDEF_EV_UP
    TableEntry HOLD_EFFECT_LVLUP_SPEED_EV_UP
    TableEntry HOLD_EFFECT_LVLUP_HP_EV_UP
    TableEntry HOLD_EFFECT_PSN_USER
    TableEntry HOLD_EFFECT_BRN_USER
    TableEntry HOLD_EFFECT_HP_RESTORE_PSN_TYPE
    TableEntry TABLE_END

TrainerAI_Expert_ChangeUserAbility:
    ; If the attacker has a desirable ability, score -1.
    ;
    ; If the opponent has a desirable ability, 80.5% chance of score +2.
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedInTable TrainerAI_Expert_ChangeUserAbility_DesirableAbilities, TrainerAI_Expert_ChangeUserAbility_ScoreMinus1
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedInTable TrainerAI_Expert_ChangeUserAbility_DesirableAbilities, TrainerAI_Expert_ChangeUserAbility_TryScorePlus2

TrainerAI_Expert_ChangeUserAbility_ScoreMinus1:
    AddToMoveScore -1
    GoTo TrainerAI_Expert_ChangeUserAbility_End

TrainerAI_Expert_ChangeUserAbility_TryScorePlus2:
    IfRandomLessThan 50, TrainerAI_Expert_ChangeUserAbility_End
    AddToMoveScore 2

TrainerAI_Expert_ChangeUserAbility_End:
    PopOrEnd 

TrainerAI_Expert_ChangeUserAbility_DesirableAbilities:
    TableEntry ABILITY_SPEED_BOOST
    TableEntry ABILITY_BATTLE_ARMOR
    TableEntry ABILITY_SAND_VEIL
    TableEntry ABILITY_STATIC
    TableEntry ABILITY_FLASH_FIRE
    TableEntry ABILITY_WONDER_GUARD
    TableEntry ABILITY_EFFECT_SPORE
    TableEntry ABILITY_SWIFT_SWIM
    TableEntry ABILITY_HUGE_POWER
    TableEntry ABILITY_RAIN_DISH
    TableEntry ABILITY_CUTE_CHARM
    TableEntry ABILITY_SHED_SKIN
    TableEntry ABILITY_MARVEL_SCALE
    TableEntry ABILITY_PURE_POWER
    TableEntry ABILITY_CHLOROPHYLL
    TableEntry ABILITY_SHIELD_DUST
    TableEntry ABILITY_ADAPTABILITY
    TableEntry ABILITY_MAGIC_GUARD
    TableEntry ABILITY_MOLD_BREAKER
    TableEntry ABILITY_SUPER_LUCK
    TableEntry ABILITY_UNAWARE
    TableEntry ABILITY_TINTED_LENS
    TableEntry ABILITY_FILTER
    TableEntry ABILITY_SOLID_ROCK
    TableEntry ABILITY_RECKLESS
    TableEntry TABLE_END

TrainerAI_Expert_Ingrain:
    ; No score change.
    PopOrEnd 

TrainerAI_Expert_Superpower:
    ; If the opponent would resist or is immune to the move, score -1.
    ;
    ; If the attacker's Attack stat stage is at -1 or lower, score -1.
    ;
    ; If the attacker is slower than its opponent and has HP >= 60%, score -1.
    ;
    ; If the attacker is faster than its opponent and has HP > 40%, score -1.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_Expert_Superpower_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, TrainerAI_Expert_Superpower_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, TrainerAI_Expert_Superpower_ScoreMinus1
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 6, TrainerAI_Expert_Superpower_ScoreMinus1
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_Superpower_CheckUserHP
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 40, TrainerAI_Expert_Superpower_ScoreMinus1
    GoTo TrainerAI_Expert_Superpower_End

TrainerAI_Expert_Superpower_CheckUserHP:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 60, TrainerAI_Expert_Superpower_End

TrainerAI_Expert_Superpower_ScoreMinus1:
    AddToMoveScore -1

TrainerAI_Expert_Superpower_End:
    PopOrEnd 

TrainerAI_Expert_MagicCoat:
    ; If the opponent's HP <= 30%, 60.9% chance of additional score -1.
    ;
    ; If it is the attacker's first turn in battle, 41.4% chance of score +1.
    ;
    ; If it is not the attacker's first turn in battle, 88.3% chance of score -1.
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 30, TrainerAI_Expert_MagicCoat_CheckUserFirstTurn
    IfRandomLessThan 100, TrainerAI_Expert_MagicCoat_CheckUserFirstTurn
    AddToMoveScore -1

TrainerAI_Expert_MagicCoat_CheckUserFirstTurn:
    LoadIsFirstTurnInBattle AI_BATTLER_ATTACKER
    IfLoadedEqualTo FALSE, TrainerAI_Expert_MagicCoat_TryScoreMinus1
    IfRandomLessThan 150, TrainerAI_Expert_MagicCoat_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_MagicCoat_End
    IfRandomLessThan 50, TrainerAI_Expert_MagicCoat_End

TrainerAI_Expert_MagicCoat_TryScoreMinus1:
    IfRandomLessThan 30, TrainerAI_Expert_MagicCoat_End
    AddToMoveScore -1

TrainerAI_Expert_MagicCoat_End:
    PopOrEnd 

TrainerAI_Expert_Recycle:
    ; If the attacker's Recyclable item is *not* any of the following, score -2:
    ; - Chesto Berry
    ; - Lum Berry
    ; - Starf Berry
    ;
    ; Otherwise, 80.5% chance of score +1.
    LoadRecycleItem AI_BATTLER_ATTACKER
    IfLoadedNotInTable TrainerAI_Expert_Recycle_DesirableItems, TrainerAI_Expert_Recycle_ScoreMinus2
    IfRandomLessThan 50, TrainerAI_Expert_Recycle_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_Recycle_End

TrainerAI_Expert_Recycle_ScoreMinus2:
    AddToMoveScore -2

TrainerAI_Expert_Recycle_End:
    PopOrEnd 

TrainerAI_Expert_Recycle_DesirableItems:
    TableEntry ITEM_CHESTO_BERRY
    TableEntry ITEM_LUM_BERRY
    TableEntry ITEM_STARF_BERRY
    TableEntry TABLE_END

TrainerAI_Expert_Revenge:
    ; If the opponent is asleep, infatuated, or confused, score -2.
    ;
    ; Otherwise, 70.3% chance of score -2, 29.7% chance of score +2.
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_SLEEP, TrainerAI_Expert_Revenge_ScoreMinus2
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_ATTRACT, TrainerAI_Expert_Revenge_ScoreMinus2
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_CONFUSION, TrainerAI_Expert_Revenge_ScoreMinus2
    IfRandomLessThan 180, TrainerAI_Expert_Revenge_ScoreMinus2
    AddToMoveScore 2
    GoTo TrainerAI_Expert_Revenge_End

TrainerAI_Expert_Revenge_ScoreMinus2:
    AddToMoveScore -2

TrainerAI_Expert_Revenge_End:
    PopOrEnd 

TrainerAI_Expert_BrickBreak:
    ; If the opponent's side of the field is under the effect of Reflect or Light Screen, score +1.
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_REFLECT, TrainerAI_Expert_BrickBreak_ScorePlus1
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_LIGHT_SCREEN, TrainerAI_Expert_BrickBreak_ScorePlus1
    GoTo TrainerAI_Expert_BrickBreak_End

TrainerAI_Expert_BrickBreak_ScorePlus1:
    AddToMoveScore 1

TrainerAI_Expert_BrickBreak_End:
    PopOrEnd 

TrainerAI_Expert_KnockOff:
    ; If the opponent's HP >= 30% and it is not the attacker's first turn in battle, 29.7% chance of
    ; score +1.
    IfHPPercentLessThan AI_BATTLER_DEFENDER, 30, TrainerAI_Expert_KnockOff_End
    LoadIsFirstTurnInBattle AI_BATTLER_ATTACKER
    IfLoadedGreaterThan FALSE, TrainerAI_Expert_KnockOff_End
    IfRandomLessThan 180, TrainerAI_Expert_KnockOff_End
    AddToMoveScore 1

TrainerAI_Expert_KnockOff_End:
    PopOrEnd 

TrainerAI_Expert_Endeavor:
    ; If the opponent's HP < 70%, score -1 and terminate.
    ;
    ; If the attacker is slower than its opponent:
    ; - If the attacker's HP > 50%, score -1.
    ; - Otherwise, score +1.
    ;
    ; If the attacker is faster than its opponent:
    ; - If the attacker's HP > 40%, score -1.
    ; - Otherwise, score +1.
    IfHPPercentLessThan AI_BATTLER_DEFENDER, 70, TrainerAI_Expert_Endeavor_ScoreMinus1
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_Endeavor_SlowerCheckHP
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 40, TrainerAI_Expert_Endeavor_ScoreMinus1
    AddToMoveScore 1
    GoTo TrainerAI_Expert_Endeavor_End

TrainerAI_Expert_Endeavor_SlowerCheckHP:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 50, TrainerAI_Expert_Endeavor_ScoreMinus1
    AddToMoveScore 1
    GoTo TrainerAI_Expert_Endeavor_End

TrainerAI_Expert_Endeavor_ScoreMinus1:
    AddToMoveScore -1

TrainerAI_Expert_Endeavor_End:
    PopOrEnd 

TrainerAI_Expert_WaterSpout:
    ; If the opponent resists or is immune to the move, score -1.
    ;
    ; If the attacker is slower than its opponent and the opponent's HP <= 70%, score -1.
    ;
    ; If the attacker is faster than its opponent and the opponent's HP <= 50%, score -1.
    ;
    ; BUG: This should instead check for the user's HP.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_Expert_WaterSpout_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, TrainerAI_Expert_WaterSpout_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, TrainerAI_Expert_WaterSpout_ScoreMinus1
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_WaterSpout_SlowerCheckHP
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 50, TrainerAI_Expert_WaterSpout_End
    GoTo TrainerAI_Expert_WaterSpout_ScoreMinus1

TrainerAI_Expert_WaterSpout_SlowerCheckHP:
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 70, TrainerAI_Expert_WaterSpout_End

TrainerAI_Expert_WaterSpout_ScoreMinus1:
    AddToMoveScore -1

TrainerAI_Expert_WaterSpout_End:
    PopOrEnd 

TrainerAI_Expert_Imprison:
    ; If it is not the attacker's first turn in battle, 60.9% chance of score +2.
    LoadIsFirstTurnInBattle AI_BATTLER_ATTACKER
    IfLoadedGreaterThan FALSE, TrainerAI_Expert_Imprison_End
    IfRandomLessThan 100, TrainerAI_Expert_Imprison_End
    AddToMoveScore 2

TrainerAI_Expert_Imprison_End:
    PopOrEnd 

TrainerAI_Expert_Refresh:
    ; If the opponent's HP < 50%, score -1.
    IfHPPercentLessThan AI_BATTLER_DEFENDER, 50, TrainerAI_Expert_Refresh_ScoreMinus1
    GoTo TrainerAI_Expert_Refresh_End

TrainerAI_Expert_Refresh_ScoreMinus1:
    AddToMoveScore -1

TrainerAI_Expert_Refresh_End:
    PopOrEnd 

TrainerAI_Expert_Snatch:
    ; If it is the attacker's first turn in battle, 41.4% chance of score +2.
    ;
    ; 11.7% chance of score +0 and terminate.
    ;
    ; If the attacker is slower than its opponent:
    ; - If the opponent's HP > 25%, 88.3% chance of score -2.
    ; - If the opponent knows a flat-Recovery move or Defense Curl, 41.4% chance of score +2.
    ; - Otherwise, 10.2% chance of score +1.
    ;
    ; If the attacker is faster than its opponent:
    ; - If the attacker is not at full HP, 88.3% chance of score -2.
    ; - If the opponent's HP < 70%, 88.3% chance of score -2.
    ; - Otherwise, 67.6% chance of score -2.
    LoadIsFirstTurnInBattle AI_BATTLER_ATTACKER
    IfLoadedEqualTo TRUE, TrainerAI_Expert_Snatch_TryScorePlus2
    IfRandomLessThan 30, TrainerAI_Expert_Snatch_End
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_Snatch_UserIsSlower
    IfHPPercentNotEqualTo AI_BATTLER_ATTACKER, 100, TrainerAI_Expert_Snatch_TryScoreMinus2
    IfHPPercentLessThan AI_BATTLER_DEFENDER, 70, TrainerAI_Expert_Snatch_TryScoreMinus2
    IfRandomLessThan 60, TrainerAI_Expert_Snatch_End
    GoTo TrainerAI_Expert_Snatch_TryScoreMinus2

TrainerAI_Expert_Snatch_UserIsSlower:
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 25, TrainerAI_Expert_Snatch_TryScoreMinus2
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_RESTORE_HALF_HP, TrainerAI_Expert_Snatch_TryScorePlus2
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_DEF_UP_DOUBLE_ROLLOUT_POWER, TrainerAI_Expert_Snatch_TryScorePlus2
    GoTo TrainerAI_Expert_Snatch_TryScorePlus1

TrainerAI_Expert_Snatch_TryScorePlus2:
    IfRandomLessThan 150, TrainerAI_Expert_Snatch_End
    AddToMoveScore 2
    GoTo TrainerAI_Expert_Snatch_End

TrainerAI_Expert_Snatch_TryScorePlus1:
    IfRandomLessThan 230, TrainerAI_Expert_Snatch_TryScoreMinus2
    AddToMoveScore 1
    GoTo TrainerAI_Expert_Snatch_End

TrainerAI_Expert_Snatch_TryScoreMinus2:
    IfRandomLessThan 30, TrainerAI_Expert_Snatch_End
    AddToMoveScore -2

TrainerAI_Expert_Snatch_End:
    PopOrEnd 

TrainerAI_Expert_MudSport:
    ; If the attacker's HP < 50%, score -1.
    ;
    ; If the opponent has an Electric typing, score +1.
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 50, TrainerAI_Expert_MudSport_ScoreMinus1
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_ELECTRIC, TrainerAI_Expert_MudSport_ScorePlus1
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_ELECTRIC, TrainerAI_Expert_MudSport_ScorePlus1
    GoTo TrainerAI_Expert_MudSport_ScoreMinus1

TrainerAI_Expert_MudSport_ScorePlus1:
    AddToMoveScore 1
    GoTo TrainerAI_Expert_MudSport_End

TrainerAI_Expert_MudSport_ScoreMinus1:
    AddToMoveScore -1

TrainerAI_Expert_MudSport_End:
    PopOrEnd 

TrainerAI_Expert_Overheat:
    ; If the opponent resists or is immune to the move, score -1.
    ;
    ; If the attacker is faster than its opponent and the attacker's HP is <= 60%, score -1.
    ;
    ; If the attacker is slower than its opponent and the attacker's HP is <= 80%, score -1.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_Expert_Overheat_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, TrainerAI_Expert_Overheat_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, TrainerAI_Expert_Overheat_ScoreMinus1
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_Overheat_SlowerCheckHP
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 60, TrainerAI_Expert_Overheat_End
    GoTo TrainerAI_Expert_Overheat_ScoreMinus1

TrainerAI_Expert_Overheat_SlowerCheckHP:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 80, TrainerAI_Expert_Overheat_End

TrainerAI_Expert_Overheat_ScoreMinus1:
    AddToMoveScore -1

TrainerAI_Expert_Overheat_End:
    PopOrEnd 

TrainerAI_Expert_WaterSport:
    ; If the attacker's HP < 50%, score -1.
    ;
    ; If the opponent has a Fire typing, score +1.
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 50, TrainerAI_Expert_WaterSport_ScoreMinus1
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_FIRE, TrainerAI_Expert_WaterSport_ScorePlus1
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_FIRE, TrainerAI_Expert_WaterSport_ScorePlus1
    GoTo TrainerAI_Expert_WaterSport_ScoreMinus1

TrainerAI_Expert_WaterSport_ScorePlus1:
    AddToMoveScore 1
    GoTo TrainerAI_Expert_WaterSport_End

TrainerAI_Expert_WaterSport_ScoreMinus1:
    AddToMoveScore -1

TrainerAI_Expert_WaterSport_End:
    PopOrEnd 

TrainerAI_Expert_DragonDance:
    ; If the attacker is slower than its opponent, 50% chance of score +1.
    ;
    ; If the attacker's HP <= 50%, 72.7% chance of score -1.
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_DragonDance_TryScorePlus1
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 50, TrainerAI_Expert_DragonDance_End
    IfRandomLessThan 70, TrainerAI_Expert_DragonDance_End
    AddToMoveScore -1
    GoTo TrainerAI_Expert_DragonDance_End

TrainerAI_Expert_DragonDance_TryScorePlus1:
    IfRandomLessThan 128, TrainerAI_Expert_DragonDance_End
    AddToMoveScore 1

TrainerAI_Expert_DragonDance_End:
    PopOrEnd 

TrainerAI_Expert_Gravity:
    ; If the opponent has Levitate, is under the effect of Magnet Rise, or has a Flying typing, 75%
    ; chance of score +1.
    ;
    ; If the attacker's HP >= 60%, 37.5% chance of score +1.
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_LEVITATE, TrainerAI_Expert_Gravity_TryScorePlus1
    IfMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_MAGNET_RISE, TrainerAI_Expert_Gravity_TryScorePlus1
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_FLYING, TrainerAI_Expert_Gravity_TryScorePlus1
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_FLYING, TrainerAI_Expert_Gravity_TryScorePlus1
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 60, TrainerAI_Expert_Gravity_End
    IfRandomLessThan 128, TrainerAI_Expert_Gravity_TryScorePlus1
    GoTo TrainerAI_Expert_Gravity_End

TrainerAI_Expert_Gravity_TryScorePlus1:
    IfRandomLessThan 64, TrainerAI_Expert_Gravity_End
    AddToMoveScore 1

TrainerAI_Expert_Gravity_End:
    PopOrEnd 

TrainerAI_Expert_MiracleEye:
    ; If the opponent has a Dark typing, 47.3% chance of score +2.
    ;
    ; If the opponent's Evasion stat stage is at +3 or higher, 68.75% chance of score +2.
    ;
    ; Otherwise, score -2.
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_DARK, TrainerAI_Expert_MiracleEye_ExtraRandomGate
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_DARK, TrainerAI_Expert_MiracleEye_ExtraRandomGate
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 8, TrainerAI_Expert_MiracleEye_ScorePlus2
    AddToMoveScore -2
    PopOrEnd 

TrainerAI_Expert_MiracleEye_ExtraRandomGate:
    IfRandomLessThan 80, TrainerAI_Expert_MiracleEye_End

TrainerAI_Expert_MiracleEye_ScorePlus2:
    IfRandomLessThan 80, TrainerAI_Expert_MiracleEye_End
    AddToMoveScore 2

TrainerAI_Expert_MiracleEye_End:
    PopOrEnd 

TrainerAI_Expert_WakeUpSlap:
    ; If the opponent resists or is immune to the move, score -1.
    ;
    ; If the opponent is asleep, score +1.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_Expert_WakeUpSlap_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, TrainerAI_Expert_WakeUpSlap_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, TrainerAI_Expert_WakeUpSlap_ScoreMinus1
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_SLEEP, TrainerAI_Expert_WakeUpSlap_ScorePlus1
    GoTo TrainerAI_Expert_WakeUpSlap_End

TrainerAI_Expert_WakeUpSlap_ScoreMinus1:
    AddToMoveScore -1
    GoTo TrainerAI_Expert_WakeUpSlap_End

TrainerAI_Expert_WakeUpSlap_ScorePlus1:
    AddToMoveScore 1

TrainerAI_Expert_WakeUpSlap_End:
    PopOrEnd 

TrainerAI_Expert_HammerArm:
    ; If the opponent resists or is immune to the move, score -1.
    ;
    ; If the attacker is slower than its opponent, score +1.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_Expert_HammerArm_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, TrainerAI_Expert_HammerArm_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, TrainerAI_Expert_HammerArm_ScoreMinus1
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_HammerArm_ScorePlus1
    GoTo TrainerAI_Expert_HammerArm_End

TrainerAI_Expert_HammerArm_ScoreMinus1:
    AddToMoveScore -1
    PopOrEnd 

TrainerAI_Expert_HammerArm_ScorePlus1:
    AddToMoveScore 1

TrainerAI_Expert_HammerArm_End:
    PopOrEnd 

TrainerAI_Expert_GyroBall:
    ; No score changes.
    PopOrEnd 

TrainerAI_Expert_Brine:
    ; If the opponent resists or is immune to the move, score -1.
    ;
    ; If the opponent's HP <= 50%, 50% chance of score +1, 50% chance of score +2.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_Expert_Brine_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, TrainerAI_Expert_Brine_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, TrainerAI_Expert_Brine_ScoreMinus1
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 50, TrainerAI_Expert_Brine_End
    AddToMoveScore 1
    IfRandomLessThan 128, TrainerAI_Expert_Brine_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_Brine_End

TrainerAI_Expert_Brine_ScoreMinus1:
    AddToMoveScore -1

TrainerAI_Expert_Brine_End:
    PopOrEnd 

TrainerAI_Expert_Feint:
    ; If the opponent does not know Protect, 75% chance of score +0.
    ;
    ; If the attacker is under any of the following conditions, 50% chance of additional score +1:
    ; - Toxic
    ; - Curse
    ; - Perish Song
    ; - Attract
    ; - Leech Seed
    ; - Yawn
    ;
    ; Otherwise, if the opponent is not at maximum HP and is holding Leftovers or Black Sludge, 50%
    ; chance of additional score +1.
    ;
    ; If the opponent's Protect chain is 0, 50% chance of score +1.
    ;
    ; If the opponent's Protect chain is 1, 25% chance of score +1.
    ;
    ; Otherwise, score -2.
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_PROTECT, TrainerAI_Expert_Feint_CheckConditions
    IfRandomLessThan 64, TrainerAI_Expert_Feint_CheckConditions
    GoTo TrainerAI_Expert_Feint_End

TrainerAI_Expert_Feint_CheckConditions:
    IfStatus AI_BATTLER_ATTACKER, MON_CONDITION_TOXIC, TrainerAI_Expert_Feint_TryScorePlus1
    IfVolatileStatus AI_BATTLER_ATTACKER, VOLATILE_CONDITION_CURSE, TrainerAI_Expert_Feint_TryScorePlus1
    IfMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_PERISH_SONG, TrainerAI_Expert_Feint_TryScorePlus1
    IfVolatileStatus AI_BATTLER_ATTACKER, VOLATILE_CONDITION_ATTRACT, TrainerAI_Expert_Feint_TryScorePlus1
    IfMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_LEECH_SEED, TrainerAI_Expert_Feint_TryScorePlus1
    IfMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_YAWN, TrainerAI_Expert_Feint_TryScorePlus1
    IfHPPercentEqualTo AI_BATTLER_DEFENDER, 100, TrainerAI_Expert_Feint_CheckProtectChain
    LoadHeldItemEffect AI_BATTLER_DEFENDER
    IfLoadedNotInTable TrainerAI_Expert_Feint_GradualRecoveryItems, TrainerAI_Expert_Feint_CheckProtectChain

TrainerAI_Expert_Feint_TryScorePlus1:
    IfRandomLessThan 128, TrainerAI_Expert_Feint_CheckProtectChain
    AddToMoveScore 1

TrainerAI_Expert_Feint_CheckProtectChain:
    LoadProtectChain AI_BATTLER_DEFENDER
    IfLoadedEqualTo 0, TrainerAI_Expert_Feint_NoProtectChain
    IfLoadedEqualTo 1, TrainerAI_Expert_Feint_ProtectChain1
    IfLoadedGreaterThan 2, TrainerAI_Expert_Feint_ProtectChain2OrMore

TrainerAI_Expert_Feint_NoProtectChain:
    IfRandomLessThan 128, TrainerAI_Expert_Feint_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_Feint_End

TrainerAI_Expert_Feint_ProtectChain1:
    IfRandomLessThan 192, TrainerAI_Expert_Feint_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_Feint_End

TrainerAI_Expert_Feint_ProtectChain2OrMore:
    AddToMoveScore -2

TrainerAI_Expert_Feint_End:
    PopOrEnd 

TrainerAI_Expert_Feint_GradualRecoveryItems:
    TableEntry HOLD_EFFECT_HP_RESTORE_GRADUAL
    TableEntry HOLD_EFFECT_HP_RESTORE_PSN_TYPE
    TableEntry TABLE_END

TrainerAI_Expert_Pluck:
    ; If the opponent resists or is immune to the move, score -1.
    ;
    ; If it is the attacker's first turn in battle, 75% chance of additional score +1.
    ;
    ; 50% chance of score +1.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_Expert_Pluck_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, TrainerAI_Expert_Pluck_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, TrainerAI_Expert_Pluck_ScoreMinus1
    LoadIsFirstTurnInBattle AI_BATTLER_ATTACKER
    IfLoadedEqualTo FALSE, TrainerAI_Expert_Pluck_TryScorePlus1
    IfRandomLessThan 64, TrainerAI_Expert_Pluck_TryScorePlus1
    AddToMoveScore 1

TrainerAI_Expert_Pluck_TryScorePlus1:
    IfRandomLessThan 128, TrainerAI_Expert_Pluck_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_Pluck_End

TrainerAI_Expert_Pluck_ScoreMinus1:
    AddToMoveScore -1

TrainerAI_Expert_Pluck_End:
    PopOrEnd 

TrainerAI_Expert_Tailwind:
    ; 25% chance of flat score +0.
    ;
    ; If the attacker is faster than its opponent, score -1.
    ;
    ; If the attacker's HP <= 30%, score -1.
    ;
    ; If the attacker's HP > 75%, score +1.
    ;
    ; Otherwise, 75% chance of score +1.
    IfRandomLessThan 64, TrainerAI_Expert_Tailwind_End
    IfSpeedCompareEqualTo COMPARE_SPEED_FASTER, TrainerAI_Expert_Tailwind_ScoreMinus1
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 31, TrainerAI_Expert_Tailwind_ScoreMinus1
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 75, TrainerAI_Expert_Tailwind_ScorePlus1
    IfRandomLessThan 64, TrainerAI_Expert_Tailwind_End

TrainerAI_Expert_Tailwind_ScorePlus1:
    AddToMoveScore 1
    GoTo TrainerAI_Expert_Tailwind_End

TrainerAI_Expert_Tailwind_ScoreMinus1:
    AddToMoveScore -1

TrainerAI_Expert_Tailwind_End:
    PopOrEnd 

TrainerAI_Expert_Acupressure:
    ; If the attacker's HP <= 50%, score -1.
    ;
    ; If the attacker's HP > 90%, 75% chance of score +1.
    ;
    ; Otherwise, 37.5% chance of score +1.
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 51, TrainerAI_Expert_Acupressure_ScoreMinus1
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 90, TrainerAI_Expert_Acupressure_TryScorePlus1
    IfRandomLessThan 128, TrainerAI_Expert_Acupressure_End

TrainerAI_Expert_Acupressure_TryScorePlus1:
    IfRandomLessThan 64, TrainerAI_Expert_Acupressure_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_Acupressure_End

TrainerAI_Expert_Acupressure_ScoreMinus1:
    AddToMoveScore -1

TrainerAI_Expert_Acupressure_End:
    PopOrEnd 

TrainerAI_Expert_MetalBurst:
    ; If the opponent is asleep, infatuated, or confused or they know any of the following move
    ; effects, score -1 and terminate:
    ; - Avalanche / Revenge
    ; - Focus Punch
    ; - Vital Throw
    ;
    ; If the attacker's HP <= 30%, 96% chance of additional score -1.
    ;
    ; If the attacker's HP <= 50%, 60.9% chance of additional score -1.
    ;
    ; If the attacker's HP > 50%, 25% chance of additional score +1.
    ;
    ; If the opponent's last-used move was not a Status move and they are not Taunted, 60.9% chance
    ; of additional score +1.
    ;
    ; If the opponent is not Taunted, 60.9% chance of score +1.
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_SLEEP, TrainerAI_Expert_MetalBurst_ScoreMinus1
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_ATTRACT, TrainerAI_Expert_MetalBurst_ScoreMinus1
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_CONFUSION, TrainerAI_Expert_MetalBurst_ScoreMinus1
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_DOUBLE_POWER_IF_HIT, TrainerAI_Expert_MetalBurst_ScoreMinus1
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_HIT_LAST_WHIFF_IF_HIT, TrainerAI_Expert_MetalBurst_ScoreMinus1
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_PRIORITY_NEG_1_BYPASS_ACCURACY, TrainerAI_Expert_MetalBurst_ScoreMinus1
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 30, TrainerAI_Expert_MetalBurst_MediumHPTryScoreMinus1
    IfRandomLessThan 10, TrainerAI_Expert_MetalBurst_MediumHPTryScoreMinus1
    AddToMoveScore -1

TrainerAI_Expert_MetalBurst_MediumHPTryScoreMinus1:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 50, TrainerAI_Expert_MetalBurst_HighHPTryScorePlus1
    IfRandomLessThan 100, TrainerAI_Expert_MetalBurst_HighHPTryScorePlus1
    AddToMoveScore -1

TrainerAI_Expert_MetalBurst_HighHPTryScorePlus1:
    IfRandomLessThan 192, TrainerAI_Expert_MetalBurst_CheckLastUsedMove
    AddToMoveScore 1

TrainerAI_Expert_MetalBurst_CheckLastUsedMove:
    LoadBattlerPreviousMove AI_BATTLER_DEFENDER
    LoadPowerOfLoadedMove 
    IfLoadedEqualTo 0, TrainerAI_Expert_MetalBurst_TryScorePlus1
    IfTargetIsNotTaunted TrainerAI_Expert_MetalBurst_TryScorePlus1
    IfRandomLessThan 100, TrainerAI_Expert_MetalBurst_TryScorePlus1
    AddToMoveScore 1

TrainerAI_Expert_MetalBurst_TryScorePlus1:
    IfTargetIsNotTaunted TrainerAI_Expert_MetalBurst_End
    IfRandomLessThan 100, TrainerAI_Expert_MetalBurst_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_MetalBurst_End

TrainerAI_Expert_MetalBurst_ScoreMinus1:
    AddToMoveScore -1

TrainerAI_Expert_MetalBurst_End:
    PopOrEnd 

TrainerAI_Expert_UTurn:
    ; If the opponent resists or is immune to the move, score -1 and terminate.
    ;
    ; If the attacker is the last living party member, score +2 and terminate.
    ;
    ; If the attacker has a super-effective move on its opponent, 75% chance of additional score -2.
    ;
    ; If no party member deals more damage than the attacker, 75% chance of score -2 and terminate.
    ;
    ; If the opponent's HP > 70%, 75% chance of additional score +1.
    ;
    ; If the opponent's HP > 30%, 50% chance of additional score +1. (Cumulative with the prior check)
    ;
    ; Otherwise, 25% chance of additional score +1.
    ;
    ; If the attacker is faster than its opponent, score +1. Otherwise, 50% chance of score +1.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_Expert_UTurn_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, TrainerAI_Expert_UTurn_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, TrainerAI_Expert_UTurn_ScoreMinus1
    CountAlivePartyBattlers AI_BATTLER_ATTACKER
    IfLoadedEqualTo 0, TrainerAI_Expert_UTurn_End
    IfHasSuperEffectiveMove TrainerAI_Expert_UTurn_TryScoreMinus2
    GoTo TrainerAI_Expert_UTurn_CheckPartyDamage

TrainerAI_Expert_UTurn_ScoreMinus1:
    AddToMoveScore -1
    GoTo TrainerAI_Expert_UTurn_End

TrainerAI_Expert_UTurn_TryScoreMinus2:
    IfRandomLessThan 64, TrainerAI_Expert_UTurn_CheckPartyDamage
    AddToMoveScore -2

TrainerAI_Expert_UTurn_CheckPartyDamage:
    IfPartyMemberDealsMoreDamage USE_MAX_DAMAGE, TrainerAI_Expert_UTurn_CheckTargetHP
    IfRandomLessThan 64, TrainerAI_Expert_UTurn_CheckTargetHP
    AddToMoveScore -2
    GoTo TrainerAI_Expert_UTurn_End

TrainerAI_Expert_UTurn_CheckTargetHP:
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 70, TrainerAI_Expert_UTurn_75PercentScorePlus1
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 30, TrainerAI_Expert_UTurn_50PercentScorePlus1
    IfRandomLessThan 128, TrainerAI_Expert_UTurn_CheckSpeed
    GoTo TrainerAI_Expert_UTurn_50PercentScorePlus1

TrainerAI_Expert_UTurn_75PercentScorePlus1:
    IfRandomLessThan 64, TrainerAI_Expert_UTurn_50PercentScorePlus1
    AddToMoveScore 1

TrainerAI_Expert_UTurn_50PercentScorePlus1:
    IfRandomLessThan 128, TrainerAI_Expert_UTurn_CheckSpeed
    AddToMoveScore 1

TrainerAI_Expert_UTurn_CheckSpeed:
    IfSpeedCompareEqualTo COMPARE_SPEED_FASTER, TrainerAI_Expert_UTurn_ScorePlus1
    IfRandomLessThan 128, TrainerAI_Expert_UTurn_End

TrainerAI_Expert_UTurn_ScorePlus1:
    AddToMoveScore 1

TrainerAI_Expert_UTurn_End:
    PopOrEnd 

TrainerAI_Expert_CloseCombat:
    ; If the opponent resists or is immune to the move, score -1.
    ;
    ; If the attacker is slower than its opponent and its HP <= 80%, score -1.
    ;
    ; If the attacker is faster than its opponent and its HP <= 60%, score -1.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_Expert_CloseCombat_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, TrainerAI_Expert_CloseCombat_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, TrainerAI_Expert_CloseCombat_ScoreMinus1
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_CloseCombat_SlowerCheckHP
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 60, TrainerAI_Expert_CloseCombat_End
    GoTo TrainerAI_Expert_CloseCombat_ScoreMinus1

TrainerAI_Expert_CloseCombat_SlowerCheckHP:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 80, TrainerAI_Expert_CloseCombat_End

TrainerAI_Expert_CloseCombat_ScoreMinus1:
    AddToMoveScore -1

TrainerAI_Expert_CloseCombat_End:
    PopOrEnd 

TrainerAI_Expert_Payback:
    ; If the opponent resists or is immune to the move, score -1.
    ;
    ; If the attacker is slower than its opponent and the attacker's HP >= 30%, 75% chance of
    ; score +1.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_Expert_Payback_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, TrainerAI_Expert_Payback_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, TrainerAI_Expert_Payback_ScoreMinus1
    IfSpeedCompareEqualTo COMPARE_SPEED_FASTER, TrainerAI_Expert_Payback_End
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 30, TrainerAI_Expert_Payback_End
    IfRandomLessThan 64, TrainerAI_Expert_Payback_End
    AddToMoveScore 1
    PopOrEnd 

TrainerAI_Expert_Payback_ScoreMinus1:
    AddToMoveScore -1

TrainerAI_Expert_Payback_End:
    PopOrEnd 

TrainerAI_Expert_Assurance:
    ; If the opponent resists or is immune to the move, score -1.
    ;
    ; If the attacker is slower than its opponent:
    ; - If the attacker's ability is Rough Skin, 50% chance of score +1.
    ; - If the attacker is holding a Jaboca Berry or Rowap Berry, 50% chance of score +1.
    ; - Otherwise, 25% chance of score +1.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_Expert_Assurance_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, TrainerAI_Expert_Assurance_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, TrainerAI_Expert_Assurance_ScoreMinus1
    IfSpeedCompareEqualTo COMPARE_SPEED_FASTER, TrainerAI_Expert_Assurance_End
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_ROUGH_SKIN, TrainerAI_Expert_Assurance_TryScorePlus1
    LoadHeldItemEffect AI_BATTLER_ATTACKER
    IfLoadedInTable TrainerAI_Expert_Assurance_RecoilBerries, TrainerAI_Expert_Assurance_TryScorePlus1
    IfRandomLessThan 128, TrainerAI_Expert_Assurance_TryScorePlus1
    GoTo TrainerAI_Expert_Assurance_End

TrainerAI_Expert_Assurance_ScoreMinus1:
    AddToMoveScore -1
    GoTo TrainerAI_Expert_Assurance_End

TrainerAI_Expert_Assurance_TryScorePlus1:
    IfRandomLessThan 128, TrainerAI_Expert_Assurance_End
    AddToMoveScore 1

TrainerAI_Expert_Assurance_End:
    PopOrEnd 

TrainerAI_Expert_Assurance_RecoilBerries:
    TableEntry ITEM_JABOCA_BERRY
    TableEntry ITEM_ROWAP_BERRY
    TableEntry TABLE_END

TrainerAI_Expert_Embargo:
    ; 50% chance of score +1.
    IfRandomLessThan 128, TrainerAI_Expert_Embargo_End
    AddToMoveScore 1

TrainerAI_Expert_Embargo_End:
    PopOrEnd 

TrainerAI_Expert_Fling:
    ; If the opponent resists or is immune to the move and the attacker is holding an item other than
    ; any of the following, score -1:
    ; - King's Rock
    ; - Razor Fang
    ; - Poison Barb
    ; - Toxic Orb
    ; - Flame Orb
    ; - Light Ball
    ;
    ; If the attacker's item would grant Fling < 30 base power, score -2.
    ;
    ; If the attacker's item would grant Fling > 90 base power, 75% chance of score +1, and:
    ; - If the opponent is weak to the move, additional score +4.
    ; - Otherwise, 50% chance of additional score +1.
    ;
    ; If the attacker's item would grant Fling > 60 base power, 75% chance of score +1.
    ;
    ; Otherwise, 50% chance of score -1.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_Expert_Fling_CheckAttackerItem
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, TrainerAI_Expert_Fling_CheckAttackerItem
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, TrainerAI_Expert_Fling_CheckAttackerItem
    LoadFlingPower AI_BATTLER_ATTACKER
    IfLoadedLessThan 30, TrainerAI_Expert_Fling_ScoreMinus2
    IfLoadedGreaterThan 90, TrainerAI_Expert_Fling_CheckWeakness
    IfLoadedGreaterThan 60, TrainerAI_Expert_Fling_TryScorePlus1
    IfRandomLessThan 128, TrainerAI_Expert_Fling_End
    AddToMoveScore -1
    GoTo TrainerAI_Expert_Fling_End

TrainerAI_Expert_Fling_ScoreMinus2:
    AddToMoveScore -2
    GoTo TrainerAI_Expert_Fling_End

TrainerAI_Expert_Fling_CheckWeakness:
    IfMoveEffectivenessEquals TYPE_MULTI_DOUBLE_DAMAGE, TrainerAI_Expert_Fling_ScorePlus4
    IfMoveEffectivenessEquals TYPE_MULTI_QUADRUPLE_DAMAGE, TrainerAI_Expert_Fling_ScorePlus4
    IfRandomLessThan 128, TrainerAI_Expert_Fling_TryScorePlus1
    AddToMoveScore 1
    GoTo TrainerAI_Expert_Fling_TryScorePlus1

TrainerAI_Expert_Fling_ScorePlus4:
    AddToMoveScore 4

TrainerAI_Expert_Fling_TryScorePlus1:
    IfRandomLessThan 64, TrainerAI_Expert_Fling_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_Fling_End

TrainerAI_Expert_Fling_CheckAttackerItem:
    LoadHeldItemEffect AI_BATTLER_ATTACKER
    IfLoadedInTable TrainerAI_Expert_Fling_DesirableFlingEffects, TrainerAI_Expert_Fling_End
    AddToMoveScore -1

TrainerAI_Expert_Fling_End:
    PopOrEnd 

TrainerAI_Expert_Fling_DesirableFlingEffects:
    TableEntry HOLD_EFFECT_SOMETIMES_FLINCH
    TableEntry HOLD_EFFECT_STRENGTHEN_POISON
    TableEntry HOLD_EFFECT_PSN_USER
    TableEntry HOLD_EFFECT_BRN_USER
    TableEntry HOLD_EFFECT_PIKA_SPATK_UP
    TableEntry TABLE_END

TrainerAI_Expert_PsychoShift:
    ; If the attacker does not have any status condition, score -10.
    ;
    ; If the opponent's HP >= 30%, 50% chance of score +1.
    IfNotStatus AI_BATTLER_ATTACKER, MON_CONDITION_ANY, TrainerAI_ScoreMinus10
    IfRandomLessThan 128, TrainerAI_Expert_PsychoShift_End
    IfHPPercentLessThan AI_BATTLER_DEFENDER, 30, TrainerAI_Expert_PsychoShift_End
    AddToMoveScore 1

TrainerAI_Expert_PsychoShift_End:
    PopOrEnd 

TrainerAI_Expert_TrumpCard:
    ; If the opponent resists or is immune to the move, score -1.
    ;
    ; If the move has 1 PP remaining, score +3.
    ;
    ; If the move has 2 PP remaining, 60.9% chance of score +2, 39.1% chance of score +1.
    ;
    ; If the move has 3 PP remaining, 60.9% chance of score +1.
    ;
    ; If the opponent's ability is Pressure, 88.3% chance of additional score +1.
    ;
    ; If the opponent's Evasion stat stage is +5 or higher or the attacker's Accuracy stat stage is
    ; -5 or lower, 60.9% chance of score +2, 39.1% chance of score +1.
    ;
    ; If the opponent's Evasion stat stage is +3 or higher or the attacker's Accuracy stat stage is
    ; -3 or lower, 60.9% chance of score +1.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_Expert_TrumpCard_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, TrainerAI_Expert_TrumpCard_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, TrainerAI_Expert_TrumpCard_ScoreMinus1
    LoadCurrentMovePP 
    IfLoadedEqualTo 1, TrainerAI_Expert_TrumpCard_ScorePlus3
    IfLoadedEqualTo 2, TrainerAI_Expert_TrumpCard_ScorePlus1Maybe2
    IfLoadedEqualTo 3, TrainerAI_Expert_TrumpCard_ScorePlus1
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedNotEqualTo ABILITY_PRESSURE, TrainerAI_Expert_TrumpCard_CheckStats
    IfRandomLessThan 30, TrainerAI_Expert_TrumpCard_CheckStats
    AddToMoveScore 1

TrainerAI_Expert_TrumpCard_CheckStats:
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 10, TrainerAI_Expert_TrumpCard_ScorePlus1Maybe2
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_ACCURACY, 2, TrainerAI_Expert_TrumpCard_ScorePlus1Maybe2
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 8, TrainerAI_Expert_TrumpCard_ScorePlus1
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_ACCURACY, 4, TrainerAI_Expert_TrumpCard_ScorePlus1
    GoTo TrainerAI_Expert_TrumpCard_End

TrainerAI_Expert_TrumpCard_ScorePlus1Maybe2:
    AddToMoveScore 1

TrainerAI_Expert_TrumpCard_ScorePlus1:
    IfRandomLessThan 100, TrainerAI_Expert_TrumpCard_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_TrumpCard_End

TrainerAI_Expert_TrumpCard_ScorePlus3:
    AddToMoveScore 3
    GoTo TrainerAI_Expert_TrumpCard_End

TrainerAI_Expert_TrumpCard_ScoreMinus1:
    AddToMoveScore -1

TrainerAI_Expert_TrumpCard_End:
    PopOrEnd 

TrainerAI_Expert_HealBlock:
    ; If the opponent knows a move with any of the following effects, 90.2% chance of score +1:
    ; - Dream Eater
    ; - Restore half HP
    ; - Roost
    ; - Sun-boosted recovery
    ; - Rest
    ; - Swallow
    ; - Draining moves
    ; - Ingrain
    ; - Aqua Ring
    ; - Leech Seed
    ; - Lunar Dance, Healing Wish
    ;
    ; If the attacker is under the effect of Leech Seed or the opponent is under the effect of Ingrain
    ; or Aqua Ring, 90.2% chance of score +1.
    ;
    ; Otherwise, 56.4% chance of score +1.
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_RECOVER_DAMAGE_SLEEP, TrainerAI_Expert_HealBlock_TryScorePlus1
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_RESTORE_HALF_HP, TrainerAI_Expert_HealBlock_TryScorePlus1
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_HEAL_HALF_REMOVE_FLYING_TYPE, TrainerAI_Expert_HealBlock_TryScorePlus1
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_UNUSED_157, TrainerAI_Expert_HealBlock_TryScorePlus1
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_HEAL_HALF_MORE_IN_SUN, TrainerAI_Expert_HealBlock_TryScorePlus1
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_REST, TrainerAI_Expert_HealBlock_TryScorePlus1
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_SWALLOW, TrainerAI_Expert_HealBlock_TryScorePlus1
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_RECOVER_HALF_DAMAGE_DEALT, TrainerAI_Expert_HealBlock_TryScorePlus1
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_GROUND_TRAP_USER_CONTINUOUS_HEAL, TrainerAI_Expert_HealBlock_TryScorePlus1
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_RESTORE_HP_EVERY_TURN, TrainerAI_Expert_HealBlock_TryScorePlus1
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_STATUS_LEECH_SEED, TrainerAI_Expert_HealBlock_TryScorePlus1
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_FAINT_AND_FULL_HEAL_NEXT_MON, TrainerAI_Expert_HealBlock_TryScorePlus1
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_FAINT_FULL_RESTORE_NEXT_MON, TrainerAI_Expert_HealBlock_TryScorePlus1
    IfMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_LEECH_SEED, TrainerAI_Expert_HealBlock_TryScorePlus1
    IfMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_AQUA_RING, TrainerAI_Expert_HealBlock_TryScorePlus1
    IfMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_INGRAIN, TrainerAI_Expert_HealBlock_TryScorePlus1
    IfRandomLessThan 96, TrainerAI_Expert_HealBlock_TryScorePlus1
    GoTo TrainerAI_Expert_HealBlock_End

TrainerAI_Expert_HealBlock_TryScorePlus1:
    IfRandomLessThan 25, TrainerAI_Expert_HealBlock_End
    AddToMoveScore 1

TrainerAI_Expert_HealBlock_End:
    PopOrEnd 

TrainerAI_Expert_WringOut:
    ; If the opponent resists or is immune to the move, score -1.
    ;
    ; If the opponent's HP < 50%, score -1.
    ;
    ; If the opponent is at full HP:
    ; - Start with 90.2% chance of score +1.
    ; - If the attacker is faster than its opponent, additional score +2.
    ; - If the attacker is slower than its opponent, additional score +1.
    ;
    ; If the opponent's HP > 85%, 90.2% chance of score +1.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_Expert_WringOut_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, TrainerAI_Expert_WringOut_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, TrainerAI_Expert_WringOut_ScoreMinus1
    IfHPPercentLessThan AI_BATTLER_DEFENDER, 50, TrainerAI_Expert_WringOut_ScoreMinus1
    IfHPPercentEqualTo AI_BATTLER_DEFENDER, 100, TrainerAI_Expert_WringOut_CheckSpeed
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 85, TrainerAI_Expert_WringOut_TryScorePlus1
    GoTo TrainerAI_Expert_WringOut_End

TrainerAI_Expert_WringOut_CheckSpeed:
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_WringOut_ScorePlus1
    AddToMoveScore 1

TrainerAI_Expert_WringOut_ScorePlus1:
    AddToMoveScore 1

TrainerAI_Expert_WringOut_TryScorePlus1:
    IfRandomLessThan 25, TrainerAI_Expert_WringOut_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_WringOut_End

TrainerAI_Expert_WringOut_ScoreMinus1:
    AddToMoveScore -1

TrainerAI_Expert_WringOut_End:
    PopOrEnd 

TrainerAI_Expert_PowerTrick:
    ; If the attacker's HP > 90%, 62.5% chance of score +1.
    ;
    ; If the attacker's HP > 60%, 50% chance of score +1.
    ;
    ; If the attacker's HP > 30%, 35.9% chance of score +1.
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 90, TrainerAI_Expert_PowerTrick_LikelyScorePlus1
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 60, TrainerAI_Expert_PowerTrick_CoinFlipScorePlus1
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 30, TrainerAI_Expert_PowerTrick_UnlikelyScorePlus1
    GoTo TrainerAI_ScoreMinus2

TrainerAI_Expert_PowerTrick_LikelyScorePlus1:
    IfRandomLessThan 96, TrainerAI_Expert_PowerTrick_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_PowerTrick_End

TrainerAI_Expert_PowerTrick_CoinFlipScorePlus1:
    IfRandomLessThan 128, TrainerAI_Expert_PowerTrick_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_PowerTrick_End

TrainerAI_Expert_PowerTrick_UnlikelyScorePlus1:
    IfRandomLessThan 164, TrainerAI_Expert_PowerTrick_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_PowerTrick_End

TrainerAI_Expert_PowerTrick_End:
    PopOrEnd 

TrainerAI_Expert_GastroAcid:
    ; 25% chance of score +0 and terminate.
    ;
    ; If the opponent's HP > 70%, score +1.
    ;
    ; If the opponent's HP <= 70%, 50% chance of score +0, 50% chance of score -1.
    ;
    ; If the opponent's HP <= 50%, 50% chance of score -1, 50% chance of score -2.
    ;
    ; If the opponent's HP <= 30%, 50% chance of score -2, 50% chance of score -3.
    IfRandomLessThan 64, TrainerAI_Expert_GastroAcid_End
    AddToMoveScore 1
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 70, TrainerAI_Expert_GastroAcid_End
    IfRandomLessThan 128, TrainerAI_Expert_GastroAcid_ContinueHPCheck
    AddToMoveScore -1

TrainerAI_Expert_GastroAcid_ContinueHPCheck:
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 50, TrainerAI_Expert_GastroAcid_End
    AddToMoveScore -1
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 30, TrainerAI_Expert_GastroAcid_End
    AddToMoveScore -1

TrainerAI_Expert_GastroAcid_End:
    PopOrEnd 

TrainerAI_Expert_LuckyChant:
    ; If the attacker's HP < 70%, score -1.
    ;
    ; If the opponent knows a move with a high critical-hit ratio, score +1.
    ;
    ; Otherwise, 25% chance of score +1.
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 70, TrainerAI_Expert_LuckyChant_ScoreMinus1
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_HIGH_CRITICAL, TrainerAI_Expert_LuckyChant_ScorePlus1
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_HIGH_CRITICAL_BURN_HIT, TrainerAI_Expert_LuckyChant_ScorePlus1
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_HIGH_CRITICAL_POISON_HIT, TrainerAI_Expert_LuckyChant_ScorePlus1
    IfRandomLessThan 64, TrainerAI_Expert_LuckyChant_ScorePlus1
    GoTo TrainerAI_Expert_LuckyChant_End

TrainerAI_Expert_LuckyChant_ScorePlus1:
    AddToMoveScore 1
    GoTo TrainerAI_Expert_LuckyChant_End

TrainerAI_Expert_LuckyChant_ScoreMinus1:
    AddToMoveScore -1

TrainerAI_Expert_LuckyChant_End:
    PopOrEnd 

TrainerAI_Expert_MeFirst:
    ; If the attacker is slower than its opponent, score -2.
    ;
    ; If the attacker deals more damage than its opponent, 87.5% chance of additional score +1.
    ;
    ; If the opponent's last-used move was a Damaging move, 50% chance of additional score +1.
    ;
    ; 75% chance of score +1.
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_MeFirst_ScoreMinus2
    IfBattlerDealsMoreDamage AI_BATTLER_DEFENDER, USE_MAX_DAMAGE, TrainerAI_Expert_MeFirst_TryScorePlus1
    GoTo TrainerAI_Expert_MeFirst_CheckLastUsedMove

TrainerAI_Expert_MeFirst_TryScorePlus1:
    IfRandomLessThan 32, TrainerAI_Expert_MeFirst_CheckLastUsedMove
    AddToMoveScore 1

TrainerAI_Expert_MeFirst_CheckLastUsedMove:
    LoadDefenderLastUsedMoveClass 
    IfLoadedEqualTo CLASS_STATUS, TrainerAI_Expert_MeFirst_TryScorePlus1AndEnd
    IfRandomLessThan 128, TrainerAI_Expert_MeFirst_End
    AddToMoveScore 1

TrainerAI_Expert_MeFirst_TryScorePlus1AndEnd:
    IfRandomLessThan 64, TrainerAI_Expert_MeFirst_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_MeFirst_End

TrainerAI_Expert_MeFirst_ScoreMinus2:
    AddToMoveScore -2

TrainerAI_Expert_MeFirst_End:
    PopOrEnd 

TrainerAI_Expert_Copycat:
    ; If the attacker is slower than its opponent, deals less damage than its opponent, and the
    ; opponent's last-used move is not an encouraged move, 68.75% chance of score -1.
    ;
    ; If the attacker is faster than its opponent:
    ; - If the attacker deals more damage than its opponent, 87.5% chance of score +2.
    ; - If the opponent's last-used move is an encouraged move, 50% chance of score +2.
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_Copycat_CheckMoveEncouraged
    IfBattlerDealsMoreDamage AI_BATTLER_DEFENDER, USE_MAX_DAMAGE, TrainerAI_Expert_Copycat_TryScorePlus2
    LoadBattlerPreviousMove AI_BATTLER_DEFENDER
    IfLoadedNotInTable TrainerAI_Expert_Copycat_EncouragedMoves, TrainerAI_Expert_Copycat_CheckMoveEncouraged
    IfRandomLessThan 128, TrainerAI_Expert_Copycat_End
    AddToMoveScore 2
    GoTo TrainerAI_Expert_Copycat_End

TrainerAI_Expert_Copycat_TryScorePlus2:
    IfRandomLessThan 32, TrainerAI_Expert_Copycat_End
    AddToMoveScore 2
    GoTo TrainerAI_Expert_Copycat_End

TrainerAI_Expert_Copycat_CheckMoveEncouraged:
    IfBattlerDealsMoreDamage AI_BATTLER_DEFENDER, USE_MAX_DAMAGE, TrainerAI_Expert_Copycat_End
    LoadBattlerPreviousMove AI_BATTLER_DEFENDER
    IfLoadedInTable TrainerAI_Expert_Copycat_EncouragedMoves, TrainerAI_Expert_Copycat_End
    IfRandomLessThan 80, TrainerAI_Expert_Copycat_End
    AddToMoveScore -1

TrainerAI_Expert_Copycat_End:
    PopOrEnd 

TrainerAI_Expert_Copycat_EncouragedMoves:
    TableEntry MOVE_SLEEP_POWDER
    TableEntry MOVE_LOVELY_KISS
    TableEntry MOVE_SPORE
    TableEntry MOVE_HYPNOSIS
    TableEntry MOVE_SING
    TableEntry MOVE_GRASS_WHISTLE
    TableEntry MOVE_SHADOW_PUNCH
    TableEntry MOVE_SAND_ATTACK
    TableEntry MOVE_SMOKE_SCREEN
    TableEntry MOVE_TOXIC
    TableEntry MOVE_GUILLOTINE
    TableEntry MOVE_HORN_DRILL
    TableEntry MOVE_FISSURE
    TableEntry MOVE_SHEER_COLD
    TableEntry MOVE_CROSS_CHOP
    TableEntry MOVE_AEROBLAST
    TableEntry MOVE_CONFUSE_RAY
    TableEntry MOVE_SWEET_KISS
    TableEntry MOVE_SCREECH
    TableEntry MOVE_COTTON_SPORE
    TableEntry MOVE_SCARY_FACE
    TableEntry MOVE_FAKE_TEARS
    TableEntry MOVE_METAL_SOUND
    TableEntry MOVE_THUNDER_WAVE
    TableEntry MOVE_GLARE
    TableEntry MOVE_POISON_POWDER
    TableEntry MOVE_SHADOW_BALL
    TableEntry MOVE_DYNAMIC_PUNCH
    TableEntry MOVE_HYPER_BEAM
    TableEntry MOVE_EXTREME_SPEED
    TableEntry MOVE_THIEF
    TableEntry MOVE_COVET
    TableEntry MOVE_ATTRACT
    TableEntry MOVE_SWAGGER
    TableEntry MOVE_TORMENT
    TableEntry MOVE_FLATTER
    TableEntry MOVE_TRICK
    TableEntry MOVE_SUPERPOWER
    TableEntry MOVE_SKILL_SWAP
    TableEntry MOVE_PSYCHO_SHIFT
    TableEntry MOVE_POWER_SWAP
    TableEntry MOVE_GUARD_SWAP
    TableEntry MOVE_SUCKER_PUNCH
    TableEntry MOVE_HEART_SWAP
    TableEntry MOVE_SWITCHEROO
    TableEntry MOVE_CAPTIVATE
    TableEntry MOVE_DARK_VOID
    TableEntry TABLE_END

TrainerAI_Expert_PowerSwap:
    ; Find the difference in stat stages between the attacker and its opponent for the Attack stat.
    ;
    ; If the difference is > 3:
    ; - If the difference in SpAttack stages > 3:
    ;   - 50% chance of score +5.
    ;   - 25% chance of score +4.
    ;   - 12.5% chance of score +3.
    ;   - 6.25% chance of score +2.
    ;   - 3.125% chance of score +1.
    ;   - 3.125% chance of score +0.
    ; - If the difference in SpAttack stages > 1:
    ;   - 50% chance of score +4.
    ;   - 25% chance of score +3.
    ;   - 12.5% chance of score +2.
    ;   - 6.25% chance of score +1.
    ;   - 6.25% chance of score +0.
    ; - If the difference in SpAttack stages = 0:
    ;   - 50% chance of score +3.
    ;   - 25% chance of score +2.
    ;   - 12.5% chance of score +1.
    ;   - 12.5% chance of score +0.
    ; - Otherwise, no score change.
    ;
    ; If the difference is > 1:
    ; - If the difference in SpAttack stages > 3:
    ;   - 50% chance of score +4.
    ;   - 25% chance of score +3.
    ;   - 12.5% chance of score +2.
    ;   - 6.25% chance of score +1.
    ;   - 6.25% chance of score +0.
    ; - If the difference in SpAttack stages > 1:
    ;   - 50% chance of score +3.
    ;   - 25% chance of score +2.
    ;   - 12.5% chance of score +1.
    ;   - 12.5% chance of score +0.
    ; - If the difference in SpAttack stages = 0:
    ;   - 50% chance of score +2.
    ;   - 25% chance of score +1.
    ;   - 25% chance of score +0.
    ; - Otherwise, no score change.
    ;
    ; If the difference is > 0:
    ; - If the difference in SpAttack stages > 3:
    ;   - 50% chance of score +3.
    ;   - 25% chance of score +2.
    ;   - 12.5% chance of score +1.
    ;   - 12.5% chance of score +0.
    ; - If the difference in SpAttack stages > 1:
    ;   - 50% chance of score +2.
    ;   - 25% chance of score +1.
    ;   - 25% chance of score +0.
    ; - If the difference in SpAttack stages = 0:
    ;   - 50% chance of score +1.
    ;   - 50% chance of score +0.
    ; - Otherwise, no score change.
    ;
    ; If the difference = 0:
    ; - If the difference in SpAttack stages > 3:
    ;   - 50% chance of score +3.
    ;   - 25% chance of score +2.
    ;   - 12.5% chance of score +1.
    ;   - 12.5% chance of score +0.
    ; - If the difference in SpAttack stages > 1:
    ;   - 50% chance of score +2.
    ;   - 25% chance of score +1.
    ;   - 25% chance of score +0.
    ; - If the difference in SpAttack stages > 0:
    ;   - 50% chance of score +1.
    ;   - 50% chance of score +0.
    ; - Otherwise, no score change.
    DiffStatStages AI_BATTLER_DEFENDER, BATTLE_STAT_ATTACK
    IfLoadedGreaterThan 3, TrainerAI_Expert_PowerSwap_CheckSpAttack_HighDiff
    IfLoadedGreaterThan 1, TrainerAI_Expert_PowerSwap_CheckSpAttack_MediumDiff
    IfLoadedGreaterThan 0, TrainerAI_Expert_PowerSwap_CheckSpAttack_LowDiff
    IfLoadedEqualTo 0, TrainerAI_Expert_PowerSwap_CheckSpAttack_NoDiff
    GoTo TrainerAI_Expert_PowerSwap_CheckSpAttack_End

TrainerAI_Expert_PowerSwap_CheckSpAttack_HighDiff:
    DiffStatStages AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK
    IfLoadedGreaterThan 3, TrainerAI_Expert_PowerSwap_TryScorePlus5
    IfLoadedGreaterThan 1, TrainerAI_Expert_PowerSwap_TryScorePlus4
    IfLoadedEqualTo 0, TrainerAI_Expert_PowerSwap_TryScorePlus3
    GoTo TrainerAI_Expert_PowerSwap_CheckSpAttack_End

TrainerAI_Expert_PowerSwap_CheckSpAttack_MediumDiff:
    DiffStatStages AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK
    IfLoadedGreaterThan 3, TrainerAI_Expert_PowerSwap_TryScorePlus4
    IfLoadedGreaterThan 1, TrainerAI_Expert_PowerSwap_TryScorePlus3
    IfLoadedEqualTo 0, TrainerAI_Expert_PowerSwap_TryScorePlus2
    GoTo TrainerAI_Expert_PowerSwap_CheckSpAttack_End

TrainerAI_Expert_PowerSwap_CheckSpAttack_LowDiff:
    DiffStatStages AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK
    IfLoadedGreaterThan 3, TrainerAI_Expert_PowerSwap_TryScorePlus3
    IfLoadedGreaterThan 1, TrainerAI_Expert_PowerSwap_TryScorePlus2
    IfLoadedEqualTo 0, TrainerAI_Expert_PowerSwap_TryScorePlus1
    GoTo TrainerAI_Expert_PowerSwap_CheckSpAttack_End

TrainerAI_Expert_PowerSwap_CheckSpAttack_NoDiff:
    DiffStatStages AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK
    IfLoadedGreaterThan 3, TrainerAI_Expert_PowerSwap_TryScorePlus3
    IfLoadedGreaterThan 1, TrainerAI_Expert_PowerSwap_TryScorePlus2
    IfLoadedGreaterThan 0, TrainerAI_Expert_PowerSwap_TryScorePlus1
    GoTo TrainerAI_Expert_PowerSwap_CheckSpAttack_End

TrainerAI_Expert_PowerSwap_TryScorePlus5:
    IfRandomLessThan 128, TrainerAI_Expert_PowerSwap_TryScorePlus4
    AddToMoveScore 5
    GoTo TrainerAI_Expert_PowerSwap_CheckSpAttack_End

TrainerAI_Expert_PowerSwap_TryScorePlus4:
    IfRandomLessThan 128, TrainerAI_Expert_PowerSwap_TryScorePlus3
    AddToMoveScore 4
    GoTo TrainerAI_Expert_PowerSwap_CheckSpAttack_End

TrainerAI_Expert_PowerSwap_TryScorePlus3:
    IfRandomLessThan 128, TrainerAI_Expert_PowerSwap_TryScorePlus2
    AddToMoveScore 3
    GoTo TrainerAI_Expert_PowerSwap_CheckSpAttack_End

TrainerAI_Expert_PowerSwap_TryScorePlus2:
    IfRandomLessThan 128, TrainerAI_Expert_PowerSwap_TryScorePlus1
    AddToMoveScore 2
    GoTo TrainerAI_Expert_PowerSwap_CheckSpAttack_End

TrainerAI_Expert_PowerSwap_TryScorePlus1:
    IfRandomLessThan 128, TrainerAI_Expert_PowerSwap_CheckSpAttack_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_PowerSwap_CheckSpAttack_End

TrainerAI_Expert_PowerSwap_CheckSpAttack_End:
    PopOrEnd 

TrainerAI_Expert_GuardSwap:
    ; Find the difference in stat stages between the attacker and its opponent for the Defense stat.
    ;
    ; If the difference is > 3:
    ; - If the difference in SpDefense stages > 3:
    ;   - 50% chance of score +5.
    ;   - 25% chance of score +4.
    ;   - 12.5% chance of score +3.
    ;   - 6.25% chance of score +2.
    ;   - 3.125% chance of score +1.
    ;   - 3.125% chance of score +0.
    ; - If the difference in SpDefense stages > 1:
    ;   - 50% chance of score +4.
    ;   - 25% chance of score +3.
    ;   - 12.5% chance of score +2.
    ;   - 6.25% chance of score +1.
    ;   - 6.25% chance of score +0.
    ; - If the difference in SpDefense stages = 0:
    ;   - 50% chance of score +3.
    ;   - 25% chance of score +2.
    ;   - 12.5% chance of score +1.
    ;   - 12.5% chance of score +0.
    ; - Otherwise, no score change.
    ;
    ; If the difference is > 1:
    ; - If the difference in SpDefense stages > 3:
    ;   - 50% chance of score +4.
    ;   - 25% chance of score +3.
    ;   - 12.5% chance of score +2.
    ;   - 6.25% chance of score +1.
    ;   - 6.25% chance of score +0.
    ; - If the difference in SpDefense stages > 1:
    ;   - 50% chance of score +3.
    ;   - 25% chance of score +2.
    ;   - 12.5% chance of score +1.
    ;   - 12.5% chance of score +0.
    ; - If the difference in SpDefense stages = 0:
    ;   - 50% chance of score +2.
    ;   - 25% chance of score +1.
    ;   - 25% chance of score +0.
    ; - Otherwise, no score change.
    ;
    ; If the difference is > 0:
    ; - If the difference in SpDefense stages > 3:
    ;   - 50% chance of score +3.
    ;   - 25% chance of score +2.
    ;   - 12.5% chance of score +1.
    ;   - 12.5% chance of score +0.
    ; - If the difference in SpDefense stages > 1:
    ;   - 50% chance of score +2.
    ;   - 25% chance of score +1.
    ;   - 25% chance of score +0.
    ; - If the difference in SpDefense stages = 0:
    ;   - 50% chance of score +1.
    ;   - 50% chance of score +0.
    ; - Otherwise, no score change.
    ;
    ; If the difference = 0:
    ; - If the difference in SpDefense stages > 3:
    ;   - 50% chance of score +3.
    ;   - 25% chance of score +2.
    ;   - 12.5% chance of score +1.
    ;   - 12.5% chance of score +0.
    ; - If the difference in SpDefense stages > 1:
    ;   - 50% chance of score +2.
    ;   - 25% chance of score +1.
    ;   - 25% chance of score +0.
    ; - If the difference in SpDefense stages > 0:
    ;   - 50% chance of score +1.
    ;   - 50% chance of score +0.
    ; - Otherwise, no score change.
    DiffStatStages AI_BATTLER_DEFENDER, BATTLE_STAT_DEFENSE
    IfLoadedGreaterThan 3, TrainerAI_Expert_GuardSwap_CheckSpDefense_HighDiff
    IfLoadedGreaterThan 1, TrainerAI_Expert_GuardSwap_CheckSpDefense_MediumDiff
    IfLoadedGreaterThan 0, TrainerAI_Expert_GuardSwap_CheckSpDefense_LowDiff
    IfLoadedEqualTo 0, TrainerAI_Expert_GuardSwap_CheckSpDefense_NoDiff
    GoTo TrainerAI_Expert_GuardSwap_End

TrainerAI_Expert_GuardSwap_CheckSpDefense_HighDiff:
    DiffStatStages AI_BATTLER_DEFENDER, BATTLE_STAT_SP_DEFENSE
    IfLoadedGreaterThan 3, TrainerAI_Expert_GuardSwap_TryScorePlus5
    IfLoadedGreaterThan 1, TrainerAI_Expert_GuardSwap_TryScorePlus4
    IfLoadedEqualTo 0, TrainerAI_Expert_GuardSwap_TryScorePlus3
    GoTo TrainerAI_Expert_GuardSwap_End

TrainerAI_Expert_GuardSwap_CheckSpDefense_MediumDiff:
    DiffStatStages AI_BATTLER_DEFENDER, BATTLE_STAT_SP_DEFENSE
    IfLoadedGreaterThan 3, TrainerAI_Expert_GuardSwap_TryScorePlus4
    IfLoadedGreaterThan 1, TrainerAI_Expert_GuardSwap_TryScorePlus3
    IfLoadedEqualTo 0, TrainerAI_Expert_GuardSwap_TryScorePlus2
    GoTo TrainerAI_Expert_GuardSwap_End

TrainerAI_Expert_GuardSwap_CheckSpDefense_LowDiff:
    DiffStatStages AI_BATTLER_DEFENDER, BATTLE_STAT_SP_DEFENSE
    IfLoadedGreaterThan 3, TrainerAI_Expert_GuardSwap_TryScorePlus3
    IfLoadedGreaterThan 1, TrainerAI_Expert_GuardSwap_TryScorePlus2
    IfLoadedEqualTo 0, TrainerAI_Expert_GuardSwap_TryScorePlus1
    GoTo TrainerAI_Expert_GuardSwap_End

TrainerAI_Expert_GuardSwap_CheckSpDefense_NoDiff:
    DiffStatStages AI_BATTLER_DEFENDER, BATTLE_STAT_SP_DEFENSE
    IfLoadedGreaterThan 3, TrainerAI_Expert_GuardSwap_TryScorePlus3
    IfLoadedGreaterThan 1, TrainerAI_Expert_GuardSwap_TryScorePlus2
    IfLoadedGreaterThan 0, TrainerAI_Expert_GuardSwap_TryScorePlus1
    GoTo TrainerAI_Expert_GuardSwap_End

TrainerAI_Expert_GuardSwap_TryScorePlus5:
    IfRandomLessThan 128, TrainerAI_Expert_GuardSwap_TryScorePlus4
    AddToMoveScore 5
    GoTo TrainerAI_Expert_GuardSwap_End

TrainerAI_Expert_GuardSwap_TryScorePlus4:
    IfRandomLessThan 128, TrainerAI_Expert_GuardSwap_TryScorePlus3
    AddToMoveScore 4
    GoTo TrainerAI_Expert_GuardSwap_End

TrainerAI_Expert_GuardSwap_TryScorePlus3:
    IfRandomLessThan 128, TrainerAI_Expert_GuardSwap_TryScorePlus2
    AddToMoveScore 3
    GoTo TrainerAI_Expert_GuardSwap_End

TrainerAI_Expert_GuardSwap_TryScorePlus2:
    IfRandomLessThan 128, TrainerAI_Expert_GuardSwap_TryScorePlus1
    AddToMoveScore 2
    GoTo TrainerAI_Expert_GuardSwap_End

TrainerAI_Expert_GuardSwap_TryScorePlus1:
    IfRandomLessThan 128, TrainerAI_Expert_GuardSwap_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_GuardSwap_End

TrainerAI_Expert_GuardSwap_End:
    PopOrEnd 

TrainerAI_Expert_Punishment:
    ; If the opponent resists or is immune to the move, score +0.
    ;
    ; Sum the total positive stat stages for the opponent:
    ; - If > 6:
    ;     - 50% chance of score +4
    ;     - 25% chance of score +3
    ;     - 12.5% chance of score +2
    ;     - 6.25% chance of score +1
    ;     - 6.25% chance of score +0
    ; - If = 6:
    ;     - 50% chance of score +3
    ;     - 25% chance of score +2
    ;     - 12.5% chance of score +1
    ;     - 12.5% chance of score +0
    ; - If = 5:
    ;     - 50% chance of score +2
    ;     - 25% chance of score +1
    ;     - 25% chance of score +0
    ; - If > 2:
    ;     - 50% chance of score +1
    ;     - 50% chance of score +0
    ; - Otherwise, score +0.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_Expert_Punishment_End
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, TrainerAI_Expert_Punishment_End
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, TrainerAI_Expert_Punishment_End
    SumPositiveStatStages AI_BATTLER_DEFENDER
    IfLoadedGreaterThan 6, TrainerAI_Expert_Punishment_TryScorePlus4
    IfLoadedGreaterThan 5, TrainerAI_Expert_Punishment_TryScorePlus3
    IfLoadedGreaterThan 4, TrainerAI_Expert_Punishment_TryScorePlus2
    IfLoadedGreaterThan 3, TrainerAI_Expert_Punishment_TryScorePlus1
    IfLoadedGreaterThan 2, TrainerAI_Expert_Punishment_TryScorePlus1
    GoTo TrainerAI_Expert_Punishment_End

TrainerAI_Expert_Punishment_TryScorePlus4:
    IfRandomLessThan 128, TrainerAI_Expert_Punishment_TryScorePlus3
    AddToMoveScore 4

TrainerAI_Expert_Punishment_TryScorePlus3:
    IfRandomLessThan 128, TrainerAI_Expert_Punishment_TryScorePlus2
    AddToMoveScore 3

TrainerAI_Expert_Punishment_TryScorePlus2:
    IfRandomLessThan 128, TrainerAI_Expert_Punishment_TryScorePlus1
    AddToMoveScore 2

TrainerAI_Expert_Punishment_TryScorePlus1:
    IfRandomLessThan 128, TrainerAI_Expert_Punishment_End
    AddToMoveScore 1

TrainerAI_Expert_Punishment_End:
    PopOrEnd 

TrainerAI_Expert_LastResort:
    ; If the opponent resists or is immune to the move, score -1.
    ;
    ; If the attacker can use Last Resort, score +1. Otherwise, score +0.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_Expert_LastResort_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, TrainerAI_Expert_LastResort_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, TrainerAI_Expert_LastResort_ScoreMinus1
    IfCanUseLastResort AI_BATTLER_ATTACKER, TrainerAI_Expert_LastResort_ScorePlus1
    GoTo TrainerAI_Expert_LastResort_End

TrainerAI_Expert_LastResort_ScoreMinus1:
    AddToMoveScore -1
    GoTo TrainerAI_Expert_LastResort_End

TrainerAI_Expert_LastResort_ScorePlus1:
    AddToMoveScore 1

TrainerAI_Expert_LastResort_End:
    PopOrEnd 

TrainerAI_Expert_WorrySeed:
    ; If the opponent knows the move Rest, additional score +1.
    ;
    ; If the attacker's HP >= 50%, 50% chance of additional score +1.
    ;
    ; 75% chance of score +1.
    IfMoveNotKnown AI_BATTLER_DEFENDER, MOVE_REST, TrainerAI_Expert_WorrySeed_CheckUserHP
    AddToMoveScore 1

TrainerAI_Expert_WorrySeed_CheckUserHP:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 50, TrainerAI_Expert_WorrySeed_TryScorePlus1
    IfRandomLessThan 128, TrainerAI_Expert_WorrySeed_TryScorePlus1
    AddToMoveScore 1

TrainerAI_Expert_WorrySeed_TryScorePlus1:
    IfRandomLessThan 64, TrainerAI_Expert_WorrySeed_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_WorrySeed_End

TrainerAI_Expert_WorrySeed_End:
    PopOrEnd 

TrainerAI_Expert_SuckerPunch:
    ; If the opponent resists or is immune to the move, score -1.
    ;
    ; 75% chance of score +1.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_Expert_SuckerPunch_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, TrainerAI_Expert_SuckerPunch_ScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, TrainerAI_Expert_SuckerPunch_ScoreMinus1
    IfRandomLessThan 64, TrainerAI_Expert_SuckerPunch_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_SuckerPunch_End

TrainerAI_Expert_SuckerPunch_ScoreMinus1:
    AddToMoveScore -1

TrainerAI_Expert_SuckerPunch_End:
    PopOrEnd 

TrainerAI_Expert_ToxicSpikes:
    ; 50% chance to ignore all further scoring.
    ;
    ; Start at score +1.
    ;
    ; If the attacker knows specifically the moves Roar or Whirlwind, 75% chance of additional score +1.
    IfRandomLessThan 128, TrainerAI_Expert_ToxicSpikes_End
    AddToMoveScore 1
    IfMoveKnown AI_BATTLER_ATTACKER, MOVE_ROAR, TrainerAI_Expert_ToxicSpikes_TryScorePlus1
    IfMoveKnown AI_BATTLER_ATTACKER, MOVE_WHIRLWIND, TrainerAI_Expert_ToxicSpikes_TryScorePlus1
    GoTo TrainerAI_Expert_ToxicSpikes_End

TrainerAI_Expert_ToxicSpikes_TryScorePlus1:
    IfRandomLessThan 64, TrainerAI_Expert_ToxicSpikes_End
    AddToMoveScore 1

TrainerAI_Expert_ToxicSpikes_End:
    PopOrEnd 

TrainerAI_Expert_HeartSwap:
    ; If the opponent does not have any of the following stats at +2 stage or greater and is not
    ; under the effect of Focus Energy, score -2 and terminate:
    ; - Attack
    ; - Defense
    ; - SpAttack
    ; - SpDefense
    ; - Evasion
    ;
    ; If the attacker has any of the following stats at +0 stage or lower or is not under the
    ; effect of Focus Energy, score +1:
    ; - Attack
    ; - Defense
    ; - SpAttack
    ; - SpDefense
    ;
    ; If the attacker's Evasion stat is at +0 stage or lower, score +2.
    ;
    ; Otherwise, 80.5% chance of score -2.
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_ATTACK, 7, TrainerAI_Expert_HeartSwap_CheckUserStages
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_DEFENSE, 7, TrainerAI_Expert_HeartSwap_CheckUserStages
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK, 7, TrainerAI_Expert_HeartSwap_CheckUserStages
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_SP_DEFENSE, 7, TrainerAI_Expert_HeartSwap_CheckUserStages
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 7, TrainerAI_Expert_HeartSwap_CheckUserStages
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_FOCUS_ENERGY, TrainerAI_Expert_HeartSwap_CheckUserStages
    GoTo TrainerAI_Expert_HeartSwap_ScoreMinus2

TrainerAI_Expert_HeartSwap_CheckUserStages:
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 7, TrainerAI_Expert_HeartSwap_ScorePlus1
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 7, TrainerAI_Expert_HeartSwap_ScorePlus1
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_ATTACK, 7, TrainerAI_Expert_HeartSwap_ScorePlus1
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_DEFENSE, 7, TrainerAI_Expert_HeartSwap_ScorePlus1
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_EVASION, 7, TrainerAI_Expert_HeartSwap_ScorePlus2
    IfNotVolatileStatus AI_BATTLER_ATTACKER, VOLATILE_CONDITION_FOCUS_ENERGY, TrainerAI_Expert_HeartSwap_ScorePlus1
    IfRandomLessThan 50, TrainerAI_Expert_HeartSwap_End
    GoTo TrainerAI_Expert_HeartSwap_ScoreMinus2

TrainerAI_Expert_HeartSwap_ScorePlus2:
    AddToMoveScore 1

TrainerAI_Expert_HeartSwap_ScorePlus1:
    AddToMoveScore 1
    PopOrEnd 

TrainerAI_Expert_HeartSwap_ScoreMinus2:
    AddToMoveScore -2

TrainerAI_Expert_HeartSwap_End:
    PopOrEnd 

TrainerAI_Expert_AquaRing:
    ; If the attacker's HP >= 30%, 50% chance of score +1.
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 30, TrainerAI_Expert_AquaRing_End
    IfRandomLessThan 128, TrainerAI_Expert_AquaRing_End
    AddToMoveScore 1

TrainerAI_Expert_AquaRing_End:
    PopOrEnd 

TrainerAI_Expert_MagnetRise:
    ; If the attacker's HP < 50%, ignore all further score changes.
    ;
    ; If the opponent knows one of the following moves, additional score +1:
    ; - Earthquake
    ; - Earth Power
    ; - Fissure
    ;
    ; If the opponent has a Ground typing, score +1. Otherwise, 50% chance of score +1.
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 50, TrainerAI_Expert_MagnetRise_End
    IfMoveKnown AI_BATTLER_DEFENDER, MOVE_EARTHQUAKE, TrainerAI_Expert_MagnetRise_InitialScorePlus1
    IfMoveKnown AI_BATTLER_DEFENDER, MOVE_EARTH_POWER, TrainerAI_Expert_MagnetRise_InitialScorePlus1
    IfMoveKnown AI_BATTLER_DEFENDER, MOVE_FISSURE, TrainerAI_Expert_MagnetRise_InitialScorePlus1
    GoTo TrainerAI_Expert_MagnetRise_CheckOpponentTyping

TrainerAI_Expert_MagnetRise_InitialScorePlus1:
    AddToMoveScore 1

TrainerAI_Expert_MagnetRise_CheckOpponentTyping:
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_GROUND, TrainerAI_Expert_MagnetRise_ScorePlus1
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_GROUND, TrainerAI_Expert_MagnetRise_ScorePlus1
    IfRandomLessThan 128, TrainerAI_Expert_MagnetRise_End

TrainerAI_Expert_MagnetRise_ScorePlus1:
    AddToMoveScore 1

TrainerAI_Expert_MagnetRise_End:
    PopOrEnd 
    PopOrEnd 
    PopOrEnd 
    PopOrEnd 
    PopOrEnd 

TrainerAI_Expert_Defog:
    ; If the opponent's side of the field is under the effect of Light Screen or Reflect:
    ; - If the attacker's HP < 30% and there are no remaining party members:
    ;   - 80.5% chance of additional score -2.
    ;   - If the opponent's HP > 70%, score -2.
    ; - Start at score +1.
    ; - If the opponent has at least one remaining party member and their side of the field is
    ; under the effect of Spikes, Stealth Rock, or Toxic Spikes, 50% chance of score -1.
    ; - Proceed to the final if-block below.
    ;
    ; If the opponent's side of the field is under the effect of Spikes, Stealth Rock, or Toxic
    ; Spikes, additional score -2.
    ;
    ; If all of the following conditions are met, score -2:
    ; - The attacker's HP >= 70%
    ; - The opponent's Evasion stat is at -2 stage or greater
    ; - The opponent's HP <= 70%
    ; Otherwise:
    ; - 80.5% chance of additional score -2.
    ; - If the opponent's HP <= 70% score -2.
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_LIGHT_SCREEN, TrainerAI_Expert_Defog_ScreenScrubbing
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_REFLECT, TrainerAI_Expert_Defog_ScreenScrubbing
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_SPIKES, TrainerAI_Expert_Defog_ScoreMinus2AndEnd
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_STEALTH_ROCK, TrainerAI_Expert_Defog_ScoreMinus2AndEnd
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_TOXIC_SPIKES, TrainerAI_Expert_Defog_ScoreMinus2AndEnd
    GoTo TrainerAI_Expert_Defog_CheckUserHPAndOpponentEvasion

TrainerAI_Expert_Defog_ScreenScrubbing:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 30, TrainerAI_Expert_Defog_ScreenScrubbingCheckHazards
    CountAlivePartyBattlers AI_BATTLER_ATTACKER
    IfLoadedEqualTo 0, TrainerAI_Expert_Defog_TryScoreMinus2

TrainerAI_Expert_Defog_ScreenScrubbingCheckHazards:
    AddToMoveScore 1
    CountAlivePartyBattlers AI_BATTLER_DEFENDER
    IfLoadedEqualTo 0, TrainerAI_Expert_Defog_End
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_SPIKES, TrainerAI_Expert_Defog_TryScoreMinus1
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_STEALTH_ROCK, TrainerAI_Expert_Defog_TryScoreMinus1
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_TOXIC_SPIKES, TrainerAI_Expert_Defog_TryScoreMinus1
    GoTo TrainerAI_Expert_Defog_CheckUserHPAndOpponentEvasion

TrainerAI_Expert_Defog_ScoreMinus2AndEnd:
    AddToMoveScore -2
    GoTo TrainerAI_Expert_Defog_CheckUserHPAndOpponentEvasion

TrainerAI_Expert_Defog_TryScoreMinus1:
    IfRandomLessThan 128, TrainerAI_Expert_Defog_CheckUserHPAndOpponentEvasion
    AddToMoveScore -1
    GoTo TrainerAI_Expert_Defog_CheckUserHPAndOpponentEvasion

TrainerAI_Expert_Defog_CheckUserHPAndOpponentEvasion:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 70, TrainerAI_Expert_Defog_TryScoreMinus2
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 3, TrainerAI_Expert_Defog_CheckOpponentHP

TrainerAI_Expert_Defog_TryScoreMinus2:
    IfRandomLessThan 50, TrainerAI_Expert_Defog_CheckOpponentHP
    AddToMoveScore -2

TrainerAI_Expert_Defog_CheckOpponentHP:
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 70, TrainerAI_Expert_Defog_End
    AddToMoveScore -2

TrainerAI_Expert_Defog_End:
    PopOrEnd 

TrainerAI_Expert_TrickRoom:
    ; If the battle is a Double Battle, ignore all further score modifiers.
    ;
    ; If the attacker's HP <= 30% and there are no remaining party members, score +0.
    ;
    ; If the attacker is faster than its opponent, score -1.
    ;
    ; If the attacker is slower than its opponent, 75% chance of score +3.
    LoadBattleType 
    IfLoadedMask BATTLE_TYPE_DOUBLES, TrainerAI_Expert_TrickRoom_End
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 30, TrainerAI_Expert_TrickRoom_CheckSpeed
    CountAlivePartyBattlers AI_BATTLER_ATTACKER
    IfLoadedEqualTo 0, TrainerAI_Expert_TrickRoom_End

TrainerAI_Expert_TrickRoom_CheckSpeed:
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_TrickRoom_TryScorePlus3
    AddToMoveScore -1
    GoTo TrainerAI_Expert_TrickRoom_End

TrainerAI_Expert_TrickRoom_TryScorePlus3:
    IfRandomLessThan 64, TrainerAI_Expert_TrickRoom_End
    AddToMoveScore 3

TrainerAI_Expert_TrickRoom_End:
    PopOrEnd 

TrainerAI_Expert_Blizzard:
    ; If the opponent resists or is immune to the move, 80.5% chance of score -3.
    ;
    ; If the current weather is Hail, score +1.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_Expert_Blizzard_TryScoreMinus3
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, TrainerAI_Expert_Blizzard_TryScoreMinus3
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, TrainerAI_Expert_Blizzard_TryScoreMinus3
    LoadCurrentWeather 
    IfLoadedNotEqualTo AI_WEATHER_HAILING, TrainerAI_Expert_Blizzard_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_Blizzard_End

TrainerAI_Expert_Blizzard_TryScoreMinus3:
    IfRandomLessThan 50, TrainerAI_Expert_Blizzard_End
    AddToMoveScore -3

TrainerAI_Expert_Blizzard_End:
    PopOrEnd 
    PopOrEnd 

TrainerAI_Expert_Captivate:
    ; If the opponent's SpAttack stat stage is at any value other than +0:
    ; - Start at score -1.
    ; - If the attacker's HP <= 90%, additional score -1.
    ; - If the opponent's SpAttack stat stage is at -3 or lower, 80.5% chance of additional score -2.
    ;
    ; If the opponent's HP <= 70%, additional score -2.
    ;
    ; If the opponent's last-used move was a Physical move, 75% chance of score -1.
    IfStatStageEqualTo AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK, 6, TrainerAI_Expert_Captivate_CheckOpponentHP
    AddToMoveScore -1
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 90, TrainerAI_Expert_Captivate_CheckLowStatStage
    AddToMoveScore -1

TrainerAI_Expert_Captivate_CheckLowStatStage:
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK, 3, TrainerAI_Expert_Captivate_CheckOpponentHP
    IfRandomLessThan 50, TrainerAI_Expert_Captivate_CheckOpponentHP
    AddToMoveScore -2

TrainerAI_Expert_Captivate_CheckOpponentHP:
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 70, TrainerAI_Expert_Captivate_CheckOpponentLastMove
    AddToMoveScore -2

TrainerAI_Expert_Captivate_CheckOpponentLastMove:
    LoadDefenderLastUsedMoveClass 
    IfLoadedNotEqualTo CLASS_PHYSICAL, TrainerAI_Expert_Captivate_End
    IfRandomLessThan 64, TrainerAI_Expert_Captivate_End
    AddToMoveScore -1

TrainerAI_Expert_Captivate_End:
    PopOrEnd 

TrainerAI_Expert_StealthRock:
    ; 50% chance to ignore all further score modifiers.
    ;
    ; Start at score +1.
    ;
    ; If the attacker knows either of the moves Roar or Whirlwind, 75% chance of additional score +1.
    IfRandomLessThan 128, TrainerAI_Expert_StealthRock_End
    AddToMoveScore 1
    IfMoveKnown AI_BATTLER_ATTACKER, MOVE_ROAR, TrainerAI_Expert_StealthRock_TryScorePlus1
    IfMoveKnown AI_BATTLER_ATTACKER, MOVE_WHIRLWIND, TrainerAI_Expert_StealthRock_TryScorePlus1
    GoTo TrainerAI_Expert_StealthRock_End

TrainerAI_Expert_StealthRock_TryScorePlus1:
    IfRandomLessThan 64, TrainerAI_Expert_StealthRock_End
    AddToMoveScore 1

TrainerAI_Expert_StealthRock_End:
    PopOrEnd 
    PopOrEnd 
    PopOrEnd 

TrainerAI_Expert_RecoilMove:
    ; If the opponent resists or is immune to the move, ignore all further score modifiers.
    ;
    ; If the attacker has either of the abilities Rock Head or Magic Guard, score +1.
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, TrainerAI_Expert_RecoilMove_End
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, TrainerAI_Expert_RecoilMove_End
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, TrainerAI_Expert_RecoilMove_End
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_ROCK_HEAD, TrainerAI_Expert_RecoilMove_ScorePlus1
    IfLoadedEqualTo ABILITY_MAGIC_GUARD, TrainerAI_Expert_RecoilMove_ScorePlus1
    GoTo TrainerAI_Expert_RecoilMove_End

TrainerAI_Expert_RecoilMove_ScorePlus1:
    AddToMoveScore 1

TrainerAI_Expert_RecoilMove_End:
    PopOrEnd 

TrainerAI_Expert_HealingWish:
    ; If the attacker's HP >= 80% and the attacker is faster than its opponent, 25% of score -5.
    ;
    ; If the attacker's HP > 50%, 80.5% chance of score -1.
    ;
    ; 75% chance to ignore this section of modifiers:
    ; - Start at score +1.
    ; - If the attacker does not have a super-effective move against its opponent, 25% chance of
    ; additional score +1.
    ; - If a party member deals more damage than the attacker, 50% chance of additional score +1.
    ;
    ; If the attacker's HP <= 30%, 50% chance of score +1.
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 80, TrainerAI_Expert_HealingWish_HappyPath
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, TrainerAI_Expert_HealingWish_HappyPath
    IfRandomLessThan 192, TrainerAI_Expert_HealingWish_End
    GoTo TrainerAI_ScoreMinus5

TrainerAI_Expert_HealingWish_HappyPath:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 50, TrainerAI_Expert_HealingWish_TryScoreMinus1
    IfRandomLessThan 192, TrainerAI_Expert_HealingWish_CheckUserAtLowHP
    AddToMoveScore 1
    IfHasSuperEffectiveMove TrainerAI_Expert_HealingWish_CheckPartyMemberDamage
    IfRandomLessThan 192, TrainerAI_Expert_HealingWish_CheckPartyMemberDamage
    AddToMoveScore 1

TrainerAI_Expert_HealingWish_CheckPartyMemberDamage:
    IfPartyMemberDealsMoreDamage USE_MAX_DAMAGE, TrainerAI_Expert_HealingWish_TryScorePlus1
    GoTo TrainerAI_Expert_HealingWish_CheckUserAtLowHP

TrainerAI_Expert_HealingWish_TryScorePlus1:
    IfRandomLessThan 128, TrainerAI_Expert_HealingWish_CheckUserAtLowHP
    AddToMoveScore 1

TrainerAI_Expert_HealingWish_CheckUserAtLowHP:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 30, TrainerAI_Expert_HealingWish_End
    IfRandomLessThan 128, TrainerAI_Expert_HealingWish_End
    AddToMoveScore 1
    GoTo TrainerAI_Expert_HealingWish_End

TrainerAI_Expert_HealingWish_TryScoreMinus1:
    IfRandomLessThan 50, TrainerAI_Expert_HealingWish_End
    AddToMoveScore -1

TrainerAI_Expert_HealingWish_End:
    PopOrEnd 

TrainerAI_EvalAttack_Main:
    ; Never target the partner.
    IfTargetIsPartner TrainerAI_Terminate

    IfCurrentMoveKills USE_MAX_DAMAGE, TrainerAI_EvalAttack_CheckForKill

    ; If this move does not out-damage all other moves, score -1.
    FlagMoveDamageScore FALSE
    IfLoadedEqualTo AI_NOT_HIGHEST_DAMAGE, TrainerAI_ScoreMinus1

    ; Explosion, Focus Punch, and Sucker Punch are judged as Risky by this routine.
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HALVE_DEFENSE, TrainerAI_EvalAttack_RiskyAttack
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HIT_LAST_WHIFF_IF_HIT, TrainerAI_EvalAttack_RiskyAttack
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HIT_FIRST_IF_TARGET_ATTACKING, TrainerAI_EvalAttack_RiskyAttack

    ; Check for quad-effectiveness.
    GoTo TrainerAI_EvalAttack_CheckQuadEffective

TrainerAI_EvalAttack_RiskyAttack:
    ; ~80% chance of score -2.
    IfRandomLessThan 51, TrainerAI_EvalAttack_CheckQuadEffective
    AddToMoveScore -2

TrainerAI_EvalAttack_CheckQuadEffective:
    ; If quad-effective, 31.25% chance of score +2.
    IfMoveEffectivenessEquals TYPE_MULTI_QUADRUPLE_DAMAGE, TrainerAI_EvalAttack_TryScorePlus2
    PopOrEnd 

TrainerAI_EvalAttack_TryScorePlus2:
    IfRandomLessThan 80, TrainerAI_EvalAttack_Terminate
    AddToMoveScore 2
    PopOrEnd 

TrainerAI_EvalAttack_CheckForKill:
    ; Do not evaluate kills with Explosion or Self-Destruct for this routine.
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HALVE_DEFENSE, TrainerAI_EvalAttack_Terminate

    ; Randomly increase the score of a move that kills.
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HIT_LAST_WHIFF_IF_HIT, TrainerAI_EvalAttack_TryScorePlus4
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HIT_FIRST_IF_TARGET_ATTACKING, TrainerAI_EvalAttack_TryScorePlus4
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HIT_IN_3_TURNS, TrainerAI_EvalAttack_TryScorePlus4

    ; Priority kill is score +2. This is because priorty moves are low-power, and this routine prioritizes
    ; raw damage output.
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_PRIORITY_1, TrainerAI_EvalAttack_ScorePlus2
    GoTo TrainerAI_EvalAttack_ScorePlus4

TrainerAI_EvalAttack_TryScorePlus4:
    ; ~33.6% of the time, score +4.
    IfRandomLessThan 170, TrainerAI_EvalAttack_Terminate
    GoTo TrainerAI_EvalAttack_ScorePlus4

TrainerAI_EvalAttack_ScorePlus2:
    AddToMoveScore 2

TrainerAI_EvalAttack_ScorePlus4:
    AddToMoveScore 4

TrainerAI_EvalAttack_Terminate:
    PopOrEnd 

TrainerAI_SetupFirstTurn_Main:
    IfTargetIsPartner TrainerAI_Terminate

    ; If this is not the first turn, terminate.
    LoadTurnCount 
    IfLoadedNotEqualTo 0, TrainerAI_SetupFirstTurn_Terminate

    ; If the current move's effect is not known tobe a setup move, break.
    LoadCurrentMoveEffect 
    IfLoadedNotInTable TrainerAI_SetupFirstTurn_SetupEffects, TrainerAI_SetupFirstTurn_Terminate

    ; 68.75% of the time, score +2.
    IfRandomLessThan 80, TrainerAI_SetupFirstTurn_Terminate
    AddToMoveScore 2

TrainerAI_SetupFirstTurn_Terminate:
    PopOrEnd 

TrainerAI_SetupFirstTurn_SetupEffects:
    TableEntry BATTLE_EFFECT_ATK_UP
    TableEntry BATTLE_EFFECT_DEF_UP
    TableEntry BATTLE_EFFECT_SPEED_UP
    TableEntry BATTLE_EFFECT_SP_ATK_UP
    TableEntry BATTLE_EFFECT_SP_DEF_UP
    TableEntry BATTLE_EFFECT_ACC_UP
    TableEntry BATTLE_EFFECT_EVA_UP
    TableEntry BATTLE_EFFECT_ATK_DOWN
    TableEntry BATTLE_EFFECT_DEF_DOWN
    TableEntry BATTLE_EFFECT_SPEED_DOWN
    TableEntry BATTLE_EFFECT_SP_ATK_DOWN
    TableEntry BATTLE_EFFECT_SP_DEF_DOWN
    TableEntry BATTLE_EFFECT_ACC_DOWN
    TableEntry BATTLE_EFFECT_EVA_DOWN
    TableEntry BATTLE_EFFECT_CONVERSION
    TableEntry BATTLE_EFFECT_SET_LIGHT_SCREEN
    TableEntry BATTLE_EFFECT_SP_DEF_UP_2
    TableEntry BATTLE_EFFECT_CRIT_UP_2
    TableEntry BATTLE_EFFECT_STATUS_CONFUSE
    TableEntry BATTLE_EFFECT_ATK_UP_2
    TableEntry BATTLE_EFFECT_DEF_UP_2
    TableEntry BATTLE_EFFECT_SPEED_UP_2
    TableEntry BATTLE_EFFECT_SP_ATK_UP_2
    TableEntry BATTLE_EFFECT_SP_DEF_UP_2
    TableEntry BATTLE_EFFECT_ACC_UP_2
    TableEntry BATTLE_EFFECT_EVA_UP_2
    TableEntry BATTLE_EFFECT_ATK_DOWN_2
    TableEntry BATTLE_EFFECT_DEF_DOWN_2
    TableEntry BATTLE_EFFECT_SPEED_DOWN_2
    TableEntry BATTLE_EFFECT_SP_ATK_DOWN_2
    TableEntry BATTLE_EFFECT_SP_DEF_DOWN_2
    TableEntry BATTLE_EFFECT_EVA_DOWN_2
    TableEntry BATTLE_EFFECT_ACC_DOWN_2
    TableEntry BATTLE_EFFECT_SET_REFLECT
    TableEntry BATTLE_EFFECT_STATUS_POISON
    TableEntry BATTLE_EFFECT_STATUS_PARALYZE
    TableEntry BATTLE_EFFECT_SET_SUBSTITUTE
    TableEntry BATTLE_EFFECT_STATUS_LEECH_SEED
    TableEntry BATTLE_EFFECT_EVA_UP_2_MINIMIZE
    TableEntry BATTLE_EFFECT_CURSE
    TableEntry BATTLE_EFFECT_ATK_UP_2_STATUS_CONFUSION
    TableEntry BATTLE_EFFECT_CAMOUFLAGE
    TableEntry BATTLE_EFFECT_STATUS_SLEEP_NEXT_TURN
    TableEntry BATTLE_EFFECT_DEF_UP_DOUBLE_ROLLOUT_POWER
    TableEntry BATTLE_EFFECT_TORMENT
    TableEntry BATTLE_EFFECT_SP_ATK_UP_CAUSE_CONFUSION
    TableEntry BATTLE_EFFECT_STATUS_BURN
    TableEntry BATTLE_EFFECT_GROUND_TRAP_USER_CONTINUOUS_HEAL
    TableEntry BATTLE_EFFECT_MAKE_SHARED_MOVES_UNUSEABLE
    TableEntry BATTLE_EFFECT_CONFUSE_ALL
    TableEntry BATTLE_EFFECT_ATK_DEF_DOWN
    TableEntry BATTLE_EFFECT_DEF_SPD_UP
    TableEntry BATTLE_EFFECT_ATK_DEF_UP
    TableEntry BATTLE_EFFECT_SP_ATK_SP_DEF_UP
    TableEntry BATTLE_EFFECT_CAMOUFLAGE
    TableEntry BATTLE_EFFECT_DOUBLE_SPEED_3_TURNS
    TableEntry BATTLE_EFFECT_RANDOM_STAT_UP_2
    TableEntry BATTLE_EFFECT_PREVENT_CRITS
    TableEntry BATTLE_EFFECT_GIVE_GROUND_IMMUNITY
    TableEntry BATTLE_EFFECT_REMOVE_HAZARDS_SCREENS_EVA_DOWN
    TableEntry BATTLE_EFFECT_WHIRLPOOL
    TableEntry TABLE_END

TrainerAI_DamagePriority_Main:
    ; Do not target your partner.
    IfTargetIsPartner TrainerAI_Terminate

    ; If the current move is not variable power or is Risky, break.
    FlagMoveDamageScore FALSE
    IfLoadedNotEqualTo AI_NO_COMPARISON_MADE, TrainerAI_DamagePriority_Terminate

    ; ~61% of the time, score +2.
    IfRandomLessThan 100, TrainerAI_DamagePriority_Terminate
    AddToMoveScore 2

TrainerAI_DamagePriority_Terminate:
    PopOrEnd 

TrainerAI_Risky_Main:
    ; Do not target your partner.
    IfTargetIsPartner TrainerAI_Terminate

    ; If the current move effect is judged to not be Risky, break;
    LoadCurrentMoveEffect 
    IfLoadedNotInTable TrainerAI_Risky_RiskyEffects, TrainerAI_Risky_Terminate

    ; 50% of the time, score +2.
    IfRandomLessThan 128, TrainerAI_Risky_Terminate
    AddToMoveScore 2

TrainerAI_Risky_Terminate:
    PopOrEnd 

TrainerAI_Risky_RiskyEffects:
    TableEntry BATTLE_EFFECT_STATUS_SLEEP
    TableEntry BATTLE_EFFECT_HALVE_DEFENSE
    TableEntry BATTLE_EFFECT_COPY_MOVE
    TableEntry BATTLE_EFFECT_ONE_HIT_KO
    TableEntry BATTLE_EFFECT_HIGH_CRITICAL
    TableEntry BATTLE_EFFECT_STATUS_CONFUSE
    TableEntry BATTLE_EFFECT_CALL_RANDOM_MOVE
    TableEntry BATTLE_EFFECT_RANDOM_DAMAGE_1_TO_150_LEVEL
    TableEntry BATTLE_EFFECT_COUNTER
    TableEntry BATTLE_EFFECT_KO_MON_THAT_DEFEATED_USER
    TableEntry BATTLE_EFFECT_ATK_UP_2_STATUS_CONFUSION
    TableEntry BATTLE_EFFECT_INFATUATE
    TableEntry BATTLE_EFFECT_RANDOM_POWER_MAYBE_HEAL
    TableEntry BATTLE_EFFECT_RAISE_ALL_STATS_HIT
    TableEntry BATTLE_EFFECT_MAX_ATK_LOSE_HALF_MAX_HP
    TableEntry BATTLE_EFFECT_MIRROR_COAT
    TableEntry BATTLE_EFFECT_HIT_LAST_WHIFF_IF_HIT
    TableEntry BATTLE_EFFECT_DOUBLE_POWER_IF_HIT
    TableEntry BATTLE_EFFECT_CONFUSE_ALL
    TableEntry BATTLE_EFFECT_POWER_BASED_ON_LOW_SPEED
    TableEntry BATTLE_EFFECT_RANDOM_STAT_UP_2
    TableEntry BATTLE_EFFECT_METAL_BURST
    TableEntry BATTLE_EFFECT_DOUBLE_POWER_IF_MOVING_SECOND
    TableEntry BATTLE_EFFECT_USE_MOVE_FIRST
    TableEntry BATTLE_EFFECT_HIT_FIRST_IF_TARGET_ATTACKING
    TableEntry TABLE_END

TrainerAI_BatonPass_Main:
    IfTargetIsPartner TrainerAI_Terminate

    ; If there are no other party members alive, break.
    CountAlivePartyBattlers AI_BATTLER_ATTACKER
    IfLoadedEqualTo 0, TrainerAI_BatonPass_Terminate

    ; If the move deals damage, ignore it for this flag.
    FlagMoveDamageScore FALSE
    IfLoadedNotEqualTo AI_NO_COMPARISON_MADE, TrainerAI_BatonPass_Terminate

    ; If the attacker does not know Baton Pass, 31.25% chance of no score changes.
    IfMoveEffectKnown AI_BATTLER_ATTACKER, BATTLE_EFFECT_PASS_STATS_AND_STATUS, TrainerAI_BatonPass_EvalMove
    IfRandomLessThan 80, TrainerAI_Risky_Terminate

TrainerAI_BatonPass_EvalMove:
    ; Handle these +2 boosting moves separately.
    IfMoveEqualTo MOVE_SWORDS_DANCE, TrainerAI_BatonPass_SetupAtHighHP
    IfMoveEqualTo MOVE_DRAGON_DANCE, TrainerAI_BatonPass_SetupAtHighHP
    IfMoveEqualTo MOVE_CALM_MIND, TrainerAI_BatonPass_SetupAtHighHP
    IfMoveEqualTo MOVE_NASTY_PLOT, TrainerAI_BatonPass_SetupAtHighHP

    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_PROTECT, TrainerAI_BatonPass_EvalProtect

    IfMoveEqualTo MOVE_BATON_PASS, TrainerAI_BatonPass_EvalBatonPass

    ; ~92% of the time, score +3.
    IfRandomLessThan 20, TrainerAI_Risky_Terminate
    AddToMoveScore 3

TrainerAI_BatonPass_SetupAtHighHP:
    ; On turn 1 of the entire battle, score +5.
    LoadTurnCount 
    IfLoadedEqualTo 0, TrainerAI_ScorePlus5

    ; If the attacker is at < 60% HP, score -10.
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 60, TrainerAI_ScoreMinus10

    ; Otherwise, score +1.
    GoTo TrainerAI_ScorePlus1

TrainerAI_BatonPass_EvalProtect:
    ; If the current move's effect is Protect and the last move that we used
    ; is either Detect or Protect, score -2.
    LoadBattlerPreviousMove AI_BATTLER_ATTACKER
    IfLoadedInTable TrainerAI_BatonPass_ProtectDetect, TrainerAI_ScoreMinus2

    ; Else, score +2.
    AddToMoveScore 2
    PopOrEnd 

TrainerAI_BatonPass_ProtectDetect:
    TableEntry MOVE_PROTECT
    TableEntry MOVE_DETECT
    TableEntry TABLE_END

TrainerAI_BatonPass_EvalBatonPass:
    ; On turn 1 of the entire battle, score -2.
    LoadTurnCount 
    IfLoadedEqualTo 0, TrainerAI_ScoreMinus2

    ; Score +1 for each positive stat stage for Attack or Special Attack
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 8, TrainerAI_ScorePlus3
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 7, TrainerAI_ScorePlus2
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 6, TrainerAI_ScorePlus1
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_ATTACK, 8, TrainerAI_ScorePlus3
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_ATTACK, 7, TrainerAI_ScorePlus2
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_ATTACK, 6, TrainerAI_ScorePlus1
    PopOrEnd 

TrainerAI_BatonPass_Terminate:
    PopOrEnd 

TrainerAI_TagStrategy_Main:
    IfTargetIsPartner TrainerAI_TagStrategy_Partner

    ; If the move does not deal damage, skip ahead
    FlagMoveDamageScore FALSE
    IfLoadedEqualTo AI_NO_COMPARISON_MADE, TrainerAI_TagStrategy_CheckSpecialScoring

    ; Flat-damage move effects have a special handler; this includes OHKO moves
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ONE_HIT_KO, TrainerAI_TagStrategy_ScoreMove
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_40_DAMAGE_FLAT, TrainerAI_TagStrategy_ScoreMove
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_LEVEL_DAMAGE_FLAT, TrainerAI_TagStrategy_ScoreMove
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RANDOM_DAMAGE_1_TO_150_LEVEL, TrainerAI_TagStrategy_ScoreMove
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_10_DAMAGE_FLAT, TrainerAI_TagStrategy_ScoreMove

    ; If the move is not-very-effective, try to reduce its score
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, TrainerAI_TagStrategy_TryScoreMinus1
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, TrainerAI_TagStrategy_TryScoreMinus2

    ; All other moves
    GoTo TrainerAI_TagStrategy_ScoreMove

TrainerAI_TagStrategy_TryScoreMinus1:
    ; If the maximum roll would kill, do not reduce the score
    IfCurrentMoveKills USE_MAX_DAMAGE, TrainerAI_TagStrategy_ScoreMove

    ; If the target is on their last Pokemon, do not reduce the score
    IfHPPercentEqualTo AI_BATTLER_DEFENDER_PARTNER, 0, TrainerAI_TagStrategy_ScoreMove

    ; 75% of the time, reduce score by 1
    IfRandomLessThan 64, TrainerAI_TagStrategy_ScoreMove
    AddToMoveScore -1
    GoTo TrainerAI_TagStrategy_ScoreMove

TrainerAI_TagStrategy_TryScoreMinus2:
    ; If the maximum roll would kill, do not reduce the score
    IfCurrentMoveKills USE_MAX_DAMAGE, TrainerAI_TagStrategy_ScoreMove

    ; If the target is on their last Pokemon, do not reduce the score
    IfHPPercentEqualTo AI_BATTLER_DEFENDER_PARTNER, 0, TrainerAI_TagStrategy_ScoreMove

    ; 75% of the time, reduce score by 2
    IfRandomLessThan 64, TrainerAI_TagStrategy_ScoreMove
    AddToMoveScore -2
    GoTo TrainerAI_TagStrategy_ScoreMove

TrainerAI_TagStrategy_ScoreMove:
    ; If this is not a highest-damage move for the attacking side, handle the move "normally"
    CheckIfHighestDamageWithPartner USE_MAX_DAMAGE
    IfLoadedNotEqualTo AI_MOVE_IS_HIGHEST_DAMAGE, TrainerAI_TagStrategy_CheckBeforeScoring

    ; Handle Explosion and Self-Destruct like "normal" moves
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HALVE_DEFENSE, TrainerAI_TagStrategy_CheckSpecialScoring

    ; Sometimes prioritize using priority +1 moves
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_PRIORITY_1, TrainerAI_TagStrategy_TryScorePlus1

    ; 50% of the time, increase score by 1
    IfRandomLessThan 128, TrainerAI_TagStrategy_CheckBeforeScoring
    AddToMoveScore 1

    ; Proceed to "normal" handling
    GoTo TrainerAI_TagStrategy_CheckSpecialScoring

TrainerAI_TagStrategy_TryScorePlus1:
    ; ~80.5% of the time, increase score by 1
    IfRandomLessThan 50, TrainerAI_TagStrategy_CheckBeforeScoring
    AddToMoveScore 1
    GoTo TrainerAI_TagStrategy_CheckSpecialScoring

TrainerAI_TagStrategy_CheckBeforeScoring:
    ; Flat-damage move effects have a special handler; this includes OHKO moves
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ONE_HIT_KO, TrainerAI_TagStrategy_CheckSpecialScoring
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_40_DAMAGE_FLAT, TrainerAI_TagStrategy_CheckSpecialScoring
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_LEVEL_DAMAGE_FLAT, TrainerAI_TagStrategy_CheckSpecialScoring
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RANDOM_DAMAGE_1_TO_150_LEVEL, TrainerAI_TagStrategy_CheckSpecialScoring
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_10_DAMAGE_FLAT, TrainerAI_TagStrategy_CheckSpecialScoring

    ; If the move is super-effective, try to increase its score
    IfMoveEffectivenessEquals TYPE_MULTI_DOUBLE_DAMAGE, TrainerAI_TagStrategy_TryPrioritizingDoubleEffective
    IfMoveEffectivenessEquals TYPE_MULTI_QUADRUPLE_DAMAGE, TrainerAI_TagStrategy_TryPrioritizingQuadEffective

    GoTo TrainerAI_TagStrategy_CheckSpecialScoring

TrainerAI_TagStrategy_TryPrioritizingDoubleEffective:
    ; ~61% of the time, score +1
    IfRandomLessThan 100, TrainerAI_TagStrategy_CheckSpecialScoring
    AddToMoveScore 1
    GoTo TrainerAI_TagStrategy_CheckSpecialScoring

TrainerAI_TagStrategy_TryPrioritizingQuadEffective:
    ; 75% of the time, score +1
    IfRandomLessThan 64, TrainerAI_TagStrategy_CheckSpecialScoring
    AddToMoveScore 1
    GoTo TrainerAI_TagStrategy_CheckSpecialScoring

TrainerAI_TagStrategy_CheckSpecialScoring:
    ; Handle each of these moves with their own routine
    IfMoveEqualTo MOVE_SKILL_SWAP, TrainerAI_TagStrategy_SkillSwap
    LoadTypeFrom LOAD_MOVE_TYPE
    IfMoveEqualTo MOVE_EARTHQUAKE, TrainerAI_TagStrategy_Earthquake
    IfMoveEqualTo MOVE_MAGNITUDE, TrainerAI_TagStrategy_Earthquake
    IfMoveEqualTo MOVE_FUTURE_SIGHT, TrainerAI_TagStrategy_FutureSight
    IfMoveEqualTo MOVE_DOOM_DESIRE, TrainerAI_TagStrategy_FutureSight
    IfMoveEqualTo MOVE_RAIN_DANCE, TrainerAI_TagStrategy_RainDance
    IfMoveEqualTo MOVE_SUNNY_DAY, TrainerAI_TagStrategy_SunnyDay
    IfMoveEqualTo MOVE_HAIL, TrainerAI_TagStrategy_Hail
    IfMoveEqualTo MOVE_SANDSTORM, TrainerAI_TagStrategy_Sandstorm
    IfMoveEqualTo MOVE_GRAVITY, TrainerAI_TagStrategy_Gravity
    IfMoveEqualTo MOVE_TRICK_ROOM, TrainerAI_TagStrategy_TrickRoom
    IfMoveEqualTo MOVE_FOLLOW_ME, TrainerAI_TagStrategy_FollowMe
    LoadTypeFrom LOAD_MOVE_TYPE
    IfLoadedEqualTo TYPE_ELECTRIC, TrainerAI_TagStrategy_CheckElectricMove
    IfLoadedEqualTo TYPE_FIRE, TrainerAI_TagStrategy_CheckFireMove
    IfLoadedEqualTo TYPE_WATER, TrainerAI_TagStrategy_CheckWaterMove
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_HELPING_HAND, TrainerAI_TagStrategy_PartnerKnowsHelpingHand
    PopOrEnd 

TrainerAI_TagStrategy_RainDance:
    ; If the move is Rain Dance, apply modifiers for each of the attacker and partner which meet the
    ; following conditions:
    ;  - The battler has Hydration and is currently statused -> score +2
    ;  - The battler has Dry Skin -> score +2
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_HYDRATION, TrainerAI_TagStrategy_RainDance_SelfHasHydration
    IfLoadedEqualTo ABILITY_DRY_SKIN, TrainerAI_TagStrategy_RainDance_SelfScorePlus2
    GoTo TrainerAI_TagStrategy_RainDance_CheckPartner

TrainerAI_TagStrategy_RainDance_SelfHasHydration:
    IfNotStatus AI_BATTLER_ATTACKER, MON_CONDITION_ANY, TrainerAI_TagStrategy_RainDance_CheckPartner

TrainerAI_TagStrategy_RainDance_SelfScorePlus2:
    AddToMoveScore 2
    GoTo TrainerAI_TagStrategy_RainDance_CheckPartner

TrainerAI_TagStrategy_RainDance_CheckPartner:
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_HYDRATION
    IfLoadedEqualTo AI_HAVE, TrainerAI_TagStrategy_RainDance_PartnerHasHydration
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_DRY_SKIN
    IfLoadedEqualTo AI_HAVE, TrainerAI_TagStrategy_RainDance_PartnerScorePlus2
    GoTo TrainerAI_TagStrategy_RainDance_End

TrainerAI_TagStrategy_RainDance_PartnerHasHydration:
    IfNotStatus AI_BATTLER_ATTACKER_PARTNER, MON_CONDITION_ANY, TrainerAI_TagStrategy_RainDance_End

TrainerAI_TagStrategy_RainDance_PartnerScorePlus2:
    AddToMoveScore 2
    GoTo TrainerAI_TagStrategy_RainDance_End

TrainerAI_TagStrategy_RainDance_End:
    PopOrEnd 

TrainerAI_TagStrategy_SunnyDay:
    ; If the move is Sunny Day, apply modifiers for each of the attacker and partner which meet the
    ; following conditions:
    ;  - The battler has Leaf Guard, is not currently statused, and is at 30% HP or higher -> score +2
    ;  - The battler has Flower Gift -> score +2
    ;  - The battler has Dry Skin -> score -2
    ;  - The battler has Solar Power and is at 50% HP or higher -> score +1
    ;  - The battler has Solar Power, is at less than 50% HP -> 50% chance of score -2
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_LEAF_GUARD, TrainerAI_TagStrategy_SunnyDay_SelfHasLeafGuard
    IfLoadedEqualTo ABILITY_FLOWER_GIFT, TrainerAI_TagStrategy_SunnyDay_SelfScorePlus2
    IfLoadedEqualTo ABILITY_DRY_SKIN, TrainerAI_TagStrategy_SunnyDay_SelfScoreMinus2
    IfLoadedEqualTo ABILITY_SOLAR_POWER, TrainerAI_TagStrategy_SunnyDay_SelfHasSolarPower
    GoTo TrainerAI_TagStrategy_SunnyDay_CheckPartner

TrainerAI_TagStrategy_SunnyDay_SelfHasLeafGuard:
    IfStatus AI_BATTLER_ATTACKER, MON_CONDITION_ANY, TrainerAI_TagStrategy_SunnyDay_CheckPartner
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 30, TrainerAI_TagStrategy_SunnyDay_CheckPartner

TrainerAI_TagStrategy_SunnyDay_SelfScorePlus2:
    AddToMoveScore 2
    GoTo TrainerAI_TagStrategy_SunnyDay_CheckPartner

TrainerAI_TagStrategy_SunnyDay_SelfScoreMinus2:
    AddToMoveScore -2
    GoTo TrainerAI_TagStrategy_SunnyDay_CheckPartner

TrainerAI_TagStrategy_SunnyDay_SelfHasSolarPower:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 50, TrainerAI_TagStrategy_SunnyDay_SelfTryScoreMinus2
    AddToMoveScore 1

TrainerAI_TagStrategy_SunnyDay_SelfTryScoreMinus2:
    IfRandomLessThan 128, TrainerAI_TagStrategy_SunnyDay_CheckPartner
    AddToMoveScore -2

TrainerAI_TagStrategy_SunnyDay_CheckPartner:
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_LEAF_GUARD
    IfLoadedEqualTo AI_HAVE, TrainerAI_TagStrategy_SunnyDay_PartnerHasLeafGuard
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_FLOWER_GIFT
    IfLoadedEqualTo AI_HAVE, TrainerAI_TagStrategy_SunnyDay_PartnerScorePlus2
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_DRY_SKIN
    IfLoadedEqualTo AI_HAVE, TrainerAI_TagStrategy_SunnyDay_PartnerScoreMinus2
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_SOLAR_POWER
    IfLoadedEqualTo AI_HAVE, TrainerAI_TagStrategy_SunnyDay_PartnerHasSolarPower
    GoTo TrainerAI_TagStrategy_SunnyDay_End

TrainerAI_TagStrategy_SunnyDay_PartnerHasLeafGuard:
    IfStatus AI_BATTLER_ATTACKER_PARTNER, MON_CONDITION_ANY, TrainerAI_TagStrategy_SunnyDay_End
    IfHPPercentLessThan AI_BATTLER_ATTACKER_PARTNER, 30, TrainerAI_TagStrategy_SunnyDay_End

TrainerAI_TagStrategy_SunnyDay_PartnerScorePlus2:
    AddToMoveScore 2
    GoTo TrainerAI_TagStrategy_SunnyDay_End

TrainerAI_TagStrategy_SunnyDay_PartnerScoreMinus2:
    AddToMoveScore -2
    GoTo TrainerAI_TagStrategy_SunnyDay_End

TrainerAI_TagStrategy_SunnyDay_PartnerHasSolarPower:
    IfHPPercentLessThan AI_BATTLER_ATTACKER_PARTNER, 50, TrainerAI_TagStrategy_SunnyDay_PartnerTryScoreMinus2
    AddToMoveScore 1

TrainerAI_TagStrategy_SunnyDay_PartnerTryScoreMinus2:
    IfRandomLessThan 128, TrainerAI_TagStrategy_SunnyDay_End
    AddToMoveScore -2

TrainerAI_TagStrategy_SunnyDay_End:
    PopOrEnd 

TrainerAI_TagStrategy_Hail:
    ; If the move is Hail, apply modifiers for each of the attacker and partner which meet the
    ; following conditions:
    ;  - The battler has Ice Body -> score +2
    ;  - The battler has Snow Cloak -> score +2
    ;  - The battler knows Blizzard -> score +2
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_ICE_BODY, TrainerAI_TagStrategy_Hail_SelfScorePlus2
    IfLoadedEqualTo ABILITY_SNOW_CLOAK, TrainerAI_TagStrategy_Hail_SelfScorePlus2
    IfMoveKnown AI_BATTLER_ATTACKER, MOVE_BLIZZARD, TrainerAI_TagStrategy_Hail_SelfScorePlus2
    GoTo TrainerAI_TagStrategy_Hail_CheckPartner

TrainerAI_TagStrategy_Hail_SelfScorePlus2:
    AddToMoveScore 2

TrainerAI_TagStrategy_Hail_CheckPartner:
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_ICE_BODY
    IfLoadedEqualTo AI_HAVE, TrainerAI_TagStrategy_Hail_PartnerScorePlus2
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_SNOW_CLOAK
    IfLoadedEqualTo AI_HAVE, TrainerAI_TagStrategy_Hail_PartnerScorePlus2
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_BLIZZARD, TrainerAI_TagStrategy_Hail_PartnerScorePlus2
    GoTo TrainerAI_TagStrategy_Hail_End

TrainerAI_TagStrategy_Hail_PartnerScorePlus2:
    AddToMoveScore 2

TrainerAI_TagStrategy_Hail_End:
    PopOrEnd 

TrainerAI_TagStrategy_Sandstorm:
    ; If the move is Sandstorm, apply modifiers for each of the attacker and partner which meet the
    ; following conditions:
    ;  - The battler has Sand Veil -> score +2
    ;  - The battler has a Rock typing -> score +2
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_SAND_VEIL, TrainerAI_TagStrategy_Sandstorm_SelfScorePlus2
    LoadTypeFrom LOAD_ATTACKER_TYPE_1
    IfLoadedEqualTo TYPE_ROCK, TrainerAI_TagStrategy_Sandstorm_SelfScorePlus2
    LoadTypeFrom LOAD_ATTACKER_TYPE_2
    IfLoadedEqualTo TYPE_ROCK, TrainerAI_TagStrategy_Sandstorm_SelfScorePlus2
    GoTo TrainerAI_TagStrategy_Sandstorm_CheckPartner

TrainerAI_TagStrategy_Sandstorm_SelfScorePlus2:
    AddToMoveScore 2
    GoTo TrainerAI_TagStrategy_Sandstorm_CheckPartner

TrainerAI_TagStrategy_Sandstorm_CheckPartner:
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_SAND_VEIL
    IfLoadedEqualTo AI_HAVE, TrainerAI_TagStrategy_Sandstorm_PartnerScorePlus2
    LoadTypeFrom LOAD_ATTACKER_PARTNER_TYPE_1
    IfLoadedEqualTo TYPE_ROCK, TrainerAI_TagStrategy_Sandstorm_PartnerScorePlus2
    LoadTypeFrom LOAD_ATTACKER_PARTNER_TYPE_2
    IfLoadedEqualTo TYPE_ROCK, TrainerAI_TagStrategy_Sandstorm_PartnerScorePlus2
    GoTo TrainerAI_TagStrategy_Sandstorm_End

TrainerAI_TagStrategy_Sandstorm_PartnerScorePlus2:
    AddToMoveScore 2

TrainerAI_TagStrategy_Sandstorm_End:
    PopOrEnd 

TrainerAI_TagStrategy_Gravity:
    ; If Gravity is currently active, score -30
    IfFieldConditionsMask FIELD_CONDITION_GRAVITY, TrainerAI_TagStrategy_PartnerScoreMinus30

    ; Apply the following score modifiers:
    ;  - For each allied battler which has Levitate, a Flying typing, or is under the effect of
    ;    Magnet Rise -> score -5
    ;  - For each enemy battler which has Levitate, a Flying typing, or is under the effect of
    ;    Magnet Rise -> 75% chance of score +3
    CheckBattlerAbility AI_BATTLER_ATTACKER, ABILITY_LEVITATE
    IfLoadedEqualTo AI_HAVE, TrainerAI_TagStrategy_Gravity_SelfScoreMinus5
    FlagBattlerIsType AI_BATTLER_ATTACKER, TYPE_FLYING
    IfLoadedEqualTo AI_HAVE, TrainerAI_TagStrategy_Gravity_SelfScoreMinus5
    IfMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_MAGNET_RISE, TrainerAI_TagStrategy_Gravity_SelfScoreMinus5
    GoTo TrainerAI_TagStrategy_Gravity_CheckPartner

TrainerAI_TagStrategy_Gravity_SelfScoreMinus5:
    AddToMoveScore -5
    GoTo TrainerAI_TagStrategy_Gravity_CheckPartner

TrainerAI_TagStrategy_Gravity_CheckPartner:
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_LEVITATE
    IfLoadedEqualTo AI_HAVE, TrainerAI_TagStrategy_Gravity_PartnerScoreMinus5
    FlagBattlerIsType AI_BATTLER_ATTACKER_PARTNER, TYPE_FLYING
    IfLoadedEqualTo AI_HAVE, TrainerAI_TagStrategy_Gravity_PartnerScoreMinus5
    IfMoveEffect AI_BATTLER_ATTACKER_PARTNER, MOVE_EFFECT_MAGNET_RISE, TrainerAI_TagStrategy_Gravity_PartnerScoreMinus5
    GoTo TrainerAI_TagStrategy_Gravity_CheckTarget

TrainerAI_TagStrategy_Gravity_PartnerScoreMinus5:
    AddToMoveScore -5
    GoTo TrainerAI_TagStrategy_Gravity_CheckTarget

TrainerAI_TagStrategy_Gravity_CheckTarget:
    CheckBattlerAbility AI_BATTLER_DEFENDER, ABILITY_LEVITATE
    IfLoadedEqualTo AI_HAVE, TrainerAI_TagStrategy_Gravity_TargetTryScorePlus3
    FlagBattlerIsType AI_BATTLER_DEFENDER, TYPE_FLYING
    IfLoadedEqualTo AI_HAVE, TrainerAI_TagStrategy_Gravity_TargetTryScorePlus3
    IfMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_MAGNET_RISE, TrainerAI_TagStrategy_Gravity_TargetTryScorePlus3
    GoTo TrainerAI_TagStrategy_Gravity_CheckTargetPartner

TrainerAI_TagStrategy_Gravity_TargetTryScorePlus3:
    IfRandomLessThan 64, TrainerAI_TagStrategy_Gravity_CheckTargetPartner
    AddToMoveScore 3
    GoTo TrainerAI_TagStrategy_Gravity_CheckTargetPartner

TrainerAI_TagStrategy_Gravity_CheckTargetPartner:
    CheckBattlerAbility AI_BATTLER_DEFENDER_PARTNER, ABILITY_LEVITATE
    IfLoadedEqualTo AI_HAVE, TrainerAI_TagStrategy_Gravity_TargetPartnerTryScorePlus3
    FlagBattlerIsType AI_BATTLER_DEFENDER_PARTNER, TYPE_FLYING
    IfLoadedEqualTo AI_HAVE, TrainerAI_TagStrategy_Gravity_TargetPartnerTryScorePlus3
    IfMoveEffect AI_BATTLER_DEFENDER_PARTNER, MOVE_EFFECT_MAGNET_RISE, TrainerAI_TagStrategy_Gravity_TargetPartnerTryScorePlus3
    GoTo TrainerAI_TagStrategy_Gravity_End

TrainerAI_TagStrategy_Gravity_TargetPartnerTryScorePlus3:
    IfRandomLessThan 64, TrainerAI_TagStrategy_Gravity_End
    AddToMoveScore 3
    GoTo TrainerAI_TagStrategy_Gravity_End

TrainerAI_TagStrategy_Gravity_End:
    PopOrEnd 

TrainerAI_TagStrategy_TrickRoom:
    ; If the battle has been reduced to either side having only one active Pokemon, score -30
    IfHPPercentEqualTo AI_BATTLER_ATTACKER_PARTNER, 0, TrainerAI_ScoreMinus30
    IfHPPercentEqualTo AI_BATTLER_DEFENDER_PARTNER, 0, TrainerAI_ScoreMinus30
    IfHPPercentEqualTo AI_BATTLER_DEFENDER, 0, TrainerAI_ScoreMinus30

    ; Branch according to the attacker's Speed-ordering in battle
    LoadBattlerSpeedRank AI_BATTLER_ATTACKER
    IfLoadedEqualTo 0, TrainerAI_TagStrategy_TrickRoom_SelfMovesFirst
    IfLoadedEqualTo 1, TrainerAI_TagStrategy_TrickRoom_SelfMovesSecond
    IfLoadedEqualTo 2, TrainerAI_TagStrategy_TrickRoom_SelfMovesThird
    IfLoadedEqualTo 3, TrainerAI_TagStrategy_TrickRoom_SelfMovesLast
    GoTo TrainerAI_TagStrategy_TrickRoom_End

TrainerAI_TagStrategy_TrickRoom_SelfMovesFirst:
    ; If our partner moves second, score -30
    LoadBattlerSpeedRank AI_BATTLER_ATTACKER_PARTNER
    IfLoadedEqualTo 1, TrainerAI_ScoreMinus30
    IfLoadedEqualTo 0, TrainerAI_ScoreMinus30
    GoTo TrainerAI_TagStrategy_TrickRoom_ScoreMinus5

TrainerAI_TagStrategy_TrickRoom_SelfMovesSecond:
    ; If our partner moves before us, score -30
    LoadBattlerSpeedRank AI_BATTLER_ATTACKER_PARTNER
    IfLoadedEqualTo 0, TrainerAI_ScoreMinus30
    GoTo TrainerAI_TagStrategy_TrickRoom_ScoreMinus5

TrainerAI_TagStrategy_TrickRoom_SelfMovesThird:
    ; If our partner does not move last in turn-order, score -5
    LoadBattlerSpeedRank AI_BATTLER_ATTACKER_PARTNER
    IfLoadedNotEqualTo 3, TrainerAI_TagStrategy_TrickRoom_ScoreMinus5

    ; 75% chance of score +5, 25% chance of score -5
    IfRandomLessThan 64, TrainerAI_TagStrategy_TrickRoom_ScoreMinus5
    AddToMoveScore 5
    GoTo TrainerAI_TagStrategy_TrickRoom_End

TrainerAI_TagStrategy_TrickRoom_SelfMovesLast:
    ; If our partner does not move third in turn-order, score -5
    LoadBattlerSpeedRank AI_BATTLER_ATTACKER_PARTNER
    IfLoadedNotEqualTo 2, TrainerAI_TagStrategy_TrickRoom_ScoreMinus5

    ; 75% chance of score +5, 25% chance of score -5
    IfRandomLessThan 64, TrainerAI_TagStrategy_TrickRoom_ScoreMinus5
    AddToMoveScore 5
    GoTo TrainerAI_TagStrategy_TrickRoom_End

TrainerAI_TagStrategy_TrickRoom_ScoreMinus5:
    AddToMoveScore -5

TrainerAI_TagStrategy_TrickRoom_End:
    PopOrEnd 

TrainerAI_TagStrategy_FollowMe:
    ; If the move is Follow Me, apply a score modifier according to the following conditional tree:
    ;  - If the attacker's HP > 90%, and:
    ;    - If the partner's HP > 90%, 75% chance of score -1
    ;    - If the partner's HP is between 50% and 90%, 75% chance of score +1
    ;    - If the partner's HP is between 30% and 50%, 75% chance of score +2
    ;    - If the partner's HP is < 30%, 75% chance of score +3
    ;  - If the attacker's HP is between 50% and 90%, and:
    ;    - If the partner's HP > 90%, 75% chance of score -2
    ;    - If the partner's HP is between 50% and 90%, 75% chance of score -1
    ;    - If the partner's HP is between 30% and 50%, 75% chance of score +1
    ;    - If the partner's HP is < 30%, 75% chance of score +2
    ;  - If the attacker's HP is between 30% and 50%, and:
    ;    - If the partner's HP > 90%, 75% chance of score -2
    ;    - If the partner's HP is between 50% and 90%, 75% chance of score -2
    ;    - If the partner's HP is between 30% and 50%, 75% chance of score +1
    ;    - If the partner's HP is < 30%, 75% chance of score +2
    ;  - If the attacker's HP < 30%, 75% chance of score -5
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 90, TrainerAI_TagStrategy_FollowMe_SelfHighHP
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 50, TrainerAI_TagStrategy_FollowMe_SelfMediumHP
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 30, TrainerAI_TagStrategy_FollowMe_SelfLowHP
    IfRandomLessThan 64, TrainerAI_TagStrategy_FollowMe_End
    GoTo TrainerAI_ScoreMinus5

TrainerAI_TagStrategy_FollowMe_SelfHighHP:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 90, TrainerAI_TagStrategy_FollowMe_TryScoreMinus1
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 50, TrainerAI_TagStrategy_FollowMe_TryScorePlus1
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 30, TrainerAI_TagStrategy_FollowMe_TryScorePlus2
    GoTo TrainerAI_TagStrategy_FollowMe_TryScorePlus3

TrainerAI_TagStrategy_FollowMe_SelfMediumHP:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 90, TrainerAI_TagStrategy_FollowMe_TryScoreMinus2
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 50, TrainerAI_TagStrategy_FollowMe_TryScoreMinus1
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 30, TrainerAI_TagStrategy_FollowMe_TryScorePlus1
    GoTo TrainerAI_TagStrategy_FollowMe_TryScorePlus2

TrainerAI_TagStrategy_FollowMe_SelfLowHP:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 90, TrainerAI_TagStrategy_FollowMe_TryScoreMinus2
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 50, TrainerAI_TagStrategy_FollowMe_TryScoreMinus2
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 30, TrainerAI_TagStrategy_FollowMe_TryScorePlus1
    GoTo TrainerAI_TagStrategy_FollowMe_TryScorePlus2

TrainerAI_TagStrategy_FollowMe_TryScoreMinus1:
    IfRandomLessThan 64, TrainerAI_TagStrategy_FollowMe_End
    AddToMoveScore -1
    GoTo TrainerAI_TagStrategy_FollowMe_End

TrainerAI_TagStrategy_FollowMe_TryScoreMinus2:
    IfRandomLessThan 64, TrainerAI_TagStrategy_FollowMe_End
    AddToMoveScore -2
    GoTo TrainerAI_TagStrategy_FollowMe_End

TrainerAI_TagStrategy_FollowMe_TryScorePlus1:
    IfRandomLessThan 64, TrainerAI_TagStrategy_FollowMe_End
    AddToMoveScore 1
    GoTo TrainerAI_TagStrategy_FollowMe_End

TrainerAI_TagStrategy_FollowMe_TryScorePlus2:
    IfRandomLessThan 64, TrainerAI_TagStrategy_FollowMe_End
    AddToMoveScore 2
    GoTo TrainerAI_TagStrategy_FollowMe_End

TrainerAI_TagStrategy_FollowMe_TryScorePlus3:
    IfRandomLessThan 64, TrainerAI_TagStrategy_FollowMe_End
    AddToMoveScore 3
    GoTo TrainerAI_TagStrategy_FollowMe_End

TrainerAI_TagStrategy_FollowMe_End:
    PopOrEnd 

TrainerAI_TagStrategy_PartnerKnowsHelpingHand:
    ; If our partner knows Helping Hand, then damaging moves (aside from flat-damage moves)
    ; get score +1
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ONE_HIT_KO, TrainerAI_TagStrategy_PartnerHelpingHand_End
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_40_DAMAGE_FLAT, TrainerAI_TagStrategy_PartnerHelpingHand_End
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_LEVEL_DAMAGE_FLAT, TrainerAI_TagStrategy_PartnerHelpingHand_End
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RANDOM_DAMAGE_1_TO_150_LEVEL, TrainerAI_TagStrategy_PartnerHelpingHand_End
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_10_DAMAGE_FLAT, TrainerAI_TagStrategy_PartnerHelpingHand_End
    FlagMoveDamageScore FALSE
    IfLoadedNotEqualTo AI_NO_COMPARISON_MADE, TrainerAI_ScorePlus1

TrainerAI_TagStrategy_PartnerHelpingHand_End:
    PopOrEnd 

TrainerAI_TagStrategy_Unused_1:
    IfStatus AI_BATTLER_ATTACKER, MON_CONDITION_ANY, TrainerAI_TagStrategy_Unused_2
    PopOrEnd 

TrainerAI_TagStrategy_Unused_2:
    FlagMoveDamageScore FALSE
    IfLoadedEqualTo AI_NO_COMPARISON_MADE, TrainerAI_ScoreMinus5
    AddToMoveScore 1
    IfLoadedEqualTo AI_MOVE_IS_HIGHEST_DAMAGE, TrainerAI_ScorePlus2
    PopOrEnd 

TrainerAI_TagStrategy_Earthquake:
    ; If the move is Earthquake and our partner:
    ;  - Is immune to Earthquake (has Levitate, a Flying typing, or Magnet Rise), score +2
    ;  - Is weak to Earthquake (has Fire, Electric, Poison, or Rock typing), score -10
    ;  - Otherwise, score -3
    ;
    ; Note that this does not check for if the partner is alive; this means that a solo
    ; battler will score Earthquake and Magnitude an additional -3
    IfMoveEffect AI_BATTLER_ATTACKER_PARTNER, MOVE_EFFECT_MAGNET_RISE, TrainerAI_ScorePlus2
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_LEVITATE
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScorePlus2
    FlagBattlerIsType AI_BATTLER_ATTACKER_PARTNER, TYPE_FLYING
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScorePlus2
    FlagBattlerIsType AI_BATTLER_ATTACKER_PARTNER, TYPE_FIRE
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScoreMinus10
    FlagBattlerIsType AI_BATTLER_ATTACKER_PARTNER, TYPE_ELECTRIC
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScoreMinus10
    FlagBattlerIsType AI_BATTLER_ATTACKER_PARTNER, TYPE_POISON
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScoreMinus10
    FlagBattlerIsType AI_BATTLER_ATTACKER_PARTNER, TYPE_ROCK
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScoreMinus10
    GoTo TrainerAI_ScoreMinus3

TrainerAI_TagStrategy_FutureSight:
    ; If the move is Future Sight or Doom Desire:
    ;  - If we have no partner, apply no additional modifiers
    ;  - If our partner knows Future Sight or Doom Desire and:
    ;    - They would move before us, score -3
    ;    - They speed-tie us, 50% chance of score -3
    IfHPPercentEqualTo AI_BATTLER_ATTACKER_PARTNER, 0, TrainerAI_TagStrategy_FutureSight_End
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_FUTURE_SIGHT, TrainerAI_TagStrategy_FutureSight_CheckSelfSpeed
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_DOOM_DESIRE, TrainerAI_TagStrategy_FutureSight_CheckSelfSpeed
    GoTo TrainerAI_TagStrategy_FutureSight_End

TrainerAI_TagStrategy_FutureSight_CheckSelfSpeed:
    LoadBattlerSpeedRank AI_BATTLER_ATTACKER
    IfLoadedEqualTo 3, TrainerAI_ScoreMinus3
    IfLoadedEqualTo 2, TrainerAI_TagStrategy_FutureSight_SelfMovesThird
    IfLoadedEqualTo 1, TrainerAI_TagStrategy_FutureSight_SelfMovesSecond
    IfLoadedEqualTo 0, TrainerAI_TagStrategy_FutureSight_SelfMovesFirst
    GoTo TrainerAI_TagStrategy_FutureSight_End

TrainerAI_TagStrategy_FutureSight_SelfMovesThird:
    LoadBattlerSpeedRank AI_BATTLER_ATTACKER_PARTNER
    IfLoadedEqualTo 0, TrainerAI_ScoreMinus3
    IfLoadedEqualTo 1, TrainerAI_ScoreMinus3
    IfRandomLessThan 128, TrainerAI_TagStrategy_FutureSight_End
    LoadBattlerSpeedRank AI_BATTLER_ATTACKER_PARTNER
    IfLoadedEqualTo 2, TrainerAI_ScoreMinus3
    GoTo TrainerAI_TagStrategy_FutureSight_End

TrainerAI_TagStrategy_FutureSight_SelfMovesSecond:
    LoadBattlerSpeedRank AI_BATTLER_ATTACKER_PARTNER
    IfLoadedEqualTo 0, TrainerAI_ScoreMinus3
    IfRandomLessThan 128, TrainerAI_TagStrategy_FutureSight_End
    LoadBattlerSpeedRank AI_BATTLER_ATTACKER_PARTNER
    IfLoadedEqualTo 1, TrainerAI_ScoreMinus3
    GoTo TrainerAI_TagStrategy_FutureSight_End

TrainerAI_TagStrategy_FutureSight_SelfMovesFirst:
    IfRandomLessThan 128, TrainerAI_TagStrategy_FutureSight_End
    LoadBattlerSpeedRank AI_BATTLER_ATTACKER_PARTNER
    IfLoadedEqualTo 0, TrainerAI_ScoreMinus3
    GoTo TrainerAI_TagStrategy_FutureSight_End

TrainerAI_TagStrategy_FutureSight_End:
    PopOrEnd 

TrainerAI_TagStrategy_SkillSwap:
    ; If the move is Skill Swap and:
    ;  - The attacker has Truant, Slow Start, Stall, or Klutz, score +5
    ;  - The target has Shadow Tag, Pure Power, Huge Power, Mold Breaker, Solid Rock, Filter, or
    ;    Flower Gift, score +2
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_TRUANT, TrainerAI_ScorePlus5
    IfLoadedEqualTo ABILITY_SLOW_START, TrainerAI_ScorePlus5
    IfLoadedEqualTo ABILITY_STALL, TrainerAI_ScorePlus5
    IfLoadedEqualTo ABILITY_KLUTZ, TrainerAI_ScorePlus5
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_SHADOW_TAG, TrainerAI_ScorePlus2
    IfLoadedEqualTo ABILITY_PURE_POWER, TrainerAI_ScorePlus2
    IfLoadedEqualTo ABILITY_HUGE_POWER, TrainerAI_ScorePlus2
    IfLoadedEqualTo ABILITY_MOLD_BREAKER, TrainerAI_ScorePlus2
    IfLoadedEqualTo ABILITY_SOLID_ROCK, TrainerAI_ScorePlus2
    IfLoadedEqualTo ABILITY_FILTER, TrainerAI_ScorePlus2
    IfLoadedEqualTo ABILITY_FLOWER_GIFT, TrainerAI_ScorePlus2
    PopOrEnd 

TrainerAI_TagStrategy_CheckElectricMove:
    ; If the move is Discharge, handle it similarly to Earthquake. Otherwise, apply all of the
    ; following which are met:
    ;  - The target's partner would redirect the move with Lightning Rod, score -1; additional
    ;    score -8 if the target's partner is also a Ground type
    ;  - The attacker's partner has Lightning Rod, score -10
    IfMoveEqualTo MOVE_DISCHARGE, TrainerAI_TagStrategy_SpreadElectricMove
    CheckBattlerAbility AI_BATTLER_DEFENDER_PARTNER, ABILITY_LIGHTNING_ROD
    IfLoadedEqualTo AI_HAVE, TrainerAI_TagStrategy_TargetProtectedByLightningRod
    GoTo TrainerAI_TagStrategy_PartnerHasLightningRod

TrainerAI_TagStrategy_TargetProtectedByLightningRod:
    AddToMoveScore -1
    FlagBattlerIsType AI_BATTLER_DEFENDER_PARTNER, TYPE_GROUND
    IfLoadedEqualTo AI_NOT_HAVE, TrainerAI_TagStrategy_PartnerHasLightningRod
    AddToMoveScore -8

TrainerAI_TagStrategy_PartnerHasLightningRod:
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_LIGHTNING_ROD
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScoreMinus10
    IfMoveEqualTo MOVE_DISCHARGE, TrainerAI_TagStrategy_SpreadElectricMove
    GoTo TrainerAI_TagStrategy_CheckElectric_End

TrainerAI_TagStrategy_SpreadElectricMove:
    ; If our partner has Volt Absorb or Motor Drive, score +3
    ;
    ; If our partner otherwise has a Water or Flying typing, score -10
    ;
    ; If our partner otherwise has a Ground typing, score +3
    ;
    ; Else, score -3
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_MOTOR_DRIVE
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScorePlus3
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_VOLT_ABSORB
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScorePlus3
    FlagBattlerIsType AI_BATTLER_ATTACKER_PARTNER, TYPE_WATER
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScoreMinus10
    FlagBattlerIsType AI_BATTLER_ATTACKER_PARTNER, TYPE_FLYING
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScoreMinus10

    ; BUG: This should be before the checks for all other types; in its present position, the
    ; vanilla trainer AI will never use Discharge if their partner is, e.g., Swampert or Gliscor
    ; (which should be treated as Immune to the move, but are not).
    FlagBattlerIsType AI_BATTLER_ATTACKER_PARTNER, TYPE_GROUND
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScorePlus3
    AddToMoveScore -3

TrainerAI_TagStrategy_CheckElectric_End:
    PopOrEnd 

TrainerAI_TagStrategy_CheckWaterMove:
    ; If the move is Surf, handle it similarly to Earthquake. Otherwise, apply all of the
    ; following which are met:
    ;  - The target's partner would redirect the move with Storm Drain, score -1
    ;  - The attacker's partner has Storm Drain, score -10
    IfMoveEqualTo MOVE_SURF, TrainerAI_TagStrategy_SpreadWaterMove
    CheckBattlerAbility AI_BATTLER_DEFENDER_PARTNER, ABILITY_STORM_DRAIN
    IfLoadedEqualTo AI_NOT_HAVE, TrainerAI_TagStrategy_CheckPartnerStormDrain
    AddToMoveScore -1

TrainerAI_TagStrategy_CheckPartnerStormDrain:
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_STORM_DRAIN
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScoreMinus10

    ; This line should never result in a branch
    IfMoveEqualTo MOVE_SURF, TrainerAI_TagStrategy_SpreadWaterMove
    GoTo TrainerAI_TagStrategy_CheckWater_End

TrainerAI_TagStrategy_SpreadWaterMove:
    ; If our partner has Dry Skin or Water Absorb, score +3
    ;
    ; If our partner otherwise has a Ground or Fire typing, score -10
    ;
    ; Else, score -3
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_DRY_SKIN
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScorePlus3
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_WATER_ABSORB
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScorePlus3

    ; BUG: This should also include a similar check for the Rock type
    FlagBattlerIsType AI_BATTLER_ATTACKER_PARTNER, TYPE_GROUND
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScoreMinus10
    FlagBattlerIsType AI_BATTLER_ATTACKER_PARTNER, TYPE_FIRE
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScoreMinus10
    AddToMoveScore -3

TrainerAI_TagStrategy_CheckWater_End:
    PopOrEnd 

TrainerAI_TagStrategy_CheckFireMove:
    ; If the AI's Flash Fire has been activated, score additional +1 on top of all further modifiers
    ;
    ; If the move is Lava Plume, then:
    ;  - If our partner has Dry Skin or Flash Fire, score +3
    ;  - If our partner has a Grass, Steel, Ice, or Bug typing, score -10
    ;  - Otherwise, score -3
    IfActivatedFlashFire AI_BATTLER_ATTACKER, TrainerAI_TagStrategy_FlashFireScorePlus1
    GoTo TrainerAI_TagStrategy_CheckLavaPlume

TrainerAI_TagStrategy_FlashFireScorePlus1:
    AddToMoveScore 1

TrainerAI_TagStrategy_CheckLavaPlume:
    IfMoveEqualTo MOVE_LAVA_PLUME, TrainerAI_TagStrategy_SpreadFireMove
    GoTo TrainerAI_TagStrategy_CheckFire_End

TrainerAI_TagStrategy_SpreadFireMove:
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_DRY_SKIN
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScoreMinus3
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_FLASH_FIRE
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScorePlus3
    FlagBattlerIsType AI_BATTLER_ATTACKER_PARTNER, TYPE_GRASS
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScoreMinus10
    FlagBattlerIsType AI_BATTLER_ATTACKER_PARTNER, TYPE_STEEL
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScoreMinus10
    FlagBattlerIsType AI_BATTLER_ATTACKER_PARTNER, TYPE_ICE
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScoreMinus10
    FlagBattlerIsType AI_BATTLER_ATTACKER_PARTNER, TYPE_BUG
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScoreMinus10
    AddToMoveScore -3

TrainerAI_TagStrategy_CheckFire_End:
    PopOrEnd 

TrainerAI_TagStrategy_Partner:
    IfBattlerFainted AI_BATTLER_ATTACKER_PARTNER, TrainerAI_TagStrategy_PartnerScoreMinus30
    FlagMoveDamageScore FALSE
    IfLoadedEqualTo AI_NO_COMPARISON_MADE, TrainerAI_TagStrategy_PartnerStatusMove
    LoadTypeFrom LOAD_MOVE_TYPE
    IfLoadedEqualTo TYPE_FIRE, TrainerAI_TagStrategy_CheckPartnerFireAbsorption
    IfLoadedEqualTo TYPE_ELECTRIC, TrainerAI_TagStrategy_CheckPartnerElectricAbsorption
    IfLoadedEqualTo TYPE_WATER, TrainerAI_TagStrategy_CheckPartnerWaterAbsorption
    IfMoveEqualTo MOVE_FLING, TrainerAI_TagStrategy_PartnerTrick

TrainerAI_TagStrategy_ScoreMinus30:
    GoTo TrainerAI_ScoreMinus30

TrainerAI_TagStrategy_CheckPartnerFireAbsorption:
    ; If our partner has Flash Fire and has not yet activated Flash Fire, score +3
    ;
    ; Otherwise, score -30
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_FLASH_FIRE
    IfLoadedEqualTo AI_HAVE, TrainerAI_TagStrategy_CheckPartnerFlashFireActive
    GoTo TrainerAI_TagStrategy_ScoreMinus30

TrainerAI_TagStrategy_CheckPartnerFlashFireActive:
    IfActivatedFlashFire AI_BATTLER_ATTACKER_PARTNER, TrainerAI_TagStrategy_ScoreMinus30
    GoTo TrainerAI_ScorePlus3

TrainerAI_TagStrategy_CheckPartnerElectricAbsorption:
    ; If our partner has Motor Drive:
    ;  - 62.5% chance of no score change
    ;  - If our partner is at +6 speed, score -30
    ;  - Else, score +3
    ;
    ; If our partner has Volt Absorb:
    ;  - If our partner is at 100% HP, score -10
    ;  - If our partner's HP >90%, no score change
    ;  - If our partner's HP >75%, 25% chance of score +3, 75% chance of no change
    ;  - If our partner's HP >50%, 50% chance of score +3, 50% chance of no change
    ;  - Else, 75% chance of score +3, 25% chance of no change
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_MOTOR_DRIVE
    IfLoadedEqualTo AI_HAVE, TrainerAI_TagStrategy_CheckPartnerMotorDrive
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_VOLT_ABSORB
    IfLoadedEqualTo AI_HAVE, TrainerAI_TagStrategy_CheckPartnerVoltAbsorb
    GoTo TrainerAI_TagStrategy_ScoreMinus30

TrainerAI_TagStrategy_CheckPartnerMotorDrive:
    IfRandomLessThan 160, TrainerAI_TagStrategy_CheckElectricAbsorption_End
    IfStatStageEqualTo AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_SPEED, 12, TrainerAI_TagStrategy_ScoreMinus30
    GoTo TrainerAI_ScorePlus3

TrainerAI_TagStrategy_CheckPartnerVoltAbsorb:
    IfHPPercentEqualTo AI_BATTLER_ATTACKER_PARTNER, 100, TrainerAI_ScoreMinus10
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 90, TrainerAI_TagStrategy_CheckElectricAbsorption_End
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 75, TrainerAI_TagStrategy_PartnerVoltAbsorb_75PercentHP
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 50, TrainerAI_TagStrategy_PartnerVoltAbsorb_50PercentHP
    GoTo TrainerAI_TagStrategy_PartnerVoltAbsorb_LessThan50PercentHP

TrainerAI_TagStrategy_PartnerVoltAbsorb_75PercentHP:
    IfRandomLessThan 64, TrainerAI_ScorePlus3
    GoTo TrainerAI_TagStrategy_CheckElectricAbsorption_End

TrainerAI_TagStrategy_PartnerVoltAbsorb_50PercentHP:
    IfRandomLessThan 128, TrainerAI_ScorePlus3
    GoTo TrainerAI_TagStrategy_CheckElectricAbsorption_End

TrainerAI_TagStrategy_PartnerVoltAbsorb_LessThan50PercentHP:
    IfRandomLessThan 192, TrainerAI_ScorePlus3
    GoTo TrainerAI_TagStrategy_CheckElectricAbsorption_End

TrainerAI_TagStrategy_CheckElectricAbsorption_End:
    PopOrEnd 

TrainerAI_TagStrategy_CheckPartnerWaterAbsorption:
    ; If our partner has Water Absorb or Dry Skin:
    ;  - If our partner is at 100% HP, score -10
    ;  - If our partner's HP >90%, no score change
    ;  - If our partner's HP >75%, 25% chance of score +3, 75% chance of no change
    ;  - If our partner's HP >50%, 50% chance of score +3, 50% chance of no change
    ;  - Else, 75% chance of score +3, 25% chance of no change
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_WATER_ABSORB
    IfLoadedEqualTo AI_HAVE, TrainerAI_TagStrategy_PartnerWaterAbsorb
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_DRY_SKIN
    IfLoadedEqualTo AI_HAVE, TrainerAI_TagStrategy_PartnerWaterAbsorb
    GoTo TrainerAI_TagStrategy_ScoreMinus30

TrainerAI_TagStrategy_PartnerWaterAbsorb:
    IfHPPercentEqualTo AI_BATTLER_ATTACKER_PARTNER, 100, TrainerAI_ScoreMinus10
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 90, TrainerAI_TagStrategy_CheckWaterAbsorption_End
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 75, TrainerAI_TagStrategy_PartnerWaterAbsorb_75PercentHP
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 50, TrainerAI_TagStrategy_PartnerWaterAbsorb_50PercentHP
    GoTo TrainerAI_TagStrategy_PartnerWaterAbsorb_LessThan50PercentHP

TrainerAI_TagStrategy_PartnerWaterAbsorb_75PercentHP:
    IfRandomLessThan 64, TrainerAI_ScorePlus3
    GoTo TrainerAI_TagStrategy_CheckWaterAbsorption_End

TrainerAI_TagStrategy_PartnerWaterAbsorb_50PercentHP:
    IfRandomLessThan 128, TrainerAI_ScorePlus3
    GoTo TrainerAI_TagStrategy_CheckWaterAbsorption_End

TrainerAI_TagStrategy_PartnerWaterAbsorb_LessThan50PercentHP:
    IfRandomLessThan 192, TrainerAI_ScorePlus3
    GoTo TrainerAI_TagStrategy_CheckWaterAbsorption_End

TrainerAI_TagStrategy_CheckWaterAbsorption_End:
    PopOrEnd 

TrainerAI_TagStrategy_PartnerStatusMove:
    IfMoveEqualTo MOVE_SKILL_SWAP, TrainerAI_TagStrategy_PartnerSkillSwap
    IfMoveEqualTo MOVE_WILL_O_WISP, TrainerAI_TagStrategy_PartnerWillOWisp
    IfMoveEqualTo MOVE_THUNDER_WAVE, TrainerAI_TagStrategy_PartnerThunderWave
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STATUS_BADLY_POISON, TrainerAI_TagStrategy_PartnerPoisonStatus
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STATUS_POISON, TrainerAI_TagStrategy_PartnerPoisonStatus
    IfMoveEqualTo MOVE_HELPING_HAND, TrainerAI_TagStrategy_PartnerUsingHelpingHand
    IfMoveEqualTo MOVE_SWAGGER, TrainerAI_TagStrategy_PartnerSwagger
    IfMoveEqualTo MOVE_TRICK, TrainerAI_TagStrategy_PartnerTrick
    IfMoveEqualTo MOVE_SWITCHEROO, TrainerAI_TagStrategy_PartnerTrick
    IfMoveEqualTo MOVE_GASTRO_ACID, TrainerAI_TagStrategy_PartnerGastroAcid
    IfMoveEqualTo MOVE_ACUPRESSURE, TrainerAI_TagStrategy_PartnerAcupressure
    GoTo TrainerAI_TagStrategy_PartnerScoreMinus30

TrainerAI_TagStrategy_PartnerSkillSwap:
    ; If our partner has Truant or Slow Start, score +10.
    ;
    ; If we can give Levitate to an Electric-type partner, score +1; additional +1 if our partner
    ; is mono-Electric.
    ;
    ; If we can give an Accuracy-increasing ability and our partner has an inaccurate move, score +3.
    ;
    ; Otherwise, score -30.
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_TRUANT, TrainerAI_ScorePlus10
    IfLoadedEqualTo ABILITY_SLOW_START, TrainerAI_ScorePlus10

    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedNotEqualTo ABILITY_LEVITATE, TrainerAI_TagStrategy_PartnerSkillSwap_GiveAccuracyIncrease

    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_LEVITATE, TrainerAI_TagStrategy_PartnerScoreMinus30

    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedNotEqualTo TYPE_ELECTRIC, TrainerAI_TagStrategy_PartnerSkillSwap_GiveAccuracyIncrease
    AddToMoveScore 1

    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedNotEqualTo TYPE_ELECTRIC, TrainerAI_TagStrategy_PartnerSkillSwap_GiveAccuracyIncrease
    AddToMoveScore 1

    PopOrEnd 

TrainerAI_TagStrategy_PartnerSkillSwap_GiveAccuracyIncrease:
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_COMPOUND_EYES, TrainerAI_TagStrategy_PartnerSkillSwap_PartnerHasInaccurateMove
    IfLoadedEqualTo ABILITY_NO_GUARD, TrainerAI_TagStrategy_PartnerSkillSwap_PartnerHasInaccurateMove
    GoTo TrainerAI_TagStrategy_PartnerScoreMinus30

TrainerAI_TagStrategy_PartnerSkillSwap_PartnerHasInaccurateMove:
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_FIRE_BLAST, TrainerAI_TagStrategy_PartnerSkillSwap_ScorePlus3
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_THUNDER, TrainerAI_TagStrategy_PartnerSkillSwap_ScorePlus3
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_CROSS_CHOP, TrainerAI_TagStrategy_PartnerSkillSwap_ScorePlus3
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_HYDRO_PUMP, TrainerAI_TagStrategy_PartnerSkillSwap_ScorePlus3
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_DYNAMIC_PUNCH, TrainerAI_TagStrategy_PartnerSkillSwap_ScorePlus3
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_BLIZZARD, TrainerAI_TagStrategy_PartnerSkillSwap_ScorePlus3
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_ZAP_CANNON, TrainerAI_TagStrategy_PartnerSkillSwap_ScorePlus3
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_MEGAHORN, TrainerAI_TagStrategy_PartnerSkillSwap_ScorePlus3
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_FOCUS_BLAST, TrainerAI_TagStrategy_PartnerSkillSwap_ScorePlus3
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_GUNK_SHOT, TrainerAI_TagStrategy_PartnerSkillSwap_ScorePlus3
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_MAGMA_STORM, TrainerAI_TagStrategy_PartnerSkillSwap_ScorePlus3
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_POWER_WHIP, TrainerAI_TagStrategy_PartnerSkillSwap_ScorePlus3
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_SEED_FLARE, TrainerAI_TagStrategy_PartnerSkillSwap_ScorePlus3
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_HEAD_SMASH, TrainerAI_TagStrategy_PartnerSkillSwap_ScorePlus3
    GoTo TrainerAI_TagStrategy_PartnerScoreMinus30

TrainerAI_TagStrategy_PartnerSkillSwap_ScorePlus3:
    GoTo TrainerAI_ScorePlus3

TrainerAI_TagStrategy_PartnerWillOWisp:
    ; If our partner has Flash Fire, handle it identically to the earlier Fire Absorption routine
    ;
    ; If our partner meets all of the following conditions, score +5:
    ;  - Has the Guts ability
    ;  - Is not currently statused
    ;  - Does not have a Fire typing
    ;  - Is not holding a Flame Orb or Toxic Orb
    ;  - Is at 81% HP or greater
    ;
    ; Otherwise, score -30
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_FLASH_FIRE
    IfLoadedEqualTo AI_HAVE, TrainerAI_TagStrategy_CheckPartnerFireAbsorption

    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_GUTS
    IfLoadedNotEqualTo AI_HAVE, TrainerAI_TagStrategy_PartnerScoreMinus30

    IfStatus AI_BATTLER_ATTACKER_PARTNER, MON_CONDITION_ANY, TrainerAI_TagStrategy_PartnerScoreMinus30

    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_FIRE, TrainerAI_TagStrategy_PartnerScoreMinus30
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_FIRE, TrainerAI_TagStrategy_PartnerScoreMinus30

    IfHeldItemEqualTo AI_BATTLER_ATTACKER_PARTNER, ITEM_FLAME_ORB, TrainerAI_TagStrategy_PartnerScoreMinus30
    IfHeldItemEqualTo AI_BATTLER_ATTACKER_PARTNER, ITEM_TOXIC_ORB, TrainerAI_TagStrategy_PartnerScoreMinus30

    IfHPPercentLessThan AI_BATTLER_ATTACKER_PARTNER, 81, TrainerAI_TagStrategy_PartnerScoreMinus30

    GoTo TrainerAI_ScorePlus5

TrainerAI_TagStrategy_PartnerThunderWave:
    ; If our partner has a Ground typing or has an ability other than Motor Drive or Volt Absorb, score -30
    ;
    ; Otherwise, handle the move identically to other Electric moves
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_GROUND, TrainerAI_TagStrategy_PartnerScoreMinus30
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_GROUND, TrainerAI_TagStrategy_PartnerScoreMinus30

    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_MOTOR_DRIVE
    IfLoadedEqualTo AI_HAVE, TrainerAI_TagStrategy_CheckPartnerElectricAbsorption

    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_VOLT_ABSORB
    IfLoadedEqualTo AI_HAVE, TrainerAI_TagStrategy_CheckPartnerElectricAbsorption

    GoTo TrainerAI_TagStrategy_PartnerScoreMinus30

TrainerAI_TagStrategy_PartnerPoisonStatus:
    ; If our partner meets all of the following conditions, score +5:
    ;  - Has the Poison Heal ability
    ;  - Is not currently statused
    ;  - Is not holding a Toxic Orb
    ;  - Is at 81% HP or greater
    ;
    ; Otherwise, score -30
    ;
    ; BUG: This routine should also consider if the partner has a Poison or Steel typing.
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_POISON_HEAL
    IfLoadedNotEqualTo AI_HAVE, TrainerAI_TagStrategy_PartnerScoreMinus30

    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_ANY, TrainerAI_TagStrategy_PartnerScoreMinus30

    IfHeldItemEqualTo AI_BATTLER_ATTACKER_PARTNER, ITEM_TOXIC_ORB, TrainerAI_TagStrategy_PartnerScoreMinus30

    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 91, TrainerAI_TagStrategy_PartnerScoreMinus30

    GoTo TrainerAI_ScorePlus5

TrainerAI_TagStrategy_PartnerUsingHelpingHand:
    ; If we do not have a partner, score -30
    ;
    ; If our partner has more than 50% HP or would move first in the turn, 75% chance of score +2,
    ; 25% chance of score -1
    ;
    ; Else, no score changes
    IfHPPercentEqualTo AI_BATTLER_ATTACKER_PARTNER, 0, TrainerAI_ScoreMinus30
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 50, TrainerAI_TagStrategy_PartnerUsingHelpingHand_TryScorePlus2
    LoadBattlerSpeedRank AI_BATTLER_ATTACKER_PARTNER
    IfLoadedLessThan 1, TrainerAI_TagStrategy_PartnerUsingHelpingHand_TryScorePlus2
    GoTo TrainerAI_TagStrategy_PartnerUsingHelpingHand_End

TrainerAI_TagStrategy_PartnerUsingHelpingHand_TryScorePlus2:
    IfRandomLessThan 64, TrainerAI_ScoreMinus1
    AddToMoveScore 2

TrainerAI_TagStrategy_PartnerUsingHelpingHand_End:
    PopOrEnd 

TrainerAI_TagStrategy_PartnerSwagger:
    ; If our partner is holding neither a Persim Berry nor a Lum Berry, score -30
    ;
    ; If our partner is at less than +2 Attack, score +3
    ;
    ; Otherwise, no score changes
    ;
    ; Curiously, this does not consider if our partner's ability is Own Tempo.
    IfHeldItemEqualTo AI_BATTLER_DEFENDER, ITEM_PERSIM_BERRY, TrainerAI_TagStrategy_PartnerSwagger_TryScorePlus3
    IfHeldItemEqualTo AI_BATTLER_DEFENDER, ITEM_LUM_BERRY, TrainerAI_TagStrategy_PartnerSwagger_TryScorePlus3
    GoTo TrainerAI_TagStrategy_PartnerScoreMinus30

TrainerAI_TagStrategy_PartnerSwagger_TryScorePlus3:
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_ATTACK, 7, TrainerAI_TagStrategy_PartnerSwagger_End
    AddToMoveScore 3

TrainerAI_TagStrategy_PartnerSwagger_End:
    PopOrEnd 

TrainerAI_TagStrategy_PartnerTrick:
    PopOrEnd 

TrainerAI_TagStrategy_PartnerGastroAcid:
    ; If our partner's ability is already suppressed, score -30
    ;
    ; If our partner has Truant or Slow Start, score +5
    ;
    ; Otherwise, no score changes
    IfMoveEffect AI_BATTLER_ATTACKER_PARTNER, MOVE_EFFECT_ABILITY_SUPPRESSED, TrainerAI_TagStrategy_PartnerScoreMinus30

    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_TRUANT
    IfLoadedEqualTo AI_HAVE, TrainerAI_TagStrategy_PartnerGastroAcid_ScorePlus5

    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_SLOW_START
    IfLoadedEqualTo AI_HAVE, TrainerAI_TagStrategy_PartnerGastroAcid_ScorePlus5

    GoTo TrainerAI_TagStrategy_PartnerGastroAcid_End

TrainerAI_TagStrategy_PartnerGastroAcid_ScorePlus5:
    AddToMoveScore 5

TrainerAI_TagStrategy_PartnerGastroAcid_End:
    PopOrEnd 

TrainerAI_TagStrategy_PartnerAcupressure:
    ; If our partner has Simple and any stat at +3 stages, score -10
    ;
    ; Else if our partner has any stat at +6 stages, score -30
    ;
    ; Else if our partner's HP is 50% or lower, score -1
    ;
    ; Else if our partner's HP is 91% or higher, 68.75% chance of score +2, 31.25% chance of no score change
    ;
    ; Else 31.25% chance of score +2, 68.75% chance of no score change
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_SIMPLE
    IfLoadedEqualTo AI_HAVE, TrainerAI_TagStrategy_PartnerAcupressureSimple
    IfStatStageEqualTo AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_ATTACK, 12, TrainerAI_TagStrategy_PartnerScoreMinus30
    IfStatStageEqualTo AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_DEFENSE, 12, TrainerAI_TagStrategy_PartnerScoreMinus30
    IfStatStageEqualTo AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_SPEED, 12, TrainerAI_TagStrategy_PartnerScoreMinus30
    IfStatStageEqualTo AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_SP_ATTACK, 12, TrainerAI_TagStrategy_PartnerScoreMinus30
    IfStatStageEqualTo AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_SP_DEFENSE, 12, TrainerAI_TagStrategy_PartnerScoreMinus30
    IfStatStageEqualTo AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_EVASION, 12, TrainerAI_TagStrategy_PartnerScoreMinus30
    IfStatStageEqualTo AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_ACCURACY, 12, TrainerAI_TagStrategy_PartnerScoreMinus30
    GoTo TrainerAI_TagStrategy_PartnerAcupressure_CheckHP

TrainerAI_TagStrategy_PartnerAcupressureSimple:
    IfStatStageGreaterThan AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_ATTACK, 8, TrainerAI_ScoreMinus10
    IfStatStageGreaterThan AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_DEFENSE, 8, TrainerAI_ScoreMinus10
    IfStatStageGreaterThan AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_SPEED, 8, TrainerAI_ScoreMinus10
    IfStatStageGreaterThan AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_SP_ATTACK, 8, TrainerAI_ScoreMinus10
    IfStatStageGreaterThan AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_SP_DEFENSE, 8, TrainerAI_ScoreMinus10
    IfStatStageGreaterThan AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_EVASION, 8, TrainerAI_ScoreMinus10
    IfStatStageGreaterThan AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_ACCURACY, 8, TrainerAI_ScoreMinus10

TrainerAI_TagStrategy_PartnerAcupressure_CheckHP:
    IfHPPercentLessThan AI_BATTLER_ATTACKER_PARTNER, 51, TrainerAI_TagStrategy_PartnerAcupressure_ScoreMinus1
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 90, TrainerAI_TagStrategy_PartnerAcupressure_TryScorePlus2
    IfRandomLessThan 128, TrainerAI_TagStrategy_PartnerAcupressure_End

TrainerAI_TagStrategy_PartnerAcupressure_TryScorePlus2:
    IfRandomLessThan 80, TrainerAI_TagStrategy_PartnerAcupressure_End
    AddToMoveScore 2
    GoTo TrainerAI_TagStrategy_PartnerAcupressure_End

TrainerAI_TagStrategy_PartnerAcupressure_ScoreMinus1:
    AddToMoveScore -1

TrainerAI_TagStrategy_PartnerAcupressure_End:
    PopOrEnd 

TrainerAI_TagStrategy_PartnerScoreMinus30:
    AddToMoveScore -30
    PopOrEnd 

TrainerAI_CheckHP_Main:
    IfTargetIsPartner TrainerAI_TagStrategy_Partner

    ; Which moves apply to the routine depends on the attacker's HP percentage
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 70, TrainerAI_CheckHP_GT70Percent ; >70%
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 30, TrainerAI_CheckHP_31To70Percent ; 31-70%
    LoadCurrentMoveEffect 
    IfLoadedInTable TrainerAI_CheckHP_DiscourageAtLowHP, TrainerAI_CheckHP_TryScoreMinus2 ; 1-30%
    GoTo TrainerAI_CheckHP_Target

TrainerAI_CheckHP_GT70Percent:
    LoadCurrentMoveEffect 
    IfLoadedInTable TrainerAI_CheckHP_DiscourageAtHighHP, TrainerAI_CheckHP_TryScoreMinus2
    GoTo TrainerAI_CheckHP_Target

TrainerAI_CheckHP_31To70Percent:
    LoadCurrentMoveEffect 
    IfLoadedInTable TrainerAI_CheckHP_DiscourageAtMediumHP, TrainerAI_CheckHP_TryScoreMinus2
    GoTo TrainerAI_CheckHP_Target

TrainerAI_CheckHP_TryScoreMinus2:
    ; ~80.5% of the time, score -2
    IfRandomLessThan 50, TrainerAI_CheckHP_Target
    AddToMoveScore -2

TrainerAI_CheckHP_Target:
    ; The second round is similar to the first, but looks at the target's HP instead of
    ; the attacker's.
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 70, TrainerAI_CheckHP_Target_GT70Percent
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 30, TrainerAI_CheckHP_Target_31To70Percent
    LoadCurrentMoveEffect 
    IfLoadedInTable TrainerAI_CheckHP_Target_DiscourageAtLowHP, TrainerAI_CheckHP_Target_TryScoreMinus2
    GoTo TrainerAI_CheckHP_Terminate

TrainerAI_CheckHP_Target_GT70Percent:
    LoadCurrentMoveEffect 
    IfLoadedInTable TrainerAI_CheckHP_Target_DiscourageAtHighHP, TrainerAI_CheckHP_Target_TryScoreMinus2
    GoTo TrainerAI_CheckHP_Terminate

TrainerAI_CheckHP_Target_31To70Percent:
    LoadCurrentMoveEffect 
    IfLoadedInTable TrainerAI_CheckHP_Target_DiscourageAtMediumHP, TrainerAI_CheckHP_Target_TryScoreMinus2
    GoTo TrainerAI_CheckHP_Terminate

TrainerAI_CheckHP_Target_TryScoreMinus2:
    ; ~80.5% of the time, score -2
    IfRandomLessThan 50, TrainerAI_CheckHP_Terminate
    AddToMoveScore -2

TrainerAI_CheckHP_Terminate:
    PopOrEnd 

TrainerAI_CheckHP_DiscourageAtHighHP:
    TableEntry BATTLE_EFFECT_HALVE_DEFENSE
    TableEntry BATTLE_EFFECT_RESTORE_HALF_HP
    TableEntry BATTLE_EFFECT_REST
    TableEntry BATTLE_EFFECT_KO_MON_THAT_DEFEATED_USER
    TableEntry BATTLE_EFFECT_INCREASE_POWER_WITH_LESS_HP
    TableEntry BATTLE_EFFECT_SURVIVE_WITH_1_HP
    TableEntry BATTLE_EFFECT_HEAL_HALF_MORE_IN_SUN
    TableEntry BATTLE_EFFECT_FAINT_AND_ATK_SP_ATK_DOWN_2
    TableEntry BATTLE_EFFECT_REMOVE_ALL_PP_ON_DEFEAT
    TableEntry BATTLE_EFFECT_HEAL_HALF_REMOVE_FLYING_TYPE
    TableEntry BATTLE_EFFECT_FAINT_AND_FULL_HEAL_NEXT_MON
    TableEntry BATTLE_EFFECT_FAINT_FULL_RESTORE_NEXT_MON
    TableEntry TABLE_END

TrainerAI_CheckHP_DiscourageAtMediumHP:
    TableEntry BATTLE_EFFECT_HALVE_DEFENSE
    TableEntry BATTLE_EFFECT_ATK_UP
    TableEntry BATTLE_EFFECT_DEF_UP
    TableEntry BATTLE_EFFECT_SPEED_UP
    TableEntry BATTLE_EFFECT_SP_ATK_UP
    TableEntry BATTLE_EFFECT_SP_DEF_UP
    TableEntry BATTLE_EFFECT_ACC_UP
    TableEntry BATTLE_EFFECT_EVA_UP
    TableEntry BATTLE_EFFECT_ATK_DOWN
    TableEntry BATTLE_EFFECT_DEF_DOWN
    TableEntry BATTLE_EFFECT_SPEED_DOWN
    TableEntry BATTLE_EFFECT_SP_ATK_DOWN
    TableEntry BATTLE_EFFECT_SP_DEF_DOWN
    TableEntry BATTLE_EFFECT_ACC_DOWN
    TableEntry BATTLE_EFFECT_EVA_DOWN
    TableEntry BATTLE_EFFECT_BIDE
    TableEntry BATTLE_EFFECT_CONVERSION
    TableEntry BATTLE_EFFECT_SET_LIGHT_SCREEN
    TableEntry BATTLE_EFFECT_PREVENT_STAT_REDUCTION
    TableEntry BATTLE_EFFECT_CRIT_UP_2
    TableEntry BATTLE_EFFECT_ATK_UP_2
    TableEntry BATTLE_EFFECT_DEF_UP_2
    TableEntry BATTLE_EFFECT_SPEED_UP_2
    TableEntry BATTLE_EFFECT_SP_ATK_UP_2
    TableEntry BATTLE_EFFECT_SP_DEF_UP_2
    TableEntry BATTLE_EFFECT_ACC_UP_2
    TableEntry BATTLE_EFFECT_EVA_UP_2
    TableEntry BATTLE_EFFECT_ATK_DOWN_2
    TableEntry BATTLE_EFFECT_DEF_DOWN_2
    TableEntry BATTLE_EFFECT_SPEED_DOWN_2
    TableEntry BATTLE_EFFECT_SP_ATK_DOWN_2
    TableEntry BATTLE_EFFECT_SP_DEF_DOWN_2
    TableEntry BATTLE_EFFECT_EVA_DOWN_2
    TableEntry BATTLE_EFFECT_ACC_DOWN_2
    TableEntry BATTLE_EFFECT_CONVERSION2
    TableEntry BATTLE_EFFECT_PREVENT_STATUS
    TableEntry BATTLE_EFFECT_MAX_ATK_LOSE_HALF_MAX_HP
    TableEntry BATTLE_EFFECT_ATK_DEF_DOWN
    TableEntry BATTLE_EFFECT_DEF_SPD_UP
    TableEntry BATTLE_EFFECT_ATK_DEF_UP
    TableEntry BATTLE_EFFECT_SP_ATK_SP_DEF_UP
    TableEntry BATTLE_EFFECT_ATK_SPD_UP
    TableEntry BATTLE_EFFECT_PREVENT_CRITS
    TableEntry BATTLE_EFFECT_SWAP_ATK_SP_ATK_STAT_CHANGES
    TableEntry BATTLE_EFFECT_SWAP_DEF_SP_DEF_STAT_CHANGES
    TableEntry BATTLE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER
    TableEntry TABLE_END

TrainerAI_CheckHP_DiscourageAtLowHP:
    TableEntry BATTLE_EFFECT_ATK_UP
    TableEntry BATTLE_EFFECT_DEF_UP
    TableEntry BATTLE_EFFECT_SPEED_UP
    TableEntry BATTLE_EFFECT_SP_ATK_UP
    TableEntry BATTLE_EFFECT_SP_DEF_UP
    TableEntry BATTLE_EFFECT_ACC_UP
    TableEntry BATTLE_EFFECT_EVA_UP
    TableEntry BATTLE_EFFECT_ATK_DOWN
    TableEntry BATTLE_EFFECT_DEF_DOWN
    TableEntry BATTLE_EFFECT_SPEED_DOWN
    TableEntry BATTLE_EFFECT_SP_ATK_DOWN
    TableEntry BATTLE_EFFECT_SP_DEF_DOWN
    TableEntry BATTLE_EFFECT_ACC_DOWN
    TableEntry BATTLE_EFFECT_EVA_DOWN
    TableEntry BATTLE_EFFECT_BIDE
    TableEntry BATTLE_EFFECT_CONVERSION
    TableEntry BATTLE_EFFECT_SET_LIGHT_SCREEN
    TableEntry BATTLE_EFFECT_PREVENT_STAT_REDUCTION
    TableEntry BATTLE_EFFECT_CRIT_UP_2
    TableEntry BATTLE_EFFECT_ATK_UP_2
    TableEntry BATTLE_EFFECT_DEF_UP_2
    TableEntry BATTLE_EFFECT_SPEED_UP_2
    TableEntry BATTLE_EFFECT_SP_ATK_UP_2
    TableEntry BATTLE_EFFECT_SP_DEF_UP_2
    TableEntry BATTLE_EFFECT_ACC_UP_2
    TableEntry BATTLE_EFFECT_EVA_UP_2
    TableEntry BATTLE_EFFECT_ATK_DOWN_2
    TableEntry BATTLE_EFFECT_DEF_DOWN_2
    TableEntry BATTLE_EFFECT_SPEED_DOWN_2
    TableEntry BATTLE_EFFECT_SP_ATK_DOWN_2
    TableEntry BATTLE_EFFECT_SP_DEF_DOWN_2
    TableEntry BATTLE_EFFECT_EVA_DOWN_2
    TableEntry BATTLE_EFFECT_ACC_DOWN_2
    TableEntry BATTLE_EFFECT_RAISE_ATK_WHEN_HIT
    TableEntry BATTLE_EFFECT_CONVERSION2
    TableEntry BATTLE_EFFECT_NEXT_ATTACK_ALWAYS_HITS
    TableEntry BATTLE_EFFECT_PREVENT_STATUS
    TableEntry BATTLE_EFFECT_MAX_ATK_LOSE_HALF_MAX_HP
    TableEntry BATTLE_EFFECT_COPY_STAT_CHANGES
    TableEntry BATTLE_EFFECT_MIRROR_COAT
    TableEntry BATTLE_EFFECT_DECREASE_POWER_WITH_LESS_USER_HP
    TableEntry BATTLE_EFFECT_ATK_DEF_DOWN
    TableEntry BATTLE_EFFECT_DEF_SPD_UP
    TableEntry BATTLE_EFFECT_ATK_DEF_UP
    TableEntry BATTLE_EFFECT_SP_ATK_SP_DEF_UP
    TableEntry BATTLE_EFFECT_ATK_SPD_UP
    TableEntry BATTLE_EFFECT_HALVE_ELECTRIC_DAMAGE
    TableEntry BATTLE_EFFECT_HALVE_FIRE_DAMAGE
    TableEntry BATTLE_EFFECT_RANDOM_STAT_UP_2
    TableEntry BATTLE_EFFECT_METAL_BURST
    TableEntry BATTLE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER
    TableEntry TABLE_END

TrainerAI_CheckHP_Target_DiscourageAtHighHP:
    TableEntry TABLE_END

TrainerAI_CheckHP_Target_DiscourageAtMediumHP:
    TableEntry BATTLE_EFFECT_ATK_UP
    TableEntry BATTLE_EFFECT_DEF_UP
    TableEntry BATTLE_EFFECT_SPEED_UP
    TableEntry BATTLE_EFFECT_SP_ATK_UP
    TableEntry BATTLE_EFFECT_SP_DEF_UP
    TableEntry BATTLE_EFFECT_ACC_UP
    TableEntry BATTLE_EFFECT_EVA_UP
    TableEntry BATTLE_EFFECT_ATK_DOWN
    TableEntry BATTLE_EFFECT_DEF_DOWN
    TableEntry BATTLE_EFFECT_SPEED_DOWN
    TableEntry BATTLE_EFFECT_SP_ATK_DOWN
    TableEntry BATTLE_EFFECT_SP_DEF_DOWN
    TableEntry BATTLE_EFFECT_ACC_DOWN
    TableEntry BATTLE_EFFECT_EVA_DOWN
    TableEntry BATTLE_EFFECT_PREVENT_STAT_REDUCTION
    TableEntry BATTLE_EFFECT_CRIT_UP_2
    TableEntry BATTLE_EFFECT_ATK_UP_2
    TableEntry BATTLE_EFFECT_DEF_UP_2
    TableEntry BATTLE_EFFECT_SPEED_UP_2
    TableEntry BATTLE_EFFECT_SP_ATK_UP_2
    TableEntry BATTLE_EFFECT_SP_DEF_UP_2
    TableEntry BATTLE_EFFECT_ACC_UP_2
    TableEntry BATTLE_EFFECT_EVA_UP_2
    TableEntry BATTLE_EFFECT_ATK_DOWN_2
    TableEntry BATTLE_EFFECT_DEF_DOWN_2
    TableEntry BATTLE_EFFECT_SPEED_DOWN_2
    TableEntry BATTLE_EFFECT_SP_ATK_DOWN_2
    TableEntry BATTLE_EFFECT_SP_DEF_DOWN_2
    TableEntry BATTLE_EFFECT_EVA_DOWN_2
    TableEntry BATTLE_EFFECT_ACC_DOWN_2
    TableEntry BATTLE_EFFECT_STATUS_POISON
    TableEntry BATTLE_EFFECT_AVERAGE_HP
    TableEntry BATTLE_EFFECT_ALL_FAINT_3_TURNS
    TableEntry BATTLE_EFFECT_PREVENT_STATUS
    TableEntry BATTLE_EFFECT_ATK_DEF_DOWN
    TableEntry BATTLE_EFFECT_DEF_SPD_UP
    TableEntry BATTLE_EFFECT_ATK_DEF_UP
    TableEntry BATTLE_EFFECT_SP_ATK_SP_DEF_UP
    TableEntry BATTLE_EFFECT_ATK_SPD_UP
    TableEntry BATTLE_EFFECT_RANDOM_STAT_UP_2
    TableEntry BATTLE_EFFECT_INCREASE_POWER_WITH_MORE_HP
    TableEntry BATTLE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER
    TableEntry TABLE_END

TrainerAI_CheckHP_Target_DiscourageAtLowHP:
    TableEntry BATTLE_EFFECT_STATUS_SLEEP
    TableEntry BATTLE_EFFECT_HALVE_DEFENSE ; done
    TableEntry BATTLE_EFFECT_ATK_UP
    TableEntry BATTLE_EFFECT_DEF_UP
    TableEntry BATTLE_EFFECT_SPEED_UP
    TableEntry BATTLE_EFFECT_SP_ATK_UP
    TableEntry BATTLE_EFFECT_SP_DEF_UP
    TableEntry BATTLE_EFFECT_ACC_UP
    TableEntry BATTLE_EFFECT_EVA_UP
    TableEntry BATTLE_EFFECT_ATK_DOWN
    TableEntry BATTLE_EFFECT_DEF_DOWN
    TableEntry BATTLE_EFFECT_SPEED_DOWN
    TableEntry BATTLE_EFFECT_SP_ATK_DOWN
    TableEntry BATTLE_EFFECT_SP_DEF_DOWN
    TableEntry BATTLE_EFFECT_ACC_DOWN
    TableEntry BATTLE_EFFECT_EVA_DOWN
    TableEntry BATTLE_EFFECT_BIDE
    TableEntry BATTLE_EFFECT_CONVERSION
    TableEntry BATTLE_EFFECT_STATUS_BADLY_POISON
    TableEntry BATTLE_EFFECT_SET_LIGHT_SCREEN
    TableEntry BATTLE_EFFECT_ONE_HIT_KO
    TableEntry BATTLE_EFFECT_HALVE_HP
    TableEntry BATTLE_EFFECT_HALVE_HP
    TableEntry BATTLE_EFFECT_PREVENT_STAT_REDUCTION
    TableEntry BATTLE_EFFECT_CRIT_UP_2
    TableEntry BATTLE_EFFECT_STATUS_CONFUSE
    TableEntry BATTLE_EFFECT_ATK_UP_2
    TableEntry BATTLE_EFFECT_DEF_UP_2
    TableEntry BATTLE_EFFECT_SPEED_UP_2
    TableEntry BATTLE_EFFECT_SP_ATK_UP_2
    TableEntry BATTLE_EFFECT_SP_DEF_UP_2
    TableEntry BATTLE_EFFECT_ACC_UP_2
    TableEntry BATTLE_EFFECT_EVA_UP_2
    TableEntry BATTLE_EFFECT_ATK_DOWN_2
    TableEntry BATTLE_EFFECT_DEF_DOWN_2
    TableEntry BATTLE_EFFECT_SPEED_DOWN_2
    TableEntry BATTLE_EFFECT_SP_ATK_DOWN_2
    TableEntry BATTLE_EFFECT_SP_DEF_DOWN_2
    TableEntry BATTLE_EFFECT_EVA_DOWN_2
    TableEntry BATTLE_EFFECT_ACC_DOWN_2
    TableEntry BATTLE_EFFECT_STATUS_POISON
    TableEntry BATTLE_EFFECT_STATUS_PARALYZE
    TableEntry BATTLE_EFFECT_AVERAGE_HP
    TableEntry BATTLE_EFFECT_CONVERSION2
    TableEntry BATTLE_EFFECT_NEXT_ATTACK_ALWAYS_HITS
    TableEntry BATTLE_EFFECT_DECREASE_LAST_MOVE_PP
    TableEntry BATTLE_EFFECT_ALL_FAINT_3_TURNS
    TableEntry BATTLE_EFFECT_ATK_UP_2_STATUS_CONFUSION
    TableEntry BATTLE_EFFECT_DOUBLE_POWER_EACH_TURN
    TableEntry BATTLE_EFFECT_INFATUATE
    TableEntry BATTLE_EFFECT_PREVENT_STATUS
    TableEntry BATTLE_EFFECT_COPY_STAT_CHANGES
    TableEntry BATTLE_EFFECT_MIRROR_COAT
    TableEntry BATTLE_EFFECT_STATUS_BURN
    TableEntry BATTLE_EFFECT_ATK_DEF_DOWN
    TableEntry BATTLE_EFFECT_DEF_SPD_UP
    TableEntry BATTLE_EFFECT_ATK_DEF_UP
    TableEntry BATTLE_EFFECT_SP_ATK_SP_DEF_UP
    TableEntry BATTLE_EFFECT_ATK_SPD_UP
    TableEntry BATTLE_EFFECT_RANDOM_STAT_UP_2
    TableEntry BATTLE_EFFECT_INCREASE_POWER_WITH_MORE_HP
    TableEntry BATTLE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER
    TableEntry TABLE_END

TrainerAI_Weather_Main:
    IfTargetIsPartner TrainerAI_Terminate

    ; If it is not the first turn of the battle, break.
    LoadTurnCount 
    IfLoadedNotEqualTo 0, TrainerAI_Weather_Terminate

    ; For each weather, don't try to set it if it's already active from the field.
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_WEATHER_SUN, TrainerAI_Weather_Sun
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_WEATHER_RAIN, TrainerAI_Weather_Rain
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_WEATHER_SANDSTORM, TrainerAI_Weather_Sand
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_WEATHER_HAIL, TrainerAI_Weather_Hail

TrainerAI_Weather_Sun:
    LoadCurrentWeather 
    IfLoadedEqualTo AI_WEATHER_SUNNY, TrainerAI_Weather_Terminate
    GoTo TrainerAI_Weather_ScorePlus5

TrainerAI_Weather_Rain:
    LoadCurrentWeather 
    IfLoadedEqualTo AI_WEATHER_RAINING, TrainerAI_Weather_Terminate
    GoTo TrainerAI_Weather_ScorePlus5

TrainerAI_Weather_Sand:
    LoadCurrentWeather 
    IfLoadedEqualTo AI_WEATHER_SANDSTORM, TrainerAI_Weather_Terminate
    GoTo TrainerAI_Weather_ScorePlus5

TrainerAI_Weather_Hail:
    LoadCurrentWeather 
    IfLoadedEqualTo AI_WEATHER_HAILING, TrainerAI_Weather_Terminate
    GoTo TrainerAI_Weather_ScorePlus5

TrainerAI_Weather_ScorePlus5:
    ; On the attacker's first turn only, score +5.
    LoadIsFirstTurnInBattle AI_BATTLER_ATTACKER
    IfLoadedEqualTo FALSE, TrainerAI_Weather_Terminate
    AddToMoveScore 5

TrainerAI_Weather_Terminate:
    PopOrEnd 

TrainerAI_Harrassment_Main:
    IfTargetIsPartner TrainerAI_Terminate

    ; If the move is not judged to be a Harrassment move within the context
    ; of this routine, break.
    LoadCurrentMoveEffect 
    IfLoadedNotInTable TrainerAI_Harrassment_Effects, TrainerAI_Harrassment_Terminate

    ; 50% of the time, score +2.
    IfRandomLessThan 128, TrainerAI_Harrassment_Terminate
    AddToMoveScore 2

TrainerAI_Harrassment_Terminate:
    PopOrEnd 

TrainerAI_Harrassment_Effects:
    TableEntry BATTLE_EFFECT_STATUS_SLEEP
    TableEntry BATTLE_EFFECT_ATK_DOWN
    TableEntry BATTLE_EFFECT_DEF_DOWN
    TableEntry BATTLE_EFFECT_ACC_DOWN
    TableEntry BATTLE_EFFECT_EVA_DOWN
    TableEntry BATTLE_EFFECT_STATUS_CONFUSE
    TableEntry BATTLE_EFFECT_ATK_DOWN_2
    TableEntry BATTLE_EFFECT_DEF_DOWN_2
    TableEntry BATTLE_EFFECT_SPEED_DOWN_2
    TableEntry BATTLE_EFFECT_SP_DEF_DOWN_2
    TableEntry BATTLE_EFFECT_STATUS_POISON
    TableEntry BATTLE_EFFECT_STATUS_PARALYZE
    TableEntry BATTLE_EFFECT_STATUS_LEECH_SEED
    TableEntry BATTLE_EFFECT_ENCORE
    TableEntry BATTLE_EFFECT_DECREASE_LAST_MOVE_PP
    TableEntry BATTLE_EFFECT_SET_SPIKES
    TableEntry BATTLE_EFFECT_ATK_UP_2_STATUS_CONFUSION
    TableEntry BATTLE_EFFECT_INFATUATE
    TableEntry BATTLE_EFFECT_TORMENT
    TableEntry BATTLE_EFFECT_SP_ATK_UP_CAUSE_CONFUSION
    TableEntry BATTLE_EFFECT_STATUS_BURN
    TableEntry BATTLE_EFFECT_NATURE_POWER
    TableEntry BATTLE_EFFECT_STATUS_SLEEP_NEXT_TURN
    TableEntry BATTLE_EFFECT_REMOVE_HELD_ITEM
    TableEntry BATTLE_EFFECT_MAKE_SHARED_MOVES_UNUSEABLE
    TableEntry BATTLE_EFFECT_SECRET_POWER
    TableEntry BATTLE_EFFECT_CONFUSE_ALL
    TableEntry BATTLE_EFFECT_ATK_DEF_DOWN
    TableEntry BATTLE_EFFECT_CAMOUFLAGE
    TableEntry BATTLE_EFFECT_PREVENT_ITEM_USE
    TableEntry BATTLE_EFFECT_TRANSFER_STATUS
    TableEntry BATTLE_EFFECT_TOXIC_SPIKES
    TableEntry BATTLE_EFFECT_REMOVE_HAZARDS_SCREENS_EVA_DOWN
    TableEntry BATTLE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER
    TableEntry TABLE_END

TrainerAI_RoamingPokemon_Main:
    ; If the Roamer is trapped, break from this routine
    ; Otherwise, override all other possible moves and Escape
    IfVolatileStatus AI_BATTLER_ATTACKER, VOLATILE_CONDITION_BIND, TrainerAI_RoamingPokemon_Trapped
    IfVolatileStatus AI_BATTLER_ATTACKER, VOLATILE_CONDITION_MEAN_LOOK, TrainerAI_RoamingPokemon_Trapped
    LoadAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_SHADOW_TAG, TrainerAI_RoamingPokemon_Trapped
    LoadAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_LEVITATE, TrainerAI_RoamingPokemon_NotTrapped
    LoadAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_ARENA_TRAP, TrainerAI_RoamingPokemon_Trapped

TrainerAI_RoamingPokemon_NotTrapped:
    Escape 

TrainerAI_RoamingPokemon_Trapped:
    PopOrEnd 

TrainerAI_Safari_Main:
    Dummy3E 1
    Dummy3F 
    Escape 

TrainerAI_CatchTutorial_Main:
    ; If the target is at 20% or less HP, flee from the battle
    IfHPPercentEqualTo AI_BATTLER_DEFENDER, 20, TrainerAI_CatchTutorial_Escape
    IfHPPercentLessThan AI_BATTLER_DEFENDER, 20, TrainerAI_CatchTutorial_Escape
    PopOrEnd 

TrainerAI_CatchTutorial_Escape:
    Escape 

TrainerAI_Terminate:
    PopOrEnd 

    .endif
