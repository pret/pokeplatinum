#include "overlay066/ov66_0222DDF0.h"

#include <dwc.h>
#include <nitro.h>
#include <ppwlobby/ppw_lobby.h>
#include <string.h>

#include "constants/species.h"
#include "consts/game_records.h"

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_02014FB0_decl.h"
#include "struct_decls/struct_0202C878_decl.h"
#include "struct_decls/struct_02030EC4_decl.h"
#include "struct_decls/struct_0207E060_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_defs/struct_02055BA8.h"

#include "overlay066/ov66_02231428.h"
#include "overlay066/ov66_0223177C.h"
#include "overlay066/ov66_022324F0.h"
#include "overlay066/ov66_02234EA8.h"
#include "overlay066/struct_ov66_0222E294.h"
#include "overlay066/struct_ov66_0222E908.h"
#include "overlay066/struct_ov66_0222E990.h"
#include "overlay066/struct_ov66_02230914.h"
#include "overlay066/struct_ov66_02231428.h"
#include "overlay066/struct_ov66_02231560.h"
#include "overlay066/struct_ov66_0223177C_decl.h"
#include "overlay066/struct_ov66_0223185C.h"
#include "overlay066/struct_ov66_022318AC.h"
#include "overlay066/struct_ov66_02231908.h"
#include "overlay066/struct_ov66_0223199C.h"
#include "overlay066/struct_ov66_022319FC.h"
#include "overlay066/struct_ov66_02231A58.h"
#include "overlay066/struct_ov66_02231AB4.h"
#include "overlay066/struct_ov66_02231B24.h"
#include "overlay066/struct_ov66_02231B80.h"
#include "overlay066/struct_ov66_02232068.h"
#include "overlay066/struct_ov66_022324F0.h"
#include "overlay066/struct_ov66_02232B20.h"
#include "overlay066/struct_ov66_022589B4.h"
#include "overlay068/struct_ov68_0225DC74.h"

#include "enums.h"
#include "font.h"
#include "game_records.h"
#include "heap.h"
#include "inlines.h"
#include "journal.h"
#include "message.h"
#include "party.h"
#include "pokemon.h"
#include "save_player.h"
#include "savedata.h"
#include "strbuf.h"
#include "trainer_info.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_02014D38.h"
#include "unk_0201D15C.h"
#include "unk_02025CB0.h"
#include "unk_0202631C.h"
#include "unk_0202C858.h"
#include "unk_02030EA4.h"
#include "unk_0207E060.h"

typedef struct UnkStruct_ov66_0222E71C_t {
    s32 unk_00;
    u32 unk_04;
    u16 unk_08[8];
    UnkStruct_ov66_02231428 unk_18;
    UnkStruct_ov66_02231428 unk_1C;
    u16 unk_20[6];
    u8 unk_2C[6];
    u8 unk_32[6];
    u8 unk_38;
    u8 unk_39;
    u16 unk_3A;
    u16 unk_3C;
    u8 unk_3E;
    u8 unk_3F;
    u8 unk_40;
    u8 unk_41;
    u8 unk_42;
    u8 unk_43;
    s64 unk_44;
    u8 unk_4C[12];
    s32 unk_58[12];
    u16 unk_88[2];
    UnkStruct_ov66_0222E908 unk_8C;
} UnkStruct_ov66_0222E71C;

typedef struct {
    u16 unk_00[8];
    u16 unk_10[8];
    UnkStruct_ov66_0222E71C unk_20;
    u32 unk_B4;
} UnkStruct_ov66_0222F6C4;

typedef struct {
    u8 unk_00[8];
} UnkStruct_ov66_0222DFF8_sub2;

typedef struct {
    BOOL unk_00;
    s32 unk_04;
    s32 unk_08[9];
    u32 unk_2C[9];
    u32 unk_50[9][3];
    u32 unk_BC[9][3];
    BOOL unk_128[9][3];
} UnkStruct_ov66_022302B0;

typedef struct {
    BOOL unk_00;
    s64 unk_04;
    s32 unk_0C;
    s32 unk_10;
    u32 unk_14;
    u32 unk_18;
} UnkStruct_ov66_022309A4;

typedef struct {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    u32 unk_0C;
} UnkStruct_ov66_0222FA80;

typedef struct {
    u8 unk_00_0 : 1;
    u8 unk_00_1 : 1;
    u8 unk_00_2 : 2;
    u8 unk_00_4 : 1;
    u8 unk_00_5 : 2;
    u8 unk_00_7 : 1;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    s16 unk_04;
    s16 unk_06;
    s16 unk_08;
    s16 unk_0A;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
    u8 unk_0F_0 : 4;
    u8 unk_0F_4 : 4;
} UnkStruct_ov66_0222FB64;

typedef struct {
    UnkStruct_ov66_0223177C *unk_00;
    BOOL unk_04;
    UnkStruct_ov66_02231560 unk_08;
    UnkStruct_ov66_02231428 unk_D0;
    s64 unk_D4;
    s64 unk_DC;
    TrainerInfo *unk_E4[4];
} UnkStruct_ov66_0222DFF8_sub1;

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_ov66_022305B0;

typedef struct {
    u32 unk_00;
    u16 unk_04;
    u8 unk_06;
    u8 unk_07;
    u16 unk_08;
    u8 unk_0A;
    u8 unk_0B;
    u8 unk_0C[20];
    UnkStruct_ov66_022305B0 unk_20;
    u16 unk_24;
    s16 unk_26;
} UnkStruct_ov66_0222FC68;

typedef struct {
    u8 unk_00[20];
} UnkStruct_ov66_0222FC58;

typedef struct {
    s16 unk_00;
    u8 unk_02;
} UnkStruct_ov66_0222FBC8;

typedef struct {
    u8 unk_00[9];
    u8 unk_09[3];
    u8 unk_0C[20];
} UnkStruct_ov66_022307D4;

typedef struct {
    u8 unk_00[20];
    UnkStruct_ov66_02230914 unk_14[20];
    UnkStruct_02014FB0 *unk_B4;
} UnkStruct_ov66_022308A0;

typedef union {
    u32 val1;
    u8 val2[4];
} UnkStruct_ov66_02230938;

typedef struct {
    s32 unk_00[13];
    u8 unk_34[13];
    u8 unk_41;
    u8 unk_42;
    u8 unk_43;
    const SaveData *unk_44;
    u16 unk_48;
    u16 unk_4A;
} UnkStruct_ov66_02230A6C;

typedef struct {
    TrainerInfo *unk_00;
    BOOL unk_04;
} UnkStruct_ov66_0222FBF0;

typedef struct {
    UnkStruct_ov68_0225DC74 unk_00;
    BOOL unk_14;
} UnkStruct_ov66_0222DFF8_sub3;

typedef struct UnkStruct_ov66_0222DFF8_t {
    SaveData *unk_00;
    UnkStruct_ov66_0222DFF8_sub1 unk_04;
    UnkStruct_ov66_0222FA80 unk_F8;
    UnkStruct_ov66_0222F6C4 unk_108;
    UnkStruct_ov66_0222FC68 unk_1C0;
    UnkStruct_ov66_0222FC58 unk_1E8;
    UnkStruct_ov66_0222FB64 unk_1FC;
    UnkStruct_ov66_022302B0 unk_20C;
    UnkStruct_ov66_0222FBC8 unk_3A0;
    UnkStruct_ov66_0222DFF8_sub2 unk_3A3;
    UnkStruct_ov66_022307D4 unk_3AB;
    UnkStruct_ov66_02232068 unk_3CB;
    UnkStruct_ov66_0222E294 unk_3DF;
    UnkStruct_ov66_022308A0 unk_3E4;
    UnkStruct_ov66_022309A4 unk_49C;
    UnkStruct_0207E060 *unk_4B8;
    UnkStruct_ov66_02230A6C unk_4BC;
    UnkStruct_ov66_0222FBF0 unk_508;
    UnkStruct_ov66_0222DFF8_sub3 unk_510;
    u32 unk_528;
    u32 unk_52C;
} UnkStruct_ov66_0222DFF8;

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_ov66_02258974;

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_ov66_02258918;

static BOOL ov66_0222F1B4(const u16 *param0, u32 param1);
static void ov66_0222F1DC(s32 param0, const void *param1, void *param2, BOOL param3);
static void ov66_0222F398(s32 param0, void *param1);
static void ov66_0222F458(s32 param0, const void *param1, void *param2);
static void ov66_0222F4C8(PPW_LOBBY_TIME_EVENT param0, void *param1);
static void ov66_0222F684(const void *param0, u32 param1, void *param2);
static void ov66_0222F6C4(UnkStruct_ov66_0222F6C4 *param0, UnkStruct_ov66_02231560 *param1);
static void ov66_0222F768(UnkStruct_ov66_0222DFF8 *param0);
static void ov66_0222F7C8(UnkStruct_ov66_0222F6C4 *param0, SaveData *param1, u32 param2);
static void ov66_0222F964(UnkStruct_ov66_0222DFF8 *param0);
static void ov66_0222F9EC(UnkStruct_ov66_0222F6C4 *param0, const SaveData *param1);
static BOOL ov66_0222FA04(const UnkStruct_ov66_0222F6C4 *param0, const SaveData *param1);
static void ov66_0222FA28(UnkStruct_ov66_0222F6C4 *param0, const UnkStruct_ov66_0222E71C *param1, u32 param2);
static void ov66_0222FA80(UnkStruct_ov66_0222FA80 *param0);
static void ov66_0222FA88(UnkStruct_ov66_0222FB64 *param0, UnkStruct_ov66_0222FA80 *param1, UnkStruct_ov66_022302B0 *param2, UnkStruct_ov66_022309A4 *param3);
static void ov66_0222FB64(UnkStruct_ov66_0222FB64 *param0);
static void ov66_0222FBAC(const UnkStruct_ov66_0222FB64 *param0);
static void ov66_0222FBC8(UnkStruct_ov66_0222FBC8 *param0);
static BOOL ov66_0222FBD0(const UnkStruct_ov66_0222FBC8 *param0);
static void ov66_0222FBE0(UnkStruct_ov66_0222FBC8 *param0);
static void ov66_0222FBF0(UnkStruct_ov66_0222FBF0 *param0, u32 param1);
static void ov66_0222FC00(UnkStruct_ov66_0222FBF0 *param0);
static void ov66_0222FC0C(UnkStruct_ov66_0222FBF0 *param0, const UnkStruct_ov66_0222F6C4 *param1, u32 param2);
static void ov66_0222FC4C(UnkStruct_ov66_0222FBC8 *param0);
static BOOL ov66_0222FC54(const UnkStruct_ov66_0222FBC8 *param0);
static void ov66_0222FC58(UnkStruct_ov66_0222FC58 *param0);
static void ov66_0222FC68(UnkStruct_ov66_0222FC68 *param0);
static void ov66_0222FC74(UnkStruct_ov66_0222FC68 *param0);
static void ov66_0222FC84(UnkStruct_ov66_0222FC68 *param0);
static BOOL ov66_0222FC9C(const UnkStruct_ov66_0222FC68 *param0, u32 param1);
static void ov66_0222FCBC(UnkStruct_ov66_0222FC68 *param0, u32 param1);
static void ov66_0222FCD8(UnkStruct_ov66_0222FC68 *param0, u32 param1);
static void ov66_0222FCF4(UnkStruct_ov66_0222FC68 *param0, u32 param1);
static void ov66_0222FD10(UnkStruct_ov66_0222FC68 *param0, u32 param1);
static void ov66_0222FD28(UnkStruct_ov66_0222FC68 *param0, u16 param1);
static void ov66_0222FD30(UnkStruct_ov66_0222DFF8 *param0, s32 param1, BOOL param2);
static void ov66_0222FD50(UnkStruct_ov66_0222DFF8 *param0, s32 param1);
static void ov66_0222FD70(UnkStruct_ov66_0222FC68 *param0);
static void ov66_0222FD7C(UnkStruct_ov66_0222FC68 *param0);
static void ov66_0222FD84(UnkStruct_ov66_0222FC68 *param0);
static BOOL ov66_0222FD9C(const UnkStruct_ov66_0222FC68 *param0);
static s16 ov66_0222FDBC(const UnkStruct_ov66_0222FC68 *param0);
static void ov66_0222FDC4(UnkStruct_ov66_0222DFF8 *param0, const UnkStruct_ov66_0222E990 *param1);
static void ov66_0222FE40(UnkStruct_ov66_0222DFF8 *param0, const UnkStruct_ov66_0222E990 *param1);
static void ov66_0222FEC0(UnkStruct_ov66_0222DFF8 *param0, const UnkStruct_ov66_0222E990 *param1);
static void ov66_0222FFF4(UnkStruct_ov66_0222DFF8 *param0, const UnkStruct_ov66_0222E990 *param1);
static void ov66_02230058(UnkStruct_ov66_0222DFF8 *param0, const UnkStruct_ov66_0222E990 *param1);
static void ov66_02230114(UnkStruct_ov66_0222DFF8 *param0, const UnkStruct_ov66_0222E990 *param1);
static void ov66_022301D0(UnkStruct_ov66_0222DFF8 *param0, const UnkStruct_ov66_0222E990 *param1);
static void ov66_02230294(UnkStruct_ov66_0222DFF8 *param0, const UnkStruct_ov66_0222E990 *param1);
static void ov66_02230298(UnkStruct_ov66_0222DFF8 *param0, int param1);
static void ov66_022302B0(UnkStruct_ov66_022302B0 *param0);
static void ov66_022302D0(UnkStruct_ov66_022302B0 *param0);
static void ov66_022302D8(UnkStruct_ov66_022302B0 *param0);
static inline void inline_ov66_0222EC04(u32 param0, u32 *param1, u32 *param2);
static u32 ov66_02230330(UnkStruct_ov66_022302B0 *param0, u32 param1, int param2);
static void ov66_022303A8(UnkStruct_ov66_022302B0 *param0, u32 param1);
static u32 ov66_022303DC(const UnkStruct_ov66_022302B0 *param0, u32 param1);
static int ov66_0223040C(const UnkStruct_ov66_022302B0 *param0, u32 param1);
static u32 ov66_02230424(const UnkStruct_ov66_022302B0 *param0, u32 param1);
static void ov66_0223043C(UnkStruct_ov66_022302B0 *param0, u32 param1);
static BOOL ov66_02230474(const UnkStruct_ov66_022302B0 *param0, u32 param1);
static void ov66_022304A8(UnkStruct_ov66_022302B0 *param0, u32 param1);
static u32 ov66_022304DC(const UnkStruct_ov66_022302B0 *param0, u32 param1);
static void ov66_02230510(UnkStruct_ov66_022302B0 *param0, u32 param1, int param2);
static BOOL ov66_02230544(const UnkStruct_ov66_022302B0 *param0, u32 param1, int param2);
static int ov66_02230580(const UnkStruct_ov66_022302B0 *param0, u32 param1);
static void ov66_022305B0(s32 param0, const void *param1, u32 param2, void *param3);
static void ov66_02230664(s32 param0, const void *param1, u32 param2, void *param3);
static void ov66_022306C4(s32 param0, const void *param1, u32 param2, void *param3);
static void ov66_02230728(s32 param0, const void *param1, u32 param2, void *param3);
static void ov66_02230750(s32 param0, const void *param1, u32 param2, void *param3);
static void ov66_02230764(s32 param0, const void *param1, u32 param2, void *param3);
static void ov66_02230780(s32 param0, const void *param1, u32 param2, void *param3);
static void ov66_022307B4(s32 param0, const void *param1, u32 param2, void *param3);
static void ov66_022307D4(UnkStruct_ov66_022307D4 *param0);
static void ov66_022307F0(UnkStruct_ov66_022307D4 *param0, u32 param1, u32 param2);
static u32 ov66_02230828(const UnkStruct_ov66_022307D4 *param0);
static void ov66_0223086C(UnkStruct_ov66_02232068 *param0, u32 param1, BOOL param2);
static BOOL ov66_02230884(const UnkStruct_ov66_02232068 *param0, u32 param1);
static void ov66_022308A0(UnkStruct_ov66_022308A0 *param0, u32 param1);
static void ov66_022308BC(UnkStruct_ov66_022308A0 *param0);
static void ov66_022308C8(UnkStruct_ov66_022308A0 *param0, u32 param1, BOOL param2, u32 param3);
static BOOL ov66_022308F8(const UnkStruct_ov66_022308A0 *param0, u32 param1);
static const UnkStruct_ov66_02230914 *ov66_02230914(const UnkStruct_ov66_022308A0 *param0, u32 param1);
static void ov66_02230938(UnkStruct_02014FB0 *param0, u32 param1, UnkStruct_ov66_02230914 *param2);
static void ov66_022309A4(UnkStruct_ov66_022309A4 *param0, u32 param1, u32 param2);
static void ov66_022309B4(UnkStruct_ov66_022309A4 *param0);
static void ov66_022309C8(UnkStruct_ov66_022309A4 *param0);
static u32 ov66_02230A64(const UnkStruct_ov66_022309A4 *param0);
static int ov66_02230A68(const UnkStruct_ov66_022309A4 *param0);
static void ov66_02230A6C(UnkStruct_ov66_02230A6C *param0, const SaveData *param1);
static void ov66_02230A9C(UnkStruct_ov66_02230A6C *param0, int param1, s32 param2);
static BOOL ov66_02230AF8(UnkStruct_ov66_02230A6C *param0, s32 param1, s32 param2);
static int ov66_02230B28(UnkStruct_ov66_02230A6C *param0);
static int ov66_02230B78(UnkStruct_ov66_02230A6C *param0, u32 param1);
static s32 ov66_02230BA4(UnkStruct_ov66_02230A6C *param0, u32 param1);
static void ov66_02230BCC(UnkStruct_ov66_02230A6C *param0);
static void ov66_02230BE0(UnkStruct_ov66_02230A6C *param0);
static BOOL ov66_02230C04(const UnkStruct_ov66_02230A6C *param0);
static u32 ov66_02230C0C(u32 param0);
static u32 ov66_02230C2C(u32 param0);

static const s32 Unk_ov66_0225892C[9] = {
    0x0,
    0x168,
    0x2D0,
    0x4B0,
    0x618,
    0x780,
    0x960,
    0xAC8,
    0xC30
};

static const UnkStruct_ov66_02258974 Unk_ov66_02258974[16] = {
    { 0x3, 0x0 },
    { 0x5, 0x0 },
    { 0xB, 0x0 },
    { 0x1F, 0x0 },
    { 0x32, 0x0 },
    { 0x33, 0x0 },
    { 0x3E, 0x0 },
    { 0x46, 0x0 },
    { 0x6, 0x1 },
    { 0x7, 0x1 },
    { 0xD, 0x1 },
    { 0xE, 0x1 },
    { 0x23, 0x1 },
    { 0x25, 0x1 },
    { 0x2A, 0x1 },
    { 0x3F, 0x1 }
};

static const UnkStruct_ov66_02258918 Unk_ov66_02258918[] = {
    { 0x2, 0x50 },
    { 0x1, 0x2 },
    { 0x3, 0x8E },
    { 0x1, 0x2 },
    { 0x4, 0x1E }
};

static const UnkStruct_ov66_022589B4 Unk_ov66_022589B4[8] = {
    { ov66_022305B0, sizeof(UnkStruct_ov66_022305B0) },
    { ov66_02230664, sizeof(UnkStruct_ov66_022305B0) },
    { ov66_022306C4, sizeof(UnkStruct_ov66_022305B0) },
    { ov66_02230728, sizeof(UnkStruct_ov66_022305B0) },
    { ov66_02230750, sizeof(UnkStruct_ov66_0222E990) },
    { ov66_02230764, sizeof(u32) },
    { ov66_02230780, sizeof(u32) },
    { ov66_022307B4, sizeof(u32) }
};

UnkStruct_ov66_0222DFF8 *ov66_0222DDF0(SaveData *param0, u32 param1)
{
    UnkStruct_ov66_0222DFF8 *v0;

    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_ov66_0222DFF8));
    memset(v0, 0, sizeof(UnkStruct_ov66_0222DFF8));

    v0->unk_00 = param0;
    v0->unk_528 = param1;

    {
        UnkStruct_ov66_022324F0 v1;

        v1.unk_00 = ov66_0222F1DC;
        v1.unk_04 = ov66_0222F398;
        v1.unk_08 = ov66_0222F458;
        v1.unk_0C = ov66_0222F4C8;
        v1.unk_10 = ov66_0222F684;

        ov66_022324F0(param1, v0->unk_00, sizeof(UnkStruct_ov66_0222E71C), &v1, v0);
    }

    {
        int v2;

        v0->unk_04.unk_00 = ov66_0223177C(param1);

        for (v2 = 0; v2 < 4; v2++) {
            v0->unk_04.unk_E4[v2] = TrainerInfo_New(param1);
        }
    }

    ov66_0222F7C8(&v0->unk_108, v0->unk_00, param1);
    ov66_0222FC68(&v0->unk_1C0);
    ov66_0222FC58(&v0->unk_1E8);
    ov66_02232D30(Unk_ov66_022589B4, 8, v0);
    ov66_0222FB64(&v0->unk_1FC);
    ov66_022302B0(&v0->unk_20C);
    ov66_022307D4(&v0->unk_3AB);
    ov66_022308A0(&v0->unk_3E4, param1);
    ov66_02230A6C(&v0->unk_4BC, v0->unk_00);
    ov66_0222FBF0(&v0->unk_508, param1);

    return v0;
}

void ov66_0222DEEC(UnkStruct_ov66_0222DFF8 *param0)
{
    {
        UnkStruct_02030EC4 *v0;
        UnkStruct_ov66_0222E908 v1;

        ov66_0222E908(&param0->unk_108.unk_20, &v1);

        v0 = sub_02030EC4(param0->unk_00);

        sub_02030ED8(v0, v1.unk_00);
        sub_02030EDC(v0, v1.unk_04);
    }

    ov66_0222FC00(&param0->unk_508);
    ov66_022308BC(&param0->unk_3E4);

    {
        ov66_02232D90();
    }

    {
        int v2;

        ov66_022317AC(param0->unk_04.unk_00);

        for (v2 = 0; v2 < 4; v2++) {
            Heap_FreeToHeap(param0->unk_04.unk_E4[v2]);
        }
    }

    ov66_02232598();
    Heap_FreeToHeap(param0);
}

void ov66_0222DF58(UnkStruct_ov66_0222DFF8 *param0)
{
    ov66_022317C0(param0->unk_04.unk_00);

    {
        s64 v0;

        ov66_02232BC8(&v0);
        param0->unk_04.unk_D4 = v0;
        ov66_02231428(&param0->unk_04.unk_D0, &v0);
    }

    {
        ov66_0222F768(param0);
    }

    {
        ov66_0222FD84(&param0->unk_1C0);
    }

    ov66_0222FC58(&param0->unk_1E8);
    ov66_0222FA80(&param0->unk_F8);
    ov66_0222FA88(&param0->unk_1FC, &param0->unk_F8, &param0->unk_20C, &param0->unk_49C);
    ov66_0222FBE0(&param0->unk_3A0);
    ov66_022302D8(&param0->unk_20C);
    ov66_022309C8(&param0->unk_49C);

    {
        BOOL v1;

        v1 = ov66_02230C04(&param0->unk_4BC);

        if (v1 == 1) {
            param0->unk_52C = 1;
        }
    }
}

void ov66_0222DFF4(UnkStruct_ov66_0222DFF8 *param0)
{
    return;
}

int ov66_0222DFF8(const UnkStruct_ov66_0222DFF8 *param0)
{
    return param0->unk_52C;
}

BOOL ov66_0222E004(const UnkStruct_ov66_0222DFF8 *param0)
{
    return ov66_022328CC();
}

UnkStruct_ov66_0223177C *ov66_0222E00C(UnkStruct_ov66_0222DFF8 *param0)
{
    return param0->unk_04.unk_00;
}

const UnkStruct_ov66_02231560 *ov66_0222E010(UnkStruct_ov66_0222DFF8 *param0)
{
    ov66_0222F6C4(&param0->unk_108, &param0->unk_04.unk_08);

    return &param0->unk_04.unk_08;
}

const UnkStruct_ov66_02231428 *ov66_0222E028(const UnkStruct_ov66_0222DFF8 *param0)
{
    return &param0->unk_04.unk_D0;
}

BOOL ov66_0222E02C(UnkStruct_ov66_0222DFF8 *param0, u32 param1)
{
    if (param0->unk_F8.unk_00 & (1 << param1)) {
        param0->unk_F8.unk_00 &= ~(1 << param1);
        return 1;
    }

    return 0;
}

BOOL ov66_0222E058(UnkStruct_ov66_0222DFF8 *param0, u32 param1)
{
    if (param0->unk_F8.unk_04 & (1 << param1)) {
        param0->unk_F8.unk_04 &= ~(1 << param1);
        return 1;
    }

    return 0;
}

BOOL ov66_0222E084(UnkStruct_ov66_0222DFF8 *param0, int param1)
{
    if (param0->unk_F8.unk_08 & (1 << param1)) {
        return 1;
    }

    return 0;
}

BOOL ov66_0222E09C(UnkStruct_ov66_0222DFF8 *param0, u32 param1)
{
    if (param0->unk_F8.unk_0C & (1 << param1)) {
        param0->unk_F8.unk_0C &= ~(1 << param1);
        return 1;
    }

    return 0;
}

SaveData *ov66_0222E0C4(UnkStruct_ov66_0222DFF8 *param0)
{
    return param0->unk_00;
}

BOOL ov66_0222E0C8(const UnkStruct_ov66_0222DFF8 *param0)
{
    GF_ASSERT(param0);
    return ov66_02232BEC(UnkEnum_ov66_02232BEC_04);
}

BOOL ov66_0222E0DC(const UnkStruct_ov66_0222DFF8 *param0)
{
    GF_ASSERT(param0);

    return param0->unk_1FC.unk_0F_0;
}

BOOL ov66_0222E0F4(const UnkStruct_ov66_0222DFF8 *param0)
{
    GF_ASSERT(param0);
    return param0->unk_1FC.unk_0F_4;
}

void ov66_0222E10C(UnkStruct_ov66_0222DFF8 *param0)
{
    param0->unk_1FC.unk_0F_4 = 1;
}

BOOL ov66_0222E120(const UnkStruct_ov66_0222DFF8 *param0)
{
    return param0->unk_1FC.unk_00_0;
}

BOOL ov66_0222E12C(const UnkStruct_ov66_0222DFF8 *param0)
{
    return param0->unk_1FC.unk_00_7;
}

BOOL ov66_0222E138(const UnkStruct_ov66_0222DFF8 *param0)
{
    if ((param0->unk_1FC.unk_00_1 == 1) && (param0->unk_1FC.unk_04 <= 0)) {
        return 1;
    } else {
        return 0;
    }
}

int ov66_0222E158(const UnkStruct_ov66_0222DFF8 *param0)
{
    if (param0->unk_1FC.unk_08 <= 0) {
        return param0->unk_1FC.unk_00_2;
    }

    return 0;
}

BOOL ov66_0222E170(const UnkStruct_ov66_0222DFF8 *param0)
{
    if ((param0->unk_1FC.unk_00_4 == 1) && (param0->unk_1FC.unk_0A <= 0)) {
        return 1;
    }

    return 0;
}

BOOL ov66_0222E190(const UnkStruct_ov66_0222DFF8 *param0)
{
    return param0->unk_1FC.unk_00_5;
}

BOOL ov66_0222E19C(const UnkStruct_ov66_0222DFF8 *param0)
{
    if ((param0->unk_04.unk_04 == 1) && (param0->unk_1FC.unk_06 <= 0)) {
        return 1;
    }

    return 0;
}

PPW_LOBBY_TIME_EVENT ov66_0222E1B8(const UnkStruct_ov66_0222DFF8 *param0)
{
    if (param0->unk_1FC.unk_06 <= 0) {
        return param0->unk_1FC.unk_01;
    }

    return PPW_LOBBY_TIME_EVENT_NEON_A0;
}

PPW_LOBBY_TIME_EVENT ov66_0222E1D0(const UnkStruct_ov66_0222DFF8 *param0)
{
    if (param0->unk_1FC.unk_06 <= 0) {
        return param0->unk_1FC.unk_02;
    }

    return PPW_LOBBY_TIME_EVENT_NEON_B0;
}

PPW_LOBBY_TIME_EVENT ov66_0222E1E8(const UnkStruct_ov66_0222DFF8 *param0)
{
    if (param0->unk_1FC.unk_06 <= 0) {
        return param0->unk_1FC.unk_03;
    }

    return PPW_LOBBY_TIME_EVENT_NEON_C0;
}

void ov66_0222E200(UnkStruct_ov66_0222DFF8 *param0)
{
    ov66_0222FBC8(&param0->unk_3A0);
}

BOOL ov66_0222E210(const UnkStruct_ov66_0222DFF8 *param0)
{
    return ov66_0222FBD0(&param0->unk_3A0);
}

BOOL ov66_0222E220(const UnkStruct_ov66_0222DFF8 *param0)
{
    return param0->unk_508.unk_04;
}

void ov66_0222E22C(UnkStruct_ov66_0222DFF8 *param0, BOOL param1)
{
    param0->unk_508.unk_04 = param1;
}

void ov66_0222E238(UnkStruct_ov66_0222DFF8 *param0)
{
    MI_CpuClear32(&param0->unk_3DF, sizeof(UnkStruct_ov66_0222E294));
}

void ov66_0222E24C(UnkStruct_ov66_0222DFF8 *param0, s32 param1, u32 param2)
{
    u32 v0;

    GF_ASSERT(param2 < 4);
    v0 = ov66_02232B78(param1);
    GF_ASSERT(v0 != 0xffffffff);

    param0->unk_3DF.unk_00[param2] = v0;
}

void ov66_0222E27C(UnkStruct_ov66_0222DFF8 *param0, u32 param1)
{
    s32 v0;

    v0 = ov66_022328F0();
    ov66_0222E24C(param0, v0, param1);
}

void ov66_0222E294(const UnkStruct_ov66_0222DFF8 *param0, UnkStruct_ov66_0222E294 *param1)
{
    MI_CpuCopy8(&param0->unk_3DF, param1, sizeof(UnkStruct_ov66_0222E294));
}

void ov66_0222E2A4(UnkStruct_ov66_0222DFF8 *param0)
{
    ov66_0222FC4C(&param0->unk_3A0);
}

BOOL ov66_0222E2B4(const UnkStruct_ov66_0222DFF8 *param0)
{
    return ov66_0222FC54(&param0->unk_3A0);
}

void ov66_0222E2C4(UnkStruct_ov66_0222DFF8 *param0, BOOL param1)
{
    param0->unk_1FC.unk_0C = param1;
}

void ov66_0222E2CC(const UnkStruct_ov66_0222DFF8 *param0)
{
    if ((param0->unk_1FC.unk_00_4 == 1) && (param0->unk_1FC.unk_0A <= 0)) {
        sub_02004550(21, 1213, 0);
        ov66_0222FBAC(&param0->unk_1FC);
    } else {
        sub_02004550(21, 1212, 0);
        ov66_0222FBAC(&param0->unk_1FC);
    }
}

void ov66_0222E31C(UnkStruct_ov66_0222DFF8 *param0, BOOL param1)
{
    if (param1 != param0->unk_1FC.unk_0D) {
        param0->unk_1FC.unk_0D = param1;
        ov66_0222FBAC(&param0->unk_1FC);
    }
}

u32 ov66_0222E338(const UnkStruct_ov66_0222DFF8 *param0)
{
    s32 v0 = ov66_022328F0();
    return ov66_02232B78(v0);
}

s32 ov66_0222E344(const UnkStruct_ov66_0222DFF8 *param0)
{
    return ov66_022328F0();
}

BOOL ov66_0222E34C(const UnkStruct_ov66_0222DFF8 *param0, u32 param1)
{
    UnkStruct_ov66_02232B20 v0;

    ov66_02232B20(&v0);

    if (v0.unk_04[param1] != DWC_LOBBY_INVALID_USER_ID) {
        return 1;
    }

    return 0;
}

const UnkStruct_ov66_0222E71C *ov66_0222E374(const UnkStruct_ov66_0222DFF8 *param0, u32 param1)
{
    s32 v0;
    UnkStruct_ov66_02232B20 v1;
    const UnkStruct_ov66_0222E71C *v2;

    GF_ASSERT(param1 < 20);

    ov66_02232B20(&v1);

    v0 = v1.unk_04[param1];

    if (v0 == DWC_LOBBY_INVALID_USER_ID) {
        return NULL;
    }

    if (v0 == ov66_022328F0()) {
        v2 = &param0->unk_108.unk_20;
    } else {
        v2 = (const UnkStruct_ov66_0222E71C *)ov66_0223293C(v0);
    }

    return v2;
}

UnkStruct_ov66_0222E71C *ov66_0222E3BC(UnkStruct_ov66_0222DFF8 *param0)
{
    if (ov66_0222FA04(&param0->unk_108, param0->unk_00) == 0) {
        param0->unk_52C = 1;
    }

    return &param0->unk_108.unk_20;
}

void ov66_0222E3E4(UnkStruct_ov66_0222DFF8 *param0, int param1)
{
    s32 v0;

    GF_ASSERT(param1 < 15);

    if (ov66_0222FA04(&param0->unk_108, param0->unk_00) == 0) {
        param0->unk_52C = 1;
        return;
    }

    if (param0->unk_108.unk_20.unk_43 == param1) {
        return;
    }

    if (param1 != 9) {
        if (ov66_0222EDF4(param0) == 1) {
            if (ov66_0222EE08(param0) == 0) {
                v0 = ov66_02232BA0(param0->unk_1C0.unk_04);
                ov66_0222FD50(param0, param0->unk_1C0.unk_04);
            }

            ov66_0222FC84(&param0->unk_1C0);
        }
    }

    switch (param0->unk_108.unk_20.unk_43) {
    case 2:
        ov66_02230A9C(&param0->unk_4BC, 16, DWC_LOBBY_INVALID_USER_ID);
        break;
    case 3:
        ov66_02230A9C(&param0->unk_4BC, 17, DWC_LOBBY_INVALID_USER_ID);
        break;
    case 4:
        ov66_02230A9C(&param0->unk_4BC, 18, DWC_LOBBY_INVALID_USER_ID);
        break;
    case 5:
        ov66_02230A9C(&param0->unk_4BC, 19, DWC_LOBBY_INVALID_USER_ID);
        break;
    case 6:
        ov66_02230A9C(&param0->unk_4BC, 20, DWC_LOBBY_INVALID_USER_ID);
        break;
    case 7:
        ov66_02230A9C(&param0->unk_4BC, 21, DWC_LOBBY_INVALID_USER_ID);
        break;
    case 8:
        ov66_02230A9C(&param0->unk_4BC, 22, DWC_LOBBY_INVALID_USER_ID);
        break;

    default:
        break;
    }

    param0->unk_108.unk_20.unk_43 = param1;

    ov66_0222F9EC(&param0->unk_108, param0->unk_00);
    ov66_0222F964(param0);
}

void ov66_0222E500(UnkStruct_ov66_0222DFF8 *param0, int param1, s32 param2)
{
    GF_ASSERT(param1 < 24);

    ov66_02230A9C(&param0->unk_4BC, param1, param2);
    ov66_0222F964(param0);
}

void ov66_0222E528(UnkStruct_ov66_0222DFF8 *param0, u32 param1)
{
    GF_ASSERT(param1 < 27);

    if (ov66_0222FA04(&param0->unk_108, param0->unk_00) == 0) {
        param0->unk_52C = 1;
        return;
    }

    param0->unk_108.unk_20.unk_41 = param1;

    ov66_0222F9EC(&param0->unk_108, param0->unk_00);
    ov66_0222F964(param0);
}

void ov66_0222E56C(UnkStruct_ov66_0222DFF8 *param0, int param1, int param2)
{
    GF_ASSERT(param1 < 18);
    GF_ASSERT(param2 < 18);

    if (ov66_0222FA04(&param0->unk_108, param0->unk_00) == 0) {
        param0->unk_52C = 1;
        return;
    }

    if (param1 >= 18) {
        return;
    }

    if (param2 >= 18) {
        return;
    }

    if (param1 == 0) {
        param0->unk_108.unk_20.unk_88[0] = param2;
        param0->unk_108.unk_20.unk_88[1] = 0;
    } else {
        param0->unk_108.unk_20.unk_88[0] = param1;
        param0->unk_108.unk_20.unk_88[1] = param2;
    }

    ov66_0222F9EC(&param0->unk_108, param0->unk_00);
    ov66_0222F964(param0);
}

void ov66_0222E5D8(UnkStruct_ov66_0222DFF8 *param0, u32 param1, u32 param2)
{
    GF_ASSERT(param2 < 3);

    if (ov66_0222FA04(&param0->unk_108, param0->unk_00) == 0) {
        param0->unk_52C = 1;
        return;
    }

    if (param2 >= 3) {
        return;
    }

    param0->unk_108.unk_20.unk_8C.unk_00 = param1;
    param0->unk_108.unk_20.unk_8C.unk_04 = param2;
    param0->unk_1FC.unk_0F_0 = 1;

    ov66_0222F040(param0, 6);
    ov66_0222F9EC(&param0->unk_108, param0->unk_00);
    ov66_0222F964(param0);
}

void ov66_0222E640(const UnkStruct_ov66_0222E71C *param0, TrainerInfo *param1, u32 param2)
{
    BOOL v0;
    BOOL v1;

    v0 = ov66_0222F1B4(param0->unk_08, 7 + 1);
    v1 = 0;

    if (v0 == 1) {
        TrainerInfo_SetName(param1, param0->unk_08);

        {
            Strbuf *v2;
            Strbuf *v3;

            v3 = Strbuf_Init((7 + 1) * 4, param2);
            v2 = Strbuf_Init((7 + 1) * 4, param2);
            TrainerInfo_NameStrbuf(param1, v2);
            v0 = Font_AreAllCharsValid(FONT_SYSTEM, v2, v3);

            if (v0 == 0) {
                v1 = 1;
            }

            Strbuf_Free(v3);
            Strbuf_Free(v2);
        }
    } else {
        v1 = 1;
    }

    if (v1) {
        MessageLoader *v4;
        Strbuf *v5;

        v4 = MessageLoader_Init(1, 26, 673, param2);
        v5 = MessageLoader_GetNewStrbuf(v4, 64);

        TrainerInfo_SetNameFromStrbuf(param1, v5);
        Strbuf_Free(v5);
        MessageLoader_Free(v4);
    }

    TrainerInfo_SetID(param1, ov66_0222E79C(param0));
    TrainerInfo_SetGender(param1, ov66_0222E7C8(param0));
    TrainerInfo_SetAppearance(param1, ov66_0222E858(param0));
    TrainerInfo_SetRegionCode(param1, ov66_0222E80C(param0));
    TrainerInfo_SetMainStoryCleared(param1);
}

u32 ov66_0222E71C(const UnkStruct_ov66_0222E71C *param0)
{
    if (param0->unk_43 >= 14) {
        return 14;
    }

    return param0->unk_43;
}

int ov66_0222E728(const UnkStruct_ov66_0222E71C *param0, u32 param1)
{
    int v0;
    int v1;

    GF_ASSERT(param1 < 12);

    v1 = 0;

    for (v0 = 0; v0 < 12; v0++) {
        if (param0->unk_4C[v0] < 24) {
            v1++;
        }

        if ((v1 - 1) == param1) {
            return param0->unk_4C[v0];
        }
    }

    return 24;
}

s32 ov66_0222E760(const UnkStruct_ov66_0222E71C *param0, u32 param1)
{
    int v0;
    int v1;

    GF_ASSERT(param1 < 12);

    v1 = 0;

    for (v0 = 0; v0 < 12; v0++) {
        if (param0->unk_4C[v0] < 24) {
            v1++;
        }

        if ((v1 - 1) == param1) {
            return param0->unk_58[v0];
        }
    }

    return DWC_LOBBY_INVALID_USER_ID;
}

s32 ov66_0222E798(const UnkStruct_ov66_0222E71C *param0)
{
    return param0->unk_00;
}

u32 ov66_0222E79C(const UnkStruct_ov66_0222E71C *param0)
{
    return param0->unk_04;
}

int ov66_0222E7A0(const UnkStruct_ov66_0222E71C *param0)
{
    u32 v0;
    int v1;

    v0 = ov66_0222E858(param0);

    for (v1 = 0; v1 < 16; v1++) {
        if (Unk_ov66_02258974[v1].unk_00 == v0) {
            return v1;
        }
    }

    return 24;
}

UnkStruct_ov66_02231428 ov66_0222E7C4(const UnkStruct_ov66_0222E71C *param0)
{
    return param0->unk_1C;
}

u32 ov66_0222E7C8(const UnkStruct_ov66_0222E71C *param0)
{
    u32 v0;
    int v1;
    u32 v2;

    if (param0->unk_38 >= 2) {
        v2 = ov66_02230C2C(param0->unk_3A);

        if (v2 != 0xffff) {
            for (v1 = 0; v1 < NELEMS(Unk_ov66_02258974); v1++) {
                if (Unk_ov66_02258974[v1].unk_00 == param0->unk_3A) {
                    v0 = Unk_ov66_02258974[v1].unk_00;
                }
            }
        } else {
            v0 = 1;
        }
    } else {
        v0 = param0->unk_38;
    }

    return v0;
}

u32 ov66_0222E80C(const UnkStruct_ov66_0222E71C *param0)
{
    u32 v0;

    if (ov66_0222E824(param0) == 1) {
        v0 = param0->unk_39;
    } else {
        v0 = 2;
    }

    return v0;
}

BOOL ov66_0222E824(const UnkStruct_ov66_0222E71C *param0)
{
    switch (param0->unk_39) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 7:
        return 1;
    default:
        break;
    }

    return 0;
}

u32 ov66_0222E850(const UnkStruct_ov66_0222E71C *param0)
{
    return param0->unk_39;
}

u32 ov66_0222E858(const UnkStruct_ov66_0222E71C *param0)
{
    u32 v0;

    v0 = ov66_02230C2C(param0->unk_3A);

    if (v0 != 0xffff) {
        return v0;
    }

    if (ov66_0222E7C8(param0) == 0) {
        return 0x3;
    }

    return 0x6;
}

u32 ov66_0222E880(const UnkStruct_ov66_0222E71C *param0)
{
    u32 v0;

    if (param0->unk_3C >= 234) {
        v0 = 0;
    } else {
        if (ov66_022316C4(param0->unk_3C, param0->unk_3E) == 0) {
            return 0;
        }

        v0 = param0->unk_3C;
    }

    return v0;
}

u32 ov66_0222E8A4(const UnkStruct_ov66_0222E71C *param0)
{
    u32 v0;

    if (ov66_022316C4(param0->unk_3C, param0->unk_3E) == 0) {
        v0 = 0;
    } else {
        v0 = param0->unk_3E;
    }

    return v0;
}

u32 ov66_0222E8C4(const UnkStruct_ov66_0222E71C *param0)
{
    u32 v0;

    if (param0->unk_41 == 0xff) {
        return 0;
    }

    if (param0->unk_41 >= 27) {
        v0 = 0;
    } else {
        v0 = param0->unk_41;
    }

    return v0;
}

BOOL ov66_0222E8D8(const UnkStruct_ov66_0222E71C *param0)
{
    if (param0->unk_41 == 0xff) {
        return 0;
    }

    return 1;
}

int ov66_0222E8E8(const UnkStruct_ov66_0222E71C *param0, u32 param1)
{
    GF_ASSERT(param1 < 2);

    if (param0->unk_88[param1] >= 18) {
        return 0;
    }

    return param0->unk_88[param1];
}

void ov66_0222E908(const UnkStruct_ov66_0222E71C *param0, UnkStruct_ov66_0222E908 *param1)
{
    *param1 = param0->unk_8C;
}

TrainerInfo *ov66_0222E918(const UnkStruct_ov66_0222DFF8 *param0)
{
    return param0->unk_508.unk_00;
}

BOOL ov66_0222E924(const UnkStruct_ov66_0222DFF8 *param0, u32 param1)
{
    return ov66_02230884(&param0->unk_3CB, param1);
}

void ov66_0222E934(const UnkStruct_ov66_0222DFF8 *param0, UnkStruct_ov66_02232068 *param1)
{
    UnkStruct_ov66_02232068 *v0;

    MI_CpuCopy8(&param0->unk_3CB, param1, sizeof(UnkStruct_ov66_02232068));
}

BOOL ov66_0222E944(const UnkStruct_ov66_0222DFF8 *param0, u32 param1)
{
    return ov66_022308F8(&param0->unk_3E4, param1);
}

const UnkStruct_ov66_02230914 *ov66_0222E954(const UnkStruct_ov66_0222DFF8 *param0, u32 param1)
{
    return ov66_02230914(&param0->unk_3E4, param1);
}

u32 ov66_0222E964(const UnkStruct_ov66_0222DFF8 *param0)
{
    UnkStruct_ov66_02232B20 v0;

    ov66_02232B4C(&v0);
    return v0.unk_00;
}

u32 ov66_0222E974(const UnkStruct_ov66_0222DFF8 *param0, u32 param1)
{
    u32 v0;

    v0 = ov66_02232BB4(param1);

    if (v0 == DWC_LOBBY_INVALID_USER_ID) {
        return 0xffffffff;
    }

    return ov66_02232B78(v0);
}

void ov66_0222E990(UnkStruct_ov66_0222DFF8 *param0, u32 param1, u32 param2)
{
    UnkStruct_ov66_0222E990 v0 = { 0 };

    v0.unk_11 = 0;
    v0.unk_00[0] = ov66_02232BA0(param1);
    v0.unk_00[1] = ov66_02232BA0(param2);
    v0.unk_10 = 2;

    ov66_02232E00(4, &v0, sizeof(UnkStruct_ov66_0222E990));
}

void ov66_0222E9CC(UnkStruct_ov66_0222DFF8 *param0, u32 param1, u32 param2, u32 param3)
{
    UnkStruct_ov66_0222E990 v0 = { 0 };

    v0.unk_11 = 1;
    v0.unk_00[0] = ov66_02232BA0(param2);
    v0.unk_00[1] = ov66_02232BA0(param1);
    v0.unk_10 = 2;
    v0.unk_12 = param3;

    ov66_02232E00(4, &v0, sizeof(UnkStruct_ov66_0222E990));
}

void ov66_0222EA10(UnkStruct_ov66_0222DFF8 *param0, enum PlazaMinigame param1, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6, BOOL param7)
{
    UnkStruct_ov66_0222E990 v0 = { 0 };
    u32 v1;

    switch (param1) {
    case UnkEnum_ov66_022324D0_00:
    case UnkEnum_ov66_022324D0_01:
    case UnkEnum_ov66_022324D0_02:
        v1 = 2;
        break;
    case UnkEnum_ov66_022324D0_03:
    case UnkEnum_ov66_022324D0_04:
        v1 = 3;
        break;
    case UnkEnum_ov66_022324D0_05:
        v1 = 4;
        break;
    case UnkEnum_ov66_022324D0_06:
        v1 = 5;
        break;
    default:
        return;
    }

    v0.unk_11 = v1;
    v0.unk_00[0] = ov66_02232BA0(param3);
    v0.unk_00[1] = ov66_02232BA0(param4);
    v0.unk_00[2] = ov66_02232BA0(param5);
    v0.unk_00[3] = ov66_02232BA0(param6);
    v0.unk_10 = param2;
    v0.unk_13_0 = param1;
    v0.unk_13_7 = param7;

    ov66_02232E00(4, &v0, sizeof(UnkStruct_ov66_0222E990));
}

void ov66_0222EAB4(UnkStruct_ov66_0222DFF8 *param0, enum PlazaMinigame param1, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6)
{
    UnkStruct_ov66_0222E990 v0 = { 0 };
    u32 v1;

    switch (param1) {
    case UnkEnum_ov66_022324D0_00:
    case UnkEnum_ov66_022324D0_01:
    case UnkEnum_ov66_022324D0_02:
        v1 = 8;
        break;
    default:
        return;
    }
    v0.unk_11 = v1;
    v0.unk_00[0] = ov66_02232BA0(param3);
    v0.unk_00[1] = ov66_02232BA0(param4);
    v0.unk_00[2] = ov66_02232BA0(param5);
    v0.unk_00[3] = ov66_02232BA0(param6);
    v0.unk_10 = param2;
    v0.unk_13_0 = param1;
    v0.unk_13_7 = 0;

    ov66_02232E00(4, &v0, sizeof(UnkStruct_ov66_0222E990));
}

u32 ov66_0222EB28(const UnkStruct_ov66_0222DFF8 *param0)
{
    u32 v0;

    v0 = ov66_02232BEC(UnkEnum_ov66_02232BEC_03);

    if (v0 >= 5) {
        v0 = 0;
    }

    return v0;
}

u32 ov66_0222EB38(const UnkStruct_ov66_0222DFF8 *param0)
{
    u32 v0;

    v0 = ov66_02232BEC(UnkEnum_ov66_02232BEC_02);

    if (v0 >= 5) {
        v0 = 0;
    }

    return v0;
}

u32 ov66_0222EB48(const UnkStruct_ov66_0222DFF8 *param0)
{
    u32 v0;

    v0 = ov66_02232BEC(UnkEnum_ov66_02232BEC_05);
    v0 += ((30 * 30) / 30);

    return v0;
}

BOOL ov66_0222EB54(const UnkStruct_ov66_0222DFF8 *param0, u32 param1)
{
    GF_ASSERT(param1 < 20);
    return param0->unk_1E8.unk_00[param1];
}

void ov66_0222EB6C(UnkStruct_ov66_0222DFF8 *param0, u32 param1)
{
    u32 v0;

    v0 = param1;
    ov66_02232E00(5, &v0, sizeof(u32));
}

int ov66_0222EB7C(const UnkStruct_ov66_0222DFF8 *param0, u32 param1)
{
    return ov66_0223040C(&param0->unk_20C, param1);
}

u32 ov66_0222EB8C(const UnkStruct_ov66_0222DFF8 *param0, u32 param1)
{
    return ov66_02230424(&param0->unk_20C, param1);
}

u32 ov66_0222EB9C(const UnkStruct_ov66_0222DFF8 *param0)
{
    return 40 * 30;
}

u32 ov66_0222EBA4(const UnkStruct_ov66_0222DFF8 *param0, u32 param1)
{
    return ov66_022304DC(&param0->unk_20C, param1);
}

u32 ov66_0222EBB4(UnkStruct_ov66_0222DFF8 *param0, u32 param1, int param2)
{
    return ov66_02230330(&param0->unk_20C, param1, param2);
}

void ov66_0222EBC4(UnkStruct_ov66_0222DFF8 *param0, u32 param1)
{
    ov66_022303A8(&param0->unk_20C, param1);
}

void ov66_0222EBD4(UnkStruct_ov66_0222DFF8 *param0, u32 param1)
{
    ov66_0223043C(&param0->unk_20C, param1);
}

BOOL ov66_0222EBE4(const UnkStruct_ov66_0222DFF8 *param0, u32 param1)
{
    return ov66_02230474(&param0->unk_20C, param1);
}

void ov66_0222EBF4(UnkStruct_ov66_0222DFF8 *param0, u32 param1)
{
    ov66_022304A8(&param0->unk_20C, param1);
}

void ov66_0222EC04(u32 param0, u32 *param1, u32 *param2)
{
    inline_ov66_0222EC04(param0, param1, param2);
}

void ov66_0222EC20(UnkStruct_ov66_0222DFF8 *param0, u32 param1, int param2)
{
    ov66_02230510(&param0->unk_20C, param1, param2);
}

int ov66_0222EC30(const UnkStruct_ov66_0222DFF8 *param0, u32 param1)
{
    return ov66_02230580(&param0->unk_20C, param1);
}

void ov66_0222EC40(UnkStruct_ov66_0222DFF8 *param0)
{
    u32 v0;

    ov66_02232E00(6, &v0, sizeof(u32));
}

void ov66_0222EC50(UnkStruct_ov66_0222DFF8 *param0)
{
    u32 v0;

    ov66_02232E00(7, &v0, sizeof(u32));
}

void ov66_0222EC60(UnkStruct_ov66_0222DFF8 *param0)
{
    ov66_0222FC74(&param0->unk_1C0);
}

BOOL ov66_0222EC70(UnkStruct_ov66_0222DFF8 *param0, u32 param1)
{
    s32 v0;

    if (param0->unk_1C0.unk_0A != 0) {
        return 0;
    }

    {
        const UnkStruct_ov66_0222E71C *v1 = ov66_0222E374(param0, param1);
        u32 v2 = ov66_0222E71C(v1);

        if (v2 != 1) {
            return 0;
        }
    }

    param0->unk_1C0.unk_04 = param1;
    param0->unk_1C0.unk_06 = 1;
    param0->unk_1C0.unk_0A = 1;

    ov66_0222FD28(&param0->unk_1C0, 0);
    v0 = ov66_02232BA0(param1);
    ov66_02232E5C(0, v0, &param0->unk_1C0.unk_20, sizeof(UnkStruct_ov66_022305B0));
    ov66_0222FD70(&param0->unk_1C0);

    return 1;
}

void ov66_0222ECD4(UnkStruct_ov66_0222DFF8 *param0, u16 param1)
{
    BOOL v0 = 0;
    s32 v1;

    if (param0->unk_1C0.unk_0A == 1) {
        if (param0->unk_1C0.unk_06 != 2) {
            v0 = 1;
        }
    } else {
        if (param0->unk_1C0.unk_0A == 2) {
            if (param0->unk_1C0.unk_06 != 3) {
                v0 = 1;
            }
        }
    }

    if (v0) {
        v1 = ov66_02232BA0(param0->unk_1C0.unk_04);
        ov66_0222FD50(param0, v1);
        return;
    }

    switch (param0->unk_1C0.unk_0A) {
    case 1:
        param0->unk_1C0.unk_06 = 3;
        break;
    case 2:
        param0->unk_1C0.unk_06 = 2;
        break;
    default:
        v1 = ov66_02232BA0(param0->unk_1C0.unk_04);
        ov66_0222FD50(param0, v1);
        return;
    }

    ov66_0222FD28(&param0->unk_1C0, param1);
    v1 = ov66_02232BA0(param0->unk_1C0.unk_04);
    ov66_02232E5C(2, v1, &param0->unk_1C0.unk_20, sizeof(UnkStruct_ov66_022305B0));
    ov66_0222FD70(&param0->unk_1C0);
}

void ov66_0222ED7C(UnkStruct_ov66_0222DFF8 *param0)
{
    s32 v0;

    if (param0->unk_1C0.unk_06 == 0) {
        return;
    }

    if (param0->unk_1C0.unk_0A != 1) {
        return;
    }

    param0->unk_1C0.unk_20.unk_02 = 0;
    v0 = ov66_02232BA0(param0->unk_1C0.unk_04);

    ov66_02232E5C(3, v0, &param0->unk_1C0.unk_20, sizeof(UnkStruct_ov66_022305B0));
    ov66_0222FC74(&param0->unk_1C0);
}

void ov66_0222EDC0(UnkStruct_ov66_0222DFF8 *param0)
{
    s32 v0;

    if (param0->unk_1C0.unk_06 == 0) {
        return;
    }

    v0 = ov66_02232BA0(param0->unk_1C0.unk_04);

    param0->unk_1C0.unk_06 = 4;
    param0->unk_1C0.unk_20.unk_02 = 4;

    ov66_02232E5C(2, v0, &param0->unk_1C0.unk_20, sizeof(UnkStruct_ov66_022305B0));
}

BOOL ov66_0222EDF4(const UnkStruct_ov66_0222DFF8 *param0)
{
    if (param0->unk_1C0.unk_0A != 0) {
        return 1;
    }

    return 0;
}

BOOL ov66_0222EE08(const UnkStruct_ov66_0222DFF8 *param0)
{
    if (param0->unk_1C0.unk_0A == 2) {
        return 1;
    }

    return 0;
}

u32 ov66_0222EE1C(const UnkStruct_ov66_0222DFF8 *param0)
{
    return param0->unk_1C0.unk_04;
}

BOOL ov66_0222EE24(const UnkStruct_ov66_0222DFF8 *param0)
{
    return param0->unk_1C0.unk_0B;
}

int ov66_0222EE30(const UnkStruct_ov66_0222DFF8 *param0)
{
    return param0->unk_1C0.unk_06;
}

u16 ov66_0222EE3C(const UnkStruct_ov66_0222DFF8 *param0)
{
    return param0->unk_1C0.unk_08;
}

BOOL ov66_0222EE44(const UnkStruct_ov66_0222DFF8 *param0, u32 param1)
{
    GF_ASSERT(param1 < 20);

    if (param0->unk_1C0.unk_0C[param1] >= 6) {
        return 0;
    }

    return 1;
}

BOOL ov66_0222EE68(const UnkStruct_ov66_0222DFF8 *param0)
{
    if (param0->unk_1C0.unk_06 == 4) {
        return 1;
    }

    if (ov66_0222FD9C(&param0->unk_1C0) == 0) {
        return 1;
    }

    return 0;
}

s16 ov66_0222EE90(const UnkStruct_ov66_0222DFF8 *param0)
{
    return ov66_0222FDBC(&param0->unk_1C0);
}

void ov66_0222EEA0(UnkStruct_ov66_0222DFF8 *param0)
{
    param0->unk_1C0.unk_07 = 1;
}

BOOL ov66_0222EEAC(const UnkStruct_ov66_0222DFF8 *param0)
{
    return param0->unk_1C0.unk_07;
}

void ov66_0222EEB8(UnkStruct_ov66_0222DFF8 *param0)
{
    if (ov66_0222EDF4(param0) == 1) {
        ov66_0222FCF4(&param0->unk_1C0, param0->unk_1C0.unk_04);
    }
}

void ov66_0222EED4(UnkStruct_ov66_0222DFF8 *param0, u32 param1)
{
    ov66_0222FCF4(&param0->unk_1C0, param1);
}

void ov66_0222EEE4(UnkStruct_ov66_0222DFF8 *param0, u32 param1)
{
    ov66_0222FCBC(&param0->unk_1C0, param1);
}

void ov66_0222EEF4(UnkStruct_ov66_0222DFF8 *param0, u32 param1)
{
    UnkStruct_ov66_0222E71C *v0;
    TrainerInfo *v1;
    void *v2;
    Journal *v3;

    v3 = SaveData_GetJournal(param0->unk_00);
    v0 = (UnkStruct_ov66_0222E71C *)ov66_0222E374(param0, param1);

    if (v0 != NULL) {
        v1 = TrainerInfo_New(112);
        ov66_0222E640(v0, v1, 112);
        v2 = sub_0202C250(TrainerInfo_Name(v1), v0->unk_38, 112, 22);

        Journal_SaveData(v3, v2, 4);
        Heap_FreeToHeap(v1);
    }
}

void ov66_0222EF44(UnkStruct_ov66_0222DFF8 *param0, u32 param1)
{
    UnkStruct_ov66_0222E71C *v0;
    TrainerInfo *v1;
    void *v2;
    Journal *v3;

    v3 = SaveData_GetJournal(param0->unk_00);
    v0 = (UnkStruct_ov66_0222E71C *)ov66_0222E374(param0, param1);

    if (v0 != NULL) {
        v1 = TrainerInfo_New(112);
        ov66_0222E640(v0, v1, 112);

        v2 = sub_0202C250(TrainerInfo_Name(v1), v0->unk_38, 112, 23);

        Journal_SaveData(v3, v2, 4);
        Heap_FreeToHeap(v1);
    }
}

void ov66_0222EF94(UnkStruct_ov66_0222DFF8 *param0, enum PlazaMinigame param1)
{
    void *v0;
    Journal *v1;

    v1 = SaveData_GetJournal(param0->unk_00);

    switch (param1) {
    case UnkEnum_ov66_022324D0_00:
    case UnkEnum_ov66_022324D0_01:
    case UnkEnum_ov66_022324D0_02:
        v0 = sub_0202C280(param1, 112, 24);
        break;
    case UnkEnum_ov66_022324D0_03:
    case UnkEnum_ov66_022324D0_04:
        v0 = sub_0202C244(112, 25);
        break;
    case UnkEnum_ov66_022324D0_05:
        v0 = sub_0202C244(112, 26);
        break;
    case UnkEnum_ov66_022324D0_06:
        v0 = sub_0202C244(112, 27);
        break;
    default:
        v0 = NULL;
        break;
    }

    if (v0) {
        Journal_SaveData(v1, v0, 4);
    }
}

void ov66_0222F000(UnkStruct_ov66_0222DFF8 *param0)
{
    void *v0;
    Journal *v1;

    v1 = SaveData_GetJournal(param0->unk_00);
    v0 = sub_0202C244(112, 28);

    Journal_SaveData(v1, v0, 4);
}

void ov66_0222F020(UnkStruct_ov66_0222DFF8 *param0)
{
    GameRecords *v0;

    v0 = SaveData_GetGameRecordsPtr(param0->unk_00);
    GameRecords_IncrementRecordValue(v0, RECORD_UNK_046);
}

void ov66_0222F030(UnkStruct_ov66_0222DFF8 *param0)
{
    GameRecords *v0;

    v0 = SaveData_GetGameRecordsPtr(param0->unk_00);
    GameRecords_IncrementRecordValue(v0, RECORD_UNK_118);
}

void ov66_0222F040(UnkStruct_ov66_0222DFF8 *param0, int param1)
{
    GF_ASSERT(param1 < 8);
    param0->unk_3A3.unk_00[param1] = 1;
}

int ov66_0222F05C(const UnkStruct_ov66_0222DFF8 *param0)
{
    int v0;
    BOOL v1;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_3A3.unk_00[v0] == 0) {
            switch (v0) {
            case 0:
            case 1:
            case 2:
                if (ov66_0222E190(param0) == 1) {
                    v1 = 0;
                } else {
                    v1 = 1;
                }
                break;
            case 3:
            case 4:
            case 5:
                if (ov66_0222E12C(param0) == 1) {
                    v1 = 0;
                } else {
                    v1 = 1;
                }
                break;
            case 6:
                if (ov66_0222E19C(param0) == 1) {
                    v1 = 0;
                } else {
                    v1 = 1;
                }
                break;
            default:
            case 7:
                v1 = 1;
                break;
            }

            if (v1 == 1) {
                return v0;
            }
        }
    }

    return 8;
}

u32 ov66_0222F0DC(const UnkStruct_ov66_0222DFF8 *param0)
{
    u32 v0;

    v0 = ov66_02230828(&param0->unk_3AB);

    if (ov66_0222E924(param0, ov66_0222E338(param0)) == 1) {
        v0 += (3 - 1);
    }

    return v0;
}

int ov66_0222F104(const UnkStruct_ov66_0222DFF8 *param0)
{
    return ov66_02230A68(&param0->unk_49C);
}

u32 ov66_0222F114(const UnkStruct_ov66_0222DFF8 *param0)
{
    return ov66_02230A64(&param0->unk_49C);
}

void ov66_0222F124(UnkStruct_ov66_0222DFF8 *param0, const UnkStruct_ov68_0225DC74 *param1)
{
    param0->unk_510.unk_14 = 1;
    param0->unk_510.unk_00 = *param1;
}

BOOL ov66_0222F144(const UnkStruct_ov66_0222DFF8 *param0, UnkStruct_ov68_0225DC74 *param1)
{
    if (param0->unk_510.unk_14 == 1) {
        *param1 = param0->unk_510.unk_00;
        return 1;
    }

    return 0;
}

void ov66_0222F16C(UnkStruct_ov66_0222DFF8 *param0)
{
    TrainerInfo *v0;

    GF_ASSERT(param0->unk_4B8 == NULL);

    v0 = SaveData_GetTrainerInfo(param0->unk_00);
    param0->unk_4B8 = sub_0207E060(v0, param0->unk_528);
}

void ov66_0222F198(UnkStruct_ov66_0222DFF8 *param0)
{
    if (param0->unk_4B8 != NULL) {
        sub_0207E0B0(param0->unk_4B8);
        param0->unk_4B8 = NULL;
    }
}

static BOOL ov66_0222F1B4(const u16 *param0, u32 param1)
{
    int v0;

    for (v0 = 0; v0 < param1; v0++) {
        if (param0[v0] == 0xffff) {
            return 1;
        }
    }

    return 0;
}

static void ov66_0222F1DC(s32 param0, const void *param1, void *param2, BOOL param3)
{
    UnkStruct_ov66_0222DFF8 *v0;
    u32 v1;
    const UnkStruct_ov66_0222E71C *v2;
    s32 v3;
    u32 v4;

    v0 = param2;

    if (param3) {
        ov66_0222FC0C(&v0->unk_508, &v0->unk_108, v0->unk_528);

        if (ov66_0222FA04(&v0->unk_108, v0->unk_00) == 0) {
            v0->unk_52C = 1;
        }

        v1 = ov66_02232B78(param0);
        ov66_022317E4(v0->unk_04.unk_00, v1, v0->unk_108.unk_20.unk_38, UnkEnum_ov66_02231E54_01 | UnkEnum_ov66_02231E54_02);
        v0->unk_108.unk_20.unk_00 = param0;

        {
            s64 v5;

            ov66_0223295C(param0, &v5);
            ov66_02231428(&v0->unk_108.unk_20.unk_18, &v5);
        }

        {
            u32 v6, v7;
            BOOL v8;

            v6 = ov66_0222E880(&v0->unk_108.unk_20);
            v7 = ov66_0222E8A4(&v0->unk_108.unk_20);
            v8 = ov66_0222E824(&v0->unk_108.unk_20);

            if ((v6 != 0) && (v8 == 1)) {
                v0->unk_108.unk_20.unk_1C = ov66_02234EA8(v6, v7, v0->unk_108.unk_20.unk_18, v0->unk_528);
            } else {
                v0->unk_108.unk_20.unk_1C.unk_00_val2_unk_00 = 12;
                v0->unk_108.unk_20.unk_1C.unk_00_val2_unk_01 = 0;
                v0->unk_108.unk_20.unk_1C.unk_00_val2_unk_02 = 0;
            }
        }

        ov66_0222F9EC(&v0->unk_108, v0->unk_00);
        ov66_0222F964(v0);
    } else {
        v2 = (const UnkStruct_ov66_0222E71C *)param1;
        v3 = ov66_02232988();
        v1 = ov66_02232B78(param0);

        ov66_022317E4(v0->unk_04.unk_00, v1, ov66_0222E7C8(v2), UnkEnum_ov66_02231E54_00);

        if (v3 == param0) {
            ov66_0223180C(v0->unk_04.unk_00, v1);
        }

        if (ov66_02230AF8(&v0->unk_4BC, param0, DWC_LOBBY_INVALID_USER_ID)) {
            ov66_0222F964(v0);
        }
    }

    v1 = ov66_02232B78(param0);
    v0->unk_F8.unk_00 |= 1 << v1;

    if (ov66_02233394(param0) == 1) {
        u32 v9;

        ov66_0223086C(&v0->unk_3CB, v1, 1);

        {
            UnkStruct_ov66_02231B24 v10;

            v10.unk_00 = v1;
            ov66_02231B24(v0->unk_04.unk_00, &v10, &v0->unk_3CB);
        }

        v9 = ov66_022333BC(param0);

        if (v9 != 0) {
            ov66_022308C8(&v0->unk_3E4, v1, 1, v9);
        } else {
            ov66_022308C8(&v0->unk_3E4, v1, 0, v9);
        }
    } else {
        ov66_0223086C(&v0->unk_3CB, v1, 0);
        ov66_022308C8(&v0->unk_3E4, v1, 0, 0);
    }
}

static void ov66_0222F398(s32 param0, void *param1)
{
    UnkStruct_ov66_0222DFF8 *v0;
    u32 v1, v2;
    BOOL v3;
    s32 v4;

    v0 = param1;

    if (param0 == ov66_022328F0()) {
        return;
    }

    v1 = ov66_02232B78(param0);

    if (ov66_0222EDF4(v0) == 1) {
        if (ov66_0222EE1C(v0) == v1) {
            ov66_0222FC84(&v0->unk_1C0);
        }
    }

    v3 = ov66_022317F0(v0->unk_04.unk_00, v1);

    if (v3) {
        v4 = ov66_022329E4(param0);
        v2 = ov66_02232B78(v4);

        ov66_0223180C(v0->unk_04.unk_00, v2);
    }

    ov66_0223086C(&v0->unk_3CB, v1, 0);
    ov66_0222FD10(&v0->unk_1C0, v1);
    ov66_0222FCD8(&v0->unk_1C0, v1);

    if (ov66_02230AF8(&v0->unk_4BC, param0, DWC_LOBBY_INVALID_USER_ID)) {
        ov66_0222F964(v0);
    }

    ov66_022308C8(&v0->unk_3E4, v1, 0, 0);

    v1 = ov66_02232B78(param0);
    v0->unk_F8.unk_04 |= 1 << v1;
}

static void ov66_0222F458(s32 param0, const void *param1, void *param2)
{
    UnkStruct_ov66_0222DFF8 *v0;
    u32 v1;
    const UnkStruct_ov66_0222E71C *v2;
    u32 v3;

    v0 = param2;
    v1 = ov66_02232B78(param0);

    v0->unk_F8.unk_0C |= 1 << v1;

    v2 = param1;
    v3 = ov66_0222E71C(v2);

    switch (v3) {
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
        ov66_0222FD10(&v0->unk_1C0, v1);
        break;
    default:
        break;
    }

    if (ov66_0222E8D8(v2) == 1) {
        ov66_022307F0(&v0->unk_3AB, ov66_0222E8C4(v2), v1);
    }
}

static void ov66_0222F4C8(PPW_LOBBY_TIME_EVENT param0, void *param1)
{
    UnkStruct_ov66_0222DFF8 *v0;
    BOOL v1 = 0;
    int v2;

    v0 = param1;

    {
        PPW_LobbyTimeInfo v3;

        PPW_LobbyGetTimeInfo(&v3);
        ov66_02231428(&v0->unk_04.unk_D0, &v3.currentTime);

        v0->unk_04.unk_D4 = v3.currentTime;
    }

    switch (param0) {
    case PPW_LOBBY_TIME_EVENT_LOCK:
        ov66_022317D8(v0->unk_04.unk_00, &v0->unk_04.unk_D0);
        v0->unk_04.unk_DC = v0->unk_04.unk_D4;
        v0->unk_1FC.unk_00_0 = 1;
        v0->unk_F8.unk_08 |= 1 << 0;
        break;
    case PPW_LOBBY_TIME_EVENT_NEON_A1:
    case PPW_LOBBY_TIME_EVENT_NEON_A2:
    case PPW_LOBBY_TIME_EVENT_NEON_A3:
    case PPW_LOBBY_TIME_EVENT_NEON_A4:
    case PPW_LOBBY_TIME_EVENT_NEON_A5:
        if (v0->unk_04.unk_04 == 0) {
            v1 = 1;
            v2 = 0;

            v0->unk_04.unk_04 = 1;
            v0->unk_1FC.unk_06 = (10 * 30);
        }
    case PPW_LOBBY_TIME_EVENT_NEON_A0:
        v0->unk_1FC.unk_01 = param0;
        v0->unk_F8.unk_08 |= 1 << 1;
        break;
    case PPW_LOBBY_TIME_EVENT_NEON_B1:
    case PPW_LOBBY_TIME_EVENT_NEON_B2:
    case PPW_LOBBY_TIME_EVENT_NEON_B3:
        if (v0->unk_04.unk_04 == 0) {
            v1 = 1;
            v2 = 0;

            v0->unk_04.unk_04 = 1;
            v0->unk_1FC.unk_06 = (10 * 30);
        }
    case PPW_LOBBY_TIME_EVENT_NEON_B0:
        v0->unk_1FC.unk_02 = param0;
        v0->unk_F8.unk_08 |= 1 << 2;
        break;
    case PPW_LOBBY_TIME_EVENT_NEON_C1:
    case PPW_LOBBY_TIME_EVENT_NEON_C2:
    case PPW_LOBBY_TIME_EVENT_NEON_C3:
        if (v0->unk_04.unk_04 == 0) {
            v1 = 1;
            v2 = 0;

            v0->unk_04.unk_04 = 1;
            v0->unk_1FC.unk_06 = (10 * 30);
        }

    case PPW_LOBBY_TIME_EVENT_NEON_C0:
        v0->unk_1FC.unk_03 = param0;
        v0->unk_F8.unk_08 |= 1 << 3;
        break;
    case PPW_LOBBY_TIME_EVENT_FIRE_WORKS_START:
        v1 = 1;
        v2 = 1;

        {
            u32 v4, v5;

            v4 = ov66_02232BEC(UnkEnum_ov66_02232BEC_06);
            v5 = ov66_02232BEC(UnkEnum_ov66_02232BEC_07);

            ov66_022309A4(&v0->unk_49C, v4, v5);
        }

        v0->unk_1FC.unk_08 = (10 * 30);
        break;
    case PPW_LOBBY_TIME_EVENT_FIRE_WORKS_END:
        v0->unk_1FC.unk_00_2 = 2;
        v0->unk_F8.unk_08 |= 1 << 5;
        break;
    case PPW_LOBBY_TIME_EVENT_PARADE:
        v1 = 1;
        v2 = 2;

        v0->unk_1FC.unk_0A = (10 * 30);
        break;
    case PPW_LOBBY_TIME_EVENT_CLOSE:
        v1 = 1;
        v2 = 4;

        v0->unk_1FC.unk_00_7 = 1;
        v0->unk_1FC.unk_04 = (30 * 30);
        break;
    case PPW_LOBBY_TIME_EVENT_MINIGAME_END:
        v0->unk_1FC.unk_00_5 = 1;
        v0->unk_F8.unk_08 |= 1 << 4;
        break;
    default:
        break;
    }

    if (v1) {
        ov66_02230298(v0, v2);
    }
}

static void ov66_0222F684(const void *param0, u32 param1, void *param2)
{
    UnkStruct_ov66_0222DFF8 *v0;
    const UnkStruct_ov66_0222E71C *v1;

    v0 = param2;
    v1 = param0;

    if (ov66_0222FA04(&v0->unk_108, v0->unk_00) == 0) {
        v0->unk_52C = 1;
        return;
    }

    ov66_0222FA28(&v0->unk_108, v1, param1);
    ov66_0222F9EC(&v0->unk_108, v0->unk_00);
}

static void ov66_0222F6C4(UnkStruct_ov66_0222F6C4 *param0, UnkStruct_ov66_02231560 *param1)
{
    int v0;
    UnkStruct_ov66_02232B20 v1;
    const UnkStruct_ov66_0222E71C *v2;
    UnkStruct_ov66_02231560 *v3;
    u8 v4;
    u8 v5;

    memset(param1, 0, sizeof(UnkStruct_ov66_02231560));

    ov66_02232B20(&v1);

    v2 = &param0->unk_20;
    ov66_02231560(param1, ov66_0222E880(v2), ov66_0222E8A4(v2), 0);

    for (v0 = 0; v0 < 20; v0++) {
        if (v1.unk_04[v0] != DWC_LOBBY_INVALID_USER_ID) {
            v2 = (const UnkStruct_ov66_0222E71C *)ov66_0223293C(v1.unk_04[v0]);
            ov66_02231560(param1, ov66_0222E880(v2), ov66_0222E8A4(v2), 0);
        }
    }

    for (v0 = 0; v0 < 20; v0++) {
        v4 = ov66_02232CD4(v0);
        v5 = ov66_02232D00(v0);

        ov66_02231560(param1, v4, v5, 1);
    }
}

static void ov66_0222F768(UnkStruct_ov66_0222DFF8 *param0)
{
    s64 v0;
    s64 v1;

    if ((param0->unk_1FC.unk_00_0 == 1) && (param0->unk_1FC.unk_00_7 == 0) && (ov66_0223287C() == UnkEnum_ov66_0223287C_02)) {
        v0 = ov66_0222EB48(param0);
        v0 += param0->unk_04.unk_DC;

        v1 = param0->unk_04.unk_D4;

        if (v1 > v0) {
            param0->unk_1FC.unk_00_7 = 1;
            param0->unk_1FC.unk_04 = (30 * 30);
        }
    }
}

static void ov66_0222F7C8(UnkStruct_ov66_0222F6C4 *param0, SaveData *param1, u32 param2)
{
    TrainerInfo *v0;
    Party *v1;
    UnkStruct_0202C878 *v2;
    PokedexData *v3;
    UnkStruct_02055BA8 *v4;

    {
        v0 = SaveData_GetTrainerInfo(param1);
        v1 = Party_GetFromSavedata(param1);
        v3 = SaveData_Pokedex(param1);
        v2 = sub_0202C878(param1);
        v4 = sub_02025CD8(param1);
    }

    {
        Strbuf *v5;

        v5 = TrainerInfo_NameNewStrbuf(v0, param2);

        Strbuf_ToChars(v5, param0->unk_20.unk_08, 7 + 1);
        Strbuf_ToChars(v5, param0->unk_00, 7 + 1);
        Strbuf_Free(v5);
    }

    param0->unk_20.unk_00 = DWC_LOBBY_INVALID_USER_ID;
    param0->unk_20.unk_04 = TrainerInfo_ID(v0);

    {
        Pokemon *v6;
        int v7;
        int v8;

        v7 = Party_GetCurrentCount(v1);

        for (v8 = 0; v8 < 6; v8++) {
            if (v8 < v7) {
                v6 = Party_GetPokemonBySlotIndex(v1, v8);
                param0->unk_20.unk_20[v8] = Pokemon_GetValue(v6, MON_DATA_SPECIES, NULL);
                param0->unk_20.unk_2C[v8] = Pokemon_GetValue(v6, MON_DATA_FORM, NULL);
                param0->unk_20.unk_32[v8] = Pokemon_GetValue(v6, MON_DATA_IS_EGG, NULL);
            } else {
                param0->unk_20.unk_20[v8] = SPECIES_BAD_EGG;
            }
        }
    }

    param0->unk_20.unk_38 = TrainerInfo_Gender(v0);
    param0->unk_20.unk_39 = TrainerInfo_RegionCode(v0);
    param0->unk_20.unk_3A = TrainerInfo_Appearance(v0);
    param0->unk_20.unk_3A = ov66_02230C0C(param0->unk_20.unk_3A);
    param0->unk_20.unk_3C = sub_0202C8C0(v2);
    param0->unk_20.unk_3E = sub_0202C8C4(v2);
    param0->unk_20.unk_3F = sub_02027474(v3);
    param0->unk_20.unk_40 = TrainerInfo_IsMainStoryCleared(v0);
    param0->unk_20.unk_41 = 0xff;
    param0->unk_20.unk_43 = 0;
    param0->unk_20.unk_42 = GAME_VERSION;
    param0->unk_20.unk_44 = v4->unk_24;

    {
        int v9;

        for (v9 = 0; v9 < 12; v9++) {
            param0->unk_20.unk_4C[v9] = 24;
            param0->unk_20.unk_58[v9] = DWC_LOBBY_INVALID_USER_ID;
        }
    }
    {
        int v10;

        for (v10 = 0; v10 < 2; v10++) {
            param0->unk_20.unk_88[v10] = 0;
        }
    }

    param0->unk_20.unk_8C.unk_00 = 0xffffffff;
    param0->unk_20.unk_8C.unk_04 = 3;

    ov66_0222F9EC(param0, param1);
}

static void ov66_0222F964(UnkStruct_ov66_0222DFF8 *param0)
{
    int v0;
    const UnkStruct_ov66_0222E71C *v1;

    if (ov66_0222FA04(&param0->unk_108, param0->unk_00) == 0) {
        param0->unk_52C = 1;
        return;
    }

    for (v0 = 0; v0 < 12; v0++) {
        param0->unk_108.unk_20.unk_4C[v0] = ov66_02230B78(&param0->unk_4BC, v0);
        param0->unk_108.unk_20.unk_58[v0] = ov66_02230BA4(&param0->unk_4BC, v0);
    }

    MI_CpuCopy8(param0->unk_108.unk_10, param0->unk_108.unk_20.unk_08, sizeof(u16) * (7 + 1));
    ov66_02232908(&param0->unk_108.unk_20);

    MI_CpuCopy8(param0->unk_108.unk_00, param0->unk_108.unk_20.unk_08, sizeof(u16) * (7 + 1));
    ov66_0222F9EC(&param0->unk_108, param0->unk_00);
}

static void ov66_0222F9EC(UnkStruct_ov66_0222F6C4 *param0, const SaveData *param1)
{
    param0->unk_B4 = SaveData_CalculateChecksum(param1, &param0->unk_20, sizeof(UnkStruct_ov66_0222E71C));
}

static BOOL ov66_0222FA04(const UnkStruct_ov66_0222F6C4 *param0, const SaveData *param1)
{
    u32 v0;

    v0 = SaveData_CalculateChecksum(param1, &param0->unk_20, sizeof(UnkStruct_ov66_0222E71C));

    if (v0 != param0->unk_B4) {
        GF_ASSERT(0);
        return 0;
    }

    return 1;
}

static void ov66_0222FA28(UnkStruct_ov66_0222F6C4 *param0, const UnkStruct_ov66_0222E71C *param1, u32 param2)
{
    param0->unk_20 = *param1;

    if (sizeof(UnkStruct_ov66_0222E71C) >= param2) {
        MI_CpuCopy8(param1, &param0->unk_20, param2);
    } else {
        MI_CpuCopy8(param1, &param0->unk_20, sizeof(UnkStruct_ov66_0222E71C));
    }

    MI_CpuCopy8(param1->unk_08, param0->unk_10, sizeof(u16) * (7 + 1));
    MI_CpuCopy8(param0->unk_00, param0->unk_20.unk_08, sizeof(u16) * (7 + 1));
}

static void ov66_0222FA80(UnkStruct_ov66_0222FA80 *param0)
{
    param0->unk_08 = 0;
}

static void ov66_0222FA88(UnkStruct_ov66_0222FB64 *param0, UnkStruct_ov66_0222FA80 *param1, UnkStruct_ov66_022302B0 *param2, UnkStruct_ov66_022309A4 *param3)
{
    if ((param0->unk_04 - 1) >= 0) {
        param0->unk_04--;

        if (param0->unk_04 == (28 * 30)) {
            sub_0200564C(0, 127);
            param0->unk_0E = 1;
        }
    } else if (param0->unk_04 == 0) {
        param0->unk_00_1 = 1;
        param1->unk_08 |= 1 << 7;
        param0->unk_04--;
    }

    if ((param0->unk_06 - 1) >= 0) {
        param0->unk_06--;
    } else if (param0->unk_06 == 0) {
        param1->unk_08 |= 1 << 2;
        param1->unk_08 |= 1 << 3;
        param1->unk_08 |= 1 << 1;
        param0->unk_06--;
    }

    if ((param0->unk_08 - 1) >= 0) {
        param0->unk_08--;
    } else if (param0->unk_08 == 0) {
        param0->unk_00_2 = 1;
        param1->unk_08 |= 1 << 5;
        param0->unk_08--;
        ov66_022309B4(param3);
    }

    if ((param0->unk_0A - 1) >= 0) {
        param0->unk_0A--;
    } else if (param0->unk_0A == 0) {
        ov66_022302D0(param2);

        if (param0->unk_0C == 0) {
            Sound_PlayBGM(1213);
        }

        param0->unk_00_4 = 1;
        param1->unk_08 |= 1 << 6;
        param0->unk_0A--;
    }
}

static void ov66_0222FB64(UnkStruct_ov66_0222FB64 *param0)
{
    param0->unk_00_0 = 0;
    param0->unk_00_1 = 0;
    param0->unk_00_2 = 0;
    param0->unk_00_4 = 0;
    param0->unk_00_5 = 0;
    param0->unk_00_7 = 0;
    param0->unk_01 = PPW_LOBBY_TIME_EVENT_NEON_A0;
    param0->unk_02 = PPW_LOBBY_TIME_EVENT_NEON_B0;
    param0->unk_03 = PPW_LOBBY_TIME_EVENT_NEON_C0;
    param0->unk_04 = -1;
    param0->unk_06 = -1;
    param0->unk_08 = -1;
    param0->unk_0A = -1;
}

static void ov66_0222FBAC(const UnkStruct_ov66_0222FB64 *param0)
{
    if (param0->unk_0D == 1) {
        sub_0200544C(7, (127 / 3));
    } else {
        sub_0200544C(7, 127);
    }
}

static void ov66_0222FBC8(UnkStruct_ov66_0222FBC8 *param0)
{
    param0->unk_00 = (30 * 30);
}

static BOOL ov66_0222FBD0(const UnkStruct_ov66_0222FBC8 *param0)
{
    if (param0->unk_00 > 0) {
        return 1;
    }

    return 0;
}

static void ov66_0222FBE0(UnkStruct_ov66_0222FBC8 *param0)
{
    if (param0->unk_00 > 0) {
        param0->unk_00--;
    }
}

static void ov66_0222FBF0(UnkStruct_ov66_0222FBF0 *param0, u32 param1)
{
    param0->unk_00 = TrainerInfo_New(param1);
}

static void ov66_0222FC00(UnkStruct_ov66_0222FBF0 *param0)
{
    Heap_FreeToHeap(param0->unk_00);
}

static void ov66_0222FC0C(UnkStruct_ov66_0222FBF0 *param0, const UnkStruct_ov66_0222F6C4 *param1, u32 param2)
{
    UnkStruct_ov66_0222E71C *v0;

    v0 = Heap_AllocFromHeap(param2, sizeof(UnkStruct_ov66_0222E71C));

    MI_CpuCopyFast(&param1->unk_20, v0, sizeof(UnkStruct_ov66_0222E71C));
    MI_CpuCopy8(param1->unk_10, v0->unk_08, sizeof(u16) * (7 + 1));

    ov66_0222E640(v0, param0->unk_00, param2);
    Heap_FreeToHeap(v0);
}

static void ov66_0222FC4C(UnkStruct_ov66_0222FBC8 *param0)
{
    param0->unk_02 = 1;
}

static BOOL ov66_0222FC54(const UnkStruct_ov66_0222FBC8 *param0)
{
    return param0->unk_02;
}

static void ov66_0222FC58(UnkStruct_ov66_0222FC58 *param0)
{
    memset(param0, 0, sizeof(UnkStruct_ov66_0222FC58));
}

static void ov66_0222FC68(UnkStruct_ov66_0222FC68 *param0)
{
    memset(param0, 0, sizeof(UnkStruct_ov66_0222FC68));
}

static void ov66_0222FC74(UnkStruct_ov66_0222FC68 *param0)
{
    param0->unk_04 = 0;
    param0->unk_06 = 0;
    param0->unk_0A = 0;

    ov66_0222FD7C(param0);
}

static void ov66_0222FC84(UnkStruct_ov66_0222FC68 *param0)
{
    param0->unk_04 = 0;
    param0->unk_06 = 4;

    ov66_0222FD7C(param0);

    param0->unk_0A = 0;
}

static BOOL ov66_0222FC9C(const UnkStruct_ov66_0222FC68 *param0, u32 param1)
{
    GF_ASSERT(param1 < 20);

    if (param0->unk_00 & (1 << param1)) {
        return 1;
    }

    return 0;
}

static void ov66_0222FCBC(UnkStruct_ov66_0222FC68 *param0, u32 param1)
{
    GF_ASSERT(param1 < 20);
    param0->unk_00 |= (1 << param1);
}

static void ov66_0222FCD8(UnkStruct_ov66_0222FC68 *param0, u32 param1)
{
    GF_ASSERT(param1 < 20);
    param0->unk_00 &= ~(1 << param1);
}

static void ov66_0222FCF4(UnkStruct_ov66_0222FC68 *param0, u32 param1)
{
    GF_ASSERT(param1 < 20);

    if ((param0->unk_0C[param1] + 1) <= 6) {
        param0->unk_0C[param1]++;
    }
}

static void ov66_0222FD10(UnkStruct_ov66_0222FC68 *param0, u32 param1)
{
    GF_ASSERT(param1 < 20);
    param0->unk_0C[param1] = 0;
}

static void ov66_0222FD28(UnkStruct_ov66_0222FC68 *param0, u16 param1)
{
    param0->unk_20.unk_02 = param0->unk_06;
    param0->unk_20.unk_00 = param1;
}

static void ov66_0222FD30(UnkStruct_ov66_0222DFF8 *param0, s32 param1, BOOL param2)
{
    param0->unk_1C0.unk_20.unk_02 = 2;
    param0->unk_1C0.unk_20.unk_00 = param2;

    ov66_02232E5C(1, param1, &param0->unk_1C0.unk_20, sizeof(UnkStruct_ov66_022305B0));
}

static void ov66_0222FD50(UnkStruct_ov66_0222DFF8 *param0, s32 param1)
{
    param0->unk_1C0.unk_06 = 4;
    param0->unk_1C0.unk_20.unk_02 = 4;

    ov66_02232E5C(2, param1, &param0->unk_1C0.unk_20, sizeof(UnkStruct_ov66_022305B0));
}

static void ov66_0222FD70(UnkStruct_ov66_0222FC68 *param0)
{
    param0->unk_24 = 1;
    param0->unk_26 = 0;
}

static void ov66_0222FD7C(UnkStruct_ov66_0222FC68 *param0)
{
    param0->unk_24 = 0;
    param0->unk_26 = 0;
}

static void ov66_0222FD84(UnkStruct_ov66_0222FC68 *param0)
{
    if (param0->unk_24 == 1) {
        if ((param0->unk_26 + 1) <= 900) {
            param0->unk_26++;
        }
    }
}

static BOOL ov66_0222FD9C(const UnkStruct_ov66_0222FC68 *param0)
{
    if (param0->unk_24 == 0) {
        return 1;
    }

    if (param0->unk_26 >= 900) {
        return 0;
    }

    return 1;
}

static s16 ov66_0222FDBC(const UnkStruct_ov66_0222FC68 *param0)
{
    return param0->unk_26;
}

static void ov66_0222FDC4(UnkStruct_ov66_0222DFF8 *param0, const UnkStruct_ov66_0222E990 *param1)
{
    const UnkStruct_ov66_0222E71C *v0;
    int v1;
    u32 v2;
    UnkStruct_ov66_0223185C v3;

    if (param1->unk_10 != 2) {
        return;
    }

    for (v1 = 0; v1 < 2; v1++) {
        v2 = ov66_02232B78(param1->unk_00[v1]);

        if (v2 != 0xffffffff) {
            v0 = ov66_0222E374(param0, v2);
            ov66_0222E640(v0, param0->unk_04.unk_E4[v1], param0->unk_528);
        } else {
            return;
        }
    }

    v3.unk_00 = param0->unk_04.unk_E4[0];
    v3.unk_04 = param0->unk_04.unk_E4[1];
    v3.unk_08 = ov66_02232B78(param1->unk_00[0]);
    v3.unk_0A = ov66_02232B78(param1->unk_00[1]);

    ov66_0223185C(param0->unk_04.unk_00, &v3);
}

static void ov66_0222FE40(UnkStruct_ov66_0222DFF8 *param0, const UnkStruct_ov66_0222E990 *param1)
{
    const UnkStruct_ov66_0222E71C *v0;
    int v1;
    u32 v2;
    UnkStruct_ov66_022318AC v3;

    if (param1->unk_10 != 2) {
        return;
    }

    for (v1 = 0; v1 < 2; v1++) {
        v2 = ov66_02232B78(param1->unk_00[v1]);

        if (v2 != 0xffffffff) {
            v0 = ov66_0222E374(param0, v2);
            ov66_0222E640(v0, param0->unk_04.unk_E4[v1], param0->unk_528);
        } else {
            return;
        }
    }

    v3.unk_00 = param0->unk_04.unk_E4[0];
    v3.unk_04 = param0->unk_04.unk_E4[1];
    v3.unk_08 = ov66_02232B78(param1->unk_00[0]);
    v3.unk_0A = ov66_02232B78(param1->unk_00[1]);
    v3.unk_0C = param1->unk_12;

    ov66_022318AC(param0->unk_04.unk_00, &v3);
}

static void ov66_0222FEC0(UnkStruct_ov66_0222DFF8 *param0, const UnkStruct_ov66_0222E990 *param1)
{
    const UnkStruct_ov66_0222E71C *v0;
    int v1;
    TrainerInfo *v2[4];
    u32 v3;
    UnkStruct_ov66_02231908 v4;

    if ((param1->unk_10 > 4) || (param1->unk_10 <= 0)) {
        return;
    }

    if (param1->unk_13_7 == 1) {
        for (v1 = 0; v1 < 4; v1++) {
            if (v1 < param1->unk_10) {
                v3 = ov66_02232B78(param1->unk_00[v1]);

                if (v3 != 0xffffffff) {
                    v0 = ov66_0222E374(param0, v3);
                    ov66_0222E640(v0, param0->unk_04.unk_E4[v1], param0->unk_528);
                    v2[v1] = param0->unk_04.unk_E4[v1];
                } else {
                    return;
                }
            } else {
                v2[v1] = NULL;
            }
        }
    } else {
        for (v1 = 0; v1 < 4; v1++) {
            if (v1 == 0) {
                u32 v5 = ov66_02232B78(param1->unk_00[v1]);

                if (v5 != 0xffffffff) {
                    v0 = ov66_0222E374(param0, v5);
                    ov66_0222E640(v0, param0->unk_04.unk_E4[v1], param0->unk_528);
                    v2[v1] = param0->unk_04.unk_E4[v1];
                } else {
                    return;
                }
            } else {
                v2[v1] = NULL;
            }
        }
    }

    v4.unk_00 = param1->unk_13_0;
    v4.unk_04 = param1->unk_10;
    v4.unk_08 = v2[0];
    v4.unk_0C = v2[1];
    v4.unk_10 = v2[2];
    v4.unk_14 = v2[3];
    v4.unk_18 = ov66_02232B78(param1->unk_00[0]);
    v4.unk_1A = ov66_02232B78(param1->unk_00[1]);
    v4.unk_1C = ov66_02232B78(param1->unk_00[2]);
    v4.unk_1E = ov66_02232B78(param1->unk_00[3]);
    v4.unk_20 = param1->unk_13_7;

    ov66_02231908(param0->unk_04.unk_00, &v4);
}

static void ov66_0222FFF4(UnkStruct_ov66_0222DFF8 *param0, const UnkStruct_ov66_0222E990 *param1)
{
    const UnkStruct_ov66_0222E71C *v0;
    int v1;
    u32 v2;
    UnkStruct_ov66_0223199C v3;

    if ((param1->unk_10 > 8) || (param1->unk_10 <= 0)) {
        return;
    }

    v2 = ov66_02232B78(param1->unk_00[0]);

    if (v2 != 0xffffffff) {
        v0 = ov66_0222E374(param0, v2);
        ov66_0222E640(v0, param0->unk_04.unk_E4[0], param0->unk_528);
    } else {
        return;
    }

    v3.unk_00 = param1->unk_13_0;
    v3.unk_04 = param1->unk_10;
    v3.unk_08 = param0->unk_04.unk_E4[0];
    v3.unk_0C = ov66_02232B78(param1->unk_00[0]);

    ov66_0223199C(param0->unk_04.unk_00, &v3);
}

static void ov66_02230058(UnkStruct_ov66_0222DFF8 *param0, const UnkStruct_ov66_0222E990 *param1)
{
    const UnkStruct_ov66_0222E71C *v0;
    int v1;
    TrainerInfo *v2[4];
    u32 v3;
    UnkStruct_ov66_022319FC v4;

    if ((param1->unk_10 > 4) || (param1->unk_10 <= 0)) {
        return;
    }

    for (v1 = 0; v1 < 4; v1++) {
        if (v1 < param1->unk_10) {
            v3 = ov66_02232B78(param1->unk_00[v1]);

            if (v3 != 0xffffffff) {
                v0 = ov66_0222E374(param0, v3);
                ov66_0222E640(v0, param0->unk_04.unk_E4[v1], param0->unk_528);
                v2[v1] = param0->unk_04.unk_E4[v1];
            } else {
                return;
            }
        } else {
            v2[v1] = NULL;
        }
    }

    v4.unk_00 = param1->unk_10;
    v4.unk_04 = v2[0];
    v4.unk_08 = v2[1];
    v4.unk_0C = v2[2];
    v4.unk_10 = v2[3];
    v4.unk_14 = ov66_02232B78(param1->unk_00[0]);
    v4.unk_16 = ov66_02232B78(param1->unk_00[1]);
    v4.unk_18 = ov66_02232B78(param1->unk_00[2]);
    v4.unk_1A = ov66_02232B78(param1->unk_00[3]);

    ov66_022319FC(param0->unk_04.unk_00, &v4);
}

static void ov66_02230114(UnkStruct_ov66_0222DFF8 *param0, const UnkStruct_ov66_0222E990 *param1)
{
    const UnkStruct_ov66_0222E71C *v0;
    int v1;
    TrainerInfo *v2[4];
    u32 v3;
    UnkStruct_ov66_02231A58 v4;

    if ((param1->unk_10 > 4) || (param1->unk_10 <= 0)) {
        return;
    }

    for (v1 = 0; v1 < 4; v1++) {
        if (v1 < param1->unk_10) {
            v3 = ov66_02232B78(param1->unk_00[v1]);

            if (v3 != 0xffffffff) {
                v0 = ov66_0222E374(param0, v3);
                ov66_0222E640(v0, param0->unk_04.unk_E4[v1], param0->unk_528);
                v2[v1] = param0->unk_04.unk_E4[v1];
            } else {
                return;
            }
        } else {
            v2[v1] = NULL;
        }
    }

    v4.unk_00 = param1->unk_10;
    v4.unk_04 = v2[0];
    v4.unk_08 = v2[1];
    v4.unk_0C = v2[2];
    v4.unk_10 = v2[3];
    v4.unk_14 = ov66_02232B78(param1->unk_00[0]);
    v4.unk_16 = ov66_02232B78(param1->unk_00[1]);
    v4.unk_18 = ov66_02232B78(param1->unk_00[2]);
    v4.unk_1A = ov66_02232B78(param1->unk_00[3]);

    ov66_02231A58(param0->unk_04.unk_00, &v4);
}

static void ov66_022301D0(UnkStruct_ov66_0222DFF8 *param0, const UnkStruct_ov66_0222E990 *param1)
{
    const UnkStruct_ov66_0222E71C *v0;
    int v1;
    TrainerInfo *v2[4];
    u32 v3;
    UnkStruct_ov66_02231B80 v4;

    if ((param1->unk_10 > 4) || (param1->unk_10 <= 0)) {
        return;
    }

    for (v1 = 0; v1 < 4; v1++) {
        if (v1 < param1->unk_10) {
            v3 = ov66_02232B78(param1->unk_00[v1]);

            if (v3 != 0xffffffff) {
                v0 = ov66_0222E374(param0, v3);
                ov66_0222E640(v0, param0->unk_04.unk_E4[v1], param0->unk_528);
                v2[v1] = param0->unk_04.unk_E4[v1];
            } else {
                return;
            }
        } else {
            v2[v1] = NULL;
        }
    }

    v4.unk_00 = param1->unk_13_0;
    v4.unk_04 = param1->unk_10;
    v4.unk_08 = v2[0];
    v4.unk_0C = v2[1];
    v4.unk_10 = v2[2];
    v4.unk_14 = v2[3];
    v4.unk_18 = ov66_02232B78(param1->unk_00[0]);
    v4.unk_1A = ov66_02232B78(param1->unk_00[1]);
    v4.unk_1C = ov66_02232B78(param1->unk_00[2]);
    v4.unk_1E = ov66_02232B78(param1->unk_00[3]);

    ov66_02231B80(param0->unk_04.unk_00, &v4);
}

static void ov66_02230294(UnkStruct_ov66_0222DFF8 *param0, const UnkStruct_ov66_0222E990 *param1)
{
    return;
}

static void ov66_02230298(UnkStruct_ov66_0222DFF8 *param0, int param1)
{
    UnkStruct_ov66_02231AB4 v0;

    v0.unk_00 = &param0->unk_04.unk_D0;
    v0.unk_04 = param1;

    ov66_02231AB4(param0->unk_04.unk_00, &v0);
}

static void ov66_022302B0(UnkStruct_ov66_022302B0 *param0)
{
    memset(param0, 0, sizeof(UnkStruct_ov66_022302B0));
    MI_CpuFill32(param0->unk_50, 0xffffffff, sizeof(u32) * (9 * 3));
}

static void ov66_022302D0(UnkStruct_ov66_022302B0 *param0)
{
    param0->unk_00 = 1;
}

static void ov66_022302D8(UnkStruct_ov66_022302B0 *param0)
{
    int v0;

    if (param0->unk_00 == 0) {
        return;
    }

    for (v0 = 0; v0 < 9; v0++) {
        if (param0->unk_04 == Unk_ov66_0225892C[v0]) {
            param0->unk_2C[v0] = 1;
        }

        if (param0->unk_2C[v0] == 1) {
            if ((param0->unk_08[v0] + 1) <= (40 * 30)) {
                param0->unk_08[v0]++;
            } else {
                param0->unk_2C[v0] = 2;
            }
        }
    }

    if ((param0->unk_04 + 1) <= (144 * 30)) {
        param0->unk_04++;
    }
}

static inline void inline_ov66_0222EC04(u32 param0, u32 *param1, u32 *param2)
{
    *param1 = param0 / 3;
    *param2 = param0 % 3;
}

static u32 ov66_02230330(UnkStruct_ov66_022302B0 *param0, u32 param1, int param2)
{
    u32 v0;
    int v1, v2;
    BOOL v3;
    u32 v4;

    v0 = ov66_022304DC(param0, param1);

    if (v0 == 0xffffffff) {
        for (v1 = 0; v1 < 9; v1++) {
            if (ov66_0223040C(param0, v1) != 2) {
                for (v2 = 0; v2 < 3; v2++) {
                    v0 = (v1 * 3) + v2;
                    v3 = ov66_02230544(param0, v0, param2);

                    if (v3 == 0) {
                        v4 = ov66_022303DC(param0, v0);

                        if (v4 == 0xffffffff) {
                            param0->unk_50[v1][v2] = param1;

                            return v0;
                        }
                    }
                }
            }
        }
    }

    return 0xffffffff;
}

static void ov66_022303A8(UnkStruct_ov66_022302B0 *param0, u32 param1)
{
    u32 v0;
    u32 v1, v2;

    v0 = ov66_022304DC(param0, param1);

    if (v0 != 0xffffffff) {
        inline_ov66_0222EC04(v0, &v1, &v2);
        param0->unk_50[v1][v2] = 0xffffffff;
    }
}

static u32 ov66_022303DC(const UnkStruct_ov66_022302B0 *param0, u32 param1)
{
    u32 v0;
    u32 v1;

    GF_ASSERT(param1 < 9 * 3);

    inline_ov66_0222EC04(param1, &v0, &v1);

    return param0->unk_50[v0][v1];
}

static int ov66_0223040C(const UnkStruct_ov66_022302B0 *param0, u32 param1)
{
    GF_ASSERT(param1 < 9);
    return param0->unk_2C[param1];
}

static u32 ov66_02230424(const UnkStruct_ov66_022302B0 *param0, u32 param1)
{
    GF_ASSERT(param1 < 9);
    return param0->unk_08[param1];
}

static void ov66_0223043C(UnkStruct_ov66_022302B0 *param0, u32 param1)
{
    u32 v0;
    u32 v1;
    u32 v2;

    v2 = ov66_022304DC(param0, param1);

    if (v2 != 0xffffffff) {
        inline_ov66_0222EC04(v2, &v0, &v1);
        param0->unk_128[v0][v1] = 1;
    }
}

static BOOL ov66_02230474(const UnkStruct_ov66_022302B0 *param0, u32 param1)
{
    u32 v0;
    u32 v1;

    GF_ASSERT(param1 < 9 * 3);

    inline_ov66_0222EC04(param1, &v0, &v1);
    return param0->unk_128[v0][v1];
}

static void ov66_022304A8(UnkStruct_ov66_022302B0 *param0, u32 param1)
{
    u32 v0;
    u32 v1;

    GF_ASSERT(param1 < 9 * 3);

    inline_ov66_0222EC04(param1, &v0, &v1);
    param0->unk_128[v0][v1] = 0;
}

static u32 ov66_022304DC(const UnkStruct_ov66_022302B0 *param0, u32 param1)
{
    int v0, v1;

    for (v0 = 0; v0 < 9; v0++) {
        for (v1 = 0; v1 < 3; v1++) {
            if (param0->unk_50[v0][v1] == param1) {
                return v0 * 3 + v1;
            }
        }
    }

    return 0xffffffff;
}

static void ov66_02230510(UnkStruct_ov66_022302B0 *param0, u32 param1, int param2)
{
    u32 v0;
    u32 v1;

    GF_ASSERT(param1 < 9 * 3);

    inline_ov66_0222EC04(param1, &v0, &v1);
    param0->unk_BC[v0][v1] = param2 + 1;
}

static BOOL ov66_02230544(const UnkStruct_ov66_022302B0 *param0, u32 param1, int param2)
{
    u32 v0;
    u32 v1;

    GF_ASSERT(param1 < 9 * 3);

    inline_ov66_0222EC04(param1, &v0, &v1);

    if (param0->unk_BC[v0][v1] <= param2) {
        return 0;
    }

    return 1;
}

static int ov66_02230580(const UnkStruct_ov66_022302B0 *param0, u32 param1)
{
    u32 v0;
    u32 v1;

    GF_ASSERT(param1 < 9 * 3);

    inline_ov66_0222EC04(param1, &v0, &v1);

    return param0->unk_BC[v0][v1];
}

static void ov66_022305B0(s32 param0, const void *param1, u32 param2, void *param3)
{
    UnkStruct_ov66_0222DFF8 *v0 = param3;
    u32 v1;
    const UnkStruct_ov66_022305B0 *v2;
    u32 v3;
    BOOL v4;

    v2 = param1;
    v1 = ov66_02232B78(param0);

    if (ov66_0222FA04(&v0->unk_108, v0->unk_00) == 0) {
        v0->unk_52C = 1;
    }

    v3 = ov66_0222E71C(&v0->unk_108.unk_20);
    v4 = ov66_0222EDF4(v0);

    if ((v3 != 1) || (v1 == 0xffffffff) || (v2->unk_02 != 1) || (v4 == 1) || (ov66_0222EE44(v0, v1) == 0)) {
        ov66_0222FD30(v0, param0, 0);
        return;
    }

    ov66_0222FD30(v0, param0, 1);

    if (ov66_0222FC9C(&v0->unk_1C0, v1) == 0) {
        v0->unk_1C0.unk_0B = 1;
    } else {
        v0->unk_1C0.unk_0B = 0;
    }

    v0->unk_1C0.unk_04 = v1;
    v0->unk_1C0.unk_06 = 2;
    v0->unk_1C0.unk_0A = 2;
    v0->unk_1C0.unk_07 = 0;

    ov66_0222FD70(&v0->unk_1C0);
}

static void ov66_02230664(s32 param0, const void *param1, u32 param2, void *param3)
{
    UnkStruct_ov66_0222DFF8 *v0 = param3;
    u32 v1;
    const UnkStruct_ov66_022305B0 *v2;

    v2 = param1;
    v1 = ov66_02232B78(param0);

    if (v0->unk_1C0.unk_0A == 0) {
        return;
    }

    if (v0->unk_1C0.unk_04 == v1) {
        if (v2->unk_00 == 1) {
            if (ov66_0222FC9C(&v0->unk_1C0, v1) == 0) {
                v0->unk_1C0.unk_0B = 1;
            } else {
                v0->unk_1C0.unk_0B = 0;
            }

            v0->unk_1C0.unk_06 = 2;
        } else {
            ov66_0222FC74(&v0->unk_1C0);
        }

        ov66_0222FD7C(&v0->unk_1C0);
    } else {
        (void)0;
    }
}

static void ov66_022306C4(s32 param0, const void *param1, u32 param2, void *param3)
{
    UnkStruct_ov66_0222DFF8 *v0 = param3;
    u32 v1;
    const UnkStruct_ov66_022305B0 *v2;

    if (v0->unk_1C0.unk_0A == 0) {
        return;
    }

    v2 = param1;
    v1 = ov66_02232B78(param0);

    if (v0->unk_1C0.unk_04 == v1) {
        if ((v2->unk_02 == 2) || (v2->unk_02 == 3)) {
            v0->unk_1C0.unk_06 = v2->unk_02;

            v0->unk_1C0.unk_08 = v2->unk_00;

            ov66_0222FD7C(&v0->unk_1C0);
        } else {
            ov66_0222FC84(&v0->unk_1C0);
        }
    } else {
        if (v1 == 0xffffffff) {
            ov66_0222FC84(&v0->unk_1C0);
        }
    }
}

static void ov66_02230728(s32 param0, const void *param1, u32 param2, void *param3)
{
    UnkStruct_ov66_0222DFF8 *v0 = param3;
    u32 v1;

    if (v0->unk_1C0.unk_06 == 0) {
        return;
    }

    v1 = ov66_02232B78(param0);

    if (v0->unk_1C0.unk_04 == v1) {
        ov66_0222FC74(&v0->unk_1C0);
    }
}

static void ov66_02230750(s32 param0, const void *param1, u32 param2, void *param3)
{
    UnkStruct_ov66_0222DFF8 *v0 = param3;
    const UnkStruct_ov66_0222E990 *v1 = param1;

    static void (*const v2[])(UnkStruct_ov66_0222DFF8 *, const UnkStruct_ov66_0222E990 *) = {
        ov66_0222FDC4,
        ov66_0222FE40,
        ov66_0222FEC0,
        ov66_0222FFF4,
        ov66_02230058,
        ov66_02230114,
        ov66_02230294,
        ov66_02230294,
        ov66_022301D0
    };

    v2[v1->unk_11](v0, v1);
}

static void ov66_02230764(s32 param0, const void *param1, u32 param2, void *param3)
{
    UnkStruct_ov66_0222DFF8 *v0 = param3;
    u32 v1;

    v1 = ov66_02232B78(param0);

    if (v1 != 0xffffffff) {
        v0->unk_1E8.unk_00[v1] = 1;
    }
}

static void ov66_02230780(s32 param0, const void *param1, u32 param2, void *param3)
{
    UnkStruct_ov66_0222DFF8 *v0 = param3;
    u32 v1;
    u32 v2;
    int v3;

    v1 = ov66_02232B78(param0);

    if (v1 != 0xffffffff) {
        for (v3 = 0; v3 < 3; v3++) {
            v2 = ov66_02230330(&v0->unk_20C, v1, v3);

            if (v2 != 0xffffffff) {
                break;
            }
        }
    }
}

static void ov66_022307B4(s32 param0, const void *param1, u32 param2, void *param3)
{
    UnkStruct_ov66_0222DFF8 *v0 = param3;
    u32 v1;

    v1 = ov66_02232B78(param0);

    if (v1 != 0xffffffff) {
        ov66_0223043C(&v0->unk_20C, v1);
    }
}

static void ov66_022307D4(UnkStruct_ov66_022307D4 *param0)
{
    int v0;

    memset(param0, 0, sizeof(UnkStruct_ov66_022307D4));

    for (v0 = 0; v0 < (27 / 3); v0++) {
        param0->unk_00[v0] = 100;
    }
}

static void ov66_022307F0(UnkStruct_ov66_022307D4 *param0, u32 param1, u32 param2)
{
    u32 v0;
    int v1;

    GF_ASSERT(param2 < 20);
    GF_ASSERT(param1 < 27);

    if (param0->unk_0C[param2] == 0) {
        v0 = param1 / 3;
        param0->unk_00[v0] /= 2;
        param0->unk_0C[param2] = 1;
    }
}

static u32 ov66_02230828(const UnkStruct_ov66_022307D4 *param0)
{
    int v0;
    u32 v1;
    u32 v2;
    u32 v3;

    v1 = 0;

    for (v0 = 0; v0 < (27 / 3); v0++) {
        v1 += param0->unk_00[v0];
    }

    v3 = MTRNG_Next() % v1;
    v2 = 0;

    for (v0 = 0; v0 < (27 / 3); v0++) {
        if ((v2 <= v3) && ((v2 + param0->unk_00[v0]) > v3)) {
            return v0 * 3;
        }

        v2 += param0->unk_00[v0];
    }

    GF_ASSERT(0);
    return 0;
}

static void ov66_0223086C(UnkStruct_ov66_02232068 *param0, u32 param1, BOOL param2)
{
    GF_ASSERT(param1 < 20);

    if (param1 < 20) {
        param0->unk_00[param1] = param2;
    }
}

static BOOL ov66_02230884(const UnkStruct_ov66_02232068 *param0, u32 param1)
{
    GF_ASSERT(param1 < 20);

    if (param1 < 20) {
        return param0->unk_00[param1];
    }

    return 0;
}

static void ov66_022308A0(UnkStruct_ov66_022308A0 *param0, u32 param1)
{
    MI_CpuClear8(param0, sizeof(UnkStruct_ov66_022308A0));
    param0->unk_B4 = sub_02014FB0(param1);
}

static void ov66_022308BC(UnkStruct_ov66_022308A0 *param0)
{
    sub_02014FF0(param0->unk_B4);
}

static void ov66_022308C8(UnkStruct_ov66_022308A0 *param0, u32 param1, BOOL param2, u32 param3)
{
    GF_ASSERT(param1 < 20);

    if (param1 < 20) {
        param0->unk_00[param1] = param2;

        if (param2 == 1) {
            ov66_02230938(param0->unk_B4, param3, &param0->unk_14[param1]);
        }
    }
}

static BOOL ov66_022308F8(const UnkStruct_ov66_022308A0 *param0, u32 param1)
{
    GF_ASSERT(param1 < 20);

    if (param1 < 20) {
        return param0->unk_00[param1];
    }

    return 0;
}

static const UnkStruct_ov66_02230914 *ov66_02230914(const UnkStruct_ov66_022308A0 *param0, u32 param1)
{
    GF_ASSERT(param1 < 20);

    if (param1 < 20) {
        if (param0->unk_00[param1]) {
            return &param0->unk_14[param1];
        }
    }

    return NULL;
}

static void ov66_02230938(UnkStruct_02014FB0 *param0, u32 param1, UnkStruct_ov66_02230914 *param2)
{
    UnkStruct_ov66_02230938 v0;
    u32 v1;
    u32 v2;

    v1 = sub_02015004(param0);

    v0.val1 = param1;

    v2 = (v0.val2[3] + v0.val2[0]) % v1;
    param2->unk_00[0] = sub_02015008(param0, v2);

    v2 = (v0.val2[0] + v0.val2[1]) % v1;
    param2->unk_00[1] = sub_02015008(param0, v2);

    v2 = (v0.val2[1] + v0.val2[2]) % v1;
    param2->unk_00[2] = sub_02015008(param0, v2);

    v2 = (v0.val2[2] + v0.val2[3]) % v1;
    param2->unk_00[3] = sub_02015008(param0, v2);
}

static void ov66_022309A4(UnkStruct_ov66_022309A4 *param0, u32 param1, u32 param2)
{
    param0->unk_00 = 0;
    param0->unk_0C = 0;
    param0->unk_10 = (param2 - param1) * 30;
}

static void ov66_022309B4(UnkStruct_ov66_022309A4 *param0)
{
    param0->unk_00 = 1;
    param0->unk_0C = 0;

    ov66_02232BC8(&param0->unk_04);
}

static void ov66_022309C8(UnkStruct_ov66_022309A4 *param0)
{
    s64 v0;
    s64 v1;

    if (param0->unk_00) {
        ov66_02232BC8(&v0);
        v1 = v0 - param0->unk_04;

        if (param0->unk_0C < (v1 * 30)) {
            param0->unk_0C = (v1 * 30);
        }

        if (param0->unk_0C < param0->unk_10) {
            param0->unk_0C++;

            {
                u32 v2;
                u32 v3;
                int v4;

                v2 = (param0->unk_0C * 256) / param0->unk_10;
                v3 = 0;

                for (v4 = 0; v4 < NELEMS(Unk_ov66_02258918); v4++) {
                    v3 += Unk_ov66_02258918[v4].unk_02;

                    if (v3 >= v2) {
                        if (param0->unk_14 != Unk_ov66_02258918[v4].unk_00) {
                            param0->unk_14 = Unk_ov66_02258918[v4].unk_00;
                            param0->unk_18 = 0;
                        }

                        break;
                    }
                }
            }
        } else {
            if (param0->unk_14 != 5) {
                param0->unk_14 = 5;
                param0->unk_18 = 0;
            }

            if (param0->unk_18 >= 120) {
                param0->unk_14 = 0;
                param0->unk_00 = 0;
            }
        }

        param0->unk_18++;
    }
}

static u32 ov66_02230A64(const UnkStruct_ov66_022309A4 *param0)
{
    return param0->unk_18;
}

static int ov66_02230A68(const UnkStruct_ov66_022309A4 *param0)
{
    return param0->unk_14;
}

static void ov66_02230A6C(UnkStruct_ov66_02230A6C *param0, const SaveData *param1)
{
    int v0;

    for (v0 = 0; v0 < (12 + 1); v0++) {
        param0->unk_34[v0] = 24;
        param0->unk_00[v0] = DWC_LOBBY_INVALID_USER_ID;
    }

    param0->unk_41 = 0;
    param0->unk_42 = 0;
    param0->unk_44 = param1;

    ov66_02230BCC(param0);
}

static void ov66_02230A9C(UnkStruct_ov66_02230A6C *param0, int param1, s32 param2)
{
    ov66_02230BE0(param0);

    if (((param0->unk_42 + 1) % (12 + 1)) == param0->unk_41) {
        ov66_02230B28(param0);
    }

    param0->unk_34[param0->unk_42] = param1;
    param0->unk_00[param0->unk_42] = param2;
    param0->unk_42 = (param0->unk_42 + 1) % (12 + 1);

    ov66_02230BCC(param0);
}

static BOOL ov66_02230AF8(UnkStruct_ov66_02230A6C *param0, s32 param1, s32 param2)
{
    int v0;
    BOOL v1 = 0;

    ov66_02230BE0(param0);

    for (v0 = 0; v0 < (12 + 1); v0++) {
        if (param0->unk_00[v0] == param1) {
            param0->unk_00[v0] = param2;
            v1 = 1;
        }
    }

    ov66_02230BCC(param0);

    return v1;
}

static int ov66_02230B28(UnkStruct_ov66_02230A6C *param0)
{
    u8 v0;

    ov66_02230BE0(param0);

    if (param0->unk_42 == param0->unk_41) {
        return 24;
    }

    v0 = param0->unk_34[param0->unk_41];

    param0->unk_34[param0->unk_41] = 24;
    param0->unk_00[param0->unk_42] = DWC_LOBBY_INVALID_USER_ID;
    param0->unk_41 = (param0->unk_41 + 1) % (12 + 1);

    ov66_02230BCC(param0);

    return v0;
}

static int ov66_02230B78(UnkStruct_ov66_02230A6C *param0, u32 param1)
{
    s32 v0;

    GF_ASSERT(param1 < 12);

    ov66_02230BE0(param0);

    param1++;
    v0 = param0->unk_42 - param1;

    if (v0 < 0) {
        v0 += (12 + 1);
    }

    return param0->unk_34[v0];
}

static s32 ov66_02230BA4(UnkStruct_ov66_02230A6C *param0, u32 param1)
{
    s32 v0;

    GF_ASSERT(param1 < 12);

    ov66_02230BE0(param0);

    param1++;
    v0 = param0->unk_42 - param1;

    if (v0 < 0) {
        v0 += (12 + 1);
    }

    return param0->unk_00[v0];
}

static void ov66_02230BCC(UnkStruct_ov66_02230A6C *param0)
{
    param0->unk_48 = SaveData_CalculateChecksum(param0->unk_44, param0, (sizeof(UnkStruct_ov66_02230A6C) - 8));
}

static void ov66_02230BE0(UnkStruct_ov66_02230A6C *param0)
{
    u32 v0;

    v0 = SaveData_CalculateChecksum(param0->unk_44, param0, (sizeof(UnkStruct_ov66_02230A6C) - 8));

    if (v0 != param0->unk_48) {
        GF_ASSERT(0);
        param0->unk_4A = 1;
    }
}

static BOOL ov66_02230C04(const UnkStruct_ov66_02230A6C *param0)
{
    return param0->unk_4A;
}

static u32 ov66_02230C0C(u32 param0)
{
    int v0;

    for (v0 = 0; v0 < 16; v0++) {
        if (Unk_ov66_02258974[v0].unk_00 == param0) {
            return v0;
        }
    }

    return 16;
}

static u32 ov66_02230C2C(u32 param0)
{
    if (param0 < 16) {
        return Unk_ov66_02258974[param0].unk_00;
    }

    return 0xffff;
}
