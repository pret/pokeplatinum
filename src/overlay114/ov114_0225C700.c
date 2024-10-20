#include "overlay114/ov114_0225C700.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02015920_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0202B370_decl.h"
#include "struct_defs/struct_0200C738.h"
#include "struct_defs/struct_02015958.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay004/ov4_021D0D80.h"
#include "overlay022/struct_ov22_022559F8.h"
#include "overlay066/ov66_0222DDF0.h"
#include "overlay066/struct_ov66_02230DBC.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay114/ov114_02260044.h"
#include "overlay114/struct_ov114_0225C76C.h"
#include "overlay114/struct_ov114_0225C9A8.h"

#include "buffer_manager.h"
#include "cell_actor.h"
#include "communication_information.h"
#include "communication_system.h"
#include "core_sys.h"
#include "enums.h"
#include "font.h"
#include "game_options.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "save_player.h"
#include "savedata.h"
#include "sprite_resource.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_020041CC.h"
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
#include "unk_0202ACE0.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_0203909C.h"
#include "unk_020393C8.h"
#include "unk_02094EDC.h"

typedef struct {
    fx32 unk_00;
    fx32 unk_04;
    fx32 unk_08;
    fx32 unk_0C;
    int unk_10;
} UnkStruct_ov114_0225CBF0;

typedef struct {
    BOOL unk_00;
    SpriteResource *unk_04[4];
    CellActorResourceData unk_14;
} UnkStruct_ov114_0225CDB4;

typedef struct {
    SpriteResourceCollection *unk_00[4];
    UnkStruct_ov114_0225CDB4 *unk_10;
    u32 unk_14;
} UnkStruct_ov114_0225CCD0;

typedef struct {
    CellActorCollection *unk_00;
    UnkStruct_0200C738 unk_04;
} UnkStruct_ov114_0225CFCC;

typedef struct {
    u32 unk_00;
    UnkStruct_ov97_0222DB78 unk_04;
} UnkStruct_ov114_02260284;

typedef struct {
    BGL *unk_00;
    const UnkStruct_ov114_02260284 *unk_04;
    u32 unk_08;
} UnkStruct_ov114_0225CEF0;

typedef struct {
    MessageLoader *unk_00;
    StringTemplate *unk_04;
    Strbuf *unk_08;
    Strbuf *unk_0C;
} UnkStruct_ov114_0225D084;

typedef struct {
    Window unk_00[2];
    u16 unk_20[2];
    Strbuf *unk_24[2];
    void *unk_2C[2];
    BOOL unk_34;
} UnkStruct_ov114_0225D338;

typedef struct {
    u8 unk_00[4];
    u8 unk_04[4];
    u8 unk_08[4];
} UnkStruct_ov114_02260204;

typedef struct {
    Window unk_00;
    CellActor *unk_10;
    CellActor *unk_14;
    u16 unk_18;
    u8 unk_1A;
    u8 unk_1B;
    UnkStruct_ov114_0225CBF0 unk_1C;
    s16 unk_30;
    s16 unk_32;
    s32 unk_34;
} UnkStruct_ov114_0225DAC0;

typedef struct {
    u8 unk_00[4];
    u8 unk_04[4];
    const TrainerInfo *unk_08[4];
} UnkStruct_ov114_0225E0F8;

typedef struct {
    Window unk_00;
    u32 unk_10;
    Strbuf *unk_14;
    UnkStruct_ov114_0225CBF0 unk_18;
    s16 unk_2C;
    s16 unk_2E;
} UnkStruct_ov114_0225E1A4;

typedef struct {
    UnkStruct_ov114_0225CEF0 *unk_00;
    s16 unk_04[2][192];
    BufferManager *bufferManager;
} UnkStruct_ov114_0225DFFC;

typedef struct UnkStruct_ov114_0225D678_t {
    u8 unk_00;
    u8 unk_01;
    u16 unk_02;
    u16 unk_04;
    u8 unk_06;
    u8 unk_07;
    UnkStruct_ov114_0225C76C unk_08;
    UnkStruct_ov114_0225E0F8 unk_18;
    UnkStruct_ov114_0225CEF0 unk_30;
    UnkStruct_ov114_0225D084 unk_3C;
    UnkStruct_ov114_0225D338 unk_4C;
    UnkStruct_ov114_0225CFCC unk_84;
    UnkStruct_ov114_0225CCD0 unk_214;
    UnkStruct_ov114_0225CDB4 *unk_22C;
    UnkStruct_ov114_0225E1A4 unk_230;
    void *unk_260;
    NNSG2dScreenData *unk_264;
    UnkStruct_ov114_0225DAC0 unk_268[4];
    UnkStruct_ov114_0225DFFC unk_348;
    SysTask *unk_650;
    SysTask *unk_654;
} UnkStruct_ov114_0225D678;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u16 unk_02;
    UnkStruct_02015920 *unk_04;
    UnkStruct_02015958 unk_08;
    u8 unk_1C;
    u8 unk_1D;
    u8 unk_1E;
    u8 unk_1F;
} UnkStruct_ov114_0225F270;

typedef struct {
    void *unk_00;
    NNSG2dScreenData *unk_04;
    CellActor *unk_08[15];
    UnkStruct_ov114_0225CDB4 *unk_44;
    u8 unk_48;
    u8 unk_49;
    u8 unk_4A;
    u8 unk_4B;
} UnkStruct_ov114_0225F578;

typedef struct UnkStruct_ov114_0225E854_t {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A[2];
    UnkStruct_ov114_0225C76C unk_0C;
    UnkStruct_ov114_0225C9A8 unk_1C;
    UnkStruct_ov114_0225E0F8 unk_34;
    UnkStruct_ov114_0225CEF0 unk_4C;
    UnkStruct_ov114_0225D084 unk_58;
    UnkStruct_ov114_0225D338 unk_68;
    UnkStruct_ov114_0225CFCC unk_A0;
    UnkStruct_ov114_0225CCD0 unk_230;
    UnkStruct_ov114_0225CDB4 *unk_248;
    UnkStruct_ov114_0225F270 unk_24C;
    UnkStruct_ov114_0225F578 unk_26C;
    void *unk_2B8[1];
    NNSG2dScreenData *unk_2BC[1];
    UnkStruct_ov114_0225DAC0 unk_2C0[4];
    UnkStruct_ov114_0225DFFC unk_3A0;
    SysTask *unk_6A8;
    SysTask *unk_6AC;
    u32 unk_6B0;
    u16 unk_6B4;
    u16 unk_6B6;
    void *unk_6B8;
    NNSG2dPaletteData *unk_6BC;
    u16 unk_6C0;
    u16 unk_6C2;
    BOOL unk_6C4;
} UnkStruct_ov114_0225E854;

typedef struct {
    CellActor *unk_00[2];
    s16 unk_08;
    s16 unk_0A;
    u8 unk_0C[2][192];
    SysTask *unk_18C;
    GXWndPlane unk_190;
    GXWndPlane battlerType;
    int unk_194;
} UnkStruct_ov114_0225FAB8;

typedef struct UnkStruct_ov114_02025CAD4_t {
    u32 unk_00;
    u16 unk_04;
    s16 unk_06;
    CellActorCollection *unk_08;
    NARC *unk_0C;
    UnkStruct_ov114_0225CCD0 unk_10;
    UnkStruct_ov114_0225CDB4 *unk_28;
    SysTask *unk_2C;
    CellActor *unk_30;
    UnkStruct_ov114_0225FAB8 unk_34;
} UnkStruct_ov114_0225CAD4;

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_ov114_02260234;

static void ov114_0225CBF0(UnkStruct_ov114_0225CBF0 *param0, fx32 param1, fx32 param2, fx32 param3, int param4);
static BOOL ov114_0225CC4C(UnkStruct_ov114_0225CBF0 *param0, s32 param1);
static void ov114_0225CCB0(NNSG2dScreenData *param0, u32 param1);
static void ov114_0225CCD0(UnkStruct_ov114_0225CCD0 *param0, u32 param1, u32 param2);
static void ov114_0225CD10(UnkStruct_ov114_0225CCD0 *param0);
static UnkStruct_ov114_0225CDB4 *ov114_0225CD54(UnkStruct_ov114_0225CCD0 *param0, NARC *param1, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8);
static CellActor *ov114_0225CDB4(UnkStruct_ov114_0225CDB4 *param0, CellActorCollection *param1, s16 param2, s16 param3, u16 param4, u32 param5);
static void ov114_0225CDE0(UnkStruct_ov114_0225CCD0 *param0, UnkStruct_ov114_0225CDB4 *param1, NARC *param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8, u32 param9);
static void ov114_0225CEB8(UnkStruct_ov114_0225CCD0 *param0, UnkStruct_ov114_0225CDB4 *param1);
static void ov114_0225CEF0(UnkStruct_ov114_0225CEF0 *param0, const UnkStruct_ov84_0223BA5C *param1, const UnkStruct_ov114_02260284 *param2, u32 param3, u32 param4);
static void ov114_0225CF84(UnkStruct_ov114_0225CEF0 *param0);
static void ov114_0225CFC0(UnkStruct_ov114_0225CEF0 *param0);
static void ov114_0225CFCC(UnkStruct_ov114_0225CFCC *param0, u32 param1, u32 param2, u32 param3, u32 param4);
static void ov114_0225D058(UnkStruct_ov114_0225CFCC *param0);
static void ov114_0225D070(UnkStruct_ov114_0225CFCC *param0);
static void ov114_0225D07C(UnkStruct_ov114_0225CFCC *param0);
static void ov114_0225D084(UnkStruct_ov114_0225D084 *param0, u32 param1);
static void ov114_0225D0D8(UnkStruct_ov114_0225D084 *param0);
static void ov114_0225D0F8(UnkStruct_ov114_0225D084 *param0);
static void ov114_0225D104(UnkStruct_ov114_0225D084 *param0, const TrainerInfo *param1);
static void ov114_0225D114(UnkStruct_ov114_0225D084 *param0, u32 param1);
static void ov114_0225D124(UnkStruct_ov114_0225D084 *param0, u32 param1, u32 param2);
static void ov114_0225D138(UnkStruct_ov114_0225D084 *param0, u32 param1, u32 param2);
static void ov114_0225D154(UnkStruct_ov114_0225D084 *param0, u32 param1);
static void ov114_0225D170(UnkStruct_ov114_0225D084 *param0, u32 param1);
static void ov114_0225D180(UnkStruct_ov114_0225D084 *param0, u32 param1);
static void ov114_0225D190(UnkStruct_ov114_0225D084 *param0, Strbuf *param1, u32 param2);
static void ov114_0225D1AC(UnkStruct_ov114_0225D084 *param0, u32 param1, Window *param2, u8 param3, u8 param4);
static void ov114_0225D1C8(UnkStruct_ov114_0225D084 *param0, u32 param1, Window *param2, u8 param3, u8 param4);
static u32 ov114_0225D218(UnkStruct_ov114_0225D084 *param0, u32 param1, Window *param2, Strbuf *param3, u32 param4);
static void ov114_0225D254(UnkStruct_ov114_0225D084 *param0, u32 param1, Window *param2, u8 param3, u8 param4, TextColor param5);
static void ov114_0225D290(UnkStruct_ov114_0225D338 *param0, UnkStruct_ov114_0225CEF0 *param1, SaveData *param2, BOOL param3, u32 param4);
static void ov114_0225D338(UnkStruct_ov114_0225D338 *param0);
static void ov114_0225D368(UnkStruct_ov114_0225D338 *param0, UnkStruct_ov114_0225D084 *param1, u32 param2, u32 param3);
static void ov114_0225D400(UnkStruct_ov114_0225D338 *param0, u32 param1);
static BOOL ov114_0225D43C(const UnkStruct_ov114_0225D338 *param0, u32 param1);
static void ov114_0225D458(UnkStruct_ov114_0225D338 *param0, u32 param1);
static void ov114_0225D474(UnkStruct_ov114_0225D338 *param0, u32 param1);
static void ov114_0225DAC0(UnkStruct_ov114_0225DAC0 *param0, u32 param1, u32 param2, NNSG2dScreenData *param3, UnkStruct_ov114_0225CEF0 *param4, u32 param5, u32 param6, UnkStruct_ov114_0225CFCC *param7, UnkStruct_ov114_0225CDB4 *param8, u32 param9);
static void ov114_0225DC44(UnkStruct_ov114_0225DAC0 *param0, UnkStruct_ov114_0225D084 *param1, const TrainerInfo *param2, s16 param3, s16 param4, u32 param5);
static void ov114_0225DCA0(UnkStruct_ov114_0225DAC0 *param0, UnkStruct_ov114_0225D084 *param1, BOOL param2, u32 param3, u32 param4, s16 param5);
static void ov114_0225DD0C(UnkStruct_ov114_0225DAC0 *param0, u32 param1);
static void ov114_0225DD2C(UnkStruct_ov114_0225DAC0 *param0, UnkStruct_ov114_0225D084 *param1, u32 param2, s16 param3, s16 param4, u32 param5);
static void ov114_0225DD80(UnkStruct_ov114_0225DAC0 *param0, UnkStruct_ov114_0225CEF0 *param1);
static void ov114_0225DD94(UnkStruct_ov114_0225DAC0 *param0);
static void ov114_0225DDA0(UnkStruct_ov114_0225DAC0 *param0);
static void ov114_0225DDD4(UnkStruct_ov114_0225DAC0 *param0, s16 param1, s16 param2);
static void ov114_0225DE38(UnkStruct_ov114_0225DAC0 *param0, s16 param1);
static BOOL ov114_0225DE70(UnkStruct_ov114_0225DAC0 *param0);
static void ov114_0225DEBC(UnkStruct_ov114_0225DAC0 *param0, s32 param1);
static u32 ov114_0225DF44(u32 param0, u32 param1, u32 param2);
static void ov114_0225DF7C(UnkStruct_ov114_0225DFFC *param0, UnkStruct_ov114_0225CEF0 *param1, u32 param2);
static void ov114_0225DFFC(UnkStruct_ov114_0225DFFC *param0);
static void ov114_0225E028(UnkStruct_ov114_0225DFFC *param0, const UnkStruct_ov114_0225DAC0 *param1);
static void ov114_0225E08C(UnkStruct_ov114_0225DFFC *param0);
static void ov114_0225E0AC(void *param0);
static void ov114_0225E0F8(UnkStruct_ov114_0225E0F8 *param0, const UnkStruct_ov114_0225C76C *param1);
static BOOL ov114_0225E14C(const UnkStruct_ov114_0225C76C *param0, const UnkStruct_ov114_0225E0F8 *param1);
u32 ov114_0225E180(u32 param0);
static void ov114_0225E1A4(UnkStruct_ov114_0225E1A4 *param0, UnkStruct_ov114_0225CEF0 *param1, UnkStruct_ov114_0225D084 *param2, u32 param3, NARC *param4, u32 param5);
static void ov114_0225E234(UnkStruct_ov114_0225E1A4 *param0);
static void ov114_0225E244(UnkStruct_ov114_0225E1A4 *param0, UnkStruct_ov114_0225CEF0 *param1, u32 param2);
static void ov114_0225E2D4(UnkStruct_ov114_0225E1A4 *param0, UnkStruct_ov114_0225CEF0 *param1);
static BOOL ov114_0225E31C(UnkStruct_ov114_0225E1A4 *param0, UnkStruct_ov114_0225CEF0 *param1);
static BOOL ov114_0225E438(UnkStruct_ov114_0225E1A4 *param0, UnkStruct_ov114_0225CEF0 *param1);
static void ov114_0225E4B0(UnkStruct_ov114_0225E1A4 *param0, UnkStruct_ov114_0225CEF0 *param1, s32 param2);
static void ov114_0225E500(UnkStruct_ov114_0225E1A4 *param0, UnkStruct_ov114_0225CEF0 *param1, s32 param2);
static void ov114_0225E550(NARC *param0, u32 param1, u32 param2);
static UnkStruct_ov114_0225D678 *ov114_0225D48C(const UnkStruct_ov114_0225C76C *param0, u32 param1, u32 param2);
static void ov114_0225D5BC(UnkStruct_ov114_0225D678 *param0, u32 param1);
static void ov114_0225D678(UnkStruct_ov114_0225D678 *param0);
static void ov114_0225D688(SysTask *param0, void *param1);
static void ov114_0225DA0C(SysTask *param0, void *param1);
static int ov114_0225DA2C(const u8 *param0, u32 param1);
static BOOL ov114_0225DA5C(UnkStruct_ov114_0225D678 *param0);
static UnkStruct_ov114_0225E854 *ov114_0225E5A8(const UnkStruct_ov114_0225C76C *param0, const UnkStruct_ov114_0225C9A8 *param1, u32 param2, u32 param3);
static void ov114_0225E744(UnkStruct_ov114_0225E854 *param0, u32 param1);
static void ov114_0225E854(UnkStruct_ov114_0225E854 *param0);
static void ov114_0225E874(SysTask *param0, void *param1);
static void ov114_0225ED40(SysTask *param0, void *param1);
static void ov114_0225F124(SysTask *param0, void *param1);
static void ov114_0225F148(UnkStruct_ov114_0225E854 *param0, NARC *param1, u32 param2);
static void ov114_0225F168(UnkStruct_ov114_0225E854 *param0);
static void ov114_0225F19C(UnkStruct_ov114_0225E854 *param0);
static void ov114_0225F224(UnkStruct_ov114_0225E854 *param0);
static void ov114_0225F234(UnkStruct_ov114_0225F270 *param0, UnkStruct_ov114_0225CEF0 *param1, u32 param2, u32 param3);
static void ov114_0225F270(UnkStruct_ov114_0225F270 *param0);
static BOOL ov114_0225F27C(UnkStruct_ov114_0225F270 *param0, UnkStruct_ov114_0225D338 *param1, UnkStruct_ov114_0225D084 *param2, u32 param3, u32 param4);
static BOOL ov114_0225F420(const UnkStruct_ov114_0225F270 *param0);
static void ov114_0225F424(UnkStruct_ov114_0225F270 *param0, u32 param1, BOOL param2, u32 param3);
static void ov114_0225F47C(UnkStruct_ov114_0225F270 *param0, BOOL param1);
static void ov114_0225F484(UnkStruct_ov114_0225F578 *param0, UnkStruct_ov114_0225CEF0 *param1, UnkStruct_ov114_0225CFCC *param2, UnkStruct_ov114_0225CCD0 *param3, NARC *param4, u32 param5);
static void ov114_0225F578(UnkStruct_ov114_0225F578 *param0);
static void ov114_0225F598(UnkStruct_ov114_0225F578 *param0, u32 param1);
static BOOL ov114_0225F5AC(UnkStruct_ov114_0225F578 *param0, UnkStruct_ov114_0225CEF0 *param1);
static void ov114_0225F6E4(UnkStruct_ov114_0225E854 *param0, u32 param1, u32 param2);
static u32 ov114_0225F8FC(const UnkStruct_ov114_0225E854 *param0);
static void ov114_0225F920(UnkStruct_ov114_0225E854 *param0);
static void ov114_0225F988(UnkStruct_ov114_0225E854 *param0);
static BOOL ov114_0225F7D8(UnkStruct_ov114_0225E854 *param0);
static void ov114_0225F83C(UnkStruct_ov114_0225E854 *param0);
static BOOL ov114_0225F860(UnkStruct_ov114_0225E854 *param0);
static void ov114_0225F890(UnkStruct_ov114_0225E854 *param0);
static void ov114_0225F9B8(UnkStruct_ov114_0225FAB8 *param0, UnkStruct_ov114_0225CDB4 *param1, CellActorCollection *param2, u32 param3);
static BOOL ov114_0225FAB8(UnkStruct_ov114_0225FAB8 *param0);
static BOOL ov114_0225FAD8(UnkStruct_ov114_0225FAB8 *param0);
static void ov114_0225FB10(UnkStruct_ov114_0225FAB8 *param0, s32 param1);
static void ov114_0225FBF0(UnkStruct_ov114_0225FAB8 *param0);
static void ov114_0225FC6C(UnkStruct_ov114_0225FAB8 *param0);
static void ov114_0225FCCC(SysTask *param0, void *param1);
static void ov114_0225FCF0(void *param0);
static void ov114_0225FDC8(SysTask *param0, void *param1);
static void ov114_0225FF54(SysTask *param0, void *param1);

static const s16 Unk_ov114_0226015C[4][2] = {
    { 0x80, 0x2C },
    { 0xEC, 0x18 },
    { 0x4, 0x18 },
    { 0x80, 0x4 }
};

static const u8 Unk_ov114_022600D4[4] = {
    0x0,
    0x1,
    0x3,
    0x2
};

static const s16 Unk_ov114_022600D8[4] = {
    0x0,
    0xFFFFFFFFFFFFFFF6,
    0xFFFFFFFFFFFFFFF0,
    0xFFFFFFFFFFFFFFE8
};

static const VecFx32 Unk_ov114_0226019C[2] = {
    { FX32_CONST(128), FX32_CONST(96), 0x0 },
    { FX32_CONST(128), FX32_CONST(96 + 2), 0x0 }
};

static const TextColor Unk_ov114_022600F8[UnkEnum_ov66_022324D0_12] = {
    TEXT_COLOR(7, 8, 9),
    TEXT_COLOR(4, 5, 6),
    TEXT_COLOR(1, 2, 3),
};

static const fx32 Unk_ov114_02260140[UnkEnum_ov66_022324D0_12] = {
    -FX32_CONST(200),
    FX32_CONST(200),
    FX32_CONST(160)
};

static const fx32 Unk_ov114_02260110[UnkEnum_ov66_022324D0_12] = {
    FX32_CONST(0),
    FX32_CONST(0),
    FX32_CONST(0)
};

static const fx32 Unk_ov114_02260104[UnkEnum_ov66_022324D0_12] = {
    FX32_CONST(0),
    FX32_CONST(0),
    FX32_CONST(0)
};

static const fx32 Unk_ov114_0226011C[UnkEnum_ov66_022324D0_12] = {
    -FX32_CONST(18),
    FX32_CONST(18),
    FX32_CONST(16)
};

static const fx32 Unk_ov114_02260128[UnkEnum_ov66_022324D0_12] = {
    -FX32_CONST(9),
    FX32_CONST(9),
    FX32_CONST(8)
};

static const fx32 Unk_ov114_02260134[UnkEnum_ov66_022324D0_12] = {
    FX32_CONST(0),
    FX32_CONST(0),
    FX32_CONST(0)
};

static const fx32 Unk_ov114_022600E0[UnkEnum_ov66_022324D0_12] = {
    FX32_CONST(200),
    -FX32_CONST(200),
    -FX32_CONST(160)
};

static const fx32 Unk_ov114_022600EC[UnkEnum_ov66_022324D0_12] = {
    FX32_CONST(0),
    FX32_CONST(0),
    FX32_CONST(0)
};

static const u8 Unk_ov114_022600D0[3] = {
    0x4B,
    0xF,
    0xA
};
static const u8 Unk_ov114_022600C8[2] = {
    0x55,
    0xF
};
static const u8 Unk_ov114_022600CC[3] = {
    0x55,
    0xF,
    0x0
};

static const UnkStruct_ov22_022559F8 Unk_ov114_0226017C = {
    0x0,
    0x4000,
    0x4000,
    0x0
};

static const UnkStruct_02099F80 Unk_ov114_022601B4 = {
    GX_VRAM_BG_256_AB,
    GX_VRAM_BGEXTPLTT_NONE,
    GX_VRAM_SUB_BG_32_H,
    GX_VRAM_SUB_BGEXTPLTT_NONE,
    GX_VRAM_OBJ_16_G,
    GX_VRAM_OBJEXTPLTT_NONE,
    GX_VRAM_SUB_OBJ_16_I,
    GX_VRAM_SUB_OBJEXTPLTT_NONE,
    GX_VRAM_TEX_NONE,
    GX_VRAM_TEXPLTT_NONE
};

static const UnkStruct_ov84_0223BA5C Unk_ov114_0226018C = {
    GX_DISPMODE_GRAPHICS,
    GX_BGMODE_0,
    GX_BGMODE_0,
    GX_BG0_AS_2D
};

static const UnkStruct_ov114_02260284 Unk_ov114_02260284[5] = {
    {
        0x3,
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
            0x3,
            0x0,
            0x0,
            0x0,
        },
    },
    {
        0x1,
        {
            0x0,
            0x0,
            0x2000,
            0x0,
            0x4,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xc800,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            0x1,
            0x0,
            0x0,
            0x0,
        },
    },
    {
        0x2,
        {
            0x0,
            0x0,
            0x800,
            0x0,
            0x1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xc000,
            GX_BG_CHARBASE_0x18000,
            GX_BG_EXTPLTT_01,
            0x0,
            0x0,
            0x0,
            0x0,
        },
    },
    {
        0x0,
        {
            0x0,
            0x0,
            0x2000,
            0x0,
            0x4,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xa000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            0x2,
            0x0,
            0x0,
            0x0,
        },
    },
    {
        0x4,
        {
            0x0,
            0x0,
            0x800,
            0x0,
            0x1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x7800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            0x0,
            0x0,
            0x0,
            0x0,
        },
    },
};

static const UnkStruct_ov114_02260204 Unk_ov114_02260204[4] = {
    {
        { 0x0, 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0, 0x0 },
    },
    {
        { 0xE, 0x4, 0x0, 0x0 },
        { 0x12, 0x0, 0x0, 0x0 },
        { 0x0, 0x3, 0x0, 0x0 },
    },
    {
        { 0xE, 0x8, 0x2, 0x0 },
        { 0x12, 0x0, 0x6, 0x0 },
        { 0x0, 0x2, 0x1, 0x0 },
    },
    {
        { 0x12, 0xC, 0x0, 0x6 },
        { 0x12, 0x0, 0x6, 0xC },
        { 0x0, 0x2, 0x3, 0x1 },
    },
};

static const u8 Unk_ov114_0226016C[4][4] = {
    { 0x0, 0x0, 0x0, 0x0 },
    { 0x0, 0x1, 0x0, 0x0 },
    { 0x0, 0x2, 0x1, 0x0 },
    { 0x0, 0x3, 0x1, 0x2 }
};

static const UnkStruct_02099F80 Unk_ov114_022601DC = {
    GX_VRAM_BG_256_AB,
    GX_VRAM_BGEXTPLTT_NONE,
    GX_VRAM_SUB_BG_32_H,
    GX_VRAM_SUB_BGEXTPLTT_NONE,
    GX_VRAM_OBJ_16_G,
    GX_VRAM_OBJEXTPLTT_NONE,
    GX_VRAM_SUB_OBJ_16_I,
    GX_VRAM_SUB_OBJEXTPLTT_NONE,
    GX_VRAM_TEX_NONE,
    GX_VRAM_TEXPLTT_NONE
};

static const UnkStruct_ov84_0223BA5C Unk_ov114_0226014C = {
    GX_DISPMODE_GRAPHICS,
    GX_BGMODE_0,
    GX_BGMODE_0,
    GX_BG0_AS_2D
};

static const UnkStruct_ov114_02260284 Unk_ov114_02260324[6] = {
    {
        0x3,
        {
            0x0,
            0x0,
            0x800,
            0x0,
            0x1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            0x3,
            0x0,
            0x0,
            0x0,
        },
    },
    {
        0x1,
        {
            0x0,
            0x0,
            0x1000,
            0x0,
            0x3,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xd800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            0x2,
            0x0,
            0x0,
            0x0,
        },
    },
    {
        0x2,
        {
            0x0,
            0x0,
            0x800,
            0x0,
            0x1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xd000,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            0x0,
            0x0,
            0x0,
            0x0,
        },
    },
    {
        0x0,
        {
            0x0,
            0x0,
            0x1000,
            0x0,
            0x3,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xc000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            0x1,
            0x0,
            0x0,
            0x0,
        },
    },
    {
        0x4,
        {
            0x0,
            0x0,
            0x800,
            0x0,
            0x1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x7800,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            0x0,
            0x0,
            0x0,
            0x0,
        },
    },
    {
        0x5,
        {
            0x0,
            0x0,
            0x800,
            0x0,
            0x1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x7000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            0x0,
            0x0,
            0x0,
            0x0,
        },
    },
};

static const UnkStruct_ov114_02260234 Unk_ov114_02260234[] = {
    { 0x0, 0x0 },
    { 0x1, 0x1 },
    { 0x2, 0x14 },
    { 0x3, 0x3 },
    { 0x4, 0x4 },
    { 0x5, 0x5 },
    { 0x6, 0x6 },
    { 0x7, 0x7 },
    { 0x8, 0x8 },
    { 0x9, 0x9 },
    { 0xA, 0x15 },
    { 0xB, 0xB },
    { 0xC, 0xC },
    { 0xD, 0xD },
    { 0xE, 0xE },
    { 0xF, 0xF },
    { 0x10, 0x10 },
    { 0x11, 0x16 },
    { 0x12, 0x17 },
    { 0x13, 0x13 },
};

void ov114_0225C700(UnkStruct_ov114_0225C76C *param0, BOOL param1, SaveData *param2, BOOL param3, UnkStruct_ov66_02230DBC *param4)
{
    int v0;
    int v1;
    u32 v2;
    TrainerInfo *v3;

    memset(param0, 0, sizeof(UnkStruct_ov114_0225C76C));

    param0->unk_08 = CommInfo_CountReceived();
    v2 = CommSys_CurNetId();
    v1 = 0;

    for (v0 = 0; v0 < 4; v0++) {
        v3 = CommInfo_TrainerInfo(v0);

        if (v3 != NULL) {
            if (v2 == v0) {
                param0->unk_09 = v1;
            }

            param0->unk_04[v1] = v0;
            v1++;
        }
    }

    GF_ASSERT(v1 == param0->unk_08);

    if (param1 == 0) {
        param0->unk_0B = 1;
    }

    param0->unk_00 = param2;
    param0->unk_0A = param3;
    param0->unk_0C = param4;
}

u32 ov114_0225C76C(const UnkStruct_ov114_0225C76C *param0, u32 param1)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_08; v0++) {
        if (param0->unk_04[v0] == param1) {
            return v0;
        }
    }

    return 4;
}

u32 ov114_0225C78C(const UnkStruct_ov114_0225C76C *param0, u32 param1)
{
    GF_ASSERT(param1 < param0->unk_08);

    return param0->unk_04[param1];
}

BOOL ov114_0225C7A4(const UnkStruct_ov114_0225C76C *param0, u32 param1)
{
    u32 v0;
    BOOL v1;

    if (param1 >= 4) {
        GF_ASSERT(param1 < 4);
        return 0;
    }

    v0 = param0->unk_0C->unk_04.unk_00[param1];

    if (v0 == 0xffffffff) {
        return 0;
    }

    v1 = param0->unk_0C->unk_08.unk_00[v0];

    return v1;
}

TrainerInfo *ov114_0225C7CC(const UnkStruct_ov114_0225C76C *param0, u32 param1)
{
    u32 v0;

    if (param1 >= 4) {
        GF_ASSERT(param1 < 4);
        return NULL;
    }

    if (param0->unk_0B == 1) {
        v0 = ov114_0225C76C(param0, param1);

        if (v0 == param0->unk_09) {
            return SaveData_GetTrainerInfo(param0->unk_00);
        }

        return CommInfo_TrainerInfo(param1);
    }

    GF_ASSERT(param0->unk_0C != NULL);
    return param0->unk_0C->unk_20[param1];
}

UnkStruct_ov114_0225D678 *ov114_0225C814(const UnkStruct_ov114_0225C76C *param0, u32 param1)
{
    return ov114_0225D48C(param0, UnkEnum_ov66_022324D0_00, param1);
}

UnkStruct_ov114_0225D678 *ov114_0225C820(const UnkStruct_ov114_0225C76C *param0, u32 param1)
{
    return ov114_0225D48C(param0, UnkEnum_ov66_022324D0_01, param1);
}

UnkStruct_ov114_0225D678 *ov114_0225C82C(const UnkStruct_ov114_0225C76C *param0, u32 param1)
{
    return ov114_0225D48C(param0, UnkEnum_ov66_022324D0_02, param1);
}

void ov114_0225C838(UnkStruct_ov114_0225D678 *param0)
{
    SysTask_Done(param0->unk_650);
    SysTask_Done(param0->unk_654);

    ov114_0225DFFC(&param0->unk_348);
    ov114_0225E234(&param0->unk_230);

    {
        int v0;

        for (v0 = 0; v0 < param0->unk_08.unk_08; v0++) {
            ov114_0225DDA0(&param0->unk_268[v0]);
        }
    }

    ov114_0225D338(&param0->unk_4C);
    ov114_0225D678(param0);
    ov114_0225D0D8(&param0->unk_3C);
    ov114_0225CD10(&param0->unk_214);
    ov114_0225D058(&param0->unk_84);
    ov114_0225CF84(&param0->unk_30);

    Heap_FreeToHeap(param0);
}

BOOL ov114_0225C8BC(const UnkStruct_ov114_0225D678 *param0)
{
    if (param0->unk_00 >= 16) {
        return 1;
    }

    return 0;
}

int ov114_0225C8CC(const UnkStruct_ov114_0225D678 *param0)
{
    GF_ASSERT(param0->unk_07 == 1);
    return param0->unk_06;
}

UnkStruct_ov114_0225E854 *ov114_0225C8E0(const UnkStruct_ov114_0225C76C *param0, const UnkStruct_ov114_0225C9A8 *param1, u32 param2)
{
    return ov114_0225E5A8(param0, param1, UnkEnum_ov66_022324D0_00, param2);
}

UnkStruct_ov114_0225E854 *ov114_0225C8EC(const UnkStruct_ov114_0225C76C *param0, const UnkStruct_ov114_0225C9A8 *param1, u32 param2)
{
    return ov114_0225E5A8(param0, param1, UnkEnum_ov66_022324D0_01, param2);
}

UnkStruct_ov114_0225E854 *ov114_0225C8F8(const UnkStruct_ov114_0225C76C *param0, const UnkStruct_ov114_0225C9A8 *param1, u32 param2)
{
    return ov114_0225E5A8(param0, param1, UnkEnum_ov66_022324D0_02, param2);
}

void ov114_0225C904(UnkStruct_ov114_0225E854 *param0)
{
    SysTask_Done(param0->unk_6A8);
    SysTask_Done(param0->unk_6AC);

    ov114_0225DFFC(&param0->unk_3A0);

    {
        int v0;

        for (v0 = 0; v0 < param0->unk_0C.unk_08; v0++) {
            ov114_0225DDA0(&param0->unk_2C0[v0]);
        }
    }

    ov114_0225F270(&param0->unk_24C);
    ov114_0225E854(param0);
    ov114_0225D338(&param0->unk_68);
    ov114_0225D0D8(&param0->unk_58);
    ov114_0225CD10(&param0->unk_230);
    ov114_0225D058(&param0->unk_A0);
    ov114_0225CF84(&param0->unk_4C);

    G2_BlendNone();
    G2S_BlendNone();

    sub_0201DC3C();
    Heap_FreeToHeap(param0);
}

BOOL ov114_0225C9A0(const UnkStruct_ov114_0225E854 *param0)
{
    return param0->unk_06;
}

BOOL ov114_0225C9A4(const UnkStruct_ov114_0225E854 *param0)
{
    return param0->unk_08;
}

void ov114_0225C9A8(UnkStruct_ov114_0225C9A8 *param0, u32 param1)
{
    u8 v0[4];
    int v1, v2;

    for (v1 = 0; v1 < param1; v1++) {
        for (v2 = v1; v2 > 0; v2--) {
            if (param0->unk_00[v1] <= param0->unk_00[v0[v2 - 1]]) {
                break;
            } else {
                v0[v2] = v0[v2 - 1];
            }
        }

        v0[v2] = v1;
    }

    {
        for (v1 = 0; v1 < param1; v1++) {
            (void)0;
        }
    }

    {
        u32 v3;

        for (v1 = 0; v1 < param1; v1++) {
            v3 = v1;

            if (v1 > 0) {
                if (param0->unk_00[v0[v1]] == param0->unk_00[v0[v1 - 1]]) {
                    v3 = param0->unk_10[v0[v1 - 1]];
                }
            }

            param0->unk_10[v0[v1]] = v3;
        }
    }
}

void ov114_0225CA24(UnkStruct_ov114_0225D678 *param0, int param1)
{
    param0->unk_06 = param1;
    param0->unk_07 = 1;
}

void ov114_0225CA2C(UnkStruct_ov114_0225E854 *param0, u32 param1, BOOL param2)
{
    if (param0->unk_0C.unk_09 == 0) {
        ov114_0225F424(&param0->unk_24C, param1, param2, param0->unk_0C.unk_08);
    }
}

void ov114_0225CA44(UnkStruct_ov114_0225E854 *param0, BOOL param1)
{
    ov114_0225F47C(&param0->unk_24C, param1);
}

BOOL ov114_0225CA54(UnkStruct_ov114_0225C76C *param0)
{
    BOOL v0 = 0;

    if (param0->unk_0C != NULL) {
        if (param0->unk_08 != CommSys_ConnectedCount()) {
            v0 = 1;
        }

        if (sub_02038284() == 1) {
            v0 = 1;
        }

        if (sub_020380E4() >= 2) {
            v0 = 1;
        }

        if (v0 == 1) {
            param0->unk_0C->unk_1C = 1;
        }

        if (param0->unk_0C->unk_1C == 1) {
            v0 = 1;
        }
    }

    return v0;
}

BOOL ov114_0225CA98(const UnkStruct_ov114_0225C76C *param0)
{
    GF_ASSERT(param0->unk_0C != NULL);
    GF_ASSERT(param0->unk_0C->unk_1C == 1);

    if (CommInfo_IsInitialized() == 1) {
        CommInfo_Delete();
        sub_0203888C();
    } else {
        if (sub_020382C0() == 1) {
            return 1;
        }
    }

    return 0;
}

UnkStruct_ov114_0225CAD4 *ov114_0225CAD4(CellActorCollection *param0, u32 param1)
{
    UnkStruct_ov114_0225CAD4 *v0;

    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_ov114_0225CAD4));
    memset(v0, 0, sizeof(UnkStruct_ov114_0225CAD4));

    v0->unk_08 = param0;
    v0->unk_0C = NARC_ctor(NARC_INDEX_RESOURCE__ENG__WIFI_LOBBY_MINIGAME__WLMNGM_TOOL, param1);

    ov114_0225CCD0(&v0->unk_10, 1, param1);

    v0->unk_28 = ov114_0225CD54(&v0->unk_10, v0->unk_0C, 3, 3, 2, 1, 0, 5000, param1);

    return v0;
}

void ov114_0225CB38(UnkStruct_ov114_0225CAD4 *param0)
{
    if (param0->unk_2C != NULL) {
        SysTask_Done(param0->unk_2C);
        param0->unk_2C = NULL;
    }

    if (param0->unk_30 != NULL) {
        CellActor_Delete(param0->unk_30);
    }

    ov114_0225FBF0(&param0->unk_34);
    ov114_0225CD10(&param0->unk_10);

    NARC_dtor(param0->unk_0C);
    Heap_FreeToHeap(param0);
}

int ov114_0225CB74(UnkStruct_ov114_0225CAD4 *param0)
{
    SpriteResource *v0 = SpriteResourceCollection_Find(param0->unk_10.unk_00[1], 5000);
    return sub_0200A760(v0, NNS_G2D_VRAM_TYPE_2DMAIN);
}

void ov114_0225CB8C(UnkStruct_ov114_0225CAD4 *param0)
{
    GF_ASSERT(param0->unk_2C == NULL);
    param0->unk_2C = SysTask_Start(ov114_0225FDC8, param0, 0);
    param0->unk_04 = 1;
}

void ov114_0225CBB0(UnkStruct_ov114_0225CAD4 *param0)
{
    GF_ASSERT(param0->unk_2C == NULL);
    param0->unk_2C = SysTask_Start(ov114_0225FF54, param0, 0);
    param0->unk_04 = 1;

    Sound_PlayEffect(1521);
}

BOOL ov114_0225CBE0(const UnkStruct_ov114_0225CAD4 *param0)
{
    if (param0->unk_04 == 0) {
        return 1;
    }

    return 0;
}

static void ov114_0225CBF0(UnkStruct_ov114_0225CBF0 *param0, fx32 param1, fx32 param2, fx32 param3, int param4)
{
    fx32 v0;
    fx32 v1;
    fx32 v2;
    fx32 v3;

    v2 = param2 - param1;
    v0 = (param4 * param4) << FX32_SHIFT;
    v1 = FX_Mul(param3, param4 * FX32_ONE);
    v1 = v2 - v1;
    v1 = FX_Mul(v1, 2 * FX32_ONE);
    v3 = FX_Div(v1, v0);

    param0->unk_00 = param1;
    param0->unk_04 = param1;
    param0->unk_08 = param3;
    param0->unk_0C = v3;
    param0->unk_10 = param4;
}

static BOOL ov114_0225CC4C(UnkStruct_ov114_0225CBF0 *param0, s32 param1)
{
    fx32 v0;
    fx32 v1;
    fx32 v2;
    fx32 v3;
    BOOL v4;

    if (param1 >= param0->unk_10) {
        param1 = param0->unk_10;
        v4 = 1;
    } else {
        v4 = 0;
    }

    v3 = FX_Mul(param0->unk_08, param1 << FX32_SHIFT);
    v1 = (param1 * param1) << FX32_SHIFT;
    v2 = FX_Mul(param0->unk_0C, v1);
    v2 = FX_Div(v2, 2 * FX32_ONE);
    v0 = v3 + v2;

    param0->unk_00 = param0->unk_04 + v0;

    return v4;
}

static void ov114_0225CCB0(NNSG2dScreenData *param0, u32 param1)
{
    int v0;
    u16 *v1;
    int v2;

    v2 = param0->szByte / 2;
    v1 = (u16 *)param0->rawData;

    for (v0 = 0; v0 < v2; v0++) {
        v1[v0] += param1;
    }
}

static void ov114_0225CCD0(UnkStruct_ov114_0225CCD0 *param0, u32 param1, u32 param2)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_00[v0] = SpriteResourceCollection_New(param1, v0, param2);
    }

    param0->unk_10 = Heap_AllocFromHeap(param2, sizeof(UnkStruct_ov114_0225CDB4) * param1);
    memset(param0->unk_10, 0, sizeof(UnkStruct_ov114_0225CDB4) * param1);
    param0->unk_14 = param1;
}

static void ov114_0225CD10(UnkStruct_ov114_0225CCD0 *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_14; v0++) {
        if (param0->unk_10[v0].unk_00 == 1) {
            ov114_0225CEB8(param0, &param0->unk_10[v0]);
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        SpriteResourceCollection_Delete(param0->unk_00[v0]);
    }

    Heap_FreeToHeap(param0->unk_10);
}

static UnkStruct_ov114_0225CDB4 *ov114_0225CD54(UnkStruct_ov114_0225CCD0 *param0, NARC *param1, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8)
{
    int v0;
    UnkStruct_ov114_0225CDB4 *v1 = NULL;

    for (v0 = 0; v0 < param0->unk_14; v0++) {
        if (param0->unk_10[v0].unk_00 == 0) {
            v1 = &param0->unk_10[v0];
            break;
        }
    }

    GF_ASSERT(v1);

    ov114_0225CDE0(param0, v1, param1, param2, param3, param4, param5, param6, param7, param8);

    return v1;
}

static CellActor *ov114_0225CDB4(UnkStruct_ov114_0225CDB4 *param0, CellActorCollection *param1, s16 param2, s16 param3, u16 param4, u32 param5)
{
    CellActorInitParams v0;

    v0.collection = param1;
    v0.resourceData = &param0->unk_14;
    v0.position.x = param2 << FX32_SHIFT;
    v0.position.y = param3 << FX32_SHIFT;
    v0.priority = param4;
    v0.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.heapID = param5;

    return CellActorCollection_Add(&v0);
}

static void ov114_0225CDE0(UnkStruct_ov114_0225CCD0 *param0, UnkStruct_ov114_0225CDB4 *param1, NARC *param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8, u32 param9)
{
    BOOL v0;

    GF_ASSERT(param1->unk_00 == 0);

    param1->unk_00 = 1;
    param1->unk_04[0] = SpriteResourceCollection_AddTilesFrom(param0->unk_00[0], param2, param5, 0, param8, NNS_G2D_VRAM_TYPE_2DMAIN, param9);
    param1->unk_04[1] = SpriteResourceCollection_AddPaletteFrom(param0->unk_00[1], param2, param3, 0, param8, NNS_G2D_VRAM_TYPE_2DMAIN, param4, param9);
    param1->unk_04[2] = SpriteResourceCollection_AddFrom(param0->unk_00[2], param2, param6, 0, param8, 2, param9);
    param1->unk_04[3] = SpriteResourceCollection_AddFrom(param0->unk_00[3], param2, param7, 0, param8, 3, param9);

    v0 = sub_0200A3DC(param1->unk_04[0]);
    GF_ASSERT(v0);

    SpriteResource_ReleaseData(param1->unk_04[0]);

    v0 = sub_0200A640(param1->unk_04[1]);
    GF_ASSERT(v0);

    SpriteResource_ReleaseData(param1->unk_04[1]);
    sub_020093B4(&param1->unk_14, param8, param8, param8, param8, 0xffffffff, 0xffffffff, 0, 1, param0->unk_00[0], param0->unk_00[1], param0->unk_00[2], param0->unk_00[3], NULL, NULL);
}

static void ov114_0225CEB8(UnkStruct_ov114_0225CCD0 *param0, UnkStruct_ov114_0225CDB4 *param1)
{
    int v0;

    GF_ASSERT(param1->unk_00 == 1);

    param1->unk_00 = 0;

    sub_0200A4E4(param1->unk_04[0]);
    sub_0200A6DC(param1->unk_04[1]);

    for (v0 = 0; v0 < 4; v0++) {
        SpriteResourceCollection_Remove(param0->unk_00[v0], param1->unk_04[v0]);
    }
}

static void ov114_0225CEF0(UnkStruct_ov114_0225CEF0 *param0, const UnkStruct_ov84_0223BA5C *param1, const UnkStruct_ov114_02260284 *param2, u32 param3, u32 param4)
{
    sub_02018368(param1);

    param0->unk_00 = sub_02018340(param4);
    param0->unk_04 = param2;
    param0->unk_08 = param3;

    gCoreSys.unk_65 = 0;
    GXLayers_SwapDisplay();

    {
        int v0;

        for (v0 = 0; v0 < param3; v0++) {
            sub_020183C4(param0->unk_00, param2[v0].unk_00, &param2[v0].unk_04, 0);
            sub_02019690(param2[v0].unk_00, 32, 0, param4);
            sub_02019EBC(param0->unk_00, param2[v0].unk_00);
            sub_02019184(param0->unk_00, param2[v0].unk_00, 0, 0);
            sub_02019184(param0->unk_00, param2[v0].unk_00, 3, 0);
        }
    }
}

static void ov114_0225CF84(UnkStruct_ov114_0225CEF0 *param0)
{
    sub_02019184(param0->unk_00, 3, 3, 0);

    {
        int v0;

        for (v0 = 0; v0 < param0->unk_08; v0++) {
            sub_02019044(param0->unk_00, param0->unk_04[v0].unk_00);
        }
    }

    Heap_FreeToHeap(param0->unk_00);
}

static void ov114_0225CFC0(UnkStruct_ov114_0225CEF0 *param0)
{
    sub_0201C2B8(param0->unk_00);
}

static void ov114_0225CFCC(UnkStruct_ov114_0225CFCC *param0, u32 param1, u32 param2, u32 param3, u32 param4)
{
    int v0;

    NNS_G2dInitOamManagerModule();
    sub_0200A784(0, 126, 0, 31, 0, 126, 0, 31, param4);

    {
        UnkStruct_ov22_022559F8 v1 = Unk_ov114_0226017C;

        v1.unk_00 = param2;
        v1.unk_0C = param4;

        sub_0201E88C(&v1, GX_OBJVRAMMODE_CHAR_1D_32K, GX_OBJVRAMMODE_CHAR_1D_32K);
    }

    sub_0201F834(param3, param4);
    sub_0201E994();
    sub_0201F8E4();
    sub_0200966C(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_32K);
    sub_02009704(NNS_G2D_VRAM_TYPE_2DMAIN);

    param0->unk_00 = sub_020095C4(param1, &param0->unk_04, param4);

    sub_02039734();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov114_0225D058(UnkStruct_ov114_0225CFCC *param0)
{
    CellActorCollection_Delete(param0->unk_00);
    sub_0201E958();
    sub_0201F8B4();
    sub_0200A878();
}

static void ov114_0225D070(UnkStruct_ov114_0225CFCC *param0)
{
    CellActorCollection_Update(param0->unk_00);
}

static void ov114_0225D07C(UnkStruct_ov114_0225CFCC *param0)
{
    sub_0200A858();
}

static void ov114_0225D084(UnkStruct_ov114_0225D084 *param0, u32 param1)
{
    param0->unk_00 = MessageLoader_Init(0, 26, 411, param1);
    param0->unk_04 = StringTemplate_New(8, 64, param1);
    param0->unk_08 = Strbuf_Init(128, param1);
    param0->unk_0C = Strbuf_Init(128, param1);

    Font_LoadScreenIndicatorsPalette(0, 12 * 0x20, param1);
    Font_LoadScreenIndicatorsPalette(4, 12 * 0x20, param1);
}

static void ov114_0225D0D8(UnkStruct_ov114_0225D084 *param0)
{
    Strbuf_Free(param0->unk_0C);
    Strbuf_Free(param0->unk_08);
    StringTemplate_Free(param0->unk_04);
    MessageLoader_Free(param0->unk_00);
}

static void ov114_0225D0F8(UnkStruct_ov114_0225D084 *param0)
{
    StringTemplate_ClearArgs(param0->unk_04);
}

static void ov114_0225D104(UnkStruct_ov114_0225D084 *param0, const TrainerInfo *param1)
{
    StringTemplate_SetPlayerName(param0->unk_04, 0, param1);
}

static void ov114_0225D114(UnkStruct_ov114_0225D084 *param0, u32 param1)
{
    StringTemplate_SetCountryName(param0->unk_04, 0, param1);
}

static void ov114_0225D124(UnkStruct_ov114_0225D084 *param0, u32 param1, u32 param2)
{
    StringTemplate_SetCityName(param0->unk_04, 0, param1, param2);
}

static void ov114_0225D138(UnkStruct_ov114_0225D084 *param0, u32 param1, u32 param2)
{
    StringTemplate_SetNumber(param0->unk_04, 0, param1, param2, 1, 1);
}

static void ov114_0225D154(UnkStruct_ov114_0225D084 *param0, u32 param1)
{
    StringTemplate_SetNumber(param0->unk_04, 0, param1, 2, 1, 1);
}

static void ov114_0225D170(UnkStruct_ov114_0225D084 *param0, u32 param1)
{
    StringTemplate_SetPlazaItemName(param0->unk_04, 1, param1);
}

static void ov114_0225D180(UnkStruct_ov114_0225D084 *param0, u32 param1)
{
    StringTemplate_SetPlazaMinigameName(param0->unk_04, 0, param1);
}

static void ov114_0225D190(UnkStruct_ov114_0225D084 *param0, Strbuf *param1, u32 param2)
{
    MessageLoader_GetStrbuf(param0->unk_00, param2, param0->unk_0C);
    StringTemplate_Format(param0->unk_04, param1, param0->unk_0C);
}

static void ov114_0225D1AC(UnkStruct_ov114_0225D084 *param0, u32 param1, Window *param2, u8 param3, u8 param4)
{
    ov114_0225D254(param0, param1, param2, param3, param4, TEXT_COLOR(15, 14, 0));
}

static void ov114_0225D1C8(UnkStruct_ov114_0225D084 *param0, u32 param1, Window *param2, u8 param3, u8 param4)
{
    u32 v0;
    s32 v1;

    MessageLoader_GetStrbuf(param0->unk_00, param1, param0->unk_0C);
    StringTemplate_Format(param0->unk_04, param0->unk_08, param0->unk_0C);

    v0 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_08, 0);
    v1 = param3 - v0;

    if (v1 < 0) {
        v1 = 0;
    }

    Text_AddPrinterWithParamsAndColor(param2, FONT_SYSTEM, param0->unk_08, v1, param4, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
}

static u32 ov114_0225D218(UnkStruct_ov114_0225D084 *param0, u32 param1, Window *param2, Strbuf *param3, u32 param4)
{
    MessageLoader_GetStrbuf(param0->unk_00, param1, param0->unk_0C);
    StringTemplate_Format(param0->unk_04, param3, param0->unk_0C);

    return Text_AddPrinterWithParamsAndColor(param2, FONT_MESSAGE, param3, 0, 0, param4, TEXT_COLOR(1, 2, 15), NULL);
}

static void ov114_0225D254(UnkStruct_ov114_0225D084 *param0, u32 param1, Window *param2, u8 param3, u8 param4, TextColor param5)
{
    MessageLoader_GetStrbuf(param0->unk_00, param1, param0->unk_0C);
    StringTemplate_Format(param0->unk_04, param0->unk_08, param0->unk_0C);
    Text_AddPrinterWithParamsAndColor(param2, FONT_SYSTEM, param0->unk_08, param3, param4, TEXT_SPEED_NO_TRANSFER, param5, NULL);
}

static void ov114_0225D290(UnkStruct_ov114_0225D338 *param0, UnkStruct_ov114_0225CEF0 *param1, SaveData *param2, BOOL param3, u32 param4)
{
    u32 v0 = Options_Frame(SaveData_Options(param2));
    u32 v1;
    int v2;
    u8 v3;

    sub_020959F4(1);
    sub_0200DD0C(param1->unk_00, 2, 1, 13, v0, param4);
    sub_0200DD0C(param1->unk_00, 4, 1, 13, v0, param4);

    for (v2 = 0; v2 < 2; v2++) {
        if (v2 == 0) {
            v1 = 2;
            v3 = 19;
        } else {
            v1 = 4;
            v3 = 1;
        }

        BGL_AddWindow(param1->unk_00, &param0->unk_00[v2], v1, 2, v3, 27, 4, 12, (1 + (18 + 12)));
        BGL_FillWindow(&param0->unk_00[v2], 0);

        param0->unk_24[v2] = Strbuf_Init(128, param4);
    }

    param0->unk_34 = param3;
}

static void ov114_0225D338(UnkStruct_ov114_0225D338 *param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        ov114_0225D400(param0, v0);
        Strbuf_Free(param0->unk_24[v0]);
        BGL_DeleteWindow(&param0->unk_00[v0]);
    }

    sub_02095A24();
}

static void ov114_0225D368(UnkStruct_ov114_0225D338 *param0, UnkStruct_ov114_0225D084 *param1, u32 param2, u32 param3)
{
    int v0;

    if (param0->unk_34 == 1) {
        for (v0 = 0; v0 < NELEMS(Unk_ov114_02260234); v0++) {
            if (Unk_ov114_02260234[v0].unk_00 == param2) {
                param2 = Unk_ov114_02260234[v0].unk_02;
            }
        }
    }

    if (Text_IsPrinterActive(param0->unk_20[param3])) {
        Text_RemovePrinter(param0->unk_20[param3]);
    }

    ov114_0225D474(param0, param3);
    BGL_FillWindow(&param0->unk_00[param3], 15);
    param0->unk_20[param3] = ov114_0225D218(param1, param2, &param0->unk_00[param3], param0->unk_24[param3], TEXT_SPEED_FAST);
    sub_0200E060(&param0->unk_00[param3], 1, 1, 13);
    sub_0201A9A4(&param0->unk_00[param3]);
}

static void ov114_0225D400(UnkStruct_ov114_0225D338 *param0, u32 param1)
{
    ov114_0225D474(param0, param1);

    if (Text_IsPrinterActive(param0->unk_20[param1])) {
        Text_RemovePrinter(param0->unk_20[param1]);
    }

    sub_0200E084(&param0->unk_00[param1], 1);
    sub_0201AD10(&param0->unk_00[param1]);
}

static BOOL ov114_0225D43C(const UnkStruct_ov114_0225D338 *param0, u32 param1)
{
    u32 v0;

    v0 = Text_IsPrinterActive(param0->unk_20[param1]);

    if (v0 == 0) {
        return 1;
    }

    return 0;
}

static void ov114_0225D458(UnkStruct_ov114_0225D338 *param0, u32 param1)
{
    if (param0->unk_2C[param1] == NULL) {
        param0->unk_2C[param1] = sub_0200E7FC(&param0->unk_00[param1], 1);
    }
}

static void ov114_0225D474(UnkStruct_ov114_0225D338 *param0, u32 param1)
{
    if (param0->unk_2C[param1]) {
        sub_0200EBC8(param0->unk_2C[param1]);
        param0->unk_2C[param1] = NULL;
    }
}

static UnkStruct_ov114_0225D678 *ov114_0225D48C(const UnkStruct_ov114_0225C76C *param0, u32 param1, u32 param2)
{
    UnkStruct_ov114_0225D678 *v0;
    int v1;

    sub_02004550(19, 1211, 0);

    v0 = Heap_AllocFromHeap(param2, sizeof(UnkStruct_ov114_0225D678));
    memset(v0, 0, sizeof(UnkStruct_ov114_0225D678));
    memcpy(&v0->unk_08, param0, sizeof(UnkStruct_ov114_0225C76C));

    v0->unk_04 = param1;

    G2_BlendNone();
    G2S_BlendNone();
    GX_SetVisibleWnd(0);
    GXS_SetVisibleWnd(0);

    GXLayers_SetBanks(&Unk_ov114_022601B4);

    v0->unk_02 = param2;

    ov114_02260060(v0);
    ov114_0225E0F8(&v0->unk_18, &v0->unk_08);
    ov114_0225CEF0(&v0->unk_30, &Unk_ov114_0226018C, Unk_ov114_02260284, 5, param2);
    ov114_0225CFCC(&v0->unk_84, 16, 1, 1, param2);
    ov114_0225CCD0(&v0->unk_214, 1, param2);
    ov114_0225D084(&v0->unk_3C, param2);
    ov114_0225D5BC(v0, param2);

    {
        BOOL v2;
        u32 v3;

        v3 = ov114_0225C78C(&v0->unk_08, v0->unk_08.unk_09);
        v2 = ov114_0225C7A4(&v0->unk_08, v3);

        ov114_0225D290(&v0->unk_4C, &v0->unk_30, v0->unk_08.unk_00, v2, param2);
    }

    v0->unk_650 = SysTask_Start(ov114_0225D688, v0, 0);
    v0->unk_654 = SysTask_ExecuteAfterVBlank(ov114_0225DA0C, v0, 0);

    if (v0->unk_08.unk_0A) {
        ov4_021D1E74(param2);
    }

    return v0;
}

static void ov114_0225D5BC(UnkStruct_ov114_0225D678 *param0, u32 param1)
{
    NARC *v0;

    v0 = NARC_ctor(NARC_INDEX_RESOURCE__ENG__WIFI_LOBBY_MINIGAME__WLMNGM_TOOL, param1);

    sub_02007130(v0, 4, 0, 0, 9 * 32, param1);
    sub_020070E8(v0, 6, param0->unk_30.unk_00, 1, 0, 0, 0, param1);

    param0->unk_260 = sub_020071D0(v0, 9, 0, &param0->unk_264, param1);

    sub_0200710C(v0, 8, param0->unk_30.unk_00, 3, 0, 0, 0, param1);
    ov114_0225E550(v0, param0->unk_04, param1);

    param0->unk_22C = ov114_0225CD54(&param0->unk_214, v0, 11, 5, 12, 13, 14, 5000, param1);

    ov114_0225E1A4(&param0->unk_230, &param0->unk_30, &param0->unk_3C, param0->unk_04, v0, param1);
    NARC_dtor(v0);
}

static void ov114_0225D678(UnkStruct_ov114_0225D678 *param0)
{
    Heap_FreeToHeap(param0->unk_260);
}

static void ov114_0225D688(SysTask *param0, void *param1)
{
    UnkStruct_ov114_0225D678 *v0 = param1;
    BOOL v1;

    switch (v0->unk_00) {
    case 0:
        sub_0200F174(3, 1, 1, 0xffff, 6, 1, v0->unk_02);
        ov114_0225E244(&v0->unk_230, &v0->unk_30, v0->unk_02);
        v0->unk_00++;
        break;
    case 1:
        ov114_0225E31C(&v0->unk_230, &v0->unk_30);
        v1 = ScreenWipe_Done();

        if (v1 == 1) {
            v0->unk_00++;
        }
        break;
    case 2:
        v1 = ov114_0225E31C(&v0->unk_230, &v0->unk_30);

        if (v1 == 1) {
            v0->unk_00++;
        }
        break;
    case 3:
        ov114_0225D368(&v0->unk_4C, &v0->unk_3C, 0, 0);
        v0->unk_00++;
        break;
    case 4:
        v1 = ov114_0225D43C(&v0->unk_4C, 0);

        if (v1) {
            v0->unk_00++;
            v0->unk_01 = 64;
        }
        break;
    case 5:
        if (v0->unk_01 > 0) {
            v0->unk_01--;

            if (v0->unk_01 == 0) {
                ov114_0225D400(&v0->unk_4C, 0);
                ov114_0225E2D4(&v0->unk_230, &v0->unk_30);
                v0->unk_00++;
            }
        }
        break;
    case 6:
        v1 = ov114_0225E438(&v0->unk_230, &v0->unk_30);

        if (v1 == 1) {
            v0->unk_00++;
        }
        break;
    case 7: {
        int v2;
        BOOL v3;
        BOOL v4;
        u32 v5;

        ov114_0225DF7C(&v0->unk_348, &v0->unk_30, v0->unk_02);

        v3 = ov114_0225E14C(&v0->unk_08, &v0->unk_18);

        for (v2 = 0; v2 < v0->unk_08.unk_08; v2++) {
            ov114_0225DAC0(&v0->unk_268[v2], v0->unk_08.unk_08, v0->unk_04, v0->unk_264, &v0->unk_30, v2, v0->unk_08.unk_09, &v0->unk_84, v0->unk_22C, v0->unk_02);

            v5 = ov114_0225C78C(&v0->unk_08, v2);
            v4 = ov114_0225C7A4(&v0->unk_08, v5);

            ov114_0225DC44(&v0->unk_268[v2], &v0->unk_3C, v0->unk_18.unk_08[v2], 8, 0, v4);
            ov114_0225DCA0(&v0->unk_268[v2], &v0->unk_3C, v3, v0->unk_18.unk_00[v2], v0->unk_18.unk_04[v2], 8);
            ov114_0225DDD4(&v0->unk_268[v2], -8, 3 * v2);
        }
    }

        {
            int v6;

            for (v6 = 0; v6 < v0->unk_08.unk_08; v6++) {
                ov114_0225DD80(&v0->unk_268[v6], &v0->unk_30);
                ov114_0225DD94(&v0->unk_268[v6]);
            }
        }

        v0->unk_01 = 92;
        v0->unk_00++;
        break;
    case 8:
        if (ov114_0225DA5C(v0) == 1) {
            v0->unk_00++;
        }
        break;
    case 9:
        v0->unk_01--;

        if (v0->unk_01 == 0) {
            v0->unk_00++;
            CommTiming_StartSync(129);

            if (v0->unk_08.unk_0A) {
                ov4_021D1F18();
            }
        }
        break;
    case 10:
        if (CommTiming_IsSyncState(129)) {
            v0->unk_00++;
        }
        break;
    case 11: {
        int v7;

        for (v7 = 0; v7 < v0->unk_08.unk_08; v7++) {
            ov114_0225DE38(&v0->unk_268[v7], v7 * 3);
        }

        v0->unk_00++;
        v0->unk_01 = 8;
    } break;
    case 12:
        v0->unk_01--;
        ov114_0225DA5C(v0);

        if (v0->unk_01 <= 0) {
            v0->unk_00++;
        }
        break;
    case 13:
        sub_0200F174(3, 0, 1, 0x0, 6, 1, v0->unk_02);
        ov114_0225DA5C(v0);

        if (v0->unk_08.unk_09 == 0) {
            u32 v8;

            switch (v0->unk_04) {
            case UnkEnum_ov66_022324D0_00:
                v8 = ov114_0225DA2C(Unk_ov114_022600D0, 3);
                break;
            case UnkEnum_ov66_022324D0_01:
                v8 = ov114_0225DA2C(Unk_ov114_022600C8, 2);
                break;
            case UnkEnum_ov66_022324D0_02:
                v8 = ov114_0225DA2C(Unk_ov114_022600CC, 3);
                break;
            }

            CommSys_SendData(26, &v8, sizeof(u32));
        }

        v0->unk_00++;
        break;
    case 14:
        ov114_0225DA5C(v0);
        v1 = ScreenWipe_Done();

        if (v1 == 1) {
            ov114_0225DFFC(&v0->unk_348);
            v0->unk_00++;
        }
        break;
    case 15:
        if (v0->unk_07 == 1) {
            v0->unk_00++;
        }
        break;
    case 16:
        break;
    }

    ov114_0225D070(&v0->unk_84);

    sub_0201C63C(v0->unk_30.unk_00, 3, 4, 2);
    sub_0201C63C(v0->unk_30.unk_00, 5, 4, 2);
}

static void ov114_0225DA0C(SysTask *param0, void *param1)
{
    UnkStruct_ov114_0225D678 *v0 = param1;

    ov114_0225CFC0(&v0->unk_30);
    ov114_0225D07C(&v0->unk_84);
    ov114_0225E08C(&v0->unk_348);
}

static int ov114_0225DA2C(const u8 *param0, u32 param1)
{
    u32 v0;
    u32 v1;
    int v2;

    v0 = MTRNG_Next() % 100;
    v1 = 0;

    for (v2 = 0; v2 < param1; v2++) {
        v1 += param0[v2];

        if (v1 > v0) {
            return v2;
        }
    }

    GF_ASSERT(0);
    return param1 - 1;
}

static BOOL ov114_0225DA5C(UnkStruct_ov114_0225D678 *param0)
{
    int v0;
    BOOL v1;
    BOOL v2 = 1;

    for (v0 = 0; v0 < param0->unk_08.unk_08; v0++) {
        if (param0->unk_268[v0].unk_10 != NULL) {
            v1 = ov114_0225DE70(&param0->unk_268[v0]);
            ov114_0225E028(&param0->unk_348, &param0->unk_268[v0]);

            if (v1 == 0) {
                v2 = 0;
            }
        } else {
            v2 = 0;
        }
    }

    return v2;
}

static void ov114_0225DAC0(UnkStruct_ov114_0225DAC0 *param0, u32 param1, u32 param2, NNSG2dScreenData *param3, UnkStruct_ov114_0225CEF0 *param4, u32 param5, u32 param6, UnkStruct_ov114_0225CFCC *param7, UnkStruct_ov114_0225CDB4 *param8, u32 param9)
{
    s32 v0;

    switch (param2) {
    case UnkEnum_ov66_022324D0_00:
    case UnkEnum_ov66_022324D0_02:
        v0 = ov114_0225DF44(param1, param5, param6);
        break;
    case UnkEnum_ov66_022324D0_01:
        if (param6 > param5) {
            v0 = param5 + 1;
        } else if (param6 == param5) {
            v0 = 0;
        } else {
            v0 = param5;
        }
        break;
    default:
        v0 = param5;
        break;
    }

    BGL_SetPriority(1, 2);
    BGL_SetPriority(0, 1);
    BGL_AddWindow(param4->unk_00, &param0->unk_00, 0, 5, 1 + Unk_ov114_02260204[param1 - 1].unk_00[v0], 26, 4, 12, 513 + ((26 * 4) * param5));
    BGL_FillWindow(&param0->unk_00, 0);
    sub_020198E8(param4->unk_00, 1, 0, Unk_ov114_02260204[param1 - 1].unk_00[v0], 32, 6, param3->rawData, 0, Unk_ov114_02260204[param1 - 1].unk_04[param5], param3->screenWidth / 8, param3->screenHeight / 8);

    {
        u8 v1;
        u8 v2, v3;

        v1 = Unk_ov114_02260204[param1 - 1].unk_08[v0];
        v2 = Unk_ov114_0226015C[v1][0];
        v3 = (Unk_ov114_02260204[param1 - 1].unk_00[v0] * 8) + Unk_ov114_0226015C[v1][1];

        param0->unk_10 = ov114_0225CDB4(param8, param7->unk_00, v2, v3, 0, param9);

        CellActor_SetAnim(param0->unk_10, v1);
        CellActor_SetExplicitPaletteOffset(param0->unk_10, param5);
        CellActor_SetDrawFlag(param0->unk_10, 0);
        CellActor_SetAnimateFlag(param0->unk_10, 1);
    }

    {
        u8 v4, v5;

        v4 = 24;
        v5 = (Unk_ov114_02260204[param1 - 1].unk_00[v0] * 8) + 21;

        param0->unk_14 = ov114_0225CDB4(param8, param7->unk_00, v4, v5, 0, param9);

        CellActor_SetAnim(param0->unk_14, 0);
        CellActor_SetDrawFlag(param0->unk_14, 0);
    }

    param0->unk_1A = param5;
    param0->unk_1B = v0;
    param0->unk_18 = param1;
}

static void ov114_0225DC44(UnkStruct_ov114_0225DAC0 *param0, UnkStruct_ov114_0225D084 *param1, const TrainerInfo *param2, s16 param3, s16 param4, u32 param5)
{
    ov114_0225D104(param1, param2);

    if (param5 == 1) {
        ov114_0225D254(param1, 10, &param0->unk_00, param3, param4, TEXT_COLOR(5, 6, 0));
    } else {
        ov114_0225D1AC(param1, 10, &param0->unk_00, param3, param4);
    }
}

static void ov114_0225DCA0(UnkStruct_ov114_0225DAC0 *param0, UnkStruct_ov114_0225D084 *param1, BOOL param2, u32 param3, u32 param4, s16 param5)
{
    if (param2) {
        if (param3 != 0) {
            ov114_0225D0F8(param1);
            ov114_0225D114(param1, param3);
            ov114_0225D1AC(param1, 11, &param0->unk_00, param5, 16);
        }
    } else {
        if (param3 != 0) {
            ov114_0225D0F8(param1);
            ov114_0225D124(param1, param3, param4);
            ov114_0225D1AC(param1, 12, &param0->unk_00, param5, 16);
        }
    }
}

static void ov114_0225DD0C(UnkStruct_ov114_0225DAC0 *param0, u32 param1)
{
    CellActor_SetDrawFlag(param0->unk_14, 1);
    CellActor_SetAnim(param0->unk_14, 4 + param1);
    CellActor_SetAnimateFlag(param0->unk_14, 1);
}

static void ov114_0225DD2C(UnkStruct_ov114_0225DAC0 *param0, UnkStruct_ov114_0225D084 *param1, u32 param2, s16 param3, s16 param4, u32 param5)
{
    ov114_0225D138(param1, param2, param5);

    if (param5 == 5) {
        ov114_0225D1C8(param1, 14, &param0->unk_00, param3, param4);
    } else {
        ov114_0225D1C8(param1, 13, &param0->unk_00, param3, param4);
    }
}

static void ov114_0225DD80(UnkStruct_ov114_0225DAC0 *param0, UnkStruct_ov114_0225CEF0 *param1)
{
    sub_0201A9A4(&param0->unk_00);
    sub_0201C3C0(param1->unk_00, 1);
}

static void ov114_0225DD94(UnkStruct_ov114_0225DAC0 *param0)
{
    CellActor_SetDrawFlag(param0->unk_10, 1);
}

static void ov114_0225DDA0(UnkStruct_ov114_0225DAC0 *param0)
{
    if (param0->unk_10) {
        CellActor_Delete(param0->unk_10);
        param0->unk_10 = NULL;
    }

    if (param0->unk_14) {
        CellActor_Delete(param0->unk_14);
        param0->unk_14 = NULL;
    }

    if (BGL_WindowAdded(&param0->unk_00) == 1) {
        BGL_DeleteWindow(&param0->unk_00);
    }
}

static void ov114_0225DDD4(UnkStruct_ov114_0225DAC0 *param0, s16 param1, s16 param2)
{
    ov114_0225CBF0(&param0->unk_1C, FX32_CONST(-255), FX32_CONST(param1), FX32_CONST(28), 8);

    param0->unk_30 = 0;
    param0->unk_32 = param2;
    param0->unk_34 = 1382;

    ov114_0225DEBC(param0, -(param0->unk_1C.unk_00 >> FX32_SHIFT));
}

static void ov114_0225DE38(UnkStruct_ov114_0225DAC0 *param0, s16 param1)
{
    ov114_0225CBF0(&param0->unk_1C, param0->unk_1C.unk_00, FX32_CONST(-255), 0, 8);

    param0->unk_30 = 0;
    param0->unk_32 = param1;
    param0->unk_34 = 1383;

    ov114_0225DEBC(param0, -(param0->unk_1C.unk_00 >> FX32_SHIFT));
}

static BOOL ov114_0225DE70(UnkStruct_ov114_0225DAC0 *param0)
{
    BOOL v0;
    u8 v1, v2;

    if (param0->unk_32 <= 0) {
        if (param0->unk_30 == 0) {
            Sound_PlayEffect(param0->unk_34);
        }

        param0->unk_30++;
        v0 = ov114_0225CC4C(&param0->unk_1C, param0->unk_30);

        ov114_0225DEBC(param0, -(param0->unk_1C.unk_00 >> FX32_SHIFT));
        return v0;
    }

    param0->unk_32--;
    return 0;
}

static void ov114_0225DEBC(UnkStruct_ov114_0225DAC0 *param0, s32 param1)
{
    u8 v0;
    u8 v1, v2;
    VecFx32 v3;

    v0 = Unk_ov114_02260204[param0->unk_18 - 1].unk_08[param0->unk_1B];
    v1 = Unk_ov114_0226015C[v0][0];
    v2 = (Unk_ov114_02260204[param0->unk_18 - 1].unk_00[param0->unk_1B] * 8) + Unk_ov114_0226015C[v0][1];

    v3.x = (v1 + param1) << FX32_SHIFT;
    v3.y = v2 << FX32_SHIFT;

    CellActor_SetPosition(param0->unk_10, &v3);

    v1 = 24;
    v2 = (Unk_ov114_02260204[param0->unk_18 - 1].unk_00[param0->unk_1B] * 8) + 21;

    v3.x = (v1 + param1) << FX32_SHIFT;
    v3.y = v2 << FX32_SHIFT;

    CellActor_SetPosition(param0->unk_14, &v3);
}

static u32 ov114_0225DF44(u32 param0, u32 param1, u32 param2)
{
    s32 v0, v1, v2;
    int v3;

    for (v3 = 0; v3 < param0; v3++) {
        if (Unk_ov114_0226016C[param0 - 1][v3] == param1) {
            v1 = v3;
        }

        if (Unk_ov114_0226016C[param0 - 1][v3] == param2) {
            v0 = v3;
        }
    }

    v2 = v1 - v0;

    if (v2 < 0) {
        v2 += param0;
    }

    return v2;
}

static void ov114_0225DF7C(UnkStruct_ov114_0225DFFC *param0, UnkStruct_ov114_0225CEF0 *param1, u32 param2)
{
    int v0, v1;

    GF_ASSERT(param0->bufferManager == NULL);

    param0->unk_00 = param1;

    sub_02019184(param0->unk_00->unk_00, 0, 0, -255);
    sub_02019184(param0->unk_00->unk_00, 1, 0, -255);

    for (v0 = 0; v0 < 2; v0++) {
        MI_CpuFill16(&param0->unk_04[v0], -255, sizeof(s16) * 192);
    }

    param0->bufferManager = BufferManager_New(param2, &param0->unk_04[0], &param0->unk_04[1]);

    BufferManager_SetMode(param0->bufferManager, 0);
    SetHBlankCallback(ov114_0225E0AC, param0);
}

static void ov114_0225DFFC(UnkStruct_ov114_0225DFFC *param0)
{
    if (param0->bufferManager != NULL) {
        SetHBlankCallback(NULL, NULL);
        BufferManager_Delete(param0->bufferManager);
        param0->bufferManager = NULL;
    }
}

static void ov114_0225E028(UnkStruct_ov114_0225DFFC *param0, const UnkStruct_ov114_0225DAC0 *param1)
{
    s16 *v0;
    int v1;
    int v2;

    GF_ASSERT(param0->bufferManager != NULL);

    v0 = BufferManager_GetWriteBuffer(param0->bufferManager);

    for (v1 = 0; v1 < 6 * 8; v1++) {
        v2 = v1 - 1;
        v2 += Unk_ov114_02260204[param1->unk_18 - 1].unk_00[param1->unk_1B] * 8;

        if (v2 < 0) {
            v2 += 192;
        }

        v0[v2] = param1->unk_1C.unk_00 >> FX32_SHIFT;
    }

    BufferManager_SetMode(param0->bufferManager, 1);
}

static void ov114_0225E08C(UnkStruct_ov114_0225DFFC *param0)
{
    if (param0->bufferManager == NULL) {
        return;
    }

    BufferManager_SwapBuffers(param0->bufferManager);
    BufferManager_SetMode(param0->bufferManager, 0);
}

static void ov114_0225E0AC(void *param0)
{
    UnkStruct_ov114_0225DFFC *v0 = param0;
    int v1;
    const s16 *v2;

    v1 = GX_GetVCount();

    if (v1 >= 192) {
        return;
    }

    v2 = BufferManager_GetReadBuffer(v0->bufferManager);

    if (GX_IsHBlank()) {
        sub_02019184(v0->unk_00->unk_00, 0, 0, v2[v1]);
        sub_02019184(v0->unk_00->unk_00, 1, 0, v2[v1]);
    }
}

static void ov114_0225E0F8(UnkStruct_ov114_0225E0F8 *param0, const UnkStruct_ov114_0225C76C *param1)
{
    int v0;

    for (v0 = 0; v0 < param1->unk_08; v0++) {
        param0->unk_08[v0] = ov114_0225C7CC(param1, param1->unk_04[v0]);
        GF_ASSERT(param0->unk_08[v0]);
        param0->unk_00[v0] = CommInfo_PlayerCountry(param1->unk_04[v0]);
        param0->unk_04[v0] = CommInfo_PlayerRegion(param1->unk_04[v0]);
    }
}

static BOOL ov114_0225E14C(const UnkStruct_ov114_0225C76C *param0, const UnkStruct_ov114_0225E0F8 *param1)
{
    int v0;
    BOOL v1;

    v1 = 0;

    for (v0 = 0; v0 < param0->unk_08 - 1; v0++) {
        if ((param1->unk_00[v0] != param1->unk_00[v0 + 1]) || (param1->unk_00[v0] == 0) || (param1->unk_00[v0 + 1] == 0)) {
            v1 = 1;
        }
    }

    return v1;
}

u32 ov114_0225E180(u32 param0)
{
    u32 v0;
    u32 v1;
    u32 v2;

    v1 = param0 % 3;
    v0 = param0 / 3;

    if ((v1 + 1) < 3) {
        v1++;
    }

    v2 = v0 * 3;
    v2 += v1;

    return v2;
}

static void ov114_0225E1A4(UnkStruct_ov114_0225E1A4 *param0, UnkStruct_ov114_0225CEF0 *param1, UnkStruct_ov114_0225D084 *param2, u32 param3, NARC *param4, u32 param5)
{
    BGL_AddWindow(param1->unk_00, &param0->unk_00, 1, 6, 11, 20, 10, 8, 513);
    BGL_FillWindow(&param0->unk_00, 0);

    param0->unk_14 = Strbuf_Init(128, param5);
    ov114_0225D180(param2, param3);
    ov114_0225D190(param2, param0->unk_14, 16);
    param0->unk_10 = param3;

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    sub_020070E8(param4, 7, param1->unk_00, 0, 0, 0, 0, param5);
    sub_0200710C(param4, 10, param1->unk_00, 0, 0, 0, 0, param5);
}

static void ov114_0225E234(UnkStruct_ov114_0225E1A4 *param0)
{
    BGL_DeleteWindow(&param0->unk_00);
    Strbuf_Free(param0->unk_14);
}

static void ov114_0225E244(UnkStruct_ov114_0225E1A4 *param0, UnkStruct_ov114_0225CEF0 *param1, u32 param2)
{
    u32 v0;
    u32 v1;

    param0->unk_2C = 0;
    param0->unk_2E = 0;

    ov114_0225CBF0(&param0->unk_18, Unk_ov114_02260140[param0->unk_10], Unk_ov114_02260110[param0->unk_10], Unk_ov114_02260104[param0->unk_10], 16);
    ov114_0225E4B0(param0, param1, param0->unk_18.unk_00 >> FX32_SHIFT);
    Font_InitManager(FONT_SUBSCREEN, param2);

    v0 = Font_CalcStrbufWidth(FONT_SUBSCREEN, param0->unk_14, 0);
    v1 = ((20 * 8) / 2) - (v0 / 2);

    Text_AddPrinterWithParamsAndColor(&param0->unk_00, FONT_SUBSCREEN, param0->unk_14, v1, 0, TEXT_SPEED_INSTANT, Unk_ov114_022600F8[param0->unk_10], NULL);
    Font_Free(FONT_SUBSCREEN);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
}

static void ov114_0225E2D4(UnkStruct_ov114_0225E1A4 *param0, UnkStruct_ov114_0225CEF0 *param1)
{
    param0->unk_2C = 0;
    param0->unk_2E = 0;

    ov114_0225CBF0(&param0->unk_18, Unk_ov114_02260110[param0->unk_10], Unk_ov114_022600E0[param0->unk_10], Unk_ov114_022600EC[param0->unk_10], 8);
    ov114_0225E500(param0, param1, param0->unk_18.unk_00 >> FX32_SHIFT);
}

static BOOL ov114_0225E31C(UnkStruct_ov114_0225E1A4 *param0, UnkStruct_ov114_0225CEF0 *param1)
{
    BOOL v0;

    switch (param0->unk_2E) {
    case 0:
        v0 = ov114_0225CC4C(&param0->unk_18, param0->unk_2C);
        ov114_0225E500(param0, param1, param0->unk_18.unk_00 >> FX32_SHIFT);
        param0->unk_2C++;

        if (v0 == 1) {
            Sound_PlayEffect(1385);

            ov114_0225CBF0(&param0->unk_18, Unk_ov114_02260110[param0->unk_10], Unk_ov114_0226011C[param0->unk_10], Unk_ov114_02260128[param0->unk_10], 4);
            param0->unk_2E++;
            param0->unk_2C = 0;
        }
        break;
    case 1:
        v0 = ov114_0225CC4C(&param0->unk_18, param0->unk_2C);
        ov114_0225E500(param0, param1, param0->unk_18.unk_00 >> FX32_SHIFT);
        param0->unk_2C++;

        if (v0 == 1) {
            ov114_0225CBF0(&param0->unk_18, Unk_ov114_0226011C[param0->unk_10], Unk_ov114_02260110[param0->unk_10], Unk_ov114_02260134[param0->unk_10], 4);
            param0->unk_2E++;
            param0->unk_2C = 0;
        }
        break;
    case 2:
        v0 = ov114_0225CC4C(&param0->unk_18, param0->unk_2C);
        ov114_0225E500(param0, param1, param0->unk_18.unk_00 >> FX32_SHIFT);
        param0->unk_2C++;

        if (v0 == 1) {
            param0->unk_2E++;
        }
        break;
    case 3:
        return 1;
    }

    return 0;
}

static BOOL ov114_0225E438(UnkStruct_ov114_0225E1A4 *param0, UnkStruct_ov114_0225CEF0 *param1)
{
    BOOL v0;

    switch (param0->unk_2E) {
    case 0:
        v0 = ov114_0225CC4C(&param0->unk_18, param0->unk_2C);
        ov114_0225E500(param0, param1, param0->unk_18.unk_00 >> FX32_SHIFT);
        param0->unk_2C++;

        if (v0 == 1) {
            param0->unk_2E++;
        }
        break;
    case 1:
        sub_0201ACF4(&param0->unk_00);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);

        ov114_0225E4B0(param0, param1, 0);

        sub_02019EBC(param1->unk_00, 0);
        sub_02019EBC(param1->unk_00, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
        return 1;
    }

    return 0;
}

static void ov114_0225E4B0(UnkStruct_ov114_0225E1A4 *param0, UnkStruct_ov114_0225CEF0 *param1, s32 param2)
{
    switch (param0->unk_10) {
    case UnkEnum_ov66_022324D0_00:
    case UnkEnum_ov66_022324D0_01:
        sub_02019184(param1->unk_00, 0, 0, param2);
        sub_02019184(param1->unk_00, 1, 0, param2);
        break;
    case UnkEnum_ov66_022324D0_02:
        sub_02019184(param1->unk_00, 0, 3, param2);
        sub_02019184(param1->unk_00, 1, 3, param2);
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

static void ov114_0225E500(UnkStruct_ov114_0225E1A4 *param0, UnkStruct_ov114_0225CEF0 *param1, s32 param2)
{
    switch (param0->unk_10) {
    case UnkEnum_ov66_022324D0_00:
    case UnkEnum_ov66_022324D0_01:
        sub_0201C63C(param1->unk_00, 0, 0, param2);
        sub_0201C63C(param1->unk_00, 1, 0, param2);
        break;
    case UnkEnum_ov66_022324D0_02:
        sub_0201C63C(param1->unk_00, 0, 3, param2);
        sub_0201C63C(param1->unk_00, 1, 3, param2);
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

static void ov114_0225E550(NARC *param0, u32 param1, u32 param2)
{
    u32 v0;

    switch (param1) {
    case UnkEnum_ov66_022324D0_00:
        v0 = 1;
        break;
    case UnkEnum_ov66_022324D0_01:
        v0 = 2;
        break;
    case UnkEnum_ov66_022324D0_02:
        v0 = 0;
        break;
    default:
        v0 = 1;
        break;
    }

    sub_02007148(param0, 5, 0, v0 * 32, 5 * 32, 32, param2);
    sub_02007148(param0, 5, 4, v0 * 32, 5 * 32, 32, param2);
}

static UnkStruct_ov114_0225E854 *ov114_0225E5A8(const UnkStruct_ov114_0225C76C *param0, const UnkStruct_ov114_0225C9A8 *param1, u32 param2, u32 param3)
{
    UnkStruct_ov114_0225E854 *v0;
    int v1;

    v0 = Heap_AllocFromHeap(param3, sizeof(UnkStruct_ov114_0225E854));
    memset(v0, 0, sizeof(UnkStruct_ov114_0225E854));
    memcpy(&v0->unk_1C, param1, sizeof(UnkStruct_ov114_0225C9A8));
    memcpy(&v0->unk_0C, param0, sizeof(UnkStruct_ov114_0225C76C));

    v0->unk_07 = param2;

    ov114_02260044(v0);

    G2_BlendNone();
    G2S_BlendNone();
    GX_SetVisibleWnd(0);
    GXS_SetVisibleWnd(0);

    GXLayers_SetBanks(&Unk_ov114_022601DC);

    v0->unk_02 = param3;

    ov114_0225E0F8(&v0->unk_34, &v0->unk_0C);
    sub_0201DBEC(16, param3);

    ov114_0225CEF0(&v0->unk_4C, &Unk_ov114_0226014C, Unk_ov114_02260324, 6, param3);
    ov114_0225CFCC(&v0->unk_A0, 32, 2, 2, param3);
    ov114_0225CCD0(&v0->unk_230, 2, param3);
    ov114_0225D084(&v0->unk_58, param3);
    ov114_0225E744(v0, param3);

    {
        BOOL v2;
        u32 v3;

        v3 = ov114_0225C78C(&v0->unk_0C, v0->unk_0C.unk_09);
        v2 = ov114_0225C7A4(&v0->unk_0C, v3);
        ov114_0225D290(&v0->unk_68, &v0->unk_4C, v0->unk_0C.unk_00, v2, param3);
    }

    ov114_0225F234(&v0->unk_24C, &v0->unk_4C, v0->unk_0C.unk_0A, param3);

    {
        int v4;

        v0->unk_05 = ov114_0225E14C(&v0->unk_0C, &v0->unk_34);
    }

    switch (v0->unk_07) {
    case UnkEnum_ov66_022324D0_00:
    case UnkEnum_ov66_022324D0_01:
        v0->unk_6A8 = SysTask_Start(ov114_0225E874, v0, 0);
        break;
    case UnkEnum_ov66_022324D0_02:
        v0->unk_6A8 = SysTask_Start(ov114_0225ED40, v0, 0);
        break;
    default:
        GF_ASSERT(0);
        v0->unk_6A8 = SysTask_Start(ov114_0225E874, v0, 0);
        break;
    }

    v0->unk_6AC = SysTask_ExecuteAfterVBlank(ov114_0225F124, v0, 0);

    if (v0->unk_0C.unk_0A) {
        ov4_021D1E74(param3);
    }

    return v0;
}

static void ov114_0225E744(UnkStruct_ov114_0225E854 *param0, u32 param1)
{
    NARC *v0;

    v0 = NARC_ctor(NARC_INDEX_RESOURCE__ENG__WIFI_LOBBY_MINIGAME__WLMNGM_TOOL, param1);

    sub_02007130(v0, 4, 0, 0, 9 * 32, param1);
    sub_02007130(v0, 4, 4, 0, 9 * 32, param1);
    sub_020070E8(v0, 6, param0->unk_4C.unk_00, 1, 0, 0, 0, param1);
    sub_020070E8(v0, 6, param0->unk_4C.unk_00, 5, 0, 0x4000, 0, param1);

    {
        int v1;

        for (v1 = 0; v1 < 1; v1++) {
            param0->unk_2B8[v1] = sub_020071D0(v0, 9 + v1, 0, &param0->unk_2BC[v1], param1);
        }
    }

    sub_0200710C(v0, 8, param0->unk_4C.unk_00, 3, 0, 0, 0, param1);
    sub_0200710C(v0, 8, param0->unk_4C.unk_00, 5, 0, 0, 0, param1);

    ov114_0225E550(v0, param0->unk_07, param1);

    param0->unk_248 = ov114_0225CD54(&param0->unk_230, v0, 11, 5, 12, 13, 14, 5000, param1);

    ov114_0225F148(param0, v0, param1);
    ov114_0225F484(&param0->unk_26C, &param0->unk_4C, &param0->unk_A0, &param0->unk_230, v0, param1);

    NARC_dtor(v0);
}

static void ov114_0225E854(UnkStruct_ov114_0225E854 *param0)
{
    ov114_0225F578(&param0->unk_26C);

    {
        int v0;

        for (v0 = 0; v0 < 1; v0++) {
            Heap_FreeToHeap(param0->unk_2B8[v0]);
        }
    }

    ov114_0225F224(param0);
}

static void ov114_0225E874(SysTask *param0, void *param1)
{
    UnkStruct_ov114_0225E854 *v0 = param1;
    BOOL v1;

    switch (v0->unk_04) {
    case 0:

        v0->unk_6B0 = v0->unk_0C.unk_0C->unk_00;

        if (v0->unk_0C.unk_0B == 1) {
            v0->unk_09 = 0;
        } else {
            u32 v2;

            v2 = ov114_0225F8FC(v0);

            if ((v0->unk_1C.unk_10[v0->unk_0C.unk_09] == 0) && (v0->unk_1C.unk_00[v0->unk_0C.unk_09] > v2)) {
                v0->unk_0C.unk_0C->unk_00 = ov114_0225E180(v0->unk_0C.unk_0C->unk_00);
                v0->unk_09 = 1;
            } else {
                v0->unk_09 = 0;
            }

            if (v0->unk_0C.unk_09 == 0) {
                ov114_0225F920(v0);
            }
        }

        sub_0200F174(3, 1, 1, 0xffff, 6, 1, v0->unk_02);
        v0->unk_04++;
        break;
    case 1:
        v1 = ScreenWipe_Done();

        if (v1) {
            v0->unk_04++;
        }
        break;
    case 2:
        ov114_0225D368(&v0->unk_68, &v0->unk_58, 1, 0);
        v0->unk_04++;
        break;
    case 3:
        v1 = ov114_0225D43C(&v0->unk_68, 0);

        if (v1) {
            v0->unk_00 = 64;
            v0->unk_04++;
        }
        break;
    case 4:
        if (v0->unk_00 > 0) {
            v0->unk_00--;

            if (v0->unk_00 == 0) {
                int v3;
                BOOL v4 = 1;
                u32 v5;

                ov114_0225D400(&v0->unk_68, 0);
                ov114_0225DF7C(&v0->unk_3A0, &v0->unk_4C, v0->unk_02);

                v5 = ov114_0225F8FC(v0);

                for (v3 = 0; v3 < v0->unk_0C.unk_08; v3++) {
                    if (v0->unk_1C.unk_00[v3] > v5) {
                        v4 = 0;
                    }
                }

                if (v4 == 1) {
                    v0->unk_6B6 = 16;
                    v0->unk_04 = 22;
                } else {
                    v0->unk_04++;
                    v0->unk_6B4 = 4;
                }
            }
        }
        break;
    case 5: {
        int v6;
        BOOL v7;

        v7 = 0;

        do {
            v0->unk_6B4--;

            for (v6 = 0; v6 < v0->unk_0C.unk_08; v6++) {
                if (v0->unk_1C.unk_10[v6] == v0->unk_6B4) {
                    v7 = 1;
                }
            }
        } while (v7 == 0);

        switch (v0->unk_6B4) {
        case 3:
        case 2:
            v0->unk_6B6 = 16;
            break;
        case 1:
        case 0:
            v0->unk_6B6 = 32;
            break;
        default:
            GF_ASSERT(0);
            break;
        }

        ov114_0225F7D8(v0);
        v0->unk_04++;
    } break;
    case 6:
        v0->unk_6B6--;
        ov114_0225F7D8(v0);

        if (v0->unk_6B6 > 0) {
            break;
        }

        {
            int v8;
            BOOL v9;

            for (v8 = 0; v8 < v0->unk_0C.unk_08; v8++) {
                v9 = 0;

                if (v0->unk_1C.unk_10[v8] == v0->unk_6B4) {
                    v9 = 1;
                } else {
                    if ((v0->unk_6B4 == 1) && (v0->unk_1C.unk_10[v8] == 0)) {
                        v9 = 1;
                    }
                }

                if (v9) {
                    ov114_0225F6E4(v0, v8, v0->unk_1C.unk_10[v8]);
                }
            }
        }

        if (v0->unk_6B4 > 1) {
            v0->unk_04 = 5;
        } else {
            v0->unk_04++;
        }
        break;
    case 7:
        if (ov114_0225F7D8(v0)) {
            v0->unk_04++;
        }
        break;
    case 8:
        v0->unk_04++;
        ov114_0225F168(v0);
        v0->unk_00 = 30;
        break;
    case 9:
        if (v0->unk_00 > 0) {
            v0->unk_00--;
        }

        if (v0->unk_00 == 0) {
            v0->unk_04 = 10;
            v0->unk_00 = 0;
        }
        break;
    case 10: {
        u32 v10;

        if (v0->unk_1C.unk_10[v0->unk_0C.unk_09] == 0) {
            v10 = 17;
        } else {
            v10 = 18;
        }

        ov114_0225D104(&v0->unk_58, v0->unk_34.unk_08[v0->unk_0C.unk_09]);
        ov114_0225D368(&v0->unk_68, &v0->unk_58, v10, 0);
    }
        v0->unk_04++;
        break;
    case 11:
        v1 = ov114_0225D43C(&v0->unk_68, 0);

        if (v1) {
            if (ov114_0225F860(v0) == 1) {
                if (v0->unk_0C.unk_0B == 1) {
                    v0->unk_00 = 102;
                    v0->unk_04 = 14;
                } else {
                    v0->unk_00 = 102;
                    v0->unk_04++;
                }
            }
        }
        break;
    case 12:
        if (v0->unk_00 > 0) {
            v0->unk_00--;
            break;
        }

        {
            u32 v11;

            if (v0->unk_09) {
                ov114_0225D170(&v0->unk_58, v0->unk_0C.unk_0C->unk_00);

                if (v0->unk_6B0 == v0->unk_0C.unk_0C->unk_00) {
                    v11 = 19;
                } else {
                    v11 = 2;
                }
            } else {
                v11 = 9;
            }

            ov114_0225D104(&v0->unk_58, v0->unk_34.unk_08[v0->unk_0C.unk_09]);
            ov114_0225D368(&v0->unk_68, &v0->unk_58, v11, 0);
        }
        v0->unk_04 = 13;
        break;
    case 13:
        v1 = ov114_0225D43C(&v0->unk_68, 0);

        if (v1) {
            v0->unk_00 = 102;
            v0->unk_04++;
        }
        break;
    case 14:
        if (v0->unk_00 > 0) {
            v0->unk_00--;

            if (v0->unk_00 == 0) {
                ov114_0225D400(&v0->unk_68, 0);
                v0->unk_00 = 30;
                v0->unk_04++;
            }
        }
        break;
    case 15:
        if (v0->unk_00 > 0) {
            v0->unk_00--;
        } else {
            CommTiming_StartSync(130);

            if (v0->unk_0C.unk_0A) {
                ov4_021D1F18();
            }

            v0->unk_04++;
        }
        break;
    case 16:
        if (CommTiming_IsSyncState(130)) {
            if (v0->unk_0C.unk_0B) {
                v0->unk_04 = 19;
            } else {
                v0->unk_04++;
            }
        }
        break;
    case 17:
        sub_0200F174(3, 0, 0, 0x0, 6, 1, v0->unk_02);
        v0->unk_04++;
        break;
    case 18:
        v1 = ScreenWipe_Done();

        if (v1) {
            v0->unk_04 = 21;
        }
        break;
    case 19:
        ov114_0225F890(v0);
        v0->unk_04++;
        break;
    case 20:
        v1 = ov114_0225F27C(&v0->unk_24C, &v0->unk_68, &v0->unk_58, v0->unk_07, v0->unk_02);

        if (v1) {
            v0->unk_08 = ov114_0225F420(&v0->unk_24C);
            v0->unk_04++;
        }
        break;
    case 21:
        ov114_0225DFFC(&v0->unk_3A0);
        v0->unk_06 = 1;
        break;
    case 22:
        v0->unk_6B6--;

        if (v0->unk_6B6 <= 0) {
            v0->unk_04++;
        }
        break;
    case 23: {
        int v12;

        for (v12 = 0; v12 < v0->unk_0C.unk_08; v12++) {
            v0->unk_1C.unk_10[v12] = v0->unk_0C.unk_08 - 1;
            ov114_0225F6E4(v0, v12, v0->unk_1C.unk_10[v12]);
        }

        v0->unk_04 = 7;
    } break;
    }

    ov114_0225F19C(v0);
    ov114_0225D070(&v0->unk_A0);

    sub_0201C63C(v0->unk_4C.unk_00, 3, 4, 2);
    sub_0201C63C(v0->unk_4C.unk_00, 5, 4, 2);
}

static void ov114_0225ED40(SysTask *param0, void *param1)
{
    UnkStruct_ov114_0225E854 *v0 = param1;
    BOOL v1;

    switch (v0->unk_04) {
    case 0:
        if (v0->unk_0C.unk_0B == 1) {
            v0->unk_09 = 0;
        } else {
            if (v0->unk_1C.unk_14 >= 10) {
                v0->unk_0C.unk_0C->unk_00 = ov114_0225E180(v0->unk_0C.unk_0C->unk_00);
                v0->unk_09 = 1;
            } else {
                v0->unk_09 = 0;
            }

            if (v0->unk_0C.unk_09 == 0) {
                ov114_0225F988(v0);
            }
        }

        sub_0200F174(3, 1, 1, 0xffff, 6, 1, v0->unk_02);
        v0->unk_04++;
        break;
    case 1:
        v1 = ScreenWipe_Done();

        if (v1) {
            v0->unk_04++;

            v0->unk_6B4 = 4;
        }
        break;
    case 2:
        ov114_0225D368(&v0->unk_68, &v0->unk_58, 1, 0);
        v0->unk_04++;
        break;
    case 3:
        v1 = ov114_0225D43C(&v0->unk_68, 0);

        if (v1) {
            v0->unk_00 = 102;
            v0->unk_04++;
        }
        break;
    case 4:
        if (v0->unk_00 > 0) {
            v0->unk_00--;

            if (v0->unk_00 == 0) {
                ov114_0225D400(&v0->unk_68, 0);
                v0->unk_04++;
            }
        }
        break;
    case 5: {
        int v2;
        BOOL v3;
        u32 v4;

        ov114_0225DF7C(&v0->unk_3A0, &v0->unk_4C, v0->unk_02);

        for (v2 = 0; v2 < v0->unk_0C.unk_08; v2++) {
            ov114_0225DAC0(&v0->unk_2C0[v2], v0->unk_0C.unk_08, v0->unk_07, v0->unk_2BC[0], &v0->unk_4C, v2, v0->unk_0C.unk_09, &v0->unk_A0, v0->unk_248, v0->unk_02);

            v4 = ov114_0225C78C(&v0->unk_0C, v2);
            v3 = ov114_0225C7A4(&v0->unk_0C, v4);

            ov114_0225DC44(&v0->unk_2C0[v2], &v0->unk_58, v0->unk_34.unk_08[v2], 8, 0, v3);
            ov114_0225DCA0(&v0->unk_2C0[v2], &v0->unk_58, v0->unk_05, v0->unk_34.unk_00[v2], v0->unk_34.unk_04[v2], 8);
            ov114_0225DD80(&v0->unk_2C0[v2], &v0->unk_4C);
            ov114_0225DD94(&v0->unk_2C0[v2]);
            ov114_0225DDD4(&v0->unk_2C0[v2], -8, 3 * v2);
        }
    }
        v0->unk_04++;
        v0->unk_00 = 16;
        break;
    case 6:
        v1 = ov114_0225F7D8(v0);

        if (v1 == 1) {
            v0->unk_00--;

            if (v0->unk_00 <= 0) {
                ov114_0225F598(&v0->unk_26C, v0->unk_1C.unk_14);
                v0->unk_04++;
            }
        }
        break;
    case 7:
        v1 = ov114_0225F5AC(&v0->unk_26C, &v0->unk_4C);

        if (v1 == 1) {
            if (v0->unk_09 == 1) {
                ov114_0225F83C(v0);
            }

            v0->unk_04++;
        }
        break;
    case 8:
        ov114_0225D154(&v0->unk_58, v0->unk_1C.unk_14);
        ov114_0225D368(&v0->unk_68, &v0->unk_58, 7, 0);
        v0->unk_00 = 102;
        v0->unk_04++;
        break;
    case 9:
        v1 = ov114_0225D43C(&v0->unk_68, 0);

        if (v1 == 1) {
            if (v0->unk_00 <= 0) {
                if (ov114_0225F860(v0) == 1) {
                    if (v0->unk_0C.unk_0B == 1) {
                        v0->unk_00 = 102;
                        v0->unk_04 = 12;
                    } else {
                        v0->unk_04++;
                    }
                }
            } else {
                v0->unk_00--;
            }
        }
        break;
    case 10: {
        u32 v5;

        if (v0->unk_09) {
            v5 = 8;
        } else {
            v5 = 9;
        }

        ov114_0225D368(&v0->unk_68, &v0->unk_58, v5, 0);
    }
        v0->unk_04++;
        break;
    case 11:
        v1 = ov114_0225D43C(&v0->unk_68, 0);

        if (v1) {
            v0->unk_00 = 102;

            if (v0->unk_09) {
                v0->unk_04 = 13;
            } else {
                v0->unk_04++;
            }
        }
        break;
    case 12:
        if (v0->unk_00 > 0) {
            v0->unk_00--;

            if (v0->unk_00 == 0) {
                v0->unk_04 = 14;
            }
        }
        break;
    case 13:
        if (v0->unk_00 > 0) {
            v0->unk_00--;
        }

        if (v0->unk_00 == 0) {
            v0->unk_04 = 14;
        }
        break;
    case 14:
        if (v0->unk_0C.unk_0A) {
            ov4_021D1F18();
        }

        CommTiming_StartSync(130);
        v0->unk_04++;
        break;
    case 15:
        if (CommTiming_IsSyncState(130)) {
            if (v0->unk_0C.unk_0B) {
                v0->unk_04 = 18;
            } else {
                v0->unk_04++;
            }
        }
        break;
    case 16:
        sub_0200F174(3, 0, 0, 0x0, 6, 1, v0->unk_02);
        v0->unk_04++;
        break;
    case 17:
        v1 = ScreenWipe_Done();

        if (v1) {
            v0->unk_04 = 20;
        }
        break;
    case 18:
        ov114_0225F890(v0);
        v0->unk_04++;
        break;
    case 19:
        v1 = ov114_0225F27C(&v0->unk_24C, &v0->unk_68, &v0->unk_58, v0->unk_07, v0->unk_02);

        if (v1) {
            v0->unk_08 = ov114_0225F420(&v0->unk_24C);
            v0->unk_04++;
        }
        break;
    case 20:
        ov114_0225DFFC(&v0->unk_3A0);
        v0->unk_06 = 1;
        break;
    }

    ov114_0225F19C(v0);
    ov114_0225D070(&v0->unk_A0);

    sub_0201C63C(v0->unk_4C.unk_00, 3, 4, 2);
    sub_0201C63C(v0->unk_4C.unk_00, 5, 4, 2);
}

static void ov114_0225F124(SysTask *param0, void *param1)
{
    UnkStruct_ov114_0225E854 *v0 = param1;

    sub_0201DCAC();

    ov114_0225CFC0(&v0->unk_4C);
    ov114_0225D07C(&v0->unk_A0);
    ov114_0225E08C(&v0->unk_3A0);
}

static void ov114_0225F148(UnkStruct_ov114_0225E854 *param0, NARC *param1, u32 param2)
{
    param0->unk_6B8 = sub_020071EC(param1, 5, &param0->unk_6BC, param2);
}

static void ov114_0225F168(UnkStruct_ov114_0225E854 *param0)
{
    int v0;

    param0->unk_6C2 = 1;

    for (v0 = 0; v0 < param0->unk_0C.unk_08; v0++) {
        if (param0->unk_1C.unk_10[v0] == 0) {
            if (param0->unk_0C.unk_09 == v0) {
                ov114_0225F83C(param0);
                break;
            }
        }
    }
}

static void ov114_0225F19C(UnkStruct_ov114_0225E854 *param0)
{
    int v0;
    u32 v1;
    u8 *v2;
    BOOL v3;

    if (param0->unk_6C2 == 0) {
        return;
    }

    if ((param0->unk_6C0 == 0) || (param0->unk_6C0 == 8)) {
        for (v0 = 0; v0 < param0->unk_0C.unk_08; v0++) {
            if (param0->unk_1C.unk_10[v0] == 0) {
                v1 = (Unk_ov114_022600D4[v0] * 32);
                v2 = param0->unk_6BC->pRawData;

                if (param0->unk_6C0 == 0) {
                    v2 += ((3 + Unk_ov114_022600D4[v0]) * 32);
                } else {
                    v2 += ((7 + Unk_ov114_022600D4[v0]) * 32);
                }

                v3 = sub_0201DC68(NNS_GFD_DST_2D_BG_PLTT_MAIN, v1, v2, 32);
                GF_ASSERT(v3);
            }
        }
    }

    param0->unk_6C0 = (param0->unk_6C0 + 1) % (8 * 2);
}

static void ov114_0225F224(UnkStruct_ov114_0225E854 *param0)
{
    Heap_FreeToHeap(param0->unk_6B8);
}

static void ov114_0225F234(UnkStruct_ov114_0225F270 *param0, UnkStruct_ov114_0225CEF0 *param1, u32 param2, u32 param3)
{
    memset(param0, 0, sizeof(UnkStruct_ov114_0225F270));

    param0->unk_08.unk_00 = param1->unk_00;
    param0->unk_08.unk_04 = 4;
    param0->unk_08.unk_08 = ((1 + (18 + 12)) + (27 * 4));
    param0->unk_08.unk_0C = 2;
    param0->unk_08.unk_10 = 24;
    param0->unk_08.unk_11 = 8;
    param0->unk_04 = sub_02015920(param3);
    param0->unk_01 = param2;
    param0->unk_1D = 1;
}

static void ov114_0225F270(UnkStruct_ov114_0225F270 *param0)
{
    sub_02015938(param0->unk_04);
}

static BOOL ov114_0225F27C(UnkStruct_ov114_0225F270 *param0, UnkStruct_ov114_0225D338 *param1, UnkStruct_ov114_0225D084 *param2, u32 param3, u32 param4)
{
    u32 v0;

    switch (param0->unk_00) {
    case 0:
        sub_0200F174(0, 0, 1, 0x0, 6, 1, param4);
        sub_020397C8(0, param4);

        if (param0->unk_01) {
            ov4_021D1E74(param4);
        }

        param0->unk_00++;
        break;
    case 1:
        if (ScreenWipe_Done()) {
            param0->unk_00++;
        }
        break;
    case 2:
        ov114_0225D180(param2, param3);
        ov114_0225D368(param1, param2, 3, 1);
        param0->unk_00++;
        break;
    case 3:
        v0 = ov114_0225D43C(param1, 1);

        if (v0 == 1) {
            param0->unk_00++;
        }
        break;
    case 4:
        sub_02015958(param0->unk_04, &param0->unk_08);
        param0->unk_00++;
        break;
    case 5:
        v0 = sub_020159FC(param0->unk_04);

        if ((v0 == 1) || (v0 == 2)) {
            if (v0 == 1) {
                CommSys_SendData(22, NULL, 0);
            } else if (v0 == 2) {
                CommSys_SendData(23, NULL, 0);
            }

            ov114_0225D368(param1, param2, 15, 1);
            ov114_0225D458(param1, 1);

            param0->unk_00++;
        }

        break;
    case 6:
        if (param0->unk_1E) {
            if (param0->unk_1F) {
                param0->unk_00 = 10;
            } else {
                param0->unk_00++;
            }
        }
        break;
    case 7:
        ov114_0225D368(param1, param2, 6, 1);
        param0->unk_00++;
        break;
    case 8:
        v0 = ov114_0225D43C(param1, 1);

        if (v0 == 1) {
            param0->unk_00++;
            param0->unk_02 = 102;
        }
        break;
    case 9:
        param0->unk_02--;

        if (param0->unk_02 == 0) {
            param0->unk_00++;
        }
        break;
    case 10:
        sub_0200F174(4, 0, 0, 0x0, 6, 1, param4);
        param0->unk_00++;
        break;
    case 11:
        if (ScreenWipe_Done()) {
            sub_02039794();

            if (param0->unk_01) {
                ov4_021D1F18();
            }

            param0->unk_00++;
        }
        break;
    case 12:
        return 1;
    }

    return 0;
}

static BOOL ov114_0225F420(const UnkStruct_ov114_0225F270 *param0)
{
    return param0->unk_1F;
}

static void ov114_0225F424(UnkStruct_ov114_0225F270 *param0, u32 param1, BOOL param2, u32 param3)
{
    if ((param0->unk_1C & (1 << param1)) == 0) {
        if (param2 == 0) {
            param0->unk_1D = 0;
        }

        param0->unk_1C |= (1 << param1);
    }

    {
        int v0;
        int v1;

        v1 = 0;

        for (v0 = 0; v0 < 4; v0++) {
            if (param0->unk_1C & (1 << v0)) {
                v1++;
            }
        }

        if (v1 == param3) {
            if (param0->unk_1D) {
                CommSys_SendData(24, NULL, 0);
            } else {
                CommSys_SendData(25, NULL, 0);
            }
        }
    }
}

static void ov114_0225F47C(UnkStruct_ov114_0225F270 *param0, BOOL param1)
{
    param0->unk_1E = 1;
    param0->unk_1F = param1;
}

static void ov114_0225F484(UnkStruct_ov114_0225F578 *param0, UnkStruct_ov114_0225CEF0 *param1, UnkStruct_ov114_0225CFCC *param2, UnkStruct_ov114_0225CCD0 *param3, NARC *param4, u32 param5)
{
    memset(param0, 0, sizeof(UnkStruct_ov114_0225F578));

    {
        sub_02007130(param4, 24, 0, (13 + 1) * 32, 32, param5);
        sub_020070E8(param4, 25, param1->unk_00, 2, ((1 + (18 + 12)) + (27 * 4)), 0, 0, param5);
        param0->unk_00 = sub_020071D0(param4, 26, 0, &param0->unk_04, param5);
    }

    {
        int v0, v1;
        int v2;
        int v3, v4;

        param0->unk_44 = ov114_0225CD54(param3, param4, 15, 1, 16, 17, 18, (5000 + 1), param5);

        v4 = 40;

        for (v0 = 0; v0 < 3; v0++) {
            v3 = 74;

            for (v1 = 0; v1 < 5; v1++) {
                v2 = (v0 * 5) + v1;
                param0->unk_08[v2] = ov114_0225CDB4(param0->unk_44, param2->unk_00, v3, v4, 0, param5);
                CellActor_SetDrawFlag(param0->unk_08[v2], 0);
                CellActor_SetAnim(param0->unk_08[v2], v0);
                CellActor_SetExplicitPriority(param0->unk_08[v2], 0);

                v3 += 24;
            }

            v4 += 36;
        }
    }
}

static void ov114_0225F578(UnkStruct_ov114_0225F578 *param0)
{
    {
        int v0;

        for (v0 = 0; v0 < (5 * 3); v0++) {
            CellActor_Delete(param0->unk_08[v0]);
        }
    }

    {
        Heap_FreeToHeap(param0->unk_00);
    }
}

static void ov114_0225F598(UnkStruct_ov114_0225F578 *param0, u32 param1)
{
    param0->unk_4B = param1;
    param0->unk_48 = 0;
    param0->unk_4A = 0;
}

static BOOL ov114_0225F5AC(UnkStruct_ov114_0225F578 *param0, UnkStruct_ov114_0225CEF0 *param1)
{
    switch (param0->unk_48) {
    case 0:

        ov114_0225CCB0(param0->unk_04, ((1 + (18 + 12)) + (27 * 4)));
        sub_020198C0(param1->unk_00, 2, param0->unk_04->rawData, 0, 0, 32, 20);
        sub_02019E2C(param1->unk_00, 2, 0, 0, 32, 20, (13 + 1));
        sub_0201C3C0(param1->unk_00, 2);
        param0->unk_48++;
        break;
    case 1:
        if (param0->unk_4A == param0->unk_4B) {
            param0->unk_48 = 3;
            break;
        }

        Sound_PlayEffect(1404);
        CellActor_SetDrawFlag(param0->unk_08[(param0->unk_4A % (5 * 3))], 1);
        param0->unk_49 = 8;
        param0->unk_48++;
        break;
    case 2:
        param0->unk_49--;

        if (param0->unk_49 == 0) {
            param0->unk_4A++;

            if ((param0->unk_4A % (5 * 3)) == 0) {
                int v0;

                if (param0->unk_4A != param0->unk_4B) {
                    for (v0 = 0; v0 < (5 * 3); v0++) {
                        CellActor_SetDrawFlag(param0->unk_08[v0], 0);
                        CellActor_SetAnim(param0->unk_08[v0], 2);
                    }
                }
            }

            param0->unk_48 = 1;
        }
        break;
    case 3:
        return 1;
    }

    return 0;
}

static void ov114_0225F6E4(UnkStruct_ov114_0225E854 *param0, u32 param1, u32 param2)
{
    BOOL v0;
    u32 v1;
    u32 v2;

    ov114_0225DAC0(&param0->unk_2C0[param1], param0->unk_0C.unk_08, param0->unk_07, param0->unk_2BC[0], &param0->unk_4C, param1, param0->unk_0C.unk_09, &param0->unk_A0, param0->unk_248, param0->unk_02);

    v2 = ov114_0225C78C(&param0->unk_0C, param1);
    v0 = ov114_0225C7A4(&param0->unk_0C, v2);

    ov114_0225DC44(&param0->unk_2C0[param1], &param0->unk_58, param0->unk_34.unk_08[param1], 8, 0, v0);
    ov114_0225DCA0(&param0->unk_2C0[param1], &param0->unk_58, param0->unk_05, param0->unk_34.unk_00[param1], param0->unk_34.unk_04[param1], 8);

    if (param0->unk_07 == UnkEnum_ov66_022324D0_00) {
        v1 = 5;
    } else {
        v1 = 6;
    }

    ov114_0225DD2C(&param0->unk_2C0[param1], &param0->unk_58, param0->unk_1C.unk_00[param1], 176 + (-Unk_ov114_022600D8[4 - (param2 + 1)]), 0, v1);
    ov114_0225DD80(&param0->unk_2C0[param1], &param0->unk_4C);
    ov114_0225DD0C(&param0->unk_2C0[param1], param2);
    ov114_0225DDD4(&param0->unk_2C0[param1], Unk_ov114_022600D8[param2], 0);
}

static BOOL ov114_0225F7D8(UnkStruct_ov114_0225E854 *param0)
{
    int v0;
    BOOL v1;
    BOOL v2 = 1;

    for (v0 = 0; v0 < param0->unk_0C.unk_08; v0++) {
        if (param0->unk_2C0[v0].unk_10 != NULL) {
            v1 = ov114_0225DE70(&param0->unk_2C0[v0]);
            ov114_0225E028(&param0->unk_3A0, &param0->unk_2C0[v0]);

            if (v1 == 0) {
                v2 = 0;
            }
        } else {
            v2 = 0;
        }
    }

    return v2;
}

static void ov114_0225F83C(UnkStruct_ov114_0225E854 *param0)
{
    if (param0->unk_6C4 == 0) {
        sub_02006150(1222);
        param0->unk_6C4 = 1;
    }
}

static BOOL ov114_0225F860(UnkStruct_ov114_0225E854 *param0)
{
    if (param0->unk_6C4 == 1) {
        if (sub_020061E4() == 0) {
            param0->unk_6C4 = 0;
        }
    }

    if (param0->unk_6C4 == 1) {
        return 0;
    } else {
        return 1;
    }
}

static void ov114_0225F890(UnkStruct_ov114_0225E854 *param0)
{
    UnkStruct_0202B370 *v0 = sub_0202B370(param0->unk_0C.unk_00);
    int v1;
    int v2, v3;
    int v4;
    DWCFriendData *v5;

    for (v1 = 0; v1 < param0->unk_0C.unk_08; v1++) {
        v2 = param0->unk_0C.unk_04[v1];
        v5 = CommInfo_DWCFriendData(v2);
        v3 = sub_0203909C(param0->unk_0C.unk_00, v5, &v4);

        switch (v3) {
        case 0:
        case 1:
            switch (param0->unk_07) {
            case UnkEnum_ov66_022324D0_00:
                sub_0202B1F8(v0, v4, 1);
                break;
            case UnkEnum_ov66_022324D0_01:
                sub_0202B220(v0, v4, 1);
                break;
            case UnkEnum_ov66_022324D0_02:
                sub_0202B248(v0, v4, 1);
                break;
            }
            break;
        default:
            break;
        }
    }
}

static u32 ov114_0225F8FC(const UnkStruct_ov114_0225E854 *param0)
{
    u32 v0;

    switch (param0->unk_07) {
    case UnkEnum_ov66_022324D0_00:
        v0 = 0;
        break;
    case UnkEnum_ov66_022324D0_01:
        v0 = 0;
        break;
    case UnkEnum_ov66_022324D0_02:
        GF_ASSERT(0);
        v0 = 0;
        break;
    }

    return v0;
}

static void ov114_0225F920(UnkStruct_ov114_0225E854 *param0)
{
    int v0;
    u32 v1[4] = { 0 };
    u32 v2;
    u32 v3;

    v2 = 0;
    v3 = ov114_0225F8FC(param0);

    for (v0 = 0; v0 < param0->unk_0C.unk_08; v0++) {
        if ((param0->unk_1C.unk_10[v0] == 0) && (param0->unk_1C.unk_00[v0] != v3)) {
            v1[v2] = param0->unk_0C.unk_0C->unk_04.unk_00[v0];
            v2++;
        }
    }

    if (v2 > 0) {
        ov66_0222EAB4(param0->unk_0C.unk_0C->unk_30, param0->unk_07, v2, v1[0], v1[1], v1[2], v1[3]);
    }
}

static void ov114_0225F988(UnkStruct_ov114_0225E854 *param0)
{
    if (param0->unk_0C.unk_08 > 0) {
        if (param0->unk_1C.unk_14 >= 10) {
            ov66_0222EAB4(param0->unk_0C.unk_0C->unk_30, param0->unk_07, param0->unk_0C.unk_08, param0->unk_0C.unk_0C->unk_04.unk_00[0], param0->unk_0C.unk_0C->unk_04.unk_00[1], param0->unk_0C.unk_0C->unk_04.unk_00[2], param0->unk_0C.unk_0C->unk_04.unk_00[3]);
        }
    }
}

static void ov114_0225F9B8(UnkStruct_ov114_0225FAB8 *param0, UnkStruct_ov114_0225CDB4 *param1, CellActorCollection *param2, u32 param3)
{
    int v0;
    int v1;

    memset(param0->unk_0C[0], 0, 192);
    memset(param0->unk_0C[1], 0, 192);

    param0->unk_08 = 0;
    param0->unk_0A = 0;
    param0->unk_18C = NULL;

    for (v0 = 0; v0 < 2; v0++) {
        param0->unk_00[v0] = ov114_0225CDB4(param1, param2, Unk_ov114_0226019C[v0].x >> FX32_SHIFT, Unk_ov114_0226019C[v0].y >> FX32_SHIFT, 0, param3);
        CellActor_SetAnim(param0->unk_00[v0], 5);
        CellActor_SetExplicitPriority(param0->unk_00[v0], 0);
    }

    v1 = GX_GetVisibleWnd();
    v1 &= ~GX_WNDMASK_W0;

    GX_SetVisibleWnd(v1);
    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    G2_SetWnd0Position(0, 0, 0, 0);

    param0->unk_190 = G2_GetWndOutsidePlane();
    param0->unk_194 = GX_GetVisibleWnd() & GX_WNDMASK_W1;
    param0->battlerType.planeMask = GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3;
    param0->battlerType.effect = 1;

    SetHBlankCallback(ov114_0225FCF0, param0);
    CellActor_SetFlipMode(param0->unk_00[1], 2);

    ov114_0225FC6C(param0);
}

static BOOL ov114_0225FAB8(UnkStruct_ov114_0225FAB8 *param0)
{
    BOOL v0 = 0;

    param0->unk_08++;

    if (param0->unk_08 >= 8) {
        param0->unk_08 = 8;
        v0 = 1;
    }

    ov114_0225FB10(param0, 1);

    return v0;
}

static BOOL ov114_0225FAD8(UnkStruct_ov114_0225FAB8 *param0)
{
    BOOL v0 = 0;

    param0->unk_08--;

    if (param0->unk_08 <= 0) {
        param0->unk_08 = 1;
        v0 = 1;

        CellActor_SetDrawFlag(param0->unk_00[0], 0);
        CellActor_SetDrawFlag(param0->unk_00[1], 0);
    }

    ov114_0225FB10(param0, -1);

    return v0;
}

static void ov114_0225FB10(UnkStruct_ov114_0225FAB8 *param0, s32 param1)
{
    VecFx32 v0;
    int v1;
    int v2;

    param0->unk_0A = (param0->unk_08 * 23) / 8;

    if (((param0->unk_08 + param1) <= 8) && ((param0->unk_08 + param1) >= 0)) {
        v2 = ((param0->unk_08 + param1) * 23) / 8;
    } else {
        v2 = param0->unk_0A;
    }

    for (v1 = 0; v1 < 2; v1++) {
        v0 = Unk_ov114_0226019C[v1];

        if (v1 == 0) {
            v0.y -= FX32_CONST(v2);
        } else {
            v0.y += FX32_CONST(v2);
        }

        CellActor_SetPosition(param0->unk_00[v1], &v0);
    }

    ov114_0225FC6C(param0);
}

static void ov114_0225FBF0(UnkStruct_ov114_0225FAB8 *param0)
{
    int v0;

    if (param0->unk_18C) {
        SysTask_Done(param0->unk_18C);
        param0->unk_18C = NULL;
    }

    for (v0 = 0; v0 < 2; v0++) {
        if (param0->unk_00[v0] != NULL) {
            CellActor_Delete(param0->unk_00[v0]);
            param0->unk_00[v0] = NULL;
        }
    }

    DisableHBlank();

    GX_SetVisibleWnd(param0->unk_194);
    G2_SetWndOutsidePlane(param0->unk_190.planeMask, param0->unk_190.effect);
}

static void ov114_0225FC6C(UnkStruct_ov114_0225FAB8 *param0)
{
    int v0;

    memset(param0->unk_0C[1], 0, 192);

    for (v0 = 0; v0 < 23 - param0->unk_0A; v0++) {
        param0->unk_0C[1][(96 - 23) + v0] = 1;
        param0->unk_0C[1][((96 + 2) + 23) - v0] = 1;
    }

    if (param0->unk_18C == NULL) {
        param0->unk_18C = SysTask_ExecuteAfterVBlank(ov114_0225FCCC, param0, 0);
    }
}

static void ov114_0225FCCC(SysTask *param0, void *param1)
{
    UnkStruct_ov114_0225FAB8 *v0 = param1;

    memcpy(v0->unk_0C[0], v0->unk_0C[1], 192);
    SysTask_Done(v0->unk_18C);

    v0->unk_18C = NULL;
}

static void ov114_0225FCF0(void *param0)
{
    UnkStruct_ov114_0225FAB8 *v0 = param0;
    s32 v1;
    int v2;

    v1 = GX_GetVCount();
    v1 = (v1 + 1) % 256;

    if (v1 < 192) {
        v2 = GX_GetVisibleWnd();

        if (GX_IsHBlank()) {
            if ((v1 < (96 - 23)) || (v1 > ((96 + 2) + 23))) {
                G2_SetWndOutsidePlane(v0->unk_190.planeMask, v0->unk_190.effect);
                v2 |= v0->unk_194;
            } else {
                G2_SetWndOutsidePlane(v0->battlerType.planeMask, v0->battlerType.effect);
                v2 &= ~(GX_WNDMASK_W1 | v0->unk_194);
            }

            if (v0->unk_0C[0][v1] == 1) {
                GX_SetVisibleWnd(v2 | GX_WNDMASK_W0);
            } else {
                v2 &= ~GX_WNDMASK_W0;
                GX_SetVisibleWnd(v2);
            }
        }
    }
}

static void ov114_0225FDC8(SysTask *param0, void *param1)
{
    UnkStruct_ov114_0225CAD4 *v0 = param1;
    BOOL v1;
    u16 v2;
    u16 v3;

    switch (v0->unk_04) {
    case 0:
        break;
    case 1:
        ov114_0225F9B8(&v0->unk_34, v0->unk_28, v0->unk_08, v0->unk_00);
        v0->unk_30 = ov114_0225CDB4(v0->unk_28, v0->unk_08, 128, 97, 64, v0->unk_00);
        CellActor_SetExplicitPriority(v0->unk_30, 0);
        v0->unk_04++;
        break;
    case 2:
        v1 = ov114_0225FAB8(&v0->unk_34);

        if (v1 == 1) {
            v0->unk_04++;
            v0->unk_06 = 0;
        }
        break;
    case 3:
        v2 = CellActor_GetAnimFrame(v0->unk_30);
        CellActor_UpdateAnim(v0->unk_30, FX32_CONST(2));
        v3 = CellActor_GetAnimFrame(v0->unk_30);

        if (v2 != v3) {
            switch (v3) {
            case 7:
                Sound_PlayEffect(1501);
                break;
            case 9:
                Sound_PlayEffect(1501);
                break;
            case 11:
                Sound_PlayEffect(1501);
                break;
            case 13:
                Sound_PlayEffect(1501);
                break;
            case 15:
                Sound_PlayEffect(1603);
                break;
            default:
                break;
            }
        }

        if (v3 == 15) {
            if (v0->unk_06 == 0) {
                CellActor_SetExplicitPaletteOffsetAutoAdjust(v0->unk_30, 0);
            } else if (v0->unk_06 == 4) {
                CellActor_SetExplicitPaletteOffsetAutoAdjust(v0->unk_30, 1);
            }

            v0->unk_06++;

            if (v0->unk_06 >= 4 * 2) {
                v0->unk_06 = 0;
            }
        }

        v1 = CellActor_IsAnimated(v0->unk_30);

        if (v1 == 0) {
            v0->unk_04++;
            CellActor_SetExplicitPaletteOffsetAutoAdjust(v0->unk_30, 0);
        }
        break;
    case 4:
        v1 = ov114_0225FAD8(&v0->unk_34);

        if (v1 == 1) {
            CellActor_Delete(v0->unk_30);
            v0->unk_30 = NULL;
            v0->unk_04++;
            v0->unk_06 = 0;
        }
        break;
    case 5:
        v0->unk_06++;

        if (v0->unk_06 < 2) {
            break;
        }

        v0->unk_04 = 0;

        ov114_0225FBF0(&v0->unk_34);
        SysTask_Done(v0->unk_2C);
        v0->unk_2C = NULL;
        break;
    default:
        break;
    }
}

static void ov114_0225FF54(SysTask *param0, void *param1)
{
    UnkStruct_ov114_0225CAD4 *v0 = param1;
    BOOL v1;

    switch (v0->unk_04) {
    case 0:
        break;
    case 1:
        ov114_0225F9B8(&v0->unk_34, v0->unk_28, v0->unk_08, v0->unk_00);
        v0->unk_30 = ov114_0225CDB4(v0->unk_28, v0->unk_08, 128, 97, 64, v0->unk_00);
        CellActor_SetAnim(v0->unk_30, 1);
        CellActor_SetExplicitPriority(v0->unk_30, 0);
        v0->unk_04++;
        break;
    case 2:
        v1 = ov114_0225FAB8(&v0->unk_34);

        if (v1 == 1) {
            CellActor_SetAnimateFlag(v0->unk_30, 1);
            v0->unk_04++;
            v0->unk_06 = 0;
        }
        break;
    case 3:
        v0->unk_06++;

        if (v0->unk_06 >= 50) {
            v0->unk_04++;
        }
        break;
    case 4:
        v1 = ov114_0225FAD8(&v0->unk_34);

        if (v1 == 1) {
            CellActor_Delete(v0->unk_30);
            v0->unk_30 = NULL;
            v0->unk_06 = 0;
            v0->unk_04++;
        }
        break;
    case 5:
        v0->unk_06++;

        if (v0->unk_06 < 2) {
            break;
        }

        v0->unk_04 = 0;

        ov114_0225FBF0(&v0->unk_34);
        SysTask_Done(v0->unk_2C);
        v0->unk_2C = NULL;
        break;
    default:
        break;
    }
}
