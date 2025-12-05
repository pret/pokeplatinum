#ifndef POKEPLATINUM_OV23_0224A1D0_H
#define POKEPLATINUM_OV23_0224A1D0_H

enum PlayerStatus {
    PLAYER_STATUS_NORMAL = 0,
    PLAYER_STATUS_MOVEMENT_ALTERED,
    PLAYER_STATUS_IMMOBILIZED_BY_TRAP,
    PLAYER_STATUS_SLIDING,
    PLAYER_STATUS_IN_HOLE,
};

void ov23_0224A1D0(void);
void ov23_0224A348(int param0, int param1, void *param2, void *param3);
void ov23_0224A3A8(int param0, int param1, void *param2, void *param3);
void ov23_0224A410(int param0, int param1, void *param2, void *param3);
int ov23_0224A56C(void);
void ov23_0224A570(int param0, int param1, void *param2, void *param3);
BOOL ov23_0224A658(int param0, int param1, BOOL param2);
BOOL ov23_0224A6B8(int param0);
void ov23_0224A77C(int param0, int param1, void *param2, void *param3);
void ov23_0224AA84(void);
u8 *ov23_0224AAA0(int param0, void *param1, int param2);
void ov23_0224AAB0(void);
int ov23_0224AB2C(void);
void ov23_0224AB30(int param0, int param1, void *param2, void *param3);
void ov23_0224ABC4(int param0, int param1, void *param2, void *param3);
int ov23_0224AC0C(void);
void ov23_0224AC10(int param0, int param1, void *param2, void *param3);
BOOL ov23_0224AC3C(void);
void ov23_0224AC4C(void);
BOOL ov23_0224ACC0(int param0);
void ov23_0224ACE8(int param0, int param1, void *param2, void *param3);
void ov23_0224ACF8(int param0, int param1, void *param2, void *param3);
int Underground_GetLinkXPos(int netID);
int Underground_GetLinkZPos(int netID);
void ov23_UpdatePlayerStatus(int netID, int status);
void ov23_RevertPlayerStatusToNormal(int netID);
void ov23_0224ADB0(int param0, int param1, int param2, int param3);
void ov23_0224ADE8(int param0, int param1, int param2, int param3);
BOOL ov23_0224AE60(int param0);
BOOL ov23_IsPlayerHoldingFlag(int param0);
BOOL ov23_TryTakeFlag(int param0, int param1);
void ov23_0224AF4C(int param0);
void ov23_0224AF7C(int param0);
void ov23_ShowExclamationEmote(int netID);
void ov23_ShowOKEmote(int netID);
void ov23_ClearEmote(int netID);

#endif // POKEPLATINUM_OV23_0224A1D0_H
