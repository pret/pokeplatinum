#ifndef POKEPLATINUM_SAVE_TABLE_ENTRY_H
#define POKEPLATINUM_SAVE_TABLE_ENTRY_H

typedef int (*SaveEntrySizeFunc)(void);
typedef void (*SaveEntryInitFunc)(void*);

typedef struct SaveTableEntry {
    int dataID; //< Canonical ID for the entry. Used by external functions to retrieve it from the table.
    u32 blockID; //< Block ID for the entry. Specifies what block of the save data the entry is stored in.
    SaveEntrySizeFunc sizeFunc; //< Function for determining how large the entry is.
    SaveEntryInitFunc initFunc; //< Function for initializing an empty entry.
} SaveTableEntry;

#endif // POKEPLATINUM_SAVE_TABLE_ENTRY_H
