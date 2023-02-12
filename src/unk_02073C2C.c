#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02007C7C_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02015F84_decl.h"
#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_0202CC84_decl.h"
#include "struct_decls/struct_02073C74_sub2_decl.h"
#include "struct_decls/struct_party_decl.h"

#include "struct_defs/struct_02007C10.h"
#include "struct_defs/struct_02008A90.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_0202818C.h"
#include "struct_defs/struct_0202CA28.h"
#include "struct_defs/struct_02073C74.h"
#include "struct_defs/struct_02073C74_sub1.h"
#include "struct_defs/struct_02073C74_sub2_t.h"
#include "struct_defs/struct_02075454.h"
#include "struct_defs/struct_02075454_1.h"
#include "struct_defs/struct_02075454_2.h"
#include "struct_defs/struct_02075454_3.h"
#include "struct_defs/struct_02075874.h"
#include "struct_defs/struct_0207821C.h"
#include "struct_defs/struct_0207825C.h"
#include "struct_defs/struct_0207825C_1.h"
#include "struct_defs/struct_0207825C_10.h"
#include "struct_defs/struct_0207825C_11.h"
#include "struct_defs/struct_0207825C_12.h"
#include "struct_defs/struct_0207825C_13.h"
#include "struct_defs/struct_0207825C_14.h"
#include "struct_defs/struct_0207825C_15.h"
#include "struct_defs/struct_0207825C_16.h"
#include "struct_defs/struct_0207825C_17.h"
#include "struct_defs/struct_0207825C_18.h"
#include "struct_defs/struct_0207825C_19.h"
#include "struct_defs/struct_0207825C_2.h"
#include "struct_defs/struct_0207825C_20.h"
#include "struct_defs/struct_0207825C_21.h"
#include "struct_defs/struct_0207825C_22.h"
#include "struct_defs/struct_0207825C_23.h"
#include "struct_defs/struct_0207825C_3.h"
#include "struct_defs/struct_0207825C_4.h"
#include "struct_defs/struct_0207825C_5.h"
#include "struct_defs/struct_0207825C_6.h"
#include "struct_defs/struct_0207825C_7.h"
#include "struct_defs/struct_0207825C_8.h"
#include "struct_defs/struct_0207825C_9.h"
#include "struct_defs/struct_020789BC.h"
#include "struct_defs/struct_020789F4.h"
#include "struct_defs/struct_02078B40.h"
#include "overlay005/struct_ov5_021DE5D0.h"
#include "overlay104/struct_ov104_0223F9E0.h"

#include "unk_020021B0.h"
#include "unk_02005474.h"
#include "unk_02006224.h"
#include "narc.h"
#include "unk_0200AC5C.h"
#include "unk_0200B29C.h"
#include "unk_0200C6E4.h"
#include "unk_0201378C.h"
#include "unk_02015F84.h"
#include "unk_02017038.h"
#include "heap.h"
#include "unk_0201D15C.h"
#include "unk_020218BC.h"
#include "unk_02023790.h"
#include "unk_02025E68.h"
#include "unk_02028124.h"
#include "unk_0202C9F4.h"
#include "unk_02073C2C.h"
#include "move_table.h"
#include "unk_02079170.h"
#include "party.h"
#include "item.h"
#include "unk_02092494.h"
#include "pokemon.h"

#include "constants/species.h"

static const s8 Unk_020F0695[][5] = {
    { 0x0, 0x0, 0x0, 0x0, 0x0 },
    { 0x1, 0x0, 0x0, 0x0, -0x1 },
    { 0x1, 0x0, -0x1, 0x0, 0x0 },
    { 0x1, -0x1, 0x0, 0x0, 0x0 },
    { 0x1, 0x0, 0x0, -0x1, 0x0 },
    { -0x1, 0x0, 0x0, 0x0, 0x1 },
    { 0x0, 0x0, 0x0, 0x0, 0x0 },
    { 0x0, 0x0, -0x1, 0x0, 0x1 },
    { 0x0, -0x1, 0x0, 0x0, 0x1 },
    { 0x0, 0x0, 0x0, -0x1, 0x1 },
    { -0x1, 0x0, 0x1, 0x0, 0x0 },
    { 0x0, 0x0, 0x1, 0x0, -0x1 },
    { 0x0, 0x0, 0x0, 0x0, 0x0 },
    { 0x0, -0x1, 0x1, 0x0, 0x0 },
    { 0x0, 0x0, 0x1, -0x1, 0x0 },
    { -0x1, 0x1, 0x0, 0x0, 0x0 },
    { 0x0, 0x1, 0x0, 0x0, -0x1 },
    { 0x0, 0x1, -0x1, 0x0, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x0 },
    { 0x0, 0x1, 0x0, -0x1, 0x0 },
    { -0x1, 0x0, 0x0, 0x1, 0x0 },
    { 0x0, 0x0, 0x0, 0x1, -0x1 },
    { 0x0, 0x0, -0x1, 0x1, 0x0 },
    { 0x0, -0x1, 0x0, 0x1, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x0 },
};

void sub_02073C2C(Pokemon * param0);
void sub_02073C54(BoxPokemon *boxMon);
int sub_02073C70(void);
Pokemon * sub_02073C74(u32 param0);
BOOL sub_02073C88(Pokemon * param0);
BOOL sub_02073CD4(Pokemon * param0, BOOL param1);
BOOL sub_02073D20(BoxPokemon *boxMon);
BOOL sub_02073D48(BoxPokemon *boxMon, BOOL param1);
void sub_02073D80(Pokemon * param0, int param1, int param2, int param3, int param4, u32 param5, int param6, u32 param7);
void sub_02073E18(BoxPokemon *boxMon, int param1, int param2, int param3, int param4, u32 param5, int param6, u32 param7);
void sub_02074044(Pokemon *, u16 param0, u8 param1, u8 param2, u8 param3);
void sub_02074088(Pokemon *, u16 param0, u8 param1, u8 param2, u8 param3, u8 param4, u8 param5);
u32 sub_02074128(u16 param0, u8 param1, u8 param2);
void sub_02074158(Pokemon *, u16 param0, u8 param1, u32 param2, u32 param3);
void sub_0207418C(Pokemon * param0);
void sub_020741B8(Pokemon * param0);
u32 GetMonData(Pokemon * param0, int param1, void * param2);
static u32 sub_020744E8(Pokemon * param0, int param1, void * param2);
u32 sub_02074570(BoxPokemon *boxMon, int param1, void * param2);
static u32 GetBoxMonData(BoxPokemon *boxMon, int param1, void * param2);
void sub_02074B30(Pokemon * param0, int param1, const void * param2);
static void sub_02074BC0(Pokemon * param0, int param1, const void * param2);
void SetBoxMonData(BoxPokemon *boxMon, int param1, const void * param2);
static void SetMonSubstructData(BoxPokemon *boxMon, int field, const void * param2);
void sub_0207536C(Pokemon * param0, int param1, int param2);
static void sub_020753F4(Pokemon * param0, int param1, int param2);
static void sub_02075454(BoxPokemon *boxMon, int param1, int param2);
u32 sub_020759CC(int param0, int param1, int param2);
u32 sub_020759F0(int param0, int param1);
u8 sub_02075A10(Pokemon * param0);
u32 sub_02075A70(Pokemon * param0);
u32 sub_02075A78(BoxPokemon *boxMon);
u32 sub_02075AAC(Pokemon * param0);
u32 sub_02075AD0(int param0, int param1);
void sub_02075AE4(int param0, u32 * param1);
u32 sub_02075B00(int param0, int param1);
u32 sub_02075B38(Pokemon * param0);
u32 sub_02075B40(BoxPokemon *boxMon);
u32 sub_02075B78(u16 species, u32 exp);
u8 sub_02075BCC(Pokemon * param0);
u8 sub_02075BD4(BoxPokemon *boxMon);
u8 GetNatureFromPersonality(u32 personality);
u16 ModifyStatByNature(u8 nature, u16 stat, u8 statIndex);
s8 sub_02075C60(u8 param0, u8 param1);
void sub_02075C74(Pokemon * param0, u8 param1, u16 param2);
u8 sub_02075D6C(Pokemon * param0);
u8 sub_02075D74(BoxPokemon *boxMon);
u8 sub_02075DAC(u16 param0, u32 param1);
u8 sub_02075E0C(Pokemon * param0);
u8 sub_02075E14(BoxPokemon *boxMon);
u8 sub_02075E38(u32 param0, u32 param1);
u32 sub_02075E64(u32 param0);
void sub_02075EF4(UnkStruct_02008A90 * param0, Pokemon * param1, u8 param2);
void sub_02075F0C(UnkStruct_02008A90 * param0, BoxPokemon *boxMon, u8 param2, int param3);
void sub_02075FB4(UnkStruct_02008A90 * param0, u16 species, u8 param2, u8 param3, u8 param4, u8 param5, u32 param6);
u8 SanitizeFormId(u16 species, u8 formId);
u8 sub_020765AC(Pokemon * param0, u8 param1);
u8 sub_020765C4(BoxPokemon *boxMon, u8 param1, int param2);
u8 sub_02076648(u16 param0, u8 param1, u8 param2, u8 param3, u32 param4);
void sub_0207697C(UnkStruct_02008A90 * param0, u16 param1);
UnkStruct_0200D0F4 * sub_02076994(UnkStruct_0200C6E4 * param0, UnkStruct_0200C704 * param1, UnkStruct_02002F38 * param2, int param3, int param4, int param5, int param6, int param7, int param8);
void sub_02076AAC(int param0, int param1, UnkStruct_ov5_021DE5D0 * param2);
u32 sub_02076AF0(void);
u32 sub_02076AF4(void);
u8 sub_02076AF8(Pokemon * param0);
u8 sub_02076B00(BoxPokemon *boxMon);
BoxPokemon *sub_02076B10(Pokemon * param0);
u8 sub_02076B14(Pokemon * param0);
u16 sub_02076B94(Party * param0, Pokemon * param1, u8 param2, u16 param3, int * param4);
void sub_02077020(BoxPokemon *boxMon);
u16 sub_020770C4(Pokemon * param0, u16 param1);
u16 sub_020770D4(BoxPokemon *boxMon, u16 param1);
void sub_02077134(Pokemon * param0, u16 param1);
void sub_02077144(BoxPokemon *boxMon, u16 param1);
void sub_020771F8(Pokemon * param0, u16 param1, u8 param2);
void sub_02077230(Pokemon * param0, u16 param1, u8 param2);
void sub_02077238(BoxPokemon *boxMon, u16 param1, u8 param2);
u16 sub_0207727C(Pokemon * param0, int * param1, u16 * param2);
void sub_02077344(Pokemon * param0, int param1, int param2);
void sub_0207734C(BoxPokemon *boxMon, int param1, int param2);
void sub_02077408(Pokemon * param0, u32 param1);
BOOL sub_0207749C(Pokemon * param0, u16 param1);
void sub_020774C8(BoxPokemon *boxMon, Pokemon * param1);
u8 sub_02077550(Party * param0);
u16 sub_020775A4(u16 param0);
u16 sub_020775C4(u16 param0);
void sub_020775EC(Pokemon * param0, Pokemon * param1);
void CopyBoxPokemon(BoxPokemon *src, BoxPokemon *dest);
void sub_02077618(Pokemon * param0, BoxPokemon *boxMon);
s8 sub_0207762C(Pokemon * param0, int param1);
s8 sub_02077634(BoxPokemon *boxMon, int param1);
s8 sub_02077648(u32 param0, int param1);
void sub_020776B0(Party * param0);
u8 sub_02077758(Party * param0, u8 param1);
void sub_020777B4(Party * param0, s32 param1);
void sub_0207782C(Party * param0);
BOOL sub_020778D8(Pokemon * param0);
BOOL sub_020778E0(BoxPokemon *boxMon);
BOOL sub_020778F8(Pokemon * param0);
BOOL sub_02077900(BoxPokemon *boxMon);
void sub_02077928(Pokemon * param0);
void sub_02077930(BoxPokemon *boxMon);
u8 sub_02077988(u16 param0);
int sub_02077A00(Pokemon * param0);
int sub_02077A1C(BoxPokemon *boxMon);
void sub_02077ACC(Pokemon * param0, int param1);
void sub_02077ADC(BoxPokemon *boxMon, int param1);
void sub_02077D28(int param0, int param1, u16 * param2);
void sub_02077D3C(UnkStruct_0202CC84 * param0, int param1, u16 param2, int param3, int param4, int param5, int param6, int param7);
void sub_02077E64(Pokemon * param0, UnkStruct_02025E6C * param1, int param2, int param3, int param4, int param5);
void sub_02077EA4(BoxPokemon *boxMon, UnkStruct_02025E6C * param1, int param2, int param3, int param4, int param5);
void sub_02077EE4(Pokemon * param0, UnkStruct_02025E6C * param1, int param2, int param3, int param4, int param5);
void sub_02077EF8(BoxPokemon *boxMon, UnkStruct_02025E6C * param1, int param2, int param3, int param4, int param5);
void sub_02077F0C(Pokemon * param0, u32 param1, int param2);
BOOL sub_02077FB4(Pokemon * param0, u8 param1);
BOOL sub_02077FBC(BoxPokemon *boxMon, u8 param1);
BOOL sub_02077FE4(u16 param0, int param1, u8 param2);
void sub_0207803C(Pokemon * param0);
void sub_02078044(BoxPokemon *boxMon);
void sub_020780C4(Pokemon * param0, u32 param1);
static void sub_020781F8(int param0, UnkStruct_02075874 * param1);
static void sub_02078208(int param0, int param1, UnkStruct_02075874 * param2);
static void sub_0207821C(int param0, UnkStruct_0207821C * param1);
static void sub_0207822C(void * param0, u32 param1, u32 param2);
static void sub_02078234(void * param0, u32 param1, u32 param2);
static u16 sub_0207823C(void * param0, u32 param1);
static void * sub_0207825C(BoxPokemon *boxMon, u32 param1, u8 param2);
static int sub_02078740(int param0, int param1);
u32 sub_020787CC(int param0);
int sub_020787EC(u32 param0);
BOOL sub_02078804(u16 param0);
BOOL sub_02078838(Pokemon * param0);
int sub_020788D0(int param0);
static void sub_02076300(UnkStruct_02008A90 * param0, u16 species, u8 param2, u8 param3, u8 param4, u8 param5, u32 param6);
static u8 sub_020767BC(u16 param0, u8 param1, u8 param2, u8 param3, u32 param4);

void sub_02073C2C (Pokemon * param0)
{
    MI_CpuClearFast(param0, sizeof(Pokemon));

    sub_0207822C(&param0->unk_00.unk_08, sizeof(PokemonSubstruct0) * 4, param0->unk_00.unk_06);
    sub_0207822C(&param0->unk_08, sizeof(UnkStruct_02073C74_sub2), param0->unk_00.personality);
}

void sub_02073C54 (BoxPokemon *boxMon)
{
    MI_CpuClearFast(boxMon, sizeof(BoxPokemon));
    sub_0207822C(boxMon->unk_08, sizeof(PokemonSubstruct0) * 4, boxMon->unk_06);
}

int sub_02073C70 (void)
{
    return sizeof(Pokemon);
}

Pokemon * sub_02073C74 (u32 param0)
{
    Pokemon * v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(Pokemon));
    sub_02073C2C(v0);

    return v0;
}

BOOL sub_02073C88 (Pokemon * param0)
{
    BOOL v0;

    v0 = 0;

    if (param0->unk_00.unk_04_0 == 0) {
        v0 = 1;
        GF_ASSERT(param0->unk_00.unk_04_1 == 0);

        param0->unk_00.unk_04_0 = 1;
        param0->unk_00.unk_04_1 = 1;

        sub_02078234(&param0->unk_08, sizeof(UnkStruct_02073C74_sub2), param0->unk_00.personality);
        sub_02078234(&param0->unk_00.unk_08, sizeof(PokemonSubstruct0) * 4, param0->unk_00.unk_06);
    }

    return v0;
}

BOOL sub_02073CD4 (Pokemon * param0, BOOL param1)
{
    BOOL v0;

    v0 = 0;

    if ((param0->unk_00.unk_04_0 == 1) && (param1 == 1)) {
        v0 = 1;
        param0->unk_00.unk_04_0 = 0;
        param0->unk_00.unk_04_1 = 0;

        sub_0207822C(&param0->unk_08, sizeof(UnkStruct_02073C74_sub2), param0->unk_00.personality);
        param0->unk_00.unk_06 = sub_0207823C(&param0->unk_00.unk_08, sizeof(PokemonSubstruct0) * 4);
        sub_0207822C(&param0->unk_00.unk_08, sizeof(PokemonSubstruct0) * 4, param0->unk_00.unk_06);
    }

    return v0;
}

BOOL sub_02073D20 (BoxPokemon *boxMon)
{
    BOOL v0;

    v0 = 0;

    if (boxMon->unk_04_1 == 0) {
        v0 = 1;
        boxMon->unk_04_1 = 1;
        sub_02078234(boxMon->unk_08, sizeof(PokemonSubstruct0) * 4, boxMon->unk_06);
    }

    return v0;
}

BOOL sub_02073D48 (BoxPokemon *boxMon, BOOL param1)
{
    BOOL v0;

    v0 = 0;

    if ((boxMon->unk_04_1 == 1) && (param1 == 1)) {
        v0 = 1;

        boxMon->unk_04_1 = 0;
        boxMon->unk_06 = sub_0207823C(boxMon->unk_08, sizeof(PokemonSubstruct0) * 4);

        sub_0207822C(boxMon->unk_08, sizeof(PokemonSubstruct0) * 4, boxMon->unk_06);
    }

    return v0;
}

void sub_02073D80 (Pokemon * param0, int param1, int param2, int param3, int param4, u32 param5, int param6, u32 param7)
{
    u32 v0;
    UnkStruct_0202818C * v1;
    UnkStruct_0202CA28 v2;

    sub_02073C2C(param0);

    sub_02073E18((BoxPokemon *)&param0->unk_00, param1, param2, param3, param4, param5, param6, param7);
    sub_0207822C(&param0->unk_08, sizeof(UnkStruct_02073C74_sub2), 0);
    sub_0207822C(&param0->unk_08, sizeof(UnkStruct_02073C74_sub2), param0->unk_00.personality);
    sub_02074B30(param0, 161, (u8 *)&param2);

    v1 = sub_0202818C(0);

    sub_02074B30(param0, 170, v1);
    Heap_FreeToHeap(v1);

    v0 = 0;
    sub_02074B30(param0, 162, (u8 *)&v0);

    MI_CpuClearFast(&v2, sizeof(UnkStruct_0202CA28));

    sub_02074B30(param0, 171, (UnkStruct_0202CA28 *)&v2);
    sub_0207418C(param0);
}

void sub_02073E18 (BoxPokemon *boxMon, int param1, int param2, int param3, int param4, u32 param5, int param6, u32 param7)
{
    u16 v0;
    u32 v1, v2;
    BOOL v3;

    sub_02073C54(boxMon);

    v3 = sub_02073D20(boxMon);

    if (!param4) {
        param5 = (sub_0201D2E8() | (sub_0201D2E8() << 16));
    }

    SetBoxMonData(boxMon, MON_DATA_PERSONALITY, (u8 *)&param5);

    if (param6 == 2) {
        do {
            param7 = (sub_0201D2E8() | (sub_0201D2E8() << 16));
        } while ((((param7 & 0xffff0000) >> 16) ^ (param7 & 0xffff) ^ ((param5 & 0xffff0000) >> 16) ^ (param5 & 0xffff)) < 8);
    } else if (param6 != 1) {
        param7 = 0;
    }

    SetBoxMonData(boxMon, MON_DATA_OT_ID, (u8 *)&param7);
    SetBoxMonData(boxMon, MON_DATA_LANGUAGE, (u8 *)&Unk_020E4C44);
    SetBoxMonData(boxMon, MON_DATA_SPECIES, (u8 *)&param1);
    SetBoxMonData(boxMon, MON_DATA_179, NULL);

    v1 = sub_02075AD0(param1, param2);
    SetBoxMonData(boxMon, MON_DATA_EXP, (u8 *)&v1);

    v1 = sub_020759F0(param1, 20);
    SetBoxMonData(boxMon, MON_DATA_FRIENDSHIP, (u8 *)&v1);

    SetBoxMonData(boxMon, MON_DATA_MET_LEVEL, (u8 *)&param2);
    SetBoxMonData(boxMon, MON_DATA_MET_GAME, (u8 *)&Unk_020E4C40);

    v1 = 4;
    SetBoxMonData(boxMon, MON_DATA_POKEBALL, (u8 *)&v1);

    if (param3 < 32) {
        SetBoxMonData(boxMon, MON_DATA_HP_IV, (u8 *)&param3);
        SetBoxMonData(boxMon, MON_DATA_ATK_IV, (u8 *)&param3);
        SetBoxMonData(boxMon, MON_DATA_DEF_IV, (u8 *)&param3);
        SetBoxMonData(boxMon, MON_DATA_SPEED_IV, (u8 *)&param3);
        SetBoxMonData(boxMon, MON_DATA_SPATK_IV, (u8 *)&param3);
        SetBoxMonData(boxMon, MON_DATA_SPDEF_IV, (u8 *)&param3);
    } else {
        v1 = sub_0201D2E8();
        v2 = (v1 & (0x1f << 0)) >> 0;
        SetBoxMonData(boxMon, MON_DATA_HP_IV, (u8 *)&v2);

        v2 = (v1 & (0x1f << 5)) >> 5;
        SetBoxMonData(boxMon, MON_DATA_ATK_IV, (u8 *)&v2);

        v2 = (v1 & (0x1f << 10)) >> 10;
        SetBoxMonData(boxMon, MON_DATA_DEF_IV, (u8 *)&v2);

        v1 = sub_0201D2E8();
        v2 = (v1 & (0x1f << 0)) >> 0;
        SetBoxMonData(boxMon, MON_DATA_SPEED_IV, (u8 *)&v2);

        v2 = (v1 & (0x1f << 5)) >> 5;
        SetBoxMonData(boxMon, MON_DATA_SPATK_IV, (u8 *)&v2);

        v2 = (v1 & (0x1f << 10)) >> 10;
        SetBoxMonData(boxMon, MON_DATA_SPDEF_IV, (u8 *)&v2);
    }

    v1 = sub_020759F0(param1, 24);
    v2 = sub_020759F0(param1, 25);

    if (v2 != 0) {
        if (param5 & 1) {
            SetBoxMonData(boxMon, MON_DATA_10, (u8 *)&v2);
        } else {
            SetBoxMonData(boxMon, MON_DATA_10, (u8 *)&v1);
        }
    } else {
        SetBoxMonData(boxMon, MON_DATA_10, (u8 *)&v1);
    }

    v1 = sub_02075D74(boxMon);

    SetBoxMonData(boxMon, MON_DATA_111, (u8 *)&v1);
    sub_02077020(boxMon);
    sub_02073D48(boxMon, v3);
}

void sub_02074044 (Pokemon * param0, u16 param1, u8 param2, u8 param3, u8 nature)
{
    u32 v0;

    do {
        v0 = (sub_0201D2E8() | (sub_0201D2E8() << 16));
    } while (nature != GetNatureFromPersonality(v0));

    sub_02073D80(param0, param1, param2, param3, 1, v0, 0, 0);
}

void sub_02074088 (Pokemon * param0, u16 param1, u8 param2, u8 param3, u8 param4, u8 nature, u8 param6)
{
    u32 v0;
    u32 v1;
    u16 v2;

    if ((param6) && (param6 < 29)) {
        do {
            v0 = (sub_0201D2E8() | (sub_0201D2E8() << 16));
            v2 = GET_UNOWN_LETTER(v0);
        } while ((nature != GetNatureFromPersonality(v0)) || (param4 != sub_02075DAC(param1, v0)) || (v2 != (param6 - 1)));
    } else {
        v0 = sub_02074128(param1, param4, nature);
    }

    sub_02073D80(param0, param1, param2, param3, 1, v0, 0, 0);
}

u32 sub_02074128 (u16 param0, u8 param1, u8 param2)
{
    u8 v0;
    u32 v1;

    v0 = sub_020759F0(param0, 18);

    switch (v0) {
    case 0:
    case 254:
    case 255:
        v1 = param2;
        break;
    default:
        if (param1 == 0) {
            v1 = 25 * ((v0 / 25) + 1);
            v1 += param2;
        } else {
            v1 = param2;
        }
        break;
    }

    return v1;
}

void sub_02074158 (Pokemon * param0, u16 param1, u8 param2, u32 param3, u32 param4)
{
    sub_02073D80(param0, param1, param2, 0, 1, param4, 0, 0);
    sub_02074B30(param0, 175, (u8 *)&param3);
    sub_0207418C(param0);
}

void sub_0207418C (Pokemon * param0)
{
    int v0;
    BOOL v1;

    v1 = sub_02073C88(param0);
    v0 = sub_02075B38(param0);

    sub_02074B30(param0, 161, (u8 *)&v0);
    sub_020741B8(param0);
    sub_02073CD4(param0, v1);
}

void sub_020741B8 (Pokemon * param0)
{
    int v0, v1, v2;
    int v3, v4, v5, v6, v7;
    int v8, v9, v10, v11, v12, v13;
    int v14, v15, v16, v17, v18, v19;
    int v20;
    int v21;
    int v22;
    int v23, v24, v25;
    UnkStruct_02075874 * v26;
    BOOL v27;

    v27 = sub_02073C88(param0);

    v21 = GetMonData(param0, MON_DATA_161, 0);
    v0 = GetMonData(param0, MON_DATA_164, 0);
    v1 = GetMonData(param0, MON_DATA_163, 0);
    v8 = GetMonData(param0, MON_DATA_HP_IV, 0);
    v14 = GetMonData(param0, MON_DATA_HP_EV, 0);
    v9 = GetMonData(param0, MON_DATA_ATK_IV, 0);
    v15 = GetMonData(param0, MON_DATA_ATK_EV, 0);
    v10 = GetMonData(param0, MON_DATA_DEF_IV, 0);
    v16 = GetMonData(param0, MON_DATA_DEF_EV, 0);
    v11 = GetMonData(param0, MON_DATA_SPEED_IV, 0);
    v17 = GetMonData(param0, MON_DATA_SPEED_EV, 0);
    v12 = GetMonData(param0, MON_DATA_SPATK_IV, 0);
    v18 = GetMonData(param0, MON_DATA_SPATK_EV, 0);
    v13 = GetMonData(param0, MON_DATA_SPDEF_IV, 0);
    v19 = GetMonData(param0, MON_DATA_SPDEF_EV, 0);
    v22 = GetMonData(param0, MON_DATA_112, 0);
    v20 = GetMonData(param0, MON_DATA_SPECIES, 0);
    v26 = Heap_AllocFromHeap(0, sizeof(UnkStruct_02075874));

    sub_02078208(v20, v22, v26);

    if (v20 == 292) {
        v2 = 1;
    } else {
        v2 = ((2 * v26->unk_00 + v8 + v14 / 4) * v21 / 100 + v21 + 10);
    }

    sub_02074B30(param0, 164, (u8 *)&v2);

    v3 = ((2 * v26->unk_01 + v9 + v15 / 4) * v21 / 100 + 5);
    v3 = ModifyStatByNature(sub_02075BCC(param0), v3, 0x1);

    sub_02074B30(param0, 165, (u8 *)&v3);

    v4 = ((2 * v26->unk_02 + v10 + v16 / 4) * v21 / 100 + 5);
    v4 = ModifyStatByNature(sub_02075BCC(param0), v4, 0x2);

    sub_02074B30(param0, 166, (u8 *)&v4);

    v5 = ((2 * v26->unk_03 + v11 + v17 / 4) * v21 / 100 + 5);
    v5 = ModifyStatByNature(sub_02075BCC(param0), v5, 0x3);

    sub_02074B30(param0, 167, (u8 *)&v5);

    v6 = ((2 * v26->unk_04 + v12 + v18 / 4) * v21 / 100 + 5);
    v6 = ModifyStatByNature(sub_02075BCC(param0), v6, 0x4);

    sub_02074B30(param0, 168, (u8 *)&v6);

    v7 = ((2 * v26->unk_05 + v13 + v19 / 4) * v21 / 100 + 5);
    v7 = ModifyStatByNature(sub_02075BCC(param0), v7, 0x5);

    sub_02074B30(param0, 169, (u8 *)&v7);
    Heap_FreeToHeap(v26);

    if ((v1 == 0) && (v0 != 0)) {
        (void)0;
    } else {
        if (v20 == 292) {
            v1 = 1;
        } else if (v1 == 0) {
            v1 = v2;
        } else {
            v1 += (v2 - v0);
        }
    }

    if (v1) {
        sub_02074B30(param0, 163, (u8 *)&v1);
    }

    sub_02073CD4(param0, v27);
}

u32 GetMonData (Pokemon * param0, int param1, void * param2)
{
    u32 species;
    u16 v1;

    if (param0->unk_00.unk_04_0 == 0) {
        sub_02078234(&param0->unk_08, sizeof(UnkStruct_02073C74_sub2), param0->unk_00.personality);
        sub_02078234(&param0->unk_00.unk_08, sizeof(PokemonSubstruct0) * 4, param0->unk_00.unk_06);

        v1 = sub_0207823C(&param0->unk_00.unk_08, sizeof(PokemonSubstruct0) * 4);

        if (v1 != param0->unk_00.unk_06) {
            GF_ASSERT((v1 == param0->unk_00.unk_06));
            param0->unk_00.unk_04_2 = 1;
        }
    }

    species = sub_020744E8(param0, param1, param2);

    if (param0->unk_00.unk_04_0 == 0) {
        sub_0207822C(&param0->unk_08, sizeof(UnkStruct_02073C74_sub2), param0->unk_00.personality);
        sub_0207822C(&param0->unk_00.unk_08, sizeof(PokemonSubstruct0) * 4, param0->unk_00.unk_06);
    }

    return species;
}

static u32 sub_020744E8 (Pokemon * mon, int field, void * param2)
{
    u32 species = 0;

    switch (field) {
    case MON_DATA_160:
        species = mon->unk_08.unk_00;
        break;
    case MON_DATA_161:
        species = mon->unk_08.unk_04;
        break;
    case MON_DATA_162:
        species = mon->unk_08.unk_05;
        break;
    case MON_DATA_163:
        species = mon->unk_08.unk_06;
        break;
    case MON_DATA_164:
        species = mon->unk_08.unk_08;
        break;
    case MON_DATA_165:
        species = mon->unk_08.unk_0A;
        break;
    case MON_DATA_166:
        species = mon->unk_08.unk_0C;
        break;
    case MON_DATA_167:
        species = mon->unk_08.unk_0E;
        break;
    case MON_DATA_168:
        species = mon->unk_08.unk_10;
        break;
    case MON_DATA_169:
        species = mon->unk_08.unk_12;
        break;
    case MON_DATA_170:
        sub_020281A0(&mon->unk_08.unk_14, (UnkStruct_0202818C *)param2);
        species = 1;
        break;
    case MON_DATA_171:
        sub_0202CA10(&mon->unk_08.unk_4C, (UnkStruct_0202CA28 *)param2);
        species = 1;
        break;
    default:
        species = GetBoxMonData((BoxPokemon *)&mon->unk_00, field, param2);
        break;
    }

    return species;
}

u32 sub_02074570 (BoxPokemon *boxMon, int field, void * param2)
{
    u16 v0;
    u32 value;

    if (boxMon->unk_04_1 == 0) {
        sub_02078234(boxMon->unk_08, sizeof(PokemonSubstruct0) * 4, boxMon->unk_06);
        v0 = sub_0207823C(boxMon->unk_08, sizeof(PokemonSubstruct0) * 4);

        if (v0 != boxMon->unk_06) {
            GF_ASSERT((v0 == boxMon->unk_06));
            boxMon->unk_04_2 = 1;
        }
    }

    value = GetBoxMonData(boxMon, field, param2);

    if (boxMon->unk_04_1 == 0) {
        sub_0207822C(boxMon->unk_08, sizeof(PokemonSubstruct0) * 4, boxMon->unk_06);
    }

    return value;
}

static u32 GetBoxMonData(BoxPokemon *boxMon, int field, void * param2)
{
    u32 ret = 0;
    u64 v1;
    PokemonSubstruct0 * substruct0;
    PokemonSubstruct1 * substruct1;
    PokemonSubstruct2 * substruct2;
    PokemonSubstruct3 * substruct3;

    substruct0 = (PokemonSubstruct0 *)sub_0207825C(boxMon, boxMon->personality, 0);
    substruct1 = (PokemonSubstruct1 *)sub_0207825C(boxMon, boxMon->personality, 1);
    substruct2 = (PokemonSubstruct2 *)sub_0207825C(boxMon, boxMon->personality, 2);
    substruct3 = (PokemonSubstruct3 *)sub_0207825C(boxMon, boxMon->personality, 3);

    switch (field) {
    default:
        ret = 0;
        break;
    case MON_DATA_PERSONALITY:
        ret = boxMon->personality;
        break;
    case MON_DATA_1:
        ret = boxMon->unk_04_0;
        break;
    case MON_DATA_2:
        ret = boxMon->unk_04_1;
        break;
    case MON_DATA_3:
        ret = boxMon->unk_04_2;
        break;
    case MON_DATA_4:
        ret = boxMon->unk_06;
        break;
    case MON_DATA_172:
        ret = (substruct0->species != SPECIES_NONE);
        break;
    case MON_DATA_173:
        if (boxMon->unk_04_2) {
            ret = boxMon->unk_04_2;
        } else {
            ret = substruct1->unk_10_30;
        }
        break;
    case MON_DATA_SPECIES_EGG:
        ret = substruct0->species;

        if (ret == 0) {
            break;
        } else if ((substruct1->unk_10_30) || (boxMon->unk_04_2)) {
            ret = SPECIES_EGG;
        }
        break;
    case MON_DATA_161:
        ret = sub_02075B78(substruct0->species, substruct0->unk_08);
        break;
    case MON_DATA_SPECIES:
        if (boxMon->unk_04_2)
            ret = SPECIES_EGG;
        else
            ret = substruct0->species;
        break;
    case MON_DATA_HELD_ITEM:
        ret = substruct0->item;
        break;
    case MON_DATA_OT_ID:
        ret = substruct0->unk_04;
        break;
    case MON_DATA_EXP:
        ret = substruct0->unk_08;
        break;
    case MON_DATA_FRIENDSHIP:
        ret = substruct0->friendship;
        break;
    case MON_DATA_10:
        ret = substruct0->unk_0D;
        break;
    case MON_DATA_11:
        ret = substruct0->unk_0E;
        break;
    case MON_DATA_LANGUAGE:
        ret = substruct0->unk_0F;
        break;
    case MON_DATA_HP_EV:
        ret = substruct0->unk_10;
        break;
    case MON_DATA_ATK_EV:
        ret = substruct0->unk_11;
        break;
    case MON_DATA_DEF_EV:
        ret = substruct0->unk_12;
        break;
    case MON_DATA_SPEED_EV:
        ret = substruct0->unk_13;
        break;
    case MON_DATA_SPATK_EV:
        ret = substruct0->unk_14;
        break;
    case MON_DATA_SPDEF_EV:
        ret = substruct0->unk_15;
        break;
    case MON_DATA_COOL:
        ret = substruct0->unk_16;
        break;
    case MON_DATA_BEAUTY:
        ret = substruct0->unk_17;
        break;
    case MON_DATA_CUTE:
        ret = substruct0->unk_18;
        break;
    case MON_DATA_SMART:
        ret = substruct0->unk_19;
        break;
    case MON_DATA_TOUGH:
        ret = substruct0->unk_1A;
        break;
    case MON_DATA_SHEEN:
        ret = substruct0->unk_1B;
        break;
    case MON_DATA_25:
    case MON_DATA_26:
    case MON_DATA_27:
    case MON_DATA_28:
    case MON_DATA_29:
    case MON_DATA_30:
    case MON_DATA_31:
    case MON_DATA_32:
    case MON_DATA_33:
    case MON_DATA_34:
    case MON_DATA_35:
    case MON_DATA_36:
    case MON_DATA_37:
    case MON_DATA_38:
    case MON_DATA_39:
    case MON_DATA_40:
    case MON_DATA_41:
    case MON_DATA_42:
    case MON_DATA_43:
    case MON_DATA_44:
    case MON_DATA_45:
    case MON_DATA_46:
    case MON_DATA_47:
    case MON_DATA_48:
    case MON_DATA_49:
    case MON_DATA_50:
    case MON_DATA_51:
    case MON_DATA_52:
    case MON_DATA_53:
        v1 = 1;
        ret = ((substruct0->unk_1C & (v1 << field - 25)) != 0);
        break;
    case MON_DATA_54:
    case MON_DATA_55:
    case MON_DATA_56:
    case MON_DATA_57:
        ret = substruct1->unk_00[field - 54];
        break;
    case MON_DATA_58:
    case MON_DATA_59:
    case MON_DATA_60:
    case MON_DATA_61:
        ret = substruct1->unk_08[field - 58];
        break;
    case MON_DATA_62:
    case MON_DATA_63:
    case MON_DATA_64:
    case MON_DATA_65:
        ret = substruct1->unk_0C[field - 62];
        break;
    case MON_DATA_66:
    case MON_DATA_67:
    case MON_DATA_68:
    case MON_DATA_69:
        ret = MoveTable_GetMoveMaxPP(substruct1->unk_00[field - 66], substruct1->unk_0C[field - 66]);
        break;
    case MON_DATA_HP_IV:
        ret = substruct1->unk_10_0;
        break;
    case MON_DATA_ATK_IV:
        ret = substruct1->unk_10_5;
        break;
    case MON_DATA_DEF_IV:
        ret = substruct1->unk_10_10;
        break;
    case MON_DATA_SPEED_IV:
        ret = substruct1->unk_10_15;
        break;
    case MON_DATA_SPATK_IV:
        ret = substruct1->unk_10_20;
        break;
    case MON_DATA_SPDEF_IV:
        ret = substruct1->unk_10_25;
        break;
    case MON_DATA_IS_EGG:
        if (boxMon->unk_04_2) {
            ret = boxMon->unk_04_2;
        } else {
            ret = substruct1->unk_10_30;
        }
        break;
    case MON_DATA_77:
        ret = substruct1->unk_10_31;
        break;
    case MON_DATA_78:
    case MON_DATA_79:
    case MON_DATA_80:
    case MON_DATA_81:
    case MON_DATA_82:
    case MON_DATA_83:
    case MON_DATA_84:
    case MON_DATA_85:
    case MON_DATA_86:
    case MON_DATA_87:
    case MON_DATA_88:
    case MON_DATA_89:
    case MON_DATA_90:
    case MON_DATA_91:
    case MON_DATA_92:
    case MON_DATA_93:
    case MON_DATA_94:
    case MON_DATA_95:
    case MON_DATA_96:
    case MON_DATA_97:
    case MON_DATA_CHAMPION_RIBBON:
    case MON_DATA_WINNING_RIBBON:
    case MON_DATA_VICTORY_RIBBON:
    case MON_DATA_ARTIST_RIBBON:
    case MON_DATA_EFFORT_RIBBON:
    case MON_DATA_MARINE_RIBBON:
    case MON_DATA_LAND_RIBBON:
    case MON_DATA_SKY_RIBBON:
    case MON_DATA_COUNTRY_RIBBON:
    case MON_DATA_NATIONAL_RIBBON:
    case MON_DATA_EARTH_RIBBON:
    case MON_DATA_WORLD_RIBBON:
        v1 = 1;
        ret = ((substruct1->unk_14 & (v1 << field - 78)) != 0);
        break;
    case MON_DATA_FATEFUL_ENCOUNTER:
        ret = substruct1->fatefulEncounter;
        break;
    case MON_DATA_111:
        ret = sub_02075DAC(substruct0->species, boxMon->personality);
        substruct1->unk_18_1 = ret;
        boxMon->unk_06 = sub_0207823C(&boxMon->unk_08, sizeof(PokemonSubstruct0) * 4);
        break;
    case MON_DATA_112:
        ret = substruct1->unk_18_3;
        break;
    case MON_DATA_113:
        ret = substruct1->unk_19;
        break;
    case MON_DATA_114:
        ret = substruct1->unk_1A;
        break;
    case MON_DATA_117:
        if (boxMon->unk_04_2) {
            sub_0200B274(495, 0, param2);
        } else {
            {
                u16 * v6 = param2;

                for (ret = 0; ret < 10; ret++) {
                    v6[ret] = substruct2->unk_00[ret];
                }

                v6[ret] = 0xffff;
            }
        }
        break;
    case MON_DATA_120:
        ret = substruct1->unk_10_31;
    case MON_DATA_119:
        if (boxMon->unk_04_2) {
            UnkStruct_02023790 * v7 = sub_0200B32C(495, 0);

            sub_02023810((UnkStruct_02023790 *)param2, v7);
            sub_020237BC(v7);
        } else {
            sub_02023D28((UnkStruct_02023790 *)param2, substruct2->unk_00);
        }
        break;
    case MON_DATA_121:
        ret = substruct2->unk_16;
        break;
    case MON_DATA_MET_GAME:
        ret = substruct2->unk_17;
        break;
    case MON_DATA_123:
    case MON_DATA_124:
    case MON_DATA_125:
    case MON_DATA_126:
    case MON_DATA_127:
    case MON_DATA_128:
    case MON_DATA_129:
    case MON_DATA_130:
    case MON_DATA_131:
    case MON_DATA_132:
    case MON_DATA_133:
    case MON_DATA_134:
    case MON_DATA_135:
    case MON_DATA_136:
    case MON_DATA_137:
    case MON_DATA_138:
    case MON_DATA_139:
    case MON_DATA_140:
    case MON_DATA_141:
    case MON_DATA_142:
    case MON_DATA_143:
        v1 = 1;
        ret = ((substruct2->unk_18 & (v1 << field - 123)) != 0);
        break;
    case MON_DATA_144:
    {
        u16 * v8 = param2;

        for (ret = 0; ret < 7; ret++) {
            v8[ret] = substruct3->unk_00[ret];
        }

        v8[ret] = 0xffff;
        break;
    }
    case MON_DATA_145:
        sub_02023D28((UnkStruct_02023790 *)param2, substruct3->unk_00);
        break;
    case MON_DATA_146:
        ret = substruct3->unk_10;
        break;
    case MON_DATA_147:
        ret = substruct3->unk_11;
        break;
    case MON_DATA_148:
        ret = substruct3->unk_12;
        break;
    case MON_DATA_149:
        ret = substruct3->unk_13;
        break;
    case MON_DATA_150:
        ret = substruct3->unk_14;
        break;
    case MON_DATA_151:
        ret = substruct3->unk_15;
        break;
    case MON_DATA_152:
    case MON_DATA_115:
        if ((substruct3->unk_16 == 3002) && (substruct1->unk_1C)) {
            ret = substruct1->unk_1C;
        } else {
            ret = substruct3->unk_16;
        }
        break;
    case MON_DATA_153:
    case MON_DATA_116:
        if ((substruct3->unk_18 == 3002) && (substruct1->unk_1E)) {
            ret = substruct1->unk_1E;
        } else {
            ret = substruct3->unk_18;
        }
        break;
    case MON_DATA_POKERUS:
        ret = substruct3->unk_1A;
        break;
    case MON_DATA_POKEBALL:
        ret = substruct3->unk_1B;
        break;
    case MON_DATA_MET_LEVEL:
        ret = substruct3->unk_1C_0;
        break;
    case MON_DATA_OT_GENDER:
        ret = substruct3->unk_1C_7;
        break;
    case MON_DATA_158:
        ret = substruct3->unk_1D;
        break;
    case MON_DATA_159:
        ret = substruct3->unk_1E;
        break;
    case MON_DATA_175:
        ret = (substruct1->unk_10_0 << 0) | (substruct1->unk_10_5 << 5) | (substruct1->unk_10_10 << 10) | (substruct1->unk_10_15 << 15) | (substruct1->unk_10_20 << 20) | (substruct1->unk_10_25 << 25);
        break;
    case MON_DATA_176:
        if (((substruct0->species == SPECIES_NIDORAN_F) || (substruct0->species == SPECIES_NIDORAN_M)) && (substruct1->unk_10_31 == 0)) {
            ret = 0;
        } else {
            ret = 1;
        }
        break;
    case MON_DATA_177:
    case MON_DATA_178:
        if ((substruct0->species == SPECIES_ARCEUS) && (substruct0->unk_0D == 121)) {
            ret = sub_02077988(Item_GetAttribute(substruct0->item, 1, 0));
        } else {
            ret = sub_020759CC(substruct0->species, substruct1->unk_18_3, 6 + (field - 177));
        }
        break;
    case MON_DATA_179:
        sub_0200B274(substruct0->species, 0, param2);
        break;
    }

    return ret;
}

void sub_02074B30 (Pokemon * param0, int param1, const void * param2)
{
    u16 v0;

    if (param0->unk_00.unk_04_0 == 0) {
        sub_02078234(&param0->unk_08, sizeof(UnkStruct_02073C74_sub2), param0->unk_00.personality);
        sub_02078234(&param0->unk_00.unk_08, sizeof(PokemonSubstruct0) * 4, param0->unk_00.unk_06);
        v0 = sub_0207823C(&param0->unk_00.unk_08, sizeof(PokemonSubstruct0) * 4);

        if (v0 != param0->unk_00.unk_06) {
            GF_ASSERT((v0 == param0->unk_00.unk_06));
            param0->unk_00.unk_04_2 = 1;
            sub_0207822C(param0->unk_00.unk_08, sizeof(PokemonSubstruct0) * 4, param0->unk_00.unk_06);
            return;
        }
    }

    sub_02074BC0(param0, param1, param2);

    if (param0->unk_00.unk_04_0 == 0) {
        sub_0207822C(&param0->unk_08, sizeof(UnkStruct_02073C74_sub2), param0->unk_00.personality);
        param0->unk_00.unk_06 = sub_0207823C(&param0->unk_00.unk_08, sizeof(PokemonSubstruct0) * 4);
        sub_0207822C(&param0->unk_00.unk_08, sizeof(PokemonSubstruct0) * 4, param0->unk_00.unk_06);
    }
}

static void sub_02074BC0 (Pokemon * param0, int field, const void * param2)
{
    u32 * v0 = (u32 *)param2;
    u16 * v1 = (u16 *)param2;
    u8 * v2 = (u8 *)param2;

    switch (field) {
    case MON_DATA_160:
        param0->unk_08.unk_00 = v0[0];
        break;
    case MON_DATA_161:
        param0->unk_08.unk_04 = v2[0];
        break;
    case MON_DATA_162:
        param0->unk_08.unk_05 = v2[0];
        break;
    case MON_DATA_163:
        param0->unk_08.unk_06 = v1[0];
        break;
    case MON_DATA_164:
        param0->unk_08.unk_08 = v1[0];
        break;
    case MON_DATA_165:
        param0->unk_08.unk_0A = v1[0];
        break;
    case MON_DATA_166:
        param0->unk_08.unk_0C = v1[0];
        break;
    case MON_DATA_167:
        param0->unk_08.unk_0E = v1[0];
        break;
    case MON_DATA_168:
        param0->unk_08.unk_10 = v1[0];
        break;
    case MON_DATA_169:
        param0->unk_08.unk_12 = v1[0];
        break;
    case MON_DATA_170:
        sub_020281A0((UnkStruct_0202818C *)param2, &param0->unk_08.unk_14);
        break;
    case MON_DATA_171:
        sub_0202CA10((UnkStruct_0202CA28 *)param2, &param0->unk_08.unk_4C);
        break;
    default:
        SetMonSubstructData((BoxPokemon *)&param0->unk_00, field, param2);
        break;
    }
}

void SetBoxMonData(BoxPokemon *boxMon, int field, const void * param2)
{
    u16 v0;

    if (boxMon->unk_04_1 == 0) {
        sub_02078234(boxMon->unk_08, sizeof(PokemonSubstruct0) * 4, boxMon->unk_06);
        v0 = sub_0207823C(boxMon->unk_08, sizeof(PokemonSubstruct0) * 4);

        if (v0 != boxMon->unk_06) {
            GF_ASSERT((v0 == boxMon->unk_06));
            boxMon->unk_04_2 = 1;
            sub_0207822C(boxMon->unk_08, sizeof(PokemonSubstruct0) * 4, boxMon->unk_06);
            return;
        }
    }

    SetMonSubstructData(boxMon, field, param2);

    if (boxMon->unk_04_1 == 0) {
        boxMon->unk_06 = sub_0207823C(boxMon->unk_08, sizeof(PokemonSubstruct0) * 4);
        sub_0207822C(boxMon->unk_08, sizeof(PokemonSubstruct0) * 4, boxMon->unk_06);
    }
}

static void SetMonSubstructData (BoxPokemon *boxMon, int field, const void * param2)
{
    int v0;
    u64 v1;
    u16 v2;
    u32 * v3 = (u32 *)param2;
    u16 * v4 = (u16 *)param2;
    u8 * v5 = (u8 *)param2;
    PokemonSubstruct0 * substruct0;
    PokemonSubstruct1 * substruct1;
    PokemonSubstruct2 * substruct2;
    PokemonSubstruct3 * substruct3;

    substruct0 = (PokemonSubstruct0 *)sub_0207825C(boxMon, boxMon->personality, 0);
    substruct1 = (PokemonSubstruct1 *)sub_0207825C(boxMon, boxMon->personality, 1);
    substruct2 = (PokemonSubstruct2 *)sub_0207825C(boxMon, boxMon->personality, 2);
    substruct3 = (PokemonSubstruct3 *)sub_0207825C(boxMon, boxMon->personality, 3);

    switch (field) {
    case MON_DATA_PERSONALITY:
        boxMon->personality = v3[0];
        break;
    case MON_DATA_1:
        GF_ASSERT(0);
        boxMon->unk_04_0 = v5[0];
        break;
    case MON_DATA_2:
        GF_ASSERT(0);
        boxMon->unk_04_1 = v5[0];
        break;
    case MON_DATA_3:
        boxMon->unk_04_2 = v5[0];
        break;
    case MON_DATA_4:
        boxMon->unk_06 = v4[0];
        break;
    case MON_DATA_SPECIES:
        substruct0->species = v4[0];
        break;
    case MON_DATA_HELD_ITEM:
        substruct0->item = v4[0];
        break;
    case MON_DATA_OT_ID:
        substruct0->unk_04 = v3[0];
        break;
    case MON_DATA_EXP:
        substruct0->unk_08 = v3[0];
        break;
    case MON_DATA_FRIENDSHIP:
        substruct0->friendship = v5[0];
        break;
    case MON_DATA_10:
        substruct0->unk_0D = v5[0];
        break;
    case MON_DATA_11:
        substruct0->unk_0E = v5[0];
        break;
    case MON_DATA_LANGUAGE:
        substruct0->unk_0F = v5[0];
        break;
    case MON_DATA_HP_EV:
        substruct0->unk_10 = v5[0];
        break;
    case MON_DATA_ATK_EV:
        substruct0->unk_11 = v5[0];
        break;
    case MON_DATA_DEF_EV:
        substruct0->unk_12 = v5[0];
        break;
    case MON_DATA_SPEED_EV:
        substruct0->unk_13 = v5[0];
        break;
    case MON_DATA_SPATK_EV:
        substruct0->unk_14 = v5[0];
        break;
    case MON_DATA_SPDEF_EV:
        substruct0->unk_15 = v5[0];
        break;
    case MON_DATA_COOL:
        substruct0->unk_16 = v5[0];
        break;
    case MON_DATA_BEAUTY:
        substruct0->unk_17 = v5[0];
        break;
    case MON_DATA_CUTE:
        substruct0->unk_18 = v5[0];
        break;
    case MON_DATA_SMART:
        substruct0->unk_19 = v5[0];
        break;
    case MON_DATA_TOUGH:
        substruct0->unk_1A = v5[0];
        break;
    case MON_DATA_SHEEN:
        substruct0->unk_1B = v5[0];
        break;
    case MON_DATA_25:
    case MON_DATA_26:
    case MON_DATA_27:
    case MON_DATA_28:
    case MON_DATA_29:
    case MON_DATA_30:
    case MON_DATA_31:
    case MON_DATA_32:
    case MON_DATA_33:
    case MON_DATA_34:
    case MON_DATA_35:
    case MON_DATA_36:
    case MON_DATA_37:
    case MON_DATA_38:
    case MON_DATA_39:
    case MON_DATA_40:
    case MON_DATA_41:
    case MON_DATA_42:
    case MON_DATA_43:
    case MON_DATA_44:
    case MON_DATA_45:
    case MON_DATA_46:
    case MON_DATA_47:
    case MON_DATA_48:
    case MON_DATA_49:
    case MON_DATA_50:
    case MON_DATA_51:
    case MON_DATA_52:
    case MON_DATA_53:
        v1 = 1 << (field - 25);

        if (v5[0]) {
            substruct0->unk_1C |= v1;
        } else {
            substruct0->unk_1C &= (v1 ^ 0xffffffff);
        }
        break;
    case MON_DATA_54:
    case MON_DATA_55:
    case MON_DATA_56:
    case MON_DATA_57:
        substruct1->unk_00[field - 54] = v4[0];
        break;
    case MON_DATA_58:
    case MON_DATA_59:
    case MON_DATA_60:
    case MON_DATA_61:
        substruct1->unk_08[field - 58] = v5[0];
        break;
    case MON_DATA_62:
    case MON_DATA_63:
    case MON_DATA_64:
    case MON_DATA_65:
        substruct1->unk_0C[field - 62] = v5[0];
        break;
    case MON_DATA_66:
    case MON_DATA_67:
    case MON_DATA_68:
    case MON_DATA_69:
        break;
    case MON_DATA_HP_IV:
        substruct1->unk_10_0 = v5[0];
        break;
    case MON_DATA_ATK_IV:
        substruct1->unk_10_5 = v5[0];
        break;
    case MON_DATA_DEF_IV:
        substruct1->unk_10_10 = v5[0];
        break;
    case MON_DATA_SPEED_IV:
        substruct1->unk_10_15 = v5[0];
        break;
    case MON_DATA_SPATK_IV:
        substruct1->unk_10_20 = v5[0];
        break;
    case MON_DATA_SPDEF_IV:
        substruct1->unk_10_25 = v5[0];
        break;
    case MON_DATA_IS_EGG:
        substruct1->unk_10_30 = v5[0];
        break;
    case MON_DATA_77:
        substruct1->unk_10_31 = v5[0];
        break;
    case MON_DATA_78:
    case MON_DATA_79:
    case MON_DATA_80:
    case MON_DATA_81:
    case MON_DATA_82:
    case MON_DATA_83:
    case MON_DATA_84:
    case MON_DATA_85:
    case MON_DATA_86:
    case MON_DATA_87:
    case MON_DATA_88:
    case MON_DATA_89:
    case MON_DATA_90:
    case MON_DATA_91:
    case MON_DATA_92:
    case MON_DATA_93:
    case MON_DATA_94:
    case MON_DATA_95:
    case MON_DATA_96:
    case MON_DATA_97:
    case MON_DATA_CHAMPION_RIBBON:
    case MON_DATA_WINNING_RIBBON:
    case MON_DATA_VICTORY_RIBBON:
    case MON_DATA_ARTIST_RIBBON:
    case MON_DATA_EFFORT_RIBBON:
    case MON_DATA_MARINE_RIBBON:
    case MON_DATA_LAND_RIBBON:
    case MON_DATA_SKY_RIBBON:
    case MON_DATA_COUNTRY_RIBBON:
    case MON_DATA_NATIONAL_RIBBON:
    case MON_DATA_EARTH_RIBBON:
    case MON_DATA_WORLD_RIBBON:
        v1 = 1 << (field - 78);

        if (v5[0]) {
            substruct1->unk_14 |= v1;
        } else {
            substruct1->unk_14 &= (v1 ^ 0xffffffff);
        }
        break;
    case MON_DATA_FATEFUL_ENCOUNTER:
        substruct1->fatefulEncounter = v5[0];
        break;
    case MON_DATA_111:
        substruct1->unk_18_1 = sub_02075DAC(substruct0->species, boxMon->personality);
        break;
    case MON_DATA_112:
        substruct1->unk_18_3 = v5[0];
        break;
    case MON_DATA_113:
        substruct1->unk_19 = v5[0];
        break;
    case MON_DATA_114:
        substruct1->unk_1A = v4[0];
        break;
    case MON_DATA_118:
    {
        u16 v10[10 + 1];

        sub_0200B274(substruct0->species, 0, &v10[0]);
        substruct1->unk_10_31 = sub_0200220C(v10, &v4[0]);
    }
    case MON_DATA_117:
        for (v0 = 0; v0 < NELEMS(substruct2->unk_00); v0++) {
            substruct2->unk_00[v0] = v4[v0];
        }
        break;
    case MON_DATA_120:
    {
        u16 v11[10 + 1];
        u16 v12[10 + 1];

        sub_0200B274(substruct0->species, 0, &v11[0]);
        sub_02023DF0((UnkStruct_02023790 *)param2, &v12[0], NELEMS(v12));

        substruct1->unk_10_31 = sub_0200220C(v11, v12);
    }
    case MON_DATA_119:
        sub_02023DF0((UnkStruct_02023790 *)param2, substruct2->unk_00, NELEMS(substruct2->unk_00));
        break;
    case MON_DATA_121:
        substruct2->unk_16 = v5[0];
        break;
    case MON_DATA_MET_GAME:
        substruct2->unk_17 = v5[0];
        break;
    case MON_DATA_123:
    case MON_DATA_124:
    case MON_DATA_125:
    case MON_DATA_126:
    case MON_DATA_127:
    case MON_DATA_128:
    case MON_DATA_129:
    case MON_DATA_130:
    case MON_DATA_131:
    case MON_DATA_132:
    case MON_DATA_133:
    case MON_DATA_134:
    case MON_DATA_135:
    case MON_DATA_136:
    case MON_DATA_137:
    case MON_DATA_138:
    case MON_DATA_139:
    case MON_DATA_140:
    case MON_DATA_141:
    case MON_DATA_142:
    case MON_DATA_143:
        v1 = 1 << (field - 123);

        if (v5[0]) {
            substruct2->unk_18 |= v1;
        } else {
            substruct2->unk_18 &= (v1 ^ 0xffffffffffffffff);
        }
        break;
    case MON_DATA_144:
        for (v0 = 0; v0 < NELEMS(substruct3->unk_00); v0++) {
            substruct3->unk_00[v0] = v4[v0];
        }
        break;
    case MON_DATA_145:
        sub_02023DF0((UnkStruct_02023790 *)param2, substruct3->unk_00, NELEMS(substruct3->unk_00));
        break;
    case MON_DATA_146:
        substruct3->unk_10 = v5[0];
        break;
    case MON_DATA_147:
        substruct3->unk_11 = v5[0];
        break;
    case MON_DATA_148:
        substruct3->unk_12 = v5[0];
        break;
    case MON_DATA_149:
        substruct3->unk_13 = v5[0];
        break;
    case MON_DATA_150:
        substruct3->unk_14 = v5[0];
        break;
    case MON_DATA_151:
        substruct3->unk_15 = v5[0];
        break;
    case MON_DATA_152:
    case MON_DATA_115:
        if ((v4[0] == 0) || (sub_0201708C(v4[0]) == 1)) {
            substruct3->unk_16 = v4[0];
            substruct1->unk_1C = v4[0];
        } else {
            substruct3->unk_16 = 3002;
            substruct1->unk_1C = v4[0];
        }
        break;
    case MON_DATA_153:
    case MON_DATA_116:
        if ((v4[0] == 0) || (sub_0201708C(v4[0]) == 1)) {
            substruct3->unk_18 = v4[0];
            substruct1->unk_1E = v4[0];
        } else {
            substruct3->unk_18 = 3002;
            substruct1->unk_1E = v4[0];
        }
        break;
    case MON_DATA_POKERUS:
        substruct3->unk_1A = v5[0];
        break;
    case MON_DATA_POKEBALL:
        substruct3->unk_1B = v5[0];
        break;
    case MON_DATA_MET_LEVEL:
        substruct3->unk_1C_0 = v5[0];
        break;
    case MON_DATA_OT_GENDER:
        substruct3->unk_1C_7 = v5[0];
        break;
    case MON_DATA_158:
        substruct3->unk_1D = v5[0];
        break;
    case MON_DATA_159:
        substruct3->unk_1E = v4[0];
        break;
    case MON_DATA_175:
        substruct1->unk_10_0 = (v3[0] >> 0) & 0x1f;
        substruct1->unk_10_5 = (v3[0] >> 5) & 0x1f;
        substruct1->unk_10_10 = (v3[0] >> 10) & 0x1f;
        substruct1->unk_10_15 = (v3[0] >> 15) & 0x1f;
        substruct1->unk_10_20 = (v3[0] >> 20) & 0x1f;
        substruct1->unk_10_25 = (v3[0] >> 25) & 0x1f;
        break;
    case MON_DATA_176:
    case MON_DATA_177:
    case MON_DATA_178:
        break;
    case MON_DATA_179:
    {
        UnkStruct_02023790 * v13;

        v13 = sub_0200B32C(substruct0->species, 0);

        sub_02023DF0(v13, substruct2->unk_00, NELEMS(substruct2->unk_00));
        sub_020237BC(v13);
    }
    break;
    }
}

void sub_0207536C (Pokemon * param0, int param1, int param2)
{
    u16 v0;

    if (param0->unk_00.unk_04_0 == 0) {
        sub_02078234(&param0->unk_08, sizeof(UnkStruct_02073C74_sub2), param0->unk_00.personality);
        sub_02078234(&param0->unk_00.unk_08, sizeof(PokemonSubstruct0) * 4, param0->unk_00.unk_06);

        v0 = sub_0207823C(&param0->unk_00.unk_08, sizeof(PokemonSubstruct0) * 4);

        if (v0 != param0->unk_00.unk_06) {
            GF_ASSERT((v0 == param0->unk_00.unk_06));
            sub_0207822C(param0->unk_00.unk_08, sizeof(PokemonSubstruct0) * 4, param0->unk_00.unk_06);
            return;
        }
    }

    sub_020753F4(param0, param1, param2);

    if (param0->unk_00.unk_04_0 == 0) {
        sub_0207822C(&param0->unk_08, sizeof(UnkStruct_02073C74_sub2), param0->unk_00.personality);
        param0->unk_00.unk_06 = sub_0207823C(&param0->unk_00.unk_08, sizeof(PokemonSubstruct0) * 4);
        sub_0207822C(&param0->unk_00.unk_08, sizeof(PokemonSubstruct0) * 4, param0->unk_00.unk_06);
    }
}

static void sub_020753F4 (Pokemon * param0, int param1, int param2)
{
    switch (param1) {
    case 163:
        if ((param0->unk_08.unk_06 + param2) > param0->unk_08.unk_08) {
            param0->unk_08.unk_06 = param0->unk_08.unk_08;
        } else {
            param0->unk_08.unk_06 += param2;
        }
        break;
    case 160:
    case 161:
    case 162:
    case 164:
    case 165:
    case 166:
    case 167:
    case 168:
    case 169:
    case 170:
        GF_ASSERT(0);
        break;
    default:
        sub_02075454((BoxPokemon *)&param0->unk_00, param1, param2);
        break;
    }
}

static void sub_02075454 (BoxPokemon *boxMon, int param1, int param2)
{
    int v0;
    u16 v1;
    PokemonSubstruct0 * substruct0;
    PokemonSubstruct1 * substruct1;
    PokemonSubstruct2 * substruct2;
    PokemonSubstruct3 * substruct3;

    substruct0 = (PokemonSubstruct0 *)sub_0207825C(boxMon, boxMon->personality, 0);
    substruct1 = (PokemonSubstruct1 *)sub_0207825C(boxMon, boxMon->personality, 1);
    substruct2 = (PokemonSubstruct2 *)sub_0207825C(boxMon, boxMon->personality, 2);
    substruct3 = (PokemonSubstruct3 *)sub_0207825C(boxMon, boxMon->personality, 3);

    switch (param1) {
    case MON_DATA_EXP:
        if ((substruct0->unk_08 + param2) > sub_02075AD0(substruct0->species, 100)) {
            substruct0->unk_08 = sub_02075AD0(substruct0->species, 100);
        } else {
            substruct0->unk_08 += param2;
        }
        break;
    case MON_DATA_FRIENDSHIP:
    {
        int v6;

        v6 = substruct0->friendship;

        if ((v6 + param2) > MAX_FRIENDSHIP) {
            v6 = MAX_FRIENDSHIP;
        }

        if ((v6 + param2) < 0)
            v6 = 0;
        else
            v6 += param2;

        substruct0->friendship = v6;
    }
    break;
    case MON_DATA_HP_EV:
        substruct0->unk_10 += param2;
        break;
    case MON_DATA_ATK_EV:
        substruct0->unk_11 += param2;
        break;
    case MON_DATA_DEF_EV:
        substruct0->unk_12 += param2;
        break;
    case MON_DATA_SPEED_EV:
        substruct0->unk_13 += param2;
        break;
    case MON_DATA_SPATK_EV:
        substruct0->unk_14 += param2;
        break;
    case MON_DATA_SPDEF_EV:
        substruct0->unk_15 += param2;
        break;
    case MON_DATA_COOL:
        if ((substruct0->unk_16 + param2) > MAX_CONDITION)
            substruct0->unk_16 = MAX_CONDITION;
        else
            substruct0->unk_16 += param2;
        break;
    case MON_DATA_BEAUTY:
        if ((substruct0->unk_17 + param2) > MAX_CONDITION)
            substruct0->unk_17 = MAX_CONDITION;
        else
            substruct0->unk_17 += param2;
        break;
    case MON_DATA_CUTE:
        if ((substruct0->unk_18 + param2) > MAX_CONDITION)
            substruct0->unk_18 = MAX_CONDITION;
        else
            substruct0->unk_18 += param2;
        break;
    case MON_DATA_SMART:
        if ((substruct0->unk_19 + param2) > MAX_CONDITION)
            substruct0->unk_19 = MAX_CONDITION;
        else
            substruct0->unk_19 += param2;
        break;
    case MON_DATA_TOUGH:
        if ((substruct0->unk_1A + param2) > MAX_CONDITION)
            substruct0->unk_1A = MAX_CONDITION;
        else
            substruct0->unk_1A += param2;
        break;
    case MON_DATA_SHEEN:
        if ((substruct0->unk_1B + param2) > MAX_SHEEN)
            substruct0->unk_1B = MAX_SHEEN;
        else
            substruct0->unk_1B += param2;
        break;
    case MON_DATA_58:
    case MON_DATA_59:
    case MON_DATA_60:
    case MON_DATA_61:
        if ((substruct1->unk_08[param1 - 58] + param2) > MoveTable_GetMoveMaxPP(substruct1->unk_00[param1 - 58], substruct1->unk_0C[param1 - 58])) {
            substruct1->unk_08[param1 - 58] = MoveTable_GetMoveMaxPP(substruct1->unk_00[param1 - 58], substruct1->unk_0C[param1 - 58]);
        } else {
            substruct1->unk_08[param1 - 58] += param2;
        }
        break;
    case MON_DATA_62:
    case MON_DATA_63:
    case MON_DATA_64:
    case MON_DATA_65:
        if ((substruct1->unk_0C[param1 - 62] + param2) > 3) {
            substruct1->unk_0C[param1 - 62] = 3;
        } else {
            substruct1->unk_0C[param1 - 62] += param2;
        }
        break;
    case MON_DATA_66:
    case MON_DATA_67:
    case MON_DATA_68:
    case MON_DATA_69:
        break;
    case MON_DATA_HP_IV:
        if ((substruct1->unk_10_0 + param2) > 31) {
            substruct1->unk_10_0 = 31;
        } else {
            substruct1->unk_10_0 += param2;
        }
        break;
    case MON_DATA_ATK_IV:
        if ((substruct1->unk_10_5 + param2) > 31) {
            substruct1->unk_10_5 = 31;
        } else {
            substruct1->unk_10_5 += param2;
        }
        break;
    case MON_DATA_DEF_IV:
        if ((substruct1->unk_10_10 + param2) > 31) {
            substruct1->unk_10_10 = 31;
        } else {
            substruct1->unk_10_10 += param2;
        }
        break;
    case MON_DATA_SPEED_IV:
        if ((substruct1->unk_10_15 + param2) > 31) {
            substruct1->unk_10_15 = 31;
        } else {
            substruct1->unk_10_15 += param2;
        }
        break;
    case MON_DATA_SPATK_IV:
        if ((substruct1->unk_10_20 + param2) > 31) {
            substruct1->unk_10_20 = 31;
        } else {
            substruct1->unk_10_20 += param2;
        }
        break;
    case MON_DATA_SPDEF_IV:
        if ((substruct1->unk_10_25 + param2) > 31) {
            substruct1->unk_10_25 = 31;
        } else {
            substruct1->unk_10_25 += param2;
        }
        break;
    case MON_DATA_PERSONALITY:
    case MON_DATA_1:
    case MON_DATA_2:
    case MON_DATA_4:
    case MON_DATA_SPECIES:
    case MON_DATA_HELD_ITEM:
    case MON_DATA_OT_ID:
    case MON_DATA_10:
    case MON_DATA_11:
    case MON_DATA_LANGUAGE:
    case MON_DATA_25:
    case MON_DATA_26:
    case MON_DATA_27:
    case MON_DATA_28:
    case MON_DATA_29:
    case MON_DATA_30:
    case MON_DATA_31:
    case MON_DATA_32:
    case MON_DATA_33:
    case MON_DATA_34:
    case MON_DATA_35:
    case MON_DATA_36:
    case MON_DATA_37:
    case MON_DATA_38:
    case MON_DATA_39:
    case MON_DATA_40:
    case MON_DATA_41:
    case MON_DATA_42:
    case MON_DATA_43:
    case MON_DATA_44:
    case MON_DATA_45:
    case MON_DATA_46:
    case MON_DATA_47:
    case MON_DATA_48:
    case MON_DATA_49:
    case MON_DATA_50:
    case MON_DATA_51:
    case MON_DATA_52:
    case MON_DATA_53:
    case MON_DATA_54:
    case MON_DATA_55:
    case MON_DATA_56:
    case MON_DATA_57:
    case MON_DATA_IS_EGG:
    case MON_DATA_77:
    case MON_DATA_78:
    case MON_DATA_79:
    case MON_DATA_80:
    case MON_DATA_81:
    case MON_DATA_82:
    case MON_DATA_83:
    case MON_DATA_84:
    case MON_DATA_85:
    case MON_DATA_86:
    case MON_DATA_87:
    case MON_DATA_88:
    case MON_DATA_89:
    case MON_DATA_90:
    case MON_DATA_91:
    case MON_DATA_92:
    case MON_DATA_93:
    case MON_DATA_94:
    case MON_DATA_95:
    case MON_DATA_96:
    case MON_DATA_97:
    case MON_DATA_CHAMPION_RIBBON:
    case MON_DATA_WINNING_RIBBON:
    case MON_DATA_VICTORY_RIBBON:
    case MON_DATA_ARTIST_RIBBON:
    case MON_DATA_EFFORT_RIBBON:
    case MON_DATA_MARINE_RIBBON:
    case MON_DATA_LAND_RIBBON:
    case MON_DATA_SKY_RIBBON:
    case MON_DATA_COUNTRY_RIBBON:
    case MON_DATA_NATIONAL_RIBBON:
    case MON_DATA_EARTH_RIBBON:
    case MON_DATA_WORLD_RIBBON:
    case MON_DATA_FATEFUL_ENCOUNTER:
    case MON_DATA_111:
    case MON_DATA_112:
    case MON_DATA_113:
    case MON_DATA_114:
    case MON_DATA_117:
    case MON_DATA_119:
    case MON_DATA_120:
    case MON_DATA_121:
    case MON_DATA_MET_GAME:
    case MON_DATA_123:
    case MON_DATA_124:
    case MON_DATA_125:
    case MON_DATA_126:
    case MON_DATA_127:
    case MON_DATA_128:
    case MON_DATA_129:
    case MON_DATA_130:
    case MON_DATA_131:
    case MON_DATA_132:
    case MON_DATA_133:
    case MON_DATA_134:
    case MON_DATA_135:
    case MON_DATA_136:
    case MON_DATA_137:
    case MON_DATA_138:
    case MON_DATA_139:
    case MON_DATA_140:
    case MON_DATA_141:
    case MON_DATA_142:
    case MON_DATA_143:
    case MON_DATA_144:
    case MON_DATA_145:
    case MON_DATA_146:
    case MON_DATA_147:
    case MON_DATA_148:
    case MON_DATA_149:
    case MON_DATA_150:
    case MON_DATA_151:
    case MON_DATA_152:
    case MON_DATA_153:
    case MON_DATA_POKERUS:
    case MON_DATA_POKEBALL:
    case MON_DATA_MET_LEVEL:
    case MON_DATA_OT_GENDER:
    case MON_DATA_158:
    case MON_DATA_159:
    case MON_DATA_175:
    case MON_DATA_176:
    case MON_DATA_177:
    case MON_DATA_178:
    case MON_DATA_179:
    default:
        GF_ASSERT(0);
        break;
    }
}

UnkStruct_02075874 * sub_02075874 (int param0, int param1, int param2)
{
    UnkStruct_02075874 * v0;

    v0 = Heap_AllocFromHeap(param2, sizeof(UnkStruct_02075874));
    sub_02078208(param0, param1, v0);

    return v0;
}

UnkStruct_02075874 * sub_02075894 (int param0, int param1)
{
    UnkStruct_02075874 * v0;

    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_02075874));
    sub_020781F8(param0, v0);

    return v0;
}

u32 sub_020758B0 (UnkStruct_02075874 * param0, int param1)
{
    u32 v0;

    GF_ASSERT(param0);

    switch (param1) {
    case 0:
        v0 = param0->unk_00;
        break;
    case 1:
        v0 = param0->unk_01;
        break;
    case 2:
        v0 = param0->unk_02;
        break;
    case 3:
        v0 = param0->unk_03;
        break;
    case 4:
        v0 = param0->unk_04;
        break;
    case 5:
        v0 = param0->unk_05;
        break;
    case 6:
        v0 = param0->unk_06;
        break;
    case 7:
        v0 = param0->unk_07;
        break;
    case 8:
        v0 = param0->unk_08;
        break;
    case 9:
        v0 = param0->unk_09;
        break;
    case 10:
        v0 = param0->unk_0A_0;
        break;
    case 11:
        v0 = param0->unk_0A_2;
        break;
    case 12:
        v0 = param0->unk_0A_4;
        break;
    case 13:
        v0 = param0->unk_0A_6;
        break;
    case 14:
        v0 = param0->unk_0A_8;
        break;
    case 15:
        v0 = param0->unk_0A_10;
        break;
    case 16:
        v0 = param0->unk_0C;
        break;
    case 17:
        v0 = param0->unk_0E;
        break;
    case 18:
        v0 = param0->unk_10;
        break;
    case 19:
        v0 = param0->unk_11;
        break;
    case 20:
        v0 = param0->unk_12;
        break;
    case 21:
        v0 = param0->unk_13;
        break;
    case 22:
        v0 = param0->unk_14;
        break;
    case 23:
        v0 = param0->unk_15;
        break;
    case 24:
        v0 = param0->unk_16;
        break;
    case 25:
        v0 = param0->unk_17;
        break;
    case 26:
        v0 = param0->unk_18;
        break;
    case 27:
        v0 = param0->unk_19_0;
        break;
    case 28:
        v0 = param0->unk_19_7;
        break;
    case 29:
        v0 = param0->unk_1C;
        break;
    case 30:
        v0 = param0->unk_20;
        break;
    case 31:
        v0 = param0->unk_24;
        break;
    case 32:
        v0 = param0->unk_28;
        break;
    }

    return v0;
}

void sub_020759B8 (UnkStruct_02075874 * param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

u32 sub_020759CC (int param0, int param1, int param2)
{
    u32 v0;
    UnkStruct_02075874 * v1;

    param0 = sub_02078740(param0, param1);

    v1 = sub_02075894(param0, 0);
    v0 = sub_020758B0(v1, param2);

    sub_020759B8(v1);

    return v0;
}

u32 sub_020759F0 (int param0, int param1)
{
    u32 v0;
    UnkStruct_02075874 * v1;

    v1 = sub_02075894(param0, 0);
    v0 = sub_020758B0(v1, param1);

    sub_020759B8(v1);

    return v0;
}

u8 sub_02075A10 (Pokemon * param0)
{
    u16 v0;
    u8 v1;
    u32 v2;
    u32 v3;
    u32 v4;
    u8 v5;
    BOOL v6;

    v6 = sub_02073C88(param0);
    v0 = GetMonData(param0, MON_DATA_SPECIES, NULL);
    v1 = GetMonData(param0, MON_DATA_161, NULL);
    v2 = sub_02075AD0(v0, v1);
    v4 = sub_02075AD0(v0, v1 + 1);
    v3 = GetMonData(param0, MON_DATA_EXP, NULL);

    sub_02073CD4(param0, v6);
    v5 = ((v3 - v2) * 100) / (v4 - v2);

    return v5;
}

u32 sub_02075A70 (Pokemon * param0)
{
    return sub_02075A78(&param0->unk_00);
}

u32 sub_02075A78 (BoxPokemon *boxMon)
{
    u16 v0 = sub_02074570(boxMon, MON_DATA_SPECIES, NULL);
    u16 v1 = sub_02075B40(boxMon) + 1;
    u32 v2 = sub_02074570(boxMon, MON_DATA_EXP, NULL);

    return sub_02075AD0(v0, v1) - v2;
}

u32 sub_02075AAC (Pokemon * param0)
{
    return sub_02075AD0(GetMonData(param0, MON_DATA_SPECIES, NULL), GetMonData(param0, MON_DATA_161, NULL));
}

u32 sub_02075AD0 (int param0, int param1)
{
    return sub_02075B00(sub_020759F0(param0, 21), param1);
}

void sub_02075AE4 (int param0, u32 * param1)
{
    GF_ASSERT(param0 < 8);
    NARC_ReadWholeMemberByIndexPair(param1, 3, param0);
}

u32 sub_02075B00 (int param0, int param1)
{
    u32 v0;
    u32 * v1;

    GF_ASSERT(param0 < 8);
    GF_ASSERT(param1 <= 101);

    v1 = Heap_AllocFromHeap(0, 101 * 4);
    sub_02075AE4(param0, v1);

    v0 = v1[param1];
    Heap_FreeToHeap(v1);

    return v0;
}

u32 sub_02075B38 (Pokemon * param0)
{
    return sub_02075B40(&param0->unk_00);
}

u32 sub_02075B40 (BoxPokemon *boxMon)
{
    int species;
    u32 exp;
    BOOL v2;

    v2 = sub_02073D20(boxMon);
    species = sub_02074570(boxMon, MON_DATA_SPECIES, 0);
    exp = sub_02074570(boxMon, MON_DATA_EXP, 0);

    sub_02073D48(boxMon, v2);

    return sub_02075B78(species, exp);
}

u32 sub_02075B78(u16 species, u32 exp)
{
    int v0;
    u32 v1;
    u32 * v2;
    UnkStruct_02075874 * v3 = sub_02075894(species, 0);

    v1 = sub_02075B9C(v3, species, exp);
    sub_020759B8(v3);

    return v1;
}

u32 sub_02075B9C (UnkStruct_02075874 * param0, u16 param1, u32 param2)
{
    static u32 v0[101];
    int v1, v2;

    v1 = sub_020758B0(param0, 21);
    sub_02075AE4(v1, v0);

    for (v2 = 1; v2 < 101; v2++) {
        if (v0[v2] > param2) {
            break;
        }
    }

    return v2 - 1;
}

u8 sub_02075BCC (Pokemon * param0)
{
    return sub_02075BD4(&param0->unk_00);
}

u8 sub_02075BD4 (BoxPokemon *boxMon)
{
    BOOL v0;
    u32 personality;

    v0 = sub_02073D20(boxMon);
    personality = sub_02074570(boxMon, MON_DATA_PERSONALITY, 0);

    sub_02073D48(boxMon, v0);

    return GetNatureFromPersonality(personality);
}

u8 GetNatureFromPersonality (u32 personality)
{
    return (u8)(personality % NUM_NATURES);
}

static const s8 gNatureStatTable[NUM_NATURES][NUM_NATURE_STATS] = {
                       // Attack  Defense  Speed  Sp.Atk  Sp.Def
    [NATURE_HARDY]   = {    0,      0,      0,      0,      0   },
    [NATURE_LONELY]  = {   +1,     -1,      0,      0,      0   },
    [NATURE_BRAVE]   = {   +1,      0,     -1,      0,      0   },
    [NATURE_ADAMANT] = {   +1,      0,      0,     -1,      0   },
    [NATURE_NAUGHTY] = {   +1,      0,      0,      0,     -1   },
    [NATURE_BOLD]    = {   -1,     +1,      0,      0,      0   },
    [NATURE_DOCILE]  = {    0,      0,      0,      0,      0   },
    [NATURE_RELAXED] = {    0,     +1,     -1,      0,      0   },
    [NATURE_IMPISH]  = {    0,     +1,      0,     -1,      0   },
    [NATURE_LAX]     = {    0,     +1,      0,      0,     -1   },
    [NATURE_TIMID]   = {   -1,      0,     +1,      0,      0   },
    [NATURE_HASTY]   = {    0,     -1,     +1,      0,      0   },
    [NATURE_SERIOUS] = {    0,      0,      0,      0,      0   },
    [NATURE_JOLLY]   = {    0,      0,     +1,     -1,      0   },
    [NATURE_NAIVE]   = {    0,      0,     +1,      0,     -1   },
    [NATURE_MODEST]  = {   -1,      0,      0,     +1,      0   },
    [NATURE_MILD]    = {    0,     -1,      0,     +1,      0   },
    [NATURE_QUIET]   = {    0,      0,     -1,     +1,      0   },
    [NATURE_BASHFUL] = {    0,      0,      0,      0,      0   },
    [NATURE_RASH]    = {    0,      0,      0,     +1,     -1   },
    [NATURE_CALM]    = {   -1,      0,      0,      0,     +1   },
    [NATURE_GENTLE]  = {    0,     -1,      0,      0,     +1   },
    [NATURE_SASSY]   = {    0,      0,     -1,      0,     +1   },
    [NATURE_CAREFUL] = {    0,      0,      0,     -1,     +1   },
    [NATURE_QUIRKY]  = {    0,      0,      0,      0,      0   },
};

u16 ModifyStatByNature(u8 nature, u16 stat, u8 statIndex)
{
// Because this is a u16 it will be unable to store the
// result of the multiplication for any stat > 595 for a
// positive nature and > 728 for a negative nature.
// Neither occur in the base game, but this can happen if
// any Nature-affected base stat is increased to a value
// above 248. The closest by default is Shuckle at 230.
#ifdef BUGFIX
    u32 retVal;
#else
    u16 retVal;
#endif

    // Don't modify HP, Accuracy, or Evasion by nature
    if (statIndex < STAT_ATK || statIndex > NUM_NATURE_STATS)
        return stat;

    switch (gNatureStatTable[nature][statIndex - 1]) {
    case 1:
        retVal = stat * 110;
        retVal /= 100;
        break;
    case -1:
        retVal = stat * 90;
        retVal /= 100;
        break;
    default:
        retVal = stat;
        break;
    }

    return retVal;
}

s8 sub_02075C60 (u8 param0, u8 param1)
{
    return gNatureStatTable[param0][param1 - 1];
}

static const s8 Unk_020F05A0[][3] = {
    {0x5, 0x3, 0x2},
    {0x5, 0x3, 0x2},
    {0x1, 0x1, 0x0},
    {0x3, 0x2, 0x1},
    {0x1, 0x1, 0x0},
    {0x1, 0x1, 0x1},
    {-1, -1, -1},
    {-5, -5, -10},
    {-5, -5, -10},
    {0x3, 0x2, 0x1}
};

void sub_02075C74 (Pokemon * param0, u8 param1, u16 param2)
{
    u16 v0;
    u16 v1;
    s16 v2;
    s8 v3;
    u8 v4;
    u8 v5;

    if (param1 == 5) {
        if (sub_0201D2E8() & 1) {
            return;
        }
    }

    v0 = GetMonData(param0, MON_DATA_SPECIES_EGG, NULL);

    if ((v0 == 0) || (v0 == 494)) {
        return;
    }

    v1 = GetMonData(param0, MON_DATA_HELD_ITEM, NULL);
    v5 = Item_GetAttribute(v1, 1, 0);
    v4 = 0;
    v2 = GetMonData(param0, MON_DATA_FRIENDSHIP, NULL);

    if (v2 >= 100) {
        v4++;
    }

    if (v2 >= 200) {
        v4++;
    }

    v3 = Unk_020F05A0[param1][v4];

    if ((v3 > 0) && (GetMonData(param0, MON_DATA_POKEBALL, NULL) == 11)) {
        v3++;
    }

    if ((v3 > 0) && (GetMonData(param0, MON_DATA_152, NULL) == param2)) {
        v3++;
    }

    if (v3 > 0) {
        if (v5 == 53) {
            v3 = v3 * 150 / 100;
        }
    }

    v2 += v3;

    if (v2 < 0) {
        v2 = 0;
    }

    if (v2 > 255) {
        v2 = 255;
    }

    sub_02074B30(param0, 9, (u8 *)&v2);
}

u8 sub_02075D6C (Pokemon * param0)
{
    return sub_02075D74((BoxPokemon *)&param0->unk_00);
}

u8 sub_02075D74 (BoxPokemon *boxMon)
{
    u16 v0;
    u32 personality;
    int v2;

    v2 = sub_02073D20(boxMon);
    v0 = sub_02074570(boxMon, MON_DATA_SPECIES, 0);
    personality = sub_02074570(boxMon, MON_DATA_PERSONALITY, 0);

    sub_02073D48(boxMon, v2);

    return sub_02075DAC(v0, personality);
}

u8 sub_02075DAC (u16 param0, u32 personality)
{
    UnkStruct_02075874 * v0;
    u8 v1;

    v0 = sub_02075894(param0, 0);
    v1 = sub_02075DD0(v0, param0, personality);

    sub_020759B8(v0);

    return v1;
}

u8 sub_02075DD0 (UnkStruct_02075874 * param0, u16 unused, u32 personality)
{
    u8 genderRatio = sub_020758B0(param0, 18);

    switch (genderRatio) {
    case MON_MALE:
        return 0;
    case MON_FEMALE:
        return 1;
    case MON_GENDERLESS:
        return 2;
    }

    if (genderRatio > (personality & 0xff)) {
        return 1;
    } else {
        return 0;
    }
}

u8 sub_02075E0C (Pokemon * param0)
{
    return sub_02075E14(&param0->unk_00);
}

u8 sub_02075E14 (BoxPokemon *boxMon)
{
    u32 v0;
    u32 personality;

    v0 = sub_02074570(boxMon, MON_DATA_OT_ID, 0);
    personality = sub_02074570(boxMon, MON_DATA_PERSONALITY, 0);

    return sub_02075E38(v0, personality);
}

u8 sub_02075E38 (u32 param0, u32 param1)
{
    return (((param0 & 0xffff0000) >> 16) ^ (param0 & 0xffff) ^ ((param1 & 0xffff0000) >> 16) ^ (param1 & 0xffff)) < 8;
}

u32 sub_02075E64 (u32 param0)
{
    int v0;
    u32 v1;
    u16 v2;
    u16 v3;

    param0 = (((param0 & 0xffff0000) >> 16) ^ (param0 & 0xffff)) >> 3;

    v2 = sub_0201D2E8() & 0x7;
    v3 = sub_0201D2E8() & 0x7;

    for (v0 = 0; v0 < 13; v0++) {
        if (param0 & sub_020787CC(v0)) {
            if (sub_0201D2E8() & 1) {
                v2 |= sub_020787CC(v0 + 3);
            } else {
                v3 |= sub_020787CC(v0 + 3);
            }
        } else {
            if (sub_0201D2E8() & 1) {
                v2 |= sub_020787CC(v0 + 3);
                v3 |= sub_020787CC(v0 + 3);
            }
        }
    }

    v1 = v2 | (v3 << 16);

    return v1;
}

void sub_02075EF4 (UnkStruct_02008A90 * param0, Pokemon * param1, u8 param2)
{
    sub_02075F0C(param0, &param1->unk_00, param2, 0);
}

void sub_02075F00 (UnkStruct_02008A90 * param0, Pokemon * param1, u8 param2)
{
    sub_02075F0C(param0, &param1->unk_00, param2, 1);
}

void sub_02075F0C (UnkStruct_02008A90 * param0, BoxPokemon *boxMon, u8 param2, int param3)
{
    BOOL v0;
    u16 species;
    u8 v2, v3, v4;
    u32 personality;

    v0 = sub_02073D20(boxMon);
    species = sub_02074570(boxMon, MON_DATA_SPECIES_EGG, NULL);
    v2 = sub_02075D74(boxMon);
    v3 = sub_02075E14(boxMon);
    personality = sub_02074570(boxMon, MON_DATA_PERSONALITY, NULL);

    if (species == SPECIES_EGG) {
        if (sub_02074570(boxMon, MON_DATA_SPECIES, NULL) == 490) {
            v4 = 1;
        } else {
            v4 = 0;
        }
    } else {
        v4 = sub_02074570(boxMon, MON_DATA_112, NULL);
    }

    if (param3 == 1) {
        sub_02076300(param0, species, v2, param2, v3, v4, personality);
    } else {
        sub_02075FB4(param0, species, v2, param2, v3, v4, personality);
    }

    sub_02073D48(boxMon, v0);
}

void sub_02075FB4 (UnkStruct_02008A90 * param0, u16 species, u8 param2, u8 param3, u8 param4, u8 formId, u32 param6)
{
    param0->unk_06 = 0;
    param0->unk_08 = 0;
    param0->unk_0C = 0;
    formId = SanitizeFormId(species, formId);

    switch (species) {
    case SPECIES_BURMY:
        param0->unk_00 = 117;
        param0->unk_02 = 72 + (param3 / 2) + formId * 2;
        param0->unk_04 = 166 + param4 + formId * 2;
        break;
    case SPECIES_WORMADAM:
        param0->unk_00 = 117;
        param0->unk_02 = 78 + (param3 / 2) + formId * 2;
        param0->unk_04 = 172 + param4 + formId * 2;
        break;
    case SPECIES_SHELLOS:
        param0->unk_00 = 117;
        param0->unk_02 = 84 + param3 + formId;
        param0->unk_04 = 178 + param4 + formId * 2;
        break;
    case SPECIES_GASTRODON:
        param0->unk_00 = 117;
        param0->unk_02 = 88 + param3 + formId;
        param0->unk_04 = 182 + param4 + formId * 2;
        break;
    case SPECIES_CHERRIM:
        param0->unk_00 = 117;
        param0->unk_02 = 92 + param3 + formId;
        param0->unk_04 = 186 + (param4 * 2) + formId;
        break;
    case SPECIES_ARCEUS:
        param0->unk_00 = 117;
        param0->unk_02 = 96 + (param3 / 2) + formId * 2;
        param0->unk_04 = 190 + param4 + formId * 2;
        break;
    case SPECIES_CASTFORM:
        param0->unk_00 = 117;
        param0->unk_02 = 64 + (param3 * 2) + formId;
        param0->unk_04 = 158 + (param4 * 4) + formId;
        break;
    case SPECIES_DEOXYS:
        param0->unk_00 = 117;
        param0->unk_02 = 0 + (param3 / 2) + formId * 2;
        param0->unk_04 = 154 + param4;
        break;
    case SPECIES_UNOWN:
        param0->unk_00 = 117;
        param0->unk_02 = 8 + (param3 / 2) + formId * 2;
        param0->unk_04 = 156 + param4;
        break;
    case SPECIES_EGG:
        param0->unk_00 = 117;
        param0->unk_02 = 132 + formId;
        param0->unk_04 = 226 + formId;
        break;
    case SPECIES_BAD_EGG:
        param0->unk_00 = 117;
        param0->unk_02 = 132;
        param0->unk_04 = 226;
        break;
    case SPECIES_SHAYMIN:
        param0->unk_00 = 117;
        param0->unk_02 = 134 + (param3 / 2) + formId * 2;
        param0->unk_04 = 228 + param4 + formId * 2;
        break;
    case SPECIES_ROTOM:
        param0->unk_00 = 117;
        param0->unk_02 = 138 + (param3 / 2) + formId * 2;
        param0->unk_04 = 232 + param4 + formId * 2;
        break;
    case SPECIES_GIRATINA:
        param0->unk_00 = 117;
        param0->unk_02 = 150 + (param3 / 2) + formId * 2;
        param0->unk_04 = 244 + param4 + formId * 2;
        break;
    default:
        param0->unk_00 = 4;
        param0->unk_02 = species * 6 + param3 + ((param2 != 1) ? 1 : 0);
        param0->unk_04 = species * 6 + 4 + param4;

        if ((species == SPECIES_SPINDA) && (param3 == 2)) {
            param0->unk_06 = 327;
            param0->unk_08 = 0;
            param0->unk_0C = param6;
        }

        break;
    }
}

u8 SanitizeFormId (u16 species, u8 formId)
{
    switch (species) {
    case SPECIES_BURMY:
        if (formId > 2)
            formId = 0;
        break;
    case SPECIES_WORMADAM:
        if (formId > 2)
            formId = 0;
        break;
    case SPECIES_SHELLOS:
        if (formId > 1)
            formId = 0;
        break;
    case SPECIES_GASTRODON:
        if (formId > 1)
            formId = 0;
        break;
    case SPECIES_CHERRIM:
        if (formId > 1)
            formId = 0;
        break;
    case SPECIES_ARCEUS:
        if (formId > 17)
            formId = 0;
        break;
    case SPECIES_CASTFORM:
        if (formId > 3)
            formId = 0;
        break;
    case SPECIES_DEOXYS:
        if (formId > 3)
            formId = 0;
        break;
    case SPECIES_UNOWN:
        if (formId >= 28)
            formId = 0;
        break;
    case SPECIES_EGG:
        if (formId > 1)
            formId = 0;
        break;
    case SPECIES_SHAYMIN:
        if (formId > 1)
            formId = 0;
        break;
    case SPECIES_ROTOM:
        if (formId > 5)
            formId = 0;
        break;
    case SPECIES_GIRATINA:
        if (formId > 1)
            formId = 0;
        break;
    }

    return formId;
}

static void sub_02076300 (UnkStruct_02008A90 * param0, u16 species, u8 param2, u8 param3, u8 param4, u8 param5, u32 param6)
{
    param0->unk_06 = 0;
    param0->unk_08 = 0;
    param0->unk_0C = 0;

    param5 = SanitizeFormId(species, param5);

    switch (species) {
    case SPECIES_BURMY:
        param0->unk_00 = 166;
        param0->unk_02 = 72 + (param3 / 2) + param5 * 2;
        param0->unk_04 = 146 + param4 + param5 * 2;
        break;
    case SPECIES_WORMADAM:
        param0->unk_00 = 166;
        param0->unk_02 = 78 + (param3 / 2) + param5 * 2;
        param0->unk_04 = 152 + param4 + param5 * 2;
        break;
    case SPECIES_SHELLOS:
        param0->unk_00 = 166;
        param0->unk_02 = 84 + param3 + param5;
        param0->unk_04 = 158 + param4 + param5 * 2;
        break;
    case SPECIES_GASTRODON:
        param0->unk_00 = 166;
        param0->unk_02 = 88 + param3 + param5;
        param0->unk_04 = 162 + param4 + param5 * 2;
        break;
    case SPECIES_CHERRIM:
        param0->unk_00 = 166;
        param0->unk_02 = 92 + param3 + param5;
        param0->unk_04 = 166 + (param4 * 2) + param5;
        break;
    case SPECIES_ARCEUS:
        param0->unk_00 = 166;
        param0->unk_02 = 96 + (param3 / 2) + param5 * 2;
        param0->unk_04 = 170 + param4 + param5 * 2;
        break;
    case SPECIES_CASTFORM:
        param0->unk_00 = 166;
        param0->unk_02 = 64 + (param3 * 2) + param5;
        param0->unk_04 = 138 + (param4 * 4) + param5;
        break;
    case SPECIES_DEOXYS:
        param0->unk_00 = 166;
        param0->unk_02 = 0 + (param3 / 2) + param5 * 2;
        param0->unk_04 = 134 + param4;
        break;
    case SPECIES_UNOWN:
        param0->unk_00 = 166;
        param0->unk_02 = 8 + (param3 / 2) + param5 * 2;
        param0->unk_04 = 136 + param4;
        break;
    case SPECIES_EGG:
        param0->unk_00 = 166;
        param0->unk_02 = 132 + param5;
        param0->unk_04 = 206 + param5;
        break;
    case SPECIES_BAD_EGG:
        param0->unk_00 = 166;
        param0->unk_02 = 132;
        param0->unk_04 = 206;
        break;
    case SPECIES_SHAYMIN:
        if (param5 > 0) {
            param0->unk_00 = 117;
            param0->unk_02 = 134 + (param3 / 2) + param5 * 2;
            param0->unk_04 = 230 + param4;
        } else {
            param0->unk_00 = 165;
            param0->unk_02 = species * 6 + param3 + ((param2 != 1) ? 1 : 0);
            param0->unk_04 = species * 6 + 4 + param4;
        }
        break;
    case SPECIES_ROTOM:
        if (param5 > 0) {
            param0->unk_00 = 117;
            param0->unk_02 = 138 + (param3 / 2) + param5 * 2;
            param0->unk_04 = 232 + param4 + param5 * 2;
        } else {
            param0->unk_00 = 165;
            param0->unk_02 = species * 6 + param3 + ((param2 != 1) ? 1 : 0);
            param0->unk_04 = species * 6 + 4 + param4;
        }
        break;
    case SPECIES_GIRATINA:
        if (param5 > 0) {
            param0->unk_00 = 117;
            param0->unk_02 = 150 + (param3 / 2) + param5 * 2;
            param0->unk_04 = 244 + param4 + param5 * 2;
        } else {
            param0->unk_00 = 165;
            param0->unk_02 = species * 6 + param3 + ((param2 != 1) ? 1 : 0);
            param0->unk_04 = species * 6 + 4 + param4;
        }
        break;
    default:
        param0->unk_00 = 165;
        param0->unk_02 = species * 6 + param3 + ((param2 != 1) ? 1 : 0);
        param0->unk_04 = species * 6 + 4 + param4;

        if ((species == SPECIES_SPINDA) && (param3 == 2)) {
            param0->unk_06 = 327;
            param0->unk_08 = 0;
            param0->unk_0C = param6;
        }

        break;
    }
}

u8 sub_020765AC (Pokemon * param0, u8 param1)
{
    return sub_020765C4(&param0->unk_00, param1, 0);
}

u8 sub_020765B8 (Pokemon * param0, u8 param1)
{
    return sub_020765C4(&param0->unk_00, param1, 1);
}

u8 sub_020765C4 (BoxPokemon *boxMon, u8 param1, int param2)
{
    u16 species;
    u8 v1;
    u8 v2;
    u32 personality;

    species = sub_02074570(boxMon, MON_DATA_SPECIES_EGG, NULL);
    v1 = sub_02075D74(boxMon);
    personality = sub_02074570(boxMon, MON_DATA_PERSONALITY, NULL);

    if (species == SPECIES_EGG) {
        if (sub_02074570(boxMon, MON_DATA_SPECIES, NULL) == SPECIES_MANAPHY) {
            v2 = 1;
        } else {
            v2 = 0;
        }
    } else {
        v2 = sub_02074570(boxMon, MON_DATA_112, NULL);
    }

    if (param2 == 1) {
        return sub_020767BC(species, v1, param1, v2, personality);
    }

    return sub_02076648(species, v1, param1, v2, personality);
}

u8 sub_02076648 (u16 param0, u8 param1, u8 param2, u8 param3, u32 param4)
{
    int v0;
    int v1;
    u8 v2;

    param3 = SanitizeFormId(param0, param3);

    switch (param0) {
    case SPECIES_BURMY:
        v0 = 121;
        v1 = 72 + (param2 / 2) + param3 * 2;
        break;
    case SPECIES_WORMADAM:
        v0 = 121;
        v1 = 78 + (param2 / 2) + param3 * 2;
        break;
    case SPECIES_SHELLOS:
        v0 = 121;
        v1 = 84 + param2 + param3;
        break;
    case SPECIES_GASTRODON:
        v0 = 121;
        v1 = 88 + param2 + param3;
        break;
    case SPECIES_CHERRIM:
        v0 = 121;
        v1 = 92 + param2 + param3;
        break;
    case SPECIES_ARCEUS:
        v0 = 121;
        v1 = 96 + (param2 / 2) + param3 * 2;
        break;
    case SPECIES_CASTFORM:
        v0 = 121;
        v1 = 64 + param2 * 2 + param3;
        break;
    case SPECIES_DEOXYS:
        v0 = 121;
        v1 = 0 + (param2 / 2) + param3 * 2;
        break;
    case SPECIES_UNOWN:
        v0 = 121;
        v1 = 8 + (param2 / 2) + param3 * 2;
        break;
    case SPECIES_EGG:
        v0 = 121;
        v1 = 132 + param3;
        break;
    case SPECIES_BAD_EGG:
        v0 = 121;
        v1 = 132;
        break;
    case SPECIES_SHAYMIN:
        v0 = 121;
        v1 = 136 + (param2 / 2) + param3 * 2;
        break;
    case SPECIES_ROTOM:
        v0 = 121;
        v1 = 140 + (param2 / 2) + param3 * 2;
        break;
    case SPECIES_GIRATINA:
        v0 = 121;
        v1 = 152 + (param2 / 2) + param3 * 2;
        break;
    default:
        v0 = 5;
        v1 = param0 * 4 + param2 + ((param1 != 1) ? 1 : 0);
        break;
    }

    NARC_ReadWholeMemberByIndexPair(&v2, v0, v1);

    return v2;
}

static u8 sub_020767BC (u16 param0, u8 param1, u8 param2, u8 param3, u32 param4)
{
    int v0;
    int v1;
    u8 v2;

    param3 = SanitizeFormId(param0, param3);

    switch (param0) {
    case SPECIES_BURMY:
        v0 = 168;
        v1 = 72 + (param2 / 2) + param3 * 2;
        break;
    case SPECIES_WORMADAM:
        v0 = 168;
        v1 = 78 + (param2 / 2) + param3 * 2;
        break;
    case SPECIES_SHELLOS:
        v0 = 168;
        v1 = 84 + param2 + param3;
        break;
    case SPECIES_GASTRODON:
        v0 = 168;
        v1 = 88 + param2 + param3;
        break;
    case SPECIES_CHERRIM:
        v0 = 168;
        v1 = 92 + param2 + param3;
        break;
    case SPECIES_ARCEUS:
        v0 = 168;
        v1 = 96 + (param2 / 2) + param3 * 2;
        break;
    case SPECIES_CASTFORM:
        v0 = 168;
        v1 = 64 + param2 * 2 + param3;
        break;
    case SPECIES_DEOXYS:
        v0 = 168;
        v1 = 0 + (param2 / 2) + param3 * 2;
        break;
    case SPECIES_UNOWN:
        v0 = 168;
        v1 = 8 + (param2 / 2) + param3 * 2;
        break;
    case SPECIES_EGG:
        v0 = 168;
        v1 = 132 + param3;
        break;
    case SPECIES_BAD_EGG:
        v0 = 168;
        v1 = 132;
        break;
    case SPECIES_SHAYMIN:
        if (param3 > 0) {
            v0 = 121;
            v1 = 136 + (param2 / 2) + param3 * 2;
        } else {
            v0 = 167;
            v1 = param0 * 4 + param2 + ((param1 != 1) ? 1 : 0);
        }
        break;
    case SPECIES_ROTOM:
        if (param3 > 0) {
            v0 = 121;
            v1 = 140 + (param2 / 2) + param3 * 2;
        } else {
            v0 = 167;
            v1 = param0 * 4 + param2 + ((param1 != 1) ? 1 : 0);
        }
        break;
    case SPECIES_GIRATINA:
        if (param3 > 0) {
            v0 = 121;
            v1 = 152 + (param2 / 2) + param3 * 2;
        } else {
            v0 = 167;
            v1 = param0 * 4 + param2 + ((param1 != 1) ? 1 : 0);
        }
        break;
    default:
        v0 = 167;
        v1 = param0 * 4 + param2 + ((param1 != 1) ? 1 : 0);
        break;
    }

    NARC_ReadWholeMemberByIndexPair(&v2, v0, v1);

    return v2;
}

void sub_0207697C (UnkStruct_02008A90 * param0, u16 param1)
{
    param0->unk_00 = 60;
    param0->unk_02 = param1 * 2;
    param0->unk_04 = param1 * 2 + 1;
    param0->unk_06 = 0;
    param0->unk_08 = 0;
    param0->unk_0C = 0;
}

static const UnkStruct_ov104_0223F9E0 Unk_020F05E4 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    {0x4E2F, 0x4E2A, 0x4E27, 0x4E27, 0xffffffff, 0xffffffff},
    0x2,
    0x1
};

static const int Unk_020F0588[] = {
    0x0,
    0x0,
    0x1,
    0x0,
    0x0,
    0x1
};

UnkStruct_0200D0F4 * sub_02076994 (UnkStruct_0200C6E4 * param0, UnkStruct_0200C704 * param1, UnkStruct_02002F38 * param2, int param3, int param4, int param5, int param6, int param7, int param8)
{
    UnkStruct_ov104_0223F9E0 v0;
    UnkStruct_0200D0F4 * v1;
    NARC * v2;
    UnkStruct_ov5_021DE5D0 v3;
    int v4 = 1;

    sub_02076AAC(param5, param6, &v3);

    if (param5 == 102) {
        v4 = 2;
    }

    v2 = NARC_ctor(v3.unk_00, param8);

    sub_0200CC3C(param0, param1, v2, v3.unk_04, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 20015 + param7);
    sub_0200CDC4(param2, 2, param0, param1, v2, v3.unk_08, 0, v4, NNS_G2D_VRAM_TYPE_2DMAIN, 20010 + param7);
    sub_0200CE24(param0, param1, v2, v3.unk_0C, 0, 20007 + param7);
    sub_0200CE54(param0, param1, v2, v3.unk_10, 0, 20007 + param7);
    NARC_dtor(v2);

    v0 = Unk_020F05E4;

    v0.unk_14[0] = 20015 + param7;
    v0.unk_14[1] = 20010 + param7;
    v0.unk_14[2] = 20007 + param7;
    v0.unk_14[3] = 20007 + param7;
    v0.unk_08 = Unk_020F0588[param7];

    v1 = sub_0200CE6C(param0, param1, &v0);

    sub_02021F24(v1->unk_00, 0);
    sub_0200D4C4(v1, param3, param4);
    sub_0200D330(v1);
    sub_0200D390(v1, 1);

    return v1;
}

void sub_02076AAC (int param0, int param1, UnkStruct_ov5_021DE5D0 * param2)
{
    if (param1 == 2) {
        param2->unk_00 = 60;
        param2->unk_04 = 0 + param0 * 5;
        param2->unk_08 = 1 + param0 * 5;
        param2->unk_0C = 2 + param0 * 5;
        param2->unk_10 = 3 + param0 * 5;
        param2->unk_14 = 4 + param0 * 5;
    } else {
        param2->unk_00 = 6;
        param0 = sub_020788D0(param0);
        param2->unk_04 = 0 + param0 * 5;
        param2->unk_08 = 1 + param0 * 5;
        param2->unk_0C = 2 + param0 * 5;
        param2->unk_10 = 3 + param0 * 5;
        param2->unk_14 = 4 + param0 * 5;
    }
}

u32 sub_02076AF0 (void)
{
    return (u32)sizeof(Pokemon);
}

u32 sub_02076AF4 (void)
{
    return (u32)sizeof(BoxPokemon);
}

u8 sub_02076AF8 (Pokemon * param0)
{
    return sub_02076B00((BoxPokemon *)&param0->unk_00);
}

u8 sub_02076B00 (BoxPokemon *boxMon)
{
    return sub_02074570(boxMon, MON_DATA_112, NULL);
}

BoxPokemon *sub_02076B10 (Pokemon * param0)
{
    return &param0->unk_00;
}

u8 sub_02076B14 (Pokemon * param0)
{
    u16 v0;
    u8 v1;
    u32 v2;
    u32 v3;
    int v4;

    v0 = GetMonData(param0, MON_DATA_SPECIES, NULL);
    v1 = GetMonData(param0, MON_DATA_161, NULL) + 1;
    v2 = GetMonData(param0, MON_DATA_EXP, NULL);
    v4 = sub_020759F0(v0, 21);
    v3 = sub_02075B00(v4, 100);

    if (v2 > v3) {
        v2 = v3;
        sub_02074B30(param0, 8, (u8 *)&v2);
    }

    if (v1 > 100) {
        return 0;
    }

    v3 = sub_02075B00(v4, v1);

    if (v2 >= v3) {
        sub_02074B30(param0, 161, (u8 *)&v1);
        return 1;
    }

    return 0;
}

u16 sub_02076B94 (Party * param0, Pokemon * param1, u8 param2, u16 param3, int * param4)
{
    u16 v0;
    u16 v1;
    u8 v2;
    int v3;
    u16 v4 = 0;
    u16 v5;
    u32 v6;
    u8 v7;
    u8 v8;
    u16 v9 = 0;
    UnkStruct_0207821C * v10;
    int v11;

    v0 = GetMonData(param1, MON_DATA_SPECIES, NULL);
    v1 = GetMonData(param1, MON_DATA_HELD_ITEM, NULL);
    v6 = GetMonData(param1, MON_DATA_PERSONALITY, NULL);
    v8 = GetMonData(param1, MON_DATA_BEAUTY, NULL);
    v9 = (v6 & 0xffff0000) >> 16;
    v7 = Item_GetAttribute(v1, 1, 0);

    if (v0 != 64) {
        if ((v7 == 64) && (param2 != 3)) {
            return 0;
        }
    }

    if (param4 == NULL) {
        param4 = &v11;
    }

    v10 = Heap_AllocFromHeap(0, sizeof(UnkStruct_0207821C));
    sub_0207821C(v0, v10);

    switch (param2) {
    case 0:
        v2 = GetMonData(param1, MON_DATA_161, NULL);
        v5 = GetMonData(param1, MON_DATA_FRIENDSHIP, NULL);

        for (v3 = 0; v3 < 7; v3++) {
            switch (v10->unk_00[v3].unk_00) {
            case 1:
                if (220 <= v5) {
                    v4 = v10->unk_00[v3].unk_04;
                    param4[0] = 1;
                }
                break;
            case 2:
                if ((sub_02013948() == 0) && (220 <= v5)) {
                    v4 = v10->unk_00[v3].unk_04;
                    param4[0] = 2;
                }
                break;
            case 3:
                if ((sub_02013948() == 1) && (220 <= v5)) {
                    v4 = v10->unk_00[v3].unk_04;
                    param4[0] = 3;
                }
                break;
            case 4:
                if (v10->unk_00[v3].unk_02 <= v2) {
                    v4 = v10->unk_00[v3].unk_04;
                    param4[0] = 4;
                }
                break;
            case 8:
                if (v10->unk_00[v3].unk_02 <= v2) {
                    if ((GetMonData(param1, MON_DATA_165, NULL)) > (GetMonData(param1, MON_DATA_166, NULL))) {
                        v4 = v10->unk_00[v3].unk_04;
                        param4[0] = 8;
                    }
                }
                break;
            case 9:
                if (v10->unk_00[v3].unk_02 <= v2) {
                    if ((GetMonData(param1, MON_DATA_165, NULL)) == (GetMonData(param1, MON_DATA_166, NULL))) {
                        v4 = v10->unk_00[v3].unk_04;
                        param4[0] = 9;
                    }
                }
                break;
            case 10:
                if (v10->unk_00[v3].unk_02 <= v2) {
                    if ((GetMonData(param1, MON_DATA_165, NULL)) < (GetMonData(param1, MON_DATA_166, NULL))) {
                        v4 = v10->unk_00[v3].unk_04;
                        param4[0] = 10;
                    }
                }
                break;
            case 11:
                if (v10->unk_00[v3].unk_02 <= v2) {
                    if ((v9 % 10) < 5) {
                        v4 = v10->unk_00[v3].unk_04;
                        param4[0] = 11;
                    }
                }
                break;
            case 12:
                if (v10->unk_00[v3].unk_02 <= v2) {
                    if ((v9 % 10) >= 5) {
                        v4 = v10->unk_00[v3].unk_04;
                        param4[0] = 12;
                    }
                }
                break;
            case 13:
                if (v10->unk_00[v3].unk_02 <= v2) {
                    v4 = v10->unk_00[v3].unk_04;
                    param4[0] = 13;
                }
                break;
            case 14:
                param4[0] = 14;
                break;
            case 15:
                if (v10->unk_00[v3].unk_02 <= v8) {
                    v4 = v10->unk_00[v3].unk_04;
                    param4[0] = 15;
                }
                break;
            case 18:
                if ((sub_02013948() == 0) && (v10->unk_00[v3].unk_02 == v1)) {
                    v4 = v10->unk_00[v3].unk_04;
                    param4[0] = 18;
                }
                break;
            case 19:
                if ((sub_02013948() == 1) && (v10->unk_00[v3].unk_02 == v1)) {
                    v4 = v10->unk_00[v3].unk_04;
                    param4[0] = 19;
                }
                break;
            case 20:
                if (sub_0207749C(param1, v10->unk_00[v3].unk_02) == 1) {
                    v4 = v10->unk_00[v3].unk_04;
                    param4[0] = 20;
                }
                break;
            case 21:
                if (param0 != NULL) {
                    if (Party_HasSpecies(param0, v10->unk_00[v3].unk_02) == 1) {
                        v4 = v10->unk_00[v3].unk_04;
                        param4[0] = 21;
                    }
                }
                break;
            case 22:
                if ((GetMonData(param1, MON_DATA_111, NULL) == 0) && (v10->unk_00[v3].unk_02 <= v2)) {
                    v4 = v10->unk_00[v3].unk_04;
                    param4[0] = 22;
                }
                break;
            case 23:
                if ((GetMonData(param1, MON_DATA_111, NULL) == 1) && (v10->unk_00[v3].unk_02 <= v2)) {
                    v4 = v10->unk_00[v3].unk_04;
                    param4[0] = 23;
                }
                break;
            case 24:
                if (v10->unk_00[v3].unk_00 == param3) {
                    v4 = v10->unk_00[v3].unk_04;
                    param4[0] = 24;
                }
                break;
            case 25:
                if (v10->unk_00[v3].unk_00 == param3) {
                    v4 = v10->unk_00[v3].unk_04;
                    param4[0] = 25;
                }
                break;
            case 26:
                if (v10->unk_00[v3].unk_00 == param3) {
                    v4 = v10->unk_00[v3].unk_04;
                    param4[0] = 26;
                }
                break;
            }

            if (v4) {
                break;
            }
        }
        break;
    case 1:
        for (v3 = 0; v3 < 7; v3++) {
            switch (v10->unk_00[v3].unk_00) {
            case 5:
                v4 = v10->unk_00[v3].unk_04;
                param4[0] = 5;
                break;
            case 6:
                if (v10->unk_00[v3].unk_02 == v1) {
                    v4 = v10->unk_00[v3].unk_04;
                    param4[0] = 6;
                }
                break;
            }

            if (v4) {
                break;
            }
        }
        break;
    case 2:
    case 3:
        for (v3 = 0; v3 < 7; v3++) {
            if ((v10->unk_00[v3].unk_00 == 7) && (v10->unk_00[v3].unk_02 == param3)) {
                v4 = v10->unk_00[v3].unk_04;
                param4[0] = 0;
                break;
            }

            if ((v10->unk_00[v3].unk_00 == 16) && (GetMonData(param1, MON_DATA_111, NULL) == 0) && (v10->unk_00[v3].unk_02 == param3)) {
                v4 = v10->unk_00[v3].unk_04;
                param4[0] = 0;
                break;
            }

            if ((v10->unk_00[v3].unk_00 == 17) && (GetMonData(param1, MON_DATA_111, NULL) == 1) && (v10->unk_00[v3].unk_02 == param3)) {
                v4 = v10->unk_00[v3].unk_04;
                param4[0] = 0;
                break;
            }

            if (v4) {
                break;
            }
        }
        break;
    }

    Heap_FreeToHeap(v10);
    return v4;
}

u16 sub_02076F84 (const u16 species)
{
    FSFile v0;
    u16 v1 = 0;

    GF_ASSERT((493 + 1) > species);

    FS_InitFile(&v0);
    FS_OpenFile(&v0, "poketool/personal/pms.narc");
    FS_SeekFile(&v0, species * 2, FS_SEEK_SET);
    FS_ReadFile(&v0, &v1, 2);
    FS_CloseFile(&v0);

    return v1;
}

u16 sub_02076FD4 (const u16 species)
{
    switch (species) {
    case SPECIES_WOBBUFFET:
    case SPECIES_MARILL:
    case SPECIES_MR_MIME:
    case SPECIES_SUDOWOODO:
    case SPECIES_SNORLAX:
    case SPECIES_MANTINE:
    case SPECIES_ROSELIA:
    case SPECIES_CHANSEY:
    case SPECIES_CHIMECHO:
        return species;
        break;
    }

    return sub_02076F84(species);
}

void sub_02077020 (BoxPokemon *boxMon)
{
    BOOL v0;
    int v1;
    u16 v2;
    u16 v3;
    int v4;
    u16 v5;
    u8 v6;
    u16 * v7 = Heap_AllocFromHeap(0, 44);

    v0 = sub_02073D20(boxMon);
    v2 = sub_02074570(boxMon, MON_DATA_SPECIES, 0);
    v4 = sub_02074570(boxMon, MON_DATA_112, 0);
    v6 = sub_02075B40(boxMon);

    sub_02077D28(v2, v4, v7);

    v1 = 0;

    while (v7[v1] != 0xffff) {
        if ((v7[v1] & 0xfe00) <= (v6 << 9)) {
            v3 = v7[v1] & 0x1ff;
            v5 = sub_020770D4(boxMon, v3);

            if (v5 == 0xffff) {
                sub_02077144(boxMon, v3);
            }
        } else {
            break;
        }

        v1++;
    }

    Heap_FreeToHeap(v7);
    sub_02073D48(boxMon, v0);
}

u16 sub_020770C4 (Pokemon * param0, u16 param1)
{
    BoxPokemon *v0 = sub_02076B10(param0);
    return sub_020770D4(v0, param1);
}

u16 sub_020770D4 (BoxPokemon *boxMon, u16 param1)
{
    int v0;
    u8 v1;
    u16 v2;
    u16 v3;
    BOOL v4;

    v3 = 0xffff;

    v4 = sub_02073D20(boxMon);

    for (v0 = 0; v0 < 4; v0++) {
        if ((v2 = sub_02074570(boxMon, 54 + v0, NULL)) == 0) {
            sub_02077238(boxMon, param1, v0);
            v3 = param1;
            break;
        } else {
            if (v2 == param1) {
                v3 = 0xfffe;
                break;
            }
        }
    }

    sub_02073D48(boxMon, v4);

    return v3;
}

void sub_02077134 (Pokemon * param0, u16 param1)
{
    BoxPokemon *v0 = sub_02076B10(param0);
    sub_02077144(v0, param1);
}

void sub_02077144 (BoxPokemon *boxMon, u16 param1)
{
    int v0;
    u16 v1[4];
    u8 v2[4];
    u8 v3[4];
    BOOL v4;

    v4 = sub_02073D20(boxMon);

    for (v0 = 0; v0 < 3; v0++) {
        v1[v0] = sub_02074570(boxMon, 55 + v0, NULL);
        v2[v0] = sub_02074570(boxMon, 59 + v0, NULL);
        v3[v0] = sub_02074570(boxMon, 63 + v0, NULL);
    }

    v1[3] = param1;
    v2[3] = MoveTable_GetMoveAttribute(param1, 5);
    v3[3] = 0;

    for (v0 = 0; v0 < 4; v0++) {
        SetBoxMonData(boxMon, MON_DATA_54 + v0, (u8 *)&v1[v0]);
        SetBoxMonData(boxMon, MON_DATA_58 + v0, (u8 *)&v2[v0]);
        SetBoxMonData(boxMon, MON_DATA_62 + v0, (u8 *)&v3[v0]);
    }

    sub_02073D48(boxMon, v4);
}

void sub_020771F8 (Pokemon * param0, u16 param1, u8 param2)
{
    u32 v0, v1;

    sub_02077230(param0, param1, param2);

    v1 = 0;
    sub_02074B30(param0, 62 + param2, &v1);

    v0 = MoveTable_GetMoveMaxPP(param1, 0);
    sub_02074B30(param0, 58 + param2, (u8 *)&v0);

    return;
}

void sub_02077230 (Pokemon * param0, u16 param1, u8 param2)
{
    sub_02077238(&param0->unk_00, param1, param2);
}

void sub_02077238 (BoxPokemon *boxMon, u16 param1, u8 param2)
{
    u8 v0;
    u8 v1;

    SetBoxMonData(boxMon, MON_DATA_54 + param2, (u8 *)&param1);

    v1 = sub_02074570(boxMon, 62 + param2, NULL);
    v0 = MoveTable_GetMoveMaxPP(param1, v1);

    SetBoxMonData(boxMon, MON_DATA_58 + param2, (u8 *)&v0);
}

u16 sub_0207727C (Pokemon * param0, int * param1, u16 * param2)
{
    u16 v0 = 0x0;
    u16 v1;
    int v2;
    u8 v3;
    u16 * v4 = Heap_AllocFromHeap(0, 44);

    v1 = GetMonData(param0, MON_DATA_SPECIES, NULL);
    v2 = GetMonData(param0, MON_DATA_112, NULL);
    v3 = GetMonData(param0, MON_DATA_161, NULL);

    sub_02077D28(v1, v2, v4);

    if (v4[param1[0]] == 0xffff) {
        Heap_FreeToHeap(v4);
        return 0x0;
    }

    while ((v4[param1[0]] & 0xfe00) != (v3 << 9)) {
        param1[0]++;

        if (v4[param1[0]] == 0xffff) {
            Heap_FreeToHeap(v4);
            return 0x0;
        }
    }

    if ((v4[param1[0]] & 0xfe00) == (v3 << 9)) {
        param2[0] = v4[param1[0]] & 0x1ff;
        param1[0]++;

        v0 = sub_020770C4(param0, param2[0]);
    }

    Heap_FreeToHeap(v4);

    return v0;
}

void sub_02077344 (Pokemon * param0, int param1, int param2)
{
    sub_0207734C(&param0->unk_00, param1, param2);
}

void sub_0207734C (BoxPokemon *boxMon, int param1, int param2)
{
    u16 v0[2];
    u8 v1[2];
    u8 v2[2];

    v0[0] = sub_02074570(boxMon, 54 + param1, NULL);
    v1[0] = sub_02074570(boxMon, 58 + param1, NULL);
    v2[0] = sub_02074570(boxMon, 62 + param1, NULL);
    v0[1] = sub_02074570(boxMon, 54 + param2, NULL);
    v1[1] = sub_02074570(boxMon, 58 + param2, NULL);
    v2[1] = sub_02074570(boxMon, 62 + param2, NULL);

    SetBoxMonData(boxMon, MON_DATA_54 + param1, (u8 *)&v0[1]);
    SetBoxMonData(boxMon, MON_DATA_58 + param1, (u8 *)&v1[1]);
    SetBoxMonData(boxMon, MON_DATA_62 + param1, (u8 *)&v2[1]);
    SetBoxMonData(boxMon, MON_DATA_54 + param2, (u8 *)&v0[0]);
    SetBoxMonData(boxMon, MON_DATA_58 + param2, (u8 *)&v1[0]);
    SetBoxMonData(boxMon, MON_DATA_62 + param2, (u8 *)&v2[0]);
}

void sub_02077408 (Pokemon * param0, u32 param1)
{
    u32 v0;
    u16 v1;
    u8 v2;
    u8 v3;

    for (v0 = param1; v0 < 3; v0++) {
        v1 = GetMonData(param0, 54 + v0 + 1, NULL);
        v2 = GetMonData(param0, 58 + v0 + 1, NULL);
        v3 = GetMonData(param0, 62 + v0 + 1, NULL);

        sub_02074B30(param0, 54 + v0, (u8 *)&v1);
        sub_02074B30(param0, 58 + v0, (u8 *)&v2);
        sub_02074B30(param0, 62 + v0, (u8 *)&v3);
    }

    v1 = 0;
    v2 = 0;
    v3 = 0;

    sub_02074B30(param0, 57, (u8 *)&v1);
    sub_02074B30(param0, 61, (u8 *)&v2);
    sub_02074B30(param0, 65, (u8 *)&v3);
}

BOOL sub_0207749C (Pokemon * param0, u16 param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (GetMonData(param0, 54 + v0, NULL) == param1) {
            break;
        }
    }

    return v0 != 4;
}

void sub_020774C8 (BoxPokemon *boxMon, Pokemon * param1)
{
    u32 v0 = 0;
    UnkStruct_0202818C * v1;
    UnkStruct_0202CA28 v2;

    param1->unk_00 = *boxMon;

    if (param1->unk_00.unk_04_1) {
        param1->unk_00.unk_04_0 = 1;
    }

    sub_02074B30(param1, 160, (u8 *)&v0);
    sub_02074B30(param1, 163, (u8 *)&v0);
    sub_02074B30(param1, 164, (u8 *)&v0);

    v1 = sub_0202818C(0);

    sub_02074B30(param1, 170, v1);
    Heap_FreeToHeap(v1);
    sub_02074B30(param1, 162, (u8 *)&v0);

    MI_CpuClearFast(&v2, sizeof(UnkStruct_0202CA28));

    sub_02074B30(param1, 171, (UnkStruct_0202CA28 *)&v2);
    sub_0207418C(param1);
}

u8 sub_02077550 (Party * param0)
{
    u8 v0, v1;
    int v2, v3;
    Pokemon * v4;

    v3 = Party_GetCurrentCount(param0);
    v0 = 1;

    for (v2 = 0; v2 < v3; v2++) {
        v4 = Party_GetPokemonBySlotIndex(param0, v2);

        if ((GetMonData(v4, MON_DATA_SPECIES, NULL)) && (GetMonData(v4, MON_DATA_IS_EGG, NULL) == 0)) {
            v1 = GetMonData(v4, MON_DATA_161, NULL);

            if (v1 > v0) {
                v0 = v1;
            }
        }
    }

    return v0;
}

u16 sub_020775A4 (u16 param0)
{
    u16 v0;

    NARC_ReadFromMemberByIndexPair(&v0, 109, 0, param0 * 2, 2);

    return v0;
}

u16 sub_020775C4 (u16 param0)
{
    u16 v0 = 0;

    if (param0 <= 210) {
        NARC_ReadFromMemberByIndexPair(&v0, 145, 0, param0 * 2, 2);
    }

    return v0;
}

void sub_020775EC (Pokemon * param0, Pokemon * param1)
{
    *param1 = *param0;
    return;
}

void CopyBoxPokemon(BoxPokemon *src, BoxPokemon *dest)
{
    *dest = *src;
    return;
}

void sub_02077618 (Pokemon * param0, BoxPokemon *boxMon)
{
    *boxMon = param0->unk_00;
    return;
}

s8 sub_0207762C (Pokemon * param0, int param1)
{
    return sub_02077634(&param0->unk_00, param1);
}

s8 sub_02077634 (BoxPokemon *boxMon, int param1)
{
    return sub_02077648(sub_02074570(boxMon, MON_DATA_PERSONALITY, NULL), param1);
}

s8 sub_02077648 (u32 personality, int param1)
{
    u8 nature;

    nature = GetNatureFromPersonality(personality);
    return Unk_020F0695[nature][param1];
}

int sub_02077660 (int param0, int param1, u16 * param2)
{
    int v0;
    u16 * v1 = Heap_AllocFromHeap(0, 44);

    sub_02077D28(param0, param1, v1);

    v0 = 0;

    while (v1[v0] != 0xffff) {
        param2[v0] = v1[v0] & 0x1ff;
        v0++;
    }

    Heap_FreeToHeap(v1);
    return v0;
}

void sub_020776B0 (Party * param0)
{
    u16 v0;
    u8 v1;
    Pokemon * v2;
    int v3;
    int v4;

    v3 = Party_GetCurrentCount(param0);
    v0 = sub_0201D2E8();

    if ((v0 == 16384) || (v0 == 32768) || (v0 == 49152)) {
        do {
            v4 = sub_0201D2E8() % v3;
            v2 = Party_GetPokemonBySlotIndex(param0, v4);

            if ((GetMonData(v2, MON_DATA_SPECIES, NULL)) && (GetMonData(v2, MON_DATA_IS_EGG, NULL) == 0)) {
                break;
            } else {
                v4 = v3;
            }
        } while (v4 == v3);

        if (sub_02077758(param0, sub_020787CC(v4)) == 0) {
            do {
                v1 = sub_0201D2E8() & 0xff;
            } while ((v1 & 0x7) == 0);

            if (v1 & 0xf0) {
                v1 &= 0x7;
            }

            v1 |= (v1 << 4);
            v1 &= 0xf3;
            v1++;

            sub_02074B30(v2, 154, (u8 *)&v1);
        }
    }
}

u8 sub_02077758 (Party * param0, u8 param1)
{
    int v0 = 0;
    int v1 = 1;
    u8 v2 = 0;
    Pokemon * v3;

    if (param1) {
        do {
            if (param1 & 1) {
                v3 = Party_GetPokemonBySlotIndex(param0, v0);

                if (GetMonData(v3, MON_DATA_POKERUS, NULL)) {
                    v2 |= v1;
                }
            }

            v0++;
            v1 = v1 << 1;
            param1 = param1 >> 1;
        } while (param1 != 0);
    } else {
        v3 = Party_GetPokemonBySlotIndex(param0, v0);

        if (GetMonData(v3, MON_DATA_POKERUS, NULL)) {
            v2++;
        }
    }

    return v2;
}

void sub_020777B4 (Party * param0, s32 param1)
{
    int v0;
    int v1;
    u8 v2;
    Pokemon * v3;

    v1 = Party_GetCurrentCount(param0);

    for (v0 = 0; v0 < v1; v0++) {
        v3 = Party_GetPokemonBySlotIndex(param0, v0);

        if (GetMonData(v3, MON_DATA_SPECIES, NULL)) {
            v2 = GetMonData(v3, MON_DATA_POKERUS, NULL);

            if (v2 & 0xf) {
                if (((v2 & 0xf) < param1) || (param1 > 4)) {
                    v2 &= 0xf0;
                } else {
                    v2 -= param1;
                }

                if (v2 == 0) {
                    v2 = 0x10;
                }

                sub_02074B30(v3, 154, (u8 *)&v2);
            }
        }
    }
}

void sub_0207782C (Party * param0)
{
    int v0;
    int v1;
    u8 v2;
    Pokemon * v3;

    v1 = Party_GetCurrentCount(param0);

    if (sub_0201D2E8() % 3 == 0) {
        for (v0 = 0; v0 < v1; v0++) {
            v3 = Party_GetPokemonBySlotIndex(param0, v0);

            if (GetMonData(v3, MON_DATA_SPECIES, NULL)) {
                v2 = GetMonData(v3, MON_DATA_POKERUS, NULL);

                if (v2 & 0xf) {
                    if (v0 != 0) {
                        v3 = Party_GetPokemonBySlotIndex(param0, v0 - 1);

                        if ((GetMonData(v3, MON_DATA_POKERUS, NULL) & 0xf0) == 0) {
                            sub_02074B30(v3, 154, (u8 *)&v2);
                        }
                    }

                    if (v0 < v1 - 1) {
                        v3 = Party_GetPokemonBySlotIndex(param0, v0 + 1);

                        if ((GetMonData(v3, MON_DATA_POKERUS, NULL) & 0xf0) == 0) {
                            sub_02074B30(v3, 154, (u8 *)&v2);
                            v0++;
                        }
                    }
                }
            }
        }
    }
}

BOOL sub_020778D8 (Pokemon * param0)
{
    return sub_020778E0(&param0->unk_00);
}

BOOL sub_020778E0 (BoxPokemon *boxMon)
{
    return (sub_02074570(boxMon, MON_DATA_POKERUS, NULL) & 0xf) != 0;
}

BOOL sub_020778F8 (Pokemon * param0)
{
    return sub_02077900(&param0->unk_00);
}

BOOL sub_02077900 (BoxPokemon *boxMon)
{
    u8 v0;

    v0 = sub_02074570(boxMon, MON_DATA_POKERUS, NULL);

    if (v0 & 0xf) {
        return 0;
    }

    return (v0 & 0xf0) != 0;
}

void sub_02077928 (Pokemon * param0)
{
    sub_02077930(&param0->unk_00);
}

void sub_02077930 (BoxPokemon *boxMon)
{
    int v0;
    int v1;
    int v2;
    int v3;

    v0 = sub_02074570(boxMon, MON_DATA_SPECIES, NULL);
    v1 = sub_02074570(boxMon, MON_DATA_10, NULL);
    v2 = sub_02074570(boxMon, MON_DATA_HELD_ITEM, NULL);

    if ((v0 == 493) && (v1 == 121)) {
        v3 = sub_02077988(Item_GetAttribute(v2, 1, 0));
        SetBoxMonData(boxMon, MON_DATA_112, &v3);
    }
}

u8 sub_02077988 (u16 param0)
{
    u8 v0;

    switch (param0) {
    case 126:
        v0 = 10;
        break;
    case 127:
        v0 = 11;
        break;
    case 128:
        v0 = 13;
        break;
    case 129:
        v0 = 12;
        break;
    case 130:
        v0 = 15;
        break;
    case 131:
        v0 = 1;
        break;
    case 132:
        v0 = 3;
        break;
    case 133:
        v0 = 4;
        break;
    case 134:
        v0 = 2;
        break;
    case 135:
        v0 = 14;
        break;
    case 136:
        v0 = 6;
        break;
    case 137:
        v0 = 5;
        break;
    case 138:
        v0 = 7;
        break;
    case 139:
        v0 = 16;
        break;
    case 140:
        v0 = 17;
        break;
    case 141:
        v0 = 8;
        break;
    default:
        v0 = 0;
        break;
    }

    return v0;
}

int sub_02077A00 (Pokemon * param0)
{
    int v0;

    v0 = sub_02077A1C(&param0->unk_00);

    if (v0 != -1) {
        sub_0207418C(param0);
    }

    return v0;
}

int sub_02077A1C (BoxPokemon *boxMon)
{
    int v0;
    int v1;
    int v2;

    v0 = sub_02074570(boxMon, MON_DATA_SPECIES, NULL);
    v1 = sub_02074570(boxMon, MON_DATA_HELD_ITEM, NULL);

    if (v0 == 487) {
        v2 = (v1 == 112) ? 1 : 0;

        SetBoxMonData(boxMon, MON_DATA_112, &v2);
        sub_02078044(boxMon);

        return v2;
    }

    return -1;
}

void sub_02077A64 (Pokemon * mon)
{
    int v0 = 1;

    if (GetMonData(mon, MON_DATA_SPECIES, NULL) == 487) {
        SetBoxMonData(&mon->unk_00, MON_DATA_112, &v0);
        sub_02078044(&mon->unk_00);
        sub_0207418C(mon);
    }
}

void sub_02077A9C (Party * param0, int param1)
{
    int v0, v1;
    Pokemon * v2;

    v1 = Party_GetCurrentCount(param0);

    for (v0 = 0; v0 < v1; v0++) {
        v2 = Party_GetPokemonBySlotIndex(param0, v0);

        if (param1) {
            sub_02077A64(v2);
        } else {
            sub_02077A00(v2);
        }
    }
}

void sub_02077ACC (Pokemon * param0, int param1)
{
    sub_02077ADC(&param0->unk_00, param1);
    sub_0207418C(param0);
}

void sub_02077ADC (BoxPokemon *boxMon, int param1)
{
    int v0;

    v0 = sub_02074570(boxMon, MON_DATA_SPECIES, NULL);

    if (v0 == 492) {
        GF_ASSERT(param1 <= 1);

        SetBoxMonData(boxMon, MON_DATA_112, &param1);
        sub_02078044(boxMon);
    }
}

BOOL sub_02077B14 (Pokemon * param0)
{
    u32 v0, v1, v2, v3, v4;
    RTCTime v5;

    v0 = GetMonData(param0, MON_DATA_SPECIES, NULL);
    v1 = GetMonData(param0, MON_DATA_112, NULL);
    v2 = GetMonData(param0, MON_DATA_160, NULL);
    v3 = GetMonData(param0, MON_DATA_163, NULL);
    v4 = GetMonData(param0, MON_DATA_FATEFUL_ENCOUNTER, NULL);

    sub_02013880(&v5);

    if ((v0 == 492) && (v1 == 0) && (v3 > 0) && (v4 == 1) && ((v2 & 0x20) == 0) && ((v5.hour >= 4) && (v5.hour < 20))) {
        return 1;
    }

    return 0;
}

void sub_02077B8C (Party * param0)
{
    int v0, v1, v2, v3;
    Pokemon * v4;
    int v5 = 0;

    v1 = Party_GetCurrentCount(param0);

    for (v0 = 0; v0 < v1; v0++) {
        v4 = Party_GetPokemonBySlotIndex(param0, v0);
        v2 = GetMonData(v4, MON_DATA_SPECIES, NULL);
        v3 = GetMonData(v4, MON_DATA_112, NULL);

        if ((v2 == 492) && (v3 == 1)) {
            sub_02077ACC(v4, v5);
        }
    }
}

BOOL sub_02077BD8 (Party * param0, int param1, const RTCTime * param2)
{
    s32 v0, v1;

    if ((param2->hour >= 20) || (param2->hour < 4)) {
        v0 = param2->hour;

        if (v0 < 4) {
            v0 += 24;
        }

        v0 -= 20;
        v1 = param2->minute + v0 * 60;

        param1++;

        if (v1 < param1) {
            sub_02077B8C(param0);
            return 1;
        }

        return 0;
    } else {
        v1 = param2->minute + (param2->hour - 4) * 60;

        if (v1 < param1) {
            sub_02077B8C(param0);
            return 1;
        }

        return 0;
    }
}

BOOL sub_02077C20 (Pokemon * param0, int param1, int param2)
{
    int v0, v1;

    v0 = GetMonData(param0, MON_DATA_SPECIES, NULL);

    if (v0 != 479) {
        return 0;
    }

    v1 = GetMonData(param0, MON_DATA_112, NULL);

    {
        int v2, v3, v4, v5;
        static const u16 v6[] = {
            0,
            315,
            56,
            59,
            403,
            437
        };

        v4 = v6[param1];

        for (v2 = 0; v2 < 4; v2++) {
            v5 = GetMonData(param0, 54 + v2, NULL);

            for (v3 = 1; v3 < NELEMS(v6); v3++) {
                if ((v5 != 0) && (v5 == v6[v3])) {
                    if (v4 != 0) {
                        sub_020771F8(param0, v4, v2);
                        v4 = 0;
                        break;
                    } else {
                        sub_02077408(param0, v2);
                        v2--;
                        break;
                    }
                }
            }
        }

        if (v4 != 0) {
            for (v2 = 0; v2 < 4; v2++) {
                if (GetMonData(param0, 54 + v2, NULL) == 0) {
                    sub_020771F8(param0, v4, v2);
                    break;
                }
            }

            if (v2 == 4) {
                sub_020771F8(param0, v4, param2);
            }
        }

        if (GetMonData(param0, MON_DATA_54, NULL) == 0) {
            sub_020771F8(param0, 84, 0);
        }
    }

    sub_02074B30(param0, 112, &param1);
    sub_0207803C(param0);
    sub_0207418C(param0);

    return 1;
}

void sub_02077D28 (int param0, int param1, u16 * param2)
{
    param0 = sub_02078740(param0, param1);
    NARC_ReadWholeMemberByIndexPair(param2, 33, param0);
}

void sub_02077D3C (UnkStruct_0202CC84 * param0, int param1, u16 param2, int param3, int param4, int param5, int param6, int param7)
{
    if (param2 == 441) {
        if (sub_020064C8(param1) == 0) {
            sub_020063D4(1);
            sub_020059D0(param1, param2, param4, param5, param7, param3);
        } else {
            if (param6) {
                sub_020063D4(1);
            }

            sub_020063E4(param0, NULL, param5, param4);
        }
    } else {
        sub_020059D0(param1, param2, param4, param5, param7, param3);
    }
}

void sub_02077DB4 (UnkStruct_0202CC84 * param0, int param1, u16 param2, int param3, int param4, int param5, int param6, int param7, u8 param8)
{
    if (param2 == 441) {
        if (sub_020064C8(param1) == 0) {
            sub_020063D4(1);
            sub_02005F4C(param1, param2, param4, param5, param7, param8, param3);
        } else {
            if (param6) {
                sub_020063D4(1);
            }

            sub_02006438(param0, NULL, param5, param4, param8);
        }
    } else {
        sub_02005F4C(param1, param2, param4, param5, param7, param8, param3);
    }
}

BOOL sub_02077E3C (Pokemon * param0)
{
    int v0, v1;

    v0 = GetMonData(param0, MON_DATA_SPECIES, NULL);
    v1 = GetMonData(param0, MON_DATA_112, NULL);

    return sub_02005844(v0, v1);
}

void sub_02077E64 (Pokemon * param0, UnkStruct_02025E6C * param1, int param2, int param3, int param4, int param5)
{
    int v0;

    sub_02077EA4(&param0->unk_00, param1, param2, param3, param4, param5);

    if (param2 == 14) {
        v0 = GetMonData(param0, MON_DATA_164, NULL);
        sub_02074B30(param0, 163, &v0);

        v0 = 0;
        sub_02074B30(param0, 160, &v0);
    }
}

void sub_02077EA4 (BoxPokemon *boxMon, UnkStruct_02025E6C * param1, int param2, int param3, int param4, int param5)
{
    sub_0209305C(boxMon, param1, 0, param3, param5);
    SetBoxMonData(boxMon, MON_DATA_MET_GAME, &Unk_020E4C40);
    SetBoxMonData(boxMon, MON_DATA_POKEBALL, &param2);
    SetBoxMonData(boxMon, MON_DATA_158, &param4);
}

void sub_02077EE4 (Pokemon * param0, UnkStruct_02025E6C * param1, int param2, int param3, int param4, int param5)
{
    sub_02077EF8(&param0->unk_00, param1, param2, param3, param4, param5);
}

void sub_02077EF8 (BoxPokemon *boxMon, UnkStruct_02025E6C * param1, int param2, int param3, int param4, int param5)
{
    int v0;
    sub_02077EA4(boxMon, param1, param2, param3, param4, param5);
}

static const u16 Unk_020F0574[][2] = {
    {0x2D, 0x5F},
    {0x14, 0x50}
};

void sub_02077F0C (Pokemon * param0, u32 param1, int param2)
{
    int v0;
    u32 v1;
    u16 v2;
    u16 v3;
    u8 v4;
    u16 v5, v6;

    if (param1 & ((0x1 | 0x80))) {
        return;
    }

    v1 = sub_0201D2E8() % 100;
    v2 = GetMonData(param0, MON_DATA_SPECIES, NULL);
    v3 = GetMonData(param0, MON_DATA_112, NULL);
    v5 = sub_020759CC(v2, v3, 16);
    v6 = sub_020759CC(v2, v3, 17);

    if ((v5 == v6) && (v5 != 0)) {
        sub_02074B30(param0, 6, &v5);
        return;
    }

    if (v1 < Unk_020F0574[param2][0]) {
        return;
    } else if (v1 < Unk_020F0574[param2][1]) {
        sub_02074B30(param0, 6, &v5);
    } else {
        sub_02074B30(param0, 6, &v6);
    }
}

BOOL sub_02077FB4 (Pokemon * param0, u8 param1)
{
    return sub_02077FBC(&param0->unk_00, param1);
}

BOOL sub_02077FBC (BoxPokemon *boxMon, u8 param1)
{
    u16 species;
    int v1;

    species = sub_02074570(boxMon, MON_DATA_SPECIES_EGG, NULL);
    v1 = sub_02074570(boxMon, MON_DATA_112, NULL);

    return sub_02077FE4(species, v1, param1);
}

BOOL sub_02077FE4 (u16 param0, int param1, u8 param2)
{
    u32 v0;
    u8 v1;

    if (param0 == 494) {
        return 0;
    }

    if (param2 < 32) {
        v0 = (1 << param2);
        v1 = 29;
    } else if (param2 < 64) {
        v0 = (1 << (param2 - 32));
        v1 = 30;
    } else if (param2 < 96) {
        v0 = (1 << (param2 - 64));
        v1 = 31;
    } else {
        v0 = (1 << (param2 - 96));
        v1 = 32;
    }

    return (sub_020759CC(param0, param1, v1) & v0) != 0;
}

void sub_0207803C (Pokemon * param0)
{
    sub_02078044(&param0->unk_00);
}

void sub_02078044 (BoxPokemon *boxMon)
{
    BOOL v0;
    int v1, v2;
    int v3, v4;
    u32 personality;

    v0 = sub_02073D20(boxMon);
    v1 = sub_02074570(boxMon, MON_DATA_SPECIES, NULL);
    personality = sub_02074570(boxMon, MON_DATA_PERSONALITY, NULL);
    v2 = sub_02074570(boxMon, MON_DATA_112, NULL);
    v3 = sub_020759CC(v1, v2, 24);
    v4 = sub_020759CC(v1, v2, 25);

    if (v4 != 0) {
        if (personality & 1) {
            SetBoxMonData(boxMon, MON_DATA_10, (u8 *)&v4);
        } else {
            SetBoxMonData(boxMon, MON_DATA_10, (u8 *)&v3);
        }
    } else {
        SetBoxMonData(boxMon, MON_DATA_10, (u8 *)&v3);
    }

    sub_02073D48(boxMon, v0);
}

void sub_020780C4 (Pokemon * param0, u32 param1)
{
    Pokemon * v0;
    PokemonSubstruct0 * v1;
    PokemonSubstruct1 * v2;
    PokemonSubstruct2 * v3;
    PokemonSubstruct3 * v4;
    PokemonSubstruct0 * v5;
    PokemonSubstruct1 * v6;
    PokemonSubstruct2 * v7;
    PokemonSubstruct3 * v8;

    v0 = sub_02073C74(0);

    sub_020775EC(param0, v0);

    v1 = (PokemonSubstruct0 *)sub_0207825C(&v0->unk_00, param0->unk_00.personality, 0);
    v2 = (PokemonSubstruct1 *)sub_0207825C(&v0->unk_00, param0->unk_00.personality, 1);
    v3 = (PokemonSubstruct2 *)sub_0207825C(&v0->unk_00, param0->unk_00.personality, 2);
    v4 = (PokemonSubstruct3 *)sub_0207825C(&v0->unk_00, param0->unk_00.personality, 3);
    v5 = (PokemonSubstruct0 *)sub_0207825C(&param0->unk_00, param1, 0);
    v6 = (PokemonSubstruct1 *)sub_0207825C(&param0->unk_00, param1, 1);
    v7 = (PokemonSubstruct2 *)sub_0207825C(&param0->unk_00, param1, 2);
    v8 = (PokemonSubstruct3 *)sub_0207825C(&param0->unk_00, param1, 3);

    sub_02078234(&v0->unk_00.unk_08, sizeof(PokemonSubstruct0) * 4, v0->unk_00.unk_06);
    sub_02078234(&param0->unk_08, sizeof(UnkStruct_02073C74_sub2), param0->unk_00.personality);
    sub_02078234(&param0->unk_00.unk_08, sizeof(PokemonSubstruct0) * 4, param0->unk_00.unk_06);

    param0->unk_00.personality = param1;

    *v5 = *v1;
    *v6 = *v2;
    *v7 = *v3;
    *v8 = *v4;

    param0->unk_00.unk_06 = sub_0207823C(&param0->unk_00.unk_08, sizeof(PokemonSubstruct0) * 4);

    sub_0207822C(&param0->unk_00.unk_08, sizeof(PokemonSubstruct0) * 4, param0->unk_00.unk_06);
    sub_0207822C(&param0->unk_08, sizeof(UnkStruct_02073C74_sub2), param0->unk_00.personality);
    Heap_FreeToHeap(v0);
}

static void sub_020781F8 (int param0, UnkStruct_02075874 * param1)
{
    NARC_ReadWholeMemberByIndexPair(param1, 2, param0);
}

static void sub_02078208 (int param0, int param1, UnkStruct_02075874 * param2)
{
    param0 = sub_02078740(param0, param1);
    NARC_ReadWholeMemberByIndexPair(param2, 2, param0);
}

static void sub_0207821C (int param0, UnkStruct_0207821C * param1)
{
    NARC_ReadWholeMemberByIndexPair(param1, 34, param0);
}

static void sub_0207822C (void * param0, u32 param1, u32 param2)
{
    sub_0201D5D4(param0, param1, param2);
}

static void sub_02078234 (void * param0, u32 param1, u32 param2)
{
    sub_0201D600(param0, param1, param2);
}

static u16 sub_0207823C (void * param0, u32 param1)
{
    int v0;
    u16 * v1 = (u16 *)param0;
    u16 v2 = 0;

    for (v0 = 0; v0 < param1 / 2; v0++) {
        v2 += v1[v0];
    }

    return v2;
}

static void * sub_0207825C (BoxPokemon *boxMon, u32 param1, u8 param2)
{
    void * v0;

    param1 = (param1 & 0x3e000) >> 13;

    GF_ASSERT(param1 <= 31);

    switch (param1) {
    case 0:
    case 24:
    {
        UnkStruct_0207825C * v1 = (UnkStruct_0207825C *)&boxMon->unk_08;

        switch (param2) {
        case 0:
            v0 = &v1->unk_00;
            break;
        case 1:
            v0 = &v1->unk_20;
            break;
        case 2:
            v0 = &v1->unk_40;
            break;
        case 3:
            v0 = &v1->unk_60;
            break;
        }
        break;
    }
    case 1:
    case 25:
    {
        UnkStruct_0207825C_1 * v2 = (UnkStruct_0207825C_1 *)&boxMon->unk_08;

        switch (param2) {
        case 0:
            v0 = &v2->unk_00;
            break;
        case 1:
            v0 = &v2->unk_20;
            break;
        case 2:
            v0 = &v2->unk_60;
            break;
        case 3:
            v0 = &v2->unk_40;
            break;
        }
        break;
    }
    case 2:
    case 26:
    {
        UnkStruct_0207825C_2 * v3 = (UnkStruct_0207825C_2 *)&boxMon->unk_08;

        switch (param2) {
        case 0:
            v0 = &v3->unk_00;
            break;
        case 1:
            v0 = &v3->unk_40;
            break;
        case 2:
            v0 = &v3->unk_20;
            break;
        case 3:
            v0 = &v3->unk_60;
            break;
        }
        break;
    }
    case 3:
    case 27:
    {
        UnkStruct_0207825C_3 * v4 = (UnkStruct_0207825C_3 *)&boxMon->unk_08;

        switch (param2) {
        case 0:
            v0 = &v4->unk_00;
            break;
        case 1:
            v0 = &v4->unk_60;
            break;
        case 2:
            v0 = &v4->unk_20;
            break;
        case 3:
            v0 = &v4->unk_40;
            break;
        }
        break;
    }
    case 4:
    case 28:
    {
        UnkStruct_0207825C_4 * v5 = (UnkStruct_0207825C_4 *)&boxMon->unk_08;

        switch (param2) {
        case 0:
            v0 = &v5->unk_00;
            break;
        case 1:
            v0 = &v5->unk_40;
            break;
        case 2:
            v0 = &v5->unk_60;
            break;
        case 3:
            v0 = &v5->unk_20;
            break;
        }
        break;
    }
    case 5:
    case 29:
    {
        UnkStruct_0207825C_5 * v6 = (UnkStruct_0207825C_5 *)&boxMon->unk_08;

        switch (param2) {
        case 0:
            v0 = &v6->unk_00;
            break;
        case 1:
            v0 = &v6->unk_60;
            break;
        case 2:
            v0 = &v6->unk_40;
            break;
        case 3:
            v0 = &v6->unk_20;
            break;
        }
        break;
    }
    case 6:
    case 30:
    {
        UnkStruct_0207825C_6 * v7 = (UnkStruct_0207825C_6 *)&boxMon->unk_08;

        switch (param2) {
        case 0:
            v0 = &v7->unk_20;
            break;
        case 1:
            v0 = &v7->unk_00;
            break;
        case 2:
            v0 = &v7->unk_40;
            break;
        case 3:
            v0 = &v7->unk_60;
            break;
        }
        break;
    }
    case 7:
    case 31:
    {
        UnkStruct_0207825C_7 * v8 = (UnkStruct_0207825C_7 *)&boxMon->unk_08;

        switch (param2) {
        case 0:
            v0 = &v8->unk_20;
            break;
        case 1:
            v0 = &v8->unk_00;
            break;
        case 2:
            v0 = &v8->unk_60;
            break;
        case 3:
            v0 = &v8->unk_40;
            break;
        }
        break;
    }
    case 8:
    {
        UnkStruct_0207825C_8 * v9 = (UnkStruct_0207825C_8 *)&boxMon->unk_08;

        switch (param2) {
        case 0:
            v0 = &v9->unk_40;
            break;
        case 1:
            v0 = &v9->unk_00;
            break;
        case 2:
            v0 = &v9->unk_20;
            break;
        case 3:
            v0 = &v9->unk_60;
            break;
        }
        break;
    }
    case 9:
    {
        UnkStruct_0207825C_9 * v10 = (UnkStruct_0207825C_9 *)&boxMon->unk_08;

        switch (param2) {
        case 0:
            v0 = &v10->unk_60;
            break;
        case 1:
            v0 = &v10->unk_00;
            break;
        case 2:
            v0 = &v10->unk_20;
            break;
        case 3:
            v0 = &v10->unk_40;
            break;
        }
        break;
    }
    case 10:
    {
        UnkStruct_0207825C_10 * v11 = (UnkStruct_0207825C_10 *)&boxMon->unk_08;

        switch (param2) {
        case 0:
            v0 = &v11->unk_40;
            break;
        case 1:
            v0 = &v11->unk_00;
            break;
        case 2:
            v0 = &v11->unk_60;
            break;
        case 3:
            v0 = &v11->unk_20;
            break;
        }
        break;
    }
    case 11:
    {
        UnkStruct_0207825C_11 * v12 = (UnkStruct_0207825C_11 *)&boxMon->unk_08;

        switch (param2) {
        case 0:
            v0 = &v12->unk_60;
            break;
        case 1:
            v0 = &v12->unk_00;
            break;
        case 2:
            v0 = &v12->unk_40;
            break;
        case 3:
            v0 = &v12->unk_20;
            break;
        }
        break;
    }
    case 12:
    {
        UnkStruct_0207825C_12 * v13 = (UnkStruct_0207825C_12 *)&boxMon->unk_08;

        switch (param2) {
        case 0:
            v0 = &v13->unk_20;
            break;
        case 1:
            v0 = &v13->unk_40;
            break;
        case 2:
            v0 = &v13->unk_00;
            break;
        case 3:
            v0 = &v13->unk_60;
            break;
        }
        break;
    }
    case 13:
    {
        UnkStruct_0207825C_13 * v14 = (UnkStruct_0207825C_13 *)&boxMon->unk_08;

        switch (param2) {
        case 0:
            v0 = &v14->unk_20;
            break;
        case 1:
            v0 = &v14->unk_60;
            break;
        case 2:
            v0 = &v14->unk_00;
            break;
        case 3:
            v0 = &v14->unk_40;
            break;
        }
        break;
    }
    case 14:
    {
        UnkStruct_0207825C_14 * v15 = (UnkStruct_0207825C_14 *)&boxMon->unk_08;

        switch (param2) {
        case 0:
            v0 = &v15->unk_40;
            break;
        case 1:
            v0 = &v15->unk_20;
            break;
        case 2:
            v0 = &v15->unk_00;
            break;
        case 3:
            v0 = &v15->unk_60;
            break;
        }
        break;
    }
    case 15:
    {
        UnkStruct_0207825C_15 * v16 = (UnkStruct_0207825C_15 *)&boxMon->unk_08;

        switch (param2) {
        case 0:
            v0 = &v16->unk_60;
            break;
        case 1:
            v0 = &v16->unk_20;
            break;
        case 2:
            v0 = &v16->unk_00;
            break;
        case 3:
            v0 = &v16->unk_40;
            break;
        }
        break;
    }
    case 16:
    {
        UnkStruct_0207825C_16 * v17 = (UnkStruct_0207825C_16 *)&boxMon->unk_08;

        switch (param2) {
        case 0:
            v0 = &v17->unk_40;
            break;
        case 1:
            v0 = &v17->unk_60;
            break;
        case 2:
            v0 = &v17->unk_00;
            break;
        case 3:
            v0 = &v17->unk_20;
            break;
        }
        break;
    }
    case 17:
    {
        UnkStruct_0207825C_17 * v18 = (UnkStruct_0207825C_17 *)&boxMon->unk_08;

        switch (param2) {
        case 0:
            v0 = &v18->unk_60;
            break;
        case 1:
            v0 = &v18->unk_40;
            break;
        case 2:
            v0 = &v18->unk_00;
            break;
        case 3:
            v0 = &v18->unk_20;
            break;
        }
        break;
    }
    case 18:
    {
        UnkStruct_0207825C_18 * v19 = (UnkStruct_0207825C_18 *)&boxMon->unk_08;

        switch (param2) {
        case 0:
            v0 = &v19->unk_20;
            break;
        case 1:
            v0 = &v19->unk_40;
            break;
        case 2:
            v0 = &v19->unk_60;
            break;
        case 3:
            v0 = &v19->unk_00;
            break;
        }
        break;
    }
    case 19:
    {
        UnkStruct_0207825C_19 * v20 = (UnkStruct_0207825C_19 *)&boxMon->unk_08;

        switch (param2) {
        case 0:
            v0 = &v20->unk_20;
            break;
        case 1:
            v0 = &v20->unk_60;
            break;
        case 2:
            v0 = &v20->unk_40;
            break;
        case 3:
            v0 = &v20->unk_00;
            break;
        }
        break;
    }
    case 20:
    {
        UnkStruct_0207825C_20 * v21 = (UnkStruct_0207825C_20 *)&boxMon->unk_08;

        switch (param2) {
        case 0:
            v0 = &v21->unk_40;
            break;
        case 1:
            v0 = &v21->unk_20;
            break;
        case 2:
            v0 = &v21->unk_60;
            break;
        case 3:
            v0 = &v21->unk_00;
            break;
        }
        break;
    }
    case 21:
    {
        UnkStruct_0207825C_21 * v22 = (UnkStruct_0207825C_21 *)&boxMon->unk_08;

        switch (param2) {
        case 0:
            v0 = &v22->unk_60;
            break;
        case 1:
            v0 = &v22->unk_20;
            break;
        case 2:
            v0 = &v22->unk_40;
            break;
        case 3:
            v0 = &v22->unk_00;
            break;
        }
        break;
    }
    case 22:
    {
        UnkStruct_0207825C_22 * v23 = (UnkStruct_0207825C_22 *)&boxMon->unk_08;

        switch (param2) {
        case 0:
            v0 = &v23->unk_40;
            break;
        case 1:
            v0 = &v23->unk_60;
            break;
        case 2:
            v0 = &v23->unk_20;
            break;
        case 3:
            v0 = &v23->unk_00;
            break;
        }
        break;
    }
    case 23:
    {
        UnkStruct_0207825C_23 * v24 = (UnkStruct_0207825C_23 *)&boxMon->unk_08;

        switch (param2) {
        case 0:
            v0 = &v24->unk_60;
            break;
        case 1:
            v0 = &v24->unk_40;
            break;
        case 2:
            v0 = &v24->unk_20;
            break;
        case 3:
            v0 = &v24->unk_00;
            break;
        }
        break;
    }
    }

    return v0;
}

static int sub_02078740 (int param0, int param1)
{
    switch (param0) {
    case SPECIES_DEOXYS:
        if ((param1) && (param1 <= 3)) {
            param0 = (496 - 1) + param1;
        }
        break;
    case SPECIES_WORMADAM:
        if ((param1) && (param1 <= 2)) {
            param0 = (499 - 1) + param1;
        }
        break;
    case SPECIES_GIRATINA:
        if ((param1) && (param1 <= 1)) {
            param0 = (501 - 1) + param1;
        }
        break;
    case SPECIES_SHAYMIN:
        if ((param1) && (param1 <= 1)) {
            param0 = (502 - 1) + param1;
        }
        break;
    case SPECIES_ROTOM:
        if ((param1) && (param1 <= 5)) {
            param0 = (503 - 1) + param1;
        }
        break;
    default:
        break;
    }

    return param0;
}

u32 sub_020787CC (int param0)
{
    int v0;
    u32 v1 = 1;

    GF_ASSERT(param0 < 32);

    for (v0 = 0; v0 < param0; v0++) {
        v1 <<= 1;
    }

    return v1;
}

int sub_020787EC (u32 param0)
{
    int v0;
    u32 v1 = 1;

    for (v0 = 0; v0 < 32; v0++) {
        if (param0 & v1) {
            break;
        }

        v1 <<= 1;
    }

    return v0;
}

static const u16 Unk_020F05BE[18] = {
    0x96,
    0x97,
    0xF9,
    0xFA,
    0xFB,
    0x17E,
    0x17F,
    0x180,
    0x181,
    0x182,
    0x1E3,
    0x1E4,
    0x1E7,
    0x1E9,
    0x1EA,
    0x1EB,
    0x1EC,
    0x1ED
};

BOOL sub_02078804 (u16 param0)
{
    u32 v0;

    for (v0 = 0; v0 < NELEMS(Unk_020F05BE); v0++) {
        if (param0 == Unk_020F05BE[v0]) {
            return 1;
        }
    }

    return 0;
}

u16 sub_02078824 (u8 param0)
{
    if (param0 >= NELEMS(Unk_020F05BE)) {
        param0 = 0;
    }

    return Unk_020F05BE[param0];
}

BOOL sub_02078838 (Pokemon * param0)
{
    u16 v0 = (u16)GetMonData(param0, MON_DATA_SPECIES, NULL);
    return sub_02078804(v0);
}

BOOL sub_0207884C (BoxPokemon *boxMon, UnkStruct_02025E6C * param1, int param2)
{
    u32 v0 = sub_02025F20(param1);
    u32 v1 = sub_02074570(boxMon, MON_DATA_OT_ID, NULL);
    u32 v2 = sub_02025F30(param1);
    u32 v3 = sub_02074570(boxMon, MON_DATA_OT_GENDER, NULL);
    UnkStruct_02023790 * v4 = sub_02025F04(param1, param2);
    UnkStruct_02023790 * v5 = sub_02023790(8, param2);
    BOOL v6 = 0;

    sub_02074570(boxMon, MON_DATA_145, v5);

    if ((v0 == v1) && (v2 == v3) && (sub_02023BE0(v4, v5) == 0)) {
        v6 = 1;
    }

    sub_020237BC(v5);
    sub_020237BC(v4);

    return v6;
}

int sub_020788D0 (int param0)
{
    switch (param0) {
    case 0:
    case 1:
        break;
    case 63:
        param0 = 2;
        break;
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
        param0 = 3 + (param0 - 90);
        break;
    case 103:
    case 104:
        param0 = 8 + (param0 - 103);
        break;
    default:
        if (sub_020793AC(param0) == 1) {
            param0 = 1;
        } else {
            param0 = 0;
        }
        break;
    }

    return param0;
}

void sub_0207893C (Pokemon * param0)
{
    u8 v0;
    UnkStruct_0202CA28 v1;

    v0 = 0;

    MI_CpuClearFast(&v1, sizeof(UnkStruct_0202CA28));

    sub_02074B30(param0, 162, (u8 *)&v0);
    sub_02074B30(param0, 171, (UnkStruct_0202CA28 *)&v1);
}

void sub_0207896C (BoxPokemon *boxMon)
{
    BOOL v0;
    int v1;

    v0 = sub_02073D20(boxMon);

    for (v1 = 0; v1 < 4; v1++) {
        if (sub_02074570(boxMon, 54 + v1, NULL)) {
            u8 v2 = sub_02074570(boxMon, 66 + v1, NULL);

            SetBoxMonData(boxMon, MON_DATA_58 + v1, &v2);
        }
    }

    sub_02073D48(boxMon, v0);
}

static inline int inline_020789BC (int param0)
{
    int v0;

    v0 = (param0 & 0x1) ? 0 : 1;
    return v0;
}

void sub_020789BC (NARC * param0, UnkStruct_02007C10 * param1, u16 param2, u16 param3)
{
    UnkStruct_020789BC v0;
    int v1;

    v1 = inline_020789BC(param3);

    NARC_ReadFromMember(param0, 0, param2 * sizeof(UnkStruct_020789BC), sizeof(UnkStruct_020789BC), &v0);
    MI_CpuCopy8(&v0.unk_00[v1].unk_03[0], param1, sizeof(UnkStruct_02007C10) * 10);
}

void sub_020789F4 (NARC * param0, UnkStruct_02015F84 * param1, UnkStruct_02007C7C * param2, u16 param3, int param4, int param5, int param6)
{
    UnkStruct_020789F4 v0;
    UnkStruct_020789BC v1;
    int v2;
    int v3;

    v3 = (param4 == 2) ? 0 : 1;

    NARC_ReadFromMember(param0, 0, param3 * sizeof(UnkStruct_020789BC), sizeof(UnkStruct_020789BC), &v1);

    v0.unk_00 = v1.unk_00[v3].unk_01;
    v0.unk_02 = v1.unk_00[v3].unk_02;
    v0.unk_04 = param5;

    sub_02015FCC(param1, param2, &v0, param6);
}

void sub_02078A4C (NARC * param0, u8 * param1, u16 param2, u16 param3)
{
    UnkStruct_020789BC v0;
    int v1;

    v1 = inline_020789BC(param3);
    NARC_ReadFromMember(param0, 0, param2 * sizeof(UnkStruct_020789BC), sizeof(UnkStruct_020789BC), &v0);

    *param1 = v0.unk_00[v1].unk_00;
}

void sub_02078A80 (NARC * param0, s8 * param1, u16 param2)
{
    UnkStruct_020789BC v0;

    NARC_ReadFromMember(param0, 0, param2 * sizeof(UnkStruct_020789BC), sizeof(UnkStruct_020789BC), &v0);
    *param1 = v0.unk_56;
}

void sub_02078AA4 (NARC * param0, s8 * param1, u16 param2)
{
    UnkStruct_020789BC v0;

    NARC_ReadFromMember(param0, 0, param2 * sizeof(UnkStruct_020789BC), sizeof(UnkStruct_020789BC), &v0);
    *param1 = v0.unk_57;
}

void sub_02078AC8 (NARC * param0, u8 * param1, u16 param2)
{
    UnkStruct_020789BC v0;

    NARC_ReadFromMember(param0, 0, param2 * sizeof(UnkStruct_020789BC), sizeof(UnkStruct_020789BC), &v0);
    *param1 = v0.unk_58;
}

BOOL sub_02078AEC (int param0, Pokemon * param1, int param2)
{
    int v0;
    int v1;
    UnkStruct_0202CA28 v2;
    NARC * v3;

    v0 = param0;

    if (v0 == 0) {
        return 0;
    }

    v3 = NARC_ctor(152, param2);
    v0 = v0 - 1;
    v1 = 1;

    NARC_ReadFromMember(v3, 0, v0 * sizeof(UnkStruct_0202CA28), sizeof(UnkStruct_0202CA28), &v2);
    sub_02074B30(param1, 162, &v1);
    sub_02074B30(param1, 171, &v2);
    NARC_dtor(v3);

    return 1;
}

void sub_02078B40 (Pokemon * mon, UnkStruct_02078B40 * param1)
{
    BoxPokemon *boxMon;
    PokemonSubstruct0 * substruct0;
    PokemonSubstruct1 * substruct1;
    PokemonSubstruct2 * substruct2;
    PokemonSubstruct3 * substruct3;
    int v5;
    u16 v6;

    if (mon->unk_00.unk_04_0 == 0)
    {
        sub_02078234(&mon->unk_08, sizeof(UnkStruct_02073C74_sub2), mon->unk_00.personality);
        sub_02078234(&mon->unk_00.unk_08, sizeof(PokemonSubstruct0) * 4, mon->unk_00.unk_06);
    }

    boxMon = sub_02076B10(mon);
    substruct0 = (PokemonSubstruct0 *)sub_0207825C(boxMon, boxMon->personality, 0);
    substruct1 = (PokemonSubstruct1 *)sub_0207825C(boxMon, boxMon->personality, 1);
    substruct2 = (PokemonSubstruct2 *)sub_0207825C(boxMon, boxMon->personality, 2);
    substruct3 = (PokemonSubstruct3 *)sub_0207825C(boxMon, boxMon->personality, 3);

    param1->unk_00 = boxMon->personality;
    param1->unk_04_0 = 0;
    param1->unk_04_1 = 0;
    param1->unk_04_2 = boxMon->unk_04_2;
    param1->unk_06 = substruct0->species;
    param1->unk_08 = substruct0->item;
    param1->unk_0C = substruct0->unk_04;
    param1->unk_10 = substruct0->unk_08;
    param1->unk_14 = substruct0->friendship;
    param1->unk_15 = substruct0->unk_0D;
    param1->unk_16 = substruct0->unk_10;
    param1->unk_17 = substruct0->unk_11;
    param1->unk_18 = substruct0->unk_12;
    param1->unk_19 = substruct0->unk_13;
    param1->unk_1A = substruct0->unk_14;
    param1->unk_1B = substruct0->unk_15;
    param1->unk_59 = substruct0->unk_0F;

    for (v5 = 0; v5 < 4; v5++) {
        param1->unk_1C[v5] = substruct1->unk_00[v5];
        param1->unk_24[v5] = substruct1->unk_08[v5];
        param1->unk_28[v5] = substruct1->unk_0C[v5];
    }

    param1->unk_2C_0 = substruct1->unk_10_0;
    param1->unk_2C_5 = substruct1->unk_10_5;
    param1->unk_2C_10 = substruct1->unk_10_10;
    param1->unk_2C_15 = substruct1->unk_10_15;
    param1->unk_2C_20 = substruct1->unk_10_20;
    param1->unk_2C_25 = substruct1->unk_10_25;
    param1->unk_2C_30 = substruct1->unk_10_30;
    param1->unk_2C_31 = substruct1->unk_10_31;
    param1->unk_30_0 = substruct1->fatefulEncounter;
    param1->unk_30_1 = substruct1->unk_18_1;
    param1->unk_30_3 = substruct1->unk_18_3;

    for (v5 = 0; v5 < 10 + 1; v5++) {
        param1->unk_32[v5] = substruct2->unk_00[v5];
    }

    for (v5 = 0; v5 < 7 + 1; v5++) {
        param1->unk_48[v5] = substruct3->unk_00[v5];
    }

    param1->unk_58 = substruct3->unk_1B;

    param1->unk_5C = mon->unk_08.unk_00;
    param1->unk_60 = mon->unk_08.unk_04;
    param1->unk_61 = mon->unk_08.unk_05;
    param1->unk_62 = mon->unk_08.unk_06;
    param1->unk_64 = mon->unk_08.unk_08;
    param1->unk_66 = mon->unk_08.unk_0A;
    param1->unk_68 = mon->unk_08.unk_0C;
    param1->unk_6A = mon->unk_08.unk_0E;
    param1->unk_6C = mon->unk_08.unk_10;
    param1->unk_6E = mon->unk_08.unk_12;

    if (mon->unk_00.unk_04_0 == 0)
    {
        sub_0207822C(&mon->unk_08, sizeof(UnkStruct_02073C74_sub2), mon->unk_00.personality);
        sub_0207822C(&mon->unk_00.unk_08, sizeof(PokemonSubstruct0) * 4, mon->unk_00.unk_06);
    }
}

void sub_02078E0C (UnkStruct_02078B40 * param0, Pokemon * param1)
{
    BoxPokemon *v0;
    PokemonSubstruct0 * substruct0;
    PokemonSubstruct1 * v2;
    PokemonSubstruct2 * v3;
    PokemonSubstruct3 * v4;
    int v5;

    MI_CpuClearFast(param1, sizeof(Pokemon));

    v0 = sub_02076B10(param1);
    substruct0 = (PokemonSubstruct0 *)sub_0207825C(v0, param0->unk_00, 0);
    v2 = (PokemonSubstruct1 *)sub_0207825C(v0, param0->unk_00, 1);
    v3 = (PokemonSubstruct2 *)sub_0207825C(v0, param0->unk_00, 2);
    v4 = (PokemonSubstruct3 *)sub_0207825C(v0, param0->unk_00, 3);

    v0->personality = param0->unk_00;
    v0->unk_04_0 = 0;
    v0->unk_04_1 = 0;
    v0->unk_04_2 = param0->unk_04_2;

    substruct0->species = param0->unk_06;
    substruct0->item = param0->unk_08;
    substruct0->unk_04 = param0->unk_0C;
    substruct0->unk_08 = param0->unk_10;
    substruct0->friendship = param0->unk_14;
    substruct0->unk_0D = param0->unk_15;
    substruct0->unk_10 = param0->unk_16;
    substruct0->unk_11 = param0->unk_17;
    substruct0->unk_12 = param0->unk_18;
    substruct0->unk_13 = param0->unk_19;
    substruct0->unk_14 = param0->unk_1A;
    substruct0->unk_15 = param0->unk_1B;
    substruct0->unk_0F = param0->unk_59;

    for (v5 = 0; v5 < 4; v5++) {
        v2->unk_00[v5] = param0->unk_1C[v5];
        v2->unk_08[v5] = param0->unk_24[v5];
        v2->unk_0C[v5] = param0->unk_28[v5];
    }

    v2->unk_10_0 = param0->unk_2C_0;
    v2->unk_10_5 = param0->unk_2C_5;
    v2->unk_10_10 = param0->unk_2C_10;
    v2->unk_10_15 = param0->unk_2C_15;
    v2->unk_10_20 = param0->unk_2C_20;
    v2->unk_10_25 = param0->unk_2C_25;
    v2->unk_10_30 = param0->unk_2C_30;
    v2->unk_10_31 = param0->unk_2C_31;
    v2->fatefulEncounter = param0->unk_30_0;
    v2->unk_18_1 = param0->unk_30_1;
    v2->unk_18_3 = param0->unk_30_3;

    for (v5 = 0; v5 < 10 + 1; v5++) {
        v3->unk_00[v5] = param0->unk_32[v5];
    }

    for (v5 = 0; v5 < 7 + 1; v5++) {
        v4->unk_00[v5] = param0->unk_48[v5];
    }

    v4->unk_1B = param0->unk_58;

    param1->unk_08.unk_00 = param0->unk_5C;
    param1->unk_08.unk_04 = param0->unk_60;
    param1->unk_08.unk_05 = param0->unk_61;
    param1->unk_08.unk_06 = param0->unk_62;
    param1->unk_08.unk_08 = param0->unk_64;
    param1->unk_08.unk_0A = param0->unk_66;
    param1->unk_08.unk_0C = param0->unk_68;
    param1->unk_08.unk_0E = param0->unk_6A;
    param1->unk_08.unk_10 = param0->unk_6C;
    param1->unk_08.unk_12 = param0->unk_6E;

    sub_0207822C(&param1->unk_08, sizeof(UnkStruct_02073C74_sub2), param1->unk_00.personality);
    param1->unk_00.unk_06 = sub_0207823C(&param1->unk_00.unk_08, sizeof(PokemonSubstruct0) * 4);
    sub_0207822C(&param1->unk_00.unk_08, sizeof(PokemonSubstruct0) * 4, param1->unk_00.unk_06);
}
