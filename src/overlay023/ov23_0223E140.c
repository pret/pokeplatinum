#include "overlay023/ov23_0223E140.h"

#include <nitro.h>
#include <string.h>

#include "consts/game_records.h"

#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0202855C_decl.h"
#include "struct_decls/struct_020298B0_decl.h"
#include "struct_defs/struct_0200C738.h"
#include "struct_defs/struct_02099F80.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/hblank_system.h"
#include "overlay022/struct_ov22_022559F8.h"
#include "overlay023/ov23_022416A8.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_0224340C.h"
#include "overlay023/ov23_02248F1C.h"
#include "overlay023/ov23_0224A1D0.h"
#include "overlay023/ov23_0224B05C.h"
#include "overlay023/ov23_0224F294.h"
#include "overlay023/ov23_02253D40.h"
#include "overlay023/struct_ov23_0224271C.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "camera.h"
#include "cell_actor.h"
#include "comm_player_manager.h"
#include "communication_information.h"
#include "communication_system.h"
#include "core_sys.h"
#include "field_system.h"
#include "game_records.h"
#include "gx_layers.h"
#include "heap.h"
#include "journal.h"
#include "narc.h"
#include "save_player.h"
#include "savedata.h"
#include "sprite_resource.h"
#include "strbuf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_02001AF4.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "unk_0200A9DC.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0201DBEC.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "unk_0202631C.h"
#include "unk_0202854C.h"
#include "unk_020393C8.h"
#include "unk_02039C80.h"
#include "unk_020508D4.h"
#include "unk_02054D00.h"
#include "unk_0206A8DC.h"
#include "unk_0206AFE0.h"
#include "unk_0206CCB0.h"
#include "vars_flags.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_ov23_02256BF8;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04;
} UnkStruct_ov23_0224142C;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    FieldSystem *fieldSystem;
    int unk_14;
    void *unk_18[4];
    NNSG2dPaletteData *unk_28[4];
    int unk_38[4];
    int unk_48;
    int unk_4C;
    u8 unk_50;
} UnkStruct_ov23_0223EE80;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04;
    u8 unk_05;
} UnkStruct_ov23_0223E6F8;

typedef struct {
    void *unk_00;
    u16 unk_04;
    u16 unk_06;
    u16 unk_08;
    u16 unk_0A;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
    u16 unk_10;
    u16 unk_12;
} UnkStruct_ov23_02256EB0;

typedef struct {
    UnkStruct_ov23_02256EB0 *unk_00;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u8 unk_08;
} UnkStruct_ov23_0223FC9C;

typedef struct {
    UnkStruct_ov23_0224142C unk_00[250];
    u8 unk_4E2;
    u16 unk_4E4;
} UnkStruct_ov23_022412CC;

typedef struct {
    FieldSystem *fieldSystem;
    BGL *unk_04;
    MATHRandContext32 unk_08;
    CellActorCollection *unk_20;
    UnkStruct_0200C738 unk_24;
    SpriteResourceCollection *unk_1B0[4];
    SpriteResource *unk_1C0[8];
    CellActorResourceData unk_1E0;
    CellActorResourceData unk_204[2];
    CellActor *unk_24C[8];
    UnkStruct_ov23_0223E6F8 unk_26C[250];
    UIControlData *unk_848;
    UnkStruct_ov23_0223E6F8 *unk_84C[8];
    u8 unk_86C[8];
    UnkStruct_ov23_0223FC9C unk_874[8];
    u8 unk_8BC[8];
    SysTask *unk_8C4;
    SysTask *unk_8C8;
    SysTask *unk_8CC;
    UnkStruct_ov23_022412CC *unk_8D0;
    UnkStruct_ov23_0224142C unk_8D4[8];
    u8 unk_8FC[8];
    void *unk_904;
    u8 unk_908[8];
    u8 unk_910[8];
    u8 unk_918[8];
    u8 unk_920[10][13];
    u8 unk_9A2[10][13];
    int unk_A24;
    u8 unk_A28;
    u8 unk_A29;
    u8 unk_A2A;
    u8 unk_A2B;
    u8 unk_A2C;
    s8 unk_A2D;
    s8 unk_A2E;
    u8 unk_A2F;
    u8 unk_A30;
} UnkStruct_ov23_02257740;

static void ov23_02240688(BGL *param0);
static void ov23_0223E434(MATHRandContext16 *param0, int param1);
static UnkStruct_ov23_0223E6F8 *ov23_0223E6F8(void);
static UnkStruct_ov23_0223E6F8 *ov23_0223E88C(u16 param0, u16 param1);
static void ov23_0223EA38(SysTask *param0, void *param1);
static void ov23_0223EE80(UnkStruct_ov23_0223EE80 *param0);
static void ov23_0223EF98(void);
static void ov23_0223F70C(FieldSystem *fieldSystem);
static void ov23_0223FA3C(BGL *param0, int param1, UnkStruct_ov23_0223EE80 *param2);
static void ov23_0223FF60(int param0, BGL *param1, int param2, UnkStruct_ov23_0223EE80 *param3);
static void ov23_0223FF8C(BGL *param0);
static void ov23_022401B0(BGL *param0);
static BOOL ov23_02240CFC(UnkStruct_ov23_0223EE80 *param0);
static void ov23_022404C8(BGL *param0);
static void ov23_022404F8(BGL *param0, int param1, int param2, int param3);
static BOOL ov23_02240934(UnkStruct_ov23_0223EE80 *param0);
static BOOL ov23_022409F0(UnkStruct_ov23_0223EE80 *param0);
static BOOL ov23_02240A90(UnkStruct_ov23_0223EE80 *param0);
static void ov23_02240E88(void);
static void ov23_0224108C(void);
static void ov23_0224119C(void);
static void ov23_022411E8(void *param0);
static void ov23_022413B4(void);
static UnkStruct_ov23_0223E6F8 *ov23_0223E740(int param0, int param1);
static void ov23_0223FDE0(UnkStruct_ov23_0223EE80 *param0);
static void ov23_02240B84(BGL *param0);
static void ov23_022414D4(void);
static void ov23_0223E834(void);

static UnkStruct_ov23_02257740 *Unk_ov23_02257740 = NULL;

static u8 Unk_ov23_02256D3A[6][3] = {
    { 'x', 'x', 'x' },
    { 'o', 'x', 'o' },
    { 'o', 'x', 'o' },
    { 'o', 'x', 'o' },
    { 'o', 'x', 'o' },
    { 'x', 'x', 'x' },
};

static u8 Unk_ov23_02256D4C[3][6] = {
    { 'x', 'o', 'o', 'o', 'o', 'x' },
    { 'x', 'x', 'x', 'x', 'x', 'x' },
    { 'x', 'o', 'o', 'o', 'o', 'x' },
};

static u8 Unk_ov23_02256BFC[2][3] = {
    { 'x', 'x', 'x' },
    { 'o', 'x', 'o' },
};

static u8 Unk_ov23_02256C02[3][2] = {
    { 'o', 'x' },
    { 'x', 'x' },
    { 'o', 'x' },
};

static u8 Unk_ov23_02256C20[2][3] = {
    { 'o', 'x', 'o' },
    { 'x', 'x', 'x' },
};

static u8 Unk_ov23_02256C1A[3][2] = {
    { 'x', 'o' },
    { 'x', 'x' },
    { 'x', 'o' },
};

static u8 Unk_ov23_02256C0E[2][3] = {
    { 'x', 'x', 'o' },
    { 'o', 'x', 'x' },
};

static u8 Unk_ov23_02256C26[3][2] = {
    { 'o', 'x' },
    { 'x', 'x' },
    { 'x', 'o' },
};

static u8 Unk_ov23_02256C08[2][3] = {
    { 'o', 'x', 'x' },
    { 'x', 'x', 'o' },
};

static u8 Unk_ov23_02256C14[3][2] = {
    { 'x', 'o' },
    { 'x', 'x' },
    { 'o', 'x' },
};

static u8 Unk_ov23_02256D0A[4][4] = {
    { 'o', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'o' },
};

static u8 Unk_ov23_02256CBA[4][4] = {
    { 'x', 'x', 'x', 'o' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'o', 'x', 'x', 'x' },
};

static u8 Unk_ov23_02256C45[3][3] = {
    { 'o', 'x', 'x' },
    { 'x', 'x', 'x' },
    { 'x', 'x', 'o' },
};

static u8 Unk_ov23_02256CDA[4][4] = {
    { 'o', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'o' },
};

static u8 Unk_ov23_02256CEA[4][4] = {
    { 'x', 'x', 'x', 'o' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'o', 'x', 'x', 'x' },
};

static u8 Unk_ov23_02256D5E[4][5] = {
    { 'x', 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x', 'x' },
    { 'o', 'x', 'x', 'x', 'o' },
};

static u8 Unk_ov23_02256C3C[3][3] = {
    { 'x', 'x', 'x' },
    { 'x', 'x', 'x' },
    { 'x', 'x', 'o' },
};

static u8 Unk_ov23_02256C34[2][4] = {
    { 'o', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'o' },
};

static u8 Unk_ov23_02256C2C[4][2] = {
    { 'x', 'o' },
    { 'x', 'x' },
    { 'x', 'x' },
    { 'o', 'x' },
};

static u8 Unk_ov23_02256D72[5][4] = {
    { 'o', 'o', 'x', 'x' },
    { 'o', 'x', 'x', 'x' },
    { 'o', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'o' },
    { 'x', 'x', 'o', 'o' },
};

static u8 Unk_ov23_02256D86[4][5] = {
    { 'x', 'x', 'o', 'o', 'o' },
    { 'x', 'x', 'x', 'x', 'o' },
    { 'o', 'x', 'x', 'x', 'x' },
    { 'o', 'o', 'x', 'x', 'x' },
};

static u8 Unk_ov23_02256D9A[5][4] = {
    { 'o', 'o', 'x', 'x' },
    { 'o', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'o' },
    { 'x', 'x', 'x', 'o' },
    { 'x', 'x', 'o', 'o' },
};

static u8 Unk_ov23_02256DAE[4][5] = {
    { 'x', 'x', 'x', 'o', 'o' },
    { 'x', 'x', 'x', 'x', 'o' },
    { 'o', 'x', 'x', 'x', 'x' },
    { 'o', 'o', 'o', 'x', 'x' },
};

static u8 Unk_ov23_02256C4E[3][3] = {
    { 'o', 'x', 'o' },
    { 'x', 'x', 'x' },
    { 'x', 'x', 'x' },
};

static u8 Unk_ov23_02256C57[3][3] = {
    { 'o', 'x', 'o' },
    { 'x', 'x', 'x' },
    { 'o', 'x', 'o' },
};

static u8 Unk_ov23_02256C8A[3][4] = {
    { 'o', 'x', 'x', 'o' },
    { 'x', 'x', 'x', 'x' },
    { 'o', 'x', 'x', 'o' },
};

static u8 Unk_ov23_02256C96[4][3] = {
    { 'o', 'x', 'o' },
    { 'x', 'x', 'x' },
    { 'x', 'x', 'x' },
    { 'o', 'x', 'o' },
};

static u8 Unk_ov23_02256DD6[5][5] = {
    { 'x', 'x', 'x', 'x', 'o' },
    { 'x', 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'o', 'x', 'x' },
    { 'o', 'o', 'o', 'x', 'x' },
    { 'o', 'o', 'x', 'x', 'o' },
};

static u8 Unk_ov23_02256DEF[5][5] = {
    { 'o', 'o', 'x', 'x', 'x' },
    { 'o', 'o', 'x', 'x', 'x' },
    { 'x', 'o', 'o', 'x', 'x' },
    { 'x', 'x', 'x', 'x', 'x' },
    { 'o', 'x', 'x', 'x', 'o' },
};

static u8 Unk_ov23_02256E08[5][5] = {
    { 'o', 'x', 'x', 'o', 'o' },
    { 'x', 'x', 'o', 'o', 'o' },
    { 'x', 'x', 'o', 'x', 'x' },
    { 'x', 'x', 'x', 'x', 'x' },
    { 'o', 'x', 'x', 'x', 'x' },
};

static u8 Unk_ov23_02256E21[5][5] = {
    { 'o', 'x', 'x', 'x', 'o' },
    { 'x', 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'o', 'o', 'x' },
    { 'x', 'x', 'x', 'o', 'o' },
    { 'x', 'x', 'x', 'o', 'o' },
};

static u8 Unk_ov23_02256C60[3][3] = {
    { 'x', 'x', 'x' },
    { 'x', 'x', 'o' },
    { 'x', 'x', 'x' },
};
static u8 Unk_ov23_02256C69[3][3] = {
    { 'x', 'x', 'x' },
    { 'x', 'x', 'x' },
    { 'x', 'x', 'o' },
};
static u8 Unk_ov23_02256CA2[3][4] = {
    { 'x', 'o', 'x', 'o' },
    { 'x', 'x', 'x', 'o' },
    { 'x', 'x', 'x', 'x' },
};
static u8 Unk_ov23_02256CAE[3][4] = {
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'o', 'x' },
};

static u8 Unk_ov23_02256BF0[2][2] = {
    { 'x', 'o' },
    { 'x', 'x' },
};

static u8 Unk_ov23_02256DC2[4][5] = {
    { 'o', 'x', 'x', 'x', 'o' },
    { 'o', 'x', 'x', 'x', 'o' },
    { 'x', 'x', 'x', 'x', 'x' },
    { 'o', 'x', 'x', 'x', 'o' },
};

static u8 Unk_ov23_02256CFA[4][4] = {
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'o', 'x', 'x', 'o' },
};

static u8 Unk_ov23_02256D1A[4][4] = {
    { 'x', 'o', 'x', 'o' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'o', 'x', 'o', 'x' },
};

static u8 Unk_ov23_02256D2A[4][4] = {
    { 'o', 'x', 'x', 'o' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'o', 'o', 'x' },
};

static u8 Unk_ov23_02256C72[3][4] = {
    { 'x', 'o', 'x', 'o' },
    { 'x', 'x', 'x', 'x' },
    { 'x', 'x', 'x', 'x' },
};

static u8 Unk_ov23_02256CCA[4][4] = {
    { 'o', 'o', 'x', 'o' },
    { 'x', 'x', 'x', 'o' },
    { 'o', 'x', 'x', 'x' },
    { 'o', 'x', 'o', 'o' },
};

static u8 Unk_ov23_02256C7E[3][4] = {
    { 'x', 'x', 'x' },
    { 'x', 'x', 'x' },
    { 'x', 'o', 'x' },
};

static UnkStruct_ov23_02256EB0 Unk_ov23_02256EB0[] = {
    { NULL, 0x1E, 0x16, 0x1B, 0x14, 0x4, 0x4, 0x1, 0x39, 0x37 },
    { NULL, 0x16, 0x1E, 0x14, 0x1B, 0x4, 0x4, 0x2, 0x67, 0x65 },
    { NULL, 0xA7, 0xC2, 0x6E, 0xA4, 0x4, 0x4, 0x3, 0x2, 0x0 },
    { NULL, 0xC2, 0xA7, 0x96, 0x7C, 0x4, 0x4, 0x4, 0x5, 0x3 },
    { NULL, 0x96, 0x96, 0x6B, 0x6B, 0x4, 0x4, 0x5, 0x3F, 0x3D },
    { NULL, 0xF, 0xD, 0xD, 0xA, 0x6, 0x6, 0x6, 0x38, 0x37 },
    { NULL, 0xD, 0xF, 0xA, 0xD, 0x6, 0x6, 0x7, 0x66, 0x65 },
    { NULL, 0x53, 0x60, 0x3D, 0x4B, 0x6, 0x6, 0x8, 0x1, 0x0 },
    { NULL, 0x60, 0x53, 0x4B, 0x3D, 0x6, 0x6, 0x9, 0x4, 0x3 },
    { NULL, 0x4B, 0x4B, 0x35, 0x35, 0x6, 0x6, 0xA, 0x3E, 0x3D },
    { NULL, 0x0, 0x0, 0x0, 0x0, 0x6, 0x6, 0xB, 0x3B, 0x3C },
    { NULL, 0x0, 0x0, 0x2, 0x2, 0x8, 0x8, 0xC, 0x2F, 0x30 },
    { Unk_ov23_02256C4E, 0x4, 0x1, 0xF, 0x3, 0x6, 0x6, 0xD, 0x6A, 0x6B },
    { Unk_ov23_02256C57, 0x2, 0x2, 0xA, 0xA, 0x6, 0x6, 0xE, 0x68, 0x69 },
    { Unk_ov23_02256C34, 0x1, 0x2, 0x1, 0x8, 0x8, 0x4, 0xF, 0x42, 0x43 },
    { Unk_ov23_02256C2C, 0x1, 0x2, 0x2, 0x7, 0x4, 0x8, 0xF, 0x44, 0x43 },
    { NULL, 0x4, 0x4, 0x14, 0x14, 0x4, 0x4, 0x10, 0x12, 0x13 },
    { Unk_ov23_02256C45, 0x4, 0x1, 0x1E, 0x5, 0x6, 0x6, 0x11, 0x2D, 0x2E },
    { NULL, 0x4, 0x4, 0x14, 0x14, 0x8, 0x4, 0x12, 0x32, 0x33 },
    { NULL, 0x4, 0x1, 0x1E, 0x5, 0x6, 0x6, 0x13, 0x18, 0x19 },
    { Unk_ov23_02256C3C, 0x1, 0x4, 0x5, 0x1E, 0x6, 0x6, 0x14, 0x40, 0x41 },
    { Unk_ov23_02256C96, 0x1, 0x2, 0x3, 0xF, 0x6, 0x8, 0x15, 0x60, 0x61 },
    { Unk_ov23_02256C8A, 0x1, 0x2, 0x2, 0xF, 0x8, 0x6, 0x15, 0x62, 0x61 },
    { Unk_ov23_02256D0A, 0x0, 0x0, 0x3, 0x1, 0x8, 0x8, 0x17, 0x29, 0x31 },
    { Unk_ov23_02256CBA, 0x0, 0x0, 0x3, 0x1, 0x8, 0x8, 0x17, 0x2C, 0x31 },
    { Unk_ov23_02256D0A, 0x0, 0x0, 0x3, 0x1, 0x8, 0x8, 0x17, 0x2A, 0x31 },
    { Unk_ov23_02256CBA, 0x0, 0x0, 0x3, 0x1, 0x8, 0x8, 0x17, 0x2B, 0x31 },
    { Unk_ov23_02256D5E, 0x0, 0x0, 0x1, 0xD, 0xA, 0x8, 0x18, 0x3A, 0x31 },
    { Unk_ov23_02256D72, 0x0, 0x0, 0x3, 0x1, 0x8, 0xA, 0x19, 0x6D, 0x31 },
    { Unk_ov23_02256D86, 0x0, 0x0, 0x3, 0x1, 0xA, 0x8, 0x19, 0x70, 0x31 },
    { Unk_ov23_02256D9A, 0x0, 0x0, 0x3, 0x1, 0x8, 0xA, 0x19, 0x6E, 0x31 },
    { Unk_ov23_02256DAE, 0x0, 0x0, 0x3, 0x1, 0xA, 0x8, 0x19, 0x6F, 0x31 },
    { Unk_ov23_02256DD6, 0x0, 0x0, 0x1, 0x3, 0xA, 0xA, 0x1A, 0x45, 0x31 },
    { Unk_ov23_02256DEF, 0x0, 0x0, 0x1, 0x3, 0xA, 0xA, 0x1A, 0x48, 0x31 },
    { Unk_ov23_02256E08, 0x0, 0x0, 0x1, 0x3, 0xA, 0xA, 0x1A, 0x46, 0x31 },
    { Unk_ov23_02256E21, 0x0, 0x0, 0x1, 0x3, 0xA, 0xA, 0x1A, 0x47, 0x31 },
    { Unk_ov23_02256CDA, 0x0, 0x0, 0x2, 0x2, 0x8, 0x8, 0x1B, 0x34, 0x35 },
    { Unk_ov23_02256CEA, 0x0, 0x0, 0x3, 0x3, 0x8, 0x8, 0x1B, 0x36, 0x35 },
    { Unk_ov23_02256D3A, 0x1, 0x1, 0x5, 0x5, 0x6, 0xC, 0x1C, 0xA, 0xB },
    { Unk_ov23_02256D4C, 0x1, 0x1, 0x5, 0x5, 0xC, 0x6, 0x1C, 0xC, 0xB },
    { Unk_ov23_02256C57, 0x8, 0x8, 0xA, 0xA, 0x6, 0x6, 0x1D, 0x11, 0xF },
    { NULL, 0x1, 0x1, 0x2, 0x2, 0x6, 0x6, 0x1E, 0x10, 0xF },
    { Unk_ov23_02256C60, 0xD, 0xD, 0x11, 0x11, 0x6, 0x6, 0x1F, 0x58, 0x4F },
    { Unk_ov23_02256C69, 0xD, 0xD, 0x11, 0x11, 0x6, 0x6, 0x20, 0x4B, 0x5D },
    { Unk_ov23_02256CA2, 0xD, 0xD, 0x11, 0x11, 0x8, 0x6, 0x21, 0x5F, 0x5C },
    { Unk_ov23_02256CAE, 0xD, 0xD, 0x11, 0x11, 0x8, 0x6, 0x22, 0x51, 0x59 },
    { Unk_ov23_02256BF0, 0x21, 0x21, 0x1E, 0x1E, 0x4, 0x4, 0x23, 0x14, 0x15 },
    { Unk_ov23_02256DC2, 0x0, 0x19, 0x0, 0xC, 0xA, 0x8, 0x24, 0x6C, 0x31 },
    { Unk_ov23_02256CFA, 0x19, 0x0, 0xC, 0x0, 0x8, 0x8, 0x25, 0x73, 0x31 },
    { Unk_ov23_02256D1A, 0x1, 0x1, 0x5, 0x2, 0x8, 0x8, 0x26, 0x49, 0x4A },
    { NULL, 0x1, 0x1, 0x2, 0x5, 0x6, 0x6, 0x27, 0x6, 0x7 },
    { Unk_ov23_02256D2A, 0x2, 0x1, 0xB, 0x5, 0x8, 0x8, 0x28, 0xD, 0xE },
    { Unk_ov23_02256CCA, 0x1, 0x2, 0x5, 0xB, 0x8, 0x8, 0x29, 0x63, 0x64 },
    { Unk_ov23_02256C72, 0x2, 0x1, 0xB, 0x5, 0x8, 0x6, 0x2A, 0x16, 0x17 },
    { Unk_ov23_02256C7E, 0x1, 0x2, 0x5, 0xB, 0x6, 0x6, 0x2B, 0x71, 0x72 },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, 0x2C, 0x56, 0x4F },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, 0x2D, 0x56, 0x5D },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, 0x2E, 0x56, 0x5C },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, 0x2F, 0x56, 0x59 },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, 0x30, 0x56, 0x54 },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, 0x31, 0x56, 0x50 },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, 0x32, 0x56, 0x57 },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, 0x33, 0x56, 0x53 },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, 0x34, 0x56, 0x5B },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, 0x35, 0x56, 0x5E },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, 0x36, 0x56, 0x4C },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, 0x37, 0x56, 0x5A },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, 0x38, 0x56, 0x52 },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, 0x39, 0x56, 0x4E },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, 0x3A, 0x56, 0x4D },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x6, 0x3B, 0x56, 0x55 },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x2, 0x3C, 0x1B, 0x1A },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x2, 0x8, 0x3C, 0x1C, 0x1A },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x4, 0x4, 0x3D, 0x1D, 0x1A },
    { Unk_ov23_02256BFC, 0x1, 0x1, 0x1, 0x1, 0x6, 0x4, 0x3E, 0x1E, 0x1A },
    { Unk_ov23_02256C02, 0x1, 0x1, 0x1, 0x1, 0x4, 0x6, 0x3E, 0x21, 0x1A },
    { Unk_ov23_02256C20, 0x1, 0x1, 0x1, 0x1, 0x6, 0x4, 0x3E, 0x1F, 0x1A },
    { Unk_ov23_02256C1A, 0x1, 0x1, 0x1, 0x1, 0x4, 0x6, 0x3E, 0x20, 0x1A },
    { Unk_ov23_02256C0E, 0x1, 0x1, 0x1, 0x1, 0x6, 0x4, 0x3F, 0x22, 0x1A },
    { Unk_ov23_02256C26, 0x1, 0x1, 0x1, 0x1, 0x4, 0x6, 0x3F, 0x23, 0x1A },
    { Unk_ov23_02256C08, 0x1, 0x1, 0x1, 0x1, 0x6, 0x4, 0x40, 0x24, 0x1A },
    { Unk_ov23_02256C14, 0x1, 0x1, 0x1, 0x1, 0x4, 0x6, 0x40, 0x25, 0x1A },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x6, 0x6, 0x41, 0x26, 0x1A },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x4, 0x8, 0x42, 0x27, 0x1A },
    { NULL, 0x1, 0x1, 0x1, 0x1, 0x8, 0x4, 0x42, 0x28, 0x1A }
};

static const UnkStruct_ov61_0222C884 Unk_ov23_0225630E = {
    0x3,
    0x19,
    0xD,
    0x6,
    0x4,
    0xD,
    0x21F
};

static void ov23_0223E140(void)
{
    int i;

    for (i = 0; i < (7 + 1); i++) {
        Unk_ov23_02257740->unk_910[i] = 0xff;
        Unk_ov23_02257740->unk_918[i] = 0xff;
    }

    Unk_ov23_02257740->unk_A28 = 1;
    Unk_ov23_02257740->unk_A29 = 0;
    Unk_ov23_02257740->unk_A2B = (200 - 4);

    for (i = 0; i < 8; i++) {
        Unk_ov23_02257740->unk_874[i].unk_00 = NULL;
        Unk_ov23_02257740->unk_874[i].unk_08 = 0;
    }

    for (i = 0; i < 13 * 10; i++) {
        Unk_ov23_02257740->unk_920[i / 13][i % 13] = 0;
        Unk_ov23_02257740->unk_9A2[i / 13][i % 13] = 2;
    }
}

void ov23_0223E1E4(void *param0, FieldSystem *fieldSystem)
{
    int v0, v1;
    UndergroundData *v2;

    if (Unk_ov23_02257740) {
        return;
    }

    Unk_ov23_02257740 = param0;

    MI_CpuFill8(Unk_ov23_02257740, 0, sizeof(UnkStruct_ov23_02257740));
    CommSys_Seed(&Unk_ov23_02257740->unk_08);

    Unk_ov23_02257740->fieldSystem = fieldSystem;

    for (v0 = 0; v0 < 250; v0++) {
        Unk_ov23_02257740->unk_26C[v0].unk_04 = 0xff;
        Unk_ov23_02257740->unk_26C[v0].unk_00 = 0xffff;
        Unk_ov23_02257740->unk_26C[v0].unk_02 = 0xffff;
    }

    ov23_0223E140();

    Unk_ov23_02257740->unk_A24 = -1;
    v2 = sub_020298B0(Unk_ov23_02257740->fieldSystem->saveData);

    if (sub_02029234(v2)) {
        MATHRandContext16 v3;

        MATH_InitRand16(&v3, sub_02028930(v2));

        for (v0 = 0; v0 < 255; v0++) {
            sub_020291A4(v2, v0);
        }

        for (v0 = 0; v0 < (16 * 4); v0++) {
            sub_02028EF8(v2, 0, v0, 0, 0);
        }

        v1 = ov23_02241DF8(&v3);
        v1 = 25 - (v1 / 10) - 1;

        for (v0 = 0; v0 < v1; v0++) {
            ov23_0223E434(&v3, v0);
        }

        sub_02029240(v2);
    } else {
        ov23_0223E834();
        ov23_02243CE8();
    }
}

int ov23_0223E2E8(void)
{
    return sizeof(UnkStruct_ov23_02257740);
}

void ov23_0223E2F0(void)
{
    return;
}

void ov23_0223E2F4(void)
{
    return;
}

void ov23_0223E2F8(void)
{
    if (Unk_ov23_02257740) {
        if (Unk_ov23_02257740->unk_8C8) {
            SysTask_Done(Unk_ov23_02257740->unk_8C8);
            Unk_ov23_02257740->unk_8C8 = NULL;
            ov23_02254044(ov23_0224219C());

            if (Unk_ov23_02257740->unk_848) {
                sub_02002154(Unk_ov23_02257740->unk_848, 4);
            }

            sub_02059514();
        }

        Heap_FreeToHeap(Unk_ov23_02257740);
        Unk_ov23_02257740 = NULL;
    }
}

BOOL ov23_0223E354(int param0, UnkStruct_ov23_0224271C *param1)
{
    UnkStruct_ov23_0223E6F8 *v0 = ov23_0223E88C(param1->unk_00, param1->unk_02);
    u8 v1;

    v1 = param0;

    if ((v0 != NULL) && (v0->unk_04 == 0xff)) {
        if (ov23_0224A6B8(param0)) {
            return 1;
        }

        CommSys_SendDataServer(64, &v1, 1);
        sub_02059058(param0, 0);

        Unk_ov23_02257740->unk_84C[param0] = v0;
        return 1;
    }

    return 0;
}

static BOOL ov23_0223E3AC(FieldSystem *fieldSystem, int param1, int param2)
{
    if (ov23_02242E58(param1, param2)) {
        return 0;
    }

    if (param2 > 478) {
        return 0;
    }

    if (param1 > 478) {
        return 0;
    }

    if (FieldSystem_CheckCollision(fieldSystem, param1, param2)) {
        if (!FieldSystem_CheckCollision(fieldSystem, param1, param2 + 1)) {
            return 1;
        }

        if (!FieldSystem_CheckCollision(fieldSystem, param1, param2 - 1)) {
            return 1;
        }

        if (!FieldSystem_CheckCollision(fieldSystem, param1 + 1, param2)) {
            return 1;
        }

        if (!FieldSystem_CheckCollision(fieldSystem, param1 - 1, param2)) {
            return 1;
        }
    }

    return 0;
}

static void ov23_0223E434(MATHRandContext16 *param0, int param1)
{
    int v0, v1, v2, v3;
    u16 v4, v5, v6;
    u16 v7, v8, v9;
    UnkStruct_ov23_0223E6F8 *v10;
    UndergroundData *v11 = sub_020298B0(Unk_ov23_02257740->fieldSystem->saveData);

    v6 = (sub_02039E10(Unk_ov23_02257740->fieldSystem->unk_2C) - 2) * 32;
    v9 = (sub_02039E20(Unk_ov23_02257740->fieldSystem->unk_2C) - 2) * 32;

    do {
        v4 = MATH_Rand16(param0, v6) + 32;
        v7 = MATH_Rand16(param0, v9) + 32 * 2;
    } while (ov23_0223E3AC(Unk_ov23_02257740->fieldSystem, v4, v7) == 0);

    v0 = MATH_Rand16(param0, 6) + 6;

    for (v1 = 0; v1 < v0; v1++) {
        v3 = 0;

        for (v2 = 0; v2 < 100; v2++) {
            v5 = MATH_Rand16(param0, 20) + v4 - 10;
            v8 = MATH_Rand16(param0, 20) + v7 - 10;

            if (ov23_0223E3AC(Unk_ov23_02257740->fieldSystem, v5, v8)) {
                v3 = 1;
                break;
            }
        }

        if (v3) {
            v10 = ov23_0223E6F8();

            if (v10 == NULL) {
                break;
            }

            v10 = ov23_0223E740(v5, v8);
            v10->unk_05 = sub_02029140(v11, v5, v8);
        }
    }

    v0 = MATH_Rand16(param0, 6);

    for (v1 = 0; v1 < v0; v1++) {
        for (v2 = 0; v2 < 100; v2++) {
            v5 = MATH_Rand16(param0, 20) + v4 - 10;
            v8 = MATH_Rand16(param0, 20) + v7 - 10;

            if (!FieldSystem_CheckCollision(Unk_ov23_02257740->fieldSystem, v5, v8)) {
                int v12 = ov23_02243C3C(v5, v8, param0, Unk_ov23_02257740->unk_A30);

                if (0 != v12) {
                    Unk_ov23_02257740->unk_A30++;
                    break;
                }
            }
        }
    }
}

void ov23_0223E650(int param0, int param1, MATHRandContext16 *param2)
{
    int v0, v1, v2, v3;
    u16 v4, v5;
    UnkStruct_ov23_0223E6F8 *v6;
    UndergroundData *v7 = sub_020298B0(Unk_ov23_02257740->fieldSystem->saveData);

    v3 = 0;

    for (v2 = 0; v2 < 100; v2++) {
        v4 = MATH_Rand16(param2, 20) + param0 - 10;
        v5 = MATH_Rand16(param2, 20) + param1 - 10;

        if (ov23_0223E3AC(Unk_ov23_02257740->fieldSystem, v4, v5)) {
            v3 = 1;
            break;
        }
    }

    if (v3) {
        v6 = ov23_0223E6F8();

        if (v6) {
            v6 = ov23_0223E740(v4, v5);
            v6->unk_05 = sub_02029140(v7, v4, v5);
        }
    }
}

static UnkStruct_ov23_0223E6F8 *ov23_0223E6F8(void)
{
    int v0;

    for (v0 = 0; v0 < 250; v0++) {
        if ((Unk_ov23_02257740->unk_26C[v0].unk_00 == 0xffff) && (Unk_ov23_02257740->unk_26C[v0].unk_02 == 0xffff)) {
            return &Unk_ov23_02257740->unk_26C[v0];
        }
    }

    return NULL;
}

static UnkStruct_ov23_0223E6F8 *ov23_0223E740(int param0, int param1)
{
    int v0 = -1, v1, v2 = param1 * 30 * 32 + param0;
    int v3;

    for (v1 = 0; v1 < 250; v1++) {
        if ((Unk_ov23_02257740->unk_26C[v1].unk_00 != 0xffff) && (Unk_ov23_02257740->unk_26C[v1].unk_02 != 0xffff)) {
            v3 = Unk_ov23_02257740->unk_26C[v1].unk_02 * 30 * 32 + Unk_ov23_02257740->unk_26C[v1].unk_00;

            if (v2 < v3) {
                v0 = v1;
                break;
            }
        } else {
            Unk_ov23_02257740->unk_26C[v1].unk_00 = param0;
            Unk_ov23_02257740->unk_26C[v1].unk_02 = param1;
            return &Unk_ov23_02257740->unk_26C[v1];
        }
    }

    if (v0 != -1) {
        for (v1 = 250 - 2; v1 >= v0; v1--) {
            Unk_ov23_02257740->unk_26C[v1 + 1].unk_00 = Unk_ov23_02257740->unk_26C[v1].unk_00;
            Unk_ov23_02257740->unk_26C[v1 + 1].unk_02 = Unk_ov23_02257740->unk_26C[v1].unk_02;
            Unk_ov23_02257740->unk_26C[v1 + 1].unk_05 = Unk_ov23_02257740->unk_26C[v1].unk_05;
        }

        Unk_ov23_02257740->unk_26C[v0].unk_00 = param0;
        Unk_ov23_02257740->unk_26C[v0].unk_02 = param1;
    }

    return &Unk_ov23_02257740->unk_26C[v0];
}

static void ov23_0223E834(void)
{
    UndergroundData *v0 = sub_020298B0(Unk_ov23_02257740->fieldSystem->saveData);
    int v1;
    int v2, v3;
    UnkStruct_ov23_0223E6F8 *v4;

    for (v1 = 0; v1 < 255; v1++) {
        v2 = sub_020291CC(v0, v1);
        v3 = sub_020291EC(v0, v1);

        if ((v2 != 0) && (v3 != 0)) {
            v4 = ov23_0223E740(v2, v3);
            v4->unk_05 = v1;
        }
    }
}

void ov23_0223E878(void)
{
    int v0;

    if (CommSys_CurNetId() == 0) {
        ov23_022414D4();
        ov23_022413B4();
    }
}

static UnkStruct_ov23_0223E6F8 *ov23_0223E88C(u16 param0, u16 param1)
{
    int v0;

    for (v0 = 0; v0 < 250; v0++) {
        if ((Unk_ov23_02257740->unk_26C[v0].unk_00 == param0) && (Unk_ov23_02257740->unk_26C[v0].unk_02 == param1)) {
            return &Unk_ov23_02257740->unk_26C[v0];
        }
    }

    return NULL;
}

static int ov23_0223E8CC(u16 param0, u16 param1)
{
    int v0, v1 = param1 - 80, v2 = param1 + 80, v3 = param0 - 80, v4 = param0 + 80;
    int v5 = 0, v6;

    if (ov23_02242E58(param0, param1)) {
        return -1;
    }

    if (v3 < 64) {
        v3 = 64;
    }

    if (v4 > 512) {
        v4 = 512;
    }

    if (v1 < 32) {
        v1 = 32;
    }

    if (v2 > 480) {
        v2 = 480;
    }

    for (v0 = 0; v0 < 250; v0++) {
        if ((Unk_ov23_02257740->unk_26C[v0].unk_02 < v1) || (Unk_ov23_02257740->unk_26C[v0].unk_02 > v2)) {
            continue;
        }

        if ((Unk_ov23_02257740->unk_26C[v0].unk_00 > v3) && (Unk_ov23_02257740->unk_26C[v0].unk_00 < v4)) {
            v5++;
        }
    }

    if (v5 == 0) {
        return -1;
    }

    v6 = LCRNG_Next() % v5;
    v5 = 0;

    for (v0 = 0; v0 < 250; v0++) {
        if ((Unk_ov23_02257740->unk_26C[v0].unk_02 < v1) || (Unk_ov23_02257740->unk_26C[v0].unk_02 > v2)) {
            continue;
        }

        if ((Unk_ov23_02257740->unk_26C[v0].unk_00 > v3) && (Unk_ov23_02257740->unk_26C[v0].unk_00 < v4)) {
            if (v5 == v6) {
                return v0;
            }

            v5++;
        }
    }

    return -1;
}

static void ov23_0223E99C(SysTask *param0, void *param1)
{
    if (Unk_ov23_02257740->unk_848) {
        sub_02002154(Unk_ov23_02257740->unk_848, 4);
    }

    Unk_ov23_02257740->unk_848 = NULL;
    Unk_ov23_02257740->unk_8C8 = NULL;

    SysTask_Done(param0);
}

void ov23_0223E9D4(int param0, int param1, void *param2, void *param3)
{
    u8 *v0 = param2;

    if ((v0[0] == CommSys_CurNetId()) && CommSys_IsSendingMovementData()) {
        Unk_ov23_02257740->unk_A24 = ov23_02253F40(ov23_0224219C(), 19, 0, NULL);
        Unk_ov23_02257740->unk_8C8 = SysTask_Start(ov23_0223EA38, Unk_ov23_02257740, 0);

        ov23_022431EC(NULL, Unk_ov23_02257740->unk_8C8, ov23_0223E99C);
        sub_020594FC();
    }
}

static void ov23_0223EA38(SysTask *param0, void *param1)
{
    u8 v0;

    if (Unk_ov23_02257740->unk_A24 != -1) {
        if (Text_IsPrinterActive(Unk_ov23_02257740->unk_A24) == 0) {
            Unk_ov23_02257740->unk_848 = sub_02002100(Unk_ov23_02257740->fieldSystem->unk_08, &Unk_ov23_0225630E, 1024 - (18 + 12) - 9, 11, 4);
            Unk_ov23_02257740->unk_A24 = -1;
        }
    } else {
        int v1 = sub_02002114(Unk_ov23_02257740->unk_848, 4);

        if (v1 == 0xffffffff) {
            return;
        } else if (v1 == 0) {
            v0 = 1;
        } else {
            v0 = 0;
            sub_02059514();
        }

        CommSys_SendDataFixedSize(65, &v0);
        Unk_ov23_02257740->unk_848 = NULL;

        ov23_02254044(ov23_0224219C());
        SysTask_Done(param0);
        ov23_02243204();

        Unk_ov23_02257740->unk_8C8 = NULL;
    }
}

void ov23_0223EAF8(int param0, int param1, void *param2, void *param3)
{
    UndergroundData *v0 = sub_020298B0(Unk_ov23_02257740->fieldSystem->saveData);
    UnkStruct_ov23_0223E6F8 *v1 = Unk_ov23_02257740->unk_84C[param0];
    u8 v2 = param0;
    u8 *v3 = param2;

    if ((v3[0] != 0) && v1) {
        if (v1->unk_04 == 0xff) {
            CommSys_SendDataServer(66, &v2, 1);

            v1->unk_04 = 0xff;
            v1->unk_00 = 0xffff;
            v1->unk_02 = 0xffff;

            sub_020291A4(v0, v1->unk_05);

            Unk_ov23_02257740->unk_86C[param0] = 1;
            Unk_ov23_02257740->unk_84C[param0] = NULL;
        }
    } else {
        Unk_ov23_02257740->unk_86C[param0] = 0;
        Unk_ov23_02257740->unk_84C[param0] = NULL;
    }
}

void ov23_0223EB8C(int param0, int param1, void *param2, void *param3)
{
    u8 *v0 = param2;

    if (v0[0] == CommSys_CurNetId()) {
        sub_020594FC();
        ov23_0223F70C(Unk_ov23_02257740->fieldSystem);
    }

    Unk_ov23_02257740->unk_908[v0[0]] = 1;
}

void ov23_0223EBC0(int param0, int param1, void *param2, void *param3)
{
    Unk_ov23_02257740->unk_86C[param0] = 0;

    Unk_ov23_02257740->unk_8FC[param0] = 0;
}

void ov23_0223EBE4(int param0, int param1, void *param2, void *param3)
{
    u8 *v0 = param2;
    u8 v1[3];
    int v2;

    v1[0] = param0;
    v1[1] = v0[0];
    v1[2] = v0[1];

    sub_02035B48(69, v1);
}

int ov23_0223EBFC(void)
{
    return 2;
}

void ov23_0223EC00(int param0, int param1, void *param2, void *param3)
{
    u8 *v0 = param2;
    u8 v1[3];
    int v2;

    if (v0[0] == CommSys_CurNetId()) {
        return;
    }

    Unk_ov23_02257740->unk_910[v0[0]] = v0[1];
    Unk_ov23_02257740->unk_918[v0[0]] = v0[2];
}

int ov23_0223EC30(void)
{
    return 3;
}

static void ov23_0223EC34(BGL *param0)
{
    {
        UnkStruct_02099F80 v0 = {
            GX_VRAM_BG_128_A,
            GX_VRAM_BGEXTPLTT_NONE,
            GX_VRAM_SUB_BG_32_H,
            GX_VRAM_SUB_BGEXTPLTT_NONE,
            GX_VRAM_OBJ_64_E,
            GX_VRAM_OBJEXTPLTT_NONE,
            GX_VRAM_SUB_OBJ_16_I,
            GX_VRAM_SUB_OBJEXTPLTT_NONE,
            GX_VRAM_TEX_01_BC,
            GX_VRAM_TEXPLTT_01_FG
        };

        GXLayers_SetBanks(&v0);
    }
    {
        UnkStruct_ov84_0223BA5C v1 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
        };

        sub_02018368(&v1);
    }

    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0x1000,
            0,
            3,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xc000,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 0, &v2, 0);
        sub_02019690(0, 32, 0, 29);
        sub_02019EBC(param0, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0x1000,
            0,
            3,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xd000,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 1, &v3, 0);
        sub_02019690(1, 32, 0, 29);
        sub_02019EBC(param0, 1);
    }
    {
        UnkStruct_ov97_0222DB78 v4 = {
            0,
            0,
            0x1000,
            0,
            3,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe000,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_23,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0, 2, &v4, 0);
        sub_02019690(2, 32, 0, 29);
        sub_02019EBC(param0, 2);
    }
    {
        UnkStruct_ov97_0222DB78 v5 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_23,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0, 3, &v5, 0);
        sub_02019690(3, 32, 0, 29);
        sub_02019EBC(param0, 3);
    }

    sub_02019690(4, 32, 0, 29);
    sub_02019690(0, 32, 0, 29);
}

static void ov23_0223ED68(int param0, int param1, BOOL param2, BOOL param3, BOOL param4)
{
    void *v0;
    Camera *camera;
    void *v2;
    VecFx32 v3;

    if (param2) {
        CellActor_SetAnim(Unk_ov23_02257740->unk_24C[0], 0);
    } else {
        CellActor_SetAnim(Unk_ov23_02257740->unk_24C[0], 1);
    }

    if (param3) {
        CellActor_SetAnim(Unk_ov23_02257740->unk_24C[3], 2);
        Sound_PlayEffect(1700);
    } else if (param2) {
        CellActor_SetAnim(Unk_ov23_02257740->unk_24C[3], 3);
        Sound_PlayEffect(1698);
    } else {
        CellActor_SetAnim(Unk_ov23_02257740->unk_24C[3], 4);
        Sound_PlayEffect(1699);
    }

    CellActor_SetAnimateFlag(Unk_ov23_02257740->unk_24C[0], 1);
    CellActor_SetAnimateFlag(Unk_ov23_02257740->unk_24C[3], 1);

    v3.x = FX32_ONE * (param0 + 8);
    v3.y = FX32_ONE * (param1 + 8);

    CellActor_SetPosition(Unk_ov23_02257740->unk_24C[0], &v3);
    CellActor_SetPosition(Unk_ov23_02257740->unk_24C[3], &v3);

    if (param4) {
        CellActor_SetAnim(Unk_ov23_02257740->unk_24C[4], 5);
        CellActor_SetAnimateFlag(Unk_ov23_02257740->unk_24C[4], 1);
        CellActor_SetPosition(Unk_ov23_02257740->unk_24C[4], &v3);
    }
}

static void ov23_0223EE80(UnkStruct_ov23_0223EE80 *param0)
{
    int v0;
    BGL *v1;
    void *v2;
    Camera *camera;
    void *v4;
    int v5;

    sub_02004550(58, 0, 0);
    ov23_0223E140();

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
    Heap_Create(3, 29, 0x50000);

    v1 = sub_02018340(29);
    Unk_ov23_02257740->unk_04 = v1;

    SetMainCallback(ov23_022411E8, v1);

    ov23_02253E2C(ov23_0224219C(), v1, (512 - (18 + 12)), (((512 - (18 + 12)) - 73) - (27 * 4)));
    ov23_0223EC34(v1);

    sub_02019EBC(v1, 0);
    sub_02019EBC(v1, 1);
    sub_02019EBC(v1, 2);
    sub_0200DD0C(v1, 3, (512 - (18 + 12)), 10, 0, 29);

    {
        NARC *v6;

        v6 = NARC_ctor(NARC_INDEX_DATA__UG_FOSSIL, 29);
        sub_02007130(v6, 1, 0, 0, 32 * 3, 29);

        v0 = sub_020070E8(v6, 0, v1, 0, 0, 0, 0, 29);
        sub_0200710C(v6, 2, v1, 0, 0, 0, 0, 29);
        NARC_dtor(v6);
    }

    sub_02006E84(50, 52, 0, 10 * 0x20, 4 * 0x20, 29);
    ov23_0223FA3C(v1, v0, param0);
}

static void ov23_0223EF98(void)
{
    int v0;
    BGL *v1;
    void *v2;
    Camera *camera;
    void *v4;
    int v5;

    ov23_022404C8(Unk_ov23_02257740->unk_04);
    sub_02019448(Unk_ov23_02257740->unk_04, 1);

    ov23_0223FF8C(Unk_ov23_02257740->unk_04);
    sub_02006E3C(55, 9, Unk_ov23_02257740->unk_04, 2, 1, 0, 0, 29);

    ov23_022401B0(Unk_ov23_02257740->unk_04);

    BGL_SetPriority(0, 3);
    BGL_SetPriority(1, 2);
    BGL_SetPriority(2, 1);
    BGL_SetPriority(3, 0);

    ov23_02240E88();
    ov23_0224108C();
    ov23_02240688(Unk_ov23_02257740->unk_04);
}

static void ov23_0223F020(UnkStruct_ov23_0223EE80 *param0)
{
    void *v0;
    int v1;

    sub_02019044(Unk_ov23_02257740->unk_04, 0);
    sub_02019044(Unk_ov23_02257740->unk_04, 1);
    sub_02019044(Unk_ov23_02257740->unk_04, 2);
    sub_02019044(Unk_ov23_02257740->unk_04, 3);
    sub_0200A4E4(Unk_ov23_02257740->unk_1C0[0]);
    sub_0200A4E4(Unk_ov23_02257740->unk_1C0[4]);
    sub_0200A6DC(Unk_ov23_02257740->unk_1C0[1]);
    sub_0200A6DC(Unk_ov23_02257740->unk_1C0[5]);

    for (v1 = 0; v1 < 4; v1++) {
        SpriteResourceCollection_Delete(Unk_ov23_02257740->unk_1B0[v1]);
    }

    for (v1 = 0; v1 < 4; v1++) {
        if (param0->unk_18[v1] != NULL) {
            Heap_FreeToHeap(param0->unk_18[v1]);
            param0->unk_18[v1] = NULL;
        }
    }

    CellActorCollection_Delete(Unk_ov23_02257740->unk_20);
    sub_0200A878();

    sub_0201E958();
    sub_0201F8B4();

    SetMainCallback(NULL, NULL);
    Heap_FreeToHeap(Unk_ov23_02257740->unk_04);

    Unk_ov23_02257740->unk_04 = NULL;

    Heap_Destroy(29);
    ov23_02253E2C(ov23_0224219C(), Unk_ov23_02257740->fieldSystem->unk_08, (1024 - (18 + 12)), (((1024 - (18 + 12)) - 73) - (27 * 4)));
}

static void ov23_0223F118(SysTask *param0, void *param1)
{
    UnkStruct_ov23_0223EE80 *v0 = param1;
    FieldSystem *fieldSystem = v0->fieldSystem;

    switch (v0->unk_00) {
    case 0:
        ov23_0224DBF4(0);
        ov23_022417CC();
        CommPlayerMan_Reset();
        ov23_0224B430();
        (v0->unk_00)++;
        break;
    case 1:
        ov23_0224942C(fieldSystem->unk_6C);
        sub_0200F174(2, 16, 18, 0x0, 6, 1, 4);
        (v0->unk_00)++;
        break;
    case 2:
        if (ScreenWipe_Done()) {
            if (fieldSystem->unk_6C == NULL) {
                sub_0203CD44(fieldSystem);
                (v0->unk_00)++;
            }
        }
        break;
    case 3:
        if (!sub_0203CD4C(fieldSystem)) {
            sub_02039794();
            (v0->unk_00)++;
        }
        break;
    case 4:
        ov23_0223EE80(v0);
        (v0->unk_00)++;
        break;
    case 5:
        ov23_0223EF98();
        (v0->unk_00)++;
        break;
    case 6:
        sub_02039734();
        sub_0200F174(3, 17, 17, 0x0, 6, 1, 29);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        (v0->unk_00)++;
        break;
    case 7:
        if (ScreenWipe_Done()) {
            v0->unk_08 = 0;
            Sound_PlayEffect(1354);
            v0->unk_00 = 8;
        }
        break;
    case 8:
        v0->unk_08++;

        if (v0->unk_08 > 20) {
            v0->unk_00 = 9;
        }
        break;
    case 9:
        ov23_0225410C(ov23_0224219C(), 0, v0->unk_0C);
        Unk_ov23_02257740->unk_A24 = ov23_02253F60(ov23_0224219C(), 62, 0, NULL);
        v0->unk_08 = 0;
        (v0->unk_00)++;
        break;
    case 10:
        v0->unk_08++;

        if (v0->unk_08 > 80) {
            UndergroundData *v2 = sub_020298B0(FieldSystem_SaveData(Unk_ov23_02257740->fieldSystem));

            ov23_02254044(ov23_0224219C());

            if (sub_0202920C(v2)) {
                v0->unk_00++;
            } else {
                v0->unk_00 = 13;
            }
        }
        break;
    case 11:
        Unk_ov23_02257740->unk_A24 = ov23_02253F40(ov23_0224219C(), 85, 0, NULL);
        v0->unk_08 = 0;
        (v0->unk_00)++;
        break;
    case 12:
        if (Text_IsPrinterActive(Unk_ov23_02257740->unk_A24) == 0) {
            if (gCoreSys.touchPressed || (gCoreSys.pressedKeys & PAD_BUTTON_A)) {
                ov23_02254044(ov23_0224219C());
                v0->unk_00++;
            }
        }
        break;
    case 13:
        ov23_02240CFC(v0);
        ov23_02240B84(Unk_ov23_02257740->unk_04);
        ov23_0223FDE0(v0);
        CellActorCollection_Update(Unk_ov23_02257740->unk_20);
        break;
    case 14:
        ov23_0223FDE0(v0);
        CellActorCollection_Update(Unk_ov23_02257740->unk_20);

        v0->unk_08--;

        if (v0->unk_08 == 0) {
            Unk_ov23_02257740->unk_A24 = ov23_02253F40(ov23_0224219C(), 64, 0, NULL);
            Sound_PlayEffect(1507);
            v0->unk_4C = 60;
            v0->unk_00 = 15;
        }
        break;
    case 15:
        CellActorCollection_Update(Unk_ov23_02257740->unk_20);

        if (Text_IsPrinterActive(Unk_ov23_02257740->unk_A24) == 0) {
            v0->unk_4C--;

            if (gCoreSys.touchPressed || (gCoreSys.pressedKeys & PAD_BUTTON_A) || (v0->unk_4C == 0)) {
                ov23_02254044(ov23_0224219C());
                v0->unk_00 = 16;
            }
        }
        break;
    case 16:
        CellActorCollection_Update(Unk_ov23_02257740->unk_20);

        if (ov23_022409F0(v0)) {
            v0->unk_00 = 17;
            v0->unk_4C = 60;
        } else {
            v0->unk_00 = 18;
        }
        break;
    case 17:
        CellActorCollection_Update(Unk_ov23_02257740->unk_20);

        if (Text_IsPrinterActive(Unk_ov23_02257740->unk_A24) == 0) {
            v0->unk_4C--;

            if (gCoreSys.touchPressed || (gCoreSys.pressedKeys & PAD_BUTTON_A) || (v0->unk_4C == 0)) {
                if (ov23_02240A90(v0)) {
                    v0->unk_4C = 60;
                    v0->unk_00 = 15;
                } else {
                    v0->unk_00 = 16;
                }
            }
        }
        break;
    case 18:
        CellActorCollection_Update(Unk_ov23_02257740->unk_20);
        ov23_02254044(ov23_0224219C());
        sub_0200F174(3, 16, 16, 0x0, 6, 1, 29);
        (v0->unk_00)++;
        break;
    case 19:
        CellActorCollection_Update(Unk_ov23_02257740->unk_20);

        if (ScreenWipe_Done()) {
            sub_02039794();
            ov23_0223F020(v0);
            sub_020509D4(fieldSystem);
            (v0->unk_00)++;
        }
        break;
    case 20:
        if (sub_020509DC(fieldSystem)) {
            fieldSystem->unk_6C = ov23_02249404(fieldSystem);
            sub_02039734();
            sub_020594FC();
            HBlankSystem_Stop(v0->fieldSystem->unk_04->hBlankSystem);
            sub_0200F174(1, 17, 19, 0x0, 6, 1, 4);
            (v0->unk_00)++;
            break;
        }
        break;
    case 21:
        sub_0200F338(0);

        if (ScreenWipe_Done()) {
            HBlankSystem_Stop(v0->fieldSystem->unk_04->hBlankSystem);
            HBlankSystem_Start(v0->fieldSystem->unk_04->hBlankSystem);

            sub_02006E84(50, 52, 0, 10 * 0x20, 4 * 0x20, 4);
            sub_0200DAA4(v0->fieldSystem->unk_08, 3, 1024 - (18 + 12) - 9, 11, 2, 4);
            CommPlayerMan_Restart();

            ov23_0224B460();
            ov23_022417E0();

            CommSys_SendDataFixedSize(67, &v0->unk_50);
            sub_02059514();

            Unk_ov23_02257740->unk_8CC = NULL;

            Heap_FreeToHeap(v0);
            SysTask_Done(param0);

            ov23_0224DBF4(1);
        }
        break;
    case 22:
        Unk_ov23_02257740->unk_A2C = 1;
        v0->unk_08--;

        if (v0->unk_08 == 0) {
            Unk_ov23_02257740->unk_A2C = 100;
            v0->unk_00 = 23;
        }

        ov23_02240B84(Unk_ov23_02257740->unk_04);
        CellActorCollection_Update(Unk_ov23_02257740->unk_20);
        break;
    case 23:
        CellActorCollection_Update(Unk_ov23_02257740->unk_20);
        sub_0200F174(3, 2, 2, 0x0, 15, 1, 29);
        Sound_PlayEffect(1697);
        v0->unk_00 = 24;
        break;
    case 24:
        if (ScreenWipe_Done()) {
            int v3;

            for (v3 = 0; v3 < 8; v3++) {
                CellActor_SetDrawFlag(Unk_ov23_02257740->unk_24C[v3], 0);
            }

            v0->unk_00 = 25;
        } else {
            CellActorCollection_Update(Unk_ov23_02257740->unk_20);
        }

        break;
    case 25:
        sub_0200AAE0(1, -16, -16, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2, 1);
        v0->unk_00 = 26;
        break;
    case 26:
        sub_0200F32C(0);
        sub_0200F338(0);
        Unk_ov23_02257740->unk_A24 = ov23_02253F40(ov23_0224219C(), 63, 0, NULL);
        v0->unk_4C = 60;
        v0->unk_00 = 15;
        break;
    case 27:
        if (Text_IsPrinterActive(Unk_ov23_02257740->unk_A24) == 0) {
            v0->unk_4C--;

            if (gCoreSys.touchPressed || (gCoreSys.pressedKeys & PAD_BUTTON_A) || (v0->unk_4C == 0)) {
                ov23_02254044(ov23_0224219C());
                v0->unk_00 = 19;
            }
        }
        break;
    }
}

static void ov23_0223F70C(FieldSystem *fieldSystem)
{
    UnkStruct_ov23_0223EE80 *v0;
    void *v1 = sub_0202BE14(11);

    Journal_SaveData(fieldSystem->journal, v1, 1);
    v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_ov23_0223EE80));

    MI_CpuFill8(v0, 0, sizeof(UnkStruct_ov23_0223EE80));
    v0->fieldSystem = fieldSystem;

    HBlankSystem_Stop(fieldSystem->unk_04->hBlankSystem);
    sub_0206AA04(SaveData_GetVarsFlags(fieldSystem->saveData));

    Unk_ov23_02257740->unk_8CC = SysTask_Start(ov23_0223F118, v0, 100);
}

static BOOL ov23_0223F768(void)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        if (Unk_ov23_02257740->unk_874[v0].unk_00 == NULL) {
            return 1;
        }
    }

    return 0;
}

static int ov23_0223F78C(int param0, int param1, int param2)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        if (Unk_ov23_02257740->unk_874[v0].unk_00 == NULL) {
            Unk_ov23_02257740->unk_874[v0].unk_00 = &Unk_ov23_02256EB0[param0];
            Unk_ov23_02257740->unk_874[v0].unk_04 = Unk_ov23_02256EB0[param0].unk_0E;
            Unk_ov23_02257740->unk_874[v0].unk_05 = param1;
            Unk_ov23_02257740->unk_874[v0].unk_06 = param2;
            Unk_ov23_02257740->unk_874[v0].unk_08 = 0;

            return v0 + 1;
        }
    }

    GF_ASSERT(FALSE);
    return 0;
}

static BOOL ov23_0223F804(UnkStruct_ov23_02256EB0 *param0, int param1, int param2)
{
    u8 *v0 = param0->unk_00;
    int v1, v2, v3;

    if (v0 == NULL) {
        return 1;
    }

    v2 = param2 / 2;
    v1 = param1 / 2;
    v3 = param0->unk_0C / 2;

    if (v0[v2 * v3 + v1] == 'o') {
        return 0;
    }

    return 1;
}

static BOOL ov23_0223F838(int param0, int param1, int param2)
{
    int v0, v1, v2, v3, v4;

    if (!ov23_0223F768()) {
        return 0;
    }

    v2 = Unk_ov23_02256EB0[param0].unk_0C / 2 + param1;
    v3 = Unk_ov23_02256EB0[param0].unk_0D / 2 + param2;

    if (v2 > 13) {
        return 0;
    }

    if (v3 > 10) {
        return 0;
    }

    for (v0 = param1; v0 < v2; v0++) {
        for (v1 = param2; v1 < v3; v1++) {
            if (ov23_0223F804(&Unk_ov23_02256EB0[param0], (v0 - param1) * 2, (v1 - param2) * 2)) {
                if (Unk_ov23_02257740->unk_920[v1][v0] != 0) {
                    return 0;
                }
            }
        }
    }

    v4 = ov23_0223F78C(param0, param1, param2);

    for (v0 = param1; v0 < v2; v0++) {
        for (v1 = param2; v1 < v3; v1++) {
            if (ov23_0223F804(&Unk_ov23_02256EB0[param0], (v0 - param1) * 2, (v1 - param2) * 2)) {
                Unk_ov23_02257740->unk_920[v1][v0] = v4;
            }
        }
    }

    return 1;
}

static int ov23_0223F970(UnkStruct_ov23_02256EB0 *param0)
{
    SaveData *v0 = FieldSystem_SaveData(Unk_ov23_02257740->fieldSystem);
    UndergroundData *v1 = sub_020298B0(v0);
    BOOL v2 = TrainerInfo_ID(SaveData_GetTrainerInfo(v0)) % 2;
    BOOL v3 = sub_02027474(SaveData_Pokedex(v0));
    int v4 = 0;

    if (v3) {
        if (v2) {
            v4 += param0->unk_08;
        } else {
            v4 += param0->unk_0A;
        }
    } else {
        if (v2) {
            v4 += param0->unk_04;
        } else {
            v4 += param0->unk_06;
        }
    }

    return v4;
}

static int ov23_0223F9C8(void)
{
    int v0, v1 = 0;

    for (v0 = 0; v0 < NELEMS(Unk_ov23_02256EB0); v0++) {
        if (60 == Unk_ov23_02256EB0[v0].unk_0E) {
            break;
        }

        v1 += ov23_0223F970(&Unk_ov23_02256EB0[v0]);
    }

    return v1;
}

static int ov23_0223F9F0(int param0)
{
    int v0, v1 = param0;

    for (v0 = 0; v0 < NELEMS(Unk_ov23_02256EB0); v0++) {
        if (60 == Unk_ov23_02256EB0[v0].unk_0E) {
            break;
        }

        v1 -= ov23_0223F970(&Unk_ov23_02256EB0[v0]);

        if (v1 < 0) {
            return v0;
        }
    }

    GF_ASSERT(FALSE);
    return 0;
}

static int ov23_0223FA20(void)
{
    int v0, v1 = 0;

    for (v0 = 0; v0 < NELEMS(Unk_ov23_02256EB0); v0++) {
        if (Unk_ov23_02256EB0[v0].unk_0E >= 60) {
            v1++;
        }
    }

    return v1;
}

static void ov23_0223FA3C(BGL *param0, int param1, UnkStruct_ov23_0223EE80 *param2)
{
    UndergroundData *v0 = sub_020298B0(FieldSystem_SaveData(Unk_ov23_02257740->fieldSystem));
    int v1, v2, v3 = ov23_0223F9C8();
    int v4, v5, v6, v7, v8 = 0, v9, v10;
    int v11 = ov23_0223FA20();
    int v12[4];

    param2->unk_0C = MATH_Rand32(&Unk_ov23_02257740->unk_08, (4 - 1)) + 2;

    if (sub_0202920C(v0)) {
        param2->unk_0C = 3;
    }

    for (v1 = 0; v1 < param2->unk_0C;) {
        v4 = MATH_Rand32(&Unk_ov23_02257740->unk_08, v3);
        v9 = ov23_0223F9F0(v4);
        v10 = Unk_ov23_02256EB0[v9].unk_0E;

        if (!sub_02029274(v0, Unk_ov23_02256EB0[v9].unk_0E)) {
            continue;
        }

        if ((44 <= v10) && (v10 <= 59)) {
            BOOL v13 = 0;

            v12[v1] = v10;

            for (v2 = 0; v2 < v1; v2++) {
                if (v12[v2] == v10) {
                    v13 = 1;
                }
            }

            if (v13) {
                continue;
            }
        } else {
            v12[v1] = 28;
        }

        v6 = MATH_Rand32(&Unk_ov23_02257740->unk_08, 13);
        v7 = MATH_Rand32(&Unk_ov23_02257740->unk_08, 10);

        if (ov23_0223F838(v9, v6, v7)) {
            v1++;
        }
    }

    if (!sub_0202920C(v0)) {
        for (v8 = 0; v8 < 100; v8++) {
            v9 = MATH_Rand32(&Unk_ov23_02257740->unk_08, v11);
            v9 += NELEMS(Unk_ov23_02256EB0) - v11;
            v6 = MATH_Rand32(&Unk_ov23_02257740->unk_08, 13);
            v7 = MATH_Rand32(&Unk_ov23_02257740->unk_08, 10);

            if (ov23_0223F838(v9, v6, v7)) {
                v1++;
            }

            if (v1 > 12) {
                break;
            }
        }
    }

    ov23_0223FF60(v1, param0, param1, param2);
}

static int ov23_0223FC9C(int param0, BGL *param1, int param2, UnkStruct_ov23_0223EE80 *param3)
{
    UnkStruct_ov23_0223FC9C *v0 = &Unk_ov23_02257740->unk_874[param0];
    u16 *v1 = sub_02019FE4(param1, 1);
    int v2 = v0->unk_05 * 2;
    int v3 = v0->unk_06 * 2;
    int v4 = v2 + v0->unk_00->unk_0C;
    int v5 = v3 + v0->unk_00->unk_0D;
    int v6, v7, v8, v9 = param2;
    u32 v10;
    int v11 = param0;
    NARC *v12;

    v12 = NARC_ctor(NARC_INDEX_DATA__UG_PARTS, 29);

    if (param0 >= param3->unk_0C) {
        v11 = 4;
    }

    if (param0 >= param3->unk_0C) {
        sub_02007130(v12, v0->unk_00->unk_12, 0, (v11 + 3) * 32, 32, 29);
    } else {
        param3->unk_18[param0] = sub_020071EC(v12, v0->unk_00->unk_12, &param3->unk_28[param0], 29);
        DC_FlushRange(param3->unk_28[param0]->pRawData, 32);
        GX_LoadBGPltt(param3->unk_28[param0]->pRawData, (v11 + 3) * 32, 32);
    }

    v10 = sub_020070E8(v12, v0->unk_00->unk_10, param1, 1, param2, 0, 0, 29);
    NARC_dtor(v12);

    for (v6 = v3; v6 < v5; v6++) {
        for (v7 = v2; v7 < v4; v7++) {
            v9++;

            if (!ov23_0223F804(v0->unk_00, v7 - v2, v6 - v3)) {
                continue;
            }

            v8 = v7 + ((v6 + 4) * 32);
            v1[v8] = ((v11 + 3) * 0x1000) + v9 - 1;
        }
    }

    return v10;
}

static u8 Unk_ov23_02257570[] = {
    0x20,
    0xfe,
    0x40,
    0xfe,
    0x20,
    0xfe,
    0x0,
    0xfe,
    0x20,
    0xfe,
    0x40,
    0xfe,
    0x20,
    0xfe,
    0x0,
    0xff
};

static void ov23_0223FDE0(UnkStruct_ov23_0223EE80 *param0)
{
    int v0, v1, v2, v3;
    VecFx32 v4;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_38[v0] == 1) {
            Sound_PlayEffect(1703);

            for (v3 = 0; v3 < 3; v3++) {
                v1 = MATH_Rand32(&Unk_ov23_02257740->unk_08, Unk_ov23_02257740->unk_874[v0].unk_00->unk_0C * 8);
                v2 = MATH_Rand32(&Unk_ov23_02257740->unk_08, Unk_ov23_02257740->unk_874[v0].unk_00->unk_0D * 8);
                v1 += Unk_ov23_02257740->unk_874[v0].unk_05 * 2 * 8;
                v2 += Unk_ov23_02257740->unk_874[v0].unk_06 * 2 * 8;
                v2 += 8 * 4;

                v4.x = FX32_ONE * v1;
                v4.y = FX32_ONE * v2;

                CellActor_SetAnim(Unk_ov23_02257740->unk_24C[5 + v3], 8 + v3);
                CellActor_SetPosition(Unk_ov23_02257740->unk_24C[5 + v3], &v4);
            }
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_38[v0]) {
            u16 *v5 = param0->unk_28[v0]->pRawData;
            u8 v6 = Unk_ov23_02257570[param0->unk_38[v0] - 1];

            if (v6 == 0xff) {
                param0->unk_38[v0] = 0;
                continue;
            }

            param0->unk_38[v0]++;

            if (v6 == 0xfe) {
                continue;
            }

            GX_LoadBGPltt(&v5[v6], (v0 + 3) * 32, 32);
        }
    }
}

static void ov23_0223FF60(int param0, BGL *param1, int param2, UnkStruct_ov23_0223EE80 *param3)
{
    int v0, v1 = 512 + 24 * 3 + 32 + 1;
    u32 v2;

    for (v0 = 0; v0 < param0; v0++) {
        v2 = ov23_0223FC9C(v0, param1, v1, param3);
        v1 += v2 / 32;
    }
}

static void ov23_0223FF8C(BGL *param0)
{
    static const u8 v0 = 8;
    static const u8 v1 = 5;
    static u8 v2[v0][v0] = {
        { 0, 0, 4, 4, 4, 4, 0, 0 },
        { 0, 4, 4, 4, 4, 4, 4, 0 },
        { 4, 4, 4, 4, 4, 4 },
        { 4, 4, 4, 4, 4, 4 },
        { 4, 4, 4, 4, 4, 4 },
        { 4, 4, 4, 4, 4, 4 },
        { 0, 4, 4, 4, 4, 4, 4, 0 },
        { 0, 0, 4, 4, 4, 4, 0, 0 }
    };
    static u8 v3[v1][v1] = {
        { 0, 6, 6, 6, 0 },
        { 6, 6, 6, 6, 6 },
        { 6, 6, 6, 6, 6 },
        { 6, 6, 6, 6, 6 },
        { 0, 6, 6, 6, 0 }
    };
    int v4, v5, v6, v7, v8, v9, v10;
    BOOL v11 = 1;

    for (v10 = 0; v10 < 10; v10++) {
        v8 = MATH_Rand32(&Unk_ov23_02257740->unk_08, 13 + v0) - v0;
        v9 = MATH_Rand32(&Unk_ov23_02257740->unk_08, 10 + v0) - v1;

        for (v7 = v9; v7 < v9 + v0; v7++) {
            if ((v7 >= 10) || (v7 < 0)) {
                continue;
            }

            for (v6 = v8; v6 < v8 + v0; v6++) {
                if ((v6 >= 13) || (v6 < 0)) {
                    continue;
                }

                if (v2[v7 - v9][v6 - v8] == 0) {
                    continue;
                }

                Unk_ov23_02257740->unk_9A2[v7][v6] = v2[v7 - v9][v6 - v8];
            }
        }
    }

    for (v10 = 0; v10 < 15; v10++) {
        v8 = MATH_Rand32(&Unk_ov23_02257740->unk_08, 13 + v1) - v1;
        v9 = MATH_Rand32(&Unk_ov23_02257740->unk_08, 10 + v1) - v1;
        v11 = 1;

        for (v7 = v9; v7 < v9 + v1; v7++) {
            if ((v7 >= 10) || (v7 < 0)) {
                continue;
            }

            for (v6 = v8; v6 < v8 + v1; v6++) {
                if ((v6 >= 13) || (v6 < 0)) {
                    continue;
                }

                if (v2[v7 - v9][v6 - v8] == 0) {
                    continue;
                }

                if (Unk_ov23_02257740->unk_9A2[v7][v6] < 4) {
                    v11 = 0;
                    break;
                }
            }

            if (v11 == 0) {
                break;
            }
        }

        if (!v11) {
            continue;
        }

        for (v7 = v9; v7 < v9 + v1; v7++) {
            if ((v7 >= 10) || (v7 < 0)) {
                continue;
            }

            for (v6 = v8; v6 < v8 + v1; v6++) {
                if ((v6 >= 13) || (v6 < 0)) {
                    continue;
                }

                if (v3[v7 - v9][v6 - v8] == 0) {
                    continue;
                }

                Unk_ov23_02257740->unk_9A2[v7][v6] = v3[v7 - v9][v6 - v8];
            }
        }
    }

    for (v7 = 0; v7 < 10; v7++) {
        for (v6 = 0; v6 < 13; v6++) {
            (void)0;
        }
    }
}

static void ov23_022401B0(BGL *param0)
{
    static u8 v0[] = { 0xe, 0xf, 0x1e, 0x1f };
    static u8 v1[] = { 0xa, 0xb, 0x1a, 0x1b };
    static u8 v2[] = { 0x8, 0x9, 0x18, 0x19 };
    static u8 v3[] = { 0x6, 0x7, 0x16, 0x17 };
    static u8 v4[] = { 0x4, 0x5, 0x14, 0x15 };
    static u8 v5[] = { 0x2, 0x3, 0x12, 0x13 };
    static u8 v6[] = { 0x0, 0x1, 0x10, 0x11 };
    static u8 *v7[] = { v0, v1, v2, v3, v4, v5, v6 };
    u16 *v8 = sub_02019FE4(param0, 2);
    int v9, v10, v11;

    for (v9 = 0; v9 < 10; v9++) {
        for (v10 = 0; v10 < 13; v10++) {
            u8 *v12 = v7[Unk_ov23_02257740->unk_9A2[v9][v10]];

            v11 = v10 * 2 + ((v9 * 2 + 4) * 32);
            v8[v11] = v12[0] + 0x2001;
            v8[v11 + 1] = v12[1] + 0x2001;
            v8[v11 + 32] = v12[2] + 0x2001;
            v8[v11 + 33] = v12[3] + 0x2001;
        }
    }

    sub_02019448(param0, 2);
}

static BOOL ov23_02240244(int param0, int param1)
{
    int v0;
    int v1 = Unk_ov23_02257740->unk_920[param1][param0];

    if (v1 == 0) {
        return 0;
    }

    v0 = Unk_ov23_02257740->unk_874[v1 - 1].unk_04;

    if ((v0 != 0) && (v0 < 60)) {
        return 1;
    }

    return 0;
}

static BOOL ov23_02240280(int param0, int param1)
{
    int v0 = Unk_ov23_02257740->unk_920[param1][param0];

    if (v0 == 0) {
        return 0;
    }

    if (Unk_ov23_02257740->unk_874[v0 - 1].unk_04 >= 60) {
        return 1;
    }

    return 0;
}

static void ov23_022402B8(int param0, int param1, BOOL param2, UnkStruct_ov23_0223EE80 *param3)
{
    static s8 v0[] = { 1, -1, -1, 1 };
    static s8 v1[] = { 1, -1, 1, -1 };
    static s8 v2[] = { 0, 0, -1, 1 };
    static s8 v3[] = { 1, -1, 0, 0 };
    int v4, v5, v6, v7;
    BOOL v8 = 0, v9 = 0;

    v4 = param0 / 16;
    v5 = param1 / 16 - 2;

    if ((v4 < 0) || (v4 >= 13) || (v5 < 0) || (v5 >= 10)) {
        return;
    }

    if (Unk_ov23_02257740->unk_9A2[v5][v4] != 0) {
        Unk_ov23_02257740->unk_9A2[v5][v4] -= 1;
    }

    if (Unk_ov23_02257740->unk_9A2[v5][v4] != 0) {
        Unk_ov23_02257740->unk_9A2[v5][v4] -= 1;
    }

    if (ov23_02240280(v4, v5) && (Unk_ov23_02257740->unk_9A2[v5][v4] == 0)) {
        v8 = 1;
    }

    if (ov23_02240244(v4, v5) && (Unk_ov23_02257740->unk_9A2[v5][v4] == 0)) {
        v9 = 1;
        param3->unk_14 = 15;
    }

    ov23_0223ED68(v4 * 16, (v5 + 2) * 16, param2, v8, v9);

    if (v8) {
        return;
    }

    if (!param2) {
        for (v7 = 0; v7 < 4; v7++) {
            int v10 = v5 + v1[v7];
            int v11 = v4 + v0[v7];

            if ((v10 >= 0) && (v10 < 10)) {
                if ((v11 >= 0) && (v11 < 13)) {
                    if (Unk_ov23_02257740->unk_9A2[v10][v11] != 0) {
                        Unk_ov23_02257740->unk_9A2[v10][v11] -= 1;
                    }
                }
            }
        }
    }

    for (v7 = 0; v7 < 4; v7++) {
        int v12 = v5 + v3[v7];
        int v13 = v4 + v2[v7];

        if ((v12 >= 0) && (v12 < 10)) {
            if ((v13 >= 0) && (v13 < 13)) {
                if (Unk_ov23_02257740->unk_9A2[v12][v13] != 0) {
                    Unk_ov23_02257740->unk_9A2[v12][v13] -= 1;
                }

                if (!param2) {
                    if (Unk_ov23_02257740->unk_9A2[v12][v13] != 0) {
                        Unk_ov23_02257740->unk_9A2[v12][v13] -= 1;
                    }
                }
            }
        }
    }
}

static void ov23_02240454(u16 *param0, UnkStruct_ov23_02256BF8 *param1, int param2, int param3)
{
    int v0, v1, v2, v3, v4;

    for (v1 = param1->unk_01, v4 = 0; v1 < param1->unk_03; v1++, v4++) {
        v3 = param3 * v4 + param2;

        for (v2 = param1->unk_00; v2 < param1->unk_02; v2++) {
            v0 = v2 + (v1 * 32);
            param0[v0] = (param0[v0] & 0xfc00) + v3;
            v3++;
        }
    }
}

static UnkStruct_ov23_02256BF8 Unk_ov23_02256BF8[] = {
    0x1A,
    0x6,
    0x20,
    0xE
};

static UnkStruct_ov23_02256BF8 Unk_ov23_02256BF4[] = {
    0x1A,
    0xf,
    0x20,
    0x17
};

static UnkStruct_ov23_02256BF8 endPos[] = {
    0x1a,
    0x0,
    0x20,
    0x4
};

static void ov23_022404C8(BGL *param0)
{
    u16 *v0;

    Unk_ov23_02257740->unk_A2A = 1;
    Unk_ov23_02257740->unk_A28 = 1;

    v0 = sub_02019FE4(param0, 1);
    ov23_02240454(v0, Unk_ov23_02256BF4, 0x30, 54);
}

static void ov23_022404F8(BGL *param0, int param1, int param2, int param3)
{
    VecFx32 v0;
    u8 *v1;
    u16 *v2;

    if (param3 < 2) {
        return;
    }

    if (param3 == 2) {
        if ((param1 > (0x1a * 8 + 6)) && ((0x1f * 8 + 4) > param1)) {
            if ((param2 > (5 * 8 + 3)) && ((0xd * 8 + 6) > param2)) {
                Unk_ov23_02257740->unk_A2A = 0;
                Unk_ov23_02257740->unk_A28 = 0;
            } else if ((param2 > (0xe * 8 + 2)) && ((0x15 * 8 + 6) > param2)) {
                Unk_ov23_02257740->unk_A2A = 1;
                Unk_ov23_02257740->unk_A28 = 1;
            } else {
                return;
            }
        } else {
            return;
        }
    }

    v2 = sub_02019FE4(param0, 1);

    switch (Unk_ov23_02257740->unk_A2A) {
    case 0:
        if (2 == param3) {
            ov23_02240454(v2, Unk_ov23_02256BF8, 0x18, 54);
            ov23_02240454(v2, Unk_ov23_02256BF4, 0x24, 54);
            Sound_PlayEffect(1500);
        } else if (2 + 1 == param3) {
            ov23_02240454(v2, Unk_ov23_02256BF8, 0x1e, 54);
        }

        if (2 == param3) {
            CellActor_SetAnim(Unk_ov23_02257740->unk_24C[2], 6);
            CellActor_SetAnimateFlag(Unk_ov23_02257740->unk_24C[2], 1);

            v0.x = FX32_ONE * 232;
            v0.y = FX32_ONE * 80;

            CellActor_SetPosition(Unk_ov23_02257740->unk_24C[2], &v0);
        }
        break;
    case 1:
        if (2 == param3) {
            ov23_02240454(v2, Unk_ov23_02256BF8, 0x12, 54);
            ov23_02240454(v2, Unk_ov23_02256BF4, 0x2a, 54);
            Sound_PlayEffect(1500);
        } else if (2 + 1 == param3) {
            ov23_02240454(v2, Unk_ov23_02256BF4, 0x30, 54);
        }

        if (2 == param3) {
            CellActor_SetAnim(Unk_ov23_02257740->unk_24C[2], 7);
            CellActor_SetAnimateFlag(Unk_ov23_02257740->unk_24C[2], 1);

            v0.x = FX32_ONE * 232;
            v0.y = FX32_ONE * 152;

            CellActor_SetPosition(Unk_ov23_02257740->unk_24C[2], &v0);
        }
        break;
    }

    sub_02019448(param0, 1);
}

static void ov23_02240660(VecFx32 *param0)
{
    int v0;
    int v1 = Unk_ov23_02257740->unk_A2B;

    v1 = (v1 / 4) * 4;
    v1 = v1 + 8;

    param0->x = FX32_ONE * (v1 + 8);
    param0->y = FX32_ONE * 16;
}

static void ov23_02240688(BGL *param0)
{
    VecFx32 v0;
    int v1 = Unk_ov23_02257740->unk_A2B;
    int v2, v3, v4;
    u16 *v5 = sub_02019FE4(param0, 0);

    v1 = (v1 / 4) * 4;
    v4 = 6 - (v1 % 24) / 4;

    ov23_02240660(&v0);
    CellActor_SetAnim(Unk_ov23_02257740->unk_24C[1], v4);

    v1 = v1 + 8;
    v2 = ((26 * 8) - v1) / 8;

    for (v3 = 0; v3 < v2; v3++) {
        v5[0x19 - v3] = (v5[0x19 - v3] & 0xfc00) + 0xb - (v3 % 3);
        v5[0x39 - v3] = (v5[0x39 - v3] & 0xfc00) + 0x41 - (v3 % 3);
        v5[0x59 - v3] = (v5[0x59 - v3] & 0xfc00) + 0x77 - (v3 % 3);
        v5[0x79 - v3] = (v5[0x79 - v3] & 0xfc00) + 0xad - (v3 % 3);
    }

    sub_02019448(param0, 0);
}

static void ov23_02240758(UnkStruct_ov23_0223EE80 *param0)
{
    BOOL v0 = 0;
    int v1;

    for (v1 = 0; v1 < (7 + 1); v1++) {
        if ((Unk_ov23_02257740->unk_910[v1] != 0xff) && (Unk_ov23_02257740->unk_918[v1] != 0xff)) {
            int v2 = CommPlayer_XPos(CommSys_CurNetId());
            int v3 = CommPlayer_ZPos(CommSys_CurNetId());
            int v4 = ov23_0224AD04(v1);
            int v5 = ov23_0224AD40(v1);

            if ((v4 > (v2 - 10)) && (v4 < (v2 + 10))) {
                if ((v5 > (v3 - 10)) && (v5 < (v3 + 10))) {
                    ov23_022402B8(Unk_ov23_02257740->unk_910[v1], Unk_ov23_02257740->unk_918[v1], 1, param0);
                    v0 = 1;

                    Unk_ov23_02257740->unk_910[v1] = 0xff;
                    Unk_ov23_02257740->unk_918[v1] = 0xff;
                }
            }
        }
    }

    if (v0) {
        ov23_022401B0(Unk_ov23_02257740->unk_04);
    }
}

static int ov23_0224080C(int param0)
{
    int v0 = 0;
    int v1 = param0;

    if (ov23_02241CF4(v1)) {
        if ((v1 == 6) || (v1 == 7) || (v1 == 1) || (v1 == 2)) {
            v0 = MATH_Rand32(&Unk_ov23_02257740->unk_08, 1) + 1;
        } else {
            v0 = MATH_Rand32(&Unk_ov23_02257740->unk_08, 4) + 1;
        }

        if ((v1 == 6) || (v1 == 7) || (v1 == 8) || (v1 == 9) || (v1 == 10)) {
            v1 = v1 - 6 + 1;
            v0 += 10;
        }

        v0 += Unk_ov23_02257740->unk_A2B / ((200 - 4) / 5);

        if (Unk_ov23_02257740->unk_A2B != 0) {
            v0 += 5;
        }
    }

    return v0;
}

static void ov23_022408A0(int param0, int param1)
{
    int v0 = param0;
    SecretBaseRecord *v1 = SaveData_SecretBaseRecord(FieldSystem_SaveData(Unk_ov23_02257740->fieldSystem));
    UndergroundData *v2 = sub_020298B0(FieldSystem_SaveData(Unk_ov23_02257740->fieldSystem));

    if (ov23_02241CF4(v0)) {
        ov23_0224F6E0(v0, param1);
    } else {
        ov23_0224F710(v0);
        sub_02029250(v2, v0);
    }
}

static BOOL ov23_022408EC(int param0)
{
    UndergroundData *v0 = sub_020298B0(FieldSystem_SaveData(Unk_ov23_02257740->fieldSystem));

    if (ov23_02241CF4(param0)) {
        if (40 == sub_02028C3C(v0)) {
            return 0;
        }

        return 1;
    } else {
        if (40 == sub_02028D58(v0)) {
            return 0;
        }

        return 1;
    }
}

static BOOL ov23_02240934(UnkStruct_ov23_0223EE80 *param0)
{
    int v0, v1, v2;
    BOOL v3[4];
    BOOL v4 = 1;

    for (v2 = 0; v2 < param0->unk_0C; v2++) {
        v3[v2] = 1;
    }

    for (v0 = 0; v0 < 10; v0++) {
        for (v1 = 0; v1 < 13; v1++) {
            v2 = Unk_ov23_02257740->unk_920[v0][v1];

            if ((v2 <= param0->unk_0C) && (v2 != 0)) {
                if (Unk_ov23_02257740->unk_9A2[v0][v1] != 0) {
                    v3[v2 - 1] = 0;
                }
            }
        }
    }

    for (v2 = 0; v2 < param0->unk_0C; v2++) {
        if (!v3[v2]) {
            v4 = 0;
        } else if (Unk_ov23_02257740->unk_874[v2].unk_08 == 0) {
            param0->unk_38[v2] = 1;
            Unk_ov23_02257740->unk_874[v2].unk_08 = 1;
        }
    }

    return v4;
}

static BOOL ov23_022409F0(UnkStruct_ov23_0223EE80 *param0)
{
    int v0, v1;

    for (v0 = 0; v0 < param0->unk_0C; v0++) {
        if (Unk_ov23_02257740->unk_874[v0].unk_08 == 1) {
            param0->unk_48 = ov23_0224080C(Unk_ov23_02257740->unk_874[v0].unk_04);

            ov23_02254080(ov23_0224219C(), Unk_ov23_02257740->unk_874[v0].unk_04);

            if (ov23_02241CF4(Unk_ov23_02257740->unk_874[v0].unk_04)) {
                v1 = 69;
                ov23_02254154(ov23_0224219C(), 1, param0->unk_48);
            } else {
                v1 = 17;
                ov23_02254204(ov23_0224219C(), 2);
            }

            Unk_ov23_02257740->unk_A24 = ov23_02253F40(ov23_0224219C(), v1, 0, NULL);
            return 1;
        }
    }

    return 0;
}

static BOOL ov23_02240A90(UnkStruct_ov23_0223EE80 *param0)
{
    int v0, v1, v2;
    SecretBaseRecord *v3 = SaveData_SecretBaseRecord(Unk_ov23_02257740->fieldSystem->saveData);
    UndergroundData *v4 = sub_020298B0(Unk_ov23_02257740->fieldSystem->saveData);

    for (v0 = 0; v0 < param0->unk_0C; v0++) {
        if (Unk_ov23_02257740->unk_874[v0].unk_08 == 1) {
            Unk_ov23_02257740->unk_874[v0].unk_08 = 0;

            v2 = Unk_ov23_02257740->unk_874[v0].unk_04;

            if (ov23_02241CF4(v2)) {
                sub_020295F8(v3, 1);
            } else {
                sub_0206D6C8(Unk_ov23_02257740->fieldSystem, v2, 1);

                if ((v2 >= 23) && ((28 + 1) > v2) || (v2 == 36) || (v2 == 37)) {
                    sub_02029644(v3, 1);
                    {
                        VarsFlags *v5 = SaveData_GetVarsFlags(Unk_ov23_02257740->fieldSystem->saveData);

                        sub_0206B41C(v5, sub_0206B40C(v5) + 1);
                    }
                } else {
                    sub_02029688(v3, 1);
                }
            }

            if (ov23_022408EC(v2)) {
                ov23_022408A0(v2, param0->unk_48);
                break;
            } else {
                Unk_ov23_02257740->unk_A24 = ov23_02253F40(ov23_0224219C(), 65, 0, NULL);
                return 1;
            }
        }
    }

    return 0;
}

static void ov23_02240B84(BGL *param0)
{
    int v0, v1, v2;
    VecFx32 v3;

    if (Unk_ov23_02257740->unk_A2C == 0) {
        return;
    }

    v1 = (((200 - 4) - Unk_ov23_02257740->unk_A2B) / 15);
    v2 = (((200 - 4) - Unk_ov23_02257740->unk_A2B) / 50);

    Unk_ov23_02257740->unk_A2C++;

    if (Unk_ov23_02257740->unk_A2C > v1) {
        Unk_ov23_02257740->unk_A2D = Unk_ov23_02257740->unk_A2E = 0;
    } else {
        Unk_ov23_02257740->unk_A2D = MATH_Rand32(&Unk_ov23_02257740->unk_08, 3 + v2) - (3 + v2) / 2;
        Unk_ov23_02257740->unk_A2E = MATH_Rand32(&Unk_ov23_02257740->unk_08, 3 + v2) - (3 + v2) / 2;
    }

    ov23_02240660(&v3);

    v3.x -= Unk_ov23_02257740->unk_A2D * FX32_ONE;
    v3.y -= Unk_ov23_02257740->unk_A2E * FX32_ONE;

    CellActor_SetPosition(Unk_ov23_02257740->unk_24C[1], &v3);
}

static void ov23_02240C94(BGL *param0)
{
    int v0, v1, v2;
    VecFx32 v3;

    if (Unk_ov23_02257740->unk_A2C == 0) {
        return;
    }

    v1 = (((200 - 4) - Unk_ov23_02257740->unk_A2B) / 10);

    if (Unk_ov23_02257740->unk_A2C > v1) {
        Unk_ov23_02257740->unk_A2C = 0;
    }

    for (v0 = 0; v0 < 3; v0++) {
        sub_02019184(param0, v0, 0, Unk_ov23_02257740->unk_A2D);
        sub_02019184(param0, v0, 3, Unk_ov23_02257740->unk_A2E);
    }
}

static BOOL ov23_02240CFC(UnkStruct_ov23_0223EE80 *param0)
{
    u8 v0[2];
    int v1;
    UndergroundData *v2 = sub_020298B0(FieldSystem_SaveData(Unk_ov23_02257740->fieldSystem));

    if (Unk_ov23_02257740->unk_A29 == 1) {
        Unk_ov23_02257740->unk_A29 = 0;
    }

    if (gCoreSys.touchPressed) {
        if ((gCoreSys.touchX < 2 * 8 * 13) && (gCoreSys.touchY >= 4 * 8)) {
            v0[0] = gCoreSys.touchX;
            v0[1] = gCoreSys.touchY;

            ov23_022402B8(gCoreSys.touchX, gCoreSys.touchY, Unk_ov23_02257740->unk_A28, param0);

            if (Unk_ov23_02257740->unk_A28) {
                v1 = 4;
            } else {
                v1 = 8;
            }

            CommSys_SendDataFixedSize(68, v0);

            if (Unk_ov23_02257740->unk_A2B > v1) {
                Unk_ov23_02257740->unk_A2B -= v1;
            } else {
                Unk_ov23_02257740->unk_A2B = 0;
            }

            ov23_022401B0(Unk_ov23_02257740->unk_04);
            ov23_02240688(Unk_ov23_02257740->unk_04);

            Unk_ov23_02257740->unk_A2C = 1;
        } else if (gCoreSys.touchX >= (2 * 8 * 13)) {
            Unk_ov23_02257740->unk_A29 = 2;
        }
    }

    if (param0->unk_14) {
        param0->unk_14--;

        if (param0->unk_14 == 0) {
            Sound_PlayEffect(1701);
        }
    }

    ov23_022404F8(Unk_ov23_02257740->unk_04, gCoreSys.touchX, gCoreSys.touchY, Unk_ov23_02257740->unk_A29);

    if (Unk_ov23_02257740->unk_A29 >= 2) {
        Unk_ov23_02257740->unk_A29++;
    }

    ov23_02240758(param0);

    if (ov23_02240934(param0)) {
        sub_02029220(v2);
        GameRecords_IncrementTrainerScore(SaveData_GetGameRecordsPtr(Unk_ov23_02257740->fieldSystem->saveData), TRAINER_SCORE_EVENT_UNK_30);
        param0->unk_00 = 14;
        param0->unk_08 = 25;
        param0->unk_50 = 1;
        return 1;
    } else if (Unk_ov23_02257740->unk_A2B == 0) {
        sub_02029220(v2);
        param0->unk_50 = 0;
        param0->unk_08 = 45;
        param0->unk_00 = 22;

        return 1;
    }

    return 0;
}

static void ov23_02240E60(SpriteResource *param0)
{
    Unk_ov23_02257740->unk_1C0[Unk_ov23_02257740->unk_A2F] = param0;
    Unk_ov23_02257740->unk_A2F++;
}

static void ov23_02240E88(void)
{
    int v0;
    NARC *v1;

    Unk_ov23_02257740->unk_A2F = 0;

    NNS_G2dInitOamManagerModule();

    sub_0200A784(0, 124, 0, 31, 0, 124, 0, 31, 29);
    ov23_0224119C();

    Unk_ov23_02257740->unk_20 = sub_020095C4(26, &Unk_ov23_02257740->unk_24, 29);

    sub_0200964C(&Unk_ov23_02257740->unk_24, 0, (192 << FX32_SHIFT) * 2);

    for (v0 = 0; v0 < 4; v0++) {
        Unk_ov23_02257740->unk_1B0[v0] = SpriteResourceCollection_New(2, v0, 29);
    }

    v1 = NARC_ctor(NARC_INDEX_DATA__UG_ANIM, 29);

    ov23_02240E60(SpriteResourceCollection_AddTilesFrom(Unk_ov23_02257740->unk_1B0[0], v1, 6, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 29));
    sub_0200A328(Unk_ov23_02257740->unk_1C0[Unk_ov23_02257740->unk_A2F - 1]);
    ov23_02240E60(SpriteResourceCollection_AddPaletteFrom(Unk_ov23_02257740->unk_1B0[1], v1, 7, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 1, 29));

    sub_0200A640(Unk_ov23_02257740->unk_1C0[Unk_ov23_02257740->unk_A2F - 1]);

    ov23_02240E60(SpriteResourceCollection_AddFrom(Unk_ov23_02257740->unk_1B0[2], v1, 5, 0, 0, 2, 29));
    ov23_02240E60(SpriteResourceCollection_AddFrom(Unk_ov23_02257740->unk_1B0[3], v1, 4, 0, 0, 3, 29));
    ov23_02240E60(SpriteResourceCollection_AddTilesFrom(Unk_ov23_02257740->unk_1B0[0], v1, 3, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 29));

    sub_0200A328(Unk_ov23_02257740->unk_1C0[Unk_ov23_02257740->unk_A2F - 1]);
    ov23_02240E60(SpriteResourceCollection_AddPalette(Unk_ov23_02257740->unk_1B0[1], 52, 1, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 3, 29));
    sub_0200A640(Unk_ov23_02257740->unk_1C0[Unk_ov23_02257740->unk_A2F - 1]);

    ov23_02240E60(SpriteResourceCollection_AddFrom(Unk_ov23_02257740->unk_1B0[2], v1, 2, 0, 1, 2, 29));
    ov23_02240E60(SpriteResourceCollection_AddFrom(Unk_ov23_02257740->unk_1B0[3], v1, 1, 0, 1, 3, 29));
    NARC_dtor(v1);
}

static void ov23_0224108C(void)
{
    int v0, v1;
    CellActorInitParamsEx v2;

    for (v0 = 0; v0 < 2; v0++) {
        sub_020093B4(&Unk_ov23_02257740->unk_204[v0], v0, v0, v0, v0, 0xffffffff, 0xffffffff, 0, 0, Unk_ov23_02257740->unk_1B0[0], Unk_ov23_02257740->unk_1B0[1], Unk_ov23_02257740->unk_1B0[2], Unk_ov23_02257740->unk_1B0[3], NULL, NULL);

        v2.collection = Unk_ov23_02257740->unk_20;
        v2.resourceData = &Unk_ov23_02257740->unk_204[v0];
        v2.position.x = FX32_CONST(32);
        v2.position.y = FX32_CONST(96);
        v2.position.z = 0;
        v2.affineScale.x = FX32_ONE;
        v2.affineScale.y = FX32_ONE;
        v2.affineScale.z = FX32_ONE;
        v2.affineZRotation = 0;
        v2.priority = 0;
        v2.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        v2.heapID = 29;
        v2.position.x = FX32_ONE * 0;
        v2.position.y = FX32_ONE * 240;

        if (v0 == 0) {
            for (v1 = 2; v1 <= 7; v1++) {
                Unk_ov23_02257740->unk_24C[v1] = CellActorCollection_AddEx(&v2);
                CellActor_SetAnimateFlag(Unk_ov23_02257740->unk_24C[v1], 1);
            }
        }

        Unk_ov23_02257740->unk_24C[v0] = CellActorCollection_AddEx(&v2);
        CellActor_SetAnimateFlag(Unk_ov23_02257740->unk_24C[v0], 1);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov23_0224119C(void)
{
    {
        UnkStruct_ov22_022559F8 v0 = {
            20, (2048 * 2), (2048 * 2), 29
        };

        sub_0201E88C(&v0, GX_OBJVRAMMODE_CHAR_1D_128K, GX_OBJVRAMMODE_CHAR_1D_128K);
    }

    sub_0201F834(20, 29);
    sub_0201E994();
    sub_0201F8E4();
    sub_0200966C(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_64K);
    sub_02009704(NNS_G2D_VRAM_TYPE_2DMAIN);
}

static void ov23_022411E8(void *param0)
{
    BGL *v0 = param0;

    ov23_02240C94(v0);

    sub_0201C2B8(v0);
    sub_0201DCAC();
    sub_0200A858();
}

BOOL ov23_02241200(int param0, int param1)
{
    if (ov23_0223E88C(param0, param1)) {
        return 1;
    }

    return 0;
}

int ov23_0224121C(int param0)
{
    if (Unk_ov23_02257740) {
        return Unk_ov23_02257740->unk_8D4[param0].unk_00;
    }

    return 0;
}

int ov23_0224123C(int param0)
{
    if (Unk_ov23_02257740) {
        return Unk_ov23_02257740->unk_8D4[param0].unk_02;
    }

    return 0;
}

int ov23_0224125C(int param0)
{
    if (Unk_ov23_02257740 && Unk_ov23_02257740->unk_8D0) {
        int v0 = Unk_ov23_02257740->unk_8D0->unk_4E4;

        v0 = (v0 + param0) % (250 / 3);
        return Unk_ov23_02257740->unk_8D0->unk_00[v0].unk_00;
    }

    return 0;
}

int ov23_02241294(int param0)
{
    if (Unk_ov23_02257740 && Unk_ov23_02257740->unk_8D0) {
        int v0 = Unk_ov23_02257740->unk_8D0->unk_4E4;

        v0 = (v0 + param0) % (250 / 3);
        return Unk_ov23_02257740->unk_8D0->unk_00[v0].unk_02;
    }

    return 0;
}

static void ov23_022412CC(SysTask *param0, void *param1)
{
    UnkStruct_ov23_022412CC *v0 = param1;

    v0->unk_4E4++;

    if ((250 / 3) < v0->unk_4E4) {
        Sound_PlayEffect(1354);
        v0->unk_4E4 = 0;
    }
}

void ov23_022412F0(void)
{
    UnkStruct_ov23_022412CC *v0;

    GF_ASSERT(!Unk_ov23_02257740->unk_8D0);
    GF_ASSERT(!Unk_ov23_02257740->unk_8C4);

    v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_ov23_022412CC));

    MI_CpuFill8(v0, 0, sizeof(UnkStruct_ov23_022412CC));
    Link_Message(71);

    v0->unk_4E4 = 250 / 3 - 10;

    Unk_ov23_02257740->unk_8D0 = v0;
    Unk_ov23_02257740->unk_8C4 = SysTask_Start(ov23_022412CC, v0, 100);
}

void ov23_02241364(void)
{
    if (Unk_ov23_02257740->unk_8C4) {
        SysTask_Done(Unk_ov23_02257740->unk_8C4);
        Heap_FreeToHeap(Unk_ov23_02257740->unk_8D0);
        Unk_ov23_02257740->unk_8C4 = NULL;
        Unk_ov23_02257740->unk_8D0 = NULL;
    }
}

void ov23_022413A0(int param0, int param1, void *param2, void *param3)
{
    Unk_ov23_02257740->unk_8BC[param0] = 1;
}

static void ov23_022413B4(void)
{
    int v0, v1 = 0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        int v2 = Unk_ov23_02257740->unk_8BC[v0] - 1;

        if (Unk_ov23_02257740->unk_8BC[v0]) {
            while (TRUE) {
                UnkStruct_ov23_0223E6F8 *v3 = &Unk_ov23_02257740->unk_26C[v2];

                if ((v3->unk_00 != 0xffff) && (v3->unk_02 != 0xffff)) {
                    UnkStruct_ov23_0224142C v4;

                    v4.unk_00 = v3->unk_00;
                    v4.unk_02 = v3->unk_02;
                    v4.unk_04 = v0;
                    sub_02035B48(72, &v4);
                    Unk_ov23_02257740->unk_8BC[v0] = v2 + 3;
                    break;
                }

                v2++;
                v2++;
                v2++;

                if (v2 >= 250) {
                    Unk_ov23_02257740->unk_8BC[v0] = 0;
                    break;
                }
            }
        }
    }
}

void ov23_0224142C(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov23_0224142C *v0 = param2;
    int v1, v2;

    if (Unk_ov23_02257740 == NULL) {
        return;
    }

    v2 = v0->unk_04 & 0xf;

    if (Unk_ov23_02257740->unk_8D0 == NULL) {
        if (CommSys_CurNetId() == v2) {
            v1 = (v0->unk_04 >> 4) & 0xf;

            if ((v1 > 0) && (v1 <= 8)) {
                MI_CpuCopy8(param2, &Unk_ov23_02257740->unk_8D4[v1 - 1], sizeof(UnkStruct_ov23_0224142C));
            }
        }
    } else {
        if (v2 == CommSys_CurNetId()) {
            MI_CpuCopy8(param2, &Unk_ov23_02257740->unk_8D0->unk_00[Unk_ov23_02257740->unk_8D0->unk_4E2], sizeof(UnkStruct_ov23_0224142C));
            Unk_ov23_02257740->unk_8D0->unk_4E2++;

            if (Unk_ov23_02257740->unk_8D0->unk_4E2 >= 250) {
                Unk_ov23_02257740->unk_8D0->unk_4E2 = 0;
            }
        }
    }
}

int ov23_022414D0(void)
{
    return sizeof(UnkStruct_ov23_0224142C);
}

static void ov23_022414D4(void)
{
    UnkStruct_ov23_0223E6F8 *v0;
    int v1, v2;

    for (v1 = 0; v1 < (7 + 1); v1++) {
        if (!CommSys_IsPlayerConnected(v1)) {
            continue;
        }

        if (CommPlayer_GetMovementTimer(v1)) {
            Unk_ov23_02257740->unk_8FC[v1] = 0;
            continue;
        }

        if (Unk_ov23_02257740->unk_8FC[v1] >= 28) {
            continue;
        }

        Unk_ov23_02257740->unk_8FC[v1]++;

        if (Unk_ov23_02257740->unk_8FC[v1] < 20) {
            continue;
        }

        v2 = ov23_0223E8CC(CommPlayer_GetXServer(v1), CommPlayer_GetZServer(v1));

        if (v2 != -1) {
            v0 = &Unk_ov23_02257740->unk_26C[v2];

            if ((v0->unk_00 != 0xffff) && (v0->unk_02 != 0xffff)) {
                UnkStruct_ov23_0224142C v3;

                v3.unk_04 = v1 + ((Unk_ov23_02257740->unk_8FC[v1] - 20 + 1) << 4);
                v3.unk_00 = v0->unk_00;
                v3.unk_02 = v0->unk_02;

                sub_02035B48(72, &v3);
            }
        } else {
            UnkStruct_ov23_0224142C v4;

            v4.unk_04 = v1 + ((Unk_ov23_02257740->unk_8FC[v1] - 20 + 1) << 4);
            v4.unk_00 = 0;
            v4.unk_02 = 0;

            sub_02035B48(72, &v4);
        }
    }
}

BOOL ov23_022415B8(Strbuf *param0)
{
    int v0;
    TrainerInfo *v1;
    TrainerInfo *v2;

    if (!Unk_ov23_02257740) {
        return 0;
    }

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (Unk_ov23_02257740->unk_908[v0]) {
            v1 = CommInfo_TrainerInfo(v0);
            Unk_ov23_02257740->unk_908[v0] = 0;

            if (ov23_022422A8(v1, 0, 105, param0)) {
                return 1;
            }
        }
    }

    return 0;
}

void ov23_0224160C(void)
{
    if (Unk_ov23_02257740) {
        MI_CpuClear8(Unk_ov23_02257740->unk_908, (7 + 1));
    }
}

BOOL ov23_0224162C(int param0)
{
    if (Unk_ov23_02257740) {
        return Unk_ov23_02257740->unk_86C[param0];
    }

    return 0;
}

void ov23_02241648(int param0)
{
    if (Unk_ov23_02257740) {
        Unk_ov23_02257740->unk_86C[param0] = 0;
        Unk_ov23_02257740->unk_8FC[param0] = 0;
    }
}

BOOL ov23_02241670(void)
{
    if (Unk_ov23_02257740) {
        if (Unk_ov23_02257740->unk_8CC) {
            return 1;
        }
    }

    return 0;
}

void ov23_02241690(int param0, int param1)
{
    if (Unk_ov23_02257740) {
        Unk_ov23_02257740->unk_86C[param0] = param1;
    }
}
