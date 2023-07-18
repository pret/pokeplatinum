#include <base/dwc_init.h>
#include <base/dwc_report.h>
#include <bm/dwc_bm_init.h>
#include <bm/util_wifiidtool.h>
#include <dwc_version.h>
#include <nitro.h>

#include <nitro/version_begin.h>
static char id_string [] = SDK_MIDDLEWARE_STRING("NINTENDO", DWC_VERSION_STRING);
#include <nitro/version_end.h>

static char s_work[0x400] ATTRIBUTE_ALIGN(32);

extern BOOL DWCi_AUTH_MakeWiFiID(void * work);
extern BOOL DWCi_BACKUPlInit(void * work);
extern BOOL DWCi_BACKUPlRead(void * mem);
extern BOOL DWCi_BACKUPlWritePage(const void * data, const BOOL * page, void * work);

int DWC_Init (void * work) {
    int ret;
    BOOL created = FALSE;

    SDK_USING_MIDDLEWARE(id_string);
    SDK_ASSERTMSG(((u32)work & 0x1f) == 0, "work must be 32bytes alignment - %p\n", work);

    ret = DWC_BM_Init(work);

    if (DWC_Auth_CheckWiFiIDNeedCreate()) {
        DWC_Printf(DWC_REPORTFLAG_INFO, "Create UserID\n");
        DWCi_AUTH_MakeWiFiID(work);
        created = TRUE;
    } else {
        DWC_Printf(DWC_REPORTFLAG_INFO, "Read UserID from DS\n");
    }

    if (ret < 0) {
        if (created) {
            return DWC_INIT_RESULT_DESTROY_USERID;
        } else {
            return DWC_INIT_RESULT_DESTROY_OTHER_SETTING;
        }
    } else if (created) {
        return DWC_INIT_RESULT_CREATE_USERID;
    }
    return DWC_INIT_RESULT_NOERROR;
}

u64 DWC_GetAuthenticatedUserId (void) {
    DWCAuthWiFiId wifiid;

    DWC_Auth_GetId(&wifiid);
    return wifiid.uId;
}

void DWC_Debug_DWCInitError (void * work, int dwc_init_error) {
    BOOL needCrc = FALSE;
    int crcPage;

    if (dwc_init_error == DWC_INIT_RESULT_NOERROR) {
        return;
    }

    DWCi_BACKUPlInit(work);

    if (dwc_init_error == DWC_INIT_RESULT_CREATE_USERID) {
        DWCi_BACKUPlRead(s_work);
        MI_CpuClear8(&s_work[0xf0], 10);
        s_work[0xf0 + 0x0a] &= ~0x3f;
        needCrc = TRUE;
        crcPage = 0;
    } else if (dwc_init_error == DWC_INIT_RESULT_DESTROY_USERID) {
        DWCi_BACKUPlRead(s_work);
        MI_CpuClear8(&s_work[0x100 + 0xf0], 10);
        s_work[0x100 + 0xf0 + 0x0a] &= ~0x3f;
        s_work[0x100 + 0xef] = 1;
        needCrc = TRUE;
        crcPage = 1;
    }
    if (needCrc) {
        u16 hash;
        BOOL page[4] = {FALSE, FALSE, FALSE, FALSE};
        MATHCRC16Table crc16_tbl;

        MATH_CRC16InitTable(&crc16_tbl);
        hash = MATH_CalcCRC16(&crc16_tbl, (u16 *)&s_work[crcPage * 0x100], 0xFE);
        *(u16 *)(&s_work[crcPage * 0x100 + 0xFE]) = hash;
        page[crcPage] = TRUE;
        DWCi_BACKUPlWritePage(s_work, page, work);
    }
    if ((dwc_init_error == DWC_INIT_RESULT_DESTROY_USERID) ||
        (dwc_init_error == DWC_INIT_RESULT_DESTROY_OTHER_SETTING)) {
        BOOL page[4] = {TRUE, FALSE, FALSE, FALSE};

        MI_CpuClear8(s_work, sizeof(s_work));
        DWCi_BACKUPlWritePage(s_work, page, work);
    }
}
