
#include "overlay115/ov115_02260CEC.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/font_oam.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02012744_decl.h"
#include "struct_decls/struct_02012B20_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/sprite_manager_allocation.h"
#include "struct_defs/struct_0200C738.h"
#include "struct_defs/struct_020127E8.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0207C690.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay022/struct_ov22_022559F8.h"
#include "overlay072/struct_ov72_0223E2A8.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay092/struct_ov92_021D28C0.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay114/ov114_0225C700.h"
#include "overlay114/struct_ov114_0225CAD4_decl.h"
#include "overlay115/camera_angle.h"
#include "overlay115/struct_ov115_022612BC.h"
#include "overlay115/struct_ov115_02262DC4.h"
#include "overlay115/struct_ov115_02262F50.h"
#include "overlay115/struct_ov115_02265AD0.h"
#include "overlay115/struct_ov115_02265AD4.h"

#include "camera.h"
#include "cell_actor.h"
#include "core_sys.h"
#include "easy3d_object.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "sprite_resource.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "unk_0200A9DC.h"
#include "unk_0200DA60.h"
#include "unk_02012744.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0201DBEC.h"
#include "unk_0201E3D8.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "unk_0202419C.h"
#include "unk_02024220.h"
#include "unk_020363E8.h"

typedef struct {
    fx32 unk_00;
    fx32 unk_04;
    fx32 unk_08;
    fx32 unk_0C;
    int unk_10;
    int unk_14;
} UnkStruct_ov115_02261304;

typedef struct {
    u32 unk_00;
    s32 unk_04;
    s32 unk_08;
    Window unk_0C;
} UnkStruct_ov115_022617E8;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
    fx32 unk_08;
    MtxFx33 unk_0C;
    MtxFx33 unk_30;
    MtxFx33 unk_54;
    VecFx32 unk_78;
    VecFx32 unk_84;
    fx32 unk_90;
    fx32 unk_94;
    fx32 unk_98;
    VecFx32 unk_9C;
    fx32 unk_A8;
    fx32 unk_AC;
    fx32 unk_B0;
    fx32 unk_B4;
    fx32 unk_B8;
    fx32 unk_BC;
    fx32 unk_C0;
    fx32 unk_C4;
    fx32 unk_C8;
    fx32 unk_CC;
    fx32 unk_D0;
    fx32 unk_D4;
    VecFx32 unk_D8;
    fx32 unk_E4;
} UnkStruct_ov115_02261C18;

typedef struct {
    Easy3DObject unk_00[3];
    Easy3DModel unk_168[3];
    Easy3DAnim unk_198[6];
    u16 unk_210;
    u16 unk_212;
    Easy3DAnim unk_214[1];
    fx32 unk_228;
    u16 unk_22C;
    u16 unk_22E;
} UnkStruct_ov115_02263DF8;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    VecFx32 unk_04;
    fx32 unk_10;
    VecFx32 unk_14;
    s32 unk_20;
    BOOL unk_24;
} UnkStruct_ov115_02262134;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u16 unk_02;
    UnkStruct_ov115_02262134 unk_04;
    VecFx32 unk_2C;
    s16 unk_38;
    u16 unk_3A;
    BOOL unk_3C;
    fx32 unk_40;
} UnkStruct_ov115_022622F8;

typedef struct {
    u32 unk_00;
    NNSG2dSVec2 unk_04[8];
    u16 unk_24;
    u16 unk_26;
    u32 unk_28;
} UnkStruct_ov115_02262CA4;

typedef struct {
    Easy3DModel unk_00[5];
    Easy3DModel unk_50;
    SpriteResource *unk_60[4];
    CellActorResourceData unk_70;
} UnkStruct_ov115_02264A40;

typedef struct {
    CellActor *unk_00;
    Easy3DObject unk_04;
    Easy3DObject unk_7C;
    BOOL unk_F4;
    const UnkStruct_ov115_022622F8 *unk_F8;
    u16 unk_FC;
    u16 unk_FE;
    u16 unk_100;
    u16 unk_102;
    s16 unk_104;
} UnkStruct_ov115_022647A0;

typedef struct {
    BOOL unk_00;
    CellActor *unk_04;
} UnkStruct_ov115_02264BA0;

typedef struct {
    BOOL unk_00;
    CellActor *unk_04;
    VecFx32 unk_08;
    s32 unk_14;
    BOOL unk_18;
} UnkStruct_ov115_02264D80;

typedef struct {
    UnkStruct_ov115_02264D80 unk_00[8];
} UnkStruct_ov115_02264C90;

typedef struct {
    CellActor *unk_00[3];
    u32 unk_0C[3];
    VecFx32 unk_18[3];
    BOOL unk_3C;
} UnkStruct_ov115_022615B0;

typedef struct {
    UnkStruct_ov115_022615B0 unk_00[4];
} UnkStruct_ov115_02261574;

typedef struct {
    u32 unk_00;
    u32 unk_04;
    UnkStruct_ov115_02261304 unk_08;
} UnkStruct_ov115_02261ADC_sub1;

typedef struct {
    Easy3DObject unk_00[3];
    Easy3DModel unk_168[3];
    Easy3DAnim unk_198[3];
    fx32 unk_1D4;
    u8 unk_1D8;
    u8 unk_1D9;
    s16 unk_1DA;
    fx32 unk_1DC;
    fx32 unk_1E0;
} UnkStruct_ov115_02264FA0;

typedef struct {
    u16 unk_00;
    s16 unk_02;
    s16 unk_04;
    u8 unk_06;
    u8 unk_07;
} UnkStruct_ov115_022653CC;

typedef struct {
    UnkStruct_ov115_02262DC4 unk_00;
    UnkStruct_ov115_02262DC4 unk_18;
    UnkStruct_ov115_02262DC4 unk_30;
    s32 unk_48;
} UnkStruct_ov115_02262E64;

typedef struct {
    SpriteResource *unk_00[4];
    CellActorResourceData unk_10;
    CellActor *unk_34;
    u8 unk_38;
    u8 unk_39;
    u8 unk_3A;
    u8 unk_3B;
    s32 unk_3C;
} UnkStruct_ov115_02263130;

typedef struct {
    u32 unk_00[4];
    u32 unk_10;
    u32 unk_14;
} UnkStruct_ov115_022632C8;

typedef struct {
    SpriteResource *unk_00[4];
    CellActorResourceData unk_10;
    CellActor *unk_34;
    Window unk_38;
    FontOAM *unk_48;
    UnkStruct_02012B20 *unk_4C;
    SpriteManagerAllocation unk_50;
    Strbuf *unk_5C;
    SpriteResource *unk_60;
    UnkStruct_ov115_02261304 unk_64;
    UnkStruct_ov115_02261304 unk_7C;
    s16 unk_94;
    s16 unk_96;
    u16 unk_98;
    s16 unk_9A;
    u32 unk_9C;
} UnkStruct_ov115_02265788;

typedef struct {
    u16 unk_00;
    u8 unk_02;
    s8 unk_03;
} UnkStruct_ov115_022658E0;

typedef struct {
    BGL *unk_00;
    StringTemplate *unk_04;
    MessageLoader *unk_08;
    Strbuf *unk_0C;
    Strbuf *unk_10;
    u16 unk_14;
    u16 unk_16;
    GenericPointerData *unk_18;
    CellActorCollection *unk_1C;
    UnkStruct_0200C738 unk_20;
    SpriteResourceCollection *unk_1AC[4];
    CellActorResourceData unk_1BC;
    SpriteResource *unk_1E0[4];
    UnkStruct_02012744 *unk_1F0;
    Camera *camera;
    VecFx32 unk_1F8;
    UnkStruct_ov115_02264FA0 unk_204;
    UnkStruct_ov115_02261574 unk_3E8;
    UnkStruct_ov115_022617E8 unk_4E8;
    UnkStruct_ov115_02261ADC_sub1 unk_504;
    UnkStruct_ov115_02263DF8 unk_524;
    UnkStruct_ov114_0225CAD4 *unk_754;
    UnkStruct_ov115_022653CC unk_758;
    UnkStruct_ov115_02264A40 unk_760;
    UnkStruct_ov115_022647A0 unk_7F4[96];
    UnkStruct_ov115_02264BA0 unk_6A34;
    UnkStruct_ov115_02264C90 unk_6A3C;
    UnkStruct_ov115_02265788 unk_6B1C;
    NNSFndAllocator unk_6BBC;
} UnkStruct_ov115_02261ADC;

typedef struct UnkStruct_ov115_02260D78_t {
    u32 unk_00;
    BOOL unk_04;
    s32 unk_08;
    s32 unk_0C;
    u32 unk_10;
    u32 unk_14;
    s32 unk_18;
    s32 unk_1C;
    UnkStruct_ov115_02262CA4 unk_20;
    UnkStruct_ov115_022622F8 unk_4C[96];
    UnkStruct_ov115_02261C18 unk_19CC;
    UnkStruct_ov115_02261ADC unk_1AB4;
    UnkStruct_ov115_02265AD4 unk_8680;
    UnkStruct_ov72_0223E2A8 unk_8690;
    UnkStruct_ov115_02262E64 unk_86D4;
    const UnkStruct_ov115_02262F50 *unk_8720;
    u16 unk_8724;
    u16 unk_8726;
    UnkStruct_ov115_022612BC unk_8728;
    BOOL unk_872C;
    UnkStruct_ov115_02263130 unk_8730;
    UnkStruct_ov115_022632C8 unk_8770;
    UnkStruct_ov115_022658E0 unk_8788;
} UnkStruct_ov115_02260D78;

static void ov115_02261304(UnkStruct_ov115_02261304 *param0, fx32 param1, fx32 param2, fx32 param3, int param4);
static BOOL ov115_02261364(UnkStruct_ov115_02261304 *param0);
static void ov115_022613CC(u32 param0, u32 param1, u32 param2, s32 *param3, s32 *param4);
static void ov115_022613F8(UnkStruct_ov115_02260D78 *param0, u16 param1, u16 param2, u16 param3, u16 param4, u32 param5);
static u32 ov115_022614F8(UnkStruct_ov115_02260D78 *param0);
static void ov115_02261520(UnkStruct_ov115_02261574 *param0, UnkStruct_ov115_02261ADC *param1, u32 param2, u32 param3, u32 param4);
static void ov115_02261574(UnkStruct_ov115_02261574 *param0, UnkStruct_ov115_02261ADC *param1);
static void ov115_0226158C(UnkStruct_ov115_02261574 *param0, u32 param1, u32 param2, int param3);
static void ov115_02261598(UnkStruct_ov115_02261574 *param0);
static void ov115_022615B0(UnkStruct_ov115_022615B0 *param0, CellActorInitParamsEx *param1, UnkStruct_ov115_02261ADC *param2, u32 param3, u32 param4, u32 param5, u32 param6);
static void ov115_02261648(UnkStruct_ov115_022615B0 *param0);
static void ov115_02261660(UnkStruct_ov115_022615B0 *param0, u32 param1, u32 param2, int param3);
static void ov115_02261744(UnkStruct_ov115_022615B0 *param0);
static void ov115_0226177C(UnkStruct_ov115_022615B0 *param0, u32 param1);
static void ov115_022617D8(UnkStruct_ov115_022615B0 *param0, u32 param1);
static void ov115_022617E8(UnkStruct_ov115_022617E8 *param0, UnkStruct_ov115_02261ADC *param1, const UnkStruct_ov115_02262F50 *param2, u32 param3, u32 param4, NARC *param5, u32 param6);
static void ov115_02261A04(UnkStruct_ov115_022617E8 *param0, UnkStruct_ov115_02261ADC *param1);
static void ov115_02261A10(UnkStruct_ov115_022617E8 *param0, UnkStruct_ov115_02261ADC *param1);
static BOOL ov115_02261A3C(UnkStruct_ov115_022617E8 *param0, UnkStruct_ov115_02261ADC *param1);
static void ov115_02261A54(UnkStruct_ov115_022617E8 *param0, UnkStruct_ov115_02261ADC *param1);
static void ov115_02261A74(UnkStruct_ov115_022617E8 *param0, UnkStruct_ov115_02261ADC *param1);
static BOOL ov115_02261AA4(UnkStruct_ov115_022617E8 *param0, UnkStruct_ov115_02261ADC *param1);
static void ov115_02261AB8(UnkStruct_ov115_02261ADC *param0, const UnkStruct_ov115_02261C18 *param1);
static void ov115_02261AC8(UnkStruct_ov115_02261ADC *param0, u32 param1, u32 param2, u32 param3);
static void ov115_02261AD8(UnkStruct_ov115_02261ADC *param0, u32 param1);
static void ov115_02261ADC(UnkStruct_ov115_02261ADC *param0);
static BOOL ov115_02261AEC(UnkStruct_ov115_02261ADC *param0);
static BOOL ov115_02261B1C(UnkStruct_ov115_02261ADC *param0);
static void ov115_02261B34(const UnkStruct_ov115_02260D78 *param0, UnkStruct_ov115_02261C18 *param1);
static void ov115_02261BBC(const UnkStruct_ov115_02260D78 *param0, UnkStruct_ov115_02261C18 *param1);
static void ov115_02261C18(UnkStruct_ov115_02261C18 *param0, BOOL param1);
static void ov115_02261C1C(UnkStruct_ov115_02261C18 *param0, u16 param1);
static void ov115_02261C48(UnkStruct_ov115_02261C18 *param0, u16 param1);
static u32 ov115_02261D84(const UnkStruct_ov115_02261C18 *param0, const VecFx32 *param1, const VecFx32 *param2, VecFx32 *param3);
static BOOL ov115_02261EA8(const UnkStruct_ov115_02261C18 *param0, const VecFx32 *param1);
static fx32 ov115_02261F3C(const UnkStruct_ov115_02261C18 *param0, u16 param1);
static fx32 ov115_02261F68(const UnkStruct_ov115_02261C18 *param0, u16 param1);
static void ov115_02261F94(UnkStruct_ov115_02261C18 *param0, fx32 param1);
static void ov115_022620D8(UnkStruct_ov115_02261C18 *param0, u16 param1);
static void ov115_022620DC(UnkStruct_ov115_02261C18 *param0, fx32 param1);
static u16 ov115_022620E4(const UnkStruct_ov115_02261C18 *param0, s32 param1, s32 param2);
static u16 ov115_022620EC(const UnkStruct_ov115_02261C18 *param0, s32 param1, s32 param2);
static u16 ov115_022620F4(const UnkStruct_ov115_02261C18 *param0, s32 param1, s32 param2);
static void ov115_02262134(const UnkStruct_ov115_02262134 *param0, UnkStruct_ov115_02265AD0 *param1);
static void ov115_0226218C(const UnkStruct_ov115_02265AD0 *param0, UnkStruct_ov115_02262134 *param1);
static void ov115_022621DC(UnkStruct_ov115_02260D78 *param0, const UnkStruct_ov115_02262134 *param1, u32 param2);
static void ov115_022622EC(UnkStruct_ov115_02260D78 *param0, UnkStruct_ov115_022622F8 *param1, BOOL param2, u32 param3);
static void ov115_022622F8(UnkStruct_ov115_022622F8 *param0);
static void ov115_02262304(UnkStruct_ov115_02260D78 *param0);
static void ov115_02262354(UnkStruct_ov115_02260D78 *param0, UnkStruct_ov115_022622F8 *param1);
static void ov115_02262524(UnkStruct_ov115_02260D78 *param0);
static void ov115_02262540(UnkStruct_ov115_02260D78 *param0);
static void ov115_02262574(UnkStruct_ov115_022622F8 *param0, UnkStruct_ov115_02260D78 *param1);
static void ov115_022625A8(UnkStruct_ov115_02260D78 *param0);
static BOOL ov115_022625C8(const UnkStruct_ov115_02260D78 *param0);
static fx32 ov115_022625F0(const UnkStruct_ov115_022622F8 *param0);
static void ov115_02262620(const UnkStruct_ov115_022622F8 *param0, VecFx32 *param1);
static void ov115_022626BC(UnkStruct_ov115_022622F8 *param0, UnkStruct_ov115_02260D78 *param1, BOOL param2);
static void ov115_022626E0(UnkStruct_ov115_022622F8 *param0, UnkStruct_ov115_02260D78 *param1, BOOL param2, fx32 param3, BOOL param4);
static void ov115_022627B4(UnkStruct_ov115_022622F8 *param0, UnkStruct_ov115_02260D78 *param1);
static BOOL ov115_02262888(const UnkStruct_ov115_022622F8 *param0);
static BOOL ov115_022628A4(const UnkStruct_ov115_022622F8 *param0);
static BOOL ov115_022628B8(UnkStruct_ov115_022622F8 *param0);
static void ov115_022628DC(UnkStruct_ov115_022622F8 *param0, UnkStruct_ov115_02260D78 *param1);
static void ov115_022628EC(UnkStruct_ov115_022622F8 *param0, UnkStruct_ov115_02260D78 *param1);
static void ov115_0226294C(UnkStruct_ov115_022622F8 *param0, const VecFx32 *param1);
static void ov115_02262974(UnkStruct_ov115_02260D78 *param0);
static void ov115_02262990(UnkStruct_ov115_02260D78 *param0);
static void ov115_02262B70(UnkStruct_ov115_02260D78 *param0);
static BOOL ov115_02262C60(UnkStruct_ov115_02260D78 *param0);
static void ov115_02262CA4(UnkStruct_ov115_02262CA4 *param0);
static void ov115_02262CBC(UnkStruct_ov115_02262CA4 *param0, NNSG2dSVec2 param1);
static BOOL ov115_02262D0C(UnkStruct_ov115_02262CA4 *param0, NNSG2dSVec2 *param1);
static BOOL ov115_02262D3C(UnkStruct_ov115_02262CA4 *param0, NNSG2dSVec2 *param1);
static BOOL ov115_02262D58(UnkStruct_ov115_02262CA4 *param0, NNSG2dSVec2 *param1);
static u32 ov115_02262D7C(UnkStruct_ov115_02262CA4 *param0);
static void ov115_02262D90(UnkStruct_ov115_02260D78 *param0);
static void ov115_02262DB0(UnkStruct_ov115_02262E64 *param0, const UnkStruct_ov115_02262F50 *param1, const UnkStruct_ov115_022612BC *param2);
static void ov115_02262DC4(UnkStruct_ov115_02262E64 *param0, const UnkStruct_ov115_02262F50 *param1, const UnkStruct_ov115_022612BC *param2, u16 param3, u16 param4);
static BOOL ov115_02262E64(UnkStruct_ov115_02262E64 *param0);
static void ov115_02262EFC(UnkStruct_ov115_02260D78 *param0, const UnkStruct_ov115_02262E64 *param1);
static void ov115_02262F04(UnkStruct_ov115_02260D78 *param0, const UnkStruct_ov115_02262DC4 *param1);
static void ov115_02262F50(const UnkStruct_ov115_02262F50 *param0, const UnkStruct_ov115_022612BC *param1, u32 param2, UnkStruct_ov115_02262DC4 *param3);
static void ov115_02262FB4(UnkStruct_ov115_02263130 *param0, UnkStruct_ov115_02261ADC *param1, u32 param2);
static void ov115_022630DC(UnkStruct_ov115_02263130 *param0, UnkStruct_ov115_02261ADC *param1);
static void ov115_02263130(UnkStruct_ov115_02263130 *param0);
static BOOL ov115_02263150(UnkStruct_ov115_02263130 *param0, UnkStruct_ov115_02260D78 *param1);
static void ov115_0226327C(UnkStruct_ov115_022632C8 *param0);
static void ov115_02263294(UnkStruct_ov115_022632C8 *param0, u32 param1, u32 param2);
static void ov115_022632C8(UnkStruct_ov115_022632C8 *param0);
static u32 ov115_022632D8(const UnkStruct_ov115_022632C8 *param0);
static BOOL ov115_022632DC(const UnkStruct_ov115_022632C8 *param0, u32 param1);
static void ov115_022633FC(UnkStruct_ov115_02260D78 *param0, u32 param1);
static void ov115_02263560(UnkStruct_ov115_02260D78 *param0);
static void ov115_02263640(const UnkStruct_ov115_02260D78 *param0, UnkStruct_ov115_02261ADC *param1);
static void ov115_0226369C(const UnkStruct_ov115_02260D78 *param0, UnkStruct_ov115_02261ADC *param1);
static void ov115_02263308(void);
static void ov115_02263328(void);
static void ov115_022633B4(UnkStruct_ov115_02261ADC *param0, u32 param1, u32 param2, u32 param3);
static void ov115_022633EC(UnkStruct_ov115_02261ADC *param0);
static void ov115_0226376C(UnkStruct_ov115_02261ADC *param0, u32 param1);
static void ov115_02263954(UnkStruct_ov115_02261ADC *param0);
static void ov115_02263990(UnkStruct_ov115_02261ADC *param0, u32 param1);
static void ov115_02263A3C(UnkStruct_ov115_02261ADC *param0);
static void ov115_02263BCC(UnkStruct_ov115_02261ADC *param0, u32 param1);
static void ov115_02263C04(UnkStruct_ov115_02261ADC *param0);
static void ov115_02263C24(UnkStruct_ov115_02261ADC *param0, u32 param1, u32 param2, u32 param3);
static void ov115_02263CC0(UnkStruct_ov115_02261ADC *param0);
static void ov115_02263CD0(UnkStruct_ov115_02261ADC *param0);
static void ov115_02263CD8(UnkStruct_ov115_02261ADC *param0, NARC *param1, u32 param2, u32 param3);
static void ov115_02263DF4(UnkStruct_ov115_02261ADC *param0);
static void ov115_02263A74(UnkStruct_ov115_02261ADC *param0, NARC *param1, u32 param2);
static void ov115_02263B78(UnkStruct_ov115_02261ADC *param0);
static void ov115_02263DF8(UnkStruct_ov115_02263DF8 *param0, NARC *param1, u32 param2, NNSFndAllocator *param3);
static void ov115_02263FF4(UnkStruct_ov115_02263DF8 *param0, NNSFndAllocator *param1);
static void ov115_02264044(UnkStruct_ov115_02263DF8 *param0, const UnkStruct_ov115_02261C18 *param1, int param2);
static void ov115_022640A4(UnkStruct_ov115_02263DF8 *param0, const UnkStruct_ov115_02261C18 *param1, int param2);
static void ov115_022640C0(UnkStruct_ov115_02263DF8 *param0, const UnkStruct_ov115_02261C18 *param1);
static void ov115_022640EC(UnkStruct_ov115_02263DF8 *param0, const UnkStruct_ov115_02261C18 *param1);
static void ov115_02264110(UnkStruct_ov115_02263DF8 *param0, const UnkStruct_ov115_02261C18 *param1);
static void ov115_02264134(UnkStruct_ov115_02263DF8 *param0, const UnkStruct_ov115_02261C18 *param1);
static void ov115_0226414C(UnkStruct_ov115_02263DF8 *param0, u32 param1);
static void ov115_02264190(UnkStruct_ov115_02263DF8 *param0, u32 param1);
static BOOL ov115_02264214(UnkStruct_ov115_02263DF8 *param0, fx32 param1);
static void ov115_0226422C(UnkStruct_ov115_02263DF8 *param0, BOOL param1);
static void ov115_0226425C(UnkStruct_ov115_02263DF8 *param0, BOOL param1);
static void ov115_02264268(UnkStruct_ov115_02263DF8 *param0, u32 param1);
static void ov115_02264270(UnkStruct_ov115_02263DF8 *param0);
static void ov115_022642F8(s16 param0, s16 param1, VecFx32 *param2);
static void ov115_02264324(const VecFx32 *param0, NNSG2dSVec2 *param1);
static void ov115_02264354(const VecFx32 *param0, VecFx32 *param1, u32 param2, u32 param3);
static void ov115_0226439C(const VecFx32 *param0, VecFx32 *param1, u32 param2, u32 param3);
static void ov115_022643EC(UnkStruct_ov115_02261ADC *param0, NARC *param1, u32 param2);
static void ov115_02264564(UnkStruct_ov115_02261ADC *param0);
static void ov115_02264620(UnkStruct_ov115_02261ADC *param0, const UnkStruct_ov115_022622F8 *param1, u32 param2, u32 param3);
static void ov115_0226464C(UnkStruct_ov115_02261ADC *param0, const UnkStruct_ov115_022622F8 *param1);
static void ov115_02264684(UnkStruct_ov115_02261ADC *param0, u32 param1);
static void ov115_022646BC(UnkStruct_ov115_02261ADC *param0, UnkStruct_ov115_022647A0 *param1, u32 param2);
static void ov115_02264728(UnkStruct_ov115_02261ADC *param0, UnkStruct_ov115_022647A0 *param1);
static void ov115_02264740(UnkStruct_ov115_02261ADC *param0, UnkStruct_ov115_022647A0 *param1, const UnkStruct_ov115_022622F8 *param2, u32 param3);
static void ov115_0226477C(UnkStruct_ov115_02261ADC *param0, UnkStruct_ov115_022647A0 *param1, const UnkStruct_ov115_022622F8 *param2);
static void ov115_022647A0(UnkStruct_ov115_022647A0 *param0, UnkStruct_ov115_02261ADC *param1, u32 param2);
static void ov115_02264848(UnkStruct_ov115_022647A0 *param0);
static void ov115_02264908(UnkStruct_ov115_022647A0 *param0);
static void ov115_02264924(UnkStruct_ov115_022647A0 *param0);
static UnkStruct_ov115_022647A0 *ov115_02264948(UnkStruct_ov115_02261ADC *param0);
static BOOL ov115_02264980(UnkStruct_ov115_022647A0 *param0, const UnkStruct_ov115_022622F8 *param1, u32 param2);
static void ov115_022649F0(UnkStruct_ov115_022647A0 *param0, UnkStruct_ov115_02261ADC *param1);
static Easy3DModel *ov115_02264A40(const UnkStruct_ov115_022622F8 *param0, UnkStruct_ov115_02264A40 *param1);
static void ov115_02264A54(UnkStruct_ov115_022647A0 *param0);
static void ov115_02264B40(UnkStruct_ov115_02261ADC *param0, UnkStruct_ov115_02264BA0 *param1, u32 param2, u32 param3);
static void ov115_02264BA0(UnkStruct_ov115_02264BA0 *param0);
static void ov115_02264BAC(UnkStruct_ov115_02264BA0 *param0);
static void ov115_02264BC0(UnkStruct_ov115_02264BA0 *param0);
static void ov115_02264BF8(UnkStruct_ov115_02264BA0 *param0);
static void ov115_02264BD8(UnkStruct_ov115_02264BA0 *param0, s32 param1, s32 param2);
static void ov115_02264C0C(UnkStruct_ov115_02261ADC *param0, UnkStruct_ov115_02264C90 *param1, u32 param2, u32 param3);
static void ov115_02264C78(UnkStruct_ov115_02261ADC *param0, UnkStruct_ov115_02264C90 *param1);
static void ov115_02264C90(UnkStruct_ov115_02264C90 *param0);
static void ov115_02264D80(UnkStruct_ov115_02264C90 *param0, s32 param1, s32 param2);
static void ov115_02264DD8(int param0, int param1, int param2, int param3, int param4, s32 *param5, s32 *param6);
static void ov115_02264E48(UnkStruct_ov115_02264FA0 *param0, UnkStruct_ov115_02261ADC *param1, NARC *param2, int param3, u32 param4, u32 param5, NNSFndAllocator *param6);
static void ov115_02264F68(UnkStruct_ov115_02264FA0 *param0, UnkStruct_ov115_02261ADC *param1, NNSFndAllocator *param2);
static void ov115_02264FA0(UnkStruct_ov115_02264FA0 *param0);
static void ov115_022650C8(UnkStruct_ov115_02264FA0 *param0);
static void ov115_022650F8(UnkStruct_ov115_02264FA0 *param0, fx32 param1);
static void ov115_02265100(const VecFx32 *param0, const VecFx32 *param1, const VecFx32 *param2, fx32 param3, VecFx32 *param4, fx32 *param5);
static void ov115_02265274(UnkStruct_ov115_02261ADC *param0, fx32 param1);
static void ov115_0226527C(UnkStruct_ov115_02261ADC *param0, u16 param1);
static void ov115_022652A4(UnkStruct_ov115_022653CC *param0, u8 param1);
static void ov115_022652C0(UnkStruct_ov115_022653CC *param0, UnkStruct_ov115_02261ADC *param1);
static void ov115_022653CC(UnkStruct_ov115_022653CC *param0);
static void ov115_022653F4(UnkStruct_ov115_02261ADC *param0, s16 param1, u16 param2);
static void ov115_02265478(UnkStruct_ov115_02265788 *param0, UnkStruct_ov115_02261ADC *param1, NARC *param2, u32 param3);
static void ov115_02265688(UnkStruct_ov115_02265788 *param0, UnkStruct_ov115_02261ADC *param1);
static void ov115_02265700(UnkStruct_ov115_02265788 *param0, UnkStruct_ov115_02261ADC *param1, u32 param2);
static void ov115_02265788(UnkStruct_ov115_02265788 *param0);
static void ov115_022657A8(UnkStruct_ov115_02265788 *param0, UnkStruct_ov115_02261ADC *param1, u32 param2);
static void ov115_02265820(UnkStruct_ov115_02265788 *param0);
static void ov115_022658E0(UnkStruct_ov115_022658E0 *param0);
static void ov115_022658F8(UnkStruct_ov115_022658E0 *param0, UnkStruct_ov115_02264FA0 *param1, UnkStruct_ov115_02263DF8 *param2);
static void ov115_02265A08(UnkStruct_ov115_022658E0 *param0);

static const u32 Unk_ov115_02265B38[3] = {
    0x0,
    0x294,
    0x2EE
};

static const u8 Unk_ov115_02265B0A[5][2] = {
    { 0x0, 0x0 },
    { 0x1, 0xA },
    { 0xB, 0x14 },
    { 0x15, 0x1E },
    { 0x1F, 0x28 }
};

static const NNSG3dResName Unk_ov115_022660A4[6][15] = {
    {
        "polySurface2",
        "polySurface3",
        "pTorus2",
        "null1",
    },
    {
        "polySurface7",
        "polySurface13",
        "pSphere2",
        "pSphere3",
        "pSphere6",
        "pSphere7",
    },
    { "polySurface13",
        "pSphere7" },
    {
        "null1",
        "pCylinder4",
        "pCylinder5",
        "pSphere2",
        "pSphere3",
        "pSphere6",
        "pSphere7",
        "pTorus1",
        "pTorus2",
        "polySurface13",
        "polySurface8",
        "polySurface2",
        "polySurface3",
        "polySurface7",
        "polySurface12",
    },
    {
        "polySurface7",
        "polySurface13",
        "pSphere2",
        "pSphere3",
        "pSphere6",
        "pSphere7",
        "null1",
    },
    {
        "polySurface7",
        "polySurface13",
        "pSphere2",
        "pSphere3",
        "pSphere6",
        "pSphere7",
    },
};

static const u8 Unk_ov115_02266644[6] = {
    0x0,
    0x0,
    0x0,
    0x2,
    0x1,
    0x0,
};

static const u8 Unk_ov115_02265AE0[1] = {
    0x0,
};

static const VecFx32 Unk_ov115_02265B20 = {
    (FX32_CONST(0)),
    (FX32_CONST(-90)),
    (FX32_CONST(0)),
};

static const VecFx32 Unk_ov115_02265B44 = {
    0x0,
    FX32_CONST(2500),
    0x0,
};

static const u32 Unk_ov115_02265B2C[3] = {
    0x64,
    0xC8,
    0x12C,
};

static const u16 Unk_ov115_02265C3C[4][4] = {
    { 0x0, 0x0, 0x0, 0x0 },
    { 0x0, 0x7FFF, 0x0, 0x0 },
    { 0x0, 0x5555, 0xAAAA, 0x0 },
    { 0x0, 0x7FFF, 0x3FFF, 0xBFFF },
};

static const u16 Unk_ov115_02265C5C[4][4] = {
    { 0x0, 0x0, 0x0, 0x0 },
    { 0x7FFF, 0x0, 0x0, 0x0 },
    { 0x7FFF, 0xD554, 0x2AAA, 0x0 },
    { 0x7FFF, 0x0, 0xBFFF, 0x3FFF },
};

static const UnkStruct_ov92_021D28C0 Unk_ov115_02265CA4[4][4][4] = {
    {
        { 0x0 },
        {
            { 0x0, 0x0 },
            { 0xC, 0x2 },
        },
        {
            { 0x0, 0x0 },
            { 0x17, 0x4 },
            { 0x1, 0x4 },
        },
        {
            { 0x0, 0x0 },
            { 0xC, 0x2 },
            { 0x17, 0x6 },
            { 0x1, 0x6 },
        },
    },
    {
        { 0x0 },
        {
            { 0xC, 0x2 },
            { 0x0, 0x0 },
        },
        {
            { 0x1, 0x4 },
            { 0x0, 0x0 },
            { 0x17, 0x4 },
        },
        {
            { 0xC, 0x2 },
            { 0x0, 0x0 },
            { 0x1, 0x6 },
            { 0x17, 0x6 },
        },
    },
    {
        { 0x0 },
        {
            { 0x0 },
        },
        {
            { 0x17, 0x4 },
            { 0x1, 0x4 },
            { 0x0, 0x0 },
        },
        {
            { 0x1, 0x6 },
            { 0x17, 0x6 },
            { 0x0, 0x0 },
            { 0xC, 0x2 },
        },
    },
    {
        { 0x0 },
        {
            { 0x0 },
        },
        {
            { 0x0, 0x0 },
        },
        {
            { 0x17, 0x6 },
            { 0x1, 0x6 },
            { 0xC, 0x2 },
            { 0x0, 0x0 },
        },
    },
};

static TPData Unk_ov115_022666C0[8];

static const s16 Unk_ov115_02265B7C[12] = {
    0xB1,
    0xA7,
    0x93,
    0x89,
    0x7F,
    0x75,
    0x6B,
    0x61,
    0x57,
    0x4D,
    0x4D,
    0x4D
};

UnkStruct_ov115_02260D78 *ov115_02260CEC(u32 param0, u32 param1, u32 param2, u32 param3, UnkStruct_ov115_02262F50 *param4)
{
    UnkStruct_ov115_02260D78 *v0;
    u32 v1;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov115_02260D78));
    memset(v0, 0, sizeof(UnkStruct_ov115_02260D78));

    v0->unk_04 = 1;
    v0->unk_08 = 0;
    v0->unk_0C = param1;
    v0->unk_10 = param2;
    v0->unk_14 = param3;
    v0->unk_8720 = param4;

    ov115_02261B34(v0, &v0->unk_19CC);
    ov115_022633FC(v0, param0);
    ov115_02262FB4(&v0->unk_8730, &v0->unk_1AB4, param0);
    ov115_0226327C(&v0->unk_8770);

    v1 = sub_0201E3F4(Unk_ov115_022666C0, 8, 4);
    GF_ASSERT(v1 == 1);

    return v0;
}

void ov115_02260D78(UnkStruct_ov115_02260D78 *param0)
{
    u32 v0;

    v0 = sub_0201E530();
    GF_ASSERT(v0 == 1);

    ov115_022630DC(&param0->unk_8730, &param0->unk_1AB4);
    ov115_02263560(param0);
    Heap_FreeToHeap(param0);
}

BOOL ov115_02260DAC(UnkStruct_ov115_02260D78 *param0, u32 param1)
{
    BOOL v0;
    BOOL v1 = 1;
    s32 v2;

    if (param0->unk_1AB4.unk_4E8.unk_00 >= 4) {
        if (param0->unk_8728.unk_01) {
            v2 = -120;
        } else {
            v2 = 120;
        }

        ov115_02261C48(&param0->unk_19CC, param0->unk_19CC.unk_02 + v2);
    }

    ov115_02261AB8(&param0->unk_1AB4, &param0->unk_19CC);
    ov115_022640EC(&param0->unk_1AB4.unk_524, &param0->unk_19CC);
    ov115_02264110(&param0->unk_1AB4.unk_524, &param0->unk_19CC);

    switch (param0->unk_1AB4.unk_4E8.unk_00) {
    case 0:
        ov115_02263130(&param0->unk_8730);
        param0->unk_1AB4.unk_4E8.unk_00++;
        break;
    case 1:
        v0 = ov115_02263150(&param0->unk_8730, param0);

        if (v0 == 1) {
            param0->unk_1AB4.unk_4E8.unk_00++;
            CommTiming_StartSync(2);
        }
        break;
    case 2:
        if (!CommTiming_IsSyncState(2)) {
            break;
        }

        param0->unk_1AB4.unk_4E8.unk_00++;
        param0->unk_1AB4.unk_4E8.unk_08 = 65;
        break;
    case 3:
        param0->unk_1AB4.unk_4E8.unk_08--;

        if (param0->unk_1AB4.unk_4E8.unk_08 == 50) {
            Sound_PlayEffect(1562);
        }

        if (param0->unk_1AB4.unk_4E8.unk_08 == 20) {
            Sound_PlayEffect(1598);
        }

        ov115_02264214(&param0->unk_1AB4.unk_524, (FX32_CONST(1.0)));

        if (param0->unk_1AB4.unk_4E8.unk_08 == 0) {
            ov115_02261A74(&param0->unk_1AB4.unk_4E8, &param0->unk_1AB4);
            param0->unk_1AB4.unk_4E8.unk_00 = 4;
        }
        break;
    case 4:
        if (param1 == 1) {
            param0->unk_1AB4.unk_4E8.unk_00 = 5;
        }
        break;
    case 5:
        ov115_02261A10(&param0->unk_1AB4.unk_4E8, &param0->unk_1AB4);
        Sound_PlayEffect(1501);
        param0->unk_1AB4.unk_4E8.unk_00 = 6;
        break;
    case 6:
        v0 = ov115_02261A3C(&param0->unk_1AB4.unk_4E8, &param0->unk_1AB4);

        if (v0 == 0) {
            param0->unk_1AB4.unk_4E8.unk_00 = 7;
        }
        break;
    case 7:
        v0 = ov115_02261AA4(&param0->unk_1AB4.unk_4E8, &param0->unk_1AB4);

        if (v0 == 0) {
            param0->unk_1AB4.unk_4E8.unk_00 = 8;
        }
        break;
    case 8:
        ov115_02261A54(&param0->unk_1AB4.unk_4E8, &param0->unk_1AB4);
        ov115_02261C18(&param0->unk_19CC, 1);
        v1 = 0;
        break;
    }

    ov115_022640A4(&param0->unk_1AB4.unk_524, &param0->unk_19CC, param0->unk_00);
    ov115_0226369C(param0, &param0->unk_1AB4);
    return v1;
}

BOOL ov115_02260F70(UnkStruct_ov115_02260D78 *param0, u32 param1)
{
    BOOL v0;
    BOOL v1 = 1;
    s32 v2;

    switch (param0->unk_1AB4.unk_504.unk_00) {
    case 0:

        ov115_022625A8(param0);
        ov115_02262D90(param0);

        sub_0200AAE0(24, -14, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 2);

        ov115_02261ADC(&param0->unk_1AB4);
        ov114_0225CBB0(param0->unk_1AB4.unk_754);
        ov115_02265A08(&param0->unk_8788);
        ov115_02265788(&param0->unk_1AB4.unk_6B1C);

        param0->unk_1AB4.unk_504.unk_00++;
        break;
    case 1:
        v0 = 1;

        if (ov115_02261AEC(&param0->unk_1AB4) == 0) {
            v0 = 0;
        }

        ov115_02262304(param0);
        ov115_02262540(param0);

        if (ov115_022625C8(param0) == 1) {
            v0 = 0;
        }

        if (ov115_02261B1C(&param0->unk_1AB4) == 0) {
            v0 = 0;
        }

        if (sub_0200AC1C(2) == 0) {
            v0 = 0;
        }

        if ((v0 == 1) && (param1 == 1)) {
            param0->unk_1AB4.unk_504.unk_04 = 0;
            param0->unk_1AB4.unk_504.unk_00++;
        }
        break;
    case 2:
        param0->unk_1AB4.unk_504.unk_04++;

        if (param0->unk_1AB4.unk_504.unk_04 >= 64) {
            param0->unk_1AB4.unk_504.unk_00++;
        }
        break;
    case 3:
        v1 = 0;
        break;
    }

    if (param0->unk_8728.unk_01) {
        v2 = -120;
    } else {
        v2 = 120;
    }

    ov115_02261C48(&param0->unk_19CC, param0->unk_19CC.unk_02 + v2);
    ov115_022640C0(&param0->unk_1AB4.unk_524, &param0->unk_19CC);
    ov115_022640EC(&param0->unk_1AB4.unk_524, &param0->unk_19CC);
    ov115_022640A4(&param0->unk_1AB4.unk_524, &param0->unk_19CC, param0->unk_00);
    ov115_0226369C(param0, &param0->unk_1AB4);
    ov115_02265820(&param0->unk_1AB4.unk_6B1C);

    return v1;
}

BOOL ov115_022610D4(UnkStruct_ov115_02260D78 *param0)
{
    BOOL v0;

    if (param0->unk_00 < 3 - 1) {
        if (Unk_ov115_02265B38[param0->unk_00 + 1] <= param0->unk_08) {
            param0->unk_00++;

            if (param0->unk_00 == 1) {
                ov115_022658E0(&param0->unk_8788);
            }
        }
    }

    sub_0201E564(&param0->unk_8690, 1, 0);
    ov115_02262974(param0);

    {
        v0 = ov115_02262E64(&param0->unk_86D4);

        if (v0 == 0) {
            ov115_02262EFC(param0, &param0->unk_86D4);
        }
    }

    {
        u32 v1;

        v0 = ov115_022632DC(&param0->unk_8770, param0->unk_10);

        if (v0 == 1) {
            v1 = ov115_022632D8(&param0->unk_8770);

            if (v1 != 0xffff) {
                ov115_02264268(&param0->unk_1AB4.unk_524, v1);
            }

            ov115_022632C8(&param0->unk_8770);
        }
    }

    ov115_02262304(param0);
    ov115_02261BBC(param0, &param0->unk_19CC);
    ov115_02263640(param0, &param0->unk_1AB4);
    ov115_02262524(param0);
    ov115_022658F8(&param0->unk_8788, &param0->unk_1AB4.unk_204, &param0->unk_1AB4.unk_524);

    if (param0->unk_04 == 1) {
        param0->unk_08++;
    }

    if (param0->unk_08 >= param0->unk_0C) {
        param0->unk_08 = param0->unk_0C;
        return 1;
    }

    return 0;
}

void ov115_022611C8(UnkStruct_ov115_02260D78 *param0)
{
    sub_0201C2B8(param0->unk_1AB4.unk_00);
    sub_0201DCAC();
    sub_0200A858();
}

s32 ov115_022611E0(const UnkStruct_ov115_02260D78 *param0)
{
    return param0->unk_08;
}

void ov115_022611E4(UnkStruct_ov115_02260D78 *param0, const UnkStruct_ov115_02265AD0 *param1)
{
    UnkStruct_ov115_02262134 v0;

    if (param0->unk_14 != param1->unk_00) {
        ov115_0226218C(param1, &v0);
        ov115_022621DC(param0, &v0, 2);

        if (param1->unk_02) {
            ov115_0226158C(&param0->unk_1AB4.unk_3E8, param1->unk_00, param1->unk_12, param0->unk_00);
        }
    }
}

BOOL ov115_02261224(UnkStruct_ov115_02260D78 *param0, UnkStruct_ov115_02265AD0 *param1)
{
    int v0;

    for (v0 = 0; v0 < 96; v0++) {
        if (param0->unk_4C[v0].unk_00 == 4) {
            ov115_02262134(&param0->unk_4C[v0].unk_04, param1);
            ov115_022622F8(&param0->unk_4C[v0]);
            return 1;
        }
    }

    return 0;
}

void ov115_02261260(UnkStruct_ov115_02260D78 *param0, const UnkStruct_ov115_02265AD4 *param1)
{
    param0->unk_8680 = *param1;
}

u32 ov115_02261274(const UnkStruct_ov115_02260D78 *param0)
{
    return param0->unk_18;
}

void ov115_02261278(UnkStruct_ov115_02260D78 *param0, u32 param1)
{
    param0->unk_8726 = param0->unk_8724;
    param0->unk_8724 = param1;

    ov115_02262DC4(&param0->unk_86D4, param0->unk_8720, &param0->unk_8728, param0->unk_8726, param0->unk_8724);
}

void ov115_022612AC(UnkStruct_ov115_02260D78 *param0, u32 param1, u32 param2)
{
    ov115_02263294(&param0->unk_8770, param1, param2);
}

void ov115_022612BC(UnkStruct_ov115_02260D78 *param0, const UnkStruct_ov115_022612BC *param1)
{
    param0->unk_8728 = *param1;
    param0->unk_872C = 1;

    ov115_02262DB0(&param0->unk_86D4, param0->unk_8720, &param0->unk_8728);
    ov115_02262EFC(param0, &param0->unk_86D4);
}

static void ov115_02261304(UnkStruct_ov115_02261304 *param0, fx32 param1, fx32 param2, fx32 param3, int param4)
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
    param0->unk_10 = 0;
    param0->unk_14 = param4;
}

static BOOL ov115_02261364(UnkStruct_ov115_02261304 *param0)
{
    fx32 v0;
    fx32 v1;
    fx32 v2;
    fx32 v3;

    v3 = FX_Mul(param0->unk_08, param0->unk_10 << FX32_SHIFT);
    v1 = (param0->unk_10 * param0->unk_10) << FX32_SHIFT;
    v2 = FX_Mul(param0->unk_0C, v1);
    v2 = FX_Div(v2, 2 * FX32_ONE);
    v0 = v3 + v2;

    param0->unk_00 = param0->unk_04 + v0;

    if ((param0->unk_10 + 1) <= param0->unk_14) {
        param0->unk_10++;
        return 0;
    }

    param0->unk_10 = param0->unk_14;
    return 1;
}

static void ov115_022613CC(u32 param0, u32 param1, u32 param2, s32 *param3, s32 *param4)
{
    static const UnkStruct_ov92_021D28C0 v0[4][4][4] = {
        {
            { 0 },
            {
                { 128, 144 },
                { 128, 48 },
            },
            {
                { 128, 144 },
                { 208, 64 },
                { 48, 64 },
            },
            {
                { 128, 144 },
                { 128, 48 },
                { 208, 96 },
                { 48, 96 },
            },
        },
        {
            { 0 },
            {
                { 128, 48 },
                { 128, 144 },
            },
            {
                { 48, 64 },
                { 128, 144 },
                { 208, 64 },
            },
            {
                { 128, 48 },
                { 128, 144 },
                { 48, 96 },
                { 208, 96 },
            },
        },
        {
            { 0 },
            {
                { 0 },
            },
            {
                { 208, 64 },
                { 48, 64 },
                { 128, 144 },
            },
            {
                { 48, 96 },
                { 208, 96 },
                { 128, 144 },
                { 128, 48 },
            },
        },
        {
            { 0 },
            {
                { 0 },
            },
            {
                { 0, 0 },
            },
            {
                { 208, 96 },
                { 48, 96 },
                { 128, 48 },
                { 128, 144 },
            },
        },
    };

    *param3 = v0[param1][param0 - 1][param2].unk_00;
    *param4 = v0[param1][param0 - 1][param2].unk_04;
}

static void ov115_022613F8(UnkStruct_ov115_02260D78 *param0, u16 param1, u16 param2, u16 param3, u16 param4, u32 param5)
{
    UnkStruct_ov115_02262134 v0;
    NNSG2dSVec2 v1;
    BOOL v2;
    s32 v3;
    BOOL v4 = 0;
    fx32 v5;

    v0.unk_00 = param0->unk_14;
    v0.unk_02 = 0;
    v1.x = (param1 - param3) / 2;
    v1.y = (param2 - param4) / 2;
    v0.unk_04.x = v1.x << FX32_SHIFT;
    v0.unk_04.z = v1.y << FX32_SHIFT;
    v0.unk_04.y = 0;
    v5 = VEC_Mag(&v0.unk_04);

    if (v5 > (0x8000 + 0x16200)) {
        VEC_Normalize(&v0.unk_04, &v0.unk_04);
        v0.unk_04.x = FX_Mul(v0.unk_04.x, (0x8000 + 0x16200));
        v0.unk_04.z = FX_Mul(v0.unk_04.z, (0x8000 + 0x16200));
    }

    v0.unk_04.y = 0x26000;
    v0.unk_10 = VEC_Mag(&v0.unk_04);
    v0.unk_10 = FX_Mul(v0.unk_10, (FX32_CONST(0.6)));

    VEC_Normalize(&v0.unk_04, &v0.unk_04);
    ov115_022642F8(param3, param4, &v0.unk_14);

    v0.unk_14.y = (FX32_CONST(0));

    ov115_02264354(&v0.unk_14, &v0.unk_14, v0.unk_00, param0->unk_10);
    ov115_02264354(&v0.unk_04, &v0.unk_04, v0.unk_00, param0->unk_10);

    v0.unk_24 = 0;

    ov115_022621DC(param0, &v0, param5);
}

static u32 ov115_022614F8(UnkStruct_ov115_02260D78 *param0)
{
    u8 v0;
    u32 v1;

    if (param0->unk_1C >= 3) {
        v0 = 3 - 1;
    } else {
        v0 = param0->unk_1C;
    }

    v1 = Unk_ov115_02265B2C[v0];

    if (param0->unk_00 == 2) {
        v1 *= 3;
    }

    return v1;
}

static void ov115_02261520(UnkStruct_ov115_02261574 *param0, UnkStruct_ov115_02261ADC *param1, u32 param2, u32 param3, u32 param4)
{
    CellActorInitParamsEx v0;
    int v1, v2;
    u32 v3;

    v0.collection = param1->unk_1C;
    v0.resourceData = &param1->unk_1BC;
    v0.affineScale.x = FX32_ONE;
    v0.affineScale.y = FX32_ONE;
    v0.affineScale.z = FX32_ONE;
    v0.affineZRotation = 0;
    v0.priority = 0;
    v0.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.heapID = param4;

    v3 = param3;

    for (v1 = 0; v1 < 4; v1++) {
        ov115_022615B0(&param0->unk_00[v1], &v0, param1, param2, v1, v3, param4);
    }
}

static void ov115_02261574(UnkStruct_ov115_02261574 *param0, UnkStruct_ov115_02261ADC *param1)
{
    int v0, v1;

    for (v0 = 0; v0 < 4; v0++) {
        ov115_02261648(&param0->unk_00[v0]);
    }
}

static void ov115_0226158C(UnkStruct_ov115_02261574 *param0, u32 param1, u32 param2, int param3)
{
    ov115_02261660(&param0->unk_00[param1], param1, param2, param3);
}

static void ov115_02261598(UnkStruct_ov115_02261574 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        ov115_02261744(&param0->unk_00[v0]);
    }
}

static void ov115_022615B0(UnkStruct_ov115_022615B0 *param0, CellActorInitParamsEx *param1, UnkStruct_ov115_02261ADC *param2, u32 param3, u32 param4, u32 param5, u32 param6)
{
    int v0;
    s32 v1, v2;

    for (v0 = 0; v0 < 3; v0++) {
        ov115_022613CC(param3, param5, param4, &v1, &v2);
        param1->position.x = v1 << FX32_SHIFT;
        param1->position.y = v2 << FX32_SHIFT;
        param0->unk_18[v0] = param1->position;
        param0->unk_00[v0] = CellActorCollection_AddEx(param1);

        CellActor_SetAnim(param0->unk_00[v0], 2);
        CellActor_SetDrawFlag(param0->unk_00[v0], 0);
        CellActor_SetAnimateFlag(param0->unk_00[v0], 1);
        CellActor_SetAnimSpeed(param0->unk_00[v0], FX32_CONST(1.5));

        param0->unk_0C[v0] = 0;
    }

    if (param5 == param4) {
        param0->unk_3C = 1;
    } else {
        param0->unk_3C = 0;
    }
}

static void ov115_02261648(UnkStruct_ov115_022615B0 *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        CellActor_Delete(param0->unk_00[v0]);
    }
}

static void ov115_02261660(UnkStruct_ov115_022615B0 *param0, u32 param1, u32 param2, int param3)
{
    int v0;
    int v1;
    BOOL v2;
    u32 v3;
    u32 v4;
    u32 v5;
    u32 v6;

    v2 = 0;
    v4 = 0;
    v1 = -1;

    for (v0 = 0; v0 < 3; v0++) {
        if (CellActor_GetDrawFlag(param0->unk_00[v0]) == 0) {
            v1 = v0;
            v2 = 1;
        } else {
            v3 = CellActor_GetPriority(param0->unk_00[v0]);
            v3++;
            CellActor_SetPriority(param0->unk_00[v0], v3);

            if ((v2 == 0) && (v4 <= v3)) {
                v4 = v3;
                v1 = v0;
            }
        }
    }

    GF_ASSERT(v1 >= 0);

    if (param2 >= 3) {
        param2 = 3 - 1;
    }

    if (param3 != 2) {
        if (param0->unk_3C == 1) {
            v5 = param2 + 2;
        } else {
            v5 = param2 + 8;
        }

        v6 = 3 + param1;
    } else {
        if (param0->unk_3C == 1) {
            v5 = param2 + 5;
        } else {
            v5 = param2 + 11;
        }

        v6 = 7;
    }

    CellActor_SetAnim(param0->unk_00[v1], v5);
    param0->unk_0C[v1] = 0;
    CellActor_SetDrawFlag(param0->unk_00[v1], 1);
    ov115_0226177C(param0, v1);
    CellActor_SetPriority(param0->unk_00[v1], 0);
    CellActor_SetExplicitPalette(param0->unk_00[v1], v6);
}

static void ov115_02261744(UnkStruct_ov115_022615B0 *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        if (CellActor_GetDrawFlag(param0->unk_00[v0]) == 1) {
            param0->unk_0C[v0]++;

            if (param0->unk_0C[v0] > 16) {
                ov115_022617D8(param0, v0);
            } else {
                ov115_0226177C(param0, v0);
            }
        }
    }
}

static void ov115_0226177C(UnkStruct_ov115_022615B0 *param0, u32 param1)
{
    fx32 v0;
    VecFx32 v1;

    v0 = FX_Div(FX_Mul(FX32_ONE * param0->unk_0C[param1], (-FX32_CONST(16))), FX32_CONST(16));
    v1 = param0->unk_18[param1];
    v1.y += v0;

    CellActor_SetPosition(param0->unk_00[param1], &v1);
}

static void ov115_022617D8(UnkStruct_ov115_022615B0 *param0, u32 param1)
{
    CellActor_SetDrawFlag(param0->unk_00[param1], 0);
}

static void ov115_022617E8(UnkStruct_ov115_022617E8 *param0, UnkStruct_ov115_02261ADC *param1, const UnkStruct_ov115_02262F50 *param2, u32 param3, u32 param4, NARC *param5, u32 param6)
{
    Strbuf *v0;
    CellActorInitParamsEx v1;

    memset(param0, 0, sizeof(UnkStruct_ov115_022617E8));

    BGL_AddWindow(param1->unk_00, &param0->unk_0C, 1, 2, 19, 28, 4, 5, (1 + 9));
    BGL_WindowColor(&param0->unk_0C, 15, 0, 0, 28 * 8, 4 * 8);

    v0 = Strbuf_Init(128, param6);

    MessageLoader_GetStrbuf(param1->unk_08, 0, v0);
    Text_AddPrinterWithParamsAndColor(&param0->unk_0C, FONT_SYSTEM, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), NULL);
    Strbuf_Free(v0);
    sub_020070E8(param5, 18, param1->unk_00, 2, 0, 0, 0, param6);
    sub_0200710C(param5, 20 + (param3 - 2), param1->unk_00, 2, 0, 0, 0, param6);
    sub_02007130(param5, 19, 0, 0 * 32, (3 + 1) * 32, param6);

    {
        int v2;
        s32 v3, v4;
        Window v5;
        u32 v6;
        Strbuf *v7;
        TextColor v8;
        u32 v9;
        u32 v10;

        Window_Init(&v5);
        BGL_AddWindow(param1->unk_00, &v5, 2, 0, 0, 8, 2, 5, 256);

        v6 = 256;
        v7 = Strbuf_Init(128, param6);

        for (v2 = 0; v2 < param3; v2++) {
            if (v2 != param4) {
                v3 = Unk_ov115_02265CA4[param4][param3 - 1][v2].unk_00;
                v4 = Unk_ov115_02265CA4[param4][param3 - 1][v2].unk_04;

                sub_02019E2C(param1->unk_00, 2, v3 - 1, v4 - 1, 10, 4, 0 + v2);
                BGL_FillWindow(&v5, 15);

                if (param2->unk_18[v2] == 1) {
                    v8 = TEXT_COLOR(5, 6, 15);
                } else {
                    v8 = TEXT_COLOR(1, 2, 15);
                }

                TrainerInfo_NameStrbuf(param2->unk_08[v2], v7);
                sub_0201C2AC(&v5, v3);
                sub_0201C2B0(&v5, v4);

                v5.unk_0A_0 = v6;
                v9 = Font_CalcStrbufWidth(FONT_SYSTEM, v7, 0);
                v10 = ((8 * 8) - v9) / 2;
                Text_AddPrinterWithParamsAndColor(&v5, FONT_SYSTEM, v7, v10, 0, TEXT_SPEED_INSTANT, v8, NULL);
                v6 += (8 * 2);
            }
        }

        Strbuf_Free(v7);
        BGL_DeleteWindow(&v5);
    }

    param0->unk_04 = 0;

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
}

static void ov115_02261A04(UnkStruct_ov115_022617E8 *param0, UnkStruct_ov115_02261ADC *param1)
{
    BGL_DeleteWindow(&param0->unk_0C);
}

static void ov115_02261A10(UnkStruct_ov115_022617E8 *param0, UnkStruct_ov115_02261ADC *param1)
{
    Window_Show(&param0->unk_0C, 0, 1, 4);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
    ov114_0225CB8C(param1->unk_754);
}

static BOOL ov115_02261A3C(UnkStruct_ov115_022617E8 *param0, UnkStruct_ov115_02261ADC *param1)
{
    BOOL v0;

    v0 = ov114_0225CBE0(param1->unk_754);

    if (v0 == 1) {
        return 0;
    }

    return 1;
}

static void ov115_02261A54(UnkStruct_ov115_022617E8 *param0, UnkStruct_ov115_02261ADC *param1)
{
    Window_Clear(&param0->unk_0C, 1);
    sub_0201AD10(&param0->unk_0C);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
}

static void ov115_02261A74(UnkStruct_ov115_022617E8 *param0, UnkStruct_ov115_02261ADC *param1)
{
    ov115_02264190(&param1->unk_524, 1);
    Easy3DAnim_SetFrame(&param1->unk_524.unk_198[1], (FX32_CONST(180)));
    ov115_0226422C(&param1->unk_524, 1);
}

static BOOL ov115_02261AA4(UnkStruct_ov115_022617E8 *param0, UnkStruct_ov115_02261ADC *param1)
{
    param0->unk_04++;

    if (param0->unk_04 >= 8) {
        return 0;
    }

    return 1;
}

static void ov115_02261AB8(UnkStruct_ov115_02261ADC *param0, const UnkStruct_ov115_02261C18 *param1)
{
    ov115_022640C0(&param0->unk_524, param1);
}

static void ov115_02261AC8(UnkStruct_ov115_02261ADC *param0, u32 param1, u32 param2, u32 param3)
{
    param0->unk_504.unk_00 = 0;
    param0->unk_504.unk_04 = 0;
}

static void ov115_02261AD8(UnkStruct_ov115_02261ADC *param0, u32 param1)
{
    return;
}

static void ov115_02261ADC(UnkStruct_ov115_02261ADC *param0)
{
    ov115_02264190(&param0->unk_524, 5);
}

static BOOL ov115_02261AEC(UnkStruct_ov115_02261ADC *param0)
{
    BOOL v0;

    param0->unk_504.unk_04++;

    if (param0->unk_504.unk_04 >= 60) {
        v0 = Easy3DAnim_Update(&param0->unk_524.unk_198[5], (FX32_CONST(2)));

        if (v0 == 1) {
            return 1;
        }
    }

    return 0;
}

static BOOL ov115_02261B1C(UnkStruct_ov115_02261ADC *param0)
{
    BOOL v0;

    v0 = ov114_0225CBE0(param0->unk_754);

    if (v0 == 1) {
        return 1;
    }

    return 0;
}

static void ov115_02261B34(const UnkStruct_ov115_02260D78 *param0, UnkStruct_ov115_02261C18 *param1)
{
    param1->unk_06 = 0;

    ov115_02261C48(param1, ((180 * 0xffff) / 360));
    ov115_02261C1C(param1, ((20 * 0xffff) / 360));

    param1->unk_00 = 0;
    param1->unk_01 = 1;
    param1->unk_94 = (FX32_CONST(200));
    param1->unk_98 = (FX32_CONST(0.03));
    param1->unk_08 = ((FX32_CONST(50)) + (FX32_CONST(30)));
    param1->unk_9C = Unk_ov115_02265B20;

    ov115_02261F94(param1, 2500);

    param1->unk_D8 = Unk_ov115_02265B20;
    param1->unk_E4 = param1->unk_C0;
}

static void ov115_02261BBC(const UnkStruct_ov115_02260D78 *param0, UnkStruct_ov115_02261C18 *param1)
{
    static u16 (*const v0[3])(const UnkStruct_ov115_02261C18 *, s32, s32) = {
        ov115_022620E4,
        ov115_022620EC,
        ov115_022620F4,
    };

    u16 v1;

    switch (param0->unk_00) {
    case 1:
        param1->unk_01 = 0;
        break;

    default:
        param1->unk_01 = 1;
        break;
    }

    v1 = v0[param0->unk_00](param1, param0->unk_08, param0->unk_0C);
    ov115_02261C1C(param1, v1);
    param1->unk_08 = ov115_02261F3C(param1, param1->unk_04);
    param1->unk_E4 = ov115_02261F68(param1, param1->unk_04);
    ov115_02261C48(param1, param1->unk_02 + param1->unk_06);
}

static void ov115_02261C18(UnkStruct_ov115_02261C18 *param0, BOOL param1)
{
    param0->unk_00 = param1;
}

static void ov115_02261C1C(UnkStruct_ov115_02261C18 *param0, u16 param1)
{
    param0->unk_04 = param1;

    MTX_Identity33(&param0->unk_0C);
    MTX_RotX33(&param0->unk_0C, FX_SinIdx(param1), FX_CosIdx(param1));
}

static void ov115_02261C48(UnkStruct_ov115_02261C18 *param0, u16 param1)
{
    VecFx32 v0;

    param0->unk_02 = param1;

    MTX_Identity33(&param0->unk_54);
    MTX_Identity33(&param0->unk_30);
    MTX_RotY33(&param0->unk_30, FX_SinIdx(param1), FX_CosIdx(param1));
    MTX_Concat33(&param0->unk_0C, &param0->unk_30, &param0->unk_54);
    MTX_MultVec33(&Unk_ov115_02265B44, &param0->unk_54, &param0->unk_78);

    v0.x = 0;
    v0.y = 0;
    v0.z = -param0->unk_08;

    MTX_MultVec33(&v0, &param0->unk_54, &param0->unk_84);

    v0.x = param0->unk_B8 + param0->unk_9C.x;
    v0.y = param0->unk_BC;
    v0.z = param0->unk_9C.z + ((FX32_CONST(50)) + (FX32_CONST(30)));

    MTX_MultVec33(&v0, &param0->unk_30, &v0);
    VEC_Add(&v0, &param0->unk_84, &param0->unk_84);

    param0->unk_90 = FX_Mul(param0->unk_78.x, param0->unk_84.x) + FX_Mul(param0->unk_78.y, param0->unk_84.y) + FX_Mul(param0->unk_78.z, param0->unk_84.z);

    MTX_MultVec33(&param0->unk_9C, &param0->unk_30, &param0->unk_D8);
}

static u32 ov115_02261D84(const UnkStruct_ov115_02261C18 *param0, const VecFx32 *param1, const VecFx32 *param2, VecFx32 *param3)
{
    fx32 v0;
    VecFx32 v1;
    fx32 v2;
    fx32 v3;
    VecFx32 v4;
    VecFx32 v5;
    u32 v6 = 0;

    if (param0->unk_00 == 0) {
        return 0;
    }

    ov115_02265100(param1, param2, &param0->unk_78, param0->unk_90, &v1, &v0);
    VEC_Subtract(&param0->unk_84, param1, &v4);

    v2 = VEC_Mag(&v4);

    if ((v0 >= 0) && (v0 <= FX32_ONE)) {
        if (v2 <= param0->unk_08) {
            if (param0->unk_01 == 1) {
                v6 = 1;
            } else {
                v6 = 2;
            }
        } else {
            return 2;
        }
    }

    if ((v0 > 0) && (v2 < param0->unk_94)) {
        v3 = FX_Mul((param0->unk_94 - v2), param0->unk_98);
        VEC_Normalize(&v4, &v5);

        param3->x = FX_Mul(v5.x, v3);
        param3->y = FX_Mul(v5.y, v3);
        param3->z = FX_Mul(v5.z, v3);

        if ((v2 - v3) <= param0->unk_08) {
            if (param0->unk_01 == 1) {
                v6 = 1;
            } else {
                v6 = 2;
            }
        } else {
            v6 = 3;
        }
    }

    return v6;
}

static BOOL ov115_02261EA8(const UnkStruct_ov115_02261C18 *param0, const VecFx32 *param1)
{
    VecFx32 v0;
    VecFx32 v1, v2;
    fx32 v3;
    fx32 v4;
    s32 v5;

    if (param0->unk_00 == 0) {
        return 0;
    }

    if ((param0->unk_D8.y < param1->y) && ((param0->unk_D8.y + param0->unk_E4) > param1->y)) {
        v1.x = param0->unk_D8.x;
        v1.z = param0->unk_D8.z;
        v1.y = 0;
        v2.x = param1->x;
        v2.z = param1->z;
        v2.y = 0;

        VEC_Subtract(&v1, &v2, &v0);

        v3 = VEC_Mag(&v0);
        v5 = param1->y - param0->unk_D8.y;
        v5 = v5 >> FX32_SHIFT;
        v4 = (v5 * param0->unk_D0) / (param0->unk_E4 >> FX32_SHIFT);
        v4 = param0->unk_CC - v4;

        if (v3 < v4) {
            return 1;
        }
    }

    return 0;
}

static fx32 ov115_02261F3C(const UnkStruct_ov115_02261C18 *param0, u16 param1)
{
    s32 v0;
    fx32 v1;

    v0 = (param1 * 360) / 0xffff;
    v0 = 90 - v0;
    v1 = (v0 * param0->unk_AC) / 90;
    v1 += param0->unk_B0;

    return v1;
}

static fx32 ov115_02261F68(const UnkStruct_ov115_02261C18 *param0, u16 param1)
{
    s32 v0;
    fx32 v1;

    v0 = (param1 * 360) / 0xffff;
    v1 = (v0 * param0->unk_C4) / 90;
    v1 += param0->unk_C0;

    return v1;
}

static void ov115_02261F94(UnkStruct_ov115_02261C18 *param0, fx32 param1)
{
    param0->unk_A8 = param1;
    param0->unk_AC = FX_Mul((FX32_CONST(30)), param1);
    param0->unk_B0 = FX_Mul((FX32_CONST(50)), param1);
    param0->unk_B4 = FX_Mul(((FX32_CONST(50)) + (FX32_CONST(30))), param1);
    param0->unk_B8 = FX_Mul(0, param1);
    param0->unk_BC = FX_Mul((FX32_CONST(55)), param1);
    param0->unk_C0 = FX_Mul((FX32_CONST(150)), param1);
    param0->unk_C4 = FX_Mul((FX32_CONST(60)), param1);
    param0->unk_C8 = FX_Mul((FX32_CONST(80)), param1);
    param0->unk_CC = FX_Mul((FX32_CONST(120)), param1);
    param0->unk_D0 = param0->unk_CC - param0->unk_C8;
    param0->unk_D4 = FX_Mul((FX32_CONST(1.50f)), param1);
}

static void ov115_022620D8(UnkStruct_ov115_02261C18 *param0, u16 param1)
{
    param0->unk_06 = param1;
}

static void ov115_022620DC(UnkStruct_ov115_02261C18 *param0, fx32 param1)
{
    param0->unk_9C.z = param1;
}

static u16 ov115_022620E4(const UnkStruct_ov115_02261C18 *param0, s32 param1, s32 param2)
{
    return (20 * 0xffff) / 360;
}

static u16 ov115_022620EC(const UnkStruct_ov115_02261C18 *param0, s32 param1, s32 param2)
{
    return (90 * 0xffff) / 360;
}

static u16 ov115_022620F4(const UnkStruct_ov115_02261C18 *param0, s32 param1, s32 param2)
{
    s32 v0;
    s32 v1;

    v0 = (param1 - Unk_ov115_02265B38[2]) % 50;
    v1 = (v0 * ((((90 * 0xffff) / 360) - ((20 * 0xffff) / 360)) * 2)) / 50;

    if (v1 > (((90 * 0xffff) / 360) - ((20 * 0xffff) / 360))) {
        v1 = (((90 * 0xffff) / 360) - ((20 * 0xffff) / 360)) - (v1 % (((90 * 0xffff) / 360) - ((20 * 0xffff) / 360)));
    }

    return ((20 * 0xffff) / 360) + v1;
}

static void ov115_02262134(const UnkStruct_ov115_02262134 *param0, UnkStruct_ov115_02265AD0 *param1)
{
    param1->unk_00 = param0->unk_00;
    param1->unk_02 = param0->unk_02;
    param1->unk_04.x = param0->unk_04.x;
    param1->unk_04.y = param0->unk_04.y;
    param1->unk_04.z = param0->unk_04.z;
    param1->unk_10 = FX_Mul(param0->unk_10, (FX32_CONST(0.16)));
    param1->unk_0A.x = param0->unk_14.x >> FX32_SHIFT;
    param1->unk_0A.y = param0->unk_14.y >> FX32_SHIFT;
    param1->unk_0A.z = param0->unk_14.z >> FX32_SHIFT;
    param1->unk_12 = param0->unk_20;
    param1->unk_13 = param0->unk_24;
}

static void ov115_0226218C(const UnkStruct_ov115_02265AD0 *param0, UnkStruct_ov115_02262134 *param1)
{
    param1->unk_00 = param0->unk_00;
    param1->unk_02 = param0->unk_02;
    param1->unk_04.x = param0->unk_04.x;
    param1->unk_04.y = param0->unk_04.y;
    param1->unk_04.z = param0->unk_04.z;
    param1->unk_10 = FX_Div(param0->unk_10, (FX32_CONST(0.16)));
    param1->unk_14.x = param0->unk_0A.x << FX32_SHIFT;
    param1->unk_14.y = param0->unk_0A.y << FX32_SHIFT;
    param1->unk_14.z = param0->unk_0A.z << FX32_SHIFT;
    param1->unk_24 = param0->unk_13;
}

static void ov115_022621DC(UnkStruct_ov115_02260D78 *param0, const UnkStruct_ov115_02262134 *param1, u32 param2)
{
    int v0;

    for (v0 = 0; v0 < 96; v0++) {
        if (param0->unk_4C[v0].unk_00 == 0) {
            param0->unk_4C[v0].unk_04 = *param1;
            param0->unk_4C[v0].unk_00 = param2;
            param0->unk_4C[v0].unk_2C = param1->unk_14;
            param0->unk_4C[v0].unk_02 = 0;
            param0->unk_4C[v0].unk_3C = 0;

            ov115_02264620(&param0->unk_1AB4, &param0->unk_4C[v0], param0->unk_10, param0->unk_14);

            return;
        }
    }

    if (param2 == 1) {
        for (v0 = 0; v0 < 96; v0++) {
            if ((param0->unk_4C[v0].unk_00 == 2) || (param0->unk_4C[v0].unk_00 == 5)) {
                ov115_0226464C(&param0->unk_1AB4, &param0->unk_4C[v0]);
                ov115_022622F8(&param0->unk_4C[v0]);

                param0->unk_4C[v0].unk_04 = *param1;
                param0->unk_4C[v0].unk_00 = param2;
                param0->unk_4C[v0].unk_2C = param1->unk_14;
                param0->unk_4C[v0].unk_02 = 0;
                param0->unk_4C[v0].unk_3C = 0;

                ov115_02264620(&param0->unk_1AB4, &param0->unk_4C[v0], param0->unk_10, param0->unk_14);

                return;
            }
        }

        GF_ASSERT(0);
    }
}

static void ov115_022622EC(UnkStruct_ov115_02260D78 *param0, UnkStruct_ov115_022622F8 *param1, BOOL param2, u32 param3)
{
    param1->unk_01 = 1;
    param1->unk_04.unk_02 = param2;
    param1->unk_04.unk_20 = param3;
}

static void ov115_022622F8(UnkStruct_ov115_022622F8 *param0)
{
    memset(param0, 0, sizeof(UnkStruct_ov115_022622F8));
}

static void ov115_02262304(UnkStruct_ov115_02260D78 *param0)
{
    int v0;

    for (v0 = 0; v0 < 96; v0++) {
        if ((param0->unk_4C[v0].unk_00 == 1) || (param0->unk_4C[v0].unk_00 == 2)) {
            ov115_02262354(param0, &param0->unk_4C[v0]);
        } else if (param0->unk_4C[v0].unk_00 == 5) {
            ov115_022627B4(&param0->unk_4C[v0], param0);
        } else if (param0->unk_4C[v0].unk_00 == 3) {
            ov115_022628EC(&param0->unk_4C[v0], param0);
        }
    }
}

static void ov115_02262354(UnkStruct_ov115_02260D78 *param0, UnkStruct_ov115_022622F8 *param1)
{
    VecFx32 v0;
    u32 v1;
    VecFx32 v2;
    BOOL v3;
    fx32 v4;
    u32 v5;

    if ((param1->unk_00 != 1) && (param1->unk_00 != 2)) {
        return;
    }

    v4 = param1->unk_2C.y;
    v5 = param1->unk_00;

    ov115_02262620(param1, &v0);

    if (param1->unk_00 == 1) {
        v1 = ov115_02261D84(&param0->unk_19CC, &param1->unk_2C, &v0, &v2);
    } else {
        v1 = 0;
    }

    ov115_0226294C(param1, &v0);

    if ((v1 == 3) || (v1 == 1)) {
        ov115_0226294C(param1, &v2);
    }

    param1->unk_02++;

    if (v1 == 1) {
        param0->unk_18 += ov115_022614F8(param0);

        if (param0->unk_18 > 99999) {
            param0->unk_18 = 99999;
        }

        switch (param0->unk_1C) {
        case 0:
            Sound_PlayEffect(1386);
            Sound_PlayEffect(1387);
            break;
        case 1:
            Sound_PlayEffect(1386);
            Sound_PlayEffect(1388);
            break;
        default:
            Sound_PlayEffect(1386);
            Sound_PlayEffect(1389);
            break;
        }

        ov115_022628DC(param1, param0);
        ov115_0226158C(&param0->unk_1AB4.unk_3E8, param0->unk_14, param0->unk_1C, param0->unk_00);

        if (param0->unk_1C < 99) {
            param0->unk_1C++;
        }

        if (param0->unk_1C == 3) {
            ov115_02265700(&param0->unk_1AB4.unk_6B1C, &param0->unk_1AB4, param0->unk_1C);
        } else {
            ov115_022657A8(&param0->unk_1AB4.unk_6B1C, &param0->unk_1AB4, param0->unk_1C);
        }
    } else {
        v3 = 0;
        v1 = ov115_02261EA8(&param0->unk_19CC, &param1->unk_2C);

        if (v1 == 1) {
            v3 = 1;

            if (v5 == 1) {
                Sound_PlayEffect(1826);
            }

            ov115_022626BC(param1, param0, 1);
        } else if (param1->unk_2C.y <= (FX32_CONST(-50))) {
            v1 = ov115_02262888(param1);

            if (v1 == 0) {
                v3 = 1;

                if (v4 <= (FX32_CONST(-50))) {
                    ov115_022622EC(param0, param1, 0, param0->unk_1C);
                } else {
                    ov115_022626BC(param1, param0, 0);
                }
            } else if (param1->unk_2C.y <= (FX32_CONST(0.250f))) {
                v3 = 1;
                ov115_022622EC(param0, param1, 0, param0->unk_1C);
            }
        } else {
            v1 = ov115_022628B8(param1);

            if (v1 == 1) {
                v3 = 1;

                VEC_Subtract(&param1->unk_2C, &v0, &param1->unk_2C);
                ov115_022626E0(param1, param0, 1, (FX32_CONST(0.250f)), 0);
            }
        }

        if ((v3 == 1) && (v5 == 1)) {
            param0->unk_1C = 0;
            ov115_02265788(&param0->unk_1AB4.unk_6B1C);
        }
    }
}

static void ov115_02262524(UnkStruct_ov115_02260D78 *param0)
{
    int v0;

    for (v0 = 0; v0 < 96; v0++) {
        ov115_02262574(&param0->unk_4C[v0], param0);
    }
}

static void ov115_02262540(UnkStruct_ov115_02260D78 *param0)
{
    int v0;

    for (v0 = 0; v0 < 96; v0++) {
        if (param0->unk_4C[v0].unk_01 == 1) {
            param0->unk_4C[v0].unk_00 = 2;
        }

        ov115_02262574(&param0->unk_4C[v0], param0);
    }
}

static void ov115_02262574(UnkStruct_ov115_022622F8 *param0, UnkStruct_ov115_02260D78 *param1)
{
    if (param0->unk_01) {
        if ((param0->unk_00 == 3) && (param0->unk_04.unk_02 == 1)) {
            param0->unk_00 = 4;
        } else {
            ov115_022622F8(param0);
        }

        ov115_0226464C(&param1->unk_1AB4, param0);
    }
}

static void ov115_022625A8(UnkStruct_ov115_02260D78 *param0)
{
    int v0;

    for (v0 = 0; v0 < 96; v0++) {
        if (param0->unk_4C[v0].unk_00 == 1) {
            param0->unk_4C[v0].unk_00 = 2;
        }
    }
}

static BOOL ov115_022625C8(const UnkStruct_ov115_02260D78 *param0)
{
    int v0;

    for (v0 = 0; v0 < 96; v0++) {
        if ((param0->unk_4C[v0].unk_00 == 1) || (param0->unk_4C[v0].unk_00 == 2) || (param0->unk_4C[v0].unk_00 == 5) || (param0->unk_4C[v0].unk_00 == 3)) {
            return 1;
        }
    }

    return 0;
}

static fx32 ov115_022625F0(const UnkStruct_ov115_022622F8 *param0)
{
    fx32 v0;

    v0 = param0->unk_04.unk_10 - FX_Mul(0x670, param0->unk_02 * FX32_ONE);

    if (v0 < 0) {
        v0 = 0;
    }

    return v0;
}

static void ov115_02262620(const UnkStruct_ov115_022622F8 *param0, VecFx32 *param1)
{
    fx32 v0;
    VecFx32 v1;

    v0 = ov115_022625F0(param0);

    param1->x = FX_Mul(param0->unk_04.unk_04.x, v0);
    param1->y = FX_Mul(param0->unk_04.unk_04.y, v0);
    param1->y += FX_Mul(0xffffeccc, param0->unk_02 * FX32_ONE);
    param1->z = FX_Mul(param0->unk_04.unk_04.z, v0);
}

static void ov115_022626BC(UnkStruct_ov115_022622F8 *param0, UnkStruct_ov115_02260D78 *param1, BOOL param2)
{
    fx32 v0;

    if (param2 == 1) {
        v0 = (FX32_CONST(0.850f));
    } else {
        v0 = (FX32_CONST(0.80f));
    }

    ov115_022626E0(param0, param1, param2, v0, 1);
}

static void ov115_022626E0(UnkStruct_ov115_022622F8 *param0, UnkStruct_ov115_02260D78 *param1, BOOL param2, fx32 param3, BOOL param4)
{
    fx32 v0;
    fx32 v1;
    VecFx32 v2;
    u32 v3;

    if (param2) {
        param0->unk_04.unk_04.x = -param0->unk_04.unk_04.x;
        param0->unk_04.unk_04.z = -param0->unk_04.unk_04.z;

        if (param4) {
            v3 = MTRNG_Next();

            if (MATH_ABS(param0->unk_04.unk_04.x) <= MATH_ABS(param0->unk_04.unk_04.z)) {
                v1 = FX_Mul(param0->unk_04.unk_04.z, (FX32_CONST(1.0f)));

                if ((v3 % 2) == 1) {
                    param0->unk_04.unk_04.x = -v1;
                } else {
                    param0->unk_04.unk_04.x = v1;
                }
            } else {
                v1 = FX_Mul(param0->unk_04.unk_04.x, (FX32_CONST(1.0f)));

                if ((v3 % 2) == 1) {
                    param0->unk_04.unk_04.z = -v1;
                } else {
                    param0->unk_04.unk_04.z = v1;
                }
            }
        }
    }

    param0->unk_04.unk_10 = FX_Mul(param0->unk_04.unk_10, param3);
    param0->unk_02 = 0;
    param0->unk_00 = 5;

    ov115_02262620(param0, &v2);
    ov115_0226294C(param0, &v2);

    param0->unk_02++;
}

static void ov115_022627B4(UnkStruct_ov115_022622F8 *param0, UnkStruct_ov115_02260D78 *param1)
{
    VecFx32 v0;
    BOOL v1;
    BOOL v2 = 0;
    fx32 v3;

    if (param0->unk_00 != 5) {
        return;
    }

    v3 = param0->unk_2C.y;

    ov115_02262620(param0, &v0);
    ov115_0226294C(param0, &v0);

    param0->unk_02++;

    v1 = ov115_02261EA8(&param1->unk_19CC, &param0->unk_2C);

    if (v1 == 1) {
        ov115_022626BC(param0, param1, 1);
    } else {
        if (param0->unk_2C.y <= (FX32_CONST(-50))) {
            v1 = ov115_02262888(param0);

            if (v1 == 0) {
                if (v3 <= (FX32_CONST(-50))) {
                    v2 = 1;
                } else {
                    ov115_022626BC(param0, param1, 0);
                }
            } else if (param0->unk_2C.y <= (FX32_CONST(-100))) {
                v2 = 1;
            }

            if (param0->unk_04.unk_10 <= 0x2000) {
                v2 = 1;
            }
        } else {
            v1 = ov115_022628B8(param0);

            if (v1 == 1) {
                VEC_Subtract(&param0->unk_2C, &v0, &param0->unk_2C);
                ov115_022626E0(param0, param1, 1, (FX32_CONST(0.250f)), 0);
            }
        }
    }

    if (param0->unk_04.unk_10 <= 0x1000) {
        v2 = 1;
    }

    if (v2 == 1) {
        ov115_022622EC(param1, param0, 0, param1->unk_1C);
    }
}

static BOOL ov115_02262888(const UnkStruct_ov115_022622F8 *param0)
{
    if ((param0->unk_40 >= (FX32_CONST(188))) && (param0->unk_40 <= (FX32_CONST(240)))) {
        return 1;
    }

    return 0;
}

static BOOL ov115_022628A4(const UnkStruct_ov115_022622F8 *param0)
{
    if (param0->unk_40 <= (FX32_CONST(120))) {
        return 1;
    }

    return 0;
}

static BOOL ov115_022628B8(UnkStruct_ov115_022622F8 *param0)
{
    if (param0->unk_40 >= (FX32_CONST(240))) {
        if (param0->unk_3C == 1) {
            return 1;
        }
    } else if (param0->unk_3C == 0) {
        param0->unk_3C = 1;
    }

    return 0;
}

static void ov115_022628DC(UnkStruct_ov115_022622F8 *param0, UnkStruct_ov115_02260D78 *param1)
{
    param0->unk_00 = 3;
    param0->unk_38 = 8;
    param0->unk_3A = param1->unk_1C;
}

static void ov115_022628EC(UnkStruct_ov115_022622F8 *param0, UnkStruct_ov115_02260D78 *param1)
{
    VecFx32 v0;
    u32 v1;
    VecFx32 v2;

    ov115_02262620(param0, &v0);
    v1 = ov115_02261D84(&param1->unk_19CC, &param0->unk_2C, &v0, &v2);
    ov115_0226294C(param0, &v0);

    if ((v1 == 3) || (v1 == 1)) {
        ov115_0226294C(param0, &v2);
    }

    param0->unk_02++;
    param0->unk_38--;

    if (param0->unk_38 <= 0) {
        ov115_022622EC(param1, param0, 1, param0->unk_3A);
    }
}

static void ov115_0226294C(UnkStruct_ov115_022622F8 *param0, const VecFx32 *param1)
{
    VecFx32 v0;

    VEC_Add(&param0->unk_2C, param1, &param0->unk_2C);

    v0.y = 0;
    v0.x = param0->unk_2C.x;
    v0.z = param0->unk_2C.z;

    param0->unk_40 = VEC_Mag(&v0);
}

static void ov115_02262974(UnkStruct_ov115_02260D78 *param0)
{
    if (gCoreSys.touchHeld == 0) {
        ov115_02262990(param0);
    } else {
        ov115_02262B70(param0);
    }
}

static void ov115_02262990(UnkStruct_ov115_02260D78 *param0)
{
    UnkStruct_ov115_02262134 v0;
    NNSG2dSVec2 v1;
    BOOL v2;
    NNSG2dSVec2 v3, v4;
    s32 v5;
    BOOL v6 = 0;
    fx32 v7;

    if (param0->unk_20.unk_00 == 0) {
        param0->unk_20.unk_28++;
        return;
    }

    v2 = ov115_02262D3C(&param0->unk_20, &v3);
    GF_ASSERT(v2);
    v2 = ov115_02262D58(&param0->unk_20, &v4);
    GF_ASSERT(v2);
    v5 = ov115_02262D7C(&param0->unk_20);

    if (v5 >= 2) {
        v0.unk_00 = param0->unk_14;
        v0.unk_02 = 0;
        v1.x = (v3.x - v4.x) / v5;
        v1.y = (v3.y - v4.y) / v5;
        v0.unk_04.x = v1.x << FX32_SHIFT;
        v0.unk_04.z = v1.y << FX32_SHIFT;
        v0.unk_04.y = 0;

        v7 = VEC_Mag(&v0.unk_04);

        if (v7 < 0x8000) {
            if (v7 != 0) {
                VEC_Normalize(&v0.unk_04, &v0.unk_04);
                v0.unk_04.x = FX_Mul(v0.unk_04.x, 0x8000);
                v0.unk_04.z = FX_Mul(v0.unk_04.z, 0x8000);
            } else {
                v6 = 1;
            }
        } else if (v7 > (0x8000 + 0x16200)) {
            VEC_Normalize(&v0.unk_04, &v0.unk_04);
            v0.unk_04.x = FX_Mul(v0.unk_04.x, (0x8000 + 0x16200));
            v0.unk_04.z = FX_Mul(v0.unk_04.z, (0x8000 + 0x16200));
        }

        if (v6 == 0) {
            v0.unk_04.y = 0x26000;
            v0.unk_10 = VEC_Mag(&v0.unk_04);
            v0.unk_10 = FX_Mul(v0.unk_10, (FX32_CONST(0.6)));

            VEC_Normalize(&v0.unk_04, &v0.unk_04);
            ov115_022642F8(v4.x, v4.y, &v0.unk_14);

            v0.unk_14.y = (FX32_CONST(0));

            ov115_02264354(&v0.unk_14, &v0.unk_14, v0.unk_00, param0->unk_10);
            ov115_02264354(&v0.unk_04, &v0.unk_04, v0.unk_00, param0->unk_10);

            if (param0->unk_1C >= 5) {
                v0.unk_24 = 1;
            } else {
                v0.unk_24 = 0;
            }

            ov115_022621DC(param0, &v0, 1);
            Sound_PlayEffect(1616);
        }
    } else {
        v6 = 1;
    }

    if (v6 == 1) {
        ov115_02264D80(&param0->unk_1AB4.unk_6A3C, v4.x, v4.y);
    }

    ov115_02262D90(param0);
    param0->unk_20.unk_28 = 0;
}

static void ov115_02262B70(UnkStruct_ov115_02260D78 *param0)
{
    NNSG2dSVec2 v0;
    BOOL v1;

    if (param0->unk_20.unk_00 == 0) {
        v1 = ov115_02262C60(param0);

        if (v1 == 1) {
            param0->unk_20.unk_00 = 1;

            ov115_02264BAC(&param0->unk_1AB4.unk_6A34);
            ov115_022653CC(&param0->unk_1AB4.unk_758);
        }
    }

    if (param0->unk_20.unk_00 == 1) {
        if (param0->unk_8690.unk_00 == 1) {
            v0.x = param0->unk_8690.unk_02[0].x;
            v0.y = param0->unk_8690.unk_02[0].y;
            ov115_02262CBC(&param0->unk_20, v0);
        } else if (param0->unk_8690.unk_00 >= 2) {
            v0.x = param0->unk_8690.unk_02[0].x;
            v0.y = param0->unk_8690.unk_02[0].y;
            ov115_02262CBC(&param0->unk_20, v0);
            v0.x = param0->unk_8690.unk_02[param0->unk_8690.unk_00 - 1].x;
            v0.y = param0->unk_8690.unk_02[param0->unk_8690.unk_00 - 1].y;
            ov115_02262CBC(&param0->unk_20, v0);
        } else {
            v0.x = gCoreSys.touchX;
            v0.y = gCoreSys.touchY;
            ov115_02262CBC(&param0->unk_20, v0);
        }
    }
}

static BOOL ov115_02262C60(UnkStruct_ov115_02260D78 *param0)
{
    s32 v0;
    s32 v1;
    s32 v2;

    if (param0->unk_20.unk_28 < 2) {
        return 0;
    }

    v0 = 128 - gCoreSys.touchX;
    v1 = -96 - gCoreSys.touchY;
    v2 = FX_Sqrt(((v0 * v0) + (v1 * v1)) << FX32_SHIFT) >> FX32_SHIFT;

    if (v2 <= (190 - -96)) {
        return 1;
    }

    return 0;
}

static void ov115_02262CA4(UnkStruct_ov115_02262CA4 *param0)
{
    memset(param0->unk_04, 0, sizeof(NNSG2dSVec2) * 8);
    param0->unk_24 = 0;
    param0->unk_26 = 0;
}

static void ov115_02262CBC(UnkStruct_ov115_02262CA4 *param0, NNSG2dSVec2 param1)
{
    if (((param0->unk_26 + 1) % 8) == param0->unk_24) {
        NNSG2dSVec2 v0;

        ov115_02262D0C(param0, &v0);
    }

    param0->unk_04[param0->unk_26] = param1;
    param0->unk_26 = (param0->unk_26 + 1) % 8;
}

static BOOL ov115_02262D0C(UnkStruct_ov115_02262CA4 *param0, NNSG2dSVec2 *param1)
{
    if (param0->unk_26 == param0->unk_24) {
        return 0;
    }

    *param1 = param0->unk_04[param0->unk_24];
    param0->unk_24 = (param0->unk_24 + 1) % 8;

    return 1;
}

static BOOL ov115_02262D3C(UnkStruct_ov115_02262CA4 *param0, NNSG2dSVec2 *param1)
{
    if (param0->unk_26 == param0->unk_24) {
        return 0;
    }

    *param1 = param0->unk_04[param0->unk_24];

    return 1;
}

static BOOL ov115_02262D58(UnkStruct_ov115_02262CA4 *param0, NNSG2dSVec2 *param1)
{
    s32 v0;

    if (param0->unk_26 == param0->unk_24) {
        return 0;
    }

    v0 = param0->unk_26 - 1;

    if (v0 < 0) {
        v0 += 8;
    }

    *param1 = param0->unk_04[v0];

    return 1;
}

static u32 ov115_02262D7C(UnkStruct_ov115_02262CA4 *param0)
{
    if (param0->unk_24 > param0->unk_26) {
        return (8 - param0->unk_24) + param0->unk_26;
    }

    return param0->unk_26 - param0->unk_24;
}

static void ov115_02262D90(UnkStruct_ov115_02260D78 *param0)
{
    param0->unk_20.unk_00 = 0;

    ov115_02262CA4(&param0->unk_20);
    ov115_02264BF8(&param0->unk_1AB4.unk_6A34);
}

static void ov115_02262DB0(UnkStruct_ov115_02262E64 *param0, const UnkStruct_ov115_02262F50 *param1, const UnkStruct_ov115_022612BC *param2)
{
    param0->unk_48 = 16;
    ov115_02262F50(param1, param2, 0, &param0->unk_00);
}

static void ov115_02262DC4(UnkStruct_ov115_02262E64 *param0, const UnkStruct_ov115_02262F50 *param1, const UnkStruct_ov115_022612BC *param2, u16 param3, u16 param4)
{
    UnkStruct_ov115_02262DC4 v0, v1;

    ov115_02262F50(param1, param2, param3, &v0);
    ov115_02262F50(param1, param2, param4, &v1);

    param0->unk_18 = v0;
    param0->unk_00 = v0;
    param0->unk_30.unk_00 = v1.unk_00 - v0.unk_00;
    param0->unk_30.unk_08 = v1.unk_08 - v0.unk_08;
    param0->unk_30.unk_10 = v1.unk_10 - v0.unk_10;
    param0->unk_30.unk_14 = v1.unk_14 - v0.unk_14;

    if ((v1.unk_04 - v0.unk_04) < ((0xffff + v1.unk_04) - v0.unk_04)) {
        param0->unk_30.unk_04 = v1.unk_04 - v0.unk_04;
    } else {
        param0->unk_30.unk_04 = ((0xffff + v1.unk_04) - v0.unk_04);
    }

    if ((v1.unk_0C - v0.unk_0C) < ((0xffff + v1.unk_0C) - v0.unk_0C)) {
        param0->unk_30.unk_0C = v1.unk_0C - v0.unk_0C;
    } else {
        param0->unk_30.unk_0C = ((0xffff + v1.unk_0C) - v0.unk_0C);
    }

    param0->unk_48 = 0;
}

static BOOL ov115_02262E64(UnkStruct_ov115_02262E64 *param0)
{
    if (param0->unk_48 >= 16) {
        return 1;
    }

    param0->unk_48++;

    param0->unk_00.unk_00 = param0->unk_18.unk_00 + ((param0->unk_30.unk_00 * param0->unk_48) / 16);
    param0->unk_00.unk_04 = param0->unk_18.unk_04 + ((param0->unk_30.unk_04 * param0->unk_48) / 16);
    param0->unk_00.unk_08 = param0->unk_18.unk_08 + ((param0->unk_30.unk_08 * param0->unk_48) / 16);
    param0->unk_00.unk_0C = param0->unk_18.unk_0C + ((param0->unk_30.unk_0C * param0->unk_48) / 16);
    param0->unk_00.unk_10 = param0->unk_18.unk_10 + ((param0->unk_30.unk_10 * param0->unk_48) / 16);
    param0->unk_00.unk_14 = param0->unk_18.unk_14 + ((param0->unk_30.unk_14 * param0->unk_48) / 16);

    return 0;
}

static void ov115_02262EFC(UnkStruct_ov115_02260D78 *param0, const UnkStruct_ov115_02262E64 *param1)
{
    ov115_02262F04(param0, &param1->unk_00);
}

static void ov115_02262F04(UnkStruct_ov115_02260D78 *param0, const UnkStruct_ov115_02262DC4 *param1)
{
    ov115_022620D8(&param0->unk_19CC, param1->unk_04);
    ov115_02265274(&param0->unk_1AB4, param1->unk_08);
    ov115_0226527C(&param0->unk_1AB4, param1->unk_0C);
    ov115_022620DC(&param0->unk_19CC, param1->unk_10);
    ov115_02261F94(&param0->unk_19CC, param1->unk_14);
}

static void ov115_02262F50(const UnkStruct_ov115_02262F50 *param0, const UnkStruct_ov115_022612BC *param1, u32 param2, UnkStruct_ov115_02262DC4 *param3)
{
    u16 v0;
    s32 v1;

    GF_ASSERT(param2 < param0->unk_00);

    *param3 = param0->unk_04[param2];

    v0 = param3->unk_04;
    param3->unk_04 = v0;

    v0 = param3->unk_0C;
    param3->unk_0C = v0;

    if (param1->unk_00) {
        v1 = 6 - (param2 + 1);

        if (v1 < 0) {
            v1 = 0;
        }

        param3->unk_14 = param0->unk_04[v1].unk_14;
    }

    if (param1->unk_01) {
        param3->unk_04 = -param3->unk_04;
    }
}

static void ov115_02262FB4(UnkStruct_ov115_02263130 *param0, UnkStruct_ov115_02261ADC *param1, u32 param2)
{
    NARC *v0;
    BOOL v1;

    memset(param0, 0, sizeof(UnkStruct_ov115_02263130));

    v0 = NARC_ctor(NARC_INDEX_RESOURCE__ENG__WIFI_LOBBY_MINIGAME__WLMNGM_TOOL, param2);

    {
        param0->unk_00[0] = SpriteResourceCollection_AddTilesFrom(param1->unk_1AC[0], v0, 21, 0, 120, NNS_G2D_VRAM_TYPE_2DSUB, param2);
        param0->unk_00[1] = SpriteResourceCollection_AddPaletteFrom(param1->unk_1AC[1], v0, 20, 0, 120, NNS_G2D_VRAM_TYPE_2DSUB, 2, param2);
        param0->unk_00[2] = SpriteResourceCollection_AddFrom(param1->unk_1AC[2], v0, 22, 0, 120, 2, param2);
        param0->unk_00[3] = SpriteResourceCollection_AddFrom(param1->unk_1AC[3], v0, 23, 0, 120, 3, param2);

        v1 = sub_0200A450(param0->unk_00[0]);
        GF_ASSERT(v1);
        v1 = sub_0200A640(param0->unk_00[1]);
        GF_ASSERT(v1);

        SpriteResource_ReleaseData(param0->unk_00[0]);
        SpriteResource_ReleaseData(param0->unk_00[1]);
        sub_020093B4(&param0->unk_10, 120, 120, 120, 120, 0xffffffff, 0xffffffff, 0, 0, param1->unk_1AC[0], param1->unk_1AC[1], param1->unk_1AC[2], param1->unk_1AC[3], NULL, NULL);
    }

    {
        CellActorInitParams v2;

        v2.collection = param1->unk_1C;
        v2.resourceData = &param0->unk_10;
        v2.position.x = FX32_CONST(128);
        v2.position.y = FX32_CONST(120) + (512 << FX32_SHIFT);
        v2.priority = 0;
        v2.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
        v2.heapID = param2;

        param0->unk_34 = CellActorCollection_Add(&v2);
        CellActor_SetDrawFlag(param0->unk_34, 0);
    }

    NARC_dtor(v0);
}

static void ov115_022630DC(UnkStruct_ov115_02263130 *param0, UnkStruct_ov115_02261ADC *param1)
{
    {
        CellActor_Delete(param0->unk_34);
    }

    {
        sub_0200A4E4(param0->unk_00[0]);
        sub_0200A6DC(param0->unk_00[1]);
        SpriteResourceCollection_Remove(param1->unk_1AC[0], param0->unk_00[0]);
        SpriteResourceCollection_Remove(param1->unk_1AC[1], param0->unk_00[1]);
        SpriteResourceCollection_Remove(param1->unk_1AC[2], param0->unk_00[2]);
        SpriteResourceCollection_Remove(param1->unk_1AC[3], param0->unk_00[3]);
    }

    memset(param0, 0, sizeof(UnkStruct_ov115_02263130));
}

static void ov115_02263130(UnkStruct_ov115_02263130 *param0)
{
    {
        param0->unk_38 = 1;
        param0->unk_3A = 0;
        param0->unk_39 = 0;
    }

    CellActor_SetDrawFlag(param0->unk_34, 1);
}

static BOOL ov115_02263150(UnkStruct_ov115_02263130 *param0, UnkStruct_ov115_02260D78 *param1)
{
    switch (param0->unk_3A) {
    case 0:
        SpriteActor_SetAnimFrame(param0->unk_34, 0);
        ov115_02264BAC(&param1->unk_1AB4.unk_6A34);
        ov115_02264BD8(&param1->unk_1AB4.unk_6A34, 128, Unk_ov115_02265B7C[0]);

        param0->unk_3B = 0;
        param0->unk_3A++;
        break;
    case 1:
        CellActor_UpdateAnim(param0->unk_34, FX32_CONST(2));

        {
            u32 v0;

            v0 = CellActor_GetAnimFrame(param0->unk_34);

            switch (v0) {
            case 10:
                if (param0->unk_3B == 0) {
                    ov115_022613F8(param1, 128, 96, 128, 64, 2);
                    Sound_PlayEffect(1616);
                    param0->unk_3B = 1;
                }
                break;
            case 11:
                param0->unk_39++;

                if (param0->unk_39 >= 2) {
                    param0->unk_3A = 3;
                } else {
                    param0->unk_3A = 2;
                    param0->unk_3C = 16;
                }

                ov115_02264BF8(&param1->unk_1AB4.unk_6A34);
                break;
            default:
                break;
            }

            ov115_02264BD8(&param1->unk_1AB4.unk_6A34, 128, Unk_ov115_02265B7C[v0]);
        }
        break;
    case 2:
        param0->unk_3C--;

        if (param0->unk_3C <= 0) {
            param0->unk_3A = 0;
        }
        break;
    case 3:
        if (ov115_022625C8(param1) == 0) {
            CellActor_SetDrawFlag(param0->unk_34, 0);
            return 1;
        }
        break;
    }

    ov115_02262304(param1);
    ov115_02262524(param1);

    return 0;
}

static void ov115_0226327C(UnkStruct_ov115_022632C8 *param0)
{
    memset(param0, 0, sizeof(UnkStruct_ov115_022632C8));
    param0->unk_14 = 0xffff;
}

static void ov115_02263294(UnkStruct_ov115_022632C8 *param0, u32 param1, u32 param2)
{
    param0->unk_00[param2] = param1;
    param0->unk_10 |= 1 << param2;

    if (param1 == 0) {
        return;
    }

    if (param0->unk_14 != 0xffff) {
        if (param0->unk_00[param0->unk_14] < param1) {
            param0->unk_14 = param2;
        }
    } else {
        param0->unk_14 = param2;
    }
}

static void ov115_022632C8(UnkStruct_ov115_022632C8 *param0)
{
    param0->unk_10 = 0;
    param0->unk_14 = 0xffff;
}

static u32 ov115_022632D8(const UnkStruct_ov115_022632C8 *param0)
{
    return param0->unk_14;
}

static BOOL ov115_022632DC(const UnkStruct_ov115_022632C8 *param0, u32 param1)
{
    int v0;
    int v1;

    v1 = 0;

    for (v0 = 0; v0 < 4; v0++) {
        if ((param0->unk_10 & (1 << v0)) != 0) {
            v1++;
        }
    }

    if (param1 <= v1) {
        return 1;
    }

    return 0;
}

static void ov115_02263308(void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_32_FG,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_128_B,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_A,
        GX_VRAM_TEXPLTT_0123_E
    };

    GXLayers_SetBanks(&v0);
}

static void ov115_02263328(void)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(2);
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_EdgeMarking(1);
    G3X_SetFog(0, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    G3X_SetClearColor(GX_RGB(26, 26, 26), 0, 0x7fff, 63, 0);
    G3_ViewPort(0, 0, 255, 191);
}

static void ov115_022633B4(UnkStruct_ov115_02261ADC *param0, u32 param1, u32 param2, u32 param3)
{
    param0->unk_18 = sub_02024220(param3, 0, 1, 0, 4, ov115_02263328);
    ov115_02263C24(param0, param1, param2, param3);
}

static void ov115_022633EC(UnkStruct_ov115_02261ADC *param0)
{
    ov115_02263CC0(param0);
    sub_020242C4(param0->unk_18);
}

static void ov115_022633FC(UnkStruct_ov115_02260D78 *param0, u32 param1)
{
    NARC *v0;

    Heap_FndInitAllocatorForExpHeap(&param0->unk_1AB4.unk_6BBC, param1, 32);

    ov115_02263308();
    ov115_022633B4(&param0->unk_1AB4, param0->unk_10, param0->unk_14, param1);
    ov115_0226376C(&param0->unk_1AB4, param1);
    ov115_02263990(&param0->unk_1AB4, param1);
    ov115_02263BCC(&param0->unk_1AB4, param1);

    v0 = NARC_ctor(NARC_INDEX_GRAPHIC__BUCKET, param1);

    ov115_02263A74(&param0->unk_1AB4, v0, param1);
    ov115_02264E48(&param0->unk_1AB4.unk_204, &param0->unk_1AB4, v0, param0->unk_10, param0->unk_14, param1, &param0->unk_1AB4.unk_6BBC);
    ov115_02263DF8(&param0->unk_1AB4.unk_524, v0, param1, &param0->unk_1AB4.unk_6BBC);
    ov115_022643EC(&param0->unk_1AB4, v0, param1);
    ov115_02264B40(&param0->unk_1AB4, &param0->unk_1AB4.unk_6A34, param0->unk_14, param1);
    ov115_02264C0C(&param0->unk_1AB4, &param0->unk_1AB4.unk_6A3C, param0->unk_14, param1);
    ov115_02263CD8(&param0->unk_1AB4, v0, param0->unk_14, param1);
    ov115_022617E8(&param0->unk_1AB4.unk_4E8, &param0->unk_1AB4, param0->unk_8720, param0->unk_10, param0->unk_14, v0, param1);
    ov115_02261AC8(&param0->unk_1AB4, param0->unk_10, param0->unk_14, param1);
    ov115_02261520(&param0->unk_1AB4.unk_3E8, &param0->unk_1AB4, param0->unk_10, param0->unk_14, param1);
    ov115_022652A4(&param0->unk_1AB4.unk_758, param0->unk_14);
    ov115_02265478(&param0->unk_1AB4.unk_6B1C, &param0->unk_1AB4, v0, param1);

    NARC_dtor(v0);
    param0->unk_1AB4.unk_754 = ov114_0225CAD4(param0->unk_1AB4.unk_1C, param1);
}

static void ov115_02263560(UnkStruct_ov115_02260D78 *param0)
{
    ov115_02265688(&param0->unk_1AB4.unk_6B1C, &param0->unk_1AB4);
    ov115_02261574(&param0->unk_1AB4.unk_3E8, &param0->unk_1AB4);
    ov115_02261AD8(&param0->unk_1AB4, param0->unk_10);
    ov115_02261A04(&param0->unk_1AB4.unk_4E8, &param0->unk_1AB4);
    ov115_02263DF4(&param0->unk_1AB4);
    ov115_02264C78(&param0->unk_1AB4, &param0->unk_1AB4.unk_6A3C);
    ov115_02264BA0(&param0->unk_1AB4.unk_6A34);
    ov115_02264564(&param0->unk_1AB4);
    ov115_02263FF4(&param0->unk_1AB4.unk_524, &param0->unk_1AB4.unk_6BBC);
    ov115_02264F68(&param0->unk_1AB4.unk_204, &param0->unk_1AB4, &param0->unk_1AB4.unk_6BBC);
    ov115_02263B78(&param0->unk_1AB4);
    ov114_0225CB38(param0->unk_1AB4.unk_754);
    ov115_02263954(&param0->unk_1AB4);
    ov115_02263A3C(&param0->unk_1AB4);
    ov115_02263C04(&param0->unk_1AB4);
    ov115_022633EC(&param0->unk_1AB4);

    G2_BlendNone();
    G2S_BlendNone();
}

static void ov115_02263640(const UnkStruct_ov115_02260D78 *param0, UnkStruct_ov115_02261ADC *param1)
{
    ov115_02264044(&param1->unk_524, &param0->unk_19CC, param0->unk_00);
    ov115_022640A4(&param1->unk_524, &param0->unk_19CC, param0->unk_00);
    ov115_02264BC0(&param1->unk_6A34);
    ov115_0226369C(param0, param1);
    ov115_022652C0(&param1->unk_758, param1);
    ov115_02265820(&param1->unk_6B1C);
}

static void ov115_0226369C(const UnkStruct_ov115_02260D78 *param0, UnkStruct_ov115_02261ADC *param1)
{
    ov115_02264C90(&param1->unk_6A3C);
    ov115_02261598(&param1->unk_3E8);

    sub_020241B4();

    ov115_02263CD0(param1);

    NNS_G3dGlbLightVector(0, 0, -FX32_ONE, 0);
    NNS_G3dGlbLightColor(0, GX_RGB(31, 31, 31));
    NNS_G3dGlbMaterialColorDiffAmb(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), 0);
    NNS_G3dGlbMaterialColorSpecEmi(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), 0);
    NNS_G3dGePushMtx();

    {
        ov115_02264FA0(&param1->unk_204);
    }

    NNS_G3dGePopMtx(1);
    NNS_G3dGePushMtx();

    {
        ov115_02264134(&param1->unk_524, &param0->unk_19CC);
    }

    NNS_G3dGePopMtx(1);
    NNS_G3dGePushMtx();

    {
        ov115_02264684(param1, param0->unk_10);
    }

    NNS_G3dGePopMtx(1);

    G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
    CellActorCollection_Update(param1->unk_1C);
}

static void ov115_0226376C(UnkStruct_ov115_02261ADC *param0, u32 param1)
{
    param0->unk_00 = sub_02018340(param1);

    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D,
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
            GX_BG_SCRBASE_0x7800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_00, 1, &v1, 0);
        sub_02019690(1, 32, 0, param1);
        sub_02019EBC(param0->unk_00, 1);
    }

    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x7000,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_00, 2, &v2, 0);
        sub_02019690(2, 32, 0, param1);
        sub_02019EBC(param0->unk_00, 2);
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xd000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_00, 4, &v3, 0);
        sub_02019690(4, 32, 0, param1);
        sub_02019EBC(param0->unk_00, 4);
    }

    {
        UnkStruct_ov97_0222DB78 v4 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xd800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_00, 5, &v4, 0);
        sub_02019690(5, 32, 0, param1);
        sub_02019EBC(param0->unk_00, 5);
    }

    {
        UnkStruct_ov97_0222DB78 v5 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_00, 6, &v5, 0);
        sub_02019690(6, 32, 0, param1);
        sub_02019EBC(param0->unk_00, 6);
    }

    {
        UnkStruct_ov97_0222DB78 v6 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_00, 7, &v6, 0);
        sub_02019690(7, 32, 0, param1);
        sub_02019EBC(param0->unk_00, 7);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    Font_LoadScreenIndicatorsPalette(0, 5 * 0x20, param1);
    sub_0200DAA4(param0->unk_00, 1, 1, 4, 0, param1);
}

static void ov115_02263954(UnkStruct_ov115_02261ADC *param0)
{
    sub_02019044(param0->unk_00, 1);
    sub_02019044(param0->unk_00, 2);
    sub_02019044(param0->unk_00, 4);
    sub_02019044(param0->unk_00, 5);
    sub_02019044(param0->unk_00, 6);
    sub_02019044(param0->unk_00, 7);
    Heap_FreeToHeap(param0->unk_00);
}

static void ov115_02263990(UnkStruct_ov115_02261ADC *param0, u32 param1)
{
    int v0;

    NNS_G2dInitOamManagerModule();
    sub_0200A784(0, 126, 0, 31, 0, 126, 0, 31, param1);

    {
        UnkStruct_ov22_022559F8 v1 = {
            16, (128 * 1024), (16 * 1024), 0
        };

        v1.unk_0C = param1;
        sub_0201E88C(&v1, GX_OBJVRAMMODE_CHAR_1D_128K, GX_OBJVRAMMODE_CHAR_1D_128K);
    }

    sub_0201F834(16, param1);
    sub_0201E994();
    sub_0201F8E4();
    sub_0200966C(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_128K);
    sub_02009704(NNS_G2D_VRAM_TYPE_2DMAIN);

    param0->unk_1C = sub_020095C4(128, &param0->unk_20, param1);

    sub_0200964C(&param0->unk_20, 0, (512 << FX32_SHIFT));

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_1AC[v0] = SpriteResourceCollection_New(16, v0, param1);
    }

    param0->unk_1F0 = sub_02012744(8, param1);
}

static void ov115_02263A3C(UnkStruct_ov115_02261ADC *param0)
{
    int v0;

    sub_020127BC(param0->unk_1F0);
    CellActorCollection_Delete(param0->unk_1C);

    for (v0 = 0; v0 < 4; v0++) {
        SpriteResourceCollection_Delete(param0->unk_1AC[v0]);
    }

    sub_0201E958();
    sub_0201F8B4();
    sub_0200A878();
}

static void ov115_02263A74(UnkStruct_ov115_02261ADC *param0, NARC *param1, u32 param2)
{
    BOOL v0;

    {
        param0->unk_1E0[0] = SpriteResourceCollection_AddTilesFrom(param0->unk_1AC[0], param1, 2, 0, 200, NNS_G2D_VRAM_TYPE_2DMAIN, param2);
        param0->unk_1E0[1] = SpriteResourceCollection_AddPaletteFrom(param0->unk_1AC[1], param1, 3, 0, 200, NNS_G2D_VRAM_TYPE_2DMAIN, 8, param2);
        param0->unk_1E0[2] = SpriteResourceCollection_AddFrom(param0->unk_1AC[2], param1, 1, 0, 200, 2, param2);
        param0->unk_1E0[3] = SpriteResourceCollection_AddFrom(param0->unk_1AC[3], param1, 0, 0, 200, 3, param2);

        v0 = sub_0200A450(param0->unk_1E0[0]);
        GF_ASSERT(v0);
        v0 = sub_0200A640(param0->unk_1E0[1]);
        GF_ASSERT(v0);

        SpriteResource_ReleaseData(param0->unk_1E0[0]);
        SpriteResource_ReleaseData(param0->unk_1E0[1]);
        sub_020093B4(&param0->unk_1BC, 200, 200, 200, 200, 0xffffffff, 0xffffffff, 0, 0, param0->unk_1AC[0], param0->unk_1AC[1], param0->unk_1AC[2], param0->unk_1AC[3], NULL, NULL);
    }
}

static void ov115_02263B78(UnkStruct_ov115_02261ADC *param0)
{
    {
        sub_0200A4E4(param0->unk_1E0[0]);
        sub_0200A6DC(param0->unk_1E0[1]);
        SpriteResourceCollection_Remove(param0->unk_1AC[0], param0->unk_1E0[0]);
        SpriteResourceCollection_Remove(param0->unk_1AC[1], param0->unk_1E0[1]);
        SpriteResourceCollection_Remove(param0->unk_1AC[2], param0->unk_1E0[2]);
        SpriteResourceCollection_Remove(param0->unk_1AC[3], param0->unk_1E0[3]);
    }
}

static void ov115_02263BCC(UnkStruct_ov115_02261ADC *param0, u32 param1)
{
    param0->unk_04 = StringTemplate_Default(param1);
    param0->unk_08 = MessageLoader_Init(0, 26, 407, param1);
    param0->unk_0C = Strbuf_Init(128, param1);
    param0->unk_10 = Strbuf_Init(128, param1);
}

static void ov115_02263C04(UnkStruct_ov115_02261ADC *param0)
{
    Strbuf_Free(param0->unk_10);
    Strbuf_Free(param0->unk_0C);
    MessageLoader_Free(param0->unk_08);
    StringTemplate_Free(param0->unk_04);
}

static void ov115_02263C24(UnkStruct_ov115_02261ADC *param0, u32 param1, u32 param2, u32 param3)
{
    CameraAngle v0;
    VecFx32 v1;
    MtxFx33 v2;

    param0->camera = Camera_Alloc(param3);
    param0->unk_1F8.x = 0;
    param0->unk_1F8.y = 0;
    param0->unk_1F8.z = 0;

    v0.x = 0xf112;
    v0.y = Unk_ov115_02265C5C[param1 - 1][param2];
    v0.z = ((0 * 0xffff) / 360);

    Camera_InitWithTarget(&param0->unk_1F8, 0x1d9000, &v0, ((22 * 0xffff) / 360), 0, 1, param0->camera);

    v1.x = 0;
    v1.y = (FX32_ONE);
    v1.z = 0;

    Camera_SetUp(&v1, param0->camera);
    Camera_SetAsActive(param0->camera);
    Camera_SetClipping((FX32_CONST(200)), (FX32_CONST(1000)), param0->camera);
}

static void ov115_02263CC0(UnkStruct_ov115_02261ADC *param0)
{
    Camera_Delete(param0->camera);
}

static void ov115_02263CD0(UnkStruct_ov115_02261ADC *param0)
{
    Camera_ComputeViewMatrix();
}

static void ov115_02263CD8(UnkStruct_ov115_02261ADC *param0, NARC *param1, u32 param2, u32 param3)
{
    static const u8 v0[4] = {
        0,
        9,
        10,
        11,
    };

    sub_020070E8(param1, 12, param0->unk_00, 4, 0, 0, 0, param3);
    sub_0200710C(param1, 14, param0->unk_00, 7, 0, 0, 0, param3);
    sub_0200710C(param1, 15, param0->unk_00, 6, 0, 0, 0, param3);
    sub_0200710C(param1, 16, param0->unk_00, 5, 0, 0, 0, param3);
    sub_0200710C(param1, 17, param0->unk_00, 4, 0, 0, 0, param3);
    sub_02007130(param1, 13, 4, 0, 12 * 32, param3);
    sub_02019E2C(param0->unk_00, 7, 0, 0, 32, 32, v0[param2]);
    sub_02019E2C(param0->unk_00, 6, 0, 0, 32, 32, 2 + (param2 * 2));
    sub_02019E2C(param0->unk_00, 5, 0, 0, 32, 32, 1 + (param2 * 2));
    sub_02019E2C(param0->unk_00, 4, 0, 0, 32, 32, 1 + (param2 * 2));
    sub_02019448(param0->unk_00, 4);
    sub_02019448(param0->unk_00, 5);
    sub_02019448(param0->unk_00, 6);
    sub_02019448(param0->unk_00, 7);
}

static void ov115_02263DF4(UnkStruct_ov115_02261ADC *param0)
{
    return;
}

static void ov115_02263DF8(UnkStruct_ov115_02263DF8 *param0, NARC *param1, u32 param2, NNSFndAllocator *param3)
{
    static const u16 v0[6] = {
        26,
        27,
        28,
        29,
        30,
        31,
    };

    static const u16 v1[3] = {
        23,
        24,
        25,
    };

    int v2, v3, v4, v5;
    const NNSG3dResName *v6;
    const NNSG3dResNodeInfo *v7;

    memset(param0, 0, sizeof(UnkStruct_ov115_02263DF8));

    for (v2 = 0; v2 < 3; v2++) {
        Easy3DModel_LoadFrom(&param0->unk_168[v2], param1, v1[v2], param2);
        Easy3DObject_Init(&param0->unk_00[v2], &param0->unk_168[v2]);
        Easy3DObject_SetVisibility(&param0->unk_00[v2], 0);
        Easy3DObject_SetPosition(&param0->unk_00[v2], Unk_ov115_02265B20.x, Unk_ov115_02265B20.y + (-FX32_CONST(200)), Unk_ov115_02265B20.z);
        Easy3DObject_SetScale(&param0->unk_00[v2], (FX32_CONST(1.50f)), (FX32_CONST(1.50f)), (FX32_CONST(1.50f)));
    }

    for (v2 = 0; v2 < 6; v2++) {
        Easy3DAnim_LoadFrom(&param0->unk_198[v2], &param0->unk_168[Unk_ov115_02266644[v2]], param1, v0[v2], param2, param3);
        Easy3DAnim_SetFrame(&param0->unk_198[v2], 0);

        v3 = 0;
        v7 = NNS_G3dGetNodeInfo(param0->unk_168[Unk_ov115_02266644[v2]].model);

        while ((v6 = NNS_G3dGetNodeNameByIdx(v7, v3)) != NULL) {
            NNS_G3dAnmObjDisableID(param0->unk_198[v2].animObj, v3);
            v3++;
        }

        for (v3 = 0; v3 < 15; v3++) {
            v5 = NNS_G3dGetNodeIdxByName(v7, &Unk_ov115_022660A4[v2][v3]);

            if (v5 != -1) {
                NNS_G3dAnmObjEnableID(param0->unk_198[v2].animObj, v5);
            }
        }
    }

    for (v2 = 0; v2 < 1; v2++) {
        Easy3DAnim_LoadFrom(&param0->unk_214[v2], &param0->unk_168[Unk_ov115_02265AE0[v2]], param1, 32, param2, param3);
        Easy3DObject_AddAnim(&param0->unk_00[Unk_ov115_02265AE0[v2]], &param0->unk_214[v2]);
    }

    param0->unk_22C = 4;
    param0->unk_22E = 0;

    ov115_0226422C(param0, 0);

    Easy3DObject_AddAnim(&param0->unk_00[1], &param0->unk_198[4]);
    Easy3DAnim_SetFrame(&param0->unk_198[4], 0);
    Easy3DObject_SetVisibility(&param0->unk_00[1], 1);

    param0->unk_210 = 4;
}

static void ov115_02263FF4(UnkStruct_ov115_02263DF8 *param0, NNSFndAllocator *param1)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        Easy3DModel_Release(&param0->unk_168[v0]);
    }

    for (v0 = 0; v0 < 6; v0++) {
        Easy3DAnim_Release(&param0->unk_198[v0], param1);
    }

    for (v0 = 0; v0 < 1; v0++) {
        Easy3DAnim_Release(&param0->unk_214[v0], param1);
    }

    memset(param0, 0, sizeof(UnkStruct_ov115_02263DF8));
}

static void ov115_02264044(UnkStruct_ov115_02263DF8 *param0, const UnkStruct_ov115_02261C18 *param1, int param2)
{
    ov115_022640C0(param0, param1);
    ov115_022640EC(param0, param1);
    ov115_02264110(param0, param1);

    switch (param2) {
    case 0:
    case 2:
        ov115_02264190(param0, 1);
        ov115_0226414C(param0, param1->unk_04);
        ov115_0226422C(param0, 1);
        break;
    case 1:
        ov115_02264190(param0, 3);
        ov115_0226422C(param0, 0);
        ov115_02264214(param0, (FX32_CONST(1.0)));
        break;
    }
}

static void ov115_022640A4(UnkStruct_ov115_02263DF8 *param0, const UnkStruct_ov115_02261C18 *param1, int param2)
{
    Easy3DAnim_UpdateLooped(&param0->unk_198[0], (FX32_CONST(1)));
    ov115_02264270(param0);
}

static void ov115_022640C0(UnkStruct_ov115_02263DF8 *param0, const UnkStruct_ov115_02261C18 *param1)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        Easy3DObject_SetPosition(&param0->unk_00[v0], param1->unk_D8.x, param1->unk_D8.y, param1->unk_D8.z);
    }
}

static void ov115_022640EC(UnkStruct_ov115_02263DF8 *param0, const UnkStruct_ov115_02261C18 *param1)
{
    int v0;
    fx32 v1;
    u32 v2;

    v2 = param1->unk_02 + ((0 * 0xffff) / 360);

    for (v0 = 0; v0 < 3; v0++) {
        Easy3DObject_SetRotation(&param0->unk_00[v0], (u16)v2, 1);
    }
}

static void ov115_02264110(UnkStruct_ov115_02263DF8 *param0, const UnkStruct_ov115_02261C18 *param1)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        Easy3DObject_SetScale(&param0->unk_00[v0], param1->unk_D4, param1->unk_D4, param1->unk_D4);
    }
}

static void ov115_02264134(UnkStruct_ov115_02263DF8 *param0, const UnkStruct_ov115_02261C18 *param1)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        Easy3DObject_Draw(&param0->unk_00[v0]);
    }
}

static void ov115_0226414C(UnkStruct_ov115_02263DF8 *param0, u32 param1)
{
    fx32 v0;

    param1 -= ((20 * 0xffff) / 360);
    v0 = (param1 * 90) / sub_0201D2A4(90 - ((20 * 0xffff) / 360));
    v0 = (v0 * (FX32_CONST(180))) / 90;
    v0 = (FX32_CONST(180)) - v0;

    Easy3DAnim_SetFrame(&param0->unk_198[1], v0);
}

static void ov115_02264190(UnkStruct_ov115_02263DF8 *param0, u32 param1)
{
    GF_ASSERT(param1 < 6);

    if (param0->unk_210 != param1) {
        Easy3DObject_RemoveAnim(&param0->unk_00[Unk_ov115_02266644[param0->unk_210]], &param0->unk_198[param0->unk_210]);
        Easy3DObject_AddAnim(&param0->unk_00[Unk_ov115_02266644[param1]], &param0->unk_198[param1]);
        Easy3DAnim_SetFrame(&param0->unk_198[param1], 0);
        Easy3DObject_SetVisibility(&param0->unk_00[Unk_ov115_02266644[param0->unk_210]], 0);
        Easy3DObject_SetVisibility(&param0->unk_00[Unk_ov115_02266644[param1]], 1);
        param0->unk_210 = param1;
    }
}

static BOOL ov115_02264214(UnkStruct_ov115_02263DF8 *param0, fx32 param1)
{
    return Easy3DAnim_Update(&param0->unk_198[param0->unk_210], param1);
}

static void ov115_0226422C(UnkStruct_ov115_02263DF8 *param0, BOOL param1)
{
    if (param0->unk_212 != param1) {
        if (param1 == 1) {
            Easy3DObject_AddAnim(&param0->unk_00[Unk_ov115_02266644[0]], &param0->unk_198[0]);
        } else {
            Easy3DObject_RemoveAnim(&param0->unk_00[Unk_ov115_02266644[0]], &param0->unk_198[0]);
        }

        param0->unk_212 = param1;
    }
}

static void ov115_0226425C(UnkStruct_ov115_02263DF8 *param0, BOOL param1)
{
    param0->unk_22E = param1;
}

static void ov115_02264268(UnkStruct_ov115_02263DF8 *param0, u32 param1)
{
    param0->unk_22C = param1;
}

static void ov115_02264270(UnkStruct_ov115_02263DF8 *param0)
{
    int v0;

    if (param0->unk_22E == 1) {
        if ((param0->unk_228 + (FX32_CONST(2))) < (Unk_ov115_02265B0A[4][1] * FX32_ONE)) {
            param0->unk_228 += (FX32_CONST(2));
        } else {
            param0->unk_228 = (Unk_ov115_02265B0A[1][0] * FX32_ONE);
        }
    } else {
        u32 v1;

        if (param0->unk_22C == 4) {
            v1 = 0;
        } else {
            v1 = 1 + param0->unk_22C;
        }

        if (param0->unk_228 < (Unk_ov115_02265B0A[v1][0] * FX32_ONE)) {
            param0->unk_228 = Unk_ov115_02265B0A[v1][0] * FX32_ONE;
        } else if ((param0->unk_228 + (FX32_CONST(2))) < (Unk_ov115_02265B0A[v1][1] * FX32_ONE)) {
            param0->unk_228 += (FX32_CONST(2));
        } else {
            param0->unk_228 = Unk_ov115_02265B0A[v1][0] * FX32_ONE;
        }
    }

    for (v0 = 0; v0 < 1; v0++) {
        Easy3DAnim_SetFrame(&param0->unk_214[v0], param0->unk_228);
    }
}

static void ov115_022642F8(s16 param0, s16 param1, VecFx32 *param2)
{
    param2->x = (((255 - param0) * ((FX32_CONST(150)) / 256)) - ((FX32_CONST(150)) / 2));
    param2->z = (FX32_CONST(-300)) - (((param1) * ((FX32_CONST(150)) / 256)) - ((FX32_CONST(150)) / 2));
}

static void ov115_02264324(const VecFx32 *param0, NNSG2dSVec2 *param1)
{
    param1->x = 255 - (((param0->x) + ((FX32_CONST(150)) / 2)) / ((FX32_CONST(150)) / 256));
    param1->y = ((((-param0->z) + ((fx32)((-300 > 0) ? (-300 * (1 << 12) + 0.5f) : (-300 * (1 << 12) - 0.5f)))) + ((FX32_CONST(150)) / 2)) / ((FX32_CONST(150)) / 256));
}

static void ov115_02264354(const VecFx32 *param0, VecFx32 *param1, u32 param2, u32 param3)
{
    MtxFx33 v0;

    MTX_Identity33(&v0);
    MTX_RotY33(&v0, FX_SinIdx(Unk_ov115_02265C3C[param3 - 1][param2]), FX_CosIdx(Unk_ov115_02265C3C[param3 - 1][param2]));
    MTX_MultVec33(param0, &v0, param1);
}

static void ov115_0226439C(const VecFx32 *param0, VecFx32 *param1, u32 param2, u32 param3)
{
    MtxFx33 v0;

    MTX_Identity33(&v0);
    MTX_RotY33(&v0, FX_SinIdx(Unk_ov115_02265C3C[param3 - 1][param2]), FX_CosIdx(Unk_ov115_02265C3C[param3 - 1][param2]));
    MTX_Inverse33(&v0, &v0);
    MTX_MultVec33(param0, &v0, param1);
}

static void ov115_022643EC(UnkStruct_ov115_02261ADC *param0, NARC *param1, u32 param2)
{
    BOOL v0;
    int v1;
    static const u8 v2[5] = {
        41,
        42,
        43,
        44,
        45,
    };

    for (v1 = 0; v1 < 5; v1++) {
        Easy3DModel_LoadFrom(&param0->unk_760.unk_00[v1], param1, v2[v1], param2);
    }

    Easy3DModel_LoadFrom(&param0->unk_760.unk_50, param1, 46, param2);
    NNS_G3dMdlUseGlbAlpha(param0->unk_760.unk_50.model);

    {
        param0->unk_760.unk_60[0] = SpriteResourceCollection_AddTilesFrom(param0->unk_1AC[0], param1, 7, 0, 100, NNS_G2D_VRAM_TYPE_2DSUB, param2);
        param0->unk_760.unk_60[1] = SpriteResourceCollection_AddPaletteFrom(param0->unk_1AC[1], param1, 4, 0, 100, NNS_G2D_VRAM_TYPE_2DSUB, 4, param2);
        param0->unk_760.unk_60[2] = SpriteResourceCollection_AddFrom(param0->unk_1AC[2], param1, 6, 0, 100, 2, param2);
        param0->unk_760.unk_60[3] = SpriteResourceCollection_AddFrom(param0->unk_1AC[3], param1, 5, 0, 100, 3, param2);

        v0 = sub_0200A450(param0->unk_760.unk_60[0]);
        GF_ASSERT(v0);
        v0 = sub_0200A640(param0->unk_760.unk_60[1]);
        GF_ASSERT(v0);

        SpriteResource_ReleaseData(param0->unk_760.unk_60[0]);
        SpriteResource_ReleaseData(param0->unk_760.unk_60[1]);
    }

    sub_020093B4(&param0->unk_760.unk_70, 100, 100, 100, 100, 0xffffffff, 0xffffffff, 0, 0, param0->unk_1AC[0], param0->unk_1AC[1], param0->unk_1AC[2], param0->unk_1AC[3], NULL, NULL);

    for (v1 = 0; v1 < 96; v1++) {
        ov115_022646BC(param0, &param0->unk_7F4[v1], param2);
    }
}

static void ov115_02264564(UnkStruct_ov115_02261ADC *param0)
{
    int v0;

    for (v0 = 0; v0 < 96; v0++) {
        ov115_02264728(param0, &param0->unk_7F4[v0]);
    }

    {
        sub_0200A4E4(param0->unk_760.unk_60[0]);
        sub_0200A6DC(param0->unk_760.unk_60[1]);
        SpriteResourceCollection_Remove(param0->unk_1AC[0], param0->unk_760.unk_60[0]);
        SpriteResourceCollection_Remove(param0->unk_1AC[1], param0->unk_760.unk_60[1]);
        SpriteResourceCollection_Remove(param0->unk_1AC[2], param0->unk_760.unk_60[2]);
        SpriteResourceCollection_Remove(param0->unk_1AC[3], param0->unk_760.unk_60[3]);
    }

    for (v0 = 0; v0 < 5; v0++) {
        Easy3DModel_Release(&param0->unk_760.unk_00[v0]);
    }

    Easy3DModel_Release(&param0->unk_760.unk_50);

    memset(&param0->unk_760, 0, sizeof(UnkStruct_ov115_02264A40));
    memset(&param0->unk_7F4, 0, sizeof(UnkStruct_ov115_022647A0) * 96);
}

static void ov115_02264620(UnkStruct_ov115_02261ADC *param0, const UnkStruct_ov115_022622F8 *param1, u32 param2, u32 param3)
{
    UnkStruct_ov115_022647A0 *v0;

    v0 = ov115_02264948(param0);

    if (param1->unk_04.unk_00 == param3) {
        ov115_02264740(param0, v0, param1, param2);
    } else {
        ov115_0226477C(param0, v0, param1);
    }
}

static void ov115_0226464C(UnkStruct_ov115_02261ADC *param0, const UnkStruct_ov115_022622F8 *param1)
{
    int v0;

    for (v0 = 0; v0 < 96; v0++) {
        if (param0->unk_7F4[v0].unk_F8 == param1) {
            ov115_02264924(&param0->unk_7F4[v0]);
            return;
        }
    }

    GF_ASSERT(0);
}

static void ov115_02264684(UnkStruct_ov115_02261ADC *param0, u32 param1)
{
    int v0;

    for (v0 = 0; v0 < 96; v0++) {
        if (param0->unk_7F4[v0].unk_F8 != NULL) {
            ov115_022647A0(&param0->unk_7F4[v0], param0, param1);
        }
    }
}

static void ov115_022646BC(UnkStruct_ov115_02261ADC *param0, UnkStruct_ov115_022647A0 *param1, u32 param2)
{
    {
        CellActorInitParamsEx v0 = { 0 };

        v0.collection = param0->unk_1C;
        v0.resourceData = &param0->unk_760.unk_70;
        v0.affineScale.x = FX32_ONE;
        v0.affineScale.y = FX32_ONE;
        v0.affineScale.z = FX32_ONE;
        v0.priority = 32;
        v0.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
        v0.heapID = param2;
        param1->unk_00 = CellActorCollection_AddEx(&v0);

        CellActor_SetDrawFlag(param1->unk_00, 0);
    }

    Easy3DObject_Init(&param1->unk_7C, &param0->unk_760.unk_50);
    Easy3DObject_SetVisibility(&param1->unk_7C, 0);
}

static void ov115_02264728(UnkStruct_ov115_02261ADC *param0, UnkStruct_ov115_022647A0 *param1)
{
    CellActor_Delete(param1->unk_00);
    memset(param1, 0, sizeof(UnkStruct_ov115_022647A0));
}

static void ov115_02264740(UnkStruct_ov115_02261ADC *param0, UnkStruct_ov115_022647A0 *param1, const UnkStruct_ov115_022622F8 *param2, u32 param3)
{
    param1->unk_F8 = param2;
    param1->unk_F4 = 1;
    param1->unk_104 = 0;

    CellActor_SetExplicitPalette(param1->unk_00, param2->unk_04.unk_00);
    ov115_02264980(param1, param2, param3);
    CellActor_SetDrawFlag(param1->unk_00, 1);
}

static void ov115_0226477C(UnkStruct_ov115_02261ADC *param0, UnkStruct_ov115_022647A0 *param1, const UnkStruct_ov115_022622F8 *param2)
{
    param1->unk_F8 = param2;
    param1->unk_104 = 0;

    CellActor_SetDrawFlag(param1->unk_00, 0);
    ov115_022649F0(param1, param0);
}

static void ov115_022647A0(UnkStruct_ov115_022647A0 *param0, UnkStruct_ov115_02261ADC *param1, u32 param2)
{
    BOOL v0;
    Easy3DModel *v1;

    if (param0->unk_F4 == 1) {
        v0 = ov115_02264980(param0, param0->unk_F8, param2);

        if (v0 == 0) {
            ov115_022649F0(param0, param1);
        }
    }

    if (param0->unk_F4 == 0) {
        v1 = ov115_02264A40(param0->unk_F8, &param1->unk_760);

        if (param0->unk_F8->unk_00 == 5) {
            NNS_G3dMdlSetMdlAmbAll(v1->model, GX_RGB(31, 31, 31));
        } else {
            NNS_G3dMdlSetMdlAmbAll(v1->model, GX_RGB(18, 18, 18));
        }

        ov115_02264A54(param0);
        Easy3DObject_SetPosition(&param0->unk_04, param0->unk_F8->unk_2C.x, param0->unk_F8->unk_2C.y, param0->unk_F8->unk_2C.z);
        Easy3DObject_Draw(&param0->unk_04);

        if (Easy3DObject_GetVisibility(&param0->unk_7C) == 1) {
            ov115_02264848(param0);
            Easy3DObject_Draw(&param0->unk_7C);
            ov115_02264908(param0);
        }
    }
}

static void ov115_02264848(UnkStruct_ov115_022647A0 *param0)
{
    BOOL v0;
    fx32 v1;
    fx32 v2;
    fx32 v3;
    int v4;

    v0 = ov115_022628A4(param0->unk_F8);

    if (v0 == 1) {
        v2 = (FX32_CONST(-300));
    } else {
        v0 = ov115_02262888(param0->unk_F8);

        if (v0 == 0) {
            v2 = ((FX32_CONST(-50)) - FX32_CONST(1));
        } else {
            v2 = (FX32_CONST(-300));
        }
    }

    Easy3DObject_SetPosition(&param0->unk_7C, param0->unk_F8->unk_2C.x, v2, param0->unk_F8->unk_2C.z);

    v1 = param0->unk_F8->unk_2C.y - v2;
    v3 = FX32_ONE + (FX_Div(FX_Mul(v1, (FX32_CONST(1))), (FX32_CONST(300))));

    Easy3DObject_SetScale(&param0->unk_7C, v3, v3, v3);

    v4 = (FX_Div(FX_Mul(v1, FX32_CONST(16)), (FX32_CONST(300)))) >> FX32_SHIFT;
    v4 = 8 + 16 - v4;

    NNS_G3dGlbPolygonAttr(0, 0, 0, 0, v4, 0);
}

static void ov115_02264908(UnkStruct_ov115_022647A0 *param0)
{
    NNS_G3dGlbPolygonAttr(0, 0, 0, 0, 31, 0);
}

static void ov115_02264924(UnkStruct_ov115_022647A0 *param0)
{
    param0->unk_F8 = NULL;
    param0->unk_F4 = 0;

    CellActor_SetDrawFlag(param0->unk_00, 0);
    Easy3DObject_SetVisibility(&param0->unk_7C, 0);
}

static UnkStruct_ov115_022647A0 *ov115_02264948(UnkStruct_ov115_02261ADC *param0)
{
    int v0;

    for (v0 = 0; v0 < 96; v0++) {
        if (param0->unk_7F4[v0].unk_F8 == NULL) {
            return &param0->unk_7F4[v0];
        }
    }

    GF_ASSERT(0);
    return NULL;
}

static BOOL ov115_02264980(UnkStruct_ov115_022647A0 *param0, const UnkStruct_ov115_022622F8 *param1, u32 param2)
{
    VecFx32 v0;
    NNSG2dSVec2 v1;

    v0 = param0->unk_F8->unk_2C;

    ov115_0226439C(&v0, &v0, param0->unk_F8->unk_04.unk_00, param2);
    ov115_02264324(&v0, &v1);

    v0.x = v1.x << FX32_SHIFT;
    v0.y = (v1.y << FX32_SHIFT) + (512 << FX32_SHIFT);
    v0.z = 0;

    CellActor_SetPosition(param0->unk_00, &v0);

    if ((v1.x < 0) || (v1.y < 0)) {
        return 0;
    }

    return 1;
}

static void ov115_022649F0(UnkStruct_ov115_022647A0 *param0, UnkStruct_ov115_02261ADC *param1)
{
    Easy3DModel *v0;

    CellActor_SetDrawFlag(param0->unk_00, 0);
    param0->unk_F4 = 0;

    v0 = ov115_02264A40(param0->unk_F8, &param1->unk_760);

    Easy3DObject_Init(&param0->unk_04, v0);
    Easy3DObject_SetVisibility(&param0->unk_04, 1);

    if (param0->unk_F8->unk_00 == 1) {
        Easy3DObject_SetVisibility(&param0->unk_7C, 1);
    }
}

static Easy3DModel *ov115_02264A40(const UnkStruct_ov115_022622F8 *param0, UnkStruct_ov115_02264A40 *param1)
{
    u32 v0;

    if (param0->unk_04.unk_24 == 1) {
        v0 = 4;
    } else {
        v0 = param0->unk_04.unk_00;
    }

    return &param1->unk_00[v0];
}

static void ov115_02264A54(UnkStruct_ov115_022647A0 *param0)
{
    fx32 v0;
    u16 v1;
    u16 v2;

    param0->unk_104--;

    if (param0->unk_104 < 0) {
        v0 = ov115_022625F0(param0->unk_F8);
        v2 = ((v0 * (1024 - 512)) / (0x8000 + 0x16200));
        v1 = FX_Atan2Idx(param0->unk_F8->unk_04.unk_04.z, param0->unk_F8->unk_04.unk_04.x);

        param0->unk_100 = 512 + (FX_Mul(FX_SinIdx(v1), v2 << FX32_SHIFT) >> FX32_SHIFT);
        param0->unk_102 = 512 + (FX_Mul(FX_CosIdx(v1), v2 << FX32_SHIFT) >> FX32_SHIFT);
        param0->unk_104 = 8;
    }

    param0->unk_FC += param0->unk_100;
    param0->unk_FE += param0->unk_102;

    Easy3DObject_SetRotation(&param0->unk_04, param0->unk_FC, 0);
    Easy3DObject_SetRotation(&param0->unk_04, param0->unk_FE, 2);
}

static void ov115_02264B40(UnkStruct_ov115_02261ADC *param0, UnkStruct_ov115_02264BA0 *param1, u32 param2, u32 param3)
{
    CellActorInitParamsEx v0 = { 0 };

    v0.collection = param0->unk_1C;
    v0.resourceData = &param0->unk_760.unk_70;
    v0.affineScale.x = FX32_ONE;
    v0.affineScale.y = FX32_ONE;
    v0.affineScale.z = FX32_ONE;
    v0.priority = 32;
    v0.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    v0.heapID = param3;

    param1->unk_04 = CellActorCollection_AddEx(&v0);

    CellActor_SetDrawFlag(param1->unk_04, 0);
    CellActor_SetExplicitPalette(param1->unk_04, param2);

    param1->unk_00 = 0;
}

static void ov115_02264BA0(UnkStruct_ov115_02264BA0 *param0)
{
    CellActor_Delete(param0->unk_04);
}

static void ov115_02264BAC(UnkStruct_ov115_02264BA0 *param0)
{
    CellActor_SetDrawFlag(param0->unk_04, 1);
    param0->unk_00 = 1;
}

static void ov115_02264BC0(UnkStruct_ov115_02264BA0 *param0)
{
    VecFx32 v0;

    if (param0->unk_00 == 0) {
        return;
    }

    ov115_02264BD8(param0, gCoreSys.touchX, gCoreSys.touchY);
}

static void ov115_02264BD8(UnkStruct_ov115_02264BA0 *param0, s32 param1, s32 param2)
{
    VecFx32 v0;

    v0.x = param1 << FX32_SHIFT;
    v0.y = (param2 << FX32_SHIFT) + (512 << FX32_SHIFT);

    CellActor_SetPosition(param0->unk_04, &v0);
}

static void ov115_02264BF8(UnkStruct_ov115_02264BA0 *param0)
{
    CellActor_SetDrawFlag(param0->unk_04, 0);
    param0->unk_00 = 0;
}

static void ov115_02264C0C(UnkStruct_ov115_02261ADC *param0, UnkStruct_ov115_02264C90 *param1, u32 param2, u32 param3)
{
    int v0;
    CellActorInitParamsEx v1 = { 0 };

    v1.collection = param0->unk_1C;
    v1.resourceData = &param0->unk_760.unk_70;
    v1.affineScale.x = 9;
    v1.affineScale.y = 9;
    v1.affineScale.z = 9;
    v1.priority = 32;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    v1.heapID = param3;

    for (v0 = 0; v0 < 8; v0++) {
        param1->unk_00[v0].unk_04 = CellActorCollection_AddEx(&v1);
        CellActor_SetDrawFlag(param1->unk_00[v0].unk_04, 0);
        CellActor_SetAffineOverwriteMode(param1->unk_00[v0].unk_04, 1);
        CellActor_SetExplicitPalette(param1->unk_00[v0].unk_04, param2);
        param1->unk_00[v0].unk_00 = 0;
    }
}

static void ov115_02264C78(UnkStruct_ov115_02261ADC *param0, UnkStruct_ov115_02264C90 *param1)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        CellActor_Delete(param1->unk_00[v0].unk_04);
    }
}

static void ov115_02264C90(UnkStruct_ov115_02264C90 *param0)
{
    int v0;
    s32 v1;
    s32 v2, v3;
    fx32 v4;
    VecFx32 v5;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_00[v0].unk_00 == 1) {
            if (param0->unk_00[v0].unk_14 < 16) {
                v1 = param0->unk_00[v0].unk_14;
                ov115_02264DD8(v1, 16, 8, 190, 125, &v2, &v3);
            } else if (param0->unk_00[v0].unk_14 < (16 + 10)) {
                v1 = param0->unk_00[v0].unk_14 - 16;
                ov115_02264DD8(v1, 10, 4, 182, 140, &v2, &v3);
            } else {
                v1 = param0->unk_00[v0].unk_14 - (16 + 10);
                ov115_02264DD8(v1, 6, 3, 180, 160, &v2, &v3);
            }

            param0->unk_00[v0].unk_14++;

            v4 = 9 - ((param0->unk_00[v0].unk_14 * 3) / (16 + 10 + 6));
            v4 = FX_Div(v4 << FX32_SHIFT, FX32_CONST(10));
            v5.x = v4;
            v5.y = v4;

            CellActor_SetAffineScale(param0->unk_00[v0].unk_04, &v5);

            if (param0->unk_00[v0].unk_18) {
                param0->unk_00[v0].unk_08.x += v2 << FX32_SHIFT;
            } else {
                param0->unk_00[v0].unk_08.x -= v2 << FX32_SHIFT;
            }

            param0->unk_00[v0].unk_08.y += v3 << FX32_SHIFT;
            CellActor_SetPosition(param0->unk_00[v0].unk_04, &param0->unk_00[v0].unk_08);

            if ((param0->unk_00[v0].unk_08.x < (-FX32_CONST(32))) || (param0->unk_00[v0].unk_08.x > (FX32_CONST(288))) || (param0->unk_00[v0].unk_08.y < (-FX32_CONST(32)) + (512 << FX32_SHIFT)) || (param0->unk_00[v0].unk_08.y > (FX32_CONST(224)) + (512 << FX32_SHIFT))) {
                param0->unk_00[v0].unk_00 = 0;
                CellActor_SetDrawFlag(param0->unk_00[v0].unk_04, 0);
            }
        }
    }
}

static void ov115_02264D80(UnkStruct_ov115_02264C90 *param0, s32 param1, s32 param2)
{
    int v0;
    UnkStruct_ov115_02264D80 *v1 = NULL;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_00[v0].unk_00 == 0) {
            v1 = &param0->unk_00[v0];
            break;
        }
    }

    if (v1 == NULL) {
        return;
    }

    if (param1 < 128) {
        v1->unk_18 = 1;
    } else {
        v1->unk_18 = 0;
    }

    v1->unk_08.x = param1 << FX32_SHIFT;
    v1->unk_08.y = (param2 << FX32_SHIFT) + (512 << FX32_SHIFT);

    CellActor_SetPosition(v1->unk_04, &v1->unk_08);

    v1->unk_00 = 1;
    CellActor_SetDrawFlag(v1->unk_04, 1);
    v1->unk_14 = 0;
}

static void ov115_02264DD8(int param0, int param1, int param2, int param3, int param4, s32 *param5, s32 *param6)
{
    s16 v0;
    s32 v1;

    v1 = param4 - param3;
    v0 = param3 + ((param0 * v1) / param1);

    *param5 = FX_Mul(sub_0201D1D4(v0), param2 << FX32_SHIFT) >> FX32_SHIFT;
    *param6 = FX_Mul(sub_0201D15C(v0), param2 << FX32_SHIFT) >> FX32_SHIFT;
}

static void ov115_02264E48(UnkStruct_ov115_02264FA0 *param0, UnkStruct_ov115_02261ADC *param1, NARC *param2, int param3, u32 param4, u32 param5, NNSFndAllocator *param6)
{
    static const u16 v0[4] = {
        35,
        35,
        34,
        33,
    };
    static const u16 v1[3] = {
        38,
        39,
        40,
    };
    static const u16 v2[3] = {
        0,
        1,
        1,
    };
    u32 v3;
    int v4;

    for (v4 = 0; v4 < 3; v4++) {
        if (v4 == 0) {
            v3 = 36;
        } else if (v4 == 1) {
            v3 = 37;
        } else {
            v3 = v0[param3 - 1];
        }

        Easy3DModel_LoadFrom(&param0->unk_168[v4], param2, v3, param5);
        Easy3DObject_Init(&param0->unk_00[v4], &param0->unk_168[v4]);
        Easy3DObject_SetPosition(&param0->unk_00[v4], 0, ((FX32_CONST(-90)) - FX32_CONST(8)), 0);
        Easy3DObject_SetScale(&param0->unk_00[v4], (FX32_CONST(1.50f)), (FX32_CONST(1.50f)), (FX32_CONST(1.50f)));

        if (v4 == 1) {
            Easy3DObject_SetVisibility(&param0->unk_00[v4], 0);
        }

        if ((v4 == 0) || (v4 == 1)) {
            Easy3DObject_SetRotation(&param0->unk_00[v4], Unk_ov115_02265C5C[param3 - 1][param4], 1);
        } else {
            Easy3DObject_SetRotation(&param0->unk_00[v4], (sub_0201D278(180)), 1);
        }
    }

    for (v4 = 0; v4 < 3; v4++) {
        Easy3DAnim_LoadFrom(&param0->unk_198[v4], &param0->unk_168[v2[v4]], param2, v1[v4], param5, param6);
        Easy3DObject_AddAnim(&param0->unk_00[v2[v4]], &param0->unk_198[v4]);
    }

    param0->unk_1D4 = (FX32_CONST(1));
}

static void ov115_02264F68(UnkStruct_ov115_02264FA0 *param0, UnkStruct_ov115_02261ADC *param1, NNSFndAllocator *param2)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        Easy3DAnim_Release(&param0->unk_198[v0], param2);
    }

    for (v0 = 0; v0 < 3; v0++) {
        Easy3DModel_Release(&param0->unk_168[v0]);
    }
}

static void ov115_02264FA0(UnkStruct_ov115_02264FA0 *param0)
{
    int v0;

    Easy3DAnim_UpdateLooped(&param0->unk_198[0], param0->unk_1D4);

    if (param0->unk_1D8) {
        switch (param0->unk_1D9) {
        case 0:

            if ((param0->unk_1DC + param0->unk_1E0) < (FX32_CONST(51))) {
                param0->unk_1DC += param0->unk_1E0;
            } else {
                param0->unk_1DC = 0;
            }

            if ((param0->unk_1E0 + (FX32_CONST(0.10))) <= (FX32_CONST(2.30))) {
                param0->unk_1E0 += (FX32_CONST(0.10));
            } else {
                param0->unk_1E0 = (FX32_CONST(2.30));
                param0->unk_1DA = 24;
                param0->unk_1D9++;
            }
            break;
        case 1:
            if ((param0->unk_1DC + param0->unk_1E0) < (FX32_CONST(51))) {
                param0->unk_1DC += param0->unk_1E0;
            } else {
                param0->unk_1DC = 0;
            }

            param0->unk_1DA--;

            if (param0->unk_1DA <= 0) {
                param0->unk_1D9++;
                param0->unk_1DC = (FX32_CONST(51));
            }
            break;
        case 2:
            if ((param0->unk_1DC + (FX32_CONST(1.0))) < (FX32_CONST(100))) {
                param0->unk_1DC += (FX32_CONST(1.0));
            } else {
                param0->unk_1DC = (FX32_CONST(51));
            }
            break;
        default:
            GF_ASSERT(0);
            break;
        }

        Easy3DAnim_SetFrame(&param0->unk_198[1], param0->unk_1DC);
        Easy3DAnim_SetFrame(&param0->unk_198[2], param0->unk_1DC);
    }

    for (v0 = 0; v0 < 3; v0++) {
        Easy3DObject_Draw(&param0->unk_00[v0]);
    }
}

static void ov115_022650C8(UnkStruct_ov115_02264FA0 *param0)
{
    Easy3DObject_SetVisibility(&param0->unk_00[0], 0);
    Easy3DObject_SetVisibility(&param0->unk_00[1], 1);

    param0->unk_1DC = 0;
    param0->unk_1E0 = (FX32_CONST(1.0));
    param0->unk_1D8 = 1;
    param0->unk_1D9 = 0;
}

static void ov115_022650F8(UnkStruct_ov115_02264FA0 *param0, fx32 param1)
{
    param0->unk_1D4 = param1;
}

static void ov115_02265100(const VecFx32 *param0, const VecFx32 *param1, const VecFx32 *param2, fx32 param3, VecFx32 *param4, fx32 *param5)
{
    fx32 v0;
    fx32 v1;
    fx32 v2;

    v1 = FX_Mul(param2->x, param1->x) + FX_Mul(param2->y, param1->y) + FX_Mul(param2->z, param1->z);
    v2 = -FX_Mul(param2->x, param0->x) - FX_Mul(param2->y, param0->y) - FX_Mul(param2->z, param0->z);
    v0 = FX_Div((v2 + param3), v1);

    param4->x = param0->x + FX_Mul(param1->x, v0);
    param4->y = param0->y + FX_Mul(param1->y, v0);
    param4->x = param0->z + FX_Mul(param1->z, v0);

    *param5 = v0;
}

static void ov115_02265274(UnkStruct_ov115_02261ADC *param0, fx32 param1)
{
    param0->unk_1F8.y = param1;
}

static void ov115_0226527C(UnkStruct_ov115_02261ADC *param0, u16 param1)
{
    CameraAngle v0;

    v0 = Camera_GetAngle(param0->camera);
    v0.x = param1;

    Camera_SetAngleAroundTarget(&v0, param0->camera);
}

static void ov115_022652A4(UnkStruct_ov115_022653CC *param0, u8 param1)
{
    memset(param0, 0, sizeof(UnkStruct_ov115_022653CC));
    param0->unk_04 = 2;
    param0->unk_06 = param1;
}

static void ov115_022652C0(UnkStruct_ov115_022653CC *param0, UnkStruct_ov115_02261ADC *param1)
{
    switch (param0->unk_00) {
    case 0:
        break;
    case 1:
        ov115_022653F4(param1, param0->unk_04 - 1, param0->unk_06);
        param0->unk_00++;
        param0->unk_02 = 0;
    case 2:
        if (param0->unk_02 >= 16) {
            param0->unk_00 = 3;
            param0->unk_02 = 0;
            ov115_022653F4(param1, param0->unk_04, param0->unk_06);
            G2S_SetBlendAlpha(1 << param0->unk_04, GX_BLEND_PLANEMASK_BG3, 0, 16);
        } else {
            param0->unk_02++;

            {
                s32 v0, v1, v2;
                s32 v3;

                v0 = param0->unk_04;
                v1 = param0->unk_04 - 2;
                v2 = param0->unk_04 - 1;

                if (v0 < 0) {
                    v0 += 3;
                }

                if (v1 < 0) {
                    v1 += 3;
                }

                if (v2 < 0) {
                    v2 += 3;
                }

                v3 = 16 - ((param0->unk_02 * 16) / 16);
                G2S_SetBlendAlpha(1 << v0, (1 << v1) | (1 << v2) | GX_BLEND_PLANEMASK_BG3, v3, 16 - v3);
            }
        }
        break;
    case 3:
        if (param0->unk_02 >= 8) {
            param0->unk_00 = 0;
            G2S_BlendNone();
        } else {
            param0->unk_02++;
            {
                s32 v4;

                v4 = (param0->unk_02 * 16) / 8;
                G2S_SetBlendAlpha(1 << param0->unk_04, GX_BLEND_PLANEMASK_BG3, v4, 16 - v4);
            }
        }
        break;
    }
}

static void ov115_022653CC(UnkStruct_ov115_022653CC *param0)
{
    param0->unk_07++;

    if (param0->unk_07 >= 10) {
        param0->unk_00 = 1;
        param0->unk_04 = (param0->unk_04 + 1) % 3;
        param0->unk_07 = 0;
    }
}

static void ov115_022653F4(UnkStruct_ov115_02261ADC *param0, s16 param1, u16 param2)
{
    int v0;
    s32 v1;

    for (v0 = 0; v0 < 3; v0++) {
        v1 = param1 - v0;

        if (v1 < 0) {
            v1 += 3;
        }

        v1 += 4;

        BGL_SetPriority(v1, (2 - v0));

        if (v0 == 0) {
            sub_02019E2C(param0->unk_00, v1, 0, 0, 32, 32, 2 + (param2 * 2));
        } else {
            sub_02019E2C(param0->unk_00, v1, 0, 0, 32, 32, 1 + (param2 * 2));
        }

        sub_02019448(param0->unk_00, v1);
    }
}

static void ov115_02265478(UnkStruct_ov115_02265788 *param0, UnkStruct_ov115_02261ADC *param1, NARC *param2, u32 param3)
{
    param0->unk_9C = param3;

    {
        BOOL v0;

        param0->unk_00[0] = SpriteResourceCollection_AddTilesFrom(param1->unk_1AC[0], param2, 10, 0, 140, NNS_G2D_VRAM_TYPE_2DMAIN, param3);
        param0->unk_00[1] = SpriteResourceCollection_AddPaletteFrom(param1->unk_1AC[1], param2, 11, 0, 140, NNS_G2D_VRAM_TYPE_2DMAIN, 1, param3);
        param0->unk_00[2] = SpriteResourceCollection_AddFrom(param1->unk_1AC[2], param2, 9, 0, 140, 2, param3);
        param0->unk_00[3] = SpriteResourceCollection_AddFrom(param1->unk_1AC[3], param2, 8, 0, 140, 3, param3);

        v0 = sub_0200A450(param0->unk_00[0]);
        GF_ASSERT(v0);
        v0 = sub_0200A640(param0->unk_00[1]);
        GF_ASSERT(v0);

        SpriteResource_ReleaseData(param0->unk_00[0]);
        SpriteResource_ReleaseData(param0->unk_00[1]);
        sub_020093B4(&param0->unk_10, 140, 140, 140, 140, 0xffffffff, 0xffffffff, 0, 0, param1->unk_1AC[0], param1->unk_1AC[1], param1->unk_1AC[2], param1->unk_1AC[3], NULL, NULL);
    }

    {
        CellActorInitParams v1;

        v1.collection = param1->unk_1C;
        v1.resourceData = &param0->unk_10;
        v1.position.x = (-FX32_CONST(64));
        v1.position.y = (FX32_CONST(48));
        v1.priority = (0 + 1);
        v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        v1.heapID = param3;

        param0->unk_34 = CellActorCollection_Add(&v1);
        CellActor_SetDrawFlag(param0->unk_34, 0);
    }

    {
        int v2;
        BOOL v3;
        UnkStruct_020127E8 v4;

        param0->unk_5C = Strbuf_Init(16, param3);
        BGL_AddFramelessWindow(param1->unk_00, &param0->unk_38, 3, 2, 0, 0);
        param0->unk_4C = sub_02012B20(&param0->unk_38, param3);

        v2 = sub_02012B58(param0->unk_4C, NNS_G2D_VRAM_TYPE_2DMAIN);
        v3 = sub_0201ED94(v2, 1, NNS_G2D_VRAM_TYPE_2DMAIN, &param0->unk_50);
        GF_ASSERT(v3 == 1);

        param0->unk_60 = SpriteResourceCollection_AddPalette(param1->unk_1AC[1], 14, 6, 0, 150, NNS_G2D_VRAM_TYPE_2DMAIN, 1, param3);
        v3 = sub_0200A640(param0->unk_60);
        GF_ASSERT(v3);

        SpriteResource_ReleaseData(param0->unk_60);

        v4.unk_00 = param1->unk_1F0;
        v4.unk_04 = &param0->unk_38;
        v4.unk_08 = param1->unk_1C;
        v4.unk_0C = sub_0200A72C(param0->unk_60, NULL);
        v4.unk_10 = param0->unk_34;
        v4.unk_14 = param0->unk_50.unk_04;
        v4.unk_18 = -7;
        v4.unk_1C = -5;
        v4.unk_20 = 0;
        v4.unk_24 = 0;
        v4.unk_28 = NNS_G2D_VRAM_TYPE_2DMAIN;
        v4.unk_2C = param3;

        param0->unk_48 = sub_02012B60(&v4, param0->unk_4C);

        sub_020129D0(param0->unk_48, 0);
        BGL_DeleteWindow(&param0->unk_38);
    }

    ov115_02261304(&param0->unk_64, (-FX32_CONST(64)), (FX32_CONST(32)), (FX32_CONST(36)), 8);
    ov115_02261304(&param0->unk_7C, (FX32_CONST(48)), (FX32_CONST(48)), (FX32_CONST(12)), 4);

    param0->unk_94 = 0;
    param0->unk_96 = 4;
}

static void ov115_02265688(UnkStruct_ov115_02265788 *param0, UnkStruct_ov115_02261ADC *param1)
{
    {
        sub_02012BD8(param0->unk_48);
        sub_0200A6DC(param0->unk_60);
        SpriteResourceCollection_Remove(param1->unk_1AC[1], param0->unk_60);
        sub_0201EE28(&param0->unk_50);
        sub_02012B48(param0->unk_4C);
        Strbuf_Free(param0->unk_5C);
    }

    CellActor_Delete(param0->unk_34);

    {
        sub_0200A4E4(param0->unk_00[0]);
        sub_0200A6DC(param0->unk_00[1]);
        SpriteResourceCollection_Remove(param1->unk_1AC[0], param0->unk_00[0]);
        SpriteResourceCollection_Remove(param1->unk_1AC[1], param0->unk_00[1]);
        SpriteResourceCollection_Remove(param1->unk_1AC[2], param0->unk_00[2]);
        SpriteResourceCollection_Remove(param1->unk_1AC[3], param0->unk_00[3]);
    }
}

static void ov115_02265700(UnkStruct_ov115_02265788 *param0, UnkStruct_ov115_02261ADC *param1, u32 param2)
{
    {
        Strbuf_FormatInt(param0->unk_5C, param2, 2, 2, 1);
        BGL_AddFramelessWindow(param1->unk_00, &param0->unk_38, 3, 2, 0, 0);
        Text_AddPrinterWithParamsAndColor(&param0->unk_38, FONT_SYSTEM, param0->unk_5C, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
        sub_02012BE0(param0->unk_48, param0->unk_4C, &param0->unk_38, param0->unk_9C);
        BGL_DeleteWindow(&param0->unk_38);
    }

    sub_020129D0(param0->unk_48, 1);
    CellActor_SetDrawFlag(param0->unk_34, 1);

    param0->unk_98 = 1;
    param0->unk_9A = 0;
}

static void ov115_02265788(UnkStruct_ov115_02265788 *param0)
{
    if (param0->unk_98 != 3) {
        if (param0->unk_98 == 2) {
            param0->unk_9A = 12;
        }

        param0->unk_98 = 3;
    }
}

static void ov115_022657A8(UnkStruct_ov115_02265788 *param0, UnkStruct_ov115_02261ADC *param1, u32 param2)
{
    if (param0->unk_98 != 3) {
        {
            Strbuf_FormatInt(param0->unk_5C, param2, 2, 2, 1);
            BGL_AddFramelessWindow(param1->unk_00, &param0->unk_38, 3, 2, 0, 0);
            Text_AddPrinterWithParamsAndColor(&param0->unk_38, FONT_SYSTEM, param0->unk_5C, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
            sub_02012BE0(param0->unk_48, param0->unk_4C, &param0->unk_38, param0->unk_9C);
            BGL_DeleteWindow(&param0->unk_38);
        }

        param0->unk_96 = 0;
    }
}

static void ov115_02265820(UnkStruct_ov115_02265788 *param0)
{
    switch (param0->unk_98) {
    case 0:
        break;
    case 1:
        if (param0->unk_94 < 8) {
            param0->unk_94++;
        } else {
            param0->unk_98 = 2;
        }
        break;
    case 2:
        break;
    case 3:
        if (param0->unk_9A > 0) {
            param0->unk_9A--;
            break;
        }

        if (param0->unk_94 > 0) {
            param0->unk_94--;
        } else {
            param0->unk_98 = 0;
            sub_020129D0(param0->unk_48, 0);
            CellActor_SetDrawFlag(param0->unk_34, 0);
        }
        break;
    }

    if (param0->unk_96 < 4) {
        param0->unk_96++;
        param0->unk_7C.unk_10 = param0->unk_96;
        ov115_02261364(&param0->unk_7C);
    }

    {
        param0->unk_64.unk_10 = param0->unk_94;
        ov115_02261364(&param0->unk_64);
    }

    {
        VecFx32 v0;

        v0.x = param0->unk_64.unk_00;
        v0.y = param0->unk_7C.unk_00;

        CellActor_SetPosition(param0->unk_34, &v0);
        sub_02012938(param0->unk_48);
    }
}

static void ov115_022658E0(UnkStruct_ov115_022658E0 *param0)
{
    param0->unk_00 = 0;
    param0->unk_02 = 1;
    param0->unk_03 = 0;
    Sound_PlayEffect(1390);
}

static void ov115_022658F8(UnkStruct_ov115_022658E0 *param0, UnkStruct_ov115_02264FA0 *param1, UnkStruct_ov115_02263DF8 *param2)
{
    fx32 v0;
    u32 v1;

    if (param0->unk_02 == 0) {
        return;
    }

    switch (param0->unk_00) {
    case 0:
        param0->unk_03++;

        v0 = (param0->unk_03 * (FX32_CONST(25))) / 58;
        v0 += (FX32_CONST(1));

        ov115_022650F8(param1, v0);

        v1 = (param0->unk_03 * 150) / 58;
        v1 += 256;

        sub_02004FA8(7, v1);

        if (12 == param0->unk_03) {
            Sound_PlayEffect(1391);
        }

        if (param0->unk_03 >= 58) {
            param0->unk_00++;
        }
        break;
    case 1:
        sub_0200AAE0(4, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 1);
        param0->unk_00++;
        break;
    case 2:
        if (sub_0200AC1C(1) == 1) {
            ov115_022650C8(param1);
            ov115_022650F8(param1, (FX32_CONST(2)));
            ov115_0226425C(param2, 1);
            param0->unk_00++;
        }
        break;
    case 3:
        sub_0200AAE0(14, 0, 16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 1);
        param0->unk_00++;
        break;
    case 4:
        if (sub_0200AC1C(1) == 1) {
            param0->unk_00++;
        }
        break;
    case 5:
        param0->unk_02 = 0;
        param0->unk_00 = 0;
        break;
    }
}

static void ov115_02265A08(UnkStruct_ov115_022658E0 *param0)
{
    sub_02004FA8(7, 256);
}
