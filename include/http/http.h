#ifndef POKEPLATINUM_HTTP_HTTP_H
#define POKEPLATINUM_HTTP_HTTP_H

void HTTP_Init(void);
int HTTP_PrepareRequest(const u8 *url, int dwcProfileID, const void *data, int dataSize, u8 *response, int maxResponseLength);
int HTTP_GetRequestStatus(void);
void HTTP_Shutdown(void);
int HTTP_GetErrorCode(void);
int HTTP_GetResponseLength(void);

#endif // POKEPLATINUM_HTTP_HTTP_H
