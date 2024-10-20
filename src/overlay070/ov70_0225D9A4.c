#include "overlay070/ov70_0225D9A4.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_02023FCC_decl.h"
#include "struct_defs/struct_0200C738.h"
#include "struct_defs/struct_02013A04_t.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0207C690.h"
#include "struct_defs/struct_02099F80.h"

#include "battle/battle_icon.h"
#include "overlay005/struct_ov5_021DE5D0.h"
#include "overlay022/struct_ov22_022559F8.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay065/struct_ov65_0222F6EC.h"
#include "overlay066/ov66_0222DDF0.h"
#include "overlay066/ov66_02231428.h"
#include "overlay066/ov66_022324F0.h"
#include "overlay066/struct_ov66_0222DFF8_decl.h"
#include "overlay066/struct_ov66_0222E71C_decl.h"
#include "overlay066/struct_ov66_02230914.h"
#include "overlay066/struct_ov66_02230E68.h"
#include "overlay070/ov70_0225C858.h"
#include "overlay070/ov70_0225C9B4.h"
#include "overlay070/ov70_02260A70.h"
#include "overlay070/ov70_02261E10.h"
#include "overlay070/ov70_02262DA8.h"
#include "overlay070/ov70_022630A4.h"
#include "overlay070/ov70_02269190.h"
#include "overlay070/ov70_0226C60C.h"
#include "overlay070/struct_ov70_0225C894_decl.h"
#include "overlay070/struct_ov70_0225CA20_decl.h"
#include "overlay070/struct_ov70_02260AD4_decl.h"
#include "overlay070/struct_ov70_02261E10_decl.h"
#include "overlay070/struct_ov70_022630A4_decl.h"
#include "overlay070/struct_ov70_02263910.h"
#include "overlay070/struct_ov70_02269204_decl.h"
#include "overlay070/struct_ov70_0226C6F8_decl.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay084/struct_ov84_02240FA8.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "cell_actor.h"
#include "core_sys.h"
#include "enums.h"
#include "error_handling.h"
#include "font.h"
#include "game_options.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "pokemon.h"
#include "render_text.h"
#include "save_player.h"
#include "savedata.h"
#include "sprite_resource.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "touch_screen.h"
#include "trainer_info.h"
#include "unk_0200112C.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02013A04.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "unk_02023FCC.h"
#include "unk_0202419C.h"
#include "unk_02024220.h"
#include "unk_020366A0.h"
#include "unk_020393C8.h"

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
} UnkStruct_ov70_0226D724;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u16 unk_02;
    s16 unk_04;
    s16 unk_06;
} UnkStruct_ov70_0226D844;

typedef struct {
    BGL *unk_00;
    CellActorCollection *unk_04;
    UnkStruct_0200C738 unk_08;
    SpriteResourceCollection *unk_194[4];
    NNSG2dCellTransferState *unk_1A4;
    GenericPointerData *unk_1A8;
} UnkStruct_ov70_0225E4EC;

typedef struct {
    Window unk_00;
    u32 unk_10;
    u32 unk_14;
    Strbuf *unk_18;
    void *unk_1C;
} UnkStruct_ov70_0225E9C8;

typedef struct {
    UnkStruct_ov84_02240FA8 unk_00;
    Window unk_20;
    BmpList *unk_30;
    ResourceMetadata *unk_34;
    u16 unk_38;
    u16 unk_3A;
    BOOL unk_3C;
    SpriteResource *unk_40[4];
    CellActor *unk_50[2];
} UnkStruct_ov70_0225EC20;

typedef struct {
    ResourceMetadata *unk_00;
    UnkStruct_ov84_02240FA8 unk_04;
} UnkStruct_ov70_0225F098;

typedef struct {
    Window unk_00;
} UnkStruct_ov70_0225F114;

typedef struct {
    Window unk_00;
} UnkStruct_ov70_0225EFD4;

typedef struct {
    StringTemplate *unk_00;
    MessageLoader *unk_04[4];
    Strbuf *unk_14;
    Strbuf *unk_18;
} UnkStruct_ov70_0225F208;

typedef struct {
    s16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u16 unk_04;
    u16 unk_06;
    u16 unk_08;
    u16 unk_0A;
    Window unk_0C;
    UnkStruct_02023FCC *unk_1C;
    void *unk_20[3];
    NNSG2dScreenData *unk_2C[3];
} UnkStruct_ov70_02260744;

typedef struct {
    u32 unk_00;
    Window unk_04[5];
    CellActor *unk_54;
    SpriteResource *unk_58[4];
    CellActor *unk_68;
    SpriteResource *unk_6C[4];
    CellActor *unk_7C[12];
    SpriteResource *unk_AC[4];
    SpriteResource *unk_BC[12];
    SpriteResource *unk_EC[4];
    SpriteResource *unk_FC[4];
} UnkStruct_ov70_0225FA84;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u16 unk_04;
    u16 unk_06;
    UnkStruct_ov70_0225FA84 unk_08;
    UnkStruct_ov70_02260744 unk_114;
    NARC *unk_14C;
    u16 unk_150;
    u8 unk_152;
    u8 unk_153;
    u16 unk_154;
    u16 unk_156;
} UnkStruct_ov70_0225F350;

typedef struct {
    u8 unk_00[20];
    u8 unk_14[20];
} UnkStruct_ov70_0225DEE8_sub1;

typedef struct UnkStruct_ov70_0225DEE8_t {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04_0 : 4;
    u8 unk_04_4 : 4;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    s32 unk_08;
    UnkStruct_ov70_0225DEE8_sub1 unk_0C;
    UnkStruct_ov66_0222DFF8 *unk_34;
    UnkStruct_ov70_02263910 *unk_38;
    UnkStruct_ov70_0225E4EC unk_3C;
    UnkStruct_ov70_0225F350 unk_1E8;
    UnkStruct_ov70_0225F208 unk_340;
    UnkStruct_ov70_0225E9C8 unk_35C;
    UnkStruct_ov70_0225E9C8 unk_37C;
    UnkStruct_ov70_0225EC20 unk_39C;
    UnkStruct_ov70_0225F114 unk_3F4;
    UnkStruct_ov70_0225F098 unk_404;
    UnkStruct_ov70_0225EFD4 unk_428;
    UnkStruct_ov70_02269204 *unk_438;
    BOOL unk_43C;
    UnkStruct_ov70_0226C6F8 *unk_440;
    UnkStruct_ov70_0225CA20 *unk_444;
    UnkStruct_ov70_02261E10 *unk_448;
    UnkStruct_ov70_0225C894 *unk_44C;
    UnkStruct_ov70_02260AD4 *unk_450;
    UnkStruct_ov70_022630A4 *unk_454;
    TrainerInfo *unk_458;
} UnkStruct_ov70_0225DEE8;

static void ov70_0225E4C8(void *param0);
static void ov70_0225E4EC(UnkStruct_ov70_0225E4EC *param0, SaveData *param1, u32 param2);
static void ov70_0225E6C0(UnkStruct_ov70_0225E4EC *param0);
static void ov70_0225E6D0(UnkStruct_ov70_0225E4EC *param0);
static void ov70_0225E740(UnkStruct_ov70_0225E4EC *param0);
static void ov70_0225E754(void);
static void ov70_0225E88C(UnkStruct_ov70_0225DEE8 *param0);
static void ov70_0225E92C(UnkStruct_ov70_0225DEE8 *param0);
static void ov70_0225E970(UnkStruct_ov70_0225DEE8 *param0);
static void ov70_0225E9C8(UnkStruct_ov70_0225E9C8 *param0, UnkStruct_ov70_0225E4EC *param1, SaveData *param2, u32 param3);
static void ov70_0225EA14(UnkStruct_ov70_0225E9C8 *param0);
static void ov70_0225EA44(UnkStruct_ov70_0225E9C8 *param0, const Strbuf *param1);
static void ov70_0225EAA4(UnkStruct_ov70_0225E9C8 *param0, const Strbuf *param1);
static void ov70_0225EB08(UnkStruct_ov70_0225E9C8 *param0);
static void ov70_0225EB24(UnkStruct_ov70_0225E9C8 *param0);
static void ov70_0225EB38(UnkStruct_ov70_0225E9C8 *param0);
static BOOL ov70_0225EB4C(const UnkStruct_ov70_0225E9C8 *param0);
static BOOL ov70_0225EB5C(const UnkStruct_ov70_0225E9C8 *param0);
static void ov70_0225EB74(UnkStruct_ov70_0225E9C8 *param0);
static void ov70_0225EBA8(UnkStruct_ov70_0225E9C8 *param0, UnkStruct_ov70_0225E4EC *param1, SaveData *param2, u32 param3);
static void ov70_0225EBBC(UnkStruct_ov70_0225E9C8 *param0);
static void ov70_0225EBC4(UnkStruct_ov70_0225E9C8 *param0, const Strbuf *param1);
static void ov70_0225EC20(UnkStruct_ov70_0225EC20 *param0, UnkStruct_ov70_0225E4EC *param1, u32 param2);
static void ov70_0225ED4C(UnkStruct_ov70_0225EC20 *param0, UnkStruct_ov70_0225E4EC *param1);
static void ov70_0225EDA8(UnkStruct_ov70_0225EC20 *param0, u32 param1, u32 param2, u32 param3);
static void ov70_0225EDE0(UnkStruct_ov70_0225EC20 *param0);
static void ov70_0225EDF8(UnkStruct_ov70_0225EC20 *param0, const Strbuf *param1, u32 param2);
static const ResourceMetadata *ov70_0225EE04(const UnkStruct_ov70_0225EC20 *param0);
static BOOL ov70_0225EE08(const UnkStruct_ov70_0225EC20 *param0, u32 param1);
static void ov70_0225EE30(UnkStruct_ov70_0225EC20 *param0, const UnkStruct_ov84_02240FA8 *param1, UnkStruct_ov70_0225E4EC *param2, u16 param3, u16 param4, u32 param5, u8 param6, u8 param7, u8 param8);
static u32 ov70_0225EED8(UnkStruct_ov70_0225EC20 *param0);
static void ov70_0225EF14(UnkStruct_ov70_0225EC20 *param0, u16 *param1, u16 *param2);
static void ov70_0225EF58(BmpList *param0, u32 param1, u8 param2);
static void ov70_0225EF6C(UnkStruct_ov70_0225EC20 *param0, BOOL param1);
static void ov70_0225EF70(UnkStruct_ov70_0225EC20 *param0);
static void ov70_0225EFD4(UnkStruct_ov70_0225EFD4 *param0, UnkStruct_ov70_0225E4EC *param1, u32 param2);
static void ov70_0225EFD8(UnkStruct_ov70_0225EFD4 *param0);
static void ov70_0225EFE0(UnkStruct_ov70_0225EFD4 *param0, UnkStruct_ov70_0225E4EC *param1, u32 param2, u8 param3, u8 param4, u8 param5, u8 param6);
static void ov70_0225F024(UnkStruct_ov70_0225EFD4 *param0);
static void ov70_0225F048(UnkStruct_ov70_0225EFD4 *param0, const Strbuf *param1, u8 param2, u8 param3);
static void ov70_0225F078(UnkStruct_ov70_0225EFD4 *param0, u16 param1, u16 param2, u16 param3, u16 param4);
static void ov70_0225F098(UnkStruct_ov70_0225F098 *param0, UnkStruct_ov70_0225F208 *param1, u32 param2);
static void ov70_0225F100(UnkStruct_ov70_0225F098 *param0);
static void ov70_0225F114(UnkStruct_ov70_0225F114 *param0, UnkStruct_ov70_0225E4EC *param1, u32 param2);
static void ov70_0225F144(UnkStruct_ov70_0225F114 *param0);
static void ov70_0225F14C(UnkStruct_ov70_0225F114 *param0, const Strbuf *param1);
static void ov70_0225F184(UnkStruct_ov70_0225F114 *param0, UnkStruct_ov70_0225F208 *param1);
static void ov70_0225F1C0(UnkStruct_ov70_0225F114 *param0, UnkStruct_ov70_0225F208 *param1, int param2);
static void ov70_0225F1F0(UnkStruct_ov70_0225F114 *param0, UnkStruct_ov70_0225F208 *param1, int param2);
static void ov70_0225F208(UnkStruct_ov70_0225F208 *param0, u32 param1);
static void ov70_0225F25C(UnkStruct_ov70_0225F208 *param0);
static Strbuf *ov70_0225F288(UnkStruct_ov70_0225F208 *param0, int param1, u32 param2);
static void ov70_0225F2A8(UnkStruct_ov70_0225F208 *param0, u32 param1, u32 param2, u32 param3, int param4);
static void ov70_0225F2C8(UnkStruct_ov70_0225F208 *param0, const TrainerInfo *param1, u32 param2);
static void ov70_0225F2D8(UnkStruct_ov70_0225F208 *param0, enum PlazaMinigame param1, u32 param2);
static void ov70_0225F2E8(UnkStruct_ov70_0225F208 *param0, int param1, u32 param2);
static void ov70_0225F2F8(UnkStruct_ov70_0225F208 *param0, u32 param1, u32 param2);
static void ov70_0225F308(UnkStruct_ov70_0225F208 *param0, u32 param1, u32 param2);
static void ov70_0225F318(UnkStruct_ov70_0225F208 *param0, u32 param1, u32 param2, u32 param3);
static void ov70_0225F32C(UnkStruct_ov70_0225F208 *param0, u32 param1, u16 param2);
static void ov70_0225F338(UnkStruct_ov70_0225F208 *param0);
static void ov70_0225F344(UnkStruct_ov70_0225DEE8 *param0);
static void ov70_0225F350(UnkStruct_ov70_0225F350 *param0, const UnkStruct_ov70_02263910 *param1, UnkStruct_ov70_0225E4EC *param2, const TrainerInfo *param3, u32 param4);
static void ov70_0225F3E4(UnkStruct_ov70_0225F350 *param0, UnkStruct_ov70_0225E9C8 *param1, UnkStruct_ov70_0225E4EC *param2);
static void ov70_0225F418(UnkStruct_ov70_0225F350 *param0, UnkStruct_ov70_0225DEE8 *param1, BOOL param2, u32 param3);
static u32 ov70_0225F798(const UnkStruct_ov70_0225F350 *param0);
static void ov70_0225F79C(UnkStruct_ov70_0225F350 *param0, u32 param1, BOOL param2);
static void ov70_0225F7A8(UnkStruct_ov70_0225F350 *param0, UnkStruct_ov70_0225E4EC *param1, u32 param2, u32 param3);
static void ov70_0225F7E0(UnkStruct_ov70_0225F350 *param0);
static void ov70_0225F7EC(UnkStruct_ov70_0225F350 *param0);
static u32 ov70_0225F7F8(const UnkStruct_ov70_0225F350 *param0);
static BOOL ov70_0225F7FC(const UnkStruct_ov70_0225F350 *param0);
static BOOL ov70_0225F814(const UnkStruct_ov70_0225F350 *param0);
static BOOL ov70_0225F828(const UnkStruct_ov70_0225F350 *param0);
static BOOL ov70_0225F834(const UnkStruct_ov70_0225F350 *param0);
static void ov70_0225F844(UnkStruct_ov70_0225F350 *param0, UnkStruct_ov70_0225E9C8 *param1, UnkStruct_ov70_0225E4EC *param2, UnkStruct_ov70_0225F208 *param3, BOOL param4, u32 param5, const UnkStruct_ov66_0222E71C *param6, const UnkStruct_ov66_0222E71C *param7, BOOL param8, BOOL param9, const UnkStruct_ov66_02230914 *param10, BOOL param11);
static void ov70_0225F89C(UnkStruct_ov70_0225F350 *param0, UnkStruct_ov70_0225E9C8 *param1, UnkStruct_ov70_0225E4EC *param2);
static void ov70_0225F8AC(UnkStruct_ov70_0225F350 *param0, UnkStruct_ov70_0225E4EC *param1, UnkStruct_ov70_0225F208 *param2, u32 param3, const UnkStruct_ov66_0222E71C *param4);
static void ov70_0225F8F0(UnkStruct_ov70_0225F350 *param0, UnkStruct_ov70_0225E4EC *param1, u32 param2, u32 param3);
static void ov70_0225F920(UnkStruct_ov70_0225F350 *param0, UnkStruct_ov70_0225E4EC *param1);
static void ov70_0225F934(UnkStruct_ov70_0225F350 *param0, BOOL param1);
static void ov70_0225F940(UnkStruct_ov70_0225F350 *param0, UnkStruct_ov70_0225E4EC *param1, u32 param2, u32 param3);
static void ov70_0225F95C(SysTask *param0, void *param1);
static void ov70_0225F9BC(UnkStruct_ov70_0225F350 *param0, UnkStruct_ov70_0225E4EC *param1, NARC *param2, u32 param3, u32 param4);
static void ov70_0225FA10(UnkStruct_ov70_0225F350 *param0, UnkStruct_ov70_0225E4EC *param1);
static void ov70_0225FA14(UnkStruct_ov70_0225E4EC *param0, NARC *param1, u32 param2, u32 param3, u32 param4, u32 param5);
static void ov70_0225FA84(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225E4EC *param1, NARC *param2, u32 param3);
static void ov70_0225FAA8(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225E9C8 *param1, UnkStruct_ov70_0225E4EC *param2);
static void ov70_0225FACC(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225E9C8 *param1);
static void ov70_0225FAD0(UnkStruct_ov70_0225F350 *param0, UnkStruct_ov70_0225E9C8 *param1, UnkStruct_ov70_0225FA84 *param2, UnkStruct_ov70_0225E4EC *param3, UnkStruct_ov70_0225F208 *param4, BOOL param5, NARC *param6, u32 param7, const UnkStruct_ov66_0222E71C *param8, const UnkStruct_ov66_0222E71C *param9, BOOL param10, BOOL param11, const UnkStruct_ov66_02230914 *param12, BOOL param13);
static void ov70_0225FDA0(UnkStruct_ov70_0225F350 *param0, UnkStruct_ov70_0225FA84 *param1, UnkStruct_ov70_0225E4EC *param2, u32 param3, const UnkStruct_ov66_0222E71C *param4);
static void ov70_0225FE80(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225E9C8 *param1, UnkStruct_ov70_0225E4EC *param2);
static void ov70_0225FEC4(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225E4EC *param1, NARC *param2, u32 param3, u32 param4);
static BOOL ov70_0225FEEC(const UnkStruct_ov70_0225FA84 *param0);
static void ov70_0225FEF0(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225E4EC *param1, NARC *param2, u32 param3, u32 param4, BOOL param5);
static void ov70_02260048(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225E4EC *param1);
static void ov70_02260080(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225E4EC *param1, NARC *param2, u32 param3, u32 param4);
static void ov70_02260228(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225E4EC *param1);
static void ov70_02260268(NNSG2dPaletteData *param0);
static void ov70_022602C0(UnkStruct_ov70_0225FA84 *param0);
static void ov70_022602DC(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225F208 *param1, u32 param2, u32 param3, u8 param4, u8 param5, u32 param6);
static void ov70_02260314(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225F208 *param1, u32 param2, u32 param3, u8 param4, u8 param5, u32 param6);
static void ov70_02260360(UnkStruct_ov70_0225FA84 *param0, u32 param1);
static void ov70_02260370(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225F208 *param1, const TrainerInfo *param2);
static void ov70_02260380(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225F208 *param1, const UnkStruct_ov66_0222E71C *param2);
static void ov70_022603B0(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225F208 *param1, const UnkStruct_ov66_02230914 *param2);
static void ov70_022603CC(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225E4EC *param1, NARC *param2, u32 param3, const UnkStruct_ov66_0222E71C *param4, const UnkStruct_ov66_0222E71C *param5);
static void ov70_0226068C(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225E4EC *param1);
static const UnkStruct_ov70_0226D844 *ov70_02260728(int param0, s32 param1, s32 param2, u32 param3);
static void ov70_02260744(UnkStruct_ov70_02260744 *param0, UnkStruct_ov70_0225E4EC *param1, NARC *param2, u32 param3);
static void ov70_022607A8(UnkStruct_ov70_02260744 *param0);
static BOOL ov70_022607D4(UnkStruct_ov70_02260744 *param0, UnkStruct_ov70_0225E4EC *param1, NARC *param2, u32 param3);
static void ov70_02260870(UnkStruct_ov70_02260744 *param0, UnkStruct_ov70_0225E4EC *param1, UnkStruct_ov70_0225F208 *param2, const UnkStruct_ov66_0222E71C *param3, NARC *param4, u32 param5);
static void ov70_02260930(UnkStruct_ov70_02260744 *param0, UnkStruct_ov70_0225E4EC *param1, u32 param2, NARC *param3, u32 param4);
static void ov70_022609A8(UnkStruct_ov70_02260744 *param0, UnkStruct_ov70_0225E4EC *param1);
static void ov70_022609D4(UnkStruct_ov70_02260744 *param0, UnkStruct_ov70_0225E4EC *param1, u32 param2, NARC *param3, u32 param4);
static void ov70_02260A50(u32 param0, u32 param1, void *param2);
static void ov70_02260A68(UnkStruct_ov70_02260744 *param0);

static const u8 Unk_ov70_0226D580[2] = {
    0x14,
    0x88
};

static const u16 Unk_ov70_0226D590[2] = {
    0x2E4,
    0x2EC
};

static const u16 Unk_ov70_0226D624[2][2][4] = {
    {
        { 0x2E4, 0x2E5, 0x2E6, 0x2E7 },
        { 0x2E8, 0x2E9, 0x2EA, 0x2EB },
    },
    {
        { 0x2EC, 0x2ED, 0x2EE, 0x2EF },
        { 0x2F0, 0x2F1, 0x2F2, 0x2F3 },
    },
};

static const UnkStruct_ov61_0222C884 Unk_ov70_0226D68C[5] = {
    { 0x6, 0x8, 0x2, 0x10, 0x4, 0x5, 0x140 },
    { 0x6, 0x1, 0x7, 0x1E, 0x6, 0x5, 0x180 },
    { 0x6, 0x1, 0xE, 0x13, 0x4, 0x5, 0x234 },
    { 0x6, 0x1, 0x13, 0x13, 0x4, 0x5, 0x280 },
    { 0x6, 0x0, 0xE, 0x16, 0x8, 0x5, 0x234 },
};

static const UnkStruct_ov70_0226D724 Unk_ov70_0226D724[18] = {
    { 0x0, 0x0, 0x21, 0x23 },
    { 0x61, 0x1, 0x26, 0x24 },
    { 0x3, 0x3C, 0x26, 0x19 },
    { 0x5, 0x6, 0x2C, 0x20 },
    { 0xB, 0x18, 0x26, 0x2C },
    { 0x1F, 0x39, 0x28, 0x28 },
    { 0x32, 0x30, 0x2C, 0x1A },
    { 0x33, 0xE, 0x2C, 0x25 },
    { 0x3E, 0x20, 0x1D, 0x28 },
    { 0x46, 0x31, 0x2A, 0x2C },
    { 0x6, 0x3, 0x27, 0x22 },
    { 0x7, 0xA, 0x28, 0x24 },
    { 0xD, 0x24, 0x26, 0x29 },
    { 0xE, 0x19, 0x24, 0x2A },
    { 0x23, 0x55, 0x26, 0x26 },
    { 0x25, 0x23, 0x26, 0x27 },
    { 0x2A, 0x12, 0x26, 0x23 },
    { 0x3F, 0x21, 0x28, 0x2C }
};

static const UnkStruct_ov70_0226D844 Unk_ov70_0226D844[24] = {
    { 0x0, 0x0, 0x1, 0xFFFFFFFFFFFFFFF8, 0xFFFFFFFFFFFFFFFA },
    { 0x0, 0x6, 0x4, 0xFFFFFFFFFFFFFFF8, 0xFFFFFFFFFFFFFFFA },
    { 0x0, 0x1, 0x7, 0xFFFFFFFFFFFFFFF8, 0xFFFFFFFFFFFFFFFA },
    { 0x0, 0x2, 0xA, 0xFFFFFFFFFFFFFFF8, 0xFFFFFFFFFFFFFFFA },
    { 0x0, 0x6, 0xD, 0xFFFFFFFFFFFFFFF8, 0xFFFFFFFFFFFFFFFA },
    { 0x0, 0x5, 0x10, 0xFFFFFFFFFFFFFFF8, 0xFFFFFFFFFFFFFFFA },
    { 0x0, 0x3, 0x13, 0xFFFFFFFFFFFFFFF8, 0xFFFFFFFFFFFFFFFA },
    { 0x0, 0x4, 0x16, 0xFFFFFFFFFFFFFFF8, 0xFFFFFFFFFFFFFFFA },
    { 0x0, 0x0, 0x19, 0xFFFFFFFFFFFFFFF8, 0xFFFFFFFFFFFFFFFA },
    { 0x0, 0x7, 0x1C, 0xFFFFFFFFFFFFFFF8, 0xFFFFFFFFFFFFFFFA },
    { 0x0, 0x4, 0x1F, 0xFFFFFFFFFFFFFFF8, 0xFFFFFFFFFFFFFFFA },
    { 0x0, 0x1, 0x22, 0xFFFFFFFFFFFFFFF8, 0xFFFFFFFFFFFFFFFA },
    { 0x0, 0x5, 0x25, 0xFFFFFFFFFFFFFFF8, 0xFFFFFFFFFFFFFFFA },
    { 0x0, 0x5, 0x28, 0xFFFFFFFFFFFFFFF8, 0xFFFFFFFFFFFFFFFA },
    { 0x0, 0x2, 0x2B, 0xFFFFFFFFFFFFFFF8, 0xFFFFFFFFFFFFFFFA },
    { 0x0, 0x3, 0x2E, 0xFFFFFFFFFFFFFFF8, 0xFFFFFFFFFFFFFFFA },
    { 0x1, 0x0, 0x67, 0x0, 0x0 },
    { 0x1, 0x1, 0x6A, 0x0, 0x0 },
    { 0x1, 0x0, 0x6D, 0x0, 0x0 },
    { 0x1, 0x0, 0x76, 0x0, 0x0 },
    { 0x1, 0x1, 0x73, 0x0, 0x0 },
    { 0x1, 0x0, 0x70, 0x0, 0x0 },
    { 0x1, 0x1, 0x79, 0x0, 0x0 },
    { 0x1, 0x0, 0x7C, 0x0, 0x0 }
};

static const UnkStruct_ov70_0226D844 Unk_ov70_0226D5FC[2] = {
    { 0x2, 0x0, 0x32, 0xFFFFFFFFFFFFFFF8, 0xFFFFFFFFFFFFFFFA },
    { 0x3, 0x0, 0x36, 0xFFFFFFFFFFFFFFF8, 0xFFFFFFFFFFFFFFFA }
};

static const VecFx32 Unk_ov70_0226D7B4[12] = {
    { FX32_CONST(32), FX32_CONST(144) + (256 * FX32_ONE), 0x0 },
    { FX32_CONST(56), FX32_CONST(144) + (256 * FX32_ONE), 0x0 },
    { FX32_CONST(80), FX32_CONST(144) + (256 * FX32_ONE), 0x0 },
    { FX32_CONST(104), FX32_CONST(144) + (256 * FX32_ONE), 0x0 },
    { FX32_CONST(128), FX32_CONST(144) + (256 * FX32_ONE), 0x0 },
    { FX32_CONST(152), FX32_CONST(144) + (256 * FX32_ONE), 0x0 },
    { FX32_CONST(32), FX32_CONST(176) + (256 * FX32_ONE), 0x0 },
    { FX32_CONST(56), FX32_CONST(176) + (256 * FX32_ONE), 0x0 },
    { FX32_CONST(80), FX32_CONST(176) + (256 * FX32_ONE), 0x0 },
    { FX32_CONST(104), FX32_CONST(176) + (256 * FX32_ONE), 0x0 },
    { FX32_CONST(128), FX32_CONST(176) + (256 * FX32_ONE), 0x0 },
    { FX32_CONST(152), FX32_CONST(176) + (256 * FX32_ONE), 0x0 }
};

static const UnkStruct_ov61_0222C884 Unk_ov70_0226D5A4 = {
    0x5,
    0x1,
    0x0,
    0x18,
    0x3,
    0x5,
    0x1D0
};

static const GXRgb Unk_ov70_0226D5EC[8] = {
    GX_RGB(0, 0, 0),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4)
};

static const UnkStruct_02099F80 Unk_ov70_0226D664 = {
    GX_VRAM_BG_128_B,
    GX_VRAM_BGEXTPLTT_NONE,
    GX_VRAM_SUB_BG_32_H,
    GX_VRAM_SUB_BGEXTPLTT_NONE,
    GX_VRAM_OBJ_32_FG,
    GX_VRAM_OBJEXTPLTT_NONE,
    GX_VRAM_SUB_OBJ_16_I,
    GX_VRAM_SUB_OBJEXTPLTT_NONE,
    GX_VRAM_TEX_01_AC,
    GX_VRAM_TEXPLTT_0123_E
};

static const UnkStruct_ov84_0223BA5C Unk_ov70_0226D5BC = {
    GX_DISPMODE_GRAPHICS,
    GX_BGMODE_0,
    GX_BGMODE_0,
    GX_BG0_AS_3D
};

static const u32 Unk_ov70_0226D5CC[4] = {
    0x1,
    0x4,
    0x5,
    0x6
};

static const UnkStruct_ov97_0222DB78 Unk_ov70_0226D6B4[4] = {
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
        GX_BG_SCRBASE_0x7000,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        0x1,
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
        GX_BG_SCRBASE_0x6800,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        0x0,
        0x0,
        0x0,
        0x0,
    },
};

static const UnkStruct_ov22_022559F8 Unk_ov70_0226D5DC = {
    0x18,
    0x8000,
    0x4000,
    0x70,
};

static const UnkStruct_ov84_02240FA8 Unk_ov70_0226D644 = {
    NULL,
    NULL,
    NULL,
    NULL,
    0x0,
    0x2,
    0x0,
    0x8,
    0x0,
    0x0,
    0x1,
    0xF,
    0x2,
    0x0,
    0x10,
    0x0,
    0x0,
    0x0,
    NULL,
};

int ov70_0225D9A4(OverlayManager *param0, int *param1)
{
    UnkStruct_ov70_0225DEE8 *v0;
    UnkStruct_ov66_02230E68 *v1;

    v1 = OverlayManager_Args(param0);

    Heap_Create(3, 112, 0x3a000);
    Heap_Create(3, 113, 0x3d000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov70_0225DEE8), 112);
    memset(v0, 0, sizeof(UnkStruct_ov70_0225DEE8));

    v0->unk_38 = &v1->unk_0C;
    v0->unk_34 = v1->unk_1C;
    v0->unk_02 = ov66_0222E338(v0->unk_34);

    GF_ASSERT(ov66_0222E338(v0->unk_34) != 0xffffffff);

    RenderControlFlags_SetCanABSpeedUpPrint(1);
    RenderControlFlags_SetAutoScrollFlags(0);
    RenderControlFlags_SetSpeedUpOnTouch(0);

    v0->unk_458 = SaveData_GetTrainerInfo(v1->unk_00);
    ov70_0225E4EC(&v0->unk_3C, v1->unk_00, 112);
    v0->unk_44C = ov70_0225C858(112);

    {
        u32 v2;

        v2 = TrainerInfo_Gender(v0->unk_458);
        v0->unk_444 = ov70_0225C9B4(24, v2, v0->unk_44C, 112, 113);
    }

    v0->unk_448 = ov70_02261E10(v1->unk_04, v1->unk_08, v0->unk_44C, 112, 113);
    v0->unk_450 = ov70_02260A70(112);

    ov70_0225E9C8(&v0->unk_35C, &v0->unk_3C, v1->unk_00, 112);
    ov70_0225EBA8(&v0->unk_37C, &v0->unk_3C, v1->unk_00, 112);
    ov70_0225EC20(&v0->unk_39C, &v0->unk_3C, 112);
    ov70_0225F114(&v0->unk_3F4, &v0->unk_3C, 112);
    ov70_0225EFD4(&v0->unk_428, &v0->unk_3C, 112);
    ov70_0225F208(&v0->unk_340, 112);
    ov70_0225F098(&v0->unk_404, &v0->unk_340, 112);
    ov70_0225F350(&v0->unk_1E8, v0->unk_38, &v0->unk_3C, v0->unk_458, 112);

    {
        const UnkStruct_ov66_0222E71C *v3;

        v3 = ov66_0222E3BC(v0->unk_34);

        if (ov66_0222E8D8(v3) == 1) {
            ov70_0225F8AC(&v0->unk_1E8, &v0->unk_3C, &v0->unk_340, 112, v3);
        }
    }

    v0->unk_454 = ov70_02262DA8(v0, 112);

    ov70_022630A4(v0);
    ov70_022630EC(v0);

    v0->unk_438 = ov70_02269190(v0->unk_34, v0->unk_44C, v0->unk_450, v0->unk_444, 112, 113);
    v0->unk_440 = ov70_0226C60C(112, v0);

    SetMainCallback(ov70_0225E4C8, v0);
    DisableHBlank();

    return 1;
}

int ov70_0225DB90(OverlayManager *param0, int *param1)
{
    UnkStruct_ov70_0225DEE8 *v0;
    UnkStruct_ov66_02230E68 *v1;
    BOOL v2;

    v0 = OverlayManager_Data(param0);
    v1 = OverlayManager_Args(param0);

    switch (*param1) {
    case 0:
        sub_0200F174(0, 1, 1, 0x0, 6, 1, 112);
        v0->unk_03 = 1;
        (*param1)++;
        break;
    case 1:
        v2 = ScreenWipe_Done();

        if (v2 == 1) {
            v0->unk_03 = 0;
            (*param1)++;
        }
        break;
    case 2:
        if (v0->unk_04_0 == 1) {
            if ((ov66_02231760() == 1) || (ov66_0222DFF8(v0->unk_34) != 0)) {
                v0->unk_04_4 = 1;
            }
        }

        if (v0->unk_07 == 0) {
            if (ov66_0222E138(v0->unk_34) == 1) {
                v0->unk_06 = 1;
                ov70_0225DF38(v0, 8);
            }
        }

        if ((v0->unk_00 == 1) || (v0->unk_04_4 == 1) || (v0->unk_06 == 1)) {
            if (v0->unk_04_4) {
                (*param1) = 3;
            } else if (v0->unk_06 == 1) {
                (*param1) = 5;
            } else {
                (*param1) = 7;
            }
        }
        break;
    case 3: {
        ov70_0225EB74(&v0->unk_35C);
        ov70_0225EF14(&v0->unk_39C, NULL, NULL);
        ov70_0225F024(&v0->unk_428);
        ov70_0225F100(&v0->unk_404);

        if (sub_020383E8()) {
            ov70_0225F184(&v0->unk_3F4, &v0->unk_340);
        } else if (sub_0203881C()) {
            ov70_0225F1C0(&v0->unk_3F4, &v0->unk_340, ov66_022326DC());
        } else {
            ov70_0225F1F0(&v0->unk_3F4, &v0->unk_340, ov66_0222DFF8(v0->unk_34));
        }
        (*param1) = 4;
    } break;
    case 4:
        if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
            (*param1) = 7;
        }
        break;
    case 5: {
        ov70_0225EB74(&v0->unk_35C);
        ov70_0225EF14(&v0->unk_39C, NULL, NULL);
        ov70_0225F024(&v0->unk_428);
        ov70_0225F100(&v0->unk_404);
        ov70_0225EA44(&v0->unk_35C, ov70_0225F288(&v0->unk_340, 1, 70));
        (*param1) = 6;
        v0->unk_08 = 60;
    } break;
    case 6:
        if (ov70_0225EB5C(&v0->unk_35C)) {
            v0->unk_08--;

            if (v0->unk_08 <= 0) {
                (*param1) = 7;
            }
        }
        break;
    case 7: {
        u32 v3;

        v3 = ov70_0225F798(&v0->unk_1E8);

        if (v3 == 5) {
            sub_0200F174(0, 0, 0, 0x0, 6, 1, 112);
            v0->unk_03 = 1;
            (*param1)++;
            break;
        }

        if (v3 == 0) {
            sub_0200F174(0, 0, 0, 0x0, 6, 1, 112);
            v0->unk_03 = 1;
            (*param1)++;
            break;
        }
    } break;
    case 8:
        v2 = ScreenWipe_Done();

        if (v2 == 1) {
            v0->unk_03 = 0;
            return 1;
        }
        break;
    }

    ov70_0225E88C(v0);
    ov70_0225E92C(v0);

    return 0;
}

int ov70_0225DDF8(OverlayManager *param0, int *param1)
{
    UnkStruct_ov70_0225DEE8 *v0;
    UnkStruct_ov66_02230E68 *v1;

    v0 = OverlayManager_Data(param0);
    v1 = OverlayManager_Args(param0);

    {
        v1->unk_18 = v0->unk_01;
    }

    SetMainCallback(NULL, NULL);
    DisableHBlank();

    ov70_0226C6F8(v0->unk_440);
    ov70_02269204(v0->unk_438);
    ov70_02262DF4(v0->unk_454);
    ov70_0225F3E4(&v0->unk_1E8, &v0->unk_37C, &v0->unk_3C);
    ov70_0225F25C(&v0->unk_340);
    ov70_0225EA14(&v0->unk_35C);
    ov70_0225EBBC(&v0->unk_37C);
    ov70_0225ED4C(&v0->unk_39C, &v0->unk_3C);
    ov70_0225F144(&v0->unk_3F4);
    ov70_0225F100(&v0->unk_404);
    ov70_0225EFD8(&v0->unk_428);
    ov70_02260AD4(v0->unk_450);
    ov70_022621AC(v0->unk_448);
    ov70_0225CA20(v0->unk_444);
    ov70_0225C894(v0->unk_44C);
    ov70_0225E6D0(&v0->unk_3C);

    Heap_FreeToHeap(v0);
    Heap_Destroy(112);
    Heap_Destroy(113);
    sub_020057BC(0);
    sub_0200592C(0);

    return 1;
}

UnkStruct_ov66_0222DFF8 *ov70_0225DEE8(UnkStruct_ov70_0225DEE8 *param0)
{
    return param0->unk_34;
}

UnkStruct_ov70_02263910 *ov70_0225DEEC(UnkStruct_ov70_0225DEE8 *param0)
{
    return param0->unk_38;
}

UnkStruct_ov70_0225CA20 *ov70_0225DEF0(UnkStruct_ov70_0225DEE8 *param0)
{
    return param0->unk_444;
}

UnkStruct_ov70_02261E10 *ov70_0225DEF8(UnkStruct_ov70_0225DEE8 *param0)
{
    return param0->unk_448;
}

UnkStruct_ov70_0225C894 *ov70_0225DF00(UnkStruct_ov70_0225DEE8 *param0)
{
    return param0->unk_44C;
}

UnkStruct_ov70_02260AD4 *ov70_0225DF08(UnkStruct_ov70_0225DEE8 *param0)
{
    return param0->unk_450;
}

UnkStruct_ov70_022630A4 *ov70_0225DF10(UnkStruct_ov70_0225DEE8 *param0)
{
    return param0->unk_454;
}

void ov70_0225DF18(UnkStruct_ov70_0225DEE8 *param0, BOOL param1)
{
    param0->unk_04_0 = param1;
}

u32 ov70_0225DF2C(const UnkStruct_ov70_0225DEE8 *param0)
{
    return param0->unk_02;
}

BOOL ov70_0225DF30(const UnkStruct_ov70_0225DEE8 *param0)
{
    return param0->unk_03;
}

void ov70_0225DF34(UnkStruct_ov70_0225DEE8 *param0, BOOL param1)
{
    param0->unk_00 = param1;
}

void ov70_0225DF38(UnkStruct_ov70_0225DEE8 *param0, u8 param1)
{
    param0->unk_01 = param1;
}

void ov70_0225DF3C(UnkStruct_ov70_0225DEE8 *param0, u8 param1)
{
    param0->unk_05 = param1;
}

u8 ov70_0225DF40(const UnkStruct_ov70_0225DEE8 *param0)
{
    return param0->unk_05;
}

void ov70_0225DF44(UnkStruct_ov70_0225DEE8 *param0)
{
    param0->unk_07 = 1;
}

void ov70_0225DF4C(UnkStruct_ov70_0225DEE8 *param0, u8 param1, BOOL param2)
{
    GF_ASSERT(param1 < 20);
    param0->unk_0C.unk_00[param1] = param2;
}

BOOL ov70_0225DF64(const UnkStruct_ov70_0225DEE8 *param0, u8 param1)
{
    return param0->unk_0C.unk_00[param1];
}

void ov70_0225DF6C(UnkStruct_ov70_0225DEE8 *param0, u8 param1, BOOL param2)
{
    GF_ASSERT(param1 < 20);
    param0->unk_0C.unk_14[param1] = param2;
}

BOOL ov70_0225DF84(const UnkStruct_ov70_0225DEE8 *param0, u8 param1)
{
    return param0->unk_0C.unk_14[param1];
}

void ov70_0225DF8C(UnkStruct_ov70_0225DEE8 *param0, const Strbuf *param1)
{
    ov70_0225EA44(&param0->unk_35C, param1);
}

void ov70_0225DF9C(UnkStruct_ov70_0225DEE8 *param0, const Strbuf *param1)
{
    ov70_0225EAA4(&param0->unk_35C, param1);
}

BOOL ov70_0225DFAC(const UnkStruct_ov70_0225DEE8 *param0)
{
    return ov70_0225EB5C(&param0->unk_35C);
}

void ov70_0225DFBC(UnkStruct_ov70_0225DEE8 *param0)
{
    ov70_0225EB08(&param0->unk_35C);
}

void ov70_0225DFCC(UnkStruct_ov70_0225DEE8 *param0)
{
    ov70_0225EB24(&param0->unk_35C);
}

BOOL ov70_0225DFDC(const UnkStruct_ov70_0225DEE8 *param0)
{
    return ov70_0225EB4C(&param0->unk_35C);
}

void ov70_0225DFEC(UnkStruct_ov70_0225DEE8 *param0)
{
    ov70_0225EB74(&param0->unk_35C);
}

void ov70_0225DFFC(UnkStruct_ov70_0225DEE8 *param0, const Strbuf *param1)
{
    ov70_0225EBC4(&param0->unk_37C, param1);
}

void ov70_0225E00C(UnkStruct_ov70_0225DEE8 *param0, u32 param1)
{
    ov70_0225EDA8(&param0->unk_39C, param1, 113, 0);
}

void ov70_0225E020(UnkStruct_ov70_0225DEE8 *param0, u32 param1, u32 param2)
{
    ov70_0225EDA8(&param0->unk_39C, param1, 113, param2);
}

void ov70_0225E034(UnkStruct_ov70_0225DEE8 *param0)
{
    ov70_0225EDE0(&param0->unk_39C);
}

void ov70_0225E044(UnkStruct_ov70_0225DEE8 *param0, const Strbuf *param1, u32 param2)
{
    ov70_0225EDF8(&param0->unk_39C, param1, param2);
}

const ResourceMetadata *ov70_0225E054(const UnkStruct_ov70_0225DEE8 *param0)
{
    return ov70_0225EE04(&param0->unk_39C);
}

BOOL ov70_0225E064(const UnkStruct_ov70_0225DEE8 *param0, u32 param1)
{
    return ov70_0225EE08(&param0->unk_39C, param1);
}

void ov70_0225E074(UnkStruct_ov70_0225DEE8 *param0, const UnkStruct_ov84_02240FA8 *param1, u16 param2, u16 param3)
{
    ov70_0225EE30(&param0->unk_39C, param1, &param0->unk_3C, param2, param3, 112, 16, 3, 15);
}

extern void ov70_0225E0A4(UnkStruct_ov70_0225DEE8 *param0, const UnkStruct_ov84_02240FA8 *param1, u16 param2, u16 param3, u8 param4, u8 param5, u8 param6)
{
    ov70_0225EE30(&param0->unk_39C, param1, &param0->unk_3C, param2, param3, 112, param4, param5, param6);
}

u32 ov70_0225E0D4(UnkStruct_ov70_0225DEE8 *param0)
{
    return ov70_0225EED8(&param0->unk_39C);
}

void ov70_0225E0E4(UnkStruct_ov70_0225DEE8 *param0, u16 *param1, u16 *param2)
{
    ov70_0225EF14(&param0->unk_39C, param1, param2);
}

void ov70_0225E0F4(UnkStruct_ov70_0225DEE8 *param0, BOOL param1)
{
    ov70_0225EF6C(&param0->unk_39C, param1);
}

void ov70_0225E104(UnkStruct_ov70_0225DEE8 *param0, u8 param1, u8 param2, u8 param3, u8 param4)
{
    ov70_0225EFE0(&param0->unk_428, &param0->unk_3C, 112, param1, param2, param3, param4);
}

void ov70_0225E12C(UnkStruct_ov70_0225DEE8 *param0)
{
    ov70_0225F024(&param0->unk_428);
}

void ov70_0225E13C(UnkStruct_ov70_0225DEE8 *param0, const Strbuf *param1, u8 param2, u8 param3)
{
    ov70_0225F048(&param0->unk_428, param1, param2, param3);
}

void ov70_0225E14C(UnkStruct_ov70_0225DEE8 *param0, u16 param1, u16 param2, u16 param3, u16 param4)
{
    ov70_0225F078(&param0->unk_428, param1, param2, param3, param4);
}

void ov70_0225E164(UnkStruct_ov70_0225DEE8 *param0)
{
    ov70_0225EE30(&param0->unk_39C, &param0->unk_404.unk_04, &param0->unk_3C, 0, 0, 112, 25, 13, 6);
}

void ov70_0225E194(UnkStruct_ov70_0225DEE8 *param0)
{
    ov70_0225EE30(&param0->unk_39C, &param0->unk_404.unk_04, &param0->unk_3C, 0, 1, 112, 25, 13, 6);
}

int ov70_0225E1C4(UnkStruct_ov70_0225DEE8 *param0)
{
    u32 v0;

    v0 = ov70_0225EED8(&param0->unk_39C);

    switch (v0) {
    case 0xfffffffe:
        Sound_PlayEffect(1500);
    case 1:
        return 1;
    case 0:
        return 0;
    default:
        break;
    }

    return 2;
}

void ov70_0225E1F8(UnkStruct_ov70_0225DEE8 *param0)
{
    ov70_0225EF14(&param0->unk_39C, NULL, NULL);
}

Strbuf *ov70_0225E20C(UnkStruct_ov70_0225DEE8 *param0, int param1, u32 param2)
{
    return ov70_0225F288(&param0->unk_340, param1, param2);
}

void ov70_0225E21C(UnkStruct_ov70_0225DEE8 *param0, u32 param1, u32 param2, u32 param3, int param4)
{
    ov70_0225F2A8(&param0->unk_340, param1, param2, param3, param4);
}

void ov70_0225E234(UnkStruct_ov70_0225DEE8 *param0, u32 param1, u32 param2)
{
    TrainerInfo *v0;
    const UnkStruct_ov66_0222E71C *v1;

    v0 = TrainerInfo_New(112);

    if (param1 == ov66_0222E338(param0->unk_34)) {
        v1 = ov66_0222E3BC(param0->unk_34);
    } else {
        v1 = ov66_0222E374(param0->unk_34, param1);
    }

    ov66_0222E640(v1, v0, 112);
    ov70_0225F2C8(&param0->unk_340, v0, param2);
    Heap_FreeToHeap(v0);
}

void ov70_0225E27C(UnkStruct_ov70_0225DEE8 *param0, enum PlazaMinigame param1, u32 param2)
{
    ov70_0225F2D8(&param0->unk_340, param1, param2);
}

void ov70_0225E28C(UnkStruct_ov70_0225DEE8 *param0, int param1, u32 param2)
{
    ov70_0225F2E8(&param0->unk_340, param1, param2);
}

void ov70_0225E29C(UnkStruct_ov70_0225DEE8 *param0, u32 param1, u32 param2)
{
    ov70_0225F2F8(&param0->unk_340, param1, param2);
}

void ov70_0225E2AC(UnkStruct_ov70_0225DEE8 *param0, u32 param1, u32 param2)
{
    StringTemplate_SetJPGreeting(param0->unk_340.unk_00, param1, param2);
}

void ov70_0225E2BC(UnkStruct_ov70_0225DEE8 *param0, u32 param1, u32 param2)
{
    StringTemplate_SetENGreeting(param0->unk_340.unk_00, param1, param2);
}

void ov70_0225E2CC(UnkStruct_ov70_0225DEE8 *param0, u32 param1, u32 param2)
{
    StringTemplate_SetFRGreeting(param0->unk_340.unk_00, param1, param2);
}

void ov70_0225E2DC(UnkStruct_ov70_0225DEE8 *param0, u32 param1, u32 param2)
{
    StringTemplate_SetITGreeting(param0->unk_340.unk_00, param1, param2);
}

void ov70_0225E2EC(UnkStruct_ov70_0225DEE8 *param0, u32 param1, u32 param2)
{
    StringTemplate_SetDEGreeting(param0->unk_340.unk_00, param1, param2);
}

void ov70_0225E2FC(UnkStruct_ov70_0225DEE8 *param0, u32 param1, u32 param2)
{
    StringTemplate_SetESGreeting(param0->unk_340.unk_00, param1, param2);
}

void ov70_0225E30C(UnkStruct_ov70_0225DEE8 *param0, u32 param1, int param2)
{
    param2 = ov66_022316E8(param2);
    StringTemplate_SetPokemonTypeName(param0->unk_340.unk_00, param1, param2);
}

void ov70_0225E328(UnkStruct_ov70_0225DEE8 *param0, u32 param1, BOOL param2)
{
    if ((ov70_0225F7F8(&param0->unk_1E8) == param1) && (ov70_0225F7FC(&param0->unk_1E8) == 1) && (ov70_0225F834(&param0->unk_1E8) == 0) && (ov70_0225F828(&param0->unk_1E8) == param2)) {
        return;
    }

    ov70_0225F79C(&param0->unk_1E8, param1, param2);
}

void ov70_0225E378(UnkStruct_ov70_0225DEE8 *param0, u32 param1)
{
    ov70_0225F7A8(&param0->unk_1E8, &param0->unk_3C, param1, 112);
}

void ov70_0225E390(UnkStruct_ov70_0225DEE8 *param0)
{
    const UnkStruct_ov66_0222E71C *v0;
    u32 v1;

    if (ov70_0225F7FC(&param0->unk_1E8) == 0) {
        return;
    }

    v1 = ov70_0225F7F8(&param0->unk_1E8);
    v0 = ov66_0222E374(param0->unk_34, v1);

    ov70_0225FDA0(&param0->unk_1E8, &param0->unk_1E8.unk_08, &param0->unk_3C, 112, v0);
}

void ov70_0225E3D0(UnkStruct_ov70_0225DEE8 *param0)
{
    ov70_0225F7E0(&param0->unk_1E8);
}

u32 ov70_0225E3E0(const UnkStruct_ov70_0225DEE8 *param0)
{
    return ov70_0225F7F8(&param0->unk_1E8);
}

BOOL ov70_0225E3F0(const UnkStruct_ov70_0225DEE8 *param0)
{
    return ov70_0225F7FC(&param0->unk_1E8);
}

BOOL ov70_0225E400(const UnkStruct_ov70_0225DEE8 *param0)
{
    return ov70_0225F814(&param0->unk_1E8);
}

void ov70_0225E410(UnkStruct_ov70_0225DEE8 *param0)
{
    ov70_0225F7EC(&param0->unk_1E8);
}

BOOL ov70_0225E420(const UnkStruct_ov70_0225DEE8 *param0, u32 param1)
{
    return ov70_0226C810(param0->unk_440, param1, 1);
}

void ov70_0225E430(UnkStruct_ov70_0225DEE8 *param0)
{
    param0->unk_1E8.unk_06 = 1;
}

void ov70_0225E43C(UnkStruct_ov70_0225DEE8 *param0, BOOL param1)
{
    ov70_0225F934(&param0->unk_1E8, param1);
}

void ov70_0225E44C(UnkStruct_ov70_0225DEE8 *param0)
{
    ov70_02260A68(&param0->unk_1E8.unk_114);
}

BOOL ov70_0225E45C(UnkStruct_ov70_0225DEE8 *param0)
{
    BOOL v0;

    v0 = param0->unk_43C;
    param0->unk_43C = 0;

    return v0;
}

void ov70_0225E46C(UnkStruct_ov70_0225DEE8 *param0, u32 param1)
{
    const UnkStruct_ov66_0222E71C *v0;
    u32 v1;

    GF_ASSERT(param1 < 20);

    v0 = ov66_0222E374(param0->unk_34, param1);
    v1 = ov66_0222E8C4(v0);

    ov70_02269268(param0->unk_438, param1, v1);

    if (param1 == ov66_0222E338(param0->unk_34)) {
        ov66_0222EB6C(param0->unk_34, v1);
    }
}

BOOL ov70_0225E4AC(const UnkStruct_ov70_0225DEE8 *param0, u32 param1)
{
    GF_ASSERT(param1 < 20);
    return ov70_02269298(param0->unk_438, param1);
}

static void ov70_0225E4C8(void *param0)
{
    UnkStruct_ov70_0225DEE8 *v0 = param0;

    ov70_022622A4(v0->unk_448);
    ov70_0225CAE0(v0->unk_444);
    ov70_0225E740(&v0->unk_3C);
}

static void ov70_0225E4EC(UnkStruct_ov70_0225E4EC *param0, SaveData *param1, u32 param2)
{
    G2_BlendNone();
    G2S_BlendNone();

    sub_0201DBEC(32, param2);
    GXLayers_SetBanks(&Unk_ov70_0226D664);
    gCoreSys.unk_65 = 0;
    GXLayers_SwapDisplay();

    {
        sub_0201975C(0, 0);
    }

    {
        int v0;

        sub_02018368(&Unk_ov70_0226D5BC);
        param0->unk_00 = sub_02018340(param2);

        for (v0 = 0; v0 < 4; v0++) {
            sub_020183C4(param0->unk_00, Unk_ov70_0226D5CC[v0], &Unk_ov70_0226D6B4[v0], 0);
            sub_02019690(Unk_ov70_0226D5CC[v0], 32, 0, param2);
            sub_02019EBC(param0->unk_00, Unk_ov70_0226D5CC[v0]);
        }
    }

    {
        Options *v1;
        u8 v2;

        v1 = SaveData_Options(param1);
        v2 = Options_Frame(v1);

        Font_LoadTextPalette(0, 5 * 32, param2);
        Font_LoadScreenIndicatorsPalette(0, 4 * 32, param2);

        sub_0200DAA4(param0->unk_00, Unk_ov70_0226D5CC[0], ((1 + (18 + 12)) + ((18 + 12) + 24)), 3, 0, param2);
        sub_0200DD0C(param0->unk_00, Unk_ov70_0226D5CC[0], 1, 1, v2, param2);
        sub_0200E2A4(param0->unk_00, Unk_ov70_0226D5CC[0], (1 + (18 + 12)), 2, 3, 0, param2);

        sub_02006E84(186, 90, 0, 2 * 32, 32, param2);
    }

    {
        int v3;

        NNS_G2dInitOamManagerModule();

        sub_0200A784(0, 126, 0, 31, 0, 126, 0, 31, param2);
        sub_0201E88C(&Unk_ov70_0226D5DC, GX_OBJVRAMMODE_CHAR_1D_32K, GX_OBJVRAMMODE_CHAR_1D_64K);
        sub_0201F834(24, param2);

        sub_0201E994();
        sub_0201F8E4();

        sub_0200966C(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_32K);
        sub_02009704(NNS_G2D_VRAM_TYPE_2DMAIN);

        sub_02039734();
        param0->unk_04 = sub_020095C4(24, &param0->unk_08, param2);
        sub_0200964C(&param0->unk_08, 0, (256 * FX32_ONE));

        for (v3 = 0; v3 < 4; v3++) {
            param0->unk_194[v3] = SpriteResourceCollection_New(24, v3, param2);
        }

        param0->unk_1A4 = sub_0201DCC8(24, param2);

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    }

    {
        param0->unk_1A8 = sub_02024220(param2, 0, 2, 0, 4, ov70_0225E754);
    }
}

static void ov70_0225E6C0(UnkStruct_ov70_0225E4EC *param0)
{
    CellActorCollection_Update(param0->unk_04);
    sub_0201DCE8();
}

static void ov70_0225E6D0(UnkStruct_ov70_0225E4EC *param0)
{
    sub_0201DC3C();

    {
        int v0;

        for (v0 = 0; v0 < 4; v0++) {
            sub_02019044(param0->unk_00, Unk_ov70_0226D5CC[v0]);
        }

        Heap_FreeToHeap(param0->unk_00);
    }

    {
        int v1;

        sub_0201DCF0(param0->unk_1A4);
        param0->unk_1A4 = NULL;

        for (v1 = 0; v1 < 4; v1++) {
            SpriteResourceCollection_Delete(param0->unk_194[v1]);
        }

        CellActorCollection_Delete(param0->unk_04);
        sub_0201E958();
        sub_0201F8B4();
        sub_0200A878();
    }

    {
        sub_020242C4(param0->unk_1A8);
    }
}

static void ov70_0225E740(UnkStruct_ov70_0225E4EC *param0)
{
    sub_0201C2B8(param0->unk_00);
    sub_0200A858();
    sub_0201DCAC();
}

static void ov70_0225E754(void)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(1);

    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_EdgeMarking(1);
    G3X_SetEdgeColorTable(Unk_ov70_0226D5EC);
    G3X_SetFog(0, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    G3X_SetClearColor(GX_RGB(26, 26, 26), 0, 0x7fff, 63, 0);
    G3_ViewPort(0, 0, 255, 191);

    {
        VecFx16 v0;

        {
            NNS_G3dGlbLightVector(0, 0xfffff805, 0xfffff224, 0x6e);
        }

        {
            VEC_Fx16Set(&v0, 0, 0, FX16_ONE);
            VEC_Fx16Normalize(&v0, &v0);
            NNS_G3dGlbLightVector(1, v0.x, v0.y, v0.z);
        }

        {
            VEC_Fx16Set(&v0, 0, 0, FX16_ONE);
            VEC_Fx16Normalize(&v0, &v0);
            NNS_G3dGlbLightVector(2, v0.x, v0.y, v0.z);
            NNS_G3dGlbLightColor(2, GX_RGB(31, 31, 31));
        }

        {
            VEC_Fx16Set(&v0, 0, 0, FX16_ONE);
            VEC_Fx16Normalize(&v0, &v0);
            NNS_G3dGlbLightVector(3, v0.x, v0.y, v0.z);
            NNS_G3dGlbLightColor(3, GX_RGB(31, 31, 31));
        }
    }
}

static void ov70_0225E88C(UnkStruct_ov70_0225DEE8 *param0)
{
    ov70_0225CA44(param0->unk_444);

    if ((param0->unk_04_4 == 0) && (param0->unk_06 == 0)) {
        {
            ov70_02262E20(param0->unk_454);
        }
    }

    ov70_02262210(param0->unk_448);

    if ((param0->unk_04_4 == 0) && (param0->unk_06 == 0)) {
        ov70_0225CA5C(param0->unk_444);

        {
            ov70_02262E2C(param0->unk_454);
        }

        ov70_0226C718(param0->unk_440);
    }

    ov70_0225E970(param0);

    if (param0->unk_03 == 0) {
        BOOL v0;

        if ((param0->unk_04_4 == 1) || (param0->unk_06 == 1) || (param0->unk_00 == 1)) {
            v0 = 1;
        } else {
            v0 = 0;
        }

        ov70_0225F418(&param0->unk_1E8, param0, v0, 112);
    }

    ov70_02269220(param0->unk_438);
}

static void ov70_0225E92C(UnkStruct_ov70_0225DEE8 *param0)
{
    MtxFx44 v0;

    sub_020241B4();

    ov70_02260AEC(param0->unk_450);
    ov70_02262298(param0->unk_448);
    ov70_0225CAD4(param0->unk_444);
    ov70_02269240(param0->unk_438);

    G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);

    ov70_0225E6C0(&param0->unk_3C);
}

static void ov70_0225E970(UnkStruct_ov70_0225DEE8 *param0)
{
    int v0;
    BOOL v1;
    BOOL v2;
    u32 v3;
    u32 v4;
    BOOL v5;

    v5 = ov66_0222E190(param0->unk_34);

    for (v0 = 0; v0 < UnkEnum_ov66_02232F38_03; v0++) {
        v2 = ov66_02233184(v0);

        if (v2 == 1) {
            if (ov66_022331A4(v0) == 0) {
                v1 = 1;
            } else {
                v1 = 0;
            }
        } else {
            v1 = 0;
        }

        v3 = ov66_02233224(v0);
        ov70_022627BC(param0->unk_448, UnkEnum_ov66_022324D0_00 + v0, v3, v2, v1, v5);
    }
}

static void ov70_0225E9C8(UnkStruct_ov70_0225E9C8 *param0, UnkStruct_ov70_0225E4EC *param1, SaveData *param2, u32 param3)
{
    BGL_AddWindow(param1->unk_00, &param0->unk_00, Unk_ov70_0226D5CC[0], 2, 19, 27, 4, 4, (((1 + (18 + 12)) + ((18 + 12) + 24)) + 9));
    BGL_FillWindow(&param0->unk_00, 15);

    param0->unk_18 = Strbuf_Init(384, param3);

    {
        Options *v0;

        v0 = SaveData_Options(param2);
        param0->unk_14 = Options_TextFrameDelay(v0);
    }
}

static void ov70_0225EA14(UnkStruct_ov70_0225E9C8 *param0)
{
    if (Text_IsPrinterActive(param0->unk_10)) {
        Text_RemovePrinter(param0->unk_10);
    }

    ov70_0225EB38(param0);

    Strbuf_Free(param0->unk_18);
    BGL_DeleteWindow(&param0->unk_00);
}

static void ov70_0225EA44(UnkStruct_ov70_0225E9C8 *param0, const Strbuf *param1)
{
    if (Text_IsPrinterActive(param0->unk_10)) {
        Text_RemovePrinter(param0->unk_10);
    }

    BGL_FillWindow(&param0->unk_00, 15);
    Strbuf_Copy(param0->unk_18, param1);

    param0->unk_10 = Text_AddPrinterWithParamsAndColor(&param0->unk_00, FONT_MESSAGE, param0->unk_18, 0, 0, param0->unk_14, TEXT_COLOR(1, 2, 15), NULL);

    sub_0200E060(&param0->unk_00, 1, 1, 1);
}

static void ov70_0225EAA4(UnkStruct_ov70_0225E9C8 *param0, const Strbuf *param1)
{
    if (Text_IsPrinterActive(param0->unk_10)) {
        Text_RemovePrinter(param0->unk_10);
    }

    BGL_FillWindow(&param0->unk_00, 15);
    Strbuf_Copy(param0->unk_18, param1);
    Text_AddPrinterWithParamsAndColor(&param0->unk_00, FONT_MESSAGE, param0->unk_18, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), NULL);
    sub_0200E060(&param0->unk_00, 1, 1, 1);
    sub_0201A9A4(&param0->unk_00);
}

static void ov70_0225EB08(UnkStruct_ov70_0225E9C8 *param0)
{
    GF_ASSERT(param0->unk_1C == NULL);
    param0->unk_1C = sub_0200E7FC(&param0->unk_00, 1);
}

static void ov70_0225EB24(UnkStruct_ov70_0225E9C8 *param0)
{
    if (param0->unk_1C != NULL) {
        DeleteWaitDial(param0->unk_1C);
        param0->unk_1C = NULL;
    }
}

static void ov70_0225EB38(UnkStruct_ov70_0225E9C8 *param0)
{
    if (param0->unk_1C != NULL) {
        sub_0200EBC8(param0->unk_1C);
        param0->unk_1C = NULL;
    }
}

static BOOL ov70_0225EB4C(const UnkStruct_ov70_0225E9C8 *param0)
{
    if (param0->unk_1C != NULL) {
        return 1;
    }

    return 0;
}

static BOOL ov70_0225EB5C(const UnkStruct_ov70_0225E9C8 *param0)
{
    if (Text_IsPrinterActive(param0->unk_10) == 0) {
        return 1;
    }

    return 0;
}

static void ov70_0225EB74(UnkStruct_ov70_0225E9C8 *param0)
{
    if (Text_IsPrinterActive(param0->unk_10)) {
        Text_RemovePrinter(param0->unk_10);
    }

    ov70_0225EB38(param0);

    sub_0200E084(&param0->unk_00, 1);
    sub_0201AD10(&param0->unk_00);
}

static void ov70_0225EBA8(UnkStruct_ov70_0225E9C8 *param0, UnkStruct_ov70_0225E4EC *param1, SaveData *param2, u32 param3)
{
    ov70_0225E9C8(param0, param1, param2, param3);
    sub_0201C2B4(&param0->unk_00, 2);
}

static void ov70_0225EBBC(UnkStruct_ov70_0225E9C8 *param0)
{
    ov70_0225EA14(param0);
}

static void ov70_0225EBC4(UnkStruct_ov70_0225E9C8 *param0, const Strbuf *param1)
{
    if (Text_IsPrinterActive(param0->unk_10)) {
        Text_RemovePrinter(param0->unk_10);
    }

    BGL_FillWindow(&param0->unk_00, 15);
    Strbuf_Copy(param0->unk_18, param1);

    param0->unk_10 = Text_AddPrinterWithParams(&param0->unk_00, FONT_MESSAGE, param0->unk_18, 0, 0, param0->unk_14, NULL);

    sub_0200E69C(&param0->unk_00, 1, (1 + (18 + 12)), 2, 3);
}

static void ov70_0225EC20(UnkStruct_ov70_0225EC20 *param0, UnkStruct_ov70_0225E4EC *param1, u32 param2)
{
    CellActorResourceData v0;
    CellActorInitParams v1;
    int v2;
    NARC *v3 = NARC_ctor(NARC_INDEX_GRAPHIC__SHOP_GRA, param2);

    param0->unk_40[0] = SpriteResourceCollection_AddTilesFrom(param1->unk_194[0], v3, 4, 0, 5000, NNS_G2D_VRAM_TYPE_2DMAIN, param2);
    param0->unk_40[1] = SpriteResourceCollection_AddPaletteFrom(param1->unk_194[1], v3, 10, 0, 5000, NNS_G2D_VRAM_TYPE_2DMAIN, 1, param2);
    param0->unk_40[2] = SpriteResourceCollection_AddFrom(param1->unk_194[2], v3, 5, 0, 5000, 2, param2);
    param0->unk_40[3] = SpriteResourceCollection_AddFrom(param1->unk_194[3], v3, 6, 0, 5000, 3, param2);

    NARC_dtor(v3);
    sub_0200A3DC(param0->unk_40[0]);
    sub_0200A640(param0->unk_40[1]);
    sub_020093B4(&v0, 5000, 5000, 5000, 5000, 0xffffffff, 0xffffffff, 0, 0, param1->unk_194[0], param1->unk_194[1], param1->unk_194[2], param1->unk_194[3], NULL, NULL);

    v1.collection = param1->unk_04;
    v1.resourceData = &v0;
    v1.priority = 0;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = param2;
    v1.position.x = 192 * FX32_ONE;

    for (v2 = 0; v2 < 2; v2++) {
        v1.position.y = Unk_ov70_0226D580[v2] * FX32_ONE;
        param0->unk_50[v2] = CellActorCollection_Add(&v1);

        CellActor_SetAnim(param0->unk_50[v2], v2);
        CellActor_SetAnimateFlag(param0->unk_50[v2], 1);
        CellActor_SetDrawFlag(param0->unk_50[v2], 0);
    }

    param0->unk_3C = 0;
}

static void ov70_0225ED4C(UnkStruct_ov70_0225EC20 *param0, UnkStruct_ov70_0225E4EC *param1)
{
    int v0;

    if (param0->unk_34 != NULL) {
        ov70_0225EDE0(param0);
    }

    if (param0->unk_30 != NULL) {
        ov70_0225EF14(param0, NULL, NULL);
    }

    for (v0 = 0; v0 < 2; v0++) {
        CellActor_Delete(param0->unk_50[v0]);
        param0->unk_50[v0] = NULL;
    }

    sub_0200A4E4(param0->unk_40[0]);
    sub_0200A6DC(param0->unk_40[1]);

    for (v0 = 0; v0 < 4; v0++) {
        SpriteResourceCollection_Remove(param1->unk_194[v0], param0->unk_40[v0]);
    }
}

static void ov70_0225EDA8(UnkStruct_ov70_0225EC20 *param0, u32 param1, u32 param2, u32 param3)
{
    int v0;
    GF_ASSERT(param0->unk_34 == NULL);
    param0->unk_34 = sub_02013A04(param1, param2);
    param0->unk_38 = param1;

    for (v0 = 0; v0 < param1; v0++) {
        param0->unk_34[v0].unk_04 = param3;
    }
}

static void ov70_0225EDE0(UnkStruct_ov70_0225EC20 *param0)
{
    if (param0->unk_34 != NULL) {
        sub_02013A3C(param0->unk_34);
        param0->unk_34 = NULL;
        param0->unk_38 = 0;
    }
}

static void ov70_0225EDF8(UnkStruct_ov70_0225EC20 *param0, const Strbuf *param1, u32 param2)
{
    sub_02013A6C(param0->unk_34, param1, param2);
}

static const ResourceMetadata *ov70_0225EE04(const UnkStruct_ov70_0225EC20 *param0)
{
    return param0->unk_34;
}

static BOOL ov70_0225EE08(const UnkStruct_ov70_0225EC20 *param0, u32 param1)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_38; v0++) {
        if (param0->unk_34[v0].unk_04 == param1) {
            return 1;
        }
    }

    return 0;
}

static void ov70_0225EE30(UnkStruct_ov70_0225EC20 *param0, const UnkStruct_ov84_02240FA8 *param1, UnkStruct_ov70_0225E4EC *param2, u16 param3, u16 param4, u32 param5, u8 param6, u8 param7, u8 param8)
{
    GF_ASSERT(param0->unk_30 == NULL);
    GF_ASSERT((param1->unk_12 * 2) < 18);

    param0->unk_00 = *param1;
    param0->unk_00.unk_0C = &param0->unk_20;
    param0->unk_3A = param1->unk_10;
    param0->unk_00.unk_04 = ov70_0225EF58;

    BGL_AddWindow(param2->unk_00, &param0->unk_20, Unk_ov70_0226D5CC[0], param6, param7, param8, param1->unk_12 * 2, 5, ((((1 + (18 + 12)) + ((18 + 12) + 24)) + 9) + (27 * 4)));
    BGL_FillWindow(&param0->unk_20, 15);
    Window_Show(&param0->unk_20, 1, ((1 + (18 + 12)) + ((18 + 12) + 24)), 3);

    param0->unk_30 = sub_0200112C(&param0->unk_00, param3, param4, param5);

    sub_0201A9A4(&param0->unk_20);
}

static u32 ov70_0225EED8(UnkStruct_ov70_0225EC20 *param0)
{
    u32 v0;

    if (param0->unk_30 == NULL) {
        return 0xfffffffe;
    }

    v0 = sub_02001288(param0->unk_30);

    switch (v0) {
    case 0xffffffff:
    case 0xfffffffe:
        ov70_0225EF70(param0);
        break;
    default:
        Sound_PlayEffect(1500);
        break;
    }

    return v0;
}

static void ov70_0225EF14(UnkStruct_ov70_0225EC20 *param0, u16 *param1, u16 *param2)
{
    int v0;

    if (param0->unk_30 == NULL) {
        return;
    }

    sub_02001384(param0->unk_30, param1, param2);

    param0->unk_30 = NULL;

    Window_Clear(&param0->unk_20, 1);
    sub_0201AD10(&param0->unk_20);
    BGL_DeleteWindow(&param0->unk_20);

    param0->unk_3C = 0;

    for (v0 = 0; v0 < 2; v0++) {
        CellActor_SetDrawFlag(param0->unk_50[v0], 0);
    }
}

static void ov70_0225EF58(BmpList *param0, u32 param1, u8 param2)
{
    if (param2 == 0) {
        Sound_PlayEffect(1500);
    }
}

static void ov70_0225EF6C(UnkStruct_ov70_0225EC20 *param0, BOOL param1)
{
    param0->unk_3C = param1;
}

static void ov70_0225EF70(UnkStruct_ov70_0225EC20 *param0)
{
    u16 v0;

    if (param0->unk_3C == 0) {
        CellActor_SetDrawFlag(param0->unk_50[0], 0);
        CellActor_SetDrawFlag(param0->unk_50[1], 0);
        return;
    }

    sub_020014DC(param0->unk_30, &v0, NULL);

    if (v0 <= 0) {
        CellActor_SetDrawFlag(param0->unk_50[0], 0);
    } else {
        CellActor_SetDrawFlag(param0->unk_50[0], 1);
    }

    if (v0 >= (param0->unk_3A - 7)) {
        CellActor_SetDrawFlag(param0->unk_50[1], 0);
    } else {
        CellActor_SetDrawFlag(param0->unk_50[1], 1);
    }
}

static void ov70_0225EFD4(UnkStruct_ov70_0225EFD4 *param0, UnkStruct_ov70_0225E4EC *param1, u32 param2)
{
    return;
}

static void ov70_0225EFD8(UnkStruct_ov70_0225EFD4 *param0)
{
    ov70_0225F024(param0);
}

static void ov70_0225EFE0(UnkStruct_ov70_0225EFD4 *param0, UnkStruct_ov70_0225E4EC *param1, u32 param2, u8 param3, u8 param4, u8 param5, u8 param6)
{
    BGL_AddWindow(param1->unk_00, &param0->unk_00, Unk_ov70_0226D5CC[0], param3, param4, param5, param6, 5, ((((1 + (18 + 12)) + ((18 + 12) + 24)) + 9) + (27 * 4)));
    Window_Show(&param0->unk_00, 1, ((1 + (18 + 12)) + ((18 + 12) + 24)), 3);
    BGL_FillWindow(&param0->unk_00, 15);
    sub_0201A9A4(&param0->unk_00);
}

static void ov70_0225F024(UnkStruct_ov70_0225EFD4 *param0)
{
    if (BGL_WindowAdded(&param0->unk_00) == 1) {
        Window_Clear(&param0->unk_00, 1);
        sub_0201AD10(&param0->unk_00);
        BGL_DeleteWindow(&param0->unk_00);
    }
}

static void ov70_0225F048(UnkStruct_ov70_0225EFD4 *param0, const Strbuf *param1, u8 param2, u8 param3)
{
    Text_AddPrinterWithParamsAndColor(&param0->unk_00, FONT_SYSTEM, param1, param2, param3, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), NULL);
    sub_0201A9A4(&param0->unk_00);
}

static void ov70_0225F078(UnkStruct_ov70_0225EFD4 *param0, u16 param1, u16 param2, u16 param3, u16 param4)
{
    BGL_WindowColor(&param0->unk_00, 15, param1, param2, param3, param4);
}

static void ov70_0225F098(UnkStruct_ov70_0225F098 *param0, UnkStruct_ov70_0225F208 *param1, u32 param2)
{
    Strbuf *v0;

    GF_ASSERT(param0->unk_00 == NULL);
    param0->unk_00 = sub_02013A04(2, param2);

    v0 = ov70_0225F288(param1, 1, 67);
    sub_02013A6C(param0->unk_00, v0, 0);
    v0 = ov70_0225F288(param1, 1, 66);
    sub_02013A6C(param0->unk_00, v0, 1);

    param0->unk_04 = Unk_ov70_0226D644;
    param0->unk_04.unk_10 = 2;
    param0->unk_04.unk_00 = param0->unk_00;
}

static void ov70_0225F100(UnkStruct_ov70_0225F098 *param0)
{
    if (param0->unk_00 != NULL) {
        sub_02013A3C(param0->unk_00);
        param0->unk_00 = NULL;
    }
}

static void ov70_0225F114(UnkStruct_ov70_0225F114 *param0, UnkStruct_ov70_0225E4EC *param1, u32 param2)
{
    BGL_AddWindow(param1->unk_00, &param0->unk_00, Unk_ov70_0226D5CC[0], 4, 4, 23, 16, 5, (((1 + (18 + 12)) + ((18 + 12) + 24)) + 9));
    BGL_FillWindow(&param0->unk_00, 15);
}

static void ov70_0225F144(UnkStruct_ov70_0225F114 *param0)
{
    BGL_DeleteWindow(&param0->unk_00);
}

static void ov70_0225F14C(UnkStruct_ov70_0225F114 *param0, const Strbuf *param1)
{
    Text_AddPrinterWithParamsAndColor(&param0->unk_00, FONT_SYSTEM, param1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), NULL);
    Window_Show(&param0->unk_00, 1, ((1 + (18 + 12)) + ((18 + 12) + 24)), 3);
    sub_0201A9A4(&param0->unk_00);
}

static void ov70_0225F184(UnkStruct_ov70_0225F114 *param0, UnkStruct_ov70_0225F208 *param1)
{
    u32 v0;
    Strbuf *v1;
    UnkStruct_ov65_0222F6EC *v2;

    v2 = sub_020382F8();
    v0 = ov66_022316F4(v2->unk_00, v2->unk_04);

    ov70_0225F2A8(param1, v2->unk_00, 5, 0, 2);
    v1 = ov70_0225F288(param1, 2, v0);
    ov70_0225F14C(param0, v1);
}

static void ov70_0225F1C0(UnkStruct_ov70_0225F114 *param0, UnkStruct_ov70_0225F208 *param1, int param2)
{
    u32 v0;
    s32 v1;
    Strbuf *v2;

    v1 = ov66_0223270C(param2);
    ov70_0225F2A8(param1, v1, 5, 0, 2);
    v2 = ov70_0225F288(param1, 2, 32);

    ov70_0225F14C(param0, v2);
}

static void ov70_0225F1F0(UnkStruct_ov70_0225F114 *param0, UnkStruct_ov70_0225F208 *param1, int param2)
{
    Strbuf *v0;

    v0 = ov70_0225F288(param1, 2, 14);
    ov70_0225F14C(param0, v0);
}

static void ov70_0225F208(UnkStruct_ov70_0225F208 *param0, u32 param1)
{
    int v0;
    static const u32 v1[4] = {
        672, 673, 695, 662
    };

    param0->unk_00 = StringTemplate_New(8, 64, param1);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_04[v0] = MessageLoader_Init(1, 26, v1[v0], param1);
    }

    param0->unk_14 = Strbuf_Init(480, param1);
    param0->unk_18 = Strbuf_Init(480, param1);
}

static void ov70_0225F25C(UnkStruct_ov70_0225F208 *param0)
{
    int v0;

    StringTemplate_Free(param0->unk_00);

    for (v0 = 0; v0 < 4; v0++) {
        MessageLoader_Free(param0->unk_04[v0]);
    }

    Strbuf_Free(param0->unk_14);
    Strbuf_Free(param0->unk_18);
}

static Strbuf *ov70_0225F288(UnkStruct_ov70_0225F208 *param0, int param1, u32 param2)
{
    MessageLoader_GetStrbuf(param0->unk_04[param1], param2, param0->unk_18);
    StringTemplate_Format(param0->unk_00, param0->unk_14, param0->unk_18);
    return param0->unk_14;
}

static void ov70_0225F2A8(UnkStruct_ov70_0225F208 *param0, u32 param1, u32 param2, u32 param3, int param4)
{
    StringTemplate_SetNumber(param0->unk_00, param3, param1, param2, param4, 1);
}

static void ov70_0225F2C8(UnkStruct_ov70_0225F208 *param0, const TrainerInfo *param1, u32 param2)
{
    StringTemplate_SetPlayerName(param0->unk_00, param2, param1);
}

static void ov70_0225F2D8(UnkStruct_ov70_0225F208 *param0, enum PlazaMinigame param1, u32 param2)
{
    StringTemplate_SetPlazaMinigameName(param0->unk_00, param2, param1);
}

static void ov70_0225F2E8(UnkStruct_ov70_0225F208 *param0, int param1, u32 param2)
{
    StringTemplate_SetPlazaEventName(param0->unk_00, param2, param1);
}

static void ov70_0225F2F8(UnkStruct_ov70_0225F208 *param0, u32 param1, u32 param2)
{
    StringTemplate_SetPlazaItemName(param0->unk_00, param2, param1);
}

static void ov70_0225F308(UnkStruct_ov70_0225F208 *param0, u32 param1, u32 param2)
{
    StringTemplate_SetCountryName(param0->unk_00, param2, param1);
}

static void ov70_0225F318(UnkStruct_ov70_0225F208 *param0, u32 param1, u32 param2, u32 param3)
{
    StringTemplate_SetCityName(param0->unk_00, param3, param1, param2);
}

static void ov70_0225F32C(UnkStruct_ov70_0225F208 *param0, u32 param1, u16 param2)
{
    StringTemplate_SetCustomMessageWord(param0->unk_00, param1, param2);
}

static void ov70_0225F338(UnkStruct_ov70_0225F208 *param0)
{
    StringTemplate_ClearArgs(param0->unk_00);
}

static void ov70_0225F344(UnkStruct_ov70_0225DEE8 *param0)
{
    param0->unk_43C = 1;
}

static void ov70_0225F350(UnkStruct_ov70_0225F350 *param0, const UnkStruct_ov70_02263910 *param1, UnkStruct_ov70_0225E4EC *param2, const TrainerInfo *param3, u32 param4)
{
    u32 v0;

    v0 = TrainerInfo_Gender(param3);

    param0->unk_14C = NARC_ctor(NARC_INDEX_GRAPHIC__WIFI_LOBBY_OTHER, param4);

    ov70_0225F9BC(param0, param2, param0->unk_14C, v0, param4);
    ov70_0225FA84(&param0->unk_08, param2, param0->unk_14C, param4);
    ov70_02260744(&param0->unk_114, param2, param0->unk_14C, param4);

    param0->unk_02 = 0;
    param0->unk_01 = 0;

    if (param1->unk_06 == 0) {
        param0->unk_00 = 0;

        sub_0201975C(4, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);
    } else {
        param0->unk_00 = 5;
    }
}

static void ov70_0225F3E4(UnkStruct_ov70_0225F350 *param0, UnkStruct_ov70_0225E9C8 *param1, UnkStruct_ov70_0225E4EC *param2)
{
    ov70_022607A8(&param0->unk_114);
    ov70_0225FAA8(&param0->unk_08, param1, param2);
    ov70_0225FA10(param0, param2);

    NARC_dtor(param0->unk_14C);
}

static void ov70_0225F418(UnkStruct_ov70_0225F350 *param0, UnkStruct_ov70_0225DEE8 *param1, BOOL param2, u32 param3)
{
    UnkStruct_ov66_0222DFF8 *v0;
    UnkStruct_ov70_0225E4EC *v1;
    UnkStruct_ov70_0225F208 *v2;
    BOOL v3;

    v0 = param1->unk_34;
    v1 = &param1->unk_3C;
    v2 = &param1->unk_340;

    switch (param0->unk_00) {
    case 0:
        if (param0->unk_06 == 1) {
            param0->unk_00++;
        }
        break;
    case 1:
        sub_0200F174(4, 0, 0, 0x7fff, 4, 1, param3);
        param0->unk_00++;
        break;
    case 2:
        if (ScreenWipe_Done() == 1) {
            {
                const UnkStruct_ov66_0222E71C *v4;

                v4 = ov66_0222E3BC(v0);
                ov70_0225F8AC(param0, v1, &param1->unk_340, param3, v4);
                param0->unk_01 = 4;
            }

            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 1);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
            param0->unk_00++;
        }
        break;
    case 3:
        sub_0200F174(4, 1, 1, 0x7fff, 6, 1, param3);
        param0->unk_00++;
        break;
    case 4:
        if (ScreenWipe_Done() == 1) {
            param0->unk_00++;
        }
        break;
    case 5:
        if (param2 == 1) {
            break;
        }

        switch (param0->unk_01) {
        case 1:
            v3 = ov70_022607D4(&param0->unk_114, v1, param0->unk_14C, param3);

            if (v3 == 1) {
                ov70_0225F344(param1);
            }
            break;
        case 4:
            break;
        case 3:
            if (param0->unk_153) {
                if (ov70_0226C810(param1->unk_440, param0->unk_150, param0->unk_152) == 0) {
                    param0->unk_153 = 0;
                    ov70_02260A68(&param0->unk_114);
                }
            }

            v3 = ov70_022607D4(&param0->unk_114, v1, param0->unk_14C, param3);

            if (v3 == 1) {
                ov66_0222EBD4(v0, ov66_0222E338(v0));
                ov66_0222EC50(v0);

                {
                    u32 v5, v6, v7;

                    v5 = ov66_0222EBA4(v0, ov66_0222E338(v0));
                    ov66_0222EC04(v5, &v6, &v7);

                    param0->unk_153 = 1;
                    param0->unk_150 = v6;
                    param0->unk_152 = v7;
                }
            }
            break;
        case 2:
            ov70_0225FACC(&param0->unk_08, &param1->unk_37C);
            break;
        default:
            break;
        }

        if (param0->unk_02 != 0) {
            param0->unk_00++;
        }
        break;
    case 6:
        sub_0200F174(4, 1, 0, 0x0, 3, 1, param3);
        param0->unk_00++;
        break;
    case 7:
        if (ScreenWipe_Done() == 1) {
            switch (param0->unk_01) {
            case 1:
            case 4:
            case 3:
                ov70_0225F920(param0, v1);
                break;
            case 2:
                ov70_0225F89C(param0, &param1->unk_37C, v1);
                break;
            }

            param0->unk_00++;
        }
        break;
    case 8: {
        const UnkStruct_ov66_0222E71C *v8;
        BOOL v9;
        BOOL v10;
        const UnkStruct_ov66_02230914 *v11;

        switch (param0->unk_02) {
        case 1:
        case 4:
            v8 = ov66_0222E3BC(v0);
            ov70_0225F8AC(param0, v1, &param1->unk_340, param3, v8);
            break;
        case 2: {
            BOOL v12;
            const UnkStruct_ov66_0222E71C *v13;

            v13 = ov66_0222E3BC(v0);

            if (param0->unk_03 == ov66_0222E338(v0)) {
                v8 = ov66_0222E3BC(v0);
                v12 = 1;
            } else {
                v8 = ov66_0222E374(v0, param0->unk_03);
                v12 = 0;
            }

            v9 = ov66_0222E924(v0, param0->unk_03);

            if (param0->unk_04 == 1) {
                v10 = ov66_0222E944(v0, param0->unk_03);
                v11 = ov66_0222E954(v0, param0->unk_03);

                if (v11 == NULL) {
                    v10 = 0;
                }
            } else {
                v10 = 0;
                v11 = NULL;
            }

            ov70_0225F844(param0, &param1->unk_37C, v1, v2, v12, param3, v8, v13, v9, v10, v11, 1);
        } break;
        case 3: {
            u32 v14;
            u32 v15;
            u32 v16;

            v14 = ov66_0222EBA4(v0, ov66_0222E338(v0));

            if (v14 == 0xffffffff) {
                GF_ASSERT(0);

                v14 = 0;
            }

            ov66_0222EC04(v14, &v15, &v16);
            ov70_0225F8F0(param0, v1, param3, v16);
        } break;
        }

        param0->unk_02 = 0;
        param0->unk_00++;
    } break;
    case 9:
        sub_0200F174(4, 1, 1, 0x0, 3, 1, param3);

        if (param0->unk_01 == 2) {
            ov70_0225FACC(&param0->unk_08, &param1->unk_37C);
        }

        param0->unk_00++;
        break;
    case 10:
        if (ScreenWipe_Done() == 1) {
            param0->unk_00 = 5;
        }
        break;
    }
}

static u32 ov70_0225F798(const UnkStruct_ov70_0225F350 *param0)
{
    return param0->unk_00;
}

static void ov70_0225F79C(UnkStruct_ov70_0225F350 *param0, u32 param1, BOOL param2)
{
    param0->unk_02 = 2;
    param0->unk_03 = param1;
    param0->unk_04 = param2;
}

static void ov70_0225F7A8(UnkStruct_ov70_0225F350 *param0, UnkStruct_ov70_0225E4EC *param1, u32 param2, u32 param3)
{
    GF_ASSERT(param2 < 27);
    GF_ASSERT(param0->unk_01 == 2);

    if (param0->unk_01 == 2) {
        ov70_0225FEC4(&param0->unk_08, param1, param0->unk_14C, param3, param2);
    }
}

static void ov70_0225F7E0(UnkStruct_ov70_0225F350 *param0)
{
    if (param0->unk_01 != 1) {
        param0->unk_02 = 1;
    }
}

static void ov70_0225F7EC(UnkStruct_ov70_0225F350 *param0)
{
    if (param0->unk_01 != 3) {
        param0->unk_02 = 3;
    }
}

static u32 ov70_0225F7F8(const UnkStruct_ov70_0225F350 *param0)
{
    return param0->unk_03;
}

static BOOL ov70_0225F7FC(const UnkStruct_ov70_0225F350 *param0)
{
    if (param0->unk_02 == 2) {
        return 1;
    }

    if (param0->unk_01 == 2) {
        return 1;
    }

    return 0;
}

static BOOL ov70_0225F814(const UnkStruct_ov70_0225F350 *param0)
{
    if ((param0->unk_02 == 0) && (param0->unk_01 == 2)) {
        return 1;
    }

    return 0;
}

static BOOL ov70_0225F828(const UnkStruct_ov70_0225F350 *param0)
{
    return ov70_0225FEEC(&param0->unk_08);
}

static BOOL ov70_0225F834(const UnkStruct_ov70_0225F350 *param0)
{
    if (param0->unk_02 != 0) {
        return 1;
    }

    return 0;
}

static void ov70_0225F844(UnkStruct_ov70_0225F350 *param0, UnkStruct_ov70_0225E9C8 *param1, UnkStruct_ov70_0225E4EC *param2, UnkStruct_ov70_0225F208 *param3, BOOL param4, u32 param5, const UnkStruct_ov66_0222E71C *param6, const UnkStruct_ov66_0222E71C *param7, BOOL param8, BOOL param9, const UnkStruct_ov66_02230914 *param10, BOOL param11)
{
    if (param0->unk_01 == 2) {
        ov70_0225F89C(param0, param1, param2);
    }

    ov70_0225FAD0(param0, param1, &param0->unk_08, param2, param3, param4, param0->unk_14C, param5, param6, param7, param8, param9, param10, param11);
    param0->unk_01 = 2;
}

static void ov70_0225F89C(UnkStruct_ov70_0225F350 *param0, UnkStruct_ov70_0225E9C8 *param1, UnkStruct_ov70_0225E4EC *param2)
{
    ov70_0225FE80(&param0->unk_08, param1, param2);
    param0->unk_01 = 0;
}

static void ov70_0225F8AC(UnkStruct_ov70_0225F350 *param0, UnkStruct_ov70_0225E4EC *param1, UnkStruct_ov70_0225F208 *param2, u32 param3, const UnkStruct_ov66_0222E71C *param4)
{
    if ((param0->unk_01 == 1) || (param0->unk_01 == 4) || (param0->unk_01 == 3)) {
        ov70_0225F920(param0, param1);
    }

    ov70_02260870(&param0->unk_114, param1, param2, param4, param0->unk_14C, param3);
    param0->unk_01 = 1;
}

static void ov70_0225F8F0(UnkStruct_ov70_0225F350 *param0, UnkStruct_ov70_0225E4EC *param1, u32 param2, u32 param3)
{
    if (param0->unk_01 == 3) {
        ov70_0225F920(param0, param1);
    }

    ov70_02260930(&param0->unk_114, param1, param3, param0->unk_14C, param2);
    param0->unk_01 = 3;
}

static void ov70_0225F920(UnkStruct_ov70_0225F350 *param0, UnkStruct_ov70_0225E4EC *param1)
{
    ov70_022609A8(&param0->unk_114, param1);
    param0->unk_01 = 0;
}

static void ov70_0225F934(UnkStruct_ov70_0225F350 *param0, BOOL param1)
{
    param0->unk_114.unk_06 = param1;
}

static void ov70_0225F940(UnkStruct_ov70_0225F350 *param0, UnkStruct_ov70_0225E4EC *param1, u32 param2, u32 param3)
{
    param0->unk_154 = param2;
    param0->unk_156 = param3;

    SysTask_ExecuteAfterVBlank(ov70_0225F95C, param0, 0);
}

static void ov70_0225F95C(SysTask *param0, void *param1)
{
    UnkStruct_ov70_0225F350 *v0 = param1;

    {
        sub_02007130(v0->unk_14C, v0->unk_154, 4, 0, 0, v0->unk_156);
    }

    {
        Font_LoadTextPalette(4, 5 * 32, v0->unk_156);
    }

    {
        sub_02006E84(BattleIcon_GetNARCIndex(), BattleIcon_GetMoveTypePaletteFileIndex(), 4, 11 * 32, 3 * 32, v0->unk_156);
    }

    SysTask_Done(param0);
}

static void ov70_0225F9BC(UnkStruct_ov70_0225F350 *param0, UnkStruct_ov70_0225E4EC *param1, NARC *param2, u32 param3, u32 param4)
{
    {
        if (param3 == 0) {
            sub_02007130(param2, 86, 4, 0, 0, param4);
        } else {
            sub_02007130(param2, 87, 4, 0, 0, param4);
        }

        sub_020070E8(param2, 54, param1->unk_00, Unk_ov70_0226D5CC[1], 0, 0, 0, param4);
    }

    {
        Font_LoadTextPalette(4, 5 * 32, param4);
    }
}

static void ov70_0225FA10(UnkStruct_ov70_0225F350 *param0, UnkStruct_ov70_0225E4EC *param1)
{
    return;
}

static void ov70_0225FA14(UnkStruct_ov70_0225E4EC *param0, NARC *param1, u32 param2, u32 param3, u32 param4, u32 param5)
{
    void *v0;
    NNSG2dScreenData *v1;

    v0 = sub_020071D0(param1, param2, 0, &v1, param5);

    {
        int v2;
        u16 *v3;
        int v4;

        v4 = v1->szByte / 2;
        v3 = (u16 *)v1->rawData;

        for (v2 = 0; v2 < v4; v2++) {
            v3[v2] += param4;
        }
    }

    sub_020198C0(param0->unk_00, param3, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    sub_0201C3C0(param0->unk_00, param3);
    Heap_FreeToHeap(v0);
}

static void ov70_0225FA84(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225E4EC *param1, NARC *param2, u32 param3)
{
    {
        int v0;

        for (v0 = 0; v0 < 5; v0++) {
            sub_0201A8D4(param1->unk_00, &param0->unk_04[v0], &Unk_ov70_0226D68C[v0]);
        }
    }
}

static void ov70_0225FAA8(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225E9C8 *param1, UnkStruct_ov70_0225E4EC *param2)
{
    if (param0->unk_54 != NULL) {
        ov70_0225FE80(param0, param1, param2);
    }

    {
        int v0;

        for (v0 = 0; v0 < 5; v0++) {
            BGL_DeleteWindow(&param0->unk_04[v0]);
        }
    }
}

static void ov70_0225FACC(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225E9C8 *param1)
{
    return;
}

static void ov70_0225FAD0(UnkStruct_ov70_0225F350 *param0, UnkStruct_ov70_0225E9C8 *param1, UnkStruct_ov70_0225FA84 *param2, UnkStruct_ov70_0225E4EC *param3, UnkStruct_ov70_0225F208 *param4, BOOL param5, NARC *param6, u32 param7, const UnkStruct_ov66_0222E71C *param8, const UnkStruct_ov66_0222E71C *param9, BOOL param10, BOOL param11, const UnkStruct_ov66_02230914 *param12, BOOL param13)
{
    u32 v0;
    TrainerInfo *v1;

    ov70_0225F338(param4);

    if (ov66_0222E7C8(param8) == 0) {
        v0 = TEXT_COLOR(7, 8, 0);

        if (param10 == 0) {
            ov70_0225F940(param0, param3, 86, param7);
        } else {
            ov70_0225F940(param0, param3, 88, param7);
        }
    } else {
        v0 = TEXT_COLOR(3, 4, 0);

        if (param10 == 0) {
            ov70_0225F940(param0, param3, 87, param7);
        } else {
            ov70_0225F940(param0, param3, 88, param7);
        }
    }

    sub_02019F04(param3->unk_00, Unk_ov70_0226D5CC[1], 0);
    sub_02019F04(param3->unk_00, Unk_ov70_0226D5CC[2], 0);
    sub_02019F04(param3->unk_00, Unk_ov70_0226D5CC[3], 0);

    ov70_022602C0(param2);
    ov70_0225FA14(param3, param6, 92, Unk_ov70_0226D5CC[1], 0, param7);

    v1 = TrainerInfo_New(param7);
    ov66_0222E640(param8, v1, param7);

    {
        u32 v2;

        ov70_022602DC(param2, param4, 0, 44, 0, 0, v0);
        ov70_0225F2A8(param4, TrainerInfo_ID_LowHalf(v1), 5, 0, 2);
        ov70_02260314(param2, param4, 0, 49, 122, 0, TEXT_COLOR(1, 2, 0));
        ov70_022602DC(param2, param4, 0, 45, 0, 16, v0);
        ov70_02260370(param2, param4, v1);
        ov70_02260314(param2, param4, 0, 50, 122, 16, TEXT_COLOR(1, 2, 0));
        ov70_02260360(param2, 0);
    }

    {
        ov70_022602DC(param2, param4, 1, 46, 0, 0, v0);

        if (ov66_0222E880(param8) == 0) {
            ov70_022602DC(param2, param4, 1, 55, 32, 16, TEXT_COLOR(1, 2, 0));
        } else {
            ov70_02260380(param2, param4, param8);
            ov70_022602DC(param2, param4, 1, 51, 32, 16, TEXT_COLOR(1, 2, 0));
        }

        ov70_02260360(param2, 1);
    }

    if (param11) {
        param2->unk_00 = 1;

        ov70_02260370(param2, param4, v1);
        ov70_022602DC(param2, param4, 4, 56, 8, 0, v0);
        ov70_022603B0(param2, param4, param12);
        ov70_022602DC(param2, param4, 4, 59, 6, 24, TEXT_COLOR(1, 2, 0));
        ov70_022602DC(param2, param4, 4, 60, 90, 24, TEXT_COLOR(1, 2, 0));
        ov70_022602DC(param2, param4, 4, 61, 6, 44, TEXT_COLOR(1, 2, 0));
        ov70_022602DC(param2, param4, 4, 62, 90, 44, TEXT_COLOR(1, 2, 0));
        ov70_02260360(param2, 4);
    } else {
        param2->unk_00 = 0;

        ov70_022602DC(param2, param4, 4, 48, 8, 0, v0);
        ov70_02260360(param2, 4);
        ov70_022603CC(param2, param3, param6, param7, param8, param9);
    }

    ov70_0225FEF0(param2, param3, param6, param7, ov66_0222E8C4(param8), param13);

    {
        u32 v3;

        if (param5 == 1) {
            if (ov66_0222E7C8(param8) == 1) {
                v3 = 0x61;
            } else {
                v3 = 0x0;
            }
        } else {
            v3 = ov66_0222E858(param8);
        }

        ov70_02260080(param2, param3, param6, param7, v3);
    }

    ov70_0225FDA0(param0, param2, param3, param7, param8);

    Heap_FreeToHeap(v1);
}

static void ov70_0225FDA0(UnkStruct_ov70_0225F350 *param0, UnkStruct_ov70_0225FA84 *param1, UnkStruct_ov70_0225E4EC *param2, u32 param3, const UnkStruct_ov66_0222E71C *param4)
{
    u16 v0;
    int v1;
    u16 v2;
    void *v3;
    NNSG2dCharacterData *v4;

    for (v1 = 0; v1 < 2; v1++) {
        v0 = ov66_0222E8E8(param4, v1);

        if (v0 != 0) {
            v2 = ov66_022316E8(v0);
            v3 = sub_02006FE8(BattleIcon_GetNARCIndex(), BattleIcon_GetMoveTypeTiles(v2), 1, param3, 1);

            NNS_G2dGetUnpackedCharacterData(v3, &v4);

            sub_0201958C(param2->unk_00, Unk_ov70_0226D5CC[3], v4->pRawData, 4 * 2 * 32, Unk_ov70_0226D590[v1]);
            Heap_FreeToHeap(v3);
            sub_020198E8(param2->unk_00, Unk_ov70_0226D5CC[3], 26, 2 + (2 * v1), 4, 2, Unk_ov70_0226D624[v1], 0, 0, 4, 2);
            sub_02019E2C(param2->unk_00, Unk_ov70_0226D5CC[3], 26, 2 + (2 * v1), 4, 2, 11 + BattleIcon_GetMoveTypePaletteIndex(v2));
            sub_0201C3C0(param2->unk_00, Unk_ov70_0226D5CC[3]);
        }
    }
}

static void ov70_0225FE80(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225E9C8 *param1, UnkStruct_ov70_0225E4EC *param2)
{
    if (param0->unk_00 == 1) {
        param0->unk_00 = 0;
    } else {
        ov70_0226068C(param0, param2);
    }

    ov70_02260048(param0, param2);
    ov70_02260228(param0, param2);

    sub_02019EBC(param2->unk_00, Unk_ov70_0226D5CC[1]);
    sub_02019EBC(param2->unk_00, Unk_ov70_0226D5CC[2]);
    sub_02019EBC(param2->unk_00, Unk_ov70_0226D5CC[3]);
}

static void ov70_0225FEC4(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225E4EC *param1, NARC *param2, u32 param3, u32 param4)
{
    ov70_02260048(param0, param1);
    ov70_0225FEF0(param0, param1, param2, param3, param4, 1);
}

static BOOL ov70_0225FEEC(const UnkStruct_ov70_0225FA84 *param0)
{
    return param0->unk_00;
}

static void ov70_0225FEF0(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225E4EC *param1, NARC *param2, u32 param3, u32 param4, BOOL param5)
{
    u32 v0;
    u32 v1;

    GF_ASSERT(param4 < 27);
    GF_ASSERT(param0->unk_54 == NULL);

    v0 = param4 / 3;
    v1 = param4 % 3;

    {
        BOOL v2;

        param0->unk_58[0] = SpriteResourceCollection_AddTilesFrom(param1->unk_194[0], param2, 61 + (v0 * 3), 0, 100, NNS_G2D_VRAM_TYPE_2DSUB, param3);

        v2 = sub_0200A3DC(param0->unk_58[0]);
        GF_ASSERT(v2);
        SpriteResource_ReleaseData(param0->unk_58[0]);

        param0->unk_58[1] = SpriteResourceCollection_AddPaletteFrom(param1->unk_194[1], param2, 89, 0, 100, NNS_G2D_VRAM_TYPE_2DSUB, 3, param3);

        v2 = sub_0200A640(param0->unk_58[1]);
        GF_ASSERT(v2);
        SpriteResource_ReleaseData(param0->unk_58[1]);

        param0->unk_58[2] = SpriteResourceCollection_AddFrom(param1->unk_194[2], param2, 60 + (v0 * 3), 0, 100, 2, param3);
        param0->unk_58[3] = SpriteResourceCollection_AddFrom(param1->unk_194[3], param2, 59 + (v0 * 3), 0, 100, 3, param3);
    }

    {
        CellActorResourceData v3;
        CellActorInitParams v4 = { NULL };

        sub_020093B4(&v3, 100, 100, 100, 100, 0xffffffff, 0xffffffff, 0, 0, param1->unk_194[0], param1->unk_194[1], param1->unk_194[2], param1->unk_194[3], NULL, NULL);

        v4.collection = param1->unk_04;
        v4.resourceData = &v3;
        v4.priority = 16;
        v4.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
        v4.heapID = param3;
        v4.position.x = (FX32_CONST(208));
        v4.position.y = (FX32_CONST(152) + (256 * FX32_ONE));
        param0->unk_54 = CellActorCollection_Add(&v4);

        CellActor_SetAnim(param0->unk_54, v1);
        CellActor_SetDrawFlag(param0->unk_54, param5);
    }
}

static void ov70_02260048(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225E4EC *param1)
{
    CellActor_Delete(param0->unk_54);
    param0->unk_54 = NULL;

    {
        int v0;

        sub_0200A4E4(param0->unk_58[0]);
        sub_0200A6DC(param0->unk_58[1]);

        for (v0 = 0; v0 < 4; v0++) {
            SpriteResourceCollection_Remove(param1->unk_194[v0], param0->unk_58[v0]);
        }
    }
}

static void ov70_02260080(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225E4EC *param1, NARC *param2, u32 param3, u32 param4)
{
    u32 v0;
    u16 v1, v2;
    u32 v3;
    UnkStruct_ov5_021DE5D0 v4;

    GF_ASSERT(param0->unk_68 == NULL);

    for (v3 = 0; v3 < 18; v3++) {
        if (Unk_ov70_0226D724[v3].unk_00 == param4) {
            v0 = Unk_ov70_0226D724[v3].unk_02;
            v1 = Unk_ov70_0226D724[v3].unk_04;
            v2 = Unk_ov70_0226D724[v3].unk_06;
        }
    }

    sub_02076AAC(v0, 2, &v4);

    {
        BOOL v5;

        param0->unk_6C[0] = SpriteResourceCollection_AddTiles(param1->unk_194[0], v4.unk_00, v4.unk_04, 0, 101, NNS_G2D_VRAM_TYPE_2DSUB, param3);
        v5 = sub_0200A3DC(param0->unk_6C[0]);
        GF_ASSERT(v5);

        param0->unk_6C[1] = SpriteResourceCollection_AddPalette(param1->unk_194[1], v4.unk_00, v4.unk_08, 0, 101, NNS_G2D_VRAM_TYPE_2DSUB, 1, param3);
        ov70_02260268(SpriteResource_GetPaletteData(param0->unk_6C[1]));
        v5 = sub_0200A640(param0->unk_6C[1]);
        GF_ASSERT(v5);

        SpriteResource_ReleaseData(param0->unk_6C[1]);

        param0->unk_6C[2] = SpriteResourceCollection_Add(param1->unk_194[2], v4.unk_00, v4.unk_0C, 0, 101, 2, param3);
        param0->unk_6C[3] = SpriteResourceCollection_Add(param1->unk_194[3], v4.unk_00, v4.unk_10, 0, 101, 3, param3);
    }

    {
        CellActorResourceData v6;
        CellActorInitParams v7 = { NULL };

        sub_020093B4(&v6, 101, 101, 101, 101, 0xffffffff, 0xffffffff, 1, 3, param1->unk_194[0], param1->unk_194[1], param1->unk_194[2], param1->unk_194[3], NULL, NULL);

        v7.collection = param1->unk_04;
        v7.resourceData = &v6;
        v7.priority = 32;
        v7.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
        v7.heapID = param3;
        v7.position.x = FX32_CONST(v1);
        v7.position.y = FX32_CONST(v2) + (256 * FX32_ONE);

        param0->unk_68 = CellActorCollection_Add(&v7);
    }
}

static void ov70_02260228(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225E4EC *param1)
{
    sub_0201ED1C(SpriteActor_ImageProxy(param0->unk_68));
    CellActor_Delete(param0->unk_68);

    param0->unk_68 = NULL;

    {
        int v0;

        sub_0200A4E4(param0->unk_6C[0]);
        sub_0200A6DC(param0->unk_6C[1]);

        for (v0 = 0; v0 < 4; v0++) {
            SpriteResourceCollection_Remove(param1->unk_194[v0], param0->unk_6C[v0]);
        }
    }
}

static void ov70_02260268(NNSG2dPaletteData *param0)
{
    int v0, v1, v2, v3, v4;
    int v5;
    u16 *v6;

    v5 = param0->szByte / 2;
    v6 = param0->pRawData;

    for (v0 = 0; v0 < v5; v0++) {
        v1 = ((*v6) & 0x1f);
        v2 = (((*v6) >> 5) & 0x1f);
        v3 = (((*v6) >> 10) & 0x1f);
        v4 = ((v1) * 76 + (v2) * 151 + (v3) * 29) >> 8;
        v1 = ((v4) * 256) >> 8;
        v2 = ((v4) * 200) >> 8;
        v3 = ((v4) * 128) >> 8;

        if (v1 > 31) {
            v1 = 31;
        }

        *v6 = (u16)((v3 << 10) | (v2 << 5) | v1);
        v6++;
    }
}

static void ov70_022602C0(UnkStruct_ov70_0225FA84 *param0)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        BGL_FillWindow(&param0->unk_04[v0], 0);
    }
}

static void ov70_022602DC(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225F208 *param1, u32 param2, u32 param3, u8 param4, u8 param5, u32 param6)
{
    Strbuf *v0;

    v0 = ov70_0225F288(param1, 1, param3);
    Text_AddPrinterWithParamsAndColor(&param0->unk_04[param2], FONT_SYSTEM, v0, param4, param5, TEXT_SPEED_NO_TRANSFER, param6, NULL);
}

static void ov70_02260314(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225F208 *param1, u32 param2, u32 param3, u8 param4, u8 param5, u32 param6)
{
    Strbuf *v0;
    u32 v1;
    s32 v2;

    v0 = ov70_0225F288(param1, 1, param3);
    v1 = Font_CalcStrbufWidth(FONT_SYSTEM, v0, 0);
    v2 = param4 - v1;

    if (v2 < 0) {
        v2 = 0;
    }

    Text_AddPrinterWithParamsAndColor(&param0->unk_04[param2], FONT_SYSTEM, v0, v2, param5, TEXT_SPEED_NO_TRANSFER, param6, NULL);
}

static void ov70_02260360(UnkStruct_ov70_0225FA84 *param0, u32 param1)
{
    sub_0201A9A4(&param0->unk_04[param1]);
}

static void ov70_02260370(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225F208 *param1, const TrainerInfo *param2)
{
    ov70_0225F2C8(param1, param2, 0);
}

static void ov70_02260380(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225F208 *param1, const UnkStruct_ov66_0222E71C *param2)
{
    u32 v0;
    u32 v1;

    v0 = ov66_0222E880(param2);
    v1 = ov66_0222E8A4(param2);

    ov70_0225F308(param1, v0, 0);
    ov70_0225F318(param1, v0, v1, 1);
}

static void ov70_022603B0(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225F208 *param1, const UnkStruct_ov66_02230914 *param2)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        ov70_0225F32C(param1, v0, param2->unk_00[v0]);
    }
}

static void ov70_022603CC(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225E4EC *param1, NARC *param2, u32 param3, const UnkStruct_ov66_0222E71C *param4, const UnkStruct_ov66_0222E71C *param5)
{
    int v0;
    NARC *v1;
    NARC *v2;
    BOOL v3;
    u32 v4;
    u32 v5;
    u32 v6;
    u32 v7;
    CellActorInitParams v8;
    CellActorResourceData v9;
    const UnkStruct_ov70_0226D844 *v10;
    static const u16 v11[4][3] = {
        { 192, 0, 8 },
        { 186, 102, 2 },
        { 192, 49, 1 },
        { 192, 53, 1 },
    };
    static const u16 v12[4] = {
        2,
        104,
        51,
        55,
    };
    static const u16 v13[4] = {
        3,
        105,
        52,
        56,
    };

    v1 = NARC_ctor(NARC_INDEX_GRAPHIC__UNIONOBJ2D_ONLYFRONT, param3);
    v6 = ov66_0222E798(param5);
    v7 = ov66_0222E7C8(param5);

    for (v0 = 0; v0 < 4; v0++) {
        if (v0 == 2) {
            if (v7 == 1) {
                param0->unk_AC[v0] = NULL;
                param0->unk_EC[v0] = NULL;
                param0->unk_FC[v0] = NULL;
                continue;
            }
        } else if (v0 == 3) {
            if (v7 == 0) {
                param0->unk_AC[v0] = NULL;
                param0->unk_EC[v0] = NULL;
                param0->unk_FC[v0] = NULL;
                continue;
            }
        }

        if (v11[v0][0] == 192) {
            v2 = v1;
        } else {
            v2 = param2;
        }

        param0->unk_AC[v0] = SpriteResourceCollection_AddPaletteFrom(param1->unk_194[1], v2, v11[v0][1], 0, 150 + v0, NNS_G2D_VRAM_TYPE_2DSUB, v11[v0][2], param3);
        v3 = sub_0200A640(param0->unk_AC[v0]);
        GF_ASSERT(v3);

        SpriteResource_ReleaseData(param0->unk_AC[v0]);

        param0->unk_EC[v0] = SpriteResourceCollection_AddFrom(param1->unk_194[2], v2, v12[v0], 0, 150 + v0, 2, param3);
        param0->unk_FC[v0] = SpriteResourceCollection_AddFrom(param1->unk_194[3], v2, v13[v0], 0, 150 + v0, 3, param3);
    }

    for (v0 = 0; v0 < 12; v0++) {
        v4 = ov66_0222E728(param4, v0);
        v5 = ov66_0222E760(param4, v0);

        if (v4 == 24) {
            param0->unk_BC[v0] = NULL;
            param0->unk_7C[v0] = NULL;
        } else {
            v10 = ov70_02260728(v4, v5, v6, v7);

            if (v10->unk_00 == 1) {
                v2 = param2;
            } else {
                v2 = v1;
            }

            param0->unk_BC[v0] = SpriteResourceCollection_AddTilesFrom(param1->unk_194[0], v2, v10->unk_02, 0, 150 + v0, NNS_G2D_VRAM_TYPE_2DSUB, param3);

            v3 = sub_0200A3DC(param0->unk_BC[v0]);
            GF_ASSERT(v3);

            SpriteResource_ReleaseData(param0->unk_BC[v0]);
            sub_020093B4(&v9, 150 + v0, 150 + v10->unk_00, 150 + v10->unk_00, 150 + v10->unk_00, 0xffffffff, 0xffffffff, 0, 0, param1->unk_194[0], param1->unk_194[1], param1->unk_194[2], param1->unk_194[3], NULL, NULL);

            v8.collection = param1->unk_04;
            v8.resourceData = &v9;
            v8.priority = 0;
            v8.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
            v8.heapID = param3;
            v8.position = Unk_ov70_0226D7B4[v0];
            v8.position.x += FX32_CONST(v10->unk_04);
            v8.position.y += FX32_CONST(v10->unk_06);

            param0->unk_7C[v0] = CellActorCollection_Add(&v8);

            CellActor_SetExplicitPaletteOffsetAutoAdjust(param0->unk_7C[v0], v10->unk_01);
        }
    }

    NARC_dtor(v1);
}

static void ov70_0226068C(UnkStruct_ov70_0225FA84 *param0, UnkStruct_ov70_0225E4EC *param1)
{
    int v0;

    for (v0 = 0; v0 < 12; v0++) {
        if (param0->unk_BC[v0] != NULL) {
            CellActor_Delete(param0->unk_7C[v0]);

            param0->unk_7C[v0] = NULL;

            sub_0200A4E4(param0->unk_BC[v0]);
            SpriteResourceCollection_Remove(param1->unk_194[0], param0->unk_BC[v0]);

            param0->unk_BC[v0] = NULL;
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_AC[v0] != NULL) {
            sub_0200A6DC(param0->unk_AC[v0]);
            SpriteResourceCollection_Remove(param1->unk_194[1], param0->unk_AC[v0]);
            SpriteResourceCollection_Remove(param1->unk_194[2], param0->unk_EC[v0]);
            SpriteResourceCollection_Remove(param1->unk_194[3], param0->unk_FC[v0]);
            param0->unk_AC[v0] = NULL;
        }
    }
}

static const UnkStruct_ov70_0226D844 *ov70_02260728(int param0, s32 param1, s32 param2, u32 param3)
{
    if (param1 == param2) {
        return &Unk_ov70_0226D5FC[param3];
    }

    return &Unk_ov70_0226D844[param0];
}

static void ov70_02260744(UnkStruct_ov70_02260744 *param0, UnkStruct_ov70_0225E4EC *param1, NARC *param2, u32 param3)
{
    int v0;

    sub_0201A8D4(param1->unk_00, &param0->unk_0C, &Unk_ov70_0226D5A4);

    for (v0 = 0; v0 < 3; v0++) {
        param0->unk_20[v0] = sub_020071D0(param2, 56 + v0, 0, &param0->unk_2C[v0], param3);
    }

    {
        static const TouchScreenHitTable v1 = { 32, 160, 40, 216 };
        param0->unk_1C = sub_02023FCC(&v1, 1, ov70_02260A50, param0, param3);
    }

    param0->unk_06 = 1;
}

static void ov70_022607A8(UnkStruct_ov70_02260744 *param0)
{
    int v0;

    sub_02024034(param0->unk_1C);
    BGL_DeleteWindow(&param0->unk_0C);

    for (v0 = 0; v0 < 3; v0++) {
        Heap_FreeToHeap(param0->unk_20[v0]);
    }

    param0->unk_02 = 0;
}

static BOOL ov70_022607D4(UnkStruct_ov70_02260744 *param0, UnkStruct_ov70_0225E4EC *param1, NARC *param2, u32 param3)
{
    BOOL v0 = 0;

    if (param0->unk_06 == 0) {
        sub_0202404C(param0->unk_1C);
    } else {
        param0->unk_03 = 1;
    }

    if (param0->unk_02 == 1) {
        if (param0->unk_00 == 0) {
            param0->unk_02 = 0;
            ov70_022609D4(param0, param1, 0, param2, param3);
        }
    }

    if (param0->unk_03 != param0->unk_04) {
        param0->unk_04 = param0->unk_03;

        if (param0->unk_03 == 2) {
            ov70_022609D4(param0, param1, 1, param2, param3);
        } else {
            if (param0->unk_02 == 0) {
                ov70_022609D4(param0, param1, 0, param2, param3);
            } else {
                ov70_022609D4(param0, param1, 2, param2, param3);
            }
        }

        if ((param0->unk_02 == 0) && (param0->unk_03 == 2)) {
            v0 = 1;
            param0->unk_02 = 1;
            param0->unk_00 = 1;
        }
    }

    return v0;
}

static void ov70_02260870(UnkStruct_ov70_02260744 *param0, UnkStruct_ov70_0225E4EC *param1, UnkStruct_ov70_0225F208 *param2, const UnkStruct_ov66_0222E71C *param3, NARC *param4, u32 param5)
{
    {
        sub_0200710C(param4, 55, param1->unk_00, Unk_ov70_0226D5CC[1], 0, 0, 0, param5);
    }

    param0->unk_08 = 0;

    {
        param0->unk_0A = ov66_0222E8C4(param3);

        sub_020070E8(param4, 0 + param0->unk_0A, param1->unk_00, Unk_ov70_0226D5CC[3], 320, 0, 0, param5);
        ov70_0225FA14(param1, param4, 27 + param0->unk_0A, Unk_ov70_0226D5CC[3], 320, param5);
    }

    {
        Strbuf *v0;

        v0 = ov70_0225F288(param2, 1, 63);

        BGL_FillWindow(&param0->unk_0C, 0);
        Text_AddPrinterWithParamsAndColor(&param0->unk_0C, FONT_SYSTEM, v0, 0, 4, TEXT_SPEED_INSTANT, TEXT_COLOR(15, 14, 0), NULL);
    }

    if (param0->unk_02 == 0) {
        ov70_022609D4(param0, param1, 0, param4, param5);
    } else {
        ov70_022609D4(param0, param1, 2, param4, param5);
    }
}

static void ov70_02260930(UnkStruct_ov70_02260744 *param0, UnkStruct_ov70_0225E4EC *param1, u32 param2, NARC *param3, u32 param4)
{
    GF_ASSERT(param2 < 3);

    {
        sub_0200710C(param3, 55, param1->unk_00, Unk_ov70_0226D5CC[1], 0, 0, 0, param4);
    }

    param0->unk_08 = 1;
    param0->unk_0A = param2;

    sub_020070E8(param3, 93 + param0->unk_0A, param1->unk_00, Unk_ov70_0226D5CC[3], 320, 0, 0, param4);

    if (param0->unk_02 == 0) {
        ov70_022609D4(param0, param1, 0, param3, param4);
    } else {
        ov70_022609D4(param0, param1, 2, param3, param4);
    }
}

static void ov70_022609A8(UnkStruct_ov70_02260744 *param0, UnkStruct_ov70_0225E4EC *param1)
{
    sub_02019EBC(param1->unk_00, Unk_ov70_0226D5CC[1]);
    sub_02019EBC(param1->unk_00, Unk_ov70_0226D5CC[2]);
    sub_02019EBC(param1->unk_00, Unk_ov70_0226D5CC[3]);
    sub_02019184(param1->unk_00, Unk_ov70_0226D5CC[3], 3, 0);
}

static void ov70_022609D4(UnkStruct_ov70_02260744 *param0, UnkStruct_ov70_0225E4EC *param1, u32 param2, NARC *param3, u32 param4)
{
    static const s8 v0[3] = {
        0, 9, 6
    };

    sub_020198E8(param1->unk_00, Unk_ov70_0226D5CC[2], 0, 3, 32, 21, (const void *)param0->unk_2C[param2]->rawData, 0, 3, 32, 32);
    sub_0201C3C0(param1->unk_00, Unk_ov70_0226D5CC[2]);

    if (param0->unk_08 == 1) {
        static const u8 v1[3] = {
            0, 1, 0
        };
        u32 v2;

        v2 = (param0->unk_0A * 2) + v1[param2];
        ov70_0225FA14(param1, param3, 96 + v2, Unk_ov70_0226D5CC[3], 320, param4);
    }

    sub_0201C63C(param1->unk_00, Unk_ov70_0226D5CC[3], 3, v0[param2]);
}

static void ov70_02260A50(u32 param0, u32 param1, void *param2)
{
    UnkStruct_ov70_02260744 *v0 = param2;

    v0->unk_03 = param1;

    if (v0->unk_03 == 0) {
        v0->unk_03 = 2;
    } else {
        if (v0->unk_03 == 3) {
            v0->unk_03 = 1;
        }
    }
}

static void ov70_02260A68(UnkStruct_ov70_02260744 *param0)
{
    param0->unk_00 = 0;
}
