
#ifndef NITROWIFI_WCM_CPSIF_H_
#define NITROWIFI_WCM_CPSIF_H_

#ifdef __cplusplus

extern "C" {
#endif


#include <nitro/types.h>




#define WCM_CPSIF_RESULT_BEFORE_INIT    (-1)    
#define WCM_CPSIF_RESULT_ILLEGAL_PARAM  (-2)    
#define WCM_CPSIF_RESULT_IN_IRQ_MODE    (-3)    
#define WCM_CPSIF_RESULT_NO_CONNECTION  (-4)    
#define WCM_CPSIF_RESULT_SEND_FAILURE   (-5)    




typedef void (*WCMRecvInd) (const u8*srcAddr, const u8*dstAddr, const u8*buf, s32 len);




void    WCM_SetRecvDCFCallback(WCMRecvInd callback);


u8*     WCM_GetApMacAddress(void);


u8*     WCM_GetApEssid(u16* length);


s32     WCM_SendDCFData(const u8* dstAddr, const u8* buf, s32 len);


s32     WCM_SendDCFDataEx(const u8* dstAddr, const u8* header, s32 headerLen,
                          const u8* body, s32 bodyLen);


#ifdef __cplusplus

}       
#endif

#endif 


