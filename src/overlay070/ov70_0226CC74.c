#include "overlay070/ov70_0226CC74.h"

#include <nitro.h>
#include <string.h>

#include "overlay063/ov63_0222BE18.h"
#include "overlay066/ov66_0222DDF0.h"
#include "overlay066/struct_ov66_0222DFF8_decl.h"
#include "overlay070/ov70_0225C9B4.h"
#include "overlay070/ov70_0225D9A4.h"
#include "overlay070/ov70_02262DA8.h"
#include "overlay070/struct_ov70_0225CA20_decl.h"
#include "overlay070/struct_ov70_0225CC54_decl.h"
#include "overlay070/struct_ov70_0225DEE8_decl.h"
#include "overlay070/struct_ov70_02263344_decl.h"

#include "strbuf.h"
#include "unk_02005474.h"

typedef struct {
    u32 unk_00;
} UnkStruct_ov70_0226CC74;

BOOL ov70_0226CC74(UnkStruct_ov70_02263344 *param0, UnkStruct_ov70_0225DEE8 *param1, u32 param2)
{
    UnkStruct_ov70_0226CC74 *v0;
    UnkStruct_ov66_0222DFF8 *v1;
    UnkStruct_ov70_0225CA20 *v2;
    UnkStruct_ov70_0225CC54 *v3;
    UnkStruct_ov70_0225CC54 *v4;
    Strbuf *v5;

    v0 = ov70_02262E80(param0);
    v1 = ov70_0225DEE8(param1);
    v2 = ov70_0225DEF0(param1);
    v3 = ov70_0225CCB0(v2);
    v4 = ov70_0225CCAC(v2);

    switch (ov70_02262E84(param0)) {
    case 0:
        v0 = ov70_02262E3C(param0, sizeof(UnkStruct_ov70_0226CC74));
        Sound_PlayEffect(1500);

        {
            u32 v6;

            v6 = ov70_0225CD60(v4, 6);
            v6 = ov63_0222C0AC(v6);

            ov70_0225CDEC(v2, v3, 0);
            ov70_0225D030(v3, 0);
            ov70_0225D060(v3, v6);
        }

        if (ov66_0222E12C(v1)) {
            v5 = ov70_0225E20C(param1, 1, 3);
            v0->unk_00 = 4;
            ov70_0225DF8C(param1, v5);
            ov70_02262E88(param0, 5);
            break;
        }

        if (ov66_0222E19C(v1) == 1) {
            v5 = ov70_0225E20C(param1, 1, 88);
            v0->unk_00 = 4;
            ov70_0225DF8C(param1, v5);
            ov70_02262E88(param0, 5);
            break;
        } else {
            if (ov66_0222E0DC(v1) == 1) {
                v5 = ov70_0225E20C(param1, 1, 87);
                v0->unk_00 = 4;

                ov70_0225DF8C(param1, v5);
                ov70_02262E88(param0, 5);
                break;
            } else {
                v5 = ov70_0225E20C(param1, 1, 81);
                v0->unk_00 = 1;

                ov70_0225DF8C(param1, v5);
                ov70_02262E88(param0, 5);
            }
        }
        break;
    case 1:
        ov70_0225E164(param1);
        ov70_02262E88(param0, 2);
        break;
    case 2: {
        int v7;

        v7 = ov70_0225E1C4(param1);

        switch (v7) {
        case 0:
            ov70_02262E88(param0, 3);
            ov70_0225E1F8(param1);
            break;
        case 1:
            ov70_02262E88(param0, 4);
            ov70_0225E1F8(param1);
            break;
        default:
        case 2:
            break;
        }
    } break;
    case 3:
        v5 = ov70_0225E20C(param1, 1, 85);
        v0->unk_00 = 4;

        ov70_0225DF8C(param1, v5);
        ov70_02262E88(param0, 5);
        break;
    case 4:
        ov70_0225DFEC(param1);
        ov70_0225E1F8(param1);
        ov70_0225CDEC(v2, v4, 1);
        ov70_02262E64(param0);
        ov70_0225D030(v3, 1);
        ov70_0225CDAC(v2, v3, 0, 1);
        return 1;
    case 5:
        if (ov70_0225DFAC(param1) == 1) {
            ov70_02262E88(param0, v0->unk_00);
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}
