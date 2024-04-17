#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_02024440_decl.h"
#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_020507E4_decl.h"
#include "struct_decls/struct_020797DC_decl.h"

#include "unk_0203E724.h"

#include "heap.h"
#include "savedata/save_table.h"
#include "unk_02025E08.h"
#include "trainer_info.h"
#include "unk_0202631C.h"
#include "unk_0202EEC0.h"
#include "unk_0202F180.h"
#include "unk_0204C500.h"
#include "unk_020507CC.h"
#include "unk_020562F8.h"
#include "unk_0206A8DC.h"
#include "pokemon.h"
#include "unk_020797C8.h"
#include "unk_02092494.h"

BOOL sub_0204C500 (UnkStruct_0203E724 * param0)
{
    UnkStruct_020507E4 * v0 = SaveData_Events(param0->unk_34->saveData);
    u16 v1 = inline_02049538(param0);

    if (v1 == 0) {
        sub_0206AE6C(v0);
        sub_020562F8(param0->unk_34);
    } else if (v1 == 1) {
        sub_0206AE7C(v0);
        sub_02056328(param0->unk_34);
    } else {
        GF_ASSERT(0);
    }

    return 0;
}

BOOL sub_0204C554 (UnkStruct_0203E724 * param0)
{
    PalParkTransfer * v0 = SaveData_PalParkTransfer(param0->unk_34->saveData);
    Pokemon * v1 = Pokemon_New(32);
    u16 * v2 = inline_0204FCAC(param0);

    if (sub_0202F028(v0) == 6) {
        *v2 = 1;
    } else {
        *v2 = 0;
    }

    Heap_FreeToHeap(v1);
    return 0;
}

BOOL sub_0204C59C (UnkStruct_0203E724 * param0)
{
    PalParkTransfer * v0 = SaveData_PalParkTransfer(param0->unk_34->saveData);
    PCBoxes * v1 = SaveData_PCBoxes(param0->unk_34->saveData);
    Pokemon * v2 = Pokemon_New(32);
    TrainerInfo * v3 = SaveData_GetTrainerInfo(param0->unk_34->saveData);
    PokedexData * v4 = SaveData_Pokedex(param0->unk_34->saveData);
    BOOL v5;
    int v6;

    for (v6 = 0; v6 < 6; v6++) {
        sub_0202F000(v0, v6, v2);
        sub_0209304C(v2, v3, 2, 0, 32);
        v5 = sub_02079868(v1, Pokemon_GetBoxPokemon(v2));
        GF_ASSERT(v5);
        sub_0202F180(param0->unk_34->saveData, v2);
    }

    Heap_FreeToHeap(v2);
    sub_0202EF04(v0);

    return 0;
}

BOOL sub_0204C638 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 * v1 = inline_0204FCAC(param0);

    switch (v0) {
    case 0:
        *v1 = sub_020563D0(param0->unk_34);
        break;
    case 1:
        *v1 = sub_020563E0(param0->unk_34);
        break;
    case 2:
        *v1 = sub_020563F0(param0->unk_34);
        break;
    case 3:
        *v1 = sub_020563D0(param0->unk_34) + sub_020563F0(param0->unk_34) + sub_020563E0(param0->unk_34);
        break;
    }

    return 0;
}
