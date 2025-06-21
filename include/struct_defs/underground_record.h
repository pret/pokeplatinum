#ifndef POKEPLATINUM_STRUCT_UNDERGROUND_RECORD_H
#define POKEPLATINUM_STRUCT_UNDERGROUND_RECORD_H

typedef struct UndergroundRecord {
    u32 trainerScore : 20;
    u32 peopleMet : 20;
    u32 numGiftsGiven : 20;
    u32 unk_0C_0 : 20;
    u32 numSpheresDug : 20;
    u32 numFossilsDug : 20;
    u32 unk_18_0 : 20;
    u32 numTrapsHit : 20;
    u32 unk_20_0 : 20;
    u32 unk_24_0 : 20;
    u32 unk_28_0 : 20;
    u32 unk_2C_0 : 20;
    u32 unk_30_0 : 20;
    u32 unk_34_0 : 20;
    u32 capturedFlagCount : 20;
} UndergroundRecord;

#endif // POKEPLATINUM_STRUCT_UNDERGROUND_RECORD_H
