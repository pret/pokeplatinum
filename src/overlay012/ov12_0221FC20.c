#include "overlay012/ov12_0221FC20.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/battle_system.h"
#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_02014014_decl.h"
#include "struct_defs/chatot_cry.h"

#include "battle/ov16_0223DF00.h"
#include "battle/struct_ov16_0223E0C8.h"
#include "battle/struct_ov16_02264408.h"
#include "battle/struct_ov16_02264408_sub1.h"
#include "battle/struct_ov16_02265BBC.h"
#include "overlay012/funcptr_ov12_02239E68.h"
#include "overlay012/funcptr_ov12_02239EEC.h"
#include "overlay012/is_form_symmetrical.h"
#include "overlay012/ov12_022237EC.h"
#include "overlay012/ov12_02225864.h"
#include "overlay012/ov12_02226998.h"
#include "overlay012/ov12_02235254.h"
#include "overlay012/ov12_022380BC.h"
#include "overlay012/struct_ov12_0222118C_decl.h"
#include "overlay012/struct_ov12_022211D8_decl.h"
#include "overlay012/struct_ov12_022222D4_decl.h"
#include "overlay012/struct_ov12_02223764.h"
#include "overlay012/struct_ov12_02226504_decl.h"
#include "overlay012/struct_ov12_022380DC.h"
#include "overlay017/ov17_022413D8.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "inlines.h"
#include "narc.h"
#include "palette.h"
#include "pltt_transfer.h"
#include "pokemon.h"
#include "spl.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_system.h"
#include "sprite_util.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "unk_02005474.h"
#include "unk_0200762C.h"
#include "unk_02014000.h"
#include "vram_transfer.h"

typedef struct UnkStruct_ov12_02223178_t {
    u8 unk_00;
    u8 unk_01;
    u16 unk_02;
    s32 unk_04;
    u16 unk_08;
    u16 unk_0A;
    u32 unk_0C;
    u16 unk_10;
    u16 unk_12;
    u16 unk_14;
    u16 unk_16;
    int unk_18;
    UnkStruct_02014014 *unk_1C[16];
    SPLEmitter *unk_5C[20];
    SpriteSystem *unk_AC;
    UnkStruct_ov16_0223E0C8 *unk_B0[4];
    u8 unk_C0[4];
    PokemonSprite *unk_C4[4];
    u32 unk_D4;
    u16 unk_D8[4];
    u8 unk_E0[4];
    u8 unk_E4[4];
    u8 unk_E8[4];
    u32 unk_EC[4];
    u32 unk_FC[4];
    ChatotCry *unk_10C;
    u8 *unk_110;
    u16 *unk_114;
    int unk_118;
} UnkStruct_ov12_02223178;

typedef struct {
    u32 *unk_00;
    u8 unk_04;
    u8 unk_05;
    BOOL unk_08;
} UnkStruct_ov12_0221FCDC_sub1;

typedef struct {
    UnkStruct_ov12_0221FCDC *unk_00;
    SpriteManager *unk_04;
    ManagedSprite *unk_08;
    BOOL unk_0C;
} UnkStruct_ov12_02221810;

typedef struct UnkStruct_ov12_0221FCDC_t {
    int unk_00;
    int unk_04;
    BOOL unk_08;
    BOOL unk_0C;
    BOOL unk_10;
    void *unk_14;
    u32 *unk_18;
    u32 *unk_1C[3];
    UnkStruct_ov12_0221FCDC_sub1 unk_28[3];
    UnkStruct_ov12_02221810 unk_48[2];
    u8 unk_68[16];
    u8 unk_78[16];
    s8 unk_88;
    u8 unk_89;
    u16 unk_8A;
    u16 unk_8C;
    s32 unk_90[10];
    UnkFuncPtr_ov12_02239EEC unk_B8;
    UnkStruct_ov12_02223178 *unk_BC;
    BgConfig *unk_C0;
    PaletteData *unk_C4;
    SpriteManager *unk_C8[4];
    ManagedSprite *unk_D8[10];
    SpriteTemplate unk_100;
    SpriteManager *unk_134;
    ManagedSprite *unk_138[5];
    BOOL unk_14C[5];
    UnkStruct_ov12_0222118C *unk_160[5];
    UnkStruct_ov12_022211D8 *unk_174;
    u8 unk_178;
    u8 unk_179;
    u8 unk_17A;
    u8 unk_17B;
    UnkStruct_ov12_022222D4 *unk_17C;
    UnkStruct_ov16_02264408_sub1 unk_180;
    int unk_198;
    u8 unk_19C[4];
    NARC *unk_1A0[6];
} UnkStruct_ov12_0221FCDC;

typedef struct UnkStruct_ov12_02220314_t {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    u8 unk_18;
    u16 unk_1A;
    u32 unk_1C[7];
    UnkStruct_ov12_0221FCDC *unk_38;
} UnkStruct_ov12_02220314;

typedef struct UnkStruct_ov12_02221BBC_t {
    int unk_00;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
    u8 unk_0C;
    u8 unk_0D;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C[10];
    u16 unk_44_0 : 1;
    u16 unk_44_1 : 1;
    u16 unk_44_2 : 14;
    UnkStruct_ov12_0221FCDC *unk_48;
} UnkStruct_ov12_02221BBC;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    s16 unk_04;
    s16 unk_06;
    int unk_08;
} UnkStruct_ov12_022224F8_sub1;

typedef struct {
    UnkStruct_ov12_022224F8_sub1 unk_00[16];
    UnkStruct_ov12_02226504 *unk_C0;
} UnkStruct_ov12_022224F8;

typedef struct UnkStruct_ov12_022222D4_t {
    BgConfig *unk_00;
    s16 unk_04;
    s16 unk_06;
    s16 unk_08;
    s16 unk_0A;
    int unk_0C;
    int unk_10;
    BOOL unk_14;
    BOOL unk_18;
    UnkStruct_ov12_022224F8 *unk_1C;
} UnkStruct_ov12_022222D4;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    PokemonSprite *unk_04;
    SysTask *unk_08;
} UnkStruct_ov12_0222118C_sub1;

typedef struct UnkStruct_ov12_0222118C_t {
    ManagedSprite *unk_00;
    UnkStruct_ov12_0222118C_sub1 unk_04;
} UnkStruct_ov12_0222118C;

typedef struct UnkStruct_ov12_022211D8_t {
    BgConfig *unk_00;
    UnkStruct_ov12_0222118C_sub1 unk_04;
} UnkStruct_ov12_022211D8;

static void ov12_022224F8(SysTask *param0, void *param1);
static void ov12_0221FC20(UnkStruct_ov12_0221FCDC *param0);
static void ov12_0221FC44(UnkStruct_ov12_0221FCDC *param0);
static SysTask *ov12_0221FC68(u8 param0, UnkStruct_ov12_0221FCDC *param1, SysTaskFunc param2, void *param3, u32 param4);
static void ov12_0221FCA4(u8 param0, UnkStruct_ov12_0221FCDC *param1, SysTask *param2);
static UnkStruct_ov12_02220314 *ov12_02220314(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02220344(UnkStruct_ov12_0221FCDC *param0, UnkStruct_ov12_02220314 *param1);
static void ov12_0222035C(SysTask *param0, void *param1);
static BOOL ov12_0222039C(UnkStruct_ov12_02220314 *param0);
static BOOL ov12_022203A0(UnkStruct_ov12_02220314 *param0);
static BOOL ov12_022203FC(UnkStruct_ov12_02220314 *param0);
static BOOL ov12_02220404(UnkStruct_ov12_02220314 *param0);
static BOOL ov12_0222040C(UnkStruct_ov12_02220314 *param0);
static BOOL ov12_0222044C(UnkStruct_ov12_02220314 *param0);
static void ov12_022204C4(UnkStruct_ov12_0221FCDC *param0);
static void ov12_022204E4(UnkStruct_ov12_0221FCDC *param0);
static void ov12_0222070C(UnkStruct_ov12_0221FCDC *param0);
static void ov12_0222074C(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02220798(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02222950(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02221284(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02221288(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02222CAC(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02222CDC(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02220E14(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02220E44(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02220504(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02220524(UnkStruct_ov12_0221FCDC *param0);
static void ov12_022206A4(UnkStruct_ov12_0221FCDC *param0);
static void ov12_022206E8(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02220F30(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02221064(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02221098(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02222724(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02222774(UnkStruct_ov12_0221FCDC *param0);
static void ov12_022227CC(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02222820(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02222840(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02222860(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02222984(UnkStruct_ov12_0221FCDC *param0);
static void ov12_022229BC(UnkStruct_ov12_0221FCDC *param0);
static void ov12_022229D8(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02222B94(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02222BF8(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02222CE4(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02222C50(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02222C54(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02220E70(UnkStruct_ov12_0221FCDC *param0);
static void ov12_0222128C(UnkStruct_ov12_0221FCDC *param0);
static void ov12_0222144C(UnkStruct_ov12_0221FCDC *param0);
static void ov12_022214C4(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02221580(UnkStruct_ov12_0221FCDC *param0);
static void ov12_022217B4(UnkStruct_ov12_0221FCDC *param0);
static void ov12_022217E0(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02221A00(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02221A14(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02221A30(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02221424(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02220EA8(UnkStruct_ov12_0221FCDC *param0);
static void ov12_022228DC(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02222A78(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02222AF0(UnkStruct_ov12_0221FCDC *param0);
static void ov12_0222293C(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02222940(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02222944(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02221A4C(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02221A50(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02222948(UnkStruct_ov12_0221FCDC *param0);
static void ov12_0222294C(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02222968(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02220F5C(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02220FA0(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02220FFC(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02221024(UnkStruct_ov12_0221FCDC *param0);
static void ov12_022230D4(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02223134(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02220ED0(UnkStruct_ov12_0221FCDC *param0);
static void ov12_022209A8(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02220A3C(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02220B8C(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02220C44(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02220CFC(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02220D3C(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02220D90(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02220DE8(UnkStruct_ov12_0221FCDC *param0);
static void ov12_022230CC(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02223160(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02222CE8(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02222D84(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02222DCC(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02222E2C(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02222E74(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02222EBC(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02222FC8(UnkStruct_ov12_0221FCDC *param0);
static void ov12_0222307C(UnkStruct_ov12_0221FCDC *param0);
static void ov12_022230A8(UnkStruct_ov12_0221FCDC *param0);
static void ov12_02221834(UnkStruct_ov12_0221FCDC *param0);
static void ov12_022219E8(UnkStruct_ov12_0221FCDC *param0);
static void ov12_0222048C(UnkStruct_ov12_0221FCDC *param0);
static int ov12_022210A8(UnkStruct_ov12_0221FCDC *param0, int param1);
static BOOL ov12_02221A54(UnkStruct_ov12_02221BBC *param0, UnkStruct_ov12_0221FCDC *param1, int param2);
static void ov12_02221AA8(UnkStruct_ov12_02221BBC *param0, UnkStruct_ov12_0221FCDC *param1, int param2, int param3);
static int ov12_02221B54(int param0, int param1);
static void ov12_02221B64(UnkStruct_ov12_02221BBC *param0);
static BOOL ov12_02221C50(SysTask *param0, UnkStruct_ov12_02221BBC *param1);
static BOOL ov12_02221F44(SysTask *param0, UnkStruct_ov12_02221BBC *param1);
static BOOL ov12_022222A4(SysTask *param0, UnkStruct_ov12_02221BBC *param1);
static BOOL ov12_02221D50(SysTask *param0, UnkStruct_ov12_02221BBC *param1);
static BOOL ov12_0222206C(SysTask *param0, UnkStruct_ov12_02221BBC *param1);
static BOOL ov12_022222B0(SysTask *param0, UnkStruct_ov12_02221BBC *param1);
static BOOL ov12_0222235C(UnkStruct_ov12_02221BBC *param0);
static BOOL ov12_02222360(UnkStruct_ov12_02221BBC *param0);
static BOOL ov12_022226D0(UnkStruct_ov12_02221BBC *param0);
static BOOL ov12_022226E8(UnkStruct_ov12_02221BBC *param0);
static BOOL ov12_0222240C(UnkStruct_ov12_02221BBC *param0);
static BOOL ov12_022224E4(UnkStruct_ov12_02221BBC *param0);

static inline int inline_ov12_022204C4_sub_sub(u32 *param0, u8 param1, u8 param2);
static inline int inline_ov12_022204C4_sub(u32 *param0, u8 param1);
static inline int inline_ov12_022204C4(u32 *param0);

static const s16 Unk_ov12_02238660[] = {
    0x20,
    0x1C,
    0x18,
    0x14,
    0x10,
    0xC,
    0x8,
    0x4,
    0x4,
    0x8,
    0xC,
    0x10,
    0x14,
    0x18,
    0x1C,
    0x20
};

static void ov12_0221FC20(UnkStruct_ov12_0221FCDC *param0)
{
    if (param0->unk_89 == 0) {
        param0->unk_89 == 0;
        param0->unk_B8 = ov12_0221FC44;
    } else {
        param0->unk_89--;
    }
}

static void ov12_0221FC44(UnkStruct_ov12_0221FCDC *param0)
{
    UnkFuncPtr_ov12_02239EEC v0;

    do {
        v0 = ov12_02223164(*(param0->unk_18));
        v0(param0);
    } while (param0->unk_89 == 0 && param0->unk_10 == 1);
}

static SysTask *ov12_0221FC68(u8 param0, UnkStruct_ov12_0221FCDC *param1, SysTaskFunc param2, void *param3, u32 param4)
{
    SysTask *v0;

    switch (param0) {
    case 1:
        param1->unk_8A++;
        break;
    case 2:
        param1->unk_8C++;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    v0 = SysTask_Start(param2, param3, param4);
    return v0;
}

static void ov12_0221FCA4(u8 param0, UnkStruct_ov12_0221FCDC *param1, SysTask *param2)
{
    switch (param0) {
    case 1:
        param1->unk_8A--;
        break;
    case 2:
        param1->unk_8C--;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    SysTask_Done(param2);
}

UnkStruct_ov12_0221FCDC *ov12_0221FCDC(int param0)
{
    int v0;
    UnkStruct_ov12_0221FCDC *v1 = NULL;

    v1 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov12_0221FCDC));

    if (v1 == NULL) {
        GF_ASSERT(v1 != NULL);
        return NULL;
    }

    memset(v1, 0, sizeof(UnkStruct_ov12_0221FCDC));

    v1->unk_00 = param0;
    v1->unk_08 = 0;
    v1->unk_BC = Heap_AllocFromHeap(v1->unk_00, sizeof(UnkStruct_ov12_02223178));
    v1->unk_1A0[0] = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, param0);
    v1->unk_1A0[1] = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, param0);
    v1->unk_1A0[2] = NARC_ctor(NARC_INDEX_WAZAEFFECT__EFFECTCLACT__WECHAR, param0);
    v1->unk_1A0[3] = NARC_ctor(NARC_INDEX_WAZAEFFECT__EFFECTCLACT__WEPLTT, param0);
    v1->unk_1A0[4] = NARC_ctor(NARC_INDEX_WAZAEFFECT__EFFECTCLACT__WECELL, param0);
    v1->unk_1A0[5] = NARC_ctor(NARC_INDEX_WAZAEFFECT__EFFECTCLACT__WECELLANM, param0);

    if (v1->unk_BC == NULL) {
        GF_ASSERT(v1->unk_BC != NULL);
        return NULL;
    }

    memset(v1->unk_BC, 0, sizeof(UnkStruct_ov12_02223178));

    v1->unk_0C = 0;
    v1->unk_18 = NULL;

    for (v0 = 0; v0 < 4; v0++) {
        v1->unk_C8[v0] = NULL;
    }

    for (v0 = 0; v0 < (4 + 1); v0++) {
        v1->unk_160[v0] = NULL;
    }

    v1->unk_174 = NULL;
    v1->unk_0C = 1;

    return v1;
}

void ov12_0221FDC0(UnkStruct_ov12_0221FCDC *param0, BOOL param1)
{
    GF_ASSERT(param0 != NULL);
    param0->unk_08 = param1;
}

BOOL ov12_0221FDD4(UnkStruct_ov12_0221FCDC *param0)
{
    GF_ASSERT(param0 != NULL);
    return param0->unk_08;
}

int ov12_0221FDE4(UnkStruct_ov12_0221FCDC *param0)
{
    GF_ASSERT(param0 != NULL);
    return param0->unk_00;
}

BOOL ov12_0221FDF4(UnkStruct_ov12_0221FCDC *param0)
{
    if (ov12_022201B4(param0) == 0) {
        return 0;
    }

    {
        int v0;

        for (v0 = 0; v0 < 6; v0++) {
            NARC_dtor(param0->unk_1A0[v0]);
        }
    }

    Heap_FreeToHeap(param0->unk_BC);
    Heap_FreeToHeap(param0);

    return 1;
}

BOOL ov12_0221FE30(UnkStruct_ov12_0221FCDC *param0, UnkStruct_ov16_02265BBC *param1, u16 param2, UnkStruct_ov16_02264408 *param3)
{
    int v0;
    int v1;

    v1 = param2;

    ov12_02220474();

    if (ov12_022201B4(param0) == 0) {
        return 0;
    }

    for (v0 = 0; v0 < 16; v0++) {
        param0->unk_68[v0] = 1;
        param0->unk_78[v0] = 0;
    }

    for (v0 = 0; v0 < (8 + 2); v0++) {
        param0->unk_90[v0] = 0;
    }

    for (v0 = 0; v0 < 3; v0++) {
        param0->unk_28[v0].unk_08 = 0;
        param0->unk_28[v0].unk_00 = NULL;
        param0->unk_28[v0].unk_04 = 0;
        param0->unk_28[v0].unk_05 = 0;
    }

    param0->unk_BC->unk_00 = param1->unk_00;
    param0->unk_BC->unk_01 = param1->unk_01;
    param0->unk_BC->unk_02 = param1->unk_02;
    param0->unk_BC->unk_04 = param1->unk_04;
    param0->unk_BC->unk_08 = param1->unk_08;
    param0->unk_BC->unk_0A = param1->unk_0C;
    param0->unk_BC->unk_0C = param1->unk_10;
    param0->unk_BC->unk_10 = param1->unk_0A;
    param0->unk_BC->unk_12 = param1->unk_54;
    param0->unk_BC->unk_14 = param1->unk_14;
    param0->unk_BC->unk_16 = param1->unk_16;
    param0->unk_BC->unk_118 = param1->unk_0E_1;
    param0->unk_BC->unk_AC = param3->unk_00;

    GF_ASSERT(param3->unk_00 != NULL);

    param0->unk_C0 = param3->unk_04;
    param0->unk_C4 = param3->unk_08;
    param0->unk_BC->unk_D4 = param3->unk_30;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_BC->unk_B0[v0] = param3->unk_0C[v0];
        param0->unk_BC->unk_C0[v0] = param3->unk_1C[v0];
        param0->unk_BC->unk_C4[v0] = param3->unk_20[v0];
        param0->unk_BC->unk_D8[v0] = param3->unk_34[v0];
        param0->unk_BC->unk_E0[v0] = param3->unk_3C[v0];
        param0->unk_BC->unk_E4[v0] = param3->unk_40[v0];
        param0->unk_BC->unk_E8[v0] = param3->unk_44[v0];
        param0->unk_BC->unk_EC[v0] = param3->unk_48[v0];
        param0->unk_BC->unk_FC[v0] = param3->unk_4C[v0];
    }

    param0->unk_180 = param3->unk_54;
    param0->unk_BC->unk_10C = param3->unk_6C;
    param0->unk_BC->unk_114 = param3->unk_74;
    param0->unk_BC->unk_110 = param3->unk_70;

    if (v1 == 290) {
        int v2[] = {
            0xBD,
            0xBD,
            0x12E,
            0x12E,
            0x58,
            0x58,
            0x1A3,
            0x160,
            0x1A4,
            0x22,
            0x155,
            0x10,
            0x22
        };

        if (param0->unk_BC->unk_12 >= 24) {
            v1 = 161;
        } else {
            v1 = v2[param0->unk_BC->unk_12];
        }
    }

    if ((v1 == 0) || (v1 > 467)) {
        v1 = 1;
    }

    param0->unk_04 = param3->unk_50;
    param0->unk_14 = NARC_AllocAndReadWholeMemberByIndexPair(param0->unk_04, v1, param0->unk_00);

    if (param0->unk_14 == NULL) {
        GF_ASSERT(param0->unk_14 != NULL);
        return 0;
    }

    param0->unk_18 = (u32 *)param0->unk_14;
    param0->unk_19C[0] = Bg_GetPriority(param0->unk_C0, 0);
    param0->unk_19C[1] = Bg_GetPriority(param0->unk_C0, 1);
    param0->unk_19C[2] = Bg_GetPriority(param0->unk_C0, 2);
    param0->unk_19C[3] = Bg_GetPriority(param0->unk_C0, 3);

    for (v0 = 0; v0 < 10; v0++) {
        param0->unk_D8[v0] = NULL;
    }

    for (v0 = 0; v0 < (4 + 1); v0++) {
        param0->unk_138[v0] = NULL;
        param0->unk_14C[v0] = 0;
    }

    param0->unk_17C = NULL;
    param0->unk_B8 = ov12_0221FC44;
    param0->unk_89 = 0;

    if (ov12_0221FDD4(param0) == 1) {
        param0->unk_198 = 0x7;
    } else {
        param0->unk_198 = 0xFF;
    }

    param0->unk_10 = 1;

    return 1;
}

BOOL ov12_0222016C(UnkStruct_ov12_0221FCDC *param0)
{
    if (ov12_022201B4(param0) == 0) {
        return 0;
    }

    param0->unk_B8(param0);
    return 1;
}

BOOL ov12_02220188(UnkStruct_ov12_0221FCDC *param0)
{
    return (param0->unk_10 == 1) ? 1 : 0;
}

BOOL ov12_02220198(UnkStruct_ov12_0221FCDC *param0)
{
    if (param0->unk_14 == NULL) {
        GF_ASSERT(param0->unk_14);
        return 0;
    }

    Heap_FreeToHeap(param0->unk_14);
    return 1;
}

BOOL ov12_022201B4(UnkStruct_ov12_0221FCDC *param0)
{
    if (param0 == NULL) {
        return 0;
    }

    return (param0->unk_0C == 1) ? 1 : 0;
}

SysTask *ov12_022201CC(UnkStruct_ov12_0221FCDC *param0, SysTaskFunc param1, void *param2, u32 param3)
{
    SysTask *v0;

    v0 = ov12_0221FC68(1, param0, param1, param2, param3);
    return v0;
}

SysTask *ov12_022201E8(UnkStruct_ov12_0221FCDC *param0, SysTaskFunc param1, void *param2)
{
    SysTask *v0;

    v0 = ov12_0221FC68(1, param0, param1, param2, 1100);
    return v0;
}

SysTask *ov12_02220204(UnkStruct_ov12_0221FCDC *param0, SysTaskFunc param1, void *param2, u32 param3)
{
    SysTask *v0;

    v0 = ov12_0221FC68(2, param0, param1, param2, param3);
    return v0;
}

void ov12_02220220(UnkStruct_ov12_0221FCDC *param0, SysTask *param1)
{
    ov12_0221FCA4(1, param0, param1);
}

void ov12_02220230(UnkStruct_ov12_0221FCDC *param0, SysTask *param1)
{
    ov12_0221FCA4(2, param0, param1);
}

u16 ov12_02220240(UnkStruct_ov12_0221FCDC *param0)
{
    return param0->unk_BC->unk_14;
}

u16 ov12_02220248(UnkStruct_ov12_0221FCDC *param0)
{
    return param0->unk_BC->unk_16;
}

UnkStruct_02014014 *ov12_02220250(UnkStruct_ov12_0221FCDC *param0)
{
    return param0->unk_BC->unk_1C[param0->unk_BC->unk_18];
}

UnkStruct_02014014 *ov12_02220260(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    return param0->unk_BC->unk_1C[param1];
}

SPLEmitter *ov12_0222026C(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    SPLEmitter *v0;

    v0 = param0->unk_BC->unk_5C[param1];
    return v0;
}

BgConfig *ov12_02220278(UnkStruct_ov12_0221FCDC *param0)
{
    return param0->unk_C0;
}

s32 ov12_02220280(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    GF_ASSERT(param1 < (8 + 2));
    return param0->unk_90[param1];
}

ManagedSprite *ov12_02220298(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    GF_ASSERT(param1 < 10);
    GF_ASSERT(param0 != NULL);
    GF_ASSERT(param0->unk_D8[param1] != NULL);

    return param0->unk_D8[param1];
}

ManagedSprite *ov12_022202C0(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    GF_ASSERT(param1 < (4 + 1));
    GF_ASSERT(param0 != NULL);
    GF_ASSERT(param0->unk_138[param1] != NULL);

    return param0->unk_138[param1];
}

SpriteManager *ov12_022202EC(UnkStruct_ov12_0221FCDC *param0)
{
    GF_ASSERT(param0 != NULL);
    return param0->unk_134;
}

SpriteManager *ov12_02220300(UnkStruct_ov12_0221FCDC *param0)
{
    return param0->unk_C8[0];
}

SpriteSystem *ov12_02220308(UnkStruct_ov12_0221FCDC *param0)
{
    return param0->unk_BC->unk_AC;
}

static BOOL (*const Unk_ov12_0223862C[])(UnkStruct_ov12_02220314 *) = {
    ov12_0222039C,
    ov12_022203A0,
    ov12_022203FC,
    ov12_02220404,
    ov12_0222040C,
    ov12_0222044C
};

static UnkStruct_ov12_02220314 *ov12_02220314(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_02220314 *v0 = NULL;

    v0 = Heap_AllocFromHeap(param0->unk_00, sizeof(UnkStruct_ov12_02220314));

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
        return NULL;
    }

    memset(v0, 0, sizeof(UnkStruct_ov12_02220314));
    param0->unk_8C++;

    return v0;
}

static void ov12_02220344(UnkStruct_ov12_0221FCDC *param0, UnkStruct_ov12_02220314 *param1)
{
    param1->unk_38 = param0;
    SysTask_Start(ov12_0222035C, param1, 1100);
}

static void ov12_0222035C(SysTask *param0, void *param1)
{
    BOOL v0;
    UnkStruct_ov12_02220314 *v1 = (UnkStruct_ov12_02220314 *)param1;

    v0 = Unk_ov12_0223862C[v1->unk_00](v1);

    if (v0 == 0) {
        if (v1->unk_38->unk_8C != 0) {
            v1->unk_38->unk_8C--;
        }

        Heap_FreeToHeap(v1);
        SysTask_Done(param0);
    }
}

static BOOL ov12_0222039C(UnkStruct_ov12_02220314 *param0)
{
    return 0;
}

static BOOL ov12_022203A0(UnkStruct_ov12_02220314 *param0)
{
    BOOL v0;
    s8 v1;

    if (param0->unk_04++ < param0->unk_03) {
        return 1;
    }

    v0 = 1;

    param0->unk_04 = 0;
    param0->unk_14 += param0->unk_10;

    if (param0->unk_10 == 0) {
        v0 = 0;
    } else if (param0->unk_08 < param0->unk_0C) {
        if (param0->unk_14 >= param0->unk_0C) {
            v0 = 0;
        }
    } else {
        if (param0->unk_14 <= param0->unk_0C) {
            v0 = 0;
        }
    }

    sub_02005818(param0->unk_14);

    if (Sound_IsEffectPlaying(param0->unk_1A) == 0) {
        if (v0 == 1) {
            (void)0;
        }

        return 0;
    }

    return v0;
}

static BOOL ov12_022203FC(UnkStruct_ov12_02220314 *param0)
{
    return ov12_022203A0(param0);
}

static BOOL ov12_02220404(UnkStruct_ov12_02220314 *param0)
{
    return ov12_022203A0(param0);
}

static BOOL ov12_0222040C(UnkStruct_ov12_02220314 *param0)
{
    BOOL v0;

    if (param0->unk_04++ < param0->unk_03) {
        return 1;
    }

    v0 = 1;

    param0->unk_04 = 0;
    param0->unk_18--;

    Sound_PlayEffect(param0->unk_1A);
    sub_020057FC(param0->unk_1A, 0xffff, param0->unk_14);

    if (param0->unk_18 == 0) {
        v0 = 0;
    }

    return v0;
}

static BOOL ov12_0222044C(UnkStruct_ov12_02220314 *param0)
{
    BOOL v0;

    v0 = 1;

    if ((param0->unk_03--) == 0) {
        Sound_PlayEffect(param0->unk_1A);
        sub_020057FC(param0->unk_1A, 0xffff, param0->unk_14);

        v0 = 0;
    }

    return v0;
}

static const UnkFuncPtr_ov12_02239EEC Unk_ov12_022387D4[] = {
    ov12_022204C4,
    ov12_022204E4,
    ov12_0222070C,
    ov12_0222074C,
    ov12_02220798,
    ov12_02222950,
    ov12_02221284,
    ov12_02221288,
    ov12_02222CAC,
    ov12_02222CDC,
    ov12_02220E14,
    ov12_02220E44,
    ov12_02220504,
    ov12_02220F30,
    ov12_02221064,
    ov12_02221098,
    ov12_02222724,
    ov12_02222774,
    ov12_022227CC,
    ov12_02222820,
    ov12_02222840,
    ov12_02222860,
    ov12_02222984,
    ov12_022229BC,
    ov12_022229D8,
    ov12_02222B94,
    ov12_02222BF8,
    ov12_02222CE4,
    ov12_02222C50,
    ov12_02222C54,
    ov12_02220E70,
    ov12_0222128C,
    ov12_02221424,
    ov12_02220EA8,
    ov12_022228DC,
    ov12_02222A78,
    ov12_02222AF0,
    ov12_0222293C,
    ov12_02222940,
    ov12_02222944,
    ov12_02221A4C,
    ov12_02221A50,
    ov12_02222948,
    ov12_0222294C,
    ov12_02222968,
    ov12_02220ED0,
    ov12_022209A8,
    ov12_02220A3C,
    ov12_02220B8C,
    ov12_02220C44,
    ov12_02220CFC,
    ov12_02220D3C,
    ov12_02220D90,
    ov12_02220DE8,
    ov12_02223160,
    ov12_022230CC,
    ov12_0222144C,
    ov12_022214C4,
    ov12_02221580,
    ov12_022217B4,
    ov12_022217E0,
    ov12_02221A00,
    ov12_02221A14,
    ov12_02221A30,
    ov12_02220F5C,
    ov12_022230D4,
    ov12_02223134,
    ov12_02220524,
    ov12_022206A4,
    ov12_022206E8,
    ov12_02220FA0,
    ov12_02220FFC,
    ov12_02221024,
    ov12_02222CE8,
    ov12_02222D84,
    ov12_02222DCC,
    ov12_02222E2C,
    ov12_02222E74,
    ov12_02222EBC,
    ov12_02222FC8,
    ov12_0222307C,
    ov12_022230A8,
    ov12_02221834,
    ov12_022219E8,
    ov12_0222048C
};

void ov12_02220474(void)
{
    G2_SetBlendAlpha((GX_BLEND_PLANEMASK_NONE), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 8, 8);
}

static inline int inline_ov12_022204C4_sub_sub(u32 *param0, u8 param1, u8 param2)
{
    int v0 = param0[param1];

    if (param2 != 1) {
        GF_ASSERT(0);
    }

    return v0;
}

static inline int inline_ov12_022204C4_sub(u32 *param0, u8 param1)
{
    int v0;

    v0 = inline_ov12_022204C4_sub_sub(param0, 0, param1);
    return v0;
}

static inline int inline_ov12_022204C4(u32 *param0)
{
    return inline_ov12_022204C4_sub(param0, 1);
}

static void ov12_0222048C(UnkStruct_ov12_0221FCDC *param0)
{
    param0->unk_89 = 1;

    if (gSystem.heldKeys & PAD_BUTTON_L) {
        if (gSystem.heldKeys & PAD_BUTTON_R) {
            if (gSystem.pressedKeys & PAD_BUTTON_X) {
                param0->unk_18 += 1;
                param0->unk_89 = 0;
            }
        }
    }
}

static void ov12_022204C4(UnkStruct_ov12_0221FCDC *param0)
{
    param0->unk_18 += 1;
    param0->unk_89 = (u8)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;
    param0->unk_B8 = ov12_0221FC20;
}

static void ov12_022204E4(UnkStruct_ov12_0221FCDC *param0)
{
    if (param0->unk_8A == 0) {
        param0->unk_18 += 1;
        param0->unk_89 = 0;
    } else {
        param0->unk_89 = 1;
    }
}

static void ov12_02220504(UnkStruct_ov12_0221FCDC *param0)
{
    u32 v0;
    u32 v1;

    param0->unk_18 += 1;
    v0 = (u32)inline_ov12_022204C4(param0->unk_18);

    param0->unk_18 += 1;
    v1 = (u32)inline_ov12_022204C4(param0->unk_18);

    param0->unk_18 += 1;

    if (v0 < (8 + 2)) {
        param0->unk_90[v0] = v1;
        return;
    }
}

static void ov12_02220524(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;

    param0->unk_18 += 1;

    for (v0 = 0; v0 < (8 + 2); v0++) {
        param0->unk_90[v0] = 0;
    }
}

int ov12_02220540(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    int v0 = 0;

    switch (param1) {
    case 0:
        v0 = param0->unk_BC->unk_04;
        break;
    case 1:
        v0 = param0->unk_BC->unk_08;
        break;
    case 2:
        v0 = param0->unk_BC->unk_0A;
        break;
    case 3:
        v0 = param0->unk_BC->unk_0C;
        break;
    case 4:
        v0 = param0->unk_BC->unk_10;
        break;
    case 5:
        v0 = param0->unk_BC->unk_12;
        break;
    default:
        v0 = 0;
        break;
    }

    return v0;
}

void ov12_02220590(UnkStruct_ov12_0221FCDC *param0, UnkStruct_ov12_022380DC *param1, int param2)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        param1->unk_08[v0] = param0->unk_BC->unk_B0[v0];
        param1->unk_18[v0] = param0->unk_BC->unk_C4[v0];
        param1->unk_28[v0] = param0->unk_BC->unk_D8[v0];
        param1->unk_30[v0] = param0->unk_BC->unk_E0[v0];
        param1->unk_34[v0] = param0->unk_BC->unk_E4[v0];
        param1->unk_38[v0] = param0->unk_BC->unk_E8[v0];
        param1->unk_3C[v0] = param0->unk_BC->unk_EC[v0];
        param1->unk_4C[v0] = param0->unk_BC->unk_C0[v0];
    }

    switch (param2) {
    case 0:
        param1->unk_00 = param0->unk_BC->unk_14;
        param1->unk_04 = param0->unk_BC->unk_16;
        break;
    case 1:
        param1->unk_00 = param0->unk_BC->unk_14;
        param1->unk_04 = param0->unk_BC->unk_14;
        break;
    case 2:
        param1->unk_00 = param0->unk_BC->unk_14;
        param1->unk_04 = param0->unk_BC->unk_14;
        break;
    case 3:
        param1->unk_00 = param0->unk_BC->unk_14;
        param1->unk_04 = param0->unk_BC->unk_14;
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

static void ov12_022206A4(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    UnkStruct_ov12_022380DC v1;

    param0->unk_18 += 1;
    v0 = (u32)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    ov12_02220590(param0, &v1, v0);

    if (v0 == 2) {
        ov12_02238390(&v1, param0->unk_00);
    } else if (v0 == 3) {
        ov12_022380CC(&v1, param0->unk_00);
    } else {
        ov12_022380BC(&v1, param0->unk_00);
    }
}

static void ov12_022206E8(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    UnkStruct_ov12_022380DC v1;

    param0->unk_18 += 1;
    v0 = (u32)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    ov12_02220590(param0, &v1, v0);
    ov12_022382BC(&v1, param0->unk_00);
}

static void ov12_0222070C(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;

    param0->unk_18 += 1;

    for (v0 = 0; v0 < 3; v0++) {
        if (param0->unk_28[v0].unk_08 == 1) {
            continue;
        }

        param0->unk_28[v0].unk_08 = 1;
        param0->unk_28[v0].unk_04 = 0;
        param0->unk_28[v0].unk_05 = (u8)inline_ov12_022204C4(param0->unk_18);
        param0->unk_18 += 1;
        param0->unk_28[v0].unk_00 = param0->unk_18;

        return;
    }
}

static void ov12_0222074C(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;

    param0->unk_18 += 1;

    for (v0 = 3 - 1; v0 >= 0; v0--) {
        if (param0->unk_28[v0].unk_08 == 0) {
            continue;
        }

        param0->unk_28[v0].unk_04++;

        if (param0->unk_28[v0].unk_04 == param0->unk_28[v0].unk_05) {
            param0->unk_28[v0].unk_08 = 0;
        } else {
            param0->unk_18 = param0->unk_28[v0].unk_00;
        }

        return;
    }
}

static void ov12_02220798(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    int v1 = 0;

    if (param0->unk_17A < 1) {
        param0->unk_89 = 1;
        param0->unk_17A++;
        return;
    }

    for (v0 = 0; v0 < 16; v0++) {
        if (param0->unk_BC->unk_1C[v0]) {
            v1 += sub_02014710(param0->unk_BC->unk_1C[v0]);
        }
    }

    if ((v1 != 0) || (param0->unk_8A != 0) || (param0->unk_8C != 0)) {
        param0->unk_89 = 1;
        param0->unk_179 = 0;
        return;
    }

    if (sub_020057E0()) {
        param0->unk_179++;

        if (param0->unk_179 > 90) {
            param0->unk_179 = 0;
            param0->unk_89 = 0;
        } else {
            param0->unk_89 = 1;
            return;
        }
    }

    param0->unk_179 = 0;
    param0->unk_17A = 0;

    for (v0 = 0; v0 < 3; v0++) {
        param0->unk_1C[v0] = NULL;
    }

    for (v0 = 0; v0 < 3; v0++) {
        param0->unk_28[v0].unk_00 = NULL;
        param0->unk_28[v0].unk_04 = 0;
        param0->unk_28[v0].unk_05 = 0;
        param0->unk_28[v0].unk_08 = 0;
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_C8[v0] != NULL) {
            SpriteSystem_FreeResourcesAndManager(param0->unk_BC->unk_AC, param0->unk_C8[v0]);
        }

        param0->unk_C8[v0] = NULL;
    }

    for (v0 = 0; v0 < 5; v0++) {
        ov12_02221238(param0, v0);
    }

    for (v0 = 0; v0 < 16; v0++) {
        if (param0->unk_BC->unk_1C[v0]) {
            ov12_02223894(param0->unk_BC->unk_1C[v0]);
            param0->unk_BC->unk_1C[v0] = NULL;
        }
    }

    if (param0->unk_17C != NULL) {
        param0->unk_17C = NULL;
    }

    if (ov12_0221FDD4(param0) == 0) {
        Battle_SetDefaultBlend();

        Bg_ClearTilesRange(ov12_022233B0(param0, 1), 0x4000, 0, ov12_0221FDE4(param0));
        Bg_ClearTilemap(ov12_02220278(param0), ov12_022233B0(param0, 1));
        Bg_ToggleLayer(2, 1);
    } else {
        ov17_022413D8();
    }

    Bg_SetPriority(0, param0->unk_19C[0]);
    Bg_SetPriority(1, param0->unk_19C[1]);
    Bg_SetPriority(2, param0->unk_19C[2]);
    Bg_SetPriority(3, param0->unk_19C[3]);

    Bg_SetOffset(param0->unk_C0, 2, 0, 0);
    Bg_SetOffset(param0->unk_C0, 2, 3, 0);
    Bg_SetOffset(param0->unk_C0, 3, 0, 0);
    Bg_SetOffset(param0->unk_C0, 3, 3, 0);

    param0->unk_10 = 0;
}

static void ov12_022209A8(UnkStruct_ov12_0221FCDC *param0)
{
    u32 v0;
    u32 v1;
    u32 v2;

    param0->unk_18 += 1;

    v2 = (u32)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v0 = (u32)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v1 = (u32)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    param0->unk_BC->unk_18 = v2;

    if (param0->unk_78[v2] != 0) {
        VecFx32 v3;

        sub_02014734(param0->unk_BC->unk_1C[v2], &v3);
        v3.y *= -1;
        sub_02014744(param0->unk_BC->unk_1C[v2], &v3);
    }

    sub_02014788(param0->unk_BC->unk_1C[v2], param0->unk_68[v2]);

    param0->unk_BC->unk_5C[0] = ov12_02223880(param0->unk_BC->unk_1C[v2], v0, v1, param0);
}

static void ov12_02220A3C(UnkStruct_ov12_0221FCDC *param0)
{
    u32 v0;
    u32 v1;
    u32 v2;
    u32 v3;

    param0->unk_18 += 1;

    v2 = (u32)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v3 = (u32)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v0 = (u32)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v1 = (u32)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    param0->unk_BC->unk_18 = v2;

    if (param0->unk_78[v2] != 0) {
        VecFx32 v4;

        sub_02014734(param0->unk_BC->unk_1C[v2], &v4);
        v4.y *= -1;
        sub_02014744(param0->unk_BC->unk_1C[v2], &v4);
    }

    sub_02014788(param0->unk_BC->unk_1C[v2], param0->unk_68[v2]);

    param0->unk_BC->unk_5C[v3] = ov12_02223880(param0->unk_BC->unk_1C[v2], v0, v1, param0);
}

static int ov12_02220ADC(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    int v1, v2;
    int v3, v4;
    int v5[][6] = {
        { 0xFF, 0x1, 0xFF, 0xFF, 0xFF, 0xFF },
        { 0x4, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
        { 0xFF, 0xFF, 0xFF, 0x3, 0xFF, 0x1 },
        { 0xFF, 0xFF, 0x6, 0xFF, 0x4, 0xFF },
        { 0xFF, 0xFF, 0xFF, 0x1, 0xFF, 0x2 },
        { 0xFF, 0xFF, 0x4, 0xFF, 0x5, 0xFF }
    };

    v3 = ov12_02220240(param0);
    v4 = ov12_02220248(param0);
    v1 = ov12_02235254(param0, v3);
    v2 = ov12_02235254(param0, v4);
    v0 = v5[v1][v2];

    GF_ASSERT(v0 != 0xFF);

    return v0 - 1;
}

static int ov12_02220B34(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    int v1, v2;
    int v3, v4;
    int v5[][6] = {
        { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
        { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
        { 0xFF, 0xFF, 0xFF, 0xFF, 0x0, 0xFF },
        { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x1 },
        { 0xFF, 0xFF, 0x1, 0xFF, 0xFF, 0xFF },
        { 0xFF, 0xFF, 0xFF, 0x0, 0xFF, 0xFF }
    };

    v3 = ov12_02220240(param0);
    v4 = ov12_02220248(param0);
    v1 = ov12_02235254(param0, v3);
    v2 = ov12_02235254(param0, v4);
    v0 = v5[v1][v2];

    GF_ASSERT(v0 != 0xFF);

    return v0;
}

static void ov12_02220B8C(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    u32 v1[6];
    u32 v2;
    u32 v3;
    u32 v4;

    param0->unk_18 += 1;
    v3 = (u32)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    for (v0 = 0; v0 < 6; v0++) {
        v1[v0] = (u32)inline_ov12_022204C4(param0->unk_18);
        param0->unk_18 += 1;
    }

    v2 = (u32)inline_ov12_022204C4(param0->unk_18);

    param0->unk_18 += 1;
    param0->unk_BC->unk_18 = v3;

    if (param0->unk_78[v3] != 0) {
        VecFx32 v5;

        sub_02014734(param0->unk_BC->unk_1C[v3], &v5);
        v5.y *= -1;
        sub_02014744(param0->unk_BC->unk_1C[v3], &v5);
    }

    {
        int v6;

        v6 = ov12_02220ADC(param0);
        v4 = v1[v6];
    }

    sub_02014788(param0->unk_BC->unk_1C[v3], param0->unk_68[v3]);
    param0->unk_BC->unk_5C[0] = ov12_02223880(param0->unk_BC->unk_1C[v3], v4, v2, param0);
}

static void ov12_02220C44(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    u32 v1[4];
    u32 v2;
    u32 v3;
    u32 v4;

    param0->unk_18 += 1;
    v3 = (u32)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    for (v0 = 0; v0 < 4; v0++) {
        v1[v0] = (u32)inline_ov12_022204C4(param0->unk_18);
        param0->unk_18 += 1;
    }

    v2 = (u32)inline_ov12_022204C4(param0->unk_18);

    param0->unk_18 += 1;
    param0->unk_BC->unk_18 = v3;

    if (param0->unk_78[v3] != 0) {
        VecFx32 v5;

        sub_02014734(param0->unk_BC->unk_1C[v3], &v5);
        v5.y *= -1;
        sub_02014744(param0->unk_BC->unk_1C[v3], &v5);
    }

    {
        int v6;

        v6 = ov12_02220B34(param0);
        v4 = v1[v6];
    }

    sub_02014788(param0->unk_BC->unk_1C[v3], param0->unk_68[v3]);
    param0->unk_BC->unk_5C[0] = ov12_02223880(param0->unk_BC->unk_1C[v3], v4, v2, param0);
}

static void ov12_02220CFC(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    int v1;

    v1 = 0;

    for (v0 = 0; v0 < 16; v0++) {
        if (param0->unk_BC->unk_1C[v0] == NULL) {
            continue;
        }

        v1 += sub_02014710(param0->unk_BC->unk_1C[v0]);
    }

    if (v1 == 0) {
        param0->unk_18 += 1;
        param0->unk_89 = 0;
    } else {
        param0->unk_89 = 1;
    }
}

static void ov12_02220D3C(UnkStruct_ov12_0221FCDC *param0)
{
    u32 v0;
    u32 v1;

    param0->unk_18 += 1;

    v1 = (u32)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    GF_ASSERT(param0->unk_BC->unk_1C[v1] == NULL);

    v0 = (u32)inline_ov12_022204C4(param0->unk_18);

    param0->unk_18 += 1;
    param0->unk_BC->unk_1C[v1] = ov12_022237F0(param0->unk_00, v0, 0);
    param0->unk_89 = 2;
    param0->unk_B8 = ov12_0221FC20;
}

static void ov12_02220D90(UnkStruct_ov12_0221FCDC *param0)
{
    u32 v0;
    u32 v1;
    u32 v2;

    param0->unk_18 += 1;
    v2 = (u32)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v1 = (u32)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;
    v1 = 100;

    GF_ASSERT(param0->unk_BC->unk_1C[v2] == NULL);

    v0 = (u32)inline_ov12_022204C4(param0->unk_18);

    param0->unk_18 += 1;
    param0->unk_BC->unk_1C[v2] = ov12_02223818(param0->unk_00, v1, v0, 0);
    param0->unk_89 = 2;
    param0->unk_B8 = ov12_0221FC20;
}

static void ov12_02220DE8(UnkStruct_ov12_0221FCDC *param0)
{
    u32 v0;

    param0->unk_18 += 1;
    v0 = (u32)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    ov12_02223894(param0->unk_BC->unk_1C[v0]);
    param0->unk_BC->unk_1C[v0] = NULL;
}

static void ov12_02220E14(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;

    param0->unk_18 += 1;

    for (v0 = 0; v0 < 3; v0++) {
        if (param0->unk_1C[v0] != NULL) {
            continue;
        }

        param0->unk_1C[v0] = param0->unk_18 + 1;
        param0->unk_18 += (u32)inline_ov12_022204C4(param0->unk_18);

        return;
    }
}

static void ov12_02220E44(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;

    param0->unk_18 += 1;

    for (v0 = 3 - 1; v0 >= 0; v0--) {
        if (param0->unk_1C[v0] == NULL) {
            continue;
        }

        param0->unk_18 = param0->unk_1C[v0];
        param0->unk_1C[v0] = NULL;

        return;
    }
}

static void ov12_02220E70(UnkStruct_ov12_0221FCDC *param0)
{
    u32 v0;
    u32 v1;

    param0->unk_18 += 1;

    v0 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v1 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    if (v1 == param0->unk_90[v0]) {
        param0->unk_18 = (u32 *)inline_ov12_022204C4(param0->unk_18);
    } else {
        param0->unk_18 += 1;
    }
}

static void ov12_02220EA8(UnkStruct_ov12_0221FCDC *param0)
{
    param0->unk_18 += 1;

    if (ov12_02223178(param0->unk_BC)) {
        param0->unk_18 = (u32 *)inline_ov12_022204C4(param0->unk_18);
    } else {
        param0->unk_18 += 1;
    }
}

static void ov12_02220ED0(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    u32 v1;
    u32 v2;
    UnkFuncPtr_ov12_02239EEC v3;

    param0->unk_18 += 1;

    v1 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v3 = ov12_02226998(v1);

    v2 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    for (v0 = 0; v0 < v2; v0++) {
        param0->unk_90[v0] = inline_ov12_022204C4(param0->unk_18);
        param0->unk_18 += 1;
    }

    for (; v0 < (8 + 2); v0++) {
        param0->unk_90[v0] = 0;
    }

    v3(param0);
}

static void ov12_02220F30(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;

    param0->unk_18 += 1;

    if (param0->unk_BC->unk_10 & 1) {
        param0->unk_18 += 1;
    }

    param0->unk_18 += (u32)inline_ov12_022204C4(param0->unk_18);
}

static void ov12_02220F5C(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    int v1;

    param0->unk_18 += 1;

    v0 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    if (v0 == 0) {
        v1 = ov12_0223525C(param0, param0->unk_BC->unk_14);
    } else {
        v1 = ov12_0223525C(param0, param0->unk_BC->unk_16);
    }

    if (v1 == 0x4) {
        param0->unk_18 += 1;
    }

    param0->unk_18 += (u32)inline_ov12_022204C4(param0->unk_18);
}

static void ov12_02220FA0(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    int v1[] = {
        0x3,
        0xC,
        0x30,
        0xC0,
    };

    param0->unk_18 += 1;
    v0 = param0->unk_BC->unk_0C;

    if (v0 != 0) {
        param0->unk_18 += 1;
        {
            int v2;

            for (v2 = 0; v2 < NELEMS(v1); v2++) {
                if (v0 & v1[v2]) {
                    break;
                } else {
                    param0->unk_18 += 1;
                }
            }
        }
    }

    param0->unk_18 += (u32)inline_ov12_022204C4(param0->unk_18);
}

static void ov12_02220FFC(UnkStruct_ov12_0221FCDC *param0)
{
    param0->unk_18 += 1;

    if (ov12_0221FDD4(param0) == 1) {
        param0->unk_18 += (u32)inline_ov12_022204C4(param0->unk_18);
    } else {
        param0->unk_18 += 1;
    }
}

static void ov12_02221024(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    int v1;

    param0->unk_18 += 1;

    v0 = ov12_0223525C(param0, param0->unk_BC->unk_14);
    v1 = ov12_0223525C(param0, param0->unk_BC->unk_16);

    if (v0 == v1) {
        param0->unk_18 += (u32)inline_ov12_022204C4(param0->unk_18);
    } else {
        param0->unk_18 += 1;
    }
}

static void ov12_02221064(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;

    param0->unk_18 += 1;

    v0 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    if (v0 == param0->unk_BC->unk_10) {
        param0->unk_18 += (u32)inline_ov12_022204C4(param0->unk_18);
    } else {
        param0->unk_18 += 1;
    }
}

static void ov12_02221098(UnkStruct_ov12_0221FCDC *param0)
{
    param0->unk_18 += 1;
    param0->unk_18 += (u32)inline_ov12_022204C4(param0->unk_18);
}

static int ov12_022210A8(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    int v0;

    switch (param1) {
    case 0:
        v0 = param0->unk_BC->unk_14;
        break;
    case 1:
        v0 = param0->unk_BC->unk_16;
        break;
    case 2:
        v0 = ov12_022352AC(param0, param0->unk_BC->unk_14);
        break;
    case 3:
        v0 = ov12_022352AC(param0, param0->unk_BC->unk_16);
        break;

    case 4: {
        int v1;
        int v2;

        v0 = 0xFF;

        for (v1 = 0; v1 < 4; v1++) {
            v2 = ov12_022232B8(param0, v1);

            if ((v2 == 0) || (v2 == 2)) {
                v0 = v1;
                break;
            }
        }

        if (v0 == 0xFF) {
            v0 = 0;
        }
    } break;
    case 5: {
        int v3;
        int v4;

        v0 = 0xFF;

        for (v3 = 0; v3 < 4; v3++) {
            v4 = ov12_022232B8(param0, v3);

            if ((v4 == 1) || (v4 == 3)) {
                v0 = v3;
                break;
            }
        }

        if (v0 == 0xFF) {
            v0 = 0;
        }
    } break;
    case 6: {
        int v5;
        int v6;

        v0 = 0xFF;

        for (v5 = 0; v5 < 4; v5++) {
            v6 = ov12_022232B8(param0, v5);

            if (v6 == 4) {
                v0 = v5;
                break;
            }
        }

        if (v0 == 0xFF) {
            v0 = 0;
        }
    } break;
    case 7: {
        int v7;
        int v8;

        v0 = 0xFF;

        for (v7 = 0; v7 < 4; v7++) {
            v8 = ov12_022232B8(param0, v7);

            if (v8 == 5) {
                v0 = v7;
                break;
            }
        }

        if (v0 == 0xFF) {
            v0 = 0;
        }
    } break;
    }

    return v0;
}

static void ov12_0222118C(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222118C *v0 = (UnkStruct_ov12_0222118C *)param1;
    s16 v1;
    s16 v2;

    if (v0->unk_04.unk_01 != 0) {
        v0->unk_04.unk_00++;

        if (v0->unk_04.unk_00 != v0->unk_04.unk_01) {
            return;
        }

        v0->unk_04.unk_00 = 0;
    }

    v1 = sub_020080C0(v0->unk_04.unk_04, 0);
    v2 = sub_020080C0(v0->unk_04.unk_04, 1);
    v2 -= sub_020080C0(v0->unk_04.unk_04, 41);

    ManagedSprite_SetPositionXY(v0->unk_00, v1, v2);
}

static void ov12_022211D8(SysTask *param0, void *param1)
{
    UnkStruct_ov12_022211D8 *v0 = (UnkStruct_ov12_022211D8 *)param1;
    s16 v1;
    s16 v2;

    if (v0->unk_04.unk_01 != 0) {
        v0->unk_04.unk_00++;

        if (v0->unk_04.unk_00 != v0->unk_04.unk_01) {
            return;
        }

        v0->unk_04.unk_00 = 0;
    }

    v1 = sub_020080C0(v0->unk_04.unk_04, 0);
    v2 = sub_020080C0(v0->unk_04.unk_04, 1);
    v2 -= sub_020080C0(v0->unk_04.unk_04, 41);

    Bg_SetOffset(v0->unk_00, 2, 0, -(v1 - 40));
    Bg_SetOffset(v0->unk_00, 2, 3, -(v2 - 40));
}

void ov12_02221238(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    if (param1 == 4) {
        if (param0->unk_174 != NULL) {
            SysTask_Done(param0->unk_174->unk_04.unk_08);
            Heap_FreeToHeap(param0->unk_174);
            param0->unk_174 = NULL;
        }
    } else {
        if (param0->unk_160[param1] != NULL) {
            SysTask_Done(param0->unk_160[param1]->unk_04.unk_08);
            Heap_FreeToHeap(param0->unk_160[param1]);
            param0->unk_160[param1] = NULL;
        }
    }
}

static void ov12_02221284(UnkStruct_ov12_0221FCDC *param0)
{
    return;
}

static void ov12_02221288(UnkStruct_ov12_0221FCDC *param0)
{
    return;
}

static void ov12_0222128C(UnkStruct_ov12_0221FCDC *param0)
{
    void *v0 = NULL;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;
    int v6;
    int v7;

    param0->unk_18 += 1;

    v1 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v2 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v3 = ov12_022210A8(param0, v1);
    v4 = param0->unk_BC->unk_B0[v3]->unk_04;
    v5 = param0->unk_BC->unk_B0[v3]->unk_08;
    v0 = param0->unk_BC->unk_B0[v3]->unk_00;
    v7 = param0->unk_BC->unk_E8[v3];

    if ((ov12_0221FDD4(param0) == 1) && (IsFormSymmetrical(ov12_022232D0(param0, v3), v7) == 1)) {
        v6 = 265;
    } else {
        v6 = 264;
    }

    {
        u8 *v8 = Bg_GetCharPtr(2);
        MI_CpuFill8(v8, 0, 10 * 10 * 2 * 0x20);
    }

    Bg_ToggleLayer(2, 0);
    Bg_LoadTiles(param0->unk_C0, 2, v0, (10 * 10 * ((8 / 2) * 8)), 0);
    PaletteData_LoadBufferFromFileStart(param0->unk_C4, v4, v5, param0->unk_00, 0, 0, (8 * 16));
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_1A0[0], v6, param0->unk_C0, 2, 0, 0, 0, param0->unk_00);

    if (v2 == 1) {
        SysTask *v9;

        param0->unk_174 = Heap_AllocFromHeap(param0->unk_00, sizeof(UnkStruct_ov12_0222118C));
        param0->unk_174->unk_00 = param0->unk_C0;
        param0->unk_174->unk_04.unk_04 = ov12_022232FC(param0, v3);
        param0->unk_174->unk_04.unk_00 = 0;
        param0->unk_174->unk_04.unk_01 = 0;

        v9 = SysTask_Start(ov12_022211D8, param0->unk_174, 0x1001);

        param0->unk_174->unk_04.unk_08 = v9;
    }

    {
        s16 v10;
        s16 v11;

        v10 = sub_020080C0(ov12_022232FC(param0, v3), 0);
        v11 = sub_020080C0(ov12_022232FC(param0, v3), 1);
        v11 -= sub_020080C0(ov12_022232FC(param0, v3), 41);

        Bg_SetOffset(param0->unk_C0, 2, 0, -(v10 - 40));
        Bg_SetOffset(param0->unk_C0, 2, 3, -(v11 - 40));
    }

    Bg_ToggleLayer(2, 1);
    Bg_SetPriority(2, ov12_0222339C(param0));
}

static void ov12_02221424(UnkStruct_ov12_0221FCDC *param0)
{
    param0->unk_18 += 1;
    param0->unk_18 += 1;

    {
        u8 *v0 = Bg_GetCharPtr(2);
        MI_CpuFill8(v0, 0, 10 * 10 * 2 * 0x20);
    }

    ov12_02221238(param0, 4);
}

static void ov12_0222144C(UnkStruct_ov12_0221FCDC *param0)
{
    int v0 = (4 + 1);
    SpriteResourceCapacities v1 = {
        0x5,
        0x5,
        0x5,
        0x5,
        0x0,
        0x0
    };

    param0->unk_18 += 1;
    param0->unk_134 = SpriteManager_New(param0->unk_BC->unk_AC);

    SpriteSystem_InitSprites(param0->unk_BC->unk_AC, param0->unk_134, v0);
    SetSubScreenViewRect(SpriteSystem_GetRenderer(param0->unk_BC->unk_AC), 0, ((192 + 80) << FX32_SHIFT));
    SpriteSystem_InitManagerWithCapacities(param0->unk_BC->unk_AC, param0->unk_134, &v1);
}

static void ov12_022214C4(UnkStruct_ov12_0221FCDC *param0)
{
    int v0[6];
    int v1;

    param0->unk_18 += 1;
    v1 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v0[0] = 20001 + v1 + ((param0->unk_BC->unk_14) * 5000);
    v0[1] = 20001 + v1 + ((param0->unk_BC->unk_14) * 5000);
    v0[2] = 20001 + v1 + ((param0->unk_BC->unk_14) * 5000);
    v0[3] = 20001 + v1 + ((param0->unk_BC->unk_14) * 5000);
    v0[4] = 0;
    v0[5] = 0;

    SpriteSystem_LoadCharResObjFromOpenNarc(param0->unk_BC->unk_AC, param0->unk_134, param0->unk_1A0[1], 76, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, v0[SPRITE_RESOURCE_PLTT]);
    SpriteSystem_LoadPaletteBufferFromOpenNarc(param0->unk_C4, PLTTBUF_MAIN_OBJ, param0->unk_BC->unk_AC, param0->unk_134, param0->unk_1A0[1], 75, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 1, v0[SPRITE_RESOURCE_PLTT]);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_BC->unk_AC, param0->unk_134, param0->unk_1A0[1], 77, FALSE, v0[SPRITE_RESOURCE_CELL]);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_BC->unk_AC, param0->unk_134, param0->unk_1A0[1], 78, FALSE, v0[SPRITE_RESOURCE_ANIM]);
}

static void ov12_02221580(UnkStruct_ov12_0221FCDC *param0)
{
    u8 *v0 = NULL;
    ManagedSprite *v1 = NULL;
    int v2[6];
    int v3;
    int v4;
    int v5;
    int v6;
    int v7;
    int v8;
    int v9;
    int v10;

    param0->unk_18 += 1;

    v3 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v4 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v5 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v6 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v2[0] = 20001 + v6 + ((param0->unk_BC->unk_14) * 5000);
    v2[1] = 20001 + v6 + ((param0->unk_BC->unk_14) * 5000);
    v2[2] = 20001 + v6 + ((param0->unk_BC->unk_14) * 5000);
    v2[3] = 20001 + v6 + ((param0->unk_BC->unk_14) * 5000);
    v2[4] = 0;
    v2[5] = 0;

    v7 = ov12_022210A8(param0, v3);
    v8 = param0->unk_BC->unk_B0[v7]->unk_04;
    v9 = param0->unk_BC->unk_B0[v7]->unk_08;
    v0 = param0->unk_BC->unk_B0[v7]->unk_00;
    v10 = param0->unk_BC->unk_E8[v7];
    {
        SpriteTemplate v11;
        PokemonSprite *v12 = ov12_022232FC(param0, v7);
        int v13;
        int v14;
        s16 v15;
        s16 v16;

        if (v12 != NULL) {
            v15 = sub_020080C0(v12, 0);
            v16 = sub_020080C0(v12, 1);
            v16 -= sub_020080C0(v12, 41);
        }

        v11.x = v15;
        v11.y = v16;
        v11.z = 0;
        v11.animIdx = 0;
        v11.priority = 100;
        v11.plttIdx = 0;
        v11.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        v11.bgPriority = 1;
        v11.vramTransfer = FALSE;

        for (v14 = 0; v14 < 6; v14++) {
            v11.resources[v14] = v2[v14];
        }

        v1 = SpriteSystem_NewSprite(param0->unk_BC->unk_AC, param0->unk_134, &v11);

        if (v12 == NULL) {
            ManagedSprite_SetDrawFlag(v1, 0);
        } else {
            int v17 = sub_020080C0(v12, 6);

            if (v17 == 1) {
                ManagedSprite_SetDrawFlag(v1, 0);
            }
        }

        if ((ov12_0221FDD4(param0) == 1) && (IsFormSymmetrical(ov12_022232D0(param0, v7), v10) == 1)) {
            ManagedSprite_SetFlipMode(v1, 1);
        }
    }

    if (ov12_022232FC(param0, v7) != NULL) {
        NNSG2dImageProxy *v18;

        v18 = Sprite_GetImageProxy(v1->sprite);
        VramTransfer_Request(NNS_GFD_DST_2D_OBJ_CHAR_MAIN, v18->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN], v0, (10 * 10 * ((8 / 2) * 8)));
    }

    if (ov12_022232FC(param0, v7) != NULL) {
        NNSG2dImagePaletteProxy *v19;
        int v20;

        v19 = Sprite_GetPaletteProxy(v1->sprite);
        v20 = PlttTransfer_GetPlttOffset(v19, NNS_G2D_VRAM_TYPE_2DMAIN);

        PaletteData_LoadBufferFromFileStart(param0->unk_C4, v8, v9, param0->unk_00, 2, 0x20, v20 * 16);
    }

    GF_ASSERT(param0->unk_138[v5] == NULL);

    param0->unk_138[v5] = v1;
    param0->unk_14C[v5] = 1;

    if (v4 == 1) {
        SysTask *v21;

        if (ov12_022232FC(param0, v7) == NULL) {
            return;
        }

        param0->unk_160[v5] = Heap_AllocFromHeap(param0->unk_00, sizeof(UnkStruct_ov12_0222118C));
        param0->unk_160[v5]->unk_00 = v1;
        param0->unk_160[v5]->unk_04.unk_04 = ov12_022232FC(param0, v7);
        param0->unk_160[v5]->unk_04.unk_00 = 0;
        param0->unk_160[v5]->unk_04.unk_01 = 0;

        v21 = SysTask_Start(ov12_0222118C, param0->unk_160[v5], 0x1001);

        param0->unk_160[v5]->unk_04.unk_08 = v21;
    }
}

static void ov12_022217B4(UnkStruct_ov12_0221FCDC *param0)
{
    param0->unk_18 += 1;

    if (param0->unk_134 != NULL) {
        SpriteSystem_FreeResourcesAndManager(param0->unk_BC->unk_AC, param0->unk_134);
    }

    param0->unk_134 = NULL;
}

static void ov12_022217E0(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;

    param0->unk_18 += 1;

    v0 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    if (param0->unk_138[v0] != NULL) {
        Sprite_DeleteAndFreeResources(param0->unk_138[v0]);
    }

    param0->unk_14C[v0] = 0;
    param0->unk_138[v0] = NULL;
}

static void ov12_02221810(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02221810 *v0 = param1;

    if (v0->unk_0C == 0) {
        SysTask_Done(param0);
        return;
    }

    if (v0->unk_00->unk_134 != NULL) {
        SpriteSystem_DrawSprites(v0->unk_04);
    }
}

static void ov12_02221834(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    int v1;
    int v2;

    param0->unk_18 += 1;

    v0 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v1 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v2 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    param0->unk_48[v1].unk_00 = param0;
    param0->unk_48[v1].unk_04 = param0->unk_134;
    param0->unk_48[v1].unk_08 = param0->unk_138[v2];
    param0->unk_48[v1].unk_0C = 1;

    ManagedSprite_SetDrawFlag(param0->unk_48[v1].unk_08, 0);

    if (ov12_02223364(param0) == 1) {
        int v3, v4;

        v3 = ov12_02235254(param0, ov12_02220240(param0));
        v4 = ov12_02235254(param0, ov12_02220248(param0));

        {
            int v5;
            int v6;
            PokemonSprite *v7;

            v6 = ov12_022210A8(param0, v0);
            v7 = ov12_022232FC(param0, v6);

            if (v7 != NULL) {
                v5 = sub_020080C0(v7, 6);
            } else {
                v5 = 0;
            }

            if (v5 == 1) {
                ManagedSprite_SetDrawFlag(param0->unk_48[v1].unk_08, 0);
            } else {
                ManagedSprite_SetDrawFlag(param0->unk_48[v1].unk_08, 1);
            }
        }

        switch (v0) {
        case 0:
            if ((v3 == 3) || (v3 == 4)) {
                ManagedSprite_SetPriority(param0->unk_48[v1].unk_08, 1);
            } else {
                ManagedSprite_SetDrawFlag(param0->unk_48[v1].unk_08, 0);
                ManagedSprite_SetPriority(param0->unk_48[v1].unk_08, 255);
            }
            break;
        case 2:
            if ((v3 == 5) || (v3 == 2)) {
                ManagedSprite_SetPriority(param0->unk_48[v1].unk_08, 1);
            } else {
                ManagedSprite_SetDrawFlag(param0->unk_48[v1].unk_08, 0);
                ManagedSprite_SetPriority(param0->unk_48[v1].unk_08, 255);
            }
            break;
        case 1:
            switch (v4) {
            case 2:
                ManagedSprite_SetPriority(param0->unk_48[v1].unk_08, 255);
                break;
            case 3:
                ManagedSprite_SetPriority(param0->unk_48[v1].unk_08, 1);
                break;
            case 4:
                ManagedSprite_SetPriority(param0->unk_48[v1].unk_08, 1);
                break;
            case 5:
                ManagedSprite_SetPriority(param0->unk_48[v1].unk_08, 255);
                break;
            }
            break;
        case 3:
            switch (v4) {
            case 2:
                ManagedSprite_SetPriority(param0->unk_48[v1].unk_08, 1);
                break;
            case 3:
                ManagedSprite_SetPriority(param0->unk_48[v1].unk_08, 255);
                break;
            case 4:
                ManagedSprite_SetPriority(param0->unk_48[v1].unk_08, 255);
                break;
            case 5:
                ManagedSprite_SetPriority(param0->unk_48[v1].unk_08, 1);
                break;
            }
            break;
        }

        SysTask_Start(ov12_02221810, &param0->unk_48[v1], 0x1000);
    }
}

static void ov12_022219E8(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;

    param0->unk_18 += 1;

    v0 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;
    param0->unk_48[v0].unk_0C = 0;
}

static void ov12_02221A00(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;

    param0->unk_18 += 1;
    v0 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    ov12_02221238(param0, v0);
}

static void ov12_02221A14(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    int v1;

    param0->unk_18 += 1;

    v0 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v1 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;
    param0->unk_68[v0] = v1;
}

void ov12_02221A30(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    int v1;

    param0->unk_18 += 1;

    v0 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v1 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;
    param0->unk_78[v0] = v1;
}

static void ov12_02221A4C(UnkStruct_ov12_0221FCDC *param0)
{
    return;
}

static void ov12_02221A50(UnkStruct_ov12_0221FCDC *param0)
{
    return;
}

static BOOL (*const Unk_ov12_022385CC[])(SysTask *, UnkStruct_ov12_02221BBC *) = {
    ov12_02221C50,
    ov12_02221F44,
    ov12_022222A4,
    ov12_02221D50,
    ov12_0222206C,
    ov12_022222B0
};

static BOOL (*const Unk_ov12_02238644[])(UnkStruct_ov12_02221BBC *) = {
    ov12_0222235C,
    ov12_02222360,
    ov12_022226D0,
    ov12_022226E8,
    ov12_0222235C,
    ov12_0222240C,
    ov12_022224E4
};

static BOOL ov12_02221A54(UnkStruct_ov12_02221BBC *param0, UnkStruct_ov12_0221FCDC *param1, int param2)
{
    int v0;
    int v1;

    v0 = ov12_0223525C(param1, param1->unk_BC->unk_14);
    v1 = ov12_0223525C(param1, param1->unk_BC->unk_16);

    if (param0->unk_1C[param2] == 2) {
        if (v0 == v1) {
            if (v1 == 0x3) {
                return 0;
            } else {
                return 1;
            }
        } else if (v1 == 0x3) {
            return 1;
        }
    } else if (param0->unk_1C[param2] != 0) {
        if (v1 == 0x3) {
            return 1;
        }
    }

    return 0;
}

static void ov12_02221AA8(UnkStruct_ov12_02221BBC *param0, UnkStruct_ov12_0221FCDC *param1, int param2, int param3)
{
    Graphics_LoadTilesToBgLayer(7, ov12_022234E4(param3, 0), param1->unk_C0, param2, 0, 0, 1, param1->unk_00);
    PaletteData_LoadBufferFromFileStart(param1->unk_C4, 7, ov12_022234E4(param3, 1), param1->unk_00, 0, 0x20, (9 * 16));
    Bg_ClearTilemap(param1->unk_C0, param2);

    {
        int v0 = 2;

        if (ov12_0221FDD4(param1) == 1) {
            v0 = 4;
        } else if (ov12_02221A54(param0, param1, 7) == 1) {
            v0 = 3;
        }

        Graphics_LoadTilemapToBgLayer(7, ov12_022234E4(param3, v0), param1->unk_C0, param2, 0, 0, 1, param1->unk_00);
    }
}

static int ov12_02221B54(int param0, int param1)
{
    int v0;
    int v1;

    if (((param0 << 16) & param1) == param1) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    return v0;
}

static void ov12_02221B64(UnkStruct_ov12_02221BBC *param0)
{
    int v0;
    int v1;
    int v2;
    const u32 v3[] = {
        0x20000,
        0x40000,
        0x200000,
        0x400000
    };

    for (v0 = 0; v0 < NELEMS(v3); v0++) {
        if (ov12_02221B54(param0->unk_18, v3[v0]) == 0) {
            continue;
        }

        v1 = 0;
        v2 = ((v3[v0] >> 1) >> 16);
        v2 = v3[v0] >> 16;

        while (v2 >= 2) {
            v2 /= 2;
            v1++;
        }

        Unk_ov12_02238644[v1](param0);
    }
}

static UnkStruct_ov12_02221BBC *ov12_02221BBC(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_02221BBC *v0 = NULL;

    v0 = Heap_AllocFromHeap(param0->unk_00, sizeof(UnkStruct_ov12_02221BBC));

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
        return NULL;
    }

    memset(v0, 0, sizeof(UnkStruct_ov12_02221BBC));

    v0->unk_00 = 0;
    v0->unk_05 = 0;
    v0->unk_48 = param0;
    v0->unk_09 = 0;
    v0->unk_0A = 31;
    v0->unk_0B = 31 - 2;
    v0->unk_0C = 0 + 2;

    if (ov12_02220280(param0, 5) == 1) {
        v0->unk_09 = 0;
        v0->unk_0A = 31;
        v0->unk_0B = 15;
        v0->unk_0C = 7;
    }

    if (ov12_02220280(param0, 5) == 2) {
        v0->unk_09 = 7;
        v0->unk_0A = 15;
        v0->unk_0B = 31 - 2;
        v0->unk_0C = 0 + 2;
    }

    {
        int v1;

        for (v1 = 0; v1 < (8 + 2); v1++) {
            v0->unk_1C[v1] = param0->unk_90[v1];
        }
    }

    param0->unk_178 = 1;

    return v0;
}

static BOOL ov12_02221C50(SysTask *param0, UnkStruct_ov12_02221BBC *param1)
{
    switch (param1->unk_05) {
    case 0:

        ov12_02222590(param1->unk_48, 2);
        {
            int v0 = ov12_02223428(param1->unk_48, 2);
            int v1 = ov12_02223428(param1->unk_48, 1);

            Bg_SetPriority(3, v0);
            Bg_SetPriority(2, v0);
        }
        Bg_ToggleLayer(2, 1);

        param1->unk_05++;
        break;

    case 1: {
        Bg_SetControlParam(param1->unk_48->unk_C0, 3, 2, GX_BG_CHARBASE_0x0c000);

        if (ov12_0221FDD4(param1->unk_48) != 1) {
            Bg_SetControlParam(param1->unk_48->unk_C0, 3, 0, GX_BG_COLORMODE_16);
        }

        ov12_02221AA8(param1, param1->unk_48, 3, param1->unk_10);
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG3, param1->unk_0A, param1->unk_09);
        ov12_02221B64(param1);
    }
        param1->unk_05++;

    case 2: {
        int v2 = 0;

        if (param1->unk_09 < param1->unk_0B) {
            param1->unk_09 += 2;
        } else {
            v2++;
        }

        if (param1->unk_0A > param1->unk_0C) {
            param1->unk_0A -= 2;
        } else {
            v2++;
        }

        if (v2 == 2) {
            param1->unk_09 = param1->unk_0B;
            param1->unk_0A = param1->unk_0C;
            param1->unk_05++;
        }

        G2_ChangeBlendAlpha(param1->unk_0A, param1->unk_09);

        if (param1->unk_05 != 2) {
            return 0;
        }
    } break;
    default:
        return 0;
    }

    return 1;
}

static BOOL ov12_02221D50(SysTask *param0, UnkStruct_ov12_02221BBC *param1)
{
    switch (param1->unk_05) {
    case 0:
        Bg_ToggleLayer(2, 1);
        param1->unk_05++;
    case 1: {
        int v0 = ov12_02223428(param1->unk_48, 2);
        int v1 = ov12_02223428(param1->unk_48, 1);

        Bg_SetPriority(3, v0);
        Bg_SetPriority(2, v0);

        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG3, param1->unk_09, param1->unk_0A);
        ov12_02221B64(param1);
    }
        param1->unk_05++;

    case 2: {
        int v2 = 0;

        if (param1->unk_09 < param1->unk_0B) {
            param1->unk_09 += 2;
        } else {
            v2++;
        }

        if (param1->unk_0A > param1->unk_0C) {
            param1->unk_0A -= 2;
        } else {
            v2++;
        }

        if (v2 == 2) {
            param1->unk_09 = param1->unk_0B + 2;
            param1->unk_0A = param1->unk_0C - 2;
            param1->unk_05++;
        }

        G2_ChangeBlendAlpha(param1->unk_09, param1->unk_0A);
    } break;
    case 3:
        if (param1->unk_44_0 == 1) {
            ov12_02222338(param1->unk_48);
        }

        if (param1->unk_44_1 == 1) {
            ov12_02222338(param1->unk_48);
        }

        Bg_SetOffset(param1->unk_48->unk_C0, 3, 0, 0);
        Bg_SetOffset(param1->unk_48->unk_C0, 3, 3, 0);
        Bg_SetControlParam(param1->unk_48->unk_C0, 3, 2, GX_BG_CHARBASE_0x10000);

        if (ov12_0221FDD4(param1->unk_48) == 0) {
            Bg_SetControlParam(param1->unk_48->unk_C0, 3, 0, GX_BG_COLORMODE_256);
            ov12_02223460(param1->unk_48, 3);
            ov12_02223488(param1->unk_48);
        } else {
            Graphics_LoadTilesToBgLayer(param1->unk_48->unk_180.unk_00, param1->unk_48->unk_180.unk_04, param1->unk_48->unk_C0, 3, 0, 0, 1, param1->unk_48->unk_00);
            PaletteData_LoadBufferFromFileStart(param1->unk_48->unk_C4, param1->unk_48->unk_180.unk_00, param1->unk_48->unk_180.unk_08, param1->unk_48->unk_00, 0, param1->unk_48->unk_180.unk_14 * 0x20, param1->unk_48->unk_180.unk_10);
        }

        Graphics_LoadTilemapToBgLayer(param1->unk_48->unk_180.unk_00, param1->unk_48->unk_180.unk_0C, param1->unk_48->unk_C0, 3, 0, 0, 1, param1->unk_48->unk_00);
        param1->unk_05++;
        break;
    case 4:
        if (ov12_0221FDD4(param1->unk_48) == 0) {
            Battle_SetDefaultBlend();
        } else {
            ov17_022413D8();
        }

        ov12_02222664(param1->unk_48, 2);
        param1->unk_05++;
        break;
    default:
        return 0;
    }

    return 1;
}

static BOOL ov12_02221F44(SysTask *param0, UnkStruct_ov12_02221BBC *param1)
{
    switch (param1->unk_05) {
    case 0:
        if (param1->unk_0D == 0) {
            PaletteData_StartFade(param1->unk_48->unk_C4, 0x1, param1->unk_48->unk_198, 0, 0, 16, 0);
            PaletteData_BlendMulti(param1->unk_48->unk_C4, 0, 0x200, 16, 0);
        } else {
            PaletteData_StartFade(param1->unk_48->unk_C4, 0x1, param1->unk_48->unk_198, 0, 0, 16, 0xFFFF);
            PaletteData_BlendMulti(param1->unk_48->unk_C4, 0, 0x200, 16, 0xFFFF);
        }

        param1->unk_05++;
    case 1:
        if (PaletteData_GetSelectedBuffersMask(param1->unk_48->unk_C4) != 0) {
            break;
        }

        Bg_SetControlParam(param1->unk_48->unk_C0, 3, 0, GX_BG_COLORMODE_16);
        ov12_02221AA8(param1, param1->unk_48, 3, param1->unk_10);

        if (param1->unk_0D == 0) {
            PaletteData_StartFade(param1->unk_48->unk_C4, 0x1, (1 << 9), 0, 16, 0, 0);
        } else {
            PaletteData_StartFade(param1->unk_48->unk_C4, 0x1, (1 << 9), 0, 16, 0, 0xFFFF);
        }

        ov12_02221B64(param1);

        param1->unk_48->unk_178 = 2;
        param1->unk_05++;
        break;
    default:
        if (PaletteData_GetSelectedBuffersMask(param1->unk_48->unk_C4) != 0) {
            break;
        }

        return 0;
    }

    return 1;
}

static BOOL ov12_0222206C(SysTask *param0, UnkStruct_ov12_02221BBC *param1)
{
    switch (param1->unk_05) {
    case 0:
        ov12_02221B64(param1);
        param1->unk_05++;
    case 1:
        if (param1->unk_0D == 0) {
            PaletteData_StartFade(param1->unk_48->unk_C4, 0x1, (1 << 9), 0, 0, 16, 0);
            PaletteData_BlendMulti(param1->unk_48->unk_C4, 0, param1->unk_48->unk_198, 16, 0);
        } else {
            PaletteData_StartFade(param1->unk_48->unk_C4, 0x1, (1 << 9), 0, 0, 16, 0xFFFF);
            PaletteData_BlendMulti(param1->unk_48->unk_C4, 0, param1->unk_48->unk_198, 16, 0xFFFF);
        }

        param1->unk_05++;
    case 2:
        if (PaletteData_GetSelectedBuffersMask(param1->unk_48->unk_C4) != 0) {
            break;
        }

        if (param1->unk_44_0 == 1) {
            ov12_02222338(param1->unk_48);
        }

        if (param1->unk_44_1 == 1) {
            ov12_02222338(param1->unk_48);
        }

        Bg_ToggleLayer(3, 0);

        if (ov12_0221FDD4(param1->unk_48) == 0) {
            Bg_SetControlParam(param1->unk_48->unk_C0, 3, 0, GX_BG_COLORMODE_256);

            ov12_02223460(param1->unk_48, 3);
            ov12_02223488(param1->unk_48);
        } else {
            Graphics_LoadTilesToBgLayer(param1->unk_48->unk_180.unk_00, param1->unk_48->unk_180.unk_04, param1->unk_48->unk_C0, 3, 0, 0, 1, param1->unk_48->unk_00);
            PaletteData_LoadBufferFromFileStart(param1->unk_48->unk_C4, param1->unk_48->unk_180.unk_00, param1->unk_48->unk_180.unk_08, param1->unk_48->unk_00, 0, param1->unk_48->unk_180.unk_14 * 0x20, param1->unk_48->unk_180.unk_10);
        }

        Graphics_LoadTilemapToBgLayer(param1->unk_48->unk_180.unk_00, param1->unk_48->unk_180.unk_0C, param1->unk_48->unk_C0, 3, 0, 0, 1, param1->unk_48->unk_00);
        Bg_ToggleLayer(3, 1);

        param1->unk_05++;
    case 3:
        Bg_SetOffset(param1->unk_48->unk_C0, 3, 0, 0);
        Bg_SetOffset(param1->unk_48->unk_C0, 3, 3, 0);

        if (param1->unk_0D == 0) {
            PaletteData_StartFade(param1->unk_48->unk_C4, 0x1, param1->unk_48->unk_198, 0, 16, 0, 0);
        } else {
            PaletteData_StartFade(param1->unk_48->unk_C4, 0x1, param1->unk_48->unk_198, 0, 16, 0, 0xFFFF);
        }

        param1->unk_05++;

    default:
        if (PaletteData_GetSelectedBuffersMask(param1->unk_48->unk_C4) != 0) {
            break;
        }

        param1->unk_48->unk_178 = 2;
        param1->unk_05++;

        return 0;
    }

    return 1;
}

static BOOL ov12_022222A4(SysTask *param0, UnkStruct_ov12_02221BBC *param1)
{
    ov12_02221B64(param1);
    return 0;
}

static BOOL ov12_022222B0(SysTask *param0, UnkStruct_ov12_02221BBC *param1)
{
    ov12_02221B64(param1);

    if (param1->unk_44_0 == 1) {
        ov12_02222338(param1->unk_48);
    }

    return 0;
}

static void ov12_022222D4(SysTask *param0, void *param1)
{
    UnkStruct_ov12_022222D4 *v0 = (UnkStruct_ov12_022222D4 *)param1;

    if (v0->unk_18 == 1) {
        Heap_FreeToHeap(v0);
        SysTask_Done(param0);
        return;
    }

    v0->unk_04 += v0->unk_08;
    v0->unk_06 += v0->unk_0A;

    if (v0->unk_08 != 0) {
        Bg_SetOffset(v0->unk_00, v0->unk_0C, 0, v0->unk_04);
    }

    if (v0->unk_0A != 0) {
        Bg_SetOffset(v0->unk_00, v0->unk_0C, 3, v0->unk_06);
    }
}

void ov12_02222338(UnkStruct_ov12_0221FCDC *param0)
{
    GF_ASSERT(param0);

    if (param0->unk_17C == NULL) {
        return;
    }

    param0->unk_17C->unk_18 = 1;
}

int ov12_02222354(UnkStruct_ov12_0221FCDC *param0)
{
    return param0->unk_198;
}

static BOOL ov12_0222235C(UnkStruct_ov12_02221BBC *param0)
{
    return 0;
}

static BOOL ov12_02222360(UnkStruct_ov12_02221BBC *param0)
{
    int v0;
    UnkStruct_ov12_022222D4 *v1;

    v1 = Heap_AllocFromHeap(param0->unk_48->unk_00, sizeof(UnkStruct_ov12_022222D4));

    v1->unk_00 = param0->unk_48->unk_C0;
    v1->unk_04 = param0->unk_48->unk_90[2];
    v1->unk_06 = param0->unk_48->unk_90[3];
    v1->unk_08 = param0->unk_48->unk_90[0];
    v1->unk_0A = param0->unk_48->unk_90[1];
    v1->unk_0C = 3;
    v1->unk_10 = 3;

    if (ov12_02221A54(param0, param0->unk_48, 6) == 1) {
        v1->unk_08 *= -1;
        v1->unk_0A *= -1;
        v1->unk_04 *= -1;
        v1->unk_06 *= -1;
    }

    v1->unk_14 = 1;
    v1->unk_18 = 0;

    param0->unk_48->unk_17C = v1;
    param0->unk_44_0 = 1;

    SysTask_Start(ov12_022222D4, v1, 0x1001);

    return 0;
}

static BOOL ov12_0222240C(UnkStruct_ov12_02221BBC *param0)
{
    int v0, v1;
    UnkStruct_ov12_0221FCDC *v2;
    UnkStruct_ov12_022222D4 *v3;

    v2 = param0->unk_48;
    v3 = Heap_AllocFromHeap(param0->unk_48->unk_00, sizeof(UnkStruct_ov12_022222D4));

    v3->unk_1C = Heap_AllocFromHeap(v2->unk_00, sizeof(UnkStruct_ov12_022224F8));
    v2->unk_17C = v3;

    param0->unk_44_1 = 1;

    v3->unk_18 = 0;
    v3->unk_1C->unk_C0 = ov12_02226544(ov12_022266F0(ov12_022233EC(v2, 2)), ov12_022266E8(0, 0), v2->unk_00);

    for (v0 = 0; v0 < ((192 - 64) / 8); v0++) {
        v3->unk_1C->unk_00[v0].unk_00 = (v0 * 8);
        v3->unk_1C->unk_00[v0].unk_02 = (v3->unk_1C->unk_00[v0].unk_00 + 8);
        v3->unk_1C->unk_00[v0].unk_04 = Unk_ov12_02238660[v0];
        v3->unk_1C->unk_00[v0].unk_06 = 0;
        v3->unk_1C->unk_00[v0].unk_08 = ov12_022266E8(0, 0);

        if (ov12_02221A54(param0, param0->unk_48, 6) == 1) {
            v3->unk_1C->unk_00[v0].unk_04 *= -1;
        }
    }

    SysTask_Start(ov12_022224F8, v3, 0x1000);
    return 0;
}

static BOOL ov12_022224E4(UnkStruct_ov12_02221BBC *param0)
{
    UnkStruct_ov12_0221FCDC *v0;
    UnkStruct_ov12_022222D4 *v1;

    v0 = param0->unk_48;
    v1 = param0->unk_48->unk_17C;

    param0->unk_44_1 = 1;
    return 0;
}

static void ov12_022224F8(SysTask *param0, void *param1)
{
    int v0, v1;
    u32 *v2;
    UnkStruct_ov12_022224F8 *v3 = (UnkStruct_ov12_022224F8 *)(((UnkStruct_ov12_022222D4 *)param1)->unk_1C);
    UnkStruct_ov12_022222D4 *v4 = (UnkStruct_ov12_022222D4 *)param1;

    if (v4->unk_18 == 1) {
        ov12_022265C0(v4->unk_1C->unk_C0);
        Heap_FreeToHeap(v4->unk_1C);
        Heap_FreeToHeap(v4);
        SysTask_Done(param0);
        return;
    }

    v2 = ov12_022265E4(v3->unk_C0);

    for (v0 = 0; v0 < ((192 - 64) / 8); v0++) {
        v3->unk_00[v0].unk_06 += v3->unk_00[v0].unk_04;

        for (v1 = v3->unk_00[v0].unk_00; v1 < v3->unk_00[v0].unk_02; v1++) {
            s16 v5, v6;

            v5 = v3->unk_00[v0].unk_08 & 0xffff;
            v6 = v3->unk_00[v0].unk_08 >> 16;

            v2[v1] = ov12_022266E8(v5 + v3->unk_00[v0].unk_06, v6);
        }
    }
}

void ov12_02222590(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    int v0 = ov12_02223428(param0, 2);

    Bg_SetPriority(param1, v0);
    Bg_ToggleLayer(param1, 0);

    if (ov12_0221FDD4(param0) == 1) {
        Bg_SetControlParam(param0->unk_C0, param1, 2, GX_BG_CHARBASE_0x10000);
    } else {
        Bg_SetControlParam(param0->unk_C0, param1, 0, GX_BG_COLORMODE_256);
        Bg_SetControlParam(param0->unk_C0, param1, 2, GX_BG_CHARBASE_0x10000);
    }

    Bg_ClearTilemap(param0->unk_C0, param1);

    if (ov12_0221FDD4(param0) == 1) {
        Graphics_LoadTilesToBgLayer(param0->unk_180.unk_00, param0->unk_180.unk_04, param0->unk_C0, param1, 0, 0, 1, param0->unk_00);
    } else {
        ov12_02223460(param0, param1);
    }

    Graphics_LoadTilemapToBgLayer(param0->unk_180.unk_00, param0->unk_180.unk_0C, param0->unk_C0, param1, 0, 0, 1, param0->unk_00);
}

void ov12_02222664(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    int v0 = ov12_02223428(param0, 1);

    Bg_SetPriority(param1, v0);

    if (ov12_0221FDD4(param0) == 1) {
        Bg_SetControlParam(param0->unk_C0, param1, 2, GX_BG_CHARBASE_0x0c000);
    } else {
        Bg_SetControlParam(param0->unk_C0, param1, 0, GX_BG_COLORMODE_16);
        Bg_SetControlParam(param0->unk_C0, param1, 2, GX_BG_CHARBASE_0x0c000);
    }

    Bg_ClearTilemap(param0->unk_C0, param1);
}

static BOOL ov12_022226D0(UnkStruct_ov12_02221BBC *param0)
{
    param0->unk_44_0 = 1;
    return 0;
}

static BOOL ov12_022226E8(UnkStruct_ov12_02221BBC *param0)
{
    ov12_02222338(param0->unk_48);
    return 0;
}

static void ov12_022226F4(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02221BBC *v0 = (UnkStruct_ov12_02221BBC *)param1;
    BOOL v1;

    v1 = Unk_ov12_022385CC[v0->unk_14](param0, v0);

    if (v1 == 0) {
        v0->unk_48->unk_178 = 0;

        Heap_FreeToHeap(v0);
        SysTask_Done(param0);
    }
}

static void ov12_02222724(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_02221BBC *v0;
    int v1;

    v0 = ov12_02221BBC(param0);

    v0->unk_0D = ov12_02220280(param0, 4);
    param0->unk_18 += 1;

    v0->unk_10 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v1 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v0->unk_14 = (v1 & 0xFFFF);
    v0->unk_18 = (v1 & 0xFFFF0000) >> 16;

    SysTask_Start(ov12_022226F4, v0, 1100);
}

static void ov12_02222774(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    s16 v1;

    param0->unk_18 += 1;

    v0 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v1 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    switch (v0) {
    case 0:
        param0->unk_17C->unk_08 = v1;
        break;
    case 1:
        param0->unk_17C->unk_0A = v1;
        break;
    case 2:
        param0->unk_17C->unk_04 = v1;
        break;
    case 3:
        param0->unk_17C->unk_04 = v1;
        break;
    default:
        break;
    }
}

static void ov12_022227CC(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_02221BBC *v0;
    int v1;

    v0 = ov12_02221BBC(param0);

    v0->unk_0D = ov12_02220280(param0, 4);
    param0->unk_18 += 1;

    v0->unk_10 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v1 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v0->unk_14 = (v1 & 0xFFFF) + 3;
    v0->unk_18 = (v1 & 0xFFFF0000) >> 16;

    SysTask_Start(ov12_022226F4, v0, 1100);
}

static void ov12_02222820(UnkStruct_ov12_0221FCDC *param0)
{
    if (param0->unk_178 == 2) {
        param0->unk_18 += 1;
        param0->unk_89 = 0;
    } else {
        param0->unk_89 = 1;
    }
}

static void ov12_02222840(UnkStruct_ov12_0221FCDC *param0)
{
    if (param0->unk_178 == 0) {
        param0->unk_18 += 1;
        param0->unk_89 = 0;
    } else {
        param0->unk_89 = 1;
    }
}

static void ov12_02222860(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;

    param0->unk_18 += 1;
    v0 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    Graphics_LoadTilesToBgLayer(7, ov12_022234E4(v0, 0), param0->unk_C0, 3, 0, 0, 1, param0->unk_00);
    Graphics_LoadPalette(7, ov12_022234E4(v0, 1), 0, 0, 0, param0->unk_00);
    Graphics_LoadTilemapToBgLayer(7, ov12_022234E4(v0, 2), param0->unk_C0, 3, 0, 0, 1, param0->unk_00);
}

static void ov12_022228DC(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_02221BBC *v0;
    int v1, v2, v3;

    v0 = ov12_02221BBC(param0);

    param0->unk_18 += 1;

    v1 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v2 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v3 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    if (ov12_0221FDD4(param0) == 1) {
        v0->unk_10 = v3;
    } else {
        if (ov12_0223525C(param0, param0->unk_BC->unk_16) == 0x3) {
            v0->unk_10 = v2;
        } else {
            v0->unk_10 = v1;
        }
    }

    SysTask_Start(ov12_022226F4, v0, 1100);
}

static void ov12_0222293C(UnkStruct_ov12_0221FCDC *param0)
{
    return;
}

static void ov12_02222940(UnkStruct_ov12_0221FCDC *param0)
{
    return;
}

static void ov12_02222944(UnkStruct_ov12_0221FCDC *param0)
{
    return;
}

static void ov12_02222948(UnkStruct_ov12_0221FCDC *param0)
{
    return;
}

static void ov12_0222294C(UnkStruct_ov12_0221FCDC *param0)
{
    return;
}

static void ov12_02222950(UnkStruct_ov12_0221FCDC *param0)
{
    u16 v0;

    param0->unk_18 += 1;
    v0 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    Sound_PlayEffect(v0);
}

static void ov12_02222968(UnkStruct_ov12_0221FCDC *param0)
{
    u16 v0;

    param0->unk_18 += 1;

    v0 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    Sound_StopEffect(v0, 0);
}

static void ov12_02222984(UnkStruct_ov12_0221FCDC *param0)
{
    u16 v0;
    int v1;

    param0->unk_18 += 1;

    v0 = (u16)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v1 = (int)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v1 = ov12_0222317C(param0, v1);

    Sound_PlayEffect(v0);
    sub_020057FC(v0, 0xffff, v1);
}

static void ov12_022229BC(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;

    param0->unk_18 += 1;

    v0 = (int)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v0 = ov12_0222317C(param0, v0);
    sub_02005818(v0);
}

static void ov12_022229D8(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_02220314 *v0 = NULL;

    v0 = ov12_02220314(param0);
    memset(v0, 0, sizeof(UnkStruct_ov12_02220314));

    v0->unk_00 = 1;
    param0->unk_18 += 1;

    v0->unk_1A = (u16)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v0->unk_08 = (int)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v0->unk_0C = (int)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v0->unk_10 = (int)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v0->unk_03 = (u8)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v0->unk_08 = ov12_0222317C(param0, v0->unk_08);
    v0->unk_0C = ov12_0222317C(param0, v0->unk_0C);
    v0->unk_10 = ov12_02223234(v0->unk_08, v0->unk_0C, v0->unk_10);

    Sound_PlayEffect(v0->unk_1A);
    sub_020057FC(v0->unk_1A, 0xffff, v0->unk_08);

    ov12_02220344(param0, v0);
}

static void ov12_02222A78(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_02220314 *v0 = NULL;

    v0 = ov12_02220314(param0);
    memset(v0, 0, sizeof(UnkStruct_ov12_02220314));

    v0->unk_00 = 2;
    param0->unk_18 += 1;

    v0->unk_1A = (u16)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v0->unk_08 = (s8)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v0->unk_0C = (s8)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v0->unk_10 = (s8)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v0->unk_03 = (u8)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    Sound_PlayEffect(v0->unk_1A);
    sub_020057FC(v0->unk_1A, 0xffff, v0->unk_08);

    ov12_02220344(param0, v0);
}

static void ov12_02222AF0(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_02220314 *v0 = NULL;

    v0 = ov12_02220314(param0);
    memset(v0, 0, sizeof(UnkStruct_ov12_02220314));

    v0->unk_00 = 1;
    param0->unk_18 += 1;

    v0->unk_1A = (u16)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v0->unk_08 = (s8)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v0->unk_0C = (s8)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v0->unk_10 = (s8)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v0->unk_03 = (u8)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v0->unk_08 = ov12_0222317C(param0, v0->unk_08);
    v0->unk_0C = ov12_0222317C(param0, v0->unk_0C);
    v0->unk_10 = ov12_0222317C(param0, v0->unk_10);

    Sound_PlayEffect(v0->unk_1A);
    sub_020057FC(v0->unk_1A, 0xffff, v0->unk_08);

    ov12_02220344(param0, v0);
}

static void ov12_02222B94(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_02220314 *v0 = NULL;

    v0 = ov12_02220314(param0);
    memset(v0, 0, sizeof(UnkStruct_ov12_02220314));

    v0->unk_00 = 4;
    param0->unk_18 += 1;

    v0->unk_1A = (u16)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v0->unk_14 = (s8)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v0->unk_03 = (u8)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v0->unk_18 = (u8)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v0->unk_04 = v0->unk_03;
    v0->unk_14 = ov12_0222317C(param0, v0->unk_14);

    ov12_02220344(param0, v0);
}

static void ov12_02222BF8(UnkStruct_ov12_0221FCDC *param0)
{
    UnkStruct_ov12_02220314 *v0 = NULL;

    v0 = ov12_02220314(param0);
    memset(v0, 0, sizeof(UnkStruct_ov12_02220314));

    v0->unk_00 = 5;

    param0->unk_18 += 1;

    v0->unk_1A = (u16)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v0->unk_14 = (s8)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v0->unk_03 = (u8)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v0->unk_14 = ov12_0222317C(param0, v0->unk_14);

    ov12_02220344(param0, v0);
}

static void ov12_02222C50(UnkStruct_ov12_0221FCDC *param0)
{
    (void)0;
}

static void ov12_02222C54(UnkStruct_ov12_0221FCDC *param0)
{
    if (param0->unk_8C) {
        param0->unk_89 = 1;
        param0->unk_179 = 0;
        return;
    }

    if (sub_020057E0()) {
        param0->unk_179++;

        if (param0->unk_179 > 90) {
            param0->unk_179 = 0;
        } else {
            param0->unk_89 = 1;
            return;
        }
    } else {
        param0->unk_89 = 0;
        param0->unk_179 = 0;
        param0->unk_18 += 1;
    }
}

static void ov12_02222CAC(UnkStruct_ov12_0221FCDC *param0)
{
    u16 v0;
    u16 v1;

    param0->unk_18 += 1;

    v0 = (u16)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v1 = (u16)inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, GX_BLEND_PLANEMASK_BG1, v0, v1);
}

static void ov12_02222CDC(UnkStruct_ov12_0221FCDC *param0)
{
    ov12_02220474();
}

static void ov12_02222CE4(UnkStruct_ov12_0221FCDC *param0)
{
    return;
}

static void ov12_02222CE8(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    int v1;
    int v2;

    param0->unk_18 += 1;

    v1 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v2 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    GF_ASSERT(param0->unk_C8[v1] == NULL);
    param0->unk_C8[v1] = SpriteManager_New(param0->unk_BC->unk_AC);
    GF_ASSERT(param0->unk_C8[v1] != NULL);

    SpriteSystem_InitSprites(param0->unk_BC->unk_AC, param0->unk_C8[v1], v2);
    SetSubScreenViewRect(SpriteSystem_GetRenderer(param0->unk_BC->unk_AC), 0, ((192 + 80) << FX32_SHIFT));

    {
        SpriteResourceCapacities v3;

        for (v0 = 0; v0 < 6; v0++) {
            v3.asArray[v0] = inline_ov12_022204C4(param0->unk_18);
            param0->unk_18 += 1;
        }

        SpriteSystem_InitManagerWithCapacities(param0->unk_BC->unk_AC, param0->unk_C8[v1], &v3);
    }
}

static void ov12_02222D84(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    int v1;

    param0->unk_18 += 1;

    v0 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v1 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    SpriteSystem_LoadCharResObjFromOpenNarc(param0->unk_BC->unk_AC, param0->unk_C8[v0], param0->unk_1A0[2], v1, TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, v1 + 5000);
}

static void ov12_02222DCC(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    int v1;
    int v2;

    param0->unk_18 += 1;

    v0 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v1 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v2 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    SpriteSystem_LoadPaletteBufferFromOpenNarc(param0->unk_C4, 2, param0->unk_BC->unk_AC, param0->unk_C8[v0], param0->unk_1A0[3], v1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, v2, v1 + 5000);
}

static void ov12_02222E2C(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    int v1;

    param0->unk_18 += 1;

    v0 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v1 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_BC->unk_AC, param0->unk_C8[v0], param0->unk_1A0[4], v1, 1, v1 + 5000);
}

static void ov12_02222E74(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    int v1;

    param0->unk_18 += 1;

    v0 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v1 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_BC->unk_AC, param0->unk_C8[v0], param0->unk_1A0[5], v1, 1, v1 + 5000);
}

static void ov12_02222EBC(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    int v1;
    int v2;
    int v3;
    ManagedSprite *v4;
    UnkFuncPtr_ov12_02239E68 v5;

    param0->unk_18 += 1;

    v2 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v1 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    {
        SpriteTemplate v6;
        int v7;

        v7 = ov12_02220248(param0);

        v6.x = ov12_022258E0(param0, v7, 0);
        v6.y = ov12_022258E0(param0, v7, 1);
        v6.z = 0;
        v6.animIdx = 0;
        v6.priority = 100;
        v6.plttIdx = 0;
        v6.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        v6.bgPriority = 1;
        v6.vramTransfer = FALSE;

        for (v0 = 0; v0 < 6; v0++) {
            v6.resources[v0] = inline_ov12_022204C4(param0->unk_18) + 5000;
            param0->unk_18 += 1;
        }

        param0->unk_100 = v6;

        v4 = SpriteSystem_NewSprite(param0->unk_BC->unk_AC, param0->unk_C8[v2], &v6);
    }

    v3 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    for (v0 = 0; v0 < v3; v0++) {
        param0->unk_90[v0] = inline_ov12_022204C4(param0->unk_18);
        param0->unk_18 += 1;
    }

    for (; v0 < (8 + 2); v0++) {
        param0->unk_90[v0] = 0;
    }

    v5 = ov12_022269AC(v1);
    v5(param0, param0->unk_BC->unk_AC, param0->unk_C8[v2], v4);
}

static void ov12_02222FC8(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    int v1;
    int v2;
    ManagedSprite *v3;
    UnkFuncPtr_ov12_02239E68 v4;

    param0->unk_18 += 1;

    v1 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v2 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    {
        SpriteTemplate v5;
        int v6;

        v6 = ov12_02220248(param0);

        v5.x = ov12_022258E0(param0, v6, 0);
        v5.y = ov12_022258E0(param0, v6, 1);
        v5.z = 0;
        v5.animIdx = 0;
        v5.priority = 100;
        v5.plttIdx = 0;
        v5.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        v5.bgPriority = 1;
        v5.vramTransfer = FALSE;

        for (v0 = 0; v0 < 6; v0++) {
            v5.resources[v0] = inline_ov12_022204C4(param0->unk_18) + 5000;
            param0->unk_18 += 1;
        }

        param0->unk_100 = v5;

        v3 = SpriteSystem_NewSprite(param0->unk_BC->unk_AC, param0->unk_C8[v1], &v5);
        GF_ASSERT(param0->unk_D8[v2] == NULL);
        param0->unk_D8[v2] = v3;
    }
}

static void ov12_0222307C(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;

    param0->unk_18 += 1;

    v0 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    if (param0->unk_C8[v0] != NULL) {
        SpriteSystem_FreeResourcesAndManager(param0->unk_BC->unk_AC, param0->unk_C8[v0]);
    }

    param0->unk_C8[v0] = NULL;
}

static void ov12_022230A8(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    int v1;

    param0->unk_18 += 1;

    v0 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v1 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    ManagedSprite_SetDrawFlag(param0->unk_138[v0], v1);
}

static void ov12_022230CC(UnkStruct_ov12_0221FCDC *param0)
{
    GF_ASSERT(FALSE);
}

static void ov12_022230D4(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;
    s16 v1;
    int v2;
    int v3;
    int v4;

    param0->unk_18 += 1;

    v0 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v1 = (s16)inline_ov12_022204C4(param0->unk_18);
    v1 = ov12_0222317C(param0, v1);
    param0->unk_18 += 1;

    v2 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    v3 = param0->unk_BC->unk_D8[param0->unk_BC->unk_14];
    v4 = param0->unk_BC->unk_E8[param0->unk_BC->unk_14];

    Pokemon_PlayCry(param0->unk_BC->unk_10C, v0, v3, v4, v1, v2, param0->unk_BC->unk_118, param0->unk_00);
}

static void ov12_02223134(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;

    if (sub_0200598C() == 0) {
        param0->unk_18 += 1;
        v0 = inline_ov12_022204C4(param0->unk_18);
        param0->unk_18 += 1;
        param0->unk_89 = 0;
        sub_0200592C(v0);
    } else {
        param0->unk_89 = 1;
    }
}

static void ov12_02223160(UnkStruct_ov12_0221FCDC *param0)
{
    return;
}

UnkFuncPtr_ov12_02239EEC ov12_02223164(u32 param0)
{
    if (param0 > (NELEMS(Unk_ov12_022387D4))) {
        return NULL;
    }

    return Unk_ov12_022387D4[param0];
}

int ov12_02223178(UnkStruct_ov12_02223178 *param0)
{
    return param0->unk_01;
}

s8 ov12_0222317C(UnkStruct_ov12_0221FCDC *param0, s8 param1)
{
    int v0;

    v0 = param1;

    {
        int v1 = ov12_02220240(param0);
        int v2 = ov12_02220248(param0);
        int v3 = ov12_0223525C(param0, v1);
        int v4 = ov12_0223525C(param0, v2);

        if ((ov12_0223525C(param0, v1) == 0x3) && (ov12_0223525C(param0, v2) == 0x4)) {
            (void)0;
        } else if ((ov12_0223525C(param0, v1) == 0x4) && (ov12_0223525C(param0, v2) == 0x3)) {
            v0 *= -1;
        } else if ((ov12_0223525C(param0, v1) == 0x3) && (ov12_0223525C(param0, v2) == 0x3)) {
            if (v0 > 0) {
                v0 *= -1;
            }
        } else if ((ov12_0223525C(param0, v1) == 0x4) && (ov12_0223525C(param0, v2) == 0x4)) {
            if (v0 < 0) {
                v0 *= -1;
            }
        }
    }

    if (ov12_0221FDD4(param0) == 1) {
        v0 *= -1;
    }

    return v0;
}

s8 ov12_02223234(s8 param0, s8 param1, s8 param2)
{
    s8 v0;

    if (param0 < param1) {
        v0 = +abs(param2);
    } else if (param0 > param1) {
        v0 = -abs(param2);
    } else {
        v0 = 0;
    }

    return v0;
}

BOOL ov12_0222325C(UnkStruct_ov12_0221FCDC *param0, int param1[], int param2)
{
    int v0, v1;

    param0->unk_18 += 1;

    v0 = inline_ov12_022204C4(param0->unk_18);
    param0->unk_18 += 1;

    if (v0 != param2) {
        GF_ASSERT(v0 == param2);
        return 0;
    }

    for (v1 = 0; v1 < param2; v1++) {
        param1[v1] = inline_ov12_022204C4(param0->unk_18);
        param0->unk_18 += 1;
    }

    return 1;
}

SpriteTemplate ov12_0222329C(UnkStruct_ov12_0221FCDC *param0)
{
    return param0->unk_100;
}

int ov12_022232B8(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    return param0->unk_BC->unk_C0[param1];
}

int ov12_022232C4(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    return param0->unk_BC->unk_E0[param1];
}

int ov12_022232D0(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    return param0->unk_BC->unk_D8[param1];
}

int ov12_022232E0(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    return param0->unk_BC->unk_E8[param1];
}

int ov12_022232EC(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    return param0->unk_BC->unk_EC[param1];
}

PokemonSprite *ov12_022232FC(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    if (param0->unk_BC->unk_C4[param1] == NULL) {
        return NULL;
    }

    if (sub_02008B38(param0->unk_BC->unk_C4[param1])) {
        return param0->unk_BC->unk_C4[param1];
    } else {
        return NULL;
    }
}

PaletteData *ov12_0222332C(UnkStruct_ov12_0221FCDC *param0)
{
    return param0->unk_C4;
}

int ov12_02223334(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    return param0->unk_BC->unk_B0[param1]->unk_08;
}

int ov12_02223344(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    return param0->unk_BC->unk_B0[param1]->unk_04;
}

int ov12_02223354(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    return param0->unk_BC->unk_B0[param1]->unk_0C;
}

BOOL ov12_02223364(UnkStruct_ov12_0221FCDC *param0)
{
    u32 v0;

    v0 = (param0->unk_BC->unk_D4 & 0x2);
    return (v0 != 0) ? 1 : 0;
}

BOOL ov12_0222337C(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    int v0;

    v0 = param0->unk_BC->unk_FC[param1] & (0x40 | 0x80 | 0x40000 | 0x20000000);
    return (v0 != 0) ? 1 : 0;
}

int ov12_0222339C(UnkStruct_ov12_0221FCDC *param0)
{
    int v0;

    if (ov12_0221FDD4(param0) == 1) {
        v0 = 2;
    } else {
        v0 = 1;
    }

    return v0;
}

int ov12_022233B0(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    int v0;
    int v1[][3] = {
        { 0x1, 0x2, 0x3 },
        { 0x1, 0x2, 0x3 }
    };

    if (ov12_0221FDD4(param0) == 1) {
        v0 = v1[1][param1];
    } else {
        v0 = v1[0][param1];
    }

    return v0;
}

int ov12_022233EC(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    int v0;
    int v1[][3] = {
        { 0x1, 0x2, 0x3 },
        { 0x1, 0x2, 0x3 }
    };

    if (ov12_0221FDD4(param0) == 1) {
        v0 = v1[1][param1];
    } else {
        v0 = v1[0][param1];
    }

    return v0;
}

int ov12_02223428(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    int v0;

    switch (param1) {
    case 0:
        if (ov12_0221FDD4(param0) == 1) {
            v0 = 0;
        } else {
            v0 = 0;
        }
        break;
    case 1:
        if (ov12_0221FDD4(param0) == 1) {
            v0 = 1;
        } else {
            v0 = 1;
        }
        break;
    case 2:
        if (ov12_0221FDD4(param0) == 1) {
            v0 = 3;
        } else {
            v0 = 3;
        }
        break;
    case 3:
        return ov12_0222339C(param0);
        break;
    }

    return v0;
}

void ov12_02223460(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    Bg_LoadTiles(param0->unk_C0, param1, param0->unk_BC->unk_110, 0x10000, 0);
}

void ov12_02223488(UnkStruct_ov12_0221FCDC *param0)
{
    PaletteData_LoadBuffer(param0->unk_C4, param0->unk_BC->unk_114, 0, 0, 0x200);
}

BOOL ov12_022234A8(UnkStruct_ov12_0221FCDC *param0, int param1)
{
    int v0;
    int v1;

    v0 = ov12_022210A8(param0, param1);
    v1 = param0->unk_BC->unk_E8[v0];

    if ((ov12_0221FDD4(param0) == 1) && (IsFormSymmetrical(ov12_022232D0(param0, v0), v1) == 1)) {
        return 1;
    }

    return 0;
}

static const int Unk_ov12_02238928[][5] = {
    { 0x41, 0x123, 0x3E, 0x3F, 0x40 },
    { 0x41, 0x123, 0x3E, 0x3F, 0x40 },
    { 0x41, 0x123, 0x3E, 0x3F, 0x40 },
    { 0x41, 0x123, 0x3E, 0x3F, 0x40 },
    { 0x41, 0x123, 0x3E, 0x3F, 0x40 },
    { 0x41, 0x141, 0x3E, 0x3F, 0x40 },
    { 0x45, 0x124, 0x42, 0x43, 0x44 },
    { 0x45, 0x145, 0x42, 0x43, 0x44 },
    { 0x45, 0x148, 0x42, 0x43, 0x44 },
    { 0x46, 0x125, 0x47, 0x47, 0x47 },
    { 0x46, 0x125, 0x47, 0x47, 0x47 },
    { 0x46, 0x13F, 0x47, 0x47, 0x47 },
    { 0x46, 0x140, 0x47, 0x47, 0x47 },
    { 0x46, 0x147, 0x47, 0x47, 0x47 },
    { 0x4C, 0x126, 0x48, 0x48, 0x48 },
    { 0x4C, 0x128, 0x48, 0x48, 0x48 },
    { 0x4C, 0x130, 0x48, 0x48, 0x48 },
    { 0x4C, 0x138, 0x48, 0x48, 0x48 },
    { 0x4C, 0x130, 0x48, 0x48, 0x48 },
    { 0x51, 0x129, 0x52, 0x52, 0x50 },
    { 0x59, 0x12B, 0x56, 0x57, 0x58 },
    { 0x5F, 0x12D, 0x5C, 0x5D, 0x5E },
    { 0x63, 0x12E, 0x60, 0x61, 0x62 },
    { 0x64, 0x12F, 0x65, 0x65, 0x65 },
    { 0x66, 0x131, 0x67, 0x67, 0x67 },
    { 0x69, 0x132, 0x6A, 0x6A, 0x68 },
    { 0x6F, 0x133, 0x6E, 0x6E, 0x6E },
    { 0x6F, 0x153, 0x6E, 0x6E, 0x6E },
    { 0x70, 0x134, 0x71, 0x71, 0x71 },
    { 0x70, 0x135, 0x71, 0x71, 0x71 },
    { 0x70, 0x134, 0x71, 0x71, 0x71 },
    { 0x77, 0x137, 0x74, 0x75, 0x76 },
    { 0x77, 0x137, 0x74, 0x75, 0x76 },
    { 0x77, 0x137, 0x74, 0x75, 0x76 },
    { 0x7C, 0x13B, 0x7D, 0x7D, 0x7D },
    { 0x81, 0x13D, 0x82, 0x82, 0x80 },
    { 0x83, 0x13E, 0x84, 0x84, 0x85 },
    { 0x8A, 0x143, 0x88, 0x89, 0x89 },
    { 0x8B, 0x144, 0x8C, 0x8C, 0x8C },
    { 0x8D, 0x146, 0x8E, 0x8E, 0x8E },
    { 0x92, 0x149, 0x8F, 0x90, 0x91 },
    { 0x96, 0x14A, 0x93, 0x94, 0x95 },
    { 0x97, 0x14B, 0x98, 0x98, 0x98 },
    { 0x99, 0x14C, 0x9A, 0x9A, 0x9A },
    { 0x9B, 0x14D, 0x9C, 0x9C, 0x9C },
    { 0xA0, 0x14E, 0x9D, 0x9E, 0x9F },
    { 0xA1, 0x14F, 0xA2, 0xA2, 0xA2 },
    { 0x34, 0x11E, 0x35, 0x35, 0x35 },
    { 0xA3, 0x150, 0xA4, 0xA5, 0xA4 },
    { 0xA3, 0x152, 0xA4, 0xA5, 0xA4 },
    { 0xA6, 0x151, 0xA8, 0xA7, 0xA7 },
    { 0x4E, 0x127, 0x4F, 0x4F, 0x4F },
    { 0x5A, 0x12C, 0x5B, 0x5B, 0x5B },
    { 0x55, 0x12A, 0x53, 0x53, 0x53 },
    { 0x72, 0x136, 0x73, 0x73, 0x73 },
    { 0x7A, 0x13A, 0x7B, 0x7B, 0x7B },
    { 0x78, 0x139, 0x79, 0x79, 0x79 },
    { 0x86, 0x142, 0x87, 0x87, 0x87 }
};

int ov12_022234E4(int param0, int param1)
{
    return Unk_ov12_02238928[param0][param1];
}

UnkStruct_ov12_02223764 *ov12_022234F8(BattleSystem *param0, int param1, int param2)
{
    int v0;
    int v1[] = { 0, 0, 20, 10, 10, 20 };
    UnkStruct_ov12_02223764 *v2;

    v2 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_ov12_02223764));

    v2->unk_00 = param1;
    v2->unk_04 = param2;
    v2->unk_08.unk_00 = ov16_0223E010(param0);
    v2->unk_08.unk_04 = ov16_0223E018(param0);
    v2->unk_08.unk_08 = BattleSystem_PaletteSys(param0);

    {
        for (v0 = 0; v0 < 4; v0++) {
            v2->unk_24[v0] = NULL;
            v2->unk_34[v0] = ov16_0223F2AC(param0, v0);
        }

        ov16_0223F87C(param0, &(v2->unk_44[0]));
        ov16_0223F8AC(param0, &(v2->unk_48[0]));
    }

    {
        int v3[6];
        NARC *v4;

        v4 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, param1);

        for (v0 = 0; v0 < 4; v0++) {
            if ((v0 != v2->unk_04) && (v2->unk_04 != 0xFF)) {
                continue;
            }

            if (v2->unk_48[v0] == NULL) {
                continue;
            }

            v3[0] = 55555 + v0 + ((v2->unk_04) * 5000);
            v3[1] = 55555 + v0 + ((v2->unk_04) * 5000);
            v3[2] = 55555 + v0 + ((v2->unk_04) * 5000);
            v3[3] = 55555 + v0 + ((v2->unk_04) * 5000);
            v3[4] = 0;
            v3[5] = 0;

            SpriteSystem_LoadCharResObjFromOpenNarc(v2->unk_08.unk_00, v2->unk_08.unk_04, v4, 76, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, v3[SPRITE_RESOURCE_CHAR]);
            SpriteSystem_LoadPaletteBufferFromOpenNarc(v2->unk_08.unk_08, 2, v2->unk_08.unk_00, v2->unk_08.unk_04, v4, 75, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 1, v3[SPRITE_RESOURCE_PLTT]);
            SpriteSystem_LoadCellResObjFromOpenNarc(v2->unk_08.unk_00, v2->unk_08.unk_04, v4, 77, FALSE, v3[SPRITE_RESOURCE_CELL]);
            SpriteSystem_LoadAnimResObjFromOpenNarc(v2->unk_08.unk_00, v2->unk_08.unk_04, v4, 78, FALSE, v3[SPRITE_RESOURCE_ANIM]);
        }

        NARC_dtor(v4);
    }

    {
        int v5;
        int v6;
        int v7;
        void *v8;
        int v9[6];
        ManagedSprite *v10;

        for (v5 = 0; v5 < 4; v5++) {
            if ((v5 != v2->unk_04) && (v2->unk_04 != 0xFF)) {
                continue;
            }

            v2->unk_14[v5] = 55555 + v5 + ((v2->unk_04) * 5000);

            v9[0] = 55555 + v5 + ((v2->unk_04) * 5000);
            v9[1] = 55555 + v5 + ((v2->unk_04) * 5000);
            v9[2] = 55555 + v5 + ((v2->unk_04) * 5000);
            v9[3] = 55555 + v5 + ((v2->unk_04) * 5000);
            v9[4] = 0;
            v9[5] = 0;

            v6 = v2->unk_34[v5]->unk_04;
            v7 = v2->unk_34[v5]->unk_08;
            v8 = v2->unk_34[v5]->unk_00;

            {
                int v11;
                SpriteTemplate v12;
                PokemonSprite *v13;
                s16 v14, v15;

                v13 = v2->unk_48[v5];

                if (v13 != NULL) {
                    v14 = sub_020080C0(v13, 0);
                    v15 = sub_020080C0(v13, 1);
                    v15 -= sub_020080C0(v13, 41);
                } else {
                    continue;
                }

                v12.x = v14;
                v12.y = v15;
                v12.z = 0;
                v12.animIdx = 0;
                v12.priority = v1[v2->unk_44[v5]];
                v12.plttIdx = 0;
                v12.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
                v12.bgPriority = 1;
                v12.vramTransfer = FALSE;

                for (v11 = 0; v11 < 6; v11++) {
                    v12.resources[v11] = v9[v11];
                }

                v10 = SpriteSystem_NewSprite(v2->unk_08.unk_00, v2->unk_08.unk_04, &v12);
                ManagedSprite_TickFrame(v10);
                v2->unk_24[v5] = v10;

                if (v13 == NULL) {
                    ManagedSprite_SetDrawFlag(v10, 0);
                } else if (sub_02008B38(v13) == 0) {
                    ManagedSprite_SetDrawFlag(v10, 0);
                } else {
                    int v16 = sub_020080C0(v13, 6);

                    if (v16 == 1) {
                        ManagedSprite_SetDrawFlag(v10, 0);
                    }
                }

                if (v13 != NULL) {
                    NNSG2dImageProxy *v17;

                    v17 = Sprite_GetImageProxy(v10->sprite);
                    VramTransfer_Request(NNS_GFD_DST_2D_OBJ_CHAR_MAIN, v17->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN], v8, (10 * 10 * ((8 / 2) * 8)));
                }

                if (v13 != NULL) {
                    NNSG2dImagePaletteProxy *v18;
                    int v19;

                    v18 = Sprite_GetPaletteProxy(v10->sprite);
                    v19 = PlttTransfer_GetPlttOffset(v18, NNS_G2D_VRAM_TYPE_2DMAIN);

                    PaletteData_LoadBufferFromFileStart(v2->unk_08.unk_08, v6, v7, v2->unk_00, 2, 0x20, v19 * 16);
                }
            }
        }
    }

    return v2;
}

UnkStruct_ov12_02223764 *ov12_02223764(BattleSystem *param0, int param1)
{
    UnkStruct_ov12_02223764 *v0;

    v0 = ov12_022234F8(param0, param1, 0xFF);
    return v0;
}

void ov12_02223770(UnkStruct_ov12_02223764 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_24[v0] == NULL) {
            continue;
        }

        SpriteManager_UnloadCharObjById(param0->unk_08.unk_04, param0->unk_14[v0]);
        SpriteManager_UnloadPlttObjById(param0->unk_08.unk_04, param0->unk_14[v0]);
        Sprite_DeleteAndFreeResources(param0->unk_24[v0]);
    }

    Heap_FreeToHeap(param0);
}

void ov12_022237A4(UnkStruct_ov12_02223764 *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_24[v0] == NULL) {
            continue;
        }

        SpriteManager_UnloadCharObjById(param0->unk_08.unk_04, param0->unk_14[v0]);
        SpriteManager_UnloadPlttObjById(param0->unk_08.unk_04, param0->unk_14[v0]);
        Sprite_DeleteAndFreeResources(param0->unk_24[v0]);
    }

    Heap_FreeToHeap(param0);
}

int ov12_022237D8(UnkStruct_ov12_02223764 *param0)
{
    GF_ASSERT(param0 != NULL);
    return param0->unk_44[param0->unk_04];
}
