#ifndef __SOAP_H__
#define __SOAP_H__

#if defined(__cplusplus)
extern "C" {
#endif

#include "gs/nonport.h"
#include "gsoap/stdsoap2.h"

#define SOAP_SNSYSTEM_REGTHREADERROR 253
#define SOAP_TIMEDOUT 254
#define SOAP_CANCELED 255

typedef gsi_i32 GSSoapResult;
typedef int (* GSSoapFunc)(struct soap * theSoap, const char * theURL, const char * theService, void * theRequestData, void * theResponseData);
typedef void (* GSSoapCallbackFunc)(GSSoapResult theSoapResult, void * theRequestData, void * theResponseData, void * theUserData);

typedef struct {
    GSSoapFunc mSoapFunc;
    GSSoapCallbackFunc mCallbackFunc;
    const char * mURL;
    const char * mService;
    void * mNamespaces;
    void * mRequestData;
    void * mResponseData;
    void * mUserData;
    gsi_time mSoapTimeoutMs;
    gsi_i32 mIsRunning;
    gsi_i32 mIsCanceled;
    GSIThreadID mThreadID;
    GSISemaphoreID mShutdownSemaphoreID;
    GSSoapResult mSoapResult;
} GSSoapTask;

void gsiExecuteSoap(GSSoapFunc theFunc, const char * theURL, const char * theService, void * theNamespaces, void * theRequestData, void * theResponseData, GSSoapCallbackFunc theCallbackFunc, gsi_time theTimeoutMs, void * theUserData);

#if defined(__cplusplus)
}
#endif

#endif
