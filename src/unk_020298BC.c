#include "unk_020298BC.h"

#include <nitro.h>
#include <string.h>

#include "constants/accessories.h"
#include "constants/charcode.h"
#include "constants/graphics.h"
#include "generated/backdrops.h"
#include "generated/pokemon_contest_types.h"

#include "struct_defs/image_clips.h"
#include "struct_defs/struct_020298D8.h"

#include "overlay022/ov22_02259098.h"
#include "overlay022/struct_ov22_02255040.h"
#include "overlay061/struct_ov61_0222AE80.h"
#include "overlay061/struct_ov61_0222AE80_sub2.h"

#include "easy_chat_sentence.h"
#include "heap.h"
#include "inlines.h"
#include "pokemon.h"
#include "savedata.h"
#include "software_sprite.h"
#include "string_gf.h"

#define PHOTO_EMPTY_MAGIC (0x1234) // Photo is initialized but without proper data.
#define PHOTO_FULL_MAGIC  (0x2345) // Photo has data written to it

static BOOL IsValidMagic(u32 value)
{
    if (value == PHOTO_EMPTY_MAGIC || value == PHOTO_FULL_MAGIC) {
        return TRUE;
    }

    return FALSE;
}

static inline BOOL DressUpPhoto_IsValid(const DressUpPhoto *duPhoto)
{
    return IsValidMagic(duPhoto->integrity);
}

static inline BOOL ContestPhoto_IsValid(const ContestPhoto *contestPhoto)
{
    return IsValidMagic(contestPhoto->integrity);
}

static inline void DressUpPhoto_InitInternal(DressUpPhoto *duPhoto)
{
    memset(duPhoto, 0, sizeof(DressUpPhoto));
    duPhoto->integrity = PHOTO_EMPTY_MAGIC;
}

static inline void ContestPhoto_InitInternal(ContestPhoto *contestPhoto)
{
    memset(contestPhoto, 0, sizeof(ContestPhoto));
    contestPhoto->integrity = PHOTO_EMPTY_MAGIC;
}

static void DressUpMonSprite_GetPhotoPosition(DressUpMonSprite *duMonSprite, u8 *xPos, u8 *yPos, s8 *priority)
{
    int spriteX, spriteY;
    int spritePriority;

    ov22_02259250(duMonSprite, &spriteX, &spriteY);
    spritePriority = ov22_022591E0(duMonSprite);

    GF_ASSERT(spriteX < 256);
    GF_ASSERT(spriteY < 256);
    GF_ASSERT(spritePriority > -128);

    *xPos = spriteX;
    *yPos = spriteY;
    *priority = spritePriority;
}

static void PhotoPokemon_SetDataFromMon(PhotoPokemon *photoMon, Pokemon *mon, u8 xPos, u8 yPos, s8 priority)
{
    photoMon->species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    Pokemon_GetValue(mon, MON_DATA_NICKNAME, photoMon->nickname);

    photoMon->personality = Pokemon_GetValue(mon, MON_DATA_PERSONALITY, NULL);
    photoMon->otID = Pokemon_GetValue(mon, MON_DATA_OT_ID, NULL);
    photoMon->form = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);

    photoMon->xPos = xPos;
    photoMon->yPos = yPos;
    photoMon->priority = priority;
}

static void PhotoPokemon_SetFromDressUpMonSprite(PhotoPokemon *photoMon, Pokemon *mon, DressUpMonSprite *duMonSprite)
{
    u8 xPos, yPos;
    s8 priority;

    DressUpMonSprite_GetPhotoPosition(duMonSprite, &xPos, &yPos, &priority);
    PhotoPokemon_SetDataFromMon(photoMon, mon, xPos, yPos, priority);
}

static void PhotoPokemon_SetTrainerNameAndGender(PhotoPokemon *photoMon, const String *name, int gender)
{
    String_ToChars(name, photoMon->trainerName, TRAINER_NAME_LEN + 1);
    photoMon->trainerGender = gender;
}

static void PhotoPokemon_CopyToPokemonInternal(const PhotoPokemon *photoMon, Pokemon *mon)
{
    Pokemon_InitWith(mon, photoMon->species, 0, 0, TRUE, photoMon->personality, OTID_SET, photoMon->otID);
    Pokemon_SetValue(mon, MON_DATA_NICKNAME, photoMon->nickname);
    Pokemon_SetValue(mon, MON_DATA_FORM, &photoMon->form);
}

static void PhotoAccessory_SetData(PhotoAccessory *accessory, u8 accessoryID, u8 xPos, u8 yPos, u8 priority)
{
    accessory->accessoryID = accessoryID;
    accessory->xPos = xPos;
    accessory->yPos = yPos;
    accessory->priority = priority;
}

static void NonUniqueAccessoryFlags_SetCount(u32 *flags, u8 count, u8 accessoryID)
{
    GF_ASSERT(accessoryID < NON_UNIQUE_ACCESSORY_COUNT);

    u8 index = accessoryID / 8;
    u8 shift = accessoryID % 8;

    shift *= 4;

    flags[index] &= ~(0xf << shift);
    flags[index] |= (count << shift);
}

static u8 NonUniqueAccessoryFlags_GetCount(const u32 *flags, u8 accessoryID)
{
    GF_ASSERT(accessoryID < NON_UNIQUE_ACCESSORY_COUNT);

    u8 index = accessoryID / 8;
    u8 shift = accessoryID % 8;
    shift *= 4;
    u8 count = (flags[index] >> shift) & 0xf;

    if (count > MAX_NON_UNIQUE_ACCESSORIES_PER_TYPE) {
        count = MAX_NON_UNIQUE_ACCESSORIES_PER_TYPE;
    }

    return count;
}

static void UniqueAccessoryFlags_SetCount(u32 *flags, u8 count, u8 accessoryID)
{
    GF_ASSERT(count < MAX_UNIQUE_ACCESSORIES_PER_TYPE + 1);

    u8 index = accessoryID / 32;
    u8 shift = accessoryID % 32;

    flags[index] &= ~(0x1 << shift);
    flags[index] |= (count << shift);
}

static u8 UniqueAccessoryFlags_GetCount(const u32 *flags, u8 accessoryID)
{
    u8 index = accessoryID / 32;
    u8 shift = accessoryID % 32;

    return (flags[index] >> shift) & 0x1;
}

static void BackdropFlags_SetCount(u32 *flags, u8 count, u8 backdropID)
{
    GF_ASSERT(count <= BACKDROP_COUNT);

    u8 index = backdropID / 4;
    u8 shift = backdropID % 4;

    shift *= 8;

    flags[index] &= ~(0xff << shift);
    flags[index] |= (count << shift);
}

static u8 BackdropFlags_GetCount(const u32 *flags, u8 backdropID)
{
    u8 index = backdropID / 4;
    u8 shift = backdropID % 4;

    shift *= 8;

    return (flags[index] >> shift) & 0xff;
}

static u8 BackdropFlags_GetTotalCount(const u32 *flags)
{
    int i;
    int count = 0;

    for (i = 0; i < BACKDROP_COUNT; i++) {
        if (BackdropFlags_GetCount(flags, i) != BACKDROP_COUNT) {
            count++;
        }
    }

    return count;
}

static BOOL Accessory_CanHaveMultiple(u32 accessoryID)
{
    if (accessoryID < NON_UNIQUE_ACCESSORY_COUNT) {
        return TRUE;
    }

    return FALSE;
}

static inline u8 Accessory_ToUniqueID(u32 accessoryID)
{
    GF_ASSERT(accessoryID >= NON_UNIQUE_ACCESSORY_COUNT);
    return accessoryID - NON_UNIQUE_ACCESSORY_COUNT;
}

static void FashionCase_Init(FashionCase *fashionCase)
{
    int i;

    memset(fashionCase, 0, sizeof(FashionCase));

    for (i = 0; i < BACKDROP_COUNT; i++) {
        BackdropFlags_SetCount(fashionCase->backdropFlags, BACKDROP_COUNT, i);
    }
}

static void Pokemon_GetDefaultPhotoPosition(Pokemon *mon, u8 *xPos, u8 *yPos)
{
    u8 yOffset = Pokemon_DPSpriteYOffset(mon, FACE_FRONT);

    *xPos = 192 - (8 * 8);
    *yPos = (16 + 129) - ((MON_SPRITE_FRAME_HEIGHT / 2) - yOffset) + -4;
    *yPos += (5 * 8);
}

void ImageClips_Init(ImageClips *imageClips)
{
    int i;

    for (i = 0; i < SAVED_PHOTOS_COUNT; i++) {
        DressUpPhoto_InitInternal(&imageClips->savedPhotos[i]);
    }

    for (i = 0; i < CONTEST_TYPE_MAX; i++) {
        ContestPhoto_InitInternal(&imageClips->contestPhotos[i]);
    }

    FashionCase_Init(&imageClips->fashionCase);
}

int ImageClips_SaveSize(void)
{
    return sizeof(ImageClips);
}

int DressUpPhoto_Size(void)
{
    return sizeof(DressUpPhoto);
}

int ContestPhoto_Size(void)
{
    return sizeof(ContestPhoto);
}

DressUpPhoto *DressUpPhoto_New(u32 heapID)
{
    DressUpPhoto *duPhoto = Heap_Alloc(heapID, sizeof(DressUpPhoto));
    DressUpPhoto_InitInternal(duPhoto);

    return duPhoto;
}

ContestPhoto *ContestPhoto_New(u32 heapID)
{
    ContestPhoto *contestPhoto = Heap_Alloc(heapID, sizeof(ContestPhoto));
    ContestPhoto_InitInternal(contestPhoto);

    return contestPhoto;
}

DressUpPhoto *ImageClips_GetDressUpPhoto(ImageClips *imageClips, int slot)
{
    GF_ASSERT(slot < SAVED_PHOTOS_COUNT);
    GF_ASSERT(DressUpPhoto_IsValid(&imageClips->savedPhotos[slot]));

    return &imageClips->savedPhotos[slot];
}

ContestPhoto *ImageClips_GetContestPhoto(ImageClips *imageClips, int contestType)
{
    GF_ASSERT(contestType < CONTEST_TYPE_MAX);
    GF_ASSERT(ContestPhoto_IsValid(&imageClips->contestPhotos[contestType]));

    return &imageClips->contestPhotos[contestType];
}

FashionCase *ImageClips_GetFashionCase(ImageClips *imageClips)
{
    return &imageClips->fashionCase;
}

BOOL ImageClips_DressUpPhotoHasData(const ImageClips *imageClips, int slot)
{
    GF_ASSERT(slot < SAVED_PHOTOS_COUNT);
    return DressUpPhoto_HasData(&imageClips->savedPhotos[slot]);
}

BOOL ImageClips_ContestPhotoHasData(const ImageClips *imageClips, int contestType)
{
    GF_ASSERT(contestType < CONTEST_TYPE_MAX);
    return ContestPhoto_HasData(&imageClips->contestPhotos[contestType]);
}

BOOL FashionCase_CanFitAccessoryCount(const FashionCase *fashionCase, u32 accessoryID, u32 count)
{
    u32 currentCount;
    BOOL canFit = TRUE;

    currentCount = FashionCase_GetAccessoryCount(fashionCase, accessoryID);

    if (Accessory_CanHaveMultiple(accessoryID)) {
        currentCount += count;

        if (currentCount > MAX_NON_UNIQUE_ACCESSORIES_PER_TYPE) {
            canFit = FALSE;
        }
    } else {
        currentCount += count;

        if (currentCount > MAX_UNIQUE_ACCESSORIES_PER_TYPE) {
            canFit = FALSE;
        }
    }

    return canFit;
}

BOOL FashionCase_HasBackdrop(const FashionCase *fashionCase, u32 backdropID)
{
    u32 count = FashionCase_GetBackdropCount(fashionCase, backdropID);

    if (count != BACKDROP_COUNT) {
        return TRUE;
    }

    return FALSE;
}

u32 FashionCase_GetAccessoryCount(const FashionCase *fashionCase, u32 accessoryID)
{
    u32 count;

    GF_ASSERT(accessoryID < ACCESSORY_COUNT);

    if (Accessory_CanHaveMultiple(accessoryID)) {
        count = NonUniqueAccessoryFlags_GetCount(fashionCase->nonUniqueAccessoryFlags, accessoryID);
    } else {
        accessoryID = Accessory_ToUniqueID(accessoryID);
        count = UniqueAccessoryFlags_GetCount(fashionCase->uniqueAccessoryFlags, accessoryID);
    }

    return count;
}

u32 FashionCase_GetBackdropCount(const FashionCase *fashionCase, u32 backdropID)
{
    GF_ASSERT(backdropID < BACKDROP_COUNT);
    return BackdropFlags_GetCount(fashionCase->backdropFlags, backdropID);
}

u32 FashionCase_GetTotalAccessories(const FashionCase *fashionCase)
{
    int i;
    int count = 0;

    for (i = 0; i < ACCESSORY_COUNT; i++) {
        count += FashionCase_GetAccessoryCount(fashionCase, i);
    }

    return count;
}

u32 FashionCase_GetTotalBackdrops(const FashionCase *fashionCase)
{
    int i;
    int count = 0;

    for (i = 0; i < BACKDROP_COUNT; i++) {
        if (FashionCase_GetBackdropCount(fashionCase, i) != BACKDROP_COUNT) {
            count++;
        }
    }

    return count;
}

void FashionCase_AddAccessory(FashionCase *fashionCase, u32 accessoryID, u32 amount)
{
    u8 count;

    GF_ASSERT(accessoryID < ACCESSORY_COUNT);

    if (Accessory_CanHaveMultiple(accessoryID)) {
        count = NonUniqueAccessoryFlags_GetCount(fashionCase->nonUniqueAccessoryFlags, accessoryID);
        count += amount;

        if (count > MAX_NON_UNIQUE_ACCESSORIES_PER_TYPE) {
            count = MAX_NON_UNIQUE_ACCESSORIES_PER_TYPE;
        }

        NonUniqueAccessoryFlags_SetCount(fashionCase->nonUniqueAccessoryFlags, count, accessoryID);
    } else {
        count = UniqueAccessoryFlags_GetCount(fashionCase->uniqueAccessoryFlags, accessoryID);
        count += amount;

        if (count > MAX_UNIQUE_ACCESSORIES_PER_TYPE) {
            count = MAX_UNIQUE_ACCESSORIES_PER_TYPE;
        }

        accessoryID = Accessory_ToUniqueID(accessoryID);
        UniqueAccessoryFlags_SetCount(fashionCase->uniqueAccessoryFlags, count, accessoryID);
    }
}

void FashionCase_RemoveAccessory(FashionCase *fashionCase, u32 accessoryID, u32 amount)
{
    u8 count;

    GF_ASSERT(accessoryID < ACCESSORY_COUNT);

    if (Accessory_CanHaveMultiple(accessoryID)) {
        count = NonUniqueAccessoryFlags_GetCount(fashionCase->nonUniqueAccessoryFlags, accessoryID);

        if (count > amount) {
            count -= amount;
        } else {
            count = 0;
        }

        NonUniqueAccessoryFlags_SetCount(fashionCase->nonUniqueAccessoryFlags, count, accessoryID);
    } else {
        count = 0;
        accessoryID = Accessory_ToUniqueID(accessoryID);

        UniqueAccessoryFlags_SetCount(fashionCase->uniqueAccessoryFlags, count, accessoryID);
    }
}

void FashionCase_AddBackdrop(FashionCase *fashionCase, u32 backdropID)
{
    u8 count;

    GF_ASSERT(backdropID < BACKDROP_COUNT);

    if (BackdropFlags_GetCount(fashionCase->backdropFlags, backdropID) == BACKDROP_COUNT) {
        count = BackdropFlags_GetTotalCount(fashionCase->backdropFlags);

        BackdropFlags_SetCount(fashionCase->backdropFlags, count, backdropID);
    }
}

BOOL DressUpPhoto_HasData(const DressUpPhoto *duPhoto)
{
    GF_ASSERT(DressUpPhoto_IsValid(duPhoto));

    if (duPhoto->integrity == PHOTO_FULL_MAGIC) {
        return TRUE;
    }

    return FALSE;
}

void DressUpPhoto_SetLanguageAndMagic(DressUpPhoto *duPhoto)
{
    GF_ASSERT(DressUpPhoto_IsValid(duPhoto));

    duPhoto->integrity = PHOTO_FULL_MAGIC;
    duPhoto->language = gGameLanguage;
}

void DressUpPhoto_Init(DressUpPhoto *duPhoto)
{
    GF_ASSERT(DressUpPhoto_IsValid(duPhoto));
    DressUpPhoto_InitInternal(duPhoto);
}

void DressUpPhoto_SetMonFromSprite(DressUpPhoto *duPhoto, Pokemon *mon, DressUpMonSprite *duMonSprite)
{
    GF_ASSERT(DressUpPhoto_IsValid(duPhoto));
    PhotoPokemon_SetFromDressUpMonSprite(&duPhoto->photoMon, mon, duMonSprite);
}

void DressUpPhoto_SetAccessoryFromSprite(DressUpPhoto *duPhoto, const DressUpAccessorySprite *duaSprite, int slot)
{
    NNSG2dSVec2 pos = SoftwareSprite_GetPosition(duaSprite->sprite);
    int priority = SoftwareSprite_GetPriority(duaSprite->sprite);

    GF_ASSERT(slot < PHOTO_ACCESSORY_COUNT);
    GF_ASSERT(pos.x < 256);
    GF_ASSERT(pos.y < 256);
    GF_ASSERT(priority > -128);
    GF_ASSERT(!(duPhoto->accessoryFlags & (1 << slot)));
    GF_ASSERT(DressUpPhoto_IsValid(duPhoto));

    PhotoAccessory_SetData(&duPhoto->accessories[slot], duaSprite->accessoryID, pos.x, pos.y, priority);

    duPhoto->accessoryFlags |= 1 << slot;
}

void DressUpPhoto_SetBackdrop(DressUpPhoto *duPhoto, u8 backdrop)
{
    GF_ASSERT(DressUpPhoto_IsValid(duPhoto));
    duPhoto->backdrop = backdrop;
}

void DressUpPhoto_SetTitle(DressUpPhoto *duPhoto, u16 word)
{
    GF_ASSERT(DressUpPhoto_IsValid(duPhoto));

    EasyChatSentence_Init(&duPhoto->title);
    EasyChatSentence_SetWord(&duPhoto->title, 0, word);
}

void DressUpPhoto_Copy(DressUpPhoto *dest, const DressUpPhoto *src)
{
    GF_ASSERT(DressUpPhoto_IsValid(dest));
    memcpy(dest, src, sizeof(DressUpPhoto));
}

void DressUpPhoto_SetTrainerNameAndGender(DressUpPhoto *duPhoto, const String *name, int gender)
{
    GF_ASSERT(DressUpPhoto_IsValid(duPhoto));
    PhotoPokemon_SetTrainerNameAndGender(&duPhoto->photoMon, name, gender);
}

BOOL DressUpPhoto_HasAccessory(const DressUpPhoto *duPhoto, int slot)
{
    GF_ASSERT(slot < PHOTO_ACCESSORY_COUNT);
    GF_ASSERT(DressUpPhoto_IsValid(duPhoto));

    return duPhoto->accessoryFlags & (1 << slot);
}

const PhotoPokemon *DressUpPhoto_GetPhotoMon(const DressUpPhoto *duPhoto)
{
    GF_ASSERT(DressUpPhoto_IsValid(duPhoto));
    return &duPhoto->photoMon;
}

const PhotoAccessory *DressUpPhoto_GetAccessory(const DressUpPhoto *duPhoto, int slot)
{
    GF_ASSERT(slot < PHOTO_ACCESSORY_COUNT);
    GF_ASSERT(duPhoto->accessoryFlags & (1 << slot));
    GF_ASSERT(DressUpPhoto_IsValid(duPhoto));

    return &duPhoto->accessories[slot];
}

u16 DressUpPhoto_GetMonSpecies(const DressUpPhoto *duPhoto)
{
    GF_ASSERT(DressUpPhoto_IsValid(duPhoto));
    return PhotoPokemon_GetSpecies(&duPhoto->photoMon);
}

void DressUpPhoto_SetTrainerName(const DressUpPhoto *duPhoto, String *name)
{
    GF_ASSERT(DressUpPhoto_IsValid(duPhoto));
    PhotoPokemon_SetTrainerName(&duPhoto->photoMon, name);
}

u32 DressUpPhoto_GetTrainerGender(const DressUpPhoto *duPhoto)
{
    GF_ASSERT(DressUpPhoto_IsValid(duPhoto));
    return PhotoPokemon_GetTrainerGender(&duPhoto->photoMon);
}

enum Backdrop DressUpPhoto_GetBackdrop(const DressUpPhoto *duPhoto)
{
    GF_ASSERT(DressUpPhoto_IsValid(duPhoto));
    return duPhoto->backdrop;
}

u16 DressUpPhoto_GetTitleWord(const DressUpPhoto *duPhoto)
{
    return EasyChatSentence_GetWord(&duPhoto->title, 0);
}

u8 DressUpPhoto_GetLanguage(const DressUpPhoto *duPhoto)
{
    GF_ASSERT(DressUpPhoto_IsValid(duPhoto));
    return duPhoto->language;
}

BOOL ContestPhoto_HasData(const ContestPhoto *contestPhoto)
{
    GF_ASSERT(ContestPhoto_IsValid(contestPhoto));

    if (contestPhoto->integrity == PHOTO_FULL_MAGIC) {
        return TRUE;
    }

    return FALSE;
}

void ContestPhoto_SetMagic(ContestPhoto *contestPhoto)
{
    GF_ASSERT(ContestPhoto_IsValid(contestPhoto));
    contestPhoto->integrity = PHOTO_FULL_MAGIC;
}

void ContestPhoto_Init(ContestPhoto *contestPhoto)
{
    GF_ASSERT(ContestPhoto_IsValid(contestPhoto));
    ContestPhoto_InitInternal(contestPhoto);
}

void ContestPhoto_SetMonFromSprite(ContestPhoto *contestPhoto, Pokemon *mon, DressUpMonSprite *duMonSprite)
{
    GF_ASSERT(ContestPhoto_IsValid(contestPhoto));
    PhotoPokemon_SetFromDressUpMonSprite(&contestPhoto->photoMon, mon, duMonSprite);
}

void ContestPhoto_SetAccessoryFromSprite(ContestPhoto *contestPhoto, const DressUpAccessorySprite *duaSprite, int slot)
{
    NNSG2dSVec2 pos = SoftwareSprite_GetPosition(duaSprite->sprite);
    int priority = SoftwareSprite_GetPriority(duaSprite->sprite);

    GF_ASSERT(slot < CONTEST_PHOTO_ACCESSORY_COUNT);
    GF_ASSERT(pos.x < 256);
    GF_ASSERT(pos.y < 256);
    GF_ASSERT(priority > -128);
    GF_ASSERT(!(contestPhoto->accessoryFlags & (1 << slot)));
    GF_ASSERT(ContestPhoto_IsValid(contestPhoto));

    PhotoAccessory_SetData(&contestPhoto->accessories[slot], duaSprite->accessoryID, pos.x, pos.y, priority);

    contestPhoto->accessoryFlags |= 1 << slot;
}

void ContestPhoto_SetBackdrop(ContestPhoto *contestPhoto, u8 backdrop)
{
    GF_ASSERT(ContestPhoto_IsValid(contestPhoto));
    contestPhoto->backdrop = backdrop;
}

void ContestPhoto_SetContestRank(ContestPhoto *contestPhoto, enum PokemonContestRank contestRank)
{
    GF_ASSERT(ContestPhoto_IsValid(contestPhoto));
    contestPhoto->contestRank = contestRank;
}

void ContestPhoto_Copy(ContestPhoto *destContestPhoto, const ContestPhoto *srcContestPhoto)
{
    GF_ASSERT(ContestPhoto_IsValid(destContestPhoto));
    memcpy(destContestPhoto, srcContestPhoto, sizeof(ContestPhoto));
}

void ContestPhoto_SetMon(ContestPhoto *contestPhoto, Pokemon *mon, s8 priority)
{
    u8 xPos;
    u8 yPos;

    GF_ASSERT(ContestPhoto_IsValid(contestPhoto));

    Pokemon_GetDefaultPhotoPosition(mon, &xPos, &yPos);
    PhotoPokemon_SetDataFromMon(&contestPhoto->photoMon, mon, xPos, yPos, priority);
}

void ContestPhoto_SetAccessory(ContestPhoto *contestPhoto, u32 slot, u8 accessoryID, u8 xPos, u8 yPos, s8 priority)
{
    GF_ASSERT(slot < CONTEST_PHOTO_ACCESSORY_COUNT);
    GF_ASSERT(accessoryID < 100);
    GF_ASSERT(xPos < 256);
    GF_ASSERT(yPos < 256);
    GF_ASSERT(priority > -128);
    GF_ASSERT(!(contestPhoto->accessoryFlags & (1 << slot)));
    GF_ASSERT(ContestPhoto_IsValid(contestPhoto));

    if (contestPhoto->photoMon.priority >= priority) {
        priority = contestPhoto->photoMon.priority + 1;
    }

    PhotoAccessory_SetData(&contestPhoto->accessories[slot], accessoryID, xPos, yPos, priority);
    contestPhoto->accessoryFlags |= 1 << slot;
}

BOOL ContestPhoto_HasAccessory(const ContestPhoto *contestPhoto, int slot)
{
    GF_ASSERT(slot < CONTEST_PHOTO_ACCESSORY_COUNT);
    GF_ASSERT(ContestPhoto_IsValid(contestPhoto));

    if ((contestPhoto->accessoryFlags & (1 << slot)) != 0) {
        return TRUE;
    }

    return FALSE;
}

void ContestPhoto_SetTrainerNameAndGender(ContestPhoto *contestPhoto, const String *name, int gender)
{
    GF_ASSERT(ContestPhoto_IsValid(contestPhoto));
    PhotoPokemon_SetTrainerNameAndGender(&contestPhoto->photoMon, name, gender);
}

const PhotoPokemon *ContestPhoto_GetPhotoMon(const ContestPhoto *contestPhoto)
{
    GF_ASSERT(ContestPhoto_IsValid(contestPhoto));
    return &contestPhoto->photoMon;
}

const PhotoAccessory *ContestPhoto_GetAccessory(const ContestPhoto *contestPhoto, int slot)
{
    GF_ASSERT(slot < CONTEST_PHOTO_ACCESSORY_COUNT);
    GF_ASSERT(contestPhoto->accessoryFlags & (1 << slot));
    GF_ASSERT(ContestPhoto_IsValid(contestPhoto));

    return &contestPhoto->accessories[slot];
}

void ContestPhoto_SetTrainerName(const ContestPhoto *contestPhoto, String *name)
{
    GF_ASSERT(ContestPhoto_IsValid(contestPhoto));
    PhotoPokemon_SetTrainerName(&contestPhoto->photoMon, name);
}

u32 ContestPhoto_GetTrainerGender(const ContestPhoto *contestPhoto)
{
    GF_ASSERT(ContestPhoto_IsValid(contestPhoto));
    return PhotoPokemon_GetTrainerGender(&contestPhoto->photoMon);
}

void ContestPhoto_CopyToPokemon(const ContestPhoto *contestPhoto, Pokemon *mon)
{
    GF_ASSERT(ContestPhoto_IsValid(contestPhoto));
    PhotoPokemon_CopyToPokemonInternal(&contestPhoto->photoMon, mon);
}

u8 ContestPhoto_GetAccessoryID(const ContestPhoto *contestPhoto, int slot)
{
    GF_ASSERT(slot < CONTEST_PHOTO_ACCESSORY_COUNT);
    GF_ASSERT(contestPhoto->accessoryFlags & (1 << slot));
    GF_ASSERT(ContestPhoto_IsValid(contestPhoto));

    return PhotoAccessory_GetAccessoryID(&contestPhoto->accessories[slot]);
}

enum Backdrop ContestPhoto_GetBackdrop(const ContestPhoto *contestPhoto)
{
    GF_ASSERT(ContestPhoto_IsValid(contestPhoto));
    return contestPhoto->backdrop;
}

u32 ContestPhoto_GetContestRank(const ContestPhoto *contestPhoto)
{
    GF_ASSERT(ContestPhoto_IsValid(contestPhoto));
    return contestPhoto->contestRank;
}

u16 PhotoPokemon_GetSpecies(const PhotoPokemon *photoMon)
{
    return photoMon->species;
}

void PhotoPokemon_SetTrainerName(const PhotoPokemon *photoMon, String *name)
{
    String_CopyChars(name, photoMon->trainerName);
}

u32 PhotoPokemon_GetTrainerGender(const PhotoPokemon *photoMon)
{
    return photoMon->trainerGender;
}

s8 PhotoPokemon_GetPriority(const PhotoPokemon *photoMon)
{
    return photoMon->priority;
}

u8 PhotoPokemon_GetXPos(const PhotoPokemon *photoMon)
{
    return photoMon->xPos;
}

u8 PhotoPokemon_GetYPos(const PhotoPokemon *photoMon)
{
    return photoMon->yPos;
}

void PhotoPokemon_CopyToPokemon(const PhotoPokemon *photoMon, Pokemon *mon)
{
    PhotoPokemon_CopyToPokemonInternal(photoMon, mon);
}

u8 PhotoAccessory_GetAccessoryID(const PhotoAccessory *accessory)
{
    return accessory->accessoryID;
}

u8 PhotoAccessory_GetXPos(const PhotoAccessory *accessory)
{
    return accessory->xPos;
}

u8 PhotoAccessory_GetYPos(const PhotoAccessory *accessory)
{
    return accessory->yPos;
}

s8 PhotoAccessory_GetPriority(const PhotoAccessory *accessory)
{
    return accessory->priority;
}

static BOOL ImageClips_IsNewDressUpPhoto(ImageClips *imageClips, const DressUpPhoto *duPhoto)
{
    int i;
    const void *savedPhoto;
    u32 crc, savedCRC;
    MATHCRC32Table crcTable;
    BOOL isNew = TRUE;

    if (DressUpPhoto_HasData(duPhoto) == TRUE) {
        MATH_CRC32InitTable(&crcTable);
        crc = MATH_CalcCRC32(&crcTable, duPhoto, sizeof(DressUpPhoto));

        for (i = 0; i < SAVED_PHOTOS_COUNT; i++) {
            savedPhoto = ImageClips_GetDressUpPhoto(imageClips, i);
            MATH_CRC32InitTable(&crcTable);
            savedCRC = MATH_CalcCRC32(&crcTable, savedPhoto, sizeof(DressUpPhoto));

            if (savedCRC == crc) {
                isNew = FALSE;
                break;
            }
        }
    } else {
        isNew = FALSE;
    }

    return isNew;
}

void ImageClips_AddReceivedDressUpPhotos(u8 numPhotos, int skipIndex, ImageClips *imageClips, const void **photos)
{
    int numNew = 0;
    DressUpPhoto *destPhoto;
    const DressUpPhoto *srcPhoto;
    int i;
    int slot;

    for (i = 0; i < numPhotos; i++) {
        if (i == skipIndex) {
            continue;
        }

        if (photos[i] != NULL) {
            srcPhoto = photos[i];

            if (ImageClips_IsNewDressUpPhoto(imageClips, srcPhoto) == TRUE) {
                numNew++;
            }
        }
    }

    for (i = SAVED_PHOTOS_COUNT - 1; i >= 1; i--) {
        if (i + numNew < SAVED_PHOTOS_COUNT) {
            destPhoto = ImageClips_GetDressUpPhoto(imageClips, i + numNew);
            srcPhoto = ImageClips_GetDressUpPhoto(imageClips, i);

            DressUpPhoto_Copy(destPhoto, srcPhoto);
        }
    }

    slot = 1;

    for (i = 0; i < numPhotos; i++) {
        if (i == skipIndex) {
            continue;
        }

        if (photos[i] != NULL) {
            srcPhoto = photos[i];

            if (ImageClips_IsNewDressUpPhoto(imageClips, srcPhoto) == TRUE) {
                destPhoto = ImageClips_GetDressUpPhoto(imageClips, slot);
                slot++;
                DressUpPhoto_Copy(destPhoto, srcPhoto);
            }
        }
    }
}

ImageClips *SaveData_GetImageClips(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_IMAGE_CLIPS);
}

void sub_0202A75C(const DressUpPhoto *duPhoto, UnkStruct_ov61_0222AE80 *param1)
{
    int i;

    MI_CpuClear8(param1, sizeof(UnkStruct_ov61_0222AE80));

    param1->integrity = duPhoto->integrity;

    param1->unk_04.personality = duPhoto->photoMon.personality;
    param1->unk_04.otID = duPhoto->photoMon.otID;
    param1->unk_04.species = duPhoto->photoMon.species;

    for (i = 0; i < TRAINER_NAME_LEN + 1; i++) {
        param1->unk_04.trainerName[i] = duPhoto->photoMon.trainerName[i];
    }

    param1->unk_04.priority = duPhoto->photoMon.priority;
    param1->unk_04.xPos = duPhoto->photoMon.xPos;
    param1->unk_04.yPos = duPhoto->photoMon.yPos;
    param1->unk_04.form = duPhoto->photoMon.form;

    param1->unk_24 = duPhoto->accessoryFlags;
    param1->title = duPhoto->title;

    for (i = 0; i < PHOTO_ACCESSORY_COUNT; i++) {
        param1->unk_30[i] = *((UnkStruct_ov61_0222AE80_sub2 *)(&duPhoto->accessories[i]));
    }

    param1->unk_58 = duPhoto->backdrop;
    param1->language = duPhoto->language;
}

void sub_0202A824(const UnkStruct_ov61_0222AE80 *param0, DressUpPhoto *duPhoto)
{
    int v0;
    int i;

    v0 = DressUpPhoto_Size();
    MI_CpuClear8(duPhoto, v0);

    duPhoto->integrity = param0->integrity;

    duPhoto->photoMon.personality = param0->unk_04.personality;
    duPhoto->photoMon.otID = param0->unk_04.otID;
    duPhoto->photoMon.species = param0->unk_04.species;

    for (i = 0; i < TRAINER_NAME_LEN + 1; i++) {
        duPhoto->photoMon.trainerName[i] = param0->unk_04.trainerName[i];
    }

    duPhoto->photoMon.priority = param0->unk_04.priority;
    duPhoto->photoMon.xPos = param0->unk_04.xPos;
    duPhoto->photoMon.yPos = param0->unk_04.yPos;
    duPhoto->photoMon.form = param0->unk_04.form;

    duPhoto->accessoryFlags = param0->unk_24;
    duPhoto->title = *((EasyChatSentence *)(&param0->title));

    for (i = 0; i < PHOTO_ACCESSORY_COUNT; i++) {
        duPhoto->accessories[i] = *((PhotoAccessory *)(&param0->unk_30[i]));
    }

    duPhoto->backdrop = param0->unk_58;
    duPhoto->language = param0->language;

    for (i = 0; i < MON_NAME_LEN + 1; i++) {
        duPhoto->photoMon.nickname[i] = CHAR_EOS;
    }

    duPhoto->photoMon.trainerGender = 0;
}
