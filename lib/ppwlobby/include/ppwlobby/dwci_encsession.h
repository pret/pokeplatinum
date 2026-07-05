#ifndef PPWLOBBY_ENCSESSION_H
#define PPWLOBBY_ENCSESSION_H

#include <dwc.h>
#include <enc/dwc_encsession.h>
#include <vector>

#include "ilobby/ov66_022364B0.h"

typedef void (*UnkCallback_ov66_0225B6D4)(BOOL, const u8 *, u32, void *);

class UnkClass_ov66_0225B6D4 : public UnkClass_ov66_0225B6E4 {
    static UnkClass_ov66_0225B6D4 *Unk_ov66_0225B6D4;
    static UnkClass_ov66_0225B6D4 *Unk_ov66_0225B6D8;

    u32 unk_00;
    enum UnkEnum_ov66_02258338 unk_04;
    PPWString unk_08;
    PPWString unk_14;
    s32 unk_20;
    std::vector<u8, PPW_Allocator<u8> > unk_24;
    UnkCallback_ov66_0225B6D4 unk_30;
    void *unk_34;
    BOOL unk_38;

    UnkClass_ov66_0225B6D4(enum UnkEnum_ov66_02258338 param0, const char *param1, const char *param2, s32 param3, const u8 *param4, u32 param5, u32 param6, UnkCallback_ov66_0225B6D4 param7, void *param8, BOOL param9)
        : unk_00(param6)
        , unk_04(param0)
        , unk_08(param1)
        , unk_14(param2)
        , unk_20(param3)
        , unk_24()
        , unk_30(param7)
        , unk_34(param8)
        , unk_38(param9)
    {
        unk_24.assign(param4, param4 + param5);
    }

    virtual ~UnkClass_ov66_0225B6D4()
    {
    }

    BOOL UnkClass_ov66_0225B6D4_InlineFunc0()
    {
        DWCi_EncSessionInitialize(unk_04, unk_08.c_str());

        int v0;
        if (unk_38) {
            v0 = DWCi_EncSessionGetReuseHashAsync(unk_14.c_str(), unk_20, (void *)ov66_022364B0(unk_24), unk_24.size(), NULL);
        } else {
            v0 = DWCi_EncSessionGetAsync(unk_14.c_str(), unk_20, (void *)ov66_022364B0(unk_24), unk_24.size(), NULL);
        }

        if (v0 != 0) {
            DWCi_EncSessionShutdown();
            return FALSE;
        } else {
            return TRUE;
        }
    }

    BOOL UnkClass_ov66_0225B6D4_InlineFunc1()
    {
        u32 v0 = 0;
        int v1 = DWCi_EncSessionProcess();

        switch (v1) {
        case 8: {
            void *v2 = DWCi_EncSessionGetResponse(&v0);
            void *v3 = DWC_Alloc(DWC_ALLOCTYPE_AUTH, v0);

            if (v3) {
                MI_CpuCopy8(v2, v3, v0);
            }

            if (v3) {
                UnkClass_ov66_0225B6D4_InlineFunc2(TRUE, (u8 *)v3, v0, unk_34);
            } else {
                UnkClass_ov66_0225B6D4_InlineFunc2(FALSE, NULL, 0, unk_34);
            }

            if (v3) {
                DWC_Free(DWC_ALLOCTYPE_AUTH, v3, 0);
                v3 = NULL;
            }

            return TRUE;
        }
        case 1:
            DWC_ClearError();

            if (--unk_00 > 0) {
                DWCi_EncSessionShutdown();
                if (UnkClass_ov66_0225B6D4_InlineFunc0()) {
                    return FALSE;
                }
            }

            UnkClass_ov66_0225B6D4_InlineFunc2(FALSE, NULL, 0, unk_34);
            return TRUE;
        case 0:
            DWC_ClearError();
            UnkClass_ov66_0225B6D4_InlineFunc2(FALSE, NULL, 0, unk_34);
            return TRUE;
        default:
            return FALSE;
        }
    }

    void UnkClass_ov66_0225B6D4_InlineFunc2(BOOL param0, const u8 *param1, u32 param2, void *param3)
    {
        DWCi_EncSessionShutdown();

        std::swap(Unk_ov66_0225B6D8, Unk_ov66_0225B6D4);
        unk_30(param0, param1, param2, param3);
    }

public:
    static BOOL UnkClass_ov66_0225B6D4_InlineFunc3(enum UnkEnum_ov66_02258338 param0, const char *param1, const char *param2, s32 param3, const u8 *param4, u32 param5, u32 param6, UnkCallback_ov66_0225B6D4 param7, void *param8, BOOL param9 = FALSE)
    {
        if (Unk_ov66_0225B6D4) {
            return FALSE;
        }

        Unk_ov66_0225B6D4 = new UnkClass_ov66_0225B6D4(param0, param1, param2, param3, param4, param5, param6, param7, param8, param9);

        BOOL v0 = Unk_ov66_0225B6D4->UnkClass_ov66_0225B6D4_InlineFunc0();
        if (!v0 && Unk_ov66_0225B6D4) {
            delete Unk_ov66_0225B6D4;
            Unk_ov66_0225B6D4 = NULL;
        }

        return v0;
    }

    static BOOL UnkClass_ov66_0225B6D4_InlineFunc4()
    {
        if (Unk_ov66_0225B6D4) {
            if (Unk_ov66_0225B6D4->UnkClass_ov66_0225B6D4_InlineFunc1() && Unk_ov66_0225B6D8) {
                delete Unk_ov66_0225B6D8;
                Unk_ov66_0225B6D8 = NULL;
            }
            return TRUE;
        } else {
            return FALSE;
        }
    }
};

#endif // PPWLOBBY_ENCSESSION_H
