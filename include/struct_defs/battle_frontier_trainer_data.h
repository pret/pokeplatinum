#ifndef POKEPLATINUM_STRUCT_BATTLE_FRONTIER_TRAINER_DATA
#define POKEPLATINUM_STRUCT_BATTLE_FRONTIER_TRAINER_DATA

typedef struct BattleFrontierTrainerData {
    u16 trainerType;
    u16 numSets;
    u16 setIDs[1];
} BattleFrontierTrainerData;

#endif // POKEPLATINUM_STRUCT_BATTLE_FRONTIER_TRAINER_DATA
