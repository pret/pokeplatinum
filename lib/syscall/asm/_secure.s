	.include "asm/macros/function.inc"

	.section .text

	.global SecureAreaStart
SecureAreaStart:
	.byte 0xFF, 0xDE, 0xFF, 0xE7, 0xFF, 0xDE, 0xFF, 0xE7, 0xFF, 0xDE, 0xFF, 0xE7, 0xFF, 0xDE, 0x92, 0x8E
	.byte 0x26, 0xCB, 0x38, 0xC4, 0xDF, 0xBC, 0xA3, 0x97, 0x54, 0xA4, 0xE6, 0x8D, 0x1F, 0x05, 0x85, 0x33
	.byte 0xB7, 0x48, 0xEC, 0xF8, 0x19, 0xE8, 0x5C, 0x73, 0x66, 0x43, 0x66, 0xC4, 0x63, 0x36, 0x44, 0x36
	.byte 0x24, 0x40, 0x84, 0xCC, 0xDD, 0x94, 0x08, 0xA2, 0x8A, 0x12, 0xE2, 0x43, 0xD5, 0xF4, 0x95, 0x8C
	.byte 0xA8, 0x64, 0xCD, 0xDB, 0xA7, 0x11, 0xD1, 0x9A, 0xD9, 0x2E, 0x63, 0x3F, 0xA0, 0xFF, 0xB2, 0x5C
	.byte 0xAD, 0xFB, 0xBC, 0x93, 0x5F, 0xD0, 0x8B, 0x60, 0xEB, 0x1B, 0xE3, 0x46, 0x69, 0xBB, 0xED, 0x62
	.byte 0x17, 0xD5, 0x67, 0x98, 0xBB, 0xD2, 0x0B, 0xF9, 0x61, 0x5A, 0x71, 0xB4, 0xCD, 0xC7, 0xE4, 0x78
	.byte 0x36, 0x22, 0x91, 0x9A, 0xE6, 0x82, 0xB0, 0xD5, 0x63, 0x0E

	non_word_aligned_thumb_func_start SVC_Sqrt
SVC_Sqrt: ; 0x0200007A
	swi 0xd
	bx lr
	thumb_func_end SVC_Sqrt
_0200007E:
	.byte 0x7F, 0x2D
	.byte 0x47, 0xDA, 0xA7, 0xEC, 0xAB, 0xA8, 0xE3, 0xD7, 0x4E, 0xBD, 0x2C, 0x3B, 0xE9, 0x58, 0x1E, 0x93
	.byte 0x0B, 0x9D, 0x95, 0x92, 0x78, 0x17, 0x5A, 0xC5, 0x64, 0xB0, 0xA7, 0xC3, 0xE3, 0xBA, 0x71, 0xC9
	.byte 0xE4, 0xDA, 0x75, 0x3A, 0x80, 0xDB, 0xE7, 0xFB, 0x8F, 0xDF, 0x76, 0x0C, 0xA8, 0x78, 0xD8, 0xC6
	.byte 0xA4, 0xA1, 0x20, 0x62, 0xB9, 0x0C, 0xEA, 0x82, 0x20, 0x99, 0x7F, 0x1E, 0xCB, 0xF2, 0x77, 0x39
	.byte 0x4C, 0xD0, 0xFC, 0x57, 0xF6, 0xB2, 0x78, 0x51, 0x82, 0x9C, 0x9D, 0xE7, 0x70, 0xD8, 0x17, 0x6A
	.byte 0x25, 0xE9, 0x22, 0xAF, 0x05, 0xAB, 0xEE, 0x06, 0xB6, 0x34, 0xBC, 0x40, 0xDC, 0x05, 0x82, 0x21

	thumb_func_start SVC_UncompressLZ16FromDevice
SVC_UncompressLZ16FromDevice: ; 0x020000E0
	swi 0x12
	bx lr
	thumb_func_end SVC_UncompressLZ16FromDevice
_020000E4:
	.byte 0x7F, 0xF0, 0x5D, 0x95, 0x2F, 0x8F, 0x87, 0xC6, 0x6F, 0x88, 0x36, 0x73
	.byte 0xC7, 0x57, 0x82, 0x11, 0x0D, 0x58, 0x3E, 0x8C, 0x0D, 0xE1, 0xE9, 0xD8, 0x13, 0x49, 0x97, 0x11
	.byte 0xB0, 0x7E, 0x30, 0x42, 0x1D, 0x23, 0x96, 0x72, 0xCE, 0x3B, 0x65, 0x29, 0xBD, 0x19, 0xAF, 0x06
	.byte 0xC0, 0x52, 0x70, 0xDA, 0xF0, 0xBB, 0x61, 0x07, 0x69, 0x6B, 0xAB, 0x01, 0xCE, 0x09, 0x28, 0x15
	.byte 0x13, 0x96, 0xEF, 0xAD, 0xB4, 0xDC, 0xCD, 0x91, 0xF5, 0x33, 0x76, 0x1E, 0x0D, 0x8F, 0xBC, 0x1A
	.byte 0x26, 0x4C, 0x03, 0x81, 0x2F, 0xE1, 0x2A, 0x69, 0xC9, 0x60, 0xEC, 0xDC, 0x69, 0x44, 0xCE, 0x63
	.byte 0xC8, 0x8A, 0x7C, 0xDF, 0x28, 0x33, 0x06, 0x72, 0x3D, 0xF1, 0x5C, 0xC8, 0xA7, 0x43, 0x83, 0xA3
	.byte 0x88, 0x4E, 0xAE, 0x16, 0x3B, 0xBE, 0x54, 0x24, 0x6A, 0x7B, 0x2C, 0x20, 0xFD, 0xB8, 0xAA, 0xE0

	thumb_func_start SVC_GetCRC16
SVC_GetCRC16: ; 0x02000160
	swi 0xe
	bx lr
	thumb_func_end SVC_GetCRC16
_02000164:
	.byte 0x98, 0xE1, 0xD6, 0x85, 0xD9, 0xD9, 0x57, 0x08, 0xE5, 0x99, 0x06, 0x63
	.byte 0x8C, 0xE6, 0x69, 0xDB, 0x02, 0x7B, 0x75, 0xCA, 0xD1, 0xFE, 0x42, 0x50, 0x23, 0x7B, 0x3E, 0x1B
	.byte 0xC6, 0xC4, 0x07, 0x81, 0x83, 0x53, 0x07, 0x39, 0x0B, 0xBB, 0xBC, 0x86, 0x67, 0x9A, 0x30, 0x8F
	.byte 0x6B, 0x82, 0xAE, 0x00, 0x22, 0xAE, 0xFA, 0x60, 0xDA, 0x7D, 0x6A, 0x20, 0xB5, 0x60, 0xAC, 0xC5
	.byte 0xD6, 0x4B, 0x91, 0x8E, 0xA1, 0x87, 0x91, 0x2D, 0x7D, 0x20, 0x62, 0x01, 0x93, 0xAE, 0x1E, 0x10
	.byte 0xEE, 0xF1, 0x85, 0x35, 0x54, 0x82, 0x84, 0xB7, 0x67, 0xDF, 0x57, 0x04, 0xDD, 0x59, 0xAC, 0xF4
	.byte 0xC8, 0x42, 0x01, 0xDE

	thumb_func_start SVC_Div
SVC_Div: ; 0x020001C4
	swi 9
	bx lr
	thumb_func_end SVC_Div
_020001C8:
	.byte 0xF8, 0x4B, 0xB2, 0xDA, 0xE3, 0xE8, 0xA0, 0x05
	.byte 0x8F, 0x8D, 0x10, 0x77, 0x7E, 0x0D, 0x52, 0xE4, 0x66, 0x59, 0x8D, 0x91, 0x35, 0x57, 0x20, 0xA7
	.byte 0xBB, 0x6E, 0x35, 0xF9, 0x73, 0x0A, 0x73, 0xFD, 0x3A, 0x2D, 0x68, 0x12, 0x9C, 0xFC, 0x46, 0x4A
	.byte 0x78, 0x42, 0x42, 0x90, 0xA9, 0xF8, 0x92, 0x35, 0x48, 0x77, 0x89, 0x6E, 0x0A, 0x80, 0xB0, 0xD8
	.byte 0xDE, 0x38, 0xE8, 0xF9, 0xBC, 0xF2, 0x73, 0xCC, 0x00, 0xAB, 0xC9, 0x68, 0x6E, 0x67, 0x87, 0xD0
	.byte 0x16, 0xE8, 0x5C, 0xCC, 0x1C, 0x59, 0xBA, 0xEC, 0xA8, 0xBB, 0x67, 0x76, 0x21, 0xD1, 0xF9, 0xB6
	.byte 0xA3, 0xFC, 0xA3, 0xB0, 0xF3, 0xAC, 0x94, 0xEF, 0x8B, 0x87, 0x7D, 0xA3, 0x50, 0x31, 0x6A, 0xE1
	.byte 0x96, 0xFB, 0xF7, 0x2B, 0xC1, 0x43, 0xFC, 0xAF, 0xD4, 0xD8, 0x78, 0x96, 0x25, 0x1F, 0x2E, 0x12
	.byte 0x73, 0x77, 0x20, 0x94, 0x4C, 0xCA

	non_word_aligned_thumb_func_start SVC_WaitVBlankIntr
SVC_WaitVBlankIntr: ; 0x02000246
	mov r2, #0
	swi 5
	bx lr
	thumb_func_end SVC_WaitVBlankIntr
_0200024C:
	.byte 0xF2, 0xF2, 0x65, 0x7C
	.byte 0x41, 0x43, 0x9D, 0xA1, 0x09, 0xE9, 0xD5, 0xAB, 0x6E, 0x1F, 0x30, 0x19, 0xFA, 0xCD, 0x4A, 0x8D
	.byte 0x42, 0x80, 0x1F, 0x8C, 0x81, 0x09, 0x0C, 0x0C, 0x2C, 0x91, 0x3F, 0x2B, 0x98, 0x70, 0xE8, 0x0D
	.byte 0x8F, 0x82, 0x82, 0x8E, 0x6A, 0x02, 0x64, 0x7D, 0xCC, 0xD2, 0xC6, 0x08, 0xC8, 0xE8, 0x9E, 0xB5
	.byte 0x08, 0x9F, 0xDF, 0xD8, 0x1A, 0x48, 0xF6, 0xA4, 0x11, 0xE0, 0xD6, 0xE1, 0xF0, 0xD5, 0x66, 0xF4
	.byte 0xFC, 0x3B, 0x69, 0x83, 0x3E, 0x63, 0x14, 0xE9, 0x54, 0xB5, 0x2F, 0xC0, 0xB9, 0x78, 0x8C, 0x88
	.byte 0x19, 0x8A, 0x09, 0x06, 0xA6, 0x48, 0x30, 0xC6, 0xA3, 0xA7, 0x62, 0xE8, 0xE0, 0x3A, 0x9C, 0xF4
	.byte 0x7E, 0xE0, 0x02, 0xF1, 0x9F, 0x74, 0x4C, 0xC3, 0xE9, 0xA9, 0x1A, 0x0A

	thumb_func_start SVC_UncompressLZ8
SVC_UncompressLZ8: ; 0x020002BC
	swi 0x11
	bx lr
	thumb_func_end SVC_UncompressLZ8
_020002C0:
	.byte 0x84, 0x8D, 0x66, 0x56, 0xAD, 0xC7, 0xD0, 0xDF, 0x6B, 0x85, 0x96, 0x97, 0x9E, 0x86, 0x6F, 0x36
	.byte 0xCB, 0x9F, 0x63, 0x5A, 0x81, 0xCE, 0x0E, 0xEC, 0xD3, 0xD9, 0xFB, 0x68, 0x56, 0x7A, 0xA9, 0x9F
	.byte 0xA4, 0x91, 0xA1, 0x3C, 0x82, 0x19, 0x34, 0xC4, 0x6C, 0xD5, 0x7A, 0x49, 0xAD, 0xE6, 0x93, 0x1F
	.byte 0xD4, 0x70, 0x8F, 0xD1, 0x45, 0x98, 0xAB, 0x3E, 0x60, 0xB4, 0x24, 0xD2, 0x79, 0x0F, 0x4F, 0x5E
	.byte 0xD1, 0x21, 0x42, 0xCE, 0xC5, 0x6C, 0x3A, 0xDE, 0xC3, 0x62, 0xE4, 0x79, 0xCF, 0xA4, 0xF6, 0xE4
	.byte 0x05, 0x1E, 0x9A, 0x64, 0xBC, 0x90

	non_word_aligned_thumb_func_start SVC_Halt
SVC_Halt: ; 0x02000316
	swi 6
	bx lr
	thumb_func_end SVC_Halt
_0200031A:
	.byte 0xE9, 0x0E, 0xEB, 0xAE, 0xE7, 0x7D
	.byte 0xBE, 0x6D, 0x80, 0xF6, 0xFD, 0x65, 0xFF, 0x34, 0x6B, 0x87, 0x74, 0x07, 0xB4, 0x58, 0xC4, 0x20
	.byte 0xF9, 0xAB, 0xF1, 0xBE, 0xC9, 0x37, 0x22, 0x2E, 0xBB, 0xE7, 0xB9, 0x60, 0x75, 0x0B, 0x70, 0xFF
	.byte 0xE3, 0x1D, 0x8A, 0x4D, 0x70, 0x72, 0xA3, 0x07, 0x18, 0xE1, 0x4F, 0xC7, 0x13, 0x0C, 0x6F, 0x66
	.byte 0x63, 0x5A, 0x6F, 0x9A, 0x1D, 0xDE, 0x4C, 0xB2, 0x01, 0xA3, 0x00, 0xD2, 0xA0, 0xF3, 0x07, 0xA2
	.byte 0xF1, 0xFF, 0x90, 0xCE, 0x19, 0x2B, 0x2E, 0x99, 0xB3, 0x7B, 0x89, 0x82, 0xA5, 0xB8, 0x27, 0x31
	.byte 0xEF, 0x1D, 0xA5, 0x60, 0x81, 0xF7, 0xF2, 0xDE, 0xE1, 0x48, 0x67, 0xFF, 0xD4, 0xF1, 0xFD, 0xEA
	.byte 0x04, 0x08, 0x89, 0x95, 0xE5, 0xA6, 0x4B, 0xA4, 0xB8, 0x36, 0x45, 0x22, 0x06, 0xED, 0xA0, 0xBE
	.byte 0x40, 0xA4, 0x14, 0x9C, 0x64, 0x17, 0xF3, 0x81, 0x36, 0x48

	non_word_aligned_thumb_func_start SVC_UncompressRL8
SVC_UncompressRL8: ; 0x0200039A
	swi 0x14
	bx lr
	thumb_func_end SVC_UncompressRL8
_0200039E:
	.byte 0xCD, 0x88
	.byte 0x7F, 0x75, 0x2F, 0x90, 0x3F, 0x6E, 0x4B, 0xFD, 0xE9, 0xE3, 0x2B, 0xC6, 0xA0, 0xA9, 0xB3, 0xB8
	.byte 0x7A, 0xBD, 0x31, 0x3B, 0x04, 0x00, 0x12, 0x0B, 0xF7, 0x2A, 0x10, 0x6E, 0x5B, 0x20, 0xDE, 0x43
	.byte 0xA6, 0xBC, 0x29, 0x85, 0x94, 0x3D, 0x8F, 0x55, 0x8A, 0xC5, 0x44, 0xFF, 0x78, 0xBA, 0x7A, 0xA8
	.byte 0x1A, 0x90, 0x51, 0xDD, 0xF0, 0xF7, 0x99, 0x57, 0x42, 0xCA, 0x38, 0x29, 0xEF, 0xA1, 0x1D, 0xE7
	.byte 0xA9, 0x9F, 0xAB, 0xD8, 0x82, 0x41, 0x93, 0xD6, 0x95, 0x50, 0x24, 0xC2, 0x2D, 0xA3, 0x03, 0xDC
	.byte 0x18, 0xD9, 0xE2, 0x3C, 0x19, 0x76, 0x9F, 0x35, 0xEE, 0x15, 0x81, 0xB4, 0xD5, 0x98, 0xDA, 0x4B
	.byte 0x17, 0x94, 0xC8, 0x7D, 0x77, 0x97, 0x09, 0xDF, 0x08, 0x1C, 0x70, 0x47, 0xC5, 0x28, 0x19, 0xFA
	.byte 0x99, 0xF2, 0xD3, 0x66, 0x98, 0xF7, 0xE7, 0x25, 0xA8, 0x9E, 0x04, 0x58, 0xA7, 0x1E, 0x80, 0xD2
	.byte 0x89, 0x8B, 0x8C, 0x9A, 0xDB, 0xEC, 0xC2, 0x64, 0x59, 0xFF, 0xAE, 0xC1, 0xD8, 0x8E, 0x42, 0x24
	.byte 0x3A, 0x72, 0x47, 0xF7, 0x5E, 0x56, 0x27, 0xE8, 0xC9, 0x85, 0x46, 0xAF, 0x2F, 0x42, 0xC4, 0x0C
	.byte 0x43, 0xCA, 0x50, 0x37, 0x25, 0xC7, 0x64, 0xE2, 0x9C, 0xD5, 0x27, 0x1D, 0x49, 0xFC, 0xBE, 0xD2
	.byte 0x7B, 0x21, 0x21, 0x65, 0x8D, 0x5E, 0xAC, 0x80, 0xFF, 0xD1, 0x76, 0x5B, 0x3D, 0x64, 0x31, 0x59
	.byte 0x06, 0x03, 0x95, 0x34, 0x13, 0xA7, 0x42, 0xF6, 0x50, 0x0B

	non_word_aligned_thumb_func_start SVC_IsMmemExpanded
SVC_IsMmemExpanded: ; 0x0200046A
	swi 0xf
	bx lr
	thumb_func_end SVC_IsMmemExpanded
_0200046E:
	.byte 0x0C, 0x9B
	.byte 0xF4, 0xF6, 0x89, 0x7B, 0xD0, 0x91, 0x6B, 0x58, 0x33, 0x76, 0x52, 0xBC, 0xEC, 0x81, 0x89, 0xD2
	.byte 0xFB, 0x4B, 0xE1, 0x85, 0x49, 0x57, 0xCC, 0xD3, 0x6F, 0x12, 0xE1, 0xEB, 0xFC, 0x58, 0x09, 0x81
	.byte 0xBE, 0x65, 0x5F, 0x36, 0xCE, 0x1F, 0xF1, 0x41, 0x0A, 0xB1, 0xA4, 0x65, 0xF5, 0xA0, 0xAA, 0x78
	.byte 0x61, 0x33, 0xBD, 0x6D, 0x27, 0x1A, 0x26, 0x08, 0xD0, 0xF5, 0x3E, 0x39, 0xC1, 0x98, 0x19, 0x58
	.byte 0x8C, 0x14, 0xD1, 0xAE, 0x10, 0xAB, 0x3A, 0xD0, 0x41, 0xF8, 0xCB, 0x40, 0x54, 0x27, 0x4C, 0xEF
	.byte 0xD5, 0x54, 0x19, 0xBF

	thumb_func_start SVC_UncompressRL16FromDevice
SVC_UncompressRL16FromDevice: ; 0x020004C4
	swi 0x15
	bx lr
	thumb_func_end SVC_UncompressRL16FromDevice
_020004C8:
	.byte 0x66, 0x02, 0x85, 0x2F, 0xD4, 0xDF, 0x62, 0x16
	.byte 0x62, 0x3B, 0xEE, 0xB9, 0x9E, 0xB9, 0x3C, 0x1D, 0xD2, 0x60, 0x9F, 0x20, 0x5A, 0xF0, 0xA7, 0xA0
	.byte 0xE4, 0xAB, 0x60, 0x4B, 0x4F, 0xA8, 0xE7, 0x07, 0x10, 0x1C, 0x5C, 0x17, 0x07, 0x11, 0xE3, 0xAA
	.byte 0x37, 0x07, 0xEB, 0x11, 0x10, 0x34, 0x9D, 0xAE, 0x30, 0xF2, 0x5D, 0xB9, 0x39, 0xA8, 0xA4, 0x22
	.byte 0x12, 0x69, 0x21, 0x85, 0xA1, 0xEC, 0x13, 0xE1, 0xEF, 0xF8, 0xE9, 0xA5, 0xF2, 0xBF, 0xF6, 0x21
	.byte 0x2C, 0x45, 0x80, 0xDF, 0x1C, 0x6D, 0x7C, 0x89, 0xEA, 0xBE, 0xEA, 0x37, 0xBC, 0x88, 0x59, 0x52
	.byte 0x59, 0x93

	non_word_aligned_thumb_func_start SVC_WaitByLoop
SVC_WaitByLoop: ; 0x02000522
	swi 3
	bx lr
	thumb_func_end SVC_WaitByLoop
_02000526:
	.byte 0x2D, 0x0E, 0xA1, 0x2B, 0x37, 0xE7, 0xA6, 0x05, 0x06, 0xAC
	.byte 0x3C, 0x78, 0x3E, 0x0D, 0xC3, 0x9F, 0xC9, 0xCA, 0xB6, 0x80, 0x2D, 0x34, 0xE7, 0x23, 0x07, 0xC7
	.byte 0x14, 0x1E, 0xCC, 0x24, 0xF3, 0xA2, 0x7C, 0x51, 0x4D, 0xE4, 0xB3, 0xCF, 0x0E, 0x5C, 0x0D, 0x43
	.byte 0x61, 0xCC, 0xD6, 0x96, 0x0A, 0xE2, 0xDC, 0xD9, 0x3F, 0x0F, 0x25, 0xE4, 0x4D, 0xE7, 0x95, 0xF7
	.byte 0xAE, 0xB0, 0x1D, 0x8A, 0x69, 0xCE, 0x72, 0x09, 0xEE, 0x00, 0x40, 0x43, 0xC5, 0x93, 0xC6, 0xB2

	thumb_func_start SVC_CpuSet
SVC_CpuSet: ; 0x02000570
	swi 0xb
	bx lr
	thumb_func_end SVC_CpuSet
_02000574:
	.byte 0xBC, 0x15, 0x93, 0xAD, 0x09, 0xF3, 0xFB, 0xBA, 0xAB, 0x28, 0xCE, 0xA1
	.byte 0xDF, 0x1A, 0xD7, 0xE9, 0x80, 0xD7, 0xDD, 0xC4, 0x0D, 0xAC, 0xB2, 0x18, 0x50, 0x27, 0x88, 0x6A
	.byte 0xBD, 0x44, 0x9A, 0x4C, 0xF5, 0xA4, 0x9A, 0xC5, 0x2E, 0x40, 0x20, 0x6E, 0xCE, 0xE3, 0x5E, 0x49
	.byte 0x17, 0x47, 0x47, 0xAE, 0x90, 0xD9, 0xAD, 0xDF, 0xB5, 0x3B, 0xFF, 0x7B, 0x3C, 0x9C, 0x76, 0xC8
	.byte 0x99, 0x4E, 0x6F, 0x1C, 0x66, 0x8E, 0xB0, 0x86, 0x16, 0x9A, 0xD3, 0xAC, 0x6D, 0x1E, 0xD2, 0xF6
	.byte 0xE5, 0x92, 0x1F, 0xAC, 0x25, 0x61, 0x47, 0x74, 0xA1, 0x43, 0xF9, 0x55, 0x92, 0x89, 0xF5, 0x24
	.byte 0xD6, 0x21, 0x92, 0x1E, 0xDD, 0x88, 0x72, 0x94, 0x42, 0x86, 0x45, 0x28, 0xCA, 0xE4, 0x89, 0xBF
	.byte 0x15, 0xDF, 0x9F, 0x5D

	thumb_func_start SVC_UncompressHuffmanFromDevice
SVC_UncompressHuffmanFromDevice: ; 0x020005E4
	swi 0x13
	bx lr
	thumb_func_end SVC_UncompressHuffmanFromDevice
_020005E8:
	.byte 0x1A, 0x2D, 0x0F, 0xF7, 0x0F, 0x7E, 0xB5, 0x68
	.byte 0x9E, 0x56, 0x70, 0x6D, 0x69, 0x08, 0x51, 0x97, 0x54, 0x30, 0x97, 0x32, 0x78, 0xD1, 0x62, 0x94
	.byte 0xFD, 0x6E, 0x67, 0x1D, 0x37, 0x9E, 0x2F, 0xFE, 0x4A, 0x38, 0x15, 0xE8, 0x5E, 0xAF, 0xC8, 0x57
	.byte 0x81, 0x44, 0x16, 0x6B, 0x6C, 0x4B, 0x57, 0x7D, 0xAC, 0x33, 0xDA, 0x4F, 0x4C, 0x74, 0xB9, 0x94
	.byte 0x1B, 0xF5, 0x76, 0x5B, 0x4A, 0xEF, 0x49, 0x7D, 0x55, 0xFB, 0x56, 0xE8, 0x4B, 0x8C, 0x03, 0x75
	.byte 0x1D, 0xFE, 0x9C, 0x8F, 0x58, 0x7B, 0x21, 0x76, 0xCE, 0xBF, 0xDA, 0xAA, 0xE6, 0xE2, 0xFE, 0x52
	.byte 0xAC, 0x3D, 0x48, 0x2B, 0x9D, 0x12, 0xE4, 0x67, 0xDA, 0x53

	non_word_aligned_thumb_func_start SVC_UnpackBits
SVC_UnpackBits: ; 0x0200064A
	swi 0x10
	bx lr
	thumb_func_end SVC_UnpackBits
_0200064E:
	.byte 0xB9, 0x2F
	.byte 0x79, 0x01, 0xAA, 0x32, 0xD5, 0x52, 0x94, 0xA4, 0xA9, 0x32, 0xBD, 0xCE, 0x70, 0xFF, 0xC6, 0x26
	.byte 0x02, 0x23, 0x0A, 0x59, 0x7A, 0x60, 0xFE, 0xC1, 0x3B, 0x5B, 0xC3, 0x6F, 0xA5, 0x43, 0xB1, 0x95
	.byte 0x7B, 0x94, 0x5C, 0xFA, 0x49, 0x06, 0x46, 0x81, 0x17, 0x13, 0x58, 0xEC, 0x13, 0xBF, 0xD1, 0x2E
	.byte 0x96, 0x3D, 0x41, 0xEA, 0x0A, 0xA1, 0xE5, 0xDC, 0x8D, 0xC4, 0xEE, 0x19, 0x5F, 0x0C, 0x04, 0x04
	.byte 0x23, 0x0F, 0x5B, 0xF0, 0xCE, 0x91, 0x34, 0x7F, 0x46, 0xDD, 0x9E, 0xE4, 0x7B, 0xDF

	non_word_aligned_thumb_func_start SVC_WaitIntr
SVC_WaitIntr: ; 0x0200069E
	mov r2, #0
	swi 4
	bx lr
	thumb_func_end SVC_WaitIntr
_020006A4:
	.byte 0xE6, 0x8A, 0xFF, 0x50, 0x99, 0x98, 0xAD, 0x97, 0xA0, 0x42, 0x3F, 0x17
	.byte 0xED, 0x3B, 0x69, 0xBD, 0x2E, 0xB2, 0xF1, 0x4A, 0x4E, 0xCE, 0x4B, 0x96, 0xC9, 0xA7, 0xFD, 0x1E
	.byte 0xFB, 0xDA, 0x55, 0xE2, 0x1F, 0xEC, 0x89, 0x23, 0xB6, 0xED, 0xA5, 0xC9, 0xF7, 0x3A, 0x32, 0xE8
	.byte 0x8C, 0xA2, 0x17, 0x6A, 0x47, 0x6A, 0x86, 0x43, 0xDA, 0xA5, 0x3D, 0x8A, 0x24, 0x44, 0xBA, 0xEB
	.byte 0xAB, 0x09, 0x4C, 0x9C, 0x26, 0x96, 0xFC, 0x4D, 0xC8, 0xA3, 0xF8, 0x1C, 0x7E, 0xDD, 0xBF, 0xBC
	.byte 0xD9, 0xAA, 0x21, 0x23, 0xB0, 0x79, 0x80, 0x1C, 0xF6, 0x3C, 0xE7, 0xEF, 0xDC, 0x16, 0x54, 0xEB
	.byte 0xFC, 0xA2, 0x36, 0x8D, 0x3B, 0x80, 0x76, 0x6B

	thumb_func_start SVC_SoftReset
SVC_SoftReset: ; 0x02000708
	swi 0
	bx lr
	thumb_func_end SVC_SoftReset
_0200070C:
	.byte 0xE0, 0x35, 0x0E, 0xD6
	.byte 0xF5, 0xE2, 0xAC, 0x6E, 0xAE, 0x5E, 0xD1, 0xB4, 0xD5, 0x0A, 0xAA, 0x00, 0x1A, 0x17, 0x29, 0x2A
	.byte 0x6C, 0x32, 0x7C, 0x7C, 0x5E, 0x12, 0xF9, 0x35, 0x5E, 0x12, 0x52, 0xDE, 0xCB, 0x00, 0x64, 0x60
	.byte 0xD6, 0x8A, 0xB9, 0xC9, 0x0C, 0x66, 0x10, 0xA4, 0xD3, 0xED, 0xD3, 0x75, 0x4E, 0x9A, 0xF9, 0xFE
	.byte 0x77, 0x47, 0x8E, 0x85, 0xCB, 0xCD, 0x20, 0xC1, 0xCD, 0x7E, 0x12, 0xC3, 0xFF, 0xFD, 0x52, 0x87
	.byte 0x5E, 0x78, 0xC1, 0xFC, 0xB0, 0x92, 0x63, 0xE9, 0xED, 0xC9, 0x6F, 0x8D, 0xBB, 0x3E, 0xC8, 0x93
	.byte 0x04, 0x09, 0x8B, 0xE8, 0xA6, 0x3B, 0xCE, 0x0D, 0xB1, 0x67, 0x66, 0xC8, 0xDB, 0xD3, 0xF5, 0x2F
	.byte 0x8F, 0x4D, 0x6A, 0x99, 0x7B, 0xFA, 0x28, 0x74, 0x09, 0xF6, 0xF1, 0xD1, 0x8C, 0x15, 0xE0, 0x2C
	.byte 0x59, 0xA0, 0xA6, 0xCC, 0x77, 0x45, 0x64, 0x48, 0x7A, 0x05

	non_word_aligned_thumb_func_start SVC_CpuSetFast
SVC_CpuSetFast: ; 0x0200078A
	swi 0xc
	bx lr
	thumb_func_end SVC_CpuSetFast
_0200078E:
	.byte 0x59, 0x2B
	.byte 0xE6, 0x44, 0x0B, 0xBA, 0x2A, 0xEC, 0x68, 0x4F, 0xE9, 0xF6, 0x2B, 0x5D, 0xFC, 0x5B, 0xEF, 0x02
	.byte 0xC8, 0x25, 0x05, 0xC8, 0xF7, 0x0B, 0x1A, 0xA9, 0x2E, 0x50, 0x96, 0x85, 0xAF, 0x8B, 0xE9, 0x9D
	.byte 0x10, 0x4E, 0x25, 0xE6, 0xF7, 0x16, 0xE5, 0xF0, 0x3C, 0x13, 0x8D, 0x87, 0xD4, 0x18, 0x48, 0xF9
	.byte 0x85, 0x3A, 0x45, 0x68, 0x0A, 0x00, 0x73, 0xF6, 0x51, 0x07, 0x50, 0x86, 0x18, 0x76, 0x0C, 0x25
	.byte 0x3C, 0xF0, 0xFD, 0x8B, 0xB6, 0x13, 0xC9, 0xC4, 0xA2, 0x83, 0x5B, 0xE7, 0x7E, 0xC8, 0x54, 0xA3
	.byte 0x1D, 0xDF, 0x6C, 0x43, 0xD5, 0x52, 0xAA, 0x18, 0xC4, 0x6F, 0x29, 0xD2, 0x1B, 0x66, 0x82, 0xBE
	.byte 0x30, 0xD4, 0x9A, 0xEB, 0x94, 0x23, 0xB6, 0x7F, 0xAC, 0x6B, 0x96, 0x95, 0xB9, 0x14, 0x00, 0x00
