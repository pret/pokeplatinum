#include <nitro.h>
#include <string.h>
#include <dwc.h>

#include "coresys.h"

#include "strbuf.h"
#include "struct_decls/struct_02025E5C_decl.h"
#include "struct_decls/struct_02029C68_decl.h"
#include "struct_decls/struct_020797DC_decl.h"

#include "struct_defs/struct_02030A80.h"
#include "overlay061/struct_ov61_0222AFC0.h"
#include "overlay061/struct_ov61_0222B138.h"
#include "overlay061/struct_ov61_0222B2D8.h"
#include "overlay061/struct_ov61_0222B920.h"
#include "overlay061/struct_ov61_0222B960.h"
#include "overlay061/struct_ov61_0222BDC8.h"
#include "overlay062/struct_ov62_022349A8.h"
#include "overlay062/struct_ov62_022349A8_sub3_sub3.h"
#include "overlay062/struct_ov62_022349A8_sub3_sub4.h"
#include "overlay062/struct_ov62_022349A8_sub3_sub5.h"
#include "overlay062/struct_ov62_0223CAA4.h"
#include "overlay062/struct_ov62_0223D518_sub1_sub1.h"
#include "overlay062/struct_ov62_02241130.h"

#include "message.h"
#include "unk_0200B358.h"
#include "heap.h"
#include "strbuf.h"
#include "unk_02025E08.h"
#include "unk_0202F1D4.h"
#include "unk_020366A0.h"
#include "overlay004/ov4_021D0D80.h"
#include "overlay061/ov61_0222AE60.h"
#include "overlay061/ov61_0222B008.h"
#include "overlay061/ov61_0222BC4C.h"
#include "overlay062/ov62_02248408.h"
#include "gds.h"

typedef int (* UnkFuncPtr_ov61_0222E48C)(UnkStruct_ov62_022349A8 *, UnkStruct_ov61_0222B138 *);

static int ov61_0222B138(UnkStruct_ov62_022349A8 * param0, UnkStruct_ov61_0222B138 * param1);
static int ov61_0222B14C(UnkStruct_ov62_022349A8 * param0, UnkStruct_ov61_0222B138 * param1);
static int ov61_0222B168(UnkStruct_ov62_022349A8 * param0, UnkStruct_ov61_0222B138 * param1);
static int ov61_0222B190(UnkStruct_ov62_022349A8 * param0, UnkStruct_ov61_0222B138 * param1);
static int ov61_0222B6D8(UnkStruct_ov62_022349A8 * param0);
static int ov61_0222B860(UnkStruct_ov62_022349A8 * param0);
static int ov61_0222BBE8(UnkStruct_ov62_022349A8 * param0);
static void ov61_0222BB54(UnkStruct_ov62_022349A8 * param0, Strbuf *param1);
static void ov61_0222BB60(UnkStruct_ov62_022349A8 * param0, int param1, int param2);
static int ov61_0222B960(UnkStruct_ov62_022349A8 * param0);
static void * ov61_0222BBF0(int param0);
static void ov61_0222BC40(void);
static BOOL ov61_0222B920(void * param0, void * param1);
static BOOL ov61_0222B924(void * param0, void * param1);
static BOOL ov61_0222B928(void * param0, void * param1);
static BOOL ov61_0222B954(void * param0, void * param1);
static BOOL ov61_0222B958(void * param0, void * param1);
static BOOL ov61_0222B95C(void * param0, void * param1);

static const UnkFuncPtr_ov61_0222E48C Unk_ov61_0222E48C[] = {
    ov61_0222B14C,
    ov61_0222B138,
    ov61_0222B168,
    ov61_0222B190,
    NULL
};

static const UnkFuncPtr_ov61_0222E48C Unk_ov61_0222E47C[] = {
    NULL
};

static const UnkFuncPtr_ov61_0222E48C * const Unk_ov61_0222E480[] = {
    NULL,
    Unk_ov61_0222E48C,
    Unk_ov61_0222E47C
};

int ov61_0222B008 (UnkStruct_ov62_022349A8 * param0, const UnkStruct_ov62_02241130 * param1)
{
    int v0;

    MI_CpuClear8(param0, sizeof(UnkStruct_ov62_022349A8));

    param0->unk_144 = param1->unk_04;
    param0->unk_00 = param1->unk_08;
    param0->unk_150 = param1->unk_0C;
    param0->unk_08 = param1->unk_3C;
    param0->unk_04 = param1->unk_38;
    param0->unk_14C = -1;
    param0->unk_3E8 = 23004;
    param0->unk_3EC = 23004;
    param0->unk_3B4 = Heap_AllocFromHeap(param1->unk_04, ov61_0222DE8C(-1));

    MI_CpuClear8(param0->unk_3B4, ov61_0222DE8C(-1));

    param0->unk_3F4 = MessageLoader_Init(0, 26, 695, param1->unk_04);
    param0->unk_3F8 = sub_0200B358(param1->unk_04);
    param0->unk_3FC = Strbuf_Init((16 * 8 * 2), param1->unk_04);
    param0->unk_18C = ov61_0222BBF0(param1->unk_04);
    param0->unk_0C.unk_00 = param1->unk_00;
    param0->unk_0C.unk_04 = GAME_VERSION;
    param0->unk_0C.unk_05 = GAME_LANGUAGE;

    v0 = ov61_0222DCDC(&param0->unk_0C);
    GF_ASSERT(v0 == 1);

    param0->unk_3C4 = 1;
    param0->unk_3B8 = 1;

    return 1;
}

void ov61_0222B0F0 (UnkStruct_ov62_022349A8 * param0)
{
    ov61_0222DCFC();

    param0->unk_3C4 = 0;

    Strbuf_Free(param0->unk_3FC);
    sub_0200B3F0(param0->unk_3F8);
    MessageLoader_Free(param0->unk_3F4);
    Heap_FreeToHeap(param0->unk_3B4);
    ov61_0222BC40();
    Heap_FreeToHeap(param0->unk_18C);
}

static int ov61_0222B138 (UnkStruct_ov62_022349A8 * param0, UnkStruct_ov61_0222B138 * param1)
{
    ov61_0222DCFC();
    param0->unk_3C4 = 0;
    return 1;
}

static int ov61_0222B14C (UnkStruct_ov62_022349A8 * param0, UnkStruct_ov61_0222B138 * param1)
{
    DWC_ClearError();
    DWC_CleanupInet();

    sub_0203848C();
    param0->unk_3C8 = 0;

    return 1;
}

static int ov61_0222B168 (UnkStruct_ov62_022349A8 * param0, UnkStruct_ov61_0222B138 * param1)
{
    int v0, v1;

    v0 = ov4_021D1F3C(-param0->unk_3E0, param0->unk_3E4);
    ov61_0222BB60(param0, v0, -param0->unk_3E0);

    return 1;
}

static int ov61_0222B190 (UnkStruct_ov62_022349A8 * param0, UnkStruct_ov61_0222B138 * param1)
{
    if ((coresys.padInput & PAD_BUTTON_A) || (coresys.padInput & PAD_BUTTON_B)) {
        ov61_0222BB54(param0, NULL);
        return 1;
    }

    return 0;
}

int ov61_0222B1B4 (UnkStruct_ov62_022349A8 * param0, UnkStruct_02030A80 * param1, UnkStruct_02029C68 * param2)
{
    if (ov61_0222BBBC(param0) == 0) {
        return 0;
    }

    ov61_0222AFA4(param0->unk_00, param1, &param0->unk_190.unk_00_val1.unk_00);
    ov61_0222AE60(param0->unk_00, param2, &param0->unk_190.unk_00_val1.unk_80);

    param0->unk_40E = 60;
    param0->unk_3E8 = 20000;

    return 1;
}

int ov61_0222B1FC (UnkStruct_ov62_022349A8 * param0, int param1)
{
    if (ov61_0222BBBC(param0) == 0) {
        return 0;
    }

    param0->unk_190.unk_21C.val2.unk_00 = param1;
    param0->unk_3E8 = 20001;

    return 1;
}

int ov61_0222B224 (UnkStruct_ov62_022349A8 * param0, int param1, UnkStruct_02030A80 * param2, const PCBoxes * param3, int param4)
{
    if (ov61_0222BBBC(param0) == 0) {
        return 0;
    }

    param0->unk_190.unk_21C.val1.unk_00 = param1;
    param0->unk_190.unk_21C.val1.unk_01 = param4;

    ov61_0222AFA4(param0->unk_00, param2, &param0->unk_190.unk_00_val2.unk_00);
    ov61_0222AE88(param0->unk_00, param3, param4, &param0->unk_190.unk_00_val2.unk_80, param0->unk_144);
    ov61_0222AF88(param0->unk_00, &param0->unk_190.unk_00_val2.unk_80, param1);

    param0->unk_40E = 60;
    param0->unk_3E8 = 21000;

    return 1;
}

int ov61_0222B290 (UnkStruct_ov62_022349A8 * param0, int param1)
{
    if (ov61_0222BBBC(param0) == 0) {
        return 0;
    }

    param0->unk_190.unk_21C.val1.unk_00 = param1;
    param0->unk_3E8 = 21001;

    return 1;
}

int ov61_0222B2B8 (UnkStruct_ov62_022349A8 * param0)
{
    if (ov61_0222BBBC(param0) == 0) {
        return 0;
    }

    param0->unk_3E8 = 22000;
    return 1;
}

int ov61_0222B2D8 (UnkStruct_ov62_022349A8 * param0, UnkStruct_02030A80 * param1, UnkStruct_ov61_0222B2D8 param2[])
{
    UnkStruct_02025E5C * v0;
    int v1;

    if (ov61_0222BBBC(param0) == 0) {
        return 0;
    }

    v0 = sub_02025E5C(param0->unk_00);
    MI_CpuCopy8(v0, &param0->unk_190.unk_00_val3.unk_08, sizeof(UnkStruct_ov62_0223D518_sub1_sub1));
    ov61_0222AFCC(param0->unk_00, param1, &param0->unk_190.unk_00_val3.unk_00);

    for (v1 = 0; v1 < 3; v1++) {
        param0->unk_190.unk_00_val3.unk_0C[v1] = param2[v1];
    }

    param0->unk_3E8 = 22001;
    return 1;
}

int ov61_0222B338 (UnkStruct_ov62_022349A8 * param0, UnkStruct_02030A80 * param1)
{
    UnkStruct_02030A80 * v0;

    if (ov61_0222BBBC(param0) == 0) {
        return 0;
    }

    GF_ASSERT((BattleRecording_SaveSize() - sizeof(u32)) == sizeof(UnkStruct_ov62_022349A8_sub3_sub3));
    GF_ASSERT(sizeof(UnkStruct_ov61_0222AFC0) == sizeof(UnkStruct_02030A80));

    param0->unk_190.unk_00_val4 = (UnkStruct_ov62_022349A8_sub3_sub3 *)sub_0202F27C();

    ov62_02248624(param0->unk_00);

    v0 = sub_0202FDE8();
    MI_CpuCopy8(param1, v0, sizeof(UnkStruct_ov61_0222AFC0));

    param0->unk_40E = 60;
    param0->unk_3E8 = 23000;

    return 1;
}

int ov61_0222B394 (UnkStruct_ov62_022349A8 * param0, u16 param1, u8 param2, u8 param3, u8 param4)
{
    if (ov61_0222BBBC(param0) == 0) {
        return 0;
    }

    MI_CpuClear8(&param0->unk_190.unk_00_val5, sizeof(UnkStruct_ov62_022349A8_sub3_sub4));

    param0->unk_190.unk_00_val5.unk_00 = param1;
    param0->unk_190.unk_00_val5.unk_02 = param2;
    param0->unk_190.unk_00_val5.unk_03 = param3;
    param0->unk_190.unk_00_val5.unk_04 = param4;
    param0->unk_190.unk_00_val5.unk_08 = 0x140;
    param0->unk_3F0 = 0;
    param0->unk_3E8 = 23001;

    return 1;
}

int ov61_0222B3EC (UnkStruct_ov62_022349A8 * param0)
{
    if (ov61_0222BBBC(param0) == 0) {
        return 0;
    }

    MI_CpuClear8(&param0->unk_190.unk_00_val5, sizeof(UnkStruct_ov62_022349A8_sub3_sub4));

    param0->unk_190.unk_00_val5.unk_00 = 0xffff;
    param0->unk_190.unk_00_val5.unk_02 = UnkEnum_0202F510_37;
    param0->unk_190.unk_00_val5.unk_03 = 0xff;
    param0->unk_190.unk_00_val5.unk_04 = 0xff;
    param0->unk_190.unk_00_val5.unk_08 = 0x140;
    param0->unk_3F0 = 0;
    param0->unk_3E8 = 23001;

    return 1;
}

int ov61_0222B44C (UnkStruct_ov62_022349A8 * param0)
{
    if (ov61_0222BBBC(param0) == 0) {
        return 0;
    }

    MI_CpuClear8(&param0->unk_190.unk_00_val5, sizeof(UnkStruct_ov62_022349A8_sub3_sub4));

    param0->unk_190.unk_00_val5.unk_00 = 0xffff;
    param0->unk_190.unk_00_val5.unk_02 = 0xff;
    param0->unk_190.unk_00_val5.unk_03 = 0xff;
    param0->unk_190.unk_00_val5.unk_04 = 0xff;
    param0->unk_190.unk_00_val5.unk_08 = 0x140;
    param0->unk_3F0 = 0;
    param0->unk_3E8 = 23001;

    return 1;
}

int ov61_0222B4A8 (UnkStruct_ov62_022349A8 * param0)
{
    if (ov61_0222BBBC(param0) == 0) {
        return 0;
    }

    MI_CpuClear8(&param0->unk_190.unk_00_val6, sizeof(UnkStruct_ov62_022349A8_sub3_sub5));
    param0->unk_190.unk_00_val6.unk_00 = 0x140;
    param0->unk_3F0 = 1;
    param0->unk_3E8 = 23001;

    return 1;
}

int ov61_0222B4E4 (UnkStruct_ov62_022349A8 * param0)
{
    if (ov61_0222BBBC(param0) == 0) {
        return 0;
    }

    MI_CpuClear8(&param0->unk_190.unk_00_val6, sizeof(UnkStruct_ov62_022349A8_sub3_sub5));

    param0->unk_190.unk_00_val6.unk_00 = 0x140;
    param0->unk_3F0 = 2;
    param0->unk_3E8 = 23001;

    return 1;
}

int ov61_0222B524 (UnkStruct_ov62_022349A8 * param0, u64 param1)
{
    if (ov61_0222BBBC(param0) == 0) {
        return 0;
    }

    param0->unk_190.unk_21C.val3.unk_00 = param1;
    param0->unk_3E8 = 23002;

    return 1;
}

int ov61_0222B550 (UnkStruct_ov62_022349A8 * param0, u64 param1)
{
    if (ov61_0222BBBC(param0) == 0) {
        return 0;
    }

    param0->unk_190.unk_21C.val3.unk_00 = param1;
    param0->unk_3E8 = 23003;

    return 1;
}

int ov61_0222B57C (UnkStruct_ov62_022349A8 * param0)
{
    int v0;

    if (param0->unk_3C4 == 1) {
        if (param0->unk_3E8 != 23004) {
            if (param0->unk_40E > 0) {
                param0->unk_40E--;
            } else {
                switch (ov61_0222DD08()) {
                case 1:
                case 7:
                case 8:
                case 9:
                    v0 = ov61_0222B6D8(param0);

                    if (v0 == 1) {
                        param0->unk_3E8 = 23004;
                    }
                    break;
                default:
                    break;
                }
            }
        }

        ov61_0222B860(param0);

        if (param0->unk_400.unk_0C != NULL) {
            if (param0->unk_400.unk_0C(param0, &param0->unk_400) == 1) {
                param0->unk_400.unk_0C = NULL;

                if (param0->unk_400.unk_00 != NULL) {
                    param0->unk_400.unk_00(param0->unk_150.unk_00, &param0->unk_17C);
                    param0->unk_400.unk_00 = NULL;
                }

                MI_CpuClear8(&param0->unk_400, sizeof(UnkStruct_ov61_0222B920));
                param0->unk_3EC = 23004;
            }
        }
    }

    if (Unk_ov61_0222E480[param0->unk_3BC] != NULL) {
        int v1;

        v1 = Unk_ov61_0222E480[param0->unk_3BC][param0->unk_3C0](param0, &param0->unk_3CC);

        switch (v1) {
        case 0:
            break;
        case 1:
            MI_CpuClear8(&param0->unk_3CC, sizeof(UnkStruct_ov61_0222B138));
            param0->unk_3C0++;
            MI_CpuClear8(&param0->unk_3CC, sizeof(UnkStruct_ov61_0222B138));

            if (Unk_ov61_0222E480[param0->unk_3BC][param0->unk_3C0] == NULL) {
                param0->unk_3C0 = 0;
                param0->unk_3BC = 0;
            }
            break;
        case 2:
            MI_CpuClear8(&param0->unk_3CC, sizeof(UnkStruct_ov61_0222B138));
            param0->unk_3C0 = 0;
            break;
        }
    }

    return 1;
}

static int ov61_0222B6D8 (UnkStruct_ov62_022349A8 * param0)
{
    int v0 = 0;

    switch (param0->unk_3E8) {
    case 20000:
        v0 = ov61_0222DD30(&param0->unk_190.unk_00_val1, param0->unk_3B4);
        break;
    case 20001:
        v0 = ov61_0222DD8C(param0->unk_190.unk_21C.val2.unk_00, param0->unk_3B4);
        break;
    case 21000:
        v0 = ov61_0222DDCC(param0->unk_190.unk_21C.val1.unk_00, &param0->unk_190.unk_00_val2, param0->unk_3B4);

        if (v0 == 1) {
            (void)0;
        }
        break;
    case 21001:
        v0 = ov61_0222DE34(param0->unk_190.unk_21C.val1.unk_00, param0->unk_3B4);

        if (v0 == 1) {
            (void)0;
        }
        break;
    case 22000:
        v0 = ov61_0222DE98(param0->unk_3B4);

        if (v0 == 1) {
            (void)0;
        }
        break;
    case 22001:
        v0 = ov61_0222DEB8(&param0->unk_190.unk_00_val3, param0->unk_3B4);

        if (v0 == 1) {
            (void)0;
        }
        break;
    case 23000:
        v0 = ov61_0222DF08(param0->unk_190.unk_00_val4, param0->unk_3B4);

        if (v0 == 1) {
            (void)0;
        }
        break;
    case 23001:
        switch (param0->unk_3F0) {
        case 0:
            v0 = ov61_0222DF60(&param0->unk_190.unk_00_val5, param0->unk_3B4);
            break;
        case 1:
            v0 = ov61_0222DFA8(&param0->unk_190.unk_00_val6, param0->unk_3B4);
            break;
        case 2:
            v0 = ov61_0222E000(
                &param0->unk_190.unk_00_val6, param0->unk_3B4);
            break;
        }

        if (v0 == 1) {
            (void)0;
        }
        break;
    case 23002:
        v0 = ov61_0222E058(param0->unk_190.unk_21C.val3.unk_00, 0x140, param0->unk_3B4);

        if (v0 == 1) {
            (void)0;
        }
        break;
    case 23003:
        v0 = ov61_0222E08C(param0->unk_190.unk_21C.val3.unk_00, param0->unk_3B4);

        if (v0 == 1) {
            (void)0;
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    if (v0 == 1) {
        param0->unk_3EC = param0->unk_3E8;
    } else {
        (void)0;
    }

    return v0;
}

static int ov61_0222B860 (UnkStruct_ov62_022349A8 * param0)
{
    if (param0->unk_3EC == 23004) {
        return 1;
    }

    param0->unk_148 = ov61_0222DD08();

    if (param0->unk_148 != param0->unk_14C) {
        switch (param0->unk_148) {
        case 0:
            break;
        case 1:
            break;
        case 2:
            break;
        case 3:
            break;
        case 4:
            break;
        case 5:
            break;
        case 6:
            break;
        case 7:
            param0->unk_17C.unk_04 = 1;
            param0->unk_17C.unk_08 = 0;
            param0->unk_17C.unk_0C = 7;
            param0->unk_17C.unk_00 = 1;
            param0->unk_400.unk_0C = ov61_0222B95C;
            break;
        case 8:
            param0->unk_400.unk_0C = ov61_0222B920;
            ov61_0222B960(param0);
            break;
        case 9:
            param0->unk_17C.unk_04 = 0;
            param0->unk_17C.unk_08 = 0;
            param0->unk_17C.unk_0C = ov61_0222DD24();
            param0->unk_17C.unk_00 = 1;
            param0->unk_400.unk_0C = ov61_0222B95C;
            break;
        }

        param0->unk_14C = param0->unk_148;
    }

    return 1;
}

static BOOL ov61_0222B920 (void * param0, void * param1)
{
    UnkStruct_ov62_022349A8 * v0 = param0;
    UnkStruct_ov61_0222B920 * v1 = param1;
    return 1;
}

static BOOL ov61_0222B924 (void * param0, void * param1)
{
    return 1;
}

static BOOL ov61_0222B928 (void * param0, void * param1)
{
    UnkStruct_ov62_022349A8 * v0 = param0;
    UnkStruct_ov61_0222B920 * v1 = param1;
    UnkStruct_ov61_0222B960 * v2;
    UnkStruct_ov61_0222BDC8 * v3;
    int v4;

    v2 = ov61_0222DE80();
    v3 = (UnkStruct_ov61_0222BDC8 *)(v2->unk_04);
    v4 = ov62_02248658(v0->unk_00, v3->unk_00, &v1->unk_04, &v1->unk_06);

    if ((v4 == 2) || (v4 == 3)) {
        return 1;
    }

    return 0;
}

static BOOL ov61_0222B954 (void * param0, void * param1)
{
    return 1;
}

static BOOL ov61_0222B958 (void * param0, void * param1)
{
    return 1;
}

static BOOL ov61_0222B95C (void * param0, void * param1)
{
    UnkStruct_ov62_022349A8 * v0 = param0;
    UnkStruct_ov61_0222B920 * v1 = param1;

    return 1;
}

static int ov61_0222B960 (UnkStruct_ov62_022349A8 * param0)
{
    UnkStruct_ov61_0222B960 * v0;
    int v1;
    int v2 = 1;

    v0 = ov61_0222DE80();
    v1 = ov61_0222DE74();

    GF_ASSERT(param0->unk_3EC == v0->unk_00);

    param0->unk_400.unk_00 = NULL;

    switch (v0->unk_00) {
    case 20000:
        v2 = ov61_0222BC4C(param0, v0);
        param0->unk_400.unk_00 = param0->unk_150.unk_04;

        if (v2 == 0) {
            param0->unk_400.unk_0C = ov61_0222B954;
        }
        break;
    case 20001:
        v2 = ov61_0222BC70(param0, v0);
        param0->unk_400.unk_00 = param0->unk_150.unk_08;
        break;
    case 21000:
        v2 = ov61_0222BCD0(param0, v0);
        param0->unk_400.unk_00 = param0->unk_150.unk_0C;

        if (v2 == 0) {
            param0->unk_400.unk_0C = ov61_0222B958;
        }
        break;
    case 21001:
        v2 = ov61_0222BCF8(param0, v0);
        param0->unk_400.unk_00 = param0->unk_150.unk_10;
        break;
    case 22000:
        v2 = ov61_0222BD64(param0, v0);
        param0->unk_400.unk_00 = param0->unk_150.unk_14;
        break;
    case 22001:
        v2 = ov61_0222BD88(param0, v0);
        param0->unk_400.unk_00 = param0->unk_150.unk_18;
        break;
    case 23000:
        v2 = ov61_0222BDC8(param0, v0);
        param0->unk_400.unk_00 = param0->unk_150.unk_1C;

        if (v2 == 0) {
            param0->unk_400.unk_0C = ov61_0222B924;
        } else {
            param0->unk_400.unk_0C = ov61_0222B928;
        }
        break;
    case 23001:
        v2 = ov61_0222BE00(param0, v0);
        param0->unk_400.unk_00 = param0->unk_150.unk_20;
        break;
    case 23002:
        v2 = ov61_0222BEB8(param0, v0);
        param0->unk_400.unk_00 = param0->unk_150.unk_24;
        break;
    case 23003:
        v2 = ov61_0222BF24(param0, v0);
        param0->unk_400.unk_00 = param0->unk_150.unk_28;
        break;
    case 0:
    default:
        break;
    }

    if (v2 == 0) {
        param0->unk_17C.unk_04 = 2;
        param0->unk_17C.unk_08 = v0->unk_00;
        param0->unk_17C.unk_0C = v0->unk_02;
        param0->unk_17C.unk_00 = 1;
    } else {
        param0->unk_17C.unk_00 = 0;
    }

    return v2;
}

BOOL ov61_0222BB48 (UnkStruct_ov62_022349A8 * param0, UnkStruct_ov62_0223CAA4 ** param1)
{
    *param1 = &param0->unk_17C;
    return param0->unk_17C.unk_00;
}

static void ov61_0222BB54 (UnkStruct_ov62_022349A8 * param0, Strbuf *param1)
{
    param0->unk_04(param0->unk_08, param1);
}

static void ov61_0222BB60 (UnkStruct_ov62_022349A8 * param0, int param1, int param2)
{
    int v0;
    Strbuf* v1;

    if (param1 != -1) {
        v0 = 0 + param1;
    } else {
        v0 = 11;
    }

    sub_0200B60C(param0->unk_3F8, 0, param2, 5, 2, 1);
    v1 = MessageLoader_GetNewStrbuf(param0->unk_3F4, v0);
    sub_0200C388(param0->unk_3F8, param0->unk_3FC, v1);
    Strbuf_Free(v1);
    ov61_0222BB54(param0, param0->unk_3FC);
}

BOOL ov61_0222BBBC (UnkStruct_ov62_022349A8 * param0)
{
    if ((ov61_0222BBE8(param0) == 0) && (param0->unk_3E8 == 23004) && (param0->unk_3EC == 23004)) {
        return 1;
    }

    return 0;
}

static int ov61_0222BBE8 (UnkStruct_ov62_022349A8 * param0)
{
    return param0->unk_3BC;
}

static OSHeapHandle Unk_ov61_0222E760;

static void * ov61_0222BBF0 (int param0)
{
    void * v0;
    void * v1;
    void * v2;
    int v3 = 0x2000;

    v0 = Heap_AllocFromHeap(param0, v3);
    v2 = v0;
    v1 = (void *)((u32)v0 + v3);
    v0 = OS_InitAlloc(OS_ARENA_MAIN, v0, v1, 1);

    OS_SetArenaLo(OS_ARENA_MAIN, v0);

    v0 = (void *)(((u32)(v0) + 32 - 1) & ~(32 - 1));
    v1 = (void *)(((u32)(v1) + 32 - 1) & ~(32 - 1));

    Unk_ov61_0222E760 = OS_CreateHeap(OS_ARENA_MAIN, v0, v1);
    OS_SetCurrentHeap(OS_ARENA_MAIN, Unk_ov61_0222E760);

    return v2;
}

static void ov61_0222BC40 (void)
{
    OS_ClearAlloc(OS_ARENA_MAIN);
}
