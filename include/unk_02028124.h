#ifndef POKEPLATINUM_UNK_02028124_H
#define POKEPLATINUM_UNK_02028124_H

#include "struct_defs/mail.h"

#include "savedata.h"

void Mail_Init(Mail *mail);
BOOL Mail_IsEmpty(Mail *mail);
Mail *Mail_New(int heapID);
void Mail_Copy(Mail *src, Mail *dest);
void sub_020281AC(Mail *mail, u8 mailType, u8 param2, SaveData *saveData);
u32 Mail_GetTrainerID(const Mail *mail);
u16 *sub_0202830C(Mail *param0);
u8 Mail_GetTrainerGender(const Mail *mail);
u8 Mail_GetMailType(const Mail *mail);
void Mail_SetMailType(Mail *mail, const u8 mailType);
u8 Mail_GetLanguage(const Mail *mail);
u8 Mail_GetGameVersion(const Mail *mail);
u16 sub_02028328(const Mail *param0, u8 param1, u8 param2, u16 param3);
u16 sub_02028408(const Mail *param0);
Sentence *sub_0202840C(Mail *param0, u8 param1);
void sub_0202841C(Mail *param0, Sentence *param1, u8 param2);
Mailbox *SaveData_GetMailbox(SaveData *saveData);
int Mailbox_SaveSize(void);
void Mailbox_Init(Mailbox *mailbox);
int Mail_GetEmptySlotInArray(Mailbox *mailbox, int param1);
void sub_02028470(Mailbox *mailbox, int param1, int slot);
void Mailbox_CopyMailToSlot(Mailbox *mailbox, int param1, int slot, Mail *src);
int sub_02028494(Mailbox *mailbox, int param1);
Mail *sub_020284A8(Mailbox *mailbox, int param1, int slot, int heapID);
void sub_020284CC(Mailbox *mailbox, int param1, int param2, Mail *param3);

#endif // POKEPLATINUM_UNK_02028124_H
