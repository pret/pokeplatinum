#include "overlay019/ov19_021D0D80.h"

#include <nitro.h>
#include <string.h>

#include "constants/items.h"
#include "constants/species.h"

#include "struct_decls/pc_boxes_decl.h"
#include "struct_decls/struct_02023FCC_decl.h"
#include "struct_decls/struct_0207CB08_decl.h"
#include "struct_defs/chatot_cry.h"
#include "struct_defs/struct_02042434.h"
#include "struct_defs/struct_0208737C.h"

#include "applications/pokemon_summary_screen/main.h"
#include "overlay019/box_customization.h"
#include "overlay019/ov19_021D603C.h"
#include "overlay019/ov19_021D61B0.h"
#include "overlay019/ov19_021DF964.h"
#include "overlay019/pc_compare_mon.h"
#include "overlay019/pc_mon_preview.h"
#include "overlay019/struct_ov19_021D3CFC.h"
#include "overlay019/struct_ov19_021D4DE4.h"
#include "overlay019/struct_ov19_021D4DF0.h"
#include "overlay019/struct_ov19_021D4EE4.h"
#include "overlay019/struct_ov19_021D4F34.h"
#include "overlay019/struct_ov19_021D5594.h"
#include "overlay019/struct_ov19_021D5D20.h"
#include "overlay019/struct_ov19_021D6104.h"
#include "overlay019/struct_ov19_021D61B0_decl.h"
#include "overlay084/const_ov84_02241130.h"
#include "savedata/save_table.h"

#include "bag.h"
#include "dexmode_checker.h"
#include "enums.h"
#include "game_options.h"
#include "game_overlay.h"
#include "heap.h"
#include "inlines.h"
#include "item.h"
#include "message.h"
#include "overlay_manager.h"
#include "party.h"
#include "pc_boxes.h"
#include "pokemon.h"
#include "save_player.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "touch_screen.h"
#include "unk_02005474.h"
#include "unk_02023FCC.h"
#include "unk_0202CC64.h"
#include "unk_0202D778.h"
#include "unk_0207CB08.h"
#include "unk_0208694C.h"

#include "constdata/const_020F2DAC.h"
#include "constdata/const_020F410C.h"
#include "res/text/bank/box_messages.h"

FS_EXTERN_OVERLAY(overlay84);

static const TouchScreenHitTable sMainPcButtons[] = {
    { TOUCHSCREEN_USE_CIRCLE, MAIN_PC_LEFT_BUTTON_X, MAIN_PC_BUTTON_Y, MAIN_PC_BUTTON_RADIUS },
    { TOUCHSCREEN_USE_CIRCLE, MAIN_PC_RIGHT_BUTTON_X, MAIN_PC_BUTTON_Y, MAIN_PC_BUTTON_RADIUS },
    { 255, 0, 0, 0 }
};

static const TouchScreenHitTable sComparePokemonButtons[] = {
    { TOUCHSCREEN_USE_CIRCLE, MAIN_PC_LEFT_BUTTON_X, MAIN_PC_BUTTON_Y, MAIN_PC_BUTTON_RADIUS },
    { TOUCHSCREEN_USE_CIRCLE, MAIN_PC_RIGHT_BUTTON_X, MAIN_PC_BUTTON_Y, MAIN_PC_BUTTON_RADIUS },
    { TOUCHSCREEN_USE_CIRCLE, COMPARE_MON_PC_BUTTON_X, COMPARE_MON_PC_BUTTON_Y, COMPARE_MON_PC_BUTTON_RADIUS },
    { 255, 0, 0, 0 }
};

static const TouchScreenHitTable sPokemonMarkingsButtons[] = {
    { TOUCHSCREEN_USE_CIRCLE, PC_MARKINGS_BUTTON1_X, PC_MARKINGS_BUTTON1_Y, PC_MARKINGS_BUTTONS_RADIUS },
    { TOUCHSCREEN_USE_CIRCLE, PC_MARKINGS_BUTTON2_X, PC_MARKINGS_BUTTON2_Y, PC_MARKINGS_BUTTONS_RADIUS },
    { TOUCHSCREEN_USE_CIRCLE, PC_MARKINGS_BUTTON3_X, PC_MARKINGS_BUTTON3_Y, PC_MARKINGS_BUTTONS_RADIUS },
    { TOUCHSCREEN_USE_CIRCLE, PC_MARKINGS_BUTTON4_X, PC_MARKINGS_BUTTON4_Y, PC_MARKINGS_BUTTONS_RADIUS },
    { TOUCHSCREEN_USE_CIRCLE, PC_MARKINGS_BUTTON5_X, PC_MARKINGS_BUTTON5_Y, PC_MARKINGS_BUTTONS_RADIUS },
    { TOUCHSCREEN_USE_CIRCLE, PC_MARKINGS_BUTTON6_X, PC_MARKINGS_BUTTON6_Y, PC_MARKINGS_BUTTONS_RADIUS },
    { 255, 0, 0, 0 }
};

static const u16 Unk_ov19_021DFDF0[] = {
    0x39,
    0x1AF,
    0x7F
};

typedef struct {
    u32 unk_00;
    u8 unk_04;
    s8 unk_05;
    u16 unk_06;
} UnkStruct_ov19_021D4468;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04[NELEMS(Unk_ov19_021DFDF0)];
    u16 unk_08[NELEMS(Unk_ov19_021DFDF0)];
    BoxPokemon *unk_10;
    PCBoxes *unk_14;
    Party *unk_18;
    BOOL unk_1C;
} UnkStruct_ov19_021D38E0;

typedef struct UnkStruct_ov19_021D5DF8_t {
    UnkStruct_ov19_021D4DF0 unk_00;
    UnkStruct_ov19_021D61B0 *unk_114;
    UnkStruct_02042434 *unk_118;
    SaveData *unk_11C;
    PCBoxes *pcBoxes;
    Party *unk_124;
    UnkStruct_0208737C *unk_128;
    PokemonSummary unk_12C;
    UnkStruct_ov19_021D38E0 unk_15C;
    UnkStruct_02023FCC *unk_17C;
    UnkStruct_02023FCC *unk_180;
    u32 unk_184;
    u32 unk_188;
    MessageLoader *boxMessagesLoader;
    MessageLoader *speciesNameLoader;
    MessageLoader *natureNameLoader;
    MessageLoader *abilityNameLoader;
    StringTemplate *unk_19C;
    Pokemon *mon;
    Options *unk_1A4;
    int (*unk_1A8)(struct UnkStruct_ov19_021D5DF8_t *param0);
    void (*unk_1AC)(struct UnkStruct_ov19_021D5DF8_t *param0, u32 *param1);
    u32 unk_1B0;
    u32 unk_1B4;
    s32 unk_1B8;
    UnkStruct_ov19_021D4468 unk_1BC;
    u32 unk_1C4;
    UnkStruct_ov19_021D6104 unk_1C8;
    int unk_1FC;
    u32 unk_200;
    BOOL unk_204;
    BOOL unk_208;
    int unk_20C;
    OverlayManager *unk_210;
    void *unk_214;
    u32 unk_218;
} UnkStruct_ov19_021D5DF8;

typedef int (*UnkFuncPtr_ov19_021D0EA0)(UnkStruct_ov19_021D5DF8 *);
typedef void (*UnkFuncPtr_ov19_021D0EB0)(UnkStruct_ov19_021D5DF8 *, u32 *);

static void ov19_021D0EA0(UnkStruct_ov19_021D5DF8 *param0, UnkFuncPtr_ov19_021D0EA0 param1);
static void ov19_021D0EB0(UnkStruct_ov19_021D5DF8 *param0, UnkFuncPtr_ov19_021D0EB0 param1);
static void ov19_021D0EC0(UnkStruct_ov19_021D5DF8 *param0);
static UnkFuncPtr_ov19_021D0EA0 ov19_021D0ECC(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_021D0F14(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_021D0F20(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D0F88(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static inline int inline_ov19_021D0FF0(UnkStruct_ov19_021D5DF8 *param0);
static int ov19_021D0FF0(UnkStruct_ov19_021D5DF8 *param0);
static BOOL ov19_021D1238(UnkStruct_ov19_021D5DF8 *param0, int *param1);
static int ov19_021D1270(UnkStruct_ov19_021D5DF8 *param0);
static int ov19_021D15C0(UnkStruct_ov19_021D5DF8 *param0);
static int ov19_021D17AC(UnkStruct_ov19_021D5DF8 *param0);
static int ov19_021D19B8(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_021D1C84(UnkStruct_ov19_021D5DF8 *param0);
static int ov19_021D1DAC(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_021D1DEC(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D1F5C(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D20A4(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D2308(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D2694(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D27E8(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D2890(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D2A5C(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D2B54(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static BOOL ov19_021D2DD0(const UnkStruct_ov19_021D4DF0 *param0);
static void ov19_021D2E1C(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D2F14(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D3010(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D30D0(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D3294(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static BOOL ov19_021D34E4(UnkStruct_ov19_021D5DF8 *param0);
static BOOL ov19_021D357C(UnkStruct_ov19_021D5DF8 *param0, int *param1);
static void ov19_021D35F8(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D38E0(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_021D3978(SysTask *param0, void *param1);
static BOOL BoxPokemon_HasMove(BoxPokemon *boxMon, u16 param1);
static void ov19_021D3B34(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D3C28(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D3CFC(UnkStruct_ov19_021D4DF0 *param0, UnkStruct_ov19_021D5DF8 *param1);
static void ov19_021D3D44(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D3FB0(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D4184(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D4390(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D443C(UnkStruct_ov19_021D5DF8 *param0, u32 param1, u32 param2);
static void ov19_021D4458(UnkStruct_ov19_021D5DF8 *param0);
static BOOL ov19_021D4468(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_021D45A8(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D4640(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static void ov19_021D4938(UnkStruct_ov19_021D5DF8 *param0, u32 *param1);
static BOOL ov19_021D4B88(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_021D4BB0(u32 param0, u32 param1, void *param2);
static void ov19_021D4BE0(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_02042434 *param1);
static void ov19_021D4D58(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_021D4DE4(UnkStruct_ov19_021D4DE4 *param0, int param1);
static void ov19_021D4DF0(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_021D4E30(UnkStruct_ov19_021D5594 *param0);
static void ov19_021D4E50(UnkStruct_ov19_021D5594 *param0);
static void PCBoxes_InitCustomization(PCBoxes *pcBoxes, BoxCustomization *customization);
static void Customization_Free(BoxCustomization *customization);
static void PCMonPreviewInit(PCMonPreview *param0);
static void PCMonPreviewFree(PCMonPreview *param0);
static void ov19_PCCompareMonsInit(UnkStruct_ov19_021D4EE4 *param0);
static void ov19_PCCompareMonsFree(UnkStruct_ov19_021D4EE4 *param0);
static void ov19_021D4F34(UnkStruct_ov19_021D4F34 *param0);
static void PCBoxes_LoadCustomization(const PCBoxes *pcBoxes, BoxCustomization *customization);
static void ov19_LoadWallpaper(UnkStruct_ov19_021D4DF0 *param0, PCBoxes *pcBoxes);
static BOOL ov19_021D4F74(u32 param0, UnkStruct_ov19_021D5DF8 *param1);
static BOOL ov19_021D4FDC(UnkStruct_ov19_021D4DF0 *param0, int param1, int param2);
static int ov19_021D5150(u32 param0, UnkStruct_ov19_021D5DF8 *param1);
static int ov19_021D51CC(UnkStruct_ov19_021D4DF0 *param0, int param1, int param2);
static void ov19_021D5290(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_021D52D0(UnkStruct_ov19_021D5DF8 *param0);
static BOOL ov19_021D52F4(UnkStruct_ov19_021D5DF8 *param0);
static BOOL ov19_021D538C(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_021D53B8(u32 param0, u32 param1, void *param2);
static void ov19_021D5408(UnkStruct_ov19_021D4DF0 *param0, u32 param1);
static void ov19_021D5410(UnkStruct_ov19_021D4DF0 *param0, u32 param1, u32 param2);
static void ov19_021D5420(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1);
static void ov19_021D54A4(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1);
static void ov19_021D5594(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1);
static void ov19_021D55B0(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1);
static void ov19_021D55C4(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1);
static void ov19_021D56AC(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1);
static void ov19_021D5734(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1);
static BOOL ov19_021D57D8(UnkStruct_ov19_021D5DF8 *param0, u32 param1);
static BOOL ov19_021D5800(UnkStruct_ov19_021D5DF8 *param0, u32 param1);
static void ov19_021D5834(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_021D584C(UnkStruct_ov19_021D5DF8 *param0);
static void ov19_021D5888(UnkStruct_ov19_021D4DF0 *param0, BoxPokemon *boxMon, UnkStruct_ov19_021D5DF8 *param2);
static void ov19_LoadBoxMonIntoPreview(UnkStruct_ov19_021D4DF0 *param0, BoxPokemon *boxMon, UnkStruct_ov19_021D5DF8 *param2);
static void ov19_LoadBoxMonIntoComparison(UnkStruct_ov19_021D4DF0 *param0, BoxPokemon *boxMon, UnkStruct_ov19_021D5DF8 *param2);
static void ov19_021D5B70(UnkStruct_ov19_021D4DF0 *param0);
static void ov19_021D5B80(UnkStruct_ov19_021D4DF0 *param0);
static void ov19_021D5BA0(UnkStruct_ov19_021D4DF0 *param0, BOOL param1);
static void ov19_SetPreviewedBoxMon(UnkStruct_ov19_021D4DF0 *param0, BoxPokemon *boxMon);
static void ov19_021D5BAC(UnkStruct_ov19_021D4DF0 *param0);
static void ov19_021D5BE8(UnkStruct_ov19_021D4DF0 *param0, u16 item, UnkStruct_ov19_021D5DF8 *param2);
static void ov19_LoadRightBoxCustomization(UnkStruct_ov19_021D4DF0 *param0);
static void ov19_LoadLeftBoxCustomization(UnkStruct_ov19_021D4DF0 *param0);
static void ov19_LoadCustomizationsFor(UnkStruct_ov19_021D4DF0 *param0, u32 boxID);
static void ov19_021D5D20(UnkStruct_ov19_021D4DF0 *param0, u32 param1);
static void ov19_021D5D28(UnkStruct_ov19_021D4DF0 *param0, UnkStruct_ov19_021D5DF8 *param1);
static void ov19_021D5D54(UnkStruct_ov19_021D4DF0 *param0);
static void ov19_021D5D60(UnkStruct_ov19_021D4DF0 *param0, UnkStruct_ov19_021D5DF8 *param1);
static void ov19_021D5D78(UnkStruct_ov19_021D4DF0 *param0, UnkStruct_ov19_021D5DF8 *param1);
static void ov19_021D5D94(UnkStruct_ov19_021D4DF0 *param0, u32 param1);
static void ov19_021D5D9C(UnkStruct_ov19_021D4DF0 *param0, u32 param1);
static void ov19_021D5DA4(UnkStruct_ov19_021D4DF0 *param0, u32 param1);
static void ov19_021D5DAC(UnkStruct_ov19_021D4DF0 *param0, int param1);
static void ov19_021D5DB4(UnkStruct_ov19_021D4DF0 *param0, u32 param1);
static void ov19_021D5DD8(UnkStruct_ov19_021D4DF0 *param0);
static u32 ov19_021D5FD0(UnkStruct_ov19_021D4DF0 *param0, enum PokemonDataParam value, void *dest);
static u32 ov19_021D6014(UnkStruct_ov19_021D4DF0 *param0, enum PokemonDataParam value, void *dest);

int ov19_021D0D80(OverlayManager *param0, int *param1)
{
    UnkStruct_ov19_021D5DF8 *v0;

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_9, 16384);
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_10, 245760);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov19_021D5DF8), HEAP_ID_9);

    if (v0 != NULL) {
        ov19_021D4BE0(v0, OverlayManager_Args(param0));
        ov19_021D61B0(&(v0->unk_114), &v0->unk_00, v0);

        v0->unk_1B0 = 0;
        v0->unk_1A8 = ov19_021D0ECC(v0);

        ov19_021D0EB0(v0, ov19_021D0F20);
    }

    return 1;
}

int ov19_021D0DEC(OverlayManager *param0, int *param1)
{
    UnkStruct_ov19_021D5DF8 *v0 = OverlayManager_Data(param0);

    if (v0->unk_1AC != NULL) {
        v0->unk_1AC(v0, &(v0->unk_1B4));
        return 0;
    } else {
        if (v0->unk_1A8 != NULL) {
            if (gSystem.pressedKeys & PAD_BUTTON_Y) {
                if (ov19_021D6628(v0->unk_114) == 1) {
                    ov19_021D5DD8(&v0->unk_00);
                    ov19_021D6594(v0->unk_114, 43);
                    return 0;
                }
            }

            return v0->unk_1A8(v0);
        }
    }

    GF_ASSERT(0);
    return 1;
}

int ov19_021D0E58(OverlayManager *param0, int *param1)
{
    UnkStruct_ov19_021D5DF8 *v0 = OverlayManager_Data(param0);

    if (Party_HasSpecies(v0->unk_124, 441) == 0) {
        ChatotCry *v1 = GetChatotCryDataFromSave(v0->unk_11C);

        ResetChatotCryDataStatus(v1);
    }

    ov19_021D64A0(v0->unk_114);
    ov19_021D4D58(v0);

    Heap_Destroy(HEAP_ID_9);
    Heap_Destroy(HEAP_ID_10);

    return 1;
}

static void ov19_021D0EA0(UnkStruct_ov19_021D5DF8 *param0, UnkFuncPtr_ov19_021D0EA0 param1)
{
    param0->unk_1A8 = param1;
    param0->unk_1B0 = 0;
}

static void ov19_021D0EB0(UnkStruct_ov19_021D5DF8 *param0, UnkFuncPtr_ov19_021D0EB0 param1)
{
    param0->unk_1AC = param1;
    param0->unk_1B4 = 0;
}

static void ov19_021D0EC0(UnkStruct_ov19_021D5DF8 *param0)
{
    param0->unk_1AC = NULL;
}

static UnkFuncPtr_ov19_021D0EA0 ov19_021D0ECC(UnkStruct_ov19_021D5DF8 *param0)
{
    switch (ov19_021D5E10(&(param0->unk_00))) {
    case 0:
    default:
        return ov19_021D0FF0;
    case 1:
        return ov19_021D1270;
    case 2:
        return ov19_021D15C0;
    case 4:
        return ov19_021D17AC;
    case 3:
        return ov19_021D19B8;
    }
}

static void ov19_021D0F14(UnkStruct_ov19_021D5DF8 *param0)
{
    param0->unk_118->unk_08 = 1;
}

static void ov19_021D0F20(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        ov19_021D6594(param0->unk_114, 0);
        (*param1)++;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 0)) {
            ov19_021D6594(param0->unk_114, 1);
            (*param1)++;
        }
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 1)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D0F88(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        ov19_021D6594(param0->unk_114, 0);
        (*param1)++;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 0)) {
            ov19_021D6594(param0->unk_114, 2);
            (*param1)++;
        }
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 2)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static inline void inline_ov19_021D0FF0_sub1(UnkStruct_ov19_021D5DF8 *wk)
{
    ov19_021D5B70(&wk->unk_00);
    ov19_021D5888(&wk->unk_00, wk->unk_00.unk_08.unk_00, wk);
    ov19_021D6594(wk->unk_114, 49);
    ov19_021D6594(wk->unk_114, 6);
}

static inline int inline_ov19_021D0FF0(UnkStruct_ov19_021D5DF8 *param0)
{
    if (ov19_021D538C(param0)) {
        if (ov19_021D5E08(&param0->unk_00) != 4) {
            switch (param0->unk_184) {
            case 0:
                ov19_021D0EB0(param0, ov19_021D4640);
                break;
            case 1:
                if (ov19_021D5E08(&param0->unk_00) != 3) {
                    ov19_021D0EB0(param0, ov19_021D4938);
                } else {
                    Sound_PlayEffect(SEQ_SE_DP_BOX03);
                }
                break;
            }
        } else {
            switch (param0->unk_184) {
            case 0:
                if ((ov19_021D5F9C(&param0->unk_00) == 0) && (ov19_021D5E34(&param0->unk_00) == 1)) {
                    Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                    inline_ov19_021D0FF0_sub1(param0);
                    return 1;
                } else {
                    Sound_PlayEffect(SEQ_SE_DP_BOX03);
                }
                break;
            case 1:
                if ((ov19_021D5F9C(&param0->unk_00) == 1) && (ov19_021D5E34(&param0->unk_00) == 1)) {
                    Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                    inline_ov19_021D0FF0_sub1(param0);
                    return 1;
                } else {
                    Sound_PlayEffect(SEQ_SE_DP_BOX03);
                }
                break;
            case 2:
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                ov19_021D5B80(&param0->unk_00);
                ov19_021D6594(param0->unk_114, 50);
                return 1;
            }
        }
    }

    return 0;
}

static int ov19_021D0FF0(UnkStruct_ov19_021D5DF8 *param0)
{
    switch (param0->unk_1B0) {
    case 0:
        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            if (ov19_021D5E4C(&param0->unk_00)) {
                if (ov19_021D5E08(&param0->unk_00) != 3) {
                    ov19_021D0EB0(param0, ov19_021D20A4);
                } else {
                    ov19_021D0EB0(param0, ov19_021D2308);
                }
                break;
            }
        }

        if (gSystem.pressedKeys & PAD_BUTTON_B) {
            ov19_021D0EB0(param0, ov19_021D1F5C);
            break;
        }

        if (gSystem.heldKeys & PAD_BUTTON_L) {
            ov19_LoadLeftBoxCustomization(&param0->unk_00);
            ov19_021D0EB0(param0, ov19_021D45A8);
            break;
        }

        if (gSystem.heldKeys & PAD_BUTTON_R) {
            ov19_LoadRightBoxCustomization(&(param0->unk_00));
            ov19_021D0EB0(param0, ov19_021D45A8);
            break;
        }

        if (ov19_021D4F74(gSystem.heldKeys, param0)) {
            ov19_021D6594(param0->unk_114, 5);

            if (ov19_021D5E38(&param0->unk_00) == 1) {
                ov19_021D6594(param0->unk_114, 6);
            }

            param0->unk_1B0++;
            break;
        }

        if (inline_ov19_021D0FF0(param0)) {
            param0->unk_1B0 = 2;
        }
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 5)) {
            ov19_021D0EA0(param0, ov19_021D0ECC(param0));
        }
        break;
    case 2:
        if (ov19_021D6628(param0->unk_114)) {
            param0->unk_1B0 = 0;
        }
        break;
    }

    return 0;
}

static BOOL ov19_021D1238(UnkStruct_ov19_021D5DF8 *param0, int *param1)
{
    if (Item_IsMail(ov19_GetPreviewedMonHeldItem(&param0->unk_00))) {
        *param1 = 30;
        return 1;
    }

    if (ov19_021D5FD0(&param0->unk_00, 162, NULL) != 0) {
        *param1 = 29;
        return 1;
    }

    return 0;
}

static int ov19_021D1270(UnkStruct_ov19_021D5DF8 *param0)
{
    switch (param0->unk_1B0) {
    case 0:
        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            if (ov19_021D5E2C(&param0->unk_00) == 6) {
                param0->unk_1B0 = 2;
                break;
            }

            if (ov19_021D5E4C(&param0->unk_00)) {
                if (ov19_021D5E08(&param0->unk_00) != 3) {
                    ov19_021D0EB0(param0, ov19_021D20A4);
                } else {
                    ov19_021D0EB0(param0, ov19_021D2308);
                }
                break;
            }
            break;
        }

        if ((gSystem.pressedKeys & PAD_BUTTON_B) || ((gSystem.pressedKeys & PAD_KEY_RIGHT) && (ov19_021D5E2C(&param0->unk_00) & 1)) || ((gSystem.pressedKeys & PAD_KEY_RIGHT) && (ov19_021D5E2C(&param0->unk_00) == 6))) {
            param0->unk_1B0 = 2;
            break;
        }

        if (ov19_021D4F74(gSystem.heldKeys, param0)) {
            ov19_021D6594(param0->unk_114, 5);

            if (ov19_021D5E38(&param0->unk_00) == 1) {
                ov19_021D6594(param0->unk_114, 6);
            }

            param0->unk_1B0 = 1;
            break;
        }

        if (inline_ov19_021D0FF0(param0)) {
            param0->unk_1B0 = 6;
            break;
        }
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 5)) {
            param0->unk_1B0 = 0;
        }
        break;
    case 2:
        if (ov19_021D5E08(&param0->unk_00) == 0) {
            ov19_021D0EB0(param0, ov19_021D1F5C);
            param0->unk_1B0 = 0;
        } else {
            int v0;

            if ((ov19_021D5E38(&param0->unk_00) != 1) && (ov19_021D1238(param0, &v0))) {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
                ov19_021D5408(&param0->unk_00, v0);
                ov19_021D6594(param0->unk_114, 24);
                param0->unk_1B0 = 5;
            } else {
                ov19_021D6594(param0->unk_114, 36);
                param0->unk_1B0 = 3;
            }
        }
        break;
    case 3:
        if (ov19_021D6600(param0->unk_114, 36)) {
            ov19_021D52D0(param0);
            ov19_021D6594(param0->unk_114, 5);

            if (ov19_021D5E38(&param0->unk_00) == 1) {
                ov19_021D6594(param0->unk_114, 6);
            }

            param0->unk_1B0 = 4;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 5)) {
            ov19_021D0EA0(param0, ov19_021D0ECC(param0));
        }
        break;
    case 5:
        if (ov19_021D6600(param0->unk_114, 24) == 0) {
            break;
        }

        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            param0->unk_1B0 = 0;
        }
        break;
    case 6:
        if (ov19_021D6628(param0->unk_114)) {
            param0->unk_1B0 = 0;
        }
        break;
    }

    return 0;
}

static int ov19_021D15C0(UnkStruct_ov19_021D5DF8 *param0)
{
    switch (param0->unk_1B0) {
    case 0:
        if (gSystem.heldKeys & (PAD_KEY_LEFT | PAD_BUTTON_L)) {
            ov19_LoadLeftBoxCustomization(&param0->unk_00);
            ov19_021D0EB0(param0, ov19_021D45A8);
            break;
        }

        if (gSystem.heldKeys & (PAD_KEY_RIGHT | PAD_BUTTON_R)) {
            ov19_LoadRightBoxCustomization(&(param0->unk_00));
            ov19_021D0EB0(param0, ov19_021D45A8);
            break;
        }

        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            ov19_021D0EB0(param0, ov19_021D2694);
            break;
        }

        if (gSystem.pressedKeys & PAD_BUTTON_B) {
            ov19_021D0EB0(param0, ov19_021D1F5C);
            break;
        }

        if (ov19_021D4F74(gSystem.heldKeys, param0)) {
            ov19_021D6594(param0->unk_114, 5);

            if (ov19_021D5E38(&param0->unk_00) == 1) {
                ov19_021D6594(param0->unk_114, 6);
            }

            param0->unk_1B0 = 1;
            break;
        }

        inline_ov19_021D0FF0(param0);
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 5)) {
            ov19_021D0EA0(param0, ov19_021D0ECC(param0));
        }
        break;
    }

    return 0;
}

static int ov19_021D17AC(UnkStruct_ov19_021D5DF8 *param0)
{
    switch (param0->unk_1B0) {
    case 0:
        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            ov19_021D0EB0(param0, ov19_021D1DEC);
            break;
        }

        if (gSystem.pressedKeys & PAD_BUTTON_B) {
            ov19_021D0EB0(param0, ov19_021D1F5C);
            break;
        }

        if (gSystem.heldKeys & PAD_BUTTON_L) {
            ov19_LoadLeftBoxCustomization(&param0->unk_00);
            ov19_021D0EB0(param0, ov19_021D45A8);
            break;
        }

        if (gSystem.heldKeys & PAD_BUTTON_R) {
            ov19_LoadRightBoxCustomization(&(param0->unk_00));
            ov19_021D0EB0(param0, ov19_021D45A8);
            break;
        }

        if (ov19_021D4F74(gSystem.heldKeys, param0)) {
            ov19_021D6594(param0->unk_114, 5);

            if (ov19_021D5E38(&param0->unk_00) == 1) {
                ov19_021D6594(param0->unk_114, 6);
            }

            param0->unk_1B0 = 2;
            break;
        }

        inline_ov19_021D0FF0(param0);
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 4)) {
            param0->unk_1B0 = 0;
        }
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 5)) {
            ov19_021D0EA0(param0, ov19_021D0ECC(param0));
        }
        break;
    }

    return 0;
}

static int ov19_021D19B8(UnkStruct_ov19_021D5DF8 *param0)
{
    switch (param0->unk_1B0) {
    case 0:
        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            if (ov19_021D5E08(&param0->unk_00) != 1) {
                ov19_021D6594(param0->unk_114, 34);
                param0->unk_1B0 = 1;
            } else {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
                ov19_021D5408(&param0->unk_00, 18);
                ov19_021D6594(param0->unk_114, 24);
                param0->unk_1B0 = 5;
            }
            break;
        }

        if (gSystem.pressedKeys & PAD_BUTTON_B) {
            ov19_021D0EB0(param0, ov19_021D1F5C);
            break;
        }

        if (gSystem.heldKeys & PAD_BUTTON_L) {
            ov19_LoadLeftBoxCustomization(&param0->unk_00);
            ov19_021D0EB0(param0, ov19_021D45A8);
            break;
        }

        if (gSystem.heldKeys & PAD_BUTTON_R) {
            ov19_LoadRightBoxCustomization(&(param0->unk_00));
            ov19_021D0EB0(param0, ov19_021D45A8);
            break;
        }

        if (ov19_021D4F74(gSystem.heldKeys, param0)) {
            ov19_021D6594(param0->unk_114, 5);

            if (ov19_021D5E38(&param0->unk_00) == 1) {
                ov19_021D6594(param0->unk_114, 6);
            }

            param0->unk_1B0 = 4;
            break;
        }

        inline_ov19_021D0FF0(param0);
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 34)) {
            ov19_021D6594(param0->unk_114, 35);
            param0->unk_1B0 = 2;
        }

        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 35)) {
            ov19_021D5290(param0);
            ov19_021D6594(param0->unk_114, 5);

            if (ov19_021D5E38(&param0->unk_00) == 1) {
                ov19_021D6594(param0->unk_114, 6);
            }

            param0->unk_1B0 = 4;
        }
        break;
    case 3:
        if (ov19_021D6600(param0->unk_114, 4)) {
            param0->unk_1B0 = 0;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 5)) {
            ov19_021D0EA0(param0, ov19_021D0ECC(param0));
        }
        break;
    case 5:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            param0->unk_1B0 = 0;
        }
        break;
    }

    return 0;
}

static void ov19_021D1C84(UnkStruct_ov19_021D5DF8 *param0)
{
    static const u8 v0[] = {
        0, 1, 2, 4, 3, 5, 6, 7, 8
    };

    if (ov19_021D5E38(&param0->unk_00) == 2) {
        UnkStruct_ov19_021D5594 *v1 = &param0->unk_00.unk_14;

        param0->unk_12C.monData = param0->unk_00.unk_14.unk_00;
        param0->unk_12C.dataType = (v1->unk_0B) ? SUMMARY_DATA_MON : SUMMARY_DATA_BOX_MON;
        param0->unk_12C.monMax = 1;
        param0->unk_12C.monIndex = 0;
        param0->unk_12C.mode = SUMMARY_MODE_NORMAL;
        param0->unk_12C.move = 0;
        param0->unk_12C.options = param0->unk_1A4;
    } else if (ov19_021D5E10(&param0->unk_00) == 0) {
        param0->unk_12C.monData = PCBoxes_GetBoxMonAt(param0->pcBoxes, PCBoxes_GetCurrentBoxID(param0->pcBoxes), 0);
        param0->unk_12C.dataType = SUMMARY_DATA_BOX_MON;
        param0->unk_12C.monMax = MAX_MONS_PER_BOX;
        param0->unk_12C.monIndex = ov19_021D5E24(&param0->unk_00);
        param0->unk_12C.mode = SUMMARY_MODE_NORMAL;
        param0->unk_12C.move = 0;
    } else {
        param0->unk_12C.monData = param0->unk_124;
        param0->unk_12C.dataType = SUMMARY_DATA_PARTY_MON;
        param0->unk_12C.monMax = Party_GetCurrentCount(param0->unk_124);
        param0->unk_12C.monIndex = ov19_021D5E2C(&param0->unk_00);
        param0->unk_12C.mode = SUMMARY_MODE_NORMAL;
        param0->unk_12C.move = 0;
    }

    param0->unk_12C.chatotCry = NULL;
    param0->unk_12C.dexMode = SaveData_GetDexMode(param0->unk_11C);
    param0->unk_12C.showContest = PokemonSummaryScreen_ShowContestData(param0->unk_11C);
    param0->unk_12C.specialRibbons = sub_0202D79C(param0->unk_11C);

    PokemonSummaryScreen_FlagVisiblePages(&(param0->unk_12C), v0);
    PokemonSummaryScreen_SetPlayerProfile(&(param0->unk_12C), SaveData_GetTrainerInfo(param0->unk_11C));
}

static int ov19_021D1DAC(UnkStruct_ov19_021D5DF8 *param0)
{
    switch (param0->unk_1B0) {
    case 0:
        ov19_021D6594(param0->unk_114, 51);
        param0->unk_1B0++;
        break;
    case 1:
        if (ov19_021D6628(param0->unk_114)) {
            return 1;
        }
    }

    return 0;
}

static void ov19_021D1DEC(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        if ((ov19_021D5E08(&(param0->unk_00)) == 3) && (ov19_021D5F7C(&(param0->unk_00)) != 0)) {
            ov19_021D0EB0(param0, ov19_021D4184);
            break;
        }

        if (ov19_021D5E38(&(param0->unk_00)) != 1) {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            ov19_021D5408(&param0->unk_00, 17);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 4;
            break;
        } else {
            ov19_021D6594(param0->unk_114, 34);
            (*param1) = 1;
        }

        break;

    case 1:
        if (ov19_021D6600(param0->unk_114, 34)) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_021D5408(&param0->unk_00, 11);
            ov19_021DF964(&(param0->unk_00), 1);
            ov19_021D6594(param0->unk_114, 25);
            (*param1) = 2;
        }
        break;
    case 2:
        switch (ov19_021DFD2C(&(param0->unk_00))) {
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_55:
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 6;
            break;
        case UnkEnum_021DFB94_54:
            ov19_021D0EA0(param0, ov19_021D1DAC);
            ov19_021D0EC0(param0);
            break;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 25) == 0) {
            break;
        }
        (*param1) = 5;
    case 5:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 6;
        }
        break;
    case 6:
        if (ov19_021D6600(param0->unk_114, 26)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D1F5C(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        if (ov19_021D5E38(&(param0->unk_00)) != 1) {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            ov19_021D5408(&param0->unk_00, 17);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 2;
            break;
        } else if ((ov19_021D5E08(&param0->unk_00) == 3) && (ov19_021D5F7C(&param0->unk_00) != 0)) {
            ov19_021D0EB0(param0, ov19_021D4184);
            break;
        } else {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_021D5408(&param0->unk_00, 12);
            ov19_021DF964(&(param0->unk_00), 0);
            ov19_021D6594(param0->unk_114, 25);
            (*param1) = 5;
        }
        break;
    case 5:
        switch (ov19_021DFD2C(&(param0->unk_00))) {
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_55:
            ov19_021D0EA0(param0, ov19_021D1DAC);
            ov19_021D0EC0(param0);
            break;
        case UnkEnum_021DFB94_54:
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 4;
            break;
        }
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 25) == 0) {
            break;
        }
        (*param1) = 3;
    case 3:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 4;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 26)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D20A4(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        StringTemplate_SetNickname(param0->unk_19C, 0, ov19_GetPreviewedBoxMon(&param0->unk_00));
        ov19_021D5408(&param0->unk_00, 0);
        ov19_021DF990(&param0->unk_00);

        if (ov19_021D5EE0(&param0->unk_00)) {
            param0->unk_1B8 = ov19_021DFDEC(&param0->unk_00);
            (*param1) = 3;
        } else {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_021D6594(param0->unk_114, 25);
            (*param1) = 1;
        }
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 25) == 0) {
            break;
        }
        (*param1) = 2;
    case 2:
        param0->unk_1B8 = ov19_021DFD2C(&(param0->unk_00));

        switch (param0->unk_1B8) {
        case -3:
            break;
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_43:
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 4;
            break;
        default:
            (*param1) = 3;
            break;
        }
        break;
    case 3:
        switch (param0->unk_1B8) {
        case UnkEnum_021DFB94_34:
            if ((ov19_021D5E10(&param0->unk_00) == 0) && (ov19_021D5EE0(&param0->unk_00) == 1)) {
                ov19_021D0EB0(param0, ov19_021D2B54);
            } else {
                ov19_021D6594(param0->unk_114, 26);
                ov19_021D0EB0(param0, ov19_021D2E1C);
            }
            break;
        case UnkEnum_021DFB94_35:
            ov19_021D6594(param0->unk_114, 26);
            ov19_021D0EB0(param0, ov19_021D2F14);
            break;
        case UnkEnum_021DFB94_36:
            ov19_021D6594(param0->unk_114, 26);
            ov19_021D0EB0(param0, ov19_021D3010);
            break;
        case UnkEnum_021DFB94_38:
            ov19_021D0EB0(param0, ov19_021D30D0);
            break;
        case UnkEnum_021DFB94_39:
            ov19_021D0EB0(param0, ov19_021D3294);
            break;
        case UnkEnum_021DFB94_41:
            ov19_021D0EB0(param0, ov19_021D2A5C);
            break;
        case UnkEnum_021DFB94_42:
            ov19_021D0EB0(param0, ov19_021D35F8);
            break;
        case UnkEnum_021DFB94_37:
            ov19_021D0EB0(param0, ov19_021D3C28);
            break;
        case UnkEnum_021DFB94_40: {
            if (ov19_GetPreviewedMonHeldItem(&param0->unk_00) == 0) {
                ov19_021D0EB0(param0, ov19_021D3D44);
            } else {
                ov19_021D0EB0(param0, ov19_021D3FB0);
            }
        } break;
        case UnkEnum_021DFB94_52:
        case UnkEnum_021DFB94_53:
            ov19_021D5B70(&param0->unk_00);
            ov19_021D5888(&param0->unk_00, param0->unk_00.unk_08.unk_00, param0);
            ov19_021D6594(param0->unk_114, 26);
            ov19_021D6594(param0->unk_114, 48);
            ov19_021D6594(param0->unk_114, 6);
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            (*param1) = 5;
            break;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 26)) {
            ov19_021D0EC0(param0);
        }
        break;
    case 5:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D2308(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0: {
        u32 v0 = ov19_021D5F7C(&param0->unk_00);

        if (v0 != 0) {
            StringTemplate_SetItemName(param0->unk_19C, 0, v0);
            ov19_021D5408(&param0->unk_00, 25);
        } else {
            v0 = ov19_GetPreviewedMonHeldItem(&param0->unk_00);

            if (v0 != 0) {
                StringTemplate_SetItemName(param0->unk_19C, 0, v0);
                ov19_021D5408(&param0->unk_00, 25);
            } else {
                ov19_021D5408(&param0->unk_00, 28);
            }
        }

        ov19_021DFAD0(&param0->unk_00);
    }

        if (ov19_IsPreviewedMonEgg(&param0->unk_00)) {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            ov19_021D5408(&param0->unk_00, 34);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 7;
        } else if (ov19_021D5EE0(&param0->unk_00)) {
            param0->unk_1B8 = ov19_021DFDEC(&param0->unk_00);
            (*param1) = 3;
        } else {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_021D6594(param0->unk_114, 25);
            (*param1) = 1;
        }
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 25) == 0) {
            break;
        }
        (*param1) = 2;
    case 2:
        param0->unk_1B8 = ov19_021DFD2C(&(param0->unk_00));

        switch (param0->unk_1B8) {
        case -3:
            break;
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_51:
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 4;
            break;
        default:
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            (*param1) = 3;
            break;
        }
        break;
    case 3:
        switch (param0->unk_1B8) {
        case UnkEnum_021DFB94_46:
            if ((ov19_021D5F7C(&param0->unk_00) == ITEM_GRISEOUS_ORB) && (BoxPokemon_GetValue(param0->unk_00.pcMonPreview.mon, MON_DATA_SPECIES, NULL) != SPECIES_GIRATINA)) {
                StringTemplate_SetItemName(param0->unk_19C, 0, ITEM_GRISEOUS_ORB);
                ov19_021D5408(&param0->unk_00, 45);
                ov19_021D6594(param0->unk_114, 24);
                *param1 = 7;
            } else if (ov19_021D5F7C(&param0->unk_00) != 0) {
                ov19_021D5D60(&param0->unk_00, param0);
                ov19_021D6594(param0->unk_114, 26);
                ov19_021D6594(param0->unk_114, 20);
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                (*param1) = 5;
            } else {
                ov19_021D0EB0(param0, ov19_021D3D44);
            }

            break;
        case UnkEnum_021DFB94_47:
            if (Item_IsMail(ov19_GetPreviewedMonHeldItem(&param0->unk_00))) {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
                ov19_021D5408(&param0->unk_00, 24);
                ov19_021D6594(param0->unk_114, 24);
                (*param1) = 7;
            } else {
                ov19_021D5D28(&param0->unk_00, param0);
                ov19_021D0F14(param0);
                ov19_021D6594(param0->unk_114, 26);
                ov19_021D6594(param0->unk_114, 19);
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                (*param1) = 5;
            }
            break;
        case UnkEnum_021DFB94_48:
            ov19_021D0EB0(param0, ov19_021D4390);
            break;
        case UnkEnum_021DFB94_49:
            if (Item_IsMail(ov19_GetPreviewedMonHeldItem(&param0->unk_00))) {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
                ov19_021D5408(&param0->unk_00, 24);
                ov19_021D6594(param0->unk_114, 24);
                (*param1) = 7;
            } else if ((param0->unk_00.unk_112 == ITEM_GRISEOUS_ORB) && (BoxPokemon_GetValue(param0->unk_00.pcMonPreview.mon, MON_DATA_SPECIES, NULL) != SPECIES_GIRATINA)) {
                StringTemplate_SetItemName(param0->unk_19C, 0, ITEM_GRISEOUS_ORB);
                ov19_021D5408(&param0->unk_00, 45);
                ov19_021D6594(param0->unk_114, 24);
                *param1 = 7;
            } else {
                ov19_021D5D78(&param0->unk_00, param0);
                ov19_021D6594(param0->unk_114, 26);
                ov19_021D6594(param0->unk_114, 21);
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                (*param1) = 5;
            }
            break;
        case UnkEnum_021DFB94_50:
            ov19_021D0EB0(param0, ov19_021D4184);
            break;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 26)) {
            ov19_021D0EC0(param0);
        }
        break;
    case 5:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D6594(param0->unk_114, 6);
            ov19_021D6594(param0->unk_114, 22);
            *param1 = 6;
        }
        break;
    case 6:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    case 7:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 6;
        }
        break;
    }
}

static void ov19_021D2694(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        ov19_021D5408(&param0->unk_00, 7);
        ov19_021DFB50(&param0->unk_00);

        if (ov19_021D5EE0(&param0->unk_00)) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            param0->unk_1B8 = ov19_021DFDEC(&param0->unk_00);
            (*param1) = 3;
        } else {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_021D6594(param0->unk_114, 25);
            (*param1) = 1;
        }
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 25) == 0) {
            break;
        }
        (*param1) = 2;
    case 2:
        param0->unk_1B8 = ov19_021DFD2C(&(param0->unk_00));

        switch (param0->unk_1B8) {
        case -3:
            break;
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_03:
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 4;
            break;
        default:
            (*param1) = 3;
            break;
        }
        break;
    case 3:
        switch (param0->unk_1B8) {
        case UnkEnum_021DFB94_00:
            ov19_021D6594(param0->unk_114, 26);
            ov19_021D0EB0(param0, ov19_021D27E8);
            break;
        case UnkEnum_021DFB94_01:
            ov19_021D6594(param0->unk_114, 27);
            (*param1) = 7;
            break;
        case UnkEnum_021DFB94_02:
            ov19_021D0EB0(param0, ov19_021D3B34);
            break;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 26)) {
            ov19_021D0EC0(param0);
        }
        break;
    case 7:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EB0(param0, ov19_021D2890);
        }
        break;
    }
}

static void ov19_021D27E8(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        ov19_021D443C(param0, ov19_GetCurrentBox(&param0->unk_00), 8);
        (*param1) = 1;
        break;
    case 1:
        if (ov19_021D4468(param0) == 0) {
            break;
        }

        if ((param0->unk_1BC.unk_05 == -1) || (param0->unk_1BC.unk_05 == ov19_GetCurrentBox(&param0->unk_00))) {
            (*param1) = 2;
        } else {
            ov19_LoadCustomizationsFor(&param0->unk_00, param0->unk_1BC.unk_05);
            PCBoxes_SetCurrentBox(param0->pcBoxes, param0->unk_1BC.unk_05);
            ov19_021D6594(param0->unk_114, 4);
            (*param1) = 2;
        }

        ov19_021D6594(param0->unk_114, 26);
        ov19_021D6594(param0->unk_114, 32);
        break;
    case 2:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D2890(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        param0->unk_1B8 = UnkEnum_021DFB94_04;
        (*param1) = 1;
    case 1:
        ov19_021D5408(&param0->unk_00, 9);
        ov19_021DFB94(&param0->unk_00, param0->unk_1B8);
        ov19_021D6594(param0->unk_114, 25);
        (*param1) = 2;
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 25) == 0) {
            break;
        }
        (*param1) = 3;
    case 3:
        switch (ov19_021DFD2C(&(param0->unk_00))) {
        case -3:
            break;
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_03:
        default:
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 8;
            break;
        case UnkEnum_021DFB94_04:
        case UnkEnum_021DFB94_05:
        case UnkEnum_021DFB94_06:
        case UnkEnum_021DFB94_07:
        case UnkEnum_021DFB94_08:
        case UnkEnum_021DFB94_09:
            param0->unk_1B8 = ov19_021DFDDC(&param0->unk_00);
            ov19_021D5408(&param0->unk_00, 10);
            ov19_021DFC04(&param0->unk_00, param0->unk_1B8);
            ov19_021D6594(param0->unk_114, 25);
            (*param1) = 4;
            break;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 25) == 0) {
            break;
        }
        (*param1) = 5;
    case 5:
        switch (ov19_021DFD2C(&(param0->unk_00))) {
        case -3:
            break;
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_03:
            (*param1) = 1;
            break;
        default:
            param0->unk_1B8 = ov19_021DFDDC(&param0->unk_00);

            if ((param0->unk_1B8 >= UnkEnum_021DFB94_10) && (param0->unk_1B8 <= UnkEnum_021DFB94_33)) {
                PCBoxes_SetWallpaper(param0->pcBoxes, USE_CURRENT_BOX, (param0->unk_1B8 - UnkEnum_021DFB94_10));
                ov19_LoadWallpaper(&param0->unk_00, param0->pcBoxes);
                ov19_021D6594(param0->unk_114, 26);
                (*param1) = 6;
            } else {
                GF_ASSERT(0);
                (*param1) = 1;
            }
        }
        break;
    case 6:
        ov19_021D6594(param0->unk_114, 33);
        (*param1) = 8;
        break;
    case 7:
        if (ov19_021D6628(param0->unk_114)) {
            (*param1) = 1;
        }
        break;
    case 8:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D2A5C(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        ov19_021DFC80(&param0->unk_00);
        ov19_021D5408(&param0->unk_00, 1);
        ov19_021D6594(param0->unk_114, 25);
        (*param1) = 1;
        break;
    case 1:
        if (ov19_021D6628(param0->unk_114) == 0) {
            break;
        } else {
            u32 v0 = ov19_021DFD2C(&(param0->unk_00));

            switch (v0) {
            case -3:
                break;
            case -2:
                ov19_021D6594(param0->unk_114, 28);
                break;
            case -1:
            case UnkEnum_021DFB94_45:
                ov19_021D6594(param0->unk_114, 26);
                (*param1) = 2;
                break;
            case UnkEnum_021DFB94_44:
                ov19_021D5BAC(&param0->unk_00);
                ov19_021D6594(param0->unk_114, 26);
                ov19_021D6594(param0->unk_114, 7);
                ov19_021D6594(param0->unk_114, 39);
                (*param1) = 2;
                break;
            default:
                if ((v0 >= UnkEnum_021DFB94_56) && (v0 <= UnkEnum_021DFB94_61)) {
                    v0 -= UnkEnum_021DFB94_56;
                    ov19_021DFCE4(&param0->unk_00, v0);
                    ov19_021D6594(param0->unk_114, 29);
                }
                break;
            }
        }
        break;
    case 2:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D2B54(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        if (gSystem.heldKeys & PAD_BUTTON_A) {
            ov19_021D5594(param0, &param0->unk_00);
            ov19_021D6594(param0->unk_114, 44);
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            *param1 = 1;
        } else {
            ov19_021D0EB0(param0, ov19_021D2E1C);
        }
        break;

    case 1:
        if (gSystem.heldKeys & PAD_BUTTON_A) {
            switch (ov19_021D5150(gSystem.heldKeys, param0)) {
            case 2:
                if ((gSystem.heldKeys & PAD_PLUS_KEY_MASK) == (gSystem.pressedKeys & PAD_PLUS_KEY_MASK)) {
                    Sound_PlayEffect(SEQ_SE_DP_BOX03);
                }
                break;

            case 1:
                ov19_021D55B0(param0, &param0->unk_00);
                ov19_021D6594(param0->unk_114, 46);
                ov19_021D6594(param0->unk_114, 5);
                ov19_021D6594(param0->unk_114, 6);
                *param1 = 3;
                break;
            }
        } else {
            if (ov19_021D5F20(&param0->unk_00)) {
                ov19_021D6594(param0->unk_114, 45);
                ov19_021D0EB0(param0, ov19_021D2E1C);
            } else {
                ov19_021D54A4(param0, &param0->unk_00);
                ov19_021D6594(param0->unk_114, 47);
                Sound_PlayEffect(SEQ_SE_DP_BOX02);
                *param1 = 2;
            }
        }
        break;

    case 2:
        if (ov19_021D6628(param0->unk_114) == FALSE) {
            break;
        }

        switch (ov19_021D5150(gSystem.heldKeys, param0)) {
        case 2:
            if ((gSystem.heldKeys & PAD_PLUS_KEY_MASK) == (gSystem.pressedKeys & PAD_PLUS_KEY_MASK)) {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
            }
            break;

        case 1:
            ov19_021D6594(param0->unk_114, 5);
            if ((ov19_021D5E38(&param0->unk_00) & 6) == 0) {
                ov19_021D6594(param0->unk_114, 6);
            }
            break;

        case 3:
            ov19_LoadLeftBoxCustomization(&param0->unk_00);
            PCBoxes_SetCurrentBox(param0->pcBoxes, ov19_GetCurrentBox(&param0->unk_00));
            ov19_021D6594(param0->unk_114, 4);
            *param1 = 5;
            break;

        case 4:
            ov19_LoadRightBoxCustomization(&(param0->unk_00));
            PCBoxes_SetCurrentBox(param0->pcBoxes, ov19_GetCurrentBox(&param0->unk_00));
            ov19_021D6594(param0->unk_114, 4);
            *param1 = 5;
            break;

        case 0:
            if (gSystem.pressedKeys & PAD_BUTTON_A) {
                if (ov19_021D2DD0(&param0->unk_00)) {
                    ov19_021D56AC(param0, &param0->unk_00);
                    ov19_021D6594(param0->unk_114, 10);
                    Sound_PlayEffect(SEQ_SE_DP_BOX01);
                    *param1 = 4;
                } else {
                    Sound_PlayEffect(SEQ_SE_DP_BOX03);
                }
                break;
            }
            if (gSystem.pressedKeys & PAD_BUTTON_B) {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
            }
            break;
        }
        break;

    case 5:
        if (ov19_021D6600(param0->unk_114, 4)) {
            if (!(ov19_021D5E38(&param0->unk_00) & 6)) {
                ov19_021D52F4(param0);
                ov19_021D6594(param0->unk_114, 6);
            }
            *param1 = 2;
        }
        break;

    case 3:
        if (ov19_021D6628(param0->unk_114)) {
            *param1 = 1;
        }
        break;

    case 4:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static BOOL ov19_021D2DD0(const UnkStruct_ov19_021D4DF0 *param0)
{
    BoxPokemon *v0;
    int v1, v2, v3, v4;
    const UnkStruct_ov19_021D3CFC *v5 = &param0->unk_08;
    const UnkStruct_ov19_021D5594 *v6 = &param0->unk_14;

    v3 = ov19_021D5F3C(param0);
    v2 = v6->unk_09;

    for (v1 = 0; v1 < v6->unk_08; v1++) {
        v4 = v3 + (v6->unk_0C[v1] - v2);
        v0 = PCBoxes_GetBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, v4);

        if (BoxPokemon_GetValue(v0, MON_DATA_SPECIES_EXISTS, NULL)) {
            return 0;
        }
    }

    return 1;
}

static void ov19_021D2E1C(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        if (ov19_021D5E10(&param0->unk_00) == 1) {
            if (ov19_021D34E4(param0) == 0) {
                Sound_PlayEffect(SEQ_SE_DP_BOX02);
                ov19_021D5420(param0, &param0->unk_00);
                ov19_021D6594(param0->unk_114, 9);
                (*param1) = 1;
            } else {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
                ov19_021D5408(&param0->unk_00, 6);
                ov19_021D6594(param0->unk_114, 24);
                (*param1) = 2;
            }
        } else {
            Sound_PlayEffect(SEQ_SE_DP_BOX02);
            ov19_021D5420(param0, &param0->unk_00);
            ov19_021D6594(param0->unk_114, 9);
            (*param1) = 3;
        }
        break;
    case 1:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D52F4(param0);
            ov19_021D6594(param0->unk_114, 37);
            (*param1) = 3;
        }
        break;
    case 2:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 3;
        }
        break;
    case 3:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D2F14(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        ov19_021D55C4(param0, &param0->unk_00);
        ov19_021D6594(param0->unk_114, 10);
        Sound_PlayEffect(SEQ_SE_DP_BOX01);

        if (ov19_021D5E10(&param0->unk_00) == 1) {
            u32 v0, v1;

            v0 = ov19_021D5E2C(&param0->unk_00);
            v1 = Party_GetCurrentCount(param0->unk_124);

            if (v0 != (v1 - 1)) {
                (*param1) = 1;
                ov19_021D52F4(param0);
                break;
            }
        }
        (*param1) = 2;
        break;
    case 1:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D52F4(param0);
            ov19_021D6594(param0->unk_114, 38);
            ov19_021D6594(param0->unk_114, 6);
            (*param1) = 2;
        }
        break;
    case 2:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0F14(param0);
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static BOOL ov19_021D2FC8(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    if (ov19_021D34E4(param0)) {
        if (ov19_021D5FD0(&param0->unk_00, 173, NULL)) {
            *param1 = 6;
            return 1;
        }

        if (ov19_021D5E3C(&param0->unk_00)) {
            if (ov19_021D5FD0(&param0->unk_00, 163, NULL) == 0) {
                *param1 = 6;
                return 1;
            }
        }
    }

    return 0;
}

static void ov19_021D3010(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0: {
        u32 v0;

        if (ov19_021D2FC8(param0, &v0)) {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            ov19_021D5408(&param0->unk_00, v0);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 1;
        } else {
            ov19_021D5734(param0, &param0->unk_00);
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov19_021D6594(param0->unk_114, 11);
            ov19_021D6594(param0->unk_114, 6);
            (*param1) = 2;
        }
    } break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 24) == 0) {
            break;
        }

        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 2;
        }
        break;
    case 2:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0F14(param0);
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D30D0(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        if (Party_GetCurrentCount(param0->unk_124) != 6) {
            ov19_021D6594(param0->unk_114, 26);

            if (ov19_021D5E38(&param0->unk_00) == 2) {
                ov19_021D6594(param0->unk_114, 35);
                (*param1) = 2;
            } else {
                Sound_PlayEffect(SEQ_SE_DP_BOX02);
                ov19_021D5420(param0, &param0->unk_00);
                ov19_021D6594(param0->unk_114, 9);
                (*param1) = 1;
            }
        } else {
            ov19_021D6594(param0->unk_114, 27);
            ov19_021D5408(&param0->unk_00, 5);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 7;
        }
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 9)) {
            ov19_021D6594(param0->unk_114, 35);
            (*param1) = 2;
        }
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 35)) {
            ov19_021D5290(param0);
            ov19_021D6594(param0->unk_114, 5);
            (*param1) = 3;
        }
        break;
    case 3:
        if (ov19_021D6600(param0->unk_114, 5)) {
            ov19_021D55C4(param0, &param0->unk_00);
            ov19_021D0F14(param0);
            ov19_021D6594(param0->unk_114, 10);
            (*param1) = 4;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 10)) {
            ov19_021D6594(param0->unk_114, 36);
            (*param1) = 5;
        }
        break;
    case 5:
        if (ov19_021D6600(param0->unk_114, 36)) {
            ov19_021D52D0(param0);
            ov19_021D6594(param0->unk_114, 5);
            ov19_021D6594(param0->unk_114, 6);
            (*param1) = 8;
        }
        break;
    case 7:
        if (ov19_021D6600(param0->unk_114, 24) == 0) {
            break;
        }

        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 8;
        }
        break;

    case 8:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D3294(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        if ((ov19_021D5E38(&param0->unk_00) == 1) && (ov19_021D34E4(param0) == 1)) {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            ov19_021D5408(&param0->unk_00, 6);
            ov19_021D6594(param0->unk_114, 27);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 3;
        } else {
            int v0;

            if (ov19_021D1238(param0, &v0)) {
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
                ov19_021D5408(&param0->unk_00, v0);
                ov19_021D6594(param0->unk_114, 27);
                ov19_021D6594(param0->unk_114, 24);
                (*param1) = 3;
            } else {
                ov19_021D443C(param0, param0->unk_00.unk_110, 19);
                ov19_021D6594(param0->unk_114, 26);
                (*param1) = 1;
            }
        }
        break;
    case 1:
        if (ov19_021D4468(param0) == 0) {
            break;
        }

        if (param0->unk_1BC.unk_05 == -1) {
            ov19_021D6594(param0->unk_114, 26);
            ov19_021D6594(param0->unk_114, 32);
            (*param1) = 6;
            break;
        }

        param0->unk_00.unk_110 = param0->unk_1BC.unk_05;

        if (ov19_021D5E38(&param0->unk_00) == 2) {
            if (ov19_021D57D8(param0, param0->unk_1BC.unk_05)) {
                ov19_021D0F14(param0);
                ov19_021D6594(param0->unk_114, 26);
                ov19_021D6594(param0->unk_114, 32);
                (*param1) = 4;
                break;
            }
        } else {
            if (ov19_021D5800(param0, param0->unk_1BC.unk_05)) {
                ov19_021D0F14(param0);
                ov19_021D6594(param0->unk_114, 26);
                ov19_021D6594(param0->unk_114, 32);
                (*param1) = 5;
                break;
            }
        }

        Sound_PlayEffect(SEQ_SE_DP_BOX03);
        ov19_021D5408(&param0->unk_00, 13);
        ov19_021D6594(param0->unk_114, 24);
        (*param1) = 2;
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 24) == 0) {
            break;
        }

        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D4458(param0);
            (*param1) = 1;
        }
        break;
    case 3:
        if (ov19_021D6600(param0->unk_114, 24) == 0) {
            break;
        }

        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 6;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 32)) {
            ov19_021D6594(param0->unk_114, 12);
            ov19_021D6594(param0->unk_114, 6);
            (*param1) = 6;
        }
        break;
    case 5:
        if (ov19_021D6600(param0->unk_114, 32)) {
            ov19_021D6594(param0->unk_114, 13);
            ov19_021D6594(param0->unk_114, 6);
            (*param1) = 6;
        }
        break;
    case 6:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static BOOL ov19_021D34E4(UnkStruct_ov19_021D5DF8 *param0)
{
    Pokemon *v0;
    int v1, v2, v3;
    BOOL v4;

    v3 = Party_GetCurrentCount(param0->unk_124);

    for (v1 = 0, v2 = 0; v1 < v3; v1++) {
        v0 = Party_GetPokemonBySlotIndex(param0->unk_124, v1);
        v4 = Pokemon_EnterDecryptionContext(v0);

        if ((Pokemon_GetValue(v0, MON_DATA_EGG_EXISTS, NULL) == 0) && (Pokemon_GetValue(v0, MON_DATA_CURRENT_HP, NULL) != 0)) {
            v2++;
        }

        Pokemon_ExitDecryptionContext(v0, v4);

        if (v2 >= 2) {
            return 0;
        }
    }

    if (ov19_021D6014(&param0->unk_00, 173, NULL)) {
        return 0;
    }

    if (ov19_021D6014(&param0->unk_00, 163, NULL) == 0) {
        return 0;
    }

    return 1;
}

static BOOL ov19_021D357C(UnkStruct_ov19_021D5DF8 *param0, int *param1)
{
    if (ov19_021D5FD0(&param0->unk_00, 173, NULL)) {
        *param1 = 31;
        return 0;
    }

    {
        u16 v0 = ov19_GetPreviewedMonHeldItem(&param0->unk_00);

        if (Item_IsMail(ov19_GetPreviewedMonHeldItem(&param0->unk_00))) {
            *param1 = 30;
            return 0;
        }
    }

    if (ov19_021D5FD0(&param0->unk_00, 162, NULL) != 0) {
        *param1 = 29;
        return 0;
    }

    if (ov19_021D5E38(&param0->unk_00) == 1) {
        if (ov19_021D5E10(&param0->unk_00) == 1) {
            if (ov19_021D34E4(param0)) {
                *param1 = 6;
                return 0;
            }
        }
    }

    return 1;
}

static void ov19_021D35F8(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0: {
        int v0;

        if (ov19_021D357C(param0, &v0)) {
            ov19_021D5408(&param0->unk_00, 2);
            ov19_021DF964(&(param0->unk_00), 1);
            ov19_021D6594(param0->unk_114, 25);
            (*param1) = 1;
        } else {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            ov19_021D5408(&param0->unk_00, v0);
            ov19_021D6594(param0->unk_114, 27);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 8;
        }
    } break;

    case 1:
        if (ov19_021D6628(param0->unk_114) == 0) {
            break;
        }

        switch (ov19_021DFD2C(&(param0->unk_00))) {
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_55:
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 9;
            break;
        case UnkEnum_021DFB94_54:
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 2;
            break;
        }
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 26)) {
            StringTemplate_SetNickname(param0->unk_19C, 0, ov19_GetPreviewedBoxMon(&param0->unk_00));
            ov19_021D38E0(param0);

            if (ov19_021D5E38(&param0->unk_00) == 2) {
                ov19_021D6594(param0->unk_114, 14);
                param0->unk_1B8 = 0;
            } else {
                if (ov19_021D5E10(&param0->unk_00) == 0) {
                    ov19_021D6594(param0->unk_114, 15);
                    param0->unk_1B8 = 1;
                } else {
                    ov19_021D6594(param0->unk_114, 16);
                    param0->unk_1B8 = 2;
                }
            }
            (*param1) = 3;
        }
        break;
    case 3:
        if (ov19_021D6628(param0->unk_114)) {
            if (ov19_021D3B20(param0)) {
                if (ov19_021D5E38(&param0->unk_00) == 2) {
                    ov19_021D5834(param0);
                } else {
                    ov19_021D584C(param0);
                }

                ov19_021D5408(&param0->unk_00, 3);
                (*param1) = 5;
            } else {
                ov19_021D5408(&param0->unk_00, 32);
                (*param1) = 4;
            }

            ov19_021D6594(param0->unk_114, 24);
        }
        break;
    case 5:
        if (ov19_021D6628(param0->unk_114) == 0) {
            break;
        }

        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D5408(&param0->unk_00, 4);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 6;
        }
        break;
    case 4:
        if (ov19_021D6628(param0->unk_114) == 0) {
            break;
        }

        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D5408(&param0->unk_00, 33);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 6;
        }
        break;
    case 6:
        if (ov19_021D6628(param0->unk_114) == 0) {
            break;
        }

        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 7;
        }
        break;
    case 7:
        if (ov19_021D6628(param0->unk_114)) {
            if (ov19_021D3B20(param0)) {
                if (param0->unk_1B8 == 2) {
                    ov19_021D6594(param0->unk_114, 37);
                }

                ov19_021D0F14(param0);
            }

            ov19_021D6594(param0->unk_114, 6);
            (*param1) = 9;
        }
        break;
    case 8:
        if (ov19_021D6600(param0->unk_114, 24) == 0) {
            break;
        }

        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 9;
        }
        break;
    case 9:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D38E0(UnkStruct_ov19_021D5DF8 *param0)
{
    UnkStruct_ov19_021D38E0 *v0 = &(param0->unk_15C);
    int v1, v2;

    v0->unk_10 = param0->unk_00.pcMonPreview.mon;

    for (v1 = 0, v2 = 0; v1 < (NELEMS(Unk_ov19_021DFDF0)); v1++) {
        v0->unk_04[v1] = BoxPokemon_HasMove(v0->unk_10, Unk_ov19_021DFDF0[v1]);

        if (v0->unk_04[v1]) {
            v2++;
        }
    }

    if (v2 == 0) {
        v0->unk_00 = 1;
        v0->unk_01 = 1;
        return;
    } else {
        v0->unk_00 = 0;
        v0->unk_01 = 0;
        v0->unk_02 = 0;
        v0->unk_03 = 0;
        v0->unk_14 = param0->pcBoxes;
        v0->unk_18 = param0->unk_124;
        v0->unk_1C = (ov19_021D5E38(&param0->unk_00) != 1);

        for (v1 = 0; v1 < (NELEMS(Unk_ov19_021DFDF0)); v1++) {
            v0->unk_08[v1] = 0;
        }

        SysTask_Start(ov19_021D3978, v0, 0);
    }
}

static void ov19_021D3978(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D38E0 *v0 = param1;
    BoxPokemon *v1;
    int v2, v3;

    if (v0->unk_02 < 18) {
        int v4 = v0->unk_03 + 15;

        if (v4 > (5 * 6)) {
            v4 = (5 * 6);
        }

        for (v2 = v0->unk_03; v2 < v4; v2++) {
            v1 = PCBoxes_GetBoxMonAt(v0->unk_14, v0->unk_02, v2);

            if (BoxPokemon_GetValue(v1, MON_DATA_SPECIES_EXISTS, NULL)) {
                for (v3 = 0; v3 < (NELEMS(Unk_ov19_021DFDF0)); v3++) {
                    if (BoxPokemon_HasMove(v1, Unk_ov19_021DFDF0[v3])) {
                        v0->unk_08[v3]++;
                    }
                }
            }
        }

        if (v4 == (5 * 6)) {
            v0->unk_03 = 0;
            v0->unk_02++;
        } else {
            v0->unk_03 = v4;
        }
    } else {
        int v5 = Party_GetCurrentCount(v0->unk_18);

        for (v2 = 0; v2 < v5; v2++) {
            v1 = (BoxPokemon *)Party_GetPokemonBySlotIndex(v0->unk_18, v2);

            for (v3 = 0; v3 < (NELEMS(Unk_ov19_021DFDF0)); v3++) {
                if (BoxPokemon_HasMove(v1, Unk_ov19_021DFDF0[v3])) {
                    v0->unk_08[v3]++;
                }
            }
        }

        if (v0->unk_1C) {
            for (v3 = 0; v3 < (NELEMS(Unk_ov19_021DFDF0)); v3++) {
                if (BoxPokemon_HasMove(v0->unk_10, Unk_ov19_021DFDF0[v3])) {
                    v0->unk_08[v3]++;
                }
            }
        }

        v0->unk_01 = 1;

        for (v3 = 0; v3 < (NELEMS(Unk_ov19_021DFDF0)); v3++) {
            if ((v0->unk_08[v3] == 1) && (v0->unk_04[v3] == 1)) {
                v0->unk_01 = 0;
                break;
            }
        }

        v0->unk_00 = 1;
        SysTask_Done(param0);
    }
}

static BOOL BoxPokemon_HasMove(BoxPokemon *boxMon, u16 move)
{
    BOOL hasMove = FALSE;
    BOOL reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);

    if (BoxPokemon_GetValue(boxMon, MON_DATA_EGG_EXISTS, NULL) == FALSE) {
        for (int i = 0; i < LEARNED_MOVES_MAX; i++) {
            if (BoxPokemon_GetValue(boxMon, MON_DATA_MOVE1 + i, NULL) == move) {
                hasMove = TRUE;
                break;
            }
        }
    }

    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);
    return hasMove;
}

BOOL ov19_021D3B18(const UnkStruct_ov19_021D5DF8 *param0)
{
    const UnkStruct_ov19_021D38E0 *v0 = &(param0->unk_15C);
    return v0->unk_00;
}

BOOL ov19_021D3B20(const UnkStruct_ov19_021D5DF8 *param0)
{
    const UnkStruct_ov19_021D38E0 *v0 = &(param0->unk_15C);

    if (v0->unk_00) {
        return v0->unk_01;
    }

    return 0;
}

static void ov19_021D3B34(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        ov19_021D6594(param0->unk_114, 3);
        (*param1)++;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 3)) {
            ov19_021D64A0(param0->unk_114);
            Heap_Destroy(HEAP_ID_10);
            PCBoxes_BufferBoxName(param0->pcBoxes, PCBoxes_GetCurrentBoxID(param0->pcBoxes), param0->unk_128->unk_18);
            param0->unk_210 = OverlayManager_New(&Unk_020F2DAC, param0->unk_128, 9);
            (*param1)++;
        }
        break;
    case 2:
        if (OverlayManager_Exec(param0->unk_210)) {
            u32 v0 = PCBoxes_GetCurrentBoxID(param0->pcBoxes);

            OverlayManager_Free(param0->unk_210);
            Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_10, 245760);
            PCBoxes_RenameBox(param0->pcBoxes, v0, param0->unk_128->unk_18);

            PCBoxes_LoadCustomization(param0->pcBoxes, &param0->unk_00.customization);
            ov19_021D61B0(&(param0->unk_114), &param0->unk_00, param0);
            ov19_021D0EB0(param0, ov19_021D0F88);
        }
        break;
    }
}

static void ov19_021D3C28(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        ov19_021D6594(param0->unk_114, 3);
        (*param1)++;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 3)) {
            ov19_021D64A0(param0->unk_114);
            Heap_Destroy(HEAP_ID_10);
            ov19_021D1C84(param0);
            param0->unk_210 = OverlayManager_New(&gPokemonSummaryScreenApp, &(param0->unk_12C), 9);
            (*param1)++;
        }
        break;
    case 2:
        if (OverlayManager_Exec(param0->unk_210)) {
            u32 v0 = PCBoxes_GetCurrentBoxID(param0->pcBoxes);

            OverlayManager_Free(param0->unk_210);
            Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_10, 245760);

            if (ov19_021D5E38(&param0->unk_00) == 1) {
                ov19_021D3CFC(&(param0->unk_00), param0);
            }

            ov19_021D61B0(&(param0->unk_114), &param0->unk_00, param0);
            ov19_021D0EB0(param0, ov19_021D0F88);
            ov19_021D0F14(param0);
        }
    }
}

static void ov19_021D3CFC(UnkStruct_ov19_021D4DF0 *param0, UnkStruct_ov19_021D5DF8 *param1)
{
    UnkStruct_ov19_021D3CFC *v0 = &param0->unk_08;

    switch (v0->unk_04) {
    case 0:
        v0->unk_07 = param1->unk_12C.monIndex;
        v0->unk_05 = v0->unk_07 % 6;
        v0->unk_06 = v0->unk_07 / 6;
        break;
    case 1:
        v0->unk_08 = param1->unk_12C.monIndex;
        break;
    default:
        return;
    }

    ov19_021D52F4(param1);
}

static void ov19_021D3D44(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    FS_EXTERN_OVERLAY(overlay84);

    static const u8 v0[] = {
        0, 1, 2, 3, 4, 6, 7, 0xff
    };
    static u32 item;

    switch (*param1) {
    case 0:
        ov19_021D6594(param0->unk_114, 3);
        (*param1)++;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 3)) {
            Bag *v2;

            ov19_021D64A0(param0->unk_114);
            Heap_Destroy(HEAP_ID_10);

            v2 = SaveData_GetBag(param0->unk_11C);
            param0->unk_214 = sub_0207D824(v2, v0, 9);
            sub_0207CB2C(param0->unk_214, param0->unk_11C, 1, NULL);
            Overlay_LoadByID(FS_OVERLAY_ID(overlay84), 2);
            param0->unk_210 = OverlayManager_New(&Unk_ov84_02241130, param0->unk_214, 9);
            (*param1)++;
        }
        break;
    case 2:
        if (OverlayManager_Exec(param0->unk_210)) {
            item = sub_0207CB94((UnkStruct_0207CB08 *)(param0->unk_214));

            OverlayManager_Free(param0->unk_210);
            Heap_FreeToHeap(param0->unk_214);
            Overlay_UnloadByID(FS_OVERLAY_ID(overlay84));

            if ((item == ITEM_GRISEOUS_ORB) && (BoxPokemon_GetValue(param0->unk_00.pcMonPreview.mon, MON_DATA_SPECIES, NULL) != SPECIES_GIRATINA)) {
                (void)0;
            } else if (item != ITEM_NONE) {
                Bag_TryRemoveItem(SaveData_GetBag(param0->unk_11C), item, 1, 9);
                ov19_021D5BE8(&param0->unk_00, item, param0);
                ov19_021D0F14(param0);
            }

            Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_10, 245760);
            ov19_021D61B0(&(param0->unk_114), &param0->unk_00, param0);
            ov19_021D6594(param0->unk_114, 0);
            (*param1)++;
        }
        break;
    case 3:
        if (ov19_021D6600(param0->unk_114, 0)) {
            ov19_021D6594(param0->unk_114, 2);
            (*param1)++;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 2)) {
            if (item == ITEM_NONE) {
                ov19_021D0EC0(param0);
            } else if ((item == ITEM_GRISEOUS_ORB) && (BoxPokemon_GetValue(param0->unk_00.pcMonPreview.mon, MON_DATA_SPECIES, NULL) != SPECIES_GIRATINA)) {
                StringTemplate_SetItemName(param0->unk_19C, 0, item);
                ov19_021D5408(&param0->unk_00, 45);
                ov19_021D6594(param0->unk_114, 24);
                (*param1)++;
            } else {
                StringTemplate_SetItemName(param0->unk_19C, 0, item);
                ov19_021D5408(&param0->unk_00, 16);
                ov19_021D6594(param0->unk_114, 24);
                (*param1)++;
            }
        }
        break;
    case 5:
        if (ov19_021D6600(param0->unk_114, 24)) {
            if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                ov19_021D6594(param0->unk_114, 26);
                (*param1)++;
            }
        }
        break;
    case 6:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D3FB0(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    static u32 v0;

    switch (*param1) {
    case 0:
        v0 = ov19_GetPreviewedMonHeldItem(&param0->unk_00);

        if (Item_IsMail(v0)) {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            ov19_021D5408(&param0->unk_00, 24);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 4;
        } else {
            StringTemplate_SetItemName(param0->unk_19C, 0, v0);
            ov19_021DF964(&(param0->unk_00), 0);
            ov19_021D5408(&param0->unk_00, 23);
            ov19_021D6594(param0->unk_114, 25);
            (*param1) = 1;
        }
        break;
    case 1:
        if (ov19_021D6628(param0->unk_114) == 0) {
            break;
        }

        switch (ov19_021DFD2C(&(param0->unk_00))) {
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_55:
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 5;
            break;
        case UnkEnum_021DFB94_54:
            ov19_021D6594(param0->unk_114, 27);
            (*param1) = 2;
            break;
        }
        break;
    case 2:
        if (Bag_TryAddItem(SaveData_GetBag(param0->unk_11C), v0, 1, 9)) {
            ov19_021D5BE8(&param0->unk_00, ITEM_NONE, param0);
            ov19_021D6594(param0->unk_114, 22);
            ov19_021D6594(param0->unk_114, 6);
            *param1 = 3;
        } else {
            ov19_021D5408(&param0->unk_00, 14);
            ov19_021D6594(param0->unk_114, 24);
            *param1 = 4;
        }
        break;
    case 3:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D5408(&param0->unk_00, 15);
            ov19_021D6594(param0->unk_114, 24);
            *param1 = 4;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 24)) {
            if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                ov19_021D6594(param0->unk_114, 26);
                (*param1) = 5;
            }
        }
        break;
    case 5:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D4184(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    static u32 v0;

    switch (*param1) {
    case 0:
        v0 = ov19_021D5F88(&param0->unk_00);

        if (Item_IsMail(v0)) {
            Sound_PlayEffect(SEQ_SE_DP_BOX03);
            ov19_021D5408(&param0->unk_00, 24);
            ov19_021D6594(param0->unk_114, 24);
            (*param1) = 5;
        } else {
            StringTemplate_SetItemName(param0->unk_19C, 0, v0);
            ov19_021D5408(&param0->unk_00, 26);
            ov19_021DF964(&(param0->unk_00), 0);
            ov19_021D6594(param0->unk_114, 25);
            (*param1) = 1;
        }
        break;
    case 1:
        if (ov19_021D6628(param0->unk_114) == 0) {
            break;
        }

        switch (ov19_021DFD2C(&(param0->unk_00))) {
        case -2:
            ov19_021D6594(param0->unk_114, 28);
            break;
        case -1:
        case UnkEnum_021DFB94_55:
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 6;
            break;
        case UnkEnum_021DFB94_54:
            ov19_021D6594(param0->unk_114, 26);
            (*param1) = 2;
            break;
        }
        break;
    case 2:
        if (Bag_TryAddItem(SaveData_GetBag(param0->unk_11C), v0, 1, 9)) {
            if (ov19_021D5F7C(&param0->unk_00) != 0) {
                ov19_021D5D54(&param0->unk_00);
                *param1 = 4;
            } else {
                ov19_021D5BE8(&param0->unk_00, ITEM_NONE, param0);
                *param1 = 3;
            }

            ov19_021D6594(param0->unk_114, 23);
        } else {
            ov19_021D5408(&param0->unk_00, 14);
            ov19_021D6594(param0->unk_114, 24);
            *param1 = 5;
        }
        break;
    case 3:
        if (ov19_021D6600(param0->unk_114, 23)) {
            ov19_021D6594(param0->unk_114, 22);
            ov19_021D6594(param0->unk_114, 6);
            (*param1) = 4;
        }
        break;
    case 4:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D5408(&param0->unk_00, 27);
            ov19_021D6594(param0->unk_114, 24);
            *param1 = 5;
        }
        break;
    case 5:
        if (ov19_021D6600(param0->unk_114, 24)) {
            if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                ov19_021D6594(param0->unk_114, 26);
                (*param1) = 6;
            }
        }
        break;
    case 6:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D4390(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        ov19_021D6594(param0->unk_114, 26);
        (*param1)++;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 26)) {
            ov19_021D6594(param0->unk_114, 17);
            (*param1)++;
        }
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 17)) {
            (*param1)++;
        }
        break;
    case 3:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B | PAD_PLUS_KEY_MASK)) {
            ov19_021D6594(param0->unk_114, 18);
            (*param1)++;
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 18)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D443C(UnkStruct_ov19_021D5DF8 *param0, u32 param1, u32 param2)
{
    param0->unk_1BC.unk_00 = 0;
    param0->unk_1BC.unk_05 = param1;
    param0->unk_1BC.unk_06 = param2;
    param0->unk_1BC.unk_04 = 0;
}

static void ov19_021D4458(UnkStruct_ov19_021D5DF8 *param0)
{
    param0->unk_1BC.unk_00 = 0;
    param0->unk_1BC.unk_04 = 1;
}

static BOOL ov19_021D4468(UnkStruct_ov19_021D5DF8 *param0)
{
    UnkStruct_ov19_021D4468 *v0 = &(param0->unk_1BC);

    switch (v0->unk_00) {
    case 0:
        if (v0->unk_04 == 1) {
            v0->unk_00 = 1;
            break;
        }

        if (v0->unk_05 == -1) {
            v0->unk_05 = 0;
        }

        ov19_021D5D20(&param0->unk_00, v0->unk_05);
        ov19_021D6594(param0->unk_114, 30);
        v0->unk_00 = 1;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 30)) {
            ov19_021D5408(&param0->unk_00, v0->unk_06);
            ov19_021D6594(param0->unk_114, 24);
            v0->unk_00 = 2;
        }
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 24) == 0) {
            break;
        }

        v0->unk_00 = 3;
    case 3:
        if (ov19_021D6600(param0->unk_114, 31) == 0) {
            break;
        }

        if (gSystem.pressedKeys & (PAD_KEY_LEFT | PAD_BUTTON_L)) {
            v0->unk_05--;

            if (v0->unk_05 < 0) {
                v0->unk_05 = 18 - 1;
            }

            ov19_021D5D20(&param0->unk_00, v0->unk_05);
            ov19_021D6594(param0->unk_114, 31);
            break;
        }

        if (gSystem.pressedKeys & (PAD_KEY_RIGHT | PAD_BUTTON_R)) {
            if (++(v0->unk_05) >= 18) {
                v0->unk_05 = 0;
            }

            ov19_021D5D20(&param0->unk_00, v0->unk_05);
            ov19_021D6594(param0->unk_114, 31);
            break;
        }

        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            return 1;
        }

        if (gSystem.pressedKeys & PAD_BUTTON_B) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            v0->unk_05 = -1;
            return 1;
        }
        break;
    }

    return 0;
}

static void ov19_021D45A8(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        PCBoxes_SetCurrentBox(param0->pcBoxes, ov19_GetCurrentBox(&param0->unk_00));
        ov19_021D52F4(param0);
        ov19_021D6594(param0->unk_114, 4);
        (*param1)++;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 4)) {
            if ((ov19_021D5E10(&param0->unk_00) == 0) && (ov19_021D5E38(&param0->unk_00) == 1)) {
                ov19_021D6594(param0->unk_114, 6);
                (*param1)++;
            } else {
                ov19_021D0EC0(param0);
            }
        }
        break;
    case 2:
        if (ov19_021D6600(param0->unk_114, 6)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D4640(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
        ov19_021D5D94(&param0->unk_00, 1);
        ov19_021D5D9C(&(param0->unk_00), ov19_GetCurrentBox(&param0->unk_00));
        ov19_021D6594(param0->unk_114, 40);
        ov19_021D603C(&(param0->unk_1C8), 0, 192, 56, 88);
        param0->unk_204 = 0;
        param0->unk_208 = 1;
        (*param1) = 1;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 40) == 0) {
            break;
        }

        if (ov19_021D538C(param0)) {
            if (param0->unk_184 == 1) {
                if (ov19_021D5E08(&param0->unk_00) != 3) {
                    ov19_021D0EB0(param0, ov19_021D4938);
                } else {
                    Sound_PlayEffect(SEQ_SE_DP_BOX03);
                }
                break;
            }
        }

        if (gSystem.pressedKeys & (PAD_PLUS_KEY_MASK | PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_021D5D94(&(param0->unk_00), 0);
            ov19_021D5D9C(&(param0->unk_00), ov19_GetCurrentBox(&param0->unk_00));
            ov19_021D6594(param0->unk_114, 40);
            (*param1) = 5;
            break;
        }

        if (param0->unk_204) {
            if (param0->unk_208) {
                if (++(param0->unk_200) > 20) {
                    u32 v0 = ov19_021D5EB8(&param0->unk_00);

                    ov19_LoadCustomizationsFor(&param0->unk_00, v0);
                    PCBoxes_SetCurrentBox(param0->pcBoxes, v0);
                    ov19_021D52F4(param0);

                    if (ov19_021D5E38(&param0->unk_00) == 1) {
                        ov19_021D6594(param0->unk_114, 8);
                    }

                    ov19_021D6594(param0->unk_114, 4);
                    param0->unk_204 = 0;
                    param0->unk_200 = 0;
                    (*param1) = 3;
                    break;
                }
            }
        }

        switch (ov19_021D60A8(&param0->unk_1C8)) {
        case 1:
            param0->unk_1FC = ov19_021D5EB8(&param0->unk_00);
            param0->unk_204 = 0;
            param0->unk_20C = 0;
            param0->unk_208 = 0;
            break;
        case 2: {
            int v1;

            v1 = ov19_021D614C(&param0->unk_1C8);

            if (v1 != param0->unk_20C) {
                int v2, v3;

                v2 = v1 - param0->unk_20C;
                v3 = ov19_021D5EB8(&param0->unk_00) + v2;

                if (v3 < 0) {
                    v3 += 18;
                } else if (v3 >= 18) {
                    v3 -= 18;
                }

                param0->unk_20C = v1;
                ov19_021D5D9C(&(param0->unk_00), v3);
                ov19_021D5DAC(&(param0->unk_00), v2);
                ov19_021D6594(param0->unk_114, 41);
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                (*param1) = 2;
            }
        } break;
        case 3: {
            int v4, v5;

            v4 = ov19_GetCurrentBox(&param0->unk_00);
            v5 = ov19_021D5EB8(&param0->unk_00);

            param0->unk_204 = (v4 != v5);
            param0->unk_200 = 0;
            param0->unk_208 = 1;
        } break;
        }
        break;
    case 2:
        if (param0->unk_208 == 0) {
            if (ov19_021D60A8(&param0->unk_1C8) == 3) {
                int v6, v7;

                v6 = ov19_GetCurrentBox(&param0->unk_00);
                v7 = ov19_021D5EB8(&param0->unk_00);

                param0->unk_204 = (v6 != v7);
                param0->unk_200 = 0;
                param0->unk_208 = 1;
            }
        }

        if (ov19_021D6600(param0->unk_114, 41)) {
            (*param1) = 1;
        }
        break;
    case 3:
        if (ov19_021D6600(param0->unk_114, 4)) {
            if ((ov19_021D5E38(&param0->unk_00) == 1) && (ov19_021D5E34(&param0->unk_00))) {
                ov19_021D6594(param0->unk_114, 6);
                (*param1) = 4;
            } else {
                (*param1) = 1;
            }
        }
        break;
    case 4:
        if (ov19_021D6600(param0->unk_114, 6)) {
            (*param1) = 1;
        }
        break;
    case 5:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static void ov19_021D4938(UnkStruct_ov19_021D5DF8 *param0, u32 *param1)
{
    switch (*param1) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
        ov19_021D5D94(&param0->unk_00, 2);
        ov19_021D5DA4(&(param0->unk_00), 0);
        ov19_021D5D9C(&(param0->unk_00), 0);
        ov19_021D6594(param0->unk_114, 40);
        ov19_021D603C(&(param0->unk_1C8), 255, 192, 56, 88);
        param0->unk_204 = 0;
        param0->unk_208 = 1;
        (*param1) = 1;
        break;
    case 1:
        if (ov19_021D6600(param0->unk_114, 40) == 0) {
            break;
        }

        if (ov19_021D538C(param0)) {
            if (param0->unk_184 == 0) {
                ov19_021D0EB0(param0, ov19_021D4640);
                break;
            }
        }

        if (gSystem.pressedKeys & (PAD_PLUS_KEY_MASK | PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_021D5D94(&param0->unk_00, 0);
            ov19_021D6594(param0->unk_114, 40);
            (*param1) = 3;
        }

        if (ov19_021D4B88(param0)) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov19_021D6594(param0->unk_114, 42);
            ov19_021D6594(param0->unk_114, 39);
            break;
        }

        switch (ov19_021D60A8(&param0->unk_1C8)) {
        case 1:
            param0->unk_1FC = ov19_021D5EB8(&param0->unk_00);
            param0->unk_204 = 0;
            param0->unk_20C = 0;
            param0->unk_208 = 0;
            break;
        case 2: {
            int v0;

            v0 = ov19_021D614C(&param0->unk_1C8);

            if (v0 != param0->unk_20C) {
                int v1, v2;

                v1 = v0 - param0->unk_20C;
                v2 = ov19_021D5EB8(&param0->unk_00) + v1;

                if (v2 < 0) {
                    v2 += 8;
                } else if (v2 >= 8) {
                    v2 -= 8;
                }

                param0->unk_20C = v0;

                ov19_021D5D9C(&(param0->unk_00), v2);
                ov19_021D5DA4(&(param0->unk_00), v2);
                ov19_021D5DAC(&(param0->unk_00), v1);
                ov19_021D6594(param0->unk_114, 41);
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                (*param1) = 2;
            }
        } break;
        case 3: {
            int v3, v4;

            v3 = ov19_GetCurrentBox(&param0->unk_00);
            v4 = ov19_021D5EB8(&param0->unk_00);

            param0->unk_204 = (v3 != v4);
            param0->unk_200 = 0;
            param0->unk_208 = 1;
        } break;
        }
        break;
    case 2:
        if (param0->unk_208 == 0) {
            if (ov19_021D60A8(&param0->unk_1C8) == 3) {
                int v5, v6;

                v5 = ov19_GetCurrentBox(&param0->unk_00);
                v6 = ov19_021D5EB8(&param0->unk_00);

                param0->unk_204 = (v5 != v6);
                param0->unk_200 = 0;
                param0->unk_208 = 1;
            }
        }

        if (ov19_021D6600(param0->unk_114, 41)) {
            (*param1) = 1;
        }
        break;
    case 3:
        if (ov19_021D6628(param0->unk_114)) {
            ov19_021D0EC0(param0);
        }
        break;
    }
}

static BOOL ov19_021D4B88(UnkStruct_ov19_021D5DF8 *param0)
{
    param0->unk_188 = 8;

    sub_0202404C(param0->unk_180);

    if (param0->unk_188 != 8) {
        return 1;
    }

    return 0;
}

static void ov19_021D4BB0(u32 param0, u32 param1, void *param2)
{
    UnkStruct_ov19_021D5DF8 *v0 = (UnkStruct_ov19_021D5DF8 *)param2;

    if (v0->unk_188 == 8) {
        if (param1 == 0) {
            u32 v1 = ov19_021D5EC0(&v0->unk_00);

            v1 += param0;

            if (v1 >= 8) {
                v1 -= 8;
            }

            ov19_021D5DB4(&v0->unk_00, v1);
            v0->unk_188 = param0;
        }
    }
}

static void ov19_021D4BE0(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_02042434 *param1)
{
    param0->pcBoxes = SaveData_PCBoxes(param1->unk_00);
    param0->unk_11C = param1->unk_00;
    param0->unk_124 = Party_GetFromSavedata(param1->unk_00);
    param0->unk_1A4 = SaveData_Options(param1->unk_00);
    param0->unk_118 = param1;
    param1->unk_08 = 0;
    param0->boxMessagesLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BOX_MESSAGES, HEAP_ID_9);
    param0->speciesNameLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, HEAP_ID_9);
    param0->natureNameLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_NATURE_NAMES, HEAP_ID_9);
    param0->abilityNameLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_ABILITY_NAMES, HEAP_ID_9);
    param0->unk_19C = StringTemplate_Default(HEAP_ID_9);
    param0->mon = Heap_AllocFromHeap(HEAP_ID_9, Pokemon_StructSize());

    GF_ASSERT(param0->unk_19C);
    param0->unk_128 = sub_0208712C(HEAP_ID_9, 2, 0, 8, param0->unk_1A4);

    if (param1->unk_04 != 4) {
        param0->unk_17C = sub_02023FCC(sMainPcButtons, NELEMS(sMainPcButtons), ov19_021D53B8, param0, HEAP_ID_9);
    } else {
        param0->unk_17C = sub_02023FCC(sComparePokemonButtons, NELEMS(sComparePokemonButtons), ov19_021D53B8, param0, HEAP_ID_9);
    }

    param0->unk_180 = sub_02023FCC(sPokemonMarkingsButtons, NELEMS(sPokemonMarkingsButtons), ov19_021D4BB0, param0, HEAP_ID_9);
    param0->unk_00.pcBoxes = param0->pcBoxes;
    param0->unk_00.unk_04 = param0->unk_124;
    param0->unk_00.unk_110 = 0;
    param0->unk_00.unk_112 = 0;

    ov19_021D4DE4(&(param0->unk_00.unk_48), param1->unk_04);
    PCMonPreviewInit(&(param0->unk_00.pcMonPreview));
    PCBoxes_InitCustomization(param0->pcBoxes, &(param0->unk_00.customization));
    ov19_PCCompareMonsInit(&(param0->unk_00.unk_A4));
    ov19_021D4DF0(param0);
    ov19_021D4E30(&(param0->unk_00.unk_14));
    ov19_021D4F34(&(param0->unk_00.unk_9C));
}

static void ov19_021D4D58(UnkStruct_ov19_021D5DF8 *param0)
{
    sub_02024034(param0->unk_180);
    sub_02024034(param0->unk_17C);

    if (param0->mon) {
        Heap_FreeToHeap(param0->mon);
    }

    StringTemplate_Free(param0->unk_19C);
    MessageLoader_Free(param0->boxMessagesLoader);
    MessageLoader_Free(param0->speciesNameLoader);
    MessageLoader_Free(param0->natureNameLoader);
    MessageLoader_Free(param0->abilityNameLoader);
    sub_0208716C(param0->unk_128);

    PCMonPreviewFree(&(param0->unk_00.pcMonPreview));
    ov19_021D4E50(&(param0->unk_00.unk_14));
    Customization_Free(&(param0->unk_00.customization));
    ov19_PCCompareMonsFree(&(param0->unk_00.unk_A4));

    Heap_FreeToHeap(param0);
}

static void ov19_021D4DE4(UnkStruct_ov19_021D4DE4 *param0, int param1)
{
    param0->unk_00 = param1;
    param0->unk_01 = 0;
    param0->unk_02 = 0;
}

static void ov19_021D4DF0(UnkStruct_ov19_021D5DF8 *param0)
{
    UnkStruct_ov19_021D4DF0 *v0 = &(param0->unk_00);
    UnkStruct_ov19_021D3CFC *v1 = &(v0->unk_08);

    ov19_021D5410(v0, 0, 0);

    v1->unk_08 = 0;
    v1->unk_09 = 1;

    switch (v0->unk_48.unk_00) {
    case 0:
        v1->unk_04 = 1;
        break;
    case 4:
        v1->unk_04 = 2;
        break;
    default:
        v1->unk_04 = 0;
    }

    v1->unk_0B = 1;

    ov19_021D52F4(param0);
}

static void ov19_021D4E30(UnkStruct_ov19_021D5594 *param0)
{
    param0->unk_00 = Heap_AllocFromHeap(HEAP_ID_9, (5 * 6) * BoxPokemon_GetStructSize());
    param0->unk_08 = 0;
    param0->unk_0B = 0;
}

static void ov19_021D4E50(UnkStruct_ov19_021D5594 *param0)
{
    Heap_FreeToHeap(param0->unk_00);
}

static void PCBoxes_InitCustomization(PCBoxes *pcBoxes, BoxCustomization *customization)
{
    customization->boxID = PCBoxes_GetCurrentBoxID(pcBoxes);
    customization->name = Strbuf_Init(PC_BOX_NAME_BUFFER_LEN, HEAP_ID_9);
    PCBoxes_LoadCustomization(pcBoxes, customization);
}

static void Customization_Free(BoxCustomization *customization)
{
    Strbuf_Free(customization->name);
}

static void PCMonPreviewInit(PCMonPreview *param0)
{
    param0->nickname = Strbuf_Init(12, HEAP_ID_9);
    param0->speciesName = Strbuf_Init(12, HEAP_ID_9);
    param0->heldItemName = Strbuf_Init(18, HEAP_ID_9);
    param0->nature = Strbuf_Init(12, HEAP_ID_9);
    param0->ability = Strbuf_Init(16, HEAP_ID_9);
}

static void PCMonPreviewFree(PCMonPreview *param0)
{
    Strbuf_Free(param0->nickname);
    Strbuf_Free(param0->speciesName);
    Strbuf_Free(param0->heldItemName);
    Strbuf_Free(param0->nature);
    Strbuf_Free(param0->ability);
}

static void ov19_PCCompareMonsInit(UnkStruct_ov19_021D4EE4 *param0)
{
    param0->unk_00 = 0;
    param0->unk_01 = 0;
    param0->unk_04 = 0;

    for (int i = 0; i < 2; i++) {
        param0->unk_02[i] = 0;
        param0->compareMons[i].monName = Strbuf_Init(12, HEAP_ID_9);
        param0->compareMons[i].nature = Strbuf_Init(12, HEAP_ID_9);
    }
}

static void ov19_PCCompareMonsFree(UnkStruct_ov19_021D4EE4 *param0)
{
    for (int i = 0; i < 2; i++) {
        Strbuf_Free(param0->compareMons[i].monName);
        Strbuf_Free(param0->compareMons[i].nature);
    }
}

static void ov19_021D4F34(UnkStruct_ov19_021D4F34 *param0)
{
    param0->unk_00 = 0;
    param0->unk_02 = 0;
    param0->unk_01 = 0;
    param0->unk_04 = 0;
}

static void PCBoxes_LoadCustomization(const PCBoxes *pcBoxes, BoxCustomization *customization)
{
    customization->wallpaper = PCBoxes_GetWallpaper(pcBoxes, customization->boxID);
    PCBoxes_BufferBoxName(pcBoxes, customization->boxID, customization->name);
}

static void ov19_LoadWallpaper(UnkStruct_ov19_021D4DF0 *param0, PCBoxes *pcBoxes)
{
    BoxCustomization *customization = &(param0->customization);
    customization->wallpaper = PCBoxes_GetWallpaper(pcBoxes, customization->boxID);
}

static BOOL ov19_021D4F74(u32 param0, UnkStruct_ov19_021D5DF8 *param1)
{
    BOOL v0 = 0;

    do {
        if (param0 & PAD_KEY_LEFT) {
            v0 = ov19_021D4FDC(&(param1->unk_00), -1, 0);
            break;
        }

        if (param0 & PAD_KEY_RIGHT) {
            v0 = ov19_021D4FDC(&(param1->unk_00), 1, 0);
            break;
        }

        if (param0 & PAD_KEY_UP) {
            v0 = ov19_021D4FDC(&(param1->unk_00), 0, -1);
            break;
        }

        if (param0 & PAD_KEY_DOWN) {
            v0 = ov19_021D4FDC(&(param1->unk_00), 0, 1);
            break;
        }
    } while (0);

    if (v0 == 1) {
        ov19_021D52F4(param1);
    }

    return v0;
}

static BOOL ov19_021D4FDC(UnkStruct_ov19_021D4DF0 *param0, int param1, int param2)
{
    UnkStruct_ov19_021D3CFC *v0 = &param0->unk_08;

    switch (v0->unk_04) {
    case 0:
        if (param1 != 0) {
            int v1 = v0->unk_05 += param1;

            if (v1 < 0) {
                v1 = 6 - 1;
            } else if (v1 >= 6) {
                v1 = 0;
            }

            ov19_021D5410(param0, v1, v0->unk_06);

            return 1;
        } else if (param2 != 0) {
            int v2 = v0->unk_06 + param2;

            if (v2 < 0) {
                v2 = 0;
                v0->unk_04 = 2;
            } else if (v2 > 4) {
                v2 = 4;
                v0->unk_04 = (((v0->unk_05) == (6 - 1)) ? 4 : 3);
            }

            ov19_021D5410(param0, v0->unk_05, v2);
            return 1;
        }

        break;

    case 2:
        if (param2 > 0) {
            v0->unk_04 = 0;
            ov19_021D5410(param0, v0->unk_05, 0);
            return 1;
        } else if (param2 < 0) {
            v0->unk_04 = (((v0->unk_05) == (6 - 1)) ? 4 : 3);
            return 1;
        }
        break;
    case 4:
        if (param2 < 0) {
            v0->unk_04 = 0;
            ov19_021D5410(param0, v0->unk_05, 4);
            return 1;
        } else if (param2 > 0) {
            v0->unk_04 = 2;
            return 1;
        } else if (param1 != 0) {
            v0->unk_04 = 3;
            return 1;
        }
        break;
    case 3:
        if (param2 < 0) {
            v0->unk_04 = 0;
            ov19_021D5410(param0, v0->unk_05, 4);
            return 1;
        }

        if (param2 > 0) {
            v0->unk_04 = 2;
            return 1;
        }

        if (param1 != 0) {
            v0->unk_04 = 4;
            return 1;
        }
        break;
    case 1: {
        u32 v3 = v0->unk_08;

        if (param2 < 0) {
            if (v3 == 6) {
                v0->unk_08 = 5;
            } else {
                v0->unk_08 -= 2;

                if (v0->unk_08 < 0) {
                    v0->unk_08 = 6;
                }
            }
        } else if (param2 > 0) {
            if (v3 == 6) {
                v0->unk_08 = 0;
            } else {
                v0->unk_08 += 2;

                if (v0->unk_08 >= 6) {
                    v0->unk_08 = 6;
                }
            }
        } else if (param1 < 0) {
            if (v3 & 1) {
                v0->unk_08 -= 1;
            }
        } else if (param1 > 0) {
            if (v3 != 6) {
                if ((v3 & 1) == 0) {
                    v0->unk_08 += 1;
                }
            }
        }

        if (v3 != v0->unk_08) {
            return 1;
        }
        break;
    } break;
    }

    return 0;
}

static int ov19_021D5150(u32 param0, UnkStruct_ov19_021D5DF8 *param1)
{
    int v0 = 0;

    do {
        if (param0 & PAD_KEY_LEFT) {
            v0 = ov19_021D51CC(&(param1->unk_00), -1, 0);
            break;
        }

        if (param0 & PAD_KEY_RIGHT) {
            v0 = ov19_021D51CC(&(param1->unk_00), 1, 0);
            break;
        }

        if (param0 & PAD_KEY_UP) {
            v0 = ov19_021D51CC(&(param1->unk_00), 0, -1);
            break;
        }

        if (param0 & PAD_KEY_DOWN) {
            v0 = ov19_021D51CC(&(param1->unk_00), 0, 1);
            break;
        }

        if (param0 & PAD_BUTTON_L) {
            v0 = 3;
            break;
        }

        if (param0 & PAD_BUTTON_R) {
            v0 = 4;
            break;
        }
    } while (0);

    if (v0 == 1) {
        ov19_021D52F4(param1);
    }

    return v0;
}

static int ov19_021D51CC(UnkStruct_ov19_021D4DF0 *param0, int param1, int param2)
{
    UnkStruct_ov19_021D3CFC *v0 = &param0->unk_08;
    const UnkStruct_ov19_021D5594 *v1 = &param0->unk_14;

    if (v0->unk_04 == 0) {
        if (param1 != 0) {
            int v2 = v0->unk_05 + param1;

            if (ov19_021D5E38(param0) & 12) {
                int v3, v4;

                v3 = v4 = v2;

                if (v1->unk_06 > v1->unk_04) {
                    v3 -= (v1->unk_06 - v1->unk_04);
                } else {
                    v4 += (v1->unk_04 - v1->unk_06);
                }

                if (v3 < 0) {
                    return 3;
                }

                if (v4 >= 6) {
                    return 4;
                }
            } else {
                if ((v2 < 0) || (v2 >= 6)) {
                    return 2;
                }
            }

            ov19_021D5410(param0, v2, v0->unk_06);
            return 1;
        }

        if (param2 != 0) {
            int v5;

            v5 = v0->unk_06 + param2;

            if (ov19_021D5E38(param0) & 12) {
                int v6, v7;

                v6 = v7 = v5;

                if (v1->unk_07 > v1->unk_05) {
                    v6 -= (v1->unk_07 - v1->unk_05);
                } else {
                    v7 += (v1->unk_05 - v1->unk_07);
                }

                if ((v6 < 0) || (v7 >= 5)) {
                    return 2;
                }
            } else {
                if ((v5 < 0) || (v5 >= 5)) {
                    return 2;
                }
            }

            ov19_021D5410(param0, v0->unk_05, v5);
            return 1;
        }
    }

    GF_ASSERT(0);
    return 0;
}

static void ov19_021D5290(UnkStruct_ov19_021D5DF8 *param0)
{
    UnkStruct_ov19_021D4DF0 *v0 = &param0->unk_00;
    UnkStruct_ov19_021D3CFC *v1 = &v0->unk_08;
    u32 v2;

    if (ov19_021D5E38(v0) == 2) {
        v1->unk_08 = Party_GetCurrentCount(param0->unk_124);

        if (v1->unk_08 >= 6) {
            v1->unk_08 = 6 - 1;
        }
    } else {
        v1->unk_08 = 0;
    }

    v1->unk_09 = v1->unk_04;
    v1->unk_04 = 1;

    ov19_021D52F4(param0);
}

static void ov19_021D52D0(UnkStruct_ov19_021D5DF8 *param0)
{
    UnkStruct_ov19_021D3CFC *v0 = &(param0->unk_00.unk_08);

    v0->unk_04 = 0;

    if (v0->unk_09 != 0) {
        ov19_021D5410(&param0->unk_00, 0, 0);
    }

    ov19_021D52F4(param0);
}

static BOOL ov19_021D52F4(UnkStruct_ov19_021D5DF8 *param0)
{
    UnkStruct_ov19_021D4DF0 *v0 = &param0->unk_00;
    PCMonPreview *preview = &v0->pcMonPreview;
    UnkStruct_ov19_021D3CFC *v2 = &v0->unk_08;
    u32 v3;

    v2->unk_0A = 0;

    switch (v2->unk_04) {
    case 0:
        v2->unk_00 = PCBoxes_GetBoxMonAt(v0->pcBoxes, USE_CURRENT_BOX, v2->unk_07);
        break;
    case 1:
        if (v2->unk_08 < Party_GetCurrentCount(param0->unk_124)) {
            v2->unk_00 = Party_GetPokemonBySlotIndex(param0->unk_124, v2->unk_08);
        } else {
            v2->unk_00 = NULL;
        }

        break;
    case 2:
    case 4:
    case 3:
    default:
        v2->unk_00 = NULL;
        break;
    }

    if (v2->unk_00) {
        if (BoxPokemon_GetValue(v2->unk_00, MON_DATA_SPECIES_EXISTS, NULL)) {
            v2->unk_0A = 1;

            if (!(ov19_021D5E38(v0) & 6)) {
                ov19_021D5888(v0, v2->unk_00, param0);
                return 1;
            }
        }
    }

    return 0;
}

static BOOL ov19_021D538C(UnkStruct_ov19_021D5DF8 *param0)
{
    param0->unk_184 = 65535;
    sub_0202404C(param0->unk_17C);

    return param0->unk_184 != 65535;
}

static void ov19_021D53B8(u32 param0, u32 param1, void *param2)
{
    UnkStruct_ov19_021D5DF8 *v0 = (UnkStruct_ov19_021D5DF8 *)param2;

    if ((param1 == 0) && (v0->unk_184 == 65535)) {
        v0->unk_184 = param0;
    }

    if (ov19_021D5E08(&v0->unk_00) == 4) {
        if (param0 == 2) {
            switch (param1) {
            case 0:
                ov19_021D5BA0(&v0->unk_00, 1);
                break;
            case 1:
            case 3:
                ov19_021D5BA0(&v0->unk_00, 0);
                break;
            }
        }
    }
}

static void ov19_021D5408(UnkStruct_ov19_021D4DF0 *param0, u32 param1)
{
    param0->unk_10C = param1;
}

static void ov19_021D5410(UnkStruct_ov19_021D4DF0 *param0, u32 param1, u32 param2)
{
    UnkStruct_ov19_021D3CFC *v0 = &param0->unk_08;

    v0->unk_05 = param1;
    v0->unk_06 = param2;
    v0->unk_07 = param2 * 6 + param1;
}

static void ov19_021D5420(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1)
{
    UnkStruct_ov19_021D5594 *v0 = &param1->unk_14;
    UnkStruct_ov19_021D3CFC *v1 = &param1->unk_08;

    if (ov19_021D5E10(param1) == 0) {
        MI_CpuCopy32(v1->unk_00, v0->unk_00, BoxPokemon_GetStructSize());
        PCBoxes_InitBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, v1->unk_07);
        v0->unk_0B = 0;
    } else {
        MI_CpuCopy32(v1->unk_00, v0->unk_00, Pokemon_GetStructSize());
        Party_RemovePokemonBySlotIndex(param0->unk_124, v1->unk_08);
        v0->unk_0B = 1;
    }

    ov19_SetPreviewedBoxMon(param1, v0->unk_00);

    v0->unk_04 = v0->unk_06 = v1->unk_05;
    v0->unk_05 = v0->unk_07 = v1->unk_06;

    param1->unk_08.unk_0B = 2;
    param1->unk_08.unk_0A = 0;
}

static void ov19_021D54A4(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1)
{
    u32 v0, v1, v2, v3, v4, v5, v6, v7, v8, v9;
    BoxPokemon *v10;
    UnkStruct_ov19_021D5594 *v11;
    void *v12;

    v11 = &param1->unk_14;

    v11->unk_0A = 1;
    v7 = ov19_021D5E24(param1);
    v9 = BoxPokemon_GetStructSize();
    v8 = 0;
    v12 = (void *)(v11->unk_00);

    ov19_021D5EE8(param1, &v2, &v3, &v4, &v5);

    for (v1 = v4; v1 <= v5; v1++) {
        v6 = v1 * 6 + v2;

        for (v0 = v2; v0 <= v3; v0++) {
            v10 = PCBoxes_GetBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, v6);

            if (BoxPokemon_GetValue(v10, MON_DATA_SPECIES_EXISTS, NULL)) {
                MI_CpuCopy32(v10, v12, v9);
                PCBoxes_InitBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, v6);
                (u8 *)v12 += v9;
                v11->unk_0C[v8++] = v6;

                if (v6 == v7) {
                    v11->unk_0A = 0;
                }
            }

            v6++;
        }
    }

    v11->unk_08 = v8;
    v11->unk_09 = v4 * 6 + v2;

    param1->unk_08.unk_0B = (param1->unk_08.unk_0A) ? 4 : 8;
    param1->unk_08.unk_0A = 0;
}

static void ov19_021D5594(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1)
{
    UnkStruct_ov19_021D5594 *v0 = &param1->unk_14;
    UnkStruct_ov19_021D3CFC *v1 = &param1->unk_08;

    v0->unk_04 = v0->unk_06 = v1->unk_05;
    v0->unk_05 = v0->unk_07 = v1->unk_06;
}

static void ov19_021D55B0(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1)
{
    UnkStruct_ov19_021D5594 *v0 = &param1->unk_14;
    UnkStruct_ov19_021D3CFC *v1 = &param1->unk_08;

    v0->unk_06 = v1->unk_05;
    v0->unk_07 = v1->unk_06;
}

static void ov19_021D55C4(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1)
{
    UnkStruct_ov19_021D5594 *v0 = &param1->unk_14;
    UnkStruct_ov19_021D3CFC *v1 = &param1->unk_08;
    BoxPokemon *v2;
    int v3 = 0, v4;
    BOOL v5;

    if (ov19_021D5E10(param1) == 0) {
        v4 = BoxPokemon_GetValue(v0->unk_00, MON_DATA_FORM, NULL);
        PCBoxes_TryStoreBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, v1->unk_07, v0->unk_00);
        v2 = PCBoxes_GetBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, v1->unk_07);

        if ((BoxPokemon_GetValue(v2, MON_DATA_SPECIES, NULL) == SPECIES_SHAYMIN) && (v4 == 1)) {
            v3 = 1;
        }
    } else {
        if (v0->unk_0B) {
            Party_AddPokemon(param0->unk_124, (Pokemon *)(v0->unk_00));
        } else {
            Pokemon_FromBoxPokemon(v0->unk_00, param0->mon);
            Party_AddPokemon(param0->unk_124, param0->mon);
        }

        v2 = (BoxPokemon *)Party_GetPokemonBySlotIndex(param0->unk_124, Party_GetCurrentCount(param0->unk_124) - 1);
    }

    ov19_SetPreviewedBoxMon(param1, v2);
    v5 = ov19_021D52F4(param0);

    if ((v5 == 0) && (v3 == 1)) {
        ov19_LoadBoxMonIntoPreview(param1, v2, param0);
        ov19_021D6594(param0->unk_114, 6);
    }

    param1->unk_08.unk_0B = 1;
    param1->unk_08.unk_0A = 1;
}

static void ov19_021D56AC(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1)
{
    BoxPokemon *v0;
    int v1, v2, v3, v4, v5;
    UnkStruct_ov19_021D3CFC *v6 = &param1->unk_08;
    UnkStruct_ov19_021D5594 *v7 = &param1->unk_14;

    v3 = ov19_021D5F3C(param1);
    v2 = v7->unk_09;
    v5 = BoxPokemon_GetStructSize();
    v0 = v7->unk_00;

    for (v1 = 0; v1 < v7->unk_08; v1++) {
        v4 = v3 + (v7->unk_0C[v1] - v2);
        PCBoxes_TryStoreBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, v4, v0);
        (u8 *)v0 += v5;
    }

    ov19_SetPreviewedBoxMon(param1, PCBoxes_GetBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, ov19_021D5E24(param1)));
    ov19_021D52F4(param0);

    v7->unk_08 = 0;
    param1->unk_08.unk_0B = 1;
}

static void ov19_021D5734(UnkStruct_ov19_021D5DF8 *param0, UnkStruct_ov19_021D4DF0 *param1)
{
    u32 v0;
    void *v1;
    UnkStruct_ov19_021D5594 *v2;
    UnkStruct_ov19_021D3CFC *v3;

    v2 = &param1->unk_14;
    v0 = Pokemon_GetStructSize();
    v1 = (u8 *)(v2->unk_00) + v0;
    v3 = &param1->unk_08;

    MI_CpuCopy32(v2->unk_00, v1, v0);
    MI_CpuCopy32(v3->unk_00, v2->unk_00, v0);

    if (ov19_021D5E10(param1) == 0) {
        PCBoxes_TryStoreBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, v3->unk_07, v1);
        v2->unk_0B = 0;
    } else {
        if (v2->unk_0B == 0) {
            Pokemon_FromBoxPokemon(v1, param0->mon);
        } else {
            MI_CpuCopy32(v1, param0->mon, v0);
        }

        sub_0207A128(param0->unk_124, v3->unk_08, param0->mon);
        v2->unk_0B = 1;
    }

    ov19_021D5888(param1, v2->unk_00, param0);
}

static BOOL ov19_021D57D8(UnkStruct_ov19_021D5DF8 *param0, u32 param1)
{
    UnkStruct_ov19_021D4DF0 *v0;
    UnkStruct_ov19_021D3CFC *v1;
    UnkStruct_ov19_021D5594 *v2;

    v0 = &(param0->unk_00);
    v1 = &v0->unk_08;
    v2 = &v0->unk_14;

    if (PCBoxes_TryStoreBoxMonInBox(param0->pcBoxes, param1, v2->unk_00)) {
        v0->unk_08.unk_0B = 1;
        ov19_021D52F4(param0);
        return 1;
    }

    return 0;
}

static BOOL ov19_021D5800(UnkStruct_ov19_021D5DF8 *param0, u32 param1)
{
    UnkStruct_ov19_021D4DF0 *v0;
    UnkStruct_ov19_021D3CFC *v1;

    v0 = &(param0->unk_00);
    v1 = &v0->unk_08;

    if (PCBoxes_TryStoreBoxMonInBox(param0->pcBoxes, param1, v1->unk_00)) {
        Party_RemovePokemonBySlotIndex(param0->unk_124, v1->unk_08);
        ov19_021D52F4(param0);
        return 1;
    }

    return 0;
}

static void ov19_021D5834(UnkStruct_ov19_021D5DF8 *param0)
{
    UnkStruct_ov19_021D4DF0 *v0;
    UnkStruct_ov19_021D3CFC *v1;
    UnkStruct_ov19_021D5594 *v2;

    v0 = &(param0->unk_00);
    v1 = &v0->unk_08;
    v2 = &v0->unk_14;

    BoxPokemon_Init(v2->unk_00);
    v1->unk_0B = 1;
    ov19_021D52F4(param0);
}

static void ov19_021D584C(UnkStruct_ov19_021D5DF8 *param0)
{
    UnkStruct_ov19_021D4DF0 *v0 = &(param0->unk_00);
    UnkStruct_ov19_021D3CFC *v1 = &v0->unk_08;

    if (ov19_021D5E10(v0) == 0) {
        PCBoxes_InitBoxMonAt(param0->pcBoxes, USE_CURRENT_BOX, v1->unk_07);
    } else {
        Party_RemovePokemonBySlotIndex(param0->unk_124, v1->unk_08);
    }

    ov19_021D52F4(param0);
}

static void ov19_021D5888(UnkStruct_ov19_021D4DF0 *param0, BoxPokemon *boxMon, UnkStruct_ov19_021D5DF8 *param2)
{
    ov19_LoadBoxMonIntoPreview(param0, boxMon, param2);

    if (ov19_021D5E08(param0) == 4) {
        ov19_LoadBoxMonIntoComparison(param0, boxMon, param2);
    }
}

static void ov19_LoadBoxMonIntoPreview(UnkStruct_ov19_021D4DF0 *param0, BoxPokemon *boxMon, UnkStruct_ov19_021D5DF8 *param2)
{
    PCMonPreview *preview = &(param0->pcMonPreview);
    BOOL reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);
    SpeciesData *speciesData;

    preview->mon = boxMon;
    preview->species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);
    preview->heldItem = BoxPokemon_GetValue(boxMon, MON_DATA_HELD_ITEM, NULL);
    preview->dexNum = GetDexNumber(SaveData_GetDexMode(param2->unk_11C), preview->species);
    preview->isEgg = BoxPokemon_GetValue(boxMon, MON_DATA_EGG_EXISTS, NULL);
    speciesData = SpeciesData_FromMonSpecies(preview->species, HEAP_ID_9);
    preview->level = SpeciesData_GetLevelAt(speciesData, preview->species, BoxPokemon_GetValue(boxMon, MON_DATA_EXP, NULL));
    preview->markings = BoxPokemon_GetValue(boxMon, MON_DATA_MARKS, NULL);
    preview->type1 = BoxPokemon_GetValue(boxMon, MON_DATA_TYPE_1, NULL);
    preview->type2 = BoxPokemon_GetValue(boxMon, MON_DATA_TYPE_2, NULL);

    if ((preview->isEgg == FALSE) && BoxPokemon_GetValue(boxMon, MON_DATA_NIDORAN_HAS_NICKNAME, NULL)) {
        preview->gender = SpeciesData_GetGenderOf(speciesData, preview->species, BoxPokemon_GetValue(boxMon, MON_DATA_PERSONALITY, NULL));
    } else {
        preview->gender = GENDER_INVALID;
    }

    BoxPokemon_GetValue(boxMon, MON_DATA_NICKNAME_STRBUF, preview->nickname);

    if (preview->isEgg == FALSE) {
        MessageLoader_GetStrbuf(param2->speciesNameLoader, preview->species, preview->speciesName);
    } else {
        Strbuf_Copy(preview->speciesName, preview->nickname);
        Strbuf_Clear(preview->nickname);
    }

    if (preview->heldItem != ITEM_NONE) {
        Item_LoadName(preview->heldItemName, preview->heldItem, 9);
    } else {
        MessageLoader_GetStrbuf(param2->boxMessagesLoader, box_message_no_item, preview->heldItemName);
    }

    {
        u32 value = BoxPokemon_GetNature(boxMon);
        MessageLoader_GetStrbuf(param2->natureNameLoader, value, preview->nature);

        value = BoxPokemon_GetValue(boxMon, MON_DATA_ABILITY, NULL);
        MessageLoader_GetStrbuf(param2->abilityNameLoader, value, preview->ability);
    }

    SpeciesData_Free(speciesData);
    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);
}

// ov19_LoadBoxMonIntoComparison
static void ov19_LoadBoxMonIntoComparison(UnkStruct_ov19_021D4DF0 *param0, BoxPokemon *boxMon, UnkStruct_ov19_021D5DF8 *param2)
{
    PCMonPreview *preview = &(param0->pcMonPreview);
    PCCompareMon *compareMon = &(param0->unk_A4.compareMons[param0->unk_A4.unk_00]);

    compareMon->mon = boxMon;
    compareMon->species = preview->species;
    compareMon->isEgg = preview->isEgg;
    compareMon->level = preview->level;

    if (compareMon->isEgg) {
        Strbuf_Copy(compareMon->monName, preview->speciesName);
    } else {
        Strbuf_Copy(compareMon->monName, preview->nickname);
    }

    Strbuf_Copy(compareMon->nature, preview->nature);
    Pokemon_FromBoxPokemon(boxMon, param2->mon);

    BOOL reencrypt = Pokemon_EnterDecryptionContext(param2->mon);

    compareMon->maxHP = Pokemon_GetValue(param2->mon, MON_DATA_MAX_HP, NULL);
    compareMon->attack = Pokemon_GetValue(param2->mon, MON_DATA_ATK, NULL);
    compareMon->defense = Pokemon_GetValue(param2->mon, MON_DATA_DEF, NULL);
    compareMon->spAttack = Pokemon_GetValue(param2->mon, MON_DATA_SP_ATK, NULL);
    compareMon->spDefense = Pokemon_GetValue(param2->mon, MON_DATA_SP_DEF, NULL);
    compareMon->speed = Pokemon_GetValue(param2->mon, MON_DATA_SPEED, NULL);
    compareMon->cool = Pokemon_GetValue(param2->mon, MON_DATA_COOL, NULL);
    compareMon->beauty = Pokemon_GetValue(param2->mon, MON_DATA_BEAUTY, NULL);
    compareMon->cute = Pokemon_GetValue(param2->mon, MON_DATA_CUTE, NULL);
    compareMon->smart = Pokemon_GetValue(param2->mon, MON_DATA_SMART, NULL);
    compareMon->tough = Pokemon_GetValue(param2->mon, MON_DATA_TOUGH, NULL);
    compareMon->moves[0] = Pokemon_GetValue(param2->mon, MON_DATA_MOVE1, NULL);
    compareMon->moves[1] = Pokemon_GetValue(param2->mon, MON_DATA_MOVE2, NULL);
    compareMon->moves[2] = Pokemon_GetValue(param2->mon, MON_DATA_MOVE3, NULL);
    compareMon->moves[3] = Pokemon_GetValue(param2->mon, MON_DATA_MOVE4, NULL);
    compareMon->form = Pokemon_GetValue(param2->mon, MON_DATA_FORM, NULL);

    Pokemon_ExitDecryptionContext(param2->mon, reencrypt);

    param0->unk_A4.unk_02[param0->unk_A4.unk_00] = 1;
}

static void ov19_021D5B70(UnkStruct_ov19_021D4DF0 *param0)
{
    param0->unk_A4.unk_00 ^= 1;
}

static void ov19_021D5B80(UnkStruct_ov19_021D4DF0 *param0)
{
    if (++(param0->unk_A4.unk_01) >= 3) {
        param0->unk_A4.unk_01 = 0;
    }
}

static void ov19_021D5BA0(UnkStruct_ov19_021D4DF0 *param0, BOOL param1)
{
    param0->unk_A4.unk_04 = param1;
}

static void ov19_SetPreviewedBoxMon(UnkStruct_ov19_021D4DF0 *param0, BoxPokemon *boxMon)
{
    param0->pcMonPreview.mon = boxMon;
}

static void ov19_021D5BAC(UnkStruct_ov19_021D4DF0 *param0)
{
    PCMonPreview *preview;
    u8 v1;

    preview = &(param0->pcMonPreview);
    v1 = param0->unk_74.unk_22;
    preview->markings = v1;

    BoxPokemon_SetValue(preview->mon, MON_DATA_MARKS, &(v1));

    if ((ov19_021D5E10(param0) == 0) && (ov19_021D5E38(param0) == 1)) {
        SaveData_SetFullSaveRequired();
    }
}

static void ov19_021D5BE8(UnkStruct_ov19_021D4DF0 *param0, u16 item, UnkStruct_ov19_021D5DF8 *param2)
{
    PCMonPreview *preview = &(param0->pcMonPreview);
    preview->heldItem = item;

    if (preview->heldItem != 0) {
        Item_LoadName(preview->heldItemName, preview->heldItem, 9);
    } else {
        MessageLoader_GetStrbuf(param2->boxMessagesLoader, box_message_no_item, preview->heldItemName);
    }

    if ((ov19_021D5E10(param0) == 0) && (ov19_021D5E38(param0) == 1)) {
        u32 v1 = ov19_021D5E24(param0);
        PCBoxes_SetBoxMonData(param2->pcBoxes, USE_CURRENT_BOX, v1, MON_DATA_HELD_ITEM, &item);
    }

    BoxPokemon_SetValue(preview->mon, MON_DATA_HELD_ITEM, &item);

    int species = BoxPokemon_GetValue(preview->mon, MON_DATA_SPECIES, NULL);

    if (species == SPECIES_ARCEUS) {
        BoxPokemon_SetArceusForm(preview->mon);
        preview->type1 = BoxPokemon_GetValue(preview->mon, MON_DATA_TYPE_1, NULL);
        preview->type2 = BoxPokemon_GetValue(preview->mon, MON_DATA_TYPE_2, NULL);
    } else if (species == SPECIES_GIRATINA) {
        BoxPokemon_SetGiratinaForm(preview->mon);
        int ability = BoxPokemon_GetValue(preview->mon, MON_DATA_ABILITY, NULL);
        MessageLoader_GetStrbuf(param2->abilityNameLoader, ability, preview->ability);
    }
}

static void ov19_LoadRightBoxCustomization(UnkStruct_ov19_021D4DF0 *param0)
{
    BoxCustomization *customization = &param0->customization;

    if (++(customization->boxID) >= MAX_PC_BOXES) {
        customization->boxID = 0;
    }

    PCBoxes_LoadCustomization(param0->pcBoxes, customization);
}

static void ov19_LoadLeftBoxCustomization(UnkStruct_ov19_021D4DF0 *param0)
{
    BoxCustomization *customization = &param0->customization;

    if (customization->boxID) {
        customization->boxID--;
    } else {
        customization->boxID = MAX_PC_BOXES - 1;
    }

    PCBoxes_LoadCustomization(param0->pcBoxes, customization);
}

static void ov19_LoadCustomizationsFor(UnkStruct_ov19_021D4DF0 *param0, u32 boxID)
{
    BoxCustomization *customization = &param0->customization;

    customization->boxID = boxID;
    PCBoxes_LoadCustomization(param0->pcBoxes, customization);
}

static void ov19_021D5D20(UnkStruct_ov19_021D4DF0 *param0, u32 param1)
{
    UnkStruct_ov19_021D5D20 *v0 = &(param0->unk_98);
    v0->unk_00 = param1;
}

static void ov19_021D5D28(UnkStruct_ov19_021D4DF0 *param0, UnkStruct_ov19_021D5DF8 *param1)
{
    PCMonPreview *preview = &(param0->pcMonPreview);
    u16 item = ITEM_NONE;

    param0->unk_112 = preview->heldItem;

    MessageLoader_GetStrbuf(param1->boxMessagesLoader, box_message_no_item, preview->heldItemName);
    ov19_021D5BE8(param0, item, param1);
}

static void ov19_021D5D54(UnkStruct_ov19_021D4DF0 *param0)
{
    param0->unk_112 = 0;
}

static void ov19_021D5D60(UnkStruct_ov19_021D4DF0 *param0, UnkStruct_ov19_021D5DF8 *param1)
{
    PCMonPreview *preview = &(param0->pcMonPreview);
    u16 item = param0->unk_112;
    param0->unk_112 = 0;

    ov19_021D5BE8(param0, item, param1);
}

static void ov19_021D5D78(UnkStruct_ov19_021D4DF0 *param0, UnkStruct_ov19_021D5DF8 *param1)
{
    PCMonPreview *preview = &(param0->pcMonPreview);
    u16 item = param0->unk_112;
    param0->unk_112 = preview->heldItem;

    ov19_021D5BE8(param0, item, param1);
}

static void ov19_021D5D94(UnkStruct_ov19_021D4DF0 *param0, u32 param1)
{
    param0->unk_9C.unk_00 = param1;
}

static void ov19_021D5D9C(UnkStruct_ov19_021D4DF0 *param0, u32 param1)
{
    param0->unk_9C.unk_02 = param1;
}

static void ov19_021D5DA4(UnkStruct_ov19_021D4DF0 *param0, u32 param1)
{
    param0->unk_9C.unk_01 = param1;
}

static void ov19_021D5DAC(UnkStruct_ov19_021D4DF0 *param0, int param1)
{
    param0->unk_9C.unk_04 = param1;
}

static void ov19_021D5DB4(UnkStruct_ov19_021D4DF0 *param0, u32 param1)
{
    if (param1 == 0) {
        param0->unk_48.unk_02 = 0;
    } else {
        param0->unk_48.unk_02 ^= (1 << (param1 - 1));
    }
}

static void ov19_021D5DD8(UnkStruct_ov19_021D4DF0 *param0)
{
    param0->unk_48.unk_01 ^= 1;
}

MessageLoader *ov19_GetBoxMessagesLoader(const UnkStruct_ov19_021D5DF8 *param0)
{
    return param0->boxMessagesLoader;
}

const StringTemplate *ov19_021D5DF0(const UnkStruct_ov19_021D5DF8 *param0)
{
    return param0->unk_19C;
}

int ov19_021D5DF8(const UnkStruct_ov19_021D5DF8 *param0)
{
    return Options_Frame(param0->unk_1A4);
}

u32 ov19_021D5E08(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_48.unk_00;
}

u32 ov19_021D5E10(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_08.unk_04;
}

u32 ov19_021D5E14(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_08.unk_05;
}

u32 ov19_021D5E1C(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_08.unk_06;
}

u32 ov19_021D5E24(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_08.unk_07;
}

u32 ov19_021D5E2C(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_08.unk_08;
}

BOOL ov19_021D5E34(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_08.unk_0A;
}

u32 ov19_021D5E38(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_08.unk_0B;
}

BOOL ov19_021D5E3C(const UnkStruct_ov19_021D4DF0 *param0)
{
    if (param0->unk_08.unk_0B) {
        return param0->unk_14.unk_0B;
    }

    return 0;
}

BOOL ov19_021D5E4C(const UnkStruct_ov19_021D4DF0 *param0)
{
    const UnkStruct_ov19_021D5594 *v0;
    const UnkStruct_ov19_021D3CFC *v1;

    v0 = &param0->unk_14;
    v1 = &param0->unk_08;

    if ((v1->unk_0B == 2) || (v1->unk_0B == 4)) {
        return 1;
    }

    if (param0->unk_08.unk_0A) {
        return 1;
    }

    return 0;
}

u32 ov19_GetCurrentBox(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->customization.boxID;
}

const PCMonPreview *ov19_GetPCMonPreview(const UnkStruct_ov19_021D4DF0 *param0)
{
    return &(param0->pcMonPreview);
}

u32 ov19_GetPreviewedMonHeldItem(const UnkStruct_ov19_021D4DF0 *param0)
{
    if (ov19_021D5E4C(param0)) {
        return param0->pcMonPreview.heldItem;
    }

    return ITEM_NONE;
}

const BoxCustomization *ov19_GetBoxCustomization(const UnkStruct_ov19_021D4DF0 *param0)
{
    return &(param0->customization);
}

const PCBoxes *ov19_GetPCBoxes(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->pcBoxes;
}

u32 ov19_021D5E94(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_10C;
}

BoxPokemon *ov19_GetPreviewedBoxMon(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->pcMonPreview.mon;
}

u32 ov19_GetPreviewedMonMarkings(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->pcMonPreview.markings;
}

u32 ov19_021D5EA8(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_98.unk_00;
}

s32 ov19_021D5EB0(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_9C.unk_04;
}

u32 ov19_021D5EB8(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_9C.unk_02;
}

u32 ov19_021D5EC0(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_9C.unk_01;
}

u32 ov19_021D5EC8(const UnkStruct_ov19_021D4DF0 *param0)
{
    if (ov19_021D5E08(param0) != 3) {
        return param0->unk_48.unk_02;
    } else {
        return 1;
    }
}

BOOL ov19_021D5EE0(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_48.unk_01;
}

void ov19_021D5EE8(const UnkStruct_ov19_021D4DF0 *param0, u32 *param1, u32 *param2, u32 *param3, u32 *param4)
{
    const UnkStruct_ov19_021D5594 *v0 = &param0->unk_14;

    if (v0->unk_04 <= v0->unk_06) {
        *param1 = v0->unk_04;
        *param2 = v0->unk_06;
    } else {
        *param1 = v0->unk_06;
        *param2 = v0->unk_04;
    }

    if (v0->unk_05 <= v0->unk_07) {
        *param3 = v0->unk_05;
        *param4 = v0->unk_07;
    } else {
        *param3 = v0->unk_07;
        *param4 = v0->unk_05;
    }
}

BOOL ov19_021D5F20(const UnkStruct_ov19_021D4DF0 *param0)
{
    const UnkStruct_ov19_021D5594 *v0 = &param0->unk_14;

    if ((v0->unk_04 == v0->unk_06) && (v0->unk_05 == v0->unk_07)) {
        return 1;
    }

    return 0;
}

u32 ov19_021D5F3C(const UnkStruct_ov19_021D4DF0 *param0)
{
    const UnkStruct_ov19_021D5594 *v0;
    int v1, v2;

    v0 = &param0->unk_14;
    v1 = param0->unk_08.unk_05;
    v2 = param0->unk_08.unk_06;

    if (v0->unk_06 > v0->unk_04) {
        v1 -= (v0->unk_06 - v0->unk_04);
    }

    if (v0->unk_07 > v0->unk_05) {
        v2 -= (v0->unk_07 - v0->unk_05);
    }

    return v2 * 6 + v1;
}

u32 ov19_021D5F6C(const UnkStruct_ov19_021D4DF0 *param0, u32 param1)
{
    const UnkStruct_ov19_021D5594 *v0 = &param0->unk_14;
    return v0->unk_0C[param1] - v0->unk_09;
}

u32 ov19_021D5F7C(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_112;
}

u32 ov19_021D5F88(const UnkStruct_ov19_021D4DF0 *param0)
{
    u32 v0 = ov19_021D5F7C(param0);

    if (v0 != 0) {
        return v0;
    }

    return ov19_GetPreviewedMonHeldItem(param0);
}

u32 ov19_021D5F9C(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_A4.unk_00;
}

u32 ov19_021D5FA4(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_A4.unk_01;
}

const PCCompareMon *GetCompareMonFrom(const UnkStruct_ov19_021D4DF0 *param0, int compareSlot)
{
    return &param0->unk_A4.compareMons[compareSlot];
}

BOOL ov19_021D5FB8(const UnkStruct_ov19_021D4DF0 *param0, int param1)
{
    return param0->unk_A4.unk_02[param1];
}

BOOL ov19_021D5FC0(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->unk_A4.unk_04;
}

BOOL ov19_IsPreviewedMonEgg(const UnkStruct_ov19_021D4DF0 *param0)
{
    return param0->pcMonPreview.isEgg;
}

static u32 ov19_021D5FD0(UnkStruct_ov19_021D4DF0 *param0, enum PokemonDataParam value, void *dest)
{
    if (ov19_021D5E38(param0) == 1) {
        if (ov19_021D5E10(param0) == 0) {
            return BoxPokemon_GetValue(param0->pcMonPreview.mon, value, dest);
        }
    } else {
        UnkStruct_ov19_021D5594 *v0 = &param0->unk_14;

        if (v0->unk_0B == 0) {
            return BoxPokemon_GetValue(param0->pcMonPreview.mon, value, dest);
        }
    }

    return Pokemon_GetValue(param0->pcMonPreview.mon, value, dest);
}

static u32 ov19_021D6014(UnkStruct_ov19_021D4DF0 *param0, enum PokemonDataParam value, void *dest)
{
    if (ov19_021D5E10(param0) == 0) {
        return BoxPokemon_GetValue(param0->pcMonPreview.mon, value, dest);
    } else {
        return Pokemon_GetValue(param0->unk_08.unk_00, value, dest);
    }
}
