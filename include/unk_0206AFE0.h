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

BOOL sub_0206B024(VarsFlags *varsFlags, u16 param1);
u16 sub_0206B034(VarsFlags *varsFlags);
BOOL sub_0206B044(VarsFlags *varsFlags, u16 param1);
u16 sub_0206B054(VarsFlags *varsFlags);
u16 sub_0206B064(VarsFlags *varsFlags);
u16 VarsFlags_GetProfessorAssistantStarterSpecies(VarsFlags *varsFlags);
u16 sub_0206B0B4(VarsFlags *varsFlags);
BOOL sub_0206B0C4(VarsFlags *varsFlags, u16 param1);
void VsSeeker_Reset(VarsFlags *varsFlags);
u16 VsSeeker_GetBattery(VarsFlags *varsFlags);
BOOL VsSeeker_SetBattery(VarsFlags *varsFlags, u16 param1);
u16 VsSeeker_GetActiveStepCount(VarsFlags *varsFlags);
BOOL VsSeeker_SetActiveStepCount(VarsFlags *varsFlags, u16 param1);
void sub_0206B144(VarsFlags *varsFlags, int param1);
BOOL sub_0206B16C(VarsFlags *varsFlags, int param1);
void sub_0206B1B0(VarsFlags *varsFlags, int param1);
void sub_0206B1D8(VarsFlags *varsFlags, int param1);
BOOL VarFlags_HiddenLocationsUnlocked(VarsFlags *varsFlags, int hiddenLocation);
BOOL sub_0206B218(VarsFlags *varsFlags);
u16 sub_0206B228(VarsFlags *varsFlags);
BOOL sub_0206B238(VarsFlags *varsFlags);
u16 sub_0206B260(VarsFlags *varsFlags);
BOOL sub_0206B270(VarsFlags *varsFlags, u16 param1);
void sub_0206B280(VarsFlags *varsFlags, u32 param1);
u32 sub_0206B2A4(VarsFlags *varsFlags);
void sub_0206B2C8(VarsFlags *varsFlags);
void sub_0206B2E4(SaveData *param0, u16 param1);
u16 sub_0206B314(VarsFlags *varsFlags);
BOOL sub_0206B324(VarsFlags *varsFlags, u16 param1);
void sub_0206B334(SaveData *varsFlags);
u16 sub_0206B354(VarsFlags *varsFlags);
BOOL sub_0206B364(VarsFlags *varsFlags, u16 param1);
u16 sub_0206B374(VarsFlags *varsFlags);
BOOL sub_0206B384(VarsFlags *varsFlags, u16 param1);
u16 sub_0206B394(VarsFlags *varsFlags);
BOOL sub_0206B3A4(VarsFlags *varsFlags, u16 param1);
BOOL sub_0206B3B4(VarsFlags *varsFlags);
u16 sub_0206B3DC(VarsFlags *varsFlags);
u16 sub_0206B3EC(VarsFlags *varsFlags);
BOOL sub_0206B3FC(VarsFlags *varsFlags, u16 param1);
u16 sub_0206B40C(VarsFlags *varsFlags);
BOOL sub_0206B41C(VarsFlags *varsFlags, u16 param1);
u16 sub_0206B42C(VarsFlags *varsFlags);
BOOL sub_0206B43C(VarsFlags *varsFlags, u16 param1);
u16 sub_0206B44C(VarsFlags *varsFlags);
void sub_0206B45C(VarsFlags *varsFlags, u16 param1);
void sub_0206B46C(VarsFlags *varsFlags, u16 param1);
u16 sub_0206B47C(VarsFlags *varsFlags);
void sub_0206B48C(VarsFlags *varsFlags, u16 param1);
void sub_0206B514(SaveData *varsFlags);
void sub_0206B558(VarsFlags *varsFlags, u16 param1);
u16 sub_0206B588(VarsFlags *varsFlags);
u16 sub_0206B598(VarsFlags *varsFlags);
u16 sub_0206B5A8(VarsFlags *varsFlags);
u16 sub_0206B5B8(VarsFlags *varsFlags);
u16 sub_0206B5C8(VarsFlags *varsFlags);
u16 sub_0206B5D8(VarsFlags *varsFlags);
void sub_0206B5E8(VarsFlags *varsFlags, u16 param1);
u16 sub_0206B5F8(VarsFlags *varsFlags);
void sub_0206B608(VarsFlags *varsFlags, u16 param1);
u16 sub_0206B618(VarsFlags *varsFlags);
void sub_0206B628(VarsFlags *varsFlags, u16 param1);
void sub_0206B638(VarsFlags *varsFlags, u16 param1);
void sub_0206B648(VarsFlags *varsFlags, u16 param1);
void sub_0206B658(VarsFlags *varsFlags, u16 param1);
void sub_0206B668(VarsFlags *varsFlags, u16 param1);
void sub_0206B678(VarsFlags *varsFlags, u16 param1);
void sub_0206B688(VarsFlags *varsFlags, u16 param1, u16 param2);
u16 sub_0206B6DC(VarsFlags *varsFlags);
void sub_0206B6EC(VarsFlags *varsFlags, u16 param1);
u16 sub_0206B6FC(VarsFlags *varsFlags);

#endif // POKEPLATINUM_UNK_0206AFE0_H
