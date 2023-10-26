#include <nitro.h>
#include <string.h>

#include "constants/message_banks.h"

#include "struct_decls/struct_02006C24_decl.h"

#include "heap.h"
#include "message.h"
#include "narc.h"
#include "strbuf.h"

#define KEY_START 596947
#define KEY_INC 18749

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

static inline u8* EntryOffsetAddress(const MessageBank *bank, u32 bankIndex)
{
    return (u8 *)bank + bankIndex;
}

MessageBank* MessageBank_Load(u32 narcID, u32 bankID, u32 heapID)
{
    return NARC_AllocAndReadWholeMemberByIndexPair(narcID, bankID, heapID);
}

void MessageBank_Free(MessageBank *bank)
{
    Heap_FreeToHeap(bank);
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

void MessageBank_GetFromNARC(u32 narcID, u32 bankID, u32 entryID, u32 heapID, charcode_t *dst)
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

void MessageBank_GetStrbuf(const MessageBank *bank, u32 entryID, Strbuf *strbuf)
{
    if (entryID < bank->count) {
        MessageBankEntry entry = bank->entries[entryID];
        DecodeEntry(&entry, entryID, bank->seed);

        u32 size = entry.length * sizeof(charcode_t);
        charcode_t *cstr = Heap_AllocFromHeapAtEnd(0, size);
        if (cstr) {
            MI_CpuCopy16(EntryOffsetAddress(bank, entry.offset), cstr, size);
            DecodeString(cstr, entry.length, entryID, bank->seed);

            Strbuf_CopyNumChars(strbuf, cstr, entry.length);

            Heap_FreeToHeap(cstr);
        }

        return;
    }

    GF_ASSERT(FALSE);
    Strbuf_Clear(strbuf);
}

Strbuf* MessageBank_GetNewStrbuf(const MessageBank *bank, u32 entryID, u32 heapID)
{
    if (entryID < bank->count) {
        MessageBankEntry entry = bank->entries[entryID];
        DecodeEntry(&entry, entryID, bank->seed);

        u32 size = entry.length * sizeof(u16);
        charcode_t *cstr = Heap_AllocFromHeapAtEnd(heapID, size);
        if (cstr) {
            MI_CpuCopy16(EntryOffsetAddress(bank, entry.offset), cstr, size);
            DecodeString(cstr, entry.length, entryID, bank->seed);

            Strbuf *strbuf = Strbuf_Init(entry.length, heapID);
            if (strbuf) {
                Strbuf_CopyNumChars(strbuf, cstr, entry.length);
            }

            Heap_FreeToHeap(cstr);
            return strbuf;
        }

        return NULL;
    }

    GF_ASSERT(FALSE);
    return Strbuf_Init(4, heapID);
}

void MessageBank_GetStrbufFromNARC(u32 narcID, u32 bankID, u32 entryID, u32 heapID, Strbuf *strbuf)
{
    NARC *narc = NARC_ctor(narcID, heapID);

    if (narc) {
        MessageBank_GetStrbufFromHandle(narc, bankID, entryID, heapID, strbuf);
        NARC_dtor(narc);
    }
}

void MessageBank_GetStrbufFromHandle(NARC *narc, u32 bankID, u32 entryID, u32 heapID, Strbuf *strbuf)
{
    MessageBank bank;
    NARC_ReadFromMember(narc, bankID, 0, sizeof(MessageBank), &bank);

    if (entryID < bank.count) {
        MessageBankEntry entry;
        NARC_ReadFromMember(narc, bankID, EntryOffset(entryID), sizeof(MessageBankEntry), &entry);
        DecodeEntry(&entry, entryID, bank.seed);

        u32 size = entry.length * sizeof(charcode_t);
        charcode_t *cstr = Heap_AllocFromHeapAtEnd(heapID, size);
        if (cstr) {
            NARC_ReadFromMember(narc, bankID, entry.offset, size, cstr);
            DecodeString(cstr, entry.length, entryID, bank.seed);

            Strbuf_CopyNumChars(strbuf, cstr, entry.length);

            Heap_FreeToHeap(cstr);
        }

        return;
    }

    GF_ASSERT(FALSE);
    Strbuf_Clear(strbuf);
}

Strbuf* MessageBank_GetNewStrbufFromNARC (u32 narcID, u32 bankID, u32 entryID, u32 heapID)
{
    NARC *narc = NARC_ctor(narcID, heapID);

    Strbuf *strbuf;
    if (narc) {
        strbuf = MessageBank_GetNewStrbufFromHandle(narc, bankID, entryID, heapID);
        NARC_dtor(narc);
    } else {
        strbuf = Strbuf_Init(4, heapID);
    }

    return strbuf;
}

Strbuf* MessageBank_GetNewStrbufFromHandle(NARC *narc, u32 bankID, u32 entryID, u32 heapID)
{
    MessageBank bank;
    NARC_ReadFromMember(narc, bankID, 0, sizeof(MessageBank), &bank);

    if (entryID < bank.count) {
        MessageBankEntry entry;
        NARC_ReadFromMember(narc, bankID, EntryOffset(entryID), sizeof(MessageBankEntry), &entry);
        DecodeEntry(&entry, entryID, bank.seed);

        Strbuf *strbuf = Strbuf_Init(entry.length, heapID);
        if (strbuf) {
            u32 size = entry.length * sizeof(charcode_t);
            charcode_t *cstr = Heap_AllocFromHeapAtEnd(heapID, size);

            if (cstr) {
                NARC_ReadFromMember(narc, bankID, entry.offset, size, cstr);
                DecodeString(cstr, entry.length, entryID, bank.seed);

                Strbuf_CopyNumChars(strbuf, cstr, entry.length);

                Heap_FreeToHeap(cstr);
            }
        }

        return strbuf;
    }

    GF_ASSERT(FALSE);
    return Strbuf_Init(4, heapID);
}

u32 MessageBank_EntryCount(const MessageBank *bank)
{
    return bank->count;
}

u32 MessageBank_NARCEntryCount(u32 narcID, u32 bankID)
{
    MessageBank bank;
    NARC_ReadFromMemberByIndexPair(&bank, narcID, bankID, 0, sizeof(MessageBank));

    return bank.count;
}

MessageLoader* MessageLoader_Init(enum MessageLoaderType type, u32 narcID, u32 bankID, u32 heapID)
{
    MessageLoader *loader = Heap_AllocFromHeapAtEnd(heapID, sizeof(MessageLoader));

    if (loader) {
        if (type == MESSAGE_LOADER_BANK_HANDLE) {
            loader->bank = MessageBank_Load(narcID, bankID, heapID);

            if (loader->bank == NULL) {
                Heap_FreeToHeap(loader);
                return NULL;
            }
        } else {
            loader->narc = NARC_ctor(narcID, heapID);
        }

        loader->type = type;
        loader->narcID = narcID;
        loader->bankID = bankID;
        loader->heapID = heapID;
    }

    return loader;
}

void MessageLoader_Free(MessageLoader *loader)
{
    if (loader) {
        switch (loader->type) {
        case MESSAGE_LOADER_BANK_HANDLE:
            MessageBank_Free(loader->bank);
            break;
        case MESSAGE_LOADER_NARC_HANDLE:
            NARC_dtor(loader->narc);
            break;
        }

        Heap_FreeToHeap(loader);
    }
}

void MessageLoader_GetStrbuf(const MessageLoader *loader, u32 entryID, Strbuf *strbuf)
{
    switch (loader->type) {
    case MESSAGE_LOADER_BANK_HANDLE:
        MessageBank_GetStrbuf(loader->bank, entryID, strbuf);
        break;
    case MESSAGE_LOADER_NARC_HANDLE:
        MessageBank_GetStrbufFromHandle(loader->narc, loader->bankID, entryID, loader->heapID, strbuf);
        break;
    }
}

Strbuf* MessageLoader_GetNewStrbuf(const MessageLoader *loader, u32 entryID)
{
    switch (loader->type) {
    case MESSAGE_LOADER_BANK_HANDLE:
        return MessageBank_GetNewStrbuf(loader->bank, entryID, loader->heapID);
    case MESSAGE_LOADER_NARC_HANDLE:
        return MessageBank_GetNewStrbufFromHandle(loader->narc, loader->bankID, entryID, loader->heapID);
    }

    return NULL;
}

u32 MessageLoader_MessageCount(const MessageLoader *loader)
{
    switch (loader->type) {
    case MESSAGE_LOADER_BANK_HANDLE:
        return MessageBank_EntryCount(loader->bank);
    case MESSAGE_LOADER_NARC_HANDLE:
        return MessageBank_NARCEntryCount(loader->narcID, loader->bankID);
    }

    return 0;
}

void MessageLoader_Get(const MessageLoader *loader, u32 entryID, charcode_t *dst)
{
    switch (loader->type) {
    case MESSAGE_LOADER_BANK_HANDLE:
        MessageBank_Get(loader->bank, entryID, dst);
        break;
    case MESSAGE_LOADER_NARC_HANDLE:
        MessageBank_GetFromNARC(loader->narcID, loader->bankID, entryID, loader->heapID, dst);
        break;
    }
}

void MessageLoader_GetSpeciesName(u32 species, u32 heapID, charcode_t *dst)
{
    MessageLoader *loader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, MESSAGE_BANK_SPECIES_NAMES, heapID);

    MessageLoader_Get(loader, species, dst);
    MessageLoader_Free(loader);
}
