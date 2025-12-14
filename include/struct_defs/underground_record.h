#ifndef POKEPLATINUM_STRUCT_UNDERGROUND_RECORD_H
#define POKEPLATINUM_STRUCT_UNDERGROUND_RECORD_H

typedef struct UndergroundRecord {
    u32 trainerScore : 20;
    u32 peopleMet : 20;
    u32 numGiftsGiven : 20;
    u32 flagsStolen : 20; // never read; refers to taking a flag from another player, not from a base
    u32 numSpheresDug : 20;
    u32 numFossilsDug : 20;
    u32 unk_18_0 : 20;
    u32 numTrapHits : 20;
    u32 numTrapsTriggered : 20;
    u32 numPlayersHelped : 20;
    u32 numGiftsReceived : 20;
    u32 timesFlagTaken : 20;
    u32 flagsRecovered : 20;
    u32 unk_34_0 : 20;
    u32 capturedFlagCount : 20;
} UndergroundRecord;

#endif // POKEPLATINUM_STRUCT_UNDERGROUND_RECORD_H
