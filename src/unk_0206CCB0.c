#include "unk_0206CCB0.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "constants/overworld_weather.h"
#include "constants/species.h"
#include "generated/first_arrival_to_zones.h"

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_0202440C_decl.h"
#include "struct_decls/struct_02029C68_decl.h"
#include "struct_decls/struct_0202A750_decl.h"
#include "struct_defs/special_encounter.h"
#include "struct_defs/struct_0202E7D8.h"
#include "struct_defs/struct_0202E7E4.h"
#include "struct_defs/struct_0202E7F0.h"
#include "struct_defs/struct_0202E7FC.h"
#include "struct_defs/struct_0202E808.h"
#include "struct_defs/struct_0202E810.h"
#include "struct_defs/struct_0202E81C.h"
#include "struct_defs/struct_0202E828.h"
#include "struct_defs/struct_0202E834.h"

#include "applications/poketch/poketch_system.h"
#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay006/ov6_02246444.h"
#include "overlay006/struct_ov6_022465F4_decl.h"
#include "overlay006/swarm.h"
#include "savedata/save_table.h"

#include "bag.h"
#include "berry_patches.h"
#include "charcode_util.h"
#include "field_overworld_weather.h"
#include "field_system.h"
#include "heap.h"
#include "inlines.h"
#include "map_header.h"
#include "map_header_util.h"
#include "math_util.h"
#include "message.h"
#include "party.h"
#include "pokedex.h"
#include "pokemon.h"
#include "record_mixed_rng.h"
#include "ribbon.h"
#include "roaming_pokemon.h"
#include "save_player.h"
#include "savedata.h"
#include "savedata_misc.h"
#include "special_encounter.h"
#include "strbuf.h"
#include "string_template.h"
#include "system_flags.h"
#include "trainer_info.h"
#include "unk_020298BC.h"
#include "unk_0202E2CC.h"
#include "unk_02054884.h"
#include "unk_0205DFC4.h"
#include "unk_02094EDC.h"
#include "vars_flags.h"

static void sub_0206CD70(FieldSystem *fieldSystem, int param1, int param2, const void *param3);
static void sub_0206CD7C(SaveData *saveData, int param1, int param2, const void *param3);
static u8 sub_0206DE4C(Pokemon *param0);
static Strbuf *sub_0206F0D8(u16 param0, u32 heapID);

typedef struct {
    u8 unk_00[40];
} UnkUnion_0206D1B8_sub1;

typedef struct UnkStruct_0206D140_t {
    int unk_00;
    u16 unk_04;
    u16 unk_06;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
    u16 unk_0C[11];
    u16 unk_22;
} UnkStruct_0206D140;

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u16 unk_06;
    BOOL unk_08;
} UnkStruct_0206D374;

typedef struct {
    u16 unk_00[11];
} UnkStruct_0206D43C;

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_0206D4D4;

typedef struct {
    u16 unk_00;
    u8 unk_02;
} UnkStruct_0206D530;

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u16 unk_06;
} UnkStruct_0206D5B0;

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u16 unk_06[11];
} UnkStruct_0206D644;

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_0206D6E0;

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05;
} UnkStruct_0206D75C;

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
} UnkStruct_0206D8B0;

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u16 unk_06;
} UnkUnion_0206D1B8_sub2;

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u16 unk_04;
} UnkStruct_0206D94C;

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
} UnkStruct_0206D9F4;

typedef struct {
    int unk_00;
    u8 unk_04[36];
} UnkStruct_0206DA6C;

typedef struct {
    u8 unk_00;
} UnkStruct_0206DB20;

typedef struct {
    u8 unk_00;
} UnkStruct_0206DB74;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
} UnkStruct_0206DBE8;

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u32 unk_08;
} UnkStruct_0206DC9C;

typedef struct {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
} UnkStruct_0206DD5C;

typedef struct {
    u16 unk_00[11];
    u8 unk_16;
    u8 unk_17;
    u8 unk_18;
    u8 unk_19;
    u8 unk_1A;
    u8 unk_1B;
    u16 unk_1C;
} UnkStruct_0206DE80;

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_0206DF14;

typedef struct {
    u16 unk_00;
} UnkStruct_0206DF88;

typedef struct {
    UnkStruct_0202E828 unk_00;
} UnkStruct_0206E018;

typedef struct {
    UnkStruct_0202E834 unk_00;
} UnkStruct_0206E098;

typedef struct {
    UnkStruct_0202E7FC unk_00;
    u16 unk_04;
} UnkStruct_0206E118;

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05;
    u16 unk_06[11];
    u16 unk_1C;
} UnkStruct_0206E1C0;

typedef struct {
    int unk_00;
    u16 unk_04;
} UnkStruct_0206E28C;

typedef struct {
    UnkStruct_0202E7D8 unk_00;
    u16 unk_0A;
} UnkStruct_0206E300;

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_0206E3C8;

typedef struct {
    int unk_00;
} UnkStruct_0206E428;

typedef struct {
    UnkStruct_0202E7F0 unk_00;
    u16 unk_02;
} UnkStruct_0206E480;

typedef struct {
    UnkStruct_0202E7E4 unk_00;
    u16 unk_24;
} UnkStruct_0206E520;

typedef struct {
    UnkStruct_0202E810 unk_00;
    u16 unk_1E;
} UnkStruct_0206E5E4;

typedef struct {
    u16 unk_00;
} UnkStruct_0206E680;

typedef struct {
    u16 unk_00;
} UnkStruct_0206E6C0;

typedef struct {
    u16 unk_00;
} UnkStruct_0206E700;

typedef struct {
    u16 unk_00;
} UnkStruct_0206E740;

typedef struct {
    UnkStruct_0202E81C unk_00;
    u16 unk_16;
} UnkStruct_0206E768;

typedef union {
    UnkUnion_0206D1B8_sub1 val1;
    UnkStruct_0206D140 val2;
    UnkStruct_0206D374 val3;
    UnkStruct_0206D43C val4;
    UnkStruct_0206D4D4 val5;
    UnkStruct_0206D530 val6;
    UnkStruct_0206D5B0 val7;
    UnkStruct_0206D644 val8;
    UnkStruct_0206D6E0 val9;
    UnkStruct_0206D75C val10;
    UnkStruct_0206D8B0 val11;
    UnkUnion_0206D1B8_sub2 val12;
    UnkStruct_0206D94C val13;
    UnkStruct_0206D9F4 val14;
    UnkStruct_0206DA6C val15;
    UnkStruct_0206DB20 val16;
    UnkStruct_0206DB74 val17;
    UnkStruct_0206DBE8 val18;
    UnkStruct_0206DC9C val19;
    UnkStruct_0206DD5C val20;
    UnkStruct_0206DE80 val21;
    UnkStruct_0206DF14 val22;
    UnkStruct_0206DF88 val23;
    UnkStruct_0206E018 val24;
    UnkStruct_0206E098 val25;
    UnkStruct_0206E118 val26;
    UnkStruct_0206E1C0 val27;
    UnkStruct_0206E28C val28;
    UnkStruct_0206E300 val29;
    UnkStruct_0206E3C8 val30;
    UnkStruct_0206E428 val31;
    UnkStruct_0206E480 val32;
    UnkStruct_0206E520 val33;
    UnkStruct_0206E5E4 val34;
    UnkStruct_0206E680 val35;
    UnkStruct_0206E6C0 val36;
    UnkStruct_0206E700 val37;
    UnkStruct_0206E740 val38;
    UnkStruct_0206E768 val39;
} UnkUnion_0206D1B8;

typedef int (*UnkFuncPtr_0206CD00)(FieldSystem *, StringTemplate *, UnkStruct_ov6_022465F4 *);
typedef BOOL (*UnkFuncPtr_0206CD2C)(FieldSystem *, UnkStruct_ov6_022465F4 *);

typedef struct {
    UnkFuncPtr_0206CD00 unk_00;
    UnkFuncPtr_0206CD2C unk_04;
} UnkStruct_020EFFA4;

typedef struct {
    int unk_00;
    u16 unk_04;
    u16 unk_06;
    const UnkStruct_020EFFA4 *unk_08;
} UnkStruct_020EFD60;

static const UnkStruct_020EFFA4 Unk_020EFFA4[26];
static const UnkStruct_020EFFA4 Unk_020EFE2C[11];
static const UnkStruct_020EFFA4 Unk_020EFF0C[19];
static const UnkStruct_020EFFA4 Unk_020EFE84[17];
static const UnkStruct_020EFFA4 Unk_020EFD9C[8];

static const UnkStruct_020EFD60 Unk_020EFD60[] = {
    { 0x1, 0x19F, 0x14, Unk_020EFF0C },
    { 0x2, 0x1A0, 0x1B, Unk_020EFFA4 },
    { 0x3, 0x1A1, 0xC, Unk_020EFE2C },
    { 0x4, 0x1A2, 0x12, Unk_020EFE84 },
    { 0x5, 0x1A3, 0x9, Unk_020EFD9C }
};

static const UnkStruct_020EFD60 *sub_0206CCB0(int param0)
{
    const UnkStruct_020EFD60 *v0;

    GF_ASSERT(0 < param0 && param0 < 6);
    v0 = &Unk_020EFD60[param0 - 1];
    GF_ASSERT(v0->unk_00 == param0);

    return v0;
}

static const UnkStruct_020EFFA4 *sub_0206CCDC(const UnkStruct_020EFD60 *param0, const UnkStruct_ov6_022465F4 *param1)
{
    int v0 = ov6_022464A4(param1);
    GF_ASSERT(0 < v0 && v0 < param0->unk_06);

    return &(param0->unk_08[v0 - 1]);
}

int sub_0206CD00(int param0, FieldSystem *fieldSystem, StringTemplate *param2, UnkStruct_ov6_022465F4 *param3, u16 *param4)
{
    UnkFuncPtr_0206CD00 v0;
    const UnkStruct_020EFD60 *v1;
    const UnkStruct_020EFFA4 *v2;

    v1 = sub_0206CCB0(param0);
    *param4 = v1->unk_04;
    v2 = sub_0206CCDC(v1, param3);
    v0 = v2->unk_00;

    GF_ASSERT(v0 != NULL);
    return v0(fieldSystem, param2, param3);
}

BOOL sub_0206CD2C(int param0, FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param2)
{
    UnkFuncPtr_0206CD2C v0;
    const UnkStruct_020EFD60 *v1;
    const UnkStruct_020EFFA4 *v2;

    v1 = sub_0206CCB0(param0);
    v2 = sub_0206CCDC(v1, param2);

    if (v2->unk_00 == NULL) {
        return 0;
    }

    v0 = v2->unk_04;

    if (v0 == NULL) {
        return 1;
    }

    return v0(fieldSystem, param2);
}

static void sub_0206CD58(SaveData *saveData, int param1, int param2, const void *param3)
{
    TVBroadcast *broadcast = SaveData_GetTVBroadcast(saveData);

    GF_ASSERT(sizeof(UnkUnion_0206D1B8) == 40);
    sub_0202E43C(broadcast, param1, param2, (const u8 *)param3);
}

static void sub_0206CD70(FieldSystem *fieldSystem, int param1, int param2, const void *param3)
{
    sub_0206CD7C(fieldSystem->saveData, param1, param2, param3);
}

static void sub_0206CD7C(SaveData *saveData, int param1, int param2, const void *param3)
{
    TVBroadcast *broadcast = SaveData_GetTVBroadcast(saveData);

    GF_ASSERT(sizeof(UnkUnion_0206D1B8) == 40);
    sub_0202E43C(broadcast, param1, param2, (const u8 *)param3);
}

static void sub_0206CD94(StringTemplate *param0, int param1, const u16 *param2, int param3, int param4, int param5)
{
    Strbuf *v0 = Strbuf_Init(64, HEAP_ID_FIELD);

    Strbuf_CopyChars(v0, param2);
    StringTemplate_SetStrbuf(param0, param1, v0, param3, param5, param4);
    Strbuf_Free(v0);
}

static void sub_0206CDD0(StringTemplate *param0, int param1, const UnkStruct_ov6_022465F4 *param2)
{
    sub_0206CD94(param0, param1, ov6_02246494(param2), ov6_0224648C(param2), ov6_02246490(param2), 1);
}

static void sub_0206CE08(int heapID, u16 *param1, Pokemon *mon)
{
    Strbuf *strBuf = Strbuf_Init(64, heapID);

    Pokemon_GetValue(mon, MON_DATA_NICKNAME_STRING, strBuf);
    Strbuf_ToChars(strBuf, param1, 10 + 1);
    Strbuf_Free(strBuf);
}

static void sub_0206CE38(Pokemon *param0, u16 *param1, u8 *param2, u8 *param3, u8 *param4)
{
    *param1 = Pokemon_GetValue(param0, MON_DATA_SPECIES, NULL);
    *param2 = Pokemon_GetValue(param0, MON_DATA_GENDER, NULL);
    *param3 = Pokemon_GetValue(param0, MON_DATA_LANGUAGE, NULL);
    *param4 = Pokemon_GetValue(param0, MON_DATA_MET_GAME, NULL);
}

static void sub_0206CE74(StringTemplate *param0, int param1, u16 param2, u8 param3, u8 param4, u8 param5)
{
    u16 v0[11];

    MessageLoader_GetSpeciesName(param2, 4, v0);
    sub_0206CD94(param0, param1, v0, param3, param4, 1);
}

static void sub_0206CEA4(StringTemplate *param0, int param1, u16 param2)
{
    u16 v0[11];

    MessageLoader_GetSpeciesName(param2, 4, v0);
    sub_0206CD94(param0, param1, v0, 0, GAME_LANGUAGE, 1);
}

static void sub_0206CED0(int heapID, Pokemon *mon, u8 *param2, u16 *param3)
{
    *param2 = Pokemon_GetValue(mon, MON_DATA_HAS_NICKNAME, NULL);

    if (*param2) {
        Strbuf *strBuf = Strbuf_Init(64, heapID);

        Pokemon_GetValue(mon, MON_DATA_NICKNAME_STRING, strBuf);
        Strbuf_ToChars(strBuf, param3, 10 + 1);
        Strbuf_Free(strBuf);
    }
}

void sub_0206CF14(TVBroadcast *broadcast, Pokemon *param1, int param2, int param3, int param4)
{
    UnkStruct_0202E7D8 *v0 = sub_0202E7D8(broadcast);

    v0->unk_00 = 1;
    sub_0206CE38(param1, &v0->unk_02, &v0->unk_04, &v0->unk_05, &v0->unk_06);
    v0->unk_08 = param2;
    v0->unk_07 = param3;
    v0->unk_09 = param4;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void sub_0206CF48(TVBroadcast *broadcast, Pokemon *param1, int heapID)
{
    UnkStruct_0202E7E4 *v0 = sub_0202E7E4(broadcast);

    v0->unk_00 = 1;
    v0->unk_1F = 0;
    v0->unk_1E = Pokemon_GetNature(param1);

    sub_0206CE38(param1, &v0->unk_02, &v0->unk_04, &v0->unk_05, &v0->unk_06);
    v0->unk_07 = Pokemon_GetValue(param1, MON_DATA_HAS_NICKNAME, NULL);

    sub_0206CED0(heapID, param1, &v0->unk_07, v0->unk_08);
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void sub_0206CF9C(TVBroadcast *broadcast, int param1)
{
    UnkStruct_0202E7E4 *v0 = sub_0202E7E4(broadcast);

    v0->unk_1F = 2;
    v0->unk_20 = param1;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void sub_0206CFB4(TVBroadcast *broadcast, int param1)
{
    UnkStruct_0202E7E4 *v0 = sub_0202E7E4(broadcast);

    v0->unk_1F = 1;
    v0->unk_22 = param1;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void sub_0206CFCC(TVBroadcast *broadcast, int param1)
{
    UnkStruct_0202E7F0 *v0 = sub_0202E7F0(broadcast);

    v0->unk_00 = 1;
    v0->unk_01 = param1;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void sub_0206CFE4(TVBroadcast *broadcast, BOOL param1, u16 param2)
{
    UnkStruct_0202E7FC *v0 = sub_0202E7FC(broadcast);

    v0->unk_00 = 1;
    v0->unk_01 = param1;
    v0->unk_02 = param2;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void sub_0206D000(TVBroadcast *broadcast)
{
    UnkStruct_0202E808 *v0 = sub_0202E808(broadcast);

    v0->unk_00 = 1;
    v0->unk_07 = 0;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void sub_0206D018(TVBroadcast *broadcast, Pokemon *param1)
{
    UnkStruct_0202E808 *v0 = sub_0202E808(broadcast);

    if (v0->unk_07 == 0) {
        sub_0206CE38(param1, &v0->unk_02, &v0->unk_04, &v0->unk_05, &v0->unk_06);
    }

    v0->unk_07++;
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void sub_0206D048(TVBroadcast *broadcast, Pokemon *mon)
{
    UnkStruct_0202E810 *v0 = sub_0202E810(broadcast);

    v0->unk_00 = 1;
    sub_0206CE38(mon, &v0->unk_02, &v0->unk_04, &v0->unk_05, &v0->unk_06);
    v0->unk_07 = Pokemon_GetValue(mon, MON_DATA_HAS_NICKNAME, NULL);

    sub_0206CED0(HEAP_ID_FIELDMAP, mon, &v0->unk_07, v0->unk_08);
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void sub_0206D088(TVBroadcast *broadcast, u8 param1, const TrainerInfo *param2)
{
    UnkStruct_0202E81C *v0 = sub_0202E81C(broadcast);

    v0->unk_00 = 1;
    v0->unk_01 = param1;

    CharCode_Copy(v0->unk_06, TrainerInfo_Name(param2));

    v0->unk_03 = TrainerInfo_RegionCode(param2);
    v0->unk_04 = TrainerInfo_GameCode(param2);
    v0->unk_02 = TrainerInfo_Gender(param2);

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void sub_0206D0C8(TVBroadcast *broadcast, u16 param1)
{
    UnkStruct_0202E828 *v0 = sub_0202E828(broadcast);

    v0->unk_00 = 1;
    v0->unk_04 += param1;

    if (v0->unk_04 > 9999) {
        v0->unk_04 = 9999;
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void sub_0206D0F0(TVBroadcast *broadcast)
{
    UnkStruct_0202E828 *v0 = sub_0202E828(broadcast);

    v0->unk_04 = 0;
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void sub_0206D104(TVBroadcast *broadcast)
{
    UnkStruct_0202E834 *v0 = sub_0202E834(broadcast);

    v0->unk_00 = 1;
    v0->unk_02++;

    if (v0->unk_02 > 9999) {
        v0->unk_02 = 9999;
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

void sub_0206D12C(TVBroadcast *broadcast)
{
    UnkStruct_0202E834 *v0 = sub_0202E834(broadcast);

    v0->unk_02 = 0;
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
}

UnkStruct_0206D140 *sub_0206D140(int heapID)
{
    UnkStruct_0206D140 *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_0206D140));
    MI_CpuClearFast(v0, sizeof(UnkStruct_0206D140));

    return v0;
}

void sub_0206D158(UnkStruct_0206D140 *param0)
{
    Heap_Free(param0);
}

void sub_0206D160(UnkStruct_0206D140 *param0, Pokemon *param1, int param2, int param3, u32 heapID)
{
    MI_CpuClear32(param0, sizeof(UnkStruct_0206D140));

    param0->unk_00 = param2;
    param0->unk_04 = param3;

    sub_0206CE38(param1, &param0->unk_06, &param0->unk_08, &param0->unk_09, &param0->unk_0A);

    param0->unk_22 = Pokemon_GetValue(param1, MON_DATA_POKEBALL, NULL);
    GF_ASSERT(param0->unk_22);

    sub_0206CED0(heapID, param1, &param0->unk_0B, param0->unk_0C);
}

void sub_0206D1B8(FieldSystem *fieldSystem, const UnkStruct_0206D140 *param1, int param2)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206D140 *v1 = &v0.val2;

    *v1 = *param1;
    v1->unk_00 = param2;

    if (v1->unk_04 == 0) {
        return;
    }

    if (v1->unk_04 > 999) {
        v1->unk_04 = 999;
    }

    switch (param2) {
    case 0x4:
        sub_0206CD70(fieldSystem, 2, 1, v1);
        break;
    case 0x1:
    case 0x5:
    case 0x6:
        if (v1->unk_04 > 2) {
            sub_0206CD70(fieldSystem, 2, 2, v1);
        }
        break;
    }
}

static int sub_0206D230(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D140 *v0 = ov6_02246498(param2);

    if (v0->unk_0B) {
        sub_0206CDD0(param1, 0, param2);
        sub_0206CE74(param1, 1, v0->unk_06, v0->unk_08, v0->unk_09, v0->unk_0A);
        StringTemplate_SetItemName(param1, 2, v0->unk_22);
        StringTemplate_SetNumber(param1, 3, v0->unk_04, 3, 0, 1);
        sub_0206CD94(param1, 4, v0->unk_0C, v0->unk_08, v0->unk_09, 1);
        return 0;
    } else {
        sub_0206CDD0(param1, 0, param2);
        sub_0206CE74(param1, 1, v0->unk_06, v0->unk_08, v0->unk_09, v0->unk_0A);
        StringTemplate_SetItemName(param1, 2, v0->unk_22);
        StringTemplate_SetNumber(param1, 3, v0->unk_04, 3, 0, 1);
        return 1;
    }
}

static int sub_0206D2E0(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D140 *v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    StringTemplate_SetNumber(param1, 1, v0->unk_04, 3, 0, 1);

    if (v0->unk_00 == 0x1) {
        return 2;
    } else {
        return 3;
    }
}

static BOOL sub_0206D320(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    Pokedex *pokedex = SaveData_GetPokedex(fieldSystem->saveData);
    UnkStruct_0206D140 *v1 = ov6_02246498(param1);

    return Pokedex_HasSeenSpecies(pokedex, v1->unk_06);
}

void sub_0206D340(FieldSystem *fieldSystem, BOOL param1, u16 param2, Pokemon *param3)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206D374 *v1 = &v0.val3;

    if (param1) {
        sub_0206CE38(param3, &v1->unk_00, &v1->unk_02, &v1->unk_03, &v1->unk_04);
    }

    v1->unk_06 = param2;
    v1->unk_08 = param1;

    sub_0206CD70(fieldSystem, 2, 3, v1);
}

static int sub_0206D374(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D374 *v0 = (UnkStruct_0206D374 *)ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);

    if (v0->unk_08) {
        StringTemplate_SetItemName(param1, 1, v0->unk_06);
        sub_0206CE74(param1, 2, v0->unk_00, v0->unk_02, v0->unk_03, v0->unk_04);
        return 4;
    } else {
        return 5;
    }
}

static BOOL sub_0206D3C0(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    UnkStruct_0206D374 *v0 = (UnkStruct_0206D374 *)ov6_02246498(param1);

    if (v0->unk_08 == 0) {
        return 1;
    }

    return Pokedex_HasSeenSpecies(SaveData_GetPokedex(fieldSystem->saveData), v0->unk_00);
}

static void sub_0206D3E4(FieldSystem *fieldSystem, int param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206D43C *v1 = &v0.val4;
    RecordMixedRNG *v2 = SaveData_GetRecordMixedRNG(fieldSystem->saveData);

    GF_ASSERT(sizeof(UnkUnion_0206D1B8) == 40);
    MI_CpuClearFast(&v0, 40);

    CharCode_CopyNumChars(v1->unk_00, RecordMixedRNG_GetEntryName(v2, 1, 0), 10 + 1);
    sub_0206CD70(fieldSystem, 2, param1, v1);
}

void sub_0206D424(FieldSystem *fieldSystem)
{
    sub_0206D3E4(fieldSystem, 20);
}

void sub_0206D430(FieldSystem *fieldSystem)
{
    sub_0206D3E4(fieldSystem, 4);
}

static int sub_0206D43C(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D43C *v0 = (UnkStruct_0206D43C *)ov6_02246498(param2);

    sub_0206CD94(param1, 1, v0->unk_00, 0, ov6_02246490(param2), 1);
    sub_0206CDD0(param1, 0, param2);

    return 6;
}

static int sub_0206D474(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D43C *v0 = (UnkStruct_0206D43C *)ov6_02246498(param2);

    sub_0206CD94(param1, 1, v0->unk_00, 0, ov6_02246490(param2), 1);
    sub_0206CDD0(param1, 0, param2);

    return 32;
}

void sub_0206D4AC(FieldSystem *fieldSystem, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206D4D4 *v1 = &v0.val5;

    v1->unk_00 = param1;
    v1->unk_02 = MapHeader_GetMapLabelTextID(fieldSystem->location->mapId);

    sub_0206CD70(fieldSystem, 2, 6, v1);
}

static int sub_0206D4D4(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D4D4 *v0 = (UnkStruct_0206D4D4 *)ov6_02246498(param2);

    StringTemplate_SetLocationName(param1, 0, v0->unk_02);
    sub_0206CDD0(param1, 1, param2);
    StringTemplate_SetItemName(param1, 2, v0->unk_00);

    return 10;
}

void sub_0206D504(SaveData *saveData, u16 param1, u8 param2)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206D530 *v1 = &v0.val6;

    if (param2 >= 10) {
        v1->unk_00 = param1;
        v1->unk_02 = param2;

        if (v1->unk_02 > 999) {
            v1->unk_02 = 999;
        }

        sub_0206CD7C(saveData, 2, 7, v1);
    }
}

static int sub_0206D530(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D530 *v0 = (UnkStruct_0206D530 *)ov6_02246498(param2);

    StringTemplate_SetItemName(param1, 0, v0->unk_00);
    StringTemplate_SetNumber(param1, 1, v0->unk_02, 3, 0, 1);
    sub_0206CDD0(param1, 2, param2);
    StringTemplate_SetItemNamePlural(param1, 3, v0->unk_00);

    return 11;
}

void sub_0206D578(FieldSystem *fieldSystem, Pokemon *param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206D5B0 *v1 = &v0.val7;

    sub_0206CE38(param1, &v1->unk_00, &v1->unk_02, &v1->unk_03, &v1->unk_04);
    v1->unk_06 = MapHeader_GetMapLabelTextID(fieldSystem->location->mapId);
    sub_0206CD70(fieldSystem, 2, 8, v1);
}

static int sub_0206D5B0(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D5B0 *v0 = (UnkStruct_0206D5B0 *)ov6_02246498(param2);

    StringTemplate_SetLocationName(param1, 1, v0->unk_06);
    sub_0206CDD0(param1, 0, param2);
    sub_0206CE74(param1, 2, v0->unk_00, v0->unk_02, v0->unk_03, v0->unk_04);

    return 12;
}

static BOOL sub_0206D5F0(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    UnkStruct_0206D5B0 *v0 = (UnkStruct_0206D5B0 *)ov6_02246498(param1);
    return Pokedex_HasSeenSpecies(SaveData_GetPokedex(fieldSystem->saveData), v0->unk_00);
}

void sub_0206D60C(FieldSystem *fieldSystem, Pokemon *mon)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206D644 *v1 = &v0.val8;

    sub_0206CE38(mon, &v1->unk_00, &v1->unk_02, &v1->unk_03, &v1->unk_04);
    sub_0206CE08(HEAP_ID_FIELD, v1->unk_06, mon);
    sub_0206CD70(fieldSystem, 2, 10, v1);
}

static int sub_0206D644(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D644 *v0 = (UnkStruct_0206D644 *)ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0206CE74(param1, 1, v0->unk_00, v0->unk_02, v0->unk_03, v0->unk_04);
    sub_0206CD94(param1, 2, v0->unk_06, v0->unk_02, v0->unk_03, 1);

    return 17 + LCRNG_RandMod(5);
}

static BOOL sub_0206D6A8(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    Pokedex *pokedex = SaveData_GetPokedex(fieldSystem->saveData);
    UnkStruct_0206D644 *v1 = (UnkStruct_0206D644 *)ov6_02246498(param1);

    return Pokedex_HasSeenSpecies(pokedex, v1->unk_00);
}

void sub_0206D6C8(FieldSystem *fieldSystem, int param1, int param2)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206D6E0 *v1 = &v0.val9;

    v1->unk_00 = param1;
    v1->unk_02 = param2;

    sub_0206CD70(fieldSystem, 2, 13, v1);
}

static int sub_0206D6E0(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D6E0 *v0 = (UnkStruct_0206D6E0 *)ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    StringTemplate_SetUndergroundItemName(param1, 1, v0->unk_00);
    StringTemplate_SetNumber(param1, 2, v0->unk_02, 3, 0, 1);

    return 24;
}

void sub_0206D720(FieldSystem *fieldSystem)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206D75C *v1 = &v0.val10;
    TVBroadcast *broadcast = SaveData_GetTVBroadcast(fieldSystem->saveData);
    UnkStruct_0202E808 *v3 = sub_0202E808(broadcast);

    if (v3->unk_07 == 0) {
        return;
    }

    v1->unk_00 = v3->unk_02;
    v1->unk_02 = v3->unk_04;
    v1->unk_03 = v3->unk_05;
    v1->unk_04 = v3->unk_06;
    v1->unk_05 = v3->unk_07;

    sub_0206CD70(fieldSystem, 2, 15, v1);
}

static int sub_0206D75C(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D75C *v0 = (UnkStruct_0206D75C *)ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0206CE74(param1, 1, v0->unk_00, v0->unk_02, v0->unk_03, v0->unk_04);
    StringTemplate_SetNumber(param1, 2, v0->unk_05, 2, 0, 1);

    return 26;
}

static BOOL sub_0206D7A4(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    Pokedex *pokedex = SaveData_GetPokedex(fieldSystem->saveData);
    UnkStruct_0206D75C *v1 = (UnkStruct_0206D75C *)ov6_02246498(param1);

    return Pokedex_HasSeenSpecies(pokedex, v1->unk_00);
}

void sub_0206D7C4(FieldSystem *fieldSystem)
{
    u32 v0, v1, v2, v3;
    u8 v4, v5;
    Pokemon *pokemon;
    UnkUnion_0206D1B8 v7;
    Party *v8;
    UnkStruct_0206D8B0 *v9 = &v7.val11;

    v0 = 0;
    v1 = 0;
    v2 = 0;
    v8 = SaveData_GetParty(fieldSystem->saveData);
    v4 = Party_GetCurrentCount(v8);

    for (v5 = 0; v5 < v4; v5++) {
        pokemon = Party_GetPokemonBySlotIndex(v8, v5);

        if (Pokemon_GetValue(pokemon, MON_DATA_IS_EGG, NULL) == 0) {
            v3 = Pokemon_GetValue(pokemon, MON_DATA_GENDER, NULL);

            if (v3 == 0) {
                v0 = 1;
            } else if (v3 == 1) {
                v1 = 1;
            } else if (v3 == 2) {
                v2 = 1;
            }
        }
    }

    if (v2 == 0) {
        if ((v0 == 1) && (v1 == 0)) {
            pokemon = Party_FindFirstHatchedMon(SaveData_GetParty(fieldSystem->saveData));
            sub_0206CE38(pokemon, &v9->unk_00, &v9->unk_02, &v9->unk_03, &v9->unk_04);
            sub_0206CD70(fieldSystem, 2, 16, v9);
        } else if ((v0 == 0) && (v1 == 1)) {
            pokemon = Party_FindFirstHatchedMon(SaveData_GetParty(fieldSystem->saveData));
            sub_0206CE38(pokemon, &v9->unk_00, &v9->unk_02, &v9->unk_03, &v9->unk_04);
            sub_0206CD70(fieldSystem, 2, 16, v9);
        }
    }

    return;
}

static int sub_0206D8B0(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D8B0 *v0 = (UnkStruct_0206D8B0 *)ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0206CE74(param1, 1, v0->unk_00, v0->unk_02, v0->unk_03, v0->unk_04);

    if (v0->unk_02 == 0) {
        return 27;
    }

    return 28;
}

static BOOL sub_0206D8F0(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    UnkStruct_0206D8B0 *v0 = (UnkStruct_0206D8B0 *)ov6_02246498(param1);

    return Pokedex_HasSeenSpecies(SaveData_GetPokedex(fieldSystem->saveData), v0->unk_00);
}

void sub_0206D90C(TVBroadcast *broadcast, Pokemon *param1, u16 param2)
{
    return;
}

static BOOL sub_0206D910(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return 0;
}

void sub_0206D914(FieldSystem *fieldSystem, u16 param1, u8 param2, u16 param3)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206D94C *v1 = &v0.val13;

    v1->unk_00 = param1;
    v1->unk_02 = param2;
    v1->unk_04 = param3;

    if (param2 == 5) {
        (void)0;
    } else if (param2 == 4) {
        sub_0206CD70(fieldSystem, 2, 18, v1);
    } else if (param2 == 0) {
        sub_0206CD70(fieldSystem, 2, 19, v1);
    }
}

static int sub_0206D94C(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D94C *v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    StringTemplate_SetItemName(param1, 1, v0->unk_00);
    StringTemplate_SetNumber(param1, 2, v0->unk_04, 2, 0, 1);

    return 30;
}

static int sub_0206D98C(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D94C *v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    StringTemplate_SetItemName(param1, 1, v0->unk_00);

    return 31;
}

void sub_0206D9B4(TVBroadcast *broadcast, Pokemon *param1, u8 param2)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206D9F4 *v1 = &v0.val14;

    v1->unk_06 = param2;
    v1->unk_05 = MTRNG_Next() % 3;

    sub_0206CE38(param1, &v1->unk_00, &v1->unk_02, &v1->unk_03, &v1->unk_04);
    sub_0202E43C(broadcast, 2, 21, (const u8 *)v1);
}

static int sub_0206D9F4(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206D9F4 *v0 = (UnkStruct_0206D9F4 *)ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    StringTemplate_SetBallSealName(param1, 1, v0->unk_06);
    sub_0206CE74(param1, 2, v0->unk_00, v0->unk_02, v0->unk_03, v0->unk_04);

    return 33 + LCRNG_RandMod(3);
}

static BOOL sub_0206DA50(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    UnkStruct_0206D9F4 *v0 = (UnkStruct_0206D9F4 *)ov6_02246498(param1);

    return Pokedex_HasSeenSpecies(SaveData_GetPokedex(fieldSystem->saveData), v0->unk_00);
}

static void sub_0206DA6C(UnkStruct_0206DA6C *param0, const TrainerInfo *param1)
{
    param0->unk_00 = TrainerInfo_Size();
    TrainerInfo_Copy(param1, (TrainerInfo *)param0->unk_04);
}

static void sub_0206DA84(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206DA6C *v0 = (UnkStruct_0206DA6C *)ov6_02246498(param2);
    TrainerInfo *v1 = (TrainerInfo *)&v0->unk_04;

    GF_ASSERT(TrainerInfo_Size() == v0->unk_00);

    sub_0206CDD0(param1, 0, param2);
    StringTemplate_SetPlayerName(param1, 1, v1);
}

void sub_0206DAB8(FieldSystem *fieldSystem, const TrainerInfo *param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206DA6C *v1 = &v0.val15;

    sub_0206DA6C(v1, param1);
    sub_0206CD70(fieldSystem, 2, 22, v1);
}

void sub_0206DAD4(FieldSystem *fieldSystem, const TrainerInfo *param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206DA6C *v1 = &v0.val15;

    sub_0206DA6C(v1, param1);
    sub_0206CD70(fieldSystem, 2, 23, v1);
}

static int sub_0206DAF0(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    sub_0206DA84(fieldSystem, param1, param2);
    return 36;
}

static int sub_0206DAFC(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    sub_0206DA84(fieldSystem, param1, param2);
    return 37;
}

static BOOL sub_0206DB08(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return Bag_CanRemoveItem(SaveData_GetBag(fieldSystem->saveData), ITEM_EXPLORER_KIT, 1, HEAP_ID_FIELD_TASK);
}

void sub_0206DB20(FieldSystem *fieldSystem)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206DB20 *v1 = &v0.val16;

    v1->unk_00 = 1;

    sub_0206CD70(fieldSystem, 2, 25, v1);
}

static int sub_0206DB38(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    sub_0206CDD0(param1, 0, param2);
    return 38;
}

static BOOL sub_0206DB48(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_RESORT_AREA);
}

void sub_0206DB5C(FieldSystem *fieldSystem, u8 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206DB74 *v1 = &v0.val17;

    v1->unk_00 = param1;

    sub_0206CD70(fieldSystem, 2, 26, v1);
}

static int sub_0206DB74(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206DB74 *v0 = (UnkStruct_0206DB74 *)ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    StringTemplate_SetFurniture(param1, 1, v0->unk_00);

    return 39;
}

static BOOL sub_0206DB9C(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_RESORT_AREA);
}

void sub_0206DBB0(SaveData *saveData, u32 param1, Pokemon *param2, BOOL param3)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206DBE8 *v1 = &v0.val18;

    sub_0206CE38(param2, &v1->unk_02, &v1->unk_04, &v1->unk_05, &v1->unk_06);

    v1->unk_00 = param1;
    v1->unk_07 = param3;

    sub_0206CD58(saveData, 3, 1, v1);
}

static int sub_0206DBE8(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206DBE8 *v0 = (UnkStruct_0206DBE8 *)ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0206CE74(param1, 1, v0->unk_02, v0->unk_04, v0->unk_05, v0->unk_06);
    StringTemplate_SetNumber(param1, 2, v0->unk_00, 4, 0, 1);

    if (v0->unk_07) {
        return 0;
    } else {
        return 1;
    }
}

static BOOL sub_0206DC3C(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    UnkStruct_0206DBE8 *v0 = (UnkStruct_0206DBE8 *)ov6_02246498(param1);

    if (Pokedex_HasSeenSpecies(SaveData_GetPokedex(fieldSystem->saveData), v0->unk_02) == 0) {
        return 0;
    }

    return SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_FIGHT_AREA);
}

void sub_0206DC6C(FieldSystem *fieldSystem, u32 param1, Pokemon *param2)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206DC9C *v1 = &v0.val19;

    sub_0206CE38(param2, &v1->unk_00, &v1->unk_02, &v1->unk_03, &v1->unk_04);
    v1->unk_08 = param1;
    sub_0206CD70(fieldSystem, 3, 3, v1);
}

static int sub_0206DC9C(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206DC9C *v0 = (UnkStruct_0206DC9C *)ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0206CE74(param1, 1, v0->unk_00, v0->unk_02, v0->unk_03, v0->unk_04);

    {
        u32 v1 = (((v0->unk_08 * 1000) / 254 + 5) / 10);

        StringTemplate_SetNumber(param1, 2, v1 / 10, 3, 0, 1);
        StringTemplate_SetNumber(param1, 3, v1 % 10, 1, 0, 1);
    }

    return 2;
}

static BOOL sub_0206DD1C(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    UnkStruct_0206DC9C *v0 = (UnkStruct_0206DC9C *)ov6_02246498(param1);
    return Pokedex_HasSeenSpecies(SaveData_GetPokedex(fieldSystem->saveData), v0->unk_00);
}

void sub_0206DD38(FieldSystem *fieldSystem, u32 param1, u32 param2, u32 param3)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206DD5C *v1 = &v0.val20;

    if (param2 < 1000 + param1) {
        return;
    }

    v1->unk_00 = param1;
    v1->unk_04 = param2;
    v1->unk_08 = param3;

    sub_0206CD70(fieldSystem, 3, 4, v1);
}

static int sub_0206DD5C(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206DD5C *v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    StringTemplate_SetNumber(param1, 1, v0->unk_08, 10, 0, 1);
    StringTemplate_SetNumber(param1, 2, v0->unk_00, 6, 0, 1);
    StringTemplate_SetNumber(param1, 3, v0->unk_04, 6, 0, 1);

    return 3;
}

void sub_0206DDB8(SaveData *saveData, Pokemon *mon, u32 monDataParam)
{
    u8 v0, v1;
    UnkUnion_0206D1B8 v2;
    UnkStruct_0206DE80 *v3 = &v2.val21;

    v1 = sub_0206DE4C(mon);

    switch (v1) {
    case 15:
    case 20:
    case 25:
    case 30:
    case 35:
    case 40:
        if (Ribbon_MonDataParamToNameID(monDataParam) > 0xff) {
            GF_ASSERT(0);
            return;
        }

        sub_0206CE38(mon, &v3->unk_1C, &v3->unk_19, &v3->unk_1A, &v3->unk_1B);
        sub_0206CED0(HEAP_ID_FIELD_TASK, mon, &v3->unk_18, v3->unk_00);

        v3->unk_16 = Ribbon_MonDataParamToNameID(monDataParam);
        v3->unk_17 = v1;

        sub_0206CD7C(saveData, 3, 5, v3);
        break;
    }
}

static const u16 Unk_020EFDDC[] = {
    0x66,
    0x19,
    0x7B,
    0x7C,
    0x7D,
    0x7E,
    0x7F,
    0x80,
    0x81,
    0x82,
    0x83,
    0x84,
    0x85,
    0x86,
    0x87,
    0x88,
    0x89,
    0x8A,
    0x8B,
    0x8C,
    0x8D,
    0x8E,
    0x1A,
    0x1B,
    0x1C,
    0x1D,
    0x1E,
    0x1F,
    0x20,
    0x21,
    0x22,
    0x23,
    0x24,
    0x25,
    0x26,
    0x27,
    0x28,
    0x29,
    0x2A
};

static u8 sub_0206DE4C(Pokemon *param0)
{
    u8 v0 = 0, v1;

    for (v1 = 0; v1 < (NELEMS(Unk_020EFDDC)); v1++) {
        if (Pokemon_GetValue(param0, Unk_020EFDDC[v1], NULL) == 1) {
            v0++;
        }
    }

    return v0;
}

static int sub_0206DE80(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206DE80 *v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);

    if (v0->unk_18) {
        sub_0206CD94(param1, 1, v0->unk_00, v0->unk_19, v0->unk_1A, 1);
    } else {
        sub_0206CE74(param1, 1, v0->unk_1C, v0->unk_19, v0->unk_1A, v0->unk_1B);
    }

    StringTemplate_SetRibbonName(param1, 2, v0->unk_16);
    StringTemplate_SetNumber(param1, 3, v0->unk_17, 3, 0, 1);

    return 4;
}

void sub_0206DEEC(FieldSystem *fieldSystem, u16 param1, u16 param2)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206DF14 *v1 = &v0.val22;

    v1->unk_00 = param1;
    v1->unk_02 = param2;

    if (v1->unk_02 > 999) {
        v1->unk_02 = 999;
    }

    sub_0206CD70(fieldSystem, 3, 8, v1);
}

static int sub_0206DF14(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    u16 v0;
    UnkStruct_0206DF14 *v1 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    StringTemplate_SetUndergroundTrapName(param1, 1, v1->unk_00);

    v0 = v1->unk_02;

    if (v0 > 999) {
        v0 = 999;
    }

    StringTemplate_SetNumber(param1, 2, v0, 3, 0, 1);
    return 7;
}

void sub_0206DF60(FieldSystem *fieldSystem, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206DF88 *v1 = &v0.val23;

    v1->unk_00 = param1;

    if (v1->unk_00 > 999) {
        v1->unk_00 = 999;
    }

    if (param1 > 1) {
        sub_0206CD70(fieldSystem, 3, 9, v1);
    }
}

static int sub_0206DF88(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    u16 v0;
    UnkStruct_0206DF88 *v1 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);

    v0 = v1->unk_00;

    if (v0 > 999) {
        v0 = 999;
    }

    StringTemplate_SetNumber(param1, 1, v0, 3, 0, 1);

    return 8;
}

static BOOL sub_0206DFC8(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return Bag_CanRemoveItem(SaveData_GetBag(fieldSystem->saveData), ITEM_EXPLORER_KIT, 1, HEAP_ID_FIELD_TASK);
}

void sub_0206DFE0(SaveData *saveData)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E018 *v1 = &v0.val24;
    UnkStruct_0202E828 *v2 = sub_0202E828(SaveData_GetTVBroadcast(saveData));

    if (v2->unk_04 >= 30) {
        v1->unk_00 = *v2;
        v2->unk_00 = 0;

        SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
        sub_0206CD7C(saveData, 3, 10, v1);
    }
}

static int sub_0206E018(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206E018 *v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    StringTemplate_SetNumber(param1, 1, v0->unk_00.unk_04, 4, 0, 1);

    return 9;
}

static BOOL sub_0206E04C(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_FIGHT_AREA);
}

void sub_0206E060(SaveData *saveData)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E098 *v1 = &v0.val25;
    UnkStruct_0202E834 *v2 = sub_0202E834(SaveData_GetTVBroadcast(saveData));

    if (v2->unk_02 >= 10) {
        v1->unk_00 = *v2;
        v2->unk_00 = 0;

        SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
        sub_0206CD7C(saveData, 3, 11, v1);
    }
}

static int sub_0206E098(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206E098 *v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    StringTemplate_SetNumber(param1, 1, v0->unk_00.unk_02, 4, 0, 1);

    return 10;
}

static BOOL sub_0206E0CC(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_OREBURGH_CITY);
}

void sub_0206E0E0(FieldSystem *fieldSystem, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E118 *v1 = &v0.val26;
    UnkStruct_0202E7FC *v2 = sub_0202E7FC(SaveData_GetTVBroadcast(fieldSystem->saveData));

    v1->unk_00 = *v2;
    v2->unk_00 = 0;
    v1->unk_04 = param1;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
    sub_0206CD70(fieldSystem, 1, 2, v1);
}

static int sub_0206E118(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206E118 *v0 = ov6_02246498(param2);

    StringTemplate_SetNumber(param1, 0, v0->unk_00.unk_02, 4, 0, 1);
    sub_0206CDD0(param1, 1, param2);
    StringTemplate_SetCustomMessageWord(param1, 2, v0->unk_04);

    if (v0->unk_00.unk_01 == 1) {
        return 8;
    } else {
        return 9;
    }
}

static BOOL sub_0206E160(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_FIGHT_AREA);
}

void sub_0206E174(FieldSystem *fieldSystem, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E1C0 *v1 = &v0.val27;
    Pokemon *v2 = Party_FindFirstHatchedMon(SaveData_GetParty(fieldSystem->saveData));

    sub_0206CE38(v2, &v1->unk_00, &v1->unk_02, &v1->unk_03, &v1->unk_04);
    sub_0206CED0(HEAP_ID_FIELD_TASK, v2, &v1->unk_05, v1->unk_06);

    v1->unk_1C = param1;
    sub_0206CD70(fieldSystem, 1, 4, v1);
}

static int sub_0206E1C0(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206E1C0 *v0 = ov6_02246498(param2);

    if (v0->unk_05) {
        sub_0206CDD0(param1, 0, param2);
        sub_0206CE74(param1, 1, v0->unk_00, v0->unk_02, v0->unk_03, v0->unk_04);
        sub_0206CD94(param1, 2, v0->unk_06, v0->unk_02, v0->unk_03, 1);
        StringTemplate_SetCustomMessageWord(param1, 3, v0->unk_1C);
        return 10;
    } else {
        sub_0206CDD0(param1, 0, param2);
        sub_0206CE74(param1, 1, v0->unk_00, v0->unk_02, v0->unk_03, v0->unk_04);

        StringTemplate_SetCustomMessageWord(param1, 3, v0->unk_1C);
        return 11;
    }
}

static BOOL sub_0206E248(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    UnkStruct_0206E1C0 *v0 = ov6_02246498(param1);

    return Pokedex_HasSeenSpecies(SaveData_GetPokedex(fieldSystem->saveData), v0->unk_00);
}

void sub_0206E264(FieldSystem *fieldSystem, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E28C *v1 = &v0.val28;

    v1->unk_00 = PoketchSystem_CurrentAppID(fieldSystem->unk_04->poketchSys);
    v1->unk_04 = param1;

    sub_0206CD70(fieldSystem, 1, 6, v1);
}

static int sub_0206E28C(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206E28C *v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    StringTemplate_SetPoketchAppName(param1, 1, v0->unk_00);
    StringTemplate_SetCustomMessageWord(param1, 2, v0->unk_04);

    return 16;
}

void sub_0206E2BC(FieldSystem *fieldSystem, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E300 *v1 = &v0.val29;
    UnkStruct_0202E7D8 *v2 = sub_0202E7D8(SaveData_GetTVBroadcast(fieldSystem->saveData));

    v1->unk_00 = *v2;
    v2->unk_00 = 0;
    v1->unk_0A = param1;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
    sub_0206CD70(fieldSystem, 1, 7, v1);
}

static int sub_0206E300(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206E300 *v0 = ov6_02246498(param2);

    sub_0206CE74(param1, 0, v0->unk_00.unk_02, v0->unk_00.unk_04, v0->unk_00.unk_05, v0->unk_00.unk_06);
    StringTemplate_SetContestTypeName(param1, 1, sub_020958B8(v0->unk_00.unk_08));
    StringTemplate_SetContestRankName(param1, 2, sub_02095888(v0->unk_00.unk_07));
    StringTemplate_SetNumber(param1, 3, v0->unk_00.unk_09, 1, 0, 1);
    sub_0206CDD0(param1, 4, param2);
    StringTemplate_SetCustomMessageWord(param1, 5, v0->unk_0A);

    if (v0->unk_00.unk_09 == 1) {
        return 18;
    } else {
        return 17;
    }
}

static BOOL sub_0206E37C(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    UnkStruct_0206E300 *v0 = ov6_02246498(param1);
    return Pokedex_HasSeenSpecies(SaveData_GetPokedex(fieldSystem->saveData), v0->unk_00.unk_02);
}

void sub_0206E398(FieldSystem *fieldSystem, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E3C8 *v1 = &v0.val30;

    v1->unk_02 = param1;

    {
        UnkStruct_0202A750 *v2 = sub_0202A750(fieldSystem->saveData);
        UnkStruct_02029C68 *v3 = sub_02029CA8(v2, 0);

        v1->unk_00 = sub_0202A184(v3);
    }

    sub_0206CD70(fieldSystem, 1, 9, v1);
}

static int sub_0206E3C8(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206E3C8 *v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0206CEA4(param1, 1, v0->unk_00);
    StringTemplate_SetCustomMessageWord(param1, 2, v0->unk_02);

    return 20;
}

static BOOL sub_0206E3F8(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    UnkStruct_0206E3C8 *v0 = ov6_02246498(param1);
    return Pokedex_HasSeenSpecies(SaveData_GetPokedex(fieldSystem->saveData), v0->unk_00);
}

void sub_0206E414(FieldSystem *fieldSystem, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E428 *v1 = &v0.val31;

    v1->unk_00 = param1;
    sub_0206CD70(fieldSystem, 1, 10, v1);
}

static int sub_0206E428(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206E428 *v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    return 21 + v0->unk_00 - 1;
}

void sub_0206E448(FieldSystem *fieldSystem, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E480 *v1 = &v0.val32;
    UnkStruct_0202E7F0 *v2 = sub_0202E7F0(SaveData_GetTVBroadcast(fieldSystem->saveData));

    v1->unk_00 = *v2;
    v1->unk_02 = param1;
    v2->unk_00 = 0;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
    sub_0206CD70(fieldSystem, 1, 11, v1);
}

static int sub_0206E480(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206E480 *v0 = ov6_02246498(param2);
    int v1 = v0->unk_00.unk_01;

    sub_0206CDD0(param1, 0, param2);
    StringTemplate_SetPoffinName(param1, 1, v1);
    StringTemplate_SetCustomMessageWord(param1, 2, v0->unk_02);

    switch (v1) {
    case 25:
        return 39;
    case 26:
        return 40;
    case 27:
        return 41;
    case 28:
        return 42;
    default:
        return 38;
    }
}

void sub_0206E4DC(FieldSystem *fieldSystem, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E520 *v1 = &v0.val33;
    UnkStruct_0202E7E4 *v2 = sub_0202E7E4(SaveData_GetTVBroadcast(fieldSystem->saveData));

    v1->unk_00 = *v2;
    v1->unk_24 = param1;
    v2->unk_00 = 0;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
    sub_0206CD70(fieldSystem, 1, 13, v1);
}

static int sub_0206E520(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206E520 *v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0206CE74(param1, 1, v0->unk_00.unk_02, v0->unk_00.unk_04, v0->unk_00.unk_05, v0->unk_00.unk_06);
    StringTemplate_SetNatureName(param1, 2, v0->unk_00.unk_1E);
    StringTemplate_SetCustomMessageWord(param1, 5, v0->unk_24);

    switch (v0->unk_00.unk_1F) {
    case 0:
        return 45;
    case 2:
        StringTemplate_SetContestAccessoryName(param1, 3, v0->unk_00.unk_20);
        return 44;
    case 1:
        StringTemplate_SetItemName(param1, 3, v0->unk_00.unk_22);
        return 46;
    }

    return 45;
}

void sub_0206E5A0(FieldSystem *fieldSystem, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E5E4 *v1 = &v0.val34;
    UnkStruct_0202E810 *v2 = sub_0202E810(SaveData_GetTVBroadcast(fieldSystem->saveData));

    v1->unk_00 = *v2;
    v1->unk_1E = param1;
    v2->unk_00 = 0;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
    sub_0206CD70(fieldSystem, 1, 14, v1);
}

static int sub_0206E5E4(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206E5E4 *v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0206CE74(param1, 1, v0->unk_00.unk_02, v0->unk_00.unk_04, v0->unk_00.unk_05, v0->unk_00.unk_06);

    if (v0->unk_00.unk_07) {
        sub_0206CD94(param1, 2, v0->unk_00.unk_08, v0->unk_00.unk_04, v0->unk_00.unk_05, 1);
    } else {
        sub_0206CE74(param1, 2, v0->unk_00.unk_02, v0->unk_00.unk_04, v0->unk_00.unk_05, v0->unk_00.unk_06);
    }

    StringTemplate_SetCustomMessageWord(param1, 3, v0->unk_1E);
    return 47;
}

static BOOL sub_0206E654(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_FIGHT_AREA);
}

void sub_0206E668(FieldSystem *fieldSystem, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E680 *v1 = &v0.val35;

    v1->unk_00 = param1;
    sub_0206CD70(fieldSystem, 1, 15, v1);
}

static int sub_0206E680(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206E680 *v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    StringTemplate_SetCustomMessageWord(param1, 1, v0->unk_00);

    return 48;
}

void sub_0206E6A8(FieldSystem *fieldSystem, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E6C0 *v1 = &v0.val36;

    v1->unk_00 = param1;
    sub_0206CD70(fieldSystem, 1, 16, v1);
}

static int sub_0206E6C0(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206E6C0 *v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    StringTemplate_SetCustomMessageWord(param1, 1, v0->unk_00);

    return 49;
}

void sub_0206E6E8(FieldSystem *fieldSystem, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E700 *v1 = &v0.val37;

    v1->unk_00 = param1;
    sub_0206CD70(fieldSystem, 1, 17, v1);
}

static int sub_0206E700(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206E700 *v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    StringTemplate_SetCustomMessageWord(param1, 1, v0->unk_00);

    return 50;
}

void sub_0206E728(FieldSystem *fieldSystem, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E740 *v1 = &v0.val38;

    v1->unk_00 = param1;
    sub_0206CD70(fieldSystem, 1, 18, v1);
}

static int sub_0206E740(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_0206E740 *v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    StringTemplate_SetCustomMessageWord(param1, 1, v0->unk_00);

    return 51;
}

void sub_0206E768(FieldSystem *fieldSystem, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E768 *v1 = &v0.val39;
    UnkStruct_0202E81C *v2 = sub_0202E81C(SaveData_GetTVBroadcast(fieldSystem->saveData));

    v1->unk_00 = *v2;
    v1->unk_16 = param1;
    v2->unk_00 = 0;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_TV_BROADCAST);
    sub_0206CD70(fieldSystem, 1, 19, v1);
}

static int sub_0206E7AC(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    int v0;
    UnkStruct_0206E768 *v1 = ov6_02246498(param2);
    Strbuf *v2 = Strbuf_Init(64, HEAP_ID_FIELD);

    sub_0206CDD0(param1, 0, param2);
    Strbuf_CopyChars(v2, v1->unk_00.unk_06);
    StringTemplate_SetStrbuf(param1, 1, v2, v1->unk_00.unk_02, 0, v1->unk_00.unk_03);
    Strbuf_Free(v2);
    StringTemplate_SetCustomMessageWord(param1, 2, v1->unk_16);

    switch (v1->unk_00.unk_01) {
    case 1:
        v0 = 52;
        break;
    case 4:
        v0 = 53;
        break;
    case 5:
        v0 = 54;
        break;
    case 2:
    case 3:
        v0 = 55;
        break;
    case 6:
        v0 = 56;
        break;
    }

    return v0;
}

static BOOL sub_0206E834(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_FIGHT_AREA);
}

static const u8 Unk_020EFD34[] = {
    0x1,
    0x2,
    0x3,
    0x4,
    0x5
};

static int sub_0206E848(RecordMixedRNG *param0)
{
    int v0, v1;

    for (v0 = 0, v1 = 0; v0 < NELEMS(Unk_020EFD34); v0++) {
        if (RecordMixedRNG_IsEntryValid(param0, Unk_020EFD34[v0])) {
            v1++;
        }
    }

    return v1;
}

static int sub_0206E870(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    int v0, v1, v2;
    int v3;
    RecordMixedRNG *v4 = SaveData_GetRecordMixedRNG(fieldSystem->saveData);

    v1 = sub_0206E848(v4);
    GF_ASSERT(v1 > 0);

    if (v1 > 1) {
        v1 = MTRNG_Next() % v1;
    } else {
        v1 = 0;
    }

    for (v0 = 0; v0 < NELEMS(Unk_020EFD34); v0++) {
        if (RecordMixedRNG_IsEntryValid(v4, Unk_020EFD34[v0])) {
            if (v1 == 0) {
                v2 = Unk_020EFD34[v0];
                break;
            } else {
                v1--;
            }
        }
    }

    GF_ASSERT(v1 == 0);

    v3 = LCRNG_RandMod(17);

    if (v3 >= 9) {
        v3++;
    }

    StringTemplate_SetUnionGroupName(param1, fieldSystem->saveData, v2, 0, 1);
    StringTemplate_SetUnionGroupName(param1, fieldSystem->saveData, v2, 1, 0);
    StringTemplate_SetPokemonTypeName(param1, 2, v3);

    return 0;
}

static BOOL sub_0206E928(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    RecordMixedRNG *v0 = SaveData_GetRecordMixedRNG(fieldSystem->saveData);

    if (sub_0206E848(v0) != 0) {
        return 1;
    } else {
        return 0;
    }
}

static u16 Unk_02100BA4[] = {
    0x173,
    0x175,
    0x17F,
    0x154,
    0xA5
};

static int sub_0206E940(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    int mapHeaderID = Unk_02100BA4[LCRNG_RandMod(NELEMS(Unk_02100BA4))];
    int weather = FieldSystem_GetWeather(fieldSystem, mapHeaderID);
    StringTemplate_SetLocationName(param1, 0, MapHeader_GetMapLabelTextID(mapHeaderID));

    switch (weather) {
    case OVERWORLD_WEATHER_CLEAR:
        switch (LCRNG_RandMod(4)) {
        case 0:
            return 1;
        case 1:
            return 2;
        case 2:
            return 3;
        case 3:
            return 4;
        }
    case OVERWORLD_WEATHER_CLOUDY:
        return 5;
    case OVERWORLD_WEATHER_RAINING:
        return 6;
    case OVERWORLD_WEATHER_HEAVY_RAIN:
        return 7;
    case OVERWORLD_WEATHER_SNOWING:
        return 8;
    case OVERWORLD_WEATHER_HEAVY_SNOW:
        return 9;
    case OVERWORLD_WEATHER_BLIZZARD:
        return 10;
    case OVERWORLD_WEATHER_THUNDERSTORM:
        return 11;
    case OVERWORLD_WEATHER_HAILING:
        return 12;
    default:
        GF_ASSERT(0);
    }

    return 1;
}

static BOOL sub_0206EA0C(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return 1;
}

static int sub_0206EA10(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    TrainerInfo *v0 = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(fieldSystem));
    int v1 = fieldSystem->location->mapId;

    if ((v1 == 411) || ((v1 >= 412) && (v1 <= 417))) {
        StringTemplate_SetPlayerName(param1, 0, v0);
        StringTemplate_SetRivalName(param1, 1, fieldSystem->saveData);
        return 13;
    }

    if ((v1 == 418) || ((v1 >= 422) && (v1 <= 425))) {
        StringTemplate_SetCounterpartName(param1, 1, fieldSystem->saveData);
        return 14;
    }

    if ((v1 == 426) || ((v1 >= 430) && (v1 <= 432)) || (v1 == 257)) {
        return 15;
    }

    if ((v1 == 433) || ((v1 >= 437) && (v1 <= 441))) {
        return 16;
    }

    if ((v1 == 442) || ((v1 >= 445) && (v1 <= 449))) {
        return 17;
    }

    if ((v1 == 3) || ((v1 >= 8) && (v1 <= 32))) {
        return 18;
    }

    if ((v1 == 33) || ((v1 >= 38) && (v1 <= 44)) || (v1 == 491)) {
        return 19;
    }

    if ((v1 == 45) || ((v1 >= 50) && (v1 <= 64))) {
        return 20;
    }

    if ((v1 == 65) || ((v1 >= 71) && (v1 <= 85))) {
        return 21;
    }

    if ((v1 == 86) || ((v1 >= 103) && (v1 <= 119))) {
        return 22;
    }

    if ((v1 == 120) || ((v1 >= 125) && (v1 <= 131))) {
        return 23;
    }

    if ((v1 == 132) || ((v1 >= 136) && (v1 <= 149)) || ((v1 >= 305) && (v1 <= 310))) {
        return 24;
    }

    if ((v1 == 150) || ((v1 >= 157) && (v1 <= 164)) || (v1 == 516)) {
        return 25;
    }

    if ((v1 == 165) || ((v1 >= 170) && (v1 <= 171))) {
        return 26;
    }

    StringTemplate_SetPlayerName(param1, 0, v0);
    StringTemplate_SetRivalName(param1, 1, fieldSystem->saveData);

    return 27;
}

static int sub_0206EB94(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    u16 v0, v1;
    SpecialEncounter *v2 = SaveData_GetSpecialEncounters(fieldSystem->saveData);

    Swarm_GetMapIdAndSpecies(SpecialEncounter_GetDailyMon(v2, DAILY_SWARM), &v0, &v1);
    StringTemplate_SetLocationName(param1, 0, MapHeader_GetMapLabelTextID(v0));
    sub_0206CEA4(param1, 1, v1);

    return 29;
}

static BOOL FieldSystem_IsSwarmEnabled(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *unused)
{
    SpecialEncounter *speEnc = SaveData_GetSpecialEncounters(fieldSystem->saveData);
    return SpecialEncounter_IsSwarmEnabled(speEnc);
}

static BOOL sub_0206EBE4(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return 0;
}

static const u16 Unk_020EFD3C[] = {
    FIRST_ARRIVAL_TWINLEAF_TOWN,
    FIRST_ARRIVAL_SANDGEM_TOWN,
    FIRST_ARRIVAL_FLOAROMA_TOWN,
    FIRST_ARRIVAL_SOLACEON_TOWN,
    FIRST_ARRIVAL_CELESTIC_TOWN,
    FIRST_ARRIVAL_SURVIVAL_AREA,
    FIRST_ARRIVAL_RESORT_AREA,
    FIRST_ARRIVAL_JUBILIFE_CITY,
    FIRST_ARRIVAL_CANALAVE_CITY,
    FIRST_ARRIVAL_OREBURGH_CITY,
    FIRST_ARRIVAL_ETERNA_CITY,
    FIRST_ARRIVAL_HEARTHOME_CITY,
    FIRST_ARRIVAL_PASTORIA_CITY,
    FIRST_ARRIVAL_VEILSTONE_CITY,
    FIRST_ARRIVAL_SUNYSHORE_CITY,
    FIRST_ARRIVAL_SNOWPOINT_CITY,
    FIRST_ARRIVAL_OUTSIDE_VICTORY_ROAD,
    FIRST_ARRIVAL_FIGHT_AREA,
};

static const u16 Unk_020F0074[] = {
    0x2,
    0x1AA,
    0x2,
    0x1AA,
    0x2,
    0x15B,
    0x2,
    0x15B,
    0x2,
    0x15B,
    0x2,
    0x15B,
    0x2,
    0xCA,
    0x2,
    0xCA,
    0x2,
    0xCA,
    0x2,
    0xCA,
    0x4,
    0xCC,
    0x4,
    0xCC,
    0x4,
    0xCC,
    0x4,
    0xCC,
    0x2,
    0x15D,
    0x2,
    0x15D,
    0x2,
    0x15D,
    0x2,
    0x15D,
    0x9,
    0x15E,
    0x9,
    0x15E,
    0x9,
    0x15E,
    0x9,
    0x15E,
    0x9,
    0x161,
    0x9,
    0x161,
    0x9,
    0x161,
    0x9,
    0x161,
    0x9,
    0x162,
    0x9,
    0x162,
    0x9,
    0x162,
    0x9,
    0x162,
    0xB,
    0x164,
    0xB,
    0x164,
    0xB,
    0x164,
    0xB,
    0x164,
    0x3,
    0x1B1,
    0x3,
    0x1B1,
    0x3,
    0x1B1,
    0x3,
    0x1B1,
    0x3,
    0x16A,
    0x3,
    0x16A,
    0x3,
    0x16A,
    0x3,
    0x16A,
    0x4,
    0x16B,
    0x4,
    0x16B,
    0x4,
    0x16B,
    0x4,
    0x16B,
    0x4,
    0x16E,
    0x4,
    0x16E,
    0x4,
    0x16E,
    0x4,
    0x16E,
    0xB,
    0x16F,
    0xB,
    0x16F,
    0xB,
    0x16F,
    0xB,
    0x16F,
    0xC,
    0x173,
    0xC,
    0x173,
    0xC,
    0x173,
    0xC,
    0x173,
    0xC,
    0x78,
    0xC,
    0x78,
    0xC,
    0x78,
    0xC,
    0x78,
    0xC,
    0x175,
    0xC,
    0x175,
    0xC,
    0x175,
    0xC,
    0x175,
    0xD,
    0x17C,
    0xD,
    0x17C,
    0xD,
    0x17C,
    0xD,
    0x17C,
    0xD,
    0x17E,
    0xD,
    0x17E,
    0xD,
    0x17E,
    0xD,
    0x17E,
    0x4,
    0x184,
    0x4,
    0x184,
    0x4,
    0x184,
    0x4,
    0x184,
    0x4,
    0x188,
    0x4,
    0x188,
    0x4,
    0x188,
    0x4,
    0x188,
    0xD,
    0x18B,
    0xD,
    0x18B,
    0xD,
    0x18B,
    0xD,
    0x18B,
    0x10,
    0x18F,
    0x10,
    0x18F,
    0x10,
    0x18F,
    0x10,
    0x18F,
    0x11,
    0xBC,
    0x11,
    0xBC,
    0x11,
    0xBC,
    0x11,
    0xBC,
    0x11,
    0x190,
    0x11,
    0x190,
    0x11,
    0x190,
    0x11,
    0x190,
    0x5,
    0x1D5,
    0x5,
    0x1D5,
    0x5,
    0x1D5,
    0x5,
    0x1D5,
    0x5,
    0x196,
    0x5,
    0x196,
    0x5,
    0x196,
    0x5,
    0x196,
    0x5,
    0x197,
    0x5,
    0x197,
    0x5,
    0x197,
    0x5,
    0x197,
    0x6,
    0x1C9,
    0x6,
    0x1C9,
    0x6,
    0x1C9,
    0x6,
    0x1C9,
    0x5,
    0x1D7,
    0x5,
    0x1D7,
    0x5,
    0x1D7,
    0x5,
    0x1D7
};

static int sub_0206EBE8(FieldSystem *fieldSystem)
{
    u8 v0[NELEMS(Unk_020EFD3C)];
    u8 v1[NELEMS(Unk_020F0074) / 2];
    int v2, v3;
    VarsFlags *v4 = SaveData_GetVarsFlags(fieldSystem->saveData);

    for (v2 = 0; v2 < NELEMS(Unk_020EFD3C); v2++) {
        v0[v2] = SystemFlag_HandleFirstArrivalToZone(v4, HANDLE_FLAG_CHECK, Unk_020EFD3C[v2]);
    }

    for (v2 = 0, v3 = 0; v2 < NELEMS(Unk_020F0074) / 2; v2++) {
        if (v0[Unk_020F0074[v2 * 2]]) {
            v1[v3] = v2;
            v3++;
        }
    }

    return v1[LCRNG_RandMod(v3)];
}

static int sub_0206EC90(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    BerryPatch *v0 = MiscSaveBlock_GetBerryPatches(fieldSystem->saveData);
    int v1 = sub_0206EBE8(fieldSystem);
    int v2 = Unk_020F0074[v1 * 2 + 1];
    StringTemplate_SetLocationName(param1, 0, MapHeader_GetMapLabelTextID(v2));

    switch (BerryPatches_GetPatchGrowthStage(v0, v1)) {
    case 5:
        return 36;
    case 4:
        return 37;
    case 3:
        return 38;
    case 2:
        return 39;
    case 0:
    case 1:
    default:
        return 40;
    }
}

static BOOL sub_0206ECFC(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    VarsFlags *v0 = SaveData_GetVarsFlags(fieldSystem->saveData);
    return SystemFlag_HandleFirstArrivalToZone(v0, HANDLE_FLAG_CHECK, FIRST_ARRIVAL_OREBURGH_CITY);
}

static BOOL sub_0206ED10(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    return 0;
}

static int sub_0206ED14(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    u32 v0, v1;
    u8 v2;
    Pokemon *v3;
    BoxPokemon *v4;
    int v5 = 0xff, v6;
    v6 = 0xff;
    v0 = (LCRNG_Next() % 0xffff);
    v2 = Pokemon_GetNatureOf(v0);

    StringTemplate_SetNatureName(param1, 0, v2);

    if ((v2 == 0) || (v2 == 6) || (v2 == 12) || (v2 == 18) || (v2 == 24)) {
        return 46;
    }

    if ((v0 % 2) == 0) {
        for (v1 = 0; v1 < 5; v1++) {
            if (Pokemon_GetFlavorAffinityOf(v0, v1) == 1) {
                v5 = v1;
                break;
            }
        }

        StringTemplate_SetFlavorName(param1, 2, v5);
        return 45;
    }

    for (v1 = 0; v1 < 5; v1++) {
        if (Pokemon_GetStatAffinityOf(v2, 1 + v1) > 0) {
            v6 = v1;
            break;
        }
    }

    StringTemplate_SetPokemonStatName(param1, 1, 1 + v6);
    return 44;
}

static int sub_0206EDAC(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    Roamer *v0;
    SpecialEncounter *v1;
    u16 v2, v3;
    u32 v4, v5;
    Strbuf *v6 = Strbuf_Init(22, HEAP_ID_FIELD);
    TrainerInfo *v7 = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(fieldSystem));

    v1 = SaveData_GetSpecialEncounters(fieldSystem->saveData);
    v2 = (LCRNG_Next() % 29);

    MapHeader_LoadName(RoamingPokemon_GetRouteFromId(v2), HEAP_ID_FIELD, v6);
    StringTemplate_SetStrbuf(param1, 0, v6, 0, 1, GAME_LANGUAGE);
    Strbuf_Free(v6);

    for (v3 = 0; v3 < 6; v3++) {
        if (SpecialEncounter_IsRoamerActive(v1, v3)) {
            v0 = SpecialEncounter_GetRoamer(v1, v3);

            v4 = Roamer_GetData(v0, ROAMER_DATA_SPECIES);
            v5 = Roamer_GetData(v0, ROAMER_DATA_PERSONALITY);

            sub_0206CE74(param1, 1, v4, Pokemon_GetGenderOf(v4, v5), TrainerInfo_RegionCode(v7), TrainerInfo_GameCode(v7));
            break;
        }
    }

    return 49;
}

static BOOL sub_0206EE74(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    int v0;
    SpecialEncounter *v1 = SaveData_GetSpecialEncounters(fieldSystem->saveData);

    for (v0 = 0; v0 < 6; v0++) {
        if (SpecialEncounter_IsRoamerActive(v1, v0)) {
            return 1;
        }
    }

    return 0;
}

static int sub_0206EE9C(UnkStruct_0202A750 *param0)
{
    int v0, v1;

    for (v0 = 0, v1 = 0; v0 < 11; v0++) {
        if (sub_02029D10(param0, v0) == 1) {
            v1++;
        }
    }

    return v1;
}

static int sub_0206EEBC(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    UnkStruct_02029C68 *v0;
    int v1, v2, v3, v4;
    UnkStruct_0202A750 *v5 = sub_0202A750(fieldSystem->saveData);

    v2 = sub_0206EE9C(v5);

    if (v2 > 1) {
        v3 = MTRNG_Next() % v2;
    } else {
        v3 = 0;
    }

    for (v1 = 0; v1 < 11; v1++) {
        if (sub_02029D10(v5, v1) == 1) {
            if (v3 == 0) {
                v4 = v1;
                break;
            } else {
                v3--;
            }
        }
    }

    GF_ASSERT(v1 < 11);
    v0 = sub_02029CA8(v5, v4);

    {
        u16 v6;
        Strbuf *v7 = Strbuf_Init(7 + 1, HEAP_ID_FIELD);
        int v8 = sub_0202A1C0(v0);

        sub_0202A1A0(v0, v7);
        StringTemplate_SetStrbuf(param1, 0, v7, v8, 1, sub_0202A200(v0));
        Strbuf_Free(v7);

        v6 = sub_0202A1F4(v0);
        StringTemplate_SetCustomMessageWord(param1, 1, v6);
    }

    return 52;
}

static BOOL sub_0206EF64(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    UnkStruct_0202A750 *v0 = sub_0202A750(fieldSystem->saveData);

    if (sub_0206EE9C(v0) != 0) {
        return 1;
    } else {
        return 0;
    }
}

static int sub_0206EF7C(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    u16 v0 = 0;

    if (SystemFlag_CheckGameCompleted(SaveData_GetVarsFlags(fieldSystem->saveData)) == 1) {
        v0 = (LCRNG_Next() % 8);
    } else if (SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_HEARTHOME_CITY) == TRUE) {
        v0 = (LCRNG_Next() % 5);
    } else if (SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_ETERNA_CITY) == TRUE) {
        v0 = (LCRNG_Next() % 4);
    } else if (SystemFlag_HandleFirstArrivalToZone(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, FIRST_ARRIVAL_OREBURGH_MINE) == TRUE) {
        v0 = (LCRNG_Next() % 2);
    }

    return 0 + v0;
}

static int sub_0206F01C(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    Strbuf *v0;
    u16 v1, v2, v3;
    const Pokedex *pokedex = SaveData_GetPokedex(fieldSystem->saveData);

    v1 = (LCRNG_Next() % (NATIONAL_DEX_COUNT - 1)) + 1;

    for (v2 = 1; v2 <= NATIONAL_DEX_COUNT; v2++) {
        if (Pokedex_HasSeenSpecies(pokedex, v1) == TRUE) {
            v3 = v1;
            break;
        }

        v1++;

        if (v1 == NATIONAL_DEX_COUNT) {
            v1 = 1;
        }
    }

    v0 = sub_0206F0D8(v3, HEAP_ID_FIELD);

    StringTemplate_SetStrbuf(param1, 0, v0, 0, 1, GAME_LANGUAGE);
    Strbuf_Free(v0);

    v1 = (LCRNG_Next() % 3);

    if (v1 == 0) {
        return 8;
    } else if (v1 == 1) {
        v1 = (LCRNG_Next() % 34) + 25;
        StringTemplate_SetNumber(param1, 1, v1, 2, 0, 1);
        return 9;
    } else {
        return 10;
    }
}

static Strbuf *sub_0206F0D8(u16 param0, u32 heapID)
{
    MessageLoader *v0 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, heapID);
    Strbuf *v1 = MessageLoader_GetNewStrbuf(v0, param0);

    MessageLoader_Free(v0);
    return v1;
}

static BOOL sub_0206F100(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    const Pokedex *pokedex = SaveData_GetPokedex(fieldSystem->saveData);

    if (Pokedex_IsObtained(pokedex) == TRUE) {
        return TRUE;
    } else {
        return FALSE;
    }
}

static int sub_0206F118(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    u16 v0 = (LCRNG_Next() % 3);

    if (v0 == 0) {
        return 11;
    } else if (v0 == 1) {
        return 12;
    } else {
        return 13;
    }
}

static int sub_0206F13C(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    u16 v0 = (LCRNG_Next() % 3);

    if (v0 == 0) {
        return 14;
    } else if (v0 == 1) {
        return 15;
    } else {
        return 16;
    }
}

static int sub_0206F160(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    Strbuf *v0;
    u16 v1, v2;
    Pokemon *pokemon;
    Party *party;
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(fieldSystem->saveData);
    Pokedex *pokedex = SaveData_GetPokedex(fieldSystem->saveData);

    party = SaveData_GetParty(fieldSystem->saveData);
    pokemon = Party_GetPokemonBySlotIndex(party, SaveData_GetFirstNonEggInParty(fieldSystem->saveData));

    sub_0206CE74(param1, 0, Pokemon_GetValue(pokemon, MON_DATA_SPECIES, NULL), Pokemon_GetValue(pokemon, MON_DATA_GENDER, NULL), TrainerInfo_RegionCode(trainerInfo), TrainerInfo_GameCode(trainerInfo));
    StringTemplate_SetContestAccessoryName(param1, 1, (LCRNG_Next() % 100));

    v1 = (LCRNG_Next() % (NATIONAL_DEX_COUNT - 2) + 1);

    for (v2 = 1; v2 <= NATIONAL_DEX_COUNT; v2++) {
        if (Pokedex_HasSeenSpecies(pokedex, v1) == TRUE) {
            v0 = sub_0206F0D8(v1, HEAP_ID_FIELD);
            StringTemplate_SetStrbuf(param1, 2, v0, 0, 1, GAME_LANGUAGE);
            Strbuf_Free(v0);
            break;
        }

        v1++;

        if (v1 >= NATIONAL_DEX_COUNT) {
            v1 = 1;
        }
    }

    StringTemplate_SetMoveName(param1, 3, (LCRNG_Next() % 467 - 2) + 1);

    return 17;
}

static BOOL sub_0206F260(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    const Pokedex *pokedex = SaveData_GetPokedex(fieldSystem->saveData);

    if (Pokedex_IsObtained(pokedex) == TRUE) {
        return TRUE;
    } else {
        return FALSE;
    }
}

static int sub_0206F278(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    return 18;
}

static int sub_0206F27C(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    return 19;
}

static BOOL sub_0206F280(FieldSystem *fieldSystem, UnkStruct_ov6_022465F4 *param1)
{
    if (TrainerInfo_HasBadge(SaveData_GetTrainerInfo(fieldSystem->saveData), 0) == 1) {
        return 1;
    } else {
        return 0;
    }
}

static int sub_0206F29C(FieldSystem *fieldSystem, StringTemplate *param1, UnkStruct_ov6_022465F4 *param2)
{
    u16 v0 = (LCRNG_Next() % 9);

    if (v0 == 0) {
        return 20;
    } else if (v0 == 1) {
        return 21;
    } else if (v0 == 2) {
        return 22;
    } else if (v0 == 3) {
        return 23;
    } else if (v0 == 4) {
        return 24;
    } else if (v0 == 5) {
        return 25;
    } else if (v0 == 6) {
        return 26;
    } else if (v0 == 7) {
        return 27;
    } else {
        return 28;
    }
}

static const UnkStruct_020EFFA4 Unk_020EFFA4[] = {
    { sub_0206D230, sub_0206D320 },
    { sub_0206D2E0, NULL },
    { sub_0206D374, sub_0206D3C0 },
    { sub_0206D43C, NULL },
    { NULL, NULL },
    { sub_0206D4D4, NULL },
    { sub_0206D530, NULL },
    { sub_0206D5B0, sub_0206D5F0 },
    { NULL, NULL },
    { sub_0206D644, sub_0206D6A8 },
    { NULL, NULL },
    { NULL, NULL },
    { sub_0206D6E0, sub_0206DB08 },
    { NULL, NULL },
    { sub_0206D75C, sub_0206D7A4 },
    { sub_0206D8B0, sub_0206D8F0 },
    { NULL, sub_0206D910 },
    { sub_0206D94C, NULL },
    { sub_0206D98C, NULL },
    { sub_0206D474, NULL },
    { sub_0206D9F4, sub_0206DA50 },
    { sub_0206DAF0, sub_0206DB08 },
    { sub_0206DAFC, sub_0206DB08 },
    { NULL, NULL },
    { sub_0206DB38, sub_0206DB48 },
    { sub_0206DB74, sub_0206DB9C }
};

static const UnkStruct_020EFFA4 Unk_020EFE2C[11] = {
    { sub_0206DBE8, sub_0206DC3C },
    { NULL, NULL },
    { sub_0206DC9C, sub_0206DD1C },
    { sub_0206DD5C, NULL },
    { sub_0206DE80, NULL },
    { NULL, NULL },
    { NULL, NULL },
    { sub_0206DF14, sub_0206DFC8 },
    { sub_0206DF88, sub_0206DFC8 },
    { sub_0206E018, sub_0206E04C },
    { sub_0206E098, sub_0206E0CC }
};

static const UnkStruct_020EFFA4 Unk_020EFF0C[19] = {
    { NULL, NULL },
    { sub_0206E118, sub_0206E160 },
    { NULL, NULL },
    { sub_0206E1C0, sub_0206E248 },
    { NULL, NULL },
    { sub_0206E28C, NULL },
    { sub_0206E300, sub_0206E37C },
    { NULL, NULL },
    { sub_0206E3C8, sub_0206E3F8 },
    { sub_0206E428, NULL },
    { sub_0206E480, NULL },
    { NULL, NULL },
    { sub_0206E520, NULL },
    { sub_0206E5E4, sub_0206E654 },
    { sub_0206E680, NULL },
    { sub_0206E6C0, NULL },
    { sub_0206E700, NULL },
    { sub_0206E740, NULL },
    { sub_0206E7AC, sub_0206E834 }
};

static const UnkStruct_020EFFA4 Unk_020EFE84[17] = {
    { sub_0206E870, sub_0206E928 },
    { sub_0206E940, sub_0206EA0C },
    { sub_0206EA10, NULL },
    { NULL, NULL },
    { sub_0206EB94, FieldSystem_IsSwarmEnabled },
    { NULL, NULL },
    { NULL, sub_0206EBE4 },
    { NULL, NULL },
    { sub_0206EC90, sub_0206ECFC },
    { NULL, NULL },
    { NULL, sub_0206ED10 },
    { sub_0206ED14, NULL },
    { NULL, NULL },
    { NULL, NULL },
    { sub_0206EDAC, sub_0206EE74 },
    { NULL, NULL },
    { sub_0206EEBC, sub_0206EF64 }
};

static const UnkStruct_020EFFA4 Unk_020EFD9C[8] = {
    { sub_0206EF7C, NULL },
    { sub_0206F01C, sub_0206F100 },
    { sub_0206F118, NULL },
    { sub_0206F13C, NULL },
    { sub_0206F160, sub_0206F260 },
    { sub_0206F278, NULL },
    { sub_0206F27C, sub_0206F280 },
    { sub_0206F29C, NULL }
};

void sub_0206F2F0(SaveData *saveData)
{
    TVBroadcast *broadcast = SaveData_GetTVBroadcast(saveData);

    sub_0206DFE0(saveData);
    sub_0206E060(saveData);

    sub_0206D0F0(broadcast);
    sub_0206D12C(broadcast);

    return;
}
