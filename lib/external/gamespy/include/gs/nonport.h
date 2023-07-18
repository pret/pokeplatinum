#ifndef _NONPORT_H_
#define _NONPORT_H_

#ifndef GSI_MEM_ONLY

#ifdef __mips64
    #if !defined(SN_SYSTEMS) && !defined(EENET) && !defined(INSOCK)
        #define EENET
    #endif
    #ifndef _PS2
        #define _PS2
    #endif
#endif

#if defined(_LINUX) || defined(_MACOSX)
    #define _UNIX
#endif

#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#if defined(_XBOX)
    #include <Xtl.h>
#elif defined(_WIN32)
    #define WIN32_LEAN_AND_MEAN
    #include <windows.h>
    #ifdef __WINSOCK_2_0__
        #include <WINSOCK2.H>
    #else
        #include <winsock.h>
    #endif
#elif defined(_PS2)
    #ifdef EENET
        #include <libeenet.h>
        #include <eenetctl.h>
        #include <ifaddrs.h>
        #include <sys/socket.h>
        #include <sys/errno.h>
        #include <netinet/in.h>
        #include <arpa/inet.h>
        #include <net/if.h>
        #include <sys/select.h>
        #include <malloc.h>
    #endif
    #include <eekernel.h>
    #include <stdio.h>
    #include <malloc.h>
    #include <sifdev.h>
    #include <sifrpc.h>
    #include <sifcmd.h>
    #include <ilink.h>
    #include <ilsock.h>
    #include <ilsocksf.h>
    #ifdef SN_SYSTEMS

        #undef FD_CLR
        #undef FD_ZERO
        #undef FD_SET
        #undef FD_ISSET
        #undef FD_SETSIZE
        #undef fd_set
        #include "snskdefs.h"
        #include "sntypes.h"
        #include "snsocket.h"
        #include "sneeutil.h"
        #include "sntcutil.h"
    #endif
    #ifdef INSOCK
        #include "libinsck.h"
        #include "libnet.h"
        #include "sys/errno.h"

    #endif
#elif defined(_UNIX)
    #include <unistd.h>
    #include <sys/types.h>
    #include <sys/socket.h>
    #include <stdio.h>
    #include <sys/types.h>
    #include <sys/socket.h>
    #include <sys/ioctl.h>
    #include <netinet/in.h>

    #ifndef NOFILE

        #include <netdb.h>
        #undef NOFILE
    #else

        #include <netdb.h>
    #endif

    #include <arpa/inet.h>
    #include <errno.h>
    #include <sys/time.h>
    #include <limits.h>

    #include <netinet/tcp.h>
#elif defined(_NITRO)
    #include <nitro.h>
    #define _MD5_H_
    #include <ninet.h>
    #undef _MD5_H_
    #include <MSL_Extras/extras.h>

#else
    #error The GameSpy SDKs do not support this operating system
#endif

#if defined(GSI_UNICODE)
    #include <wchar.h>
#endif

#ifndef UNDER_CE
//#include <ctype.h>
    #if defined(_MACOSX)
        #undef _T
    #endif
#else
int isdigit(int c);
int isxdigit(int c);
int isalnum(int c);
int isspace(int c);
int isgraph(int c);
#endif

#undef _vftprintf
#undef _ftprintf
#undef _tprintf
#undef _tsnprintf
#undef _tstrcpy
#undef _tfopen
#undef _tstrcat
#undef _tstrlen
#undef _T

#ifdef GSI_UNICODE
    #define _vftprintf vfwprintf
    #define _ftprintf fwprintf
    #define _stprintf swprintf
    #define _tprintf wprintf
    #define _tcscpy wcscpy
    #define _tcscat wcscat
    #define _tcslen wcslen
    #define _tfopen _wfopen
    #define _T(a) L ## a

    #if defined(_WIN32) || defined(_PS2)
        #define _tsnprintf _snwprintf
    #else
        #define _tsnprintf swprintf
    #endif
#else
    #define _vftprintf vfprintf
    #define _ftprintf fprintf
    #define _stprintf sprintf
    #define _tprintf printf
    #define _tcscpy strcpy
    #define _tcscat strcat
    #define _tcslen strlen
    #define _tfopen fopen
    #define _T(a) a

    #if defined(_WIN32)
        #define _tsnprintf _snprintf
    #else
        #define _tsnprintf snprintf
    #endif
#endif

#if defined(_WIN32)
    #define snprintf _snprintf
#endif

#ifdef UNDER_CE
#include <platutil.h>
#endif

#if defined(UNDER_CE)
    #define assert(a)
#else
    #include <assert.h>
#endif

#endif

#ifdef __cplusplus
extern "C" {
#endif

#if defined(GSI_MEM_MANAGED)

    #define gsimalloc gsiManagedMalloc
    #define gsifree gsiManagedFree
    #define gsirealloc gsiManagedRealloc
    #define gsimemalign gsiManagedMemalign

void * gsiManagedMalloc(size_t size);
void * gsiManagedRealloc(void * ptr, size_t size);
void gsiManagedFree(void * ptr);
void * gsiManagedMemalign(size_t boundary, size_t size);

typedef void * GSIMemoryMgrPtr;
GSIMemoryMgrPtr gsMemMgrCreate(void * thePoolBuffer, size_t thePoolSize);
void gsMemMgrDestroy();

void gsMemMgrDumpStats();
void gsMemMgrDumpAllocations();
void gsMemMgrValidateMemoryPool();

#elif defined(GSI_MEM_TRACK)

void * gsimalloctrack(size_t size);
void gsifreetrack(void * ptr);
void * gsirealloctrack(void * ptr, size_t size);
    #define gsimalloc gsimalloctrack
    #define gsifree gsifreetrack
    #define gsirealloc gsirealloctrack

extern size_t gsimemtrack_total;
extern size_t gsimemtrack_peak;
extern int gsimemtrack_num;

#else
#if defined(_NITRO)
    #define gsimalloc DWCi_GsMalloc
    #define gsifree DWCi_GsFree
    #define gsirealloc DWCi_GsRealloc
    #define gsimemalign DWCi_GsMemalign
extern void * DWCi_GsMalloc(size_t size);
extern void DWCi_GsFree(void * ptr);
extern void * DWCi_GsRealloc(void * ptr, size_t size);
extern void * DWCi_GsMemalign(size_t boundary, size_t size);
#else

    #define gsimalloc malloc
    #define gsifree free
    #define gsirealloc realloc
    #define gsimemalign memalign
#endif
#endif

#ifndef GSI_MEM_ONLY

#if (defined(__MWERKS__) && !defined(_NITRO)) || defined(WIN32)
    #define GSI_UNUSED(x) x
#elif defined(_PS2) || defined(_NITRO)
    #define GSI_UNUSED(x) {void * y = &x; y = NULL;}
#else
    #define GSI_UNUSED(x)
#endif

#if defined(_INTEGRAL_MAX_BITS) && !defined(GSI_MAX_INTEGRAL_BITS)
    #define GSI_MAX_INTEGRAL_BITS _INTEGRAL_MAX_BITS
#else
    #define GSI_MAX_INTEGRAL_BITS 32
#endif

typedef char gsi_i8;
typedef unsigned char gsi_u8;
typedef short gsi_i16;
typedef unsigned short gsi_u16;
typedef int gsi_i32;
typedef unsigned int gsi_u32;
typedef gsi_i32 goa_int32;
typedef gsi_u32 goa_uint32;

typedef int gsi_bool;
#define gsi_false ((gsi_bool)0)
#define gsi_true ((gsi_bool)1)
#define gsi_is_false(x) ((x) == gsi_false)
#define gsi_is_true(x) ((x) != gsi_false)

typedef unsigned int gsi_time;
#ifdef _PS2
typedef signed long gsi_i64;
typedef unsigned long gsi_u64;
#elif defined(_WIN32)
    #if (!defined(_M_IX86) || (defined(_INTEGRAL_MAX_BITS) && _INTEGRAL_MAX_BITS >= 64))
typedef __int64 gsi_i64;
typedef unsigned __int64 gsi_u64;
    #endif
#elif defined(_NITRO)
typedef s64 gsi_i64;
typedef u64 gsi_u64;
#else
typedef long long gsi_i64;
typedef unsigned long long gsi_u64;
#endif

#ifndef GSI_UNICODE
    #define gsi_char char
#else
    #define gsi_char unsigned short
#endif

#if defined(_WIN32) && !defined(_XBOX)
typedef CRITICAL_SECTION GSICriticalSection;
typedef HANDLE GSISemaphoreID;
typedef HANDLE GSIThreadID;
typedef DWORD (WINAPI * GSThreadFunc)(void * arg);
#elif defined(_PS2)
typedef int GSIThreadID;
typedef int GSISemaphoreID;

typedef struct {
    GSISemaphoreID mSemaphore;
    GSIThreadID mOwnerThread;
    gsi_u32 mEntryCount;
    gsi_u32 mPad;
} GSICriticalSection;
typedef void (* GSThreadFunc)(void * arg);
#elif defined(_NITRO)
typedef OSMutex GSICriticalSection;
typedef int GSISemaphoreID;
typedef OSThread GSIThreadID;
typedef void (* GSThreadFunc)(void * arg);
#else
    #define GSI_NO_THREADS
#endif

#define GSI_MIN_I8 (-127 - 1)
#define GSI_MAX_I8 127
#define GSI_MAX_U8 0xFF

#define GSI_MIN_I16 (-32767i 16 - 1)
#define GSI_MAX_I16 32767i 16
#define GSI_MAX_U16 0xffffui 16

#define GSI_MIN_I32 (-2147483647 - 1)
#define GSI_MAX_I32 2147483647
#define GSI_MAX_U32 0xffffffffui32

#if (GSI_MAX_INTEGRAL_BITS >= 64)
#define GSI_MIN_I64 (-9223372036854775807 - 1)
#define GSI_MAX_I64 9223372036854775807
#define GSI_MAX_U64 0xffffffffffffffffui64
#endif

gsi_time current_time();
gsi_time current_time_hires();
void msleep(gsi_time msec);

void Util_RandSeed(unsigned long seed);
int Util_RandInt(int low, int high);

void B64Encode(const char * input, char * output, int inlen, int encodingType);
void B64Decode(char * input, char * output, int * len, int encodingType);

void SocketStartUp();
void SocketShutDown();

#ifndef SOCKET_ERROR
    #define SOCKET_ERROR (-1)
#endif

#ifndef INADDR_NONE
   #define INADDR_NONE 0xffffffff
#endif

#ifndef INVALID_SOCKET
    #define INVALID_SOCKET (-1)
#endif

#if defined(_WIN32) && !defined(UNDER_CE)
    #define strcasecmp _stricmp
    #define strncasecmp _strnicmp
#else
char * _strlwr(char * string);
char * _strupr(char * string);
#endif

#undef strdup
#define strdup goastrdup
#undef _strdup
#define _strdup goastrdup
char * goastrdup(const char * src);

#if defined(UNDER_CE)
int strcasecmp(const char * string1, const char * string2);
int strncasecmp(const char * string1, const char * string2, size_t count);
#endif

#if !defined(_WIN32) && !defined(_NITRO)
typedef int SOCKET;
typedef struct sockaddr SOCKADDR;
typedef struct sockaddr_in SOCKADDR_IN;
typedef struct in_addr IN_ADDR;
typedef struct hostent HOSTENT;
typedef struct timeval TIMEVAL;
#endif

#if defined(_XBOX)
typedef int HOSTENT;
char * inet_ntoa(IN_ADDR in_addr);
#endif

#if defined(SN_SYSTEMS)
    #define IPPROTO_TCP PF_INET
    #define IPPROTO_UDP PF_INET
    #define FD_SETSIZE SN_MAX_SOCKETS

int GOAGetLastError(SOCKET s);

    #if !defined(__MWERKS__)
        #define send(s, b, l, f) (int)send(s, b, (unsigned long)l, f)
        #define recv(s, b, l, f) (int)recv(s, b, (unsigned long)l, f)
        #define sendto(s, b, l, f, a, al) (int)sendto(s, b, (unsigned long)l, f, a, al)
        #define recvfrom(s, b, l, f, a, al) (int)recvfrom(s, b, (unsigned long)l, f, a, al)
    #endif
#endif

#ifdef EENET
    #define GOAGetLastError(s) sceEENetErrno
    #define closesocket sceEENetClose
#endif

#ifdef INSOCK

    #define NETBUFSIZE (32768)

    #define GOAGetLastError(s) sceInsockErrno
    #define closesocket(s) sceInsockShutdown(s, SCE_INSOCK_SHUT_RDWR)
#endif

#ifdef _UNIX
    #define GOAGetLastError(s) errno
    #define closesocket close
#endif

#if !defined(_WIN32)
    #define ioctlsocket ioctl
#endif

#if defined(_WIN32)
    #define GOAGetLastError(s) WSAGetLastError()
#endif

#if defined(_NITRO)
    #define WSAEWOULDBLOCK SO_EWOULDBLOCK
    #define WSAEINPROGRESS SO_EINPROGRESS
    #define WSAEALREADY SO_EALREADY
    #define WSAENOTSOCK SO_ENOTSOCK
    #define WSAEDESTADDRREQ SO_EDESTADDRREQ
    #define WSAEMSGSIZE SO_EMSGSIZE
    #define WSAEPROTOTYPE SO_EPROTOTYPE
    #define WSAENOPROTOOPT SO_ENOPROTOOPT
    #define WSAEPROTONOSUPPORT SO_EPROTONOSUPPORT
    #define WSAEOPNOTSUPP SO_EOPNOTSUPP
    #define WSAEAFNOSUPPORT SO_EAFNOSUPPORT
    #define WSAEADDRINUSE SO_EADDRINUSE
    #define WSAEADDRNOTAVAIL SO_EADDRNOTAVAIL
    #define WSAENETDOWN SO_ENETDOWN
    #define WSAENETUNREACH SO_ENETUNREACH
    #define WSAENETRESET SO_ENETRESET
    #define WSAECONNABORTED SO_ECONNABORTED
    #define WSAECONNRESET SO_ECONNRESET
    #define WSAENOBUFS SO_ENOBUFS
    #define WSAEISCONN SO_EISCONN
    #define WSAENOTCONN SO_ENOTCONN
    #define WSAETIMEDOUT SO_ETIMEDOUT
    #define WSAECONNREFUSED SO_ECONNREFUSED
    #define WSAELOOP SO_ELOOP
    #define WSAENAMETOOLONG SO_ENAMETOOLONG
    #define WSAEHOSTUNREACH SO_EHOSTUNREACH
    #define WSAENOTEMPTY SO_ENOTEMPTY
    #define WSAEDQUOT SO_EDQUOT
    #define WSAESTALE SO_ESTALE
    #define WSAEINVAL SO_EINVAL
#elif !defined(_WIN32)
    #define WSAEWOULDBLOCK EWOULDBLOCK
    #define WSAEINPROGRESS EINPROGRESS
    #define WSAEALREADY EALREADY
    #define WSAENOTSOCK ENOTSOCK
    #define WSAEDESTADDRREQ EDESTADDRREQ
    #define WSAEMSGSIZE EMSGSIZE
    #define WSAEPROTOTYPE EPROTOTYPE
    #define WSAENOPROTOOPT ENOPROTOOPT
    #define WSAEPROTONOSUPPORT EPROTONOSUPPORT
    #define WSAESOCKTNOSUPPORT ESOCKTNOSUPPORT
    #define WSAEOPNOTSUPP EOPNOTSUPP
    #define WSAEPFNOSUPPORT EPFNOSUPPORT
    #define WSAEAFNOSUPPORT EAFNOSUPPORT
    #define WSAEADDRINUSE EADDRINUSE
    #define WSAEADDRNOTAVAIL EADDRNOTAVAIL
    #define WSAENETDOWN ENETDOWN
    #define WSAENETUNREACH ENETUNREACH
    #define WSAENETRESET ENETRESET
    #define WSAECONNABORTED ECONNABORTED
    #define WSAECONNRESET ECONNRESET
    #define WSAENOBUFS ENOBUFS
    #define WSAEISCONN EISCONN
    #define WSAENOTCONN ENOTCONN
    #define WSAESHUTDOWN ESHUTDOWN
    #define WSAETOOMANYREFS ETOOMANYREFS
    #define WSAETIMEDOUT ETIMEDOUT
    #define WSAECONNREFUSED ECONNREFUSED
    #define WSAELOOP ELOOP
    #define WSAENAMETOOLONG ENAMETOOLONG
    #define WSAEHOSTDOWN EHOSTDOWN
    #define WSAEHOSTUNREACH EHOSTUNREACH
    #define WSAENOTEMPTY ENOTEMPTY
    #define WSAEPROCLIM EPROCLIM
    #define WSAEUSERS EUSERS
    #define WSAEDQUOT EDQUOT
    #define WSAESTALE ESTALE
    #define WSAEREMOTE EREMOTE
    #define WSAEINVAL EINVAL
#endif

#if defined(_NITRO)
    #define AF_INET SO_PF_INET
    #define SOCK_DGRAM SO_SOCK_DGRAM
    #define SOCK_STREAM SO_SOCK_STREAM
    #define IPPROTO_UDP 0
    #define IPPROTO_TCP 0
    #define INADDR_ANY SO_INADDR_ANY
    #define SOL_SOCKET SO_SOL_SOCKET
    #define SO_SNDBUF SO_SO_SNDBUF
    #define SO_RCVBUF SO_SO_RCVBUF
    #define SO_REUSEADDR SO_SO_REUSEADDR

typedef int SOCKET;
typedef struct SOSockAddr SOCKADDR;
    #define sockaddr SOSockAddr
typedef struct SOSockAddrIn SOCKADDR_IN;
    #define sockaddr_in SOSockAddrIn
        #define sin_family family
        #define sin_port port
        #define sin_addr addr
typedef struct SOInAddr IN_ADDR;
    #define in_addr SOInAddr
        #define s_addr addr
typedef struct SOHostEnt HOSTENT;
    #define hostent SOHostEnt
        #define h_name name
        #define h_aliases aliases
        #define h_addrtype addrType
        #define h_length length
        #define h_addr_list addrList
        #define h_addr addrList[0]

int socket(int pf, int type, int protocol);
int closesocket(SOCKET sock);
int shutdown(SOCKET sock, int how);
int bind(SOCKET sock, const SOCKADDR * addr, int len);

int connect(SOCKET sock, const SOCKADDR * addr, int len);
int listen(SOCKET sock, int backlog);
SOCKET accept(SOCKET sock, SOCKADDR * addr, int * len);

int recv(SOCKET sock, char * buf, int len, int flags);
int recvfrom(SOCKET sock, char * buf, int len, int flags, SOCKADDR * addr, int * fromlen);
int send(SOCKET sock, const char * buf, int len, int flags);
int sendto(SOCKET sock, const char * buf, int len, int flags, const SOCKADDR * addr, int tolen);

int getsockopt(SOCKET sock, int level, int optname, char * optval, int * optlen);
int setsockopt(SOCKET sock, int level, int optname, const char * optval, int optlen);

    #define gethostbyaddr(a, l, t) SO_GetHostByAddr(a, l, t)
    #define gethostbyname(n) SO_GetHostByName(n)

int getsockname(SOCKET sock, SOCKADDR * addr, int * len);

    #define htonl(l) SO_HtoNl(l)
    #define ntohl(l) SO_NtoHl(l)
    #define htons(s) SO_HtoNs(s)
    #define ntohs(s) SO_NtoHs(s)

    #define inet_ntoa(n) SO_InetNtoA(n)
unsigned long inet_addr(const char * name);

int GOAGetLastError(SOCKET sock);
#endif

#ifndef max
#define max(a, b) (((a) > (b)) ? (a) : (b))
#define min(a, b) (((a) < (b)) ? (a) : (b))
#endif

int SetSockBlocking(SOCKET sock, int isblocking);
int SetSockBroadcast(SOCKET sock);
int DisableNagle(SOCKET sock);
int SetReceiveBufferSize(SOCKET sock, int size);
int SetSendBufferSize(SOCKET sock, int size);
int GetReceiveBufferSize(SOCKET sock);
int GetSendBufferSize(SOCKET sock);
int CanReceiveOnSocket(SOCKET sock);
int CanSendOnSocket(SOCKET sock);
int GSISocketSelect(SOCKET theSocket, int * theReadFlag, int * theWriteFlag, int * theExceptFlag);

HOSTENT * getlocalhost(void);

int IsPrivateIP(IN_ADDR * addr);

#if defined(SN_SYSTEMS)
    #define gethostbyaddr(a, b, c) NULL
#endif

gsi_u32 gsiGetBroadcastIP(void);

#if !defined(GSI_NO_THREADS)

typedef struct GSIResolveHostnameInfo * GSIResolveHostnameHandle;
#define GSI_STILL_RESOLVING_HOSTNAME 0
#define GSI_ERROR_RESOLVING_HOSTNAME 0xFFFFFFFF

int gsiStartResolvingHostname(const char * hostname, GSIResolveHostnameHandle * handle);

void gsiCancelResolvingHostname(GSIResolveHostnameHandle handle);

unsigned int gsiGetResolvedIP(GSIResolveHostnameHandle handle);

int gsiStartThread(GSThreadFunc aThreadFunc, gsi_u32 theStackSize, void * arg, GSIThreadID * theThreadIdOut);
void gsiCancelThread(GSIThreadID theThreadID);
void gsiCleanupThread(GSIThreadID theThreadID);

gsi_u32 gsiHasThreadShutdown(GSIThreadID theThreadID);

void gsiInitializeCriticalSection(GSICriticalSection * theCrit);
void gsiEnterCriticalSection(GSICriticalSection * theCrit);
void gsiLeaveCriticalSection(GSICriticalSection * theCrit);
void gsiDeleteCriticalSection(GSICriticalSection * theCrit);

GSISemaphoreID gsiCreateSemaphore(gsi_i32 theInitialCount, gsi_i32 theMaxCount, char * theName);
gsi_u32 gsiWaitForSemaphore(GSISemaphoreID theSemaphore, gsi_u32 theTimeoutMs);
void gsiReleaseSemaphore(GSISemaphoreID theSemaphore, gsi_i32 theReleaseCount);
void gsiCloseSemaphore(GSISemaphoreID theSemaphore);
#endif

#if defined(UNDER_CE) || defined(_NITRO)
//time_t time(time_t *timer);
#else
    #include <time.h>
#endif

#if defined(UNDER_CE) || defined(_PS2) || defined(_NITRO)
    #define NOFILE
#endif

#ifndef SOMAXCONN
    #define SOMAXCONN 5
#endif

typedef const char * (* GetUniqueIDFunction)();

extern GetUniqueIDFunction GOAGetUniqueID;

#ifdef _PS2
extern int wprintf(const wchar_t *, ...);
#endif

#include "gsiDebug.h"

#define XXTEA_KEY_SIZE 17

gsi_i8 * gsXxteaEncrypt(const gsi_i8 * iStr, gsi_i32 iLength, gsi_i8 key[XXTEA_KEY_SIZE], gsi_i32 * oLength);
gsi_i8 * gsXxteaDecrypt(const gsi_i8 * iStr, gsi_i32 iLength, gsi_i8 key[XXTEA_KEY_SIZE], gsi_i32 * oLength);

#if defined(_DEBUG)
void gsiCheckStack(void);
#else
    #define gsiCheckStack()
#endif

#endif

#ifdef __cplusplus
}
#endif

#endif
