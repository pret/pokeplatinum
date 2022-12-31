#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_020298B0_decl.h"

#include "struct_defs/struct_02013A04_t.h"
#include "struct_defs/struct_0205AA50.h"
#include "overlay023/struct_ov23_02248D20.h"
#include "overlay023/funcptr_ov23_02248D20.h"
#include "overlay084/struct_ov84_02240FA8.h"

#include "unk_0200112C.h"
#include "unk_02005474.h"
#include "unk_02013A04.h"
#include "unk_020149F0.h"
#include "unk_02017E74.h"
#include "unk_0202854C.h"
#include "overlay023/ov23_02248C08.h"

UnkStruct_ov23_02248D20 * ov23_02248C08 (UnkStruct_ov84_02240FA8 * param0, u16 param1, u16 param2, u8 param3, UnkFuncPtr_ov23_02248D20 param4, UnkStruct_020298B0 * param5, BOOL param6)
{
    UnkStruct_ov23_02248D20 * v0 = (UnkStruct_ov23_02248D20 *)sub_02018144(param3, sizeof(UnkStruct_ov23_02248D20));

    MI_CpuClear8(v0, sizeof(UnkStruct_ov23_02248D20));

    v0->unk_00 = param4;

    if (v0->unk_00) {
        v0->unk_04 = param5;
        v0->unk_1E = param6;
        v0->unk_10 = sub_020149F0(param3);

        sub_02014A40(v0->unk_10, (u32)(((8 & 0xff) << 16) | ((9 & 0xff) << 8) | ((15 & 0xff) << 0)));

        v0->unk_1D = param3;

        {
            UnkStruct_02013A04 * v1 = sub_02013A04(param0->unk_10, v0->unk_1D);
            int v2;

            for (v2 = 0; v2 < param0->unk_10; v2++) {
                sub_02013A90(v1, &param0->unk_00[v2]);
            }

            param0->unk_00 = v1;
            v0->unk_08 = v1;
        }
    }

    v0->unk_20 = (param1 + param2);
    v0->unk_0C = sub_0200112C(param0, param1, param2, param3);

    return v0;
}

static void ov23_02248CA4 (u16 param0, u16 param1, UnkStruct_ov23_02248D20 * param2)
{
    u16 v0 = param2->unk_14 + param2->unk_16;
    u16 v1 = sub_02001504(param2->unk_0C, 3);

    if ((param2->unk_18 != param0) || (param2->unk_1A != param1)) {
        param2->unk_18 = param0;
        param2->unk_1A = param1;

        if (((param0 + v1) < v0) || (param0 > v0)) {
            return;
        }
    } else {
        return;
    }

    {
        int v2 = sub_02001504(param2->unk_0C, 7);
        u8 v3 = sub_02001504(param2->unk_0C, 9);
        int v4 = (v0 - param0) * v3 + sub_02001504(param2->unk_0C, 8);
        UnkStruct_0205AA50 * v5 = (UnkStruct_0205AA50 *)sub_02001504(param2->unk_0C, 18);

        sub_02014A58(param2->unk_10, v5, v2, v4);
    }
}

u32 ov23_02248D20 (UnkStruct_ov23_02248D20 * param0)
{
    UnkStruct_0200112C * v0 = param0->unk_0C;
    u16 v1, v2, v3;
    int v4, v5;
    u32 v6;
    UnkStruct_02013A04 * v7;

    if (param0->unk_00) {
        int v8 = sub_02001504(v0, 2);

        sub_020014DC(v0, &v1, &v2);

        if (param0->unk_1C) {
            ov23_02248CA4(v1, v2, param0);

            if ((Unk_021BF67C.unk_48 & PAD_BUTTON_A) || (Unk_021BF67C.unk_48 & PAD_BUTTON_SELECT)) {
                sub_02005748(1500);

                if (v1 + v2 == v8 - 1) {
                    return 0xffffffff;
                }

                if (v1 + v2 == param0->unk_14 + param0->unk_16) {
                    return 0xffffffff;
                }

                param0->unk_00(param0->unk_04, param0->unk_14 + param0->unk_16, v1 + v2);

                v7 = sub_02013A04(v8, param0->unk_1D);
                v5 = 0;

                for (v4 = 0; v4 < v8; v4++) {
                    if (v4 == (param0->unk_14 + param0->unk_16)) {
                        v5++;
                    } else {
                        sub_02013A90(v7, &param0->unk_08[v5]);
                        v5++;
                    }

                    if ((v4) == (v1 + v2)) {
                        sub_02013A90(v7, &param0->unk_08[param0->unk_14 + param0->unk_16]);
                    }
                }

                if (param0->unk_1E) {
                    int v9;

                    for (v4 = 0; v4 < v8 - 1; v4++) {
                        int v10;
                        int v11 = sub_02028AFC(param0->unk_04, v4);

                        if (!v11) {
                            v10 = 1;
                        } else {
                            v10 = 0;
                        }

                        v9 = (v4 << 1) + v10;
                        v7[v4].unk_04 = v9;
                    }

                    v9 = (v4 << 1) + 1;
                    v7[v4].unk_04 = v9;
                } else {
                    for (v4 = 0; v4 < v8 - 1; v4++) {
                        v7[v4].unk_04 = v4;
                    }
                }

                sub_020181C4(param0->unk_08);
                param0->unk_08 = v7;

                sub_020015CC(v0, v7);
                param0->unk_1C = 0;

                sub_020013AC(v0);
                return 0xffffffff;
            }
        } else {
            if (Unk_021BF67C.unk_48 & PAD_BUTTON_SELECT) {
                sub_02005748(1500);

                if (v1 + v2 == v8 - 1) {
                    return 0xffffffff;
                }

                param0->unk_14 = v1;
                param0->unk_16 = v2;
                param0->unk_18 = v1;
                param0->unk_1A = v2;
                param0->unk_1C = 1;

                return 0xffffffff;
            }
        }
    }

    v6 = sub_02001288(v0);
    v3 = param0->unk_20;

    sub_020014D0(v0, &param0->unk_20);

    if (v3 != param0->unk_20) {
        sub_02005748(1500);
    }

    switch (v6) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
        sub_02005748(1500);
        break;
    default:
        sub_02005748(1500);
        break;
    }

    return v6;
}

void ov23_02248EF8 (UnkStruct_ov23_02248D20 * param0, u16 * param1, u16 * param2)
{
    UnkStruct_0200112C * v0 = param0->unk_0C;

    sub_02001384(v0, param1, param2);

    if (param0->unk_00) {
        sub_02014A20(param0->unk_10);
        sub_020181C4(param0->unk_08);
    }

    sub_020181C4(param0);
}
