#ifndef POKEPLATINUM_STRUCT_WI_FI_HISTORY_H
#define POKEPLATINUM_STRUCT_WI_FI_HISTORY_H

typedef struct WiFiHistory {
    u32 unk_00;
    u8 unk_04;
    u8 country;
    u8 unk_06;
    u8 unk_07[4080];
} WiFiHistory;

#endif // POKEPLATINUM_STRUCT_WI_FI_HISTORY_H
