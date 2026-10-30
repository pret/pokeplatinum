#ifndef POKEPLATINUM_OV66_0222DDF0_H
#define POKEPLATINUM_OV66_0222DDF0_H

#include <ppwlobby/ppw_lobby.h>

#include "constants/pokemon.h"
#include "constants/string.h"

#include "overlay066/struct_ov66_0222DFF8_decl.h"
#include "overlay066/struct_ov66_0222E294.h"
#include "overlay066/struct_ov66_0222E908.h"
#include "overlay066/struct_ov66_02230914.h"
#include "overlay066/struct_ov66_02231428.h"
#include "overlay066/struct_ov66_02231560.h"
#include "overlay066/struct_ov66_0223177C_decl.h"
#include "overlay066/struct_ov66_02232068.h"
#include "overlay068/struct_ov68_0225DC74.h"

#include "charcode.h"
#include "enums.h"
#include "savedata.h"
#include "trainer_info.h"

typedef struct WiFiPlazaProfile {
    s32 unk_00;
    u32 trainerID;
    charcode_t trainerName[TRAINER_NAME_LEN + 1];
    UnkStruct_ov66_02231428 unk_18;
    UnkStruct_ov66_02231428 unk_1C;
    u16 partySpecies[MAX_PARTY_SIZE];
    u8 partyForms[MAX_PARTY_SIZE];
    u8 partyIsEgg[MAX_PARTY_SIZE];
    u8 trainerGender;
    u8 language;
    u16 trainerAppearanceIdx;
    u16 country;
    u8 region;
    u8 isNationalDexObtained;
    u8 isMainStoryCleared;
    u8 unk_41;
    u8 gameVersion;
    u8 unk_43;
    s64 startTimestamp;
    u8 unk_4C[12];
    s32 unk_58[12];
    u16 unk_88[2];
    UnkStruct_ov66_0222E908 unk_8C;
} WiFiPlazaProfile;

WiFiPlazaSystem *ov66_0222DDF0(SaveData *saveData, enum HeapID heapID);
void ov66_0222DEEC(WiFiPlazaSystem *param0);
void ov66_0222DF58(WiFiPlazaSystem *param0);
void ov66_0222DFF4(WiFiPlazaSystem *param0);
int ov66_0222DFF8(const WiFiPlazaSystem *param0);
BOOL ov66_0222E004(const WiFiPlazaSystem *param0);
UnkStruct_ov66_0223177C *ov66_0222E00C(WiFiPlazaSystem *param0);
const UnkStruct_ov66_02231560 *ov66_0222E010(WiFiPlazaSystem *param0);
const UnkStruct_ov66_02231428 *ov66_0222E028(const WiFiPlazaSystem *param0);
BOOL ov66_0222E02C(WiFiPlazaSystem *param0, u32 param1);
BOOL ov66_0222E058(WiFiPlazaSystem *param0, u32 param1);
BOOL ov66_0222E084(WiFiPlazaSystem *param0, int param1);
BOOL ov66_0222E09C(WiFiPlazaSystem *param0, u32 param1);
SaveData *ov66_0222E0C4(WiFiPlazaSystem *param0);
BOOL ov66_0222E0C8(const WiFiPlazaSystem *param0);
BOOL ov66_0222E0DC(const WiFiPlazaSystem *param0);
BOOL ov66_0222E0F4(const WiFiPlazaSystem *param0);
void ov66_0222E10C(WiFiPlazaSystem *param0);
BOOL ov66_0222E120(const WiFiPlazaSystem *param0);
BOOL ov66_0222E12C(const WiFiPlazaSystem *param0);
BOOL ov66_0222E138(const WiFiPlazaSystem *param0);
int ov66_0222E158(const WiFiPlazaSystem *param0);
BOOL ov66_0222E170(const WiFiPlazaSystem *param0);
BOOL ov66_0222E190(const WiFiPlazaSystem *param0);
BOOL ov66_0222E19C(const WiFiPlazaSystem *param0);
PPW_LOBBY_TIME_EVENT ov66_0222E1B8(const WiFiPlazaSystem *param0);
PPW_LOBBY_TIME_EVENT ov66_0222E1D0(const WiFiPlazaSystem *param0);
PPW_LOBBY_TIME_EVENT ov66_0222E1E8(const WiFiPlazaSystem *param0);
void ov66_0222E200(WiFiPlazaSystem *param0);
BOOL ov66_0222E210(const WiFiPlazaSystem *param0);
BOOL ov66_0222E220(const WiFiPlazaSystem *param0);
void ov66_0222E22C(WiFiPlazaSystem *param0, BOOL param1);
void ov66_0222E238(WiFiPlazaSystem *param0);
void ov66_0222E24C(WiFiPlazaSystem *param0, s32 param1, u32 param2);
void ov66_0222E27C(WiFiPlazaSystem *param0, u32 param1);
void ov66_0222E294(const WiFiPlazaSystem *param0, UnkStruct_ov66_0222E294 *param1);
void ov66_0222E2A4(WiFiPlazaSystem *param0);
BOOL ov66_0222E2B4(const WiFiPlazaSystem *param0);
void ov66_0222E2C4(WiFiPlazaSystem *param0, BOOL param1);
void ov66_0222E2CC(const WiFiPlazaSystem *param0);
void ov66_0222E31C(WiFiPlazaSystem *param0, BOOL param1);
u32 ov66_0222E338(const WiFiPlazaSystem *param0);
s32 ov66_0222E344(const WiFiPlazaSystem *param0);
BOOL ov66_0222E34C(const WiFiPlazaSystem *param0, u32 param1);
const WiFiPlazaProfile *ov66_0222E374(const WiFiPlazaSystem *param0, u32 param1);
WiFiPlazaProfile *ov66_0222E3BC(WiFiPlazaSystem *param0);
void ov66_0222E3E4(WiFiPlazaSystem *param0, int param1);
void ov66_0222E500(WiFiPlazaSystem *param0, int param1, s32 param2);
void ov66_0222E528(WiFiPlazaSystem *param0, u32 param1);
void ov66_0222E56C(WiFiPlazaSystem *param0, int type1, int type2);
void ov66_0222E5D8(WiFiPlazaSystem *param0, u32 param1, u32 param2);
void ov66_0222E640(const WiFiPlazaProfile *profile, TrainerInfo *param1, enum HeapID heapID);
u32 ov66_0222E71C(const WiFiPlazaProfile *profile);
int ov66_0222E728(const WiFiPlazaProfile *profile, u32 param1);
s32 ov66_0222E760(const WiFiPlazaProfile *profile, u32 param1);
s32 ov66_0222E798(const WiFiPlazaProfile *profile);
u32 WiFiPlazaProfile_GetTrainerID(const WiFiPlazaProfile *profile);
int ov66_0222E7A0(const WiFiPlazaProfile *profile);
UnkStruct_ov66_02231428 ov66_0222E7C4(const WiFiPlazaProfile *profile);
u32 WiFiPlazaProfile_GetGender(const WiFiPlazaProfile *profile);
u32 WiFiPlazaProfile_GetNormalizedLanguage(const WiFiPlazaProfile *profile);
BOOL WiFiPlazaProfile_IsLanguageValid(const WiFiPlazaProfile *profile);
u32 WiFiPlazaProfile_GetLanguage(const WiFiPlazaProfile *profile);
u32 WiFiPlazaProfile_GetTrainerAppearanceGraphicsID(const WiFiPlazaProfile *profile);
u32 ov66_0222E880(const WiFiPlazaProfile *profile);
u32 ov66_0222E8A4(const WiFiPlazaProfile *profile);
u32 ov66_0222E8C4(const WiFiPlazaProfile *profile);
BOOL ov66_0222E8D8(const WiFiPlazaProfile *profile);
int ov66_0222E8E8(const WiFiPlazaProfile *profile, u32 param1);
void ov66_0222E908(const WiFiPlazaProfile *profile, UnkStruct_ov66_0222E908 *param1);
TrainerInfo *ov66_0222E918(const WiFiPlazaSystem *param0);
BOOL ov66_0222E924(const WiFiPlazaSystem *param0, u32 param1);
void ov66_0222E934(const WiFiPlazaSystem *param0, UnkStruct_ov66_02232068 *param1);
BOOL ov66_0222E944(const WiFiPlazaSystem *param0, u32 param1);
const UnkStruct_ov66_02230914 *ov66_0222E954(const WiFiPlazaSystem *param0, u32 param1);
u32 ov66_0222E964(const WiFiPlazaSystem *param0);
u32 ov66_0222E974(const WiFiPlazaSystem *param0, u32 param1);
void ov66_0222E990(WiFiPlazaSystem *param0, u32 param1, u32 param2);
void ov66_0222E9CC(WiFiPlazaSystem *param0, u32 param1, u32 param2, u32 param3);
void ov66_0222EA10(WiFiPlazaSystem *param0, enum PlazaMinigame param1, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6, BOOL param7);
void ov66_0222EAB4(WiFiPlazaSystem *param0, enum PlazaMinigame param1, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6);
u32 ov66_0222EB28(const WiFiPlazaSystem *param0);
u32 ov66_0222EB38(const WiFiPlazaSystem *param0);
u32 ov66_0222EB48(const WiFiPlazaSystem *param0);
BOOL ov66_0222EB54(const WiFiPlazaSystem *param0, u32 param1);
void ov66_0222EB6C(WiFiPlazaSystem *param0, u32 param1);
int ov66_0222EB7C(const WiFiPlazaSystem *param0, u32 param1);
u32 ov66_0222EB8C(const WiFiPlazaSystem *param0, u32 param1);
u32 ov66_0222EB9C(const WiFiPlazaSystem *param0);
u32 ov66_0222EBA4(const WiFiPlazaSystem *param0, u32 param1);
u32 ov66_0222EBB4(WiFiPlazaSystem *param0, u32 param1, int param2);
void ov66_0222EBC4(WiFiPlazaSystem *param0, u32 param1);
void ov66_0222EBD4(WiFiPlazaSystem *param0, u32 param1);
BOOL ov66_0222EBE4(const WiFiPlazaSystem *param0, u32 param1);
void ov66_0222EBF4(WiFiPlazaSystem *param0, u32 param1);
void ov66_0222EC04(u32 param0, u32 *param1, u32 *param2);
void ov66_0222EC20(WiFiPlazaSystem *param0, u32 param1, int param2);
int ov66_0222EC30(const WiFiPlazaSystem *param0, u32 param1);
void ov66_0222EC40(WiFiPlazaSystem *param0);
void ov66_0222EC50(WiFiPlazaSystem *param0);
void ov66_0222EC60(WiFiPlazaSystem *param0);
BOOL ov66_0222EC70(WiFiPlazaSystem *param0, u32 param1);
void ov66_0222ECD4(WiFiPlazaSystem *param0, u16 param1);
void ov66_0222ED7C(WiFiPlazaSystem *param0);
void ov66_0222EDC0(WiFiPlazaSystem *param0);
BOOL ov66_0222EDF4(const WiFiPlazaSystem *param0);
BOOL ov66_0222EE08(const WiFiPlazaSystem *param0);
u32 ov66_0222EE1C(const WiFiPlazaSystem *param0);
BOOL ov66_0222EE24(const WiFiPlazaSystem *param0);
int ov66_0222EE30(const WiFiPlazaSystem *param0);
u16 ov66_0222EE3C(const WiFiPlazaSystem *param0);
BOOL ov66_0222EE44(const WiFiPlazaSystem *param0, u32 param1);
BOOL ov66_0222EE68(const WiFiPlazaSystem *param0);
s16 ov66_0222EE90(const WiFiPlazaSystem *param0);
void ov66_0222EEA0(WiFiPlazaSystem *param0);
BOOL ov66_0222EEAC(const WiFiPlazaSystem *param0);
void ov66_0222EEB8(WiFiPlazaSystem *param0);
void ov66_0222EED4(WiFiPlazaSystem *param0, u32 param1);
void ov66_0222EEE4(WiFiPlazaSystem *param0, u32 param1);
void ov66_0222EEF4(WiFiPlazaSystem *param0, u32 param1);
void ov66_0222EF44(WiFiPlazaSystem *param0, u32 param1);
void ov66_0222EF94(WiFiPlazaSystem *param0, enum PlazaMinigame param1);
void ov66_0222F000(WiFiPlazaSystem *param0);
void ov66_0222F020(WiFiPlazaSystem *param0);
void ov66_0222F030(WiFiPlazaSystem *param0);
void ov66_0222F040(WiFiPlazaSystem *param0, int param1);
int ov66_0222F05C(const WiFiPlazaSystem *param0);
u32 ov66_0222F0DC(const WiFiPlazaSystem *param0);
int ov66_0222F104(const WiFiPlazaSystem *param0);
u32 ov66_0222F114(const WiFiPlazaSystem *param0);
void ov66_0222F124(WiFiPlazaSystem *param0, const UnkStruct_ov68_0225DC74 *param1);
BOOL ov66_0222F144(const WiFiPlazaSystem *param0, UnkStruct_ov68_0225DC74 *param1);
void ov66_0222F16C(WiFiPlazaSystem *param0);
void ov66_0222F198(WiFiPlazaSystem *param0);

#endif // POKEPLATINUM_OV66_0222DDF0_H
