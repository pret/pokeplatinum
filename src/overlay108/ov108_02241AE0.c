#include "overlay108/ov108_02241AE0.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_020304A0_decl.h"
#include "struct_decls/struct_020305B8_decl.h"
#include "struct_decls/struct_0203068C_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_defs/struct_02013A04_t.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02081CF4.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay104/ov104_0223BCBC.h"
#include "overlay104/struct_ov104_02238240.h"
#include "overlay108/ov108_02243030.h"
#include "overlay108/ov108_0224351C.h"
#include "overlay108/ov108_02243630.h"
#include "overlay108/struct_ov108_02241DB0_decl.h"
#include "overlay108/struct_ov108_02243030.h"
#include "overlay108/struct_ov108_02243594_decl.h"

#include "cell_actor.h"
#include "communication_system.h"
#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "game_overlay.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "party.h"
#include "pokemon.h"
#include "save_player.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "touch_screen.h"
#include "trainer_info.h"
#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_0200A784.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0201DBEC.h"
#include "unk_02030494.h"
#include "unk_0203061C.h"
#include "unk_020363E8.h"
#include "unk_020393C8.h"
#include "unk_0209BA80.h"

FS_EXTERN_OVERLAY(overlay104);

static const u8 Unk_ov108_0224368F[8][2] = {
    { 0x14, 0x0 },
    { 0x10, 0x0 },
    { 0x8, 0x0 },
    { 0x4, 0x0 },
    { 0x3, 0x0 },
    { 0x2, 0x0 },
    { 0x1, 0x0 },
    { 0x0, 0x0 }
};

typedef struct {
    u8 unk_00_0 : 1;
    u8 unk_00_1 : 1;
    u8 unk_00_2 : 1;
    u8 unk_00_3 : 1;
    u8 unk_00_4 : 1;
    u8 unk_00_5 : 1;
    u8 unk_00_6 : 1;
    u8 unk_00_7 : 1;
} UnkStruct_ov108_02243718;

static const UnkStruct_ov108_02243718 Unk_ov108_02243718[] = {
    { 0x0, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0 },
    { 0x1, 0x0, 0x1, 0x0, 0x0, 0x0, 0x1, 0x0 },
    { 0x1, 0x0, 0x1, 0x0, 0x0, 0x0, 0x1, 0x0 },
    { 0x1, 0x0, 0x1, 0x0, 0x0, 0x0, 0x1, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x1, 0x1, 0x1, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x1, 0x1, 0x1, 0x0 },
    { 0x1, 0x1, 0x1, 0x0, 0x0, 0x0, 0x1, 0x0 },
    { 0x0, 0x0, 0x0, 0x1, 0x1, 0x1, 0x1, 0x0 },
    { 0x0, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0 },
    { 0x0, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0 },
    { 0x1, 0x0, 0x1, 0x0, 0x0, 0x0, 0x1, 0x0 },
    { 0x1, 0x0, 0x1, 0x0, 0x0, 0x0, 0x1, 0x0 },
    { 0x1, 0x0, 0x1, 0x0, 0x0, 0x0, 0x1, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x1, 0x1, 0x1, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x1, 0x1, 0x1, 0x0 },
    { 0x1, 0x1, 0x1, 0x0, 0x0, 0x0, 0x1, 0x0 },
    { 0x0, 0x0, 0x0, 0x1, 0x1, 0x1, 0x1, 0x0 },
    { 0x0, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0 },
    { 0x0, 0x1, 0x1, 0x0, 0x0, 0x0, 0x1, 0x0 },
    { 0x0, 0x1, 0x1, 0x0, 0x0, 0x0, 0x1, 0x0 },
    { 0x0, 0x1, 0x1, 0x0, 0x0, 0x0, 0x1, 0x0 },
    { 0x0, 0x1, 0x1, 0x0, 0x0, 0x0, 0x1, 0x0 },
    { 0x0, 0x0, 0x0, 0x1, 0x0, 0x1, 0x1, 0x0 },
    { 0x0, 0x0, 0x0, 0x1, 0x0, 0x1, 0x1, 0x0 },
    { 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0 },
    { 0x1, 0x1, 0x1, 0x0, 0x0, 0x0, 0x1, 0x0 },
    { 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x1, 0x1, 0x1, 0x0 },
    { 0x0, 0x0, 0x0, 0x1, 0x1, 0x1, 0x1, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x1, 0x1, 0x1, 0x0 },
    { 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, 0x0 }
};

typedef struct {
    u8 unk_00_0 : 1;
    u8 unk_00_1 : 1;
    u8 unk_00_2 : 1;
    u8 unk_00_3 : 1;
    u8 unk_00_4 : 1;
    u8 unk_00_5 : 1;
    u8 unk_00_6 : 1;
    u8 unk_00_7 : 1;
} UnkStruct_ov108_02243680;

static const UnkStruct_ov108_02243680 Unk_ov108_02243680[7] = {
    { 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0, 0x0 },
    { 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0, 0x0 },
    { 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0, 0x0 },
    { 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0, 0x0 },
    { 0x1, 0x0, 0x1, 0x0, 0x1, 0x0, 0x0, 0x0 },
    { 0x0, 0x1, 0x0, 0x1, 0x0, 0x1, 0x0, 0x0 },
    { 0x0, 0x1, 0x0, 0x1, 0x0, 0x1, 0x0, 0x0 }
};

static const u8 Unk_ov108_022436B0[][4] = {
    { 0xF, 0xF, 0x28, 0x1E },
    { 0x23, 0x14, 0x1E, 0xF },
    { 0x1E, 0x1E, 0x23, 0x5 },
    { 0x19, 0x28, 0x1E, 0x5 },
    { 0xA, 0x4B, 0xA, 0x5 }
};

static const u8 Unk_ov108_0224367C[] = {
    0x15,
    0x10,
    0xA,
    0x5
};

struct UnkStruct_ov108_02241DB0_t {
    OverlayManager *unk_00;
    UnkStruct_0203068C *unk_04;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
    u8 unk_0F;
    u8 unk_10;
    u8 unk_11;
    u8 unk_12;
    u8 unk_13_0 : 1;
    u8 unk_13_1 : 7;
    u8 unk_14;
    u8 unk_15;
    u16 unk_16;
    int unk_18;
    u8 *unk_1C;
    u8 *unk_20;
    u16 *unk_24;
    u16 unk_28;
    u16 unk_2A;
    u8 unk_2C;
    u8 unk_2D;
    u8 unk_2E;
    u8 unk_2F_0 : 1;
    u8 unk_2F_1 : 7;
    u8 unk_30[4];
    u8 unk_34[16];
    u8 unk_44[32];
    u8 unk_64;
    MessageLoader *unk_68;
    StringTemplate *unk_6C;
    Strbuf *unk_70;
    Strbuf *unk_74;
    Strbuf *unk_78[2];
    u16 unk_80[8];
    BGL *unk_90;
    Window unk_94[2];
    UnkStruct_02081CF4 unk_B4;
    UIControlData *unk_C0;
    ResourceMetadata unk_C4[2];
    PaletteData *unk_D4;
    Options *unk_D8;
    SaveData *unk_DC;
    UnkStruct_020304A0 *unk_E0;
    UnkStruct_020305B8 *unk_E4;
    UnkStruct_ov108_02243030 unk_E8;
    UnkStruct_ov108_02243594 *unk_338;
    UnkStruct_ov108_02243594 *unk_33C[16];
    UnkStruct_ov108_02243594 *unk_37C[4];
    UnkStruct_ov108_02243594 *unk_38C[4];
    UnkStruct_ov108_02243594 *unk_39C[4];
    UnkStruct_ov108_02243594 *unk_3AC[4];
    UnkStruct_ov108_02243594 *unk_3BC;
    int *unk_3C0;
    u16 *unk_3C4;
    Party *unk_3C8;
    Party *unk_3CC;
    NARC *unk_3D0;
    u16 unk_3D4[40];
    u8 unk_424;
    u8 unk_425;
    u16 unk_426;
    u16 unk_428;
    u32 unk_42C;
};

int ov108_02241AE0(OverlayManager *param0, int *param1);
int ov108_02241C38(OverlayManager *param0, int *param1);
int ov108_02241D70(OverlayManager *param0, int *param1);
static BOOL ov108_02241DB0(UnkStruct_ov108_02241DB0 *param0);
static BOOL ov108_02241F28(UnkStruct_ov108_02241DB0 *param0);
static BOOL ov108_02242104(UnkStruct_ov108_02241DB0 *param0);
static BOOL ov108_02242198(UnkStruct_ov108_02241DB0 *param0);
static BOOL ov108_022421F0(UnkStruct_ov108_02241DB0 *param0);
static void ov108_02242238(UnkStruct_ov108_02241DB0 *param0);
static void ov108_02242344(void);
static void ov108_0224237C(UnkStruct_ov108_02241DB0 *param0);
static void ov108_022426B0(UnkStruct_ov108_02241DB0 *param0);
static void ov108_02242658(UnkStruct_ov108_02241DB0 *param0);
static void ov108_022426D4(BGL *param0);
static void ov108_02242708(void *param0);
static void ov108_02242740(void);
static void ov108_02242760(BGL *param0);
static void ov108_02242828(UnkStruct_ov108_02241DB0 *param0, u32 param1);
static void ov108_02242884(UnkStruct_ov108_02241DB0 *param0, u32 param1);
static void ov108_022428C0(void);
static void ov108_022428F4(UnkStruct_ov108_02241DB0 *param0, u32 param1);
static void ov108_0224295C(UnkStruct_ov108_02241DB0 *param0, int *param1, int param2);
static void ov108_02242964(UnkStruct_ov108_02241DB0 *param0, int param1);
static void ov108_022429C8(UnkStruct_ov108_02241DB0 *param0, u8 param1);
static void ov108_022429FC(UnkStruct_ov108_02241DB0 *param0);
static u8 ov108_02242A04(u8 param0, u8 param1);
static u16 ov108_02242A14(UnkStruct_ov108_02241DB0 *param0);
BOOL ov108_02242A38(UnkStruct_ov108_02241DB0 *param0, u16 param1, u16 param2);
void ov108_02242A7C(UnkStruct_ov108_02241DB0 *param0, u16 param1);
void ov108_02242AB0(int param0, int param1, void *param2, void *param3);
void ov108_02242AE8(UnkStruct_ov108_02241DB0 *param0, u16 param1, u16 param2);
void ov108_02242B24(int param0, int param1, void *param2, void *param3);
void ov108_02242B74(UnkStruct_ov108_02241DB0 *param0, u16 param1);
void ov108_02242B84(int param0, int param1, void *param2, void *param3);
static void ov108_02242BA0(UnkStruct_ov108_02241DB0 *param0, u8 param1);
static u8 ov108_02242EF4(UnkStruct_ov108_02241DB0 *param0, u8 param1);
static void ov108_02242BF0(UnkStruct_ov108_02241DB0 *param0);
static void ov108_02242D5C(UnkStruct_ov108_02241DB0 *param0);
static void ov108_02242E10(UnkStruct_ov108_02241DB0 *param0);
static void ov108_02242F38(UnkStruct_ov108_02241DB0 *param0);
static BOOL ov108_02242FE8(UnkStruct_ov108_02241DB0 *param0);
static void ov108_02243008(UnkStruct_ov108_02241DB0 *param0);
static u16 ov108_02242B1C(UnkStruct_ov108_02241DB0 *param0);

static u8 Unk_ov108_022437A0;
static u8 Unk_ov108_022437A1;

static const TouchScreenHitTable Unk_ov108_02243687[] = {
    { 0xfe, 0x80, 0x60, 0x20 },
    { 0xff, 0x0, 0x0, 0x0 }
};

int ov108_02241AE0(OverlayManager *param0, int *param1)
{
    int v0;
    UnkStruct_ov108_02241DB0 *v1;
    UnkStruct_ov104_02238240 *v2;

    Overlay_LoadByID(FS_OVERLAY_ID(overlay104), 2);
    ov108_02242344();
    Heap_Create(3, 103, 0x20000);

    v1 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov108_02241DB0), 103);
    memset(v1, 0, sizeof(UnkStruct_ov108_02241DB0));

    v1->unk_90 = sub_02018340(103);
    v1->unk_00 = param0;

    v2 = (UnkStruct_ov104_02238240 *)OverlayManager_Args(param0);

    v1->unk_DC = v2->unk_00;
    v1->unk_E0 = sub_020304A0(v1->unk_DC);
    v1->unk_E4 = sub_020305B8(v1->unk_DC);
    v1->unk_09 = v2->unk_04;
    v1->unk_2A = v2->unk_1E;
    v1->unk_28 = v2->unk_1C;
    v1->unk_426 = v2->unk_18;
    v1->unk_12 = v2->unk_07;
    v1->unk_3C4 = &v2->unk_38;
    v1->unk_D8 = SaveData_Options(v1->unk_DC);
    v1->unk_3C8 = v2->unk_30;
    v1->unk_3CC = v2->unk_34;
    v1->unk_0E = 0xff;
    v1->unk_04 = sub_0203068C(v1->unk_DC);
    v1->unk_3C0 = v2->unk_08;
    v1->unk_1C = v2->unk_0C;
    v1->unk_20 = v2->unk_10;
    v1->unk_24 = v2->unk_14;
    v1->unk_18 = (30 * 30);
    v1->unk_0C = v2->unk_40;

    for (v0 = 0; v0 < 32; v0++) {
        v1->unk_44[v0] = 32;
    }

    v1->unk_2C = 4;
    v1->unk_2D = 4;
    v1->unk_2E = (4 * 4);
    v1->unk_424 = 0;

    (*v1->unk_24) = ov108_02242B1C(v1);

    v1->unk_16 = (LCRNG_Next() % (4 * 4));

    ov108_0224237C(v1);

    if (ov104_0223C000(v1->unk_09) == 1) {
        sub_0209BA80(v1);
    }

    (*param1) = 0;

    Unk_ov108_022437A0 = 0;
    Unk_ov108_022437A1 = 0;

    return 1;
}

int ov108_02241C38(OverlayManager *param0, int *param1)
{
    UnkStruct_ov108_02241DB0 *v0 = OverlayManager_Data(param0);

    if (v0->unk_0E != 0xff) {
        switch (*param1) {
        case 1:
            ov108_02243008(v0);
            v0->unk_14 = ov108_02242A04(v0->unk_2E, v0->unk_0E);
            ov108_0224295C(v0, param1, 2);
            break;
        }
    }

    switch (*param1) {
    case 0:
        if (ov108_02241DB0(v0) == 1) {
            ov108_0224295C(v0, param1, 1);
        }
        break;
    case 1:
        if (ov108_02241F28(v0) == 1) {
            if (v0->unk_2F_1 == 1) {
                ov108_0224295C(v0, param1, 2);
            } else {
                if (ov104_0223C000(v0->unk_09) == 1) {
                    ov108_0224295C(v0, param1, 3);
                } else {
                    ov108_0224295C(v0, param1, 4);
                }
            }
        }
        break;
    case 2:
        if (ov108_02242104(v0) == 1) {
            ov108_0224295C(v0, param1, 3);
        }
        break;
    case 3:
        if (ov108_02242198(v0) == 1) {
            ov108_0224295C(v0, param1, 4);
        }
        break;
    case 4:
        if (ov108_022421F0(v0) == 1) {
            return 1;
        }
        break;
    }

    v0->unk_13_1++;

    if (v0->unk_13_1 >= 4) {
        v0->unk_13_1 = 0;
        v0->unk_13_0 ^= 1;
    }

    CellActorCollection_Update(v0->unk_E8.unk_00);

    return 0;
}

int ov108_02241D70(OverlayManager *param0, int *param1)
{
    int v0;
    UnkStruct_ov108_02241DB0 *v1 = OverlayManager_Data(param0);

    *(v1->unk_3C4) = v1->unk_0D;

    sub_0201DC3C();
    ov108_02242238(v1);
    OverlayManager_FreeData(param0);
    SetMainCallback(NULL, NULL);
    Heap_Destroy(103);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay104));

    return 1;
}

static BOOL ov108_02241DB0(UnkStruct_ov108_02241DB0 *param0)
{
    switch (param0->unk_08) {
    case 0:
        if (ov104_0223C000(param0->unk_09) == 1) {
            sub_020365F4();
            CommTiming_StartSync(199);
            param0->unk_08++;
        } else {
            param0->unk_08++;
        }
        break;
    case 1:
        if (ov104_0223C000(param0->unk_09) == 1) {
            if (CommTiming_IsSyncState(199) == 1) {
                sub_020365F4();
                param0->unk_08++;
            }
        } else {
            param0->unk_08++;
        }
        break;
    case 2:
        ov108_02242BF0(param0);
        param0->unk_08++;
        break;
    case 3:
        ov108_02242D5C(param0);
        param0->unk_08++;
        break;
    case 4:
        ov108_02242E10(param0);
        param0->unk_08++;
        break;
    case 5:
        if (ov104_0223C000(param0->unk_09) == 1) {
            sub_020365F4();
            CommTiming_StartSync(201);
            param0->unk_08++;
        } else {
            param0->unk_08++;
        }
        break;
    case 6:
        if (ov104_0223C000(param0->unk_09) == 1) {
            if (CommTiming_IsSyncState(201) == 1) {
                sub_020365F4();
                param0->unk_08++;
            }
        } else {
            param0->unk_08++;
        }
        break;
    case 7:
        if (ov104_0223C000(param0->unk_09) == 1) {
            if (ov108_02242A38(param0, 30, 0) == 1) {
                param0->unk_08++;
            }
        } else {
            sub_0200F174(0, 1, 1, 0x0, 6, 1 * 3, 103);
            param0->unk_08++;
        }
        break;
    case 8:
        if (ov104_0223C000(param0->unk_09) == 1) {
            if (param0->unk_0F >= 2) {
                param0->unk_0F = 0;
                sub_0200F174(0, 1, 1, 0x0, 6, 1 * 3, 103);
                param0->unk_08++;
            }
        } else {
            param0->unk_08++;
        }
        break;
    case 9:
        if (ScreenWipe_Done() == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov108_02241F28(UnkStruct_ov108_02241DB0 *param0)
{
    u16 v0, v1;
    u16 v2;
    int v3;
    u32 v4, v5;
    u16 v6[4];

    switch (param0->unk_08) {
    case 0:
        param0->unk_0B = 0;
        param0->unk_0D = param0->unk_16;
        ov108_022429C8(param0, param0->unk_0D);
        param0->unk_08 = 1;
        break;
    case 1:
        param0->unk_0B++;

        if (param0->unk_0B >= 10) {
            param0->unk_0B = 0;
            param0->unk_08 = 2;
        }
        break;
    case 2:
        for (v3 = 0; v3 < (4 * 4); v3++) {
            if (param0->unk_33C[v3] != NULL) {
                ov108_022435F4(param0->unk_33C[v3], 32);
                ov108_022435A8(param0->unk_33C[v3], 1);
            }
        }

        ov108_02242884(param0, 3);
        Sound_PlayEffect(1545);

        param0->unk_0B = 24;
        param0->unk_08 = 3;
        break;
    case 3:
        param0->unk_0B--;

        if (param0->unk_0B > 0) {
            break;
        }

        for (v3 = 0; v3 < (4 * 4); v3++) {
            if (param0->unk_33C[v3] != NULL) {
                ov108_022435F4(param0->unk_33C[v3], 33);
            }
        }

        Sound_PlayEffect(1545);
        param0->unk_0B = 24;
        param0->unk_08 = 4;
        break;
    case 4:
        param0->unk_0B--;

        if (param0->unk_0B > 0) {
            break;
        }

        for (v3 = 0; v3 < (4 * 4); v3++) {
            if (param0->unk_33C[v3] != NULL) {
                ov108_022435F4(param0->unk_33C[v3], 34);
            }
        }

        Sound_PlayEffect(1545);

        param0->unk_0B = 24;
        param0->unk_08 = 5;
        break;
    case 5:
        param0->unk_0B--;

        if (param0->unk_0B > 0) {
            break;
        }

        for (v3 = 0; v3 < (4 * 4); v3++) {
            if (param0->unk_33C[v3] != NULL) {
                ov108_022435F4(param0->unk_33C[v3], param0->unk_34[v3]);
            }
        }

        ov108_022435A8(param0->unk_338, 1);
        Sound_PlayEffect(1572);
        ov108_022435F4(param0->unk_3BC, 0);
        param0->unk_08 = 6;
        break;
    case 6:
        ov108_02242964(param0, gCoreSys.pressedKeys);

        if (CommSys_CurNetId() == 0) {
            if (param0->unk_18 > 0) {
                param0->unk_18--;
            }

            if (param0->unk_18 == 0) {
                (void)0;
            }
        }

        if ((ov108_02242FE8(param0) == 1) || (param0->unk_18 == 0)) {
            ov108_022429FC(param0);

            if (ov104_0223C000(param0->unk_09) == 0) {
                param0->unk_08 = 7;
                break;
            } else {
                param0->unk_2F_1 = 1;
                return 1;
            }
        }
        break;
    case 7:
        ov108_02242BA0(param0, param0->unk_0D);
        param0->unk_0B = 30;
        param0->unk_08 = 8;
        break;
    case 8:
        param0->unk_0B--;

        if (param0->unk_0B == 0) {
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov108_02242104(UnkStruct_ov108_02241DB0 *param0)
{
    switch (param0->unk_08) {
    case 0:
        if (ov108_02242A38(param0, 31, param0->unk_14) == 1) {
            param0->unk_2F_1 = 0;
            param0->unk_08++;
        }
        break;
    case 1:
        param0->unk_08++;
        break;
    case 2:
        if (param0->unk_0E == 0xff) {
            break;
        }

        param0->unk_0F = 0;
        ov108_02242BA0(param0, param0->unk_0E);
        param0->unk_08++;
        break;
    case 3:
        sub_020365F4();
        CommTiming_StartSync(151);
        param0->unk_08++;
        break;
    case 4:
        if (CommTiming_IsSyncState(151) == 1) {
            sub_020365F4();
            CommTool_Init(103);
            param0->unk_0E = 0xff;
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov108_02242198(UnkStruct_ov108_02241DB0 *param0)
{
    switch (param0->unk_08) {
    case 0:
        param0->unk_0B = 15;
        param0->unk_08++;
        break;
    case 1:
        if (param0->unk_0B > 0) {
            param0->unk_0B--;
        }

        if (param0->unk_0B == 0) {
            sub_020365F4();
            CommTiming_StartSync(152);
            param0->unk_08++;
        }
        break;
    case 2:
        if (CommTiming_IsSyncState(152) == 1) {
            sub_020365F4();
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov108_022421F0(UnkStruct_ov108_02241DB0 *param0)
{
    int v0;

    switch (param0->unk_08) {
    case 0:
        sub_0200F174(0, 0, 0, 0x0, 6, 1, 103);
        param0->unk_08++;
        break;
    case 1:
        if (ScreenWipe_Done() == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static void ov108_02242238(UnkStruct_ov108_02241DB0 *param0)
{
    u8 v0;
    int v1;

    if (param0->unk_338 != NULL) {
        ov108_02243594(param0->unk_338);
    }

    if (param0->unk_3BC != NULL) {
        ov108_02243594(param0->unk_3BC);
    }

    for (v1 = 0; v1 < (4 * 4); v1++) {
        if (param0->unk_33C[v1] != NULL) {
            ov108_02243594(param0->unk_33C[v1]);
        }
    }

    v0 = ov104_0223BD70(param0->unk_09, 1);

    for (v1 = 0; v1 < v0; v1++) {
        if (param0->unk_37C[v1] != NULL) {
            ov108_02243594(param0->unk_37C[v1]);
        }

        if (param0->unk_38C[v1] != NULL) {
            ov108_02243594(param0->unk_38C[v1]);
        }

        if (param0->unk_39C[v1] != NULL) {
            ov108_02243594(param0->unk_39C[v1]);
        }

        if (param0->unk_3AC[v1] != NULL) {
            ov108_02243594(param0->unk_3AC[v1]);
        }
    }

    sub_02039794();
    sub_02002FA0(param0->unk_D4, 2);
    sub_02002FA0(param0->unk_D4, 0);
    sub_02002F54(param0->unk_D4);

    param0->unk_D4 = NULL;
    ov108_02243194(&param0->unk_E8);

    MessageLoader_Free(param0->unk_68);
    StringTemplate_Free(param0->unk_6C);
    Strbuf_Free(param0->unk_70);
    Strbuf_Free(param0->unk_74);

    for (v1 = 0; v1 < 2; v1++) {
        Strbuf_Free(param0->unk_78[v1]);
    }

    ov108_02243660(param0->unk_94);
    ov108_022426D4(param0->unk_90);

    NARC_dtor(param0->unk_3D0);
    return;
}

static void ov108_02242344(void)
{
    SetMainCallback(NULL, NULL);
    SetHBlankCallback(NULL, NULL);

    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    return;
}

static void ov108_0224237C(UnkStruct_ov108_02241DB0 *param0)
{
    u8 v0;
    u16 v1, v2, v3, v4;
    int v5, v6;
    Window *v7;
    Pokemon *v8;

    param0->unk_3D0 = NARC_ctor(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, 103);

    ov108_02242658(param0);
    ov108_022426B0(param0);

    param0->unk_68 = MessageLoader_Init(1, 26, 536, 103);
    param0->unk_6C = StringTemplate_Default(103);
    param0->unk_70 = Strbuf_Init(600, 103);
    param0->unk_74 = Strbuf_Init(600, 103);

    for (v5 = 0; v5 < 2; v5++) {
        param0->unk_78[v5] = Strbuf_Init(32, 103);
    }

    Font_LoadTextPalette(0, 13 * 32, 103);
    Font_LoadScreenIndicatorsPalette(0, 12 * 32, 103);

    ov108_02243630(param0->unk_90, param0->unk_94);
    param0->unk_338 = ov108_0224351C(&param0->unk_E8, 1, 1, 1, 35, 68, 36, 0, 2, 0);
    ov108_022435A8(param0->unk_338, 0);

    for (v5 = 0; v5 < (4 * 4); v5++) {
        param0->unk_33C[v5] = ov108_0224351C(&param0->unk_E8, 1, 1, 1, 32, 68 + (40 * (v5 % 4)), 36 + (40 * (v5 / 4)), 1, 2, 0);
        ov108_022435A8(param0->unk_33C[v5], 0);
    }

    v0 = ov104_0223BD70(param0->unk_09, 1);

    if (ov104_0223C000(param0->unk_09) == 0) {
        v3 = 46;
        v4 = 50;
    } else {
        v3 = 22;
        v4 = 26;
    }

    for (v5 = 0; v5 < v0; v5++) {
        param0->unk_39C[v5] = ov108_0224351C(&param0->unk_E8, 2, 2, 2, 0, 24, v4 + (40 * v5), 0, 2, 0);
        param0->unk_3AC[v5] = ov108_0224351C(&param0->unk_E8, 2, 2, 2, 0, 246, v4 + (40 * v5), 0, 2, 0);
        param0->unk_37C[v5] = ov108_0224351C(&param0->unk_E8, 3 + v5, 3, 3, 1, 16, v3 + (40 * v5), 1, 2, 0);
        param0->unk_38C[v5] = ov108_0224351C(&param0->unk_E8, 7 + v5, 3, 3, 1, 238, v3 + (40 * v5), 1, 2, 0);

        ov108_02243610(param0->unk_37C[v5], Party_GetPokemonBySlotIndex(param0->unk_3C8, v5));
        ov108_02243610(param0->unk_38C[v5], Party_GetPokemonBySlotIndex(param0->unk_3CC, v5));

        ov108_02243624(param0->unk_37C[v5], 0);
        ov108_02243624(param0->unk_38C[v5], 0);
    }

    ov108_02242F38(param0);
    param0->unk_3BC = ov108_0224351C(&param0->unk_E8, 0, 0, 0, 2, 128, 96, 0, 0, 1);

    if (CommSys_IsInitialized()) {
        sub_0200966C(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_32K);
        sub_02009704(NNS_G2D_VRAM_TYPE_2DMAIN);
        sub_02039734();
    }

    SetMainCallback(ov108_02242708, (void *)param0);
    return;
}

static void ov108_02242658(UnkStruct_ov108_02241DB0 *param0)
{
    ov108_02242740();
    ov108_02242760(param0->unk_90);

    param0->unk_D4 = sub_02002F38(103);

    sub_02002F70(param0->unk_D4, 2, (32 * 16), 103);
    sub_02002F70(param0->unk_D4, 0, (32 * 16), 103);

    ov108_02242828(param0, 3);
    ov108_022428C0();
    ov108_022428F4(param0, 4);

    return;
}

static void ov108_022426B0(UnkStruct_ov108_02241DB0 *param0)
{
    ov108_02243030(&param0->unk_E8, param0->unk_3C8, param0->unk_3CC, ov104_0223C000(param0->unk_09));
    return;
}

static void ov108_022426D4(BGL *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);

    sub_02019044(param0, 3);
    sub_02019044(param0, 1);
    sub_02019044(param0, 4);
    Heap_FreeToHeap(param0);

    return;
}

static void ov108_02242708(void *param0)
{
    UnkStruct_ov108_02241DB0 *v0 = param0;

    if (v0->unk_D4 != NULL) {
        sub_02003694(v0->unk_D4);
    }

    sub_0201C2B8(v0->unk_90);
    sub_0201DCAC();
    sub_0200A858();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov108_02242740(void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_C,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_32_H,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_01_AB,
        GX_VRAM_TEXPLTT_01_FG
    };

    GXLayers_SetBanks(&v0);
    return;
}

static void ov108_02242760(BGL *param0)
{
    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
        };

        sub_02018368(&v0);
    }

    {
        UnkStruct_ov97_0222DB78 v1 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0000,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 1, &v1, 0);
        sub_02019690(1, 32, 0, 103);
        sub_02019EBC(param0, 1);
    }

    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x2000,
            GX_BG_CHARBASE_0x0c000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0, 3, &v2, 0);
        sub_02019EBC(param0, 3);
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x3000,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 4, &v3, 0);
        sub_02019EBC(param0, 4);
    }

    G2_SetBG0Priority(0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);

    return;
}

static void ov108_02242828(UnkStruct_ov108_02241DB0 *param0, u32 param1)
{
    u32 v0;

    sub_020070E8(param0->unk_3D0, 120, param0->unk_90, param1, 0, 0, 1, 103);

    if (ov104_0223C000(param0->unk_09) == 0) {
        v0 = 116;
    } else {
        v0 = 118;
    }

    sub_0200710C(param0->unk_3D0, v0, param0->unk_90, param1, 0, 0, 1, 103);
    return;
}

static void ov108_02242884(UnkStruct_ov108_02241DB0 *param0, u32 param1)
{
    u32 v0;

    if (ov104_0223C000(param0->unk_09) == 0) {
        v0 = 117;
    } else {
        v0 = 119;
    }

    sub_0200710C(param0->unk_3D0, v0, param0->unk_90, param1, 0, 0, 1, 103);
    return;
}

static void ov108_022428C0(void)
{
    void *v0;
    NNSG2dPaletteData *v1;

    v0 = sub_02006F88(150, 167, &v1, 103);

    DC_FlushRange(v1->pRawData, (sizeof(u16) * 16 * 7));
    GX_LoadBGPltt(v1->pRawData, 0, (sizeof(u16) * 16 * 7));
    Heap_FreeToHeap(v0);

    return;
}

static void ov108_022428F4(UnkStruct_ov108_02241DB0 *param0, u32 param1)
{
    sub_020070E8(param0->unk_3D0, 122, param0->unk_90, param1, 0, 0, 1, 103);
    sub_02007130(param0->unk_3D0, 168, 4, 0, (sizeof(u16) * 16 * 2), 103);
    sub_0200710C(param0->unk_3D0, 121, param0->unk_90, param1, 0, 0, 1, 103);

    return;
}

static void ov108_0224295C(UnkStruct_ov108_02241DB0 *param0, int *param1, int param2)
{
    param0->unk_08 = 0;
    *param1 = param2;
    return;
}

static void ov108_02242964(UnkStruct_ov108_02241DB0 *param0, int param1)
{
    u8 v0;

    v0 = *param0->unk_1C;
    param0->unk_10++;

    if (param0->unk_10 >= Unk_ov108_0224368F[v0][0]) {
        param0->unk_10 = 0;

        if (param0->unk_0C == 1) {
            param0->unk_0D = (LCRNG_Next() % (4 * 4));
        } else {
            param0->unk_0D++;
        }

        Sound_PlayEffect(1509);

        if (param0->unk_0D >= param0->unk_2E) {
            param0->unk_0D = 0;
        }

        ov108_022429C8(param0, param0->unk_0D);
    }

    return;
}

static void ov108_022429C8(UnkStruct_ov108_02241DB0 *param0, u8 param1)
{
    ov108_022435B4(param0->unk_338, 68 + (40 * (param1 % 4)), 36 + (40 * (param1 / 4)));
    return;
}

static void ov108_022429FC(UnkStruct_ov108_02241DB0 *param0)
{
    param0->unk_14 = param0->unk_0D;
    return;
}

static u8 ov108_02242A04(u8 param0, u8 param1)
{
    if (param1 < param0) {
        return param1;
    }

    return param1 - param0;
}

static u16 ov108_02242A14(UnkStruct_ov108_02241DB0 *param0)
{
    u16 v0;

    v0 = param0->unk_28;

    if (ov104_0223C000(param0->unk_09) == 1) {
        if (param0->unk_426 > param0->unk_28) {
            v0 = param0->unk_426;
        }
    }

    return v0;
}

BOOL ov108_02242A38(UnkStruct_ov108_02241DB0 *param0, u16 param1, u16 param2)
{
    int v0, v1;

    switch (param1) {
    case 30:
        v1 = 71;
        ov108_02242A7C(param0, param1);
        break;
    case 31:
        v1 = 72;
        ov108_02242AE8(param0, param1, param2);
        break;
    case 32:
        v1 = 73;
        ov108_02242B74(param0, param1);
        break;
    }

    if (CommSys_SendData(v1, param0->unk_3D4, 40) == 1) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    return v0;
}

void ov108_02242A7C(UnkStruct_ov108_02241DB0 *param0, u16 param1)
{
    int v0, v1;
    TrainerInfo *v2;

    v1 = 0;
    v2 = SaveData_GetTrainerInfo(param0->unk_DC);

    param0->unk_3D4[v1] = param1;

    v1 += 1;
    v1 += 1;

    for (v0 = 0; v0 < (4 * 4); v0++) {
        param0->unk_3D4[v1 + v0] = param0->unk_34[v0];
    }

    v1 += (4 * 4);
    param0->unk_3D4[v1] = param0->unk_16;
    v1 += 1;

    return;
}

void ov108_02242AB0(int param0, int param1, void *param2, void *param3)
{
    int v0, v1;
    UnkStruct_ov108_02241DB0 *v2 = param3;
    const u16 *v3 = param2;

    v1 = 0;
    v2->unk_0F++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v1 += 1;
    v1 += 1;

    if (CommSys_CurNetId() != 0) {
        for (v0 = 0; v0 < (4 * 4); v0++) {
            v2->unk_34[v0] = (u8)v3[v1 + v0];
        }

        v1 += (4 * 4);
        v2->unk_16 = (u16)v3[v1];
        v1 += 1;
    }

    for (v0 = 0; v0 < (4 * 4); v0++) {
        (void)0;
    }

    return;
}

void ov108_02242AE8(UnkStruct_ov108_02241DB0 *param0, u16 param1, u16 param2)
{
    u8 v0;

    param0->unk_3D4[0] = param1;
    param0->unk_3D4[1] = param2;

    if (CommSys_CurNetId() == 0) {
        if (param0->unk_0E == 0xff) {
            param0->unk_0E = param2;
        }
    }

    param0->unk_3D4[2] = param0->unk_0E;
    param0->unk_3D4[3] = *param0->unk_24;

    return;
}

static u16 ov108_02242B1C(UnkStruct_ov108_02241DB0 *param0)
{
    return LCRNG_Next();
}

void ov108_02242B24(int param0, int param1, void *param2, void *param3)
{
    int v0, v1;
    UnkStruct_ov108_02241DB0 *v2 = param3;
    const u16 *v3 = param2;

    v1 = 0;
    v2->unk_0F++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v2->unk_425 = v3[1];

    if (CommSys_CurNetId() == 0) {
        if (v2->unk_0E != 0xff) {
            v2->unk_425 = 0;
        } else {
            v2->unk_0E = v2->unk_425 + v2->unk_2E;
        }
    } else {
        v2->unk_0E = v3[2];

        (*v2->unk_24) = v3[3];
    }

    return;
}

void ov108_02242B74(UnkStruct_ov108_02241DB0 *param0, u16 param1)
{
    param0->unk_3D4[0] = param1;

    if (param0->unk_0D == (param0->unk_2E - 1)) {
        param0->unk_3D4[1] = param0->unk_0D;
    } else {
        param0->unk_3D4[1] = param0->unk_0D;
    }

    return;
}

void ov108_02242B84(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov108_02241DB0 *v0 = param3;
    const u16 *v1 = param2;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v0->unk_424 = (u8)v1[1];
    return;
}

static void ov108_02242BA0(UnkStruct_ov108_02241DB0 *param0, u8 param1)
{
    int v0;
    u8 v1, v2, v3, v4;
    u16 v5[4];

    v2 = param0->unk_2E;
    v3 = ov108_02242A04(v2, param1);
    v4 = param0->unk_34[v3];

    (*param0->unk_20) = v4;

    for (v0 = 0; v0 < (4 * 4); v0++) {
        if (param0->unk_33C[v0] != NULL) {
            ov108_022435F4(param0->unk_33C[v0], v4);
        }
    }

    ov108_022429C8(param0, v3);
    Sound_PlayEffect(1507);

    return;
}

static void ov108_02242BF0(UnkStruct_ov108_02241DB0 *param0)
{
    int v0, v1, v2;
    u16 v3, v4, v5;
    u8 v6, v7;

    for (v0 = 0; v0 < (NELEMS(Unk_ov108_02243718)); v0++) {
        switch (param0->unk_2A) {
        case 0:
            v7 = Unk_ov108_02243718[v0].unk_00_0;
            break;
        case 1:
            v7 = Unk_ov108_02243718[v0].unk_00_1;
            break;
        case 2:
            v7 = Unk_ov108_02243718[v0].unk_00_2;
            break;
        case 3:
            v7 = Unk_ov108_02243718[v0].unk_00_3;
            break;
        case 4:
            v7 = Unk_ov108_02243718[v0].unk_00_4;
            break;
        case 5:
            v7 = Unk_ov108_02243718[v0].unk_00_5;
            break;
        default:
            v7 = Unk_ov108_02243718[v0].unk_00_6;
            break;
        }

        if (v7 == 1) {
            v6 = 0xff;

            switch (v0) {
            case 27:
                v6 = 0;
                break;
            case 24:
                v6 = 1;
                break;
            case 25:
                v6 = 2;
                break;
            case 26:
                v6 = 3;
                break;
            case 28:
                v6 = 4;
                break;
            case 29:
                v6 = 5;
                break;
            case 31:
                v6 = 6;
                break;
            }

            v5 = ov108_02242A14(param0);
            v4 = (v5 % 7);

            if (v5 >= 9999) {
                v4 = 6;
            }

            if (v6 != 0xff) {
                switch (v4) {
                case 0:
                    v7 = Unk_ov108_02243680[v6].unk_00_0;
                    break;
                case 1:
                    v7 = Unk_ov108_02243680[v6].unk_00_1;
                    break;
                case 2:
                    v7 = Unk_ov108_02243680[v6].unk_00_2;
                    break;
                case 3:
                    v7 = Unk_ov108_02243680[v6].unk_00_3;
                    break;
                case 4:
                    v7 = Unk_ov108_02243680[v6].unk_00_4;
                    break;
                case 5:
                    v7 = Unk_ov108_02243680[v6].unk_00_5;
                    break;
                case 6:
                case 7:
                    v7 = Unk_ov108_02243680[v6].unk_00_6;
                    break;
                default:
                    GF_ASSERT(0);
                    v7 = 1;
                    break;
                }
            } else {
                v7 = 1;
            }

            if (v7 == 1) {
                param0->unk_44[param0->unk_64] = v0;
                param0->unk_64++;
            }
        }
    }

    return;
}

static void ov108_02242D5C(UnkStruct_ov108_02241DB0 *param0)
{
    int v0, v1;

    for (v0 = 0; v0 < (NELEMS(Unk_ov108_0224367C)); v0++) {
        if (param0->unk_12 >= Unk_ov108_0224367C[v0]) {
            break;
        }
    }

    param0->unk_11 = v0;

    for (v1 = 0; v1 < param0->unk_64; v1++) {
        continue;
    }

    for (v0 = 0; v0 < param0->unk_64; v0++) {
        if (ov104_0223C148(param0->unk_44[v0]) == 0) {
            param0->unk_30[0]++;
        } else if (ov104_0223C148(param0->unk_44[v0]) == 1) {
            param0->unk_30[1]++;
        } else if (ov104_0223C148(param0->unk_44[v0]) == 2) {
            param0->unk_30[2]++;
        } else if (ov104_0223C148(param0->unk_44[v0]) == 3) {
            param0->unk_30[3]++;
        }
    }

    return;
}

static void ov108_02242E10(UnkStruct_ov108_02241DB0 *param0)
{
    int v0, v1, v2, v3;
    u16 v4, v5;
    u8 v6, v7;

    v6 = 0;

    for (v1 = 0; v1 < (4 * 4); v1++) {
        v7 = ov108_02242EF4(param0, param0->unk_11);
        v2 = 0;
        v3 = 0;
        v3 = param0->unk_30[v7];

        if (v7 == 0) {
            v2 = 0;
        } else if (v7 == 1) {
            v2 += param0->unk_30[0];
        } else if (v7 == 2) {
            v2 += param0->unk_30[0];
            v2 += param0->unk_30[1];
        } else if (v7 == 3) {
            v2 += param0->unk_30[0];
            v2 += param0->unk_30[1];
            v2 += param0->unk_30[2];
        }

        v4 = (LCRNG_Next() % v3);
        v4 += v2;
        v6 = v4;
        v0 = 0;

        while (TRUE) {
            if (v0 >= 50) {
                GF_ASSERT(0);
                param0->unk_34[v1] = 0;
                v0 = 0;
                break;
            }

            if (ov104_0223C148(param0->unk_44[v6]) == v7) {
                param0->unk_34[v1] = param0->unk_44[v6];
                v0 = 0;
                break;
            }

            v6++;
            v0++;

            if (v6 >= param0->unk_64) {
                v6 = 0;
            }

            if (v6 == v4) {
                v7++;

                if (v7 >= 4) {
                    v7 = 0;
                }
            }
        }
    }

    return;
}

static u8 ov108_02242EF4(UnkStruct_ov108_02241DB0 *param0, u8 param1)
{
    u8 v0, v1;
    u16 v2;

    v0 = 0;
    v2 = (LCRNG_Next() % 100);

    for (v1 = 0; v1 < 4; v1++) {
        v0 += Unk_ov108_022436B0[param1][v1];

        if (v2 < v0) {
            break;
        }
    }

    if (v1 >= 4) {
        GF_ASSERT(0);
        v1 = 0;
    }

    return v1;
}

static void ov108_02242F38(UnkStruct_ov108_02241DB0 *param0)
{
    u8 v0, v1, v2;
    Pokemon *v3;

    v0 = ov104_0223BD70(param0->unk_09, 1);
    v1 = ov104_0223BDA4(param0->unk_09, 1);

    for (v2 = 0; v2 < v0; v2++) {
        v3 = Party_GetPokemonBySlotIndex(param0->unk_3C8, v2);

        if (Pokemon_GetValue(v3, MON_DATA_HELD_ITEM, NULL) == 0) {
            ov108_022435A8(param0->unk_39C[v2], 0);
        } else {
            ov108_022435A8(param0->unk_39C[v2], 1);
        }
    }

    for (v2 = 0; v2 < v1; v2++) {
        v3 = Party_GetPokemonBySlotIndex(param0->unk_3CC, v2);

        if (Pokemon_GetValue(v3, MON_DATA_HELD_ITEM, NULL) == 0) {
            ov108_022435A8(param0->unk_3AC[v2], 0);
        } else {
            ov108_022435A8(param0->unk_3AC[v2], 1);
        }
    }

    return;
}

static BOOL ov108_02242FE8(UnkStruct_ov108_02241DB0 *param0)
{
    int v0 = sub_020226DC(Unk_ov108_02243687);

    if (v0 == 0) {
        ov108_02243008(param0);
        return 1;
    }

    return 0;
}

static void ov108_02243008(UnkStruct_ov108_02241DB0 *param0)
{
    sub_020057A4(1500, 0);
    Sound_PlayEffect(1508);
    ov108_022435F4(param0->unk_3BC, 1);

    return;
}
