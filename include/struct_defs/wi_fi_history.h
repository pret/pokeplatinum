#ifndef POKEPLATINUM_STRUCT_WI_FI_HISTORY_H
#define POKEPLATINUM_STRUCT_WI_FI_HISTORY_H

typedef struct WiFiHistory {
    u32 unused_00;
    u8 hasInteractedOutsideOfJapan;
    u8 country;
    u8 region;
    u8 geonetCommunicationMap[4080];
} WiFiHistory;

#endif // POKEPLATINUM_STRUCT_WI_FI_HISTORY_H
