#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "message.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "strbuf.h"
#include "struct_decls/struct_0202440C_decl.h"
#include "trainer_info.h"
#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_02027854_decl.h"
#include "struct_decls/struct_02029C68_decl.h"
#include "struct_decls/struct_0202A750_decl.h"
#include "struct_decls/struct_0202B4A0_decl.h"
#include "struct_decls/struct_020507E4_decl.h"
#include "pokemon.h"
#include "struct_decls/struct_party_decl.h"
#include "savedata.h"
#include "overlay006/struct_ov6_022465F4_decl.h"

#include "struct_defs/struct_0202D7B0.h"
#include "struct_defs/struct_0202E7D8.h"
#include "struct_defs/struct_0202E7E4.h"
#include "struct_defs/struct_0202E7F0.h"
#include "struct_defs/struct_0202E7FC.h"
#include "struct_defs/struct_0202E808.h"
#include "struct_defs/struct_0202E810.h"
#include "struct_defs/struct_0202E81C.h"
#include "struct_defs/struct_0202E828.h"
#include "struct_defs/struct_0202E834.h"
#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "struct_defs/struct_0206C638.h"

#include "unk_020021B0.h"
#include "message.h"
#include "unk_0200B358.h"
#include "heap.h"
#include "unk_0201D15C.h"
#include "strbuf.h"
#include "savedata/save_table.h"
#include "savedata.h"
#include "unk_02025E08.h"
#include "trainer_info.h"
#include "unk_0202631C.h"
#include "unk_020277A4.h"
#include "unk_02027B70.h"
#include "unk_020298BC.h"
#include "unk_0202B37C.h"
#include "unk_0202D7A8.h"
#include "unk_0202E2CC.h"
#include "map_header.h"
#include "unk_0203A944.h"
#include "unk_0203CC84.h"
#include "unk_020507CC.h"
#include "unk_02054884.h"
#include "unk_0205DFC4.h"
#include "unk_0206A8DC.h"
#include "roaming_pokemon.h"
#include "unk_0206CCB0.h"
#include "unk_02071CFC.h"
#include "constants/species.h"
#include "pokemon.h"
#include "party.h"
#include "unk_0207D3B8.h"
#include "unk_020923C0.h"
#include "unk_02094EDC.h"
#include "overlay006/ov6_02243218.h"
#include "overlay006/ov6_02246444.h"
#include "overlay025/poketch_system.h"

static void sub_0206CD70(FieldSystem * param0, int param1, int param2, const void * param3);
static void sub_0206CD7C(SaveData * param0, int param1, int param2, const void * param3);
static u8 sub_0206DE4C(Pokemon * param0);
static Strbuf* sub_0206F0D8(u16 param0, u32 param1);

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

typedef int (* UnkFuncPtr_0206CD00)(FieldSystem *, StringFormatter *, UnkStruct_ov6_022465F4 *);
typedef BOOL (* UnkFuncPtr_0206CD2C)(FieldSystem *, UnkStruct_ov6_022465F4 *);

typedef struct {
    UnkFuncPtr_0206CD00 unk_00;
    UnkFuncPtr_0206CD2C unk_04;
} UnkStruct_020EFFA4;

typedef struct {
    int unk_00;
    u16 unk_04;
    u16 unk_06;
    const UnkStruct_020EFFA4 * unk_08;
} UnkStruct_020EFD60;

static const UnkStruct_020EFFA4 Unk_020EFFA4[26];
static const UnkStruct_020EFFA4 Unk_020EFE2C[11];
static const UnkStruct_020EFFA4 Unk_020EFF0C[19];
static const UnkStruct_020EFFA4 Unk_020EFE84[17];
static const UnkStruct_020EFFA4 Unk_020EFD9C[8];

static const UnkStruct_020EFD60 Unk_020EFD60[] = {
    {0x1, 0x19F, 0x14, Unk_020EFF0C},
    {0x2, 0x1A0, 0x1B, Unk_020EFFA4},
    {0x3, 0x1A1, 0xC, Unk_020EFE2C},
    {0x4, 0x1A2, 0x12, Unk_020EFE84},
    {0x5, 0x1A3, 0x9, Unk_020EFD9C}
};

static const UnkStruct_020EFD60 * sub_0206CCB0 (int param0)
{
    const UnkStruct_020EFD60 * v0;

    GF_ASSERT(0 < param0 && param0 < 6);
    v0 = &Unk_020EFD60[param0 - 1];
    GF_ASSERT(v0->unk_00 == param0);

    return v0;
}

static const UnkStruct_020EFFA4 * sub_0206CCDC (const UnkStruct_020EFD60 * param0, const UnkStruct_ov6_022465F4 * param1)
{
    int v0;

    v0 = ov6_022464A4(param1);
    GF_ASSERT(0 < v0 && v0 < param0->unk_06);

    return &(param0->unk_08[v0 - 1]);
}

int sub_0206CD00 (int param0, FieldSystem * param1, StringFormatter * param2, UnkStruct_ov6_022465F4 * param3, u16 * param4)
{
    UnkFuncPtr_0206CD00 v0;
    const UnkStruct_020EFD60 * v1;
    const UnkStruct_020EFFA4 * v2;

    v1 = sub_0206CCB0(param0);
    *param4 = v1->unk_04;
    v2 = sub_0206CCDC(v1, param3);
    v0 = v2->unk_00;

    GF_ASSERT(v0 != NULL);
    return v0(param1, param2, param3);
}

BOOL sub_0206CD2C (int param0, FieldSystem * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkFuncPtr_0206CD2C v0;
    const UnkStruct_020EFD60 * v1;
    const UnkStruct_020EFFA4 * v2;

    v1 = sub_0206CCB0(param0);
    v2 = sub_0206CCDC(v1, param2);

    if (v2->unk_00 == NULL) {
        return 0;
    }

    v0 = v2->unk_04;

    if (v0 == NULL) {
        return 1;
    }

    return v0(param1, param2);
}

static void sub_0206CD58 (SaveData * param0, int param1, int param2, const void * param3)
{
    TVBroadcast * v0 = SaveData_TVBroadcast(param0);

    GF_ASSERT(sizeof(UnkUnion_0206D1B8) == 40);
    sub_0202E43C(v0, param1, param2, (const u8 *)param3);
}

static void sub_0206CD70 (FieldSystem * param0, int param1, int param2, const void * param3)
{
    sub_0206CD7C(param0->unk_0C, param1, param2, param3);
}

static void sub_0206CD7C (SaveData * param0, int param1, int param2, const void * param3)
{
    TVBroadcast * v0 = SaveData_TVBroadcast(param0);

    GF_ASSERT(sizeof(UnkUnion_0206D1B8) == 40);
    sub_0202E43C(v0, param1, param2, (const u8 *)param3);
}

static void sub_0206CD94 (StringFormatter * param0, int param1, const u16 * param2, int param3, int param4, int param5)
{
    Strbuf* v0 = Strbuf_Init(64, 4);

    Strbuf_CopyChars(v0, param2);
    sub_0200B48C(param0, param1, v0, param3, param5, param4);
    Strbuf_Free(v0);
}

static void sub_0206CDD0 (StringFormatter * param0, int param1, const UnkStruct_ov6_022465F4 * param2)
{
    sub_0206CD94(param0, param1, ov6_02246494(param2), ov6_0224648C(param2), ov6_02246490(param2), 1);
}

static void sub_0206CE08 (int param0, u16 * param1, Pokemon * param2)
{
    Strbuf* v0 = Strbuf_Init(64, param0);

    Pokemon_GetValue(param2, MON_DATA_NICKNAME_STRBUF, v0);
    Strbuf_ToChars(v0, param1, 10 + 1);
    Strbuf_Free(v0);
}

static void sub_0206CE38 (Pokemon * param0, u16 * param1, u8 * param2, u8 * param3, u8 * param4)
{
    *param1 = Pokemon_GetValue(param0, MON_DATA_SPECIES, NULL);
    *param2 = Pokemon_GetValue(param0, MON_DATA_GENDER, NULL);
    *param3 = Pokemon_GetValue(param0, MON_DATA_LANGUAGE, NULL);
    *param4 = Pokemon_GetValue(param0, MON_DATA_MET_GAME, NULL);
}

static void sub_0206CE74 (StringFormatter * param0, int param1, u16 param2, u8 param3, u8 param4, u8 param5)
{
    u16 v0[11];

    MessageLoader_GetSpeciesName(param2, 4, v0);
    sub_0206CD94(param0, param1, v0, param3, param4, 1);
}

static void sub_0206CEA4 (StringFormatter * param0, int param1, u16 param2)
{
    u16 v0[11];

    MessageLoader_GetSpeciesName(param2, 4, v0);
    sub_0206CD94(param0, param1, v0, 0, GAME_LANGUAGE, 1);
}

static void sub_0206CED0 (int param0, Pokemon * param1, u8 * param2, u16 * param3)
{
    *param2 = Pokemon_GetValue(param1, MON_DATA_HAS_NICKNAME, NULL);

    if (*param2) {
        Strbuf* v0 = Strbuf_Init(64, param0);

        Pokemon_GetValue(param1, MON_DATA_NICKNAME_STRBUF, v0);
        Strbuf_ToChars(v0, param3, 10 + 1);
        Strbuf_Free(v0);
    }
}

void sub_0206CF14 (TVBroadcast * param0, Pokemon * param1, int param2, int param3, int param4)
{
    UnkStruct_0202E7D8 * v0 = sub_0202E7D8(param0);

    v0->unk_00 = 1;
    sub_0206CE38(param1, &v0->unk_02, &v0->unk_04, &v0->unk_05, &v0->unk_06);
    v0->unk_08 = param2;
    v0->unk_07 = param3;
    v0->unk_09 = param4;

    sub_02025C84(27);
}

void sub_0206CF48 (TVBroadcast * param0, Pokemon * param1, int param2)
{
    UnkStruct_0202E7E4 * v0 = sub_0202E7E4(param0);

    v0->unk_00 = 1;
    v0->unk_1F = 0;
    v0->unk_1E = Pokemon_GetNature(param1);

    sub_0206CE38(param1, &v0->unk_02, &v0->unk_04, &v0->unk_05, &v0->unk_06);
    v0->unk_07 = Pokemon_GetValue(param1, MON_DATA_HAS_NICKNAME, NULL);

    sub_0206CED0(param2, param1, &v0->unk_07, v0->unk_08);
    sub_02025C84(27);
}

void sub_0206CF9C (TVBroadcast * param0, int param1)
{
    UnkStruct_0202E7E4 * v0 = sub_0202E7E4(param0);

    v0->unk_1F = 2;
    v0->unk_20 = param1;

    sub_02025C84(27);
}

void sub_0206CFB4 (TVBroadcast * param0, int param1)
{
    UnkStruct_0202E7E4 * v0 = sub_0202E7E4(param0);

    v0->unk_1F = 1;
    v0->unk_22 = param1;

    sub_02025C84(27);
}

void sub_0206CFCC (TVBroadcast * param0, int param1)
{
    UnkStruct_0202E7F0 * v0 = sub_0202E7F0(param0);

    v0->unk_00 = 1;
    v0->unk_01 = param1;

    sub_02025C84(27);
}

void sub_0206CFE4 (TVBroadcast * param0, BOOL param1, u16 param2)
{
    UnkStruct_0202E7FC * v0 = sub_0202E7FC(param0);

    v0->unk_00 = 1;
    v0->unk_01 = param1;
    v0->unk_02 = param2;

    sub_02025C84(27);
}

void sub_0206D000 (TVBroadcast * param0)
{
    UnkStruct_0202E808 * v0 = sub_0202E808(param0);

    v0->unk_00 = 1;
    v0->unk_07 = 0;

    sub_02025C84(27);
}

void sub_0206D018 (TVBroadcast * param0, Pokemon * param1)
{
    UnkStruct_0202E808 * v0 = sub_0202E808(param0);

    if (v0->unk_07 == 0) {
        sub_0206CE38(param1, &v0->unk_02, &v0->unk_04, &v0->unk_05, &v0->unk_06);
    }

    v0->unk_07++;
    sub_02025C84(27);
}

void sub_0206D048 (TVBroadcast * param0, Pokemon * param1)
{
    UnkStruct_0202E810 * v0 = sub_0202E810(param0);

    v0->unk_00 = 1;
    sub_0206CE38(param1, &v0->unk_02, &v0->unk_04, &v0->unk_05, &v0->unk_06);
    v0->unk_07 = Pokemon_GetValue(param1, MON_DATA_HAS_NICKNAME, NULL);

    sub_0206CED0(11, param1, &v0->unk_07, v0->unk_08);
    sub_02025C84(27);
}

void sub_0206D088 (TVBroadcast * param0, u8 param1, const TrainerInfo * param2)
{
    UnkStruct_0202E81C * v0 = sub_0202E81C(param0);

    v0->unk_00 = 1;
    v0->unk_01 = param1;

    GF_strcpy(v0->unk_06, TrainerInfo_Name(param2));

    v0->unk_03 = TrainerInfo_RegionCode(param2);
    v0->unk_04 = TrainerInfo_GameCode(param2);
    v0->unk_02 = TrainerInfo_Gender(param2);

    sub_02025C84(27);
}

void sub_0206D0C8 (TVBroadcast * param0, u16 param1)
{
    UnkStruct_0202E828 * v0 = sub_0202E828(param0);

    v0->unk_00 = 1;
    v0->unk_04 += param1;

    if (v0->unk_04 > 9999) {
        v0->unk_04 = 9999;
    }

    sub_02025C84(27);
}

void sub_0206D0F0 (TVBroadcast * param0)
{
    UnkStruct_0202E828 * v0 = sub_0202E828(param0);

    v0->unk_04 = 0;
    sub_02025C84(27);
}

void sub_0206D104 (TVBroadcast * param0)
{
    UnkStruct_0202E834 * v0 = sub_0202E834(param0);

    v0->unk_00 = 1;
    v0->unk_02++;

    if (v0->unk_02 > 9999) {
        v0->unk_02 = 9999;
    }

    sub_02025C84(27);
}

void sub_0206D12C (TVBroadcast * param0)
{
    UnkStruct_0202E834 * v0 = sub_0202E834(param0);

    v0->unk_02 = 0;
    sub_02025C84(27);
}

UnkStruct_0206D140 * sub_0206D140 (int param0)
{
    UnkStruct_0206D140 * v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_0206D140));
    MI_CpuClearFast(v0, sizeof(UnkStruct_0206D140));

    return v0;
}

void sub_0206D158 (UnkStruct_0206D140 * param0)
{
    Heap_FreeToHeap(param0);
}

void sub_0206D160 (UnkStruct_0206D140 * param0, Pokemon * param1, int param2, int param3, u32 param4)
{
    MI_CpuClear32(param0, sizeof(UnkStruct_0206D140));

    param0->unk_00 = param2;
    param0->unk_04 = param3;

    sub_0206CE38(param1, &param0->unk_06, &param0->unk_08, &param0->unk_09, &param0->unk_0A);

    param0->unk_22 = Pokemon_GetValue(param1, MON_DATA_POKEBALL, NULL);
    GF_ASSERT(param0->unk_22);

    sub_0206CED0(param4, param1, &param0->unk_0B, param0->unk_0C);
}

void sub_0206D1B8 (FieldSystem * param0, const UnkStruct_0206D140 * param1, int param2)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206D140 * v1 = &v0.val2;

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
        sub_0206CD70(param0, 2, 1, v1);
        break;
    case 0x1:
    case 0x5:
    case 0x6:
        if (v1->unk_04 > 2) {
            sub_0206CD70(param0, 2, 2, v1);
        }
        break;
    }
}

static int sub_0206D230 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206D140 * v0 = ov6_02246498(param2);

    if (v0->unk_0B) {
        sub_0206CDD0(param1, 0, param2);
        sub_0206CE74(param1, 1, v0->unk_06, v0->unk_08, v0->unk_09, v0->unk_0A);
        sub_0200B70C(param1, 2, v0->unk_22);
        sub_0200B60C(param1, 3, v0->unk_04, 3, 0, 1);
        sub_0206CD94(param1, 4, v0->unk_0C, v0->unk_08, v0->unk_09, 1);
        return 0;
    } else {
        sub_0206CDD0(param1, 0, param2);
        sub_0206CE74(param1, 1, v0->unk_06, v0->unk_08, v0->unk_09, v0->unk_0A);
        sub_0200B70C(param1, 2, v0->unk_22);
        sub_0200B60C(param1, 3, v0->unk_04, 3, 0, 1);
        return 1;
    }
}

static int sub_0206D2E0 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206D140 * v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0200B60C(param1, 1, v0->unk_04, 3, 0, 1);

    if (v0->unk_00 == 0x1) {
        return 2;
    } else {
        return 3;
    }
}

static BOOL sub_0206D320 (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    PokedexData * v0 = sub_02027560(param0->unk_0C);
    UnkStruct_0206D140 * v1 = ov6_02246498(param1);

    return sub_02026FE8(v0, v1->unk_06);
}

void sub_0206D340 (FieldSystem * param0, BOOL param1, u16 param2, Pokemon * param3)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206D374 * v1 = &v0.val3;

    if (param1) {
        sub_0206CE38(param3, &v1->unk_00, &v1->unk_02, &v1->unk_03, &v1->unk_04);
    }

    v1->unk_06 = param2;
    v1->unk_08 = param1;

    sub_0206CD70(param0, 2, 3, v1);
}

static int sub_0206D374 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206D374 * v0 = (UnkStruct_0206D374 * )ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);

    if (v0->unk_08) {
        sub_0200B70C(param1, 1, v0->unk_06);
        sub_0206CE74(param1, 2, v0->unk_00, v0->unk_02, v0->unk_03, v0->unk_04);
        return 4;
    } else {
        return 5;
    }
}

static BOOL sub_0206D3C0 (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    UnkStruct_0206D374 * v0 = (UnkStruct_0206D374 * )ov6_02246498(param1);

    if (v0->unk_08 == 0) {
        return 1;
    }

    return sub_02026FE8(sub_02027560(param0->unk_0C), v0->unk_00);
}

static void sub_0206D3E4 (FieldSystem * param0, int param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206D43C * v1 = &v0.val4;
    UnkStruct_0202B4A0 * v2 = sub_0202B4A0(param0->unk_0C);

    GF_ASSERT(sizeof(UnkUnion_0206D1B8) == 40);
    MI_CpuClearFast(&v0, 40);

    sub_020021D0(v1->unk_00, sub_0202B42C(v2, 1, 0), 10 + 1);
    sub_0206CD70(param0, 2, param1, v1);
}

void sub_0206D424 (FieldSystem * param0)
{
    sub_0206D3E4(param0, 20);
}

void sub_0206D430 (FieldSystem * param0)
{
    sub_0206D3E4(param0, 4);
}

static int sub_0206D43C (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206D43C * v0 = (UnkStruct_0206D43C * )ov6_02246498(param2);

    sub_0206CD94(param1, 1, v0->unk_00, 0, ov6_02246490(param2), 1);
    sub_0206CDD0(param1, 0, param2);

    return 6;
}

static int sub_0206D474 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206D43C * v0 = (UnkStruct_0206D43C * )ov6_02246498(param2);

    sub_0206CD94(param1, 1, v0->unk_00, 0, ov6_02246490(param2), 1);
    sub_0206CDD0(param1, 0, param2);

    return 32;
}

void sub_0206D4AC (FieldSystem * param0, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206D4D4 * v1 = &v0.val5;

    v1->unk_00 = param1;
    v1->unk_02 = MapHeader_GetMapLabelTextID(param0->unk_1C->unk_00);

    sub_0206CD70(param0, 2, 6, v1);
}

static int sub_0206D4D4 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206D4D4 * v0 = (UnkStruct_0206D4D4 *)ov6_02246498(param2);

    sub_0200B8C8(param1, 0, v0->unk_02);
    sub_0206CDD0(param1, 1, param2);
    sub_0200B70C(param1, 2, v0->unk_00);

    return 10;
}

void sub_0206D504 (SaveData * param0, u16 param1, u8 param2)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206D530 * v1 = &v0.val6;

    if (param2 >= 10) {
        v1->unk_00 = param1;
        v1->unk_02 = param2;

        if (v1->unk_02 > 999) {
            v1->unk_02 = 999;
        }

        sub_0206CD7C(param0, 2, 7, v1);
    }
}

static int sub_0206D530 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206D530 * v0 = (UnkStruct_0206D530 *)ov6_02246498(param2);

    sub_0200B70C(param1, 0, v0->unk_00);
    sub_0200B60C(param1, 1, v0->unk_02, 3, 0, 1);
    sub_0206CDD0(param1, 2, param2);
    sub_0200B77C(param1, 3, v0->unk_00);

    return 11;
}

void sub_0206D578 (FieldSystem * param0, Pokemon * param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206D5B0 * v1 = &v0.val7;

    sub_0206CE38(param1, &v1->unk_00, &v1->unk_02, &v1->unk_03, &v1->unk_04);
    v1->unk_06 = MapHeader_GetMapLabelTextID(param0->unk_1C->unk_00);
    sub_0206CD70(param0, 2, 8, v1);
}

static int sub_0206D5B0 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206D5B0 * v0 = (UnkStruct_0206D5B0 *)ov6_02246498(param2);

    sub_0200B8C8(param1, 1, v0->unk_06);
    sub_0206CDD0(param1, 0, param2);
    sub_0206CE74(param1, 2, v0->unk_00, v0->unk_02, v0->unk_03, v0->unk_04);

    return 12;
}

static BOOL sub_0206D5F0 (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    UnkStruct_0206D5B0 * v0 = (UnkStruct_0206D5B0 *)ov6_02246498(param1);
    return sub_02026FE8(sub_02027560(param0->unk_0C), v0->unk_00);
}

void sub_0206D60C (FieldSystem * param0, Pokemon * param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206D644 * v1 = &v0.val8;

    sub_0206CE38(param1, &v1->unk_00, &v1->unk_02, &v1->unk_03, &v1->unk_04);
    sub_0206CE08(4, v1->unk_06, param1);
    sub_0206CD70(param0, 2, 10, v1);
}

static int sub_0206D644 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206D644 * v0 = (UnkStruct_0206D644 *)ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0206CE74(param1, 1, v0->unk_00, v0->unk_02, v0->unk_03, v0->unk_04);
    sub_0206CD94(param1, 2, v0->unk_06, v0->unk_02, v0->unk_03, 1);

    return 17 + inline_020564D0(5);
}

static BOOL sub_0206D6A8 (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    PokedexData * v0 = sub_02027560(param0->unk_0C);
    UnkStruct_0206D644 * v1 = (UnkStruct_0206D644 *)ov6_02246498(param1);

    return sub_02026FE8(v0, v1->unk_00);
}

void sub_0206D6C8 (FieldSystem * param0, int param1, int param2)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206D6E0 * v1 = &v0.val9;

    v1->unk_00 = param1;
    v1->unk_02 = param2;

    sub_0206CD70(param0, 2, 13, v1);
}

static int sub_0206D6E0 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206D6E0 * v0 = (UnkStruct_0206D6E0 *)ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0200BA94(param1, 1, v0->unk_00);
    sub_0200B60C(param1, 2, v0->unk_02, 3, 0, 1);

    return 24;
}

void sub_0206D720 (FieldSystem * param0)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206D75C * v1 = &v0.val10;
    TVBroadcast * v2 = SaveData_TVBroadcast(param0->unk_0C);
    UnkStruct_0202E808 * v3 = sub_0202E808(v2);

    if (v3->unk_07 == 0) {
        return;
    }

    v1->unk_00 = v3->unk_02;
    v1->unk_02 = v3->unk_04;
    v1->unk_03 = v3->unk_05;
    v1->unk_04 = v3->unk_06;
    v1->unk_05 = v3->unk_07;

    sub_0206CD70(param0, 2, 15, v1);
}

static int sub_0206D75C (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206D75C * v0 = (UnkStruct_0206D75C *)ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0206CE74(param1, 1, v0->unk_00, v0->unk_02, v0->unk_03, v0->unk_04);
    sub_0200B60C(param1, 2, v0->unk_05, 2, 0, 1);

    return 26;
}

static BOOL sub_0206D7A4 (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    PokedexData * v0 = sub_02027560(param0->unk_0C);
    UnkStruct_0206D75C * v1 = (UnkStruct_0206D75C *)ov6_02246498(param1);

    return sub_02026FE8(v0, v1->unk_00);
}

void sub_0206D7C4 (FieldSystem * param0)
{
    u32 v0, v1, v2, v3;
    u8 v4, v5;
    Pokemon * v6;
    UnkUnion_0206D1B8 v7;
    Party * v8;
    UnkStruct_0206D8B0 * v9 = &v7.val11;

    v0 = 0;
    v1 = 0;
    v2 = 0;
    v8 = Party_GetFromSavedata(param0->unk_0C);
    v4 = Party_GetCurrentCount(v8);

    for (v5 = 0; v5 < v4; v5++) {
        v6 = Party_GetPokemonBySlotIndex(v8, v5);

        if (Pokemon_GetValue(v6, MON_DATA_IS_EGG, NULL) == 0) {
            v3 = Pokemon_GetValue(v6, MON_DATA_GENDER, NULL);

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
            v6 = sub_02054A74(Party_GetFromSavedata(param0->unk_0C));
            sub_0206CE38(v6, &v9->unk_00, &v9->unk_02, &v9->unk_03, &v9->unk_04);
            sub_0206CD70(param0, 2, 16, v9);
        } else if ((v0 == 0) && (v1 == 1)) {
            v6 = sub_02054A74(Party_GetFromSavedata(param0->unk_0C));
            sub_0206CE38(v6, &v9->unk_00, &v9->unk_02, &v9->unk_03, &v9->unk_04);
            sub_0206CD70(param0, 2, 16, v9);
        }
    }

    return;
}

static int sub_0206D8B0 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206D8B0 * v0 = (UnkStruct_0206D8B0 *)ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0206CE74(param1, 1, v0->unk_00, v0->unk_02, v0->unk_03, v0->unk_04);

    if (v0->unk_02 == 0) {
        return 27;
    }

    return 28;
}

static BOOL sub_0206D8F0 (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    UnkStruct_0206D8B0 * v0 = (UnkStruct_0206D8B0 *)ov6_02246498(param1);

    return sub_02026FE8(sub_02027560(param0->unk_0C), v0->unk_00);
}

void sub_0206D90C (TVBroadcast * param0, Pokemon * param1, u16 param2)
{
    return;
}

static BOOL sub_0206D910 (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    return 0;
}

void sub_0206D914 (FieldSystem * param0, u16 param1, u8 param2, u16 param3)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206D94C * v1 = &v0.val13;

    v1->unk_00 = param1;
    v1->unk_02 = param2;
    v1->unk_04 = param3;

    if (param2 == 5) {
        (void)0;
    } else if (param2 == 4) {
        sub_0206CD70(param0, 2, 18, v1);
    } else if (param2 == 0) {
        sub_0206CD70(param0, 2, 19, v1);
    }
}

static int sub_0206D94C (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206D94C * v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0200B70C(param1, 1, v0->unk_00);
    sub_0200B60C(param1, 2, v0->unk_04, 2, 0, 1);

    return 30;
}

static int sub_0206D98C (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206D94C * v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0200B70C(param1, 1, v0->unk_00);

    return 31;
}

void sub_0206D9B4 (TVBroadcast * param0, Pokemon * param1, u8 param2)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206D9F4 * v1 = &v0.val14;

    v1->unk_06 = param2;
    v1->unk_05 = MTRNG_Next() % 3;

    sub_0206CE38(param1, &v1->unk_00, &v1->unk_02, &v1->unk_03, &v1->unk_04);
    sub_0202E43C(param0, 2, 21, (const u8 *)v1);
}

static int sub_0206D9F4 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206D9F4 * v0 = (UnkStruct_0206D9F4 *)ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0200BE64(param1, 1, v0->unk_06);
    sub_0206CE74(param1, 2, v0->unk_00, v0->unk_02, v0->unk_03, v0->unk_04);

    return 33 + inline_020564D0(3);
}

static BOOL sub_0206DA50 (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    UnkStruct_0206D9F4 * v0 = (UnkStruct_0206D9F4 *)ov6_02246498(param1);

    return sub_02026FE8(sub_02027560(param0->unk_0C), v0->unk_00);
}

static void sub_0206DA6C (UnkStruct_0206DA6C * param0, const TrainerInfo * param1)
{
    param0->unk_00 = TrainerInfo_Size();
    TrainerInfo_Copy(param1, (TrainerInfo *)param0->unk_04);
}

static void sub_0206DA84 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206DA6C * v0 = (UnkStruct_0206DA6C *)ov6_02246498(param2);
    TrainerInfo * v1 = (TrainerInfo *)&v0->unk_04;

    GF_ASSERT(TrainerInfo_Size() == v0->unk_00);

    sub_0206CDD0(param1, 0, param2);
    sub_0200B498(param1, 1, v1);
}

void sub_0206DAB8 (FieldSystem * param0, const TrainerInfo * param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206DA6C * v1 = &v0.val15;

    sub_0206DA6C(v1, param1);
    sub_0206CD70(param0, 2, 22, v1);
}

void sub_0206DAD4 (FieldSystem * param0, const TrainerInfo * param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206DA6C * v1 = &v0.val15;

    sub_0206DA6C(v1, param1);
    sub_0206CD70(param0, 2, 23, v1);
}

static int sub_0206DAF0 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    sub_0206DA84(param0, param1, param2);
    return 36;
}

static int sub_0206DAFC (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    sub_0206DA84(param0, param1, param2);
    return 37;
}

static BOOL sub_0206DB08 (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    return sub_0207D688(sub_0207D990(param0->unk_0C), 428, 1, 32);
}

void sub_0206DB20 (FieldSystem * param0)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206DB20 * v1 = &v0.val16;

    v1->unk_00 = 1;

    sub_0206CD70(param0, 2, 25, v1);
}

static int sub_0206DB38 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    sub_0206CDD0(param1, 0, param2);
    return 38;
}

static BOOL sub_0206DB48 (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    return inline_0208BE68(SaveData_Events(param0->unk_0C), 6);
}

void sub_0206DB5C (FieldSystem * param0, u8 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206DB74 * v1 = &v0.val17;

    v1->unk_00 = param1;

    sub_0206CD70(param0, 2, 26, v1);
}

static int sub_0206DB74 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206DB74 * v0 = (UnkStruct_0206DB74 *)ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0200C2A8(param1, 1, v0->unk_00);

    return 39;
}

static BOOL sub_0206DB9C (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    return inline_0208BE68(SaveData_Events(param0->unk_0C), 6);
}

void sub_0206DBB0 (SaveData * param0, u32 param1, Pokemon * param2, BOOL param3)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206DBE8 * v1 = &v0.val18;

    sub_0206CE38(param2, &v1->unk_02, &v1->unk_04, &v1->unk_05, &v1->unk_06);

    v1->unk_00 = param1;
    v1->unk_07 = param3;

    sub_0206CD58(param0, 3, 1, v1);
}

static int sub_0206DBE8 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206DBE8 * v0 = (UnkStruct_0206DBE8 *)ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0206CE74(param1, 1, v0->unk_02, v0->unk_04, v0->unk_05, v0->unk_06);
    sub_0200B60C(param1, 2, v0->unk_00, 4, 0, 1);

    if (v0->unk_07) {
        return 0;
    } else {
        return 1;
    }
}

static BOOL sub_0206DC3C (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    UnkStruct_0206DBE8 * v0 = (UnkStruct_0206DBE8 *)ov6_02246498(param1);

    if (sub_02026FE8(sub_02027560(param0->unk_0C), v0->unk_02) == 0) {
        return 0;
    }

    return inline_0208BE68(SaveData_Events(param0->unk_0C), 17);
}

void sub_0206DC6C (FieldSystem * param0, u32 param1, Pokemon * param2)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206DC9C * v1 = &v0.val19;

    sub_0206CE38(param2, &v1->unk_00, &v1->unk_02, &v1->unk_03, &v1->unk_04);
    v1->unk_08 = param1;
    sub_0206CD70(param0, 3, 3, v1);
}

static int sub_0206DC9C (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206DC9C * v0 = (UnkStruct_0206DC9C *)ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0206CE74(param1, 1, v0->unk_00, v0->unk_02, v0->unk_03, v0->unk_04);

    {
        u32 v1 = (((v0->unk_08 * 1000) / 254 + 5) / 10);

        sub_0200B60C(param1, 2, v1 / 10, 3, 0, 1);
        sub_0200B60C(param1, 3, v1 % 10, 1, 0, 1);
    }

    return 2;
}

static BOOL sub_0206DD1C (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    UnkStruct_0206DC9C * v0 = (UnkStruct_0206DC9C *)ov6_02246498(param1);
    return sub_02026FE8(sub_02027560(param0->unk_0C), v0->unk_00);
}

void sub_0206DD38 (FieldSystem * param0, u32 param1, u32 param2, u32 param3)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206DD5C * v1 = &v0.val20;

    if (param2 < 1000 + param1) {
        return;
    }

    v1->unk_00 = param1;
    v1->unk_04 = param2;
    v1->unk_08 = param3;

    sub_0206CD70(param0, 3, 4, v1);
}

static int sub_0206DD5C (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206DD5C * v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0200B60C(param1, 1, v0->unk_08, 10, 0, 1);
    sub_0200B60C(param1, 2, v0->unk_00, 6, 0, 1);
    sub_0200B60C(param1, 3, v0->unk_04, 6, 0, 1);

    return 3;
}

void sub_0206DDB8 (SaveData * param0, Pokemon * param1, u32 param2)
{
    u8 v0, v1;
    UnkUnion_0206D1B8 v2;
    UnkStruct_0206DE80 * v3 = &v2.val21;

    v1 = sub_0206DE4C(param1);

    switch (v1) {
    case 15:
    case 20:
    case 25:
    case 30:
    case 35:
    case 40:
        if (sub_02092464(param2) > 0xff) {
            GF_ASSERT(0);
            return;
        }

        sub_0206CE38(param1, &v3->unk_1C, &v3->unk_19, &v3->unk_1A, &v3->unk_1B);
        sub_0206CED0(32, param1, &v3->unk_18, v3->unk_00);

        v3->unk_16 = sub_02092464(param2);
        v3->unk_17 = v1;

        sub_0206CD7C(param0, 3, 5, v3);
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

static u8 sub_0206DE4C (Pokemon * param0)
{
    u8 v0, v1;

    v0 = 0;

    for (v1 = 0; v1 < (NELEMS(Unk_020EFDDC)); v1++) {
        if (Pokemon_GetValue(param0, Unk_020EFDDC[v1], NULL) == 1) {
            v0++;
        }
    }

    return v0;
}

static int sub_0206DE80 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206DE80 * v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);

    if (v0->unk_18) {
        sub_0206CD94(param1, 1, v0->unk_00, v0->unk_19, v0->unk_1A, 1);
    } else {
        sub_0206CE74(param1, 1, v0->unk_1C, v0->unk_19, v0->unk_1A, v0->unk_1B);
    }

    sub_0200B668(param1, 2, v0->unk_16);
    sub_0200B60C(param1, 3, v0->unk_17, 3, 0, 1);

    return 4;
}

void sub_0206DEEC (FieldSystem * param0, u16 param1, u16 param2)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206DF14 * v1 = &v0.val22;

    v1->unk_00 = param1;
    v1->unk_02 = param2;

    if (v1->unk_02 > 999) {
        v1->unk_02 = 999;
    }

    sub_0206CD70(param0, 3, 8, v1);
}

static int sub_0206DF14 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    u16 v0;
    UnkStruct_0206DF14 * v1 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0200BB04(param1, 1, v1->unk_00);

    v0 = v1->unk_02;

    if (v0 > 999) {
        v0 = 999;
    }

    sub_0200B60C(param1, 2, v0, 3, 0, 1);
    return 7;
}

void sub_0206DF60 (FieldSystem * param0, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206DF88 * v1 = &v0.val23;

    v1->unk_00 = param1;

    if (v1->unk_00 > 999) {
        v1->unk_00 = 999;
    }

    if (param1 > 1) {
        sub_0206CD70(param0, 3, 9, v1);
    }
}

static int sub_0206DF88 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    u16 v0;
    UnkStruct_0206DF88 * v1 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);

    v0 = v1->unk_00;

    if (v0 > 999) {
        v0 = 999;
    }

    sub_0200B60C(param1, 1, v0, 3, 0, 1);

    return 8;
}

static BOOL sub_0206DFC8 (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    return sub_0207D688(sub_0207D990(param0->unk_0C), 428, 1, 32);
}

void sub_0206DFE0 (SaveData * param0)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E018 * v1 = &v0.val24;
    UnkStruct_0202E828 * v2 = sub_0202E828(SaveData_TVBroadcast(param0));

    if (v2->unk_04 >= 30) {
        v1->unk_00 = *v2;
        v2->unk_00 = 0;

        sub_02025C84(27);
        sub_0206CD7C(param0, 3, 10, v1);
    }
}

static int sub_0206E018 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206E018 * v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0200B60C(param1, 1, v0->unk_00.unk_04, 4, 0, 1);

    return 9;
}

static BOOL sub_0206E04C (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    return inline_0208BE68(SaveData_Events(param0->unk_0C), 17);
}

void sub_0206E060 (SaveData * param0)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E098 * v1 = &v0.val25;
    UnkStruct_0202E834 * v2 = sub_0202E834(SaveData_TVBroadcast(param0));

    if (v2->unk_02 >= 10) {
        v1->unk_00 = *v2;
        v2->unk_00 = 0;

        sub_02025C84(27);
        sub_0206CD7C(param0, 3, 11, v1);
    }
}

static int sub_0206E098 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206E098 * v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0200B60C(param1, 1, v0->unk_00.unk_02, 4, 0, 1);

    return 10;
}

static BOOL sub_0206E0CC (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    return inline_0208BE68(SaveData_Events(param0->unk_0C), 9);
}

void sub_0206E0E0 (FieldSystem * param0, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E118 * v1 = &v0.val26;
    UnkStruct_0202E7FC * v2 = sub_0202E7FC(SaveData_TVBroadcast(param0->unk_0C));

    v1->unk_00 = *v2;
    v2->unk_00 = 0;
    v1->unk_04 = param1;

    sub_02025C84(27);
    sub_0206CD70(param0, 1, 2, v1);
}

static int sub_0206E118 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206E118 * v0 = ov6_02246498(param2);

    sub_0200B60C(param1, 0, v0->unk_00.unk_02, 4, 0, 1);
    sub_0206CDD0(param1, 1, param2);
    sub_0200BE48(param1, 2, v0->unk_04);

    if (v0->unk_00.unk_01 == 1) {
        return 8;
    } else {
        return 9;
    }
}

static BOOL sub_0206E160 (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    return inline_0208BE68(SaveData_Events(param0->unk_0C), 17);
}

void sub_0206E174 (FieldSystem * param0, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E1C0 * v1 = &v0.val27;
    Pokemon * v2;

    v2 = sub_02054A74(Party_GetFromSavedata(param0->unk_0C));

    sub_0206CE38(v2, &v1->unk_00, &v1->unk_02, &v1->unk_03, &v1->unk_04);
    sub_0206CED0(32, v2, &v1->unk_05, v1->unk_06);

    v1->unk_1C = param1;
    sub_0206CD70(param0, 1, 4, v1);
}

static int sub_0206E1C0 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206E1C0 * v0 = ov6_02246498(param2);

    if (v0->unk_05) {
        sub_0206CDD0(param1, 0, param2);
        sub_0206CE74(param1, 1, v0->unk_00, v0->unk_02, v0->unk_03, v0->unk_04);
        sub_0206CD94(param1, 2, v0->unk_06, v0->unk_02, v0->unk_03, 1);
        sub_0200BE48(param1, 3, v0->unk_1C);
        return 10;
    } else {
        sub_0206CDD0(param1, 0, param2);
        sub_0206CE74(param1, 1, v0->unk_00, v0->unk_02, v0->unk_03, v0->unk_04);

        sub_0200BE48(param1, 3, v0->unk_1C);
        return 11;
    }
}

static BOOL sub_0206E248 (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    UnkStruct_0206E1C0 * v0 = ov6_02246498(param1);

    return sub_02026FE8(sub_02027560(param0->unk_0C), v0->unk_00);
}

void sub_0206E264 (FieldSystem * param0, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E28C * v1 = &v0.val28;

    v1->unk_00 = PoketchSystem_CurrentAppID(param0->unk_04->unk_14);
    v1->unk_04 = param1;

    sub_0206CD70(param0, 1, 6, v1);
}

static int sub_0206E28C (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206E28C * v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0200B928(param1, 1, v0->unk_00);
    sub_0200BE48(param1, 2, v0->unk_04);

    return 16;
}

void sub_0206E2BC (FieldSystem * param0, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E300 * v1 = &v0.val29;
    UnkStruct_0202E7D8 * v2 = sub_0202E7D8(SaveData_TVBroadcast(param0->unk_0C));

    v1->unk_00 = *v2;
    v2->unk_00 = 0;
    v1->unk_0A = param1;

    sub_02025C84(27);
    sub_0206CD70(param0, 1, 7, v1);
}

static int sub_0206E300 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206E300 * v0 = ov6_02246498(param2);

    sub_0206CE74(param1, 0, v0->unk_00.unk_02, v0->unk_00.unk_04, v0->unk_00.unk_05, v0->unk_00.unk_06);
    sub_0200BBDC(param1, 1, sub_020958B8(v0->unk_00.unk_08));
    sub_0200BBA8(param1, 2, sub_02095888(v0->unk_00.unk_07));
    sub_0200B60C(param1, 3, v0->unk_00.unk_09, 1, 0, 1);
    sub_0206CDD0(param1, 4, param2);
    sub_0200BE48(param1, 5, v0->unk_0A);

    if (v0->unk_00.unk_09 == 1) {
        return 18;
    } else {
        return 17;
    }
}

static BOOL sub_0206E37C (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    UnkStruct_0206E300 * v0 = ov6_02246498(param1);
    return sub_02026FE8(sub_02027560(param0->unk_0C), v0->unk_00.unk_02);
}

void sub_0206E398 (FieldSystem * param0, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E3C8 * v1 = &v0.val30;

    v1->unk_02 = param1;

    {
        UnkStruct_0202A750 * v2 = sub_0202A750(param0->unk_0C);
        UnkStruct_02029C68 * v3 = sub_02029CA8(v2, 0);

        v1->unk_00 = sub_0202A184(v3);
    }

    sub_0206CD70(param0, 1, 9, v1);
}

static int sub_0206E3C8 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206E3C8 * v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0206CEA4(param1, 1, v0->unk_00);
    sub_0200BE48(param1, 2, v0->unk_02);

    return 20;
}

static BOOL sub_0206E3F8 (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    UnkStruct_0206E3C8 * v0 = ov6_02246498(param1);
    return sub_02026FE8(sub_02027560(param0->unk_0C), v0->unk_00);
}

void sub_0206E414 (FieldSystem * param0, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E428 * v1 = &v0.val31;

    v1->unk_00 = param1;
    sub_0206CD70(param0, 1, 10, v1);
}

static int sub_0206E428 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206E428 * v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    return 21 + v0->unk_00 - 1;
}

void sub_0206E448 (FieldSystem * param0, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E480 * v1 = &v0.val32;
    UnkStruct_0202E7F0 * v2 = sub_0202E7F0(SaveData_TVBroadcast(param0->unk_0C));

    v1->unk_00 = *v2;
    v1->unk_02 = param1;
    v2->unk_00 = 0;

    sub_02025C84(27);
    sub_0206CD70(param0, 1, 11, v1);
}

static int sub_0206E480 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206E480 * v0 = ov6_02246498(param2);
    int v1 = v0->unk_00.unk_01;

    sub_0206CDD0(param1, 0, param2);
    sub_0200BF74(param1, 1, v1);
    sub_0200BE48(param1, 2, v0->unk_02);

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

void sub_0206E4DC (FieldSystem * param0, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E520 * v1 = &v0.val33;
    UnkStruct_0202E7E4 * v2 = sub_0202E7E4(SaveData_TVBroadcast(param0->unk_0C));

    v1->unk_00 = *v2;
    v1->unk_24 = param1;
    v2->unk_00 = 0;

    sub_02025C84(27);
    sub_0206CD70(param0, 1, 13, v1);
}

static int sub_0206E520 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206E520 * v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0206CE74(param1, 1, v0->unk_00.unk_02, v0->unk_00.unk_04, v0->unk_00.unk_05, v0->unk_00.unk_06);
    sub_0200B6D8(param1, 2, v0->unk_00.unk_1E);
    sub_0200BE48(param1, 5, v0->unk_24);

    switch (v0->unk_00.unk_1F) {
    case 0:
        return 45;
    case 2:
        sub_0200BFAC(param1, 3, v0->unk_00.unk_20);
        return 44;
    case 1:
        sub_0200B70C(param1, 3, v0->unk_00.unk_22);
        return 46;
    }

    return 45;
}

void sub_0206E5A0 (FieldSystem * param0, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E5E4 * v1 = &v0.val34;
    UnkStruct_0202E810 * v2 = sub_0202E810(SaveData_TVBroadcast(param0->unk_0C));

    v1->unk_00 = *v2;
    v1->unk_1E = param1;
    v2->unk_00 = 0;

    sub_02025C84(27);
    sub_0206CD70(param0, 1, 14, v1);
}

static int sub_0206E5E4 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206E5E4 * v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0206CE74(param1, 1, v0->unk_00.unk_02, v0->unk_00.unk_04, v0->unk_00.unk_05, v0->unk_00.unk_06);

    if (v0->unk_00.unk_07) {
        sub_0206CD94(param1, 2, v0->unk_00.unk_08, v0->unk_00.unk_04, v0->unk_00.unk_05, 1);
    } else {
        sub_0206CE74(param1, 2, v0->unk_00.unk_02, v0->unk_00.unk_04, v0->unk_00.unk_05, v0->unk_00.unk_06);
    }

    sub_0200BE48(param1, 3, v0->unk_1E);
    return 47;
}

static BOOL sub_0206E654 (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    return inline_0208BE68(SaveData_Events(param0->unk_0C), 17);
}

void sub_0206E668 (FieldSystem * param0, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E680 * v1 = &v0.val35;

    v1->unk_00 = param1;
    sub_0206CD70(param0, 1, 15, v1);
}

static int sub_0206E680 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206E680 * v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0200BE48(param1, 1, v0->unk_00);

    return 48;
}

void sub_0206E6A8 (FieldSystem * param0, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E6C0 * v1 = &v0.val36;

    v1->unk_00 = param1;
    sub_0206CD70(param0, 1, 16, v1);
}

static int sub_0206E6C0 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206E6C0 * v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0200BE48(param1, 1, v0->unk_00);

    return 49;
}

void sub_0206E6E8 (FieldSystem * param0, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E700 * v1 = &v0.val37;

    v1->unk_00 = param1;
    sub_0206CD70(param0, 1, 17, v1);
}

static int sub_0206E700 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206E700 * v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0200BE48(param1, 1, v0->unk_00);

    return 50;
}

void sub_0206E728 (FieldSystem * param0, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E740 * v1 = &v0.val38;

    v1->unk_00 = param1;
    sub_0206CD70(param0, 1, 18, v1);
}

static int sub_0206E740 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206E740 * v0 = ov6_02246498(param2);

    sub_0206CDD0(param1, 0, param2);
    sub_0200BE48(param1, 1, v0->unk_00);

    return 51;
}

void sub_0206E768 (FieldSystem * param0, u16 param1)
{
    UnkUnion_0206D1B8 v0;
    UnkStruct_0206E768 * v1 = &v0.val39;
    UnkStruct_0202E81C * v2 = sub_0202E81C(SaveData_TVBroadcast(param0->unk_0C));

    v1->unk_00 = *v2;
    v1->unk_16 = param1;
    v2->unk_00 = 0;

    sub_02025C84(27);
    sub_0206CD70(param0, 1, 19, v1);
}

static int sub_0206E7AC (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    int v0;
    UnkStruct_0206E768 * v1 = ov6_02246498(param2);
    Strbuf* v2 = Strbuf_Init(64, 4);

    sub_0206CDD0(param1, 0, param2);
    Strbuf_CopyChars(v2, v1->unk_00.unk_06);
    sub_0200B48C(param1, 1, v2, v1->unk_00.unk_02, 0, v1->unk_00.unk_03);
    Strbuf_Free(v2);
    sub_0200BE48(param1, 2, v1->unk_16);

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

static BOOL sub_0206E834 (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    return inline_0208BE68(SaveData_Events(param0->unk_0C), 17);
}

static const u8 Unk_020EFD34[] = {
    0x1,
    0x2,
    0x3,
    0x4,
    0x5
};

static int sub_0206E848 (UnkStruct_0202B4A0 * param0)
{
    int v0, v1;

    for (v0 = 0, v1 = 0; v0 < NELEMS(Unk_020EFD34); v0++) {
        if (sub_0202B4AC(param0, Unk_020EFD34[v0])) {
            v1++;
        }
    }

    return v1;
}

static int sub_0206E870 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    int v0, v1, v2;
    int v3;
    UnkStruct_0202B4A0 * v4 = sub_0202B4A0(param0->unk_0C);

    v1 = sub_0206E848(v4);
    GF_ASSERT(v1 > 0);

    if (v1 > 1) {
        v1 = MTRNG_Next() % v1;
    } else {
        v1 = 0;
    }

    for (v0 = 0; v0 < NELEMS(Unk_020EFD34); v0++) {
        if (sub_0202B4AC(v4, Unk_020EFD34[v0])) {
            if (v1 == 0) {
                v2 = Unk_020EFD34[v0];
                break;
            } else {
                v1--;
            }
        }
    }

    GF_ASSERT(v1 == 0);

    v3 = inline_020564D0(17);

    if (v3 >= 9) {
        v3++;
    }

    sub_0200C054(param1, param0->unk_0C, v2, 0, 1);
    sub_0200C054(param1, param0->unk_0C, v2, 1, 0);
    sub_0200B7EC(param1, 2, v3);

    return 0;
}

static BOOL sub_0206E928 (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    UnkStruct_0202B4A0 * v0 = sub_0202B4A0(param0->unk_0C);

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

static int sub_0206E940 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    int v0, v1;

    v0 = Unk_02100BA4[inline_020564D0(NELEMS(Unk_02100BA4))];
    v1 = sub_0203A944(param0, v0);
    sub_0200B8C8(param1, 0, MapHeader_GetMapLabelTextID(v0));

    switch (v1) {
    case 0:
        switch (inline_020564D0(4)) {
        case 0:
            return 1;
        case 1:
            return 2;
        case 2:
            return 3;
        case 3:
            return 4;
        }
    case 1:
        return 5;
    case 2:
        return 6;
    case 3:
        return 7;
    case 5:
        return 8;
    case 6:
        return 9;
    case 7:
        return 10;
    case 4:
        return 11;
    case 11:
        return 12;
    default:
        GF_ASSERT(0);
    }

    return 1;
}

static BOOL sub_0206EA0C (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    return 1;
}

static int sub_0206EA10 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    TrainerInfo * v0 = SaveData_GetTrainerInfo(FieldSystem_SaveData(param0));
    int v1 = param0->unk_1C->unk_00;

    if ((v1 == 411) || ((v1 >= 412) && (v1 <= 417))) {
        sub_0200B498(param1, 0, v0);
        sub_0200B4BC(param1, 1, param0->unk_0C);
        return 13;
    }

    if ((v1 == 418) || ((v1 >= 422) && (v1 <= 425))) {
        sub_0200B4E4(param1, 1, param0->unk_0C);
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

    sub_0200B498(param1, 0, v0);
    sub_0200B4BC(param1, 1, param0->unk_0C);

    return 27;
}

static int sub_0206EB94 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    u16 v0, v1;
    UnkStruct_0202D7B0 * v2 = sub_0202D834(param0->unk_0C);

    ov6_0224322C(sub_0202D814(v2, 2), &v0, &v1);
    sub_0200B8C8(param1, 0, MapHeader_GetMapLabelTextID(v0));
    sub_0206CEA4(param1, 1, v1);

    return 29;
}

static BOOL sub_0206EBD4 (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    UnkStruct_0202D7B0 * v0 = sub_0202D834(param0->unk_0C);
    return sub_0202D898(v0);
}

static BOOL sub_0206EBE4 (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    return 0;
}

static const u16 Unk_020EFD3C[] = {
    0x0,
    0x1,
    0x2,
    0x3,
    0x4,
    0x5,
    0x6,
    0x7,
    0x8,
    0x9,
    0xA,
    0xB,
    0xC,
    0xD,
    0xE,
    0xF,
    0x10,
    0x11
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

static int sub_0206EBE8 (FieldSystem * param0)
{
    u8 v0[NELEMS(Unk_020EFD3C)];
    u8 v1[NELEMS(Unk_020F0074) / 2];
    int v2, v3;
    UnkStruct_020507E4 * v4 = SaveData_Events(param0->unk_0C);

    for (v2 = 0; v2 < NELEMS(Unk_020EFD3C); v2++) {
        v0[v2] = inline_0208BE68(v4, Unk_020EFD3C[v2]);
    }

    for (v2 = 0, v3 = 0; v2 < NELEMS(Unk_020F0074) / 2; v2++) {
        if (v0[Unk_020F0074[v2 * 2]]) {
            v1[v3] = v2;
            v3++;
        }
    }

    return v1[inline_020564D0(v3)];
}

static int sub_0206EC90 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_02027854 * v0 = sub_02027854(param0->unk_0C);
    int v1, v2;

    v1 = sub_0206EBE8(param0);
    v2 = Unk_020F0074[v1 * 2 + 1];
    sub_0200B8C8(param1, 0, MapHeader_GetMapLabelTextID(v2));

    switch (sub_02027D04(v0, v1)) {
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

static BOOL sub_0206ECFC (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    UnkStruct_020507E4 * v0 = SaveData_Events(param0->unk_0C);
    return inline_0208BE68(v0, 9);
}

static BOOL sub_0206ED10 (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    return 0;
}

static int sub_0206ED14 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    u32 v0, v1;
    u8 v2;
    Pokemon * v3;
    BoxPokemon * v4;
    int v5, v6;

    v5 = 0xff;
    v6 = 0xff;
    v0 = (LCRNG_Next() % 0xffff);
    v2 = Pokemon_GetNatureOf(v0);

    sub_0200B6D8(param1, 0, v2);

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

        sub_0200B890(param1, 2, v5);
        return 45;
    }

    for (v1 = 0; v1 < 5; v1++) {
        if (Pokemon_GetStatAffinityOf(v2, 1 + v1) > 0) {
            v6 = v1;
            break;
        }
    }

    sub_0200B824(param1, 1, 1 + v6);
    return 44;
}

static int sub_0206EDAC (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_0206C638 * v0;
    UnkStruct_0202D7B0 * v1;
    u16 v2, v3;
    u32 v4, v5;
    Strbuf* v6 = Strbuf_Init(22, 4);
    TrainerInfo * v7 = SaveData_GetTrainerInfo(FieldSystem_SaveData(param0));

    v1 = sub_0202D834(param0->unk_0C);
    v2 = (LCRNG_Next() % 29);

    sub_02071D10(sub_0206C3C8(v2), 4, v6);
    sub_0200B48C(param1, 0, v6, 0, 1, GAME_LANGUAGE);
    Strbuf_Free(v6);

    for (v3 = 0; v3 < 6; v3++) {
        if (sub_0202D8F8(v1, v3)) {
            v0 = sub_0202D924(v1, v3);

            v4 = sub_0202D93C(v0, 4);
            v5 = sub_0202D93C(v0, 3);

            sub_0206CE74(param1, 1, v4, Pokemon_GetGenderOf(v4, v5), TrainerInfo_RegionCode(v7), TrainerInfo_GameCode(v7));
            break;
        }
    }

    return 49;
}

static BOOL sub_0206EE74 (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    int v0;
    UnkStruct_0202D7B0 * v1;

    v1 = sub_0202D834(param0->unk_0C);

    for (v0 = 0; v0 < 6; v0++) {
        if (sub_0202D8F8(v1, v0)) {
            return 1;
        }
    }

    return 0;
}

static int sub_0206EE9C (UnkStruct_0202A750 * param0)
{
    int v0, v1;

    for (v0 = 0, v1 = 0; v0 < 11; v0++) {
        if (sub_02029D10(param0, v0) == 1) {
            v1++;
        }
    }

    return v1;
}

static int sub_0206EEBC (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    UnkStruct_02029C68 * v0;
    int v1, v2, v3, v4;
    UnkStruct_0202A750 * v5 = sub_0202A750(param0->unk_0C);

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
        Strbuf* v7 = Strbuf_Init(7 + 1, 4);
        int v8 = sub_0202A1C0(v0);

        sub_0202A1A0(v0, v7);
        sub_0200B48C(param1, 0, v7, v8, 1, sub_0202A200(v0));
        Strbuf_Free(v7);

        v6 = sub_0202A1F4(v0);
        sub_0200BE48(param1, 1, v6);
    }

    return 52;
}

static BOOL sub_0206EF64 (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    UnkStruct_0202A750 * v0 = sub_0202A750(param0->unk_0C);

    if (sub_0206EE9C(v0) != 0) {
        return 1;
    } else {
        return 0;
    }
}

static int sub_0206EF7C (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    u16 v0;

    v0 = 0;

    if (sub_0206A954(SaveData_Events(param0->unk_0C)) == 1) {
        v0 = (LCRNG_Next() % 8);
    } else if (inline_0208BE68(SaveData_Events(param0->unk_0C), 11) == 1) {
        v0 = (LCRNG_Next() % 5);
    } else if (inline_0208BE68(SaveData_Events(param0->unk_0C), 10) == 1) {
        v0 = (LCRNG_Next() % 4);
    } else if (inline_0208BE68(SaveData_Events(param0->unk_0C), 18) == 1) {
        v0 = (LCRNG_Next() % 2);
    }

    return 0 + v0;
}

static int sub_0206F01C (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    Strbuf* v0;
    u16 v1, v2, v3;
    const PokedexData * v4 = sub_02027560(param0->unk_0C);

    v1 = (LCRNG_Next() % (NATIONAL_DEX_COUNT - 1)) + 1;

    for (v2 = 1; v2 <= NATIONAL_DEX_COUNT; v2++) {
        if (sub_02026FE8(v4, v1) == 1) {
            v3 = v1;
            break;
        }

        v1++;

        if (v1 == NATIONAL_DEX_COUNT) {
            v1 = 1;
        }
    }

    v0 = sub_0206F0D8(v3, 4);

    sub_0200B48C(param1, 0, v0, 0, 1, GAME_LANGUAGE);
    Strbuf_Free(v0);

    v1 = (LCRNG_Next() % 3);

    if (v1 == 0) {
        return 8;
    } else if (v1 == 1) {
        v1 = (LCRNG_Next() % 34) + 25;
        sub_0200B60C(param1, 1, v1, 2, 0, 1);
        return 9;
    } else {
        return 10;
    }
}

static Strbuf* sub_0206F0D8 (u16 param0, u32 param1)
{
    MessageLoader * v0;
    Strbuf* v1;

    v0 = MessageLoader_Init(1, 26, 412, param1);
    v1 = MessageLoader_GetNewStrbuf(v0, param0);

    MessageLoader_Free(v0);
    return v1;
}

static BOOL sub_0206F100 (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    const PokedexData * v0 = sub_02027560(param0->unk_0C);

    if (sub_02027520(v0) == 1) {
        return 1;
    } else {
        return 0;
    }
}

static int sub_0206F118 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    u16 v0;

    v0 = (LCRNG_Next() % 3);

    if (v0 == 0) {
        return 11;
    } else if (v0 == 1) {
        return 12;
    } else {
        return 13;
    }
}

static int sub_0206F13C (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    u16 v0;

    v0 = (LCRNG_Next() % 3);

    if (v0 == 0) {
        return 14;
    } else if (v0 == 1) {
        return 15;
    } else {
        return 16;
    }
}

static int sub_0206F160 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    Strbuf* v0;
    u16 v1, v2;
    Pokemon * v3;
    Party * v4;
    TrainerInfo * v5 = SaveData_GetTrainerInfo(param0->unk_0C);
    PokedexData * v6 = sub_02027560(param0->unk_0C);

    v4 = Party_GetFromSavedata(param0->unk_0C);
    v3 = Party_GetPokemonBySlotIndex(v4, sub_0205E1B4(param0->unk_0C));

    sub_0206CE74(param1, 0, Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL), Pokemon_GetValue(v3, MON_DATA_GENDER, NULL), TrainerInfo_RegionCode(v5), TrainerInfo_GameCode(v5));
    sub_0200BFAC(param1, 1, (LCRNG_Next() % 100));

    v1 = (LCRNG_Next() % (NATIONAL_DEX_COUNT - 2) + 1);

    for (v2 = 1; v2 <= NATIONAL_DEX_COUNT; v2++) {
        if (sub_02026FE8(v6, v1) == 1) {
            v0 = sub_0206F0D8(v1, 4);
            sub_0200B48C(param1, 2, v0, 0, 1, GAME_LANGUAGE);
            Strbuf_Free(v0);
            break;
        }

        v1++;

        if (v1 >= NATIONAL_DEX_COUNT) {
            v1 = 1;
        }
    }

    sub_0200B630(param1, 3, (LCRNG_Next() % 467 - 2) + 1);

    return 17;
}

static BOOL sub_0206F260 (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    const PokedexData * v0 = sub_02027560(param0->unk_0C);

    if (sub_02027520(v0) == 1) {
        return 1;
    } else {
        return 0;
    }
}

static int sub_0206F278 (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    return 18;
}

static int sub_0206F27C (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    return 19;
}

static BOOL sub_0206F280 (FieldSystem * param0, UnkStruct_ov6_022465F4 * param1)
{
    if (TrainerInfo_HasBadge(SaveData_GetTrainerInfo(param0->unk_0C), 0) == 1) {
        return 1;
    } else {
        return 0;
    }
}

static int sub_0206F29C (FieldSystem * param0, StringFormatter * param1, UnkStruct_ov6_022465F4 * param2)
{
    u16 v0;

    v0 = (LCRNG_Next() % 9);

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
    {sub_0206D230, sub_0206D320},
    {sub_0206D2E0, NULL},
    {sub_0206D374, sub_0206D3C0},
    {sub_0206D43C, NULL},
    {NULL, NULL},
    {sub_0206D4D4, NULL},
    {sub_0206D530, NULL},
    {sub_0206D5B0, sub_0206D5F0},
    {NULL, NULL},
    {sub_0206D644, sub_0206D6A8},
    {NULL, NULL},
    {NULL, NULL},
    {sub_0206D6E0, sub_0206DB08},
    {NULL, NULL},
    {sub_0206D75C, sub_0206D7A4},
    {sub_0206D8B0, sub_0206D8F0},
    {NULL, sub_0206D910},
    {sub_0206D94C, NULL},
    {sub_0206D98C, NULL},
    {sub_0206D474, NULL},
    {sub_0206D9F4, sub_0206DA50},
    {sub_0206DAF0, sub_0206DB08},
    {sub_0206DAFC, sub_0206DB08},
    {NULL, NULL},
    {sub_0206DB38, sub_0206DB48},
    {sub_0206DB74, sub_0206DB9C}
};

static const UnkStruct_020EFFA4 Unk_020EFE2C[11] = {
    {sub_0206DBE8, sub_0206DC3C},
    {NULL, NULL},
    {sub_0206DC9C, sub_0206DD1C},
    {sub_0206DD5C, NULL},
    {sub_0206DE80, NULL},
    {NULL, NULL},
    {NULL, NULL},
    {sub_0206DF14, sub_0206DFC8},
    {sub_0206DF88, sub_0206DFC8},
    {sub_0206E018, sub_0206E04C},
    {sub_0206E098, sub_0206E0CC}
};

static const UnkStruct_020EFFA4 Unk_020EFF0C[19] = {
    {NULL, NULL},
    {sub_0206E118, sub_0206E160},
    {NULL, NULL},
    {sub_0206E1C0, sub_0206E248},
    {NULL, NULL},
    {sub_0206E28C, NULL},
    {sub_0206E300, sub_0206E37C},
    {NULL, NULL},
    {sub_0206E3C8, sub_0206E3F8},
    {sub_0206E428, NULL},
    {sub_0206E480, NULL},
    {NULL, NULL},
    {sub_0206E520, NULL},
    {sub_0206E5E4, sub_0206E654},
    {sub_0206E680, NULL},
    {sub_0206E6C0, NULL},
    {sub_0206E700, NULL},
    {sub_0206E740, NULL},
    {sub_0206E7AC, sub_0206E834}
};

static const UnkStruct_020EFFA4 Unk_020EFE84[17] = {
    {sub_0206E870, sub_0206E928},
    {sub_0206E940, sub_0206EA0C},
    {sub_0206EA10, NULL},
    {NULL, NULL},
    {sub_0206EB94, sub_0206EBD4},
    {NULL, NULL},
    {NULL, sub_0206EBE4},
    {NULL, NULL},
    {sub_0206EC90, sub_0206ECFC},
    {NULL, NULL},
    {NULL, sub_0206ED10},
    {sub_0206ED14, NULL},
    {NULL, NULL},
    {NULL, NULL},
    {sub_0206EDAC, sub_0206EE74},
    {NULL, NULL},
    {sub_0206EEBC, sub_0206EF64}
};

static const UnkStruct_020EFFA4 Unk_020EFD9C[8] = {
    {sub_0206EF7C, NULL},
    {sub_0206F01C, sub_0206F100},
    {sub_0206F118, NULL},
    {sub_0206F13C, NULL},
    {sub_0206F160, sub_0206F260},
    {sub_0206F278, NULL},
    {sub_0206F27C, sub_0206F280},
    {sub_0206F29C, NULL}
};

void sub_0206F2F0 (SaveData * param0)
{
    TVBroadcast * v0 = SaveData_TVBroadcast(param0);

    sub_0206DFE0(param0);
    sub_0206E060(param0);

    sub_0206D0F0(v0);
    sub_0206D12C(v0);

    return;
}
