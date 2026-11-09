#ifndef POKEPLATINUM_UNK_020298BC_H
#define POKEPLATINUM_UNK_020298BC_H

#include "generated/backdrops.h"
#include "generated/pokemon_contest_ranks.h"

#include "struct_defs/dress_up_photo.h"
#include "struct_defs/image_clips.h"
#include "struct_defs/photo_accessory.h"
#include "struct_defs/photo_pokemon.h"
#include "struct_defs/struct_020298D8.h"
#include "struct_defs/struct_02029C88.h"

#include "overlay022/struct_ov22_02255040.h"
#include "overlay061/struct_ov61_0222AE80.h"

#include "pokemon.h"
#include "savedata.h"
#include "string_gf.h"

void ImageClips_Init(ImageClips *imageClips);
int ImageClips_SaveSize(void);
int DressUpPhoto_Size(void);
int ContestPhoto_Size(void);
DressUpPhoto *DressUpPhoto_New(u32 heapID);
ContestPhoto *ContestPhoto_New(u32 heapID);
DressUpPhoto *ImageClips_GetDressUpPhoto(ImageClips *imageClips, int slot);
ContestPhoto *ImageClips_GetContestPhoto(ImageClips *imageClips, int contestType);
FashionCase *ImageClips_GetFashionCase(ImageClips *imageClips);
BOOL ImageClips_DressUpPhotoHasData(const ImageClips *imageClips, int slot);
BOOL ImageClips_ContestPhotoHasData(const ImageClips *imageClips, int contestType);
BOOL FashionCase_CanFitAccessoryCount(const FashionCase *fashionCase, u32 accessoryID, u32 count);
BOOL FashionCase_HasBackdrop(const FashionCase *fashionCase, u32 backdropID);
u32 FashionCase_GetAccessoryCount(const FashionCase *fashionCase, u32 accessoryID);
u32 FashionCase_GetBackdropCount(const FashionCase *fashionCase, u32 backdropID);
u32 FashionCase_GetTotalAccessories(const FashionCase *fashionCase);
u32 FashionCase_GetTotalBackdrops(const FashionCase *fashionCase);
void FashionCase_AddAccessory(FashionCase *fashionCase, u32 accessoryID, u32 amount);
void FashionCase_RemoveAccessory(FashionCase *fashionCase, u32 accessoryID, u32 amount);
void FashionCase_AddBackdrop(FashionCase *fashionCase, u32 backdropID);
BOOL DressUpPhoto_HasData(const DressUpPhoto *duPhoto);
void DressUpPhoto_SetLanguageAndMagic(DressUpPhoto *duPhoto);
void DressUpPhoto_Init(DressUpPhoto *duPhoto);
void DressUpPhoto_SetMonFromSprite(DressUpPhoto *duPhoto, Pokemon *mon, DressUpMonSprite *duMonSprite);
void DressUpPhoto_SetAccessoryFromSprite(DressUpPhoto *duPhoto, const DressUpAccessorySprite *duaSprite, int slot);
void DressUpPhoto_SetBackdrop(DressUpPhoto *duPhoto, u8 backdrop);
void DressUpPhoto_SetTitle(DressUpPhoto *duPhoto, u16 word);
void DressUpPhoto_Copy(DressUpPhoto *dest, const DressUpPhoto *src);
void DressUpPhoto_SetTrainerNameAndGender(DressUpPhoto *duPhoto, const String *name, int gender);
BOOL DressUpPhoto_HasAccessory(const DressUpPhoto *duPhoto, int slot);
const PhotoPokemon *DressUpPhoto_GetPhotoMon(const DressUpPhoto *duPhoto);
const PhotoAccessory *DressUpPhoto_GetAccessory(const DressUpPhoto *duPhoto, int slot);
u16 DressUpPhoto_GetMonSpecies(const DressUpPhoto *duPhoto);
void DressUpPhoto_SetTrainerName(const DressUpPhoto *duPhoto, String *name);
u32 DressUpPhoto_GetTrainerGender(const DressUpPhoto *duPhoto);
enum Backdrop DressUpPhoto_GetBackdrop(const DressUpPhoto *duPhoto);
u16 DressUpPhoto_GetTitleWord(const DressUpPhoto *duPhoto);
u8 DressUpPhoto_GetLanguage(const DressUpPhoto *duPhoto);
BOOL ContestPhoto_HasData(const ContestPhoto *contestPhoto);
void ContestPhoto_SetMagic(ContestPhoto *contestPhoto);
void ContestPhoto_Init(ContestPhoto *contestPhoto);
void ContestPhoto_SetMonFromSprite(ContestPhoto *contestPhoto, Pokemon *mon, DressUpMonSprite *duMonSprite);
void ContestPhoto_SetAccessoryFromSprite(ContestPhoto *contestPhoto, const DressUpAccessorySprite *duaSprite, int slot);
void ContestPhoto_SetBackdrop(ContestPhoto *contestPhoto, u8 backdrop);
void ContestPhoto_SetContestRank(ContestPhoto *contestPhoto, enum PokemonContestRank contestRank);
void ContestPhoto_Copy(ContestPhoto *destContestPhoto, const ContestPhoto *srcContestPhoto);
void ContestPhoto_SetMon(ContestPhoto *contestPhoto, Pokemon *mon, s8 priority);
void ContestPhoto_SetAccessory(ContestPhoto *contestPhoto, u32 slot, u8 accessoryID, u8 xPos, u8 yPos, s8 priority);
BOOL ContestPhoto_HasAccessory(const ContestPhoto *contestPhoto, int slot);
void ContestPhoto_SetTrainerNameAndGender(ContestPhoto *contestPhoto, const String *name, int gender);
const PhotoPokemon *ContestPhoto_GetPhotoMon(const ContestPhoto *contestPhoto);
const PhotoAccessory *ContestPhoto_GetAccessory(const ContestPhoto *contestPhoto, int slot);
void ContestPhoto_SetTrainerName(const ContestPhoto *contestPhoto, String *name);
u32 ContestPhoto_GetTrainerGender(const ContestPhoto *contestPhoto);
void ContestPhoto_CopyToPokemon(const ContestPhoto *contestPhoto, Pokemon *mon);
u8 ContestPhoto_GetAccessoryID(const ContestPhoto *contestPhoto, int slot);
enum Backdrop ContestPhoto_GetBackdrop(const ContestPhoto *contestPhoto);
u32 ContestPhoto_GetContestRank(const ContestPhoto *contestPhoto);
u16 PhotoPokemon_GetSpecies(const PhotoPokemon *photoMon);
void PhotoPokemon_SetTrainerName(const PhotoPokemon *photoMon, String *name);
u32 PhotoPokemon_GetTrainerGender(const PhotoPokemon *photoMon);
s8 PhotoPokemon_GetPriority(const PhotoPokemon *photoMon);
u8 PhotoPokemon_GetXPos(const PhotoPokemon *photoMon);
u8 PhotoPokemon_GetYPos(const PhotoPokemon *photoMon);
void PhotoPokemon_CopyToPokemon(const PhotoPokemon *photoMon, Pokemon *mon);
u8 PhotoAccessory_GetAccessoryID(const PhotoAccessory *accessory);
u8 PhotoAccessory_GetXPos(const PhotoAccessory *accessory);
u8 PhotoAccessory_GetYPos(const PhotoAccessory *accessory);
s8 PhotoAccessory_GetPriority(const PhotoAccessory *accessory);
void ImageClips_AddReceivedDressUpPhotos(u8 numPhotos, int skipIndex, ImageClips *imageClips, const void **photos);
ImageClips *SaveData_GetImageClips(SaveData *saveData);
void sub_0202A75C(const DressUpPhoto *duPhoto, UnkStruct_ov61_0222AE80 *param1);
void sub_0202A824(const UnkStruct_ov61_0222AE80 *param0, DressUpPhoto *duPhoto);

#endif // POKEPLATINUM_UNK_020298BC_H
