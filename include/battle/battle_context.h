#ifndef POKEPLATINUM_BATTLE_CONTEXT_H
#define POKEPLATINUM_BATTLE_CONTEXT_H

#include "constants/battle.h"
#include "constants/pokemon.h"

#include "battle/ai_context.h"

#include "overlay016/struct_ov16_0224B7CC_decl.h"
#include "overlay016/struct_ov16_02252060_decl.h"
#include "overlay016/struct_ov16_02252060_t.h"
#include "overlay016/struct_ov16_0225C300.h"

typedef struct FieldConditions {
    u32 weatherTurns;
    u8 futureSightTurns[MAX_BATTLERS];
    u8 wishTurns[MAX_BATTLERS];
    u16 futureSightMoveNum[MAX_BATTLERS];
    int futureSightAttackerId[MAX_BATTLERS];
    s32 futureSightDamage[MAX_BATTLERS];
    u8 wishTarget[MAX_BATTLERS];
} FieldConditions;

typedef struct SideConditions {
    u32 reflectBattlerId        :2,
        reflectTurns            :3,
        lightScreenBattlerId    :2,
        lightScreenTurns        :3,
        mistBattlerId           :2,
        mistTurns               :3,
        safeguardBattlerId      :2,
        safeguardTurns          :3,
        followMeActive          :1,
        followMeBattlerId       :2,
        knockedOffItemBattlers  :6,
        padding00_1D            :3;

    u32 spikesLayers        :2,
        toxicSpikesLayers   :2,
        padding04_04        :28;
} SideConditions;

typedef struct TurnFlags {
    u32 struggling          :1,
        ppDecremented       :1,
        protecting          :1,
        helpingHandActive   :1,
        magicCoatActive     :1,
        snatching           :1,
        roosting            :1,
        fleeing             :2,
        enduring            :1,
        padding00_0A        :22;

    int physicalDamageTakenByAttacker[MAX_BATTLERS];
    int physicalDamageLastAttacker;
    int physicalDamageAttackerMask;

    int specialDamageTakenByAttacker[MAX_BATTLERS];
    int specialDamageLastAttacker;
    int specialDamageAttackerMask;

    int lastDamageTaken;
    int lastAttacker;
    int assuranceDamageMask;
} TurnFlags;

typedef struct SelfTurnFlags {
    u32 skipPressureCheck       :1,
        lightningRodRedirected  :1,
        stormDrainRedirected    :1,
        moldBreakerActivated    :1,
        trickRoomActivated      :1,
        focusItemActivated      :1,
        repeatedMoveCount       :3,
        padding00_09            :23;

    int physicalDamageTaken;
    int physicalDamageTakenLastAttacker;
    int specialDamageTaken;
    int specialDamageTakenLastAttacker;
    int statusFlags;
    int shellBellDamageDealt;
} SelfTurnFlags;

typedef struct MoveFailFlags {
    u32 paralyzed       :1,
        noEffect        :1,
        imprisoned      :1,
        infatuated      :1,
        disabled        :1,
        taunted         :1,
        flinched        :1,
        confused        :1,
        gravityActive   :1,
        healBlocked     :1,
        padding00_0A    :22;
} MoveFailFlags;

typedef struct BattleContext {
    u8 battlerCommandState[MAX_BATTLERS];
    u8 nextCommandState[MAX_BATTLERS];

    int command;
    int commandNext;

    int fieldConditionCheckState;   // Screens, Weather, et al.
    int fieldConditionCheckTemp;
    int monConditionCheckState;     // Status (volatile or otherwise), abilities, held items, et al.
    int monConditionCheckTemp;
    int sideConditionCheckState;    // Future Sight, Perish Song, Trick Room (for some reason)
    int sideConditionCheckTemp;
    int turnStartCheckState;        // Focus Punch windup, Rage flag check, Speed tiebreaks
    int turnStartCheckTemp;
    int afterMoveHitCheckState;     // Rage flag clearing, Shell Bell proc, Life Orb proc
    int afterMoveHitCheckTemp;
    int afterMoveMessageType;       // designates whether we're caught in a multi-hit loop or not
    int afterMoveMessageState;      // Critical hits, status afflictions, form change, Rage boost, abilities that proc on-hit, King's Rock proc
    int afterMoveEffectState;       // Reappear from mid-air/underground, Synchronize check, berry procs, items that proc on-hit, thaw out when hit by a Fire-type move
    int afterMoveEffectTemp;
    int beforeMoveCheckState;       // Quick Claw, status interruption, obedience check, PP check, target check, Magic Coat, Snatch
    int moveExecutionCheckState;    // target change, hit check, secondary effect proc check, type checks, Soundproof
    int statusCheckState;           // self-explanatory
    int abilityCheckState;          // another round of Soundproof for some reason
    int switchInCheckState;         // Trace, Intimidate, weather abilities, et al.
    int vanishedCheckTemp;

    int padding0060;                // never used

    int battlerIdAttacker;
    int battlerIdAttackerTemp;
    int battlerIdDefender;
    int battlerIdDefenderTemp;
    int battlerIdFainted;
    int battlerIdSwitched;
    int battlerIdSwitchedTemp;
    int battlerIdAbility;
    int battlerIdMagicCoat;
    int addlEffectType;             // differing from pokeheartgold here for accuracy
    int addlEffectParam;
    int addlEffectFlags;
    int battlerIdAddlEffect;
    int backupBattlerId;            // not sure what else to name this tbh
    
    int gainedExp;
    int sharedExp;
    u32 monsGainingExp[2];

    int scriptNarcId;
    int scriptFileId;
    int scriptCursor;
    int scriptStackPointer;
    int scriptStackNarcId[BATTLE_SCRIPT_STACK_MAX];
    int scriptStackFileId[BATTLE_SCRIPT_STACK_MAX];
    int scriptStackCursor[BATTLE_SCRIPT_STACK_MAX];

    int turnOrderCounter;
    int waitCounter;

    UnkStruct_ov16_0225C300 msgBuffer;      // generic holding buffer for pre-processed message
    int msgBattlerIdTemp;
    int msgBattlerIdAttacker;
    int msgBattlerIdDefender;
    int msgMoveNumTemp;
    int msgItemNumTemp;
    int msgAbilityNumTemp;
    int msgTemp;
    int calcTemp;
    int scriptTemp;

    u32 battlerStatusFlags[MAX_BATTLERS];
    u32 payDayCount;
    int totalTurns;
    int totalFainted[MAX_BATTLERS];
    int totalDamage[MAX_BATTLERS];
    int meFirstTurnOrder;

    UnkStruct_ov16_0224B7CC *unk_178;       // task control stuff
    void *unk_17C;
    
    u32 fieldConditionsMask;
    FieldConditions fieldConditions;

    u32 sideConditionsMask[MAX_BATTLE_SIDES];
    SideConditions sideConditions[MAX_BATTLE_SIDES];
    
    TurnFlags turnFlags[MAX_BATTLERS];
    SelfTurnFlags selfTurnFlags[MAX_BATTLERS];
    MoveFailFlags moveFailFlags[MAX_BATTLERS];

    AIContext aiContext;         // has the move and item data tables
    u32 *aiScriptTemp;
    u32 aiScriptCursor;

    u32 battleStatusMask;
    u32 battleStatusMask2;
    
    int damage;
    int hitDamage;
    int criticalBoosts;
    int criticalMulti;
    int movePower;
    int powerMulti;
    int hpCalcTemp;
    int moveType;
    int moveEffectChance;
    int prizeMoneyMulti;
    u32 moveStatusFlags;
    u32 addlEffectDirectFlags;
    u32 addlEffectIndirectFlags;
    u32 addlEffectAbilityFlags;
    u8 multiHitCounter;
    u8 multiHitNumHits;
    u8 battlerIdCounter;
    u8 beatUpCounter;

    BOOL multiHitLoop;
    u32 multiHitCheckFlags;
    u32 multiHitAccuracyCheck;

    u32 clearVolatileStatus[MAX_BATTLERS];

    u8 selectedMonIndex[MAX_BATTLERS];
    u8 switchSelectedMonIndex[MAX_BATTLERS];
    u8 aiSwitchSelectedMonIndex[MAX_BATTLERS];
    
    u32 battlerActions[MAX_BATTLERS][MAX_BATTLE_ACTIONS];
    u8 battlerActionOrder[MAX_BATTLERS];
    u8 monSpeedOrder[MAX_BATTLERS];
    u32 monSpeedValues[MAX_BATTLERS];
    
    u8 ioQueue[MAX_LINK_BATTLERS][MAX_BATTLERS][BATTLE_IO_QUEUE_SIZE];
    u8 ioBuffer[MAX_BATTLERS][BATTLE_IO_BUFFER_SIZE];
    int battleScript[BATTLE_SCRIPT_SIZE_MAX];

    UnkStruct_ov16_02252060 battleMons[MAX_BATTLERS];

    u32 moveNumTemp;
    u32 moveNumCurr;
    u32 moveNumPrev;
    u32 moveNumLockedInto[MAX_BATTLERS];
    u16 moveNumProtect[MAX_BATTLERS];
    u16 moveNumHit[MAX_BATTLERS];
    u16 moveNumHitBattler[MAX_BATTLERS];
    u16 moveNumHitType[MAX_BATTLERS];
    u16 moveNumPrevByBattler[MAX_BATTLERS];
    u16 moveNumCopied[MAX_BATTLERS];
    u16 moveNumCopiedHit[MAX_BATTLERS][MAX_BATTLERS];
    u16 moveNumSketched[MAX_BATTLERS];
    u16 moveNumSelected[MAX_BATTLERS];
    u16 moveSlot[MAX_BATTLERS];
    u16 conversion2Move[MAX_BATTLERS];
    u16 conversion2Battler[MAX_BATTLERS];
    u16 conversion2Type[MAX_BATTLERS];
    u16 metronomeMoveNum[MAX_BATTLERS];

    int storedDamage[MAX_BATTLERS];
    int lastHitByBattler[MAX_BATTLERS];
    int battlerIdSpeedTemp;
    u8 battlersSwitchingMask;
    u8 levelUpMons;
    u16 padding310A;    // not used?

    u16 speedRand[MAX_BATTLERS];
    
    int flingTemp;
    int flingScript;

    u8 safariCatchCount;
    u8 safariEscapeCount;
    u8 runAttempts;
    u8 battleEndFlag;

    u8 magnitude;
    u8 fieldWeatherChecked;
    s16 hpTemp;

    u16 recycleItem[MAX_BATTLERS];

    u8 partyOrder[MAX_BATTLERS][MAX_PARTY_SIZE];

    BOOL expJinglePlayed;

    int linkBattleTimeout;

    u8 recordedCommandFlags[MAX_BATTLERS];

    int waitingBattlers;

    u32 battleProgressFlag : 1;
    u32 padding3154_01 : 31;
} BattleContext;

#endif // POKEPLATINUM_BATTLE_CONTEXT_H
