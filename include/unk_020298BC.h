#ifndef POKEPLATINUM_UNK_020298BC_H
#define POKEPLATINUM_UNK_020298BC_H

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
int sub_02029C64(void);
DressUpPhoto *DressUpPhoto_New(u32 heapID);
UnkStruct_02029C88 *sub_02029C88(u32 heapID);
DressUpPhoto *ImageClips_GetDressUpPhoto(ImageClips *imageClips, int slot);
UnkStruct_02029C88 *sub_02029CD0(ImageClips *imageClips, int param1);
FashionCase *ImageClips_GetFashionCase(ImageClips *imageClips);
BOOL ImageClips_DressUpPhotoHasData(const ImageClips *imageClips, int slot);
BOOL sub_02029D2C(const ImageClips *imageClips, int param1);
BOOL FashionCase_CanFitAccessoryCount(const FashionCase *fashionCase, u32 accessoryID, u32 count);
BOOL FashionCase_HasBackdrop(const FashionCase *fashionCase, u32 backdropID);
u32 FashionCase_GetAccessoryCount(const FashionCase *fashionCase, u32 accessoryID);
u32 FashionCase_GetBackdropCount(const FashionCase *fashionCase, u32 backdropID);
u32 FashionCase_GetTotalAccessories(const FashionCase *fashionCase);
u32 FashionCase_GetTotalBackdrops(const FashionCase *fashionCase);
void FashionCase_AddAccessory(FashionCase *fashionCase, u32 accessoryID, u32 amount);
void FashionCase_RemoveAccessory(FashionCase *fashionCase, u32 accessoryID, u32 amount);
void FashionCase_AddBackdrop(FashionCase *fashionCase, u32 backdropID);
BOOL DressUpPhoto_HasData(const DressUpPhoto *photo);
void DressUpPhoto_SetLanguageAndMagic(DressUpPhoto *photo);
void DressUpPhoto_Init(DressUpPhoto *photo);
void sub_02029FAC(DressUpPhoto *photo, Pokemon *mon, UnkStruct_020298D8 *param2);
void sub_02029FD0(DressUpPhoto *photo, const UnkStruct_ov22_02255040 *param1, int param2);
void sub_0202A084(DressUpPhoto *photo, u8 param1);
void DressUpPhoto_SetTitle(DressUpPhoto *photo, u16 word);
void DressUpPhoto_Copy(DressUpPhoto *dest, const DressUpPhoto *src);
void DressUpPhoto_SetTrainerNameAndGender(DressUpPhoto *photo, const String *name, int gender);
BOOL sub_0202A110(const DressUpPhoto *photo, int param1);
const PhotoPokemon *DressUpPhoto_GetPhotoMon(const DressUpPhoto *photo);
const PhotoAccessory *sub_0202A150(const DressUpPhoto *photo, int param1);
u16 DressUpPhoto_GetMonSpecies(const DressUpPhoto *photo);
void DressUpPhoto_SetTrainerName(const DressUpPhoto *photo, String *name);
u32 DressUpPhoto_GetTrainerGender(const DressUpPhoto *photo);
u8 sub_0202A1DC(const DressUpPhoto *photo);
u16 DressUpPhoto_GetTitleWord(const DressUpPhoto *photo);
u8 DressUpPhoto_GetLanguage(const DressUpPhoto *photo);
BOOL sub_0202A218(const UnkStruct_02029C88 *param0);
void sub_0202A240(UnkStruct_02029C88 *param0);
void sub_0202A25C(UnkStruct_02029C88 *param0);
void sub_0202A284(UnkStruct_02029C88 *param0, Pokemon *param1, UnkStruct_020298D8 *param2);
void sub_0202A2A8(UnkStruct_02029C88 *param0, const UnkStruct_ov22_02255040 *param1, int param2);
void sub_0202A35C(UnkStruct_02029C88 *param0, u8 param1);
void sub_0202A378(UnkStruct_02029C88 *param0, u32 param1);
void sub_0202A390(UnkStruct_02029C88 *param0, const UnkStruct_02029C88 *param1);
void sub_0202A3B0(UnkStruct_02029C88 *param0, Pokemon *mon, s8 param2);
void sub_0202A3EC(UnkStruct_02029C88 *param0, u32 param1, u8 param2, u8 xPos, u8 yPos, s8 priority);
BOOL sub_0202A488(const UnkStruct_02029C88 *param0, int param1);
void sub_0202A4B4(UnkStruct_02029C88 *param0, const String *param1, int param2);
const PhotoPokemon *sub_0202A4D8(const UnkStruct_02029C88 *param0);
const PhotoAccessory *sub_0202A4F0(const UnkStruct_02029C88 *param0, int param1);
void sub_0202A524(const UnkStruct_02029C88 *param0, String *param1);
u32 sub_0202A544(const UnkStruct_02029C88 *param0);
void sub_0202A560(const UnkStruct_02029C88 *param0, Pokemon *param1);
u8 sub_0202A580(const UnkStruct_02029C88 *param0, int param1);
u8 sub_0202A5B8(const UnkStruct_02029C88 *param0);
u32 sub_0202A5D0(const UnkStruct_02029C88 *param0);
u16 PhotoPokemon_GetSpecies(const PhotoPokemon *photoMon);
void PhotoPokemon_SetTrainerName(const PhotoPokemon *photoMon, String *name);
u32 PhotoPokemon_GetTrainerGender(const PhotoPokemon *photoMon);
s8 PhotoPokemon_GetPriority(const PhotoPokemon *photoMon);
u8 PhotoPokemon_GetXPos(const PhotoPokemon *photoMon);
u8 PhotoPokemon_GetYPos(const PhotoPokemon *photoMon);
void PhotoPokemon_CopyToPokemon(const PhotoPokemon *photoMon, Pokemon *mon);
u8 sub_0202A624(const PhotoAccessory *accessory);
u8 PhotoAccessory_GetXPos(const PhotoAccessory *accessory);
u8 PhotoAccessory_GetYPos(const PhotoAccessory *accessory);
s8 PhotoAccessory_GetPriority(const PhotoAccessory *accessory);
void sub_0202A6A8(u8 param0, int param1, ImageClips *imageClips, const void **param3);
ImageClips *SaveData_GetImageClips(SaveData *saveData);
void sub_0202A75C(const DressUpPhoto *photo, UnkStruct_ov61_0222AE80 *param1);
void sub_0202A824(const UnkStruct_ov61_0222AE80 *param0, DressUpPhoto *photo);

#endif // POKEPLATINUM_UNK_020298BC_H
