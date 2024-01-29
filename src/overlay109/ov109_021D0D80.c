#include <nitro.h>
#include <string.h>

#include "core_sys.h"

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/sys_task.h"
#include "struct_decls/struct_020203AC_decl.h"
#include "struct_decls/struct_party_decl.h"

#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02073838.h"
#include "struct_defs/struct_02073974.h"
#include "struct_defs/struct_02073B50.h"
#include "struct_defs/struct_02099F80.h"
#include "struct_defs/struct_0209BDF8.h"
#include "struct_defs/struct_0209C0F0.h"
#include "struct_defs/struct_0209C194.h"
#include "overlay005/struct_ov5_02201C58.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay072/struct_ov72_0223E2A8.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay104/struct_ov104_0223F9E0.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_02241308.h"
#include "overlay104/struct_ov104_0224133C.h"
#include "overlay109/struct_ov109_021D1048.h"
#include "overlay109/struct_ov109_021D17EC.h"
#include "overlay115/struct_ov115_0226527C.h"

#include "unk_02002B7C.h"
#include "unk_02002F38.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_020067E8.h"
#include "narc.h"
#include "unk_020093B4.h"
#include "message.h"
#include "unk_0200B358.h"
#include "unk_0200C6E4.h"
#include "unk_0200D9E8.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0201D670.h"
#include "unk_0201DBEC.h"
#include "unk_0201E3D8.h"
#include "gx_layers.h"
#include "unk_02020020.h"
#include "strbuf.h"
#include "unk_0202419C.h"
#include "trainer_info.h"
#include "unk_0202B604.h"
#include "unk_0202CD50.h"
#include "unk_020329E0.h"
#include "unk_02034198.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_02038ED4.h"
#include "unk_020393C8.h"
#include "unk_02073838.h"
#include "pokemon.h"
#include "party.h"
#include "unk_0207D3B8.h"
#include "unk_02092494.h"
#include "unk_0209BDF8.h"
#include "overlay109/ov109_021D0D80.h"

typedef struct {
    VecFx32 unk_00;
    VecFx32 unk_0C;
    VecFx32 unk_18;
    VecFx32 unk_24;
    VecFx32 unk_30;
    fx32 unk_3C;
    fx32 unk_40;
    fx32 unk_44;
    fx32 unk_48;
    UnkStruct_ov5_02201C58 unk_4C;
    UnkStruct_02073838 unk_54;
    UnkStruct_02073B50 unk_68;
} UnkStruct_ov109_021D2AE4;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    fx32 unk_1C;
    fx32 unk_20;
    UnkStruct_ov5_02201C58 unk_24;
    VecFx32 unk_2C;
    VecFx32 unk_38;
    VecFx32 unk_44;
    VecFx32 unk_50;
    UnkStruct_02073B50 unk_5C;
} UnkStruct_ov109_021D2D78;

typedef struct {
    int unk_00;
    UnkStruct_ov5_02201C58 unk_04;
    VecFx32 unk_0C;
    VecFx32 unk_18;
    UnkStruct_02073B50 unk_24;
    UnkStruct_ov109_021D2D78 * unk_78;
} UnkStruct_ov109_021D2EF4;

typedef struct {
    int unk_00;
    VecFx32 unk_04;
    UnkStruct_02073B50 unk_10;
    UnkStruct_ov109_021D2D78 * unk_64;
} UnkStruct_ov109_021D2FA4;

typedef struct {
    UnkStruct_02073838 unk_00;
    UnkStruct_02073838 unk_14;
    UnkStruct_02073838 unk_28[5];
    UnkStruct_02073974 unk_8C[5];
    UnkStruct_ov109_021D2D78 unk_140[5];
    UnkStruct_ov109_021D2EF4 unk_4B0[5];
    UnkStruct_ov109_021D2FA4 unk_71C[5];
} UnkStruct_ov109_021D1334;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    fx32 unk_0C;
    UnkStruct_ov109_021D2D78 * unk_10;
    UnkStruct_ov109_021D0F70 * unk_14;
} UnkStruct_ov109_021D2FE0;

typedef struct {
    int unk_00;
    MessageLoader * unk_04;
    UnkStruct_0200B358 * unk_08;
    Window unk_0C[1];
    Window unk_1C[5];
    void * unk_6C;
} UnkStruct_ov109_021D24F8;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
} UnkStruct_ov109_021D122C;

typedef struct {
    fx32 unk_00;
    u32 unk_04;
    VecFx32 unk_08;
    UnkStruct_ov115_0226527C unk_14;
    UnkStruct_020203AC * unk_1C;
} UnkStruct_ov109_021D28C4;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    UnkStruct_ov72_0223E2A8 unk_10;
} UnkStruct_ov109_021D294C;

typedef struct {
    UnkStruct_ov109_021D0F70 * unk_00;
    int unk_04;
    u32 unk_08;
} UnkStruct_ov109_021D3948;

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_ov109_021D59AC;

typedef struct {
    int unk_00;
    const UnkStruct_ov109_021D59AC * unk_04;
} UnkStruct_ov109_021D5C14;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    fx32 unk_10;
    fx32 unk_14;
    fx32 unk_18;
    UnkStruct_ov109_021D2D78 * unk_1C;
} UnkStruct_ov109_021D3110;

typedef struct {
    UnkStruct_ov109_021D3110 unk_00[5];
} UnkStruct_ov109_021D31A8;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    fx32 unk_0C;
    UnkStruct_ov109_021D2D78 * unk_10;
} UnkStruct_ov109_021D3268;

typedef struct {
    UnkStruct_ov109_021D3268 unk_00[5];
} UnkStruct_ov109_021D32DC;

typedef struct {
    int unk_00;
    int unk_04;
    fx32 unk_08;
    fx32 unk_0C;
    fx32 unk_10;
    UnkStruct_ov109_021D2D78 * unk_14;
} UnkStruct_ov109_021D3370;

typedef struct {
    UnkStruct_ov109_021D3370 unk_00[5];
} UnkStruct_ov109_021D3414;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    fx32 unk_10;
} UnkStruct_ov109_021D34A8;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    int unk_04;
} UnkStruct_ov109_021D3700;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    UnkStruct_ov109_021D2D78 * unk_0C;
} UnkStruct_ov109_021D3818;

typedef struct {
    UnkStruct_ov109_021D3818 unk_00[5];
} UnkStruct_ov109_021D3884;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18[5];
    UnkStruct_0209C0F0 unk_2C;
    UnkStruct_ov109_021D17EC unk_34;
    UnkStruct_ov109_021D1048 unk_44[5];
    TrainerInfo * unk_58[5];
    Strbuf* unk_6C[5];
} UnkStruct_ov109_021D0F70_sub1;

typedef struct UnkStruct_ov109_021D0F70_t {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    u32 unk_20;
    Party * unk_24;
    UnkStruct_ov109_021D2D78 * unk_28;
    UnkStruct_ov109_021D0F70_sub1 unk_2C;
    u8 unk_AC[32];
    UnkStruct_0209C194 * unk_CC;
    UnkStruct_0209BDF8 * unk_D0;
    UnkStruct_ov109_021D2AE4 unk_D4;
    UnkStruct_ov109_021D1334 unk_190;
    UnkStruct_ov109_021D31A8 unk_AB4;
    UnkStruct_ov109_021D32DC unk_B54;
    UnkStruct_ov109_021D3414 unk_BB8;
    UnkStruct_ov109_021D34A8 unk_C30;
    UnkStruct_ov109_021D3700 unk_C44;
    UnkStruct_ov109_021D3884 unk_C4C;
    UnkStruct_ov109_021D24F8 unk_C9C;
    UnkStruct_ov109_021D28C4 unk_D0C;
    UnkStruct_ov109_021D294C unk_D2C;
    NARC * unk_D80;
    BGL * unk_D84;
    NNSG2dScreenData * unk_D88;
    NNSG2dCharacterData * unk_D8C;
    NNSG2dPaletteData * unk_D90;
    CellTransferStateData * unk_D94;
    AnimationResourceCollection * unk_D98;
    PaletteSys * unk_D9C;
    GXRgb unk_DA0[8];
    SysTask * unk_DB0;
    SysTask * unk_DB4;
    SysTask * unk_DB8;
    SysTask * unk_DBC;
    SysTask * unk_DC0;
    SysTask * unk_DC4;
    void * unk_DC8;
} UnkStruct_ov109_021D0F70;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    UnkStruct_ov109_021D0F70 * unk_10;
    CellActorData * unk_14;
} UnkStruct_ov109_021D3600;

static void ov109_021D0F70(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D1C00(void * param0);
static void ov109_021D1C28(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D1C68(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D1C90(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D1CF0(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D1D10(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D1DC8(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D1E1C(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D1EC8(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D2004(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D2204(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D228C(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D2298(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D22A4(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D22B0(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D2308(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D2344(UnkStruct_ov109_021D0F70 * param0, u32 param1);
static void ov109_021D2368(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D2408(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D24C0(UnkStruct_ov109_021D0F70 * param0);
static CellActorData * ov109_021D24E0(UnkStruct_ov109_021D0F70 * param0, const UnkStruct_ov104_0223F9E0 * param1);
static void ov109_021D24F8(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D25E8(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D2634(UnkStruct_ov109_021D0F70 * param0, u32 param1);
static void ov109_021D268C(UnkStruct_ov109_021D0F70 * param0, u32 param1, const TrainerInfo * param2);
static void ov109_021D2714(UnkStruct_ov109_021D0F70 * param0, u32 param1, u32 param2);
static void ov109_021D2788(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D27AC(UnkStruct_ov109_021D0F70 * param0, int param1);
static void ov109_021D27F0(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D2820(UnkStruct_ov109_021D0F70 * param0, Strbuf *param1, int param2, u32 param3);
static void ov109_021D2874(UnkStruct_ov109_021D0F70 * param0, Strbuf *param1, int param2, int param3);
static void ov109_021D28A0(UnkStruct_ov109_021D0F70 * param0, int param1);
static void ov109_021D28C4(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D293C(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D294C(UnkStruct_ov109_021D0F70 * param0);
static BOOL ov109_021D29AC(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D29CC(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D2A58(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D2A68(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D2AC8(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D2AE4(UnkStruct_ov109_021D2AE4 * param0, fx32 param1);
static void ov109_021D2AF0(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D2AF8(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D2B00(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D2BD4(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D2C0C(UnkStruct_ov109_021D0F70 * param0, UnkStruct_ov109_021D2D78 * param1);
static void ov109_021D2C38(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D2CCC(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D2D44(UnkStruct_ov109_021D0F70 * param0, fx32 param1);
static void ov109_021D2D78(UnkStruct_ov109_021D2D78 * param0, const VecFx32 * param1);
static UnkStruct_ov109_021D2D78 * ov109_021D2DF8(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D2EC0(UnkStruct_ov109_021D0F70 * param0, UnkStruct_ov109_021D2D78 * param1);
static void ov109_021D2EF4(UnkStruct_ov109_021D0F70 * param0, UnkStruct_ov109_021D2EF4 * param1);
static void ov109_021D2F68(UnkStruct_ov109_021D0F70 * param0, UnkStruct_ov109_021D2D78 * param1);
static void ov109_021D2FA4(UnkStruct_ov109_021D0F70 * param0, UnkStruct_ov109_021D2FA4 * param1);
static SysTask * ov109_021D2FE0(UnkStruct_ov109_021D0F70 * param0, int param1, int param2, int param3, int param4, int param5, UnkStruct_ov109_021D2D78 * param6);
static void ov109_021D302C(SysTask * param0, void * param1);
static void ov109_021D31A8(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D31E0(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D3218(UnkStruct_ov109_021D0F70 * param0);
static BOOL ov109_021D3248(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D32DC(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D3318(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D3328(UnkStruct_ov109_021D0F70 * param0, UnkStruct_ov109_021D2D78 * param1);
static void ov109_021D3414(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D3450(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D3460(UnkStruct_ov109_021D0F70 * param0, UnkStruct_ov109_021D2D78 * param1);
static void ov109_021D3584(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D35BC(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D35CC(UnkStruct_ov109_021D0F70 * param0);
static BOOL ov109_021D35E8(UnkStruct_ov109_021D0F70 * param0);
static BOOL ov109_021D35F4(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D379C(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D37E0(UnkStruct_ov109_021D0F70 * param0);
static BOOL ov109_021D37F0(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D37FC(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D3884(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D38BC(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D38CC(UnkStruct_ov109_021D0F70 * param0, UnkStruct_ov109_021D2D78 * param1);
static void ov109_021D38F8(UnkStruct_ov109_021D0F70 * param0);
static SysTask * ov109_021D3684(UnkStruct_ov109_021D0F70 * param0);
static void ov109_021D3990(UnkStruct_ov109_021D0F70 * param0, int param1);
static void ov109_021D39D4(fx32 * param0, fx32 param1);
static void ov109_021D39FC(UnkStruct_ov109_021D0F70 * param0, fx32 param1);
static BOOL ov109_021D3A14(UnkStruct_ov109_021D0F70 * param0);
static void * ov109_021D3A2C(UnkStruct_ov109_021D0F70 * param0, u32 param1, BOOL param2);
static void * ov109_021D3A94(UnkStruct_ov109_021D0F70 * param0, u32 param1);
static void * ov109_021D3AB4(UnkStruct_ov109_021D0F70 * param0);
static BOOL ov109_021D3AB8(UnkStruct_ov109_021D0F70 * param0, u16 param1);
static BOOL ov109_021D3ACC(UnkStruct_ov109_021D0F70 * param0);
static int ov109_021D3B04(UnkStruct_ov109_021D0F70 * param0);
static BOOL ov109_021D3B54(UnkStruct_ov109_021D0F70 * param0, int param1);
static void ov109_021D3B70(UnkStruct_ov109_021D0F70 * param0, int param1);
static int ov109_021D3BC4(UnkStruct_ov109_021D0F70 * param0);
static BOOL ov109_021D3C08(UnkStruct_ov109_021D0F70 * param0, fx32 param1, int param2);
static BOOL ov109_021D3C94(Party * param0);
static BOOL ov109_021D3CD8(UnkStruct_ov109_021D0F70 * param0);
static int ov109_021D3D1C(UnkStruct_ov109_021D0F70 * param0);
static BOOL ov109_021D3D3C(UnkStruct_ov109_021D0F70 * param0);

static const UnkStruct_ov61_0222C884 Unk_ov109_021D59B8[1];
static const UnkStruct_ov61_0222C884 * const Unk_ov109_021D5A68[5 + 1];
static const u16 Unk_ov109_021D5C44[5 + 1][5];
static const u16 Unk_ov109_021D5C80[5 + 1][5];
static const UnkStruct_ov109_021D5C14 Unk_ov109_021D5C14[5 + 1];
static const u32 Unk_ov109_021D5BE4[5 + 1][2];
static const u32 Unk_ov109_021D5A80[5 + 1];
static const fx32 Unk_ov109_021D5A98[5 + 1];
static int(*const Unk_ov109_021D5CBC[54])(UnkStruct_ov109_021D0F70 *);
static int(*const Unk_ov109_021D59D8[3])(UnkStruct_ov109_021D2FE0 *);

int ov109_021D0D80 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov109_021D0F70 * v0;
    UnkStruct_0209C194 * v1 = sub_02006840(param0);

    sub_020388F4(1, 1);
    sub_02017798(NULL, NULL);
    sub_020177A4();
    sub_02017DE0(2);
    Heap_Create(3, 95, 0x80000);

    v0 = sub_0200681C(param0, sizeof(UnkStruct_ov109_021D0F70), 95);
    memset(v0, 0, sizeof(UnkStruct_ov109_021D0F70));

    v1->unk_38 = v0;
    v0->unk_CC = v1;
    v0->unk_D0 = v1->unk_34;
    v0->unk_24 = Party_GetFromSavedata(v0->unk_CC->unk_14.unk_08);
    v0->unk_D80 = NARC_ctor(NARC_INDEX_DATA__GURU2, 95);

    sub_0201DBEC(8, 95);
    sub_0201E3D8();
    sub_0201E450(4);
    ov109_021D1C28(v0);
    sub_02017798(ov109_021D1C00, v0);
    ov109_021D29CC(v0);
    ov109_021D2AF0(v0);

    {
        int v2 = 0, v3 = 0;
        int v4 = sub_0203608C();
        UnkStruct_ov109_021D2AE4 * v5 = &v0->unk_D4;

        do {
            if ((v0->unk_CC->unk_0C & (1 << v2))) {
                if (v2 == v4) {
                    break;
                }

                v3++;
            }

            v2++;
        } while (v2 < 5);

        v5->unk_40 = (FX32_ONE * (Unk_ov109_021D5C44[v0->unk_CC->unk_08][v3]));
    }

    v0->unk_1C = sub_020041FC();

    ov109_021D31A8(v0);
    ov109_021D32DC(v0);
    ov109_021D3414(v0);
    ov109_021D3584(v0);
    ov109_021D379C(v0);
    ov109_021D3884(v0);
    sub_0200F174(0, 1, 1, 0x0, 8, 1, 95);

    return 1;
}

int ov109_021D0EB4 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov109_021D0F70 * v0 = sub_0200682C(param0);

    if (sub_0201E530() != 1) {
        GF_ASSERT(0);
    }

    ov109_021D31E0(v0);
    ov109_021D3318(v0);
    ov109_021D3450(v0);
    ov109_021D35BC(v0);
    ov109_021D37E0(v0);
    ov109_021D38BC(v0);
    ov109_021D2A58(v0);
    ov109_021D2AF8(v0);
    ov109_021D1C68(v0);

    sub_02017798(NULL, NULL);
    sub_0201DC3C();
    NARC_dtor(v0->unk_D80);
    sub_02006830(param0);
    Heap_Destroy(95);
    sub_02017DF0(2);

    return 1;
}

int ov109_021D0F2C (UnkStruct_020067E8 * param0, int * param1)
{
    int v0;
    UnkStruct_ov109_021D0F70 * v1 = sub_0200682C(param0);

    ov109_021D294C(v1);

    do {
        v0 = Unk_ov109_021D5CBC[v1->unk_00](v1);
    } while (v0 == 1);

    if (v0 == 2) {
        return 1;
    }

    ov109_021D2A68(v1);
    ov109_021D2C38(v1);
    ov109_021D1C90(v1);
    ov109_021D0F70(v1);

    return 0;
}

static void ov109_021D0F70 (UnkStruct_ov109_021D0F70 * param0)
{
    param0->unk_2C.unk_08 = 0;
    param0->unk_2C.unk_10 = 0;
}

static int ov109_021D0F78 (UnkStruct_ov109_021D0F70 * param0)
{
    ov109_021D2634(param0, 0);
    param0->unk_00 = 1;
    return 0;
}

static int ov109_021D0F8C (UnkStruct_ov109_021D0F70 * param0)
{
    if (ScreenWipe_Done()) {
        if (sub_0203608C() == 0) {
            param0->unk_00 = 2;
        } else {
            param0->unk_00 = 8;
        }

        return 1;
    }

    return 0;
}

static int ov109_021D0FB0 (UnkStruct_ov109_021D0F70 * param0)
{
    if (ov109_021D3ACC(param0)) {
        param0->unk_00 = 3;
        return 1;
    }

    return 0;
}

static int ov109_021D0FC8 (UnkStruct_ov109_021D0F70 * param0)
{
    u16 v0 = (1 << 0);

    if (sub_0209BEBC(param0->unk_D0, 8, &v0, 2) == 1) {
        param0->unk_00 = 4;
        return 1;
    }

    return 0;
}

static int ov109_021D0FF8 (UnkStruct_ov109_021D0F70 * param0)
{
    int v0 = ov109_021D3B04(param0) + 1;

    if (v0 != sub_02035E18()) {
        return 0;
    }

    param0->unk_00 = 5;
    return 1;
}

static int ov109_021D1018 (UnkStruct_ov109_021D0F70 * param0)
{
    int v0;

    param0->unk_2C.unk_04 = ov109_021D3B04(param0) + 1;

    v0 = sub_0209BEBC(param0->unk_D0, 13, &param0->unk_2C.unk_04, 4);

    if (v0 == 1) {
        param0->unk_14 = 0;
        param0->unk_00 = 6;
    }

    return 0;
}

static int ov109_021D1048 (UnkStruct_ov109_021D0F70 * param0)
{
    int v0;
    UnkStruct_ov109_021D1048 v1;

    if (param0->unk_14 == 0) {
        v1.unk_02 = 0;
        v1.unk_00 = 0;

        v0 = sub_0209BEBC(param0->unk_D0, 12, &v1, sizeof(UnkStruct_ov109_021D1048));

        if (v0 == 1) {
            param0->unk_14++;
        }

        return 0;
    }

    {
        int v2 = 1, v3 = 1;
        u32 v4 = param0->unk_D0->unk_42;

        do {
            if ((v4 & (1 << v2))) {
                if (v3 >= param0->unk_14) {
                    v1.unk_02 = v2;
                    v1.unk_00 = param0->unk_14;

                    v0 = sub_0209BEBC(param0->unk_D0, 12, &v1, sizeof(UnkStruct_ov109_021D1048));

                    if (v0 == 1) {
                        param0->unk_14++;
                    }
                    break;
                }

                v3++;
            }

            v2++;
        } while (v2 < 5);
    }

    if (param0->unk_14 >= param0->unk_2C.unk_04) {
        param0->unk_00 = 7;
    }

    return 0;
}

static int ov109_021D10D8 (UnkStruct_ov109_021D0F70 * param0)
{
    u16 v0 = (1 << 3);

    if (sub_0209BEBC(param0->unk_D0, 8, &v0, 2) == 1) {
        param0->unk_00 = 10;
    }

    return 0;
}

static int ov109_021D1100 (UnkStruct_ov109_021D0F70 * param0)
{
    int v0;

    v0 = sub_0209BEBC(param0->unk_D0, 9, NULL, 0);

    if (v0 == 1) {
        param0->unk_10 = 0;
        param0->unk_00 = 9;
        return 0;
    }

    return 0;
}

static int ov109_021D1124 (UnkStruct_ov109_021D0F70 * param0)
{
    if (ov109_021D3AB8(param0, (1 << 3)) == 1) {
        GF_ASSERT(param0->unk_2C.unk_04 >= 2);
        GF_ASSERT(param0->unk_2C.unk_00 != 0);
        param0->unk_00 = 10;
    }

    return 0;
}

static int ov109_021D1150 (UnkStruct_ov109_021D0F70 * param0)
{
    sub_020364F0(202);
    param0->unk_00 = 11;
    return 0;
}

static int ov109_021D1164 (UnkStruct_ov109_021D0F70 * param0)
{
    if (sub_02036540(202)) {
        param0->unk_00 = 12;
    }

    return 0;
}

static int ov109_021D117C (UnkStruct_ov109_021D0F70 * param0)
{
    if (sub_0209BEBC(param0->unk_D0, 14, &param0->unk_CC->unk_04, 4)) {
        param0->unk_00 = 13;
    }

    return 0;
}

static int ov109_021D11A0 (UnkStruct_ov109_021D0F70 * param0)
{
    int v0;
    u32 v1;

    v1 = (u32)param0->unk_24;
    v0 = sub_0203597C(131, (void *)v1, (236 * 6 + 4 * 2));

    if (v0) {
        param0->unk_00 = 14;
    }

    return 0;
}

static int ov109_021D11BC (UnkStruct_ov109_021D0F70 * param0)
{
    if (ov109_021D3BC4(param0) == param0->unk_2C.unk_04) {
        if (ov109_021D3CD8(param0) == 1) {
            sub_0209BEBC(param0->unk_D0, 16, NULL, 0);
            param0->unk_00 = 46;
        } else {
            sub_0209BEBC(param0->unk_D0, 17, NULL, 0);
            param0->unk_00 = 15;
        }
    }

    return 0;
}

static int ov109_021D1204 (UnkStruct_ov109_021D0F70 * param0)
{
    if (ov109_021D3D3C(param0) == 1) {
        param0->unk_00 = 46;
    } else if (ov109_021D3D1C(param0) == param0->unk_2C.unk_04) {
        param0->unk_00 = 16;
    }

    return 0;
}

static int ov109_021D122C (UnkStruct_ov109_021D0F70 * param0)
{
    int v0;
    UnkStruct_ov109_021D122C * v1 = ov109_021D3A94(param0, sizeof(UnkStruct_ov109_021D122C));

    v1->unk_10 = param0->unk_2C.unk_00;
    v1->unk_14 = param0->unk_2C.unk_04;
    v1->unk_04 = Unk_ov109_021D5C44[v1->unk_14][param0->unk_2C.unk_00];

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (ov109_021D3B54(param0, v0)) {
            param0->unk_2C.unk_58[v0] = sub_02032EE8(v0);
            TrainerInfo_NameStrbuf(
                param0->unk_2C.unk_58[v0], param0->unk_2C.unk_6C[v0]);
        }
    }

    param0->unk_D4.unk_40 = (FX32_ONE * (v1->unk_04));
    param0->unk_00 = 17;

    sub_02004550(15, 1210, 1);
    ov109_021D2788(param0);

    return 1;
}

static int ov109_021D12B0 (UnkStruct_ov109_021D0F70 * param0)
{
    param0->unk_0C--;

    if (param0->unk_0C > 0) {
        return 0;
    }

    param0->unk_0C = 15;

    {
        UnkStruct_ov109_021D122C * v0 = ov109_021D3AB4(param0);
        u16 v1 = Unk_ov109_021D5C80[v0->unk_14][v0->unk_10];
        int v2 = param0->unk_2C.unk_44[v0->unk_10].unk_02;

        ov109_021D2FE0(param0, v2, v0->unk_10, v0->unk_00, v1, v0->unk_04, &param0->unk_190.unk_140[v0->unk_10]);

        v0->unk_10++;
        v0->unk_10 %= v0->unk_14;
        v0->unk_00++;

        if (v0->unk_00 == v0->unk_14) {
            param0->unk_0C = 0;
            param0->unk_00 = 18;
        }
    }

    return 0;
}

static int ov109_021D1334 (UnkStruct_ov109_021D0F70 * param0)
{
    UnkStruct_ov109_021D1334 * v0 = &param0->unk_190;
    int v1 = 0, v2 = 0, v3 = param0->unk_2C.unk_04;

    do {
        if (v0->unk_140[v1].unk_08 == 1) {
            v2++;
        }

        v1++;
    } while (v1 < v3);

    if (v2 == v3) {
        param0->unk_00 = 19;
        return 1;
    }

    return 0;
}

static int ov109_021D1368 (UnkStruct_ov109_021D0F70 * param0)
{
    param0->unk_0C++;

    if (param0->unk_0C > 30) {
        param0->unk_0C = 0;

        if (sub_0203608C() == 0) {
            param0->unk_00 = 20;
        } else {
            param0->unk_00 = 21;
        }
    }

    return 0;
}

static int ov109_021D1390 (UnkStruct_ov109_021D0F70 * param0)
{
    u16 v0 = (1 << 2);

    if (sub_0209BEBC(param0->unk_D0, 8, &v0, 2) == 1) {
        param0->unk_00 = 22;
    }

    return 0;
}

static int ov109_021D13BC (UnkStruct_ov109_021D0F70 * param0)
{
    if (ov109_021D3AB8(param0, (1 << 2)) == 1) {
        param0->unk_00 = 22;

        return 1;
    }

    return 0;
}

static int ov109_021D13D8 (UnkStruct_ov109_021D0F70 * param0)
{
    sub_020364F0(202);
    param0->unk_00 = 23;
    return 0;
}

static int ov109_021D13EC (UnkStruct_ov109_021D0F70 * param0)
{
    if (sub_02036540(202)) {
        param0->unk_00 = 24;
    }

    return 0;
}

static int ov109_021D1404 (UnkStruct_ov109_021D0F70 * param0)
{
    ov109_021D3990(param0, 1);
    ov109_021D3684(param0);
    param0->unk_00 = 25;

    return 0;
}

static int ov109_021D141C (UnkStruct_ov109_021D0F70 * param0)
{
    int v0;

    param0->unk_0C++;

    if (param0->unk_0C < (30 * 3 + 5)) {
        return 0;
    }

    for (v0 = 0; v0 < param0->unk_2C.unk_04; v0++) {
        ov109_021D28A0(param0, v0);
    }

    param0->unk_0C = 0;
    param0->unk_00 = 26;

    return 0;
}

static int ov109_021D1450 (UnkStruct_ov109_021D0F70 * param0)
{
    if (sub_0203608C() == 0) {
        param0->unk_00 = 27;
    } else {
        param0->unk_00 = 27;
    }

    return 0;
}

static int ov109_021D1460 (UnkStruct_ov109_021D0F70 * param0)
{
    {
        BOOL v0 = ov109_021D3A14(param0);

        if ((v0 == 1) && (ov109_021D35F4(param0) == 0)) {
            param0->unk_00 = 29;
            return 1;
        }
    }

    if (param0->unk_2C.unk_08) {
        if (ov109_021D35F4(param0) == 0) {
            ov109_021D35CC(param0);
        }
    }

    if (ov109_021D37F0(param0) == 0) {
        if (ov109_021D29AC(param0) == 1) {
            if (ov109_021D35F4(param0) == 0) {
                ov109_021D35CC(param0);
                param0->unk_2C.unk_0C = 1;
            }

            ov109_021D37FC(param0);
        }
    }

    if (param0->unk_2C.unk_0C) {
        if (sub_0209BEBC(param0->unk_CC->unk_34, 10, &param0->unk_2C.unk_0C, 1) == 1) {
            param0->unk_2C.unk_0C = 0;
        }
    }

    {
        fx32 v1;
        UnkStruct_ov109_021D2AE4 * v2 = &param0->unk_D4;

        if (param0->unk_08 < ((30 * 20) / 2)) {
            v2->unk_48 += (((FX32_ONE * 14 / ((30 * 20) / 2))));

            if (v2->unk_48 >= ((FX32_ONE * 14))) {
                v2->unk_48 = ((FX32_ONE * 14));
            }
        } else {
            v2->unk_48 -= (((FX32_ONE * 14 / ((30 * 20) / 2))));

            if (v2->unk_48 < ((FX32_ONE * 4))) {
                v2->unk_48 = ((FX32_ONE * 4));
            }
        }

        v1 = v2->unk_48;

        if (ov109_021D35E8(param0) == 1) {
            ov109_021D2AE4(&param0->unk_D4, (v1) << 1);
        } else {
            ov109_021D39FC(param0, v1);
        }
    }

    {
        UnkStruct_0209C0F0 v3;

        v3.unk_02 = param0->unk_08;
        v3.unk_04 = ((param0->unk_D4.unk_48) / FX32_ONE);
        v3.unk_06 = ((param0->unk_D4.unk_3C) / FX32_ONE);

        sub_0209BEBC(param0->unk_D0, 11, &v3, sizeof(UnkStruct_0209C0F0));
    }

    return 0;
}

static int ov109_021D1570 (UnkStruct_ov109_021D0F70 * param0)
{
    if (param0->unk_2C.unk_10 == 1) {
        param0->unk_D4.unk_3C = (FX32_ONE * (param0->unk_2C.unk_2C.unk_06));
        param0->unk_D4.unk_48 = (FX32_ONE * (param0->unk_2C.unk_2C.unk_04));
        param0->unk_08 = param0->unk_2C.unk_2C.unk_02;
    }

    {
        BOOL v0 = ov109_021D3A14(param0);

        if ((v0 == 1) && (ov109_021D35F4(param0) == 0)) {
            param0->unk_00 = 29;
            return 1;
        }
    }

    if (param0->unk_2C.unk_08) {
        if (ov109_021D35F4(param0) == 0) {
            ov109_021D35CC(param0);
        }
    }

    if (ov109_021D37F0(param0) == 0) {
        if (ov109_021D29AC(param0) == 1) {
            if (ov109_021D35F4(param0) == 0) {
                ov109_021D35CC(param0);
                param0->unk_2C.unk_0C = 1;
            }

            ov109_021D37FC(param0);
        }
    }

    if (param0->unk_2C.unk_0C) {
        if (sub_0209BEBC(param0->unk_CC->unk_34, 10, &param0->unk_2C.unk_0C, 1) == 1) {
            param0->unk_2C.unk_0C = 0;
        }
    }

    if (ov109_021D35E8(param0) == 1) {
        ov109_021D2AE4(&param0->unk_D4, (param0->unk_D4.unk_48) << 1);
    } else {
        ov109_021D39FC(param0, param0->unk_D4.unk_48);
    }

    return 0;
}

static int ov109_021D1648 (UnkStruct_ov109_021D0F70 * param0)
{
    ov109_021D3990(param0, 0);

    param0->unk_28 = ov109_021D2DF8(param0);

    if (param0->unk_28->unk_0C == sub_0203608C()) {
        param0->unk_00 = 30;
    } else {
        param0->unk_00 = 31;
    }

    Sound_PlayEffect(1521);
    return 1;
}

static int ov109_021D167C (UnkStruct_ov109_021D0F70 * param0)
{
    u32 v0;
    UnkStruct_ov109_021D2D78 * v1 = param0->unk_28;

    ov109_021D39FC(param0, ((FX32_ONE * 4)));
    param0->unk_28 = ov109_021D2DF8(param0);

    if (param0->unk_28->unk_0C != sub_0203608C()) {
        param0->unk_00 = 31;
    }

    return 0;
}

static int ov109_021D16A4 (UnkStruct_ov109_021D0F70 * param0)
{
    int v0, v1;
    fx32 v2, v3, v4, v5;
    UnkStruct_ov109_021D2D78 * v6 = param0->unk_28;

    v1 = param0->unk_2C.unk_00;
    v0 = param0->unk_2C.unk_04;
    v5 = ((FX32_ONE * 4));
    v2 = v6->unk_1C;
    v3 = (FX32_ONE * (Unk_ov109_021D5C80[v0][v1]));

    v4 = v3 - v2;

    if (v4 < 0) {
        v4 = (v3 + (FX32_ONE * 360)) - v2;
    }

    if (v4 <= ((FX32_ONE * 16))) {
        v5 >>= 1;
    }

    if (v4 < v5) {
        v5 = v4;
    }

    ov109_021D2AE4(&param0->unk_D4, v5);
    ov109_021D2D44(param0, v5);
    ov109_021D39D4(&v2, v5);

    if (((v2) / FX32_ONE) == ((v3) / FX32_ONE)) {
        param0->unk_00 = 32;
    }

    return 0;
}

static int ov109_021D1720 (UnkStruct_ov109_021D0F70 * param0)
{
    sub_020364F0(202);
    param0->unk_00 = 33;
    return 0;
}

static int ov109_021D1734 (UnkStruct_ov109_021D0F70 * param0)
{
    if (sub_02036540(202)) {
        if (sub_0203608C() == 0) {
            param0->unk_00 = 34;
        } else {
            param0->unk_00 = 35;
        }
    }

    return 0;
}

static int ov109_021D1758 (UnkStruct_ov109_021D0F70 * param0)
{
    int v0, v1;
    UnkStruct_ov109_021D2D78 * v2;
    UnkStruct_ov109_021D17EC v3;

    v3.unk_00 = ((param0->unk_D4.unk_3C) / FX32_ONE);

    for (v0 = 0, param0->unk_20 = 0; v0 < param0->unk_2C.unk_04; v0++) {
        v2 = &param0->unk_190.unk_140[v0];
        GF_ASSERT(v2->unk_00);
        v3.unk_04[v2->unk_10] = (u16)((v2->unk_1C) / FX32_ONE);

        if (ov109_021D3C08(param0, v2->unk_1C, param0->unk_2C.unk_04) == 1) {
            param0->unk_20 |= (1 << v2->unk_0C);
        }
    }

    v3.unk_02 = param0->unk_20;
    v1 = sub_0209BEBC(param0->unk_D0, 15, &v3, sizeof(UnkStruct_ov109_021D17EC));

    if (v1 == 1) {
        param0->unk_00 = 36;
    }

    return 0;
}

static int ov109_021D17EC (UnkStruct_ov109_021D0F70 * param0)
{
    if (param0->unk_2C.unk_14 == 1) {
        int v0;
        UnkStruct_ov109_021D2D78 * v1;
        UnkStruct_ov109_021D17EC * v2 = &param0->unk_2C.unk_34;

        param0->unk_D4.unk_3C = (FX32_ONE * (v2->unk_00));

        for (v0 = 0; v0 < param0->unk_2C.unk_04; v0++) {
            v1 = &param0->unk_190.unk_140[v0];
            GF_ASSERT(v1->unk_00);
            v1->unk_1C = (FX32_ONE * (v2->unk_04[v1->unk_10]));
        }

        param0->unk_20 = v2->unk_02;

        ov109_021D2A68(param0);
        ov109_021D2C38(param0);

        param0->unk_28 = ov109_021D2DF8(param0);
        param0->unk_00 = 36;
    }

    return 0;
}

static int ov109_021D1858 (UnkStruct_ov109_021D0F70 * param0)
{
    int v0, v1;
    int v2 = param0->unk_28->unk_10;

    for (v0 = 0; v0 < param0->unk_2C.unk_04; v0++) {
        v1 = param0->unk_190.unk_140[v2].unk_0C;
        ov109_021D2874(param0, param0->unk_2C.unk_6C[v1], v0, v1);
        v2++;
        v2 %= param0->unk_2C.unk_04;
    }

    param0->unk_0C = 0;
    param0->unk_00 = 37;

    return 0;
}

static int ov109_021D18A0 (UnkStruct_ov109_021D0F70 * param0)
{
    param0->unk_0C++;

    if (param0->unk_0C < (30 * 4)) {
        return 0;
    }

    param0->unk_0C = 0;

    {
        int v0;

        for (v0 = 0; v0 < param0->unk_2C.unk_04; v0++) {
            ov109_021D28A0(param0, v0);
        }
    }

    {
        int v1 = param0->unk_28->unk_0C;
        ov109_021D268C(param0, 2, param0->unk_2C.unk_58[v1]);
    }

    {
        sub_02006150(1158);
    }

    param0->unk_00 = 38;
    return 0;
}

static int ov109_021D18F4 (UnkStruct_ov109_021D0F70 * param0)
{
    if (param0->unk_0C < (30 * 4)) {
        param0->unk_0C++;
    } else if (sub_020061E4() == 0) {
        param0->unk_0C = 0;
        param0->unk_00 = 39;
    }

    return 0;
}

static int ov109_021D1918 (UnkStruct_ov109_021D0F70 * param0)
{
    ov109_021D38F8(param0);

    if ((param0->unk_20 & (1 << param0->unk_28->unk_0C)) == 0) {
        param0->unk_00 = 43;
        return 0;
    }

    {
        u32 v0;
        BOOL v1;

        v0 = Unk_ov109_021D5BE4[param0->unk_2C.unk_04][0];
        v0 += LCRNG_Next() % (Unk_ov109_021D5BE4[param0->unk_2C.unk_04][1] - v0 + 1);

        if (v0 < Unk_ov109_021D5BE4[param0->unk_2C.unk_04][0]) {
            v0 = Unk_ov109_021D5BE4[param0->unk_2C.unk_04][0];
        } else if (v0 > Unk_ov109_021D5BE4[param0->unk_2C.unk_04][1]) {
            v0 = Unk_ov109_021D5BE4[param0->unk_2C.unk_04][1];
        }

        ov109_021D2714(param0, 3, v0);

        v1 = sub_0207D570(sub_0207D990(param0->unk_CC->unk_14.unk_08), v0, 1, 95);
        sub_02006150(1158);

        if (v1 == 1) {
            param0->unk_00 = 40;
        } else {
            param0->unk_00 = 41;
        }
    }

    return 0;
}

static int ov109_021D19AC (UnkStruct_ov109_021D0F70 * param0)
{
    if (param0->unk_0C < (30 * 4)) {
        param0->unk_0C++;
    } else if (sub_020061E4() == 0) {
        param0->unk_0C = 0;
        param0->unk_00 = 43;
    }

    return 0;
}

static int ov109_021D19D0 (UnkStruct_ov109_021D0F70 * param0)
{
    if (param0->unk_0C < (30 * 4)) {
        param0->unk_0C++;
    } else if (sub_020061E4() == 0) {
        param0->unk_0C = 0;
        param0->unk_00 = 40;
        ov109_021D2634(param0, 4);
    }

    return 0;
}

static int ov109_021D19FC (UnkStruct_ov109_021D0F70 * param0)
{
    if (param0->unk_0C < (30 * 4)) {
        param0->unk_0C++;
    } else {
        param0->unk_0C = 0;
        param0->unk_00 = 43;
    }

    return 0;
}

static int ov109_021D1A14 (UnkStruct_ov109_021D0F70 * param0)
{
    void * v0;

    v0 = sub_0202C244(95, 17);

    sub_0202B758(param0->unk_CC->unk_14.unk_18, v0, 4);
    sub_0202CF28(param0->unk_CC->unk_14.unk_14, (((70 + 1)) + 48));
    sub_0202CFEC(param0->unk_CC->unk_14.unk_14, 45);
    ov109_021D2634(param0, 11);
    sub_020364F0(202);

    gCoreSys.unk_68 = 1;
    param0->unk_00 = 44;

    return 0;
}

static int ov109_021D1A6C (UnkStruct_ov109_021D0F70 * param0)
{
    if (sub_02036540(202)) {
        ov109_021D3B70(param0, param0->unk_28->unk_0C);
        sub_02038ED4(&param0->unk_04);
        param0->unk_DC8 = sub_0200E7FC(&param0->unk_C9C.unk_0C[0], (1 + 9));
        param0->unk_00 = 45;
    }

    return 0;
}

static int ov109_021D1AA8 (UnkStruct_ov109_021D0F70 * param0)
{
    int v0 = sub_02038EDC(
        param0->unk_CC->unk_14.unk_08, 2, &param0->unk_04);

    if (v0) {
        gCoreSys.unk_68 = 0;
        sub_0200EBA0(param0->unk_DC8);
        param0->unk_00 = 48;
    }

    return 0;
}

static int ov109_021D1ADC (UnkStruct_ov109_021D0F70 * param0)
{
    ov109_021D2634(param0, 12);
    param0->unk_00 = 47;
    return 0;
}

static int ov109_021D1AF0 (UnkStruct_ov109_021D0F70 * param0)
{
    param0->unk_0C++;

    if (param0->unk_0C >= (30 * 4)) {
        param0->unk_0C = 0;
        param0->unk_00 = 48;

        return 1;
    }

    return 0;
}

static int ov109_021D1B0C (UnkStruct_ov109_021D0F70 * param0)
{
    if (param0->unk_18 == 0) {
        sub_020364F0(202);
    }

    ov109_021D2634(param0, 10);
    param0->unk_00 = 49;

    return 0;
}

static int ov109_021D1B2C (UnkStruct_ov109_021D0F70 * param0)
{
    if (param0->unk_18 == 0) {
        if (sub_02036540(202)) {
            sub_020388F4(0, 0);
            sub_02037B58(1);
            sub_02036AC4();
            param0->unk_00 = 50;
        }
    } else {
        param0->unk_0C++;

        if (param0->unk_0C >= (30 * 4)) {
            param0->unk_0C = 0;

            if (param0->unk_D0->unk_3C == 0) {
                sub_020388F4(0, 0);
                sub_02037B58(1);
                sub_02036AC4();
            }

            param0->unk_00 = 50;
        }
    }

    return 0;
}

static int ov109_021D1B8C (UnkStruct_ov109_021D0F70 * param0)
{
    if (sub_02035E18() <= 1) {
        param0->unk_00 = 51;
        return 1;
    }

    return 0;
}

static int ov109_021D1BA4 (UnkStruct_ov109_021D0F70 * param0)
{
    sub_0200F174(2, 0, 0, 0x0, 8, 1, 95);

    if (param0->unk_1C != sub_020041FC()) {
        sub_02004550(4, param0->unk_1C, 1);
    }

    param0->unk_00 = 52;
    return 0;
}

static int ov109_021D1BE4 (UnkStruct_ov109_021D0F70 * param0)
{
    if (ScreenWipe_Done()) {
        param0->unk_00 = 53;
        return 1;
    }

    return 0;
}

static int ov109_021D1BFC (UnkStruct_ov109_021D0F70 * param0)
{
    return 2;
}

static int(*const Unk_ov109_021D5CBC[54])(UnkStruct_ov109_021D0F70 * g2m) = {
    ov109_021D0F78,
    ov109_021D0F8C,
    ov109_021D0FB0,
    ov109_021D0FC8,
    ov109_021D0FF8,
    ov109_021D1018,
    ov109_021D1048,
    ov109_021D10D8,
    ov109_021D1100,
    ov109_021D1124,
    ov109_021D1150,
    ov109_021D1164,
    ov109_021D117C,
    ov109_021D11A0,
    ov109_021D11BC,
    ov109_021D1204,
    ov109_021D122C,
    ov109_021D12B0,
    ov109_021D1334,
    ov109_021D1368,
    ov109_021D1390,
    ov109_021D13BC,
    ov109_021D13D8,
    ov109_021D13EC,
    ov109_021D1404,
    ov109_021D141C,
    ov109_021D1450,
    ov109_021D1460,
    ov109_021D1570,
    ov109_021D1648,
    ov109_021D167C,
    ov109_021D16A4,
    ov109_021D1720,
    ov109_021D1734,
    ov109_021D1758,
    ov109_021D17EC,
    ov109_021D1858,
    ov109_021D18A0,
    ov109_021D18F4,
    ov109_021D1918,
    ov109_021D19AC,
    ov109_021D19D0,
    ov109_021D19FC,
    ov109_021D1A14,
    ov109_021D1A6C,
    ov109_021D1AA8,
    ov109_021D1ADC,
    ov109_021D1AF0,
    ov109_021D1B0C,
    ov109_021D1B2C,
    ov109_021D1B8C,
    ov109_021D1BA4,
    ov109_021D1BE4,
    ov109_021D1BFC,
};

static void ov109_021D1C00 (void * param0)
{
    UnkStruct_ov109_021D0F70 * v0 = param0;

    sub_0201DCAC();
    sub_0200C800();
    sub_02003694(v0->unk_D9C);
    sub_0201C2B8(v0->unk_D84);
}

static void ov109_021D1C28 (UnkStruct_ov109_021D0F70 * param0)
{
    ov109_021D1CF0(param0);
    ov109_021D1E1C(param0);
    ov109_021D28C4(param0);
    ov109_021D1EC8(param0);
    ov109_021D22B0(param0);
    ov109_021D2368(param0);

    ov109_021D2004(param0);
    ov109_021D24F8(param0);
    ov109_021D2408(param0);
    ov109_021D1D10(param0);
}

static void ov109_021D1C68 (UnkStruct_ov109_021D0F70 * param0)
{
    ov109_021D1DC8(param0);
    ov109_021D24C0(param0);
    ov109_021D25E8(param0);
    ov109_021D2204(param0);
    ov109_021D2308(param0);
    ov109_021D293C(param0);
}

static void ov109_021D1C90 (UnkStruct_ov109_021D0F70 * param0)
{
    sub_020241B4();
    sub_020203EC();

    NNS_G3dGlbLightVector(0, 0, -FX32_ONE, 0);
    NNS_G3dGlbLightColor(0, GX_RGB(31, 31, 31));
    NNS_G3dGlbMaterialColorDiffAmb(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), 0);
    NNS_G3dGlbMaterialColorSpecEmi(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), 0);

    ov109_021D2AC8(param0);
    ov109_021D2CCC(param0);

    sub_020241BC(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
    sub_0200C7EC(param0->unk_D98);
}

static void ov109_021D1CF0 (UnkStruct_ov109_021D0F70 * param0)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_B,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_80_EF,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_A,
        GX_VRAM_TEXPLTT_0_G
    };

    GXLayers_SetBanks(&v0);
}

static void ov109_021D1D10 (UnkStruct_ov109_021D0F70 * param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);

    G2_SetBG0Priority(1);
    G2_SetBG1Priority(0);
    G2_SetBG2Priority(2);
    G2_SetBG3Priority(3);
    G2S_SetBG0Priority(0);
    G2S_SetBG1Priority(1);
    G2S_SetBG2Priority(2);
    G2S_SetBG3Priority(3);

    {
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD, 11, 10);
    }
}

static void ov109_021D1DC8 (UnkStruct_ov109_021D0F70 * param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 0);
}

static void ov109_021D1E1C (UnkStruct_ov109_021D0F70 * param0)
{
    int v0;

    NNS_G3dInit();
    G3X_InitMtxStack();
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_EdgeMarking(1);

    for (v0 = 0; v0 < 8; v0++) {
        param0->unk_DA0[v0] = GX_RGB(4, 4, 4);
    }

    G3X_SetEdgeColorTable(param0->unk_DA0);
    G3X_SetClearColor(GX_RGB(31, 31, 31), 0, 0x7fff, 63, 0);
    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
    G3_ViewPort(0, 0, 255, 191);

    NNS_GfdInitFrmTexVramManager(1, 1);
    NNS_GfdInitFrmPlttVramManager(0x4000, 1);
}

static void ov109_021D1EC8 (UnkStruct_ov109_021D0F70 * param0)
{
    param0->unk_D84 = sub_02018340(95);
    GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);

    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D
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

        sub_020183C4(param0->unk_D84, 1, &v1, 0);
        sub_02019EBC(param0->unk_D84, 1);
        sub_02019690(1, 32, 0, 95);
    }

    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0800,
            GX_BG_CHARBASE_0x0c000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_D84, 2, &v2, 0);
        sub_02019EBC(param0->unk_D84, 2);
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x1000,
            GX_BG_CHARBASE_0x0c000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_D84, 3, &v3, 0);
        sub_02019EBC(param0->unk_D84, 3);
    }

    {
        UnkStruct_ov97_0222DB78 v4 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x1000,
            GX_BG_CHARBASE_0x14000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_D84, 6, &v4, 0);
        sub_02019EBC(param0->unk_D84, 6);
    }

    {
        UnkStruct_ov97_0222DB78 v5 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x1800,
            GX_BG_CHARBASE_0x1c000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0->unk_D84, 7, &v5, 0);
        sub_02019EBC(param0->unk_D84, 7);
    }
}

static void ov109_021D2004 (UnkStruct_ov109_021D0F70 * param0)
{
    void * v0;

    v0 = ov109_021D3A2C(param0, 17, 0);
    NNS_G2dGetUnpackedPaletteData(v0, &param0->unk_D90);
    sub_02002FBC(param0->unk_D9C, param0->unk_D90->pRawData, 0, (32 * 0), (32 * 2));
    Heap_FreeToHeap(v0);

    v0 = ov109_021D3A2C(param0, 20, 0);
    NNS_G2dGetUnpackedPaletteData(v0, &param0->unk_D90);
    sub_02002FBC(param0->unk_D9C, param0->unk_D90->pRawData, 1, (32 * 0), (32 * 2));
    Heap_FreeToHeap(v0);

    sub_02003A2C(param0->unk_D9C, 1, 0xffff, 8, 0);

    v0 = ov109_021D3A2C(param0, 16, 0);
    NNS_G2dGetUnpackedCharacterData(v0, &param0->unk_D8C);
    sub_0201958C(param0->unk_D84, 3, param0->unk_D8C->pRawData, param0->unk_D8C->szByte, (32 * 0));
    Heap_FreeToHeap(v0);

    v0 = ov109_021D3A2C(param0, 22, 0);
    NNS_G2dGetUnpackedCharacterData(v0, &param0->unk_D8C);
    sub_0201958C(param0->unk_D84, 6, param0->unk_D8C->pRawData, param0->unk_D8C->szByte, (32 * 0));
    Heap_FreeToHeap(v0);

    v0 = ov109_021D3A2C(param0, 21, 0);
    NNS_G2dGetUnpackedCharacterData(v0, &param0->unk_D8C);
    sub_0201958C(param0->unk_D84, 7, param0->unk_D8C->pRawData, param0->unk_D8C->szByte, (32 * 0));
    Heap_FreeToHeap(v0);

    v0 = ov109_021D3A2C(param0, 19, 0);
    NNS_G2dGetUnpackedScreenData(v0, &param0->unk_D88);
    sub_02019574(param0->unk_D84, 2, (void *)param0->unk_D88->rawData, param0->unk_D88->szByte);
    sub_02019448(param0->unk_D84, 2);
    Heap_FreeToHeap(v0);

    v0 = ov109_021D3A2C(param0, 18, 0);
    NNS_G2dGetUnpackedScreenData(v0, &param0->unk_D88);
    sub_02019574(param0->unk_D84, 3, (void *)param0->unk_D88->rawData, param0->unk_D88->szByte);
    sub_02019448(param0->unk_D84, 3);
    Heap_FreeToHeap(v0);

    v0 = ov109_021D3A2C(param0, 24, 0);
    NNS_G2dGetUnpackedScreenData(v0, &param0->unk_D88);
    sub_02019574(param0->unk_D84, 6, (void *)param0->unk_D88->rawData, param0->unk_D88->szByte);
    sub_02019448(param0->unk_D84, 6);
    Heap_FreeToHeap(v0);

    v0 = ov109_021D3A2C(param0, 23, 0);
    NNS_G2dGetUnpackedScreenData(v0, &param0->unk_D88);
    sub_02019574(param0->unk_D84, 7, (void *)param0->unk_D88->rawData, param0->unk_D88->szByte);
    sub_02019448(param0->unk_D84, 7);
    Heap_FreeToHeap(v0);
}

static void ov109_021D2204 (UnkStruct_ov109_021D0F70 * param0)
{
    sub_02019044(param0->unk_D84, 1);
    sub_02019044(param0->unk_D84, 2);
    sub_02019044(param0->unk_D84, 3);
    sub_02019044(param0->unk_D84, 6);
    sub_02019044(param0->unk_D84, 7);
    Heap_FreeToHeap(param0->unk_D84);
}

static void ov109_021D2248 (UnkStruct_ov109_021D0F70 * param0, u32 param1)
{
    void * v0;

    v0 = ov109_021D3A2C(param0, param1, 0);
    NNS_G2dGetUnpackedScreenData(v0, &param0->unk_D88);

    sub_02019574(param0->unk_D84, 6, (void *)param0->unk_D88->rawData, param0->unk_D88->szByte);
    sub_02019448(param0->unk_D84, 6);
    Heap_FreeToHeap(v0);
}

static void ov109_021D228C (UnkStruct_ov109_021D0F70 * param0)
{
    ov109_021D2248(param0, 26);
}

static void ov109_021D2298 (UnkStruct_ov109_021D0F70 * param0)
{
    ov109_021D2248(param0, 24);
}

static void ov109_021D22A4 (UnkStruct_ov109_021D0F70 * param0)
{
    ov109_021D2248(param0, 25);
}

static void ov109_021D22B0 (UnkStruct_ov109_021D0F70 * param0)
{
    param0->unk_D9C = sub_02002F38(95);

    sub_02003858(param0->unk_D9C, 1);
    sub_02002F70(param0->unk_D9C, 0, 0x200, 95);
    sub_02002F70(param0->unk_D9C, 2, 0x200, 95);
    sub_02002F70(param0->unk_D9C, 1, 0x200, 95);
    sub_02002F70(param0->unk_D9C, 3, 0x200, 95);
}

static void ov109_021D2308 (UnkStruct_ov109_021D0F70 * param0)
{
    sub_02002FA0(param0->unk_D9C, 0);
    sub_02002FA0(param0->unk_D9C, 2);
    sub_02002FA0(param0->unk_D9C, 1);
    sub_02002FA0(param0->unk_D9C, 3);
    sub_02002F54(param0->unk_D9C);
}

static void ov109_021D2344 (UnkStruct_ov109_021D0F70 * param0, u32 param1)
{
    sub_02003A2C(param0->unk_D9C, 1, 0xffff, param1, 0);
}

static void ov109_021D2368 (UnkStruct_ov109_021D0F70 * param0)
{
    {
        const UnkStruct_ov104_0224133C v0 = {
            0, 128, 0, 32, 0, 128, 0, 32,
        };
        const UnkStruct_ov104_022412F4 v1 = {
            48 + 48, 1024 * 0x40, 512 * 0x20, GX_OBJVRAMMODE_CHAR_1D_64K, GX_OBJVRAMMODE_CHAR_1D_32K
        };

        param0->unk_D94 = sub_0200C6E4(95);
        sub_0200C73C(param0->unk_D94, &v0, &v1, 16 + 16);
    }

    {
        BOOL v2;
        const UnkStruct_ov104_02241308 v3 = {
            48 + 48, 16 + 16, 64, 64, 16, 16,
        };

        param0->unk_D98 = sub_0200C704(param0->unk_D94);
        v2 = sub_0200C7C0(param0->unk_D94, param0->unk_D98, 255);
        GF_ASSERT(v2);
        v2 = sub_0200CB30(param0->unk_D94, param0->unk_D98, &v3);
        GF_ASSERT(v2);
    }
}

static void ov109_021D2408 (UnkStruct_ov109_021D0F70 * param0)
{
    CellTransferStateData * v0 = param0->unk_D94;
    AnimationResourceCollection * v1 = param0->unk_D98;
    PaletteSys * v2 = param0->unk_D9C;
    NARC * v3 = param0->unk_D80;

    {
        sub_02009704(NNS_G2D_VRAM_TYPE_2DMAIN);
    }

    {
        NARC * v4;

        v4 = NARC_ctor(NARC_INDEX_GRAPHIC__NUTMIXER, 95);

        sub_0200CC3C(v0, v1, v4, 14, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 4);
        sub_0200CDC4(v2, 2, v0, v1, v4, 8, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 5);
        sub_0200CE24(v0, v1, v4, 13, 0, 6);
        sub_0200CE54(v0, v1, v4, 12, 0, 7);
        NARC_dtor(v4);
    }

    {
        sub_02039734();
    }

    {
        NNSG2dPaletteData * v5;
        void * v6 = sub_020394A8(95);

        NNS_G2dGetUnpackedPaletteData(v6, &v5);
        sub_02002FBC(v2, v5->pRawData, 2, 14 * 16, 32);
        Heap_FreeToHeap(v6);
    }
}

static void ov109_021D24C0 (UnkStruct_ov109_021D0F70 * param0)
{
    sub_0200D0B0(param0->unk_D94, param0->unk_D98);
    sub_0200C8D4(param0->unk_D94);
}

static CellActorData * ov109_021D24E0 (UnkStruct_ov109_021D0F70 * param0, const UnkStruct_ov104_0223F9E0 * param1)
{
    CellActorData * v0 = sub_0200CE6C(param0->unk_D94, param0->unk_D98, param1);
    return v0;
}

static void ov109_021D24F8 (UnkStruct_ov109_021D0F70 * param0)
{
    int v0;
    UnkStruct_ov109_021D24F8 * v1 = &param0->unk_C9C;

    sub_0200DAA4(param0->unk_D84, 1, 1, 15, 0, 95);
    sub_0200DD0C(param0->unk_D84, 1, (1 + 9), 14, param0->unk_CC->unk_14.unk_04, 95);
    PaletteSys_LoadPalette(param0->unk_D9C, 38, sub_0200DD08(param0->unk_CC->unk_14.unk_04), 95, 0, 0x20, 14 * 16);
    PaletteSys_LoadPalette(param0->unk_D9C, 14, 7, 95, 0, 0x20, 15 * 16);

    v1->unk_04 = MessageLoader_Init(0, 26, 376, 95);
    v1->unk_08 = sub_0200B358(95);

    for (v0 = 0; v0 < 1; v0++) {
        sub_0201A8D4(param0->unk_D84, &v1->unk_0C[v0], &Unk_ov109_021D59B8[v0]);
    }

    v1->unk_6C = Strbuf_Init(0x100, 95);

    for (v0 = 0; v0 < 5; v0++) {
        param0->unk_2C.unk_6C[v0] = Strbuf_Init(7 + 1, 95);
    }

    ov109_021D27AC(param0, param0->unk_CC->unk_08);
}

static void ov109_021D25E8 (UnkStruct_ov109_021D0F70 * param0)
{
    int v0;
    UnkStruct_ov109_021D24F8 * v1 = &param0->unk_C9C;

    for (v0 = 0; v0 < 1; v0++) {
        sub_0201ACF4(&v1->unk_0C[v0]);
        BGL_DeleteWindow(&v1->unk_0C[v0]);
    }

    ov109_021D27F0(param0);

    MessageLoader_Free(v1->unk_04);
    sub_0200B3F0(v1->unk_08);
    Strbuf_Free(v1->unk_6C);

    for (v0 = 0; v0 < 5; v0++) {
        Strbuf_Free(param0->unk_2C.unk_6C[v0]);
    }
}

static void ov109_021D2634 (UnkStruct_ov109_021D0F70 * param0, u32 param1)
{
    UnkStruct_ov109_021D24F8 * v0 = &param0->unk_C9C;
    Window * v1 = &v0->unk_0C[0];

    BGL_FillWindow(v1, 15);
    sub_0200E060(v1, 1, (1 + 9), 14);
    BGL_FillWindow(v1, 15);
    MessageLoader_GetStrbuf(v0->unk_04, param1, v0->unk_6C);
    sub_0201D738(v1, 1, v0->unk_6C, 0, 0, 0xff, NULL);
    sub_0201A9A4(v1);
}

static void ov109_021D268C (UnkStruct_ov109_021D0F70 * param0, u32 param1, const TrainerInfo * param2)
{
    Strbuf* v0;
    UnkStruct_ov109_021D24F8 * v1 = &param0->unk_C9C;
    Window * v2 = &v1->unk_0C[0];

    sub_0200B498(v1->unk_08, 1, sub_02032EE8(sub_0203608C()));
    sub_0200B498(v1->unk_08, 2, param2);

    v0 = Strbuf_Init(0x100, 95);

    MessageLoader_GetStrbuf(v1->unk_04, param1, v0);
    sub_0200C388(v1->unk_08, v1->unk_6C, v0);
    Strbuf_Free(v0);
    sub_0200E060(v2, 1, (1 + 9), 14);
    BGL_FillWindow(v2, 15);
    sub_0201D738(v2, 1, v1->unk_6C, 0, 0, 0xff, NULL);
    sub_0201A9A4(v2);
}

static void ov109_021D2714 (UnkStruct_ov109_021D0F70 * param0, u32 param1, u32 param2)
{
    Strbuf* v0;
    UnkStruct_ov109_021D24F8 * v1 = &param0->unk_C9C;
    Window * v2 = &v1->unk_0C[0];

    sub_0200B70C(v1->unk_08, 0, param2);

    v0 = Strbuf_Init(0x100, 95);

    MessageLoader_GetStrbuf(v1->unk_04, param1, v0);
    sub_0200C388(v1->unk_08, v1->unk_6C, v0);
    Strbuf_Free(v0);
    sub_0200E060(v2, 1, (1 + 9), 14);
    BGL_FillWindow(v2, 15);
    sub_0201D738(v2, 1, v1->unk_6C, 0, 0, 0xff, NULL);
    sub_0201A9A4(v2);
}

static void ov109_021D2788 (UnkStruct_ov109_021D0F70 * param0)
{
    UnkStruct_ov109_021D24F8 * v0 = &param0->unk_C9C;
    Window * v1 = &v0->unk_0C[0];

    sub_0200E084(v1, 1);
    BGL_FillWindow(v1, 0);
    sub_0201A9A4(v1);
}

static void ov109_021D27AC (UnkStruct_ov109_021D0F70 * param0, int param1)
{
    int v0;
    UnkStruct_ov109_021D24F8 * v1 = &param0->unk_C9C;
    const UnkStruct_ov61_0222C884 * v2 = Unk_ov109_021D5A68[param1];

    v1->unk_00 = param1;

    for (v0 = 0; v0 < param1; v0++) {
        sub_0201A8D4(param0->unk_D84, &v1->unk_1C[v0], &v2[v0]);
    }
}

static void ov109_021D27F0 (UnkStruct_ov109_021D0F70 * param0)
{
    int v0;
    UnkStruct_ov109_021D24F8 * v1 = &param0->unk_C9C;

    for (v0 = 0; v0 < v1->unk_00; v0++) {
        sub_0201ACF4(&v1->unk_1C[v0]);
        BGL_DeleteWindow(&v1->unk_1C[v0]);
    }
}

static void ov109_021D2820 (UnkStruct_ov109_021D0F70 * param0, Strbuf *param1, int param2, u32 param3)
{
    UnkStruct_ov109_021D24F8 * v0 = &param0->unk_C9C;
    Window * v1 = &v0->unk_1C[param2];
    Window_Show(v1, 1, 1, 14);
    BGL_FillWindow(v1, 15);
    sub_0201D78C(v1, 0, param1, sub_02002EEC(0, param1, 0, 8 * 8), 0, 0xFF, param3, NULL);
    sub_0201A9A4(v1);
}

static void ov109_021D2874 (UnkStruct_ov109_021D0F70 * param0, Strbuf *param1, int param2, int param3)
{
    u32 v0 = ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)));

    if (param3 == sub_0203608C()) {
        v0 = ((u32)(((3 & 0xff) << 16) | ((4 & 0xff) << 8) | ((0 & 0xff) << 0)));
    }

    ov109_021D2820(param0, param1, param2, v0);
}

static void ov109_021D28A0 (UnkStruct_ov109_021D0F70 * param0, int param1)
{
    UnkStruct_ov109_021D24F8 * v0 = &param0->unk_C9C;
    Window * v1 = &v0->unk_1C[param1];

    sub_0200E084(v1, 1);
    BGL_FillWindow(v1, 0);
    sub_0201A9A4(v1);
}

static void ov109_021D28C4 (UnkStruct_ov109_021D0F70 * param0)
{
    UnkStruct_ov109_021D28C4 * v0 = &param0->unk_D0C;

    v0->unk_1C = sub_020203AC(95);

    {
        VecFx32 v1;

        v0->unk_08.x = (FX32_ONE * 0);
        v0->unk_08.y = (FX32_ONE * 0);
        v0->unk_08.z = (FX32_ONE * 0);

        v0->unk_14.unk_00 = ((((-32 * 0xffff) / 360)));
        v0->unk_14.unk_02 = ((((0 * 0xffff) / 360)));
        v0->unk_14.unk_04 = ((((0 * 0xffff) / 360)));

        v0->unk_00 = (0x143 << FX32_SHIFT);
        v0->unk_04 = ((((6 * 0xffff) / 360)));

        sub_020206D0(&v0->unk_08, v0->unk_00, &v0->unk_14, v0->unk_04, 0, 1, v0->unk_1C);

        v1.x = 0;
        v1.y = FX32_ONE;
        v1.z = 0;

        sub_02020680(&v1, v0->unk_1C);
        sub_020203D4(v0->unk_1C);
    }
}

static void ov109_021D293C (UnkStruct_ov109_021D0F70 * param0)
{
    UnkStruct_ov109_021D28C4 * v0 = &param0->unk_D0C;
    sub_020203B8(v0->unk_1C);
}

static void ov109_021D294C (UnkStruct_ov109_021D0F70 * param0)
{
    int v0 = 0, v1 = 4 - 1;
    UnkStruct_ov109_021D294C * v2 = &param0->unk_D2C;

    sub_0201E564(&v2->unk_10, 2, 0);

    while (v1 >= 0) {
        if (v2->unk_10.unk_02[v1].touch == 1) {
            v2->unk_00 = v2->unk_10.unk_02[v1].x;
            v2->unk_04 = v2->unk_10.unk_02[v1].y;
            v0 = 1;
        }

        v1--;
    }

    v2->unk_08 = v0 & (v0 ^ v2->unk_0C);
    v2->unk_0C = v0;
}

static BOOL ov109_021D2990 (UnkStruct_ov109_021D294C * param0)
{
    int v0, v1, v2, v3, v4, v5;

    v4 = param0->unk_00;
    v5 = param0->unk_04;
    v0 = 128 - (128 / 2);
    v1 = 96 - (128 / 2);
    v2 = 128 + (128 / 2) - 1;
    v3 = 96 + (128 / 2) - 1;

    if (((v5 >= v1) && (v5 <= v3)) && ((v4 >= v0) && (v4 <= v2))) {
        return 1;
    }

    return 0;
}

static BOOL ov109_021D29AC (UnkStruct_ov109_021D0F70 * param0)
{
    UnkStruct_ov109_021D294C * v0 = &param0->unk_D2C;

    if (v0->unk_08) {
        if (ov109_021D2990(v0) == 1) {
            return 1;
        }
    }

    return 0;
}

static void ov109_021D29CC (UnkStruct_ov109_021D0F70 * param0)
{
    int v0;
    u32 v1;
    UnkStruct_ov109_021D2AE4 * v2 = &param0->unk_D4;
    NARC * v3 = param0->unk_D80;

    v0 = param0->unk_CC->unk_08;
    v1 = Unk_ov109_021D5A80[v0];

    sub_0207389C(&v2->unk_54, 0, v3, v1, 95, 0);
    sub_020738EC(&v2->unk_54);
    sub_02073B70(&v2->unk_68, &v2->unk_54);

    v2->unk_3C = (FX32_ONE * 0);
    v2->unk_44 = Unk_ov109_021D5A98[v0];
    v2->unk_18.x = FX32_ONE;
    v2->unk_18.y = FX32_ONE;
    v2->unk_18.z = FX32_ONE;
    v2->unk_4C.unk_00 = 0;
    v2->unk_4C.unk_02 = 0;
    v2->unk_4C.unk_04 = 0;
    v2->unk_00.x = ((FX32_ONE * 0));
    v2->unk_00.y = ((FX32_ONE * -36));
    v2->unk_00.z = ((FX32_ONE * 0));
    v2->unk_0C = v2->unk_00;
}

static void ov109_021D2A58 (UnkStruct_ov109_021D0F70 * param0)
{
    UnkStruct_ov109_021D2AE4 * v0 = &param0->unk_D4;
    sub_0207395C(&v0->unk_54);
}

static void ov109_021D2A68 (UnkStruct_ov109_021D0F70 * param0)
{
    UnkStruct_ov109_021D2AE4 * v0 = &param0->unk_D4;
    fx32 v1 = v0->unk_3C;

    ov109_021D39D4(&v1, v0->unk_40);
    ov109_021D39D4(&v1, v0->unk_44);

    v0->unk_4C.unk_02 = (360 - ((v1) / FX32_ONE)) % 360;
    v0->unk_0C.x = v0->unk_00.x + v0->unk_30.x + v0->unk_24.x;
    v0->unk_0C.y = v0->unk_00.y + v0->unk_30.y + v0->unk_24.y;
    v0->unk_0C.z = v0->unk_00.z + v0->unk_30.z + v0->unk_24.z;
}

static void ov109_021D2AC8 (UnkStruct_ov109_021D0F70 * param0)
{
    UnkStruct_ov109_021D2AE4 * v0 = &param0->unk_D4;
    sub_02073BC8(&v0->unk_68, &v0->unk_0C, &v0->unk_18, &v0->unk_4C);
}

static void ov109_021D2AE4 (UnkStruct_ov109_021D2AE4 * param0, fx32 param1)
{
    ov109_021D39D4(&param0->unk_3C, param1);
}

static void ov109_021D2AF0 (UnkStruct_ov109_021D0F70 * param0)
{
    UnkStruct_ov109_021D1334 * v0 = &param0->unk_190;
    ov109_021D2B00(param0);
}

static void ov109_021D2AF8 (UnkStruct_ov109_021D0F70 * param0)
{
    int v0;
    UnkStruct_ov109_021D2D78 * v1;
    UnkStruct_ov109_021D1334 * v2 = &param0->unk_190;

    for (v0 = 0; v0 < 5; v0++) {
        v1 = &v2->unk_140[v0];
    }

    ov109_021D2BD4(param0);
}

static const u32 Unk_ov109_021D5A14[5] = {
    0x6,
    0x7,
    0x8,
    0x9,
    0xA
};

static const u32 Unk_ov109_021D5A3C[5] = {
    0xB,
    0xC,
    0xD,
    0xE,
    0xF
};

static void ov109_021D2B00 (UnkStruct_ov109_021D0F70 * param0)
{
    int v0;
    const u32 * v1, * v2;
    UnkStruct_ov109_021D1334 * v3 = &param0->unk_190;

    sub_0207389C(&v3->unk_00, 0, param0->unk_D80, 0, 95, 0);
    sub_020738EC(&v3->unk_00);
    sub_0207389C(&v3->unk_14, 0, param0->unk_D80, 5, 95, 0);
    sub_020738EC(&v3->unk_14);

    v1 = Unk_ov109_021D5A14;
    v2 = Unk_ov109_021D5A3C;

    for (v0 = 0; v0 < 5; v0++, v1++, v2++) {
        sub_0207389C(&v3->unk_28[v0], 0, param0->unk_D80, *v1, 95, 0);
        sub_020738EC(&v3->unk_28[v0]);
        sub_020739B4(&v3->unk_8C[v0], 0, param0->unk_D80, *v2, 95, 0);
        sub_02073A3C(&v3->unk_8C[v0], &v3->unk_28[v0], 95);
        sub_02073A5C(&v3->unk_8C[v0], &v3->unk_28[v0]);
    }
}

static void ov109_021D2BD4 (UnkStruct_ov109_021D0F70 * param0)
{
    int v0;
    UnkStruct_ov109_021D1334 * v1 = &param0->unk_190;

    sub_0207395C(&v1->unk_00);
    sub_0207395C(&v1->unk_14);

    for (v0 = 0; v0 < 5; v0++) {
        sub_0207395C(&v1->unk_28[v0]);
        sub_020739F0(&v1->unk_8C[v0]);
    }
}

static void ov109_021D2C0C (UnkStruct_ov109_021D0F70 * param0, UnkStruct_ov109_021D2D78 * param1)
{
    UnkStruct_ov109_021D1334 * v0 = &param0->unk_190;

    sub_02073B70(&param1->unk_5C, &v0->unk_00);
    param1->unk_04 = 1;

    ov109_021D2EC0(param0, param1);
    ov109_021D2F68(param0, param1);
}

static void ov109_021D2C38 (UnkStruct_ov109_021D0F70 * param0)
{
    int v0 = 0, v1 = param0->unk_2C.unk_04;
    UnkStruct_ov109_021D1334 * v2 = &param0->unk_190;

    while (v0 < v1) {
        if (v2->unk_140[v0].unk_00) {
            ov109_021D2D78(&v2->unk_140[v0], &param0->unk_D4.unk_30);
        }

        if (v2->unk_4B0[v0].unk_00) {
            ov109_021D2EF4(param0, &v2->unk_4B0[v0]);
        }

        if (v2->unk_71C[v0].unk_00) {
            ov109_021D2FA4(param0, &v2->unk_71C[v0]);
        }

        v0++;
    }
}

static void ov109_021D2CCC (UnkStruct_ov109_021D0F70 * param0)
{
    int v0 = 0, v1 = param0->unk_2C.unk_04;
    UnkStruct_ov109_021D1334 * v2 = &param0->unk_190;
    UnkStruct_ov109_021D2D78 * v3 = v2->unk_140;
    UnkStruct_ov109_021D2EF4 * v4 = v2->unk_4B0;
    UnkStruct_ov109_021D2FA4 * v5 = v2->unk_71C;

    while (v0 < v1) {
        if (v3->unk_04) {
            sub_02073BC8(&v3->unk_5C, &v3->unk_44, &v3->unk_38, &v3->unk_24);
        }

        if (v4->unk_00) {
            sub_02073BC8(&v4->unk_24, &v4->unk_18, &v4->unk_0C, &v4->unk_04);
        }

        if (v5->unk_00) {
            sub_02073BB4(&v5->unk_10, &v5->unk_04);
        }

        v3++;
        v4++;
        v5++;
        v0++;
    }
}

static void ov109_021D2D44 (UnkStruct_ov109_021D0F70 * param0, fx32 param1)
{
    int v0 = 0, v1 = param0->unk_2C.unk_04;
    UnkStruct_ov109_021D1334 * v2 = &param0->unk_190;

    while (v0 < v1) {
        if (v2->unk_140[v0].unk_00) {
            ov109_021D39D4(&v2->unk_140[v0].unk_1C, param1);
        }

        v0++;
    }
}

static void ov109_021D2D78 (UnkStruct_ov109_021D2D78 * param0, const VecFx32 * param1)
{
    u16 v0;
    fx32 v1;

    v1 = param0->unk_1C;
    ov109_021D39D4(&v1, param0->unk_20);
    v0 = (u16)((v1) / FX32_ONE);

    param0->unk_44.x = ((FX32_ONE * 0)) + param0->unk_50.x + param1->x + (sub_0201D1D4(v0) * 22);
    param0->unk_44.y = ((FX32_ONE * -6)) + param0->unk_50.y + param1->y;
    param0->unk_44.z = ((FX32_ONE * 0)) + param0->unk_50.z + param1->z + (sub_0201D15C(v0) * 22);

    param0->unk_24.unk_00 = ((param0->unk_2C.x) / FX32_ONE);
    param0->unk_24.unk_02 = ((param0->unk_2C.y) / FX32_ONE);
    param0->unk_24.unk_04 = ((param0->unk_2C.z) / FX32_ONE);
}

static UnkStruct_ov109_021D2D78 * ov109_021D2DF8 (UnkStruct_ov109_021D0F70 * param0)
{
    int v0, v1, v2, v3;
    fx32 v4, v5, v6;
    int v7 = param0->unk_2C.unk_04;
    int v8[5], v9[5];
    UnkStruct_ov109_021D1334 * v10 = &param0->unk_190;

    v0 = 0;
    v4 = (FX32_ONE * (Unk_ov109_021D5C80[v7][param0->unk_2C.unk_00]));

    do {
        v9[v0] = v0, v8[v0] = 0xffff;
    } while (++v0 < v7);

    for (v0 = 0; v0 < v7; v0++) {
        v5 = v10->unk_140[v0].unk_1C;
        v6 = v4 - v5;

        if (v6 < 0) {
            v6 = (v4 + (FX32_ONE * 360)) - v5;
        }

        v8[v0] = ((v6) / FX32_ONE);
    }

    for (v0 = 1; v0 < v7; v0++) {
        v3 = v9[v0]; v2 = v8[v3];

        for (v1 = v0 - 1; v1 >= 0 && v8[v9[v1]] > v2; v1--) {
            v9[v1 + 1] = v9[v1];
        }

        v9[v1 + 1] = v3;
    }

    return &v10->unk_140[v9[0]];
}

static void ov109_021D2EC0 (UnkStruct_ov109_021D0F70 * param0, UnkStruct_ov109_021D2D78 * param1)
{
    UnkStruct_ov109_021D1334 * v0 = &param0->unk_190;
    UnkStruct_ov109_021D2EF4 * v1 = &v0->unk_4B0[param1->unk_10];

    v1->unk_00 = 1;
    v1->unk_78 = param1;
    sub_02073B70(&v1->unk_24, &v0->unk_14);
    ov109_021D2EF4(param0, v1);
}

static void ov109_021D2EF4 (UnkStruct_ov109_021D0F70 * param0, UnkStruct_ov109_021D2EF4 * param1)
{
    fx32 v0;

    param1->unk_04.unk_00 = 0;
    param1->unk_04.unk_02 = 0;
    param1->unk_04.unk_04 = 0;
    param1->unk_18 = param1->unk_78->unk_44;
    param1->unk_18.x -= param1->unk_78->unk_50.x;
    param1->unk_18.y -= param1->unk_78->unk_50.y;
    param1->unk_18.z -= param1->unk_78->unk_50.z;
    param1->unk_18.y += (FX32_ONE * 2);

    v0 = param1->unk_78->unk_50.y;

    if (v0 < 0) {
        v0 = -v0;
    }

    v0 /= 0x80;

    if (v0 > 0x800) {
        v0 = 0x800;
    }

    param1->unk_0C.x = FX32_ONE - v0;
    param1->unk_0C.y = FX32_ONE - v0;
    param1->unk_0C.z = FX32_ONE - v0;
}

static void ov109_021D2F68 (UnkStruct_ov109_021D0F70 * param0, UnkStruct_ov109_021D2D78 * param1)
{
    UnkStruct_ov109_021D1334 * v0 = &param0->unk_190;
    UnkStruct_ov109_021D2FA4 * v1 = &v0->unk_71C[param1->unk_10];

    v1->unk_00 = 1;
    v1->unk_64 = param1;

    sub_02073B90(&v1->unk_10, &v0->unk_28[param1->unk_10], &v0->unk_8C[param1->unk_10]);
}

static void ov109_021D2FA4 (UnkStruct_ov109_021D0F70 * param0, UnkStruct_ov109_021D2FA4 * param1)
{
    UnkStruct_ov109_021D1334 * v0 = &param0->unk_190;

    param1->unk_04 = param1->unk_64->unk_44;
    param1->unk_04.y += (FX32_ONE * 20);

    sub_02073AC0(&v0->unk_8C[param1->unk_64->unk_10], FX32_ONE, 1);
}

static SysTask * ov109_021D2FE0 (UnkStruct_ov109_021D0F70 * param0, int param1, int param2, int param3, int param4, int param5, UnkStruct_ov109_021D2D78 * param6)
{
    SysTask * v0;
    UnkStruct_ov109_021D2FE0 * v1;

    param6->unk_0C = param1;
    param6->unk_10 = param2;
    param6->unk_14 = param3;
    param6->unk_18 = param2;
    param6->unk_1C = (FX32_ONE * (param4));
    param6->unk_20 = (FX32_ONE * (param5));
    param6->unk_00 = 1;
    param6->unk_08 = 0;

    v1 = Heap_AllocFromHeapAtEnd(95, sizeof(UnkStruct_ov109_021D2FE0));
    memset(v1, 0, sizeof(UnkStruct_ov109_021D2FE0));
    v1->unk_14 = param0;
    v1->unk_10 = param6;
    v0 = SysTask_Start(ov109_021D302C, v1, 0);

    return v0;
}

static void ov109_021D302C (SysTask * param0, void * param1)
{
    int v0;
    UnkStruct_ov109_021D2FE0 * v1 = param1;

    do {
        v0 = Unk_ov109_021D59D8[v1->unk_00](v1);
    } while (v0 == 1);

    if (v0 == 2) {
        v1->unk_10->unk_08 = 1;
        Heap_FreeToHeap(v1);
        SysTask_Done(param0);
    }
}

static int ov109_021D3060 (UnkStruct_ov109_021D2FE0 * param0)
{
    UnkStruct_ov109_021D2D78 * v0 = param0->unk_10;

    v0->unk_38.x = FX32_ONE;
    v0->unk_38.y = FX32_ONE;
    v0->unk_38.z = FX32_ONE;
    v0->unk_50.y = ((FX32_ONE * 192));

    ov109_021D2C0C(param0->unk_14, v0);

    param0->unk_0C = (FX32_ONE * 8);
    param0->unk_00 = 1;

    return 0;
}

static int ov109_021D308C (UnkStruct_ov109_021D2FE0 * param0)
{
    UnkStruct_ov109_021D2D78 * v0 = param0->unk_10;

    v0->unk_50.y -= param0->unk_0C;

    if (param0->unk_08 == 0) {
        if (v0->unk_50.y <= (FX32_ONE * 104)) {
            param0->unk_08 = 1;
            Sound_PlayEffect(1616);
        }
    }

    if (v0->unk_50.y <= (FX32_ONE * 32)) {
        v0->unk_50.y = (FX32_ONE * 32);
        param0->unk_00 = 2;
    }

    return 0;
}

static int ov109_021D30CC (UnkStruct_ov109_021D2FE0 * param0)
{
    UnkStruct_ov109_021D2D78 * v0 = param0->unk_10;

    if (param0->unk_0C > (FX32_ONE * 1)) {
        param0->unk_0C -= 0x1000;

        if (param0->unk_0C < (FX32_ONE * 1)) {
            param0->unk_0C = (FX32_ONE * 1);
        }
    }

    v0->unk_50.y -= param0->unk_0C;

    if (v0->unk_50.y <= 0) {
        v0->unk_50.y = 0;

        ov109_021D2874(param0->unk_14, param0->unk_14->unk_2C.unk_6C[v0->unk_0C], v0->unk_14, v0->unk_0C);

        return 2;
    }

    return 0;
}

static int(*const Unk_ov109_021D59D8[3])(UnkStruct_ov109_021D2FE0 *) = {
    ov109_021D3060,
    ov109_021D308C,
    ov109_021D30CC,
};

static void ov109_021D3110 (UnkStruct_ov109_021D0F70 * param0, UnkStruct_ov109_021D3110 * param1)
{
    UnkStruct_ov109_021D2D78 * v0 = param1->unk_1C;

    switch (param1->unk_04) {
    case 0:
        ov109_021D3328(param0, v0);
        param1->unk_10 = (FX32_ONE * 4);
        param1->unk_14 = -((FX32_ONE * 4) / (30 / 2));
        param1->unk_04++;
    case 1:
        v0->unk_50.y += param1->unk_10;
        param1->unk_10 += param1->unk_14;
        param1->unk_08++;

        if (param1->unk_08 < (30 / 2)) {
            break;
        }

        param1->unk_08 = 0;
        param1->unk_10 = 0;

        if (param1->unk_0C == 0) {
            param1->unk_0C = 1;
            break;
        }

        v0->unk_50.y = 0;
        ov109_021D3460(param0, v0);
        memset(param1, 0, sizeof(UnkStruct_ov109_021D3110));
    }
}

static void ov109_021D3180 (SysTask * param0, void * param1)
{
    int v0;
    UnkStruct_ov109_021D0F70 * v1 = param1;
    UnkStruct_ov109_021D31A8 * v2 = &v1->unk_AB4;
    UnkStruct_ov109_021D3110 * v3 = v2->unk_00;

    for (v0 = 0; v0 < 5; v0++, v3++) {
        if (v3->unk_00) {
            ov109_021D3110(v1, v3);
        }
    }
}

static void ov109_021D31A8 (UnkStruct_ov109_021D0F70 * param0)
{
    UnkStruct_ov109_021D31A8 * v0;

    v0 = &param0->unk_AB4;
    memset(v0, 0, sizeof(UnkStruct_ov109_021D31A8));

    param0->unk_DB0 = SysTask_Start(ov109_021D3180, param0, 256);
    GF_ASSERT(param0->unk_DB0);
}

static void ov109_021D31E0 (UnkStruct_ov109_021D0F70 * param0)
{
    SysTask_Done(param0->unk_DB0);
}

static void ov109_021D31F0 (UnkStruct_ov109_021D0F70 * param0, UnkStruct_ov109_021D2D78 * param1)
{
    int v0;
    UnkStruct_ov109_021D31A8 * v1 = &param0->unk_AB4;
    UnkStruct_ov109_021D3110 * v2 = v1->unk_00;

    for (v0 = 0; v0 < 5; v0++, v2++) {
        if (v2->unk_00 == 0) {
            v2->unk_00 = 1;
            v2->unk_1C = param1;
            return;
        }
    }

    GF_ASSERT(0);
}

static void ov109_021D3218 (UnkStruct_ov109_021D0F70 * param0)
{
    UnkStruct_ov109_021D1334 * v0 = &param0->unk_190;
    int v1 = 0, v2 = param0->unk_2C.unk_04;

    do {
        if (v0->unk_140[v1].unk_00) {
            ov109_021D31F0(param0, &v0->unk_140[v1]);
        }

        v1++;
    } while (v1 < v2);
}

static BOOL ov109_021D3248 (UnkStruct_ov109_021D0F70 * param0)
{
    int v0;
    UnkStruct_ov109_021D31A8 * v1 = &param0->unk_AB4;
    UnkStruct_ov109_021D3110 * v2 = v1->unk_00;

    for (v0 = 0; v0 < 5; v0++, v2++) {
        if (v2->unk_00) {
            return 1;
        }
    }

    return 0;
}

static void ov109_021D3268 (UnkStruct_ov109_021D3268 * param0)
{
    fx32 v0;
    UnkStruct_ov109_021D2D78 * v1 = param0->unk_10;

    switch (param0->unk_04) {
    case 0:
        param0->unk_0C = (FX32_ONE * 24);
        v1->unk_2C.y = 0;
        param0->unk_04++;
    case 1:
        v0 = v1->unk_2C.y;
        ov109_021D39D4(&v1->unk_2C.y, param0->unk_0C);

        if (v1->unk_2C.y < (FX32_ONE * 4)) {
            param0->unk_0C = (u32)(param0->unk_0C) >> 1;

            if (param0->unk_0C < (FX32_ONE * 4)) {
                v1->unk_2C.y = 0;
                memset(param0, 0, sizeof(UnkStruct_ov109_021D3268));
            }
        }
    }
}

static void ov109_021D32B8 (SysTask * param0, void * param1)
{
    int v0;
    UnkStruct_ov109_021D0F70 * v1 = param1;
    UnkStruct_ov109_021D32DC * v2 = &v1->unk_B54;
    UnkStruct_ov109_021D3268 * v3 = v2->unk_00;

    for (v0 = 0; v0 < 5; v0++, v3++) {
        if (v3->unk_00) {
            ov109_021D3268(v3);
        }
    }
}

static void ov109_021D32DC (UnkStruct_ov109_021D0F70 * param0)
{
    UnkStruct_ov109_021D32DC * v0;

    v0 = &param0->unk_B54;
    memset(v0, 0, sizeof(UnkStruct_ov109_021D32DC));

    param0->unk_DB4 = SysTask_Start(ov109_021D32B8, param0, 257);
    GF_ASSERT(param0->unk_DB4);
}

static void ov109_021D3318 (UnkStruct_ov109_021D0F70 * param0)
{
    SysTask_Done(param0->unk_DB4);
}

static void ov109_021D3328 (UnkStruct_ov109_021D0F70 * param0, UnkStruct_ov109_021D2D78 * param1)
{
    int v0;
    UnkStruct_ov109_021D32DC * v1 = &param0->unk_B54;
    UnkStruct_ov109_021D3268 * v2 = v1->unk_00;

    for (v0 = 0; v0 < 5; v0++, v2++) {
        if ((v2->unk_00 == 1) && (v2->unk_10 == param1)) {
            v2->unk_04 = 0;
            return;
        }
    }

    for (v0 = 0, v2 = v1->unk_00; v0 < 5; v0++, v2++) {
        if (v2->unk_00 == 0) {
            v2->unk_00 = 1;
            v2->unk_10 = param1;
            return;
        }
    }

    GF_ASSERT(0);
}

static void ov109_021D3370 (UnkStruct_ov109_021D3370 * param0)
{
    fx32 v0;
    UnkStruct_ov109_021D2D78 * v1 = param0->unk_14;

    switch (param0->unk_04) {
    case 0:
        v1->unk_2C.z = 0;
        param0->unk_10 = 0;
        param0->unk_08 = ((FX32_ONE * 30));
        param0->unk_0C = (FX32_ONE * 20);
        param0->unk_04++;
    case 1:
        v0 = sub_0201D15C(((param0->unk_10) / FX32_ONE)) * ((param0->unk_08) / FX32_ONE);
        v1->unk_2C.z = 0;
        ov109_021D39D4(&v1->unk_2C.z, v0);

        v0 = param0->unk_10;
        ov109_021D39D4(&param0->unk_10, param0->unk_0C);

        if (param0->unk_10 < v0) {
            param0->unk_08 = (u32)(param0->unk_08) >> 1;

            if (param0->unk_08 == 0) {
                v1->unk_2C.z = 0;
                memset(param0, 0, sizeof(UnkStruct_ov109_021D3370));
            }
        }
    }
}

static void ov109_021D33F0 (SysTask * param0, void * param1)
{
    int v0;
    UnkStruct_ov109_021D0F70 * v1 = param1;
    UnkStruct_ov109_021D3414 * v2 = &v1->unk_BB8;
    UnkStruct_ov109_021D3370 * v3 = v2->unk_00;

    for (v0 = 0; v0 < 5; v0++, v3++) {
        if (v3->unk_00) {
            ov109_021D3370(v3);
        }
    }
}

static void ov109_021D3414 (UnkStruct_ov109_021D0F70 * param0)
{
    UnkStruct_ov109_021D3414 * v0;

    v0 = &param0->unk_BB8;
    memset(v0, 0, sizeof(UnkStruct_ov109_021D3414));

    param0->unk_DB8 = SysTask_Start(ov109_021D33F0, param0, 258);
    GF_ASSERT(param0->unk_DB8);
}

static void ov109_021D3450 (UnkStruct_ov109_021D0F70 * param0)
{
    SysTask_Done(param0->unk_DB8);
}

static void ov109_021D3460 (UnkStruct_ov109_021D0F70 * param0, UnkStruct_ov109_021D2D78 * param1)
{
    int v0;
    UnkStruct_ov109_021D3414 * v1 = &param0->unk_BB8;
    UnkStruct_ov109_021D3370 * v2 = v1->unk_00;

    for (v0 = 0; v0 < 5; v0++, v2++) {
        if ((v2->unk_00 == 1) && (v2->unk_14 == param1)) {
            v2->unk_04 = 0;
            return;
        }
    }

    for (v0 = 0, v2 = v1->unk_00; v0 < 5; v0++, v2++) {
        if (v2->unk_00 == 0) {
            v2->unk_00 = 1;
            v2->unk_14 = param1;
            return;
        }
    }

    GF_ASSERT(0);
}

static void ov109_021D34A8 (UnkStruct_ov109_021D0F70 * param0, UnkStruct_ov109_021D34A8 * param1)
{
    UnkStruct_ov109_021D2AE4 * v0 = &param0->unk_D4;

    switch (param1->unk_00) {
    case 0:
        break;
    case 1:
        param1->unk_10 = (FX32_ONE * 4);
        param1->unk_0C = 0;
        param1->unk_00++;
    case 2:
        v0->unk_30.y -= (FX32_ONE * 1);

        if (v0->unk_30.y <= (FX32_ONE * -8)) {
            param1->unk_00++;
        }
        break;
    case 3:
        v0->unk_30.y += (FX32_ONE * 2);

        if (v0->unk_30.y >= (FX32_ONE * 0)) {
            v0->unk_30.y = 0;
            ov109_021D3218(param0);
            param1->unk_04 = 1;
            param1->unk_00++;
            Sound_PlayEffect(1623);
        }
        break;
    case 4:
        v0->unk_24.y = param1->unk_10;
        param1->unk_10 = -param1->unk_10;
        param1->unk_0C++;

        if ((param1->unk_0C & 0x3) == 0) {
            if (param1->unk_10 <= (FX32_ONE * 1)) {
                v0->unk_24.y = 0;
                param1->unk_00++;
            } else {
                param1->unk_10 >>= 1;
            }
        }
        break;
    case 5:
        if (ov109_021D3248(param0) == 0) {
            param1->unk_08 = 0;
            param1->unk_04 = 0;
            param1->unk_00 = 0;
            Sound_PlayEffect(1585);
        }
        break;
    }
}

static void ov109_021D3574 (SysTask * param0, void * param1)
{
    UnkStruct_ov109_021D0F70 * v0 = param1;
    UnkStruct_ov109_021D34A8 * v1 = &v0->unk_C30;

    ov109_021D34A8(v0, v1);
}

static void ov109_021D3584 (UnkStruct_ov109_021D0F70 * param0)
{
    UnkStruct_ov109_021D34A8 * v0;

    v0 = &param0->unk_C30;
    memset(v0, 0, sizeof(UnkStruct_ov109_021D34A8));
    param0->unk_DBC = SysTask_Start(ov109_021D3574, param0, 255);

    GF_ASSERT(param0->unk_DBC);
}

static void ov109_021D35BC (UnkStruct_ov109_021D0F70 * param0)
{
    SysTask_Done(param0->unk_DBC);
}

static void ov109_021D35CC (UnkStruct_ov109_021D0F70 * param0)
{
    UnkStruct_ov109_021D34A8 * v0;

    v0 = &param0->unk_C30;
    GF_ASSERT(v0->unk_04 == 0);
    v0->unk_08 = 1;
    v0->unk_00 = 1;
}

static BOOL ov109_021D35E8 (UnkStruct_ov109_021D0F70 * param0)
{
    UnkStruct_ov109_021D34A8 * v0;

    v0 = &param0->unk_C30;
    return v0->unk_04;
}

static BOOL ov109_021D35F4 (UnkStruct_ov109_021D0F70 * param0)
{
    UnkStruct_ov109_021D34A8 * v0;

    v0 = &param0->unk_C30;
    return v0->unk_08;
}

static void ov109_021D3600 (SysTask * param0, void * param1)
{
    UnkStruct_ov109_021D3600 * v0 = param1;

    switch (v0->unk_00) {
    case 0:
        if (v0->unk_0C < 4) {
            int v1[4] = {1501, 1501, 1501, 1603};

            v0->unk_04--;

            if (v0->unk_04 <= 0) {
                v0->unk_04 = 30;
                Sound_PlayEffect(v1[v0->unk_0C]);
                v0->unk_0C++;
            }
        }

        sub_0200D34C(v0->unk_14, FX32_ONE + (FX32_ONE / 2));

        if (sub_0200D3B8(v0->unk_14) == 0) {
            v0->unk_00++;
        }

        break;
    case 1:
        sub_0200D0F4(v0->unk_14);
        Heap_FreeToHeap(v0);
        SysTask_Done(param0);
    }
}

static SysTask * ov109_021D3684 (UnkStruct_ov109_021D0F70 * param0)
{
    UnkStruct_ov104_0223F9E0 v0;
    UnkStruct_ov109_021D3600 * v1 = Heap_AllocFromHeapAtEnd(95, sizeof(UnkStruct_ov109_021D3600));

    memset(v1, 0, sizeof(UnkStruct_ov109_021D3600));

    v0.unk_00 = 128;
    v0.unk_02 = 100;
    v0.unk_04 = 0;
    v0.unk_06 = 0;
    v0.unk_08 = 0;
    v0.unk_0C = 0;
    v0.unk_10 = 1;
    v0.unk_2C = 0;
    v0.unk_30 = 0;
    v0.unk_14[0] = 4;
    v0.unk_14[1] = 5;
    v0.unk_14[2] = 6;
    v0.unk_14[3] = 7;
    v0.unk_14[4] = 0xffffffff;
    v0.unk_14[5] = 0xffffffff;

    v1->unk_14 = ov109_021D24E0(param0, &v0);
    sub_0200D330(v1->unk_14);

    v1->unk_10 = param0;
    {
        SysTask * v2 = SysTask_Start(ov109_021D3600, v1, 0);

        GF_ASSERT(v2 != NULL);
        return v2;
    }
}

static void ov109_021D3700 (UnkStruct_ov109_021D0F70 * param0, UnkStruct_ov109_021D3700 * param1)
{
    switch (param1->unk_00) {
    case 0:
        break;
    case 1:
        ov109_021D228C(param0);
        Sound_PlayEffect(1508);
        param1->unk_04 = 0;
        param1->unk_00++;
    case 2:
        param1->unk_04++;

        if (param1->unk_04 >= 2) {
            param1->unk_04 = 0;
            param1->unk_00++;
            ov109_021D22A4(param0);
        }
        break;
    case 3:
        param1->unk_04++;

        if (param1->unk_04 >= 4) {
            ov109_021D228C(param0);
            param1->unk_04 = 0;
            param1->unk_00++;
        }
        break;
    case 4:
        param1->unk_04++;

        if (param1->unk_04 >= 2) {
            ov109_021D2298(param0);
            param1->unk_02 = 0;
            param1->unk_00 = 0;
        }
        break;
    }
}

static void ov109_021D3788 (SysTask * param0, void * param1)
{
    UnkStruct_ov109_021D0F70 * v0 = param1;
    UnkStruct_ov109_021D3700 * v1 = &v0->unk_C44;

    ov109_021D3700(v0, v1);
}

static void ov109_021D379C (UnkStruct_ov109_021D0F70 * param0)
{
    UnkStruct_ov109_021D3700 * v0;

    v0 = &param0->unk_C44;
    memset(v0, 0, sizeof(UnkStruct_ov109_021D3700));
    param0->unk_DC0 = SysTask_Start(ov109_021D3788, param0, 259);
    GF_ASSERT(param0->unk_DC0);
}

static void ov109_021D37E0 (UnkStruct_ov109_021D0F70 * param0)
{
    SysTask_Done(param0->unk_DC0);
}

static BOOL ov109_021D37F0 (UnkStruct_ov109_021D0F70 * param0)
{
    UnkStruct_ov109_021D3700 * v0;

    v0 = &param0->unk_C44;
    return v0->unk_02;
}

static void ov109_021D37FC (UnkStruct_ov109_021D0F70 * param0)
{
    UnkStruct_ov109_021D3700 * v0;

    v0 = &param0->unk_C44;
    GF_ASSERT(v0->unk_02 == 0);
    v0->unk_02 = 1;
    v0->unk_00 = 1;
}

static void ov109_021D3818 (UnkStruct_ov109_021D0F70 * param0, UnkStruct_ov109_021D3818 * param1)
{
    switch (param1->unk_00) {
    case 0:
        break;
    case 1:
    {
        static int v0[16] = {
            4, 6, 8, 10, 11, 12, 12, 12, 11, 10, 9, 8, 6, 4, 0, 0
        };

        param1->unk_0C->unk_50.y = (FX32_ONE * (v0[param1->unk_04]));
        param1->unk_04++;

        if (param1->unk_04 >= 16) {
            param1->unk_04 = 0;
            param1->unk_00++;
        }
    }
    break;
    case 2:
        param1->unk_08++;

        if (param1->unk_08 >= 15) {
            param1->unk_08 = 0;
            param1->unk_00 = 1;
        }
        break;
    }
}

static void ov109_021D3864 (SysTask * param0, void * param1)
{
    int v0;
    UnkStruct_ov109_021D0F70 * v1 = param1;
    UnkStruct_ov109_021D3884 * v2 = &v1->unk_C4C;
    UnkStruct_ov109_021D3818 * v3 = v2->unk_00;

    for (v0 = 0; v0 < 5; v0++, v3++) {
        ov109_021D3818(v1, v3);
    }
}

static void ov109_021D3884 (UnkStruct_ov109_021D0F70 * param0)
{
    UnkStruct_ov109_021D3884 * v0;

    v0 = &param0->unk_C4C;
    memset(v0, 0, sizeof(UnkStruct_ov109_021D3884));
    param0->unk_DC4 = SysTask_Start(ov109_021D3864, param0, 260);
    GF_ASSERT(param0->unk_DC4);
}

static void ov109_021D38BC (UnkStruct_ov109_021D0F70 * param0)
{
    SysTask_Done(param0->unk_DC4);
}

static void ov109_021D38CC (UnkStruct_ov109_021D0F70 * param0, UnkStruct_ov109_021D2D78 * param1)
{
    int v0 = param1->unk_0C;
    UnkStruct_ov109_021D3884 * v1 = &param0->unk_C4C;
    UnkStruct_ov109_021D3818 * v2 = &v1->unk_00[v0];

    GF_ASSERT(v0 < 5);
    GF_ASSERT(v2->unk_00 == 0);

    v2->unk_00 = 1;
    v2->unk_0C = param1;
}

static void ov109_021D38F8 (UnkStruct_ov109_021D0F70 * param0)
{
    u32 v0 = param0->unk_20;
    int v1 = 0, v2 = param0->unk_2C.unk_04;
    UnkStruct_ov109_021D1334 * v3 = &param0->unk_190;

    while (v1 < v2) {
        if (v3->unk_140[v1].unk_00 && (v0 & (1 << v3->unk_140[v1].unk_0C))) {
            ov109_021D38CC(param0, &v3->unk_140[v1]);
        }

        v1++;
    }
}

static void ov109_021D3948 (SysTask * param0, void * param1)
{
    int v0 = 0;
    UnkStruct_ov109_021D3948 * v1 = param1;

    if (v1->unk_04 == 1) {
        v1->unk_08--;

        if ((int)v1->unk_08 <= 0) {
            v1->unk_08 = 0;
            v0 = 1;
        }
    } else {
        v1->unk_08++;

        if ((int)v1->unk_08 >= 8) {
            v1->unk_08 = 8;
            v0 = 1;
        }
    }

    ov109_021D2344(v1->unk_00, v1->unk_08);

    if (v0 == 1) {
        Heap_FreeToHeap(v1);
        SysTask_Done(param0);
    }
}

static void ov109_021D3990 (UnkStruct_ov109_021D0F70 * param0, int param1)
{
    SysTask * v0;
    u32 v1[2] = {0, 8};
    UnkStruct_ov109_021D3948 * v2 = Heap_AllocFromHeapAtEnd(95, sizeof(UnkStruct_ov109_021D3948));

    v2->unk_00 = param0;
    v2->unk_04 = param1;
    v2->unk_08 = v1[param1];

    v0 = SysTask_Start(ov109_021D3948, v2, 0);
    GF_ASSERT(v0 != NULL);
}

static void ov109_021D39D4 (fx32 * param0, fx32 param1)
{
    (*param0) += param1;

    while ((*param0) < 0) {
        (*param0) += (FX32_ONE * 360);
    }

    (*param0) %= (FX32_ONE * 360);
}

static void ov109_021D39FC (UnkStruct_ov109_021D0F70 * param0, fx32 param1)
{
    ov109_021D2AE4(&param0->unk_D4, param1);
    ov109_021D2D44(param0, param1);
}

static BOOL ov109_021D3A14 (UnkStruct_ov109_021D0F70 * param0)
{
    param0->unk_08++;

    if (param0->unk_08 < (30 * 20)) {
        return 0;
    }

    param0->unk_08 = (30 * 20);
    return 1;
}

static void * ov109_021D3A2C (UnkStruct_ov109_021D0F70 * param0, u32 param1, BOOL param2)
{
    void * v0;
    u32 v1 = NARC_GetMemberSize(param0->unk_D80, param1);

    if (param2 == 1) {
        v0 = Heap_AllocFromHeap(95, v1);
    } else {
        v0 = Heap_AllocFromHeapAtEnd(95, v1);
    }

    NARC_ReadWholeMember(param0->unk_D80, param1, v0);
    return v0;
}

void ov109_021D3A68 (UnkStruct_ov109_021D0F70 * param0, u32 param1)
{
    if (param1 != 0) {
        param0->unk_2C.unk_08 = param1;
    }
}

void ov109_021D3A70 (UnkStruct_ov109_021D0F70 * param0, const UnkStruct_0209C0F0 * param1)
{
    param0->unk_2C.unk_10 = 1;
    param0->unk_2C.unk_2C = *param1;
}

static void * ov109_021D3A94 (UnkStruct_ov109_021D0F70 * param0, u32 param1)
{
    GF_ASSERT(param1 < 32);
    memset(param0->unk_AC, 0, 32);
    return param0->unk_AC;
}

static void * ov109_021D3AB4 (UnkStruct_ov109_021D0F70 * param0)
{
    return param0->unk_AC;
}

static BOOL ov109_021D3AB8 (UnkStruct_ov109_021D0F70 * param0, u16 param1)
{
    u32 v0 = param0->unk_D0->unk_40;

    if ((v0 & param1)) {
        return 1;
    }

    return 0;
}

static BOOL ov109_021D3ACC (UnkStruct_ov109_021D0F70 * param0)
{
    int v0 = 0;
    int v1 = param0->unk_CC->unk_08 - 1;
    u32 v2 = param0->unk_D0->unk_42;

    while (v2) {
        v0 += (v2 & 0x1);
        v2 >>= 1;
    }

    if (v0 >= v1) {
        return 1;
    }

    return 0;
}

static int ov109_021D3B04 (UnkStruct_ov109_021D0F70 * param0)
{
    int v0 = 0;
    u32 v1 = param0->unk_D0->unk_42;

    while (v1) {
        v0 += (v1 & 0x1);
        v1 >>= 1;
    }

    return v0;
}

void ov109_021D3B24 (UnkStruct_ov109_021D0F70 * param0, const UnkStruct_ov109_021D1048 * param1)
{
    param0->unk_2C.unk_44[param1->unk_00] = *param1;

    if (param1->unk_02 == sub_0203608C()) {
        param0->unk_2C.unk_00 = param1->unk_00;
    }
}

void ov109_021D3B50 (UnkStruct_ov109_021D0F70 * param0, int param1)
{
    param0->unk_2C.unk_04 = param1;
}

static BOOL ov109_021D3B54 (UnkStruct_ov109_021D0F70 * param0, int param1)
{
    if (param1 != 0) {
        u32 v0 = 1 << (u32)param1;

        if ((param0->unk_D0->unk_42 & v0) == 0) {
            return 0;
        }
    }

    return 1;
}

static void ov109_021D3B70 (UnkStruct_ov109_021D0F70 * param0, int param1)
{
    int v0, v1;
    Party * v2, * v3;
    Pokemon * v4, * v5;

    v2 = param0->unk_24;
    v3 = (Party *)sub_0209C188(param0->unk_D0, param1);

    v0 = param0->unk_CC->unk_04;
    v1 = param0->unk_2C.unk_18[param1];

    v4 = Party_GetPokemonBySlotIndex(v2, v0);
    v5 = Party_GetPokemonBySlotIndex(v3, v1);

    sub_0209304C(v5, sub_02032EE8(sub_0203608C()), 5, 0, 11);
    Pokemon_Copy(v5, v4);
}

static int ov109_021D3BC4 (UnkStruct_ov109_021D0F70 * param0)
{
    int v0 = 0;
    u32 v1 = param0->unk_D0->unk_46;

    while (v1) {
        v0 += (v1 & 0x1);
        v1 >>= 1;
    }

    return v0;
}

void ov109_021D3BE4 (UnkStruct_ov109_021D0F70 * param0, int param1, int param2)
{
    param0->unk_2C.unk_18[param1] = param2;
}

void ov109_021D3BEC (UnkStruct_ov109_021D0F70 * param0, const UnkStruct_ov109_021D17EC * param1)
{
    param0->unk_2C.unk_34 = *param1;
    param0->unk_2C.unk_14 = 1;
}

static BOOL ov109_021D3C08 (UnkStruct_ov109_021D0F70 * param0, fx32 param1, int param2)
{
    int v0;
    fx32 v1;
    u32 v2, v3;
    const UnkStruct_ov109_021D5C14 * v4;
    const UnkStruct_ov109_021D59AC * v5;

    ov109_021D39D4(&param1, -param0->unk_D4.unk_3C);

    v1 = param1;
    ov109_021D39D4(&v1, ((FX32_ONE * -4)));
    v2 = ((v1) / FX32_ONE);

    v1 = param1;
    ov109_021D39D4(&v1, ((FX32_ONE * 5)));
    v3 = ((v1) / FX32_ONE);

    v4 = &Unk_ov109_021D5C14[param2];
    v0 = v4->unk_00;
    v5 = v4->unk_04;

    while (v0) {
        if (((v2 >= v5->unk_00) && (v2 <= v5->unk_02)) || ((v3 >= v5->unk_00) && (v3 <= v5->unk_02))) {
            return 1;
        }

        v5++;
        v0--;
    }

    return 0;
}

static BOOL ov109_021D3C94 (Party * param0)
{
    int v0, v1;
    Pokemon * v2;

    v1 = Party_GetCurrentCount(param0);

    for (v0 = 0; v0 < v1; v0++) {
        v2 = Party_GetPokemonBySlotIndex(param0, v0);

        if (Pokemon_GetValue(v2, MON_DATA_IS_EGG, NULL)) {
            if (Pokemon_GetValue(v2, MON_DATA_3, NULL)) {
                return 1;
            }
        }
    }

    return 0;
}

static BOOL ov109_021D3CD8 (UnkStruct_ov109_021D0F70 * param0)
{
    if (ov109_021D3C94(param0->unk_24) == 1) {
        return 1;
    }

    {
        int v0;
        Party * v1;

        for (v0 = 0; v0 < 5; v0++) {
            if (ov109_021D3B54(param0, v0)) {
                v1 = sub_0209C188(param0->unk_D0, v0);

                if (ov109_021D3C94(v1) == 1) {
                    return 1;
                }
            }
        }
    }

    return 0;
}

static int ov109_021D3D1C (UnkStruct_ov109_021D0F70 * param0)
{
    int v0 = 0;
    u32 v1 = param0->unk_D0->unk_4A;

    while (v1) {
        v0 += v1 & 0x1;
        v1 >>= 1;
    }

    return v0;
}

static BOOL ov109_021D3D3C (UnkStruct_ov109_021D0F70 * param0)
{
    int v0 = 0;
    u32 v1 = param0->unk_D0->unk_48;

    if (v1) {
        return 1;
    }

    return 0;
}

static const UnkStruct_ov61_0222C884 Unk_ov109_021D59B8[1] = {
    0x1,
    0x2,
    0x13,
    0x1A,
    0x4,
    0xF,
    0x28
};

static const UnkStruct_ov61_0222C884 Unk_ov109_021D5A04[2] = {
    {0x1, 0xC, 0x12, 0x8, 0x2, 0xF, 0x94},
    {0x1, 0xC, 0x6, 0x8, 0x2, 0xF, 0xBC}
};

static const UnkStruct_ov61_0222C884 Unk_ov109_021D5AB0[3] = {
    {0x1, 0xC, 0x12, 0x8, 0x2, 0xF, 0x94},
    {0x1, 0x5, 0xA, 0x8, 0x2, 0xF, 0xBC},
    {0x1, 0x13, 0xA, 0x8, 0x2, 0xF, 0xE4}
};

static const UnkStruct_ov61_0222C884 Unk_ov109_021D5B54[4] = {
    {0x1, 0xC, 0x12, 0x8, 0x2, 0xF, 0x94},
    {0x1, 0x4, 0xD, 0x8, 0x2, 0xF, 0xBC},
    {0x1, 0xC, 0x6, 0x8, 0x2, 0xF, 0xE4},
    {0x1, 0x14, 0xD, 0x8, 0x2, 0xF, 0x10C}
};

static const UnkStruct_ov61_0222C884 Unk_ov109_021D5B94[5] = {
    {0x1, 0xC, 0x13, 0x8, 0x2, 0xF, 0x94},
    {0x1, 0x4, 0xE, 0x8, 0x2, 0xF, 0xBC},
    {0x1, 0x6, 0x9, 0x8, 0x2, 0xF, 0xE4},
    {0x1, 0x12, 0x9, 0x8, 0x2, 0xF, 0x10C},
    {0x1, 0x14, 0xE, 0x8, 0x2, 0xF, 0X134}
};

static const UnkStruct_ov61_0222C884 * const Unk_ov109_021D5A68[5 + 1] = {
    NULL,
    NULL,
    Unk_ov109_021D5A04,
    Unk_ov109_021D5AB0,
    Unk_ov109_021D5B54,
    Unk_ov109_021D5B94
};

static const u16 Unk_ov109_021D5C44[5 + 1][5] = {
    {0x0, 0x0, 0x0, 0x0, 0x0},
    {0x0, 0x0, 0x0, 0x0, 0x0},
    {0x0, 0xB4, 0x0, 0x0, 0x0},
    {0x0, 0xF0, 0x78, 0x0, 0x0},
    {0x0, 0x10E, 0xB4, 0x5A, 0x0},
    {0x0, 0x120, 0xD8, 0x90, 0x48}
};

static const u16 Unk_ov109_021D5C80[5 + 1][5] = {
    {0x0, 0x0, 0x0, 0x0, 0x0},
    {0x0, 0x0, 0x0, 0x0, 0x0},
    {0x5A, 0x10E, 0x0, 0x0, 0x0},
    {0x5A, 0xD2, 0x14A, 0x0, 0x0},
    {0x5A, 0xB4, 0x10E, 0x0, 0x0},
    {0x5A, 0xA2, 0xEA, 0x132, 0x12}
};

static const UnkStruct_ov109_021D59AC Unk_ov109_021D59AC = {
    0x0,
    0xB4
};

static const UnkStruct_ov109_021D59AC Unk_ov109_021D59B0[2] = {
    {0x0, 0xC6},
    {0x156, 0x167}
};

static const UnkStruct_ov109_021D59AC Unk_ov109_021D59D0[2] = {
    {0x25, 0x8E},
    {0xD7, 0x143}
};

static const UnkStruct_ov109_021D59AC Unk_ov109_021D59C0[2] = {
    {0x0, 0xD7},
    {0x143, 0x167}
};

static const UnkStruct_ov109_021D5C14 Unk_ov109_021D5C14[5 + 1] = {
    {0x0, NULL},
    {0x0, NULL},
    {0x1, &Unk_ov109_021D59AC},
    {0x2, Unk_ov109_021D59B0},
    {0x2, Unk_ov109_021D59D0},
    {0x2, Unk_ov109_021D59C0}
};

static const u32 Unk_ov109_021D5BE4[5 + 1][2] = {
    {0x0, 0x0},
    {0x0, 0x0},
    {0x9F, 0xA3},
    {0x9F, 0xA3},
    {0xA4, 0xA8},
    {0xAF, 0xB7}
};

static const u32 Unk_ov109_021D5A80[5 + 1] = {
    0x0,
    0x0,
    0x1,
    0x2,
    0x3,
    0x4
};

static const fx32 Unk_ov109_021D5A98[5 + 1] = {
    0x0,
    0x0,
    ((FX32_ONE * -72)),
    ((FX32_ONE * 0)),
    ((FX32_ONE * -181)),
    ((FX32_ONE * 0))
};
