#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "message.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_020149F0_decl.h"
#include "strbuf.h"
#include "unk_02025E68.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "pokemon.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "constdata/const_020F1E88.h"
#include "constdata/const_020F410C.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0205AA50.h"
#include "functypes/funcptr_0205AB10.h"
#include "struct_defs/struct_02072014.h"
#include "struct_defs/struct_02098C44.h"
#include "struct_defs/struct_02098D38.h"

#include "unk_02005474.h"
#include "message.h"
#include "unk_0200B358.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_020149F0.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "strbuf.h"
#include "unk_02025E08.h"
#include "unk_0202602C.h"
#include "unk_0202D778.h"
#include "unk_020329E0.h"
#include "unk_02034198.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_0203CC84.h"
#include "unk_0203D1B8.h"
#include "unk_020508D4.h"
#include "unk_02057518.h"
#include "unk_0205964C.h"
#include "unk_0205A0D8.h"
#include "unk_0205D8CC.h"
#include "unk_0205E7D0.h"
#include "unk_02061804.h"
#include "unk_020655F4.h"
#include "pokemon.h"
#include "party.h"
#include "unk_0207A274.h"
#include "unk_0207D3B8.h"
#include "unk_0208C324.h"
#include "overlay005/ov5_021D0D80.h"

typedef struct {
    UnkStruct_02098D38 * unk_00;
    UnkStruct_02098C44 * unk_04;
    UnkFuncPtr_0205AB10 * unk_08;
    Strbuf* unk_0C;
    Strbuf* unk_10;
    UnkStruct_0205AA50 unk_14;
    UnkStruct_0203CDB0 * unk_24;
    UnkStruct_0200B358 * unk_28;
    MessageLoader * unk_2C;
    int unk_30;
    int unk_34;
    int unk_38;
    u8 unk_3C;
    u8 unk_3D[6];
    u8 unk_43;
    u8 unk_44;
    u8 * unk_48;
    u8 * unk_4C;
    Party * unk_50;
    UnkStruct_0205AA50 unk_54;
    UnkStruct_0205AA50 unk_64;
    TrainerInfo * unk_74;
    UnkStruct_020149F0 * unk_78;
    UnkStruct_0205AA50 * unk_7C;
    u8 unk_80;
    s8 unk_81;
    u8 unk_82;
    u8 unk_83;
    u8 unk_84;
    u8 unk_85;
    u16 unk_86;
    u8 unk_88;
    u8 unk_89;
} UnkStruct_0205A0D8;

typedef struct {
    u32 unk_00;
} UnkStruct_0205AD20;

typedef struct {
    Strbuf* unk_00;
    Strbuf* unk_04;
    UnkStruct_0205AA50 unk_08;
    UnkStruct_0200B358 * unk_18;
    MessageLoader * unk_1C;
    int unk_20;
    int unk_24;
    int unk_28;
} UnkStruct_0205B2D4;

static void sub_0205AC28(UnkStruct_0205A0D8 * param0);
static void sub_0205AC80(UnkStruct_0205A0D8 * param0, BOOL param1);
static BOOL sub_0205ACC8(UnkStruct_0205A0D8 * param0);
static BOOL sub_0205AD10(UnkStruct_0205A0D8 * param0);
static void sub_0205ADF8(UnkStruct_0205A0D8 * param0, int param1);
static int sub_0205AFE4(UnkStruct_0205A0D8 * param0);
static void sub_0205B0B4(UnkStruct_0205A0D8 * param0);
static BOOL sub_0205AD34(UnkStruct_0205A0D8 * param0);
static BOOL sub_0205AD70(UnkStruct_0205A0D8 * param0);
static void sub_0205ADAC(UnkStruct_0205A0D8 * param0);
static void sub_0205AD80(UnkStruct_0205A0D8 * param0);
static int sub_0205AA50(UnkStruct_0205A0D8 * param0, const Strbuf *param1);
static void sub_0205AAA0(UnkStruct_0205A0D8 * param0, BOOL param1);
static void sub_0205AF18(UnkStruct_0205A0D8 * param0, int param1);
static BOOL sub_0205AD20(UnkStruct_0205A0D8 * param0);

static void sub_0205A0D8 (UnkStruct_0205A0D8 * param0, UnkStruct_0203CDB0 * param1, Party * param2, int param3, int param4, int param5)
{
    UnkStruct_02098D38 * v0;
    UnkStruct_021C0794 * v1;
    static const u8 v2[] = {
        0, 1, 2, 4, 3, 5, 6, 7, 8
    };

    v1 = param1->unk_0C;
    v0 = Heap_AllocFromHeapAtEnd(param5, sizeof(UnkStruct_02098D38));

    MI_CpuClear8(v0, sizeof(UnkStruct_02098D38));
    sub_0208E9C0(v0, sub_02025E38(param1->unk_0C));

    v0->unk_1C = sub_0207A274(v1);
    v0->unk_2C = sub_0208C324(v1);
    v0->unk_04 = sub_02025E44(v1);
    v0->unk_00 = param2;
    v0->unk_11 = 1;
    v0->unk_14 = param3;
    v0->unk_13 = (u8)Party_GetCurrentCount(v0->unk_00);
    v0->unk_18 = 0;
    v0->unk_12 = param4;
    v0->unk_20 = sub_0202D79C(v1);

    sub_0208D720(v0, v2);
    sub_0203CD84(param1, &Unk_020F410C, v0);

    param0->unk_00 = v0;
}

static void sub_0205A164 (UnkStruct_0205A0D8 * param0, int param1)
{
    int v0;
    UnkStruct_02098C44 * v1 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_02098C44));

    MI_CpuClear8(v1, sizeof(UnkStruct_02098C44));

    v1->unk_0C = sub_02025E44(param0->unk_24->unk_0C);
    v1->unk_14 = (void *)param0->unk_24->unk_B0;
    v1->unk_00 = Party_GetFromSavedata(param0->unk_24->unk_0C);
    v1->unk_04 = sub_0207D990(param0->unk_24->unk_0C);
    v1->unk_21 = 0;
    v1->unk_20 = 2;

    if (param0->unk_24->unk_B0) {
        v1->unk_32_0 = sub_02026074(param0->unk_24->unk_B0, 1);
        v1->unk_32_4 = v1->unk_32_0;
    } else {
        v1->unk_32_0 = 3;
        v1->unk_32_4 = 3;
    }

    v1->unk_33 = 100;
    v1->unk_22 = param0->unk_3C;

    for (v0 = 0; v0 < 6; v0++) {
        v1->unk_2C[v0] = param0->unk_3D[v0];
    }

    sub_0203CD84(param0->unk_24, &Unk_020F1E88, v1);
    param0->unk_04 = v1;
}

static BOOL sub_0205A258 (UnkStruct_0205A0D8 * param0, UnkStruct_0203CDB0 * param1)
{
    int v0;

    if (sub_020509B4(param1)) {
        return 0;
    }

    MI_CpuCopy8(param0->unk_04->unk_2C, param0->unk_3D, 6);

    switch (param0->unk_04->unk_22) {
    case 7:
        param0->unk_38 = 0;
        break;
    case 6:
        param0->unk_38 = 1;
        break;
    default:
        param0->unk_38 = 2;
        break;
    }

    param0->unk_3C = param0->unk_04->unk_22;
    Heap_FreeToHeap(param0->unk_04);
    param0->unk_04 = NULL;

    return 1;
}

static BOOL sub_0205A2B0 (UnkStruct_0205A0D8 * param0, UnkStruct_0203CDB0 * param1)
{
    UnkStruct_02098D38 * v0;

    if (sub_020509B4(param1)) {
        return 0;
    }

    param0->unk_3C = param0->unk_00->unk_14;
    Heap_FreeToHeap(param0->unk_00);
    param0->unk_00 = NULL;

    return 1;
}

static BOOL sub_0205A2DC (UnkStruct_0205A0D8 * param0)
{
    if (sub_020509DC(param0->unk_24)) {
        ov5_021D1744(1);
        sub_020576A0();
        return 1;
    }

    return 0;
}

static BOOL sub_0205A2FC (void)
{
    int v0, v1;

    v1 = sub_02035E18();

    for (v0 = 0; v0 < v1; v0++) {
        if (sub_02036564(v0) == 94) {
            return 1;
        }
    }

    return 0;
}

static BOOL sub_0205A324 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0205A0D8 * v0 = sub_02050A64(param0);
    UnkStruct_0203CDB0 * v1 = sub_02050A60(param0);

    switch (v0->unk_34) {
    case 0:
        v0->unk_43--;

        if (v0->unk_43 == 0) {
            v0->unk_34 = 1;
            sub_02059240();
        }
        break;
    case 1:
        MessageLoader_GetStrbuf(v0->unk_2C, 1, v0->unk_0C);
        v0->unk_30 = sub_0205AA50(v0, v0->unk_0C);
        v0->unk_34 = 2;
        break;
    case 2:
        if (sub_0205DA04(v0->unk_30)) {
            sub_020364F0(93);
            v0->unk_34 = 3;
        }
        break;
    case 3:
        if (sub_02036540(93)) {
            v0->unk_34 = 7;
            sub_02062C30(v0->unk_24->unk_38);
            v0->unk_08(1, v0->unk_50);
        } else if (Unk_021BF67C.unk_48 & PAD_BUTTON_B) {
            v0->unk_34 = 4;
            sub_020364F0(92);
            v0->unk_43 = 5;
        }
        break;
    case 4:
        if (sub_02036540(93)) {
            v0->unk_34 = 7;
            sub_02062C30(v0->unk_24->unk_38);
            v0->unk_08(1, v0->unk_50);
        }

        v0->unk_43--;

        if (v0->unk_43 == 0) {
            v0->unk_34 = 8;
        }
        break;
    case 7:
        sub_0205AC28(v0);
        Heap_FreeToHeap(v0);
        return 1;
    case 5:
        sub_0205AC28(v0);
        Heap_FreeToHeap(v0);
        sub_02059514();
        return 1;
    case 8:
        if (sub_02036540(93)) {
            v0->unk_34 = 5;
            v0->unk_08(1, v0->unk_50);
        } else {
            v0->unk_08(0, v0->unk_50);
            v0->unk_34 = 5;
        }
        break;
    case 9:
        v0->unk_34 = 10;
        v0->unk_44 = 5;
        break;
    case 10:
        if (v0->unk_44 != 0) {
            v0->unk_44--;
        } else {
            if (sub_02065684(sub_0205EB3C(v1->unk_3C))) {
                v0->unk_34 = 11;
            }
        }
        break;
    case 11:
        sub_02059240();
        MessageLoader_GetStrbuf(v0->unk_2C, 13, v0->unk_0C);

        v0->unk_30 = sub_0205AA50(v0, v0->unk_0C);
        v0->unk_34 = 12;
        break;
    case 12:
        if (sub_0205DA04(v0->unk_30)) {
            v0->unk_34 = 13;
        }
        break;
    case 13:
        ov5_021D1744(0);
        v0->unk_34 = 14;
        break;
    case 14:
        v0->unk_43--;

        if (v0->unk_43 == 0) {
            sub_02059240();
            v0->unk_34 = 15;
        }
        break;
    case 15:
        sub_0205AAA0(v0, 0);
        sub_0205A164(v0, 11);
        v0->unk_34 = 16;
        break;
    case 16:
        if (sub_0205A258(v0, v0->unk_24)) {
            switch (v0->unk_38) {
            case 0:
                v0->unk_34 = 20;
                break;
            case 1:
                v0->unk_34 = 19;
                break;
            case 2:
                v0->unk_34 = 17;
                break;
            }
        }
        break;
    case 17:
        sub_0205A0D8(v0, v0->unk_24, Party_GetFromSavedata(v0->unk_24->unk_0C), v0->unk_3C, 0, 11);
        v0->unk_34 = 18;
        break;
    case 18:
        if (sub_0205A2B0(v0, v0->unk_24)) {
            v0->unk_34 = 15;
        }
        break;
    case 19:
        sub_020509D4(v0->unk_24);

        if (v0->unk_88 != 3) {
            v0->unk_43 = 5;
            v0->unk_34 = 21;
        } else {
            v0->unk_34 = 26;
        }
        break;
    case 21:
        sub_0203898C(v0->unk_3D);

        if (sub_0205A2DC(v0)) {
            v0->unk_43 = 5;
            v0->unk_34 = 0;
        }
        break;
    case 20:
        sub_020509D4(v0->unk_24);

        if (v0->unk_88 != 3) {
            v0->unk_34 = 22;
        } else {
            v0->unk_34 = 26;
        }
        break;
    case 22:
        if (sub_0205A2DC(v0)) {
            v0->unk_34 = 8;
        }
        break;
    case 23:
        v0->unk_44--;

        if (v0->unk_44 == 0) {
            v0->unk_34 = 24;
        }
        break;
    case 24:
        sub_02059240();
        MessageLoader_GetStrbuf(v0->unk_2C, 19, v0->unk_0C);
        v0->unk_30 = sub_0205AA50(v0, v0->unk_0C);
        v0->unk_34 = 25;
        break;
    case 25:
        if (sub_0205DA04(v0->unk_30)) {
            v0->unk_34 = 13;
        }
        break;
    case 26:
        if (sub_0205A2DC(v0)) {
            if (sub_0205A2FC()) {
                v0->unk_34 = 5;
            } else {
                v0->unk_82 = (v0->unk_38 != 0);
                sub_0205AC80(v0, v0->unk_82);
                sub_020364F0(0);
                sub_0200B498(v0->unk_28, 0, v0->unk_74);
                MessageLoader_GetStrbuf(v0->unk_2C, 14, v0->unk_0C);
                sub_0200C388(v0->unk_28, v0->unk_10, v0->unk_0C);
                v0->unk_30 = sub_0205AA50(v0, v0->unk_10);
                v0->unk_34 = 27;
            }
        }
        break;
    case 27:
        if (sub_0205DA04(v0->unk_30)) {
            if (sub_0205A2FC()) {
                v0->unk_34 = 5;
            } else if (sub_02036540(0)) {
                sub_0205ACC8(v0);
                v0->unk_34 = 28;
            }
        }
        break;
    case 28:
        if (sub_0205AD10(v0)) {
            sub_020364F0(1);
            v0->unk_34 = 29;
        }
        break;
    case 29:
        if (sub_02036540(1)) {
            v0->unk_83 = sub_0205AD20(v0);

            if (v0->unk_82 && v0->unk_83) {
                MessageLoader_GetStrbuf(v0->unk_2C, 20, v0->unk_0C);
                v0->unk_30 = sub_0205AA50(v0, v0->unk_0C);
                v0->unk_34 = 30;
            } else {
                v0->unk_34 = 42;
            }
        }
        break;
    case 30:
        if (sub_0205DA04(v0->unk_30)) {
            v0->unk_89 = 0;
            MessageLoader_GetStrbuf(v0->unk_2C, 17, v0->unk_0C);
            v0->unk_30 = sub_0205AA50(v0, v0->unk_0C);
            v0->unk_84 = 0;
            v0->unk_34 = 31;
        }
        break;
    case 31:
        if (sub_0205DA04(v0->unk_30)) {
            sub_0205AD80(v0);
            sub_0205ADF8(v0, v0->unk_84);
            v0->unk_34 = 32;
        }
        break;
    case 32:
        switch (sub_0205AFE4(v0)) {
        case 1:
            sub_0205B0B4(v0);
            v0->unk_84 = v0->unk_81;
            v0->unk_34 = 36;
            break;
        case 2:
            sub_0205B0B4(v0);
            v0->unk_84 = 255;
            MessageLoader_GetStrbuf(v0->unk_2C, 15, v0->unk_0C);
            v0->unk_30 = sub_0205AA50(v0, v0->unk_0C);
            sub_020364F0(2);
            v0->unk_34 = 39;
            break;
        }
        break;
    case 36:
        sub_0200B538(v0->unk_28, 1, Pokemon_GetBoxPokemon(Party_GetPokemonBySlotIndex(v0->unk_50, v0->unk_84)));
        MessageLoader_GetStrbuf(v0->unk_2C, 18, v0->unk_0C);
        sub_0200C388(v0->unk_28, v0->unk_10, v0->unk_0C);
        v0->unk_30 = sub_0205AA50(v0, v0->unk_10);
        v0->unk_34 = 37;
        break;
    case 37:
        if (sub_0205DA04(v0->unk_30)) {
            sub_0205AF18(v0, 0);
            v0->unk_34 = 38;
        }
        break;
    case 38:
        switch (sub_0205AFE4(v0)) {
        case 2:
            sub_0205B0B4(v0);
            MessageLoader_GetStrbuf(v0->unk_2C, 17, v0->unk_0C);
            v0->unk_30 = sub_0205AA50(v0, v0->unk_0C);
            v0->unk_34 = 31;
            break;
        case 1:
            if (v0->unk_81 == 1) {
                sub_0205B0B4(v0);
                MessageLoader_GetStrbuf(v0->unk_2C, 14, v0->unk_0C);
                sub_0200C388(v0->unk_28, v0->unk_10, v0->unk_0C);
                v0->unk_30 = sub_0205AA50(v0, v0->unk_10);
                sub_020364F0(2);
                v0->unk_34 = 39;
            } else {
                ov5_021D1744(0);
                v0->unk_34 = 33;
            }
            break;
        }
        break;
    case 33:
        if (sub_0200F2AC()) {
            sub_0205AAA0(v0, 0);
            sub_0205A0D8(v0, v0->unk_24, v0->unk_50, v0->unk_84, 1, 11);
            v0->unk_34 = 34;
        }
        break;
    case 34:
        if (sub_0205A2B0(v0, v0->unk_24)) {
            sub_020509D4(v0->unk_24);
            v0->unk_34 = 35;
        }
        break;
    case 35:
        if (sub_0205A2DC(v0)) {
            v0->unk_34 = 36;
        }
        break;
    case 39:
        if (sub_0205DA04(v0->unk_30)) {
            if (sub_02036540(2)) {
                sub_0205AD34(v0);
                v0->unk_34 = 41;
            }
        }
        break;
    case 41:
        if (sub_0205AD70(v0)) {
            if (v0->unk_84 == 255) {
                sub_020364F0(4);
                v0->unk_34 = 44;
            } else if (v0->unk_85 == 255) {
                v0->unk_34 = 42;
            } else {
                sub_0205ADAC(v0);
                sub_020364F0(93);
                v0->unk_34 = 2;
            }
        }
        break;
    case 42:
        MessageLoader_GetStrbuf(v0->unk_2C, 15, v0->unk_0C);
        v0->unk_30 = sub_0205AA50(v0, v0->unk_0C);
        v0->unk_43 = 0;
        v0->unk_34 = 43;
        break;
    case 43:
        if (sub_0205DA04(v0->unk_30)) {
            if (++(v0->unk_43) > 60) {
                sub_020364F0(4);
                v0->unk_34 = 44;
            }
        }
        break;
    case 44:
        if (sub_02036540(4)) {
            sub_0200E084(&(v0->unk_14), 0);
            v0->unk_08(0, NULL);
            v0->unk_34 = 5;
        }
        break;
    }

    return 0;
}

static int sub_0205AA50 (UnkStruct_0205A0D8 * param0, const Strbuf *param1)
{
    UnkStruct_0205AA50 * v0 = &(param0->unk_14);

    if (sub_0201A7CC(v0) == 0) {
        sub_0205D8F4(param0->unk_24->unk_08, v0, 3);
        sub_0205D944(v0, sub_02025E44(param0->unk_24->unk_0C));
    } else {
        sub_0205D988(v0);
    }

    return sub_0205D994(v0, (Strbuf *)param1, sub_02025E44(param0->unk_24->unk_0C), 1);
}

static void sub_0205AAA0 (UnkStruct_0205A0D8 * param0, BOOL param1)
{
    if (sub_0201A7CC(&(param0->unk_14))) {
        if (param1) {
            sub_0200E084(&param0->unk_14, 0);
            sub_0201ACF4(&param0->unk_14);
        }

        sub_0201A8FC(&param0->unk_14);
        sub_0201A7A0(&param0->unk_14);
    }

    if (sub_0201A7CC(&(param0->unk_54))) {
        sub_0201A8FC(&param0->unk_54);
        sub_0201A7A0(&param0->unk_54);
    }

    if (sub_0201A7CC(&(param0->unk_64))) {
        sub_0201A8FC(&param0->unk_64);
        sub_0201A7A0(&param0->unk_64);
    }
}

void sub_0205AB10 (UnkStruct_0203CDB0 * param0, UnkFuncPtr_0205AB10 * param1)
{
    UnkStruct_0205A0D8 * v0;
    UnkStruct_020508D4 * v1 = param0->unk_10;

    if (v1) {
        return;
    }

    v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_0205A0D8));
    MI_CpuClear8(v0, sizeof(UnkStruct_0205A0D8));

    v0->unk_43 = 5;
    v0->unk_24 = param0;
    v0->unk_08 = param1;
    v0->unk_28 = sub_0200B358(11);
    v0->unk_2C = MessageLoader_Init(0, 26, 11, 11);
    v0->unk_0C = Strbuf_Init((100 * 2), 11);
    v0->unk_10 = Strbuf_Init((100 * 2), 11);

    sub_0201A7A0(&v0->unk_14);
    sub_0201A7A0(&v0->unk_54);
    sub_0201A7A0(&v0->unk_64);

    v0->unk_78 = sub_020149F0(11);
    v0->unk_88 = sub_0203895C();
    v0->unk_4C = NULL;
    v0->unk_48 = NULL;
    v0->unk_50 = NULL;
    v0->unk_89 = 0;
    v0->unk_86 = sub_0203608C();
    v0->unk_74 = sub_02032EE8(v0->unk_86 ^ 1);

    switch (v0->unk_88) {
    case 3:
    {
        u32 v2 = sub_0205B0E4();

        v0->unk_4C = Heap_AllocFromHeapAtEnd(11, v2);
        v0->unk_48 = Heap_AllocFromHeapAtEnd(11, v2);
        v0->unk_50 = sub_02079FF4(11);

        Party_InitWithCapacity(v0->unk_50, 3);

        v0->unk_44 = 5;
        v0->unk_34 = 23;
    }
    break;
    case 4:
        v0->unk_34 = 9;
        break;
    default:
        if (v0->unk_24->unk_B0) {
            v0->unk_34 = 9;
        } else {
            v0->unk_34 = 0;
        }
        break;
    }

    sub_02050904(param0, sub_0205A324, v0);
}

static void sub_0205AC28 (UnkStruct_0205A0D8 * param0)
{
    if (param0->unk_50) {
        Heap_FreeToHeap(param0->unk_50);
    }

    if (param0->unk_4C) {
        Heap_FreeToHeap(param0->unk_4C);
    }

    if (param0->unk_48) {
        Heap_FreeToHeap(param0->unk_48);
    }

    MessageLoader_Free(param0->unk_2C);
    sub_0200B3F0(param0->unk_28);
    Strbuf_Free(param0->unk_0C);
    Strbuf_Free(param0->unk_10);
    sub_02014A20(param0->unk_78);

    sub_0205AAA0(param0, 1);
}

static UnkStruct_0205A0D8 * sub_0205AC74 (UnkStruct_0203CDB0 * param0)
{
    return sub_02050A64(param0->unk_10);
}

static void sub_0205AC80 (UnkStruct_0205A0D8 * param0, BOOL param1)
{
    Party * v0;
    UnkStruct_0205AD20 * v1;
    u8 * v2;
    int v3, v4;

    v0 = Party_GetFromSavedata(param0->unk_24->unk_0C);
    v2 = param0->unk_4C;
    v4 = Pokemon_GetStructSize();
    v1 = (UnkStruct_0205AD20 *)(v2 + v4 * 3);
    v1->unk_00 = param1;

    if (v1->unk_00) {
        for (v3 = 0; v3 < 3; v3++) {
            MI_CpuCopy8(Party_GetPokemonBySlotIndex(v0, param0->unk_3D[v3] - 1), v2, v4);
            v2 += v4;
        }
    }
}

static BOOL sub_0205ACC8 (UnkStruct_0205A0D8 * param0)
{
    if (param0->unk_89 & 1) {
        return 1;
    } else {
        BOOL v0;
        u8 * v1;
        u32 v2;

        v1 = param0->unk_4C;
        v2 = sub_0205B0E4();

        if (param0->unk_86 == 0) {
            v0 = sub_02035A3C(106, v1, v2);
        } else {
            v0 = sub_0203597C(106, v1, v2);
        }

        if (v0) {
            param0->unk_89 |= 1;
        }

        return v0;
    }
}

static BOOL sub_0205AD10 (UnkStruct_0205A0D8 * param0)
{
    if (param0->unk_89 == 3) {
        return 1;
    }

    return 0;
}

static BOOL sub_0205AD20 (UnkStruct_0205A0D8 * param0)
{
    UnkStruct_0205AD20 * v0;

    v0 = (UnkStruct_0205AD20 *)((u8 *)(param0->unk_48) + (Pokemon_GetStructSize() * 3));
    return v0->unk_00;
}

static BOOL sub_0205AD34 (UnkStruct_0205A0D8 * param0)
{
    BOOL v0;

    if (param0->unk_86 == 0) {
        v0 = sub_02035AC4(107, &(param0->unk_84), 1);
    } else {
        v0 = sub_020359DC(107, &(param0->unk_84), 1);
    }

    if (v0) {
        param0->unk_89 |= 1;
    }

    return v0;
}

static BOOL sub_0205AD70 (UnkStruct_0205A0D8 * param0)
{
    if (param0->unk_89 == 3) {
        return 1;
    }

    return 0;
}

static void sub_0205AD80 (UnkStruct_0205A0D8 * param0)
{
    u32 v0;
    int v1;

    v0 = Pokemon_GetStructSize();
    Party_InitWithCapacity(param0->unk_50, 3);

    for (v1 = 0; v1 < 3; v1++) {
        Party_AddPokemon(param0->unk_50, (Pokemon *)(&param0->unk_48[v1 * v0]));
    }
}

static void sub_0205ADAC (UnkStruct_0205A0D8 * param0)
{
    u32 v0;
    u8 * v1, * v2;
    int v3;

    v0 = Pokemon_GetStructSize();
    v1 = &param0->unk_4C[param0->unk_85 * v0];
    v2 = &param0->unk_48[param0->unk_84 * v0];

    MI_CpuCopy8(v2, v1, v0);

    Party_InitWithCapacity(param0->unk_50, 3);

    for (v3 = 0; v3 < 3; v3++) {
        Party_AddPokemon(param0->unk_50, (Pokemon *)(&param0->unk_4C[v3 * v0]));
    }
}

static void sub_0205ADF8 (UnkStruct_0205A0D8 * param0, int param1)
{
    UnkStruct_0205AA50 * v0 = &(param0->unk_54);

    if (sub_0201A7CC(v0) == 0) {
        int v1, v2, v3;
        MessageLoader * v4;

        v4 = MessageLoader_Init(1, 26, 412, 4);
        v3 = Pokemon_GetStructSize();

        sub_0201A7E8(param0->unk_24->unk_08, v0, 3, 21, 9, 10, 8, 13, 10);
        sub_0200DAA4(param0->unk_24->unk_08, 3, 1, 11, 0, 4);
        sub_0201ADA4(v0, 15);

        for (v1 = 0; v1 < 3; v1++) {
            v2 = Pokemon_GetValue((Pokemon *)(&param0->unk_48[v1 * v3]), MON_DATA_SPECIES, NULL);

            MessageLoader_GetStrbuf(v4, v2, param0->unk_0C);
            sub_0201D738(v0, 0, param0->unk_0C, 16, v1 * 16, 0xff, NULL);
        }

        MessageLoader_GetStrbuf(param0->unk_2C, 21, param0->unk_0C);
        sub_0201D738(v0, 0, param0->unk_0C, 16, v1 * 16, 0xff, NULL);
        MessageLoader_Free(v4);
    }

    sub_0201AE78(v0, 15, 0, 0, 16, v0->unk_08 * 8);
    sub_02014A58(param0->unk_78, &param0->unk_54, 0, param1 * 16);
    sub_0200DC48(&param0->unk_54, 0, 1, 11);

    param0->unk_81 = param1;
    param0->unk_80 = 3 + 1;
    param0->unk_7C = v0;
}

static void sub_0205AF18 (UnkStruct_0205A0D8 * param0, int param1)
{
    UnkStruct_0205AA50 * v0 = &(param0->unk_64);

    if (sub_0201A7CC(v0) == 0) {
        int v1;

        sub_0201A7E8(param0->unk_24->unk_08, v0, 3, 20, 11, 11, 6, 13, 90);
        sub_0200DAA4(param0->unk_24->unk_08, 3, 1, 11, 0, 4);
        sub_0201ADA4(v0, 15);

        for (v1 = 0; v1 < 3; v1++) {
            MessageLoader_GetStrbuf(param0->unk_2C, 22 + v1, param0->unk_0C);
            sub_0201D738(v0, 0, param0->unk_0C, 16, v1 * 16, 0xff, NULL);
        }
    }

    param0->unk_80 = 3;
    param0->unk_7C = v0;
    param0->unk_81 = param1;

    sub_0201AE78(v0, 15, 0, 0, 16, v0->unk_08 * 8);
    sub_02014A58(param0->unk_78, param0->unk_7C, 0, param1 * 16);
    sub_0200DC48(param0->unk_7C, 0, 1, 11);
}

static int sub_0205AFE4 (UnkStruct_0205A0D8 * param0)
{
    do {
        if (Unk_021BF67C.unk_48 & PAD_KEY_UP) {
            param0->unk_81 = ((param0->unk_81 == 0) ? (param0->unk_80 - 1) : (param0->unk_81 - 1));
            break;
        }

        if (Unk_021BF67C.unk_48 & PAD_KEY_DOWN) {
            param0->unk_81 = (param0->unk_81 == (param0->unk_80 - 1)) ?  0 : (param0->unk_81 + 1);
            break;
        }

        if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
            sub_02005748(1500);

            if (param0->unk_81 < (param0->unk_80 - 1)) {
                return 1;
            } else {
                return 2;
            }
        }

        if (Unk_021BF67C.unk_48 & PAD_BUTTON_B) {
            sub_02005748(1500);
            return 2;
        }

        return 0;
    } while (0);

    sub_02005748(1500);
    sub_0201AE78(param0->unk_7C, 15, 0, 0, 16, param0->unk_7C->unk_08 * 8);
    sub_02014A58(param0->unk_78, param0->unk_7C, 0, param0->unk_81 * 16);
    sub_0201ACCC(param0->unk_7C);

    return 0;
}

static void sub_0205B0B4 (UnkStruct_0205A0D8 * param0)
{
    sub_0200DC9C(param0->unk_7C, 1);
}

void sub_0205B0C0 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_0205A0D8 * v0 = sub_0205AC74(param3);

    if (v0->unk_86 != param0) {
        v0->unk_89 |= 2;
    }
}

int sub_0205B0E4 (void)
{
    return Pokemon_GetStructSize() * 3 + sizeof(UnkStruct_0205AD20);
}

u8 * sub_0205B0F4 (int param0, void * param1, int param2)
{
    UnkStruct_0205A0D8 * v0 = sub_0205AC74(param1);

    if (v0->unk_86 != param0) {
        return v0->unk_48;
    } else {
        return NULL;
    }
}

void sub_0205B110 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_0205A0D8 * v0 = sub_0205AC74(param3);

    if (v0->unk_86 != param0) {
        v0->unk_85 = *((u8 *)param2);
        v0->unk_89 |= 2;
    }
}

static BOOL sub_0205B140 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_0205B2D4 * v1 = sub_02050A64(param0);
    UnkStruct_02072014 * v2 = (UnkStruct_02072014 *)sub_02059EBC(v1->unk_24, NULL, 0);

    switch (v1->unk_28) {
    case 0:
        v1->unk_18 = sub_0200B358(4);
        v1->unk_1C = MessageLoader_Init(0, 26, 11, 4);
        v1->unk_00 = Strbuf_Init((100 * 2), 4);
        v1->unk_04 = Strbuf_Init((100 * 2), 4);

        MessageLoader_GetStrbuf(v1->unk_1C, 2 + v2->unk_03, v1->unk_00);
        sub_0200B498(v1->unk_18, 0, sub_02032EE8(v1->unk_24));
        sub_0200C388(v1->unk_18, v1->unk_04, v1->unk_00);
        sub_0205D8F4(v0->unk_08, &v1->unk_08, 3);
        sub_0205D944(&v1->unk_08, sub_02025E44(v0->unk_0C));

        v1->unk_20 = sub_0205D994(&v1->unk_08, v1->unk_04, sub_02025E44(v0->unk_0C), 1);
        v1->unk_28++;
        break;
    case 1:
        if (sub_0205DA04(v1->unk_20)) {
            if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
                MessageLoader_Free(v1->unk_1C);
                sub_0200B3F0(v1->unk_18);
                Strbuf_Free(v1->unk_00);
                Strbuf_Free(v1->unk_04);
                sub_0200E084(&v1->unk_08, 0);
                sub_0201A8FC(&v1->unk_08);
                ov5_021D1744(0);
                v1->unk_28++;
            }
        }
        break;
    case 2:
        if (sub_0200F2AC()) {
            v1->unk_28++;
        }
        break;
    case 3:
        sub_0203E09C(v0, v2);
        v1->unk_28++;
        break;
    case 4:
        if (!sub_020509B4(v0)) {
            v1->unk_28++;
        }
        break;
    case 5:
        sub_020509D4(v0);
        v1->unk_28++;
        break;
    case 6:
        if (!sub_020509DC(v0)) {
            ov5_021D1744(1);
            sub_020576A0();
            v1->unk_28++;
        }
        break;
    case 7:
        sub_02059514();
        Heap_FreeToHeap(v1);
        return 1;
    default:
        return 1;
    }

    return 0;
}

void sub_0205B2D4 (UnkStruct_0203CDB0 * param0)
{
    int v0;
    int v1 = sub_0203608C();
    int v2 = sub_02058D88(v1);
    int v3 = sub_02058DC0(v1);

    for (v0 = 0; v0 < sub_02035E18(); v0++) {
        if (v0 == v1) {
            continue;
        }

        if ((v2 == sub_02058CA0(v0)) && (v3 == sub_02058CF4(v0))) {
            UnkStruct_0205B2D4 * v4 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_0205B2D4));

            v4->unk_24 = v0;
            v4->unk_28 = 0;

            sub_02050904(param0, sub_0205B140, v4);
            sub_0203D128();
            break;
        }
    }
}
