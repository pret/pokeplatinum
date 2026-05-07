#include "mail.h"

#include <nitro.h>

#include "constants/forms.h"
#include "constants/items.h"
#include "generated/genders.h"
#include "generated/species.h"

#include "charcode_util.h"
#include "heap.h"
#include "party.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "save_player.h"
#include "savedata.h"
#include "trainer_info.h"
#include "unk_02014A84.h"

#include "res/pokemon/pl_poke_icon.naix"
#include "res/pokemon/species_icon_palettes.h"

#define IconTilesIndex(icon) (icon + icon_00000_NCGR)

static int Mail_GetEmptySlot(Mail array[], int arraySize);
static int Mail_CountValidMail(Mail array[], int arraySize);
static Mail *GetMailAtMailboxSlot(Mailbox *mailbox, enum MailContext context, int slot);

static const struct {
    u16 baseSpriteIndex;
    u16 formSpriteIndex;
    u16 species;
    u8 form;
} sPlatExclusiveFormData[] = {
    { .baseSpriteIndex = IconTilesIndex(SPECIES_GIRATINA), .formSpriteIndex = IconTilesIndex(ICON_GIRATINA_ORIGIN), .species = SPECIES_GIRATINA, .form = GIRATINA_FORM_ORIGIN },
    { .baseSpriteIndex = IconTilesIndex(SPECIES_SHAYMIN), .formSpriteIndex = IconTilesIndex(ICON_SHAYMIN_SKY), .species = SPECIES_SHAYMIN, .form = SHAYMIN_FORM_SKY },
    { .baseSpriteIndex = IconTilesIndex(SPECIES_ROTOM), .formSpriteIndex = IconTilesIndex(ICON_ROTOM_HEAT), .species = SPECIES_ROTOM, .form = ROTOM_FORM_HEAT },
    { .baseSpriteIndex = IconTilesIndex(SPECIES_ROTOM), .formSpriteIndex = IconTilesIndex(ICON_ROTOM_WASH), .species = SPECIES_ROTOM, .form = ROTOM_FORM_WASH },
    { .baseSpriteIndex = IconTilesIndex(SPECIES_ROTOM), .formSpriteIndex = IconTilesIndex(ICON_ROTOM_FROST), .species = SPECIES_ROTOM, .form = ROTOM_FORM_FROST },
    { .baseSpriteIndex = IconTilesIndex(SPECIES_ROTOM), .formSpriteIndex = IconTilesIndex(ICON_ROTOM_FAN), .species = SPECIES_ROTOM, .form = ROTOM_FORM_FAN },
    { .baseSpriteIndex = IconTilesIndex(SPECIES_ROTOM), .formSpriteIndex = IconTilesIndex(ICON_ROTOM_MOW), .species = SPECIES_ROTOM, .form = ROTOM_FORM_MOW }
};

void Mail_Reset(Mail *mail)
{
    mail->trainerID = 0;
    mail->trainerGender = GENDER_MALE;
    mail->language = gGameLanguage;
    mail->gameVersion = gGameVersion;
    mail->mailType = MAIL_TYPE_NONE;

    CharCode_FillWithEOS(mail->trainerName, TRAINER_NAME_LEN + 1);

    for (int i = 0; i < MAIL_MAX_ICONS; i++) {
        mail->iconData[i].asValue = MAIL_MON_ICON_NONE;
    }

    mail->platExclusiveFormIcons = 0;

    for (int i = 0; i < MAIL_MAX_SENTENCES; i++) {
        Sentence_Init(&mail->sentences[i]);
    }
}

BOOL Mail_IsValid(Mail *mail)
{
    if (0 <= mail->mailType && mail->mailType <= NUM_MAIL_TYPES - 1) {
        return TRUE;
    }

    return FALSE;
}

Mail *Mail_New(enum HeapID heapID)
{
    Mail *mail = Heap_AllocAtEnd(heapID, sizeof(Mail));
    Mail_Reset(mail);

    return mail;
}

void Mail_Copy(Mail *src, Mail *dest)
{
    MI_CpuCopy8(src, dest, sizeof(Mail));
}

void Mail_SetTrainerAndIconData(Mail *mail, u8 mailType, u8 selectedPartySlot, SaveData *saveData)
{
    u32 isEgg;

    Mail_Reset(mail);

    mail->mailType = mailType;
    Party *party = SaveData_GetParty(saveData);
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(saveData);

    CharCode_Copy(mail->trainerName, TrainerInfo_Name(trainerInfo));

    mail->trainerGender = TrainerInfo_Gender(trainerInfo);
    mail->trainerID = TrainerInfo_ID(trainerInfo);
    mail->platExclusiveFormIcons = 0;

    for (u8 slot = selectedPartySlot, i = 0; slot < Party_GetCurrentCount(party); slot++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, slot);
        u16 species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
        isEgg = Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL);
        u32 form = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);
        u32 spriteIndex = Pokemon_IconSpriteIndex(mon);
        u8 palIndex = PokeIconPaletteIndex(species, form, isEgg);

        mail->iconData[i].asStruct.spriteIndex = spriteIndex;
        mail->iconData[i].asStruct.palIndex = palIndex;

        for (u8 j = 0; j < NELEMS(sPlatExclusiveFormData); j++) {
            if (sPlatExclusiveFormData[j].formSpriteIndex == mail->iconData[i].asStruct.spriteIndex && sPlatExclusiveFormData[j].form == form) {
                mail->iconData[i].asStruct.spriteIndex = sPlatExclusiveFormData[j].baseSpriteIndex;
                mail->iconData[i].asStruct.palIndex = PokeIconPaletteIndex(species, 0, isEgg);
                mail->platExclusiveFormIcons |= sPlatExclusiveFormData[j].form << (i * 5);
                break;
            }
        }

        i++;

        if (i >= MAIL_MAX_ICONS) {
            break;
        }
    }
}

u32 Mail_GetTrainerID(const Mail *mail)
{
    return mail->trainerID;
}

charcode_t *Mail_GetTrainerName(Mail *mail)
{
    return &mail->trainerName[0];
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
    if (mailType >= NUM_MAIL_TYPES) {
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

u16 Mail_GetIconData(const Mail *mail, u8 index, enum MailIconDataType type, u16 platExclusiveFormIcons)
{
    if (index < MAIL_MAX_ICONS) {
        MailIconData iconData = mail->iconData[index];

        for (int i = 0; i < NELEMS(sPlatExclusiveFormData); i++) {
            if (sPlatExclusiveFormData[i].baseSpriteIndex == iconData.asStruct.spriteIndex && sPlatExclusiveFormData[i].form == ((platExclusiveFormIcons >> (index * 5)) & 0x1F)) {
                iconData.asStruct.spriteIndex = sPlatExclusiveFormData[i].formSpriteIndex;
                iconData.asStruct.palIndex = PokeIconPaletteIndex(sPlatExclusiveFormData[i].species, sPlatExclusiveFormData[i].form, FALSE);
                break;
            }
        }

        if (iconData.asStruct.spriteIndex > IconTilesIndex(ICON_ROTOM_MOW)) {
            iconData.asStruct.spriteIndex = icon_00000_NCGR;
            iconData.asStruct.palIndex = 0;
        }

        switch (type) {
        case ICON_DATA_SPRITE_INDEX:
            return iconData.asStruct.spriteIndex;
        case ICON_DATA_PLTT_INDEX:
            return iconData.asStruct.palIndex;
        case ICON_DATA_VALUE:
        default:
            return iconData.asValue;
        }
    } else {
        return 0;
    }
}

u16 Mail_GetPlatExclusiveFormIcons(const Mail *mail)
{
    return mail->platExclusiveFormIcons;
}

Sentence *Mail_GetSentence(Mail *mail, u8 index)
{
    if (index < MAIL_MAX_SENTENCES) {
        return &mail->sentences[index];
    } else {
        return &mail->sentences[0];
    }
}

void Mail_SetSentence(Mail *mail, Sentence *sentence, u8 index)
{
    if (index >= MAIL_MAX_SENTENCES) {
        return;
    }

    Sentence_Set(&mail->sentences[index], sentence);
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
    for (int i = 0; i < MAILBOX_SIZE; i++) {
        Mail_Reset(&mailbox->mail[i]);
    }
}

int Mail_GetEmptyMailSlot(Mailbox *mailbox, enum MailContext context)
{
    if (context == MAIL_CONTEXT_MAILBOX) {
        return Mail_GetEmptySlot(mailbox->mail, MAILBOX_SIZE);
    } else {
        return -1;
    }
}

void Mailbox_ClearMailAtSlot(Mailbox *mailbox, enum MailContext context, int slot)
{
    Mail *mail = GetMailAtMailboxSlot(mailbox, context, slot);

    if (mail != NULL) {
        Mail_Reset(mail);
    }
}

void Mailbox_CopyMailToSlot(Mailbox *mailbox, enum MailContext context, int slot, Mail *src)
{
    Mail *dest = GetMailAtMailboxSlot(mailbox, context, slot);

    if (dest != NULL) {
        Mail_Copy(src, dest);
    }
}

int Mailbox_CountMail(Mailbox *mailbox, enum MailContext context)
{
    if (context == MAIL_CONTEXT_MAILBOX) {
        return Mail_CountValidMail(mailbox->mail, MAILBOX_SIZE);
    } else {
        return 0;
    }
}

Mail *Mailbox_CopyMailAtSlot(Mailbox *mailbox, enum MailContext context, int slot, enum HeapID heapID)
{
    Mail *mail = GetMailAtMailboxSlot(mailbox, context, slot);
    Mail *ret = Mail_New(heapID);

    if (mail != NULL) {
        Mail_Copy(mail, ret);
    }

    return ret;
}

void Mailbox_GetMailAtSlot(Mailbox *mailbox, enum MailContext context, int slot, Mail *out)
{
    Mail *mail = GetMailAtMailboxSlot(mailbox, context, slot);

    if (mail == NULL) {
        Mail_Reset(out);
    } else {
        Mail_Copy(mail, out);
    }
}

static int Mail_GetEmptySlot(Mail array[], int arraySize)
{
    for (int i = 0; i < arraySize; i++) {
        if (!Mail_IsValid(&array[i])) {
            return i;
        }
    }

    return -1;
}

static int Mail_CountValidMail(Mail array[], int arraySize)
{
    int count = 0;

    for (int i = 0; i < arraySize; i++) {
        if (Mail_IsValid(&array[i])) {
            count++;
        }
    }

    return count;
}

static Mail *GetMailAtMailboxSlot(Mailbox *mailbox, enum MailContext context, int slot)
{
    Mail *mail = NULL;

    if (context == MAIL_CONTEXT_MAILBOX && slot < MAILBOX_SIZE) {
        mail = &mailbox->mail[slot];
    }

    return mail;
}
