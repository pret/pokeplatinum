#include "unk_02098218.h"

#include <nitro.h>
#include <string.h>

#include "generated/game_records.h"
#include "generated/species.h"

#include "struct_defs/struct_0203E2FC.h"
#include "struct_defs/struct_0209843C.h"

#include "field/field_system.h"
#include "overlay005/ov5_021E622C.h"
#include "overlay119/ov119_021D0D80.h"
#include "overlay119/ov119_021D191C.h"
#include "overlay119/struct_ov119_021D0FD0.h"

#include "bg_window.h"
#include "field_system.h"
#include "field_task.h"
#include "field_transition.h"
#include "game_options.h"
#include "game_records.h"
#include "gx_layers.h"
#include "heap.h"
#include "map_header.h"
#include "narc.h"
#include "overlay_manager.h"
#include "palette.h"
#include "pokemon.h"
#include "save_player.h"
#include "trainer_info.h"
#include "unk_02005474.h"
#include "unk_0200762C.h"
#include "unk_0200F174.h"
#include "unk_02015F84.h"
#include "unk_02017728.h"
#include "unk_02024220.h"
#include "unk_0202F180.h"
#include "unk_0208694C.h"
#include "unk_02092494.h"
#include "vram_transfer.h"

#include "constdata/const_020F2DAC.h"
#include "constdata/const_020F67FC.h"

FS_EXTERN_OVERLAY(overlay119);

static int sub_02098218(OverlayManager *param0, int *param1);
static int sub_02098304(OverlayManager *param0, int *param1);
static int sub_02098388(OverlayManager *param0, int *param1);

const OverlayManagerTemplate Unk_020F67FC = {
    sub_02098218,
    sub_02098304,
    sub_02098388,
    FS_OVERLAY_ID(overlay119)
};

static int sub_02098218(OverlayManager *param0, int *param1)
{
    UnkStruct_0209843C *v0;
    UnkStruct_ov119_021D0FD0 *v1;

    SetMainCallback(NULL, NULL);
    DisableHBlank();
    Heap_Create(3, 71, 0x40000);

    v1 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov119_021D0FD0), 71);
    memset(v1, 0, sizeof(UnkStruct_ov119_021D0FD0));

    v0 = OverlayManager_Args(param0);

    v1->unk_00 = v0;
    v1->unk_04.unk_0C = Options_TextFrameDelay(v1->unk_00->unk_0C.unk_04);
    v1->unk_04.unk_10 = Options_Frame(v1->unk_00->unk_0C.unk_04);
    v1->unk_04.unk_34 = ov119_021D0DD4();
    v1->unk_04.unk_38 = sub_0200762C(71);
    v1->unk_04.unk_3C = NARC_ctor(NARC_INDEX_POKETOOL__POKE_EDIT__PL_POKE_DATA, 71);
    v1->unk_04.unk_00 = BgConfig_New(71);

    VramTransfer_New(64, 71);

    v1->unk_04.unk_54 = sub_02015F84(71, 1, 0);
    v1->unk_04.unk_04 = PaletteData_New(71);

    PaletteData_SetAutoTransparent(v1->unk_04.unk_04, 1);
    PaletteData_AllocBuffer(v1->unk_04.unk_04, 0, 0x200, 71);
    PaletteData_AllocBuffer(v1->unk_04.unk_04, 2, 0x200, 71);
    PaletteData_AllocBuffer(v1->unk_04.unk_04, 1, 0x200, 71);
    PaletteData_AllocBuffer(v1->unk_04.unk_04, 3, 0x200, 71);

    ov119_021D0D80();
    ov119_021D0DA8();
    ov119_021D0E78();

    ov119_021D0EB8(v1->unk_04.unk_00);
    ov119_021D17B8(&v1->unk_04);

    sub_0200569C();
    SetMainCallback(ov119_021D0FD0, v1);

    return 1;
}

static int sub_02098304(OverlayManager *param0, int *param1)
{
    UnkStruct_ov119_021D0FD0 *v0;

    v0 = OverlayManager_Data(param0);

    switch (*param1) {
    case 0:
        if (IsScreenTransitionDone() == 1) {
            (*param1)++;
        }

        {
            int v1;

            v1 = Pokemon_GetValue(v0->unk_00->unk_0C.unk_00, MON_DATA_SPECIES, NULL);

            PokeSprite_LoadCryDelay(v0->unk_04.unk_3C, &v0->unk_6C, v1, 1);

            if (v1 == SPECIES_MANAPHY) {
                v0->unk_5C = 1;
            } else {
                v0->unk_5C = 0;
            }
        }
        break;
    case 1: {
        BOOL v2;

        v2 = ov119_021D191C(v0);

        if (v2 == 0) {
            (*param1)++;
            break;
        }

        sub_02007768(v0->unk_04.unk_38);
        ov119_021D1004();
    } break;
    default:
        if (IsScreenTransitionDone() == 1) {
            return 1;
        }

        break;
    }

    return 0;
}

static int sub_02098388(OverlayManager *param0, int *param1)
{
    UnkStruct_ov119_021D0FD0 *v0;

    v0 = OverlayManager_Data(param0);

    sub_020242C4(v0->unk_04.unk_34);

    GXLayers_EngineAToggleLayers(1, 0);
    GXLayers_EngineAToggleLayers(2, 0);
    GXLayers_EngineAToggleLayers(3, 0);
    GXLayers_EngineBToggleLayers(4, 0);

    PaletteData_FreeBuffer(v0->unk_04.unk_04, 0);
    PaletteData_FreeBuffer(v0->unk_04.unk_04, 2);
    PaletteData_FreeBuffer(v0->unk_04.unk_04, 1);
    PaletteData_FreeBuffer(v0->unk_04.unk_04, 3);
    PaletteData_Free(v0->unk_04.unk_04);

    Bg_FreeTilemapBuffer(v0->unk_04.unk_00, 1);
    Bg_FreeTilemapBuffer(v0->unk_04.unk_00, 2);
    Bg_FreeTilemapBuffer(v0->unk_04.unk_00, 3);
    Bg_FreeTilemapBuffer(v0->unk_04.unk_00, 4);

    Heap_FreeToHeap(v0->unk_04.unk_00);
    VramTransfer_Free();
    sub_02007B6C(v0->unk_04.unk_38);
    sub_02015FB8(v0->unk_04.unk_54);
    NARC_dtor(v0->unk_04.unk_3C);

    ov119_021D1844(&v0->unk_04);

    OverlayManager_FreeData(param0);
    Heap_Destroy(71);

    SetMainCallback(NULL, NULL);
    DisableHBlank();

    return 1;
}

static BOOL sub_0209843C(FieldTask *param0)
{
    UnkStruct_0209843C *v0 = FieldTask_GetEnv(param0);

    switch (v0->unk_00) {
    case 0:
        ov5_021E771C(v0->unk_0C.unk_00, 11);
        FieldTransition_FinishMap(param0);
        v0->unk_00++;
        break;
    case 1:
        FieldTask_RunApplication(param0, &Unk_020F67FC, v0);
        v0->unk_00++;
        break;
    case 2: {
        FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);

        {
            Pokemon *v2 = v0->unk_0C.unk_00;
            TrainerInfo *v3 = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(fieldSystem));
            int v4 = 6;
            int v5 = MapHeader_GetMapLabelTextID(fieldSystem->location->mapId);
            int v6 = 11;
            int v7 = 0;

            Pokemon_SetValue(v2, MON_DATA_IS_EGG, &v7);
            sub_0209304C(v2, v3, v4, v5, v6);
            Pokemon_SetValue(v2, MON_DATA_SPECIES_NAME, NULL);
        }

        {
            sub_0202F180(FieldSystem_GetSaveData(fieldSystem), v0->unk_0C.unk_00);
        }

        if (v0->unk_04 == 1) {
            v0->unk_00 = 3;
        } else {
            v0->unk_00 = 5;
        }
    } break;
    case 3: {
        FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
        int v9;

        v9 = Pokemon_GetValue(v0->unk_0C.unk_00, MON_DATA_SPECIES, 0);

        v0->unk_08 = sub_0208712C(11, 1, v9, 10, SaveData_Options(FieldSystem_GetSaveData(fieldSystem)));
        v0->unk_08->unk_10 = Pokemon_GetValue(v0->unk_0C.unk_00, MON_DATA_GENDER, NULL);
        v0->unk_08->unk_08 = Pokemon_GetValue(v0->unk_0C.unk_00, MON_DATA_FORM, NULL);
        FieldTask_RunApplication(param0, &Unk_020F2DAC, v0->unk_08);
        v0->unk_00++;
    } break;
    case 4:
        if (v0->unk_08->unk_14 == 0) {
            Pokemon_SetValue(v0->unk_0C.unk_00, MON_DATA_NICKNAME_STRBUF_AND_FLAG, v0->unk_08->unk_18);

            {
                FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
                GameRecords *v11 = SaveData_GetGameRecordsPtr(FieldSystem_GetSaveData(fieldSystem));

                GameRecords_IncrementRecordValue(v11, RECORD_UNK_049);
            }
        }

        sub_0208716C(v0->unk_08);
        v0->unk_00++;
        break;
    case 5:
        FieldTransition_StartMap(param0);
        v0->unk_00++;
        break;
    case 6:
        Heap_FreeToHeap(v0);
        return 1;
    }

    return 0;
}

void sub_020985AC(FieldTask *param0, void *param1)
{
    UnkStruct_0209843C *v0;
    UnkStruct_0203E2FC *v1;

    v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_0209843C));
    memset(v0, 0, sizeof(UnkStruct_0209843C));

    v1 = (UnkStruct_0203E2FC *)param1;
    v0->unk_0C = *v1;

    FieldTask_InitCall(param0, sub_0209843C, v0);
}
