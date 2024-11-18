#ifndef POKEPLATINUM_UNK_0206AFE0_H
#define POKEPLATINUM_UNK_0206AFE0_H

#include "savedata.h"
#include "vars_flags.h"

enum HiddenLocations {
    HL_FULLMOONISLAND = 0,
    HL_NEWMOONISLAND = 1,
    HL_SPRINGPATH = 2,
    HL_SEABREAKPATH = 3,
};

BOOL sub_0206B024(VarsFlags *param0, u16 param1);
u16 sub_0206B034(VarsFlags *param0);
BOOL sub_0206B044(VarsFlags *param0, u16 param1);
u16 sub_0206B054(VarsFlags *param0);
u16 sub_0206B064(VarsFlags *param0);
u16 sub_0206B08C(VarsFlags *param0);
u16 sub_0206B0B4(VarsFlags *param0);
BOOL sub_0206B0C4(VarsFlags *param0, u16 param1);
void VsSeeker_Reset(VarsFlags *param0);
u16 VsSeeker_GetBattery(VarsFlags *param0);
BOOL VsSeeker_SetBattery(VarsFlags *param0, u16 param1);
u16 VsSeeker_GetActiveStepCount(VarsFlags *param0);
BOOL VsSeeker_SetActiveStepCount(VarsFlags *param0, u16 param1);
void sub_0206B144(VarsFlags *param0, int param1);
BOOL sub_0206B16C(VarsFlags *param0, int param1);
void sub_0206B1B0(VarsFlags *param0, int param1);
void sub_0206B1D8(VarsFlags *param0, int param1);
BOOL VarFlags_HiddenLocationsUnlocked(VarsFlags *varsFlags, int hiddenLocation);
BOOL sub_0206B218(VarsFlags *param0);
u16 sub_0206B228(VarsFlags *param0);
BOOL sub_0206B238(VarsFlags *param0);
u16 sub_0206B260(VarsFlags *param0);
BOOL sub_0206B270(VarsFlags *param0, u16 param1);
void sub_0206B280(VarsFlags *param0, u32 param1);
u32 sub_0206B2A4(VarsFlags *param0);
void sub_0206B2C8(VarsFlags *param0);
void sub_0206B2E4(SaveData *param0, u16 param1);
u16 sub_0206B314(VarsFlags *param0);
BOOL sub_0206B324(VarsFlags *param0, u16 param1);
void sub_0206B334(SaveData *param0);
u16 sub_0206B354(VarsFlags *param0);
BOOL sub_0206B364(VarsFlags *param0, u16 param1);
u16 sub_0206B374(VarsFlags *param0);
BOOL sub_0206B384(VarsFlags *param0, u16 param1);
u16 sub_0206B394(VarsFlags *param0);
BOOL sub_0206B3A4(VarsFlags *param0, u16 param1);
BOOL sub_0206B3B4(VarsFlags *param0);
u16 sub_0206B3DC(VarsFlags *param0);
u16 sub_0206B3EC(VarsFlags *param0);
BOOL sub_0206B3FC(VarsFlags *param0, u16 param1);
u16 sub_0206B40C(VarsFlags *param0);
BOOL sub_0206B41C(VarsFlags *param0, u16 param1);
u16 sub_0206B42C(VarsFlags *param0);
BOOL sub_0206B43C(VarsFlags *param0, u16 param1);
u16 sub_0206B44C(VarsFlags *param0);
void sub_0206B45C(VarsFlags *param0, u16 param1);
void sub_0206B46C(VarsFlags *param0, u16 param1);
u16 sub_0206B47C(VarsFlags *param0);
void sub_0206B48C(VarsFlags *param0, u16 param1);
void sub_0206B514(SaveData *param0);
void sub_0206B558(VarsFlags *param0, u16 param1);
u16 sub_0206B588(VarsFlags *param0);
u16 sub_0206B598(VarsFlags *param0);
u16 sub_0206B5A8(VarsFlags *param0);
u16 sub_0206B5B8(VarsFlags *param0);
u16 sub_0206B5C8(VarsFlags *param0);
u16 sub_0206B5D8(VarsFlags *param0);
void sub_0206B5E8(VarsFlags *param0, u16 param1);
u16 sub_0206B5F8(VarsFlags *param0);
void sub_0206B608(VarsFlags *param0, u16 param1);
u16 sub_0206B618(VarsFlags *param0);
void sub_0206B628(VarsFlags *param0, u16 param1);
void sub_0206B638(VarsFlags *param0, u16 param1);
void sub_0206B648(VarsFlags *param0, u16 param1);
void sub_0206B658(VarsFlags *param0, u16 param1);
void sub_0206B668(VarsFlags *param0, u16 param1);
void sub_0206B678(VarsFlags *param0, u16 param1);
void sub_0206B688(VarsFlags *param0, u16 param1, u16 param2);
u16 sub_0206B6DC(VarsFlags *param0);
void sub_0206B6EC(VarsFlags *param0, u16 param1);
u16 sub_0206B6FC(VarsFlags *param0);

#endif // POKEPLATINUM_UNK_0206AFE0_H
