#ifndef POKEPLATINUM_OV60_0221F968_H
#define POKEPLATINUM_OV60_0221F968_H

void HTTP_Init(void);
int HTTP_PrepareRequest(const u8 *param0, int param1, const void *param2, int param3, u8 *param4, int param5);
int HTTP_GetRequestStatus(void);
void HTTP_Shutdown(void);
int HTTP_GetErrorCode(void);
int HTTP_GetResponseLength(void);

#endif // POKEPLATINUM_OV60_0221F968_H
