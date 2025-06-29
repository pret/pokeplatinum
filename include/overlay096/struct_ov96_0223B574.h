#ifndef POKEPLATINUM_STRUCT_OV96_0223B574_H
#define POKEPLATINUM_STRUCT_OV96_0223B574_H

typedef struct {
    u8 gameCode;
    u8 languageCode;
    u8 country;
    u8 unk_03;
    u32 trainerId;
    u16 trainerName[8];
    u32 unk_10;
    u8 macAddress[6];
    u8 unk_1A[2];
    char email[56];
    u32 emailInitialised;
    u16 rngValue;
    u16 unk_5A;
} WorldExchangeTrainer;

#endif // POKEPLATINUM_STRUCT_OV96_0223B574_H
