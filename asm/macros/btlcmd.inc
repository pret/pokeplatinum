    .ifndef ASM_BATTLE_SCRIPT_INC
    .set ASM_BATTLE_SCRIPT_INC, 1

#include "constants/battle.h"
#include "constants/items.h"
#include "constants/species.h"
#include "generated/abilities.h"
#include "generated/battle_subscripts.h"
#include "generated/game_records.h"
#include "generated/genders.h"
#include "generated/move_attributes.h"
#include "generated/moves.h"
#include "generated/pokemon_types.h"
#include "generated/sdat.h"
#include "generated/species_data_params.h"
#include "battle/btlcmd.h"
#include "res/text/bank/battle_strings.h"

#include "data/scripts/btlcmd.h"

    .equ FALSE, 0
    .equ TRUE, 1

    .macro PlayEncounterAnimation
    .long BTLCMD_PLAYENCOUNTERANIMATION
    .endm

    .macro SetPokemonEncounter battler
    .long BTLCMD_SETPOKEMONENCOUNTER
    .long \battler
    .endm

    .macro PokemonSlideIn battler
    .long BTLCMD_POKEMONSLIDEIN
    .long \battler
    .endm

    .macro PokemonSendOut battler
    .long BTLCMD_POKEMONSENDOUT
    .long \battler
    .endm

    .macro RecallPokemon battler
    .long BTLCMD_RECALLPOKEMON
    .long \battler
    .endm

    .macro DeletePokemon battler
    .long BTLCMD_DELETEPOKEMON
    .long \battler
    .endm

    .macro SetTrainerEncounter battler
    .long BTLCMD_SETTRAINERENCOUNTER
    .long \battler
    .endm

    .macro ThrowPokeball battler, type
    .long BTLCMD_THROWPOKEBALL
    .long \battler
    .long \type
    .endm

    .macro TrainerSlideOut battler
    .long BTLCMD_TRAINERSLIDEOUT
    .long \battler
    .endm

    .macro TrainerSlideIn battler, pos
    .long BTLCMD_TRAINERSLIDEIN
    .long \battler
    .long \pos
    .endm

    .macro BackgroundSlideIn
    .long BTLCMD_BACKGROUNDSLIDEIN
    .endm

    .macro HealthbarSlideIn battler
    .long BTLCMD_HEALTHBARSLIDEIN
    .long \battler
    .endm

    .macro HealthbarSlideInDelay battler
    .long BTLCMD_HEALTHBARSLIDEINDELAY
    .long \battler
    .endm

    .macro HealthbarSlideOut battler
    .long BTLCMD_HEALTHBARSLIDEOUT
    .long \battler
    .endm

    .macro Wait
    .long BTLCMD_WAIT
    .endm

    .macro CalcDamage
    .long BTLCMD_CALCDAMAGE
    .endm

    .macro CalcMaxDamage
    .long BTLCMD_CALCMAXDAMAGE
    .endm

    .macro PrintAttackMessage
    .long BTLCMD_PRINTATTACKMESSAGE
    .endm

    .macro PrintMessage msg_id, tag, arg_0, arg_1, arg_2, arg_3, arg_4, arg_5
    .long BTLCMD_PRINTMESSAGE
    .long \msg_id
    .long \tag
    .if \tag > TAG_NONE
        .long \arg_0
        .if \tag > TAG_TRNAME
            .long \arg_1
            .if \tag > TAG_TRCLASS_TRNAME
                .long \arg_2
                .if \tag > TAG_TRCLASS_TRNAME_ITEM
                    .long \arg_3
                    .if \tag > TAG_TRCLASS_TRNAME_TRCLASS_TRNAME
                        .long \arg_4
                        .long \arg_5
                    .endif
                .endif
            .endif
        .endif
    .endif
    .endm

    .macro PrintGlobalMessage msg_id, tag, arg_0, arg_1, arg_2, arg_3, arg_4, arg_5
    .long BTLCMD_PRINTGLOBALMESSAGE
    .long \msg_id
    .long \tag
    .if \tag > TAG_NONE
        .long \arg_0
        .if \tag > TAG_TRNAME
            .long \arg_1
            .if \tag > TAG_TRCLASS_TRNAME
                .long \arg_2
                .if \tag > TAG_TRCLASS_TRNAME_ITEM
                    .long \arg_3
                    .if \tag > TAG_TRCLASS_TRNAME_TRCLASS_TRNAME
                        .long \arg_4
                        .long \arg_5
                    .endif
                .endif
            .endif
        .endif
    .endif
    .endm

    .macro PrintBufferedMessage
    .long BTLCMD_PRINTBUFFEREDMESSAGE
    .endm

    .macro BufferMessage msg_id, tag, arg_0, arg_1, arg_2, arg_3, arg_4, arg_5
    .long BTLCMD_BUFFERMESSAGE
    .long \msg_id
    .long \tag
    .if \tag > TAG_NONE
        .long \arg_0
        .if \tag > TAG_TRNAME
            .long \arg_1
            .if \tag > TAG_TRCLASS_TRNAME
                .long \arg_2
                .if \tag > TAG_TRCLASS_TRNAME_ITEM
                    .long \arg_3
                    .if \tag > TAG_TRCLASS_TRNAME_TRCLASS_TRNAME
                        .long \arg_4
                        .long \arg_5
                    .endif
                .endif
            .endif
        .endif
    .endif
    .endm

    .macro BufferLocalMessage battler, msg_id, tag, arg_0, arg_1, arg_2, arg_3, arg_4, arg_5
    .long BTLCMD_BUFFERLOCALMESSAGE
    .long \battler
    .long \msg_id
    .long \tag
    .if \tag > TAG_NONE
        .long \arg_0
        .if \tag > TAG_TRNAME
            .long \arg_1
            .if \tag > TAG_TRCLASS_TRNAME
                .long \arg_2
                .if \tag > TAG_TRCLASS_TRNAME_ITEM
                    .long \arg_3
                    .if \tag > TAG_TRCLASS_TRNAME_TRCLASS_TRNAME
                        .long \arg_4
                        .long \arg_5
                    .endif
                .endif
            .endif
        .endif
    .endif
    .endm

    .macro PlayMoveAnimation move_src
    .long BTLCMD_PLAYMOVEANIMATION
    .long \move_src
    .endm

    .macro PlayMoveAnimationOnMons move_src, attacker, defender
    .long BTLCMD_PLAYMOVEANIMATIONONMONS
    .long \move_src
    .long \attacker
    .long \defender
    .endm

    .macro FlickerMon battler
    .long BTLCMD_FLICKERMON
    .long \battler
    .endm

    .macro UpdateHealthBarValue battler
    .long BTLCMD_UPDATEHEALTHBARVALUE
    .long \battler
    .endm

    .macro UpdateHealthBar battler
    .long BTLCMD_UPDATEHEALTHBAR
    .long \battler
    .endm

    .macro TryFaintMon battler
    .long BTLCMD_TRYFAINTMON
    .long \battler
    .endm

    .macro PlayFaintAnimation
    .long BTLCMD_PLAYFAINTANIMATION
    .endm

    .macro WaitButtonABTime frames
    .long BTLCMD_WAITBUTTONABTIME
    .long \frames
    .endm

    .macro PlaySound battler, sdatID
    .long BTLCMD_PLAYSOUND
    .long \battler
    .long \sdatID
    .endm

    .macro CompareVarToValue op, var, val, jump
    .long BTLCMD_COMPAREVARTOVALUE
    .long \op
    .long \var
    .long \val
    .long (\jump-.) / 4 - 1
    .endm

    .macro CompareMonDataToValue op, battler, param, val, jump
    .long BTLCMD_COMPAREMONDATATOVALUE
    .long \op
    .long \battler
    .long \param
    .long \val
    .long (\jump-.) / 4 - 1
    .endm

    .macro FadeOutBattle
    .long BTLCMD_FADEOUTBATTLE
    .endm

    .macro GoToSubscript subscript
    .long BTLCMD_GOTOSUBSCRIPT
    .long \subscript
    .endm

    .macro GoToEffectScript
    .long BTLCMD_GOTOEFFECTSCRIPT
    .endm

    .macro GoToMoveScript is_target_set
    .long BTLCMD_GOTOMOVESCRIPT
    .long \is_target_set
    .endm

    .macro CalcCrit
    .long BTLCMD_CALCCRIT
    .endm

    .macro CalcExpGain jump
    .long BTLCMD_CALCEXPGAIN
    .long (\jump-.) / 4 - 1
    .endm

    .macro StartGetExpTask
    .long BTLCMD_STARTGETEXPTASK
    .endm

    .macro WaitGetExpTask
    .long BTLCMD_WAITGETEXPTASK
    .endm

    .macro Dummy2A arg_0
    .long BTLCMD_DUMMY2A
    .long \arg_0
    .endm

    .macro ShowParty
    .long BTLCMD_SHOWPARTY
    .endm

    .macro WaitMonSelection
    .long BTLCMD_WAITMONSELECTION
    .endm

    .macro SwitchAndUpdateMon battler
    .long BTLCMD_SWITCHANDUPDATEMON
    .long \battler
    .endm

    .macro GoToIfAnySwitches jump
    .long BTLCMD_GOTOIFANYSWITCHES
    .long (\jump-.) / 4 - 1
    .endm

    .macro StartCatchMonTask is_safari_capture
    .long BTLCMD_STARTCATCHMONTASK
    .long \is_safari_capture
    .endm

    .macro WaitCatchMonTask
    .long BTLCMD_WAITCATCHMONTASK
    .endm

    .macro SetMultiHit hits, flags
    .long BTLCMD_SETMULTIHIT
    .long \hits
    .long \flags
    .endm

    .macro UpdateVar op, var, val
    .long BTLCMD_UPDATEVAR
    .long \op
    .long \var
    .long \val
    .endm

    .macro ChangeStatStage jump_no_change, jump_blocked, jump_substitute
    .long BTLCMD_CHANGESTATSTAGE
    .long (\jump_no_change-.) / 4 - 3
    .long (\jump_blocked-.) / 4 - 2
    .long (\jump_substitute-.) / 4 - 1
    .endm

    .macro UpdateMonData op, battler, param, val
    .long BTLCMD_UPDATEMONDATA
    .long \op
    .long \battler
    .long \param
    .long \val
    .endm

    .macro ClearVolatileStatus battler, status
    .long BTLCMD_CLEARVOLATILESTATUS
    .long \battler
    .long \status
    .endm

    .macro ToggleVanish battler, toggle
    .long BTLCMD_TOGGLEVANISH
    .long \battler
    .long \toggle
    .endm

    .macro CheckAbility op, battler, ability, jump
    .long BTLCMD_CHECKABILITY
    .long \op
    .long \battler
    .long \ability
    .long (\jump-.) / 4 - 1
    .endm

    .macro Random upper_bound, offset
    .long BTLCMD_RANDOM
    .long \upper_bound
    .long \offset
    .endm

    .macro UpdateVarFromVar op, dst, src
    .long BTLCMD_UPDATEVARFROMVAR
    .long \op
    .long \dst
    .long \src
    .endm

    .macro UpdateMonDataFromVar op, battler, dst, src
    .long BTLCMD_UPDATEMONDATAFROMVAR
    .long \op
    .long \battler
    .long \dst
    .long \src
    .endm

    .macro GoTo jump
    .long BTLCMD_GOTO
    .long (\jump-.) / 4 - 1
    .endm

    .macro Call subscript
    .long BTLCMD_CALL
    .long \subscript
    .endm

    .macro CallFromVar var
    .long BTLCMD_CALLFROMVAR
    .long \var
    .endm

    .macro SetMirrorMove
    .long BTLCMD_SETMIRRORMOVE
    .endm

    .macro ResetAllStatChanges
    .long BTLCMD_RESETALLSTATCHANGES
    .endm

    .macro LockMoveChoice battler
    .long BTLCMD_LOCKMOVECHOICE
    .long \battler
    .endm

    .macro UnlockMoveChoice battler
    .long BTLCMD_UNLOCKMOVECHOICE
    .long \battler
    .endm

    .macro SetHealthbarStatus battler, status
    .long BTLCMD_SETHEALTHBARSTATUS
    .long \battler
    .long \status
    .endm

    .macro PrintTrainerMessage battler, type
    .long BTLCMD_PRINTTRAINERMESSAGE
    .long \battler
    .long \type
    .endm

    .macro PayPrizeMoney
    .long BTLCMD_PAYPRIZEMONEY
    .endm

    .macro PlayBattleAnimation battler, animation
    .long BTLCMD_PLAYBATTLEANIMATION
    .long \battler
    .long \animation
    .endm

    .macro PlayBattleAnimationOnMons attacker, defender, animation
    .long BTLCMD_PLAYBATTLEANIMATIONONMONS
    .long \attacker
    .long \defender
    .long \animation
    .endm

    .macro PlayBattleAnimationFromVar battler, var
    .long BTLCMD_PLAYBATTLEANIMATIONFROMVAR
    .long \battler
    .long \var
    .endm

    .macro PrintRecallMessage battler
    .long BTLCMD_PRINTRECALLMESSAGE
    .long \battler
    .endm

    .macro PrintSendOutMessage battler
    .long BTLCMD_PRINTSENDOUTMESSAGE
    .long \battler
    .endm

    .macro PrintEncounterMessage battler
    .long BTLCMD_PRINTENCOUNTERMESSAGE
    .long \battler
    .endm

    .macro PrintFirstSendOutMessage battler
    .long BTLCMD_PRINTFIRSTSENDOUTMESSAGE
    .long \battler
    .endm

    .macro PrintBufferedTrainerMessage battler
    .long BTLCMD_PRINTBUFFEREDTRAINERMESSAGE
    .long \battler
    .endm

    .macro TryConversion jump_if_fail
    .long BTLCMD_TRYCONVERSION
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro CompareVarToVar op, lhs, rhs, jump
    .long BTLCMD_COMPAREVARTOVAR
    .long \op
    .long \lhs
    .long \rhs
    .long (\jump-.) / 4 - 1
    .endm

    .macro CompareMonDataToVar op, battler, lhs, rhs, jump
    .long BTLCMD_COMPAREMONDATATOVAR
    .long \op
    .long \battler
    .long \lhs
    .long \rhs
    .long (\jump-.) / 4 - 1
    .endm

    .macro AddPayDayMoney
    .long BTLCMD_ADDPAYDAYMONEY
    .endm

    .macro TryLightScreen jump_if_fail
    .long BTLCMD_TRYLIGHTSCREEN
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro TryReflect jump_if_fail
    .long BTLCMD_TRYREFLECT
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro TryMist jump_if_fail
    .long BTLCMD_TRYMIST
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro TryOHKOMove
    .long BTLCMD_TRYOHKOMOVE
    .endm

    .macro DivideVarByValue var, val
    .long BTLCMD_DIVIDEVARBYVALUE
    .long \var
    .long \val
    .endm

    .macro DivideVarByVar dividend, divisor
    .long BTLCMD_DIVIDEVARBYVAR
    .long \dividend
    .long \divisor
    .endm

    .macro TryMimic jump_if_fail
    .long BTLCMD_TRYMIMIC
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro Metronome
    .long BTLCMD_METRONOME
    .endm

    .macro TryDisable jump_if_fail
    .long BTLCMD_TRYDISABLE
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro Counter
    .long BTLCMD_COUNTER
    .endm

    .macro MirrorCoat
    .long BTLCMD_MIRRORCOAT
    .endm

    .macro TryEncore jump_if_fail
    .long BTLCMD_TRYENCORE
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro TryConversion2 jump_if_fail
    .long BTLCMD_TRYCONVERSION2
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro TrySketch jump_if_fail
    .long BTLCMD_TRYSKETCH
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro TrySleepTalk jump_if_fail
    .long BTLCMD_TRYSLEEPTALK
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro CalcFlailPower
    .long BTLCMD_CALCFLAILPOWER
    .endm

    .macro TrySpite jump_if_fail
    .long BTLCMD_TRYSPITE
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro TryPartyStatusRefresh
    .long BTLCMD_TRYPARTYSTATUSREFRESH
    .endm

    .macro TryStealItem jump_if_fail, jump_sticky_hold
    .long BTLCMD_TRYSTEALITEM
    .long (\jump_if_fail-.) / 4 - 2
    .long (\jump_sticky_hold-.) / 4 - 1
    .endm

    .macro TryProtection jump_if_fail
    .long BTLCMD_TRYPROTECTION
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro TrySubstitute jump_if_fail
    .long BTLCMD_TRYSUBSTITUTE
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro TryWhirlwind jump_if_fail
    .long BTLCMD_TRYWHIRLWIND
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro Transform
    .long BTLCMD_TRANSFORM
    .endm

    .macro TrySpikes jump_if_fail
    .long BTLCMD_TRYSPIKES
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro CheckSpikes battler, jump_no_spikes
    .long BTLCMD_CHECKSPIKES
    .long \battler
    .long (\jump_no_spikes-.) / 4 - 1
    .endm

    .macro TryPerishSong jump_if_fail
    .long BTLCMD_TRYPERISHSONG
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro GetMonBySpeedOrder dst_var
    .long BTLCMD_GETMONBYSPEEDORDER
    .long \dst_var
    .endm

    .macro GoToIfValidMon var, jump
    .long BTLCMD_GOTOIFVALIDMON
    .long \var
    .long (\jump-.) / 4 - 1
    .endm

    .macro EndOfTurnWeatherEffect battler
    .long BTLCMD_ENDOFTURNWEATHEREFFECT
    .long \battler
    .endm

    .macro CalcRolloutPower
    .long BTLCMD_CALCROLLOUTPOWER
    .endm

    .macro CalcFuryCutterPower
    .long BTLCMD_CALCFURYCUTTERPOWER
    .endm

    .macro TryAttract jump_if_fail
    .long BTLCMD_TRYATTRACT
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro TrySafeguard jump_if_fail
    .long BTLCMD_TRYSAFEGUARD
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro Present jump_if_heal
    .long BTLCMD_PRESENT
    .long (\jump_if_heal-.) / 4 - 1
    .endm

    .macro CalcMagnitudePower
    .long BTLCMD_CALCMAGNITUDEPOWER
    .endm

    .macro TryReplaceFaintedMon battler, open_party_list, jump_if_fail
    .long BTLCMD_TRYREPLACEFAINTEDMON
    .long \battler
    .long \open_party_list
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro RapidSpin
    .long BTLCMD_RAPIDSPIN
    .endm

    .macro WeatherHPRecovery
    .long BTLCMD_WEATHERHPRECOVERY
    .endm

    .macro CalcHiddenPowerParams
    .long BTLCMD_CALCHIDDENPOWERPARAMS
    .endm

    .macro CopyStatStages
    .long BTLCMD_COPYSTATSTAGES
    .endm

    .macro TryFutureSight jump_if_fail
    .long BTLCMD_TRYFUTURESIGHT
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro CheckMoveHit attacker, defender, move_src, jump_if_miss
    .long BTLCMD_CHECKMOVEHIT
    .long \attacker
    .long \defender
    .long \move_src
    .long (\jump_if_miss-.) / 4 - 1
    .endm

    .macro TryTeleport jump_if_fail
    .long BTLCMD_TRYTELEPORT
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro BeatUp
    .long BTLCMD_BEATUP
    .endm

    .macro FollowMe
    .long BTLCMD_FOLLOWME
    .endm

    .macro TryHelpingHand jump_if_fail
    .long BTLCMD_TRYHELPINGHAND
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro TrySwapItems jump_if_fail, jump_sticky_hold
    .long BTLCMD_TRYSWAPITEMS
    .long (\jump_if_fail-.) / 4 - 2
    .long (\jump_sticky_hold-.) / 4 - 1
    .endm

    .macro TryWish jump_if_fail
    .long BTLCMD_TRYWISH
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro TryAssist jump_if_fail
    .long BTLCMD_TRYASSIST
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro TrySetMagicCoat jump_if_fail
    .long BTLCMD_TRYSETMAGICCOAT
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro MagicCoat
    .long BTLCMD_MAGICCOAT
    .endm

    .macro CalcRevengePowerMul
    .long BTLCMD_CALCREVENGEPOWERMUL
    .endm

    .macro TryBreakScreens jump_no_screens
    .long BTLCMD_TRYBREAKSCREENS
    .long (\jump_no_screens-.) / 4 - 1
    .endm

    .macro TryYawn jump_if_fail
    .long BTLCMD_TRYYAWN
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro TryKnockOff jump_if_fail
    .long BTLCMD_TRYKNOCKOFF
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro CalcHPFalloffPower
    .long BTLCMD_CALCHPFALLOFFPOWER
    .endm

    .macro TryImprison jump_if_fail
    .long BTLCMD_TRYIMPRISON
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro TryGrudge jump_if_fail
    .long BTLCMD_TRYGRUDGE
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro TrySnatch jump_if_fail
    .long BTLCMD_TRYSNATCH
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro CalcWeightBasedPower
    .long BTLCMD_CALCWEIGHTBASEDPOWER
    .endm

    .macro CalcWeatherBallParams
    .long BTLCMD_CALCWEATHERBALLPARAMS
    .endm

    .macro TryPursuit jump_no_trigger
    .long BTLCMD_TRYPURSUIT
    .long (\jump_no_trigger-.) / 4 - 1
    .endm

    .macro ApplyTypeEffectiveness
    .long BTLCMD_APPLYTYPEEFFECTIVENESS
    .endm

    .macro IfTurnFlag battler, flag, compare_to, jump
    .long BTLCMD_IFTURNFLAG
    .long \battler
    .long \flag
    .long \compare_to
    .long (\jump-.) / 4 - 1
    .endm

    .macro SetTurnFlag battler, flag, val
    .long BTLCMD_SETTURNFLAG
    .long \battler
    .long \flag
    .long \val
    .endm

    .macro CalcGyroBallPower
    .long BTLCMD_CALCGYROBALLPOWER
    .endm

    .macro TryMetalBurst jump_if_fail
    .long BTLCMD_TRYMETALBURST
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro CalcPaybackPower
    .long BTLCMD_CALCPAYBACKPOWER
    .endm

    .macro CalcTrumpCardPower
    .long BTLCMD_CALCTRUMPCARDPOWER
    .endm

    .macro CalcWringOutPower
    .long BTLCMD_CALCWRINGOUTPOWER
    .endm

    .macro TryMeFirst jump_if_fail
    .long BTLCMD_TRYMEFIRST
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro TryCopycat jump_if_fail
    .long BTLCMD_TRYCOPYCAT
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro CalcPunishmentPower
    .long BTLCMD_CALCPUNISHMENTPOWER
    .endm

    .macro TrySuckerPunch jump_if_fail
    .long BTLCMD_TRYSUCKERPUNCH
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro CheckSideCondition battler, op, condition, jump
    .long BTLCMD_CHECKSIDECONDITION
    .long \battler
    .long \op
    .long \condition
    .long (\jump-.) / 4 - 1
    .endm

    .macro TryFeint jump_if_fail
    .long BTLCMD_TRYFEINT
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro CheckCanShareStatus jump_if_fail
    .long BTLCMD_CHECKCANSHARESTATUS
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro TryLastResort jump_if_fail
    .long BTLCMD_TRYLASTRESORT
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro TryToxicSpikes jump_if_fail
    .long BTLCMD_TRYTOXICSPIKES
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro CheckToxicSpikes battler, jump_no_spikes
    .long BTLCMD_CHECKTOXICSPIKES
    .long \battler
    .long (\jump_no_spikes-.) / 4 - 1
    .endm

    .macro CheckIgnorableAbility op, battler, ability, jump
    .long BTLCMD_CHECKIGNORABLEABILITY
    .long \op
    .long \battler
    .long \ability
    .long (\jump-.) / 4 - 1
    .endm

    .macro IfSameSide battler_1, battler_2, jump_same_side
    .long BTLCMD_IFSAMESIDE
    .long \battler_1
    .long \battler_2
    .long (\jump_same_side-.) / 4 - 1
    .endm

    .macro GenerateEndOfBattleItem
    .long BTLCMD_GENERATEENDOFBATTLEITEM
    .endm

    .macro TrickRoom
    .long BTLCMD_TRICKROOM
    .endm

    .macro IfMovedThisTurn battler, jump
    .long BTLCMD_IFMOVEDTHISTURN
    .long \battler
    .long (\jump-.) / 4 - 1
    .endm

    .macro CheckItemHoldEffect op, battler, effect, jump
    .long BTLCMD_CHECKITEMHOLDEFFECT
    .long \op
    .long \battler
    .long \effect
    .long (\jump-.) / 4 - 1
    .endm

    .macro GetItemHoldEffect battler, dst
    .long BTLCMD_GETITEMHOLDEFFECT
    .long \battler
    .long \dst
    .endm

    .macro GetItemEffectParam battler, dst
    .long BTLCMD_GETITEMEFFECTPARAM
    .long \battler
    .long \dst
    .endm

    .macro TryCamouflage jump_if_fail
    .long BTLCMD_TRYCAMOUFLAGE
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro GetTerrainMove
    .long BTLCMD_GETTERRAINMOVE
    .endm

    .macro GetTerrainSecondaryEffect
    .long BTLCMD_GETTERRAINSECONDARYEFFECT
    .endm

    .macro CalcNaturalGiftParams jump_if_fail
    .long BTLCMD_CALCNATURALGIFTPARAMS
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro TryPluck jump_sticky_hold, jump_no_effect
    .long BTLCMD_TRYPLUCK
    .long (\jump_sticky_hold-.) / 4 - 2
    .long (\jump_no_effect-.) / 4 - 1
    .endm

    .macro TryFling jump_no_effect
    .long BTLCMD_TRYFLING
    .long (\jump_no_effect-.) / 4 - 1
    .endm

    .macro YesNoMenu type
    .long BTLCMD_YESNOMENU
    .long \type
    .endm

    .macro WaitYesNoResult jump_yes, jump_no
    .long BTLCMD_WAITYESNORESULT
    .long (\jump_yes-.) / 4 - 2
    .long (\jump_no-.) / 4 - 1
    .endm

    .macro ChoosePokemonMenu
    .long BTLCMD_CHOOSEPOKEMONMENU
    .endm

    .macro WaitPokemonMenuResult jump_cancel
    .long BTLCMD_WAITPOKEMONMENURESULT
    .long (\jump_cancel-.) / 4 - 1
    .endm

    .macro SetLinkBattleResult
    .long BTLCMD_SETLINKBATTLERESULT
    .endm

    .macro CheckStealthRock battler, jump_no_rocks
    .long BTLCMD_CHECKSTEALTHROCK
    .long \battler
    .long (\jump_no_rocks-.) / 4 - 1
    .endm

    .macro CheckEffectActivation jump_no_effect
    .long BTLCMD_CHECKEFFECTACTIVATION
    .long (\jump_no_effect-.) / 4 - 1
    .endm

    .macro CheckChatterActivation jump_no_effect
    .long BTLCMD_CHECKCHATTERACTIVATION
    .long (\jump_no_effect-.) / 4 - 1
    .endm

    .macro GetCurrentMoveData param
    .long BTLCMD_GETCURRENTMOVEDATA
    .long \param
    .endm

    .macro SetMosaic battler, distortion, delay
    .long BTLCMD_SETMOSAIC
    .long \battler
    .long \distortion
    .long \delay
    .endm

    .macro ChangeForm battler
    .long BTLCMD_CHANGEFORM
    .long \battler
    .endm

    .macro SetBattleBackground
    .long BTLCMD_SETBATTLEBACKGROUND
    .endm

    .macro UseBagItem battler
    .long BTLCMD_USEBAGITEM
    .long \battler
    .endm

    .macro TryEscape battler, jump_if_fail
    .long BTLCMD_TRYESCAPE
    .long \battler
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro ShowBattleStartPartyGauge battler
    .long BTLCMD_SHOWBATTLESTARTPARTYGAUGE
    .long \battler
    .endm

    .macro HideBattleStartPartyGauge battler
    .long BTLCMD_HIDEBATTLESTARTPARTYGAUGE
    .long \battler
    .endm

    .macro ShowPartyGauge battler
    .long BTLCMD_SHOWPARTYGAUGE
    .long \battler
    .endm

    .macro HidePartyGauge battler
    .long BTLCMD_HIDEPARTYGAUGE
    .long \battler
    .endm

    .macro LoadPartyGaugeGraphics
    .long BTLCMD_LOADPARTYGAUGEGRAPHICS
    .endm

    .macro FreePartyGaugeGraphics
    .long BTLCMD_FREEPARTYGAUGEGRAPHICS
    .endm

    .macro IncrementGameRecord battler, battler_type, game_stat
    .long BTLCMD_INCREMENTGAMERECORD
    .long \battler
    .long \battler_type
    .long \game_stat
    .endm

    .macro RestoreSprite battler
    .long BTLCMD_RESTORESPRITE
    .long \battler
    .endm

    .macro TriggerAbilityOnHit jump_no_effect
    .long BTLCMD_TRIGGERABILITYONHIT
    .long (\jump_no_effect-.) / 4 - 1
    .endm

    .macro SpriteToOAM battler
    .long BTLCMD_SPRITETOOAM
    .long \battler
    .endm

    .macro OAMToSprite battler
    .long BTLCMD_OAMTOSPRITE
    .long \battler
    .endm

    .macro CheckBlackOut battler, jump
    .long BTLCMD_CHECKBLACKOUT
    .long \battler
    .long (\jump-.) / 4 - 1
    .endm

    .macro BoostRandomStatBy2 jump_no_change
    .long BTLCMD_BOOSTRANDOMSTATBY2
    .long (\jump_no_change-.) / 4 - 1
    .endm

    .macro RemoveItem battler
    .long BTLCMD_REMOVEITEM
    .long \battler
    .endm

    .macro TryRecycle jump_if_fail
    .long BTLCMD_TRYRECYCLE
    .long (\jump_if_fail-.) / 4 - 1
    .endm

    .macro TriggerHeldItemOnHit jump_no_effect
    .long BTLCMD_TRIGGERHELDITEMONHIT
    .long (\jump_no_effect-.) / 4 - 1
    .endm

    .macro PrintBattleResultMessage
    .long BTLCMD_PRINTBATTLERESULTMESSAGE
    .endm

    .macro PrintEscapeMessage
    .long BTLCMD_PRINTESCAPEMESSAGE
    .endm

    .macro PrintForfeitMessage
    .long BTLCMD_PRINTFORFEITMESSAGE
    .endm

    .macro CheckHoldOnWith1HP battler
    .long BTLCMD_CHECKHOLDONWITH1HP
    .long \battler
    .endm

    .macro TryRestoreStatusOnSwitch battler, jump_no_effect
    .long BTLCMD_TRYRESTORESTATUSONSWITCH
    .long \battler
    .long (\jump_no_effect-.) / 4 - 1
    .endm

    .macro CheckSubstitute battler, jump_sub_active
    .long BTLCMD_CHECKSUBSTITUTE
    .long \battler
    .long (\jump_sub_active-.) / 4 - 1
    .endm

    .macro CheckIgnoreWeather jump
    .long BTLCMD_CHECKIGNOREWEATHER
    .long (\jump-.) / 4 - 1
    .endm

    .macro SetRandomTarget battler
    .long BTLCMD_SETRANDOMTARGET
    .long \battler
    .endm

    .macro TriggerHeldItemOnPivotMove jump_no_effect
    .long BTLCMD_TRIGGERHELDITEMONPIVOTMOVE
    .long (\jump_no_effect-.) / 4 - 1
    .endm

    .macro RefreshSprite battler
    .long BTLCMD_REFRESHSPRITE
    .long \battler
    .endm

    .macro PlayMoveHitSound battler
    .long BTLCMD_PLAYMOVEHITSOUND
    .long \battler
    .endm

    .macro PlayBGM battler, sdat_id
    .long BTLCMD_PLAYBGM
    .long \battler
    .long \sdat_id
    .endm

    .macro CheckSafariGameDone jump_not_over
    .long BTLCMD_CHECKSAFARIGAMEDONE
    .long (\jump_not_over)-.) / 4 - 1
    .endm

    .macro WaitTime frames
    .long BTLCMD_WAITTIME
    .long \frames
    .endm

    .macro CheckCurMoveIsType type, jump
    .long BTLCMD_CHECKCURMOVEISTYPE
    .long \type
    .long (\jump)-.) / 4 - 1
    .endm

    .macro LoadArchivedMonData species, form_var, param
    .long BTLCMD_LOADARCHIVEDMONDATA
    .long \species
    .long \form_var
    .long \param
    .endm

    .macro RefreshMonData battler
    .long BTLCMD_REFRESHMONDATA
    .long \battler
    .endm

    .macro End
    .long BTLCMD_END
    .endm

    .text
    .globl _start
_start:

    .endif // ASM_BATTLE_SCRIPT_INC
