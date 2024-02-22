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
    IfTargetIsPartner TrainerAI_Terminate
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STATUS_SLEEP, _03083
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RECOVER_HALF_DAMAGE_DEALT, _03099
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HALVE_DEFENSE, _03116
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RECOVER_DAMAGE_SLEEP, _03171
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_COPY_MOVE, _03196
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ATK_UP, _03270
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DEF_UP, _03305
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SPEED_UP, _03366
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_ATK_UP, _03379
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_DEF_UP, _03414
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ACC_UP, _03475
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_EVA_UP, _03492
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_BYPASS_ACCURACY, _03590
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ATK_DOWN, _03620
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DEF_DOWN, _03666
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SPEED_DOWN, _03707
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_ATK_DOWN, _03720
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_DEF_DOWN, _03768
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ACC_DOWN, _03789
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_EVA_DOWN, _03882
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RESET_STAT_CHANGES, _03903
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_BIDE, _04023
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_FORCE_SWITCH, _04030
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_CONVERSION, _04087
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RESTORE_HALF_HP, _04115
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STATUS_BADLY_POISON, _04165
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SET_LIGHT_SCREEN, _04201
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_REST, _04237
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ONE_HIT_KO, _04291
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_CHARGE_TURN_HIGH_CRIT, _05626
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HALVE_HP, _04297
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_BIND_HIT, _04304
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HIGH_CRITICAL, _04328
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RECOIL_QUARTER, _08278
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STATUS_CONFUSE, _04361
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ATK_UP_2, _03270
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DEF_UP_2, _03305
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SPEED_UP_2, _03366
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_ATK_UP_2, _03379
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_DEF_UP_2, _03414
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ACC_UP_2, _03475
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_EVA_UP_2, _03492
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ATK_DOWN_2, _03620
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DEF_DOWN_2, _03666
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SPEED_DOWN_2, _03707
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_ATK_DOWN_2, _03720
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_DEF_DOWN_2, _03768
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_EVA_DOWN_2, _03789
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ACC_DOWN_2, _03882
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SET_REFLECT, _04401
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STATUS_POISON, _04438
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STATUS_PARALYZE, _04449
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ATK_UP_2_STATUS_CONFUSION, _04352
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_LOWER_SPEED_HIT, _03687
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_CHARGE_TURN_HIGH_CRIT_FLINCH, _05626
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_PRIORITY_NEG_1_BYPASS_ACCURACY, _04466
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SET_SUBSTITUTE, _04486
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RECHARGE_AFTER, _04573
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STATUS_LEECH_SEED, _04165
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DISABLE, _04610
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_COUNTER, _04629
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ENCORE, _04726
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_AVERAGE_HP, _04832
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DAMAGE_WHILE_ASLEEP, _04858
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_NEXT_ATTACK_ALWAYS_HITS, _04861
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_USE_RANDOM_LEARNED_MOVE_SLEEP, _04867
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_KO_MON_THAT_DEFEATED_USER, _04874
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_INCREASE_POWER_WITH_LESS_HP, _04907
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_CURE_PARTY_STATUS, _04946
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STEAL_HELD_ITEM, _04957
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_PREVENT_ESCAPE, _04304
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_EVA_UP_2_MINIMIZE, _03492
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_CURSE, _04998
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_PROTECT, _05062
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SET_SPIKES, _05179
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_IGNORE_EVASION_REMOVE_GHOST_IMMUNE, _05200
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SURVIVE_WITH_1_HP, _05228
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_PASS_STATS_AND_STATUS, _05246
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HIT_BEFORE_SWITCH, _05336
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HEAL_HALF_MORE_IN_SUN, _04101
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_UNUSED_133, _04101
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_UNUSED_134, _04101
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_WEATHER_RAIN, _05378
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_WEATHER_SUN, _05421
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_MAX_ATK_LOSE_HALF_MAX_HP, _05456
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_COPY_STAT_CHANGES, _05465
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_MIRROR_COAT, _05530
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_CHARGE_TURN_DEF_UP, _05626
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SKIP_CHARGE_TURN_IN_SUN, _05626
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SKIP_CHARGE_TURN_IN_SUN, _05673
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_FLY, _05699
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_UNUSED_157, _04115
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ALWAYS_FLINCH_FIRST_TURN_ONLY, _05799
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SPIT_UP, _05802
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SWALLOW, _04115
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_WEATHER_HAIL, _05813
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_ATK_UP_CAUSE_CONFUSION, _04356
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_FAINT_AND_ATK_SP_ATK_DOWN_2, _03116
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DOUBLE_POWER_WHEN_STATUSED, _05849
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HIT_LAST_WHIFF_IF_HIT, _05856
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DOUBLE_POWER_AND_CURE_PARALYSIS, _05903
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SWITCH_HELD_ITEMS, _05912
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_COPY_ABILITY, _06218
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_GROUND_TRAP_USER_CONTINUOUS_HEAL, _06264
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_LOWER_OWN_ATK_AND_DEF, _06265
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_APPLY_MAGIC_COAT, _06295
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RECYCLE, _06325
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DOUBLE_POWER_IF_HIT, _06344
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_REMOVE_SCREENS, _06366
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_REMOVE_HELD_ITEM, _06379
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SET_HP_EQUAL_TO_USER, _06394
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DECREASE_POWER_WITH_LESS_USER_HP, _06420
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SWITCH_ABILITIES, _06218
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_MAKE_SHARED_MOVES_UNUSEABLE, _06445
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HEAL_STATUS, _06456
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STEAL_STATUS_MOVE, _06465
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RECOIL_THIRD, _08278
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HIGH_CRITICAL_BURN_HIT, _04328
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HALVE_ELECTRIC_DAMAGE, _06523
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_USER_SP_ATK_DOWN_2, _06546
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ATK_DEF_DOWN, _03666
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DEF_SPD_UP, _03414
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ATK_DEF_UP, _03305
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HIGH_CRITICAL_POISON_HIT, _04328
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HALVE_FIRE_DAMAGE, _06571
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_ATK_SP_DEF_UP, _03414
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ATK_SPD_UP, _06594
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HEAL_HALF_REMOVE_FLYING_TYPE, _04115
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_GRAVITY, _06614
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_IGNORE_EVATION_REMOVE_DARK_IMMUNE, _06648
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DOUBLE_POWER_HEAL_SLEEP, _06675
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SPEED_DOWN_HIT, _06697
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_POWER_BASED_ON_LOW_SPEED, _06717
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_FAINT_AND_FULL_HEAL_NEXT_MON, _08300
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DOUBLE_POWER_WHEN_BELOW_HALF, _06718
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_REMOVE_PROTECT, _06743
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_EAT_BERRY, _06821
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DOUBLE_SPEED_3_TURNS, _06850
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RANDOM_STAT_UP_2, _06874
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_METAL_BURST, _06895
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SWITCH_HIT, _06967
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DEF_SPD_DOWN_HIT, _07036
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DOUBLE_POWER_IF_MOVING_SECOND, _07061
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DOUBLE_POWER_IF_TARGET_HIT, _07086
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_PREVENT_ITEM_USE, _07126
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_FLING, _07132
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_TRANSFER_STATUS, _07199
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HIGHER_POWER_WHEN_LOW_PP, _07213
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_PREVENT_HEALING, _07280
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_INCREASE_POWER_WITH_MORE_HP, _07355
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SWAP_ATK_DEF, _07395
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SUPRESS_ABILITY, _07431
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_PREVENT_CRITS, _07458
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_USE_MOVE_FIRST, _07486
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_USE_LAST_USED_MOVE, _07519
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SWAP_ATK_SP_ATK_STAT_CHANGES, _07608
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SWAP_DEF_SP_DEF_STAT_CHANGES, _07717
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_INCREASE_POWER_WITH_MORE_STAT_UP, _07826
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_FAIL_IF_NOT_USED_ALL_OTHER_MOVES, _07875
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SET_ABILITY_TO_INSOMNIA, _07896
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HIT_FIRST_IF_TARGET_ATTACKING, _07919
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_TOXIC_SPIKES, _07938
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SWAP_STAT_CHANGES, _07959
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RESTORE_HP_EVERY_TURN, _08032
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_GIVE_GROUND_IMMUNITY, _08042
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RECOIL_BURN_HIT, _08278
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DIVE, _05699
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_DIG, _05699
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_REMOVE_HAZARDS_SCREENS_EVA_DOWN, _08082
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_TRICK_ROOM, _08166
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_BLIZZARD, _08192
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RECOIL_PARALYZE_HIT, _08278
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_BOUNCE, _05699
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER, _08216
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STEALTH_ROCK, _08255
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RECOIL_HALF, _08278
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_FAINT_FULL_RESTORE_NEXT_MON, _08300
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SHADOW_FORCE, _05711
    PopOrEnd 

_03083:
    IfMoveEffectKnown AI_BATTLER_ATTACKER, BATTLE_EFFECT_RECOVER_DAMAGE_SLEEP, _03093
    IfMoveEffectKnown AI_BATTLER_ATTACKER, BATTLE_EFFECT_STATUS_NIGHTMARE, _03093
    GoTo _03098

_03093:
    IfRandomLessThan 128, _03098
    AddToMoveScore 1

_03098:
    PopOrEnd 

_03099:
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, _03110
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, _03110
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, _03110
    GoTo _03115

_03110:
    IfRandomLessThan 50, _03115
    AddToMoveScore -3

_03115:
    PopOrEnd 

_03116:
    IfStatStageLessThan AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 7, _03133
    AddToMoveScore -1
    IfStatStageLessThan AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 10, _03133
    IfRandomLessThan 128, _03133
    AddToMoveScore -1

_03133:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 80, _03145
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _03145
    IfRandomLessThan 50, _03170
    GoTo TrainerAI_ScoreMinus3

_03145:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 50, _03165
    IfRandomLessThan 128, _03154
    AddToMoveScore 1

_03154:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 30, _03170
    IfRandomLessThan 50, _03170
    AddToMoveScore 1
    GoTo _03170

_03165:
    IfRandomLessThan 50, _03170
    AddToMoveScore -1

_03170:
    PopOrEnd 

_03171:
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, _03193
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, _03193
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, _03193
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_SLEEP, _03186
    GoTo _03195

_03186:
    IfRandomLessThan 51, _03195
    AddToMoveScore 3
    GoTo _03195

_03193:
    AddToMoveScore -1

_03195:
    PopOrEnd 

_03196:
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _03211
    LoadBattlerPreviousMove AI_BATTLER_DEFENDER
    IfLoadedNotInTable _03222, _03211
    IfRandomLessThan 128, _03221
    AddToMoveScore 2
    GoTo _03221

_03211:
    LoadBattlerPreviousMove AI_BATTLER_DEFENDER
    IfLoadedInTable _03222, _03221
    IfRandomLessThan 80, _03221
    AddToMoveScore -1

_03221:
    PopOrEnd 

_03222:
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

_03270:
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 9, _03282
    IfRandomLessThan 100, _03291
    AddToMoveScore -1
    GoTo _03291

_03282:
    IfHPPercentNotEqualTo AI_BATTLER_ATTACKER, 100, _03291
    IfRandomLessThan 128, _03291
    AddToMoveScore 2

_03291:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 70, _03304
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 40, _03302
    IfRandomLessThan 40, _03304

_03302:
    AddToMoveScore -2

_03304:
    PopOrEnd 

_03305:
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 9, _03317
    IfRandomLessThan 100, _03326
    AddToMoveScore -1
    GoTo _03326

_03317:
    IfHPPercentNotEqualTo AI_BATTLER_ATTACKER, 100, _03326
    IfRandomLessThan 128, _03326
    AddToMoveScore 2

_03326:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 70, _03333
    IfRandomLessThan 200, _03355

_03333:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 40, _03353
    LoadBattlerPreviousMove AI_BATTLER_DEFENDER
    LoadPowerOfLoadedMove 
    IfLoadedEqualTo 0, _03350
    LoadDefenderLastUsedMoveClass 
    IfLoadedEqualTo CLASS_SPECIAL, _03353
    IfRandomLessThan 60, _03355

_03350:
    IfRandomLessThan 60, _03355

_03353:
    AddToMoveScore -2

_03355:
    PopOrEnd 

_03356:
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

_03366:
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _03373
    AddToMoveScore -3
    GoTo _03378

_03373:
    IfRandomLessThan 70, _03378
    AddToMoveScore 3

_03378:
    PopOrEnd 

_03379:
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_ATTACK, 9, _03391
    IfRandomLessThan 100, _03400
    AddToMoveScore -1
    GoTo _03400

_03391:
    IfHPPercentNotEqualTo AI_BATTLER_ATTACKER, 100, _03400
    IfRandomLessThan 128, _03400
    AddToMoveScore 2

_03400:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 70, _03413
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 40, _03411
    IfRandomLessThan 70, _03413

_03411:
    AddToMoveScore -2

_03413:
    PopOrEnd 

_03414:
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_DEFENSE, 9, _03426
    IfRandomLessThan 100, _03435
    AddToMoveScore -1
    GoTo _03435

_03426:
    IfHPPercentNotEqualTo AI_BATTLER_ATTACKER, 100, _03435
    IfRandomLessThan 128, _03435
    AddToMoveScore 2

_03435:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 70, _03442
    IfRandomLessThan 200, _03464

_03442:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 40, _03462
    LoadBattlerPreviousMove AI_BATTLER_DEFENDER
    LoadPowerOfLoadedMove 
    IfLoadedEqualTo 0, _03459
    LoadDefenderLastUsedMoveClass 
    IfLoadedEqualTo CLASS_PHYSICAL, _03462
    IfRandomLessThan 60, _03464

_03459:
    IfRandomLessThan 60, _03464

_03462:
    AddToMoveScore -2

_03464:
    PopOrEnd 

_03465:
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

_03475:
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_ACCURACY, 9, _03485
    IfRandomLessThan 50, _03485
    AddToMoveScore -2

_03485:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 70, _03491
    AddToMoveScore -2

_03491:
    PopOrEnd 

_03492:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 90, _03501
    IfRandomLessThan 100, _03501
    AddToMoveScore 3

_03501:
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_EVASION, 9, _03511
    IfRandomLessThan 128, _03511
    AddToMoveScore -1

_03511:
    IfNotStatus AI_BATTLER_DEFENDER, MON_CONDITION_TOXIC, _03527
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 50, _03522
    IfRandomLessThan 80, _03527

_03522:
    IfRandomLessThan 50, _03527
    AddToMoveScore 3

_03527:
    IfNotMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_LEECH_SEED, _03536
    IfRandomLessThan 70, _03536
    AddToMoveScore 3

_03536:
    IfNotMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_INGRAIN, _03547
    IfRandomLessThan 128, _03558
    AddToMoveScore 2
    GoTo _03558

_03547:
    IfNotMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_AQUA_RING, _03558
    IfRandomLessThan 128, _03558
    AddToMoveScore 2
    GoTo _03558

_03558:
    IfNotVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_CURSE, _03567
    IfRandomLessThan 70, _03567
    AddToMoveScore 3

_03567:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 70, _03589
    IfStatStageEqualTo AI_BATTLER_ATTACKER, BATTLE_STAT_EVASION, 6, _03589
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 40, _03587
    IfHPPercentLessThan AI_BATTLER_DEFENDER, 40, _03587
    IfRandomLessThan 70, _03589

_03587:
    AddToMoveScore -2

_03589:
    PopOrEnd 

_03590:
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 10, _03612
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_ACCURACY, 2, _03612
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 8, _03614
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_ACCURACY, 4, _03614
    GoTo _03619

_03612:
    AddToMoveScore 1

_03614:
    IfRandomLessThan 100, _03619
    AddToMoveScore 1

_03619:
    PopOrEnd 

_03620:
    IfStatStageEqualTo AI_BATTLER_DEFENDER, BATTLE_STAT_ATTACK, 6, _03643
    AddToMoveScore -1
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 90, _03633
    AddToMoveScore -1

_03633:
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_ATTACK, 3, _03643
    IfRandomLessThan 50, _03643
    AddToMoveScore -2

_03643:
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 70, _03649
    AddToMoveScore -2

_03649:
    LoadDefenderLastUsedMoveClass 
    IfLoadedNotEqualTo CLASS_SPECIAL, _03658
    IfRandomLessThan 128, _03658
    AddToMoveScore -2

_03658:
    PopOrEnd 

_03659:
    TableEntry TYPE_NORMAL
    TableEntry TYPE_FIGHTING
    TableEntry TYPE_GROUND
    TableEntry TYPE_ROCK
    TableEntry TYPE_BUG
    TableEntry TYPE_STEEL
    TableEntry TABLE_END

_03666:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 70, _03675
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_DEFENSE, 3, _03680

_03675:
    IfRandomLessThan 50, _03680
    AddToMoveScore -2

_03680:
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 70, _03686
    AddToMoveScore -2

_03686:
    PopOrEnd 

_03687:
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, _03706
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, _03706
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, _03706
    IfMoveEqualTo MOVE_ICY_WIND, _03707
    IfMoveEqualTo MOVE_ROCK_TOMB, _03707
    IfMoveEqualTo MOVE_MUD_SHOT, _03707
    PopOrEnd 

_03706:
    PopOrEnd 

_03707:
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _03714
    AddToMoveScore -3
    GoTo _03719

_03714:
    IfRandomLessThan 70, _03719
    AddToMoveScore 2

_03719:
    PopOrEnd 

_03720:
    IfStatStageEqualTo AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK, 6, _03743
    AddToMoveScore -1
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 90, _03733
    AddToMoveScore -1

_03733:
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK, 3, _03743
    IfRandomLessThan 50, _03743
    AddToMoveScore -2

_03743:
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 70, _03749
    AddToMoveScore -2

_03749:
    LoadDefenderLastUsedMoveClass 
    IfLoadedNotEqualTo CLASS_PHYSICAL, _03758
    IfRandomLessThan 128, _03758
    AddToMoveScore -2

_03758:
    PopOrEnd 

_03759:
    TableEntry TYPE_FIRE
    TableEntry TYPE_WATER
    TableEntry TYPE_GRASS
    TableEntry TYPE_ELECTRIC
    TableEntry TYPE_PSYCHIC
    TableEntry TYPE_ICE
    TableEntry TYPE_DRAGON
    TableEntry TYPE_DARK
    TableEntry TABLE_END

_03768:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 70, _03777
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_SP_DEFENSE, 3, _03782

_03777:
    IfRandomLessThan 50, _03782
    AddToMoveScore -2

_03782:
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 70, _03788
    AddToMoveScore -2

_03788:
    PopOrEnd 

_03789:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 70, _03797
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 70, _03802

_03797:
    IfRandomLessThan 100, _03802
    AddToMoveScore -1

_03802:
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_ACCURACY, 4, _03812
    IfRandomLessThan 80, _03812
    AddToMoveScore -2

_03812:
    IfNotStatus AI_BATTLER_DEFENDER, MON_CONDITION_TOXIC, _03821
    IfRandomLessThan 70, _03821
    AddToMoveScore 2

_03821:
    IfNotMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_LEECH_SEED, _03830
    IfRandomLessThan 70, _03830
    AddToMoveScore 2

_03830:
    IfNotMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_INGRAIN, _03841
    IfRandomLessThan 128, _03850
    AddToMoveScore 1
    GoTo _03850

_03841:
    IfNotMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_AQUA_RING, _03850
    IfRandomLessThan 128, _03850
    AddToMoveScore 1

_03850:
    IfNotVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_CURSE, _03859
    IfRandomLessThan 70, _03859
    AddToMoveScore 2

_03859:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 70, _03881
    IfStatStageEqualTo AI_BATTLER_DEFENDER, BATTLE_STAT_ACCURACY, 6, _03881
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 40, _03879
    IfHPPercentLessThan AI_BATTLER_DEFENDER, 40, _03879
    IfRandomLessThan 70, _03881

_03879:
    AddToMoveScore -2

_03881:
    PopOrEnd 

_03882:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 70, _03891
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 3, _03896

_03891:
    IfRandomLessThan 50, _03896
    AddToMoveScore -2

_03896:
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 70, _03902
    AddToMoveScore -2

_03902:
    PopOrEnd 

_03903:
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 8, _03955
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 8, _03955
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_ATTACK, 8, _03955
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_DEFENSE, 8, _03955
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_EVASION, 8, _03955
    IfStatStageLessThan AI_BATTLER_DEFENDER, BATTLE_STAT_ATTACK, 4, _03955
    IfStatStageLessThan AI_BATTLER_DEFENDER, BATTLE_STAT_DEFENSE, 4, _03955
    IfStatStageLessThan AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK, 4, _03955
    IfStatStageLessThan AI_BATTLER_DEFENDER, BATTLE_STAT_SP_DEFENSE, 4, _03955
    IfStatStageLessThan AI_BATTLER_DEFENDER, BATTLE_STAT_ACCURACY, 4, _03955
    GoTo _03960

_03955:
    IfRandomLessThan 50, _03960
    AddToMoveScore -3

_03960:
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_ATTACK, 8, _04017
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_DEFENSE, 8, _04017
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK, 8, _04017
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_SP_DEFENSE, 8, _04017
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 8, _04017
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 4, _04017
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 4, _04017
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_ATTACK, 4, _04017
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_DEFENSE, 4, _04017
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_ACCURACY, 4, _04017
    IfRandomLessThan 50, _04022
    AddToMoveScore -1
    GoTo _04022

_04017:
    IfRandomLessThan 50, _04022
    AddToMoveScore 3

_04022:
    PopOrEnd 

_04023:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 90, _04029
    AddToMoveScore -2

_04029:
    PopOrEnd 

_04030:
    LoadBattlerTurnCount AI_BATTLER_DEFENDER
    IfLoadedGreaterThan 3, _04076
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_SPIKES, _04081
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_STEALTH_ROCK, _04081
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_TOXIC_SPIKES, _04081
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_ATTACK, 8, _04081
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_DEFENSE, 8, _04081
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK, 8, _04081
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_SP_DEFENSE, 8, _04081
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 8, _04081
    AddToMoveScore -3
    GoTo _04086

_04076:
    IfRandomLessThan 64, _04081
    AddToMoveScore 2

_04081:
    IfRandomLessThan 128, _04086
    AddToMoveScore 2

_04086:
    PopOrEnd 

_04087:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 90, _04093
    AddToMoveScore -2

_04093:
    LoadTurnCount 
    IfLoadedEqualTo 0, _04100
    IfRandomLessThan 200, TrainerAI_ScoreMinus2

_04100:
    PopOrEnd 

_04101:
    LoadCurrentWeather 
    IfLoadedEqualTo AI_WEATHER_HAILING, _04113
    IfLoadedEqualTo AI_WEATHER_RAINING, _04113
    IfLoadedEqualTo AI_WEATHER_SANDSTORM, _04113
    GoTo _04115

_04113:
    AddToMoveScore -2

_04115:
    IfHPPercentEqualTo AI_BATTLER_ATTACKER, 100, _04137
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _04141
    AddToMoveScore -8
    GoTo _04164
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 50, _04152
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 80, _04137
    IfRandomLessThan 70, _04152

_04137:
    AddToMoveScore -3
    GoTo _04164

_04141:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 70, _04152
    IfRandomLessThan 30, _04152
    AddToMoveScore -3
    GoTo _04164

_04152:
    IfMoveEffectNotKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_STEAL_STATUS_MOVE, _04159
    IfRandomLessThan 100, _04164

_04159:
    IfRandomLessThan 20, _04164
    AddToMoveScore 2

_04164:
    PopOrEnd 

_04165:
    IfAttackerHasNoDamagingMoves _04185
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 50, _04176
    IfRandomLessThan 50, _04176
    AddToMoveScore -3

_04176:
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 50, _04185
    IfRandomLessThan 50, _04185
    AddToMoveScore -3

_04185:
    IfMoveEffectKnown AI_BATTLER_ATTACKER, BATTLE_EFFECT_SP_DEF_UP, _04195
    IfMoveEffectKnown AI_BATTLER_ATTACKER, BATTLE_EFFECT_PROTECT, _04195
    GoTo _04200

_04195:
    IfRandomLessThan 60, _04200
    AddToMoveScore 2

_04200:
    PopOrEnd 

_04201:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 50, _04225
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 90, _04214
    IfRandomLessThan 128, _04214
    AddToMoveScore 1

_04214:
    LoadDefenderLastUsedMoveClass 
    IfLoadedNotEqualTo CLASS_SPECIAL, _04227
    IfRandomLessThan 64, _04227
    AddToMoveScore 1
    GoTo _04227

_04225:
    AddToMoveScore -2

_04227:
    PopOrEnd 

_04228:
    TableEntry TYPE_FIRE
    TableEntry TYPE_WATER
    TableEntry TYPE_GRASS
    TableEntry TYPE_ELECTRIC
    TableEntry TYPE_PSYCHIC
    TableEntry TYPE_ICE
    TableEntry TYPE_DRAGON
    TableEntry TYPE_DARK
    TableEntry TABLE_END

_04237:
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _04263
    IfHPPercentNotEqualTo AI_BATTLER_ATTACKER, 100, _04248
    AddToMoveScore -8
    GoTo _04290

_04248:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 40, _04278
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 50, _04259
    IfRandomLessThan 70, _04278

_04259:
    AddToMoveScore -3
    GoTo _04290

_04263:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 60, _04278
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 70, _04274
    IfRandomLessThan 50, _04278

_04274:
    AddToMoveScore -3
    GoTo _04290

_04278:
    IfMoveEffectNotKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_STEAL_STATUS_MOVE, _04285
    IfRandomLessThan 50, _04290

_04285:
    IfRandomLessThan 10, _04290
    AddToMoveScore 3

_04290:
    PopOrEnd 

_04291:
    IfRandomLessThan 192, _04296
    AddToMoveScore 1

_04296:
    PopOrEnd 

_04297:
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 50, _04303
    AddToMoveScore -1

_04303:
    PopOrEnd 

_04304:
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_TOXIC, _04322
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_CURSE, _04322
    IfMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_PERISH_SONG, _04322
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_ATTRACT, _04322
    GoTo _04327

_04322:
    IfRandomLessThan 128, _04327
    AddToMoveScore 1

_04327:
    PopOrEnd 

_04328:
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, _04351
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, _04351
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, _04351
    IfMoveEffectivenessEquals TYPE_MULTI_DOUBLE_DAMAGE, _04346
    IfMoveEffectivenessEquals TYPE_MULTI_QUADRUPLE_DAMAGE, _04346
    IfRandomLessThan 128, _04351

_04346:
    IfRandomLessThan 128, _04351
    AddToMoveScore 1

_04351:
    PopOrEnd 

_04352:
    IfMoveKnown AI_BATTLER_ATTACKER, MOVE_PSYCH_UP, _04383

_04356:
    IfRandomLessThan 128, _04361
    AddToMoveScore 1

_04361:
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 70, _04382
    IfRandomLessThan 128, _04370
    AddToMoveScore -1

_04370:
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 50, _04382
    AddToMoveScore -1
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 30, _04382
    AddToMoveScore -1

_04382:
    PopOrEnd 

_04383:
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_ATTACK, 3, _04398
    AddToMoveScore 3
    LoadTurnCount 
    IfLoadedNotEqualTo 0, _04400
    AddToMoveScore 2
    GoTo _04400

_04398:
    AddToMoveScore -5

_04400:
    PopOrEnd 

_04401:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 50, _04425
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 90, _04414
    IfRandomLessThan 128, _04414
    AddToMoveScore 1

_04414:
    LoadDefenderLastUsedMoveClass 
    IfLoadedNotEqualTo CLASS_PHYSICAL, _04427
    IfRandomLessThan 64, _04427
    AddToMoveScore 1
    GoTo _04427

_04425:
    AddToMoveScore -2

_04427:
    PopOrEnd 

_04428:
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

_04438:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 50, _04446
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 50, _04448

_04446:
    AddToMoveScore -1

_04448:
    PopOrEnd 

_04449:
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _04460
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 70, _04465
    AddToMoveScore -1
    GoTo _04465

_04460:
    IfRandomLessThan 20, _04465
    AddToMoveScore 3

_04465:
    PopOrEnd 

_04466:
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _04485
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 60, _04485
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 40, _04480
    IfRandomLessThan 180, _04485

_04480:
    IfRandomLessThan 50, _04485
    AddToMoveScore -1

_04485:
    PopOrEnd 

_04486:
    IfMoveNotKnown AI_BATTLER_ATTACKER, MOVE_FOCUS_PUNCH, _04495
    IfRandomLessThan 96, _04495
    AddToMoveScore 1

_04495:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 90, _04522
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 70, _04517
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 50, _04512
    IfRandomLessThan 100, _04512
    AddToMoveScore -1

_04512:
    IfRandomLessThan 100, _04517
    AddToMoveScore -1

_04517:
    IfRandomLessThan 100, _04522
    AddToMoveScore -1

_04522:
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _04572
    LoadBattlerPreviousMove AI_BATTLER_DEFENDER
    LoadEffectOfLoadedMove 
    IfLoadedEqualTo BATTLE_EFFECT_STATUS_SLEEP, _04551
    IfLoadedEqualTo BATTLE_EFFECT_STATUS_BADLY_POISON, _04551
    IfLoadedEqualTo BATTLE_EFFECT_STATUS_POISON, _04551
    IfLoadedEqualTo BATTLE_EFFECT_STATUS_PARALYZE, _04551
    IfLoadedEqualTo BATTLE_EFFECT_STATUS_BURN, _04551
    IfLoadedEqualTo BATTLE_EFFECT_STATUS_CONFUSE, _04557
    IfLoadedEqualTo BATTLE_EFFECT_STATUS_LEECH_SEED, _04563
    GoTo _04572

_04551:
    IfNotStatus AI_BATTLER_DEFENDER, MON_CONDITION_ANY, _04567
    GoTo _04572

_04557:
    IfNotVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_CONFUSION, _04567
    GoTo _04572

_04563:
    IfMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_LEECH_SEED, _04572

_04567:
    IfRandomLessThan 100, _04572
    AddToMoveScore 1

_04572:
    PopOrEnd 

_04573:
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, _04607
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, _04607
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, _04607
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_TRUANT, _04596
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _04603
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 40, _04607
    GoTo _04609

_04596:
    IfRandomLessThan 80, _04609
    AddToMoveScore 1
    GoTo _04609

_04603:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 60, _04609

_04607:
    AddToMoveScore -1

_04609:
    PopOrEnd 

_04610:
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _04628
    LoadBattlerPreviousMove AI_BATTLER_DEFENDER
    LoadPowerOfLoadedMove 
    IfLoadedEqualTo 0, _04623
    AddToMoveScore 1
    GoTo _04628

_04623:
    IfRandomLessThan 100, _04628
    AddToMoveScore -1

_04628:
    PopOrEnd 

_04629:
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_SLEEP, _04713
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_ATTRACT, _04713
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_CONFUSION, _04713
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 30, _04650
    IfRandomLessThan 10, _04650
    AddToMoveScore -1

_04650:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 50, _04659
    IfRandomLessThan 100, _04659
    AddToMoveScore -1

_04659:
    IfMoveKnown AI_BATTLER_ATTACKER, MOVE_MIRROR_COAT, _04707
    LoadBattlerPreviousMove AI_BATTLER_DEFENDER
    LoadPowerOfLoadedMove 
    IfLoadedEqualTo 0, _04687
    IfTargetIsNotTaunted _04676
    IfRandomLessThan 100, _04676
    AddToMoveScore 1

_04676:
    LoadDefenderLastUsedMoveClass 
    IfLoadedNotEqualTo CLASS_PHYSICAL, _04713
    IfRandomLessThan 100, _04715
    AddToMoveScore 1
    GoTo _04715

_04687:
    IfTargetIsNotTaunted _04694
    IfRandomLessThan 100, _04694
    AddToMoveScore 1

_04694:
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedInTable _04716, _04715
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedInTable _04716, _04715
    IfRandomLessThan 50, _04715

_04707:
    IfRandomLessThan 100, _04712
    AddToMoveScore 4

_04712:
    PopOrEnd 

_04713:
    AddToMoveScore -1

_04715:
    PopOrEnd 

_04716:
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

_04726:
    IfBattlerUnderEffect AI_BATTLER_DEFENDER, CHECK_DISABLE, _04739
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _04746
    LoadBattlerPreviousMove AI_BATTLER_DEFENDER
    LoadEffectOfLoadedMove 
    IfLoadedNotInTable _04749, _04746

_04739:
    IfRandomLessThan 30, _04748
    AddToMoveScore 3
    GoTo _04748

_04746:
    AddToMoveScore -2

_04748:
    PopOrEnd 

_04749:
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

_04832:
    IfHPPercentLessThan AI_BATTLER_DEFENDER, 80, _04855
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _04847
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 40, _04855
    AddToMoveScore 1
    GoTo _04857

_04847:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 60, _04855
    AddToMoveScore 1
    GoTo _04857

_04855:
    AddToMoveScore -1

_04857:
    PopOrEnd 

_04858:
    AddToMoveScore 2
    PopOrEnd 

_04861:
    IfRandomLessThan 128, _04866
    AddToMoveScore 2

_04866:
    PopOrEnd 

_04867:
    IfStatus AI_BATTLER_ATTACKER, MON_CONDITION_SLEEP, TrainerAI_ScorePlus10
    AddToMoveScore -5
    PopOrEnd 

_04874:
    AddToMoveScore -1
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _04906
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 70, _04906
    IfRandomLessThan 128, _04888
    AddToMoveScore 1

_04888:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 50, _04906
    IfRandomLessThan 128, _04897
    AddToMoveScore 1

_04897:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 30, _04906
    IfRandomLessThan 100, _04906
    AddToMoveScore 2

_04906:
    PopOrEnd 

_04907:
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _04924
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 33, _04943
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 20, _04945
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 8, _04934
    GoTo _04936

_04924:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 60, _04943
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 40, _04945
    GoTo _04936

_04934:
    AddToMoveScore 1

_04936:
    IfRandomLessThan 100, _04945
    AddToMoveScore 1
    GoTo _04945

_04943:
    AddToMoveScore -1

_04945:
    PopOrEnd 

_04946:
    IfStatus AI_BATTLER_ATTACKER, MON_CONDITION_ANY, _04956
    IfPartyMemberStatus AI_BATTLER_ATTACKER, MON_CONDITION_ANY, _04956
    AddToMoveScore -5

_04956:
    PopOrEnd 

_04957:
    LoadHeldItemEffect AI_BATTLER_DEFENDER
    IfLoadedNotInTable _04972, _04969
    IfRandomLessThan 50, _04971
    AddToMoveScore 1
    GoTo _04971

_04969:
    AddToMoveScore -2

_04971:
    PopOrEnd 

_04972:
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

_04998:
    LoadTypeFrom LOAD_ATTACKER_TYPE_1
    IfLoadedEqualTo TYPE_GHOST, _05055
    LoadTypeFrom LOAD_ATTACKER_TYPE_2
    IfLoadedEqualTo TYPE_GHOST, _05055
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 9, _05061
    IfMoveKnown AI_BATTLER_ATTACKER, MOVE_GYRO_BALL, _05023
    IfMoveKnown AI_BATTLER_ATTACKER, MOVE_TRICK_ROOM, _05023
    GoTo _05028

_05023:
    IfRandomLessThan 32, _05033
    AddToMoveScore 1

_05028:
    IfRandomLessThan 128, _05033
    AddToMoveScore 1

_05033:
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 7, _05061
    IfRandomLessThan 128, _05043
    AddToMoveScore 1

_05043:
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 6, _05061
    IfRandomLessThan 128, _05061
    AddToMoveScore 1
    GoTo _05061

_05055:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 80, _05061
    AddToMoveScore -1

_05061:
    PopOrEnd 

_05062:
    IfMoveKnown AI_BATTLER_DEFENDER, MOVE_FEINT, _05072
    IfMoveKnown AI_BATTLER_DEFENDER, MOVE_SHADOW_FORCE, _05072
    GoTo _05077

_05072:
    IfRandomLessThan 128, _05077
    AddToMoveScore -2

_05077:
    LoadProtectChain AI_BATTLER_ATTACKER
    IfLoadedGreaterThan 1, _05176
    IfStatus AI_BATTLER_ATTACKER, MON_CONDITION_TOXIC, _05172
    IfVolatileStatus AI_BATTLER_ATTACKER, VOLATILE_CONDITION_CURSE, _05172
    IfMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_PERISH_SONG, _05172
    IfVolatileStatus AI_BATTLER_ATTACKER, VOLATILE_CONDITION_ATTRACT, _05172
    IfMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_LEECH_SEED, _05172
    IfMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_YAWN, _05172
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_RESTORE_HALF_HP, _05172
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_DEF_UP_DOUBLE_ROLLOUT_POWER, _05172
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_TOXIC, _05151
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_CURSE, _05151
    IfMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_PERISH_SONG, _05151
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_ATTRACT, _05151
    IfMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_LEECH_SEED, _05151
    IfMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_YAWN, _05151
    LoadBattleType 
    IfLoadedMask BATTLE_TYPE_DOUBLES, _05151
    IfMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_LOCK_ON, _05151
    IfRandomLessThan 85, _05151
    GoTo _05153

_05151:
    AddToMoveScore 2

_05153:
    IfRandomLessThan 128, _05158
    AddToMoveScore -1

_05158:
    LoadProtectChain AI_BATTLER_ATTACKER
    IfLoadedEqualTo 0, _05178
    AddToMoveScore -1
    IfRandomLessThan 128, _05178
    AddToMoveScore -1
    GoTo _05178

_05172:
    IfMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_LOCK_ON, _05178

_05176:
    AddToMoveScore -2

_05178:
    PopOrEnd 

_05179:
    IfRandomLessThan 128, _05199
    AddToMoveScore 1
    IfMoveKnown AI_BATTLER_ATTACKER, MOVE_ROAR, _05194
    IfMoveKnown AI_BATTLER_ATTACKER, MOVE_WHIRLWIND, _05194
    GoTo _05199

_05194:
    IfRandomLessThan 64, _05199
    AddToMoveScore 1

_05199:
    PopOrEnd 

_05200:
    LoadTypeFrom LOAD_ATTACKER_TYPE_1
    IfLoadedEqualTo TYPE_GHOST, _05219
    LoadTypeFrom LOAD_ATTACKER_TYPE_2
    IfLoadedEqualTo TYPE_GHOST, _05219
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 8, _05222
    AddToMoveScore -2
    GoTo _05227

_05219:
    IfRandomLessThan 80, _05227

_05222:
    IfRandomLessThan 80, _05227
    AddToMoveScore 2

_05227:
    PopOrEnd 

_05228:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 4, _05236
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 35, _05240

_05236:
    AddToMoveScore -1
    GoTo _05245

_05240:
    IfRandomLessThan 70, _05245
    AddToMoveScore 1

_05245:
    PopOrEnd 

_05246:
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 8, _05273
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 8, _05273
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_ATTACK, 8, _05273
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_DEFENSE, 8, _05273
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_EVASION, 8, _05273
    GoTo _05293

_05273:
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _05282
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 60, _05335
    GoTo _05286

_05282:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 70, _05335

_05286:
    IfRandomLessThan 80, _05335
    AddToMoveScore 2
    GoTo _05335

_05293:
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 7, _05320
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 7, _05320
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_ATTACK, 7, _05320
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_DEFENSE, 7, _05320
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_EVASION, 7, _05320
    GoTo _05333

_05320:
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _05329
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 60, _05333
    GoTo _05335

_05329:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 70, _05335

_05333:
    AddToMoveScore -2

_05335:
    PopOrEnd 

_05336:
    LoadIsFirstTurnInBattle AI_BATTLER_ATTACKER
    IfLoadedNotEqualTo FALSE, _05363
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_GHOST, _05363
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_PSYCHIC, _05363
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_GHOST, _05363
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_PSYCHIC, _05363
    GoTo _05368

_05363:
    IfRandomLessThan 128, _05368
    AddToMoveScore 1

_05368:
    IfMoveNotKnown AI_BATTLER_DEFENDER, MOVE_U_TURN, _05377
    IfRandomLessThan 128, _05377
    AddToMoveScore 1

_05377:
    PopOrEnd 

_05378:
    IfSpeedCompareEqualTo COMPARE_SPEED_FASTER, _05386
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_SWIFT_SWIM, _05414

_05386:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 40, _05418
    LoadCurrentWeather 
    IfLoadedEqualTo AI_WEATHER_HAILING, _05414
    IfLoadedEqualTo AI_WEATHER_SUNNY, _05414
    IfLoadedEqualTo AI_WEATHER_SANDSTORM, _05414
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_RAIN_DISH, _05414
    IfLoadedNotEqualTo ABILITY_HYDRATION, _05420
    IfStatus AI_BATTLER_ATTACKER, MON_CONDITION_ANY, _05414
    GoTo _05420

_05414:
    AddToMoveScore 1
    GoTo _05420

_05418:
    AddToMoveScore -1

_05420:
    PopOrEnd 

_05421:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 40, _05453
    LoadCurrentWeather 
    IfLoadedEqualTo AI_WEATHER_HAILING, _05449
    IfLoadedEqualTo AI_WEATHER_RAINING, _05449
    IfLoadedEqualTo AI_WEATHER_SANDSTORM, _05449
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_FLOWER_GIFT, _05449
    IfLoadedNotEqualTo ABILITY_LEAF_GUARD, _05455
    IfStatus AI_BATTLER_ATTACKER, MON_CONDITION_ANY, _05449
    GoTo _05455

_05449:
    AddToMoveScore 1
    GoTo _05455

_05453:
    AddToMoveScore -1

_05455:
    PopOrEnd 

_05456:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 90, _05462
    GoTo _05464

_05462:
    AddToMoveScore -2

_05464:
    PopOrEnd 

_05465:
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_ATTACK, 8, _05492
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_DEFENSE, 8, _05492
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK, 8, _05492
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_SP_DEFENSE, 8, _05492
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 8, _05492
    GoTo _05527

_05492:
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 7, _05524
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 7, _05524
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_ATTACK, 7, _05524
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_DEFENSE, 7, _05524
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_EVASION, 7, _05522
    IfRandomLessThan 50, _05529
    GoTo _05527

_05522:
    AddToMoveScore 1

_05524:
    AddToMoveScore 1
    PopOrEnd 

_05527:
    AddToMoveScore -2

_05529:
    PopOrEnd 

_05530:
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_SLEEP, _05614
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_ATTRACT, _05614
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_CONFUSION, _05614
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 30, _05551
    IfRandomLessThan 10, _05551
    AddToMoveScore -1

_05551:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 50, _05560
    IfRandomLessThan 100, _05560
    AddToMoveScore -1

_05560:
    IfMoveKnown AI_BATTLER_ATTACKER, MOVE_COUNTER, _05608
    LoadBattlerPreviousMove AI_BATTLER_DEFENDER
    LoadPowerOfLoadedMove 
    IfLoadedEqualTo 0, _05588
    IfTargetIsNotTaunted _05577
    IfRandomLessThan 100, _05577
    AddToMoveScore 1

_05577:
    LoadDefenderLastUsedMoveClass 
    IfLoadedNotEqualTo CLASS_SPECIAL, _05614
    IfRandomLessThan 100, _05616
    AddToMoveScore 1
    GoTo _05616

_05588:
    IfTargetIsNotTaunted _05595
    IfRandomLessThan 100, _05595
    AddToMoveScore 1

_05595:
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedInTable _05617, _05616
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedInTable _05617, _05616
    IfRandomLessThan 50, _05616

_05608:
    IfRandomLessThan 100, _05613
    AddToMoveScore 4

_05613:
    PopOrEnd 

_05614:
    AddToMoveScore -1

_05616:
    PopOrEnd 

_05617:
    TableEntry TYPE_FIRE
    TableEntry TYPE_WATER
    TableEntry TYPE_GRASS
    TableEntry TYPE_ELECTRIC
    TableEntry TYPE_PSYCHIC
    TableEntry TYPE_ICE
    TableEntry TYPE_DRAGON
    TableEntry TYPE_DARK
    TableEntry TABLE_END

_05626:
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, _05670
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, _05670
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, _05670
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_SKIP_CHARGE_TURN_IN_SUN, _05640
    GoTo _05648

_05640:
    LoadCurrentWeather 
    IfLoadedNotEqualTo AI_WEATHER_SUNNY, _05648
    AddToMoveScore 2
    GoTo _05672

_05648:
    IfHeldItemEqualTo AI_BATTLER_ATTACKER, ITEM_POWER_HERB, _05654
    GoTo _05658

_05654:
    AddToMoveScore 2
    GoTo _05672

_05658:
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_PROTECT, _05670
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 38, _05672
    AddToMoveScore -1
    GoTo _05672

_05670:
    AddToMoveScore -2

_05672:
    PopOrEnd 

_05673:
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, _05693
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, _05693
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, _05693
    LoadCurrentWeather 
    IfLoadedEqualTo AI_WEATHER_SUNNY, _05693
    IfLoadedNotEqualTo AI_WEATHER_RAINING, _05698
    AddToMoveScore 1
    GoTo _05698

_05693:
    IfRandomLessThan 50, _05698
    AddToMoveScore -3

_05698:
    PopOrEnd 

_05699:
    IfHeldItemEqualTo AI_BATTLER_ATTACKER, ITEM_POWER_HERB, _05654
    IfMoveEffectNotKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_PROTECT, _05711
    AddToMoveScore -1
    GoTo _05791

_05711:
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, _05792
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, _05792
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, _05792
    IfHeldItemEqualTo AI_BATTLER_ATTACKER, ITEM_POWER_HERB, _05726
    GoTo _05730

_05726:
    AddToMoveScore 1
    GoTo _05791

_05730:
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_TOXIC, _05786
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_CURSE, _05786
    IfMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_LEECH_SEED, _05786
    LoadCurrentWeather 
    IfLoadedEqualTo AI_WEATHER_SANDSTORM, _05751
    IfLoadedEqualTo AI_WEATHER_HAILING, _05763
    GoTo _05775

_05751:
    LoadTypeFrom LOAD_ATTACKER_TYPE_1
    IfLoadedInTable _05795, _05786
    LoadTypeFrom LOAD_ATTACKER_TYPE_2
    IfLoadedInTable _05795, _05786
    GoTo _05775

_05763:
    LoadTypeFrom LOAD_ATTACKER_TYPE_1
    IfLoadedEqualTo TYPE_ICE, _05786
    LoadTypeFrom LOAD_ATTACKER_TYPE_2
    IfLoadedEqualTo TYPE_ICE, _05786
    GoTo _05775

_05775:
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _05791
    LoadBattlerPreviousMove AI_BATTLER_DEFENDER
    LoadEffectOfLoadedMove 
    IfLoadedNotEqualTo BATTLE_EFFECT_NEXT_ATTACK_ALWAYS_HITS, _05786
    GoTo _05791

_05786:
    IfRandomLessThan 80, _05791
    AddToMoveScore 1

_05791:
    PopOrEnd 

_05792:
    AddToMoveScore 1
    PopOrEnd 

_05795:
    TableEntry TYPE_GROUND
    TableEntry TYPE_ROCK
    TableEntry TYPE_STEEL
    TableEntry TABLE_END

_05799:
    AddToMoveScore 2
    PopOrEnd 

_05802:
    LoadStockpileCount AI_BATTLER_ATTACKER
    IfLoadedLessThan 2, _05812
    IfRandomLessThan 80, _05812
    AddToMoveScore 2

_05812:
    PopOrEnd 

_05813:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 40, _05846
    LoadCurrentWeather 
    IfLoadedEqualTo AI_WEATHER_SUNNY, _05829
    IfLoadedEqualTo AI_WEATHER_RAINING, _05829
    IfLoadedEqualTo AI_WEATHER_SANDSTORM, _05829
    GoTo _05848

_05829:
    AddToMoveScore 1
    IfMoveNotKnown AI_BATTLER_ATTACKER, MOVE_BLIZZARD, _05837
    AddToMoveScore 2

_05837:
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedNotEqualTo ABILITY_ICE_BODY, _05848
    AddToMoveScore 2
    GoTo _05848

_05846:
    AddToMoveScore -1

_05848:
    PopOrEnd 

_05849:
    IfNotStatus AI_BATTLER_DEFENDER, MON_CONDITION_FACADE_BOOST, _05855
    AddToMoveScore 1

_05855:
    PopOrEnd 

_05856:
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, _05893
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, _05893
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, _05893
    IfVolatileStatus AI_BATTLER_ATTACKER, VOLATILE_CONDITION_SUBSTITUTE, TrainerAI_ScorePlus5
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_SLEEP, _05900
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_ATTRACT, _05897
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_CONFUSION, _05897
    LoadIsFirstTurnInBattle AI_BATTLER_ATTACKER
    IfLoadedNotEqualTo FALSE, _05902
    IfRandomLessThan 200, _05902
    AddToMoveScore 1
    GoTo _05902

_05893:
    AddToMoveScore -1
    GoTo _05902

_05897:
    IfRandomLessThan 100, _05902

_05900:
    AddToMoveScore 1

_05902:
    PopOrEnd 

_05903:
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_PARALYSIS, _05909
    GoTo _05911

_05909:
    AddToMoveScore 1

_05911:
    PopOrEnd 

_05912:
    LoadHeldItemEffect AI_BATTLER_ATTACKER
    IfLoadedInTable _06159, _05933
    IfLoadedInTable _06173, _05942
    IfLoadedInTable _06175, _06028
    IfLoadedInTable _06177, _06096
    IfLoadedInTable _06153, _06142

_05929:
    AddToMoveScore -3
    GoTo _06152

_05933:
    LoadHeldItemEffect AI_BATTLER_DEFENDER
    IfLoadedInTable _06201, _05929
    AddToMoveScore 5
    GoTo _06152

_05942:
    LoadHeldItemEffect AI_BATTLER_DEFENDER
    IfLoadedInTable _06201, _05929
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_ANY, _05986
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_SAFEGUARD, _05986
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_STEEL, _05986
    IfLoadedEqualTo TYPE_POISON, _05986
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_STEEL, _05986
    IfLoadedEqualTo TYPE_POISON, _05986
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_IMMUNITY, _05986
    IfLoadedEqualTo ABILITY_MAGIC_GUARD, _05986
    IfLoadedEqualTo ABILITY_POISON_HEAL, _05986
    AddToMoveScore 5
    GoTo _06152

_05986:
    IfStatus AI_BATTLER_ATTACKER, MON_CONDITION_ANY, _05929
    IfSideCondition AI_BATTLER_ATTACKER, SIDE_CONDITION_SAFEGUARD, _05929
    LoadTypeFrom LOAD_ATTACKER_TYPE_1
    IfLoadedEqualTo TYPE_STEEL, _05929
    IfLoadedEqualTo TYPE_POISON, _05929
    LoadTypeFrom LOAD_ATTACKER_TYPE_2
    IfLoadedEqualTo TYPE_STEEL, _05929
    IfLoadedEqualTo TYPE_POISON, _05929
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_IMMUNITY, _05929
    IfLoadedEqualTo ABILITY_MAGIC_GUARD, _05929
    IfLoadedEqualTo ABILITY_POISON_HEAL, _05929
    IfLoadedEqualTo ABILITY_KLUTZ, _05929
    AddToMoveScore 5
    GoTo _06152

_06028:
    LoadHeldItemEffect AI_BATTLER_DEFENDER
    IfLoadedInTable _06201, _05929
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_WATER_VEIL, _06063
    IfLoadedEqualTo ABILITY_MAGIC_GUARD, _06063
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_ANY, _06063
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_SAFEGUARD, _06063
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_FIRE, _06063
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_FIRE, _06063
    AddToMoveScore 5
    GoTo _06152

_06063:
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_WATER_VEIL, _05929
    IfLoadedEqualTo ABILITY_MAGIC_GUARD, _05929
    IfLoadedEqualTo ABILITY_KLUTZ, TrainerAI_ScoreMinus5
    IfStatus AI_BATTLER_ATTACKER, MON_CONDITION_ANY, _05929
    IfSideCondition AI_BATTLER_ATTACKER, SIDE_CONDITION_SAFEGUARD, _05929
    LoadTypeFrom LOAD_ATTACKER_TYPE_1
    IfLoadedEqualTo TYPE_FIRE, _05929
    LoadTypeFrom LOAD_ATTACKER_TYPE_2
    IfLoadedEqualTo TYPE_FIRE, _05929
    AddToMoveScore 5
    GoTo _06152

_06096:
    LoadHeldItemEffect AI_BATTLER_DEFENDER
    IfLoadedInTable _06201, _05929
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_POISON, _06120
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_POISON, _06120
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_MAGIC_GUARD, _05986
    AddToMoveScore 5
    GoTo _06152

_06120:
    LoadTypeFrom LOAD_ATTACKER_TYPE_1
    IfLoadedEqualTo TYPE_POISON, _05929
    LoadTypeFrom LOAD_ATTACKER_TYPE_2
    IfLoadedEqualTo TYPE_POISON, _05929
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_MAGIC_GUARD, _05929
    IfLoadedEqualTo ABILITY_KLUTZ, _05929
    AddToMoveScore 5
    GoTo _06152

_06142:
    LoadHeldItemEffect AI_BATTLER_DEFENDER
    IfLoadedInTable _06179, _05929
    IfRandomLessThan 50, _06152
    AddToMoveScore 2

_06152:
    PopOrEnd 

_06153:
    TableEntry HOLD_EFFECT_HP_RESTORE_SPICY
    TableEntry HOLD_EFFECT_HP_RESTORE_DRY
    TableEntry HOLD_EFFECT_HP_RESTORE_SWEET
    TableEntry HOLD_EFFECT_HP_RESTORE_BITTER
    TableEntry HOLD_EFFECT_HP_RESTORE_SOUR
    TableEntry TABLE_END

_06159:
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

_06173:
    TableEntry HOLD_EFFECT_PSN_USER
    TableEntry TABLE_END

_06175:
    TableEntry HOLD_EFFECT_BRN_USER
    TableEntry TABLE_END

_06177:
    TableEntry HOLD_EFFECT_HP_RESTORE_PSN_TYPE
    TableEntry TABLE_END

_06179:
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

_06201:
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

_06218:
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedInTable _06238, _06228
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedInTable _06238, _06232

_06228:
    AddToMoveScore -1
    GoTo _06237

_06232:
    IfRandomLessThan 50, _06237
    AddToMoveScore 2

_06237:
    PopOrEnd 

_06238:
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

_06264:
    PopOrEnd 

_06265:
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, _06292
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, _06292
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, _06292
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 6, _06292
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _06288
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 40, _06292
    GoTo _06294

_06288:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 60, _06294

_06292:
    AddToMoveScore -1

_06294:
    PopOrEnd 

_06295:
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 30, _06304
    IfRandomLessThan 100, _06304
    AddToMoveScore -1

_06304:
    LoadIsFirstTurnInBattle AI_BATTLER_ATTACKER
    IfLoadedEqualTo FALSE, _06319
    IfRandomLessThan 150, _06324
    AddToMoveScore 1
    GoTo _06324
    IfRandomLessThan 50, _06324

_06319:
    IfRandomLessThan 30, _06324
    AddToMoveScore -1

_06324:
    PopOrEnd 

_06325:
    LoadRecycleItem AI_BATTLER_ATTACKER
    IfLoadedNotInTable _06340, _06337
    IfRandomLessThan 50, _06339
    AddToMoveScore 1
    GoTo _06339

_06337:
    AddToMoveScore -2

_06339:
    PopOrEnd 

_06340:
    TableEntry ITEM_CHESTO_BERRY
    TableEntry ITEM_LUM_BERRY
    TableEntry ITEM_STARF_BERRY
    TableEntry TABLE_END

_06344:
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_SLEEP, _06363
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_ATTRACT, _06363
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_CONFUSION, _06363
    IfRandomLessThan 180, _06363
    AddToMoveScore 2
    GoTo _06365

_06363:
    AddToMoveScore -2

_06365:
    PopOrEnd 

_06366:
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_REFLECT, _06376
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_LIGHT_SCREEN, _06376
    GoTo _06378

_06376:
    AddToMoveScore 1

_06378:
    PopOrEnd 

_06379:
    IfHPPercentLessThan AI_BATTLER_DEFENDER, 30, _06393
    LoadIsFirstTurnInBattle AI_BATTLER_ATTACKER
    IfLoadedGreaterThan FALSE, _06393
    IfRandomLessThan 180, _06393
    AddToMoveScore 1

_06393:
    PopOrEnd 

_06394:
    IfHPPercentLessThan AI_BATTLER_DEFENDER, 70, _06417
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _06409
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 40, _06417
    AddToMoveScore 1
    GoTo _06419

_06409:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 50, _06417
    AddToMoveScore 1
    GoTo _06419

_06417:
    AddToMoveScore -1

_06419:
    PopOrEnd 

_06420:
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, _06442
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, _06442
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, _06442
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _06438
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 50, _06444
    GoTo _06442

_06438:
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 70, _06444

_06442:
    AddToMoveScore -1

_06444:
    PopOrEnd 

_06445:
    LoadIsFirstTurnInBattle AI_BATTLER_ATTACKER
    IfLoadedGreaterThan FALSE, _06455
    IfRandomLessThan 100, _06455
    AddToMoveScore 2

_06455:
    PopOrEnd 

_06456:
    IfHPPercentLessThan AI_BATTLER_DEFENDER, 50, _06462
    GoTo _06464

_06462:
    AddToMoveScore -1

_06464:
    PopOrEnd 

_06465:
    LoadIsFirstTurnInBattle AI_BATTLER_ATTACKER
    IfLoadedEqualTo TRUE, _06503
    IfRandomLessThan 30, _06522
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _06489
    IfHPPercentNotEqualTo AI_BATTLER_ATTACKER, 100, _06517
    IfHPPercentLessThan AI_BATTLER_DEFENDER, 70, _06517
    IfRandomLessThan 60, _06522
    GoTo _06517

_06489:
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 25, _06517
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_RESTORE_HALF_HP, _06503
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_DEF_UP_DOUBLE_ROLLOUT_POWER, _06503
    GoTo _06510

_06503:
    IfRandomLessThan 150, _06522
    AddToMoveScore 2
    GoTo _06522

_06510:
    IfRandomLessThan 230, _06517
    AddToMoveScore 1
    GoTo _06522

_06517:
    IfRandomLessThan 30, _06522
    AddToMoveScore -2

_06522:
    PopOrEnd 

_06523:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 50, _06543
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_ELECTRIC, _06539
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_ELECTRIC, _06539
    GoTo _06543

_06539:
    AddToMoveScore 1
    GoTo _06545

_06543:
    AddToMoveScore -1

_06545:
    PopOrEnd 

_06546:
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, _06568
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, _06568
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, _06568
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _06564
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 60, _06570
    GoTo _06568

_06564:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 80, _06570

_06568:
    AddToMoveScore -1

_06570:
    PopOrEnd 

_06571:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 50, _06591
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_FIRE, _06587
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_FIRE, _06587
    GoTo _06591

_06587:
    AddToMoveScore 1
    GoTo _06593

_06591:
    AddToMoveScore -1

_06593:
    PopOrEnd 

_06594:
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _06608
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 50, _06613
    IfRandomLessThan 70, _06613
    AddToMoveScore -1
    GoTo _06613

_06608:
    IfRandomLessThan 128, _06613
    AddToMoveScore 1

_06613:
    PopOrEnd 

_06614:
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_LEVITATE, _06642
    IfMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_MAGNET_RISE, _06642
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_FLYING, _06642
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_FLYING, _06642
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 60, _06647
    IfRandomLessThan 128, _06642
    GoTo _06647

_06642:
    IfRandomLessThan 64, _06647
    AddToMoveScore 1

_06647:
    PopOrEnd 

_06648:
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_DARK, _06666
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_DARK, _06666
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 8, _06669
    AddToMoveScore -2
    PopOrEnd 

_06666:
    IfRandomLessThan 80, _06674

_06669:
    IfRandomLessThan 80, _06674
    AddToMoveScore 2

_06674:
    PopOrEnd 

_06675:
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, _06690
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, _06690
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, _06690
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_SLEEP, _06694
    GoTo _06696

_06690:
    AddToMoveScore -1
    GoTo _06696

_06694:
    AddToMoveScore 1

_06696:
    PopOrEnd 

_06697:
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, _06711
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, _06711
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, _06711
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _06714
    GoTo _06716

_06711:
    AddToMoveScore -1
    PopOrEnd 

_06714:
    AddToMoveScore 1

_06716:
    PopOrEnd 

_06717:
    PopOrEnd 

_06718:
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, _06740
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, _06740
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, _06740
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 50, _06742
    AddToMoveScore 1
    IfRandomLessThan 128, _06742
    AddToMoveScore 1
    GoTo _06742

_06740:
    AddToMoveScore -1

_06742:
    PopOrEnd 

_06743:
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_PROTECT, _06752
    IfRandomLessThan 64, _06752
    GoTo _06817

_06752:
    IfStatus AI_BATTLER_ATTACKER, MON_CONDITION_TOXIC, _06785
    IfVolatileStatus AI_BATTLER_ATTACKER, VOLATILE_CONDITION_CURSE, _06785
    IfMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_PERISH_SONG, _06785
    IfVolatileStatus AI_BATTLER_ATTACKER, VOLATILE_CONDITION_ATTRACT, _06785
    IfMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_LEECH_SEED, _06785
    IfMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_YAWN, _06785
    IfHPPercentEqualTo AI_BATTLER_DEFENDER, 100, _06790
    LoadHeldItemEffect AI_BATTLER_DEFENDER
    IfLoadedNotInTable _06818, _06790

_06785:
    IfRandomLessThan 128, _06790
    AddToMoveScore 1

_06790:
    LoadProtectChain AI_BATTLER_DEFENDER
    IfLoadedEqualTo 0, _06801
    IfLoadedEqualTo 1, _06808
    IfLoadedGreaterThan 2, _06815

_06801:
    IfRandomLessThan 128, _06817
    AddToMoveScore 1
    GoTo _06817

_06808:
    IfRandomLessThan 192, _06817
    AddToMoveScore 1
    GoTo _06817

_06815:
    AddToMoveScore -2

_06817:
    PopOrEnd 

_06818:
    TableEntry HOLD_EFFECT_HP_RESTORE_GRADUAL
    TableEntry HOLD_EFFECT_HP_RESTORE_PSN_TYPE
    TableEntry TABLE_END

_06821:
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, _06847
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, _06847
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, _06847
    LoadIsFirstTurnInBattle AI_BATTLER_ATTACKER
    IfLoadedEqualTo FALSE, _06840
    IfRandomLessThan 64, _06840
    AddToMoveScore 1

_06840:
    IfRandomLessThan 128, _06849
    AddToMoveScore 1
    GoTo _06849

_06847:
    AddToMoveScore -1

_06849:
    PopOrEnd 

_06850:
    IfRandomLessThan 64, _06873
    IfSpeedCompareEqualTo COMPARE_SPEED_FASTER, _06871
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 31, _06871
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 75, _06867
    IfRandomLessThan 64, _06873

_06867:
    AddToMoveScore 1
    GoTo _06873

_06871:
    AddToMoveScore -1

_06873:
    PopOrEnd 

_06874:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 51, _06892
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 90, _06885
    IfRandomLessThan 128, _06894

_06885:
    IfRandomLessThan 64, _06894
    AddToMoveScore 1
    GoTo _06894

_06892:
    AddToMoveScore -1

_06894:
    PopOrEnd 

_06895:
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_SLEEP, _06964
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_ATTRACT, _06964
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_CONFUSION, _06964
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_DOUBLE_POWER_IF_HIT, _06964
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_HIT_LAST_WHIFF_IF_HIT, _06964
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_PRIORITY_NEG_1_BYPASS_ACCURACY, _06964
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 30, _06928
    IfRandomLessThan 10, _06928
    AddToMoveScore -1

_06928:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 50, _06937
    IfRandomLessThan 100, _06937
    AddToMoveScore -1

_06937:
    IfRandomLessThan 192, _06942
    AddToMoveScore 1

_06942:
    LoadBattlerPreviousMove AI_BATTLER_DEFENDER
    LoadPowerOfLoadedMove 
    IfLoadedEqualTo 0, _06955
    IfTargetIsNotTaunted _06955
    IfRandomLessThan 100, _06955
    AddToMoveScore 1

_06955:
    IfTargetIsNotTaunted _06966
    IfRandomLessThan 100, _06966
    AddToMoveScore 1
    GoTo _06966

_06964:
    AddToMoveScore -1

_06966:
    PopOrEnd 

_06967:
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, _06985
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, _06985
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, _06985
    CountAlivePartyBattlers AI_BATTLER_ATTACKER
    IfLoadedEqualTo 0, _07035
    IfHasSuperEffectiveMove _06989
    GoTo _06994

_06985:
    AddToMoveScore -1
    GoTo _07035

_06989:
    IfRandomLessThan 64, _06994
    AddToMoveScore -2

_06994:
    IfPartyMemberDealsMoreDamage USE_MAX_DAMAGE, _07004
    IfRandomLessThan 64, _07004
    AddToMoveScore -2
    GoTo _07035

_07004:
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 70, _07017
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 30, _07022
    IfRandomLessThan 128, _07027
    GoTo _07022

_07017:
    IfRandomLessThan 64, _07022
    AddToMoveScore 1

_07022:
    IfRandomLessThan 128, _07027
    AddToMoveScore 1

_07027:
    IfSpeedCompareEqualTo COMPARE_SPEED_FASTER, _07033
    IfRandomLessThan 128, _07035

_07033:
    AddToMoveScore 1

_07035:
    PopOrEnd 

_07036:
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, _07058
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, _07058
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, _07058
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _07054
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 60, _07060
    GoTo _07058

_07054:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 80, _07060

_07058:
    AddToMoveScore -1

_07060:
    PopOrEnd 

_07061:
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, _07083
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, _07083
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, _07083
    IfSpeedCompareEqualTo COMPARE_SPEED_FASTER, _07085
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 30, _07085
    IfRandomLessThan 64, _07085
    AddToMoveScore 1
    PopOrEnd 

_07083:
    AddToMoveScore -1

_07085:
    PopOrEnd 

_07086:
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, _07113
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, _07113
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, _07113
    IfSpeedCompareEqualTo COMPARE_SPEED_FASTER, _07122
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_ROUGH_SKIN, _07117
    LoadHeldItemEffect AI_BATTLER_ATTACKER
    IfLoadedInTable _07123, _07117
    IfRandomLessThan 128, _07117
    GoTo _07122

_07113:
    AddToMoveScore -1
    GoTo _07122

_07117:
    IfRandomLessThan 128, _07122
    AddToMoveScore 1

_07122:
    PopOrEnd 

_07123:
    TableEntry ITEM_JABOCA_BERRY
    TableEntry ITEM_ROWAP_BERRY
    TableEntry TABLE_END

_07126:
    IfRandomLessThan 128, _07131
    AddToMoveScore 1

_07131:
    PopOrEnd 

_07132:
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, _07185
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, _07185
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, _07185
    LoadFlingPower AI_BATTLER_ATTACKER
    IfLoadedLessThan 30, _07159
    IfLoadedGreaterThan 90, _07163
    IfLoadedGreaterThan 60, _07178
    IfRandomLessThan 128, _07192
    AddToMoveScore -1
    GoTo _07192

_07159:
    AddToMoveScore -2
    GoTo _07192

_07163:
    IfMoveEffectivenessEquals TYPE_MULTI_DOUBLE_DAMAGE, _07176
    IfMoveEffectivenessEquals TYPE_MULTI_QUADRUPLE_DAMAGE, _07176
    IfRandomLessThan 128, _07178
    AddToMoveScore 1
    GoTo _07178

_07176:
    AddToMoveScore 4

_07178:
    IfRandomLessThan 64, _07192
    AddToMoveScore 1
    GoTo _07192

_07185:
    LoadHeldItemEffect AI_BATTLER_ATTACKER
    IfLoadedInTable _07193, _07192
    AddToMoveScore -1

_07192:
    PopOrEnd 

_07193:
    TableEntry HOLD_EFFECT_SOMETIMES_FLINCH
    TableEntry HOLD_EFFECT_STRENGTHEN_POISON
    TableEntry HOLD_EFFECT_PSN_USER
    TableEntry HOLD_EFFECT_BRN_USER
    TableEntry HOLD_EFFECT_PIKA_SPATK_UP
    TableEntry TABLE_END

_07199:
    IfNotStatus AI_BATTLER_ATTACKER, MON_CONDITION_ANY, TrainerAI_ScoreMinus10
    IfRandomLessThan 128, _07212
    IfHPPercentLessThan AI_BATTLER_DEFENDER, 30, _07212
    AddToMoveScore 1

_07212:
    PopOrEnd 

_07213:
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, _07277
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, _07277
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, _07277
    LoadCurrentMovePP 
    IfLoadedEqualTo 1, _07273
    IfLoadedEqualTo 2, _07264
    IfLoadedEqualTo 3, _07266
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedNotEqualTo ABILITY_PRESSURE, _07242
    IfRandomLessThan 30, _07242
    AddToMoveScore 1

_07242:
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 10, _07264
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_ACCURACY, 2, _07264
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 8, _07266
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_ACCURACY, 4, _07266
    GoTo _07279

_07264:
    AddToMoveScore 1

_07266:
    IfRandomLessThan 100, _07279
    AddToMoveScore 1
    GoTo _07279

_07273:
    AddToMoveScore 3
    GoTo _07279

_07277:
    AddToMoveScore -1

_07279:
    PopOrEnd 

_07280:
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_RECOVER_DAMAGE_SLEEP, _07349
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_RESTORE_HALF_HP, _07349
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_HEAL_HALF_REMOVE_FLYING_TYPE, _07349
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_UNUSED_157, _07349
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_HEAL_HALF_MORE_IN_SUN, _07349
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_REST, _07349
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_SWALLOW, _07349
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_RECOVER_HALF_DAMAGE_DEALT, _07349
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_GROUND_TRAP_USER_CONTINUOUS_HEAL, _07349
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_RESTORE_HP_EVERY_TURN, _07349
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_STATUS_LEECH_SEED, _07349
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_FAINT_AND_FULL_HEAL_NEXT_MON, _07349
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_FAINT_FULL_RESTORE_NEXT_MON, _07349
    IfMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_LEECH_SEED, _07349
    IfMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_AQUA_RING, _07349
    IfMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_INGRAIN, _07349
    IfRandomLessThan 96, _07349
    GoTo _07354

_07349:
    IfRandomLessThan 25, _07354
    AddToMoveScore 1

_07354:
    PopOrEnd 

_07355:
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, _07392
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, _07392
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, _07392
    IfHPPercentLessThan AI_BATTLER_DEFENDER, 50, _07392
    IfHPPercentEqualTo AI_BATTLER_DEFENDER, 100, _07378
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 85, _07385
    GoTo _07394

_07378:
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _07383
    AddToMoveScore 1

_07383:
    AddToMoveScore 1

_07385:
    IfRandomLessThan 25, _07394
    AddToMoveScore 1
    GoTo _07394

_07392:
    AddToMoveScore -1

_07394:
    PopOrEnd 

_07395:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 90, _07409
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 60, _07416
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 30, _07423
    GoTo TrainerAI_ScoreMinus2

_07409:
    IfRandomLessThan 96, _07430
    AddToMoveScore 1
    GoTo _07430

_07416:
    IfRandomLessThan 128, _07430
    AddToMoveScore 1
    GoTo _07430

_07423:
    IfRandomLessThan 164, _07430
    AddToMoveScore 1
    GoTo _07430

_07430:
    PopOrEnd 

_07431:
    IfRandomLessThan 64, _07457
    AddToMoveScore 1
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 70, _07457
    IfRandomLessThan 128, _07445
    AddToMoveScore -1

_07445:
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 50, _07457
    AddToMoveScore -1
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 30, _07457
    AddToMoveScore -1

_07457:
    PopOrEnd 

_07458:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 70, _07483
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_HIGH_CRITICAL, _07479
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_HIGH_CRITICAL_BURN_HIT, _07479
    IfMoveEffectKnown AI_BATTLER_DEFENDER, BATTLE_EFFECT_HIGH_CRITICAL_POISON_HIT, _07479
    IfRandomLessThan 64, _07479
    GoTo _07485

_07479:
    AddToMoveScore 1
    GoTo _07485

_07483:
    AddToMoveScore -1

_07485:
    PopOrEnd 

_07486:
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _07516
    IfBattlerDealsMoreDamage AI_BATTLER_DEFENDER, USE_MAX_DAMAGE, _07495
    GoTo _07500

_07495:
    IfRandomLessThan 32, _07500
    AddToMoveScore 1

_07500:
    LoadDefenderLastUsedMoveClass 
    IfLoadedEqualTo CLASS_STATUS, _07509
    IfRandomLessThan 128, _07518
    AddToMoveScore 1

_07509:
    IfRandomLessThan 64, _07518
    AddToMoveScore 1
    GoTo _07518

_07516:
    AddToMoveScore -2

_07518:
    PopOrEnd 

_07519:
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _07545
    IfBattlerDealsMoreDamage AI_BATTLER_DEFENDER, USE_MAX_DAMAGE, _07538
    LoadBattlerPreviousMove AI_BATTLER_DEFENDER
    IfLoadedNotInTable _07560, _07545
    IfRandomLessThan 128, _07559
    AddToMoveScore 2
    GoTo _07559

_07538:
    IfRandomLessThan 32, _07559
    AddToMoveScore 2
    GoTo _07559

_07545:
    IfBattlerDealsMoreDamage AI_BATTLER_DEFENDER, USE_MAX_DAMAGE, _07559
    LoadBattlerPreviousMove AI_BATTLER_DEFENDER
    IfLoadedInTable _07560, _07559
    IfRandomLessThan 80, _07559
    AddToMoveScore -1

_07559:
    PopOrEnd 

_07560:
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

_07608:
    DiffStatStages AI_BATTLER_DEFENDER, BATTLE_STAT_ATTACK
    IfLoadedGreaterThan MOVE_DOUBLE_SLAP, _07625
    IfLoadedGreaterThan MOVE_POUND, _07639
    IfLoadedGreaterThan MOVE_NONE, _07653
    IfLoadedEqualTo MOVE_NONE, _07667
    GoTo _07716

_07625:
    DiffStatStages AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK
    IfLoadedGreaterThan MOVE_DOUBLE_SLAP, _07681
    IfLoadedGreaterThan MOVE_POUND, _07688
    IfLoadedEqualTo MOVE_NONE, _07695
    GoTo _07716

_07639:
    DiffStatStages AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK
    IfLoadedGreaterThan MOVE_DOUBLE_SLAP, _07688
    IfLoadedGreaterThan MOVE_POUND, _07695
    IfLoadedEqualTo MOVE_NONE, _07702
    GoTo _07716

_07653:
    DiffStatStages AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK
    IfLoadedGreaterThan MOVE_DOUBLE_SLAP, _07695
    IfLoadedGreaterThan MOVE_POUND, _07702
    IfLoadedEqualTo MOVE_NONE, _07709
    GoTo _07716

_07667:
    DiffStatStages AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK
    IfLoadedGreaterThan MOVE_DOUBLE_SLAP, _07695
    IfLoadedGreaterThan MOVE_POUND, _07702
    IfLoadedGreaterThan MOVE_NONE, _07709
    GoTo _07716

_07681:
    IfRandomLessThan 128, _07688
    AddToMoveScore 5
    GoTo _07716

_07688:
    IfRandomLessThan 128, _07695
    AddToMoveScore 4
    GoTo _07716

_07695:
    IfRandomLessThan 128, _07702
    AddToMoveScore 3
    GoTo _07716

_07702:
    IfRandomLessThan 128, _07709
    AddToMoveScore 2
    GoTo _07716

_07709:
    IfRandomLessThan 128, _07716
    AddToMoveScore 1
    GoTo _07716

_07716:
    PopOrEnd 

_07717:
    DiffStatStages AI_BATTLER_DEFENDER, BATTLE_STAT_DEFENSE
    IfLoadedGreaterThan MOVE_DOUBLE_SLAP, _07734
    IfLoadedGreaterThan MOVE_POUND, _07748
    IfLoadedGreaterThan MOVE_NONE, _07762
    IfLoadedEqualTo MOVE_NONE, _07776
    GoTo _07825

_07734:
    DiffStatStages AI_BATTLER_DEFENDER, BATTLE_STAT_SP_DEFENSE
    IfLoadedGreaterThan MOVE_DOUBLE_SLAP, _07790
    IfLoadedGreaterThan MOVE_POUND, _07797
    IfLoadedEqualTo MOVE_NONE, _07804
    GoTo _07825

_07748:
    DiffStatStages AI_BATTLER_DEFENDER, BATTLE_STAT_SP_DEFENSE
    IfLoadedGreaterThan MOVE_DOUBLE_SLAP, _07797
    IfLoadedGreaterThan MOVE_POUND, _07804
    IfLoadedEqualTo MOVE_NONE, _07811
    GoTo _07825

_07762:
    DiffStatStages AI_BATTLER_DEFENDER, BATTLE_STAT_SP_DEFENSE
    IfLoadedGreaterThan MOVE_DOUBLE_SLAP, _07804
    IfLoadedGreaterThan MOVE_POUND, _07811
    IfLoadedEqualTo MOVE_NONE, _07818
    GoTo _07825

_07776:
    DiffStatStages AI_BATTLER_DEFENDER, BATTLE_STAT_SP_DEFENSE
    IfLoadedGreaterThan MOVE_DOUBLE_SLAP, _07804
    IfLoadedGreaterThan MOVE_POUND, _07811
    IfLoadedGreaterThan MOVE_NONE, _07818
    GoTo _07825

_07790:
    IfRandomLessThan 128, _07797
    AddToMoveScore 5
    GoTo _07825

_07797:
    IfRandomLessThan 128, _07804
    AddToMoveScore 4
    GoTo _07825

_07804:
    IfRandomLessThan 128, _07811
    AddToMoveScore 3
    GoTo _07825

_07811:
    IfRandomLessThan 128, _07818
    AddToMoveScore 2
    GoTo _07825

_07818:
    IfRandomLessThan 128, _07825
    AddToMoveScore 1
    GoTo _07825

_07825:
    PopOrEnd 

_07826:
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, _07874
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, _07874
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, _07874
    SumPositiveStatStages AI_BATTLER_DEFENDER
    IfLoadedGreaterThan MOVE_PAY_DAY, _07854
    IfLoadedGreaterThan MOVE_MEGA_PUNCH, _07859
    IfLoadedGreaterThan MOVE_COMET_PUNCH, _07864
    IfLoadedGreaterThan MOVE_DOUBLE_SLAP, _07869
    IfLoadedGreaterThan MOVE_KARATE_CHOP, _07869
    GoTo _07874

_07854:
    IfRandomLessThan 128, _07859
    AddToMoveScore 4

_07859:
    IfRandomLessThan 128, _07864
    AddToMoveScore 3

_07864:
    IfRandomLessThan 128, _07869
    AddToMoveScore 2

_07869:
    IfRandomLessThan 128, _07874
    AddToMoveScore 1

_07874:
    PopOrEnd 

_07875:
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, _07889
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, _07889
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, _07889
    IfCanUseLastResort AI_BATTLER_ATTACKER, _07893
    GoTo _07895

_07889:
    AddToMoveScore -1
    GoTo _07895

_07893:
    AddToMoveScore 1

_07895:
    PopOrEnd 

_07896:
    IfMoveNotKnown AI_BATTLER_DEFENDER, MOVE_REST, _07902
    AddToMoveScore 1

_07902:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 50, _07911
    IfRandomLessThan 128, _07911
    AddToMoveScore 1

_07911:
    IfRandomLessThan 64, _07918
    AddToMoveScore 1
    GoTo _07918

_07918:
    PopOrEnd 

_07919:
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, _07935
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, _07935
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, _07935
    IfRandomLessThan 64, _07937
    AddToMoveScore 1
    GoTo _07937

_07935:
    AddToMoveScore -1

_07937:
    PopOrEnd 

_07938:
    IfRandomLessThan 128, _07958
    AddToMoveScore 1
    IfMoveKnown AI_BATTLER_ATTACKER, MOVE_ROAR, _07953
    IfMoveKnown AI_BATTLER_ATTACKER, MOVE_WHIRLWIND, _07953
    GoTo _07958

_07953:
    IfRandomLessThan 64, _07958
    AddToMoveScore 1

_07958:
    PopOrEnd 

_07959:
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_ATTACK, 7, _07990
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_DEFENSE, 7, _07990
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK, 7, _07990
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_SP_DEFENSE, 7, _07990
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 7, _07990
    IfVolatileStatus AI_BATTLER_DEFENDER, VOLATILE_CONDITION_FOCUS_ENERGY, _07990
    GoTo _08029

_07990:
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 7, _08026
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_DEFENSE, 7, _08026
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_ATTACK, 7, _08026
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_DEFENSE, 7, _08026
    IfStatStageLessThan AI_BATTLER_ATTACKER, BATTLE_STAT_EVASION, 7, _08024
    IfNotVolatileStatus AI_BATTLER_ATTACKER, VOLATILE_CONDITION_FOCUS_ENERGY, _08026
    IfRandomLessThan 50, _08031
    GoTo _08029

_08024:
    AddToMoveScore 1

_08026:
    AddToMoveScore 1
    PopOrEnd 

_08029:
    AddToMoveScore -2

_08031:
    PopOrEnd 

_08032:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 30, _08041
    IfRandomLessThan 128, _08041
    AddToMoveScore 1

_08041:
    PopOrEnd 

_08042:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 50, _08077
    IfMoveKnown AI_BATTLER_DEFENDER, MOVE_EARTHQUAKE, _08060
    IfMoveKnown AI_BATTLER_DEFENDER, MOVE_EARTH_POWER, _08060
    IfMoveKnown AI_BATTLER_DEFENDER, MOVE_FISSURE, _08060
    GoTo _08062

_08060:
    AddToMoveScore 1

_08062:
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_GROUND, _08075
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_GROUND, _08075
    IfRandomLessThan 128, _08077

_08075:
    AddToMoveScore 1

_08077:
    PopOrEnd 
    PopOrEnd 
    PopOrEnd 
    PopOrEnd 
    PopOrEnd 

_08082:
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_LIGHT_SCREEN, _08104
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_REFLECT, _08104
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_SPIKES, _08134
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_STEALTH_ROCK, _08134
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_TOXIC_SPIKES, _08134
    GoTo _08145

_08104:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 30, _08113
    CountAlivePartyBattlers AI_BATTLER_ATTACKER
    IfLoadedEqualTo 0, _08154

_08113:
    AddToMoveScore 1
    CountAlivePartyBattlers AI_BATTLER_DEFENDER
    IfLoadedEqualTo 0, _08165
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_SPIKES, _08138
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_STEALTH_ROCK, _08138
    IfSideCondition AI_BATTLER_DEFENDER, SIDE_CONDITION_TOXIC_SPIKES, _08138
    GoTo _08145

_08134:
    AddToMoveScore -2
    GoTo _08145

_08138:
    IfRandomLessThan 128, _08145
    AddToMoveScore -1
    GoTo _08145

_08145:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 70, _08154
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_EVASION, 3, _08159

_08154:
    IfRandomLessThan 50, _08159
    AddToMoveScore -2

_08159:
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 70, _08165
    AddToMoveScore -2

_08165:
    PopOrEnd 

_08166:
    LoadBattleType 
    IfLoadedMask BATTLE_TYPE_DOUBLES, _08191
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 30, _08179
    CountAlivePartyBattlers AI_BATTLER_ATTACKER
    IfLoadedEqualTo 0, _08191

_08179:
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _08186
    AddToMoveScore -1
    GoTo _08191

_08186:
    IfRandomLessThan 64, _08191
    AddToMoveScore 3

_08191:
    PopOrEnd 

_08192:
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, _08209
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, _08209
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, _08209
    LoadCurrentWeather 
    IfLoadedNotEqualTo AI_WEATHER_HAILING, _08214
    AddToMoveScore 1
    GoTo _08214

_08209:
    IfRandomLessThan 50, _08214
    AddToMoveScore -3

_08214:
    PopOrEnd 
    PopOrEnd 

_08216:
    IfStatStageEqualTo AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK, 6, _08239
    AddToMoveScore -1
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 90, _08229
    AddToMoveScore -1

_08229:
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_SP_ATTACK, 3, _08239
    IfRandomLessThan 50, _08239
    AddToMoveScore -2

_08239:
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 70, _08245
    AddToMoveScore -2

_08245:
    LoadDefenderLastUsedMoveClass 
    IfLoadedNotEqualTo CLASS_PHYSICAL, _08254
    IfRandomLessThan 64, _08254
    AddToMoveScore -1

_08254:
    PopOrEnd 

_08255:
    IfRandomLessThan 128, _08275
    AddToMoveScore 1
    IfMoveKnown AI_BATTLER_ATTACKER, MOVE_ROAR, _08270
    IfMoveKnown AI_BATTLER_ATTACKER, MOVE_WHIRLWIND, _08270
    GoTo _08275

_08270:
    IfRandomLessThan 64, _08275
    AddToMoveScore 1

_08275:
    PopOrEnd 
    PopOrEnd 
    PopOrEnd 

_08278:
    IfMoveEffectivenessEquals TYPE_MULTI_IMMUNE, _08299
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, _08299
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, _08299
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_ROCK_HEAD, _08297
    IfLoadedEqualTo ABILITY_MAGIC_GUARD, _08297
    GoTo _08299

_08297:
    AddToMoveScore 1

_08299:
    PopOrEnd 

_08300:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 80, _08312
    IfSpeedCompareEqualTo COMPARE_SPEED_SLOWER, _08312
    IfRandomLessThan 192, _08354
    GoTo TrainerAI_ScoreMinus5

_08312:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 50, _08349
    IfRandomLessThan 192, _08338
    AddToMoveScore 1
    IfHasSuperEffectiveMove _08328
    IfRandomLessThan 192, _08328
    AddToMoveScore 1

_08328:
    IfPartyMemberDealsMoreDamage USE_MAX_DAMAGE, _08333
    GoTo _08338

_08333:
    IfRandomLessThan 128, _08338
    AddToMoveScore 1

_08338:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 30, _08354
    IfRandomLessThan 128, _08354
    AddToMoveScore 1
    GoTo _08354

_08349:
    IfRandomLessThan 50, _08354
    AddToMoveScore -1

_08354:
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

    ; If the current move is not variable power or Risky, break.
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
    CountAlivePartyBattlers AI_BATTLER_ATTACKER
    IfLoadedEqualTo 0, _08645
    FlagMoveDamageScore FALSE
    IfLoadedNotEqualTo AI_NO_COMPARISON_MADE, _08645
    IfMoveEffectKnown AI_BATTLER_ATTACKER, BATTLE_EFFECT_PASS_STATS_AND_STATUS, _08566
    IfRandomLessThan 80, TrainerAI_Risky_Terminate

_08566:
    IfMoveEqualTo MOVE_SWORDS_DANCE, _08589
    IfMoveEqualTo MOVE_DRAGON_DANCE, _08589
    IfMoveEqualTo MOVE_CALM_MIND, _08589
    IfMoveEqualTo MOVE_NASTY_PLOT, _08589
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_PROTECT, _08599
    IfMoveEqualTo MOVE_BATON_PASS, _08610
    IfRandomLessThan 20, TrainerAI_Risky_Terminate
    AddToMoveScore 3

_08589:
    LoadTurnCount 
    IfLoadedEqualTo 0, TrainerAI_ScorePlus5
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 60, TrainerAI_ScoreMinus10
    GoTo TrainerAI_ScorePlus1

_08599:
    LoadBattlerPreviousMove AI_BATTLER_ATTACKER
    IfLoadedInTable _08607, TrainerAI_ScoreMinus2
    AddToMoveScore 2
    PopOrEnd 

_08607:
    TableEntry MOVE_PROTECT
    TableEntry MOVE_DETECT
    TableEntry TABLE_END

_08610:
    LoadTurnCount 
    IfLoadedEqualTo 0, TrainerAI_ScoreMinus2
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 8, TrainerAI_ScorePlus3
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 7, TrainerAI_ScorePlus2
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_ATTACK, 6, TrainerAI_ScorePlus1
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_ATTACK, 8, TrainerAI_ScorePlus3
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_ATTACK, 7, TrainerAI_ScorePlus2
    IfStatStageGreaterThan AI_BATTLER_ATTACKER, BATTLE_STAT_SP_ATTACK, 6, TrainerAI_ScorePlus1
    PopOrEnd 

_08645:
    PopOrEnd 

TrainerAI_TagStrategy_Main:
    IfTargetIsPartner _09658
    FlagMoveDamageScore FALSE
    IfLoadedEqualTo AI_NO_COMPARISON_MADE, _08766
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ONE_HIT_KO, _08704
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_40_DAMAGE_FLAT, _08704
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_LEVEL_DAMAGE_FLAT, _08704
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RANDOM_DAMAGE_1_TO_150_LEVEL, _08704
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_10_DAMAGE_FLAT, _08704
    IfMoveEffectivenessEquals TYPE_MULTI_HALF_DAMAGE, _08676
    IfMoveEffectivenessEquals TYPE_MULTI_QUARTER_DAMAGE, _08690
    GoTo _08704

_08676:
    IfCurrentMoveKills USE_MAX_DAMAGE, _08704
    IfHPPercentEqualTo AI_BATTLER_DEFENDER_PARTNER, 0, _08704
    IfRandomLessThan 64, _08704
    AddToMoveScore -1
    GoTo _08704

_08690:
    IfCurrentMoveKills USE_MAX_DAMAGE, _08704
    IfHPPercentEqualTo AI_BATTLER_DEFENDER_PARTNER, 0, _08704
    IfRandomLessThan 64, _08704
    AddToMoveScore -2
    GoTo _08704

_08704:
    CheckIfHighestDamageWithPartner USE_MAX_DAMAGE
    IfLoadedNotEqualTo AI_MOVE_IS_HIGHEST_DAMAGE, _08729
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_HALVE_DEFENSE, _08766
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_PRIORITY_1, _08722
    IfRandomLessThan 128, _08729
    AddToMoveScore 1
    GoTo _08766

_08722:
    IfRandomLessThan 50, _08729
    AddToMoveScore 1
    GoTo _08766

_08729:
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ONE_HIT_KO, _08766
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_40_DAMAGE_FLAT, _08766
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_LEVEL_DAMAGE_FLAT, _08766
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RANDOM_DAMAGE_1_TO_150_LEVEL, _08766
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_10_DAMAGE_FLAT, _08766
    IfMoveEffectivenessEquals TYPE_MULTI_DOUBLE_DAMAGE, _08752
    IfMoveEffectivenessEquals TYPE_MULTI_QUADRUPLE_DAMAGE, _08759
    GoTo _08766

_08752:
    IfRandomLessThan 100, _08766
    AddToMoveScore 1
    GoTo _08766

_08759:
    IfRandomLessThan 64, _08766
    AddToMoveScore 1
    GoTo _08766

_08766:
    IfMoveEqualTo MOVE_SKILL_SWAP, _09455
    LoadTypeFrom LOAD_MOVE_TYPE
    IfMoveEqualTo MOVE_EARTHQUAKE, _09339
    IfMoveEqualTo MOVE_MAGNITUDE, _09339
    IfMoveEqualTo MOVE_FUTURE_SIGHT, _09381
    IfMoveEqualTo MOVE_DOOM_DESIRE, _09381
    IfMoveEqualTo MOVE_RAIN_DANCE, _08820
    IfMoveEqualTo MOVE_SUNNY_DAY, _08861
    IfMoveEqualTo MOVE_HAIL, _08958
    IfMoveEqualTo MOVE_SANDSTORM, _08995
    IfMoveEqualTo MOVE_GRAVITY, _09037
    IfMoveEqualTo MOVE_TRICK_ROOM, _09135
    IfMoveEqualTo MOVE_FOLLOW_ME, _09207
    LoadTypeFrom LOAD_MOVE_TYPE
    IfLoadedEqualTo TYPE_ELECTRIC, _09493
    IfLoadedEqualTo TYPE_FIRE, _09607
    IfLoadedEqualTo TYPE_WATER, _09558
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_HELPING_HAND, _09302
    PopOrEnd 

_08820:
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_HYDRATION, _08830
    IfLoadedEqualTo ABILITY_DRY_SKIN, _08834
    GoTo _08838

_08830:
    IfNotStatus AI_BATTLER_ATTACKER, MON_CONDITION_ANY, _08838

_08834:
    AddToMoveScore 2
    GoTo _08838

_08838:
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_HYDRATION
    IfLoadedEqualTo AI_HAVE, _08852
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_DRY_SKIN
    IfLoadedEqualTo AI_HAVE, _08856
    GoTo _08860

_08852:
    IfNotStatus AI_BATTLER_ATTACKER_PARTNER, MON_CONDITION_ANY, _08860

_08856:
    AddToMoveScore 2
    GoTo _08860

_08860:
    PopOrEnd 

_08861:
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_LEAF_GUARD, _08877
    IfLoadedEqualTo ABILITY_FLOWER_GIFT, _08885
    IfLoadedEqualTo ABILITY_DRY_SKIN, _08889
    IfLoadedEqualTo ABILITY_SOLAR_POWER, _08893
    GoTo _08904

_08877:
    IfStatus AI_BATTLER_ATTACKER, MON_CONDITION_ANY, _08904
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 30, _08904

_08885:
    AddToMoveScore 2
    GoTo _08904

_08889:
    AddToMoveScore -2
    GoTo _08904

_08893:
    IfHPPercentLessThan AI_BATTLER_ATTACKER, 50, _08899
    AddToMoveScore 1

_08899:
    IfRandomLessThan 128, _08904
    AddToMoveScore -2

_08904:
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_LEAF_GUARD
    IfLoadedEqualTo AI_HAVE, _08930
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_FLOWER_GIFT
    IfLoadedEqualTo AI_HAVE, _08938
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_DRY_SKIN
    IfLoadedEqualTo AI_HAVE, _08942
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_SOLAR_POWER
    IfLoadedEqualTo AI_HAVE, _08946
    GoTo _08957

_08930:
    IfStatus AI_BATTLER_ATTACKER_PARTNER, MON_CONDITION_ANY, _08957
    IfHPPercentLessThan AI_BATTLER_ATTACKER_PARTNER, 30, _08957

_08938:
    AddToMoveScore 2
    GoTo _08957

_08942:
    AddToMoveScore -2
    GoTo _08957

_08946:
    IfHPPercentLessThan AI_BATTLER_ATTACKER_PARTNER, 50, _08952
    AddToMoveScore 1

_08952:
    IfRandomLessThan 128, _08957
    AddToMoveScore -2

_08957:
    PopOrEnd 

_08958:
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_ICE_BODY, _08972
    IfLoadedEqualTo ABILITY_SNOW_CLOAK, _08972
    IfMoveKnown AI_BATTLER_ATTACKER, MOVE_BLIZZARD, _08972
    GoTo _08974

_08972:
    AddToMoveScore 2

_08974:
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_ICE_BODY
    IfLoadedEqualTo AI_HAVE, _08992
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_SNOW_CLOAK
    IfLoadedEqualTo AI_HAVE, _08992
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_BLIZZARD, _08992
    GoTo _08994

_08992:
    AddToMoveScore 2

_08994:
    PopOrEnd 

_08995:
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_SAND_VEIL, _09012
    LoadTypeFrom LOAD_ATTACKER_TYPE_1
    IfLoadedEqualTo TYPE_ROCK, _09012
    LoadTypeFrom LOAD_ATTACKER_TYPE_2
    IfLoadedEqualTo TYPE_ROCK, _09012
    GoTo _09016

_09012:
    AddToMoveScore 2
    GoTo _09016

_09016:
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_SAND_VEIL
    IfLoadedEqualTo AI_HAVE, _09034
    LoadTypeFrom LOAD_ATTACKER_PARTNER_TYPE_1
    IfLoadedEqualTo TYPE_ROCK, _09034
    LoadTypeFrom LOAD_ATTACKER_PARTNER_TYPE_2
    IfLoadedEqualTo TYPE_ROCK, _09034
    GoTo _09036

_09034:
    AddToMoveScore 2

_09036:
    PopOrEnd 

_09037:
    IfFieldConditionsMask FIELD_CONDITION_GRAVITY, _10183
    CheckBattlerAbility AI_BATTLER_ATTACKER, ABILITY_LEVITATE
    IfLoadedEqualTo AI_HAVE, _09058
    FlagBattlerIsType AI_BATTLER_ATTACKER, TYPE_FLYING
    IfLoadedEqualTo AI_HAVE, _09058
    IfMoveEffect AI_BATTLER_ATTACKER, MOVE_EFFECT_MAGNET_RISE, _09058
    GoTo _09062

_09058:
    AddToMoveScore -5
    GoTo _09062

_09062:
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_LEVITATE
    IfLoadedEqualTo AI_HAVE, _09080
    FlagBattlerIsType AI_BATTLER_ATTACKER_PARTNER, TYPE_FLYING
    IfLoadedEqualTo AI_HAVE, _09080
    IfMoveEffect AI_BATTLER_ATTACKER_PARTNER, MOVE_EFFECT_MAGNET_RISE, _09080
    GoTo _09084

_09080:
    AddToMoveScore -5
    GoTo _09084

_09084:
    CheckBattlerAbility AI_BATTLER_DEFENDER, ABILITY_LEVITATE
    IfLoadedEqualTo AI_HAVE, _09102
    FlagBattlerIsType AI_BATTLER_DEFENDER, TYPE_FLYING
    IfLoadedEqualTo AI_HAVE, _09102
    IfMoveEffect AI_BATTLER_DEFENDER, MOVE_EFFECT_MAGNET_RISE, _09102
    GoTo _09109

_09102:
    IfRandomLessThan 64, _09109
    AddToMoveScore 3
    GoTo _09109

_09109:
    CheckBattlerAbility AI_BATTLER_DEFENDER_PARTNER, ABILITY_LEVITATE
    IfLoadedEqualTo AI_HAVE, _09127
    FlagBattlerIsType AI_BATTLER_DEFENDER_PARTNER, TYPE_FLYING
    IfLoadedEqualTo AI_HAVE, _09127
    IfMoveEffect AI_BATTLER_DEFENDER_PARTNER, MOVE_EFFECT_MAGNET_RISE, _09127
    GoTo _09134

_09127:
    IfRandomLessThan 64, _09134
    AddToMoveScore 3
    GoTo _09134

_09134:
    PopOrEnd 

_09135:
    IfHPPercentEqualTo AI_BATTLER_ATTACKER_PARTNER, 0, TrainerAI_ScoreMinus30
    IfHPPercentEqualTo AI_BATTLER_DEFENDER_PARTNER, 0, TrainerAI_ScoreMinus30
    IfHPPercentEqualTo AI_BATTLER_DEFENDER, 0, TrainerAI_ScoreMinus30
    LoadBattlerSpeedRank AI_BATTLER_ATTACKER
    IfLoadedEqualTo 0, _09163
    IfLoadedEqualTo 1, _09173
    IfLoadedEqualTo 2, _09180
    IfLoadedEqualTo 3, _09192
    GoTo _09206

_09163:
    LoadBattlerSpeedRank AI_BATTLER_ATTACKER_PARTNER
    IfLoadedEqualTo 1, TrainerAI_ScoreMinus30
    IfLoadedEqualTo 0, TrainerAI_ScoreMinus30
    GoTo _09204

_09173:
    LoadBattlerSpeedRank AI_BATTLER_ATTACKER_PARTNER
    IfLoadedEqualTo 0, TrainerAI_ScoreMinus30
    GoTo _09204

_09180:
    LoadBattlerSpeedRank AI_BATTLER_ATTACKER_PARTNER
    IfLoadedNotEqualTo 3, _09204
    IfRandomLessThan 64, _09204
    AddToMoveScore 5
    GoTo _09206

_09192:
    LoadBattlerSpeedRank AI_BATTLER_ATTACKER_PARTNER
    IfLoadedNotEqualTo 2, _09204
    IfRandomLessThan 64, _09204
    AddToMoveScore 5
    GoTo _09206

_09204:
    AddToMoveScore -5

_09206:
    PopOrEnd 

_09207:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 90, _09224
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 50, _09238
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 30, _09252
    IfRandomLessThan 64, _09301
    GoTo TrainerAI_ScoreMinus5

_09224:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 90, _09266
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 50, _09280
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 30, _09287
    GoTo _09294

_09238:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 90, _09273
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 50, _09266
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 30, _09280
    GoTo _09287

_09252:
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 90, _09273
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 50, _09273
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 30, _09280
    GoTo _09287

_09266:
    IfRandomLessThan 64, _09301
    AddToMoveScore -1
    GoTo _09301

_09273:
    IfRandomLessThan 64, _09301
    AddToMoveScore -2
    GoTo _09301

_09280:
    IfRandomLessThan 64, _09301
    AddToMoveScore 1
    GoTo _09301

_09287:
    IfRandomLessThan 64, _09301
    AddToMoveScore 2
    GoTo _09301

_09294:
    IfRandomLessThan 64, _09301
    AddToMoveScore 3
    GoTo _09301

_09301:
    PopOrEnd 

_09302:
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_ONE_HIT_KO, _09322
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_40_DAMAGE_FLAT, _09322
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_LEVEL_DAMAGE_FLAT, _09322
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_RANDOM_DAMAGE_1_TO_150_LEVEL, _09322
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_10_DAMAGE_FLAT, _09322
    FlagMoveDamageScore FALSE
    IfLoadedNotEqualTo AI_NO_COMPARISON_MADE, TrainerAI_ScorePlus1

_09322:
    PopOrEnd 
    IfStatus AI_BATTLER_ATTACKER, MON_CONDITION_ANY, _09328
    PopOrEnd 

_09328:
    FlagMoveDamageScore FALSE
    IfLoadedEqualTo AI_NO_COMPARISON_MADE, TrainerAI_ScoreMinus5
    AddToMoveScore 1
    IfLoadedEqualTo AI_MOVE_IS_HIGHEST_DAMAGE, TrainerAI_ScorePlus2
    PopOrEnd 

_09339:
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

_09381:
    IfHPPercentEqualTo AI_BATTLER_ATTACKER_PARTNER, 0, _09454
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_FUTURE_SIGHT, _09395
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_DOOM_DESIRE, _09395
    GoTo _09454

_09395:
    LoadBattlerSpeedRank AI_BATTLER_ATTACKER
    IfLoadedEqualTo 3, TrainerAI_ScoreMinus3
    IfLoadedEqualTo 2, _09411
    IfLoadedEqualTo 1, _09429
    IfLoadedEqualTo 0, _09444
    GoTo _09454

_09411:
    LoadBattlerSpeedRank AI_BATTLER_ATTACKER_PARTNER
    IfLoadedEqualTo 0, TrainerAI_ScoreMinus3
    IfLoadedEqualTo 1, TrainerAI_ScoreMinus3
    IfRandomLessThan 128, _09454
    LoadBattlerSpeedRank AI_BATTLER_ATTACKER_PARTNER
    IfLoadedEqualTo 2, TrainerAI_ScoreMinus3
    GoTo _09454

_09429:
    LoadBattlerSpeedRank AI_BATTLER_ATTACKER_PARTNER
    IfLoadedEqualTo 0, TrainerAI_ScoreMinus3
    IfRandomLessThan 128, _09454
    LoadBattlerSpeedRank AI_BATTLER_ATTACKER_PARTNER
    IfLoadedEqualTo 1, TrainerAI_ScoreMinus3
    GoTo _09454

_09444:
    IfRandomLessThan 128, _09454
    LoadBattlerSpeedRank AI_BATTLER_ATTACKER_PARTNER
    IfLoadedEqualTo 0, TrainerAI_ScoreMinus3
    GoTo _09454

_09454:
    PopOrEnd 

_09455:
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

_09493:
    IfMoveEqualTo MOVE_DISCHARGE, _09525
    CheckBattlerAbility AI_BATTLER_DEFENDER_PARTNER, ABILITY_LIGHTNING_ROD
    IfLoadedEqualTo AI_HAVE, _09504
    GoTo _09514

_09504:
    AddToMoveScore -1
    FlagBattlerIsType AI_BATTLER_DEFENDER_PARTNER, TYPE_GROUND
    IfLoadedEqualTo AI_NOT_HAVE, _09514
    AddToMoveScore -8

_09514:
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_LIGHTNING_ROD
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScoreMinus10
    IfMoveEqualTo MOVE_DISCHARGE, _09525
    GoTo _09557

_09525:
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_MOTOR_DRIVE
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScorePlus3
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_VOLT_ABSORB
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScorePlus3
    FlagBattlerIsType AI_BATTLER_ATTACKER_PARTNER, TYPE_WATER
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScoreMinus10
    FlagBattlerIsType AI_BATTLER_ATTACKER_PARTNER, TYPE_FLYING
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScoreMinus10
    FlagBattlerIsType AI_BATTLER_ATTACKER_PARTNER, TYPE_GROUND
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScorePlus3
    AddToMoveScore -3

_09557:
    PopOrEnd 

_09558:
    IfMoveEqualTo MOVE_SURF, _09580
    CheckBattlerAbility AI_BATTLER_DEFENDER_PARTNER, ABILITY_STORM_DRAIN
    IfLoadedEqualTo AI_NOT_HAVE, _09569
    AddToMoveScore -1

_09569:
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_STORM_DRAIN
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScoreMinus10
    IfMoveEqualTo MOVE_SURF, _09580
    GoTo _09606

_09580:
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_DRY_SKIN
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScorePlus3
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_WATER_ABSORB
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScorePlus3
    FlagBattlerIsType AI_BATTLER_ATTACKER_PARTNER, TYPE_GROUND
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScoreMinus10
    FlagBattlerIsType AI_BATTLER_ATTACKER_PARTNER, TYPE_FIRE
    IfLoadedEqualTo AI_HAVE, TrainerAI_ScoreMinus10
    AddToMoveScore -3

_09606:
    PopOrEnd 

_09607:
    IfActivatedFlashFire AI_BATTLER_ATTACKER, _09612
    GoTo _09614

_09612:
    AddToMoveScore 1

_09614:
    IfMoveEqualTo MOVE_LAVA_PLUME, _09619
    GoTo _09657

_09619:
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

_09657:
    PopOrEnd 

_09658:
    IfBattlerFainted AI_BATTLER_ATTACKER_PARTNER, _10183
    FlagMoveDamageScore FALSE
    IfLoadedEqualTo AI_NO_COMPARISON_MADE, _09801
    LoadTypeFrom LOAD_MOVE_TYPE
    IfLoadedEqualTo TYPE_FIRE, _09682
    IfLoadedEqualTo TYPE_ELECTRIC, _09695
    IfLoadedEqualTo TYPE_WATER, _09753
    IfMoveEqualTo MOVE_FLING, _10062

_09680:
    GoTo TrainerAI_ScoreMinus30

_09682:
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_FLASH_FIRE
    IfLoadedEqualTo AI_HAVE, _09690
    GoTo _09680

_09690:
    IfActivatedFlashFire AI_BATTLER_ATTACKER_PARTNER, _09680
    GoTo TrainerAI_ScorePlus3

_09695:
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_MOTOR_DRIVE
    IfLoadedEqualTo AI_HAVE, _09709
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_VOLT_ABSORB
    IfLoadedEqualTo AI_HAVE, _09719
    GoTo _09680

_09709:
    IfRandomLessThan 160, _09752
    IfStatStageEqualTo AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_SPEED, 12, _09680
    GoTo TrainerAI_ScorePlus3

_09719:
    IfHPPercentEqualTo AI_BATTLER_ATTACKER_PARTNER, 100, TrainerAI_ScoreMinus10
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 90, _09752
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 75, _09737
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 50, _09742
    GoTo _09747

_09737:
    IfRandomLessThan 64, TrainerAI_ScorePlus3
    GoTo _09752

_09742:
    IfRandomLessThan 128, TrainerAI_ScorePlus3
    GoTo _09752

_09747:
    IfRandomLessThan 192, TrainerAI_ScorePlus3
    GoTo _09752

_09752:
    PopOrEnd 

_09753:
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_WATER_ABSORB
    IfLoadedEqualTo AI_HAVE, _09767
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_DRY_SKIN
    IfLoadedEqualTo AI_HAVE, _09767
    GoTo _09680

_09767:
    IfHPPercentEqualTo AI_BATTLER_ATTACKER_PARTNER, 100, TrainerAI_ScoreMinus10
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 90, _09800
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 75, _09785
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 50, _09790
    GoTo _09795

_09785:
    IfRandomLessThan 64, TrainerAI_ScorePlus3
    GoTo _09800

_09790:
    IfRandomLessThan 128, TrainerAI_ScorePlus3
    GoTo _09800

_09795:
    IfRandomLessThan 192, TrainerAI_ScorePlus3
    GoTo _09800

_09800:
    PopOrEnd 

_09801:
    IfMoveEqualTo MOVE_SKILL_SWAP, _09836
    IfMoveEqualTo MOVE_WILL_O_WISP, _09939
    IfMoveEqualTo MOVE_THUNDER_WAVE, _09979
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STATUS_BADLY_POISON, _10003
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_STATUS_POISON, _10003
    IfMoveEqualTo MOVE_HELPING_HAND, _10023
    IfMoveEqualTo MOVE_SWAGGER, _10044
    IfMoveEqualTo MOVE_TRICK, _10062
    IfMoveEqualTo MOVE_SWITCHEROO, _10062
    IfMoveEqualTo MOVE_GASTRO_ACID, _10063
    IfMoveEqualTo MOVE_ACUPRESSURE, _10084
    GoTo _10183

_09836:
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_TRUANT, TrainerAI_ScorePlus10
    IfLoadedEqualTo ABILITY_SLOW_START, TrainerAI_ScorePlus10
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedNotEqualTo ABILITY_LEVITATE, _09869
    LoadBattlerAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_LEVITATE, _10183
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedNotEqualTo TYPE_ELECTRIC, _09869
    AddToMoveScore 1
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedNotEqualTo TYPE_ELECTRIC, _09869
    AddToMoveScore 1
    PopOrEnd 

_09869:
    LoadBattlerAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_COMPOUND_EYES, _09879
    IfLoadedEqualTo ABILITY_NO_GUARD, _09879
    GoTo _10183

_09879:
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_FIRE_BLAST, _09937
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_THUNDER, _09937
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_CROSS_CHOP, _09937
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_HYDRO_PUMP, _09937
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_DYNAMIC_PUNCH, _09937
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_BLIZZARD, _09937
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_ZAP_CANNON, _09937
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_MEGAHORN, _09937
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_FOCUS_BLAST, _09937
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_GUNK_SHOT, _09937
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_MAGMA_STORM, _09937
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_POWER_WHIP, _09937
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_SEED_FLARE, _09937
    IfMoveKnown AI_BATTLER_ATTACKER_PARTNER, MOVE_HEAD_SMASH, _09937
    GoTo _10183

_09937:
    GoTo TrainerAI_ScorePlus3

_09939:
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_FLASH_FIRE
    IfLoadedEqualTo AI_HAVE, _09682
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_GUTS
    IfLoadedNotEqualTo AI_HAVE, _10183
    IfStatus AI_BATTLER_ATTACKER_PARTNER, MON_CONDITION_ANY, _10183
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_FIRE, _10183
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_FIRE, _10183
    IfHeldItemEqualTo AI_BATTLER_ATTACKER_PARTNER, ITEM_FLAME_ORB, _10183
    IfHeldItemEqualTo AI_BATTLER_ATTACKER_PARTNER, ITEM_TOXIC_ORB, _10183
    IfHPPercentLessThan AI_BATTLER_ATTACKER_PARTNER, 81, _10183
    GoTo TrainerAI_ScorePlus5

_09979:
    LoadTypeFrom LOAD_DEFENDER_TYPE_1
    IfLoadedEqualTo TYPE_GROUND, _10183
    LoadTypeFrom LOAD_DEFENDER_TYPE_2
    IfLoadedEqualTo TYPE_GROUND, _10183
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_MOTOR_DRIVE
    IfLoadedEqualTo AI_HAVE, _09695
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_VOLT_ABSORB
    IfLoadedEqualTo AI_HAVE, _09695
    GoTo _10183

_10003:
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_POISON_HEAL
    IfLoadedNotEqualTo AI_HAVE, _10183
    IfStatus AI_BATTLER_DEFENDER, MON_CONDITION_ANY, _10183
    IfHeldItemEqualTo AI_BATTLER_ATTACKER_PARTNER, ITEM_TOXIC_ORB, _10183
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 91, _10183
    GoTo TrainerAI_ScorePlus5

_10023:
    IfHPPercentEqualTo AI_BATTLER_ATTACKER_PARTNER, 0, TrainerAI_ScoreMinus30
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 50, _10038
    LoadBattlerSpeedRank AI_BATTLER_ATTACKER_PARTNER
    IfLoadedLessThan 1, _10038
    GoTo _10043

_10038:
    IfRandomLessThan 64, TrainerAI_ScoreMinus1
    AddToMoveScore 2

_10043:
    PopOrEnd 

_10044:
    IfHeldItemEqualTo AI_BATTLER_DEFENDER, ITEM_PERSIM_BERRY, _10054
    IfHeldItemEqualTo AI_BATTLER_DEFENDER, ITEM_LUM_BERRY, _10054
    GoTo _10183

_10054:
    IfStatStageGreaterThan AI_BATTLER_DEFENDER, BATTLE_STAT_ATTACK, 7, _10061
    AddToMoveScore 3

_10061:
    PopOrEnd 

_10062:
    PopOrEnd 

_10063:
    IfMoveEffect AI_BATTLER_ATTACKER_PARTNER, MOVE_EFFECT_ABILITY_SUPPRESSED, _10183
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_TRUANT
    IfLoadedEqualTo AI_HAVE, _10081
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_SLOW_START
    IfLoadedEqualTo AI_HAVE, _10081
    GoTo _10083

_10081:
    AddToMoveScore 5

_10083:
    PopOrEnd 

_10084:
    CheckBattlerAbility AI_BATTLER_ATTACKER_PARTNER, ABILITY_SIMPLE
    IfLoadedEqualTo AI_HAVE, _10127
    IfStatStageEqualTo AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_ATTACK, 12, _10183
    IfStatStageEqualTo AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_DEFENSE, 12, _10183
    IfStatStageEqualTo AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_SPEED, 12, _10183
    IfStatStageEqualTo AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_SP_ATTACK, 12, _10183
    IfStatStageEqualTo AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_SP_DEFENSE, 12, _10183
    IfStatStageEqualTo AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_EVASION, 12, _10183
    IfStatStageEqualTo AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_ACCURACY, 12, _10183
    GoTo _10162

_10127:
    IfStatStageGreaterThan AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_ATTACK, 8, TrainerAI_ScoreMinus10
    IfStatStageGreaterThan AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_DEFENSE, 8, TrainerAI_ScoreMinus10
    IfStatStageGreaterThan AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_SPEED, 8, TrainerAI_ScoreMinus10
    IfStatStageGreaterThan AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_SP_ATTACK, 8, TrainerAI_ScoreMinus10
    IfStatStageGreaterThan AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_SP_DEFENSE, 8, TrainerAI_ScoreMinus10
    IfStatStageGreaterThan AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_EVASION, 8, TrainerAI_ScoreMinus10
    IfStatStageGreaterThan AI_BATTLER_ATTACKER_PARTNER, BATTLE_STAT_ACCURACY, 8, TrainerAI_ScoreMinus10

_10162:
    IfHPPercentLessThan AI_BATTLER_ATTACKER_PARTNER, 51, _10180
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER_PARTNER, 90, _10173
    IfRandomLessThan 128, _10182

_10173:
    IfRandomLessThan 80, _10182
    AddToMoveScore 2
    GoTo _10182

_10180:
    AddToMoveScore -1

_10182:
    PopOrEnd 

_10183:
    AddToMoveScore -30
    PopOrEnd 

TrainerAI_CheckHP_Main:
    IfTargetIsPartner _09658
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 70, _10202
    IfHPPercentGreaterThan AI_BATTLER_ATTACKER, 30, _10208
    LoadCurrentMoveEffect 
    IfLoadedInTable _10311, _10214
    GoTo _10219

_10202:
    LoadCurrentMoveEffect 
    IfLoadedInTable _10251, _10214
    GoTo _10219

_10208:
    LoadCurrentMoveEffect 
    IfLoadedInTable _10264, _10214
    GoTo _10219

_10214:
    IfRandomLessThan 50, _10219
    AddToMoveScore -2

_10219:
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 70, _10233
    IfHPPercentGreaterThan AI_BATTLER_DEFENDER, 30, _10239
    LoadCurrentMoveEffect 
    IfLoadedInTable _10407, _10245
    GoTo _10250

_10233:
    LoadCurrentMoveEffect 
    IfLoadedInTable _10363, _10245
    GoTo _10250

_10239:
    LoadCurrentMoveEffect 
    IfLoadedInTable _10364, _10245
    GoTo _10250

_10245:
    IfRandomLessThan 50, _10250
    AddToMoveScore -2

_10250:
    PopOrEnd 

_10251:
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

_10264:
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

_10311:
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

_10363:
    TableEntry TABLE_END

_10364:
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

_10407:
    TableEntry BATTLE_EFFECT_STATUS_SLEEP
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
    LoadTurnCount 
    IfLoadedNotEqualTo 0, _10519
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_WEATHER_SUN, _10488
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_WEATHER_RAIN, _10494
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_WEATHER_SANDSTORM, _10500
    IfCurrentMoveEffectEqualTo BATTLE_EFFECT_WEATHER_HAIL, _10506

_10488:
    LoadCurrentWeather 
    IfLoadedEqualTo AI_WEATHER_SUNNY, _10519
    GoTo _10512

_10494:
    LoadCurrentWeather 
    IfLoadedEqualTo AI_WEATHER_RAINING, _10519
    GoTo _10512

_10500:
    LoadCurrentWeather 
    IfLoadedEqualTo AI_WEATHER_SANDSTORM, _10519
    GoTo _10512

_10506:
    LoadCurrentWeather 
    IfLoadedEqualTo AI_WEATHER_HAILING, _10519
    GoTo _10512

_10512:
    LoadIsFirstTurnInBattle AI_BATTLER_ATTACKER
    IfLoadedEqualTo FALSE, _10519
    AddToMoveScore 5

_10519:
    PopOrEnd 

TrainerAI_Harrassment_Main:
    IfTargetIsPartner TrainerAI_Terminate
    LoadCurrentMoveEffect 
    IfLoadedNotInTable _10532, _10531
    IfRandomLessThan 128, _10531
    AddToMoveScore 2

_10531:
    PopOrEnd 

_10532:
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
    IfVolatileStatus AI_BATTLER_ATTACKER, VOLATILE_CONDITION_BIND, _10591
    IfVolatileStatus AI_BATTLER_ATTACKER, VOLATILE_CONDITION_MEAN_LOOK, _10591
    LoadAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_SHADOW_TAG, _10591
    LoadAbility AI_BATTLER_ATTACKER
    IfLoadedEqualTo ABILITY_LEVITATE, _10590
    LoadAbility AI_BATTLER_DEFENDER
    IfLoadedEqualTo ABILITY_ARENA_TRAP, _10591

_10590:
    Escape 

_10591:
    PopOrEnd 

TrainerAI_Safari_Main:
    Dummy3E 1
    Dummy3F 
    Escape 

TrainerAI_CatchTutorial_Main:
    IfHPPercentEqualTo AI_BATTLER_DEFENDER, 20, _10605
    IfHPPercentLessThan AI_BATTLER_DEFENDER, 20, _10605
    PopOrEnd 

_10605:
    Escape 

TrainerAI_Terminate:
    PopOrEnd 

    .endif
