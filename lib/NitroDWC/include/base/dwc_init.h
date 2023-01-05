#ifndef DWC_INIT_H_
#define DWC_INIT_H_

#ifdef __cplusplus
extern "C" {
#endif

enum {
    DWC_INIT_RESULT_NOERROR, DWC_INIT_RESULT_CREATE_USERID, DWC_INIT_RESULT_DESTROY_USERID, DWC_INIT_RESULT_DESTROY_OTHER_SETTING, DWC_INIT_RESULT_LAST, DWC_INIT_RESULT_DESTORY_USERID = DWC_INIT_RESULT_DESTROY_USERID, DWC_INIT_RESULT_DESTORY_OTHER_SETTING = DWC_INIT_RESULT_DESTROY_OTHER_SETTING
};

extern int DWC_Init(void * work);
extern u64 DWC_GetAuthenticatedUserId(void);
extern void DWC_Debug_DWCInitError(void * work, int dwc_init_error);

#ifdef __cplusplus
}
#endif

#endif
