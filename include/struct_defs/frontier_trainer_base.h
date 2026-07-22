#ifndef POKEPLATINUM_FRONTIER_TRAINER_BASE_H
#define POKEPLATINUM_FRONTIER_TRAINER_BASE_H

typedef struct FrontierTrainerBase {
    u16 trainerType;
    u16 numSets;
    u16 setIDs[];
} FrontierTrainerBase;

#endif // POKEPLATINUM_FRONTIER_TRAINER_BASE_H
