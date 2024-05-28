#include <nitro.h>
#include <string.h>

#include "core_sys.h"

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02009714_decl.h"
#include "struct_decls/struct_02009DC8_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/sys_task.h"
#include "struct_decls/struct_020203AC_decl.h"
#include "struct_decls/struct_020218BC_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "strbuf.h"
#include "trainer_info.h"
#include "struct_decls/struct_0202855C_decl.h"
#include "struct_decls/struct_020298B0_decl.h"
#include "struct_decls/struct_020507E4_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include "struct_defs/struct_0200C738.h"
#include "field/field_system.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay023/struct_ov23_0224271C.h"
#include "overlay115/struct_ov115_02261520.h"

#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "narc.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "unk_0200A9DC.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "gx_layers.h"
#include "unk_020218BC.h"
#include "unk_0202854C.h"
#include "unk_0202CD50.h"
#include "communication_information.h"
#include "communication_system.h"
#include "unk_020366A0.h"
#include "field_system.h"
#include "unk_020507CC.h"
#include "unk_02054D00.h"
#include "comm_player_manager.h"
#include "player_avatar.h"
#include "map_object_move.h"
#include "unk_0206AFE0.h"
#include "unk_0206CCB0.h"
#include "unk_020711EC.h"
#include "overlay005/ov5_021EAFA4.h"
#include "overlay005/ov5_021F4E08.h"
#include "overlay005/ov5_021F55CC.h"
#include "overlay023/ov23_0223E140.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_0224340C.h"
#include "overlay023/ov23_0224A1D0.h"
#include "overlay023/ov23_0224B05C.h"
#include "overlay023/ov23_0224F294.h"
#include "overlay023/ov23_02253D40.h"

typedef void (* UnkFuncPtr_ov23_02257764)(BGL *);
typedef void (* UnkFuncPtr_ov23_02256670)(int, BOOL);
typedef void (* UnkFuncPtr_ov23_02256440)(int, BOOL, int);
typedef void (* UnkFuncPtr_ov23_022564CC)(int);

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04;
    u8 unk_05;
} UnkStruct_ov23_02243DA8;

typedef struct {
    UnkStruct_ov23_02243DA8 unk_00;
    u8 unk_06;
    u8 unk_07_0 : 4;
    u8 unk_07_4 : 2;
    u8 unk_07_6 : 1;
    u8 unk_07_7 : 1;
} UnkStruct_ov23_02244140;

typedef struct {
    UnkStruct_ov23_02243DA8 unk_00;
    u8 unk_06;
    u8 unk_07;
} UnkStruct_ov23_02243ED4;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04;
} UnkStruct_ov23_0224589C;

typedef struct {
    fx32 unk_00;
    fx32 unk_04;
} UnkStruct_ov23_02247E38_sub1;

typedef struct {
    UnkStruct_ov23_0224589C unk_00[80];
    u8 unk_190;
    u16 unk_192;
} UnkStruct_ov23_02245700;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
} UnkStruct_ov23_02248A6C;

typedef struct {
    UnkStruct_ov23_02248A6C * unk_00[8];
    SysTask * unk_20[8];
    FieldSystem * fieldSystem;
    GraphicElementManager * unk_44;
    UnkStruct_0200C738 unk_48;
    UnkStruct_02009714 * unk_1D4[2][4];
    UnkStruct_02009DC8 * unk_1F4[2][4];
    UnkStruct_ov19_021DA864 unk_214;
    UnkStruct_ov19_021DA864 unk_238;
    GraphicElementData * unk_25C[32];
    GraphicElementData * unk_2DC[4];
    TaskManager * unk_2EC;
    SysTask * unk_2F0;
    SysTask * unk_2F4;
    SysTask * unk_2F8;
    UnkStruct_ov23_02245700 * unk_2FC;
    void * unk_300;
    UnkFuncPtr_ov23_02257764 unk_304;
    UnkStruct_ov23_02243DA8 unk_308[16];
    UnkStruct_ov101_021D5D90 * unk_368[16];
    UnkStruct_ov23_02243DA8 unk_3A8[192];
    UnkStruct_ov23_02243DA8 * unk_828[192];
    UnkStruct_ov23_02244140 unk_B28[8];
    u8 unk_B68[8];
    u16 unk_B70[8];
    u8 unk_B80[8];
    u8 unk_B88[8];
    u8 unk_B90[8];
    u16 unk_B98;
    u8 unk_B9A;
    u16 unk_B9C;
    s8 unk_B9E;
    u8 unk_B9F;
    u8 unk_BA0[8];
    u8 unk_BA8;
    u8 unk_BA9;
    u8 unk_BAA;
} UnkStruct_ov23_02257764;

typedef struct {
    int unk_00;
    int unk_04;
    u16 unk_08[32];
    UnkStruct_ov23_0224271C unk_48[32];
    u8 unk_C8[40];
    u8 unk_F0[32];
    u8 unk_110;
    u8 unk_111;
    u8 unk_112;
    u8 unk_113;
    u8 unk_114;
    int unk_118;
    FieldSystem * fieldSystem;
} UnkStruct_ov23_02245ED4;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08[15];
    int unk_44[15];
    int unk_80[15];
    int unk_BC[15];
    UnkStruct_02009DC8 * unk_F8[7];
    UnkStruct_ov101_021D5D90 * unk_114;
    int unk_118;
    int unk_11C;
    int unk_120;
    u8 unk_124;
    u8 unk_125;
    u8 unk_126;
    u8 unk_127;
    int unk_128;
    int unk_12C;
} UnkStruct_ov23_022471D8;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    u8 unk_10;
    u8 unk_11;
    u8 unk_12;
} UnkStruct_ov23_02248418;

typedef struct {
    int unk_00;
    int unk_04;
    u8 unk_08[10];
    int unk_14;
    UnkStruct_ov23_02247E38_sub1 unk_18[1];
    int unk_20;
    int unk_24;
    u8 unk_28;
    u8 unk_29;
    u8 unk_2A;
    int unk_2C;
} UnkStruct_ov23_02247E38;

typedef struct {
    int unk_00;
    int unk_04;
    u8 unk_08[20];
    u16 unk_1C[20];
    UnkStruct_ov23_02247E38_sub1 unk_44[20];
    BOOL unk_E4[20];
    u16 unk_134[20];
    u8 unk_15C;
    u8 unk_15D;
    u8 unk_15E;
    int unk_160;
} UnkStruct_ov23_022468DC;

typedef struct {
    int unk_00;
    int unk_04;
    u8 * unk_08[3];
    int unk_14[3];
    int unk_20;
    int unk_24;
    int unk_28;
    int unk_2C;
    int unk_30;
} UnkStruct_ov23_02248748;

typedef struct {
    int unk_00;
    int unk_04;
    BOOL unk_08;
    u8 unk_0C;
    int unk_10;
} UnkStruct_ov23_0224590C;

typedef struct {
    int unk_00;
    int unk_04;
    BOOL unk_08;
    u8 unk_0C;
    u8 unk_0D;
    int unk_10;
    UnkStruct_ov101_021D5D90 * unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
} UnkStruct_ov23_02245AA4;

typedef struct {
    int unk_00;
    int unk_04;
    u16 unk_08;
    u16 unk_0A;
    int unk_0C;
    BGL * unk_10;
    FieldSystem * fieldSystem;
    u8 unk_18;
    u8 unk_19;
    int unk_1C;
} UnkStruct_ov23_022451BC;

typedef struct {
    int unk_00;
    int unk_04;
    FieldSystem * fieldSystem;
    int unk_0C;
    int unk_10;
    int unk_14;
    BOOL unk_18;
} UnkStruct_ov23_02244C70;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_ov23_0224540C;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
} UnkStruct_ov23_02245560;

static void ov23_02243DA8(UnkStruct_ov23_02243DA8 * param0);
static int ov23_0224426C(UnkStruct_ov23_02243DA8 * param0);
static UnkStruct_ov23_02243DA8 * ov23_02243A80(int param0, int param1, UnkStruct_ov23_02243DA8 * param2, int param3);
static void ov23_02243970(int param0);
static UnkStruct_ov23_02243DA8 * ov23_0224429C(int param0, int param1);
static UnkStruct_ov101_021D5D90 * ov23_02244E68(int param0, int param1, int param2, int param3);
static void ov23_02243754(void);
static void ov23_0224382C(void);
static void ov23_02243E20(UnkStruct_ov23_02243DA8 * param0);
static void ov23_022457FC(void);
static void ov23_02244830(int param0, int param1);
static void ov23_02244844(int param0, int param1);
static void ov23_022449E0(int param0);
static void ov23_022449F4(int param0);
static void ov23_02244A1C(int param0);
static void ov23_02244A28(int param0);
static void ov23_02244A9C(int param0);
static void ov23_02244A90(int param0);
static void ov23_02244A78(int param0);
static void ov23_02244A84(int param0);
static void ov23_02244A6C(int param0);
static void ov23_02244A60(int param0);
static void ov23_02244A48(int param0);
static void ov23_02244A54(int param0);
static void ov23_02244A34(int param0);
static void ov23_02244ABC(int param0);
static void ov23_02244DE0(int param0, BOOL param1);
static void ov23_02244E10(int param0, BOOL param1);
static void ov23_022448C4(int param0, int param1, BOOL param2, int param3);
static void ov23_02244AC0(int param0, BOOL param1, int param2);
static void ov23_02244ADC(int param0, BOOL param1, int param2);
static void ov23_02244AF8(int param0, BOOL param1, int param2);
static void ov23_02244BF8(int param0, BOOL param1, int param2);
static void ov23_02244BE0(int param0, BOOL param1, int param2);
static void ov23_02244BB0(int param0, BOOL param1, int param2);
static void ov23_02244BC8(int param0, BOOL param1, int param2);
static void ov23_02244B98(int param0, BOOL param1, int param2);
static void ov23_02244B80(int param0, BOOL param1, int param2);
static void ov23_02244B50(int param0, BOOL param1, int param2);
static void ov23_02244B68(int param0, BOOL param1, int param2);
static void ov23_02244E64(int param0, BOOL param1, int param2);
static void ov23_02244B24(int param0, BOOL param1, int param2);
static void ov23_02244FD0(int param0, BOOL param1);
static void ov23_02246220(int param0, BOOL param1);
static void ov23_0224590C(int param0, BOOL param1);
static void ov23_02245938(int param0, BOOL param1);
static UnkStruct_ov23_02243DA8 * ov23_02244EA0(UnkStruct_ov23_02243DA8 * param0);
static void ov23_02244D80(FieldSystem * fieldSystem, int param1, int param2, BOOL param3);
static void ov23_02244EA4(FieldSystem * fieldSystem, BOOL param1, int param2);
static BOOL ov23_02245064(UnkStruct_ov23_0224271C * param0, BGL * param1, UnkStruct_ov23_022451BC * param2);
static BOOL ov23_022450D4(int param0, int param1, u8 * param2);
static void ov23_022451C8(SysTask * param0, void * param1);
static void ov23_022451BC(UnkStruct_ov23_022451BC * param0);
static void ov23_02245A58(BOOL param0);
static void ov23_022462A8(FieldSystem * fieldSystem, BOOL param1, int param2);
static BOOL ov23_02246640(BGL * param0, UnkStruct_ov23_02245ED4 * param1);
static void ov23_02246324(void);
static void ov23_02246370(int param0);
static void ov23_0224644C(int param0);
static void ov23_022468DC(UnkStruct_ov23_022468DC * param0);
static void ov23_02246A80(SysTask * param0, void * param1);
static void ov23_02246CF0(BGL * param0, BOOL param1, int param2);
static void ov23_02246D44(UnkStruct_ov23_022468DC * param0);
static void ov23_02246E90(int param0, UnkStruct_ov23_022468DC * param1);
static BOOL ov23_02246F20(BGL * param0, UnkStruct_ov23_022468DC * param1);
static void ov23_0224710C(int param0, BOOL param1, int param2);
static void ov23_02247138(int param0);
static void ov23_02247144(int param0, BOOL param1);
static void ov23_02244AA8(int param0);
static void ov23_02244A08(int param0);
static void ov23_02245AF4(int param0, BOOL param1);
static void ov23_02245B78(int param0);
static void ov23_02245AA4(int param0, BOOL param1);
static void ov23_02245E78(int param0, BOOL param1, int param2);
static void ov23_02245E54(int param0, BOOL param1, int param2);
static void ov23_02245E9C(int param0);
static void ov23_02245EC0(int param0);
static void ov23_02245EAC(int param0);
static void ov23_02247D78(int param0, BOOL param1, int param2);
static void ov23_02247DB0(int param0, BOOL param1);
static void ov23_02247DA4(int param0);
static void ov23_02248364(int param0, BOOL param1, int param2);
static void ov23_0224839C(int param0, BOOL param1);
static void ov23_02248390(int param0);
static void ov23_02248570(int param0, BOOL param1, int param2);
static void ov23_022485A8(int param0, BOOL param1);
static void ov23_0224859C(int param0);
static void ov23_02248B3C(int param0, int param1);
static void ov23_02248BD0(void);

static UnkStruct_ov23_02257764 * Unk_ov23_02257764 = NULL;
static s8 Unk_ov23_02257760 ATTRIBUTE_ALIGN(32);

static const UnkFuncPtr_ov23_02256670 Unk_ov23_02256670[] = {
    NULL,
    ov23_02244DE0,
    ov23_02244DE0,
    ov23_02244DE0,
    ov23_02244DE0,
    ov23_02244DE0,
    ov23_02244DE0,
    ov23_02244DE0,
    ov23_02244DE0,
    NULL,
    NULL,
    ov23_02245AA4,
    ov23_02245AA4,
    ov23_0224590C,
    ov23_0224590C,
    NULL,
    NULL,
    NULL,
    ov23_02244FD0,
    ov23_02244FD0,
    ov23_02247DB0,
    ov23_02247DB0,
    ov23_02247144,
    ov23_02247144,
    ov23_022485A8,
    ov23_022485A8,
    ov23_022485A8,
    ov23_022485A8,
    ov23_02246220,
    ov23_02246220,
    ov23_0224839C,
    ov23_0224839C,
    NULL,
    NULL,
    NULL
};

static const UnkFuncPtr_ov23_02256670 Unk_ov23_022566FC[] = {
    NULL,
    ov23_02244E10,
    ov23_02244E10,
    ov23_02244E10,
    ov23_02244E10,
    ov23_02244E10,
    ov23_02244E10,
    ov23_02244E10,
    ov23_02244E10,
    NULL,
    NULL,
    ov23_02245AF4,
    ov23_02245AF4,
    ov23_02245938,
    ov23_02245938,
    NULL,
    NULL,
    NULL,
    ov23_02244FD0,
    ov23_02244FD0,
    ov23_02247DB0,
    ov23_02247DB0,
    ov23_02247144,
    ov23_02247144,
    ov23_022485A8,
    ov23_022485A8,
    ov23_022485A8,
    ov23_022485A8,
    ov23_02246220,
    ov23_02246220,
    ov23_0224839C,
    ov23_0224839C,
    NULL,
    NULL,
    NULL
};

static const UnkFuncPtr_ov23_02256440 Unk_ov23_02256440[] = {
    NULL,
    ov23_02244B50,
    ov23_02244B98,
    ov23_02244B68,
    ov23_02244B80,
    ov23_02244BB0,
    ov23_02244BF8,
    ov23_02244BC8,
    ov23_02244BE0,
    NULL,
    NULL,
    ov23_02245E54,
    ov23_02245E78,
    ov23_02244AC0,
    ov23_02244ADC,
    NULL,
    NULL,
    NULL,
    ov23_02244AF8,
    ov23_02244AF8,
    ov23_02247D78,
    ov23_02247D78,
    ov23_0224710C,
    ov23_0224710C,
    ov23_02248570,
    ov23_02248570,
    ov23_02248570,
    ov23_02248570,
    ov23_02244B24,
    ov23_02244B24,
    ov23_02248364,
    ov23_02248364,
    NULL,
    ov23_02244E64,
    NULL
};

static const UnkFuncPtr_ov23_022564CC Unk_ov23_022564CC[] = {
    NULL,
    ov23_02244A34,
    ov23_02244A34,
    ov23_02244A34,
    ov23_02244A34,
    ov23_02244A34,
    ov23_02244A34,
    ov23_02244A34,
    ov23_02244A34,
    NULL,
    NULL,
    ov23_02245EAC,
    ov23_02245EC0,
    ov23_022449E0,
    ov23_022449F4,
    NULL,
    NULL,
    NULL,
    ov23_02244A1C,
    ov23_02244A1C,
    ov23_02247DA4,
    ov23_02247DA4,
    ov23_02247138,
    ov23_02247138,
    ov23_0224859C,
    ov23_0224859C,
    ov23_0224859C,
    ov23_0224859C,
    ov23_02244A28,
    ov23_02244A28,
    ov23_02248390,
    ov23_02248390,
    NULL,
    ov23_02244ABC,
    NULL
};

static const UnkFuncPtr_ov23_022564CC Unk_ov23_02256558[] = {
    NULL,
    ov23_02244A48,
    ov23_02244A6C,
    ov23_02244A54,
    ov23_02244A60,
    ov23_02244A78,
    ov23_02244A9C,
    ov23_02244A84,
    ov23_02244A90,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
};

static const UnkFuncPtr_ov23_022564CC Unk_ov23_022565E4[] = {
    NULL,
    ov23_02244AA8,
    ov23_02244AA8,
    ov23_02244AA8,
    ov23_02244AA8,
    ov23_02244AA8,
    ov23_02244AA8,
    ov23_02244AA8,
    ov23_02244AA8,
    NULL,
    NULL,
    ov23_02245E9C,
    ov23_02245E9C,
    ov23_02244A08,
    ov23_02244A08,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
};

static void ov23_0224340C (void)
{
    int v0;
    UndergroundData * v1 = sub_020298B0(FieldSystem_SaveData(Unk_ov23_02257764->fieldSystem));

    for (v0 = 0; v0 < 16; v0++) {
        Unk_ov23_02257764->unk_308[v0].unk_04 = sub_02029030(v1, v0);
        Unk_ov23_02257764->unk_308[v0].unk_00 = sub_0202903C(v1, v0);
        Unk_ov23_02257764->unk_308[v0].unk_02 = sub_0202905C(v1, v0);
        Unk_ov23_02257764->unk_308[v0].unk_05 = sub_0202907C(v1, v0);

        if (!Unk_ov23_02257764->unk_BAA) {
            if (Unk_ov23_02257764->unk_308[v0].unk_04 != 0) {
                Unk_ov23_02257764->unk_368[v0] = ov23_02244E68(Unk_ov23_02257764->unk_308[v0].unk_00, Unk_ov23_02257764->unk_308[v0].unk_02, 1, Unk_ov23_02257764->unk_308[v0].unk_04);
            }
        }
    }
}

void ov23_022434BC (void * param0, FieldSystem * fieldSystem)
{
    int v0;
    UndergroundData * v1;

    if (Unk_ov23_02257764) {
        return;
    }

    Unk_ov23_02257764 = (UnkStruct_ov23_02257764 *)param0;
    MI_CpuFill8(Unk_ov23_02257764, 0, sizeof(UnkStruct_ov23_02257764));
    Unk_ov23_02257764->fieldSystem = fieldSystem;

    v1 = sub_020298B0(FieldSystem_SaveData(fieldSystem));

    Unk_ov23_02257764->unk_2F0 = NULL;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        Unk_ov23_02257764->unk_B68[v0] = 0xff;
    }

    fieldSystem->unk_8C = ov5_021EB0C8(fieldSystem->unk_24);

    ov23_02243754();
    ov23_0224340C();
}

void ov23_02243520 (void)
{
    int v0;

    ov5_021EB184(&(Unk_ov23_02257764->fieldSystem->unk_8C));
    ov23_0224382C();
    ov23_02248BD0();

    for (v0 = 0; v0 < 16; v0++) {
        if (Unk_ov23_02257764->unk_368[v0]) {
            Unk_ov23_02257764->unk_368[v0] = NULL;
        }
    }

    if (Unk_ov23_02257764->unk_2F0) {
        SysTask_Done(Unk_ov23_02257764->unk_2F0);
        Unk_ov23_02257764->unk_2F0 = NULL;
    }

    if (Unk_ov23_02257764->unk_300) {
        Heap_FreeToHeap(Unk_ov23_02257764->unk_300);
        Unk_ov23_02257764->unk_300 = NULL;
    }

    Unk_ov23_02257764->unk_BAA = 1;
}

void ov23_022435A8 (void)
{
    int v0;

    Unk_ov23_02257764->fieldSystem->unk_8C = ov5_021EB0C8(Unk_ov23_02257764->fieldSystem->unk_24);
    Unk_ov23_02257764->unk_BAA = 0;

    ov23_0224340C();
    ov23_02243754();
}

void ov23_022435DC (void)
{
    int v0;

    for (v0 = 0; v0 < 16; v0++) {
        if (Unk_ov23_02257764->unk_368[v0]) {
            sub_0207136C(Unk_ov23_02257764->unk_368[v0]);
            Unk_ov23_02257764->unk_368[v0] = NULL;
        }
    }

    ov23_02248BD0();
    ov23_0224382C();

    ov5_021EB184(&(Unk_ov23_02257764->fieldSystem->unk_8C));

    if (Unk_ov23_02257764->unk_B98 >= 10) {
        sub_0206DEEC(Unk_ov23_02257764->fieldSystem, Unk_ov23_02257764->unk_B9A, Unk_ov23_02257764->unk_B98);
    }

    if (Unk_ov23_02257764->unk_2F0) {
        SysTask_Done(Unk_ov23_02257764->unk_2F0);
    }

    if (Unk_ov23_02257764->unk_300) {
        Heap_FreeToHeap(Unk_ov23_02257764->unk_300);
    }

    Heap_FreeToHeap(Unk_ov23_02257764);
    Unk_ov23_02257764 = NULL;
}

void ov23_02243670 (FieldSystem * fieldSystem)
{
    int v0;
    UndergroundData * v1;

    for (v0 = 0; v0 < 16; v0++) {
        if (Unk_ov23_02257764->unk_368[v0]) {
            sub_0207136C(Unk_ov23_02257764->unk_368[v0]);
            Unk_ov23_02257764->unk_368[v0] = NULL;
        }
    }

    ov23_02248BD0();
    ov23_0224340C();

    for (v0 = 0; v0 < (7 + 1); v0++) {
        Unk_ov23_02257764->unk_BA0[v0] = 0;
    }

    MI_CpuFill8(Unk_ov23_02257764->unk_3A8, 0, sizeof(Unk_ov23_02257764->unk_3A8));
    MI_CpuFill8(Unk_ov23_02257764->unk_828, 0, sizeof(Unk_ov23_02257764->unk_828));

    ov23_02243CE8();
}

void ov23_022436F0 (int param0)
{
    UnkStruct_ov23_02243DA8 * v0 = &Unk_ov23_02257764->unk_3A8[param0 * 16];
    int v1;

    for (v1 = 0; v1 < 16; v1++) {
        v0->unk_04 = 0;
        v0++;
    }

    ov23_02243970(param0);

    if (Unk_ov23_02257764->unk_BA0[param0] != 0) {
        ov23_0224AD98(param0);
        ov23_02244844(param0, Unk_ov23_02257764->unk_BA0[param0]);
        Unk_ov23_02257764->unk_BA0[param0] = 0;
    }
}

static void ov23_02243754 (void)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        Unk_ov23_02257764->unk_1D4[1][v0] = sub_02009714(1, v0, 4);
    }

    {
        NARC * v1;

        v1 = NARC_ctor(NARC_INDEX_DATA__UG_TRAP, 4);

        Unk_ov23_02257764->unk_1F4[1][0] = sub_02009A4C(Unk_ov23_02257764->unk_1D4[1][0], v1, 17, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 4);
        Unk_ov23_02257764->unk_1F4[1][1] = sub_02009B04(Unk_ov23_02257764->unk_1D4[1][1], v1, 18, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 7, 4);
        Unk_ov23_02257764->unk_1F4[1][2] = sub_02009BC4(Unk_ov23_02257764->unk_1D4[1][2], v1, 16, 0, 0, 2, 4);
        Unk_ov23_02257764->unk_1F4[1][3] = sub_02009BC4(Unk_ov23_02257764->unk_1D4[1][3], v1, 15, 0, 0, 3, 4);

        NARC_dtor(v1);
    }
}

static void ov23_0224382C ()
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        sub_02009754(Unk_ov23_02257764->unk_1D4[1][v0]);
    }
}

static void ov23_02243850 (int param0)
{
    sub_02059514();
}

int ov23_02243858 (void)
{
    return sizeof(UnkStruct_ov23_02257764);
}

int ov23_02243860 (void)
{
    return sizeof(UnkStruct_ov23_02243DA8) * 16;
}

static UnkStruct_ov23_0224271C * ov23_02243864 (UnkStruct_ov23_0224271C * param0, int param1)
{
    if (Unk_ov23_02257764->unk_828[param1] == NULL) {
        return NULL;
    }

    param0->unk_00 = Unk_ov23_02257764->unk_828[param1]->unk_00;
    param0->unk_02 = Unk_ov23_02257764->unk_828[param1]->unk_02;

    return param0;
}

static void ov23_02243898 (UnkStruct_ov23_02243DA8 * param0)
{
    int v0, v1, v2;
    UnkStruct_ov23_02243DA8 * v3;
    UnkStruct_ov23_0224271C v4;

    v4.unk_00 = param0->unk_00;
    v4.unk_02 = param0->unk_02;

    ov23_022427DC((16 * (7 + 1) + (16 * 4)), ov23_02243864);

    v0 = ov23_02242788(&v4);

    if (v0 >= (16 * (7 + 1) + (16 * 4))) {
        return;
    }

    for (v2 = 0; v2 < (16 * (7 + 1) + (16 * 4)); v2++) {
        if (Unk_ov23_02257764->unk_828[v2] == param0) {
            return;
        }
    }

    for (v1 = (16 * (7 + 1) + (16 * 4)) - 2; v1 >= v0; v1--) {
        Unk_ov23_02257764->unk_828[v1 + 1] = Unk_ov23_02257764->unk_828[v1];
    }

    Unk_ov23_02257764->unk_828[v0] = param0;
    Unk_ov23_02257764->unk_828[v0] = param0;
}

static void ov23_02243910 (UnkStruct_ov23_02243DA8 * param0)
{
    int v0 = -1, v1;
    UnkStruct_ov23_0224271C v2;

    for (v1 = 0; v1 < (16 * (7 + 1) + (16 * 4)); v1++) {
        if (Unk_ov23_02257764->unk_828[v1] == param0) {
            v0 = v1;
            break;
        }
    }

    if (v0 == -1) {
        return;
    }

    for (v1 = v0; v1 < (16 * (7 + 1) + (16 * 4)) - 1; v1++) {
        Unk_ov23_02257764->unk_828[v1] = Unk_ov23_02257764->unk_828[v1 + 1];
    }

    Unk_ov23_02257764->unk_828[(16 * (7 + 1) + (16 * 4)) - 1] = NULL;
}

static void ov23_02243970 (int param0)
{
    int v0, v1, v2;
    UnkStruct_ov23_0224271C v3;

    for (v2 = 0; v2 < 16; v2++) {
        ov23_02243910(&Unk_ov23_02257764->unk_3A8[v2 + param0 * 16]);
    }

    for (v2 = 0; v2 < 16; v2++) {
        if (Unk_ov23_02257764->unk_3A8[v2 + param0 * 16].unk_04 != 0) {
            ov23_02243898(&Unk_ov23_02257764->unk_3A8[v2 + param0 * 16]);
        }
    }
}

static UnkStruct_ov23_02243DA8 * ov23_022439D0 (UnkStruct_ov23_02243DA8 * param0)
{
    int v0;

    for (v0 = 0; v0 < 16; v0++) {
        if (param0->unk_04 == 0) {
            return param0;
        }

        param0++;
    }

    return NULL;
}

static int ov23_022439E4 (UnkStruct_ov23_02243DA8 * param0)
{
    int v0;

    for (v0 = 0; v0 < 16; v0++) {
        if (param0->unk_04 == 0) {
            return v0;
        }

        param0++;
    }

    return -1;
}

static void ov23_02243A00 (UnkStruct_ov23_02243DA8 * param0)
{
    int v0;
    u32 v1 = (u32) & Unk_ov23_02257764->unk_3A8[0];
    u32 v2 = (u32)param0;
    u32 v3 = (v2 - v1) / sizeof(UnkStruct_ov23_02243DA8);
    u32 v4 = v3 / 16;
    u32 v5 = (v4 + 1) * 16;

    Unk_ov23_02257764->unk_3A8[v3].unk_04 = 0;

    for (v0 = v3; v0 < (v5 - 1); v0++) {
        MI_CpuCopy8(&Unk_ov23_02257764->unk_3A8[v0 + 1], &Unk_ov23_02257764->unk_3A8[v0], sizeof(UnkStruct_ov23_02243DA8));
    }

    Unk_ov23_02257764->unk_3A8[v5 - 1].unk_04 = 0;

    ov23_02243970(v4);
}

static UnkStruct_ov23_02243DA8 * ov23_02243A80 (int param0, int param1, UnkStruct_ov23_02243DA8 * param2, int param3)
{
    int v0 = 0;
    UnkStruct_ov23_02243DA8 * v1;

    if (FieldSystem_CheckCollision(Unk_ov23_02257764->fieldSystem, param0, param1)) {
        return NULL;
    }

    v1 = ov23_022439D0(param2);

    if (v1 == NULL) {
        param2 = ov23_02244EA0(param2);
        ov23_02243A00(param2);
        v1 = ov23_022439D0(param2);
    }

    v1->unk_00 = param0;
    v1->unk_02 = param1;
    v1->unk_04 = param3;

    ov23_02243898(v1);

    return v1;
}

void ov23_02243AD4 (u8 param0)
{
    CommSys_SendDataFixedSize(32, &param0);
}

void ov23_02243AE8 (void)
{
    int v0;

    ov23_022457FC();
}

void ov23_02243AF0 (void)
{
    int v0;
    u8 v1 = 0;

    CommSys_WriteToQueue(35, &Unk_ov23_02257764->unk_308[0], sizeof(UnkStruct_ov23_02243DA8) * 16);
}

void ov23_02243B0C (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = (u8 *)param2;
    int v1, v2;
    UnkStruct_ov23_02243DA8 * v3;
    UnkStruct_ov23_02243ED4 v4;

    if (Unk_ov23_02257764 == NULL) {
        return;
    }

    v4.unk_06 = param0;
    v4.unk_07 = 3;

    v1 = CommPlayer_AddXServer(param0);
    v2 = CommPlayer_AddZServer(param0);

    if ((sub_02058DF8(param0) == 0xffff) && (sub_02058E4C(param0) == 0xffff)) {
        v4.unk_07 = 7;
        CommSys_SendDataServer(34, &v4, sizeof(UnkStruct_ov23_02243ED4));
        return;
    }

    if (0xff != sub_0205900C(v1, v2)) {
        v4.unk_07 = 5;
        CommSys_SendDataServer(34, &v4, sizeof(UnkStruct_ov23_02243ED4));
        return;
    }

    if (CommPlayer_CheckNPCCollision(v1, v2)) {
        v4.unk_07 = 5;
        CommSys_SendDataServer(34, &v4, sizeof(UnkStruct_ov23_02243ED4));
        return;
    }

    if (ov23_02242E58(v1, v2)) {
        v4.unk_07 = 4;
        CommSys_SendDataServer(34, &v4, sizeof(UnkStruct_ov23_02243ED4));
        return;
    }

    if (FieldSystem_CheckCollision(Unk_ov23_02257764->fieldSystem, v1, v2)) {
        v4.unk_07 = 6;
        CommSys_SendDataServer(34, &v4, sizeof(UnkStruct_ov23_02243ED4));
        return;
    }

    if (0 == ov23_0224240C(v1, v2)) {
        v3 = ov23_02243A80(v1, v2, &Unk_ov23_02257764->unk_3A8[param0 * 16], v0[0]);

        if (v3) {
            v4.unk_07 = 1;
            MI_CpuCopy8(v3, &v4.unk_00, sizeof(UnkStruct_ov23_02243DA8));
        }
    }

    CommSys_SendDataServer(34, &v4, sizeof(UnkStruct_ov23_02243ED4));
}

int ov23_02243C38 (void)
{
    return sizeof(UnkStruct_ov23_02243ED4);
}

int ov23_02243C3C (int param0, int param1, MATHRandContext16 * param2, int param3)
{
    static const u8 v0[] = {
        1,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        11,
        12,
        13,
        14,
        18,
        19,
        23,
        29,
        24,
        25,
        26,
        27,
        30,
        31,
        20,
        21,
        22,
        28
    };
    u8 v1;
    int v2, v3;
    UnkStruct_ov23_02243DA8 * v4;
    UnkStruct_ov23_02243DA8 * v5;
    UndergroundData * v6 = sub_020298B0(Unk_ov23_02257764->fieldSystem->saveData);

    if (param3 >= (16 * 4)) {
        return 0;
    }

    v2 = (7 + 1) + (param3 / 16);
    v3 = v2 * 16;
    v5 = &Unk_ov23_02257764->unk_3A8[v3];
    v1 = MATH_Rand16(param2, NELEMS(v0));
    v1 = v0[v1];

    if (0 == ov23_0224240C(param0, param1)) {
        v4 = ov23_022439D0(v5);

        if (v4 != NULL) {
            UnkStruct_ov23_02243DA8 * v7 = ov23_02243A80(param0, param1, v5, v1);

            if (v7) {
                v7->unk_05 = param3;

                sub_02028EF8(v6, v1, param3, param0, param1);
                return v1;
            }
        }
    }

    return 0;
}

void ov23_02243CE8 (void)
{
    int v0;
    UndergroundData * v1 = sub_020298B0(Unk_ov23_02257764->fieldSystem->saveData);

    for (v0 = 0; v0 < (16 * 4); v0++) {
        int v2 = sub_02028F40(v1, v0);

        if (v2 != 0) {
            int v3 = sub_02028F5C(v1, v0);
            int v4 = sub_02028F88(v1, v0);
            int v5 = (7 + 1) + v0 / 16;
            int v6 = v5 * 16;
            UnkStruct_ov23_02243DA8 * v7 = &Unk_ov23_02257764->unk_3A8[v6];
            UnkStruct_ov23_02243DA8 * v8 = ov23_02243A80(v3, v4, v7, v2);

            if (v8) {
                v8->unk_05 = v0;
            }
        }
    }
}

static void ov23_02243D50 (void)
{
    UndergroundData * v0 = sub_020298B0(FieldSystem_SaveData(Unk_ov23_02257764->fieldSystem));
    int v1;

    for (v1 = 0; v1 < 16; v1++) {
        sub_02028FE0(v0, Unk_ov23_02257764->unk_308[v1].unk_04, v1, Unk_ov23_02257764->unk_308[v1].unk_00, Unk_ov23_02257764->unk_308[v1].unk_02, Unk_ov23_02257764->unk_308[v1].unk_05);
    }
}

static void ov23_02243DA8 (UnkStruct_ov23_02243DA8 * param0)
{
    UnkStruct_ov23_02243DA8 * v0 = ov23_022439D0(Unk_ov23_02257764->unk_308);
    int v1;

    if (v0 == NULL) {
        v0 = ov23_02244EA0(Unk_ov23_02257764->unk_308);
        ov23_02243E20(v0);
        v0 = ov23_022439D0(Unk_ov23_02257764->unk_308);
    }

    v1 = ov23_022439E4(Unk_ov23_02257764->unk_308);
    MI_CpuCopy8(param0, v0, sizeof(UnkStruct_ov23_02243DA8));

    ov23_02243D50();
    Unk_ov23_02257764->unk_368[v1] = ov23_02244E68(v0->unk_00, v0->unk_02, 1, v0->unk_04);
}

static void ov23_02243E20 (UnkStruct_ov23_02243DA8 * param0)
{
    UnkStruct_ov23_02243DA8 * v0;
    int v1 = -1, v2;

    for (v2 = 0; v2 < 16; v2++) {
        v0 = &Unk_ov23_02257764->unk_308[v2];

        if ((param0->unk_00 == v0->unk_00) && (param0->unk_02 == v0->unk_02)) {
            v1 = v2;
            break;
        }
    }

    if (v1 == -1) {
        return;
    }

    for (v2 = v1; v2 < (16 - 1); v2++) {
        MI_CpuCopy8(&Unk_ov23_02257764->unk_308[v2 + 1], &Unk_ov23_02257764->unk_308[v2], sizeof(UnkStruct_ov23_02243DA8));
    }

    Unk_ov23_02257764->unk_308[16 - 1].unk_04 = 0;

    if (Unk_ov23_02257764->unk_368[v1] != NULL) {
        sub_0207136C(Unk_ov23_02257764->unk_368[v1]);
    }

    for (v2 = v1; v2 < (16 - 1); v2++) {
        Unk_ov23_02257764->unk_368[v2] = Unk_ov23_02257764->unk_368[v2 + 1];
    }

    Unk_ov23_02257764->unk_368[16 - 1] = NULL;
}

void ov23_02243ED4 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov23_02243ED4 * v0 = (UnkStruct_ov23_02243ED4 *)param2;
    int v1;
    UnkStruct_ov23_02243DA8 * v2;

    if (CommSys_CurNetId() == v0->unk_06) {
        sub_020594FC();

        if (v0->unk_07 == 1) {
            ov23_02243DA8(&v0->unk_00);
            ov23_0224FD68(v0->unk_00.unk_04);
            ov23_02254098(ov23_0224219C(), v0->unk_00.unk_04);
            ov23_02253F40(ov23_0224219C(), 131, 1, ov23_02243850);
            Sound_PlayEffect(1571);
        } else if (v0->unk_07 == 4) {
            ov23_02253F40(ov23_0224219C(), 73, 1, ov23_02243850);
        } else if (v0->unk_07 == 5) {
            ov23_02253F40(ov23_0224219C(), 55, 1, ov23_02243850);
        } else if (v0->unk_07 == 6) {
            ov23_02253F40(ov23_0224219C(), 60, 1, ov23_02243850);
        } else if (v0->unk_07 == 7) {
            ov23_02243850(0);
        } else {
            ov23_02253F40(ov23_0224219C(), 59, 1, ov23_02243850);
        }
    }
}

void ov23_02243F78 (int param0, int param1, void * param2, void * param3)
{
    u16 * v0 = param2;
    int v1 = v0[0];

    ov23_02243A00(&Unk_ov23_02257764->unk_3A8[v1]);
}

int ov23_02243F98 (void)
{
    return 2;
}

void ov23_02243F9C (int param0, int param1, void * param2, void * param3)
{
    u8 v0[2];
    UnkStruct_ov23_02243DA8 * v1 = &Unk_ov23_02257764->unk_3A8[param0 * 16];
    int v2;

    if (CommSys_CurNetId() != 0) {
        return;
    }

    GF_ASSERT(param1 == (sizeof(UnkStruct_ov23_02243DA8) * 16));

    for (v2 = 0; v2 < 16; v2++) {
        v1->unk_04 = 0;
        v1++;
    }

    v1 = param2;

    for (v2 = 0; v2 < 16; v2++) {
        if (v1->unk_04 != 0) {
            ov23_02243A80(v1->unk_00, v1->unk_02, &Unk_ov23_02257764->unk_3A8[param0 * 16], v1->unk_04);
        }

        v1++;
    }

    v0[0] = param0;
    v0[1] = 1;

    CommSys_SendDataServer(36, v0, 2);
    ov23_02244638();
}

void ov23_0224401C (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = (u8 *)param2;

    if (Unk_ov23_02257764) {
        if (CommSys_CurNetId() == v0[0]) {
            Unk_ov23_02257764->unk_BA9 = v0[1];
        }
    }
}

int ov23_02244048 (void)
{
    return 2;
}

BOOL ov23_0224404C (void)
{
    return Unk_ov23_02257764->unk_BA9 == 1;
}

void ov23_02244068 (void)
{
    Unk_ov23_02257764->unk_BA9 = 0;
}

int ov23_0224407C (void)
{
    return sizeof(UnkStruct_ov23_0224271C);
}

BOOL ov23_02244080 (int param0, UnkStruct_ov23_0224271C * param1, u8 param2)
{
    int v0, v1;
    u8 v2 = param0;
    UnkStruct_ov23_02243DA8 * v3;
    UnkStruct_ov23_02244140 v4;
    UndergroundData * v5 = sub_020298B0(FieldSystem_SaveData(Unk_ov23_02257764->fieldSystem));

    v0 = CommPlayer_AddXServer(param0);
    v1 = CommPlayer_AddZServer(param0);
    v3 = ov23_0224429C(v0, v1);

    if (v3) {
        if (ov23_0224A6B8(param0)) {
            return 1;
        }

        v4.unk_07_0 = param0;
        v4.unk_06 = ov23_0224426C(v3);

        MI_CpuCopy8(v3, &v4.unk_00, sizeof(UnkStruct_ov23_02243DA8));

        if (param2 & 0x10) {
            v4.unk_07_6 = 1;
        } else {
            v4.unk_07_6 = 0;
            ov23_02243A00(v3);
        }

        if (v4.unk_06 >= ((7 + 1))) {
            sub_02028FB4(v5, v4.unk_00.unk_05);
        }

        sub_02059058(param0, 0);
        CommSys_SendDataServer(51, &v4, sizeof(UnkStruct_ov23_02244140));

        return 1;
    }

    return 0;
}

int ov23_0224413C (void)
{
    return sizeof(UnkStruct_ov23_02244140);
}

void ov23_02244140 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov23_02244140 * v0 = (UnkStruct_ov23_02244140 *)param2;

    GF_ASSERT(v0->unk_07_0 < (7 + 1));

    if (v0->unk_07_6 == 1) {
        if (CommSys_CurNetId() == v0->unk_07_0) {
            ov23_02253F40(ov23_0224219C(), 78, 1, ov23_02243850);
            sub_020594FC();
        }

        return;
    }

    Unk_ov23_02257764->unk_B90[v0->unk_07_0] = 1;

    if (CommSys_CurNetId() == v0->unk_06) {
        ov23_02243E20(&v0->unk_00);
        ov23_02243D50();
    }

    if (CommSys_CurNetId() == v0->unk_07_0) {
        if (ov23_0224F730(v0->unk_00.unk_04)) {
            if (CommSys_CurNetId() != v0->unk_06) {
                if (Unk_ov23_02257764->unk_B98 == 0) {
                    Unk_ov23_02257764->unk_B9A = v0->unk_00.unk_04;
                }

                if (Unk_ov23_02257764->unk_B98 != 0xffff) {
                    Unk_ov23_02257764->unk_B98++;
                }
            }

            Sound_PlayEffect(1507);

            ov23_02254050(ov23_0224219C(), CommInfo_TrainerInfo(v0->unk_07_0));
            ov23_022541F0(ov23_0224219C(), 2, v0->unk_00.unk_04);
            ov23_02254204(ov23_0224219C(), 2);
            ov23_02254098(ov23_0224219C(), v0->unk_00.unk_04);
            ov23_02253F40(ov23_0224219C(), 18, 1, ov23_02243850);
            ov23_02253F98(ov23_0224219C());
        } else {
            ov23_02253F40(ov23_0224219C(), 78, 1, ov23_02243850);
        }

        sub_020594FC();
    }
}

static int ov23_0224426C (UnkStruct_ov23_02243DA8 * param0)
{
    int v0;

    for (v0 = 0; v0 < (16 * (7 + 1) + (16 * 4)); v0++) {
        if (param0 == &Unk_ov23_02257764->unk_3A8[v0]) {
            return v0 / 16;
        }
    }

    GF_ASSERT(FALSE);
    return 0;
}

static UnkStruct_ov23_02243DA8 * ov23_0224429C (int param0, int param1)
{
    UnkStruct_ov23_0224271C v0;
    int v1;

    v0.unk_00 = param0;
    v0.unk_02 = param1;

    ov23_022427DC((16 * (7 + 1) + (16 * 4)), ov23_02243864);
    v1 = ov23_0224271C(&v0);

    if (-1 == v1) {
        return NULL;
    }

    return Unk_ov23_02257764->unk_828[v1];
}

BOOL ov23_022442D8 (int param0, int param1)
{
    if (ov23_0224429C(param0, param1) == NULL) {
        return 0;
    }

    return 1;
}

int ov23_022442EC (void)
{
    return sizeof(UnkStruct_ov23_02244140);
}

static BOOL ov23_022442F0 (int param0)
{
    UnkStruct_ov23_02244140 v0;
    UnkStruct_ov23_02243DA8 * v1;
    UndergroundData * v2 = sub_020298B0(Unk_ov23_02257764->fieldSystem->saveData);

    if (ov23_0224162C(param0)) {
        return 0;
    }

    v1 = ov23_0224429C(sub_02058DF8(param0), sub_02058E4C(param0));

    if (!v1) {
        return 0;
    }

    if (Unk_ov23_02257764->unk_BA0[param0] != 0) {
        ov23_0224AD98(param0);
        ov23_02244844(param0, Unk_ov23_02257764->unk_BA0[param0]);
    }

    ov23_02244830(param0, v1->unk_04);

    v0.unk_07_7 = 0;
    v0.unk_07_0 = param0;
    v0.unk_06 = ov23_0224426C(v1);

    MI_CpuCopy8(v1, &v0.unk_00, sizeof(UnkStruct_ov23_02243DA8));

    if (v0.unk_06 >= ((7 + 1))) {
        sub_02028FB4(v2, v0.unk_00.unk_05);
    }

    CommSys_SendDataServer(37, &v0, sizeof(UnkStruct_ov23_02244140));
    Unk_ov23_02257764->unk_BA0[param0] = v1->unk_04;
    ov23_02243A00(v1);

    return 1;
}

void ov23_022443CC (int param0, int param1, int param2, int param3, int param4, int param5)
{
    UnkStruct_ov23_02244140 v0;

    if (Unk_ov23_02257764->unk_BA0[param0] != 0) {
        ov23_02244844(param0, Unk_ov23_02257764->unk_BA0[param0]);
    }

    ov23_02244830(param0, param2);

    v0.unk_07_0 = param0;
    v0.unk_06 = param1;
    v0.unk_07_7 = 1;
    v0.unk_00.unk_04 = param2;
    v0.unk_00.unk_00 = param3;
    v0.unk_00.unk_02 = param4;
    v0.unk_07_4 = param5;

    CommSys_SendDataServer(37, &v0, sizeof(UnkStruct_ov23_02244140));
    Unk_ov23_02257764->unk_BA0[param0] = param2;
}

BOOL ov23_0224444C (int param0)
{
    if (Unk_ov23_02257764) {
        if (sub_02059094(param0)) {
            return ov23_022442F0(param0);
        }
    }

    return 0;
}

BOOL ov23_02244470 (int param0)
{
    return Unk_ov23_02257764->unk_B28[param0].unk_07_7;
}

void ov23_0224448C (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov23_02244140 * v0 = (UnkStruct_ov23_02244140 *)param2;
    SecretBaseRecord * v1;

    if (!Unk_ov23_02257764) {
        return;
    }

    v1 = SaveData_SecretBaseRecord(FieldSystem_SaveData(Unk_ov23_02257764->fieldSystem));

    Sound_PlayEffect(1570);
    MI_CpuCopy8(v0, &Unk_ov23_02257764->unk_B28[v0->unk_07_0], sizeof(UnkStruct_ov23_02244140));

    switch (v0->unk_00.unk_04) {
    case 24:
        Unk_ov23_02257764->unk_B88[v0->unk_07_0] = 117;
        break;
    case 25:
        Unk_ov23_02257764->unk_B88[v0->unk_07_0] = 118;
        break;
    case 26:
        Unk_ov23_02257764->unk_B88[v0->unk_07_0] = 119;
        break;
    case 27:
        Unk_ov23_02257764->unk_B88[v0->unk_07_0] = 120;
        break;
    default:
        Unk_ov23_02257764->unk_B28[v0->unk_07_0].unk_07_6 = 1;
        break;
    }

    if (CommSys_CurNetId() == v0->unk_07_0) {
        ov23_022448C4(v0->unk_07_0, v0->unk_00.unk_04, v0->unk_07_7, v0->unk_07_4);
    } else {
        ov23_02248B3C(v0->unk_07_0, v0->unk_00.unk_04);
    }

    ov23_0224B00C(v0->unk_07_0);

    if (CommSys_CurNetId() == v0->unk_07_0) {
        sub_0202970C(v1);
    }

    if (CommSys_CurNetId() == v0->unk_06) {
        if (v0->unk_06 != v0->unk_07_0) {
            sub_020296D4(v1);
        }

        {
            UnkStruct_020507E4 * v2 = SaveData_Events(Unk_ov23_02257764->fieldSystem->saveData);
            sub_0206B43C(v2, sub_0206B42C(v2) + 1);
        }

        ov23_02243E20(&v0->unk_00);
        ov23_02243D50();
    }
}

void ov23_022445E8 (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = param2;
    UnkFuncPtr_ov23_022564CC v1 = Unk_ov23_02256558[v0[0]];

    if (v0[0] != Unk_ov23_02257764->unk_BA0[param0]) {
        sub_020389C4(1);
        return;
    }

    if (v1) {
        v1(param0);
    }
}

void ov23_0224461C (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = param2;

    if (v0[0] != CommSys_CurNetId()) {
        CommPlayer_StartBlowAnimation(v0[0], v0[1], v0[2]);
    }
}

void ov23_02244638 (void)
{
    u8 v0 = 0;
    int v1;

    if (Unk_ov23_02257764) {
        for (v1 = 0; v1 < (7 + 1); v1++) {
            if (Unk_ov23_02257764->unk_BA0[v1] != 0) {
                v0 = v0 | (0x1 << v1);
            }
        }

        sub_02035B48(45, &v0);
    }
}

void ov23_0224467C (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = param2;
    u8 v1 = v0[0];
    int v2;

    if (Unk_ov23_02257764->unk_B9F != 0) {
        return;
    }

    for (v2 = 0; v2 < (7 + 1); v2++) {
        if (v1 & (0x1 << v2)) {
            ov23_0224B00C(v2);
        }
    }
}

BOOL ov23_022446B0 (Strbuf *param0)
{
    int v0, v1;
    TrainerInfo * v2;
    TrainerInfo * v3;

    if (!Unk_ov23_02257764) {
        return 0;
    }

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (Unk_ov23_02257764->unk_B28[v0].unk_07_6 == 1) {
            Unk_ov23_02257764->unk_B28[v0].unk_07_6 = 0;

            if (Unk_ov23_02257764->unk_B28[v0].unk_06 >= ((7 + 1))) {
                v2 = CommInfo_TrainerInfo(v0);

                if (ov23_022422A8(v2, 0, 99, param0)) {
                    return 1;
                }
            } else {
                v2 = CommInfo_TrainerInfo(Unk_ov23_02257764->unk_B28[v0].unk_06);
                v3 = CommInfo_TrainerInfo(v0);

                if (ov23_0224223C(v3, v2, 100, param0)) {
                    return 1;
                }
            }
        }

        if (Unk_ov23_02257764->unk_B68[v0] != 0xff) {
            v2 = CommInfo_TrainerInfo(v0);
            v3 = CommInfo_TrainerInfo(Unk_ov23_02257764->unk_B68[v0]);

            Unk_ov23_02257764->unk_B68[v0] = 0xff;

            if (ov23_0224223C(v2, v3, 116, param0)) {
                return 1;
            }
        }
    }

    return 0;
}

BOOL ov23_02244784 (Strbuf *param0)
{
    int v0, v1;
    TrainerInfo * v2;
    TrainerInfo * v3;

    if (!Unk_ov23_02257764) {
        return 0;
    }

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (Unk_ov23_02257764->unk_B88[v0] != 0) {
            v1 = Unk_ov23_02257764->unk_B88[v0];
            Unk_ov23_02257764->unk_B88[v0] = 0;
            v2 = CommInfo_TrainerInfo(v0);

            if (ov23_022422A8(v2, 0, v1, param0)) {
                return 1;
            }
        }

        if (Unk_ov23_02257764->unk_B90[v0] == 1) {
            Unk_ov23_02257764->unk_B90[v0] = 0;
            v2 = CommInfo_TrainerInfo(v0);

            if (ov23_022422A8(v2, 0, 90, param0)) {
                return 1;
            }
        }

        if (Unk_ov23_02257764->unk_B80[v0] == 1) {
            v2 = CommInfo_TrainerInfo(v0);
            Unk_ov23_02257764->unk_B80[v0] = 0;

            if (ov23_022422A8(v2, 0, 98, param0)) {
                return 1;
            }
        }
    }

    return 0;
}

static void ov23_02244830 (int param0, int param1)
{
    UnkFuncPtr_ov23_022564CC v0 = Unk_ov23_022564CC[param1];

    if (v0) {
        v0(param0);
    }
}

static void ov23_02244844 (int param0, int param1)
{
    UnkFuncPtr_ov23_022564CC v0 = Unk_ov23_022565E4[param1];

    if (v0) {
        v0(param0);
    }
}

void ov23_02244858 (int param0, int param1)
{
    UnkFuncPtr_ov23_02256670 v0;

    if (Unk_ov23_02257764->unk_B9F != 0) {
        v0 = Unk_ov23_022566FC[Unk_ov23_02257764->unk_B9F];

        if (v0) {
            v0(param0, param1);
        }

        if (CommSys_CurNetId() != 0) {
            ov23_0224AD98(param0);
        }

        sub_0205948C(0x10);
        Sound_PlayEffect(1545);

        Unk_ov23_02257764->unk_304 = NULL;

        ov23_0224B040(param0);
        ov23_02254044(ov23_0224219C());

        Unk_ov23_02257764->unk_B9F = 0;
    }
}

static void ov23_022448C4 (int param0, int param1, BOOL param2, int param3)
{
    UnkFuncPtr_ov23_02256670 v0;
    UnkFuncPtr_ov23_02256440 v1;

    ov23_02244858(param0, 1);

    Unk_ov23_02257764->unk_B9F = param1;
    v1 = Unk_ov23_02256440[param1];

    if (v1) {
        v1(param0, param2, param3);
    }
}

static void ov23_022448FC (int param0)
{
    int v0, v1, v2;

    v2 = CommPlayer_GetOppositeDir(param0);

    Player_SetDir(Unk_ov23_02257764->fieldSystem->playerAvatar, v2);

    v0 = Unk_ov23_02257764->unk_B28[CommSys_CurNetId()].unk_00.unk_00;
    v1 = Unk_ov23_02257764->unk_B28[CommSys_CurNetId()].unk_00.unk_02;
    v0 = v0 + sub_0206419C(v2);
    v1 = v1 + sub_020641A8(v2);

    CommPlayer_SendXZPos(0, v0, v1);
}

static BOOL ov23_0224495C (int param0, BOOL param1)
{
    int v0, v1, v2, v3, v4;

    v0 = Player_GetXPos(Unk_ov23_02257764->fieldSystem->playerAvatar);
    v1 = Player_GetZPos(Unk_ov23_02257764->fieldSystem->playerAvatar);
    v4 = CommPlayer_GetOppositeDir(param0);
    v2 = Unk_ov23_02257764->unk_B28[CommSys_CurNetId()].unk_00.unk_00;
    v3 = Unk_ov23_02257764->unk_B28[CommSys_CurNetId()].unk_00.unk_02;

    if (!param1) {
        v2 = v2 + sub_0206419C(v4);
        v3 = v3 + sub_020641A8(v4);
    }

    if ((v0 == v2) && (v1 == v3)) {
        return 1;
    }

    return 0;
}

static void ov23_022449E0 (int param0)
{
    ov23_0224AD7C(param0, 1);
    sub_02059354(param0, 30);
}

static void ov23_022449F4 (int param0)
{
    ov23_0224AD7C(param0, 1);
    sub_02059354(param0, 30);
}

static void ov23_02244A08 (int param0)
{
    ov23_0224AD7C(param0, 0);
    sub_02059378(param0);
}

static void ov23_02244A1C (int param0)
{
    ov23_0224AD7C(param0, 2);
}

static void ov23_02244A28 (int param0)
{
    ov23_0224AD7C(param0, 2);
}

static void ov23_02244A34 (int param0)
{
    ov23_0224AD7C(param0, 3);
    sub_02058B94(param0);
}

static void ov23_02244A48 (int param0)
{
    sub_02058B0C(param0, 0, 0);
}

static void ov23_02244A54 (int param0)
{
    sub_02058B0C(param0, 1, 0);
}

static void ov23_02244A60 (int param0)
{
    sub_02058B0C(param0, 2, 0);
}

static void ov23_02244A6C (int param0)
{
    sub_02058B0C(param0, 3, 0);
}

static void ov23_02244A78 (int param0)
{
    sub_02058B0C(param0, 0, 1);
}

static void ov23_02244A84 (int param0)
{
    sub_02058B0C(param0, 1, 1);
}

static void ov23_02244A90 (int param0)
{
    sub_02058B0C(param0, 2, 1);
}

static void ov23_02244A9C (int param0)
{
    sub_02058B0C(param0, 3, 1);
}

static void ov23_02244AA8 (int param0)
{
    ov23_0224AD7C(param0, 0);
    sub_02058B7C(param0);
}

static void ov23_02244ABC (int param0)
{
    return;
}

static void ov23_02244AC0 (int param0, BOOL param1, int param2)
{
    ov23_0224AD7C(param0, 1);

    if (CommSys_CurNetId() == param0) {
        ov23_02245A58(1);
    }
}

static void ov23_02244ADC (int param0, BOOL param1, int param2)
{
    ov23_0224AD7C(param0, 1);

    if (CommSys_CurNetId() == param0) {
        ov23_02245A58(0);
    }
}

static void ov23_02244AF8 (int param0, BOOL param1, int param2)
{
    ov23_0224AD7C(param0, 2);

    if (CommSys_CurNetId() == param0) {
        ov23_02244EA4(Unk_ov23_02257764->fieldSystem, param1, param2);
    }
}

static void ov23_02244B24 (int param0, BOOL param1, int param2)
{
    ov23_0224AD7C(param0, 2);

    if (CommSys_CurNetId() == param0) {
        ov23_022462A8(Unk_ov23_02257764->fieldSystem, param1, param2);
    }
}

static void ov23_02244B50 (int param0, BOOL param1, int param2)
{
    ov23_02244D80(Unk_ov23_02257764->fieldSystem, param0, 0, 0);
}

static void ov23_02244B68 (int param0, BOOL param1, int param2)
{
    ov23_02244D80(Unk_ov23_02257764->fieldSystem, param0, 1, 0);
}

static void ov23_02244B80 (int param0, BOOL param1, int param2)
{
    ov23_02244D80(Unk_ov23_02257764->fieldSystem, param0, 2, 0);
}

static void ov23_02244B98 (int param0, BOOL param1, int param2)
{
    ov23_02244D80(Unk_ov23_02257764->fieldSystem, param0, 3, 0);
}

static void ov23_02244BB0 (int param0, BOOL param1, int param2)
{
    ov23_02244D80(Unk_ov23_02257764->fieldSystem, param0, 0, 1);
}

static void ov23_02244BC8 (int param0, BOOL param1, int param2)
{
    ov23_02244D80(Unk_ov23_02257764->fieldSystem, param0, 1, 1);
}

static void ov23_02244BE0 (int param0, BOOL param1, int param2)
{
    ov23_02244D80(Unk_ov23_02257764->fieldSystem, param0, 2, 1);
}

static void ov23_02244BF8 (int param0, BOOL param1, int param2)
{
    ov23_02244D80(Unk_ov23_02257764->fieldSystem, param0, 3, 1);
}

static int ov23_02244C10 (void)
{
    int v0, v1, v2;

    v1 = Player_GetXPos(Unk_ov23_02257764->fieldSystem->playerAvatar);
    v2 = Player_GetZPos(Unk_ov23_02257764->fieldSystem->playerAvatar);

    ov5_021F5634(Unk_ov23_02257764->fieldSystem, v1, 0, v2);
    ov23_022541B4(ov23_0224219C(), 0, Unk_ov23_02257764->unk_B9F);

    v0 = ov23_02253F60(ov23_0224219C(), 70, 0, NULL);
    sub_02059464(0x10);

    return v0;
}

static void ov23_02244C70 (SysTask * param0, void * param1)
{
    UnkStruct_ov23_02244C70 * v0 = param1;
    int v1;

    switch (v0->unk_00) {
    case 0:
        v0->unk_04 = ov23_02244C10();
        v0->unk_00++;
        break;
    case 1:
        sub_0200AAE0(1, 10, 0, GX_BLEND_PLANEMASK_BG0, 1);
        v0->unk_00++;
        break;
    case 2:
        v0->unk_00++;
        break;
    case 3:
        sub_0200AAE0(1, 0, 10, GX_BLEND_PLANEMASK_BG0, 1);
        v0->unk_00++;
        break;
    case 4:
        v0->unk_14++;

        if (v0->unk_14 == 28) {
            u8 v2 = Unk_ov23_02257764->unk_B9F;

            CommSys_SendDataFixedSize(38, &v2);
        }

        if (v0->unk_14 > 30) {
            sub_0205948C(0x10);
            sub_0200AAE0(1, -4, 0, GX_BLEND_PLANEMASK_BG0, 1);
            ov23_02254044(ov23_0224219C());
            CommPlayer_StartBlowAnimation(v0->unk_0C, v0->unk_10, v0->unk_18);
            Sound_PlayEffect(1631);
            v0->unk_00 = 5;
        }
        break;
    case 5:
        v0->unk_00 = 6;
        break;
    case 6:
        break;
    case 7:
        sub_0200AB4C(0, GX_BLEND_PLANEMASK_BG0, 1);
        Heap_FreeToHeap(v0);
        SysTask_Done(param0);

        Unk_ov23_02257764->unk_2F0 = NULL;
        Unk_ov23_02257764->unk_300 = NULL;

        sub_020057A4(1631, 0);
        break;
    }
}

static void ov23_02244D80 (FieldSystem * fieldSystem, int param1, int param2, BOOL param3)
{
    UnkStruct_ov23_02244C70 * v0;

    v0 = Heap_AllocFromHeapAtEnd(4, sizeof(UnkStruct_ov23_02244C70));
    MI_CpuFill8(v0, 0, sizeof(UnkStruct_ov23_02244C70));

    GF_ASSERT(Unk_ov23_02257764->unk_300 == NULL);

    Unk_ov23_02257764->unk_300 = v0;

    v0->fieldSystem = fieldSystem;
    v0->unk_0C = param1;
    v0->unk_10 = param2;
    v0->unk_18 = param3;

    Unk_ov23_02257764->unk_2F0 = SysTask_Start(ov23_02244C70, v0, 100);
}

static void ov23_02244DE0 (int param0, BOOL param1)
{
    CommPlayer_StopBlowAnimation(param0);

    if (Unk_ov23_02257764->unk_300) {
        UnkStruct_ov23_02244C70 * v0 = Unk_ov23_02257764->unk_300;

        v0->unk_00 = 7;
        Unk_ov23_02257764->unk_300 = NULL;

        sub_020057A4(1631, 0);
    }
}

static void ov23_02244E10 (int param0, BOOL param1)
{
    CommPlayer_StopBlowAnimation(param0);

    if (Unk_ov23_02257764->unk_300) {
        UnkStruct_ov23_02244C70 * v0 = Unk_ov23_02257764->unk_300;

        sub_0200AB4C(0, GX_BLEND_PLANEMASK_BG0, 1);
        Heap_FreeToHeap(v0);
        SysTask_Done(Unk_ov23_02257764->unk_2F0);

        Unk_ov23_02257764->unk_2F0 = NULL;
        Unk_ov23_02257764->unk_300 = NULL;

        sub_020057A4(1631, 0);
    }
}

static void ov23_02244E64 (int param0, BOOL param1, int param2)
{
    return;
}

static UnkStruct_ov101_021D5D90 * ov23_02244E68 (int param0, int param1, int param2, int param3)
{
    UnkStruct_ov101_021D5D90 * v0;

    if (!Unk_ov23_02257764->unk_BAA) {
        v0 = ov5_021F4EAC(Unk_ov23_02257764->fieldSystem, param0, param1, param2, param3 - 1);
        return v0;
    }

    return NULL;
}

static UnkStruct_ov23_02243DA8 * ov23_02244EA0 (UnkStruct_ov23_02243DA8 * param0)
{
    return param0;
}

static void ov23_02244EA4 (FieldSystem * fieldSystem, BOOL param1, int param2)
{
    UnkStruct_ov23_022451BC * v0;

    v0 = Heap_AllocFromHeapAtEnd(4, sizeof(UnkStruct_ov23_022451BC));
    MI_CpuFill8(v0, 0, sizeof(UnkStruct_ov23_022451BC));

    Unk_ov23_02257764->unk_300 = v0;
    ov23_022451BC(v0);

    v0->unk_10 = fieldSystem->unk_08;
    v0->fieldSystem = fieldSystem;
    v0->unk_19 = param1;
    v0->unk_18 = param2;

    Unk_ov23_02257764->unk_2F0 = SysTask_Start(ov23_022451C8, v0, 100);
}

static void ov23_02244EF8 (int param0, int param1, int param2, int param3, u8 * param4)
{
    int v0, v1 = param0, v2 = param1, v3, v4, v5 = abs(param0 - param2), v6 = abs(param3 - param1);
    BOOL v7 = 0;

    v3 = (param0 < param2) ? 1 : -1;
    v4 = (param1 < param3) ? 1 : -1;

    if (v5 >= v6) {
        v0 = -v5;

        while (v1 != param2) {
            v7 += ov23_022450D4(v1, v2, param4);
            v1 += v3;
            v0 += 2 * v6;

            if (v0 >= 0) {
                v0 -= 2 * v5;
                v2 += v4;
            }
        }
    } else {
        v0 = -v6;

        while (v2 != param3) {
            v7 += ov23_022450D4(v1, v2, param4);
            v2 += v4;
            v0 += 2 * v5;

            if (v0 >= 0) {
                v0 -= 2 * v6;
                v1 += v3;
            }
        }
    }

    if (v7) {
        if (!sub_020057D4(1577)) {
            Sound_PlayEffect(1577);
        }
    }
}

static void ov23_02244FD0 (int param0, BOOL param1)
{
    if (Unk_ov23_02257764->unk_300) {
        UnkStruct_ov23_022451BC * v0 = Unk_ov23_02257764->unk_300;

        if (v0->unk_19 && param1) {
            ov23_022448FC(v0->unk_18);
        }

        G2_BlendNone();
        sub_0200AB4C(0, GX_BLEND_PLANEMASK_BG0, 1);

        {
            int v1;
            u8 * v2 = sub_02019FE4(Unk_ov23_02257764->fieldSystem->unk_08, 2);

            for (v1 = 0; v1 < 0x800; v1 += 2) {
                v2[v1] = 0;
            }

            BGL_SetPriority(2, 3);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        }

        sub_0205948C(0x10);
        SysTask_Done(Unk_ov23_02257764->unk_2F0);
        Heap_FreeToHeap(v0);

        Unk_ov23_02257764->unk_2F0 = NULL;
        Unk_ov23_02257764->unk_300 = NULL;
    }
}

static BOOL ov23_02245064 (UnkStruct_ov23_0224271C * param0, BGL * param1, UnkStruct_ov23_022451BC * param2)
{
    int v0, v1 = 0;
    u8 * v2 = sub_02019FE4(param1, 2);

    if (v2 == NULL) {
        return 0;
    }

    if ((param2->unk_08 != 0xffff) && (param2->unk_0A != 0xffff)) {
        ov23_02244EF8(param0->unk_00, param0->unk_02, param2->unk_08, param2->unk_0A, v2);

        sub_02019448(param1, 2);
    }

    param2->unk_08 = param0->unk_00;
    param2->unk_0A = param0->unk_02;

    for (v0 = 0; v0 < 0x800; v0 += 2) {
        if (v2[v0] != 0) {
            v1++;
        }
    }

    if (v1 < 13) {
        return 1;
    }

    return 0;
}

static BOOL ov23_022450D4 (int param0, int param1, u8 * param2)
{
    u16 v0 = (param0 / 8 + param1 / 8 * (256 / 8)) * 2;
    s32 v1[] = {-66, -64, -62, -2, 0, 2, 62, 64, 66};
    int v2;
    BOOL v3 = 0;

    if (v0 > 0x800) {
        return v3;
    }

    for (v2 = 0; v2 < sizeof(v1) / sizeof(s32); v2++) {
        s32 v4 = v0 + v1[v2];

        if ((v0 % 64) == 62) {
            if (v2 % 3 == 2) {
                continue;
            }
        }

        if (v0 % 64 == 0) {
            if (v2 % 3 == 0) {
                continue;
            }
        }

        if ((v4 < 0x800) && (v4 >= 0) && (param2[v4] != 0)) {
            v3 = 1;

            switch (v2) {
            case 4:
                param2[v4] = param2[v4] + 3;
                break;
            case 1:
            case 3:
            case 5:
            case 7:
                param2[v4] = param2[v4] + 2;
                break;
            default:
                param2[v4] = param2[v4] + 1;
                break;
            }

            if (param2[v4] > 5) {
                param2[v4] = 0;
            }
        }
    }

    return v3;
}

static void ov23_022451BC (UnkStruct_ov23_022451BC * param0)
{
    param0->unk_08 = 0xffff;
    param0->unk_0A = 0xffff;
}

static void ov23_022451C8 (SysTask * param0, void * param1)
{
    UnkStruct_ov23_022451BC * v0 = param1;
    int v1;

    switch (v0->unk_00) {
    case 0:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        v0->unk_04 = ov23_02244C10();
        v0->unk_00++;
        break;
    case 1:
        sub_0200AAE0(1, 10, 0, GX_BLEND_PLANEMASK_BG0, 1);
        sub_02006E3C(50, 9, v0->unk_10, 2, 0, 8 * 6 * 6, 0, 4);
        v0->unk_00++;
        break;
    case 2:
        sub_02006E84(50, 10, 0, 0, 32, 4);
        v0->unk_00++;
        break;
    case 3:
        sub_0200AAE0(1, 0, 10, GX_BLEND_PLANEMASK_BG0, 1);

        if (Unk_ov23_02257764->unk_B9F == 19) {
            sub_02006E60(50, 8, v0->unk_10, 2, 0, 32 * 24 * 2, 0, 4);
        } else {
            u16 v2[] = {11, 12, 13, 14};
            u16 v3 = LCRNG_Next() % 4;

            sub_02006E60(50, v2[v3], v0->unk_10, 2, 0, 32 * 24 * 2, 0, 4);
        }

        BGL_SetPriority(0, 3);
        BGL_SetPriority(1, 2);
        BGL_SetPriority(2, 1);
        BGL_SetPriority(3, 0);
        v0->unk_00++;
        break;
    case 4:
    case 5:
    case 6:
        v0->unk_0C++;

        if (v0->unk_0C > 30) {
            sub_0200AAE0(1, -4, 0, GX_BLEND_PLANEMASK_BG0, 1);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
            v0->unk_00 = 7;
            ov23_02253F60(ov23_0224219C(), 77, 0, NULL);
            v0->unk_1C = 0;
            Sound_PlayEffect(1633);
        }
        break;
    case 7:
        if (gCoreSys.touchHeld) {
            UnkStruct_ov23_0224271C v4;

            v4.unk_00 = gCoreSys.touchX;
            v4.unk_02 = gCoreSys.touchY;

            if (ov23_02245064(&v4, v0->unk_10, v0)) {
                if (v0->unk_19) {
                    v0->unk_00 = 11;
                } else {
                    Link_Message(41);
                    v0->unk_00 = 8;
                }
            }
        } else {
            ov23_022451BC(v0);
        }

        if (v0->unk_1C < 60) {
            v0->unk_1C++;

            if (v0->unk_1C == 60) {
                ov23_02254044(ov23_0224219C());
            }
        }
        break;
    case 8:
        ov23_02254044(ov23_0224219C());
        break;
    case 9:
        ov23_02244FD0(CommSys_CurNetId(), v0->unk_19);
        break;
    case 11:
        v0->unk_19 = 0;
        sub_0205948C(0x10);
        ov23_022448FC(v0->unk_18);
        v0->unk_0C = 0;
        v0->unk_00 = 12;
        break;
    case 12:
        v0->unk_0C++;

        if (v0->unk_0C > 8) {
            Link_Message(41);
            v0->unk_00 = 8;
        }
        break;
    }
}

int ov23_02245408 (void)
{
    return sizeof(UnkStruct_ov23_0224540C);
}

void ov23_0224540C (int param0, int param1, void * param2, void * param3)
{
    u8 v0 = param0;
    UnkStruct_ov23_0224540C v1;

    if (ov23_0224ACC0(param0)) {
        ov23_0224AD98(param0);
        ov23_02244844(param0, Unk_ov23_02257764->unk_BA0[param0]);

        v1.unk_03 = ov23_0224D87C(param0);
        v1.unk_00 = Unk_ov23_02257764->unk_BA0[param0];
        v1.unk_01 = param0;
        v1.unk_02 = 1;

        sub_02035B48(42, &v1);
    }

    Unk_ov23_02257764->unk_BA0[param0] = 0;
}

void ov23_0224546C (int param0, int param1, void * param2, void * param3)
{
    u8 v0 = param0;
    UnkStruct_ov23_0224540C v1;

    ov23_0224AD98(param0);

    if (Unk_ov23_02257764->unk_BA0[param0] != 0) {
        ov23_02244844(param0, Unk_ov23_02257764->unk_BA0[param0]);
    }

    Unk_ov23_02257764->unk_BA0[param0] = 0;
    Unk_ov23_02257764->unk_B28[param0].unk_07_7 = 0;

    ov23_0224D87C(param0);
}

void ov23_022454B4 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov23_0224540C * v0 = param2;
    int v1 = v0->unk_00;
    UnkFuncPtr_ov23_02256670 v2;

    if (v0->unk_02) {
        ov23_0224B024(v0->unk_01);
    } else {
        ov23_0224B040(v0->unk_01);
    }

    ov23_02248B98(v0->unk_01);

    if (v0->unk_01 == CommSys_CurNetId()) {
        v2 = Unk_ov23_02256670[v1];

        if (v2) {
            v2(v0->unk_01, v0->unk_03);
        }

        Unk_ov23_02257764->unk_B9F = 0;
    }

    switch (v1) {
    case 24:
    case 25:
    case 26:
    case 27:
        break;
    default:
        Unk_ov23_02257764->unk_B80[v0->unk_01] = 1;
        break;
    }

    if (CommSys_CurNetId() != 0) {
        ov23_0224AD98(v0->unk_01);
    }
}

void ov23_02245540 (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = param2;
    int v1 = Unk_ov23_02257764->unk_B9F;

    if ((v1 == 11) || (v1 == 12)) {
        ov23_02245B78(v0[0]);
    }
}

void ov23_02245560 (int param0, int param1)
{
    UnkStruct_ov23_02245560 v0;

    ov23_0224AD98(param1);
    ov23_02244844(param1, Unk_ov23_02257764->unk_BA0[param1]);

    v0.unk_01 = param1;
    v0.unk_00 = param0;
    v0.unk_02 = Unk_ov23_02257764->unk_BA0[param1];

    sub_02035B48(44, &v0);
    Unk_ov23_02257764->unk_BA0[param1] = 0;
    sub_02059058(param0, 0);
}

void ov23_022455B4 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov23_02245560 * v0 = param2;
    SecretBaseRecord * v1 = SaveData_SecretBaseRecord(FieldSystem_SaveData(Unk_ov23_02257764->fieldSystem));

    ov23_0224B024(v0->unk_01);

    if (v0->unk_00 == CommSys_CurNetId()) {
        sub_02029744(v1);
        sub_0202CFEC(sub_0202CD88(Unk_ov23_02257764->fieldSystem->saveData), 34);
        sub_020594FC();

        ov23_02254068(ov23_0224219C(), CommInfo_TrainerInfo(v0->unk_01));
        ov23_02253F40(ov23_0224219C(), 71, 1, ov23_02243850);
    }

    ov23_02248B98(v0->unk_01);

    if ((v0->unk_01 == CommSys_CurNetId()) && (Unk_ov23_02257764->unk_B9F != 0)) {
        int v2 = Unk_ov23_02257764->unk_B9F;
        UnkFuncPtr_ov23_02256670 v3 = Unk_ov23_022566FC[v2];

        if (v3) {
            v3(v0->unk_01, 0);
        }

        Unk_ov23_02257764->unk_304 = NULL;
        Unk_ov23_02257764->unk_B9F = 0;

        sub_0205948C(0x10);
        ov23_02254044(ov23_0224219C());
    }

    if (CommSys_CurNetId() != 0) {
        ov23_0224AD98(v0->unk_01);
    }

    Unk_ov23_02257764->unk_B68[v0->unk_00] = v0->unk_01;
}

int ov23_02245694 (void)
{
    return sizeof(UnkStruct_ov23_02245560);
}

int ov23_02245698 (int param0)
{
    if (Unk_ov23_02257764 && Unk_ov23_02257764->unk_2FC) {
        int v0 = Unk_ov23_02257764->unk_2FC->unk_192 / 2;

        v0 = (v0 + param0) % (16 + (16 * 4));
        return Unk_ov23_02257764->unk_2FC->unk_00[v0].unk_00;
    }

    return 0;
}

int ov23_022456CC (int param0)
{
    if (Unk_ov23_02257764 && Unk_ov23_02257764->unk_2FC) {
        int v0 = Unk_ov23_02257764->unk_2FC->unk_192 / 2;

        v0 = (v0 + param0) % (16 + (16 * 4));
        return Unk_ov23_02257764->unk_2FC->unk_00[v0].unk_02;
    }

    return 0;
}

static void ov23_02245700 (SysTask * param0, void * param1)
{
    UnkStruct_ov23_02245700 * v0 = param1;

    v0->unk_192++;

    if (((16 + (16 * 4)) * 2) < v0->unk_192) {
        Sound_PlayEffect(1354);
        v0->unk_192 = 0;
    }
}

void ov23_02245728 (void)
{
    UnkStruct_ov23_02245700 * v0;

    if (Unk_ov23_02257764->unk_2FC) {
        return;
    }

    if (Unk_ov23_02257764->unk_2F8) {
        return;
    }

    v0 = Heap_AllocFromHeapAtEnd(4, sizeof(UnkStruct_ov23_02245700));
    MI_CpuFill8(v0, 0, sizeof(UnkStruct_ov23_02245700));
    Link_Message(46);

    Unk_ov23_02257764->unk_2FC = v0;
    Unk_ov23_02257764->unk_2F8 = SysTask_Start(ov23_02245700, v0, 100);
}

void ov23_02245784 (void)
{
    if (Unk_ov23_02257764->unk_2F8) {
        sub_0200AB4C(0, GX_BLEND_PLANEMASK_BG0, 1);
        G2_BlendNone();
        GX_SetMasterBrightness(0);
        SysTask_Done(Unk_ov23_02257764->unk_2F8);
        Heap_FreeToHeap(Unk_ov23_02257764->unk_2FC);
        Unk_ov23_02257764->unk_2F8 = NULL;
        Unk_ov23_02257764->unk_2FC = NULL;
    }
}

void ov23_022457E4 (int param0, int param1, void * param2, void * param3)
{
    Unk_ov23_02257764->unk_B70[param0] = 1;
}

static void ov23_022457FC (void)
{
    int v0, v1 = 0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        int v2 = Unk_ov23_02257764->unk_B70[v0] - 1;

        if (Unk_ov23_02257764->unk_B70[v0]) {
            while (TRUE) {
                UnkStruct_ov23_02243DA8 * v3 = Unk_ov23_02257764->unk_828[v2];

                if (v3 && (v3->unk_04 != 0)) {
                    int v4 = ov23_0224426C(v3);

                    if ((v4 == v0) || (v4 >= (7 + 1))) {
                        UnkStruct_ov23_0224589C v5;

                        v5.unk_00 = v3->unk_00;
                        v5.unk_02 = v3->unk_02;
                        v5.unk_04 = v0;
                        sub_02035B48(47, &v5);
                        Unk_ov23_02257764->unk_B70[v0] = v2 + 2;
                        break;
                    }
                }

                v2++;

                if (v2 >= (16 * (7 + 1) + (16 * 4))) {
                    Unk_ov23_02257764->unk_B70[v0] = 0;
                    break;
                }

                if (v2 == Unk_ov23_02257764->unk_B70[v0] - 1) {
                    break;
                }
            }
        }
    }
}

void ov23_0224589C (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov23_0224589C * v0 = param2;

    if (Unk_ov23_02257764->unk_2FC == NULL) {
        return;
    }

    if (v0->unk_04 == CommSys_CurNetId()) {
        MI_CpuCopy8(param2, &Unk_ov23_02257764->unk_2FC->unk_00[Unk_ov23_02257764->unk_2FC->unk_190], sizeof(UnkStruct_ov23_0224589C));
        Unk_ov23_02257764->unk_2FC->unk_190++;

        if (Unk_ov23_02257764->unk_2FC->unk_190 >= (16 + (16 * 4))) {
            Unk_ov23_02257764->unk_2FC->unk_190 = 0;
        }
    }
}

int ov23_02245908 (void)
{
    return sizeof(UnkStruct_ov23_0224589C);
}

static void ov23_0224590C (int param0, BOOL param1)
{
    if (CommSys_CurNetId() == param0) {
        if (Unk_ov23_02257764->unk_300) {
            UnkStruct_ov23_0224590C * v0 = Unk_ov23_02257764->unk_300;

            v0->unk_00 = 2;
            Unk_ov23_02257764->unk_300 = NULL;
        }
    }
}

static void ov23_02245938 (int param0, BOOL param1)
{
    if (Unk_ov23_02257764->unk_300) {
        sub_0200AB4C(0, GX_BLEND_PLANEMASK_BG0, 1);

        G2_BlendNone();
        GX_SetMasterBrightness(0);

        sub_0203568C();
        SysTask_Done(Unk_ov23_02257764->unk_2F0);
        Heap_FreeToHeap(Unk_ov23_02257764->unk_300);

        Unk_ov23_02257764->unk_2F0 = NULL;
        Unk_ov23_02257764->unk_300 = NULL;
    }
}

static void ov23_0224599C (SysTask * param0, void * param1)
{
    UnkStruct_ov23_0224590C * v0 = param1;
    int v1;

    switch (v0->unk_00) {
    case 0:
        v0->unk_10++;

        if (v0->unk_10 == 1) {
            v0->unk_04 = ov23_02244C10();
        } else if (v0->unk_10 == 2) {
            sub_0200AAE0(1, 10, 0, GX_BLEND_PLANEMASK_BG0, 1);
        } else if (v0->unk_10 == 4) {
            sub_0200AAE0(1, 0, 10, GX_BLEND_PLANEMASK_BG0, 1);
        }

        if (30 < v0->unk_10) {
            ov23_02254044(ov23_0224219C());
            v0->unk_00 = 1;

            if (v0->unk_08) {
                sub_02035678();
            } else {
                sub_02035664();
            }

            sub_0205948C(0x10);
        }
        break;
    case 1:
        break;
    case 2:
        sub_0200AB4C(0, GX_BLEND_PLANEMASK_BG0, 1);

        G2_BlendNone();
        GX_SetMasterBrightness(0);

        sub_0203568C();
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);

        Unk_ov23_02257764->unk_2F0 = NULL;
        Unk_ov23_02257764->unk_300 = NULL;
        break;
    }
}

static void ov23_02245A58 (BOOL param0)
{
    int v0;
    UnkStruct_ov23_0224590C * v1;

    v1 = Heap_AllocFromHeapAtEnd(4, sizeof(UnkStruct_ov23_0224590C));
    MI_CpuClear8(v1, sizeof(UnkStruct_ov23_0224590C));

    v1->unk_00 = 0;
    v1->unk_08 = param0;
    v1->unk_10 = 0;

    Unk_ov23_02257764->unk_300 = v1;
    Unk_ov23_02257764->unk_2F0 = SysTask_Start(ov23_0224599C, v1, 100);

    sub_02059464(0x10);
}

static void ov23_02245AA4 (int param0, BOOL param1)
{
    if (CommSys_CurNetId() == param0) {
        if (Unk_ov23_02257764->unk_300) {
            UnkStruct_ov23_02245AA4 * v0 = Unk_ov23_02257764->unk_300;

            sub_0205ED0C(Unk_ov23_02257764->fieldSystem->playerAvatar, 0);
            SysTask_Done(Unk_ov23_02257764->unk_2F0);
            Heap_FreeToHeap(v0);

            Unk_ov23_02257764->unk_2F0 = NULL;
            Unk_ov23_02257764->unk_300 = NULL;
        }
    }
}

static void ov23_02245AF4 (int param0, BOOL param1)
{
    if (Unk_ov23_02257764->unk_300) {
        UnkStruct_ov23_02245AA4 * v0 = Unk_ov23_02257764->unk_300;

        if (v0->unk_14) {
            sub_0207136C(v0->unk_14);
            v0->unk_14 = NULL;
        }

        if (v0->unk_0D && param1) {
            ov23_022448FC(v0->unk_0C);
        }

        sub_0200AB4C(0, GX_BLEND_PLANEMASK_BG0, 1);

        G2_BlendNone();
        GX_SetMasterBrightness(0);

        sub_0205ED0C(Unk_ov23_02257764->fieldSystem->playerAvatar, 0);
        SysTask_Done(Unk_ov23_02257764->unk_2F0);
        Heap_FreeToHeap(v0);

        Unk_ov23_02257764->unk_2F0 = NULL;
        Unk_ov23_02257764->unk_300 = NULL;
    }
}

static void ov23_02245B78 (int param0)
{
    if (CommSys_CurNetId() == param0) {
        if (Unk_ov23_02257764->unk_300) {
            UnkStruct_ov23_02245AA4 * v0 = Unk_ov23_02257764->unk_300;

            v0->unk_00 = 14;
            Sound_PlayEffect(1547);
        }
    }
}

static void ov23_02245BA8 (SysTask * param0, void * param1)
{
    UnkStruct_ov23_02245AA4 * v0 = param1;
    int v1, v2, v3;
    const s8 v4[] = {
        -1,
        3,
        7,
        11,
        15,
        14,
        13,
        12,
        11,
        9,
        7,
        5,
        3,
        1,
        -10
    };

    switch (v0->unk_00) {
    case 0:
        v0->unk_04 = ov23_02244C10();
        v0->unk_1C = 0;
        v0->unk_00++;
        break;
    case 1:
        sub_0200AAE0(1, 10, 0, GX_BLEND_PLANEMASK_BG0, 1);
        v0->unk_00++;
        break;
    case 2:
        v0->unk_00++;
        break;
    case 3:
        sub_0200AAE0(1, 0, 10, GX_BLEND_PLANEMASK_BG0, 1);
        v0->unk_00++;
        break;
    case 4:
        v0->unk_1C++;

        if (v0->unk_1C > 60) {
            v0->unk_00++;
            v0->unk_1C = 0;
        } else if (ov23_0224495C(v0->unk_0C, 1)) {
            v0->unk_00++;
            v0->unk_1C = 0;
        }
        break;
    case 5:
    case 6:
        v0->unk_1C++;

        if (v0->unk_1C > 30) {
            sub_0205948C(0x10);
            ov23_02254044(ov23_0224219C());

            v0->unk_00 = 7;
            v2 = Player_GetXPos(Unk_ov23_02257764->fieldSystem->playerAvatar);
            v3 = Player_GetZPos(Unk_ov23_02257764->fieldSystem->playerAvatar);

            if (!v0->unk_08) {
                v0->unk_14 = ov5_021F4EAC(Unk_ov23_02257764->fieldSystem, v2, v3, 2, 32);
                sub_0205ED0C(Unk_ov23_02257764->fieldSystem->playerAvatar, -2 * FX32_ONE);
            } else {
                v0->unk_14 = ov5_021F4EAC(Unk_ov23_02257764->fieldSystem, v2, v3, 3, 32);
                sub_0205ED0C(Unk_ov23_02257764->fieldSystem->playerAvatar, -3 * FX32_ONE);
            }
        }
        break;
    case 7:
    {
        int v5 = PlayerAvatar_GetDir(Unk_ov23_02257764->fieldSystem->playerAvatar);

        if (v0->unk_18 != v5) {
            Sound_PlayEffect(1515);
        }

        v0->unk_18 = v5;
    }
        v0->unk_10 = 0;
        break;
    case 8:
        break;
    case 9:
        sub_0205ED0C(Unk_ov23_02257764->fieldSystem->playerAvatar, 0);
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
        Unk_ov23_02257764->unk_2F0 = NULL;
        Unk_ov23_02257764->unk_300 = NULL;
        break;
    case 10:
        break;
    case 11:
        v0->unk_0D = 0;
        sub_0205948C(0x10);
        ov23_022448FC(v0->unk_0C);
        v0->unk_1C = 0;
        v0->unk_00 = 12;
        break;
    case 12:
        v0->unk_1C++;

        if (ov23_0224495C(v0->unk_0C, 0) || (v0->unk_1C > 60)) {
            Link_Message(41);
            v0->unk_00 = 8;
        }
        break;
    case 14:
        if (-10 != v4[v0->unk_10]) {
            sub_0205ED0C(Unk_ov23_02257764->fieldSystem->playerAvatar, v4[v0->unk_10] * FX32_ONE);
            v0->unk_10++;

            if (v0->unk_10 == 5) {
                if (v0->unk_14) {
                    sub_0207136C(v0->unk_14);
                    v0->unk_14 = NULL;
                }

                if (v0->unk_0D) {
                    v0->unk_00 = 11;
                } else {
                    Link_Message(41);
                    v0->unk_00 = 9;
                }
            }
        }
        break;
    }
}

static void ov23_02245DF8 (BOOL param0, BOOL param1, int param2)
{
    int v0;
    UnkStruct_ov23_02245AA4 * v1;

    v1 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov23_02245AA4));
    MI_CpuClear8(v1, sizeof(UnkStruct_ov23_02245AA4));

    v1->unk_00 = 0;
    v1->unk_08 = param0;
    v1->unk_10 = 0;
    v1->unk_0D = param1;
    v1->unk_18 = PlayerAvatar_GetDir(Unk_ov23_02257764->fieldSystem->playerAvatar);
    v1->unk_0C = param2;

    Unk_ov23_02257764->unk_300 = v1;
    Unk_ov23_02257764->unk_2F0 = SysTask_Start(ov23_02245BA8, v1, 100);
}

static void ov23_02245E54 (int param0, BOOL param1, int param2)
{
    ov23_0224AD7C(param0, 4);

    if (CommSys_CurNetId() == param0) {
        ov23_02245DF8(0, param1, param2);
    }
}

static void ov23_02245E78 (int param0, BOOL param1, int param2)
{
    ov23_0224AD7C(param0, 4);

    if (CommSys_CurNetId() == param0) {
        ov23_02245DF8(1, param1, param2);
    }
}

static void ov23_02245E9C (int param0)
{
    ov23_0224AD98(param0);
    sub_020593B4(param0);
}

static void ov23_02245EAC (int param0)
{
    ov23_0224AD7C(param0, 4);
    sub_02059390(param0, 10);
}

static void ov23_02245EC0 (int param0)
{
    ov23_0224AD7C(param0, 4);
    sub_02059390(param0, 20);
}

static void ov23_02245ED4 (UnkStruct_ov23_02245ED4 * param0)
{
    int v0, v1, v2, v3, v4, v5;
    u8 * v6 = NULL;
    MATHRandContext32 v7;
    const int v8 = 256;
    const int v9 = 192;

    CommSys_Seed(&v7);

    v2 = 0;

    for (v0 = 0; v0 < param0->unk_114; v0++) {
        param0->unk_48[v0].unk_00 = MATH_Rand32(&v7, v8);
        param0->unk_48[v0].unk_02 = MATH_Rand32(&v7, v9);
        param0->unk_08[v0] = MATH_Rand32(&v7, 0xffff);
    }
}

static void ov23_02245F94 (SysTask * param0, void * param1)
{
    UnkStruct_ov23_02245ED4 * v0 = param1;
    int v1, v2;

    switch (v0->unk_00) {
    case 0:
        v0->unk_04 = ov23_02244C10();
        v0->unk_111 = 0;
        ov23_02246324();
        v0->unk_00++;
        break;
    case 1:
        sub_0200AAE0(1, 10, 0, GX_BLEND_PLANEMASK_BG0, 1);

        if (Unk_ov23_02257764->unk_B9F == 29) {
            v2 = 2;
        } else {
            v2 = 28;
        }

        Unk_ov23_02257764->unk_1F4[0][0] = sub_0200985C(Unk_ov23_02257764->unk_1D4[0][0], 50, v2, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 4);
        v0->unk_00++;
        break;
    case 2:
        if (Unk_ov23_02257764->unk_B9F == 29) {
            v2 = 3;
        } else {
            v2 = 29;
        }

        Unk_ov23_02257764->unk_1F4[0][1] = sub_020098B8(Unk_ov23_02257764->unk_1D4[0][1], 50, v2, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 7, 4);
        v0->unk_00++;
        break;
    case 3:
        sub_0200AAE0(1, 0, 10, GX_BLEND_PLANEMASK_BG0, 1);

        if (Unk_ov23_02257764->unk_B9F == 29) {
            v2 = 1;
        } else {
            v2 = 27;
        }

        Unk_ov23_02257764->unk_1F4[0][2] = sub_02009918(Unk_ov23_02257764->unk_1D4[0][2], 50, v2, 0, 0, 2, 4);
        v0->unk_00++;
        break;
    case 4:
        if (Unk_ov23_02257764->unk_B9F == 29) {
            v2 = 0;
        } else {
            v2 = 26;
        }

        Unk_ov23_02257764->unk_1F4[0][3] = sub_02009918(Unk_ov23_02257764->unk_1D4[0][3], 50, v2, 0, 0, 3, 4);
        v0->unk_00++;
        break;
    case 5:
        sub_0200A450(Unk_ov23_02257764->unk_1F4[0][0]);
        sub_0200A640(Unk_ov23_02257764->unk_1F4[0][1]);

        ov23_0224644C(v0->unk_114);
        ov23_02245ED4(v0);
        v0->unk_00++;
        break;
    case 6:
        v0->unk_111++;

        if (v0->unk_111 > 30) {
            sub_0200AAE0(1, -4, 0, GX_BLEND_PLANEMASK_BG0, 1);
            ov23_02253F60(ov23_0224219C(), 76, 0, NULL);

            v0->unk_00 = 7;
            v0->unk_118 = 0;
        }
        break;
    case 7:
        if (ov23_02246640(Unk_ov23_02257764->fieldSystem->unk_08, v0)) {
            if (v0->unk_113) {
                v0->unk_00 = 11;
            } else {
                Link_Message(41);
                v0->unk_00 = 8;
            }
        }

        if (v0->unk_118 < 60) {
            v0->unk_118++;

            if (v0->unk_118 == 60) {
                ov23_02254044(ov23_0224219C());
            }
        }

        break;
    case 8:
        ov23_02254044(ov23_0224219C());
        break;
    case 9:
        ov23_02246220(CommSys_CurNetId(), v0->unk_113);
        break;
    case 11:
        v0->unk_113 = 0;
        sub_0205948C(0x10);
        ov23_022448FC(v0->unk_112);
        v0->unk_111 = 0;
        v0->unk_00 = 12;
        break;
    case 12:
        v0->unk_111++;

        if (v0->unk_111 > 8) {
            Link_Message(41);
            v0->unk_00 = 8;
        }
        break;
    }
}

static void ov23_02246220 (int param0, BOOL param1)
{
    if (Unk_ov23_02257764->unk_300) {
        UnkStruct_ov23_02245ED4 * v0 = Unk_ov23_02257764->unk_300;

        if (v0->unk_113 && param1) {
            ov23_022448FC(v0->unk_112);
        }

        sub_0200AB4C(0, GX_BLEND_PLANEMASK_BG0, 1);
        sub_0200AAE0(1, 0, -4, GX_BLEND_PLANEMASK_BG0, 1);

        ov23_02246370(v0->unk_114);

        sub_0205948C(0x10);
        SysTask_Done(Unk_ov23_02257764->unk_2F0);
        Heap_FreeToHeap(Unk_ov23_02257764->unk_300);

        Unk_ov23_02257764->unk_2F0 = NULL;
        Unk_ov23_02257764->unk_300 = NULL;
    }
}

static void ov23_022462A8 (FieldSystem * fieldSystem, BOOL param1, int param2)
{
    int v0;
    UnkStruct_ov23_02245ED4 * v1;

    v1 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov23_02245ED4));
    MI_CpuFill8(v1, 0, sizeof(UnkStruct_ov23_02245ED4));

    v1->unk_113 = param1;
    v1->fieldSystem = fieldSystem;

    if (Unk_ov23_02257764->unk_B9F == 29) {
        v1->unk_114 = 32;
    } else {
        v1->unk_114 = 16;
    }

    v1->unk_112 = param2;

    Unk_ov23_02257764->unk_300 = v1;
    Unk_ov23_02257764->unk_2F0 = SysTask_Start(ov23_02245F94, v1, 100);
}

static void ov23_02246324 (void)
{
    int v0;

    Unk_ov23_02257764->unk_44 = sub_020095C4(32, &Unk_ov23_02257764->unk_48, 4);
    sub_0200964C(&Unk_ov23_02257764->unk_48, 0, (192 << FX32_SHIFT) * 2);

    for (v0 = 0; v0 < 4; v0++) {
        Unk_ov23_02257764->unk_1D4[0][v0] = sub_02009714(2, v0, 4);
    }
}

static void ov23_02246370 (int param0)
{
    int v0;

    for (v0 = 0; v0 < param0; v0++) {
        if (Unk_ov23_02257764->unk_25C[v0] != NULL) {
            sub_02021BD4(Unk_ov23_02257764->unk_25C[v0]);
            Unk_ov23_02257764->unk_25C[v0] = NULL;
        }
    }

    if (Unk_ov23_02257764->unk_1F4[0][0]) {
        if (sub_0201EAD8(sub_02009E08(Unk_ov23_02257764->unk_1F4[0][0]))) {
            sub_0200A4E4(Unk_ov23_02257764->unk_1F4[0][0]);
        }
    }

    Unk_ov23_02257764->unk_1F4[0][0] = NULL;

    if (Unk_ov23_02257764->unk_1F4[0][1]) {
        if (sub_0201F9DC(sub_02009E08(Unk_ov23_02257764->unk_1F4[0][1]))) {
            sub_0200A6DC(Unk_ov23_02257764->unk_1F4[0][1]);
        }
    }

    Unk_ov23_02257764->unk_1F4[0][1] = NULL;

    for (v0 = 0; v0 < 4; v0++) {
        if (Unk_ov23_02257764->unk_1D4[0][v0]) {
            sub_02009754(Unk_ov23_02257764->unk_1D4[0][v0]);
        }

        Unk_ov23_02257764->unk_1D4[0][v0] = NULL;
    }

    if (Unk_ov23_02257764->unk_44) {
        sub_02021964(Unk_ov23_02257764->unk_44);
    }

    Unk_ov23_02257764->unk_44 = NULL;
}

static void ov23_0224644C (int param0)
{
    sub_020093B4(&Unk_ov23_02257764->unk_238, 0, 0, 0, 0, 0xffffffff, 0xffffffff, 0, 0, Unk_ov23_02257764->unk_1D4[0][0], Unk_ov23_02257764->unk_1D4[0][1], Unk_ov23_02257764->unk_1D4[0][2], Unk_ov23_02257764->unk_1D4[0][3], NULL, NULL);

    {
        UnkStruct_ov115_02261520 v0;
        int v1;

        v0.unk_00 = Unk_ov23_02257764->unk_44;
        v0.unk_04 = &Unk_ov23_02257764->unk_238;
        v0.unk_08.x = FX32_CONST(32);
        v0.unk_08.y = FX32_CONST(96);
        v0.unk_08.z = 0;
        v0.unk_14.x = FX32_ONE;
        v0.unk_14.y = FX32_ONE;
        v0.unk_14.z = FX32_ONE;
        v0.unk_20 = 0;
        v0.unk_24 = 0;
        v0.unk_28 = NNS_G2D_VRAM_TYPE_2DMAIN;
        v0.unk_2C = 4;

        for (v1 = 0; v1 < param0; v1++) {
            v0.unk_08.x = FX32_ONE * 300;
            v0.unk_08.y = FX32_ONE * 300;

            Unk_ov23_02257764->unk_25C[v1] = sub_02021AA0(&v0);

            SpriteActor_SetSpriteAnimActive(Unk_ov23_02257764->unk_25C[v1], 0);
            sub_02021CC8(Unk_ov23_02257764->unk_25C[v1], 0);
            SpriteActor_SetAnimFrame(Unk_ov23_02257764->unk_25C[v1], 0);
            sub_02021E80(Unk_ov23_02257764->unk_25C[v1], 1);
        }
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov23_02246548 (int param0)
{
    if (Unk_ov23_02257764->unk_25C[param0]) {
        sub_02021BD4(Unk_ov23_02257764->unk_25C[param0]);
        Unk_ov23_02257764->unk_25C[param0] = NULL;
    }
}

static void ov23_02246574 (int param0, UnkStruct_ov23_02245ED4 * param1, int param2)
{
    void * v0;
    UnkStruct_020203AC * v1;
    void * v2;
    VecFx32 v3;
    fx32 v4, v5;
    int v6 = param1->unk_48[param0].unk_00;
    int v7 = param1->unk_48[param0].unk_02;

    if (param2 == 0) {
        param1->unk_08[param0] += 0x400;
    }

    v4 = FX_Mul(FX_SinIdx(param1->unk_08[param0]), 4 * FX32_ONE + FX32_ONE / 2);
    v5 = FX_Mul(FX_CosIdx(param1->unk_08[param0]), 2 * FX32_ONE + FX32_ONE / 2);
    v5 = MATH_ABS(v5);

    if (Unk_ov23_02257764->unk_25C[param0]) {
        v3.x = FX32_ONE * (v6) + v4;
        v3.y = FX32_ONE * (v7) + v5;

        sub_02021C50(Unk_ov23_02257764->unk_25C[param0], &v3);
    }
}

static void ov23_02246624 (MICResult param0, void * param1)
{
    if (param0 == MIC_RESULT_SUCCESS) {
        Unk_ov23_02257764->unk_B9E = Unk_ov23_02257760;
    }
}

static BOOL ov23_02246640 (BGL * param0, UnkStruct_ov23_02245ED4 * param1)
{
    int v0;
    int v1 = 0, v2, v3, v4, v5;
    fx32 v6, v7, v8;

    sub_02004B70(MIC_SAMPLING_TYPE_SIGNED_8BIT, &Unk_ov23_02257760, ov23_02246624, NULL);

    {
        if (Unk_ov23_02257764->unk_B9F == 29) {
            v1 = abs(Unk_ov23_02257764->unk_B9E) / 33;
            param1->unk_C8[param1->unk_110] = v1;
        } else {
            v1 = abs(Unk_ov23_02257764->unk_B9E) / 25;
            param1->unk_C8[param1->unk_110] = v1;
        }
    }

    for (v0 = 0; v0 < param1->unk_114; v0++) {
        if (Unk_ov23_02257764->unk_25C[v0]) {
            break;
        }
    }

    if (v0 == param1->unk_114) {
        return 1;
    }

    for (v0 = 0; v0 < param1->unk_114; v0++) {
        if ((param1->unk_48[v0].unk_00 <= 0) || (param1->unk_48[v0].unk_00 >= 256) || (param1->unk_48[v0].unk_02 <= 0) || (param1->unk_48[v0].unk_02 >= 192)) {
            ov23_02246548(v0);
            continue;
        }

        v5 = param1->unk_110 - param1->unk_F0[v0];

        if (v5 < 0) {
            v5 += 40;
        }

        v1 = param1->unk_C8[v5];
        v6 = param1->unk_48[v0].unk_00 - 128;
        v7 = param1->unk_48[v0].unk_02 - 96;
        v6 *= FX32_ONE;
        v7 *= FX32_ONE;
        v8 = FX_Mul(v6, v6) + FX_Mul(v7, v7);
        v8 = FX_Sqrt(v8);

        if (v1 == 0) {
            v6 = FX_Mul(FX_Div(v8, (160 * FX32_ONE)), (40 - 2) * FX32_ONE);
            param1->unk_F0[v0] = FX_Whole(v6);
        } else {
            fx32 v9 = param1->unk_48[v0].unk_00 - 128;
            fx32 v10 = param1->unk_48[v0].unk_02 - 96;

            if (v10 == 0) {
                if (v9 < 0) {
                    param1->unk_48[v0].unk_00 -= v1;
                } else {
                    param1->unk_48[v0].unk_00 += v1;
                }
            } else if (v9 == 0) {
                if (v10 < 0) {
                    param1->unk_48[v0].unk_02 -= v1;
                } else {
                    param1->unk_48[v0].unk_02 += v1;
                }
            } else {
                {
                    u16 v11 = FX_Atan2Idx(v10, v9);

                    v8 += v1 * FX32_ONE;
                    v3 = FX_Whole(FX_Mul(FX_SinIdx(v11), v8));
                    param1->unk_48[v0].unk_02 = v3 + 96;
                    v3 = FX_Whole(FX_Mul(FX_CosIdx(v11), v8));
                    param1->unk_48[v0].unk_00 = v3 + 128;
                }
            }
        }

        ov23_02246574(v0, param1, v1);
    }

    param1->unk_110++;

    if (param1->unk_110 >= 40) {
        param1->unk_110 = 0;
    }

    sub_020219F8(Unk_ov23_02257764->unk_44);
    return 0;
}

void ov23_022468A8 (BGL * param0)
{
    if (Unk_ov23_02257764->unk_304) {
        Unk_ov23_02257764->unk_304(param0);
    }
}

static int ov23_022468C0 (void)
{
    int v0;

    if (Unk_ov23_02257764->unk_B9F == 23) {
        v0 = 20;
    } else {
        v0 = 7;
    }

    return v0;
}

static const int Unk_ov23_022563E8[] = {
    0x20,
    0x1C,
    0x18
};

static void ov23_022468DC (UnkStruct_ov23_022468DC * param0)
{
    int v0, v1, v2, v3 = 0, v4, v5, v6, v7;
    MATHRandContext32 v8;
    const int v9 = 256;
    const int v10 = 192;

    CommSys_Seed(&v8);

    v6 = ov23_022468C0();

    if (Unk_ov23_02257764->unk_B9F == 23) {
        v3 = MATH_Rand32(&v8, 2) + 1;
    }

    v4 = MATH_Rand32(&v8, 3) + v3 + 5;

    for (v0 = 0; v0 < v6; v0++) {
        v7 = v6 - v0 - 1;

        if (v0 < v3) {
            param0->unk_08[v7] = 0;
        } else if (v0 < v4) {
            param0->unk_08[v7] = 1;
        } else {
            param0->unk_08[v7] = 2;
        }

        v5 = Unk_ov23_022563E8[param0->unk_08[v7]];
        v1 = v9 - v5 * 2;
        v2 = v10 - v5 * 2;

        param0->unk_44[v7].unk_00 = (MATH_Rand32(&v8, v1) + v5) * FX32_ONE;
        param0->unk_44[v7].unk_04 = (MATH_Rand32(&v8, v2) + v5) * FX32_ONE;
        param0->unk_1C[v7] = MATH_Rand32(&v8, 0xffff);
        param0->unk_134[v7] = MATH_Rand32(&v8, 0xffff);
    }
}

static void ov23_02246A80 (SysTask * param0, void * param1)
{
    UnkStruct_ov23_022468DC * v0 = param1;
    int v1;

    switch (v0->unk_00) {
    case 0:
        v0->unk_04 = ov23_02244C10();
        v0->unk_15C = 0;
        ov23_02246324();
        v0->unk_00++;
        break;
    case 1:
        Unk_ov23_02257764->unk_1F4[0][0] = sub_0200985C(Unk_ov23_02257764->unk_1D4[0][0], 50, 6, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 4);
        sub_0200AAE0(1, 10, 0, GX_BLEND_PLANEMASK_BG0, 1);
        v0->unk_00++;
        break;
    case 2:
        Unk_ov23_02257764->unk_1F4[0][1] = sub_020098B8(Unk_ov23_02257764->unk_1D4[0][1], 50, 7, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 7, 4);
        v0->unk_00++;
        break;
    case 3:
        sub_0200AAE0(1, 0, 10, GX_BLEND_PLANEMASK_BG0, 1);
        Unk_ov23_02257764->unk_1F4[0][2] = sub_02009918(Unk_ov23_02257764->unk_1D4[0][2], 50, 5, 0, 0, 2, 4);
        v0->unk_00++;
        break;
    case 4:
        Unk_ov23_02257764->unk_1F4[0][3] = sub_02009918(Unk_ov23_02257764->unk_1D4[0][3], 50, 4, 0, 0, 3, 4);
        v0->unk_00++;
        break;
    case 5:
        ov23_022468DC(v0);
        ov23_02246D44(v0);
        v0->unk_00++;
        break;
    case 6:
        v0->unk_15C++;

        if (v0->unk_15C > 30) {
            GX_SetMasterBrightness(-4);
            v0->unk_00 = 7;
            ov23_02253F60(ov23_0224219C(), 77, 0, NULL);
            v0->unk_160 = 0;
            Sound_PlayEffect(1632);
        }
        break;
    case 7:
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_OBJ, GX_BLEND_PLANEMASK_BG0, 14, 7);

        if (ov23_02246F20(Unk_ov23_02257764->fieldSystem->unk_08, v0)) {
            sub_020057A4(1632, 0);

            if (v0->unk_15E) {
                v0->unk_00 = 11;
            } else {
                Link_Message(41);
                v0->unk_00 = 8;
            }
        }

        if (v0->unk_160 < 60) {
            v0->unk_160++;

            if (v0->unk_160 == 60) {
                ov23_02254044(ov23_0224219C());
            }
        }
        break;
    case 8:
        sub_020057A4(1632, 0);
        ov23_02254044(ov23_0224219C());
        break;
    case 9:
        v0->unk_00 = 10;
        ov23_02247144(CommSys_CurNetId(), v0->unk_15E);
        break;
    case 10:
        break;
    case 11:
        v0->unk_15E = 0;
        sub_0205948C(0x10);
        ov23_022448FC(v0->unk_15D);
        v0->unk_15C = 0;
        v0->unk_00 = 12;
        break;
    case 12:
        v0->unk_15C++;

        if (v0->unk_15C > 8) {
            Link_Message(41);
            v0->unk_00 = 8;
        }
        break;
    }
}

static void ov23_02246CF0 (BGL * param0, BOOL param1, int param2)
{
    int v0;
    UnkStruct_ov23_022468DC * v1;

    v1 = Heap_AllocFromHeapAtEnd(4, sizeof(UnkStruct_ov23_022468DC));
    MI_CpuFill8(v1, 0, sizeof(UnkStruct_ov23_022468DC));
    v1->unk_15E = param1;

    Unk_ov23_02257764->unk_300 = v1;
    Unk_ov23_02257764->unk_2F0 = SysTask_Start(ov23_02246A80, v1, 100);

    v1->unk_15D = param2;
}

static void ov23_02246D44 (UnkStruct_ov23_022468DC * param0)
{
    sub_0200A450(Unk_ov23_02257764->unk_1F4[0][0]);
    sub_0200A640(Unk_ov23_02257764->unk_1F4[0][1]);
    sub_020093B4(&Unk_ov23_02257764->unk_238, 0, 0, 0, 0, 0xffffffff, 0xffffffff, 0, 0, Unk_ov23_02257764->unk_1D4[0][0], Unk_ov23_02257764->unk_1D4[0][1], Unk_ov23_02257764->unk_1D4[0][2], Unk_ov23_02257764->unk_1D4[0][3], NULL, NULL);

    {
        UnkStruct_ov115_02261520 v0;
        int v1;

        v0.unk_00 = Unk_ov23_02257764->unk_44;
        v0.unk_04 = &Unk_ov23_02257764->unk_238;
        v0.unk_08.x = FX32_CONST(32);
        v0.unk_08.y = FX32_CONST(96);
        v0.unk_08.z = 0;
        v0.unk_14.x = FX32_ONE;
        v0.unk_14.y = FX32_ONE;
        v0.unk_14.z = FX32_ONE;
        v0.unk_20 = 0;
        v0.unk_24 = 0;
        v0.unk_28 = NNS_G2D_VRAM_TYPE_2DMAIN;
        v0.unk_2C = 4;

        for (v1 = 0; v1 < ov23_022468C0(); v1++) {
            v0.unk_08.x = FX32_ONE * 300;
            v0.unk_08.y = FX32_ONE * 300;

            Unk_ov23_02257764->unk_25C[v1] = sub_02021AA0(&v0);

            sub_02021CF8(Unk_ov23_02257764->unk_25C[v1], 1);
            SpriteActor_SetSpriteAnimActive(Unk_ov23_02257764->unk_25C[v1], (param0->unk_08[v1] * 2));
            sub_02021CC8(Unk_ov23_02257764->unk_25C[v1], 1);
            SpriteActor_SetAnimFrame(Unk_ov23_02257764->unk_25C[v1], v1 * 4);
            sub_02021FE0(Unk_ov23_02257764->unk_25C[v1], GX_OAM_MODE_XLU);
            sub_02021E80(Unk_ov23_02257764->unk_25C[v1], 1);
        }
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov23_02246E90 (int param0, UnkStruct_ov23_022468DC * param1)
{
    void * v0;
    UnkStruct_020203AC * v1;
    void * v2;
    VecFx32 v3;
    fx32 v4;
    fx16 v5;

    if (Unk_ov23_02257764->unk_25C[param0]) {
        v3.x = param1->unk_44[param0].unk_00;
        v3.y = param1->unk_44[param0].unk_04;

        sub_02021C50(Unk_ov23_02257764->unk_25C[param0], &v3);
        param1->unk_134[param0] += 0x250 + param0 * 100;

        v5 = FX_SinIdx(param1->unk_134[param0]) + FX32_ONE;
        v4 = FX_Div(v5, (20 * FX32_ONE));
        v3.x = FX32_ONE - v4;
        v3.y = FX32_ONE - v4;
        v3.z = FX32_ONE - v4;

        sub_02021C70(Unk_ov23_02257764->unk_25C[param0], &v3);
    }
}

static BOOL ov23_02246F20 (BGL * param0, UnkStruct_ov23_022468DC * param1)
{
    int v0;
    int v1 = 0, v2, v3, v4, v5, v6, v7;
    fx32 v8, v9, v10, v11;

    v3 = 0;

    for (v0 = 0; v0 < ov23_022468C0(); v0++) {
        if (param1->unk_E4[v0] == 0) {
            ov23_02246E90(v0, param1);
        } else {
            v3++;
        }
    }

    if (v3 == ov23_022468C0()) {
        return 1;
    }

    if (gCoreSys.touchPressed) {
        for (v0 = 0; v0 < ov23_022468C0(); v0++) {
            if (param1->unk_E4[v0]) {
                continue;
            }

            v8 = gCoreSys.touchX * FX32_ONE - param1->unk_44[v0].unk_00;
            v9 = gCoreSys.touchY * FX32_ONE - param1->unk_44[v0].unk_04;
            v11 = FX_Mul(v8, v8) + FX_Mul(v9, v9);
            v11 = FX_Sqrt(v11);

            if ((Unk_ov23_022563E8[param1->unk_08[v0]] * FX32_ONE) > v11) {
                Sound_PlayEffect(1574);
                SpriteActor_SetSpriteAnimActive(Unk_ov23_02257764->unk_25C[v0], param1->unk_08[v0] * 2 + 1);
                param1->unk_E4[v0] = 1;
                break;
            }
        }
    }

    for (v0 = 0; v0 < ov23_022468C0(); v0++) {
        if (param1->unk_E4[v0]) {
            continue;
        }

        v11 = FX_SinIdx(param1->unk_1C[v0]);
        param1->unk_44[v0].unk_04 -= v11;

        v11 = FX_CosIdx(param1->unk_1C[v0]);
        param1->unk_44[v0].unk_00 += v11;

        v5 = Unk_ov23_022563E8[param1->unk_08[v0]];

        if (param1->unk_44[v0].unk_04 < ((0 + v5) * FX32_ONE)) {
            param1->unk_1C[v0] = 0xffff - param1->unk_1C[v0];
        } else if (param1->unk_44[v0].unk_04 >= ((192 - v5) * FX32_ONE)) {
            param1->unk_1C[v0] = 0xffff - param1->unk_1C[v0];
        }

        if (param1->unk_44[v0].unk_00 < ((0 + v5) * FX32_ONE)) {
            param1->unk_1C[v0] = 0xffff - (param1->unk_1C[v0] - 0x8000);
        } else if (param1->unk_44[v0].unk_00 >= ((256 - v5) * FX32_ONE)) {
            param1->unk_1C[v0] = 0xffff - (param1->unk_1C[v0] - 0x8000);
        }
    }

    sub_020219F8(Unk_ov23_02257764->unk_44);
    return 0;
}

static void ov23_0224710C (int param0, BOOL param1, int param2)
{
    ov23_0224AD7C(param0, 2);

    if (CommSys_CurNetId() == param0) {
        ov23_02246CF0(Unk_ov23_02257764->fieldSystem->unk_08, param1, param2);
    }
}

static void ov23_02247138 (int param0)
{
    ov23_0224AD7C(param0, 2);
}

static void ov23_02247144 (int param0, BOOL param1)
{
    if (Unk_ov23_02257764->unk_300) {
        UnkStruct_ov23_022468DC * v0 = Unk_ov23_02257764->unk_300;

        sub_020057A4(1632, 0);

        if (v0->unk_15E && param1) {
            ov23_022448FC(v0->unk_15D);
        }

        G2_BlendNone();
        sub_0200AB4C(0, GX_BLEND_PLANEMASK_BG0, 1);

        GX_SetMasterBrightness(0);
        ov23_02246370(ov23_022468C0());

        sub_0205948C(0x10);
        SysTask_Done(Unk_ov23_02257764->unk_2F0);
        Heap_FreeToHeap(Unk_ov23_02257764->unk_300);

        Unk_ov23_02257764->unk_2F0 = NULL;
        Unk_ov23_02257764->unk_300 = NULL;
    }
}

static void ov23_022471D8 (UnkStruct_ov23_022471D8 * param0)
{
    sub_0200A450(Unk_ov23_02257764->unk_1F4[0][0]);
    sub_0200A640(Unk_ov23_02257764->unk_1F4[0][1]);
    sub_020093B4(&Unk_ov23_02257764->unk_238, 0, 0, 0, 0, 0xffffffff, 0xffffffff, 0, 0, Unk_ov23_02257764->unk_1D4[0][0], Unk_ov23_02257764->unk_1D4[0][1], Unk_ov23_02257764->unk_1D4[0][2], Unk_ov23_02257764->unk_1D4[0][3], NULL, NULL);

    {
        UnkStruct_ov115_02261520 v0;
        int v1;

        v0.unk_00 = Unk_ov23_02257764->unk_44;
        v0.unk_04 = &Unk_ov23_02257764->unk_238;
        v0.unk_08.x = FX32_CONST(32);
        v0.unk_08.y = FX32_CONST(96);
        v0.unk_08.z = 0;
        v0.unk_14.x = FX32_ONE;
        v0.unk_14.y = FX32_ONE;
        v0.unk_14.z = FX32_ONE;
        v0.unk_20 = 0;
        v0.unk_24 = 0;
        v0.unk_28 = NNS_G2D_VRAM_TYPE_2DMAIN;
        v0.unk_2C = 4;

        for (v1 = 0; v1 < 15; v1++) {
            v0.unk_08.x = FX32_ONE * 100;
            v0.unk_08.y = FX32_ONE * 100;

            Unk_ov23_02257764->unk_25C[v1] = sub_02021AA0(&v0);

            SpriteActor_SetSpriteAnimActive(Unk_ov23_02257764->unk_25C[v1], 2);
            sub_02021CC8(Unk_ov23_02257764->unk_25C[v1], 1);
            sub_02021CAC(Unk_ov23_02257764->unk_25C[v1], 0);
            SpriteActor_SetAnimFrame(Unk_ov23_02257764->unk_25C[v1], 0);
            sub_02021F58(Unk_ov23_02257764->unk_25C[v1], 15 - v1);
            sub_02021E80(Unk_ov23_02257764->unk_25C[v1], 1);
        }
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov23_0224730C (UnkStruct_ov23_022471D8 * param0, int param1, int param2, int param3, int param4, int param5)
{
    param0->unk_08[param1] = param2;
    param0->unk_80[param1] = param4;
    param0->unk_44[param1] = param3;
    param0->unk_BC[param1] = param5;

    sub_02021CAC(Unk_ov23_02257764->unk_25C[param1], 1);
}

static void ov23_0224733C (UnkStruct_ov23_022471D8 * param0, int param1)
{
    switch (param1) {
    default:
    case 4:
        ov23_0224730C(param0, 11, 105, param0->unk_120 - 5, 2, -4);
        ov23_0224730C(param0, 12, 140, param0->unk_120 - 15, -2, -4);
        ov23_0224730C(param0, 13, 135, param0->unk_120 - 20, -2, -2);
        ov23_0224730C(param0, 14, 120, param0->unk_120 - 11, 2, 0);
    case 3:
        ov23_0224730C(param0, 7, 128, param0->unk_120 - 5, 3, -4);
        ov23_0224730C(param0, 8, 132, param0->unk_120 - 15, -3, -4);
        ov23_0224730C(param0, 9, 112, param0->unk_120, 1, -2);
        ov23_0224730C(param0, 10, 115, param0->unk_120 + 2, 1, -2);
    case 2:
        ov23_0224730C(param0, 4, 140, param0->unk_120 - 10, 2, -3);
        ov23_0224730C(param0, 5, 140, param0->unk_120 - 20, -2, -3);
        ov23_0224730C(param0, 6, 110, param0->unk_120, -1, -2);
    case 1:
        ov23_0224730C(param0, 2, 120, param0->unk_120 - 30, -2, -3);
        ov23_0224730C(param0, 3, 100, param0->unk_120 - 10, -2, -3);
    case 0:
        ov23_0224730C(param0, 1, 128, param0->unk_120 - 30, 2, -3);
    }
}

static void ov23_022474D4 (UnkStruct_ov23_022471D8 * param0)
{
    int v0;
    VecFx32 v1;

    for (v0 = 0; v0 < 15; v0++) {
        if (param0->unk_80[v0] != 0) {
            param0->unk_08[v0] += param0->unk_80[v0];
            param0->unk_44[v0] += param0->unk_BC[v0];
            param0->unk_BC[v0] += param0->unk_124;

            v1.x = param0->unk_08[v0] * FX32_ONE;
            v1.y = param0->unk_44[v0] * FX32_ONE;

            sub_02021C50(Unk_ov23_02257764->unk_25C[v0], &v1);

            if (param0->unk_44[v0] > (param0->unk_120 + 35)) {
                sub_02021CAC(Unk_ov23_02257764->unk_25C[v0], 0);
                param0->unk_80[v0] = 0;
            }
        }
    }
}

static BOOL ov23_02247568 (BGL * param0, UnkStruct_ov23_022471D8 * param1)
{
    int v0;
    int v1 = 0, v2, v3, v4, v5, v6;
    fx32 v7, v8, v9, v10;
    VecFx32 v11;

    switch (param1->unk_125) {
    case 0:
        param1->unk_124 = 0;
        v5 = Player_GetXPos(Unk_ov23_02257764->fieldSystem->playerAvatar);
        v6 = Player_GetZPos(Unk_ov23_02257764->fieldSystem->playerAvatar);
        param1->unk_114 = ov5_021F4F18(Unk_ov23_02257764->fieldSystem, v5, v6, 5, 32);
        param1->unk_125 = 1;
        Sound_PlayEffect(1630);
        break;
    case 1:
        param1->unk_124++;

        if (param1->unk_124 > 20) {
            param1->unk_125 = 2;
            param1->unk_120 = 0;
            param1->unk_11C = 5;
            SpriteActor_SetSpriteAnimActive(Unk_ov23_02257764->unk_25C[0], 0);
        }
        break;
    case 2:
        v11.x = 128 * FX32_ONE;
        v11.y = param1->unk_120 * FX32_ONE;

        sub_02021C50(Unk_ov23_02257764->unk_25C[0], &v11);
        sub_02021CAC(Unk_ov23_02257764->unk_25C[0], 1);

        if (param1->unk_120 > 65) {
            param1->unk_125 = 3;
            Sound_PlayEffect(1629);

            if (Unk_ov23_02257764->unk_B9F == 21) {
                param1->unk_118 = -1;
            } else {
                param1->unk_118 = 5;
            }

            if (param1->unk_114) {
                sub_0207136C(param1->unk_114);
                param1->unk_114 = NULL;
            }
        } else {
            param1->unk_120 += param1->unk_11C;
            param1->unk_11C += 3;
        }
        break;
    case 3:
        if (gCoreSys.touchPressed) {
            v7 = (gCoreSys.touchX - 128) * FX32_ONE;
            v8 = (gCoreSys.touchY - param1->unk_120) * FX32_ONE;
            v10 = FX_Mul(v7, v7) + FX_Mul(v8, v8);
            v10 = FX_Sqrt(v10);

            if ((48 * FX32_ONE) > v10) {
                param1->unk_12C = 3;
                Sound_PlayEffect(1575);
                param1->unk_118++;

                if ((param1->unk_118 % 3) == 2) {
                    int v12 = param1->unk_118 / 3;

                    sub_0200A490(param1->unk_F8[0], param1->unk_F8[v12 + 1]);
                    param1->unk_124 = 0;
                    param1->unk_125 = 4;
                }
            }
        }

        if (param1->unk_118 > 15) {
            param1->unk_124 = 0;
            param1->unk_125 = 5;
            param1->unk_12C = 0;
        }

        if (param1->unk_12C != 0) {
            if (param1->unk_12C < 0) {
                param1->unk_12C++;
            }

            param1->unk_12C = 0 - param1->unk_12C;
        }

        v11.x = (128 + param1->unk_12C) * FX32_ONE;
        v11.y = param1->unk_120 * FX32_ONE;

        sub_02021C50(Unk_ov23_02257764->unk_25C[0], &v11);
        break;
    case 4:
        if (param1->unk_124 == 0) {
            ov23_0224733C(param1, param1->unk_118 / 3);
        }

        param1->unk_124++;
        ov23_022474D4(param1);

        if (param1->unk_124 == 20) {
            param1->unk_125 = 3;
        }

        if (param1->unk_12C != 0) {
            if (param1->unk_12C < 0) {
                param1->unk_12C++;
            }

            param1->unk_12C = 0 - param1->unk_12C;
        }

        v11.x = (128 + param1->unk_12C) * FX32_ONE;
        v11.y = param1->unk_120 * FX32_ONE;
        sub_02021C50(Unk_ov23_02257764->unk_25C[0], &v11);
        break;
    case 5:
        if (param1->unk_124 == 0) {
            Sound_PlayEffect(1578);
            sub_0200A490(param1->unk_F8[0], param1->unk_F8[6]);

            for (v0 = 1; v0 < 9; v0++) {
                SpriteActor_SetSpriteAnimActive(Unk_ov23_02257764->unk_25C[v0], 1);

                v11.x = (70 + 12 * v0) * FX32_ONE;
                v11.y = (param1->unk_120 + 39 + v0 % 2) * FX32_ONE;

                sub_02021C50(Unk_ov23_02257764->unk_25C[v0], &v11);
                sub_02021CAC(Unk_ov23_02257764->unk_25C[v0], 1);
            }

            SpriteActor_SetSpriteAnimActive(Unk_ov23_02257764->unk_25C[10], 1);

            v11.x = 100 * FX32_ONE;
            v11.y = (param1->unk_120 + 21) * FX32_ONE;

            sub_02021C50(Unk_ov23_02257764->unk_25C[10], &v11);
            sub_02021CAC(Unk_ov23_02257764->unk_25C[10], 1);
            SpriteActor_SetSpriteAnimActive(Unk_ov23_02257764->unk_25C[11], 1);

            v11.x = 122 * FX32_ONE;
            v11.y = param1->unk_120 * FX32_ONE;

            sub_02021C50(Unk_ov23_02257764->unk_25C[11], &v11);
            sub_02021CAC(Unk_ov23_02257764->unk_25C[11], 1);
        }

        param1->unk_124++;

        v11.x = (128 - (10 / 2) + (LCRNG_Next() % 10)) * FX32_ONE;
        v11.y = param1->unk_120 * FX32_ONE;

        sub_02021C50(Unk_ov23_02257764->unk_25C[0], &v11);
        param1->unk_120 += 1;

        if (param1->unk_124 % 8) {
            SpriteActor_SetSpriteAnimActive(Unk_ov23_02257764->unk_25C[0], 3 + param1->unk_124 / 8);
        }

        if (param1->unk_124 == 75) {
            param1->unk_125 = 6;
        }
        break;
    case 6:
        if (param1->unk_114) {
            sub_0207136C(param1->unk_114);
            param1->unk_114 = NULL;
        }

        sub_02021CAC(Unk_ov23_02257764->unk_25C[0], 0);
        return 1;
    }

    sub_020219F8(Unk_ov23_02257764->unk_44);
    return 0;
}

static void ov23_022479F4 (UnkStruct_ov23_022471D8 * param0)
{
    int v0[] = {
        35, 38, 41, 44, 47, 50,
    };
    int v1 = param0->unk_124 - 1;

    {
        NARC * v2;

        v2 = NARC_ctor(NARC_INDEX_DATA__UG_TRAP, 4);

        if (v1 < (7 - 1)) {
            param0->unk_F8[v1 + 1] = sub_02009A4C(Unk_ov23_02257764->unk_1D4[0][0], v2, v0[v1], 0, v1 + 1, NNS_G2D_VRAM_TYPE_2DMAIN, 4);
        }

        NARC_dtor(v2);
    }
}

static void ov23_02247A60 (UnkStruct_ov23_022471D8 * param0)
{
    int v0;

    for (v0 = 1; v0 < 7; v0++) {
        if (param0->unk_F8[v0]) {
            sub_02009D68(Unk_ov23_02257764->unk_1D4[0][0], param0->unk_F8[v0]);
        }
    }
}

static void ov23_02247A8C (SysTask * param0, void * param1)
{
    UnkStruct_ov23_022471D8 * v0 = param1;
    int v1;

    switch (v0->unk_00) {
    case 0:
        v0->unk_04 = ov23_02244C10();
        v0->unk_124 = 0;

        {
            int v2;

            Unk_ov23_02257764->unk_44 = sub_020095C4(32, &Unk_ov23_02257764->unk_48, 4);
            sub_0200964C(&Unk_ov23_02257764->unk_48, 0, (192 << FX32_SHIFT) * 2);

            for (v2 = 0; v2 < 4; v2++) {
                Unk_ov23_02257764->unk_1D4[0][v2] = sub_02009714(7 + 1, v2, 4);
            }
        }
        v0->unk_00++;
        break;
    case 1:
        sub_0200AAE0(1, 10, 0, GX_BLEND_PLANEMASK_BG0, 1);
        Unk_ov23_02257764->unk_1F4[0][0] = sub_0200985C(Unk_ov23_02257764->unk_1D4[0][0], 50, 32, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 4);
        v0->unk_F8[0] = Unk_ov23_02257764->unk_1F4[0][0];
        v0->unk_00++;
        break;
    case 2:
        Unk_ov23_02257764->unk_1F4[0][1] = sub_020098B8(Unk_ov23_02257764->unk_1D4[0][1], 50, 51, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 7, 4);
        v0->unk_00++;
        break;
    case 3:
        sub_0200AAE0(1, 0, 10, GX_BLEND_PLANEMASK_BG0, 1);
        Unk_ov23_02257764->unk_1F4[0][2] = sub_02009918(Unk_ov23_02257764->unk_1D4[0][2], 50, 31, 0, 0, 2, 4);
        v0->unk_00++;
        break;
    case 4:
        Unk_ov23_02257764->unk_1F4[0][3] = sub_02009918(Unk_ov23_02257764->unk_1D4[0][3], 50, 30, 0, 0, 3, 4);
        v0->unk_00++;
        break;
    case 5:
        ov23_022471D8(v0);
        v0->unk_00++;
        break;
    case 6:
        v0->unk_124++;
        ov23_022479F4(v0);

        if (v0->unk_124 > 30) {
            if (Unk_ov23_02257764->unk_B9F == 20) {
                sub_0200A490(v0->unk_F8[0], v0->unk_F8[2]);
            }

            ov23_02253F60(ov23_0224219C(), 77, 0, NULL);

            v0->unk_128 = 0;
            v0->unk_00 = 7;
        }
        break;
    case 7:
        if (ov23_02247568(Unk_ov23_02257764->fieldSystem->unk_08, v0)) {
            if (v0->unk_127) {
                v0->unk_00 = 11;
            } else {
                Link_Message(41);
                v0->unk_00 = 8;
            }
        }

        if (v0->unk_128 < 60) {
            v0->unk_128++;

            if (v0->unk_128 == 60) {
                ov23_02254044(ov23_0224219C());
            }
        }
        break;
    case 8:
        ov23_02254044(ov23_0224219C());
        break;
    case 9:
        ov23_02247DB0(CommSys_CurNetId(), v0->unk_127);
        break;
    case 11:
        v0->unk_127 = 0;
        sub_0205948C(0x10);
        ov23_022448FC(v0->unk_126);
        v0->unk_124 = 0;
        v0->unk_00 = 12;
        break;
    case 12:
        v0->unk_124++;

        if (v0->unk_124 > 8) {
            Link_Message(41);
            v0->unk_00 = 8;
        }
        break;
    }
}

static void ov23_02247D28 (BGL * param0, BOOL param1, int param2)
{
    int v0;
    UnkStruct_ov23_022471D8 * v1;

    v1 = Heap_AllocFromHeapAtEnd(4, sizeof(UnkStruct_ov23_022471D8));
    MI_CpuFill8(v1, 0, sizeof(UnkStruct_ov23_022471D8));

    v1->unk_127 = param1;
    v1->unk_126 = param2;

    Unk_ov23_02257764->unk_300 = v1;
    Unk_ov23_02257764->unk_2F0 = SysTask_Start(ov23_02247A8C, v1, 100);
}

static void ov23_02247D78 (int param0, BOOL param1, int param2)
{
    ov23_0224AD7C(param0, 2);

    if (CommSys_CurNetId() == param0) {
        ov23_02247D28(Unk_ov23_02257764->fieldSystem->unk_08, param1, param2);
    }
}

static void ov23_02247DA4 (int param0)
{
    ov23_0224AD7C(param0, 2);
}

static void ov23_02247DB0 (int param0, BOOL param1)
{
    if (Unk_ov23_02257764->unk_300) {
        UnkStruct_ov23_022471D8 * v0 = Unk_ov23_02257764->unk_300;

        if (v0->unk_114) {
            sub_0207136C(v0->unk_114);
            v0->unk_114 = NULL;
        }

        if (v0->unk_127 && param1) {
            ov23_022448FC(v0->unk_126);
        }

        ov23_02247A60(v0);
        ov23_02246370(15);

        sub_0200AB4C(0, GX_BLEND_PLANEMASK_BG0, 1);
        sub_0205948C(0x10);
        SysTask_Done(Unk_ov23_02257764->unk_2F0);
        Heap_FreeToHeap(v0);

        Unk_ov23_02257764->unk_2F0 = NULL;
        Unk_ov23_02257764->unk_300 = NULL;
    }
}

static void ov23_02247E38 (UnkStruct_ov23_02247E38 * param0)
{
    sub_0200A450(Unk_ov23_02257764->unk_1F4[0][0]);
    sub_0200A640(Unk_ov23_02257764->unk_1F4[0][1]);
    sub_020093B4(&Unk_ov23_02257764->unk_238, 0, 0, 0, 0, 0xffffffff, 0xffffffff, 0, 0, Unk_ov23_02257764->unk_1D4[0][0], Unk_ov23_02257764->unk_1D4[0][1], Unk_ov23_02257764->unk_1D4[0][2], Unk_ov23_02257764->unk_1D4[0][3], NULL, NULL);

    {
        UnkStruct_ov115_02261520 v0;
        int v1;

        v0.unk_00 = Unk_ov23_02257764->unk_44;
        v0.unk_04 = &Unk_ov23_02257764->unk_238;
        v0.unk_08.x = FX32_CONST(32);
        v0.unk_08.y = FX32_CONST(96);
        v0.unk_08.z = 0;
        v0.unk_14.x = FX32_ONE;
        v0.unk_14.y = FX32_ONE;
        v0.unk_14.z = FX32_ONE;
        v0.unk_20 = 0;
        v0.unk_24 = 0;
        v0.unk_28 = NNS_G2D_VRAM_TYPE_2DMAIN;
        v0.unk_2C = 4;

        for (v1 = 0; v1 < 1; v1++) {
            v0.unk_08.x = FX32_ONE * 128;
            v0.unk_08.y = FX32_ONE * 84;

            Unk_ov23_02257764->unk_25C[v1] = sub_02021AA0(&v0);

            sub_02021CF8(Unk_ov23_02257764->unk_25C[v1], 2);
            SpriteActor_SetSpriteAnimActive(Unk_ov23_02257764->unk_25C[v1], 0);
            sub_02021CC8(Unk_ov23_02257764->unk_25C[v1], 1);
            SpriteActor_SetAnimFrame(Unk_ov23_02257764->unk_25C[v1], 0);
            sub_02021E80(Unk_ov23_02257764->unk_25C[v1], 1);
        }
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static BOOL ov23_02247F4C (BGL * param0, UnkStruct_ov23_02247E38 * param1)
{
    int v0, v1, v2, v3 = 0;
    float v4;
    int v5 = 0, v6, v7, v8, v9, v10;
    VecFx32 v11;

    switch (param1->unk_28) {
    case 0:
        if (Unk_ov23_02257764->unk_B9F == 31) {
            param1->unk_20 = 4;
        } else {
            param1->unk_20 = 2;
        }

        param1->unk_24 = 0;
        param1->unk_28 = 1;
    case 1:
        sub_02004B70(MIC_SAMPLING_TYPE_SIGNED_8BIT, &Unk_ov23_02257760, ov23_02246624, NULL);

        param1->unk_14++;
        param1->unk_08[param1->unk_14 % 10] = abs(Unk_ov23_02257764->unk_B9E);

        for (v2 = 0; v2 < 10; v2++) {
            v3 += param1->unk_08[v2];
        }

        if (v3 > 500) {
            param1->unk_24++;
            Sound_PlayEffect(1576);
        } else {
            param1->unk_28 = 0;
        }

        if ((param1->unk_24 % 10) == (10 - 1)) {
            param1->unk_20--;
        }

        if (param1->unk_20 == 0) {
            param1->unk_28 = 2;
            return 1;
        }

        if (Unk_ov23_02257764->unk_B9F == 31) {
            switch (param1->unk_20) {
            case 4:
                v4 = 2;
                break;
            case 3:
                v4 = 1.5;
                break;
            case 2:
                v4 = 1;
                break;
            default:
                v4 = 0.5;
                break;
            }
        } else {
            switch (param1->unk_20) {
            case 2:
                v4 = 2;
                break;
            default:
                v4 = 1.5;
                break;
            }
        }

        v1 = 0;

        if (param1->unk_24) {
            v1 += 1;
        }

        v11.x = FX32_ONE * v4;
        v11.y = FX32_ONE * v4;
        v11.z = FX32_ONE * v4;

        sub_02021C70(Unk_ov23_02257764->unk_25C[0], &v11);
        sub_02021DCC(Unk_ov23_02257764->unk_25C[0], v1);
        break;
    case 2:
        break;
    }

    sub_020219F8(Unk_ov23_02257764->unk_44);
    return 0;
}

static void ov23_022480C4 (SysTask * param0, void * param1)
{
    UnkStruct_ov23_02247E38 * v0 = param1;
    int v1, v2;

    switch (v0->unk_00) {
    case 0:
        v0->unk_04 = ov23_02244C10();
        v0->unk_24 = 0;
        ov23_02246324();
        v0->unk_00++;
        break;
    case 1:
        sub_0200AAE0(1, 10, 0, GX_BLEND_PLANEMASK_BG0, 1);

        if (Unk_ov23_02257764->unk_B9F == 31) {
            v2 = 22;
        } else {
            v2 = 25;
        }

        Unk_ov23_02257764->unk_1F4[0][0] = sub_0200985C(Unk_ov23_02257764->unk_1D4[0][0], 50, v2, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 4);
        v0->unk_00++;
        break;
    case 2:
        Unk_ov23_02257764->unk_1F4[0][1] = sub_020098B8(Unk_ov23_02257764->unk_1D4[0][1], 50, 19, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 7, 4);
        v0->unk_00++;
        break;
    case 3:
        sub_0200AAE0(1, 0, 10, GX_BLEND_PLANEMASK_BG0, 1);

        if (Unk_ov23_02257764->unk_B9F == 31) {
            v2 = 21;
        } else {
            v2 = 24;
        }

        Unk_ov23_02257764->unk_1F4[0][2] = sub_02009918(Unk_ov23_02257764->unk_1D4[0][2], 50, v2, 0, 0, 2, 4);
        v0->unk_00++;
        break;
    case 4:
        if (Unk_ov23_02257764->unk_B9F == 31) {
            v2 = 20;
        } else {
            v2 = 23;
        }

        Unk_ov23_02257764->unk_1F4[0][3] = sub_02009918(Unk_ov23_02257764->unk_1D4[0][3], 50, v2, 0, 0, 3, 4);
        v0->unk_00++;
        break;
    case 5:
        ov23_02247E38(v0);
        v0->unk_00++;
        break;
    case 6:
        v0->unk_24++;

        if (v0->unk_24 > 30) {
            ov23_02253F60(ov23_0224219C(), 76, 0, NULL);
            GX_SetMasterBrightness(-4);

            v0->unk_00 = 7;
            v0->unk_2C = 0;
        }
        break;
    case 7:
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_OBJ, GX_BLEND_PLANEMASK_BG0, 14, 7);

        if (ov23_02247F4C(Unk_ov23_02257764->fieldSystem->unk_08, v0)) {
            if (v0->unk_2A) {
                v0->unk_00 = 11;
            } else {
                Link_Message(41);
                v0->unk_00 = 8;
            }
        }

        if (v0->unk_2C < 60) {
            v0->unk_2C++;

            if (v0->unk_2C == 60) {
                ov23_02254044(ov23_0224219C());
            }
        }
        break;
    case 8:
        ov23_02254044(ov23_0224219C());
        break;
    case 9:
        ov23_0224839C(CommSys_CurNetId(), v0->unk_2A);
        break;
    case 11:
        sub_0205948C(0x10);
        v0->unk_2A = 0;
        ov23_022448FC(v0->unk_29);
        v0->unk_24 = 0;
        v0->unk_00 = 12;
        break;
    case 12:
        v0->unk_24++;

        if (v0->unk_24 > 8) {
            Link_Message(41);
            v0->unk_00 = 8;
        }
        break;
    }
}

static void ov23_02248318 (BGL * param0, BOOL param1, int param2)
{
    int v0;
    UnkStruct_ov23_02247E38 * v1;

    v1 = Heap_AllocFromHeapAtEnd(4, sizeof(UnkStruct_ov23_02247E38));
    MI_CpuFill8(v1, 0, sizeof(UnkStruct_ov23_02247E38));

    v1->unk_2A = param1;
    v1->unk_29 = param2;

    Unk_ov23_02257764->unk_300 = v1;
    Unk_ov23_02257764->unk_2F0 = SysTask_Start(ov23_022480C4, v1, 100);
}

static void ov23_02248364 (int param0, BOOL param1, int param2)
{
    ov23_0224AD7C(param0, 2);

    if (CommSys_CurNetId() == param0) {
        ov23_02248318(Unk_ov23_02257764->fieldSystem->unk_08, param1, param2);
    }
}

static void ov23_02248390 (int param0)
{
    ov23_0224AD7C(param0, 2);
}

static void ov23_0224839C (int param0, BOOL param1)
{
    if (Unk_ov23_02257764->unk_300) {
        UnkStruct_ov23_02247E38 * v0 = Unk_ov23_02257764->unk_300;

        if (v0->unk_2A && param1) {
            ov23_022448FC(v0->unk_29);
        }

        sub_0200AB4C(0, GX_BLEND_PLANEMASK_BG0, 1);
        G2_BlendNone();
        GX_SetMasterBrightness(0);
        ov23_02246370(1);

        sub_0205948C(0x10);
        SysTask_Done(Unk_ov23_02257764->unk_2F0);
        Heap_FreeToHeap(v0);

        Unk_ov23_02257764->unk_2F0 = NULL;
        Unk_ov23_02257764->unk_300 = NULL;
    }
}

static void ov23_02248418 (SysTask * param0, void * param1)
{
    UnkStruct_ov23_02248418 * v0 = param1;
    int v1;

    switch (v0->unk_00) {
    case 0:
        v0->unk_04 = ov23_02244C10();
        v0->unk_0C = 0;
        v0->unk_00++;
        break;
    case 1:
        sub_0200AAE0(1, 10, 0, GX_BLEND_PLANEMASK_BG0, 1);
        v0->unk_00++;
        break;
    case 2:
        v0->unk_00++;
        break;
    case 3:
        sub_0200AAE0(1, 0, 10, GX_BLEND_PLANEMASK_BG0, 1);
        v0->unk_00++;
        break;
    case 4:
        v0->unk_00++;
        break;
    case 5:
        v0->unk_00++;
        break;
    case 6:
        v0->unk_0C++;

        if (v0->unk_0C > 30) {
            ov23_02254044(ov23_0224219C());
            GX_SetMasterBrightness(-4);
            v0->unk_00 = 7;
        }
        break;
    case 7:
        if (v0->unk_11) {
            v0->unk_00 = 11;
        } else {
            Link_Message(41);
            v0->unk_00 = 8;
        }
        break;
    case 8:
        break;
    case 9:
        ov23_022485A8(CommSys_CurNetId(), v0->unk_11);
        break;
    case 10:
        break;
    case 11:
        sub_0205948C(0x10);
        v0->unk_11 = 0;
        ov23_022448FC(v0->unk_10);
        v0->unk_0C = 0;
        v0->unk_00 = 12;
        break;
    case 12:
        v0->unk_0C++;

        if (v0->unk_0C > 8) {
            Link_Message(41);
            v0->unk_00 = 8;
        }
        break;
    }
}

static void ov23_0224852C (BGL * param0, BOOL param1, int param2)
{
    int v0;
    UnkStruct_ov23_02248418 * v1;

    v1 = Heap_AllocFromHeapAtEnd(4, sizeof(UnkStruct_ov23_02248418));
    MI_CpuFill8(v1, 0, sizeof(UnkStruct_ov23_02248418));

    v1->unk_11 = param1;
    v1->unk_10 = param2;

    Unk_ov23_02257764->unk_300 = v1;
    Unk_ov23_02257764->unk_2F0 = SysTask_Start(ov23_02248418, v1, 100);
}

static void ov23_02248570 (int param0, BOOL param1, int param2)
{
    ov23_0224AD7C(param0, 2);

    if (CommSys_CurNetId() == param0) {
        ov23_0224852C(Unk_ov23_02257764->fieldSystem->unk_08, param1, param2);
    }
}

static void ov23_0224859C (int param0)
{
    ov23_0224AD7C(param0, 2);
}

static void ov23_022485A8 (int param0, BOOL param1)
{
    if (Unk_ov23_02257764->unk_300) {
        UnkStruct_ov23_02248418 * v0 = Unk_ov23_02257764->unk_300;

        if (v0->unk_11 && param1) {
            ov23_022448FC(v0->unk_10);
        }

        sub_0200AB4C(0, GX_BLEND_PLANEMASK_BG0, 1);
        G2_BlendNone();
        GX_SetMasterBrightness(0);

        sub_0205948C(0x10);
        SysTask_Done(Unk_ov23_02257764->unk_2F0);
        Heap_FreeToHeap(v0);

        Unk_ov23_02257764->unk_2F0 = NULL;
        Unk_ov23_02257764->unk_300 = NULL;
    }
}

static BOOL ov23_02248614 (BGL * param0, UnkStruct_ov23_02248748 * param1)
{
    int v0, v1;
    VecFx32 v2;
    int v3, v4, v5, v6;

    v2.x = param1->unk_28 * FX32_ONE;
    v2.y = param1->unk_2C * FX32_ONE;

    sub_02021C50(Unk_ov23_02257764->unk_25C[0], &v2);

    v2.x = (param1->unk_30 * FX32_ONE) / 10;
    v2.y = v2.z = v2.x;

    sub_02021C70(Unk_ov23_02257764->unk_25C[0], &v2);
    sub_02021FE0(Unk_ov23_02257764->unk_25C[0], GX_OAM_MODE_XLU);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_OBJ, GX_BLEND_PLANEMASK_BG0, 16 - (param1->unk_30 / 2), 16);

    for (v1 = 0; v1 < 3; v1++) {
        for (v0 = 0; v0 < param1->unk_14[v1]; v0++) {
            v6 = param1->unk_08[v1][v0] / 16;
            v5 = param1->unk_08[v1][v0] % 16;

            v2.x = (param1->unk_20 - 6 + v5) * FX32_ONE * 16 + (FX32_ONE * 16 / 2);
            v2.y = 0;
            v2.z = (param1->unk_24 - 6 + v6) * FX32_ONE * 16 + (FX32_ONE * 16 / 2);

            NNS_G3dWorldPosToScrPos(&v2, &v3, &v4);

            v2.x = v3 * FX32_ONE;
            v2.y = v4 * FX32_ONE;

            sub_02021C50(Unk_ov23_02257764->unk_25C[v0 + 1 + v1 * 8], &v2);
        }
    }

    param1->unk_30++;

    if (param1->unk_30 > 20) {
        return 1;
    }

    sub_020219F8(Unk_ov23_02257764->unk_44);
    return 0;
}

static void ov23_02248748 (UnkStruct_ov23_02248748 * param0)
{
    sub_0200A450(Unk_ov23_02257764->unk_1F4[1][0]);
    sub_0200A640(Unk_ov23_02257764->unk_1F4[1][1]);
    sub_020093B4(&Unk_ov23_02257764->unk_238, 0, 0, 0, 0, 0xffffffff, 0xffffffff, 0, 0, Unk_ov23_02257764->unk_1D4[1][0], Unk_ov23_02257764->unk_1D4[1][1], Unk_ov23_02257764->unk_1D4[1][2], Unk_ov23_02257764->unk_1D4[1][3], NULL, NULL);

    {
        UnkStruct_ov115_02261520 v0;
        int v1;

        v0.unk_00 = Unk_ov23_02257764->unk_44;
        v0.unk_04 = &Unk_ov23_02257764->unk_238;
        v0.unk_08.x = FX32_CONST(32);
        v0.unk_08.y = FX32_CONST(96);
        v0.unk_08.z = 0;
        v0.unk_14.x = FX32_ONE;
        v0.unk_14.y = FX32_ONE;
        v0.unk_14.z = FX32_ONE;
        v0.unk_20 = 0;
        v0.unk_24 = 0;
        v0.unk_28 = NNS_G2D_VRAM_TYPE_2DMAIN;
        v0.unk_2C = 4;

        for (v1 = 0; v1 < 25; v1++) {
            v0.unk_08.x = FX32_ONE * 300;
            v0.unk_08.y = FX32_ONE * 300;

            Unk_ov23_02257764->unk_25C[v1] = sub_02021AA0(&v0);

            if (v1 == 0) {
                sub_02021CF8(Unk_ov23_02257764->unk_25C[v1], 2);
                SpriteActor_SetSpriteAnimActive(Unk_ov23_02257764->unk_25C[v1], 0);
            } else if (v1 < 9) {
                SpriteActor_SetSpriteAnimActive(Unk_ov23_02257764->unk_25C[v1], 1);
            } else {
                SpriteActor_SetSpriteAnimActive(Unk_ov23_02257764->unk_25C[v1], 2);
            }

            sub_02021CC8(Unk_ov23_02257764->unk_25C[v1], 1);
            SpriteActor_SetAnimFrame(Unk_ov23_02257764->unk_25C[v1], 0);
        }
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov23_02248884 (SysTask * param0, void * param1)
{
    UnkStruct_ov23_02248748 * v0 = param1;
    int v1;

    switch (v0->unk_00) {
    case 0:
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_OBJ, GX_BLEND_PLANEMASK_BG0, 14, 7);
        G2_SetWnd0Position(255 - 16, 0, 256, 16);
        G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 0);
        G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
        GX_SetVisibleWnd(GX_WNDMASK_W0);

        sub_020594FC();
        Sound_PlayEffect(1354);

        Unk_ov23_02257764->unk_44 = sub_020095C4(32, &Unk_ov23_02257764->unk_48, 4);
        sub_0200964C(&Unk_ov23_02257764->unk_48, 0, (192 << FX32_SHIFT) * 2);
        v0->unk_00 = 5;
        break;
    case 5:
        ov23_02248748(v0);
        v0->unk_00 = 7;
        break;
    case 7:
        if (ov23_02248614(Unk_ov23_02257764->fieldSystem->unk_08, v0)) {
            v0->unk_00 = 9;
        }
        break;
    case 9:
        GX_SetVisibleWnd(GX_WNDMASK_NONE);
        G2_BlendNone();
        GX_SetMasterBrightness(0);

        sub_0200A4E4(Unk_ov23_02257764->unk_1F4[1][0]);
        sub_0200A6DC(Unk_ov23_02257764->unk_1F4[1][1]);

        for (v1 = 0; v1 < 25; v1++) {
            if (Unk_ov23_02257764->unk_25C[v1] != NULL) {
                sub_02021BD4(Unk_ov23_02257764->unk_25C[v1]);
            }

            Unk_ov23_02257764->unk_25C[v1] = NULL;
        }

        sub_02021964(Unk_ov23_02257764->unk_44);
        SysTask_Done(param0);
        Heap_FreeToHeap(v0);

        Unk_ov23_02257764->unk_2F4 = NULL;
        sub_0205948C(0x80);
        break;
    default:
        break;
    }
}

void ov23_022489F8 (FieldSystem * fieldSystem, int param1, int param2, int param3, int param4, u8 * param5, int param6, u8 * param7, int param8, u8 * param9, int param10)
{
    int v0;
    UnkStruct_ov23_02248748 * v1;

    if (Unk_ov23_02257764->unk_2F4) {
        return;
    }

    v1 = Heap_AllocFromHeapAtEnd(4, sizeof(UnkStruct_ov23_02248748));
    MI_CpuFill8(v1, 0, sizeof(UnkStruct_ov23_02248748));

    v1->unk_00 = 0;
    v1->unk_30 = 0;
    v1->unk_20 = param1;
    v1->unk_24 = param2;
    v1->unk_28 = param3;
    v1->unk_2C = param4;
    v1->unk_08[0] = param5;
    v1->unk_08[1] = param7;
    v1->unk_08[2] = param9;
    v1->unk_14[0] = param6;
    v1->unk_14[1] = param8;
    v1->unk_14[2] = param10;

    Unk_ov23_02257764->unk_2F4 = SysTask_Start(ov23_02248884, v1, 100);
    sub_02059464(0x80);
}

static void ov23_02248A6C (SysTask * param0, void * param1)
{
    UnkStruct_ov23_02248A6C * v0 = param1;
    int v1, v2, v3;

    if (!Unk_ov23_02257764) {
        SysTask_Done(param0);
        Heap_FreeToHeap(v0);
        return;
    }

    v3 = v0->unk_08;
    v2 = CommPlayer_DirClient(v3);

    if ((v0->unk_00 == 1) || (v2 == -1)) {
        Unk_ov23_02257764->unk_00[v3] = NULL;
        Unk_ov23_02257764->unk_20[v3] = NULL;

        SysTask_Done(param0);
        Heap_FreeToHeap(v0);
        CommPlayer_StopBlowAnimation(v3);

        return;
    }

    switch (v0->unk_0C) {
    case 13:
    case 14:
    case 4:
    case 2:
    case 1:
    case 3:
    case 8:
    case 6:
    case 5:
    case 7:
        return;
    }

    v0->unk_04++;

    if ((v0->unk_04 % 8) == 0) {
        switch (v2) {
        case 0:
            v2 = 3;
            break;
        case 1:
            v2 = 2;
            break;
        case 2:
            v2 = 0;
            break;
        case 3:
            v2 = 1;
            break;
        }

        CommPlayer_SetDirClient(v3, v2);
    }
}

static void ov23_02248B3C (int param0, int param1)
{
    int v0;
    UnkStruct_ov23_02248A6C * v1;

    if (!Unk_ov23_02257764) {
        return;
    } else if (Unk_ov23_02257764->unk_BAA) {
        return;
    }

    if (Unk_ov23_02257764->unk_00[param0] == NULL) {
        v1 = Heap_AllocFromHeapAtEnd(4, sizeof(UnkStruct_ov23_02248A6C));
        MI_CpuFill8(v1, 0, sizeof(UnkStruct_ov23_02248A6C));
        Unk_ov23_02257764->unk_00[param0] = v1;
        Unk_ov23_02257764->unk_20[param0] = SysTask_Start(ov23_02248A6C, v1, 100);
    } else {
        v1 = Unk_ov23_02257764->unk_00[param0];
    }

    v1->unk_08 = param0;
    v1->unk_0C = param1;
}

void ov23_02248B98 (int param0)
{
    if (!Unk_ov23_02257764->unk_00[param0]) {
        return;
    }

    ov23_0224B040(param0);

    Unk_ov23_02257764->unk_00[param0]->unk_00 = 1;
    Unk_ov23_02257764->unk_00[param0] = NULL;
    Unk_ov23_02257764->unk_20[param0] = NULL;

    CommPlayer_StopBlowAnimation(param0);
}

static void ov23_02248BD0 (void)
{
    int v0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (Unk_ov23_02257764->unk_20[v0]) {
            SysTask_Done(Unk_ov23_02257764->unk_20[v0]);
            Heap_FreeToHeap(Unk_ov23_02257764->unk_00[v0]);

            Unk_ov23_02257764->unk_20[v0] = NULL;
            Unk_ov23_02257764->unk_00[v0] = NULL;
        }
    }
}
