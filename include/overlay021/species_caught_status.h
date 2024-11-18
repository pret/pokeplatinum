#ifndef POKEPLATINUM_SPECIESCAUGHTSTATUS_H
#define POKEPLATINUM_SPECIESCAUGHTSTATUS_H

enum CaughtStatus {
    CS_UNENCOUNTERED = 0,
    CS_ENCOUNTERED = 1,
    CS_CAUGHT = 2,
};

typedef struct {
    int species;
    enum CaughtStatus caughtStatus;
} SpeciesCaughtStatus;

#endif // POKEPLATINUM_SPECIESCAUGHTSTATUS_H
