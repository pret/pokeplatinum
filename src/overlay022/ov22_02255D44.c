#include "overlay022/ov22_02255D44.h"

#include <nitro.h>
#include <string.h>

#include "consts/game_records.h"

#include "struct_decls/struct_02015920_decl.h"
#include "struct_decls/struct_02029C68_decl.h"
#include "struct_decls/struct_02029C88_decl.h"
#include "struct_defs/archived_sprite.h"
#include "struct_defs/struct_02015958.h"
#include "struct_defs/struct_0203DA00.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02093BBC.h"
#include "struct_defs/struct_02095C60.h"

#include "overlay022/ov22_02254DE0.h"
#include "overlay022/ov22_02255094.h"
#include "overlay022/ov22_022578F4.h"
#include "overlay022/ov22_02257F50.h"
#include "overlay022/ov22_022588F0.h"
#include "overlay022/ov22_0225894C.h"
#include "overlay022/ov22_022589E0.h"
#include "overlay022/ov22_02259098.h"
#include "overlay022/ov22_02259484.h"
#include "overlay022/ov22_02259560.h"
#include "overlay022/ov22_022597BC.h"
#include "overlay022/ov22_02259C58.h"
#include "overlay022/ov22_0225A428.h"
#include "overlay022/ov22_0225AF44.h"
#include "overlay022/struct_ov22_02254DE0.h"
#include "overlay022/struct_ov22_02255CB8.h"
#include "overlay022/struct_ov22_02256BAC.h"
#include "overlay022/struct_ov22_02257964.h"
#include "overlay022/struct_ov22_02257F50.h"
#include "overlay022/struct_ov22_02258470.h"
#include "overlay022/struct_ov22_0225899C.h"
#include "overlay022/struct_ov22_02258A48.h"
#include "overlay022/struct_ov22_02259484.h"
#include "overlay022/struct_ov22_02259560.h"
#include "overlay022/struct_ov22_022596B0.h"
#include "overlay022/struct_ov22_022597BC.h"
#include "overlay022/struct_ov22_022599A0.h"
#include "overlay022/struct_ov22_02259C58.h"
#include "overlay022/struct_ov22_02259D2C.h"
#include "overlay022/struct_ov22_0225A0E4.h"
#include "overlay022/struct_ov22_0225A428.h"
#include "overlay022/struct_ov22_0225AF68.h"
#include "overlay022/struct_ov22_0225B388.h"

#include "cell_actor.h"
#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "game_records.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "overlay_manager.h"
#include "pokemon.h"
#include "render_text.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task_manager.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_0200679C.h"
#include "unk_020093B4.h"
#include "unk_0200A9DC.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02015920.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201E3D8.h"
#include "unk_020298BC.h"
#include "unk_020363E8.h"
#include "unk_020393C8.h"
#include "unk_02094EDC.h"
#include "unk_02095AF0.h"

typedef struct {
    UnkStruct_ov22_0225A0E4 unk_00;
    UnkStruct_ov22_0225899C unk_1E8;
    UnkStruct_ov22_02259484 unk_3C0;
    UnkStruct_ov22_02254DE0 *unk_3C8;
    UnkStruct_ov22_02257F50 unk_3CC;
    UnkStruct_ov22_02257964 unk_458;
    UnkStruct_ov22_0225AF68 unk_4E0;
    UnkStruct_ov22_02258A48 unk_4FC;
    UnkStruct_ov22_022597BC unk_518;
    UnkStruct_ov22_02259D2C unk_544;
    UnkStruct_ov22_0225A428 unk_5C4;
    int unk_70C;
    int unk_710;
    UnkStruct_02015920 *unk_714;
    Window *unk_718;
    BOOL unk_71C;
    int unk_720;
    int unk_724;
    int unk_728;
    int unk_72C;
    int unk_730;
    UnkStruct_02095C60 *unk_734;
    const Options *unk_738;
    u32 unk_73C;
    Strbuf *unk_740;
    StringTemplate *unk_744;
} UnkStruct_ov22_02255D44;

typedef struct {
    UnkStruct_ov22_02255D44 *unk_00;
    BOOL *unk_04;
    int unk_08;
    int unk_0C;
} UnkStruct_ov22_02256C48;

typedef struct {
    UnkStruct_ov22_02259560 *unk_00;
    u32 unk_04;
} UnkStruct_ov22_02256FD8_sub1;

typedef struct {
    UnkStruct_ov22_02256FD8_sub1 unk_00[21];
    int unk_A8;
} UnkStruct_ov22_02256FD8;

static void ov22_02256940(void *param0);
static void ov22_022566C0(UnkStruct_ov22_02255D44 *param0);
static void ov22_022566EC(UnkStruct_ov22_02255D44 *param0);
static void ov22_022566F4(UnkStruct_ov22_02255D44 *param0);
static void ov22_02256708(UnkStruct_ov22_02255D44 *param0, Pokemon *param1, int param2, BOOL param3);
static void ov22_02256790(UnkStruct_ov22_02255D44 *param0, Pokemon *param1, int param2);
static void ov22_022567D8(UnkStruct_ov22_02255D44 *param0);
static void ov22_022567FC(UnkStruct_ov22_02255D44 *param0);
static void ov22_022568B8(UnkStruct_ov22_02255D44 *param0);
static void ov22_022568DC(UnkStruct_ov22_02255D44 *param0);
static void ov22_02256948(UnkStruct_ov22_02255D44 *param0, int param1);
static void ov22_0225698C(UnkStruct_ov22_02255D44 *param0);
static void ov22_0225699C(UnkStruct_ov22_02255D44 *param0);
static void ov22_02256A28(UnkStruct_ov22_02255D44 *param0);
static void ov22_02256AB4(UnkStruct_ov22_02255D44 *param0);
static void ov22_02256AC4(UnkStruct_ov22_02255D44 *param0);
static void ov22_02256AD4(UnkStruct_ov22_02255D44 *param0);
static void ov22_02256AE4(UnkStruct_ov22_02259C58 *param0, void *param1);
static void ov22_02256B04(UnkStruct_ov22_02259C58 *param0, void *param1);
static void ov22_02256B24(UnkStruct_ov22_02259C58 *param0, void *param1);
static void ov22_02256B44(UnkStruct_ov22_02259C58 *param0, void *param1);
static void ov22_02256B78(UnkStruct_ov22_02259C58 *param0, void *param1);
static void ov22_02256BAC(UnkStruct_ov22_02255D44 *param0, const Options *param1);
static void ov22_02256BF4(UnkStruct_ov22_02255D44 *param0, int param1, int param2, UnkStruct_02095C60 *param3, const Options *param4);
static void ov22_02256C38(UnkStruct_ov22_02255D44 *param0);
static void ov22_02256C48(UnkStruct_ov22_02255D44 *param0, BOOL *param1);
static void ov22_02256C70(SysTask *param0, void *param1);
static void ov22_02256DB8(UnkStruct_ov22_02255D44 *param0, BOOL *param1);
static void ov22_02256DE0(SysTask *param0, void *param1);
static BOOL ov22_02257098(UnkStruct_ov22_02256C48 *param0, int param1, int param2, int param3);
static void ov22_02256F38(UnkStruct_02029C68 *param0, UnkStruct_ov22_02257964 *param1, const TrainerInfo *param2);
static void ov22_02256FD8(UnkStruct_02029C88 *param0, UnkStruct_ov22_02257964 *param1, int param2, const TrainerInfo *param3);
static void ov22_02257104(UnkStruct_ov22_02255D44 *param0);
static void ov22_0225718C(UnkStruct_ov22_02255D44 *param0);
static void ov22_022571D4(UnkStruct_ov22_02255D44 *param0);
static void ov22_02257258(UnkStruct_ov22_02255D44 *param0);
static u32 ov22_02257278(UnkStruct_ov22_02255D44 *param0);
static void ov22_022575B4(UnkStruct_ov22_02255D44 *param0);
static u32 ov22_02257624(UnkStruct_ov22_02255D44 *param0);
static void ov22_022574CC(UnkStruct_ov22_02255D44 *param0, u32 param1);
static void ov22_022574E4(UnkStruct_ov22_02255D44 *param0, u32 param1);
static void ov22_022574EC(UnkStruct_ov22_02255D44 *param0);
static void ov22_022574F4(UnkStruct_ov22_02255D44 *param0, u32 param1);
static u32 ov22_0225751C(UnkStruct_ov22_02255D44 *param0, u32 param1);
static void ov22_02257524(UnkStruct_ov22_02255D44 *param0, int param1, int param2);
static void ov22_02257540(UnkStruct_ov22_02255D44 *param0);
static void ov22_02257548(UnkStruct_ov22_02255D44 *param0);
static void ov22_022572A0(UnkStruct_ov22_02255D44 *param0, u32 param1, u8 param2, u8 param3, u8 param4, u8 param5);
static void ov22_02257368(UnkStruct_ov22_02255D44 *param0, u32 param1);
static u32 ov22_022573EC(UnkStruct_ov22_02255D44 *param0, u32 param1);
static void ov22_02257498(UnkStruct_ov22_02255D44 *param0);
static void ov22_022574B0(UnkStruct_ov22_02255D44 *param0);
static void ov22_02257564(UnkStruct_ov22_02255D44 *param0);
static int ov22_02257580(int param0);
static void ov22_0225764C(UnkStruct_ov22_02256FD8 *param0);
static void ov22_02257658(UnkStruct_ov22_02256FD8 *param0, UnkStruct_ov22_02259560 *param1, u32 param2);
static void ov22_0225768C(UnkStruct_ov22_02256FD8 *param0);
static UnkStruct_ov22_02259560 *ov22_022576E8(UnkStruct_ov22_02256FD8 *param0, u32 param1);
static BOOL ov22_022576FC(UnkStruct_ov22_02256FD8 *param0, u32 param1);
static BOOL ov22_0225771C(UnkStruct_ov22_02256FD8_sub1 *param0, UnkStruct_ov22_02256FD8_sub1 *param1);
static void ov22_02257778(UnkStruct_ov22_02256FD8 *param0, UnkStruct_ov22_02259560 *param1, u32 param2);
static void ov22_022577A0(UnkStruct_ov22_02255D44 *param0);

int ov22_02255D44(OverlayManager *param0, int *param1)
{
    UnkStruct_ov22_02255D44 *v0;
    u32 v1;
    UnkStruct_0203DA00 *v2;

    Heap_Create(3, 13, 0x20000);
    Heap_Create(3, 14, 0x40000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov22_02255D44), 13);
    memset(v0, 0, sizeof(UnkStruct_ov22_02255D44));

    SetMainCallback(ov22_02256940, v0);
    DisableHBlank();

    v2 = OverlayManager_Args(param0);
    v0->unk_738 = v2->unk_0C;
    sub_0201E3D8();
    v1 = sub_0201E450(4);

    if (v1 != 1) {
        (void)0;
    }

    ov22_0225894C(v2->unk_08, &v0->unk_1E8);
    ov22_022566C0(v0);
    ov22_02259484(&v0->unk_3C0, (700 + 1 + 18), 13);

    v0->unk_3C8 = ov22_02254DE0(700, 13);

    ov22_02256708(v0, v2->unk_00, 10, 0);
    ov22_022567FC(v0);
    ov22_02256948(v0, 0);
    ov22_0225699C(v0);
    ov22_02256BAC(v0, v2->unk_0C);
    ov22_022589E0(&v0->unk_4FC, &v0->unk_458, &v0->unk_3CC, &v0->unk_00, &v0->unk_5C4, 1);

    v0->unk_714 = sub_02015920(13);
    v0->unk_718 = sub_0201A778(13, 1);
    v0->unk_70C = 0;

    sub_02004550(53, 0, 0);

    return 1;
}

int ov22_02255E50(OverlayManager *param0, int *param1)
{
    UnkStruct_ov22_02255D44 *v0 = OverlayManager_Data(param0);
    int v1 = 0;
    UnkStruct_0203DA00 *v2 = OverlayManager_Args(param0);

    switch (*param1) {
    case 0:
    case 1:
        sub_0200F174(
            1, 5, 5, 0x0, 6, 1, 13);
        (*param1) = 2;
        break;
    case 2:
        if (ScreenWipe_Done()) {
            (*param1)++;
        }
        break;
    case 3:
        if (v2->unk_1C == 1) {
            RenderControlFlags_SetSpeedUpOnTouch(1);

            v0->unk_73C = ov22_0225A660(&v0->unk_5C4, 26, 385, 47);
            (*param1)++;
        } else {
            (*param1) = 6;
        }
        break;
    case 4:
        if (Text_IsPrinterActive(v0->unk_73C) == 0) {
            ov22_0225A6A0(&v0->unk_5C4);
            (*param1)++;
        }
        break;
    case 5:
        if ((gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) | (gCoreSys.touchPressed)) {
            ov22_0225A628(&v0->unk_5C4, 26, 385, 48);
            RenderControlFlags_SetSpeedUpOnTouch(0);
            (*param1)++;
        }
        break;
    case 6:
        if (v0->unk_70C == 3) {
            ov22_02256C48(v0, &v0->unk_710);

            (*param1) = 7;
        }

        ov22_0225890C(&v0->unk_4FC);
        ov22_02257564(v0);
        ov22_0225A610(&v0->unk_5C4);
        ov22_02256AC4(v0);
        break;
    case 7:
        if (v0->unk_710) {
            v0->unk_710 = 0;
            (*param1) = 8;
            v0->unk_70C = 4;
            ov22_0225AF44(&v0->unk_4E0, &v0->unk_458, 14);
        }
        break;
    case 8:
        if (v0->unk_70C == 9) {
            ov22_02256DB8(v0, &v0->unk_710);
            (*param1) = 10;
            break;
        }

        if (v0->unk_70C == 8) {
            (*param1) = 9;
            v0->unk_70C = 5;
            ov22_022575B4(v0);
            break;
        }

        v0->unk_70C = ov22_02257278(v0);
        ov22_0225AF68(&v0->unk_4E0);

        break;
    case 9:
        if (v0->unk_70C == 6) {
            v0->unk_71C = 1;
            (*param1) = 11;
            break;
        }

        if (v0->unk_70C == 7) {
            v0->unk_71C = 0;
            (*param1) = 11;
            break;
        }

        v0->unk_70C = ov22_02257624(v0);
        ov22_0225AF68(&v0->unk_4E0);
        break;
    case 10:
        if (v0->unk_710) {
            v0->unk_710 = 0;
            (*param1) = 6;
            v0->unk_70C = 0;

            ov22_0225AF74(&v0->unk_4E0);
        }
        break;
    case 11:
        sub_0200F174(
            1, 0, 0, 0x0, 6, 1, 13);
        (*param1)++;
        break;
    case 12:
        if (ScreenWipe_Done()) {
            (*param1) = 0;
            v0->unk_70C = 10;
            v1 = 1;
            ov22_0225AF74(&v0->unk_4E0);
        }
        break;
    }

    ov22_022566EC(v0);
    return v1;
}

int ov22_02256098(OverlayManager *param0, int *param1)
{
    UnkStruct_ov22_02255D44 *v0 = OverlayManager_Data(param0);
    u32 v1;
    UnkStruct_0203DA00 *v2 = OverlayManager_Args(param0);

    if (v0->unk_71C == 1) {
        GameRecords_IncrementTrainerScore(v2->records, TRAINER_SCORE_EVENT_UNK_07);
        ov22_02256F38(v2->unk_04, &v0->unk_458, v2->unk_14);
    }

    if (v2->unk_18 != NULL) {
        if (v0->unk_71C == 1) {
            *v2->unk_18 = 1;
        } else {
            *v2->unk_18 = 0;
        }
    }

    sub_02015938(v0->unk_714);
    sub_0201A928(v0->unk_718, 1);

    ov22_02256C38(v0);
    ov22_02258A34(&v0->unk_4FC);
    ov22_02256AB4(v0);
    ov22_0225698C(v0);
    ov22_022567D8(v0);
    ov22_022568B8(v0);
    ov22_02254E0C(v0->unk_3C8);

    v0->unk_3C8 = NULL;

    ov22_022594AC(&v0->unk_3C0);
    ov22_022566F4(v0);

    SetMainCallback(NULL, NULL);
    DisableHBlank();

    v1 = sub_0201E530();
    GF_ASSERT(v1 == 1);

    OverlayManager_FreeData(param0);
    Heap_Destroy(13);
    Heap_Destroy(14);

    return 1;
}

int ov22_02256174(OverlayManager *param0, int *param1)
{
    UnkStruct_ov22_02255D44 *v0;
    u32 v1;
    UnkStruct_02093BBC *v2;

    Heap_Create(3, 13, 0x20000);
    Heap_Create(3, 14, 0x40000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov22_02255D44), 13);
    memset(v0, 0, sizeof(UnkStruct_ov22_02255D44));

    SetMainCallback(ov22_02256940, v0);
    DisableHBlank();

    v2 = OverlayManager_Args(param0);

    v0->unk_724 = v2->unk_0C;
    v0->unk_728 = v2->unk_10;
    v0->unk_72C = v2->unk_14;
    v0->unk_730 = v2->unk_08;
    v0->unk_734 = v2->unk_1C;

    sub_0201E3D8();
    v1 = sub_0201E450(4);

    if (v1 != 1) {
        (void)0;
    }

    ov22_0225894C(v2->unk_18, &v0->unk_1E8);
    ov22_022566C0(v0);

    CellActorCollection_SetActive(v0->unk_00.unk_44, 0);
    sub_02039734();
    sub_0200966C(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_32K);
    sub_02009704(NNS_G2D_VRAM_TYPE_2DMAIN);

    ov22_02259484(&v0->unk_3C0, (700 + 1 + 18), 13);

    v0->unk_3C8 = ov22_02254DE0(700, 13);
    v0->unk_738 = v2->unk_20;

    if (v0->unk_734->unk_16 == 0) {
        v0->unk_720 = ov22_02257580(v2->unk_0C);
    } else {
        v0->unk_720 = 20;
    }

    ov22_02256790(v0, v2->unk_00, v0->unk_720);
    ov22_022567FC(v0);
    ov22_02256948(v0, 0);
    ov22_02256A28(v0);
    ov22_02256BF4(v0, v0->unk_720, v2->unk_08, v2->unk_1C, v2->unk_20);
    ov22_022589E0(&v0->unk_4FC, &v0->unk_458, &v0->unk_3CC, &v0->unk_00, &v0->unk_5C4, 0);

    v0->unk_714 = sub_02015920(13);
    v0->unk_718 = sub_0201A778(13, 1);
    v0->unk_70C = 0;

    sub_020959F4(v0->unk_734->unk_16);

    return 1;
}

int ov22_022562EC(OverlayManager *param0, int *param1)
{
    UnkStruct_ov22_02255D44 *v0 = OverlayManager_Data(param0);
    int v1 = 0;
    int v2;

    switch (*param1) {
    case 0:
        sub_0200564C((127 / 3), 30);
        (*param1)++;
        break;
    case 1:
        if (Sound_CheckFade() == 0) {
            (*param1)++;
        }
        break;
    case 2:
        ov22_02257104(v0);
        ov22_02257524(v0, 0, v0->unk_720);

        if (v0->unk_728 != 3) {
            v0->unk_73C = ov22_0225751C(v0, 26);
        } else {
            v0->unk_73C = ov22_0225751C(v0, 28);
        }

        (*param1)++;
        break;
    case 3:

        if (Text_IsPrinterActive(v0->unk_73C) == 0) {
            ov22_02257540(v0);
            (*param1)++;
        }
        break;
    case 4:
        v0->unk_73C = ov22_0225751C(v0, 29 + v0->unk_730);
        (*param1)++;
        break;
    case 5:
        if (Text_IsPrinterActive(v0->unk_73C) == 0) {
            ov22_02257540(v0);
            (*param1)++;
        }
        break;
    case 6:
        if (v0->unk_728 != 3) {
            v0->unk_73C = ov22_0225751C(v0, 42);
        } else {
            v0->unk_73C = ov22_0225751C(v0, 41);
        }

        (*param1)++;
        break;
    case 7:
        if (Text_IsPrinterActive(v0->unk_73C) == 0) {
            ov22_02257540(v0);
            (*param1)++;
        }
        break;
    case 8:
        if (v0->unk_734->unk_16) {
            CommTiming_StartSync(2);
        }
        (*param1)++;
        break;
    case 9:
        if (v0->unk_734->unk_16) {
            if (CommTiming_IsSyncState(2)) {
                (*param1)++;
            }
        } else {
            (*param1)++;
        }
        break;
    case 10:
        ov22_0225718C(v0);
        Sound_PlayEffect(1603);
        (*param1)++;
        break;
    case 11:
        sub_0200F174(1, 17, 19, 0x0, 6, 1, 13);
        (*param1)++;
        break;
    case 12:
        if (ScreenWipe_Done()) {
            sub_02004550(7, 1169, 0);
            (*param1)++;
        }
        break;
    case 13:
        if (v0->unk_70C == 3) {
            sub_02095CA8(v0->unk_734, 1);

            if (v0->unk_734->unk_16) {
                ov22_0225A628(&v0->unk_5C4, 26, 385, 46);
            }

            (*param1) = 14;
            break;
        }

        v2 = ov22_0225A6C4(&v0->unk_5C4);

        if (0 == v2) {
            (*param1) = 15;
            Sound_PlayEffect(1664);
        }

        ov22_0225890C(&v0->unk_4FC);
        ov22_02257564(v0);
        ov22_0225A610(&v0->unk_5C4);
        ov22_02256AC4(v0);
        break;
    case 14:
        v2 = ov22_0225A6C4(&v0->unk_5C4);

        if (0 == v2) {
            (*param1) = 15;
            Sound_PlayEffect(1664);
        }

        ov22_02257564(v0);
        ov22_0225A610(&v0->unk_5C4);
        ov22_022577A0(v0);
        break;
    case 15:
        ov22_0225A610(&v0->unk_5C4);

        if (ov22_0225A6D4(&v0->unk_5C4)) {
            (*param1) = 19;
        }
        break;
    case 19:
        if (Sound_IsEffectPlaying(1664) == 1) {
            break;
        }

        sub_0200F174(1, 26, 26, 0x0, 6, 1, 13);
        Sound_PlayEffect(1668);
        (*param1)++;
        break;
    case 20:
        if (ScreenWipe_Done()) {
            (*param1) = 0;
            v0->unk_70C = 10;
            v1 = 1;

            GX_SetVisibleWnd(GX_WNDMASK_NONE);
            ov22_02257AB0(&v0->unk_458, -(8 * 8), (5 * 8));
        }
        break;
    }

    ov22_022566EC(v0);

    return v1;
}

int ov22_02256600(OverlayManager *param0, int *param1)
{
    UnkStruct_ov22_02255D44 *v0 = OverlayManager_Data(param0);
    u32 v1;
    UnkStruct_02093BBC *v2 = OverlayManager_Args(param0);

    ov22_02256FD8(v2->unk_04, &v0->unk_458, v0->unk_724, v2->unk_24);

    sub_02015938(v0->unk_714);
    sub_0201A928(v0->unk_718, 1);

    ov22_02256C38(v0);
    ov22_02258A34(&v0->unk_4FC);
    ov22_02256AB4(v0);
    ov22_0225698C(v0);
    ov22_022567D8(v0);
    ov22_022568B8(v0);
    ov22_02254E0C(v0->unk_3C8);

    v0->unk_3C8 = NULL;

    ov22_022594AC(&v0->unk_3C0);
    ov22_022566F4(v0);

    SetMainCallback(NULL, NULL);
    DisableHBlank();

    v1 = sub_0201E530();
    GF_ASSERT(v1 == 1);

    OverlayManager_FreeData(param0);
    Heap_Destroy(13);
    Heap_Destroy(14);
    sub_02095A24();
    sub_02039794();

    return 1;
}

static void ov22_022566C0(UnkStruct_ov22_02255D44 *param0)
{
    UnkStruct_ov22_02255CB8 v0;

    ov22_02255094();
    ov22_022550D4(&param0->unk_00);
    ov22_02255314(&param0->unk_00, &v0);
    ov22_022551B4(&param0->unk_00, &v0);
    ov22_02255338(&v0);
}

static void ov22_022566EC(UnkStruct_ov22_02255D44 *param0)
{
    ov22_02255180(&param0->unk_00);
}

static void ov22_022566F4(UnkStruct_ov22_02255D44 *param0)
{
    ov22_022551D0(&param0->unk_00);
    ov22_02255134(&param0->unk_00);
    ov22_022550B4();
}

static void ov22_02256708(UnkStruct_ov22_02255D44 *param0, Pokemon *param1, int param2, BOOL param3)
{
    UnkStruct_ov22_0225B388 v0;

    v0.unk_00 = param0->unk_00.unk_00;
    v0.unk_04 = param0->unk_00.unk_04;
    v0.unk_08 = param0->unk_00.unk_10;
    v0.unk_0C = param0->unk_00.unk_30;
    v0.unk_10 = param0->unk_00.unk_20;
    v0.unk_14 = param0->unk_00.unk_40;
    v0.unk_20 = param2;
    v0.unk_18 = param0->unk_3C8;
    v0.unk_1C = &param0->unk_3C0;

    ov22_022578F4(&param0->unk_458, &v0);

    {
        ArchivedSprite v1;

        if (param3 == 0) {
            ov22_02257998(&param0->unk_458, param1, &v1, 14);
        } else {
            ov22_022579B4(&param0->unk_458, param1, &v1, 14);
        }

        ov22_02259098(&param0->unk_00, &v1);
    }

    ov22_02257B10(&param0->unk_458);
    ov22_02257C88(&param0->unk_458, 0, 14);
}

static void ov22_02256790(UnkStruct_ov22_02255D44 *param0, Pokemon *param1, int param2)
{
    int v0, v1;
    UnkStruct_ov22_022596B0 v2;

    ov22_02256708(param0, param1, param2, 1);
    ov22_02259270(&param0->unk_458.unk_2C.unk_4C, &v0, &v1);
    ov22_02259358(&param0->unk_458.unk_2C.unk_4C, &v2);
    ov22_022591EC(&param0->unk_458.unk_2C.unk_4C, 192, (16 + 129) - ((v1 / 2) - v2.unk_03) + -4);
}

static void ov22_022567D8(UnkStruct_ov22_02255D44 *param0)
{
    ov22_02257CD4(&param0->unk_458);
    ov22_02257A98(&param0->unk_458);
    ov22_02257948(&param0->unk_458);
}

static void ov22_022567FC(UnkStruct_ov22_02255D44 *param0)
{
    UnkStruct_ov22_02258470 v0;

    v0.unk_00 = param0->unk_00.unk_00;
    v0.unk_04 = param0->unk_00.unk_04;
    v0.unk_08 = param0->unk_00.unk_10;
    v0.unk_0C = param0->unk_00.unk_30;
    v0.unk_10 = param0->unk_00.unk_40;
    v0.unk_28 = &param0->unk_1E8;
    v0.unk_14 = param0->unk_3C8;
    v0.unk_18 = &param0->unk_3C0;
    v0.unk_1C = 14;
    v0.unk_20 = (18 / 9) + ((18 % 9) ? 1 : 0);
    v0.unk_24 = 1;

    ov22_02257F50(&param0->unk_3CC, &v0);
    ov22_022582C0(&param0->unk_3CC, 0, 0);

    {
        int v1, v2;
        int v3;

        for (v1 = 0; v1 < 100; v1++) {
            v3 = ov22_0225899C(&param0->unk_1E8, v1);

            for (v2 = 0; v2 < v3; v2++) {
                ov22_022580A4(&param0->unk_3CC, 0, v1);
            }
        }

        for (v1 = 0; v1 < 18; v1++) {
            v3 = ov22_022589B0(&param0->unk_1E8, v1);

            if (v3 < 18) {
                ov22_022580A4(&param0->unk_3CC, 1, v3);
            }
        }

        ov22_022581EC(&param0->unk_3CC);
    }
}

static void ov22_022568B8(UnkStruct_ov22_02255D44 *param0)
{
    ov22_02258408(&param0->unk_3CC);
    ov22_022581C0(&param0->unk_3CC);
    ov22_02257F88(&param0->unk_3CC);
}

static void ov22_022568DC(UnkStruct_ov22_02255D44 *param0)
{
    G2_SetBG0Priority(1);
    G2_SetBG1Priority(0);
    G2_SetBG2Priority(2);
    G2_SetBG3Priority(3);

    sub_02019184(param0->unk_00.unk_40, 3, 3, -16);

    ov22_02258354(&param0->unk_3CC, 0);
    ov22_022583A0(&param0->unk_3CC, 0, 2, 0, NULL);
}

static void ov22_02256940(void *param0)
{
    UnkStruct_ov22_02255D44 *v0 = param0;
    ov22_022553F8(&v0->unk_00);
}

static void ov22_02256948(UnkStruct_ov22_02255D44 *param0, int param1)
{
    UnkStruct_ov22_022599A0 v0;

    v0.unk_00 = param0->unk_00.unk_40;
    v0.unk_04 = 25;
    v0.unk_08 = (param1) * 2 + 121;
    v0.unk_0C = 133;
    v0.unk_10 = (param1) * 2 + 121 + 1;
    v0.unk_14 = 0;
    v0.unk_18 = 0;
    v0.unk_1C = 1;
    v0.unk_20 = 1;
    v0.unk_24 = 2;
    v0.unk_28 = 0;
    v0.unk_2C = 14;

    ov22_022597BC(&param0->unk_518, &v0);
}

static void ov22_0225698C(UnkStruct_ov22_02255D44 *param0)
{
    ov22_02259804(&param0->unk_518);
}

static void ov22_0225699C(UnkStruct_ov22_02255D44 *param0)
{
    ov22_02259DBC(&param0->unk_544, &param0->unk_00);
    ov22_02259FF4(&param0->unk_544, 0, ov22_02256B04, param0, 0);
    ov22_02259FF4(&param0->unk_544, 1, ov22_02256B24, param0, 0);
    ov22_02259FF4(&param0->unk_544, 2, ov22_02256B44, param0, 0);
    ov22_02259FF4(&param0->unk_544, 3, ov22_02256B78, param0, 0);
    ov22_02259FF4(&param0->unk_544, 4, ov22_02256AE4, param0, 0);
}

static void ov22_02256A28(UnkStruct_ov22_02255D44 *param0)
{
    ov22_02259DBC(&param0->unk_544, &param0->unk_00);
    ov22_02259FF4(&param0->unk_544, 0, ov22_02256B04, param0, 0);
    ov22_02259FF4(&param0->unk_544, 1, ov22_02256B24, param0, 0);
    ov22_02259FF4(&param0->unk_544, 2, ov22_02256B44, param0, 0);
    ov22_02259FF4(&param0->unk_544, 3, ov22_02256B78, param0, 0);
    ov22_02259FF4(&param0->unk_544, 4, ov22_02256AE4, param0, 0);
}

static void ov22_02256AB4(UnkStruct_ov22_02255D44 *param0)
{
    ov22_02259F24(&param0->unk_544, &param0->unk_00);
}

static void ov22_02256AC4(UnkStruct_ov22_02255D44 *param0)
{
    ov22_02259F88(&param0->unk_544);
}

static void ov22_02256AD4(UnkStruct_ov22_02255D44 *param0)
{
    ov22_02259FA0(&param0->unk_544);
}

static void ov22_02256AE4(UnkStruct_ov22_02259C58 *param0, void *param1)
{
    UnkStruct_ov22_02255D44 *v0 = param1;

    if (ov22_02258460(&v0->unk_3CC) == 0) {
        return;
    }

    v0->unk_70C = 3;
}

static void ov22_02256B04(UnkStruct_ov22_02259C58 *param0, void *param1)
{
    UnkStruct_ov22_02255D44 *v0 = param1;
    int v1;

    v1 = ov22_02258414(&v0->unk_3CC);
    ov22_02258258(&v0->unk_3CC, v1, 0);
}

static void ov22_02256B24(UnkStruct_ov22_02259C58 *param0, void *param1)
{
    UnkStruct_ov22_02255D44 *v0 = param1;
    int v1;

    v1 = ov22_02258414(&v0->unk_3CC);
    ov22_02258258(&v0->unk_3CC, v1, 1);
}

static void ov22_02256B44(UnkStruct_ov22_02259C58 *param0, void *param1)
{
    UnkStruct_ov22_02255D44 *v0 = param1;
    int v1;
    int v2;

    if (v0->unk_70C != 0) {
        v1 = ov22_02258424(&v0->unk_3CC, 0);

        ov22_022582C0(&v0->unk_3CC, 0, v1);
        v0->unk_70C = 0;
    }
}

static void ov22_02256B78(UnkStruct_ov22_02259C58 *param0, void *param1)
{
    UnkStruct_ov22_02255D44 *v0 = param1;
    int v1;
    int v2;

    if (v0->unk_70C != 1) {
        v1 = ov22_02258424(&v0->unk_3CC, 1);
        ov22_022582C0(&v0->unk_3CC, 1, v1);

        v0->unk_70C = 1;
    }
}

static void ov22_02256BAC(UnkStruct_ov22_02255D44 *param0, const Options *param1)
{
    UnkStruct_ov22_02256BAC v0;

    memset(&v0, 0, sizeof(UnkStruct_ov22_02256BAC));

    v0.unk_00 = param0->unk_00.unk_40;
    v0.unk_04 = param0->unk_00.unk_44;
    v0.unk_08 = param0->unk_00.unk_48;
    v0.unk_10 = 10;
    v0.unk_0C = param1;
    v0.unk_24 = param0->unk_00.unk_5C;

    ov22_0225A428(&param0->unk_5C4, &v0, (1 | 2 | 4 | 8));
}

static void ov22_02256BF4(UnkStruct_ov22_02255D44 *param0, int param1, int param2, UnkStruct_02095C60 *param3, const Options *param4)
{
    UnkStruct_ov22_02256BAC v0;
    BOOL v1;

    v0.unk_00 = param0->unk_00.unk_40;
    v0.unk_04 = param0->unk_00.unk_44;
    v0.unk_08 = param0->unk_00.unk_48;
    v0.unk_10 = param1;
    v0.unk_14 = 385;
    v0.unk_18 = 7 + param2;
    v0.unk_1C = 60;
    v0.unk_20 = param3;
    v0.unk_0C = param4;
    v0.unk_24 = param0->unk_00.unk_5C;

    ov22_0225A428(&param0->unk_5C4, &v0, (1 | 2 | 4 | 8 | 16 | 32));
}

static void ov22_02256C38(UnkStruct_ov22_02255D44 *param0)
{
    ov22_0225A560(&param0->unk_5C4);
}

static void ov22_02256C48(UnkStruct_ov22_02255D44 *param0, BOOL *param1)
{
    SysTask *v0;
    UnkStruct_ov22_02256C48 *v1;

    v0 = SysTask_StartAndAllocateParam(ov22_02256C70, sizeof(UnkStruct_ov22_02256C48), 10, 13);
    v1 = SysTask_GetParam(v0);
    v1->unk_00 = param0;
    v1->unk_04 = param1;
    v1->unk_08 = 0;
    v1->unk_0C = 0;
}

static void ov22_02256C70(SysTask *param0, void *param1)
{
    UnkStruct_ov22_02256C48 *v0 = param1;
    BOOL v1;

    switch (v0->unk_0C) {
    case 0:
        v1 = ov22_02258218(&v0->unk_00->unk_3CC, 3, 0);
        GF_ASSERT(v1);
        v0->unk_0C++;
        break;
    case 1:
        v1 = ov22_02258460(&v0->unk_00->unk_3CC);

        if (v1) {
            v0->unk_0C++;
        }
        break;
    case 2:
        sub_0200AAE0(8, -16, 0, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3, 1);
        v0->unk_0C++;
        break;
    case 3:
        v1 = sub_0200AC1C(1);

        if (v1) {
            v0->unk_0C++;
        }
        break;
    case 4:
        ov22_02259FC4(&v0->unk_00->unk_544, 0, 8);
        v0->unk_08++;

        if (v0->unk_08 >= 8) {
            v0->unk_08 = 0;
            v0->unk_0C++;
        }
        break;
    case 5:
        if (ov22_02257098(v0, -8, 5, 8)) {
            v0->unk_08 = 0;
            v0->unk_0C++;
        }
        break;
    case 6:
        ov22_02256948(v0->unk_00, 1);
        sub_0201C63C(v0->unk_00->unk_00.unk_40, 1, 3, 0);
        ov22_022571D4(v0->unk_00);
        v0->unk_0C++;
        break;
    case 7:
        sub_0200AAE0(8, 0, -16, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3, 1);
        v0->unk_0C++;
        break;
    case 8:
        v1 = sub_0200AC1C(1);

        if (v1) {
            v0->unk_0C++;
        }
        break;
    case 9:
        *v0->unk_04 = 1;
        SysTask_FinishAndFreeParam(param0);
        break;
    default:
        break;
    }
}

static void ov22_02256DB8(UnkStruct_ov22_02255D44 *param0, BOOL *param1)
{
    SysTask *v0;
    UnkStruct_ov22_02256C48 *v1;

    v0 = SysTask_StartAndAllocateParam(ov22_02256DE0, sizeof(UnkStruct_ov22_02256C48), 10, 13);
    v1 = SysTask_GetParam(v0);

    v1->unk_00 = param0;
    v1->unk_04 = param1;
    v1->unk_08 = 0;
    v1->unk_0C = 0;
}

static void ov22_02256DE0(SysTask *param0, void *param1)
{
    UnkStruct_ov22_02256C48 *v0 = param1;
    BOOL v1;

    switch (v0->unk_0C) {
    case 0:
        sub_0200AAE0(8, -16, 0, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3, 1);
        v0->unk_0C++;
        break;
    case 1:
        v1 = sub_0200AC1C(1);

        if (v1) {
            v0->unk_0C++;
        }
        break;
    case 2:
        ov22_02257258(v0->unk_00);
        ov22_022568DC(v0->unk_00);
        ov22_02256AD4(v0->unk_00);
        ov22_02256948(v0->unk_00, 0);
        sub_0201C63C(v0->unk_00->unk_00.unk_40, 1, 3, -(5 * 8));
        v0->unk_0C++;
        break;
    case 3:
        if (ov22_02257098(v0, 8, -5, 8)) {
            v0->unk_08 = 0;
            v0->unk_0C++;
        }
        break;
    case 4:
        ov22_02259FC4(&v0->unk_00->unk_544, 0, -8);
        v0->unk_08++;

        if (v0->unk_08 >= 8) {
            v0->unk_08 = 0;
            v0->unk_0C++;
        }
        break;
    case 5:
        sub_0200AAE0(8, 0, -16, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3, 1);
        v0->unk_0C++;
        break;
    case 6:
        v1 = sub_0200AC1C(1);

        if (v1) {
            v0->unk_0C++;
        }
        break;
    case 7:
        v1 = ov22_02258218(&v0->unk_00->unk_3CC, 0, 0);
        GF_ASSERT(v1);
        v0->unk_0C++;
        break;
    case 8:
        v1 = ov22_02258460(&v0->unk_00->unk_3CC);

        if (v1) {
            v0->unk_0C++;
        }
        break;
    case 9:
        *v0->unk_04 = 1;
        SysTask_FinishAndFreeParam(param0);
        break;
    default:
        break;
    }
}

static void ov22_02256F38(UnkStruct_02029C68 *param0, UnkStruct_ov22_02257964 *param1, const TrainerInfo *param2)
{
    UnkStruct_ov22_02259560 *v0;
    int v1;
    Strbuf *v2;
    int v3;

    sub_02029F84(param0);
    sub_02029FAC(param0, param1->unk_2C.unk_4C.unk_0C, &param1->unk_2C.unk_4C);

    if (param2) {
        v2 = TrainerInfo_NameNewStrbuf(param2, 13);
        v3 = TrainerInfo_Gender(param2);
        sub_0202A0EC(param0, v2, v3);
        Strbuf_Free(v2);
    }

    v1 = 0;
    v0 = param1->unk_00.unk_14.unk_08;

    while (v0 != &param1->unk_00.unk_14) {
        if (v0->unk_04 == 0) {
            sub_02029FD0(param0, v0->unk_00, v1);
            v1++;
        }

        v0 = v0->unk_08;
    }

    v0 = param1->unk_00.unk_04.unk_08;

    while (v0 != &param1->unk_00.unk_04) {
        if (v0->unk_04 == 0) {
            sub_02029FD0(param0, v0->unk_00, v1);
            v1++;
        }

        v0 = v0->unk_08;
    }

    sub_0202A084(param0, param1->unk_2C.unk_48);
    sub_02029F5C(param0);
}

static void ov22_02256FD8(UnkStruct_02029C88 *param0, UnkStruct_ov22_02257964 *param1, int param2, const TrainerInfo *param3)
{
    int v0;
    int v1;
    UnkStruct_ov22_02256FD8 *v2;
    UnkStruct_ov22_02259560 *v3;
    Strbuf *v4;
    int v5;

    v2 = Heap_AllocFromHeap(13, sizeof(UnkStruct_ov22_02256FD8));
    ov22_0225764C(v2);

    sub_0202A284(param0, param1->unk_2C.unk_4C.unk_0C, &param1->unk_2C.unk_4C);

    if (param3) {
        v4 = TrainerInfo_NameNewStrbuf(param3, 13);
        v5 = TrainerInfo_Gender(param3);
        sub_0202A4B4(param0, v4, v5);
        Strbuf_Free(v4);
    }

    ov22_02257778(v2, &param1->unk_00.unk_14, 1);
    ov22_02257778(v2, &param1->unk_00.unk_04, 0);
    ov22_0225768C(v2);

    v0 = 0;

    for (v1 = 0; v1 < 21; v1++) {
        if (ov22_022576FC(v2, v1) == 1) {
            v3 = ov22_022576E8(v2, v1);
            sub_0202A2A8(param0, v3->unk_00, v0);
            v0++;
        }
    }

    sub_0202A35C(param0, param1->unk_2C.unk_48);
    sub_0202A378(param0, param2);
    sub_0202A240(param0);
    Heap_FreeToHeap(v2);
}

static BOOL ov22_02257098(UnkStruct_ov22_02256C48 *param0, int param1, int param2, int param3)
{
    if (param0->unk_08 < 8) {
        ov22_02257AB0(&param0->unk_00->unk_458, param1, param2);
    }

    if (param0->unk_08 >= 1) {
        sub_0201C63C(param0->unk_00->unk_00.unk_40, 2, 2, param1);
        sub_0201C63C(param0->unk_00->unk_00.unk_40, 1, 2, param1);
        sub_0201C63C(param0->unk_00->unk_00.unk_40, 2, 5, param2);
        sub_0201C63C(param0->unk_00->unk_00.unk_40, 1, 5, param2);
    }

    param0->unk_08++;

    if (param0->unk_08 > param3) {
        return 1;
    }

    return 0;
}

static void ov22_02257104(UnkStruct_ov22_02255D44 *param0)
{
    sub_02019EBC(param0->unk_00.unk_40, 3);
    sub_02019184(param0->unk_00.unk_40, 3, 0, 0);
    sub_02019184(param0->unk_00.unk_40, 3, 3, 0);

    ov22_022574F4(param0, 0);

    G2_SetBG0Priority(2);
    G2_SetBG1Priority(1);
    G2_SetBG2Priority(3);
    G2_SetBG3Priority(0);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    sub_0200F338(0);
}

static void ov22_0225718C(UnkStruct_ov22_02255D44 *param0)
{
    ov22_02257548(param0);

    sub_02019EBC(param0->unk_00.unk_40, 3);

    ov22_022568DC(param0);

    sub_0200F344(0, 0x0);
    CellActorCollection_SetActive(param0->unk_00.unk_44, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov22_022571D4(UnkStruct_ov22_02255D44 *param0)
{
    UnkStruct_02015958 v0;

    sub_02019EBC(param0->unk_00.unk_40, 3);
    sub_02019184(param0->unk_00.unk_40, 3, 0, 0);
    sub_02019184(param0->unk_00.unk_40, 3, 3, 0);

    v0.unk_00 = param0->unk_00.unk_40;
    v0.unk_04 = 3;
    v0.unk_08 = 0;
    v0.unk_0C = 5;
    v0.unk_10 = 25;
    v0.unk_11 = 4;

    sub_02015958(param0->unk_714, &v0);
    ov22_022574CC(param0, 1);

    G2_SetBG0Priority(2);
    G2_SetBG1Priority(1);
    G2_SetBG2Priority(3);
    G2_SetBG3Priority(0);
}

static void ov22_02257258(UnkStruct_ov22_02255D44 *param0)
{
    sub_02015A54(param0->unk_714);
    ov22_022574EC(param0);
    sub_02019EBC(param0->unk_00.unk_40, 3);
}

static u32 ov22_02257278(UnkStruct_ov22_02255D44 *param0)
{
    u32 v0;

    v0 = sub_020159FC(param0->unk_714);

    switch (v0) {
    case 0:
        v0 = 4;
        break;
    case 1:
        v0 = 8;
        break;
    case 2:
        v0 = 9;
        break;
    }

    return v0;
}

static void ov22_022572A0(UnkStruct_ov22_02255D44 *param0, u32 param1, u8 param2, u8 param3, u8 param4, u8 param5)
{
    MessageLoader *v0;
    Strbuf *v1;
    int v2 = Options_Frame(param0->unk_738);

    Font_LoadScreenIndicatorsPalette(0, 7 * 32, 14);
    BGL_AddWindow(param0->unk_00.unk_40, param0->unk_718, 3, param2, param3, param4, param5, 7, (0 + (29 * 4) + (18 + 12)));
    BGL_FillWindow(param0->unk_718, 15);
    sub_0200DD0C(param0->unk_00.unk_40, 3, (0 + (29 * 4)), 8, v2, 14);
    sub_0200E060(param0->unk_718, 0, (0 + (29 * 4)), 8);

    v0 = MessageLoader_Init(0, 26, 385, 13);
    v1 = MessageLoader_GetNewStrbuf(v0, param1);

    Text_AddPrinterWithParamsAndColor(param0->unk_718, FONT_MESSAGE, v1, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
    Strbuf_Free(v1);
    MessageLoader_Free(v0);
    sub_0201A954(param0->unk_718);
}

static void ov22_02257368(UnkStruct_ov22_02255D44 *param0, u32 param1)
{
    MessageLoader *v0;
    Strbuf *v1;
    Strbuf *v2;

    BGL_FillWindow(param0->unk_718, 15);

    v0 = MessageLoader_Init(0, 26, 385, 13);
    v2 = MessageLoader_GetNewStrbuf(v0, param1);
    v1 = Strbuf_Init(256, 13);

    StringTemplate_Format(param0->unk_744, v1, v2);
    Text_AddPrinterWithParamsAndColor(param0->unk_718, FONT_MESSAGE, v1, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v2);
    MessageLoader_Free(v0);
    sub_0201A954(param0->unk_718);
}

static u32 ov22_022573EC(UnkStruct_ov22_02255D44 *param0, u32 param1)
{
    u32 v0;
    MessageLoader *v1;
    u32 v2;
    Strbuf *v3;

    GF_ASSERT(param0->unk_740 == NULL);

    BGL_FillWindow(param0->unk_718, 15);

    v1 = MessageLoader_Init(0, 26, 385, 13);
    v3 = MessageLoader_GetNewStrbuf(v1, param1);
    param0->unk_740 = Strbuf_Init(256, 13);

    StringTemplate_Format(param0->unk_744, param0->unk_740, v3);

    if (param0->unk_734->unk_16 == 0) {
        v2 = Options_TextFrameDelay(param0->unk_738);
    } else {
        v2 = TEXT_SPEED_FAST;
    }

    v0 = Text_AddPrinterWithParamsAndColor(param0->unk_718, FONT_MESSAGE, param0->unk_740, 0, 0, v2, TEXT_COLOR(1, 2, 15), NULL);

    Strbuf_Free(v3);
    MessageLoader_Free(v1);
    sub_0201A954(param0->unk_718);

    return v0;
}

static void ov22_02257498(UnkStruct_ov22_02255D44 *param0)
{
    Strbuf_Free(param0->unk_740);
    param0->unk_740 = NULL;
}

static void ov22_022574B0(UnkStruct_ov22_02255D44 *param0)
{
    sub_0201ACF4(param0->unk_718);
    BGL_DeleteWindow(param0->unk_718);
}

static void ov22_022574CC(UnkStruct_ov22_02255D44 *param0, u32 param1)
{
    ov22_022572A0(param0, param1, 2, 1, 27, 2);
}

static void ov22_022574E4(UnkStruct_ov22_02255D44 *param0, u32 param1)
{
    ov22_02257368(param0, param1);
}

static void ov22_022574EC(UnkStruct_ov22_02255D44 *param0)
{
    ov22_022574B0(param0);
}

static void ov22_022574F4(UnkStruct_ov22_02255D44 *param0, u32 param1)
{
    ov22_022572A0(param0, param1, 2, 19, 27, 4);
    param0->unk_744 = StringTemplate_Default(13);
}

static u32 ov22_0225751C(UnkStruct_ov22_02255D44 *param0, u32 param1)
{
    return ov22_022573EC(param0, param1);
}

static void ov22_02257524(UnkStruct_ov22_02255D44 *param0, int param1, int param2)
{
    StringTemplate_SetNumber(param0->unk_744, param1, param2, 2, 0, 1);
}

static void ov22_02257540(UnkStruct_ov22_02255D44 *param0)
{
    ov22_02257498(param0);
}

static void ov22_02257548(UnkStruct_ov22_02255D44 *param0)
{
    ov22_022574B0(param0);

    StringTemplate_Free(param0->unk_744);
    param0->unk_744 = NULL;
}

static void ov22_02257564(UnkStruct_ov22_02255D44 *param0)
{
    int v0;

    v0 = ov22_02257D00(&param0->unk_458);
    ov22_0225A6B8(&param0->unk_5C4, v0);
}

static int ov22_02257580(int param0)
{
    int v0;

    switch (param0) {
    case 0:
        v0 = 5;
        break;
    case 1:
        v0 = 10;
        break;
    case 2:
        v0 = 15;
        break;
    case 3:
        v0 = 20;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return v0;
}

static void ov22_022575B4(UnkStruct_ov22_02255D44 *param0)
{
    UnkStruct_02015958 v0;

    v0.unk_00 = param0->unk_00.unk_40;
    v0.unk_04 = 3;
    v0.unk_08 = 0;
    v0.unk_0C = 5;
    v0.unk_10 = 25;
    v0.unk_11 = 4;

    sub_02015A54(param0->unk_714);
    sub_02015958(param0->unk_714, &v0);

    ov22_022574E4(param0, 2);

    G2_SetBG0Priority(2);
    G2_SetBG1Priority(1);
    G2_SetBG2Priority(3);
    G2_SetBG3Priority(0);
}

static u32 ov22_02257624(UnkStruct_ov22_02255D44 *param0)
{
    u32 v0;

    v0 = sub_020159FC(param0->unk_714);

    switch (v0) {
    case 0:
        v0 = 5;
        break;
    case 1:
        v0 = 6;
        break;
    case 2:
        v0 = 7;
        break;
    }

    return v0;
}

static void ov22_0225764C(UnkStruct_ov22_02256FD8 *param0)
{
    memset(param0, 0, sizeof(UnkStruct_ov22_02256FD8));
}

static void ov22_02257658(UnkStruct_ov22_02256FD8 *param0, UnkStruct_ov22_02259560 *param1, u32 param2)
{
    GF_ASSERT(param1);
    param0->unk_00[param0->unk_A8].unk_00 = param1;
    param0->unk_00[param0->unk_A8].unk_04 = param2;
    param0->unk_A8++;
}

static void ov22_0225768C(UnkStruct_ov22_02256FD8 *param0)
{
    int v0, v1;
    BOOL v2;

    v0 = 0;

    while (v0 < param0->unk_A8) {
        if (param0->unk_00[v0].unk_04 == 1) {
            for (v1 = 0; v1 < param0->unk_A8; v1++) {
                if (param0->unk_00[v1].unk_04 == 0) {
                    v2 = ov22_0225771C(
                        &param0->unk_00[v0], &param0->unk_00[v1]);

                    if (v2 == 1) {
                        param0->unk_00[v1].unk_04 = 1;
                    }
                }
            }

            param0->unk_00[v0].unk_04 = 2;

            v0 = 0;
        } else {
            v0++;
        }
    }
}

static UnkStruct_ov22_02259560 *ov22_022576E8(UnkStruct_ov22_02256FD8 *param0, u32 param1)
{
    GF_ASSERT(param1 < 21);
    return param0->unk_00[param1].unk_00;
}

static BOOL ov22_022576FC(UnkStruct_ov22_02256FD8 *param0, u32 param1)
{
    GF_ASSERT(param1 < 21);

    if (param0->unk_00[param1].unk_04) {
        return 1;
    }

    return 0;
}

static BOOL ov22_0225771C(UnkStruct_ov22_02256FD8_sub1 *param0, UnkStruct_ov22_02256FD8_sub1 *param1)
{
    int v0[6];
    BOOL v1;
    int v2;
    int v3, v4;

    ov22_02259780(param0->unk_00, &v0[5], &v0[4]);
    ov22_02259724(param0->unk_00, &v0[0], &v0[1], &v0[2], &v0[3]);

    for (v2 = 0; v2 < 16; v2++) {
        ov22_022577EC(v0[0], v0[1], v0[2], v0[3], v2, &v3, &v4);

        v1 = ov22_02259578(param1->unk_00, v3, v4);

        if (v1 == 1) {
            return 1;
        }
    }

    return 0;
}

static void ov22_02257778(UnkStruct_ov22_02256FD8 *param0, UnkStruct_ov22_02259560 *param1, u32 param2)
{
    UnkStruct_ov22_02259560 *v0;

    v0 = param1->unk_08;

    while (v0 != param1) {
        if (v0->unk_04 == 0) {
            ov22_02257658(param0, v0, param2);
        }

        v0 = v0->unk_08;
    }
}

static void ov22_022577A0(UnkStruct_ov22_02255D44 *param0)
{
    int v0;
    int v1 = 0;

    if (param0->unk_734->unk_16 == 0) {
        ov22_0225A6CC(&param0->unk_5C4, 0);
        return;
    }

    if (param0->unk_734->unk_14 == param0->unk_734->unk_15) {
        for (v0 = 0; v0 < 4; v0++) {
            if (param0->unk_734->unk_10[v0] == 1) {
                v1++;
            }
        }

        if (param0->unk_734->unk_17 <= v1) {
            ov22_0225A6CC(&param0->unk_5C4, 0);
        }
    }
}

void ov22_022577EC(u32 param0, u32 param1, u32 param2, u32 param3, u32 param4, int *param5, int *param6)
{
    u32 v0, v1;
    u32 v2, v3;

    v0 = param2 + ((param3 - param2) / 3);
    v1 = param2 + ((param3 - param2) / 3) * 2;
    v2 = param0 + ((param1 - param0) / 3);
    v3 = param0 + ((param1 - param0) / 3) * 2;

    switch (param4) {
    case 0:
        *param5 = param2;
        *param6 = param0;
        break;
    case 1:
        *param5 = param2;
        *param6 = v2;
        break;
    case 2:
        *param5 = param2;
        *param6 = v3;
        break;
    case 3:
        *param5 = param2;
        *param6 = param1;
        break;
    case 4:
        *param5 = v0;
        *param6 = param0;
        break;
    case 5:
        *param5 = v0;
        *param6 = v2;
        break;
    case 6:
        *param5 = v0;
        *param6 = v3;
        break;
    case 7:
        *param5 = v0;
        *param6 = param1;
        break;
    case 8:
        *param5 = v1;
        *param6 = param0;
        break;
    case 9:
        *param5 = v1;
        *param6 = v2;
        break;
    case 10:
        *param5 = v1;
        *param6 = v3;
        break;
    case 11:
        *param5 = v1;
        *param6 = param1;
        break;
    case 12:
        *param5 = param3;
        *param6 = param0;
        break;
    case 13:
        *param5 = param3;
        *param6 = v2;
        break;
    case 14:
        *param5 = param3;
        *param6 = v3;
        break;
    case 15:
        *param5 = param3;
        *param6 = param1;
        break;
    }
}
