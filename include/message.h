#ifndef POKEPLATINUM_MESSAGE_FORMAT_H
#define POKEPLATINUM_MESSAGE_FORMAT_H

#include "struct_decls/struct_02006C24_decl.h"
#include "strbuf.h"

typedef struct MessageBankEntry {
    u32 unk_00;
    u32 unk_04;
} MessageBankEntry;

typedef struct MessageBank {
    u16 unk_00;
    u16 unk_02;
    MessageBankEntry unk_04[];
} MessageBank;

typedef struct MessageLoader {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
    union {
        MessageBank * unk_08_val1;
        NARC * unk_08_val2;
    };
} MessageLoader;

MessageBank * MessageBank_Load(u32 param0, u32 param1, u32 param2);
void MessageBank_Free(MessageBank * param0);
void MessageBank_Get(const MessageBank * param0, u32 param1, u16 * param2);
void MessageBank_GetFromNARC(u32 param0, u32 param1, u32 param2, u32 param3, u16 * param4);
void MessageBank_GetStrbuf(const MessageBank * param0, u32 param1, Strbuf *param2);
Strbuf* MessageBank_GetNewStrbuf(const MessageBank * param0, u32 param1, u32 param2);
void MessageBank_GetStrbufFromNARC(u32 param0, u32 param1, u32 param2, u32 param3, Strbuf *param4);
void MessageBank_GetStrbufFromHandle(NARC * param0, u32 param1, u32 param2, u32 param3, Strbuf *param4);
Strbuf* MessageBank_GetNewStrbufFromNARC(u32 param0, u32 param1, u32 param2, u32 param3);
Strbuf* MessageBank_GetNewStrbufFromHandle(NARC * param0, u32 param1, u32 param2, u32 param3);
u32 MessageBank_EntryCount(const MessageBank * param0);
u32 MessageBank_NARCEntryCount(u32 param0, u32 param1);
MessageLoader * MessageLoader_Init(int param0, u32 param1, u32 param2, u32 param3);
void MessageLoader_Free(MessageLoader * param0);
void MessageLoader_GetStrbuf(const MessageLoader * param0, u32 param1, Strbuf *param2);
Strbuf* MessageLoader_GetNewStrbuf(const MessageLoader * param0, u32 param1);
u32 MessageLoader_MessageCount(const MessageLoader * param0);
void MessageLoader_Get(const MessageLoader * param0, u32 param1, u16 * param2);
void MessageLoader_GetSpeciesName(u32 param0, u32 param1, u16 * param2);

#endif // POKEPLATINUM_MESSAGE_FORMAT_H
