#include "unk_020298BC.h"

#include <nitro.h>
#include <string.h>

#include "constants/accessories.h"
#include "constants/charcode.h"
#include "generated/backdrops.h"

#include "struct_defs/image_clips.h"
#include "struct_defs/sentence.h"
#include "struct_defs/struct_020298D8.h"

#include "overlay022/ov22_02259098.h"
#include "overlay022/struct_ov22_02255040.h"
#include "overlay061/struct_ov61_0222AE80.h"
#include "overlay061/struct_ov61_0222AE80_sub2.h"

#include "heap.h"
#include "inlines.h"
#include "pokemon.h"
#include "savedata.h"
#include "software_sprite.h"
#include "string_gf.h"
#include "unk_02014A84.h"

#define PHOTO_EMPTY_MAGIC (0x1234) // Photo is initialized but without proper data.
#define PHOTO_FULL_MAGIC  (0x2345) // Photo has data written to it

static BOOL IsValidMagic(u32 value)
{
    if (value == PHOTO_EMPTY_MAGIC || value == PHOTO_FULL_MAGIC) {
        return TRUE;
    }

    return FALSE;
}

static inline BOOL DressUpPhoto_IsValid(const DressUpPhoto *photo)
{
    return IsValidMagic(photo->integrity);
}

static inline BOOL inline_02029CD0(const UnkStruct_02029C88 *param0)
{
    return IsValidMagic(param0->integrity);
}

static inline void DressUpPhoto_InitInternal(DressUpPhoto *photo)
{
    memset(photo, 0, sizeof(DressUpPhoto));
    photo->integrity = PHOTO_EMPTY_MAGIC;
}

static inline void inline_02029BFC_1(UnkStruct_02029C88 *param0)
{
    memset(param0, 0, sizeof(UnkStruct_02029C88));
    param0->integrity = PHOTO_EMPTY_MAGIC;
}

static void sub_020298D8(UnkStruct_020298D8 *param0, u8 *xPos, u8 *yPos, s8 *priority)
{
    int spriteX, spriteY;
    int spritePriority;

    ov22_02259250(param0, &spriteX, &spriteY);
    spritePriority = ov22_022591E0(param0);

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

static void sub_02029990(PhotoPokemon *photoMon, Pokemon *mon, UnkStruct_020298D8 *param2)
{
    u8 xPos, yPos;
    s8 priority;

    sub_020298D8(param2, &xPos, &yPos, &priority);
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

static void PhotoAccessory_SetData(PhotoAccessory *accessory, u8 param1, u8 xPos, u8 yPos, u8 priority)
{
    accessory->unk_00 = param1;
    accessory->xPos = xPos;
    accessory->yPos = yPos;
    accessory->priority = priority;
}

static void NonUniqueAccessoryFlags_SetCount(u32 *flags, u8 count, u8 accessoryID)
{
    GF_ASSERT(accessoryID < NON_UNIQUE_ACCESSORY_COUNT);

    u8 v0 = accessoryID / 8;
    u8 v1 = accessoryID % 8;

    v1 *= 4;

    flags[v0] &= ~(0xf << v1);
    flags[v0] |= (count << v1);
}

static u8 NonUniqueAccessoryFlags_GetCount(const u32 *flags, u8 accessoryID)
{
    u8 v0;
    u8 v1;
    u8 v2;

    GF_ASSERT(accessoryID < NON_UNIQUE_ACCESSORY_COUNT);

    v1 = accessoryID / 8;
    v2 = accessoryID % 8;
    v2 *= 4;
    v0 = (flags[v1] >> v2) & 0xf;

    if (v0 > MAX_NON_UNIQUE_ACCESSORIES_PER_TYPE) {
        v0 = MAX_NON_UNIQUE_ACCESSORIES_PER_TYPE;
    }

    return v0;
}

static void UniqueAccessoryFlags_SetCount(u32 *flags, u8 count, u8 accessoryID)
{
    GF_ASSERT(count < MAX_UNIQUE_ACCESSORIES_PER_TYPE + 1);

    u8 v0 = accessoryID / 32;
    u8 v1 = accessoryID % 32;

    v1 *= 1;

    flags[v0] &= ~(0x1 << v1);
    flags[v0] |= (count << v1);
}

static u8 UniqueAccessoryFlags_GetCount(const u32 *flags, u8 accessoryID)
{
    u8 v0;
    u8 v1;

    v0 = accessoryID / 32;
    v1 = accessoryID % 32;

    v1 *= 1;

    return (flags[v0] >> v1) & 0x1;
}

static void BackdropFlags_SetCount(u32 *flags, u8 count, u8 backdropID)
{
    u8 v0;
    u8 v1;

    GF_ASSERT(count <= BACKDROP_COUNT);

    v0 = backdropID / 4;
    v1 = backdropID % 4;

    v1 *= 8;

    flags[v0] &= ~(0xff << v1);
    flags[v0] |= (count << v1);
}

static u8 BackdropFlags_GetCount(const u32 *flags, u8 backdropID)
{
    u8 v0;
    u8 v1;

    v0 = backdropID / 4;
    v1 = backdropID % 4;

    v1 *= 8;

    return (flags[v0] >> v1) & 0xff;
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

static void GetMonXYPositions(Pokemon *mon, u8 *xPos, u8 *yPos)
{
    u8 yOffset = Pokemon_DPSpriteYOffset(mon, FACE_FRONT);

    *xPos = 192 - (8 * 8);
    *yPos = (16 + 129) - ((80 / 2) - yOffset) + -4;
    *yPos += (5 * 8);
}

void ImageClips_Init(ImageClips *imageClips)
{
    int i;

    for (i = 0; i < SAVED_PHOTOS_COUNT; i++) {
        DressUpPhoto_InitInternal(&imageClips->savedPhotos[i]);
    }

    for (i = 0; i < 5; i++) {
        inline_02029BFC_1(&imageClips->unk_4C8[i]);
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

int sub_02029C64(void)
{
    return sizeof(UnkStruct_02029C88);
}

DressUpPhoto *DressUpPhoto_New(u32 heapID)
{
    DressUpPhoto *photo = Heap_Alloc(heapID, sizeof(DressUpPhoto));
    DressUpPhoto_InitInternal(photo);

    return photo;
}

UnkStruct_02029C88 *sub_02029C88(u32 heapID)
{
    UnkStruct_02029C88 *v0 = Heap_Alloc(heapID, sizeof(UnkStruct_02029C88));
    inline_02029BFC_1(v0);

    return v0;
}

DressUpPhoto *ImageClips_GetDressUpPhoto(ImageClips *imageClips, int slot)
{
    GF_ASSERT(slot < SAVED_PHOTOS_COUNT);
    GF_ASSERT(DressUpPhoto_IsValid(&imageClips->savedPhotos[slot]));

    return &imageClips->savedPhotos[slot];
}

UnkStruct_02029C88 *sub_02029CD0(ImageClips *imageClips, int param1)
{
    GF_ASSERT(param1 < 5);
    GF_ASSERT(inline_02029CD0(&imageClips->unk_4C8[param1]));

    return &imageClips->unk_4C8[param1];
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

BOOL sub_02029D2C(const ImageClips *imageClips, int param1)
{
    GF_ASSERT(param1 < 5);
    return sub_0202A218(&imageClips->unk_4C8[param1]);
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

BOOL DressUpPhoto_HasData(const DressUpPhoto *photo)
{
    GF_ASSERT(DressUpPhoto_IsValid(photo));

    if (photo->integrity == PHOTO_FULL_MAGIC) {
        return TRUE;
    }

    return FALSE;
}

void DressUpPhoto_SetLanguageAndMagic(DressUpPhoto *photo)
{
    GF_ASSERT(DressUpPhoto_IsValid(photo));

    photo->integrity = PHOTO_FULL_MAGIC;
    photo->language = gGameLanguage;
}

void DressUpPhoto_Init(DressUpPhoto *photo)
{
    GF_ASSERT(DressUpPhoto_IsValid(photo));
    DressUpPhoto_InitInternal(photo);
}

void sub_02029FAC(DressUpPhoto *photo, Pokemon *mon, UnkStruct_020298D8 *param2)
{
    GF_ASSERT(DressUpPhoto_IsValid(photo));
    sub_02029990(&photo->photoMon, mon, param2);
}

void sub_02029FD0(DressUpPhoto *photo, const UnkStruct_ov22_02255040 *param1, int param2)
{
    NNSG2dSVec2 v0 = SoftwareSprite_GetPosition(param1->unk_04);
    int v1 = SoftwareSprite_GetPriority(param1->unk_04);

    GF_ASSERT(param2 < (11 - 1));
    GF_ASSERT(v0.x < 256);
    GF_ASSERT(v0.y < 256);
    GF_ASSERT(v1 > -128);
    GF_ASSERT(!(photo->unk_3C & (1 << param2)));
    GF_ASSERT(DressUpPhoto_IsValid(photo));

    PhotoAccessory_SetData(&photo->accessories[param2], param1->unk_00, v0.x, v0.y, v1);

    photo->unk_3C |= 1 << param2;
}

void sub_0202A084(DressUpPhoto *photo, u8 param1)
{
    GF_ASSERT(DressUpPhoto_IsValid(photo));
    photo->unk_70 = param1;
}

void DressUpPhoto_SetTitle(DressUpPhoto *photo, u16 word)
{
    GF_ASSERT(DressUpPhoto_IsValid(photo));

    sub_02014A84(&photo->title);
    Sentence_SetWord(&photo->title, 0, word);
}

void DressUpPhoto_Copy(DressUpPhoto *dest, const DressUpPhoto *src)
{
    GF_ASSERT(DressUpPhoto_IsValid(dest));
    memcpy(dest, src, sizeof(DressUpPhoto));
}

void DressUpPhoto_SetTrainerNameAndGender(DressUpPhoto *photo, const String *name, int gender)
{
    GF_ASSERT(DressUpPhoto_IsValid(photo));
    PhotoPokemon_SetTrainerNameAndGender(&photo->photoMon, name, gender);
}

BOOL sub_0202A110(const DressUpPhoto *photo, int param1)
{
    GF_ASSERT(param1 < (11 - 1));
    GF_ASSERT(DressUpPhoto_IsValid(photo));

    return photo->unk_3C & (1 << param1);
}

const PhotoPokemon *DressUpPhoto_GetPhotoMon(const DressUpPhoto *photo)
{
    GF_ASSERT(DressUpPhoto_IsValid(photo));
    return &photo->photoMon;
}

const PhotoAccessory *sub_0202A150(const DressUpPhoto *photo, int param1)
{
    GF_ASSERT(param1 < (11 - 1));
    GF_ASSERT(photo->unk_3C & (1 << param1));
    GF_ASSERT(DressUpPhoto_IsValid(photo));

    return &photo->accessories[param1];
}

u16 DressUpPhoto_GetMonSpecies(const DressUpPhoto *photo)
{
    GF_ASSERT(DressUpPhoto_IsValid(photo));
    return PhotoPokemon_GetSpecies(&photo->photoMon);
}

void DressUpPhoto_SetTrainerName(const DressUpPhoto *photo, String *name)
{
    GF_ASSERT(DressUpPhoto_IsValid(photo));
    PhotoPokemon_SetTrainerName(&photo->photoMon, name);
}

u32 DressUpPhoto_GetTrainerGender(const DressUpPhoto *photo)
{
    GF_ASSERT(DressUpPhoto_IsValid(photo));
    return PhotoPokemon_GetTrainerGender(&photo->photoMon);
}

u8 sub_0202A1DC(const DressUpPhoto *photo)
{
    GF_ASSERT(DressUpPhoto_IsValid(photo));
    return photo->unk_70;
}

u16 DressUpPhoto_GetTitleWord(const DressUpPhoto *photo)
{
    return Sentence_GetWord(&photo->title, 0);
}

u8 DressUpPhoto_GetLanguage(const DressUpPhoto *photo)
{
    GF_ASSERT(DressUpPhoto_IsValid(photo));
    return photo->language;
}

BOOL sub_0202A218(const UnkStruct_02029C88 *param0)
{
    GF_ASSERT(inline_02029CD0(param0));

    if (param0->integrity == PHOTO_FULL_MAGIC) {
        return TRUE;
    }

    return FALSE;
}

void sub_0202A240(UnkStruct_02029C88 *param0)
{
    GF_ASSERT(inline_02029CD0(param0));
    param0->integrity = PHOTO_FULL_MAGIC;
}

void sub_0202A25C(UnkStruct_02029C88 *param0)
{
    GF_ASSERT(inline_02029CD0(param0));
    inline_02029BFC_1(param0);
}

void sub_0202A284(UnkStruct_02029C88 *param0, Pokemon *param1, UnkStruct_020298D8 *param2)
{
    GF_ASSERT(inline_02029CD0(param0));
    sub_02029990(&param0->photoMon, param1, param2);
}

void sub_0202A2A8(UnkStruct_02029C88 *param0, const UnkStruct_ov22_02255040 *param1, int param2)
{
    NNSG2dSVec2 v0 = SoftwareSprite_GetPosition(param1->unk_04);
    int v1 = SoftwareSprite_GetPriority(param1->unk_04);

    GF_ASSERT(param2 < (21 - 1));
    GF_ASSERT(v0.x < 256);
    GF_ASSERT(v0.y < 256);
    GF_ASSERT(v1 > -128);
    GF_ASSERT(!(param0->unk_40 & (1 << param2)));
    GF_ASSERT(inline_02029CD0(param0));

    PhotoAccessory_SetData(&param0->accessories[param2], param1->unk_00, v0.x, v0.y, v1);

    param0->unk_40 |= 1 << param2;
}

void sub_0202A35C(UnkStruct_02029C88 *param0, u8 param1)
{
    GF_ASSERT(inline_02029CD0(param0));
    param0->unk_94 = param1;
}

void sub_0202A378(UnkStruct_02029C88 *param0, u32 param1)
{
    GF_ASSERT(inline_02029CD0(param0));
    param0->unk_04 = param1;
}

void sub_0202A390(UnkStruct_02029C88 *param0, const UnkStruct_02029C88 *param1)
{
    GF_ASSERT(inline_02029CD0(param0));
    memcpy(param0, param1, sizeof(UnkStruct_02029C88));
}

void sub_0202A3B0(UnkStruct_02029C88 *param0, Pokemon *mon, s8 priority)
{
    u8 xPos;
    u8 yPos;

    GF_ASSERT(inline_02029CD0(param0));

    GetMonXYPositions(mon, &xPos, &yPos);
    PhotoPokemon_SetDataFromMon(&param0->photoMon, mon, xPos, yPos, priority);
}

void sub_0202A3EC(UnkStruct_02029C88 *param0, u32 param1, u8 param2, u8 xPos, u8 yPos, s8 priority)
{
    GF_ASSERT(param1 < (21 - 1));
    GF_ASSERT(param2 < 100);
    GF_ASSERT(xPos < 256);
    GF_ASSERT(yPos < 256);
    GF_ASSERT(priority > -128);
    GF_ASSERT(!(param0->unk_40 & (1 << param1)));
    GF_ASSERT(inline_02029CD0(param0));

    if (param0->photoMon.priority >= priority) {
        priority = param0->photoMon.priority + 1;
    }

    PhotoAccessory_SetData(&param0->accessories[param1], param2, xPos, yPos, priority);
    param0->unk_40 |= 1 << param1;
}

BOOL sub_0202A488(const UnkStruct_02029C88 *param0, int param1)
{
    GF_ASSERT(param1 < (21 - 1));
    GF_ASSERT(inline_02029CD0(param0));

    if ((param0->unk_40 & (1 << param1)) != 0) {
        return 1;
    }

    return 0;
}

void sub_0202A4B4(UnkStruct_02029C88 *param0, const String *name, int gender)
{
    GF_ASSERT(inline_02029CD0(param0));
    PhotoPokemon_SetTrainerNameAndGender(&param0->photoMon, name, gender);
}

const PhotoPokemon *sub_0202A4D8(const UnkStruct_02029C88 *param0)
{
    GF_ASSERT(inline_02029CD0(param0));
    return &param0->photoMon;
}

const PhotoAccessory *sub_0202A4F0(const UnkStruct_02029C88 *param0, int param1)
{
    GF_ASSERT(param1 < (21 - 1));
    GF_ASSERT(param0->unk_40 & (1 << param1));
    GF_ASSERT(inline_02029CD0(param0));

    return &param0->accessories[param1];
}

void sub_0202A524(const UnkStruct_02029C88 *param0, String *param1)
{
    GF_ASSERT(inline_02029CD0(param0));
    PhotoPokemon_SetTrainerName(&param0->photoMon, param1);
}

u32 sub_0202A544(const UnkStruct_02029C88 *param0)
{
    GF_ASSERT(inline_02029CD0(param0));
    return PhotoPokemon_GetTrainerGender(&param0->photoMon);
}

void sub_0202A560(const UnkStruct_02029C88 *param0, Pokemon *param1)
{
    GF_ASSERT(inline_02029CD0(param0));
    PhotoPokemon_CopyToPokemonInternal(&param0->photoMon, param1);
}

u8 sub_0202A580(const UnkStruct_02029C88 *param0, int param1)
{
    GF_ASSERT(param1 < (21 - 1));
    GF_ASSERT(param0->unk_40 & (1 << param1));
    GF_ASSERT(inline_02029CD0(param0));

    return sub_0202A624(&param0->accessories[param1]);
}

u8 sub_0202A5B8(const UnkStruct_02029C88 *param0)
{
    GF_ASSERT(inline_02029CD0(param0));
    return param0->unk_94;
}

u32 sub_0202A5D0(const UnkStruct_02029C88 *param0)
{
    GF_ASSERT(inline_02029CD0(param0));
    return param0->unk_04;
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

u8 sub_0202A624(const PhotoAccessory *accessory)
{
    return accessory->unk_00;
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

static BOOL sub_0202A638(ImageClips *imageClips, const DressUpPhoto *photo)
{
    int i;
    const void *v1;
    u32 v2, v3;
    MATHCRC32Table v4;
    BOOL v5 = 1;

    if (DressUpPhoto_HasData(photo) == TRUE) {
        MATH_CRC32InitTable(&v4);
        v2 = MATH_CalcCRC32(&v4, photo, sizeof(DressUpPhoto));

        for (i = 0; i < SAVED_PHOTOS_COUNT; i++) {
            v1 = ImageClips_GetDressUpPhoto(imageClips, i);
            MATH_CRC32InitTable(&v4);
            v3 = MATH_CalcCRC32(&v4, v1, sizeof(DressUpPhoto));

            if (v3 == v2) {
                v5 = 0;
                break;
            }
        }
    } else {
        v5 = 0;
    }

    return v5;
}

void sub_0202A6A8(u8 param0, int param1, ImageClips *imageClips, const void **param3)
{
    int v0;
    DressUpPhoto *v1;
    const DressUpPhoto *v2;
    int v3;
    int v4;

    v0 = 0;

    for (v3 = 0; v3 < param0; v3++) {
        if (v3 == param1) {
            continue;
        }

        if (param3[v3] != NULL) {
            v2 = param3[v3];

            if (sub_0202A638(imageClips, v2) == 1) {
                v0++;
            }
        }
    }

    for (v3 = 11 - 1; v3 >= 1; v3--) {
        if (v3 + v0 < 11) {
            v1 = ImageClips_GetDressUpPhoto(imageClips, v3 + v0);
            v2 = ImageClips_GetDressUpPhoto(imageClips, v3);

            DressUpPhoto_Copy(v1, v2);
        }
    }

    v4 = 1;

    for (v3 = 0; v3 < param0; v3++) {
        if (v3 == param1) {
            continue;
        }

        if (param3[v3] != NULL) {
            v2 = param3[v3];

            if (sub_0202A638(imageClips, v2) == 1) {
                v1 = ImageClips_GetDressUpPhoto(imageClips, v4);
                v4++;
                DressUpPhoto_Copy(v1, v2);
            }
        }
    }
}

ImageClips *SaveData_GetImageClips(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_IMAGE_CLIPS);
}

void sub_0202A75C(const DressUpPhoto *photo, UnkStruct_ov61_0222AE80 *param1)
{
    int i;

    MI_CpuClear8(param1, sizeof(UnkStruct_ov61_0222AE80));

    param1->integrity = photo->integrity;

    param1->unk_04.personality = photo->photoMon.personality;
    param1->unk_04.otID = photo->photoMon.otID;
    param1->unk_04.species = photo->photoMon.species;

    for (i = 0; i < TRAINER_NAME_LEN + 1; i++) {
        param1->unk_04.trainerName[i] = photo->photoMon.trainerName[i];
    }

    param1->unk_04.priority = photo->photoMon.priority;
    param1->unk_04.xPos = photo->photoMon.xPos;
    param1->unk_04.yPos = photo->photoMon.yPos;
    param1->unk_04.form = photo->photoMon.form;

    param1->unk_24 = photo->unk_3C;
    param1->title = photo->title;

    for (i = 0; i < (11 - 1); i++) {
        param1->unk_30[i] = *((UnkStruct_ov61_0222AE80_sub2 *)(&photo->accessories[i]));
    }

    param1->unk_58 = photo->unk_70;
    param1->unk_59 = photo->language;
}

void sub_0202A824(const UnkStruct_ov61_0222AE80 *param0, DressUpPhoto *photo)
{
    int v0;
    int i;

    v0 = DressUpPhoto_Size();
    MI_CpuClear8(photo, v0);

    photo->integrity = param0->integrity;

    photo->photoMon.personality = param0->unk_04.personality;
    photo->photoMon.otID = param0->unk_04.otID;
    photo->photoMon.species = param0->unk_04.species;

    for (i = 0; i < TRAINER_NAME_LEN + 1; i++) {
        photo->photoMon.trainerName[i] = param0->unk_04.trainerName[i];
    }

    photo->photoMon.priority = param0->unk_04.priority;
    photo->photoMon.xPos = param0->unk_04.xPos;
    photo->photoMon.yPos = param0->unk_04.yPos;
    photo->photoMon.form = param0->unk_04.form;

    photo->unk_3C = param0->unk_24;
    photo->title = *((Sentence *)(&param0->title));

    for (i = 0; i < (11 - 1); i++) {
        photo->accessories[i] = *((PhotoAccessory *)(&param0->unk_30[i]));
    }

    photo->unk_70 = param0->unk_58;
    photo->language = param0->unk_59;

    for (i = 0; i < MON_NAME_LEN + 1; i++) {
        photo->photoMon.nickname[i] = CHAR_EOS;
    }

    photo->photoMon.trainerGender = 0;
}
