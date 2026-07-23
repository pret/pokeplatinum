#ifndef POKEPLATINUM_STRUCT_0202FF58_H
#define POKEPLATINUM_STRUCT_0202FF58_H

typedef struct {
    u8 unk_00_0 : 1;
    u8 challengeType: 3;
    u8 unk_00_4 : 1;
    u8 unused: 3;
    u8 unk_01; // likely battle num
    u16 unused2;
    u16 trainerIDs[14]; // almost certainly trainer ids
    u16 unk_20[4]; // species info??
    u8 playerIVs[4];
    u32 playerPersonality[4];
    u16 unk_3C[4]; // opponent species??
    u8 opponentIVs[4];
    u32 opponentPersonality[4];
} UnkStruct_0202FF58;

#endif // POKEPLATINUM_STRUCT_0202FF58_H
