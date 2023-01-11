#include <base/dwc_account.h>
#include <bm/util_wifiidtool.h>
#include <nitro.h>

#define DWCi_CHECK_FLAG(flag, mask) ((flag & mask) == mask)

static inline u32 DWCi_Acc_GetMaskBits (u32 data, u32 shift, u32 mask) {
    return (data >> shift) & mask;
}

static BOOL DWCi_Acc_SetMaskBits (u32 * ptr, u32 data, u32 shift, u32 mask) {
    if ((data & ~mask) != 0) {
        return FALSE;
    }
    *ptr = (*ptr & ~(mask << shift)) | (data << shift);
    return TRUE;
}

u64 DWCi_Acc_GetUserId (const DWCAccLoginId * userdata) {
    u32 hi32;
    hi32 = DWCi_Acc_GetMaskBits(userdata->id_data, DWC_ACC_USERID_HI32_SHIFT, DWC_ACC_USERID_HI32_MASK);

    return (u64)hi32 << 32 | userdata->userid_lo32;
}

u32 DWCi_Acc_GetPlayerId (const DWCAccLoginId * userdata) {
    return userdata->playerid;
}

u64 DWCi_Acc_GetFriendKey (const DWCAccFriendKey * data) {
    return (u64)data->friendkey_hi32 << 32 | data->friendkey_lo32;
}

int DWCi_Acc_GetGsProfileId (const DWCAccGsProfileId * data) {
    return data->id;
}

void DWCi_Acc_SetUserId (DWCAccLoginId * userdata, u64 userid) {
    if (!DWCi_Acc_SetMaskBits(&userdata->id_data, (u32)(userid >> 32), DWC_ACC_USERID_HI32_SHIFT, DWC_ACC_USERID_HI32_MASK)) {
    }
    userdata->userid_lo32 = (u32)userid;
}

void DWCi_Acc_SetPlayerId (DWCAccLoginId * userdata, u32 playerid) {
    userdata->playerid = playerid;
}

void DWCi_Acc_SetFriendKey (DWCAccFriendKey * data, u64 friendkey) {
    data->friendkey_lo32 = (u32)friendkey;
    data->friendkey_hi32 = (u32)(friendkey >> 32);
}

void DWCi_Acc_SetGsProfileId (DWCAccGsProfileId * data, int gs_profile_id) {
    data->id = gs_profile_id;
}

static u32 DWCi_Acc_GetFlags (const DWCAccFlag * userdata) {
    return DWCi_Acc_GetMaskBits(userdata->flags, DWC_ACC_FLAGS_SHIFT, DWC_ACC_FLAGS_MASK);
}

static u32 DWCi_Acc_GetFlag_DataType (const DWCAccFlag * userdata) {
    return DWCi_Acc_GetFlags(userdata) & DWC_ACC_FRIENDDATA_MASK;
}

BOOL DWC_IsBuddyFriendData (const DWCAccFriendData * frienddata) {
    if (DWCi_Acc_GetFlag_DataType(&frienddata->flags) == DWC_ACC_FRIENDDATA_GS_PROFILE_ID) {
        u32 type;
        type = DWCi_Acc_GetFlags(&frienddata->flags);

        return (DWCi_CHECK_FLAG(type, DWC_ACC_FRIENDDATA_ISBUDDY)) ? TRUE : FALSE;
    }
    return FALSE;
}

int DWC_GetFriendDataType (const DWCAccFriendData * frienddata) {
    return (int)DWCi_Acc_GetFlag_DataType(&frienddata->flags);
}

static void DWCi_Acc_SetFlags (DWCAccFlag * userdata, u32 flags) {
    DWCi_Acc_SetMaskBits(&userdata->flags, flags, DWC_ACC_FLAGS_SHIFT, DWC_ACC_FLAGS_MASK);
}

static void DWCi_Acc_SetFlag_DataType (DWCAccFlag * userdata, int type) {
    u32 flags;
    flags = DWCi_Acc_GetFlags(userdata);
    flags = (flags & ~DWC_ACC_FRIENDDATA_MASK) | type;

    DWCi_Acc_SetFlags(userdata, flags);
}

void DWCi_SetBuddyFriendData (DWCAccFriendData * frienddata) {
    if (DWCi_Acc_GetFlag_DataType(&frienddata->flags) == DWC_ACC_FRIENDDATA_GS_PROFILE_ID) {
        u32 flags;
        flags = DWCi_Acc_GetFlags(&frienddata->flags);
        flags = (flags & ~DWC_ACC_FRIENDDATA_ISBUDDY_MASK) | DWC_ACC_FRIENDDATA_ISBUDDY;

        DWCi_Acc_SetFlags(&frienddata->flags, flags);
    }
}

void DWC_ClearBuddyFlagFriendData (DWCAccFriendData * frienddata) {
    if (DWCi_Acc_GetFlag_DataType(&frienddata->flags) == DWC_ACC_FRIENDDATA_GS_PROFILE_ID) {
        u32 flags;
        flags = DWCi_Acc_GetFlags(&frienddata->flags);
        flags &= ~DWC_ACC_FRIENDDATA_ISBUDDY_MASK;

        DWCi_Acc_SetFlags(&frienddata->flags, flags);
    }
}

u64 DWC_Acc_CreateFriendKey (int gs_profile_id, u32 gamecode) {
    MATHCRC8Table table;
    u32 code[2];
    int crc;

    code[0] = (u32)gs_profile_id;
    code[1] = gamecode;

    MATH_CRC8InitTable(&table);
    crc = MATH_CalcCRC8(&table, code, sizeof(code)) & 0x7f;

    return ((u64)crc << 32) | (u32)gs_profile_id;
}

BOOL DWC_CheckFriendKey (const DWCAccUserData * userdata, u64 friendkey) {
    return DWC_Acc_CheckFriendKey(friendkey, userdata->gamecode);
}

BOOL DWC_Acc_CheckFriendKey (u64 friendkey, u32 gamecode) {
    MATHCRC8Table table;
    u32 code[2];
    int crc;

    if (friendkey & 0x80000000) {
        return FALSE;
    }

    code[0] = (u32)friendkey;
    code[1] = gamecode;

    MATH_CRC8InitTable(&table);
    crc = MATH_CalcCRC8(&table, code, sizeof(code)) & 0x7f;

    if (crc != (friendkey >> 32)) {
        return FALSE;
    }
    return TRUE;
}

int DWC_Acc_FriendKeyToGsProfileId (u64 friendkey, u32 gamecode) {
    if (!DWC_Acc_CheckFriendKey(friendkey, gamecode)) {
        return 0;
    }
    return (int)(friendkey & 0xffffffff);
}

void DWC_FriendKeyToString (char * string, u64 friendKey) {
    OS_SNPrintf(string, DWC_ACC_FRIENDKEY_STRING_BUFSIZE, "%012llu", friendKey);
}

u64 DWC_StringToFriendKey (const char * string) {
    int i;
    u64 result = 0;
    u64 dec = 1;

    for (i = 0 ; i < DWC_ACC_FRIENDKEY_STRING_LENGTH ; ++i) {
        char tmp = *(string + DWC_ACC_FRIENDKEY_STRING_LENGTH - 1 - i);
        if ((tmp < '0') || (tmp > '9')) {
            return 0;
        }
        result += (tmp - '0') * dec;
        dec *= 10;
    }
    return result;
}

static void DWCi_Acc_U64ToString32 (u64 num, int bitnum, char * result) {
    int i;
    const int loopnum = (bitnum + 4) / 5;
    const char * const sStringTable = "0123456789abcdefghijklmnopqrstuv";

    for (i = 0 ; i < loopnum ; ++i) {
        *(result + loopnum - 1 - i) = *(sStringTable + (num & 0x1f));
        num >>= 5;
    }
    *(result + loopnum) = 0;
}

void DWCi_Acc_LoginIdToUserName (const DWCAccLoginId * loginid, u32 gamecode, char * username) {
    char userid[DWC_ACC_USERNAME_STRING_BUFSIZE];
    char playerid[DWC_ACC_USERNAME_STRING_BUFSIZE];

    DWCi_Acc_U64ToString32(DWCi_Acc_GetUserId(loginid), DWC_ACC_USERID_BITS, userid);
    DWCi_Acc_U64ToString32(DWCi_Acc_GetPlayerId(loginid), DWC_ACC_PLAYERID_BITS, playerid);

    OS_SNPrintf(username, DWC_ACC_USERNAME_STRING_BUFSIZE, "%s%c%c%c%c%s", userid, (u8)(gamecode >> 24), (u8)(gamecode >> 16), (u8)(gamecode >> 8), (u8)gamecode, playerid);
}

void DWCi_Acc_CreateUserData (DWCAccUserData * userdata, u32 gamecode) {
    MATHCRC32Table table;

    MI_CpuClear8(userdata, DWC_ACC_USERDATA_BUFSIZE);

    userdata->size = DWC_ACC_USERDATA_BUFSIZE;
    userdata->gs_profile_id = 0;
    userdata->gamecode = gamecode;

    DWCi_Acc_CreateTempLoginId(&userdata->pseudo);
    DWCi_Acc_SetFlag_DataType((DWCAccFlag *)&userdata->authentic, DWC_ACC_FRIENDDATA_NODATA);
    MATH_CRC32InitTable(&table);

    userdata->crc32 = MATH_CalcCRC32(&table, userdata, sizeof(DWCAccUserData) - 4);
    userdata->flag |= DWC_ACC_USERDATA_DIRTY;
}

void DWCi_Acc_CreateTempLoginId (DWCAccLoginId * loginid) {
    DWCAuthWiFiId authid;
    MATHRandContext32 randcontext;
    u32 buffer[8];
    u32 i;

    OS_GetLowEntropyData(buffer);

    for (i = 1; i < 8; i++) {
        buffer[i] = buffer[i] ^ buffer[i - 1];
    }

    MATH_InitRand32(&randcontext, buffer[7]);
    DWC_Auth_GetId(&authid);

    if (authid.flg) {
        DWCi_Acc_SetUserId(loginid, authid.uId);
    } else {
        DWCi_Acc_SetUserId(loginid, authid.notAttestedId);
    }
#if 0
    DWCi_Acc_SetPlayerId(loginid, 1);
#else
    DWCi_Acc_SetPlayerId(loginid, MATH_Rand32(&randcontext, 0));
#endif
    DWCi_Acc_SetFlag_DataType((DWCAccFlag *)loginid, DWC_ACC_FRIENDDATA_LOGIN_ID);
}

BOOL DWCi_Acc_CheckConsoleUserId (const DWCAccLoginId * loginid) {
    DWCAuthWiFiId authid;

    DWC_Auth_GetId(&authid);

    if (authid.flg) {
        return (DWCi_Acc_GetUserId(loginid) == authid.uId) ? TRUE : FALSE;
    } else {
        return (DWCi_Acc_GetUserId(loginid) == authid.notAttestedId) ? TRUE : FALSE;
    }
}

BOOL DWCi_Acc_IsValidLoginId (const DWCAccLoginId * loginid) {
    return (DWCi_Acc_GetFlag_DataType((DWCAccFlag *)loginid) == DWC_ACC_FRIENDDATA_LOGIN_ID) ? TRUE : FALSE;
}

BOOL DWCi_Acc_IsAuthentic (const DWCAccUserData * userdata) {
    return DWCi_Acc_IsValidLoginId(&userdata->authentic);
}

BOOL DWC_IsValidFriendData (const DWCAccFriendData * frienddata) {
    u32 type = DWCi_Acc_GetFlag_DataType(&frienddata->flags);

    if (type == DWC_ACC_FRIENDDATA_NODATA) {
        return FALSE;
    }
    return TRUE;
}

BOOL DWCi_Acc_IsValidFriendData (const DWCAccFriendData * frienddata) {
    return DWC_IsValidFriendData(frienddata);
}

void DWC_CreateUserData (DWCAccUserData * userdata, u32 gamecode) {
    DWCi_Acc_CreateUserData(userdata, gamecode);
}

BOOL DWC_CheckUserData (const DWCAccUserData * userdata) {
    u32 crc32;
    MATHCRC32Table table;

    MATH_CRC32InitTable(&table);
    crc32 = MATH_CalcCRC32(&table, userdata, sizeof(DWCAccUserData) - 4);

    return (crc32 == userdata->crc32) ? TRUE : FALSE;
}

BOOL DWC_CheckHasProfile (const DWCAccUserData * userdata) {
    return (DWCi_Acc_IsValidLoginId(&userdata->authentic) && (userdata->gs_profile_id > 0)) ? TRUE : FALSE;
}

BOOL DWC_CheckValidConsole (const DWCAccUserData * userdata) {
    DWCAuthWiFiId authid;

    if (DWCi_Acc_GetFlag_DataType((DWCAccFlag *)&userdata->authentic) == DWC_ACC_FRIENDDATA_NODATA) {
        return TRUE;
    }

    DWC_Auth_GetId(&authid);

    if (!authid.flg) {
        return FALSE;
    }

    return (DWCi_Acc_GetUserId(&userdata->authentic) == authid.uId) ? TRUE : FALSE;
}

void DWCi_Acc_SetLoginIdToUserData (DWCAccUserData * userdata, const DWCAccLoginId * loginid, int gs_profile_id) {
    MATHCRC32Table table;

    userdata->authentic = *loginid;
    userdata->gs_profile_id = gs_profile_id;

    MATH_CRC32InitTable(&table);

    userdata->crc32 = MATH_CalcCRC32(&table, userdata, sizeof(DWCAccUserData) - 4);
    userdata->flag |= DWC_ACC_USERDATA_DIRTY;
}

BOOL DWC_CheckDirtyFlag (const DWCAccUserData * userdata) {
    return DWCi_Acc_IsDirty(userdata);
}

BOOL DWCi_Acc_IsDirty (const DWCAccUserData * userdata) {
    return DWCi_CHECK_FLAG(userdata->flag, DWC_ACC_USERDATA_DIRTY) ? TRUE : FALSE;
}

void DWC_ClearDirtyFlag (DWCAccUserData * userdata) {
    DWCi_Acc_ClearDirty(userdata);
}

void DWCi_Acc_ClearDirty (DWCAccUserData * userdata) {
    MATHCRC32Table table;

    userdata->flag &= ~DWC_ACC_USERDATA_DIRTY;
    MATH_CRC32InitTable(&table);
    userdata->crc32 = MATH_CalcCRC32(&table, userdata, sizeof(DWCAccUserData) - 4);
}

void DWCi_Acc_TestFlagFunc (void) {
    DWCAccLoginId id;
    u32 flags;

    MI_CpuClear8(&id, sizeof(DWCAccLoginId));

    flags = DWCi_Acc_GetFlags((DWCAccFlag *)&id);
    OS_TPrintf("%08x: %08x\n", flags, DWCi_Acc_GetFlag_DataType((DWCAccFlag *)&id));

    if (DWCi_Acc_IsValidLoginId(&id)) {
        OS_TPrintf("valid\n");
    } else {
        OS_TPrintf("invalid\n");
    }

    DWCi_Acc_SetFlag_DataType((DWCAccFlag *)&id, DWC_ACC_FRIENDDATA_LOGIN_ID);

    flags = DWCi_Acc_GetFlags((DWCAccFlag *)&id);

    OS_TPrintf("%08x: %08x\n", flags, DWCi_Acc_GetFlag_DataType((DWCAccFlag *)&id));
    if (DWCi_Acc_IsValidLoginId(&id)) {
        OS_TPrintf("valid\n");
    } else {
        OS_TPrintf("invalid\n");
    }
}

u64 DWC_GetFriendKey (const DWCAccFriendData * frienddata) {
    if (DWCi_Acc_GetFlag_DataType(&frienddata->flags) == DWC_ACC_FRIENDDATA_FRIEND_KEY) {
        return DWCi_Acc_GetFriendKey(&frienddata->friend_key);
    }
    return 0;
}

int DWC_GetGsProfileId (const DWCAccUserData * userdata, const DWCAccFriendData * frienddata) {
    u32 type = DWCi_Acc_GetFlag_DataType(&frienddata->flags);

    switch (type) {
    case DWC_ACC_FRIENDDATA_FRIEND_KEY:
    {
        u64 friend_key = DWCi_Acc_GetFriendKey(&frienddata->friend_key);

        if (DWC_Acc_CheckFriendKey(friend_key, userdata->gamecode)) {
            return DWC_Acc_FriendKeyToGsProfileId(friend_key, userdata->gamecode);
        }

        return 0;
    }
    break;
    case DWC_ACC_FRIENDDATA_GS_PROFILE_ID:
        return DWCi_Acc_GetGsProfileId(&frienddata->gs_profile_id);
        break;
    case DWC_ACC_FRIENDDATA_LOGIN_ID:
        return -1;
        break;
    default:
        break;
    }
    return 0;
}

u64 DWC_CreateFriendKey (const DWCAccUserData * userdata) {
    u64 ret = 0;

    if (userdata->gs_profile_id != 0) {
        ret = DWC_Acc_CreateFriendKey(userdata->gs_profile_id, userdata->gamecode);
    }
    return ret;
}

void DWC_CreateFriendKeyToken (DWCAccFriendData * token, u64 friend_key) {
    MI_CpuClear8(token, sizeof(DWCAccFriendData));
    DWCi_Acc_SetFriendKey(&token->friend_key, friend_key);
    DWCi_Acc_SetFlag_DataType(&token->flags, DWC_ACC_FRIENDDATA_FRIEND_KEY);
}

void DWC_CreateExchangeToken (const DWCAccUserData * userdata, DWCAccFriendData * token) {
    MI_CpuClear8(token, sizeof(DWCAccFriendData));

    if (DWCi_Acc_IsAuthentic(userdata)) {
        DWCi_Acc_SetGsProfileId(&token->gs_profile_id, userdata->gs_profile_id);
        DWCi_Acc_SetFlag_DataType(&token->flags, DWC_ACC_FRIENDDATA_GS_PROFILE_ID);
    } else {
        token->login_id = userdata->pseudo;
    }
}

void DWC_SetGsProfileId (DWCAccFriendData * frienddata, int gs_profile_id) {
    MI_CpuClear8(frienddata, sizeof(DWCAccFriendData));
    DWCi_Acc_SetGsProfileId(&frienddata->gs_profile_id, gs_profile_id);
    DWCi_Acc_SetFlag_DataType(&frienddata->flags, DWC_ACC_FRIENDDATA_GS_PROFILE_ID);
}

void DWC_LoginIdToUserName (const DWCAccUserData * userdata, const DWCAccFriendData * frienddata, char * username) {
    DWCi_Acc_LoginIdToUserName(&frienddata->login_id, userdata->gamecode, username);
}

BOOL DWC_IsEqualFriendData (const DWCAccFriendData * frienddata1, const DWCAccFriendData * frienddata2) {
    u32 type1, type2;

    type1 = DWCi_Acc_GetFlag_DataType(&frienddata1->flags);
    type2 = DWCi_Acc_GetFlag_DataType(&frienddata2->flags);

    if (type1 != type2) {
        return FALSE;
    } else if (type1 == DWC_ACC_FRIENDDATA_GS_PROFILE_ID) {
        return (DWCi_Acc_GetGsProfileId(&frienddata1->gs_profile_id) == DWCi_Acc_GetGsProfileId(&frienddata2->gs_profile_id)) ?
               TRUE : FALSE;
    } else if (type1 == DWC_ACC_FRIENDDATA_LOGIN_ID) {
        return ((DWCi_Acc_GetUserId(&frienddata1->login_id) == DWCi_Acc_GetUserId(&frienddata2->login_id)) &&
                (DWCi_Acc_GetPlayerId(&frienddata1->login_id) == DWCi_Acc_GetPlayerId(&frienddata2->login_id))) ?
               TRUE : FALSE;
    } else if (type1 == DWC_ACC_FRIENDDATA_FRIEND_KEY) {
        return (DWCi_Acc_GetFriendKey(&frienddata1->friend_key) == DWCi_Acc_GetFriendKey(&frienddata2->friend_key)) ?
               TRUE : FALSE;
    }
    return FALSE;
}

void DWC_ReportFriendData (const DWCAccUserData * userdata, const DWCAccFriendData * frienddata) {
    if (DWCi_Acc_GetFlag_DataType(&frienddata->flags) == DWC_ACC_FRIENDDATA_GS_PROFILE_ID) {
        if (DWC_IsBuddyFriendData(frienddata)) {
            OS_TPrintf(" GS_ID : %d (ok)\n", DWCi_Acc_GetGsProfileId(&frienddata->gs_profile_id));
        } else {
            OS_TPrintf(" GS_ID : %d\n", DWCi_Acc_GetGsProfileId(&frienddata->gs_profile_id));
        }
    } else if (DWCi_Acc_GetFlag_DataType(&frienddata->flags) == DWC_ACC_FRIENDDATA_FRIEND_KEY) {
        char name[DWC_ACC_FRIENDKEY_STRING_BUFSIZE];
        DWC_FriendKeyToString(name, DWCi_Acc_GetFriendKey(&frienddata->friend_key));
        OS_TPrintf(" F_KEY : %s\n", name);
    } else if (DWCi_Acc_GetFlag_DataType(&frienddata->flags) == DWC_ACC_FRIENDDATA_LOGIN_ID) {
        char name[DWC_ACC_USERNAME_STRING_BUFSIZE];
        DWCi_Acc_LoginIdToUserName(&frienddata->login_id, userdata->gamecode, name);
        OS_TPrintf(" LN_ID : %s\n", name);
    } else {
        OS_TPrintf(" NO_DATA \n");
    }
}

void DWC_ReportUserData (const DWCAccUserData * userdata) {
    OS_TPrintf("*******************************\n");
    OS_TPrintf(" [pseudo login id]\n");
    DWC_ReportFriendData(userdata, (DWCAccFriendData *)&userdata->pseudo);
    OS_TPrintf("+++++++++++++++++++++++++++++++\n");
    OS_TPrintf(" [authentic login id]\n");
    DWC_ReportFriendData(userdata, (DWCAccFriendData *)&userdata->authentic);
    OS_TPrintf("+++++++++++++++++++++++++++++++\n");
    OS_TPrintf(" GS_ID : %d\n", userdata->gs_profile_id);
    OS_TPrintf("*******************************\n");
}
