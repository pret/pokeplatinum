#ifndef _GT2_H_
#define _GT2_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <gs/nonport.h>

#define GT2False 0
#define GT2True 1

typedef int GT2Bool;
typedef unsigned char GT2Byte;
typedef struct GTI2Socket * GT2Socket;
typedef struct GTI2Connection * GT2Connection;
typedef unsigned short GT2MessageID;

typedef enum {
    GT2Success,
    GT2OutOfMemory,
    GT2Rejected,
    GT2NetworkError,
    GT2AddressError,
    GT2DuplicateAddress,
    GT2TimedOut,
    GT2NegotiationError
} GT2Result;

typedef enum {
    GT2Connecting,
    GT2Connected,
    GT2Closing,
    GT2Closed
} GT2ConnectionState;

typedef enum {
    GT2LocalClose,
    GT2RemoteClose,
    GT2CommunicationError,
    GT2SocketError,
    GT2NotEnoughMemory
} GT2CloseReason;

typedef void (* gt2ConnectedCallback)(GT2Connection connection, GT2Result result, GT2Byte * message, int len);
typedef void (* gt2ReceivedCallback)(GT2Connection connection, GT2Byte * message, int len, GT2Bool reliable);
typedef void (* gt2ClosedCallback)(GT2Connection connection, GT2CloseReason reason);
typedef void (* gt2PingCallback)(GT2Connection connection, int latency);

typedef struct {
    gt2ConnectedCallback connected;
    gt2ReceivedCallback received;
    gt2ClosedCallback closed;
    gt2PingCallback ping;
} GT2ConnectionCallbacks;

typedef void (* gt2SocketErrorCallback)(GT2Socket socket);
typedef void (* gt2ConnectAttemptCallback)(GT2Socket socket, GT2Connection connection, unsigned int ip, unsigned short port, int latency, GT2Byte * message, int len);
typedef void (* gt2SendFilterCallback)(GT2Connection connection, int filterID, const GT2Byte * message, int len, GT2Bool reliable);
typedef void (* gt2ReceiveFilterCallback)(GT2Connection connection, int filterID, GT2Byte * message, int len, GT2Bool reliable);
typedef GT2Bool (* gt2UnrecognizedMessageCallback)(GT2Socket socket, unsigned int ip, unsigned short port, GT2Byte * message, int len);
typedef void (* gt2DumpCallback)(GT2Socket socket, GT2Connection connection, unsigned int ip, unsigned short port, GT2Bool reset, const GT2Byte * message, int len);

extern char GT2ChallengeKey[33];

GT2Result gt2CreateSocket(GT2Socket * socket, const char * localAddress, int outgoingBufferSize, int incomingBufferSize, gt2SocketErrorCallback callback);
void gt2CloseSocket(GT2Socket socket);
void gt2Think(GT2Socket socket);
GT2Result gt2SendRawUDP(GT2Socket socket, const char * remoteAddress, const GT2Byte * message, int len);
GT2Result gt2Connect(GT2Socket socket, GT2Connection * connection, const char * remoteAddress, const GT2Byte * message, int len, int timeout, GT2ConnectionCallbacks * callbacks, GT2Bool blocking);
void gt2Send(GT2Connection connection, const GT2Byte * message, int len, GT2Bool reliable);
void gt2Ping(GT2Connection connection);
void gt2CloseConnection(GT2Connection connection);
void gt2CloseConnectionHard(GT2Connection connection);
void gt2CloseAllConnections(GT2Socket socket);
void gt2CloseAllConnectionsHard(GT2Socket socket);
void gt2Listen(GT2Socket socket, gt2ConnectAttemptCallback callback);
GT2Bool gt2Accept(GT2Connection connection, GT2ConnectionCallbacks * callbacks);
void gt2Reject(GT2Connection connection, const GT2Byte * message, int len);
GT2MessageID gt2GetLastSentMessageID(GT2Connection connection);
GT2Bool gt2WasMessageIDConfirmed(GT2Connection connection, GT2MessageID messageID);
GT2Bool gt2AddSendFilter(GT2Connection connection, gt2SendFilterCallback callback);
void gt2RemoveSendFilter(GT2Connection connection, gt2SendFilterCallback callback);
void gt2FilteredSend(GT2Connection connection, int filterID, const GT2Byte * message, int len, GT2Bool reliable);
GT2Bool gt2AddReceiveFilter(GT2Connection connection, gt2ReceiveFilterCallback callback);
void gt2RemoveReceiveFilter(GT2Connection connection, gt2ReceiveFilterCallback callback);
void gt2FilteredReceive(GT2Connection connection, int filterID, GT2Byte * message, int len, GT2Bool reliable);
SOCKET gt2GetSocketSOCKET(GT2Socket socket);
void gt2SetUnrecognizedMessageCallback(GT2Socket socket, gt2UnrecognizedMessageCallback callback);
GT2Socket gt2GetConnectionSocket(GT2Connection connection);
GT2ConnectionState gt2GetConnectionState(GT2Connection connection);
unsigned int gt2GetRemoteIP(GT2Connection connection);
unsigned short gt2GetRemotePort(GT2Connection connection);
unsigned int gt2GetLocalIP(GT2Socket socket);
unsigned short gt2GetLocalPort(GT2Socket socket);
int gt2GetIncomingBufferSize(GT2Connection connection);
int gt2GetIncomingBufferFreeSpace(GT2Connection connection);
int gt2GetOutgoingBufferSize(GT2Connection connection);
int gt2GetOutgoingBufferFreeSpace(GT2Connection connection);
void gt2SetSocketData(GT2Socket socket, void * data);
void * gt2GetSocketData(GT2Socket socket);
void gt2SetConnectionData(GT2Connection connection, void * data);
void * gt2GetConnectionData(GT2Connection connection);
unsigned int gt2NetworkToHostInt(unsigned int i);
unsigned int gt2HostToNetworkInt(unsigned int i);
unsigned short gt2HostToNetworkShort(unsigned short s);
unsigned short gt2NetworkToHostShort(unsigned short s);
const char * gt2AddressToString(unsigned int ip, unsigned short port, char string[22]);
GT2Bool gt2StringToAddress(const char * string, unsigned int * ip, unsigned short * port);
const char * gt2IPToHostInfo(unsigned int ip, char *** aliases, unsigned int *** ips);
const char * gt2StringToHostInfo(const char * string, char *** aliases, unsigned int *** ips);
const char * gt2IPToHostname(unsigned int ip);
const char * gt2StringToHostname(const char * string);
char ** gt2IPToAliases(unsigned int ip);
char ** gt2StringToAliases(const char * string);
unsigned int ** gt2IPToIPs(unsigned int ip);
unsigned int ** gt2StringToIPs(const char * string);
void gt2SetSendDump(GT2Socket socket, gt2DumpCallback callback);
void gt2SetReceiveDump(GT2Socket socket, gt2DumpCallback callback);

#ifdef __cplusplus
}
#endif

#endif
