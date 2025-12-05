#include "message.h"

#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "narc.h"
#include "string_gf.h"

#define KEY_START 596947
#define KEY_INC   18749

static void MemCopyEntry(charcode_t *dst, const charcode_t *src, const MessageBankEntry *entry);

static inline int EntryOffset(u32 bankIndex)
{
    return sizeof(MessageBank) + sizeof(MessageBankEntry) * bankIndex;
}

static inline void DecodeEntry(MessageBankEntry *entry, u32 entryID, u32 seed)
{
    seed = (seed * 765 * (entryID + 1)) & 0xFFFF;
    seed |= seed << 16;

    entry->offset ^= seed;
    entry->length ^= seed;
}

static inline void DecodeString(charcode_t *str, u32 len, u32 entryID, u16 seed)
{
    seed = (entryID + 1) * KEY_START;

    while (len--) {
        *str ^= seed;
        str++;
        seed += KEY_INC;
    }
}

static inline u8 *EntryOffsetAddress(const MessageBank *bank, u32 bankIndex)
{
    return (u8 *)bank + bankIndex;
}

MessageBank *MessageBank_Load(enum NarcID narcID, u32 bankID, u32 heapID)
{
    return NARC_AllocAndReadWholeMemberByIndexPair(narcID, bankID, heapID);
}

void MessageBank_Free(MessageBank *bank)
{
    Heap_Free(bank);
}

void MessageBank_Get(const MessageBank *bank, u32 entryID, charcode_t *dst)
{
    if (entryID < bank->count) {
        MessageBankEntry entry = bank->entries[entryID];
        DecodeEntry(&entry, entryID, bank->seed);

        const charcode_t *str = (charcode_t *)EntryOffsetAddress(bank, entry.offset);
        MemCopyEntry(dst, str, &entry);
        DecodeString(dst, entry.length, entryID, bank->seed);

        return;
    }

    GF_ASSERT(FALSE);
}

void MessageBank_GetFromNARC(enum NarcID narcID, u32 bankID, u32 entryID, u32 heapID, charcode_t *dst)
{
    NARC *narc = NARC_ctor(narcID, heapID);

    if (narc) {
        MessageBank bank;
        NARC_ReadFromMember(narc, bankID, 0, sizeof(MessageBank), &bank);

        MessageBankEntry entry;
        NARC_ReadFromMember(narc, bankID, EntryOffset(entryID), sizeof(MessageBankEntry), &entry);

        DecodeEntry(&entry, entryID, bank.seed);

        u32 size = entry.length * sizeof(charcode_t);
        NARC_ReadFromMember(narc, bankID, entry.offset, size, dst);

        DecodeString(dst, entry.length, entryID, bank.seed);
        NARC_dtor(narc);
    }
}

static void MemCopyEntry(charcode_t *dst, const charcode_t *src, const MessageBankEntry *entry)
{
    MI_CpuCopy16(src, dst, entry->length * sizeof(charcode_t));
}

void MessageBank_GetString(const MessageBank *bank, u32 entryID, String *string)
{
    if (entryID < bank->count) {
        MessageBankEntry entry = bank->entries[entryID];
        DecodeEntry(&entry, entryID, bank->seed);

        u32 size = entry.length * sizeof(charcode_t);
        charcode_t *cstr = Heap_AllocAtEnd(HEAP_ID_SYSTEM, size);
        if (cstr) {
            MI_CpuCopy16(EntryOffsetAddress(bank, entry.offset), cstr, size);
            DecodeString(cstr, entry.length, entryID, bank->seed);

            String_CopyNumChars(string, cstr, entry.length);

            Heap_Free(cstr);
        }

        return;
    }

    GF_ASSERT(FALSE);
    String_Clear(string);
}

String *MessageBank_GetNewString(const MessageBank *bank, u32 entryID, u32 heapID)
{
    if (entryID < bank->count) {
        MessageBankEntry entry = bank->entries[entryID];
        DecodeEntry(&entry, entryID, bank->seed);

        u32 size = entry.length * sizeof(u16);
        charcode_t *cstr = Heap_AllocAtEnd(heapID, size);
        if (cstr) {
            MI_CpuCopy16(EntryOffsetAddress(bank, entry.offset), cstr, size);
            DecodeString(cstr, entry.length, entryID, bank->seed);

            String *string = String_Init(entry.length, heapID);
            if (string) {
                String_CopyNumChars(string, cstr, entry.length);
            }

            Heap_Free(cstr);
            return string;
        }

        return NULL;
    }

    GF_ASSERT(FALSE);
    return String_Init(4, heapID);
}

void MessageBank_GetStringFromNARC(enum NarcID narcID, u32 bankID, u32 entryID, u32 heapID, String *string)
{
    NARC *narc = NARC_ctor(narcID, heapID);

    if (narc) {
        MessageBank_GetStringFromHandle(narc, bankID, entryID, heapID, string);
        NARC_dtor(narc);
    }
}

void MessageBank_GetStringFromHandle(NARC *narc, u32 bankID, u32 entryID, u32 heapID, String *string)
{
    MessageBank bank;
    NARC_ReadFromMember(narc, bankID, 0, sizeof(MessageBank), &bank);

    if (entryID < bank.count) {
        MessageBankEntry entry;
        NARC_ReadFromMember(narc, bankID, EntryOffset(entryID), sizeof(MessageBankEntry), &entry);
        DecodeEntry(&entry, entryID, bank.seed);

        u32 size = entry.length * sizeof(charcode_t);
        charcode_t *cstr = Heap_AllocAtEnd(heapID, size);
        if (cstr) {
            NARC_ReadFromMember(narc, bankID, entry.offset, size, cstr);
            DecodeString(cstr, entry.length, entryID, bank.seed);

            String_CopyNumChars(string, cstr, entry.length);

            Heap_Free(cstr);
        }

        return;
    }

    GF_ASSERT(FALSE);
    String_Clear(string);
}

String *MessageBank_GetNewStringFromNARC(enum NarcID narcID, u32 bankID, u32 entryID, u32 heapID)
{
    NARC *narc = NARC_ctor(narcID, heapID);

    String *string;
    if (narc) {
        string = MessageBank_GetNewStringFromHandle(narc, bankID, entryID, heapID);
        NARC_dtor(narc);
    } else {
        string = String_Init(4, heapID);
    }

    return string;
}

String *MessageBank_GetNewStringFromHandle(NARC *narc, u32 bankID, u32 entryID, u32 heapID)
{
    MessageBank bank;
    NARC_ReadFromMember(narc, bankID, 0, sizeof(MessageBank), &bank);

    if (entryID < bank.count) {
        MessageBankEntry entry;
        NARC_ReadFromMember(narc, bankID, EntryOffset(entryID), sizeof(MessageBankEntry), &entry);
        DecodeEntry(&entry, entryID, bank.seed);

        String *string = String_Init(entry.length, heapID);
        if (string) {
            u32 size = entry.length * sizeof(charcode_t);
            charcode_t *cstr = Heap_AllocAtEnd(heapID, size);

            if (cstr) {
                NARC_ReadFromMember(narc, bankID, entry.offset, size, cstr);
                DecodeString(cstr, entry.length, entryID, bank.seed);

                String_CopyNumChars(string, cstr, entry.length);

                Heap_Free(cstr);
            }
        }

        return string;
    }

    GF_ASSERT(FALSE);
    return String_Init(4, heapID);
}

u32 MessageBank_EntryCount(const MessageBank *bank)
{
    return bank->count;
}

u32 MessageBank_NARCEntryCount(enum NarcID narcID, u32 bankID)
{
    MessageBank bank;
    NARC_ReadFromMemberByIndexPair(&bank, narcID, bankID, 0, sizeof(MessageBank));

    return bank.count;
}

MessageLoader *MessageLoader_Init(enum MessageLoaderMode mode, enum NarcID narcID, u32 bankID, u32 heapID)
{
    MessageLoader *loader = Heap_AllocAtEnd(heapID, sizeof(MessageLoader));

    if (loader) {
        if (mode == MSG_LOADER_PRELOAD_ENTIRE_BANK) {
            loader->bank = MessageBank_Load(narcID, bankID, heapID);

            if (loader->bank == NULL) {
                Heap_Free(loader);
                return NULL;
            }
        } else {
            loader->narc = NARC_ctor(narcID, heapID);
        }

        loader->mode = mode;
        loader->narcID = narcID;
        loader->bankID = bankID;
        loader->heapID = heapID;
    }

    return loader;
}

void MessageLoader_Free(MessageLoader *loader)
{
    if (loader) {
        switch (loader->mode) {
        case MSG_LOADER_PRELOAD_ENTIRE_BANK:
            MessageBank_Free(loader->bank);
            break;
        case MSG_LOADER_LOAD_ON_DEMAND:
            NARC_dtor(loader->narc);
            break;
        }

        Heap_Free(loader);
    }
}

void MessageLoader_GetString(const MessageLoader *loader, u32 entryID, String *string)
{
    switch (loader->mode) {
    case MSG_LOADER_PRELOAD_ENTIRE_BANK:
        MessageBank_GetString(loader->bank, entryID, string);
        break;
    case MSG_LOADER_LOAD_ON_DEMAND:
        MessageBank_GetStringFromHandle(loader->narc, loader->bankID, entryID, loader->heapID, string);
        break;
    }
}

String *MessageLoader_GetNewString(const MessageLoader *loader, u32 entryID)
{
    switch (loader->mode) {
    case MSG_LOADER_PRELOAD_ENTIRE_BANK:
        return MessageBank_GetNewString(loader->bank, entryID, loader->heapID);
    case MSG_LOADER_LOAD_ON_DEMAND:
        return MessageBank_GetNewStringFromHandle(loader->narc, loader->bankID, entryID, loader->heapID);
    }

    return NULL;
}

u32 MessageLoader_MessageCount(const MessageLoader *loader)
{
    switch (loader->mode) {
    case MSG_LOADER_PRELOAD_ENTIRE_BANK:
        return MessageBank_EntryCount(loader->bank);
    case MSG_LOADER_LOAD_ON_DEMAND:
        return MessageBank_NARCEntryCount(loader->narcID, loader->bankID);
    }

    return 0;
}

void MessageLoader_Get(const MessageLoader *loader, u32 entryID, charcode_t *dst)
{
    switch (loader->mode) {
    case MSG_LOADER_PRELOAD_ENTIRE_BANK:
        MessageBank_Get(loader->bank, entryID, dst);
        break;
    case MSG_LOADER_LOAD_ON_DEMAND:
        MessageBank_GetFromNARC(loader->narcID, loader->bankID, entryID, loader->heapID, dst);
        break;
    }
}

void MessageLoader_GetSpeciesName(u32 species, u32 heapID, charcode_t *dst)
{
    MessageLoader *loader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, heapID);

    MessageLoader_Get(loader, species, dst);
    MessageLoader_Free(loader);
}
