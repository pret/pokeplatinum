	.include "macros/function.inc"

	.extern CTRDGi_WriteFlashSectorMX
    .extern CTRDGi_EraseFlashChipMX
    .extern CTRDGi_EraseFlashSectorMX
    .extern CTRDGi_WriteFlashSectorAsyncMX
    .extern CTRDGi_EraseFlashChipAsyncMX
    .extern CTRDGi_EraseFlashSectorAsyncMX
    .extern CTRDGi_PollingSR1MCOMMON

	.rodata


	.global Unk_020FE5DC
Unk_020FE5DC: ; 0x020FE5DC
	.incbin "incbin/arm9_rodata.bin", 0x1999C, 0x199A4 - 0x1999C

	.global Unk_020FE5E4
Unk_020FE5E4: ; 0x020FE5E4
	.word CTRDGi_WriteFlashSectorMX
    .word CTRDGi_EraseFlashChipMX
    .word CTRDGi_EraseFlashSectorMX
    .word CTRDGi_WriteFlashSectorAsyncMX
    .word CTRDGi_EraseFlashChipAsyncMX
    .word CTRDGi_EraseFlashSectorAsyncMX
    .word CTRDGi_PollingSR1MCOMMON
    .word Unk_020FE5DC
	.incbin "incbin/arm9_rodata.bin", 0x199A4+0x20, 0x1C

