#include "mail.h"

#include <nitro.h>
#include <string.h>

#include "constants/forms.h"
#include "constants/items.h"
#include "generated/genders.h"
#include "generated/species.h"

#include "struct_defs/mail.h"
#include "struct_defs/union_02028328.h"

#include "charcode_util.h"
#include "heap.h"
#include "party.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "save_player.h"
#include "savedata.h"
#include "trainer_info.h"
#include "unk_02014A84.h"

static int Mail_GetEmptySlotInArray_(Mail *array, int arraySize);
static int Mail_GetEmptySlotCountInArray(Mail *array, int arraySize);
static Mail *Mailbox_GetMailFromSlot(Mailbox *mailbox, int param1, int slot);

static const struct {
    u16 unk_00;
    u16 unk_02;
    u16 species;
    u8 form;
    u8 unk_07;
} Unk_020E5B0C[] = {
    { 0x1EE, 0x21C, SPECIES_GIRATINA, GIRATINA_FORM_ORIGIN },
    { 0x1F3, 0x21D, SPECIES_SHAYMIN, SHAYMIN_FORM_SKY },
    { 0x1E6, 0x21E, SPECIES_ROTOM, ROTOM_FORM_HEAT },
    { 0x1E6, 0x21F, SPECIES_ROTOM, ROTOM_FORM_WASH },
    { 0x1E6, 0x220, SPECIES_ROTOM, ROTOM_FORM_FROST },
    { 0x1E6, 0x221, SPECIES_ROTOM, ROTOM_FORM_FAN },
    { 0x1E6, 0x222, SPECIES_ROTOM, ROTOM_FORM_MOW }
};

void Mail_Init(Mail *mail)
{
    int i;

    mail->trainerID = 0;
    mail->trainerGender = GENDER_MALE;
    mail->language = gGameLanguage;
    mail->gameVersion = gGameVersion;
    mail->mailType = 0xFFFF;

    CharCode_FillWithEOS(mail->trainerName, 8);

    for (i = 0; i < 3; i++) {
        mail->unk_18[i].val2 = 0xFFFF;
    }

    mail->unk_1E = 0;

    for (i = 0; i < 3; i++) {
        sub_02014A84(&mail->unk_20[i]);
    }
}

BOOL Mail_IsEmpty(Mail *mail)
{
    if ((mail->mailType >= 0) && (mail->mailType <= 11)) {
        return TRUE;
    }

    return FALSE;
}

Mail *Mail_New(int heapID)
{
    Mail *mail = Heap_AllocFromHeapAtEnd(heapID, sizeof(Mail));
    Mail_Init(mail);

    return mail;
}

void Mail_Copy(Mail *src, Mail *dest)
{
    MI_CpuCopy8(src, dest, sizeof(Mail));
}

void sub_020281AC(Mail *mail, u8 mailType, u8 param2, SaveData *saveData)
{
    u8 i, v1, palIndex, j;
    u16 species;
    u32 spriteIndex, isEgg, form;
    TrainerInfo *trainerInfo;
    Pokemon *mon;

    Mail_Init(mail);

    mail->mailType = mailType;
    Party *party = SaveData_GetParty(saveData);
    trainerInfo = SaveData_GetTrainerInfo(saveData);

    CharCode_Copy(mail->trainerName, TrainerInfo_Name(trainerInfo));

    mail->trainerGender = (u8)TrainerInfo_Gender(trainerInfo);
    mail->trainerID = TrainerInfo_ID(trainerInfo);
    mail->unk_1E = 0;

    for (i = param2, v1 = 0; i < Party_GetCurrentCount(party); i++) {
        mon = Party_GetPokemonBySlotIndex(party, i);
        species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
        isEgg = Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL);
        form = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);
        spriteIndex = Pokemon_IconSpriteIndex(mon);
        palIndex = PokeIconPaletteIndex(species, form, isEgg);

        mail->unk_18[v1].val1_0 = (u16)spriteIndex;
        mail->unk_18[v1].val1_12 = palIndex;

        for (j = 0; j < NELEMS(Unk_020E5B0C); j++) {
            if ((Unk_020E5B0C[j].unk_02 == mail->unk_18[v1].val1_0) && (Unk_020E5B0C[j].form == form)) {
                mail->unk_18[v1].val1_0 = Unk_020E5B0C[j].unk_00;
                mail->unk_18[v1].val1_12 = PokeIconPaletteIndex(species, 0, isEgg);
                mail->unk_1E |= Unk_020E5B0C[j].form << (v1 * 5);
                break;
            }
        }

        v1++;

        if (v1 >= 3) {
            break;
        }
    }
}

u32 Mail_GetTrainerID(const Mail *mail)
{
    return mail->trainerID;
}

u16 *Mail_GetTrainerName(Mail *mail)
{
    return &(mail->trainerName[0]);
}

u8 Mail_GetTrainerGender(const Mail *mail)
{
    return mail->trainerGender;
}

u8 Mail_GetMailType(const Mail *mail)
{
    return mail->mailType;
}

void Mail_SetMailType(Mail *mail, const u8 mailType)
{
    if (mailType >= NUM_MAILS) {
        return;
    }

    mail->mailType = mailType;
}

u8 Mail_GetLanguage(const Mail *mail)
{
    return mail->language;
}

u8 Mail_GetGameVersion(const Mail *mail)
{
    return mail->gameVersion;
}

u16 sub_02028328(const Mail *mail, u8 param1, u8 param2, u16 param3)
{
    UnkUnion_02028328 v0;
    int i;

    if (param1 < 3) {
        v0 = mail->unk_18[param1];

        for (i = 0; i < NELEMS(Unk_020E5B0C); i++) {
            if ((Unk_020E5B0C[i].unk_00 == v0.val1_0) && (Unk_020E5B0C[i].form == ((param3 >> (param1 * 5)) & 0x1f))) {
                v0.val1_0 = Unk_020E5B0C[i].unk_02;
                v0.val1_12 = PokeIconPaletteIndex(Unk_020E5B0C[i].species, Unk_020E5B0C[i].form, FALSE);
                break;
            }
        }

        if (v0.val1_0 > 546) {
            v0.val1_0 = 7;
            v0.val1_12 = 0;
        }

        switch (param2) {
        case 0:
            return v0.val1_0;
        case 1:
            return v0.val1_12;
        case 2:
        default:
            return v0.val2;
        }
    } else {
        return 0;
    }
}

u16 sub_02028408(const Mail *param0)
{
    return param0->unk_1E;
}

Sentence *sub_0202840C(Mail *param0, u8 param1)
{
    if (param1 < 3) {
        return &(param0->unk_20[param1]);
    } else {
        return &(param0->unk_20[0]);
    }
}

void sub_0202841C(Mail *param0, Sentence *param1, u8 param2)
{
    if (param2 >= 3) {
        return;
    }

    sub_02014CC0(&param0->unk_20[param2], param1);
}

Mailbox *SaveData_GetMailbox(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_MAILBOX);
}

int Mailbox_SaveSize(void)
{
    return sizeof(Mailbox);
}

void Mailbox_Init(Mailbox *mailbox)
{
    int i = 0;

    for (i = 0; i < MAILBOX_SIZE; i++) {
        Mail_Init(&mailbox->mail[i]);
    }
}

int Mail_GetEmptySlotInArray(Mailbox *mailbox, int param1)
{
    switch (param1) {
    case 0:
        return Mail_GetEmptySlotInArray_(mailbox->mail, MAILBOX_SIZE);
    default:
        return 0xFFFFFFFF;
    }

    return 0xFFFFFFFF;
}

void sub_02028470(Mailbox *mailbox, int param1, int slot)
{
    Mail *mail = Mailbox_GetMailFromSlot(mailbox, param1, slot);

    if (mail != NULL) {
        Mail_Init(mail);
    }
}

void Mailbox_CopyMailToSlot(Mailbox *mailbox, int param1, int slot, Mail *src)
{
    Mail *dest = Mailbox_GetMailFromSlot(mailbox, param1, slot);

    if (dest != NULL) {
        Mail_Copy(src, dest);
    }
}

int sub_02028494(Mailbox *mailbox, int param1)
{
    switch (param1) {
    case 0:
        return Mail_GetEmptySlotCountInArray(mailbox->mail, MAILBOX_SIZE);
    default:
        return 0;
    }

    return 0;
}

Mail *sub_020284A8(Mailbox *mailbox, int param1, int slot, int heapID)
{
    Mail *v0 = Mailbox_GetMailFromSlot(mailbox, param1, slot);
    Mail *v1 = Mail_New(heapID);

    if (v0 != NULL) {
        Mail_Copy(v0, v1);
    }

    return v1;
}

void sub_020284CC(Mailbox *mailbox, int param1, int param2, Mail *param3)
{
    Mail *v0 = Mailbox_GetMailFromSlot(mailbox, param1, param2);

    if (v0 == NULL) {
        Mail_Init(param3);
    } else {
        Mail_Copy(v0, param3);
    }
}

static int Mail_GetEmptySlotInArray_(Mail *array, int arraySize)
{
    int i = 0;

    for (i = 0; i < arraySize; i++) {
        if (!Mail_IsEmpty(&array[i])) {
            return i;
        }
    }

    return 0xFFFFFFFF;
}

static int Mail_GetEmptySlotCountInArray(Mail *array, int arraySize)
{
    int i = 0;
    int count = 0;

    for (i = 0; i < arraySize; i++) {
        if (Mail_IsEmpty(&array[i])) {
            count++;
        }
    }

    return count;
}

static Mail *Mailbox_GetMailFromSlot(Mailbox *mailbox, int param1, int slot)
{
    Mail *mail = NULL;

    switch (param1) {
    case 0:
        if (slot < MAILBOX_SIZE) {
            mail = &(mailbox->mail[slot]);
        }

        break;
    default:
        break;
    }

    return mail;
}
