#include "overlay094/ov94_022444C8.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "overlay094/ov94_0223BCB0.h"
#include "overlay094/struct_ov94_0223BA88.h"
#include "overlay094/struct_ov94_0223FD4C.h"
#include "overlay095/ov95_02246C20.h"

#include "heap.h"
#include "overlay_manager.h"
#include "party.h"
#include "pc_boxes.h"
#include "pokemon.h"
#include "poketch.h"
#include "trainer_info.h"
#include "unk_0202DA40.h"
#include "unk_0207AE68.h"

FS_EXTERN_OVERLAY(overlay95);

static TrainerInfo *ov94_02244870(UnkStruct_ov94_0223BA88 *param0);
static Pokemon *ov94_022448AC(UnkStruct_ov94_0223FD4C *param0, int param1);
static void ov94_022448E8(UnkStruct_ov94_0223FD4C *param0);

static const ApplicationManagerTemplate Unk_ov94_0224636C = {
    ov95_02246C20,
    ov95_02246E7C,
    ov95_02246E1C,
    FS_OVERLAY_ID(overlay95)
};

int ov94_022444C8(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    param0->unk_1104 = Pokemon_New(HEAP_ID_62);

    switch (param0->unk_24) {
    case 7:
        param0->unk_E8.unk_00 = (BoxPokemon *)Pokemon_GetBoxPokemon((Pokemon *)param0->unk_12C.unk_00.unk_00);
        param0->unk_E8.unk_04 = param0->unk_E8.unk_00;
        param0->unk_120 = ov94_02244870(&param0->unk_12C);
        param0->unk_E8.unk_08 = param0->unk_120;
        param0->unk_E8.unk_0C = 3;
        param0->unk_E8.unk_10 = 2;
        break;
    case 8:
        param0->unk_E8.unk_04 = (BoxPokemon *)Pokemon_GetBoxPokemon((Pokemon *)param0->unk_12C.unk_00.unk_00);
        param0->unk_E8.unk_00 = param0->unk_E8.unk_04;
        param0->unk_120 = ov94_02244870(&param0->unk_12C);
        param0->unk_E8.unk_08 = param0->unk_120;
        param0->unk_E8.unk_0C = 3;
        param0->unk_E8.unk_10 = 4;
        break;
    case 10:
        param0->unk_E8.unk_04 = Pokemon_GetBoxPokemon((Pokemon *)param0->unk_12C.unk_00.unk_00);
        sub_0202DA70(param0->unk_00->unk_00, param0->unk_1104);
        param0->unk_E8.unk_00 = Pokemon_GetBoxPokemon(param0->unk_1104);
        param0->unk_120 = ov94_02244870(&param0->unk_12C);
        param0->unk_E8.unk_08 = param0->unk_120;
        param0->unk_E8.unk_0C = 3;
        param0->unk_E8.unk_10 = 1;
        break;
    case 9:
        sub_0202DA70(param0->unk_00->unk_00, param0->unk_1104);
        param0->unk_E8.unk_00 = Pokemon_GetBoxPokemon(param0->unk_1104);
        param0->unk_E8.unk_04 = (BoxPokemon *)Pokemon_GetBoxPokemon((Pokemon *)param0->unk_250[param0->unk_11C].unk_00.unk_00);
        param0->unk_120 = ov94_02244870(&param0->unk_250[param0->unk_11C]);
        param0->unk_E8.unk_08 = param0->unk_120;
        param0->unk_E8.unk_0C = 3;
        param0->unk_E8.unk_10 = 1;
        break;
    }

    param0->unk_E8.options = param0->unk_00->options;
    param0->appMan = ApplicationManager_New(&Unk_ov94_0224636C, &param0->unk_E8, HEAP_ID_62);
    param0->unk_104 = 1;

    return 2;
}

int ov94_02244678(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    int v0 = 3;

    switch (param0->unk_2C) {
    case 0:
        if (ApplicationManager_Exec(param0->appMan)) {
            ApplicationManager_Free(param0->appMan);

            if (param0->unk_24 == 9) {
                Pokemon *v1 = ov94_022448AC(param0, param0->unk_24);
                int v2 = Pokemon_GetValue(v1, MON_DATA_HELD_ITEM, NULL);
                int v3;
                int v4;

                v3 = Pokemon_GetEvolutionTargetSpecies(NULL, v1, EVO_CLASS_BY_TRADE, v2, &v4);

                if (v3 != 0) {
                    param0->unk_100 = sub_0207AE68(NULL, v1, v3, param0->unk_00->options, param0->unk_00->unk_3C, param0->unk_00->unk_10, param0->unk_00->unk_30, param0->unk_00->records, SaveData_GetPoketch(param0->unk_00->saveData), v4, 0x4, HEAP_ID_62);
                    param0->unk_2C = 1;
                } else {
                    ov94_0223C4C0(param0, 1, 0);
                    v0 = 4;
                }
            } else if ((param0->unk_24 == 8) || (param0->unk_24 == 10)) {
                Pokemon *v1 = ov94_022448AC(param0, param0->unk_24);
                Pokemon *v5 = Pokemon_New(HEAP_ID_62);

                sub_0202DA70(param0->unk_00->unk_00, v5);

                if ((Pokemon_GetValue(v1, MON_DATA_SPECIES, NULL) != Pokemon_GetValue(v5, MON_DATA_SPECIES, NULL)) || (Pokemon_GetValue(v1, MON_DATA_PERSONALITY, NULL) != Pokemon_GetValue(v5, MON_DATA_PERSONALITY, NULL))) {
                    int v6 = Pokemon_GetValue(v1, MON_DATA_HELD_ITEM, NULL);
                    int v7;
                    int v8;

                    v7 = Pokemon_GetEvolutionTargetSpecies(NULL, v1, EVO_CLASS_BY_TRADE, v6, &v8);

                    if (v7 != 0) {
                        param0->unk_100 = sub_0207AE68(NULL, v1, v7, param0->unk_00->options, param0->unk_00->unk_3C, param0->unk_00->unk_10, param0->unk_00->unk_30, param0->unk_00->records, SaveData_GetPoketch(param0->unk_00->saveData), v8, 0x4, HEAP_ID_62);
                        param0->unk_2C = 1;
                    } else {
                        ov94_0223C4C0(param0, 1, 0);
                        v0 = 4;
                    }
                } else {
                    ov94_0223C4C0(param0, 1, 0);
                    v0 = 4;
                }

                Heap_Free(v5);
            } else {
                ov94_0223C4C0(param0, 1, 0);
                v0 = 4;
            }
        }
        break;
    case 1:
        if (sub_0207B0D0(param0->unk_100)) {
            sub_0207B0E0(param0->unk_100);
            ov94_022448E8(param0);
            GX_SetVisibleWnd(GX_WNDMASK_NONE);
            ov94_0223C4C0(param0, 7, 12);
            v0 = 4;
        }
        break;
    }

    return v0;
}

int ov94_0224484C(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    Heap_Free(param0->unk_1104);
    Heap_Free(param0->unk_120);
    ov94_0223C4C8(param0);

    return 1;
}

static TrainerInfo *ov94_02244870(UnkStruct_ov94_0223BA88 *param0)
{
    TrainerInfo *v0 = TrainerInfo_New(HEAP_ID_62);

    TrainerInfo_Init(v0);
    TrainerInfo_SetName(v0, param0->unk_10C);
    TrainerInfo_SetGameCode(v0, param0->unk_122);
    TrainerInfo_SetRegionCode(v0, param0->unk_123);

    return v0;
}

static Pokemon *ov94_022448AC(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    if (param1 == 9) {
        return (Pokemon *)param0->unk_250[param0->unk_11C].unk_00.unk_00;
    } else if (param1 == 10) {
        return (Pokemon *)param0->unk_12C.unk_00.unk_00;
    } else if (param1 == 8) {
        return (Pokemon *)param0->unk_12C.unk_00.unk_00;
    }

    GF_ASSERT(0);
    return NULL;
}

static void ov94_022448E8(UnkStruct_ov94_0223FD4C *param0)
{
    Pokemon *v0 = ov94_022448AC(param0, param0->unk_24);

    if (param0->unk_124.unk_00 == 18) {
        Pokemon_Copy(v0, Party_GetPokemonBySlotIndex(param0->unk_00->unk_08, param0->unk_124.unk_04));
    } else {
        int v1 = 0, v2 = 0;

        PCBoxes_InitBoxMonAt(param0->unk_00->pcBoxes, param0->unk_124.unk_00, param0->unk_124.unk_04);
        PCBoxes_TryGetNextAvailableSpace(param0->unk_00->pcBoxes, &v1, &v2);
        PCBoxes_TryStoreBoxMonInBox(param0->unk_00->pcBoxes, v1, Pokemon_GetBoxPokemon(v0));
    }
}
