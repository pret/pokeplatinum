#include "unk_0202DF8C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_party_decl.h"
#include "struct_defs/pokemon.h"
#include "struct_defs/struct_0202DF8C.h"
#include "struct_defs/struct_0202DFA8.h"
#include "struct_defs/struct_0202E1F4.h"

#include "overlay087/struct_ov87_021D1640.h"

#include "inlines.h"
#include "party.h"
#include "pokemon.h"
#include "strbuf.h"

static int inline inline_0202E1A8(const HallOfFame *param0, int param1);

int HallOfFame_SaveSize(void)
{
    return sizeof(HallOfFame);
}

void HallOfFame_Init(HallOfFame *param0)
{
    MI_CpuClear32(param0, sizeof(HallOfFame));
}

void sub_0202DFA8(HallOfFame *param0, const Party *param1, const RTCDate *param2)
{
    UnkStruct_0202DFA8 *v0;
    Pokemon *v1;
    Strbuf *v2;
    int v3, v4, v5;
    BOOL v6;

    GF_ASSERT(param0 != NULL);
    GF_ASSERT(param0->unk_2AA8 < 30);

    if (param0->unk_2AAC >= 9999) {
        return;
    }

    v0 = &param0->unk_00[param0->unk_2AA8];
    v3 = Party_GetCurrentCount(param1);
    v2 = Strbuf_Init(MON_NAME_LEN + 1, 0);

    MI_CpuClear16(v0->unk_00, sizeof(UnkStruct_0202E1F4) * 6);

    for (v4 = 0, v5 = 0; v4 < v3; v4++) {
        v1 = Party_GetPokemonBySlotIndex(param1, v4);
        v6 = Pokemon_EnterDecryptionContext(v1);

        if (Pokemon_GetValue(v1, MON_DATA_IS_EGG, NULL) == 0) {
            v0->unk_00[v5].unk_00 = Pokemon_GetValue(v1, MON_DATA_SPECIES, NULL);
            v0->unk_00[v5].unk_02 = Pokemon_GetValue(v1, MON_DATA_LEVEL, NULL);
            v0->unk_00[v5].unk_03 = Pokemon_GetValue(v1, MON_DATA_FORM, NULL);
            v0->unk_00[v5].unk_04 = Pokemon_GetValue(v1, MON_DATA_PERSONALITY, NULL);
            v0->unk_00[v5].unk_08 = Pokemon_GetValue(v1, MON_DATA_OT_ID, NULL);
            v0->unk_00[v5].unk_32[0] = Pokemon_GetValue(v1, MON_DATA_MOVE1, NULL);
            v0->unk_00[v5].unk_32[1] = Pokemon_GetValue(v1, MON_DATA_MOVE2, NULL);
            v0->unk_00[v5].unk_32[2] = Pokemon_GetValue(v1, MON_DATA_MOVE3, NULL);
            v0->unk_00[v5].unk_32[3] = Pokemon_GetValue(v1, MON_DATA_MOVE4, NULL);

            if (v2) {
                Pokemon_GetValue(v1, MON_DATA_NICKNAME_STRBUF, v2);
                Strbuf_ToChars(v2, v0->unk_00[v5].unk_0C, MON_NAME_LEN + 1);

                Pokemon_GetValue(v1, MON_DATA_OTNAME_STRBUF, v2);
                Strbuf_ToChars(v2, v0->unk_00[v5].unk_22, TRAINER_NAME_LEN + 1);
            } else {
                v0->unk_00[v5].unk_0C[0] = 0xffff;
                v0->unk_00[v5].unk_22[0] = 0xffff;
            }

            v5++;
        }

        Pokemon_ExitDecryptionContext(v1, v6);
    }

    v0->unk_168 = param2->year;
    v0->unk_16A = param2->month;
    v0->unk_16B = param2->day;

    if (++(param0->unk_2AA8) >= 30) {
        param0->unk_2AA8 = 0;
    }

    param0->unk_2AAC++;

    if (v2) {
        Strbuf_Free(v2);
    }
}

u32 sub_0202E148(const HallOfFame *param0)
{
    GF_ASSERT(param0 != NULL);
    GF_ASSERT(param0->unk_2AA8 < 30);

    if (param0->unk_2AAC >= 30) {
        return 30;
    }

    return param0->unk_2AAC;
}

u32 sub_0202E174(const HallOfFame *param0, int param1)
{
    GF_ASSERT(param0 != NULL);
    GF_ASSERT(param0->unk_2AA8 < 30);
    GF_ASSERT(param1 < 30);

    return param0->unk_2AAC - param1;
}

u32 sub_0202E1A8(const HallOfFame *param0, int param1)
{
    u32 v0;

    GF_ASSERT(param0 != NULL);
    GF_ASSERT(param0->unk_2AA8 < 30);
    GF_ASSERT(param1 < 30);

    param1 = inline_0202E1A8(param0, param1);

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->unk_00[param1].unk_00[v0].unk_00 == 0) {
            break;
        }
    }

    return v0;
}

void sub_0202E1F4(const HallOfFame *param0, int param1, int param2, UnkStruct_ov87_021D1640 *param3)
{
    const UnkStruct_0202E1F4 *v0;
    int v1;

    GF_ASSERT(param0 != NULL);
    GF_ASSERT(param0->unk_2AA8 < 30);
    GF_ASSERT(param1 < 30);

    param1 = inline_0202E1A8(param0, param1);
    v0 = &(param0->unk_00[param1].unk_00[param2]);

    param3->unk_10 = v0->unk_00;
    param3->unk_12 = v0->unk_02;
    param3->unk_08 = v0->unk_04;
    param3->unk_0C = v0->unk_08;
    param3->unk_13 = v0->unk_03;

    Strbuf_CopyChars(param3->unk_00, v0->unk_0C);
    Strbuf_CopyChars(param3->unk_04, v0->unk_22);

    for (v1 = 0; v1 < 4; v1++) {
        param3->unk_14[v1] = v0->unk_32[v1];
    }
}

void sub_0202E274(const HallOfFame *param0, int param1, RTCDate *param2)
{
    GF_ASSERT(param0 != NULL);
    GF_ASSERT(param0->unk_2AA8 < 30);
    GF_ASSERT(param1 < 30);

    param1 = inline_0202E1A8(param0, param1);

    param2->year = param0->unk_00[param1].unk_168;
    param2->month = param0->unk_00[param1].unk_16A;
    param2->day = param0->unk_00[param1].unk_16B;
    param2->week = 0;
}

static int inline inline_0202E1A8(const HallOfFame *param0, int param1)
{
    int v0 = (param0->unk_2AA8 - 1 - param1);

    if (v0 < 0) {
        v0 += 30;
    }

    return v0;
}
