#ifndef _GHTTPASCII_H_
#define _GHTTPASCII_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <stdlib.h>
#include <gs/nonport.h>

GHTTPRequest ghttpGetA(const char * URL, GHTTPBool blocking, ghttpCompletedCallback completedCallback, void * param);
GHTTPRequest ghttpGetExA(const char * URL, const char * headers, char * buffer, int bufferSize, GHTTPPost post, GHTTPBool throttle, GHTTPBool blocking, ghttpProgressCallback progressCallback, ghttpCompletedCallback completedCallback, void * param);
GHTTPRequest ghttpSaveA(const char * URL, const char * filename, GHTTPBool blocking, ghttpCompletedCallback completedCallback, void * param);
GHTTPRequest ghttpSaveExA(const char * URL, const char * filename, const char * headers, GHTTPPost post, GHTTPBool throttle, GHTTPBool blocking, ghttpProgressCallback progressCallback, ghttpCompletedCallback completedCallback, void * param);
GHTTPRequest ghttpStreamA(const char * URL, GHTTPBool blocking, ghttpProgressCallback progressCallback, ghttpCompletedCallback completedCallback, void * param);
GHTTPRequest ghttpStreamExA(const char * URL, const char * headers, GHTTPPost post, GHTTPBool throttle, GHTTPBool blocking, ghttpProgressCallback progressCallback, ghttpCompletedCallback completedCallback, void * param);
GHTTPRequest ghttpHeadA(const char * URL, GHTTPBool blocking, ghttpCompletedCallback completedCallback, void * param);
GHTTPRequest ghttpHeadExA(const char * URL, const char * headers, GHTTPBool throttle, GHTTPBool blocking, ghttpProgressCallback progressCallback, ghttpCompletedCallback completedCallback, void * param);
GHTTPRequest ghttpPostA(const char * URL, GHTTPPost post, GHTTPBool blocking, ghttpCompletedCallback completedCallback, void * param);
GHTTPRequest ghttpPostExA(const char * URL, const char * headers, GHTTPPost post, GHTTPBool throttle, GHTTPBool blocking, ghttpProgressCallback progressCallback, ghttpCompletedCallback completedCallback, void * param);
const char * ghttpGetResponseStatus(GHTTPRequest request, int * statusCode);
const char * ghttpGetHeaders(GHTTPRequest request);
const char * ghttpGetURL(GHTTPRequest request);
GHTTPBool ghttpSetProxyA(const char * server);
GHTTPBool ghttpPostAddStringA(GHTTPPost post, const char * name, const char * string);
GHTTPBool ghttpPostAddFileFromDiskA(GHTTPPost post, const char * name, const char * filename, const char * reportFilename, const char * contentType);
GHTTPBool ghttpPostAddFileFromMemoryA(GHTTPPost post, const char * name, const char * buffer, int bufferLen, const char * reportFilename, const char * contentType);

#ifdef __cplusplus
}
#endif

#endif
