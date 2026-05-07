#ifndef POKEPLATINUM_MAIL_H
#define POKEPLATINUM_MAIL_H

#include "constants/string.h"

#include "struct_defs/sentence.h"

#include "charcode.h"
#include "savedata.h"

#define MAIL_TYPE_NONE 0xFFFF

#define MAIL_MON_ICON_NONE 0xFFFF

#define MAIL_MAX_SENTENCES 3
#define MAIL_MAX_ICONS     3

#define MAILBOX_SIZE 20

enum MailContext {
    MAIL_CONTEXT_MAILBOX = 0,
    MAIL_CONTEXT_1_UNUSED,
    MAIL_CONTEXT_WRITE,
    MAIL_CONTEXT_CHECK,
};

enum MailIconDataType {
    ICON_DATA_SPRITE_INDEX = 0,
    ICON_DATA_PLTT_INDEX,
    ICON_DATA_VALUE,
};

typedef union MailIconData {
    struct {
        u16 spriteIndex : 12;
        u16 palIndex : 4;
    } asStruct;
    u16 asValue;
} MailIconData;

typedef struct Mail {
    u32 trainerID;
    u8 trainerGender;
    u8 language;
    u8 gameVersion;
    u8 mailType;
    charcode_t trainerName[TRAINER_NAME_LEN + 1];
    MailIconData iconData[MAIL_MAX_ICONS];
    u16 platExclusiveFormIcons;
    Sentence sentences[MAIL_MAX_SENTENCES];
} Mail;

typedef struct Mailbox {
    Mail mail[MAILBOX_SIZE];
} Mailbox;

void Mail_Reset(Mail *mail);
BOOL Mail_IsValid(Mail *mail);
Mail *Mail_New(enum HeapID heapID);
void Mail_Copy(Mail *src, Mail *dest);
void Mail_SetTrainerAndIconData(Mail *mail, u8 mailType, u8 selectedPartySlot, SaveData *saveData);
u32 Mail_GetTrainerID(const Mail *mail);
charcode_t *Mail_GetTrainerName(Mail *mail);
u8 Mail_GetTrainerGender(const Mail *mail);
u8 Mail_GetMailType(const Mail *mail);
void Mail_SetMailType(Mail *mail, const u8 mailType);
u8 Mail_GetLanguage(const Mail *mail);
u8 Mail_GetGameVersion(const Mail *mail);
u16 Mail_GetIconData(const Mail *mail, u8 index, enum MailIconDataType type, u16 platExclusiveFormIcons);
u16 Mail_GetPlatExclusiveFormIcons(const Mail *mail);
Sentence *Mail_GetSentence(Mail *mail, u8 index);
void Mail_SetSentence(Mail *mail, Sentence *sentence, u8 index);
Mailbox *SaveData_GetMailbox(SaveData *saveData);
int Mailbox_SaveSize(void);
void Mailbox_Init(Mailbox *mailbox);
int Mail_GetEmptyMailSlot(Mailbox *mailbox, enum MailContext context);
void Mailbox_ClearMailAtSlot(Mailbox *mailbox, enum MailContext context, int slot);
void Mailbox_CopyMailToSlot(Mailbox *mailbox, enum MailContext context, int slot, Mail *src);
int Mailbox_CountMail(Mailbox *mailbox, enum MailContext context);
Mail *Mailbox_CopyMailAtSlot(Mailbox *mailbox, enum MailContext context, int slot, enum HeapID heapID);
void Mailbox_GetMailAtSlot(Mailbox *mailbox, enum MailContext context, int slot, Mail *out);

#endif // POKEPLATINUM_MAIL_H
