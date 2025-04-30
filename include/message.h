#ifndef POKEPLATINUM_MESSAGE_H
#define POKEPLATINUM_MESSAGE_H

#include "generated/text_banks.h"

#include "narc.h"
#include "strbuf.h"

typedef struct MessageBankEntry {
    u32 offset;
    u32 length;
} MessageBankEntry;

typedef struct MessageBank {
    u16 count;
    u16 seed;

    MessageBankEntry entries[];
} MessageBank;

typedef struct MessageLoader {
    u16 type;
    u16 heapID;
    u16 narcID;
    u16 bankID;

    union {
        MessageBank *bank;
        NARC *narc;
    };
} MessageLoader;

enum MessageLoaderType {
    MESSAGE_LOADER_BANK_HANDLE,
    MESSAGE_LOADER_NARC_HANDLE,
};

/**
 * @brief Load a message file out of the given NARC.
 *
 * @param narcID
 * @param dataID    Index of the message data file in the NARC.
 * @param heapID    Which heap will own the allocation.
 * @return Allocated message data.
 */
MessageBank *MessageBank_Load(enum NarcID narcID, u32 param1, u32 param2);

/**
 * @brief Free allocated message data back to the heap.
 *
 * @param msgData
 */
void MessageBank_Free(MessageBank *param0);

/**
 * @brief Get an entry out of the pre-loaded message bank and copy it into the
 * destination buffer.
 *
 * @param bank      Loaded message bank.
 * @param entryID   Entry in the message bank to load.
 * @param dst       Destination character buffer.
 */
void MessageBank_Get(const MessageBank *bank, u32 entryID, charcode_t *dst);

/**
 * @brief Load a message bank from an archive, then load an entry from that bank
 * and copy it into the destination buffer.
 *
 * @param narcID    Archive from which to load the message bank.
 * @param bankID    Index of the bank to load from the archive.
 * @param entryID   Index of the entry to load from the bank.
 * @param heapID    Heap on which to allocate the loaded archive.
 * @param dst       Destination character buffer.
 */
void MessageBank_GetFromNARC(enum NarcID narcID, u32 bankID, u32 entryID, u32 heapID, charcode_t *dst);

/**
 * @brief Get an entry out of the pre-loaded message bank and copy it into the
 * destination Strbuf struct.
 *
 * @param bank      Loaded message bank.
 * @param entryID   Entry in the message bank to load.
 * @param strbuf    Destination Strbuf struct.
 */
void MessageBank_GetStrbuf(const MessageBank *bank, u32 entryID, Strbuf *strbuf);

/**
 * @brief Load a message bank from an archive, then load an entry from that bank
 * and copy it into a newly-allocated Strbuf struct.
 *
 * @param bank      Loaded message bank.
 * @param entryID   Entry in the message bank to load.
 * @param heapID    Heap on which to allocate the new Strbuf struct.
 * @return A newly-allocated Strbuf struct containing the loaded bank entry.
 */
Strbuf *MessageBank_GetNewStrbuf(const MessageBank *bank, u32 entryID, u32 heapID);

/**
 * @brief Load a message bank from an archive, then load an entry from that bank
 * and copy it into the destination Strbuf struct.
 *
 * @param narcID    Archive from which to load the message bank.
 * @param bankID    Index of the bank to load from the archive.
 * @param entryID   Index of the entry to load from the bank.
 * @param heapID    Heap on which to allocate the loaded archive.
 * @param strbuf    Destination Strbuf struct.
 */
void MessageBank_GetStrbufFromNARC(enum NarcID narcID, u32 bankID, u32 entryID, u32 heapID, Strbuf *strbuf);

/**
 * @brief Load a message bank from an archive, then load an entry from that bank
 * and copy it into the destination Strbuf struct.
 *
 * @param narc      Archive from which to load the message bank.
 * @param bankID    Index of the bank to load from the archive.
 * @param entryID   Index of the entry to load from the bank.
 * @param heapID    Heap on which to allocate the loaded archive.
 * @param strbuf    Destination Strbuf struct.
 */
void MessageBank_GetStrbufFromHandle(NARC *narc, u32 bankID, u32 entryID, u32 heapID, Strbuf *strbuf);

/**
 * @brief Load a message bank from an archive, then load an entry from that bank
 * and copy it into a destination Strbuf struct.
 *
 * @param narcID    Archive from which to load the message bank.
 * @param bankID    Index of the bank to load from the archive.
 * @param entryID   Index of the entry to load from the bank.
 * @param heapID    Heap on which to allocate the loaded archive.
 * @return A newly-allocated Strbuf struct containing the loaded bank entry.
 */
Strbuf *MessageBank_GetNewStrbufFromNARC(enum NarcID narcID, u32 bankID, u32 entryID, u32 heapID);

/**
 * @brief Load a message bank from an archive, then load an entry from that bank
 * and copy it into a destination Strbuf struct.
 *
 * @param narc      Archive from which to load the message bank.
 * @param bankID    Index of the bank to load from the archive.
 * @param entryID   Index of the entry to load from the bank.
 * @param heapID    Heap on which to allocate the loaded archive.
 * @return A newly-allocated Strbuf struct containing the loaded bank entry.
 */
Strbuf *MessageBank_GetNewStrbufFromHandle(NARC *narc, u32 bankID, u32 entryID, u32 heapID);

/**
 * @brief Get the number of entries in a pre-loaded message bank.
 *
 * @param bank      Pre-loaded message bank.
 * @return Number of entries in the bank.
 */
u32 MessageBank_EntryCount(const MessageBank *bank);

/**
 * @brief Get the number of entries in a bank by loading it from an archive.
 *
 * @param narcID    Archive from which to load the bank.
 * @param bankID    Index of the bank to load from the archive.
 * @return Number of entries in the loaded bank.
 */
u32 MessageBank_NARCEntryCount(enum NarcID narcID, u32 bankID);

/**
 * @brief Initialize a new MessageLoader struct targeting a given archive and
 * message bank.
 *
 * @param type      The load-type; controls if we use a bank or NARC handle.
 * @param narcID    Archive from which to load any banks.
 * @param bankID    Index of the bank we are targeting.
 * @param heapID    Heap on which to allocate the loaded archive.
 * @return Initialized MessageLoader struct.
 */
MessageLoader *MessageLoader_Init(enum MessageLoaderType type, enum NarcID narcID, u32 bankID, u32 heapID);

/**
 * @brief Free a MessageLoader struct back to its owning heap.
 *
 * @param loader    The struct to be freed.
 */
void MessageLoader_Free(MessageLoader *loader);

/**
 * @brief Load a bank entry into the destination Strbuf struct.
 *
 * @param loader    The loader; controls the entry load from a message bank.
 * @param entryID   The entry to be loaded from the loader's target bank.
 * @param strbuf    Destination Strbuf struct.
 */
void MessageLoader_GetStrbuf(const MessageLoader *loader, u32 entryID, Strbuf *strbuf);

/**
 * @brief Load a bank entry and copy it into a newly-allocated Strbuf struct.
 *
 * @param loader    The loader; controls the entry load from a message bank.
 * @param entryID   The entry to be loaded from the loader's target bank.
 * @return A newly-allocated Strbuf struct containing the loaded bank entry.
 */
Strbuf *MessageLoader_GetNewStrbuf(const MessageLoader *loader, u32 entryID);

/**
 * @brief Get the number of entries in the loader's target message bank.
 *
 * @param loader    The loader.
 * @return The number of entries in the loader's target message bank.
 */
u32 MessageLoader_MessageCount(const MessageLoader *loader);

/**
 * @brief Load a bank entry into the destination buffer.
 *
 * @param loader    The loader; controls the entry load from a message bank.
 * @param entryID   The entry to be loaded from the loader's target bank.
 * @param dst       The destination buffer.
 */
void MessageLoader_Get(const MessageLoader *loader, u32 entryID, charcode_t *dst);

/**
 * @brief Load the name of a Pokemon species into the destination buffer into
 * a destination buffer.
 *
 * @param species   The target species ID; targets an entry in pl_personal.
 * @param heapID    Heap on which to allocate the temporary message bank load.
 * @param dst       The destination buffer.
 */
void MessageLoader_GetSpeciesName(u32 species, u32 heapID, charcode_t *dst);

#endif // POKEPLATINUM_MESSAGE_H
