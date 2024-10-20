#ifndef POKEPLATINUM_STRUCT_SPECIESCAUGHTSTATUS_H
#define POKEPLATINUM_STRUCT_SPECIESCAUGHTSTATUS_H

enum CaughtStatus {
    CS_UNENCOUNTERED = 0,
    CS_ENCOUNTERED = 1,
    CS_CAUGHT = 2,
};

typedef struct {
    int species;
    enum CaughtStatus caughtStatus;
} speciesCaughtStatus;

#endif // POKEPLATINUM_STRUCT_SPECIESCAUGHTSTATUS_H
