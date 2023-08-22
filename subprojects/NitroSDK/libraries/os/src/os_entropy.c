#include <nitro/os.h>
#include <nitro/gx.h>

extern vu64 OSi_TickCounter;

void OS_GetLowEntropyData (u32 buffer[OS_LOW_ENTROPY_DATA_SIZE / sizeof(u32)])
{
	const OSSystemWork *work = OS_GetSystemWork();
	const u8 *macAddress =
		(u8 *)((u32)(work->nvramUserInfo) + ((sizeof(NVRAMConfig) + 3) & ~0x00000003));

	buffer[0] = (u32)((GX_GetVCount() << 16) | OS_GetTickLo());
	buffer[1] = (u32)(*(u16 *)(macAddress + 4) << 16) ^ (u32)(OSi_TickCounter);
	buffer[2] = (u32)(OSi_TickCounter >> 32) ^ *(u32 *)macAddress ^ work->vblankCount;
#ifdef reg_G3X_GXSTAT
	buffer[2] ^= reg_G3X_GXSTAT;
#endif
	buffer[3] = *(u32 *)(&work->real_time_clock[0]);
	buffer[4] = *(u32 *)(&work->real_time_clock[4]);
	buffer[5] = (((u32)work->mic_sampling_data) << 16) ^ work->mic_last_address;
	buffer[6] = (u32)((*(u16 *)(&work->touch_panel[0]) << 16) | *(u16 *)(&work->touch_panel[2]));
	buffer[7] = (u32)((work->wm_rssi_pool << 16) | (reg_PAD_KEYINPUT | *(vu16 *)HW_BUTTON_XY_BUF));
}