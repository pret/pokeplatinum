#include "overlay069/ov69_0225C700.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02015920_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0202C878_decl.h"
#include "struct_defs/struct_0200C738.h"
#include "struct_defs/struct_02015958.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0207C690.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay022/struct_ov22_022559F8.h"
#include "overlay066/ov66_0222DDF0.h"
#include "overlay066/ov66_02231428.h"
#include "overlay066/struct_ov66_02230F50.h"
#include "overlay066/struct_ov66_02231428.h"
#include "overlay066/struct_ov66_02231560.h"
#include "overlay069/struct_ov69_0225C980.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay092/struct_ov92_021D1530.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay115/camera_angle.h"

#include "camera.h"
#include "cell_actor.h"
#include "core_sys.h"
#include "easy3d_object.h"
#include "font.h"
#include "game_options.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "save_player.h"
#include "savedata.h"
#include "sprite_resource.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02015920.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0201DBEC.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "unk_0202419C.h"
#include "unk_02024220.h"
#include "unk_0202C858.h"
#include "unk_020393C8.h"
#include "unk_020996D0.h"

typedef struct {
    s16 unk_00;
    s16 unk_02;
    MtxFx33 unk_04;
    u16 unk_28;
    u16 unk_2A;
    u16 unk_2C;
} UnkStruct_ov69_0225CA7C_sub1_sub1;

typedef struct {
    u32 unk_00;
    UnkStruct_ov69_0225CA7C_sub1_sub1 unk_04[1024];
} UnkStruct_ov69_0225CA7C_sub1;

typedef struct {
    u8 unk_00;
    u8 unk_01;
} UnkStruct_ov69_0225F0E8;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    s16 unk_04;
    s16 unk_06;
    s16 unk_08;
    s16 unk_0A;
    s16 unk_0C;
    u16 unk_0E;
} UnkStruct_ov69_0225ECF0;

typedef struct {
    u16 unk_00[2];
    u16 unk_04;
    u16 unk_06;
    u16 unk_08;
    u16 unk_0A;
} UnkStruct_ov69_0225F118;

typedef struct {
    u32 unk_00_0 : 1;
    u32 unk_00_1 : 1;
    u32 : 30;
    u32 unk_04_0 : 31;
    u32 : 1;
} UnkStruct_ov69_0225DA74;

typedef struct {
    BGL *unk_00;
    CellActorCollection *unk_04;
    UnkStruct_0200C738 unk_08;
    SpriteResourceCollection *unk_194[4];
    GenericPointerData *unk_1A4;
    NARC *unk_1A8;
} UnkStruct_ov69_0225D35C;

typedef struct {
    VecFx32 unk_00;
    VecFx32 unk_0C;
    VecFx32 unk_18;
    Easy3DObject unk_24;
    Easy3DModel unk_9C;
} UnkStruct_ov69_0225D71C;

typedef struct {
    UnkStruct_ov69_0225CA7C_sub1 unk_00;
    VecFx32 unk_B804;
    Easy3DObject unk_B810[3];
    Easy3DModel unk_B978[3];
} UnkStruct_ov69_0225CA7C;

typedef struct {
    Camera *camera;
    CameraAngle unk_04;
    fx32 unk_0C;
    u16 unk_10;
    u16 unk_12;
} UnkStruct_ov69_0225DAEC;

typedef struct {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
} UnkStruct_ov69_0225E0C0;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04[4];
    void *unk_08[2];
    NNSG2dScreenData *unk_10[2];
    u16 unk_18;
    u16 unk_1A;
    void *unk_1C;
    NNSG2dPaletteData *unk_20;
    u8 unk_24;
    u8 unk_25;
    u8 unk_26;
    u8 unk_27;
} UnkStruct_ov69_0225E7DC;

typedef struct {
    u8 unk_00;
    s8 unk_01;
    u8 unk_02[2];
} UnkStruct_ov69_0225E084_sub1;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    s16 unk_04;
    s16 unk_06;
    u16 unk_08;
    u16 unk_0A;
    const UnkStruct_ov69_0225ECF0 *unk_0C;
} UnkStruct_ov69_0225ED90;

typedef struct {
    UnkStruct_ov69_0225ED90 unk_00[3];
    s16 unk_30;
    s16 unk_32;
    u8 unk_34[4];
    u8 unk_38[4];
    CellActor *unk_3C[12];
    SpriteResource *unk_6C[12][4];
} UnkStruct_ov69_0225EB60;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    s16 unk_04;
    s16 unk_06;
    s16 unk_08;
    s16 unk_0A;
    SysTask *unk_0C;
} UnkStruct_ov69_0225E478;

typedef struct {
    u32 unk_00;
    UnkStruct_ov69_0225E0C0 unk_04[4];
    u16 unk_34;
    u16 unk_36;
    u32 unk_38;
    u16 unk_3C;
    u16 unk_3E;
    UnkStruct_ov69_0225E084_sub1 unk_40[18];
    u32 unk_88[3];
    void *unk_94;
    NNSG2dScreenData *unk_98;
    u16 unk_9C;
    u16 unk_9E;
    UnkStruct_ov69_0225E7DC unk_A0[5];
    Window unk_168[3];
    Window unk_198;
    Window unk_1A8;
    UnkStruct_ov69_0225EB60 unk_1B8;
    UnkStruct_ov69_0225E478 unk_2E4;
} UnkStruct_ov69_0225E084;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    Window unk_1C;
} UnkStruct_ov69_0225DC48;

typedef struct {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    Strbuf *unk_0C;
    Window unk_10;
    UnkStruct_02015920 *unk_20;
} UnkStruct_ov69_0225DDC8;

typedef struct {
    MessageLoader *unk_00;
    StringTemplate *unk_04;
    Strbuf *unk_08;
    Strbuf *unk_0C;
} UnkStruct_ov69_0225EF54;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    UnkStruct_ov69_0225DA74 unk_04;
    UnkStruct_0202C878 *unk_0C;
    Options *unk_10;
    int unk_14;
    int unk_18;
    UnkStruct_ov66_02231428 unk_1C;
    UnkStruct_ov69_0225D35C unk_20;
    UnkStruct_ov69_0225EF54 unk_1CC;
    UnkStruct_ov69_0225D71C unk_1DC;
    UnkStruct_ov69_0225CA7C unk_288;
    UnkStruct_ov69_0225DAEC unk_BC30;
    UnkStruct_ov69_0225DC48 unk_BC44;
    UnkStruct_ov69_0225E084 unk_BC70;
    UnkStruct_ov69_0225DDC8 unk_BF64;
} UnkStruct_ov69_0225CE64;

static void ov69_0225C980(UnkStruct_ov69_0225CA7C *param0, const UnkStruct_ov66_02231560 *param1, u32 param2);
static void ov69_0225CA7C(UnkStruct_ov69_0225CA7C *param0, u32 param1, s16 param2, s16 param3, u16 param4, u16 param5, const UnkStruct_ov66_02231560 *param6);
static void ov69_0225CAF4(MtxFx33 *param0, const VecFx32 *param1);
static void ov69_0225CB6C(MtxFx33 *param0, const VecFx32 *param1);
static void ov69_0225CBE4(int param0, int param1, int *param2, int *param3, int *param4, int *param5);
static u32 ov69_0225CC54(UnkStruct_ov69_0225CE64 *param0, int param1, int param2);
static void ov69_0225CE0C(VecFx32 *param0);
static BOOL ov69_0225CE64(UnkStruct_ov69_0225CE64 *param0);
static void ov69_0225CF30(UnkStruct_ov69_0225CE64 *param0);
static void ov69_0225CF50(UnkStruct_ov69_0225CE64 *param0);
static void ov69_0225CF90(void *param0);
static u32 ov69_0225CF9C(UnkStruct_ov69_0225CE64 *param0);
static void ov69_0225D030(UnkStruct_ov69_0225CE64 *param0, const UnkStruct_ov66_02230F50 *param1);
static BOOL ov69_0225D088(const UnkStruct_ov69_0225CE64 *param0, UnkStruct_ov69_0225E0C0 *param1);
static u32 ov69_0225D0D8(const UnkStruct_ov69_0225CE64 *param0);
static u32 ov69_0225D194(const VecFx32 *param0, const VecFx32 *param1);
static u32 ov69_0225D1E0(const UnkStruct_ov69_0225CE64 *param0, u32 param1, UnkStruct_ov66_02231428 param2);
static BOOL ov69_0225D268(UnkStruct_ov69_0225CE64 *param0, u8 param1, u8 param2);
static void ov69_0225D2A8(UnkStruct_ov69_0225CE64 *param0, const UnkStruct_ov66_02230F50 *param1);
static void ov69_0225D318(UnkStruct_ov69_0225D35C *param0, Options *param1, u32 param2);
static void ov69_0225D35C(UnkStruct_ov69_0225D35C *param0);
static void ov69_0225D384(UnkStruct_ov69_0225D35C *param0);
static void ov69_0225D390(UnkStruct_ov69_0225D35C *param0);
static void ov69_0225D3A4(UnkStruct_ov69_0225D35C *param0, Options *param1, u32 param2);
static void ov69_0225D504(UnkStruct_ov69_0225D35C *param0);
static void ov69_0225D53C(UnkStruct_ov69_0225D35C *param0, u32 param1);
static void ov69_0225D5D8(UnkStruct_ov69_0225D35C *param0);
static void ov69_0225D604(UnkStruct_ov69_0225D35C *param0, u32 param1);
static void ov69_0225D63C(UnkStruct_ov69_0225D35C *param0);
static void ov69_0225D64C(void);
static void ov69_0225D6D8(UnkStruct_ov69_0225D71C *param0, UnkStruct_ov69_0225D35C *param1, u32 param2);
static void ov69_0225D71C(UnkStruct_ov69_0225D71C *param0);
static void ov69_0225D728(UnkStruct_ov69_0225D71C *param0);
static void ov69_0225D760(const UnkStruct_ov69_0225D71C *param0, VecFx32 *param1);
static void ov69_0225D770(const UnkStruct_ov69_0225D71C *param0, MtxFx33 *param1);
static void ov69_0225D780(const UnkStruct_ov69_0225D71C *param0, VecFx32 *param1);
static void ov69_0225D790(UnkStruct_ov69_0225D71C *param0, const VecFx32 *param1);
static void ov69_0225D7A0(UnkStruct_ov69_0225CA7C *param0, const UnkStruct_ov66_02231560 *param1, UnkStruct_ov69_0225D35C *param2, UnkStruct_ov69_0225DA74 param3, u32 param4);
static void ov69_0225D838(UnkStruct_ov69_0225CA7C *param0);
static void ov69_0225D854(UnkStruct_ov69_0225CA7C *param0, const UnkStruct_ov69_0225D71C *param1);
static u32 ov69_0225D91C(const UnkStruct_ov66_02231560 *param0, u16 param1, u16 param2);
static u32 ov69_0225D984(const UnkStruct_ov69_0225CA7C *param0, u16 param1, u16 param2, VecFx32 *param3);
static u32 ov69_0225D9C4(const UnkStruct_ov69_0225CA7C *param0, u16 param1, u16 param2);
static void ov69_0225D9F0(const UnkStruct_ov69_0225CA7C *param0, VecFx32 *param1, int param2);
static u32 ov69_0225DA1C(const UnkStruct_ov69_0225CA7C *param0, int param1);
static u32 ov69_0225DA38(const UnkStruct_ov69_0225CA7C *param0, int param1);
static u32 ov69_0225DA54(const UnkStruct_ov69_0225CA7C *param0, int param1);
static u32 ov69_0225DA70(const UnkStruct_ov69_0225CA7C *param0);
static void ov69_0225DA74(UnkStruct_ov69_0225DAEC *param0, UnkStruct_ov69_0225DA74 param1, u32 param2);
static void ov69_0225DAEC(UnkStruct_ov69_0225DAEC *param0);
static void ov69_0225DAF8(const UnkStruct_ov69_0225DAEC *param0);
static void ov69_0225DB00(UnkStruct_ov69_0225DAEC *param0);
static BOOL ov69_0225DB2C(UnkStruct_ov69_0225DAEC *param0, UnkStruct_ov69_0225CA7C *param1);
static u32 ov69_0225DBB0(const UnkStruct_ov69_0225DAEC *param0);
static void ov69_0225DBB4(UnkStruct_ov69_0225DC48 *param0, UnkStruct_ov69_0225D35C *param1, UnkStruct_ov69_0225EF54 *param2, u32 param3);
static void ov69_0225DC48(UnkStruct_ov69_0225DC48 *param0);
static void ov69_0225DC54(UnkStruct_ov69_0225DC48 *param0);
static int ov69_0225DD10(const UnkStruct_ov69_0225DC48 *param0, u32 param1);
static void ov69_0225DD2C(UnkStruct_ov69_0225DC48 *param0);
static void ov69_0225DD44(UnkStruct_ov69_0225DC48 *param0);
static void ov69_0225DD60(UnkStruct_ov69_0225DDC8 *param0, UnkStruct_ov69_0225D35C *param1, UnkStruct_ov69_0225EF54 *param2, SaveData *param3, u32 param4);
static void ov69_0225DDC8(UnkStruct_ov69_0225DDC8 *param0);
static void ov69_0225DDFC(UnkStruct_ov69_0225DDC8 *param0);
static u32 ov69_0225DE40(UnkStruct_ov69_0225DDC8 *param0);
static void ov69_0225DEA0(UnkStruct_ov69_0225DDC8 *param0);
static void ov69_0225DEC0(UnkStruct_ov69_0225E084 *param0, UnkStruct_ov69_0225D35C *param1, UnkStruct_ov69_0225EF54 *param2, u32 param3);
static void ov69_0225DFBC(UnkStruct_ov69_0225E084 *param0, UnkStruct_ov69_0225D35C *param1);
static void ov69_0225E00C(UnkStruct_ov69_0225E084 *param0, UnkStruct_ov69_0225EF54 *param1, UnkStruct_ov69_0225D35C *param2);
static void ov69_0225E084(UnkStruct_ov69_0225E084 *param0);
static void ov69_0225E0A0(UnkStruct_ov69_0225E084 *param0);
static BOOL ov69_0225E0C0(UnkStruct_ov69_0225E084 *param0, const UnkStruct_ov69_0225E0C0 *param1);
static BOOL ov69_0225E0F8(const UnkStruct_ov69_0225E084 *param0, const UnkStruct_ov69_0225E0C0 *param1);
static void ov69_0225E13C(UnkStruct_ov69_0225E084 *param0);
static void ov69_0225E148(UnkStruct_ov69_0225E084 *param0);
static void ov69_0225E154(UnkStruct_ov69_0225E084 *param0, const UnkStruct_ov69_0225E0C0 *param1);
static void ov69_0225E1A0(UnkStruct_ov69_0225E084 *param0);
static BOOL ov69_0225E1C0(const UnkStruct_ov69_0225E084 *param0, UnkStruct_ov69_0225E0C0 *param1, u32 param2);
static void ov69_0225E1EC(UnkStruct_ov69_0225E084 *param0, UnkStruct_ov69_0225D35C *param1);
static void ov69_0225E208(UnkStruct_ov69_0225E084 *param0, UnkStruct_ov69_0225EF54 *param1, UnkStruct_ov69_0225D35C *param2);
static BOOL ov69_0225E2D0(UnkStruct_ov69_0225E084 *param0, UnkStruct_ov69_0225D35C *param1);
static void ov69_0225E2DC(UnkStruct_ov69_0225E084 *param0);
static BOOL ov69_0225E2E4(UnkStruct_ov69_0225E084 *param0, UnkStruct_ov69_0225D35C *param1);
static BOOL ov69_0225E2F0(UnkStruct_ov69_0225E084 *param0, UnkStruct_ov69_0225D35C *param1, int param2);
static void ov69_0225E368(UnkStruct_ov69_0225E084 *param0, u32 param1);
static BOOL ov69_0225E374(UnkStruct_ov69_0225E084 *param0, u32 param1, UnkStruct_ov69_0225D35C *param2);
static void ov69_0225E430(UnkStruct_ov69_0225E084 *param0, u32 param1, UnkStruct_ov69_0225D35C *param2);
static void ov69_0225E478(UnkStruct_ov69_0225E478 *param0);
static void ov69_0225E4E8(UnkStruct_ov69_0225E478 *param0);
static void ov69_0225E504(UnkStruct_ov69_0225E478 *param0, s16 param1, s16 param2);
static void ov69_0225E51C(UnkStruct_ov69_0225E478 *param0, s16 param1, s16 param2);
static void ov69_0225E534(SysTask *param0, void *param1);
static void ov69_0225E590(UnkStruct_ov69_0225E084 *param0, UnkStruct_ov69_0225D35C *param1, u32 param2);
static void ov69_0225E61C(UnkStruct_ov69_0225E084 *param0);
static void ov69_0225E644(UnkStruct_ov69_0225E084 *param0, u32 param1, const UnkStruct_ov69_0225E0C0 *param2, UnkStruct_ov69_0225EF54 *param3);
static u8 *ov69_0225E6E8(UnkStruct_ov69_0225E084 *param0, u32 param1, u32 param2);
static u8 *ov69_0225E70C(UnkStruct_ov69_0225E084 *param0, u32 param1);
static void ov69_0225E71C(UnkStruct_ov69_0225E084 *param0, u32 param1, u32 param2, const u8 *param3);
static void ov69_0225E748(UnkStruct_ov69_0225E7DC *param0, UnkStruct_ov69_0225D35C *param1, const UnkStruct_ov69_0225F118 *param2, u16 param3, u32 param4);
static void ov69_0225E7DC(UnkStruct_ov69_0225E7DC *param0);
static void ov69_0225E810(UnkStruct_ov69_0225E7DC *param0, UnkStruct_ov69_0225D35C *param1);
static void ov69_0225E8EC(UnkStruct_ov69_0225E7DC *param0, u32 param1, BOOL param2);
static void ov69_0225E904(UnkStruct_ov69_0225E7DC *param0);
static void ov69_0225E910(UnkStruct_ov69_0225E7DC *param0, u32 param1, UnkStruct_ov69_0225D35C *param2);
static void ov69_0225E960(UnkStruct_ov69_0225EB60 *param0, UnkStruct_ov69_0225D35C *param1, UnkStruct_ov69_0225E478 *param2, u32 param3);
static void ov69_0225EAE8(UnkStruct_ov69_0225EB60 *param0, UnkStruct_ov69_0225D35C *param1);
static void ov69_0225EB60(UnkStruct_ov69_0225EB60 *param0);
static void ov69_0225EB8C(UnkStruct_ov69_0225EB60 *param0, u8 param1, u8 param2, u8 param3);
static void ov69_0225EBEC(UnkStruct_ov69_0225EB60 *param0);
static void ov69_0225EC08(UnkStruct_ov69_0225EB60 *param0, UnkStruct_ov69_0225E478 *param1);
static BOOL ov69_0225EC70(UnkStruct_ov69_0225EB60 *param0, u32 param1, UnkStruct_ov69_0225E478 *param2);
static BOOL ov69_0225ECAC(UnkStruct_ov69_0225EB60 *param0, u32 param1, UnkStruct_ov69_0225E478 *param2);
static void ov69_0225ECF0(UnkStruct_ov69_0225ED90 *param0, const UnkStruct_ov69_0225ECF0 *param1);
static void ov69_0225ED0C(UnkStruct_ov69_0225ED90 *param0, BOOL param1);
static void ov69_0225ED10(UnkStruct_ov69_0225ED90 *param0, BOOL param1);
static BOOL ov69_0225ED14(UnkStruct_ov69_0225ED90 *param0, UnkStruct_ov69_0225E478 *param1);
static void ov69_0225ED5C(UnkStruct_ov69_0225ED90 *param0, UnkStruct_ov69_0225E478 *param1);
static void ov69_0225ED78(const UnkStruct_ov69_0225ED90 *param0, VecFx32 *param1);
static void ov69_0225ED90(UnkStruct_ov69_0225ED90 *param0);
static void ov69_0225EE68(const UnkStruct_ov69_0225ED90 *param0, UnkStruct_ov69_0225E478 *param1);
static void ov69_0225EEC4(UnkStruct_ov69_0225EB60 *param0, u32 param1);
static u16 ov69_0225EEEC(u32 param0);
static u16 ov69_0225EF04(u32 param0);
static void ov69_0225EF1C(UnkStruct_ov69_0225EF54 *param0, u32 param1);
static void ov69_0225EF54(UnkStruct_ov69_0225EF54 *param0);
static Strbuf *ov69_0225EF74(UnkStruct_ov69_0225EF54 *param0, u32 param1);
static Strbuf *ov69_0225EF90(UnkStruct_ov69_0225EF54 *param0, u32 param1);
static Strbuf *ov69_0225EFB8(UnkStruct_ov69_0225EF54 *param0, u32 param1, u32 param2);
static void ov69_0225EF84(UnkStruct_ov69_0225EF54 *param0, u32 param1, Strbuf *param2);
static u32 ov69_0225EFEC(const UnkStruct_ov66_02231560 *param0);

static const u32 Unk_ov69_0225F028[3] = {
    0x0,
    0x1,
    0x2
};

static const UnkStruct_02099F80 Unk_ov69_0225F0C0 = {
    GX_VRAM_BG_16_F,
    GX_VRAM_BGEXTPLTT_NONE,
    GX_VRAM_SUB_BG_128_C,
    GX_VRAM_SUB_BGEXTPLTT_NONE,
    GX_VRAM_OBJ_16_G,
    GX_VRAM_OBJEXTPLTT_NONE,
    GX_VRAM_SUB_OBJ_16_I,
    GX_VRAM_SUB_OBJEXTPLTT_NONE,
    GX_VRAM_TEX_01_AB,
    GX_VRAM_TEXPLTT_0123_E
};

static const UnkStruct_ov84_0223BA5C Unk_ov69_0225F040 = {
    GX_DISPMODE_GRAPHICS,
    GX_BGMODE_0,
    GX_BGMODE_0,
    GX_BG0_AS_3D
};

static const u32 Unk_ov69_0225F060[5] = {
    0x1,
    0x6,
    0x7,
    0x4,
    0x5
};

static const UnkStruct_ov97_0222DB78 Unk_ov69_0225F154[5] = {
    {
        0x0,
        0x0,
        0x800,
        0x0,
        0x1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0x3800,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        0x0,
        0x0,
        0x0,
        0x0,
    },
    {
        0x0,
        0x0,
        0x800,
        0x0,
        0x1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xd000,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        0x2,
        0x0,
        0x0,
        0x0,
    },
    {
        0x0,
        0x0,
        0x800,
        0x0,
        0x1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xe000,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        0x3,
        0x0,
        0x0,
        0x0,
    },
    {
        0x0,
        0x0,
        0x800,
        0x0,
        0x1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xe800,
        GX_BG_CHARBASE_0x10000,
        GX_BG_EXTPLTT_01,
        0x0,
        0x0,
        0x0,
        0x0,
    },
    {
        0x0,
        0x0,
        0x800,
        0x0,
        0x1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xd800,
        GX_BG_CHARBASE_0x10000,
        GX_BG_EXTPLTT_01,
        0x1,
        0x0,
        0x0,
        0x0,
    },
};

static const UnkStruct_ov22_022559F8 Unk_ov69_0225F050 = {
    0x20,
    0x4000,
    0x4000,
    0x69
};

static const VecFx32 Unk_ov69_0225F034 = {
    0x0,
    0x0,
    0x0
};

static const VecFx32 Unk_ov69_0225F01C = {
    0x0,
    0x0,
    0x128000
};

static const UnkStruct_ov69_0225F0E8 Unk_ov69_0225F0E8[24] = {
    { 0x0, 0x0 },
    { 0x0, 0x0 },
    { 0x0, 0x1 },
    { 0x0, 0x1 },
    { 0x0, 0x2 },
    { 0x0, 0x2 },
    { 0x1, 0x3 },
    { 0x1, 0x3 },
    { 0x1, 0x4 },
    { 0x1, 0x4 },
    { 0x1, 0x5 },
    { 0x1, 0x5 },
    { 0x2, 0x6 },
    { 0x2, 0x6 },
    { 0x2, 0x7 },
    { 0x2, 0x7 },
    { 0x3, 0x8 },
    { 0x3, 0x8 },
    { 0x3, 0x9 },
    { 0x3, 0x9 },
    { 0x4, 0xA },
    { 0x4, 0xA },
    { 0x4, 0xB },
    { 0x4, 0xB },
};

static const u8 Unk_ov69_0225F014[5] = {
    0x1E,
    0x1E,
    0x1E,
    0x1E,
    0x1E,
};

static const TextColor Unk_ov69_0225F088[5] = {
    TEXT_COLOR(5, 6, 0),
    TEXT_COLOR(7, 8, 0),
    TEXT_COLOR(9, 10, 0),
    TEXT_COLOR(11, 12, 0),
    TEXT_COLOR(11, 12, 0),
};

static const UnkStruct_ov69_0225ECF0 Unk_ov69_0225F1E0[12][3] = {
    {
        { 0xA0, 0x30, 0xBE, 0x0, 0x13F, 0x8, 0x50 },
        { 0xCE, 0x60, 0xA0, 0x30, 0x13F, 0x8, 0x50 },
        { 0x96, 0x90, 0xCE, 0x60, 0x13F, 0x8, 0x50 },
    },
    {
        { 0xBE, 0x30, 0x8C, 0x0, 0xDC, 0xC, 0x36 },
        { 0x96, 0x60, 0xBE, 0x30, 0xDC, 0xC, 0x36 },
        { 0xC8, 0x90, 0x96, 0x60, 0xDC, 0xC, 0x36 },
    },
    {
        { 0x80, 0x30, 0xA0, 0x0, 0xDC, 0xC, 0x36 },
        { 0xD2, 0x60, 0x80, 0x30, 0xDC, 0xC, 0x36 },
        { 0xA0, 0x90, 0xD2, 0x60, 0xDC, 0xC, 0x36 },
    },
    {
        { 0xB4, 0x30, 0x8A, 0x0, 0xDC, 0xC, 0x36 },
        { 0x8A, 0x60, 0xB4, 0x30, 0xDC, 0xC, 0x36 },
        { 0xB4, 0x90, 0x8A, 0x60, 0xDC, 0xC, 0x36 },
    },
    {
        { 0xB4, 0x30, 0xA0, 0x0, 0x18F, 0x4, 0x64 },
        { 0x82, 0x60, 0xB4, 0x30, 0x18F, 0x4, 0x64 },
        { 0x80, 0x90, 0x82, 0x60, 0x18F, 0x4, 0x64 },
    },
    {
        { 0xB4, 0x30, 0x74, 0x0, 0x13F, 0x8, 0x50 },
        { 0x74, 0x60, 0xB4, 0x30, 0x13F, 0x8, 0x50 },
        { 0xB4, 0x90, 0x74, 0x60, 0x13F, 0x8, 0x50 },
    },
    {
        { 0xB4, 0x30, 0xF0, 0x0, 0xDC, 0xC, 0x36 },
        { 0xA0, 0x60, 0xB4, 0x30, 0xDC, 0xC, 0x36 },
        { 0x60, 0x90, 0xA0, 0x60, 0xDC, 0xC, 0x36 },
    },
    {
        { 0x90, 0x30, 0xDA, 0x0, 0xDC, 0xC, 0x36 },
        { 0xDA, 0x60, 0x90, 0x30, 0xDC, 0xC, 0x36 },
        { 0x90, 0x90, 0xDA, 0x60, 0xDC, 0xC, 0x36 },
    },
    {
        { 0xA0, 0x30, 0xC0, 0x0, 0x18F, 0x4, 0x64 },
        { 0xC0, 0x60, 0xA0, 0x30, 0x18F, 0x4, 0x64 },
        { 0xA0, 0x90, 0xC0, 0x60, 0x18F, 0x4, 0x64 },
    },
    {
        { 0x8C, 0x30, 0x60, 0x0, 0x13F, 0x8, 0x50 },
        { 0xBE, 0x60, 0x8C, 0x30, 0x13F, 0x8, 0x50 },
        { 0xF0, 0x90, 0xBE, 0x60, 0x13F, 0x8, 0x50 },
    },
    {
        { 0xD4, 0x30, 0xA0, 0x0, 0x18F, 0x4, 0x64 },
        { 0xD4, 0x60, 0xD4, 0x30, 0x18F, 0x4, 0x64 },
        { 0xA0, 0x90, 0xD4, 0x60, 0x18F, 0x4, 0x64 },
    },
    {
        { 0x7B, 0x30, 0xAA, 0x0, 0x13F, 0x8, 0x50 },
        { 0xC6, 0x60, 0x7B, 0x30, 0x13F, 0x8, 0x50 },
        { 0x85, 0x90, 0xC6, 0x60, 0x13F, 0x8, 0x50 },
    },
};

static const UnkStruct_02015958 Unk_ov69_0225F074 = {
    NULL,
    0x1,
    0xA0,
    0x3,
    0x19,
    0x6,
};

static const UnkStruct_ov69_0225F118 Unk_ov69_0225F118[5] = {
    {
        { 0x6 },
        0x1,
        0xD,
        0x4,
        0x0,
    },
    {
        { 0x10, 0x11 },
        0x2,
        0x0,
        0x0,
        0x1,
    },
    {
        { 0x8 },
        0x1,
        0xE,
        0x4,
        0x2,
    },
    {
        { 0x9 },
        0x1,
        0xF,
        0x10,
        0x3,
    },
    {
        { 0xA },
        0x1,
        0xF,
        0x10,
        0x3,
    },
};

int ov69_0225C700(OverlayManager *param0, int *param1)
{
    UnkStruct_ov69_0225CE64 *v0;
    UnkStruct_ov66_02230F50 *v1;

    v1 = OverlayManager_Args(param0);
    Heap_Create(3, 105, 0x50000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov69_0225CE64), 105);
    memset(v0, 0, sizeof(UnkStruct_ov69_0225CE64));

    v0->unk_0C = sub_0202C878(v1->unk_04);
    v0->unk_10 = SaveData_Options(v1->unk_04);
    v0->unk_14 = sub_0202C8C0(v0->unk_0C);
    v0->unk_18 = sub_0202C8C4(v0->unk_0C);
    v0->unk_1C = v1->unk_08;

    ov69_0225D2A8(v0, v1);
    ov69_0225D318(&v0->unk_20, v0->unk_10, 105);
    ov69_0225D6D8(&v0->unk_1DC, &v0->unk_20, 105);
    ov69_0225EF1C(&v0->unk_1CC, 105);
    ov69_0225D7A0(&v0->unk_288, v1->unk_00, &v0->unk_20, v0->unk_04, 105);
    ov69_0225DA74(&v0->unk_BC30, v0->unk_04, 105);
    ov69_0225DBB4(&v0->unk_BC44, &v0->unk_20, &v0->unk_1CC, 105);
    ov69_0225DD60(&v0->unk_BF64, &v0->unk_20, &v0->unk_1CC, v1->unk_04, 105);
    ov69_0225DEC0(&v0->unk_BC70, &v0->unk_20, &v0->unk_1CC, 105);
    ov69_0225D030(v0, v1);

    SetMainCallback(ov69_0225CF90, v0);
    DisableHBlank();

    return 1;
}

int ov69_0225C820(OverlayManager *param0, int *param1)
{
    UnkStruct_ov69_0225CE64 *v0;
    UnkStruct_ov66_02230F50 *v1;
    BOOL v2;

    v0 = OverlayManager_Data(param0);
    v1 = OverlayManager_Args(param0);

    switch (*param1) {
    case 0:
        sub_0200F174(0, 1, 1, 0x0, 6, 1, 105);
        ov66_0222E31C(v1->unk_0C, 1);
        (*param1)++;
        break;
    case 1:
        v2 = ScreenWipe_Done();

        if (v2 == 1) {
            (*param1)++;
        }
        break;
    case 2:
        v2 = ov69_0225CE64(v0);
        ov69_0225CF30(v0);

        if (ov66_0222E12C(v1->unk_0C) == 1) {
            ov66_0222E2A4(v1->unk_0C);
            v2 = 1;
        }

        if (ov66_02231760() == 1) {
            v2 = 1;
        }

        if (v2 == 1) {
            (*param1) = 5;
        }
        break;
    case 5:
        sub_0200F174(0, 0, 0, 0x0, 6, 1, 105);
        (*param1)++;
        break;
    case 6:
        v2 = ScreenWipe_Done();

        if (v2 == 1) {
            return 1;
        }
        break;
    }

    ov69_0225CF50(v0);

    return 0;
}

int ov69_0225C8FC(OverlayManager *param0, int *param1)
{
    UnkStruct_ov69_0225CE64 *v0;
    UnkStruct_ov66_02230F50 *v1;

    v0 = OverlayManager_Data(param0);
    v1 = OverlayManager_Args(param0);

    SetMainCallback(NULL, NULL);
    DisableHBlank();

    ov69_0225DFBC(&v0->unk_BC70, &v0->unk_20);
    ov69_0225DDC8(&v0->unk_BF64);
    ov69_0225DC48(&v0->unk_BC44);
    ov69_0225DAEC(&v0->unk_BC30);
    ov69_0225D71C(&v0->unk_1DC);
    ov69_0225D838(&v0->unk_288);
    ov69_0225EF54(&v0->unk_1CC);
    ov69_0225D35C(&v0->unk_20);

    OverlayManager_FreeData(param0);
    Heap_Destroy(105);

    return 1;
}

static void ov69_0225C980(UnkStruct_ov69_0225CA7C *param0, const UnkStruct_ov66_02231560 *param1, u32 param2)
{
    NARC *v0 = NARC_ctor(NARC_INDEX_APPLICATION__WIFI_EARTH__WIFI_EARTH_PLACE, param2);

    param0->unk_00.unk_00 = 0;

    {
        void *v1;
        UnkStruct_ov92_021D1530 *v2;
        u32 v3;
        int v4, v5;

        v1 = sub_02007250(v0, 18, 0, param2, 0, &v3);
        v2 = (UnkStruct_ov92_021D1530 *)v1;
        v5 = v3 / 6;

        v2++;

        for (v4 = 1; v4 < v5; v4++) {
            if (v2->unk_00 != 2) {
                ov69_0225CA7C(param0, param0->unk_00.unk_00, v2->unk_02, v2->unk_04, v4, 0, param1);
                param0->unk_00.unk_00++;
            }

            v2++;
        }

        Heap_FreeToHeap(v1);
    }
    {
        void *v6;
        UnkStruct_ov69_0225C980 *v7;
        u32 v8, v9;
        int v10, v11, v12, v13;

        v12 = 1;
        v11 = sub_020996D0();

        while (v12 < v11) {
            v9 = sub_02099764(v12);
            v6 = sub_02007250(v0, v9, 0, param2, 0, &v8);
            v7 = (UnkStruct_ov69_0225C980 *)v6;
            v13 = v8 / 4;

            v7++;

            for (v10 = 1; v10 < v13; v10++) {
                ov69_0225CA7C(param0, param0->unk_00.unk_00, v7->unk_00, v7->unk_02, sub_02099748(v12), v10, param1);
                param0->unk_00.unk_00++;
                v7++;
            }

            Heap_FreeToHeap(v6);
            v12++;
        }
    }

    NARC_dtor(v0);
}

static void ov69_0225CA7C(UnkStruct_ov69_0225CA7C *param0, u32 param1, s16 param2, s16 param3, u16 param4, u16 param5, const UnkStruct_ov66_02231560 *param6)
{
    MtxFx33 v0 = { FX32_ONE, 0, 0, 0, FX32_ONE, 0, 0, 0, FX32_ONE };
    VecFx32 v1;

    param0->unk_00.unk_04[param1].unk_00 = param2;
    param0->unk_00.unk_04[param1].unk_02 = param3;

    v1.x = param2;
    v1.y = param3;
    v1.z = 0;

    ov69_0225CB6C(&v0, &v1);

    param0->unk_00.unk_04[param1].unk_04 = v0;

    if (param6 != NULL) {
        param0->unk_00.unk_04[param1].unk_28 = ov69_0225D91C(param6, param4, param5);
    }

    param0->unk_00.unk_04[param1].unk_2A = param4;
    param0->unk_00.unk_04[param1].unk_2C = param5;
}

static void ov69_0225CAF4(MtxFx33 *param0, const VecFx32 *param1)
{
    MtxFx33 v0;

    MTX_RotY33(param0, FX_SinIdx((u16)param1->y), FX_CosIdx((u16)param1->y));
    MTX_RotX33(&v0, FX_SinIdx((u16)param1->x), FX_CosIdx((u16)param1->x));
    MTX_Concat33(param0, &v0, param0);
    MTX_RotZ33(&v0, FX_SinIdx((u16)param1->z), FX_CosIdx((u16)param1->z));
    MTX_Concat33(param0, &v0, param0);
}

static void ov69_0225CB6C(MtxFx33 *param0, const VecFx32 *param1)
{
    MtxFx33 v0;

    MTX_RotY33(param0, FX_SinIdx((u16)param1->x), FX_CosIdx((u16)param1->x));
    MTX_RotX33(&v0, FX_SinIdx((u16)-param1->y), FX_CosIdx((u16)-param1->y));
    MTX_Concat33(param0, &v0, param0);
    MTX_RotZ33(&v0, FX_CosIdx((u16)param1->z), FX_SinIdx((u16)param1->z));
    MTX_Concat33(param0, &v0, param0);
}

static void ov69_0225CBE4(int param0, int param1, int *param2, int *param3, int *param4, int *param5)
{
    int v0 = 0;
    int v1 = 0;
    int v2 = 0;
    int v3 = 0;

    if (gCoreSys.touchX != 0xffff) {
        v2 = gCoreSys.touchX - param0;

        if (v2 < 0) {
            v2 ^= -1;
            v0 = PAD_KEY_RIGHT;
        } else {
            if (v2 > 0) {
                v0 = PAD_KEY_LEFT;
            }
        }
    }

    v2 &= 0x3f;

    *param2 = v0;
    *param3 = v2;

    if (gCoreSys.touchY != 0xffff) {
        v3 = gCoreSys.touchY - param1;

        if (v3 < 0) {
            v3 ^= -1;
            v1 = PAD_KEY_DOWN;
        } else {
            if (v3 > 0) {
                v1 = PAD_KEY_UP;
            }
        }
    }

    v3 &= 0x3f;

    *param4 = v1;
    *param5 = v3;
}

static u32 ov69_0225CC54(UnkStruct_ov69_0225CE64 *param0, int param1, int param2)
{
    u16 v0;
    u16 v1;
    s16 v2;
    s16 v3;
    u32 v4 = 0;
    VecFx32 v5;
    int v6;
    int v7, v8;
    u32 v9;

    ov69_0225D780(&param0->unk_1DC, &v5);

    v6 = ov69_0225DD10(&param0->unk_BC44, 0);
    v7 = ov69_0225DD10(&param0->unk_BC44, 1);
    v8 = ov69_0225DD10(&param0->unk_BC44, 2);
    v9 = ov69_0225DBB0(&param0->unk_BC30);

    v2 = v5.x;
    v3 = v5.y;

    if ((param1 & PAD_BUTTON_A) || (v6 & PAD_BUTTON_A)) {
        if (param0->unk_04.unk_00_0 == 1) {
            v4 = 1;
        }

        return v4;
    }

    if (v9 == 0) {
        if ((v7) || (v8)) {
            v0 = (0x200 / 6) * v7;
            v1 = (0x200 / 6) * v8;
        } else {
            v0 = 0x200;
            v1 = 0x200;
        }
    } else {
        if ((v7) || (v8)) {
            v0 = (0x20 / 3) * v7;
            v1 = (0x20 / 3) * v8;
        } else {
            v0 = 0x20;
            v1 = 0x20;
        }
    }

    if ((param2 & PAD_KEY_LEFT) || (v6 & PAD_KEY_LEFT)) {
        if (param0->unk_04.unk_00_0 == 1) {
            v5.y += v0;
        } else {
            if (v3 < (s16)0xd820) {
                v5.y += v0;
            }
        }
    }

    if ((param2 & PAD_KEY_RIGHT) || (v6 & PAD_KEY_RIGHT)) {
        if (param0->unk_04.unk_00_0 == 1) {
            v5.y -= v0;
        } else {
            if (v3 > (s16)0xcc80) {
                v5.y -= v0;
            }
        }
    }

    if ((param2 & PAD_KEY_UP) || (v6 & PAD_KEY_UP)) {
        if (param0->unk_04.unk_00_0 == 1) {
            if ((v2 + v1) < (0x4000 - 0x200)) {
                v5.x += v1;
            } else {
                v5.x = (0x4000 - 0x200);
            }
        } else {
            if (v2 < (s16)0x2020) {
                v5.x += v1;
            }
        }
    }

    if ((param2 & PAD_KEY_DOWN) || (v6 & PAD_KEY_DOWN)) {
        if (param0->unk_04.unk_00_0 == 1) {
            if ((v2 - v1) > (-0x4000 + 0x200)) {
                v5.x -= v1;
            } else {
                v5.x = (-0x4000 + 0x200);
            }
        } else {
            if (v2 > (s16)0x1300) {
                v5.x -= v1;
            }
        }
    }

    ov69_0225D790(&param0->unk_1DC, &v5);
    return v4;
}

static void ov69_0225CE0C(VecFx32 *param0)
{
    if (param0->x >= 0) {
        param0->x = param0->x % 0xffff;
    } else {
        param0->x = param0->x + (0xffff * ((MATH_ABS(param0->x) / 0xffff) + 1));
    }

    if (param0->y >= 0) {
        param0->y = param0->y % 0xffff;
    } else {
        param0->y = param0->y + (0xffff * ((MATH_ABS(param0->y) / 0xffff) + 1));
    }
}

static BOOL ov69_0225CE64(UnkStruct_ov69_0225CE64 *param0)
{
    u32 v0;

    switch (param0->unk_00) {
    case 0:
        v0 = ov69_0225CF9C(param0);

        switch (v0) {
        case 0:
            break;
        case 1:
            ov69_0225DB00(&param0->unk_BC30);
            param0->unk_00 = 1;
            break;
        case 2:
            param0->unk_00 = 2;
            break;
        }
        break;
    case 1:
        v0 = ov69_0225DB2C(&param0->unk_BC30, &param0->unk_288);

        if (v0 == 1) {
            param0->unk_00 = 0;
        }
        break;
    case 2:
        ov69_0225DDFC(&param0->unk_BF64);
        ov69_0225E084(&param0->unk_BC70);
        ov69_0225DD2C(&param0->unk_BC44);
        param0->unk_00++;
        break;
    case 3: {
        u32 v1;

        v1 = ov69_0225DE40(&param0->unk_BF64);

        switch (v1) {
        case 0:
            break;
        case 2:
            ov69_0225E0A0(&param0->unk_BC70);
            ov69_0225DEA0(&param0->unk_BF64);
            ov69_0225DD44(&param0->unk_BC44);
            param0->unk_00 = 0;
            break;
        default:
        case 1:
            return 1;
        }
    } break;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

static void ov69_0225CF30(UnkStruct_ov69_0225CE64 *param0)
{
    switch (param0->unk_02) {
    case 0:
        ov69_0225E00C(&param0->unk_BC70, &param0->unk_1CC, &param0->unk_20);
        break;
    }
}

static void ov69_0225CF50(UnkStruct_ov69_0225CE64 *param0)
{
    sub_020241B4();

    ov69_0225DAF8(&param0->unk_BC30);
    ov69_0225D728(&param0->unk_1DC);
    ov69_0225D854(&param0->unk_288, &param0->unk_1DC);
    ov69_0225D384(&param0->unk_20);

    G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
}

static void ov69_0225CF90(void *param0)
{
    UnkStruct_ov69_0225CE64 *v0 = param0;
    ov69_0225D390(&v0->unk_20);
}

static u32 ov69_0225CF9C(UnkStruct_ov69_0225CE64 *param0)
{
    u32 v0;
    BOOL v1;

    ov69_0225DC54(&param0->unk_BC44);

    if (param0->unk_BC44.unk_00 & PAD_BUTTON_B) {
        Sound_PlayEffect(1501);
        return 2;
    } else {
        if (gCoreSys.pressedKeys & PAD_BUTTON_X) {
            {
                UnkStruct_ov69_0225E0C0 v2;

                v1 = ov69_0225D088(param0, &v2);

                if (v1 == 1) {
                    v1 = ov69_0225E0F8(&param0->unk_BC70, &v2);

                    if (v1 == 0) {
                        v1 = ov69_0225E0C0(&param0->unk_BC70, &v2);

                        if (v1 == 0) {
                            (void)0;
                        } else {
                            ov69_0225D268(param0, v2.unk_04, v2.unk_08);
                            Sound_PlayEffect(1471);
                        }
                    }
                }
            }
        } else {
            v0 = ov69_0225CC54(param0, gCoreSys.pressedKeys, gCoreSys.heldKeys);
        }
    }

    return v0;
}

static void ov69_0225D030(UnkStruct_ov69_0225CE64 *param0, const UnkStruct_ov66_02230F50 *param1)
{
    int v0;
    int v1;
    int v2;
    BOOL v3;

    v3 = ov69_0225D268(param0, param0->unk_14, param0->unk_18);

    if (v3 == 0) {
        v0 = ov69_0225EFEC(param1->unk_00);

        if (v0 != 50) {
            v1 = ov66_022315D8(param1->unk_00, v0);
            v2 = ov66_022315FC(param1->unk_00, v0);
            v3 = ov69_0225D268(param0, v1, v2);

            GF_ASSERT(v3 == 1);
        } else {
            (void)0;
        }
    }
}

static BOOL ov69_0225D088(const UnkStruct_ov69_0225CE64 *param0, UnkStruct_ov69_0225E0C0 *param1)
{
    u32 v0;

    v0 = ov69_0225D0D8(param0);

    if (v0 >= ov69_0225DA70(&param0->unk_288)) {
        return 0;
    }

    param1->unk_00 = ov69_0225D1E0(param0, v0, param0->unk_1C);
    param1->unk_04 = ov69_0225DA38(&param0->unk_288, v0);
    param1->unk_08 = ov69_0225DA54(&param0->unk_288, v0);

    return 1;
}

static u32 ov69_0225D0D8(const UnkStruct_ov69_0225CE64 *param0)
{
    int v0;
    s16 v1;
    s16 v2;
    s16 v3;
    s16 v4;
    u32 v5;
    u32 v6;
    VecFx32 v7;
    VecFx32 v8;
    u32 v9;
    u32 v10;
    u32 v11;
    BOOL v12;
    BOOL v13;

    v10 = ov69_0225DA70(&param0->unk_288);

    ov69_0225D780(&param0->unk_1DC, &v7);

    v1 = (s16)(v7.x - 0x80);
    v2 = (s16)(v7.x + 0x80);
    v3 = (s16)(v7.y - 0x80);
    v4 = (s16)(v7.y + 0x80);
    v6 = 0x80 * 2;
    v11 = v10;

    for (v0 = 0; v0 < v10; v0++) {
        ov69_0225D9F0(&param0->unk_288, &v8, v0);
        v9 = ov69_0225DA1C(&param0->unk_288, v0);

        if ((v8.x > v1) && (v8.x < v2) && (v8.y > v3) && (v8.y < v4) && (v9 != 3)) {
            ov69_0225CE0C(&v7);
            ov69_0225CE0C(&v8);

            v5 = ov69_0225D194(&v7, &v8);

            if (v5 < v6) {
                v6 = v5;
                v11 = v0;
            }
        }
    }

    return v11;
}

static u32 ov69_0225D194(const VecFx32 *param0, const VecFx32 *param1)
{
    s32 v0, v1;
    u32 v2;

    v0 = MATH_ABS(param0->x - param1->x);
    v1 = MATH_ABS(param0->y - param1->y);

    if (v0 > sub_0201D278(180)) {
        v0 = 0xffff - v0;
    }

    if (v1 > sub_0201D278(180)) {
        v1 = 0xffff - v1;
    }

    v2 = FX_Sqrt(((v0 * v0) + (v1 * v1)) << FX32_SHIFT) >> FX32_SHIFT;

    return v2;
}

static u32 ov69_0225D1E0(const UnkStruct_ov69_0225CE64 *param0, u32 param1, UnkStruct_ov66_02231428 param2)
{
    s32 v0;
    u16 v1;
    VecFx32 v2;
    VecFx32 v3;
    int v4;

    v0 = param2.unk_00_val2_unk_00 - 4;
    v4 = ov69_0225D9C4(&param0->unk_288, 219, 3);

    GF_ASSERT(v4 < ov69_0225DA70(&param0->unk_288));

    ov69_0225D9F0(&param0->unk_288, &v2, v4);
    ov69_0225D9F0(&param0->unk_288, &v3, param1);

    v1 = v2.y - v3.y;
    v0 += (v1 * 24) / 0xffff;

    if (v0 < 0) {
        v0 += 24;
    }

    if (v0 >= 24) {
        v0 %= 24;
    }

    return v0;
}

static BOOL ov69_0225D268(UnkStruct_ov69_0225CE64 *param0, u8 param1, u8 param2)
{
    VecFx32 v0;
    VecFx32 v1;
    u32 v2;

    v2 = ov69_0225D984(&param0->unk_288, param1, param2, &v0);

    if (v2 != 3) {
        ov69_0225D780(&param0->unk_1DC, &v1);
        v0.z = v1.z;
        ov69_0225D790(&param0->unk_1DC, &v0);
        return 1;
    }

    return 0;
}

static void ov69_0225D2A8(UnkStruct_ov69_0225CE64 *param0, const UnkStruct_ov66_02230F50 *param1)
{
    int v0;

    param0->unk_04.unk_00_1 = 0;
    param0->unk_04.unk_00_0 = 0;

    if (Unk_020E4C44 == 1) {
        param0->unk_04.unk_00_1 = 1;
    } else {
        param0->unk_04.unk_00_1 = 0;
    }

    if (param0->unk_04.unk_00_1 == 1) {
        for (v0 = 0; v0 < 50; v0++) {
            if (param1->unk_00->unk_00[v0].unk_03_4 == 1) {
                if (param1->unk_00->unk_00[v0].unk_00 != 103) {
                    param0->unk_04.unk_00_0 = 1;
                }
            }
        }
    } else {
        param0->unk_04.unk_00_0 = 1;
    }
}

static void ov69_0225D318(UnkStruct_ov69_0225D35C *param0, Options *param1, u32 param2)
{
    param0->unk_1A8 = NARC_ctor(NARC_INDEX_GRAPHIC__WORLDTIMER, param2);

    sub_0201DBEC(64, param2);
    GXLayers_SetBanks(&Unk_ov69_0225F0C0);

    ov69_0225D3A4(param0, param1, param2);
    ov69_0225D53C(param0, param2);
    ov69_0225D604(param0, param2);
}

static void ov69_0225D35C(UnkStruct_ov69_0225D35C *param0)
{
    NARC_dtor(param0->unk_1A8);
    sub_0201DC3C();

    ov69_0225D504(param0);
    ov69_0225D5D8(param0);
    ov69_0225D63C(param0);
}

static void ov69_0225D384(UnkStruct_ov69_0225D35C *param0)
{
    CellActorCollection_Update(param0->unk_04);
}

static void ov69_0225D390(UnkStruct_ov69_0225D35C *param0)
{
    sub_0201C2B8(param0->unk_00);
    sub_0200A858();
    sub_0201DCAC();
}

static void ov69_0225D3A4(UnkStruct_ov69_0225D35C *param0, Options *param1, u32 param2)
{
    sub_02018368(&Unk_ov69_0225F040);

    param0->unk_00 = sub_02018340(param2);
    gCoreSys.unk_65 = 1;

    GXLayers_SwapDisplay();

    {
        int v0;

        for (v0 = 0; v0 < 5; v0++) {
            sub_020183C4(param0->unk_00, Unk_ov69_0225F060[v0], &Unk_ov69_0225F154[v0], 0);
            sub_02019690(Unk_ov69_0225F060[v0], 32, 0, param2);
            sub_02019EBC(param0->unk_00, Unk_ov69_0225F060[v0]);
        }
    }

    sub_02007130(param0->unk_1A8, 5, 4, 0, 0, param2);

    {
        sub_020070E8(param0->unk_1A8, 11, param0->unk_00, 4, 0, 0, 0, param2);
        sub_0200710C(param0->unk_1A8, 12, param0->unk_00, 4, 0, 0, 0, param2);
    }

    {
        sub_020070E8(param0->unk_1A8, 4, param0->unk_00, 6, 0, 0, 0, param2);
        sub_0200710C(param0->unk_1A8, 18, param0->unk_00, 7, 0, 0, 0, param2);
    }

    Font_LoadScreenIndicatorsPalette(0, 1 * 0x20, param2);
    Font_LoadScreenIndicatorsPalette(4, 11 * 0x20, param2);
    sub_0200DAA4(param0->unk_00, 1, (1 + (18 + 12)), 0, 0, param2);
    sub_0200DAA4(param0->unk_00, 1, (1 + (18 + 12)), 0, 0, param2);

    {
        u8 v1 = Options_Frame(param1);

        sub_0200DD0C(param0->unk_00, 4, 10, 10, v1, param2);
        sub_0200DD0C(param0->unk_00, 1, 1, 2, v1, param2);
    }

    sub_0201975C(0, 0x72ca);
}

static void ov69_0225D504(UnkStruct_ov69_0225D35C *param0)
{
    {
        int v0;

        for (v0 = 0; v0 < 5; v0++) {
            sub_02019044(param0->unk_00, Unk_ov69_0225F060[v0]);
        }
    }

    Heap_FreeToHeap(param0->unk_00);
    gCoreSys.unk_65 = 0;
    GXLayers_SwapDisplay();
}

static void ov69_0225D53C(UnkStruct_ov69_0225D35C *param0, u32 param1)
{
    int v0;

    NNS_G2dInitOamManagerModule();

    sub_0200A784(0, 126, 0, 31, 0, 126, 0, 31, param1);
    sub_0201E88C(&Unk_ov69_0225F050, GX_OBJVRAMMODE_CHAR_1D_32K, GX_OBJVRAMMODE_CHAR_1D_32K);
    sub_0201F834(32, param1);
    sub_0201E994();
    sub_0201F8E4();
    sub_0200966C(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_32K);
    sub_02009704(NNS_G2D_VRAM_TYPE_2DMAIN);

    param0->unk_04 = sub_020095C4(32, &param0->unk_08, param1);

    sub_0200964C(&param0->unk_08, 0, (FX32_CONST(256)));

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_194[v0] = SpriteResourceCollection_New(32, v0, param1);
    }

    sub_02039734();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov69_0225D5D8(UnkStruct_ov69_0225D35C *param0)
{
    int v0;

    CellActorCollection_Delete(param0->unk_04);

    for (v0 = 0; v0 < 4; v0++) {
        SpriteResourceCollection_Delete(param0->unk_194[v0]);
    }

    sub_0201E958();
    sub_0201F8B4();
    sub_0200A878();
}

static void ov69_0225D604(UnkStruct_ov69_0225D35C *param0, u32 param1)
{
    param0->unk_1A4 = sub_02024220(param1, 0, 2, 0, 4, ov69_0225D64C);
    NNS_G3dGlbLightVector(0, 0, 0, (-(FX32_ONE - 1)));
}

static void ov69_0225D63C(UnkStruct_ov69_0225D35C *param0)
{
    sub_020242C4(param0->unk_1A4);
}

static void ov69_0225D64C(void)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(1);
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_EdgeMarking(1);
    G3X_SetFog(0, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    G3X_SetClearColor(GX_RGB(26, 26, 26), 0, 0x7fff, 63, 0);
    G3_ViewPort(0, 0, 255, 191);
}

static void ov69_0225D6D8(UnkStruct_ov69_0225D71C *param0, UnkStruct_ov69_0225D35C *param1, u32 param2)
{
    {
        VEC_Set(&param0->unk_00, 0, 0, 0);
        VEC_Set(&param0->unk_0C, (FX32_ONE), (FX32_ONE), (FX32_ONE));
        VEC_Set(&param0->unk_18, 0x1A40, 0x7C00, 0);
    }

    {
        Easy3DModel_LoadFrom(&param0->unk_9C, param1->unk_1A8, 3, param2);
        Easy3DObject_Init(&param0->unk_24, &param0->unk_9C);
    }
}

static void ov69_0225D71C(UnkStruct_ov69_0225D71C *param0)
{
    {
        Easy3DModel_Release(&param0->unk_9C);
    }
}

static void ov69_0225D728(UnkStruct_ov69_0225D71C *param0)
{
    MtxFx33 v0;

    ov69_0225D770(param0, &v0);

    Easy3DObject_SetPosition(&param0->unk_24, param0->unk_00.x, param0->unk_00.y, param0->unk_00.z);
    Easy3DObject_SetScale(&param0->unk_24, param0->unk_0C.x, param0->unk_0C.y, param0->unk_0C.z);

    Easy3DObject_DrawRotated(&param0->unk_24, &v0);
}

static void ov69_0225D760(const UnkStruct_ov69_0225D71C *param0, VecFx32 *param1)
{
    *param1 = param0->unk_00;
}

static void ov69_0225D770(const UnkStruct_ov69_0225D71C *param0, MtxFx33 *param1)
{
    ov69_0225CAF4(param1, &param0->unk_18);
}

static void ov69_0225D780(const UnkStruct_ov69_0225D71C *param0, VecFx32 *param1)
{
    *param1 = param0->unk_18;
}

static void ov69_0225D790(UnkStruct_ov69_0225D71C *param0, const VecFx32 *param1)
{
    param0->unk_18 = *param1;
}

static void ov69_0225D7A0(UnkStruct_ov69_0225CA7C *param0, const UnkStruct_ov66_02231560 *param1, UnkStruct_ov69_0225D35C *param2, UnkStruct_ov69_0225DA74 param3, u32 param4)
{
    int v0;

    ov69_0225C980(param0, param1, param4);

    for (v0 = 0; v0 < 3; v0++) {
        Easy3DModel_LoadFrom(&param0->unk_B978[v0], param2->unk_1A8, Unk_ov69_0225F028[v0], param4);
        Easy3DObject_Init(&param0->unk_B810[v0], &param0->unk_B978[v0]);
    }

    if (param3.unk_00_0 == 0) {
        VEC_Set(&param0->unk_B804, 0x300, 0x300, (FX32_ONE));
    } else {
        VEC_Set(&param0->unk_B804, (FX32_ONE), (FX32_ONE), (FX32_ONE));
    }
}

static void ov69_0225D838(UnkStruct_ov69_0225CA7C *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        Easy3DModel_Release(&param0->unk_B978[v0]);
    }
}

static void ov69_0225D854(UnkStruct_ov69_0225CA7C *param0, const UnkStruct_ov69_0225D71C *param1)
{
    MtxFx33 v0;
    int v1;
    MtxFx33 v2;
    VecFx32 v3;

    ov69_0225D760(param1, &v3);
    ov69_0225D770(param1, &v2);

    for (v1 = 0; v1 < 3; v1++) {
        Easy3DObject_SetPosition(&param0->unk_B810[v1], v3.x, v3.y, v3.z);

        if (v1 == 2) {
            Easy3DObject_SetScale(&param0->unk_B810[v1], param0->unk_B804.x, param0->unk_B804.y, param0->unk_B804.z + (FX32_CONST(0.1)));
        } else {
            Easy3DObject_SetScale(&param0->unk_B810[v1], param0->unk_B804.x, param0->unk_B804.y, param0->unk_B804.z);
        }
    }

    {
        MTX_Identity33(&v0);
        Easy3DObject_DrawRotated(&param0->unk_B810[2], &v0);
    }

    {
        for (v1 = 0; v1 < param0->unk_00.unk_00; v1++) {
            MTX_Concat33(&param0->unk_00.unk_04[v1].unk_04, &v2, &v0);

            if (param0->unk_00.unk_04[v1].unk_28 != 3) {
                Easy3DObject_DrawRotated(&param0->unk_B810[param0->unk_00.unk_04[v1].unk_28], &v0);
            }
        }
    }
}

static u32 ov69_0225D91C(const UnkStruct_ov66_02231560 *param0, u16 param1, u16 param2)
{
    int v0;
    BOOL v1;
    BOOL v2;
    u8 v3, v4;

    for (v0 = 0; v0 < 50; v0++) {
        v2 = ov66_0223164C(param0, v0);

        if (v2) {
            v1 = ov66_02231624(param0, v0);
            v3 = ov66_022315D8(param0, v0);
            v4 = ov66_022315FC(param0, v0);

            if ((v3 == param1) && (v4 == param2)) {
                if (v1 == 1) {
                    return 1;
                }

                return 0;
            }
        }
    }

    return 3;
}

static u32 ov69_0225D984(const UnkStruct_ov69_0225CA7C *param0, u16 param1, u16 param2, VecFx32 *param3)
{
    u32 v0 = 3;
    int v1;
    int v2;

    v2 = ov69_0225DA70(param0);
    v1 = ov69_0225D9C4(param0, param1, param2);

    if (v1 < v2) {
        v0 = ov69_0225DA1C(param0, v1);

        ov69_0225D9F0(param0, param3, v1);
    }

    return v0;
}

static u32 ov69_0225D9C4(const UnkStruct_ov69_0225CA7C *param0, u16 param1, u16 param2)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_00.unk_00; v0++) {
        if ((param0->unk_00.unk_04[v0].unk_2A == param1) && (param0->unk_00.unk_04[v0].unk_2C == param2)) {
            return v0;
        }
    }

    return param0->unk_00.unk_00;
}

static void ov69_0225D9F0(const UnkStruct_ov69_0225CA7C *param0, VecFx32 *param1, int param2)
{
    GF_ASSERT(param2 < param0->unk_00.unk_00);

    param1->x = param0->unk_00.unk_04[param2].unk_00;
    param1->y = param0->unk_00.unk_04[param2].unk_02;
    param1->z = 0;
}

static u32 ov69_0225DA1C(const UnkStruct_ov69_0225CA7C *param0, int param1)
{
    GF_ASSERT(param1 < param0->unk_00.unk_00);
    return param0->unk_00.unk_04[param1].unk_28;
}

static u32 ov69_0225DA38(const UnkStruct_ov69_0225CA7C *param0, int param1)
{
    GF_ASSERT(param1 < param0->unk_00.unk_00);
    return param0->unk_00.unk_04[param1].unk_2A;
}

static u32 ov69_0225DA54(const UnkStruct_ov69_0225CA7C *param0, int param1)
{
    GF_ASSERT(param1 < param0->unk_00.unk_00);
    return param0->unk_00.unk_04[param1].unk_2C;
}

static u32 ov69_0225DA70(const UnkStruct_ov69_0225CA7C *param0)
{
    return param0->unk_00.unk_00;
}

static void ov69_0225DA74(UnkStruct_ov69_0225DAEC *param0, UnkStruct_ov69_0225DA74 param1, u32 param2)
{
    param0->camera = Camera_Alloc(param2);

    Camera_InitWithTargetAndPosition(&Unk_ov69_0225F034, &Unk_ov69_0225F01C, 0x5c1, 0, 0, param0->camera);
    Camera_SetClipping(0, (FX32_ONE * 100), param0->camera);
    Camera_ComputeProjectionMatrix(0, param0->camera);
    Camera_SetAsActive(param0->camera);

    if (param1.unk_00_0 == 0) {
        param0->unk_10 = 1;
        param0->unk_0C = 0x50000;
    } else {
        param0->unk_10 = 0;
        param0->unk_0C = 0x128000;
    }

    Camera_SetDistance(param0->unk_0C, param0->camera);
}

static void ov69_0225DAEC(UnkStruct_ov69_0225DAEC *param0)
{
    Camera_Delete(param0->camera);
}

static void ov69_0225DAF8(const UnkStruct_ov69_0225DAEC *param0)
{
    Camera_ComputeViewMatrix();
}

static void ov69_0225DB00(UnkStruct_ov69_0225DAEC *param0)
{
    if (param0->unk_10 == 0) {
        param0->unk_10 = 1;
        Sound_PlayEffect(1470);
    } else {
        param0->unk_10 = 0;
        Sound_PlayEffect(1470);
    }

    param0->unk_12 = 1;
}

static BOOL ov69_0225DB2C(UnkStruct_ov69_0225DAEC *param0, UnkStruct_ov69_0225CA7C *param1)
{
    if (param0->unk_12 == 0) {
        return 1;
    }

    switch (param0->unk_10) {
    case 1:
        if (param0->unk_0C > (0x50000 + 0x8000)) {
            param0->unk_0C -= 0x8000;
            param1->unk_B804.x -= 0x80;
            param1->unk_B804.y = param1->unk_B804.x;
        } else {
            param0->unk_0C = 0x50000;
            param0->unk_12 = 0;
        }
        break;
    case 0:
        if (param0->unk_0C < (0x128000 - 0x8000)) {
            param0->unk_0C += 0x8000;
            param1->unk_B804.x += 0x80;
            param1->unk_B804.y = param1->unk_B804.x;
        } else {
            param0->unk_0C = 0x128000;
            param0->unk_12 = 0;
        }
        break;
    }

    Camera_SetDistance(param0->unk_0C, param0->camera);

    return 0;
}

static u32 ov69_0225DBB0(const UnkStruct_ov69_0225DAEC *param0)
{
    return param0->unk_10;
}

static void ov69_0225DBB4(UnkStruct_ov69_0225DC48 *param0, UnkStruct_ov69_0225D35C *param1, UnkStruct_ov69_0225EF54 *param2, u32 param3)
{
    memset(param0, 0, sizeof(UnkStruct_ov69_0225DC48));

    BGL_AddWindow(param1->unk_00, &param0->unk_1C, 1, 25, 21, 6, 2, 1, ((1 + (18 + 12)) + 9));
    BGL_FillWindow(&param0->unk_1C, 15);

    {
        Strbuf *v0;

        v0 = ov69_0225EF74(param2, 1);

        Font_InitManager(FONT_SUBSCREEN, param3);
        {
            u32 v1 = Font_CalcCenterAlignment(FONT_SUBSCREEN, v0, 0, 48);
            Text_AddPrinterWithParamsAndColor(&param0->unk_1C, FONT_SUBSCREEN, v0, v1, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(2, 1, 15), NULL);
        }

        Font_Free(FONT_SUBSCREEN);
    }

    Window_Show(&param0->unk_1C, 0, (1 + (18 + 12)), 0);
}

static void ov69_0225DC48(UnkStruct_ov69_0225DC48 *param0)
{
    BGL_DeleteWindow(&param0->unk_1C);
}

static void ov69_0225DC54(UnkStruct_ov69_0225DC48 *param0)
{
    int v0, v1, v2, v3;

    param0->unk_00 = 0;

    if (gCoreSys.touchPressed) {
        if ((gCoreSys.touchX >= (25 * 8)) && (gCoreSys.touchX <= ((25 + 6) * 8)) && (gCoreSys.touchY >= (21 * 8)) && (gCoreSys.touchY <= ((21 + 2) * 8))) {
            param0->unk_00 = PAD_BUTTON_B;
            return;
        } else {
            param0->unk_04 = 0;
            param0->unk_10 = 0;
            param0->unk_14 = 0;
            param0->unk_18 = 0;
            param0->unk_00 = 0;
            param0->unk_08 = gCoreSys.touchX;
            param0->unk_0C = gCoreSys.touchY;
            param0->unk_18 = 4;
        }
    }

    if (gCoreSys.touchHeld) {
        switch (param0->unk_04) {
        case 0:

            if (!param0->unk_18) {
                param0->unk_04++;
            } else {
                param0->unk_18--;
            }
        case 1:
            ov69_0225CBE4(param0->unk_08, param0->unk_0C, &v0, &v1, &v2, &v3);
            param0->unk_00 = v0 | v2;
            param0->unk_10 = v1;
            param0->unk_14 = v3;
            param0->unk_08 = gCoreSys.touchX;
            param0->unk_0C = gCoreSys.touchY;
            break;
        }
    } else {
        if (param0->unk_18) {
            param0->unk_00 = PAD_BUTTON_A;
        }

        param0->unk_04 = 0;
        param0->unk_10 = 0;
        param0->unk_14 = 0;
        param0->unk_18 = 0;
    }
}

static int ov69_0225DD10(const UnkStruct_ov69_0225DC48 *param0, u32 param1)
{
    int v0;

    switch (param1) {
    case 0:
        v0 = param0->unk_00;
        break;
    case 1:
        v0 = param0->unk_10;
        break;
    case 2:
        v0 = param0->unk_14;
        break;
    default:
        break;
    }

    return v0;
}

static void ov69_0225DD2C(UnkStruct_ov69_0225DC48 *param0)
{
    Window_Clear(&param0->unk_1C, 1);
    sub_0201AD10(&param0->unk_1C);
}

static void ov69_0225DD44(UnkStruct_ov69_0225DC48 *param0)
{
    sub_0201A9A4(&param0->unk_1C);
    Window_Show(&param0->unk_1C, 0, (1 + (18 + 12)), 0);
}

static void ov69_0225DD60(UnkStruct_ov69_0225DDC8 *param0, UnkStruct_ov69_0225D35C *param1, UnkStruct_ov69_0225EF54 *param2, SaveData *param3, u32 param4)
{
    memset(param0, 0, sizeof(UnkStruct_ov69_0225DC48));

    {
        Options *v0;

        v0 = SaveData_Options(param3);
        param0->unk_08 = Options_TextFrameDelay(v0);
    }

    param0->unk_0C = Strbuf_Init(128, param4);

    BGL_AddWindow(param1->unk_00, &param0->unk_10, 1, 2, 1, 27, 4, 1, (((1 + (18 + 12)) + 9) + (6 * 2)));
    BGL_FillWindow(&param0->unk_10, 15);

    ov69_0225EF84(param2, 5, param0->unk_0C);

    param0->unk_20 = sub_02015920(param4);
}

static void ov69_0225DDC8(UnkStruct_ov69_0225DDC8 *param0)
{
    if (Text_IsPrinterActive(param0->unk_04) != 0) {
        Text_RemovePrinter(param0->unk_04);
    }

    Strbuf_Free(param0->unk_0C);
    sub_02015938(param0->unk_20);
    BGL_DeleteWindow(&param0->unk_10);
}

static void ov69_0225DDFC(UnkStruct_ov69_0225DDC8 *param0)
{
    BGL_FillWindow(&param0->unk_10, 15);
    sub_0200E060(&param0->unk_10, 1, 1, 2);
    sub_0201A9A4(&param0->unk_10);

    param0->unk_04 = Text_AddPrinterWithParams(&param0->unk_10, FONT_MESSAGE, param0->unk_0C, 0, 0, param0->unk_08, NULL);
    param0->unk_00 = 0;
}

static u32 ov69_0225DE40(UnkStruct_ov69_0225DDC8 *param0)
{
    u32 v0;

    switch (param0->unk_00) {
    case 0:
        v0 = 0;

        if (Text_IsPrinterActive(param0->unk_04) == 0) {
            UnkStruct_02015958 v1;

            v1 = Unk_ov69_0225F074;
            v1.unk_00 = sub_0201C28C(&param0->unk_10);
            sub_02015958(param0->unk_20, &v1);
            param0->unk_00++;
        }
        break;
    case 1:
        v0 = sub_020159FC(param0->unk_20);
        break;
    }

    return v0;
}

static void ov69_0225DEA0(UnkStruct_ov69_0225DDC8 *param0)
{
    sub_02015A54(param0->unk_20);
    sub_0200E084(&param0->unk_10, 1);
    sub_0201AD10(&param0->unk_10);
}

static void ov69_0225DEC0(UnkStruct_ov69_0225E084 *param0, UnkStruct_ov69_0225D35C *param1, UnkStruct_ov69_0225EF54 *param2, u32 param3)
{
    param0->unk_00 = 0;

    ov69_0225E13C(param0);

    {
        int v0;

        for (v0 = 0; v0 < 5; v0++) {
            ov69_0225E748(&param0->unk_A0[v0], param1, &Unk_ov69_0225F118[v0], Unk_ov69_0225F014[v0], param3);
        }
    }

    {
        Strbuf *v1;

        BGL_AddWindow(param1->unk_00, &param0->unk_1A8, 4, 2, 19, 27, 4, 11, (10 + (18 + 12)));
        BGL_FillWindow(&param0->unk_1A8, 15);

        v1 = ov69_0225EF74(param2, 0);

        Text_AddPrinterWithParams(&param0->unk_1A8, FONT_MESSAGE, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
        sub_0200E060(&param0->unk_1A8, 0, 10, 10);
    }

    ov69_0225E590(param0, param1, param3);

    {
        param0->unk_94 = sub_020071D0(param1->unk_1A8, 19, 0, &param0->unk_98, param3);
    }

    ov69_0225E960(&param0->unk_1B8, param1, &param0->unk_2E4, param3);
    ov69_0225E478(&param0->unk_2E4);
}

static void ov69_0225DFBC(UnkStruct_ov69_0225E084 *param0, UnkStruct_ov69_0225D35C *param1)
{
    ov69_0225E4E8(&param0->unk_2E4);
    ov69_0225EAE8(&param0->unk_1B8, param1);

    Heap_FreeToHeap(param0->unk_94);
    ov69_0225E61C(param0);
    BGL_DeleteWindow(&param0->unk_1A8);
    ov69_0225E148(param0);

    {
        int v0;

        for (v0 = 0; v0 < 5; v0++) {
            ov69_0225E7DC(&param0->unk_A0[v0]);
        }
    }
}

static void ov69_0225E00C(UnkStruct_ov69_0225E084 *param0, UnkStruct_ov69_0225EF54 *param1, UnkStruct_ov69_0225D35C *param2)
{
    BOOL v0;

    switch (param0->unk_00) {
    case 0:
        ov69_0225E1EC(param0, param2);
        ov69_0225EC08(&param0->unk_1B8, &param0->unk_2E4);
        break;
    case 1:
        ov69_0225E208(param0, param1, param2);
        param0->unk_00 = 2;
        break;
    case 2:
        v0 = ov69_0225E2D0(param0, param2);

        if (v0 == 1) {
            param0->unk_00 = 0;
        }
        break;
    case 3:
        ov69_0225E2DC(param0);
        ov69_0225E2E4(param0, param2);
        param0->unk_00 = 4;
        break;
    case 4:
        v0 = ov69_0225E2E4(param0, param2);

        if (v0 == 1) {
            param0->unk_00 = 0;
        }
        break;
    }
}

static void ov69_0225E084(UnkStruct_ov69_0225E084 *param0)
{
    sub_0200E084(&param0->unk_1A8, 1);
    sub_0201AD10(&param0->unk_1A8);
}

static void ov69_0225E0A0(UnkStruct_ov69_0225E084 *param0)
{
    sub_0201A9A4(&param0->unk_1A8);
    sub_0200E060(&param0->unk_1A8, 1, 10, 10);
}

static BOOL ov69_0225E0C0(UnkStruct_ov69_0225E084 *param0, const UnkStruct_ov69_0225E0C0 *param1)
{
    switch (param0->unk_00) {
    case 0:
        param0->unk_00 = 1;
        break;
    case 2:
        param0->unk_00 = 3;
        return 0;
    case 3:
    case 4:
    case 1:
        return 0;
    }

    ov69_0225E154(param0, param1);

    return 1;
}

static BOOL ov69_0225E0F8(const UnkStruct_ov69_0225E084 *param0, const UnkStruct_ov69_0225E0C0 *param1)
{
    int v0;
    UnkStruct_ov69_0225E0C0 v1;
    BOOL v2;

    for (v0 = 0; v0 < 3; v0++) {
        v2 = ov69_0225E1C0(param0, &v1, v0);

        if (v2 == 0) {
            return 0;
        }

        if ((v1.unk_04 == param1->unk_04) && (v1.unk_08 == param1->unk_08)) {
            return 1;
        }
    }

    return 0;
}

static void ov69_0225E13C(UnkStruct_ov69_0225E084 *param0)
{
    param0->unk_34 = 0;
    param0->unk_36 = 0;
    param0->unk_38 = 0;
}

static void ov69_0225E148(UnkStruct_ov69_0225E084 *param0)
{
    param0->unk_34 = 0;
    param0->unk_36 = 0;
    param0->unk_38 = 0;
}

static void ov69_0225E154(UnkStruct_ov69_0225E084 *param0, const UnkStruct_ov69_0225E0C0 *param1)
{
    if (((param0->unk_36 + 1) % 4) == param0->unk_34) {
        ov69_0225E1A0(param0);
    }

    param0->unk_04[param0->unk_36] = *param1;
    param0->unk_36 = (param0->unk_36 + 1) % 4;
    param0->unk_38++;
}

static void ov69_0225E1A0(UnkStruct_ov69_0225E084 *param0)
{
    if (param0->unk_36 == param0->unk_34) {
        return;
    }

    param0->unk_34 = (param0->unk_34 + 1) % 4;
    param0->unk_38--;
}

static BOOL ov69_0225E1C0(const UnkStruct_ov69_0225E084 *param0, UnkStruct_ov69_0225E0C0 *param1, u32 param2)
{
    s32 v0;

    if (param2 >= param0->unk_38) {
        return 0;
    }

    v0 = (param0->unk_36 - 1) - param2;

    if (v0 < 0) {
        v0 += 4;
    }

    *param1 = param0->unk_04[v0];

    return 1;
}

static void ov69_0225E1EC(UnkStruct_ov69_0225E084 *param0, UnkStruct_ov69_0225D35C *param1)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        ov69_0225E810(&param0->unk_A0[v0], param1);
    }
}

static void ov69_0225E208(UnkStruct_ov69_0225E084 *param0, UnkStruct_ov69_0225EF54 *param1, UnkStruct_ov69_0225D35C *param2)
{
    memset(param0->unk_40, 0, sizeof(UnkStruct_ov69_0225E084_sub1) * (3 * 6));

    param0->unk_3C = 0;
    param0->unk_3E = 0;

    {
        int v0;
        int v1;
        int v2;
        BOOL v3;
        int v4;
        UnkStruct_ov69_0225E0C0 v5;

        for (v0 = 0; v0 < 5; v0++) {
            ov69_0225E904(&param0->unk_A0[v0]);
        }

        ov69_0225EB60(&param0->unk_1B8);

        v4 = -1;

        for (v0 = 0; v0 < 3; v0++) {
            v1 = 2 - v0;
            v3 = ov69_0225E1C0(param0, &v5, v0);

            if (v3 == 1) {
                v2 = ov69_0225EEEC(v5.unk_00);

                ov69_0225E8EC(&param0->unk_A0[v2], v1, 1);
                ov69_0225E644(param0, v1, &v5, param1);

                param0->unk_88[v1] = v2;
                ov69_0225EB8C(&param0->unk_1B8, v1, v5.unk_00, v4);
                param0->unk_3E += 6;

                v4 = v5.unk_00;
            } else {
                param0->unk_88[v1] = 5;
                v4 = -1;
            }
        }
    }
}

static BOOL ov69_0225E2D0(UnkStruct_ov69_0225E084 *param0, UnkStruct_ov69_0225D35C *param1)
{
    return ov69_0225E2F0(param0, param1, 2);
}

static void ov69_0225E2DC(UnkStruct_ov69_0225E084 *param0)
{
    int v0;

    v0 = param0->unk_3C / 2;
    param0->unk_3C = v0 * 1;
}

static BOOL ov69_0225E2E4(UnkStruct_ov69_0225E084 *param0, UnkStruct_ov69_0225D35C *param1)
{
    return ov69_0225E2F0(param0, param1, 1);
}

static BOOL ov69_0225E2F0(UnkStruct_ov69_0225E084 *param0, UnkStruct_ov69_0225D35C *param1, int param2)
{
    u32 v0;
    int v1;
    BOOL v2;
    BOOL v3 = 1;

    if ((param0->unk_3C % param2) == 0) {
        v0 = param0->unk_3C / param2;
        ov69_0225E368(param0, v0);
    }

    if ((param0->unk_3C + 1) < ((3 * 6) * param2)) {
        param0->unk_3C++;
    }

    for (v1 = 0; v1 < param0->unk_3E; v1++) {
        v2 = ov69_0225E374(param0, v1, param1);

        if (v2 == 0) {
            v3 = 0;
        }
    }

    if (v3 == 1) {
        ov69_0225EBEC(&param0->unk_1B8);
        ov69_0225E51C(&param0->unk_2E4, 0, 0);
    }

    return v3;
}

static void ov69_0225E368(UnkStruct_ov69_0225E084 *param0, u32 param1)
{
    param0->unk_40[param1].unk_00 = 1;
}

static BOOL ov69_0225E374(UnkStruct_ov69_0225E084 *param0, u32 param1, UnkStruct_ov69_0225D35C *param2)
{
    u32 v0;
    u32 v1;
    u32 v2;
    u32 v3;

    if (param0->unk_40[param1].unk_00 == 0) {
        return 0;
    }

    if (param0->unk_40[param1].unk_01 >= 2) {
        return 1;
    }

    v0 = ((3 * 6) - param1) - 1;
    v2 = v0 / 6;
    v1 = v0 % 6;
    v3 = param0->unk_88[v2];

    switch (param0->unk_40[param1].unk_01) {
    case 0: {
        u8 *v4;

        v4 = ov69_0225E70C(param0, v1);
        ov69_0225E71C(param0, v2, v1, v4);
    }

        {
            ov69_0225E430(param0, v0, param2);
        }

        {
            ov69_0225E51C(&param0->unk_2E4, v0 * 8, (3 * 6) * 8);
        }
        break;
    case 1: {
        u8 *v5;

        v5 = ov69_0225E6E8(param0, v2, v1);
        ov69_0225E71C(param0, v2, v1, v5);
    }
        {
            ov69_0225E910(&param0->unk_A0[v3], v0, param2);
        }
        break;
    default:
        break;
    }

    param0->unk_40[param1].unk_01++;
    return 0;
}

static void ov69_0225E430(UnkStruct_ov69_0225E084 *param0, u32 param1, UnkStruct_ov69_0225D35C *param2)
{
    sub_020198E8(param2->unk_00, 6, 0, 0 + param1, 32, 1, param0->unk_98->rawData, 0, 0 + param1, param0->unk_98->screenWidth / 8, param0->unk_98->screenHeight / 8);
    sub_0201C3C0(param2->unk_00, 6);
}

static void ov69_0225E478(UnkStruct_ov69_0225E478 *param0)
{
    GXS_SetVisibleWnd(GX_WNDMASK_W0 | GX_WNDMASK_W1);
    G2S_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 0);
    G2S_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3, 0);
    G2S_SetWnd1InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3, 0);

    ov69_0225E504(param0, 0, 0);
    ov69_0225E51C(param0, 0, 0);

    param0->unk_0C = SysTask_ExecuteAfterVBlank(ov69_0225E534, param0, 0);
}

static void ov69_0225E4E8(UnkStruct_ov69_0225E478 *param0)
{
    SysTask_Done(param0->unk_0C);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);
}

static void ov69_0225E504(UnkStruct_ov69_0225E478 *param0, s16 param1, s16 param2)
{
    if (param1 < 0) {
        param1 = 0;
    }

    if (param2 < 0) {
        param2 = 0;
    }

    param0->unk_00 = 1;
    param0->unk_04 = param1;
    param0->unk_06 = param2;
}

static void ov69_0225E51C(UnkStruct_ov69_0225E478 *param0, s16 param1, s16 param2)
{
    if (param1 < 0) {
        param1 = 0;
    }

    if (param2 < 0) {
        param2 = 0;
    }

    param0->unk_02 = 1;
    param0->unk_08 = param1;
    param0->unk_0A = param2;
}

static void ov69_0225E534(SysTask *param0, void *param1)
{
    UnkStruct_ov69_0225E478 *v0 = param1;

    if (v0->unk_00) {
        G2S_SetWnd0Position(0, v0->unk_04, 255, v0->unk_06);
        v0->unk_00 = 0;
    }

    if (v0->unk_02) {
        G2S_SetWnd1Position(0, v0->unk_08, 255, v0->unk_0A);
        v0->unk_02 = 0;
    }
}

static void ov69_0225E590(UnkStruct_ov69_0225E084 *param0, UnkStruct_ov69_0225D35C *param1, u32 param2)
{
    int v0;
    int v1;

    v1 = ((10 + (18 + 12)) + (27 * 4));

    for (v0 = 0; v0 < 3; v0++) {
        BGL_AddWindow(param1->unk_00, &param0->unk_168[v0], 5, 0, 0 + (6 * v0), 27, 6, 14, v1);

        v1 += (27 * 6);

        BGL_FillWindow(&param0->unk_168[v0], 0);
        sub_0201A954(&param0->unk_168[v0]);
    }

    BGL_AddWindow(param1->unk_00, &param0->unk_198, 5, 0, 0, 27, 6, 14, ((10 + (18 + 12)) + (27 * 4)));
    BGL_FillWindow(&param0->unk_198, 0);
}

static void ov69_0225E61C(UnkStruct_ov69_0225E084 *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        BGL_DeleteWindow(&param0->unk_168[v0]);
    }

    BGL_DeleteWindow(&param0->unk_198);
}

static void ov69_0225E644(UnkStruct_ov69_0225E084 *param0, u32 param1, const UnkStruct_ov69_0225E0C0 *param2, UnkStruct_ov69_0225EF54 *param3)
{
    Strbuf *v0;
    Window *v1;
    u32 v2;

    GF_ASSERT(param1 < 3);

    v1 = &param0->unk_168[param1];
    BGL_FillWindow(v1, 0);
    v2 = ov69_0225EEEC(param2->unk_00);

    {
        v0 = ov69_0225EF74(param3, 2);
        Text_AddPrinterWithParamsAndColor(v1, FONT_MESSAGE, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, Unk_ov69_0225F088[v2], NULL);
    }

    {
        v0 = ov69_0225EF90(param3, param2->unk_04);
        Text_AddPrinterWithParamsAndColor(v1, FONT_MESSAGE, v0, 0, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }

    {
        v0 = ov69_0225EFB8(param3, param2->unk_04, param2->unk_08);
        Text_AddPrinterWithParamsAndColor(v1, FONT_MESSAGE, v0, 0, 32, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }
}

static u8 *ov69_0225E6E8(UnkStruct_ov69_0225E084 *param0, u32 param1, u32 param2)
{
    u8 *v0;

    GF_ASSERT(param1 < 3);
    v0 = param0->unk_168[param1].unk_0C;

    return &v0[((27 * param2) * 32)];
}

static u8 *ov69_0225E70C(UnkStruct_ov69_0225E084 *param0, u32 param1)
{
    u8 *v0;

    v0 = param0->unk_198.unk_0C;
    return &v0[((27 * param1) * 32)];
}

static void ov69_0225E71C(UnkStruct_ov69_0225E084 *param0, u32 param1, u32 param2, const u8 *param3)
{
    u16 v0;

    v0 = sub_0201C2A4(&param0->unk_168[param1]);
    v0 += (27 * param2);

    sub_0201DC68(NNS_GFD_DST_2D_BG1_CHAR_SUB, v0 * 32, (void *)param3, 27 * 32);
}

static void ov69_0225E748(UnkStruct_ov69_0225E7DC *param0, UnkStruct_ov69_0225D35C *param1, const UnkStruct_ov69_0225F118 *param2, u16 param3, u32 param4)
{
    int v0;

    memset(param0, 0, sizeof(UnkStruct_ov69_0225E7DC));
    param0->unk_02 = param3;

    if (param2->unk_04 > 0) {
        param0->unk_18 = param2->unk_04;

        for (v0 = 0; v0 < param0->unk_18; v0++) {
            param0->unk_08[v0] = sub_020071D0(
                param1->unk_1A8, param2->unk_00[v0], 0, &param0->unk_10[v0], param4);
        }
    }

    if (param2->unk_08 > 0) {
        param0->unk_24 = param2->unk_08;
        param0->unk_26 = param2->unk_0A;
        param0->unk_1C = sub_020071EC(param1->unk_1A8, param2->unk_06, &param0->unk_20, param4);
    }
}

static void ov69_0225E7DC(UnkStruct_ov69_0225E7DC *param0)
{
    int v0;

    if (param0->unk_18 > 0) {
        for (v0 = 0; v0 < param0->unk_18; v0++) {
            Heap_FreeToHeap(param0->unk_08[v0]);
        }
    }

    if (param0->unk_24 > 0) {
        Heap_FreeToHeap(param0->unk_1C);
    }
}

static void ov69_0225E810(UnkStruct_ov69_0225E7DC *param0, UnkStruct_ov69_0225D35C *param1)
{
    int v0;
    u32 v1, v2;

    v2 = (param0->unk_00 * param0->unk_18) / param0->unk_02;
    v1 = (param0->unk_00 * param0->unk_24) / param0->unk_02;

    param0->unk_00 = (param0->unk_00 + 1) % param0->unk_02;

    if ((param0->unk_18 > 0) && (v2 != param0->unk_1A)) {
        param0->unk_1A = v2;

        for (v0 = 0; v0 < 3; v0++) {
            if (param0->unk_04[v0] == 1) {
                sub_020198E8(param1->unk_00, 6, 0, 0 + (6 * v0), 32, 6, param0->unk_10[param0->unk_1A]->rawData, 0, 0 + (6 * v0), param0->unk_10[param0->unk_1A]->screenWidth / 8, param0->unk_10[param0->unk_1A]->screenHeight / 8);
                sub_0201C3C0(param1->unk_00, 6);
            }
        }
    }

    if ((param0->unk_24 > 0) && (v1 != param0->unk_25)) {
        BOOL v3;
        u8 *v4;

        param0->unk_25 = v1;

        v4 = (u8 *)param0->unk_20->pRawData;
        v3 = sub_0201DC68(NNS_GFD_DST_2D_BG_PLTT_SUB, param0->unk_26 * 32, &v4[param0->unk_25 * 32], 32);
        GF_ASSERT(v3);
    }
}

static void ov69_0225E8EC(UnkStruct_ov69_0225E7DC *param0, u32 param1, BOOL param2)
{
    GF_ASSERT(param1 < 3);
    param0->unk_04[param1] = param2;
}

static void ov69_0225E904(UnkStruct_ov69_0225E7DC *param0)
{
    memset(param0->unk_04, 0, sizeof(u8) * 4);
}

static void ov69_0225E910(UnkStruct_ov69_0225E7DC *param0, u32 param1, UnkStruct_ov69_0225D35C *param2)
{
    if (param0->unk_18 > 0) {
        sub_020198E8(param2->unk_00, 6, 0, 0 + param1, 32, 1, param0->unk_10[param0->unk_1A]->rawData, 0, 0 + param1, param0->unk_10[param0->unk_1A]->screenWidth / 8, param0->unk_10[param0->unk_1A]->screenHeight / 8);
        sub_0201C3C0(param2->unk_00, 6);
    }
}

static void ov69_0225E960(UnkStruct_ov69_0225EB60 *param0, UnkStruct_ov69_0225D35C *param1, UnkStruct_ov69_0225E478 *param2, u32 param3)
{
    int v0;
    CellActorResourceData v1;
    BOOL v2;
    CellActorInitParams v3 = { NULL };

    memset(param0, 0, sizeof(UnkStruct_ov69_0225EB60));

    param0->unk_30 = 2;
    param0->unk_32 = 128;

    v3.collection = param1->unk_04;
    v3.resourceData = &v1;
    v3.priority = 64;
    v3.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    v3.heapID = param3;

    param0->unk_6C[0][1] = SpriteResourceCollection_AddPaletteFrom(param1->unk_194[1], param1->unk_1A8, 20, 0, 0, NNS_G2D_VRAM_TYPE_2DSUB, 12, param3);
    v2 = sub_0200A640(param0->unk_6C[0][1]);
    GF_ASSERT(v2);
    SpriteResource_ReleaseData(param0->unk_6C[0][1]);

    for (v0 = 0; v0 < 12; v0++) {
        param0->unk_6C[v0][0] = SpriteResourceCollection_AddTilesFrom(param1->unk_194[0], param1->unk_1A8, (21 + ((v0) * 3)), 0, v0, NNS_G2D_VRAM_TYPE_2DSUB, param3);
        param0->unk_6C[v0][2] = SpriteResourceCollection_AddFrom(param1->unk_194[2], param1->unk_1A8, (22 + ((v0) * 3)), 0, v0, 2, param3);
        param0->unk_6C[v0][3] = SpriteResourceCollection_AddFrom(param1->unk_194[3], param1->unk_1A8, (23 + ((v0) * 3)), 0, v0, 3, param3);

        v2 = sub_0200A3DC(param0->unk_6C[v0][0]);
        GF_ASSERT(v2);

        SpriteResource_ReleaseData(param0->unk_6C[v0][0]);
        sub_020093B4(&v1, v0, 0, v0, v0, 0xffffffff, 0xffffffff, 0, 1, param1->unk_194[0], param1->unk_194[1], param1->unk_194[2], param1->unk_194[3], NULL, NULL);

        param0->unk_3C[v0] = CellActorCollection_Add(&v3);

        CellActor_SetAnimateFlag(param0->unk_3C[v0], 1);
        CellActor_SetAnimSpeed(param0->unk_3C[v0], FX32_ONE);
    }

    ov69_0225EBEC(param0);
    ov69_0225E51C(param2, 0, 0);
}

static void ov69_0225EAE8(UnkStruct_ov69_0225EB60 *param0, UnkStruct_ov69_0225D35C *param1)
{
    int v0, v1;

    sub_020057A4(1473, 0);

    for (v0 = 0; v0 < 12; v0++) {
        CellActor_Delete(param0->unk_3C[v0]);
        sub_0200A4E4(param0->unk_6C[v0][0]);

        if (v0 == 0) {
            sub_0200A6DC(param0->unk_6C[v0][1]);
            SpriteResourceCollection_Remove(param1->unk_194[1], param0->unk_6C[v0][1]);
        }

        for (v1 = 0; v1 < 4; v1++) {
            if (v1 != 1) {
                SpriteResourceCollection_Remove(param1->unk_194[v1], param0->unk_6C[v0][v1]);
            }
        }
    }
}

static void ov69_0225EB60(UnkStruct_ov69_0225EB60 *param0)
{
    memset(param0->unk_34, 0, sizeof(u8) * 4);
    memset(param0->unk_38, 0, sizeof(u8) * 4);

    param0->unk_30 = 2;
    param0->unk_32 = 128;
}

static void ov69_0225EB8C(UnkStruct_ov69_0225EB60 *param0, u8 param1, u8 param2, u8 param3)
{
    int v0;

    param0->unk_34[param1] = 1;
    param0->unk_38[param1] = ov69_0225EF04(param2);

    ov69_0225ECF0(&param0->unk_00[param1], &Unk_ov69_0225F1E0[param0->unk_38[param1]][param1]);

    if (param3 < 24) {
        v0 = ov69_0225EF04(param3);

        if (v0 == param0->unk_38[param1]) {
            if (param1 < 2) {
                ov69_0225ED10(&param0->unk_00[param1 + 1], 1);
                ov69_0225ED0C(&param0->unk_00[param1], 1);
            }
        }
    }
}

static void ov69_0225EBEC(UnkStruct_ov69_0225EB60 *param0)
{
    int v0;

    for (v0 = 0; v0 < 12; v0++) {
        CellActor_SetDrawFlag(param0->unk_3C[v0], 0);
    }
}

static void ov69_0225EC08(UnkStruct_ov69_0225EB60 *param0, UnkStruct_ov69_0225E478 *param1)
{
    BOOL v0;

    if (param0->unk_32 > 0) {
        param0->unk_32--;

        if (param0->unk_32 == 0) {
            v0 = ov69_0225EC70(param0, param0->unk_30, param1);

            if (v0 == 1) {
                Sound_PlayEffect(1473);
            }
        }

        return;
    }

    v0 = ov69_0225ECAC(param0, param0->unk_30, param1);

    if (v0 == 1) {
        if ((param0->unk_30 - 1) >= 0) {
            param0->unk_30--;
            ov69_0225EC70(param0, param0->unk_30, param1);
        } else {
            sub_020057A4(1473, 0);
            param0->unk_30 = 2;
            param0->unk_32 = 128;
        }
    }
}

static BOOL ov69_0225EC70(UnkStruct_ov69_0225EB60 *param0, u32 param1, UnkStruct_ov69_0225E478 *param2)
{
    if (param0->unk_34[param1] == 0) {
        return 0;
    }

    ov69_0225ED5C(&param0->unk_00[param1], param2);
    CellActor_SetDrawFlag(param0->unk_3C[param0->unk_38[param1]], 1);
    ov69_0225EEC4(param0, param1);

    return 1;
}

static BOOL ov69_0225ECAC(UnkStruct_ov69_0225EB60 *param0, u32 param1, UnkStruct_ov69_0225E478 *param2)
{
    BOOL v0;

    if (param0->unk_34[param1] == 0) {
        return 1;
    }

    v0 = ov69_0225ED14(&param0->unk_00[param1], param2);
    ov69_0225EEC4(param0, param1);

    if (v0 == 1) {
        CellActor_SetDrawFlag(param0->unk_3C[param0->unk_38[param1]], 0);
    }

    return v0;
}

static void ov69_0225ECF0(UnkStruct_ov69_0225ED90 *param0, const UnkStruct_ov69_0225ECF0 *param1)
{
    param0->unk_0C = param1;
    param0->unk_00 = param1->unk_00;
    param0->unk_02 = param1->unk_02 + 16;
    param0->unk_04 = 0;
    param0->unk_06 = 0;
    param0->unk_08 = 0;
    param0->unk_0A = 0;
}

static void ov69_0225ED0C(UnkStruct_ov69_0225ED90 *param0, BOOL param1)
{
    param0->unk_08 = param1;
}

static void ov69_0225ED10(UnkStruct_ov69_0225ED90 *param0, BOOL param1)
{
    param0->unk_0A = param1;
}

static BOOL ov69_0225ED14(UnkStruct_ov69_0225ED90 *param0, UnkStruct_ov69_0225E478 *param1)
{
    if (param0->unk_04 > param0->unk_0C->unk_08) {
        return 1;
    }

    ov69_0225ED90(param0);
    param0->unk_04++;

    if ((param0->unk_06 + 1) > param0->unk_0C->unk_0C) {
        param0->unk_06 = 0;
    } else {
        param0->unk_06++;
    }

    ov69_0225EE68(param0, param1);

    return 0;
}

static void ov69_0225ED5C(UnkStruct_ov69_0225ED90 *param0, UnkStruct_ov69_0225E478 *param1)
{
    param0->unk_04 = 0;
    param0->unk_06 = 0;

    ov69_0225ED90(param0);
    ov69_0225EE68(param0, param1);
}

static void ov69_0225ED78(const UnkStruct_ov69_0225ED90 *param0, VecFx32 *param1)
{
    param1->x = param0->unk_00 << FX32_SHIFT;
    param1->y = (param0->unk_02 << FX32_SHIFT) + (FX32_CONST(256));
}

static void ov69_0225ED90(UnkStruct_ov69_0225ED90 *param0)
{
    u16 v0;
    s16 v1, v2;

    if (param0->unk_0A == 0) {
        v2 = param0->unk_0C->unk_06 - 16;
    } else {
        v2 = param0->unk_0C->unk_06;
    }

    if (param0->unk_08 == 0) {
        v1 = param0->unk_0C->unk_02 + 16;
    } else {
        v1 = param0->unk_0C->unk_02;
    }

    param0->unk_00 = param0->unk_0C->unk_00 + (((param0->unk_0C->unk_04 - param0->unk_0C->unk_00) * param0->unk_04) / param0->unk_0C->unk_08);
    param0->unk_02 = v1 + (((v2 - v1) * param0->unk_04) / param0->unk_0C->unk_08);

    v0 = (param0->unk_06 * 0xffff) / param0->unk_0C->unk_0C;
    param0->unk_00 += FX_Mul(FX32_CONST(param0->unk_0C->unk_0A), FX_SinIdx(v0)) >> FX32_SHIFT;
}

static void ov69_0225EE68(const UnkStruct_ov69_0225ED90 *param0, UnkStruct_ov69_0225E478 *param1)
{
    ov69_0225E504(param1, 0, 0);

    if (param0->unk_08 == 0) {
        if (param0->unk_02 > (param0->unk_0C->unk_02 - 16)) {
            ov69_0225E504(param1, param0->unk_0C->unk_02, param0->unk_0C->unk_02 + 32);
        }
    }

    if (param0->unk_0A == 0) {
        if ((param0->unk_02 - 16) <= param0->unk_0C->unk_06) {
            ov69_0225E504(param1, param0->unk_0C->unk_06 - 32, param0->unk_0C->unk_06);
        }
    }
}

static void ov69_0225EEC4(UnkStruct_ov69_0225EB60 *param0, u32 param1)
{
    VecFx32 v0;
    CellActor *v1;

    ov69_0225ED78(&param0->unk_00[param1], &v0);

    v1 = param0->unk_3C[param0->unk_38[param1]];
    CellActor_SetPosition(v1, &v0);
}

static u16 ov69_0225EEEC(u32 param0)
{
    GF_ASSERT(param0 < 24);
    return Unk_ov69_0225F0E8[param0].unk_00;
}

static u16 ov69_0225EF04(u32 param0)
{
    GF_ASSERT(param0 < 24);
    return Unk_ov69_0225F0E8[param0].unk_01;
}

static void ov69_0225EF1C(UnkStruct_ov69_0225EF54 *param0, u32 param1)
{
    {
        param0->unk_00 = MessageLoader_Init(0, 26, 696, param1);
    }

    {
        param0->unk_04 = StringTemplate_New(8, 64, param1);
    }

    param0->unk_08 = Strbuf_Init(128, param1);
    param0->unk_0C = Strbuf_Init(128, param1);
}

static void ov69_0225EF54(UnkStruct_ov69_0225EF54 *param0)
{
    {
        MessageLoader_Free(param0->unk_00);
    }

    {
        StringTemplate_Free(param0->unk_04);
    }

    Strbuf_Free(param0->unk_08);
    Strbuf_Free(param0->unk_0C);
}

static Strbuf *ov69_0225EF74(UnkStruct_ov69_0225EF54 *param0, u32 param1)
{
    MessageLoader_GetStrbuf(param0->unk_00, param1, param0->unk_08);
    return param0->unk_08;
}

static void ov69_0225EF84(UnkStruct_ov69_0225EF54 *param0, u32 param1, Strbuf *param2)
{
    MessageLoader_GetStrbuf(param0->unk_00, param1, param2);
}

static Strbuf *ov69_0225EF90(UnkStruct_ov69_0225EF54 *param0, u32 param1)
{
    MessageLoader_GetStrbuf(param0->unk_00, 3, param0->unk_0C);
    StringTemplate_SetCountryName(param0->unk_04, 0, param1);
    StringTemplate_Format(param0->unk_04, param0->unk_08, param0->unk_0C);

    return param0->unk_08;
}

static Strbuf *ov69_0225EFB8(UnkStruct_ov69_0225EF54 *param0, u32 param1, u32 param2)
{
    StringTemplate_ClearArgs(param0->unk_04);
    MessageLoader_GetStrbuf(param0->unk_00, 3, param0->unk_0C);
    StringTemplate_SetCityName(param0->unk_04, 0, param1, param2);
    StringTemplate_Format(param0->unk_04, param0->unk_08, param0->unk_0C);

    return param0->unk_08;
}

static u32 ov69_0225EFEC(const UnkStruct_ov66_02231560 *param0)
{
    int v0;
    u8 v1;

    for (v0 = 0; v0 < 50; v0++) {
        v1 = ov66_0223164C(param0, v0);

        if (v1 == 1) {
            return v0;
        }
    }

    return 50;
}
