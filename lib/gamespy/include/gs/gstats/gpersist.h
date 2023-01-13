#ifndef _GPERSIST_H_
#define _GPERSIST_H_

#include "gstats.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifndef GSI_UNICODE
#define GenerateAuth GenerateAuthA
#define PreAuthenticatePlayerCD PreAuthenticatePlayerCDA
#define GetProfileIDFromCD GetProfileIDFromCDA
#define GetPersistDataValues GetPersistDataValuesA
#define GetPersistDataValuesModified GetPersistDataValuesModifiedA
#define SetPersistDataValues SetPersistDataValuesA
#else
#define GenerateAuth GenerateAuthW
#define PreAuthenticatePlayerCD PreAuthenticatePlayerCDW
#define GetProfileIDFromCD GetProfileIDFromCDW
#define GetPersistDataValues GetPersistDataValuesW
#define GetPersistDataValuesModified GetPersistDataValuesModifiedW
#define SetPersistDataValues SetPersistDataValuesW
#endif

typedef enum {
    pd_private_ro,
    pd_private_rw,
    pd_public_ro,
    pd_public_rw
} persisttype_t;

typedef void (* PersAuthCallbackFn)(int localid, int profileid, int authenticated, gsi_char * errmsg, void * instance);
typedef void (* PersDataCallbackFn)(int localid, int profileid, persisttype_t type, int index, int success, time_t modified, char * data, int len, void * instance);
typedef void (* PersDataSaveCallbackFn)(int localid, int profileid, persisttype_t type, int index, int success, time_t modified, void * instance);
typedef void (* ProfileCallbackFn)(int localid, int profileid, int success, void * instance);

void PreAuthenticatePlayerPartner(int localid, const char * authtoken, const char * challengeresponse, PersAuthCallbackFn callback, void * instance);
void PreAuthenticatePlayerPM(int localid, int profileid, const char * challengeresponse, PersAuthCallbackFn callback, void * instance);
void PreAuthenticatePlayerCD(int localid, const gsi_char * nick, const char * keyhash, const char * challengeresponse, PersAuthCallbackFn callback, void * instance);
void GetProfileIDFromCD(int localid, const gsi_char * nick, const char * keyhash, ProfileCallbackFn callback, void * instance);
void GetPersistData(int localid, int profileid, persisttype_t type, int index, PersDataCallbackFn callback, void * instance);
void GetPersistDataModified(int localid, int profileid, persisttype_t type, int index, time_t modifiedsince, PersDataCallbackFn callback, void * instance);
void GetPersistDataValues(int localid, int profileid, persisttype_t type, int index, gsi_char * keys, PersDataCallbackFn callback, void * instance);
void GetPersistDataValuesModified(int localid, int profileid, persisttype_t type, int index, time_t modifiedsince, gsi_char * keys, PersDataCallbackFn callback, void * instance);
void SetPersistData(int localid, int profileid, persisttype_t type, int index, const char * data, int len, PersDataSaveCallbackFn callback, void * instance);
void SetPersistDataValues(int localid, int profileid, persisttype_t type, int index, const gsi_char * keyvalues, PersDataSaveCallbackFn callback, void * instance);
int PersistThink();

#ifdef __cplusplus
}
#endif

#endif
