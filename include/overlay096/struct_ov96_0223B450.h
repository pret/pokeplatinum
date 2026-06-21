#ifndef POKEPLATINUM_STRUCT_OV96_0223B450_H
#define POKEPLATINUM_STRUCT_OV96_0223B450_H

#include "overlay090/struct_ov90_021D1750.h"
#include "overlay096/struct_ov96_0223B450_sub1.h"
#include "overlay096/struct_ov96_0223B450_sub2.h"

typedef struct WifiBattleTowerDownloadBuffer {
    WifiPlayerProfile wifiPlayerProfile[7];
    WifiBattleTowerMatchCandidate matchCandidates[30];
} WifiBattleTowerDownloadBuffer;

#endif // POKEPLATINUM_STRUCT_OV96_0223B450_H
