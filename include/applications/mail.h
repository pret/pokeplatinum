#ifndef POKEPLATINUM_APPLICATIONS_MAIL_H
#define POKEPLATINUM_APPLICATIONS_MAIL_H

#include "struct_defs/sentence.h"

#include "game_options.h"
#include "mail.h"
#include "pokemon.h"
#include "savedata.h"
#include "string_gf.h"

typedef struct MailAppArgs {
    u16 writeMode;
    u8 padding[2];
    BOOL mailWritten;
    enum MailContext contextUnused;
    u16 mailboxSlotUnused;
    u8 partySlotUnused;
    u8 mailType;
    SaveData *saveData;
    Mail *mail;
    Mailbox *mailbox;
} MailAppArgs;

typedef struct MailViewerAppArgs {
    union {
        u16 writeMode;
        u16 result;
    };
    u8 sentenceIndex;
    u8 horizontalSelectionIndex;
    Options *options;
    u32 trainerID;
    u8 padding;
    u8 language;
    u8 gameVersion;
    u8 mailType;
    String *trainerName;
    MailIconData iconData[MAIL_MAX_ICONS];
    Sentence sentences[MAIL_MAX_SENTENCES];
} MailViewerAppArgs;

MailAppArgs *MailAppArgs_New_Write(SaveData *saveData, enum MailContext context, u8 partySlot, u8 mailType, enum HeapID heapID);
MailAppArgs *MailAppArgs_New_ReadFromMailbox(SaveData *saveData, enum MailContext context, u16 mailboxSlot, enum HeapID heapID);
MailAppArgs *MailAppArgs_New_ReadHeld(SaveData *saveData, Pokemon *mon, enum HeapID heapID);
MailAppArgs *MailAppArgs_New_Check(SaveData *saveData, u8 mailType, enum HeapID heapID);
BOOL MailApp_WasMailWritten(MailAppArgs *args);
BOOL MailApp_CopyWrittenMailToMailboxSlot(MailAppArgs *args, enum MailContext context, u8 slot);
BOOL MailApp_AddWrittenMailToMon(MailAppArgs *args, Pokemon *mon);
void MailAppArgs_Free(MailAppArgs *args);
int Mail_TransferFromMonToMailbox(Mailbox *mailbox, Pokemon *mon, enum HeapID heapID);
int Mail_TransferFromMailboxToMon(Mailbox *mailbox, u16 slot, Pokemon *mon, enum HeapID heapID);

#endif // POKEPLATINUM_APPLICATIONS_MAIL_H
