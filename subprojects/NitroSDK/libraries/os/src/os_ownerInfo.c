#include <nitro/os/common/ownerInfo.h>
#include <nitro/os/common/systemWork.h>

void OS_GetMacAddress (u8 *macAddress)
{
	u8 *src;

	src =
		(u8 *)((u32)(OS_GetSystemWork()->nvramUserInfo) +
		       ((sizeof(NVRAMConfig) + 3) & ~0x00000003));
	MI_CpuCopy8(src, macAddress, 6);
}

#ifdef  SDK_TS
#if (SDK_TS_VERSION >= 200 || SDK_NVRAM_FORMAT >= 100)

void OS_GetOwnerInfo (OSOwnerInfo *info)
{
	NVRAMConfig *src;

	src = (NVRAMConfig *)(OS_GetSystemWork()->nvramUserInfo);
	info->language = (u8)(src->ncd.option.language);
	info->favoriteColor = (u8)(src->ncd.owner.favoriteColor);
	info->birthday.month = (u8)(src->ncd.owner.birthday.month);
	info->birthday.day = (u8)(src->ncd.owner.birthday.day);
	info->nickNameLength = (u16)(src->ncd.owner.nickname.length);
	info->commentLength = (u16)(src->ncd.owner.comment.length);
	MI_CpuCopy16(src->ncd.owner.nickname.str,
	             info->nickName, OS_OWNERINFO_NICKNAME_MAX * sizeof(u16));
	MI_CpuCopy16(src->ncd.owner.comment.str, info->comment, OS_OWNERINFO_COMMENT_MAX * sizeof(u16));
	info->nickName[OS_OWNERINFO_NICKNAME_MAX] = 0;
	info->comment[OS_OWNERINFO_COMMENT_MAX] = 0;
}

#endif

s64 OS_GetOwnerRtcOffset (void)
{
	NVRAMConfig *src = (NVRAMConfig *)(OS_GetSystemWork()->nvramUserInfo);

#if (SDK_TS_VERSION >= 200 || SDK_NVRAM_FORMAT >= 100)
	return src->ncd.option.rtcOffset;
#else
	return src->ncd.rtcOffset;
#endif
}

#endif

const GXRgb *OS_GetFavoriteColorTable (void)
{
	static const GXRgb col_table[OS_FAVORITE_COLOR_MAX] = {
		OS_FAVORITE_COLOR_VALUE_GRAY,
		OS_FAVORITE_COLOR_VALUE_BROWN,
		OS_FAVORITE_COLOR_VALUE_RED,
		OS_FAVORITE_COLOR_VALUE_PINK,
		OS_FAVORITE_COLOR_VALUE_ORANGE,
		OS_FAVORITE_COLOR_VALUE_YELLOW,
		OS_FAVORITE_COLOR_VALUE_LIME_GREEN,
		OS_FAVORITE_COLOR_VALUE_GREEN,
		OS_FAVORITE_COLOR_VALUE_DARK_GREEN,
		OS_FAVORITE_COLOR_VALUE_SEA_GREEN,
		OS_FAVORITE_COLOR_VALUE_TURQUOISE,
		OS_FAVORITE_COLOR_VALUE_BLUE,
		OS_FAVORITE_COLOR_VALUE_DARK_BLUE,
		OS_FAVORITE_COLOR_VALUE_PURPLE,
		OS_FAVORITE_COLOR_VALUE_VIOLET,
		OS_FAVORITE_COLOR_VALUE_MAGENTA,
	};
	return col_table;
}